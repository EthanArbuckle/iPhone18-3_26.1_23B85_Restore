uint64_t ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 8 * a2);
  if (*v2 != v4)
  {
    *v2 = v4;
    if (!RLEOIDArrayContainsOid(*(a1 + 48), *(v3 + 8 * a2)))
    {
      if (*(a1 + 72) != 1 || *(*(a1 + 40) + 8 * a2 + 4) != 2147284299)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 56);
      v10 = *__error();
      v11 = _SILogForLogForCategory(1);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v12)
        {
          v13 = *(a1 + 64);
          v14 = *(v13 + 8);
          v15 = *(v14 + 608);
          v16 = *(v14 + 616);
          LODWORD(v14) = *(v14 + 152);
          v17 = *(*(a1 + 40) + 8 * a2);
          v18 = (*(a1 + 56) + 80 * a2);
          v20 = *v18;
          v19 = v18[1];
          v29 = 134219520;
          v30 = v13;
          v31 = 2048;
          v32 = v15;
          v33 = 2048;
          v34 = v16;
          v35 = 1024;
          v36 = v14;
          v37 = 2048;
          v38 = v17;
          v39 = 2048;
          v40 = v19;
          v41 = 2048;
          v42 = v20;
          v21 = "### query: %p qid: (%lld,%lld) kind:%d found 0x%llx %llx%016llx";
          v22 = v11;
          v23 = 68;
LABEL_12:
          _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, v21, &v29, v23);
        }
      }

      else if (v12)
      {
        v24 = *(a1 + 64);
        v25 = *(v24 + 8);
        v26 = *(v25 + 608);
        v27 = *(v25 + 616);
        LODWORD(v25) = *(v25 + 152);
        v28 = *(*(a1 + 40) + 8 * a2);
        v29 = 134219008;
        v30 = v24;
        v31 = 2048;
        v32 = v26;
        v33 = 2048;
        v34 = v27;
        v35 = 1024;
        v36 = v25;
        v37 = 2048;
        v38 = v28;
        v21 = "### query: %p qid: (%lld,%lld) kind:%d found 0x%llx";
        v22 = v11;
        v23 = 48;
        goto LABEL_12;
      }

      *__error() = v10;
LABEL_14:
      result = 1;
      goto LABEL_4;
    }
  }

  result = 0;
LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *si_add_livequery(uint64_t a1, atomic_uint *a2, atomic_uint *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10600408BC92946uLL);
  atomic_fetch_add(a2 + 146, 1u);
  *(v6 + 1) = a2;
  atomic_fetch_add(a3, 1u);
  *(v6 + 5) = a3;
  atomic_store(1u, v6);
  v6[12] = 0;
  pthread_mutex_lock((a1 + 1712));
  CFSetAddValue(*(a1 + 1776), v6);
  if (!*(a2 + 15))
  {
    v7 = *a2;
    v8 = *(*a2 + 152);
    if (!v8)
    {
      v8 = *(v7 + 112);
      if (v8)
      {
        os_unfair_lock_lock((v7 + 48));
        if (!*(v7 + 152))
        {
          *(v7 + 152) = CFStringCreateByCombiningStrings(*MEMORY[0x1E695E480], *(v7 + 112), @",");
        }

        os_unfair_lock_unlock((v7 + 48));
        v8 = *(v7 + 152);
      }
    }

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &stru_1F4284FD0;
    }

    CFDictionaryGetValue(*(a1 + 1784), v9);
    Value = CFDictionaryGetValue(*(a1 + 1784), v9);
    *(a2 + 15) = Value;
    if (Value)
    {
      atomic_fetch_add_explicit(Value + 18, 1u, memory_order_relaxed);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, 0x50uLL, 0xA4971684uLL);
      if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        LOWORD(v20.version) = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", &v20, 2u);
      }

      v20 = *byte_1F4281FF0;
      v11[1].__sig = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, &v20);
      pthread_mutex_init(v11, 0);
      *v11[1].__opaque = 1;
      *(a2 + 15) = v11;
      CFDictionaryAddValue(*(a1 + 1784), v9, v11);
    }

    v12 = compileToLiveQuery(*(a2 + 9));
    *(a2 + 13) = query_node_unique_retain(*(a2 + 15), v12);
    db_free_query_node(v12);
    v13 = *(a2 + 10);
    if (v13)
    {
      v14 = compileToLiveQuery(v13);
      *(a2 + 14) = query_node_unique_retain(*(a2 + 15), v14);
      db_free_query_node(v14);
    }

    if (dword_1EBF46AD4 >= 5)
    {
      v17 = *__error();
      v18 = _SILogForLogForCategory(2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        node_unique_set_copy_description = _query_node_unique_set_copy_description(*(a2 + 15));
        LODWORD(v20.version) = 138412290;
        *(&v20.version + 4) = node_unique_set_copy_description;
        _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "live query nodes: %@", &v20, 0xCu);
        *__error() = v17;
        if (node_unique_set_copy_description)
        {
          CFRelease(node_unique_set_copy_description);
        }
      }

      else
      {
        *__error() = v17;
      }
    }
  }

  pthread_mutex_unlock((a1 + 1712));
  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

int64_t _add_dirty_chunk(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v68 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 804) & 8) != 0)
  {
    v50 = *__error();
    v51 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v63 = "_add_dirty_chunk";
      v64 = 1024;
      v65 = 492;
      v66 = 2080;
      v67 = a1 + 324;
      _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: %s: ERR: Can't add dirty chunks to a read-only db!", buf, 0x1Cu);
    }

    *__error() = v50;
    v52 = __si_assert_copy_extra_3233(*(a1 + 840), -1);
    v53 = v52;
    v54 = "";
    if (v52)
    {
      v54 = v52;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ERR: Can't add dirty chunks to a read-only db %s\n", "sdb2.c", 493, "0", v54, (a1 + 324));
    free(v53);
    if (__valid_fsp(*(a1 + 840)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = a3;
  if (!a3)
  {
    v55 = __si_assert_copy_extra_3233(*(a1 + 840), -1);
    v56 = v55;
    v57 = "";
    if (v55)
    {
      v57 = v55;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ERR: Chunk size is null\n", "sdb2.c", 498, "size", v57);
    free(v56);
    if (!__valid_fsp(*(a1 + 840)))
    {
      v58 = 3072;
LABEL_86:
      *v58 = -559038737;
      abort();
    }

LABEL_83:
    v58 = 2989;
    goto LABEL_86;
  }

  LODWORD(v6) = a2;
  result = _dirty_datastore_locked(a1, a4);
  if (!result)
  {
    v8 = *(a1 + 872);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *(a1 + 872);
      while (1)
      {
        v11 = (v10 + v9) >> 1;
        v12 = *(*(a1 + 864) + 8 * v11);
        v13 = v11;
        if (v12 <= v6)
        {
          if (v12 >= v6)
          {
            goto LABEL_11;
          }

          v9 = v11 + 1;
          v13 = v10;
        }

        v10 = v13;
        if (v9 >= v13)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = 0;
LABEL_11:
    if (v11)
    {
      v14 = v11 - 1;
    }

    else
    {
      v14 = 0;
    }

    if (!v8)
    {
LABEL_42:
      v29 = *(a1 + 876);
      if (v8 + 1 >= v29)
      {
        *(a1 + 876) = v29 + 128;
        result = malloc_type_realloc(*(a1 + 864), 8 * (v29 + 128), 0x100004000313F17uLL);
        if (!result)
        {
          *(a1 + 876) -= 128;
          goto LABEL_48;
        }

        *(a1 + 864) = result;
        v8 = *(a1 + 872);
      }

      else
      {
        result = *(a1 + 864);
      }

      v30 = 8 * v14;
      result = memmove((result + v30 + 8), (result + v30), 8 * (v8 - v14));
      v31 = (*(a1 + 864) + v30);
      *v31 = v6;
      v31[1] = v5;
      v32 = *(a1 + 872) + 1;
      goto LABEL_47;
    }

    v15 = *(a1 + 12);
    while (1)
    {
      v16 = v6 << v15;
      v17 = v16 + v5;
      v18 = v14;
      v19 = (*(a1 + 864) + 8 * v14);
      while (1)
      {
        v20 = *v19;
        v21 = v19[1];
        v22 = v20 << v15;
        if (v16 >= v20 << v15 && v16 <= (v20 << v15) + v21)
        {
          break;
        }

        if (v22 <= v17 && v22 >= v16)
        {
          break;
        }

        if (v6 <= v20)
        {
          v14 = v18;
          goto LABEL_42;
        }

        ++v18;
        v19 += 2;
        if (v8 <= v18)
        {
          if (v8 <= v14 + 1)
          {
            ++v14;
          }

          else
          {
            v14 = *(a1 + 872);
          }

          goto LABEL_42;
        }
      }

      result = *v19;
      if (*v19 >= v6)
      {
        v25 = v6;
      }

      else
      {
        v25 = result;
      }

      v26 = result << v15;
      v27 = v26 + HIDWORD(result);
      if (v27 <= v17)
      {
        v27 = v16 + v5;
      }

      v28 = v27 - (v25 << v15);
      if (v28 <= 4294967294)
      {
        break;
      }

      if (v6 < result)
      {
        LODWORD(v5) = (result - v6) << v15;
        v14 = v18;
        goto LABEL_42;
      }

      v5 = (v26 + v21 - v17);
      v6 = (v26 + v21) >> v15;
      v14 = v18 + 1;
      if (v18 + 1 >= v8)
      {
        goto LABEL_42;
      }
    }

    *v19 = v25 | (v28 << 32);
    v34 = v18 + 1;
    v35 = *(a1 + 872);
    if (v18 + 1 < v35)
    {
      v36 = v18 + 1;
      v37 = 8 * (v18 + 1);
      while (1)
      {
        v38 = *(a1 + 864);
        v39 = (v38 + 8 * v18);
        v40 = *(a1 + 12);
        v41 = *v39 << v40;
        v42 = (v38 + v37);
        result = *v42 << v40;
        if ((v41 < result || v41 > result + v42[1]) && (result < v41 || result > v41 + v39[1]))
        {
          goto LABEL_72;
        }

        v45 = *v39;
        v46 = *v42;
        if (*v39 >= v46)
        {
          result = v46;
        }

        else
        {
          result = v45;
        }

        v47 = (v45 << v40) + HIDWORD(v45);
        if (v47 <= ((v46 << v40) + HIDWORD(v46)))
        {
          v47 = (v46 << v40) + HIDWORD(v46);
        }

        v48 = v47 - (result << v40);
        if (v48 > 4294967294)
        {
          break;
        }

        *v39 = result | (v48 << 32);
        ++v36;
        v35 = *(a1 + 872);
        v37 += 8;
        if (v35 <= v36)
        {
          goto LABEL_72;
        }
      }

      if (v45 < v46)
      {
        v39[1] = (v46 - v45) << v40;
LABEL_72:
        v49 = v34 - v36;
        if (v34 < v36)
        {
          result = memmove((*(a1 + 864) + 8 * v18 + 8), (*(a1 + 864) + 8 * v36), 8 * (v35 - v36));
          v32 = v49 + *(a1 + 872);
LABEL_47:
          *(a1 + 872) = v32;
          goto LABEL_48;
        }

        goto LABEL_48;
      }

      v59 = __si_assert_copy_extra_3233(0, -1);
      v60 = v59;
      if (v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 544, v61);
      free(v60);
      goto LABEL_83;
    }
  }

LABEL_48:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fd_sync(uint64_t a1, int a2)
{
  fd_system_status_stall_if_busy();
  v8 = 0;
  result = _fd_acquire_fd(a1, &v8);
  if (result != -1)
  {
    v5 = result;
    if (a2)
    {
      v6 = (*(a1 + 56) & 8) == 0;
    }

    else
    {
      v6 = 0;
    }

    v7 = prot_fsync(result, v6);
    _fd_release_fd(a1, v5, 0, v8);
    return v7;
  }

  return result;
}

uint64_t db_downgrade_datastore(int *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      *buf = 136315650;
      v11 = "db_downgrade_datastore";
      v12 = 1024;
      v13 = 266;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 266, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  pthread_mutex_lock((a1 + 146));
  *(a1 + 796) = 1;
  db_rwlock_wakeup((a1 + 146), 1, 1);
  v2 = *MEMORY[0x1E69E9840];

  return pthread_mutex_unlock((a1 + 146));
}

uint64_t db_store_dirty_chunk_info(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v4 = a1;
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_20;
  }

  if (unlinkat(a2, "store.updates", 0) == -1)
  {
    v8 = *__error();
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db_store_dirty_chunk_info";
      *&buf[12] = 1024;
      *&buf[14] = 758;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Error unliking store.updates: %d", buf, 0x18u);
    }

    *__error() = v9;
  }

  v11 = si_openat_protected(a2, "store.updates", 536872450, 3);
  if (v11 != -1)
  {
    v12 = v11;
    v46 = 0u;
    v47 = 0u;
    memset(buf, 0, sizeof(buf));
    if ((store_stream_init_fd(buf, v11, 0, 0, 1) & 1) == 0)
    {
      v4 = *&buf[16];
      if (!*&buf[16])
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (a3)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_31;
    }

    if (*v4 == 1685287992)
    {
      v22 = *(v4 + 804);
      if ((v22 & 0x14) != 0 || !*(*(v4 + 880) + 8) && !*(*(v4 + 888) + 8) && !*(*(v4 + 896) + 8) && !*(*(v4 + 904) + 8) && !*(*(v4 + 912) + 8))
      {
        if (*(*(v4 + 856) + 12))
        {
          v37 = __si_assert_copy_extra_3233(0, -1);
          v30 = v37;
          v38 = "";
          if (v37)
          {
            v38 = v37;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 15238, "(dst->dbm->flags& 0x0001) == 0", v38);
LABEL_48:
          free(v30);
          if (__valid_fs(-1))
          {
            v32 = 2989;
          }

          else
          {
            v32 = 3072;
          }

          *v32 = -559038737;
          abort();
        }

        v15 = *(v4 + 864);
        v13 = *(v4 + 872);
        v14 = *(v4 + 876);
        if (a4)
        {
          *(v4 + 4) |= 8u;
          *(v4 + 804) = v22 | 8;
        }

LABEL_31:
        v23 = *(&v46 + 1);
        if (v46 - *(&v46 + 1) < 6uLL)
        {
          *&__src[9] = 0;
          *&__src[1] = 0;
          *&__src[24] = 0;
          *&__src[17] = 0;
          __src[0] = 1;
          store_stream_write_bytes(buf, __src, 1uLL);
        }

        else
        {
          *(v47 + *(&v46 + 1)) = 1;
          *(&v46 + 1) = v23 + 1;
        }

        store_stream_write_vint32(buf, v13);
        store_stream_write_vint32(buf, v14);
        if (v13)
        {
          v24 = 0;
          v25 = 0;
          do
          {
            if (v24 * 4)
            {
              v26 = v15[v24];
              if (v26 <= v15[v24 - 2])
              {
                v29 = __si_assert_copy_extra_332();
                v30 = v29;
                v31 = "";
                if (v29)
                {
                  v31 = v29;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "core-db.c", 795, "dirty_chunks[i].pgnum > dirty_chunks[i-1].pgnum", v31);
                goto LABEL_48;
              }

              v27 = v26 - v25;
            }

            else
            {
              v27 = *v15;
            }

            store_stream_write_vint32(buf, v27);
            if (v15[v24 + 1] == 0x10000)
            {
              v28 = 0;
            }

            else
            {
              v28 = v15[v24 + 1];
            }

            store_stream_write_vint32(buf, v28);
            v25 = v15[v24];
            v24 += 2;
          }

          while (2 * v13 != v24);
        }

        store_stream_flush(buf, 1);
        v4 = *&buf[16];
        store_stream_destroy(buf);
        if (!v4)
        {
LABEL_16:
          close(v12);
          if (!v4)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_15:
        _fd_ftruncate(v12, 0);
        goto LABEL_16;
      }

      v33 = __si_assert_copy_extra_3233(0, -1);
      v34 = v33;
      v35 = "";
      if (v33)
      {
        v35 = v33;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 15236, "dst->string_table[i]->dirty_page == 0", v35);
      free(v34);
      if (!__valid_fs(-1))
      {
        v36 = 3072;
LABEL_61:
        *v36 = -559038737;
        abort();
      }
    }

    else
    {
      v39 = *__error();
      v40 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = *v4;
        *__src = 136315650;
        *&__src[4] = "db_get_dirty_chunks";
        *&__src[12] = 1024;
        *&__src[14] = 434;
        *&__src[18] = 1024;
        *&__src[20] = v41;
        _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", __src, 0x18u);
      }

      *__error() = v39;
      v42 = __si_assert_copy_extra_332();
      v43 = v42;
      if (v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 434, v44);
      free(v43);
    }

    v36 = 2989;
    goto LABEL_61;
  }

  v4 = *__error();
  v16 = *__error();
  v17 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "db_store_dirty_chunk_info";
    *&buf[12] = 1024;
    *&buf[14] = 765;
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Error opening store.updates: %d", buf, 0x18u);
  }

  *__error() = v16;
  if (v4)
  {
LABEL_17:
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db_store_dirty_chunk_info";
      *&buf[12] = 1024;
      *&buf[14] = 816;
      *&buf[18] = 1024;
      *&buf[20] = v4;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Error storing dirty sdb pages: %d", buf, 0x18u);
    }

    *__error() = v18;
  }

LABEL_20:
  v20 = *MEMORY[0x1E69E9840];
  return v4;
}

void *store_stream_write_vint32(void *result, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = result[5];
  if ((result[4] - v2) < 6)
  {
    memset(v10, 0, sizeof(v10));
    if (a2 >> 28)
    {
      LOBYTE(v10[0]) = a2 | 0x80;
      BYTE1(v10[0]) = (a2 >> 7) | 0x80;
      BYTE2(v10[0]) = (a2 >> 14) | 0x80;
      BYTE3(v10[0]) = (a2 >> 21) | 0x80;
      BYTE4(v10[0]) = a2 >> 28;
      v9 = 5;
    }

    else if (a2 >= 0x200000)
    {
      LOBYTE(v10[0]) = a2 | 0x80;
      BYTE1(v10[0]) = (a2 >> 7) | 0x80;
      BYTE2(v10[0]) = (a2 >> 14) | 0x80;
      BYTE3(v10[0]) = a2 >> 21;
      v9 = 4;
    }

    else if (a2 >= 0x4000)
    {
      LOBYTE(v10[0]) = a2 | 0x80;
      BYTE1(v10[0]) = (a2 >> 7) | 0x80;
      BYTE2(v10[0]) = a2 >> 14;
      v9 = 3;
    }

    else if (a2 >= 0x80)
    {
      LOBYTE(v10[0]) = a2 | 0x80;
      BYTE1(v10[0]) = a2 >> 7;
      v9 = 2;
    }

    else
    {
      LOBYTE(v10[0]) = a2;
      v9 = 1;
    }

    result = store_stream_write_bytes(result, v10, v9);
  }

  else
  {
    v3 = result[6];
    if (a2 >> 28)
    {
      v6 = (v3 + v2);
      *v6 = a2 | 0x80;
      v6[1] = (a2 >> 7) | 0x80;
      v6[2] = (a2 >> 14) | 0x80;
      v6[3] = (a2 >> 21) | 0x80;
      v5 = v2 + 5;
      v6[4] = a2 >> 28;
    }

    else if (a2 >= 0x200000)
    {
      v7 = (v3 + v2);
      *v7 = a2 | 0x80;
      v7[1] = (a2 >> 7) | 0x80;
      v7[2] = (a2 >> 14) | 0x80;
      v5 = v2 + 4;
      v7[3] = a2 >> 21;
    }

    else
    {
      v4 = (v3 + v2);
      if (a2 >= 0x4000)
      {
        *v4 = a2 | 0x80;
        v4[1] = (a2 >> 7) | 0x80;
        v5 = v2 + 3;
        v4[2] = a2 >> 14;
      }

      else if (a2 >= 0x80)
      {
        *v4 = a2 | 0x80;
        v5 = v2 + 2;
        v4[1] = a2 >> 7;
      }

      else
      {
        v5 = v2 + 1;
        *v4 = a2;
      }
    }

    result[5] = v5;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v11 = *MEMORY[0x1E69E9840];
  v2 = result[5];
  if ((result[4] - v2) < 6)
  {
    memset(v10, 0, sizeof(v10));
    if (a2 >> 28)
    {
      LOBYTE(v10[0]) = a2 | 0x80;
      BYTE1(v10[0]) = (a2 >> 7) | 0x80;
      BYTE2(v10[0]) = (a2 >> 14) | 0x80;
      BYTE3(v10[0]) = (a2 >> 21) | 0x80;
      BYTE4(v10[0]) = a2 >> 28;
      v9 = 5;
    }

    else if (a2 >= 0x200000)
    {
      LOBYTE(v10[0]) = a2 | 0x80;
      BYTE1(v10[0]) = (a2 >> 7) | 0x80;
      BYTE2(v10[0]) = (a2 >> 14) | 0x80;
      BYTE3(v10[0]) = a2 >> 21;
      v9 = 4;
    }

    else if (a2 >= 0x4000)
    {
      LOBYTE(v10[0]) = a2 | 0x80;
      BYTE1(v10[0]) = (a2 >> 7) | 0x80;
      BYTE2(v10[0]) = a2 >> 14;
      v9 = 3;
    }

    else if (a2 >= 0x80)
    {
      LOBYTE(v10[0]) = a2 | 0x80;
      BYTE1(v10[0]) = a2 >> 7;
      v9 = 2;
    }

    else
    {
      LOBYTE(v10[0]) = a2;
      v9 = 1;
    }

    result = store_stream_write_bytes_3266(result, v10, v9);
  }

  else
  {
    v3 = result[6];
    if (a2 >> 28)
    {
      v6 = (v3 + v2);
      *v6 = a2 | 0x80;
      v6[1] = (a2 >> 7) | 0x80;
      v6[2] = (a2 >> 14) | 0x80;
      v6[3] = (a2 >> 21) | 0x80;
      v5 = v2 + 5;
      v6[4] = a2 >> 28;
    }

    else if (a2 >= 0x200000)
    {
      v7 = (v3 + v2);
      *v7 = a2 | 0x80;
      v7[1] = (a2 >> 7) | 0x80;
      v7[2] = (a2 >> 14) | 0x80;
      v5 = v2 + 4;
      v7[3] = a2 >> 21;
    }

    else
    {
      v4 = (v3 + v2);
      if (a2 >= 0x4000)
      {
        *v4 = a2 | 0x80;
        v4[1] = (a2 >> 7) | 0x80;
        v5 = v2 + 3;
        v4[2] = a2 >> 14;
      }

      else if (a2 >= 0x80)
      {
        *v4 = a2 | 0x80;
        v5 = v2 + 2;
        v4[1] = a2 >> 7;
      }

      else
      {
        v5 = v2 + 1;
        *v4 = a2;
      }
    }

    result[5] = v5;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_commit_sync_datastore(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v21 = *__error();
    v22 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_commit_sync_datastore";
      v28 = 1024;
      v29 = 269;
      v30 = 1024;
      LODWORD(v31) = v23;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v21;
    v24 = __si_assert_copy_extra_332();
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 269, v26);
    free(v25);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = data_map_count(*(a1 + 920));
      *buf = 134217984;
      *&buf[4] = v20;
      _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "Commit sync at vector count %lld", buf, 0xCu);
    }

    *__error() = v18;
  }

  v4 = *(a1 + 4);
  if ((v4 & 2) == 0)
  {
    v5 = v4 | 0x401;
    v4 = v4 & 0xFFFFF9FC | 0x201;
    if (a2)
    {
      v4 = v5;
    }

    *(a1 + 4) = v4;
  }

  if ((v4 & 0x80) != 0)
  {
    v6.i32[0] = *a1;
    v6.i32[1] = v4;
    v6.i64[1] = *(a1 + 8);
    *a1 = vrev32q_s8(v6);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  v7 = fd_pwrite(*(a1 + 848), a1, 0x1000uLL, 0);
  v8 = *__error();
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  if (v7 == 4096)
  {
    v9 = *(a1 + 848);
    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    *buf = 0;
    v10 = _fd_acquire_fd(v9, buf);
    if (v10 != -1)
    {
      v11 = v10;
      prot_fsync(v10, 0);
      _fd_release_fd(v9, v11, 0, *buf);
    }

    if ((*(a1 + 804) & 0x14) != 0)
    {
      data_map_commit_sync(*(a1 + 880));
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_map_commit_sync(*(a1 + 888));
        if ((*(a1 + 804) & 0x14) != 0)
        {
          data_map_commit_sync(*(a1 + 896));
          if ((*(a1 + 804) & 0x14) != 0)
          {
            data_map_commit_sync(*(a1 + 904));
            if ((*(a1 + 804) & 0x14) != 0)
            {
              data_map_commit_sync(*(a1 + 912));
            }
          }
        }
      }
    }

    data_map_commit_sync(*(a1 + 920));
    v8 = 0;
  }

  else
  {
    *(a1 + 800) = v8;
    v12 = *__error();
    v13 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136315906;
      *&buf[4] = "db2_commit_sync_datastore";
      v28 = 1024;
      v29 = 8677;
      v30 = 2080;
      v31 = a1 + 324;
      v32 = 2080;
      v33 = v17;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: ERR: Can't write DST header (%s)\n", buf, 0x26u);
    }

    *__error() = v12;
    *(a1 + 4) |= 2u;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t data_map_commit_sync(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_28;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = data_map_commit_sync(*(a1 + 440));
      v14 = (*(**(a1 + 448) + 48))(*(a1 + 448));
      if (v2 != v14)
      {
        v29 = v14;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v35 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v36 = 1024;
          *v37 = 267;
          *&v37[4] = 2080;
          *&v37[6] = "data_map_double_commit_sync";
          v38 = 2080;
          v39 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v35 = v2;
          v36 = 2048;
          *v37 = v29;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v30 = __si_assert_copy_extra_332();
        v31 = v30;
        v32 = "";
        if (v30)
        {
          v32 = v30;
        }

        __message_assert(v30, "data_map_double.m", 267, "output == output_new", v32);
        free(v31);
        if (__valid_fs(-1))
        {
          v33 = 2989;
        }

        else
        {
          v33 = 3072;
        }

        *v33 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v3 == -270471200)
    {
      if (*(a1 + 480) || (v4 = *(*(a1 + 272) + 16), v4 == 1))
      {
        v5 = *__error();
        v6 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 224);
          *buf = 134217984;
          v35 = v7;
          _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Already clean cs; don't update next_id = %lld", buf, 0xCu);
        }

        *__error() = v5;
      }

      else
      {
        v16 = *(a1 + 408);
        if (v4 == 2)
        {
          v17 = 3;
        }

        else
        {
          v17 = 0;
        }

        if (v4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 1;
        }

        SIActivityJournalEvent(v16, *(a1 + 416), 8u, v18, *(a1 + 224));
        v19 = *(a1 + 272);
        *(v19 + 16) = 2;
        fd_pwrite(*(a1 + 248), v19, 0x54uLL, 0);
        v20 = *__error();
        v21 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 224);
          *buf = 134217984;
          v35 = v22;
          _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "cs update next_id = %lld", buf, 0xCu);
        }

        *__error() = v20;
        fd_sync(*(a1 + 248), 0);
        v23 = *(a1 + 272);
        if (v23)
        {
          v24 = *(v23 + 16);
          if (v24 < 3)
          {
            v25 = v24 + 1;
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

        SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 9u, v25, *(a1 + 224));
      }

      v2 = *(a1 + 480);
    }

    goto LABEL_28;
  }

  if (v3 == 1684300900)
  {
    if (*(a1 + 4576) || (v10 = *(a1 + 272), *(v10 + 16) == 1))
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 224);
        *buf = 134217984;
        v35 = v13;
        _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Already clean cs; don't update next_id = %lld", buf, 0xCu);
      }

      *__error() = v11;
    }

    else
    {
      *(v10 + 16) = 2;
      fd_pwrite(*(a1 + 248), v10, 0x5CuLL, 0);
      v26 = *__error();
      v27 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 224);
        *buf = 134217984;
        v35 = v28;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "cs update next_id = %lld", buf, 0xCu);
      }

      *__error() = v26;
      fd_sync(*(a1 + 248), 0);
    }

    v2 = *(a1 + 4576);
    goto LABEL_28;
  }

  if (v3 != 842150450)
  {
LABEL_28:
    v15 = *MEMORY[0x1E69E9840];
    return v2;
  }

  v8 = *MEMORY[0x1E69E9840];

  return data_map32_commit_sync(a1);
}

uint64_t data_map32_commit_sync(uint64_t a1)
{
  result = *(a1 + 1464);
  if (!result)
  {
    v3 = *(*(a1 + 1296) + 16);
    if (v3 == 1)
    {
      return 0;
    }

    else
    {
      if (v3 == 2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        v5 = v4;
      }

      else
      {
        v5 = 1;
      }

      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 8u, v5, *(a1 + 220));
      v6 = *(a1 + 1296);
      *(v6 + 16) = 2;
      fd_pwrite(*(a1 + 1272), v6, 0x38uLL, 0);
      fd_sync(*(a1 + 1272), 0);
      v7 = *(a1 + 1296);
      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8 < 3)
        {
          v9 = v8 + 1;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 9u, v9, *(a1 + 220));
      return *(a1 + 1464);
    }
  }

  return result;
}

uint64_t db_shadow_datastore(uint64_t a1, int a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = *a1;
      *valuePtr = 136315650;
      *&valuePtr[4] = "db_shadow_datastore";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = 270;
      v45 = 1024;
      v46 = v39;
      _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", valuePtr, 0x18u);
    }

    *__error() = v37;
    v40 = __si_assert_copy_extra_332();
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 270, v42);
    free(v41);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v34 = *__error();
    v35 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = data_map_count(*(a1 + 920));
      *valuePtr = 134217984;
      *&valuePtr[4] = v36;
      _os_log_impl(&dword_1C278D000, v35, OS_LOG_TYPE_DEFAULT, "Shadow at vector count %lld", valuePtr, 0xCu);
    }

    *__error() = v34;
  }

  v4 = *(a1 + 848);
  if (v4)
  {
    v5 = *(v4 + 44);
  }

  else
  {
    v5 = -1;
  }

  *valuePtr = v5;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v7 = CFSetContainsValue(registeredCloneFds, v6);
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v6);
    if (v7 && (*(a1 + 988) & 1) == 0)
    {
      v8 = a2 ^ 1;
      v9 = fd_copyfile(*(a1 + 848), *(a1 + 840), a2 ^ 1u);
      if ((v8 & 1) == 0)
      {
        if (db_upgrade_lock(a1 + 584))
        {
          sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 8718);
        }

        v10 = *__error();
        v11 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "Defragging index...", valuePtr, 2u);
        }

        *__error() = v10;
        v12 = *(a1 + 848);
        v13 = fd_dup(v12);
        *(a1 + 848) = v13;
        if (*(a1 + 988) == 1)
        {
          if (v12)
          {
            v14 = *(v12 + 88);
          }

          else
          {
            v14 = 0.0;
          }

          v23 = v14 - CFAbsoluteTimeGetCurrent();
          if (v23 > 0.0)
          {
            v43 = 0;
            v24 = _fd_acquire_fd(v13, &v43);
            *valuePtr = 0;
            *&valuePtr[8] = (v23 * 1000000000.0);
            if (!fcntl(v24, 108, valuePtr))
            {
              if (v12)
              {
                *(v12 + 88) = 0;
              }

              if (v13)
              {
                *(v13 + 11) = v14;
              }
            }

            _fd_release_fd(v13, v24, 0, v43);
          }

          v13 = *(a1 + 848);
        }

        fd_copyfile(*(a1 + 840), v13, 1);
        fd_release(v12);
        pthread_mutex_lock((a1 + 584));
        *(a1 + 796) = 1;
        db_rwlock_wakeup(a1 + 584, 1, 1);
        pthread_mutex_unlock((a1 + 584));
      }

      if (v9)
      {
        v25 = *__error();
        v26 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 136315906;
          *&valuePtr[4] = "db2_shadow_datastore";
          *&valuePtr[12] = 1024;
          *&valuePtr[14] = 8739;
          v45 = 1024;
          v46 = v9;
          v47 = 2080;
          v48 = a1 + 324;
          _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: copyFile: ERR:%d (%s)\n", valuePtr, 0x22u);
        }

        *__error() = v25;
        v18 = *(a1 + 4);
LABEL_46:
        *(a1 + 4) = v18 | 2;
        *(a1 + 800) = v9;
        goto LABEL_55;
      }

      *(a1 + 872) = 0;
      goto LABEL_48;
    }
  }

  else
  {
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v6);
  }

  if ((*(a1 + 4) & 0x80) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  v15 = sync_dirty_chunks(a1);
  if (!v15)
  {
    v20 = *(a1 + 840);
    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    *valuePtr = 0;
    v21 = _fd_acquire_fd(v20, valuePtr);
    if (v21 != -1)
    {
      v22 = v21;
      prot_fsync(v21, 0);
      _fd_release_fd(v20, v22, 0, *valuePtr);
    }

LABEL_48:
    if ((*(a1 + 804) & 0x14) != 0)
    {
      data_map_shadow(*(a1 + 880));
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_map_shadow(*(a1 + 888));
        if ((*(a1 + 804) & 0x14) != 0)
        {
          data_map_shadow(*(a1 + 896));
          if ((*(a1 + 804) & 0x14) != 0)
          {
            data_map_shadow(*(a1 + 904));
            if ((*(a1 + 804) & 0x14) != 0)
            {
              data_map_shadow(*(a1 + 912));
            }
          }
        }
      }
    }

    data_map_shadow(*(a1 + 920));
    v9 = 0;
    goto LABEL_55;
  }

  v9 = v15;
  v16 = *__error();
  v17 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *valuePtr = 136315906;
    *&valuePtr[4] = "db2_shadow_datastore";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 8790;
    v45 = 1024;
    v46 = v9;
    v47 = 2080;
    v48 = a1 + 324;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: sync_dirty_chunks: ERR:%d (%s)\n", valuePtr, 0x22u);
  }

  *__error() = v16;
  v18 = *(a1 + 4);
  if (v18 < 0)
  {
    v19 = vrev32q_s8(*a1);
    *a1 = v19;
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
    v18 = v19.i32[1];
  }

  if (v9 != 28)
  {
    goto LABEL_46;
  }

LABEL_55:
  v27 = *__error();
  v28 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 920);
    if (v29)
    {
      v30 = 0;
      v31 = *(v29 + 216);
      if (v31 > 842150449)
      {
        if (v31 != 1684300900)
        {
          if (v31 == 842150450)
          {
            v30 = (*(v29 + 220) - 1);
          }

          goto LABEL_67;
        }
      }

      else
      {
        if (v31 == -572662307)
        {
          v30 = data_map_double_count(*(a1 + 920));
          goto LABEL_67;
        }

        if (v31 != -270471200)
        {
          goto LABEL_67;
        }
      }

      v30 = *(v29 + 224) - 1;
    }

    else
    {
      v30 = 0;
    }

LABEL_67:
    *valuePtr = 134217984;
    *&valuePtr[4] = v30;
    _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "Shadow completed at vector count %lld", valuePtr, 0xCu);
  }

  *__error() = v27;
  v32 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sync_dirty_chunks(uint64_t a1)
{
  v103 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *(a1 + 12) = bswap32(*(a1 + 12));
  }

  st_size = fd_lseek(*(a1 + 848), 0, 2);
  if ((st_size & 0x8000000000000000) == 0)
  {
LABEL_4:
    v3 = fd_lseek(*(a1 + 840), 0, 2);
    if (v3 != -1)
    {
      v4 = *(a1 + 872);
      memset(v95, 0, sizeof(v95));
      v93 = 0;
      v94 = v95;
      if (!v4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v22 = 0;
          LOWORD(buf.st_dev) = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", &buf, 2u);
          v23 = -1;
          v24 = -1;
          v25 = 0;
        }

        else
        {
          v23 = -1;
          v24 = -1;
          v25 = 0;
          v22 = 0;
        }

        goto LABEL_58;
      }

      v5 = v3;
      v6 = fd_mmap(*(a1 + 848));
      if (v6 != -1)
      {
        v7 = v6;
        v8 = v6;
        v9 = fd_mmap(*(a1 + 840));
        if (v9 == -1)
        {
          v12 = *__error();
          v48 = _SILogForLogForCategory(7);
          v49 = 2 * (dword_1EBF46AE8 < 4);
          if (os_log_type_enabled(v48, v49))
          {
            LOWORD(buf.st_dev) = 0;
            _os_log_impl(&dword_1C278D000, v48, v49, "sync_dirty_chunks: ERR: Failed to map master", &buf, 2u);
          }

          v15 = -1;
          goto LABEL_46;
        }

        v10 = v9;
        v11 = v9;
        if (v5 != st_size && fd_truncate(*(a1 + 840), st_size))
        {
          v12 = *__error();
          v13 = _SILogForLogForCategory(7);
          v14 = 2 * (dword_1EBF46AE8 < 4);
          if (os_log_type_enabled(v13, v14))
          {
            buf.st_dev = 134217984;
            *&buf.st_mode = st_size;
            _os_log_impl(&dword_1C278D000, v13, v14, "sync_dirty_chunks: ERR: Failed to truncate master fd to %lld\n", &buf, 0xCu);
          }

          v15 = v11;
LABEL_46:
          v50 = v15;
          *__error() = v12;
          v51 = *__error();
          v52 = v8;
          v53 = v50;
          v54 = st_size;
          goto LABEL_89;
        }

        v32 = v94;
        *v94 = v8;
        v32[1] = st_size;
        v32[2] = *(a1 + 840);
        v32[3] = v11;
        v87 = v11;
        v32[4] = st_size;
        v32[5] = *(a1 + 848);
        v93 = 2;
        add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        buf.st_dev = 0;
        *v96 = 0;
        v34 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, &v93, 0x40000000, add_explicit + 1);
        *v96 = HIDWORD(v34);
        buf.st_dev = v34;
        v92 = __PAIR64__(v35, v36);
        v37 = threadData[9 * v34 + 1] + 320 * HIDWORD(v34);
        *(v37 + 216) = 0;
        v38 = *(v37 + 312);
        v39 = *(v37 + 224);
        v40 = v37;
        if (v39)
        {
          v39(*(v37 + 288));
        }

        st_dev = buf.st_dev;
        v90 = *v96;
        v89 = v92;
        if (!_setjmp(v40))
        {
          v86 = add_explicit;
          v55 = 0;
          v56 = v4;
          do
          {
            v57 = *(a1 + 864);
            v58 = *(v57 + v55) << *(a1 + 12);
            if (st_size > v58)
            {
              v59 = *(v57 + v55 + 4);
              if ((v58 + v59) <= st_size)
              {
                v59 = v59;
              }

              else
              {
                v59 = (st_size - v58);
              }

              memcpy((v10 + v58), (v7 + v58), v59);
            }

            v55 += 8;
            --v56;
          }

          while (v56);
          v60 = threadData[9 * st_dev + 1] + 320 * v90;
          *(v60 + 312) = v38;
          v61 = *(v60 + 232);
          if (v61)
          {
            v61(*(v60 + 288));
          }

          dropThreadId(st_dev, 0, v86 + 1);
          v22 = v4;
          v24 = v8;
          v23 = v87;
          v25 = st_size;
LABEL_58:
          if (v4 != *(a1 + 872))
          {
            v83 = __si_assert_copy_extra_3233(0, -1);
            v84 = v83;
            v85 = "";
            if (v83)
            {
              v85 = v83;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 880, "num_chunks == dst->num_chunks", v85);
            free(v84);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v62 = fd_lseek(*(a1 + 840), 0, 2);
          if (v62 == -1)
          {
            goto LABEL_68;
          }

          if (v4 && v22 != *(a1 + 872))
          {
            v67 = *__error();
            if (v67)
            {
              v66 = v67;
            }

            else
            {
              v66 = 22;
            }

            v68 = *__error();
            v69 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v82 = *(a1 + 872);
              buf.st_dev = 136316418;
              *&buf.st_mode = "sync_dirty_chunks";
              WORD2(buf.st_ino) = 1024;
              *(&buf.st_ino + 6) = 906;
              HIWORD(buf.st_uid) = 1024;
              buf.st_gid = v66;
              LOWORD(buf.st_rdev) = 1024;
              *(&buf.st_rdev + 2) = v22;
              *(&buf.st_rdev + 3) = 1024;
              LODWORD(buf.st_atimespec.tv_sec) = v82;
              WORD2(buf.st_atimespec.tv_sec) = 2080;
              *(&buf.st_atimespec.tv_sec + 6) = a1 + 324;
              _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: sync_dirty_chunks: ERR:%d count:%d expected %d! (%s)\n", &buf, 0x2Eu);
            }

            *__error() = v68;
          }

          else
          {
            *(a1 + 872) = 0;
            if ((v62 & 0x8000000000000000) == 0)
            {
              if (v62 > st_size)
              {
                goto LABEL_64;
              }

              goto LABEL_87;
            }

            memset(&buf, 0, sizeof(buf));
            v70 = *(a1 + 840);
            if (v70)
            {
              while (1)
              {
                v71 = fstatat(*(v70 + 44), *(v70 + 72), &buf, 2048);
                v72 = g_prot_error_callback;
                if (v71 != -1 || g_prot_error_callback == 0)
                {
                  break;
                }

                v74 = *(v70 + 40);
                v75 = __error();
                if (((*(v72 + 16))(v72, v74, *v75, 8) & 1) == 0)
                {
                  goto LABEL_83;
                }
              }

              if (!v71)
              {
                if (buf.st_size > st_size)
                {
LABEL_64:
                  if (fd_truncate(*(a1 + 840), st_size))
                  {
                    v63 = *__error();
                    v64 = _SILogForLogForCategory(7);
                    v65 = 2 * (dword_1EBF46AE8 < 4);
                    if (os_log_type_enabled(v64, v65))
                    {
                      buf.st_dev = 134217984;
                      *&buf.st_mode = st_size;
                      _os_log_impl(&dword_1C278D000, v64, v65, "sync_dirty_chunks: ERR: Failed to truncate master fd to %lld\n", &buf, 0xCu);
                    }

                    *__error() = v63;
LABEL_68:
                    v66 = *__error();
                    goto LABEL_88;
                  }
                }

LABEL_87:
                v66 = 0;
                goto LABEL_88;
              }
            }

LABEL_83:
            v76 = *__error();
            v77 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *v96 = 136315650;
              v97 = "sync_dirty_chunks";
              v98 = 1024;
              v99 = 915;
              v100 = 2080;
              v101 = a1 + 324;
              _os_log_error_impl(&dword_1C278D000, v77, OS_LOG_TYPE_ERROR, "%s:%d: sync_dirty_chunks: ERR: Can't determine the master file size! (%s)\n", v96, 0x1Cu);
            }

            *__error() = v76;
            v66 = 22;
          }

LABEL_88:
          v78 = v66;
          v51 = v66;
          v52 = v24;
          v53 = v23;
          v54 = v25;
          if (v24 == -1)
          {
LABEL_90:
            v80 = v78;
            if (v23 != -1)
            {
              munmap(v23, v25);
            }

            result = v80;
            goto LABEL_93;
          }

LABEL_89:
          v23 = v53;
          v79 = v51;
          munmap(v52, v54);
          v78 = v79;
          v25 = v54;
          goto LABEL_90;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v88 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v88, 2u);
        }

        v40[78] = v38;
        v41 = v89;
        if (__THREAD_SLOT_KEY)
        {
          v42 = pthread_getspecific(__THREAD_SLOT_KEY);
          if (!v42)
          {
            goto LABEL_100;
          }
        }

        else
        {
          makeThreadId();
          v42 = pthread_getspecific(__THREAD_SLOT_KEY);
          if (!v42)
          {
            goto LABEL_100;
          }
        }

        v43 = v42;
        if (v42 < 0x801)
        {
LABEL_39:
          v44 = &threadData[9 * v43];
          v46 = *(v44 - 4);
          v45 = (v44 - 2);
          if (v46 > v41)
          {
            v47 = v43 - 1;
            do
            {
              CIOnThreadCleanUpPop(v47);
            }

            while (*v45 > v41);
          }

          dropThreadId(st_dev, 1, add_explicit + 1);
          CICleanUpReset(st_dev, HIDWORD(v89));
          v24 = v8;
          v23 = v87;
          v25 = st_size;
          v22 = 0;
          goto LABEL_58;
        }

LABEL_100:
        makeThreadId();
        v43 = pthread_getspecific(__THREAD_SLOT_KEY);
        goto LABEL_39;
      }

      v29 = *__error();
      v30 = _SILogForLogForCategory(7);
      v31 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v30, v31))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_impl(&dword_1C278D000, v30, v31, "sync_dirty_chunks: ERR: Failed to map shadow", &buf, 2u);
      }

      *__error() = v29;
    }

    result = *__error();
    goto LABEL_93;
  }

  memset(&buf, 0, sizeof(buf));
  v16 = *(a1 + 848);
  if (v16)
  {
    while (1)
    {
      v17 = fstatat(*(v16 + 44), *(v16 + 72), &buf, 2048);
      v18 = g_prot_error_callback;
      if (v17 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v20 = *(v16 + 40);
      v21 = __error();
      if (((*(v18 + 16))(v18, v20, *v21, 8) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (!v17)
    {
      st_size = buf.st_size;
      goto LABEL_4;
    }
  }

LABEL_23:
  v26 = *__error();
  v27 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *v96 = 136315650;
    v97 = "sync_dirty_chunks";
    v98 = 1024;
    v99 = 743;
    v100 = 2080;
    v101 = a1 + 324;
    _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: sync_dirty_chunks: ERR: Can't determine the shadow file size! (%s)\n", v96, 0x1Cu);
  }

  *__error() = v26;
  result = 22;
LABEL_93:
  v81 = *MEMORY[0x1E69E9840];
  return result;
}

void obj_iter_resume(uint64_t a1, double a2, double a3, __n128 a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 74) == 1)
  {
    v5 = *(a1 + 24);
    if ((*(a1 + 76) & 1) == 0 && db_read_lock(v5 + 584))
    {
      sdb2_die(v5, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 12297);
    }

    if ((*(a1 + 75) & 1) == 0)
    {
      subiter_do_lookups((a1 + 80), a2, a3, a4);
    }

    if (*(a1 + 4) == -1)
    {
      *(a1 + 4) = _fd_acquire_fd(*(a1 + 8), (a1 + 16));
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v7 = *__error();
      v8 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = atomic_load((a1 + 144));
        v10 = 134217984;
        v11 = v9;
        _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "Prefetch pages from %ld", &v10, 0xCu);
      }

      *__error() = v7;
    }

    *(a1 + 74) = 0;
    if ((*(a1 + 76) & 1) == 0)
    {
      db2_string_table_rdlock(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void subiter_do_lookups(unint64_t *a1, double a2, double a3, __n128 a4)
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a1[7];
  v6 = atomic_load(a1 + 8);
  v7 = v5 - v6;
  v8 = *a1;
  v9 = *(*a1 + 32);
  v10 = atomic_load(a1 + 8);
  v11 = (v9 + 32 * v10);
  v12 = v5 - v6 - 1;
  if (v12 >= 1)
  {
    if (v12 > 0x7FE)
    {
      v13 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v13)
      {
        v13 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      v14 = dispatch_group_create();
      v13[3] = v14;
      v13[4] = 0;
      v13[1] = 0;
      v13[2] = v12;
      *v13 = v11;
      v15 = thread_count;
      if (!thread_count)
      {
        *buf = 0x1900000006;
        v65 = 4;
        sysctl(buf, 2u, &thread_count, &v65, 0, 0);
        v15 = thread_count;
      }

      *(v13 + 14) = v15;
      v13[5] = sqrt(v7) / 2;
      if (!v15)
      {
        *buf = 0x1900000006;
        v65 = 4;
        sysctl(buf, 2u, &thread_count, &v65, 0, 0);
        v15 = thread_count;
      }

      v16 = v7 / (2 * v15);
      if (v16 <= 0x8000)
      {
        v16 = 0x8000;
      }

      else if (!v15)
      {
        *buf = 0x1900000006;
        v65 = 4;
        sysctl(buf, 2u, &thread_count, &v65, 0, 0);
        v16 = v7 / (2 * thread_count);
      }

      v13[6] = v16;
      if (v13[5] <= 2047)
      {
        v13[5] = 2048;
      }

      _qsort_big_oid_lookups(v13);
      dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v14);
    }

    else
    {
      _qsort_oid_lookups(v9 + 32 * v10, 0, v5 - v6 - 1);
    }
  }

  if (v8 + 10 == a1 && v8[5])
  {
    if (v5 == v6)
    {
      v23 = 0;
      v24 = v8 + 10;
      goto LABEL_41;
    }

    v17 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v11;
    do
    {
      if (*v27 == v25 || (v29 = v27[1], !(*(v8[5] + 16))()))
      {
        if (dword_1EBF46AD0 >= 5)
        {
          v63 = *__error();
          loga = _SILogForLogForCategory(1);
          if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *v27;
            *buf = 134218240;
            *&buf[4] = v32;
            *&buf[12] = 2048;
            *&buf[14] = v26;
            _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "1) Skipping oid %lld at index %ld", buf, 0x16u);
          }

          *__error() = v63;
        }
      }

      else
      {
        v30 = &v11[4 * v17];
        v31 = *(v27 + 1);
        ++v17;
        *v30 = *v27;
        v30[1] = v31;
      }

      v28 = *v27;
      v27 += 4;
      v25 = v28;
      ++v26;
    }

    while (v7 != v26);
  }

  else
  {
    v17 = v5 != v6;
    if (v7 >= 2)
    {
      v18 = v11 + 4;
      v19 = 1;
      a4.n128_u64[0] = 134218240;
      do
      {
        if (*v18 == *(v18 - 4))
        {
          if (dword_1EBF46AD0 >= 5)
          {
            v64 = a4;
            v62 = *__error();
            log = _SILogForLogForCategory(1);
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *v18;
              *buf = v64.n128_u32[0];
              *&buf[4] = v22;
              *&buf[12] = 2048;
              *&buf[14] = v19;
              _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "2) Skipping oid %lld at index %ld", buf, 0x16u);
            }

            *__error() = v62;
            a4 = v64;
          }
        }

        else
        {
          v20 = &v11[4 * v17];
          v21 = *(v18 + 1);
          ++v17;
          *v20 = *v18;
          v20[1] = v21;
        }

        ++v19;
        v18 += 4;
      }

      while (v7 != v19);
    }
  }

  v24 = v8 + 10;
  if (v8 + 10 == a1 && v8[6])
  {
    v23 = 0;
    if (v17)
    {
      v52 = v11 + 1;
      do
      {
        v53 = *v52;
        if ((*(v8[6] + 16))())
        {
          v54 = &v11[4 * v23];
          v55 = *(v52 + 1);
          ++v23;
          *v54 = *(v52 - 1);
          v54[1] = v55;
        }

        v52 += 4;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v23 = v17;
  }

LABEL_41:
  v33 = atomic_load(a1 + 8);
  a1[7] = v33 + v23;
  v34 = *(*a1 + 24);
  if (v34)
  {
    v35 = *(v34 + 856);
    if (v35)
    {
      if (*(v35 + 8))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __get_pages_for_keys_block_invoke;
        v67 = &__block_descriptor_tmp_186;
        if (v23 < 0x20)
        {
          v36 = 1;
        }

        else
        {
          v36 = (v23 + 31) >> 5;
        }

        v68 = v34;
        v69 = v36;
        if (v23 >= 0x20)
        {
          v37 = 32;
        }

        else
        {
          v37 = v23;
        }

        v70 = v23;
        v71 = v11;
        v72 = a1;
        dispatch_apply(v37, 0, buf);
      }
    }
  }

  if (v23 >= 2)
  {
    v38 = malloc_type_malloc(24 * v23, 0x10000402C707793uLL);
    v39 = v38;
    v40 = 0;
    *v38 = xmmword_1C2BF7A50;
    v38[20] = (v11[2] & 0x400000000) != 0;
    *(v38 + 4) = v11[2] >> 2;
    v41 = v11 + 6;
    for (i = 1; i != v23; ++i)
    {
      if ((*v41 >> 2) == (*(v41 - 4) >> 2))
      {
        v43 = &v38[24 * v40];
        ++*(v43 + 1);
        v43[20] |= (*v41 & 0x400000000) != 0;
      }

      else
      {
        ++v40;
        v44 = &v38[24 * v40];
        *(v44 + 1) = 1;
        *(v44 + 4) = *v41 >> 2;
        v44[20] = (*v41 & 0x400000000) != 0;
        *v44 = i;
      }

      v41 += 4;
    }

    v45 = v40 + 1;
    if ((v40 + 1) > 1)
    {
      psort_b(v38, v40 + 1, 0x18uLL, &__block_literal_global_222);
      v46 = 32 * v23;
      v47 = malloc_type_malloc(32 * v23, 0x1000040E990BCCAuLL);
      madvise(v47, v46, 3);
      v48 = atomic_load(a1 + 8);
      if (v24 != a1 || v48)
      {
        memcpy(v47, v11, v46);
        v56 = 0;
        v57 = v39 + 1;
        do
        {
          memcpy(&v11[4 * v56], &v47[32 * *(v57 - 1)], 32 * *v57);
          v58 = *v57;
          v57 += 3;
          v56 += v58;
          --v45;
        }

        while (v45);
        v11 = v47;
      }

      else
      {
        v49 = 0;
        v50 = v39 + 1;
        do
        {
          memcpy(&v47[32 * v49], &v11[4 * *(v50 - 1)], 32 * *v50);
          v51 = *v50;
          v50 += 3;
          v49 += v51;
          --v45;
        }

        while (v45);
        v8[4] = v47;
      }

      free(v11);
    }

    free(v39);
  }

  v59 = *MEMORY[0x1E69E9840];
}

void _qsort_oid_lookups(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  v6[1] = 0;
  *v6 = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v8 = 128;
      }

      else
      {
        v8 = v7;
      }

      v9 = &v6[2 * v7 + 1];
      while (a3 - a2 > 16)
      {
        v10 = _partition_oid_lookups(a1, a2, a3);
        if (v10 < a2)
        {
          v30 = __si_assert_copy_extra_332();
          v31 = v30;
          v32 = "";
          if (v30)
          {
            v32 = v30;
          }

          __message_assert(v30, "sdb2_qsort.cpp", 17, "q>=left", v32);
          free(v31);
          if (__valid_fs(-1))
          {
            v33 = 2989;
          }

          else
          {
            v33 = 3072;
          }

          *v33 = -559038737;
          abort();
        }

        if (v8 == v7)
        {
          heapsort_b((a1 + 32 * a2), a3 - a2 + 1, 0x20uLL, &__block_literal_global_15695);
          v7 = v8;
          goto LABEL_33;
        }

        if (v10 - a2 <= a3 - v10)
        {
          *(v9 - 1) = a2;
          *v9 = v10 - 1;
          a2 = v10;
        }

        else
        {
          *(v9 - 1) = v10;
          *v9 = a3;
          a3 = v10 - 1;
        }

        ++v7;
        v9 += 2;
        if (a3 <= a2)
        {
          goto LABEL_33;
        }
      }

      v11 = a1 + 24 + 32 * a2;
      v12 = a2;
      do
      {
        v13 = v12++;
        v14 = (a1 + 32 * v12);
        v16 = *v14;
        v15 = v14[1];
        v17 = (a1 + 32 * v13);
        v18 = *v17;
        v19 = v17[2];
        v20 = v19 == v15;
        if (*v17 <= v16)
        {
          v20 = 0;
        }

        v21 = v19 <= v15 && !v20;
        v22 = v12;
        if (!v21)
        {
          v23 = v11;
          do
          {
            v22 = v13;
            v24 = *(v23 - 2);
            v25 = *v23;
            v23[1] = v18;
            v23[2] = v24;
            v23[3] = v19;
            v23[4] = v25;
            if (v22 <= a2)
            {
              break;
            }

            v18 = *(v23 - 7);
            v19 = *(v23 - 5);
            v23 -= 4;
            v26 = v18 > v16 && v19 == v15;
            v13 = v22 - 1;
          }

          while (v19 > v15 || v26);
        }

        v28 = (a1 + 32 * v22);
        *v28 = v16;
        v28[1] = v15;
        v11 += 32;
      }

      while (v12 != a3);
    }

LABEL_33:
    --v7;
    v29 = &v6[2 * v7];
    a2 = *v29;
    a3 = v29[1];
  }

  while (v7);

  free(v6);
}

void L1ComboQueueDestroy(void ***a1)
{
  L1RankQueueDestroy(*a1);
  L1RankQueueDestroy(a1[1]);
  L1RankQueueDestroy(a1[2]);

  free(a1);
}

void __get_pages_for_keys_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v60 = *MEMORY[0x1E69E9840];
  bzero(v58, 0x1000uLL);
  v5 = *(*(v4[4] + 856) + 8);
  v6 = v5 + 3;
  if (v5 < -3)
  {
    v6 = v5 + 6;
  }

  if (v5 > 0x4000)
  {
    v7 = malloc_type_calloc((v6 >> 2), 1uLL, 0x53A50D40uLL);
  }

  else
  {
    v7 = v58;
    __memset_chk();
  }

  v8 = v4[5];
  v9 = v8 * v3;
  v10 = v8 * v3 + v8;
  if (v10 >= v4[6])
  {
    v11 = v4[6];
  }

  else
  {
    v11 = v10;
  }

  if (v9 < v11)
  {
    v12 = 0;
    do
    {
      v18 = v4[7];
      v19 = (v18 + 32 * v9);
      v20 = 32 * v9;
      if (v19[3])
      {
        if (dword_1EBF46AD0 >= 5)
        {
          v57 = *__error();
          log = _SILogForLogForCategory(1);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v54 = *(v4[7] + 32 * v9);
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v54;
            _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Already found %lld", &buf, 0xCu);
          }

          *__error() = v57;
          v18 = v4[7];
        }

        *(v18 + v20 + 16) &= 0xFFFFFFFC00000003;
        *(v4[7] + v20 + 25) = 0;
        goto LABEL_14;
      }

      v21 = v19[2];
      v22 = v21 & 3;
      if (v22 == 3)
      {
        v22 = *(v4[8] + 112);
      }

      v23 = *v19;
      v24 = *(v4[4] + 856);
      v25 = *(v24 + 8);
      if (!v12 || v25 <= v12)
      {
        goto LABEL_26;
      }

      v26 = v24 + 20 + 16 * v12;
      v27 = v22 - (*(v26 + 12) >> 28);
      if (v27)
      {
        if (v27 <= 0)
        {
LABEL_63:
          v52 = v24 + 20 + 16 * (v12 - 1);
          v53 = v22 - (*(v52 + 12) >> 28);
          if (v53)
          {
            if (v53 > 0)
            {
              goto LABEL_42;
            }
          }

          else if (v23 - *v52 > 0)
          {
            goto LABEL_42;
          }
        }
      }

      else if (v23 - *v26 <= 0)
      {
        goto LABEL_63;
      }

LABEL_26:
      if (v25 < 1)
      {
        v35 = 0;
        v30 = 0;
        goto LABEL_38;
      }

      v28 = 0;
      v29 = *(v24 + 8);
      while (1)
      {
        v30 = (v29 + v28) >> 1;
        v31 = v24 + 20 + 16 * v30;
        v32 = v22 - (*(v31 + 12) >> 28);
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = (v29 + v28) >> 1;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        v29 = v34;
        if (v28 >= v34)
        {
          v35 = v33 > 0;
          goto LABEL_38;
        }
      }

      v33 = v23 - *v31;
      v34 = (v29 + v28) >> 1;
      if (v33 < 0)
      {
        goto LABEL_28;
      }

LABEL_33:
      if (v33)
      {
        v28 = v30 + 1;
        v34 = v29;
        goto LABEL_28;
      }

      v35 = 0;
LABEL_38:
      v36 = v25 - 1 > v30 && v35;
      v12 = v30 + v36;
      v26 = v24 + 16 * (v30 + v36) + 20;
LABEL_42:
      *(v18 + v20 + 16) = v21 & 0xFFFFFFFC00000003 | (4 * *(v26 + 8));
      v37 = v4[7];
      *(v37 + v20 + 25) = *(v26 + 12) >> 12;
      v38 = 2 * (v12 & 3);
      if (!v7)
      {
        goto LABEL_47;
      }

      v39 = (v7[v12 >> 2] >> v38) & 3;
      if (v39 > 1)
      {
        if (v39 != 2)
        {
          goto LABEL_47;
        }

LABEL_11:
        v13 = v37 + 32 * v9;
        v16 = *(v13 + 16);
        v14 = (v13 + 16);
        v15 = v16;
LABEL_12:
        v17 = 0;
        goto LABEL_13;
      }

      if (v39)
      {
        v40 = v37 + 32 * v9;
        v41 = *(v40 + 16);
        v14 = (v40 + 16);
        v15 = v41;
        v17 = 0x400000000;
        goto LABEL_13;
      }

LABEL_47:
      v42 = *(v4[4] + 928);
      v43 = *(v26 + 8);
      v44 = *(v42 + 220);
      if (v44 < 1)
      {
LABEL_51:
        buf = 0uLL;
        v47 = atomic_load((v42 + 248));
        if (v47 <= v43)
        {
          goto LABEL_56;
        }

        *(&buf + 1) = 0;
        *&buf = *v42;
        DWORD2(buf) = v43;
        if (sdb_init_cache_onceToken != -1)
        {
          dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
        }

        if (sdb_init_cache_status == 1 && !cache_get_info_for_key())
        {
          v48 = 0;
          if (!v7)
          {
            goto LABEL_61;
          }
        }

        else
        {
LABEL_56:
          v48 = 0;
          if (!v7)
          {
            goto LABEL_61;
          }
        }

        v48 = 0;
        v49 = 1;
        goto LABEL_60;
      }

      v45 = (v42 + 252);
      while (1)
      {
        v46 = *v45++;
        if (v46 == v43)
        {
          break;
        }

        if (!--v44)
        {
          goto LABEL_51;
        }
      }

      if (!v7)
      {
        goto LABEL_11;
      }

      v49 = 2;
      v48 = 1;
LABEL_60:
      v7[v12 >> 2] |= v49 << v38;
LABEL_61:
      v50 = v4[7] + 32 * v9;
      v51 = *(v50 + 16);
      v14 = (v50 + 16);
      v15 = v51;
      if (v48)
      {
        goto LABEL_12;
      }

      v17 = 0x400000000;
LABEL_13:
      *v14 = v17 | v15 & 0xFFFFFFFBFFFFFFFFLL;
LABEL_14:
      ++v9;
    }

    while (v9 != v11);
  }

  if (v7 != v58)
  {
    free(v7);
  }

  v55 = *MEMORY[0x1E69E9840];
}

atomic_uint *si_livequery_retain2(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  atomic_fetch_add(a2, 1u);
  return result;
}

void **L1RankQueueDestroy(void **result)
{
  if (result)
  {
    free(*result);

    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

uint64_t __subiter_do_lookups_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  v4 = *(a3 + 20);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 == v4)
  {
    return (*(a2 + 16) - *(a3 + 16));
  }

  return 1;
}

uint64_t compileToLiveQuery(void *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __db_query_tree_apply_block_block_invoke;
  v4[3] = &unk_1E8198ED0;
  v4[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, v4, &__block_literal_global_25_15416);
  v2 = v1;
  setupCannedFields(v1);
  return v2;
}

void initializeSubIter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_zone_malloc(queryZone, 0x100C8uLL, 0xA4971684uLL);
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  v11 = (a5 + 8 * (a3 + a1));
  *v11 = v10;
  v10[14] = 0;
  *(v10 + 5) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  v12 = *v11;
  *v12 = a2;
  *(v12 + 112) = *(a2 + 192);
  *(v12 + 120) = 0;
  *(v12 + 192) = 0;
  if (a3 + a1)
  {
    v13 = *(*(v11 - 1) + 56) + *(*(v11 - 1) + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 8) = v13;
  v14 = *(a2 + 136);
  if (v13 + a4 <= v14)
  {
    v15 = a4;
  }

  else
  {
    v15 = v14 - v13;
  }

  *(v12 + 56) = v15;
  if (v15 < 0)
  {
    v18 = __si_assert_copy_extra_3233(0, -1);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12598, "(ssize_t)subiters[base+i]->count>=0", v20);
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

  if (v15)
  {
    v16 = v15 + v13;
    if (v16 < *(a2 + 136) - 1)
    {
      v17 = (*(a2 + 32) + 32 * v16 + 16);
      do
      {
        if ((*(v17 - 4) >> 2) != (*v17 >> 2))
        {
          break;
        }

        v17 += 4;
        *(v12 + 56) = ++v15;
        ++v16;
      }

      while (v16 < *(a2 + 136) - 1);
      if (v15 < 0)
      {
        v22 = __si_assert_copy_extra_3233(0, -1);
        v23 = v22;
        v24 = "";
        if (v22)
        {
          v24 = v22;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12604, "(ssize_t)subiters[base+i]->count>=0", v24);
        free(v23);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }
  }
}

uint64_t query_node_unique_retain(pthread_mutex_t *a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __query_node_unique_retain_block_invoke;
  v8[3] = &__block_descriptor_tmp_27_15455;
  v8[4] = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __query_node_unique_retain_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_28_15456;
  v7[4] = a1;
  pthread_mutex_lock(a1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __db_query_tree_apply_block_block_invoke;
  v9[3] = &unk_1E8198ED0;
  v9[4] = v8;
  db_query_tree_apply_block_with_meta(a2, v9, v7);
  v5 = v4;
  pthread_mutex_unlock(a1);
  return v5;
}

uint64_t pqpop(void *a1, _BYTE *a2)
{
  v3 = *a1;
  *a2 = v3;
  if (v3 == 1)
  {
    v4 = a1[3];
    if (v4 != 1)
    {
      v5 = a1[1];
      result = *(v5 + 16);
      v7 = *(v5 + 24);
      v8 = *(v5 + 16 * v4 - 16);
      *(v5 + 16) = v8;
      v10 = a1[2];
      v9 = a1[3];
      a1[3] = v9 - 1;
      v11 = v10 >> 1;
      v12 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = 3;
      v14 = 2;
      v15 = 1;
      while (1)
      {
        v16 = a1[1];
        v17 = *(v16 + 16 * v14);
        if (v13 >= v9)
        {
          v18 = xmmword_1C2BFA680;
          if (v14 >= v9)
          {
            return result;
          }
        }

        else
        {
          v18 = *(v16 + 16 * v13);
        }

        v19 = v17.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
        v20 = v18.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
        if ((v17.i64[0] & 0x3FFFFFFFFFFFFFFFuLL) >= v12)
        {
          if (v20 >= v12)
          {
            _X8 = v16 + 32 * v15;
            __asm { PRFM            #1, [X8] }

            return result;
          }
        }

        else
        {
          _CF = v20 >= v19;
          v22 = v20 < v19;
          if (_CF)
          {
            v13 = v14;
          }

          v23 = vdup_n_s32(v22);
          v24.i64[0] = v23.u32[0];
          v24.i64[1] = v23.u32[1];
          v18 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v24, 0x3FuLL)), v18, v17);
        }

        _X15 = v16 + 32 * v13;
        __asm { PRFM            #1, [X15] }

        if (v13 != v15)
        {
          v14 = 2 * v13;
          *(v16 + 16 * v13) = v8;
          *(a1[1] + 16 * v15) = v18;
          v15 = v13;
          _VF = __OFSUB__(v13, v11);
          _NF = v13 - v11 < 0;
          v13 = (2 * v13) | 1;
          if (_NF != _VF)
          {
            continue;
          }
        }

        return result;
      }
    }

    return 0;
  }

  v32 = a1[3];
  if (v32 == 1)
  {
    return 0;
  }

  v33 = a1[1];
  result = *(v33 + 8);
  v34 = *(v33 + 8 * v32 - 8);
  v35 = a1[2] >> 1;
  *(v33 + 8) = v34;
  a1[3] = v32 - 1;
  v36 = v34 & 0x3FFFFFFFFFFFFFFFLL;
  v37 = 1;
  v38 = 2;
  v39 = 3;
  do
  {
    v40 = *(v33 + 8 * v38);
    if (v39 >= v32)
    {
      if (v38 >= v32)
      {
        return result;
      }

      v41 = 0xBFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = *(v33 + 8 * v39);
    }

    v42 = v41 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v40 & 0x3FFFFFFFFFFFFFFFuLL) >= v36)
    {
      v43 = v34 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v40 & 0x3FFFFFFFFFFFFFFFLL;
    }

    if ((v40 & 0x3FFFFFFFFFFFFFFFuLL) >= v36)
    {
      v38 = v37;
    }

    if (v42 >= v43)
    {
      v44 = v38;
    }

    else
    {
      v44 = v39;
    }

    _X14 = v33 + 16 * v44;
    __asm { PRFM            #1, [X14] }

    if (v44 == v37)
    {
      break;
    }

    v38 = 2 * v44;
    v47 = (v40 & 0x3FFFFFFFFFFFFFFFuLL) >= v36 ? v34 : v40;
    v48 = v42 >= v43 ? v47 : v41;
    v39 = v38 | 1;
    *(v33 + 8 * v44) = v34;
    *(v33 + 8 * v37) = v48;
    v37 = v44;
  }

  while (v44 < v35);
  return result;
}

void *compileToSDBPostCheckQuery(uint64_t a1)
{
  v1 = compileToSDBTree(a1, factorRewrite);
  db_query_tree_apply_block_with_meta(v1, &__block_literal_global_15_15380, 0);
  setupCannedFields(v1);
  return v1;
}

void preparePostCheckQueries(SISearchCtx_METADATA **a1)
{
  v2 = *a1;
  if (!*(*(*a1 + 105) + 8))
  {
    *(*(*a1 + 105) + 8) = compileToSDBPostCheckQuery(v2[14]);
    v2 = *a1;
  }

  if (*(v2 + 208) >= 2u)
  {
    v3 = 1;
    v4 = 56;
    do
    {
      v5 = v2[105];
      v6 = *(v5 + v4 - 8);
      if (v6 && !*(v5 + v4))
      {
        translateSDBQuery(v6);
        v8 = v7;
        *(*(*a1 + 105) + v4) = compileToSDBPostCheckQuery(v7);
        v9 = *(*(*a1 + 105) + v4);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __db_query_tree_apply_block_block_invoke;
        v10[3] = &unk_1E8198ED0;
        v10[4] = &__block_literal_global_32_15488;
        db_query_tree_apply_block_with_meta(v9, v10, &__block_literal_global_35_15489);
        siquerynode_release(v8);
        v2 = *a1;
      }

      ++v3;
      v4 += 48;
    }

    while (v3 < *(v2 + 208));
  }

  *(v2 + 642) = 1;
}

uint64_t si_lqn_hash(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (v3)
  {
    v4 = db_hash_qps(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v2 + v1 + v4;
  v6 = HIDWORD(v5) - v5;
  v7 = HIDWORD(v5) - v5 - 8;
  LODWORD(v5) = (v5 - (HIDWORD(v5) - v5) - 1640531527) ^ (v7 << 8);
  v8 = (16 - v6 - v5) ^ (v5 >> 13);
  v9 = (v7 - v5 - v8) ^ (v8 >> 12);
  LODWORD(v5) = (v5 - v8 - v9) ^ (v9 << 16);
  v10 = (v8 - v9 - v5) ^ (v5 >> 5);
  v11 = (v9 - v5 - v10) ^ (v10 >> 3);
  return (v10 - v11 - ((v5 - v10 - v11) ^ (v11 << 10))) ^ (((v5 - v10 - v11) ^ (v11 << 10)) >> 15);
}

void *__query_node_unique_retain_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
    Value = CFBagGetValue(*(*(a1 + 32) + 64), a2);
    if (Value)
    {
      v7 = Value;
      *v4 = 0;
      v4[1] = 0;
      v10 = MEMORY[0x1E69E9820];
      v11 = 0x40000000;
      v12 = __db_query_tree_apply_block_block_invoke;
      v13 = &unk_1E8198ED0;
      v14 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v4, &v10, 0);
      v4 = v7;
    }

    *(v4 + 13) = *(*v4 + 52) + *(v4[1] + 52);
    CFBagAddValue(*(*(a1 + 32) + 64), v4);
  }

  else
  {
    if (a3)
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 0x40000000;
      v12 = __db_query_tree_apply_block_block_invoke;
      v13 = &unk_1E8198ED0;
      v14 = &__block_literal_global_174;
      v8 = a4;
      db_query_tree_apply_block_with_meta(a3, &v10, 0);
      a4 = v8;
    }

    if (a4)
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 0x40000000;
      v12 = __db_query_tree_apply_block_block_invoke;
      v13 = &unk_1E8198ED0;
      v14 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v10, 0);
    }

    free(v4);
    return 0;
  }

  return v4;
}

uint64_t factorRewrite(void *a1)
{
  result.location = MEMORY[0x1E69E9820];
  result.length = 0x40000000;
  v13 = __db_query_tree_apply_block_block_invoke;
  v14 = &unk_1E8198ED0;
  v15 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, &result, &__block_literal_global_25_15416);
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    return v2;
  }

  if ((*(v3 + 32) & 0x440) == 0x40)
  {
    v4 = *(v3 + 72);
    result.location = 0;
    result.length = 0;
    v5 = CFStringCreateWithCStringNoCopy(kCIQueryZoneAllocator, v4, 0x8000100u, *MEMORY[0x1E695E498]);
    Length = CFStringGetLength(v5);
    if (initCharSets_onceToken != -1)
    {
      dispatch_once(&initCharSets_onceToken, &__block_literal_global_43_4971);
    }

    v16.location = 0;
    v16.length = Length;
    if (CFStringFindCharacterFromSet(v5, _cjkChars, v16, 0, &result))
    {
      CFRelease(v5);
    }

    else
    {
      v17.location = 0;
      v17.length = Length;
      CharacterFromSet = CFStringFindCharacterFromSet(v5, _infixChars, v17, 0, &result);
      CFRelease(v5);
      if (!CharacterFromSet)
      {
        goto LABEL_9;
      }
    }

    v8 = *(v2 + 16);
    v9 = *(v8 + 72);
    asprintf((v8 + 72), "*%s", v9);
    free(v9);
  }

LABEL_9:
  v10 = *(v2 + 16);
  if (v10)
  {
    *(v10 + 16) = _qpPostcheckMatch;
  }

  return v2;
}

uint64_t __query_push_negation_to_leaves_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = a2;
  v4 = *a3;
  v5 = *(a2 + 48);
  if ((v5 & 8) != 0)
  {
    v5 &= ~8u;
    *(a2 + 48) = v5;
    *a3 = v4 ^ 1;
    if (v4)
    {
      return result;
    }
  }

  else
  {
    *a3 = v4;
    if (!v4)
    {
      return result;
    }
  }

  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      *(a2 + 48) = 2;
    }

    else if (v5 == 2)
    {
      *(a2 + 48) = 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v6 = *(a2 + 16);
        v7 = *(v6 + 24);
        if ((v7 - 16) >= 0xFFFFFFF1)
        {
          *(v6 + 24) = dword_1C2C005C0[v7];
        }

        else
        {
          *(v6 + 24) = 0;
        }

        break;
      case 16:
        *(a2 + 48) = 32;
        break;
      case 32:
        *(a2 + 48) = 16;
        break;
    }
  }

  return result;
}

uint64_t ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 0xFFF7) == 4)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      if ((*(v3 + 33) & 8) == 0)
      {
        v4 = *(a1 + 32);
        v5 = *(a2 + 32);
        if ((v5 + 1) >= 2)
        {
          ContentIndexDocSetDispose(v5);
        }

        Value = *(v3 + 120);
        if (Value)
        {
          if (*(v3 + 128) != ContentIndexDocSetDispose)
          {
            v11 = __si_assert_copy_extra_332();
            v12 = v11;
            v13 = "";
            if (v11)
            {
              v13 = v11;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 417, "node->qp->_free_cache_data == (void (*)(void*))ContentIndexDocSetDispose", v13);
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
        }

        else
        {
          v8 = *(*v4 + 216);
          if (!v8 || (Value = CFDictionaryGetValue(v8, v3)) == 0)
          {
            if ((*(v3 + 24) - 5) > 1 || ((memcpy(__dst, v3, sizeof(__dst)), (__dst[6] - 16) >= 0xFFFFFFF1) ? (v9 = dword_1C2C005C0[__dst[6]]) : (v9 = 0), (__dst[6] = v9, (v10 = *(*v4 + 216)) == 0) || (Value = CFDictionaryGetValue(v10, __dst)) == 0))
            {
              Value = -1;
              goto LABEL_9;
            }
          }
        }

        atomic_fetch_add(Value, 1u);
LABEL_9:
        *(a2 + 32) = Value;
      }
    }
  }

  return 0;
}

char *copyMinimumTerm(int a1, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&__s1[1], 0, 255);
  if (a2 <= 0)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 169, "field >= 1", v8);
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

  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  __s1[0] = v2;
  if (a2 >> 28)
  {
    v3 = &__s1[6];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = (a2 >> 21) | 0x80;
    __s1[5] = a2 >> 28;
  }

  else if (a2 >= 0x200000)
  {
    v3 = &__s1[5];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = a2 >> 21;
  }

  else if (a2 >= 0x4000)
  {
    v3 = &__s1[4];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = a2 >> 14;
  }

  else if (a2 >= 0x80)
  {
    v3 = &__s1[3];
    __s1[1] = a2 | 0x80;
    __s1[2] = a2 >> 7;
  }

  else
  {
    v3 = &__s1[2];
    __s1[1] = a2;
  }

  *v3 = 0;
  __strlcat_chk();
  result = strdup(__s1);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void PartialQueryResults::setupFieldIdVector(uint64_t a1, uint64_t a2, size_t *a3, void **a4, int a5)
{
  v10 = *(a1 + 248);
  if (v10)
  {
    Count = CFBitVectorGetCount(v10);
  }

  else
  {
    Count = 0;
  }

  if (*(a1 + 232) < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (!a5 || ((v14 = *(a1 + 248)) != 0 ? (v15 = Count <= v13) : (v15 = 1), v15 || CFBitVectorGetBitAtIndex(v14, v13)))
      {
        v16 = *(a2 + 8 * v13);
        if (v16)
        {
          if (*v16)
          {
            v17 = v16 + 1;
            do
            {
              ++v12;
            }

            while (*v17++);
          }
        }
      }

      ++v13;
    }

    while (v13 < *(a1 + 232));
  }

  *a3 = v12;
  if (((v12 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * v12 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v19 = malloc_type_zone_calloc(queryZone, 8uLL, v12, 0x5BAF1CEAuLL);
  if (!v19)
  {
    _log_fault_for_malloc_failure();
  }

  *a4 = v19;
  if (*(a1 + 232) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      if (!a5 || ((v23 = *(a1 + 248)) != 0 ? (v24 = Count <= v22) : (v24 = 1), v24 || CFBitVectorGetBitAtIndex(v23, v22)))
      {
        v25 = *(a2 + 8 * v22);
        if (v25)
        {
          if ((a5 & 1) == 0 && v21 != v22)
          {
            goto LABEL_46;
          }

          v26 = *v25;
          if (*v25)
          {
            v27 = *a4 + 8 * v20 + 4;
            v28 = v25 + 1;
            do
            {
              *(v27 - 1) = v26;
              *v27 = v22;
              ++v20;
              v29 = *v28++;
              v26 = v29;
              v27 += 2;
            }

            while (v29);
          }
        }

        ++v21;
      }

      if (++v22 >= *(a1 + 232))
      {
        goto LABEL_42;
      }
    }
  }

  v20 = 0;
LABEL_42:
  if (v20 != *a3)
  {
LABEL_46:
    v31 = __si_assert_copy_extra_332();
    __message_assert_336(v31, v32, v33, v34, v35, v36, v37, v38, "SISearchCtx.cpp");
    free(v31);
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

  v30 = *a4;

  qsort_b(v30, v20, 8uLL, &__block_literal_global_22_16265);
}

void PartialQueryResults::setupFixedFunctionVector(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 232);
  v7 = 4 * v6;
  if (((v6 >> 15) & 0x7FFFFFFFFFFFLL) == 0 && v7 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v9 = malloc_type_zone_calloc(queryZone, 1uLL, v7, 0x5BAF1CEAuLL);
  if (!v9)
  {
    _log_fault_for_malloc_failure();
  }

  *a3 = v9;
  if (*(a1 + 232) >= 1)
  {
    for (i = 0; *(a1 + 232) > i; ++i)
    {
      v11 = *(a2 + 8 * i);
      if (!strncmp(v11, "kMDQueryResult", 0xEuLL))
      {
        v12 = v11 + 14;
        if (!strcmp(v12, "SpotlightRelevance"))
        {
          v15 = 1;
        }

        else if (!strcmp(v12, "GroupId"))
        {
          v15 = 3;
        }

        else if (!strcmp(v12, "MatchedExtraQueriesField") || !strcmp(v12, "MenuRelevance"))
        {
          v15 = 2;
        }

        else if (!strcmp(v12, "NewMatchedExtraQueriesField"))
        {
          v15 = 5;
        }

        else if (!strcmp(v12, "ContentRelevance"))
        {
          v15 = 4;
        }

        else if (!strcmp(v12, "TextContentDistances"))
        {
          v15 = 6;
        }

        else if (!strcmp(v12, "HasTextContentMatch"))
        {
          v15 = 7;
        }

        else if (!strcmp(v12, "ScoreL1"))
        {
          v15 = 8;
        }

        else if (!strcmp(v12, "MatchingAttributes"))
        {
          v15 = 10;
        }

        else
        {
          v13 = 0;
          v14 = 77;
          while (v14 == v12[v13])
          {
            v14 = aMatchingarrayi[v13 + 1];
            v15 = 11;
            if (++v13 == 21)
            {
              goto LABEL_29;
            }
          }

          if (!strcmp(v12, "MatchingHints"))
          {
            v15 = 9;
          }

          else if (!strcmp(v12, "RetrievalType"))
          {
            v15 = 13;
          }

          else if (_os_feature_enabled_impl() && !strcmp((*(a2 + 8 * i) + 14), "EmbeddingDistances"))
          {
            v15 = 12;
          }

          else
          {
            if (!_os_feature_enabled_impl() || strcmp((*(a2 + 8 * i) + 14), "EmbeddingVectorIds"))
            {
              continue;
            }

            v15 = 14;
          }
        }

LABEL_29:
        v9[i] = v15;
      }
    }
  }
}

uint64_t PartialQueryResults::start(PartialQueryResults *this, int a2, unsigned __int16 a3, unint64_t a4, uint64_t a5)
{
  if (a4 >= 0xFFFFFFFF)
  {
    v15 = __si_assert_copy_extra_332();
    __message_assert_336(v15, v16, v17, v18, v19, v20, v21, v22, "SISearchCtx.h");
    free(v15);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v7 = this + 1488;
  if (!*(this + a5 + 186))
  {
    if (a4)
    {
      v8 = (a4 * *(this + 29)) << 6;
    }

    Mutable = _MDPlistBytesCreateMutable();
    *&v7[8 * a5] = Mutable;
    if (!Mutable)
    {
LABEL_14:
      v23 = __si_assert_copy_extra_332();
      __message_assert_336(v23, v24, v25, v26, v27, v28, v29, v30, "SISearchCtx.h");
      free(v23);
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
  }

  v10 = this + 464;
  _MDPlistBytesBeginPlist();
  v11 = *&v7[8 * a5];
  _MDPlistBytesBeginArray();
  v12 = *&v7[8 * a5];
  _MDPlistBytesAddNull();
  if (*(this + a5 + 58))
  {
    if (*(this + a5 + 443))
    {
      goto LABEL_14;
    }
  }

  else
  {
    *&v10[8 * a5] = _MDStoreOIDArrayCreateMutable();
    *(this + a5 + 443) = 0;
  }

  _MDStoreOIDArrayBeginSequence();
  v13 = *&v10[8 * a5];
  _MDStoreOIDArrayBeginBulkAdd();
  return *&v7[8 * a5];
}

void subiter_fetch_page(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v43 = *MEMORY[0x1E69E9840];
  v9 = *(v1 + 88);
  if (v9)
  {
    dispatch_sync(v9, &__block_literal_global_189);
  }

  v10 = *(v8 + 4);
  if (v8[11] == v7)
  {
    *(v8 + 4) = 0;
    v8[10] = v7;
    v8[11] = -1;
    if (v10)
    {
      *(v8 + 2) = v10;
      *(v8 + 3) = v10 + 20;
    }

    else
    {
      *(v8 + 2) = 0;
    }
  }

  else
  {
    if (v10)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(7);
      v13 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = v8[11];
        v15 = *(v8 + 4);
        *buf = 67109376;
        v40 = v14;
        v41 = 2048;
        v42 = v15;
        _os_log_impl(&dword_1C278D000, v12, v13, "Wrong next page in db iterator 0x%x %p", buf, 0x12u);
      }

      *__error() = v11;
      page_release(*(*v8 + 24), *(v8 + 4), v8[11], 0x10u, 0);
      v8[11] = -1;
      *(v8 + 4) = 0;
    }

    value_out = 0;
    v31 = 0;
    bzero(buf, 0x4000uLL);
    *(v8 + 24) = buf;
    subiter_attempt_prefetch(v8, v7, v5);
    if (*(*v8 + 77))
    {
      v16 = 57;
    }

    else
    {
      v16 = 25;
    }

    if (v3)
    {
      v17 = 0x2000;
    }

    else
    {
      v17 = 0;
    }

    v18 = _page_fetch_with_fd(*(*v8 + 24), &value_out, v7, v5 << 12, v16 | v17, &v31, *(*v8 + 4), v8 + 30);
    v19 = value_out;
    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = value_out == 0;
    }

    if (!v20)
    {
      v21 = *(value_out + 3);
      if ((v21 & 8) != 0)
      {
        v26 = *__error();
        v27 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v33 = 136315650;
          v34 = "subiter_fetch_page";
          v35 = 1024;
          v36 = 12517;
          v37 = 1024;
          v38 = v7;
          _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: obj_iter_fetch_page: ERR: page came back compressed! pgnum 0x%x\n", v33, 0x18u);
        }

        *__error() = v26;
        v28 = __si_assert_copy_extra_3233(0, -1);
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 12518, v30);
        free(v29);
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      if ((v21 & 0xF0) != 0)
      {
        v23 = __si_assert_copy_extra_3233(0, *(*v8 + 4));
        v24 = v23;
        v25 = "";
        if (v23)
        {
          v25 = v23;
        }

        __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 12522, "(dbp->flags & 0x000000f0)==0", v25, v7, *(value_out + 3));
        free(v24);
        if (__valid_fs(*(*v8 + 4)))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (v31)
      {
        ++*(v8 + 13);
      }

      v8[10] = v7;
      *(v8 + 2) = v19;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t subiter_attempt_prefetch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (*(result + 124) >= *(result + 120))
  {
    *(result + 120) = 0;
    v3 = atomic_load((result + 64));
    v4 = *(result + 56);
    if (v3 < v4)
    {
      *(result + 120) = 1;
      *(result + 160) = a2;
      *(result + 176) = a3;
      v5 = (result + 176);
      v6 = *result;
      v7 = *(result + 8);
      v8 = result;
      v9 = *(*result + 32);
      v10 = v9 + 32 * v7;
      v11 = v10 + 32 * v3;
      v12 = *(v11 + 16);
      if ((v12 & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      v13 = v3 + 1;
      v14 = v12 >> 2;
      if ((*(v11 + 24) & 1) != 0 || v14 == a2)
      {
        v16 = v9 + 32 * v7 + 32 * v3;
        while (1)
        {
          result = v12 & 0x400000000;
          if ((v12 & 0x400000000) == 0 || v13 >= v4)
          {
            break;
          }

          v17 = v13 + 1;
          v11 = v10 + 32 * v13;
          v18 = *(v16 + 56);
          v12 = *(v16 + 48);
          v14 = v12 >> 2;
          v16 += 32;
          ++v13;
          if ((v18 & 1) == 0)
          {
            v13 = v17;
            if (v14 != a2)
            {
              result = v12 & 0x400000000;
              goto LABEL_16;
            }
          }
        }

        v17 = v13;
        v16 = v11;
LABEL_16:
        v15 = result == 0;
        v13 = v17;
        v11 = v16;
      }

      else
      {
        v15 = 0;
      }

      if (v13 >= v4 || v15 || v14 < a2 || a3 + a2 < v14)
      {
        goto LABEL_4;
      }

      v8[41] = v14;
      v19 = *(v11 + 25);
      v8[45] = v19;
      v20 = a3 + v19;
      v8[30] = 2;
      if (v20 <= 0xF)
      {
        v21 = *(v11 + 16);
        v22 = v21 >> 2;
        if ((*(v11 + 24) & 1) != 0 || v14 == v22)
        {
          v24 = 32 * v13 + 32 * v7 + v9 - 32;
          while ((v21 & 0x400000000) != 0 && v13 < v4)
          {
            v23 = v13 + 1;
            v11 = v10 + 32 * v13;
            v25 = *(v24 + 56);
            v21 = *(v24 + 48);
            v22 = v21 >> 2;
            v24 += 32;
            ++v13;
            if ((v25 & 1) == 0)
            {
              v13 = v23;
              if (v14 != v22)
              {
                goto LABEL_30;
              }
            }
          }
        }

        v23 = v13;
        v24 = v11;
LABEL_30:
        if (v23 < v4 && (v21 & 0x400000000) != 0 && v14 <= v22 && v14 + v19 >= v22)
        {
          v8[42] = v22;
          v26 = *(v24 + 25);
          v8[46] = v26;
          v20 += v26;
          v8[30] = 3;
          if (v20 <= 0xF)
          {
            v27 = *(v24 + 16);
            v28 = v27 >> 2;
            if ((*(v24 + 24) & 1) != 0 || v22 == v28)
            {
              v30 = 32 * v23 + 32 * v7 + v9 - 32;
              while ((v27 & 0x400000000) != 0 && v23 < v4)
              {
                v29 = v23 + 1;
                v24 = v10 + 32 * v23;
                v31 = *(v30 + 56);
                v27 = *(v30 + 48);
                v28 = v27 >> 2;
                v30 += 32;
                ++v23;
                if ((v31 & 1) == 0)
                {
                  v23 = v29;
                  if (v22 != v28)
                  {
                    goto LABEL_43;
                  }
                }
              }
            }

            v29 = v23;
            v30 = v24;
LABEL_43:
            if (v29 < v4 && (v27 & 0x400000000) != 0 && v22 <= v28 && v22 + v26 >= v28)
            {
              v8[43] = v28;
              v32 = *(v30 + 25);
              v8[47] = v32;
              v20 += v32;
              v8[30] = 4;
            }
          }
        }
      }

      v33 = *(v6 + 4);
      v34 = (v8 + 50);
      v35 = v20 << 12;
      v36 = a2 << 12;
      while (1)
      {
        result = pread(v33, v34, v35, v36);
        if (result != -1)
        {
          break;
        }

        v37 = g_prot_error_callback;
        if (!g_prot_error_callback)
        {
          break;
        }

        v38 = __error();
        result = (*(v37 + 16))(v37, v33, *v38, 4);
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (result == v35)
      {
        v39 = v8[30];
        if (v39)
        {
          v40 = 0;
          v41 = v8 + 32;
          do
          {
            *v41++ = &v34[v40];
            v42 = *v5++;
            v40 += (v42 << 12);
            --v39;
          }

          while (v39);
        }
      }

      else
      {
LABEL_4:
        v8[30] = 0;
      }
    }
  }

  return result;
}

char *__dboi_inflateDBO_block_invoke(uint64_t a1, char *a2, size_t a3, unint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *v5;
  if (a2)
  {
    v7 = &a2[a4];
    if (&a2[a4] > v6[2])
    {
      v8 = a2;
      v10 = slab_new(v5, a4, 0xFAu);

      return memcpy(v10, v8, a3);
    }

LABEL_7:
    v6[1] = v7;
    return a2;
  }

  a2 = v6[1];
  v7 = &a2[a4];
  if (&a2[a4 + 8] < v6[2])
  {
    goto LABEL_7;
  }

  return slab_new(v5, a4, 0xFAu);
}

void *slab_new(void **a1, unint64_t a2, unsigned int a3)
{
  v4 = *a1;
  v18 = *a1;
  if (a2 >= 0xFFFE9)
  {
    v17 = 0;
    v5 = a2 + 24;
    if (!slab_vm_allocate(&v17, a2 + 24, a3))
    {
      v6 = v17;
      v7 = v17 + v5;
      v17[1] = v17 + v5;
      v6[2] = v7;
      *v6 = *v4;
      *v4 = v6;
      return v6 + 3;
    }

    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert(v11, "slab_allocator.c", 438, "kr == 0", v13);
LABEL_13:
    free(v12);
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

  if (slab_vm_allocate(&v18, 0x100000uLL, a3))
  {
    v14 = __si_assert_copy_extra_332();
    v12 = v14;
    v15 = "";
    if (v14)
    {
      v15 = v14;
    }

    __message_assert(v14, "slab_allocator.c", 453, "kr==0", v15);
    goto LABEL_13;
  }

  v10 = v18;
  *v18 = *a1;
  *a1 = v10;
  result = v10 + 3;
  v10[1] = v10 + a2 + 24;
  v10[2] = v10 + 0x20000;
  return result;
}

uint64_t slab_vm_allocate(void **a1, unint64_t a2, unsigned int a3)
{
  if (a3 != 250)
  {
    if (a3 - 243 > 4)
    {
      goto LABEL_18;
    }

    if (*MEMORY[0x1E69E9AC8] == a2)
    {
      v7 = OSAtomicDequeue(&stru_1EDD78B00, 0);
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a2 != 0x100000)
      {
        goto LABEL_18;
      }

      v10 = OSAtomicDequeue(&stru_1EDD78B10, 0);
      if (!v10)
      {
        goto LABEL_18;
      }

      v7 = v10;
      atomic_fetch_add(qword_1EDD78B20, 0xFFFFFFFFFFFFFFFFLL);
    }

    v11 = v7[1];
    *a1 = v11;
    bzero(v11, v11[1] - v11);
    OSAtomicEnqueue(&slab_cache, v7, 0);
    v9 = &tag_sizes[a3 - 240];
    goto LABEL_17;
  }

  if (*MEMORY[0x1E69E9AC8] == a2)
  {
    v6 = OSAtomicDequeue(&stru_1EDD78D30, 0);
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a2 == 0x100000)
  {
    v8 = OSAtomicDequeue(&stru_1EDD78D40, 0);
    if (v8)
    {
      v6 = v8;
      atomic_fetch_add(qword_1EDD78D50, 0xFFFFFFFFFFFFFFFFLL);
LABEL_12:
      *a1 = v6[1];
      OSAtomicEnqueue(&slab_cache, v6, 0);
      v9 = &unk_1EDD78CE0;
LABEL_17:
      atomic_fetch_add_explicit(v9, a2, memory_order_relaxed);
      return 0;
    }
  }

LABEL_18:

  return my_vm_allocate(a1, a2, (a3 << 24) | 1);
}

_DWORD *packOids(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, PartialQueryResults *this, uint64_t a7)
{
  v85 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 104);
  if (*(v13 + 99) == 1 && *(this + 29))
  {
    v69 = __si_assert_copy_extra_332();
    v70 = v69;
    v71 = "";
    if (v69)
    {
      v71 = v69;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 1635, "attributeCount==0", v71);
    free(v70);
    if (__valid_fs(-1))
    {
      v72 = 2989;
    }

    else
    {
      v72 = 3072;
    }

    *v72 = -559038737;
    abort();
  }

  if (!a7)
  {
    v14 = *(a1 + 104);
    do
    {
      v15 = v14;
      v14 = *(v14 + 80);
    }

    while (v14);
    v16 = *(*(v15 + 8) + 80);
    v17 = *(v13 + 80);
    if (v17)
    {
      v18 = 0;
      do
      {
        v18 ^= *(v13 + 104) == 0;
        v13 = v17;
        v17 = *(v17 + 80);
      }

      while (v17);
      if (v18)
      {
        v19 = 3553;
      }

      else
      {
        v19 = 2781;
      }
    }

    else
    {
      v19 = 2781;
    }

    PartialQueryResults::start(this, v16, v19, a5, 0);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v21 = *(a1 + 160);
  v22 = v21 > 6;
  v23 = (1 << v21) & 0x4A;
  v24 = v22 || v23 == 0;
  v73 = a7;
  if (v24)
  {
    updated = 0;
    if (!a5)
    {
      goto LABEL_65;
    }
  }

  else
  {
    updated = SISearchCtx_METADATA::updateGroupingCount(a1);
    if (!a5)
    {
      goto LABEL_65;
    }
  }

  v26 = 0;
  do
  {
    v27 = *(a1 + 104);
    if (*(v27 + 96))
    {
      break;
    }

    v28 = *(a1 + 104);
    do
    {
      v29 = v28;
      v28 = *(v28 + 80);
    }

    while (v28);
    if (*(*(v29 + 8) + 12) == 1)
    {
      break;
    }

    if (*(this + 314) >= 0xFFFDuLL)
    {
      v30 = *(a1 + 104);
      do
      {
        v31 = v30;
        v30 = *(v30 + 80);
      }

      while (v30);
      v32 = *(v27 + 80);
      if (v32)
      {
        v33 = 0;
        do
        {
          v33 ^= *(v27 + 104) == 0;
          v27 = v32;
          v32 = *(v32 + 80);
        }

        while (v32);
        if (v33)
        {
          v34 = 3553;
        }

        else
        {
          v34 = 2781;
        }
      }

      else
      {
        v34 = 2781;
      }

      PartialQueryResults::prepare(this, *(*(v31 + 8) + 80), v34, 0);
    }

    if (*(a1 + 160) != 4)
    {
      v35 = *(a2 + 8 * v26);
      ++*(this + 314);
      v36 = *(this + 443);
      *v36 = v35;
      *(this + 443) = v36 + 1;
      if (*(*(a1 + 104) + 99) == 1)
      {
        _MDPlistBytesAddNull();
      }
    }

    if (updated)
    {
      v37 = *(a3 + 2 * v26);
      v38 = v37 & 0xFFDF;
      if (updated <= (v37 & 0xFFFFFFDF))
      {
        v38 = 18;
      }

      if (updated <= v37)
      {
        LOWORD(v37) = 0;
      }

      v39 = *(a1 + 650) == 1 ? v37 : v38;
    }

    else
    {
      v39 = 0;
    }

    if (*(a1 + 832) >= 2u && *(a1 + 656) > v39)
    {
      v40 = *(a1 + 928);
      if (v40)
      {
        v41 = (a4 + 80 * v26);
        v43 = *v41;
        v42 = v41[1];
        v44 = *(a1 + 184);
        if (*(a1 + 168))
        {
          v45 = *(a1 + 168);
        }

        else
        {
          v45 = *(a1 + 184);
        }

        if (*(a1 + 400) & v43 | *(a1 + 408) & v42)
        {
          v46 = *(a1 + 424) & v42;
          *buf = *(a1 + 416) & v43;
          *&buf[8] = v46;
        }

        else
        {
          *buf = *v41;
          *&buf[8] = v42;
        }

        if (*(a1 + 464) & v43 | *(a1 + 472) & v42)
        {
          v47 = *(a1 + 496) & v43;
          v48 = *(a1 + 516);
          v49 = ((*(a1 + 504) & v42) << v48) | (v47 >> 1 >> ~v48);
          v50 = v47 << v48;
          if ((v48 & 0x40) != 0)
          {
            v49 = v50;
            v50 = 0;
          }

          v51 = v50 | 1;
        }

        else
        {
          v51 = 0;
          v49 = 0;
        }

        v53 = v41[4];
        v52 = v41[5];
        v54 = *(v41 + 12);
        v55 = *(v41 + 13);
        v56 = *(v41 + 14);
        v57 = *(v41 + 60);
        v58 = *(v41 + 68);
        v59 = *(v41 + 69);
        *&buf[16] = v51;
        v76 = v49;
        v77 = v53;
        v78 = v52;
        v79 = v54;
        v80 = v55;
        v81 = v56;
        v82 = v57;
        v83 = v58 & 1;
        v84 = v59 & 1;
        ci_donebits_push(v40, v45, v44, v39, buf);
      }
    }

    atomic_fetch_add((a1 + 544), 1uLL);
    ++v26;
  }

  while (v26 != a5);
LABEL_65:
  v60 = *__error();
  v61 = _SILogForLogForCategory(1);
  v62 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v61, v62))
  {
    v63 = CFAbsoluteTimeGetCurrent();
    *buf = 134218240;
    *&buf[4] = a5;
    *&buf[12] = 2048;
    *&buf[14] = v63 - Current;
    _os_log_impl(&dword_1C278D000, v61, v62, "Read/evaluated %ld oids in %f seconds!", buf, 0x16u);
  }

  result = __error();
  *result = v60;
  if (!v73)
  {
    if (*(this + 186))
    {
      _MDPlistBytesEndArray();
      v65 = *(this + 186);
      _MDPlistBytesEndPlist();
    }

    result = *(this + 58);
    if (result)
    {
      v66 = *(this + 443);
      _MDStoreOIDArrayEndBulkAdd();
      v67 = *(this + 58);
      result = _MDStoreOIDArrayEndSequence();
      *(this + 443) = 0;
    }
  }

  v68 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *db_obj_subiter_next(unsigned int *result, unint64_t *a2, double a3, double a4, __n128 a5)
{
  if (result)
  {
    v6 = result;
    v7 = *result;
    while (1)
    {
      result = _db_obj_iter_next(v6, a2, 0, a3, a4, a5);
      if (result)
      {
        break;
      }

      v8 = atomic_load((v6 + 64));
      v9 = *(v6 + 56);
      if (v8 >= v9)
      {
        v10 = *(v6 + 112) + 1;
        *(v6 + 112) = v10;
        if (v10 > 1u || *(v6 + 80) == v9)
        {
          return 0;
        }

        atomic_store(0, (v6 + 64));
        if (v9)
        {
          v11 = 0;
          v12 = 0;
          do
          {
            v13 = *(v7 + 32) + 32 * *(v6 + 8) + v11;
            *(v13 + 16) |= 0x3FFFFFFFCuLL;
            v14 = *(v7 + 32) + 32 * *(v6 + 8) + v11;
            *(v14 + 25) = 0;
            *(v14 + 16) |= 0x400000000uLL;
            ++v12;
            v11 += 32;
          }

          while (v12 < *(v6 + 56));
        }

        subiter_do_lookups(v6, a3, a4, a5);
      }

      else if (*(v6 + 112))
      {
        return 0;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unsigned int *_db_obj_iter_next(uint64_t a1, unint64_t *a2, int a3, double a4, double a5, __n128 a6)
{
  v113 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (*(*a1 + 74) == 1)
  {
    if (v9 + 80 != a1)
    {
      v60 = __si_assert_copy_extra_3233(0, -1);
      v61 = v60;
      v62 = "";
      if (v60)
      {
        v62 = v60;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12885, "iter==&dboi->subiterator", v62);
LABEL_97:
      free(v61);
      if (__valid_fs(-1))
      {
        v63 = 2989;
      }

      else
      {
        v63 = 3072;
      }

      *v63 = -559038737;
      abort();
    }

    obj_iter_resume(*a1, a4, a5, a6);
  }

  v10 = (a1 + 96);
  if (!*(a1 + 96))
  {
    if (!*(v9 + 64))
    {
      goto LABEL_9;
    }

    os_unfair_lock_lock(&slabQueueLock);
    v11 = *(v9 + 64);
    if (v11)
    {
      *v10 = v11;
      *(v9 + 64) = *(v11 + 24);
    }

    os_unfair_lock_unlock(&slabQueueLock);
    if (!*v10)
    {
LABEL_9:
      *block = 0;
      v12 = MEMORY[0x1E69E9AC8];
      v13 = *MEMORY[0x1E69E9AC8];
      v14 = OSAtomicDequeue(&stru_1EDD78D30, 0);
      if (v14)
      {
        v15 = v14[1];
        OSAtomicEnqueue(&slab_cache, v14, 0);
        atomic_fetch_add_explicit(qword_1EDD78CE0, v13, memory_order_relaxed);
      }

      else
      {
        if (my_vm_allocate(block, v13, 0xFA000001))
        {
          v15 = 0;
          goto LABEL_14;
        }

        v15 = *block;
      }

      *v15 = 0;
      v15[1] = v15 + 3;
      v15[2] = v15 + v13;
      madvise(v15 + 3, *v12, 3);
LABEL_14:
      *v10 = v15;
    }
  }

  v16 = (a1 + 64);
  v17 = atomic_load((a1 + 64));
  if (v17 >= *(a1 + 56))
  {
    result = 0;
    *a2 = -1;
    goto LABEL_38;
  }

  v18 = atomic_load(v16);
  v19 = *(v9 + 32);
  v20 = *(a1 + 8);
  for (i = v19 + 32 * v20 + 32 * atomic_fetch_add(v16, 1uLL); (*(i + 24) & 1) != 0; i = v23 + 32 * v24 + 32 * atomic_fetch_add((a1 + 64), 1uLL))
  {
    v22 = atomic_load((a1 + 64));
    if (v22 >= *(a1 + 56))
    {
      goto LABEL_37;
    }

    v23 = *(v9 + 32);
    v24 = *(a1 + 8);
  }

  *a2 = *(i + 8);
  v25 = *(*(v9 + 24) + 992);
  v26 = v25[1];
  if (v26)
  {
    v27 = *i;
    v28 = vcnt_s8(v26);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = *i;
      if (v27 >= *&v26)
      {
        v29 = v27 % *&v26;
      }
    }

    else
    {
      v29 = (*&v26 - 1) & v27;
    }

    v31 = *(*v25 + 8 * v29);
    if (v31)
    {
      for (j = *v31; j; j = *j)
      {
        v33 = j[1];
        if (v33 == v27)
        {
          if (j[2] == v27)
          {
            if (*(j + 6) != 3)
            {
              v56 = j[4];
              *(i + 24) |= 1u;
              ++*(a1 + 80);
              v57 = *MEMORY[0x1E69E9840];
              v58 = (*(i + 24) >> 2) & 1;

              return dboi_inflateDBO(v9, (a1 + 96), v56, v58);
            }

            goto LABEL_37;
          }
        }

        else
        {
          if (v28.u32[0] > 1uLL)
          {
            if (v33 >= *&v26)
            {
              v33 %= *&v26;
            }
          }

          else
          {
            v33 &= *&v26 - 1;
          }

          if (v33 != v29)
          {
            break;
          }
        }
      }
    }
  }

  v34 = *(i + 16);
  if ((~v34 & 0x3FFFFFFFCLL) == 0)
  {
    goto LABEL_37;
  }

  if (*(v9 + 75) == 1)
  {
    v36 = *(*a1 + 24);
    if (!v36)
    {
      goto LABEL_37;
    }

    v37 = *(v36 + 856);
    if (!v37 || !*(v37 + 8))
    {
      goto LABEL_37;
    }

    *block = MEMORY[0x1E69E9820];
    *&block[8] = 0x40000000;
    *&block[16] = __get_pages_for_keys_block_invoke;
    *&block[24] = &__block_descriptor_tmp_186;
    *&block[32] = v36;
    v110 = vdupq_n_s64(1uLL);
    v111 = i;
    v112 = a1;
    dispatch_apply(1uLL, 0, block);
    v34 = *(i + 16);
  }

  v38 = v34 >> 2;
  v39 = *(a1 + 40);
  if (v39 == v38)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    result = 0;
    *a2 = v18;
    atomic_store(v18, (a1 + 64));
    goto LABEL_38;
  }

  v44 = *(a1 + 16);
  v45 = -1;
  if (v44)
  {
    *(a1 + 40) = -1;
    v45 = v39;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  if (*v10)
  {
    slab_reset((a1 + 96), 0xFFFFFFFF);
  }

  v46 = *(i + 16) >> 2;
  v47 = *(i + 25);
  subiter_fetch_page(a1);
  if (*(a1 + 88))
  {
    v49 = atomic_load((a1 + 64));
    v50 = *(a1 + 56);
    if (v49 < v50)
    {
      v51 = v49 + 1;
      for (k = *(v9 + 32) + 32 * *(a1 + 8) + 32 * v49; ; k += 32)
      {
        if (*(k + 24))
        {
          if (v51 >= v50)
          {
            goto LABEL_66;
          }
        }

        else if (v51 >= v50 || v46 != (*(k + 16) >> 2))
        {
LABEL_66:
          if (v51 < v50)
          {
            *(a1 + 48) = v51;
            subiter_fetch_next_page(a1, *(k + 16) >> 2, *(k + 25), (*(i + 16) & 0x400000000) != 0);
          }

          break;
        }

        ++v51;
      }
    }
  }

  if (v44)
  {
    if (*(*a1 + 73))
    {
      v53 = 24;
    }

    else
    {
      v53 = 16;
    }

    page_release(*(v9 + 24), v44, v45, v53, 0);
  }

  if (*(a1 + 88))
  {
    v54 = *(a1 + 72);
    if (v54 < *(a1 + 56))
    {
      LODWORD(v55) = -1;
      *&v48 = 134218240;
      do
      {
        v96 = *(v9 + 32) + 32 * *(a1 + 8) + 32 * v54;
        if ((*(v96 + 24) & 2) == 0)
        {
          v97 = *(v96 + 16);
          if ((v97 & 0x400000000) != 0)
          {
            *(v96 + 24) |= 2u;
            v98 = v97 >> 2;
            if (v55 != (v97 >> 2))
            {
              if (*(a1 + 44) != v98 && *(a1 + 40) != v98)
              {
                obj_iter_prefetch_page(v9, v98, *(v96 + 25));
                break;
              }

              if (dword_1EBF46AD0 >= 5)
              {
                v108 = v48;
                v107 = v97 >> 2;
                v99 = *__error();
                v100 = _SILogForLogForCategory(1);
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  v101 = atomic_load((a1 + 64));
                  v102 = (*(v96 + 16) >> 34) & 1;
                  *block = v108;
                  *&block[4] = v101;
                  *&block[12] = 1024;
                  *&block[14] = v102;
                  _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "(nextpage)Skip prefetch of %ld cache:%d", block, 0x12u);
                }

                *__error() = v99;
                LODWORD(v55) = v107;
                v48 = v108;
              }

              else
              {
                v55 = v97 >> 2;
              }
            }
          }
        }

        v54 = *(a1 + 72) + 1;
        *(a1 + 72) = v54;
      }

      while (v54 < *(a1 + 56));
    }
  }

LABEL_45:
  v40 = *(a1 + 16);
  if (!v40)
  {
LABEL_37:
    result = 0;
    goto LABEL_38;
  }

  if (*v40 != 1684172850 && (*v40 || *(v40 + 4)))
  {
    v105 = __si_assert_copy_extra_3233(0, -1);
    v61 = v105;
    v106 = "";
    if (v105)
    {
      v106 = v105;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12996, "iter->dbp->signature == 0x64627032 || (iter->dbp->signature==0 && iter->dbp->size==0)", v106);
    goto LABEL_97;
  }

  v41 = *(v40 + 8);
  v42 = *(v40 + 24);
  if (*(v40 + 24) < 0)
  {
    v59 = *(v40 + 24);
    if (v59 > 0xBF)
    {
      if (v59 > 0xDF)
      {
        if (v59 > 0xEF)
        {
          if (v59 > 0xF7)
          {
            if (v59 > 0xFB)
            {
              if (v59 > 0xFD)
              {
                if (v59 == 255)
                {
                  v42 = *(v40 + 25);
                  v43 = 9;
                }

                else
                {
                  v42 = (*(v40 + 25) << 48) | (*(v40 + 26) << 40) | (*(v40 + 27) << 32) | (*(v40 + 28) << 24) | (*(v40 + 29) << 16) | (*(v40 + 30) << 8) | *(v40 + 31);
                  v43 = 8;
                }
              }

              else
              {
                v42 = ((v42 & 1) << 48) | (*(v40 + 25) << 40) | (*(v40 + 26) << 32) | (*(v40 + 27) << 24) | (*(v40 + 28) << 16) | (*(v40 + 29) << 8) | *(v40 + 30);
                v43 = 7;
              }
            }

            else
            {
              v42 = ((v42 & 3) << 40) | (*(v40 + 25) << 32) | (*(v40 + 26) << 24) | (*(v40 + 27) << 16) | (*(v40 + 28) << 8) | *(v40 + 29);
              v43 = 6;
            }
          }

          else
          {
            v42 = ((v42 & 7) << 32) | (*(v40 + 25) << 24) | (*(v40 + 26) << 16) | (*(v40 + 27) << 8) | *(v40 + 28);
            v43 = 5;
          }
        }

        else
        {
          v42 = ((v42 & 0xF) << 24) | (*(v40 + 25) << 16) | (*(v40 + 26) << 8) | *(v40 + 27);
          v43 = 4;
        }
      }

      else
      {
        v42 = ((v42 & 0x1F) << 16) | (*(v40 + 25) << 8) | *(v40 + 26);
        v43 = 3;
      }
    }

    else
    {
      v43 = 2;
      v42 = *(v40 + 25) | ((v42 & 0x3F) << 8);
    }
  }

  else
  {
    v43 = 1;
  }

  v64 = v40 + 20;
  *block = v43;
  VInt16 = ldb_readVInt16(v40 + 24, block);
  v66 = *(*(v9 + 24) + 804);
  v67 = *(a1 + 24);
  if (!v67)
  {
    *(a1 + 24) = v64;
    v67 = v40 + 20;
  }

  v68 = v40 + v41;
  if ((v66 & ((VInt16 & 0x20) >> 5)) != 0)
  {
    v69 = 1;
  }

  else
  {
    v69 = 3;
  }

  if ((*(i + 16) & 3) != 3)
  {
    v69 = *(i + 16) & 3;
  }

  if (v69 != 3)
  {
    if (v67 < v68)
    {
      while (1)
      {
        v77 = *(v67 + 4);
        if (*(v67 + 4) < 0)
        {
          v79 = *(v67 + 4);
          if (v79 > 0xBF)
          {
            if (v79 > 0xDF)
            {
              if (v79 > 0xEF)
              {
                if (v79 > 0xF7)
                {
                  if (v79 > 0xFB)
                  {
                    if (v79 > 0xFD)
                    {
                      if (v79 == 255)
                      {
                        v77 = *(v67 + 5);
                        v78 = 9;
                      }

                      else
                      {
                        v77 = (*(v67 + 5) << 48) | (*(v67 + 6) << 40) | (*(v67 + 7) << 32) | (*(v67 + 8) << 24) | (*(v67 + 9) << 16) | (*(v67 + 10) << 8) | *(v67 + 11);
                        v78 = 8;
                      }
                    }

                    else
                    {
                      v77 = ((v77 & 1) << 48) | (*(v67 + 5) << 40) | (*(v67 + 6) << 32) | (*(v67 + 7) << 24) | (*(v67 + 8) << 16) | (*(v67 + 9) << 8) | *(v67 + 10);
                      v78 = 7;
                    }
                  }

                  else
                  {
                    v77 = ((v77 & 3) << 40) | (*(v67 + 5) << 32) | (*(v67 + 6) << 24) | (*(v67 + 7) << 16) | (*(v67 + 8) << 8) | *(v67 + 9);
                    v78 = 6;
                  }
                }

                else
                {
                  v77 = ((v77 & 7) << 32) | (*(v67 + 5) << 24) | (*(v67 + 6) << 16) | (*(v67 + 7) << 8) | *(v67 + 8);
                  v78 = 5;
                }
              }

              else
              {
                v77 = ((v77 & 0xF) << 24) | (*(v67 + 5) << 16) | (*(v67 + 6) << 8) | *(v67 + 7);
                v78 = 4;
              }
            }

            else
            {
              v77 = ((v77 & 0x1F) << 16) | (*(v67 + 5) << 8) | *(v67 + 6);
              v78 = 3;
            }
          }

          else
          {
            v78 = 2;
            v77 = *(v67 + 5) | ((v77 & 0x3F) << 8);
          }
        }

        else
        {
          v78 = 1;
        }

        v80 = (v67 + 4 + v78);
        v81 = *v80;
        if (*v80 < 0)
        {
          if (v81 >= 0xC0)
          {
            if (v81 >= 0xE0)
            {
              v103 = __si_assert_copy_extra_3233(0, -1);
              v61 = v103;
              v104 = "";
              if (v103)
              {
                v104 = v103;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v104);
              goto LABEL_97;
            }

            v82 = 2;
          }

          else
          {
            v82 = 1;
          }

          v81 = v80[v82];
        }

        v83 = *i - v77;
        if (*i == v77)
        {
          goto LABEL_170;
        }

        v84 = v69 - (v66 & (v81 >> 5) & 1);
        if (v84)
        {
          v83 = v84;
        }

        if (v83 <= 0)
        {
          v86 = *__error();
          v87 = _SILogForLogForCategory(1);
          v88 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v87, v88))
          {
            v89 = *i;
            v90 = *(i + 16) & 3;
            v91 = *(a1 + 24) - v64;
            *block = 134218752;
            *&block[4] = v89;
            *&block[12] = 1024;
            *&block[14] = v90;
            *&block[18] = 2048;
            *&block[20] = v91;
            *&block[28] = 2048;
            *&block[30] = v42;
            _os_log_impl(&dword_1C278D000, v87, v88, "Failed to find %lld (%d) (offset:%lu first:%llu)", block, 0x26u);
          }

          v92 = __error();
          result = 0;
          *v92 = v86;
          goto LABEL_38;
        }

        result = 0;
        v67 += (*v67 + 4);
        *(a1 + 24) = v67;
        if (v67 >= v68)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_37;
  }

  for (m = *(a1 + 16) + 20; ; m += (*m + 4))
  {
    *(a1 + 24) = m;
    if (m >= v68)
    {
      result = 0;
      *(a1 + 24) = v67;
      goto LABEL_38;
    }

    v71 = *(m + 4);
    if (*(m + 4) < 0)
    {
      v73 = *(m + 4);
      if (v73 > 0xBF)
      {
        if (v73 > 0xDF)
        {
          if (v73 > 0xEF)
          {
            if (v73 > 0xF7)
            {
              if (v73 > 0xFB)
              {
                if (v73 > 0xFD)
                {
                  if (v73 == 255)
                  {
                    v71 = *(m + 5);
                    v72 = 9;
                  }

                  else
                  {
                    v71 = (*(m + 5) << 48) | (*(m + 6) << 40) | (*(m + 7) << 32) | (*(m + 8) << 24) | (*(m + 9) << 16) | (*(m + 10) << 8) | *(m + 11);
                    v72 = 8;
                  }
                }

                else
                {
                  v71 = ((v71 & 1) << 48) | (*(m + 5) << 40) | (*(m + 6) << 32) | (*(m + 7) << 24) | (*(m + 8) << 16) | (*(m + 9) << 8) | *(m + 10);
                  v72 = 7;
                }
              }

              else
              {
                v71 = ((v71 & 3) << 40) | (*(m + 5) << 32) | (*(m + 6) << 24) | (*(m + 7) << 16) | (*(m + 8) << 8) | *(m + 9);
                v72 = 6;
              }
            }

            else
            {
              v71 = ((v71 & 7) << 32) | (*(m + 5) << 24) | (*(m + 6) << 16) | (*(m + 7) << 8) | *(m + 8);
              v72 = 5;
            }
          }

          else
          {
            v71 = ((v71 & 0xF) << 24) | (*(m + 5) << 16) | (*(m + 6) << 8) | *(m + 7);
            v72 = 4;
          }
        }

        else
        {
          v71 = ((v71 & 0x1F) << 16) | (*(m + 5) << 8) | *(m + 6);
          v72 = 3;
        }
      }

      else
      {
        v72 = 2;
        v71 = *(m + 5) | ((v71 & 0x3F) << 8);
      }
    }

    else
    {
      v72 = 1;
    }

    v74 = (m + 4 + v72);
    v75 = *v74;
    if (*v74 < 0)
    {
      if (v75 >= 0xC0)
      {
        if (v75 >= 0xE0)
        {
          v93 = __si_assert_copy_extra_3233(0, -1);
          v94 = v93;
          v95 = "";
          if (v93)
          {
            v95 = v93;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v95);
          free(v94);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v76 = 2;
      }

      else
      {
        v76 = 1;
      }

      v75 = v74[v76];
    }

    if (v71 == *i)
    {
      break;
    }
  }

  if (v66)
  {
    v85 = (v75 >> 5) & 1;
  }

  else
  {
    v85 = 0;
  }

  *(i + 16) = v85 | *(i + 16) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_170:
  *(i + 24) |= 1u;
  ++*(a1 + 80);
  result = dboi_inflateDBO(v9, (a1 + 96), *(a1 + 24), (*(i + 24) & 4) != 0);
LABEL_38:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

char *copyMaximumTerm(int a1, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&__s1[1], 0, 255);
  if (a2 <= 0)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 179, "field >= 1", v8);
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

  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  __s1[0] = v2;
  if (a2 >> 28)
  {
    v3 = &__s1[6];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = (a2 >> 21) | 0x80;
    __s1[5] = a2 >> 28;
  }

  else if (a2 >= 0x200000)
  {
    v3 = &__s1[5];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = a2 >> 21;
  }

  else if (a2 >= 0x4000)
  {
    v3 = &__s1[4];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = a2 >> 14;
  }

  else if (a2 >= 0x80)
  {
    v3 = &__s1[3];
    __s1[1] = a2 | 0x80;
    __s1[2] = a2 >> 7;
  }

  else
  {
    v3 = &__s1[2];
    __s1[1] = a2;
  }

  *v3 = 0;
  __strlcat_chk();
  result = strdup(__s1);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t skipDBFData(uint64_t result, int a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (result != 14)
  {
    if ((a2 & 3) == 2)
    {
      if (result != 15)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }

    if (a2)
    {
      if (result != 15)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (result <= 6)
      {
        if (result < 3)
        {
          v7 = *a3 + 1;
          goto LABEL_127;
        }

        if ((result - 3) < 2)
        {
          v22 = *a3;
          if (*(a4 + *a3) < 0)
          {
            v30 = *(a4 + *a3);
            if (v30 >= 0xC0)
            {
              if (v30 >= 0xE0)
              {
LABEL_134:
                v34 = __si_assert_copy_extra_2708(0);
                v35 = v34;
                v36 = "";
                if (v34)
                {
                  v36 = v34;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v36);
                free(v35);
                if (__valid_fs(-1))
                {
                  MEMORY[0xBAD] = -559038737;
                  abort();
                }

                MEMORY[0xC00] = -559038737;
                abort();
              }

              v7 = v22 + 3;
            }

            else
            {
              v7 = v22 + 2;
            }
          }

          else
          {
            v7 = v22 + 1;
          }

          goto LABEL_127;
        }

        if ((result - 5) >= 2)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }

      if (result <= 9)
      {
        if ((result - 7) < 2)
        {
          v6 = *a3;
          v12 = *(a4 + *a3);
          if (v12 < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_33;
        }

        if (result != 9)
        {
          goto LABEL_28;
        }

        v21 = 4;
LABEL_126:
        v7 = *a3 + v21;
        goto LABEL_127;
      }

      v21 = 8;
      if (result == 10 || result == 12)
      {
        goto LABEL_126;
      }

      if (result != 15)
      {
        goto LABEL_28;
      }
    }

LABEL_32:
    v6 = *a3;
    if (*(a4 + *a3) < 0)
    {
      v20 = *(a4 + *a3);
      if (v20 > 0xBF)
      {
        if (v20 > 0xDF)
        {
          if (v20 > 0xEF)
          {
LABEL_60:
            v7 = v6 + 5;
            goto LABEL_127;
          }

LABEL_57:
          v7 = v6 + 4;
          goto LABEL_127;
        }

LABEL_46:
        v7 = v6 + 3;
        goto LABEL_127;
      }

LABEL_38:
      v7 = v6 + 2;
      goto LABEL_127;
    }

    goto LABEL_33;
  }

  v5 = (32 * a2) & 0x1000;
  if (a5)
  {
    v5 = 4096;
  }

  if ((((a2 << 7) | (16 * a2)) & 0x4020 | v5) == 0x5020)
  {
    v6 = *a3;
    if ((a2 & 4) == 0)
    {
      v7 = v6 + *(a4 + v6);
      goto LABEL_127;
    }

    v12 = *(a4 + v6);
    if (v12 < 0)
    {
LABEL_21:
      if (v12 > 0xBFu)
      {
        if (v12 > 0xDFu)
        {
          if (v12 > 0xEFu)
          {
            if (v12 > 0xF7u)
            {
              if (v12 > 0xFBu)
              {
                if (v12 > 0xFDu)
                {
                  if (v12 == 255)
                  {
                    v7 = v6 + 9;
                  }

                  else
                  {
                    v7 = v6 + 8;
                  }
                }

                else
                {
                  v7 = v6 + 7;
                }
              }

              else
              {
                v7 = v6 + 6;
              }

              goto LABEL_127;
            }

            goto LABEL_60;
          }

          goto LABEL_57;
        }

        goto LABEL_46;
      }

      goto LABEL_38;
    }

LABEL_33:
    v7 = v6 + 1;
    goto LABEL_127;
  }

  if ((a2 & 3) != 2)
  {
    if ((a2 & 1) == 0)
    {
LABEL_28:
      v13 = *a3;
      v14 = *a3 + 1;
      v15 = (a4 + *a3);
      v16 = *v15;
      if (*v15 < 0)
      {
        if (v16 > 0xBF)
        {
          if (v16 > 0xDF)
          {
            if (v16 > 0xEF)
            {
              v16 = *(a4 + v14);
              v14 = v13 + 5;
            }

            else
            {
              v16 = ((v16 & 0xF) << 24) | (*(a4 + v14) << 16) | (v15[2] << 8) | v15[3];
              v14 = v13 + 4;
            }
          }

          else
          {
            v16 = ((v16 & 0x1F) << 16) | (*(a4 + v14) << 8) | v15[2];
            v14 = v13 + 3;
          }
        }

        else
        {
          v17 = *(a4 + v14) | ((v16 & 0x3F) << 8);
          v14 = v13 + 2;
          v16 = v17;
        }
      }

      *a3 = v14;
      v21 = v16;
      goto LABEL_126;
    }

LABEL_34:
    v18 = *a3;
    v7 = *a3 + 1;
    v19 = (a4 + *a3);
    v10 = *v19;
    if (*v19 < 0)
    {
      if (v10 <= 0xBF)
      {
        v7 = v18 + 2 + (*(a4 + v7) | ((v10 & 0x3F) << 8));
        goto LABEL_127;
      }

      if (v10 <= 0xDF)
      {
        v7 = v18 + 3 + (((v10 & 0x1F) << 16) | (*(a4 + v7) << 8) | v19[2]);
        goto LABEL_127;
      }

      if (v10 <= 0xEF)
      {
        v7 = v18 + 4 + (((v10 & 0xF) << 24) | (*(a4 + v7) << 16) | (v19[2] << 8) | v19[3]);
        goto LABEL_127;
      }

      v10 = *(a4 + v7);
      v7 = v18 + 5;
    }

LABEL_68:
    v7 += v10;
    goto LABEL_127;
  }

LABEL_11:
  v8 = *a3;
  v7 = *a3 + 1;
  v9 = (a4 + *a3);
  v10 = *v9;
  if (*v9 < 0)
  {
    if (v10 > 0xBF)
    {
      if (v10 > 0xDF)
      {
        if (v10 > 0xEF)
        {
          v10 = *(a4 + v7);
          v7 = v8 + 5;
        }

        else
        {
          v10 = ((v10 & 0xF) << 24) | (*(a4 + v7) << 16) | (v9[2] << 8) | v9[3];
          v7 = v8 + 4;
        }
      }

      else
      {
        v10 = ((v10 & 0x1F) << 16) | (*(a4 + v7) << 8) | v9[2];
        v7 = v8 + 3;
      }
    }

    else
    {
      v11 = *(a4 + v7) | ((v10 & 0x3F) << 8);
      v7 = v8 + 2;
      v10 = v11;
    }
  }

  *a3 = v7;
  if ((result - 9) < 4 || result == 14)
  {
    goto LABEL_68;
  }

  if (!v10)
  {
    return result;
  }

  if (result > 0xF)
  {
    goto LABEL_95;
  }

  if (((1 << result) & 0x8060) != 0)
  {
    for (i = 0; i < v10; i += 4)
    {
      if (*(a4 + v7) < 0)
      {
        v26 = *(a4 + v7);
        v27 = v7 + 2;
        v28 = v7 + 3;
        v29 = v7 + 4;
        v7 += 5;
        if (v26 < 0xF0)
        {
          v7 = v29;
        }

        if (v26 < 0xE0)
        {
          v7 = v28;
        }

        if (v26 < 0xC0)
        {
          v7 = v27;
        }
      }

      else
      {
        ++v7;
      }
    }

    goto LABEL_127;
  }

  if (((1 << result) & 0x18) != 0)
  {
    v31 = 0;
    while (1)
    {
      if (*(a4 + v7) < 0)
      {
        v33 = *(a4 + v7);
        if (v33 >= 0xC0)
        {
          if (v33 > 0xDF)
          {
            goto LABEL_134;
          }

          v32 = 3;
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

      v7 += v32;
      *a3 = v7;
      v31 += 2;
      if (v31 >= v10)
      {
        return result;
      }
    }
  }

  if (((1 << result) & 0x180) != 0)
  {
    for (j = 0; j < v10; j += 8)
    {
      if (*(a4 + v7) < 0)
      {
        v24 = *(a4 + v7);
        if (v24 >= 0xC0)
        {
          if (v24 >= 0xE0)
          {
            if (v24 >= 0xF0)
            {
              if (v24 >= 0xF8)
              {
                if (v24 >= 0xFC)
                {
                  if (v24 >= 0xFE)
                  {
                    if (v24 == 255)
                    {
                      v7 += 9;
                    }

                    else
                    {
                      v7 += 8;
                    }
                  }

                  else
                  {
                    v7 += 7;
                  }
                }

                else
                {
                  v7 += 6;
                }
              }

              else
              {
                v7 += 5;
              }
            }

            else
            {
              v7 += 4;
            }
          }

          else
          {
            v7 += 3;
          }
        }

        else
        {
          v7 += 2;
        }
      }

      else
      {
        ++v7;
      }
    }
  }

  else
  {
LABEL_95:
    if (result >= 3)
    {
        ;
      }
    }

    v7 += v10;
  }

LABEL_127:
  *a3 = v7;
  return result;
}

void query_updateTimingOnInitialResults(uint64_t a1)
{
  if (*(a1 + 560) == 0.0 && *(a1 + 568) == 0.0 && *(a1 + 552) == 0.0 && *(a1 + 536) == 0.0 && *(a1 + 544) == 0.0)
  {
    v1 = *(a1 + 424);
    *(a1 + 544) = *(a1 + 408);
    *(a1 + 560) = v1;
    *(a1 + 528) = *(a1 + 392);
    *(a1 + 376) = CFAbsoluteTimeGetCurrent();
  }
}

void *slab_reset(void *result, unsigned int a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    result = *v2;
    *v2 = 0;
    *(*v3 + 8) = *v3 + 24;
    if (result)
    {
      do
      {
        v5 = *result;
        slab_vm_deallocate(result, result[2] - result, a2);
        result = v5;
      }

      while (v5);
    }
  }

  return result;
}

void si_querypipe_addresults(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v128 = a5;
  LODWORD(v127) = a3;
  v7 = a1;
  v158 = *MEMORY[0x1E69E9840];
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = *(v8 + 80);
  }

  while (v8);
  v10 = *(v9 + 8);
  pthread_mutex_lock((*v10 + 8));
  ++v10[21];
  pthread_mutex_unlock((*v10 + 8));
  if (a4)
  {
    v11 = *(a2 + 456);
    *(a2 + 456) = 0;
    si_querypipe_send_matchinfo(v7, v11);
  }

  Mutable = *(a2 + 440);
  if (Mutable)
  {
    *(a2 + 440) = 0;
    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    MutableUsingMalloc = *(a2 + 448);
    if (!MutableUsingMalloc)
    {
      goto LABEL_10;
    }
  }

  else
  {
    MutableUsingMalloc = *(a2 + 448);
    if (!MutableUsingMalloc)
    {
      goto LABEL_16;
    }
  }

  *(a2 + 448) = 0;
  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
LABEL_10:
  v14 = v7;
  do
  {
    v15 = v14;
    v14 = *(v14 + 80);
  }

  while (v14);
  v16 = *(v15 + 8);
  v17 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
  v17[1] = *(v7 + 48);
  *(v17 + 1) = si_querypipe_copy_jobid(v7);
  if (Mutable)
  {
    if (MutableUsingMalloc)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v53 = *MEMORY[0x1E695E480];
    Mutable = _MDPlistBytesCreateMutable();
    _MDPlistBytesBeginPlist();
    _MDPlistBytesBeginArray();
    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    if (MutableUsingMalloc)
    {
      goto LABEL_14;
    }
  }

  v54 = *MEMORY[0x1E695E480];
  MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
  _MDPlistBytesBeginPlist();
  _MDPlistBytesBeginArray();
  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
LABEL_14:
  _MDPlistBytesAppendPlistBytes();
  CFRelease(MutableUsingMalloc);
  *(v17 + 5) = Mutable;
  *v17 = 11;
  if (!si_resultqueue_enqueue(v16, v17))
  {
    SIResultBatchFree(v17);
  }

LABEL_16:
  v18 = *(a2 + 3536);
  if (!v18)
  {
    goto LABEL_65;
  }

  v19 = 0;
  v20 = 0;
  v21 = a2 + 464;
  do
  {
    if (*(a2 + 8 * v19 + 464))
    {
      VectorCount = _MDStoreOIDArrayGetVectorCount();
      v18 = *(a2 + 3536);
    }

    else
    {
      VectorCount = 0;
    }

    v20 += VectorCount;
    ++v19;
  }

  while (v19 < v18);
  if (!v20)
  {
LABEL_65:
    if (a4)
    {
      si_querypipe_remove_process(v7, v128, 0, 0);
    }

    goto LABEL_67;
  }

  if (*(v7 + 96))
  {
    goto LABEL_165;
  }

  v23 = v7;
  do
  {
    v24 = v23;
    v23 = *(v23 + 80);
  }

  while (v23);
  if (*(*(v24 + 8) + 12))
  {
LABEL_165:
    do
    {
LABEL_67:
      v51 = v7;
      v7 = *(v7 + 80);
    }

    while (v7);
    si_resultqueue_start(*(v51 + 8));
    goto LABEL_69;
  }

  v25 = *(v7 + 80);
  v125 = a2 + 464;
  if (!v25)
  {
    goto LABEL_72;
  }

  v26 = 0;
  v27 = v25;
  v28 = v7;
  do
  {
    v26 ^= *(v28 + 104) == 0;
    v28 = v27;
    v27 = *(v27 + 80);
  }

  while (v27);
  if ((v26 & 1) == 0)
  {
LABEL_72:
    v126 = a4;
    v55 = v25 != 0;
    if (v127)
    {
      v55 = v127;
    }

    LODWORD(v124) = v55;
    v127 = RLEOIDArrayCreateMutable(kCIQueryZoneAllocator);
    v123 = &v123;
    v154 = 0;
    v155 = &v154;
    v156 = 0x2000000000;
    v157 = 0;
    *buf = 0;
    v151 = buf;
    v152 = 0x2000000000;
    v153 = 0;
    v56 = *(a2 + 3536);
    MEMORY[0x1EEE9AC00](v127);
    v58 = (&v123 - ((v57 + 15) & 0xFFFFFFFF0));
    bzero(v58, v57);
    v59 = *(a2 + 3536);
    if (v59)
    {
      v60 = 0;
      v61 = 0;
      do
      {
        v62 = (a2 + 8 * v60);
        if (v62[443])
        {
          v103 = __si_assert_copy_extra_332();
          __message_assert_336(v103, v104, v105, v106, v107, v108, v109, v110, "SISearchCtx.h");
          free(v103);
          if (__valid_fs(-1))
          {
            v111 = 2989;
          }

          else
          {
            v111 = 3072;
          }

          *v111 = -559038737;
          abort();
        }

        if (v62[58])
        {
          v63 = v62[58];
          _MDStoreOIDArrayGetVectorCount();
          v141 = MEMORY[0x1E69E9820];
          v142 = 0x40000000;
          v143 = __si_querypipe_addresults_block_invoke;
          v144 = &unk_1E8193F78;
          v149 = v60;
          v147 = v7;
          v148 = v127;
          v145 = buf;
          v146 = v58;
          _MDStoreOIDArrayApplyBlock();
          v155[3] += v58[v60];
          if (!v62[186])
          {
            v62[186] = _MDPlistBytesCreateMutableUsingMallocWithZone();
          }

          v61 += _MDPlistBytesGetByteVectorCount();
          v59 = *(a2 + 3536);
        }

        ++v60;
      }

      while (v60 < v59);
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v64 = v155[3];
    if (!v64)
    {
      v65 = v124;
      v70 = v124 > 1;
      goto LABEL_115;
    }

    v65 = v124;
    if (v124 != 1)
    {
      v66 = v125;
      if (!v124)
      {
        if (!v59)
        {
          goto LABEL_94;
        }

        v67 = 0;
        v68 = 0;
        do
        {
          if (*(v66 + 8 * v67))
          {
            v69 = _MDStoreOIDArrayGetVectorCount();
            v59 = *(a2 + 3536);
          }

          else
          {
            v69 = 0;
          }

          v68 += v69;
          ++v67;
        }

        while (v67 < v59);
        if (v64 != v68)
        {
LABEL_94:
          if (*(v7 + 99) == 1)
          {
            PartialQueryResults::removeDupsInPlace(a2, v127);
          }
        }
      }

      goto LABEL_104;
    }

    v71 = v125;
    if (v59)
    {
      v72 = 0;
      v73 = 0;
      do
      {
        if (*(v71 + 8 * v72))
        {
          v74 = _MDStoreOIDArrayGetVectorCount();
          v59 = *(a2 + 3536);
        }

        else
        {
          v74 = 0;
        }

        v73 += v74;
        ++v72;
      }

      while (v72 < v59);
      v75 = v59 == 0;
      if (v64 == v73)
      {
LABEL_104:
        v70 = 1;
        goto LABEL_115;
      }
    }

    else
    {
      v75 = 1;
    }

    if (*(v7 + 99) == 1)
    {
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 0x40000000;
      v133 = __si_querypipe_addresults_block_invoke_2;
      v134 = &unk_1E8193FE0;
      v135 = &v154;
      v136 = buf;
      v137 = v127;
      v138 = v7;
      v139 = v128;
      v140 = 1;
      if (v61 >= 0x4C4B40)
      {
        if (!v75)
        {
          v98 = 443;
          v99 = a2;
          while (!v99[443])
          {
            v100 = v99[58];
            v99[58] = 0;
            v101 = v99[186];
            v99[186] = 0;
            v133(v132, v100, v101);
            v70 = 0;
            v102 = v98 - 442;
            ++v98;
            ++v99;
            if (v102 >= *(a2 + 3536))
            {
              goto LABEL_115;
            }
          }

          goto LABEL_162;
        }
      }

      else
      {
        v76 = PartialQueryResults::ownOidArray(a2);
        v77 = PartialQueryResults::ownFields(a2);
        v133(v132, v76, v77);
      }
    }

    v70 = 0;
LABEL_115:
    if (v127)
    {
      CFRelease(v127);
    }

    v78 = v126;
    if (v70)
    {
      if (v61 < 0xFFFFFFFF)
      {
        if (!*(a2 + 3544))
        {
          v79 = *(a2 + 464);
          *(a2 + 464) = 0;
          v80 = *(a2 + 3536);
          _MDStoreOIDArrayAppendMultipleOIDArrays();
          v81 = v155[3];
          v82 = *(a2 + 1488);
          *(a2 + 1488) = 0;
          v83 = *(a2 + 3536);
          if (v82)
          {
LABEL_141:
            _MDPlistBytesAppendMultiplePlistBytes();
          }

          else
          {
            if (v83 <= 1)
            {
              v95 = 1;
            }

            else
            {
              v95 = v83;
            }

            v96 = (a2 + 1496);
            v97 = 1;
            while (v95 != v97)
            {
              v82 = *v96;
              *v96++ = 0;
              ++v97;
              if (v82)
              {
                goto LABEL_141;
              }
            }

            v82 = 0;
          }

          _si_querypipe_addoids(v7, v65, v79, v81, v82, v78, v128);
          goto LABEL_143;
        }

LABEL_162:
        v112 = __si_assert_copy_extra_332();
        v120 = v112;
        goto LABEL_156;
      }

      v86 = *(a2 + 3536);
      if (v86)
      {
        v87 = 443;
        v88 = a2;
        while (!v88[443])
        {
          v89 = v88[58];
          v91 = *v58++;
          v90 = v91;
          v88[58] = 0;
          v92 = v88[186];
          v88[186] = 0;
          v93 = v87 - 442;
          if (v87 - 442 == v86)
          {
            v94 = v126;
          }

          else
          {
            v94 = 0;
          }

          _si_querypipe_addoids(v7, v65, v89, v90, v92, v94, v128);
          v86 = *(a2 + 3536);
          ++v87;
          ++v88;
          if (v93 >= v86)
          {
            goto LABEL_143;
          }
        }

        goto LABEL_162;
      }
    }

    else
    {
      if (v126)
      {
        si_querypipe_remove_process(v7, v128, 0, 0);
      }

      v84 = v7;
      do
      {
        v85 = v84;
        v84 = *(v84 + 80);
      }

      while (v84);
      si_resultqueue_start(*(v85 + 8));
    }

LABEL_143:
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v154, 8);
    if (!v70)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  if (!v18)
  {
    goto LABEL_67;
  }

  v29 = 0;
  v123 = v130;
  v124 = a2 + 3544;
  v126 = a4;
  while (1)
  {
    if (*(v21 + 8 * v29))
    {
      v30 = _MDStoreOIDArrayGetVectorCount();
    }

    else
    {
      v30 = 0;
    }

    if (*(v124 + 8 * v29))
    {
      v112 = __si_assert_copy_extra_332();
      v120 = v112;
LABEL_156:
      v121 = "SISearchCtx.h";
      goto LABEL_157;
    }

    v31 = *(v21 + 8 * v29) ? _MDStoreOIDArrayGetVector() : 0;
    v32 = malloc_type_malloc(8 * v30, 0x100004000313F17uLL);
    v33 = v32;
    v154 = 0;
    v155 = &v154;
    v156 = 0x2000000000;
    v157 = 0;
    if (!v31)
    {
      break;
    }

    memcpy(v32, v31, 8 * v30);
    qsort(v33, v30, 8uLL, _oidCmp);
    v34 = v7;
    do
    {
      v35 = v34;
      v34 = *(v34 + 80);
    }

    while (v34);
    v36 = *(v35 + 40);
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 0x40000000;
    v130[0] = __si_querypipe_addresults_block_invoke_5;
    v130[1] = &unk_1E8194008;
    v131 = v127;
    v130[2] = &v154;
    v130[3] = v31;
    RLEOIDArrayRemoveSortedOids(v36, v33, v30, v129);
    v37 = v7;
    if (!v155[3])
    {
      break;
    }

    do
    {
      v38 = v37;
      v37 = *(v37 + 80);
    }

    while (v37);
    if (*MEMORY[0x1E69E9AC8] <= 0x3FuLL)
    {
      ++sTotal;
    }

    v39 = *(v38 + 8);
    v40 = malloc_type_zone_calloc(queryZone, 1uLL, 0x40uLL, 0x5BAF1CEAuLL);
    if (!v40)
    {
      _log_fault_for_malloc_failure();
    }

    v40[1] = *(v7 + 48);
    *(v40 + 1) = si_querypipe_copy_jobid(v7);
    v41 = v155[3];
    v42 = 8 * v41;
    if (v41 < 512)
    {
      v43 = malloc_good_size(v42 + 8);
      v44 = malloc_type_malloc(v43, 0x100004000313F17uLL);
      goto LABEL_52;
    }

    v44 = mmap(0, (*MEMORY[0x1E69E9AC8] + v42 + 7) & ~*MEMORY[0x1E69E9AB8], 3, 4098, -268435456, 0);
    if (v44 == -1)
    {
      v112 = __si_assert_copy_extra_332();
      v120 = v112;
      v121 = "SIQueryPipe.cpp";
LABEL_157:
      __message_assert_336(v112, v113, v114, v115, v116, v117, v118, v119, v121);
      free(v120);
      if (__valid_fs(-1))
      {
        v122 = 2989;
      }

      else
      {
        v122 = 3072;
      }

      *v122 = -559038737;
      abort();
    }

LABEL_52:
    v45 = v7;
    do
    {
      v46 = v45;
      v45 = *(v45 + 80);
    }

    while (v45);
    v47 = (*(*(v46 + 8) + 80) << 32) | 0xDE10000;
    *v44 = v47;
    *v44 = *(v155 + 12) | v47;
    memcpy(v44 + 1, v33, 8 * v155[3]);
    free(v33);
    *v40 = 7;
    *(v40 + 5) = 0;
    v48 = *(v155 + 6);
    *(v40 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
    _MDStoreOIDArraySetShouldUseMalloc();
    *(v40 + 14) = 3;
    a4 = v126;
    if (v126 && v29 == *(a2 + 3536) - 1)
    {
      si_querypipe_remove_process(v7, v128, v40, 0);
      v21 = v125;
    }

    else
    {
      v21 = v125;
      if (!si_resultqueue_enqueue(v39, v40))
      {
        if (dword_1EBF46AD0 >= 5)
        {
          v49 = *__error();
          v50 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", buf, 2u);
          }

          *__error() = v49;
          a4 = v126;
          v21 = v125;
        }

        SIResultBatchFree(v40);
      }
    }

    _Block_object_dispose(&v154, 8);
    if (++v29 >= *(a2 + 3536))
    {
      goto LABEL_67;
    }
  }

  if (a4 && *(a2 + 3536) - 1 == v29)
  {
    si_querypipe_remove_process(v7, v128, 0, 0);
  }

  free(v33);
  _Block_object_dispose(&v154, 8);
LABEL_69:
  v52 = *MEMORY[0x1E69E9840];
}

void _CIIndexSetClearRange(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 24) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(a1 + 24);
  }

  if (*(a1 + 20) <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(a1 + 20);
  }

  v5 = v3 - v4;
  if (v3 == v4)
  {

    _CIIndexSetRemoveIndex(a1, v3);
    return;
  }

  if (v3 < v4)
  {
    return;
  }

  v7 = CFGetTypeID(a1);
  v8 = a1;
  if (v7 == __kCIIndexSetInvertedTypeID)
  {
    v9 = *(a1 + 16);
    if (v9 > -10 || ((v10 = *(a1 + 24) - *(a1 + 20), v11 = v5 - v9 - 9, v10 + 1 < v11) ? (v12 = v10 + 1) : (v12 = v11), v9 = -10 - v12, *(a1 + 16) = -10 - v12, (v12 & 0x80000000) != 0))
    {
      v13 = v5 + 1;
      if (v9 >= -1)
      {
        v14 = *(a1 + 32);
      }

      else
      {
        v14 = 4;
      }

      if (v9 < -1)
      {
        v9 = -2 - v9;
      }

      if (v14 < v9 + v13)
      {
        _CIIndexSetMakeSpace(a1, v13, 0, 0, 0);
        v8 = a1;
      }
    }
  }

  v15 = *(v8 + 16);
  if (v15 <= -10)
  {
    v16 = *(v8 + 24);
    v17 = v16 - v3;
    v18 = (v16 - v3) >> 5;
    v19 = v16 - v4;
    v20 = v19 >> 5;
    v21 = v19 & 0x1F;
    v22 = masks[v17 & 0x1F];
    if (v18 == v20)
    {
      v23 = v22 | ~masks[v21 + 1];
      v24 = *(v8 + 40);
    }

    else
    {
      v24 = *(v8 + 40);
      *(v24 + 4 * v18) &= v22;
      if (v18 + 1 < v20)
      {
        bzero((v24 + ((v17 >> 3) & 0x1FFFFFFC) + 4), 4 * (v20 - v18 - 2) + 4);
      }

      v23 = ~masks[v21 + 1];
      v18 = v20;
    }

    *(v24 + 4 * v18) &= v23;
    return;
  }

  if ((v15 & 0x80000000) == 0)
  {
    if (CFGetTypeID(v8) != __kCIIndexSetInvertedTypeID)
    {

      CIIndexSetClearRange_Array(a1, v4, v3);
      return;
    }

    v58 = -1;
    if (v4)
    {
      v25 = v4 - 1;
    }

    else
    {
      v25 = 0;
    }

    v26 = a1;
    v27 = searchMapWithHint(a1, v25, &v58, 1);
    v28 = *(a1 + 16);
    v29 = *(a1 + 32);
    if (v29 != v28)
    {
      v44 = *(a1 + 36);
      if (v44 == v27)
      {
        goto LABEL_61;
      }

      v55 = *(a1 + 40);
      if (v44 >= v27)
      {
        v57 = v27;
        memmove((v55 + 4 * (v29 - v28 + v27)), (v55 + 4 * v27), 4 * (v44 - v27));
        v27 = v57;
        v26 = a1;
      }

      else
      {
        v56 = v27;
        memmove((v55 + 4 * v44), (v55 + 4 * (v44 + v29 - v28)), 4 * (v27 - (v44 + v29 - v28)));
        v26 = a1;
        v27 = v56 - *(a1 + 32) + *(a1 + 16);
      }
    }

    *(v26 + 36) = v27;
LABEL_61:
    v45 = *(v26 + 40);
    v46 = v27 - 1;
    if (v27 >= 33)
    {
      LODWORD(v47) = 0;
      while (1)
      {
        v48 = v47 + (v46 - v47) / 2;
        v49 = *(v45 + 4 * v48);
        if (v49 == v3)
        {
          break;
        }

        if (v49 > v3)
        {
          LODWORD(v47) = v48 + 1;
        }

        else
        {
          v46 = v48 - 1;
        }

        if (v47 > v46 - 32)
        {
          v47 = v47;
          goto LABEL_70;
        }
      }
    }

    else
    {
      v47 = 0;
LABEL_70:
      if (v46 + 1 > v47)
      {
        v48 = v46 + 1;
      }

      else
      {
        v48 = v47;
      }

      while (v47 <= v46)
      {
        v50 = *(v45 + 4 * v47++);
        if (v50 <= v3)
        {
          v48 = v47 - 1;
          break;
        }
      }
    }

    if (v5 + 1 > v27 - v48)
    {
      *(v26 + 16) -= v27 - v48;
      *(v26 + 36) = v48;
      v51 = 4 * v48;
      do
      {
        *(*(v26 + 40) + v51) = v3;
        ++*(v26 + 16);
        ++*(v26 + 36);
        --v3;
        v51 += 4;
      }

      while (v3 >= v4);
    }

    return;
  }

  v30 = (-2 - v15);
  v31 = (v8 + 32);
  if (v15 > 0xFFFFFFFD || *v31 <= v3)
  {
    v32 = 0;
  }

  else
  {
    if (v15 == -3)
    {
LABEL_43:
      v32 = -2 - v15;
LABEL_52:
      *(v8 + 16) = -v32 - 2;
      return;
    }

    if (*(v8 + 36) <= v3)
    {
      v32 = 1;
    }

    else
    {
      if (v15 == -4)
      {
        goto LABEL_43;
      }

      if (*(v8 + 40) <= v3)
      {
        v32 = 2;
      }

      else
      {
        if (v15 == -5)
        {
          goto LABEL_43;
        }

        if (*(v8 + 44) <= v3)
        {
          v32 = 3;
        }

        else
        {
          if (v15 == -6)
          {
            goto LABEL_43;
          }

          if (*(v8 + 48) <= v3)
          {
            v32 = 4;
          }

          else
          {
            if (v15 == -7)
            {
LABEL_94:
              v32 = -2 - v15;
              v8 = a1;
              goto LABEL_52;
            }

            if (*(a1 + 52) <= v3)
            {
              v32 = 5;
              v8 = a1;
            }

            else
            {
              if (v15 == -8)
              {
                goto LABEL_94;
              }

              v8 = a1;
              v32 = -2 - v15;
              if (*(a1 + 56) > v3)
              {
                goto LABEL_52;
              }

              v32 = 6;
            }
          }
        }
      }
    }
  }

  LODWORD(v33) = v32;
  if (v32 < v30)
  {
    v33 = v32;
    while (v31[v33] >= v4)
    {
      if (v30 == ++v33)
      {
        goto LABEL_52;
      }
    }
  }

  *(v8 + 16) = v15 - v32 + v33;
  if (v33 < v30)
  {
    v34 = v32;
    v35 = v33;
    v36 = (-3 - (v33 + v15));
    if (v36 >= 7 && ((v32 - v33) & 0x3FFFFFFFFFFFFFF8) != 0)
    {
      v37 = v36 + 1;
      v38 = (v36 + 1) & 0x1FFFFFFF8;
      v39 = v38 + v35;
      v40 = (v8 + 4 * v35 + 48);
      v41 = (v8 + 4 * v34 + 48);
      v42 = v38;
      do
      {
        v43 = *v40;
        *(v41 - 1) = *(v40 - 1);
        *v41 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 8;
      }

      while (v42);
      if (v37 == v38)
      {
        return;
      }

      v34 |= v38;
    }

    else
    {
      v39 = v33;
    }

    v52 = (v8 + 4 * v39 + 32);
    v53 = (v8 + 4 * v34 + 32);
    do
    {
      v54 = *v52++;
      *v53++ = v54;
      LODWORD(v39) = v39 + 1;
    }

    while (v30 > v39);
  }
}

void ___ZL12processItemsP14datastore_infommP24si_localized_value_cachePmbU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmS4_ES4_ooPtmPhbjmbP16dispatch_queue_sS4_jP14__MDPlistBytes14ranking_mode_sP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tP19PartialQueryResultsRP20SISearchCtx_METADATAiRbP10ReadData_sPV3__0P22ci_combobits_wrapped_sP20dispatch_semaphore_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v269 = *MEMORY[0x1E69E9840];
  v267[4] = 0;
  v3 = **(a1 + 32);
  v4 = *(v3 + 16);
  v267[1] = *(v3 + 24);
  v267[2] = v3;
  v267[3] = v4;
  v267[0] = &unk_1F427CB68;
  v267[5] = 0;
  v5 = *(a1 + 40);
  v6 = v5 * a2;
  v7 = v5 * a2 + v5;
  if (v7 >= *(a1 + 48))
  {
    v8 = *(a1 + 48);
  }

  else
  {
    v8 = v7;
  }

  v266 = 0;
  v265 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v9 = setThreadIdAndInfo(*(*(**(a1 + 32) + 24) + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v11 = v10;
  v12 = v9;
  v13 = HIDWORD(v9);
  v15 = v14;
  v16 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
  *(v16 + 216) = 0;
  v17 = *(v16 + 312);
  v18 = *(v16 + 224);
  if (v18)
  {
    v18(*(v16 + 288));
  }

  v263 = v13;
  v264 = v12;
  v261 = v11;
  v262 = v15;
  if (_setjmp(v16))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v246 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v246, 2u);
    }

    *(v16 + 312) = v17;
    CIOnThreadCleanUpReset(v261);
    dropThreadId(v264, 1, add_explicit + 1);
    CICleanUpReset(v264, v262);
    goto LABEL_162;
  }

  v244 = v17;
  v19 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v20 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(**(a1 + 32) + 24) + 1192), 0x40000000, v19 + 1);
  v22 = v21;
  v23 = v20;
  v24 = HIDWORD(v20);
  v26 = v25;
  v27 = threadData;
  v28 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
  *(v28 + 216) = 0;
  v242 = *(v28 + 312);
  v29 = *(v28 + 224);
  if (v29)
  {
    v29(*(v28 + 288));
  }

  v259 = v24;
  v260 = v23;
  v257 = v22;
  v258 = v26;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v246 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v246, 2u);
    }

    *(v28 + 312) = v242;
    CIOnThreadCleanUpReset(v257);
    dropThreadId(v260, 1, v19 + 1);
    CICleanUpReset(v260, v258);
    LODWORD(v30) = v244;
    goto LABEL_159;
  }

  v31 = **(a1 + 32);
  v32 = *(v31 + 160);
  if (v32 > 6 || (v33 = 1 << v32, v34 = 1, (v33 & 0x4A) == 0))
  {
    v34 = *(v31 + 232) != 0;
  }

  v30 = v244;
  if (v6 >= v8)
  {
    goto LABEL_156;
  }

  v35 = v34;
  v36 = v6;
  v37 = 160 * v6;
  v243 = v19;
  v241 = v35;
  do
  {
    v38 = v36;
    v39 = v37;
    v40 = (*(a1 + 56) + 160 * v36);
    v41 = *v40;
    if (!*v40)
    {
      break;
    }

    v42 = *(a1 + 32);
    if (*(*(*v42 + 104) + 96))
    {
      goto LABEL_154;
    }

    v43 = *v40;
    v44 = v40[1];
    v45 = *(*v42 + 104);
    do
    {
      v46 = v45;
      v45 = *(v45 + 80);
    }

    while (v45);
    if (*(*(v46 + 8) + 12) == 1)
    {
LABEL_154:
      **(a1 + 64) = 1;
      v214 = v39;
      v215 = v38;
      do
      {
        *(*(a1 + 56) + v214) = 0;
        ++v215;
        v214 += 160;
      }

      while (v215 < v8);
      break;
    }

    if (*(a1 + 48) <= v38)
    {
      v223 = __si_assert_copy_extra_332();
      v224 = v223;
      v225 = "";
      if (v223)
      {
        v225 = v223;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 2831, "batchCount > i", v225);
      free(v224);
      if (__valid_fs(-1))
      {
        v226 = 2989;
      }

      else
      {
        v226 = 3072;
      }

      *v226 = -559038737;
      abort();
    }

    v234 = *v40;
    v235 = v44;
    v238 = v38;
    v239 = v39;
    v254 = *v40;
    v255 = 0;
    v256 = 0;
    v47 = *v42;
    v48 = *(v47 + 840);
    v236 = 5 * v38;
    v237 = v41;
    if (((*(v48 + 40) & 1) != 0 || (v49 = *(a1 + 72)) != 0 && *(v49 + v44)) && (v50 = *(v48 + 8), v51 = *(v47 + 152), !db_eval_obj_with_options(*(a1 + 80))) || *(a1 + 156) == 1 && (v52 = **(a1 + 32), v53 = *(*(v52 + 840) + 16), v54 = *(v52 + 152), !db_eval_obj_with_options(*(a1 + 80))))
    {
      *(*(a1 + 56) + 32 * v236) = 0;
      v57 = (*(a1 + 56) + 32 * v236);
      v57[4] = xmmword_1C2C00670;
      v57[5] = unk_1C2C00680;
      v57[6] = xmmword_1C2C00690;
      v57[2] = ZERO_RANKING_BITS;
      v57[3] = unk_1C2C00660;
      goto LABEL_38;
    }

    v55 = *(a1 + 56);
    if (v35)
    {
      if (*(a1 + 144) <= *(v55 + 160 * v238 + 16))
      {
        LOBYTE(v56) = 18;
      }

      else
      {
        v56 = *(v55 + 160 * v238 + 16);
      }
    }

    else
    {
      LOBYTE(v56) = 0;
    }

    v60 = v235;
    v61 = v56;
    v62 = (v55 + 32 * v236);
    v62[4] = xmmword_1C2C00670;
    v62[5] = unk_1C2C00680;
    v62[6] = xmmword_1C2C00690;
    v62[2] = ZERO_RANKING_BITS;
    v62[3] = unk_1C2C00660;
    v63 = *(a1 + 56) + 32 * v236;
    *(v63 + 112) = 0;
    *(v63 + 116) = 0;
    v64 = *(a1 + 56) + 32 * v236;
    *(v64 + 128) = 0;
    *(v64 + 136) = 0;
    *(v64 + 144) = 0;
    *(v64 + 120) = 0;
    v65 = *(a1 + 88);
    if (v65)
    {
      v66 = v65 + 80 * v235;
      v67 = *(v66 + 40);
      v68 = *(v66 + 68);
      v69 = *(v66 + 32);
      v70 = v68;
    }

    else
    {
      v67 = 0;
      v70 = 0;
      v69 = 0;
    }

    v71 = v67;
    v72 = v69;
    v233 = v61;
    if (!(v69 | v67) && !v70)
    {
      if (*(a1 + 157) == 1)
      {
        v73 = **(a1 + 32);
        v74 = *(v73 + 928);
        v75 = *(a1 + 96);
        v76 = *(*(v73 + 8) + 160);
        v77 = (v65 + 80 * v235);
        *&v246[16] = v77[1];
        v247 = v77[2];
        v248 = v77[3];
        v249 = v77[4];
        *v246 = *v77;
        if ((ci_donebits_push(v74, v75, v76, v61, v246) & 1) == 0)
        {
          goto LABEL_122;
        }
      }

LABEL_123:
      if (!*(a1 + 152))
      {
        if (*(v237 + 12) >= 0x31u)
        {
          v183 = v234 + 48;
          do
          {
            *(v183 + 12) = 0;
            v183 += *(v183 + 8) + 13;
          }

          while (v183 < v234 + *(v237 + 12));
        }

        v184 = **(a1 + 32);
        v185 = *(*(v184 + 840) + 24);
        v186 = *(v184 + 152);
        db_eval_obj_with_options(*(a1 + 80));
      }

      v187 = 5 * v235;
      if ((*(**(a1 + 32) + 160) | 2) == 3)
      {
        v188 = *(a1 + 88);
        if (v188)
        {
          v189 = (v188 + 80 * v235);
        }

        else
        {
          v189 = &ZERO_RANKING_BITS;
        }

        v190 = *(a1 + 128);
        v191 = *(a1 + 136);
        v192 = (v190 + v187);
        if (!v190)
        {
          v192 = &ZERO_WORD_DISTANCES;
        }

        LODWORD(buf) = *v192;
        BYTE4(buf) = v192[4];
        v193 = (v191 + 28 * v235);
        if (!v191)
        {
          v193 = &ZERO_VECTOR_DISTANCES;
        }

        *v246 = *v193;
        *&v246[12] = *(v193 + 12);
        memmove((*(a1 + 56) + 32 * v236 + 32), v189, 0x50uLL);
        v194 = *(a1 + 56) + 32 * v236;
        *(v194 + 116) = BYTE4(buf);
        *(v194 + 112) = buf;
        v195 = *(a1 + 56) + 32 * v236;
        *(v195 + 132) = *&v246[12];
        *(v195 + 120) = *v246;
        *(*(a1 + 56) + 32 * v236 + 16) = v233;
        v196 = v237;
      }

      else
      {
        v197 = v27;
        v198 = v19;
        v199 = v30;
        v200 = *(a1 + 88);
        if (v200)
        {
          v201 = (v200 + 80 * v235);
        }

        else
        {
          v201 = &ZERO_RANKING_BITS;
        }

        v202 = *(a1 + 128);
        v203 = *(a1 + 136);
        v204 = (v202 + v187);
        if (!v202)
        {
          v204 = &ZERO_WORD_DISTANCES;
        }

        LODWORD(v252) = *v204;
        BYTE4(v252) = v204[4];
        v205 = (v203 + 28 * v235);
        if (!v203)
        {
          v205 = &ZERO_VECTOR_DISTANCES;
        }

        *v246 = *v205;
        *&v246[12] = *(v205 + 12);
        memmove((*(a1 + 56) + 32 * v236 + 32), v201, 0x50uLL);
        v206 = *(a1 + 56) + 32 * v236;
        *(v206 + 116) = BYTE4(v252);
        *(v206 + 112) = v252;
        v207 = *(a1 + 56) + 32 * v236;
        *(v207 + 120) = *v246;
        *(v207 + 132) = *&v246[12];
        if (dword_1EBF46AD0 >= 5)
        {
          v211 = *__error();
          v212 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
          {
            v213 = *(*(a1 + 56) + 160 * v238 + 32);
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v213;
            _os_log_impl(&dword_1C278D000, v212, OS_LOG_TYPE_DEFAULT, "Set match bits %llx", &buf, 0xCu);
          }

          *__error() = v211;
          v199 = v244;
          v198 = v243;
        }

        v196 = v237;
        v30 = v199;
        v19 = v198;
        v27 = v197;
        v35 = v241;
      }

      v58 = v238;
      v59 = v239;
      if (!*(a1 + 152))
      {
        *(*(a1 + 56) + 160 * v238) = v196;
      }

      goto LABEL_148;
    }

    v78 = *(a1 + 96);
    if (!v78)
    {
      buf = 0uLL;
      v252 = 0;
      v253 = 0;
      v250 = 0;
      v251 = 0;
LABEL_64:
      LODWORD(v82) = 1;
      goto LABEL_65;
    }

    v79 = v61;
    v80 = *(*(a1 + 104) + 8 * v61);
    buf = 0uLL;
    v252 = 0;
    v253 = 0;
    v250 = 0;
    v251 = 0;
    if (v80 < v78)
    {
      goto LABEL_64;
    }

    v81 = *(**(a1 + 32) + 928);
    if (v81[1]._os_unfair_lock_opaque > v61)
    {
      v82 = *&v81[8 * v61 + 10]._os_unfair_lock_opaque;
      if (!v82)
      {
        goto LABEL_65;
      }

      v83 = v71;
      v84 = v69;
      os_unfair_lock_lock(v81);
      v85 = *(**(a1 + 32) + 928);
      v86 = *&v85[8 * v79 + 10]._os_unfair_lock_opaque;
      v87 = *v86[2];
      if (v87)
      {
        v88 = (v87 + 80);
      }

      else
      {
        v88 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v90 = *v88;
      v89 = *(v88 + 1);
      v92 = *v86;
      v91 = v86[1];
      v93 = *v92;
      if (v93)
      {
        v94 = (v93 + 80);
      }

      else
      {
        v94 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v96 = *v94;
      v95 = *(v94 + 1);
      v97 = *v91;
      if (v97)
      {
        v98 = (v97 + 80);
      }

      else
      {
        v98 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v100 = *v98;
      v99 = *(v98 + 1);
      *&buf = v90;
      *(&buf + 1) = v89;
      v252 = v96;
      v253 = v95;
      v250 = v100;
      v251 = v99;
      os_unfair_lock_unlock(v85);
      v72 = v84;
      v71 = v83;
      v60 = v235;
    }

    LODWORD(v82) = 0;
LABEL_65:
    v232 = v82;
    if (*(a1 + 148) == 2)
    {
      v101 = v30;
      v102 = *(a1 + 88);
      v103 = *(a1 + 32);
      v104 = v35;
      if (*(v102 + 80 * v60 + 68) == 1)
      {
        v105 = *v103;
        v106 = *(*(v105 + 840) + 56);
        v107 = *(v105 + 152);
        v108 = db_compute_ranking_score(*(a1 + 80));
        v60 = v235;
        v109 = *(a1 + 88);
        *(v109 + 80 * v235 + 64) = v108;
        v102 = v109;
        v103 = *(a1 + 32);
      }

      v114 = v102;
      v115 = *v103;
      v116 = *(v115 + 928);
      v117 = *(a1 + 96);
      v118 = *(*(v115 + 8) + 160);
      v119 = (v114 + 80 * v60);
      *&v246[16] = v119[1];
      v247 = v119[2];
      v248 = v119[3];
      v249 = v119[4];
      *v246 = *v119;
      v120 = v60;
      v121 = v233;
      v122 = v233;
      goto LABEL_119;
    }

    v110 = *(a1 + 88);
    v111 = v110 + 80 * v60;
    v112 = *(v111 + 64);
    if (*(v111 + 69))
    {
      if (v112 != 0.0)
      {
        goto LABEL_70;
      }
    }

    else if (*v111 != 0)
    {
LABEL_70:
      if (*(v111 + 60) == v112)
      {
        p_buf = &v252;
      }

      else
      {
        p_buf = &buf;
      }

      goto LABEL_76;
    }

    p_buf = &v250;
LABEL_76:
    v123 = **(a1 + 32);
    if (*(v123 + 960) < 1)
    {
      v167 = *(a1 + 148);
      v168 = **(a1 + 32);
      goto LABEL_114;
    }

    v124 = *(a1 + 112);
    v125 = *(a1 + 120);
    v126 = *(v123 + 960);
    v127 = *(a1 + 88);
    v128 = **(a1 + 32);
    v129 = v127;
    v228 = *p_buf;
    v229 = p_buf[1];
    v130 = v128;
    v240 = v8;
    v230 = v72;
    v231 = v71;
    while (1)
    {
      v131 = 0;
      v132 = v125;
      v133 = v126;
      v134 = v128;
      v135 = v126 - 1;
      v126 = v135;
      v136 = *(v130[121] + 8 * v135);
      v125 -= v136;
      v137 = *(v130[122] + 8 * v135);
      v138 = v124 - v137;
      LOBYTE(v124) = v124 - v137;
      v139 = -1 << v137;
      if ((v137 & 0x40) != 0)
      {
        v140 = 0;
      }

      else
      {
        v140 = -1 << v137;
      }

      v141 = v139 | (0x7FFFFFFFFFFFFFFFuLL >> ~v137);
      if ((*(v130[122] + 8 * v135) & 0x40) != 0)
      {
        v141 = v139;
      }

      v142 = (~v141 << v138) | (~v140 >> 1 >> ~v138);
      if ((v138 & 0x40) != 0)
      {
        v142 = ~v140 << v138;
      }

      else
      {
        v131 = ~v140 << v138;
      }

      if (v131 & v72 | v142 & v71)
      {
        break;
      }

      v153 = v134;
LABEL_105:
      v128 = v153;
      v155 = v127;
      v152 = v153;
LABEL_111:
      if (v133 <= 1)
      {
        goto LABEL_112;
      }
    }

    v143 = (v129 + 80 * v60);
    v144 = v143[1] & ~v142;
    *v143 &= ~v131;
    v143[1] = v144;
    if (*(v134[121] + 8 * v135))
    {
      v227 = v133;
      v145 = 0;
      v146 = 0;
      v147 = 48 * v132 - 48 * v136 + 56;
      do
      {
        v148 = *(v134[105] + v147);
        v149 = v134[19];
        if (db_eval_obj_with_options(*(a1 + 80)))
        {
          v150 = v145 + 1;
        }

        else
        {
          v150 = v145;
        }

        ++v146;
        v147 += 48;
        v134 = **(a1 + 32);
        v145 = v150;
      }

      while (v146 < *(v134[121] + 8 * v135));
      v151 = *(a1 + 88);
      v152 = **(a1 + 32);
      v8 = v240;
      v60 = v235;
      v72 = v230;
      v71 = v231;
      v133 = v227;
    }

    else
    {
      v151 = v127;
      v152 = v134;
      v150 = 0;
    }

    v154 = 0;
    v155 = v151;
    v156 = 1 << *(v152[122] + 8 * v135);
    v157 = v156 - 1;
    if (v150 < v156)
    {
      v157 = v150;
    }

    v158 = (v157 >> 63 << v138) | (v157 >> 1 >> ~v124);
    if ((v138 & 0x40) != 0)
    {
      v158 = v157 << v138;
    }

    else
    {
      v154 = v157 << v138;
    }

    v159 = (v155 + 80 * v60);
    v160 = v158 | v159[1];
    v161 = v154 | *v159;
    *v159 = v161;
    v159[1] = v160;
    v162 = v157 == 0;
    v163 = v232;
    if (!v162)
    {
      v163 = 1;
    }

    if (v163)
    {
      v127 = v155;
      v153 = v152;
      v129 = v155;
      v130 = v152;
      goto LABEL_105;
    }

    v164 = 0;
    v165 = (-1 << v138) | (0x7FFFFFFFFFFFFFFFuLL >> ~v124);
    if ((v138 & 0x40) != 0)
    {
      v165 = -1 << v138;
    }

    else
    {
      v164 = -1 << v138;
    }

    if (__PAIR128__(v160, v161) >= __PAIR128__(v165 & v229, v164 & v228))
    {
      v127 = v155;
      v128 = v152;
      v129 = v155;
      v130 = v152;
      goto LABEL_111;
    }

LABEL_112:
    v166 = v155;
    v167 = *(a1 + 148);
    v168 = v152;
    v110 = v166;
    v30 = v244;
    v35 = v241;
LABEL_114:
    v101 = v30;
    if (v167 == 1 && *(v110 + 80 * v60 + 68) == 1)
    {
      v104 = v35;
      v169 = *(v168[105] + 48 * *(v168 + 212) + 8);
      v170 = v168[19];
      v171 = db_compute_ranking_score(*(a1 + 80));
      v60 = v235;
      v172 = *(a1 + 88);
      *(v172 + 80 * v235 + 64) = v171;
      v110 = v172;
      v168 = **(a1 + 32);
    }

    else
    {
      v104 = v35;
    }

    v116 = v168[116];
    v117 = *(a1 + 96);
    v118 = *(v168[1] + 160);
    v173 = (v110 + 80 * v60);
    *v246 = *v173;
    v174 = v173[1];
    v175 = v173[2];
    v176 = v173[4];
    v248 = v173[3];
    v249 = v176;
    *&v246[16] = v174;
    v247 = v175;
    v120 = v60;
    v121 = v233;
    v122 = v233;
LABEL_119:
    if ((v232 | ci_donebits_push(v116, v117, v118, v122, v246)))
    {
      v35 = v104;
      v30 = v101;
      v19 = v243;
      v27 = threadData;
      goto LABEL_123;
    }

    v177 = **(a1 + 32);
    v178 = *(v177 + 928);
    v179 = *(*(v177 + 8) + 160);
    v180 = *(a1 + 96);
    v181 = (*(a1 + 88) + 80 * v120);
    *&v246[16] = v181[1];
    v247 = v181[2];
    v248 = v181[3];
    v249 = v181[4];
    *v246 = *v181;
    v182 = ci_donebits_check(v178, v180, v179, v121, v246);
    v35 = v104;
    v30 = v101;
    v19 = v243;
    v27 = threadData;
    if (v182)
    {
      goto LABEL_123;
    }

LABEL_122:
    if (*(a1 + 157) == 1)
    {
      goto LABEL_123;
    }

    *(*(a1 + 56) + 32 * v236) = 0;
    v208 = (*(a1 + 56) + 32 * v236);
    v208[4] = xmmword_1C2C00670;
    v208[5] = unk_1C2C00680;
    v208[6] = xmmword_1C2C00690;
    v208[2] = ZERO_RANKING_BITS;
    v208[3] = unk_1C2C00660;
    v209 = *(a1 + 56) + 32 * v236;
    *(v209 + 112) = 0;
    *(v209 + 116) = 0;
    v210 = *(a1 + 56) + 32 * v236;
    *(v210 + 120) = 0;
    *(v210 + 128) = 0;
    *(v210 + 144) = 0;
    *(v210 + 136) = 0;
LABEL_38:
    v58 = v238;
    v59 = v239;
LABEL_148:
    v265 = v58;
    v36 = v58 + 1;
    v37 = v59 + 160;
  }

  while (v58 + 1 != v8);
LABEL_156:
  v266 = 1;
  v216 = v27[9 * v260 + 1] + 320 * v259;
  *(v216 + 312) = v242;
  v217 = *(v216 + 232);
  if (v217)
  {
    v217(*(v216 + 288));
  }

  dropThreadId(v260, 0, v19 + 1);
LABEL_159:
  v218 = v27[9 * v264 + 1] + 320 * v263;
  *(v218 + 312) = v30;
  v219 = *(v218 + 232);
  if (v219)
  {
    v219(*(v218 + 288));
  }

  dropThreadId(v264, 0, add_explicit + 1);
LABEL_162:
  if ((v266 & 1) == 0)
  {
    v220 = v8 - v265;
    if (v8 > v265)
    {
      v221 = 160 * v265;
      do
      {
        *(*(a1 + 56) + v221) = 0;
        v221 += 160;
        --v220;
      }

      while (v220);
    }
  }

  QueryFunctionCallbackContext_METADATA::~QueryFunctionCallbackContext_METADATA(v267);
  v222 = *MEMORY[0x1E69E9840];
}

void __si_querypipe_addresults_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 48);
  do
  {
    v8 = v7;
    v7 = *(v7 + 80);
  }

  while (v7);
  v9 = (a5 - 1);
  if (a5 == 1)
  {
    v13 = 0;
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = *(v8 + 40);
    v12 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
    memcpy(v12, (a4 + 8), 8 * v9);
    qsort_oids(v12, v9);
    pthread_rwlock_wrlock((v10 + 16));
    pthread_rwlock_wrlock((v11 + 16));
    v14[0] = 0;
    v14[1] = v10 + 216;
    v13 = SIValueSet<unsigned long long>::_SIValueSetAddSortedValues((v11 + 216), v12, v9, v14);
    pthread_rwlock_unlock((v11 + 16));
    pthread_rwlock_unlock((v10 + 16));
    free(v12);
  }

  *(*(a1 + 40) + 8 * *(a1 + 64)) += v13;
  *(*(*(a1 + 32) + 8) + 24) += v9;
}

void qsort_oids(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 < 2)
  {
LABEL_19:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a2 > 2047)
  {
    v5 = OSAtomicDequeue(&qsort_cached_allocations_11823, 0);
    if (!v5)
    {
      v5 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
    }

    v6 = dispatch_group_create();
    v5[3] = v6;
    v5[4] = 0;
    v5[1] = 0;
    v5[2] = a2 - 1;
    *v5 = a1;
    v7 = thread_count_11824;
    if (!thread_count_11824)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count_11824, &v10, 0, 0);
      v7 = thread_count_11824;
    }

    *(v5 + 14) = v7;
    v5[5] = sqrt(a2) / 2;
    if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count_11824, &v10, 0, 0);
      v7 = thread_count_11824;
    }

    v8 = a2 / (2 * v7);
    if (v8 <= 0x8000)
    {
      v8 = 0x8000;
    }

    else if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count_11824, &v10, 0, 0);
      v8 = a2 / (2 * thread_count_11824);
    }

    v5[6] = v8;
    if (v5[5] <= 2047)
    {
      v5[5] = 2048;
    }

    _qsort_big_oid_t(v5);
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
    goto LABEL_19;
  }

  v4 = *MEMORY[0x1E69E9840];

  _qsort_oid_t(a1, 0, a2 - 1);
}

void packItems(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, SISearchCtx_METADATA **a16, unsigned __int8 a17, char *a18, OSQueueHead *__list, void *a20, unsigned __int8 a21)
{
  v529 = *MEMORY[0x1E69E9840];
  makeThreadId();
  v485 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v23 = setThreadIdAndInfo(*(*(*a16 + 3) + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v25 = v24;
  v26 = v23;
  v27 = HIDWORD(v23);
  v29 = v28;
  v30 = threadData[9 * v23 + 1] + 320 * HIDWORD(v23);
  *(v30 + 216) = 0;
  v31 = *(v30 + 312);
  v32 = *(v30 + 224);
  v33 = v30;
  if (v32)
  {
    v32(*(v30 + 288));
  }

  v484 = v26;
  v483 = v27;
  if (_setjmp(v33))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    v33[78] = v31;
    CIOnThreadCleanUpReset(v25);
    dropThreadId(v26, 1, add_explicit + 1);
    CICleanUpReset(v26, v29);
    v34 = a18;
    v35 = a16;
    goto LABEL_268;
  }

  v465 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v36 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(*a16 + 3) + 1192), 0x40000000, v465 + 1);
  v38 = v37;
  v39 = v36;
  v40 = HIDWORD(v36);
  v42 = v41;
  v43 = threadData[9 * v36 + 1] + 320 * HIDWORD(v36);
  *(v43 + 216) = 0;
  v464 = *(v43 + 312);
  v44 = *(v43 + 224);
  v35 = a16;
  if (v44)
  {
    v44(*(v43 + 288));
  }

  v482 = v39;
  v481 = v40;
  v480 = v42;
  if (_setjmp(v43))
  {
    v34 = a18;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v43 + 312) = v464;
    CIOnThreadCleanUpReset(v38);
    dropThreadId(v39, 1, v465 + 1);
    CICleanUpReset(v39, v480);
    goto LABEL_265;
  }

  v46 = *(*(*a16 + 3) + 1192);
  v463 = v46;
  v474 = add_explicit;
  v473 = v31;
  if (*(*(*a16 + 1) + 762) == 1)
  {
    v47 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 16);
    v48 = *SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46);
    v49 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 24);
    v50 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 32);
    v51 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 8);
    v52 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 48);
    v53 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 40);
    add_explicit = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 56);
    v54 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 64);
    v55 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 72);
    v56 = v54;
    v57 = v53;
    v58 = v51;
    v59 = v47;
    v60 = v52;
    v35 = a16;
    v61 = add_explicit;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v49 = 0;
    v59 = 0;
    v48 = 0;
    v50 = 0;
    v60 = 0;
    v61 = 0;
    v55 = 0;
  }

  v34 = a18;
  v462 = v55;
  v461 = v61;
  v460 = v60;
  v459 = v50;
  v458 = v48;
  v457 = v59;
  v456 = v49;
  v455 = v58;
  v454 = v57;
  v453 = v56;
  if (!a2)
  {
    v370 = 0;
    goto LABEL_262;
  }

  v62 = a11;
  v452 = a15 + 2512;
  v451 = a15 + 3544;
  v63 = a17;
  v64 = 65533;
  v65 = 0;
  v66 = 0;
  v67 = 224;
  do
  {
    v68 = v63;
    v69 = v67;
    v70 = v65;
    v71 = v66;
    if (*(v452 + 8 * v62) >= v64)
    {
      v72 = v34;
      v73 = v64;
      v74 = v67;
      v75 = *&(*v35)[26]._os_unfair_lock_opaque;
      do
      {
        v76 = v75;
        v75 = *(v75 + 80);
      }

      while (v75);
      v77 = v45;
      v78 = *(*&(*v35)[26]._os_unfair_lock_opaque + 80);
      if (v78)
      {
        v79 = add_explicit;
        v80 = *&(*v35)[26]._os_unfair_lock_opaque;
        v81 = 0;
        do
        {
          v82 = v81 ^ (*(v80 + 104) == 0);
          v81 ^= *(v80 + 104) == 0;
          v80 = v78;
          v78 = *(v78 + 80);
        }

        while (v78);
        v83 = v68;
        v84 = v70;
        if (v82)
        {
          v85 = 3553;
        }

        else
        {
          v85 = 2781;
        }
      }

      else
      {
        v79 = add_explicit;
        v83 = v63;
        v84 = v70;
        v85 = 2781;
      }

      PartialQueryResults::prepare(a15, *(*(v76 + 8) + 80), v85, v62);
      v70 = v84;
      v68 = v83;
      v45 = v77;
      v69 = v74;
      add_explicit = v79;
      v64 = v73;
      v34 = v72;
    }

    v86 = &v34[160 * v70];
    v87 = *v86;
    *v86 = 0;
    if (!v87)
    {
      v88 = v45;
      v90 = v69;
      v91 = v71;
      goto LABEL_259;
    }

    if (a17)
    {
      v88 = v45;
      v89 = v69;
      goto LABEL_258;
    }

    v446 = v45;
    v447 = v68;
    v443 = v87;
    v92 = *v35;
    v448 = v71;
    if (*(*&(*v35)[2]._os_unfair_lock_opaque + 762) == 1)
    {
      v93 = v87;
      v444 = add_explicit;
      v445 = v69;
      v94 = v70;
      *buf = 0;
      v95 = (*(*&v92->_os_unfair_lock_opaque + 88))(v92, buf);
      v96 = *v35;
      v97 = *buf;
      v98 = a15;
      v99 = *(a15 + 440);
      v100 = v35;
      if (!v99)
      {
        os_unfair_lock_lock((a15 + 4568));
        v101 = a15;
        if (!*(a15 + 440))
        {
          MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
          _MDPlistBytesBeginPlist();
          _MDPlistBytesBeginArray();
          __dmb(0xBu);
          *(a15 + 440) = MutableUsingMalloc;
          v101 = a15;
        }

        v103 = v101;
        os_unfair_lock_unlock((a15 + 4568));
        v98 = v103;
        v99 = *(v103 + 440);
        v100 = a16;
      }

      v104 = v64;
      v105 = v95;
      v396 = v95;
      v106 = v96;
      v107 = v463;
      v108 = v93;
      v109 = v98;
      extractSynonymUnalignedMatchingField(v106, v463, v93, v458, v457, v456, v459, v455, v462, v98, v396, v97, v99);
      v110 = v109;
      v111 = *v100;
      v112 = *buf;
      v113 = *(v110 + 448);
      if (!v113)
      {
        v114 = v110;
        os_unfair_lock_lock((a15 + 4568));
        if (!*(v114 + 448))
        {
          v115 = _MDPlistBytesCreateMutableUsingMalloc();
          _MDPlistBytesBeginPlist();
          _MDPlistBytesBeginArray();
          __dmb(0xBu);
          *(v114 + 448) = v115;
          v107 = v463;
        }

        os_unfair_lock_unlock((a15 + 4568));
        v113 = *(v114 + 448);
        v110 = v114;
        v100 = a16;
        v104 = 65533;
        v108 = v93;
      }

      extractPersonUnalignedMatchingField(v111, v107, v108, v454, v461, v453, v460, v110, v105, v112, v113);
      v116 = *v100;
      v34 = a18;
      v35 = v100;
      v70 = v94;
      v68 = v447;
      v117 = v448;
      add_explicit = v444;
      v69 = v445;
      v87 = v108;
      v64 = v104;
    }

    else
    {
      v117 = v71;
      v116 = *v35;
    }

    v118 = v86;
    if (*(v116 + 650))
    {
      v119 = 18;
    }

    else
    {
      v119 = 2;
    }

    v120 = *(v116 + 13);
    if (!a1 || *(v120 + 99) != 1)
    {
      v127 = *(v86 + 4);
      v126 = *(v86 + 5);
      v405 = *(v118 + 9);
      v400 = *(v118 + 8);
      v128 = *(v118 + 21);
      v402 = *(v118 + 22);
      v403 = *(v118 + 20);
      v129 = *(v118 + 92);
      v401 = v118[100];
      v404 = v118[101];
      if (*(v120 + 98) == 1 && (*(v120 + 99) & 1) == 0)
      {
        v150 = *v87;
        ++*(v452 + 8 * a11);
        v151 = *(v451 + 8 * a11);
        *v151 = v150;
        *(v451 + 8 * a11) = v151 + 1;
        v89 = v69;
LABEL_101:
        v187 = add_explicit;
        v188 = *a16;
        v189 = *(*a16 + 116);
        if (v189)
        {
          v190 = v118[16];
          if (*(v188 + 164) > v190)
          {
            v191 = v68;
            v192 = v34;
            if (*(v188 + 50) & v127 | *(v188 + 51) & v126)
            {
              v193 = *(v188 + 52) & v127;
              *&buf[8] = *(v188 + 53) & v126;
              *buf = v193;
            }

            else
            {
              *buf = v127;
              *&buf[8] = v126;
            }

            v194 = *(v188 + 58) & v127 | *(v188 + 59) & v126;
            if (v194)
            {
              v195 = v70;
              v196 = 0;
              v197 = *(v188 + 62) & v127;
              v198 = *(v188 + 129);
              v199 = v197 << v198;
              v200 = ((*(v188 + 63) & v126) << v198) | (v197 >> 1 >> ~v198);
              if ((v198 & 0x40) != 0)
              {
                v200 = v199;
              }

              else
              {
                v196 = v199;
              }

              v194 = v196 | 1;
            }

            else
            {
              v195 = v70;
              v200 = 0;
            }

            v35 = a16;
            v201 = *(v188 + 22);
            *&buf[16] = v194;
            *&buf[24] = v200;
            *&v511 = v400;
            *(&v511 + 1) = v405;
            *&v512[0] = __PAIR64__(v128, v403);
            DWORD2(v512[0]) = v402;
            *(v512 + 12) = v129;
            BYTE4(v512[1]) = v401 & 1;
            BYTE5(v512[1]) = v404 & 1;
            ci_donebits_push(v189, a12, v201, v190, buf);
            v88 = v446;
            v68 = v191;
            add_explicit = v187;
            v62 = a11;
            v64 = 65533;
            v70 = v195;
            v34 = v192;
            v71 = v448;
            goto LABEL_258;
          }
        }

        v88 = v446;
        v35 = a16;
        v62 = a11;
        v64 = 65533;
        goto LABEL_106;
      }

      v130 = v34;
      v513 = 0u;
      memset(v512, 0, sizeof(v512));
      v511 = 0u;
      *&buf[16] = 0u;
      *buf = 0u;
      v131 = *(v116 + 2);
      *&buf[16] = *(v116 + 3);
      *&buf[24] = v131;
      LOBYTE(v511) = 1;
      v512[0] = 0u;
      *&v513 = 0;
      v132 = v70;
      if (*&buf[16])
      {
        v133 = *(*&buf[16] + 6586) >> 7;
      }

      else
      {
        LOBYTE(v133) = 1;
      }

      BYTE8(v513) = v133;
      *buf = &unk_1F42826A0;
      *(&v511 + 1) = v87;
      *&buf[8] = v119 | 8;
      if (a4)
      {
        v134 = v69;
        v135 = *(v116 + 19);
        v137 = *(v116 + 2);
        v136 = *(v116 + 3);
        v494 = 0uLL;
        DWORD2(v495) = 0;
        add_explicit &= 0xFFFFFF0000000000;
        *&v495 = 0;
        eventParseDBO(v136, a4, a5, a15, v135, buf, v137, 0, 0, 0, 0, &ZERO_RANKING_BITS, add_explicit, SBYTE4(add_explicit), &v494, 0, v116, a20);
        v138 = *(*a16 + 13);
        do
        {
          v139 = v138;
          v138 = *(v138 + 80);
        }

        while (v138);
        v140 = *(v139 + 40);
        v141 = **(&v511 + 1);
        pthread_rwlock_wrlock((v140 + 16));
        SIValueSet<unsigned long long>::SIValueSetInsert((v140 + 216), v141);
        pthread_rwlock_unlock((v140 + 16));
        v142 = v134;
        goto LABEL_98;
      }

      if (*(v116 + 40) != 4)
      {
        v174 = *(v116 + 19);
        v176 = *(v116 + 2);
        v175 = *(v116 + 3);
        v496 = xmmword_1C2C00670;
        v497 = unk_1C2C00680;
        v498 = xmmword_1C2C00690;
        v494 = ZERO_RANKING_BITS;
        v495 = unk_1C2C00660;
        v177 = v69 & 0xFFFFFF0000000000;
        writeDBOToPlistBytes(v175, a14, a15, v174, buf, v176, 0, 0, 0, &v494, v177, SBYTE4(v177), &ZERO_VECTOR_DISTANCES, 0, a11, v116, *(v116 + 1), a20);
        v142 = v177;
LABEL_98:
        if (*(&v511 + 1) == v443)
        {
          *(&v511 + 1) = 0;
        }

        CatInfoGotten_SDB::~CatInfoGotten_SDB(buf);
        v89 = v142;
        v70 = v132;
        v34 = v130;
        v68 = v447;
        v117 = v448;
        goto LABEL_101;
      }

      if (*(v116 + 157))
      {
        v143 = (v116 + 1264);
        v144 = v87;
        os_unfair_lock_lock(v143);
        v145 = v144;
        LOBYTE(v144) = SIUINT32SetContainsValue(*(*a16 + 157), *(v144 + 4));
        os_unfair_lock_unlock(*a16 + 316);
        if (v144)
        {
LABEL_97:
          v142 = v69;
          goto LABEL_98;
        }

        v116 = *a16;
        v87 = v145;
      }

      v146 = *(v116 + 3);
      v147 = *(a15 + 232);
      if (*a15 == 1)
      {
        if (v147)
        {
          if (!*(a15 + 104))
          {
            v148 = *(a15 + 128);
            if (v148)
            {
              *&v494 = 0;
              v149 = v87;
              SIFlattenArrayToCStringVector(v148, (a15 + 104), &v494, v505);
              v87 = v149;
            }
          }
        }
      }

      else if (v147)
      {
        if (!*(a15 + 96))
        {
          v183 = *(a15 + 120);
          if (v183)
          {
            v184 = v87;
            SIFlattenArrayToCStringVector(v183, (a15 + 96), (a15 + 240), (a15 + 232));
            v87 = v184;
            if (!*(a15 + 96))
            {
              v387 = __si_assert_copy_extra_332();
              __message_assert_336(v387, v388, v389, v390, v391, v392, v393, v394, "SISearchCtx.h");
              free(v387);
              if (__valid_fs(-1))
              {
                v395 = 2989;
              }

              else
              {
                v395 = 3072;
              }

              *v395 = -559038737;
              abort();
            }
          }
        }
      }

      v185 = v146;
      v186 = v87;
      collectAttributesFromDBO(v185, v87, a1, a15, *(*a16 + 19));
      if (*(*a16 + 157))
      {
        os_unfair_lock_lock(*a16 + 316);
        SIValueSet<unsigned int>::SIValueSetInsert((*(*a16 + 157) + 16), *(v186 + 4));
        os_unfair_lock_unlock(*a16 + 316);
      }

      goto LABEL_97;
    }

    v121 = *(v116 + 40);
    if (v121 == 4)
    {
      v122 = *(v116 + 22);
      v449 = v70;
      if (!(a12 | v122))
      {
        v123 = v68;
        v124 = v116;
        v125 = a15;
        goto LABEL_127;
      }

      v178 = *(v86 + 4);
      v179 = *(v86 + 5);
      v441 = v87;
      if ((*(v116 + 25) & *(v86 + 2)) == 0)
      {
        *buf = *(v86 + 4);
        *&buf[8] = v179;
      }

      else
      {
        v180 = *(v116 + 52) & v178;
        *&buf[8] = *(v116 + 53) & v179;
        *buf = v180;
      }

      v123 = v68;
      if (*(v116 + 58) & v178 | *(v116 + 59) & v179)
      {
        v202 = *(v116 + 62) & v178;
        v203 = *(v116 + 129);
        v204 = v202 << v203;
        v205 = ((*(v116 + 63) & v179) << v203) | (v202 >> 1 >> ~v203);
        if ((v203 & 0x40) != 0)
        {
          v206 = v204;
        }

        else
        {
          v206 = v205;
        }

        if ((v203 & 0x40) != 0)
        {
          v207 = 0;
        }

        else
        {
          v207 = v204;
        }

        v208 = v207 | 1;
        v209 = v206;
      }

      else
      {
        v209 = 0;
        v208 = 0;
      }

      v211 = *(v118 + 8);
      v210 = *(v118 + 9);
      v212 = *(v118 + 20);
      v213 = *(v118 + 21);
      v214 = *(v118 + 22);
      v215 = *(v118 + 92);
      v216 = v118[100];
      v217 = v118[101];
      v218 = *(v118 + 8);
      v219 = *(v116 + 116);
      *&buf[16] = v208;
      *&buf[24] = v209;
      *&v511 = v211;
      *(&v511 + 1) = v210;
      *&v512[0] = __PAIR64__(v213, v212);
      DWORD2(v512[0]) = v214;
      *(v512 + 12) = v215;
      BYTE4(v512[1]) = v216 & 1;
      BYTE5(v512[1]) = v217 & 1;
      if (ci_donebits_check(v219, a12, v122, v218, buf))
      {
        v124 = *v35;
        v125 = a15;
        v87 = v441;
LABEL_127:
        v71 = v117;
        if (*(v124 + 157))
        {
          v220 = v87;
          os_unfair_lock_lock(v124 + 316);
          v221 = v220;
          LOBYTE(v220) = SIUINT32SetContainsValue(*&(*v35)[314]._os_unfair_lock_opaque, *(v220 + 4));
          os_unfair_lock_unlock(*v35 + 316);
          if (v220)
          {
            v88 = v446;
            v68 = v123;
            v89 = v69;
            v62 = a11;
LABEL_145:
            v70 = v449;
            goto LABEL_258;
          }

          v124 = *v35;
          v87 = v221;
          v125 = a15;
        }

        v222 = *(v124 + 3);
        v223 = *(v125 + 29);
        if (*v125 == 1)
        {
          v62 = a11;
          if (v223)
          {
            if (!*(a15 + 104))
            {
              v224 = *(v125 + 16);
              if (v224)
              {
                *buf = 0;
                v225 = v87;
                v226 = v125;
                SIFlattenArrayToCStringVector(v224, (a15 + 104), buf, &v494);
                v125 = v226;
                v87 = v225;
                v64 = 65533;
                v71 = v117;
              }
            }
          }
        }

        else
        {
          v62 = a11;
          if (v223)
          {
            if (!*(a15 + 96))
            {
              v227 = *(v125 + 15);
              if (v227)
              {
                v228 = v87;
                v229 = v125;
                SIFlattenArrayToCStringVector(v227, (a15 + 96), (a15 + 240), (a15 + 232));
                v125 = v229;
                v87 = v228;
                v64 = 65533;
                v71 = v117;
                if (!*(a15 + 96))
                {
                  v378 = __si_assert_copy_extra_332();
                  __message_assert_336(v378, v379, v380, v381, v382, v383, v384, v385, "SISearchCtx.h");
                  free(v378);
                  if (__valid_fs(-1))
                  {
                    v386 = 2989;
                  }

                  else
                  {
                    v386 = 3072;
                  }

                  *v386 = -559038737;
                  abort();
                }
              }
            }
          }
        }

        v230 = v222;
        v231 = v87;
        collectAttributesFromDBO(v230, v87, a1, v125, *&(*v35)[38]._os_unfair_lock_opaque);
        if (*&(*v35)[314]._os_unfair_lock_opaque)
        {
          os_unfair_lock_lock(*v35 + 316);
          SIValueSet<unsigned int>::SIValueSetInsert((*&(*v35)[314]._os_unfair_lock_opaque + 16), *(v231 + 4));
          os_unfair_lock_unlock(*v35 + 316);
        }

        v88 = v446;
        v68 = v123;
        v89 = v69;
        goto LABEL_145;
      }

      v88 = v446;
      v68 = v123;
      v89 = v69;
      v62 = a11;
      v70 = v449;
LABEL_106:
      v71 = v117;
      goto LABEL_258;
    }

    v152 = *(v86 + 4);
    v153 = *(v86 + 5);
    v154 = v153;
    v155 = *(v86 + 7);
    v424 = *(v86 + 6);
    v156 = *(v86 + 8);
    v157 = *(v86 + 9);
    v158 = *(v86 + 20);
    v159 = v158;
    v160 = *(v118 + 21);
    v161 = *(v118 + 22);
    v163 = *(v118 + 23);
    v162 = *(v118 + 24);
    v164 = v118[100];
    v434 = v164;
    v165 = v118[101];
    v433 = v165;
    v508 = *(v118 + 102);
    v509 = *(v118 + 55);
    v166 = v118[116];
    v435 = *(v118 + 28);
    *v479 = *(v118 + 120);
    v167 = v118[16];
    *&v479[12] = *(v118 + 132);
    v432 = v161;
    v431 = v157;
    v430 = v158;
    v423 = v152;
    *&v420 = v152;
    if (v121 != 3)
    {
      v181 = v152;
      v71 = v117;
      v182 = v153;
      goto LABEL_225;
    }

    v418 = v118[16];
    ++*(v116 + 10);
    v168 = *(v116 + 3);
    v506 = v508;
    v507 = v509;
    *(&v420 + 1) = v153;
    v170 = (v152 & a9) == a6 && (v153 & a10) == a7;
    v71 = v117;
    if (!v168 || (v171 = *(v168 + 1192)) == 0)
    {
      v181 = v152;
      goto LABEL_224;
    }

    v419 = v170;
    v421 = v165;
    v422 = v164;
    v425 = v154;
    v427 = v156;
    v428 = v155;
    v436 = v166;
    v415 = v167;
    v438 = v119;
    v450 = v70;
    v417 = *v87;
    v440 = v87;
    if (*(v116 + 44))
    {
      v172 = *(v168 + 1192);
      *buf = *(v168 + 2064);
      *&buf[4] = 0;
      *&v494 = 0;
      *v505 = 0;
      if (!db_get_field_by_id(v171, v87, buf, &v494, v505) && *v494 == 11 && (*(v494 + 2) & 0x10) != 0)
      {
        db_get_string_for_id_locked(v172, *(v494 + 13));
      }

      v173 = *(v116 + 44);
    }

    else
    {
      v173 = 0;
    }

    os_unfair_lock_lock(v173);
    v232 = *(v116 + 44);
    if (*(v232 + 4) <= v167)
    {
      goto LABEL_223;
    }

    v233 = (v232 + 24 * v418);
    v234 = v233[3];
    if (v234 - 1 <= *(v116 + 21))
    {
      memset(v515, 0, sizeof(v515));
      *(&v513 + 6) = v508;
      HIWORD(v513) = v509;
      *buf = v417;
      *&buf[8] = 0;
      *&buf[16] = v423;
      *&buf[24] = v425;
      *&v511 = v424;
      *(&v511 + 1) = v428;
      *&v512[0] = v427;
      *(&v512[0] + 1) = v431;
      *&v512[1] = __PAIR64__(LODWORD(v160), v158);
      *(&v512[1] + 1) = __PAIR64__(LODWORD(v163), v432);
      LODWORD(v513) = v162;
      BYTE4(v513) = v434;
      BYTE5(v513) = v433;
      v514 = v419;
      v242 = (v233 + 1);
      goto LABEL_222;
    }

    v235 = v233[1];
    if (v235)
    {
      v236 = (v235 + 14);
    }

    else
    {
      v236 = &ZERO_OIDINFO;
    }

    v237 = *(v236 + 16);
    v238 = *(v236 + 17);
    v239 = *(v236 + 19);
    if (*(v236 + 85) & 1) != 0 || (v433)
    {
      if (v163 != v239 || v160 <= v238 && (v160 == v238 ? (_CF = v158 >= v237) : (_CF = 1), _CF))
      {
        v241 = v163 != 100.0;
        if (v163 <= v239)
        {
          v241 = v239 == 100.0;
        }

        if (!v241)
        {
          goto LABEL_223;
        }
      }
    }

    else
    {
      v245 = v236 + 1;
      v243 = *(v236 + 2);
      v244 = *(v245 + 1);
      if (__PAIR128__(v244, v243) >= v420)
      {
        if (*(&v420 + 1) != v244 || v420 != v243)
        {
          goto LABEL_223;
        }

        if (v160 <= v238 && (v160 != v238 || v158 >= v237))
        {
          goto LABEL_223;
        }
      }
    }

    if (v234 == 1)
    {
      v246 = *(v116 + 44);
      *(v516 + 7) = 0;
      v516[0] = 0;
      v247 = 0;
      v248 = v246;
      goto LABEL_221;
    }

    v249 = v233[1];
    v250 = v235[15];
    v251 = v235 + 14;
    v252 = *(v235 + 209);
    v253 = v235[27];
    v254 = &v235[14 * v234];
    v517 = *(v254 - 7);
    v256 = *(v254 - 12);
    v255 = *(v254 - 11);
    v490 = *(v254 - 5);
    v492 = *(v254 - 4);
    v257 = *(v254 - 12);
    v258 = *(v254 - 11);
    v259 = *(v254 - 10);
    v260 = *(v254 - 9);
    v261 = *(v254 - 8);
    v262 = *(v254 - 28);
    v263 = *(v254 - 27);
    v264 = *(v254 - 26);
    v265 = *(v254 - 9);
    v518 = *(v254 - 1);
    *v251 = *(v254 - 7);
    *(v249 + 144) = v490;
    *(v249 + 160) = v492;
    v266 = v518;
    *(v249 + 208) = v518;
    v528 = v517;
    v488 = v262;
    v486 = v261;
    v520 = v265;
    v519 = v264;
    *(v249 + 128) = v256;
    *(v249 + 136) = v255;
    *(v249 + 176) = v257;
    *(v249 + 180) = v258;
    *(v249 + 184) = v259;
    *(v249 + 188) = v260;
    *(v249 + 192) = v261;
    *(v249 + 196) = v262;
    *(v249 + 197) = v263;
    *(v249 + 206) = v265;
    *(v249 + 198) = v264;
    v267 = v233[2];
    v407 = v233[3];
    v233[3] = v407 - 1;
    *v505 = v490;
    *&v505[16] = v492;
    v412 = v255;
    v413 = v250;
    v516[0] = v252;
    *(v516 + 7) = v253;
    v268 = v255;
    v414 = v257;
    v410 = v259;
    v411 = v257;
    v409 = v263;
    v408 = v267 >> 1;
    v503 = v261;
    v504 = v262;
    v526 = v264;
    v269 = 3;
    v270 = 2;
    v271 = 1;
    v527 = v520;
    v525 = v266;
    v406 = v255;
    while (1)
    {
      v272 = v71;
      v273 = v269;
      v274 = v270;
      v398 = v233[1];
      v399 = v271;
      v275 = v398 + 112 * v270;
      v277 = *(v275 + 16);
      v276 = *(v275 + 24);
      v278 = *(v275 + 64);
      v279 = *(v275 + 68);
      v280 = *(v275 + 72);
      v281 = *(v275 + 76);
      v282 = *(v275 + 85);
      v283 = v398 + 112 * v273;
      v524 = *v283;
      v285 = *(v283 + 16);
      v284 = *(v283 + 24);
      v286 = *(v283 + 48);
      v501 = *(v283 + 32);
      v502 = v286;
      v287 = *(v283 + 64);
      v288 = *(v283 + 68);
      v289 = *(v283 + 72);
      v290 = *(v283 + 76);
      v499 = *(v283 + 80);
      v500 = *(v283 + 84);
      v291 = *(v283 + 85);
      v522 = *(v283 + 86);
      v523 = *(v283 + 94);
      v521 = *(v283 + 96);
      v397 = v273;
      if (v273 >= v407)
      {
        v524 = MAX_OIDINFO;
        v501 = xmmword_1C2C00730;
        v502 = unk_1C2C00740;
        v499 = 0;
        v500 = 0;
        v522 = 0;
        v523 = 0;
        v521 = 0uLL;
        v35 = a16;
        v71 = v272;
        if (v274 >= v407)
        {
          goto LABEL_220;
        }

        v293 = -1;
        v288 = 0.0;
        v291 = 0;
        v290 = 3.4028e38;
        v289 = 0;
        v294 = 0;
        v292 = -1;
      }

      else
      {
        v292 = v284;
        v293 = v285;
        v294 = v287;
      }

      *buf = v256;
      *&buf[8] = v268;
      *&buf[16] = v490;
      v511 = v492;
      *&v512[0] = __PAIR64__(LODWORD(v258), v411);
      *(&v512[0] + 1) = __PAIR64__(LODWORD(v260), v410);
      LODWORD(v512[1]) = v486;
      BYTE4(v512[1]) = v488;
      BYTE5(v512[1]) = v409;
      *(&v512[1] + 6) = v519;
      HIWORD(v512[1]) = v520;
      *(&v494 + 1) = v292;
      *&v494 = v293;
      v495 = v501;
      v496 = v502;
      v295 = v294;
      *&v497 = __PAIR64__(LODWORD(v288), v294);
      *(&v497 + 1) = __PAIR64__(LODWORD(v290), v289);
      LODWORD(v498) = v499;
      BYTE4(v498) = v500;
      BYTE5(v498) = v291;
      HIWORD(v498) = v523;
      *(&v498 + 6) = v522;
      if ((v282 & 1) == 0)
      {
        break;
      }

      if (v281 < v260)
      {
        goto LABEL_185;
      }

      if (v281 != v260)
      {
        goto LABEL_204;
      }

LABEL_182:
      if (v279 >= v258 && (v279 != v258 || v278 <= v414))
      {
        goto LABEL_204;
      }

LABEL_185:
      v297 = v276;
      v298 = v277;
      v299 = v278;
      v300 = v280;
      v301 = (v275 + 96);
      if (v291)
      {
        v302 = v290 == v281;
        if (v290 < v281)
        {
          goto LABEL_197;
        }
      }

      else
      {
        if (__PAIR128__(v292, v293) < __PAIR128__(v276, v277))
        {
          goto LABEL_197;
        }

        v302 = v292 == v276 && v293 == v277;
      }

      if (v302 && (v288 < v279 || v288 == v279 && v295 > v278))
      {
LABEL_197:
        v301 = &v521;
        v303 = &v522;
        v304 = &v499;
        v305 = &v501;
        v306 = &v524;
        v300 = v289;
        v307 = v288;
        v308 = v292;
        v274 = v397;
        goto LABEL_199;
      }

      v306 = v275;
      v305 = (v275 + 32);
      v304 = (v275 + 80);
      v303 = (v275 + 86);
      v291 = v282;
      v290 = v281;
      v307 = v279;
      v295 = v299;
      v293 = v298;
      v308 = v297;
LABEL_199:
      v517 = *v306;
      v491 = *v305;
      v493 = v305[1];
      v487 = *v304;
      v489 = *(v304 + 4);
      v519 = *v303;
      v520 = *(v303 + 4);
      v518 = *v301;
      _X12 = v398 + 224 * v274;
      __asm { PRFM            #1, [X12] }

      v268 = v406;
      if (v274 == v399)
      {
        goto LABEL_219;
      }

      v313 = v528;
      v314 = v398 + 112 * v274;
      *v314 = v528;
      *(v314 + 16) = v256;
      *(v314 + 24) = v406;
      *(v314 + 32) = *v505;
      *(v314 + 48) = *&v505[16];
      *(v314 + 64) = v411;
      *(v314 + 68) = v258;
      *(v314 + 72) = v410;
      *(v314 + 76) = v260;
      v315 = v503;
      *(v314 + 80) = v503;
      *(v314 + 84) = v504;
      *(v314 + 85) = v409;
      *(v314 + 94) = v527;
      v316 = v526;
      *(v314 + 86) = v526;
      v317 = v525;
      *(v314 + 96) = v525;
      v318 = v233[1] + 112 * v399;
      *v318 = v517;
      *(v318 + 32) = v491;
      *(v318 + 48) = v493;
      *(v318 + 68) = v307;
      v269 = (2 * v274) | 1;
      *(v318 + 16) = v293;
      *(v318 + 24) = v308;
      *(v318 + 64) = v295;
      *(v318 + 72) = v300;
      *(v318 + 76) = v290;
      *(v318 + 84) = v489;
      *(v318 + 80) = v487;
      *(v318 + 85) = v291;
      *(v318 + 94) = v520;
      *(v318 + 86) = v519;
      *(v318 + 96) = v518;
      v517 = v313;
      v490 = *v505;
      v492 = *&v505[16];
      v488 = v504;
      v486 = v315;
      v520 = v527;
      v519 = v316;
      v271 = v274;
      v270 = 2 * v274;
      v518 = v317;
      v35 = a16;
      v71 = v272;
      if (v274 >= v408)
      {
        goto LABEL_220;
      }
    }

    if (__PAIR128__(v276, v277) < __PAIR128__(v412, v256))
    {
      goto LABEL_185;
    }

    if (v276 == v412 && v277 == v256)
    {
      goto LABEL_182;
    }

LABEL_204:
    v416 = v233;
    v475 = v290;
    v476 = v288;
    v478 = v260;
    v477 = v258;
    if (ci_rankingbits_wrapped_s::operator<(&v494, buf))
    {
      v301 = &v521;
      v303 = &v522;
      v304 = &v499;
      v305 = &v501;
      v306 = &v524;
      v290 = v475;
      v300 = v289;
      v307 = v476;
      v308 = v292;
      v274 = v397;
      v258 = v477;
      v260 = v478;
      v34 = a18;
      v272 = v448;
      v233 = v416;
      goto LABEL_199;
    }

    _X8 = v398 + 224 * v399;
    __asm { PRFM            #1, [X8] }

    v34 = a18;
    v272 = v448;
LABEL_219:
    v35 = a16;
    v71 = v272;
LABEL_220:
    v248 = *(v116 + 44);
    v247 = v413;
LABEL_221:
    *buf = v417;
    *&buf[8] = v247;
    *&buf[24] = v425;
    *&buf[16] = v423;
    *(&v511 + 1) = v428;
    *&v511 = v424;
    *(&v512[0] + 1) = v431;
    *&v512[0] = v427;
    *&v512[1] = __PAIR64__(LODWORD(v160), v430);
    *(&v512[1] + 1) = __PAIR64__(LODWORD(v163), v432);
    LODWORD(v513) = v162;
    BYTE4(v513) = v434;
    BYTE5(v513) = v433;
    *(&v513 + 6) = v506;
    HIWORD(v513) = v507;
    v514 = v419;
    *v515 = v516[0];
    *&v515[7] = *(v516 + 7);
    v242 = (v248 + 24 * v418 + 8);
LABEL_222:
    pqpush_oid_and_rankinfo_t(v242, buf);
LABEL_223:
    os_unfair_lock_unlock(*(v116 + 44));
    v167 = v415;
    v116 = *v35;
    v70 = v450;
    v87 = v440;
    v64 = 65533;
    v119 = v438;
    v166 = v436;
    v161 = v432;
    v157 = v431;
    v159 = v430;
    v156 = v427;
    v155 = v428;
    v154 = v425;
    v181 = v423;
    v164 = v422;
    v165 = v421;
LABEL_224:
    v182 = *(&v420 + 1);
LABEL_225:
    v323 = v116;
    v324 = *(v116 + 22);
    if (a12 | v324)
    {
      v329 = *(v116 + 50) & v420 | *(v116 + 51) & v182;
      v442 = v87;
      v439 = v119;
      v437 = v166;
      v429 = v155;
      v426 = v154;
      v330 = v165;
      if (v329)
      {
        v331 = *(v323 + 52) & v420;
        *&buf[8] = *(v323 + 53) & v182;
        *buf = v331;
      }

      else
      {
        *buf = v181;
        *&buf[8] = v154;
      }

      v332 = *(v323 + 58) & v420 | *(v323 + 59) & v182;
      if (v332)
      {
        v333 = v70;
        v334 = 0;
        v335 = *(v323 + 62) & v420;
        v336 = *(v323 + 129);
        v337 = v164;
        v338 = v335 << v336;
        v339 = ((*(v323 + 63) & v182) << v336) | (v335 >> 1 >> ~v336);
        if ((v336 & 0x40) != 0)
        {
          v339 = v338;
        }

        else
        {
          v334 = v338;
        }

        v164 = v337;
        v332 = v334 | 1;
      }

      else
      {
        v333 = v70;
        v339 = 0;
      }

      v340 = *(v323 + 116);
      *&buf[16] = v332;
      *&buf[24] = v339;
      v325 = v156;
      *&v511 = v156;
      *(&v511 + 1) = v157;
      *&v512[0] = __PAIR64__(LODWORD(v160), v159);
      *(&v512[0] + 1) = __PAIR64__(LODWORD(v163), v161);
      LODWORD(v512[1]) = v162;
      BYTE4(v512[1]) = v164 & 1;
      BYTE5(v512[1]) = v330 & 1;
      v341 = ci_donebits_check(v340, a12, v324, v167, buf);
      v326 = v341 | a21;
      if (v341)
      {
        v328 = 8;
      }

      else
      {
        v328 = 0;
      }

      v327 = *v35;
      v70 = v333;
      v87 = v442;
      v119 = v439;
      v166 = v437;
      v155 = v429;
      v154 = v426;
      v181 = v423;
    }

    else
    {
      v325 = v156;
      v326 = 1;
      v327 = v116;
      v328 = 0;
    }

    v342 = v181;
    v343 = v154;
    if (*(*(v327 + 8) + 672))
    {
      v344 = v424;
      v345 = v431;
      v346 = v430;
      v347 = v432;
      v348 = v434;
      v349 = v433;
    }

    else
    {
      v344 = v424;
      v345 = v431;
      v346 = v430;
      v347 = v432;
      v348 = v434;
      v349 = v433;
      if (*(v327 + 832) == 1)
      {
        v508 = 0;
        v509 = 0;
        v347 = 0;
        v346 = -1;
        v160 = 0.0;
        v343 = 0;
        v344 = 0;
        v155 = 0;
        v325 = 0;
        v345 = 0;
        v342 = 0;
        v163 = 0.0;
        v162 = 0;
        v348 = 0;
        v349 = 0;
      }
    }

    if (v326)
    {
      v350 = v70;
      v351 = *(v87 + 40);
      v513 = 0u;
      memset(v512, 0, sizeof(v512));
      v511 = 0u;
      *&buf[16] = 0u;
      *buf = 0u;
      v352 = *(v327 + 16);
      *&buf[16] = *(v327 + 24);
      *&buf[24] = v352;
      LOBYTE(v511) = 1;
      v512[0] = 0u;
      *&v513 = 0;
      if (*&buf[16])
      {
        v353 = *(*&buf[16] + 6586) >> 7;
      }

      else
      {
        LOBYTE(v353) = 1;
      }

      v356 = v435 | (v166 << 32);
      BYTE8(v513) = v353;
      *buf = &unk_1F42826A0;
      *(&v511 + 1) = v87;
      *&buf[8] = v328 | (v351 >> 15) & 1 | v119;
      v358 = *(v327 + 16);
      v357 = *(v327 + 24);
      v359 = *(v327 + 152);
      v360 = *(v327 + 224);
      v361 = *(v327 + 232);
      if (a4)
      {
        v362 = v64;
        v363 = add_explicit;
        v364 = v69;
        *&v494 = v342;
        *(&v494 + 1) = v343;
        *&v495 = v344;
        *(&v495 + 1) = v155;
        *&v496 = v325;
        *(&v496 + 1) = v345;
        *&v497 = __PAIR64__(LODWORD(v160), v346);
        *(&v497 + 1) = __PAIR64__(LODWORD(v163), v347);
        LODWORD(v498) = v162;
        BYTE4(v498) = v348;
        BYTE5(v498) = v349;
        *(&v498 + 6) = v508;
        HIWORD(v498) = v509;
        *v505 = *v479;
        v365 = v446 & 0xFFFFFF0000000000 | v356 & 0xFFFFFFFFFFLL;
        *&v505[12] = *&v479[12];
        eventParseDBO(v357, a4, a5, a15, v359, buf, v358, v360, v361, SHIDWORD(v361), v167, &v494, v356, SBYTE4(v365), v505, a3, v327, a20);
        v366 = *&(*v35)[26]._os_unfair_lock_opaque;
        do
        {
          v367 = v366;
          v366 = *(v366 + 80);
        }

        while (v366);
        v368 = *(v367 + 40);
        v369 = **(&v511 + 1);
        pthread_rwlock_wrlock((v368 + 16));
        SIValueSet<unsigned long long>::SIValueSetInsert((v368 + 216), v369);
        pthread_rwlock_unlock((v368 + 16));
        v354 = v365;
        v355 = v447;
        v69 = v364;
        add_explicit = v363;
        v64 = v362;
      }

      else
      {
        *&v494 = v342;
        *(&v494 + 1) = v343;
        *&v495 = v344;
        *(&v495 + 1) = v155;
        *&v496 = v325;
        *(&v496 + 1) = v345;
        *&v497 = __PAIR64__(LODWORD(v160), v346);
        *(&v497 + 1) = __PAIR64__(LODWORD(v163), v347);
        LODWORD(v498) = v162;
        BYTE4(v498) = v348;
        BYTE5(v498) = v349;
        *(&v498 + 6) = v508;
        HIWORD(v498) = v509;
        *v505 = *v479;
        *&v505[12] = *&v479[12];
        v355 = v447 & 0xFFFFFF0000000000 | v356 & 0xFFFFFFFFFFLL;
        writeDBOToPlistBytes(v357, a14, a15, v359, buf, v358, v360, v361, v167, &v494, v356, SBYTE4(v355), v505, *a3, a11, v327, *(v327 + 8), a20);
        v354 = v446;
      }

      if (*(&v511 + 1) == v443)
      {
        *(&v511 + 1) = 0;
      }

      CatInfoGotten_SDB::~CatInfoGotten_SDB(buf);
      v70 = v350;
      v34 = a18;
      v71 = v448;
    }

    else
    {
      v354 = v446;
      v355 = v447;
    }

    v88 = v354;
    v68 = v355;
    v89 = v69;
    v62 = a11;
LABEL_258:
    v91 = v71 + 1;
    v90 = v89;
LABEL_259:
    v370 = v91;
    v67 = v90;
    v63 = v68;
    v45 = v88;
    v65 = v70 + 1;
    v66 = v91;
  }

  while (v70 + 1 != a2);
LABEL_262:
  atomic_fetch_add(&(*v35)[136], v370);
  v485 = 1;
  v371 = threadData[9 * v482 + 1] + 320 * v481;
  *(v371 + 312) = v464;
  v372 = *(v371 + 232);
  if (v372)
  {
    v372(*(v371 + 288));
  }

  dropThreadId(v482, 0, v465 + 1);
  LODWORD(add_explicit) = v474;
  v31 = v473;
LABEL_265:
  v373 = threadData[9 * v484 + 1] + 320 * v483;
  *(v373 + 312) = v31;
  v374 = *(v373 + 232);
  if (v374)
  {
    v374(*(v373 + 288));
  }

  dropThreadId(v484, 0, add_explicit + 1);
LABEL_268:
  OSAtomicEnqueue(__list, v34, 0);
  if (a13)
  {
    db_obj_iter_return_page(*&(*v35)[228]._os_unfair_lock_opaque, a13);
  }

  if ((v485 & 1) == 0)
  {
    v375 = *__error();
    v376 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v376, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "packItems";
      *&buf[12] = 1024;
      *&buf[14] = 2677;
      _os_log_error_impl(&dword_1C278D000, v376, OS_LOG_TYPE_ERROR, "%s:%d: Assertion caught during query", buf, 0x12u);
    }

    *__error() = v375;
  }

  v377 = *MEMORY[0x1E69E9840];
}