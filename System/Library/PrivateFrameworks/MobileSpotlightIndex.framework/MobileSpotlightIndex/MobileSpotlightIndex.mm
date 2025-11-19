void si_enqueue_work(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      si_enqueue_work_with_qos(a1, *(a1 + 24), a2, a3);
    }

    else
    {
      si_enqueue_work_for_job(a1, a2, a3, 0);
    }
  }

  else
  {
    a2(a3, 1);
  }
}

void _SIScheduleBackgroundOperation(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = *(a1 + 1104);
  if (a2)
  {
    si_enqueue_work_with_qos(v4, a2, a3, a4);
  }

  else
  {
    si_enqueue_work(v4, a3, a4);
  }
}

void work_fun_inner(char *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 67109376;
      *&v57[4] = qos_class_self();
      LOWORD(v58) = 2048;
      *(&v58 + 2) = a1;
      _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "QOS work_fun: %d %p", v57, 0x12u);
    }

    *__error() = v29;
  }

  if (dword_1EBF46AD8 >= 5)
  {
    v31 = *__error();
    v32 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = qos_class_self();
      current_queue = dispatch_get_current_queue();
      *v57 = 67109378;
      *&v57[4] = v33;
      LOWORD(v58) = 2112;
      *(&v58 + 2) = current_queue;
      _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "qos: 0x%x %@", v57, 0x12u);
    }

    *__error() = v31;
  }

  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a1;
  v5 = *(a1 + 2);
  *v57 = 0;
  *&v58 = v57;
  *(&v58 + 1) = 0x2000000000;
  v59 = 0;
  v6 = veorq_s8(*(a1 + 24), *(a1 + 40));
  if (*(a1 + 7) != veor_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))
  {
    v35 = __si_assert_copy_extra_661(*(v5 + 10));
    v36 = v35;
    v37 = "";
    if (v35)
    {
      v37 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Bad CRC on work unit. %p %p %p %p %p %p", "SIScheduler.c", 393, "cu->u.crc==compute_workunit_crc(cu->u)", v37, v4, v3, v5, *(a1 + 4), *(a1 + 5), *(a1 + 3));
    free(v36);
    if (__valid_fs(*(v5 + 10)))
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

  makeThreadId();
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = 0;
  if (v3)
  {
    if ((!*(v3 + 26) || *(v3 + 64) == 1) && v3 == *v5)
    {
      v7 = *v3;
      v8 = v3[4];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __work_fun_inner_block_invoke;
      block[3] = &unk_1E8192F78;
      block[6] = v3;
      block[7] = v5;
      block[8] = v7;
      block[9] = v4;
      block[4] = v57;
      block[5] = &v53;
      dispatch_sync(v8, block);
      v9 = v54[3];
      if (v9)
      {
        SIGCContextWrapperCleanup(v9);
      }
    }

    if (*(v58 + 24) == 1 && *(v3 + 29) && quick_check_suspension(v3))
    {
      v10 = v3[4];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 0x40000000;
      v51[2] = __work_fun_inner_block_invoke_2;
      v51[3] = &unk_1E8192FA0;
      v51[4] = v57;
      v51[5] = v3;
      v51[6] = v5;
      v51[7] = 0;
      v51[8] = v4;
      dispatch_sync(v10, v51);
    }
  }

  v11 = v5[6];
  if (v11)
  {
    set_crash_info(v11);
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v13 = setThreadIdAndInfo(*(v5 + 10), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  LODWORD(v43) = v13;
  v14 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
  v50 = HIDWORD(v13);
  v49 = __PAIR64__(v15, v16);
  *(v14 + 216) = 0;
  v17 = *(v14 + 312);
  v18 = *(v14 + 224);
  if (v18)
  {
    v18(*(v14 + 288));
  }

  v48 = v43;
  v47 = v50;
  v46 = v49;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v14 + 312) = v17;
    CIOnThreadCleanUpReset(v46);
    dropThreadId(v48, 1, add_explicit + 1);
    CICleanUpReset(v48, HIDWORD(v46));
  }

  else
  {
    if (*(v58 + 24) != 1 || (v19 = *(a1 + 5)) != 0 && *(v19 + 36))
    {
      (*(a1 + 3))(*(a1 + 4), 1);
    }

    else
    {
      (*(v4 + 152))(v4, *(a1 + 3), *(a1 + 4));
    }

    v20 = threadData[9 * v48 + 1] + 320 * v47;
    *(v20 + 312) = v17;
    v21 = *(v20 + 232);
    if (v21)
    {
      v21(*(v20 + 288));
    }

    dropThreadId(v48, 0, add_explicit + 1);
  }

  v22 = pthread_getspecific(__THREAD_STR_DATA_KEY);
  if (v22)
  {
    *v22 = 0;
  }

  v23 = *(a1 + 5);
  if (v23)
  {
    si_release_qid(v23);
  }

  if (v3 && !*(v3 + 26))
  {
    v24 = *(v4 + 32);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 0x40000000;
    v44[2] = __work_fun_inner_block_invoke_53;
    v44[3] = &unk_1E8192FC8;
    v44[4] = v57;
    v44[5] = v5;
    v44[6] = v3;
    v44[7] = v4;
    v44[8] = 0;
    dispatch_sync(v24, v44);
    v43 = 0;
    if (*v5 == v3)
    {
      if (*(v3 + 34) == 1 && *(v3 + 88) < *(v3 + 50) && (*(v3 + 30) || v3[18]))
      {
        pthread_mutex_lock(v3[1]);
        *(v3 + 50) = 0;
        si_scheduler_do_suspend(v3, &v43);
        pthread_mutex_unlock(v3[1]);
        v39 = v5[2];
        dispatch_retain(v39);
        dispatch_suspend(v39);
        v40 = v3[20];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 0x40000000;
        v42[2] = __work_fun_inner_block_invoke_2_55;
        v42[3] = &__block_descriptor_tmp_56;
        v42[4] = v39;
        dispatch_async(v40, v42);
        v25 = v43;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    si_scheduler_trigger_tokens(v25);
    goto LABEL_46;
  }

  if (v4)
  {
LABEL_46:
    atomic_fetch_add_explicit((v2 + 132), 0xFFFFFFFF, memory_order_relaxed);
  }

  if (a1[64] == 1)
  {
    v26 = v5[2];
    dispatch_suspend(v26);
    v27 = *(v4 + 160);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 0x40000000;
    v41[2] = __work_fun_inner_block_invoke_3;
    v41[3] = &__block_descriptor_tmp_57;
    v41[4] = v26;
    dispatch_async(v27, v41);
  }

  free(a1);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(v57, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void work_fun(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 1) + 220);
  if (dword_1EBF46AD8 >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*a1 + 80);
      v7 = *(*(a1 + 1) + 80);
      v8[0] = 67109634;
      v8[1] = v2;
      v9 = 2080;
      v10 = v6;
      v11 = 2080;
      v12 = v7;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "work_fun pc_priority %u: (%s, %s)", v8, 0x1Cu);
    }

    *__error() = v4;
  }

  work_fun_Priority(a1);
  v3 = *MEMORY[0x1E69E9840];
}

void __si_enqueue_work_for_job_block_invoke(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  if (!v1)
  {
    v19 = __si_assert_copy_extra_661(-1);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 910, "queue", v21);
    free(v20);
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

  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = *v1;
  v7 = v2 == 0;
  if (v5)
  {
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 132), 1u, memory_order_relaxed);
    }

    v29 = v3;
    atomic_fetch_add(v5, 1u);
    goto LABEL_6;
  }

  if (v2 && (!v6 || !*(v6 + 104) && *(v6 + 64) != 1))
  {
    v29 = a1[6];
    v7 = 0;
    v5 = 0;
    atomic_fetch_add_explicit((v2 + 132), 1u, memory_order_relaxed);
LABEL_6:
    v8 = v1[2];
    *(v1 + 7) = vaddq_s64(*(v1 + 7), vdupq_n_s64(1uLL));
    v9 = malloc_type_malloc(0x48uLL, 0x10A0040047F2C8DuLL);
    v9[3] = v29;
    v9[4] = v4;
    v9[5] = v5;
    v9[6] = 0;
    v9[7] = v4 ^ v29 ^ v5;
    if (v7)
    {
      v23 = __si_assert_copy_extra_661(-1);
      v24 = v23;
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 834, "root", v25);
      free(v24);
      if (__valid_fs(-1))
      {
        v26 = 2989;
      }

      else
      {
        v26 = 3072;
      }

      *v26 = -559038737;
      abort();
    }

    *v9 = v2;
    v9[1] = v6;
    v9[2] = v1;
    v10 = *(v2 + 136) == 1 && (v1[7] & 0xF) == 0;
    *(v9 + 64) = v10;
    v13 = qos_class_self();
    v14 = v13;
    if (*(v6 + 192) && *(v6 + 216) < v13)
    {
      pthread_mutex_lock(*(v6 + 8));
      v15 = *(v6 + 192);
      if (v15)
      {
        if (*(v6 + 216) < v14)
        {
          v16 = *(v6 + 208);
          *(v6 + 208) = pthread_override_qos_class_start_np(v15, v14, 0);
          *(v6 + 216) = v14;
          if (v16)
          {
            pthread_override_qos_class_end_np(v16);
          }
        }
      }

      pthread_mutex_unlock(*(v6 + 8));
    }

    if (dword_1EBF46B00 >= 5)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block) = 67109376;
        HIDWORD(block) = v14;
        LOWORD(v31) = 2048;
        *(&v31 + 2) = v9;
        _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "QOS enqueue_work: %d %p", &block, 0x12u);
      }

      *__error() = v27;
    }

    if (v14 == QOS_CLASS_USER_INTERACTIVE)
    {
      block = MEMORY[0x1E69E9820];
      *&v31 = 0x40000000;
      *(&v31 + 1) = __enqueue_work_block_invoke;
      v32 = &__block_descriptor_tmp_59;
      v33 = v9;
      v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
      dispatch_async(v8, v17);
      _Block_release(v17);
    }

    else
    {
      dispatch_async_enforce_qos_class_f();
    }

    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = *MEMORY[0x1E69E9840];
  v12 = a1[7];

  v3(v12, 1);
}

thread_read_t *SIResumeForUnlock()
{
  if ((sForceResume & 1) != 0 || !sGetLockStateCallback || (result = (*(sGetLockStateCallback + 16))(), !result))
  {
    while (1)
    {
      result = OSAtomicDequeue(&threadResumeQueue, 0);
      if (!result)
      {
        break;
      }

      v1 = result;
      v2 = *(result + 2);
      if (v2)
      {
        v2[2](*(result + 2), 0);
        _Block_release(v2);
      }

      thread_resume(v1[2]);
      OSAtomicEnqueue(&threadResumeFreeQueue, v1, 0);
    }
  }

  return result;
}

void si_enqueue_work_for_job(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[5] = a1;
    block[6] = a2;
    block[2] = __si_enqueue_work_for_job_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = v6;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v7, block);
  }

  else
  {

    a2(a3, 1);
  }
}

uint64_t SISetCSAttributes(uint64_t a1, const void *a2, CFArrayRef theArray, int a4, void (*a5)(void, void), uint64_t a6)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1288) == 1)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = a1;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "Can't set attributes because the index is read-only. ref:%p", buf, 0xCu);
    }

LABEL_26:
    v31 = __error();
    result = 0;
    *v31 = v7;
    goto LABEL_50;
  }

  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v15 = Count;
    v46 = a5;
    v47 = a6;
    TypeID = CFDictionaryGetTypeID();
    v17 = CFStringGetTypeID();
    if (v15 >= 1)
    {
      v18 = v17;
      v19 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
        v21 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          break;
        }

        if (CFGetTypeID(ValueAtIndex) != TypeID)
        {
          break;
        }

        Value = CFDictionaryGetValue(v21, @"_kMDItemExternalID");
        if (!Value || CFGetTypeID(Value) != v18)
        {
          break;
        }

        if (v15 == ++v19)
        {
          goto LABEL_12;
        }
      }

      v7 = *__error();
      v30 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v51 = "SISetCSAttributes";
        v52 = 1024;
        *v53 = 21086;
        *&v53[4] = 2112;
        *&v53[6] = v21;
        _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: bad object %@", buf, 0x1Cu);
      }

      goto LABEL_26;
    }

LABEL_12:
    if (!a2 || (v23 = CFStringGetTypeID(), v23 != CFGetTypeID(a2)))
    {
      v33 = *__error();
      v34 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v51 = "mobile_journal";
        v52 = 1024;
        *v53 = 20399;
        *&v53[4] = 2048;
        *&v53[6] = a2;
        v54 = 1024;
        v55 = a4;
        v56 = 2112;
        v57 = theArray;
        _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: missing bundle %p 0x%x %@", buf, 0x2Cu);
      }

      *__error() = v33;
      goto LABEL_30;
    }

    v24 = *MEMORY[0x1E695E480];
    Mutable = _MDPlistContainerCreateMutable();
    _MDPlistContainerBeginContainer();
    _MDPlistContainerBeginArray();
    _MDPlistContainerAddObject();
    _MDPlistContainerAddObject();
    _MDPlistContainerEndArray();
    _MDPlistContainerEndContainer();
    pthread_mutex_lock((a1 + 1632));
    JournalFd = getJournalFd(a1, 0, 0);
    if (!JournalFd)
    {
      v28 = 0;
      v35 = 0;
LABEL_37:
      pthread_mutex_unlock((a1 + 1632));
      CFRelease(Mutable);
      if (v35)
      {
        v37 = v48;
        v36 = v49;
        v38 = si_mobile_set_attr_ctx_create(a1, a2);
        v49 = v38;
        v38[1] = v28;
        v38[2] = v36;
        v38[3] = v37;
        *(v38 + 32) = TypeID != 0;
        *(v38 + 33) = 0;
        *(v38 + 9) = 0;
        add_explicit = atomic_fetch_add_explicit(&gEnqueuedSize, v37, memory_order_relaxed);
        a5 = v46;
        if (v46 && (v40 = add_explicit + v37, (add_explicit + v37) >= 0x40000))
        {
          v41 = *__error();
          v42 = _SILogForLogForCategory(0);
          v43 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v42, v43))
          {
            *buf = 134218240;
            v51 = v37;
            v52 = 2048;
            *v53 = v40;
            _os_log_impl(&dword_1C278D000, v42, v43, "#index too much enqueued (%ld); defer callback for work unit of %ld", buf, 0x16u);
          }

          *__error() = v41;
          a6 = v47;
          v38[5] = v46;
          v38[6] = v47;
          a5 = 0;
        }

        else
        {
          a6 = v47;
        }

        *(v38 + 8) = CFAbsoluteTimeGetCurrent();
        v44 = si_backtrace_routine_resolve(*v38, v38[9], setCSAttributes1, v38, &v49);
        si_enqueue_barrier_with_qos(*(a1 + 1048), 9, v44, v49);
        goto LABEL_48;
      }

      if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
      {
        _si_mobile_journal_finalize(v28, 1);
      }

LABEL_30:
      result = 0;
      goto LABEL_50;
    }

    v27 = JournalFd;
    v28 = *(a1 + 2104);
    if (v28)
    {
      if (*(v28 + 8) == JournalFd)
      {
LABEL_32:
        atomic_fetch_add(v28, 1u);
LABEL_33:
        TypeID = atomic_fetch_add_explicit((a1 + 2128), 1uLL, memory_order_relaxed);
        if (si_clientstatesandmeta_update(a1, TypeID + 1, 0))
        {
          v48 = 0;
          v49 = 0;
          v35 = mobile_journal_plist(v27, TypeID, a4, Mutable, &v49, &v48) == 0;
        }

        else
        {
          v35 = 0;
        }

        goto LABEL_37;
      }

      if (atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
      {
        _si_mobile_journal_finalize(v28, 1);
      }

      *(a1 + 2104) = 0;
    }

    v29 = *(a1 + 60);
    if (*(a1 + 2072) == 1 && (*(a1 + 829) & 0x10) == 0 && _os_feature_enabled_impl())
    {
      _os_feature_enabled_impl();
    }

    v28 = si_mobile_journal_create(a1);
    *(a1 + 2104) = v28;
    if (!v28)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_48:
  result = 1;
  if (a5)
  {
    a5(a6, 0);
    result = 1;
  }

LABEL_50:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
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

void *makeThreadId()
{
  v28 = *MEMORY[0x1E69E9840];
  if (makeThreadId_once != -1)
  {
    dispatch_once(&makeThreadId_once, &__block_literal_global_6993);
  }

  v0 = &qword_1EDD81000;
  result = pthread_getspecific(__THREAD_SLOT_KEY);
  if (!result)
  {
    v3 = OSAtomicDequeue(&sAvailabeThreadEntries, 0);
    if (v3)
    {
      v4 = v3;
      if (*(v3 + 3) != -1)
      {
        v11 = __si_assert_copy_extra_332();
        v23 = *(v4 + 3);
        __message_assert("%s:%u: failed assertion '%s' %s invalid count %d");
        goto LABEL_28;
      }

      v5 = (v3 - &threadList) >> 4;
      v6 = MEMORY[0x1C6920BC0]();
      if (gSILogLevels[0] >= 5)
      {
        v12 = *__error();
        v13 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v25 = (v4 - &threadList) >> 4;
          v26 = 1024;
          v27 = v6;
          _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Adding handler slot:%u port:%d", buf, 0xEu);
        }

        *__error() = v12;
        v0 = &qword_1EDD81000;
        v5 = (v4 - &threadList) >> 4;
      }

      *(v4 + 2) = v6;
      *(v4 + 3) = 0;
      if (!pthread_setspecific(v0[53], (v5 + 1)))
      {
        v7 = malloc_type_malloc(0x404uLL, 0x100004084B5CCE0uLL);
        threadData[9 * v5] = v7;
        bzero(v7 + 4, 0x400uLL);
        *v7 = 64;
        exception_ports = thread_get_exception_ports(v6, 0x22u, v7 + 1, v7, v7 + 65, v7 + 129, v7 + 193);
        if (exception_ports)
        {
          v15 = exception_ports;
          v16 = __si_assert_copy_extra_332();
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = "";
          }

          v19 = mach_error_string(v15);
          __message_assert("%s:%u: failed assertion '%s' %s %s", "ContentIndexExceptionHandler.c", 1322, "krc==KERN_SUCCESS", v18, v19);
          free(v17);
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

        v9 = thread_set_exception_ports(v6, 0x22u, _exceptionPort, -2147483644, 7);
        if (!v9)
        {
          result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
          goto LABEL_4;
        }

        v21 = v9;
        v11 = __si_assert_copy_extra_332();
        mach_error_string(v21);
        __message_assert("%s:%u: failed assertion '%s' %s %s");
LABEL_28:
        free(v11);
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

      v10 = __si_assert_copy_extra_332();
      __message_assert("%s:%u: failed assertion '%s' %s ");
    }

    else
    {
      v10 = __si_assert_copy_extra_332();
      __message_assert("%s:%u: failed assertion '%s' %s Active handlers > MAX_CI_THREAD_COUNT");
    }

    free(v10);
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

LABEL_4:
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t setThreadIdAndInfo(int a1, __int128 *a2, uint64_t a3, int a4, int a5)
{
  v10 = pthread_getspecific(__THREAD_SLOT_KEY);
  if (!v10)
  {
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

    __message_assert("%s:%u: Unexpected code path %s ", "ContentIndexExceptionHandler.c", 1347, v27);
    free(v26);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v11 = v10 - 1;
  ++*(&threadList + 4 * (v10 - 1) + 3);
  v12 = &threadData[9 * (v10 - 1)];
  if (!v12[1])
  {
    *(v12 + 5) = 16;
    v12[1] = malloc_type_malloc(0x1400uLL, 0x10800407CA5EF92uLL);
  }

  v12[5] = pthread_self();
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 5))
  {
    v21 = __si_assert_copy_extra_332();
    v22 = v21;
    v23 = "";
    if (v21)
    {
      v23 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1356, "td->itemCount < td->itemSize", v23);
    free(v22);
    if (__valid_fs(-1))
    {
      v24 = 2989;
    }

    else
    {
      v24 = 3072;
    }

    *v24 = -559038737;
    abort();
  }

  v14 = 5 * v13;
  v15 = v12[1] + (v14 << 6);
  *(v15 + 296) = a1;
  *(v15 + 288) = a3;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[3];
  *(v15 + 256) = a2[2];
  *(v15 + 272) = v18;
  *(v15 + 224) = v16;
  *(v15 + 240) = v17;
  v19 = (v12[1] + (v14 << 6));
  v19[53] = a4 & 0x7FFFFFFF;
  v19[75] = *(v12 + 8);
  v19[76] = *(v12 + 14);
  v19[77] = a5;
  v19[79] = 0;
  LODWORD(v19) = *(v12 + 4);
  *(v12 + 4) = v19 + 1;
  return v11 | (v19 << 32);
}

void __work_fun_inner_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = !*(v2 + 104) && (*(v2 + 64) & 1) == 0 && *(a1[7] + 36) == 0;
  *(*(a1[4] + 8) + 24) = v3;
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    os_unfair_lock_lock((v2 + 128));
    ++*(v2 + 112);
    os_unfair_lock_unlock((v2 + 128));
    v4 = a1[8];
    if (v4)
    {
      *(v4 + 24) = a1[6];
    }

    v5 = a1[9];
    os_unfair_lock_lock(v5 + 32);
    ++v5[28]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 32);
    v6 = a1[6];
    if (*(v6 + 112) == 1)
    {
      v7 = *(v6 + 48);
      if (v7 || *(v6 + 56))
      {
        *(v6 + 48) = 0;
        *(v6 + 56) = 0;
      }

      *(*(a1[5] + 8) + 24) = v7;
    }
  }
}

size_t set_crash_info(const char *a1)
{
  result = pthread_getspecific(__THREAD_STR_DATA_KEY);
  v3 = result;
  if (result)
  {
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    result = malloc_type_malloc(0x80uLL, 0xEAF603C2uLL);
    if (!result)
    {
      return result;
    }

    v3 = result;
    *result = 0;
    result = pthread_setspecific(__THREAD_STR_DATA_KEY, result);
    if (!a1)
    {
      return result;
    }
  }

  return strlcpy(v3, a1, 0x80uLL);
}

atomic_uint *getJournalFd(uint64_t a1, int a2, int a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2072) == 1)
  {
    dispatch_assert_queue_V2(*(*(a1 + 1104) + 16));
  }

  if (a2)
  {
    pthread_mutex_lock((a1 + 1632));
  }

  v6 = *(a1 + 2320);
  if (v6 || (a3 & 1) != 0)
  {
LABEL_45:
    if (a3)
    {
      if (*(a1 + 2072) == 1 && *(a1 + 2104))
      {
        v27 = *__error();
        v28 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1 + 60);
          if (v29 == 1)
          {
            v30 = "cs_priority";
          }

          else if (v29 == 3)
          {
            v30 = "cs_mail";
          }

          else
          {
            if (v29)
            {
              v33 = 2;
            }

            else
            {
              v33 = (v29 >> 1) - 1;
            }

            if (v33 >= 7)
            {
              v30 = "cs_default";
            }

            else
            {
              v30 = off_1E8196C28[v33];
            }
          }

          v36 = *(a1 + 2344);
          *__str = 136315394;
          *&__str[4] = v30;
          *&__str[12] = 1024;
          *&__str[14] = v36;
          _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "[%s] reset journal %d", __str, 0x12u);
        }

        *__error() = v27;
        v37 = *(a1 + 2104);
        if (v37 && atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
        {
          _si_mobile_journal_finalize(v37, 1);
        }

        *(a1 + 2104) = 0;
      }

      *(a1 + 2320) = 0;
    }

    goto LABEL_70;
  }

  v7 = *(a1 + 32);
  if (v7 == -1)
  {
    v44 = __si_assert_copy_extra_661(-1);
    v45 = v44;
    v46 = "";
    if (v44)
    {
      v46 = v44;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 3914, "indexFd != -1", v46);
    free(v45);
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

  if (!*(a1 + 6964))
  {
LABEL_26:
    v18 = *(a1 + 2344);
    if (v18 == 0x7FFFFFFF)
    {
LABEL_35:
      v23 = __si_assert_copy_extra_661(-1);
      v24 = v23;
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 3966, "syncCount < 2147483647", v25);
      free(v24);
      if (__valid_fs(-1))
      {
        v26 = 2989;
      }

      else
      {
        v26 = 3072;
      }

      *v26 = -559038737;
      abort();
    }

    while (1)
    {
      v19 = *(a1 + 6960);
      if (v19 >= 1)
      {
        break;
      }

      v63 = 0uLL;
      memset(v64, 0, sizeof(v64));
      v61 = 0uLL;
      v62 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      v52 = 0uLL;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0xFFuLL, "%s%d", "journalAttr.", v18);
      if ((*(a1 + 6944) & 1) != 0 || *(a1 + 60) == 2)
      {
        v20 = v7;
        v21 = 2;
      }

      else
      {
        v20 = v7;
        v21 = 0;
      }

      v22 = fd_create_protected(v20, __str, 536873482, v21);
      if (v22)
      {
        ++*(a1 + 2344);
        goto LABEL_42;
      }

      if (*__error() != 17)
      {
        goto LABEL_40;
      }

      v18 = *(a1 + 2344) + 1;
      *(a1 + 2344) = v18;
      if (v18 == 0x7FFFFFFF)
      {
        goto LABEL_35;
      }
    }

    v63 = 0uLL;
    memset(v64, 0, sizeof(v64));
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v52 = 0uLL;
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0xFFuLL, "%s%d", "journalAttr.", v19);
    v22 = fd_create_protected(v7, __str, 536870922, 2u);
    if (!v22)
    {
LABEL_40:
      v6 = 0;
      goto LABEL_70;
    }

LABEL_42:
    *(a1 + 2320) = v22;
    if (*(a1 + 6960) <= 0)
    {
      SIActivityJournalNewJournal((a1 + 2192), v22);
      v22 = *(a1 + 2320);
    }

    v48 = 0;
    _fd_acquire_fd(v22, &v48);
    v6 = *(a1 + 2320);
    goto LABEL_45;
  }

  v8 = openat(*(a1 + 32), "assertedJournalAttr.1", 536870922);
  if (v8 == -1)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v40 = __error();
      v41 = strerror(*v40);
      *__str = 136315650;
      *&__str[4] = "getJournalFd";
      *&__str[12] = 1024;
      *&__str[14] = 3925;
      *&__str[18] = 2080;
      *&__str[20] = v41;
      _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: Unable to open asserted jfile: %s", __str, 0x1Cu);
    }

    *__error() = v14;
    goto LABEL_23;
  }

  v9 = v8;
  v6 = fd_create_protected(*(a1 + 32), "assertedJournalAttr.1", 536870922, 2u);
  close(v9);
  if (!v6)
  {
LABEL_23:
    v16 = *__error();
    v17 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v34 = __error();
      v35 = strerror(*v34);
      *__str = 136315650;
      *&__str[4] = "getJournalFd";
      *&__str[12] = 1024;
      *&__str[14] = 3946;
      *&__str[18] = 2080;
      *&__str[20] = v35;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Unable to open asserted journal file: %s", __str, 0x1Cu);
    }

    *__error() = v16;
    goto LABEL_26;
  }

  v49 = 0;
  if (fd_setDir(*(a1 + 32), &v49))
  {
    v63 = 0u;
    memset(v64, 0, sizeof(v64));
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
    v52 = 0u;
    memset(__str, 0, sizeof(__str));
    for (i = *(a1 + 2344); i != 0x7FFFFFFF; *(a1 + 2344) = i)
    {
      snprintf(__str, 0xFFuLL, "%s%d", "journalAttr.", i);
      memset(&v50, 0, sizeof(v50));
      if (stat(__str, &v50))
      {
        break;
      }

      i = *(a1 + 2344) + 1;
    }

    if (fd_rename(v6, __str))
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v42 = __error();
        v43 = strerror(*v42);
        v50.st_dev = 136315906;
        *&v50.st_mode = "getJournalFd";
        WORD2(v50.st_ino) = 1024;
        *(&v50.st_ino + 6) = 3940;
        HIWORD(v50.st_uid) = 2080;
        *&v50.st_gid = __str;
        *(&v50.st_rdev + 2) = 2080;
        *(&v50.st_rdev + 6) = v43;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Unable to rename asserted journal file to: %s (%s)", &v50, 0x26u);
      }

      *__error() = v11;
      fd_release(v6);
      v13 = v49;
      MEMORY[0x1C6921200](v49);
      if ((v13 & 0x80000000) == 0)
      {
        close(v13);
      }

      goto LABEL_26;
    }

    v31 = v49;
    MEMORY[0x1C6921200](v49);
    if ((v31 & 0x80000000) == 0)
    {
      close(v31);
    }
  }

  *(a1 + 2320) = v6;
  v32 = v6;
  if (*(a1 + 6960) <= 0)
  {
    SIActivityJournalNewJournal((a1 + 2192), v6);
    v32 = *(a1 + 2320);
  }

  _fd_acquire_fd(v32, __str);
  ++*(a1 + 2344);
LABEL_70:
  if (a2)
  {
    pthread_mutex_unlock((a1 + 1632));
  }

  v38 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _fd_acquire_fd(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    v10 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v9, v10, "open error NULL obj", buf, 2u);
    }

    *__error() = v8;
    v6 = __error();
    v7 = 2;
    goto LABEL_10;
  }

  if (*a1 != -50529037)
  {
    v27 = __si_assert_copy_extra_661(-1);
    v28 = v27;
    v29 = "";
    if (v27)
    {
      v29 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1644, "obj->_magic==(0xFCFCFCF3)", v29);
    free(v28);
    if (__valid_fs(-1))
    {
      v30 = 2989;
    }

    else
    {
      v30 = 3072;
    }

    *v30 = -559038737;
    abort();
  }

  pthread_mutex_lock(&g_fd_lock);
  if (*(a1 + 52) == 1)
  {
    pthread_mutex_unlock(&g_fd_lock);
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "_fd_acquire_fd";
      v38 = 1024;
      v39 = 1649;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: fd_ptr instance was invalidated", buf, 0x12u);
    }

    *__error() = v4;
    v6 = __error();
    v7 = 22;
LABEL_10:
    *v6 = v7;
    goto LABEL_11;
  }

  if (*(a1 + 40) == -1)
  {
    pthread_mutex_unlock(&g_fd_lock);
    bzero(buf, 0x400uLL);
    v16 = (*(a1 + 56) >> 4);
    v17 = fd_name(a1, buf, 0x400uLL);
    v22 = _fd_open(*(a1 + 44), v17, *(a1 + 48), *(a1 + 56) & 1, v16, v18, v19, v20, v21);
    if (v22 != -1)
    {
      v23 = v22;
      __buf = 0;
      arc4random_buf(&__buf, 8uLL);
      v34 = *(a1 + 48);
      v24 = change_fdguard_np();
      __error();
      if (v24 && gSILogLevels[0] >= 5)
      {
        v31 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "open file failed to change fdguard", v33, 2u);
        }

        *__error() = v31;
      }

      pthread_mutex_lock(&g_fd_lock);
      if (*(a1 + 40) == -1)
      {
        *(a1 + 8) = __buf;
        *(a1 + 40) = v23;
        updated = _fd_update_locked(a1, 1, a2);
        v25 = *(g_fd_list + 4);
        v26 = *(g_fd_list + 8);
        pthread_mutex_unlock(&g_fd_lock);
        if (v25 > v26 && !_fd_close_inactive(*(a1 + 44), 0, 1, 1) && !_fd_close_inactive(-1, 0, 1, 1) && !_fd_close_inactive(*(a1 + 44), 0, 1, 0))
        {
          _fd_close_inactive(-1, 0, 1, 0);
        }
      }

      else
      {
        updated = _fd_update_locked(a1, 0, a2);
        pthread_mutex_unlock(&g_fd_lock);
        guarded_close_np();
      }

      goto LABEL_12;
    }

LABEL_11:
    updated = 0xFFFFFFFFLL;
LABEL_12:
    v12 = *MEMORY[0x1E69E9840];
    return updated;
  }

  v14 = _fd_update_locked(a1, 0, a2);
  pthread_mutex_unlock(&g_fd_lock);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t _fd_update_locked(uint64_t a1, int a2, void *a3)
{
  result = *(a1 + 40);
  if (result == -1)
  {
    v14 = __si_assert_copy_extra_661(-1);
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1587, "obj->fd != -1", v16);
    free(v15);
    if (__valid_fs(-1))
    {
      v17 = 2989;
    }

    else
    {
      v17 = 3072;
    }

    *v17 = -559038737;
    abort();
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (!v6)
  {
    if (v5)
    {
      v23 = __si_assert_copy_extra_661(-1);
      v19 = v23;
      v24 = "";
      if (v23)
      {
        v24 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1589, "!obj->prev", v24);
    }

    else
    {
      v7 = g_fd_list;
      v10 = *(g_fd_list + 16);
      v11 = *g_fd_list;
      if (v10)
      {
        if (v11)
        {
          v12 = *(v10 + 16);
          *(a1 + 16) = v12;
          *(a1 + 24) = v10;
          *(v12 + 24) = a1;
          *(v10 + 16) = a1;
          v13 = v11 + 1;
          goto LABEL_16;
        }

        v25 = __si_assert_copy_extra_661(-1);
        v19 = v25;
        v26 = "";
        if (v25)
        {
          v26 = v25;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1594, "g_fd_list->item_count!=0", v26);
      }

      else
      {
        if (!v11)
        {
          *(a1 + 16) = a1;
          *(a1 + 24) = a1;
          v13 = 1;
LABEL_16:
          *v7 = v13;
          if ((a2 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        v27 = __si_assert_copy_extra_661(-1);
        v19 = v27;
        v28 = "";
        if (v27)
        {
          v28 = v27;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1591, "g_fd_list->item_count==0", v28);
      }
    }

LABEL_39:
    free(v19);
    if (__valid_fs(-1))
    {
      v29 = 2989;
    }

    else
    {
      v29 = 3072;
    }

    *v29 = -559038737;
    abort();
  }

  if (!v5)
  {
    v18 = __si_assert_copy_extra_661(-1);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1605, "obj->prev", v20);
    goto LABEL_39;
  }

  v7 = g_fd_list;
  v8 = *(g_fd_list + 16);
  if (!v8)
  {
    v21 = __si_assert_copy_extra_661(-1);
    v19 = v21;
    v22 = "";
    if (v21)
    {
      v22 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1606, "g_fd_list->head", v22);
    goto LABEL_39;
  }

  if (v8 != a1)
  {
    *(v5 + 24) = v6;
    *(*(a1 + 24) + 16) = v5;
    v9 = *(v8 + 16);
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    *(v9 + 24) = a1;
    *(v8 + 16) = a1;
  }

  if (a2)
  {
LABEL_8:
    ++*(v7 + 4);
  }

LABEL_9:
  *(v7 + 16) = a1;
  ++*(a1 + 36);
  *a3 = *(a1 + 8);
  return result;
}

_DWORD *_fd_release_fd(_DWORD *result, int a2, int a3, uint64_t a4)
{
  if (!result || a2 == -1)
  {
    return result;
  }

  v5 = result;
  v23 = 0;
  if (*result != -50529037)
  {
    v11 = __si_assert_copy_extra_661(-1);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1723, "obj->_magic==(0xFCFCFCF3)", v13);
LABEL_29:
    free(v12);
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

  pthread_mutex_lock(&g_fd_lock);
  v8 = *(v5 + 52);
  if ((v8 & 1) == 0)
  {
    if (*(v5 + 40) != a2)
    {
      v16 = __si_assert_copy_extra_661(-1);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1728, "obj->fd == in_fd", v18);
      free(v17);
      if (__valid_fs(-1))
      {
        v19 = 2989;
      }

      else
      {
        v19 = 3072;
      }

      *v19 = -559038737;
      abort();
    }

    if (*(v5 + 8) != a4)
    {
      v20 = __si_assert_copy_extra_661(-1);
      v12 = v20;
      v21 = "";
      if (v20)
      {
        v21 = v20;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1729, "obj->_guard == inguard", v21);
      goto LABEL_29;
    }
  }

  v9 = *(v5 + 36);
  if (!v9)
  {
    v14 = __si_assert_copy_extra_661(-1);
    v12 = v14;
    v15 = "";
    if (v14)
    {
      v15 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1731, "obj->open_count", v15);
    goto LABEL_29;
  }

  v10 = v9 - 1;
  *(v5 + 36) = v10;
  if (v10 || !a3 || (v8 & 1) != 0 || *(v5 + 68) || _fd_remove_locked(v5, &v23) == -1)
  {
    return pthread_mutex_unlock(&g_fd_lock);
  }

  *(v5 + 56) &= ~8u;
  pthread_mutex_unlock(&g_fd_lock);
  return guarded_close_np();
}

uint64_t fd_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *__error() = 2;
LABEL_17:
    v7 = -1;
    goto LABEL_18;
  }

  if (*(a1 + 96))
  {
    v20 = __si_assert_copy_extra_661(-1);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 694, "!obj->forbidder", v22);
    free(v21);
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

  v24 = 0;
  v6 = _fd_acquire_fd(a1, &v24);
  if (v6 == -1)
  {
    goto LABEL_14;
  }

  v7 = 0;
  v8 = a3;
  do
  {
    while (1)
    {
      v9 = guarded_write_np();
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      v7 += v9;
      v12 = v8 > v9;
      v8 -= v9;
      if (!v12)
      {
        goto LABEL_13;
      }

      a2 += v9;
    }

    v10 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v11 = __error();
  }

  while (((*(v10 + 16))(v10, v6, *v11, 6) & 1) != 0);
  v7 = -1;
LABEL_13:
  v13 = *__error();
  _fd_release_fd(a1, v6, 0, v24);
  *__error() = v13;
  if (v7 == -1)
  {
LABEL_14:
    bzero(v37, 0x400uLL);
    v14 = *__error();
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = fd_realpath(a1, v37);
      if (!v19)
      {
        v19 = fd_name(a1, v37, 0x400uLL);
        if (!v19)
        {
          v19 = "";
        }
      }

      *buf = 136316418;
      v26 = "fd_write";
      v27 = 1024;
      v28 = 709;
      v29 = 1024;
      v30 = v6;
      v31 = 2080;
      v32 = v19;
      v33 = 1024;
      v34 = a3;
      v35 = 1024;
      v36 = v14;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: write(%d %s, s:%d) err:%d", buf, 0x2Eu);
    }

    *__error() = v15;
    *__error() = v14;
    goto LABEL_17;
  }

LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

void SIActivityJournalNewJournal(os_unfair_lock_s *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v3 = fd_name(a2, v12, 0x100uLL);
  if (v3)
  {
    v4 = v3;
    if (!strncmp(v3, "journalAttr.", 0xCuLL))
    {
      v8 = atoi(v4 + 12);
      v6 = a1 + 8;
      os_unfair_lock_lock(a1 + 8);
      v13 = 0u;
      v14 = 0u;
      if (v8 > 0x7F)
      {
        if (v8 >> 14)
        {
          if (v8 >> 21)
          {
            if (v8 >> 28)
            {
              LOBYTE(v13) = -16;
              *(&v13 + 1) = v8;
              v7 = 5;
            }

            else
            {
              LOBYTE(v13) = HIBYTE(v8) | 0xE0;
              BYTE1(v13) = BYTE2(v8);
              BYTE2(v13) = BYTE1(v8);
              BYTE3(v13) = v8;
              v7 = 4;
            }
          }

          else
          {
            LOBYTE(v13) = BYTE2(v8) | 0xC0;
            BYTE1(v13) = BYTE1(v8);
            BYTE2(v13) = v8;
            v7 = 3;
          }
        }

        else
        {
          LOBYTE(v13) = BYTE1(v8) | 0x80;
          BYTE1(v13) = v8;
          v7 = 2;
        }
      }

      else
      {
        LOBYTE(v13) = v8;
        v7 = 1;
      }

      v9 = a1;
      v10 = 24;
      goto LABEL_24;
    }

    if (!strncmp(v4, "deferAttr.", 0xAuLL))
    {
      v5 = atoi(v4 + 10);
      v6 = a1 + 8;
      os_unfair_lock_lock(a1 + 8);
      v13 = 0u;
      v14 = 0u;
      if (v5 > 0x7F)
      {
        if (v5 >> 14)
        {
          if (v5 >> 21)
          {
            if (v5 >> 28)
            {
              LOBYTE(v13) = -16;
              *(&v13 + 1) = v5;
              v7 = 5;
            }

            else
            {
              LOBYTE(v13) = HIBYTE(v5) | 0xE0;
              BYTE1(v13) = BYTE2(v5);
              BYTE2(v13) = BYTE1(v5);
              BYTE3(v13) = v5;
              v7 = 4;
            }
          }

          else
          {
            LOBYTE(v13) = BYTE2(v5) | 0xC0;
            BYTE1(v13) = BYTE1(v5);
            BYTE2(v13) = v5;
            v7 = 3;
          }
        }

        else
        {
          LOBYTE(v13) = BYTE1(v5) | 0x80;
          BYTE1(v13) = v5;
          v7 = 2;
        }
      }

      else
      {
        LOBYTE(v13) = v5;
        v7 = 1;
      }

      v9 = a1;
      v10 = 52;
LABEL_24:
      activityJournalWrite(v9, v10, &v13, v7);
      os_unfair_lock_unlock(v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t fd_setDir(uint64_t a1, int *a2)
{
  *a2 = -1;
  memset(&v5, 0, sizeof(v5));
  if (!fstat(a1, &v5))
  {
    *a2 = open(".", 4);
    if (!MEMORY[0x1C6921200](a1))
    {
      return 1;
    }

    if ((*a2 & 0x80000000) == 0)
    {
      close(*a2);
      result = 0;
      *a2 = -1;
      return result;
    }
  }

  return 0;
}

void *fd_create_protected(int a1, const char *a2, int a3, unsigned __int8 a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (fd_create_protected_once[0] != -1)
  {
    dispatch_once(fd_create_protected_once, &__block_literal_global_8510);
  }

  v8 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v8 = -50529037;
  v8[1] = 0;
  *(v8 + 1) = 0u;
  v8[4] = 1;
  *(v8 + 10) = -1;
  *(v8 + 11) = a1;
  v9 = (a3 & 3) != 0;
  *(v8 + 12) = a3 | (v9 << 29);
  v10 = *(v8 + 28);
  *(v8 + 30) &= 0xFC00u;
  v11 = v10 & 0xFFF0 | (4 * v9);
  *(v8 + 28) = v11;
  v12 = strdup(a2);
  *(v8 + 52) = 0;
  *(v8 + 17) = 0;
  v8[9] = v12;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  *(v8 + 28) = v11 & 0xF00F | (16 * a4);
  v24 = 0;
  v13 = _fd_acquire_fd(v8, &v24);
  if (v13 == -1)
  {
    v14 = *__error();
    bzero(v36, 0x400uLL);
    v15 = fcntl(a1, 50, v36);
    if (v36[0])
    {
      v16 = v15 < 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v36;
    }

    if ((a3 & 0x200) != 0)
    {
      v18 = 17;
    }

    else
    {
      v18 = 2;
    }

    if (v14 == v18)
    {
      if (gSILogLevels[0] < 5)
      {
LABEL_21:
        fd_release(v8);
        v8 = 0;
        *__error() = v14;
        goto LABEL_22;
      }

      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v26 = v17;
        v27 = 2080;
        *v28 = a2;
        *&v28[8] = 1024;
        *&v28[10] = a3;
        v29 = 1024;
        *v30 = a1;
        *&v30[4] = 1024;
        *&v30[6] = v14;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x28u);
      }
    }

    else
    {
      v19 = *__error();
      v21 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v26 = "fd_create_protected";
        v27 = 1024;
        *v28 = 207;
        *&v28[4] = 2080;
        *&v28[6] = v17;
        v29 = 2080;
        *v30 = a2;
        *&v30[8] = 1024;
        v31 = a3;
        v32 = 1024;
        v33 = a1;
        v34 = 1024;
        v35 = v14;
        _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x38u);
      }
    }

    *__error() = v19;
    goto LABEL_21;
  }

  *(v8 + 12) &= 0xFFFFF9FF;
  _fd_release_fd(v8, v13, 0, v24);
LABEL_22:
  v22 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _fd_open(uint64_t a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9)
{
  v28 = *MEMORY[0x1E69E9840];
  a9.n128_u64[0] = 136315394;
  while (1)
  {
    v14 = a5 ? si_openat_protected(a1, a2, a3, a5) : _safe_open_at(a1, a2, a3, a4, a5, a6, a7, a8, a9, 0x180u);
    v15 = v14;
    if (a4)
    {
      if (v14 != -1)
      {
        break;
      }
    }

    if (v14 != -1 || !g_prot_error_callback)
    {
      goto LABEL_16;
    }

    v16 = *__error();
    if (gSILogLevels[0] >= 5)
    {
      v23 = *__error();
      v19 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *__error();
        *buf = 136315394;
        v25 = a2;
        v26 = 1024;
        v27 = v20;
        _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v23;
    }

    v17 = g_prot_error_callback;
    v18 = __error();
    if (((*(v17 + 16))(v17, a1, *v18, 15) & 1) == 0)
    {
      *__error() = v16;
      v15 = 0xFFFFFFFFLL;
      goto LABEL_16;
    }
  }

  fcntl(v14, 48, 1);
  fcntl(v15, 76, 1);
LABEL_16:
  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _safe_open_at(uint64_t a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, unsigned __int16 a10)
{
  v67 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x200) != 0)
  {
    bzero(&v63, 0x400uLL);
    if (fcntl(a1, 50, &v63) < 0 || !v63)
    {
      v26 = *__error();
      v27 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v60 = 136316418;
        *v61 = "_safe_open_at";
        *&v61[8] = 1024;
        LODWORD(v62[0]) = 1417;
        WORD2(v62[0]) = 1024;
        *(v62 + 6) = a1;
        WORD1(v62[1]) = 2080;
        *(&v62[1] + 4) = a2;
        WORD2(v62[2]) = 2048;
        *(&v62[2] + 6) = a3;
        HIWORD(v62[3]) = 1024;
        LODWORD(v62[4]) = v26;
        _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: faccurate_realpath() failed, parent_fd:%d, path:%s, flags:0x%lx, errno:%d\n", &v60, 0x32u);
      }
    }

    else
    {
      if (v63 != 47)
      {
        v13 = a10;
        goto LABEL_7;
      }

      v27 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v60 = 136316162;
        *v61 = "_safe_open_at";
        *&v61[8] = 1024;
        LODWORD(v62[0]) = 1421;
        WORD2(v62[0]) = 2080;
        *(v62 + 6) = &v63;
        HIWORD(v62[1]) = 2080;
        v62[2] = a2;
        LOWORD(v62[3]) = 2048;
        *(&v62[3] + 2) = a3;
        _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: Invalid parent path, currentPath:%s, path:%s, flags:0x%lx\n", &v60, 0x30u);
      }

      v26 = 22;
    }

    *__error() = v27;
    *__error() = v26;
LABEL_45:
    result = 0xFFFFFFFFLL;
    goto LABEL_46;
  }

  v13 = 0;
LABEL_7:
  a9.n128_u64[0] = 136315394;
  v57 = a9;
  while (1)
  {
    result = openat(a1, a2, a3, v13);
    if (result != -1)
    {
      break;
    }

    v15 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels[0] >= 5)
    {
      LODWORD(v58) = *__error();
      v17 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *__error();
        v63 = v57.n128_u32[0];
        v64 = a2;
        v65 = 1024;
        v66 = v18;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", &v63, 0x12u);
      }

      *__error() = v58;
      v15 = g_prot_error_callback;
    }

    v16 = __error();
    if (((*(v15 + 16))(v15, a1, *v16, 13) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (result != -1)
  {
    goto LABEL_46;
  }

LABEL_17:
  LODWORD(v58) = *__error();
  if ((v58 - 23) > 1)
  {
    goto LABEL_32;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  v21 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v20, (gSILogLevels[0] < 3)))
  {
    v63 = 67109120;
    LODWORD(v64) = v58;
    _os_log_impl(&dword_1C278D000, v20, v21, "*warn* too many open files, err: %d, closing inactive and trying again", &v63, 8u);
  }

  *__error() = v19;
  _fd_close_inactive(-1, 0, 0, 0);
  while (1)
  {
    result = openat(a1, a2, a3, v13);
    if (result != -1)
    {
      break;
    }

    v22 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels[0] >= 5)
    {
      v56 = *__error();
      v24 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *__error();
        v63 = v57.n128_u32[0];
        v64 = a2;
        v65 = 1024;
        v66 = v25;
        _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", &v63, 0x12u);
      }

      *__error() = v56;
      v22 = g_prot_error_callback;
    }

    v23 = __error();
    if (((*(v22 + 16))(v22, a1, *v23, 14) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (result == -1)
  {
LABEL_32:
    if (v58 == 23)
    {
      v36 = __si_assert_copy_extra_661(-1);
      v37 = v36;
      v38 = "";
      if (v36)
      {
        v38 = v36;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Too many open files in system %d", "fd_obj.c", 1533, "false", v38, 23);
      free(v37);
      if (__valid_fs(-1))
      {
        v39 = 2989;
      }

      else
      {
        v39 = 3072;
      }

      *v39 = -559038737;
      abort();
    }

    if (v58 == 24)
    {
      v29 = *MEMORY[0x1E695E480];
      Mutable = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D0]);
      bzero(&v63, 0x400uLL);
      if (gOpenLimit < 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        do
        {
          if ((fcntl(v32, 50, &v63) & 0x80000000) == 0 && v63)
          {
            v33 = CFStringCreateWithCString(v29, &v63, 0x8000100u);
            CFBagAddValue(Mutable, v33);
            CFRelease(v33);
            ++v31;
          }

          ++v32;
        }

        while (v32 < gOpenLimit);
      }

      v40 = MEMORY[0x1C691E5D0](Mutable);
      MEMORY[0x1EEE9AC00]();
      v42 = &v55 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v42, v41);
      CFBagGetValues(Mutable, v42);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 0x40000000;
      v59[2] = ___safe_open_at_block_invoke;
      v59[3] = &__block_descriptor_tmp_28_8548;
      v59[4] = Mutable;
      qsort_b(v42, v40, 8uLL, v59);
      pthread_mutex_lock(&g_fd_lock);
      if (v31 >= 1)
      {
        v44 = 0;
        v45 = 0;
        *&v43 = 67109634;
        v58 = v43;
        do
        {
          if (*&v42[8 * v44] != v45)
          {
            v46 = *__error();
            v47 = _SILogForLogForCategory(0);
            v48 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v47, (gSILogLevels[0] < 3)))
            {
              v49 = MEMORY[0x1C691E5E0](Mutable, *&v42[8 * v44]);
              v50 = *&v42[8 * v44];
              v60 = v58;
              *v61 = v44;
              *&v61[4] = 1024;
              *&v61[6] = v49;
              LOWORD(v62[0]) = 2112;
              *(v62 + 2) = v50;
              _os_log_impl(&dword_1C278D000, v47, v48, "*warn* [%d] (%d) - %@", &v60, 0x18u);
            }

            *__error() = v46;
            v45 = *&v42[8 * v44];
          }

          ++v44;
        }

        while (v31 != v44);
      }

      pthread_mutex_unlock(&g_fd_lock);
      CFRelease(Mutable);
      v51 = __si_assert_copy_extra_661(-1);
      v52 = v51;
      v53 = "";
      if (v51)
      {
        v53 = v51;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Too many open files %d (%d) (%d)", "fd_obj.c", 1530, "false", v53, 24, v31, 0);
      free(v52);
      if (__valid_fs(-1))
      {
        v54 = 2989;
      }

      else
      {
        v54 = 3072;
      }

      *v54 = -559038737;
      abort();
    }

    goto LABEL_45;
  }

LABEL_46:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

char *fd_name(uint64_t a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -50529037)
  {
    v7 = __si_assert_copy_extra_661(-1);
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1248, "obj->_magic==(0xFCFCFCF3)", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      v10 = 2989;
    }

    else
    {
      v10 = 3072;
    }

    *v10 = -559038737;
    abort();
  }

  os_unfair_lock_lock(&g_name_lock);
  if (strlcpy(a2, *(a1 + 72), a3) > a3)
  {
    a2 = 0;
  }

  os_unfair_lock_unlock(&g_name_lock);
  return a2;
}

uint64_t SIValidIndex(uint64_t a1)
{
  if (a1)
  {
    v1 = atomic_load_explicit((a1 + 2439), memory_order_acquire) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void activityJournalWrite(uint64_t a1, char a2, uint64_t a3, unsigned int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    bzero(&v16, 0x400uLL);
    if ((*(a1 + 36) & 1) == 0)
    {
      *(a1 + 36) = 1;
      v16 = 113;
      v7 = getpid();
      if (v7 > 0x7F)
      {
        if (v7 >> 14)
        {
          if (v7 >> 21)
          {
            if (v7 >> 28)
            {
              v17 = -16;
              v18 = v7;
              v8 = 6;
            }

            else
            {
              v17 = HIBYTE(v7) | 0xE0;
              LOBYTE(v18) = BYTE2(v7);
              BYTE1(v18) = BYTE1(v7);
              BYTE2(v18) = v7;
              v8 = 5;
            }
          }

          else
          {
            v17 = BYTE2(v7) | 0xC0;
            LOBYTE(v18) = BYTE1(v7);
            BYTE1(v18) = v7;
            v8 = 4;
          }
        }

        else
        {
          v17 = BYTE1(v7) | 0x80;
          LOBYTE(v18) = v7;
          v8 = 3;
        }
      }

      else
      {
        v17 = v7;
        v8 = 2;
      }

      Current = CFAbsoluteTimeGetCurrent();
      v10 = v2_writeVInt64_11288(&v16, v8, Current);
      *(&v16 + v10) = 0;
      v11 = _CFCopySystemVersionDictionary();
      if (v11)
      {
        v12 = v11;
        Value = CFDictionaryGetValue(v11, *MEMORY[0x1E695E1E8]);
        if (Value && !CFStringGetCString(Value, &v16 + v10, 1024 - v10, 0x8000100u))
        {
          *(&v16 + v10) = 0;
        }

        CFRelease(v12);
      }

      v14 = strlen(&v16 + v10);
      fd_write(*a1, &v16, v10 + v14 + 1);
    }

    v16 = (2 * a2) | 1;
    if (a4 <= 0x3FE)
    {
      __memcpy_chk();
      fd_write(*a1, &v16, a4 + 1);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t si_openat_protected(uint64_t a1, const char *a2, int a3, int a4)
{
  v11 = 0;
  if ((fd_setDir(a1, &v11) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = open_dprotected_np(a2, a3, a4, 0, 384);
  v8 = *__error();
  v9 = v11;
  MEMORY[0x1C6921200](v11);
  if ((v9 & 0x80000000) == 0)
  {
    close(v9);
  }

  if (v7 == -1 && v8)
  {
    *__error() = v8;
    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t si_mobile_journal_create(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v90[129] = *MEMORY[0x1E69E9840];
  v11 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F004037D4A986uLL);
  v12 = v11;
  if (v11)
  {
    *(v11 + 2) = -1;
    atomic_store(1u, v11);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 32), 1u, memory_order_relaxed);
    }

    *(v11 + 1) = v9;
    *(v11 + 120) = (*(v10 + 828) & 0x100000) != 0;
    v13 = *MEMORY[0x1E695E480];
    v14 = si_storecookieRef(v10);
    v15 = CFUUIDCreateString(v13, v14);
    Length = CFStringGetLength(v15);
    v17 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    CFStringGetCString(v15, v17, Length + 1, 0x8000100u);
    CFRelease(v15);
    *(v12 + 112) = v17;
    *(v12 + 104) = v7;
    if (v5)
    {
      memset(v77, 0, sizeof(v77));
      v18 = fd_name(*(v12 + 8), v77, 0x100uLL);
      if (v18)
      {
        v19 = v18;
        v20 = strrchr(v18, 46);
        if (v20)
        {
          v21 = v20;
          v23 = v20[1];
          v22 = v20 + 1;
          if (v23)
          {
            v90[0] = 0;
            v24 = strtol(v22, v90, 0);
            *(v12 + 40) = v24;
            if (v24 >= 1)
            {
              *(v12 + 48) = strndup(v19, v21 - v19);
            }
          }
        }
      }

      if (*(v12 + 40) >= 1)
      {
        memset(&v76, 0, sizeof(v76));
        if (!fd_stat(*(v12 + 8), &v76))
        {
          *(v12 + 56) = v76.st_dev;
          *(v12 + 64) = v76.st_ino;
        }

        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v12 + 8), "_toc", 1537);
        *(v12 + 80) = sibling_with_suffix_protected;
        if (!fd_stat(sibling_with_suffix_protected, &v76))
        {
          *(v12 + 72) = v76.st_ino;
        }

        if (v3)
        {
          bzero(v90, 0x400uLL);
          bzero(v89, 0x400uLL);
          bzero(v88, 0x400uLL);
          bzero(__str, 0x400uLL);
          bzero(&v86, 0x400uLL);
          bzero(v85, 0x400uLL);
          v26 = 0;
          if ((fcntl(*(v10 + 32), 50, v90) & 0x80000000) == 0)
          {
            if (LOBYTE(v90[0]))
            {
              v26 = v90;
              v27 = strrchr(v90, 47);
              if (v27)
              {
                v28 = 1;
                do
                {
                  v29 = v28;
                  if (v27 <= v90)
                  {
LABEL_24:
                    if (*v27 != 47)
                    {
                      break;
                    }
                  }

                  else
                  {
                    while (*v27 != 47)
                    {
                      if (--v27 <= v90)
                      {
                        v27 = v90;
                        goto LABEL_24;
                      }
                    }
                  }

                  v28 = 0;
                  *v27 = 0;
                }

                while ((v29 & 1) != 0);
                v26 = v90;
              }
            }
          }

          v30 = fd_realpath(*(v12 + 8), v89);
          if (v30)
          {
            v31 = v30;
            v32 = fd_realpath(*(v12 + 80), v88);
            if (v32)
            {
              v33 = v32;
              v34 = *(v12 + 104);
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
                  v41 = 2;
                }

                else
                {
                  v41 = (v34 >> 1) - 1;
                }

                if (v41 >= 7)
                {
                  v35 = "cs_default";
                }

                else
                {
                  v35 = off_1E8196C28[v41];
                }
              }

              snprintf(__str, 0x400uLL, "%s/%s/%d/%s", v26, "SpotlightKnowledgeEvents/index.V2/journals", 12, v35);
              snprintf(&v86, 0x400uLL, "%s/%s_%s_%d_%llu_%s_%ld.journal", __str, "skg_events", *(v12 + 112), *(v12 + 56), *(v12 + 64), *(v12 + 48), *(v12 + 40));
              snprintf(v85, 0x400uLL, "%s/%s_%s_%d_%s_%ld.toc", __str, "skg_events", *(v12 + 112), *(v12 + 56), *(v12 + 48), *(v12 + 40));
              memset(&v84, 0, sizeof(v84));
              if (stat(__str, &v84) != -1)
              {
                goto LABEL_44;
              }

              v47 = strdup(__str);
              if (v47)
              {
                v48 = v47;
                for (i = 1; ; ++i)
                {
                  if (v48[i] == 47)
                  {
                    v48[i] = 0;
                    if (mkdir(v48, 0x1FFu) == -1 && *__error() != 17)
                    {
                      v62 = *__error();
                      v63 = _SILogForLogForCategory(4);
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        v79 = "si_create_nested_dirs";
                        v80 = 1024;
                        *v81 = 4488;
                        *&v81[4] = 2080;
                        *&v81[6] = v48;
                        goto LABEL_95;
                      }

LABEL_76:
                      *__error() = v62;
                      free(v48);
                      goto LABEL_77;
                    }

                    v48[i] = 47;
                  }

                  else if (!v48[i])
                  {
                    if (mkdir(v48, 0x1FFu) == -1 && *__error() != 17)
                    {
                      v62 = *__error();
                      v63 = _SILogForLogForCategory(4);
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        v79 = "si_create_nested_dirs";
                        v80 = 1024;
                        *v81 = 4499;
                        *&v81[4] = 2080;
                        *&v81[6] = v48;
LABEL_95:
                        _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: SpotlightIndex#si_create_nested_dirsmkdir failed on %s", buf, 0x1Cu);
                      }

                      goto LABEL_76;
                    }

                    free(v48);
                    v58 = *__error();
                    v59 = _SILogForLogForCategory(4);
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v79 = __str;
                      _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#si_mobile_journal_hardlink_new_journal Created dir for hardlinking journals: %s", buf, 0xCu);
                    }

                    *__error() = v58;
LABEL_44:
                    v42 = link(v31, &v86);
                    v43 = *__error();
                    v44 = _SILogForLogForCategory(4);
                    v45 = v44;
                    if (v42)
                    {
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        v46 = *__error();
                        *buf = 136316162;
                        v79 = "si_mobile_journal_hardlink_new_journal";
                        v80 = 1024;
                        *v81 = 4589;
                        *&v81[4] = 1024;
                        *&v81[6] = v46;
                        *&v81[10] = 2080;
                        *&v81[12] = v31;
                        v82 = 2080;
                        v83 = &v86;
                        _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Error %d linking journal(%s) for spotlightknowledged(%s)", buf, 0x2Cu);
                      }
                    }

                    else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v79 = v31;
                      v80 = 2080;
                      *v81 = &v86;
                      _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#si_mobile_journal_hardlink_new_journal Linked journal(%s) for spotlightknowledged(%s)", buf, 0x16u);
                    }

                    *__error() = v43;
                    v50 = link(v33, v85);
                    v51 = *__error();
                    v52 = _SILogForLogForCategory(4);
                    v53 = v52;
                    if (v50)
                    {
                      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                      {
                        v54 = *__error();
                        *buf = 136316162;
                        v79 = "si_mobile_journal_hardlink_new_journal";
                        v80 = 1024;
                        *v81 = 4596;
                        *&v81[4] = 1024;
                        *&v81[6] = v54;
                        *&v81[10] = 2080;
                        *&v81[12] = v33;
                        v82 = 2080;
                        v83 = v85;
                        v55 = "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Error %d linking journal toc(%s) for spotlightknowledged(%s)";
                        v56 = v53;
                        v57 = 44;
                        goto LABEL_93;
                      }
                    }

                    else if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v79 = v33;
                      v80 = 2080;
                      *v81 = v85;
                      _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#si_mobile_journal_hardlink_new_journal Linked journal toc(%s) for spotlightknowledged(%s)", buf, 0x16u);
                    }

                    goto LABEL_78;
                  }
                }
              }

              v60 = *__error();
              v61 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v79 = "si_create_nested_dirs";
                v80 = 1024;
                *v81 = 4478;
                *&v81[4] = 2080;
                *&v81[6] = __str;
                _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, "%s:%d: SpotlightIndex#si_create_nested_dirs strdup failed on %s", buf, 0x1Cu);
              }

              *__error() = v60;
LABEL_77:
              v51 = *__error();
              v66 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                v75 = *__error();
                *buf = 136315906;
                v79 = "si_mobile_journal_hardlink_new_journal";
                v80 = 1024;
                *v81 = 4579;
                *&v81[4] = 1024;
                *&v81[6] = v75;
                *&v81[10] = 2080;
                *&v81[12] = __str;
                v55 = "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Error %d creating dir for hardlinkging: %s";
                v56 = v66;
                v57 = 34;
LABEL_93:
                _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);
              }

LABEL_78:
              *__error() = v51;
LABEL_79:
              if (!*(v12 + 56) || !*(v12 + 64) || !*(v12 + 72) || *(v12 + 40) < 1)
              {
                goto LABEL_91;
              }

              message = _si_mobile_journal_create_message(v12, 1u);
              v68 = si_xpc_send_client_msg(message, &__block_literal_global_1054);
              v69 = *__error();
              v70 = _SILogForLogForCategory(0);
              v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
              if (v68)
              {
                if (!v71)
                {
                  goto LABEL_89;
                }

                LOWORD(v90[0]) = 0;
                v72 = "### skg journal_new message sent";
              }

              else
              {
                if (!v71)
                {
                  goto LABEL_89;
                }

                LOWORD(v90[0]) = 0;
                v72 = "### skg journal_new NOT sent";
              }

              _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, v72, v90, 2u);
LABEL_89:
              *__error() = v69;
              if (message)
              {
                CFRelease(message);
              }

              goto LABEL_91;
            }

            v36 = *__error();
            v37 = _SILogForLogForCategory(4);
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
LABEL_35:
              *__error() = v36;
              goto LABEL_79;
            }

            v65 = *(v12 + 40);
            v64 = *(v12 + 48);
            v84.st_dev = 136315906;
            *&v84.st_mode = "si_mobile_journal_hardlink_new_journal";
            WORD2(v84.st_ino) = 1024;
            *(&v84.st_ino + 6) = 4555;
            HIWORD(v84.st_uid) = 2080;
            *&v84.st_gid = v64;
            *(&v84.st_rdev + 2) = 2048;
            *(&v84.st_rdev + 6) = v65;
            v40 = "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Could not get journal toc realpath for journal: %s.%ld";
          }

          else
          {
            v36 = *__error();
            v37 = _SILogForLogForCategory(4);
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }

            v39 = *(v12 + 40);
            v38 = *(v12 + 48);
            v84.st_dev = 136315906;
            *&v84.st_mode = "si_mobile_journal_hardlink_new_journal";
            WORD2(v84.st_ino) = 1024;
            *(&v84.st_ino + 6) = 4549;
            HIWORD(v84.st_uid) = 2080;
            *&v84.st_gid = v38;
            *(&v84.st_rdev + 2) = 2048;
            *(&v84.st_rdev + 6) = v39;
            v40 = "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Could not get journal realpath: %s.%ld";
          }

          _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, v40, &v84, 0x26u);
          goto LABEL_35;
        }
      }
    }
  }

LABEL_91:
  v73 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t si_storecookieRef(uint64_t a1)
{
  if (!*(a1 + 1440))
  {
    if (*(a1 + 1192))
    {
      indexmetadata = si_create_indexmetadata(a1, 1);
      v16 = indexmetadata;
      if (indexmetadata)
      {
        v14 = 0;
        v15 = 0;
        field = db_get_field(*(a1 + 1192), indexmetadata, "kMDStoreUUID", &v14, &v15);
        v4 = *MEMORY[0x1E695E480];
        if (field)
        {
          v5 = CFUUIDCreate(v4);
          *(a1 + 1440) = v5;
          *(a1 + 1424) = CFUUIDGetUUIDBytes(v5);
          db_add_field(*(a1 + 1192), &v16, 1u, "kMDStoreUUID", 0, 0x108u, 14, (a1 + 1424), v6, 16);
          indexmetadata = v16;
          if (db_update_obj(*(a1 + 1192), v16, 12))
          {
            v7 = *__error();
            v8 = _SILogForLogForCategory(7);
            v9 = dword_1EBF46AE8 < 3;
            if (os_log_type_enabled(v8, (dword_1EBF46AE8 < 3)))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v8, v9, "*warn* Failed getting store cookie", buf, 2u);
            }

            *__error() = v7;
          }
        }

        else
        {
          v11 = CFUUIDCreateFromUUIDBytes(v4, *v15);
          *(a1 + 1440) = v11;
          *(a1 + 1424) = CFUUIDGetUUIDBytes(v11);
        }
      }

      free(indexmetadata);
    }

    else
    {
      v10 = CFUUIDCreate(*MEMORY[0x1E695E480]);
      *(a1 + 1440) = v10;
      *(a1 + 1424) = CFUUIDGetUUIDBytes(v10);
    }
  }

  return *(a1 + 1440);
}

uint64_t fd_stat(uint64_t a1, stat *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = fstatat(*(a1 + 44), *(a1 + 72), a2, 2048);
    v5 = g_prot_error_callback;
    if (result != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v7 = *(a1 + 40);
    v8 = __error();
    if (((*(v5 + 16))(v5, v7, *v8, 8) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t si_xpc_send_client_msg(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = qword_1EBF47B38;
  if (!qword_1EBF47B38)
  {
    os_unfair_lock_lock(&si_retain_service_connection_s_service_queue_lock);
    if (!qword_1EBF47B38)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      *__str = 0u;
      snprintf(__str, 0x100uLL, "%s.xpc.client.queue", "com.apple.spotlightknowledged");
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      qword_1EBF47B38 = dispatch_queue_create(__str, v5);
    }

    os_unfair_lock_unlock(&si_retain_service_connection_s_service_queue_lock);
    v4 = qword_1EBF47B38;
    if (!qword_1EBF47B38)
    {
      goto LABEL_15;
    }
  }

  *__str = 0;
  *&__str[8] = __str;
  v14 = 0x2000000000uLL;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_retain_service_connection_block_invoke;
  block[3] = &unk_1E8193888;
  v12 = 3;
  block[4] = __str;
  block[5] = "com.apple.spotlightknowledged";
  dispatch_sync(v4, block);
  v6 = *(*&__str[8] + 24);
  _Block_object_dispose(__str, 8);
  if (v6)
  {
    if (qword_1EBF47B38)
    {
      v7 = a1 == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (!v7)
    {
      *__str = MEMORY[0x1E69E9820];
      *&__str[8] = 0x40000000;
      *&v14 = __si_xpc_send_msg_block_invoke;
      *(&v14 + 1) = &unk_1E81938B0;
      *&v15 = a2;
      *(&v15 + 1) = v6;
      xpc_connection_send_message_with_reply(v6, a1, qword_1EBF47B38, __str);
    }

    CFRelease(v6);
  }

  else
  {
LABEL_15:
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void *fd_create_sibling_with_suffix_protected(uint64_t a1, const char *a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  asprintf(&v7, "%s%s", *(a1 + 72), a2);
  sibling_protected = fd_create_sibling_protected(a1, v7, a3, 3u);
  free(v7);
  return sibling_protected;
}

void *fd_create_sibling_protected(uint64_t a1, const char *a2, int a3, unsigned __int8 a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v8 = -50529037;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 1;
  v9 = *(a1 + 44);
  *(v8 + 10) = -1;
  *(v8 + 11) = v9;
  *(v8 + 12) = a3 | (((a3 & 3) != 0) << 29);
  LOWORD(a3) = *(v8 + 28);
  *(v8 + 30) &= 0xFC00u;
  *(v8 + 28) = a3 & 0xFFF0;
  v10 = strdup(a2);
  *(v8 + 52) = 0;
  v8[9] = v10;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  *(v8 + 28) = a3 & 0xF000 | (16 * a4);
  v19 = 0;
  v11 = _fd_acquire_fd(v8, &v19);
  if (v11 == -1)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = v8[9];
      v17 = *(v8 + 11);
      v18 = *__error();
      *buf = 136316162;
      v21 = "fd_create_sibling_protected";
      v22 = 1024;
      v23 = 393;
      v24 = 2080;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      v28 = 1024;
      v29 = v18;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Open failed on %s child of %d with error %d", buf, 0x28u);
    }

    *__error() = v12;
    fd_release(v8);
    goto LABEL_7;
  }

  *(v8 + 12) &= 0xFFFFF9FF;
  _fd_release_fd(v8, v11, 0, v19);
LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

_BYTE *fd_realpath(_DWORD *a1, _BYTE *a2)
{
  v7 = 0;
  v4 = _fd_acquire_fd(a1, &v7);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  if (fcntl(v4, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  _fd_release_fd(a1, v5, 0, v7);
  return a2;
}

uint64_t fd_mmap(uint64_t a1)
{
  if (!a1)
  {
    *__error() = 22;
    return -1;
  }

  v8 = 0;
  if (*(a1 + 44) == -1)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = _fd_acquire_fd(a1, &v8);
  }

  if (v2 == -1)
  {
    return -1;
  }

  do
  {
    v3 = __mmap();
    if (v3 != -1)
    {
      break;
    }

    v4 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v5 = *(a1 + 40);
    v6 = __error();
  }

  while (((*(v4 + 16))(v4, v5, *v6, 10) & 1) != 0);
  if (*(a1 + 44) != -1)
  {
    _fd_release_fd(a1, v2, (*(a1 + 56) & 2) == 0, v8);
  }

  return v3;
}

uint64_t _SILogForLogForCategory(int a1)
{
  if (_SILogForLogForCategory_onceToken != -1)
  {
    dispatch_once(&_SILogForLogForCategory_onceToken, &__block_literal_global_120);
  }

  return gSILogArray[a1];
}

uint64_t _SIBudgetCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 160);
  if (v7)
  {
    return (*(v7 + 16))();
  }

  else
  {
    return (*(a7 + 16))(a7);
  }
}

xpc_object_t _si_mobile_journal_create_message(uint64_t a1, unsigned int a2)
{
  add = atomic_fetch_add(&g_si_msg_id, 1uLL);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "msg_id", add);
  xpc_dictionary_set_uint64(v5, "je", a2);
  xpc_dictionary_set_string(v5, "command", "j");
  xpc_dictionary_set_string(v5, "j_name", *(a1 + 48));
  xpc_dictionary_set_uint64(v5, "j_num", *(a1 + 40));
  xpc_dictionary_set_string(v5, "j_cookie", *(a1 + 112));
  xpc_dictionary_set_uint64(v5, "j_dev", *(a1 + 56));
  xpc_dictionary_set_uint64(v5, "j_ino", *(a1 + 64));
  xpc_dictionary_set_uint64(v5, "toc_ino", *(a1 + 72));
  xpc_dictionary_set_uint64(v5, "i_pc_pr", *(a1 + 104));
  xpc_dictionary_set_BOOL(v5, "j_managed", *(a1 + 120));
  return v5;
}

void __si_retain_service_connection_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = gSIMachServicesNames_block_invoke_s_service_connections[v2];
  if (v3)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 40);
  v5 = g_service_queues[v2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __si_retain_service_connection_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_4305;
  v9[4] = v4;
  v10 = v2;
  mach_service = xpc_connection_create_mach_service(v4, v5, 0);
  if (mach_service)
  {
    v3 = mach_service;
    *&handler = MEMORY[0x1E69E9820];
    *(&handler + 1) = 0x40000000;
    v12 = __si_xpc_setup_connection_block_invoke;
    v13 = &unk_1E81938F8;
    v14 = v9;
    v15 = v5;
    xpc_connection_set_event_handler(mach_service, &handler);
    xpc_connection_activate(v3);
    gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 48)] = v3;
LABEL_4:
    *(*(*(a1 + 32) + 8) + 24) = xpc_retain(v3);
    goto LABEL_5;
  }

  gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 48)] = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    LODWORD(handler) = 136315138;
    *(&handler + 4) = v8;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### could not get client connection for %s", &handler, 0xCu);
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t (*si_backtrace_routine_resolve(uint64_t a1, const __CFString *cf1, uint64_t (*a3)(), void *a4, void *a5))()
{
  if (!cf1)
  {
    goto LABEL_23;
  }

  if (!CFEqual(cf1, @"com.apple.mobilemail") && !CFEqual(cf1, @"com.apple.MobileSMS") && !CFEqual(cf1, @"com.apple.mobilecal") && !CFEqual(cf1, @"com.apple.FileProvider.LocalStorage") && !CFEqual(cf1, @"com.apple.CloudDocs.iCloudDriveFileProvider") && !CFEqual(cf1, @"com.apple.CloudDocs.iCloudDriveFileProviderManaged") && !CFEqual(cf1, @"com.apple.CloudDocs.MobileDocumentsFileProvider") && !CFEqual(cf1, @"com.apple.mobilenotes") && !CFEqual(cf1, @"com.apple.mobileslideshow") && !CFEqual(cf1, @"com.apple.photoanalysisd") && !CFEqual(cf1, @"com.apple.duetexpertd") && !CFEqual(cf1, @"com.apple.MobileAddressBook"))
  {
    CFEqual(cf1, @"com.apple.synapse.contentlinkingd");
  }

  if (CFEqual(cf1, @"com.apple.pommesctl"))
  {
    v10 = off_1EEADE960;
    goto LABEL_21;
  }

  if (CFEqual(cf1, @"com.apple.suggestd"))
  {
    v10 = off_1EEADE980;
    goto LABEL_21;
  }

  if (CFStringHasPrefix(cf1, @"com.apple.omniSearch."))
  {
    v10 = off_1EEADE988;
    goto LABEL_21;
  }

  if (!CFStringHasPrefix(cf1, @"com.apple.corespotlight.fixup"))
  {
    HasPrefix = CFStringHasPrefix(cf1, @"com.apple.");
    v10 = off_1EEADEA78;
    v20 = off_1EEADEA80;
    v21 = HasPrefix == 0;
LABEL_66:
    if (v21)
    {
      v10 = v20;
    }

    goto LABEL_21;
  }

  if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMe", 0))
  {
    if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeNot", 0))
    {
      if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeTextContentMatch", 0))
      {
        if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeTextContentMatchNot", 0))
        {
          if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingSpan", 0))
          {
            if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingSpanNot", 0))
            {
              if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingToken", 0))
              {
                if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingTokenNot", 0))
                {
                  if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingOCR", 0))
                  {
                    if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingOCRNot", 0))
                    {
                      if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingOCRTextContentMatch", 0))
                      {
                        if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingOCRTextContentMatchNot", 0))
                        {
                          if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingPreExtraction", 0))
                          {
                            if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingPreExtractionNot", 0))
                            {
                              if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRanking", 0))
                              {
                                if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingNot", 0))
                                {
                                  if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingTextContentMatch", 0))
                                  {
                                    if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingTextContentMatchNot", 0))
                                    {
                                      if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingTextContentMatchNot2", 0))
                                      {
                                        if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsFromMe", 0))
                                        {
                                          if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsFromMeNot", 0))
                                          {
                                            if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsFromMeRanking", 0))
                                            {
                                              if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsFromMeRankingNot", 0))
                                              {
                                                if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsToMe", 0))
                                                {
                                                  if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsToMeNot", 0))
                                                  {
                                                    if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsToMeRanking", 0))
                                                    {
                                                      v19 = CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsToMeRankingNot", 0);
                                                      v10 = off_1EEADE990;
                                                      v20 = off_1EEADEA70;
                                                      v21 = v19 == kCFCompareEqualTo;
                                                      goto LABEL_66;
                                                    }

                                                    v10 = off_1EEADEA68;
                                                  }

                                                  else
                                                  {
                                                    v10 = off_1EEADEA60;
                                                  }
                                                }

                                                else
                                                {
                                                  v10 = off_1EEADEA58;
                                                }
                                              }

                                              else
                                              {
                                                v10 = off_1EEADEA50;
                                              }
                                            }

                                            else
                                            {
                                              v10 = off_1EEADEA48;
                                            }
                                          }

                                          else
                                          {
                                            v10 = off_1EEADEA40;
                                          }
                                        }

                                        else
                                        {
                                          v10 = off_1EEADEA38;
                                        }
                                      }

                                      else
                                      {
                                        v10 = off_1EEADEA30;
                                      }
                                    }

                                    else
                                    {
                                      v10 = off_1EEADEA28;
                                    }
                                  }

                                  else
                                  {
                                    v10 = off_1EEADEA20;
                                  }
                                }

                                else
                                {
                                  v10 = off_1EEADEA18;
                                }
                              }

                              else
                              {
                                v10 = off_1EEADEA10;
                              }
                            }

                            else
                            {
                              v10 = off_1EEADEA08;
                            }
                          }

                          else
                          {
                            v10 = off_1EEADEA00;
                          }
                        }

                        else
                        {
                          v10 = off_1EEADE9F8;
                        }
                      }

                      else
                      {
                        v10 = off_1EEADE9F0;
                      }
                    }

                    else
                    {
                      v10 = off_1EEADE9E8;
                    }
                  }

                  else
                  {
                    v10 = off_1EEADE9E0;
                  }
                }

                else
                {
                  v10 = off_1EEADE9D8;
                }
              }

              else
              {
                v10 = off_1EEADE9D0;
              }
            }

            else
            {
              v10 = off_1EEADE9C8;
            }
          }

          else
          {
            v10 = off_1EEADE9C0;
          }
        }

        else
        {
          v10 = off_1EEADE9B8;
        }
      }

      else
      {
        v10 = off_1EEADE9B0;
      }
    }

    else
    {
      v10 = off_1EEADE9A8;
    }
  }

  else
  {
    v10 = off_1EEADE9A0;
  }

LABEL_21:
  v11 = *v10;
  if (*v10)
  {
    v12 = malloc_type_malloc(0x18uLL, 0x1080040A502281CuLL);
    *v12 = a3;
    v12[1] = a4;
    *(v12 + 16) = 1;
    a4 = v12;
    a3 = v11;
  }

LABEL_23:
  if (!a1)
  {
    goto LABEL_36;
  }

  v13 = *(a1 + 60);
  if (v13 == 1)
  {
    v14 = off_1EEADEA88;
    goto LABEL_28;
  }

  if (v13 == 3)
  {
    v14 = off_1EEADEA90;
    goto LABEL_28;
  }

  if (v13)
  {
    v17 = 2;
  }

  else
  {
    v17 = (v13 >> 1) - 1;
  }

  if (v17 <= 6 && ((0x47u >> v17) & 1) != 0)
  {
    v14 = off_1E8192900[v17];
LABEL_28:
    v15 = *v14;
    if (*v14)
    {
      v16 = malloc_type_malloc(0x18uLL, 0x1080040A502281CuLL);
      *v16 = a3;
      v16[1] = a4;
      *(v16 + 16) = 1;
      a4 = v16;
      a3 = v15;
    }
  }

LABEL_36:
  *a5 = a4;
  return a3;
}

void setattr_runLoop(void *a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = a1[4];
  v11 = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __si_scheduler_set_thread_block_invoke;
  v14 = &__block_descriptor_tmp_29_1536;
  v15 = a1;
  v16 = v6;
  dispatch_sync(v7, &v11);
  a2(a3, 0);
  v8 = a1[4];
  v11 = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __si_scheduler_set_thread_block_invoke;
  v14 = &__block_descriptor_tmp_29_1536;
  v15 = a1;
  v16 = 0;
  dispatch_sync(v8, &v11);
  do
  {
    v9 = a1;
    a1 = *a1;
  }

  while (a1);
  if (v9[33] <= 1)
  {
    v10 = 240;
    do
    {
      slab_cleanup(v10);
      v10 = (v10 + 1);
    }

    while (v10 != 255);
  }
}

uint64_t si_clientstatesandmeta_update(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a2;
  if (*(a1 + 2072) != 1)
  {
    return 1;
  }

  v4 = *(a1 + 60);
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4 >> 1;
  }

  v6 = 1;
  v7 = v5 > 7;
  v8 = (1 << v5) & 0x86;
  if (!v7 && v8 != 0)
  {
    pthread_rwlock_wrlock((a1 + 80));
    Value = CFDictionaryGetValue(*(a1 + 72), @"journalSerialNumber");
    if (Value)
    {
      v26 = 0;
      CFNumberGetValue(Value, kCFNumberSInt64Type, &v26);
      if (v26 >= a2)
      {
        valuePtr = v26;
      }
    }

    v13 = *MEMORY[0x1E695E480];
    v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(*(a1 + 72), @"journalSerialNumber", v14);
      CFRelease(v15);
    }

    v16 = CFNumberCreate(v13, kCFNumberIntType, (a1 + 2344));
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(*(a1 + 72), @"syncCount", v16);
      CFRelease(v17);
    }

    v18 = CFNumberCreate(v13, kCFNumberIntType, (a1 + 2348));
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(*(a1 + 72), @"deferSyncCount", v18);
      CFRelease(v19);
    }

    v20 = 2320;
    if (a3)
    {
      v20 = 2328;
    }

    v21 = *(a1 + v20);
    if (v21)
    {
      v22 = fd_name_ptr(v21);
      if (v22)
      {
        v23 = CFStringCreateWithCString(v13, v22, 0x8000100u);
        if (v23)
        {
          v24 = v23;
          CFDictionarySetValue(*(a1 + 72), @"journalName", v23);
          CFRelease(v24);
        }
      }
    }

    v6 = SIPersistClientStateAndMeta(a1, 0);
    pthread_rwlock_unlock((a1 + 80));
  }

  return v6;
}

uint64_t mobile_journal_plist(_DWORD *a1, unint64_t a2, int a3, uint64_t a4, off_t *a5, void *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = fd_lseek(a1, 0, 2);
  if (v11 == -1)
  {
    goto LABEL_8;
  }

  v12 = v11;
  if (a5)
  {
    *a5 = v11;
  }

  Length = _MDPlistContainerGetLength();
  v14 = Length;
  if (!Length)
  {
LABEL_8:
    v17 = 22;
  }

  else
  {
    v15 = -264306963;
    if (a2)
    {
      if (a2 >= 0x80)
      {
        if (a2 >= 0x4000)
        {
          if (a2 >= 0x200000)
          {
            if (a2 >> 28)
            {
              if (a2 >> 35)
              {
                if (a2 >> 42)
                {
                  if (a2 >> 49)
                  {
                    if (HIBYTE(a2))
                    {
                      v16 = 9;
                    }

                    else
                    {
                      v16 = 8;
                    }
                  }

                  else
                  {
                    v16 = 7;
                  }
                }

                else
                {
                  v16 = 6;
                }
              }

              else
              {
                v16 = 5;
              }
            }

            else
            {
              v16 = 4;
            }
          }

          else
          {
            v16 = 3;
          }
        }

        else
        {
          v16 = 2;
        }
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      v15 = -264372499;
    }

    v26[2] = a3;
    v18 = v16 + Length;
    v26[0] = v15;
    v26[1] = v16 + Length;
    if (fd_write(a1, v26, 0xCuLL) != -1)
    {
      if (!a2)
      {
        goto LABEL_45;
      }

      *buf = 0u;
      v28 = 0u;
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          if (a2 >> 21)
          {
            if (a2 >> 28)
            {
              if (a2 >> 35)
              {
                if (a2 >> 42)
                {
                  if (a2 >> 49)
                  {
                    if (HIBYTE(a2))
                    {
                      buf[0] = -1;
                      *&buf[1] = a2;
                      v19 = 9;
                    }

                    else
                    {
                      buf[0] = -2;
                      buf[1] = BYTE6(a2);
                      buf[2] = BYTE5(a2);
                      buf[3] = BYTE4(a2);
                      buf[4] = BYTE3(a2);
                      buf[5] = BYTE2(a2);
                      buf[6] = BYTE1(a2);
                      v19 = 8;
                      buf[7] = a2;
                    }
                  }

                  else
                  {
                    buf[0] = BYTE6(a2) | 0xFC;
                    buf[1] = BYTE5(a2);
                    buf[2] = BYTE4(a2);
                    buf[3] = BYTE3(a2);
                    buf[4] = BYTE2(a2);
                    buf[5] = BYTE1(a2);
                    v19 = 7;
                    buf[6] = a2;
                  }
                }

                else
                {
                  buf[0] = BYTE5(a2) | 0xF8;
                  buf[1] = BYTE4(a2);
                  buf[2] = BYTE3(a2);
                  buf[3] = BYTE2(a2);
                  buf[4] = BYTE1(a2);
                  buf[5] = a2;
                  v19 = 6;
                }
              }

              else
              {
                buf[0] = BYTE4(a2) | 0xF0;
                buf[1] = BYTE3(a2);
                buf[2] = BYTE2(a2);
                buf[3] = BYTE1(a2);
                buf[4] = a2;
                v19 = 5;
              }
            }

            else
            {
              buf[0] = BYTE3(a2) | 0xE0;
              buf[1] = BYTE2(a2);
              buf[2] = BYTE1(a2);
              buf[3] = a2;
              v19 = 4;
            }
          }

          else
          {
            buf[0] = BYTE2(a2) | 0xC0;
            buf[1] = BYTE1(a2);
            buf[2] = a2;
            v19 = 3;
          }
        }

        else
        {
          buf[0] = BYTE1(a2) | 0x80;
          buf[1] = a2;
          v19 = 2;
        }
      }

      else
      {
        buf[0] = a2;
        v19 = 1;
      }

      if (fd_write(a1, buf, v19) != -1)
      {
LABEL_45:
        Bytes = _MDPlistContainerGetBytes();
        if (fd_write(a1, Bytes, v14) != -1)
        {
          result = 0;
          if (a6)
          {
            *a6 = v18 + 12;
          }

          goto LABEL_52;
        }
      }
    }

    v17 = *__error();
    fd_truncate(a1, v12);
  }

  v22 = *__error();
  v23 = _SILogForLogForCategory(4);
  v24 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v23, v24))
  {
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&dword_1C278D000, v23, v24, "Error writing to log file: %d", buf, 8u);
  }

  *__error() = v22;
  result = 0xFFFFFFFFLL;
LABEL_52:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

off_t fd_lseek(_DWORD *a1, off_t a2, int a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v6 = _fd_acquire_fd(a1, &v18);
  if (v6 == -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v7 = lseek(v6, a2, a3);
    if (v7 != -1 || !g_prot_error_callback)
    {
      break;
    }

    v8 = *__error();
    v9 = g_prot_error_callback;
    v10 = a1[10];
    v11 = __error();
    if (((*(v9 + 16))(v9, v10, *v11, 9) & 1) == 0)
    {
      *__error() = v8;
      _fd_release_fd(a1, v6, 0, v18);
      goto LABEL_7;
    }
  }

  _fd_release_fd(a1, v6, 0, v18);
  if (v7 == -1)
  {
LABEL_7:
    bzero(v33, 0x400uLL);
    v12 = *__error();
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = fd_realpath(a1, v33);
      if (!v17)
      {
        v17 = fd_name(a1, v33, 0x400uLL);
        if (!v17)
        {
          v17 = "";
        }
      }

      *buf = 136316674;
      v20 = "fd_lseek";
      v21 = 1024;
      v22 = 631;
      v23 = 1024;
      v24 = v6;
      v25 = 2080;
      v26 = v17;
      v27 = 2048;
      v28 = a2;
      v29 = 1024;
      v30 = a3;
      v31 = 1024;
      v32 = v12;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: lseek(%d %s, o:%lx, w:%d) err:%d", buf, 0x38u);
    }

    *__error() = v13;
    *__error() = v12;
    v7 = -1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

void si_enqueue_barrier_with_qos(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
      if (a2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
      if (a2)
      {
LABEL_5:
        v7 = *(a1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[5] = a1;
        block[6] = a3;
        block[2] = __si_enqueue_barrier_with_qos_block_invoke;
        block[3] = &__block_descriptor_tmp_2;
        block[4] = v6;
        v9 = a2;
        block[7] = a4;
        dispatch_sync(v7, block);
        return;
      }
    }

    a2 = *(a1 + 24);
    goto LABEL_5;
  }

  a3(a4, 1);
}

void si_routine_priority(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_firstParty(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void setCSAttributes1(unsigned __int8 *a1, int a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v57 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 7))
  {
    v6 = dword_1EBF46AD8 < 5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v43 = *__error();
    v44 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v46 = CFAbsoluteTimeGetCurrent();
      v47 = " canceled";
      v48 = v46 - *(a1 + 8);
      if (!a2)
      {
        v47 = "";
      }

      *buf = 134218242;
      *&buf[4] = v48;
      *&buf[12] = 2080;
      *&buf[14] = v47;
      _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "Set attributes waited for %f seconds%s", buf, 0x16u);
    }

    *__error() = v43;
  }

  v7 = *a1;
  v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (!a2)
  {
    v9 = v8;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
    v55 = HIDWORD(v11);
    v56 = v11;
    v53 = v13;
    v54 = v12;
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    *(v14 + 216) = 0;
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    v17 = v14;
    if (v16)
    {
      v16(*(v14 + 288));
    }

    if (_setjmp(v17))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      v17[78] = v15;
      CIOnThreadCleanUpReset(v53);
      dropThreadId(v56, 1, add_explicit + 1);
      CICleanUpReset(v56, v54);
LABEL_36:
      bumpWorkTime(v7, Current);
      goto LABEL_37;
    }

    base = si_mobile_journal_get_base(*(a1 + 1), *(a1 + 2), *(a1 + 3));
    if (!base || *(a1 + 3) < 0xCuLL || *base != -264306963 && *base != -264372499)
    {
LABEL_33:
      v36 = threadData[9 * v56 + 1] + 320 * v55;
      *(v36 + 312) = v15;
      v37 = *(v36 + 232);
      if (v37)
      {
        v37(*(v36 + 288));
      }

      dropThreadId(v56, 0, add_explicit + 1);
      goto LABEL_36;
    }

    v19 = *(base + 1);
    v49 = *(a1 + 20);
    v50 = *(base + 2);
    v20 = base + 12;
    if (a1[32] == 1)
    {
      *buf = 0;
      VInt64 = v2_readVInt64(v20, buf);
      v22 = v19 - *buf;
      v23 = VInt64;
    }

    else
    {
      v23 = 0;
      v22 = v19;
    }

    v24 = v22;
    _MDPlistGetRootPlistObjectFromBytes();
    memset(buf, 0, 24);
    if (_MDPlistArrayGetCount() != 2)
    {
      v32 = 0;
LABEL_30:
      if (v23 && (v32 & 1) == 0)
      {
        *(v7 + 2136) = v23;
      }

      goto LABEL_33;
    }

    v51 = v24;
    v52 = v23;
    memset(buf, 0, 24);
    _MDPlistArrayGetPlistObjectAtIndex();
    memset(buf, 0, 24);
    _MDPlistArrayGetPlistObjectAtIndex();
    v25 = *MEMORY[0x1E695E480];
    memset(buf, 0, 24);
    v26 = _MDPlistContainerCopyObject();
    if (v26 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v26)))
    {
      memset(buf, 0, 24);
      Count = _MDPlistArrayGetCount();
      v23 = v52;
      (*(*(v7 + 2360) + 120))(*(*(v7 + 2360) + 144), v26, a1[85], (*(a1 + 20) >> 4) & 1, Count, v51);
      v29 = SIGetAccumulatedSizeForGroup(v7, v26, 0);
      v30 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      logIndexingEventInCoreAnalyticsWithBundleId(v26, Count, v29, v30 - v9);
      v31 = v26;
    }

    else
    {
      v33 = v26;
      v34 = *__error();
      v35 = _SILogForLogForCategory(0);
      v23 = v52;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "setCSAttributes1";
        *&buf[12] = 1024;
        *&buf[14] = 32176;
        *&buf[18] = 2048;
        *&buf[20] = v52;
        v59 = 2112;
        v60 = v33;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: Invalid bundleID %ld %@", buf, 0x26u);
      }

      *__error() = v34;
      v31 = v33;
      if (!v33)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v31);
    LOBYTE(v31) = v57 != 0;
LABEL_29:
    v32 = v31;
    goto LABEL_30;
  }

LABEL_37:
  v38 = *(a1 + 3);
  if (v38)
  {
    atomic_fetch_add_explicit(&gEnqueuedSize, -v38, memory_order_relaxed);
  }

  v39 = *(a1 + 5);
  if (v39)
  {
    v39(*(a1 + 6), v57);
  }

  v40 = *(a1 + 1);
  if (v40 && atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v40, 1);
  }

  v41 = *(a1 + 9);
  if (v41)
  {
    CFRelease(v41);
  }

  free(a1);
  v42 = *MEMORY[0x1E69E9840];
}

uint64_t *si_mobile_journal_get_base(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    memset(v23, 0, 255);
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    v8 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = fd_name(v5[1], v23, 0xFFuLL);
      v21 = 136315138;
      v22 = v9;
      _os_log_impl(&dword_1C278D000, v7, v8, "Get_base for journal %s", &v21, 0xCu);
    }

    *__error() = v6;
    fd_assert_not_unlinked(v5[1]);
    v10 = v5[2];
    if (v10 == -1 || (v11 = v5[4], v12 = a2 - v11, a2 < v11) || a3 + a2 > (v5[3] + v11))
    {
      v13 = *MEMORY[0x1E69E9AC8];
      v14 = *MEMORY[0x1E69E9AC8] + a3;
      if (v14 <= 0x100000)
      {
        v14 = 0x100000;
      }

      v15 = v13 + v14;
      v16 = -v13;
      v17 = v16 & a2;
      v18 = (v15 - 1) & v16;
      v19 = v5[3];
      if (v19)
      {
        if (v10 != -1)
        {
          munmap(v10, v19);
        }

        v5[2] = -1;
        v5[3] = v18;
        v5[4] = 0;
        v10 = fd_mmap(v5[1]);
      }

      else
      {
        v10 = fd_guarded_mmap(v5[1]);
      }

      v5[2] = v10;
      if (v10 == -1)
      {
        result = 0;
        goto LABEL_18;
      }

      v5[3] = v18;
      v5[4] = v17;
      v12 = a2 - v17;
    }

    result = &v10[v12];
  }

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void si_enqueue_barrier_inner_with_qos(uint64_t a1, uint64_t *a2, qos_class_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 727, "queue", v19);
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

  if (a1 && (v8 = *a2) != 0 && !*(v8 + 104) && *(v8 + 64) != 1)
  {
    atomic_fetch_add_explicit((a1 + 132), 1u, memory_order_relaxed);
    v10 = a2[2];
    *(a2 + 7) = vaddq_s64(*(a2 + 7), vdupq_n_s64(1uLL));
    v11 = malloc_type_malloc(0x48uLL, 0x10A0040047F2C8DuLL);
    v11[4] = a5;
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = a5 ^ a4;
    *v11 = a1;
    v11[1] = v8;
    v11[2] = a2;
    v11[3] = a4;
    v12 = *(a1 + 136) == 1 && (a2[7] & 0xF) == 0;
    *(v11 + 64) = v12;
    if (a3 <= QOS_CLASS_USER_INITIATED)
    {
      v13 = 25;
    }

    else
    {
      v13 = a3;
    }

    if (gTurboMode == 1)
    {
      a3 = v13;
    }

    if (*(v8 + 192) && *(v8 + 216) < a3)
    {
      pthread_mutex_lock(*(v8 + 8));
      v14 = *(v8 + 192);
      if (v14)
      {
        if (*(v8 + 216) < a3)
        {
          v15 = *(v8 + 208);
          *(v8 + 208) = pthread_override_qos_class_start_np(v14, a3, 0);
          *(v8 + 216) = a3;
          if (v15)
          {
            pthread_override_qos_class_end_np(v15);
          }
        }
      }

      pthread_mutex_unlock(*(v8 + 8));
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __enqueue_barrier_with_qos_block_invoke;
    block[3] = &__block_descriptor_tmp_48;
    block[4] = v11;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, block);
    dispatch_barrier_async(v10, v16);
    _Block_release(v16);
  }

  else
  {

    (a4)(a5, 1);
  }
}

void __work_fun_inner_block_invoke_53(void *a1)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v3 = a1[5];
    v2 = a1[6];
    --v3[8];
    if (v2 == *v3)
    {
      dec_running(v2);
    }

    dec_running(a1[7]);
    v4 = a1[8];
    if (v4)
    {
      *(v4 + 24) = 0;
    }
  }
}

void dec_running(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 128));
  v2 = *(a1 + 112) - 1;
  *(a1 + 112) = v2;
  os_unfair_lock_unlock((a1 + 128));
  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 40) = 0;
      v3[2](v3);

      _Block_release(v3);
    }
  }
}

uint64_t dropThreadId(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = &threadData[9 * result];
  v5 = *(v4 + 4);
  if (!v5)
  {
    v22 = __si_assert_copy_extra_332();
    v16 = v22;
    v23 = "";
    if (v22)
    {
      v23 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1470, "td->itemCount", v23);
    goto LABEL_12;
  }

  if (!a2)
  {
    v19 = v5 - 1;
    *(v4 + 4) = v19;
    --*(&threadList + 4 * result + 3);
    if (*(v4[1] + 320 * v19 + 308) == a3)
    {
      return result;
    }

    v20 = __si_assert_copy_extra_332();
    v16 = v20;
    v21 = "";
    if (v20)
    {
      v21 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1492, "seqNum == td->items[td->itemCount].seqNum", v21);
LABEL_12:
    free(v16);
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

  v7 = v5 & (v5 >> 31);
  v8 = v5 - v7;
  v9 = 320 * v5;
  v10 = v7 - v5;
  v11 = 1;
  while (1)
  {
    if (v10 + v11 == 1)
    {
      goto LABEL_19;
    }

    v12 = v4[1] + v9;
    v13 = *(v12 - 72);
    if (v13)
    {
      result = v13(*(v12 - 32));
      *(v12 - 72) = 0;
    }

    if ((*(v12 - 108) & 0x80000001) != 0)
    {
      break;
    }

    v14 = *(v4[1] + v9 - 12);
    v9 -= 320;
    ++v11;
    if (v14 < a3)
    {
      v15 = __si_assert_copy_extra_332();
      v16 = v15;
      v17 = "";
      if (v15)
      {
        v17 = v15;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1485, "seqNum <= td->items[j].seqNum", v17);
      goto LABEL_12;
    }
  }

  v8 = v11;
LABEL_19:
  *(v4 + 4) -= v8;
  *(&threadList + 4 * v3 + 3) -= v8;
  return result;
}

void si_scheduler_trigger_tokens(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *(v1 + 16);
      si_enqueue_barrier(*(v1 + 24), *(v1 + 32), *(v1 + 40));
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      release_token(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t db2_get_obj_callback(uint64_t a1, unint64_t a2, void **a3, int a4, void (*a5)(void *, uint64_t), uint64_t a6, _DWORD *a7)
{
  v166 = *MEMORY[0x1E69E9840];
  v162 = 0;
  if ((a4 & 1) == 0)
  {
    v161 = a5;
    goto LABEL_3;
  }

  if (db_read_lock(a1 + 584))
  {
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13296);
  }

  *buf = 0;
  *&buf[8] = 0;
  v15 = *(a1 + 992);
  v16 = v15[1];
  if (!*&v16)
  {
    goto LABEL_21;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = a2;
    if (*&v16 <= a2)
    {
      v18 = a2 % *&v16;
    }
  }

  else
  {
    v18 = (*&v16 - 1) & a2;
  }

  v19 = *(*v15 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_21:
    v22 = *(a1 + 856);
    v23 = *(v22 + 8);
    if (v23)
    {
      v24 = *(v22 + 16);
      if (v24 >= v23 || (v25 = v22 + 16 * v24, v27 = *(v25 + 20), v26 = v25 + 20, v27 != a2) || (v28 = *(v26 + 12), v28 >> 28))
      {
        v29 = v23;
        if (v23 < 1)
        {
          v31 = 0;
          v32 = 0;
        }

        else
        {
          v30 = 0;
          while (1)
          {
            while (1)
            {
              v32 = (v23 + v30) >> 1;
              v33 = v22 + 20 + 16 * v32;
              if (!(*(v33 + 12) >> 28))
              {
                v34 = *v33;
                if (v34 <= a2)
                {
                  break;
                }
              }

              v31 = 0;
              v23 = (v23 + v30) >> 1;
              if (v30 >= v32)
              {
                goto LABEL_39;
              }
            }

            if (v34 == a2)
            {
              break;
            }

            v30 = v32 + 1;
            v31 = 1;
            if ((v32 + 1) >= v23)
            {
              goto LABEL_39;
            }
          }

          v31 = 0;
        }

LABEL_39:
        if (v29 - 1 > v32)
        {
          v37 = v31;
        }

        else
        {
          v37 = 0;
        }

        v38 = v32 + v37;
        v39 = v22 + 16 * v38;
        *(v22 + 16) = v38;
        v26 = v39 + 20;
        v28 = *(v39 + 32);
      }

      if (!page_find_oid_with_flags(a1, *(v26 + 8), v28 & 0xFFFFFFF, a2, 0, &v162, 1, buf))
      {
        goto LABEL_216;
      }

      v40 = *(a1 + 856);
      v41 = *(v40 + 8);
      if (v41)
      {
        v42 = *(v40 + 16);
        if (v42 < v41)
        {
          v43 = v40 + 16 * v42;
          v45 = *(v43 + 20);
          v44 = v43 + 20;
          if (v45 == a2)
          {
            v46 = *(v44 + 12);
            if (v46 >> 28 == 1)
            {
              goto LABEL_75;
            }
          }

          if (*v44 == a2)
          {
            v46 = *(v44 + 12);
            if (v46 >> 28 == 1)
            {
              goto LABEL_75;
            }
          }
        }

        v47 = v41;
        if (v41 < 1)
        {
          v56 = 0;
          v51 = 0;
          goto LABEL_72;
        }

        v48 = 0;
        while (1)
        {
          v51 = (v41 + v48) >> 1;
          v52 = v40 + 20 + 16 * v51;
          v53 = *(v52 + 12) >> 28;
          if (v53 == 1)
          {
            v49 = a2 - *v52;
            v50 = (v41 + v48) >> 1;
            if (v49 < 0)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v49 = 1 - v53;
            v50 = (v41 + v48) >> 1;
            if (v49 < 0)
            {
              goto LABEL_55;
            }
          }

          if (!v49)
          {
            v56 = 0;
LABEL_72:
            if (v47 - 1 <= v51)
            {
              v56 = 0;
            }

            v59 = v51 + v56;
            v60 = v40 + 16 * v59;
            *(v40 + 16) = v59;
            v44 = v60 + 20;
            v46 = *(v60 + 32);
LABEL_75:
            if (page_find_oid_with_flags(a1, *(v44 + 8), v46 & 0xFFFFFFF, a2, 1u, &v162, 1, buf))
            {
              v161 = a5;
              v61 = pthread_mutex_lock((a1 + 584));
              v62 = *(a1 + 780) - 1;
              *(a1 + 780) = v62;
              if (!v62)
              {
                db_rwlock_wakeup(a1 + 584, 0, 0);
              }

              pthread_mutex_unlock((a1 + 584));
              if (v61)
              {
                sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13337);
              }

              goto LABEL_79;
            }

LABEL_216:
            if (a3)
            {
              v101 = _inflateDBO(a1, v162, a3, 0, a4, 0);
              if (*&buf[12])
              {
                page_release(a1, *buf, *&buf[12], *&buf[8], 0);
              }

              if (a5 && !v101)
              {
                a5(*a3, a6);
              }
            }

            else
            {
              v101 = 0;
            }

            v149 = pthread_mutex_lock((a1 + 584));
            v150 = *(a1 + 780) - 1;
            *(a1 + 780) = v150;
            if (!v150)
            {
              db_rwlock_wakeup(a1 + 584, 0, 0);
            }

            pthread_mutex_unlock((a1 + 584));
            if (v149)
            {
              sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13354);
            }

            goto LABEL_226;
          }

          v48 = v51 + 1;
          v50 = v41;
LABEL_55:
          v41 = v50;
          if (v48 >= v50)
          {
            v56 = v49 > 0;
            goto LABEL_72;
          }
        }
      }

      v161 = a5;
      v54 = pthread_mutex_lock((a1 + 584));
      v55 = *(a1 + 780) - 1;
      *(a1 + 780) = v55;
      if (!v55)
      {
        db_rwlock_wakeup(a1 + 584, 0, 0);
      }

      pthread_mutex_unlock((a1 + 584));
      if (v54)
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13329);
      }
    }

    else
    {
      v161 = a5;
      v35 = pthread_mutex_lock((a1 + 584));
      v36 = *(a1 + 780) - 1;
      *(a1 + 780) = v36;
      if (!v36)
      {
        db_rwlock_wakeup(a1 + 584, 0, 0);
      }

      pthread_mutex_unlock((a1 + 584));
      if (v35)
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13310);
      }
    }

LABEL_79:
    if (!a7)
    {
      goto LABEL_135;
    }

    v14 = 1;
    goto LABEL_81;
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == a2)
    {
      break;
    }

    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v16)
      {
        v21 %= *&v16;
      }
    }

    else
    {
      v21 &= *&v16 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_21;
    }

LABEL_14:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  if (v20[2] != a2)
  {
    goto LABEL_14;
  }

  if (*(v20 + 6) != 3)
  {
    v162 = v20[4];
    goto LABEL_216;
  }

  v161 = a5;
  v57 = pthread_mutex_lock((a1 + 584));
  v58 = *(a1 + 780) - 1;
  *(a1 + 780) = v58;
  if (!v58)
  {
    db_rwlock_wakeup(a1 + 584, 0, 0);
  }

  pthread_mutex_unlock((a1 + 584));
  if (v57)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13301);
  }

  if (!a7)
  {
LABEL_135:
    v101 = 2;
    goto LABEL_229;
  }

LABEL_3:
  v14 = 0;
LABEL_81:
  v160 = a6;
  v63 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v63 = __THREAD_SLOT_KEY;
  }

  v64 = pthread_getspecific(v63);
  HIDWORD(v66) = qos_class_self() - 9;
  LODWORD(v66) = HIDWORD(v66);
  v65 = v66 >> 2;
  if (v65 > 6)
  {
    v67 = 0;
  }

  else
  {
    v67 = dword_1C2BFF8F0[v65];
  }

  v68 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_89:
    db_rwlock_wait(a1 + 584, v67, 2);
  }

  else
  {
    if (v67 <= 5)
    {
      v126 = v67 - 6;
      v127 = (a1 + 16 * v67 + 648);
      while (!*v127)
      {
        v127 += 2;
        if (__CFADD__(v126++, 1))
        {
          goto LABEL_173;
        }
      }

      goto LABEL_89;
    }

LABEL_173:
    *(a1 + 768) = pthread_self();
  }

  pthread_mutex_unlock((a1 + 584));
  if (v68)
  {
    v158 = *__error();
    v159 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_get_obj_callback";
      *&buf[12] = 1024;
      *&buf[14] = 13357;
      v164 = 1024;
      v165 = v68;
      _os_log_error_impl(&dword_1C278D000, v159, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v158;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13357);
  }

  v69 = v64 - 1;
  if (v64)
  {
    v70 = CIOnThreadCleanUpPush((v64 - 1), db_write_unlock, a1 + 584);
  }

  else
  {
    v70 = -1;
  }

  v71 = *(a1 + 992);
  v72 = v71[1];
  if (v72)
  {
    v73 = vcnt_s8(v72);
    v73.i16[0] = vaddlv_u8(v73);
    if (v73.u32[0] > 1uLL)
    {
      v74 = a2;
      if (*&v72 <= a2)
      {
        v74 = a2 % *&v72;
      }
    }

    else
    {
      v74 = (*&v72 - 1) & a2;
    }

    v75 = *(*v71 + 8 * v74);
    if (v75)
    {
      for (i = *v75; i; i = *i)
      {
        v77 = i[1];
        if (v77 == a2)
        {
          if (i[2] == a2)
          {
            if (*(i + 6) != 3)
            {
              v162 = i[4];
              goto LABEL_204;
            }

            if (!a7 || db2_store_obj_preamble(*(a1 + 804), a7, 0) || db2_store_obj_inner(a1, a7, 0))
            {
              v101 = 2;
            }

            else
            {
              v153 = malloc_type_malloc((a7[3] + 512), 0x1000040EED21634uLL);
              v154 = v153;
              if (v153)
              {
                memcpy(v153, a7, a7[3]);
                v154[2] = a7[3] + 512;
              }

              *a3 = v154;
              v101 = 3;
            }

            v129 = pthread_mutex_lock((a1 + 584));
            *(a1 + 788) = 0;
            v130 = *(a1 + 760);
            *(a1 + 760) = 0u;
            v131 = *(a1 + 780) != 0;
            *(a1 + 796) = 0;
            db_rwlock_wakeup(a1 + 584, v131, 0);
            pthread_mutex_unlock((a1 + 584));
            if (v130)
            {
              pthread_override_qos_class_end_np(v130);
            }

            if (v129)
            {
              sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13367);
            }

LABEL_201:
            if (v64)
            {
              CIOnThreadCleanUpClearItem((v64 - 1), v70);
              v137 = &threadData[9 * v69];
              v140 = *(v137 + 14);
              v138 = v137 + 7;
              v139 = v140;
              if (v70 + 1 == v140)
              {
                *v138 = v139 - 1;
              }
            }

            goto LABEL_229;
          }
        }

        else
        {
          if (v73.u32[0] > 1uLL)
          {
            if (v77 >= *&v72)
            {
              v77 %= *&v72;
            }
          }

          else
          {
            v77 &= *&v72 - 1;
          }

          if (v77 != v74)
          {
            break;
          }
        }
      }
    }
  }

  v78 = *(a1 + 856);
  v79 = *(v78 + 8);
  if (!v79)
  {
    if (a7 && !db2_store_obj_preamble(*(a1 + 804), a7, 0) && !db2_store_obj_inner(a1, a7, 0))
    {
      v92 = malloc_type_malloc((a7[3] + 512), 0x1000040EED21634uLL);
      v93 = v92;
      if (v92)
      {
        memcpy(v92, a7, a7[3]);
        v93[2] = a7[3] + 512;
      }

      *a3 = v93;
    }

    v94 = pthread_mutex_lock((a1 + 584));
    *(a1 + 788) = 0;
    v95 = *(a1 + 760);
    *(a1 + 760) = 0u;
    v96 = *(a1 + 780) != 0;
    *(a1 + 796) = 0;
    db_rwlock_wakeup(a1 + 584, v96, 0);
    pthread_mutex_unlock((a1 + 584));
    if (v95)
    {
      pthread_override_qos_class_end_np(v95);
    }

    if (v94)
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13380);
    }

    goto LABEL_132;
  }

  v80 = *(v78 + 16);
  if (v80 < v79)
  {
    v81 = v78 + 16 * v80;
    v83 = *(v81 + 20);
    v82 = v81 + 20;
    if (v83 == a2)
    {
      v84 = *(v82 + 12);
      if (v14 == v84 >> 28)
      {
        goto LABEL_143;
      }
    }
  }

  v85 = v79;
  if (v79 < 1)
  {
    v102 = 0;
    v87 = 0;
    goto LABEL_139;
  }

  v86 = 0;
  while (2)
  {
    v87 = (v79 + v86) >> 1;
    v88 = v78 + 20 + 16 * v87;
    v89 = v14 - (*(v88 + 12) >> 28);
    if (v89)
    {
      v90 = v89;
      v91 = (v79 + v86) >> 1;
      if (v90 < 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v90 = a2 - *v88;
      v91 = (v79 + v86) >> 1;
      if (v90 < 0)
      {
LABEL_116:
        v79 = v91;
        if (v86 >= v91)
        {
          v102 = v90 > 0;
          goto LABEL_139;
        }

        continue;
      }
    }

    break;
  }

  if (v90)
  {
    v86 = v87 + 1;
    v91 = v79;
    goto LABEL_116;
  }

  v102 = 0;
LABEL_139:
  v103 = v85 - 1 > v87 && v102;
  v104 = v87 + v103;
  v105 = v78 + 16 * v104;
  *(v78 + 16) = v104;
  v82 = v105 + 20;
  v84 = *(v105 + 32);
LABEL_143:
  oid_with_flags = page_find_oid_with_flags(a1, *(v82 + 8), v84 & 0xFFFFFFF, a2, v14, &v162, 0, 0);
  if (!oid_with_flags)
  {
    goto LABEL_204;
  }

  if (v14)
  {
    v101 = oid_with_flags;
    if (a7 && !db2_store_obj_preamble(*(a1 + 804), a7, 0) && !db2_store_obj_inner(a1, a7, 0))
    {
      v107 = malloc_type_malloc((a7[3] + 512), 0x1000040EED21634uLL);
      v108 = v107;
      if (v107)
      {
        memcpy(v107, a7, a7[3]);
        v108[2] = a7[3] + 512;
      }

      *a3 = v108;
      v101 = 3;
    }

    v109 = pthread_mutex_lock((a1 + 584));
    *(a1 + 788) = 0;
    v110 = *(a1 + 760);
    *(a1 + 760) = 0u;
    v111 = *(a1 + 780) != 0;
    *(a1 + 796) = 0;
    db_rwlock_wakeup(a1 + 584, v111, 0);
    pthread_mutex_unlock((a1 + 584));
    if (v110)
    {
      pthread_override_qos_class_end_np(v110);
    }

    if (v109)
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13396);
    }

    goto LABEL_201;
  }

  v112 = *(a1 + 856);
  v113 = *(v112 + 8);
  if (!v113)
  {
    if (a7)
    {
      db2_obj_insert_from_prototype(a1, a3, a7);
    }

    if (db_write_unlock(a1 + 584))
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13408);
    }

LABEL_132:
    if (v64)
    {
      CIOnThreadCleanUpClearItem((v64 - 1), v70);
      v97 = &threadData[9 * v69];
      v100 = *(v97 + 14);
      v98 = v97 + 7;
      v99 = v100;
      if (v70 + 1 == v100)
      {
        *v98 = v99 - 1;
      }
    }

    goto LABEL_135;
  }

  v114 = *(v112 + 16);
  if (v114 < v113)
  {
    v115 = v112 + 16 * v114;
    v117 = *(v115 + 20);
    v116 = v115 + 20;
    if (v117 == a2)
    {
      v118 = *(v116 + 12);
      if (v118 >> 28 == 1)
      {
        goto LABEL_195;
      }
    }
  }

  v119 = v113;
  if (v113 < 1)
  {
    v132 = 0;
    v121 = 0;
    goto LABEL_191;
  }

  v120 = 0;
  while (2)
  {
    v121 = (v113 + v120) >> 1;
    v122 = v112 + 20 + 16 * v121;
    v123 = *(v122 + 12) >> 28;
    if (v123 == 1)
    {
      v124 = a2 - *v122;
      v125 = (v113 + v120) >> 1;
      if (v124 < 0)
      {
LABEL_161:
        v113 = v125;
        if (v120 >= v125)
        {
          v132 = v124 > 0;
          goto LABEL_191;
        }

        continue;
      }
    }

    else
    {
      v124 = 1 - v123;
      v125 = (v113 + v120) >> 1;
      if (v124 < 0)
      {
        goto LABEL_161;
      }
    }

    break;
  }

  if (v124)
  {
    v120 = v121 + 1;
    v125 = v113;
    goto LABEL_161;
  }

  v132 = 0;
LABEL_191:
  v133 = v119 - 1 > v121 && v132;
  v134 = v121 + v133;
  v135 = v112 + 16 * v134;
  *(v112 + 16) = v134;
  v116 = v135 + 20;
  v118 = *(v135 + 32);
LABEL_195:
  v136 = page_find_oid_with_flags(a1, *(v116 + 8), v118 & 0xFFFFFFF, a2, 1u, &v162, 0, 0);
  if (v136)
  {
    v101 = v136;
    if (a7)
    {
      if (db2_obj_insert_from_prototype(a1, a3, a7))
      {
        v101 = v101;
      }

      else
      {
        v101 = 3;
      }
    }

    if (db_write_unlock(a1 + 584))
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13420);
    }

    goto LABEL_201;
  }

LABEL_204:
  if (a3)
  {
    v141 = _inflateDBO(a1, v162, a3, 0, a4, 0);
    v101 = v141;
    if (v161 && !v141)
    {
      v161(*a3, v160);
    }
  }

  else
  {
    v101 = 0;
  }

  v142 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v143 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v144 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v144, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v143)
  {
    pthread_override_qos_class_end_np(v143);
  }

  if (v142)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13432);
  }

  if (v64)
  {
    CIOnThreadCleanUpClearItem((v64 - 1), v70);
    v145 = &threadData[9 * v69];
    v148 = *(v145 + 14);
    v146 = v145 + 7;
    v147 = v148;
    if (v70 + 1 == v148)
    {
      *v146 = v147 - 1;
    }
  }

LABEL_226:
  if (a3 && *a3 && *(*a3 + 3) <= 0x2Fu)
  {
    v155 = __si_assert_copy_extra_3233(0, -1);
    v156 = v155;
    v157 = "";
    if (v155)
    {
      v157 = v155;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v157);
    free(v156);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_229:
  v151 = *MEMORY[0x1E69E9840];
  return v101;
}

void gatherAttributesToAdd(void *value, uint64_t a2, uint64_t a3)
{
  if (sSIAttributesToIncludeAndRolesCount == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 16);
    do
    {
      v8 = *(sIncludeAttributesAndRoles + v5);
      if (CFSetContainsValue(v8, value))
      {
        CFSetApplyFunction(v8, addIfNotPresent, v7);
        v9 = *(a3 + 24);
        v10 = 1 << *(sIncludeAttributesAndRoles + v5 + 8);
        if ((v9 & v10) == 0)
        {
          *(a3 + 24) = v9 | v10;
        }
      }

      v11 = sSIAttributesToIncludeAndRolesCount != 1 || v6++ >= 9;
      v5 += 16;
    }

    while (!v11);
  }
}

BOOL processOne(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, unsigned int a6, const __CFAllocator *a7, unsigned __int8 a8, _BYTE *a9, _BYTE *a10)
{
  memset(v21, 0, sizeof(v21));
  v17 = dispatch_group_create();
  v22 = *a5;
  v23 = *(a5 + 2);
  v18 = processOneCS(a1, a2, a3, a4, a6, &v22, v21, 0, 0, a7, a8, v17, a9, a10);
  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v17);
  return v18;
}

uint64_t db_read_lock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  HIDWORD(v4) = qos_class_self() - 9;
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 2;
  if (v3 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1C2BFF8F0[v3];
  }

  v6 = *(a1 + 184);
  if (v6 == pthread_self())
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert(v8, "sdb2_rwlock.c", 580, "lock->writer != pthread_self()", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  if (db_rwlock_reader_excluded(a1, v5, 0))
  {
    db_rwlock_wait(a1, v5, 4);
  }

  else
  {
    ++*(a1 + 196);
  }

  pthread_mutex_unlock(a1);
  return v2;
}

char *fasterUTF8String(const __CFString *a1, void *a2, char *a3, CFIndex a4, _BYTE *a5)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  if (CStringPtr)
  {
    v11 = CStringPtr;
    *a5 = 0;
    *a2 = CFStringGetLength(a1) + 1;
    return v11;
  }

  else if (CFStringGetCString(a1, a3, a4, 0x8000100u))
  {
    *a2 = strlen(a3) + 1;
    *a5 = 0;
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    a3 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    CFStringGetCString(a1, a3, MaximumSizeForEncoding + 1, 0x8000100u);
    *a2 = strlen(a3) + 1;
    *a5 = 1;
  }

  return a3;
}

uint64_t si_compute_oid_for_identifier_bundle_id(char *__str, int a2, uint64_t a3, int a4)
{
  if (a2 > 8 || ((__endptr = 0, v8 = strtol(__str, &__endptr, 10), !*__endptr) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v8 = MurmurHash3_x86_32(__str, a2);
  }

  return v8 | ((MurmurHash3_x86_32(a3, a4) & 0x7FFFFFFF) << 32);
}

uint64_t _si_get_object_for_identifier_createParentDBO(uint64_t a1, int a2, char *__str, int a4, uint64_t a5, int a6, unsigned __int8 *a7, void *a8, unint64_t *a9, int a10, unsigned __int8 a11)
{
  v82 = a7;
  v13 = a5;
  v16 = a11;
  v84 = a10;
  v108 = *MEMORY[0x1E69E9840];
  v92 = 0;
  v18 = *(a1 + 1192);
  v83 = __str;
  v19 = si_compute_oid_for_identifier_bundle_id(__str, a2, a5, a4);
  v20 = v19;
  v21 = (a6 + a2 + 250);
  v107[0] = *(a1 + 2060);
  v107[1] = 0;
  v85 = a1;
  v106 = *(a1 + 2064);
  *&v22 = 136316418;
  v79 = v22;
  while (1)
  {
    v86 = &v79;
    v91 = 0;
    MEMORY[0x1EEE9AC00](v19);
    v23 = (&v79 - ((v21 + 15) & 0x1FFFFFFF0));
    bzero(v23, v21);
    if (v16)
    {
      if (*v18 != 1685287992)
      {
        v73 = *__error();
        v74 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v75 = *v18;
          *buf = 136315650;
          v94 = "db_create_obj_with_buffer";
          v95 = 1024;
          v96 = 313;
          v97 = 1024;
          LODWORD(v98) = v75;
          _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
        }

        *__error() = v73;
        v76 = __si_assert_copy_extra_332();
        v77 = v76;
        if (v76)
        {
          v78 = v76;
        }

        else
        {
          v78 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 313, v78);
        free(v77);
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      v24 = 22;
      if (v21 < 0x30 || (v18[201] & 8) != 0)
      {
        goto LABEL_46;
      }

      *(v23 + 2) = v21;
      *(v23 + 3) = 48;
      v23[3] = 0;
      v23[4] = 0;
      v23[5] = 520;
      v91 = &v79 - ((v21 + 15) & 0x1FFFFFFF0);
      *v23 = v20;
      v25 = v13;
      v26 = a9;
      v27 = v16;
      v28 = a8;
      v29 = v85;
      v30 = strlen(v83);
      db_add_field(v18, &v91, 0, "_kMDItemExternalID", *(v85 + 2060), 0x2308u, 11, v83, v31, v30 + 1);
      v32 = *(v29 + 2064);
      a8 = v28;
      v16 = v27;
      a9 = v26;
      v13 = v25;
      v33 = strlen(v25);
      db_add_field(v18, &v91, 0, "_kMDItemBundleID", v32, 0x4318u, 11, v25, v34, v33 + 1);
      if (v82)
      {
        v35 = strlen(v82);
        v13 = v25;
        db_add_field(v18, &v91, 0, "_kMDItemDomainIdentifier", *(v85 + 2068), 0x4300u, 11, v82, v36, v35 + 1);
      }
    }

    obj_callback = db_get_obj_callback(v18, v20, &v92, 1, si_docIdRewriteCallback, *(v85 + 2368), v91);
    if (obj_callback != 3 && obj_callback != 0)
    {
      v24 = obj_callback;
LABEL_46:
      v92 = 0;
      if (!a9)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v89 = 0;
    v90 = 0;
    field_by_id = db_get_field_by_id(v18, v92, v107, &v90, &v89);
    v87 = 0;
    v88 = 0;
    v40 = db_get_field_by_id(v18, v92, &v106, &v88, &v87);
    if (field_by_id | v40)
    {
      break;
    }

    if (*v90 != 11 || (v41 = v88, *v88 != 11))
    {
      v62 = a9;
      v63 = *__error();
      v64 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v69 = *v90;
        v70 = v90[1];
        v71 = *v88;
        v72 = v88[1];
        *buf = 136316930;
        v94 = "_si_get_object_for_identifier_createParentDBO";
        v95 = 1024;
        v96 = 28278;
        v97 = 2048;
        v98 = v20;
        v99 = 2048;
        v100 = v20;
        v101 = 1024;
        *v102 = v69;
        *&v102[4] = 1024;
        *&v102[6] = v70;
        *v103 = 1024;
        *&v103[2] = v71;
        v104 = 1024;
        v105 = v72;
        _os_log_error_impl(&dword_1C278D000, v64, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type for bundleId/identifier field, oid:0x%llx(%lld), type1:%d, flags1:0x%x, type2:%d, flags2:0x%x", buf, 0x3Eu);
      }

      goto LABEL_42;
    }

    string_for_id = v89;
    if ((v90[1] & 0x10) != 0)
    {
      string_for_id = db_get_string_for_id(v18, *v89);
      v41 = v88;
    }

    v43 = v87;
    if ((v41[1] & 0x10) != 0)
    {
      v43 = db_get_string_for_id(v18, *v87);
    }

    if (!string_for_id || !v43)
    {
      if (string_for_id)
      {
        if (v43)
        {
          goto LABEL_31;
        }

        v44 = *__error();
        v45 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = *v88;
          v47 = v88[1];
          *buf = v79;
          v94 = "_si_get_object_for_identifier_createParentDBO";
          v95 = 1024;
          v96 = 28293;
          v97 = 2048;
          v98 = v20;
          v99 = 2048;
          v100 = v20;
          v101 = 1024;
          *v102 = v46;
          *&v102[4] = 1024;
          *&v102[6] = v47;
          v48 = v45;
          v49 = "%s:%d: Missing bundleId field, oid:0x%llx(%lld), type:%d, flags:0x%x";
          goto LABEL_39;
        }
      }

      else
      {
        v44 = *__error();
        v50 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v60 = *v90;
          v61 = v90[1];
          *buf = v79;
          v94 = "_si_get_object_for_identifier_createParentDBO";
          v95 = 1024;
          v96 = 28291;
          v97 = 2048;
          v98 = v20;
          v99 = 2048;
          v100 = v20;
          v101 = 1024;
          *v102 = v60;
          *&v102[4] = 1024;
          *&v102[6] = v61;
          v48 = v50;
          v49 = "%s:%d: Missing identifier field, oid:0x%llx(%lld), type:%d, flags:0x%x";
LABEL_39:
          _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0x32u);
        }
      }

      *__error() = v44;
      goto LABEL_31;
    }

    if (!strcmp(string_for_id, v83) && !strcmp(v43, v13))
    {
      v24 = 0;
      goto LABEL_58;
    }

LABEL_31:
    v51 = v92;
    v52 = v92[10];
    if (v84)
    {
      v92[10] = v52 | 0x10;
      updated = db_update_obj(v18, v51, 11);
      if (updated)
      {
        v54 = updated;
        v80 = v16;
        v81 = v13;
        v55 = a9;
        v56 = a8;
        v57 = *__error();
        v58 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = v92[10];
          *buf = v79;
          v94 = "_si_get_object_for_identifier_createParentDBO";
          v95 = 1024;
          v96 = 28304;
          v97 = 2048;
          v98 = v20;
          v99 = 2048;
          v100 = v20;
          v101 = 2048;
          *v102 = v59;
          *&v102[8] = 1024;
          *v103 = v54;
          _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: Failed to update the dbo for oid:0x%llx(%lld), flags:0x%lx, rc:%d", buf, 0x36u);
        }

        *__error() = v57;
        a8 = v56;
        a9 = v55;
        v13 = v81;
        v16 = v80;
      }
    }

    else if ((v52 & 0x10) == 0)
    {
      if (a9)
      {
        *a9 = 0;
      }

      if (a8)
      {
        *a8 = 0;
      }

      free(v51);
      v92 = 0;
      v24 = 2;
      goto LABEL_58;
    }

    free(v92);
    v92 = 0;
    ++v20;
  }

  v65 = v40;
  v62 = a9;
  v63 = *__error();
  v66 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    *buf = v79;
    v94 = "_si_get_object_for_identifier_createParentDBO";
    v95 = 1024;
    v96 = 28273;
    v97 = 2048;
    v98 = v20;
    v99 = 2048;
    v100 = v20;
    v101 = 1024;
    *v102 = field_by_id;
    *&v102[4] = 1024;
    *&v102[6] = v65;
    _os_log_error_impl(&dword_1C278D000, v66, OS_LOG_TYPE_ERROR, "%s:%d: Failed to fetch the bundleId/identifier field, oid:0x%llx(%lld), rc1:%d, rc2:%d", buf, 0x32u);
  }

LABEL_42:
  *__error() = v63;
  v24 = 22;
  a9 = v62;
LABEL_58:
  if (a9)
  {
LABEL_47:
    *a9 = v20;
  }

LABEL_48:
  if (a8)
  {
    *a8 = v92;
  }

  else if (v92)
  {
    free(v92);
  }

  v67 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t MurmurHash3_x86_32(uint64_t a1, int a2)
{
  v2 = -1759636613;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 3;
  }

  v4 = (a1 + (v3 & 0xFFFFFFFC));
  if ((a2 + 3) >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = *&v4[4 * v7] * v8;
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a2)) ^ ((-2048144789 * (v2 ^ a2)) >> 13));
  return v16 ^ HIWORD(v16);
}

uint64_t si_get_object_for_identifier_createParentDBO(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, int a5, unint64_t *a6, void *a7, unsigned __int8 a8)
{
  v49 = *MEMORY[0x1E69E9840];
  bzero(v48, 0x400uLL);
  v45 = 0;
  *v44 = 0;
  if (a3)
  {
    v14 = fasterUTF8String(a3, v44, v48, 1024, &v45);
  }

  else
  {
    v14 = "";
  }

  v15 = 0uLL;
  memset(v47, 0, sizeof(v47));
  v43 = 0;
  *v42 = 0;
  if (a2)
  {
    v16 = fasterUTF8String(a2, v42, v47, 128, &v43);
    v15 = 0uLL;
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  v46[6] = v15;
  v46[7] = v15;
  v46[4] = v15;
  v46[5] = v15;
  v46[2] = v15;
  v46[3] = v15;
  v46[0] = v15;
  v46[1] = v15;
  *v40 = 0;
  if (a4)
  {
    v18 = fasterUTF8String(a4, v40, v46, 128, &v41);
  }

  else
  {
    v18 = 0;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v20 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v39 = v20;
  v21 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
  v38 = HIDWORD(v20);
  v37 = __PAIR64__(v22, v23);
  *(v21 + 216) = 0;
  v24 = *(v21 + 312);
  v25 = *(v21 + 224);
  if (v25)
  {
    v25(*(v21 + 288));
  }

  v36 = v39;
  v35 = v38;
  v34 = v37;
  if (_setjmp(v21))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v21 + 312) = v24;
    CIOnThreadCleanUpReset(v34);
    dropThreadId(v36, 1, add_explicit + 1);
    CICleanUpReset(v36, HIDWORD(v34));
    ParentDBO = 0xFFFFFFFFLL;
  }

  else
  {
    ParentDBO = _si_get_object_for_identifier_createParentDBO(a1, v44[0], v14, v42[0], v17, v40[0], v18, a7, a6, a5, a8);
    v27 = threadData[9 * v36 + 1] + 320 * v35;
    *(v27 + 312) = v24;
    v28 = *(v27 + 232);
    if (v28)
    {
      v28(*(v27 + 288));
    }

    dropThreadId(v36, 0, add_explicit + 1);
  }

  if (v45 == 1)
  {
    free(v14);
  }

  if (v43 == 1)
  {
    free(v17);
  }

  v29 = *MEMORY[0x1E69E9840];
  return ParentDBO;
}

BOOL processOneCS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const __CFAllocator *a10, unsigned __int8 a11, NSObject *a12, _BYTE *a13, _BYTE *a14)
{
  MEMORY[0x1EEE9AC00](a1);
  v769 = *MEMORY[0x1E69E9840];
  v726 = v21;
  if (*(v14 + 1288) == 1)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v744[0]) = 0;
      _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "processOneCS failed: index is read-only", v744, 2u);
    }

    *__error() = v22;
    result = 0;
    goto LABEL_758;
  }

  v25 = v19;
  v26 = v18;
  v27 = v17;
  v28 = v15;
  v29 = v14;
  v652 = v16;
  v685 = v20;
  v30 = a10;
  v690 = v17 & 0x80000;
  v654 = (v17 & 0x80000) == 0;
  TypeID = CFStringGetTypeID();
  v722 = 0;
  v723 = &v722;
  v724 = 0x2000000000;
  v725 = 0;
  cs_orphan_oid = si_get_cs_orphan_oid(v29);
  v673 = v30;
  Mutable = CFDictionaryCreateMutable(v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v721 = Mutable;
  v744[0] = *v26;
  *&v744[1] = *(v26 + 16);
  if (_MDPlistGetPlistObjectType() == 241)
  {
    v720[10] = MEMORY[0x1E69E9820];
    v720[11] = 0x40000000;
    v720[12] = __processOneCS_block_invoke;
    v720[13] = &unk_1E81920B8;
    v720[15] = v673;
    v720[14] = &v722;
    v720[16] = TypeID;
    v720[17] = Mutable;
    v744[0] = *v26;
    *&v744[1] = *(v26 + 16);
    _MDPlistDictionaryIterate();
  }

  v744[0] = *v25;
  *&v744[1] = *(v25 + 16);
  v697 = v29;
  v693 = v27;
  if (_MDPlistGetPlistObjectType() == 241)
  {
    v32 = CFDictionaryCreateMutable(v673, 0, MEMORY[0x1E695E9D8], 0);
    v720[1] = MEMORY[0x1E69E9820];
    v720[2] = 0x40000000;
    v720[9] = v32;
    v33 = v32;
    v720[3] = __processOneCS_block_invoke_2;
    v720[4] = &unk_1E81920E0;
    v720[7] = Mutable;
    v720[8] = TypeID;
    v720[6] = v673;
    v720[5] = &v722;
    v744[0] = *v25;
    *&v744[1] = *(v25 + 16);
    _MDPlistDictionaryIterate();
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v696 = v34;
  Value = CFDictionaryGetValue(Mutable, @"kMDItemFileProviderID");
  v36 = CFDictionaryGetValue(Mutable, @"kMDItemFileItemID");
  v624 = CFDictionaryGetValue(Mutable, @"_kMDItemUserActivityRequiredString");
  v37 = CFDictionaryGetValue(Mutable, @"FPRepeatDonation");
  v38 = CFDictionaryGetValue(Mutable, @"FPDownloaded");
  v39 = CFDictionaryGetValue(Mutable, @"_kMDItemEvictedDuringImport");
  v40 = _os_feature_enabled_impl();
  v41 = (v693 >> 17) & 1;
  if (v40)
  {
    v42 = v37 == *MEMORY[0x1E695E4D0] && v38 == *MEMORY[0x1E695E4C0];
    v43 = v42 || v39 == *MEMORY[0x1E695E4D0];
    if (v43 && Value)
    {
      if (CFStringCompare(Value, @"com.apple.CloudDocs.iCloudDriveFileProvider", 0) && CFStringCompare(Value, @"com.apple.CloudDocs.iCloudDriveFileProviderManaged", 0))
      {
        if (CFStringCompare(Value, @"com.apple.FruitBasket", 0))
        {
          v41 = (v693 >> 17) & 1;
        }

        else
        {
          v41 = 1;
        }
      }

      else
      {
        v41 = 1;
      }
    }
  }

  v676 = v41;
  v720[0] = 0;
  v719 = 0;
  v44 = CFDictionaryGetValue(Mutable, @"kMDItemPhotosMediaTypes");
  v45 = v44;
  if (v44)
  {
    v46 = CFGetTypeID(v44);
    if (v46 == CFArrayGetTypeID())
    {
      v719 = CFArrayGetCount(v45) != 0;
    }
  }

  v47 = v39;
  v48 = CFDictionaryGetValue(Mutable, @"_kMDItemExternalID");
  v49 = v48 != 0;
  v642 = Value;
  if (!v48)
  {
    goto LABEL_37;
  }

  v50 = v48;
  if (CFGetTypeID(v48) != TypeID)
  {
    v56 = *__error();
    v57 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v744[0]) = 136315650;
      *(v744 + 4) = "processOneCS";
      WORD6(v744[0]) = 1024;
      *(v744 + 14) = 30547;
      WORD1(v744[1]) = 2112;
      *(&v744[1] + 4) = Mutable;
      _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: bad identifier %@", v744, 0x1Cu);
    }

    *__error() = v56;
LABEL_37:
    v50 = 0;
    v55 = v697;
    v54 = (v697 + 1192);
    v718 = 0;
    v53 = 1;
    v52 = v49;
    goto LABEL_38;
  }

  v51 = *(v697 + 1192);
  v718 = 0;
  *&v744[0] = 0;
  if (((si_get_object_for_identifier_createParentDBO(v697, v28, v50, 0, 0, v744, &v718, 0) == 0) & v676) == 1)
  {
    derivedAttributesCheck(Mutable, &v721, v720, v45 == 0, &v719, v51, v718, *&v744[0]);
  }

  v52 = 0;
  v53 = 0;
  v54 = (v697 + 1192);
  v55 = v697;
LABEL_38:
  v58 = v50;
  v674 = v52;
  v59 = v54;
  v671 = v53;
  if (v47)
  {
    v60 = *__error();
    v61 = _SILogForLogForCategory(4);
    v62 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v61, v62))
    {
      LOWORD(v744[0]) = 0;
      _os_log_impl(&dword_1C278D000, v61, v62, "Importer flagged as evicted during import, removing the sentinel attribute", v744, 2u);
    }

    *__error() = v60;
    CFDictionaryRemoveValue(v721, @"_kMDItemEvictedDuringImport");
  }

  v686 = v59;
  if ((v676 & 1) == 0)
  {
    v63 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &a9);
    CFDictionarySetValue(v721, @"kMDItemPhysicalSize", v63);
    CFRelease(v63);
  }

  v64 = v36;
  if (Value)
  {
    v65 = v36 == 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = !v65;
  if (!v624)
  {
    if (!v66 || (v71 = v721, CFDictionaryGetValue(v721, @"_kMDItemHasClientData") != *MEMORY[0x1E695E4D0]))
    {
      v72 = v686;
      if (!v28)
      {
        v81 = v66;
        v79 = 0;
        v82 = v685;
        goto LABEL_66;
      }

      v73 = 0;
      v74 = 0;
      v75 = v721;
      goto LABEL_58;
    }

    v130 = CFDictionaryGetValue(v71, @"_kMDItemExternalID");
    v72 = v686;
    if (v130)
    {
      CFDictionarySetValue(v71, @"_kMDItemClientExternalID", v130);
    }

    if (v28)
    {
      CFDictionarySetValue(v71, @"_kMDItemClientBundleID", v28);
    }

    if (sSICoreSpotlightCopyBundleRemapCallback)
    {
      v28 = v642;
      v131 = sSICoreSpotlightCopyBundleRemapCallback(v642);
      CFDictionarySetValue(v71, @"_kMDItemExternalID", v64);
      if (v131)
      {
        v28 = v131;
        v73 = 1;
        v66 = 0;
        v75 = v71;
        v74 = v131;
LABEL_58:
        v76 = v74;
        v77 = v73;
        CFDictionarySetValue(v75, @"_kMDItemBundleID", v28);
        v78 = v76;
        v79 = v77;
        v80 = v66;
        goto LABEL_64;
      }
    }

    else
    {
      CFDictionarySetValue(v71, @"_kMDItemExternalID", v64);
      v28 = v642;
    }

    v74 = 0;
    v73 = 1;
    v75 = v71;
    v66 = 0;
    goto LABEL_58;
  }

  if (!v66)
  {
    v70 = 0;
    v69 = 0;
    goto LABEL_60;
  }

  v67 = v721;
  v68 = CFDictionaryGetValue(v721, @"kMDItemRelatedUniqueIdentifier");
  if (CFDictionaryGetValue(v67, @"_kMDItemHasClientData") != *MEMORY[0x1E695E4D0])
  {
    v69 = 1;
    v70 = 0;
LABEL_60:
    v79 = 0;
    goto LABEL_61;
  }

  if (v68)
  {
    CFDictionarySetValue(v67, @"kMDItemRelatedUniqueIdentifier", v64);
    v72 = v686;
    if (sSICoreSpotlightCopyBundleRemapCallback)
    {
      v70 = sSICoreSpotlightCopyBundleRemapCallback(v642);
    }

    else
    {
      v70 = 0;
    }

    if (v70)
    {
      v138 = v70;
    }

    else
    {
      v138 = Value;
    }

    if (!CFEqual(v138, v28))
    {
      CFDictionarySetValue(v67, @"_kMDItemRelatedBundleID", v138);
    }

    v79 = 1;
    v69 = 0;
    if (!v28)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v79 = 1;
  v70 = 0;
  v69 = 0;
LABEL_61:
  v72 = v686;
  if (v28)
  {
LABEL_62:
    CFDictionarySetValue(v721, @"_kMDItemBundleID", v28);
  }

LABEL_63:
  v78 = v70;
  v80 = v69;
LABEL_64:
  v81 = v80;
  v82 = v685;
  if (v78)
  {
    CFRelease(v78);
  }

LABEL_66:
  v672 = v79;
  v678 = v81;
  if (v652)
  {
    CFDictionarySetValue(v721, @"_kMDItemPersonaID", v652);
  }

  if (v82)
  {
    v83 = CFGetTypeID(v82);
    if (v83 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(v82);
      v85 = v721;
      CFDictionarySetValue(v721, @"kMDItemTextContent", v685);
      v86 = v723[3] + Length;
      v87 = v685;
      v723[3] = v86;
      if (v28)
      {
        if (!CFDictionaryGetValue(v85, @"_kMDItemSnippet"))
        {
          if (CFStringHasPrefix(v28, @"com.apple."))
          {
            v128 = SICreateStringByRemovingWhitespaceFromTextContent(v673, v87, 300);
            if (v128)
            {
              v129 = v128;
              CFDictionarySetValue(v721, @"_kMDItemSnippet", v128);
              CFRelease(v129);
            }
          }
        }
      }
    }
  }

  v88 = CFEqual(v28, @"com.apple.MobileSMS");
  v89 = v721;
  if (v88)
  {
    v90 = CFDictionaryContainsKey(v721, @"com_apple_mobilesms_isHighlightedContent") || CFDictionaryContainsKey(v89, @"kMDItemSyndicationStatus") || CFDictionaryContainsKey(v89, @"com_apple_mobilesms_isChatAutoDonating");
    if (!CFDictionaryContainsKey(v89, @"com_apple_mobilesms_groupPhotoPath") && !CFDictionaryContainsKey(v89, @"com_apple_mobilesms_highlightedContentServerDate") && !CFDictionaryContainsKey(v89, @"com_apple_mobilesms_chatAutoDonatingServerDate") && !CFDictionaryContainsKey(v89, @"_kMDItemIsFromMe") && !CFDictionaryContainsKey(v89, @"kMDItemDisplayName") && !CFDictionaryContainsKey(v89, @"kMDItemAuthors") && !CFDictionaryContainsKey(v89, @"kMDItemAuthorAddresses") && !CFDictionaryContainsKey(v89, @"kMDItemRecipients"))
    {
      CFDictionaryContainsKey(v89, @"kMDItemRecipientAddresses");
    }
  }

  else
  {
    v90 = 0;
  }

  v684 = v90;
  if (!CFDictionaryGetValue(v89, @"_kMDItemWillModify") && (v693 & v676 & 1) == 0)
  {
    CFDictionarySetValue(v89, @"_kMDItemWillModify", *MEMORY[0x1E695E738]);
  }

  if (v676)
  {
    v91 = CFDictionaryGetValue(v89, @"_kMDItemBundleID");
    v93 = 0;
    if (v91)
    {
      v92 = v91;
      if (CFStringCompare(v91, @"com.apple.searchd", 0) == kCFCompareEqualTo || CFStringCompare(v92, @"com.apple.MobileSMS", 0) == kCFCompareEqualTo || CFStringCompare(v92, @"com.apple.mobilesafari", 0) == kCFCompareEqualTo || CFStringCompare(v92, @"com.apple.mobilenotes", 0) == kCFCompareEqualTo || CFStringCompare(v92, @"com.apple.mobileslideshow", 0) == kCFCompareEqualTo || isApplicationImport(v92, v89))
      {
        v93 = 1;
      }
    }
  }

  else
  {
    v93 = v654;
    v94 = CFNumberCreate(v673, kCFNumberCFIndexType, v723 + 3);
    if (v94)
    {
      v95 = v94;
      CFDictionarySetValue(v89, @"_kMDItemStorageSize", v94);
      CFRelease(v95);
    }
  }

  v96 = CFNumberCreate(v673, kCFNumberSInt64Type, &v726);
  CFDictionarySetValue(v89, @"_kMDItemSerialNumber", v96);
  CFRelease(v96);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v717 = 0;
  *&v716[4] = 0;
  *v716 = 0;
  v98 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *v72, 0x40000000, add_explicit + 1);
  *&v716[8] = HIDWORD(v98);
  v717 = v98;
  *&v716[4] = v99;
  *v716 = v100;
  v101 = threadData[9 * v98 + 1] + 320 * HIDWORD(v98);
  *(v101 + 216) = 0;
  v102 = *(v101 + 312);
  v103 = *(v101 + 224);
  v104 = v101;
  if (v103)
  {
    v103(*(v101 + 288));
  }

  v715 = v717;
  v714 = *&v716[8];
  v713 = *v716;
  if (!_setjmp(v104))
  {
    v692 = v58;
    v694 = v102;
    v695 = add_explicit;
    v106 = v89;
    v107 = v693;
    if (v671)
    {
      goto LABEL_213;
    }

    v712 = 0;
    v728 = 0;
    v727 = 0;
    if ((v693 & 0x8000) == 0)
    {
      v108 = CFDictionaryGetValue(v89, @"kMDItemRelatedUniqueIdentifier");
      if (v108)
      {
        v109 = v108;
        v110 = CFGetTypeID(v108);
        if (v110 == CFStringGetTypeID() && (CFDictionaryContainsKey(v89, @"_MDItemDeletedWithRelatedUniqueIdentifier") || CFDictionaryContainsKey(v89, @"_kMDItemUserActivityRequiredString") || CFEqual(v28, @"com.apple.MobileSMS")))
        {
          v621 = *MEMORY[0x1E695E480];
          v111 = CFStringGetLength(v109);
          MutableCopy = CFStringCreateMutableCopy(v621, v111, v109);
          v112 = CFStringGetLength(v28);
          v113 = CFStringCreateMutableCopy(v621, v112, v28);
          v114 = CFStringGetLength(v692);
          v115 = CFStringCreateMutableCopy(v621, v114, v692);
          v645 = CFRetain(v113);
          object_for_identifier_createParentDBO = si_get_object_for_identifier_createParentDBO(v55, v28, MutableCopy, 0, 0, &v728, &v727, 0);
          if (!object_for_identifier_createParentDBO)
          {
            goto LABEL_120;
          }

          v117 = CFDictionaryGetValue(v89, @"_kMDItemRelatedBundleID");
          if (v117)
          {
            v118 = v117;
            v119 = si_get_object_for_identifier_createParentDBO(v55, v117, MutableCopy, 0, 0, &v728, &v727, 0);
            if (!v119)
            {
              if (dword_1EBF46ADC >= 5)
              {
                v590 = *__error();
                v591 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v591, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v744[0]) = 138412802;
                  *(v744 + 4) = v28;
                  WORD6(v744[0]) = 2112;
                  *(v744 + 14) = MutableCopy;
                  WORD3(v744[1]) = 2112;
                  *(&v744[1] + 1) = v118;
                  _os_log_impl(&dword_1C278D000, v591, OS_LOG_TYPE_DEFAULT, "Remapped related identifier for %@ to relatedIdent %@, bundleID:%@", v744, 0x20u);
                }

                *__error() = v590;
              }

              CFRelease(v113);
              v120 = CFStringGetLength(v28);
              v113 = CFStringCreateMutableCopy(v621, v120, v28);
LABEL_120:
              v121 = v113;
              *&v744[0] = 0;
              *v732 = 0;
              if (db_get_field(*v686, v727, "kMDItemDocumentIdentifier", v744, v732) || **&v744[0] != 7)
              {
                v712 = 0;
              }

              else
              {
                v712 = **v732;
                if (v712)
                {
                  v122 = 1;
                  goto LABEL_162;
                }
              }

              v122 = 0;
LABEL_162:
              if (v727)
              {
                v628 = v122;
                v646 = v115;
                v745 = 0u;
                memset(v744, 0, sizeof(v744));
                v731 = 0;
                v139 = "_kMDItemRelatedObjects";
                *v734 = 0;
                if (object_for_identifier_createParentDBO)
                {
                  v140 = CFStringGetLength(v28);
                  v141 = CFStringGetLength(v692);
                  v142 = CFStringCreateMutableCopy(v621, v140 + v141 + 1, v28);
                  CFStringAppend(v142, @":");
                  CFStringAppend(v142, v692);
                  v139 = "_kMDItemRelatedObjectsWithBundle";
                  v143 = v142;
                  v144 = v142;
                }

                else
                {
                  v144 = 0;
                  v143 = v692;
                }

                v161 = v144;
                v162 = fasterUTF8String(v143, v734, v744, 256, &v731);
                v163 = *v734;
                if (*v734)
                {
                  v622 = v162;
                  v710[0] = 0;
                  v708[0] = 0;
                  field = db_get_field(*v686, v727, v139, v710, v708);
                  v632 = v121;
                  v617 = v139;
                  if (field)
                  {
                    goto LABEL_185;
                  }

                  v222 = *(v710[0] + 2);
                  if ((v222 & 0x90) == 0)
                  {
                    v223 = *(v710[0] + 8);
                    v224 = v708[0];
                    if ((v222 & 0x20) != 0)
                    {
                      if (v223)
                      {
                        v232 = &v708[0][v223];
                        while (1)
                        {
                          v233 = v232 - v224;
                          v234 = strnlen(v224, v232 - v224);
                          if (v234 + 1 < v232 - v224)
                          {
                            v233 = v234 + 1;
                          }

                          if (!v233)
                          {
                            break;
                          }

                          v165 = v163 == v233 && memcmp(v224, v622, v163) == 0;
                          if (!v165)
                          {
                            v224 += v233;
                            if (v224 < v232)
                            {
                              continue;
                            }
                          }

                          goto LABEL_186;
                        }

                        v560 = __si_assert_copy_extra_661(-1);
                        v561 = v560;
                        v562 = "";
                        if (v560)
                        {
                          v562 = v560;
                        }

                        *v606 = "size";
                        v607 = v562;
                        v563 = 28501;
                        goto LABEL_888;
                      }
                    }

                    else
                    {
                      v225 = strnlen(v708[0], v223);
                      if (v225 + 1 < v223)
                      {
                        v226 = v225 + 1;
                      }

                      else
                      {
                        v226 = v223;
                      }

                      if (v163 == v226)
                      {
                        v165 = memcmp(v224, v622, v163) == 0;
                        goto LABEL_186;
                      }
                    }

LABEL_185:
                    v165 = 0;
LABEL_186:
                    v623 = v161;
                    v166 = v165;
                    v708[0] = 0;
                    v710[0] = 0;
                    v730 = 1;
                    v167 = v686;
                    if (!db_get_field(*v686, v727, "_kMDItemRelatedActivityLaunchCount", v710, v708))
                    {
                      v730 = *v708[0] + 1;
                    }

                    v168.n128_f64[0] = CFAbsoluteTimeGetCurrent();
                    v729 = v168.n128_u64[0];
                    db_add_field(*v686, &v727, 1u, "_kMDItemRelatedActivityLastLaunchDate", 0, 0x2100u, 12, &v729, v168, 8);
                    db_add_field(*v686, &v727, 1u, "_kMDItemRelatedActivityLaunchCount", 0, 0x2100u, 8, &v730, v169, 8);
                    if (!v166)
                    {
                      db_add_field(*v686, &v727, 2u, v617, 0, 0x2120u, 11, v622, v170, v163);
                      if (dword_1EBF46ADC >= 5)
                      {
                        v585 = *__error();
                        v586 = _SILogForLogForCategory(4);
                        if (os_log_type_enabled(v586, OS_LOG_TYPE_DEFAULT))
                        {
                          *v732 = 136315906;
                          *&v732[4] = "_kMDItemRelatedObjects";
                          *&v732[12] = 2112;
                          *&v732[14] = MutableCopy;
                          *&v732[22] = 2112;
                          *&v732[24] = v28;
                          *&v732[32] = 2112;
                          *&v732[34] = v692;
                          _os_log_impl(&dword_1C278D000, v586, OS_LOG_TYPE_DEFAULT, "Updated %s field for relatedIdentifier:%@, bundleID:%@, identifier:%@", v732, 0x2Au);
                        }

                        *__error() = v585;
                        v167 = v686;
                      }
                    }

                    db_update_obj(*v167, v727, 3);
                    v55 = v697;
                    v115 = v646;
                    if (v731 == 1)
                    {
                      free(v622);
                    }

                    if (v623)
                    {
                      CFRelease(v623);
                    }

                    v157 = v693;
                    v113 = v632;
                    v160 = v628;
LABEL_195:
                    if (sCSRelatedItemCallback)
                    {
                      sCSRelatedItemCallback(v55, v113, MutableCopy, v115, (v157 >> 14) & 2);
                    }

                    if (v645)
                    {
                      CFRelease(v645);
                    }

                    if (v113)
                    {
                      CFRelease(v113);
                    }

                    if (v115)
                    {
                      CFRelease(v115);
                    }

                    v158 = MutableCopy;
                    v159 = v160;
                    goto LABEL_204;
                  }

                  v587 = __si_assert_copy_extra_661(-1);
                  v570 = v587;
                  v588 = "";
                  if (v587)
                  {
                    v588 = v587;
                  }

                  *v606 = "(fieldFlags & (DB_FIELD_UNIQUED_VALS|DB_FIELD_LOCALIZED_STR)) == 0";
                  v607 = v588;
                  v572 = 28489;
                }

                else
                {
                  v573 = __si_assert_copy_extra_661(-1);
                  v570 = v573;
                  v574 = "";
                  if (v573)
                  {
                    v574 = v573;
                  }

                  *v606 = "identifierCStrSize";
                  v607 = v574;
                  v572 = 28480;
                }
              }

              else
              {
                v569 = __si_assert_copy_extra_661(-1);
                v570 = v569;
                v571 = "";
                if (v569)
                {
                  v571 = v569;
                }

                *v606 = "dbop && *dbop";
                v607 = v571;
                v572 = 28459;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", v572, *v606, v607);
              free(v570);
              if (__valid_fs(-1))
              {
                v589 = 2989;
              }

              else
              {
                v589 = 3072;
              }

              *v589 = -559038737;
              abort();
            }
          }

          else
          {
            v119 = object_for_identifier_createParentDBO;
          }

          if (dword_1EBF46ADC >= 5)
          {
            v575 = v115;
            v576 = *__error();
            v577 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v577, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v744[0]) = 138413058;
              *(v744 + 4) = MutableCopy;
              WORD6(v744[0]) = 2112;
              *(v744 + 14) = v113;
              WORD3(v744[1]) = 1024;
              DWORD2(v744[1]) = v119;
              WORD6(v744[1]) = 2112;
              *(&v744[1] + 14) = v692;
              _os_log_impl(&dword_1C278D000, v577, OS_LOG_TYPE_DEFAULT, "Failed to fetch the dbo for relatedIdentifier:%@, bundleID:%@, rc:%d (dropping %@)", v744, 0x26u);
            }

            *__error() = v576;
            v55 = v697;
            v115 = v575;
          }

          v157 = v693 | 0x8000;
          v160 = 0;
          goto LABEL_195;
        }
      }

      goto LABEL_149;
    }

    v123 = v692;
    v124 = si_get_object_for_identifier_createParentDBO(v55, v28, v692, 0, 0, &v728, &v727, 0);
    if (v124)
    {
      v125 = v124;
      if (v124 == 2)
      {
        v126 = 0;
        v127 = v693;
LABEL_207:
        v171 = v126;
        if (v727)
        {
          free(v727);
        }

        if (v171)
        {
          v172 = CFNumberCreate(v673, kCFNumberSInt64Type, &v712);
          v106 = v721;
          CFDictionaryAddValue(v721, @"kMDItemDocumentIdentifier", v172);
          CFRelease(v172);
        }

        else
        {
          v106 = v721;
        }

        v107 = v127;
LABEL_213:
        v173 = v107;
        v663 = a13;
        v174 = a11;
        v175 = CFDictionaryGetValue(v106, @"FPParentFileItemID");
        if (v175)
        {
          v176 = v175;
          v177 = CFGetTypeID(v175);
          v178 = 0;
          if (TypeID == v177)
          {
            v178 = v176;
          }
        }

        else
        {
          v178 = 0;
        }

        v179 = v663;
        v691 = v174;
        if ((v107 & 0x8000) == 0)
        {
          v180 = v178;
          v665 = v663;
          v667 = v173;
          if (v676)
          {
            if (isAppleInternalInstall_onceToken != -1)
            {
              dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
            }

            if (isAppleInternalInstall_isInternalInstall == 1)
            {
              v181 = *__error();
              v182 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v744[0]) = 138412546;
                *(v744 + 4) = v28;
                WORD6(v744[0]) = 2112;
                *(v744 + 14) = v692;
                _os_log_impl(&dword_1C278D000, v182, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Index update bundleID:%@ identifier:%@", v744, 0x16u);
              }

              *__error() = v181;
LABEL_248:
              v193 = v674;
              if (v106)
              {
                v194 = v674;
              }

              else
              {
                v194 = 1;
              }

              if ((v194 & 1) == 0)
              {
                bzero(&v744[1], 0x3F0uLL);
                strcpy(v744, "processing item");
                *v606 = v744;
                v193 = v674;
                *v605 = 30825;
                __si_set_error_str(1, "%s:%u: %s", v195, v196, v197, v198, v199, v200, "SpotlightIndex.c");
              }

              LiveIndex = si_getLiveIndex(*(v55 + 1384));
              v202 = LiveIndex;
              if (v193)
              {
                v185 = v695;
                if (dword_1EBF46ADC < 5)
                {
                  v184 = LiveIndex;
                  v105 = 0;
                  v183 = 0;
                  goto LABEL_742;
                }

                v556 = *__error();
                v557 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v557, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v744[0]) = 138412546;
                  *(v744 + 4) = v28;
                  WORD6(v744[0]) = 2112;
                  *(v744 + 14) = v692;
                  _os_log_impl(&dword_1C278D000, v557, OS_LOG_TYPE_DEFAULT, "isDummy :%@ %@", v744, 0x16u);
                }

                *__error() = v556;
                v184 = v202;
                v105 = 0;
                v183 = 0;
                goto LABEL_875;
              }

              v687 = LiveIndex;
              v688 = LiveIndex;
              bzero(v743, 0x800uLL);
              v681 = *(v55 + 1192);
              v710[0] = 0;
              v708[0] = 0;
              ParentDBO = si_get_object_for_identifier_createParentDBO(v55, v28, v692, 0, v93, v710, v708, 0);
              v204 = ParentDBO;
              if ((v93 & 1) == 0)
              {
                if (v708[0])
                {
                  if (BOOLValueForDBOProperty(v681, v708[0], "_kMDItemIsZombie"))
                  {
                    v205 = *__error();
                    v206 = _SILogForLogForCategory(4);
                    v207 = dword_1EBF46ADC < 3;
                    if (os_log_type_enabled(v206, (dword_1EBF46ADC < 3)))
                    {
                      LODWORD(v744[0]) = 138412546;
                      *(v744 + 4) = v28;
                      WORD6(v744[0]) = 2112;
                      *(v744 + 14) = v692;
                      _os_log_impl(&dword_1C278D000, v206, v207, "*warn* update requires non-zombie item :%@ %@", v744, 0x16u);
                    }

                    *__error() = v205;
                    free(v708[0]);
                    goto LABEL_284;
                  }
                }

                else
                {
                  v679 = v180;
                  v214 = ParentDBO;
                  v215 = *__error();
                  v216 = _SILogForLogForCategory(4);
                  v217 = dword_1EBF46ADC < 3;
                  if (os_log_type_enabled(v216, (dword_1EBF46ADC < 3)))
                  {
                    LODWORD(v744[0]) = 138412546;
                    *(v744 + 4) = v28;
                    WORD6(v744[0]) = 2112;
                    *(v744 + 14) = v692;
                    _os_log_impl(&dword_1C278D000, v216, v217, "*warn* update requires existing item :%@ %@", v744, 0x16u);
                  }

                  *__error() = v215;
                  v204 = v214;
                  v180 = v679;
                }

                if (!v708[0])
                {
LABEL_284:
                  v184 = 0;
                  v105 = 0;
                  v183 = 0;
LABEL_285:
                  v185 = v695;
                  goto LABEL_742;
                }
              }

              v649 = v204;
              si_indexDeleteDeferredItemsIfItemIncluded(v55, v710[0]);
              v656 = v204;
              if (v204)
              {
                v218 = v676;
              }

              else
              {
                db_validate_obj(v681);
                v219 = CFEqual(v28, @"com.apple.MobileSMS");
                if (v665)
                {
                  if (v219)
                  {
                    v220 = v721;
                    if (((changesExistingSyndicationAttributes(v55, v708[0], v721, v676) & 1) != 0 || changesExistingSyndicationRelatedAttributes(v55, v708[0], v220, v676)) && (v684 || isSyndicatedContent(v55, v708[0])))
                    {
                      *v665 = 1;
                    }
                  }
                }

                v218 = v676;
                if (((v676 | v678 ^ 1) & 1) == 0)
                {
                  *&v744[0] = 0;
                  *v732 = 0;
                  if (db_get_field(v681, v708[0], "_kMDItemHasClientData", v732, v744))
                  {
                    v221 = 0;
                  }

                  else
                  {
                    v221 = **&v744[0] != 0;
                  }

                  v218 = v221;
                }
              }

              if (v708[0])
              {
                v227 = *(v708[0] + 3);
                v228 = v227;
                v229 = v180 != 0;
                v230 = v678 | v672;
                if ((v678 | v672) == 1 && v180 && !v656 && v227)
                {
                  if (CFStringHasSuffix(v180, @"NSFileProviderRootContainerItemIdentifier"))
                  {
                    v230 = 1;
                    v228 = 2;
                  }

                  else
                  {
                    v231 = *(v708[0] + 3);
                    if (v231)
                    {
                      if (v231 == cs_orphan_oid)
                      {
                        v228 = 0;
                      }

                      else
                      {
                        *v732 = 0;
                        *v734 = 0;
                        if (!db_get_field(v681, v708[0], "FPParentFileItemID", v732, v734) && **v732 == 11 && (*(*v732 + 2) & 0x10) == 0)
                        {
                          bzero(v744, 0x400uLL);
                          if (CFStringGetCString(v180, v744, 1024, 0x8000100u))
                          {
                            if (!strcmp(v744, (*v732 + 13)))
                            {
                              v228 = v227;
                            }

                            else
                            {
                              v228 = 0;
                            }
                          }
                        }
                      }
                    }

                    v230 = 1;
                  }

                  v229 = 1;
                }
              }

              else
              {
                v228 = 0;
                v229 = v180 != 0;
                v230 = v678 | v672;
              }

              v670 = v229;
              v669 = v228;
              v668 = v230;
              if (v89)
              {
                Count = CFDictionaryGetCount(v89);
              }

              else
              {
                Count = 0;
              }

              v236 = Count + 29;
              v237 = Count + 4;
              v238 = 16 * (Count + 29 + Count + 4);
              if (v238 >= 2048)
              {
                v239 = malloc_type_calloc(1uLL, v238, 0x100004077774924uLL);
              }

              else
              {
                v239 = v743;
              }

              v240 = Count + 29;
              v677 = v239;
              v241 = &v239[v236];
              v242 = &v241[v236];
              v657 = v241;
              v243 = &v242[Count];
              bzero(v744 + 8, 0x260uLL);
              v244 = *MEMORY[0x1E695E4C0];
              *&v744[0] = 0xFFF0000000000000;
              v653 = v244;
              *&v744[2] = v244;
              if (v685)
              {
                v245 = 4352;
              }

              else
              {
                v245 = 256;
              }

              DWORD2(v744[2]) = v245;
              if (v720[0])
              {
                v246 = CFRetain(v720[0]);
              }

              else
              {
                v246 = 0;
              }

              *&v745 = v246;
              v750 = v677;
              v751 = v657;
              v753 = v240;
              v754 = v242;
              v755 = v243;
              v757 = v237;
              v765 = -1;
              v767 = -1;
              if (!v28)
              {
                CFStringCompare(0, @"com.apple.searchstressattr", 0);
                v247 = v697;
                goto LABEL_359;
              }

              v247 = v697;
              if (CFEqual(v28, @"com.apple.mobilemail"))
              {
                v248 = DWORD2(v744[2]) | 0x10000;
              }

              else if (CFEqual(v28, @"com.apple.mobileslideshow"))
              {
                v248 = DWORD2(v744[2]) | 0x20000;
              }

              else
              {
                if (!CFEqual(v28, @"com.apple.MobileAddressBook"))
                {
                  CFStringCompare(v28, @"com.apple.searchstressattr", 0);
LABEL_357:
                  if (!CFEqual(v28, @"com.apple.mobilesafari"))
                  {
                    DWORD2(v744[2]) |= 0x40000u;
                  }

LABEL_359:
                  if (v719)
                  {
                    DWORD2(v744[2]) |= 0x200000u;
                    if (*(v247 + 10112))
                    {
                      goto LABEL_367;
                    }

                    *(v247 + 10112) = 1;
                    v249 = @"kSPHasPhotos";
                  }

                  else
                  {
                    if (v28)
                    {
                      v250 = v218;
                    }

                    else
                    {
                      v250 = 1;
                    }

                    if (v250 & 1) != 0 || (v256 = CFEqual(v28, @"com.apple.searchd"), !v247) || v256 || (*(v247 + 10113))
                    {
LABEL_367:
                      if (!v89)
                      {
                        goto LABEL_388;
                      }

                      v251 = CFDictionaryGetValue(v89, @"kMDItemPhotosInferredTimeZoneOffset");
                      if (!v251)
                      {
                        v251 = CFDictionaryGetValue(v89, @"kMDItemPhotosTimeZoneOffset");
                        if (!v251)
                        {
LABEL_382:
                          if (CFStringCompare(v28, @"com.apple.MobileAddressBook", 0) == kCFCompareEqualTo || CFStringCompare(v28, @"com.apple.Music", 0) == kCFCompareEqualTo)
                          {
                            DWORD2(v744[2]) |= 0x400u;
                          }

                          CFDictionaryGetValue(v89, @"_kMDItemExternalID");
                          CFDictionaryApplyFunction(v89, preProcess, v744);
                          postPreprocess(v744, v28);
                          handleUserTags(v744);
                          if ((BYTE8(v744[2]) & 0x10) != 0 && v752)
                          {
                            DWORD2(v744[2]) &= ~0x10u;
                          }

LABEL_388:
                          v651 = gDefaultSchema;
                          if ((v649 != 0) | v218 & 1 || ((v678 ^ 1) & 1) != 0 || (BYTE9(v744[2]) & 0x80) == 0 || !*(v697 + 1704))
                          {
                            if ((v218 & 1) == 0)
                            {
                              goto LABEL_430;
                            }
                          }

                          else
                          {
                            *v732 = 0;
                            *v734 = 0;
                            if (db_get_field(*v686, v708[0], "kMDItemEmbeddingVersion", v734, v732))
                            {
                              goto LABEL_430;
                            }

                            v257 = *MEMORY[0x1E695E480];
                            v258 = _decodeSDBField(*v686, *v734, *v732, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
                            if (!v258)
                            {
                              goto LABEL_430;
                            }

                            v609 = v257;
                            v259 = v258;
                            LODWORD(v730) = 0;
                            v260 = CFNumberGetValue(v258, kCFNumberIntType, &v730);
                            v261 = v730;
                            CFRelease(v259);
                            if (!v260 || v261 != 3)
                            {
                              goto LABEL_430;
                            }

                            v614 = v609;
                            if (!db_get_field(*v686, v708[0], "_kMDItemMediaEmbeddingVersion", v734, v732))
                            {
                              v289 = _decodeSDBField(*v686, *v734, *v732, 0, 0, 0, 0, v614);
                              if (v289)
                              {
                                v290 = v289;
                                LODWORD(v730) = 0;
                                if (CFNumberGetValue(v289, kCFNumberIntType, &v730))
                                {
                                  v291 = v730;
                                  v292 = SPEmbeddingModelVersion();
                                  CFRelease(v290);
                                  if (v292 != v291)
                                  {
LABEL_430:
                                    if ((BYTE9(v744[2]) & 0x80) != 0)
                                    {
                                      v293 = CFDictionaryGetValue(v721, @"_kMDItemExternalID");
                                      if (v293)
                                      {
                                        v294 = v293;
                                        v295 = CFGetTypeID(v293);
                                        if (v295 == CFStringGetTypeID())
                                        {
                                          v296 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", v294, v28);
                                          if (!v296)
                                          {
                                            v279 = 0;
                                            v281 = 1;
                                            v276 = 0;
                                            goto LABEL_437;
                                          }

                                          v297 = v296;
                                          os_unfair_lock_lock((v697 + 1696));
                                          CFBagAddValue(*(v697 + 1704), v297);
                                          os_unfair_lock_unlock((v697 + 1696));
                                          CFRelease(v297);
                                        }
                                      }
                                    }

                                    v281 = 1;
                                    v276 = 0;
                                    goto LABEL_436;
                                  }
                                }

                                else
                                {
                                  CFRelease(v290);
                                }
                              }
                            }

                            v262 = v721;
                            v263 = CFDictionaryGetValue(v721, @"FPDownloaded");
                            if (v263)
                            {
                              v264 = v263;
                              v265 = v262;
                              v266 = CFGetTypeID(v263);
                              v42 = v266 == CFBooleanGetTypeID();
                              v262 = v265;
                              if (v42 && CFBooleanGetValue(v264) && !db_get_field(*v686, v708[0], "FPDownloaded", v734, v732))
                              {
                                v267 = _decodeSDBField(*v686, *v734, *v732, 0, 0, 0, 0, v614);
                                v268 = CFBooleanGetValue(v267);
                                if (v267)
                                {
                                  CFRelease(v267);
                                }

                                v262 = v265;
                                if (!v268)
                                {
                                  goto LABEL_430;
                                }
                              }
                            }

                            v269 = CFDictionaryGetValue(v262, @"kMDItemContentModificationDate");
                            if (!v269)
                            {
                              goto LABEL_430;
                            }

                            v270 = v269;
                            v271 = CFGetTypeID(v269);
                            if (v271 != CFDateGetTypeID())
                            {
                              goto LABEL_430;
                            }

                            if (db_get_field(*v686, v708[0], "kMDItemContentModificationDate", v734, v732))
                            {
                              goto LABEL_430;
                            }

                            v272 = _decodeSDBField(*v686, *v734, *v732, 0, 0, 0, 0, v614);
                            if (!v272)
                            {
                              goto LABEL_430;
                            }

                            v273 = v272;
                            v274 = CFEqual(v272, v270);
                            CFRelease(v273);
                            if (!v274)
                            {
                              goto LABEL_430;
                            }
                          }

                          if ((v678 ^ 1) & 1 | (v649 != 0))
                          {
                            v275 = v697;
                            if (v656)
                            {
                              v276 = 1;
                              v277 = v708[0];
                              v278 = 0;
                              v279 = 0;
                              v280 = 0;
                              v281 = 0;
                              goto LABEL_446;
                            }
                          }

                          else
                          {
                            v275 = v697;
                            if ((BYTE9(v744[2]) & 0x80) != 0)
                            {
                              v282 = v721;
                              CFDictionaryRemoveValue(v721, @"_kMDItemRequiresImport");
                              CFDictionaryRemoveValue(v282, @"_kMDItemImportSandboxExtension");
                              CFDictionaryRemoveValue(v282, @"_kMDItemImportHasSandboxExtension");
                            }
                          }

                          v283 = v681;
                          HasContent = objectHasContent(v681, v708[0]);
                          if (HasContent)
                          {
                            MEMORY[0x1EEE9AC00](HasContent);
                            bzero(v603, 0x1000uLL);
                            allocator = _SIStackAllocatorCreate(v603, 4096, indexingZone);
                            v276 = 1;
                            v281 = 0;
                            v279 = decodeDBOToDictionary(v283, v708[0], 0, 0x2000, 2, *(v275 + 2028), *(v275 + 2060), 1, 0, allocator);
LABEL_437:
                            v280 = 0;
                            v277 = v708[0];
                            if (v656 || !v708[0])
                            {
                              v278 = 0;
                            }

                            else
                            {
                              v679 = v180;
                              v298 = v174;
                              v278 = 0;
                              v299 = v697;
                              *v732 = *(v697 + 2012);
                              *v734 = 0;
                              v730 = 0;
                              v300 = v681;
                              if (!db_get_field_by_id(v681, v708[0], v732, v734, &v730))
                              {
                                v278 = *v730;
                              }

                              *v732 = *(v299 + 2008);
                              if (db_get_field_by_id(v300, v708[0], v732, v734, &v730))
                              {
                                v301 = 0;
                              }

                              else
                              {
                                v301 = *v730;
                              }

                              v174 = v298;
                              v277 = v708[0];
                              v280 = v301;
                              v180 = v679;
                            }

LABEL_446:
                            v661 = v278;
                            v660 = v280;
                            v302 = v276;
                            v303 = v281;
                            v664 = v279;
                            v675 = v277;
                            v666 = v302;
                            v680 = v174;
                            if (v277)
                            {
                              v304 = v277;
                              v708[0] = db_copy_obj(v277, 1024);
                              v305 = v681;
                              db_validate_obj(v681);
                              free(v304);
                              if (v302)
                              {
                                v306 = candidateForReimport(v697, v708);
                                v307 = 0;
                                v308 = v667;
                                v309 = v651;
                                goto LABEL_462;
                              }

                              v314 = db_delete_fields_with_flags(v305, v708[0]);
                              v307 = v314 == 0;
                              if (v314 && dword_1EBF46AE8 >= 5)
                              {
                                v580 = v314;
                                v581 = *__error();
                                v582 = _SILogForLogForCategory(7);
                                if (os_log_type_enabled(v582, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v732 = 67109120;
                                  *&v732[4] = v580;
                                  _os_log_impl(&dword_1C278D000, v582, OS_LOG_TYPE_DEFAULT, "Deleting importer fields failed, rc:%d", v732, 8u);
                                }

                                *__error() = v581;
                                v305 = v681;
                              }

                              v308 = v667;
                              v309 = v651;
                              if (v746)
                              {
                                v306 = 0;
                                goto LABEL_462;
                              }

                              InsertPreProcessContextAddAttr(v744, @"_kMDItemTextContentIndexExists", v653, 0);
                              v306 = 0;
                            }

                            else
                            {
                              v310 = v681;
                              v708[0] = db_create_obj(v681, 1024, 0);
                              *v708[0] = v710[0];
                              v311 = v302;
                              if (*&v744[1])
                              {
                                v312.n128_f64[0] = MEMORY[0x1C691E960]();
                                *v732 = v312.n128_u64[0];
                                v311 = 0;
                                db_add_field(v310, v708, 1u, "kMDItemExpirationDate", 0, 0, 12, v732, v312, 8);
                              }

                              v313 = !v684;
                              if (!v663)
                              {
                                v313 = 1;
                              }

                              v309 = v651;
                              if ((v313 & 1) == 0)
                              {
                                *v665 = 1;
                              }

                              v307 = 0;
                              v306 = v311;
                              v305 = v681;
                            }

                            v308 = v667;
LABEL_462:
                            v655 = v306;
                            v315 = v307;
                            if ((BYTE8(v744[2]) & 8) != 0)
                            {
                              *(v708[0] + 10) |= 2u;
                            }

                            v316 = v308 | 0x200;
                            v317 = v309;
                            if (v756)
                            {
                              setDatastoreLocalizedAttributes(v305, v708, v754, v755, v756, v309, v696, v303, 0);
                              db_validate_obj(v305);
                              v315 = 1;
                            }

                            v683 = v687 + 3072;
                            v318 = v316;
                            if (v752)
                            {
                              v319 = CFDictionaryCreate(*MEMORY[0x1E695E480], v750, v657, v752, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                              v320 = setDatastoreAttributes(v305, v708, v319, v318, v317, v696, v303, 0);
                              v321 = v320;
                              if (v319)
                              {
                                CFRelease(v319);
                                if (!v321)
                                {
                                  goto LABEL_536;
                                }
                              }

                              else if (!v320)
                              {
                                goto LABEL_536;
                              }

                              v315 = 1;
                            }

                            v322 = *(&v744[0] + 1);
                            if (*(&v744[0] + 1))
                            {
                              v323 = *v744;
                            }

                            else
                            {
                              if ((BYTE9(v744[2]) & 8) == 0)
                              {
                                goto LABEL_477;
                              }

                              v323 = *v744;
                              v322 = 0;
                            }

                            markItemAsUsedForField(v305, v708, "kMDItemLastUsedDate", "kMDItemUsedDates", v322, 1, 1, 0, v323);
                            v315 = 1;
LABEL_477:
                            if (v764)
                            {
                              memset(v732, 0, 32);
                              v324 = CFStringGetTypeID();
                              if (v324 == CFGetTypeID(v764) && CFStringGetCString(v764, v732, 32, 0x8000100u))
                              {
                                Current = CFAbsoluteTimeGetCurrent();
                                v326 = v765;
                                v327 = v732;
                              }

                              else
                              {
                                v327 = 0;
                                v326 = 0;
                                Current = 0.0;
                              }

                              updateItemRecentEngagementData(v305, v708, v327, v326, "_kMDItemRecentAppSearchEngagementQueries", "_kMDItemRecentAppSearchEngagementDates", "_kMDItemRecentAppSearchEngagementRenderPositions", 1, Current);
                              v315 = 1;
                            }

                            if (v766)
                            {
                              memset(v732, 0, 32);
                              v328 = CFStringGetTypeID();
                              if (v328 == CFGetTypeID(v766) && CFStringGetCString(v766, v732, 32, 0x8000100u))
                              {
                                v329 = CFAbsoluteTimeGetCurrent();
                                v330 = v767;
                                v331 = v732;
                              }

                              else
                              {
                                v331 = 0;
                                v330 = 0;
                                v329 = 0.0;
                              }

                              updateItemRecentSpotlightEngagementData(v305, v708, v331, v330, v329);
                              v315 = 1;
                            }

                            v332 = v315;
                            if (v768)
                            {
                              v333 = CFDateGetTypeID();
                              v334 = CFGetTypeID(v768);
                              v335 = 0.0;
                              if (v333 == v334)
                              {
                                v335 = MEMORY[0x1C691E960](v768, 0.0);
                              }

                              updateItemRecentOutOfSpotlightEngagementData(v305, v708, v335);
                              v332 = 1;
                            }

                            if (v762)
                            {
                              v336 = v305;
                              v337 = fmax(markItemAsUsedForField(v305, v708, "_kMDItemInterestingDate", 0, v762, 0, 0, 0x2108u, 0.0), 0.0);
                              v338 = v28;
                              v339 = v318;
                              v340 = v180;
                              v341 = SICopyRoundedDate();
                              markItemAsUsedForField(v336, v708, "kMDItemInterestingDate_Ranking", 0, v341, 0, 0, 0x100u, 0.0);
                              v342 = v341;
                              v180 = v340;
                              v318 = v339;
                              v28 = v338;
                              CFRelease(v342);
                              v344 = 1;
                              v345 = v337;
                            }

                            else
                            {
                              v343 = v761;
                              if (v761)
                              {
                                *v732 = 0;
                                v343 = CFNumberGetValue(v761, kCFNumberSInt32Type, v732);
                              }

                              v344 = v332;
                              v345 = 0;
                            }

                            v346 = v344;
                            v347 = v666;
                            if (v762)
                            {
                              v347 = 0;
                            }

                            v348 = v675;
                            if (v347 == 1)
                            {
                              v732[0] = 0;
                              v349 = fmax(getTimeForDateField(v681, v708[0], v732), 0.0);
                              if (v732[0])
                              {
                                v350 = v349;
                              }

                              else
                              {
                                v350 = v345;
                              }
                            }

                            else
                            {
                              v350 = v345;
                            }

                            v351 = v759;
                            v352 = v758 == 0.0;
                            if (v759 != 0.0)
                            {
                              v352 = 0;
                            }

                            if (v760 != 0.0)
                            {
                              v352 = 0;
                            }

                            if (!v348)
                            {
                              v352 = 1;
                            }

                            v648 = v352;
                            if (v352)
                            {
                              if (v346)
                              {
                                goto LABEL_540;
                              }

                              goto LABEL_536;
                            }

                            v618 = v346;
                            v353 = "_kMDItemEngagementData";
                            if (v759 == 0.0)
                            {
                              v351 = v760;
                              v353 = "_kMDItemAppEngagementData";
                            }

                            if (v758 == 0.0)
                            {
                              v354 = v351;
                            }

                            else
                            {
                              v354 = v758;
                            }

                            if (v758 == 0.0)
                            {
                              v355 = v353;
                            }

                            else
                            {
                              v355 = "_kMDItemRenderData";
                            }

                            *v734 = 0;
                            v730 = 0;
                            v356 = v681;
                            MEMORY[0x1EEE9AC00](v343);
                            bzero(v604, v357);
                            db_validate_obj(v356);
                            if (!*v708[0])
                            {
                              if (v618)
                              {
LABEL_540:
                                v377 = atomic_load(v687 + 9);
                                if ((v377 & 3) == 0 && *(v683 + 2915) != 1)
                                {
                                  v658 = v318;
                                  if ((DWORD2(v744[2]) & 0x100040) == 0)
                                  {
                                    if (v746)
                                    {
                                      v378 = CFDictionaryGetValue(v89, @"kMDItemContentType");
                                      if (v378)
                                      {
                                        v379 = v378;
                                        v380 = CFGetTypeID(v378);
                                        if (TypeID == v380)
                                        {
                                          if (CFEqual(v379, @"public.plain-text") || CFEqual(v379, @"public.data") || CFStringHasPrefix(v379, @"dyn.") || v89 && (v547 = CFDictionaryGetValue(v89, @"kMDItemContentTypeTree")) != 0 && (v548 = v547, v549 = CFArrayGetTypeID(), v549 == CFGetTypeID(v548)) && (v770.length = CFArrayGetCount(v548), v770.location = 0, CFArrayContainsValue(v548, v770, @"public.plain-text")))
                                          {
                                            DWORD2(v744[2]) |= 0x40u;
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v372 = v697;
                                  if (v350 && dword_1EBF46ADC >= 5)
                                  {
                                    v578 = *__error();
                                    v579 = _SILogForLogForCategory(4);
                                    if (os_log_type_enabled(v579, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v732 = 67109120;
                                      *&v732[4] = v350;
                                      _os_log_impl(&dword_1C278D000, v579, OS_LOG_TYPE_DEFAULT, "date:%x", v732, 8u);
                                    }

                                    *__error() = v578;
                                    v372 = v697;
                                  }

                                  v381 = v690;
                                  v382 = *(v708[0] + 3);
                                  v383 = v669;
                                  if (v690)
                                  {
                                    v384 = v669 == 0;
                                  }

                                  else
                                  {
                                    v384 = 1;
                                  }

                                  v385 = v668;
                                  if (!v384)
                                  {
                                    v385 = 1;
                                  }

                                  v373 = v693;
                                  if (v385 != 1)
                                  {
                                    goto LABEL_588;
                                  }

                                  *(v708[0] + 3) = v669;
                                  if (v383)
                                  {
                                    goto LABEL_588;
                                  }

                                  v386 = v692;
                                  v387 = CFStringGetLength(v692);
                                  if (CFStringHasPrefix(v386, @"__fpdefault/"))
                                  {
                                    v388 = !v670;
                                    if (v387 < 13)
                                    {
                                      v388 = 1;
                                    }

                                    if (v388)
                                    {
                                      goto LABEL_585;
                                    }

                                    v389 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s%@", "__fpdefault/", v180);
                                    goto LABEL_577;
                                  }

                                  if (!CFStringHasPrefix(v386, @"__fp/"))
                                  {
                                    v382 = -1;
                                    goto LABEL_586;
                                  }

                                  v382 = -1;
                                  v381 = v690;
                                  if (v387 < 6)
                                  {
                                    goto LABEL_588;
                                  }

                                  v650 = v350;
                                  v390 = 0;
                                  *&v732[8] = 0;
                                  *v732 = 0;
                                  v771.length = v387 - 5;
                                  v771.location = 5;
                                  v391 = v692;
                                  if (CFStringFindWithOptions(v692, @"/", v771, 0, v732))
                                  {
                                    v392 = *v732 == -1;
                                  }

                                  else
                                  {
                                    v392 = 1;
                                  }

                                  v393 = v670;
                                  if (v392)
                                  {
                                    v393 = 0;
                                  }

                                  if (v393)
                                  {
                                    v389 = 0;
                                    v772.length = *v732 + 1;
                                    *&v732[8] = *v732 + 1;
                                    *v732 = 0;
                                    v394 = *MEMORY[0x1E695E480];
                                    v772.location = 0;
                                    v395 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v391, v772);
                                    if (!v395)
                                    {
LABEL_576:
                                      v350 = v650;
LABEL_577:
                                      v381 = v690;
                                      if (v389)
                                      {
                                        v650 = v350;
                                        *v734 = 0;
                                        if (CFStringCompare(v389, v692, 0))
                                        {
                                          v397 = v389;
                                        }

                                        else
                                        {
                                          v397 = v180;
                                        }

                                        v350 = v650;
                                        if (!si_get_object_for_identifier_createParentDBO(v372, v28, v397, 0, 0, v734, 0, 1u))
                                        {
                                          if (gSILogLevels[0] >= 5)
                                          {
                                            v596 = v373;
                                            v597 = *__error();
                                            v598 = _SILogForLogForCategory(0);
                                            if (os_log_type_enabled(v598, OS_LOG_TYPE_DEFAULT))
                                            {
                                              *v732 = 134218498;
                                              *&v732[4] = *v734;
                                              *&v732[12] = 2112;
                                              *&v732[14] = v397;
                                              *&v732[22] = 2112;
                                              *&v732[24] = v692;
                                              _os_log_impl(&dword_1C278D000, v598, OS_LOG_TYPE_DEFAULT, "found parent oid: %lld (%@) for %@", v732, 0x20u);
                                            }

                                            *__error() = v597;
                                            v372 = v697;
                                            v373 = v596;
                                            v350 = v650;
                                          }

                                          v398 = *v734;
                                          *(v708[0] + 3) = *v734;
                                          si_indexDeleteDeferredItemsIfItemIncluded(v372, v398);
                                        }

                                        CFRelease(v389);
LABEL_585:
                                        v382 = -1;
LABEL_586:
                                        v381 = v690;
                                        goto LABEL_588;
                                      }

                                      v382 = -1;
LABEL_588:
                                      v399 = v382;
                                      v400 = a12;
                                      if (v666)
                                      {
                                        v401 = 1026;
                                      }

                                      else
                                      {
                                        v401 = 1030;
                                      }

                                      v402 = v401 | HIWORD(v381) | (2 * DWORD2(v744[2])) & 0x20 | (8 * DWORD2(v744[2])) & 0x40 | (2 * DWORD2(v744[2])) & 0x80 | (DWORD2(v744[2]) >> 3) & 0x200;
                                      if (!v675)
                                      {
                                        v402 |= 0x800u;
                                      }

                                      if (v655)
                                      {
                                        v402 |= 0x1000u;
                                      }

                                      if (v648)
                                      {
                                        v402 |= 0x2000u;
                                      }

                                      if (v680)
                                      {
                                        v403 = v402 | 0x4000;
                                      }

                                      else
                                      {
                                        v403 = v402;
                                      }

                                      if (CFEqual(v28, @"com.apple.mobilemail") || CFEqual(v28, @"com.apple.pommesctl"))
                                      {
                                        v404 = v403 | 0x8000;
                                      }

                                      else
                                      {
                                        v404 = v403;
                                      }

                                      *&v732[40] = v747;
                                      *v732 = v89;
                                      *&v732[8] = v746;
                                      *&v732[32] = 0;
                                      *&v732[16] = v749;
                                      *&v732[24] = 0;
                                      *v733 = v748;
                                      v375 = v664;
                                      v405 = si_writeBackAndIndexWithLiveQueryToggle(v372, v688, v732, v664, v399, v708, 0, v404, 0, 0, v661, v660, v350, v763, v400);
                                      if (v405)
                                      {
                                        v406 = v405;
                                        v407 = v405;
                                        v408 = *__error();
                                        v409 = _SILogForLogForCategory(0);
                                        if (os_log_type_enabled(v409, OS_LOG_TYPE_ERROR))
                                        {
                                          *v734 = 136316930;
                                          *&v734[4] = "processOneCS";
                                          *&v734[12] = 1024;
                                          *&v734[14] = 31490;
                                          *&v734[18] = 2112;
                                          *&v734[20] = v28;
                                          *&v734[28] = 2048;
                                          *&v734[30] = v726;
                                          v735 = 1024;
                                          v736 = v658;
                                          v737 = 2048;
                                          v738 = v710[0];
                                          v739 = 2048;
                                          v740 = v710[0];
                                          v741 = 1024;
                                          v742 = v407;
                                          _os_log_error_impl(&dword_1C278D000, v409, OS_LOG_TYPE_ERROR, "%s:%d: Failed to update the index for bundleId:%@, serial:%lld, options:0x%x, oid:0x%lld(%lld), updateErr:%d", v734, 0x46u);
                                        }

                                        *__error() = v408;
                                        if (v406 > 21)
                                        {
                                          if (v406 == 22)
                                          {
                                            goto LABEL_621;
                                          }

                                          if (v406 != 89)
                                          {
LABEL_614:
                                            if (v688[3] == 28 || v406 == 28)
                                            {
                                              v411 = 1;
                                            }

                                            else
                                            {
                                              v411 = 2;
                                            }

                                            si_makeUnavailable(v372, v407, v411, 17, "set attributes err");
                                            goto LABEL_621;
                                          }

                                          *a14 = 1;
                                        }

                                        else
                                        {
                                          if (v406 != -3)
                                          {
                                            if (v406 != 2)
                                            {
                                              goto LABEL_614;
                                            }

LABEL_621:
                                            v374 = v677;
LABEL_539:
                                            v376 = 0;
                                            _SIActivityJournalAdd(v372 + 2192, 15, *v708[0], 0, v726, (v373 >> 4) & 1);
                                            goto LABEL_658;
                                          }

                                          if ((*(v372 + 2458) & 1) == 0)
                                          {
                                            *(v372 + 2458) = 1;
                                            _SIConsistencyCheck(v372);
                                          }
                                        }
                                      }

                                      LODWORD(v730) = 0;
                                      if (CFStringCompare(v28, @"com.apple.mobilemail", 0) == kCFCompareEqualTo)
                                      {
                                        v416 = v721;
                                        v417 = CFDictionaryGetValue(v721, @"com_apple_mail_read");
                                        v418 = CFDictionaryGetValue(v416, @"com_apple_mail_flagged");
                                        v419 = CFDictionaryGetValue(v416, @"com_apple_mail_flagColor");
                                        v420 = CFDictionaryGetValue(v416, @"com_apple_mail_transaction");
                                        if (v420)
                                        {
                                          v421 = v420;
                                          v422 = CFNumberGetTypeID();
                                          if (v422 == CFGetTypeID(v421))
                                          {
                                            CFNumberGetValue(v421, kCFNumberSInt32Type, &v730);
                                          }
                                        }

                                        v423 = v708[0];
                                        if (!v417 && v375 && v708[0])
                                        {
                                          *v732 = 0;
                                          *v734 = 0;
                                          if (db_get_field(v681, v708[0], "com_apple_mail_read", v734, v732))
                                          {
                                            v424 = 0;
                                          }

                                          else if (*(*v734 + 8) == 1)
                                          {
                                            if (**v732)
                                            {
                                              v424 = *MEMORY[0x1E695E4D0];
                                            }

                                            else
                                            {
                                              v424 = 0;
                                            }
                                          }

                                          else
                                          {
                                            v424 = 0;
                                          }

                                          v423 = v708[0];
                                          v428 = v424;
                                        }

                                        else
                                        {
                                          v428 = v417;
                                        }

                                        SIActivityJournalMailCSItem(v372 + 2192, v692, *v423, v730, v726, (v373 >> 4) & 1, v666, v428, v418, v419);
                                        goto LABEL_657;
                                      }

                                      v412 = CFStringCompare(v28, @"com.apple.searchd", 0);
                                      v413 = v692;
                                      v414 = v692;
                                      if (v412)
                                      {
LABEL_626:
                                        v415 = v414;
                                        SIActivityJournalCSItem(v372 + 2192, v414, *v708[0], v730, v726, (v373 >> 4) & 1, v666);
                                        if (v415 != v413)
                                        {
                                          CFRelease(v415);
                                        }

LABEL_657:
                                        db_validate_obj(v681);
                                        v376 = 1;
                                        v374 = v677;
LABEL_658:
                                        v439 = v376;
                                        if (v708[0])
                                        {
                                          free(v708[0]);
                                        }

                                        cleanupPreProcContext(v744);
                                        v440 = v666;
                                        if (v375)
                                        {
                                          CFRelease(v375);
                                        }

                                        if (v743 != v374)
                                        {
                                          free(v374);
                                        }

                                        v441 = v721;
                                        v442 = CFDictionaryGetValue(v721, @"_kMDItemBundleID");
                                        v659 = v442;
                                        if (!v440 || !CFEqual(@"com.apple.MobileAddressBook", v442))
                                        {
                                          goto LABEL_728;
                                        }

                                        v662 = v439;
                                        v616 = CFDictionaryGetValue(v441, @"_kMDItemExternalID");
                                        v443 = CFDictionaryGetValue(v441, @"_kMDItemIncomingCounts");
                                        v634 = CFDictionaryGetValue(v441, @"_kMDItemOutgoingCounts");
                                        v444 = CFDictionaryGetValue(v441, @"_kMDItemIncomingMailCounts");
                                        v445 = CFDictionaryGetValue(v441, @"_kMDItemOutgoingMailCounts");
                                        v446 = CFDictionaryGetValue(v441, @"_kMDItemIncomingSMSCounts");
                                        v447 = CFDictionaryGetValue(v441, @"_kMDItemOutgoingSMSCounts");
                                        v448 = CFDictionaryGetValue(v441, @"_kMDItemIncomingCalendarCounts");
                                        v449 = CFDictionaryGetValue(v441, @"_kMDItemOutgoingCalendarCounts");
                                        v611 = CFDictionaryGetValue(v441, @"_kMDItemIncomingFileProviderCounts");
                                        v613 = CFDictionaryGetValue(v441, @"_kMDItemOutgoingFileProviderCounts");
                                        v635 = v443;
                                        v450 = v443 ? CFArrayGetCount(v443) : 0;
                                        v451 = v450;
                                        v452 = v634 ? CFArrayGetCount(v634) : 0;
                                        v643 = v452;
                                        v453 = v445;
                                        v454 = v444 ? CFArrayGetCount(v444) : 0;
                                        v455 = v454;
                                        v625 = v446;
                                        if (v453)
                                        {
                                          v456 = CFArrayGetCount(v453);
                                          v457 = v625;
                                          v458 = v456;
                                        }

                                        else
                                        {
                                          v457 = v446;
                                          v458 = 0;
                                        }

                                        v439 = v662;
                                        v640 = v458;
                                        v459 = v457 ? CFArrayGetCount(v457) : 0;
                                        v639 = v459;
                                        v460 = v447 ? CFArrayGetCount(v447) : 0;
                                        v638 = v460;
                                        v626 = v453;
                                        v461 = v448 ? CFArrayGetCount(v448) : 0;
                                        v636 = v461;
                                        v462 = v611;
                                        v627 = v444;
                                        v463 = v449 ? CFArrayGetCount(v449) : 0;
                                        v633 = v463;
                                        v464 = v613;
                                        v465 = v462 ? CFArrayGetCount(v462) : 0;
                                        v631 = v465;
                                        v629 = v616;
                                        v466 = v464 ? CFArrayGetCount(v464) : 0;
                                        if (!v629 || !v451 && !v643 && !v455 && !v640 && !v639 && !v638 && !v636 && !v633 && !v631 && !v466)
                                        {
LABEL_728:
                                          if (v675)
                                          {
                                            goto LABEL_729;
                                          }

                                          v491 = v659;
                                          if (CFEqual(@"com.apple.MobileAddressBook", v659))
                                          {
                                            v492 = CFDictionaryGetValue(v441, @"_kMDItemExternalID");
                                            v493 = CFDictionaryGetValue(v441, @"kMDItemEmailAddresses");
                                            if (v493)
                                            {
                                              v494 = v493;
                                              v495 = CFGetTypeID(v493);
                                              if (v495 == CFArrayGetTypeID())
                                              {
                                                v496 = CFArrayGetCount(v494);
                                                if (v496)
                                                {
                                                  if (v492)
                                                  {
                                                    v497 = v496;
                                                    v498 = v439;
                                                    v499 = safeCFStringCopy(v492);
                                                    os_unfair_lock_lock(&sEmailAddressMappingLock);
                                                    if (!sKnownEmailAdresses)
                                                    {
                                                      sKnownEmailAdresses = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                                    }

                                                    if (v497 >= 1)
                                                    {
                                                      v500 = 0;
                                                      v501 = *MEMORY[0x1E695E480];
                                                      do
                                                      {
                                                        ValueAtIndex = CFArrayGetValueAtIndex(v494, v500);
                                                        v503 = CFStringGetLength(ValueAtIndex);
                                                        v504 = CFStringCreateMutableCopy(v501, v503, ValueAtIndex);
                                                        CFDictionarySetValue(sKnownEmailAdresses, v504, v499);
                                                        CFRelease(v504);
                                                        ++v500;
                                                      }

                                                      while (v497 != v500);
                                                    }

                                                    os_unfair_lock_unlock(&sEmailAddressMappingLock);
                                                    CFRelease(v499);
                                                    v439 = v498;
                                                  }
                                                }
                                              }
                                            }

                                            goto LABEL_729;
                                          }

                                          v505 = v439;
                                          v506 = CFDictionaryGetValue(v441, @"kMDItemAuthorContactIdentifiers");
                                          v507 = CFDictionaryGetValue(v441, @"kMDItemRecipientContactIdentifiers");
                                          if (v506)
                                          {
                                            v508 = CFArrayGetTypeID();
                                            if (v508 != CFGetTypeID(v506))
                                            {
                                              v506 = 0;
                                            }
                                          }

                                          v509 = v697;
                                          if (v507)
                                          {
                                            v510 = CFArrayGetTypeID();
                                            if (v510 != CFGetTypeID(v507))
                                            {
                                              v507 = 0;
                                            }
                                          }

                                          else
                                          {
                                            v507 = 0;
                                          }

                                          v439 = v505;
                                          if (v506 | v507)
                                          {
                                            v511 = CFDictionaryGetValue(v441, @"kMDItemContentCreationDate");
                                            if (v511)
                                            {
                                              v512 = v511;
                                              v513 = CFDateGetTypeID();
                                              v42 = v513 == CFGetTypeID(v512);
                                              v439 = v505;
                                              if (v42)
                                              {
                                                updatedRelatedPersons(v509, v506, v507, v512, v491);
                                              }
                                            }
                                          }

                                          if (dword_1EBF46ADC >= 5)
                                          {
                                            v583 = *__error();
                                            v584 = _SILogForLogForCategory(4);
                                            if (os_log_type_enabled(v584, OS_LOG_TYPE_DEFAULT))
                                            {
                                              LODWORD(v744[0]) = 138412546;
                                              *(v744 + 4) = sSIMeEmailAddresses;
                                              WORD6(v744[0]) = 2112;
                                              *(v744 + 14) = v506;
                                              _os_log_impl(&dword_1C278D000, v584, OS_LOG_TYPE_DEFAULT, "~~~ sSIMeEmailAddresses: %@, authorPersons: %@", v744, 0x16u);
                                            }

                                            *__error() = v583;
                                            v439 = v505;
                                            if (v506)
                                            {
LABEL_729:
                                              if (v687)
                                              {
                                                v478 = v439;
                                              }

                                              else
                                              {
                                                v478 = 0;
                                              }

                                              if (v478 != 1 || (v479 = atomic_load(v687 + 9), (v479 & 2) != 0) || (*(v683 + 2915) & 1) != 0 || !*(v683 + 3376))
                                              {
                                                v55 = v697;
                                                v185 = v695;
                                                if (dword_1EBF46ADC >= 5)
                                                {
                                                  v558 = *__error();
                                                  v559 = _SILogForLogForCategory(4);
                                                  if (os_log_type_enabled(v559, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    LOWORD(v744[0]) = 0;
                                                    _os_log_impl(&dword_1C278D000, v559, OS_LOG_TYPE_DEFAULT, "Flush not required", v744, 2u);
                                                  }

                                                  *__error() = v558;
                                                  v184 = v688;
                                                  v183 = v439;
                                                  v105 = 0;
LABEL_875:
                                                  v55 = v697;
                                                  goto LABEL_285;
                                                }

                                                v184 = v688;
                                                v183 = v439;
                                              }

                                              else
                                              {
                                                v55 = v697;
                                                v480 = atomic_fetch_or((v697 + 1448), 2u);
                                                v185 = v695;
                                                if (v480)
                                                {
                                                  v481 = atomic_load((v55 + 1448));
                                                  if ((v481 & 2) != 0)
                                                  {
                                                    v482 = atomic_load((v55 + 1452));
                                                    v105 = v482 == 0;
                                                    v183 = 1;
                                                    v184 = v688;
                                                    goto LABEL_742;
                                                  }
                                                }

                                                else
                                                {
                                                  if (dword_1EBF46ADC >= 5)
                                                  {
                                                    v592 = *__error();
                                                    v593 = _SILogForLogForCategory(4);
                                                    if (os_log_type_enabled(v593, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      LOWORD(v744[0]) = 0;
                                                      _os_log_impl(&dword_1C278D000, v593, OS_LOG_TYPE_DEFAULT, "Schedule index flush", v744, 2u);
                                                    }

                                                    *__error() = v592;
                                                    v55 = v697;
                                                    v185 = v695;
                                                  }

                                                  v516 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
                                                  v517 = v688;
                                                  *v516 = v55;
                                                  v516[1] = v517;
                                                  LODWORD(v517) = *(v517 + 56);
                                                  *(v516 + 4) = 2;
                                                  *(v516 + 5) = v517;
                                                  si_indexDeleteDeferredItems(v55);
                                                  v516[5] = copyHoldQueue(*v516);
                                                  v516[11] = si_scheduler_suspend_async(*(v55 + 872));
                                                  if (!v516[9] && !*(v516 + 12))
                                                  {
                                                    v545 = *(v55 + 2360);
                                                    if (v545)
                                                    {
                                                      v546 = *(v545 + 64);
                                                      if (v546)
                                                      {
                                                        *(v516 + 12) = v546(*(v545 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 31927, "_Bool processOneCS(SIRef, int64_t, oid_t, CFStringRef, CFStringRef, int, MDPlistObject, MDPlistObject, CFStringRef, size_t, CFAllocatorRef, _Bool, dispatch_group_t, _Bool *, Boolean *)");
                                                      }
                                                    }
                                                  }

                                                  si_enqueue_work(*(v55 + 1040), _flushCache, v516);
                                                }

                                                v183 = 1;
                                                v184 = v688;
                                              }

LABEL_741:
                                              v105 = 0;
                                              goto LABEL_742;
                                            }
                                          }

                                          else if (v506)
                                          {
                                            goto LABEL_729;
                                          }

                                          if (!sSIMeEmailAddresses)
                                          {
                                            goto LABEL_729;
                                          }

                                          v514 = CFDictionaryGetValue(v441, @"kMDItemAuthorEmailAddresses");
                                          if (CFEqual(@"com.apple.mobilecal", v659))
                                          {
                                            if (!v514)
                                            {
                                              goto LABEL_729;
                                            }

                                            v515 = CFGetTypeID(v514);
                                            if (v515 != CFArrayGetTypeID())
                                            {
                                              goto LABEL_729;
                                            }
                                          }

                                          else
                                          {
                                            if (!v514)
                                            {
                                              goto LABEL_729;
                                            }

                                            v518 = CFGetTypeID(v514);
                                            if (v518 != CFArrayGetTypeID() || CFArrayGetCount(v514) != 1)
                                            {
                                              goto LABEL_729;
                                            }
                                          }

                                          v519 = CFArrayGetValueAtIndex(v514, 0);
                                          os_unfair_lock_lock(&sSIMeEmailAddressesLock);
                                          v520 = CFSetContainsValue(sSIMeEmailAddresses, v519);
                                          os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
                                          v521 = CFDictionaryGetValue(v441, @"kMDItemPrimaryRecipientEmailAddresses");
                                          v522 = CFDictionaryGetValue(v441, @"kMDItemAdditionalRecipientEmailAddresses");
                                          v523 = CFDictionaryGetValue(v441, @"kMDItemContentCreationDate");
                                          if (!v523)
                                          {
                                            v523 = CFDictionaryGetValue(v441, @"kMDItemStartDate");
                                          }

                                          v637 = v523;
                                          if (v521 && (v524 = CFGetTypeID(v521), v524 == CFArrayGetTypeID()))
                                          {
                                            v525 = CFArrayGetCount(v521);
                                          }

                                          else
                                          {
                                            v525 = 0;
                                          }

                                          v526 = v520;
                                          v528 = v522 && (v527 = CFGetTypeID(v522), v527 == CFArrayGetTypeID()) && CFArrayGetCount(v522) != 0;
                                          v439 = v505;
                                          if (v526)
                                          {
                                            if (v528 + v525 && v637)
                                            {
                                              v529 = CFArrayCreateMutable(*MEMORY[0x1E695E480], v528 + v525, MEMORY[0x1E695E9C0]);
                                              os_unfair_lock_lock(&sEmailAddressMappingLock);
                                              if (sKnownEmailAdresses)
                                              {
                                                if (v525 >= 1)
                                                {
                                                  for (i = 0; i != v525; ++i)
                                                  {
                                                    v531 = CFArrayGetValueAtIndex(v521, i);
                                                    v532 = CFDictionaryGetValue(sKnownEmailAdresses, v531);
                                                    if (v532)
                                                    {
                                                      CFArrayAppendValue(v529, v532);
                                                    }
                                                  }
                                                }

                                                v439 = v505;
                                                if (v528)
                                                {
                                                  v533 = CFArrayGetValueAtIndex(v522, 0);
                                                  v534 = CFDictionaryGetValue(sKnownEmailAdresses, v533);
                                                  if (v534)
                                                  {
                                                    CFArrayAppendValue(v529, v534);
                                                  }
                                                }
                                              }

                                              os_unfair_lock_unlock(&sEmailAddressMappingLock);
                                              if (v529)
                                              {
                                                v535 = CFGetTypeID(v529);
                                                if (v535 == CFArrayGetTypeID())
                                                {
                                                  if (CFArrayGetCount(v529))
                                                  {
                                                    v536 = CFDateGetTypeID();
                                                    if (v536 == CFGetTypeID(v637))
                                                    {
                                                      if (dword_1EBF46ADC >= 5)
                                                      {
                                                        v599 = *__error();
                                                        v600 = _SILogForLogForCategory(4);
                                                        if (os_log_type_enabled(v600, OS_LOG_TYPE_DEFAULT))
                                                        {
                                                          LODWORD(v744[0]) = 138412290;
                                                          *(v744 + 4) = v529;
                                                          _os_log_impl(&dword_1C278D000, v600, OS_LOG_TYPE_DEFAULT, "~~~ authorIsMe, recipients: %@", v744, 0xCu);
                                                        }

                                                        *__error() = v599;
                                                      }

                                                      updatedRelatedPersons(v697, 0, v529, v637, v659);
                                                      v439 = v505;
                                                    }
                                                  }
                                                }
                                              }

                                              CFRelease(v529);
                                            }

                                            goto LABEL_729;
                                          }

                                          if (!(v525 + v528) || !v637)
                                          {
                                            goto LABEL_729;
                                          }

                                          os_unfair_lock_lock(&sSIMeEmailAddressesLock);
                                          if (v525 < 1)
                                          {
                                            if (!v528)
                                            {
                                              goto LABEL_867;
                                            }
                                          }

                                          else
                                          {
                                            v537 = 1;
                                            do
                                            {
                                              v538 = v537;
                                              v539 = sSIMeEmailAddresses;
                                              v540 = CFArrayGetValueAtIndex(v521, v537 - 1);
                                              v541 = CFSetContainsValue(v539, v540);
                                              v537 = v538 + 1;
                                              if (v541)
                                              {
                                                v542 = 0;
                                              }

                                              else
                                              {
                                                v542 = v538 < v525;
                                              }
                                            }

                                            while (v542);
                                            if (v541)
                                            {
                                              v543 = 1;
                                            }

                                            else
                                            {
                                              v543 = !v528;
                                            }

                                            if (v543)
                                            {
LABEL_856:
                                              if (v541 && sKnownEmailAdresses)
                                              {
                                                v552 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
                                                v553 = CFDictionaryGetValue(sKnownEmailAdresses, v519);
                                                os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
                                                if (v553)
                                                {
                                                  CFArrayAppendValue(v552, v553);
                                                }

                                                if (v552)
                                                {
                                                  v554 = CFGetTypeID(v552);
                                                  if (v554 == CFArrayGetTypeID())
                                                  {
                                                    if (CFArrayGetCount(v552))
                                                    {
                                                      v555 = CFDateGetTypeID();
                                                      if (v555 == CFGetTypeID(v637))
                                                      {
                                                        if (dword_1EBF46ADC >= 5)
                                                        {
                                                          v601 = *__error();
                                                          v602 = _SILogForLogForCategory(4);
                                                          if (os_log_type_enabled(v602, OS_LOG_TYPE_DEFAULT))
                                                          {
                                                            LODWORD(v744[0]) = 138412290;
                                                            *(v744 + 4) = v552;
                                                            _os_log_impl(&dword_1C278D000, v602, OS_LOG_TYPE_DEFAULT, "~~~ !authorIsMe, authorContacts: %@", v744, 0xCu);
                                                          }

                                                          *__error() = v601;
                                                        }

                                                        updatedRelatedPersons(v697, v552, 0, v637, v659);
                                                      }
                                                    }
                                                  }
                                                }

                                                CFRelease(v552);
                                                goto LABEL_868;
                                              }

LABEL_867:
                                              os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
LABEL_868:
                                              v439 = v505;
                                              goto LABEL_729;
                                            }
                                          }

                                          v550 = sSIMeEmailAddresses;
                                          v551 = CFArrayGetValueAtIndex(v522, 0);
                                          v541 = CFSetContainsValue(v550, v551);
                                          goto LABEL_856;
                                        }

                                        v630 = v466;
                                        v641 = v455;
                                        v644 = v451;
                                        *v732 = 0;
                                        *&v732[8] = v732;
                                        *&v732[16] = 0x2000000000;
                                        v467 = *MEMORY[0x1E695E480];
                                        *&v732[24] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
                                        initCountsArray_block_invoke(&__block_literal_global_634, *(*&v732[8] + 24), 1);
                                        *v734 = 0;
                                        *&v734[8] = v734;
                                        *&v734[16] = 0x2000000000;
                                        *&v734[24] = 0;
                                        v710[0] = 0;
                                        v710[1] = v710;
                                        v710[2] = 0x2000000000;
                                        v711 = 0;
                                        os_unfair_lock_lock(&sContactCountsLock);
                                        v468 = sKnownContactCounts;
                                        if (!sKnownContactCounts)
                                        {
                                          v468 = CFDictionaryCreateMutable(v467, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                          sKnownContactCounts = v468;
                                        }

                                        v469 = CFDictionaryGetValue(v468, v629);
                                        v470 = v469;
                                        v620 = v467;
                                        if (v469 && (v471 = CFGetTypeID(v469), v471 == CFArrayGetTypeID()))
                                        {
                                          v472 = CFArrayGetCount(v470);
                                          v730 = 0;
                                          if (v472 >= 1)
                                          {
                                            v473 = CFArrayGetValueAtIndex(v470, 0);
                                            CFNumberGetValue(v473, kCFNumberSInt64Type, &v730);
                                            v474 = 1;
                                            v475 = v730;
LABEL_715:
                                            v612 = 0;
                                            v708[0] = 0;
                                            v708[1] = v708;
                                            v708[2] = 0x2000000000;
                                            v709 = 1;
                                            v698[0] = MEMORY[0x1E69E9820];
                                            v698[1] = 0x40000000;
                                            v699 = __processOneCS_block_invoke_1444;
                                            v700 = &unk_1E8192108;
                                            v701 = v734;
                                            v702 = v710;
                                            v707 = v474;
                                            v703 = v732;
                                            v704 = v708;
                                            v705 = v475;
                                            v706 = v470;
                                            v610 = safeCFStringCopy(v629);
                                            v615 = v610;
                                            v476 = v644;
                                            v699(v698, v635, v644);
                                            v699(v698, v634, v643);
                                            v699(v698, v627, v641);
                                            v699(v698, v626, v640);
                                            v699(v698, v625, v639);
                                            v699(v698, v447, v638);
                                            v699(v698, v448, v636);
                                            v699(v698, v449, v633);
                                            v699(v698, v462, v631);
                                            v699(v698, v464, v630);
                                            v477 = CFNumberCreate(v620, kCFNumberSInt64Type, (*&v734[8] + 24));
                                            CFArraySetValueAtIndex(*(*&v732[8] + 24), v612, v477);
                                            CFRelease(v477);
                                            CFDictionarySetValue(sKnownContactCounts, v610, *(*&v732[8] + 24));
                                            os_unfair_lock_unlock(&sContactCountsLock);
                                            if (((v476 | 4) != 4 || (v643 | 4) != 4 || (v641 | 4) != 4 || (v640 | 4) != 4 || (v639 | 4) != 4 || (v638 | 4) != 4 || (v636 | 4) != 4 || (v633 | 4) != 4 || (v631 | 4) != 4 || (v630 | 4) != 4) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
                                            {
                                              CStringPtr = CFStringGetCStringPtr(v629, 0x8000100u);
                                              LODWORD(v744[0]) = 136317698;
                                              *(v744 + 4) = CStringPtr;
                                              WORD6(v744[0]) = 2048;
                                              *(v744 + 14) = v476;
                                              WORD3(v744[1]) = 2048;
                                              *(&v744[1] + 1) = v643;
                                              LOWORD(v744[2]) = 2048;
                                              *(&v744[2] + 2) = v641;
                                              WORD5(v744[2]) = 2048;
                                              *(&v744[2] + 12) = v640;
                                              WORD2(v744[3]) = 2048;
                                              *(&v744[3] + 6) = v639;
                                              HIWORD(v744[3]) = 2048;
                                              *&v744[4] = v638;
                                              WORD4(v744[4]) = 2048;
                                              *(&v744[4] + 10) = v636;
                                              WORD1(v744[5]) = 2048;
                                              *(&v744[5] + 4) = v633;
                                              WORD6(v744[5]) = 2048;
                                              *(&v744[5] + 14) = v631;
                                              WORD3(v744[6]) = 2048;
                                              *(&v744[6] + 1) = v630;
                                              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "incoming or outgoing counts size mismatch: identifier=%s incomingArraySize=%lld outgoingArraySize=%lld incomingMailArraySize=%lld outgoingMailArraySize=%lld incomingSMSArraySize=%lld outgoingSMSArraySize=%lld incomingCalendarArraySize=%lld outgoingCalendarArraySize=%lld incomingFileProviderArraySize=%lld outgoingFileProviderArraySize=%lld", v744, 0x70u);
                                            }

                                            CFRelease(v615);
                                            CFRelease(*(*&v732[8] + 24));
                                            _Block_object_dispose(v708, 8);
                                            _Block_object_dispose(v710, 8);
                                            _Block_object_dispose(v734, 8);
                                            _Block_object_dispose(v732, 8);
                                            v439 = v662;
                                            goto LABEL_728;
                                          }

                                          v475 = 0;
                                        }

                                        else
                                        {
                                          v475 = 0;
                                          v730 = 0;
                                        }

                                        v474 = 0;
                                        goto LABEL_715;
                                      }

                                      if (CFStringCompare(v692, @"com.apple.mobilemail", 0))
                                      {
                                        v425 = CFStringCompare(v413, @"com.apple.searchstressattr", 0);
                                        v414 = v413;
                                        if (v425)
                                        {
                                          goto LABEL_626;
                                        }

                                        v426 = v721;
                                        v427 = @"_kMDItemStateInfo_com.apple.searchstressattr.state.test";
                                      }

                                      else
                                      {
                                        v426 = v721;
                                        v427 = @"_kMDItemStateInfo_com.apple.mobilemail.contentIndex";
                                      }

                                      v429 = CFDictionaryGetValue(v426, v427);
                                      v430 = v429;
                                      v413 = v692;
                                      v414 = v692;
                                      if (v429)
                                      {
                                        v431 = CFGetTypeID(v429);
                                        v432 = CFDataGetTypeID();
                                        v414 = v413;
                                        if (v431 == v432)
                                        {
                                          v433 = CFDataGetLength(v430);
                                          BytePtr = CFDataGetBytePtr(v430);
                                          v414 = v413;
                                          if (v433)
                                          {
                                            v414 = v413;
                                            if (BytePtr)
                                            {
                                              v435 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], BytePtr, v433, 0x8000100u, 0);
                                              v414 = v413;
                                              if (v435)
                                              {
                                                v436 = v435;
                                                v437 = CFStringCreateWithFormat(0, 0, @"%@ %@", v413, v435);
                                                if (v437)
                                                {
                                                  v438 = v437;
                                                }

                                                else
                                                {
                                                  v438 = v413;
                                                }

                                                CFRelease(v436);
                                                v414 = v438;
                                              }
                                            }
                                          }
                                        }
                                      }

                                      goto LABEL_626;
                                    }

                                    v396 = v395;
                                    v390 = CFStringCreateWithFormat(v394, 0, @"%@%@", v395, v180);
                                    CFRelease(v396);
                                  }

                                  v389 = v390;
                                  goto LABEL_576;
                                }

                                v566 = __si_assert_copy_extra_661(-1);
                                v561 = v566;
                                v567 = "";
                                if (v566)
                                {
                                  v567 = v566;
                                }

                                *v606 = "ContentIndexWritable(content_index)";
                                v607 = v567;
                                v563 = 31374;
LABEL_888:
                                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", v563, *v606, v607);
                                free(v561);
                                if (__valid_fs(-1))
                                {
                                  v568 = 2989;
                                }

                                else
                                {
                                  v568 = 3072;
                                }

                                *v568 = -559038737;
                                abort();
                              }

LABEL_536:
                              v370 = *__error();
                              v371 = _SILogForLogForCategory(0);
                              if (os_log_type_enabled(v371, OS_LOG_TYPE_ERROR))
                              {
                                *v732 = 136316930;
                                *&v732[4] = "processOneCS";
                                *&v732[12] = 1024;
                                *&v732[14] = 31517;
                                *&v732[18] = 2112;
                                *&v732[20] = v28;
                                *&v732[28] = 2112;
                                *&v732[30] = v692;
                                *&v732[38] = 2048;
                                *&v732[40] = v726;
                                *&v732[48] = 1024;
                                *&v732[50] = v318;
                                *&v732[54] = 2048;
                                *v733 = v710[0];
                                *&v733[8] = 2048;
                                *&v733[10] = v710[0];
                                _os_log_error_impl(&dword_1C278D000, v371, OS_LOG_TYPE_ERROR, "%s:%d: No write back for bundleId:%@, identifier:%@ serial:%lld, options:0x%x, oid:0x%lld(%lld)", v732, 0x4Au);
                              }

                              *__error() = v370;
                              v372 = v697;
                              v373 = v693;
                              v374 = v677;
                              v375 = v664;
                              goto LABEL_539;
                            }

                            v619 = &v608;
                            v650 = v350;
                            v358 = db_get_field(v356, v708[0], v355, &v730, v734);
                            if (v358)
                            {
                              v658 = v318;
                              v679 = v180;
                              v359 = *__error();
                              v360 = _SILogForLogForCategory(4);
                              v361 = 2 * (dword_1EBF46ADC < 4);
                              if (os_log_type_enabled(v360, v361))
                              {
                                *v732 = 0;
                                _os_log_impl(&dword_1C278D000, v360, v361, "db didn't find any existing values", v732, 2u);
                              }

                              *__error() = v359;
                              v362 = 0;
                              v180 = v679;
                              v318 = v658;
                            }

                            else
                            {
                              v362 = *(v730 + 8);
                            }

                            v363 = v618;
                            LODWORD(v729) = 0;
                            if (markItemAsRenderedOrEngaged(v604, *v734, v362, &v729, v358 == 0, v354))
                            {
                              v365 = db_add_field(v681, v708, 1u, v355, 0, 0, 14, v604, v364, v729);
                              v350 = v650;
                              if (!v365)
                              {
                                goto LABEL_540;
                              }

                              v366 = *__error();
                              v367 = _SILogForLogForCategory(4);
                              if (!os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
                              {
LABEL_535:
                                *__error() = v366;
                                if (v363)
                                {
                                  goto LABEL_540;
                                }

                                goto LABEL_536;
                              }

                              *v732 = 136315394;
                              *&v732[4] = "processOneCS";
                              *&v732[12] = 1024;
                              *&v732[14] = 31364;
                              v368 = "%s:%d: db get field failed in counts code";
                            }

                            else
                            {
                              v366 = *__error();
                              v367 = _SILogForLogForCategory(4);
                              v369 = os_log_type_enabled(v367, OS_LOG_TYPE_ERROR);
                              v350 = v650;
                              if (!v369)
                              {
                                goto LABEL_535;
                              }

                              *v732 = 136315394;
                              *&v732[4] = "processOneCS";
                              *&v732[12] = 1024;
                              *&v732[14] = 31356;
                              v368 = "%s:%d: marking item as rendered/engaged failed";
                            }

                            _os_log_error_impl(&dword_1C278D000, v367, OS_LOG_TYPE_ERROR, v368, v732, 0x12u);
                            goto LABEL_535;
                          }

                          v276 = 1;
                          v281 = 0;
LABEL_436:
                          v279 = 0;
                          goto LABEL_437;
                        }
                      }

                      v252 = v251;
                      *v732 = 0;
                      v253 = CFGetTypeID(v251);
                      if (v253 == CFNumberGetTypeID())
                      {
                        v254 = v252;
                      }

                      else
                      {
                        v255 = CFGetTypeID(v252);
                        if (v255 != CFArrayGetTypeID())
                        {
LABEL_381:
                          *&v744[2] = *MEMORY[0x1E695E4D0];
                          *(&v744[1] + 1) = *v732;
                          goto LABEL_382;
                        }

                        if (CFArrayGetCount(v252))
                        {
                          v254 = CFArrayGetValueAtIndex(v252, 0);
                        }

                        else
                        {
                          v254 = v252;
                        }
                      }

                      CFNumberGetValue(v254, kCFNumberCFIndexType, v732);
                      goto LABEL_381;
                    }

                    *(v247 + 10113) = 1;
                    v249 = @"kSPHasText";
                  }

                  SISetProperty(v247, v249, *MEMORY[0x1E695E4D0]);
                  goto LABEL_367;
                }

                v248 = DWORD2(v744[2]) | 0x80000;
              }

              DWORD2(v744[2]) = v248;
              goto LABEL_357;
            }

            if (dword_1EBF46ADC < 5)
            {
              goto LABEL_248;
            }

            v191 = *__error();
            v192 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v744[0]) = 138412546;
              *(v744 + 4) = v28;
              WORD6(v744[0]) = 2112;
              *(v744 + 14) = v692;
              _os_log_impl(&dword_1C278D000, v192, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Index update bundleID:%@ identifier:%@", v744, 0x16u);
            }

            *__error() = v191;
LABEL_277:
            v55 = v697;
            goto LABEL_248;
          }

          if (isAppleInternalInstall_onceToken != -1)
          {
            dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
          }

          if (isAppleInternalInstall_isInternalInstall == 1)
          {
            v186 = *__error();
            v187 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v744[0]) = 138412546;
              *(v744 + 4) = v28;
              WORD6(v744[0]) = 2112;
              *(v744 + 14) = v692;
              _os_log_impl(&dword_1C278D000, v187, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Index Add bundleID:%@ identifier:%@", v744, 0x16u);
            }
          }

          else
          {
            if (dword_1EBF46ADC < 5)
            {
              goto LABEL_245;
            }

            v186 = *__error();
            v564 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v564, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v744[0]) = 138412546;
              *(v744 + 4) = v28;
              WORD6(v744[0]) = 2112;
              *(v744 + 14) = v692;
              _os_log_impl(&dword_1C278D000, v564, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Index Add bundleID:%@ identifier:%@", v744, 0x16u);
            }

            v55 = v697;
          }

          *__error() = v186;
LABEL_245:
          if (v106 && CFDictionaryGetValue(v106, @"kMDItemSupportFileType"))
          {
            goto LABEL_248;
          }

          if (CFDictionaryGetValue(v106, @"kMDItemKind"))
          {
            goto LABEL_248;
          }

          v208 = CFDictionaryGetValue(v106, @"kMDItemContentType");
          if (!v208)
          {
            goto LABEL_248;
          }

          v209 = v208;
          if (CFGetTypeID(v208) != TypeID || !CFStringGetLength(v209) || CFStringCompare(v209, @"public.item", 1uLL) == kCFCompareEqualTo || CFStringHasPrefix(v209, @"dyn"))
          {
            goto LABEL_248;
          }

          v210 = CopyUTITypeDescriptionDictionary(v55, v209);
          v211 = *MEMORY[0x1E695E738];
          if (v210)
          {
            v212 = v210;
          }

          else
          {
            v212 = *MEMORY[0x1E695E738];
          }

          v213 = CFDictionaryGetTypeID();
          if (v213 == CFGetTypeID(v212))
          {
            CFDictionarySetValue(v106, @"kMDItemKind", v212);
          }

          CFRelease(v212);
          goto LABEL_277;
        }

        if (v671)
        {
          v183 = 1;
          v184 = 0;
          v105 = 0;
          v185 = v695;
LABEL_742:
          v483 = v184;
          v484 = threadData[9 * v715 + 1] + 320 * v714;
          *(v484 + 312) = v694;
          v485 = *(v484 + 232);
          if (v485)
          {
            v485(*(v484 + 288));
          }

          dropThreadId(v715, 0, v185 + 1);
          if (v483)
          {
            v486 = v183;
          }

          else
          {
            v486 = 1;
          }

          if ((v486 & 1) == 0)
          {
            v487 = si_getLiveIndex(*(v55 + 1384));
            _CIUpdateContent(v487, 0, 0, 0, 0, 0, 0, 0, 0.0, 0, 0, 0, 0, 0, (*(v55 + 6584) >> 25) & 3, lowDiskSpaceCallback, v55, 0, 0, *(v55 + 2464), v691, 0);
          }

          goto LABEL_749;
        }

        v185 = v695;
        if (isAppleInternalInstall_onceToken != -1)
        {
          dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
          v179 = v663;
        }

        v188 = v179;
        if (isAppleInternalInstall_isInternalInstall == 1)
        {
          v189 = *__error();
          v190 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v744[0]) = 138412546;
            *(v744 + 4) = v28;
            WORD6(v744[0]) = 2112;
            *(v744 + 14) = v692;
            _os_log_impl(&dword_1C278D000, v190, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Deleting item, bundleID:%@ identifier:%@", v744, 0x16u);
          }
        }

        else
        {
          if (dword_1EBF46ADC < 5)
          {
            goto LABEL_263;
          }

          v189 = *__error();
          v565 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v565, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v744[0]) = 138412546;
            *(v744 + 4) = v28;
            WORD6(v744[0]) = 2112;
            *(v744 + 14) = v692;
            _os_log_impl(&dword_1C278D000, v565, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Deleting item, bundleID:%@ identifier:%@", v744, 0x16u);
          }

          v55 = v697;
          v185 = v695;
        }

        *__error() = v189;
LABEL_263:
        *&v744[0] = 0;
        if (!si_get_object_for_identifier_createParentDBO(v55, v28, v692, 0, 0, v744, 0, 0))
        {
          _si_delete_attributes_inner(v55, *&v744[0], (v693 >> 4) & 1, 0, v691, 0, v188);
          si_finish_text_store_deletions(v55);
        }

        v183 = 1;
        v184 = 0;
        goto LABEL_741;
      }

      v135 = *__error();
      v136 = _SILogForLogForCategory(4);
      v137 = dword_1EBF46ADC < 3;
      if (os_log_type_enabled(v136, (dword_1EBF46ADC < 3)))
      {
        LODWORD(v744[0]) = 138412802;
        *(v744 + 4) = v692;
        WORD6(v744[0]) = 2112;
        *(v744 + 14) = v28;
        WORD3(v744[1]) = 1024;
        DWORD2(v744[1]) = v125;
        _os_log_impl(&dword_1C278D000, v136, v137, "*warn* Failed to fetch the dbo for identifier:%@, bundleID:%@, rc:%d", v744, 0x1Cu);
      }

      *__error() = v135;
LABEL_149:
      v127 = v693;
      v126 = 0;
      goto LABEL_207;
    }

    *v732 = 0;
    v132 = db_get_field(*v72, v727, "kMDItemRelatedUniqueIdentifier", v732, 0);
    if (v132)
    {
      v133 = v132;
      if (v132 == 2)
      {
        v134 = 0;
        goto LABEL_178;
      }

      v151 = *__error();
      v155 = _SILogForLogForCategory(4);
      v156 = dword_1EBF46ADC < 3;
      if (os_log_type_enabled(v155, (dword_1EBF46ADC < 3)))
      {
        LODWORD(v744[0]) = 136315906;
        *(v744 + 4) = "kMDItemRelatedUniqueIdentifier";
        WORD6(v744[0]) = 2112;
        *(v744 + 14) = v692;
        WORD3(v744[1]) = 2112;
        *(&v744[1] + 1) = v28;
        LOWORD(v744[2]) = 1024;
        *(&v744[2] + 2) = v133;
        _os_log_impl(&dword_1C278D000, v155, v156, "*warn* Failed to find the db field %s for identifier:%@, bundleID:%@, rc:%d", v744, 0x26u);
      }

      v154 = __error();
      v134 = 0;
    }

    else
    {
      v145 = *MEMORY[0x1E695E480];
      v134 = 0;
      v146 = _decodeSDBField(*v72, *v732, (*v732 + 13), 0, 0, 0, 0, *MEMORY[0x1E695E480]);
      if (!v146)
      {
        goto LABEL_178;
      }

      v134 = v146;
      v147 = CFGetTypeID(v146);
      if (v147 != CFStringGetTypeID())
      {
        goto LABEL_178;
      }

      if (db_get_field(*v72, v727, "_kMDItemRelatedBundleID", v732, 0))
      {
        v148 = 0;
      }

      else
      {
        v286 = v145;
        v148 = 0;
        v287 = _decodeSDBField(*v72, *v732, (*v732 + 13), 0, 0, 0, 0, v286);
        if (v287)
        {
          v148 = v287;
          v288 = CFGetTypeID(v287);
          if (v288 != CFStringGetTypeID())
          {
            CFRelease(v148);
            v148 = 0;
          }
        }
      }

      free(v727);
      v727 = 0;
      v728 = 0;
      v149 = si_get_object_for_identifier_createParentDBO(v55, v28, v134, 0, 0, &v728, &v727, 0);
      if (!v149)
      {
        if (dword_1EBF46ADC >= 5)
        {
          v594 = *__error();
          v595 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v595, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v744[0]) = 138413058;
            *(v744 + 4) = v134;
            WORD6(v744[0]) = 2112;
            *(v744 + 14) = v28;
            WORD3(v744[1]) = 2112;
            *(&v744[1] + 1) = v692;
            LOWORD(v744[2]) = 2048;
            *(&v744[2] + 2) = v728;
            _os_log_impl(&dword_1C278D000, v595, OS_LOG_TYPE_DEFAULT, "Found the dbo for relatedIdentifier: %@, bundleID: %@, identifier: %@, oid: %lld", v744, 0x2Au);
          }

          *__error() = v594;
          v55 = v697;
          v123 = v692;
        }

        si_removeRelatedItem(v55, &v727, v28, v123, v148, v134);
        if (v148)
        {
          CFRelease(v148);
        }

        goto LABEL_178;
      }

      v150 = v149;
      if (v149 == 2)
      {
LABEL_178:
        v157 = v693;
        v158 = v134;
        v159 = 0;
LABEL_204:
        if (v158)
        {
          CFRelease(v158);
        }

        v127 = v157;
        v126 = v159;
        goto LABEL_207;
      }

      v151 = *__error();
      v152 = _SILogForLogForCategory(4);
      v153 = dword_1EBF46ADC < 3;
      if (os_log_type_enabled(v152, (dword_1EBF46ADC < 3)))
      {
        LODWORD(v744[0]) = 138412802;
        *(v744 + 4) = v134;
        WORD6(v744[0]) = 2112;
        *(v744 + 14) = v28;
        WORD3(v744[1]) = 1024;
        DWORD2(v744[1]) = v150;
        _os_log_impl(&dword_1C278D000, v152, v153, "*warn* Failed to fetch the dbo for relatedIdentifier:%@, bundleID:%@, rc:%d", v744, 0x1Cu);
      }

      v154 = __error();
    }

    *v154 = v151;
    goto LABEL_178;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v744[0]) = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v744, 2u);
  }

  v104[78] = v102;
  CIOnThreadCleanUpReset(v713);
  dropThreadId(v715, 1, add_explicit + 1);
  CICleanUpReset(v715, HIDWORD(v713));
  v105 = 0;
LABEL_749:
  v488 = v696;
  v489 = *(v55 + 1484);
  atomic_compare_exchange_strong_explicit((v55 + 1484), &v489, 0, memory_order_relaxed, memory_order_relaxed);
  if (v488)
  {
    CFRelease(v488);
  }

  if (v721)
  {
    CFRelease(v721);
  }

  if (v720[0])
  {
    CFRelease(v720[0]);
  }

  if (v718)
  {
    free(v718);
  }

  _si_set_error_str(0, 1);
  _Block_object_dispose(&v722, 8);
  result = v105;
LABEL_758:
  v490 = *MEMORY[0x1E69E9840];
  return result;
}