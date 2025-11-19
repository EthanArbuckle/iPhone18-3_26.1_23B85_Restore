void *__db_sanitize_query_tree_block_invoke(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (!v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = si_calendar_retain();
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v10 = 0;
  __s = 0;
  v5 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    *buf = MEMORY[0x1E69E9820];
    v12 = 0x40000000;
    v13 = __expandFunctionsISO8601_block_invoke;
    v14 = &__block_descriptor_tmp_9_5409;
    v15 = v4;
    if (_expandFunctions(a2, &__s, 0x200uLL, v4, buf, v5) == 0x10000)
    {
      asprintf(&v10, "$time.iso(%s)", &__s);
      v6 = v10;
      goto LABEL_11;
    }
  }

  else
  {
    _expandFunctions(a2, &__s, 0x200uLL, v4, &__block_literal_global_4_5387, v5);
  }

  v7 = strlen(&__s);
  v6 = malloc_type_zone_malloc(queryZone, v7 + 1, 0xA4971684uLL);
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  memcpy(v6, &__s, v7);
  *(v6 + v7) = 0;
LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t parseTimeUnit(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *a1 + 1;
  result = **a1;
  *a1 = v5;
  if (result <= 103)
  {
    if (result != 77 && result != 89 && result != 100)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (result <= 114)
    {
      if (result == 104 || result == 109)
      {
        return result;
      }

LABEL_12:
      *a1 = v3;
      return a2;
    }

    if (result != 115 && result != 119)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t __expandFunctionsISO8601_block_invoke(uint64_t a1, char *a2, size_t a3, CFAbsoluteTime a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  CFCalendarDecomposeAbsoluteTime(v7, a4, "yMdHms", &v10, &v9 + 4, &v9, &v11 + 4, &v11, &v10 + 4);
  return snprintf(a2, a3, "%04i-%02i-%02iT%02i:%02i:%02iZ", v10, HIDWORD(v9), v9, HIDWORD(v11), v11, HIDWORD(v10));
}

uint64_t check_and_decompose_string(unsigned __int8 *a1, unint64_t a2, unsigned __int8 **a3, unint64_t *a4)
{
  v27 = 0;
  *a3 = a1;
  *a4 = a2;
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v28 = 0;
  v9 = a1;
  do
  {
    if ((*v9 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    v26 = 0;
    v10 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v9 >> 4];
    if (utf8_decodestr(v9, v10, &v26, &v27, 4, &v28, 0))
    {
      return 22;
    }

    if (v26 >= 0xC0u)
    {
      v11 = __CFUniCharDecomposableBitmap[v26 >> 8];
      if (__CFUniCharDecomposableBitmap[v26 >> 8])
      {
        if (v11 == 255 || ((__CFUniCharDecomposableBitmap[32 * v11 + 224 + (v26 >> 3)] >> (v26 & 7)) & 1) != 0)
        {
          break;
        }
      }
    }

    v8 += v10 - 1;
    v9 += v10 - 1;
LABEL_4:
    ++v8;
    ++v9;
  }

  while (v8 < a2);
  if (v8 >= a2)
  {
    if (v8 <= a2)
    {
      return 0;
    }

    return 22;
  }

  for (i = 2 * a2 + 2 * (a2 >> 2) + 2; ; i += 64)
  {
    v13 = malloc_type_malloc(i, 0x1000040BDFB0063uLL);
    if (!v13)
    {
      break;
    }

    v14 = utf8_decodestr(a1, a2, v13, &v27, i, &v28, 4);
    if (!v14)
    {
      break;
    }

    if (v14 == 22)
    {
      free(v13);
      return 22;
    }

    free(v13);
  }

  v16 = v27;
  if (v27 >= 2)
  {
    v17 = 0;
    v21 = v27 >> 1;
    v22 = v13;
    do
    {
      v25 = *v22++;
      v24 = v25;
      if (!v25)
      {
        v24 = 9216;
      }

      if (v24 < 0x80)
      {
        v23 = 1;
      }

      else if (v24 >= 0x800)
      {
        if ((v24 & 0xF800) == 0xD800)
        {
          v23 = 2;
        }

        else
        {
          v23 = 3;
        }
      }

      else
      {
        v23 = 2;
      }

      v17 += v23;
      --v21;
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

  v18 = malloc_type_malloc(v17 + 1, 0xE5333DECuLL);
  v19 = utf8_encodestr(v13, v16, v18, &v27, v17 + 1);
  if (v19)
  {
    v20 = v19;
    free(v13);
    free(v18);
    return v20;
  }

  v18[v17] = 0;
  *a3 = v18;
  *a4 = v17 + 1;
  free(v13);
  return 0;
}

void *db_copy_field_ids_with_buffer(int *a1, char *a2, void *a3, unint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      v14 = "db_copy_field_ids_with_buffer";
      v15 = 1024;
      v16 = 285;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 285, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v4 = *MEMORY[0x1E69E9840];

  return internal_copy_field_ids(a1, a2, a3, a4, 0);
}

uint64_t set_offset_hint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 4);
    if (*(a3 + 4) < 0)
    {
      v11 = *(a3 + 4);
      if (v11 > 0xBF)
      {
        if (v11 > 0xDF)
        {
          if (v11 > 0xEF)
          {
            if (v11 > 0xF7)
            {
              if (v11 > 0xFB)
              {
                if (v11 > 0xFD)
                {
                  if (v11 == 255)
                  {
                    v5 = *(a3 + 5);
                    v6 = 9;
                  }

                  else
                  {
                    v5 = (*(a3 + 5) << 48) | (*(a3 + 6) << 40) | (*(a3 + 7) << 32) | (*(a3 + 8) << 24) | (*(a3 + 9) << 16) | (*(a3 + 10) << 8) | *(a3 + 11);
                    v6 = 8;
                  }
                }

                else
                {
                  v5 = ((v5 & 1) << 48) | (*(a3 + 5) << 40) | (*(a3 + 6) << 32) | (*(a3 + 7) << 24) | (*(a3 + 8) << 16) | (*(a3 + 9) << 8) | *(a3 + 10);
                  v6 = 7;
                }
              }

              else
              {
                v5 = ((v5 & 3) << 40) | (*(a3 + 5) << 32) | (*(a3 + 6) << 24) | (*(a3 + 7) << 16) | (*(a3 + 8) << 8) | *(a3 + 9);
                v6 = 6;
              }
            }

            else
            {
              v5 = ((v5 & 7) << 32) | (*(a3 + 5) << 24) | (*(a3 + 6) << 16) | (*(a3 + 7) << 8) | *(a3 + 8);
              v6 = 5;
            }
          }

          else
          {
            v5 = ((v5 & 0xF) << 24) | (*(a3 + 5) << 16) | (*(a3 + 6) << 8) | *(a3 + 7);
            v6 = 4;
          }
        }

        else
        {
          v5 = ((v5 & 0x1F) << 16) | (*(a3 + 5) << 8) | *(a3 + 6);
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
        v5 = *(a3 + 5) | ((v5 & 0x3F) << 8);
      }
    }

    else
    {
      v6 = 1;
    }

    v12 = (a3 + 4 + v6);
    v13 = *v12;
    if (*v12 < 0)
    {
      if (v13 >= 0xC0)
      {
        if (v13 >= 0xE0)
        {
          v23 = __si_assert_copy_extra_3233(0, -1);
          v24 = v23;
          v25 = "";
          if (v23)
          {
            v25 = v23;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v25);
          free(v24);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v13 = v12[v14];
    }

    v15 = *(a1 + 928);
    v16 = *(a1 + 804);
    v8 = (v15 + 8);
    pthread_rwlock_wrlock((v15 + 8));
    v17 = *(v15 + 220);
    if (v17 >= 1)
    {
      v18 = v16 & (v13 >> 5) & 1;
      v19 = a3 - a2 - 20;
      v20 = v15 + 272;
      while (*v20 != a2)
      {
        v20 += 48;
        if (!--v17)
        {
          goto LABEL_42;
        }
      }

      if (v19 <= 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = v5;
      }

      if (v19 <= 0)
      {
        v18 = 0;
      }

      *(v20 + 24) = v21;
      *(v20 + 32) = v18;
      *(v20 + 40) = v19 & ~(v19 >> 63);
    }
  }

  else
  {
    v7 = *(a1 + 928);
    v8 = (v7 + 8);
    pthread_rwlock_wrlock((v7 + 8));
    v9 = *(v7 + 220);
    if (v9 >= 1)
    {
      v10 = v7 + 272;
      while (*v10 != a2)
      {
        v10 += 48;
        if (!--v9)
        {
          goto LABEL_42;
        }
      }

      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
    }
  }

LABEL_42:

  return pthread_rwlock_unlock(v8);
}

void SISynchedOpPropagatingPriority(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
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
      v8 = delayed_op_prop0;
    }

    v9 = *(a1 + 1104);

    si_enqueue_work_for_job(v9, v8, v7, 0);
  }

  else
  {

    a3(a4, 1);
  }
}

uint64_t SIFetchCSClientState(uint64_t a1, void *a2, const void *a3, int a4, void (**a5)(void, void, void))
{
  v32 = *MEMORY[0x1E69E9840];
  values = a2;
  pthread_rwlock_rdlock((a1 + 80));
  Value = CFDictionaryGetValue(*(a1 + 72), @"clientStates");
  if (Value)
  {
    v11 = CFDictionaryGetValue(Value, a2);
    if (v11)
    {
      v12 = CFDictionaryGetValue(v11, a3);
      if (v12)
      {
        v13 = v12;
        CFRetain(v12);
        pthread_rwlock_unlock((a1 + 80));
        v14 = *__error();
        v15 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v27 = a2;
          v28 = 2112;
          v29 = a3;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Found cached client state %@ %@ %@", buf, 0x20u);
        }

        *__error() = v14;
        (a5)[2](a5, v13, 0);
        v16 = v13;
LABEL_18:
        CFRelease(v16);
        goto LABEL_19;
      }
    }
  }

  pthread_rwlock_unlock((a1 + 80));
  if (!a4)
  {
    v17 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040B6E8BBF2uLL);
    v17[2] = CFRetain(a2);
    v17[3] = CFRetain(a3);
    v18 = _Block_copy(a5);
    *v17 = a1;
    v17[1] = v18;
    v19 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    pthread_mutex_lock((a1 + 1320));
    v20 = *(a1 + 1152);
    if (v20 && si_peek_queue_for_tags(v20, v19))
    {
      si_enqueue_work(*(a1 + 1152), si_fetchClientState, v17);
      pthread_mutex_unlock((a1 + 1320));
    }

    else
    {
      pthread_mutex_unlock((a1 + 1320));
      v21 = *(a1 + 1048);
      if (v21 && si_peek_queue_for_tags(v21, v19))
      {
        v22 = *(a1 + 1048);
      }

      else
      {
        v22 = *(a1 + 1088);
      }

      si_enqueue_work(v22, si_fetchClientState, v17);
    }

    v16 = v19;
    goto LABEL_18;
  }

  a5[2](a5, 0, 4);
LABEL_19:
  v23 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _fd_remove_locked(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *(a1 + 8);
  v4 = *(a1 + 24);
  if (!v4)
  {
    if (!v2)
    {
      goto LABEL_19;
    }

    v12 = __si_assert_copy_extra_661(-1);
    v10 = v12;
    v13 = "";
    if (v12)
    {
      v13 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 466, "!obj->prev", v13);
    goto LABEL_29;
  }

  if (!v2)
  {
    v15 = __si_assert_copy_extra_661(-1);
    v10 = v15;
    v16 = "";
    if (v15)
    {
      v16 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 446, "obj->prev", v16);
    goto LABEL_29;
  }

  v5 = g_fd_list;
  v6 = *(g_fd_list + 16);
  if (v6 == a1)
  {
    *(g_fd_list + 16) = v4;
    v6 = v4;
  }

  *(v2 + 24) = v4;
  *(*(a1 + 24) + 16) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7 = *v5;
  v8 = *v5 - 1;
  *v5 = v8;
  if (v6 == a1)
  {
    if (!v8)
    {
      *(v5 + 16) = 0;
      if (v3 != -1)
      {
        --*(v5 + 4);
      }

      goto LABEL_19;
    }

    v19 = __si_assert_copy_extra_661(-1);
    v10 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 456, "g_fd_list->item_count==0", v20);
LABEL_29:
    free(v10);
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

  if (!v8)
  {
    v17 = __si_assert_copy_extra_661(-1);
    v10 = v17;
    v18 = "";
    if (v17)
    {
      v18 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 459, "g_fd_list->item_count", v18);
    goto LABEL_29;
  }

  if (v3 != -1)
  {
    --*(v5 + 4);
    if (v7 <= 0)
    {
      v9 = __si_assert_copy_extra_661(-1);
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 463, "g_fd_list->item_count>=0", v11);
      goto LABEL_29;
    }
  }

LABEL_19:
  *(a1 + 40) = -1;
  *(a1 + 8) = 0;
  return v3;
}

unint64_t v2_readVInt64(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 != -1)
  {
    v4 = v2 + 1;
    v5 = (a1 + v2);
    v6 = *(a1 + v2);
    result = *(a1 + v2);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      *a2 = v4;
      return result;
    }

    if (v6 > 0xBFu)
    {
      if (v6 > 0xDFu)
      {
        if (v6 > 0xEFu)
        {
          if (v6 > 0xF7u)
          {
            if (v6 > 0xFBu)
            {
              if (v6 > 0xFDu)
              {
                if (v6 == 255)
                {
                  if (v2 <= 0xFFFFFFFFFFFFFFF6)
                  {
                    result = *(a1 + v4);
                    v4 = v2 + 9;
                    goto LABEL_3;
                  }
                }

                else if (v2 <= 0xFFFFFFFFFFFFFFF7)
                {
                  result = (*(a1 + v4) << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
                  v4 = v2 + 8;
                  goto LABEL_3;
                }
              }

              else if (v2 <= 0xFFFFFFFFFFFFFFF8)
              {
                result = ((result & 1) << 48) | (*(a1 + v4) << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
                v4 = v2 + 7;
                goto LABEL_3;
              }
            }

            else if (v2 <= 0xFFFFFFFFFFFFFFF9)
            {
              result = ((result & 3) << 40) | (*(a1 + v4) << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
              v4 = v2 + 6;
              goto LABEL_3;
            }
          }

          else if (v2 <= 0xFFFFFFFFFFFFFFFALL)
          {
            result = ((result & 7) << 32) | (*(a1 + v4) << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
            v4 = v2 + 5;
            goto LABEL_3;
          }
        }

        else if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          result = ((result & 0xF) << 24) | (*(a1 + v4) << 16) | (v5[2] << 8) | v5[3];
          v4 = v2 + 4;
          goto LABEL_3;
        }
      }

      else if (v2 <= 0xFFFFFFFFFFFFFFFCLL)
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v4) << 8) | v5[2];
        v4 = v2 + 3;
        goto LABEL_3;
      }
    }

    else if (v2 != -2)
    {
      v8 = *(a1 + v4) | ((result & 0x3F) << 8);
      v4 = v2 + 2;
      result = v8;
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t page_cache_fetch(unsigned int *a1, void **value_out, unsigned int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!value_out)
  {
    result = 22;
    goto LABEL_12;
  }

  v11 = 0;
  v12 = 0;
  v3 = atomic_load(a1 + 62);
  if (v3 <= a3)
  {
    result = 2;
    goto LABEL_12;
  }

  v11 = *a1;
  v12 = a3;
  if (sdb_init_cache_onceToken != -1)
  {
    v10 = value_out;
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
    value_out = v10;
  }

  if (sdb_init_cache_status)
  {
    result = cache_get_and_retain(sdbLargeCacheArray, &v11, value_out);
    if ((result & 0xFFFFFFFD) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 1;
  }

  v6 = result;
  v7 = *__error();
  v8 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v14 = "page_cache_fetch";
    v15 = 1024;
    v16 = 443;
    v17 = 2048;
    v18 = a3;
    v19 = 1024;
    v20 = v6;
    _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Large page cache fetch fail for pgnum:%ld, ret:%d", buf, 0x22u);
  }

  *__error() = v7;
  result = v6;
LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t page_cache_copy_page(unsigned int *a1, const void **a2, unsigned int a3, char a4)
{
  __src = 0;
  if (page_cache_fetch(a1, &__src, a3))
  {
    return 2;
  }

  v9 = 2355089413;
  if ((a4 & 4) != 0 && *a2)
  {
    v10 = *(__src + 1);
    v11 = malloc_size(*a2);
    v12 = *a2;
    if (v11 >= v10)
    {
      goto LABEL_8;
    }

    free(v12);
    v9 = 3923908106;
  }

  v12 = malloc_type_valloc(*(__src + 1), v9);
  *a2 = v12;
LABEL_8:
  v13 = __src;
  if (v12)
  {
    v14 = *(__src + 2);
    if (v14 > *(__src + 1))
    {
      v18 = __si_assert_copy_extra_332();
      v19 = v18;
      v20 = "";
      if (v18)
      {
        v20 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 377, "dbp->used_bytes<=dbp->size", v20);
      free(v19);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    memcpy(v12, __src, v14);
    v13 = __src;
    v15 = atomic_load(a1 + 62);
    if (v15 <= a3)
    {
      return 0;
    }

    if (sdb_init_cache_onceToken != -1)
    {
      v21 = __src;
      dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
      v13 = v21;
    }

    result = 0;
    if (sdb_init_cache_status != 1)
    {
      return result;
    }

LABEL_19:
    v17 = result;
    cache_release_value(sdbLargeCacheArray, v13);
    return v17;
  }

  v16 = atomic_load(a1 + 62);
  if (v16 <= a3)
  {
    return 12;
  }

  if (sdb_init_cache_onceToken != -1)
  {
    v22 = __src;
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
    v13 = v22;
  }

  result = 12;
  if (sdb_init_cache_status)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sdb_key_hash(_DWORD *a1)
{
  HIDWORD(v1) = 1713515327 * *a1;
  LODWORD(v1) = HIDWORD(v1);
  v2 = (1107688271 * (v1 >> 21)) ^ 0x1F0A2598;
  HIDWORD(v1) = 2049437143 * a1[1];
  LODWORD(v1) = HIDWORD(v1);
  v3 = -1242805215 * (v1 >> 21);
  HIDWORD(v1) = v2;
  LODWORD(v1) = v2;
  v4 = (5 * (v1 >> 19) + 1390208809) ^ v3;
  HIDWORD(v1) = -565921073 * a1[2];
  LODWORD(v1) = HIDWORD(v1);
  v5 = -110370757 * (v1 >> 21);
  HIDWORD(v1) = v4;
  LODWORD(v1) = v4;
  v6 = (5 * (v1 >> 19) + 1390208809) ^ v5;
  HIDWORD(v1) = -757810265 * a1[3];
  LODWORD(v1) = HIDWORD(v1);
  v7 = v1 >> 21;
  HIDWORD(v1) = v6;
  LODWORD(v1) = v6;
  v8 = -2048144789 * ((1256834237 * v7) ^ (5 * (v1 >> 19) + 1390208809) ^ 0x10);
  return (-1028477387 * (v8 ^ (v8 >> 13))) ^ ((-1028477387 * (v8 ^ (v8 >> 13))) >> 16);
}

ssize_t fd_pread(_DWORD *a1, void *a2, size_t a3, off_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v8 = _fd_acquire_fd(a1, &v17);
  v9 = v8;
  if (v8 == -1 || (v10 = prot_pread(v8, a2, a3, a4), _fd_release_fd(a1, v9, 0, v17), v10 == -1))
  {
    bzero(v32, 0x400uLL);
    v11 = *__error();
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = fd_realpath(a1, v32);
      if (!v16)
      {
        v16 = fd_name(a1, v32, 0x400uLL);
        if (!v16)
        {
          v16 = "";
        }
      }

      *buf = 136316674;
      v19 = "fd_pread";
      v20 = 1024;
      v21 = 650;
      v22 = 1024;
      v23 = v9;
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a4;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = v11;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: pread(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v12;
    *__error() = v11;
    v10 = -1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

ssize_t prot_pread(uint64_t __fd, void *__buf, size_t __nbyte, off_t a4)
{
  while (1)
  {
    result = pread(__fd, __buf, __nbyte, a4);
    if (result != -1)
    {
      break;
    }

    v9 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v10 = __error();
    if (((*(v9 + 16))(v9, __fd, *v10, 4) & 1) == 0)
    {
      return -1;
    }
  }

  return result;
}

uint64_t db2_page_uncompress_swap(uint64_t a1, unsigned int *a2, void *a3, void *(*a4)(int a1, size_t size))
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = 22;
  if (!a2 || !a3)
  {
    goto LABEL_70;
  }

  v5 = *a2;
  if (*a2 != 1684172850 && v5 != 846226020)
  {
    v4 = 22;
    goto LABEL_70;
  }

  v7 = a2[3];
  v8 = bswap32(v7);
  if (v5 == 846226020)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(a1 + 4);
  if ((v9 & 8) == 0)
  {
    if ((v10 & 0x80) == 0 || v5 != 1684172850 && v5 != 846226020)
    {
      goto LABEL_63;
    }

    if (v5 == 846226020)
    {
      if (v7 >> 28)
      {
        v7 = a2[2];
        v11 = bswap32(v7);
LABEL_56:
        if (v11 >= 0x21)
        {
          v37 = a3;
          v38 = a2;
          v39 = a2 + 8;
          for (i = 32; i < v11; i += v41)
          {
            *v39 = bswap32(*v39);
            v41 = strlen(v39 + 4) + 4;
            v39 = (v39 + v41);
          }

          a2 = v38;
          v5 = *v38;
          v7 = v38[2];
          v8 = bswap32(v38[3]);
          a3 = v37;
        }

        a2[5] = bswap32(a2[5]);
        v42 = bswap32(v5);
        v43 = a2[1];
        goto LABEL_62;
      }
    }

    else if ((v7 & 0xF0) != 0)
    {
      v7 = a2[2];
      v11 = v7;
      goto LABEL_56;
    }

    v42 = bswap32(v5);
    v43 = a2[1];
    v7 = a2[2];
LABEL_62:
    *a2 = v42;
    a2[1] = bswap32(v43);
    a2[2] = bswap32(v7);
    a2[3] = v8;
    a2[4] = bswap32(a2[4]);
    LOBYTE(v7) = v8;
LABEL_63:
    *a3 = 0;
    v44 = 4;
    if ((v7 & 4) == 0)
    {
      v44 = 1;
    }

    v45 = a2[v44];
    a2[1] = v45;
    if (a2[2] <= v45)
    {
      v4 = 0;
    }

    else
    {
      v46 = a2;
      v47 = *__error();
      v48 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v61 = v46[1];
        v60 = v46[2];
        *buf = 136316162;
        *&buf[4] = "db2_page_uncompress_swap";
        *&buf[12] = 1024;
        *&buf[14] = 3297;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2048;
        *&buf[30] = v60;
        *&buf[38] = 2048;
        *&buf[40] = v61;
        _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: invalid page size, flags:0x%lx, used_bytes:%lu, size:%ld", buf, 0x30u);
      }

      *__error() = v47;
      v4 = 22;
    }

    goto LABEL_70;
  }

  if ((v10 & 0x80) != 0)
  {
    *a2 = bswap32(v5);
    v12 = vrev32_s8(*(a2 + 1));
    *(a2 + 1) = v12;
    v13 = bswap32(a2[4]);
    a2[3] = v8;
    a2[4] = v13;
  }

  else
  {
    v12 = *(a2 + 1);
    v13 = a2[4];
  }

  v14 = v12.u32[1];
  if (v12.i32[1] > 0x13u)
  {
    v23 = v12.i32[0];
    v24 = (4 * (v12.i32[0] - v12.i32[1]));
    v16 = a3;
    LODWORD(v25) = v24 + v13;
    if (__CFADD__(v24, v13))
    {
      v17 = a2;
      v26 = *__error();
      v27 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "db2_page_uncompress_swap";
        *&buf[12] = 1024;
        *&buf[14] = 3324;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2048;
        *&buf[30] = v24 + v13;
        *&buf[38] = 2048;
        *&buf[40] = v13;
        *&buf[48] = 2048;
        *&buf[50] = v24;
        _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: invalid page, flags:0x%lx, uncompressed_size:%lu, uncompressed_used_bytes:%lu, compression_size_estimate:%lu", buf, 0x3Au);
      }

      v28 = __error();
      v21 = 0;
      v22 = 0;
      *v28 = v26;
      goto LABEL_30;
    }

    v82 = a2;
    if (v25 <= v12.i32[0])
    {
      v25 = v12.u32[0];
    }

    else
    {
      v25 = v25;
    }

    if (v25 < 0x14 || ((v25 + 4095) & 0xFFFFF000) < v25)
    {
      v34 = *__error();
      v35 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "db2_page_uncompress_swap";
        *&buf[12] = 1024;
        *&buf[14] = 3334;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2048;
        *&buf[30] = v25;
        *&buf[38] = 2048;
        *&buf[40] = v13;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: invalid page, flags:0x%lx, uncompressed_size:%lu, uncompressed_used_bytes:%lu", buf, 0x30u);
      }

      v36 = __error();
      v21 = 0;
      v22 = 0;
      *v36 = v34;
      v29 = 22;
      goto LABEL_53;
    }

    v81 = (v25 - 20);
    if (a4 && ((v22 = a4(a1, (v25 + 4095) & 0xFFFFF000), a4 == dst_malloc) ? (v52 = v22 == 0) : (v52 = 1), v52 ? (v21 = 0) : (v21 = 1), v22))
    {
      v30 = a1;
      v17 = v82;
    }

    else
    {
      v22 = malloc_type_valloc((v25 + 4095) & 0xFFFFF000, 0xAAA043B4uLL);
      v21 = 1;
      if (!v22)
      {
        v29 = 12;
LABEL_53:
        v17 = v82;
        goto LABEL_31;
      }

      v17 = v82;
      v30 = a1;
    }

    destLen = 0;
    if (v14 == 20)
    {
      v53 = 20;
      goto LABEL_114;
    }

    v54 = &v17[1].u8[4];
    v55 = (v14 - 20);
    v56 = v22 + 20;
    v80 = v22;
    if ((v9 & 0x1000) != 0)
    {
      v62 = fast_uncompress(v22 + 20, v81, v54, v55);
      if (v62)
      {
        goto LABEL_113;
      }

      *(&v78 + 1) = v55;
      v59 = "lz4";
    }

    else
    {
      *(&v78 + 1) = v55;
      if ((v9 & 0x2000) == 0)
      {
        destLen = v81;
        v57 = uncompress(v22 + 20, &destLen, v54, v55);
        if (v57)
        {
          v58 = v57;
          v59 = "deflate";
LABEL_105:
          v68 = *__error();
          v69 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316930;
            *&buf[4] = "db2_page_uncompress_swap";
            *&buf[12] = 1024;
            *&buf[14] = 3439;
            *&buf[18] = 2080;
            *&buf[20] = v59;
            *&buf[28] = 1024;
            *&buf[30] = v58;
            *&buf[34] = 2048;
            *&buf[36] = v9;
            *&buf[44] = 2048;
            *&buf[46] = *(&v78 + 1);
            *&buf[54] = 2048;
            *&buf[56] = v81;
            v85 = 2048;
            v86 = destLen;
            _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: uncompress(%s) failed, status:%d, flags:0x%lx, src_size:%lu, out_size:%lu, uncompressed_used_bytes:%lu", buf, 0x4Au);
          }

          *__error() = v68;
          if (v58 == -4)
          {
            v29 = 12;
          }

          else
          {
            v29 = 22;
          }

          v17 = v82;
          v30 = a1;
          v22 = v80;
          goto LABEL_32;
        }

        v62 = destLen;
LABEL_113:
        v53 = v62 + 20;
        v17 = v82;
        v30 = a1;
        v22 = v80;
LABEL_114:
        destLen = v53;
        v70 = v13;
        if (v53 == v13)
        {
          *v22 = 1684172850;
          *(v22 + 1) = v25;
          v71 = v9 & 0xFFFFFFF3 | 4;
          *(v22 + 2) = v53;
          *(v22 + 3) = v71;
          *(v22 + 4) = v23;
          if ((*(v30 + 4) & 0x80) != 0)
          {
            *v22 = 846226020;
            *(v22 + 1) = bswap32(v25);
            *(v22 + 2) = bswap32(v53);
            *(v22 + 3) = bswap32(v71);
            *(v22 + 4) = bswap32(v23);
            v72 = v22;
            db2_swap_page(v22);
            v22 = v72;
            v30 = a1;
            v17 = v82;
          }

          v29 = 0;
        }

        else
        {
          v73 = v22;
          v74 = *__error();
          v75 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "db2_page_uncompress_swap";
            *&buf[12] = 1024;
            *&buf[14] = 3451;
            *&buf[18] = 2048;
            *&buf[20] = destLen;
            *&buf[28] = 2048;
            *&buf[30] = v70;
            _os_log_error_impl(&dword_1C278D000, v75, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: uncompressed size mismatch (%lu/%lu)", buf, 0x26u);
          }

          *__error() = v74;
          v29 = 22;
          v17 = v82;
          v30 = a1;
          v22 = v73;
        }

        goto LABEL_32;
      }

      *&v78 = v54;
      v63 = compression_decode_scratch_buffer_size(COMPRESSION_LZFSE);
      if (v63 < 0xFA01)
      {
        if (v63)
        {
          MEMORY[0x1EEE9AC00]();
          v79 = v56;
          v66 = &v77 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v66, v65);
          v62 = compression_decode_buffer(v79, v81, v78, v55, v66, COMPRESSION_LZFSE);
          if (v62)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        memset(buf, 0, 40);
        if (compression_stream_init(buf, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE) != COMPRESSION_STATUS_ERROR)
        {
          v79 = v56;
          MEMORY[0x1EEE9AC00]();
          bzero(v76, 0xFA00uLL);
          v62 = 0;
          *buf = v76;
          *&buf[8] = 64000;
          *&buf[16] = v78;
          while (1)
          {
            v64 = compression_stream_process(buf, 1);
            if (v64)
            {
              break;
            }

            memcpy(&v79[v62], v76, 0xFA00uLL);
            *buf = v76;
            *&buf[8] = 64000;
            v62 += 64000;
          }

          if (v64 == COMPRESSION_STATUS_ERROR)
          {
            v62 = 0;
          }

          else if (v64 == COMPRESSION_STATUS_END)
          {
            v67 = 64000 - *&buf[8];
            memcpy(&v79[v62], v76, 64000 - *&buf[8]);
            v62 += v67;
          }

          compression_stream_destroy(buf);
          if (v62)
          {
            goto LABEL_113;
          }
        }
      }

      v59 = "lzfse";
    }

    v58 = -3;
    goto LABEL_105;
  }

  v16 = a3;
  v17 = a2;
  v18 = *__error();
  v19 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "db2_page_uncompress_swap";
    *&buf[12] = 1024;
    *&buf[14] = 3316;
    *&buf[18] = 2048;
    *&buf[20] = v9;
    *&buf[28] = 2048;
    *&buf[30] = v14;
    *&buf[38] = 2048;
    *&buf[40] = v13;
    _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: invalid page, flags:0x%lx, used_bytes:%lu, uncompressed_used_bytes:%ld", buf, 0x30u);
  }

  v20 = __error();
  v21 = 0;
  v22 = 0;
  *v20 = v18;
LABEL_30:
  v29 = 22;
LABEL_31:
  v30 = a1;
LABEL_32:
  if ((*(v30 + 4) & 0x80) != 0)
  {
    *v17 = vrev32q_s8(*v17);
    v17[1].i32[0] = bswap32(v17[1].u32[0]);
  }

  if (v29)
  {
    v31 = v21;
  }

  else
  {
    v31 = 0;
  }

  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = v22;
  }

  if (v31 == 1)
  {
    free(v22);
    v32 = 0;
  }

  *v16 = v32;
  v4 = v29;
LABEL_70:
  v49 = *MEMORY[0x1E69E9840];
  return v4;
}

size_t fast_uncompress(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    madvise(a1, a2, 3);

    return compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4_RAW);
  }

  return result;
}

void page_cache_add(unsigned int *a1, _DWORD **a2, unsigned int a3, char a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_28;
  }

  v5 = (v4[3] & 0xC) != 0 && (v4[3] & 0x1000) == 0;
  if (!v5)
  {
    goto LABEL_28;
  }

  v8 = atomic_load(a1 + 62);
  do
  {
    if (v8 > a3)
    {
      break;
    }

    v9 = v8;
    atomic_compare_exchange_strong(a1 + 62, &v9, a3 + 1);
    v5 = v9 == v8;
    v8 = v9;
  }

  while (!v5);
  key = *a1;
  v23 = a3;
  v10 = (v4[2] + *MEMORY[0x1E69E9AC8] - 1) & ~*MEMORY[0x1E69E9AB8];
  v11 = malloc_default_purgeable_zone();
  v12 = malloc_type_zone_valloc(v11, v10, 0x1000040451B5BE8uLL);
  memcpy(v12, v4, v4[2]);
  v12[1] = v10;
  if (sdb_init_cache_onceToken != -1)
  {
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
  }

  if (sdb_init_cache_status == 1)
  {
    v13 = cache_set_and_retain(sdbLargeCacheArray, &key, v12, v10);
  }

  else
  {
    v13 = 1;
  }

  v14 = a4;
  if (dword_1EBF46AE8 >= 5)
  {
    v16 = v13;
    v21 = *__error();
    v17 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v4[1];
      v19 = v4[2];
      *buf = 67110656;
      v25 = v16;
      v26 = 2048;
      v27 = key;
      v28 = 1024;
      v29 = v23;
      v30 = 2048;
      v31 = v12;
      v32 = 1024;
      v33 = v18;
      v34 = 1024;
      v35 = v19;
      v36 = 1024;
      v37 = v10;
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "Cache add %d %p %d %p %d %d %d", buf, 0x34u);
    }

    *__error() = v21;
    v14 = a4;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  else if (v13)
  {
LABEL_17:
    v15 = malloc_default_purgeable_zone();
    malloc_zone_free(v15, v12);
    goto LABEL_28;
  }

  if (v14)
  {
    free(v4);
    *a2 = v12;
  }

  else
  {
    if (sdb_init_cache_onceToken != -1)
    {
      dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
    }

    if (sdb_init_cache_status == 1)
    {
      cache_release_value(sdbLargeCacheArray, v12);
    }
  }

LABEL_28:
  v20 = *MEMORY[0x1E69E9840];
}

BOOL is_valid_xpc_type(const char *a1, const _xpc_type_s *a2, const _xpc_type_s *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1C6921B10](a2);
  v7 = v6;
  if (v6 != a3)
  {
    if (v6 == MEMORY[0x1E69E9E98])
    {
      v11 = MEMORY[0x1E69E9E18];
      if (a2 == MEMORY[0x1E69E9E18])
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v16 = 134218240;
        v17 = v11;
        v18 = 2048;
        name = a1;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "### Connection interrupted %p %p";
      }

      else
      {
        v12 = MEMORY[0x1E69E9E20];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        if (a2 == v12)
        {
          if (!v13)
          {
            goto LABEL_15;
          }

          v16 = 134218240;
          v17 = v12;
          v18 = 2048;
          name = a1;
          v8 = MEMORY[0x1E69E9C10];
          v9 = "### Connection invalid %p %p";
        }

        else
        {
          if (!v13)
          {
            goto LABEL_15;
          }

          v16 = 134218240;
          v17 = a2;
          v18 = 2048;
          name = a1;
          v8 = MEMORY[0x1E69E9C10];
          v9 = "### Connection error %p %p";
        }
      }

      v10 = 22;
      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218754;
      v17 = v7;
      v18 = 2080;
      name = xpc_type_get_name(v7);
      v20 = 2048;
      v21 = a3;
      v22 = 2080;
      v23 = xpc_type_get_name(a3);
      v8 = MEMORY[0x1E69E9C10];
      v9 = "### Connection type %p %s not %p %s";
      v10 = 42;
LABEL_14:
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, v9, &v16, v10);
    }
  }

LABEL_15:
  result = v7 == a3;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __si_xpc_send_msg_block_invoke(uint64_t a1, void *a2)
{
  if (is_valid_xpc_type(*(a1 + 40), a2, MEMORY[0x1E69E9E80]))
  {
    xpc_dictionary_get_int64(a2, "status");
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

int *___si_mobile_journal_notify_new_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "### skg journal_new result %lld", &v8, 0xCu);
  }

  result = __error();
  *result = v4;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void _si_dump_index_state(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AF8 >= a2)
  {
    v4 = malloc_type_malloc(*(a1 + 2484) + 1, 0x76B71BC9uLL);
    v5 = malloc_type_malloc(*(a1 + 2486) + 1, 0xF50722CAuLL);
    v6 = v5;
    if (*(a1 + 2484))
    {
      v7 = 0;
      v8 = a1 + 2488;
      do
      {
        v9 = "unknown";
        if ((*(v8 + v7) - 1) <= 3u)
        {
          v9 = off_1E8192938[(*(v8 + v7) - 1)];
        }

        v10 = v7 + 1;
        v4[v7] = *v9;
        v7 = v10;
      }

      while (v10 < *(a1 + 2484));
    }

    else
    {
      v10 = 0;
    }

    v4[v10] = 0;
    if (*(a1 + 2486))
    {
      v11 = 0;
      v12 = a1 + 2488;
      do
      {
        v13 = "unknown";
        if ((*(v12 + v11 + *(a1 + 2484)) - 1) <= 3u)
        {
          v13 = off_1E8192938[(*(v12 + v11 + *(a1 + 2484)) - 1)];
        }

        v14 = v11 + 1;
        *(v5 + v11) = *v13;
        v11 = v14;
      }

      while (v14 < *(a1 + 2486));
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    *(v5 + v15) = 0;
    v34 = 0;
    if (fd_setDir(*(a1 + 32), &v34))
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(11);
      v18 = v17;
      if (a2 == 2)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          if ((*(a1 + 2481) - 1) > 3u)
          {
            v19 = "unknown";
          }

          else
          {
            v19 = off_1E8192938[(*(a1 + 2481) - 1)];
          }

          if ((*(a1 + 2482) - 1) > 3u)
          {
            v29 = "unknown";
          }

          else
          {
            v29 = off_1E8192938[(*(a1 + 2482) - 1)];
          }

          v30 = *(a1 + 2480);
          if ((*(a1 + 2483) - 1) > 3u)
          {
            v31 = "unknown";
          }

          else
          {
            v31 = off_1E8192938[(*(a1 + 2483) - 1)];
          }

          v32 = *(a1 + 2484);
          v33 = *(a1 + 2486);
          *buf = 136317698;
          v36 = "_si_dump_index_state";
          v37 = 1024;
          v38 = 35024;
          v39 = 2048;
          v40 = a1;
          v41 = 1024;
          *v42 = v30;
          *&v42[4] = 2080;
          *&v42[6] = v19;
          *&v42[14] = 2080;
          *&v42[16] = v29;
          v43 = 2080;
          v44 = v31;
          v45 = 1024;
          v46 = v32;
          v47 = 2080;
          v48 = v4;
          v49 = 1024;
          v50 = v33;
          v51 = 2080;
          v52 = v6;
          _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: (%p ver:%d main:%s sdb:%s path:%s scan:%d %s, live:%d %s)", buf, 0x60u);
        }
      }

      else
      {
        v20 = 2 * (dword_1EBF46AF8 < 4);
        if (os_log_type_enabled(v17, v20))
        {
          if ((*(a1 + 2481) - 1) > 3u)
          {
            v21 = "unknown";
          }

          else
          {
            v21 = off_1E8192938[(*(a1 + 2481) - 1)];
          }

          if ((*(a1 + 2482) - 1) > 3u)
          {
            v22 = "unknown";
          }

          else
          {
            v22 = off_1E8192938[(*(a1 + 2482) - 1)];
          }

          v23 = *(a1 + 2480);
          if ((*(a1 + 2483) - 1) > 3u)
          {
            v24 = "unknown";
          }

          else
          {
            v24 = off_1E8192938[(*(a1 + 2483) - 1)];
          }

          v25 = *(a1 + 2484);
          v26 = *(a1 + 2486);
          *buf = 134220034;
          v36 = a1;
          v37 = 1024;
          v38 = v23;
          v39 = 2080;
          v40 = v21;
          v41 = 2080;
          *v42 = v22;
          *&v42[8] = 2080;
          *&v42[10] = v24;
          *&v42[18] = 1024;
          *&v42[20] = v25;
          v43 = 2080;
          v44 = v4;
          v45 = 1024;
          v46 = v26;
          v47 = 2080;
          v48 = v6;
          _os_log_impl(&dword_1C278D000, v18, v20, "(%p ver:%d main:%s sdb:%s path:%s scan:%d %s, live:%d %s)", buf, 0x50u);
        }
      }

      *__error() = v16;
      v27 = v34;
      MEMORY[0x1C6921200](v34);
      if ((v27 & 0x80000000) == 0)
      {
        close(v27);
      }
    }

    free(v6);
    free(v4);
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t prot_pwrite_guarded(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = 0;
  do
  {
    while (1)
    {
      v10 = guarded_pwrite_np();
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 += v10;
      v13 = a4 > v10;
      a4 -= v10;
      if (!v13)
      {
        return v9;
      }

      a3 += v10;
      a5 += v10;
    }

    v11 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v12 = __error();
  }

  while (((*(v11 + 16))(v11, a1, *v12, 5) & 1) != 0);
  return -1;
}

void serialize_to_state(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a4 = 1;
  v6 = *(a1 + 8);
  if (a3)
  {
    if (v6)
    {
      v13 = __si_assert_copy_extra_661(-1);
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34759, "syncSet->indexCount == 0", v15);
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

    v8 = (a2 + 8);
    v7 = *(a2 + 8);
    *(a4 + 6) = v7;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v9 = *(a4 + 4);
    v10 = 1;
  }

  else
  {
    v9 = 0;
    *(a4 + 4) = v6;
    v8 = (a2 + 8);
    v7 = *(a2 + 8);
    *(a4 + 6) = v7;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v10 = v6 == 0;
  }

  v25 = v9;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = __serialize_to_state_block_invoke;
  v19 = &unk_1E8192878;
  v20 = &v22;
  v21 = a4;
  if (v10)
  {
LABEL_11:
    if (v7)
    {
      v12 = 0;
      do
      {
        if (!(v18)(v17, *(*a2 + 8 * v12), 1))
        {
          break;
        }

        ++v12;
      }

      while (v12 < *v8);
    }
  }

  else
  {
    v11 = 0;
    while ((v18)(v17, *(*a1 + 8 * v11), 0))
    {
      if (++v11 >= *(a1 + 8))
      {
        if (!a2)
        {
          break;
        }

        v7 = *v8;
        goto LABEL_11;
      }
    }
  }

  _Block_object_dispose(&v22, 8);
}

uint64_t si_store_index_state(int a1, char *a2, int a3, int a4, char *a5, int a6, int a7, int a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = x_openat(a1, a2, 536872449, a4, a5, a6, a7, a8, 0x180u);
  v12 = v11;
  if (a3)
  {
    fcntl(v11, 64, 3);
  }

  if (v12 == -1)
  {
    v15 = *__error();
  }

  else
  {
    v13 = prot_pwrite(v12, a5, 0x1000uLL, 0);
    if (v13 == 4096)
    {
      prot_fsync(v12, a4);
      v16 = *__error();
      v17 = _SILogForLogForCategory(11);
      v18 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v17, v18))
      {
        if ((a5[1] - 1) > 3u)
        {
          v19 = "unknown";
        }

        else
        {
          v19 = off_1E8192938[(a5[1] - 1)];
        }

        *buf = 136315138;
        v24 = v19;
        _os_log_impl(&dword_1C278D000, v17, v18, "write state:%s", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      v14 = v13;
      if (v13 == -1)
      {
        v15 = *__error();
      }

      else
      {
        v15 = 22;
      }

      v16 = *__error();
      v20 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v24 = "si_store_index_state";
        v25 = 1024;
        v26 = 34741;
        v27 = 1024;
        v28 = v12;
        v29 = 2048;
        v30 = v14;
        v31 = 1024;
        v32 = v15;
        _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: write index state fd:%d rs:%ld error:%d", buf, 0x28u);
      }
    }

    *__error() = v16;
    close(v12);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __serialize_to_state_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 15201);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  v5 = *(a1 + 40) + v4;
  *(v3 + 24) = v4 + 1;
  *(v5 + 8) = v2;
  return 1;
}

uint64_t x_openat(int a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  result = openat(a1, a2, a3, v12);
  if (result == -1)
  {
    v14 = __error();
    result = 0xFFFFFFFFLL;
    if ((a3 & 0x20000000) != 0 && *v14 == 22)
    {
      return openat(a1, a2, a3 & 0xDFFFFFFF, v12);
    }
  }

  return result;
}

uint64_t fd_pwrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *__error() = 2;
LABEL_11:
    v11 = -1;
    goto LABEL_12;
  }

  if (*(a1 + 96))
  {
    v18 = __si_assert_copy_extra_661(-1);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 664, "!obj->forbidder", v20);
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

  v22 = 0;
  v8 = _fd_acquire_fd(a1, &v22);
  v9 = v8;
  if (v8 == -1)
  {
    v12 = *__error();
LABEL_9:
    bzero(v37, 0x400uLL);
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = fd_realpath(a1, v37);
      if (!v17)
      {
        v17 = fd_name(a1, v37, 0x400uLL);
        if (!v17)
        {
          v17 = "";
        }
      }

      *buf = 136316674;
      v24 = "fd_pwrite";
      v25 = 1024;
      v26 = 680;
      v27 = 1024;
      v28 = v9;
      v29 = 2080;
      v30 = v17;
      v31 = 2048;
      v32 = a4;
      v33 = 1024;
      v34 = a3;
      v35 = 1024;
      v36 = v12;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: pwrite(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v13;
    *__error() = v12;
    goto LABEL_11;
  }

  v10 = prot_pwrite_guarded(v8, &v22, a2, a3, a4);
  if (v10 == -1)
  {
    v12 = *__error();
    _fd_release_fd(a1, v9, 0, v22);
    goto LABEL_9;
  }

  v11 = v10;
  _fd_release_fd(a1, v9, 0, v22);
LABEL_12:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t prot_fsync(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    while (1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v4 = fcntl(a1, 85);
      if (v4 != -1)
      {
        v5 = v4;
        goto LABEL_17;
      }

      if (*__error() == 25 || *__error() == 45)
      {
        *__error() = 0;
        v5 = fcntl(a1, 51);
      }

      else
      {
        v5 = 0xFFFFFFFFLL;
      }

      if (v5 != -1)
      {
        break;
      }

      v6 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v7 = __error();
      if (((*(v6 + 16))(v6, a1, *v7, 2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v5 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_13:
    while (1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v5 = fsync(a1);
      if (v5 != -1)
      {
        break;
      }

      v8 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v9 = __error();
      if (((*(v8 + 16))(v8, a1, *v9, 3) & 1) == 0)
      {
        v5 = 0xFFFFFFFFLL;
        break;
      }
    }
  }

LABEL_17:
  v10 = *__error();
  v11 = CFAbsoluteTimeGetCurrent();
  bzero(v25, 0x400uLL);
  v12 = *__error();
  v13 = _SILogForLogForCategory(0);
  v14 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v11 - Current;
    v16 = fcntl(a1, 50, v25);
    if (v25[0])
    {
      v17 = v16 < 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = "";
    if (!v17)
    {
      v18 = v25;
    }

    *buf = 134218242;
    v22 = v15;
    v23 = 2080;
    v24 = v18;
    _os_log_impl(&dword_1C278D000, v13, v14, "fsync time %f - %s\n", buf, 0x16u);
  }

  *__error() = v12;
  *__error() = v10;
  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t prot_pwrite(uint64_t __fd, char *__buf, size_t __nbyte, off_t a4)
{
  v8 = 0;
  do
  {
    while (1)
    {
      v9 = pwrite(__fd, __buf, __nbyte, a4);
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 += v9;
      v12 = __nbyte > v9;
      __nbyte -= v9;
      if (!v12)
      {
        return v8;
      }

      __buf += v9;
      a4 += v9;
    }

    v10 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v11 = __error();
  }

  while (((*(v10 + 16))(v10, __fd, *v11, 5) & 1) != 0);
  return -1;
}

uint64_t getUniquedDBFValue(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3[2];
  MEMORY[0x1EEE9AC00](a1);
  v10 = v26 - ((v9 + 15) & 0x1FFFFFFF0);
  bzero(v10, v9);
  if (a2 == 4)
  {
    v11 = a3[1];
    v12 = v11 >> 28;
    if (v11 >> 28)
    {
      v13 = 5;
    }

    else
    {
      v13 = 4;
    }

    if (v11 >= 0x200000)
    {
      v14 = v13;
    }

    else
    {
      v14 = 3;
    }

    if (v11 >= 0x4000)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2;
    }

    if (v11 >= 0x80)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16 + v8;
    if (v17 >> 28)
    {
      *v10 = -16;
      *(v10 + 1) = v17;
      v18 = 5;
      if (v12)
      {
        goto LABEL_40;
      }
    }

    else if (v17 >= 0x200000)
    {
      *v10 = HIBYTE(v17) | 0xE0;
      v10[1] = BYTE2(v17);
      v10[2] = BYTE1(v17);
      v10[3] = v17;
      v18 = 4;
      if (v12)
      {
        goto LABEL_40;
      }
    }

    else if (v17 >= 0x4000)
    {
      *v10 = BYTE2(v17) | 0xC0;
      v10[1] = BYTE1(v17);
      v10[2] = v17;
      v18 = 3;
      if (v12)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v17 < 0x80)
      {
        *v10 = v17;
        v18 = 1;
        if (v12)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

      *v10 = BYTE1(v17) | 0x80;
      v10[1] = v17;
      v18 = 2;
      if (v12)
      {
LABEL_40:
        v22 = &v10[v18];
        *v22 = -16;
        *(v22 + 1) = v11;
        v19 = v18 + 5;
        goto LABEL_41;
      }
    }

LABEL_32:
    if (v11 >= 0x200000)
    {
      v20 = &v10[v18];
      *v20 = HIBYTE(v11) | 0xE0;
      v20[1] = BYTE2(v11);
      v20[2] = BYTE1(v11);
      v19 = v18 + 4;
      v20[3] = v11;
    }

    else if (v11 >= 0x4000)
    {
      v21 = &v10[v18];
      *v21 = BYTE2(v11) | 0xC0;
      v21[1] = BYTE1(v11);
      v19 = v18 + 3;
      v21[2] = v11;
    }

    else if (v11 >= 0x80)
    {
      v25 = &v10[v18];
      *v25 = BYTE1(v11) | 0x80;
      v19 = v18 + 2;
      v25[1] = v11;
    }

    else
    {
      v19 = v18 + 1;
      v10[v18] = v11;
    }

    goto LABEL_41;
  }

  if (v8 >> 28)
  {
    *v10 = -16;
    *(v10 + 1) = v8;
    v19 = 5;
  }

  else if (v8 >= 0x200000)
  {
    *v10 = BYTE3(v8) | 0xE0;
    v10[1] = BYTE2(v8);
    v10[2] = BYTE1(v8);
    v10[3] = v8;
    v19 = 4;
  }

  else if (v8 >= 0x4000)
  {
    *v10 = BYTE2(v8) | 0xC0;
    v10[1] = BYTE1(v8);
    v10[2] = v8;
    v19 = 3;
  }

  else if (v8 >= 0x80)
  {
    *v10 = BYTE1(v8) | 0x80;
    v10[1] = v8;
    v19 = 2;
  }

  else
  {
    *v10 = v8;
    v19 = 1;
  }

LABEL_41:
  memcpy(&v10[v19], a3 + 13, v8);
  LODWORD(result) = _get_id_for_string(a1, a2, v10, v8 + v19, a4, 0);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_indexForDocId(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 1384);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = *v2;
    v5 = v3 + 1;
    v6 = (v4 + 8 * v3 - 8);
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v7 + 80);
        if (v8 < a2 && v8 + *(v7 + 68) > a2)
        {
          break;
        }
      }

      --v5;
      --v6;
      if (v5 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a1 + 1392);
    v10 = *(v9 + 2);
    if (v10)
    {
      v11 = *v9;
      v12 = v10 + 1;
      for (i = (v11 + 8 * v10 - 8); ; --i)
      {
        v7 = *i;
        if (*i)
        {
          v14 = *(v7 + 80);
          if (v14 < a2 && v14 + *(v7 + 68) > a2)
          {
            break;
          }
        }

        if (--v12 <= 1)
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

  return v7;
}

uint64_t _skipIndexForUpdate(const __CFDictionary *a1, const __CFString *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(a1);
  v5 = CFStringCompare(a2, @"com.apple.searchd", 0);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = (Count - 3) > 1;
  }

  if (!v6)
  {
    v34[1] = v34;
    MEMORY[0x1EEE9AC00](v5);
    v7 = (v34 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v7, 8 * Count);
    MEMORY[0x1EEE9AC00](v8);
    v9 = v7;
    bzero(v7, 8 * Count);
    CFDictionaryGetKeysAndValues(a1, v7, v7);
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E695E738];
    do
    {
      if (*v9 != v12)
      {
        v13 = CFGetTypeID(*v9);
        if (v13 == CFDataGetTypeID() && CFStringHasPrefix(*v7, @"_kMDItemStateInfo"))
        {
          ++v11;
        }

        else
        {
          if (v10 >= 2)
          {
            goto LABEL_15;
          }

          ++v10;
        }
      }

      ++v7;
      ++v9;
      --Count;
    }

    while (Count);
    if (v11 && v10 == 2)
    {
      goto LABEL_35;
    }
  }

LABEL_15:
  if (CFDictionaryGetValue(a1, @"_kMDItemRenderDate") || CFDictionaryGetValue(a1, @"_kMDItemEngagementDate") || CFDictionaryGetValue(a1, @"_kMDItemLastSpotlightEngagementQuery") || (result = CFDictionaryGetValue(a1, @"_kMDItemLastOutOfSpotlightEngagementDate")) != 0)
  {
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      Value = CFDictionaryGetValue(a1, @"_kMDItemExternalID");
      if (Value)
      {
        v16 = Value;
        v17 = CFGetTypeID(Value);
        if (v17 == CFStringGetTypeID())
        {
          memset(v40, 0, sizeof(v40));
          CFStringGetCString(v16, v40, 128, 0x8000100u);
          v18 = CFDictionaryGetValue(a1, @"_kMDItemBundleID");
          if (!v18 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFStringGetTypeID()))
          {
            v21 = *__error();
            v32 = _SILogForLogForCategory(0);
            v33 = 2 * (gSILogLevels[0] < 4);
            if (!os_log_type_enabled(v32, v33))
            {
              goto LABEL_34;
            }

            v39[0] = 136315138;
            *&v39[1] = v40;
            v24 = "Skipping index for feedback item %s";
            v25 = v39;
            v26 = v32;
            v27 = v33;
            v28 = 12;
            goto LABEL_33;
          }

          memset(v39, 0, sizeof(v39));
          CFStringGetCString(v19, v39, 128, 0x8000100u);
          v21 = *__error();
          v22 = _SILogForLogForCategory(0);
          v23 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v22, v23))
          {
            v35 = 136315394;
            v36 = v39;
            v37 = 2080;
            v38 = v40;
            v24 = "Skpping index for feedback item (%s, %s)";
            v25 = &v35;
            v26 = v22;
            v27 = v23;
            v28 = 22;
LABEL_33:
            _os_log_impl(&dword_1C278D000, v26, v27, v24, v25, v28);
          }

LABEL_34:
          *__error() = v21;
LABEL_35:
          result = 1;
          goto LABEL_36;
        }
      }

      v21 = *__error();
      v29 = _SILogForLogForCategory(0);
      v30 = 2 * (gSILogLevels[0] < 4);
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_34;
      }

      v40[0] = 0;
      v24 = "Skipping index for feedback item";
    }

    else
    {
      v21 = *__error();
      v29 = _SILogForLogForCategory(0);
      v30 = 2 * (gSILogLevels[0] < 4);
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_34;
      }

      v40[0] = 0;
      v24 = "Skipping index for feedback item";
    }

    v25 = v40;
    v26 = v29;
    v27 = v30;
    v28 = 2;
    goto LABEL_33;
  }

LABEL_36:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CIOnThreadCleanUpPush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &threadData[9 * a1];
  v7 = *(v5 + 14);
  v6 = *(v5 + 15);
  if (v7 >= v6)
  {
    if (v6)
    {
      v9 = 2 * v6;
    }

    else
    {
      v9 = 4;
    }

    *(v5 + 15) = v9;
    v8 = malloc_type_realloc(v5[8], 16 * v9, 0x80040803F642BuLL);
    v5[8] = v8;
    if (!*(v5 + 15))
    {
      v12 = __si_assert_copy_extra_332();
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1666, "td->onThreadCleanUpSize", v14);
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

    v7 = *(v5 + 14);
  }

  else
  {
    v8 = v5[8];
  }

  v10 = &v8[16 * v7];
  *v10 = a2;
  *(v10 + 1) = a3;
  *(v5 + 14) = v7 + 1;
  return v7;
}

uint64_t db_fast_dirty_datastore_if_necessary(uint64_t result)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v3 = result;
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *v3;
      *buf = 136315650;
      v11 = "db_fast_dirty_datastore_if_necessary";
      v12 = 1024;
      v13 = 253;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 253, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (*(result + 4))
  {
    v2 = *MEMORY[0x1E69E9840];

    return db2_dirty_datastore(result);
  }

  else
  {
    v1 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t db2_dirty_datastore(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
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

  v7 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_9:
    db_rwlock_wait(a1 + 584, v6, 2);
    goto LABEL_10;
  }

  if (v6 <= 5)
  {
    v19 = v6 - 6;
    v20 = (a1 + 16 * v6 + 648);
    while (!*v20)
    {
      v20 += 2;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_26;
      }
    }

    goto LABEL_9;
  }

LABEL_26:
  *(a1 + 768) = pthread_self();
LABEL_10:
  pthread_mutex_unlock((a1 + 584));
  if (v7)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315650;
      v25 = "db2_dirty_datastore";
      v26 = 1024;
      v27 = 9039;
      v28 = 1024;
      v29 = v7;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", &v24, 0x18u);
    }

    *__error() = v22;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9039);
  }

  if (v3)
  {
    v8 = CIOnThreadCleanUpPush(v3 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v8 = -1;
  }

  v9 = _dirty_datastore_locked(a1, 0);
  v10 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v11 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v12 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v12, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v11)
  {
    pthread_override_qos_class_end_np(v11);
  }

  if (v10)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9041);
  }

  if (v3)
  {
    CIOnThreadCleanUpClearItem(v3 - 1, v8);
    v13 = &threadData[9 * (v3 - 1)];
    v16 = *(v13 + 14);
    v14 = v13 + 7;
    v15 = v16;
    if (v8 + 1 == v16)
    {
      *v14 = v15 - 1;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _dirty_datastore_locked(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4);
  if ((v2 & 0xA) != 0)
  {
    result = 1;
    goto LABEL_28;
  }

  if ((*(a1 + 804) & 8) != 0)
  {
    v21 = __si_assert_copy_extra_3233(0, -1);
    v22 = v21;
    v23 = "";
    if (v21)
    {
      v23 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 8974, "(dst->const_flags & 0x8) == 0", v23);
    free(v22);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if ((v2 & 1) == 0)
  {
    result = 0;
    goto LABEL_28;
  }

  pthread_mutex_lock((a1 + 584));
  *(a1 + 796) = 1;
  db_rwlock_wakeup(a1 + 584, 1, 1);
  pthread_mutex_unlock((a1 + 584));
  v6 = *(a1 + 832);
  if (v6 && (*(v6 + 16))(v6, a2))
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "_dirty_datastore_locked";
      v25 = 1024;
      v26 = 8994;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: dirty callback returned non-zero", buf, 0x12u);
    }

    *__error() = v7;
    result = 22;
    goto LABEL_28;
  }

  v9 = *(a1 + 4);
  *(a1 + 4) = v9 & 0xFFFFF9FE;
  if ((v9 & 0x80) != 0)
  {
    v10.i32[0] = *a1;
    v10.i32[1] = v9 & 0xFFFFF9FE;
    v10.i64[1] = *(a1 + 8);
    *a1 = vrev32q_s8(v10);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  v11 = fd_pwrite(*(a1 + 848), a1, 0x1000uLL, 0);
  v12 = *__error();
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
    if (v11 == 4096)
    {
LABEL_15:
      v13 = *(a1 + 848);
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
      v14 = _fd_acquire_fd(v13, buf);
      if (v14 == -1)
      {
        db_upgrade_lock(a1 + 584);
      }

      else
      {
        v15 = v14;
        v16 = prot_fsync(v14, (*(v13 + 56) & 8) == 0);
        _fd_release_fd(v13, v15, 0, *buf);
        db_upgrade_lock(a1 + 584);
        result = v16;
        if (v16 != -1)
        {
          goto LABEL_28;
        }
      }

      result = *__error();
      goto LABEL_28;
    }
  }

  else if (v11 == 4096)
  {
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *__error();
  v19 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "_dirty_datastore_locked";
    v25 = 1024;
    v26 = 9014;
    v27 = 2080;
    v28 = a1 + 324;
    v29 = 2080;
    v30 = strerror(v17);
    _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_dirty_datastore: ERR: Can't write DST header (%s)\n", buf, 0x26u);
  }

  *__error() = v18;
  *(a1 + 4) |= 2u;
  *(a1 + 800) = v17;
  db_upgrade_lock(a1 + 584);
  result = v17;
LABEL_28:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_set_obj_state(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 1644);
  v4 = si_set_obj_state_locked(a1, a2, 1);
  os_unfair_lock_unlock(a1 + 1644);
  return v4;
}

uint64_t si_set_obj_state_locked(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_assert_owner((a1 + 6576));
  v11 = *(a1 + 2481);
  if (a3 == 1 && v11 == 3)
  {
    _si_dump_index_state(a1, 2);
    if (*(a1 + 2428) || **(a1 + 6592))
    {
      return 89;
    }

    v11 = *(a1 + 2481);
    if (v11 == 3)
    {
      v48 = __si_assert_copy_extra_661(-1);
      v36 = v48;
      v49 = "";
      if (v48)
      {
        v49 = v48;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34830, "!(s->state==kSIIndexStateNeedsShadow && state==kSIIndexStateDirty)", v49);
LABEL_96:
      free(v36);
      if (__valid_fs(-1))
      {
        v50 = 2989;
      }

      else
      {
        v50 = 3072;
      }

      *v50 = -559038737;
      abort();
    }
  }

  else if (a3 == 4 && v11 == 1)
  {
    v13 = __si_assert_copy_extra_661(-1);
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34833, "!(s->state==kSIIndexStateDirty && state==kSIIndexStateClean)", v15);
LABEL_11:
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

  if (a2 && a2 != a1)
  {
    if (*(a1 + 1192) == a2)
    {
      if (*(a1 + 2482) != a3)
      {
        v17 = 0;
        *(a1 + 2482) = a3;
        goto LABEL_59;
      }
    }

    else if (*(a1 + 6624) == a2)
    {
      if (*(a1 + 2483) != a3)
      {
        v17 = 0;
        *(a1 + 2483) = a3;
        goto LABEL_59;
      }
    }

    else if (*(a2 + 15201) != a3)
    {
      v17 = 0;
      *(a2 + 15201) = a3;
LABEL_59:
      v26 = 1;
      goto LABEL_60;
    }

    goto LABEL_36;
  }

  if (v11 != a3)
  {
    v17 = 0;
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          *(a1 + 2482) = 1028;
          v18 = *(a1 + 1392);
          v19 = *(a1 + 1384);
          if (v18)
          {
            v20 = *(v18 + 8);
            if (v20)
            {
              v21 = *v18;
              do
              {
                v22 = *v21++;
                *(v22 + 15201) = 4;
                --v20;
              }

              while (v20);
            }
          }

          if (v19)
          {
            v23 = *(v19 + 8);
            if (v23)
            {
              v24 = *v19;
              do
              {
                v25 = *v24++;
                *(v25 + 15201) = 4;
                --v23;
              }

              while (v23);
            }
          }

          v17 = 1;
        }

        goto LABEL_56;
      }

      v17 = 1;
    }

    v56 = 0;
    v57 = &v56;
    v58 = 0x2000000000;
    v59 = 0;
    v27 = *(a1 + 2482);
    if (v27 != a3 && v27 != 4)
    {
      *(a1 + 2482) = a3;
      v59 = 1;
    }

    if (*(a1 + 6624))
    {
      v28 = *(a1 + 2483);
      if (v28 != a3 && v28 != 4)
      {
        *(a1 + 2483) = a3;
        v59 = 1;
      }
    }

    v29 = *(a1 + 1392);
    v30 = *(a1 + 1384);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 0x40000000;
    v52 = __si_set_obj_state_locked_block_invoke_2;
    v53 = &unk_1E81928A0;
    v55 = a3;
    v54 = &v56;
    if (v29 && *(v29 + 8))
    {
      v31 = 0;
      while ((v52)(v51, *(*v29 + 8 * v31), 0))
      {
        if (++v31 >= *(v29 + 8))
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_50:
      if (v30 && *(v30 + 8))
      {
        v32 = 0;
        do
        {
          if (!(v52)(v51, *(*v30 + 8 * v32), 1))
          {
            break;
          }

          ++v32;
        }

        while (v32 < *(v30 + 8));
      }
    }

    v33 = *(v57 + 24);
    _Block_object_dispose(&v56, 8);
    if (v33 != 1)
    {
      v26 = 0;
      goto LABEL_60;
    }

LABEL_56:
    *(a1 + 2481) = a3;
    goto LABEL_59;
  }

LABEL_36:
  v26 = 0;
  v17 = 0;
LABEL_60:
  if (a3 == 1 && *(a1 + 2481) != 1)
  {
    v34 = *(a1 + 2482);
    if (v34 == 2)
    {
      *(a1 + 2482) = 1;
    }

    else if (v34 == 3)
    {
      v35 = __si_assert_copy_extra_661(-1);
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34928, "s->sdb_state!=kSIIndexStateNeedsShadow", v37);
      goto LABEL_96;
    }

    os_unfair_lock_lock((a1 + 2224));
    Current = CFAbsoluteTimeGetCurrent();
    activityJournalWriteVInt64(a1 + 2192, 36, Current);
    os_unfair_lock_unlock((a1 + 2224));
    if (*(a1 + 6624))
    {
      v39 = *(a1 + 2483);
      if (v39 == 2)
      {
        *(a1 + 2483) = 1;
      }

      else if (v39 == 3)
      {
        v40 = __si_assert_copy_extra_661(-1);
        v14 = v40;
        v41 = "";
        if (v40)
        {
          v41 = v40;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34936, "s->directory_state!=kSIIndexStateNeedsShadow", v41);
        goto LABEL_11;
      }
    }

    v42 = *(a1 + 1392);
    v43 = *(a1 + 1384);
    if (v42)
    {
      v44 = *(v42 + 2);
      if (v44)
      {
        v45 = *v42;
        do
        {
          if (*(*v45 + 15201) == 2)
          {
            *(*v45 + 15201) = 1;
          }

          v45 += 8;
          --v44;
        }

        while (v44);
      }
    }

    if (v43)
    {
      v46 = *(v43 + 2);
      if (v46)
      {
        v47 = *v43;
        do
        {
          if (*(*v47 + 15201) == 2)
          {
            *(*v47 + 15201) = 1;
          }

          v47 += 8;
          --v46;
        }

        while (v46);
      }
    }

    *(a1 + 2481) = 1;
    return si_write_index_state(a1, 1, v17, v6, v7, v8, v9, v10);
  }

  if (!v26)
  {
    return 0;
  }

  return si_write_index_state(a1, 1, v17, v6, v7, v8, v9, v10);
}

uint64_t si_write_index_state(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    serialize_to_state(*(a1 + 1392), *(a1 + 1384), (*(a1 + 828) >> 18) & 1, a1 + 2480);
  }

  v10 = si_store_index_state(*(a1 + 32), "tmp.spotlight.state", *(a1 + 2072), a3, (a1 + 2480), a6, a7, a8);
  v11 = v10;
  if (v10)
  {
    if (v10 == 2)
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(11);
      v14 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v13, v14))
      {
        v19 = 134218240;
        v20 = a1;
        v21 = 1024;
        v22 = 2;
        _os_log_impl(&dword_1C278D000, v13, v14, "%p open index state error:%d", &v19, 0x12u);
      }

      *__error() = v12;
    }

    else
    {
      v15 = *__error();
      v16 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315906;
        v20 = "si_write_index_state";
        v21 = 1024;
        v22 = 34792;
        v23 = 2048;
        v24 = a1;
        v25 = 1024;
        v26 = v11;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: %p write index state error:%d", &v19, 0x22u);
      }

      *__error() = v15;
    }
  }

  else
  {
    _si_dump_index_state(a1, 4);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

void activityJournalWriteVInt64(uint64_t a1, char a2, unint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
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
                if (HIBYTE(a3))
                {
                  LOBYTE(v5[0]) = -1;
                  *(v5 + 1) = a3;
                  v3 = 9;
                }

                else
                {
                  LOBYTE(v5[0]) = -2;
                  BYTE1(v5[0]) = BYTE6(a3);
                  BYTE2(v5[0]) = BYTE5(a3);
                  BYTE3(v5[0]) = BYTE4(a3);
                  BYTE4(v5[0]) = BYTE3(a3);
                  BYTE5(v5[0]) = BYTE2(a3);
                  BYTE6(v5[0]) = BYTE1(a3);
                  v3 = 8;
                  BYTE7(v5[0]) = a3;
                }
              }

              else
              {
                LOBYTE(v5[0]) = BYTE6(a3) | 0xFC;
                BYTE1(v5[0]) = BYTE5(a3);
                BYTE2(v5[0]) = BYTE4(a3);
                BYTE3(v5[0]) = BYTE3(a3);
                BYTE4(v5[0]) = BYTE2(a3);
                BYTE5(v5[0]) = BYTE1(a3);
                v3 = 7;
                BYTE6(v5[0]) = a3;
              }
            }

            else
            {
              LOBYTE(v5[0]) = BYTE5(a3) | 0xF8;
              BYTE1(v5[0]) = BYTE4(a3);
              BYTE2(v5[0]) = BYTE3(a3);
              BYTE3(v5[0]) = BYTE2(a3);
              BYTE4(v5[0]) = BYTE1(a3);
              BYTE5(v5[0]) = a3;
              v3 = 6;
            }
          }

          else
          {
            LOBYTE(v5[0]) = BYTE4(a3) | 0xF0;
            BYTE1(v5[0]) = BYTE3(a3);
            BYTE2(v5[0]) = BYTE2(a3);
            BYTE3(v5[0]) = BYTE1(a3);
            BYTE4(v5[0]) = a3;
            v3 = 5;
          }
        }

        else
        {
          LOBYTE(v5[0]) = BYTE3(a3) | 0xE0;
          BYTE1(v5[0]) = BYTE2(a3);
          BYTE2(v5[0]) = BYTE1(a3);
          BYTE3(v5[0]) = a3;
          v3 = 4;
        }
      }

      else
      {
        LOBYTE(v5[0]) = BYTE2(a3) | 0xC0;
        BYTE1(v5[0]) = BYTE1(a3);
        BYTE2(v5[0]) = a3;
        v3 = 3;
      }
    }

    else
    {
      LOBYTE(v5[0]) = BYTE1(a3) | 0x80;
      BYTE1(v5[0]) = a3;
      v3 = 2;
    }
  }

  else
  {
    LOBYTE(v5[0]) = a3;
    v3 = 1;
  }

  activityJournalWrite(a1, a2, v5, v3);
  v4 = *MEMORY[0x1E69E9840];
}

__CFArray *createStringArray(int *a1, int a2, const char *a3, unsigned int a4, int a5, CFAllocatorRef allocator)
{
  v9 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v21 = a3;
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  memset(v22, 0, sizeof(v22));
  if ((~a2 & 0x8010) != 0)
  {
    v13 = 0;
    v14 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 512;
    v9 = copyDataForUniquedValue(a1, *v9, v22, &v20);
    v21 = v9;
    v13 = v9 != v22;
    a4 = v20;
    v14 = v9;
    if (!v20)
    {
      goto LABEL_9;
    }
  }

  v15 = v9 + a4;
  do
  {
    v16 = createString(a1, a2, &v21, a5, allocator);
    if (v16)
    {
      v17 = v16;
      CFArrayAppendValue(Mutable, v16);
      CFRelease(v17);
    }
  }

  while (v21 < v15);
LABEL_9:
  if (v13)
  {
    free(v14);
  }

  v18 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFStringRef createString(int *a1, char a2, const char **a3, int a4, CFAllocatorRef alloc)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    if ((a2 & 0x10) != 0)
    {
      v11 = *v5;
      if (a4)
      {
        string_for_id_locked = db_get_string_for_id_locked(a1, v11);
      }

      else
      {
        string_for_id_locked = db_get_string_for_id(a1, v11);
      }

      if (string_for_id_locked)
      {
        v13 = string_for_id_locked;
      }

      else
      {
        v13 = "";
      }

      result = CFStringCreateWithCString(alloc, v13, 0x8000100u);
      v8 = (*a3 + 4);
    }

    else
    {
      v7 = CFStringCreateWithCString(alloc, *a3, 0x8000100u);
      if (dword_1EBF46ADC >= 5)
      {
        v15 = *__error();
        v16 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v7;
          _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "String: %@", &v19, 0xCu);
        }

        *__error() = v15;
        if (dword_1EBF46ADC >= 5)
        {
          v17 = *__error();
          v18 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 136315138;
            v20 = v5;
            _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "C String: %s", &v19, 0xCu);
          }

          *__error() = v17;
        }
      }

      v8 = &v5[strlen(v5) + 1];
      result = v7;
    }

    *a3 = v8;
  }

  else
  {
    result = &stru_1F4284FD0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void __checkIndexSetDocIdOrder(uint64_t a1, uint64_t *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 2) >= 2u)
  {
    v5 = 0;
    do
    {
      v6 = v5;
      v7 = *a2;
      v8 = *(*a2 + 8 * v5++);
      if (*(v8 + 80) > *(*(*a2 + 8 * v5) + 80))
      {
        v9 = *__error();
        v10 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "__checkIndexSetDocIdOrder";
          v23 = 1024;
          v24 = 165;
          _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Unexpected index base id order, recycling", buf, 0x12u);
        }

        *__error() = v9;
        si_recycleForBadIndex(a1, *(*a2 + 8 * v6), "unexpected index base");
        v7 = *a2;
        v8 = *(*a2 + 8 * v6);
      }

      v11 = *(v8 + 68);
      if (v11 >= 2)
      {
        v12 = *(v7 + 8 * v5);
        if (*(v12 + 68) >= 2u && (*(v8 + 80) + v11) > *(v12 + 80))
        {
          v13 = *__error();
          v14 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = *(*a2 + 8 * v6);
            LODWORD(v16) = *(v15 + 68);
            v17 = *(v15 + 80);
            if (v16 >= 2)
            {
              v16 = v16;
            }

            else
            {
              v16 = 0;
            }

            v18 = v17 + v16;
            v19 = *(*(*a2 + 8 * v5) + 80);
            v20 = *(a2 + 2);
            *buf = 136316674;
            v22 = "__checkIndexSetDocIdOrder";
            v23 = 1024;
            v24 = 172;
            v25 = 2048;
            v26 = v18;
            v27 = 2048;
            v28 = v19;
            v29 = 1024;
            v30 = v6;
            v31 = 1024;
            v32 = v5;
            v33 = 1024;
            v34 = v20;
            _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Overlapping doc ids (%lld>%lld) between indexes %d and %d out of %d. Recycling", buf, 0x38u);
          }

          *__error() = v13;
          si_recycleForBadIndex(a1, *(*a2 + 8 * v6), "overlapping doc ids");
        }
      }
    }

    while (v5 < (*(a2 + 2) - 1));
  }

  v3 = *MEMORY[0x1E69E9840];
}

_DWORD *si_populategroup(uint64_t a1, char **a2, const __CFString *a3, int a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8)
{
  v39 = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v35 = 0;
  updated = _si_updateCSGroupAssignments(a1, a3);
  if (*(a1 + 2072) == 1)
  {
    if (updated)
    {
      v35 = updated;
      *a2 = v15;
      LOBYTE(v18) = updated;
      if (!updated)
      {
        LOBYTE(v18) = -1;
        v35 = -1;
      }

      LOBYTE(GroupFromDBO) = 1;
    }

    else
    {
      LOBYTE(GroupFromDBO) = 0;
      *a2 = v15;
      LOBYTE(v18) = -1;
      v35 = -1;
    }

    goto LABEL_29;
  }

  GroupFromDBO = si_getGroupFromDBO(a1, v15, &v35);
  v18 = v35;
  v20 = *(a1 + 2072);
  *a2 = v15;
  if (v18)
  {
    if (v20)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v21 = v20 & 1;
    v18 = 18;
    if (v21)
    {
      v22 = -1;
    }

    else
    {
      v22 = 18;
    }

    v35 = v22;
    if (v21)
    {
      LOBYTE(v18) = -1;
      goto LABEL_29;
    }
  }

  v32 = a8;
  memset(buf, 0, 32);
  v23 = db_copy_field_ids_with_buffer(*(a1 + 1192), "kMDItemSupportFileType", buf, 8uLL);
  if (v18 >= 0x16)
  {
    v18 = 18;
    v35 = 18;
  }

  if (!GroupFromDBO || !db_get_field_by_id(*(a1 + 1192), v15, v23, &v34, &v33))
  {
    v24 = *(v15 + 10) | 0x20;
    *(v15 + 10) = v24;
    v18 = 17;
    if (!a5)
    {
      goto LABEL_20;
    }

LABEL_23:
    LOBYTE(v18) = v18 | 0x20;
    v25 = v24 | 0x40;
    goto LABEL_24;
  }

  v24 = *(v15 + 10) & 0xFFFFFFDF;
  *(v15 + 10) = v24;
  if (a5)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!a4)
  {
    v18 |= (v24 >> 1) & 0x20;
    goto LABEL_26;
  }

  v25 = v24 & 0xFFFFFFBF;
LABEL_24:
  *(v15 + 10) = v25;
LABEL_26:
  if (v23 != buf)
  {
    free(v23);
  }

  a8 = v32;
LABEL_29:
  result = db_add_field(*(a1 + 1192), a2, 1u, "_kMDItemGroupId", 0, 0x108u, 2, &v35, v17, 1);
  if (result)
  {
    v27 = result;
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = *v15;
      *buf = 136316162;
      *&buf[4] = "si_populategroup";
      *&buf[12] = 1024;
      *&buf[14] = 1723;
      *&buf[18] = 2048;
      *&buf[20] = v31;
      *&buf[28] = 2048;
      *&buf[30] = v31;
      v37 = 1024;
      v38 = v27;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: db_add_field(_kMDItemGroupId) failed, oid:0x%llx(%lld), rc:%d", buf, 0x2Cu);
    }

    result = __error();
    *result = v28;
  }

  *a7 = v18;
  *a6 = v35;
  *a8 = GroupFromDBO;
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _si_updateCSGroupAssignments(uint64_t a1, const __CFString *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!a2 || (*(a1 + 2072) & 1) == 0)
  {
    goto LABEL_22;
  }

  os_unfair_lock_lock(&group_assignment_lock);
  Value = CFDictionaryGetValue(*(a1 + 2088), a2);
  if (Value && CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr))
  {
LABEL_12:
    os_unfair_lock_unlock(&group_assignment_lock);
    goto LABEL_22;
  }

  v33.location = 1;
  v33.length = 256;
  valuePtr = CFBitVectorGetFirstIndexOfBit(*(a1 + 2096), v33, 0);
  if (valuePtr == -1)
  {
    valuePtr = 0;
    goto LABEL_12;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  Copy = CFStringCreateCopy(v5, a2);
  CFDictionarySetValue(*(a1 + 2088), Copy, v6);
  CFBitVectorSetBitAtIndex(*(a1 + 2096), valuePtr, 1u);
  os_unfair_lock_unlock(&group_assignment_lock);
  v8 = *__error();
  v9 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = valuePtr;
    *&buf[8] = 2112;
    *&buf[10] = a2;
    _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "### added group %d for bundle %@", buf, 0x12u);
  }

  *__error() = v8;
  v10 = valuePtr;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(buf, 0, sizeof(buf));
  if (CFStringGetCString(a2, &buf[5], 256, 0x8000100u))
  {
    v11 = strlen(&buf[5]) + 1;
    os_unfair_lock_lock((a1 + 2224));
    if (v10 >= 0x80)
    {
      if (v10 >= 0x4000)
      {
        if (v10 >= 0x200000)
        {
          if (v10 >> 28)
          {
            buf[0] = -16;
            *&buf[1] = v10;
            v13 = 5;
            v12 = buf;
          }

          else
          {
            v12 = &buf[1];
            buf[1] = HIBYTE(v10) | 0xE0;
            buf[2] = BYTE2(v10);
            buf[3] = BYTE1(v10);
            buf[4] = v10;
            v13 = 4;
          }
        }

        else
        {
          v12 = &buf[2];
          buf[2] = BYTE2(v10) | 0xC0;
          buf[3] = BYTE1(v10);
          buf[4] = v10;
          v13 = 3;
        }
      }

      else
      {
        v12 = &buf[3];
        buf[3] = BYTE1(v10) | 0x80;
        buf[4] = v10;
        v13 = 2;
      }
    }

    else
    {
      v12 = &buf[4];
      buf[4] = v10;
      v13 = 1;
    }

    activityJournalWrite(a1 + 2192, 23, v12, v11 + v13);
    os_unfair_lock_unlock((a1 + 2224));
  }

  CFRelease(Copy);
  CFRelease(v6);
LABEL_22:
  result = valuePtr;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *decodeDBOToDictionary(int *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, CFAllocatorRef allocator)
{
  if (a5)
  {
    v15 = &kSIDictionaryPropertyIdKeyCallbacks;
  }

  else
  {
    v15 = MEMORY[0x1E695E9D8];
  }

  theDict = CFDictionaryCreateMutable(allocator, 0, v15, MEMORY[0x1E695E9E8]);
  v50 = 0;
  *v48 = 0;
  cStr = 0;
  if (a5 == 1)
  {
    p_cStr = 0;
  }

  else
  {
    p_cStr = &cStr;
  }

  while (db_next_field(a1, a2, 0, &v50, p_cStr, v48) == 35)
  {
    v17 = *v48;
    v18 = *(*v48 + 2);
    if ((v18 & a4) == 0 && (v18 & a3) == a3)
    {
      switch(a5)
      {
        case 0:
          v21 = CFStringCreateWithCString(allocator, cStr, 0x8000100u);
          v17 = *v48;
          goto LABEL_34;
        case 1:
          v20 = *(*v48 + 4);
LABEL_16:
          v21 = (v20 | ((v18 & 0x100) << 23));
          goto LABEL_34;
        case 2:
          id_for_field = db_get_id_for_field(a1, cStr);
          if (!a7 || id_for_field != a7)
          {
            if (id_for_field != a6 || a6 == 0)
            {
              v24 = id_for_field;
            }

            else
            {
              v24 = id_for_field | 0x20000000;
            }

            v17 = *v48;
            v18 = *(*v48 + 2);
            v25 = (v18 << 24) & 0x8000000;
            if ((v18 & 0x4000) != 0)
            {
              v25 = 0x10000000;
            }

            v20 = v25 | v24;
            if ((~v18 & 0x5020) == 0 && **v48 == 14)
            {
              v20 |= 0x4000000u;
            }

            goto LABEL_16;
          }

          break;
        default:
          v21 = 0;
LABEL_34:
          v26 = _decodeSDBField(a1, v17, (v17 + 13), 0, a8, a9, 0, allocator);
          if (v26)
          {
            v27 = v26;
            CFDictionarySetValue(theDict, v21, v26);
            CFRelease(v27);
          }

          if (!a5)
          {
            if (v21)
            {
              CFRelease(v21);
            }
          }

          break;
      }
    }
  }

  if ((a3 & 0x800) != 0 || (v28 = *(a2 + 16)) == 0)
  {
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (a5)
    {
      v29 = (db_get_id_for_field(a1, "kMDItemAttributeChangeDate") | 0x80000000);
      v28 = *(a2 + 16);
    }

    else
    {
      v29 = @"kMDItemAttributeChangeDate";
    }

    v30 = CFDateCreate(allocator, v28 / 1000000.0 - *MEMORY[0x1E695E468]);
    CFDictionarySetValue(theDict, v29, v30);
    CFRelease(v30);
LABEL_47:
    v31 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 0x40000000;
    v45 = __decodeDBOToDictionary_block_invoke;
    v46 = &__block_descriptor_tmp_107;
    v47 = Mutable;
    if (a1)
    {
      v42 = 0;
      *v43 = 0;
      if (!db_get_field(a1, a2, "kMDItemPrimaryRecipientEmailAddresses", v43, &v42))
      {
        v33 = _decodeSDBField(a1, *v43, (*v43 + 13), 0, 0, 0, 0, v31);
        v45(v44, v33);
        CFRelease(v33);
      }

      if (!db_get_field(a1, a2, "kMDItemAdditionalRecipientEmailAddresses", v43, &v42))
      {
        v34 = _decodeSDBField(a1, *v43, (*v43 + 13), 0, 0, 0, 0, v31);
        v45(v44, v34);
        CFRelease(v34);
      }

      if (!db_get_field(a1, a2, "kMDItemHiddenAdditionalRecipientEmailAddresses", v43, &v42))
      {
        v35 = _decodeSDBField(a1, *v43, (*v43 + 13), 0, 0, 0, 0, v31);
        v45(v44, v35);
        CFRelease(v35);
      }
    }

    if (CFArrayGetCount(Mutable))
    {
      if (a5)
      {
        v36 = db_get_id_for_field(a1, "kMDItemRecipientEmailAddresses");
      }

      else
      {
        v36 = @"kMDItemRecipientEmailAddresses";
      }

      CFDictionarySetValue(theDict, v36, Mutable);
    }

    CFRelease(Mutable);
  }

  return theDict;
}

uint64_t db_next_field(_DWORD *a1, uint64_t a2, int a3, _DWORD *a4, char **a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v20 = *__error();
    v21 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *a1;
      *buf = 136315650;
      v27 = "db_next_field";
      v28 = 1024;
      v29 = 409;
      v30 = 1024;
      v31 = v22;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v20;
    v23 = __si_assert_copy_extra_332();
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 409, v25);
    free(v24);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v8 = a2;
  LODWORD(v9) = *a4;
  if (*a4)
  {
    v9 = v9;
  }

  else
  {
    v9 = 48;
  }

  if (v9 >= *(a2 + 12))
  {
    result = 0;
  }

  else
  {
    v12 = a2 + v9;
    if (a5 && (string_and_length_for_id_15021 = get_string_and_length_for_id_15021(a1, 0, *(v12 + 4), 0, a3), (*a5 = string_and_length_for_id_15021) == 0))
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(7);
      v18 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v12 + 4);
        *buf = 136315394;
        v27 = (a1 + 81);
        v28 = 1024;
        v29 = v19;
        _os_log_impl(&dword_1C278D000, v17, v18, "%s : ERR: XXXdbg - whoa dude... can't get name ptr for name id %d\n", buf, 0x12u);
      }

      *__error() = v16;
      result = 2;
    }

    else
    {
      if (a6)
      {
        *a6 = v12;
      }

      *a4 = v12 + *(v12 + 8) - v8 + 13;
      result = 35;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_get_id_for_field(int *a1, char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_get_id_for_field";
      *&buf[12] = 1024;
      *&buf[14] = 288;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 288, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  memset(buf, 0, 32);
  v2 = internal_copy_field_ids(a1, a2, buf, 8uLL, 0);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = 4294967294;
  }

  if (v2 != buf)
  {
    free(v2);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

char *fastUTF8String(const __CFString *a1, void *a2, char *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    goto LABEL_13;
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  if (!CStringPtr)
  {
    if (CFStringGetCString(a1, a3, 1024, 0x8000100u))
    {
      *a2 = strlen(a3) + 1;
      return a3;
    }

    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v14 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (CFStringGetCString(a1, v14, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      *a2 = strlen(v14) + 1;
      return v14;
    }

    free(v14);
LABEL_13:
    *a2 = 1;
    *a3 = 0;
    return a3;
  }

  v8 = CStringPtr;
  v9 = strlen(CStringPtr);
  v10 = v9 + 1;
  *a2 = v9 + 1;
  if ((v9 + 1) >= 1025)
  {
    a3 = malloc_type_malloc(v9 + 1, 0x7381A768uLL);
  }

  return memcpy(a3, v8, v10);
}

uint64_t _data_map32_get_data_id(uint64_t a1, unsigned int a2, char *a3, size_t a4, int a5)
{
  v9 = &a3[a2];
  v10 = a4 - a2;
  if (*(a1 + 1460) == 1)
  {
    v11 = LegacyHash(v9, v10);
  }

  else
  {
    v11 = commonHash(v10, v9);
  }

  v12 = v11;
  if (_data_map32_rdlock(a1))
  {
    return 0;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v15 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v45 = HIDWORD(v15);
  v46 = v15;
  v43 = v17;
  v44 = v16;
  v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
  v19 = *(v18 + 312);
  v20 = *(v18 + 224);
  if (v20)
  {
    v20(*(v18 + 288));
  }

  v42 = v46;
  v41 = v45;
  v40 = __PAIR64__(v44, v43);
  if (!_setjmp(v18))
  {
    bucket_entry = _data_map32_get_bucket_entry(a1, v12, 0, a3, a4);
    if (!bucket_entry)
    {
      v21 = 0;
LABEL_31:
      v28 = threadData[9 * v42 + 1] + 320 * v41;
      *(v28 + 312) = v19;
      v29 = *(v28 + 232);
      if (v29)
      {
        v29(*(v28 + 288));
      }

      dropThreadId(v42, 0, add_explicit + 1);
      goto LABEL_34;
    }

    v23 = *bucket_entry;
    if (*bucket_entry)
    {
      if (v23 >= *(a1 + 220))
      {
        v21 = 0;
      }

      else
      {
        v21 = v23;
      }

      goto LABEL_31;
    }

    if (!a5)
    {
LABEL_30:
      v21 = 0;
      goto LABEL_31;
    }

    v24 = bucket_entry;
    v39[1] = a3;
    v39[0] = a4;
    if (a4 >> 28)
    {
      v26 = 5;
    }

    else if (a4 >> 21)
    {
      v26 = 4;
    }

    else
    {
      if (!(a4 >> 14))
      {
        if (a4 < 0x80)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

LABEL_29:
        v27 = *(a1 + 220);
        _data_map32_unlock(a1);
        if (_data_map32_wrlock(a1))
        {
          goto LABEL_30;
        }

        v30 = v27;
        if (v27 != *(a1 + 220))
        {
          v36 = _data_map32_get_bucket_entry(a1, v12, 0, a3, a4);
          if (!v36)
          {
            goto LABEL_51;
          }

          v31 = *v36;
          v30 = *(a1 + 220);
          if (v31 >= v30)
          {
            goto LABEL_30;
          }

          if (v31)
          {
            _data_map32_set_seen_id(a1, v31);
LABEL_50:
            v21 = v31;
            goto LABEL_31;
          }

          v24 = v36;
        }

        v31 = v30;
        v38 = 0;
        if (_data_map32_grow(a1, (v25 + a4), &v38))
        {
          if ((*(a1 + 1459) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1459) = 1;
          }

          v32 = *(a1 + 1352);
          v33 = *(a1 + 1328);
          *(v32 + 4 * v31) = v33;
          v34 = v33;
          if ((*(a1 + 1457) & 1) == 0)
          {
            v35 = v32;
            _data_map32_dirty(a1);
            *(a1 + 1457) = 1;
            v34 = *(v35 + 4 * v31);
          }

          *(a1 + 1328) = data_entry_store_16962(*(a1 + 1320), v34, v39);
          ++*(a1 + 220);
          if ((*(a1 + 1458) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1458) = 1;
          }

          if ((v38 & 4) != 0)
          {
            v24 = _data_map32_get_bucket_entry(a1, v12, v31, 0, 0);
          }

          *v24 = v31;
          SIActivityJournalDMAdd(*(a1 + 1432), *(a1 + 1440), *(a1 + 224), v31, v12, a4);
          goto LABEL_50;
        }

LABEL_51:
        v21 = 0;
        goto LABEL_31;
      }

      v26 = 3;
    }

    v25 = v26;
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v37 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v37, 2u);
  }

  *(v18 + 312) = v19;
  CIOnThreadCleanUpReset(v40);
  dropThreadId(v42, 1, add_explicit + 1);
  CICleanUpReset(v42, HIDWORD(v40));
  v21 = 0;
LABEL_34:
  _data_map32_unlock(a1);
  return v21;
}

uint64_t _data_map32_get_bucket_entry(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, size_t a5)
{
  v95 = *MEMORY[0x1E69E9840];
  if (*(a1 + 220) > a3)
  {
    v7 = 0;
    v8 = *(a1 + 1392);
    v9 = a2 - a2 / *(a1 + 1392) * v8;
    v10 = v8;
    v48 = v8;
    while (v9 >= v10)
    {
      v15 = 0;
      v32 = v9;
LABEL_33:
      v33 = v32 != v8;
      if (v15)
      {
        goto LABEL_40;
      }

      result = 0;
      v35 = v7 | v33;
      v7 = 1;
      v10 = v9;
      v9 = 0;
      if (v35)
      {
        goto LABEL_45;
      }
    }

    v50 = v7;
    v11 = v9;
    while (1)
    {
      v12 = *(a1 + 1384);
      v13 = *(v12 + 4 * v11);
      if (v13)
      {
        v14 = v13 == a3;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
LABEL_41:
        result = v12 + 4 * v11;
        goto LABEL_45;
      }

      if (a3)
      {
        goto LABEL_10;
      }

      if (*(a1 + 220) <= v13)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v39 = *__error();
        v40 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v45 = *(a1 + 220);
          v46 = fd_name(*(a1 + 1272), &v69, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 422;
          *&__s[18] = 1024;
          *&__s[20] = v13;
          *&__s[24] = 1024;
          *&__s[26] = v45;
          *&__s[30] = 2048;
          *&__s[32] = a1;
          *&__s[40] = 2080;
          *&__s[42] = v46;
          _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
        }

        v41 = __error();
        result = 0;
        *v41 = v39;
        goto LABEL_45;
      }

      v16 = *(a1 + 1352);
      if (!v16)
      {
        goto LABEL_40;
      }

      v17 = *(v16 + 4 * v13);
      if (v17 == 1)
      {
        goto LABEL_40;
      }

      v52 = 0;
      __s2 = 0;
      v54 = 0;
      v18 = *(a1 + 1328);
      if (v18 <= v17)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v22 = *__error();
        v30 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v47 = *(a1 + 1328);
          v31 = fd_name(*(a1 + 1272), &v69, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 446;
          *&__s[18] = 2048;
          *&__s[20] = v17;
          *&__s[28] = 2048;
          *&__s[30] = v47;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v31;
          v26 = __s;
          v27 = v30;
          v28 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          v29 = 58;
          goto LABEL_30;
        }
      }

      else
      {
        data_entry_restore_32(*(a1 + 1320), v17, v18, &v52, &v54);
        if (v54 != 1)
        {
          if (v52 == a5 && !memcmp(a4, __s2, a5))
          {
            goto LABEL_41;
          }

LABEL_10:
          v15 = 0;
          goto LABEL_23;
        }

        v94 = 0;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v19 = v17;
        v20 = 5;
        memset(__s, 0, sizeof(__s));
        do
        {
          if (v19 >= *(a1 + 1328))
          {
            break;
          }

          v21 = strlen(__s);
          sprintf(&__s[v21], "%d ", *(*(a1 + 1320) + v19++));
          --v20;
        }

        while (v20);
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v22 = *__error();
        v23 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = fd_name(*(a1 + 1272), &v69, 0x100uLL);
          v25 = *(a1 + 1328);
          v55 = 136316674;
          v56 = "_data_map32_get_data_entry";
          v57 = 1024;
          v58 = 442;
          v59 = 2080;
          v60 = v24;
          v61 = 2048;
          v62 = v17;
          v63 = 2048;
          v64 = v25;
          v65 = 2048;
          v66 = v52;
          v67 = 2080;
          v68 = __s;
          v26 = &v55;
          v27 = v23;
          v28 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
          v29 = 68;
LABEL_30:
          _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, v28, v26, v29);
        }
      }

      *__error() = v22;
      v15 = 1;
LABEL_23:
      ++v11;
      if ((v15 & 1) != 0 || v11 >= v10)
      {
        v32 = v11;
        v7 = v50;
        v8 = v48;
        goto LABEL_33;
      }
    }
  }

  if (!a3)
  {
LABEL_40:
    result = 0;
    goto LABEL_45;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v36 = *__error();
  v37 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v43 = *(a1 + 220);
    v44 = fd_name(*(a1 + 1272), &v69, 0x100uLL);
    *__s = 136316418;
    *&__s[4] = "_data_map32_get_bucket_entry";
    *&__s[12] = 1024;
    *&__s[14] = 516;
    *&__s[18] = 1024;
    *&__s[20] = a3;
    *&__s[24] = 1024;
    *&__s[26] = v43;
    *&__s[30] = 2048;
    *&__s[32] = a1;
    *&__s[40] = 2080;
    *&__s[42] = v44;
    _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
  }

  v38 = __error();
  result = 0;
  *v38 = v36;
LABEL_45:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

double markItemAsUsedForField(int *a1, char **a2, char *a3, char *a4, uint64_t a5, int a6, int a7, unsigned int a8, CFAbsoluteTime a9)
{
  v80 = *MEMORY[0x1E69E9840];
  v18 = objc_autoreleasePoolPush();
  db_validate_obj(a1);
  v19 = *a2;
  if (!**a2)
  {
    v20 = 0.0;
    goto LABEL_57;
  }

  v75 = 0;
  v76 = 0;
  if (db_get_field(a1, v19, a3, &v75, &v76))
  {
    v20 = -INFINITY;
    if (a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = *v76;
    if (a5)
    {
LABEL_8:
      if (a5 || v20 < a9)
      {
        if (a5)
        {
          a9 = MEMORY[0x1C691E960](a5);
        }

        v74 = a9;
        v73 = 0;
        v72 = 0;
        v21 = si_retain_calendar();
        CFCalendarDecomposeAbsoluteTime(v21[1], a9, "yMd", &v72, &v73, &v73 + 4);
        at = 0.0;
        CFCalendarComposeAbsoluteTime(v21[1], &at, "yMd", v72, v73, HIDWORD(v73));
        OSAtomicEnqueue(&sCalenderQueueHead, v21, 0);
        if (a4)
        {
          if (db_get_field(a1, *a2, a4, &v75, &v76))
          {
            v24 = 0;
            if (a9 > v20)
            {
              goto LABEL_15;
            }

            if (a9 != v20)
            {
LABEL_46:
              if (db_add_field(a1, a2, 1u, a4, 0, a8 | 0x20, 12, &at, v23, 8))
              {
                v50 = *__error();
                v51 = _SILogForLogForCategory(7);
                v52 = 2 * (dword_1EBF46AE8 < 4);
                if (os_log_type_enabled(v51, v52))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C278D000, v51, v52, "Failed adding used dates", buf, 2u);
                }

                *__error() = v50;
              }
            }
          }

          else
          {
            v44 = *MEMORY[0x1E695E480];
            v45 = _decodeSDBField(a1, v75, v76, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
            v24 = v45;
            if (a9 > v20)
            {
              if (v45)
              {
                TypeID = CFArrayGetTypeID();
                if (TypeID == CFGetTypeID(v24))
                {
                  Count = CFArrayGetCount(v24);
                  if (Count)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v24, Count - 1);
                    v48 = CFGetTypeID(ValueAtIndex);
                    if (v48 == CFDateGetTypeID())
                    {
                      v49 = MEMORY[0x1C691E960](ValueAtIndex);
                      v22.n128_f64[0] = at;
                      if (v49 == at)
                      {
                        goto LABEL_21;
                      }

                      if (dword_1EBF46ADC >= 5)
                      {
                        LODWORD(ValueAtIndex) = *__error();
                        v67 = _SILogForLogForCategory(4);
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 134218240;
                          *&buf[4] = at;
                          v78 = 2048;
                          v79 = v49;
                          _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "New last used date was not in the previous array: %f != %f", buf, 0x16u);
                        }

                        *__error() = ValueAtIndex;
                      }

                      if (!db_add_field(a1, a2, 2u, a4, 0, a8, 12, &at, v22, 8))
                      {
                        goto LABEL_21;
                      }

                      LODWORD(ValueAtIndex) = *__error();
                      v25 = _SILogForLogForCategory(7);
                      v26 = 2 * (dword_1EBF46AE8 < 4);
                      if (!os_log_type_enabled(v25, v26))
                      {
                        goto LABEL_19;
                      }

                      *buf = 0;
                    }

                    else
                    {
                      db_delete_field(a1, a2, a4);
                      if (!db_add_field(a1, a2, 1u, a4, 0, a8 | 0x20, 12, &at, v64, 8))
                      {
                        goto LABEL_21;
                      }

                      LODWORD(ValueAtIndex) = *__error();
                      v25 = _SILogForLogForCategory(7);
                      v26 = 2 * (dword_1EBF46AE8 < 4);
                      if (!os_log_type_enabled(v25, v26))
                      {
                        goto LABEL_19;
                      }

                      *buf = 0;
                    }

                    goto LABEL_18;
                  }
                }
              }

LABEL_15:
              if (!db_add_field(a1, a2, 1u, a4, 0, a8 | 0x20, 12, &at, v23, 8))
              {
LABEL_21:
                if (db_add_field(a1, a2, 1u, a3, 0, a8, 12, &v74, v22, 8))
                {
                  LODWORD(ValueAtIndex) = a8;
                  v27 = a7;
                  v28 = v24;
                  v29 = *__error();
                  v30 = _SILogForLogForCategory(7);
                  v31 = 2 * (dword_1EBF46AE8 < 4);
                  if (os_log_type_enabled(v30, v31))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1C278D000, v30, v31, "Failed adding used date", buf, 2u);
                  }

                  *__error() = v29;
                  v24 = v28;
                  a7 = v27;
                  a8 = ValueAtIndex;
                }

                if (v74 != 0.0)
                {
                  if (a6)
                  {
                    *buf = (86400 * (v74 / 0x15180));
                    v32 = strlen(a3);
                    v33 = MEMORY[0x1EEE9AC00](v32);
                    v34 = &v68 - ((v33 + 25) & 0xFFFFFFFFFFFFFFF0);
                    bzero(v34, v33 + 10);
                    strlcpy(v34, a3, v32 + 10);
                    strlcat(v34, "_Ranking", v32 + 10);
                    if (db_add_field(a1, a2, 1u, v34, 0, a8, 12, buf, v35, 8))
                    {
                      v36 = a8;
                      v37 = a7;
                      v38 = v24;
                      v39 = *__error();
                      v40 = _SILogForLogForCategory(7);
                      v41 = 2 * (dword_1EBF46AE8 < 4);
                      if (os_log_type_enabled(v40, v41))
                      {
                        *v70 = 0;
                        _os_log_impl(&dword_1C278D000, v40, v41, "Failed adding ranking used date", v70, 2u);
                      }

                      *__error() = v39;
                      v24 = v38;
                      a7 = v37;
                      a8 = v36;
                    }
                  }
                }

                v20 = a9;
                goto LABEL_32;
              }

              LODWORD(ValueAtIndex) = *__error();
              v25 = _SILogForLogForCategory(7);
              v26 = 2 * (dword_1EBF46AE8 < 4);
              if (!os_log_type_enabled(v25, v26))
              {
LABEL_19:
                *__error() = ValueAtIndex;
                goto LABEL_21;
              }

              *buf = 0;
LABEL_18:
              _os_log_impl(&dword_1C278D000, v25, v26, "Failed adding used dates", buf, 2u);
              goto LABEL_19;
            }

            if (a9 != v20)
            {
              if (v45)
              {
                v58 = CFArrayGetTypeID();
                if (v58 == CFGetTypeID(v24))
                {
                  v59 = CFDateCreate(v44, at);
                  v81.length = CFArrayGetCount(v24);
                  v81.location = 0;
                  if (!CFArrayContainsValue(v24, v81, v59))
                  {
                    if (dword_1EBF46ADC >= 5)
                    {
                      v65 = *__error();
                      v66 = _SILogForLogForCategory(4);
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134217984;
                        *&buf[4] = at;
                        _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "New last used date was not in the previous array: %f", buf, 0xCu);
                      }

                      *__error() = v65;
                    }

                    if (db_add_field(a1, a2, 2u, a4, 0, a8, 12, &at, v60, 8))
                    {
                      v61 = *__error();
                      v62 = _SILogForLogForCategory(7);
                      v63 = 2 * (dword_1EBF46AE8 < 4);
                      if (os_log_type_enabled(v62, v63))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_1C278D000, v62, v63, "Failed adding used dates", buf, 2u);
                      }

                      *__error() = v61;
                    }
                  }

                  if (v59)
                  {
                    CFRelease(v59);
                  }

                  goto LABEL_32;
                }
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          v24 = 0;
          if (a9 > v20)
          {
            goto LABEL_21;
          }
        }

LABEL_32:
        if (a7)
        {
          v43 = db_get_field(a1, *a2, "kMDItemUseCount", &v75, &v76) ? 1 : *v76 + 1;
          *buf = v43;
          if (db_add_field(a1, a2, 1u, "kMDItemUseCount", 0, a8 | 0x100, 6, buf, v42, 4))
          {
            v53 = *__error();
            v54 = _SILogForLogForCategory(7);
            v55 = 2 * (dword_1EBF46AE8 < 4);
            if (os_log_type_enabled(v54, v55))
            {
              *v70 = 0;
              _os_log_impl(&dword_1C278D000, v54, v55, "Failed adding use count", v70, 2u);
            }

            *__error() = v53;
          }
        }

        if (v24)
        {
          CFRelease(v24);
        }
      }

LABEL_57:
      db_validate_obj(a1);
      objc_autoreleasePoolPop(v18);
      goto LABEL_58;
    }
  }

  if (a9 != -INFINITY)
  {
    goto LABEL_8;
  }

LABEL_58:
  v56 = *MEMORY[0x1E69E9840];
  return v20;
}

void *si_retain_calendar()
{
  v0 = OSAtomicDequeue(&sCalenderQueueHead, 0);
  if (!v0)
  {
    v0 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
    v0[1] = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
  }

  return v0;
}

uint64_t db_add_field(int *a1, char **a2, unsigned int a3, char *a4, unsigned int a5, unsigned int a6, int a7, unsigned __int8 *a8, __n128 a9, int a10)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_add_field";
      v20 = 1024;
      v21 = 341;
      v22 = 1024;
      v23 = v15;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v13;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 341, v18);
    free(v17);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *buf = 0;
  result = db2_add_field_with_cache(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, buf);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db2_add_field_with_cache(uint64_t a1, char **a2, unsigned int a3, char *__s, unsigned int a5, unsigned int a6, int a7, unsigned __int8 *a8, __n128 a9, int a10, void *a11)
{
  v186[3] = *MEMORY[0x1E69E9840];
  v175 = 0;
  v11 = *a2;
  v174 = 0;
  v12 = a5 != 0;
  v13 = *(a1 + 804);
  if ((v13 & 8) != 0)
  {
    v17 = 13;
    goto LABEL_7;
  }

  v176 = 0;
  if ((a7 - 15) <= 0xFFFFFFF1)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v181 = "db2_add_field_with_cache";
      *&v181[8] = 1024;
      LODWORD(v182) = 13613;
      WORD2(v182) = 1024;
      *(&v182 + 6) = a7;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Field type %d out of bounds", buf, 0x18u);
    }

    *__error() = v15;
    v17 = 22;
    goto LABEL_7;
  }

  v20 = a6;
  v21 = a5;
  if (a5 + 1 <= 1 && (!__s || !*__s))
  {
    v25 = __s;
    v26 = *__error();
    v27 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v181 = "db2_add_field_with_cache";
      *&v181[8] = 1024;
      LODWORD(v182) = 13620;
      WORD2(v182) = 2080;
      *(&v182 + 6) = v25;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Field name %s out of bounds", buf, 0x1Cu);
    }

    *__error() = v26;
    v17 = 93;
    goto LABEL_7;
  }

  v23 = (~a6 & 0x5020) == 0 && a7 == 14;
  if ((a6 & 0x10) == 0 && v23)
  {
LABEL_19:
    v17 = 22;
    goto LABEL_7;
  }

  if (v23)
  {
    v24 = 0;
    v17 = 0;
    if (*(a1 + 989))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = a7 == 11;
    if (a7 != 11 && (a6 & 0x10) != 0)
    {
      goto LABEL_19;
    }
  }

  v28 = a10;
  if ((a6 & 0x80) == 0)
  {
    if (a10 <= 0x4000)
    {
      goto LABEL_32;
    }

LABEL_33:
    v17 = 7;
    goto LABEL_7;
  }

  if (a10 > 60000)
  {
    goto LABEL_33;
  }

LABEL_32:
  if ((*(v11 + 3) + a10) > 0xFFDE)
  {
    goto LABEL_33;
  }

  v29 = 0;
  LODWORD(v170) = 0;
  v161 = a11;
  v156 = a1 + 324;
  v169 = v13 & 4;
  v162 = v169 >> 2;
  v167 = (16 * a3) & 0x20;
  v166 = (a3 >> 3) & 2;
  v30 = (a3 & 4) == 0 && v24;
  v168 = v30;
  a9.n128_u64[0] = 136316930;
  v155 = a9;
  a9.n128_u64[0] = 136315906;
  v157 = a9;
  v159 = a10;
  v31 = a8;
  LODWORD(v172) = a3;
  v173 = a1;
  v158 = a2;
  v160 = a8;
  while (1)
  {
    v171 = v31;
    v179[0] = v21;
    v179[1] = 0;
    v32 = v20 >> 5;
    LODWORD(v31) = v20 >> 3;
    v178[0] = 0;
    v178[1] = 0;
    if (!v12)
    {
      goto LABEL_72;
    }

    v33 = v21 & 0x7FFFFFFF;
    v165 = v29;
    if (v33 > 0x7FFFFFFD)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v34 = *(a1 + 880);
      if ((*(a1 + 804) & 0x14) != 0)
      {
        v35 = __s;
        v177 = 0;
        data = data_map_get_data(v34, v21 & 0x7FFFFFFF, &v177);
        if (!data)
        {
          v163 = v20 >> 3;
          v67 = data_map_count(v34);
          if (v67 < v33)
          {
            v70 = v67;
            v154 = *__error();
            v153 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
            {
              v152 = *(v173 + 4);
              v73 = data_map_valid(v34);
              *buf = v155.n128_u32[0];
              v74 = "n";
              if (v73)
              {
                v74 = "y";
              }

              *v181 = "_get_string_and_length_for_id";
              *&v181[8] = 1024;
              LODWORD(v182) = 574;
              WORD2(v182) = 2048;
              *(&v182 + 6) = v21 & 0x7FFFFFFF;
              HIWORD(v182) = 2048;
              v183 = v70;
              LOWORD(v184) = 1024;
              *(&v184 + 2) = 0;
              WORD3(v184) = 2080;
              *(&v184 + 1) = v156;
              v185 = 1024;
              LODWORD(v186[0]) = v152;
              WORD2(v186[0]) = 2080;
              *(v186 + 6) = v74;
              _os_log_error_impl(&dword_1C278D000, v153, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
            }

            *__error() = v154;
            if ((*(v173 + 4) & 0x20) != 0)
            {
              v71 = *__error();
              v72 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                v75 = *(v173 + 4);
                *buf = v157.n128_u32[0];
                *v181 = "_get_string_and_length_for_id";
                *&v181[8] = 1024;
                LODWORD(v182) = 576;
                WORD2(v182) = 2080;
                *(&v182 + 6) = v156;
                HIWORD(v182) = 1024;
                LODWORD(v183) = v75;
                _os_log_error_impl(&dword_1C278D000, v72, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
              }

              *__error() = v71;
              *(v173 + 4) |= 0x40u;
            }
          }

          v39 = 0;
          v40 = 0;
          LOBYTE(a3) = v172;
          a1 = v173;
          __s = v35;
          v32 = v20 >> 5;
          LODWORD(v31) = v163;
          goto LABEL_48;
        }

        v37 = data;
        LOBYTE(a3) = v172;
        a1 = v173;
        __s = v35;
      }

      else
      {
        if (*(v34 + 56) <= v33 || (v38 = *(*(v34 + 32) + 8 * v33)) == 0)
        {
          v68 = __s;
          v69 = *(a1 + 4);
          if ((v69 & 0x20) != 0)
          {
            v39 = 0;
            v40 = 0;
            a1 = v173;
            *(v173 + 4) = v69 | 0x40;
            LOBYTE(a3) = v172;
          }

          else
          {
            if (SIIsAppleInternal_onceToken != -1)
            {
              dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
            }

            v39 = 0;
            v40 = 0;
            LOBYTE(a3) = v172;
            a1 = v173;
          }

          __s = v68;
          v32 = v20 >> 5;
          goto LABEL_48;
        }

        v37 = (v38 + 6);
      }

      v39 = *(v37 - 2);
      v40 = *(v37 - 1);
    }

LABEL_48:
    if ((v20 & 0x400) != 0)
    {
      v41 = 0;
    }

    else
    {
      v41 = a7;
    }

    v42 = (v20 >> 4) & 2 | (v20 >> 7) & 1 | (v20 >> 1) & 4 | v32 & 8 | v31 & 0x40;
    v164 = v32;
    if (v169)
    {
      v43 = (v20 >> 8) & 0x20 | (v20 >> 14 << 7) | v42;
    }

    else
    {
      v43 = (v20 >> 6) & 0x20 | (v20 >> 12 << 7) | v42;
      if (v41 == 14 && (v20 & 0x4000) != 0)
      {
        LOBYTE(v43) = v43 | 0x80;
      }
    }

    if ((v20 & 0x10) != 0)
    {
      v45 = 15;
    }

    else
    {
      v45 = 11;
    }

    if (v41 == 11)
    {
      v46 = v45;
    }

    else
    {
      v46 = v41;
    }

    if ((a3 & 2) != 0 && (v20 & 0x20) == 0)
    {
      v140 = __si_assert_copy_extra_3233(0, -1);
      v130 = v140;
      v141 = "";
      if (v140)
      {
        v141 = v140;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13661, "field_flags & DB_FIELD_ARRAY_VAL", v141);
LABEL_232:
      free(v130);
      if (!__valid_fs(-1))
      {
        v142 = 3072;
LABEL_235:
        *v142 = -559038737;
        abort();
      }

LABEL_233:
      v142 = 2989;
      goto LABEL_235;
    }

    v47 = v43;
    if (v43 == v40 && v39 == v46)
    {
      v48 = v179;
      v12 = 1;
      v49 = v20;
      goto LABEL_92;
    }

    v163 = v31;
    v31 = __s;
    string_and_length_for_id_15021 = get_string_and_length_for_id_15021(v173, 0, v21, 0, 0);
    v51 = "";
    if (string_and_length_for_id_15021)
    {
      v51 = string_and_length_for_id_15021;
    }

    si_analytics_log_2752("field:%d extras:%d expected:%d type:%d expected:%d ty:%d,ff:%d,,cs:%d,rt:%d %s", v21, v40, v47, v39, v46, a7, v20, v162, v165, v51);
    __s = v31;
    LOBYTE(v31) = v163;
    a1 = v173;
    LOBYTE(v32) = v164;
LABEL_72:
    if (!__s)
    {
      goto LABEL_162;
    }

    v49 = v20 | v167;
    v52 = __s;
    v53 = internal_copy_field_ids(a1, __s, v178, 4uLL, 0);
    v54 = v31;
    v48 = v53;
    v55 = (v20 & 0x400) != 0 ? 0 : a7;
    v56 = (v49 >> 4) & 2 | (v20 >> 7) & 1 | (v49 >> 1) & 4 | v32 & 8 | v54 & 0x40;
    if (v169)
    {
      v57 = (v20 >> 8) & 0x20 | (v20 >> 14 << 7) | v56;
    }

    else
    {
      v57 = (v20 >> 6) & 0x20 | (v49 >> 12 << 7) | v56;
      if (v55 == 14 && (v20 & 0x4000) != 0)
      {
        LOWORD(v57) = v57 | 0xFF80;
      }
    }

    if ((v20 & 0x10) != 0)
    {
      v59 = 15;
    }

    else
    {
      v59 = 11;
    }

    if (v55 == 11)
    {
      LOBYTE(v55) = v59;
    }

    *buf = v55 | (v57 << 8);
    v60 = strlen(v52);
    id_for_string = _get_id_for_string(v173, 0, v52, v60, v166 | 1u, buf);
    v21 = id_for_string;
    if (id_for_string == -1)
    {
      break;
    }

    if (!v48)
    {
      v179[0] = id_for_string;
      v48 = v179;
    }

    v12 = 0;
    LOBYTE(a3) = v172;
    a1 = v173;
    __s = v52;
LABEL_92:
    v62 = v171;
    if ((v49 & 0xA0) == 0x80)
    {
      v138 = __si_assert_copy_extra_3233(0, -1);
      v130 = v138;
      v139 = "";
      if (v138)
      {
        v139 = v138;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13695, "field_flags & DB_FIELD_ARRAY_VAL", v139);
      goto LABEL_232;
    }

    if (v21 >= 0xFFFFFFFE)
    {
      v129 = __si_assert_copy_extra_3233(0, -1);
      v130 = v129;
      v131 = "";
      if (v129)
      {
        v131 = v129;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13700, "(db_uint32_t)name_id!=((db_uint32_t)~0) && (db_uint32_t)name_id!=((db_uint32_t)-2)", v131);
      goto LABEL_232;
    }

    v171 = v48;
    if (!v168)
    {
      v76 = 1;
      if ((a3 & 4) != 0)
      {
        v31 = v160;
        v77 = v159;
        goto LABEL_141;
      }

      v31 = v160;
      v77 = v159;
      if (a7 == 14 && (v49 & 0x5030) == 0x5030)
      {
        v78 = __s;
        v79 = _os_feature_enabled_impl();
        if (!v79)
        {
          v31 = v160;
          goto LABEL_172;
        }

        v80 = *v160;
        v81 = v160[1];
        if (v80 > 2 || v81 > 2 || (v82 = (vector_dimension_vec_sizes_15424[v160[1]] * vector_size_elem_sizes_15423[*v160]), v82 == -1))
        {
          v107 = *__error();
          v108 = _SILogForLogForCategory(7);
          v88 = v171;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            *buf = v157.n128_u32[0];
            *v181 = "db2_add_field_with_cache";
            *&v181[8] = 1024;
            LODWORD(v182) = 13762;
            WORD2(v182) = 1024;
            *(&v182 + 6) = v80;
            WORD5(v182) = 1024;
            HIDWORD(v182) = v81;
            _os_log_error_impl(&dword_1C278D000, v108, OS_LOG_TYPE_ERROR, "%s:%d: Invalid data type and dimensions. data_type: %hhu dim: %hhu ", buf, 0x1Eu);
          }

          *__error() = v107;
          v17 = 22;
        }

        else
        {
          v83 = v159;
          v84 = (v159 - 2) / v82;
          v85 = 8 * v84;
          if (v84 < 0x801)
          {
            MEMORY[0x1EEE9AC00](v79);
            v31 = &v151 - ((v85 + 15) & 0xFFFFFFFF0);
            bzero(v31, v85);
            a1 = v173;
            v122 = v160;
            if (v83 < 5)
            {
LABEL_210:
              v77 = 8 * v84;
              v76 = 1;
              LOBYTE(a3) = v172;
              goto LABEL_141;
            }

            v123 = 0;
            v124 = v160 + 4;
            v170 = &v160[v159];
            while (1)
            {
              v125 = _get_id_for_string(a1, 5, v124, v82, -2147483647, v122);
              if ((v125 - 4294967294) < 2 || v125 == 0)
              {
                break;
              }

              *&v31[8 * v123] = v125;
              if (v123 >= v84)
              {
                v77 = 8 * v84;
                v76 = 1;
LABEL_172:
                LOBYTE(a3) = v172;
LABEL_140:
                a1 = v173;
                goto LABEL_141;
              }

              ++v123;
              v124 += v82;
              a1 = v173;
              v122 = v160;
              if (v124 >= v170)
              {
                goto LABEL_210;
              }
            }

            v135 = v125;
            v136 = *__error();
            v137 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
            {
              v145 = *v11;
              *buf = 136316674;
              *v181 = "db2_add_field_with_cache";
              *&v181[8] = 1024;
              LODWORD(v182) = 13780;
              WORD2(v182) = 2048;
              *(&v182 + 6) = v173;
              HIWORD(v182) = 2048;
              v183 = v135;
              LOWORD(v184) = 2048;
              *(&v184 + 2) = v145;
              WORD5(v184) = 1024;
              HIDWORD(v184) = v21;
              v185 = 2080;
              v186[0] = v78;
              _os_log_error_impl(&dword_1C278D000, v137, OS_LOG_TYPE_ERROR, "%s:%d: %p unexpected vec id: %llu oid: 0x%llx name id: %d name: %s", buf, 0x40u);
            }

            *__error() = v136;
            v17 = 22;
            v88 = v171;
          }

          else
          {
            v86 = *__error();
            v87 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *v181 = "db2_add_field_with_cache";
              *&v181[8] = 1024;
              LODWORD(v182) = 13770;
              WORD2(v182) = 2048;
              *(&v182 + 6) = 8 * v84;
              _os_log_error_impl(&dword_1C278D000, v87, OS_LOG_TYPE_ERROR, "%s:%d: Stack allocation of size %zu exceeds limit", buf, 0x1Cu);
            }

            *__error() = v86;
            v17 = 7;
            v88 = v171;
          }
        }

        goto LABEL_187;
      }

LABEL_141:
      v90 = v77 + 13;
      LODWORD(v92) = *(v11 + 2);
      v91 = *(v11 + 3);
      if (v90 <= v92 - v91)
      {
        LODWORD(v170) = v76;
      }

      else
      {
        v93 = v92 + 2 * v90;
        if (v93 >= 0x10000)
        {
          v92 = 0x10000;
        }

        else
        {
          v92 = v93;
        }

        v94 = malloc_type_realloc(v11, v92, 0x1000040EED21634uLL);
        if (!v94)
        {
          v17 = 12;
          v88 = v171;
          goto LABEL_185;
        }

        v11 = v94;
        LODWORD(v170) = v76;
        *(v94 + 2) = v92;
        *v158 = v94;
        v91 = *(v94 + 3);
        LOBYTE(a3) = v172;
        a1 = v173;
      }

      v95 = v11 + 48;
      v96 = &v11[*v161 + 48];
      v97 = v91;
      v98 = &v11[v91];
      if (v96 >= v98)
      {
        goto LABEL_156;
      }

      if (!*v171)
      {
        do
        {
          v96 = (v96 + *(v96 + 2) + 13);
        }

        while (v96 < v98);
LABEL_156:
        if (v96 >= &v11[v92])
        {
          v103 = *__error();
          v104 = _SILogForLogForCategory(7);
          v105 = 2 * (dword_1EBF46AE8 < 4);
          if (os_log_type_enabled(v104, v105))
          {
            v106 = *(v11 + 2);
            *buf = 134218496;
            *v181 = v96;
            *&v181[8] = 2048;
            *&v182 = v11;
            WORD4(v182) = 1024;
            *(&v182 + 10) = v106;
            _os_log_impl(&dword_1C278D000, v104, v105, "db_add_field: ERR: dbf is not valid! (dbf %p dbo %p size 0x%x)\n", buf, 0x1Cu);
          }

          *__error() = v103;
          v17 = 22;
          goto LABEL_184;
        }

        *v161 = v96 - v95;
        *v96 = a7;
        v96[1] = v49;
        if ((a3 & 2) != 0 && (v49 & 0x20) == 0)
        {
          v146 = __si_assert_copy_extra_3233(0, -1);
          v133 = v146;
          v147 = "";
          if (v146)
          {
            v147 = v146;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13963, "dbf->flags & DB_FIELD_ARRAY_VAL", v147);
          goto LABEL_220;
        }

        *(v96 + 1) = v21;
        *(v96 + 2) = v77;
        memcpy(v96 + 13, v31, v77);
        v102 = *(v11 + 3) + v90;
        goto LABEL_182;
      }

LABEL_150:
      v99 = v171 + 1;
      v100 = *v171;
      while (*(v96 + 1) != v100)
      {
        v101 = *v99++;
        v100 = v101;
        if (!v101)
        {
          v96 = (v96 + *(v96 + 2) + 13);
          if (v96 >= v98)
          {
            goto LABEL_156;
          }

          goto LABEL_150;
        }
      }

      *v161 = v96 - v95;
      if ((a3 & 8) != 0 || (a3 & 1) != 0 && ((*(a1 + 804) & 4) != 0 || (v96[1] & 0xA00) != 0x200))
      {
        *v96 = a7;
        v96[1] = v49;
        v109 = *(v96 + 2);
        v110 = v96 + 13;
        if (v77 <= v109)
        {
          memcpy(v96 + 13, v31, v77);
          *(v96 + 2) = v77;
          memmove(&v110[v77], &v110[v109], &v11[*(v11 + 3)] - &v110[v109]);
          v102 = v77 - v109 + *(v11 + 3);
        }

        else
        {
          v111 = &v110[v109];
          v112 = v77 - v109;
          memmove(&v111[v112], v111, v98 - v111);
          memcpy(v96 + 13, v31, v77);
          *(v96 + 2) = v77;
          v102 = *(v11 + 3) + v112;
        }

LABEL_182:
        *(v11 + 3) = v102;
LABEL_183:
        v17 = 0;
        *(v96 + 1) = v21;
        goto LABEL_184;
      }

      if ((a3 & 2) == 0)
      {
        v17 = 17;
LABEL_184:
        v88 = v171;
        LOBYTE(v76) = v170;
LABEL_185:
        if (!v76)
        {
          free(v174);
        }

LABEL_187:
        if (v88 == v179 || v88 == v178)
        {
          goto LABEL_7;
        }

        v89 = v88;
        goto LABEL_190;
      }

      v113 = v96[1];
      v114 = *(v96 + 2);
      v115 = v114 + v77;
      if ((v113 & 0x80) != 0)
      {
        if (v115 <= 0xEA60)
        {
          goto LABEL_193;
        }
      }

      else if (v115 <= 0x4000)
      {
LABEL_193:
        if ((v49 & 0x20) != 0)
        {
          v116 = v96 + 13;
          if (*v96 != a7)
          {
            v127 = *__error();
            v128 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
            {
              v143 = v96[1];
              v144 = *v96;
              *buf = 136316418;
              *v181 = "db2_add_field_with_cache";
              *&v181[8] = 1024;
              LODWORD(v182) = 13916;
              WORD2(v182) = 1024;
              *(&v182 + 6) = v143;
              WORD5(v182) = 1024;
              HIDWORD(v182) = v144;
              LOWORD(v183) = 1024;
              *(&v183 + 2) = v49;
              HIWORD(v183) = 1024;
              LODWORD(v184) = a7;
              _os_log_error_impl(&dword_1C278D000, v128, OS_LOG_TYPE_ERROR, "%s:%d: types don't match dbf_flags:%x dfb_type:%d flags:%x type:%d", buf, 0x2Au);
            }

            *__error() = v127;
            v17 = 22;
            goto LABEL_184;
          }

          v117 = &v116[v114];
          if ((v113 & 0x20) == 0)
          {
            LODWORD(v173) = *__error();
            v118 = _SILogForLogForCategory(7);
            v119 = dword_1EBF46AE8 < 4;
            v172 = v118;
            v169 = 2 * v119;
            if (os_log_type_enabled(v118, (2 * v119)))
            {
              v120 = v96[1];
              v121 = *v96;
              *buf = 67109888;
              *v181 = v120;
              *&v181[4] = 1024;
              *&v181[6] = v121;
              LOWORD(v182) = 1024;
              *(&v182 + 2) = v49;
              WORD3(v182) = 1024;
              DWORD2(v182) = a7;
              _os_log_impl(&dword_1C278D000, v172, v169, "original field not an array, dbf_flags:%x dfb_type:%d flags:%x type:%d", buf, 0x1Au);
            }

            *__error() = v173;
            v97 = *(v11 + 3);
          }

          memmove(&v117[v77], v117, &v11[v97] - v117);
          memcpy(&v116[*(v96 + 2)], v31, v77);
          *(v96 + 2) += v77;
          *(v11 + 3) += v77;
          v96[1] |= v49;
          goto LABEL_183;
        }

        v148 = __si_assert_copy_extra_3233(0, -1);
        v149 = v148;
        if (v148)
        {
          v150 = v148;
        }

        else
        {
          v150 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 13910, v150);
        free(v149);
        goto LABEL_233;
      }

      v17 = 7;
      goto LABEL_184;
    }

    v63 = __s;
    v64 = check_and_decompose_string(v62, v28, &v174, &v176);
    if (v64)
    {
      v17 = v64;
      if (v48 == v179 || v48 == v178)
      {
        goto LABEL_7;
      }

      v89 = v48;
LABEL_190:
      free(v89);
      goto LABEL_7;
    }

    v31 = v174;
    v65 = v170;
    if (v174 != v62)
    {
      v65 = 1;
      v28 = v176;
    }

    if ((v49 & 0x10) == 0)
    {
      LOBYTE(a3) = v172;
LABEL_139:
      v76 = v65 == 0;
      v77 = v28;
      goto LABEL_140;
    }

    if (v28 - 1 != strlen(v174))
    {
      v132 = __si_assert_copy_extra_3233(0, -1);
      v133 = v132;
      v134 = "";
      if (v132)
      {
        v134 = v132;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13722, "size-1 == (db_int32_t)strlen(data)", v134);
LABEL_220:
      free(v133);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v66 = _get_id_for_string(v173, 1, v174, v28 - 1, -2147483647, 0);
    v175 = v66;
    LOBYTE(a3) = v172;
    __s = v63;
    if (v66 != -1 && (v66 != -2 || !*v31))
    {
      v31 = &v175;
      v28 = 4;
      goto LABEL_139;
    }

    LODWORD(v170) = v65;
    if (v171 != v179 && v171 != v178)
    {
      free(v171);
      __s = v63;
      LOBYTE(a3) = v172;
    }

    v20 = v49 & 0xFFFFFFEF;
    v17 = 7;
    v29 = 1;
    a1 = v173;
    if ((v49 & 0x20) != 0)
    {
      goto LABEL_7;
    }
  }

  if (v48 != v178)
  {
    free(v48);
  }

LABEL_162:
  v17 = 28;
LABEL_7:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t _get_id_for_string(uint64_t a1, int a2, unsigned __int8 *a3, int a4, int a5, void *a6)
{
  v6 = a5;
  v85 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = *(a1 + 8 * a2 + 880);
  if (a2 > 4 || (*(a1 + 804) & 0x14) != 0)
  {
    v21 = table_extra_bytes_14628[a2];
    if (!a2 && a5 < 0)
    {
      v59 = __si_assert_copy_extra_3233(0, -1);
      v56 = v59;
      v60 = "";
      if (v59)
      {
        v60 = v59;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11279, "!(flags& 0x80000000)", v60);
      goto LABEL_114;
    }

    v22 = *a3;
    if (a2 <= 1 && !*a3)
    {
      goto LABEL_23;
    }

    if (a2 == 1)
    {
      if (!*a3)
      {
        v30 = a6;
        v28 = 1;
        v27 = 1;
        goto LABEL_44;
      }

      v24 = a3 + 1;
      v25 = -1;
      do
      {
        v26 = *v24++;
        ++v25;
      }

      while (v26);
      v27 = v25 + 2;
    }

    else
    {
      if (a2)
      {
        v27 = a4;
      }

      else
      {
        v27 = a4 + 1;
      }

      if (a2 == 5)
      {
LABEL_35:
        v28 = a2;
        v29 = a3;
        v30 = a6;
        result = data_map_id_get_with_key(*(a1 + 8 * a2 + 880), a3, v27, a6);
        if (result)
        {
          goto LABEL_24;
        }

LABEL_45:
        if (v6)
        {
          v33 = (v27 + v21);
          if (v28)
          {
            if (v33 > 32775)
            {
              goto LABEL_67;
            }
          }

          else if (v33 > 16391)
          {
            goto LABEL_67;
          }

          if ((v6 & 2) != 0)
          {
            result = _dirty_datastore_locked(a1, 0);
          }

          else if (*(a1 + 4))
          {
            result = db2_dirty_datastore(a1);
          }

          if (v28 != 5 && v28)
          {
            result = data_map_id_insert(v9, v29, v27);
          }

          else
          {
            MEMORY[0x1EEE9AC00](result);
            bzero(&v74 - ((v33 + 15) & 0x1FFFFFFF0), (v27 + v21));
            memcpy(&v74 - ((v33 + 15) & 0x1FFFFFFF0), v30, v21);
            memcpy(&v74 + v21 - ((v33 + 15) & 0x1FFFFFFF0), v29, v27);
            result = data_map_id_insert(v9, &v74 - ((v33 + 15) & 0x1FFFFFFF0), v33);
          }

          if (result)
          {
            if (v28 == 4)
            {
              v37 = *(a1 + 968);
              if (v37)
              {
                v38 = result;
                (*(v37 + 16))(v37, result);
                result = v38;
              }
            }

            goto LABEL_24;
          }

LABEL_67:
          result = 0xFFFFFFFFLL;
          goto LABEL_24;
        }

LABEL_23:
        result = 4294967294;
        goto LABEL_24;
      }
    }

    if (!a2)
    {
      goto LABEL_35;
    }

    v30 = a6;
    v28 = a2;
LABEL_44:
    v29 = a3;
    result = data_map_id_get(*(a1 + 8 * a2 + 880), a3, v27);
    if (result)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  v10 = *(v9 + 24);
  v11 = table_extra_bytes_14628[a2];
  if (!a2 && a5 < 0)
  {
    v61 = __si_assert_copy_extra_3233(0, -1);
    v56 = v61;
    v62 = "";
    if (v61)
    {
      v62 = v61;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11352, "!(flags& 0x80000000)", v62);
    goto LABEL_114;
  }

  v12 = *a3;
  if (a2 <= 1 && !*a3)
  {
    goto LABEL_23;
  }

  LODWORD(v13) = a4;
  if (a2 != 1)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    if (v12 == 22)
    {
      v15 = 1;
      v14 = v13;
      goto LABEL_10;
    }

    if (!v12)
    {
      break;
    }

LABEL_10:
    v12 = a3[++v13];
  }

  if (v15)
  {
    a4 = v14;
  }

  else
  {
    a4 = v13;
  }

LABEL_16:
  v77 = a4;
  v78 = a2;
  v16 = *(v9 + 16);
  if (a2 > 1)
  {
    v18 = a6;
    v17 = a3;
    v19 = hash_field_lookup(v16, a3);
    if (!v19)
    {
      goto LABEL_38;
    }

LABEL_18:
    result = *v19;
    goto LABEL_24;
  }

  v17 = a3;
  v18 = a6;
  v19 = hash_lookup_extended(v16, a3, a6, 0);
  if (v19)
  {
    goto LABEL_18;
  }

LABEL_38:
  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v13 >= 0x2000)
  {
    goto LABEL_67;
  }

  os_unfair_lock_lock((v9 + 64));
  v31 = *(v9 + 16);
  if (v78 > 1)
  {
    v32 = hash_field_lookup(v31, v17);
  }

  else
  {
    v32 = hash_lookup_extended(v31, v17, v18, 0);
  }

  v34 = v32;
  if (v32)
  {
    os_unfair_lock_unlock((v9 + 64));
    result = *v34;
    goto LABEL_24;
  }

  v76 = *(v9 + 56);
  v35 = *v9;
  if (*v9 == -1)
  {
    os_unfair_lock_lock((v9 + 68));
    v39 = a1 + 4 * v8 + 48;
    do
    {
      v36 = v10;
      v40 = v39;
      v10 = *(v10 + 24);
      v39 = v36 + 20;
    }

    while (v10);
    v35 = *v40;
    os_unfair_lock_unlock((v9 + 68));
  }

  else
  {
    v36 = *(v9 + 8);
  }

  if ((v6 & 2) != 0)
  {
    _dirty_datastore_locked(a1, 0);
  }

  else if (*(a1 + 4))
  {
    db2_dirty_datastore(a1);
  }

  v41 = *(v36 + 8);
  v42 = v78;
  v43 = 4;
  if (v78 < 2)
  {
    v43 = 5;
  }

  v44 = v43 + v11 + v13;
  v45 = v44 > *(v36 + 4) - v41;
  v46 = v17;
  v75 = v17;
  if (v45)
  {
    if (dword_1EBF46AE8 >= 5)
    {
      v68 = v18;
      v69 = v17;
      v70 = *__error();
      v71 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v80 = v36;
        v81 = 1024;
        v82 = v78;
        _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "Grow string table %p (%d)", buf, 0x12u);
      }

      *__error() = v70;
      v42 = v78;
      v46 = v69;
      v18 = v68;
    }

    if ((v6 & 2) != 0)
    {
      v47 = grow_string_table_locked(a1, v42, v46, v13, v18, v76);
    }

    else
    {
      v47 = grow_string_table(a1, v42, v46, v13, v18, v76);
    }

    v52 = v47;
    goto LABEL_103;
  }

  v48 = *(v9 + 8);
  if (v48 && v48 != v36)
  {
    v66 = __si_assert_copy_extra_3233(0, -1);
    v56 = v66;
    v67 = "";
    if (v66)
    {
      v67 = v66;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11432, "string_table->dirty_page == 0 ||string_table->dirty_page==dnt", v67);
    goto LABEL_114;
  }

  if (*v9 == -1)
  {
    *(v9 + 8) = v36;
    *v9 = v35;
  }

  v49 = v18;
  v50 = (v36 + v41);
  v51 = (v36 + v41 + 4);
  if (v42 > 1)
  {
    memcpy(&v51[v11], v46, v13);
  }

  else
  {
    strlcpy(&v51[v11], v46, v13 + 1);
  }

  memcpy(v51, v49, v11);
  v53 = v76;
  *v50 = v76;
  if (grow_string_table_ptrs(a1, v78))
  {
    os_unfair_lock_unlock((v9 + 64));
    result = -1;
    goto LABEL_24;
  }

  *(v36 + 8) += v44;
  ++*(v9 + 56);
  *(*(v9 + 32) + 8 * (v53 & 0x7FFFFFFF)) = v50;
  os_unfair_lock_assert_owner((v9 + 64));
  if (v78 > 1)
  {
    if (hash_field_insert(*(v9 + 16), v51, v50) != 17)
    {
      goto LABEL_102;
    }

    v72 = __si_assert_copy_extra_3233(0, -1);
    v56 = v72;
    v73 = "";
    if (v72)
    {
      v73 = v72;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11479, "this_ret!=17", v73);
LABEL_114:
    free(v56);
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

  *(*(v9 + 40) + (v53 & 0x7FFFFFFF)) = v77;
  if (v49)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  if (hash_insert_extended(*(v9 + 16), &v51[v11], v54, v50) == 17)
  {
    v55 = __si_assert_copy_extra_3233(0, -1);
    v56 = v55;
    v57 = "";
    if (v55)
    {
      v57 = v55;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11476, "this_ret!=17", v57);
    goto LABEL_114;
  }

LABEL_102:
  v52 = *v50;
LABEL_103:
  os_unfair_lock_unlock((v9 + 64));
  if (v78 == 4)
  {
    v58 = *(a1 + 968);
    if (v58)
    {
      (*(v58 + 16))(v58, v52);
    }
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v64 = *__error();
    v65 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v80 = v75;
      v81 = 1024;
      v82 = v52;
      v83 = 1024;
      v84 = v78;
      _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "Inserted field name %s with id %d for %d", buf, 0x18u);
    }

    *__error() = v64;
  }

  result = v52;
LABEL_24:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_delete_field_weak(_DWORD *a1, uint64_t *a2, char *a3, int a4)
{
  if (*a1 != 1685287992)
  {
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 366, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v5 = *a2;
  v6 = a4 ^ 1;

  return _delete_field(a1, v5, a3, v6);
}

uint64_t data_map32_id_get_with_key(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v110 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1460) == 1)
  {
    v8 = LegacyHash(a2, a3);
  }

  else
  {
    v8 = commonHash(a3, a2);
  }

  v9 = v8;
  if (_data_map32_rdlock(a1))
  {
    v10 = 0;
    goto LABEL_52;
  }

  v68 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v66 = HIDWORD(v12);
  v67 = v12;
  v65 = __PAIR64__(v13, v14);
  v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v64 = v67;
  v63 = v66;
  v62 = v65;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v84) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v84, 2u);
    }

    *(v15 + 312) = v16;
    CIOnThreadCleanUpReset(v62);
    dropThreadId(v64, 1, add_explicit + 1);
    CICleanUpReset(v64, HIDWORD(v62));
    v10 = 0;
    goto LABEL_50;
  }

  __s1 = a2;
  __s2 = a4;
  v59 = add_explicit;
  v18 = *(a1 + 1392);
  v19 = v9 % v18;
  v20 = v9 % v18;
  v56 = *(a1 + 224);
  while (1)
  {
    v21 = v20;
    v22 = *(a1 + 1384);
    v23 = *(v22 + 4 * v20);
    v24 = v23;
    if (!v23)
    {
      break;
    }

    v25 = v21;
    if (*(a1 + 1448))
    {
      os_unfair_lock_lock((a1 + 1444));
      v51 = *(a1 + 1448);
      if (v51)
      {
        bit_vector_set_13535(v51, v24);
      }

      os_unfair_lock_unlock((a1 + 1444));
      v26 = *(v22 + 4 * v25);
    }

    else
    {
      v26 = v23;
    }

    if (*(a1 + 220) <= v26)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      v38 = *__error();
      v39 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_33:
        *__error() = v38;
        goto LABEL_34;
      }

      v47 = *(a1 + 220);
      v48 = fd_name(*(a1 + 1272), &v84, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v26;
      *&__s[24] = 1024;
      *&__s[26] = v47;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v48;
      v44 = v39;
      v45 = "%s:%d: invalid data id %d max %u %p %s";
      v46 = 50;
LABEL_42:
      _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, v45, __s, v46);
      goto LABEL_33;
    }

    v27 = *(a1 + 1352);
    if (v27)
    {
      v28 = *(v27 + 4 * v26);
      v29 = v28;
      if (v28 != 1)
      {
        v60 = 0;
        v61 = 0;
        v69 = 0;
        v30 = *(a1 + 1328);
        if (v30 > v28)
        {
          data_entry_restore_32(*(a1 + 1320), v28, v30, &v60, &v69);
          v31 = v69;
          if (v69 == 1)
          {
            v109 = 0;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v32 = 5;
            v33 = v29;
            memset(__s, 0, sizeof(__s));
            do
            {
              if (v33 >= *(a1 + 1328))
              {
                break;
              }

              v34 = strlen(__s);
              sprintf(&__s[v34], "%d ", *(*(a1 + 1320) + v33++));
              --v32;
            }

            while (v32);
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
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
            v35 = *__error();
            v36 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v49 = fd_name(*(a1 + 1272), &v84, 0x100uLL);
              v50 = *(a1 + 1328);
              *buf = 136316674;
              v71 = "_data_map32_get_data_entry";
              v72 = 1024;
              v73 = 442;
              v74 = 2080;
              v75 = v49;
              v76 = 2048;
              v77 = v29;
              v78 = 2048;
              v79 = v50;
              v80 = 2048;
              v81 = v60;
              v82 = 2080;
              v83 = __s;
              _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
            }

            *__error() = v35;
            v31 = 1;
          }

          if ((v31 & 1) == 0 && v56 + a3 == v60)
          {
            v37 = v61;
            if (!memcmp(__s1, &v61[v56], a3) && !memcmp(v37, __s2, v56))
            {
              v10 = *(v22 + 4 * v25);
              goto LABEL_47;
            }
          }

          goto LABEL_34;
        }

        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
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
        v38 = *__error();
        v41 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        v42 = *(a1 + 1328);
        v43 = fd_name(*(a1 + 1272), &v84, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_data_entry";
        *&__s[12] = 1024;
        *&__s[14] = 446;
        *&__s[18] = 2048;
        *&__s[20] = v29;
        *&__s[28] = 2048;
        *&__s[30] = v42;
        *&__s[38] = 2048;
        *&__s[40] = a1;
        *&__s[48] = 2080;
        *&__s[50] = v43;
        v44 = v41;
        v45 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        v46 = 58;
        goto LABEL_42;
      }
    }

LABEL_34:
    if (v25 + 1 == v18)
    {
      v40 = 0;
    }

    else
    {
      v40 = v25 + 1;
    }

    v20 = v40;
    if (v40 == v19)
    {
      v10 = 0;
      goto LABEL_47;
    }
  }

  v10 = 0;
LABEL_47:
  v68 = 1;
  v52 = threadData[9 * v64 + 1] + 320 * v63;
  *(v52 + 312) = v16;
  v53 = *(v52 + 232);
  if (v53)
  {
    v53(*(v52 + 288));
  }

  dropThreadId(v64, 0, v59 + 1);
LABEL_50:
  if ((v68 & 1) == 0)
  {
    v10 = 0;
    *(a1 + 1464) = 22;
  }

LABEL_52:
  _data_map32_unlock(a1);
  v54 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _delete_field(uint64_t a1, uint64_t a2, char *__s, int a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 804) & 8) != 0)
  {
    result = 13;
    goto LABEL_21;
  }

  v18[0] = 0;
  v18[1] = 0;
  v6 = internal_copy_field_ids(a1, __s, v18, 4uLL, 0);
  if (!v6)
  {
LABEL_15:
    result = 2;
    goto LABEL_21;
  }

  v7 = *(a2 + 12);
  if (v7 < 0x31)
  {
LABEL_13:
    if (v6 != v18)
    {
      free(v6);
    }

    goto LABEL_15;
  }

  v8 = a2 + v7;
  v9 = a2 + 48;
  while (1)
  {
    v11 = *(v9 + 8);
    if (v9 + v11 > v8)
    {
      *(a2 + 12) = v9 - a2;
      goto LABEL_15;
    }

    v12 = *v6;
    if (*v6)
    {
      break;
    }

LABEL_6:
    v9 += v11 + 13;
    if (v9 >= v8)
    {
      goto LABEL_13;
    }
  }

  v13 = 1;
  while (*(v9 + 4) != v12)
  {
    v12 = v6[v13++];
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  if (a4 && (*(v9 + 2) & 0x200) != 0)
  {
    if (v18 != v6)
    {
      free(v6);
    }

    result = 1;
  }

  else
  {
    v14 = v9 + v11;
    v15 = v9 - (v14 + 13);
    v16 = v6;
    memmove(v9, (v14 + 13), v8 - (v14 + 13));
    *(a2 + 12) += v15;
    if (v18 != v16)
    {
      free(v16);
    }

    result = 0;
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void *_decodeSDBField(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3, char **a4, int a5, int a6, int a7, CFAllocatorRef allocator)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_18;
  }

  v8 = *a2;
  if (v8 - 1 > 0xF)
  {
    goto LABEL_18;
  }

  v11 = a3;
  v13 = *(a2 + 2);
  v94 = *(a2 + 2);
  v14 = a2[1];
  if (v8 != 14)
  {
    if (a4 || (v14 & 0x80) == 0)
    {
      if ((v14 & 0x80) != 0)
      {
        keys[0] = a3;
        values = 0;
        if (db_get_localized_string(a1, a2, a4, keys, &values, a7))
        {
          result = CFStringCreateWithCString(allocator, "", 0x8000100u);
        }

        else
        {
          result = CFStringCreateWithBytes(allocator, keys[0], values - keys[0], 0x8000100u, 0);
        }

        if (dword_1EBF46ADC < 5)
        {
          goto LABEL_19;
        }

        v33 = result;
        v34 = *__error();
        v35 = _SILogForLogForCategory(4);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_113;
        }

        LODWORD(keys[0]) = 138412290;
        *(keys + 4) = v33;
        v36 = "DB_FIELD_LOCALIZED_STR: %@. ";
      }

      else if ((v14 & 0x20) != 0)
      {
        if (v8 == 11)
        {
          result = createStringArray(a1, a2[1], a3, v13, a7, allocator);
          if (dword_1EBF46ADC < 5)
          {
            goto LABEL_19;
          }

          v33 = result;
          v34 = *__error();
          v35 = _SILogForLogForCategory(4);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_113;
          }

          LODWORD(keys[0]) = 138412290;
          *(keys + 4) = v33;
          v36 = "db_utf8str: %@. ";
        }

        else
        {
          result = createScalarArray(a1, v8, v14, a3, v13 / SDBTypeSizes[v8], a7, allocator);
          if (dword_1EBF46ADC < 5)
          {
            goto LABEL_19;
          }

          v33 = result;
          v34 = *__error();
          v35 = _SILogForLogForCategory(4);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_113;
          }

          LODWORD(keys[0]) = 138412290;
          *(keys + 4) = v33;
          v36 = "Scalar array: %@. ";
        }
      }

      else
      {
        result = createValue(a1, v8, v14, a3, a7, allocator);
        if (dword_1EBF46ADC < 5)
        {
          goto LABEL_19;
        }

        v33 = result;
        v34 = *__error();
        v35 = _SILogForLogForCategory(4);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_113;
        }

        LODWORD(keys[0]) = 138412290;
        *(keys + 4) = v33;
        v36 = "DB_VAL: %@. ";
      }

      goto LABEL_111;
    }

    v26 = 0x1EBF46000uLL;
    if ((v14 & 0x110) == 0x10 && a5)
    {
      v27 = a2;
      UniquedDBFValue = getUniquedDBFValue(a1, 4, a2, a6);
      keys[0] = UniquedDBFValue;
      if (UniquedDBFValue != -2 && UniquedDBFValue)
      {
        result = CFNumberCreate(allocator, kCFNumberCFIndexType, keys);
        values = result;
        if (result)
        {
          v91 = &stru_1F4284FD0;
          v71 = CFDictionaryCreate(allocator, &v91, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFRelease(values);
          result = v71;
        }
      }

      else
      {
        v29 = *__error();
        v30 = _SILogForLogForCategory(4);
        v31 = dword_1EBF46ADC < 3;
        if (os_log_type_enabled(v30, (dword_1EBF46ADC < 3)))
        {
          v32 = *(v27 + 1);
          LODWORD(values) = 67109120;
          HIDWORD(values) = v32;
          _os_log_impl(&dword_1C278D000, v30, v31, "*warn* could not resolve unique dbf value for field %d", &values, 8u);
        }

        *__error() = v29;
        result = 0;
      }

LABEL_108:
      if (*(v26 + 2780) < 5)
      {
        goto LABEL_19;
      }

      v33 = result;
      v34 = *__error();
      v35 = _SILogForLogForCategory(4);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_113;
      }

      LODWORD(keys[0]) = 138412290;
      *(keys + 4) = v33;
      v36 = "DB_FIELD_LOCALIZED_STR: %@. ";
LABEL_111:
      v38 = v35;
      v39 = 12;
      goto LABEL_112;
    }

    result = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v13)
    {
      goto LABEL_108;
    }

    theArraya = result;
    v46 = &v11[v13];
    while (1)
    {
      if ((v14 & 0x10) != 0)
      {
        v51 = *v11;
        if (a7)
        {
          string_for_id_locked = db_get_string_for_id_locked(a1, v51);
        }

        else
        {
          string_for_id_locked = db_get_string_for_id(a1, v51);
        }

        v50 = string_for_id_locked;
        v49 = (v11 + 4);
        if (!string_for_id_locked)
        {
          v47 = &stru_1F4284FD0;
          goto LABEL_53;
        }

        v48 = strlen(string_for_id_locked);
        if (v48 >= 2)
        {
LABEL_62:
          v53 = 0;
          while (v50[v53] != 22 || v50[v53 + 1] != 2)
          {
            if (v48 - 1 == ++v53)
            {
              goto LABEL_72;
            }
          }

          v54 = CFStringCreateWithBytes(allocator, v50, v53, 0x8000100u, 0);
          v55 = (v53 + 2);
          if (v48 > v55)
          {
            v56 = CFStringCreateWithCString(allocator, &v50[v55], 0x8000100u);
            if (v56)
            {
              v47 = v56;
            }

            else
            {
              v47 = &stru_1F4284FD0;
            }

            if (!v54)
            {
              goto LABEL_53;
            }

LABEL_74:
            CFDictionarySetValue(theArraya, v47, v54);
            CFRelease(v54);
            goto LABEL_53;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v48 = strlen(v11);
        v49 = &v11[v48 + 1];
        v50 = v11;
        if (v48 >= 2)
        {
          goto LABEL_62;
        }
      }

LABEL_72:
      v54 = CFStringCreateWithBytes(allocator, v50, v48, 0x8000100u, 0);
LABEL_73:
      v47 = &stru_1F4284FD0;
      if (v54)
      {
        goto LABEL_74;
      }

LABEL_53:
      CFRelease(v47);
      v11 = v49;
      if (v49 >= v46)
      {
        result = theArraya;
        v26 = 0x1EBF46000;
        goto LABEL_108;
      }
    }
  }

  if ((~v14 & 0x5020) != 0)
  {
    result = CFDataCreate(allocator, a3, v13);
    if (dword_1EBF46ADC < 5)
    {
      goto LABEL_19;
    }

    v33 = result;
    v34 = *__error();
    v37 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(keys[0]) = 0;
      v36 = "DB Raw";
      v38 = v37;
      v39 = 2;
LABEL_112:
      _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, v36, keys, v39);
    }

LABEL_113:
    *__error() = v34;
    result = v33;
    goto LABEL_19;
  }

  if ((v14 & 8) != 0)
  {
    if ((v14 & 0x10) != 0)
    {
      v40 = *(a2 + 13);
      if (v13 >= 8 && v40 && v40 != 4294967294)
      {
        v73 = a2;
        v74 = *(a1 + 920);
        v75 = *(a2 + 13);
        if (a7)
        {
          vector_for_id_locked = db2_get_vector_for_id_locked(v74, v75, &v94, keys);
        }

        else
        {
          vector_for_id_locked = db2_get_vector_for_id(v74, v75, &v94, keys);
        }

        LODWORD(v13) = v94;
        if (vector_for_id_locked)
        {
          v11 = (vector_for_id_locked - 2);
          LODWORD(v13) = v94 + 2;
          v94 += 2;
        }

        else
        {
          v11 = 0;
        }

        a2 = v73;
      }

      else
      {
        v41 = a2;
        si_analytics_log_2752("Malformed sdb entry for vector %llx %u", *(a2 + 13), v13);
        a2 = v41;
        v11 = 0;
      }
    }

    result = 0;
    if (!v11)
    {
      goto LABEL_19;
    }

    if (v13 < 3)
    {
      goto LABEL_19;
    }

    result = 0;
    LOBYTE(valuePtr) = *v11;
    v42 = *(v11 + 1);
    HIBYTE(v93) = v11[1];
    if (valuePtr > 2uLL || v42 > 2)
    {
      goto LABEL_19;
    }

    v43 = a2;
    v18 = (vector_dimension_vec_sizes_15424[v42] * vector_size_elem_sizes_15423[valuePtr]);
    v44 = (v11 + 2);
    v91 = (v11 + 2);
    cf = CFNumberCreate(allocator, kCFNumberCharType, &valuePtr);
    v20 = CFNumberCreate(allocator, kCFNumberCharType, &v93 + 1);
    v21 = &v11[v13];
    if (&v44[v18] <= v21)
    {
      if ((v43[1] & 0x20) != 0)
      {
        theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        do
        {
          v77 = CFDataCreate(allocator, v44, v18);
          *keys = xmmword_1E8198998;
          v101 = *off_1E81989A8;
          v102 = @"vec_version";
          values = cf;
          v96 = v20;
          v97 = v77;
          v98 = 0;
          v99 = 0;
          v78 = CFDictionaryCreate(allocator, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFRelease(v77);
          if (v78)
          {
            CFArrayAppendValue(theArray, v78);
            CFRelease(v78);
          }

          if (&v44[v18] >= v21)
          {
            break;
          }

          v79 = &v44[2 * v18];
          v44 += v18;
        }

        while (v79 <= v21);
        goto LABEL_132;
      }

LABEL_124:
      v45 = decodeVector(allocator, v18, &v91, v21, cf, v20);
      goto LABEL_133;
    }

LABEL_49:
    v45 = 0;
    goto LABEL_133;
  }

  if ((v14 & 0x10) == 0)
  {
    if (v13 >= 3)
    {
      result = 0;
      LOBYTE(valuePtr) = *a3;
      v16 = a3[1];
      HIBYTE(v93) = a3[1];
      if (valuePtr > 2uLL || v16 > 2)
      {
        goto LABEL_19;
      }

      v17 = a2;
      v18 = (vector_dimension_vec_sizes_15424[v16] * vector_size_elem_sizes_15423[valuePtr]);
      v19 = a3 + 2;
      v91 = a3 + 2;
      cf = CFNumberCreate(allocator, kCFNumberCharType, &valuePtr);
      v20 = CFNumberCreate(allocator, kCFNumberCharType, &v93 + 1);
      v21 = &v11[v13];
      if (&v19[v18] <= v21)
      {
        if ((v17[1] & 0x20) != 0)
        {
          theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          do
          {
            v22 = CFDataCreate(allocator, v19, v18);
            *keys = xmmword_1E8198998;
            v101 = *off_1E81989A8;
            v102 = @"vec_version";
            values = cf;
            v96 = v20;
            v97 = v22;
            v98 = 0;
            v99 = 0;
            v23 = CFDictionaryCreate(allocator, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFRelease(v22);
            if (v23)
            {
              CFArrayAppendValue(theArray, v23);
              CFRelease(v23);
            }

            if (&v19[v18] >= v21)
            {
              break;
            }

            v24 = &v19[2 * v18];
            v19 += v18;
          }

          while (v24 <= v21);
LABEL_132:
          v45 = theArray;
LABEL_133:
          CFRelease(cf);
          v72 = v20;
LABEL_134:
          CFRelease(v72);
          result = v45;
          goto LABEL_19;
        }

        goto LABEL_124;
      }

      goto LABEL_49;
    }

LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v57 = a2;
  v93 = 0;
  valuePtr = 0;
  allocatora = *MEMORY[0x1E695E480];
  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v13 < 8)
  {
    goto LABEL_19;
  }

  cfa = 0;
  theArrayb = result;
  v58 = 0;
  v85 = 0;
  v59 = (v57 + 13);
  v60 = v13 >> 3;
  do
  {
    v62 = *v59++;
    v61 = v62;
    v91 = v62;
    if (v62 == 4294967294)
    {
      v80 = __si_assert_copy_extra_2708(0);
      v81 = v80;
      v82 = "";
      if (v80)
      {
        v82 = v80;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.c", 2613, "((db_uint32_t)-2) != chunk", v82);
      free(v81);
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

    LOBYTE(values) = 0;
    keys[0] = 0;
    keys[1] = 0;
    *&v101 = 0;
    data_map_get_data_entry(keys, *(a1 + 920), v61, &values, a7 != 0);
    if (values == 1)
    {
      v63 = LODWORD(keys[1]);
      v64 = keys[0];
      if (keys[0])
      {
        v65 = BYTE2(v101) | (BYTE3(v101) << 8);
        if (v58)
        {
          if (v101 != HIBYTE(v93) || BYTE1(v101) != v93 || v65 != valuePtr)
          {
            goto LABEL_82;
          }
        }

        else
        {
          LOBYTE(v93) = BYTE1(v101);
          HIBYTE(v93) = v101;
          valuePtr = BYTE2(v101) | (BYTE3(v101) << 8);
          v58 = CFNumberCreate(allocator, kCFNumberCharType, &v93 + 1);
          cfa = CFNumberCreate(allocator, kCFNumberCharType, &v93);
          if (v65)
          {
            v85 = CFNumberCreate(allocator, kCFNumberSInt16Type, &valuePtr);
          }
        }

        v66 = CFNumberCreate(allocatora, kCFNumberSInt64Type, &v91);
        v67 = CFDataCreate(allocator, v64, v63);
        *keys = xmmword_1E8198998;
        v101 = *off_1E81989A8;
        v102 = @"vec_version";
        values = v58;
        v96 = cfa;
        v97 = v67;
        v98 = v66;
        v68 = 4;
        if (v85)
        {
          v68 = 5;
        }

        if (v66)
        {
          v69 = v68;
        }

        else
        {
          v69 = 3;
        }

        v99 = v85;
        v70 = CFDictionaryCreate(allocator, keys, &values, v69, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(v67);
        CFRelease(v66);
        if (v70)
        {
          CFArrayAppendValue(theArrayb, v70);
          CFRelease(v70);
        }
      }
    }

LABEL_82:
    --v60;
  }

  while (v60);
  if (v58)
  {
    CFRelease(v58);
  }

  result = theArrayb;
  if (cfa)
  {
    CFRelease(cfa);
    result = theArrayb;
  }

  if (v85)
  {
    v45 = result;
    v72 = v85;
    goto LABEL_134;
  }

LABEL_19:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

int *_checkIndexSetValidity(int *result)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if (v1 != -1)
  {
    v2 = result;
    v3 = result[2];
    if (v1 >= v3)
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v16 = v2[2];
        v17 = v2[4];
        *buf = 136316162;
        v28 = "_checkIndexSetValidity";
        v29 = 1024;
        v30 = 136;
        v31 = 2048;
        *v32 = v2;
        *&v32[8] = 1024;
        *v33 = v16;
        *&v33[4] = 1024;
        v34[0] = v17;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: indexSet:%p count:%d current:%d", buf, 0x28u);
      }

      result = __error();
      *result = v4;
      v1 = v2[4];
      v3 = v2[2];
    }

    if (v1 >= v3)
    {
      v18 = __si_assert_copy_extra_661(-1);
      v19 = v18;
      v20 = "";
      if (v18)
      {
        v20 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Expected current index (%d) less than count (%d)", "SIStoring.c", 142, "(uint32_t)indexSet->currentIndex<(uint32_t)indexSet->indexCount", v20, v2[4], v2[2]);
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

    v6 = *(*v2 + 8 * v1);
    v7 = atomic_load((v6 + 36));
    if ((v7 & 3) != 0 || *(v6 + 15203) == 1)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = atomic_load((v6 + 36));
        v13 = *(v6 + 15203);
        v14 = v2[2];
        v15 = v2[4];
        *buf = 136316418;
        v28 = "_checkIndexSetValidity";
        v29 = 1024;
        v30 = 147;
        v31 = 1024;
        *v32 = v12;
        *&v32[4] = 1024;
        *&v32[6] = v13;
        *v33 = 1024;
        *&v33[2] = v14;
        LOWORD(v34[0]) = 1024;
        *(v34 + 2) = v15;
        _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: Expected current index is writable. flags: %08x, readOnly:%d, count:%d, current:%d", buf, 0x2Au);
      }

      result = __error();
      *result = v8;
    }

    v10 = atomic_load((v6 + 36));
    if ((v10 & 3) != 0 || *(v6 + 15203) == 1)
    {
      v22 = __si_assert_copy_extra_661(-1);
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      v25 = atomic_load((v6 + 36));
      __message_assert("%s:%u: failed assertion '%s' %s Expected current index is writable. flags: %08x, readOnly:%d, count:%d, current:%d", "SIStoring.c", 154, "ContentIndexWritable(ref)", v24, v25, *(v6 + 15203), v2[2], v2[4]);
      free(v23);
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
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *createScalarArray(int *a1, unsigned int a2, __int16 a3, const char *a4, int a5, int a6, CFAllocatorRef allocator)
{
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (a5)
  {
    v15 = SDBTypeSizes[a2];
    do
    {
      Value = createValue(a1, a2, a3, a4, a6, allocator);
      CFArrayAppendValue(Mutable, Value);
      if (Value)
      {
        CFRelease(Value);
      }

      a4 += v15;
      --a5;
    }

    while (a5);
  }

  return Mutable;
}

CFDateRef createValue(int *a1, int a2, __int16 a3, const char *a4, int a5, CFAllocatorRef alloc)
{
  v25 = a4;
  if (dword_1EBF46ADC >= 5)
  {
    v10 = a1;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = alloc;
    v15 = *__error();
    v16 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, &unk_1C2C3BEBB, buf, 2u);
    }

    *__error() = v15;
    alloc = v14;
    a3 = v13;
    a4 = v12;
    a5 = v11;
    a1 = v10;
    if (a2 <= 6)
    {
      goto LABEL_3;
    }
  }

  else if (a2 <= 6)
  {
LABEL_3:
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        *&v7 = *a4;
        *buf = v7;
        if ((a3 & 0x400) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      if (a2 != 2)
      {
        if (a2 == 3)
        {
          *&v7 = *a4;
          *buf = v7;
          if ((a3 & 0x400) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

LABEL_44:
        v21 = __si_assert_copy_extra_2708(0);
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Unexpected type %d", "ldb.c", 2427, "0", v23, a2);
        free(v22);
        if (__valid_fsp(0))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      *&v7 = *a4;
      *buf = v7;
      if ((a3 & 0x400) != 0)
      {
LABEL_19:
        if (v7 == 0.0)
        {
          v8 = MEMORY[0x1E695E4C0];
        }

        else
        {
          v8 = MEMORY[0x1E695E4D0];
        }

        return *v8;
      }

LABEL_29:
      v17 = alloc;
      v18 = kCFNumberSInt64Type;
      return CFNumberCreate(v17, v18, buf);
    }

    if (a2 == 4)
    {
      *&v7 = *a4;
      *buf = v7;
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    if (a2 != 5)
    {
      if (a2 != 6)
      {
        goto LABEL_44;
      }

      *&v7 = *a4;
      *buf = v7;
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

LABEL_28:
    v7 = *a4;
    *buf = *a4;
    if ((a3 & 0x400) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  if (a2 > 9)
  {
    if (a2 != 10)
    {
      if (a2 == 11)
      {
        return createString(a1, a3, &v25, a5, alloc);
      }

      if (a2 == 12)
      {
        return CFDateCreate(alloc, *a4);
      }

      goto LABEL_44;
    }

    v19 = *a4;
    *buf = *a4;
    if ((a3 & 0x400) != 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    v17 = alloc;
    v18 = kCFNumberFloat64Type;
    return CFNumberCreate(v17, v18, buf);
  }

  if ((a2 - 7) < 2)
  {
    goto LABEL_28;
  }

  if (a2 != 9)
  {
    goto LABEL_44;
  }

  v19 = *a4;
  *buf = v19;
  if ((a3 & 0x400) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v20 = MEMORY[0x1E695E4C0];
  if (v19 != 0.0)
  {
    v20 = MEMORY[0x1E695E4D0];
  }

  return *v20;
}

int *updateItemRecentOutOfSpotlightEngagementData(int *a1, char **a2, double a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v31 = a3;
  db_validate_obj(a1);
  v6 = *a2;
  if (!**a2)
  {
    goto LABEL_18;
  }

  if (a3 != 0.0)
  {
    v29 = 0;
    __src = 0;
    memset(__dst, 0, sizeof(__dst));
    if (!db_get_field(a1, v6, "_kMDItemRecentOutOfSpotlightEngagementDates", &v29, &__src))
    {
      if (*v29 == 12 && (*(v29 + 2) & 0x20) != 0)
      {
        v20 = *(v29 + 8);
        memcpy(__dst, __src, v20);
        if (v20)
        {
          v21 = v20 - 1;
          if (v20 - 1 >= 0x98)
          {
            v22 = 0;
            v23 = v21 >> 3;
            v24 = 1;
            do
            {
              v7.n128_u64[0] = *(__dst + v24);
              if (v7.n128_f64[0] < *(__dst + v22))
              {
                v22 = v24;
              }

              ++v24;
              --v23;
            }

            while (v23);
            if (v22 != -1)
            {
              *(__dst + v22) = a3;
              v25 = db_add_field(a1, a2, 5u, "_kMDItemRecentOutOfSpotlightEngagementDates", 0, 0x20u, 12, __dst, v7, (v21 & 0xFFFFFFF8) + 8);
              v10 = *__error();
              v26 = _SILogForLogForCategory(7);
              v27 = v26;
              if (v25)
              {
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v33 = COERCE_DOUBLE("updateRecentEngagementDates");
                  v34 = 1024;
                  *v35 = 315;
                  *&v35[4] = 2080;
                  *&v35[6] = "_kMDItemRecentOutOfSpotlightEngagementDates";
                  _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Failed to replace Out-of-Spotlight engagement date to %s", buf, 0x1Cu);
                }

                *__error() = v10;
                db_delete_field(a1, a2, "_kMDItemRecentOutOfSpotlightEngagementDates");
                goto LABEL_18;
              }

              if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_17;
              }

              v28 = **a2;
              *buf = 134218754;
              v33 = a3;
              v34 = 2048;
              *v35 = v22;
              *&v35[8] = 2080;
              *&v35[10] = "_kMDItemRecentOutOfSpotlightEngagementDates";
              v36 = 2048;
              v37 = v28;
              v16 = "[Engagement Data] Inserted Out-of-Spotlight engagement date: %f into position %ld of %s for oid: %lld";
              v17 = v27;
              v18 = 42;
              goto LABEL_16;
            }
          }

          v8 = 2;
LABEL_8:
          v9 = db_add_field(a1, a2, v8, "_kMDItemRecentOutOfSpotlightEngagementDates", 0, 0x20u, 12, &v31, v7, 8);
          v10 = *__error();
          v11 = _SILogForLogForCategory(7);
          v12 = v11;
          if (v9)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v33 = COERCE_DOUBLE("updateRecentEngagementDates");
              v34 = 1024;
              *v35 = 300;
              *&v35[4] = 2080;
              *&v35[6] = "_kMDItemRecentOutOfSpotlightEngagementDates";
              _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding Out-of-Spotlight engagement date to %s", buf, 0x1Cu);
            }

            goto LABEL_17;
          }

          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
LABEL_17:
            *__error() = v10;
LABEL_18:
            result = db_validate_obj(a1);
            v19 = *MEMORY[0x1E69E9840];
            return result;
          }

          v15 = **a2;
          *buf = 134218498;
          v33 = v31;
          v34 = 2080;
          *v35 = "_kMDItemRecentOutOfSpotlightEngagementDates";
          *&v35[8] = 2048;
          *&v35[10] = v15;
          v16 = "[Engagement Data] Adding Out-of-Spotlight engagement date: %f to %s for oid: %lld";
          v17 = v12;
          v18 = 32;
LABEL_16:
          _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
          goto LABEL_17;
        }
      }

      else
      {
        db_delete_field(a1, a2, "_kMDItemRecentOutOfSpotlightEngagementDates");
        v29 = 0;
        __src = 0;
      }
    }

    v8 = 1;
    goto LABEL_8;
  }

  db_delete_field(a1, a2, "_kMDItemRecentOutOfSpotlightEngagementDates");
  v13 = *MEMORY[0x1E69E9840];

  return db_validate_obj(a1);
}

CFDateRef SICopyRoundedDate()
{
  v0 = MEMORY[0x1C691E960]();
  v1 = *MEMORY[0x1E695E480];
  v2 = (86400 * (v0 / 0x15180));

  return CFDateCreate(v1, v2);
}

uint64_t si_writeBackAndIndexWithLiveQueryToggle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, unsigned __int8 a12, int a13, int a14, NSObject *a15)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  v259 = v23;
  v24 = v15;
  v293 = *MEMORY[0x1E69E9840];
  v25 = *(v15 + 1192);
  v26 = **v19;
  v284 = 0;
  v263 = v25;
  if ((*(v25 + 4) & 0x40) != 0)
  {
    v40 = 89;
    si_makeUnavailable(v15, 89, 2, 18, "si_writeBackAndIndex detected corrupted sdb on entry");
    goto LABEL_340;
  }

  v27 = v21;
  TypeID = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  v32 = v22.n128_f32[0];
  v33 = v16;
  v257 = v26;
  v34 = *(v17 + 8);
  v35 = v34 != 0;
  if (v34)
  {
    LODWORD(v290) = 1;
    db_add_field(v25, v19, 0, "_kMDItemContentIndexVersion", 0, 0x108u, 6, &v290, v22, 4);
  }

  v36 = atomic_load((v33 + 36));
  if ((v36 & 3) != 0 || *(v33 + 15203) == 1)
  {
    v208 = __si_assert_copy_extra_661(-1);
    v209 = v208;
    v210 = "";
    if (v208)
    {
      v210 = v208;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 1868, "ContentIndexWritable(content_index)", v210);
    goto LABEL_355;
  }

  v253 = v30;
  _checkIndexSetValidity(*(v24 + 1384));
  _checkIndexSetValidity(*(v24 + 1392));
  v37 = *(v24 + 1384);
  v290 = v24;
  __checkIndexSetDocIdOrder(v24, v37);
  v38 = *(v24 + 1392);
  v290 = v24;
  __checkIndexSetDocIdOrder(v24, v38);
  v262 = v31;
  theDict = *v31;
  if (*(v24 + 2072) == 1)
  {
    Value = CFDictionaryGetValue(*v31, @"_kMDItemBundleID");
  }

  else
  {
    Value = 0;
  }

  v283 = 0;
  v250 = Value;
  si_populategroup(v24, v29, Value, (v27 >> 2) & 1, (v27 >> 6) & 1, &v284 + 1, &v284, &v283);
  v261 = v29;
  v41 = *v29;
  v285 = *v29;
  v279 = 0;
  v280 = &v279;
  v281 = 0x2000000000;
  v282 = 0;
  bzero(&v290, 0x1000uLL);
  v278 = 0;
  bzero(v289, 0x1000uLL);
  v260 = TypeID;
  if (*(v24 + 6624))
  {
    if (*(v24 + 1416))
    {
      if (TypeID != 5 || (v27 & 0x20) != 0 || v34 || !*(v41 + 3) || (v42 = *(v41 + 4), v42 == -1) || !v259 || !v42)
      {
        if ((*(v24 + 2072) & 1) == 0)
        {
          v40 = computePath(v24);
          goto LABEL_31;
        }

        if (v253 != -1 && !*(v41 + 3))
        {
          goto LABEL_38;
        }

        v43 = CFDictionaryGetValue(theDict, @"kMDItemFileProviderID");
        if (!v43 || (v44 = v43, TypeID = CFStringGetTypeID(), v69 = TypeID == CFGetTypeID(v44), LODWORD(TypeID) = v260, !v69))
        {
          if ((v27 & 8) != 0)
          {
            Path = directoryStoreWriterGetPath(*(v24 + 6624), *(v41 + 3), &v291);
            v278 = Path;
            if (Path || *(v41 + 3) == 2)
            {
              v290 = *(v41 + 3);
              v278 = Path + 1;
            }
          }

          goto LABEL_38;
        }

        v45 = CFDictionaryGetValue(theDict, @"_kMDItemExternalID");
        if (v45)
        {
          v46 = v45;
          TypeID = CFStringGetTypeID();
          v69 = TypeID == CFGetTypeID(v46);
          LODWORD(TypeID) = v260;
          if (v69)
          {
            v47 = CFDictionaryGetValue(theDict, @"FPDomainIdentifier");
            if (v47)
            {
              v48 = v47;
              CFStringGetTypeID();
              CFGetTypeID(v48);
            }

            v196 = CFDictionaryGetValue(theDict, @"FPParentFileItemID");
            if (v196)
            {
              v197 = v196;
              CFStringGetTypeID();
              CFGetTypeID(v197);
            }

            LODWORD(TypeID) = v260;
            v198 = computePath(v24);
            if (v198)
            {
              v40 = v198;
              v199 = *__error();
              v200 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
              {
                v211 = *v41;
                v212 = *(v41 + 3);
                LODWORD(valuePtr[0].tv_sec) = 136316162;
                *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
                *(&valuePtr[0].tv_usec + 2) = 1024;
                *(&valuePtr[0].tv_usec + 6) = 1928;
                WORD1(valuePtr[1].tv_sec) = 1024;
                HIDWORD(valuePtr[1].tv_sec) = v40;
                LOWORD(valuePtr[1].tv_usec) = 2048;
                *(&valuePtr[1].tv_usec + 2) = v211;
                WORD1(valuePtr[2].tv_sec) = 2048;
                *(&valuePtr[2].tv_sec + 4) = v212;
                _os_log_error_impl(&dword_1C278D000, v200, OS_LOG_TYPE_ERROR, "%s:%d: computePath error: %d oid: %lld parent: %lld", valuePtr, 0x2Cu);
              }

              *__error() = v199;
              LODWORD(TypeID) = v260;
LABEL_31:
              v49 = 0;
              cf = 0;
              if (v40 > 0x3C || ((1 << v40) & 0x1000000000000005) == 0)
              {
                v254 = v33;
LABEL_313:
                si_remove_text_content_cache_for_oid(v24, v257);
                v184 = *__error();
                v185 = _SILogForLogForCategory(8);
                v186 = 2 * (dword_1EBF46AEC < 4);
                if (os_log_type_enabled(v185, v186))
                {
                  LODWORD(valuePtr[0].tv_sec) = 134217984;
                  *(&valuePtr[0].tv_sec + 4) = v257;
                  _os_log_impl(&dword_1C278D000, v185, v186, "Deleted document %lld", valuePtr, 0xCu);
                }

                *__error() = v184;
                v187 = *(v24 + 1296);
                memset(valuePtr, 0, 512);
                snprintf(valuePtr, 0x200uLL, "doc_store_delete_document(%p, %lld)", v187, v257);
                v286[0] = 0;
                v286[1] = 0;
                ScopeLogger::ScopeLogger(v286, valuePtr);
                if (v187)
                {
                  *buf = v257;
                  DocStore::DeleteDocumentsBulk(v187, 1, buf);
                }

                ScopeLogger::~ScopeLogger(v286);
                v188 = *__error();
                v189 = _SILogForLogForCategory(8);
                if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(valuePtr[0].tv_sec) = 136315906;
                  *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
                  *(&valuePtr[0].tv_usec + 2) = 1024;
                  *(&valuePtr[0].tv_usec + 6) = 2514;
                  WORD1(valuePtr[1].tv_sec) = 1024;
                  HIDWORD(valuePtr[1].tv_sec) = -14;
                  LOWORD(valuePtr[1].tv_usec) = 2048;
                  *(&valuePtr[1].tv_usec + 2) = v257;
                  _os_log_error_impl(&dword_1C278D000, v189, OS_LOG_TYPE_ERROR, "%s:%d: Doc store delete operation failed. Error code: %d, oid: %lld", valuePtr, 0x22u);
                }

                *__error() = v188;
                goto LABEL_320;
              }
            }
          }
        }
      }
    }
  }

LABEL_38:
  v51 = *v261;
  v285 = *v261;
  valuePtr[0].tv_sec = 0;
  *&valuePtr[0].tv_usec = 0;
  if (gettimeofday(valuePtr, 0))
  {
    tv_sec = time(0);
    tv_usec = 0;
  }

  else
  {
    tv_sec = valuePtr[0].tv_sec;
    tv_usec = valuePtr[0].tv_usec;
  }

  *(v51 + 2) = tv_usec + 1000000 * tv_sec;
  bzero(v288, 0x8001uLL);
  allocator = _SIStackAllocatorCreate(v288, 0x8000, indexingZone);
  v55 = decodeDBOToDictionary(v263, v51, 0, 0x2000, 2, *(v24 + 2028), *(v24 + 2060), (v27 >> 10) & 1, 1, allocator);
  v56 = v55;
  v277 = 0;
  cf = v55;
  if (v34 == *MEMORY[0x1E695E738])
  {
    CFDictionarySetValue(v55, 0, v34);
    v35 = 0;
  }

  else
  {
    if (v34)
    {
      CFDictionarySetValue(v55, 0, v34);
    }

    v57 = v262[5];
    if (v57)
    {
      CFDictionarySetValue(v56, 2, v57);
      v35 = 1;
    }

    v58 = v262[6];
    if (v58)
    {
      CFDictionarySetValue(v56, 3, v58);
      v35 = 1;
    }

    v59 = v262[7];
    if (v59)
    {
      CFDictionarySetValue(v56, 4, v59);
      v35 = 1;
    }

    v60 = v262[8];
    if (v60)
    {
      CFDictionarySetValue(v56, 5, v60);
      v61 = 0;
      v35 = 1;
      goto LABEL_72;
    }
  }

  v61 = 0;
  if (!v35 && !v34 && (*(v24 + 2072) & 1) == 0)
  {
    if ((v27 & 0x100) == 0 || !objectHasContent(*(v24 + 1192), v51))
    {
      v35 = 0;
      v61 = 0;
      v34 = 0;
      goto LABEL_72;
    }

    bzero(valuePtr, 0x400uLL);
    v62 = si_cache_relative_path_for_oid(*v51, "txt", valuePtr, *(v24 + 2072));
    if (!v62 || (v63 = openat(*(v24 + 32), v62, 0), v63 == -1))
    {
      LOBYTE(v67) = 0;
      v34 = 0;
LABEL_71:
      v35 = v67;
      v61 = v67;
      goto LABEL_72;
    }

    v64 = v63;
    fcntl(v63, 48, 1);
    fcntl(v64, 76, 1);
    v65 = lseek(v64, 0, 2);
    if (v65 >= 1)
    {
      v66 = v65;
      v67 = malloc_type_zone_malloc(indexingZone, v65, 0x20679B3EuLL);
      if (!v67)
      {
LABEL_69:
        v34 = 0;
LABEL_70:
        LODWORD(TypeID) = v260;
        close(v64);
        goto LABEL_71;
      }

      if (v66 == pread(v64, v67, v66, 0))
      {
        v34 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v67, v66, 0x8000100u, 1u, *MEMORY[0x1E695E488]);
        if (v34)
        {
          CFDictionarySetValue(cf, 0, v34);
          CFRelease(v34);
          LOBYTE(v67) = 1;
        }

        else
        {
          LOBYTE(v67) = 0;
        }

        goto LABEL_70;
      }

      free(v67);
    }

    LOBYTE(v67) = 0;
    goto LABEL_69;
  }

LABEL_72:
  v68 = *(v51 + 10);
  if (*(v24 + 2072))
  {
    v69 = (v27 & 0x200) != 0 && (v68 & 0x20 | v27 & 0x80) == 0;
    if (!v69)
    {
      v61 = 1;
    }

    if ((v61 & 1) == 0)
    {
      si_update_text_content_cache_for_oid(v24, *v51, v34, a15);
      v51 = v285;
      v68 = *(v285 + 10);
    }

    v70 = v35;
    if ((v68 & 0x20) == 0)
    {
      v71 = v262[2];
      if (v71)
      {
        v72 = *v51;
LABEL_90:
        si_update_icon_cache_for_oid(v24, v72, v71);
      }
    }
  }

  else
  {
    v70 = v35;
    if ((v27 & 0x200) != 0 && (v68 & 0x20) == 0)
    {
      if (HIBYTE(v284) == 1)
      {
        v61 = 1;
      }

      if ((v61 & 1) == 0)
      {
        si_update_text_content_cache_for_oid(v24, *v51, v34, a15);
        v51 = v285;
      }

      v72 = *v51;
      v71 = v262[2];
      goto LABEL_90;
    }
  }

  if ((*&v70 & (v34 != 0) & (v27 >> 15)) != 1)
  {
    goto LABEL_103;
  }

  v73 = SICreateStringByRemovingWhitespaceFromTextContent(*MEMORY[0x1E695E480], v34, 1000);
  if (v73)
  {
    v74 = v73;
    *buf = 0;
    v286[0] = 0;
    v75 = db_copy_field_ids_with_buffer(v263, "com_apple_mail_dateReceived", 0, 0);
    v51 = v285;
    if (!db_get_field_by_id(v263, v285, v75, v286, buf) && v286[0] && *v286[0] == 12)
    {
      if (CFAbsoluteTimeGetCurrent() - **buf <= 31536000.0)
      {
        v133 = si_text_store_put(v24);
        if (v133)
        {
          v134 = v133;
          v255 = *__error();
          v135 = _SILogForLogForCategory(8);
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            LODWORD(valuePtr[0].tv_sec) = 136315906;
            *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
            *(&valuePtr[0].tv_usec + 2) = 1024;
            *(&valuePtr[0].tv_usec + 6) = 2074;
            WORD1(valuePtr[1].tv_sec) = 1024;
            HIDWORD(valuePtr[1].tv_sec) = v134;
            LOWORD(valuePtr[1].tv_usec) = 2048;
            *(&valuePtr[1].tv_usec + 2) = v257;
            _os_log_error_impl(&dword_1C278D000, v135, OS_LOG_TYPE_ERROR, "%s:%d: Doc store put operation failed. Error code: %d, oid: %lld", valuePtr, 0x22u);
          }

          goto LABEL_183;
        }
      }

      else if (dword_1EBF46AEC >= 5)
      {
        v255 = *__error();
        v76 = _SILogForLogForCategory(8);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = **buf;
          LODWORD(valuePtr[0].tv_sec) = 134218240;
          *(&valuePtr[0].tv_sec + 4) = v77;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v257;
          v78 = "Did not put into doc store because timestamp is too old, timestamp is %f, doc id %lld";
          v79 = v76;
          v80 = 22;
LABEL_368:
          _os_log_impl(&dword_1C278D000, v79, OS_LOG_TYPE_DEFAULT, v78, valuePtr, v80);
          goto LABEL_183;
        }

        goto LABEL_183;
      }
    }

    else if (dword_1EBF46AEC >= 5)
    {
      v255 = *__error();
      v228 = _SILogForLogForCategory(8);
      if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(valuePtr[0].tv_sec) = 134217984;
        *(&valuePtr[0].tv_sec + 4) = v257;
        v78 = "Get timestamp failed for id : %lld, won't be put in doc store";
        v79 = v228;
        v80 = 12;
        goto LABEL_368;
      }

LABEL_183:
      *__error() = v255;
    }

    free(v75);
    CFRelease(v74);
    LODWORD(TypeID) = v260;
    v70 = v35;
    goto LABEL_103;
  }

  v51 = v285;
LABEL_103:
  v249 = *(v51 + 4);
  v264[0] = MEMORY[0x1E69E9820];
  v264[1] = 0x40000000;
  v265 = __si_writeBackAndIndexWithLiveQueryToggle_block_invoke;
  v266 = &unk_1E8195EC8;
  v274 = v283;
  v275 = (v27 & 0x20) >> 5;
  v81 = v278;
  v269 = v278;
  v270 = &v290;
  v276 = v70;
  v271 = v24;
  v267 = &v279;
  v268 = v261;
  v272 = v27;
  v273 = a13;
  v82 = v284;
  v83 = v27 | 2;
  if (*(v24 + 2072) & 1 | (v284 != 8))
  {
    v27 = v27;
  }

  else
  {
    v27 = v83;
  }

  if (TypeID != 6 && TypeID)
  {
    if (TypeID == 4)
    {
      v27 = v83;
    }

    else
    {
      v27 = v27;
    }
  }

  else
  {
    if (si_getLiveIndex(*(v24 + 1384)) == v33)
    {
      goto LABEL_134;
    }

    v84 = *(v24 + 1384);
    v85 = *(v84 + 2);
    if (v85)
    {
      v86 = *v84;
      v87 = *(v86 + 8 * v85 - 8);
      if (v87 == v33)
      {
        goto LABEL_134;
      }

      v88 = v86 - 16;
      while (1)
      {
        v89 = v87;
        if (v85 < 2)
        {
          break;
        }

        v87 = *(v88 + 8 * v85--);
        if (v87 == v33)
        {
          goto LABEL_125;
        }
      }
    }

    else
    {
      v89 = 0;
    }

    if (v89 == v33)
    {
      goto LABEL_125;
    }

    v90 = *(v24 + 1392);
    v91 = *(v90 + 2);
    if (!v91)
    {
      goto LABEL_134;
    }

    v92 = *v90;
    v93 = *(*v90 + 8 * v91 - 8);
    if (v93 == v33)
    {
LABEL_125:
      if (v89)
      {
        v95 = *(v89 + 80);
        if (v95)
        {
          LODWORD(v96) = *(v33 + 68);
          v97 = *(v33 + 80);
          v96 = v96 >= 2 ? v96 : 0;
          v98 = v97 + v96;
          if (v97 + v96 + 1 >= v95)
          {
            v256 = *__error();
            v99 = _SILogForLogForCategory(0);
            v100 = 2 * (gSILogLevels[0] < 4);
            if (os_log_type_enabled(v99, v100))
            {
              LODWORD(valuePtr[0].tv_sec) = 134218240;
              *(&valuePtr[0].tv_sec + 4) = v95;
              *(&valuePtr[0].tv_usec + 2) = 2048;
              *(&valuePtr[0].tv_usec + 6) = v98;
              _os_log_impl(&dword_1C278D000, v99, v100, "limit:%llu, used:%lld - using live index", valuePtr, 0x16u);
            }

            *__error() = v256;
            v27 = v83;
            v70 = v35;
          }
        }
      }
    }

    else
    {
      v94 = v92 - 16;
      while (v91 >= 2)
      {
        v89 = v93;
        v93 = *(v94 + 8 * v91--);
        if (v93 == v33)
        {
          goto LABEL_125;
        }
      }
    }
  }

LABEL_134:
  if ((v27 & 2) != 0)
  {
    LiveIndex = si_getLiveIndex(*(v24 + 1384));
    if (!*(*(v24 + 1384) + 8))
    {
      v223 = __si_assert_copy_extra_661(-1);
      v224 = v223;
      v225 = "";
      if (v223)
      {
        v225 = v223;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 2163, "db->liveSet->indexCount", v225);
      free(v224);
      v226 = -1;
      goto LABEL_362;
    }
  }

  else
  {
    LiveIndex = si_getSyncIndex(v24, a10);
  }

  v102 = LiveIndex;
  v103 = *(v51 + 4);
  v104 = v260;
  v254 = LiveIndex;
  if (v103 == -1)
  {
    v103 = 0;
    *(v51 + 4) = 0;
    goto LABEL_187;
  }

  if (v259 && v103)
  {
    v105 = si_indexForDocId(v24, v103);
    if (v105)
    {
      v106 = v105;
    }

    else
    {
      v114 = si_indexIdForOID(v24, *v51);
      if (!v114)
      {
        v114 = *(v51 + 4);
      }

      *(v51 + 4) = v114;
      v106 = si_indexForDocId(v24, v114);
      v251 = *__error();
      v115 = _SILogForLogForCategory(0);
      v116 = 2 * (gSILogLevels[0] < 4);
      v248 = v115;
      v117 = os_log_type_enabled(v115, v116);
      if (v106)
      {
        if (v117)
        {
          v118 = *(v51 + 4);
          v119 = *v51;
          LODWORD(valuePtr[0].tv_sec) = 134218496;
          *(&valuePtr[0].tv_sec + 4) = v103;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v118;
          HIWORD(valuePtr[1].tv_sec) = 2048;
          *&valuePtr[1].tv_usec = v119;
          _os_log_impl(&dword_1C278D000, v248, v116, "DocID<->OID mapping out of sync. Had to do a brute force search. (Expected docId:%lld. Actual docID: %lld. OID: %llu", valuePtr, 0x20u);
        }
      }

      else
      {
        if (v117)
        {
          v125 = *(v51 + 4);
          v126 = *v51;
          LODWORD(valuePtr[0].tv_sec) = 134218240;
          *(&valuePtr[0].tv_sec + 4) = v125;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v126;
          _os_log_impl(&dword_1C278D000, v248, v116, "DocID<->OID mapping out of sync. Orphaned oid. (DocId:%lld. OID: %llu", valuePtr, 0x16u);
        }

        v106 = 0;
      }

      v104 = v260;
      *__error() = v251;
      v103 = *(v51 + 4);
    }

    db_fast_dirty_datastore_if_necessary(v263);
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v280[3] = Mutable;
    v128 = v264;
    if (((v27 >> 14) & 1 & *&v35) == 0)
    {
      v128 = 0;
    }

    v129 = _CIUpdateContent(v102, v81, &v290, 0, v289, v257, v82, v259, 0.0, cf, *(v51 + 4), &v277, v104, Mutable, (*(v24 + 6584) >> 25) & 3, lowDiskSpaceCallback, v24, a13, 0, *(v24 + 2464), (v27 & 0x4000) != 0, v128);
    if (v129)
    {
      v40 = v129;
      v130 = *__error();
      v131 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        LODWORD(valuePtr[0].tv_sec) = 136315650;
        *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
        *(&valuePtr[0].tv_usec + 2) = 1024;
        *(&valuePtr[0].tv_usec + 6) = 2253;
        WORD1(valuePtr[1].tv_sec) = 1024;
        HIDWORD(valuePtr[1].tv_sec) = v40;
        _os_log_error_impl(&dword_1C278D000, v131, OS_LOG_TYPE_ERROR, "%s:%d: ContentIndexUpdateContent failed  (%d)", valuePtr, 0x18u);
      }

      v49 = 0;
      *__error() = v130;
      goto LABEL_313;
    }

    v132 = a12;
    if (!v277 || v103 == v277)
    {
      if (v106 && (a13 || v82))
      {
        if (gSILogLevels[0] >= 5)
        {
          v232 = *__error();
          v233 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
          {
            v234 = *v51;
            v235 = *(v51 + 4);
            LODWORD(valuePtr[0].tv_sec) = 67109632;
            HIDWORD(valuePtr[0].tv_sec) = a13;
            LOWORD(valuePtr[0].tv_usec) = 2048;
            *(&valuePtr[0].tv_usec + 2) = v234;
            WORD1(valuePtr[1].tv_sec) = 2048;
            *(&valuePtr[1].tv_sec + 4) = v235;
            _os_log_impl(&dword_1C278D000, v233, OS_LOG_TYPE_DEFAULT, "Update date to %d for oid %llx docId %llx", valuePtr, 0x1Cu);
          }

          *__error() = v232;
          v132 = a12;
        }

        _CIUpdateGroupAndDate(v106, *(v51 + 4), v82, a13);
      }

      v103 = 0;
    }

    goto LABEL_196;
  }

  if (v103)
  {
    if (!si_indexForDocId(v24, v103))
    {
      v107 = si_indexIdForOID(v24, *v51);
      if (!v107)
      {
        v107 = *(v51 + 4);
      }

      *(v51 + 4) = v107;
      v108 = si_indexForDocId(v24, v107);
      v247 = *__error();
      v109 = _SILogForLogForCategory(0);
      v110 = 2 * (gSILogLevels[0] < 4);
      log = v109;
      v111 = os_log_type_enabled(v109, v110);
      if (!v108)
      {
        if (v111)
        {
          v136 = *(v51 + 4);
          v137 = *v51;
          LODWORD(valuePtr[0].tv_sec) = 134218240;
          *(&valuePtr[0].tv_sec + 4) = v136;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v137;
          _os_log_impl(&dword_1C278D000, log, v110, "DocID<->OID mapping out of sync. Orphaned oid. (DocId:%lld. OID: %llu", valuePtr, 0x16u);
        }

        v103 = 0;
        *__error() = v247;
        v104 = v260;
        v70 = v35;
        goto LABEL_187;
      }

      if (v111)
      {
        v112 = *(v51 + 4);
        v113 = *v51;
        LODWORD(valuePtr[0].tv_sec) = 134218496;
        *(&valuePtr[0].tv_sec + 4) = v103;
        *(&valuePtr[0].tv_usec + 2) = 2048;
        *(&valuePtr[0].tv_usec + 6) = v112;
        HIWORD(valuePtr[1].tv_sec) = 2048;
        *&valuePtr[1].tv_usec = v113;
        _os_log_impl(&dword_1C278D000, log, v110, "DocID<->OID mapping out of sync. Had to do a brute force search. (Expected docId:%lld. Actual docID: %lld. OID: %llu", valuePtr, 0x20u);
      }

      *__error() = v247;
      v104 = v260;
      v70 = v35;
    }

    if (v70 || v250 == 0 || (*(v24 + 2072) & 1) == 0)
    {
      v103 = *(v51 + 4);
    }

    else
    {
      v120 = _skipIndexForUpdate(theDict, v250);
      v103 = *(v51 + 4);
      if (v120)
      {
        v277 = *(v51 + 4);
        v121 = *__error();
        v122 = _SILogForLogForCategory(0);
        v123 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v122, v123))
        {
          v124 = *v51;
          LODWORD(valuePtr[0].tv_sec) = 134218240;
          *(&valuePtr[0].tv_sec + 4) = v277;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v124;
          _os_log_impl(&dword_1C278D000, v122, v123, "sdb only update docId: %lld oid: %llu", valuePtr, 0x16u);
        }

        *__error() = v121;
        db_fast_dirty_datastore_if_necessary(v263);
        v103 = 0;
        goto LABEL_195;
      }
    }
  }

LABEL_187:
  db_fast_dirty_datastore_if_necessary(v263);
  v138 = v264;
  if (((v27 >> 14) & 1 & *&v70) == 0)
  {
    v138 = 0;
  }

  v139 = _CIUpdateContent(v102, v81, &v290, 0, 0, v257, v82, 0, v32, cf, *(v51 + 4), &v277, v104, 0, (*(v24 + 6584) >> 25) & 3, lowDiskSpaceCallback, v24, a13, a14, *(v24 + 2464), (v27 & 0x4000) != 0, v138);
  if (!v139)
  {
LABEL_195:
    v132 = a12;
LABEL_196:
    if (*(v24 + 2072) == 1 && (v51[40] & 0x20) == 0)
    {
      v141 = v262[2];
      if (v141)
      {
        si_update_icon_cache_for_oid(v24, *v51, v141);
      }
    }

    if (v102)
    {
      v142 = v277;
      if (v277)
      {
        *(v51 + 4) = v277;
      }

      db_validate_obj(v263);
      v143 = *(v24 + 1384);
      valuePtr[0].tv_sec = v24;
      __checkIndexSetDocIdOrder(v24, v143);
      v144 = *(v24 + 1392);
      valuePtr[0].tv_sec = v24;
      __checkIndexSetDocIdOrder(v24, v144);
      v145 = v285;
      v146 = v35;
      if (v285)
      {
        db_validate_obj(*(v24 + 1192));
        if (*(v145 + 3) <= 0x30u)
        {
          v153 = db_delete_obj(*(v24 + 1192), v145);
          if (v153 && dword_1EBF46AE8 >= 5)
          {
            v229 = v153;
            v230 = *__error();
            v231 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(valuePtr[0].tv_sec) = 67109120;
              HIDWORD(valuePtr[0].tv_sec) = v229;
              _os_log_impl(&dword_1C278D000, v231, OS_LOG_TYPE_DEFAULT, "Deleting empty object failed with error %d", valuePtr, 8u);
            }

            *__error() = v230;
            v132 = a12;
            v146 = v35;
          }
        }

        else
        {
          v147 = *v145;
          *buf = 0;
          v148 = *(v145 + 10);
          if ((v148 & 0x208) != 0)
          {
            goto LABEL_206;
          }

          if (db_get_obj_callback(*(v24 + 1192), v147, buf, 0x10000, si_docIdRewriteCallback, *(v24 + 2368), 0) == 9)
          {
            v40 = 9;
            goto LABEL_289;
          }

          if (!*buf)
          {
            v148 = *(v145 + 10);
LABEL_206:
            if ((v148 & 0x200) != 0)
            {
              v149 = 9;
            }

            else
            {
              v149 = 11;
            }

            v150 = db_store_obj(*(v24 + 1192), v145, v149);
            v40 = v150;
            if (v150 <= 0x1C && ((1 << v150) & 0x10020081) != 0)
            {
              if (!v150)
              {
                goto LABEL_219;
              }
            }

            else
            {
              v175 = *__error();
              v176 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
              {
                v201 = *v145;
                v202 = *(v145 + 2);
                v203 = *(v145 + 3);
                v204 = *(v145 + 2);
                v205 = *(v145 + 3);
                v206 = *(v145 + 4);
                v207 = *(v145 + 10);
                LODWORD(valuePtr[0].tv_sec) = 136317442;
                *(&valuePtr[0].tv_sec + 4) = "si_writeBackDBO";
                *(&valuePtr[0].tv_usec + 2) = 1024;
                *(&valuePtr[0].tv_usec + 6) = 10338;
                WORD1(valuePtr[1].tv_sec) = 1024;
                HIDWORD(valuePtr[1].tv_sec) = v40;
                LOWORD(valuePtr[1].tv_usec) = 2048;
                *(&valuePtr[1].tv_usec + 2) = v201;
                WORD1(valuePtr[2].tv_sec) = 1024;
                HIDWORD(valuePtr[2].tv_sec) = v202;
                LOWORD(valuePtr[2].tv_usec) = 1024;
                *(&valuePtr[2].tv_usec + 2) = v203;
                *(&valuePtr[2].tv_usec + 3) = 2048;
                valuePtr[3].tv_sec = v204;
                LOWORD(valuePtr[3].tv_usec) = 2048;
                *(&valuePtr[3].tv_usec + 2) = v205;
                WORD1(valuePtr[4].tv_sec) = 2048;
                *(&valuePtr[4].tv_sec + 4) = v206;
                *(&valuePtr[4].tv_usec + 2) = 1024;
                *(&valuePtr[4].tv_usec + 6) = v207;
                _os_log_error_impl(&dword_1C278D000, v176, OS_LOG_TYPE_ERROR, "%s:%d: Error %d storing dbo(%llx,%x,%x,%llx,%llx,%llx,%x)", valuePtr, 0x52u);
              }

              *__error() = v175;
            }

            goto LABEL_289;
          }

          db_validate_obj(*(v24 + 1192));
          if (v142)
          {
            v171 = 9;
          }

          else
          {
            v171 = 11;
          }

          updated = db_update_obj(*(v24 + 1192), v145, v171);
          v40 = updated;
          if (updated > 0x1C || ((1 << updated) & 0x10000081) == 0)
          {
            v173 = *__error();
            v174 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
            {
              v213 = *v145;
              v214 = *(v145 + 2);
              v215 = *(v145 + 3);
              v216 = *(v145 + 2);
              v217 = *(v145 + 3);
              v218 = *(v145 + 4);
              v219 = *(v145 + 10);
              LODWORD(valuePtr[0].tv_sec) = 136317442;
              *(&valuePtr[0].tv_sec + 4) = "si_writeBackDBO";
              *(&valuePtr[0].tv_usec + 2) = 1024;
              *(&valuePtr[0].tv_usec + 6) = 10353;
              WORD1(valuePtr[1].tv_sec) = 1024;
              HIDWORD(valuePtr[1].tv_sec) = v40;
              LOWORD(valuePtr[1].tv_usec) = 2048;
              *(&valuePtr[1].tv_usec + 2) = v213;
              WORD1(valuePtr[2].tv_sec) = 1024;
              HIDWORD(valuePtr[2].tv_sec) = v214;
              LOWORD(valuePtr[2].tv_usec) = 1024;
              *(&valuePtr[2].tv_usec + 2) = v215;
              *(&valuePtr[2].tv_usec + 3) = 2048;
              valuePtr[3].tv_sec = v216;
              LOWORD(valuePtr[3].tv_usec) = 2048;
              *(&valuePtr[3].tv_usec + 2) = v217;
              WORD1(valuePtr[4].tv_sec) = 2048;
              *(&valuePtr[4].tv_sec + 4) = v218;
              *(&valuePtr[4].tv_usec + 2) = 1024;
              *(&valuePtr[4].tv_usec + 6) = v219;
              _os_log_error_impl(&dword_1C278D000, v174, OS_LOG_TYPE_ERROR, "%s:%d: Error %d updating dbo(%llx,%x,%x,%llx,%llx,%llx,%x)", valuePtr, 0x52u);
            }

            *__error() = v173;
            v132 = a12;
          }

          free(*buf);
          if (v40)
          {
LABEL_289:
            v177 = *__error();
            v178 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
            {
              v195 = *v145;
              LODWORD(valuePtr[0].tv_sec) = 136316162;
              *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
              *(&valuePtr[0].tv_usec + 2) = 1024;
              *(&valuePtr[0].tv_usec + 6) = 2458;
              WORD1(valuePtr[1].tv_sec) = 2048;
              *(&valuePtr[1].tv_sec + 4) = v195;
              *(&valuePtr[1].tv_usec + 2) = 2048;
              *(&valuePtr[1].tv_usec + 6) = v195;
              HIWORD(valuePtr[2].tv_sec) = 1024;
              valuePtr[2].tv_usec = v40;
              _os_log_error_impl(&dword_1C278D000, v178, OS_LOG_TYPE_ERROR, "%s:%d: si_writeBackDBO failed, oid:0x%llx(%lld), rc:%d", valuePtr, 0x2Cu);
            }

            *__error() = v177;
            *(v145 + 4) = v249;
            if (v40 == 7)
            {
              if (shrinkLocalizedField(v24, &v285, "com_apple_system_prefs_keywords"))
              {
                v40 = 0;
                v49 = 1;
              }

              else
              {
                v49 = shrinkLocalizedField(v24, &v285, "kMDItemKeywords");
                v40 = 0;
              }

              goto LABEL_308;
            }

            v179 = *(v24 + 1192);
            if (*v179 != 1685287992)
            {
              v236 = *__error();
              v237 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
              {
                v238 = *v179;
                LODWORD(valuePtr[0].tv_sec) = 136315650;
                *(&valuePtr[0].tv_sec + 4) = "db_io_error";
                *(&valuePtr[0].tv_usec + 2) = 1024;
                *(&valuePtr[0].tv_usec + 6) = 246;
                WORD1(valuePtr[1].tv_sec) = 1024;
                HIDWORD(valuePtr[1].tv_sec) = v238;
                _os_log_error_impl(&dword_1C278D000, v237, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", valuePtr, 0x18u);
              }

              *__error() = v236;
              v239 = __si_assert_copy_extra_332();
              v240 = v239;
              if (v239)
              {
                v241 = v239;
              }

              else
              {
                v241 = "";
              }

              __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 246, v241);
              free(v240);
              goto LABEL_363;
            }

            if ((v179[201] & 0x14) != 0 && (!data_map_valid(*(v179 + 110)) || !data_map_valid(*(v179 + 111)) || !data_map_valid(*(v179 + 112)) || !data_map_valid(*(v179 + 113)) || !data_map_valid(*(v179 + 114))) || (data_map_valid(*(v179 + 115)) & 1) == 0 || (v179[1] & 6) != 0)
            {
              if (v40 == 28)
              {
                v180 = 1;
              }

              else
              {
                v180 = 2;
              }

              si_makeUnavailable(v24, v40, v180, 19, "set attributes err");
              v49 = 0;
LABEL_308:
              v103 = v277;
              if (!v277)
              {
                goto LABEL_312;
              }

              goto LABEL_309;
            }

            v242 = __si_assert_copy_extra_661(*(v24 + 32));
            v243 = v242;
            v244 = "";
            if (v242)
            {
              v244 = v242;
            }

            __message_assert("%s:%u: failed assertion '%s' %s si_writeBackDBO failed %d", "SIStoring.c", 2468, "0", v244, v40);
            free(v243);
            v226 = *(v24 + 32);
LABEL_362:
            if (!__valid_fs(v226))
            {
              v227 = 3072;
LABEL_365:
              *v227 = -559038737;
              abort();
            }

LABEL_363:
            v227 = 2989;
            goto LABEL_365;
          }
        }
      }

LABEL_219:
      v154 = HIBYTE(v284);
      if (HIBYTE(v284) | v132)
      {
        if (cf)
        {
          v155 = CFDictionaryGetValue(cf, *(v24 + 2012));
        }

        else
        {
          v155 = 0;
        }

        v156 = a12;
        if (*(v24 + 2072))
        {
          v157 = 0;
        }

        else
        {
          v157 = 22;
        }

        if (v154 != a12)
        {
          valuePtr[0].tv_sec = 0;
          if (v154)
          {
            if (v155)
            {
              v161 = CFGetTypeID(v155);
              v69 = v161 == CFNumberGetTypeID();
              v156 = a12;
              if (v69)
              {
                CFNumberGetValue(v155, kCFNumberLongLongType, valuePtr);
              }
            }
          }

          pthread_mutex_lock((v24 + 6976));
          if (v154 < v157)
          {
            *(v24 + 8 * v154 + 7040) += valuePtr[0].tv_sec;
            if (v154)
            {
              ++*(v24 + 4 * v154 + 9088);
            }
          }

          if (v157 > v156)
          {
            *(v24 + 8 * v156 + 7040) -= a11;
            if (v156)
            {
              --*(v24 + 4 * v156 + 9088);
            }
          }

          v146 = v35;
          if ((*(v24 + 8 * v154 + 7040) & 0x8000000000000000) == 0)
          {
            goto LABEL_245;
          }

LABEL_244:
          _SIRecomputeSizesWithCallback(v24, 0, &__block_literal_global_9005);
LABEL_245:
          pthread_mutex_unlock((v24 + 6976));
          goto LABEL_246;
        }

        v158 = v157 > a12;
        v146 = v35;
        if (v158)
        {
          if (v155 && (v159 = CFGetTypeID(v155), v159 == CFNumberGetTypeID()))
          {
            valuePtr[0].tv_sec = 0;
            CFNumberGetValue(v155, kCFNumberLongLongType, valuePtr);
            v160 = valuePtr[0].tv_sec;
          }

          else
          {
            v160 = 0;
          }

          v168 = v160 - a11;
          if (v160 != a11)
          {
            pthread_mutex_lock((v24 + 6976));
            v169 = v24 + 8 * a12;
            v170 = *(v169 + 7040) + v168;
            *(v169 + 7040) = v170;
            if (v170 >= 0)
            {
              goto LABEL_245;
            }

            goto LABEL_244;
          }
        }
      }

LABEL_246:
      if ((v27 & 0x20) == 0 || (*(v24 + 6584) & 0x10) != 0)
      {
        if ((v27 & 0x20000) != 0)
        {
          goto LABEL_267;
        }

        if ((v27 & 0x1000) != 0)
        {
          if (!v259 && theDict && CFDictionaryGetValue(theDict, @"_kMDItemUserTags"))
          {
            v163 = 4;
          }

          else
          {
            v163 = 2;
          }

          goto LABEL_264;
        }

        v162 = (v27 >> 12) & 1;
      }

      else
      {
        v162 = v142 == 0;
        if (v142 && v145)
        {
          if ((v27 & 0x1000) == 0)
          {
            goto LABEL_267;
          }

          goto LABEL_256;
        }
      }

      if (!v162)
      {
        goto LABEL_267;
      }

LABEL_256:
      v163 = 0;
LABEL_264:
      v164 = *__error();
      v165 = _SILogForLogForCategory(0);
      v166 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v165, v166))
      {
        v167 = *v145;
        LODWORD(valuePtr[0].tv_sec) = 134218240;
        *(&valuePtr[0].tv_sec + 4) = v167;
        *(&valuePtr[0].tv_usec + 2) = 1024;
        *(&valuePtr[0].tv_usec + 6) = v163;
        _os_log_impl(&dword_1C278D000, v165, v166, "bad data in dbo (%lld) reimporting flags:%d", valuePtr, 0x12u);
      }

      *__error() = v164;
      (*(*(v24 + 2360) + 16))(*(*(v24 + 2360) + 144), *v145, v163, a9);
      v146 = v35;
LABEL_267:
      if ((*&v146 & ((v27 & 0x4000) >> 14) & 1) == 0)
      {
        v265(v264, *(v145 + 4));
      }

      v49 = 0;
      v40 = 0;
      if (!v103)
      {
        goto LABEL_312;
      }

LABEL_309:
      v181 = *v261;
      if (v103 != *(*v261 + 4))
      {
        v182 = si_indexForDocId(v24, v103);
        if (v182)
        {
          v183 = *v181;
          _CIDelete(v182);
        }
      }

      goto LABEL_312;
    }

    v220 = __si_assert_copy_extra_661(-1);
    v209 = v220;
    v221 = "";
    if (v220)
    {
      v221 = v220;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 2278, "content_index", v221);
LABEL_355:
    free(v209);
    if (__valid_fs(-1))
    {
      v222 = 2989;
    }

    else
    {
      v222 = 3072;
    }

    *v222 = -559038737;
    abort();
  }

  v40 = v139;
  if (v139 == -3)
  {
    v132 = a12;
    if ((*(v24 + 2458) & 1) == 0)
    {
      *(v24 + 2458) = 1;
      if (*(v24 + 1192))
      {
        v140 = *(v24 + 1064);
        if (v140)
        {
          si_enqueue_work_with_qos(v140, 9, si_consistencyCheck, v24);
        }
      }
    }

    goto LABEL_196;
  }

  v151 = *__error();
  v152 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
  {
    LODWORD(valuePtr[0].tv_sec) = 136315650;
    *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
    *(&valuePtr[0].tv_usec + 2) = 1024;
    *(&valuePtr[0].tv_usec + 6) = 2214;
    WORD1(valuePtr[1].tv_sec) = 1024;
    HIDWORD(valuePtr[1].tv_sec) = v40;
    _os_log_error_impl(&dword_1C278D000, v152, OS_LOG_TYPE_ERROR, "%s:%d: ContentIndexUpdateContent failed (%d)", valuePtr, 0x18u);
  }

  v49 = 0;
  *__error() = v151;
  if (v103)
  {
    goto LABEL_309;
  }

LABEL_312:
  if (v40)
  {
    goto LABEL_313;
  }

LABEL_320:
  v190 = v280;
  v191 = v280[3];
  if (v191)
  {
    CFRelease(v191);
    v190 = v280;
  }

  v190[3] = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v49)
  {
    if (v260 <= 0xB && ((0xECFu >> v260) & 1) != 0)
    {
      --*(*(v254 + 1799) + qword_1C2BFF158[v260]);
    }

    v245[1] = a13;
    LOBYTE(v245[0]) = a12;
    v40 = si_writeBackAndIndexWithLiveQueryToggle(v24, v254, v262, v259, v253, v261, v260, v27, v32, a9, a10, a11, *v245, a14, a15);
  }

  else if ((*(v263 + 4) & 0x40) != 0)
  {
    if (v24 && (atomic_load_explicit((v24 + 2439), memory_order_acquire) & 1) == 0)
    {
      if (SIIsAppleInternal_onceToken != -1)
      {
        dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
      }

      if (SIIsAppleInternal_internal)
      {
        if (!atomic_fetch_add_explicit(si_writeBackAndIndexWithLiveQueryToggle__crashCount, 1u, memory_order_relaxed))
        {
          v192 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"si_writeBackAndIndex");
          getpid();
          SISimulateCrashForPid(0, v192);
          if (v192)
          {
            CFRelease(v192);
          }
        }
      }
    }

    v40 = 89;
    si_makeUnavailable(v24, 89, 2, 20, "si_writeBackAndIndex detected corrupted sdb on exit");
  }

  _Block_object_dispose(&v279, 8);
LABEL_340:
  v193 = *MEMORY[0x1E69E9840];
  return v40;
}