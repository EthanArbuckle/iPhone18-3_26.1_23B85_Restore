void _si_run_block(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

void _si_wrapper_collect(int8x16_t *a1)
{
  v3 = a1[1].i64[0];
  v2 = a1[1].i64[1];
  v4 = a1[2].i64[0];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (v2)
  {
    if (v3)
    {
      if (v2 == *v3)
      {
        v5 = *v2;
        v6 = v2[4];
        v12 = MEMORY[0x1E69E9820];
        v13 = 0x40000000;
        v14 = __preRun_block_invoke;
        v15 = &unk_1E81930D0;
        v17 = a1;
        v18 = v2;
        v19 = v5;
        v20 = v4;
        v16.i64[0] = &v25;
        v16.i64[1] = &v21;
        dispatch_sync(v6, &v12);
        v7 = v22[3];
        if (v7)
        {
          SIGCContextWrapperCleanup(v7);
        }
      }
    }
  }

  v8 = *(v26 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  if (v8 == 1)
  {
    v9 = a1[2].i64[0];
    v10 = *(v9 + 32);
    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = __postRun_block_invoke;
    v15 = &__block_descriptor_tmp_85;
    v16 = vextq_s8(a1[1], a1[1], 8uLL);
    v17 = v9;
    dispatch_sync(v10, &v12);
  }

  else
  {
    v11 = a1->i64[1];
    if (v11)
    {
      a1->i64[1] = 0;
      SIGCContextRelease(v11);
    }
  }

  if (atomic_fetch_add(a1->i32, 0xFFFFFFFF) == 1)
  {
    free(a1);
  }
}

void __preRun_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(v2 + 24);
  v4 = !*(v3 + 104) && (*(v3 + 64) & 1) == 0 && *(*(v2 + 16) + 36) == 0;
  *(*(a1[4] + 8) + 24) = v4;
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v5 = a1[7];
    os_unfair_lock_lock(v5 + 32);
    ++v5[28]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 32);
    v6 = a1[8];
    if (v6)
    {
      *(v6 + 24) = a1[7];
    }

    v7 = a1[9];
    os_unfair_lock_lock(v7 + 32);
    ++v7[28]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v7 + 32);
    *(*(a1[5] + 8) + 24) = *(a1[7] + 48);
    *(a1[7] + 56) = 0;
    *(a1[7] + 48) = 0;
  }
}

void __postRun_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == **(a1 + 40))
  {
    dec_running(v2);
  }

  dec_running(*(a1 + 48));
  if (v3)
  {
    *(v3 + 24) = 0;
  }
}

void si_workqueue_drain(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    si_scheduler_remove_workqueue(v2, a1);
  }

  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, &__block_literal_global_1457);
  dispatch_async(*(a1 + 16), v3);

  _Block_release(v3);
}

void si_scheduler_remove_workqueue(uint64_t a1, void *a2)
{
  if (*a2 == a1)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __si_scheduler_remove_workqueue_block_invoke;
    block[3] = &__block_descriptor_tmp_13;
    block[4] = a1;
    dispatch_sync(v5, block);
    *a2 = 0;
  }
}

void si_scheduler_drain_locked(uint64_t a1, dispatch_group_t group)
{
  if (a1)
  {
    v4 = *a1;
    if (v4)
    {
      si_scheduler_remove_scheduler(v4, a1);
    }

    atomic_fetch_add((a1 + 96), 1u);
    if (group)
    {
      dispatch_group_enter(group);
      dispatch_retain(group);
    }

    v5 = *(a1 + 160);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __si_scheduler_drain_locked_block_invoke;
    v6[3] = &__block_descriptor_tmp_7_1462;
    v6[4] = a1;
    v6[5] = group;
    dispatch_barrier_async(v5, v6);
  }
}

int *si_scheduler_remove_scheduler(int *result, int **a2)
{
  v3 = result;
  v17 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD8 >= 5)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2[10];
      v8 = *(v3 + 10);
      *buf = 136315394;
      v14 = v7;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Remove scheduler %s from %s", buf, 0x16u);
    }

    result = __error();
    *result = v5;
  }

  if (*a2 != v3)
  {
    v9 = __si_assert_copy_extra_661(-1);
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 1104, "child->parent==scheduler", v11);
    free(v10);
    if (__valid_fs(-1))
    {
      v12 = 2989;
    }

    else
    {
      v12 = 3072;
    }

    *v12 = -559038737;
    abort();
  }

  atomic_fetch_add(v3 + 25, 0xFFFFFFFF);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (atomic_fetch_add(v3 + 24, 0xFFFFFFFF) == 1)
  {
    result = _si_scheduler_destroy(v3);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __si_scheduler_drain_locked_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && atomic_fetch_add((v2 + 96), 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);

    dispatch_release(v4);
  }
}

void _si_scheduler_destroy(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  if (v2)
  {
    *v3 = 0;
    v3[1] = 0;
    SIGCContextWrapperCleanup(v2);
    if (*v3 || *(a1 + 56))
    {
      *v3 = 0;
      v3[1] = 0;
    }
  }

  if (*a1)
  {
    si_scheduler_remove_scheduler(*a1, a1);
  }

  free(*(a1 + 80));
  dispatch_activate(*(a1 + 160));
  dispatch_release(*(a1 + 160));
  dispatch_release(*(a1 + 32));
  if (*(a1 + 65) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      pthread_mutex_destroy(v4);
      free(*(a1 + 8));
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      pthread_cond_destroy(v5);
      free(*(a1 + 16));
    }
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    do
    {
      *(v6 + 4) = 0;
      v7 = *(v6 + 16);
      *(v6 + 8) = 0;
      release_token(v6);
      v6 = v7;
    }

    while (v7);
  }

  free(a1);
}

void __si_scheduler_remove_and_destroy_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2 == *(a1 + 40))
  {
    *v2 = 0;
    si_workqueue_destroy(*(a1 + 32));
  }

  else
  {
    si_workqueue_destroy(v2);
  }
}

void si_workqueue_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      CFRelease(v2);
    }

    dispatch_barrier_async(*(a1 + 16), &__block_literal_global_35_1476);
    dispatch_release(*(a1 + 16));
    dispatch_assert_queue_not_V2(*(a1 + 8));
    dispatch_barrier_sync(*(a1 + 8), &__block_literal_global_38);
    dispatch_release(*(a1 + 8));
    free(*(a1 + 48));

    free(a1);
  }
}

_DWORD *si_create_scheduler(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v34 = *MEMORY[0x1E69E9840];
  v13 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10B0040AF5728FAuLL);
  v13[34] = v8;
  bzero(__str, 0x1000uLL);
  snprintf(__str, 0x1000uLL, "MQ: %s", v10);
  *(v13 + 66) = v4;
  if (v12)
  {
    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  }

  else
  {
    initially_inactive = makeAttrFromPolicy(v6, v4, 0);
  }

  *(v13 + 4) = dispatch_queue_create_with_target_V2(__str, initially_inactive, v12);
  if (!v2)
  {
    AttrFromPolicy = makeAttrFromPolicy(v6, v4, v8 > 1);
    *(v13 + 20) = dispatch_queue_create_with_target_V2(v10, AttrFromPolicy, 0);
    *(v13 + 11) = v6;
    if (v8 < 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v8 >= 2)
  {
    v15 = dispatch_queue_attr_make_initially_inactive(MEMORY[0x1E69E96A8]);
    *(v13 + 20) = dispatch_queue_create_with_target_V2(v10, v15, v2);
    *(v13 + 11) = v6;
LABEL_8:
    dispatch_queue_set_width();
    goto LABEL_10;
  }

  v17 = dispatch_queue_attr_make_initially_inactive(0);
  *(v13 + 20) = dispatch_queue_create_with_target_V2(v10, v17, v2);
  *(v13 + 11) = v6;
LABEL_10:
  *(v13 + 10) = strdup(v10);
  atomic_store(1u, v13 + 24);
  v13[55] = si_pc_priority_from_string(v10);
  v18 = *__error();
  v19 = _SILogForLogForCategory(3);
  v20 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v13 + 4);
    v22 = *(v13 + 20);
    *buf = 67109890;
    v26 = v6;
    v27 = 1024;
    v28 = (v6 >> 8) & 0xF;
    v29 = 2112;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    _os_log_impl(&dword_1C278D000, v19, v20, "Scheduler qos: 0x%x relative_priority: %d %@ %@", buf, 0x22u);
  }

  *__error() = v18;
  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

void __si_create_child_scheduler_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 100));
  atomic_fetch_add((*(a1 + 32) + 100), 1u);
  **(a1 + 40) = *(a1 + 32);
  dispatch_activate(*(*(a1 + 40) + 160));
  v3 = v2 + 1;
  v4 = atomic_load((*(a1 + 32) + 100));
  if (v2 + 1 != v4)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(3);
    v7 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = atomic_load((*(a1 + 32) + 100));
      v10[0] = 67109376;
      v10[1] = v3;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&dword_1C278D000, v6, v7, "%d != %d\n", v10, 0xEu);
    }

    *__error() = v5;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __debug_token_get_type_id_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __typeId = result;
  return result;
}

dispatch_queue_attr_t makeAttrFromPolicy(unsigned int a1, int a2, int a3)
{
  if (a3)
  {
    v5 = MEMORY[0x1E69E96A8];
  }

  else
  {
    v5 = 0;
  }

  result = dispatch_queue_attr_make_initially_inactive(v5);
  if (a2 && a1)
  {
    v7 = dispatch_queue_attr_make_with_overcommit();

    return dispatch_queue_attr_make_with_qos_class(v7, a1, -((a1 >> 8) & 0xF));
  }

  return result;
}

uint64_t si_pc_priority_from_string(char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (strstr(a1, "Priority/"))
  {
    result = 1;
  }

  else if (strstr(a1, "MobileMailIndex/"))
  {
    result = 3;
  }

  else if (strstr(a1, "NSFileProtectionComplete/"))
  {
    result = 2;
  }

  else if (strstr(a1, "NSFileProtectionCompleteUnlessOpen/"))
  {
    result = 4;
  }

  else if (strstr(a1, "NSFileProtectionCompleteWhenUserInactive/"))
  {
    result = 14;
  }

  else if (strstr(a1, "NSFileProtectionCompleteUntilFirstUserAuthentication/"))
  {
    result = 6;
  }

  else
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "si_pc_priority_from_string";
      v8 = 1024;
      v9 = 534;
      v10 = 2080;
      v11 = a1;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: Could not get schedule protection class for pc %s", &v6, 0x1Cu);
    }

    *__error() = v3;
    result = 4294967294;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *si_create_child_queue(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v28 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x1000uLL);
  v5 = malloc_type_malloc(0x50uLL, 0x103004026821411uLL);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 10) = -1;
  *(v5 + 3) = *(v4 + 88);
  *(v5 + 32) = *(v4 + 66);
  *(v5 + 33) = (v3 & 0x10) != 0;
  snprintf(__str, 0x1000uLL, "com.apple.metadata.spotlightindex.mq.%s", *(v4 + 80));
  *(v5 + 1) = dispatch_queue_create_with_target_V2(__str, 0, *(v4 + 32));
  if (*(v4 + 136) < 2u)
  {
    v6 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E69E96A8];
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(v6);
  snprintf(__str, 0x1000uLL, "com.apple.metadata.spotlightindex.%s", *(v4 + 80));
  *(v5 + 2) = dispatch_queue_create_with_target_V2(__str, initially_inactive, *(v4 + 160));
  if (*(v4 + 136) >= 2u)
  {
    dispatch_queue_set_width();
  }

  v8 = *__error();
  v9 = _SILogForLogForCategory(3);
  v10 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v4 + 88);
    v12 = (*(v4 + 88) >> 8) & 0xF;
    v13 = *(v5 + 1);
    v14 = *(v5 + 2);
    *buf = 67109890;
    v20 = v11;
    v21 = 1024;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_1C278D000, v9, v10, "Workqueue qos: 0x%x relative_priority: %d %@ %@", buf, 0x22u);
  }

  *__error() = v8;
  if ((v3 & 2) != 0)
  {
    dispatch_suspend(*(v5 + 2));
  }

  v15 = *(v4 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_create_child_queue_block_invoke;
  block[3] = &__block_descriptor_tmp_19_1503;
  block[4] = v4;
  block[5] = 2;
  block[6] = v5;
  dispatch_sync(v15, block);
  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

void __si_create_child_queue_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 100));
  atomic_fetch_add((*(a1 + 32) + 100), 1u);
  **(a1 + 48) = *(a1 + 32);
  dispatch_activate(*(*(a1 + 48) + 16));
  v3 = v2 + 1;
  v4 = atomic_load((*(a1 + 32) + 100));
  if (v2 + 1 != v4)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(3);
    v7 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = atomic_load((*(a1 + 32) + 100));
      v10[0] = 67109376;
      v10[1] = v3;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&dword_1C278D000, v6, v7, "%d != %d\n", v10, 0xEu);
    }

    *__error() = v5;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void *si_create_root_scheduler(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v30 = *MEMORY[0x1E69E9840];
  if (v7 < 2)
  {
    scheduler = malloc_type_calloc(1uLL, 0xE0uLL, 0x10B0040AF5728FAuLL);
    *(scheduler + 34) = v8;
    bzero(__str, 0x1000uLL);
    snprintf(__str, 0x1000uLL, "MQ: %s", v10);
    *(scheduler + 66) = v4;
    AttrFromPolicy = makeAttrFromPolicy(v6, v4, 0);
    *(scheduler + 4) = dispatch_queue_create_with_target_V2(__str, AttrFromPolicy, 0);
    inactive = dispatch_workloop_create_inactive(v10);
    *(scheduler + 20) = inactive;
    dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_NEVER);
    *(scheduler + 11) = v6;
    *(scheduler + 10) = strdup(v10);
    atomic_store(1u, scheduler + 24);
    *(scheduler + 55) = si_pc_priority_from_string(v10);
    v14 = *__error();
    v15 = _SILogForLogForCategory(3);
    v16 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(scheduler + 4);
      v18 = *(scheduler + 20);
      *buf = 67109890;
      v22 = v6;
      v23 = 1024;
      v24 = (v6 >> 8) & 0xF;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_1C278D000, v15, v16, "Scheduler qos: 0x%x relative_priority: %d %@ %@", buf, 0x22u);
    }

    *__error() = v14;
  }

  else
  {
    scheduler = si_create_scheduler(0);
  }

  *(scheduler + 34) = v8;
  *(scheduler + 11) = v6;
  *(scheduler + 1) = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
  *(scheduler + 2) = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
  pthread_mutex_init(*(scheduler + 1), 0);
  pthread_cond_init(*(scheduler + 2), 0);
  *(scheduler + 65) = 1;
  dispatch_queue_set_specific(*(scheduler + 20), "kSISchedulerQOSClass", v6, 0);
  *(scheduler + 19) = v2;
  dispatch_activate(*(scheduler + 4));
  dispatch_activate(*(scheduler + 20));
  v19 = *MEMORY[0x1E69E9840];
  return scheduler;
}

uint64_t si_scheduler_wait_on_suspend_token(uint64_t a1)
{
  if (a1)
  {
    v2 = 1;
    if (*(a1 + 8))
    {
      atomic_fetch_add(a1, 1u);
      v3 = *(a1 + 8);
      pthread_mutex_lock(*(v3 + 8));
      if ((*(a1 + 4) & 1) == 0)
      {
        do
        {
          if (*(a1 + 5))
          {
            break;
          }

          pthread_cond_wait(*(v3 + 16), *(v3 + 8));
        }

        while (!*(a1 + 4));
      }

      v2 = *(a1 + 5) ^ 1;
      pthread_mutex_unlock(*(v3 + 8));
      release_token(a1);
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void si_scheduler_async_suspend_and_enqueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5)
{
  *a5 = 0;
  if (a1 && !*(a1 + 104))
  {
    v13 = 0;
    v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B618E767uLL);
    atomic_store(2u, v10);
    *(v10 + 1) = a1;
    *(v10 + 4) = a3;
    *(v10 + 5) = a4;
    *(v10 + 3) = a2;
    *a5 = v10;
    pthread_mutex_lock(*(a1 + 8));
    v11 = *(a1 + 116);
    if (v11)
    {
      *(a1 + 116) = v11 + 1;
      *(v10 + 4) = 1;
      v13 = v10;
    }

    else if (quick_suspend(a1, &v13))
    {
      *(v10 + 2) = v13;
      *(v10 + 4) = 1;
      v13 = v10;
      pthread_cond_broadcast(*(a1 + 16));
    }

    else
    {
      v12 = *(a1 + 144);
      *(v10 + 2) = v12;
      *(a1 + 144) = v10;
      if (!v12 && !*(a1 + 120))
      {
        _scheduler_suspension_locked(a1);
      }
    }

    pthread_mutex_unlock(*(a1 + 8));
    si_scheduler_trigger_tokens(v13);
  }
}

void si_scheduler_voluntary_gc_inline(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    if (*(a1 + 48) && (*(a1 + 67) & 1) == 0)
    {
      v1 = *(a1 + 32);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __si_scheduler_voluntary_gc_inline_block_invoke;
      v3[3] = &unk_1E8192DA0;
      v3[4] = &v4;
      v3[5] = a1;
      dispatch_sync(v1, v3);
      v2 = v5[3];
      if (v2)
      {
        SIGCContextWrapperCleanup(v2);
      }
    }

    _Block_object_dispose(&v4, 8);
  }
}

uint64_t __si_scheduler_voluntary_gc_inline_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 112) == 1)
  {
    v2 = *(v1 + 48);
    if (v2 || *(v1 + 56))
    {
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
    }

    *(*(*(result + 32) + 8) + 24) = v2;
  }

  return result;
}

void si_scheduler_stop(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a1 + 96);
    atomic_fetch_add((a1 + 96), 1u);
    *(a1 + 64) = 1;
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __si_scheduler_stop_block_invoke;
    v5[3] = &__block_descriptor_tmp_28_1530;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_sync(v4, v5);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      _si_scheduler_destroy(a1);
    }
  }
}

pthread_mutex_t *__si_scheduler_stop_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  *(v2 + 64) = 1;
  result = *(v2 + 8);
  if (result)
  {
    pthread_mutex_lock(result);
    v4 = *(a1 + 32);
    if (*(v4 + 116) && (*(v4 + 67) & 1) == 0)
    {
      *(v4 + 67) = 1;
      *(v4 + 116) = 0x7FFFFFFF;
      *(v4 + 192) = 0;
      v5 = *(a1 + 32);
      v6 = *(v5 + 208);
      if (v6)
      {
        pthread_override_qos_class_end_np(v6);
        v5 = *(a1 + 32);
      }

      *(v5 + 208) = 0;
      v7 = *(a1 + 32);
      *(v7 + 216) = 0;
      dispatch_resume(*(v7 + 160));
      pthread_cond_broadcast(*(*(a1 + 32) + 16));
      v4 = *(a1 + 32);
    }

    if (*(v4 + 124) && (*(v4 + 67) & 1) == 0)
    {
      *(v4 + 67) = 1;
      *(v4 + 116) = 0x7FFFFFFF;
      *(v4 + 192) = 0;
      v8 = *(a1 + 32);
      v9 = *(v8 + 208);
      if (v9)
      {
        pthread_override_qos_class_end_np(v9);
        v8 = *(a1 + 32);
      }

      *(v8 + 208) = 0;
      v10 = *(a1 + 32);
      *(v10 + 216) = 0;
      pthread_cond_broadcast(*(v10 + 16));
      v4 = *(a1 + 32);
    }

    result = pthread_mutex_unlock(*(v4 + 8));
    v2 = *(a1 + 32);
  }

  else if ((*(v2 + 67) & 1) == 0 && *(v2 + 116))
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 1967, "scheduler->force_resumed == 1 || scheduler->suspended==0", v19);
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

  if (*(v2 + 112))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 80);
      *buf = 136315138;
      v23 = v13;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Issue stop for %s\n", buf, 0xCu);
    }

    *__error() = v11;
    dispatch_group_enter(*(a1 + 40));
    dispatch_retain(*(a1 + 40));
    v14 = *(a1 + 32);
    if (v14)
    {
      atomic_fetch_add((v14 + 96), 1u);
      v14 = *(a1 + 32);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __si_scheduler_stop_block_invoke_26;
    aBlock[3] = &__block_descriptor_tmp_27;
    v15 = *(a1 + 40);
    aBlock[4] = v14;
    aBlock[5] = v15;
    result = _Block_copy(aBlock);
    *(*(a1 + 32) + 40) = result;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __si_scheduler_stop_block_invoke_26(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 104) = 1;
  dispatch_group_leave(v2);
  dispatch_release(*(a1 + 40));
  v4 = *__error();
  v5 = _SILogForLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 80);
    v9 = 136315138;
    v10 = v6;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "Stopped %s\n", &v9, 0xCu);
  }

  *__error() = v4;
  v7 = *(a1 + 32);
  if (v7 && atomic_fetch_add((v7 + 96), 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void si_scheduler_boost_and_forget(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EBF46AD8 >= 5)
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 160);
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "boosting %@", &v7, 0xCu);
      }

      *__error() = v4;
    }

    v2 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &__block_literal_global_32);
    dispatch_async(*(a1 + 160), v2);
    _Block_release(v2);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t _si_scheduler_dump(uint64_t *a1, int a2, __CFString *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = (a2 + 1);
  MEMORY[0x1EEE9AC00](a1);
  bzero(v13 - ((v6 + 15) & 0x1FFFFFFF0), v6);
  memset(v13 - ((v6 + 15) & 0x1FFFFFFF0), 9, a2);
  *(v13 + a2 - ((v6 + 15) & 0x1FFFFFFF0)) = 0;
  v7 = "Yes";
  v8 = a1;
  while (!*(v8 + 29))
  {
    v8 = *v8;
    if (!v8)
    {
      v7 = "No";
      break;
    }
  }

  v9 = "NO";
  if (*(a1 + 64))
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (*(a1 + 26))
  {
    v9 = "YES";
  }

  CFStringAppendFormat(a3, 0, @"%sScheduler %p %s dq:%p parent:%p; %d suspensions suspended:%s (stop waiting: %s stopped: %s)\n", v13 - ((v6 + 15) & 0x1FFFFFFF0), a1, a1[10], a1[20], *a1, *(a1 + 29), v7, v10, v9);
  result = *a1;
  if (*a1)
  {
    result = _si_scheduler_dump(result, v6, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *si_workqueue_dump(uint64_t *result, __CFString *a2)
{
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1EEE9AC00](result);
    v8[0] = 0;
    v6 = *(v5 + 16);
    CFStringAppendFormat(v7, 0, @"%sWork queue %p; dq: %p %ld items enqueued\n", v4, v8, v5, v6, *(v5 + 64));
    result = *v3;
    if (*v3)
    {
      return _si_scheduler_dump(result, 1, a2);
    }
  }

  return result;
}

uint64_t si_peek_queue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_peek_queue_block_invoke;
  block[3] = &unk_1E8192F08;
  block[6] = a1;
  block[7] = a4;
  block[4] = &v8;
  block[5] = a2;
  block[8] = a3;
  dispatch_sync(v4, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

const __CFDictionary *__si_peek_queue_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46ADC >= 5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 48) + 72);
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Peek for %p to %p", &v10, 0x16u);
    }

    *__error() = v6;
  }

  result = *(*(a1 + 48) + 72);
  if (result)
  {
    result = CFDictionaryGetValue(result, *(a1 + 40));
    if (result)
    {
      if (*(a1 + 56))
      {
        v3 = result;
        v4 = 0;
        while (1)
        {
          result = CFBagContainsValue(v3, *(*(a1 + 64) + 8 * v4));
          if (result)
          {
            break;
          }

          if (++v4 >= *(a1 + 56))
          {
            goto LABEL_10;
          }
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_dequeue_wait_locked(uint64_t a1, float a2)
{
  v23.tv_sec = 0;
  v23.tv_nsec = 0;
  v2 = *(a1 + 120);
  if ((-v2 & *(a1 + 128)) != 0)
  {
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert(v12, "SISimpleQueue.c", 150, "queue->end == (queue->end&(queue->size-1))", v14);
    goto LABEL_22;
  }

  v4 = v2 - 1;
  v5 = *(a1 + 124);
  if ((v5 & ~v4) != 0)
  {
    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert(v15, "SISimpleQueue.c", 151, "queue->start == (queue->start&(queue->size-1))", v17);
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

  v6 = *(a1 + 136);
  result = *(v6 + 8 * v5);
  if (result)
  {
    goto LABEL_4;
  }

  v9 = (a2 * 1000000000.0);
  v22.tv_sec = 0;
  *&v22.tv_usec = 0;
  gettimeofday(&v22, 0);
  v10 = v9 % 0x3B9ACA00 + 1000 * v22.tv_usec;
  v23.tv_sec = v22.tv_sec + v9 / 0x3B9ACA00uLL;
  v23.tv_nsec = v10;
  if (v10 >= 1000000000)
  {
    v23.tv_sec = v22.tv_sec + v9 / 0x3B9ACA00uLL + 1;
    v23.tv_nsec = v10 - 1000000000;
  }

  do
  {
    v6 = *(a1 + 136);
    v5 = *(a1 + 124);
    result = *(v6 + 8 * v5);
    if (result)
    {
      goto LABEL_4;
    }

    ++*(a1 + 132);
    v11 = pthread_cond_timedwait((a1 + 72), (a1 + 8), &v23);
    --*(a1 + 132);
  }

  while (!v11);
  v6 = *(a1 + 136);
  v5 = *(a1 + 124);
  result = *(v6 + 8 * v5);
  if (result)
  {
LABEL_4:
    *(v6 + 8 * v5) = 0;
    v8 = *(a1 + 120);
    *(a1 + 124) = (v8 - 1) & (v5 + 1);
    if ((-v8 & *(a1 + 128)) == 0)
    {
      return result;
    }

    v19 = __si_assert_copy_extra_332();
    v13 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert(v19, "SISimpleQueue.c", 172, "queue->end == (queue->end&(queue->size-1))", v20);
LABEL_22:
    free(v13);
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

  return result;
}

void *pommesLLMQueryTree(const __CFDictionary *a1, PRContext *a2, BOOL *a3)
{
  v4 = a2;
  v399 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 7);
  if (!a2->var2)
  {
    v12 = *__error();
    if ((v5 & 2) != 0)
    {
      v13 = _SILogForLogForCategory(18);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_387;
      }
    }

    else
    {
      v13 = _SILogForLogForCategory(17);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_387;
      }
    }

    var0 = v4->var0;
    var1 = v4->var1;
    *buf = 134218242;
    *&buf[4] = var0;
    *&buf[12] = 2080;
    *&buf[14] = var1;
    v16 = "[qid=%lld][%s][POMMES][LLM] Received a NULL (LLM)processorContext (using ALWAYS_FALSE_NODE)";
LABEL_386:
    _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
    goto LABEL_387;
  }

  LemmaFromTokenInfo = a1;
  var2 = a2->var2;
  if ((v5 & 2) == 0)
  {
    v3 = &unk_1EBF64000;
    if (isTextSemanticSearchEnabled_onceToken != -1)
    {
      dispatch_once(&isTextSemanticSearchEnabled_onceToken, &__block_literal_global_9_11138);
    }

    v7 = 0;
    if (!LemmaFromTokenInfo)
    {
      goto LABEL_375;
    }

    RawTextTokensFromTokenInfo = &unk_1EBF64000;
    if ((isTextSemanticSearchEnabled_ffStatus & 1) == 0)
    {
      goto LABEL_375;
    }

    if (!CFDictionaryContainsKey(LemmaFromTokenInfo, @"kQPQueryTextEmbeddingEncodedData") || ![CFDictionaryGetValue(LemmaFromTokenInfo @"kQPQueryTextEmbeddingEncodedData")])
    {
      v7 = 0;
      goto LABEL_375;
    }

    v9 = *(v4 + 7);
    v10 = *__error();
    if ((v9 & 2) != 0)
    {
      v11 = _SILogForLogForCategory(18);
      v4 = a2;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_264;
      }
    }

    else
    {
      v11 = _SILogForLogForCategory(17);
      v4 = a2;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_264;
      }
    }

    v196 = a2->var0;
    v197 = a2->var1;
    *buf = 134218242;
    *&buf[4] = v196;
    *&buf[12] = 2080;
    *&buf[14] = v197;
    _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding dense retrieval node", buf, 0x16u);
LABEL_264:
    *__error() = v10;
    if (isTextSemanticSearchEnabled_onceToken == -1)
    {
      goto LABEL_265;
    }

    goto LABEL_425;
  }

  TokensInfoFromQueryUnderstanding = getTokensInfoFromQueryUnderstanding(a1);
  if (!TokensInfoFromQueryUnderstanding)
  {
    v183 = *__error();
    v184 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
    {
      v185 = v4->var0;
      v186 = v4->var1;
      *buf = 134218498;
      *&buf[4] = v185;
      *&buf[12] = 2080;
      *&buf[14] = v186;
      *&buf[22] = 2112;
      *&buf[24] = 0;
      _os_log_impl(&dword_1C278D000, v184, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][V2] Got no LLM parse (using ALWAYS_FALSE_NODE) with LLMParse:'%@'", buf, 0x20u);
    }

    *__error() = v183;
    FalseNode = makeFalseNode();
    if (!a3)
    {
      goto LABEL_293;
    }

    goto LABEL_254;
  }

  theArray = TokensInfoFromQueryUnderstanding;
  Count = CFArrayGetCount(TokensInfoFromQueryUnderstanding);
  LLMParseFromQueryUnderstanding = getLLMParseFromQueryUnderstanding(LemmaFromTokenInfo);
  RankingAttributeScores = getRankingAttributeScores(v4);
  WildCardAllowedFields = 0;
  v384 = 0;
  v386 = 0;
  v381 = 112;
  v382 = 0x8000003F800000;
  std::string::basic_string[abi:nn200100]<0>(v379, "");
  v330 = a3;
  v383 = v379;
  LODWORD(v384) = 1;
  BYTE4(v384) = 0;
  WildCardAllowedFields = getWildCardAllowedFields(v4->var4);
  LODWORD(v386) = 0;
  *(&v386 + 3) = 0;
  v19 = var2;
  if (Count < 1)
  {
    goto LABEL_280;
  }

  v20 = 0;
  v332 = 0;
  v329 = (var2 + 4);
  v333 = *(MEMORY[0x1E69E54E8] + 24);
  v334 = *MEMORY[0x1E69E54E8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
    TokenFromTokenInfo = getTokenFromTokenInfo(ValueAtIndex);
    LemmaFromTokenInfo = getLemmaFromTokenInfo(ValueAtIndex);
    RawTextTokensFromTokenInfo = getRawTextTokensFromTokenInfo(ValueAtIndex);
    v339 = v20;
    if ([(__CFDictionary *)RawTextTokensFromTokenInfo count])
    {
      v344 = [(__CFDictionary *)RawTextTokensFromTokenInfo count];
    }

    else
    {
      v344 = 1;
    }

    v378 = -1;
    LLMTokenDescription = fetchLLMTokenDescription(&v378, ValueAtIndex, LLMParseFromQueryUnderstanding, 1);
    v23 = v378;
    {
      llmEntityBoostingArgIds(void)::_entityBoostingArgIds = 0u;
      *&qword_1EBF613A0 = 0u;
      dword_1EBF613B0 = 1065353216;
    }

    if (llmEntityBoostingArgIds(void)::onceToken != -1)
    {
      dispatch_once(&llmEntityBoostingArgIds(void)::onceToken, &__block_literal_global_15);
    }

    v24 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmEntityBoostingArgIds(void)::_entityBoostingArgIds, v23);
    if (!v24)
    {
      v24 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmEntityBoostingArgIds(void)::_entityBoostingArgIds, -1);
      if (!v24)
      {
        abort();
      }
    }

    v25 = v378;
    v26 = "Unknown";
    if (v378 <= 0xD2)
    {
      v26 = off_1E8196D10[v378];
    }

    v27 = *(v24 + 5);
    v340 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%ld][%s]", @"[V2]", v339, v26];
    v375 = 0u;
    v376 = 0u;
    v377 = 1065353216;
    if (ValueAtIndex && CFDictionaryGetCount(ValueAtIndex))
    {
      *&v396 = 0;
      *(&v396 + 1) = &v396;
      *&v397 = 0x2020000000;
      v28 = getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr;
      *(&v397 + 1) = getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL44getkQPQUOutputTokenPhraseWeightsKeySymbolLocv_block_invoke;
        *&buf[24] = &unk_1E8199698;
        *&buf[32] = &v396;
        ParserLibrary = QueryParserLibrary();
        v30 = dlsym(ParserLibrary, "kQPQUOutputTokenPhraseWeightsKey");
        *(*(*&buf[32] + 8) + 24) = v30;
        getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr = *(*(*&buf[32] + 8) + 24);
        v28 = *(*(&v396 + 1) + 24);
      }

      _Block_object_dispose(&v396, 8);
      if (!v28)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        -[PRContext handleFailureInFunction:file:lineNumber:description:](v4, "handleFailureInFunction:file:lineNumber:description:", [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef  _Nullable getkQPQUOutputTokenPhraseWeightsKey()"], @"PRLLMParse.mm", 24, @"%s", dlerror());
LABEL_424:
        __break(1u);
LABEL_425:
        dispatch_once(&isTextSemanticSearchEnabled_onceToken, &__block_literal_global_9_11138);
LABEL_265:
        if (*(RawTextTokensFromTokenInfo + 2376))
        {
          if (CFDictionaryContainsKey(LemmaFromTokenInfo, @"kQPQueryTextEmbeddingEncodedData"))
          {
            Value = CFDictionaryGetValue(LemmaFromTokenInfo, @"kQPQueryTextEmbeddingEncodedData");
            if (Value)
            {
              v199 = decodeEmbeddingData(Value);
              if (v199)
              {
                v200 = v199;
                var23 = v4->var23;
                if (var23 && (v202 = CFDictionaryGetValue(var23, @"vec_version")) != 0)
                {
                  v203 = [v202 intValue];
                }

                else
                {
                  v203 = -1;
                }

                v228 = [(__CFDictionary *)v200 length];
                if (v228 > 1)
                {
                  v306 = [(__CFDictionary *)v200 bytes];
                  if (v306)
                  {
                    if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
                    {
                      ++sTotal;
                    }

                    v307 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
                    v308 = v228 >> 1;
                    if (!v307)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    *v307 = strdup("_kMDItemPrimaryTextEmbedding");
                    v307[6] = 15;
                    v309 = v307[15] & 0xFFFFFFF0;
                    switch(v308)
                    {
                      case 0x100uLL:
                        v310 = v309 | 4;
                        break;
                      case 0x200uLL:
                        v310 = v309 | 5;
                        break;
                      case 0x300uLL:
                        v310 = v309 | 6;
                        break;
                      default:
                        v310 = v309 | 7;
                        break;
                    }

                    v318 = v310 | 0xC80;
                    v319 = v318 & 0xFE000C8F;
                    v320 = v318 & 0xC8F | (v203 << 25);
                    if (v203 == -1)
                    {
                      v320 = v319;
                    }

                    v307[15] = v320;
                    v307[16] = 1068708659;
                    v307[10] = 5;
                    v307[40] |= 0x10000u;
                    v321 = malloc_type_zone_malloc(queryZone, v228 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
                    if (!v321)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    v322 = 0;
                    *(v307 + 37) = v321;
                    if (v308 <= 1)
                    {
                      v323 = 1;
                    }

                    else
                    {
                      v323 = v228 >> 1;
                    }

                    do
                    {
                      *(*(v307 + 37) + 2 * v322) = *(v306 + 2 * v322);
                      ++v322;
                    }

                    while (v323 != v322);
                    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
                    {
                      ++sTotal;
                    }

                    v324 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
                    v346 = v324;
                    if (v324)
                    {
                      v324->var6 = 4;
                      v324->var2 = v307;
                      v325 = [(__CFDictionary *)v200 length];
                      v314 = *__error();
                      v326 = _SILogForLogForCategory(17);
                      if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
                      {
                        v327 = v4->var0;
                        v328 = v4->var1;
                        *buf = 134219010;
                        *&buf[4] = v327;
                        *&buf[12] = 2080;
                        *&buf[14] = v328;
                        *&buf[22] = 2048;
                        *&buf[24] = v325 >> 1;
                        *&buf[32] = 2048;
                        *&buf[34] = 0x3FF6666660000000;
                        *&buf[42] = 1024;
                        *&buf[44] = 200;
                        _os_log_impl(&dword_1C278D000, v326, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Created ANN node (dim: %lu, thresh: %f, maxCount: %u)", buf, 0x30u);
                      }

                      goto LABEL_404;
                    }

                    _log_fault_for_malloc_failure();
                    MEMORY[0x30] = 4;
                    MEMORY[0x10] = v307;
LABEL_401:
                    v314 = *__error();
                    v315 = _SILogForLogForCategory(17);
                    if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
                    {
                      v316 = v4->var0;
                      v317 = v4->var1;
                      *buf = 134218242;
                      *&buf[4] = v316;
                      *&buf[12] = 2080;
                      *&buf[14] = v317;
                      _os_log_impl(&dword_1C278D000, v315, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Failed to create an ANN node", buf, 0x16u);
                    }

                    v346 = 0;
LABEL_404:
                    *__error() = v314;
                    CFRelease(v200);
                    goto LABEL_312;
                  }

                  v229 = *__error();
                  v311 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v311, OS_LOG_TYPE_DEFAULT))
                  {
                    v312 = v4->var0;
                    v313 = v4->var1;
                    *buf = 134218242;
                    *&buf[4] = v312;
                    *&buf[12] = 2080;
                    *&buf[14] = v313;
                    _os_log_impl(&dword_1C278D000, v311, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][LLM][DS] Skipping ANN node (ERROR: Failed to get bytes from embedding)", buf, 0x16u);
                  }
                }

                else
                {
                  v229 = *__error();
                  v230 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
                  {
                    v232 = v4->var0;
                    v231 = v4->var1;
                    v233 = [(__CFDictionary *)v200 length];
                    *buf = 134218498;
                    *&buf[4] = v232;
                    *&buf[12] = 2080;
                    *&buf[14] = v231;
                    *&buf[22] = 2048;
                    *&buf[24] = v233;
                    _os_log_impl(&dword_1C278D000, v230, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][LLM][DS] Skipping ANN node (ERROR: embedding has 0 dimensionality) [length: %lu]", buf, 0x20u);
                  }
                }

                *__error() = v229;
                goto LABEL_401;
              }

              v204 = *__error();
              v234 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
              {
                v235 = v4->var0;
                v236 = v4->var1;
                *buf = 134218242;
                *&buf[4] = v235;
                *&buf[12] = 2080;
                *&buf[14] = v236;
                _os_log_impl(&dword_1C278D000, v234, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Skipping ANN node (ERROR: decoded query embedding in null)", buf, 0x16u);
              }
            }

            else
            {
              v204 = *__error();
              v225 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
              {
                v226 = v4->var0;
                v227 = v4->var1;
                *buf = 134218242;
                *&buf[4] = v226;
                *&buf[12] = 2080;
                *&buf[14] = v227;
                _os_log_impl(&dword_1C278D000, v225, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Skipping ANN node (ERROR: encoded query embedding in null)", buf, 0x16u);
              }
            }
          }

          else
          {
            v204 = *__error();
            v208 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
            {
              v209 = v4->var0;
              v210 = v4->var1;
              *buf = 134218242;
              *&buf[4] = v209;
              *&buf[12] = 2080;
              *&buf[14] = v210;
              _os_log_impl(&dword_1C278D000, v208, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Skipping ANN node (ERROR: missing query embedding key)", buf, 0x16u);
            }
          }
        }

        else
        {
          v204 = *__error();
          v205 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
          {
            v206 = v4->var0;
            v207 = v4->var1;
            *buf = 134218242;
            *&buf[4] = v206;
            *&buf[12] = 2080;
            *&buf[14] = v207;
            _os_log_impl(&dword_1C278D000, v205, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Skipping ANN node (ERROR: Text semantic search FF is disabled)", buf, 0x16u);
          }
        }

        v346 = 0;
        *__error() = v204;
LABEL_312:
        v237 = *__error();
        v238 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
        {
          v240 = v4->var0;
          v239 = v4->var1;
          if (*(v3 + 2384) != -1)
          {
            dispatch_once(&isTextSemanticSearchEnabled_onceToken, &__block_literal_global_9_11138);
          }

          v241 = "disabled";
          if (*(RawTextTokensFromTokenInfo + 2376))
          {
            v241 = "enabled";
          }

          v242 = "valid";
          *buf = 134218754;
          *&buf[4] = v240;
          *&buf[12] = 2080;
          *&buf[14] = v239;
          *&buf[22] = 2080;
          if (!v346)
          {
            v242 = "nil";
          }

          *&buf[24] = v241;
          *&buf[32] = 2080;
          *&buf[34] = v242;
          _os_log_impl(&dword_1C278D000, v238, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Text semantic search is %s and denseNode is %s", buf, 0x2Au);
        }

        *__error() = v237;
        if (!v346)
        {
          v280 = *__error();
          v281 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
          {
            v282 = v4->var0;
            v283 = v4->var1;
            *buf = 134218242;
            *&buf[4] = v282;
            *&buf[12] = 2080;
            *&buf[14] = v283;
            v284 = "[qid=%lld][%s][POMMES][LLM][DS] Got an empty dense retrieval query node (using ALWAYS_FALSE_NODE)";
LABEL_373:
            _os_log_impl(&dword_1C278D000, v281, OS_LOG_TYPE_DEFAULT, v284, buf, 0x16u);
          }

LABEL_374:
          *__error() = v280;
          v7 = makeFalseNode();
          goto LABEL_375;
        }

        v243 = getTokensInfoFromQueryUnderstanding(LemmaFromTokenInfo);
        v354 = v243;
        if (v243)
        {
          v352 = CFArrayGetCount(v243);
          v349 = getLLMParseFromQueryUnderstanding(LemmaFromTokenInfo);
          if (v352 >= 1)
          {
            v356 = 0;
            v244 = 0;
            while (1)
            {
              v245 = CFArrayGetValueAtIndex(v354, v244);
              v389[0] = -1;
              v246 = fetchLLMTokenDescription(v389, v245, v349, 0);
              v247 = v389[0];
              v248 = "Unknown";
              if (v389[0] <= 0xD2u)
              {
                v248 = off_1E8196D10[v389[0]];
              }

              v249 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%ld][%s]", @"[DS]", v244, v248];
              if (isLLMOptionalArgId(v247))
              {
                v250 = *__error();
                v251 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
                {
                  v252 = v4->var0;
                  v253 = v4->var1;
                  *buf = 134218498;
                  *&buf[4] = v252;
                  *&buf[12] = 2080;
                  *&buf[14] = v253;
                  *&buf[22] = 2112;
                  *&buf[24] = v249;
                  _os_log_impl(&dword_1C278D000, v251, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is optional)", buf, 0x20u);
                }

                *__error() = v250;
                goto LABEL_355;
              }

              BundleSpecificFilterNode = generateBundleSpecificFilterNode(v4, v247, v249, v246, 1);
              {
                llmDenseRetrievalFilterArgIds(void)::_denseRetrievalFilterArgIds = 0u;
                *algn_1EBF61410 = 0u;
                dword_1EBF61420 = 1065353216;
              }

              if (llmDenseRetrievalFilterArgIds(void)::onceToken != -1)
              {
                dispatch_once(&llmDenseRetrievalFilterArgIds(void)::onceToken, &__block_literal_global_19);
              }

              if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmDenseRetrievalFilterArgIds(void)::_denseRetrievalFilterArgIds, v247))
              {
                v255 = [(NSString *)v246 length]== 0;
                v256 = *__error();
                v257 = _SILogForLogForCategory(17);
                v258 = os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT);
                if (v255)
                {
                  if (v258)
                  {
                    v268 = v4->var0;
                    v269 = v4->var1;
                    *buf = 134219010;
                    *&buf[4] = v268;
                    *&buf[12] = 2080;
                    *&buf[14] = v269;
                    *&buf[22] = 2112;
                    *&buf[24] = v249;
                    *&buf[32] = 1024;
                    *&buf[34] = 1;
                    *&buf[38] = 1024;
                    *&buf[40] = 1;
                    _os_log_impl(&dword_1C278D000, v257, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because tokenDescription is empty (validDenseNode: %d) (isFilterArg: %d)", buf, 0x2Cu);
                  }

                  RetrievalNodeFromQueryString = 0;
                  *__error() = v256;
                  v262 = v389[0];
                }

                else
                {
                  if (v258)
                  {
                    v259 = v4->var0;
                    v260 = v4->var1;
                    *buf = 134219010;
                    *&buf[4] = v259;
                    *&buf[12] = 2080;
                    *&buf[14] = v260;
                    *&buf[22] = 2112;
                    *&buf[24] = v249;
                    *&buf[32] = 1024;
                    *&buf[34] = 1;
                    *&buf[38] = 1024;
                    *&buf[40] = 1;
                    _os_log_impl(&dword_1C278D000, v257, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding parsed query tree (validDenseNode: %d) (isFilterArg: %d)", buf, 0x2Cu);
                  }

                  *__error() = v256;
                  RetrievalNodeFromQueryString = makeRetrievalNodeFromQueryString([(NSString *)v246 UTF8String]);
                  v262 = v389[0];
                  if (v389[0] == 18)
                  {
                    v263 = makeRetrievalNodeFromQueryString("_kMDItemBundleID = com.apple.FileProvider.LocalStorage || _kMDItemBundleID=com.apple.CloudDocs.iCloudDriveFileProvider");
                    v264 = *__error();
                    v265 = _SILogForLogForCategory(17);
                    if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
                    {
                      v266 = v4->var0;
                      v267 = v4->var1;
                      *buf = 134218498;
                      *&buf[4] = v266;
                      *&buf[12] = 2080;
                      *&buf[14] = v267;
                      *&buf[22] = 2112;
                      *&buf[24] = v249;
                      _os_log_impl(&dword_1C278D000, v265, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ retrieve all type of files for file search on iOS", buf, 0x20u);
                    }

                    *__error() = v264;
                    RetrievalNodeFromQueryString = makeOrNode(RetrievalNodeFromQueryString, v263);
                    v262 = 18;
                  }
                }

                if (isLLMTemporalArgId(v262) || isLLMOptionalArgId(v262))
                {
                  NonMatchRetrievalNodeFromQueryString = makeNonMatchRetrievalNodeFromQueryString([(NSString *)v246 UTF8String]);
                  if (RetrievalNodeFromQueryString)
                  {
                    v271 = NonMatchRetrievalNodeFromQueryString;
                    v272 = *__error();
                    v273 = _SILogForLogForCategory(17);
                    if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
                    {
                      v274 = v4->var0;
                      v275 = v4->var1;
                      *buf = 134218498;
                      *&buf[4] = v274;
                      *&buf[12] = 2080;
                      *&buf[14] = v275;
                      *&buf[22] = 2112;
                      *&buf[24] = v249;
                      _os_log_impl(&dword_1C278D000, v273, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding unmatch query tree", buf, 0x20u);
                    }

                    *__error() = v272;
                    RetrievalNodeFromQueryString = makeOrNode(RetrievalNodeFromQueryString, v271);
                  }
                }

                if (!BundleSpecificFilterNode)
                {
                  goto LABEL_354;
                }
              }

              else
              {
                if (!BundleSpecificFilterNode)
                {
                  v276 = *__error();
                  v277 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
                  {
                    v278 = v4->var0;
                    v279 = v4->var1;
                    *buf = 134219010;
                    *&buf[4] = v278;
                    *&buf[12] = 2080;
                    *&buf[14] = v279;
                    *&buf[22] = 2112;
                    *&buf[24] = v249;
                    *&buf[32] = 1024;
                    *&buf[34] = 1;
                    *&buf[38] = 1024;
                    *&buf[40] = 0;
                    _os_log_impl(&dword_1C278D000, v277, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipped creating filter attribute node (validDenseNode: %d) (isFilterArg: %d)", buf, 0x2Cu);
                  }

                  RetrievalNodeFromQueryString = 0;
                  *__error() = v276;
                  goto LABEL_354;
                }

                RetrievalNodeFromQueryString = 0;
              }

              RetrievalNodeFromQueryString = makeAndNode(RetrievalNodeFromQueryString, BundleSpecificFilterNode);
LABEL_354:
              v356 = makeAndNode(v356, RetrievalNodeFromQueryString);
LABEL_355:
              if (v352 == ++v244)
              {
                goto LABEL_368;
              }
            }
          }

          v356 = 0;
        }

        else
        {
          v285 = *__error();
          v286 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
          {
            v287 = v4->var0;
            v288 = v4->var1;
            *buf = 134218498;
            *&buf[4] = v287;
            *&buf[12] = 2080;
            *&buf[14] = v288;
            *&buf[22] = 1024;
            *&buf[24] = 1;
            _os_log_impl(&dword_1C278D000, v286, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Got no LLM parse (validDenseNode: %d)", buf, 0x1Cu);
          }

          v356 = 0;
          *__error() = v285;
        }

LABEL_368:
        v289 = *__error();
        v290 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
        {
          v291 = v4->var0;
          v292 = v4->var1;
          *buf = 134218498;
          *&buf[4] = v291;
          *&buf[12] = 2080;
          *&buf[14] = v292;
          *&buf[22] = 1024;
          *&buf[24] = v356 != 0;
          _os_log_impl(&dword_1C278D000, v290, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Combined denseNode with the retrieval filter arguments (filterArgs: %d)", buf, 0x1Cu);
        }

        *__error() = v289;
        v7 = makeAndNode(v346, v356);
        if (!v7)
        {
          v280 = *__error();
          v281 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
          {
            v293 = v4->var0;
            v294 = v4->var1;
            *buf = 134218242;
            *&buf[4] = v293;
            *&buf[12] = 2080;
            *&buf[14] = v294;
            v284 = "[qid=%lld][%s][POMMES][LLM][DS] Got an empty query tree (using ALWAYS_FALSE_NODE)";
            goto LABEL_373;
          }

          goto LABEL_374;
        }

LABEL_375:
        v295 = (*(v4 + 7) & 2) == 0;
        v296 = *__error();
        if (v295)
        {
          v297 = _SILogForLogForCategory(17);
          if (!os_log_type_enabled(v297, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_380;
          }
        }

        else
        {
          v297 = _SILogForLogForCategory(18);
          if (!os_log_type_enabled(v297, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_380;
          }
        }

        v298 = v4->var0;
        v299 = v4->var1;
        *buf = 134218242;
        *&buf[4] = v298;
        *&buf[12] = 2080;
        *&buf[14] = v299;
        _os_log_impl(&dword_1C278D000, v297, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding sparse retrieval node", buf, 0x16u);
LABEL_380:
        *__error() = v296;
        v300 = llmSparseRetrievalTree(LemmaFromTokenInfo, v4, var2);
        FalseNode = makeOrNode(v7, v300);
        if (!FalseNode)
        {
          goto LABEL_381;
        }

        goto LABEL_388;
      }

      v350 = CFDictionaryGetValue(ValueAtIndex, *v28);
    }

    else
    {
      v350 = 0;
    }

    if ([LLMTokenDescription length])
    {
      LODWORD(v382) = 1065353216;
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Token ranking description is = %@", LLMTokenDescription];
      if ([v31 length] >= 4)
      {
        if (isSearchToolDebugModeEnabled_onceToken != -1)
        {
          dispatch_once(&isSearchToolDebugModeEnabled_onceToken, &__block_literal_global_14_11145);
        }

        if (isSearchToolDebugModeEnabled_ffStatus != 1)
        {
LABEL_50:
          v41 = *(v4 + 7);
          v42 = *__error();
          if ((v41 & 2) != 0)
          {
            v3 = _SILogForLogForCategory(18);
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v3 = _SILogForLogForCategory(17);
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_55;
            }
          }

          v43 = v4->var0;
          v44 = v4->var1;
          *buf = 134218754;
          *&buf[4] = v43;
          *&buf[12] = 2080;
          *&buf[14] = v44;
          *&buf[22] = 2112;
          *&buf[24] = v340;
          *&buf[32] = 2112;
          *&buf[34] = v31;
          _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEBUG, "[qid=%lld][%s][POMMES][LLM]%@ %@", buf, 0x2Au);
LABEL_55:
          *__error() = v42;
          query_node_with_ann = db_make_query_node_with_ann([LLMTokenDescription UTF8String], 0);
          *&v396 = MEMORY[0x1E69E9820];
          *(&v396 + 1) = 3221225472;
          *&v397 = ___Z27llmV2RankingDescriptionNodePKcPNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEfNS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_fEEEEEE_block_invoke;
          *(&v397 + 1) = &__block_descriptor_40_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
          v398 = &v375;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = __db_query_tree_apply_block_block_invoke;
          *&buf[24] = &unk_1E8198ED0;
          *&buf[32] = &v396;
          db_query_tree_apply_block_with_meta(query_node_with_ann, buf, 0);
          db_optimize_query_tree(&query_node_with_ann);
          v353 = query_node_with_ann;
          if (v25 == 8 && getIsRelativeTimeArgFromTokenInfo(ValueAtIndex))
          {
            v45 = *__error();
            v46 = _SILogForLogForCategory(18);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = v4->var0;
              v48 = v4->var1;
              *buf = 134218498;
              *&buf[4] = v47;
              *&buf[12] = 2080;
              *&buf[14] = v48;
              *&buf[22] = 2112;
              *&buf[24] = v340;
              _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Skip creating raw match tokenNode, it is relative time arg", buf, 0x20u);
            }

            *__error() = v45;
            db_free_query_node(v353);
            v353 = 0;
          }

          if (!ValueAtIndex || !CFDictionaryGetCount(ValueAtIndex))
          {
            goto LABEL_70;
          }

          *&v396 = 0;
          *(&v396 + 1) = &v396;
          *&v397 = 0x2020000000;
          v49 = getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr;
          *(&v397 + 1) = getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr;
          if (!getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL37getkQPQUOutputTokenIsSelfKeySymbolLocv_block_invoke;
            *&buf[24] = &unk_1E8199698;
            *&buf[32] = &v396;
            v50 = QueryParserLibrary();
            v51 = dlsym(v50, "kQPQUOutputTokenIsSelfKey");
            *(*(*&buf[32] + 8) + 24) = v51;
            getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr = *(*(*&buf[32] + 8) + 24);
            v49 = *(*(&v396 + 1) + 24);
          }

          _Block_object_dispose(&v396, 8);
          if (!v49)
          {
            v4 = [MEMORY[0x1E696AAA8] currentHandler];
            -[PRContext handleFailureInFunction:file:lineNumber:description:](v4, "handleFailureInFunction:file:lineNumber:description:", [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef  _Nullable getkQPQUOutputTokenIsSelfKey()"], @"PRLLMParse.mm", 23, @"%s", dlerror());
            goto LABEL_424;
          }

          if ([CFDictionaryGetValue(ValueAtIndex *v49)])
          {
            v52 = *__error();
            v53 = _SILogForLogForCategory(18);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = v4->var0;
              v55 = v4->var1;
              *buf = 134218498;
              *&buf[4] = v54;
              *&buf[12] = 2080;
              *&buf[14] = v55;
              *&buf[22] = 2112;
              *&buf[24] = v340;
              _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip creating raw match tokenNode for SELF", buf, 0x20u);
            }
          }

          else
          {
LABEL_70:
            if (v25 != 17 || (*v19 & 8) == 0)
            {
              if (!*(&v376 + 1))
              {
                v74 = *__error();
                v75 = _SILogForLogForCategory(18);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  v76 = v4->var0;
                  v77 = v4->var1;
                  *buf = 134218498;
                  *&buf[4] = v76;
                  *&buf[12] = 2080;
                  *&buf[14] = v77;
                  *&buf[22] = 2112;
                  *&buf[24] = v340;
                  _os_log_impl(&dword_1C278D000, v75, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Got an empty inferredAttributeScores map", buf, 0x20u);
                }

                NodeForToken = 0;
                *__error() = v74;
                goto LABEL_127;
              }

              v56 = *__error();
              v57 = _SILogForLogForCategory(18);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                v58 = v4->var0;
                v59 = v4->var1;
                *buf = 134218754;
                *&buf[4] = v58;
                *&buf[12] = 2080;
                *&buf[14] = v59;
                *&buf[22] = 2112;
                *&buf[24] = v340;
                *&buf[32] = 1024;
                *&buf[34] = v353 == 0;
                _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding ranking description query tree (invalid: %d)", buf, 0x26u);
              }

              *__error() = v56;
              if ((v25 != 8 || (getIsRelativeTimeArgFromTokenInfo(ValueAtIndex) & 1) == 0) && !isLLMLocationArgId(v25) && [(__CFDictionary *)LemmaFromTokenInfo length]&& ([(__CFDictionary *)LemmaFromTokenInfo isEqualToString:TokenFromTokenInfo]& 1) == 0)
              {
                v60 = *__error();
                v61 = _SILogForLogForCategory(18);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  v342 = v60;
                  v62 = v4->var0;
                  v63 = v4->var1;
                  v3 = redactString(LemmaFromTokenInfo, (*(v4 + 7) >> 9) & 1);
                  v64 = redactString(TokenFromTokenInfo, (*(v4 + 7) >> 9) & 1);
                  *buf = 134219010;
                  *&buf[4] = v62;
                  *&buf[12] = 2080;
                  *&buf[14] = v63;
                  *&buf[22] = 2112;
                  *&buf[24] = v340;
                  *&buf[32] = 2112;
                  *&buf[34] = v3;
                  *&buf[42] = 2112;
                  *&buf[44] = v64;
                  _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding lemma node %@ for token %@ in ranking", buf, 0x34u);
                  v60 = v342;
                }

                *__error() = v60;
                v65 = queryNodeForToken([(__CFDictionary *)LemmaFromTokenInfo UTF8String], &v375, &v381, v4);
                v353 = makeOrNode(v353, v65);
              }

              {
                llmDateArgIds(void)::_dateArgIds = 0u;
                unk_1EBF613D8 = 0u;
                dword_1EBF613E8 = 1065353216;
              }

              if (llmDateArgIds(void)::onceToken != -1)
              {
                dispatch_once(&llmDateArgIds(void)::onceToken, &__block_literal_global_17);
              }

              if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmDateArgIds(void)::_dateArgIds, v25))
              {
                v66 = *__error();
                v67 = _SILogForLogForCategory(18);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  v68 = v4->var0;
                  v69 = v4->var1;
                  *buf = 134218498;
                  *&buf[4] = v68;
                  *&buf[12] = 2080;
                  *&buf[14] = v69;
                  *&buf[22] = 2112;
                  *&buf[24] = v340;
                  _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Creating raw match tokenNode for Time tokens", buf, 0x20u);
                }

                *__error() = v66;
                db_free_query_node(v353);
                v373 = 0u;
                v374 = 0u;
                v371 = 0u;
                v372 = 0u;
                v70 = [(__CFDictionary *)RawTextTokensFromTokenInfo countByEnumeratingWithState:&v371 objects:v389 count:16];
                if (v70)
                {
                  v353 = 0;
                  v71 = *v372;
                  do
                  {
                    for (i = 0; i != v70; ++i)
                    {
                      if (*v372 != v71)
                      {
                        objc_enumerationMutation(RawTextTokensFromTokenInfo);
                      }

                      v73 = queryNodeForToken([*(*(&v371 + 1) + 8 * i) UTF8String], &v375, &v381, v4);
                      v353 = makeAndNode(v353, v73);
                    }

                    v70 = [(__CFDictionary *)RawTextTokensFromTokenInfo countByEnumeratingWithState:&v371 objects:v389 count:16];
                  }

                  while (v70);
                }

                else
                {
                  v353 = 0;
                }

                v90 = v376;
                if (v376)
                {
                  v91 = *v376;
                  if (!*v376)
                  {
                    goto LABEL_119;
                  }

                  do
                  {
                    if (v90[10] < v91[10])
                    {
                      v90 = v91;
                    }

                    v91 = *v91;
                  }

                  while (v91);
                  if (v90)
                  {
LABEL_119:
                    v92 = v90[10];
                    llmDateAttributes();
                    v93 = [fetchLLMTokenDescription(&v378 ValueAtIndex];
                    v94 = v92 * v344;
                    v95 = llmV2RetrievalDescriptionRankingNode(v93, v94, *(&v382 + 1));
                    v353 = makeOrNode(v353, v95);
                    v96 = *__error();
                    v97 = _SILogForLogForCategory(18);
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                    {
                      v98 = v90 + 4;
                      if (*(v90 + 39) < 0)
                      {
                        v98 = *v98;
                      }

                      v99 = v4->var0;
                      v100 = v4->var1;
                      *buf = 134219010;
                      *&buf[4] = v99;
                      *&buf[12] = 2080;
                      *&buf[14] = v100;
                      *&buf[22] = 2112;
                      *&buf[24] = v340;
                      *&buf[32] = 2048;
                      *&buf[34] = v94;
                      *&buf[42] = 2080;
                      *&buf[44] = v98;
                      _os_log_impl(&dword_1C278D000, v97, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Adding ranking node from retrieval description with matchScore=%0.2f based on attribute %s", buf, 0x34u);
                    }

                    *__error() = v96;
                  }
                }
              }

              if (v378 == 1)
              {
                std::string::basic_string[abi:nn200100]<0>(&v396, "com.apple.MobileSMS");
                memset(buf, 0, 24);
                std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, &v396, &v397 + 8, 1uLL);
              }

LABEL_126:
              NodeForToken = 0;
LABEL_127:
              v89 = &v375;
              goto LABEL_128;
            }

            v52 = *__error();
            v81 = _SILogForLogForCategory(18);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = v4->var0;
              v83 = v4->var1;
              v84 = (*v19 >> 3) & 1;
              *buf = 134218754;
              *&buf[4] = v82;
              *&buf[12] = 2080;
              *&buf[14] = v83;
              *&buf[22] = 2112;
              *&buf[24] = v340;
              *&buf[32] = 1024;
              *&buf[34] = v84;
              _os_log_impl(&dword_1C278D000, v81, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip creating raw match tokenNode (hasNonOptionalSearchTerm=%d)", buf, 0x26u);
            }
          }

          *__error() = v52;
          db_free_query_node(v353);
          v353 = 0;
          goto LABEL_126;
        }
      }

      v32 = *(v4 + 7);
      v33 = *__error();
      if ((v32 & 2) != 0)
      {
        v34 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
LABEL_48:
          v39 = v4->var0;
          v40 = v4->var1;
          *buf = 134218754;
          *&buf[4] = v39;
          *&buf[12] = 2080;
          *&buf[14] = v40;
          *&buf[22] = 2112;
          *&buf[24] = v340;
          *&buf[32] = 2112;
          *&buf[34] = v31;
          _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ %@", buf, 0x2Au);
        }
      }

      else
      {
        v34 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }
      }

      *__error() = v33;
      goto LABEL_50;
    }

    if (v27 == 0.0)
    {
      v35 = *__error();
      v36 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v4->var0;
        v38 = v4->var1;
        *buf = 134218498;
        *&buf[4] = v37;
        *&buf[12] = 2080;
        *&buf[14] = v38;
        *&buf[22] = 2112;
        *&buf[24] = v340;
        _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipped entity-boosting scoring (arg is not ranked)", buf, 0x20u);
      }

      goto LABEL_219;
    }

    if (v25 == 8 && getIsRelativeTimeArgFromTokenInfo(ValueAtIndex))
    {
      v35 = *__error();
      v78 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = v4->var0;
        v80 = v4->var1;
        *buf = 134218498;
        *&buf[4] = v79;
        *&buf[12] = 2080;
        *&buf[14] = v80;
        *&buf[22] = 2112;
        *&buf[24] = v340;
        _os_log_impl(&dword_1C278D000, v78, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Skip creating raw match tokenNode with entity-boosting score, it is relative time arg", buf, 0x20u);
      }

      goto LABEL_219;
    }

    *&v382 = v27;
    NodeForToken = queryNodeForToken([(NSString *)TokenFromTokenInfo UTF8String], RankingAttributeScores, &v381, v4);
    v85 = *__error();
    v86 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v87 = v4->var0;
      v88 = v4->var1;
      *buf = 134219010;
      *&buf[4] = v87;
      *&buf[12] = 2080;
      *&buf[14] = v88;
      *&buf[22] = 2112;
      *&buf[24] = v340;
      *&buf[32] = 2048;
      *&buf[34] = v27;
      *&buf[42] = 1024;
      *&buf[44] = 1;
      _os_log_impl(&dword_1C278D000, v86, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding entity-boosting query tree {matchScore: %lf} (invalid: %d)", buf, 0x30u);
    }

    *__error() = v85;
    if ([(__CFDictionary *)LemmaFromTokenInfo length]&& ([(__CFDictionary *)LemmaFromTokenInfo isEqualToString:TokenFromTokenInfo]& 1) == 0)
    {
      v177 = *__error();
      v178 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v4->var0;
        v179 = v4->var1;
        v180 = redactString(LemmaFromTokenInfo, (*(v4 + 7) >> 9) & 1);
        v181 = redactString(TokenFromTokenInfo, (*(v4 + 7) >> 9) & 1);
        *buf = 134219266;
        *&buf[4] = v3;
        *&buf[12] = 2080;
        *&buf[14] = v179;
        *&buf[22] = 2112;
        *&buf[24] = v340;
        *&buf[32] = 2112;
        *&buf[34] = v180;
        *&buf[42] = 2112;
        *&buf[44] = v181;
        *&buf[52] = 2048;
        *&buf[54] = v27;
        _os_log_impl(&dword_1C278D000, v178, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding lemma node %@ for token %@ {matchScore: %lf}", buf, 0x3Eu);
      }

      *__error() = v177;
      v89 = RankingAttributeScores;
      v182 = queryNodeForToken([(__CFDictionary *)LemmaFromTokenInfo UTF8String], RankingAttributeScores, &v381, v4);
      NodeForToken = makeOrNode(NodeForToken, v182);
      v353 = 0;
    }

    else
    {
      v353 = 0;
      v89 = RankingAttributeScores;
    }

LABEL_128:
    v101 = *__error();
    v102 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
      v104 = v4->var0;
      v103 = v4->var1;
      [-[query_node objectAtIndexedSubscript:](v350 objectAtIndexedSubscript:{0), "floatValue"}];
      v106 = v105;
      [-[query_node objectAtIndexedSubscript:](v350 objectAtIndexedSubscript:{1), "floatValue"}];
      *buf = 134219010;
      *&buf[4] = v104;
      *&buf[12] = 2080;
      *&buf[14] = v103;
      *&buf[22] = 2112;
      *&buf[24] = v340;
      *&buf[32] = 2048;
      *&buf[34] = v106;
      *&buf[42] = 2048;
      *&buf[44] = v107;
      _os_log_impl(&dword_1C278D000, v102, OS_LOG_TYPE_DEBUG, "[qid=%lld][%s][POMMES][LLM]%@ Phrase Scores: {bigram: %.3f, full-phrase: %.3f}", buf, 0x34u);
    }

    *__error() = v101;
    v398 = 1065353216;
    v396 = 0u;
    v397 = 0u;
    for (j = *(v89 + 2); j; j = *j)
    {
      v109 = j[10];
      if (v109 == 0.0)
      {
        v3 = 0;
      }

      else
      {
        v3 = LODWORD(v109);
      }

      if (!*(&v396 + 1))
      {
        goto LABEL_151;
      }

      v110 = vcnt_s8(*(&v396 + 8));
      v110.i16[0] = vaddlv_u8(v110);
      if (v110.u32[0] > 1uLL)
      {
        v111 = v3;
        if (v3 >= *(&v396 + 1))
        {
          v111 = v3 % DWORD2(v396);
        }
      }

      else
      {
        v111 = v3 & (*(&v396 + 1) + 0xFFFFFFFFLL);
      }

      v112 = *(v396 + 8 * v111);
      if (!v112 || (v113 = *v112) == 0)
      {
LABEL_151:
        operator new();
      }

      while (1)
      {
        v114 = *(v113 + 1);
        if (v114 == v3)
        {
          break;
        }

        if (v110.u32[0] > 1uLL)
        {
          if (v114 >= *(&v396 + 1))
          {
            v114 %= *(&v396 + 1);
          }
        }

        else
        {
          v114 &= *(&v396 + 1) - 1;
        }

        if (v114 != v111)
        {
          goto LABEL_151;
        }

LABEL_150:
        v113 = *v113;
        if (!v113)
        {
          goto LABEL_151;
        }
      }

      if (v113[4] != v109)
      {
        goto LABEL_150;
      }

      ++*(v113 + 5);
    }

    query_node_with_ann = 0;
    v369 = 0;
    v370 = 0;
    v395 = 0;
    v393 = 0u;
    memset(v394, 0, sizeof(v394));
    v391 = 0u;
    v392 = 0u;
    memset(buf, 0, sizeof(buf));
    std::ostringstream::basic_ostringstream[abi:nn200100](buf);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(buf, "{", 1);
    v115 = v397;
    if (v397)
    {
      v116 = 1;
      do
      {
        if ((v116 & 1) == 0)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(buf, ", ", 2);
        }

        v117 = *(v115 + 4);
        v118 = std::ostream::operator<<();
        v119 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v118, ": ", 2);
        MEMORY[0x1C691FC80](v119, *(v115 + 5));
        v116 = 0;
        v115 = *v115;
      }

      while (v115);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(buf, "}", 1);
    std::stringbuf::str();
    *buf = v334;
    *&buf[*(v334 - 24)] = v333;
    *&buf[8] = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v392) < 0)
    {
      operator delete(*(&v391 + 1));
    }

    *&buf[8] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&buf[16]);
    std::ostream::~ostream();
    MEMORY[0x1C691FE80](v394);
    v120 = *__error();
    v121 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      v122 = v4->var0;
      v123 = v4->var1;
      p_query_node_with_ann = &query_node_with_ann;
      if (v370 < 0)
      {
        p_query_node_with_ann = query_node_with_ann;
      }

      *buf = 134218754;
      *&buf[4] = v122;
      *&buf[12] = 2080;
      *&buf[14] = v123;
      *&buf[22] = 2112;
      *&buf[24] = v340;
      *&buf[32] = 2080;
      *&buf[34] = p_query_node_with_ann;
      _os_log_impl(&dword_1C278D000, v121, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Attribute Scores: %s", buf, 0x2Au);
    }

    *__error() = v120;
    if (SHIBYTE(v370) < 0)
    {
      operator delete(query_node_with_ann);
    }

    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&v396);
    if (v378 == 104 || isLLMPersonArgId(v378))
    {
      GroundedNamesTokenFromTokenInfo = getGroundedNamesTokenFromTokenInfo(ValueAtIndex);
      v396 = 0uLL;
      *&v397 = 0;
      v364 = 0u;
      v365 = 0u;
      v366 = 0u;
      v367 = 0u;
      v126 = [GroundedNamesTokenFromTokenInfo countByEnumeratingWithState:&v364 objects:v388 count:16];
      if (v126)
      {
        obj = GroundedNamesTokenFromTokenInfo;
        v127 = 0;
        v343 = *v365;
        do
        {
          v128 = 0;
          v345 = v126;
          do
          {
            if (*v365 != v343)
            {
              objc_enumerationMutation(obj);
            }

            v129 = *(*(&v364 + 1) + 8 * v128);
            query_node_with_ann = 0;
            v369 = 0;
            v370 = 0;
            *&v382 = 1.0 / [v129 count];
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
            v130 = [v129 countByEnumeratingWithState:&v360 objects:v387 count:16];
            v348 = v128;
            v351 = v127;
            v131 = 0;
            if (v130)
            {
              v132 = *v361;
              do
              {
                for (k = 0; k != v130; ++k)
                {
                  if (*v361 != v132)
                  {
                    objc_enumerationMutation(v129);
                  }

                  v3 = *(*(&v360 + 1) + 8 * k);
                  std::string::basic_string[abi:nn200100]<0>(&v358, [v3 UTF8String]);
                  v134 = v369;
                  if (v369 >= v370)
                  {
                    v136 = 0xAAAAAAAAAAAAAAABLL * ((v369 - query_node_with_ann) >> 3);
                    v137 = v136 + 1;
                    if (v136 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      std::vector<long long>::__throw_length_error[abi:nn200100]();
                    }

                    if (0x5555555555555556 * ((v370 - query_node_with_ann) >> 3) > v137)
                    {
                      v137 = 0x5555555555555556 * ((v370 - query_node_with_ann) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v370 - query_node_with_ann) >> 3) >= 0x555555555555555)
                    {
                      v138 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v138 = v137;
                    }

                    *&buf[32] = &query_node_with_ann;
                    if (v138)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v138);
                    }

                    v139 = 8 * ((v369 - query_node_with_ann) >> 3);
                    v140 = v358;
                    *(v139 + 16) = v359;
                    *v139 = v140;
                    v359 = 0;
                    v358 = 0uLL;
                    v141 = 24 * v136 + 24;
                    v142 = (24 * v136 - (v369 - query_node_with_ann));
                    memcpy((v139 - (v369 - query_node_with_ann)), query_node_with_ann, v369 - query_node_with_ann);
                    v143 = query_node_with_ann;
                    v144 = v370;
                    query_node_with_ann = v142;
                    v369 = v141;
                    v370 = 0;
                    *&buf[16] = v143;
                    *&buf[24] = v144;
                    *&buf[8] = v143;
                    *buf = v143;
                    std::__split_buffer<std::string>::~__split_buffer(buf);
                    v369 = v141;
                    v4 = a2;
                    v19 = var2;
                    if (SHIBYTE(v359) < 0)
                    {
                      operator delete(v358);
                    }
                  }

                  else
                  {
                    v135 = v358;
                    *(v369 + 2) = v359;
                    *v134 = v135;
                    v369 = v134 + 24;
                  }

                  v145 = queryNodeForToken([v3 UTF8String], v89, &v381, v4);
                  v131 = makeAndNode(v131, v145);
                }

                v130 = [v129 countByEnumeratingWithState:&v360 objects:v387 count:16];
              }

              while (v130);
            }

            v127 = makeOrNode(v351, v131);
            std::vector<std::vector<std::string>>::push_back[abi:nn200100](&v396, &query_node_with_ann);
            *buf = &query_node_with_ann;
            std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
            v128 = (v348 + 1);
          }

          while ((v348 + 1) != v345);
          v126 = [obj countByEnumeratingWithState:&v364 objects:v388 count:16];
        }

        while (v126);
        LODWORD(v382) = 1065353216;
        if (v127)
        {
          query_node_with_ann = 0;
          v369 = 0;
          v370 = 0;
          joinVectors(&query_node_with_ann, &v396, (*(v4 + 7) >> 9) & 1);
          v146 = *__error();
          v147 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            v148 = v4->var0;
            v149 = v4->var1;
            v150 = &query_node_with_ann;
            if (v370 < 0)
            {
              v150 = query_node_with_ann;
            }

            *buf = 134218754;
            *&buf[4] = v148;
            *&buf[12] = 2080;
            *&buf[14] = v149;
            *&buf[22] = 2112;
            *&buf[24] = v340;
            *&buf[32] = 2080;
            *&buf[34] = v150;
            _os_log_impl(&dword_1C278D000, v147, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding %s grounded names match node", buf, 0x2Au);
          }

          *__error() = v146;
          NodeForToken = makeOrNode(NodeForToken, v127);
          if (SHIBYTE(v370) < 0)
          {
            operator delete(query_node_with_ann);
          }

LABEL_205:
          *buf = &v396;
          std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:nn200100](buf);
          goto LABEL_206;
        }
      }

      else
      {
        LODWORD(v382) = 1065353216;
      }

      v151 = *__error();
      v152 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = v4->var0;
        v154 = v4->var1;
        *buf = 134218498;
        *&buf[4] = v153;
        *&buf[12] = 2080;
        *&buf[14] = v154;
        *&buf[22] = 2112;
        *&buf[24] = v340;
        _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ No grounded name available", buf, 0x20u);
      }

      *__error() = v151;
      goto LABEL_205;
    }

LABEL_206:
    v155 = makeOrNode(NodeForToken, v353);
    if (!v155)
    {
      v35 = *__error();
      v161 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        v162 = v4->var0;
        v163 = v4->var1;
        *buf = 134218498;
        *&buf[4] = v162;
        *&buf[12] = 2080;
        *&buf[14] = v163;
        *&buf[22] = 2112;
        *&buf[24] = v340;
        _os_log_impl(&dword_1C278D000, v161, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Got an empty ranking tree", buf, 0x20u);
      }

LABEL_219:
      *__error() = v35;
      v159 = v339;
      goto LABEL_238;
    }

    v156 = v155;
    if (!std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(v19 + 4, v339))
    {
      goto LABEL_221;
    }

    v157 = *(v19 + 31);
    if (v157 < 0)
    {
      if (!*(v19 + 2))
      {
LABEL_221:
        v159 = v339;
        goto LABEL_237;
      }
    }

    else if (!*(v19 + 31))
    {
      goto LABEL_221;
    }

    v158 = *(v89 + 2);
    if (v378 == 1)
    {
      v159 = v339;
      if (!v158)
      {
        goto LABEL_237;
      }

      v160 = *v158;
      if (!*v158)
      {
        goto LABEL_228;
      }

      do
      {
        if (v158[10] < v160[10])
        {
          v158 = v160;
        }

        v160 = *v160;
      }

      while (v160);
    }

    else
    {
      v159 = v339;
      if (!v158)
      {
        goto LABEL_237;
      }

      v164 = *v158;
      if (!*v158)
      {
        goto LABEL_228;
      }

      do
      {
        if (v164[10] < v158[10])
        {
          v158 = v164;
        }

        v164 = *v164;
      }

      while (v164);
    }

    if (v158)
    {
LABEL_228:
      v165 = v159;
      v166 = (var2 + 4);
      if ((v157 & 0x80000000) != 0)
      {
        v166 = *v329;
      }

      v167 = v158[10];
      v168 = HIDWORD(v382);
      v169 = db_make_query_node_with_ann(v166, 0);
      *&v396 = MEMORY[0x1E69E9820];
      *(&v396 + 1) = 3221225472;
      *&v397 = ___Z14llmRankingNodePKcff_block_invoke;
      *(&v397 + 1) = &__block_descriptor_40_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
      v398 = __PAIR64__(v168, LODWORD(v167));
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E8198ED0;
      *&buf[32] = &v396;
      db_query_tree_apply_block_with_meta(v169, buf, 0);
      if (v169)
      {
        Node = normalizeQueryNode(v169, v167);
        v171 = *__error();
        v172 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
        {
          v173 = (var2 + 4);
          if (*(v19 + 31) < 0)
          {
            v173 = *v329;
          }

          v174 = v4->var0;
          v175 = v4->var1;
          *buf = 134219266;
          *&buf[4] = v174;
          *&buf[12] = 2080;
          *&buf[14] = v175;
          *&buf[22] = 2112;
          *&buf[24] = v340;
          *&buf[32] = 2080;
          *&buf[34] = v173;
          *&buf[42] = 2048;
          *&buf[44] = Node;
          *&buf[52] = 2048;
          *&buf[54] = v167;
          _os_log_impl(&dword_1C278D000, v172, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Extending match with %s (maxScore: %f -> %f)", buf, 0x3Eu);
        }

        *__error() = v171;
        v156 = makeOrNode(v156, v169);
      }

      v159 = v165;
    }

LABEL_237:
    v332 = makeAndNode(v332, v156);
LABEL_238:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v376);
    v176 = v375;
    *&v375 = 0;
    if (v176)
    {
      operator delete(v176);
    }

    v20 = v159 + 1;
  }

  while (v20 != Count);
  FalseNode = &v332->var0;
  if (!v332)
  {
LABEL_280:
    v211 = *__error();
    v212 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
    {
      v213 = v4->var0;
      v214 = v4->var1;
      *buf = 134218242;
      *&buf[4] = v213;
      *&buf[12] = 2080;
      *&buf[14] = v214;
      _os_log_impl(&dword_1C278D000, v212, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][V2] Got an empty ranking query tree (using clone of retrieval node with maxScore = 1)", buf, 0x16u);
    }

    *__error() = v211;
    v215 = MEMORY[0x1E69E9AC8];
    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal;
    }

    v216 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    FalseNode = v216;
    if (!v216)
    {
      goto LABEL_289;
    }

    *(v216 + 24) = 32;
    if (*v215 <= 0x12FuLL)
    {
      ++sTotal;
    }

    v217 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
    if (v217)
    {
      v217[13] = 1065353216;
      FalseNode[2] = v217;
    }

    else
    {
LABEL_289:
      _log_fault_for_malloc_failure();
    }
  }

  if (v380 < 0)
  {
    operator delete(v379[0]);
  }

  a3 = v330;
  if (!v330)
  {
LABEL_293:
    v218 = (*(v4 + 7) & 2) == 0;
    v189 = *__error();
    if (v218)
    {
      v219 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        v220 = v4->var0;
        v221 = v4->var1;
        *buf = 134218242;
        *&buf[4] = v220;
        *&buf[12] = 2080;
        *&buf[14] = v221;
        _os_log_impl(&dword_1C278D000, v219, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding L1 Ranking V2 node", buf, 0x16u);
      }
    }

    else
    {
      v222 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
      {
        v223 = v4->var0;
        v224 = v4->var1;
        *buf = 134218242;
        *&buf[4] = v223;
        *&buf[12] = 2080;
        *&buf[14] = v224;
        _os_log_impl(&dword_1C278D000, v222, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding L1 Ranking V2 node", buf, 0x16u);
      }
    }

    goto LABEL_299;
  }

LABEL_254:
  *a3 = 1;
  v188 = (*(v4 + 7) & 2) == 0;
  v189 = *__error();
  if (v188)
  {
    v190 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
    {
      v191 = v4->var0;
      v192 = v4->var1;
      *buf = 134218242;
      *&buf[4] = v191;
      *&buf[12] = 2080;
      *&buf[14] = v192;
      _os_log_impl(&dword_1C278D000, v190, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding L1 Ranking V2 node, enabling L1 normalization", buf, 0x16u);
    }
  }

  else
  {
    v193 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
    {
      v194 = v4->var0;
      v195 = v4->var1;
      *buf = 134218242;
      *&buf[4] = v194;
      *&buf[12] = 2080;
      *&buf[14] = v195;
      _os_log_impl(&dword_1C278D000, v193, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding L1 Ranking V2 node, enabling L1 normalization", buf, 0x16u);
    }
  }

LABEL_299:
  *__error() = v189;
  if (!FalseNode)
  {
LABEL_381:
    v301 = (*(v4 + 7) & 2) == 0;
    v12 = *__error();
    if (v301)
    {
      v13 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_385;
      }
    }

    else
    {
      v13 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_385:
        v302 = v4->var0;
        v303 = v4->var1;
        *buf = 134218242;
        *&buf[4] = v302;
        *&buf[12] = 2080;
        *&buf[14] = v303;
        v16 = "[qid=%lld][%s][POMMES][LLM] Skip adding non-photos LLM tree, Got no LLM parse (using ALWAYS_FALSE_NODE)";
        goto LABEL_386;
      }
    }

LABEL_387:
    *__error() = v12;
    FalseNode = makeFalseNode();
  }

LABEL_388:
  v304 = *MEMORY[0x1E69E9840];
  return FalseNode;
}

void sub_1C295CE78(_Unwind_Exception *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(STACK[0x250]);
  v2 = STACK[0x240];
  STACK[0x240] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  _Unwind_Resume(a1);
}

query_node *llmSparseRetrievalTree(const __CFDictionary *a1, PRContext *a2, _WORD *a3)
{
  v285 = *MEMORY[0x1E69E9840];
  TokensInfoFromQueryUnderstanding = getTokensInfoFromQueryUnderstanding(a1);
  if (TokensInfoFromQueryUnderstanding)
  {
    v7 = TokensInfoFromQueryUnderstanding;
    v257 = a1;
    theArray = getLLMParseFromQueryUnderstanding(a1);
    IndexAttributeScores = getIndexAttributeScores(a2->var4);
    v8 = getIndexAttributeScores(512);
    v263 = a2;
    v261 = a3;
    if ((*a3 & 2) == 0)
    {
      v248 = v8;
      v250 = 0;
      v9 = 0;
      v252 = 0;
      v254 = 0;
      v256 = 0;
      v247 = (a3 + 4);
      while (1)
      {
        if (v9 >= CFArrayGetCount(v7))
        {
          if (v256)
          {
            v123 = v263;
            v122 = v254;
            if ((*v261 & 0x20) != 0)
            {
              if ((*v261 & 0x40) == 0)
              {
                std::string::basic_string[abi:nn200100]<0>(v284, "com.apple.MobileAddressBook");
                memset(buf, 0, sizeof(buf));
                std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, v284, &v284[1] + 8, 1uLL);
              }

              std::string::basic_string[abi:nn200100]<0>(v284, "com.apple.MobileAddressBook");
              memset(buf, 0, sizeof(buf));
              std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, v284, &v284[1] + 8, 1uLL);
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __db_query_tree_apply_block_block_invoke;
            v281 = &unk_1E8198ED0;
            *v282 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v256, buf, 0);
          }

          else
          {
            v123 = v263;
            v122 = v254;
          }

          if (v250)
          {
            v122 = makeAndNode(v122, v250);
          }

          if (v252)
          {
            v122 = makeAndNode(v122, v252);
          }

          v124 = v257;
          if (*(v123 + 28))
          {
            goto LABEL_282;
          }

          if (v122)
          {
            QueryNodeForPhotosMediaType = createQueryNodeForPhotosMediaType(0, v123);
            v122 = makeAndNode(v122, QueryNodeForPhotosMediaType);
            v126 = *__error();
            v127 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              var0 = v263->var0;
              var1 = v263->var1;
              *buf = 134218242;
              *&buf[4] = var0;
              *&buf[12] = 2080;
              *&buf[14] = var1;
              _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding filter nodes for not searching over image and video files", buf, 0x16u);
            }

            *__error() = v126;
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
        TokenFromTokenInfo = getTokenFromTokenInfo(ValueAtIndex);
        LemmaFromTokenInfo = getLemmaFromTokenInfo(ValueAtIndex);
        RawTextTokensFromTokenInfo = getRawTextTokensFromTokenInfo(ValueAtIndex);
        v270 = -1;
        LLMTokenDescription = fetchLLMTokenDescription(&v270, ValueAtIndex, theArray, 0);
        v15 = v270;
        v16 = "Unknown";
        if (v270 <= 0xD2)
        {
          v16 = off_1E8196D10[v270];
        }

        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%ld][%s]", @"[SP]", v9, v16];
        if (isLLMTopKRankingArgId(v15))
        {
          v18 = *__error();
          v19 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v263->var0;
            v21 = v263->var1;
            *buf = 134218498;
            *&buf[4] = v20;
            *&buf[12] = 2080;
            *&buf[14] = v21;
            *&buf[22] = 2112;
            v281 = v17;
            _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is for TopK ranking only)", buf, 0x20u);
          }

LABEL_18:
          *__error() = v18;
          goto LABEL_19;
        }

        if (isLLMInferredAppEntityTypeArgId(v15))
        {
          v18 = *__error();
          v22 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v263->var0;
            v24 = v263->var1;
            *buf = 134218498;
            *&buf[4] = v23;
            *&buf[12] = 2080;
            *&buf[14] = v24;
            *&buf[22] = 2112;
            v281 = v17;
            _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is inferred app entity)", buf, 0x20u);
          }

          goto LABEL_18;
        }

        if (isIgnoredAppEntityStatusArgId(v15))
        {
          v18 = *__error();
          v25 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v263->var0;
            v27 = v263->var1;
            *buf = 134218498;
            *&buf[4] = v26;
            *&buf[12] = 2080;
            *&buf[14] = v27;
            *&buf[22] = 2112;
            v281 = v17;
            _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is ignored app entity status)", buf, 0x20u);
          }

          goto LABEL_18;
        }

        if (v15 == 104)
        {
          if ((*v261 & 0x100) != 0)
          {
            v18 = *__error();
            v31 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v263->var0;
              v33 = v263->var1;
              v34 = *v261;
              *buf = 134219010;
              *&buf[4] = v32;
              *&buf[12] = 2080;
              *&buf[14] = v33;
              *&buf[22] = 2112;
              v281 = v17;
              *v282 = 1024;
              *&v282[2] = (v34 >> 5) & 1;
              *&v282[6] = 1024;
              *&v282[8] = (v34 >> 8) & 1;
              _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is person self and hasContact=%d, skipSelf=%d)", buf, 0x2Cu);
            }

            goto LABEL_18;
          }

          if (!isBundleSpecificFilterAppEntityStatusArgId(104))
          {
            v36 = groundedNamesRetrievalNode(ValueAtIndex, v248, v17, v263);
            v256 = makeOrNode(v256, v36);
            goto LABEL_19;
          }
        }

        else
        {
          if (v15 == 16)
          {
            if ((*v261 & 8) != 0)
            {
              v18 = *__error();
              v37 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v263->var0;
                v39 = v263->var1;
                *buf = 134218498;
                *&buf[4] = v38;
                *&buf[12] = 2080;
                *&buf[14] = v39;
                *&buf[22] = 2112;
                v281 = v17;
                _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is an event type hotel and hasNonOptionalSearchTerm=1)", buf, 0x20u);
              }

              goto LABEL_18;
            }
          }

          else if (v15 == 1 && (*v261 & 0x40) != 0)
          {
            v18 = *__error();
            v28 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v263->var0;
              v30 = v263->var1;
              *buf = 134218498;
              *&buf[4] = v29;
              *&buf[12] = 2080;
              *&buf[14] = v30;
              *&buf[22] = 2112;
              v281 = v17;
              _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is a search term and hasStrictContactEntityType=1)", buf, 0x20u);
            }

            goto LABEL_18;
          }

          if (!isBundleSpecificFilterAppEntityStatusArgId(v15))
          {
            if ((*v261 & 0x10) == 0)
            {
              std::string::basic_string[abi:nn200100]<0>(buf, [-[__CFDictionary localizedLowercaseString](TokenFromTokenInfo "localizedLowercaseString")]);
              v40 = isOptionalSearchTerm(v15, buf, v7, v9, 0, 0, 0);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v40)
              {
                v18 = *__error();
                v41 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = v263->var0;
                  v43 = v263->var1;
                  *buf = 134218498;
                  *&buf[4] = v42;
                  *&buf[12] = 2080;
                  *&buf[14] = v43;
                  *&buf[22] = 2112;
                  v281 = v17;
                  _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (matched trailing optional search token)", buf, 0x20u);
                }

                goto LABEL_18;
              }
            }

            if (isLLMOptionalArgId(v15) && (*v261 & 1) == 0)
            {
              v44 = *__error();
              v45 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = v263->var0;
                v47 = v263->var1;
                *buf = 134218498;
                *&buf[4] = v46;
                *&buf[12] = 2080;
                *&buf[14] = v47;
                *&buf[22] = 2112;
                v281 = v17;
                _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is optional and there is at least one non-optional arg Id in the query)", buf, 0x20u);
              }

              goto LABEL_56;
            }

            if (isLLMRetrievalFilterArgId(v15))
            {
              v44 = *__error();
              v48 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v49 = v263->var0;
                v50 = v263->var1;
                *buf = 134218498;
                *&buf[4] = v49;
                *&buf[12] = 2080;
                *&buf[14] = v50;
                *&buf[22] = 2112;
                v281 = v17;
                _os_log_impl(&dword_1C278D000, v48, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is app entity filter)", buf, 0x20u);
              }

LABEL_56:
              v51 = 0;
              *__error() = v44;
LABEL_57:
              if (v15 == 1)
              {
                v52 = *__error();
                v53 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = v263->var0;
                  v55 = v263->var1;
                  *buf = 134218498;
                  *&buf[4] = v54;
                  *&buf[12] = 2080;
                  *&buf[14] = v55;
                  *&buf[22] = 2112;
                  v281 = v17;
                  v56 = v53;
                  v57 = "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because we add token matching manually";
                  goto LABEL_78;
                }

                goto LABEL_79;
              }
            }

            else
            {
              if ((v15 - 65) > 1)
              {
                if (v15 == 193)
                {
                  v58 = *__error();
                  v62 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    v63 = v263->var0;
                    v64 = v263->var1;
                    *buf = 134218498;
                    *&buf[4] = v63;
                    *&buf[12] = 2080;
                    *&buf[14] = v64;
                    *&buf[22] = 2112;
                    v281 = v17;
                    _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is conversation filter time)", buf, 0x20u);
                  }

                  v15 = 193;
                }

                else
                {
                  if (v15 != 8 || !getIsRelativeTimeArgFromTokenInfo(ValueAtIndex))
                  {
                    if (isLLMTemporalArgId(v15))
                    {
                      v51 = 0;
                    }

                    else
                    {
                      log = *__error();
                      v92 = _SILogForLogForCategory(17);
                      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                      {
                        v93 = v263->var0;
                        v94 = v263->var1;
                        *buf = 134218498;
                        *&buf[4] = v93;
                        *&buf[12] = 2080;
                        *&buf[14] = v94;
                        *&buf[22] = 2112;
                        v281 = v17;
                        _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Adding token match node", buf, 0x20u);
                      }

                      *__error() = log;
                      if (v15 == 8)
                      {
                        v268 = 0u;
                        v269 = 0u;
                        v266 = 0u;
                        v267 = 0u;
                        v51 = 0;
                        v95 = [(__CFDictionary *)RawTextTokensFromTokenInfo countByEnumeratingWithState:&v266 objects:v271 count:16];
                        if (v95)
                        {
                          v96 = *v267;
                          do
                          {
                            for (i = 0; i != v95; ++i)
                            {
                              if (*v267 != v96)
                              {
                                objc_enumerationMutation(RawTextTokensFromTokenInfo);
                              }

                              matched = defaultMatchQueryNodeForLLMRetrieval([*(*(&v266 + 1) + 8 * i) UTF8String], *(IndexAttributeScores + 2), v263);
                              v51 = makeAndNode(v51, matched);
                            }

                            v95 = [(__CFDictionary *)RawTextTokensFromTokenInfo countByEnumeratingWithState:&v266 objects:v271 count:16];
                          }

                          while (v95);
                          v15 = v270;
                        }

                        else
                        {
                          v15 = 8;
                        }
                      }

                      else
                      {
                        v99 = defaultMatchQueryNodeForLLMRetrieval([(__CFDictionary *)TokenFromTokenInfo UTF8String], *(IndexAttributeScores + 2), v263);
                        if (isLLMLocationArgId(v15) || ![(NSString *)LemmaFromTokenInfo length]|| [(NSString *)LemmaFromTokenInfo isEqualToString:TokenFromTokenInfo])
                        {
                          v100 = 0;
                        }

                        else
                        {
                          loga = *__error();
                          v243 = _SILogForLogForCategory(17);
                          if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
                          {
                            v241 = v263->var0;
                            v242 = v263->var1;
                            v240 = redactString(LemmaFromTokenInfo, (*(v263 + 7) >> 9) & 1);
                            v110 = redactString(TokenFromTokenInfo, (*(v263 + 7) >> 9) & 1);
                            *buf = 134219010;
                            *&buf[4] = v241;
                            *&buf[12] = 2080;
                            *&buf[14] = v242;
                            *&buf[22] = 2112;
                            v281 = v17;
                            *v282 = 2112;
                            *&v282[2] = v240;
                            *&v282[10] = 2112;
                            v283 = v110;
                            _os_log_impl(&dword_1C278D000, v243, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Adding lemma node %@ for token %@", buf, 0x34u);
                          }

                          *__error() = loga;
                          v100 = defaultMatchQueryNodeForLLMRetrieval([(NSString *)LemmaFromTokenInfo UTF8String], *(IndexAttributeScores + 2), v263);
                        }

                        v51 = makeOrNode(v99, v100);
                      }

                      if (isLLMPersonArgId(v15))
                      {
                        v101 = groundedNamesRetrievalNode(ValueAtIndex, IndexAttributeScores, v17, v263);
                        v51 = makeOrNode(v51, v101);
                      }

                      if (v15 == 1 && (~*v261 & 0x220) == 0)
                      {
                        v102 = *__error();
                        v103 = _SILogForLogForCategory(17);
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                        {
                          v104 = v263->var0;
                          v105 = v263->var1;
                          *buf = 134218498;
                          *&buf[4] = v104;
                          *&buf[12] = 2080;
                          *&buf[14] = v105;
                          *&buf[22] = 2112;
                          v281 = v17;
                          _os_log_impl(&dword_1C278D000, v103, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding contacts bundle exclusion filter to search terms", buf, 0x20u);
                        }

                        *__error() = v102;
                        std::string::basic_string[abi:nn200100]<0>(v284, "com.apple.MobileAddressBook");
                        memset(buf, 0, sizeof(buf));
                        std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, v284, &v284[1] + 8, 1uLL);
                      }

                      if (isWalletDocumentUnderstandingEnabled_onceToken != -1)
                      {
                        dispatch_once(&isWalletDocumentUnderstandingEnabled_onceToken, &__block_literal_global_18_11151);
                      }

                      v15 = v270;
                      if (isWalletDocumentUnderstandingEnabled_ffStatus == 1 && (v270 & 0xFFFFFFFE) == 6)
                      {
                        v106 = *__error();
                        v107 = _SILogForLogForCategory(17);
                        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                        {
                          v108 = v263->var0;
                          v109 = v263->var1;
                          *buf = 134218498;
                          *&buf[4] = v108;
                          *&buf[12] = 2080;
                          *&buf[14] = v109;
                          *&buf[22] = 2112;
                          v281 = v17;
                          _os_log_impl(&dword_1C278D000, v107, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Exclude token match node for departure and arrival location for Wallet bundle", buf, 0x20u);
                        }

                        *__error() = v106;
                        std::string::basic_string[abi:nn200100]<0>(v284, "com.apple.Passbook");
                        memset(buf, 0, sizeof(buf));
                        std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, v284, &v284[1] + 8, 1uLL);
                      }
                    }

                    goto LABEL_57;
                  }

                  v58 = *__error();
                  v89 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    v90 = v263->var0;
                    v91 = v263->var1;
                    *buf = 134218498;
                    *&buf[4] = v90;
                    *&buf[12] = 2080;
                    *&buf[14] = v91;
                    *&buf[22] = 2112;
                    v281 = v17;
                    _os_log_impl(&dword_1C278D000, v89, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is time and it is relative)", buf, 0x20u);
                  }

                  v15 = 8;
                }
              }

              else
              {
                v58 = *__error();
                v59 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  v60 = v263->var0;
                  v61 = v263->var1;
                  *buf = 134218498;
                  *&buf[4] = v60;
                  *&buf[12] = 2080;
                  *&buf[14] = v61;
                  *&buf[22] = 2112;
                  v281 = v17;
                  _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is person sender or receiver)", buf, 0x20u);
                }
              }

              v51 = 0;
              *__error() = v58;
            }

            if ([LLMTokenDescription length])
            {
              RetrievalNodeFromQueryString = makeRetrievalNodeFromQueryString([LLMTokenDescription UTF8String]);
              if (v15 == 18)
              {
                v66 = makeRetrievalNodeFromQueryString("_kMDItemBundleID = com.apple.FileProvider.LocalStorage || _kMDItemBundleID=com.apple.CloudDocs.iCloudDriveFileProvider");
                v67 = *__error();
                v68 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = v263->var0;
                  v70 = v263->var1;
                  *buf = 134218498;
                  *&buf[4] = v69;
                  *&buf[12] = 2080;
                  *&buf[14] = v70;
                  *&buf[22] = 2112;
                  v281 = v17;
                  _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ retrieve all type of files for file search on iOS", buf, 0x20u);
                }

                *__error() = v67;
                RetrievalNodeFromQueryString = makeOrNode(RetrievalNodeFromQueryString, v66);
              }

              if (RetrievalNodeFromQueryString)
              {
                if (isLLMTemporalArgId(v15))
                {
                  goto LABEL_75;
                }

                v76 = *v261;
                if (*v261)
                {
LABEL_84:
                  v75 = 0;
                  if ((v76 & 0x80) != 0 && v15 == 8)
                  {
                    NonMatchRetrievalNodeFromORQueryString = makeNonMatchRetrievalNodeFromORQueryString([LLMTokenDescription UTF8String]);
                    goto LABEL_87;
                  }
                }

                else
                {
                  if (!isLLMOptionalArgId(v15))
                  {
                    v76 = *v261;
                    goto LABEL_84;
                  }

LABEL_75:
                  NonMatchRetrievalNodeFromORQueryString = makeNonMatchRetrievalNodeFromQueryString([LLMTokenDescription UTF8String]);
LABEL_87:
                  RetrievalNodeFromQueryString = makeOrNode(RetrievalNodeFromQueryString, NonMatchRetrievalNodeFromORQueryString);
                  v75 = 1;
                }
              }

              else
              {
                v75 = 0;
              }

              v52 = *__error();
              v77 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                v78 = v263->var0;
                v79 = v263->var1;
                *buf = 134218754;
                *&buf[4] = v78;
                *&buf[12] = 2080;
                *&buf[14] = v79;
                *&buf[22] = 2112;
                v281 = v17;
                *v282 = 1024;
                *&v282[2] = v75;
                _os_log_impl(&dword_1C278D000, v77, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding parsed query tree (+nonMatch:%d)", buf, 0x26u);
              }
            }

            else
            {
              v52 = *__error();
              v72 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                v73 = v263->var0;
                v74 = v263->var1;
                *buf = 134218498;
                *&buf[4] = v73;
                *&buf[12] = 2080;
                *&buf[14] = v74;
                *&buf[22] = 2112;
                v281 = v17;
                v56 = v72;
                v57 = "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because tokenDescription is empty";
LABEL_78:
                _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, v57, buf, 0x20u);
              }

LABEL_79:
              RetrievalNodeFromQueryString = 0;
            }

            *__error() = v52;
            v80 = makeOrNode(v51, RetrievalNodeFromQueryString);
            if (v80 && std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(v261 + 4, v9))
            {
              if (*(v261 + 31) < 0)
              {
                if (!*(v261 + 2))
                {
                  goto LABEL_103;
                }

                v81 = *v247;
              }

              else
              {
                v81 = v247;
                if (!*(v261 + 31))
                {
                  goto LABEL_103;
                }
              }

              v82 = makeRetrievalNodeFromQueryString(v81);
              if (v82)
              {
                v83 = v82;
                v84 = *__error();
                v85 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  v86 = v247;
                  if (*(v261 + 31) < 0)
                  {
                    v86 = *v247;
                  }

                  v87 = v263->var0;
                  v88 = v263->var1;
                  *buf = 134218754;
                  *&buf[4] = v87;
                  *&buf[12] = 2080;
                  *&buf[14] = v88;
                  *&buf[22] = 2112;
                  v281 = v17;
                  *v282 = 2080;
                  *&v282[2] = v86;
                  _os_log_impl(&dword_1C278D000, v85, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Extending match with %s", buf, 0x2Au);
                }

                *__error() = v84;
                v80 = makeOrNode(v80, v83);
              }
            }

LABEL_103:
            if (isLLMAppEntityTypeArgId(v270))
            {
              v250 = makeOrNode(v250, v80);
            }

            else
            {
              v254 = makeAndNode(v254, v80);
            }

            goto LABEL_19;
          }
        }

        BundleSpecificFilterNode = generateBundleSpecificFilterNode(v263, v15, v17, LLMTokenDescription, 0);
        if (BundleSpecificFilterNode)
        {
          v252 = makeAndNode(v252, BundleSpecificFilterNode);
        }

LABEL_19:
        ++v9;
      }
    }

    v118 = *__error();
    v119 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v120 = a2->var0;
      v121 = a2->var1;
      *buf = 134218242;
      *&buf[4] = v120;
      *&buf[12] = 2080;
      *&buf[14] = v121;
      _os_log_impl(&dword_1C278D000, v119, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Skipping adding sparse nodes to retrieval tree as all tokens are temporal nodes", buf, 0x16u);
    }

    *__error() = v118;
    if (*(a2 + 28))
    {
      goto LABEL_283;
    }

    v122 = 0;
LABEL_169:
    v124 = v257;
LABEL_170:
    if ((*v261 & 0x400) == 0)
    {
      goto LABEL_282;
    }

    v255 = v122;
    theArraya = getTokensInfoFromQueryUnderstanding(v124);
    if (!theArraya)
    {
      v211 = *__error();
      v212 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        v213 = v263->var0;
        v214 = v263->var1;
        *v272 = 134218498;
        *&v272[4] = v213;
        v273 = 2080;
        v274 = v214;
        v275 = 2112;
        v276 = 0;
        v215 = "[qid=%lld][%s][POMMES][LLM][SPM] Got no LLM parse (using ALWAYS_FALSE_NODE) with LLMParse:'%@'";
        v216 = v212;
        v217 = 32;
        goto LABEL_277;
      }

LABEL_278:
      *__error() = v211;
      FalseNode = makeFalseNode();
      if (FalseNode)
      {
        goto LABEL_279;
      }

      v236 = *__error();
      v237 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
      {
        v238 = v263->var0;
        v239 = v263->var1;
        *buf = 134218242;
        *&buf[4] = v238;
        *&buf[12] = 2080;
        *&buf[14] = v239;
        _os_log_impl(&dword_1C278D000, v237, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Skipping image and video file search sub-tree to retrieval tree as it is empty", buf, 0x16u);
      }

      *__error() = v236;
      v122 = v255;
      if (!v255)
      {
        goto LABEL_283;
      }

      goto LABEL_287;
    }

    LLMParseFromQueryUnderstanding = getLLMParseFromQueryUnderstanding(v257);
    v258 = getIndexAttributeScores(v263->var4);
    v249 = getIndexAttributeScores(32);
    if ((*v261 & 2) != 0)
    {
      v218 = *__error();
      v219 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        v220 = v263->var0;
        v221 = v263->var1;
        *v272 = 134218242;
        *&v272[4] = v220;
        v273 = 2080;
        v274 = v221;
        _os_log_impl(&dword_1C278D000, v219, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][SPM] Skipping adding sparse nodes to retrieval tree as all tokens are temporal nodes", v272, 0x16u);
      }

      *__error() = v218;
      goto LABEL_275;
    }

    v130 = 0;
    v251 = 0;
    v253 = 0;
    while (1)
    {
      if (v130 >= CFArrayGetCount(theArraya))
      {
        if (v251)
        {
          FalseNode = makeAndNode(v253, v251);
          if (!FalseNode)
          {
            goto LABEL_275;
          }

LABEL_279:
          v226 = FalseNode;
          v227 = *__error();
          v228 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
          {
            v229 = v263->var0;
            v230 = v263->var1;
            *buf = 134218242;
            *&buf[4] = v229;
            *&buf[12] = 2080;
            *&buf[14] = v230;
            _os_log_impl(&dword_1C278D000, v228, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding image and video file search sub-tree to retrieval tree as intent is document search", buf, 0x16u);
          }

          *__error() = v227;
          v122 = makeOrNode(v255, v226);
LABEL_282:
          if (!v122)
          {
LABEL_283:
            v111 = *__error();
            v231 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
            {
              v232 = v263->var0;
              v233 = v263->var1;
              *buf = 134218242;
              *&buf[4] = v232;
              *&buf[12] = 2080;
              *&buf[14] = v233;
              v115 = "[qid=%lld][%s][POMMES][LLM] Got an empty retrieval query tree (using ALWAYS_FALSE_NODE)";
              v116 = v231;
              v117 = 22;
LABEL_285:
              _os_log_impl(&dword_1C278D000, v116, OS_LOG_TYPE_DEFAULT, v115, buf, v117);
            }

            goto LABEL_286;
          }

          goto LABEL_287;
        }

        FalseNode = v253;
        if (v253)
        {
          goto LABEL_279;
        }

LABEL_275:
        v211 = *__error();
        v222 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
        {
          v223 = v263->var0;
          v224 = v263->var1;
          *v272 = 134218242;
          *&v272[4] = v223;
          v273 = 2080;
          v274 = v224;
          v215 = "[qid=%lld][%s][POMMES][LLM][SPM] Got an empty retrieval query tree (using ALWAYS_FALSE_NODE)";
          v216 = v222;
          v217 = 22;
LABEL_277:
          _os_log_impl(&dword_1C278D000, v216, OS_LOG_TYPE_DEFAULT, v215, v272, v217);
        }

        goto LABEL_278;
      }

      v131 = CFArrayGetValueAtIndex(theArraya, v130);
      v132 = getTokenFromTokenInfo(v131);
      v133 = getLemmaFromTokenInfo(v131);
      v134 = getRawTextTokensFromTokenInfo(v131);
      v270 = -1;
      v135 = fetchLLMTokenDescription(&v270, v131, LLMParseFromQueryUnderstanding, 0);
      v136 = v270;
      v137 = "Unknown";
      if (v270 <= 0xD2)
      {
        v137 = off_1E8196D10[v270];
      }

      v262 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%ld][%s]", @"[SPM]", v130, v137];
      if (isLLMTopKRankingArgId(v136))
      {
        v138 = *__error();
        v139 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          v140 = v263->var0;
          v141 = v263->var1;
          *v272 = 134218498;
          *&v272[4] = v140;
          v273 = 2080;
          v274 = v141;
          v275 = 2112;
          v276 = v262;
          _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (it is for TopK ranking only)", v272, 0x20u);
        }

LABEL_185:
        *__error() = v138;
        goto LABEL_186;
      }

      if (isIgnoredAppEntityStatusArgId(v136) || isBundleSpecificFilterAppEntityStatusArgId(v136))
      {
        v138 = *__error();
        v142 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          v143 = v263->var0;
          v144 = v263->var1;
          *v272 = 134218498;
          *&v272[4] = v143;
          v273 = 2080;
          v274 = v144;
          v275 = 2112;
          v276 = v262;
          _os_log_impl(&dword_1C278D000, v142, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (it is ignored or bundle specific filter app entity status)", v272, 0x20u);
        }

        goto LABEL_185;
      }

      if (v136 != 104)
      {
        break;
      }

      v145 = *__error();
      v146 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        v147 = v263->var0;
        v148 = v263->var1;
        v149 = *v261;
        *v272 = 134219010;
        *&v272[4] = v147;
        v273 = 2080;
        v274 = v148;
        v275 = 2112;
        v276 = v262;
        v277 = 1024;
        *v278 = (v149 >> 5) & 1;
        *&v278[4] = 1024;
        *&v278[6] = (v149 >> 8) & 1;
        _os_log_impl(&dword_1C278D000, v146, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (it is person self and hasContact=%d, skipSelf=%d)", v272, 0x2Cu);
      }

      *__error() = v145;
LABEL_186:
      ++v130;
    }

    if ((*v261 & 0x10) == 0)
    {
      std::string::basic_string[abi:nn200100]<0>(v272, [-[__CFDictionary localizedLowercaseString](v132 "localizedLowercaseString")]);
      v150 = isOptionalSearchTerm(v136, v272, theArraya, v130, 0, 0, 0);
      if (SHIBYTE(v275) < 0)
      {
        operator delete(*v272);
      }

      if (v150)
      {
        v138 = *__error();
        v151 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          v152 = v263->var0;
          v153 = v263->var1;
          *v272 = 134218498;
          *&v272[4] = v152;
          v273 = 2080;
          v274 = v153;
          v275 = 2112;
          v276 = v262;
          _os_log_impl(&dword_1C278D000, v151, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (matched trailing optional search token)", v272, 0x20u);
        }

        goto LABEL_185;
      }
    }

    if (isLLMOptionalArgId(v136) && (*v261 & 1) == 0)
    {
      v154 = *__error();
      v155 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        v156 = v263->var0;
        v157 = v263->var1;
        *v272 = 134218498;
        *&v272[4] = v156;
        v273 = 2080;
        v274 = v157;
        v275 = 2112;
        v276 = v262;
        v158 = v155;
        v159 = "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (it is optional and there is at least one non-optional arg Id in the query)";
LABEL_211:
        _os_log_impl(&dword_1C278D000, v158, OS_LOG_TYPE_DEFAULT, v159, v272, 0x20u);
        goto LABEL_212;
      }

      goto LABEL_212;
    }

    if (((v136 != 105) & ~isLLMRetrievalFilterArgId(v136)) == 0)
    {
      v154 = *__error();
      v160 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
      {
        v161 = v263->var0;
        v162 = v263->var1;
        *v272 = 134218498;
        *&v272[4] = v161;
        v273 = 2080;
        v274 = v162;
        v275 = 2112;
        v276 = v262;
        v158 = v160;
        v159 = "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (this is app entity filter or document inferred app entity)";
        goto LABEL_211;
      }

LABEL_212:
      v169 = 0;
      *__error() = v154;
      goto LABEL_213;
    }

    if ((v136 - 65) <= 1)
    {
      v154 = *__error();
      v163 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        v164 = v263->var0;
        v165 = v263->var1;
        *v272 = 134218498;
        *&v272[4] = v164;
        v273 = 2080;
        v274 = v165;
        v275 = 2112;
        v276 = v262;
        v158 = v163;
        v159 = "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (this is person sender or receiver)";
        goto LABEL_211;
      }

      goto LABEL_212;
    }

    if (v136 == 193)
    {
      v154 = *__error();
      v166 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
      {
        v167 = v263->var0;
        v168 = v263->var1;
        *v272 = 134218498;
        *&v272[4] = v167;
        v273 = 2080;
        v274 = v168;
        v275 = 2112;
        v276 = v262;
        v158 = v166;
        v159 = "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (this is conversation filter time)";
        goto LABEL_211;
      }

      goto LABEL_212;
    }

    if (isLLMTemporalArgId(v136))
    {
      v169 = 0;
      goto LABEL_213;
    }

    v191 = *__error();
    v192 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
    {
      v193 = v263->var0;
      v194 = v263->var1;
      *v272 = 134218498;
      *&v272[4] = v193;
      v273 = 2080;
      v274 = v194;
      v275 = 2112;
      v276 = v262;
      _os_log_impl(&dword_1C278D000, v192, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding token match node", v272, 0x20u);
    }

    *__error() = v191;
    v195 = v249;
    if (v136 != 1)
    {
      if (v136 == 8)
      {
        memset(v284, 0, sizeof(v284));
        v196 = 0;
        v197 = [(__CFDictionary *)v134 countByEnumeratingWithState:v284 objects:buf count:16];
        if (v197)
        {
          v198 = **&v284[1];
          do
          {
            for (j = 0; j != v197; ++j)
            {
              if (**&v284[1] != v198)
              {
                objc_enumerationMutation(v134);
              }

              v200 = defaultMatchQueryNodeForLLMRetrieval([*(*(&v284[0] + 1) + 8 * j) UTF8String], *(v258 + 2), v263);
              v196 = makeAndNode(v196, v200);
            }

            v197 = [(__CFDictionary *)v134 countByEnumeratingWithState:v284 objects:buf count:16];
          }

          while (v197);
        }

        goto LABEL_260;
      }

      v195 = v258;
    }

    v196 = defaultMatchQueryNodeForLLMRetrieval([(__CFDictionary *)v132 UTF8String], *(v195 + 2), v263);
LABEL_260:
    if ([(NSString *)v133 length]&& ![(NSString *)v133 isEqualToString:v132])
    {
      v246 = *__error();
      v202 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
      {
        v204 = v263->var0;
        v203 = v263->var1;
        v205 = redactString(v133, (*(v263 + 7) >> 9) & 1);
        v206 = redactString(v132, (*(v263 + 7) >> 9) & 1);
        *v272 = 134219010;
        *&v272[4] = v204;
        v273 = 2080;
        v274 = v203;
        v275 = 2112;
        v276 = v262;
        v277 = 2112;
        *v278 = v205;
        *&v278[8] = 2112;
        v279 = v206;
        _os_log_impl(&dword_1C278D000, v202, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Add lemma node %@ for token %@", v272, 0x34u);
      }

      *__error() = v246;
      v207 = v270 == 1;
      v208 = [(NSString *)v133 UTF8String];
      v209 = v258;
      if (v207)
      {
        v209 = v249;
      }

      v201 = defaultMatchQueryNodeForLLMRetrieval(v208, *(v209 + 2), v263);
    }

    else
    {
      v201 = 0;
    }

    v169 = makeOrNode(v196, v201);
    v136 = v270;
    if (isLLMPersonArgId(v270))
    {
      v210 = groundedNamesRetrievalNode(v131, v258, v262, v263);
      v169 = makeOrNode(v169, v210);
    }

LABEL_213:
    if (v136 == 1)
    {
      v170 = *__error();
      v171 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
      {
        v172 = v263->var0;
        v173 = v263->var1;
        *v272 = 134218498;
        *&v272[4] = v172;
        v273 = 2080;
        v274 = v173;
        v275 = 2112;
        v276 = v262;
        v174 = v171;
        v175 = "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because we add token matching manually";
LABEL_225:
        _os_log_impl(&dword_1C278D000, v174, OS_LOG_TYPE_DEFAULT, v175, v272, 0x20u);
        goto LABEL_226;
      }

      goto LABEL_226;
    }

    if (![v135 length])
    {
      v170 = *__error();
      v181 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
      {
        v182 = v263->var0;
        v183 = v263->var1;
        *v272 = 134218498;
        *&v272[4] = v182;
        v273 = 2080;
        v274 = v183;
        v275 = 2112;
        v276 = v262;
        v174 = v181;
        v175 = "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because tokenDescription is empty";
        goto LABEL_225;
      }

LABEL_226:
      v176 = 0;
LABEL_227:
      *__error() = v170;
      v184 = makeOrNode(v169, v176);
      if (isLLMAppEntityTypeArgId(v270))
      {
        v251 = makeOrNode(v251, v184);
      }

      else
      {
        v253 = makeAndNode(v253, v184);
      }

      goto LABEL_186;
    }

    if (v136 == 18 || v136 == 133 || v136 == 105)
    {
      v176 = makeRetrievalNodeFromQueryString([@"kMDItemContentType = public.jpeg ||                                                                       kMDItemContentType = public.png ||                                                                        kMDItemContentType = public.heic ||                                                                        kMDItemContentType = public.image ||                                                                        kMDItemContentType = com.apple.quicktime-movie ||                                                                        kMDItemContentType = com.apple.m4v-video ||                                                                        kMDItemContentType = public.mpeg-4 ||                                                                        kMDItemContentType = public.movie ||                                                                        kMDItemContentTypeTree = public.jpeg ||                                                                        kMDItemContentTypeTree = public.png ||                                                                        kMDItemContentTypeTree = public.heic ||                                                                        kMDItemContentTypeTree = public.image ||                                                                        kMDItemContentTypeTree = com.apple.quicktime-movie ||                                                                        kMDItemContentTypeTree = com.apple.m4v-video ||                                                                       kMDItemContentTypeTree = public.mpeg-4 ||                                                                        kMDItemContentTypeTree = public.movie" UTF8String]);
      v177 = *__error();
      v178 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        v179 = v263->var0;
        v180 = v263->var1;
        *v272 = 134218498;
        *&v272[4] = v179;
        v273 = 2080;
        v274 = v180;
        v275 = 2112;
        v276 = v262;
        _os_log_impl(&dword_1C278D000, v178, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ retrieve image and video type of files for file search on macOS", v272, 0x20u);
      }

      *__error() = v177;
    }

    else
    {
      v176 = makeRetrievalNodeFromQueryString([v135 UTF8String]);
    }

    if (!v176)
    {
      v186 = 0;
      goto LABEL_244;
    }

    if (isLLMTemporalArgId(v136))
    {
      goto LABEL_235;
    }

    v187 = *v261;
    if ((*v261 & 1) == 0)
    {
      if (isLLMOptionalArgId(v136))
      {
LABEL_235:
        NonMatchRetrievalNodeFromQueryString = makeNonMatchRetrievalNodeFromQueryString([v135 UTF8String]);
        goto LABEL_243;
      }

      v187 = *v261;
    }

    v186 = 0;
    if ((v187 & 0x80) == 0 || v136 != 8)
    {
LABEL_244:
      v170 = *__error();
      v188 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
      {
        v189 = v263->var0;
        v190 = v263->var1;
        *v272 = 134218754;
        *&v272[4] = v189;
        v273 = 2080;
        v274 = v190;
        v275 = 2112;
        v276 = v262;
        v277 = 1024;
        *v278 = v186;
        _os_log_impl(&dword_1C278D000, v188, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding parsed query tree (+nonMatch:%d)", v272, 0x26u);
      }

      goto LABEL_227;
    }

    NonMatchRetrievalNodeFromQueryString = makeNonMatchRetrievalNodeFromORQueryString([v135 UTF8String]);
LABEL_243:
    v176 = makeOrNode(v176, NonMatchRetrievalNodeFromQueryString);
    v186 = 1;
    goto LABEL_244;
  }

  v111 = *__error();
  v112 = _SILogForLogForCategory(17);
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    v113 = a2->var0;
    v114 = a2->var1;
    *buf = 134218498;
    *&buf[4] = v113;
    *&buf[12] = 2080;
    *&buf[14] = v114;
    *&buf[22] = 2112;
    v281 = 0;
    v115 = "[qid=%lld][%s][POMMES][LLM] Got no LLM parse (using ALWAYS_FALSE_NODE) with LLMParse:'%@'";
    v116 = v112;
    v117 = 32;
    goto LABEL_285;
  }

LABEL_286:
  *__error() = v111;
  v122 = makeFalseNode();
LABEL_287:
  v234 = *MEMORY[0x1E69E9840];
  return v122;
}

void sub_1C295F650(_Unwind_Exception *a1)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  _Unwind_Resume(a1);
}

uint64_t SIResultQueueGetEnqueuedSize(void *a1)
{
  pthread_mutex_lock((*a1 + 8));
  v2 = a1[9];
  pthread_mutex_unlock((*a1 + 8));
  return v2;
}

void *SIResultQueueCreate(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00408576B1E0uLL);
  *(v2 + 12) = 0;
  atomic_store(1u, v2 + 2);
  v3 = malloc_type_calloc(1uLL, 0x90uLL, 0x1090040E44D38CFuLL);
  *v3 = "simple queue";
  pthread_mutex_init((v3 + 8), 0);
  pthread_cond_init((v3 + 72), 0);
  *(v3 + 31) = 0;
  *(v3 + 32) = 0;
  *(v3 + 30) = 4;
  *(v3 + 17) = malloc_type_calloc(4uLL, 8uLL, 0x80040B8603338uLL);
  *v2 = v3;
  *(v2 + 6) = 0;
  *(v2 + 20) = a1;
  return v2;
}

uint64_t SIWaitResults(uint64_t *a1, float a2)
{
  v3 = *a1;
  pthread_mutex_lock((*a1 + 8));
  si_dequeue_wait_locked(v3, a2);

  return pthread_mutex_unlock((v3 + 8));
}

uint64_t LogASTIfDebuggingEnabled(uint64_t result, const __CFString *a2, PRContext *a3)
{
  v119 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = result;
    result = userDefaultExtendedDebuggingEnabled();
    if (result)
    {
      v6 = *(a3 + 7);
      var1 = a3->var1;
      v8 = "ranking";
      v107 = 0u;
      v108 = 0u;
      if ((v6 & 2) == 0)
      {
        v8 = "retrieval";
      }

      v9 = "committed";
      v105 = 0uLL;
      v106 = 0uLL;
      if ((v6 & 4) == 0)
      {
        v9 = "asyoutype";
      }

      v103 = 0uLL;
      v104 = 0uLL;
      v10 = (v6 & 0x800) == 0;
      v101 = 0uLL;
      v102 = 0uLL;
      v11 = "original";
      if (!v10)
      {
        v11 = "rewrite";
      }

      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      *__str = 0uLL;
      v94 = 0uLL;
      v12 = @"en";
      if (snprintf(__str, 0x100uLL, "%s/ast-%s-%s-%s-%s.json", "/tmp/debug_trees", v8, v9, v11, var1) >= 0x100)
      {
        v13 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = @"en";
        }

        v15 = logHeader(a3, &v14->isa);
        v16 = *__error();
        v17 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 138412290;
        *&buf[4] = v15;
        v18 = "%@ Error: Failed to construct file path for AST log (snprintf error or truncation).";
        v19 = buf;
        v20 = v17;
        v21 = 12;
        goto LABEL_15;
      }

      v22 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
      if (v22)
      {
        v12 = v22;
      }

      v23 = logHeader(a3, &v12->isa);
      if (a2)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];
        if (!v24)
        {
          v63 = *__error();
          v66 = _SILogForLogForCategory(19);
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_100;
          }

          *buf = 138412546;
          *&buf[4] = v23;
          *&buf[12] = 2080;
          *&buf[14] = __str;
          v65 = "%@ Error: Could not convert filename '%s' to NSString.";
          v67 = buf;
          goto LABEL_98;
        }

        v81 = v12;
        v82 = a2;
        v83 = a3;
        v84 = v24;
        v85 = v23;
        v25 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v26 = [MEMORY[0x1E695DF70] array];
        v86 = v5;
        [v26 addObject:{+[PRASTStackItem itemWithNode:visited:](PRASTStackItem, "itemWithNode:visited:", v5, 0)}];
        if ([v26 count])
        {
          while (1)
          {
            v27 = objc_autoreleasePoolPush();
            v28 = [v26 lastObject];
            v29 = [v28 node];
            v30 = [v28 visited];
            if (v29)
            {
              break;
            }

            [v26 removeLastObject];
LABEL_78:
            objc_autoreleasePoolPop(v27);
            if (![v26 count])
            {
              goto LABEL_79;
            }
          }

          if (!v30)
          {
            [v28 setVisited:1];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v29 children])
              {
                v91 = 0u;
                v92 = 0u;
                v89 = 0u;
                v90 = 0u;
                v41 = [objc_msgSend(v29 "children")];
                v42 = [v41 countByEnumeratingWithState:&v89 objects:v109 count:16];
                if (v42)
                {
                  v43 = v42;
                  v44 = *v90;
                  do
                  {
                    for (i = 0; i != v43; ++i)
                    {
                      if (*v90 != v44)
                      {
                        objc_enumerationMutation(v41);
                      }

                      v46 = *(*(&v89 + 1) + 8 * i);
                      if (v46)
                      {
                        [v26 addObject:{+[PRASTStackItem itemWithNode:visited:](PRASTStackItem, "itemWithNode:visited:", v46, 0)}];
                      }
                    }

                    v43 = [v41 countByEnumeratingWithState:&v89 objects:v109 count:16];
                  }

                  while (v43);
                }
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v29 expression])
              {
                [v26 addObject:{+[PRASTStackItem itemWithNode:visited:](PRASTStackItem, "itemWithNode:visited:", objc_msgSend(v29, "expression"), 0)}];
              }
            }

            goto LABEL_78;
          }

          v87 = v27;
          [v26 removeLastObject];
          v31 = [MEMORY[0x1E695DF90] dictionary];
          [v31 setObject:&unk_1F428F458 forKeyedSubscript:@"cost"];
          [v31 setObject:&unk_1F428F3F8 forKeyedSubscript:@"flags"];
          [v31 setObject:&unk_1F428F458 forKeyedSubscript:@"bias"];
          v32 = [MEMORY[0x1E695DF70] array];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [objc_msgSend(v29 "nodeType")];
            v34 = @"AST_AND";
            if ((v33 & 1) == 0)
            {
              if ([objc_msgSend(v29 nodeType])
              {
                v34 = @"AST_OR";
              }

              else
              {
                v34 = @"AST_COMPOSITE";
              }
            }

            [v31 setObject:v34 forKeyedSubscript:@"type"];
            if ([v29 children])
            {
              v117 = 0u;
              v118 = 0u;
              memset(v116, 0, sizeof(v116));
              v35 = [v29 children];
              v36 = [v35 countByEnumeratingWithState:v116 objects:buf count:16];
              if (v36)
              {
                v37 = v36;
                v38 = **&v116[16];
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (**&v116[16] != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = [v25 objectForKey:*(*&v116[8] + 8 * j)];
                    if (v40)
                    {
                      [v32 addObject:v40];
                    }
                  }

                  v37 = [v35 countByEnumeratingWithState:v116 objects:buf count:16];
                }

                while (v37);
              }
            }

            goto LABEL_75;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v31 setObject:@"AST_FIELD" forKeyedSubscript:@"type"];
            v47 = [v29 fieldTypeString];
            if (!v47)
            {
              v47 = [MEMORY[0x1E695DFB0] null];
            }

            [v31 setObject:v47 forKeyedSubscript:@"fieldType"];
            v48 = [v29 originalKeyword];
            if (!v48)
            {
              v48 = [MEMORY[0x1E695DFB0] null];
            }

            [v31 setObject:v48 forKeyedSubscript:@"originalFieldKeyword"];
            if ([v29 expression])
            {
              v49 = [v25 objectForKey:{objc_msgSend(v29, "expression")}];
              if (v49)
              {
                [v32 addObject:v49];
              }
            }

            goto LABEL_75;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v31 setObject:@"TERM" forKeyedSubscript:@"type"];
            DummyQPDict = createDummyQPDict();
            [DummyQPDict setObject:@"Term" forKeyedSubscript:@"field"];
            v51 = [v29 value];
            if (!v51)
            {
              v51 = [MEMORY[0x1E695DFB0] null];
            }

            [DummyQPDict setObject:v51 forKeyedSubscript:@"value"];
            [DummyQPDict setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v29, "isNegated")), @"isNegated"}];
            [DummyQPDict setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v29, "isIgnored")), @"isIgnored"}];
            v52 = DummyQPDict;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v56 = v31;
              v55 = @"AST_UNKNOWN";
              v57 = @"type";
              goto LABEL_74;
            }

            [v31 setObject:@"QPFilter" forKeyedSubscript:@"type"];
            v53 = createDummyQPDict();
            [v53 setObject:@"QPFilter" forKeyedSubscript:@"field"];
            v54 = [v29 filterString];
            if (!v54)
            {
              v54 = [MEMORY[0x1E695DFB0] null];
            }

            [v53 setObject:v54 forKeyedSubscript:@"value"];
            v52 = v53;
          }

          v55 = [v52 copy];
          v56 = v31;
          v57 = @"qp";
LABEL_74:
          [v56 setObject:v55 forKeyedSubscript:v57];
LABEL_75:
          if ([v32 count])
          {
            [v31 setObject:objc_msgSend(v32 forKeyedSubscript:{"copy"), @"children"}];
          }

          [v25 setObject:objc_msgSend(v31 forKey:{"copy"), v29}];
          v27 = v87;
          goto LABEL_78;
        }

LABEL_79:
        v58 = [v25 objectForKey:v86];
        if (v58)
        {
          v59 = v58;
          ClientInfo = getClientInfo(0, v83, 0);
          v61 = v83->var1;
          v109[0] = @"user_query";
          v109[1] = @"ast_tree";
          *buf = v82;
          *&buf[8] = v59;
          v109[2] = @"is_ranking";
          *&buf[16] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v83 + 7) >> 1) & 1];
          v109[3] = @"is_committed";
          v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v83 + 7) >> 2) & 1];
          v109[4] = @"is_rewrite";
          v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v83 + 7) >> 11) & 1];
          v109[5] = @"protection_class";
          if (v61)
          {
            v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v61];
          }

          else
          {
            v62 = [MEMORY[0x1E695DFB0] null];
          }

          v113 = v62;
          v114 = v81;
          v109[6] = @"language";
          v109[7] = @"client";
          v115 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ClientInfo];
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v109 count:8];
          *&v89 = 0;
          v71 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v70 options:1 error:&v89];
          if (v71)
          {
            v72 = v71;
            v73 = [v84 stringByDeletingLastPathComponent];
            v74 = [MEMORY[0x1E696AC08] defaultManager];
            if (([v74 fileExistsAtPath:v73] & 1) == 0)
            {
              v88 = 0;
              if (([v74 createDirectoryAtPath:v73 withIntermediateDirectories:1 attributes:0 error:&v88] & 1) == 0)
              {
                v16 = *__error();
                v79 = _SILogForLogForCategory(19);
                if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_16;
                }

                v80 = [v88 localizedDescription];
                *v116 = 138412802;
                *&v116[4] = v85;
                *&v116[12] = 2112;
                *&v116[14] = v73;
                *&v116[22] = 2112;
                *&v116[24] = v80;
                v18 = "%@ Error: Error creating directory %@ for AST log: %@";
                v19 = v116;
                v20 = v79;
                v21 = 32;
LABEL_15:
                _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, v18, v19, v21);
LABEL_16:
                result = __error();
                *result = v16;
                goto LABEL_101;
              }
            }

            result = [v72 writeToFile:v84 options:1 error:&v89];
            if (result)
            {
              goto LABEL_101;
            }

            v63 = *__error();
            v75 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              v76 = [v89 localizedDescription];
              *v116 = 138412802;
              *&v116[4] = v85;
              *&v116[12] = 2112;
              *&v116[14] = v84;
              *&v116[22] = 2112;
              *&v116[24] = v76;
              v65 = "%@ Error: Error writing JSON AST to file %@: %@";
              v67 = v116;
              v68 = v75;
              v69 = 32;
              goto LABEL_99;
            }

LABEL_100:
            result = __error();
            *result = v63;
            goto LABEL_101;
          }

          v63 = *__error();
          v66 = _SILogForLogForCategory(19);
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_100;
          }

          v77 = [v89 localizedDescription];
          *v116 = 138412546;
          *&v116[4] = v85;
          *&v116[12] = 2112;
          *&v116[14] = v77;
          v65 = "%@ Error: Error serializing AST to JSON: %@";
          v67 = v116;
LABEL_98:
          v68 = v66;
          v69 = 22;
          goto LABEL_99;
        }

        v63 = *__error();
        v64 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_100;
        }

        *buf = 138412290;
        *&buf[4] = v85;
        v65 = "%@ Error: Failed to build JSON representation for the AST tree.";
      }

      else
      {
        v63 = *__error();
        v64 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_100;
        }

        *buf = 138412290;
        *&buf[4] = v23;
        v65 = "%@ Error: Invalid arguments provided to log_ast_to_file.";
      }

      v67 = buf;
      v68 = v64;
      v69 = 12;
LABEL_99:
      _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, v65, v67, v69);
      goto LABEL_100;
    }
  }

LABEL_101:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t createDummyQPDict(void)
{
  v0 = MEMORY[0x1E695DF90];
  v1 = [MEMORY[0x1E695DFB0] null];
  return [v0 dictionaryWithObjectsAndKeys:{&unk_1F428F410, @"op", &unk_1F428F458, @"weight", &unk_1F428F458, @"cost", v1, @"field", objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"value", @"0x0", @"flags", 0}];
}

query_node *pommesDefaultTree(query_node *a1, PRContext *a2, int a3)
{
  if ((*(a2 + 28) & 2) != 0)
  {
    if (a1 && db_count_query_tree(a1))
    {
      __p = MEMORY[0x1E69E9820];
      v33 = 0x40000000;
      v34 = __db_query_tree_apply_block_block_invoke;
      v35 = &unk_1E8198ED0;
      v36 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(a1, &__p, &__block_literal_global_25_15416);
      v14 = v13;
      var4 = a2->var4;
      if (!getStemmingRankingAttributeScores(PRBundleIDType)::ans[var4])
      {
        std::mutex::lock(&getStemmingRankingAttributeScores(PRBundleIDType)::mu);
        if (!getStemmingRankingAttributeScores(PRBundleIDType)::ans[var4])
        {
          operator new();
        }

        std::mutex::unlock(&getStemmingRankingAttributeScores(PRBundleIDType)::mu);
      }

      v16 = getStemmingRankingAttributeScores(PRBundleIDType)::ans[var4];
      RankingAttributeScores = getRankingAttributeScores(a2);
      {
        MailRankingNameAttributeScores(void)::_mailAttributeScores = 0u;
        unk_1EDD78918 = 0u;
        dword_1EDD78928 = 1065353216;
      }

      if (MailRankingNameAttributeScores(void)::onceToken[0] != -1)
      {
        dispatch_once(MailRankingNameAttributeScores(void)::onceToken, &__block_literal_global_231);
      }

      WildCardAllowedFields = getWildCardAllowedFields(a2->var4);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = ___ZL17pommesRankingTreeP10query_nodeP9PRContext_block_invoke;
      v26 = &__block_descriptor_72_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
      v27 = a2;
      v28 = RankingAttributeScores;
      v29 = WildCardAllowedFields;
      v30 = &MailRankingNameAttributeScores(void)::_mailAttributeScores;
      v31 = v16;
      __p = MEMORY[0x1E69E9820];
      v33 = 0x40000000;
      v34 = __db_query_tree_apply_block_block_invoke;
      v35 = &unk_1E8198ED0;
      v36 = &v23;
      db_query_tree_apply_block_with_meta(v14, &__p, &__block_literal_global_1860);
      v23 = v19;
      if (v19 && a2->var3 == 1)
      {
        v20 = v19;
        QueryNode = createQueryNode("_kMDItemHasEmailContentURL", "1", 0, 1, 0, 0.8, 1.0);
        v23 = makeAndNode(v20, QueryNode);
      }
    }

    else
    {
      v23 = 0;
    }

    db_optimize_query_tree(&v23);
    v11 = v23;
    if (a3)
    {
      normalizeQueryNode(v23, 1.0);
    }
  }

  else if (a1 && db_count_query_tree(a1))
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 0x40000000;
    v25 = __db_query_tree_apply_block_block_invoke;
    v26 = &unk_1E8198ED0;
    v27 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(a1, &v23, &__block_literal_global_25_15416);
    v6 = v5;
    IndexAttributeScores = getIndexAttributeScores(a2->var4);
    v8 = getIndexAttributeScores(a2->var4);
    v9 = getWildCardAllowedFields(a2->var4);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = ___ZL19pommesRetrievalTreeP10query_nodeP9PRContext_block_invoke;
    v26 = &__block_descriptor_64_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
    v27 = v9;
    v28 = a2;
    v29 = v8;
    v30 = IndexAttributeScores;
    __p = MEMORY[0x1E69E9820];
    v33 = 0x40000000;
    v34 = __db_query_tree_apply_block_block_invoke;
    v35 = &unk_1E8198ED0;
    v36 = &v23;
    db_query_tree_apply_block_with_meta(v6, &__p, &__block_literal_global_11_1864);
    return v10;
  }

  else
  {
    return 0;
  }

  return v11;
}

void sub_1C2960B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::mutex::unlock(&getStemmingRankingAttributeScores(PRBundleIDType)::mu);
  _Unwind_Resume(a1);
}

_WORD *___ZL17pommesRankingTreeP10query_nodeP9PRContext_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v191 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_20;
  }

  v3 = *(a2 + 16);
  if (*(a2 + 48) != 4)
  {
    if (!v3)
    {
      goto LABEL_20;
    }

    v4 = *(v3 + 24);
LABEL_17:
    if (v4 != 15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = *(v3 + 24);
  HIDWORD(v6) = v4 - 1;
  LODWORD(v6) = v4 - 1;
  v5 = v6 >> 1;
  v133 = v5 > 6;
  v7 = (1 << v5) & 0x65;
  if (v133 || v7 == 0)
  {
    goto LABEL_17;
  }

  if (v4 == 15)
  {
LABEL_18:
    v12 = 16;
LABEL_19:
    *(a2 + 48) = v12;
    goto LABEL_20;
  }

  if ((*(v3 + 36) & 2) != 0)
  {
    *(v3 + 52) = 0;
    v12 = 32;
    goto LABEL_19;
  }

  v181 = 0uLL;
  v182 = 0;
  v10 = *v3;
  if (*v3 && *v10 == 42 && !v10[1] || query_node_is_double_star(a2))
  {
    v11 = 1;
  }

  else if (*v3)
  {
    std::string::basic_string[abi:nn200100]<0>(&v175, *v3);
    if (SHIBYTE(v182) < 0)
    {
      operator delete(v181);
    }

    v11 = 0;
    v181 = v175;
    v182 = v176;
  }

  else
  {
    v11 = 0;
  }

  if (isPhotosAttribute(&v181))
  {
    v2[24] = 16;
    goto LABEL_52;
  }

  v15 = *(v2 + 2);
  v16 = *(v15 + 72);
  if (v16)
  {
    v17 = strlen(*(v15 + 72));
  }

  else
  {
    v17 = 0;
  }

  v18 = HIBYTE(v182);
  if (SHIBYTE(v182) < 0)
  {
    v18 = *(&v181 + 1);
  }

  v19 = 1.0;
  if (v18)
  {
    v20 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(*(a1 + 40), &v181);
    if (v20)
    {
      v19 = v20[10];
    }
  }

  *(v15 + 52) = v19;
  *(v15 + 56) = 0;
  if (((v11 & 1) != 0 || !*v15 || is_tokenizable_searchable_string_field(*v15)) && v17 && (v17 != 1 || *v16 != 42))
  {
    v167 = *(*(v2 + 2) + 32);
    v21 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], v17);
    CFStringAppendCString(Mutable, *(*(v2 + 2) + 72), 0x8000100u);
    if (Mutable)
    {
      v23 = CFLocaleCopyCurrent();
      CFStringLowercase(Mutable, v23);
      if (v23)
      {
        CFRelease(v23);
      }

      QueryTokens = CreateQueryTokens(Mutable, (v167 >> 2) & 1);
      v169 = *QueryTokens;
      if (!v169 || (Count = CFArrayGetCount(v169), (v168 = Count) == 0))
      {
        CFRelease(Mutable);
        goto LABEL_51;
      }

      v26 = *(v2 + 2);
      v162 = *(v26 + 24);
      if (v162 == 5)
      {
        *(v26 + 52) = 0;
        v2[24] = 32;
        CFRelease(Mutable);
LABEL_51:
        freeQueryTokensContext(QueryTokens);
        goto LABEL_52;
      }

      v163 = v167 & 0xFFFFFFFEFFFFFFFBLL;
      v27 = v167 & 0xFFFFFFFEFFFFFFBBLL;
      v155 = Mutable;
      v159 = v21;
      v154 = QueryTokens;
      if (v168 <= 2)
      {
        v36 = 0;
        goto LABEL_93;
      }

      v28 = *(*(a1 + 32) + 28);
      if ((v28 & 0x400) != 0)
      {
        v36 = 0;
LABEL_95:
        v156 = v36;
        if ((v28 & 0x400) != 0)
        {
          v82 = 0;
          goto LABEL_151;
        }

        v55 = 0;
        v56 = 0;
        v161 = (v167 & 0x40) >> 6;
        v57 = (v167 & 0x100000000) == 0;
        v58 = v168 == 2;
        NodeForToken = (v163 | (v58 << 30) | 0x20000000);
        if (v168 != 2)
        {
          v57 = 0;
        }

        LODWORD(v165) = v57;
        v160 = v27;
        v59 = flt_1C2BF9BC8[(v167 & 0x40) == 0];
        v164 = (v27 | (v58 << 30) | 0x20000000);
        v60 = v168 - 1;
        while (1)
        {
          values[0] = 0;
          values[1] = 0;
          v193.location = v56;
          v193.length = 2;
          CFArrayGetValues(v169, v193, values);
          v61 = hasTrailingAsterisk(values[1]);
          Length = CFStringGetLength(values[0]);
          v63 = hasTrailingAsterisk(values[0]) ? 3 : 2;
          if (Length >= v63)
          {
            v64 = CFStringGetLength(values[1]);
            v65 = v61 ? 3 : 2;
            if (v64 >= v65)
            {
              break;
            }
          }

LABEL_146:
          if (v60 == ++v56)
          {
            v36 = makeAndNode(v156, v55);
            Mutable = v155;
            QueryTokens = v154;
            v27 = v160;
LABEL_148:
            v82 = v168 == 1;
            if (v168 >= 1)
            {
              v156 = v36;
LABEL_151:
              v83 = 1;
              v84 = v168;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v169, v83 - 1);
                v86 = hasOnlyOptionalSpecialChar(ValueAtIndex);
                if (!v86)
                {
                  break;
                }

                v133 = v83++ < v84;
              }

              while (v133);
              v164 = 0;
              v88 = 0;
              v157 = (v167 & 0x40) >> 6;
              LODWORD(v161) = v86 | BYTE4(v167) & 1;
              v89 = flt_1C2BF9BD0[(v167 & 0x40) == 0];
              v90 = 0x40000000;
              if (!v82)
              {
                v90 = 0;
              }

              v160 = v90 | v163;
              v158 = v90 | v27;
              v153 = v163 | 0x80000000;
              *&v87 = 134219010;
              v152 = v87;
              while (2)
              {
                v174 = 1065353216;
                v173 = 0u;
                v172 = 0u;
                v91 = CFArrayGetValueAtIndex(v169, v88);
                v171 = v91;
                v92 = CFStringGetLength(v91);
                if (!v92 || hasOnlyOptionalSpecialChar(v91))
                {
                  goto LABEL_254;
                }

                v93 = hasTrailingAsterisk(v91);
                values[0] = 0;
                values[1] = 0;
                v190 = 0;
                utf8QueryString(values, &v171, 1, 0);
                v165 = 0;
                if (v93)
                {
                  if (--v92)
                  {
                    v194.location = 0;
                    v194.length = v92;
                    v91 = CFStringCreateWithSubstring(v159, v91, v194);
                    v171 = v91;
                    v165 = v91;
                    break;
                  }

LABEL_252:
                  if (SHIBYTE(v190) < 0)
                  {
                    operator delete(values[0]);
                  }

LABEL_254:
                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v173);
                  v146 = v172;
                  *&v172 = 0;
                  if (v146)
                  {
                    operator delete(v146);
                  }

                  if (++v88 == v168)
                  {
                    Mutable = v155;
                    QueryTokens = v154;
                    v36 = v156;
                    v150 = v164;
                    goto LABEL_268;
                  }

                  continue;
                }

                break;
              }

              v94 = 0.0;
              if ((v161 & 1) == 0)
              {
                v95 = hasOnlyOptionalSpecialChar(v91);
                v94 = 1.1755e-38;
                if (!v95)
                {
                  v94 = 0.0;
                }
              }

              if (v93)
              {
                v96 = 1.0;
              }

              else
              {
                v96 = v89;
              }

              v178 = 0;
              v179 = 0;
              v180 = 0;
              *&v175 = v160;
              *(&v175 + 1) = __PAIR64__(LODWORD(v94), LODWORD(v96));
              v176 = &v181;
              v177 = v162;
              v97 = *(a1 + 40);
              v179 = *(a1 + 48);
              BYTE5(v180) = v93;
              if (v190 >= 0)
              {
                v98 = values;
              }

              else
              {
                v98 = values[0];
              }

              NodeForToken = queryNodeForToken(v98, v97, &v175, *(a1 + 32));
              if (NodeForToken)
              {
                std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v172, values);
              }

              if (v93)
              {
                if ((SHIBYTE(v190) & 0x8000000000000000) != 0)
                {
                  v100 = values[0];
                  v99 = --values[1];
                }

                else
                {
                  v99 = SHIBYTE(v190) - 1;
                  HIBYTE(v190) = v99 & 0x7F;
                  v100 = values;
                }

                *(v100 + v99) = 0;
              }

              v101 = HIBYTE(v190);
              v102 = HIBYTE(v190);
              if (v190 < 0)
              {
                v101 = values[1];
              }

              if (!v101)
              {
                goto LABEL_194;
              }

              if (v93 && (v167 & 0x40) != 0)
              {
                DWORD2(v175) = 1067534254;
                if (v190 >= 0)
                {
                  v103 = values;
                }

                else
                {
                  v103 = values[0];
                }

                v104 = queryNodeForToken(v103, *(a1 + 40), &v175, *(a1 + 32));
                v102 = HIBYTE(v190);
                goto LABEL_189;
              }

              if ((v157 | v93))
              {
                v104 = 0;
LABEL_189:
                *&v175 = v158;
                DWORD2(v175) = 1068792545;
                BYTE6(v180) = 1;
                if (v102 >= 0)
                {
                  v105 = values;
                }

                else
                {
                  v105 = values[0];
                }

                v106 = queryNodeForToken(v105, *(a1 + 40), &v175, *(a1 + 32));
                v107 = makeOrNode(v104, v106);
                BYTE6(v180) = 0;
                if (v107)
                {
                  v108 = v107;
                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v172, values);
                  NodeForToken = makeOrNode(NodeForToken, v108);
                }
              }

              else
              {
LABEL_194:
                BYTE6(v180) = 0;
              }

              if ((v167 & 0x100000000) == 0)
              {
                if (hasTrailingOptionalSpecialChar(v91))
                {
                  v109 = v92;
                  while (1)
                  {
                    v133 = v109-- < 1;
                    if (v133)
                    {
                      break;
                    }

                    CharacterAtIndex = CFStringGetCharacterAtIndex(v91, v109);
                    if (!isOptionalSpecialChar(CharacterAtIndex))
                    {
                      v195.length = v109 + 1;
                      v195.location = 0;
                      v111 = CFStringCreateWithSubstring(v159, v91, v195);
                      v170 = v111;
                      memset(buf, 0, sizeof(buf));
                      utf8QueryString(buf, &v170, 1, 0);
                      CFRelease(v111);
                      if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v172, *(&v172 + 1), buf))
                      {
                        *&v175 = v153;
                        DWORD2(v175) = 1061997773;
                        v112 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                        v113 = queryNodeForToken(v112, *(a1 + 40), &v175, *(a1 + 32));
                        if (v113)
                        {
                          v114 = v113;
                          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v172, buf);
                          NodeForToken = makeOrNode(NodeForToken, v114);
                        }
                      }

                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }

                      break;
                    }
                  }
                }

                if ((*(*(a1 + 32) + 29) & 0x10) != 0 && CFStringGetLength(v91) >= 2)
                {
                  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
                  v196.length = CFStringGetLength(v91) - v93;
                  v196.location = 0;
                  if (!CFStringFindCharacterFromSet(v91, Predefined, v196, 0, 0))
                  {
                    v170 = convertCommaSeparatedNumberTokenWithNumberFormatter(v91);
                    if (CFStringGetLength(v170) >= 1)
                    {
                      memset(buf, 0, sizeof(buf));
                      utf8QueryString(buf, &v170, 1, 0);
                      if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v172, *(&v172 + 1), buf))
                      {
                        *&v175 = v153;
                        DWORD2(v175) = 1065353216;
                        v147 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                        v148 = queryNodeForToken(v147, *(a1 + 40), &v175, *(a1 + 32));
                        if (v148)
                        {
                          v149 = v148;
                          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v172, buf);
                          NodeForToken = makeOrNode(NodeForToken, v149);
                        }
                      }

                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }
                    }
                  }
                }

                v116 = *(*(a1 + 32) + 40);
                if (v116)
                {
                  Value = CFDictionaryGetValue(v116, v171);
                  v118 = Value;
                  if (Value)
                  {
                    v119 = CFArrayGetCount(Value);
                    if (v119 >= 1)
                    {
                      for (i = 0; i != v119; ++i)
                      {
                        v121 = CFArrayGetValueAtIndex(v118, i);
                        v122 = [v121 variation];
                        v170 = v122;
                        if (CFStringGetLength(v122))
                        {
                          memset(buf, 0, sizeof(buf));
                          utf8QueryString(buf, &v170, 1, 0);
                          if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v172, *(&v172 + 1), buf) || [v121 type] == 1)
                          {
                            v123 = [v121 type];
                            [v121 confidence];
                            v125 = v124;
                            v126 = (v167 & 0x40) == 0;
                            if (v123 == 1)
                            {
                              v127 = 2155872256;
                            }

                            else
                            {
                              v127 = 0x80000000;
                            }

                            v128 = hasTrailingAsterisk(v122);
                            v129 = v89 * v125;
                            if (v128)
                            {
                              v129 = v125;
                            }

                            *&v175 = v127 | v163;
                            *(&v175 + 2) = v129;
                            BYTE6(v180) = v126 & ~v128;
                            if ((buf[23] & 0x80u) == 0)
                            {
                              v130 = buf;
                            }

                            else
                            {
                              v130 = *buf;
                            }

                            v131 = queryNodeForToken(v130, *(a1 + 40), &v175, *(a1 + 32));
                            if (v131)
                            {
                              v132 = v131;
                              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v172, buf);
                              NodeForToken = makeOrNode(NodeForToken, v132);
                            }
                          }

                          if (buf[23] < 0)
                          {
                            operator delete(*buf);
                          }
                        }
                      }
                    }
                  }
                }

                v133 = (*(*(a1 + 32) + 28) & 0x8804) != 0x8000 || v92 < 7;
                if (!v133)
                {
                  v134 = v190 >= 0 ? values : values[0];
                  v135 = PRPommesStemWordWithCString(v134, 100, 0);
                  if (v135)
                  {
                    v136 = v135;
                    if (v190 >= 0)
                    {
                      v137 = HIBYTE(v190);
                    }

                    else
                    {
                      v137 = values[1];
                    }

                    if (&v137[-strlen(v135)] == 1)
                    {
                      v138 = *__error();
                      v139 = _SILogForLogForCategory(18);
                      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                      {
                        v140 = *(a1 + 32);
                        v142 = *v140;
                        v141 = v140[1];
                        v143 = values;
                        if (v190 < 0)
                        {
                          v143 = values[0];
                        }

                        *buf = v152;
                        *&buf[4] = v142;
                        *&buf[12] = 2080;
                        *&buf[14] = v141;
                        *&buf[22] = 2080;
                        v184 = v136;
                        v185 = 2080;
                        v186 = v143;
                        v187 = 1024;
                        v188 = 0;
                        _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][rewrite] First Pass Stemming (Top Hits) added stemmedToken = [%s] to Query Tree for token = [%s] with wildcard_limit = %u", buf, 0x30u);
                      }

                      *__error() = v138;
                      *&v175 = v153;
                      v144 = *(a1 + 32);
                      DWORD2(v175) = 1065353216;
                      LODWORD(v180) = 0;
                      v145 = queryNodeForToken(v136, *(a1 + 64), &v175, v144);
                      NodeForToken = makeOrNode(NodeForToken, v145);
                    }

                    free(v136);
                  }
                }
              }

              if (v165)
              {
                CFRelease(v165);
              }

              v164 = makeAndNode(v164, NodeForToken);
              goto LABEL_252;
            }

            v150 = 0;
LABEL_268:
            calloc = makeAndNode(v36, v150);
            CFRelease(Mutable);
            freeQueryTokensContext(QueryTokens);
            if (!calloc)
            {
              calloc = query_calloc();
              calloc[24] = 32;
            }

            if (calloc != v2)
            {
              db_free_query_node(v2);
              v2 = calloc;
            }

            goto LABEL_52;
          }
        }

        if (v61)
        {
          v66 = 3.3;
        }

        else
        {
          v66 = v59;
        }

        v178 = 0;
        v179 = 0;
        v180 = 0;
        *&v175 = NodeForToken;
        *(&v175 + 1) = LODWORD(v66) | 0x80000000000000;
        v176 = &v181;
        v177 = v162;
        v179 = *(a1 + 48);
        BYTE5(v180) = v61;
        memset(buf, 0, sizeof(buf));
        utf8QueryString(buf, values, 2, 0);
        if ((buf[23] & 0x80u) == 0)
        {
          v67 = buf;
        }

        else
        {
          v67 = *buf;
        }

        v68 = queryNodeForToken(v67, *(a1 + 40), &v175, *(a1 + 32));
        if (v165 && *(*(a1 + 32) + 24) == 1)
        {
          v69 = HIBYTE(v182);
          if (SHIBYTE(v182) < 0)
          {
            v69 = *(&v181 + 1);
          }

          if (!v69 || std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(*(a1 + 56), &v181))
          {
            *values = vextq_s8(*values, *values, 8uLL);
            v172 = 0uLL;
            *&v173 = 0;
            utf8QueryString(&v172, values, 2, 1);
            v70 = (SBYTE7(v173) & 0x80u) == 0 ? &v172 : v172;
            v71 = queryNodeForToken(v70, *(a1 + 56), &v175, *(a1 + 32));
            v68 = makeOrNode(v68, v71);
            if (SBYTE7(v173) < 0)
            {
              operator delete(v172);
            }
          }
        }

        if (v61)
        {
          if ((buf[23] & 0x8000000000000000) != 0)
          {
            v73 = *buf;
            v72 = --*&buf[8];
          }

          else
          {
            v72 = buf[23] - 1;
            buf[23] = v72 & 0x7F;
            v73 = buf;
          }

          v73[v72] = 0;
        }

        v74 = buf[23];
        v75 = buf[23];
        if ((buf[23] & 0x80u) != 0)
        {
          v74 = *&buf[8];
        }

        if (!v74)
        {
          v78 = 0;
          goto LABEL_144;
        }

        if (v61 && (v167 & 0x40) != 0)
        {
          DWORD2(v175) = 1082461782;
          if ((buf[23] & 0x80u) == 0)
          {
            v76 = buf;
          }

          else
          {
            v76 = *buf;
          }

          v77 = queryNodeForToken(v76, *(a1 + 40), &v175, *(a1 + 32));
          v75 = buf[23];
        }

        else
        {
          v77 = 0;
          v78 = 0;
          if (((v161 | v61) & 1) == 0)
          {
            goto LABEL_144;
          }
        }

        *&v175 = v164;
        DWORD2(v175) = 1083499872;
        BYTE6(v180) = 1;
        if (v75 >= 0)
        {
          v79 = buf;
        }

        else
        {
          v79 = *buf;
        }

        v80 = queryNodeForToken(v79, *(a1 + 40), &v175, *(a1 + 32));
        v78 = makeOrNode(v77, v80);
LABEL_144:
        v81 = makeOrNode(v68, v78);
        v55 = makeAndNode(v55, v81);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_146;
      }

      v29 = v167 & 0xFFFFFFFEFFFFFFBBLL;
      NodeForToken = &v152;
      v30 = v168;
      MEMORY[0x1EEE9AC00](Count);
      v32 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v32, v31);
      v192.location = 0;
      v192.length = v30;
      CFArrayGetValues(v169, v192, v32);
      v33 = 0;
      do
      {
        v34 = CFStringGetLength(*&v32[8 * v33]);
        if (hasTrailingAsterisk(*&v32[8 * v33]))
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        ++v33;
      }

      while (v168 > v33 && v34 >= v35);
      if (v34 < v35)
      {
        v36 = 0;
        v27 = v29;
LABEL_93:
        if (v168 < 2)
        {
          goto LABEL_148;
        }

        v28 = *(*(a1 + 32) + 28);
        goto LABEL_95;
      }

      v37 = (v167 & 0x40) == 0;
      memset(buf, 0, sizeof(buf));
      v38 = v168;
      utf8QueryString(buf, v32, v168, 0);
      v39 = hasTrailingAsterisk(*&v32[8 * v38 - 8]);
      v40 = v39;
      v41 = flt_1C2BF9BC0[v37];
      *&v175 = v163 | 0x40000000;
      if (v39)
      {
        v41 = 7.8;
      }

      *(&v175 + 1) = LODWORD(v41) | 0x80000000000000;
      v178 = 0;
      v176 = &v181;
      v177 = v162;
      v42 = *(a1 + 40);
      v179 = *(a1 + 48);
      v180 = 0;
      BYTE5(v180) = v39;
      if ((buf[23] & 0x80u) == 0)
      {
        v43 = buf;
      }

      else
      {
        v43 = *buf;
      }

      v44 = queryNodeForToken(v43, v42, &v175, *(a1 + 32));
      if (v40)
      {
        if ((buf[23] & 0x8000000000000000) != 0)
        {
          v46 = *buf;
          v45 = --*&buf[8];
        }

        else
        {
          v45 = buf[23] - 1;
          buf[23] = v45 & 0x7F;
          v46 = buf;
        }

        v46[v45] = 0;
      }

      v47 = buf[23];
      v48 = buf[23];
      if ((buf[23] & 0x80u) != 0)
      {
        v47 = *&buf[8];
      }

      if (!v47)
      {
        v51 = 0;
        v27 = v29;
        goto LABEL_91;
      }

      if (v40 && (v167 & 0x40) != 0)
      {
        DWORD2(v175) = 1092435837;
        if ((buf[23] & 0x80u) == 0)
        {
          v49 = buf;
        }

        else
        {
          v49 = *buf;
        }

        v50 = queryNodeForToken(v49, *(a1 + 40), &v175, *(a1 + 32));
        v48 = buf[23];
        v27 = v29;
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v27 = v29;
        if (((v40 | (v167 >> 6)) & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      *&v175 = v27 | 0x40000000;
      DWORD2(v175) = 1093662671;
      BYTE6(v180) = 1;
      if (v48 >= 0)
      {
        v52 = buf;
      }

      else
      {
        v52 = *buf;
      }

      v53 = queryNodeForToken(v52, *(a1 + 40), &v175, *(a1 + 32));
      v51 = makeOrNode(v50, v53);
LABEL_91:
      v36 = makeOrNode(v44, v51);
      if (buf[23] < 0)
      {
        v54 = v36;
        operator delete(*buf);
        v36 = v54;
      }

      goto LABEL_93;
    }
  }

LABEL_52:
  if (SHIBYTE(v182) < 0)
  {
    operator delete(v181);
  }

LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1C2961FB8(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1 - 336);
  if (*(v1 - 217) < 0)
  {
    operator delete(*(v1 - 240));
  }

  _Unwind_Resume(a1);
}

_WORD *___ZL19pommesRetrievalTreeP10query_nodeP9PRContext_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v132 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a2 + 48) == 4)
    {
      v3 = *(a2 + 16);
      if (v3)
      {
        v4 = *(v3 + 24);
        HIDWORD(v6) = v4 - 1;
        LODWORD(v6) = v4 - 1;
        v5 = v6 >> 1;
        v59 = v5 > 6;
        v7 = (1 << v5) & 0x65;
        v8 = v59 || v7 == 0;
        if (!v8 && v4 != 15)
        {
          v124 = 0uLL;
          v125 = 0;
          is_double_star = query_node_is_double_star(a2);
          v12 = is_double_star;
          v13 = *v3;
          if (*v3 && *v13 == 42)
          {
            v14 = v13[1] == 0;
            if (is_double_star)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v14 = 0;
            if (is_double_star)
            {
              goto LABEL_20;
            }
          }

          if (*v3)
          {
            std::string::basic_string[abi:nn200100]<0>(&v112, *v3);
            if (SHIBYTE(v125) < 0)
            {
              operator delete(v124);
            }

            v124 = v112;
            v125 = v113;
          }

LABEL_20:
          if (isPhotosAttribute(&v124))
          {
            v2[24] = 16;
            goto LABEL_190;
          }

          v15 = *(v2 + 2);
          v16 = v15[9];
          if (v16)
          {
            v17 = strlen(v15[9]);
            if (v12)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v17 = 0;
            if (v12)
            {
              goto LABEL_28;
            }
          }

          if (*v15 && (is_tokenizable_searchable_string_field(*v15) & 1) == 0)
          {
            if (v17)
            {
              v93 = v14;
            }

            else
            {
              v93 = 0;
            }

            if (!v93)
            {
              goto LABEL_190;
            }

LABEL_29:
            if (v17 == 1 && *v16 == 42)
            {
              goto LABEL_190;
            }

            v18 = *(*(v2 + 2) + 32);
            alloc = *MEMORY[0x1E695E480];
            Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], v17);
            CFStringAppendCString(Mutable, *(*(v2 + 2) + 72), 0x8000100u);
            if (!Mutable)
            {
              goto LABEL_190;
            }

            v20 = CFLocaleCopyCurrent();
            CFStringLowercase(Mutable, v20);
            if (v20)
            {
              CFRelease(v20);
            }

            QueryTokens = CreateQueryTokens(Mutable, (v18 >> 2) & 1);
            v22 = QueryTokens;
            v23 = *QueryTokens;
            if (*QueryTokens)
            {
              Count = CFArrayGetCount(*QueryTokens);
              v25 = Count;
              if (Count)
              {
                v104 = *(*(v2 + 2) + 24);
                v123 = 1065353216;
                memset(v122, 0, sizeof(v122));
                v98 = v22;
                v99 = Mutable;
                if (Count < 1)
                {
                  *&v107[4] = 0;
LABEL_185:
                  CFRelease(v99);
                  calloc = *&v107[4];
                  freeQueryTokensContext(v98);
                  if (!*&v107[4])
                  {
                    calloc = query_calloc();
                    calloc[24] = 32;
                  }

                  if (calloc != v2)
                  {
                    db_free_query_node(v2);
                    v2 = calloc;
                  }

                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v122);
                  goto LABEL_190;
                }

                v103 = v18;
                v106 = v18 & 0xFFFFFFFEFFFFFFFBLL;
                v26 = 1;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v23, v26 - 1);
                  v28 = hasOnlyOptionalSpecialChar(ValueAtIndex);
                  if (!v28)
                  {
                    break;
                  }

                  v59 = v26++ < v25;
                }

                while (v59);
                *&v107[8] = 0;
                v30 = 0;
                v110 = v25;
                *v107 = BYTE4(v18) & 1 | v28;
                v102 = v106 | ((v25 == 1) << 30);
                if (v104 == 5)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = BYTE4(v18) & 1;
                }

                v101 = v31;
                v100 = v31 ^ 1;
                *&v29 = 134219010;
                v97 = v29;
                while (1)
                {
                  *v119 = 0u;
                  *v120 = 0u;
                  v121 = 1065353216;
                  v32 = CFArrayGetValueAtIndex(v23, v30);
                  key = v32;
                  Length = CFStringGetLength(v32);
                  if (Length)
                  {
                    break;
                  }

LABEL_99:
                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v120[0]);
                  v57 = v119[0];
                  v119[0] = 0;
                  if (v57)
                  {
                    operator delete(v57);
                  }

                  if (++v30 == v110)
                  {
                    goto LABEL_185;
                  }
                }

                v34 = hasTrailingAsterisk(v32);
                memset(&__p, 0, sizeof(__p));
                utf8QueryString(&__p, &key, 1, 0);
                if (v34)
                {
                  if (!--Length)
                  {
LABEL_97:
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_99;
                  }

                  v133.location = 0;
                  v133.length = Length;
                  v32 = CFStringCreateWithSubstring(alloc, v32, v133);
                  key = v32;
                  cf = v32;
                }

                else
                {
                  cf = 0;
                }

                v35 = (v107[0] & 1) == 0 && hasOnlyOptionalSpecialChar(v32);
                if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(*&v122[0], *(&v122[0] + 1), &__p) && !v35)
                {
                  *&v115[8] = 0;
                  v116 = 0;
                  v112 = v102;
                  v113 = &v124;
                  v114 = v104;
                  *v115 = v104 == 5;
                  v36 = *(a1 + 40);
                  *&v115[4] = *(a1 + 32);
                  BYTE5(v116) = v34;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  NodeForToken = queryNodeForToken(p_p, *(a1 + 48), &v112, v36);
                  if (NodeForToken)
                  {
                    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v122, &__p);
                    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v119, &__p);
                  }

                  if ((v103 & 0x100000000) == 0)
                  {
                    if (hasTrailingOptionalSpecialChar(v32))
                    {
                      v38 = Length - v34;
                      while (1)
                      {
                        v59 = v38-- < 1;
                        if (v59)
                        {
                          break;
                        }

                        CharacterAtIndex = CFStringGetCharacterAtIndex(v32, v38);
                        if (!isOptionalSpecialChar(CharacterAtIndex))
                        {
                          v134.length = v38 + 1;
                          v134.location = 0;
                          v40 = CFStringCreateWithSubstring(alloc, v32, v134);
                          v111.__r_.__value_.__r.__words[0] = v40;
                          memset(buf, 0, sizeof(buf));
                          utf8QueryString(buf, &v111, 1, 0);
                          CFRelease(v40);
                          if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v119[0], v119[1], buf))
                          {
                            *&v112 = v106 | 0x80000000;
                            v41 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                            v42 = queryNodeForToken(v41, *(a1 + 48), &v112, *(a1 + 40));
                            if (v42)
                            {
                              v43 = v42;
                              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v119, buf);
                              NodeForToken = makeOrNode(NodeForToken, v43);
                            }
                          }

                          if (buf[23] < 0)
                          {
                            operator delete(*buf);
                          }

                          break;
                        }
                      }
                    }

                    if ((*(*(a1 + 40) + 29) & 0x10) != 0 && CFStringGetLength(v32) >= 2)
                    {
                      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
                      v135.length = CFStringGetLength(v32) - v34;
                      v135.location = 0;
                      if (!CFStringFindCharacterFromSet(v32, Predefined, v135, 0, 0))
                      {
                        v111.__r_.__value_.__r.__words[0] = convertCommaSeparatedNumberTokenWithNumberFormatter(v32);
                        if (CFStringGetLength(v111.__r_.__value_.__l.__data_) >= 1)
                        {
                          memset(buf, 0, sizeof(buf));
                          utf8QueryString(buf, &v111, 1, 0);
                          if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v119[0], v119[1], buf))
                          {
                            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v119, buf);
                            *&v112 = v106 | 0x80000000;
                            if ((buf[23] & 0x80u) == 0)
                            {
                              v61 = buf;
                            }

                            else
                            {
                              v61 = *buf;
                            }

                            v62 = queryNodeForToken(v61, *(a1 + 48), &v112, *(a1 + 40));
                            NodeForToken = makeOrNode(NodeForToken, v62);
                          }

                          if (buf[23] < 0)
                          {
                            operator delete(*buf);
                          }
                        }
                      }
                    }

                    v45 = *(*(a1 + 40) + 40);
                    if (v45)
                    {
                      Value = CFDictionaryGetValue(v45, key);
                      v47 = Value;
                      if (Value)
                      {
                        v48 = CFArrayGetCount(Value);
                        if (v48 >= 1)
                        {
                          for (i = 0; i != v48; ++i)
                          {
                            v50 = CFArrayGetValueAtIndex(v47, i);
                            v111.__r_.__value_.__r.__words[0] = [v50 variation];
                            if (CFStringGetLength(v111.__r_.__value_.__l.__data_))
                            {
                              memset(buf, 0, sizeof(buf));
                              utf8QueryString(buf, &v111, 1, 0);
                              if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v119[0], v119[1], buf) || [v50 type] == 1)
                              {
                                v51 = [v50 type];
                                v52 = 0x80000000;
                                if (v51 == 1)
                                {
                                  v52 = 2155872256;
                                }

                                *&v112 = v52 | v106;
                                if ((buf[23] & 0x80u) == 0)
                                {
                                  v53 = buf;
                                }

                                else
                                {
                                  v53 = *buf;
                                }

                                v54 = queryNodeForToken(v53, *(a1 + 48), &v112, *(a1 + 40));
                                if (v54)
                                {
                                  v55 = v54;
                                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v119, buf);
                                  NodeForToken = makeOrNode(NodeForToken, v55);
                                }
                              }

                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  if (v101)
                  {
                    goto LABEL_93;
                  }

                  v58 = *(*(a1 + 40) + 28);
                  v59 = (v58 & 0x804) != 0 || Length < 7;
                  if (!v59)
                  {
                    memset(&v111, 0, sizeof(v111));
                    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    if (v34)
                    {
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        size = __p.__r_.__value_.__l.__size_;
                      }

                      std::string::basic_string(&v111, &__p, 0, size - 1, buf);
                    }

                    else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
                    {
                      std::string::__init_copy_ctor_external(&v111, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v111 = __p;
                    }

                    if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v63 = &v111;
                    }

                    else
                    {
                      v63 = v111.__r_.__value_.__r.__words[0];
                    }

                    v64 = PRPommesStemWordWithCString(v63, 100, 0);
                    if (v64)
                    {
                      v65 = v64;
                      std::string::basic_string[abi:nn200100]<0>(buf, v64);
                      v66 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v119[0], v119[1], buf);
                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }

                      if (!v66)
                      {
                        if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v67 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v67 = v111.__r_.__value_.__l.__size_;
                        }

                        if (v67 - strlen(v65) == 1)
                        {
                          v68 = *__error();
                          v69 = _SILogForLogForCategory(17);
                          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                          {
                            v70 = *(a1 + 40);
                            v72 = *v70;
                            v71 = v70[1];
                            v73 = &v111;
                            if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v73 = v111.__r_.__value_.__r.__words[0];
                            }

                            *buf = v97;
                            *&buf[4] = v72;
                            *&buf[12] = 2080;
                            *&buf[14] = v71;
                            *&buf[22] = 2080;
                            v127 = v65;
                            v128 = 2080;
                            v129 = v73;
                            v130 = 1024;
                            v131 = 0;
                            _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][rewrite] First Pass Stemming (Top Hits) added stemmedToken = [%s] to Query Tree for token = [%s] with wildcard_limit = %u", buf, 0x30u);
                          }

                          *__error() = v68;
                          *&v112 = v106 | 0x80000000;
                          v74 = *(a1 + 40);
                          LODWORD(v116) = 0;
                          v75 = queryNodeForToken(v65, *(a1 + 56), &v112, v74);
                          if (v75)
                          {
                            v76 = v75;
                            std::string::basic_string[abi:nn200100]<0>(buf, v65);
                            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v119, buf);
                            if (buf[23] < 0)
                            {
                              operator delete(*buf);
                            }

                            NodeForToken = makeOrNode(NodeForToken, v76);
                          }
                        }

                        free(v65);
                      }
                    }

                    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v111.__r_.__value_.__l.__data_);
                    }

                    v58 = *(*(a1 + 40) + 28);
                  }

                  v77 = v100;
                  if (Length <= 4)
                  {
                    v77 = 0;
                  }

                  if (v77 != 1)
                  {
LABEL_93:
                    v56 = NodeForToken;
                  }

                  else
                  {
                    v56 = NodeForToken;
                    if ((v58 & 0x804) == 4)
                    {
                      memset(&v111, 0, sizeof(v111));
                      v78 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                      if (v34)
                      {
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v78 = __p.__r_.__value_.__l.__size_;
                        }

                        std::string::basic_string(&v111, &__p, 0, v78 - 1, buf);
                      }

                      else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
                      {
                        std::string::__init_copy_ctor_external(&v111, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v111 = __p;
                      }

                      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v79 = &v111;
                      }

                      else
                      {
                        v79 = v111.__r_.__value_.__r.__words[0];
                      }

                      v80 = PRPommesStemWordWithCString(v79, 100, 0);
                      if (v80)
                      {
                        v81 = v80;
                        std::string::basic_string[abi:nn200100]<0>(buf, v80);
                        v82 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v119[0], v119[1], buf);
                        if (buf[23] < 0)
                        {
                          operator delete(*buf);
                        }

                        if (!v82)
                        {
                          if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v83 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            v83 = v111.__r_.__value_.__l.__size_;
                          }

                          if (v83 != strlen(v81))
                          {
                            v84 = *__error();
                            v85 = _SILogForLogForCategory(17);
                            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                            {
                              v86 = *(a1 + 40);
                              v88 = *v86;
                              v87 = v86[1];
                              v89 = &v111;
                              if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                              {
                                v89 = v111.__r_.__value_.__r.__words[0];
                              }

                              *buf = v97;
                              *&buf[4] = v88;
                              *&buf[12] = 2080;
                              *&buf[14] = v87;
                              *&buf[22] = 2080;
                              v127 = v81;
                              v128 = 2080;
                              v129 = v89;
                              v130 = 1024;
                              v131 = 3;
                              _os_log_impl(&dword_1C278D000, v85, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][rewrite] First Pass Stemming (Committed Search) added stemmedToken = [%s] to Query Tree for token = [%s] with wildcard_limit = %u", buf, 0x30u);
                            }

                            *__error() = v84;
                            *&v112 = v106 | 0x80000000;
                            v90 = *(a1 + 40);
                            LODWORD(v116) = 3;
                            v91 = queryNodeForToken(v81, *(a1 + 56), &v112, v90);
                            if (v91)
                            {
                              v92 = v91;
                              std::string::basic_string[abi:nn200100]<0>(buf, v81);
                              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v119, buf);
                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }

                              v56 = makeOrNode(NodeForToken, v92);
                            }
                          }

                          free(v81);
                        }
                      }

                      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v111.__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  *&v107[4] = makeAndNode(*&v107[4], v56);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                goto LABEL_97;
              }
            }

            CFRelease(Mutable);
            freeQueryTokensContext(v22);
LABEL_190:
            if (SHIBYTE(v125) < 0)
            {
              operator delete(v124);
            }

            goto LABEL_192;
          }

LABEL_28:
          if (!v17)
          {
            goto LABEL_190;
          }

          goto LABEL_29;
        }
      }
    }
  }

LABEL_192:
  v95 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1C2962CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  if (a45 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a47);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v47 - 240);
  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  _Unwind_Resume(a1);
}

void *___ZL19pommesRetrievalTreeP10query_nodeP9PRContext_block_invoke_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else if (a2)
  {
    v7[5] = v4;
    v7[6] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __db_query_tree_apply_block_block_invoke;
    v7[3] = &unk_1E8198ED0;
    v7[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, v7, 0);
    return 0;
  }

  return result;
}

void *query_calloc()
{
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal;
  }

  v0 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v0)
  {
    _log_fault_for_malloc_failure();
  }

  return v0;
}

void *___ZL17pommesRankingTreeP10query_nodeP9PRContext_block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else if (a2)
  {
    v7[5] = v4;
    v7[6] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __db_query_tree_apply_block_block_invoke;
    v7[3] = &unk_1E8198ED0;
    v7[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, v7, 0);
    return 0;
  }

  return result;
}

void incompleteRomajiKanaData(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v10[342] = *MEMORY[0x1E69E9840];
  {
    std::string::basic_string[abi:nn200100]<0>(&v3, "b");
    std::string::basic_string[abi:nn200100]<0>(v4, "っ");
    std::string::basic_string[abi:nn200100]<0>(v5, "ば");
    std::string::basic_string[abi:nn200100]<0>(v6, "び");
    std::string::basic_string[abi:nn200100]<0>(v7, "ぶ");
    std::string::basic_string[abi:nn200100]<0>(v8, "べ");
    std::string::basic_string[abi:nn200100]<0>(v9, "ぼ");
    memset(v2, 0, sizeof(v2));
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(v2, v4, v10, 6uLL);
  }

  v1 = *MEMORY[0x1E69E9840];
}

std::string *std::pair<std::string const,std::vector<std::string>>::pair[abi:nn200100]<true,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[1].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = v4;
  v6 = *(&incompleteRomajiKanaData(void)::data + 1);
  if (!*(&incompleteRomajiKanaData(void)::data + 1))
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(*(&incompleteRomajiKanaData(void)::data + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&incompleteRomajiKanaData(void)::data + 1))
    {
      v9 = v4 % *(&incompleteRomajiKanaData(void)::data + 1);
    }
  }

  else
  {
    v9 = (*(&incompleteRomajiKanaData(void)::data + 1) - 1) & v4;
  }

  v10 = *(incompleteRomajiKanaData(void)::data + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1);
  if (!result)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t std::pair<std::string const,std::vector<std::string>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 SICompletionModelProcessUTF8String(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, UErrorCode a8, const char *a9, int a10, const char *a11, unsigned __int8 a12, uint64_t a13)
{
  if (a1)
  {
    if (*(a1 + 4))
    {
      v18 = a6[3];
      v22 = a6[2];
      v23 = v18;
      v24 = a6[4];
      v19 = a6[1];
      v20 = *a6;
      v21 = v19;
      insertLegacyNGramsFromUTF8StringWithPatternAndLock(a1, a2, a3, a4, a5, &v20, a13, a7, a10, a11, a12, (a1 + 48));
    }

    else
    {
      v13 = a6[3];
      v22 = a6[2];
      v23 = v13;
      v24 = a6[4];
      v14 = a6[1];
      v20 = *a6;
      v21 = v14;
      generateCompletionsFromUTF8StringWithPatternAndLock(a1, a2, a3, a4, a5, &v20, a13, a7, a8, a9, a10, a11, a12, (a1 + 48));
    }
  }

  else
  {
    v16 = a6[3];
    v22 = a6[2];
    v23 = v16;
    v24 = a6[4];
    v17 = a6[1];
    v20 = *a6;
    v21 = v17;
    generateCompletionsFromUTF8StringWithPatternAndLock(0, a2, a3, a4, a5, &v20, a13, a7, a8, a9, a10, a11, a12, 0);
  }

  return result;
}

void insertLegacyNGramsFromUTF8StringWithPatternAndLock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, const char *a10, unsigned __int8 a11, os_unfair_lock_s *a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v12;
  v82 = v22;
  v24 = v23;
  v121 = *MEMORY[0x1E69E9840];
  v88 = v25;
  v26 = v12 && *v12 && strlen(*v12) > 3;
  v87 = v24;
  v27 = *(v24 + 4);
  v28 = v26 | ((v27 & 0x20) >> 5);
  if ((v27 & 0x80) == 0)
  {
    v28 = (v27 >> 5) & 1;
  }

  LODWORD(v89) = a9;
  if (a9)
  {
    LOBYTE(v28) = 0;
  }

  if (v18 > 0x12C)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  v90 = strlen(*v21);
  v92[1] = 0;
  v93 = 0;
  v30 = completionPossibleMatch(v21, a10, v20, a11);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = splitPossibleMatch(v21);
  }

  v32 = 48;
  if (a11)
  {
    v32 = 64;
  }

  v33 = *(v21 + v32);
  v91 = v18;
  v92[0] = v33;
  v83 = v14;
  if (!a10)
  {
    v36 = 0;
    v35 = 0;
    goto LABEL_28;
  }

  v34 = *a10;
  if (v34 != 106)
  {
    if (v34 == 122)
    {
      v34 = *(a10 + 1);
      v37 = 104;
    }

    else
    {
      v37 = 122;
    }

    v38 = v37 - v34;
    goto LABEL_27;
  }

  if (a10[1] != 97)
  {
    v38 = 16;
LABEL_27:
    v36 = 0;
    v35 = v38 == 0;
    goto LABEL_28;
  }

  v35 = 0;
  v36 = 1;
LABEL_28:
  if (((v30 | a11) & 1) != 0 || *(v21 + 32) > 1uLL)
  {
    v39 = 0;
    if (!v33)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v39 = v36 | v35;
    if (((v36 | v35 | v31) & 1) == 0 || !v33)
    {
      goto LABEL_80;
    }
  }

  v84 = a10;
  v81 = v20;
  if (dword_1EBF46B04 > 4)
  {
    v78 = *__error();
    v79 = _SILogForLogForCategory(14);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(MaximumSizeForEncoding) = 67109378;
      HIDWORD(MaximumSizeForEncoding) = v89;
      v97 = 2080;
      *v98 = v81;
      _os_log_impl(&dword_1C278D000, v79, OS_LOG_TYPE_DEFAULT, "extracting field id %d: '%s'", &MaximumSizeForEncoding, 0x12u);
    }

    *__error() = v78;
  }

  v85 = &v110;
  if (v90 >= 4)
  {
    v40 = 300;
  }

  else
  {
    v29 |= &v91[-v93] > 0x14;
    if (&v91[-v93] <= 0x14)
    {
      v40 = 300;
    }

    else
    {
      v40 = 20;
    }
  }

  v41 = v84;
  v86 = a11;
  if (v84)
  {
    v42 = *(v21 + 88);
    if (v42)
    {
      Length = CFStringGetLength(v42);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
      v45 = &v81 - v44;
      bzero(&v81 - v44, v46);
      v122.location = 0;
      v122.length = Length;
      v41 = v84;
      CFStringGetBytes(*(v21 + 88), v122, 0x8000100u, 0x2Du, 0, v45, MaximumSizeForEncoding, &MaximumSizeForEncoding);
      v45[MaximumSizeForEncoding] = 0;
      if (strcmp(v41, v45))
      {
        CFRelease(*(v21 + 88));
        *(v21 + 88) = 0;
        *(v21 + 88) = CFStringCreateWithCString(*MEMORY[0x1E695E480], v41, 0x600u);
      }
    }

    else
    {
      *(v21 + 88) = CFStringCreateWithCString(*MEMORY[0x1E695E480], v84, 0x600u);
    }
  }

  bzero(&MaximumSizeForEncoding, 0x1BA0uLL);
  LOBYTE(MaximumSizeForEncoding) = v29 & 1;
  BYTE1(MaximumSizeForEncoding) = v86;
  v47 = v16[3];
  v100 = v16[2];
  v101 = v47;
  v102 = v16[4];
  v48 = v16[1];
  *&v98[6] = *v16;
  v99 = v48;
  v103 = v89;
  v104 = v88;
  v105 = v87;
  v106 = *(v21 + 88);
  v107 = v41;
  v49 = v85;
  *(v85 + 2968) = v39;
  *(v49 + 2969) = v36;
  v94 = 0;
  v108[0] = 0;
  if ((v36 & 1) == 0)
  {
    v50 = v81;
    goto LABEL_59;
  }

  bzero(v114, 0x258uLL);
  LODWORD(v95[0]) = 0;
  v50 = v81;
  u_strFromUTF8(v114, v40, v95, v81, v91, &v94);
  if (v94 == 15)
  {
    v94 = 0;
    LODWORD(v95[0]) = v40;
  }

  else if (!LODWORD(v95[0]))
  {
    goto LABEL_53;
  }

  unorm2_getNFCInstance();
  if (v94 > 0)
  {
LABEL_53:
    v51 = v108[0];
    if (!v108[0])
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

  v94 = 0;
  v52 = unorm2_normalize();
  if (v94 == 15)
  {
    v51 = v40;
  }

  else
  {
    v51 = v52;
  }

  v108[0] = v51;
  v94 = 0;
  if (!v51)
  {
LABEL_59:
    u_strFromUTF8(v111, v40, v108, v50, v91, &v94);
    if (v94 == 15)
    {
      v108[0] = v40;
      v94 = 0;
      v51 = v40;
    }

    else
    {
      v51 = v108[0];
      if (!v108[0])
      {
        goto LABEL_80;
      }
    }
  }

LABEL_62:
  v53 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], v111, v51, *MEMORY[0x1E695E498]);
  if (v53)
  {
    v54 = v53;
    v119 = 0u;
    v120 = 0u;
    v55 = v82;
    v114[0] = v82;
    v114[1] = v111;
    v114[2] = &v111[v108[0]];
    v115 = v40;
    v56 = v109;
    v116 = v109;
    v117 = 0;
    v118 = 0;
    *&v119 = 0;
    DWORD2(v119) = 0;
    BYTE8(v120) = v36;
    v57 = v85;
    if (*(v85 + 2968) == 1)
    {
      *&v119 = v112;
      v118 = v112;
      v117 = v113;
      *&v120 = &v113[1];
      WORD4(v119) = 300;
    }

    v58 = v106;
    CITokenizerSetLocale(v82, v106, 0);
    v95[0] = tokenrangescallback;
    v95[1] = 0;
    v95[2] = v114;
    v59 = *(v55 + 32) & 0x18;
    v91 = v54;
    CITokenizerGetTokensNew(v55, v54, v58, v59, getPreTokenizerCallback, getTokensWrapper, getSubTokensWrapper, 0, v95);
    v60 = WORD1(v115);
    v61 = v86;
    if (*(v57 + 2968) == 1)
    {
      v113[301] = WORD5(v119);
      *v118 = 0;
      v62 = v118 - &MaximumSizeForEncoding - 5560;
      v63 = v83;
    }

    else
    {
      v64 = (v57 + 183);
      v89 = WORD1(v115);
      if (WORD1(v115))
      {
        v65 = 0;
        v66 = &v113[1];
        v67 = 901;
        v68 = WORD1(v115);
        v69 = v64;
        do
        {
          v70 = *v56;
          if (*v56 > v65)
          {
            v71 = _utf16_to_utf8(&v111[v65], *v56 - v65, v69, v67, v36);
            v67 -= v71;
            v69 += v71;
            v70 = *v56;
          }

          v72 = _utf16_to_utf8(&v111[v70], v56[1], v69, v67, v36);
          *v66++ = v69 - v64;
          v73 = *v56;
          v74 = v56[1];
          v56 += 2;
          v65 = v74 + v73;
          v67 -= v72;
          v69 += v72;
          --v68;
        }

        while (v68);
        v63 = v83;
        v61 = v86;
        v57 = v85;
      }

      else
      {
        v69 = (v57 + 183);
        v63 = v83;
      }

      *v69 = 0;
      LODWORD(v62) = v69 - v64;
      v60 = v89;
    }

    v108[1] = v62;
    CFRelease(v91);
    if (v60)
    {
      if (v61)
      {
        v75 = 4;
      }

      else
      {
        v75 = *(v57 + 2968) ^ 1;
      }

      if ((handlePatterns(&MaximumSizeForEncoding, v60, 1u, v112, v92, v75, v63, a12) & 1) == 0 && *(v21 + 32) >= 2uLL && (v61 & 1) == 0 && v90 >= 4)
      {
        v77 = *(v21 + 8);
        if (v77)
        {
          if (strcmp(*v21, v77) && splitPossibleMatch(v21))
          {
            handlePatterns(&MaximumSizeForEncoding, v60, *(v21 + 32), *(v21 + 40), *(v21 + 80), 2, v63, a12);
          }
        }
      }
    }
  }

LABEL_80:
  v76 = *MEMORY[0x1E69E9840];
}

void generateCompletionsFromUTF8StringWithPatternAndLock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, UErrorCode a9, const char *a10, int a11, const char *a12, unsigned __int8 a13, os_unfair_lock_s *a14)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v14;
  v26 = v25;
  v135 = *MEMORY[0x1E69E9840];
  v104 = v27;
  v105 = v28;
  v29 = v14 && *v14 && strlen(*v14) > 3;
  v30 = strcmp(a10, "com.apple.mobileslideshow");
  if (!v26)
  {
    goto LABEL_8;
  }

  v31 = *(v26 + 4);
  if ((v31 & 0x80) != 0)
  {
    if ((v31 & 0x1000) != 0)
    {
      if ((v31 & 0x2000) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (!v29)
    {
LABEL_11:
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = a11 == 3;
      goto LABEL_24;
    }

    v36 = 0;
    v32 = a11 == 0;
    v37 = a11 == 5;
    v35 = a11 == 6;
    if (v30)
    {
      v34 = 0;
    }

    else
    {
      v34 = a11 == 1;
    }

    if (v30)
    {
      v33 = 0;
    }

    else
    {
      v33 = a11 > 7;
    }

    goto LABEL_24;
  }

  if ((v31 & 0x1000) == 0)
  {
LABEL_8:
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_24;
  }

  v36 = a11 == 4;
  v32 = a11 == 0;
  v37 = a11 == 6;
  v33 = 0;
  if ((v31 & 0x2000) == 0)
  {
    v32 = 0;
  }

  v34 = 0;
  v35 = 0;
  if ((v31 & 0x2000) != 0)
  {
    v36 = a11 == 7;
  }

  else
  {
    v37 = a11 == 3;
  }

LABEL_24:
  if (v21 > 0x12C)
  {
    v32 = 1;
  }

  if (v33 || v34 || v30)
  {
    v100 = v34;
    v101 = v33;
    v95 = v32;
    v96 = v37;
    v97 = v36;
    v98 = v35;
    v106[1] = 0;
    v106[2] = 0;
    v38 = completionPossibleMatch(v24, a12, v23, a13);
    v103 = v23;
    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v40 = v38;
      v39 = splitPossibleMatch(v24);
      v38 = v40;
    }

    v41 = 6;
    if (a13)
    {
      v41 = 8;
    }

    v106[0] = v24[v41];
    if (v106[0])
    {
      if (a12)
      {
        v42 = *a12;
        if (v42 == 106)
        {
          if (a12[1] == 97)
          {
            v43 = 0;
            v102 = 1;
LABEL_46:
            if (((v38 | a13) & 1) != 0 || v24[4] > 1)
            {
              v46 = 0;
            }

            else
            {
              v46 = v102 | v43;
              if (((v102 | v43 | v39) & 1) == 0)
              {
                goto LABEL_119;
              }
            }

            LODWORD(v99) = v46;
            v91 = v43;
            v92 = v38;
            v93 = v17;
            v94 = v26;
            if (dword_1EBF46B04 < 5)
            {
              if (!a12)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v87 = *__error();
              v88 = _SILogForLogForCategory(14);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v110) = 67109378;
                HIDWORD(v110) = a11;
                v111 = 2080;
                *v112 = v103;
                _os_log_impl(&dword_1C278D000, v88, OS_LOG_TYPE_DEFAULT, "extracting field id %d: '%s'", &v110, 0x12u);
              }

              *__error() = v87;
              v26 = v94;
              if (!a12)
              {
LABEL_59:
                bzero(&v110, 0x4860uLL);
                LOBYTE(v110) = a13;
                v53 = v19[3];
                v114 = v19[2];
                v115 = v53;
                v116 = v19[4];
                v54 = v19[1];
                *&v112[6] = *v19;
                v113 = v54;
                v117 = a11;
                v118 = v105;
                v119 = v26;
                v121 = v24[11];
                v122 = a12;
                v130 = v99;
                v131 = v102;
                if (normalizeSourceString(StringTokenizerPhrasesInfo *,unsigned char *,unsigned long,unsigned long,BOOL)::onceToken != -1)
                {
                  dispatch_once(&normalizeSourceString(StringTokenizerPhrasesInfo *,unsigned char *,unsigned long,unsigned long,BOOL)::onceToken, &__block_literal_global_2117);
                }

                v55 = v103;
                v109 = 0;
                v123 = 0;
                bzero(v132, 0x258uLL);
                v108 = 0;
                v56 = 300;
                u_strFromUTF8(v132, 300, &v108, v55, v21, &v109);
                if (v109 == 15)
                {
                  v108 = 300;
                  v109 = 0;
                }

                else
                {
                  v56 = v108;
                  if (!v108)
                  {
                    v56 = v123;
                    goto LABEL_73;
                  }
                }

                v107 = 0;
                if (normalizeSourceString(StringTokenizerPhrasesInfo *,unsigned char *,unsigned long,unsigned long,BOOL)::norm2 && ((v102 & 1) != 0 || (v57 = unorm2_quickCheck(), v56 = v108, v57 != 1)))
                {
                  v58 = unorm2_normalize();
                  if (v109 == 15)
                  {
                    v56 = 300;
                  }

                  else
                  {
                    v56 = v58;
                  }
                }

                else
                {
                  memcpy(v128, v132, 2 * v56);
                  v128[v56] = 0;
                }

                v123 = v56;
LABEL_73:
                if (!v56)
                {
                  goto LABEL_119;
                }

                v59 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], v128, v56, *MEMORY[0x1E695E498]);
                if (!v59)
                {
                  goto LABEL_119;
                }

                v60 = v59;
                v133 = 0u;
                v134 = 0u;
                v61 = v104;
                v132[0] = v104;
                v132[1] = v128;
                v132[2] = &v128[v123];
                v132[3] = &v126;
                LOWORD(v133) = 300;
                v132[4] = &v127;
                *&v134 = &v125;
                v62 = SIStringContainsNewlineCharacters(v128, v123);
                v63 = v62;
                if (v62)
                {
                  v64 = 0;
                }

                else
                {
                  v64 = GetTokenCallback;
                }

                if (v62)
                {
                  v65 = GetSentenceCallback;
                }

                else
                {
                  v65 = 0;
                }

                v105 = v60;
                CITokenizerGetTokensNew(v61, v60, v121, 4, 0, v64, 0, v65, v132);
                v66 = WORD1(v133);
                if (v63)
                {
                  v67 = WORD4(v134);
                }

                else
                {
                  v67 = WORD4(v134);
                  if (*(&v133 + 1) < WORD1(v133))
                  {
                    v69 = WORD2(v133);
                    v68 = v103;
                    if (WORD2(v133))
                    {
                      v70 = (v134 + 16 * WORD4(v134));
                      *v70 = *(&v133 + 1);
                      v70[1] = v69;
                      v67 = (v67 + 1);
                      WORD4(v134) = v67;
                    }

                    goto LABEL_87;
                  }
                }

                v68 = v103;
LABEL_87:
                v99 = v67;
                if (v66)
                {
                  v104 = v66;
                  if (v126)
                  {
                    v71 = _utf16_to_utf8(v128, v126, v129, 0x385uLL, v131);
                    v72 = 901 - v71;
                    v73 = v129 + v71;
                  }

                  else
                  {
                    v72 = 901;
                    v73 = v129;
                  }

                  v74 = 0;
                  v75 = &v110;
                  v76 = v104;
                  do
                  {
                    if (v74)
                    {
                      v77 = v75[621];
                      if (v77 > v74)
                      {
                        v78 = _utf16_to_utf8(&v128[v74], v77 - v74, v73, v72, v131);
                        v72 -= v78;
                        v73 += v78;
                      }
                    }

                    v79 = _utf16_to_utf8(&v128[v75[621]], v75[622], v73, v72, v131);
                    v74 = v75[622] + v75[621];
                    v75[1712] = v73 - v129;
                    v75[1713] = v79;
                    v72 -= v79;
                    v73 += v79;
                    v75 += 2;
                    --v76;
                  }

                  while (v76);
                  v68 = v103;
                  LODWORD(v66) = v104;
                }

                else
                {
                  v73 = v129;
                }

                *v73 = 0;
                v124 = v73 - v129;
                CFRelease(v105);
                if (v66)
                {
                  if (v101 || v100)
                  {
                    if (v99 == 1)
                    {
                      v80 = v94;
                      if (v94)
                      {
                        v80 = *(v94 + 32);
                      }

                      v120 = v80;
                      insertPatternsForText(&v110, v66, v129, v106, a9, v93, a14);
                    }
                  }

                  else
                  {
                    if (v98)
                    {
                      v81 = 8;
                    }

                    else
                    {
                      v81 = 7;
                    }

                    if (v98 || v97 || v96)
                    {
                      v82 = v94;
                      if (v94)
                      {
                        v82 = *(v94 + 24);
                      }

                      v120 = v82;
                      handlePatternsForTextWithScore(&v110, v66, v129, v106, v81, v15, v93, a14);
                    }

                    else
                    {
                      v83 = v93;
                      v84 = v94;
                      if (v94)
                      {
                        v85 = *(v94 + 24);
                      }

                      else
                      {
                        v85 = 0;
                      }

                      v120 = v85;
                      if (v92)
                      {
                        if (tokenPossibleMatch(v24, a12, v68, v102 | v91))
                        {
                          addCrossFieldOidWithLock(v84, v83, a14);
                        }

                        handlePatternsForPhrases(&v110, v66, v99, v129, v106, v95, a9, v83, a14);
                      }

                      else
                      {
                        handleCrossFieldPatterns(v24, &v110, v66, v99, a9, v93, a14);
                      }
                    }
                  }
                }

                goto LABEL_119;
              }
            }

            v47 = v24[11];
            if (v47)
            {
              Length = CFStringGetLength(v47);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              v90[1] = v90;
              v110 = MaximumSizeForEncoding;
              MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
              v51 = v90 - v50;
              bzero(v90 - v50, v52);
              v136.location = 0;
              v136.length = Length;
              CFStringGetBytes(v24[11], v136, 0x8000100u, 0x2Du, 0, v51, v110, &v110);
              v51[v110] = 0;
              if (strcmp(a12, v51))
              {
                CFRelease(v24[11]);
                v24[11] = 0;
                v24[11] = CFStringCreateWithCString(*MEMORY[0x1E695E480], a12, 0x600u);
              }

              v26 = v94;
            }

            else
            {
              v24[11] = CFStringCreateWithCString(*MEMORY[0x1E695E480], a12, 0x600u);
            }

            goto LABEL_59;
          }

          v45 = 16;
        }

        else
        {
          if (v42 == 122)
          {
            v42 = *(a12 + 1);
            v44 = 104;
          }

          else
          {
            v44 = 122;
          }

          v45 = v44 - v42;
        }

        v102 = 0;
        v43 = v45 == 0;
        goto LABEL_46;
      }

      v102 = 0;
      v43 = 0;
      goto LABEL_46;
    }
  }

LABEL_119:
  v86 = *MEMORY[0x1E69E9840];
}

uint64_t completionPossibleMatch(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = 8;
  }

  else
  {
    v4 = 6;
  }

  if (!*a1)
  {
    return 0;
  }

  if (!a1[v4])
  {
    os_unfair_lock_lock(&s_search_context_unfair_lock);
    if (a1[v4])
    {
      os_unfair_lock_unlock(&s_search_context_unfair_lock);
      goto LABEL_9;
    }

    v6 = icu_search_context_create();
    __dmb(0xBu);
    a1[v4] = v6;
    os_unfair_lock_unlock(&s_search_context_unfair_lock);
    if (v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:

  return icu_search_match();
}

uint64_t splitPossibleMatch(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    os_unfair_lock_lock(&s_search_context_unfair_lock);
    if (*(a1 + 72))
    {
      os_unfair_lock_unlock(&s_search_context_unfair_lock);
      goto LABEL_6;
    }

    v2 = icu_search_context_create();
    __dmb(0xBu);
    *(a1 + 72) = v2;
    os_unfair_lock_unlock(&s_search_context_unfair_lock);
    if (v2)
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:

  return icu_search_match();
}

uint64_t _utf16_to_utf8(unsigned __int16 *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  if (a5)
  {
    v20 = 0;
    if (utf8_encodestr(a1, 2 * a2, a3, &v20, a4))
    {
      return 0;
    }

    else
    {
      return v20;
    }
  }

  else
  {
    v6 = a3;
    if (a4 >= 4 * a2)
    {
      if (a2 >= 1)
      {
        v6 = a3;
        v14 = a1;
        v15 = &a1[a2];
        do
        {
          v17 = *v14++;
          v16 = v17;
          if (v17 > 0x7F)
          {
            if (v16 > 0x7FF)
            {
              if ((v16 & 0xF800) == 0xD800)
              {
                if ((v16 & 0x400) == 0 && v14 < v15)
                {
                  v18 = *v14;
                  if ((v18 & 0xFC00) == 0xDC00)
                  {
                    v14 = a1 + 2;
                    v19 = v18 + (v16 << 10) - 56613888;
                    *v6 = (v19 >> 18) | 0xF0;
                    v6[1] = (v19 >> 12) & 0x3F | 0x80;
                    v6[2] = (v19 >> 6) & 0x3F | 0x80;
                    v6[3] = v18 & 0x3F | 0x80;
                    v6 += 4;
                  }
                }
              }

              else
              {
                *v6 = (v16 >> 12) | 0xE0;
                v6[1] = (v16 >> 6) & 0x3F | 0x80;
                v6[2] = v16 & 0x3F | 0x80;
                v6 += 3;
              }
            }

            else
            {
              *v6 = (v16 >> 6) | 0xC0;
              v6[1] = v16 & 0x3F | 0x80;
              v6 += 2;
            }
          }

          else
          {
            *v6++ = v16;
          }

          a1 = v14;
        }

        while (v14 < v15);
      }
    }

    else if (a2 >= 1)
    {
      v7 = &a3[a4];
      v6 = a3;
      v8 = a1;
      v9 = &a1[a2];
      do
      {
        v11 = *v8++;
        v10 = v11;
        if (v11 > 0x7F)
        {
          if (v10 > 0x7FF)
          {
            if ((v10 & 0xF800) == 0xD800)
            {
              if ((v10 & 0x400) == 0 && v8 < v9)
              {
                v12 = *v8;
                if ((v12 & 0xFC00) == 0xDC00)
                {
                  if (v6 + 3 >= v7)
                  {
                    return v6 - a3;
                  }

                  v8 = a1 + 2;
                  v13 = v12 + (v10 << 10) - 56613888;
                  *v6 = (v13 >> 18) | 0xF0;
                  v6[1] = (v13 >> 12) & 0x3F | 0x80;
                  v6[2] = (v13 >> 6) & 0x3F | 0x80;
                  v6[3] = v12 & 0x3F | 0x80;
                  v6 += 4;
                }
              }
            }

            else
            {
              if (v6 + 2 >= v7)
              {
                return v6 - a3;
              }

              *v6 = (v10 >> 12) | 0xE0;
              v6[1] = (v10 >> 6) & 0x3F | 0x80;
              v6[2] = v10 & 0x3F | 0x80;
              v6 += 3;
            }
          }

          else
          {
            if (v6 + 1 >= v7)
            {
              return v6 - a3;
            }

            *v6 = (v10 >> 6) | 0xC0;
            v6[1] = v10 & 0x3F | 0x80;
            v6 += 2;
          }
        }

        else
        {
          if (v6 >= v7)
          {
            return v6 - a3;
          }

          *v6++ = v10;
        }

        a1 = v8;
      }

      while (v8 < v9);
    }

    return v6 - a3;
  }
}

void insertPatternsForText(uint64_t a1, unsigned int a2, void *a3, uint64_t *a4, UErrorCode a5, uint64_t a6, os_unfair_lock_s *a7)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a4 && *(a1 + 120))
  {
    v12 = a1 + 12192;
    v13 = (a1 + 4968);
    v55 = 0;
    v56 = 0;
    v14 = (a1 + 4976);
    v15 = a2;
    while (1)
    {
      if (*v14 == 1)
      {
        v16 = *(v12 + 2 * *(v14 - 1)) - 38;
        v17 = v16 > 0x39;
        v18 = (1 << v16) & 0x2000000000000A1;
        if (!v17 && v18 != 0)
        {
          break;
        }
      }

      v14 += 2;
      if (!--v15)
      {
        if (!*a3)
        {
          break;
        }

        if (!*a4)
        {
          v52 = *(a1 + 136);
          os_unfair_lock_lock(&s_search_context_unfair_lock);
          if (*a4)
          {
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
          }

          else
          {
            v20 = icu_search_context_create();
            __dmb(0xBu);
            *a4 = v20;
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
            if (!v20)
            {
              break;
            }
          }
        }

        v21 = CFLocaleCreate(*MEMORY[0x1E695E480], *(a1 + 128));
        if (v21)
        {
          v22 = v21;
          v23 = CFRetain(v21);
          if (v23)
          {
            v24 = *(a1 + 160);
            v51 = *(a1 + 152);
            v52 = v23;
            v55 = 0;
            v56 = 0;
            v25 = icu_search_match();
            if (v25 && v24 <= 13 && (v13[2 * v51 - 2 + 2 * v24] - *v13 + v13[2 * v51 - 1 + 2 * v24]) <= 29)
            {
              v50 = &v50;
              MEMORY[0x1EEE9AC00](v25);
              v26 = &v50 - 4 * v24;
              bzero(v26, v27);
              if (v24 < 1)
              {
                v31 = 0;
                v29 = 0;
              }

              else
              {
                v28 = 0;
                v29 = 0;
                v30 = 0;
                v31 = 0;
                v32 = v51 - v24 + 1;
                v33 = a1 + 8 * v51 + 9784;
                v34 = (a1 + 16 * v51 + 4976);
                do
                {
                  v35 = *(v34 - 1);
                  if (v28)
                  {
                    v36 = *(v34 - 2) + *(v34 - 3);
                    if (v35 > v36)
                    {
                      v37 = &v26[2 * v31];
                      *v37 = v12 + 2 * v36;
                      *(v37 + 2) = v35 - v36;
                      *(v37 + 12) = 1;
                      ++v31;
                      ++v30;
                    }
                  }

                  v38 = *(v33 + 8 * v28);
                  v39 = v12 + 2 * v35;
                  v40 = &v26[2 * v31];
                  v41 = (v38 & 0x800) != 0 || v38 == 0;
                  v42 = *v34;
                  v34 += 2;
                  *v40 = v39;
                  *(v40 + 2) = v42;
                  v43 = !v41;
                  *(v40 + 12) = v43;
                  ++v31;
                  if (!(v32 + v28))
                  {
                    v29 = v30 + v28;
                  }

                  ++v28;
                }

                while (v28 != v24);
              }

              v54 = 0;
              v53 = 0;
              v44 = (*(*(a1 + 104) + 16))();
              os_unfair_lock_lock(a7);
              if (v31)
              {
                v45 = *(a1 + 120);
                v46 = *(a1 + 96);
                v47 = *(a1 + 64);
                v57[2] = *(a1 + 48);
                v57[3] = v47;
                v57[4] = *(a1 + 80);
                v48 = *(a1 + 32);
                v57[0] = *(a1 + 16);
                v47.n128_u64[1] = *(&v57[0] + 1);
                v57[1] = v48;
                v47.n128_u64[0] = 1.0;
                v48.n128_f64[0] = v44;
                word_trie_s::insert((v45 + 16), (&v50 - 4 * v24), v31, v57, a6, a5, v46, 3, v48, v47, v54, v53, HIBYTE(v53), 6, 0, v29, 0);
              }

              os_unfair_lock_unlock(a7);
            }

            CFRelease(v22);
            CFRelease(v52);
          }
        }

        break;
      }
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

void handlePatternsForTextWithScore(uint64_t a1, unsigned int a2, void *a3, uint64_t *a4, int a5, UErrorCode a6, uint64_t a7, os_unfair_lock_s *a8)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (*(a1 + 120))
    {
      v44 = a6;
      v47 = 0;
      v48 = 0;
      if (*a3)
      {
        if (!*a4)
        {
          v14 = *(a1 + 136);
          os_unfair_lock_lock(&s_search_context_unfair_lock);
          if (*a4)
          {
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
          }

          else
          {
            v15 = icu_search_context_create();
            __dmb(0xBu);
            *a4 = v15;
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
            if (!v15)
            {
              goto LABEL_27;
            }
          }
        }

        v16 = *(a1 + 152);
        v47 = 0;
        v48 = 0;
        v17 = icu_search_match();
        if (a2 <= 0xD)
        {
          if (v17)
          {
            v18 = a2;
            v19 = a1 + 4968 + 16 * v16 + 16 * a2;
            if ((*(v19 - 16) - *(a1 + 4968) + *(v19 - 8)) <= 29)
            {
              v43[1] = v43;
              v20 = a1 + 12192;
              MEMORY[0x1EEE9AC00](v17);
              v21 = &v43[-4 * a2];
              bzero(&v43[-4 * v18], v22);
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = (a1 + 16 * v16 + 4976);
              do
              {
                v28 = *(v27 - 1);
                if (v23)
                {
                  v29 = *(v27 - 2) + *(v27 - 3);
                  if (v28 > v29)
                  {
                    v30 = &v21[2 * v26];
                    *v30 = v20 + 2 * v29;
                    *(v30 + 2) = v28 - v29;
                    *(v30 + 12) = 1;
                    ++v26;
                    ++v25;
                  }
                }

                v31 = *(a1 + 8 * v16 + 9784 + 8 * v23);
                v32 = v20 + 2 * v28;
                v33 = &v21[2 * v26];
                v34 = (v31 & 0x800) != 0 || v31 == 0;
                v35 = *v27;
                v27 += 2;
                *v33 = v32;
                *(v33 + 2) = v35;
                v36 = !v34;
                *(v33 + 12) = v36;
                ++v26;
                if (v18 + ~v16 == v23)
                {
                  v24 = v25 + v23;
                }

                ++v23;
              }

              while (v18 != v23);
              v46 = 0;
              v45 = 0;
              v37 = (*(*(a1 + 104) + 16))();
              os_unfair_lock_lock(a8);
              if (v26)
              {
                v38 = *(a1 + 120);
                v39 = *(a1 + 96);
                v40 = *(a1 + 64);
                v49[2] = *(a1 + 48);
                v49[3] = v40;
                v49[4] = *(a1 + 80);
                v41 = *(a1 + 32);
                v49[0] = *(a1 + 16);
                v40.n128_u64[1] = *(&v49[0] + 1);
                v49[1] = v41;
                v40.n128_u64[0] = 0;
                v41.n128_f64[0] = v37;
                word_trie_s::insert((v38 + 16), &v43[-4 * v18], v26, v49, a7, v44, v39, 3, v41, v40, v46, v45, HIBYTE(v45), a5, 0, v24, 0);
              }

              os_unfair_lock_unlock(a8);
            }
          }
        }
      }
    }
  }

LABEL_27:
  v42 = *MEMORY[0x1E69E9840];
}

void handleCrossFieldPatterns(const char **a1, uint64_t a2, unsigned int a3, unsigned int a4, UErrorCode a5, uint64_t a6, os_unfair_lock_s *a7)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 120))
  {
    goto LABEL_39;
  }

  v12 = a2 + 4968;
  v13 = a2 + 13696;
  v14 = *(a2 + 112);
  v15 = a2 + 12794;
  v65 = a6;
  v69 = a2 + 12192;
  v70 = (a2 + 9784);
  v67 = a1;
  if (v14)
  {
    v16 = *(v14 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = CFLocaleCreate(*MEMORY[0x1E695E480], *(a2 + 128));
  v92 = v15;
  v93 = v13;
  v94 = v69;
  v95 = v12;
  v96 = v70;
  v97 = a3;
  v68 = v16;
  v18 = v17;
  v19 = SILanguageModelCopyLocale();
  v20 = v19;
  if (v19)
  {
    v66 = a2;
    v62 = a5;
    v63 = a7;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2000000000;
    v91 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3802000000;
    v85 = __Block_byref_object_copy__2118;
    v86 = __Block_byref_object_dispose__2119;
    v87 = xmmword_1C2BFA360;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2000000000;
    v81 = 0;
    if (!a4)
    {
      goto LABEL_35;
    }

    v64 = v18;
    v21 = a4;
    v71 = v19;
    v22 = (v66 + 152);
    v23 = MEMORY[0x1E69E9820];
    do
    {
      v76[0] = v23;
      v76[1] = 0x40000000;
      v76[2] = ___ZL24handleCrossFieldPatternsP23si_completion_pattern_sP26StringTokenizerPhrasesInfotjbbjxP16os_unfair_lock_s_block_invoke;
      v76[3] = &unk_1E8193178;
      v76[4] = &v88;
      v76[5] = &v82;
      v24 = *v22++;
      v97 = *(&v24 + 1);
      v77 = v24;
      v93 = v13 + 16 * v24;
      v95 = v12 + 16 * v24;
      v96 = &v70[8 * v24];
      v76[6] = &v78;
      MEMORY[0x1C691F2A0](v68, v71, &v92, v76);
      --v21;
    }

    while (v21);
    v18 = v64;
    v20 = v71;
    if (v83[5] == -1 || (v83[6] - 2) > 0xB)
    {
      goto LABEL_35;
    }

    v25 = *v67;
    v26 = strlen(*v67);
    if (v26)
    {
      v27 = v26 - (v25[v26 - 1] == 42);
      v28 = v63;
      if (v27)
      {
        v29 = v25 - 1;
        v30 = v27;
        v31 = v66;
        do
        {
          if (v29[v30] != 32)
          {
            break;
          }

          --v30;
        }

        while (v30);
LABEL_22:
        v75 = v30 + 1;
        MEMORY[0x1EEE9AC00](v26);
        v34 = &v61[-v33];
        bzero(&v61[-v33], v35);
        v36 = *v67;
        v37 = UTF16FromUTF8();
        if (v37)
        {
          v38 = v37;
          v70 = v61;
          v39 = 32 * v83[6];
          MEMORY[0x1EEE9AC00](v37);
          v41 = &v61[-((v40 + 47) & 0xFFFFFFFFFFFFFFE0)];
          bzero(v41, v40 + 32);
          v42 = v38;
          *v41 = v38;
          *(v41 + 2) = v75;
          *(v41 + 12) = 0;
          v74 = 32;
          v41[2] = &v74;
          *(v41 + 6) = 1;
          *(v41 + 28) = 1;
          v43 = v83[6];
          if (v43 < 1)
          {
            v46 = 2;
          }

          else
          {
            v44 = 0;
            v45 = (v31 + 16 * v83[5] + 4976);
            v46 = 2;
            v47 = v69;
            do
            {
              v48 = *(v45 - 1);
              if (v44)
              {
                v49 = *(v45 - 2) + *(v45 - 3);
                if (v48 > v49)
                {
                  v50 = &v41[2 * v46];
                  *v50 = v47 + 2 * v49;
                  *(v50 + 2) = v48 - v49;
                  *(v50 + 12) = 1;
                  ++v46;
                }
              }

              v51 = *v45;
              v45 += 2;
              v52 = &v41[2 * v46];
              *v52 = v47 + 2 * v48;
              *(v52 + 2) = v51;
              *(v52 + 12) = 1;
              ++v46;
              ++v44;
            }

            while (v43 != v44);
          }

          BYTE4(v41[2 * v46 - 1]) = 0;
          v73 = 0;
          v72 = 0;
          v53 = (*(*(v31 + 104) + 16))();
          os_unfair_lock_lock(v28);
          if (v46)
          {
            v54 = *(v31 + 16);
            v98[1] = *(v31 + 32);
            v55 = *(v31 + 64);
            v98[2] = *(v31 + 48);
            v98[3] = v55;
            v99 = *(v31 + 80);
            v56.n128_u64[1] = *(&v99 + 1);
            v55.n128_u64[0] = v89[3];
            v57 = *(v31 + 120);
            v58 = *(v79 + 6);
            v59 = *(v31 + 96);
            v98[0] = v54;
            v56.n128_f64[0] = v53;
            word_trie_s::insert((v57 + 16), v41, v46, v98, v65, v62, v59, v58, v56, v55, v73, v72, HIBYTE(v72), 3, v75, 0, 0);
          }

          os_unfair_lock_unlock(v28);
          if (v42 != v34)
          {
            free(v42);
          }
        }

LABEL_35:
        _Block_object_dispose(&v78, 8);
        _Block_object_dispose(&v82, 8);
        _Block_object_dispose(&v88, 8);
        v32 = v20;
        if (!v18)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      LODWORD(v30) = 0;
    }

    else
    {
      LODWORD(v30) = 0;
      v28 = v63;
    }

    v31 = v66;
    goto LABEL_22;
  }

  v32 = 0;
  if (v18)
  {
LABEL_36:
    CFRelease(v18);
  }

LABEL_37:
  if (v20)
  {
    CFRelease(v32);
  }

LABEL_39:
  v60 = *MEMORY[0x1E69E9840];
}

uint64_t tokenPossibleMatch(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = strlen(*a1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - ((v8 + 17) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8 + 2);
  memcpy(v9, v6, v7);
  if (v7 && v9[v7 - 1] == 42)
  {
    v10 = v7 - 1;
    if ((a4 & 1) == 0)
    {
      if (v7 == 2)
      {
        v10 = 1;
      }

      else if (v9[v7 - 2] != 32)
      {
        v9[v7 - 1] = 32;
        v10 = v7;
      }
    }

    v11 = &v9[v10];
  }

  else
  {
    v11 = &v9[v7];
    if ((a4 & 1) == 0)
    {
      *v11++ = 32;
    }
  }

  *v11 = 0;
  if (!*(a1 + 56))
  {
    os_unfair_lock_lock(&s_search_context_unfair_lock);
    if (*(a1 + 56))
    {
      os_unfair_lock_unlock(&s_search_context_unfair_lock);
    }

    else
    {
      v12 = icu_search_context_create();
      __dmb(0xBu);
      *(a1 + 56) = v12;
      os_unfair_lock_unlock(&s_search_context_unfair_lock);
      if (!v12)
      {
        result = 0;
        goto LABEL_16;
      }
    }
  }

  result = icu_search_match();
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void addCrossFieldOidWithLock(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  valuePtr = a2;
  if (a1)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      os_unfair_lock_lock(a3);
      Mutable = *(a1 + 40);
      if (Mutable || (Mutable = CFSetCreateMutable(v5, 0, MEMORY[0x1E695E9F8]), (*(a1 + 40) = Mutable) != 0))
      {
        CFSetAddValue(Mutable, v7);
      }

      os_unfair_lock_unlock(a3);
      CFRelease(v7);
    }
  }
}

void handlePatternsForPhrases(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, uint64_t *a5, int a6, UErrorCode a7, uint64_t a8, os_unfair_lock_s *a9)
{
  v123 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (*(a1 + 120))
    {
      v116 = 0;
      v117 = 0;
      if (*a4)
      {
        v15 = *a5;
        v104 = a6;
        v103 = v15;
        if (!v15)
        {
          v16 = *(a1 + 136);
          os_unfair_lock_lock(&s_search_context_unfair_lock);
          v103 = *a5;
          if (v103)
          {
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
          }

          else
          {
            v17 = icu_search_context_create();
            __dmb(0xBu);
            *a5 = v17;
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
            v103 = v17;
            if (!v17)
            {
              goto LABEL_99;
            }
          }
        }

        v92 = a9;
        v100 = a1 + 12192;
        v97 = a1 + 4968;
        v96 = a1 + 9784;
        v18 = a1 + 13696;
        v19 = *(a1 + 112);
        v99 = a1 + 12794;
        v89 = a8;
        v88 = a7;
        if (v19)
        {
          v95 = *(v19 + 8);
        }

        else
        {
          v95 = 0;
        }

        v98 = CFLocaleCreate(*MEMORY[0x1E695E480], *(a1 + 128));
        v20 = 0;
        v21 = 0;
        v101 = 0;
        v22 = 0;
        v90 = a1;
        v23 = a1 + 160;
        v24 = *(a1 + 160);
        v25 = *(a1 + 152);
        v87 = (v23 - 144);
        v91 = v23 + 13552;
        v93 = xmmword_1C2BFA360;
        v86 = v23 + 9624;
        v85 = v23 + 4816;
        v102 = a2;
        v26 = a3;
        v27 = v99;
        v94 = v23;
        do
        {
          v116 = 0;
          v117 = 0;
          if (!icu_search_match() || v104 && v24 >= 2 && v24 + v25 >= v102)
          {
            break;
          }

          v22 += v117;
          if (v20 < v26)
          {
            v28 = v116 + v22;
            v29 = (v23 + 16 * v20);
            v30 = v100;
            while (1)
            {
              v25 = *(v29 - 1);
              if (v25 < v21)
              {
                ++v21;
              }

              else
              {
                v21 = *(v29 - 1);
              }

              v31 = *(v18 + 16 * v25);
              if (v22 >= v31)
              {
                v24 = *v29;
                v32 = *v29 + v25;
                if (v28 <= *(v18 + 16 * v32 - 8) + *(v18 + 16 * v32 - 16))
                {
                  break;
                }
              }

              ++v20;
              v29 += 2;
              if (v26 == v20)
              {
                goto LABEL_95;
              }
            }

            v33 = *(v18 + 16 * v25 + 8) + v31;
            if (v31 < v22 && v33 < v22)
            {
              v35 = v102;
              if (v21 + 1 > v102)
              {
                v35 = v21 + 1;
              }

              if (v21 == v35 - 1)
              {
LABEL_40:
                v21 = v35;
              }

              else
              {
                v36 = (v91 + 16 * v21++);
                while (1)
                {
                  v37 = vaddvq_s64(*v36);
                  v33 = v37;
                  if (v36->i64[0] >= v22 || v37 >= v22)
                  {
                    break;
                  }

                  ++v21;
                  ++v36;
                  if (v35 == v21)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }

            if (v33 >= v28)
            {
              v39 = v21;
            }

            else
            {
              v39 = v21 + 1;
            }

            if (v39 >= v32 || v21 >= v102 || v39 >= v102)
            {
              break;
            }

            v42 = v101;
            if (!v101)
            {
              v118.n128_u64[0] = v27;
              v118.n128_u64[1] = v18;
              v119.n128_u64[0] = v100;
              v119.n128_u64[1] = v97;
              v120.n128_u64[0] = v96;
              v120.n128_u64[1] = v102;
              v43 = SILanguageModelCopyLocale();
              v30 = v100;
              v42 = v43;
              if (!v43)
              {
                v101 = 0;
                break;
              }
            }

            v115 = 0;
            v114 = v93;
            v108 = v27;
            v109 = v18 + 16 * v25;
            v110 = v30;
            v111 = v97 + 16 * v25;
            v112 = v96 + 8 * v25;
            v113 = v24;
            v107 = 0;
            v101 = v42;
            KeyPhraseAtIndex = SILanguageModelGetKeyPhraseAtIndex();
            if (KeyPhraseAtIndex != -1)
            {
              v46 = v45;
              if (v45 <= 13)
              {
                v47 = KeyPhraseAtIndex + v25;
                v48 = KeyPhraseAtIndex + v25 + v45;
                if (v39 < v48 && v21 >= v47 && (*(v97 + 16 * v48 - 16) - *(v97 + 16 * v47) + *(v97 + 16 * v48 - 8)) <= 29)
                {
                  v84 = v39;
                  v82[1] = v82;
                  MEMORY[0x1EEE9AC00](KeyPhraseAtIndex);
                  v83 = &v82[-4 * v46];
                  bzero(v83, v49);
                  if (v46 < 1)
                  {
                    v54 = 0;
                    v51 = 0;
                  }

                  else
                  {
                    v50 = 0;
                    v51 = 0;
                    v52 = 0;
                    v53 = v47;
                    v54 = 0;
                    v55 = v84 - v53;
                    v56 = v86 + 8 * v53;
                    v57 = (v85 + 16 * v53);
                    v58 = v100;
                    v59 = v83;
                    do
                    {
                      v60 = *(v57 - 1);
                      if (v50)
                      {
                        v61 = *(v57 - 2) + *(v57 - 3);
                        if (v60 > v61)
                        {
                          v62 = &v59[2 * v54];
                          *v62 = v58 + 2 * v61;
                          *(v62 + 2) = v60 - v61;
                          *(v62 + 12) = 1;
                          ++v54;
                          ++v52;
                        }
                      }

                      v63 = *v57;
                      v64 = *(v56 + 8 * v50);
                      v65 = (v58 + 2 * v60);
                      v66 = &v59[2 * v54];
                      *v66 = v65;
                      *(v66 + 2) = v63;
                      v68 = (v64 & 0x800) == 0 && v64 != 0;
                      *(v66 + 12) = v68;
                      if (v63 == 1)
                      {
                        v69 = *v65;
                        if (v69 == 45 || v69 == 38)
                        {
                          *(v66 + 12) = 1;
                        }
                      }

                      ++v54;
                      if (v55 == v50)
                      {
                        v51 = v52 + v50;
                      }

                      ++v50;
                      v57 += 2;
                    }

                    while (v46 != v50);
                  }

                  v106 = 0;
                  v105 = 0;
                  v70 = v90;
                  v71 = (*(*(v90 + 104) + 16))();
                  os_unfair_lock_lock(v92);
                  if (v54)
                  {
                    v72.n128_u64[0] = v115;
                    v73 = *(v70 + 120);
                    v74 = *(v70 + 96);
                    v75 = v87[3];
                    v120 = v87[2];
                    v121 = v75;
                    v122 = v87[4];
                    v76 = v87[1];
                    v118 = *v87;
                    v119 = v76;
                    v76.n128_f64[0] = v71;
                    word_trie_s::insert((v73 + 16), v83, v54, &v118, v89, v88, v74, v107, v76, v72, v106, v105, HIBYTE(v105), 1, 0, v51, 0);
                  }

                  os_unfair_lock_unlock(v92);
                  v39 = v84;
                }
              }
            }

            if (v114 == -1)
            {
              v77 = v39 + 1;
              if (v39 + 1 >= v102)
              {
                v80 = v39;
              }

              else
              {
                v80 = v39 + 1;
              }

              v79 = (v18 + 16 * v80);
            }

            else
            {
              v77 = v114 + v25 + *(&v114 + 1);
              if (v77 == v102)
              {
                v78 = -1;
              }

              else
              {
                v78 = 0;
              }

              v79 = (v18 + 16 * v77 + 16 * v78);
            }

            v27 = v99;
            v22 = *v79;
            if (v77 >= v32)
            {
              ++v20;
            }

            v23 = v94;
          }
        }

        while (v20 < v26);
LABEL_95:
        if (v98)
        {
          CFRelease(v98);
        }

        if (v101)
        {
          CFRelease(v101);
        }
      }
    }
  }

LABEL_99:
  v81 = *MEMORY[0x1E69E9840];
}