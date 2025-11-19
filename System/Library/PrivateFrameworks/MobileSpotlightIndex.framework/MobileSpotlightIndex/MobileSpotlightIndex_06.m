uint64_t SIResultQueueDequeue(CFAbsoluteTime *a1, float a2)
{
  pthread_mutex_lock((*a1 + 8));
  a1[8] = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 12) == 1)
  {
    v4 = *a1;
LABEL_4:
    pthread_mutex_unlock((v4 + 8));
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v4 = *a1;
  if (*(a1 + 21))
  {
    goto LABEL_4;
  }

  v9 = *(v4 + 136);
  v10 = *(v4 + 124);
  v5 = *(v9 + 8 * v10);
  if (v5)
  {
    *(v9 + 8 * v10) = 0;
    *(v4 + 124) = (*(v4 + 120) - 1) & (v10 + 1);
    if (si_simplequeue_count_locked(*a1) >= *(a1 + 4))
    {
      v11 = 0;
      v14 = 0u;
    }

    else
    {
      v14 = *(a1 + 3);
      v11 = *(a1 + 10);
      a1[4] = 0.0;
      a1[5] = 0.0;
      a1[3] = 0.0;
    }

LABEL_18:
    *(a1 + 9) -= countForBatch(v5);
    goto LABEL_19;
  }

  if (a2 == 0.0)
  {
    goto LABEL_4;
  }

  if (si_simplequeue_count_locked(v4) >= *(a1 + 4))
  {
    v11 = 0;
    v14 = 0u;
  }

  else
  {
    v14 = *(a1 + 3);
    v11 = *(a1 + 10);
    a1[4] = 0.0;
    a1[5] = 0.0;
    a1[3] = 0.0;
  }

  v5 = si_dequeue_wait_locked(*a1, a2);
  if (si_simplequeue_count_locked(*a1) < *(a1 + 4) && !v14)
  {
    v14 = *(a1 + 3);
    v11 = *(a1 + 10);
    a1[4] = 0.0;
    a1[5] = 0.0;
    a1[3] = 0.0;
  }

  if (v5)
  {
    goto LABEL_18;
  }

LABEL_19:
  pthread_mutex_unlock((*a1 + 8));
  v7 = *(&v14 + 1);
  v6 = v14;
  if (v11)
  {
    v12 = 0;
    v13 = 8 * v11;
    do
    {
      (*(v14 + v12))(*(*(&v14 + 1) + v12), 0);
      v12 += 8;
    }

    while (v13 != v12);
  }

LABEL_5:
  free(v7);
  free(v6);
  return v5;
}

uint64_t countForBatch(uint64_t a1)
{
  if (a1 == -1)
  {
    return 0;
  }

  v2 = *a1;
  result = 1;
  if (v2 > 6)
  {
    if (v2 <= 8)
    {
      if (v2 != 7)
      {
        return result;
      }
    }

    else if (v2 != 9)
    {
      if (v2 == 10)
      {
        v8 = *(a1 + 32);

        return _MDPlistContainerGetLength();
      }

      if (v2 == 11)
      {
        v4 = *(a1 + 40);
        return _MDPlistBytesGetByteVectorCount();
      }

      return 0;
    }

LABEL_20:
    if (*(a1 + 40))
    {
      ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    }

    else
    {
      ByteVectorCount = 0;
    }

    v7 = *(a1 + 32);
    return ByteVectorCount + 8 * _MDStoreOIDArrayGetVectorCount();
  }

  if (v2 <= 2)
  {
    if (!v2)
    {
      return 80 * *(a1 + 40);
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
LABEL_15:
        v5 = *(a1 + 32);
        return _MDPlistBytesGetByteVectorCount();
      }

      return 0;
    }

    goto LABEL_20;
  }

  if ((v2 - 4) >= 3)
  {
    if (v2 != 3)
    {
      return 0;
    }

    goto LABEL_15;
  }

  return result;
}

void si_query_free(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v53 = *__error();
    v54 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v62) = 134217984;
      *(&v62 + 4) = a1;
      _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, "%p: Query completely done", &v62, 0xCu);
    }

    *__error() = v53;
  }

  v2 = *(a1 + 8);
  if (analytics_query_client_dict | analytics_query_string_dict)
  {
    v3 = *(a1 + 656);
    os_unfair_lock_lock(&analytics_query_lock);
    if (analytics_query_client_dict)
    {
      v4 = shortened_client_key(v3);
      Value = CFDictionaryGetValue(analytics_query_client_dict, v4);
      if (Value)
      {
        LODWORD(v62) = 0;
        CFNumberGetValue(Value, kCFNumberIntType, &v62);
        if (v62 > 1)
        {
          LODWORD(v62) = v62 - 1;
          v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v62);
          CFDictionarySetValue(analytics_query_client_dict, v4, v6);
          CFRelease(v6);
        }

        else
        {
          CFDictionaryRemoveValue(analytics_query_client_dict, v4);
        }
      }

      CFRelease(v4);
    }

    if (analytics_query_string_dict)
    {
      v7 = CFDictionaryGetValue(analytics_query_string_dict, v2);
      if (v7)
      {
        if (!v2)
        {
          v2 = @"<null>";
        }

        LODWORD(v62) = 0;
        CFNumberGetValue(v7, kCFNumberIntType, &v62);
        if (v62 > 1)
        {
          LODWORD(v62) = v62 - 1;
          v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v62);
          CFDictionarySetValue(analytics_query_string_dict, v2, v8);
          CFRelease(v8);
        }

        else
        {
          CFDictionaryRemoveValue(analytics_query_string_dict, v2);
        }
      }
    }

    os_unfair_lock_unlock(&analytics_query_lock);
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 8) = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 16) = 0;
  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 48) = 0;
  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 40) = 0;
  v12 = *(a1 + 192);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 192) = 0;
  v13 = *(a1 + 176);
  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 176) = 0;
  v14 = *(a1 + 184);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 184) = 0;
  v15 = *(a1 + 240);
  if (v15)
  {
    CFRelease(v15);
  }

  *(a1 + 240) = 0;
  v16 = *(a1 + 576);
  if (v16)
  {
    CFRelease(v16);
  }

  *(a1 + 576) = 0;
  v17 = *(a1 + 24);
  if (v17)
  {
    CFRelease(v17);
  }

  *(a1 + 24) = 0;
  v18 = *(a1 + 72);
  if (v18)
  {
    *&v62 = MEMORY[0x1E69E9820];
    *(&v62 + 1) = 0x40000000;
    v63 = __db_query_tree_apply_block_block_invoke;
    v64 = &unk_1E8198ED0;
    v65 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v18, &v62, 0);
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    *&v62 = MEMORY[0x1E69E9820];
    *(&v62 + 1) = 0x40000000;
    v63 = __db_query_tree_apply_block_block_invoke;
    v64 = &unk_1E8198ED0;
    v65 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v19, &v62, 0);
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    *&v62 = MEMORY[0x1E69E9820];
    *(&v62 + 1) = 0x40000000;
    v63 = __db_query_tree_apply_block_block_invoke;
    v64 = &unk_1E8198ED0;
    v65 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v20, &v62, 0);
  }

  v21 = *(a1 + 88);
  if (v21)
  {
    *&v62 = MEMORY[0x1E69E9820];
    *(&v62 + 1) = 0x40000000;
    v63 = __db_query_tree_apply_block_block_invoke;
    v64 = &unk_1E8198ED0;
    v65 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v21, &v62, 0);
  }

  v22 = *(a1 + 96);
  if (v22)
  {
    *&v62 = MEMORY[0x1E69E9820];
    *(&v62 + 1) = 0x40000000;
    v63 = __db_query_tree_apply_block_block_invoke;
    v64 = &unk_1E8198ED0;
    v65 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v22, &v62, 0);
  }

  v23 = *(a1 + 744);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 744) = 0;
  }

  v24 = *(a1 + 656);
  if (v24)
  {
    CFRelease(v24);
  }

  *(a1 + 656) = 0;
  v25 = *(a1 + 680);
  if (v25)
  {
    CFRelease(v25);
  }

  *(a1 + 680) = 0;
  v26 = *(a1 + 688);
  if (v26)
  {
    CFRelease(v26);
  }

  *(a1 + 688) = 0;
  v27 = *(a1 + 704);
  if (v27)
  {
    CFRelease(v27);
  }

  *(a1 + 704) = 0;
  v28 = *(a1 + 712);
  if (v28)
  {
    CFRelease(v28);
  }

  *(a1 + 712) = 0;
  v29 = *(a1 + 720);
  if (v29)
  {
    CFRelease(v29);
  }

  *(a1 + 720) = 0;
  v30 = *(a1 + 120);
  if (v30)
  {
    v31 = *(a1 + 104);
    if (v31)
    {
      query_node_unique_release(v30, v31);
      if (dword_1EBF46AD0 >= 5)
      {
        v55 = *__error();
        v56 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v55;
          node_unique_set_copy_description = _query_node_unique_set_copy_description(*(a1 + 120));
          LODWORD(v62) = 138412290;
          *(&v62 + 4) = node_unique_set_copy_description;
          _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "live query nodes: %@", &v62, 0xCu);
          *__error() = v57;
          if (node_unique_set_copy_description)
          {
            CFRelease(node_unique_set_copy_description);
          }
        }

        else
        {
          *__error() = v55;
        }
      }
    }

    v32 = *(a1 + 112);
    if (v32)
    {
      query_node_unique_release(*(a1 + 120), v32);
      if (dword_1EBF46AD0 >= 5)
      {
        v59 = *__error();
        v60 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = _query_node_unique_set_copy_description(*(a1 + 120));
          LODWORD(v62) = 138412290;
          *(&v62 + 4) = v61;
          _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "live filter query nodes: %@", &v62, 0xCu);
          *__error() = v59;
          if (v61)
          {
            CFRelease(v61);
          }
        }

        else
        {
          *__error() = v59;
        }
      }
    }

    query_node_unique_set_release(*(a1 + 120));
  }

  v33 = *(a1 + 272);
  if (v33)
  {
    *&v62 = MEMORY[0x1E69E9820];
    *(&v62 + 1) = 0x40000000;
    v63 = __db_query_tree_apply_block_block_invoke;
    v64 = &unk_1E8198ED0;
    v65 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v33, &v62, 0);
    *(a1 + 272) = 0;
  }

  v34 = *(a1 + 128);
  if (v34)
  {
    if (*(a1 + 136) >= 1)
    {
      v35 = 0;
      v36 = 0;
      do
      {
        siquerynode_release(*(*(a1 + 128) + v35));
        siquerynode_release(*(*(a1 + 128) + v35 + 8));
        ++v36;
        v35 += 16;
      }

      while (v36 < *(a1 + 136));
      v34 = *(a1 + 128);
    }

    free(v34);
  }

  v37 = *(a1 + 248);
  if (v37)
  {
    if (*(a1 + 256) >= 1)
    {
      v38 = 0;
      do
      {
        db_free_query_node(*(*(a1 + 248) + 8 * v38));
        *(*(a1 + 248) + 8 * v38++) = 0;
      }

      while (v38 < *(a1 + 256));
      v37 = *(a1 + 248);
    }

    free(v37);
  }

  v39 = *(a1 + 264);
  if (v39)
  {
    if (*(a1 + 288) >= 1)
    {
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = (*(a1 + 264) + v40);
        v62 = *v42;
        v63 = *(v42 + 2);
        destroy_lifting_rule(&v62);
        ++v41;
        v40 += 24;
      }

      while (v41 < *(a1 + 288));
      v39 = *(a1 + 264);
    }

    free(v39);
    *(a1 + 264) = 0;
  }

  v43 = *(a1 + 280);
  if (v43)
  {
    *&v62 = MEMORY[0x1E69E9820];
    *(&v62 + 1) = 0x40000000;
    v63 = __db_query_tree_apply_block_block_invoke;
    v64 = &unk_1E8198ED0;
    v65 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v43, &v62, 0);
  }

  v44 = *(a1 + 224);
  if (v44)
  {
    *&v62 = MEMORY[0x1E69E9820];
    *(&v62 + 1) = 0x40000000;
    v63 = __db_query_tree_apply_block_block_invoke;
    v64 = &unk_1E8198ED0;
    v65 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v44, &v62, 0);
  }

  v45 = *(a1 + 664);
  if (v45)
  {
    CFRelease(v45);
  }

  *(a1 + 664) = 0;
  v46 = *(a1 + 728);
  if (v46)
  {
    if (!*(a1 + 736))
    {
      goto LABEL_99;
    }

    Count = CFArrayGetCount(v46);
    if (Count >= 1)
    {
      v48 = Count;
      for (i = 0; i != v48; ++i)
      {
        db_free_query_node(*(*(a1 + 736) + 8 * i));
      }
    }

    free(*(a1 + 736));
    v46 = *(a1 + 728);
    if (v46)
    {
LABEL_99:
      CFRelease(v46);
    }

    *(a1 + 728) = 0;
  }

  v50 = *(a1 + 752);
  if (v50)
  {
    CFRelease(v50);
  }

  *(a1 + 752) = 0;
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  v51 = *(a1 + 32);
  if (v51)
  {
    CFRelease(v51);
  }

  *(a1 + 32) = 0;
  free(*(a1 + 600));
  free(a1);
  v52 = *MEMORY[0x1E69E9840];
}

void SIQueryRelease(uint64_t a1)
{
  if (atomic_fetch_add((a1 + 584), 0xFFFFFFFF) == 1)
  {
    si_query_free(a1);
  }
}

void SIResultQueueRelease(atomic_uint *a1)
{
  if (atomic_fetch_add(a1 + 2, 0xFFFFFFFF) == 1)
  {
    if (a1[10])
    {
      v3 = 0;
      do
      {
        (*(*(a1 + 3) + 8 * v3))(*(*(a1 + 4) + 8 * v3), 1);
        ++v3;
      }

      while (v3 < a1[10]);
    }

    free(*(a1 + 3));
    free(*(a1 + 4));
    v4 = *(a1 + 6);
    if (v4)
    {
      v4(*(a1 + 7), 1);
    }

    v5 = *a1;
    if (*a1)
    {
      *v5 = "destroyed simple queue";
      pthread_mutex_destroy((v5 + 8));
      pthread_cond_destroy((v5 + 72));
      v6 = *(v5 + 17);
      v7 = *(v5 + 31);
      v8 = &v6[8 * v7];
      for (i = *v8; *v8; i = *v8)
      {
        *v8 = 0;
        *(v5 + 31) = (*(v5 + 30) - 1) & (v7 + 1);
        SIResultBatchFree(i);
        v6 = *(v5 + 17);
        v7 = *(v5 + 31);
        v8 = &v6[8 * v7];
      }

      free(v6);
      free(v5);
    }

    free(a1);
  }
}

void SIResultBatchFree(_DWORD *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (*a1 > 5)
  {
    if (v2 > 8)
    {
      if (v2 != 9)
      {
        if (v2 == 10)
        {
          v8 = *(a1 + 4);
          if (v8)
          {
            CFRelease(v8);
          }

          *(a1 + 4) = 0;
          goto LABEL_26;
        }

        if (v2 != 11)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    else if (v2 != 7)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v2 <= 2)
  {
    if (!v2)
    {
      free(*(a1 + 4));
      goto LABEL_26;
    }

    if (v2 != 1)
    {
      if (v2 != 2)
      {
LABEL_18:
        v3 = __si_assert_copy_extra_332();
        v4 = v3;
        v5 = "";
        if (v3)
        {
          v5 = v3;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Expected valid queue entry type. Got %d", "SIResultQueue.c", 167, "0", v5, *a1);
        free(v4);
        if (__valid_fs(-1))
        {
          v6 = 2989;
        }

        else
        {
          v6 = 3072;
        }

        *v6 = -559038737;
        abort();
      }

      goto LABEL_14;
    }

LABEL_22:
    CFRelease(*(a1 + 4));
    goto LABEL_23;
  }

  if ((v2 - 4) < 2)
  {
LABEL_23:
    v7 = *(a1 + 5);
    if (v7)
    {
      CFRelease(v7);
    }

    *(a1 + 5) = 0;
    goto LABEL_26;
  }

  if (v2 != 3)
  {
    goto LABEL_18;
  }

LABEL_14:
  CFRelease(*(a1 + 4));
LABEL_26:
  if (*(a1 + 1))
  {
    si_release_qid();
  }

  free(a1);
}

uint64_t SICancel(uint64_t a1, os_signpost_id_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(a2, 1u);
  pthread_mutex_lock((a2 + 48));
  if (*(a2 + 32))
  {
    kdebug_trace();
  }

  Log = _MDPerf_QueryLog();
  if (a2 + 1 >= 2)
  {
    v11 = Log;
    if (os_signpost_enabled(Log))
    {
      v12 = qos_class_self();
      v13 = *(a2 + 32);
      v17 = 134218496;
      *v18 = 0;
      *&v18[8] = 1024;
      *&v18[10] = v12;
      v19 = 1024;
      v20 = v13;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v11, OS_SIGNPOST_INTERVAL_END, a2, "Job", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x JobType=%{signpost.description:attribute}d", &v17, 0x18u);
    }
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (dword_1EBF46B00 >= 5)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = qos_class_self();
        v17 = 67109376;
        *v18 = v16;
        *&v18[4] = 2048;
        *&v18[6] = a2;
        _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Canceling query in SICancel at QoS: %d for job id:%p", &v17, 0x12u);
      }

      *__error() = v14;
      v5 = *(a2 + 24);
    }

    *(v5 + 96) = 1;
    v6 = *(a2 + 24);
    pthread_mutex_lock(&jobsLock);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;
    pthread_mutex_unlock(&jobsLock);
    if (v7)
    {
      si_release_qid(v7);
    }

    si_querypipe_release(*(a2 + 24));
    *(a2 + 24) = 0;
  }

  if (*(a2 + 16))
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      if (!a1 || v8 == a1)
      {
        pthread_mutex_lock(&schlock);
        if (CFSetContainsValue(gAllIndexes, *(a2 + 8)))
        {
          si_remove_livequery(*(a2 + 8), *(a2 + 16));
        }

        pthread_mutex_unlock(&schlock);
        si_livequery_release(*(a2 + 16));
      }
    }
  }

  *(a2 + 36) = 1;
  pthread_mutex_unlock((a2 + 48));
  si_release_qid(a2);
  si_release_qid(a2);
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

void __SIUserCtxFinalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 64) = 0;
  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 72) = 0;
  v5 = *(a1 + 80);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 80) = 0;
  v6 = *(a1 + 88);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 88) = 0;
  v7 = *(a1 + 136);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 136) = 0;
  v8 = *(a1 + 96);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 96) = 0;
  v9 = *(a1 + 104);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 104) = 0;
  v10 = *(a1 + 112);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 112) = 0;
  v11 = *(a1 + 120);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = 1;
      do
      {
        free(v12);
        v11 = *(a1 + 120);
        v12 = v11[v13++];
      }

      while (v12);
    }

    free(v11);
  }

  free(*(a1 + 128));
  v14 = *(a1 + 144);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 144) = 0;
  v15 = *(a1 + 152);
  if (v15)
  {
    CFRelease(v15);
  }

  *(a1 + 152) = 0;
  v16 = *(a1 + 168);
  if (v16)
  {
    CFRelease(v16);
  }

  *(a1 + 168) = 0;
}

void __RLEOIDArrayFinalize(char *a1)
{
  pthread_rwlock_destroy((a1 + 16));
  v2 = 0;
  a1[384] = 1;
  *(a1 + 56) = 0;
  *(a1 + 27) = 0;
  v3 = a1 + 256;
  v4 = *(a1 + 31);
  do
  {
    v5 = *&v3[v2];
    if (v5)
    {
      if ((v5 & 1) == 0)
      {
        (*(*v5 + 72))(*&v3[v2]);
        CFAllocatorDeallocate(v4, v5);
      }

      *&v3[v2] = 0;
    }

    v2 += 8;
  }

  while (v2 != 128);
  v6 = *(a1 + 29);
  v7 = *(a1 + 31);
  if (v6)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, *(a1 + 31), *(a1 + 30));
    bzero(*(a1 + 29), 0x1F88uLL);
    v7 = *(a1 + 31);
  }

  v8 = 0;
  *(a1 + 30) = 0;
  do
  {
    v9 = *&v3[v8];
    if (v9)
    {
      if ((v9 & 1) == 0)
      {
        (*(*v9 + 72))(*&v3[v8]);
        CFAllocatorDeallocate(v7, v9);
      }

      *&v3[v8] = 0;
    }

    v8 += 8;
  }

  while (v8 != 128);
  v10 = *(a1 + 29);
  if (v10)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v10, *(a1 + 31), *(a1 + 30));
    CFAllocatorDeallocate(*(a1 + 31), *(a1 + 29));
    *(a1 + 29) = 0;
  }
}

void SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(void **a1, const __CFAllocator *a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, a2, 63);
    CFAllocatorDeallocate(a2, *a1);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = 0;
    v8 = a1 + 1;
    do
    {
      for (i = 0; i != 16; ++i)
      {
        v10 = v8[i];
        if (v10)
        {
          if ((v10 & 1) == 0)
          {
            (*(*v10 + 72))(v8[i]);
            CFAllocatorDeallocate(a2, v10);
          }

          v8[i] = 0;
        }
      }

      ++v7;
      v8 += 16;
    }

    while (v7 != a3);
  }
}

void SISearchCtx::~SISearchCtx(SISearchCtx *this)
{
  *this = &unk_1F4282348;
  os_unfair_lock_lock(&sActiveCtxLock);
  if (activeCtxs)
  {
    CFSetRemoveValue(activeCtxs, this);
  }

  os_unfair_lock_unlock(&sActiveCtxLock);
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 11) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 4) = 0;
  v4 = *(this + 7);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 7) = 0;
  v5 = *(this + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 8) = 0;
  v6 = *(this + 27);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 27) = 0;
  v7 = *(this + 2);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 2) = 0;
  SICompletionModelRelease(*(this + 32));
  SIPommesSuggestionsModelRelease(*(this + 35));
  free(*(this + 33));
  v8 = *(this + 9);
  if (v8)
  {
    CFRelease(v8);
  }

  *(this + 9) = 0;
  siquerynode_release(*(this + 14));
  siquerynode_release(*(this + 15));
  v9 = *(this + 26);
  if (v9)
  {
    CFRelease(v9);
  }

  *(this + 26) = 0;
  v10 = *(this + 18);
  if (v10)
  {
    db_release_files(v10);
  }

  for (i = 312; i != 352; i += 8)
  {
    v12 = *(this + i);
    *(this + i) = 0;
    si_scheduler_resume_with_token(v12);
  }

  if (*(this + 29) >= 1)
  {
    v13 = 0;
    do
    {
      db_free_query_node(*(*(this + 28) + 8 * v13++));
    }

    while (v13 < *(this + 29));
  }

  free(*(this + 28));
  v14 = *(this + 34);
  if (v14)
  {
    if (*(v14 + 32))
    {
      v15 = 0;
      do
      {
        free(*(*(v14 + 40) + 8 * v15++));
      }

      while (v15 < *(v14 + 32));
    }

    free(*(v14 + 40));
    free(*(v14 + 8));
    free(*(v14 + 16));
    if (*(v14 + 48))
    {
      icu_ctx_release();
    }

    if (*(v14 + 56))
    {
      icu_ctx_release();
    }

    if (*(v14 + 64))
    {
      icu_ctx_release();
    }

    if (*(v14 + 72))
    {
      icu_ctx_release();
    }

    v16 = *(v14 + 80);
    if (v16)
    {
      v17 = *(v14 + 32);
      if (v17)
      {
        for (j = 0; j < v17; ++j)
        {
          if (*(*(v14 + 80) + 8 * j))
          {
            icu_ctx_release();
            v17 = *(v14 + 32);
          }
        }

        v16 = *(v14 + 80);
      }

      free(v16);
    }

    v19 = *(v14 + 88);
    if (v19)
    {
      CFRelease(v19);
    }
  }

  free(*(this + 34));
  si_querypipe_release(*(this + 13));
  v20 = *(this + 44);
  if (v20)
  {
    if (v20[2])
    {
      v21 = 0;
      v22 = 4;
      do
      {
        free(*&v20[v22]);
        ++v21;
        v20 = *(this + 44);
        v22 += 12;
      }

      while (v21 < v20[2]);
    }

    free(v20);
  }

  v23 = *(this + 36);
  md_deadline_once_cancel();
  v24 = *(this + 36);
  md_deadline_once_release();
  v25 = *(this + 1);
  if (atomic_fetch_add((v25 + 584), 0xFFFFFFFF) == 1)
  {
    si_query_free(v25);
  }
}

void si_scheduler_resume_with_token(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      pthread_mutex_lock(*(v2 + 8));
      if ((*(a1 + 5) & 1) == 0)
      {
        if (*(a1 + 4) == 1)
        {
          v3 = *(v2 + 116) - 1;
          *(v2 + 116) = v3;
          if (!v3)
          {
            dispatch_resume(*(v2 + 160));
          }
        }

        else
        {
          v4 = *(v2 + 144);
          if (v4 == a1)
          {
            *(v2 + 144) = v4[2];
LABEL_13:
            release_token(a1);
          }

          else
          {
            while (v4)
            {
              v5 = v4;
              v4 = v4[2];
              if (v4 == a1)
              {
                v5[2] = v4[2];
                goto LABEL_13;
              }
            }
          }
        }
      }

      *(a1 + 5) = 1;
      pthread_cond_broadcast(*(v2 + 16));
      pthread_mutex_unlock(*(v2 + 8));
    }

    release_token(a1);
  }
}

void search_ctx_destroy(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1[5];
    if (v3)
    {
      (*(v3 + 16))(v3, a1, a2);
      _Block_release(a1[5]);
    }

    if ((a1[4] & 1) == 0 && *a1)
    {
      (*(**a1 + 8))(*a1);
    }
  }

  free(a1);
}

void SISearchCtx_METADATA::~SISearchCtx_METADATA(SISearchCtx_METADATA *this)
{
  *this = &unk_1F427CAD8;
  if (*(this + 1193) == 1)
  {
    si_makeUnavailable(*(this + 3), 0, 0, 23, "Recycle for error during query");
  }

  v2 = *(this + 157);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 116);
  if (v3)
  {
    if (v3[1])
    {
      v4 = 0;
      v5 = (v3 + 16);
      do
      {
        L1ComboQueueDestroy(*(v5 - 3));
        L1ComboQueueDestroy(*(v5 - 2));
        free(*(v5 - 1));
        v6 = *v5;
        v5 += 4;
        free(v6);
        ++v4;
      }

      while (v4 < v3[1]);
      v3 = *(this + 116);
    }

    free(v3);
  }

  v7 = *(this + 155);
  if (v7)
  {
    if (*(this + 90) >= 1)
    {
      v8 = 0;
      do
      {
        free(*(*(this + 155) + 8 * v8++));
      }

      while (v8 < *(this + 90));
      v7 = *(this + 155);
    }

    free(v7);
  }

  v9 = *(this + 105);
  if (*(this + 208))
  {
    v10 = 0;
    v11 = 16;
    do
    {
      if (*&v9[v11 + 16])
      {
        ContentIndexDocSetCleanupBorrowedChildren(*&v9[v11 + 16]);
        ContentIndexDocSetDispose(*(*(this + 105) + v11 + 16));
        v9 = *(this + 105);
        *&v9[v11 + 16] = 0;
      }

      if (*&v9[v11 - 16])
      {
        clear_node_caches(*&v9[v11 - 16]);
        db_free_query_node(*(*(this + 105) + v11 - 16));
        v9 = *(this + 105);
      }

      *&v9[v11 - 16] = 0;
      if (*&v9[v11 + 8])
      {
        clear_node_caches(*&v9[v11 + 8]);
        db_free_query_node(*(*(this + 105) + v11 + 8));
        v9 = *(this + 105);
        *&v9[v11 + 8] = 0;
      }

      if (*&v9[v11 - 8])
      {
        clear_node_caches(*&v9[v11 - 8]);
        db_free_query_node(*(*(this + 105) + v11 - 8));
        v9 = *(this + 105);
        *&v9[v11 - 8] = 0;
      }

      if (*&v9[v11])
      {
        clear_node_caches(*&v9[v11]);
        db_free_query_node(*(*(this + 105) + v11));
        v9 = *(this + 105);
        *&v9[v11] = 0;
      }

      ++v10;
      v11 += 48;
    }

    while (v10 < *(this + 208));
  }

  free(v9);
  if (*(this + 110) >= 1)
  {
    v12 = 0;
    do
    {
      clear_node_caches(*(*(this + 109) + 8 * v12));
      db_free_query_node(*(*(this + 109) + 8 * v12++));
    }

    while (v12 < *(this + 110));
  }

  free(*(this + 109));
  if (*(this + 108) >= 1)
  {
    v13 = 0;
    do
    {
      clear_node_caches(*(*(this + 107) + 8 * v13));
      db_free_query_node(*(*(this + 107) + 8 * v13++));
    }

    while (v13 < *(this + 108));
  }

  free(*(this + 107));
  if (*(this + 112) >= 1)
  {
    v14 = 0;
    do
    {
      clear_node_caches(*(*(this + 111) + 8 * v14));
      db_free_query_node(*(*(this + 111) + 8 * v14++));
    }

    while (v14 < *(this + 112));
  }

  free(*(this + 111));
  free(*(this + 117));
  free(*(this + 118));
  free(*(this + 119));
  free(*(this + 121));
  free(*(this + 122));
  for (i = 0; i != 24; i += 8)
  {
    v16 = this + i;
    v17 = *(this + i + 1080);
    if (v17)
    {
      free(v17);
      *(v16 + 135) = 0;
    }

    v18 = *(v16 + 138);
    if (v18)
    {
      free(v18);
      *(v16 + 138) = 0;
    }
  }

  free(*(this + 115));
  v19 = *(this + 147);
  if (v19)
  {
    if (*v19 >= 1)
    {
      v20 = 0;
      v21 = (v19 + 10);
      do
      {
        free(*(v21 - 4));
        free(*(v21 - 1));
        v22 = *v21;
        v21 += 5;
        free(v22);
        ++v20;
      }

      while (v20 < *v19);
    }

    free(v19);
  }

  v23 = *(this + 148);
  if (v23)
  {
    CFRelease(v23);
  }

  if (*(this + 47))
  {
    v24 = 0;
    do
    {
      ContentIndexQueryNodeDispose(*(*(this + 46) + 8 * v24++));
    }

    while (v24 < *(this + 47));
  }

  free(*(this + 46));
  v25 = *(this + 85);
  if (v25)
  {
    ContentIndexDocSetIteratorDispose(v25);
  }

  *(this + 85) = 0;
  v26 = *(this + 83);
  if (v26)
  {
    free(v26);
  }

  *(this + 83) = 0;
  v27 = *(this + 102);
  if (v27)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 0x40000000;
    v36[2] = __db_query_tree_apply_block_block_invoke;
    v36[3] = &unk_1E8198ED0;
    v36[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v27, v36, 0);
  }

  *(this + 102) = 0;
  v28 = *(this + 77);
  if (v28)
  {
    free(v28);
    *(this + 77) = 0;
  }

  v29 = *(this + 78);
  if (v29)
  {
    free(v29);
    *(this + 78) = 0;
  }

  v30 = *(this + 79);
  if (v30)
  {
    free(v30);
    *(this + 79) = 0;
  }

  v31 = *(this + 114);
  if (v31)
  {
    db_obj_iter_release(v31);
  }

  CIIndexSetClearCache(this + 688);
  v32 = *(this + 150);
  if (v32)
  {
    (*(*v32 + 16))(v32);
    *(this + 150) = 0;
  }

  if (*(this + 151))
  {
    for (j = 0; j != 72; j += 8)
    {
      v34 = *(*(this + 151) + j);
      if (v34)
      {
        CFRelease(v34);
      }
    }

    free(*(this + 151));
  }

  v35 = *(this + 153);
  if (v35)
  {
    CFRelease(v35);
  }

  SISearchCtx::~SISearchCtx(this);
}

{
  SISearchCtx_METADATA::~SISearchCtx_METADATA(this);

  JUMPOUT(0x1C691FEF0);
}

void clear_node_caches(query_node *a1)
{
  var0 = a1->var0;
  if (var0)
  {
    clear_node_caches(var0);
  }

  var1 = a1->var1;
  if (var1)
  {
    clear_node_caches(var1);
  }

  var2 = a1->var2;
  if (var2)
  {
    v5 = *(var2 + 15);
    if (v5 != -1)
    {
      if (!v5)
      {
LABEL_11:
        var4 = a1->var4;
        if (var4 && var2 && (*(var2 + 33) & 8) == 0)
        {
          if (var4 != -1)
          {
            ContentIndexDocSetDispose(var4);
          }

          a1->var4 = 0;
        }

        goto LABEL_17;
      }

      v6 = *(var2 + 16);
      if (v6)
      {
        v6();
        var2 = a1->var2;
      }
    }

    *(var2 + 15) = 0;
    *(var2 + 16) = 0;
    goto LABEL_11;
  }

LABEL_17:
  v8 = a1->var3.var0;
  if (v8)
  {
    if (*(a1 + 28))
    {
      free(*v8);
      free(a1->var3.var0);
      a1->var3.var0 = 0;
    }
  }
}

void db_release_files(atomic_uint **a1)
{
  _fd_release_fd(*a1, *(a1 + 2), 0, a1[2]);
  fd_release(*a1);

  free(a1);
}

uint64_t SISearchCtx_METADATA::preIterate(SISearchCtx_METADATA *this)
{
  v221 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (dword_1EBF46B00 >= 5)
  {
    v202 = *__error();
    v203 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v203, OS_LOG_TYPE_DEFAULT, "at qos 0x%x", buf, 8u);
    }

    *__error() = v202;
  }

  SISearchCtx::common_preIterate(this, v2);
  if (!*(*(this + 3) + 1192))
  {
    v204 = __si_assert_copy_extra_332();
    v199 = v204;
    v205 = "";
    if (v204)
    {
      v205 = v204;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 4860, "_store->store", v205);
LABEL_211:
    free(v199);
    if (__valid_fs(-1))
    {
      v201 = 2989;
    }

    else
    {
      v201 = 3072;
    }

    *v201 = -559038737;
    abort();
  }

  v4 = si_querypipe_copy_jobid(*(this + 13));
  *(this + 113) = v4;
  if (v4)
  {
    si_release_qid(v4);
    v5 = *(this + 113);
  }

  v6 = *(this + 3);
  kdebug_trace();
  Log = _MDPerf_QueryLog();
  v8 = *(this + 1);
  if (v8 + 1 >= 2)
  {
    v28 = Log;
    if (os_signpost_enabled(Log))
    {
      v29 = *(v8 + 608);
      v30 = qos_class_self();
      *buf = 134218240;
      *&buf[4] = v29;
      *&buf[12] = 1024;
      *&buf[14] = v30;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Preiterate", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", buf, 0x12u);
    }
  }

  v9 = *(this + 3);
  Length = CFStringGetLength(@"kMDQueryResultMatchingArrayIndexes.");
  v11 = *(this + 7);
  if (!v11)
  {
    MEMORY[0x1EEE9AC00](0);
    v208 = &v206;
    goto LABEL_18;
  }

  Count = CFArrayGetCount(v11);
  MEMORY[0x1EEE9AC00](Count);
  v208 = (&v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v208, v13);
  if (Count <= 0)
  {
LABEL_18:
    v209 = 0;
    v20 = this + 645;
    goto LABEL_19;
  }

  v14 = 0;
  v209 = 0;
  v15 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(this + 7), v14);
    if (CFStringHasPrefix(ValueAtIndex, @"kMDQueryResultMatchingArrayIndexes."))
    {
      v17 = CFStringGetLength(ValueAtIndex) - Length;
      if (v17 >= 2)
      {
        Mutable = v209;
        if (!v209)
        {
          Mutable = CFArrayCreateMutable(kCIQueryZoneAllocator, 0, MEMORY[0x1E695E9C0]);
        }

        v222.location = Length;
        v222.length = v17;
        v19 = CFStringCreateWithSubstring(kCIQueryZoneAllocator, ValueAtIndex, v222);
        *(v208 + v15++) = v14;
        v209 = Mutable;
        CFArrayAppendValue(Mutable, v19);
        CFRelease(v19);
      }
    }

    ++v14;
  }

  while (Count != v14);
  v20 = this + 645;
  if ((*(this + 645) & 1) == 0)
  {
    v31 = 1;
    while (1)
    {
      v32 = CFArrayGetValueAtIndex(*(this + 7), v31 - 1);
      if (CFStringHasPrefix(v32, @"kMDItemFS"))
      {
        break;
      }

      HasPrefix = CFStringHasPrefix(v32, @"_kMDItemFS");
      *v20 = HasPrefix != 0;
      if (HasPrefix)
      {
        v34 = 1;
      }

      else
      {
        v34 = Count <= v31;
      }

      ++v31;
      if (v34)
      {
        goto LABEL_19;
      }
    }

    *v20 = 1;
  }

LABEL_19:
  v21 = *(this + 8);
  if (v21)
  {
    v22 = CFArrayGetCount(v21);
    if (!*v20)
    {
      v23 = v22;
      if (v22 >= 1)
      {
        v24 = 1;
        while (1)
        {
          v25 = CFArrayGetValueAtIndex(*(this + 8), v24 - 1);
          if (CFStringHasPrefix(v25, @"kMDItemFS"))
          {
            break;
          }

          v26 = CFStringHasPrefix(v25, @"_kMDItemFS");
          *v20 = v26 != 0;
          if (v26)
          {
            v27 = 1;
          }

          else
          {
            v27 = v23 <= v24;
          }

          ++v24;
          if (v27)
          {
            goto LABEL_41;
          }
        }

        *v20 = 1;
      }
    }
  }

LABEL_41:
  v35 = *(this + 1);
  v36 = *(v35 + 288);
  v37 = *(v35 + 272);
  v210 = *(v35 + 264);
  v211 = v36;
  if (v37)
  {
    v38 = *(v35 + 688);
    if (v38)
    {
      *&v39 = -1;
      *(&v39 + 1) = -1;
      *(this + 1128) = v39;
      *(this + 1144) = v39;
      v40 = CFArrayGetCount(v38);
      if (v40 >= 1)
      {
        v41 = v40;
        for (i = 0; i != v41; ++i)
        {
          v43 = CFArrayGetValueAtIndex(v38, i);
          v44 = groupForBundleId(v9, v43);
          if (v44)
          {
            *(this + (v44 >> 6) + 141) &= ~(1 << v44);
          }
        }
      }
    }

    else
    {
      v45 = *(v35 + 680);
      if (v45)
      {
        v46 = CFArrayGetCount(*(v35 + 680));
        if (v46 >= 1)
        {
          v47 = v46;
          for (j = 0; j != v47; ++j)
          {
            v49 = CFArrayGetValueAtIndex(v45, j);
            v50 = groupForBundleId(v9, v49);
            if (v50)
            {
              *(this + (v50 >> 6) + 141) |= 1 << v50;
            }
          }
        }
      }
    }
  }

  v51 = *(*(this + 1) + 72);
  if (!v51)
  {
    goto LABEL_67;
  }

  *buf = 0;
  ann_subindexes = db_query_ann_subindexes(v51, buf);
  v53 = ann_subindexes;
  v54 = *buf;
  if (*buf >= 1)
  {
    v55 = 0;
    v56 = this + 1080;
    v57 = this + 1032;
    do
    {
      v58 = v53[v55];
      if ((v58 & 0x80000000) == 0)
      {
        v59 = *&v56[8 * v58];
        if (v59)
        {
          v60 = malloc_type_realloc(v59, 2 * *&v57[8 * v58] + 2, 0x1000040BDFB0063uLL);
        }

        else
        {
          v60 = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
        }

        *&v56[8 * v58] = v60;
        v61 = *&v57[8 * v58];
        v62 = &v60[2 * v61];
        *v62 = 1;
        v62[1] = v58;
        *&v57[8 * v58] = v61 + 1;
      }

      ++v55;
    }

    while (v55 < v54);
    goto LABEL_66;
  }

  if (ann_subindexes)
  {
LABEL_66:
    free(v53);
  }

LABEL_67:
  v63 = v211;
  if (!v211)
  {
    v72 = *(this + 29);
    if (v37 || v72)
    {
      *(this + 105) = malloc_type_realloc(*(this + 105), 48 * (v72 + *(this + 208)) + 48, 0x1020040081E4708uLL);
    }

    goto LABEL_161;
  }

  *(this + 120) = v211;
  v64 = 8 * v63;
  v65 = malloc_type_zone_malloc(queryZone, 8 * v63, 0xA4971684uLL);
  if (!v65)
  {
    _log_fault_for_malloc_failure();
  }

  *(this + 121) = v65;
  v66 = malloc_type_zone_malloc(queryZone, v64, 0xA4971684uLL);
  if (!v66)
  {
    _log_fault_for_malloc_failure();
  }

  *(this + 122) = v66;
  v67 = v211;
  if (v211 < 1)
  {
    v68 = 0;
  }

  else
  {
    v68 = 0;
    v69 = (v210 + 8);
    v70 = v211;
    do
    {
      v71 = *v69;
      v69 += 3;
      v68 += v71;
      --v70;
    }

    while (v70);
  }

  if (v37)
  {
    ++v68;
  }

  v73 = *(this + 105);
  v217 = v68 + *(this + 208) + *(this + 29);
  v74 = 48 * v217;
  v75 = malloc_type_realloc(v73, 48 * v217, 0x1020040081E4708uLL);
  *(this + 105) = v75;
  bzero(v75 + 48, v74 - 48);
  v76 = 0x7FFFFFFFFFFFFFFFLL;
  if (v67 < 1)
  {
    v78 = 0;
    v100 = -1;
    v101 = -1;
    goto LABEL_110;
  }

  v206 = 0x7FFFFFFFFFFFFFFFLL;
  v207 = v37;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = this + 1080;
  v81 = this + 1032;
  v215 = this + 984;
  v216 = &buf[16];
  do
  {
    v213 = v79;
    v214 = v78;
    v82 = (v210 + 24 * v79);
    v83 = v82[1];
    v212 = v82[2];
    *(*(this + 121) + 8 * v79) = v83;
    *(*(this + 122) + 8 * v79) = v82[2];
    if (v82[1] >= 1)
    {
      v84 = 0;
      v85 = *(this + 208);
      do
      {
        if (v217 < v85)
        {
          v198 = __si_assert_copy_extra_332();
          v199 = v198;
          v200 = "";
          if (v198)
          {
            v200 = v198;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 5062, "nodeSize>=nodeCount", v200);
          goto LABEL_211;
        }

        v86 = *(*v82 + 8 * v84);
        if (v86)
        {
          if ((*(v86 + 56) & 1) == 0 || v77 > 4 || (v215[v77] = v85, ++v77, (v86 = *(*v82 + 8 * v84)) != 0))
          {
            *buf = 0;
            v87 = db_query_ann_subindexes(v86, buf);
            v88 = v87;
            v89 = *buf;
            if (*buf >= 1)
            {
              v90 = 0;
              do
              {
                v91 = v88[v90];
                if ((v91 & 0x80000000) == 0)
                {
                  v92 = *&v80[8 * v91];
                  if (v92)
                  {
                    v93 = malloc_type_realloc(v92, 2 * *&v81[8 * v91] + 2, 0x1000040BDFB0063uLL);
                  }

                  else
                  {
                    v93 = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
                  }

                  *&v80[8 * v91] = v93;
                  v94 = *&v81[8 * v91];
                  v95 = &v93[2 * v94];
                  *v95 = *(this + 832) + 1;
                  v95[1] = v91;
                  *&v81[8 * v91] = v94 + 1;
                }

                ++v90;
              }

              while (v90 < v89);
LABEL_101:
              free(v88);
              goto LABEL_102;
            }

            if (v87)
            {
              goto LABEL_101;
            }
          }
        }

LABEL_102:
        v96 = *(*v82 + 8 * v84);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v219 = &unk_1E8198ED0;
        v220 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v96, buf, &__block_literal_global_25_15416);
        v97 = *(this + 105);
        v98 = *(this + 208);
        v85 = v98 + 1;
        *(this + 208) = v98 + 1;
        *(v97 + 48 * v98) = v99;
        ++v84;
      }

      while (v84 < v82[1]);
    }

    v78 = v212 + v214;
    v79 = v213 + 1;
  }

  while (v213 + 1 != v211);
  v100 = -1 << v78;
  v76 = v206;
  v101 = (-1 << v78) | (v206 >> ~v78);
  if ((v78 & 0x40) != 0)
  {
    v101 = -1 << v78;
    v100 = 0;
  }

  if (v78 > 0x7F)
  {
    v100 = 0;
    v101 = 0;
  }

  v37 = v207;
LABEL_110:
  *(this + 66) = v100;
  *(this + 67) = v101;
  v102 = *(this + 1);
  *(this + 96) = v102[81];
  v103 = v102[82];
  if (v103)
  {
    v104 = v78 - v103;
    v105 = -1 << v104;
    v106 = (v104 & 0x40) == 0;
    if ((v104 & 0x40) != 0)
    {
      v107 = -1 << v104;
    }

    else
    {
      v107 = (-1 << v104) | (v76 >> ~v104);
    }

    if (!v106)
    {
      v105 = 0;
    }

    *(this + 50) = v105;
    *(this + 51) = v107;
    v108 = v102[83] + 1;
    v109 = (v108 & 0x40) == 0;
    if ((v108 & 0x40) != 0)
    {
      v110 = -1 << (*(v102 + 332) + 1);
    }

    else
    {
      v110 = (-1 << (*(v102 + 332) + 1)) | (v76 >> ~(*(v102 + 332) + 1));
    }

    if (v109)
    {
      v111 = -1 << (*(v102 + 332) + 1);
    }

    else
    {
      v111 = 0;
    }

    v112 = ~v110;
    v113 = ~v111;
    *(this + 52) = v111;
    *(this + 53) = v110;
    v114 = v102[87];
    v115 = v102[88];
    v116 = v114 - v115 + 1;
    *(this + 128) = v116;
    v117 = v102[85];
    v118 = v102[86];
    v119 = v117 - v118 + 1;
    v120 = v114 + 1;
    v121 = v117 - v120 + 1;
    *(this + 129) = v121;
    *(this + 54) = v113;
    *(this + 55) = v112;
    v122 = v102[84];
    v123 = 1 << v122;
    v124 = (v122 & 0x40) == 0;
    if ((v122 & 0x40) != 0)
    {
      v125 = 1 << v122;
    }

    else
    {
      v125 = 0;
    }

    if (!v124)
    {
      v123 = 0;
    }

    *(this + 56) = ~v123;
    *(this + 57) = ~v125;
    v126 = -1 << v116;
    if ((v116 & 0x40) != 0)
    {
      v127 = 0;
    }

    else
    {
      v127 = -1 << v116;
    }

    if ((v116 & 0x40) == 0)
    {
      v126 |= v76 >> ~v116;
    }

    v128 = ~v127;
    v129 = (~v126 << v115) | (v128 >> 1 >> ~v115);
    v130 = v128 << v115;
    if ((v115 & 0x40) != 0)
    {
      v129 = v130;
      v130 = 0;
    }

    *(this + 62) = v130;
    *(this + 63) = v129;
    v131 = -1 << v119;
    if ((v119 & 0x40) != 0)
    {
      v132 = 0;
    }

    else
    {
      v132 = -1 << v119;
    }

    if ((v119 & 0x40) == 0)
    {
      v131 |= v76 >> ~v119;
    }

    v133 = ~v132;
    v134 = (~v131 << v118) | (v133 >> 1 >> ~v118);
    v135 = v133 << v118;
    v136 = (v118 & 0x40) == 0;
    if ((v118 & 0x40) != 0)
    {
      v137 = v135;
    }

    else
    {
      v137 = v134;
    }

    if (v136)
    {
      v138 = v135;
    }

    else
    {
      v138 = 0;
    }

    *(this + 58) = v138;
    *(this + 59) = v137;
    v139 = -1 << v121;
    v140 = (v121 & 0x40) == 0;
    if ((v121 & 0x40) != 0)
    {
      v141 = 0;
    }

    else
    {
      v141 = -1 << v121;
    }

    v142 = v139 | (v76 >> ~v121);
    if (!v140)
    {
      v142 = v139;
    }

    v143 = (~v142 << v120) | (~v141 >> 1 >> ~v120);
    v144 = ~v141 << v120;
    v145 = (v120 & 0x40) == 0;
    if ((v120 & 0x40) != 0)
    {
      v146 = ~v141 << v120;
    }

    else
    {
      v146 = v143;
    }

    if (v145)
    {
      v147 = v144;
    }

    else
    {
      v147 = 0;
    }

    *(this + 60) = v147;
    *(this + 61) = v146;
    if (dword_1EBF46B00 >= 5)
    {
      v148 = v78;
      v149 = *__error();
      v150 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v148;
        _os_log_impl(&dword_1C278D000, v150, OS_LOG_TYPE_DEFAULT, "bitCount: %ld", buf, 0xCu);
      }

      *__error() = v149;
    }
  }

  else
  {
    *(this + 50) = 0;
    *(this + 51) = 0;
    *(this + 52) = -1;
    *(this + 53) = -1;
    *(this + 28) = 0u;
    *(this + 29) = 0u;
    *(this + 30) = 0u;
    *(this + 31) = 0u;
  }

LABEL_161:
  v151 = *(this + 29);
  if (v151)
  {
    *(this + 291) = v151;
    *(this + 292) = currentCategoryCount(*(this + 3));
    v152 = *(this + 208);
    *(this + 290) = v152;
    if (*(this + 29) >= 1)
    {
      v153 = 0;
      v154 = *(this + 105);
      v155 = MEMORY[0x1E69E9820];
      do
      {
        v156 = (v154 + 48 * v152);
        v156[1] = 0u;
        v156[2] = 0u;
        *v156 = 0u;
        v157 = *(*(this + 28) + 8 * v153);
        *buf = v155;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v219 = &unk_1E8198ED0;
        v220 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v157, buf, &__block_literal_global_25_15416);
        v154 = *(this + 105);
        v158 = *(this + 208);
        v152 = v158 + 1;
        *(this + 208) = v158 + 1;
        *(v154 + 48 * v158) = v159;
        ++v153;
      }

      while (v153 < *(this + 29));
    }
  }

  if (v37)
  {
    v160 = (*(this + 105) + 48 * *(this + 208));
    v160[1] = 0u;
    v160[2] = 0u;
    *v160 = 0u;
    *(this + 212) = *(this + 208);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v219 = &unk_1E8198ED0;
    v220 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v37, buf, &__block_literal_global_25_15416);
    v161 = *(this + 105);
    v162 = *(this + 208);
    *(this + 208) = v162 + 1;
    *(v161 + 48 * v162) = v163;
    *buf = 0;
    v164 = db_query_ann_subindexes(v37, buf);
    v165 = v164;
    v166 = *buf;
    if (*buf < 1)
    {
      if (v164)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v167 = 0;
      v168 = this + 1080;
      v169 = this + 1032;
      do
      {
        v170 = v165[v167];
        if ((v170 & 0x80000000) == 0)
        {
          v171 = *&v168[8 * v170];
          if (v171)
          {
            v172 = malloc_type_realloc(v171, 2 * *&v169[8 * v170] + 2, 0x1000040BDFB0063uLL);
          }

          else
          {
            v172 = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
          }

          *&v168[8 * v170] = v172;
          v173 = *&v169[8 * v170];
          v174 = &v172[2 * v173];
          *v174 = *(this + 208);
          v174[1] = v170;
          *&v169[8 * v170] = v173 + 1;
        }

        ++v167;
      }

      while (v167 < v166);
LABEL_176:
      free(v165);
    }
  }

  v175 = _os_feature_enabled_impl();
  v176 = v209;
  if (v175)
  {
    Value = *(*(this + 1) + 752);
    if (Value || (v179 = *(this + 2)) != 0 && (v180 = *(v179 + 168)) != 0 && (Value = CFDictionaryGetValue(v180, @"kMDQueryResultMatchingAttributes")) != 0)
    {
      v178 = CFGetTypeID(Value);
      if (v178 == CFArrayGetTypeID())
      {
        *(this + 107) = SISearchCtx_METADATA::addMatchingAttributeNodes(this, Value, 0, this + 108, 0);
      }
    }

    if (v176)
    {
      v181 = SISearchCtx_METADATA::addMatchingAttributeNodes(this, v176, v208, this + 110, 0);
      *(this + 109) = v181;
      v182 = *(this + 110);
      if (v182 >= 1)
      {
        do
        {
          if (*(*v181 + 48) == 4)
          {
            v183 = *(*v181 + 16);
            if (v183)
            {
              if (*v183)
              {
                v183[4] |= 0x400000000uLL;
              }
            }
          }

          v181 += 8;
          --v182;
        }

        while (v182);
        goto LABEL_191;
      }

LABEL_192:
      CFRelease(v176);
    }
  }

  else
  {
LABEL_191:
    if (v176)
    {
      goto LABEL_192;
    }
  }

  if (*(*(this + 1) + 762) == 1)
  {
    if (SISearchCtx_METADATA::preIterate(void)::onceToken != -1)
    {
      dispatch_once(&SISearchCtx_METADATA::preIterate(void)::onceToken, &__block_literal_global_29_5640);
    }

    *(this + 111) = SISearchCtx_METADATA::addMatchingAttributeNodes(this, SISearchCtx_METADATA::preIterate(void)::sAttributesToConsider, SISearchCtx_METADATA::preIterate(void)::sAttributeIndexArray, this + 112, 1);
    v184 = *(this + 112);
    if (v184 >= 1)
    {
      for (k = 0; k < v184; ++k)
      {
        v186 = *(*(this + 111) + 8 * k);
        if (*(v186 + 48) == 4)
        {
          v187 = *(v186 + 16);
          if (v187)
          {
            if (*v187)
            {
              convert_value_to_type(0xBu, v187);
              *(*(v186 + 16) + 32) |= 0x400000000uLL;
              v184 = *(this + 112);
            }
          }
        }
      }
    }
  }

  v188 = *(this + 1);
  *(v188 + 392) = *(v188 + 392) + CFAbsoluteTimeGetCurrent() - Current;
  v189 = *(this + 3);
  v190 = *(this + 113);
  kdebug_trace();
  v191 = _MDPerf_QueryLog();
  v192 = *(this + 1);
  if (v192 + 1 >= 2)
  {
    v195 = v191;
    if (os_signpost_enabled(v191))
    {
      v196 = *(v192 + 608);
      v197 = qos_class_self();
      *buf = 134218240;
      *&buf[4] = v196;
      *&buf[12] = 1024;
      *&buf[14] = v197;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v195, OS_SIGNPOST_INTERVAL_END, v192, "Preiterate", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", buf, 0x12u);
    }
  }

  result = gatherIndexInfo(this, 0, 0);
  v194 = *MEMORY[0x1E69E9840];
  return result;
}

void SISearchCtx::common_preIterate(CFAbsoluteTime *this, SISearchCtx *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  this[16] = CFAbsoluteTimeGetCurrent();
  this[18] = 0.0;
  v3 = *(*(this + 3) + 1192);
  if (v3)
  {
    if (*v3 != 1685287992)
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *v3;
        *buf = 136315650;
        *&buf[4] = "db_open_files";
        v19 = 1024;
        v20 = 418;
        v21 = 1024;
        v22 = v14;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v12;
      v15 = __si_assert_copy_extra_332();
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 418, v17);
      free(v16);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v3 + 584))
    {
      sdb2_die(v3, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15082);
    }

    *buf = 0;
    v4 = _fd_acquire_fd(*(v3 + 848), buf);
    if (v4 == -1)
    {
      v7 = 0;
    }

    else
    {
      v5 = v4;
      v6 = malloc_type_malloc(0x18uLL, 0x1020040A122CEF7uLL);
      v7 = v6;
      v6[2] = v5;
      *(v6 + 2) = *buf;
      v8 = *(v3 + 848);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 32), 1u, memory_order_relaxed);
      }

      *v6 = v8;
    }

    v9 = pthread_mutex_lock((v3 + 584));
    v10 = *(v3 + 780) - 1;
    *(v3 + 780) = v10;
    if (!v10)
    {
      db_rwlock_wakeup(v3 + 584, 0, 0);
    }

    pthread_mutex_unlock((v3 + 584));
    if (v9)
    {
      sdb2_die(v3, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15091);
    }

    *(this + 18) = v7;
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t db_query_ann_subindexes(void *a1, _DWORD *a2)
{
  v10 = 0;
  v11 = &v10;
  v13 = 0;
  v12 = 0x2000000000;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __db_query_ann_subindexes_block_invoke;
  v5[3] = &unk_1E8198EF8;
  v5[4] = &v10;
  v5[5] = &v6;
  db_query_tree_apply_block_with_meta(a1, v5, 0);
  *a2 = *(v11 + 6);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3;
}

uint64_t CICleanUpReset(uint64_t result, unint64_t a2)
{
  v2 = &threadData[9 * result];
  v4 = *(v2 + 8);
  v3 = (v2 + 4);
  v5 = v4 > a2;
  if (v4 < a2)
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1618, "td->cleanUpCount >= position", v10);
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

  if (v5)
  {
    v6 = a2;
    v7 = result;
    do
    {
      result = CICleanUpPop(v7);
    }

    while (*v3 > v6);
  }

  return result;
}

uint64_t __db_query_ann_subindexes_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && *(v3 + 24) == 15)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v5 = malloc_type_realloc(*(*(*(a1 + 40) + 8) + 24), 4 * *(*(*(a1 + 32) + 8) + 24), 0x100004052888210uLL);
    }

    else
    {
      v5 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    }

    *(*(*(a1 + 40) + 8) + 24) = v5;
    *(*(*(*(a1 + 40) + 8) + 24) + 4 * *(*(*(a1 + 32) + 8) + 24) - 4) = *(*(a2 + 16) + 80);
  }

  return a2;
}

uint64_t db2_string_table_rdlock(uint64_t a1)
{
  v2 = *(a1 + 880);
  if ((*(a1 + 804) & 0x14) != 0)
  {
    _data_map_rdlock(v2);
    _data_map_rdlock(*(a1 + 888));
    _data_map_rdlock(*(a1 + 896));
    _data_map_rdlock(*(a1 + 904));
    _data_map_rdlock(*(a1 + 912));
  }

  else
  {
    pthread_rwlock_rdlock(*(v2 + 16));
    pthread_rwlock_rdlock(*(*(a1 + 888) + 16));
    pthread_rwlock_rdlock(*(*(a1 + 896) + 16));
    pthread_rwlock_rdlock(*(*(a1 + 904) + 16));
    pthread_rwlock_rdlock(*(*(a1 + 912) + 16));
  }

  v3 = *(a1 + 920);

  return _data_map_rdlock(v3);
}

uint64_t CICleanUpPop(uint64_t result)
{
  v1 = &threadData[9 * result];
  v2 = *(v1 + 8);
  if (!v2)
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1587, "td->cleanUpCount", v9);
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

  v3 = (v2 - 1);
  *(v1 + 8) = v3;
  v4 = v1[6];
  v5 = (v4 + 16 * v3);
  v6 = *v5;
  if (*v5)
  {
    *v5 = 0;
    result = v6(*(v4 + 16 * v3 + 8));
    v4 = v1[6];
    v3 = *(v1 + 8);
  }

  *(v4 + 16 * v3) = 0;
  return result;
}

void findTermIDsFree(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1192);
    if (v2)
    {
      UInt32TrieFree(v2);
    }

    free(*(a1 + 40));
    v3 = *(a1 + 1208);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = v3[2] - v3;
        atomic_fetch_add_explicit(qword_1EDD78CD0, v3 - v3[2], memory_order_relaxed);
        munmap(v3, v5);
        v3 = v4;
      }

      while (v4);
    }

    free(a1);
  }
}

char *CICleanUpThreadLoc()
{
  v0 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v0 = __THREAD_SLOT_KEY;
  }

  v1 = pthread_getspecific(v0);
  if (!v1 || v1 >= 0x801)
  {
    makeThreadId();
    v1 = pthread_getspecific(__THREAD_SLOT_KEY);
  }

  return v1 - 1;
}

_BYTE *_indexEnter(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    v2 = pthread_getspecific(__THREAD_STR_DATA_KEY);
    if (!v2)
    {
      result = malloc_type_malloc(0x80uLL, 0xEAF603C2uLL);
      if (!result)
      {
        return result;
      }

      *result = 0;
      v3 = result;
      pthread_setspecific(__THREAD_STR_DATA_KEY, result);
      v2 = v3;
    }

    return strlcpy(v2, v1 + 15495, 0x80uLL);
  }

  return result;
}

uint64_t storage_reader_init(uint64_t result, uint64_t a2)
{
  v3 = 1;
  *(a2 + 16) = 1;
  *a2 = result;
  if (*(result + 252))
  {
    goto LABEL_4;
  }

  v4 = result;
  if (*(result + 4368))
  {
    v3 = 2;
LABEL_4:
    *(a2 + 20) = v3;
    *(a2 + 8) = 0;
    return result;
  }

  *(a2 + 20) = 0;
  v5 = *(result + 4408);
  pthread_rwlock_rdlock(v5);
  sig = v5[1].__sig;
  if (sig || (pthread_rwlock_unlock(v5), pthread_rwlock_wrlock(v5), (sig = v5[1].__sig) != 0))
  {
    atomic_fetch_add((sig + 8), 1u);
    result = pthread_rwlock_unlock(v5);
    *(a2 + 8) = sig;
  }

  else
  {
    v7 = OSAtomicDequeue(&availableReaders, 0);
    if (!v7)
    {
      v7 = malloc_type_calloc(1uLL, 0x1248uLL, 0x10A0040BDFA2EA3uLL);
    }

    *(v7 + 2) = 2;
    v8 = *(v4 + 248);
    *(v7 + 140) = v8;
    v7[576] = *(v4 + 264);
    *(v7 + 66) = 0;
    *(v7 + 536) = *(v4 + 224);
    v7[565] = 1;
    LODWORD(v9) = v8 - 1;
    if (v8 > 1)
    {
      for (i = 0; i < v9; ++i)
      {
        v11 = *(v4 + 272 + 8 * i);
        if (v11 && *(v11 + 24) && *(v11 + 8))
        {
          v7[i + 12] = 0;
          atomic_fetch_add(v11, 1u);
          *&v7[8 * i + 584] = v11;
        }

        else if (!setupReaderOwnedWindow(i, v7, v4 + 216))
        {
LABEL_35:
          _release_read_window(&availableReaders, v7);
          result = pthread_rwlock_unlock(v5);
          *(a2 + 8) = 0;
          goto LABEL_36;
        }

        LODWORD(v9) = *(v4 + 248) - 1;
      }
    }

    if (*(v4 + 253) == 1)
    {
      v12 = v9 + 73;
      v13 = (v4 + 8 * v9 + 272);
      do
      {
        v14 = *v13;
        if (*v13 && *(v14 + 24) && *(v14 + 8))
        {
          v7[v12 - 61] = 0;
          atomic_fetch_add(v14, 1u);
          *&v7[8 * v12] = v14;
        }

        else if (!setupReaderOwnedWindow(v9, v7, v4 + 216))
        {
          goto LABEL_35;
        }

        LODWORD(v9) = v9 + 1;
        v15 = v12 - 72;
        ++v12;
        ++v13;
      }

      while (v15 < *(v4 + 248));
    }

    else
    {
      v16 = 0;
      v9 = v9;
      do
      {
        if ((v9 << *(v4 + 264)) > *(v4 + 224))
        {
          break;
        }

        if (!setupReaderOwnedWindow(v9, v7, v4 + 216))
        {
          goto LABEL_35;
        }

        ++v16;
        ++v9;
      }

      while (v9 < *(v4 + 248));
      *(v7 + 140) = v16;
    }

    v5[1].__sig = v7;
    result = pthread_rwlock_unlock(v5);
    *(a2 + 8) = v7;
    if (!v7)
    {
LABEL_36:
      *(a2 + 16) = 0;
    }
  }

  return result;
}

atomic_uint *fd_dup(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    pthread_mutex_lock(&g_fd_lock);
    v2 = *(a1 + 80);
    if (v2)
    {
      atomic_fetch_add_explicit(v2 + 8, 1u, memory_order_relaxed);
    }

    else
    {
      pthread_mutex_unlock(&g_fd_lock);
      bzero(v11, 0x400uLL);
      v3 = fd_name(a1, v11, 0x400uLL);
      if (!v3 || (v4 = *(a1 + 44), v4 == -1))
      {
        v2 = 0;
      }

      else
      {
        v5 = v3;
        v6 = *(a1 + 48);
        v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x10300409CE040BCuLL);
        *v2 = -50529037;
        v2[8] = 1;
        v7 = v2[14] & 0xFFFB | (4 * ((*(a1 + 56) >> 2) & 1));
        *(v2 + 28) = v7;
        v2[11] = v4;
        v2[12] = v6;
        *(v2 + 9) = strdup(v5);
        *(v2 + 28) = *(a1 + 56) & 0xFF0 | v7 & 0xF00F;
        v2[10] = -1;
      }

      pthread_mutex_lock(&g_fd_lock);
      v8 = *(a1 + 80);
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 8, 1u, memory_order_relaxed);
        pthread_mutex_unlock(&g_fd_lock);
        fd_release(v2);
        v2 = v8;
        goto LABEL_12;
      }

      if (v2)
      {
        atomic_fetch_add_explicit(v2 + 8, 1u, memory_order_relaxed);
      }

      *(a1 + 80) = v2;
    }

    pthread_mutex_unlock(&g_fd_lock);
  }

  else
  {
    v2 = 0;
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CIOnThreadCleanUpPop(uint64_t result)
{
  v1 = &threadData[9 * result];
  v2 = *(v1 + 14);
  if (!v2)
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1676, "td->onThreadCleanUpCount", v9);
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

  v3 = (v2 - 1);
  *(v1 + 14) = v3;
  v4 = v1[8];
  v5 = (v4 + 16 * v3);
  v6 = *v5;
  if (*v5)
  {
    *v5 = 0;
    result = v6(*(v4 + 16 * v3 + 8));
    v4 = v1[8];
    v3 = *(v1 + 14);
  }

  *(v4 + 16 * v3) = 0;
  return result;
}

void __evaluateFuzzyQueryForIndex_block_invoke(uint64_t a1, uint64_t a2, double a3, int32x4_t a4)
{
  v135 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48) & 0xFFF7;
  if (v6 > 0xF)
  {
    if (v6 == 16)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v107 = *__error();
        v108 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v108, OS_LOG_TYPE_DEFAULT, "This node is always false.", buf, 2u);
        }

        *__error() = v107;
      }

      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v15 = *(a1 + 48);
      AllWithPrototype = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!AllWithPrototype && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      atomic_store(1u, AllWithPrototype);
      AllWithPrototype[1] = -1073627135;
      *(AllWithPrototype + 7) = v15;
      AllWithPrototype[12] = 0;
      *(AllWithPrototype + 5) = -1;
      v17 = *(a2 + 72);
      v16 = (a2 + 72);
      v9 = v17;
      v18 = *(v16 - 7);
      if (v18)
      {
        v19 = (v18 + 56);
      }

      else
      {
        v19 = v16;
      }

      AllWithPrototype[5] = *v19;
      if (v9 == 0.0)
      {
        goto LABEL_43;
      }

      v20 = (v18 + 52);
      if (!v18)
      {
        v20 = v16;
      }

      v11 = *v20;
      if (v18)
      {
        v12 = *(v18 + 56);
        goto LABEL_42;
      }
    }

    else
    {
      if (v6 != 32)
      {
LABEL_180:
        v127 = __si_assert_copy_extra_661(*(*(a1 + 88) + 32));
        v128 = v127;
        v129 = "";
        if (v127)
        {
          v129 = v127;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected type %d", "SIQueryC.c", 6130, "0", v129, *(a2 + 48));
        free(v128);
        v125 = *(*(a1 + 88) + 32);
        goto LABEL_176;
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v109 = *__error();
        v110 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v110, OS_LOG_TYPE_DEFAULT, "This node is always true.", buf, 2u);
        }

        *__error() = v109;
      }

      AllWithPrototype = ContentIndexDocSetCreateAllWithPrototype(*(a1 + 48), a2);
      v8 = (a2 + 72);
      v9 = *(a2 + 72);
      if (v9 == 0.0)
      {
        goto LABEL_43;
      }

      v10 = *(a2 + 16);
      if (v10)
      {
        v8 = (v10 + 52);
      }

      v11 = *v8;
      if (v10)
      {
        v12 = *(v10 + 56);
LABEL_42:
        *(AllWithPrototype + 3) = v9 * v11;
        *(AllWithPrototype + 4) = v9 * v12;
        goto LABEL_43;
      }
    }

    v12 = 0.0;
    goto LABEL_42;
  }

  if (v6 - 1 < 2)
  {
    goto LABEL_43;
  }

  if (v6 != 4)
  {
    goto LABEL_180;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v111 = *__error();
    v112 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v112, OS_LOG_TYPE_DEFAULT, "Factor.", buf, 2u);
    }

    *__error() = v111;
  }

  v13 = *(a2 + 16);
  v14 = *(v13 + 32);
  if ((*(a1 + 96) & 1) == 0 && (v14 & 0x800) == 0)
  {
    if (expensiveNodeCheck(*(a2 + 16)))
    {
      **(a1 + 40) = 1;
      ContentIndexDocSetCreateAllWithPrototype(*(a1 + 48), a2)[13] = 3;
LABEL_43:
      v28 = *MEMORY[0x1E69E9840];
      return;
    }

    goto LABEL_33;
  }

  if ((v14 & 0x800) == 0)
  {
LABEL_33:
    if (dword_1EBF46AD0 >= 5)
    {
      v113 = *__error();
      v114 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v114, OS_LOG_TYPE_DEFAULT, "Metadata or Content.", buf, 2u);
      }

      *__error() = v113;
      v13 = *(a2 + 16);
    }

    v21 = *(v13 + 24);
    if ((v21 - 11) < 2)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v115 = *__error();
        v116 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v116, OS_LOG_TYPE_DEFAULT, "Range query.", buf, 2u);
        }

        *__error() = v115;
        v13 = *(a2 + 16);
      }

      if (*(v13 + 40) != 2)
      {
        v48 = *__error();
        v49 = _SILogForLogForCategory(1);
        v50 = dword_1EBF46AD0 < 3;
        if (os_log_type_enabled(v49, (dword_1EBF46AD0 < 3)))
        {
          v51 = *(*(a2 + 16) + 40);
          *buf = 67109120;
          v132 = v51;
          _os_log_impl(&dword_1C278D000, v49, v50, "*warn* Too few arguments for query: %d", buf, 8u);
        }

        *__error() = v48;
        v53 = *(a2 + 16);
        if (*(v53 + 40) >= 1)
        {
          v54 = 0;
          v55 = dword_1EBF46AD0;
          *&v52 = 67109378;
          do
          {
            if (v55 >= 5)
            {
              v130 = v52;
              v56 = *__error();
              v57 = _SILogForLogForCategory(1);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                v58 = *(*(*(a2 + 16) + 168) + 8 * v54);
                *buf = v130;
                v132 = v54;
                v133 = 2080;
                v134 = v58;
                _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "%d: %s", buf, 0x12u);
              }

              *__error() = v56;
              v55 = dword_1EBF46AD0;
              v53 = *(a2 + 16);
              v52 = v130;
            }

            ++v54;
          }

          while (v54 < *(v53 + 40));
        }

        ContentIndexDocSetCreateEmpty(*(a1 + 48));
        goto LABEL_43;
      }

      v22 = *(a1 + 64);
      v23 = *v22;
      v24 = *(*(a1 + 56) + 8 * *v22);
      if (!v24)
      {
        v25 = __si_assert_copy_extra_661(-1);
        v26 = v25;
        v27 = "";
        if (v25)
        {
          v27 = v25;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 5972, "holder", v27);
        goto LABEL_169;
      }

      goto LABEL_126;
    }

    if (v21 == 15)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v117 = *__error();
        v118 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v118, OS_LOG_TYPE_DEFAULT, "Vector query.", buf, 2u);
        }

        *__error() = v117;
      }

      v24 = *(*(a1 + 56) + 8 * **(a1 + 64));
      if (!v24)
      {
        v119 = __si_assert_copy_extra_661(-1);
        v26 = v119;
        v120 = "";
        if (v119)
        {
          v120 = v119;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 5991, "holder", v120);
LABEL_169:
        free(v26);
        if (__valid_fs(-1))
        {
          v121 = 2989;
        }

        else
        {
          v121 = 3072;
        }

        *v121 = -559038737;
        abort();
      }

      v38 = *(*(v24 + 8) + 72);
      v39 = *(a2 + 40);
      if (v38)
      {
        if (v39 && *v39)
        {
          goto LABEL_125;
        }

        v40 = *(a1 + 72);
        v41 = *(v40 + 40);
        if ((!v41 || !*v41) && v40 != a2)
        {
          atomic_fetch_add((v38 + 32), 1u);
          db_node_set_vector_distance_cache(a2, v38);
          v42 = *(a1 + 72);
          v43 = *(*(a2 + 16) + 80);
          v44 = *(*(v24 + 8) + 72);
          atomic_fetch_add((v44 + 32), 1u);
LABEL_113:
          db_query_set_vector_distance_cache(v42, v43, v44);
          goto LABEL_125;
        }

        atomic_fetch_add((v38 + 32), 1u);
        db_node_set_vector_distance_cache(a2, v38);
        v83 = *(a1 + 72);
        if (v83 != a2)
        {
          has_room = db_query_vector_distance_cache_has_room(*(v83 + 40), v81, v82);
          v43 = *(*(a2 + 16) + 80);
          v44 = *(*(v24 + 8) + 72);
          if (!has_room)
          {
            if (!db_query_has_vector_distance_cache(v83, v43, v44))
            {
              v86 = *__error();
              v87 = _SILogForLogForCategory(1);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1C278D000, v87, OS_LOG_TYPE_DEFAULT, "hit vector distance cache limit", buf, 2u);
              }

              *__error() = v86;
            }

            goto LABEL_125;
          }

          atomic_fetch_add((v44 + 32), 1u);
          v42 = v83;
          goto LABEL_113;
        }
      }

      else
      {
        if (v39 && *v39)
        {
          v72 = *(a2 + 24) + 8 * *v39;
        }

        else
        {
          v73 = *(a1 + 72);
          if (!db_query_vector_distance_cache_has_room(*(v73 + 40), a3, a4))
          {
            if (v39)
            {
              v85 = *v39;
            }

            else
            {
              v85 = 0;
            }

            db_node_set_vector_distance_cache(a2, *(*(v73 + 24) + 8 * v85 - 8));
            goto LABEL_125;
          }

          v74 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200406E8F4065uLL);
          atomic_store(1u, v74 + 8);
          db_node_set_vector_distance_cache(a2, v74);
          v75 = *(a1 + 72);
          if (v75 != a2)
          {
            v76 = *(*(a2 + 16) + 80);
            v77 = *(a2 + 40);
            if (v77)
            {
              v77 = *v77;
            }

            v78 = **(*(a2 + 24) + 8 * v77 - 8);
            atomic_fetch_add((v78 + 32), 1u);
            db_query_set_vector_distance_cache(v75, v76, v78);
          }

          v79 = *(a2 + 40);
          if (v79)
          {
            v79 = *v79;
          }

          v72 = *(a2 + 24) + 8 * v79;
        }

        v80 = **(v72 - 8);
        atomic_fetch_add((v80 + 32), 1u);
        *(*(v24 + 8) + 72) = v80;
      }

LABEL_125:
      v22 = *(a1 + 64);
      v23 = *v22;
LABEL_126:
      *v22 = v23 + 1;
      goto LABEL_127;
    }

    if (**v13 == 42 && v21 == 1 && !*(*v13 + 1))
    {
      v59 = *(v13 + 72);
      if (*v59 == 42 && !v59[1])
      {
        v88 = *__error();
        v89 = _SILogForLogForCategory(1);
        v90 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v89, v90))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v89, v90, "Found *=* query", buf, 2u);
        }

        *__error() = v88;
        ContentIndexDocSetCreateAllWithPrototype(*(a1 + 48), a2);
        v91 = *(a2 + 16);
        (*(*(a1 + 32) + 16))();
        goto LABEL_43;
      }
    }

    v60 = *(v13 + 32);
    v61 = *(a1 + 64);
    v62 = (*(a1 + 56) + 8 * *v61);
    if ((v60 & 0x400000) != 0)
    {
      v24 = ContentIndexDocSetUnionLazy(2, v62, *(a2 + 72));
      v63 = *(a1 + 56);
      v64 = *(a1 + 64);
      v65 = (*v64)++;
      ContentIndexDocSetDispose(*(v63 + 8 * v65));
      v66 = *(a1 + 56);
      v67 = *(a1 + 64);
      v68 = (*v67)++;
      ContentIndexDocSetDispose(*(v66 + 8 * v68));
      v13 = *(a2 + 16);
      v60 = *(v13 + 32);
      goto LABEL_89;
    }

    v24 = *v62;
    if (*v62)
    {
      ++*v61;
LABEL_89:
      if ((v60 & 0x400) != 0 && (v60 & 0x6000000000) != 0)
      {
        if (*(v13 + 96))
        {
          v69 = *__error();
          v70 = _SILogForLogForCategory(1);
          v71 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v70, v71))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v70, v71, "Found custom proximity query", buf, 2u);
          }

          *__error() = v69;
          if ((ContentIndexDocSetSetProximities(v24, *(*(a2 + 16) + 96), *(*(a2 + 16) + 88)) & 1) == 0)
          {
            *(*(a2 + 16) + 32) &= 0xFFFFFF9FFFFFFFFFLL;
          }
        }

        if (*(a1 + 97) == 1)
        {
          *(v24 + 18) = *(a1 + 80);
        }
      }

LABEL_127:
      v92 = *(a2 + 16);
      (*(*(a1 + 32) + 16))();
      v93 = *(a2 + 16);
      v94 = (v93 + 52);
      if (*(v93 + 52) != 0.0 || *(v93 + 56) != 0.0)
      {
        v95 = *v94;
        v96 = *(a2 + 72);
        if (v96 == 0.0)
        {
          v96 = 1.0;
        }

        else
        {
          v95 = v96 * *v94;
        }

        v97 = v96 * *(v93 + 56);
        *(v24 + 3) = v95;
        *(v24 + 4) = v97;
      }

      v98 = *(v93 + 120);
      if (v98)
      {
        if (*(v98 + 48) == 3)
        {
          v99 = *(v98 + 64);
          if (*(v99 + 136))
          {
            if (!v24)
            {
LABEL_140:
              v101 = __si_assert_copy_extra_332();
              v26 = v101;
              v102 = "";
              if (v101)
              {
                v102 = v101;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 1790, "!(!target || target->docIdSetType==Empty || target->docIdSetType==Mute)", v102);
              goto LABEL_169;
            }

            v100 = v24[12];
            if (v100 == 3)
            {
              v103 = *(v24 + 8);
              v104 = *(v99 + 144);
              *(v103 + 128) = *(v99 + 128);
              *(v103 + 144) = v104;
              *(*(v98 + 64) + 128) = 0;
              *(*(v98 + 64) + 144) = 0;
              *(*(v98 + 64) + 136) = 0;
            }

            else if (v100 == 2 || !v100)
            {
              goto LABEL_140;
            }
          }
        }

        ContentIndexDocSetDispose(v98);
        v105 = *(a2 + 16);
        *(v105 + 120) = 0;
        *(v105 + 128) = 0;
      }

      if (v24 && v24[12])
      {
        atomic_fetch_add(v24, 1u);
        v106 = *(a2 + 16);
        *(v106 + 120) = v24;
        *(v106 + 128) = ContentIndexDocSetDispose;
      }

      goto LABEL_43;
    }

    v122 = __si_assert_copy_extra_661(-1);
    v123 = v122;
    v124 = "";
    if (v122)
    {
      v124 = v122;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 6059, "holder", v124);
    free(v123);
    v125 = -1;
LABEL_176:
    if (__valid_fs(v125))
    {
      v126 = 2989;
    }

    else
    {
      v126 = 3072;
    }

    *v126 = -559038737;
    abort();
  }

  v29 = 0;
  **(a1 + 40) = 1;
  v30 = *(a2 + 48);
  if (v30 == 4 && v13)
  {
    v29 = (*(v13 + 24) < 0xFu) & (0x5060u >> *(v13 + 24));
  }

  v31 = *(a1 + 48);
  v32 = (v30 >> 3) & 1;
  v33 = *MEMORY[0x1E69E9AC8];
  if (v29 == v32)
  {
    if (v33 <= 0x97)
    {
      ++sTotal_6326;
    }

    v34 = 1;
    v35 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
    if (v35)
    {
      v36 = v35;
      v37 = 52;
LABEL_66:
      atomic_store(1u, v36);
      v36[1] = -1073627135;
      v36[12] = v34;
      *(v36 + 7) = v31;
      *(v36 + 5) = -1;
      v46 = *(a2 + 16);
      v47 = (v46 + v37);
      if (!v46)
      {
        v47 = (a2 + 72);
      }

      v36[5] = *v47;
      v36[13] = 3;
      goto LABEL_43;
    }
  }

  else
  {
    if (v33 <= 0x97)
    {
      ++sTotal_6326;
    }

    v45 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
    if (v45)
    {
      v36 = v45;
      v34 = 0;
      v37 = 56;
      goto LABEL_66;
    }
  }

  *buf = 0;
  _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  __break(1u);
}

uint64_t db_string_table_rdlock(_DWORD *a1)
{
  if (*a1 != 1685287992)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 478, v5);
    free(v4);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_string_table_rdlock(a1);
}

uint64_t _data_map_ext_rdlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 477))
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
        v8 = "_data_map_ext_rdlock";
        v9 = 1024;
        v10 = 309;
        v11 = 1024;
        v12 = v6;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_rdlock error %d", &v7, 0x18u);
      }

      *__error() = v4;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return lock;
}

BOOL everythingQuery(uint64_t a1)
{
  if (**a1 == 42 && !*(*a1 + 1) && *(a1 + 24) == 1 && (v1 = *(a1 + 72), *v1 == 42))
  {
    return v1[1] == 0;
  }

  else
  {
    return 0;
  }
}

CFStringRef copyQueryString(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFFF7) != 4)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = strlen(*(v1 + 72));
  }

  else
  {
    v3 = 0;
  }

  v5 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v2, v3, 0x8000100u, 0);
  v4 = v5;
  if (v5)
  {
    CFRetain(v5);
    CFRelease(v4);
  }

  return v4;
}

uint64_t db_string_table_unlock(_DWORD *a1)
{
  if (*a1 != 1685287992)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 486, v5);
    free(v4);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_string_table_unlock(a1);
}

uint64_t _data_map_ext_unlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 477))
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
        v8 = "_data_map_ext_unlock";
        v9 = 1024;
        v10 = 319;
        v11 = 1024;
        v12 = v6;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_unlock error %d", &v7, 0x18u);
      }

      *__error() = v4;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t db_read_unlock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = *(a1 + 196) - 1;
  *(a1 + 196) = v3;
  if (!v3)
  {
    db_rwlock_wakeup(a1, 0, 0);
  }

  pthread_mutex_unlock(a1);
  return v2;
}

char *clonePayloadData(uint64_t *a1, int a2, int a3)
{
  v6 = malloc_type_malloc(0x1270uLL, 0x10A0040A4691E0DuLL);
  memcpy(v6, a1, 0x1270uLL);
  bzero(v6 + 40, 0x1160uLL);
  v7 = fd_dup(a1[561]);
  *(v6 + 561) = v7;
  *(v6 + 1128) = a2;
  if (a3)
  {
    *(v6 + 1124) = _fd_acquire_fd(v7, v6 + 563);
  }

  return v6;
}

void storage_reader_free(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      _release_read_window(&availableReaders, v2);
    }

    free(a1);
  }
}

uint64_t my_vm_allocate(void **a1, size_t a2, unsigned int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFF) == 1)
  {
    v6 = a3 & 0xFF000000;
    v7 = mmap(0, a2, 3, 4098, a3 & 0xFF000000, 0);
    *a1 = v7;
    if (v7 == -1)
    {
      v8 = 3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = *__error();
        v10 = __error();
        v11 = strerror(*v10);
        v23 = 136317186;
        v24 = "slab_allocator.h";
        v25 = 1024;
        v26 = 85;
        v27 = 2048;
        v28 = a2;
        v29 = 1024;
        *v30 = 3;
        *&v30[4] = 1024;
        *&v30[6] = 4098;
        *v31 = 1024;
        *&v31[2] = v6;
        *v32 = 1024;
        *&v32[2] = a3;
        *v33 = 1024;
        *&v33[2] = v9;
        *v34 = 2080;
        *&v34[2] = v11;
        v12 = MEMORY[0x1E69E9C10];
        v13 = "%s:%u: mmap failed for addr NULL, len 0x%08lx, prot 0x%04x, flags 0x%04x, fd 0x%04x, flags %u, errno %d(%s)";
        v14 = 68;
LABEL_12:
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, v13, &v23, v14);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

LABEL_6:
    v8 = 0;
    if (HIBYTE(a3) - 240 <= 0x10u)
    {
      atomic_fetch_add_explicit(&tag_sizes[HIBYTE(a3) - 240], a2, memory_order_relaxed);
    }

    goto LABEL_10;
  }

  v15 = *a1;
  v16 = a3 & 0xFF000000;
  v17 = mmap(*a1, a2, 3, 4114, a3 & 0xFF000000, 0);
  *a1 = v17;
  if (v17 != -1)
  {
    goto LABEL_6;
  }

  v8 = 3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = *__error();
    v21 = __error();
    v22 = strerror(*v21);
    v23 = 136317442;
    v24 = "slab_allocator.h";
    v25 = 1024;
    v26 = 92;
    v27 = 2048;
    v28 = v15;
    v29 = 2048;
    *v30 = a2;
    *&v30[8] = 1024;
    *v31 = 3;
    *&v31[4] = 1024;
    *v32 = 4114;
    *&v32[4] = 1024;
    *v33 = v16;
    *&v33[4] = 1024;
    *v34 = a3;
    *&v34[4] = 1024;
    *&v34[6] = v20;
    v35 = 2080;
    v36 = v22;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%s:%u: mmap failed for addr %p, len 0x%08lx, prot 0x%04x, flags 0x%04x, fd 0x%04x, flags %u, errno %d(%s)";
    v14 = 78;
    goto LABEL_12;
  }

LABEL_10:
  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

void _release_read_window(OSQueueHead *__list, void *__new)
{
  if (__new && atomic_fetch_add(__new + 2, 0xFFFFFFFF) == 1)
  {
    for (i = 73; i != 585; ++i)
    {
      v5 = *(__new + i);
      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          storageWindowDestroyImmediate(v5);
        }

        *(__new + i) = 0;
      }
    }

    OSAtomicEnqueue(__list, __new, 0);
  }
}

void PQueue_bulk_TermIdQueue_free(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

uint64_t _TermUpdateSetReadUnlock(uint64_t a1)
{
  pthread_mutex_lock((a1 + 304));
  v2 = *(a1 + 500) - 1;
  *(a1 + 500) = v2;
  if (!v2)
  {
    db_rwlock_wakeup(a1 + 304, 0, 0);
  }

  return pthread_mutex_unlock((a1 + 304));
}

void TermUpdateSetRelease(uint64_t a1)
{
  add = atomic_fetch_add(a1, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    v26 = v1;
    v27 = v2;
    v5 = *(a1 + 32);
    if (v5)
    {
      _Block_release(v5);
    }

    v6 = *(*(a1 + 24) + 24);
    v7 = MEMORY[0x1E69E9AC8];
    while (v6)
    {
      while (1)
      {
        v8 = v6;
        v6 = *v6;
        v9 = v8[2] - v8;
        if (v9 == 0x100000)
        {
          break;
        }

        if (*v7 == v9)
        {
          v10 = node_alloc();
          v10[1] = v8;
          atomic_fetch_add_explicit(qword_1EDD78CB0, -v9, memory_order_relaxed);
          v11 = &stru_1EDD78B00;
          goto LABEL_14;
        }

LABEL_8:
        atomic_fetch_add_explicit(qword_1EDD78CB0, -v9, memory_order_relaxed);
        munmap(v8, v9);
        if (!v6)
        {
          goto LABEL_15;
        }
      }

      atomic_fetch_add_explicit(qword_1EDD78CB0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
      if (atomic_fetch_add(qword_1EDD78B20, 1uLL) > 4)
      {
        atomic_fetch_add(qword_1EDD78B20, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_8;
      }

      v10 = node_alloc();
      v10[1] = v8;
      v11 = &stru_1EDD78B10;
LABEL_14:
      OSAtomicEnqueue(v11, v10, 0);
    }

LABEL_15:
    v12 = *(a1 + 88);
    v13 = 12 * *(a1 + 96);
    atomic_fetch_add_explicit(&qword_1EDD78CA8, -12 * *(a1 + 96), memory_order_relaxed);
    munmap(v12, v13);
    v14 = *(a1 + 240);
    if (v14)
    {
      v15 = 32 * *(a1 + 252);
      atomic_fetch_add_explicit(&qword_1EDD78CC0, -32 * *(a1 + 252), memory_order_relaxed);
      munmap(v14, v15);
    }

    v16 = *(a1 + 256);
    if (v16)
    {
      v17 = 8 * *(a1 + 272);
      atomic_fetch_add_explicit(&qword_1EDD78CC8, -8 * *(a1 + 272), memory_order_relaxed);
      munmap(v16, v17);
    }

    *(a1 + 256) = 0;
    v18 = *(a1 + 64);
    v25[0] = *(a1 + 48);
    v25[1] = v18;
    freeDirectory(v25);
    if (_os_feature_enabled_impl())
    {
      v19 = *(a1 + 80);
      if (v19)
      {
        IVFVectorIndexUpdateSet::~IVFVectorIndexUpdateSet(v19);
        MEMORY[0x1C691FEF0]();
      }
    }

    db_rwlock_destroy((a1 + 304));
    pthread_mutex_destroy((a1 + 520));
    v20 = *(a1 + 232);
    while (v20)
    {
      while (1)
      {
        v21 = v20;
        v20 = *v20;
        v22 = v21[2] - v21;
        if (v22 == 0x100000)
        {
          break;
        }

        if (*v7 == v22)
        {
          v23 = node_alloc();
          v23[1] = v21;
          atomic_fetch_add_explicit(qword_1EDD78CB0, -v22, memory_order_relaxed);
          v24 = &stru_1EDD78B00;
          goto LABEL_31;
        }

LABEL_25:
        atomic_fetch_add_explicit(qword_1EDD78CB0, -v22, memory_order_relaxed);
        munmap(v21, v22);
        if (!v20)
        {
          goto LABEL_32;
        }
      }

      atomic_fetch_add_explicit(qword_1EDD78CB0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
      if (atomic_fetch_add(qword_1EDD78B20, 1uLL) > 4)
      {
        atomic_fetch_add(qword_1EDD78B20, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_25;
      }

      v23 = node_alloc();
      v23[1] = v21;
      v24 = &stru_1EDD78B10;
LABEL_31:
      OSAtomicEnqueue(v24, v23, 0);
    }

LABEL_32:

    free(a1);
  }
}

uint64_t ContentIndexFlattenDocSet(uint64_t result, const __CFSet *a2)
{
  if (*(result + 12) != 0.0)
  {
    return result;
  }

  v2 = result;
  if (*(result + 16) != 0.0 || *(result + 20) != 0.0)
  {
    return result;
  }

  v4 = *(result + 48);
  if (v4 <= 5)
  {
    if (v4 != 4)
    {
      if (v4 == 5 && *(result + 96))
      {
        v5 = 0;
        do
        {
          result = ContentIndexFlattenDocSet(*(*(v2 + 72) + 8 * v5), a2);
          v6 = *(*(v2 + 72) + 8 * v5);
          if (*(v6 + 16) == 0.0 && *(v6 + 12) == 0.0 && *(v6 + 48) == *(v2 + 48) && !*(v6 + 8))
          {
            *(v2 + 52) |= *(v6 + 52);
            result = flattenChildrenAtIndex(v2, v5, a2);
            v5 += result;
          }

          ++v5;
        }

        while (v5 < *(v2 + 96));
      }

      return result;
    }

    if (!*(result + 96))
    {
      return result;
    }

    v9 = 0;
    while (1)
    {
      result = ContentIndexFlattenDocSet(*(*(v2 + 72) + 8 * v9), a2);
      v13 = *(*(v2 + 72) + 8 * v9);
      if (*(v13 + 16) != 0.0 || *(v13 + 12) != 0.0 || *(v13 + 48) != *(v2 + 48) || *(v13 + 8))
      {
        goto LABEL_39;
      }

      v14 = *(v13 + 52);
      v15 = *(v2 + 52);
      if (v14 != v15)
      {
        break;
      }

LABEL_38:
      result = flattenChildrenAtIndex(v2, v9, a2);
      v9 += result;
LABEL_39:
      if (++v9 >= *(v2 + 96))
      {
        return result;
      }
    }

    if (v14 != 1 || v15 == 1)
    {
      if (v15 == 1)
      {
        goto LABEL_38;
      }

      if (v14 == 3)
      {
        if (v9)
        {
          v12 = 1;
        }

        else
        {
          v12 = 3;
        }

        goto LABEL_37;
      }

      if (v14)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15 == 3;
      }

      if (!v17)
      {
        goto LABEL_38;
      }
    }

    v12 = 1;
LABEL_37:
    *(v2 + 52) = v12;
    goto LABEL_38;
  }

  if (v4 == 7)
  {
    result = ContentIndexFlattenDocSet(**(result + 72), a2);
    if (*(v2 + 96) >= 2u)
    {
      v10 = 1;
      do
      {
        result = ContentIndexFlattenDocSet(*(*(v2 + 72) + 8 * v10), a2);
        v11 = *(*(v2 + 72) + 8 * v10);
        if (*(v11 + 16) == 0.0 && *(v11 + 12) == 0.0 && *(v11 + 48) == 4 && !*(v11 + 8))
        {
          *(v2 + 52) |= *(v11 + 52);
          result = flattenChildrenAtIndex(v2, v10, a2);
          v10 += result;
        }

        ++v10;
      }

      while (v10 < *(v2 + 96));
    }
  }

  else if (v4 == 6 && *(result + 96))
  {
    v7 = 0;
    do
    {
      result = ContentIndexFlattenDocSet(*(*(v2 + 72) + 8 * v7), a2);
      v8 = *(*(v2 + 72) + 8 * v7);
      if (*(v8 + 16) == 0.0 && *(v8 + 12) == 0.0 && *(v8 + 48) == 4 && !*(v8 + 8))
      {
        *(v2 + 52) |= *(v8 + 52);
        result = flattenChildrenAtIndex(v2, v7, a2);
        v7 += result;
      }

      ++v7;
    }

    while (v7 < *(v2 + 96));
  }

  return result;
}

void _ContentIndexOptimizeDocSet(uint64_t a1, uint64_t *a2, uint64_t a3, const __CFSet *a4)
{
  v20 = a1;
  if (!a1)
  {
    return;
  }

  v8 = *(a1 + 48);
  if (v8 <= 5)
  {
    if (v8 != 4)
    {
      if (v8 != 5)
      {
        return;
      }

      goto LABEL_13;
    }

LABEL_17:
    if (*(a1 + 96))
    {
      v15 = 0;
      do
      {
        _ContentIndexOptimizeDocSet(*(*(a1 + 72) + 8 * v15++), a2, a3, a4);
      }

      while (v15 < *(a1 + 96));
    }

    return;
  }

  switch(v8)
  {
    case 6:
      goto LABEL_17;
    case 7:
LABEL_13:
      if (*(a1 + 96))
      {
        v14 = 0;
        do
        {
          v18[0] = a1;
          v18[2] = a2;
          v18[1] = v14;
          _ContentIndexOptimizeDocSet(*(*(a1 + 72) + 8 * v14++), v18, (a3 + 1), a4);
        }

        while (v14 < *(a1 + 96));
      }

      return;
    case 9:
      if ((*(a1 + 128) & 0x7FFFFFFF) != 0)
      {
        LODWORD(v18[0]) = 0;
        v19 = 0;
        v9 = extractConstrainingDocSets(a3, a2, a4, v18, &v19);
        if (LODWORD(v18[0]))
        {
          v10 = *(a1 + 128);
          if (v19)
          {
            if ((v10 & 0x80000000) == 0)
            {
              v11 = 5;
              v12 = 7;
              v13 = 1;
LABEL_34:
              recomputeConstraints(v9, v18[0], &v20, v11, 4, v12, v13, 1);
              return;
            }

            v11 = 4;
            v12 = 5;
          }

          else
          {
            if ((v10 & 0x80000000) == 0)
            {
              recomputeConstraints(v9, v18[0], &v20, 5, 5, 4, 0, 0);
              return;
            }

            v11 = 4;
            v12 = 7;
          }

          v13 = 0;
          goto LABEL_34;
        }

        if ((*(a1 + 128) & 0x7FFFFFFF) != 0)
        {
          v17 = 0;
          do
          {
            ContentIndexDocSetDispose(*(*(a1 + 120) + 8 * v17++));
          }

          while (v17 < (*(a1 + 128) & 0x7FFFFFFFu));
        }

        free(*(a1 + 120));
        *(a1 + 120) = -1;
        *(a1 + 128) &= 0x80000000;
      }

      else if (*(a1 + 120) != -1)
      {
        LODWORD(v18[0]) = 0;
        v19 = 0;
        v16 = extractConstrainingDocSets(a3, a2, a4, v18, &v19);
        if (LODWORD(v18[0]))
        {
          *(a1 + 128) = v18[0] & 0x7FFFFFFF | (v19 << 31);
          *(a1 + 120) = v16;
        }

        else
        {
          *(a1 + 120) = -1;
        }
      }

      break;
  }
}

uint64_t CICleanUpClearItem(uint64_t result, unint64_t a2)
{
  v2 = &threadData[9 * result];
  if (*(v2 + 8) < a2)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1601, "td->cleanUpCount >= position", v6);
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

  v3 = (v2[6] + 16 * a2);
  *v3 = 0;
  v3[1] = 0;
  return result;
}

void ___ZN11SISearchCtx20executeSearchContextEPS_b_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = *(*a2 + 24);
    if (v3)
    {
      v4 = *(v3 + 1192);
      if (v4)
      {
        if ((*(v4 + 4) & 0x40) != 0)
        {
          si_makeUnavailable(v3, 22, 2, 22, "query");
        }
      }
    }
  }
}

uint64_t SILogBulkDeleteEvent(uint64_t a1, const __CFString *a2, const __CFString *a3, int a4, unsigned int a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 1632));
  JournalFd = getJournalFd(a1, 0, 0);
  if (!JournalFd)
  {
    goto LABEL_22;
  }

  v13 = JournalFd;
  v14 = *(a1 + 2104);
  if (v14)
  {
    if (*(v14 + 8) == v13)
    {
      goto LABEL_12;
    }

    if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v14, 1);
    }

    *(a1 + 2104) = 0;
  }

  v15 = *(a1 + 60);
  if (*(a1 + 2072) == 1 && (*(a1 + 829) & 0x10) == 0 && _os_feature_enabled_impl())
  {
    _os_feature_enabled_impl();
  }

  *(a1 + 2104) = si_mobile_journal_create(a1);
LABEL_12:
  add_explicit = atomic_fetch_add_explicit((a1 + 2128), 1uLL, memory_order_relaxed);
  if (!si_clientstatesandmeta_update(a1, add_explicit + 1, 0))
  {
LABEL_22:
    v18 = 0;
    goto LABEL_56;
  }

  bzero(buffer, 0x400uLL);
  if (a2)
  {
    if (!CFStringGetCString(a2, buffer, 1024, 0x8000100u))
    {
      goto LABEL_53;
    }

    LOWORD(a2) = strlen(buffer) + 1;
  }

  bzero(__s, 0x400uLL);
  if (!a3)
  {
    goto LABEL_19;
  }

  if (CFStringGetCString(a3, __s, 1024, 0x8000100u))
  {
    LOWORD(a3) = strlen(__s) + 1;
LABEL_19:
    memset(v32, 0, sizeof(v32));
    if (add_explicit)
    {
      if (add_explicit > 0x7F)
      {
        if (add_explicit >> 14)
        {
          if (add_explicit >> 21)
          {
            if (add_explicit >> 28)
            {
              if (add_explicit >> 35)
              {
                if (add_explicit >> 42)
                {
                  if (add_explicit >> 49)
                  {
                    if (HIBYTE(add_explicit))
                    {
                      LOBYTE(v32[0]) = -1;
                      *(v32 + 1) = add_explicit;
                      v17 = 9;
                    }

                    else
                    {
                      LOBYTE(v32[0]) = -2;
                      BYTE1(v32[0]) = BYTE6(add_explicit);
                      BYTE2(v32[0]) = BYTE5(add_explicit);
                      BYTE3(v32[0]) = BYTE4(add_explicit);
                      BYTE4(v32[0]) = BYTE3(add_explicit);
                      BYTE5(v32[0]) = BYTE2(add_explicit);
                      BYTE6(v32[0]) = BYTE1(add_explicit);
                      v17 = 8;
                      BYTE7(v32[0]) = add_explicit;
                    }
                  }

                  else
                  {
                    LOBYTE(v32[0]) = BYTE6(add_explicit) | 0xFC;
                    BYTE1(v32[0]) = BYTE5(add_explicit);
                    BYTE2(v32[0]) = BYTE4(add_explicit);
                    BYTE3(v32[0]) = BYTE3(add_explicit);
                    BYTE4(v32[0]) = BYTE2(add_explicit);
                    BYTE5(v32[0]) = BYTE1(add_explicit);
                    v17 = 7;
                    BYTE6(v32[0]) = add_explicit;
                  }
                }

                else
                {
                  LOBYTE(v32[0]) = BYTE5(add_explicit) | 0xF8;
                  BYTE1(v32[0]) = BYTE4(add_explicit);
                  BYTE2(v32[0]) = BYTE3(add_explicit);
                  BYTE3(v32[0]) = BYTE2(add_explicit);
                  BYTE4(v32[0]) = BYTE1(add_explicit);
                  BYTE5(v32[0]) = add_explicit;
                  v17 = 6;
                }
              }

              else
              {
                LOBYTE(v32[0]) = BYTE4(add_explicit) | 0xF0;
                BYTE1(v32[0]) = BYTE3(add_explicit);
                BYTE2(v32[0]) = BYTE2(add_explicit);
                BYTE3(v32[0]) = BYTE1(add_explicit);
                BYTE4(v32[0]) = add_explicit;
                v17 = 5;
              }
            }

            else
            {
              LOBYTE(v32[0]) = BYTE3(add_explicit) | 0xE0;
              BYTE1(v32[0]) = BYTE2(add_explicit);
              BYTE2(v32[0]) = BYTE1(add_explicit);
              BYTE3(v32[0]) = add_explicit;
              v17 = 4;
            }
          }

          else
          {
            LOBYTE(v32[0]) = BYTE2(add_explicit) | 0xC0;
            BYTE1(v32[0]) = BYTE1(add_explicit);
            BYTE2(v32[0]) = add_explicit;
            v17 = 3;
          }
        }

        else
        {
          LOBYTE(v32[0]) = BYTE1(add_explicit) | 0x80;
          BYTE1(v32[0]) = add_explicit;
          v17 = 2;
        }
      }

      else
      {
        LOBYTE(v32[0]) = add_explicit;
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }

    v26[2] = 0;
    v26[3] = a4;
    v27 = a2;
    v28 = a3;
    v29 = a5;
    v26[0] = -259064083;
    v26[1] = a2 + a3 + a5 + v17 + 4;
    v19 = fd_lseek(v13, 0, 2);
    if (v19 == -1)
    {
      a5 = 22;
    }

    else
    {
      v20 = v19;
      if (fd_write(v13, v26, 0x18uLL) != -1 && (!add_explicit || fd_write(v13, v32, v17) != -1) && (!a2 || fd_write(v13, buffer, a2) != -1) && (!a3 || fd_write(v13, __s, a3) != -1) && (!a5 || fd_write(v13, a6, a5) != -1))
      {
        v18 = 1;
        goto LABEL_56;
      }

      a5 = *__error();
      fd_truncate(v13, v20);
      *__error() = a5;
    }
  }

LABEL_53:
  v21 = *__error();
  v22 = _SILogForLogForCategory(4);
  v23 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v22, v23))
  {
    *buf = 67109120;
    v31 = a5;
    _os_log_impl(&dword_1C278D000, v22, v23, "Error writing bulk delete to log file: %d", buf, 8u);
  }

  v18 = 0;
  *__error() = v21;
LABEL_56:
  pthread_mutex_unlock((a1 + 1632));
  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

void **slab_cleanup(void **result)
{
  if ((result - 243) > 4)
  {
    if (result == 250)
    {
      v4 = MEMORY[0x1E69E9AC8];
      while (1)
      {
        v5 = OSAtomicDequeue(&stru_1EDD78D30, 0);
        if (!v5)
        {
          break;
        }

        v6 = v5;
        munmap(v5[1], *v4);
        OSAtomicEnqueue(&slab_cache, v6, 0);
      }

      while (1)
      {
        result = OSAtomicDequeue(&stru_1EDD78D40, 0);
        if (!result)
        {
          break;
        }

        v8 = result;
        atomic_fetch_add(qword_1EDD78D50, 0xFFFFFFFFFFFFFFFFLL);
        munmap(result[1], 0x100000uLL);
        OSAtomicEnqueue(&slab_cache, v8, 0);
      }
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9AC8];
    while (1)
    {
      v2 = OSAtomicDequeue(&stru_1EDD78B00, 0);
      if (!v2)
      {
        break;
      }

      v3 = v2;
      munmap(v2[1], *v1);
      OSAtomicEnqueue(&slab_cache, v3, 0);
    }

    while (1)
    {
      result = OSAtomicDequeue(&stru_1EDD78B10, 0);
      if (!result)
      {
        break;
      }

      v7 = result;
      atomic_fetch_add(qword_1EDD78B20, 0xFFFFFFFFFFFFFFFFLL);
      munmap(result[1], 0x100000uLL);
      OSAtomicEnqueue(&slab_cache, v7, 0);
    }
  }

  return result;
}

uint64_t SISetCodedAttributes(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFData *a4, const __CFData *a5, const __CFData *a6, const __CFData *a7, const __CFData *a8, CFStringRef theString, int a10, void (*a11)(uint64_t, void), uint64_t a12)
{
  v64 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 6972);
  if (!v17 && *(a1 + 1288) == 1)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "SISetCodedAttributes failed: index is read-only", buf, 2u);
    }

    v20 = 0;
    *__error() = v18;
    goto LABEL_62;
  }

  v21 = a12;
  if (a8)
  {
    pthread_rwlock_wrlock((a1 + 80));
    clientstates_dict = si_get_clientstates_dict(a1, a2);
    v23 = *MEMORY[0x1E695E480];
    BytePtr = CFDataGetBytePtr(a8);
    Length = CFDataGetLength(a8);
    v26 = CFDataCreate(v23, BytePtr, Length);
    if (v26)
    {
      v27 = v26;
      if (CFDataGetBytePtr(v26) && CFDataGetLength(v27) >= 1)
      {
        CFDictionarySetValue(clientstates_dict, theString, v27);
      }

      else
      {
        CFDictionaryRemoveValue(clientstates_dict, theString);
      }

      CFRelease(v27);
    }

    else
    {
      CFDictionaryRemoveValue(clientstates_dict, theString);
    }

    pthread_rwlock_unlock((a1 + 80));
    v28 = *__error();
    v29 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = a2;
      *&buf[12] = 2112;
      *&buf[14] = theString;
      *&buf[22] = 2112;
      *&buf[24] = a8;
      _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "Cached client state %@ %@ %@", buf, 0x20u);
    }

    *__error() = v28;
    v17 = *(a1 + 6972);
  }

  memset(buf, 0, sizeof(buf));
  if (v17 || (pthread_mutex_lock((a1 + 1320)), *(a1 + 6972)))
  {
    if (*(a1 + 6968))
    {
      goto LABEL_20;
    }

LABEL_35:
    v30 = 0;
    goto LABEL_36;
  }

  v41 = *(a1 + 1152);
  if (!v41 || (a10 & 1) == 0 && !si_peek_queue(v41, a2, 0, 0))
  {
    goto LABEL_35;
  }

LABEL_20:
  v30 = 1;
  if (!mobile_journal_coded(a1, a2, a3, a4, a5, a6, a7, a8, theString, a10, buf, 1u))
  {
LABEL_36:
    v20 = 0;
    goto LABEL_37;
  }

  v57 = v21;
  v31 = *__error();
  v32 = _SILogForLogForCategory(4);
  v33 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v32, v33))
  {
    *v61 = 138412290;
    v62 = a2;
    _os_log_impl(&dword_1C278D000, v32, v33, "Defer work for %@", v61, 0xCu);
  }

  *__error() = v31;
  if (*(a1 + 6964))
  {
    v34 = *__error();
    v35 = _SILogForLogForCategory(4);
    v36 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v35, v36))
    {
      *v61 = 138412290;
      v62 = a2;
      _os_log_impl(&dword_1C278D000, v35, v36, "Only journaling while locked on defer queue for %@", v61, 0xCu);
    }

    *__error() = v34;
    if (*(a1 + 6972) || (v37 = *(a1 + 6964), (v37 & 4) != 0))
    {
      v40 = *buf;
      v21 = v57;
      if (*buf && atomic_fetch_add(*buf, 0xFFFFFFFF) == 1)
      {
        v30 = 1;
        _si_mobile_journal_finalize(v40, 1);
      }

      else
      {
        v30 = 1;
      }

      v20 = 1;
    }

    else
    {
      *(a1 + 6964) = v37 | 4;
      v38 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      v39 = *buf;
      *v38 = a1;
      v38[1] = v39;
      v30 = 1;
      atomic_fetch_add((a1 + 6888), 1u);
      si_enqueue_barrier_with_qos(*(a1 + 1152), 0, playBackMobileJournal, v38);
      v20 = 1;
      v21 = v57;
    }
  }

  else
  {
    v21 = v57;
    enqueueForProcessing(a2, &a11, v57, a10, buf, a1, 0x12u);
    v30 = 1;
    v20 = 1;
  }

LABEL_37:
  if (*(a1 + 6972))
  {
    if (v30)
    {
      goto LABEL_58;
    }
  }

  else
  {
    pthread_mutex_unlock((a1 + 1320));
    if (v30)
    {
      goto LABEL_58;
    }
  }

  if (mobile_journal_coded(a1, a2, a3, a4, a5, a6, a7, a8, theString, a10, buf, 0))
  {
    v42 = *__error();
    v43 = _SILogForLogForCategory(4);
    v44 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v43, v44))
    {
      *v61 = 138412290;
      v62 = a2;
      _os_log_impl(&dword_1C278D000, v43, v44, "Enqueue work for %@", v61, 0xCu);
    }

    *__error() = v42;
    if (*(a1 + 6964))
    {
      v45 = *__error();
      v46 = _SILogForLogForCategory(4);
      v47 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v46, v47))
      {
        *v61 = 138412290;
        v62 = a2;
        _os_log_impl(&dword_1C278D000, v46, v47, "Only journaling while locked for %@", v61, 0xCu);
      }

      *__error() = v45;
      if (!*(a1 + 6972))
      {
        v48 = *(a1 + 6964);
        if ((v48 & 2) == 0)
        {
          *(a1 + 6964) = v48 | 2;
          v49 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          v50 = *buf;
          *v49 = a1;
          v49[1] = v50;
          v20 = 1;
          atomic_fetch_add((a1 + 6888), 1u);
          si_enqueue_barrier_with_qos(*(a1 + 1048), 0, playBackMobileJournal, v49);
          goto LABEL_58;
        }
      }

      v51 = *buf;
      if (*buf && atomic_fetch_add(*buf, 0xFFFFFFFF) == 1)
      {
        v20 = 1;
        _si_mobile_journal_finalize(v51, 1);
        goto LABEL_58;
      }
    }

    else
    {
      enqueueForProcessing(a2, &a11, v21, a10, buf, a1, 5u);
    }

    v20 = 1;
  }

LABEL_58:
  if (v20)
  {
    v52 = a11;
    if (a11)
    {
      if (dword_1EBF46ADC >= 5)
      {
        v55 = *__error();
        v56 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 138412290;
          v62 = a2;
          _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "Callback for %@", v61, 0xCu);
        }

        *__error() = v55;
      }

      v52(v21, 0);
      v20 = 1;
    }
  }

LABEL_62:
  v53 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t mobile_journal_coded(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFData *a4, const __CFData *a5, const __CFData *a6, const __CFData *a7, const __CFData *a8, CFStringRef theString, int a10, uint64_t a11, unsigned __int8 a12)
{
  v92 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 1632));
  if (!a12)
  {
    JournalFd = getJournalFd(a1, 0, 0);
    if (JournalFd)
    {
      v64 = a7;
      v21 = *(a1 + 2104);
      if (v21)
      {
        if (*(v21 + 8) == JournalFd)
        {
          goto LABEL_26;
        }

        if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
        {
          _si_mobile_journal_finalize(v21, 1);
        }

        *(a1 + 2104) = 0;
      }

      v24 = *(a1 + 60);
      if (*(a1 + 2072) == 1 && (*(a1 + 829) & 0x10) == 0 && _os_feature_enabled_impl())
      {
        _os_feature_enabled_impl();
      }

      v21 = si_mobile_journal_create(a1);
      *(a1 + 2104) = v21;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

LABEL_22:
    v21 = 0;
    goto LABEL_96;
  }

  DeferJournalFd = getDeferJournalFd(a1, 0);
  if (!DeferJournalFd)
  {
    goto LABEL_22;
  }

  v64 = a7;
  v21 = *(a1 + 2112);
  if (v21)
  {
    if (*(v21 + 8) == DeferJournalFd)
    {
      goto LABEL_26;
    }

    if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v21, 1);
    }

    *(a1 + 2112) = 0;
  }

  v22 = *(a1 + 60);
  if (*(a1 + 2072) == 1 && (*(a1 + 829) & 0x10) == 0 && _os_feature_enabled_impl())
  {
    _os_feature_enabled_impl();
  }

  v21 = si_mobile_journal_create(a1);
  *(a1 + 2112) = v21;
  if (!v21)
  {
LABEL_24:
    theData = a6;
    goto LABEL_27;
  }

LABEL_26:
  theData = a6;
  atomic_fetch_add(v21, 1u);
LABEL_27:
  add_explicit = atomic_fetch_add_explicit((a1 + 2128), 1uLL, memory_order_relaxed);
  if (si_clientstatesandmeta_update(a1, add_explicit + 1, a12))
  {
    v26 = *(a1 + 1184);
    bzero(buffer, 0x400uLL);
    bzero(v90, 0x400uLL);
    bzero(__s, 0x400uLL);
    if (!a2 || !CFStringGetCString(a2, buffer, 1024, 0x8000100u) || a8 && (!theString || !CFStringGetCString(theString, __s, 1024, 0x8000100u)) || a3 && !CFStringGetCString(a3, v90, 1024, 0x8000100u))
    {
      goto LABEL_92;
    }

    v63 = v26;
    v27 = strlen(buffer);
    v28 = 0;
    if (a8 && theString)
    {
      v28 = strlen(__s) + 1;
    }

    v29 = v27 + 1;
    v30 = a3 ? strlen(v90) + 1 : 0;
    v80 = v29 & 0x3FF | (v30 << 10);
    v81 = v28 & 0x7FFF;
    v83 = 0;
    v84 = 0;
    *buf = 0u;
    v88 = 0u;
    if (add_explicit)
    {
      if (add_explicit > 0x7F)
      {
        if (add_explicit >> 14)
        {
          if (add_explicit >> 21)
          {
            if (add_explicit >> 28)
            {
              if (add_explicit >> 35)
              {
                if (add_explicit >> 42)
                {
                  if (add_explicit >> 49)
                  {
                    if (HIBYTE(add_explicit))
                    {
                      buf[0] = -1;
                      *&buf[1] = add_explicit;
                      v31 = 9;
                    }

                    else
                    {
                      buf[0] = -2;
                      buf[1] = BYTE6(add_explicit);
                      buf[2] = BYTE5(add_explicit);
                      buf[3] = BYTE4(add_explicit);
                      buf[4] = BYTE3(add_explicit);
                      buf[5] = BYTE2(add_explicit);
                      buf[6] = BYTE1(add_explicit);
                      v31 = 8;
                      buf[7] = add_explicit;
                    }
                  }

                  else
                  {
                    buf[0] = BYTE6(add_explicit) | 0xFC;
                    buf[1] = BYTE5(add_explicit);
                    buf[2] = BYTE4(add_explicit);
                    buf[3] = BYTE3(add_explicit);
                    buf[4] = BYTE2(add_explicit);
                    buf[5] = BYTE1(add_explicit);
                    v31 = 7;
                    buf[6] = add_explicit;
                  }
                }

                else
                {
                  buf[0] = BYTE5(add_explicit) | 0xF8;
                  buf[1] = BYTE4(add_explicit);
                  buf[2] = BYTE3(add_explicit);
                  buf[3] = BYTE2(add_explicit);
                  buf[4] = BYTE1(add_explicit);
                  buf[5] = add_explicit;
                  v31 = 6;
                }
              }

              else
              {
                buf[0] = BYTE4(add_explicit) | 0xF0;
                buf[1] = BYTE3(add_explicit);
                buf[2] = BYTE2(add_explicit);
                buf[3] = BYTE1(add_explicit);
                buf[4] = add_explicit;
                v31 = 5;
              }
            }

            else
            {
              buf[0] = BYTE3(add_explicit) | 0xE0;
              buf[1] = BYTE2(add_explicit);
              buf[2] = BYTE1(add_explicit);
              buf[3] = add_explicit;
              v31 = 4;
            }
          }

          else
          {
            buf[0] = BYTE2(add_explicit) | 0xC0;
            buf[1] = BYTE1(add_explicit);
            buf[2] = add_explicit;
            v31 = 3;
          }
        }

        else
        {
          buf[0] = BYTE1(add_explicit) | 0x80;
          buf[1] = add_explicit;
          v31 = 2;
        }
      }

      else
      {
        buf[0] = add_explicit;
        v31 = 1;
      }

      v32 = adler32(0, buf, v31);
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    v33 = adler32(v32, buffer, v29);
    v34 = adler32(v33, v90, v30);
    v78 = 0;
    v79 = adler32(v34, __s, v28);
    if (!checkSumCFData(a4, &v79, &v78))
    {
      goto LABEL_92;
    }

    v82 = 2 * v78;
    if (!checkSumCFData(a5, &v79, &v83) || !checkSumCFData(theData, &v79, &v83 + 1) || _os_feature_enabled_impl() && !checkSumCFData(v64, &v79, &v84))
    {
      goto LABEL_92;
    }

    if (!checkSumCFData(a8, &v79, &v84 + 1))
    {
      goto LABEL_92;
    }

    v35 = v80;
    v36 = add_explicit ? -260112659 : -262275347;
    v72 = v79;
    v53 = v82 >> 1;
    v61 = v80 & 0x3FF;
    v56 = v80 >> 10;
    v57 = v82;
    v73 = v80;
    v58 = v83;
    v59 = v81 & 0x7FFF;
    v74 = v81 & 0x7FFF;
    v75 = v82 & 0xFFFFFFFE | a10 & 1;
    v76 = v83;
    v54 = HIDWORD(v84);
    v55 = HIDWORD(v83);
    v77 = v84;
    v70 = v36;
    v71 = v31 + (v82 >> 1) + (v80 & 0x3FF) + v56 + (v81 & 0x7FFF) + v83 + HIDWORD(v83) + v84 + HIDWORD(v84) + 24;
    v51 = v71;
    v52 = v84;
    v37 = *(v21 + 8);
    v38 = fd_lseek(v37, 0, 2);
    if (v38 == -1)
    {
LABEL_92:
      v46 = 22;
LABEL_93:
      v47 = *__error();
      v48 = _SILogForLogForCategory(4);
      v49 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v48, v49))
      {
        *v85 = 67109120;
        v86 = v46;
        _os_log_impl(&dword_1C278D000, v48, v49, "Error writing to log file: %d", v85, 8u);
      }

      *__error() = v47;
      goto LABEL_96;
    }

    v60 = v38;
    v62 = v37;
    if (fd_write(v37, &v70, 0x24uLL) != -1 && (!v31 || fd_write(v37, buf, v31) != -1) && fd_write(v37, buffer, v61) != -1 && (v35 < 0x400 || fd_write(v37, v90, v56) != -1) && (!v59 || fd_write(v37, __s, v59) != -1))
    {
      if (v57 < 2 || (v39 = CFDataGetBytePtr(a4), fd_write(v37, v39, v53) != -1))
      {
        if (!v58 || (v40 = CFDataGetBytePtr(a5), fd_write(v37, v40, v58) != -1))
        {
          v41 = (2 * a10) & 4;
          if (v55)
          {
            BytePtr = CFDataGetBytePtr(theData);
            if (fd_write(v62, BytePtr, v55) == -1)
            {
              goto LABEL_101;
            }

            v41 |= 1u;
          }

          if (!v52)
          {
LABEL_89:
            if (!v54 || (v44 = CFDataGetBytePtr(a8), fd_write(v62, v44, v54) != -1))
            {
              *&v66 = add_explicit;
              *(&v66 + 1) = v60;
              v67 = v51 + 12;
              v68 = bundleIdHash(buffer, v29);
              v69 = v41;
              _mobile_journal_update_toc(v21, &v66, v63);
              pthread_mutex_unlock((a1 + 1632));
              *(a11 + 8) = v60;
              *(a11 + 16) = v51 + 12;
              *a11 = v21;
              *(a11 + 24) = add_explicit != 0;
              result = 1;
              goto LABEL_100;
            }

            goto LABEL_101;
          }

          v43 = CFDataGetBytePtr(v64);
          if (fd_write(v62, v43, v52) != -1)
          {
            v41 |= 2u;
            goto LABEL_89;
          }
        }
      }
    }

LABEL_101:
    v46 = *__error();
    fd_truncate(v62, v60);
    *__error() = v46;
    goto LABEL_93;
  }

LABEL_96:
  pthread_mutex_unlock((a1 + 1632));
  if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v21, 1);
  }

  result = 0;
LABEL_100:
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void SILogActivity(os_unfair_lock_s *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13[0] = 0;
  v13[1] = &a9;
  v10 = vasprintf(v13, a2, &a9);
  v11 = v13[0];
  if (v10 && v13[0])
  {
    os_unfair_lock_lock(a1 + 556);
    v12 = strlen(v11);
    activityJournalWrite(&a1[548], 57, v11, v12 + 1);
    os_unfair_lock_unlock(a1 + 556);
    v11 = v13[0];
  }

  free(v11);
}

uint64_t __apply_demorgans_law_block_invoke(uint64_t a1, uint64_t a2)
{
  result = a2;
  v3 = *(a2 + 48);
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v4 = 2;
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      v4 = 1;
    }

    goto LABEL_13;
  }

  if (v3 != 4)
  {
    if (v3 == 16)
    {
      v4 = 32;
    }

    else
    {
      if (v3 != 32)
      {
        return result;
      }

      v4 = 16;
    }

LABEL_13:
    *(a2 + 48) = v4;
    return result;
  }

  v5 = *(a2 + 16);
  v6 = *(v5 + 24);
  if ((v6 - 16) >= 0xFFFFFFF1)
  {
    *(v5 + 24) = dword_1C2C005C0[v6];
  }

  else
  {
    *(v5 + 24) = 0;
  }

  return result;
}

uint64_t negateQuery(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2 > 6)
    {
      if (v2 > 11)
      {
        switch(v2)
        {
          case 12:
            v3 = 11;
            goto LABEL_34;
          case 13:
            v3 = 14;
            goto LABEL_34;
          case 14:
            v3 = 13;
            goto LABEL_34;
        }
      }

      else
      {
        switch(v2)
        {
          case 7:
            v3 = 4;
            goto LABEL_34;
          case 8:
            v3 = 3;
            goto LABEL_34;
          case 11:
            v3 = 12;
            goto LABEL_34;
        }
      }
    }

    else
    {
      if (v2 > 3)
      {
        if (v2 == 4)
        {
          v3 = 7;
        }

        else if (v2 == 5)
        {
          v3 = 1;
        }

        else
        {
          v3 = 2;
        }

        goto LABEL_34;
      }

      switch(v2)
      {
        case 1:
          v3 = 5;
          goto LABEL_34;
        case 2:
          v3 = 6;
          goto LABEL_34;
        case 3:
          v3 = 8;
LABEL_34:
          *(v1 + 24) = v3;
          return result;
      }
    }
  }

  v4 = *(result + 48);
  if (v4 == 16)
  {
    v5 = 32;
  }

  else if (v4 == 32)
  {
    v5 = 16;
  }

  else
  {
    v5 = v4 ^ 8;
  }

  *(result + 48) = v5;
  return result;
}

uint64_t db_get_id_for_field_locked(int *a1, char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_get_id_for_field_locked";
      v13 = 1024;
      v14 = 289;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 289, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v2 = *MEMORY[0x1E69E9840];

  return db2_get_id_for_field_locked(a1, a2);
}

uint64_t si_simplequeue_count_locked(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = *(a1 + 120);
  if ((-v2 & v1) != 0)
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert(v7, "SISimpleQueue.c", 27, "queue->end == (queue->end&(queue->size-1))", v9);
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

  v3 = *(a1 + 124);
  if ((v3 & ~(v2 - 1)) != 0)
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert(v11, "SISimpleQueue.c", 28, "queue->start == (queue->start&(queue->size-1))", v13);
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

  if (v3 <= v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 120);
  }

  v5 = v4 - v3 + v1;
  if (!v5)
  {
    if (*(*(a1 + 136) + 8 * v1))
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t si_scheduler_do_suspend(uint64_t a1, void *a2)
{
  v4 = *(a1 + 120);
  result = *(a1 + 144);
  if (v4)
  {
    v6 = (a1 + 116);
    v7 = *(a1 + 116);
    *(a1 + 116) = (v7 + v4);
    *(a1 + 144) = 0;
    if (!result)
    {
      v8 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = (a1 + 116);
    v7 = *(a1 + 116);
    *(a1 + 120) = 0;
    *(a1 + 144) = 0;
  }

  v8 = 0;
  do
  {
    *(result + 4) = 1;
    ++*v6;
    v9 = *(result + 16);
    if (*(result + 32))
    {
      *(result + 16) = v8;
      v8 = result;
    }

    else
    {
      release_token(result);
    }

    result = v9;
  }

  while (v9);
LABEL_11:
  if (!v7 && *v6)
  {
    dispatch_suspend(*(a1 + 160));
  }

  *a2 = v8;
  v10 = *(a1 + 16);

  return pthread_cond_broadcast(v10);
}

void release_token(void *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v2 = a1[4];
    if (v2)
    {
      v2(a1[5], 1);
    }

    free(a1);
  }
}

void ___scheduler_suspension_locked_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = *(a1 + 32);
  pthread_mutex_lock(*(v2 + 8));
  if (*(v2 + 120) || *(v2 + 144))
  {
    *(v2 + 200) = 0;
    si_scheduler_do_suspend(v2, &v5);
  }

  pthread_mutex_unlock(*(v2 + 8));
  v3 = *(a1 + 32);
  if (v3 && atomic_fetch_add((v3 + 96), 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(v3);
  }

  v4 = v5;

  si_scheduler_trigger_tokens(v4);
}

void SIResultQueueCancel(uint64_t a1)
{
  pthread_mutex_lock((*a1 + 8));
  if (*(a1 + 12) == 1)
  {
    pthread_mutex_unlock((*a1 + 8));
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v2 = *(a1 + 48);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 12) = 1;
    v6 = *__error();
    v7 = _SILogForLogForCategory(1);
    v8 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C278D000, v7, v8, "Canceling result queue", v10, 2u);
    }

    *__error() = v6;
    pthread_mutex_unlock((*a1 + 8));
    if (v5)
    {
      v9 = 0;
      do
      {
        (*&v3[v9])(*&v4[v9], 1);
        v9 += 8;
      }

      while (8 * v5 != v9);
    }
  }

  free(v4);
  free(v3);
  if (v2)
  {
    v2(*(a1 + 56), 1);
  }
}

uint64_t si_resultqueue_enqueue(uint64_t a1, uint64_t a2)
{
  v4 = countForBatch(a2);
  pthread_mutex_lock((*a1 + 8));
  v5 = *(a1 + 12);
  if ((v5 & 1) != 0 || (*(a1 + 72) += v4, si_enqueue_locked(*a1, a2), (v6 = *(a1 + 48)) == 0) || *(a1 + 84))
  {
    pthread_mutex_unlock((*a1 + 8));
  }

  else
  {
    v8 = *(a1 + 56);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    pthread_mutex_unlock((*a1 + 8));
    v6(v8, 0);
  }

  return v5 ^ 1u;
}

int *si_enqueue_locked(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 128);
  v3 = *(a1 + 120);
  if ((-v3 & v2) != 0)
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert(v13, "SISimpleQueue.c", 49, "queue->end == (queue->end&(queue->size-1))", v15);
LABEL_23:
    free(v14);
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

  if ((*(a1 + 124) & ~(v3 - 1)) != 0)
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert(v16, "SISimpleQueue.c", 50, "queue->start == (queue->start&(queue->size-1))", v18);
LABEL_30:
    free(v17);
    if (__valid_fs(-1))
    {
      v28 = 2989;
    }

    else
    {
      v28 = 3072;
    }

    *v28 = -559038737;
    abort();
  }

  result = *(a1 + 136);
  if (*&result[2 * v2])
  {
    *(a1 + 120) = 2 * v3;
    v7 = malloc_type_realloc(result, 8 * (2 * v3), 0x80040B8603338uLL);
    *(a1 + 136) = v7;
    memcpy(&v7[8 * v3], v7, 8 * *(a1 + 124));
    v8 = *(a1 + 124);
    *(a1 + 128) = (*(a1 + 120) - 1) & (v8 + v3);
    bzero(*(a1 + 136), 8 * v8);
    bzero((*(a1 + 136) + 8 * *(a1 + 128)), 8 * (*(a1 + 120) - *(a1 + 128)));
    result = *(a1 + 136);
    v2 = *(a1 + 128);
  }

  *&result[2 * v2] = a2;
  v9 = v2 + 1;
  *(a1 + 128) = v2 + 1;
  if (gSILogLevels[0] >= 5)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 124);
      v22 = *(a1 + 128);
      *buf = 67109376;
      v30 = v21;
      v31 = 1024;
      v32 = v22;
      _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "Enqueueing result: %d %d\n", buf, 0xEu);
    }

    result = __error();
    *result = v19;
    v9 = *(a1 + 128);
  }

  v10 = *(a1 + 120) - 1;
  v11 = v9 & v10;
  *(a1 + 128) = v11;
  if (*(a1 + 132))
  {
    result = pthread_cond_broadcast((a1 + 72));
    v11 = *(a1 + 128);
    v10 = *(a1 + 120) - 1;
  }

  if ((v11 & ~v10) != 0)
  {
    v23 = __si_assert_copy_extra_332();
    v14 = v23;
    v24 = "";
    if (v23)
    {
      v24 = v23;
    }

    __message_assert(v23, "SISimpleQueue.c", 75, "queue->end == (queue->end&(queue->size-1))", v24);
    goto LABEL_23;
  }

  if ((*(a1 + 124) & ~v10) != 0)
  {
    v26 = __si_assert_copy_extra_332();
    v17 = v26;
    v27 = "";
    if (v26)
    {
      v27 = v26;
    }

    __message_assert(v26, "SISimpleQueue.c", 76, "queue->start == (queue->start&(queue->size-1))", v27);
    goto LABEL_30;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CIIndexSetClearCache(uint64_t a1)
{
  for (i = cicachelistdequeue(a1 + 8, 20); i; i = cicachelistdequeue(a1 + 8, 20))
  {
    do
    {
      v3 = *(i + 40);
      *(i + 16) = -2;
      CFRelease(i);
      i = v3;
    }

    while (v3);
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = cicachelistdequeue(a1 + 32, 0);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E69E9AC8];
    do
    {
      Mutable = CFSetCreateMutable(v4, 0, 0);
      do
      {
        while (1)
        {
          CFSetAddValue(Mutable, v6);
          v9 = v6[1];
          if (CFSetContainsValue(Mutable, v9))
          {
LABEL_40:
            v25 = __si_assert_copy_extra_332();
            __message_assert_336(v25, v26, v27, v28, v29, v30, v31, v32, "CIIndexSet.c");
            free(v25);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          if (*v7 <= 0x41uLL)
          {
            break;
          }

          free(v6);
          v6 = v9;
          if (!v9)
          {
            goto LABEL_6;
          }
        }

        munmap(v6, (*v7 + 31) & -*v7);
        v6 = v9;
      }

      while (v9);
LABEL_6:
      CFRelease(Mutable);
      v6 = cicachelistdequeue(a1 + 32, 0);
    }

    while (v6);
  }

  v10 = cicachelistdequeue(a1 + 56, 0);
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x1E69E9AC8];
    do
    {
      v13 = CFSetCreateMutable(v4, 0, 0);
      do
      {
        while (1)
        {
          CFSetAddValue(v13, v11);
          v14 = v11[1];
          if (CFSetContainsValue(v13, v14))
          {
            goto LABEL_40;
          }

          if (*v12 <= 0x81uLL)
          {
            break;
          }

          free(v11);
          v11 = v14;
          if (!v14)
          {
            goto LABEL_15;
          }
        }

        munmap(v11, (*v12 + 63) & -*v12);
        v11 = v14;
      }

      while (v14);
LABEL_15:
      CFRelease(v13);
      v11 = cicachelistdequeue(a1 + 56, 0);
    }

    while (v11);
  }

  v15 = cicachelistdequeue(a1 + 80, 0);
  if (v15)
  {
    v16 = v15;
    v17 = MEMORY[0x1E69E9AC8];
    do
    {
      v18 = CFSetCreateMutable(v4, 0, 0);
      do
      {
        while (1)
        {
          CFSetAddValue(v18, v16);
          v19 = v16[1];
          if (CFSetContainsValue(v18, v19))
          {
            goto LABEL_40;
          }

          if (*v17 <= 0x101uLL)
          {
            break;
          }

          free(v16);
          v16 = v19;
          if (!v19)
          {
            goto LABEL_24;
          }
        }

        munmap(v16, (*v17 + 127) & -*v17);
        v16 = v19;
      }

      while (v19);
LABEL_24:
      CFRelease(v18);
      v16 = cicachelistdequeue(a1 + 80, 0);
    }

    while (v16);
  }

  result = cicachelistdequeue(a1 + 104, 0);
  if (result)
  {
    v21 = result;
    v22 = MEMORY[0x1E69E9AC8];
    do
    {
      v23 = CFSetCreateMutable(v4, 0, 0);
      do
      {
        while (1)
        {
          CFSetAddValue(v23, v21);
          v24 = v21[1];
          if (CFSetContainsValue(v23, v24))
          {
            goto LABEL_40;
          }

          if (*v22 <= 0x201uLL)
          {
            break;
          }

          free(v21);
          v21 = v24;
          if (!v24)
          {
            goto LABEL_33;
          }
        }

        munmap(v21, (*v22 + 255) & -*v22);
        v21 = v24;
      }

      while (v24);
LABEL_33:
      CFRelease(v23);
      result = cicachelistdequeue(a1 + 104, 0);
      v21 = result;
    }

    while (result);
  }

  return result;
}

uint64_t cicachelistdequeue(uint64_t a1, uint64_t a2)
{
  if (*a1 != 4292677391)
  {
    v6 = __si_assert_copy_extra_332();
    __message_assert_336(v6, v7, v8, v9, v10, v11, v12, v13, "CIIndexSet.c");
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 8) = *(v4 + a2);
  }

  os_unfair_lock_unlock((a1 + 16));
  return v4;
}

void SICompletionModelRelease(void *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    if (a1[1] && (*(a1 + 4) & 0x10) != 0)
    {
      SILanguageModelRelease();
    }

    v2 = a1[5];
    if (v2)
    {
      CFRelease(v2);
      a1[5] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
      a1[3] = 0;
    }

    v5 = a1[4];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void *SIPommesSuggestionsModelRelease(void *result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      if (result[2])
      {
        SILocalizationRelease();
      }

      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>>>::~__hash_table((v1 + 38));
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>>>::~__hash_table((v1 + 33));
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>>>::~__hash_table((v1 + 28));
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>>>::~__hash_table((v1 + 23));
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>>>::~__hash_table((v1 + 18));
      v2 = v1[15];
      if (v2)
      {
        do
        {
          v3 = *v2;
          v4 = *(v2 + 5);
          *(v2 + 5) = 0;
          if (v4)
          {
            MEMORY[0x1C691FEF0](v4, 0x1000C403E1C8BA9);
          }

          if (v2[39] < 0)
          {
            operator delete(*(v2 + 2));
          }

          operator delete(v2);
          v2 = v3;
        }

        while (v3);
      }

      v5 = v1[13];
      v1[13] = 0;
      if (v5)
      {
        operator delete(v5);
      }

      v6 = v1[10];
      if (v6)
      {
        do
        {
          v7 = *v6;
          std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_peopleCandidate>>,0>((v6 + 2));
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v1[8];
      v1[8] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      v9 = v1[5];
      if (v9)
      {
        do
        {
          v10 = *v9;
          std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_freeTextCandidate>>,0>((v9 + 2));
          operator delete(v9);
          v9 = v10;
        }

        while (v10);
      }

      v11 = v1[3];
      v1[3] = 0;
      if (v11)
      {
        operator delete(v11);
      }

      JUMPOUT(0x1C691FEF0);
    }
  }

  return result;
}

uint64_t db_update_obj(int *a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      v13 = "db_update_obj";
      v14 = 1024;
      v15 = 320;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 320, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v3 = *MEMORY[0x1E69E9840];

  return db2_update_obj_callback(a1, a2, a3, 0, 0);
}

uint64_t db2_update_obj_callback(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if ((*(a1 + 804) & 8) != 0)
  {
    v14 = 13;
    if (!a4)
    {
LABEL_7:
      v15 = *__error();
      v16 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v87 = 136315906;
        *&v87[4] = "db2_update_obj_callback";
        *&v87[12] = 1024;
        *&v87[14] = 11819;
        v88 = 1024;
        v89 = v14;
        v90 = 2048;
        v91 = v10;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Error %d, oid %llx", v87, 0x22u);
      }

      *__error() = v15;
      goto LABEL_96;
    }

    goto LABEL_11;
  }

  v11 = *(a2 + 12);
  if (v11 < 0x30 || *(a2 + 8) <= 0x2Fu)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v87 = 136315394;
      *&v87[4] = "db2_update_obj_callback";
      *&v87[12] = 1024;
      *&v87[14] = 11806;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: dbo too small", v87, 0x12u);
    }

    *__error() = v12;
    v14 = 22;
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_11:
    v17 = 0;
    v84 = 1;
LABEL_12:
    v85 = 1;
    goto LABEL_13;
  }

  if (v11 > 0xFFEB)
  {
    v14 = 7;
    if (!a4)
    {
      goto LABEL_96;
    }

    v84 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  *(a2 + 40) &= ~8u;
  if (a3)
  {
    v14 = 0;
    v85 = 0;
  }

  else
  {
    *v87 = 0;
    *&v87[8] = 0;
    if (gettimeofday(v87, 0))
    {
      v46 = time(0);
      v47 = 0;
    }

    else
    {
      v46 = *v87;
      v47 = *&v87[8];
    }

    v14 = 0;
    v85 = 0;
    *(a2 + 16) = v47 + 1000000 * v46;
  }

  v84 = 1;
  v17 = 1;
LABEL_13:
  v83 = a5;
  v18 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v18 = __THREAD_SLOT_KEY;
  }

  v19 = pthread_getspecific(v18);
  HIDWORD(v21) = qos_class_self() - 9;
  LODWORD(v21) = HIDWORD(v21);
  v20 = v21 >> 2;
  v82 = v10;
  if (v20 > 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = dword_1C2BFF8F0[v20];
  }

  v23 = pthread_mutex_lock((a1 + 584));
  if (!*(a1 + 768) && !*(a1 + 780) && (*(a1 + 796) & 1) == 0)
  {
    if (v22 > 5)
    {
LABEL_64:
      *(a1 + 768) = pthread_self();
      goto LABEL_22;
    }

    v52 = v22 - 6;
    v53 = (a1 + 16 * v22 + 648);
    while (!*v53)
    {
      v53 += 2;
      if (__CFADD__(v52++, 1))
      {
        goto LABEL_64;
      }
    }
  }

  db_rwlock_wait(a1 + 584, v22, 2);
LABEL_22:
  pthread_mutex_unlock((a1 + 584));
  if (v23)
  {
    v78 = *__error();
    v79 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      *v87 = 136315650;
      *&v87[4] = "db2_update_obj_callback";
      *&v87[12] = 1024;
      *&v87[14] = 11824;
      v88 = 1024;
      v89 = v23;
      _os_log_error_impl(&dword_1C278D000, v79, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", v87, 0x18u);
    }

    *__error() = v78;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11824);
  }

  if (v19)
  {
    v24 = CIOnThreadCleanUpPush(v19 - 1, db_write_unlock, a1 + 584);
    if (!v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v24 = -1;
    if (!v17)
    {
      goto LABEL_84;
    }
  }

  if (*(a2 + 12) <= 0x2Fu)
  {
    v75 = __si_assert_copy_extra_3233(0, -1);
    v76 = v75;
    v77 = "";
    if (v75)
    {
      v77 = v75;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v77);
    free(v76);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if ((a3 & 4) == 0)
  {
    inserted = _insert_obj(a1, a2, (a3 & 0xA) != 0, a3 | 8u);
    if (inserted && inserted != 7)
    {
      v26 = v24;
      v27 = inserted;
      v28 = *__error();
      v29 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *v87 = 136315906;
        *&v87[4] = "update_obj_locked";
        *&v87[12] = 1024;
        *&v87[14] = 11761;
        v88 = 1024;
        v89 = v27;
        v90 = 2048;
        v91 = v82;
        _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: Error %d, oid %llx", v87, 0x22u);
      }

      *__error() = v28;
      v24 = v26;
    }

    goto LABEL_84;
  }

  v30 = 0;
  v86 = 0;
  if (*(a1 + 804))
  {
    v30 = (*(a2 + 40) >> 5) & 1;
  }

  v31 = *(a1 + 856);
  v32 = *(v31 + 8);
  v81 = v24;
  if (!v32)
  {
    *v87 = 0;
    v48 = _page_alloc_fetch(a1, v87, 0, &v86 + 1, &v86, a3 & 0x4004);
    if (!v48)
    {
      v80 = v14;
      free(*v87);
      v56 = &v86 + 1;
      v57 = v86;
      goto LABEL_74;
    }

    v49 = v48;
    v50 = *__error();
    v51 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *v87 = 136315906;
      *&v87[4] = "update_obj_locked";
      *&v87[12] = 1024;
      *&v87[14] = 11790;
      v88 = 1024;
      v89 = v49;
      v90 = 2048;
      v91 = v82;
      _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: Error %d, oid %llx", v87, 0x22u);
    }

    *__error() = v50;
    goto LABEL_83;
  }

  v33 = *a2;
  v34 = *(v31 + 16);
  if (v34 < v32)
  {
    v35 = v31 + 16 * v34;
    v37 = *(v35 + 20);
    v36 = v35 + 20;
    if (v37 == v33)
    {
      v38 = *(v36 + 12);
      if (v30 == v38 >> 28)
      {
        goto LABEL_73;
      }
    }
  }

  v39 = v32;
  if (v32 < 1)
  {
    v55 = 0;
    v41 = 0;
    goto LABEL_70;
  }

  v40 = 0;
  while (1)
  {
    v41 = (v32 + v40) >> 1;
    v42 = v31 + 20 + 16 * v41;
    v43 = v30 - (*(v42 + 12) >> 28);
    if (!v43)
    {
      break;
    }

    v44 = v43;
    v45 = (v32 + v40) >> 1;
    if ((v44 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_42:
    v32 = v45;
    if (v40 >= v45)
    {
      v55 = v44 > 0;
      goto LABEL_70;
    }
  }

  v44 = v33 - *v42;
  v45 = (v32 + v40) >> 1;
  if (v44 < 0)
  {
    goto LABEL_42;
  }

LABEL_47:
  if (v44)
  {
    v40 = v41 + 1;
    v45 = v32;
    goto LABEL_42;
  }

  v55 = 0;
LABEL_70:
  if (v39 - 1 <= v41)
  {
    v55 = 0;
  }

  v58 = v41 + v55;
  v59 = v31 + 16 * v58;
  *(v31 + 16) = v58;
  v36 = v59 + 20;
  v38 = *(v59 + 32);
LABEL_73:
  v80 = v14;
  v56 = (v36 + 8);
  v57 = v38 & 0xFFFFFFF;
LABEL_74:
  v60 = *v56;
  serializeDBO(a1);
  updated = _page_update_obj(a1, 0, v60, v57, a3 & 0x4002);
  if (updated == 2)
  {
    if ((a3 & 8) == 0)
    {
      updated = 2;
      goto LABEL_79;
    }

    updated = _real_page_insert_obj(a1, 0, a3, v60, v57);
  }

  if (updated)
  {
LABEL_79:
    v62 = *__error();
    v63 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *v87 = 136315906;
      *&v87[4] = "update_obj_locked";
      *&v87[12] = 1024;
      *&v87[14] = 11783;
      v88 = 1024;
      v89 = updated;
      v90 = 2048;
      v91 = v82;
      _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: Error %d, oid %llx", v87, 0x22u);
    }

    *__error() = v62;
  }

  free(0);
  v14 = v80;
LABEL_83:
  v24 = v81;
LABEL_84:
  if (a4)
  {
    a4(a2, v83, v14);
  }

  if ((v84 & v85) == 1)
  {
    v64 = *__error();
    v65 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *v87 = 136315906;
      *&v87[4] = "db2_update_obj_callback";
      *&v87[12] = 1024;
      *&v87[14] = 11835;
      v88 = 1024;
      v89 = v14;
      v90 = 2048;
      v91 = v82;
      _os_log_error_impl(&dword_1C278D000, v65, OS_LOG_TYPE_ERROR, "%s:%d: Error %d, oid %llx", v87, 0x22u);
    }

    *__error() = v64;
  }

  v66 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v67 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v68 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v68, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v67)
  {
    pthread_override_qos_class_end_np(v67);
  }

  if (v66)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11839);
  }

  if (v19)
  {
    CIOnThreadCleanUpClearItem(v19 - 1, v24);
    v69 = &threadData[9 * (v19 - 1)];
    v72 = *(v69 + 14);
    v70 = v69 + 7;
    v71 = v72;
    if (v24 + 1 == v72)
    {
      *v70 = v71 - 1;
    }
  }

LABEL_96:
  v73 = *MEMORY[0x1E69E9840];
  return v14;
}

void serializeDBO(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  *&v99[16380] = *MEMORY[0x1E69E9840];
  bzero(__base, 0x4000uLL);
  v7 = *(v5 + 12);
  if (v7 < 0x31)
  {
    v20 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v5 + v7;
    v10 = (v5 + 48);
    v11 = *v6;
    v12 = v99;
    do
    {
      if (v11 != 1685287992)
      {
        v84 = __si_assert_copy_extra_332();
        v85 = v84;
        v86 = "";
        if (v84)
        {
          v86 = v84;
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 464, v86);
        goto LABEL_162;
      }

      v13 = v10[1];
      v14 = *v10;
      if ((v13 & 0x400) != 0)
      {
        v14 = 0;
      }

      v15 = (v13 >> 4) & 2 | (v13 >> 7) & 1 | (v13 >> 1) & 4 | (v13 >> 5) & 8 | (v13 >> 3) & 0x40;
      if ((*(v6 + 804) & 4) != 0)
      {
        v16 = (v13 >> 8) & 0x20 | (v13 >> 7) & 0x180 | v15;
      }

      else
      {
        v16 = (v13 >> 5) & 0x780 | (v13 >> 6) & 0x20 | v15;
        if (v14 == 14 && (v13 & 0x4000) != 0)
        {
          LOBYTE(v16) = v16 | 0x80;
        }
      }

      if ((v13 & 0x10) != 0)
      {
        v18 = 15;
      }

      else
      {
        v18 = 11;
      }

      if (v14 != 11)
      {
        v18 = v14;
      }

      *v12 = v16;
      v12[1] = v18;
      v19 = *(v10 + 2);
      *(v12 - 1) = *(v10 + 1);
      *(v12 + 4) = v10;
      v10 = (v10 + v19 + 13);
      v20 = v8 + 1;
      if (v10 >= v9)
      {
        break;
      }

      v12 += 16;
    }

    while (v8++ < 0x3FF);
  }

  qsort_b(__base, v20, 0x10uLL, &__block_literal_global_11_14368);
  v96 = malloc_type_zone_malloc(indexingZone, (4 * *(v5 + 12)), 0x100004052888210uLL);
  v22 = (v96 + 1);
  v23 = ldb_writeSmallVInt64((v96 + 1), 0, *v5);
  v24 = *(v5 + 40);
  if ((v24 & 0x80) != 0)
  {
    v26 = (v22 + v23);
    *v26 = 0x80;
    v25 = v23 + 2;
    v26[1] = v24;
  }

  else
  {
    v25 = v23 + 1;
    *(v22 + v23) = v24;
  }

  v27 = ldb_writeSmallVInt64(v22, v25, *(v5 + 32));
  v28 = ldb_writeSmallVInt64(v22, v27, *(v5 + 24));
  v29 = ldb_writeSmallVInt64(v22, v28, *(v5 + 16));
  v30 = v29;
  if ((*(v5 + 40) & 0x80) != 0)
  {
    v78 = *(v5 + 44);
    if (v78 > 0x7F)
    {
      if (v78 >> 14)
      {
        if (v78 >> 21)
        {
          if (v78 >> 28)
          {
            v82 = v22 + v29;
            *v82 = -16;
            *(v82 + 1) = v78;
            v30 = v29 + 5;
            v97 = v3;
            if (v20)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v81 = (v22 + v29);
            *v81 = HIBYTE(v78) | 0xE0;
            v81[1] = BYTE2(v78);
            v81[2] = BYTE1(v78);
            v30 = v29 + 4;
            v81[3] = v78;
            v97 = v3;
            if (v20)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v80 = (v22 + v29);
          *v80 = BYTE2(v78) | 0xC0;
          v80[1] = BYTE1(v78);
          v30 = v29 + 3;
          v80[2] = v78;
          v97 = v3;
          if (v20)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v79 = (v22 + v29);
        *v79 = BYTE1(v78) | 0x80;
        v30 = v29 + 2;
        v79[1] = v78;
        v97 = v3;
        if (v20)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      *(v22 + v29) = v78;
      v30 = v29 + 1;
      v97 = v3;
      if (v20)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v97 = v3;
    if (v20)
    {
LABEL_28:
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = &__base[16 * v31];
        v34 = *v33 - v32;
        if (*v33 == v32)
        {
          si_analytics_log_2752("last_id(%u) == dbfs[%zu].name_id(%u)");
        }

        else
        {
          if (*v33 >= v32)
          {
            v35 = *(v33 + 1);
            v36 = v33[5];
            v37 = v33[4];
            if (*v6 != 1685287992)
            {
              v87 = __si_assert_copy_extra_332();
              v85 = v87;
              v88 = "";
              if (v87)
              {
                v88 = v87;
              }

              __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 470, v88);
LABEL_162:
              free(v85);
              goto LABEL_163;
            }

            if (v34 > 0x7F)
            {
              if (v34 >> 14)
              {
                if (v34 >> 21)
                {
                  if (v34 >> 28)
                  {
                    v42 = v22 + v30;
                    *v42 = -16;
                    *(v42 + 1) = v34;
                    v30 += 5;
                    v38 = *(v35 + 1);
                    if ((v38 & 0x10) != 0)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_48;
                  }

                  v41 = (v22 + v30);
                  *v41 = HIBYTE(v34) | 0xE0;
                  v41[1] = BYTE2(v34);
                  v41[2] = BYTE1(v34);
                  v30 += 4;
                  v41[3] = v34;
                  v38 = *(v35 + 1);
                  if ((v38 & 0x10) == 0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v40 = (v22 + v30);
                  *v40 = BYTE2(v34) | 0xC0;
                  v40[1] = BYTE1(v34);
                  v30 += 3;
                  v40[2] = v34;
                  v38 = *(v35 + 1);
                  if ((v38 & 0x10) == 0)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                v39 = (v22 + v30);
                *v39 = BYTE1(v34) | 0x80;
                v30 += 2;
                v39[1] = v34;
                v38 = *(v35 + 1);
                if ((v38 & 0x10) == 0)
                {
                  goto LABEL_48;
                }
              }
            }

            else
            {
              *(v22 + v30++) = v34;
              v38 = *(v35 + 1);
              if ((v38 & 0x10) != 0)
              {
                goto LABEL_62;
              }

LABEL_48:
              if ((v38 & 0x20) != 0 || (v43 = *v35, v43 == 14) || v43 == 11)
              {
                v44 = v35[2];
                if (v44 <= 0x7F)
                {
                  *(v22 + v30++) = v44;
                  if ((v37 & 2) != 0)
                  {
                    goto LABEL_106;
                  }

LABEL_63:
                  if ((v37 & 1) == 0)
                  {
                    if (v36 > 0xF)
                    {
                      goto LABEL_94;
                    }

                    if (((1 << v36) & 0x8060) != 0)
                    {
                      v52 = *(v35 + 13);
                      if (v52 >> 28)
                      {
                        v54 = v22 + v30;
                        *v54 = -16;
                        *(v54 + 1) = v52;
                        v30 += 5;
                        goto LABEL_100;
                      }

                      if (v52 >= 0x200000)
                      {
                        v74 = (v22 + v30);
                        *v74 = HIBYTE(v52) | 0xE0;
                        v74[1] = BYTE2(v52);
                        v74[2] = BYTE1(v52);
                        v30 += 4;
                        v74[3] = v52;
                        goto LABEL_100;
                      }

                      if (v52 >= 0x4000)
                      {
                        v77 = (v22 + v30);
                        *v77 = BYTE2(v52) | 0xC0;
                        v77[1] = BYTE1(v52);
                        v30 += 3;
                        v77[2] = v52;
                        goto LABEL_100;
                      }

                      if (v52 < 0x80)
                      {
                        goto LABEL_98;
                      }
                    }

                    else
                    {
                      if (((1 << v36) & 0x180) != 0)
                      {
                        goto LABEL_67;
                      }

                      if (v36 == 14)
                      {
                        v55 = *(v35 + 1);
                        if ((v55 & 0x10) != 0)
                        {
                          if ((v55 & 8) != 0)
                          {
LABEL_67:
                            v30 = ldb_writeVInt64(v22, v30, *(v35 + 13));
                          }

                          else
                          {
                            v56 = v35[2];
                            v57 = v30 + 1;
                            if (v56 >= 8)
                            {
                              v58 = v56 >> 3;
                              v59 = (v35 + 13);
                              do
                              {
                                v60 = *v59++;
                                v57 = ldb_writeVInt64(v22, v57, v60);
                                --v58;
                              }

                              while (v58);
                            }

                            *(v22 + v30) = v57 - v30;
                            v30 = v57;
                          }

LABEL_100:
                          v32 = *v33;
                          goto LABEL_30;
                        }

                        goto LABEL_76;
                      }

LABEL_94:
                      if (v36 < 3)
                      {
                        LOBYTE(v52) = *(v35 + 13);
                        goto LABEL_98;
                      }

                      if ((v36 - 3) >= 2)
                      {
                        goto LABEL_76;
                      }

                      v52 = *(v35 + 13);
                      if (v52 <= 0x7F)
                      {
LABEL_98:
                        *(v22 + v30) = v52;
LABEL_99:
                        ++v30;
                        goto LABEL_100;
                      }

                      if ((v52 & 0xFFFFC07F) != 0)
                      {
                        v61 = (v22 + v30);
                        *v61 = -64;
                        v61[1] = BYTE1(v52);
                        v30 += 3;
                        v61[2] = v52;
                        goto LABEL_100;
                      }
                    }

                    v75 = (v22 + v30);
                    *v75 = BYTE1(v52) | 0x80;
                    v30 += 2;
                    v75[1] = v52;
                    goto LABEL_100;
                  }

                  if (v36 != 15)
                  {
                    if ((*(v35 + 1) & 0x10) != 0)
                    {
                      v90 = __si_assert_copy_extra_2708(0);
                      v91 = v90;
                      if (v90)
                      {
                        v92 = v90;
                      }

                      else
                      {
                        v92 = "";
                      }

                      v93 = v35[1];
                      string_and_length_for_id = get_string_and_length_for_id(v6, 0, v93, 0);
                      if (string_and_length_for_id)
                      {
                        v95 = string_and_length_for_id;
                      }

                      else
                      {
                        v95 = "";
                      }

                      __message_assert("%s:%u: failed assertion '%s' %s field:%d(%s), type:%d, flags:0x%x", "ldb.c", 756, "0", v92, v93, v95, *v35, *(v35 + 1));
                      free(v91);
                      if (!__valid_fs(-1))
                      {
                        v89 = 3072;
LABEL_164:
                        *v89 = -559038737;
                        abort();
                      }

LABEL_163:
                      v89 = 2989;
                      goto LABEL_164;
                    }

                    goto LABEL_76;
                  }

                  if ((v37 & 8) != 0)
                  {
                    v48 = 2;
                  }

                  else
                  {
                    v48 = 4;
                  }

                  v49 = v6;
LABEL_73:
                  UniquedDBFValue = getUniquedDBFValue(v49, v48, v35, 3);
                  if (UniquedDBFValue > 0x7F)
                  {
                    if (UniquedDBFValue >> 14)
                    {
                      if (UniquedDBFValue >> 21)
                      {
                        if (UniquedDBFValue >> 28)
                        {
                          v76 = v22 + v30;
                          *v76 = -16;
                          *(v76 + 1) = UniquedDBFValue;
                          v30 += 5;
                        }

                        else
                        {
                          v62 = (v22 + v30);
                          *v62 = BYTE3(UniquedDBFValue) | 0xE0;
                          v62[1] = BYTE2(UniquedDBFValue);
                          v62[2] = BYTE1(UniquedDBFValue);
                          v30 += 4;
                          v62[3] = UniquedDBFValue;
                        }
                      }

                      else
                      {
                        v53 = (v22 + v30);
                        *v53 = BYTE2(UniquedDBFValue) | 0xC0;
                        v53[1] = BYTE1(UniquedDBFValue);
                        v30 += 3;
                        v53[2] = UniquedDBFValue;
                      }
                    }

                    else
                    {
                      v51 = (v22 + v30);
                      *v51 = BYTE1(UniquedDBFValue) | 0x80;
                      v30 += 2;
                      v51[1] = UniquedDBFValue;
                    }

                    goto LABEL_100;
                  }

                  *(v22 + v30) = UniquedDBFValue;
                  goto LABEL_99;
                }

                if (!(v44 >> 14))
                {
                  v45 = (v22 + v30);
                  *v45 = BYTE1(v44) | 0x80;
                  v30 += 2;
                  v45[1] = v44;
                  if ((v37 & 2) != 0)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_63;
                }

                if (!(v44 >> 21))
                {
                  v46 = (v22 + v30);
                  *v46 = BYTE2(v44) | 0xC0;
                  v46[1] = BYTE1(v44);
                  v30 += 3;
                  v46[2] = v44;
                  if ((v37 & 2) != 0)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_63;
                }

                if (!(v44 >> 28))
                {
                  v47 = (v22 + v30);
                  *v47 = HIBYTE(v44) | 0xE0;
                  v47[1] = BYTE2(v44);
                  v47[2] = BYTE1(v44);
                  v30 += 4;
                  v47[3] = v44;
                  goto LABEL_62;
                }

                v63 = v22 + v30;
                *v63 = -16;
                *(v63 + 1) = v44;
                v30 += 5;
                if ((v37 & 2) == 0)
                {
                  goto LABEL_63;
                }

LABEL_106:
                if (v36 == 14 || (v37 & 1) != 0)
                {
                  goto LABEL_63;
                }

                if (v36 <= 6)
                {
                  if ((v36 - 3) < 2)
                  {
                    if (v35[2] >= 2u)
                    {
                      v71 = 0;
                      do
                      {
                        v72 = *(v35 + 2 * v71 + 13);
                        if (v72 <= 0x7F)
                        {
                          *(v22 + v30++) = v72;
                        }

                        else
                        {
                          v73 = (v22 + v30);
                          if ((v72 & 0xFFFFC07F) != 0)
                          {
                            *v73 = -64;
                            v73[1] = BYTE1(v72);
                            v30 += 3;
                            v73[2] = v72;
                          }

                          else
                          {
                            *v73 = BYTE1(v72) | 0x80;
                            v30 += 2;
                            v73[1] = v72;
                          }
                        }

                        ++v71;
                      }

                      while (v71 < v35[2] >> 1);
                    }

                    goto LABEL_100;
                  }

                  if ((v36 - 5) < 2)
                  {
                    if (v35[2] >= 4u)
                    {
                      v64 = 0;
                      do
                      {
                        v66 = *(&v35[v64 + 3] + 1);
                        if (v66 >> 28)
                        {
                          v65 = v22 + v30;
                          *v65 = -16;
                          *(v65 + 1) = v66;
                          v30 += 5;
                        }

                        else if (v66 >= 0x200000)
                        {
                          v67 = (v22 + v30);
                          *v67 = HIBYTE(v66) | 0xE0;
                          v67[1] = BYTE2(v66);
                          v67[2] = BYTE1(v66);
                          v30 += 4;
                          v67[3] = v66;
                        }

                        else if (v66 >= 0x4000)
                        {
                          v68 = (v22 + v30);
                          *v68 = BYTE2(v66) | 0xC0;
                          v68[1] = BYTE1(v66);
                          v30 += 3;
                          v68[2] = v66;
                        }

                        else if (v66 >= 0x80)
                        {
                          v69 = (v22 + v30);
                          *v69 = BYTE1(v66) | 0x80;
                          v30 += 2;
                          v69[1] = v66;
                        }

                        else
                        {
                          *(v22 + v30++) = v66;
                        }

                        ++v64;
                      }

                      while (v64 < v35[2] >> 2);
                    }

                    goto LABEL_100;
                  }

                  goto LABEL_76;
                }

                if ((v36 - 7) < 2)
                {
                  if (v35[2] >= 8u)
                  {
                    v70 = 0;
                    do
                    {
                      v30 = ldb_writeVInt64(v22, v30, *(&v35[2 * v70++ + 3] + 1));
                    }

                    while (v70 < v35[2] >> 3);
                  }

                  goto LABEL_100;
                }

                if (v36 != 15)
                {
LABEL_76:
                  memcpy((v22 + v30), v35 + 13, v35[2]);
                  v30 += v35[2];
                  goto LABEL_100;
                }

                v49 = v6;
                v48 = 3;
                goto LABEL_73;
              }
            }

LABEL_62:
            if ((v37 & 2) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_106;
          }

          si_analytics_log_2752("last_id(%u) > dbfs[%zu].name_id(%u)");
        }

LABEL_30:
        ++v31;
      }

      while (v31 != v20);
    }
  }

  *v96 = v30;
  *v97 = v96;
  v83 = *MEMORY[0x1E69E9840];
}

uint64_t _insert_obj(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  serializeDBO(a1);
  if ((MEMORY[0] - 16360) <= 0xFFFFC013)
  {
    v8 = test_compress_obj(a1, 0x4000, 0);
    if (v8)
    {
      inserted = v8;
      if (v8 != 7)
      {
        v10 = *__error();
        v11 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v18 = "_insert_obj";
          v19 = 1024;
          v20 = 5267;
          v21 = 1024;
          v22 = inserted;
          v23 = 2048;
          v24 = v7;
          _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Error %d, oid %llx", buf, 0x22u);
        }

        *__error() = v10;
      }

      free(0);
      goto LABEL_19;
    }
  }

  inserted = db_updateset_insert_object(*(a1 + 992), 0, a3, a4);
  free(0);
  if (inserted)
  {
    if (inserted == 17)
    {
      goto LABEL_19;
    }

    v12 = *__error();
    v13 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "_insert_obj";
      v19 = 1024;
      v20 = 5283;
      v21 = 1024;
      v22 = inserted;
      v14 = "%s:%d: Error %d from db_updateset_insert_object";
LABEL_16:
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x18u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if ((*(*(a1 + 992) + 56) + 16 * *(*(a1 + 992) + 48)) < 0x80000)
  {
    inserted = 0;
    goto LABEL_19;
  }

  inserted = flush_updateset_locked(a1);
  if (inserted)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "_insert_obj";
      v19 = 1024;
      v20 = 5288;
      v21 = 1024;
      v22 = inserted;
      v14 = "%s:%d: Error %d from flush_updateset_locked";
      goto LABEL_16;
    }

LABEL_17:
    *__error() = v12;
  }

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
  return inserted;
}

uint64_t ldb_writeSmallVInt64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          if (a3 >> 35)
          {
            if (a3 >> 42)
            {
              if (a3 >> 49)
              {
                v10 = a1 + a2;
                if (HIBYTE(a3))
                {
                  *v10 = -1;
                  *(v10 + 1) = a3;
                  return a2 + 9;
                }

                else
                {
                  *v10 = -2;
                  *(v10 + 1) = BYTE6(a3);
                  *(v10 + 2) = BYTE5(a3);
                  *(v10 + 3) = BYTE4(a3);
                  *(v10 + 4) = BYTE3(a3);
                  *(v10 + 5) = BYTE2(a3);
                  *(v10 + 6) = BYTE1(a3);
                  result = a2 + 8;
                  *(v10 + 7) = a3;
                }
              }

              else
              {
                v9 = (a1 + a2);
                *v9 = BYTE6(a3) | 0xFC;
                v9[1] = BYTE5(a3);
                v9[2] = BYTE4(a3);
                v9[3] = BYTE3(a3);
                v9[4] = BYTE2(a3);
                v9[5] = BYTE1(a3);
                result = a2 + 7;
                v9[6] = a3;
              }
            }

            else
            {
              v8 = (a1 + a2);
              *v8 = BYTE5(a3) | 0xF8;
              v8[1] = BYTE4(a3);
              v8[2] = BYTE3(a3);
              v8[3] = BYTE2(a3);
              v8[4] = BYTE1(a3);
              result = a2 + 6;
              v8[5] = a3;
            }
          }

          else
          {
            v7 = (a1 + a2);
            *v7 = BYTE4(a3) | 0xF0;
            v7[1] = BYTE3(a3);
            v7[2] = BYTE2(a3);
            v7[3] = BYTE1(a3);
            result = a2 + 5;
            v7[4] = a3;
          }
        }

        else
        {
          v6 = (a1 + a2);
          *v6 = BYTE3(a3) | 0xE0;
          v6[1] = BYTE2(a3);
          v6[2] = BYTE1(a3);
          result = a2 + 4;
          v6[3] = a3;
        }
      }

      else
      {
        v5 = (a1 + a2);
        *v5 = BYTE2(a3) | 0xC0;
        v5[1] = BYTE1(a3);
        result = a2 + 3;
        v5[2] = a3;
      }
    }

    else
    {
      v4 = (a1 + a2);
      *v4 = BYTE1(a3) | 0x80;
      result = a2 + 2;
      v4[1] = a3;
    }
  }

  else
  {
    *(a1 + a2) = a3;
    return a2 + 1;
  }

  return result;
}

uint64_t ldb_writeVInt64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3))
  {
    v4 = a1 + a2;
    *v4 = -1;
    *(v4 + 1) = a3;
    return a2 + 9;
  }

  else if (a3 >> 49)
  {
    v5 = (a1 + a2);
    *v5 = -2;
    v5[1] = BYTE6(a3);
    v5[2] = BYTE5(a3);
    v5[3] = BYTE4(a3);
    v5[4] = BYTE3(a3);
    v5[5] = BYTE2(a3);
    v5[6] = BYTE1(a3);
    result = a2 + 8;
    v5[7] = a3;
  }

  else if (a3 >> 42)
  {
    v6 = (a1 + a2);
    *v6 = BYTE6(a3) | 0xFC;
    v6[1] = BYTE5(a3);
    v6[2] = BYTE4(a3);
    v6[3] = BYTE3(a3);
    v6[4] = BYTE2(a3);
    v6[5] = BYTE1(a3);
    result = a2 + 7;
    v6[6] = a3;
  }

  else if (a3 >> 35)
  {
    v7 = (a1 + a2);
    *v7 = BYTE5(a3) | 0xF8;
    v7[1] = BYTE4(a3);
    v7[2] = BYTE3(a3);
    v7[3] = BYTE2(a3);
    v7[4] = BYTE1(a3);
    result = a2 + 6;
    v7[5] = a3;
  }

  else if (a3 >> 28)
  {
    v8 = (a1 + a2);
    *v8 = BYTE4(a3) | 0xF0;
    v8[1] = BYTE3(a3);
    v8[2] = BYTE2(a3);
    v8[3] = BYTE1(a3);
    result = a2 + 5;
    v8[4] = a3;
  }

  else if (a3 >= 0x200000)
  {
    v9 = (a1 + a2);
    *v9 = BYTE3(a3) | 0xE0;
    v9[1] = BYTE2(a3);
    v9[2] = BYTE1(a3);
    result = a2 + 4;
    v9[3] = a3;
  }

  else if (a3 >= 0x4000)
  {
    v10 = (a1 + a2);
    *v10 = BYTE2(a3) | 0xC0;
    v10[1] = BYTE1(a3);
    result = a2 + 3;
    v10[2] = a3;
  }

  else if (a3 >= 0x80)
  {
    v11 = (a1 + a2);
    *v11 = BYTE1(a3) | 0x80;
    result = a2 + 2;
    v11[1] = a3;
  }

  else
  {
    *(a1 + a2) = a3;
    return a2 + 1;
  }

  return result;
}

uint64_t db_updateset_insert_object(void *a1, unsigned __int8 *a2, int a3, int a4)
{
  v8 = malloc_type_malloc((*a2 + 4), 0x100004052888210uLL);
  memcpy(v8, a2, (*a2 + 4));
  v9 = a2[4];
  if ((v9 & 0x80) != 0)
  {
    if (v9 <= 0xBF)
    {
      v9 = a2[5] | ((v9 & 0x3F) << 8);
      goto LABEL_18;
    }

    if (v9 > 0xDF)
    {
      if (v9 > 0xEF)
      {
        if (v9 > 0xF7)
        {
          if (v9 > 0xFB)
          {
            if (v9 > 0xFD)
            {
              if (v9 == 255)
              {
                v9 = *(a2 + 5);
                goto LABEL_18;
              }

              v10 = (a2[5] << 48) | (a2[6] << 40) | (a2[7] << 32) | (a2[8] << 24) | (a2[9] << 16) | (a2[10] << 8);
              v11 = a2[11];
            }

            else
            {
              v10 = ((v9 & 1) << 48) | (a2[5] << 40) | (a2[6] << 32) | (a2[7] << 24) | (a2[8] << 16) | (a2[9] << 8);
              v11 = a2[10];
            }
          }

          else
          {
            v10 = ((v9 & 3) << 40) | (a2[5] << 32) | (a2[6] << 24) | (a2[7] << 16) | (a2[8] << 8);
            v11 = a2[9];
          }
        }

        else
        {
          v10 = ((v9 & 7) << 32) | (a2[5] << 24) | (a2[6] << 16) | (a2[7] << 8);
          v11 = a2[8];
        }
      }

      else
      {
        v10 = ((v9 & 0xF) << 24) | (a2[5] << 16) | (a2[6] << 8);
        v11 = a2[7];
      }
    }

    else
    {
      v10 = ((v9 & 0x1F) << 16) | (a2[5] << 8);
      v11 = a2[6];
    }

    v9 = v10 | v11;
  }

LABEL_18:
  v12 = a1[8];
  if (v12 <= v9)
  {
    v12 = v9;
  }

  a1[8] = v12;
  v13 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(a1, v9);
  if (!a3)
  {
    if (v13)
    {
      v18 = *(v13 + 6);
      v19 = v13[4];
      if (v18)
      {
        if (v18 == 3)
        {
          v30 = v9;
          v31 = &v30;
          v20 = std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1, v9);
          v20[3] = 0x800000002;
          v20[4] = v8;
          ++a1[6];
LABEL_47:
          result = 0;
          v24 = a1[7] + (*a2 + 4);
          goto LABEL_48;
        }

        if ((a4 & 8) == 0)
        {
          free(v8);
          return 17;
        }

        v26 = 0;
        if (v18 == 2)
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }

LABEL_37:
        v30 = v9;
        v31 = &v30;
        v28 = std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1, v9);
        *(v28 + 6) = v27;
        *(v28 + 7) = 8;
        v28[4] = v8;
        if (v26)
        {
          ++a1[5];
        }

        else
        {
          if (v19)
          {
            v29 = (*v19 + 4);
          }

          else
          {
            v29 = 0;
          }

          a1[7] -= v29;
          free(v19);
        }

        goto LABEL_47;
      }
    }

    else
    {
      v19 = 0;
    }

    v26 = 1;
    v27 = 1;
    goto LABEL_37;
  }

  v14 = 1;
  if (v13)
  {
    v15 = *(v13 + 6);
    v16 = v13[4];
    if (v15 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v14 = v15 == 0;
  }

  else
  {
    v16 = 0;
    v17 = 2;
  }

  v30 = v9;
  v31 = &v30;
  v21 = std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1, v9);
  *(v21 + 6) = v17;
  *(v21 + 7) = a4;
  v21[4] = v8;
  v22 = *a2 + 4;
  if (v14)
  {
    result = 0;
    v24 = a1[7] + v22;
LABEL_48:
    a1[7] = v24;
    return result;
  }

  if (v16)
  {
    v25 = -4 - *v16;
  }

  else
  {
    v25 = 0;
  }

  a1[7] += v22 + v25;
  free(v16);
  return 0;
}

uint64_t db_upgrade_lock(uint64_t a1)
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

  if (*(a1 + 196))
  {
LABEL_5:
    v6 = db_rwlock_alloc_waiter(a1);
    LODWORD(v6[1].__sig) = 1;
    *v6[1].__opaque = pthread_self();
    *(a1 + 160) = v6;
    *(a1 + 192) = v5;
    if ((v6[1].__sig & 0x100000000) == 0)
    {
      do
      {
        pthread_cond_wait(v6, a1);
      }

      while (BYTE4(v6[1].__sig) != 1);
    }

    *&v6[1].__opaque[8] = *(a1 + 168);
    *(a1 + 168) = v6;
  }

  else
  {
    v7 = (a1 + 16 * v5 + 80);
    v8 = v5 - 6;
    while (!__CFADD__(v8++, 1))
    {
      v11 = *v7;
      v7 += 2;
      v10 = v11;
      if (v11)
      {
        if (*(v10 + 48) >= 4u)
        {
          goto LABEL_5;
        }

        break;
      }
    }

    *(a1 + 212) = 0;
  }

  pthread_mutex_unlock(a1);
  return v2;
}

void __si_writeBackAndIndexWithLiveQueryToggle_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1 && (*(a1 + 73) & 0x20) != 0)
  {
    v4 = **(a1 + 40);
    v5 = *(a1 + 81);
    if (v5)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 48) >= 1)
    {
      v7 = *(a1 + 56);
    }

    v8 = v6 & 0xFFFFFFFC | (*(v4 + 40) >> 5) & 3;
    if (*(a1 + 82))
    {
      v11 = *(a1 + 82);
    }

    else
    {
      v9 = *(a1 + 82);
      if ((v5 & 1) == 0)
      {
        objectHasContent(*(*(a1 + 64) + 1192), v4);
        v10 = *(a1 + 82);
      }
    }

    v12 = *(*(*(a1 + 32) + 8) + 24);
    v13 = *(a1 + 76);
    *(v4 + 32) = a2;
    si_perform_livequeries_updates(*(a1 + 64));
  }
}

__n128 db_cache_mru(__n128 *a1, int a2)
{
  v2 = &a1[3 * a2 + 17];
  v16 = *v2;
  v17 = v2[1];
  v18 = v2[2];
  v3 = a1[15].n128_i32[a2 + 3];
  if (a2 >= 1)
  {
    v5 = a2;
    v6 = &a1[15].n128_u32[a2 + 3];
    v7 = &a1[3 * a2 + 17];
    v8 = v6;
    do
    {
      v9 = v7[-2];
      *v7 = v7[-3];
      v7[1] = v9;
      v7[2] = v7[-1];
      v10 = *--v8;
      *v6 = v10;
      if (v7->n128_u64[0] && (*(v7->n128_u64[0] + 12) & 0xC) == 0)
      {
        v12 = __si_assert_copy_extra_332();
        v13 = v12;
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Bad cache page at index %d; max %d, start %d", "page-cache.c", 680, "cache->cache_entries[i].cache_dbps->flags & DB_PAGE_COMPRESSION_ENABLED", v14, v5, a1[13].n128_u32[3], a2);
        free(v13);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      --v5;
      v7 -= 3;
      v6 = v8;
    }

    while ((v5 + 1) > 1);
  }

  a1[17] = v16;
  a1[18] = v17;
  result = v18;
  a1[19] = v18;
  a1[15].n128_u32[3] = v3;
  return result;
}

uint64_t CIOnThreadCleanUpClearItem(uint64_t result, unint64_t a2)
{
  v2 = &threadData[9 * result];
  if (*(v2 + 14) < a2)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1690, "td->onThreadCleanUpCount >= position", v6);
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

  v3 = (v2[8] + 16 * a2);
  *v3 = 0;
  v3[1] = 0;
  return result;
}

void *std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
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
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
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

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t RLEOIDArrayContainsOid(uint64_t a1, unint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 16));
  if (*(a1 + 384))
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    if ((*(a1 + 216) ^ a2) >> (-4 * v4))
    {
      goto LABEL_9;
    }
  }

  v5 = 60 - 4 * v4;
  v6 = *(a1 + 8 * ((a2 >> v5) & 0xF) + 256);
  if (v6)
  {
    v7 = v4 + 2;
    do
    {
      v5 = 64 - 4 * v7;
      v6 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((a2 >> v5) & 0xF));
      ++v7;
    }

    while ((v6 & 1) != 0);
  }

  if (!v6)
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    v8 = (*(*v6 + 16))(v6, a2, ~(-1 << v5));
  }

  pthread_rwlock_unlock((a1 + 16));
  return v8;
}

void si_perform_livequeries_updates(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v164 = v2;
  v4 = v3;
  v162 = v5;
  v6 = v1;
  v212 = *MEMORY[0x1E69E9840];
  bzero(values, 0x2000uLL);
  pthread_mutex_lock((v6 + 1712));
  Count = CFSetGetCount(*(v6 + 1776));
  v8 = Count;
  v167 = v6;
  if (Count >= 1024)
  {
    v9 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v6 + 1776), v9);
  }

  else
  {
    if (!Count)
    {
      v10 = 0;
      v9 = values;
      goto LABEL_14;
    }

    v9 = values;
    CFSetGetValues(*(v6 + 1776), values);
    if (v8 < 1)
    {
      v10 = 0;
      goto LABEL_14;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(v9[v11] + 5);
    do
    {
      v13 = v12;
      v12 = *(v12 + 80);
    }

    while (v12);
    if (si_resultqueue_count(**(v13 + 8)) <= 0x400)
    {
      v14 = v9[v11];
      atomic_fetch_add(v14, 1u);
      v9[v10++] = v14;
    }

    ++v11;
  }

  while (v11 != v8);
  v6 = v167;
LABEL_14:
  v152 = *(v6 + 1792) + 1;
  *(v6 + 1792) = v152;
  pthread_mutex_unlock((v6 + 1712));
  fields_generation = db_get_fields_generation(*(v6 + 1192));
  if (v10 >= 1)
  {
    v15 = 0;
    allocator = *MEMORY[0x1E695E480];
    v160 = v9;
    v161 = v10;
    while (1)
    {
      v163 = v15;
      v16 = v9[v15];
      v17 = v164;
      if (*(v4 + 24))
      {
        os_unfair_lock_lock(v16 + 12);
        if (v16[8]._os_unfair_lock_opaque < fields_generation)
        {
          v18 = *&v16[4]._os_unfair_lock_opaque;
          if (v18)
          {
            CFRelease(v18);
          }

          v19 = *&v16[6]._os_unfair_lock_opaque;
          if (v19)
          {
            CFRelease(v19);
          }

          Mutable = CFSetCreateMutable(allocator, 0, 0);
          *&v16[4]._os_unfair_lock_opaque = CFArrayCreateMutable(allocator, 0, 0);
          *&v16[6]._os_unfair_lock_opaque = CFArrayCreateMutable(allocator, 0, 0);
          v174[0] = MEMORY[0x1E69E9820];
          v174[1] = 0x40000000;
          v174[2] = __si_perform_livequeries_updates_block_invoke;
          v174[3] = &__block_descriptor_tmp_6_4900;
          v174[4] = v6;
          v174[5] = Mutable;
          v174[6] = v16;
          v21 = *(*&v16[2]._os_unfair_lock_opaque + 104);
          *v204 = MEMORY[0x1E69E9820];
          *&v204[8] = 0x40000000;
          *&v204[16] = __db_query_tree_apply_block_block_invoke;
          v205 = &unk_1E8198ED0;
          v206 = v174;
          db_query_tree_apply_block_with_meta(v21, v204, 0);
          CFRelease(Mutable);
          v22 = CFSetCreateMutable(allocator, 0, 0);
          v23 = *&v16[2]._os_unfair_lock_opaque;
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = CFArrayGetCount(*(v23 + 16));
            if (v25 >= 1)
            {
              v26 = v25;
              for (i = 0; i != v26; ++i)
              {
                bzero(v204, 0x400uLL);
                ValueAtIndex = CFArrayGetValueAtIndex(v24, i);
                if (CFStringGetCString(ValueAtIndex, v204, 1024, 0x8000100u) && (*(v6 + 2072) != 1 || *v204 ^ 0x6D657449444D6B5FLL | *&v204[8] ^ 0x4449656C646E7542 | v204[16]))
                {
                  v29 = *(v6 + 1192);
                  v168[0] = MEMORY[0x1E69E9820];
                  v168[1] = 0x40000000;
                  v169 = __si_perform_livequeries_updates_block_invoke_3;
                  v170 = &__block_descriptor_tmp_7_4902;
                  v171 = v6;
                  v172 = v22;
                  v173 = v16;
                  v198 = 0u;
                  v197 = 0u;
                  v30 = db_copy_field_ids_with_buffer(v29, v204, &v197, 8uLL);
                  if (v30)
                  {
                    v31 = v30;
                    if (*v30)
                    {
                      v32 = v30 + 1;
                      do
                      {
                        (v169)(v168);
                      }

                      while (*v32++);
                    }

                    v6 = v167;
                    if (v31 != &v197)
                    {
                      free(v31);
                    }
                  }
                }
              }
            }
          }

          CFRelease(v22);
          v16[8]._os_unfair_lock_opaque = fields_generation;
          v9 = v160;
        }

        v34 = CFRetain(*&v16[4]._os_unfair_lock_opaque);
        v35 = CFRetain(*&v16[6]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v16 + 12);
        v36 = CFArrayGetCount(v34);
        v17 = v164;
        if (v36)
        {
          v37 = v36;
          v17 = CFArrayGetValueAtIndex(v34, 0) ? v164 : v164 | 8;
          if (v37 >= 1)
          {
            v38 = 0;
            while (1)
            {
              v39 = *(v4 + 24);
              v40 = CFArrayGetValueAtIndex(v34, v38);
              if (CFSetContainsValue(v39, v40))
              {
                break;
              }

              if (v37 == ++v38)
              {
                goto LABEL_46;
              }
            }

            v17 |= 2u;
LABEL_46:
            v9 = v160;
          }
        }

        CFRelease(v34);
        v41 = CFArrayGetCount(v35);
        if (v41 >= 1)
        {
          v42 = v41;
          v43 = 0;
          while (1)
          {
            v44 = *(v4 + 24);
            v45 = CFArrayGetValueAtIndex(v35, v43);
            if (CFSetContainsValue(v44, v45))
            {
              break;
            }

            if (v42 == ++v43)
            {
              goto LABEL_53;
            }
          }

          v17 |= 4u;
LABEL_53:
          v9 = v160;
        }

        CFRelease(v35);
        if ((v17 & 6) == 0)
        {
          if (dword_1EBF46AD4 >= 5)
          {
            v54 = *__error();
            v55 = _SILogForLogForCategory(2);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v56 = *v162;
              v57 = *&v16[2]._os_unfair_lock_opaque;
              *v204 = 134218240;
              *&v204[4] = v56;
              *&v204[12] = 2048;
              *&v204[14] = v57;
              _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "skip dbo:%lld %p", v204, 0x16u);
            }

            *__error() = v54;
            v6 = v167;
          }

          goto LABEL_201;
        }
      }

      v46 = *&v16[2]._os_unfair_lock_opaque;
      v47 = *&v16[10]._os_unfair_lock_opaque;
      v48 = *(v46 + 144);
      *v204 = MEMORY[0x1E69E9820];
      *&v204[8] = 0x40000000;
      *&v204[16] = __query_once_block_invoke;
      v205 = &__block_descriptor_tmp_518;
      v206 = v46;
      if (v48 != -1)
      {
        dispatch_once((v46 + 144), v204);
      }

      v49 = *(v47 + 88);
      if (*v4 != 1)
      {
        break;
      }

      v50 = *(v46 + 136);
      if (v50 < 1)
      {
        v51 = 0;
      }

      else
      {
        v51 = 0;
        v52 = *(v46 + 128);
        v53 = *(v46 + 136);
        do
        {
          if (*(*v52 + 4))
          {
            *(v4 + 16) = 0;
            ++v51;
          }

          v52 += 16;
          --v53;
        }

        while (v53);
      }

      if (v51 != v50)
      {
        break;
      }

LABEL_201:
      si_livequery_release(v16);
      v15 = v163 + 1;
      if (v163 + 1 == v161)
      {
        goto LABEL_221;
      }
    }

    v187 = 0;
    v183 = v6;
    v184 = 0;
    v185 = v49;
    v186 = v17 & 1;
    v182 = &unk_1F427AF00;
    BYTE1(v186) = *(v4 + 16);
    HIDWORD(v186) = *(v4 + 4);
    v188 = *(v4 + 8);
    v179 = v162;
    v180 = 0;
    v181 = v152;
    if (v49)
    {
      v165 = *(v49 + 120);
    }

    else
    {
      v165 = 0;
    }

    v58 = *(v4 + 20);
    if ((v58 & 1) != 0 && (*(v46 + 200) & 0x80) == 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
LABEL_119:
      v83 = v16;
      v84 = *v162;
      v85 = v47;
      do
      {
        v86 = v85;
        v85 = *(v85 + 80);
      }

      while (v85);
      v87 = *(v86 + 40);
      if (RLEOIDArrayContainsOid(v87, *v162))
      {
        v158 = v46;
        v88 = v47;
        do
        {
          v89 = v88;
          v88 = *(v88 + 80);
        }

        while (v88);
        v166 = *(v89 + 8);
        v90 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
        if (dword_1EBF46AD0 >= 5)
        {
          v126 = *__error();
          v127 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            *v204 = 0;
            _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, "Passing up change to not match", v204, 2u);
          }

          *__error() = v126;
        }

        v90[1] = *(v47 + 48);
        v91 = v47;
        do
        {
          v92 = v91;
          v91 = *(v91 + 80);
        }

        while (v91);
        pthread_mutex_lock(&jobsLock);
        v93 = *(v92 + 32);
        if (v93)
        {
          atomic_fetch_add(v93, 1u);
        }

        pthread_mutex_unlock(&jobsLock);
        *(v90 + 1) = v93;
        *(v90 + 5) = 0;
        *v90 = 7;
        v94 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
        pthread_rwlock_wrlock((v87 + 16));
        v6 = v167;
        if ((*(v87 + 384) & 1) == 0)
        {
          v95 = *(v87 + 224);
          if (!v95 || *(v87 + 216) == ((-1 << (-4 * v95)) & v84))
          {
            SIValueSet<unsigned long long>::_SIValueSetInnerRemove(v87 + 256, v84, v95, v87 + 232);
          }
        }

        pthread_rwlock_unlock((v87 + 16));
        *v94 = 0;
        v96 = v47;
        do
        {
          v97 = v96;
          v96 = *(v96 + 80);
        }

        while (v96);
        *v94 = (*(*(v97 + 8) + 80) << 32) | 0xDE10001;
        v94[1] = v84;
        *(v90 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
        _MDStoreOIDArraySetShouldUseMalloc();
        *(v90 + 14) = 3;
        if (si_resultqueue_enqueue(v166, v90))
        {
          v16 = v83;
        }

        else
        {
          v16 = v83;
          if (dword_1EBF46AD0 >= 5)
          {
            v130 = *__error();
            v131 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
            {
              *v204 = 0;
              _os_log_impl(&dword_1C278D000, v131, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", v204, 2u);
            }

            *__error() = v130;
            v6 = v167;
          }

          SIResultBatchFree(v90);
        }

        v46 = v158;
      }

      else
      {
        v16 = v83;
      }

LABEL_187:
      v114 = *(v46 + 440) + CFAbsoluteTimeGetCurrent() - Current;
      *(v46 + 440) = v114;
      if (v114 > 1.0)
      {
        *(v46 + 440) = 0;
        v115 = *__error();
        v116 = _SILogForLogForCategory(2);
        v117 = v46;
        v118 = 2 * (dword_1EBF46AD4 < 4);
        if (os_log_type_enabled(v116, v118))
        {
          v119 = *(v117 + 8);
          *v204 = 134218498;
          *&v204[4] = v117;
          *&v204[12] = 2048;
          *&v204[14] = v114;
          *&v204[22] = 2112;
          v205 = v119;
          _os_log_impl(&dword_1C278D000, v116, v118, "live query:%p time:%f query:%@", v204, 0x20u);
        }

        *__error() = v115;
        v120 = v47;
        do
        {
          v121 = v120;
          v120 = *(v120 + 80);
        }

        while (v120);
        v122 = *(v121 + 8);
        v123 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
        v123[1] = *(v47 + 48);
        do
        {
          v124 = v47;
          v47 = *(v47 + 80);
        }

        while (v47);
        pthread_mutex_lock(&jobsLock);
        v125 = *(v124 + 32);
        if (v125)
        {
          atomic_fetch_add(v125, 1u);
        }

        pthread_mutex_unlock(&jobsLock);
        *(v123 + 1) = v125;
        *(v123 + 4) = v114;
        *v123 = 8;
        v6 = v167;
        if (!si_resultqueue_enqueue(v122, v123))
        {
          if (dword_1EBF46AD0 >= 5)
          {
            v128 = *__error();
            v129 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              *v204 = 0;
              _os_log_impl(&dword_1C278D000, v129, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", v204, 2u);
            }

            *__error() = v128;
            v6 = v167;
          }

          SIResultBatchFree(v123);
        }
      }

      v182 = &unk_1F427AF00;
      if (v187)
      {
        (*(*v187 + 8))(v187);
      }

      goto LABEL_201;
    }

    v151 = *(v4 + 20);
    if ((v58 & 2) != 0)
    {
      v60 = *(v46 + 200);
      Current = CFAbsoluteTimeGetCurrent();
      if ((v60 & 0x100) != 0)
      {
        goto LABEL_119;
      }
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
    }

    v150 = v49;
    if (*(v6 + 6624) && (HIDWORD(v186) || *(v6 + 2072) == 1))
    {
      v61 = *(v46 + 232);
      *v204 = MEMORY[0x1E69E9820];
      *&v204[8] = 0x40000000;
      *&v204[16] = __si_query_get_scope_node_block_invoke;
      v205 = &__block_descriptor_tmp_194;
      v206 = v46;
      v207 = v6;
      if (v61 != -1)
      {
        dispatch_once((v46 + 232), v204);
      }

      v62 = *(v46 + 224);
      if (v62)
      {
        v63 = *(v46 + 224);
        v64 = db_eval_obj_with_options(*(v6 + 1192));
        if (*(v46 + 224) != v62)
        {
          *v204 = MEMORY[0x1E69E9820];
          *&v204[8] = 0x40000000;
          *&v204[16] = __db_query_tree_apply_block_block_invoke;
          v205 = &unk_1E8198ED0;
          v206 = &__block_literal_global_174;
          db_query_tree_apply_block_with_meta(v62, v204, 0);
        }

        if (!v64)
        {
          goto LABEL_119;
        }
      }
    }

    v65 = *(v46 + 61);
    v147 = *(v46 + 256);
    v148 = *(v46 + 248);
    v66 = *(v46 + 60) ^ 1u;
    if ((v17 & 2) != 0)
    {
      if ((v17 & 8) != 0 && *(v4 + 16) == 1 && dword_1EBF46AD4 >= 5)
      {
        v139 = *__error();
        v140 = _SILogForLogForCategory(2);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          v141 = *v162;
          *v204 = 134218240;
          *&v204[4] = v141;
          *&v204[12] = 2048;
          *&v204[14] = v46;
          _os_log_impl(&dword_1C278D000, v140, OS_LOG_TYPE_DEFAULT, "slow path dbo:%lld %p", v204, 0x16u);
        }

        *__error() = v139;
        v6 = v167;
      }
    }

    else if ((v17 & 4) != 0)
    {
      v67 = v47;
      do
      {
        v68 = v67;
        v67 = *(v67 + 80);
      }

      while (v67);
      v69 = *(v68 + 40);
      if (!v69 || !RLEOIDArrayContainsOid(v69, *v162))
      {
        if (dword_1EBF46AD4 >= 5)
        {
          v136 = *__error();
          v137 = _SILogForLogForCategory(2);
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            v138 = *v162;
            *v204 = 134218240;
            *&v204[4] = v138;
            *&v204[12] = 2048;
            *&v204[14] = v46;
            _os_log_impl(&dword_1C278D000, v137, OS_LOG_TYPE_DEFAULT, "no match dbo:%lld %p", v204, 0x16u);
          }

          *__error() = v136;
          v6 = v167;
        }

        goto LABEL_119;
      }

      if (dword_1EBF46AD4 > 4)
      {
        v70 = *__error();
        v71 = _SILogForLogForCategory(2);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = *v162;
          *v204 = 134218240;
          *&v204[4] = v72;
          *&v204[12] = 2048;
          *&v204[14] = v46;
          _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "update dbo:%lld %p", v204, 0x16u);
        }

        *__error() = v70;
        v6 = v167;
      }

LABEL_106:
      v74 = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
      bzero(v204, 0x11E0uLL);
      PartialQueryResults::PartialQueryResults(v204, *(v46 + 16), *(v46 + 24), 0, 0, v74, *(v46 + 152), 0, *(v46 + 360), 0, 0, 0, 0, 1u);
      if (*(v46 + 152) >= 4)
      {
        if (v208)
        {
          PartialQueryResults::attributeVector(v204);
          v82 = v208;
        }

        else
        {
          v82 = 0;
        }

        collectAttributesFromDBO(v6, v162, v82, v204, v165);
        si_querypipe_addcoalescedresults(v47, v204, *(v6 + 1192), 1);
      }

      else
      {
        v75 = v47;
        do
        {
          v76 = v75;
          v75 = *(v75 + 80);
        }

        while (v75);
        v77 = RLEOIDArrayContainsOid(*(v76 + 40), *v162);
        v203 = 0;
        LOBYTE(v78) = 1;
        *&cf[1] = 0u;
        if (v77)
        {
          v79 = 2;
        }

        else
        {
          v79 = 1;
        }

        v144 = v77;
        v145 = v79;
        v200 = 0;
        v199 = 0;
        *(&v197 + 1) = 0;
        *&v198 = v6;
        *(&v198 + 1) = v150;
        v201 = 0uLL;
        memset(cf, 0, sizeof(cf));
        if (v6)
        {
          v78 = *(v6 + 6586) >> 7;
        }

        LOBYTE(v203) = v78;
        *&v197 = &unk_1F42826A0;
        v200 = v162;
        DWORD2(v197) = 4;
        v157 = v46;
        v146 = v74;
        if (v65)
        {
          v80 = 0;
          v81 = 0;
          v154 = -1;
        }

        else
        {
          v143 = v16;
          v155 = *(v46 + 288);
          if (v155 < 1)
          {
            v80 = 0;
            v81 = 0;
          }

          else
          {
            v98 = v46;
            v99 = 0;
            v80 = 0;
            v81 = 0;
            v100 = 0;
            v153 = *(v98 + 264);
            v149 = v4;
            do
            {
              v101 = (v153 + 24 * v99);
              v102 = v101[1];
              if (v102 < 1)
              {
                v104 = 0;
                v105 = 0;
              }

              else
              {
                v103 = 0;
                v104 = 0;
                v105 = 0;
                do
                {
                  if (*(*v101 + 8 * v103))
                  {
                    v106 = db_eval_obj_with_options(*(v167 + 1192)) != 0;
                    v107 = __CFADD__(v104, v106);
                    v104 += v106;
                    if (v107)
                    {
                      ++v105;
                    }
                  }

                  ++v103;
                  v102 = v101[1];
                }

                while (v102 > v103);
                v4 = v149;
              }

              v108 = (v105 << v100) | (v104 >> 1 >> ~v100);
              if ((v100 & 0x40) != 0)
              {
                v108 = v104 << v100;
                v109 = 0;
              }

              else
              {
                v109 = v104 << v100;
              }

              v81 |= v108;
              v80 |= v109;
              v100 += v102;
              ++v99;
            }

            while (v155 > v99);
          }

          v154 = *(v157 + 360);
          v6 = v167;
          v9 = v160;
          v16 = v143;
        }

        v110 = v47;
        do
        {
          v111 = v110;
          v110 = *(v110 + 80);
        }

        while (v110);
        if (v144)
        {
          v112 = 3213;
        }

        else
        {
          v112 = 2781;
        }

        v113 = PartialQueryResults::start(v204, *(*(v111 + 8) + 80), v112, 2uLL, 0);
        DWORD2(v197) |= 8u;
        *&v190[8] = v81;
        *v190 = v80;
        *&v190[16] = 0u;
        v191 = 0u;
        v192 = v154;
        v193 = 0;
        v195 = 0;
        v194 = 0;
        v196 = 0;
        v175 = 0;
        v176 = 0;
        v178 = 0;
        v177 = 0;
        writeDBOToPlistBytes(v6, v113, v204, v165, &v197, v150, v148, v147, 0, v190, 0, 0, &v175, 0, 0, 0, v157, 0);
        if ((v151 & 4) != 0 && v144)
        {
          *v190 = v80;
          *&v190[8] = v81;
          *&v190[16] = 0u;
          v191 = 0u;
          v192 = v154;
          v193 = 0;
          v195 = 0;
          v194 = 0;
          v196 = 0;
          v175 = 0;
          v176 = 0;
          v178 = 0;
          v177 = 0;
          writeDBOToPlistBytes(v6, v113, v204, v165, &v197, v150, v148, v147, 0, v190, 0, 0, &v175, 0, 0, 0, v157, 0);
        }

        if (v210)
        {
          _MDPlistBytesEndArray();
          _MDPlistBytesEndPlist();
        }

        v46 = v157;
        v74 = v146;
        if (v209)
        {
          _MDStoreOIDArrayEndBulkAdd();
          _MDStoreOIDArrayEndSequence();
          v211 = 0;
        }

        if (v200 == v162)
        {
          v200 = 0;
        }

        si_querypipe_addresults(v47, v204, v145, 0, v157);
        if (dword_1EBF46AD4 >= 5)
        {
          v132 = *__error();
          v133 = _SILogForLogForCategory(2);
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            v134 = *v162;
            v135 = *(v157 + 8);
            *v190 = 134218242;
            *&v190[4] = v134;
            *&v190[12] = 2112;
            *&v190[14] = v135;
            _os_log_impl(&dword_1C278D000, v133, OS_LOG_TYPE_DEFAULT, "True live query: (%lld) %@", v190, 0x16u);
          }

          *__error() = v132;
          v6 = v167;
        }

        *&v197 = &unk_1F42826A0;
        if (BYTE2(v203) && v200)
        {
          free(v200);
        }

        *&v197 = &unk_1F4282660;
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }

        if (cf[2])
        {
          free(cf[2]);
          cf[2] = 0;
        }

        if (cf[1])
        {
          CFRelease(cf[1]);
          cf[1] = 0;
        }

        if (BYTE1(v203) == 1)
        {
          free(v201);
        }
      }

      CFRelease(v74);
      PartialQueryResults::~PartialQueryResults(v204);
      goto LABEL_187;
    }

    if (*(v46 + 112) && !db_eval_obj_with_options(*(v6 + 1192)))
    {
      goto LABEL_119;
    }

    if (!*(v46 + 104))
    {
      v73 = *(v46 + 72);
    }

    if (!db_eval_obj_with_options(*(v6 + 1192)))
    {
      goto LABEL_119;
    }

    goto LABEL_106;
  }

LABEL_221:
  if (v9 != values)
  {
    free(v9);
  }

  v142 = *MEMORY[0x1E69E9840];
}