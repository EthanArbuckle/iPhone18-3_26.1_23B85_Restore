void si_getAttrNamesBulk(uint64_t *a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if (a2)
  {
    SIResultQueueRelease(a1[3]);
  }

  else
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = _MDPlistBytesCreateMutable();
    v38 = &v36;
    v6 = a1[2];
    MEMORY[0x1EEE9AC00](Mutable);
    v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, v7);
    bzero(v8, a1[2]);
    _MDPlistBytesBeginPlist();
    _MDPlistBytesBeginArray();
    v10 = *a1;
    v9 = a1[1];
    v11 = a1[2];
    v12 = *(a1 + 48);
    v13 = *(*a1 + 1192);
    v14 = CFSetCreateMutable(v4, 0, 0);
    if (v13)
    {
      v15 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
      if (v11 < 2)
      {
        v28 = v15;
        v21 = db_obj_iter_create_with_filter(v13, 0, v15, 0, 0, 0, 0, 0, 0);
      }

      else
      {
        v37 = v3;
        v16 = 0;
        v17 = v11 - 1;
        v18 = (v9 + 8);
        v19 = v8 + 1;
        do
        {
          if (!*v19++)
          {
            *(v15 + v16++) = *v18;
          }

          ++v18;
          --v17;
        }

        while (v17);
        v36 = v15;
        v21 = db_obj_iter_create_with_filter(v13, v16, v15, 0, 0, 0, 0, 0, 0);
        if (v16)
        {
          for (i = 0; i != v16; ++i)
          {
            v42 = 0;
            v40 = 0;
            v41 = 0;
            v26 = db_obj_iter_next(v21, &v39, 1, v22, v23, v24);
            if (v26)
            {
              v27 = v26;
              if (((v12 & 4) == 0 || !isContact(v13, v26, *(v10 + 2008))) && ((v12 & 2) == 0 || (isReminder(v13, v27, *(v10 + 2008)) & 1) == 0) && ((v12 & 1) == 0 || !isCalendar(v13, v27, *(v10 + 2008))))
              {
                while (db_next_field(v13, v27, 1, &v42, &v41, &v40) == 35)
                {
                  if ((*(v40 + 2) & 8) == 0 && !CFSetContainsValue(v14, v41))
                  {
                    _MDPlistBytesAddInternedCString();
                    CFSetAddValue(v14, v41);
                  }
                }
              }
            }
          }
        }

        v28 = v36;
        v3 = v37;
      }

      db_obj_iter_release(v21);
      free(v28);
    }

    v29 = 1u;
    do
    {
      _MDPlistBytesAddInternedCString();
      v30 = allFSAttributeNames[v29++];
    }

    while (v29 != 16);
    if (v14)
    {
      CFRelease(v14);
    }

    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    v31 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
    v32 = *a1;
    if (!*(*a1 + 1440))
    {
      si_storecookieRef(*a1);
    }

    v31[1] = *(v32 + 1424);
    v33 = a1[4];
    *(v31 + 1) = v33;
    atomic_fetch_add(v33, 1u);
    *v31 = 3;
    *(v31 + 4) = Mutable;
    if (!si_resultqueue_enqueue(v3, v31))
    {
      SIResultBatchFree(v31);
    }

    SIResultQueueRelease(v3);
  }

  v34 = a1[5];
  if (v34)
  {
    CFRelease(v34);
  }

  a1[5] = 0;
  si_release_qid(a1[4]);
  free(a1);
  v35 = *MEMORY[0x1E69E9840];
}

void si_getAttrBulk(uint64_t a1, int a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    si_resultqueue_enqueue(*(a1 + 32), -1);
    SIResultQueueRelease(*(a1 + 32));
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 120);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E695E480];
    Mutable = _MDPlistBytesCreateMutable();
    SIFlattenArrayToCStringVector(*(a1 + 8), &v46, &v45, &v44);
    v9 = *(a1 + 8);
    if (v9)
    {
      CFRelease(v9);
    }

    *(a1 + 8) = 0;
    v10 = *__error();
    v11 = _SILogForLogForCategory(5);
    v12 = 2 * (dword_1EBF46AE0 < 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
      *buf = 134217984;
      v48 = v13;
      _os_log_impl(&dword_1C278D000, v11, v12, "Waited %f seconds on scheduler", buf, 0xCu);
    }

    v14 = __error();
    *v14 = v10;
    v15 = *(a1 + 24);
    MEMORY[0x1EEE9AC00](v14);
    v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    if (*(a1 + 48))
    {
      v18 = geteuid();
      if (v18)
      {
        if (v18 != 308)
        {
          v19 = __si_assert_copy_extra_332();
          __message_assert_336(v19, v20, v21, v22, v23, v24, v25, v26, "SIFetching.c");
          free(v19);
          if (__valid_fs(-1))
          {
            v27 = 2989;
          }

          else
          {
            v27 = 3072;
          }

          *v27 = -559038737;
          abort();
        }
      }
    }

    bzero(v17, *(a1 + 24));
    _MDPlistBytesBeginPlist();
    _MDPlistBytesBeginArray();
    _fillPlistBytes(*a1, Mutable, v46, v44, *(a1 + 16), *(a1 + 24), v17, v5, *(a1 + 48), *(a1 + 64), 0, 0);
    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    v28 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
    v29 = *a1;
    if (!*(*a1 + 1440))
    {
      si_storecookieRef(*a1);
    }

    v28[1] = *(v29 + 1424);
    v30 = *(a1 + 40);
    *(v28 + 1) = v30;
    atomic_fetch_add(v30, 1u);
    *v28 = 2;
    *(v28 + 4) = Mutable;
    if (!si_resultqueue_enqueue(v6, v28))
    {
      SIResultBatchFree(v28);
    }

    SIResultQueueRelease(v6);
    free(v46);
  }

  if (*(a1 + 48))
  {
    v31 = geteuid();
    if (v31 && v31 != 308)
    {
      v32 = __si_assert_copy_extra_332();
      __message_assert_336(v32, v33, v34, v35, v36, v37, v38, v39, "SIFetching.c");
      free(v32);
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

    v41 = *(a1 + 48);
    if (v41)
    {
      CFRelease(v41);
      *(a1 + 48) = 0;
    }
  }

  si_release_qid(*(a1 + 40));
  free(a1);
  v42 = *MEMORY[0x1E69E9840];
}

void si_getCacheEntry(void *a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2 && dword_1EBF46B00 >= 5)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "si_getCacheEntry at qos 0x%x", v9, 8u);
    }

    *__error() = v7;
  }

  (*(a1[3] + 16))();
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[1] = 0;
  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[2] = 0;
  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
  v6 = *MEMORY[0x1E69E9840];
}

void si_getCacheFd(void *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1[1];
    (*(a1[1] + 16))();
  }

  else if (dword_1EBF46B00 >= 5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "si_getCacheFd at qos 0x%x", v8, 8u);
    }

    *__error() = v6;
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
  v5 = *MEMORY[0x1E69E9840];
}

void *optimizeLiftingQuery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  if (a2)
  {
    v3 = *(a2 + 56) & 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 16;
  if (!*(a1 + 2073))
  {
    v4 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __optimizeLiftingQuery_block_invoke;
  v7[3] = &__block_descriptor_tmp_198;
  v7[4] = a1;
  v7[5] = a3;
  v7[6] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __db_query_tree_apply_block_block_invoke;
  v9[3] = &unk_1E8198ED0;
  v9[4] = v7;
  db_query_tree_apply_block_with_meta(a2, v9, 0);
  db_optimize_query_tree(&v8);
  result = v8;
  if (v3)
  {
    if (v8)
    {
      v6 = *(v8 + 24);
      if (v6 != 16 && v6 != 32)
      {
        *(v8 + 28) |= 1u;
      }
    }
  }

  return result;
}

uint64_t __queryIsUnpalatable_block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      if ((*(v3 + 33) & 4) != 0)
      {
        v4 = *(v3 + 72);
        if (v4)
        {
          v6 = CFStringCreateWithCString(kCIQueryZoneAllocator, v4, 0x8000100u);
          v7 = v6;
          v24 = 0;
          if (*(*(a1 + 40) + 2073))
          {
            v8 = 16;
          }

          else
          {
            v8 = 0;
          }

          v9 = ContentIndexCopyQueryTerms(v6, *(a1 + 48), 0, v8, &v24);
          v10 = v9;
          v11 = v24;
          if (v24 < 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = 0;
            v13 = v9;
            v14 = v24;
            do
            {
              v15 = *v13;
              if ((v12 & 1) == 0 && v11 != 1)
              {
                if (*v15)
                {
                  v12 = isShortTerm(*v13);
                }

                else
                {
                  v12 = 0;
                }
              }

              free(v15);
              ++v13;
              --v14;
            }

            while (v14);
          }

          free(v10);
          v16 = *(*(a1 + 40) + 6584);
          if ((v16 & 0x1000000) == 0 || v11 > 1)
          {
            if ((v16 & 0x1000000) != 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = v11 > 1;
            }

            *(*(*(a1 + 32) + 8) + 24) |= v17;
          }

          if (*(*(*(a1 + 32) + 8) + 24) == 1 && dword_1EBF46AD0 >= 5)
          {
            v21 = *__error();
            v22 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v7;
              _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "Unpalatable ranking query: %@", buf, 0xCu);
            }

            *__error() = v21;
          }

          CFRelease(v7);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t isShortTerm(char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1[1];
  if (v2 == 42)
  {
    if (a1[2])
    {
      return 0;
    }
  }

  else if (v1 == 42)
  {
    if (a1[1] && a1[2])
    {
      return 0;
    }
  }

  else
  {
    v3 = v2 - 48;
    if ((v1 - 48) > 9 || v3 > 9)
    {
      return 0;
    }

    v6 = a1[2];
    if (v6 != 42 && ((v6 - 48) > 9 || a1[3] != 42))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __optimizeLiftingQuery_block_invoke(void *a1, uint64_t a2)
{
  if ((*(a2 + 48) & 0xFFF7) != 4)
  {
    return a2;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return a2;
  }

  query_trim_superfluous_wildcards(v4);
  v5 = *(a2 + 16);
  v6 = *(v5 + 72);
  if (v6 && *v6)
  {
    if (v6[1] == 42)
    {
LABEL_8:
      if (v6[2])
      {
        goto LABEL_9;
      }

LABEL_16:
      if ((*(v5 + 33) & 4) == 0)
      {
        return a2;
      }

      goto LABEL_17;
    }

    if (*v6 == 42)
    {
      if (!v6[1])
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v7 = a1[4];
  if ((*(v7 + 2072) & 1) != 0 || strcmp(*v5, "_kMDItemBundleID"))
  {
    if ((*(v5 + 33) & 4) != 0 || (v8 = *v5) != 0 && (!strcmp(v8, "kMDItemTextContent") || !strncmp(v8, "_kMDItemOCRContent", 0x12uLL)))
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __optimizeLiftingQuery_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_197;
      v9 = a1[6];
      v13 = a1[5];
      v14 = v7;
      query_eliminate_denied_terms(a2, v13, v12, v9);
    }

    return a2;
  }

LABEL_17:
  if (*(v5 + 24) == 5)
  {
    v10 = 32;
  }

  else
  {
    v10 = 16;
  }

  free_qp(v5);
  *(a2 + 16) = 0;
  *(a2 + 48) = v10;
  return a2;
}

uint64_t __optimizeLiftingQuery_block_invoke_2(uint64_t a1, char *a2, size_t a3, _BYTE *a4)
{
  v6 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v8 = isShortTerm(a2);
  v9 = v8;
  if ((v8 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v8);
    v11 = &buf[-((a3 + 16) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v11, a3 + 1);
    if (!a3)
    {
      goto LABEL_14;
    }

    if (v6[a3 - 1] == 42)
    {
      strlcpy(&buf[-((a3 + 16) & 0xFFFFFFFFFFFFFFF0)], v6, a3);
      --a3;
      v6 = v11;
    }

    if (a3 == 1 && ((v12 = *v6, (v12 - 36) < 0x1D) || (v12 - 94) <= 0x20 && ((1 << (v12 - 94)) & 0x1E0000007) != 0 || (v12 - 33) < 2))
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v13 = *__error();
        v14 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v18 = v6;
          v15 = "stop character found: %s";
LABEL_18:
          _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
        }

LABEL_19:
        *__error() = v13;
      }
    }

    else
    {
LABEL_14:
      if (!isStopWord(v6))
      {
        if (CFSetContainsValue(**(a1 + 32), v6))
        {
          goto LABEL_21;
        }

        if (!CFSetContainsValue(*(*(a1 + 32) + 8), v6))
        {
          if (isTopKTermAtLevel(*(*(a1 + 40) + 664)))
          {
            if (dword_1EBF46AD0 < 5)
            {
              goto LABEL_21;
            }

            v13 = *__error();
            v14 = _SILogForLogForCategory(1);
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 136315138;
            v18 = v6;
            v15 = "high freq word found: %s";
            goto LABEL_18;
          }

          CFSetAddValue(*(*(a1 + 32) + 8), v6);
        }

        result = 0;
        goto LABEL_22;
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v13 = *__error();
        v14 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v18 = v6;
          v15 = "stop word found: %s";
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

LABEL_21:
    result = 1;
    goto LABEL_22;
  }

  result = 0;
LABEL_22:
  *a4 = v9;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void query_eliminate_denied_terms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_64;
  }

  v6 = *(v4 + 72);
  if (!v6 || (*(v4 + 33) & 4) == 0)
  {
    goto LABEL_64;
  }

  v82 = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
  v12 = ContentIndexCopyQueryTerms(v11, 3u, *(a2 + 32), a4, &v82);
  v13 = v82;
  if (v82 < 2)
  {
    goto LABEL_60;
  }

  v77 = a1;
  if (dword_1EBF46AD0 >= 5)
  {
    v59 = *__error();
    v60 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = *(*(v77 + 16) + 72);
      *buf = 136315138;
      v84 = v61;
      _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "stop word check %s", buf, 0xCu);
    }

    *__error() = v59;
  }

  Mutable = CFBitVectorCreateMutable(v10, v13);
  CFBitVectorSetCount(Mutable, v13);
  v15 = 0;
  *&v16 = 136315138;
  v73 = v16;
  v17 = 0x1EBF46000uLL;
  do
  {
    v18 = v12[v15];
    v19 = strlen(v18);
    v81 = 0;
    v20 = (*(a3 + 16))(a3, v18, v19, &v81);
    if ((v81 & 1) != 0 || (v21 = 0, v20))
    {
      v22 = *(v17 + 2768);
      if (v81)
      {
        if (v22 < 5)
        {
          goto LABEL_15;
        }

        v23 = *__error();
        v24 = _SILogForLogForCategory(1);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v25 = v12[v15];
        *buf = v73;
        v84 = v25;
        v26 = v24;
        v27 = "short word found: %s";
      }

      else
      {
        if (v22 < 5)
        {
LABEL_15:
          v21 = 1;
          goto LABEL_16;
        }

        v23 = *__error();
        v28 = _SILogForLogForCategory(1);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v30 = v12[v15];
        *buf = v73;
        v84 = v30;
        v26 = v28;
        v27 = "stop word found: %s";
      }

      _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
LABEL_21:
      *__error() = v23;
      v21 = 1;
      v17 = 0x1EBF46000;
    }

LABEL_16:
    CFBitVectorSetBitAtIndex(Mutable, v15++, v21);
  }

  while (v13 != v15);
  v31.location = 0;
  v31.length = v13;
  if (CFBitVectorGetCountOfBit(Mutable, v31, 1u))
  {
    v75 = v11;
    v78 = (2 * strlen(*(*(v77 + 16) + 72))) | 1;
    v79 = malloc_type_calloc(1uLL, v78, 0x7C126ABBuLL);
    v74 = &v73;
    MEMORY[0x1EEE9AC00](v79);
    v76 = &v73 - ((v32 + 15) & 0x7FFFFFFF0);
    bzero(v76, v32);
    v33 = 0;
    v34 = 0;
    v80 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    if (v13 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v13;
    }

    do
    {
      if (CFBitVectorGetBitAtIndex(Mutable, v33))
      {
        ++v34;
        v36 |= v35 != 0;
      }

      else
      {
        if (v35)
        {
          v40 = *(v77 + 16);
          v41 = *(v40 + 88);
          v42 = v79;
          if (v41)
          {
            v43 = v80;
            if (v33 > v38)
            {
              v44 = *(v40 + 96);
              v45 = *&v76[4 * v80];
              do
              {
                if (v38 >= v44)
                {
                  v46 = 5;
                }

                else
                {
                  v46 = *(v41 + 4 * v38);
                }

                v45 += v46;
                ++v38;
              }

              while (v33 != v38);
              *&v76[4 * v80] = v45;
            }
          }

          else
          {
            v43 = v80;
            *&v76[4 * v80] = v34 + 1;
          }

          v37 |= v36;
          v80 = (v43 + 1);
          v42[v35] = 32;
          v47 = v35 + 1;
        }

        else
        {
          v47 = 0;
          v37 |= v36;
          v42 = v79;
        }

        v34 = 0;
        v35 = strlcat(&v42[v47], v12[v33], v78 - v47) + v47;
        v38 = v33;
      }

      ++v33;
    }

    while (v33 != v39);
    if (v36 & v37)
    {
      v48 = v77;
      v49 = *(v77 + 16);
      v50 = *(v49 + 32);
      goto LABEL_46;
    }

    v48 = v77;
    if ((v36 & 1) != 0 && (v49 = *(v77 + 16), v50 = *(v49 + 32), (v50 & 0x6000000000) != 0))
    {
LABEL_46:
      v11 = v75;
      if ((v50 & 0x6000000000) == 0)
      {
        *(v49 + 32) = v50 | 0x6000000000;
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v62 = *__error();
        v63 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(*(v77 + 16) + 72);
          *buf = 136315394;
          v84 = v64;
          v85 = 2080;
          v86 = v79;
          _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "1) Replace %s with %s", buf, 0x16u);
        }

        *__error() = v62;
        v48 = v77;
        v49 = *(v77 + 16);
        v11 = v75;
      }

      free(*(v49 + 72));
      v51 = *(v48 + 16);
      v52 = v80;
      *(v51 + 72) = v79;
      *(v51 + 96) = v52;
      free(*(v51 + 88));
      v53 = malloc_type_malloc(4 * v52, 0x100004052888210uLL);
      *(*(v48 + 16) + 88) = v53;
      memcpy(v53, v76, 4 * v52);
    }

    else if (v35)
    {
      v11 = v75;
      if (dword_1EBF46AD0 >= 5)
      {
        v65 = *__error();
        v66 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *(*(v77 + 16) + 72);
          *buf = 136315394;
          v84 = v68;
          v85 = 2080;
          v86 = v79;
          _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "2) Replace %s with %s", buf, 0x16u);
        }

        *__error() = v65;
        v11 = v75;
        v48 = v77;
      }

      free(*(*(v48 + 16) + 72));
      *(*(v48 + 16) + 72) = v79;
    }

    else
    {
      v11 = v75;
      if (dword_1EBF46AD0 >= 5)
      {
        v69 = *__error();
        v70 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v72 = *(*(v77 + 16) + 72);
          *buf = v73;
          v84 = v72;
          _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "Replace %s with false", buf, 0xCu);
        }

        *__error() = v69;
        v11 = v75;
        v48 = v77;
      }

      *(v48 + 48) = 16;
      v54 = *(v48 + 16);
      v55 = *(v54 + 56);
      *(v48 + 72) = v55;
      if (v55 != 0.0)
      {
        *(v48 + 48) = 32;
      }

      free_qp(v54);
      *(v48 + 16) = 0;
      free(v79);
    }
  }

  CFRelease(Mutable);
LABEL_60:
  if (v13)
  {
    v56 = v12;
    do
    {
      v57 = *v56++;
      free(v57);
      --v13;
    }

    while (v13);
  }

  free(v12);
  CFRelease(v11);
LABEL_64:
  v58 = *MEMORY[0x1E69E9840];
}

BOOL isTopKTermAtLevel(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  if (a1)
  {
    v22[0] = _MDPlistContainerGetBytes();
    v22[1] = _MDPlistContainerGetLength();
    v22[2] = 0;
    v21[0] = 1;
    v21[1] = v22;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v2 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v21, 0, add_explicit + 1);
    v19 = HIDWORD(v2);
    v20 = v2;
    v18 = __PAIR64__(v3, v4);
    v5 = threadData[9 * v2 + 1] + 320 * HIDWORD(v2);
    *(v5 + 216) = 0;
    v6 = *(v5 + 312);
    v7 = *(v5 + 224);
    v8 = v5;
    if (v7)
    {
      v7(*(v5 + 288));
    }

    v17 = v20;
    v16 = v19;
    v15 = v18;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      v8[78] = v6;
      CIOnThreadCleanUpReset(v15);
      dropThreadId(v17, 1, add_explicit + 1);
      CICleanUpReset(v17, HIDWORD(v15));
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v14 = 0;
      _MDPlistGetRootPlistObjectFromPlist();
      if (_MDPlistGetPlistObjectType() == 241)
      {
        _MDPlistDictionaryIterate();
      }

      v10 = threadData[9 * v17 + 1] + 320 * v16;
      *(v10 + 312) = v6;
      v11 = *(v10 + 232);
      if (v11)
      {
        v11(*(v10 + 288));
      }

      dropThreadId(v17, 0, add_explicit + 1);
    }

    v9 = *(v24 + 6) > 0x3E8u;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v9;
}

uint64_t __isTopKTermAtLevel_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v10 = *a4;
  v11 = *(a4 + 2);
  result = _MDPlistGetPlistObjectType();
  if (result == 241)
  {
    v7 = *(a1 + 40);
    v8 = *a4;
    v9 = *(a4 + 2);
    result = _MDPlistDictionaryGetPlistObjectForKey();
    if (result)
    {
      result = _MDPlistNumberGetIntValue();
      *(*(*(a1 + 32) + 8) + 24) += result;
    }
  }

  return result;
}

unsigned __int8 *remove_escaped_chars(unsigned __int8 *result)
{
  while (1)
  {
    v1 = *result;
    if (v1 == 92 || v1 == 0)
    {
      break;
    }

    ++result;
  }

  v3 = result;
  while (v1 != 92)
  {
    if (!v1)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v3++ = v1;
    v5 = *++result;
    v1 = v5;
  }

  v4 = *++result;
  LOBYTE(v1) = v4;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
  *v3 = 0;
  return result;
}

void *addNodeForCPath(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  ORNode = v6;
  v21[512] = *MEMORY[0x1E69E9840];
  if (!*(v1 + 240))
  {
    v10 = v1;
    v11 = *(v1 + 64);
    if (v11)
    {
      v12 = v5;
      v13 = v4;
      v14 = v3;
      v15 = v2;
      bzero(v21, 0x1000uLL);
      v16 = v13 ? 17 : 1;
      v17 = v11(v10, v15, 0, v21, 1, 0, v16);
      if (v17 && v21[0] != 0)
      {
        v19 = v17;
        if (v21[v17 - 1] != 2)
        {
          v21[v17] = 2;
          v19 = v17 + 1;
        }

        OidScopeNode = makeOidScopeNode(v21, v19, v14, v12);
        *(*(OidScopeNode + 16) + 72) = strdup(v15);
        if (ORNode)
        {
          ORNode = makeORNode(ORNode, OidScopeNode, 1);
        }

        else
        {
          ORNode = OidScopeNode;
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return ORNode;
}

uint64_t makeOidScopeNode(const void *a1, uint64_t a2, int a3, int a4)
{
  v5 = a3;
  v8 = makeOidScopeNode_prototypeNode[0];
  if (!makeOidScopeNode_prototypeNode[0])
  {
    while (1)
    {
      query_node_with_ann = db_make_query_node_with_ann("_kMDItemQueryPath = stuff", 0);
      v10 = 0;
      *(query_node_with_ann[2] + 32) |= 0x40000uLL;
      atomic_compare_exchange_strong(makeOidScopeNode_prototypeNode, &v10, query_node_with_ann);
      if (!v10)
      {
        break;
      }

      v18 = MEMORY[0x1E69E9820];
      v19 = 0x40000000;
      v20 = __db_query_tree_apply_block_block_invoke;
      v21 = &unk_1E8198ED0;
      v22 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(query_node_with_ann, &v18, 0);
      v8 = makeOidScopeNode_prototypeNode[0];
      if (makeOidScopeNode_prototypeNode[0])
      {
        goto LABEL_6;
      }
    }

    v8 = makeOidScopeNode_prototypeNode[0];
LABEL_6:
    v5 = a3;
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 0x40000000;
  v20 = __db_query_tree_apply_block_block_invoke;
  v21 = &unk_1E8198ED0;
  v22 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v8, &v18, &__block_literal_global_25_15416);
  v12 = v11;
  v13 = *(v11 + 16);
  *(v13 + 24) = a4;
  free(*(v13 + 72));
  *(*(v12 + 16) + 288) = malloc_type_realloc(*(*(v12 + 16) + 288), 8 * a2, 0x100004000313F17uLL);
  memcpy(*(*(v12 + 16) + 288), a1, 8 * a2);
  v14 = *(v12 + 16);
  *(v14 + 160) |= 0x8000u;
  *(v14 + 40) = a2;
  *(v14 + 8) = _qpPathMatch;
  v15 = 128;
  if (v5)
  {
    v15 = 524416;
  }

  *(v14 + 32) |= v15;
  return v12;
}

void *makeORNode(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(a1 + 48);
  if (v6 == 16)
  {
    goto LABEL_2;
  }

  v8 = *(a2 + 48);
  if (v8 == 16 || v6 == 32)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = __db_query_tree_apply_block_block_invoke;
    v15 = &unk_1E8198ED0;
    v16 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, &v12, 0);
    if (v3)
    {
      return v5;
    }

    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = __db_query_tree_apply_block_block_invoke;
    v15 = &unk_1E8198ED0;
    v16 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v5, &v12, &__block_literal_global_25_15416);
    return v9;
  }

  if (v8 == 32)
  {
LABEL_2:
    if (a3)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __db_query_tree_apply_block_block_invoke;
      v15 = &unk_1E8198ED0;
      v16 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a1, &v12, 0);
    }

    return a2;
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
    if ((v3 & 1) == 0)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __db_query_tree_apply_block_block_invoke;
      v15 = &unk_1E8198ED0;
      v16 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v5, &v12, &__block_literal_global_25_15416);
      v5 = v10;
    }

    *v7 = v5;
    v7[1] = a2;
    *(v7 + 24) = 1;
  }

  return v7;
}

void si_query_set_weighted_rank_node(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 0x40000000;
  v6 = __db_query_tree_apply_block_block_invoke;
  v7 = &unk_1E8198ED0;
  v8 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a2, &v4, &__block_literal_global_25_15416);
  *(a1 + 272) = v3;
  v4 = MEMORY[0x1E69E9820];
  v5 = 0x40000000;
  v6 = __db_query_tree_apply_block_block_invoke;
  v7 = &unk_1E8198ED0;
  v8 = &__block_literal_global_9564;
  db_query_tree_apply_block_with_meta(v3, &v4, 0);
}

int32x2_t __si_query_set_weighted_rank_node_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 4)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3 <= 0xE && ((0x5060u >> v3) & 1) != 0)
      {
        if (v3)
        {
          LODWORD(v3) = dword_1C2C005C0[v3];
        }

        *(v2 + 24) = v3;
        result = vrev64_s32(*(v2 + 52));
        *(v2 + 52) = result;
      }
    }
  }

  return result;
}

void destroy_lifting_rule(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = __db_query_tree_apply_block_block_invoke;
        v5[3] = &unk_1E8198ED0;
        v5[4] = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v4, v5, 0);
        v2 = *(a1 + 8);
      }
    }
  }

  free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
}

void clear_lifting_rules(uint64_t a1)
{
  v1 = *(a1 + 264);
  v2 = *(a1 + 288);
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  if (v1)
  {
    if (v2 >= 1)
    {
      v3 = v1;
      do
      {
        v4 = *v3;
        v5 = v3[2];
        destroy_lifting_rule(&v4);
        v3 += 3;
        --v2;
      }

      while (v2);
    }

    free(v1);
  }
}

BOOL SIQueryAddResultGenerator(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 720);
  v5 = *(a1 + 360);
  v6 = *(a1 + 208);
  ORNode = queryFromCFString(a2);
  if (dword_1EBF46AD0 >= 5)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 8);
      buf = 138412546;
      buf_4 = a2;
      v19 = 2112;
      *v20 = v16;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Adding generator %@ to query %@", &buf, 0x16u);
    }

    *__error() = v14;
  }

  v8 = ORNode != 0;
  if (ORNode)
  {
    v9 = *(a1 + 88);
    if (v9)
    {
      ORNode = makeORNode(v9, ORNode, 1);
    }

    *(a1 + 88) = ORNode;
  }

  else
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      buf_4 = "SIQueryAddResultGenerator";
      v19 = 1024;
      *v20 = 1054;
      *&v20[4] = 2112;
      *&v20[6] = a2;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding generator: %@", &buf, 0x1Cu);
    }

    *__error() = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __initQuery_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = a2;
  v3 = *(a2 + 48);
  if ((v3 - 1) >= 2)
  {
    if (v3 != 4)
    {
      return 0;
    }

    v4 = *(a2 + 16);
    if (!v4)
    {
      return 0;
    }

    if (*(v4 + 24) != 1)
    {
      return 0;
    }

    v5 = *(v4 + 72);
    if (strchr(v5, 42))
    {
      return 0;
    }

    v6 = *v4;
    if (!strcmp(v6, "kMDItemContentTypeTree"))
    {
      if (CFSetContainsValue(initQuery_treeTypeSet, v5))
      {
        return 1;
      }
    }

    else if (!strcmp(v6, "kMDItemContentType") || !strcmp(v6, "_kMDItemGroupId"))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

CFSetRef __initQuery_block_invoke()
{
  __dst[138] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E8196798, 0x450uLL);
  *&v2.version = kCStringSetCallBacks;
  v2.copyDescription = unk_1EEADFE90;
  *&v2.equal = xmmword_1EEADFE98;
  v2.release = 0;
  result = CFSetCreate(*MEMORY[0x1E695E480], __dst, 138, &v2);
  initQuery_treeTypeSet = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFSetRef __query_needsWhatFieldsMatched_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1E8196768;
  v2[1] = *&off_1E8196778;
  v2[2] = xmmword_1E8196788;
  result = CFSetCreate(*MEMORY[0x1E695E480], v2, 6, MEMORY[0x1E695E9F8]);
  query_needsWhatFieldsMatched_dict = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SIQueryCreateWithItemsAndCompletionString(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int128 a11, __int128 a12, uint64_t a13)
{
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14[0] = 1;
  v14[1] = a1;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  *(&v21 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v22 = a10;
  v23 = a11;
  v24 = a12;
  *&v25[0] = a13;
  memset(v25 + 8, 0, 48);
  v26 = 0u;
  v27 = 0u;
  LOWORD(v28) = 0;
  *(&v28 + 1) = 0;
  *&v29 = 0;
  BYTE8(v29) = 0;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, 19);
  return SIQueryCreateWithParameters(v14);
}

uint64_t SIQueryCreateWithItemsAndCompletionStringWithWeights(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, unsigned int a10, __int128 a11, __int128 a12, uint64_t a13)
{
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14[0] = 1;
  v14[1] = a1;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  *(&v21 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v22 = a10;
  v23 = a11;
  v24 = a12;
  *&v25[0] = a13;
  memset(v25 + 8, 0, 48);
  v26 = 0u;
  v27 = 0u;
  LOWORD(v28) = 0;
  *(&v28 + 1) = 0;
  *&v29 = 0;
  BYTE8(v29) = 0;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, 19);
  return SIQueryCreateWithParameters(v14);
}

uint64_t SIQueryCreateWithItemsAndCompletionStringWithCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, unsigned int a11, __int128 a12, __int128 a13, uint64_t a14)
{
  memset(v36, 0, sizeof(v36));
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15[0] = 1;
  v15[1] = a1;
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  *(&v22 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v23 = a11;
  v24 = a12;
  v25 = a13;
  *&v26 = a14;
  *(&v26 + 1) = a9;
  v27 = 0u;
  v28 = 0u;
  *&v29 = 0;
  v30 = 0u;
  v31 = 0u;
  LOWORD(v32) = 0;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  BYTE8(v33) = 0;
  v35 = 0u;
  memset(v36, 0, 19);
  v34 = 0u;
  return SIQueryCreateWithParameters(v15);
}

uint64_t SIQueryCreateWithItemsAndCompletionStringWithWeightsForCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __int128 a10, unsigned int a11, __int128 a12, __int128 a13, uint64_t a14)
{
  memset(v36, 0, sizeof(v36));
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15[0] = 1;
  v15[1] = a1;
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  *(&v22 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v23 = a11;
  v24 = a12;
  v25 = a13;
  *&v26 = a14;
  *(&v26 + 1) = a9;
  v27 = 0u;
  v28 = 0u;
  *&v29 = 0;
  v30 = 0u;
  v31 = 0u;
  LOWORD(v32) = 0;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  BYTE8(v33) = 0;
  v35 = 0u;
  memset(v36, 0, 19);
  v34 = 0u;
  return SIQueryCreateWithParameters(v15);
}

uint64_t SIQueryCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v33 = 0uLL;
  v34 = 0u;
  v30 = 0u;
  v20 = 0;
  v14 = 0;
  v11[0] = 1;
  v11[1] = a1;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v15 = 0uLL;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  add = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  Current = CFAbsoluteTimeGetCurrent();
  v28 = 0u;
  v29 = 0u;
  *&v30 = 0;
  v31 = 0u;
  v32 = 0u;
  *&v34 = 0;
  BYTE8(v34) = 0;
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  return SIQueryCreateWithParameters(v11);
}

uint64_t SIQuerySetBatchingParameters(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, float a5, float a6, float a7)
{
  v13 = result;
  v14 = (result + 324);
  v15 = *(result + 324);
  v16 = *(result + 340);
  v17 = *(result + 16);
  if (v17)
  {
    v21 = *(result + 340);
    v22 = *(result + 324);
    v23.length = CFArrayGetCount(*(result + 16));
    v23.location = 0;
    result = CFArrayContainsValue(v17, v23, @"_kMDItemSDBInfo");
    v16 = v21;
    v15 = v22;
    if (a3 >= 0x64)
    {
      v18 = 100;
    }

    else
    {
      v18 = a3;
    }

    if (a4 >= 0x64)
    {
      v19 = 100;
    }

    else
    {
      v19 = a4;
    }

    if (a2 >= 0x64)
    {
      v20 = 100;
    }

    else
    {
      v20 = a2;
    }

    if (result)
    {
      a3 = v18;
      a4 = v19;
      a2 = v20;
    }
  }

  *(v13 + 356) = 1;
  *(v13 + 300) = a5;
  *(v13 + 304) = a2;
  *(v13 + 308) = a6;
  *(v13 + 312) = a3;
  *(v13 + 316) = a7;
  *(v13 + 320) = a4;
  *v14 = v15;
  v14[1] = v16;
  return result;
}

uint64_t SIQuerySetDominantRankingQueryCount(uint64_t result, int a2, int a3)
{
  *(result + 328) = a2;
  *(result + 332) = a3;
  return result;
}

void *SIQuerySetFuzzyQueryInfo(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[79] = a3;
  result[78] = a2;
  result[81] = a5;
  result[80] = a4;
  return result;
}

__CFArray *si_attrs_remapping_copy(const __CFArray *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2 ? si_cab_attr_rewriteDict() : si_attr_rewriteDict();
  v4 = v3;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  v13.location = 0;
  v13.length = 0;
  CFArrayAppendArray(Mutable, a1, v13);
  for (i = 0; i != v6; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    Value = CFDictionaryGetValue(v4, ValueAtIndex);
    if (Value)
    {
      v11 = Value;
    }

    else
    {
      v11 = ValueAtIndex;
    }

    CFArrayAppendValue(Mutable, v11);
  }

  return Mutable;
}

uint64_t si_cab_attr_rewriteDict()
{
  keys[26] = *MEMORY[0x1E69E9840];
  result = si_cab_attr_rewriteDict_sDict;
  if (!si_cab_attr_rewriteDict_sDict)
  {
    keys[0] = @"kMDItemFSSize";
    keys[1] = @"kMDItemFSCreationDate";
    keys[2] = @"kMDItemFSContentChangeDate";
    keys[3] = @"kMDItemFSOwnerGroupID";
    keys[4] = @"kMDItemFSOwnerUserID";
    keys[5] = @"kMDItemFSName";
    keys[6] = @"kMDItemFSLabel";
    keys[7] = @"kMDItemFSHasCustomIcon";
    keys[8] = @"kMDItemFSIsExtensionHidden";
    keys[9] = @"kMDItemFSNodeCount";
    keys[10] = @"kMDItemFSIsStationery";
    keys[11] = @"kMDItemFSTypeCode";
    keys[12] = @"kMDItemFSCreatorCode";
    keys[13] = @"kMDItemFSFinderFlags";
    keys[14] = @"kMDItemFSFileId";
    keys[15] = @"_kMDItemFSContentType";
    keys[16] = @"_kMDItemFSContentTypeTree";
    keys[17] = @"_kMDItemFSDisplayName";
    keys[18] = @"_kMDItemFSDisplayKind";
    keys[19] = @"_kMDItemSharedProjectID";
    keys[20] = @"_kMDItemExternalID";
    keys[21] = @"FPParentFileItemID";
    keys[22] = @"FPFilename";
    keys[23] = @"_kMDItemBundleID";
    keys[24] = @"kMDItemFileProviderID";
    keys[25] = @"kMDItemIsTrashed";
    values[0] = @"kMDItemLogicalSize";
    values[1] = @"_kMDItemCreationDate";
    values[2] = @"_kMDItemContentChangeDate";
    values[3] = @"_kMDItemOwnerGroupID";
    values[4] = @"_kMDItemOwnerUserID";
    values[5] = @"_kMDItemFileName";
    values[6] = @"_kMDItemFinderLabel";
    values[7] = @"_kMDItemHasCustomIcon";
    values[8] = @"_kMDItemIsExtensionHidden";
    values[9] = @"_kMDItemNodeCount";
    values[10] = @"_kMDItemIsStationery";
    values[11] = @"_kMDItemTypeCode";
    values[12] = @"_kMDItemCreatorCode";
    values[13] = @"_kMDItemFinderFlags";
    values[14] = @"_kMDItemFileId";
    values[15] = @"kMDItemContentType";
    values[16] = @"kMDItemContentTypeTree";
    values[17] = @"kMDItemDisplayName";
    values[18] = @"kMDItemKind";
    values[19] = &stru_1F4284FD0;
    values[20] = @"_FPItemIdentifier";
    values[21] = @"_FPParentFileItemID";
    values[22] = @"_kMDItemFileName";
    values[23] = @"_FPUserFSUSBFileProviderID";
    values[24] = @"_FPUserFSUSBFileProviderID";
    values[25] = @"_FPIsTrashed";
    v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 26, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = 0;
    atomic_compare_exchange_strong(&si_cab_attr_rewriteDict_sDict, &v2, v1);
    if (v2)
    {
      CFRelease(v1);
    }

    result = si_cab_attr_rewriteDict_sDict;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_attr_rewriteDict()
{
  keys[1] = *MEMORY[0x1E69E9840];
  result = si_attr_rewriteDict_sDict;
  if (!si_attr_rewriteDict_sDict)
  {
    values = @"kMDItemLogicalSize";
    keys[0] = @"kMDItemFSSize";
    v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = 0;
    atomic_compare_exchange_strong(&si_attr_rewriteDict_sDict, &v2, v1);
    if (v2)
    {
      CFRelease(v1);
    }

    result = si_attr_rewriteDict_sDict;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int16 **__queryRemapFieldsForStore_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v73 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) != 4)
  {
    goto LABEL_121;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_121;
  }

  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_121;
  }

  if (!strcmp(*v3, "kMDItemDisplayName"))
  {
    v10 = **(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 168);
      valuePtr = 0;
      if (v11)
      {
        Value = CFDictionaryGetValue(v11, @"_showAllExtensions");
        if (Value)
        {
          v13 = Value;
          v14 = CFGetTypeID(Value);
          if (v14 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
            if (valuePtr)
            {
              __endptr[0] = 0;
              asprintf(__endptr, "_kMDItemDisplayNameWithExtensions == X || (_kMDItemDisplayNameWithExtensions != * && kMDItemDisplayName == X)");
              if (__endptr[0])
              {
                query_node_with_ann = db_make_query_node_with_ann(__endptr[0], 0);
                if (query_node_with_ann && (v16 = query_node_with_ann, *query_node_with_ann) && query_node_with_ann[1])
                {
                  v17 = (*query_node_with_ann)[24];
                  if (v17 == 4)
                  {
                    v18 = query_node_with_ann[1];
                  }

                  else
                  {
                    v18 = *query_node_with_ann;
                  }

                  if (v17 == 4)
                  {
                    v19 = query_node_with_ann;
                  }

                  else
                  {
                    v19 = query_node_with_ann + 1;
                  }

                  if (v18[24] != 2)
                  {
                    v63 = __si_assert_copy_extra_661(*(*(a1 + 40) + 32));
                    v64 = v63;
                    v65 = "";
                    if (v63)
                    {
                      v65 = v63;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s Bad generated query mid-node; unexpected type %d", "SIQueryC.c", 3556, "midNode->type == AND_NODE", v65, v18[24]);
                    free(v64);
                    if (__valid_fs(*(*(a1 + 40) + 32)))
                    {
                      v66 = 2989;
                    }

                    else
                    {
                      v66 = 3072;
                    }

                    *v66 = -559038737;
                    abort();
                  }

                  v20 = 4 * (*(*(*v18 + 16) + 24) != 1);
                  v21 = v2[2];
                  v22 = *(v21 + 6);
                  v23 = v22 - 5;
                  if ((v22 - 5) <= 1)
                  {
                    if (v22 == 5)
                    {
                      v24 = 1;
                    }

                    else
                    {
                      v24 = 2;
                    }

                    *(v21 + 6) = v24;
                  }

                  db_clone_query_node(v2);
                  v26 = *(v25 + 16);
                  v27 = *v26;
                  *v26 = **(*v19 + 2);
                  **(*v19 + 2) = v27;
                  v28 = *v19;
                  *v19 = v25;
                  db_free_query_node(v28);
                  v29 = *&v18[v20];
                  *&v18[v20] = v2;
                  db_free_query_node(v29);
                  if (v23 <= 1)
                  {
                    apply_demorgans_law(v16);
                  }
                }

                else
                {
                  v16 = v2;
                }

                free(__endptr[0]);
                v2 = v16;
              }
            }
          }
        }
      }
    }

    goto LABEL_121;
  }

  if (!strncmp(v4, "kMDItemFS", 9uLL) && strcmp(v4, "kMDItemFSLabel"))
  {
    v30 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v4, 0x8000100u, *MEMORY[0x1E695E498]);
    v31 = CFDictionaryGetValue(*(a1 + 48), v30);
    CFRelease(v30);
    if (v31)
    {
      v32 = v2[2];
      *(v32 + 1) = 0;
      v2[4] = 0;
      *(v32 + 12) = 100;
      *(v32 + 4) &= 0xFFFFFFFFFFFFF77FLL;
      free(*v32);
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      *__endptr = 0u;
      CFStringGetCString(v31, __endptr, 80, 0x8000100u);
      *v2[2] = strdup(__endptr);
    }

    goto LABEL_121;
  }

  v6 = *(v3 + 72);
  if (!v6)
  {
    goto LABEL_121;
  }

  v7 = *(v3 + 24);
  if ((v7 | 4) != 5)
  {
    goto LABEL_121;
  }

  if (!strcmp(v4, "kMDItemFSLabel"))
  {
    v33 = atoi(v6);
    if (v33 > 3)
    {
      if (v33 > 5)
      {
        if (v33 == 6)
        {
          v34 = str_label_red;
        }

        else
        {
          if (v33 != 7)
          {
            goto LABEL_121;
          }

          v34 = &str_label_orange;
        }
      }

      else if (v33 == 4)
      {
        v34 = str_label_blue;
      }

      else
      {
        v34 = str_label_yellow;
      }
    }

    else if (v33 > 1)
    {
      if (v33 == 2)
      {
        v34 = str_label_green;
      }

      else
      {
        v34 = str_label_purple;
      }
    }

    else
    {
      if (!v33)
      {
        v47 = *v6;
        if (v47 == 42)
        {
          if (v6[1])
          {
            goto LABEL_121;
          }

          if (v7 == 1)
          {
            goto LABEL_113;
          }

          if (v7 != 5)
          {
            goto LABEL_121;
          }

          goto LABEL_114;
        }

        if (v47 == 48)
        {
          v58 = -*(v6 + 1);
        }

        else
        {
          v58 = 48 - v47;
        }

        if (v58)
        {
          goto LABEL_121;
        }

LABEL_111:
        if (v7 != 1)
        {
          if (v7 != 5)
          {
            goto LABEL_121;
          }

LABEL_113:
          __endptr[0] = 0;
          asprintf(__endptr, "%s=*||%s=*||%s=*||%s=*||%s=*||%s=*||%s=*", "kMDLabel_yekauorssrbpta3hdteqgbglma");
          goto LABEL_115;
        }

LABEL_114:
        __endptr[0] = 0;
        asprintf(__endptr, "!(%s=*||%s=*||%s=*||%s=*||%s=*||%s=*||%s=*)", "kMDLabel_yekauorssrbpta3hdteqgbglma");
LABEL_115:
        if (__endptr[0])
        {
          v59 = db_make_query_node_with_ann(__endptr[0], 0);
          if (v59)
          {
            v60 = v59;
            db_free_query_node(v2);
            v2 = v60;
          }

          free(__endptr[0]);
        }

        goto LABEL_121;
      }

      if (v33 != 1)
      {
        goto LABEL_121;
      }

      v34 = str_label_gray;
    }

    v48 = *v34;
    if (*v34)
    {
      *(v3 + 8) = 0;
      v2[4] = 0;
      *(v3 + 48) = 100;
      *(v3 + 32) &= 0xFFFFFFFFFFFFF77FLL;
      free(v4);
      v49 = strdup(v48);
      v50 = v2[2];
      *v50 = v49;
      **(v50 + 9) = 42;
      *(*(v2[2] + 9) + 1) = 0;
    }

    goto LABEL_121;
  }

  if (!strcmp(v4, "kMDLabel_zya2exypzrhulknkk5enqbj33y"))
  {
    v8 = *v6;
    if (!(v8 == 42 ? -*(v6 + 1) : 42 - v8))
    {
      goto LABEL_111;
    }
  }

  if (v7 == 1)
  {
    if (!strncmp(v4, "_kMDItemQueryPath", 0x11uLL))
    {
      v35 = v4 + 17;
      v36 = (*(v3 + 32) >> 19) & 1;
      if (v4[17])
      {
        if (v4[17] == 79 && v4[18] == 73 && v4[19] == 68)
        {
          v35 = v4 + 20;
        }

        strncmp(v35, "Flat", 4uLL);
      }

      __endptr[0] = 0;
      strtoll(v6, __endptr, 0);
      if (__endptr[0] != v6 && !*__endptr[0])
      {
        v55 = *(v2[2] + 6);
        PathNodeForOid = createPathNodeForOid(*(a1 + 40));
        if (!PathNodeForOid)
        {
          goto LABEL_121;
        }

LABEL_101:
        v56 = PathNodeForOid;
        db_free_query_node(v2);
        v2 = v56;
        goto LABEL_121;
      }

      v44 = *(a1 + 40);
      v51 = v2[2];
      v52 = *(v51 + 9);
      v53 = *(v51 + 6);
LABEL_98:
      PathNodeForOid = createPathNodeForPath(v44);
      if (!PathNodeForOid)
      {
        goto LABEL_121;
      }

      goto LABEL_101;
    }
  }

  else if (v7 != 5)
  {
    goto LABEL_121;
  }

  v37 = strlen(v4);
  if (v37 > 20)
  {
    if (v37 == 21)
    {
      v41 = "kMDItemFileProviderID";
      v42 = v4;
      v43 = 21;
    }

    else
    {
      if (v37 != 26)
      {
        goto LABEL_121;
      }

      v41 = "_FPUserFSUSBFileProviderID";
      v42 = v4;
      v43 = 26;
    }

    if (strncmp(v42, v41, v43))
    {
      goto LABEL_121;
    }
  }

  else
  {
    if (v37 == 12)
    {
      v38 = "_FPIsTrashed";
      v39 = v4;
      v40 = 12;
      goto LABEL_72;
    }

    if (v37 != 16)
    {
      goto LABEL_121;
    }

    if (strncmp(v4, "_kMDItemBundleID", 0x10uLL))
    {
      v38 = "kMDItemIsTrashed";
      v39 = v4;
      v40 = 16;
LABEL_72:
      if (strncmp(v39, v38, v40) || (v7 | 4) != 5)
      {
        goto LABEL_121;
      }

      if (atoi(v6))
      {
        if (v7 == 1)
        {
LABEL_76:
          v44 = *(a1 + 40);
          goto LABEL_98;
        }
      }

      else if (v7 == 5)
      {
        goto LABEL_76;
      }

      free_qp(v3);
      v2[2] = 0;
      *(v2 + 24) = 32;
      goto LABEL_121;
    }
  }

  if ((v7 | 4) == 5 && (*v6 == 42 && !v6[1] || !strcmp(v6, "com.apple.filesystems.UserFS.FileProvider")))
  {
    v45 = 32;
    v46 = 16;
  }

  else
  {
    v45 = 16;
    v46 = 32;
  }

  if (v7 == 5)
  {
    v57 = v46;
  }

  else
  {
    v57 = v45;
  }

  free_qp(v3);
  v2[2] = 0;
  *(v2 + 24) = v57;
LABEL_121:
  v61 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ___queryGoCracked_block_invoke_445(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = HIBYTE(*(*(a1 + 64) + 6584)) & 1;
  v6 = *(a1 + 40);
  v7 = *(a1 + 72) ^ 1u;
  v8 = *(*(a1 + 32) + 8) + 24;
  _CIFindTokens(a2);
  return 1;
}

_WORD *query_node_from_token_data(uint64_t a1, void *a2)
{
  v2 = a2;
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 0x40000000;
    v24 = __db_query_tree_apply_block_block_invoke;
    v25 = &unk_1E8198ED0;
    v26 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(a2, &v22, &__block_literal_global_25_15416);
    v5 = v4;
    free(*(v4[2] + 72));
    v6 = v5[2];
    *(v6 + 72) = 0;
    *(v6 + 32) = *(v6 + 32) & 0xFFFFFFFFFEFF7FCFLL | 0x8000;
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    v8 = CFSetCreateMutable(0, 0, 0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = __query_node_from_token_data_block_invoke;
    v21[3] = &__block_descriptor_tmp_453;
    v21[4] = v8;
    v21[5] = Mutable;
    Tokens = TokenDataGetTokens(a1, v21);
    v10 = 8 * (*(a1 + 20) + 1);
    MEMORY[0x1EEE9AC00](Tokens);
    v12 = context - v11;
    bzero(context - v11, v13);
    bzero(v12, 8 * *(a1 + 20));
    v19 = v12;
    v20 = 0;
    context[0] = Mutable;
    context[1] = v5;
    context[2] = a1;
    if (v8)
    {
      CFSetApplyFunction(v8, child_node_applier, context);
      v14 = *&v19[8 * v20];
      *&v19[8 * v20] = 0;
    }

    else
    {
      v14 = 0;
    }

    v22 = MEMORY[0x1E69E9820];
    v23 = 0x40000000;
    v24 = __db_query_tree_apply_block_block_invoke;
    v25 = &unk_1E8198ED0;
    v26 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v5, &v22, 0);
    CFRelease(Mutable);
    CFRelease(v8);
    if (v14)
    {
      v15 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
      v15[24] = 1;
      *v15 = v2;
      *(v15 + 1) = v14;
      v2 = v15;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v2;
}

void __query_node_from_token_data_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v7 = a5;
    v8 = (a4 + 4);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = v10 | (v9 << 16);
      v12 = v11;
      if (!*(v8 - 2))
      {
        CFSetAddValue(*(a1 + 32), v11);
      }

      if (v10 + v9 < a3)
      {
        Value = CFDictionaryGetValue(*(a1 + 40), v12);
        if (!Value)
        {
          Value = CFSetCreateMutable(0, 0, 0);
          CFDictionarySetValue(*(a1 + 40), v12, Value);
          CFRelease(Value);
        }

        CFSetAddValue(Value, (v8[1] | (*v8 << 16)));
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

_WORD *child_node_applier(unint64_t key, uint64_t a2)
{
  v3 = key;
  v4 = key >> 16;
  ++*(a2 + 32);
  Value = CFDictionaryGetValue(*a2, key);
  if (Value)
  {
    CFSetApplyFunction(Value, child_node_applier, a2);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(v6 + 8 * v7);
    *(v6 + 8 * v7) = 0;
  }

  else
  {
    v8 = 0;
    LODWORD(v7) = *(a2 + 32);
  }

  *(a2 + 32) = v7 - 1;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(v10 + 8);
  v12 = *(v10 + 20);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __db_query_tree_apply_block_block_invoke;
  v19[3] = &unk_1E8198ED0;
  v19[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v9, v19, &__block_literal_global_25_15416);
  v14 = v13;
  if ((*(*(a2 + 16) + 16) & 1) != 0 && (v3 >> 16) + v3 == v12)
  {
    v15 = malloc_type_malloc(v3 + 2, 0x3962C0FFuLL);
    *(v14[2] + 72) = v15;
    result = memcpy(v15, (v11 + v4), v3);
    *(*(v14[2] + 72) + v3) = 42;
    *(*(v14[2] + 72) + v3 + 1) = 0;
  }

  else
  {
    result = strndup((v11 + v4), v3);
    *(v14[2] + 72) = result;
  }

  if (v8)
  {
    result = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
    result[24] = 2;
    *result = v8;
    *(result + 1) = v14;
    v14 = result;
  }

  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  if (*(v17 + 8 * v18))
  {
    result = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
    result[24] = 1;
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    *result = *(v17 + 8 * v18);
    *(result + 1) = v14;
    v14 = result;
  }

  *(v17 + 8 * v18) = v14;
  return result;
}

void enqueueQuery(uint64_t *a1, int a2)
{
  v3 = a1[1];
  if (a2)
  {
    if ((*(v3 + 202) & 4) != 0)
    {
LABEL_5:
      v6 = a1[4];
      if (v6)
      {
        CFRelease(v6);
      }

      a1[4] = 0;
      v7 = a1[1];
      if (atomic_fetch_add((v7 + 584), 0xFFFFFFFF) == 1)
      {
        si_query_free(v7);
      }

      si_querypipe_release(a1[2]);

      free(a1);
      return;
    }

    v4 = a1[2];
    v5 = v3;
LABEL_4:
    si_querypipe_remove_process(v4, v5, 0, 1);
    goto LABEL_5;
  }

  priority = query_priority(a1[1]);
  v9 = *a1;
  v10 = *(*a1 + 8 * (priority + 14) + 1008);
  if (!v10)
  {
    v5 = a1[1];
    if ((*(v5 + 202) & 4) != 0)
    {
      goto LABEL_5;
    }

    v4 = a1[2];
    goto LABEL_4;
  }

  v11 = 8 * priority;
  v14 = 0;
  v12 = si_backtrace_routine_resolve(v9, *(a1[1] + 656), queryGo, a1, &v14);
  v13 = v14;

  si_enqueue_work_with_qos(v10, v11 + 9, v12, v13);
}

CFSetRef __tag_is_excepted_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1E8196580;
  v3 = @"com.apple.searchd";
  result = CFSetCreate(*MEMORY[0x1E695E480], &v2, 3, MEMORY[0x1E695E9F8]);
  tag_is_excepted_exceptedIds = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void *__queryRemapFieldsForStore_block_invoke_6(int a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    if (a3)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a3, &v7, 0);
    }

    if (a4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v7, 0);
    }

    free(v5);
    return 0;
  }

  return v5;
}

uint64_t createPathNodeForOid(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v21[511] = *MEMORY[0x1E69E9840];
  bzero(v20, 0x1000uLL);
  v19 = 0;
  if (v6)
  {
    SIPersistentIDStoreGetOidPathForOid(*(v10 + 1416), v8, v20, 1, &v19);
    v11 = v19;
    v12 = v20[0];
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = *(v10 + 6624);
    if (!v13)
    {
      goto LABEL_11;
    }

    Path = directoryStoreGetPath(v13, v8, v21);
    v19 = Path;
    if (!Path)
    {
      goto LABEL_11;
    }

    v20[0] = v8;
    v11 = Path + 1;
    v19 = Path + 1;
    v12 = v8;
    if (Path == -1)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
LABEL_11:
    query_node_with_ann = db_make_query_node_with_ann("false", 0);
    goto LABEL_12;
  }

  if (v20[v11 - 1] != 2)
  {
    v20[v11++] = 2;
    v19 = v11;
  }

  query_node_with_ann = makeOidScopeNode(v20, v11, v4, v2);
  v16 = *(query_node_with_ann + 16);
  *(v16 + 32) |= 0x200000uLL;
  asprintf((v16 + 72), "%llx", v8);
LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return query_node_with_ann;
}

uint64_t createPathNodeForPath(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v22[1] = *MEMORY[0x1E69E9840];
  bzero(v21, 0x1000uLL);
  if (v6)
  {
    v11 = *(v10 + 1416);
    if (*(v11 + 240))
    {
      goto LABEL_15;
    }

    v12 = *(v11 + 64);
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v21;
    v14 = v12();
  }

  else
  {
    v14 = 0;
    if (v8)
    {
      v15 = v22;
      v16 = v8;
      do
      {
        v17 = strchr(v16, 47);
        if (!v17)
        {
          break;
        }

        v16 = v17 + 1;
        ++v14;
        *v15-- = atoll(v17 + 1);
      }

      while (v14 != 512);
    }

    v13 = &v21[-8 * v14 + 4096];
  }

  if (!v14 || !*v13)
  {
LABEL_15:
    query_node_with_ann = db_make_query_node_with_ann("false", 0);
    goto LABEL_16;
  }

  if (*&v13[8 * v14 - 8] != 2)
  {
    *&v13[8 * v14++] = 2;
  }

  query_node_with_ann = makeOidScopeNode(v13, v14, v4, v2);
  *(*(query_node_with_ann + 16) + 72) = strdup(v8);
LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
  return query_node_with_ann;
}

void *si_query_get_scope_node(uint64_t a1, dispatch_once_t *predicate, const __CFArray *a3)
{
  if (!a3 || predicate[22] == a3)
  {
    v5 = predicate[29];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __si_query_get_scope_node_block_invoke;
    v6[3] = &__block_descriptor_tmp_194;
    v6[4] = predicate;
    v6[5] = a1;
    if (v5 != -1)
    {
      dispatch_once(predicate + 29, v6);
    }

    return predicate[28];
  }

  else
  {

    return createNodeFromScopes(a1, predicate, a3);
  }
}

uint64_t __si_query_evaluate_move_block_invoke(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v1;
  LODWORD(v6) = 0;
  v7 = *(v4 + 32);
  if ((v7 & 0xC0000) != 0 && (v7 & 0x300000) == 0x100000)
  {
    v8 = *(v4 + 72);
    bzero(__src, 0x1000uLL);
    v9 = *(*(v5 + 48) + 1416);
    if (!*(v9 + 240))
    {
      v6 = *(v9 + 64);
      if (!v6)
      {
        goto LABEL_6;
      }

      v10 = v6();
      v4 = *(v3 + 16);
      if (v10)
      {
        v11 = v10;
        *(v4 + 160) |= 0x8000u;
        *(*(v3 + 16) + 288) = malloc_type_realloc(*(v4 + 288), 8 * v10, 0x100004000313F17uLL);
        memcpy(*(*(v3 + 16) + 72), __src, 8 * v11);
        v4 = *(v3 + 16);
        *(v4 + 40) = v11;
        *(v4 + 32) &= ~0x100000uLL;
        LODWORD(v6) = 1;
        goto LABEL_6;
      }
    }

    LODWORD(v6) = 0;
LABEL_6:
    v7 = *(v4 + 32);
  }

  if ((v7 & 0x300000) == 0x200000 && **(v4 + 288) == **(v5 + 56))
  {
    if (v6)
    {
      *(*(*(v5 + 32) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(v5 + 40) + 8) + 24) = 1;
      v12 = *(v4 + 72);
      bzero(__src, 0x1000uLL);
      v13 = *(*(v5 + 48) + 1416);
      if (!*(v13 + 240) && (v16 = *(v13 + 64)) != 0 && (v17 = v16(), v4 = *(v3 + 16), v17))
      {
        v18 = v17;
        *(v4 + 160) |= 0x8000u;
        *(*(v3 + 16) + 288) = malloc_type_realloc(*(v4 + 288), 8 * v17, 0x100004000313F17uLL);
        memcpy(*(*(v3 + 16) + 288), __src, 8 * v18);
        v19 = *(v3 + 16);
        *(v19 + 40) = v18;
        *(v19 + 32) &= ~0x100000uLL;
        if (**(v19 + 288) == **(v5 + 56))
        {
          *(*(*(v5 + 32) + 8) + 24) = 1;
          *(*(*(v5 + 40) + 8) + 24) = 0;
        }
      }

      else
      {
        *(v4 + 32) |= 0x100000uLL;
      }
    }
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

void ProcessPathForScope(__CFArray *a1, const __CFString *a2, const __CFString *cf1)
{
  v3 = cf1;
  if (CFEqual(cf1, a2))
  {
    goto LABEL_7;
  }

  if (CFStringHasPrefix(v3, a2))
  {
    Length = CFStringGetLength(a2);
    CharacterAtIndex = CFStringGetCharacterAtIndex(v3, Length);
  }

  else
  {
    if (!CFStringHasPrefix(a2, v3))
    {
      return;
    }

    v8 = CFStringGetLength(v3);
    CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v8);
    v3 = a2;
  }

  if (CharacterAtIndex == 47)
  {
LABEL_7:

    CFArrayAppendValue(a1, v3);
  }
}

void *__si_query_get_scope_node_block_invoke(uint64_t a1)
{
  result = createNodeFromScopes(*(a1 + 40), *(a1 + 32), *(*(a1 + 32) + 176));
  *(*(a1 + 32) + 224) = result;
  return result;
}

void *createNodeFromScopes(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!theArray)
  {
    goto LABEL_32;
  }

  v6 = *(a2 + 200);
  if ((*(a1 + 6584) & 0x10) != 0)
  {
    if (CFArrayGetCount(theArray))
    {
      v20 = processScopes(a1, theArray, 0, 1, (v6 >> 9) & 1, *(a2 + 592), *(a2 + 600), *(a2 + 360));
      v9 = v20;
      if (v20)
      {
        _rewriteQuery(v20, *(a2 + 360));
      }

      goto LABEL_33;
    }

LABEL_32:
    v9 = 0;
    goto LABEL_33;
  }

  if (!*(a1 + 6624))
  {
    goto LABEL_32;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_28;
  }

  v8 = Count;
  v9 = 0;
  for (i = 0; i != v8; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 == CFStringGetTypeID())
    {
      bzero(buffer, 0x400uLL);
      if ((CFStringGetCharacterAtIndex(ValueAtIndex, 0) == 47 || !CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u)) && GetCPathForUser(a1, ValueAtIndex, buffer))
      {
        if (v9)
        {
          continue;
        }

        query_node_with_ann = db_make_query_node_with_ann("false", 0);
      }

      else
      {
        query_node_with_ann = addNodeForCPath(*(a1 + 1416));
      }

      v9 = query_node_with_ann;
    }

    else
    {
      v14 = CFArrayGetCount(ValueAtIndex);
      bzero(buffer, 0x400uLL);
      v15 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      if (GetCPathForUser(a1, v15, buffer))
      {
        ORNode = db_make_query_node_with_ann("false", 0);
      }

      else
      {
        ORNode = addNodeForCPath(*(a1 + 1416));
        if (v14 >= 2)
        {
          v17 = 0;
          for (j = 1; j != v14; ++j)
          {
            v19 = CFArrayGetValueAtIndex(ValueAtIndex, j);
            if (!GetCPathForUser(a1, v19, buffer))
            {
              v17 = addNodeForCPath(*(a1 + 1416));
            }
          }

          if (v17)
          {
            *(v17 + 24) ^= 8u;
            ORNode = makeAndNode(ORNode, v17, 1, 1);
          }
        }
      }

      if (v9)
      {
        ORNode = makeORNode(v9, ORNode, 1);
      }

      v9 = ORNode;
    }
  }

  if (!v9)
  {
LABEL_28:
    v9 = db_make_query_node_with_ann("false", 0);
  }

LABEL_33:
  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

void *processScopes(uint64_t a1, const __CFArray *a2, CFIndex a3, int a4, uint64_t a5, int a6, uint64_t *a7, double a8)
{
  v91 = a7;
  v88 = a6;
  v82 = a4;
  v85 = a3;
  v87 = a1;
  v103[128] = *MEMORY[0x1E69E9840];
  v86 = a2;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, 0, 0);
  v12 = v85;
  v13 = Count - v85;
  MEMORY[0x1EEE9AC00](Mutable);
  v83 = &v80 - 64 * (Count - v85);
  bzero(v83, v14);
  v13 *= 8;
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, v13);
  MEMORY[0x1EEE9AC00](v17);
  bzero(v16, v13);
  MEMORY[0x1EEE9AC00](v18);
  v89 = v16;
  bzero(v16, v13);
  v20 = Count <= v12;
  v81 = Count - v12;
  v84 = Mutable;
  v90 = Count;
  v21 = v87;
  if (v20)
  {
LABEL_21:
    v38 = CFSetGetCount(Mutable);
    v83 = &v80;
    MEMORY[0x1EEE9AC00](v38);
    v40 = (&v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v40, v39);
    if (v38)
    {
      CFSetGetValues(Mutable, v40);
    }

    v41 = v85;
    v42 = *&v16[8 * v85];
    if (*&v42 == 0.0)
    {
      ScopeNode = _makeScopeNode(v42, a5, 0);
    }

    else
    {
      ScopeNode = makeScopeNode(*&v42, v42, a5, 0);
    }

    ORNode = ScopeNode;
    v86 = v40;
    v87 = v38;
    if (v38 >= 1)
    {
      do
      {
        v45 = *&v16[8 * v41];
        v47 = *v40++;
        v46 = v47;
        if (*&v45 == 0.0)
        {
          v48 = _makeScopeNode(v45, a5, v46);
        }

        else
        {
          v48 = makeScopeNode(*&v45, v45, a5, v46);
        }

        ORNode = makeORNode(ORNode, v48, 1);
        --v38;
      }

      while (v38);
    }

    v49 = v88;
    if (v88 >= 1)
    {
      v50 = v91;
      v51 = v88;
      do
      {
        v52 = *&v16[8 * v41];
        v54 = *v50++;
        v53 = v54;
        if (*&v52 == 0.0)
        {
          v55 = _makeScopeNode(v52, a5, v53);
        }

        else
        {
          v55 = makeScopeNode(*&v52, v52, a5, v53);
        }

        ORNode = makeORNode(ORNode, v55, 1);
        --v51;
      }

      while (v51);
    }

    v56 = v89[v41];
    if (v56)
    {
      ORNode = makeAndNode(ORNode, v56, 1, 1);
    }

    v57 = v41 + 1;
    if (v41 + 1 < Count)
    {
      do
      {
        v58 = *&v16[8 * v57];
        if (*&v58 == 0.0)
        {
          v59 = _makeScopeNode(v58, a5, 0);
        }

        else
        {
          v59 = makeScopeNode(*&v58, v58, a5, 0);
        }

        v60 = v59;
        v61 = v86;
        v62 = v87;
        if (v87 >= 1)
        {
          do
          {
            v63 = *&v16[8 * v57];
            v65 = *v61;
            v61 = (v61 + 8);
            v64 = v65;
            if (*&v63 == 0.0)
            {
              v66 = _makeScopeNode(v63, a5, v64);
            }

            else
            {
              v66 = makeScopeNode(*&v63, v63, a5, v64);
            }

            v60 = makeORNode(v60, v66, 1);
            --v62;
          }

          while (v62);
        }

        v67 = v91;
        v68 = v49;
        if (v88 >= 1)
        {
          do
          {
            v69 = *&v16[8 * v57];
            v71 = *v67++;
            v70 = v71;
            if (*&v69 == 0.0)
            {
              v72 = _makeScopeNode(v69, a5, v70);
            }

            else
            {
              v72 = makeScopeNode(*&v69, v69, a5, v70);
            }

            v60 = makeORNode(v60, v72, 1);
            --v68;
          }

          while (v68);
        }

        v73 = v89[v57];
        if (v73)
        {
          v60 = makeAndNode(v60, v73, 1, 1);
        }

        v74 = v90;
        ORNode = makeORNode(ORNode, v60, 1);
        ++v57;
      }

      while (v57 != v74);
    }

    _rewriteQuery(ORNode, a8);
    CFRelease(v84);
  }

  else
  {
    *&v19 = 136316162;
    v80 = v19;
    v22 = v85;
    while (1)
    {
      bzero(v103, 0x400uLL);
      ValueAtIndex = CFArrayGetValueAtIndex(v86, v22);
      v24 = CFGetTypeID(ValueAtIndex);
      if (v24 == CFArrayGetTypeID())
      {
        if ((v82 & 1) == 0)
        {
          goto LABEL_58;
        }

        v25 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        v26 = processScopes(v21, ValueAtIndex, 1, 0, a5, v88, v91, a8);
        v27 = v22 - v85;
        v89[v22 - v85] = v26;
        ValueAtIndex = v25;
      }

      else
      {
        v27 = v22 - v85;
      }

      LOBYTE(v103[0]) = 0;
      CFStringGetFileSystemRepresentation(ValueAtIndex, v103, 1024);
      v28 = &v83[64 * v27];
      *&v16[8 * v27] = v28;
      *v28 = 0;
      v92 = 0;
      v29 = *(v21 + 1416);
      v30 = &v16[8 * v27];
      if (((*(v29 + 144))() & 1) == 0)
      {
        break;
      }

      v31 = *__error();
      v32 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v37 = *v30;
        v93 = v80;
        v94 = "processScopes";
        v95 = 1024;
        v96 = 6631;
        v97 = 2112;
        v98 = ValueAtIndex;
        v99 = 2080;
        v100 = v28;
        v101 = 2048;
        v102 = v37;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: scopePath: %@ / %s %f", &v93, 0x30u);
      }

      *__error() = v31;
      if (v91 && v92)
      {
        v33 = CFArrayGetCount(v92);
        Mutable = v84;
        Count = v90;
        v21 = v87;
        if (v33 >= 1)
        {
          v34 = v33;
          for (i = 0; i != v34; ++i)
          {
            v36 = CFArrayGetValueAtIndex(v92, i);
            CFSetAddValue(Mutable, v36);
          }
        }

        CFRelease(v92);
        if (++v22 >= Count)
        {
          goto LABEL_21;
        }
      }

      else
      {
        ++v22;
        Count = v90;
        Mutable = v84;
        v21 = v87;
        if (v22 >= v90)
        {
          goto LABEL_21;
        }
      }
    }

    Mutable = v84;
LABEL_58:
    v75 = v81;
    v76 = v89;
    if (v81 >= 1)
    {
      do
      {
        v77 = *v76;
        if (*v76)
        {
          v103[0] = MEMORY[0x1E69E9820];
          v103[1] = 0x40000000;
          v103[2] = __db_query_tree_apply_block_block_invoke;
          v103[3] = &unk_1E8198ED0;
          v103[4] = &__block_literal_global_174;
          db_query_tree_apply_block_with_meta(v77, v103, 0);
        }

        ++v76;
        --v75;
      }

      while (v75);
    }

    CFRelease(Mutable);
    ORNode = 0;
  }

  v78 = *MEMORY[0x1E69E9840];
  return ORNode;
}

uint64_t GetCPathForUser(uint64_t a1, CFStringRef string, char *buffer)
{
  if (!CFStringGetFileSystemRepresentation(string, buffer, 1024))
  {
    return 0xFFFFFFFFLL;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = *(a1 + 1416);
    if (*(v5 + 240))
    {
      return 0xFFFFFFFFLL;
    }

    if ((*(v5 + 56))(v5, buffer, 0, 0, 0))
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
    if (stat(buffer, &v7) == -1)
    {
      return *__error();
    }

    else
    {
      return 0;
    }
  }
}

uint64_t makeScopeNode(double a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = makeScopeNode_prototypeNode;
  if (!makeScopeNode_prototypeNode)
  {
    while (1)
    {
      query_node_with_ann = db_make_query_node_with_ann("_kMDItemTimeMachinePath = stuff && _kTimeMachineOldestSnapshot<=0 && _kTimeMachineNewestSnapshot>=0))", 0);
      v9 = 0;
      *(*(*query_node_with_ann + 16) + 32) |= 0x40200uLL;
      v10 = query_node_with_ann[1];
      *(*(*v10 + 16) + 32) |= 0x10000uLL;
      *(*(v10[1] + 16) + 32) |= 0x10000uLL;
      atomic_compare_exchange_strong(&makeScopeNode_prototypeNode, &v9, query_node_with_ann);
      if (!v9)
      {
        break;
      }

      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(query_node_with_ann, &v16, 0);
      v7 = makeScopeNode_prototypeNode;
      if (makeScopeNode_prototypeNode)
      {
        goto LABEL_6;
      }
    }

    v7 = makeScopeNode_prototypeNode;
  }

LABEL_6:
  v16 = MEMORY[0x1E69E9820];
  v17 = 0x40000000;
  v18 = __db_query_tree_apply_block_block_invoke;
  v19 = &unk_1E8198ED0;
  v20 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v7, &v16, &__block_literal_global_25_15416);
  v12 = v11;
  free(*(*(*v11 + 16) + 72));
  v13 = *(*v12 + 16);
  if (a3)
  {
    asprintf((v13 + 72), "%s");
  }

  else
  {
    asprintf((v13 + 72), "%s*");
  }

  if (a4)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __makeScopeNode_block_invoke;
    v15[3] = &__block_descriptor_tmp_654;
    v15[4] = a4;
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = v15;
    db_query_tree_apply_block_with_meta(v12, &v16, 0);
  }

  free(*(*(**(v12 + 8) + 16) + 72));
  asprintf((*(**(v12 + 8) + 16) + 72), "%f", a1);
  free(*(*(*(*(v12 + 8) + 8) + 16) + 72));
  asprintf((*(*(*(v12 + 8) + 8) + 16) + 72), "%f", a1);
  return v12;
}

uint64_t _makeScopeNode(uint64_t a1, int a2, uint64_t a3)
{
  v5 = _makeScopeNode_prototypeNode[0];
  if (!_makeScopeNode_prototypeNode[0])
  {
    while (1)
    {
      query_node_with_ann = db_make_query_node_with_ann("_kMDItemTimeMachinePath = stuff", 0);
      v7 = 0;
      *(query_node_with_ann[2] + 32) |= 0x40200uLL;
      atomic_compare_exchange_strong(_makeScopeNode_prototypeNode, &v7, query_node_with_ann);
      if (!v7)
      {
        break;
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __db_query_tree_apply_block_block_invoke;
      v15 = &unk_1E8198ED0;
      v16 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(query_node_with_ann, &v12, 0);
      v5 = _makeScopeNode_prototypeNode[0];
      if (_makeScopeNode_prototypeNode[0])
      {
        goto LABEL_6;
      }
    }

    v5 = _makeScopeNode_prototypeNode[0];
  }

LABEL_6:
  v12 = MEMORY[0x1E69E9820];
  v13 = 0x40000000;
  v14 = __db_query_tree_apply_block_block_invoke;
  v15 = &unk_1E8198ED0;
  v16 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v5, &v12, &__block_literal_global_25_15416);
  v9 = v8;
  if (a3)
  {
    free(**(v8 + 16));
    asprintf(*(v9 + 16), "_kMDItemTimeMachinePath%lld", a3);
  }

  free(*(*(v9 + 16) + 72));
  v10 = *(v9 + 16);
  if (a2)
  {
    asprintf((v10 + 72), "%s");
  }

  else
  {
    asprintf((v10 + 72), "%s*");
  }

  return v9;
}

uint64_t __makeScopeNode_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      asprintf(v4, "%s%lld", *v4, *(a1 + 32));
      free(v5);
    }
  }

  return a2;
}

uint64_t __preIterateQueryForIndex_block_invoke_167(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v184 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48) & 0xFFF7;
  if (v4 > 0x20)
  {
    goto LABEL_216;
  }

  if (((1 << (*(a2 + 48) & 0xF7)) & 0x100010006) != 0)
  {
    goto LABEL_3;
  }

  if (v4 != 4)
  {
LABEL_216:
    v155 = __si_assert_copy_extra_661(*(*(a1 + 80) + 32));
    v156 = v155;
    v157 = "";
    if (v155)
    {
      v157 = v155;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected type %d", "SIQueryC.c", 5888, "0", v157, *(v2 + 48));
    free(v156);
    if (__valid_fs(*(*(v3 + 80) + 32)))
    {
      v158 = 2989;
    }

    else
    {
      v158 = 3072;
    }

    *v158 = -559038737;
    abort();
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v118 = *__error();
    v119 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v119, OS_LOG_TYPE_DEFAULT, "Factor.", buf, 2u);
    }

    *__error() = v118;
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    query_trim_superfluous_wildcards(v7);
    query_eliminate_denied_terms(v2, *(v3 + 40), &__block_literal_global_172, *(v3 + 48));
  }

  v8 = *(v3 + 64);
  v9 = *v8;
  if (**(v3 + 56) + 1 >= *v8)
  {
    *v8 = 2 * v9;
    *(*(*(v3 + 32) + 8) + 24) = malloc_type_realloc(*(*(*(v3 + 32) + 8) + 24), 16 * v9, 0x2004093837F09uLL);
  }

  v10 = *(v2 + 16);
  if ((*(v10 + 33) & 8) != 0)
  {
    goto LABEL_14;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v122 = *__error();
    v123 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v123, OS_LOG_TYPE_DEFAULT, "Metadata or Content.", buf, 2u);
    }

    *__error() = v122;
    v10 = *(v2 + 16);
  }

  if ((*(v3 + 104) & 1) == 0 && expensiveNodeCheck(v10))
  {
LABEL_14:
    **(v3 + 72) = 1;
    goto LABEL_3;
  }

  v11 = *(v10 + 32);
  if ((v11 & 0x6000000) != 0)
  {
    **(v3 + 72) = 1;
  }

  v12 = *(v10 + 24);
  if ((v12 - 11) < 2)
  {
    v42 = *v10;
    if (dword_1EBF46AD0 >= 5)
    {
      v139 = *__error();
      v140 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v140, OS_LOG_TYPE_DEFAULT, "Range query.", buf, 2u);
      }

      *__error() = v139;
      v10 = *(v2 + 16);
    }

    if (*(v10 + 40) != 2)
    {
      goto LABEL_3;
    }

    if (**v10 == 42 && !*(*v10 + 1))
    {
      v44 = 1;
    }

    else
    {
      id_for_field_locked = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), v42);
      v10 = *(v2 + 16);
      if (id_for_field_locked == -2)
      {
        if (*(v10 + 52) == 0.0 && *(v10 + 56) == 0.0)
        {
LABEL_69:
          v47 = *(v10 + 24);
LABEL_104:
          v78 = v47 - 5;
          if (v78 > 9)
          {
            v79 = 16;
          }

          else
          {
            v79 = *&asc_1C2BFFC88[2 * v78];
          }

          *(v2 + 48) = v79;
          goto LABEL_3;
        }

        v44 = -2;
      }

      else
      {
        v44 = id_for_field_locked;
      }
    }

    if (*(v10 + 34))
    {
      v60 = *(v10 + 272);
      if (!v60)
      {
        *(*(v2 + 16) + 272) = malloc_type_calloc(1uLL, 8 * *(v10 + 40), 0x100004000313F17uLL);
        *buf = 0;
        v61 = strtod(**(*(v2 + 16) + 168), buf);
        v62 = *(v2 + 16);
        **(v62 + 272) = v61;
        v63 = strtod(*(*(v62 + 168) + 8), buf);
        v64 = *(v2 + 16);
        *(*(v64 + 272) + 8) = v63;
        v60 = *(v64 + 272);
      }

      v58 = CFDateCreate(kCIQueryZoneAllocator, *v60);
      v59 = CFDateCreate(kCIQueryZoneAllocator, *(*(*(v2 + 16) + 272) + 8));
    }

    else
    {
      v58 = copyName(**(v10 + 168));
      v59 = copyName(*(*(*(v2 + 16) + 168) + 8));
    }

    v65 = v59;
    if (dword_1EBF46AD0 >= 5)
    {
      v143 = v3;
      v144 = *__error();
      v145 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v58;
        v180 = 2080;
        v181 = v42;
        v182 = 2112;
        v183 = *&v65;
        _os_log_impl(&dword_1C278D000, v145, OS_LOG_TYPE_DEFAULT, "Range query: %@ < %s < %@", buf, 0x20u);
      }

      *__error() = v144;
      v3 = v143;
    }

    *(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56)) = ContentIndexQueryNodeForRange(v58, v65, v44, 1, 1);
    v66 = *(v3 + 56);
    v67 = *v66;
    *(*(*(*(*(v3 + 32) + 8) + 24) + 8 * *v66) + 12) = *(*(v2 + 16) + 52);
    *v66 = v67 + 1;
    CFRelease(v58);
    v68 = v65;
LABEL_195:
    CFRelease(v68);
    goto LABEL_3;
  }

  if ((v12 - 13) < 2)
  {
    v13 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), *v10);
    v166 = v2;
    v14 = *(v2 + 16);
    v15 = *(v14 + 40);
    v16 = (v15 << 6) | 0x28;
    if (v15 <= 0x7FF && v16 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_14063;
    }

    v168 = v3;
    v17 = *(v14 + 168);
    v18 = &qword_1EDD81000;
    v19 = malloc_type_zone_calloc(queryZone, 1uLL, v16, 0x5BAF1CEAuLL);
    if (!v19)
    {
      _log_fault_for_malloc_failure();
    }

    *(v19 + 4) = 0x400000;
    if (v15)
    {
      v20 = 0;
      v21 = 1;
      *v19 = 1;
      v19[4] = v19 + 5;
      if (v13 >= 0x80)
      {
        v21 = 2;
      }

      v22 = 4;
      if (v13 >> 28)
      {
        v22 = 5;
      }

      if (v13 >= 0x4000)
      {
        v21 = 3;
      }

      if (v13 >> 21)
      {
        v21 = v22;
      }

      v171 = v21;
      v23 = v15 << 6;
      while (1)
      {
        v24 = v19[4];
        v25 = *v17;
        v26 = strlen(*v17);
        v27 = malloc_type_zone_malloc(v18[58], v26 + v171 + 4, 0xA4971684uLL);
        if (!v27)
        {
          _log_fault_for_malloc_failure();
        }

        if (v13 >= 2)
        {
          break;
        }

        memcpy(v27, v25, v26);
        v37 = v13;
LABEL_49:
        v27[v26] = 0;
        v41 = v24 + v20;
        *v41 = v27;
        *(v41 + 8) = 0;
        *(v41 + 16) = 256;
        *(v41 + 20) = v37;
        *(v41 + 24) = 8;
        *(v41 + 32) = 0u;
        *(v41 + 48) = 0u;
        ++*(v19 + 6);
        v20 += 64;
        ++v17;
        if (v23 == v20)
        {
          goto LABEL_70;
        }
      }

      *v27 = 513;
      if (v13 >> 28)
      {
        v28 = 28;
        v29 = (v13 >> 7) | 0x80;
        v27[2] = v13 | 0x80;
        v30 = 21;
        v31 = 14;
        v32 = 3;
        v33 = 4;
        v34 = 5;
        v35 = 6;
        v36 = 7;
      }

      else
      {
        if (!(v13 >> 21))
        {
          if (!(v13 >> 14))
          {
            if (v13 < 0x80)
            {
              v35 = 2;
              LOBYTE(v38) = v13;
              v36 = 3;
LABEL_48:
              v27[v35] = v38;
              memcpy(&v27[v36], v25, v26);
              v26 += v36;
              v37 = -1;
              v18 = &qword_1EDD81000;
              goto LABEL_49;
            }

            LOBYTE(v38) = v13 >> 7;
            LOBYTE(v40) = v13 | 0x80;
            v34 = 2;
            v35 = 3;
            v36 = 4;
LABEL_47:
            v27[v34] = v40;
            goto LABEL_48;
          }

          v28 = 14;
          LOBYTE(v40) = (v13 >> 7) | 0x80;
          LOBYTE(v39) = v13 | 0x80;
          v33 = 2;
          v34 = 3;
          v35 = 4;
          v36 = 5;
LABEL_46:
          v27[v33] = v39;
          v38 = v13 >> v28;
          goto LABEL_47;
        }

        v28 = 21;
        v30 = 14;
        v31 = 7;
        v29 = v13 | 0x80;
        v32 = 2;
        v33 = 3;
        v34 = 4;
        v35 = 5;
        v36 = 6;
      }

      v27[v32] = v29;
      v39 = (v13 >> v31) | 0xFFFFFF80;
      v40 = (v13 >> v30) | 0xFFFFFF80;
      goto LABEL_46;
    }

LABEL_70:
    v2 = v166;
    *(*(*(*(v168 + 32) + 8) + 24) + 8 * **(v168 + 56)) = v19;
    v48 = *(*(*(v168 + 32) + 8) + 24);
    v49 = *(v168 + 56);
LABEL_71:
    v50 = *v49;
    *(*(v48 + 8 * *v49) + 12) = *(*(v2 + 16) + 52);
    *v49 = v50 + 1;
    goto LABEL_3;
  }

  if (v12 != 15)
  {
    if (everythingQuery(v10))
    {
      v51 = *__error();
      v52 = _SILogForLogForCategory(1);
      v53 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v52, v53))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v52, v53, "Found *=* query", buf, 2u);
      }

      *__error() = v51;
      goto LABEL_3;
    }

    v54 = *v10;
    if (**v10 == 42 && !v54[1])
    {
      v55 = 1;
    }

    else if ((v11 & 0x400) != 0)
    {
      v55 = 0;
    }

    else
    {
      if ((v11 & 0x40000) != 0)
      {
        NodeForOidPath = ContentIndexQueryNodeForOidPath(*(v10 + 288), *(v10 + 40), (v11 & 0x80000) == 0);
        v70 = *(*(*(v3 + 32) + 8) + 24);
        v71 = *(v3 + 56);
        v72 = (*v71)++;
        *(v70 + 8 * v72) = NodeForOidPath;
        *(*(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56) - 8) + 12) = *(*(v2 + 16) + 52);
        goto LABEL_3;
      }

      v55 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), v54);
      if (v55 == -2)
      {
        goto LABEL_103;
      }
    }

    String = copyQueryString(v2);
    if (!String)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v150 = *__error();
        v151 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          v152 = *(v2 + 16);
          v153 = *v152;
          v154 = v152[9];
          *buf = 136315394;
          *&buf[4] = v153;
          v180 = 2080;
          v181 = v154;
          _os_log_impl(&dword_1C278D000, v151, OS_LOG_TYPE_DEFAULT, "No string for %s = %s", buf, 0x16u);
        }

        *__error() = v150;
      }

LABEL_103:
      v47 = *(*(v2 + 16) + 24);
      goto LABEL_104;
    }

    v74 = String;
    Current = CFAbsoluteTimeGetCurrent();
    v76 = *(v2 + 16);
    v77 = *(v76 + 24);
    if (v77 <= 4)
    {
      if (v77 > 2)
      {
        if (v77 != 3)
        {
          v80 = v74;
          v81 = 0;
          v82 = v55;
          v83 = 1;
LABEL_139:
          v94 = 0;
          goto LABEL_140;
        }

        v80 = 0;
        v81 = v74;
        v82 = v55;
        v83 = 0;
LABEL_135:
        v94 = 1;
LABEL_140:
        NodeForRange = ContentIndexQueryNodeForRange(v80, v81, v82, v83, v94);
        v96 = *(*(*(v3 + 32) + 8) + 24);
        v97 = *(v3 + 56);
        v98 = (*v97)++;
        *(v96 + 8 * v98) = NodeForRange;
        *(*(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56) - 8) + 12) = *(*(v2 + 16) + 52);
LABEL_193:
        if (dword_1EBF46AD0 >= 5)
        {
          v146 = *__error();
          v147 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            v148 = **(v2 + 16);
            v149 = CFAbsoluteTimeGetCurrent();
            *buf = 136315650;
            *&buf[4] = v148;
            v180 = 2112;
            v181 = v74;
            v182 = 2048;
            v183 = v149 - Current;
            _os_log_impl(&dword_1C278D000, v147, OS_LOG_TYPE_DEFAULT, "Matched factor %s = %@ in %f seconds", buf, 0x20u);
          }

          *__error() = v146;
        }

        v68 = v74;
        goto LABEL_195;
      }

      if (v77 != 1)
      {
        if (v77 != 2)
        {
LABEL_225:
          v162 = __si_assert_copy_extra_661(*(*(v3 + 80) + 32));
          v163 = v162;
          v164 = "";
          if (v162)
          {
            v164 = v162;
          }

          __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected op %d", "SIQueryC.c", 5868, "0", v164, *(*(v2 + 16) + 24));
          free(v163);
          if (__valid_fs(*(*(v3 + 80) + 32)))
          {
            v165 = 2989;
          }

          else
          {
            v165 = 3072;
          }

          *v165 = -559038737;
          abort();
        }

LABEL_115:
        **(v3 + 72) = 1;
      }
    }

    else
    {
      if (v77 > 6)
      {
        switch(v77)
        {
          case 7:
            v80 = 0;
            v81 = v74;
            break;
          case 8:
            v80 = v74;
            v81 = 0;
            break;
          case 15:
            goto LABEL_193;
          default:
            goto LABEL_225;
        }

        v82 = v55;
        v83 = 0;
        goto LABEL_139;
      }

      if (v77 != 5)
      {
        goto LABEL_115;
      }
    }

    v84 = *(v76 + 32);
    v85 = (v84 >> 4) & 1;
    if ((v84 & 0x800000) != 0)
    {
      v85 = (v84 >> 4) & 1 | ((*(v76 + 28) & 0x7F) << 18) | 0x10000;
    }

    if (v55 <= 1)
    {
      if (CFEqual(v74, @"*"))
      {
        v86 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), "_kMDItemTextContentIndexExists");
        if (v86 != -2)
        {
          v99 = v86;
          *buf = 1;
          v100 = CFNumberCreate(kCIQueryZoneAllocator, kCFNumberSInt32Type, buf);
          if (v100)
          {
            v101 = v100;
            v102 = ContentIndexQueryNodeForRange(v100, v100, v99, 1, 1);
            v103 = *(*(*(v3 + 32) + 8) + 24);
            v104 = *(v3 + 56);
            v105 = (*v104)++;
            *(v103 + 8 * v105) = v102;
            *(*(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56) - 8) + 12) = *(*(v2 + 16) + 52);
            CFRelease(v101);
          }

          goto LABEL_193;
        }
      }
    }

    v87 = *(v3 + 80);
    if (v55 == *(v87 + 2008))
    {
      v80 = v74;
      v81 = v74;
      v82 = v55;
      v83 = 1;
      goto LABEL_135;
    }

    v88 = (v84 >> 1) & 0x20 | (v84 >> 4) & 2 | (((v84 >> 1) & 1) << 15) & 0xFDFFFFFF | (((v84 >> 15) & 1) << 25) | (v84 >> 1) & 0x4000000 | (v84 >> 11) & 8 | v85;
    v89 = *(v2 + 16);
    if (v89 && !v55 && (v90 = *(v89 + 32) & 0x6000000000) != 0)
    {
      if (v90 == 0x4000000000)
      {
        v91 = 4096;
      }

      else
      {
        v91 = 0x2000;
      }

      v175 = 0;
      v176 = &v175;
      if (v90 == 0x6000000000)
      {
        v91 = 12288;
      }

      v88 |= v91;
      v177 = 0x2000000000;
      v178 = 0;
    }

    else
    {
      v175 = 0;
      v176 = &v175;
      v177 = 0x2000000000;
      v178 = 0;
      if (v55 >= 6)
      {
        v92 = *(v87 + 1192);
        v93 = *v89;
        __nel_4[0] = MEMORY[0x1E69E9820];
        __nel_4[1] = 0x40000000;
        __nel_4[2] = __preIterateQueryForIndex_block_invoke_173;
        __nel_4[3] = &unk_1E8196400;
        __nel_4[4] = &v175;
        __nel_4[5] = v87;
        v174 = *(v3 + 105);
        db_apply_for_field_ids_matching_name_locked(v92, v93, __nel_4);
        goto LABEL_145;
      }

      if (v55)
      {
LABEL_145:
        v107 = *(v3 + 96);
        if (v107)
        {
          v108 = *(v107 + 144);
        }

        else
        {
          v108 = 0;
        }

        _CIQueryNodeForString(*(v3 + 88), v74, v55, v88, v108, (*(*(v3 + 80) + 6584) >> 25) & 3, *(v176 + 24), *(*(v2 + 16) + 60));
        *(v109 + 12) = *(*(v2 + 16) + 52);
        v110 = *(*(*(v3 + 32) + 8) + 24);
        v111 = *(v3 + 56);
        v112 = (*v111)++;
        *(v110 + 8 * v112) = v109;
        if (!v55 || !v109 || *(*(v3 + 88) + 4) < 84)
        {
          goto LABEL_192;
        }

        if ((*(*(v2 + 16) + 35) & 6) != 0)
        {
          *(v109 + 8) = 3;
        }

        __nel = 0;
        v169 = v3;
        v170 = v109;
        matched = ContentIndexMatchLocalizedFields(v109, *(*(v3 + 80) + 6648), &__nel);
        v114 = __nel;
        qsort_b(matched, __nel, 4uLL, &__block_literal_global_180);
        if (v114)
        {
          v167 = v2;
          db_clone_query_node(v2);
          v116 = v115;
          v117 = malloc_type_calloc(4uLL, v114, 0x3494CDF9uLL);
          if (!convert_value_to_type(0xBu, v116[2]))
          {
            v124 = 0;
            v125 = 0;
            do
            {
              v126 = *(matched + v124);
              if (v124 >= (v114 - 1) || (v127 = v124 + 1, v126 != *(matched + v124 + 1)))
              {
                bzero(buf, 0x400uLL);
                RawLocalizedUniquedField = getRawLocalizedUniquedField(*(v169[10] + 1192), v126, buf, 1);
                if (RawLocalizedUniquedField)
                {
                  v129 = RawLocalizedUniquedField;
                  v130 = v169[12];
                  if (v130)
                  {
                    v131 = *(v130 + 120);
                  }

                  v132 = v116[2];
                  if (do_compare(*(v169[10] + 1192)))
                  {
                    field_name_for_id_locked = db_get_field_name_for_id_locked(*(v169[10] + 1192), v129[1]);
                    if (field_name_for_id_locked)
                    {
                      v117[v125] = db_get_id_for_field_locked(*(v169[10] + 1192), field_name_for_id_locked) | ((*(v129 + 1) & 0x100) << 23);
                      *(matched + v125++) = *(matched + v124);
                    }
                  }

                  if (v129 != buf)
                  {
                    free(v129);
                  }
                }

                v127 = v124 + 1;
              }

              v124 = v127;
            }

            while (v127 < v114);
            db_free_query_node(v116);
            if (v125)
            {
              NodeForLocalizedFields = ContentIndexQueryNodeForLocalizedFields(v170, v117, matched, v125);
              if (NodeForLocalizedFields)
              {
                v135 = *(v167 + 16);
                if (*(v135 + 24) == 5)
                {
                  *(NodeForLocalizedFields + 2) = 3;
                }

                *(v135 + 32) |= 0x400000uLL;
                v136 = *(*(v169[4] + 8) + 24);
                v137 = v169[7];
                v138 = (*v137)++;
                *(v136 + 8 * v138) = NodeForLocalizedFields;
              }
            }

            v2 = v167;
            goto LABEL_191;
          }
        }

        else
        {
          v116 = 0;
          v117 = 0;
        }

        db_free_query_node(v116);
LABEL_191:
        free(v117);
        free(matched);
LABEL_192:
        _Block_object_dispose(&v175, 8);
        goto LABEL_193;
      }
    }

    v106 = *v89;
    if (!strncmp(*v89, "_kMDItemOCRContent", 0x12uLL))
    {
      if (!strncmp(v106 + 18, "Title", 5uLL))
      {
        v88 |= 0x8000000u;
      }

      else if (!strncmp(v106 + 18, "Level1", 6uLL))
      {
        v88 |= 0x10000000u;
      }

      else if (!strncmp(v106 + 18, "Level2", 6uLL))
      {
        v88 |= 0x20000000u;
      }

      else
      {
        if (strncmp(v106 + 18, "Level3", 6uLL))
        {
          if (dword_1EBF46AD0 >= 5)
          {
            v159 = *__error();
            v160 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
            {
              v161 = **(v2 + 16);
              *buf = 136315138;
              *&buf[4] = v161;
              _os_log_impl(&dword_1C278D000, v160, OS_LOG_TYPE_DEFAULT, "Invalid property name %s", buf, 0xCu);
            }

            *__error() = v159;
            v89 = *(v2 + 16);
          }

          v120 = *(v89 + 24) - 5;
          if (v120 > 9)
          {
            v121 = 16;
          }

          else
          {
            v121 = *&asc_1C2BFFC88[2 * v120];
          }

          *(v2 + 48) = v121;
          goto LABEL_192;
        }

        v88 |= 0x40000000u;
      }
    }

    goto LABEL_145;
  }

  v45 = *v10;
  if (dword_1EBF46AD0 >= 5)
  {
    v141 = *__error();
    v142 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v142, OS_LOG_TYPE_DEFAULT, "ANN query.", buf, 2u);
    }

    *__error() = v141;
    v10 = *(v2 + 16);
  }

  if (*(v10 + 40) == 5)
  {
    if (**v10 == 42 && !*(*v10 + 1) || (v46 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), v45), v10 = *(v2 + 16), v46 != -2) || *(v10 + 52) != 0.0 || *(v10 + 56) != 0.0)
    {
      v56 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), *v10);
      v57 = *(v2 + 16);
      *(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56)) = ContentIndexQueryNodeForVector(v56, *(v57 + 296), *(v57 + 60) & 3, (*(v57 + 60) >> 2) & 3, *(v57 + 60) >> 25, (*(v57 + 60) >> 4) & 0xFFFFF, HIBYTE(*(v57 + 60)) & 1, *(v57 + 64));
      v48 = *(*(*(v3 + 32) + 8) + 24);
      v49 = *(v3 + 56);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

BOOL expensiveNodeCheck(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  if (!*v1)
  {
    return 0;
  }

  if (v1[1] == 42)
  {
    goto LABEL_6;
  }

  if (*v1 != 42)
  {
    return 0;
  }

  if (v1[1])
  {
LABEL_6:
    if (v1[2])
    {
      return 0;
    }
  }

  v3 = *a1;
  return **a1 == 42 && !v3[1] || !strcmp(*a1, "kMDItemAuthors") || !strcmp(v3, "kMDItemRecipients") || strcmp(v3, "kMDItemSubject") == 0;
}

char *__preIterateQueryForIndex_block_invoke_173(uint64_t a1, int a2)
{
  result = db_get_field_name_for_id_locked(*(*(a1 + 40) + 1192), a2);
  if (result)
  {
    if ((*(result - 2) | 4) == 0xF)
    {
      *(*(*(a1 + 32) + 8) + 24) |= *(a1 + 48) & *(result - 1);
    }
  }

  return result;
}

_DWORD *__evaluateFuzzyQueryForIndex_block_invoke_184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48) & 0xFFF7;
  if (v7 == 2)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v37 = *__error();
      v38 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "And.", buf, 2u);
      }

      *__error() = v37;
      if (!a3)
      {
        goto LABEL_71;
      }
    }

    else if (!a3)
    {
      goto LABEL_71;
    }

    if (a4)
    {
      v11 = *(a2 + 8);
      v12 = *(v11 + 48);
      if (v12 == 4 && (v13 = *(v11 + 16)) != 0)
      {
        v14 = (*(v13 + 24) < 0xFu) & (0x5060u >> *(v13 + 24));
      }

      else
      {
        v14 = 0;
      }

      v15 = (v12 >> 3) & 1;
      if (v14 != v15)
      {
        v16 = *(*a2 + 48);
        if (v16 == 4)
        {
          v17 = *(*a2 + 16);
          if (v17)
          {
            LODWORD(v17) = (*(v17 + 24) < 0xFu) & (0x5060u >> *(v17 + 24));
          }
        }

        else
        {
          LODWORD(v17) = 0;
        }

        if (v17 != ((v16 >> 3) & 1))
        {
          v34 = ContentIndexDocSetNotLazy(a3, *(a2 + 72));
          v35 = ContentIndexDocSetNotLazy(a4, *(a2 + 72));
          *buf = v34;
          v51 = v35;
          AllWithPrototype = ContentIndexDocSetIntersectionLazy(2, buf, *(a2 + 72));
          ContentIndexDocSetDispose(a3);
          ContentIndexDocSetDispose(a4);
          ContentIndexDocSetDispose(v34);
          v36 = v35;
          goto LABEL_66;
        }
      }

      if (v12 == 4)
      {
        v26 = *(v11 + 16);
        if (v26)
        {
          LODWORD(v26) = (*(v26 + 24) < 0xFu) & (0x5060u >> *(v26 + 24));
        }
      }

      else
      {
        LODWORD(v26) = 0;
      }

      v27 = *(*a2 + 48);
      if (v27 == 4)
      {
        v28 = *(*a2 + 16);
        if (v28)
        {
          LODWORD(v28) = (*(v28 + 24) < 0xFu) & (0x5060u >> *(v28 + 24));
        }
      }

      else
      {
        LODWORD(v28) = 0;
      }

      v29 = (v27 >> 3) & 1;
      if (v26 == v15)
      {
        if (v28 == v29)
        {
          *buf = a3;
          v51 = a4;
          v30 = ContentIndexDocSetIntersectionLazy(2, buf, *(a2 + 72));
LABEL_65:
          AllWithPrototype = v30;
          ContentIndexDocSetDispose(a3);
          v36 = a4;
          goto LABEL_66;
        }

        v31 = *(a2 + 72);
        v32 = a4;
        v33 = a3;
      }

      else
      {
        if (v28 != v29)
        {
          v43 = __si_assert_copy_extra_661(-1);
          v44 = v43;
          v45 = "";
          if (v43)
          {
            v45 = v43;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 6217, "!isNegativeQuery(node->lchild)", v45);
          free(v44);
          if (__valid_fs(-1))
          {
            v46 = 2989;
          }

          else
          {
            v46 = 3072;
          }

          *v46 = -559038737;
          abort();
        }

        v31 = *(a2 + 72);
        v32 = a3;
        v33 = a4;
      }

      v30 = ContentIndexDocSetExceptLazy(v32, v33, v31);
      goto LABEL_65;
    }

LABEL_71:
    ContentIndexDocSetDispose(a3);
    ContentIndexDocSetDispose(a4);
    if ((*(a2 + 48) & 8) != 0)
    {
      AllWithPrototype = ContentIndexDocSetCreateAllWithPrototype(*(a1 + 32), a2);
    }

    else
    {
      AllWithPrototype = 0;
    }

    goto LABEL_80;
  }

  if (v7 != 1)
  {
    v47 = __si_assert_copy_extra_661(-1);
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SIQueryC.c", 6242, v49);
    free(v48);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "OR.", buf, 2u);
    }

    *__error() = v39;
    if (!a3)
    {
      goto LABEL_77;
    }
  }

  else if (!a3)
  {
    goto LABEL_77;
  }

  if (!a4)
  {
LABEL_77:
    if (a4)
    {
      AllWithPrototype = a4;
    }

    else
    {
      AllWithPrototype = a3;
    }

    goto LABEL_80;
  }

  v8 = *(*a2 + 48);
  if (v8 == 4)
  {
    v9 = *(*a2 + 16);
    if (v9)
    {
      LODWORD(v9) = (*(v9 + 24) < 0xFu) & (0x5060u >> *(v9 + 24));
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  AllWithPrototype = a3;
  if (v9 != ((v8 >> 3) & 1))
  {
    AllWithPrototype = ContentIndexDocSetNotLazy(a3, *(a2 + 72));
  }

  v19 = *(a2 + 8);
  v20 = *(v19 + 48);
  if (v20 == 4)
  {
    v21 = *(v19 + 16);
    if (v21)
    {
      LODWORD(v21) = (*(v21 + 24) < 0xFu) & (0x5060u >> *(v21 + 24));
    }
  }

  else
  {
    LODWORD(v21) = 0;
  }

  v22 = a4;
  if (v21 != ((v20 >> 3) & 1))
  {
    v22 = ContentIndexDocSetNotLazy(a4, *(a2 + 72));
  }

  if (AllWithPrototype != a3)
  {
    ContentIndexDocSetDispose(a3);
  }

  if (v22 != a4)
  {
    ContentIndexDocSetDispose(a4);
  }

  if (AllWithPrototype)
  {
    if (AllWithPrototype[12] == 1 && (*(a2 + 48) & 8) != 0)
    {
      v23 = *(*a2 + 16);
      if (v23)
      {
        if ((*(v23 + 33) & 8) != 0)
        {
          ContentIndexDocSetDispose(AllWithPrototype);
          AllWithPrototype = 0;
        }
      }
    }
  }

  if (v22)
  {
    if (v22[12] != 1 || (*(a2 + 48) & 8) == 0 || (v24 = *(*(a2 + 8) + 16)) == 0 || (*(v24 + 33) & 8) == 0)
    {
      if (AllWithPrototype)
      {
        *buf = AllWithPrototype;
        v51 = v22;
        v25 = ContentIndexDocSetUnionLazy(2, buf, *(a2 + 72));
        ContentIndexDocSetDispose(AllWithPrototype);
        ContentIndexDocSetDispose(v22);
        AllWithPrototype = v25;
      }

      else
      {
        AllWithPrototype = v22;
      }

      goto LABEL_80;
    }

    v36 = v22;
LABEL_66:
    ContentIndexDocSetDispose(v36);
  }

LABEL_80:
  v41 = *MEMORY[0x1E69E9840];
  return AllWithPrototype;
}

_DWORD *fsi_create_walk(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v61 = *MEMORY[0x1E69E9840];
  v9 = malloc_type_calloc(1uLL, 0x4620uLL, 0x10F0040DF486990uLL);
  atomic_fetch_add_explicit(gIteratorCount, 1u, memory_order_relaxed);
  bzero(v9, 0x4620uLL);
  __strlcpy_chk();
  bzero(&v60, 0x878uLL);
  if (!statfs(v9 + 4, &v60))
  {
    v56 = 0;
    *v55 = xmmword_1C2BFFCB4;
    v59 = 0;
    v58 = 0u;
    v57 = 0u;
    if (!getattrlist(v60.f_mntonname, v55, &v57, 0x24uLL, 0x200u))
    {
      v10 = DWORD1(v58);
      v11 = DWORD1(v57);
      v12 = BYTE8(v57) & BYTE8(v58);
      *(v9 + 3408) = BYTE8(v57) & BYTE8(v58) & 1;
      *(v9 + 3409) = (v12 & 8) != 0;
      v13 = ((v11 & v10) >> 14) & 1;
      if (!(*v60.f_fstypename ^ 0x73666361 | v60.f_fstypename[4]))
      {
        LOBYTE(v13) = 1;
      }

      *(v9 + 3410) = v13;
    }
  }

  *v9 = 0;
  v53 = xmmword_1C2BFFC9C;
  v54 = 0;
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = &v53;
  }

  if (!v4)
  {
    v4 = fsi_attr_size(v14);
  }

  *(v9 + 1211) = malloc_type_malloc(0x1000uLL, 0x2004093837F09uLL);
  v15 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  v16 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040023F4036uLL);
  *v16 = (((v4 << 8) + 4135) & 0xFFFFF000) - 32;
  *v15 = v16;
  *(v9 + 1210) = v15;
  v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040023F4036uLL);
  *v17 = (((v4 << 8) + 4127) & 0xFFFFF000) - 32;
  *(v9 + 1205) = v17;
  v9[2424] = 0;
  v9[2426] = -1;
  v18 = *v14;
  *(v9 + 131) = *(v14 + 2);
  *(v9 + 258) = v18;
  *(v9 + 132) = v4;
  v50 = 5;
  v51 = xmmword_1C2BFA640;
  v52 = 0;
  fsi_attr_mapping_descriptor(v14, &v50, v9 + 1128);
  bzero(&v60, 0x8A8uLL);
  v47 = 5;
  v48 = xmmword_1C2BFA650;
  v49 = 0;
  fsi_attr_mapping_descriptor(v14, &v47, &v60);
  f_bavail = v60.f_bavail;
  v20 = *&v60.f_mntonname[208];
  *(v9 + 137) = v60.f_bavail;
  *(v9 + 135) = v20;
  v21 = *&v60.f_mntonname[216];
  v22 = *&v60.f_mntonname[224];
  *(v9 + 136) = *&v60.f_mntonname[216];
  *(v9 + 139) = v22;
  v23 = *&v60.f_mntonname[232];
  *(v9 + 140) = *&v60.f_mntonname[232];
  v9[257] = v2 & 0xFFFFFFF9 | 4;
  v9[2427] = 0;
  v9[2428] = (~v2 & 0x18) == 0;
  if ((*(v14 + 1) & 0x80000000) == 0)
  {
    __assert_rtn("initWalk", "fsi.c", 894, "attrList->commonattr & ATTR_CMN_RETURNED_ATTRS");
  }

  if (!v20)
  {
    __assert_rtn("initWalk", "fsi.c", 895, "iterator->offsetAttrName");
  }

  if (!f_bavail)
  {
    __assert_rtn("initWalk", "fsi.c", 896, "iterator->offsetAttrObjType");
  }

  if (!v21)
  {
    __assert_rtn("initWalk", "fsi.c", 897, "iterator->offsetAttrDevId");
  }

  if (!v22)
  {
    __assert_rtn("initWalk", "fsi.c", 898, "iterator->offsetAttrFileId");
  }

  if (!v23)
  {
    __assert_rtn("initWalk", "fsi.c", 899, "iterator->offsetAttrMountStatus");
  }

  v9[2429] = ((v2 >> 5) & 1) == 0;
  v9[2430] = 0;
  *(v9 + 1064) = v2 & 1;
  v24 = v9 + 2154;
  *(v9 + 8616) = 0;
  *(v9 + 420) = v9 + 2154;
  *(v9 + 422) = v9 + 2154;
  bzero(&v57, 0x400uLL);
  if (*v8 == 46)
  {
    v25 = v8;
    do
    {
      if (v25[1] != 47)
      {
        break;
      }

      v26 = *(v25 + 2);
      v25 += 2;
    }

    while (v26 == 46);
  }

  if (__strlcpy_chk() > 0x3FF)
  {
    v30 = __error();
    v31 = 63;
LABEL_35:
    *v30 = v31;
LABEL_56:
    fsi_close(v9);
    v9 = 0;
    goto LABEL_57;
  }

  v27 = strrchr(v9 + 8616, 47);
  if (v27 && ((v28 = v27, *v24 != 47) || *(v9 + 8617)))
  {
    __strlcpy_chk();
    v29 = v28 - v24;
    if (v28 == v24)
    {
      *(v9 + 8617) = 0;
      v29 = 1;
    }

    else
    {
      *v28 = 0;
    }
  }

  else
  {
    __strlcpy_chk();
    v29 = 0;
    *v24 = 0;
  }

  *(v9 + 419) = v29;
  *(v9 + 1217) = 0;
  if (!(*(v9 + 137) | *(v9 + 136) | *(v9 + 139)))
  {
    v30 = __error();
    v31 = 22;
    goto LABEL_35;
  }

  v32 = malloc_type_malloc(*(v9 + 132) + 4, 0x100004052888210uLL);
  if (getattrlist(v8, v9 + 258, v32, v4, 0x208u))
  {
LABEL_32:
    v33 = *__error();
LABEL_33:
    *__error() = v33;
LABEL_55:
    free(v32);
    goto LABEL_56;
  }

  v9[2431] = *(v32 + *(v9 + 136));
  v9[2432] = *(v32 + *(v9 + 137));
  v34 = *(v9 + 135);
  if (v34)
  {
    v35 = *v32;
    if (v34 + 8 <= v35)
    {
      v36 = v32 + v34;
      v37 = v32 + v34 + *(v32 + v34);
      if (&v37[*(v32 + v34 + 4)] <= v32 + v35)
      {
        v38 = *v8;
        if ((v38 == 46 || v38 == 47) && !v8[1])
        {
          strncpy(v37, v8, 2uLL);
          *(v36 + 1) = 2;
        }
      }
    }
  }

  if (v9[2427])
  {
    v39 = *(v32 + *(v9 + 139));
  }

  else
  {
    bzero(v55, 0x400uLL);
    __strlcpy_chk();
    if ((*v8 != 46 || v8[1]) && __strlcat_chk() > 0x3FF)
    {
      v33 = 63;
      goto LABEL_33;
    }

    atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
    v40 = open(v55, 32772);
    if (v40 > 0x7FF)
    {
      if ((v40 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v40 == -1)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v9[v40 + 2439] = 957;
      ++v9[2438];
    }

    v39 = v40;
  }

  if (pushStackEntry(v9, v39))
  {
    goto LABEL_55;
  }

  v43 = *(v9 + 421);
  v44 = *(v9 + 422);
  if (*(v9 + 1208))
  {
    v45 = *(v9 + 1209);
    if (v45)
    {
      v46 = (*(v45 + 16))(v45, v9);
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 0;
  }

  addIntoChildList(v9, v32, v43, v44, v46);
  free(v32);
LABEL_57:
  v41 = *MEMORY[0x1E69E9840];
  return v9;
}

void fsi_close(char *a1)
{
  if (!*a1)
  {
    if (!*(a1 + 2427))
    {
      v10 = *(a1 + 2424);
      if (v10)
      {
        v11 = a1 + 9756;
        do
        {
          v12 = *(*(a1 + 1211) + 8 * v10 - 8);
          if (!v12)
          {
            break;
          }

          v13 = *(v12 + 48);
          if (v13 != -1)
          {
            if ((v13 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
              if (v13 <= 2047)
              {
                v14 = *(a1 + 2438);
                *(a1 + 2438) = v14 - 1;
                v15 = *&v11[4 * (v13 & 0x7FFFFFFF)];
                if (v15 < 0 || v14 <= 0)
                {
                  __assert_rtn("internalClose", "fsi.c", 1216, "iterator->fdArray[(int)tos->fileReference] >= 0 && iterator->fdCount >= 0");
                }

                if (v15)
                {
                  *&v11[4 * (v13 & 0x7FFFFFFF)] = -v15;
                }
              }
            }

            close(v13);
            v10 = *(a1 + 2424);
          }

          *(a1 + 2424) = --v10;
        }

        while (v10);
      }
    }

    free(*(a1 + 1211));
    free(*(a1 + 1206));
    *(a1 + 1206) = 0;
    v2 = *(a1 + 2426);
    if ((v2 & 0x80000000) == 0)
    {
      atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
      if (v2 <= 0x7FF)
      {
        v3 = *(a1 + 2438);
        *(a1 + 2438) = v3 - 1;
        v4 = *&a1[4 * v2 + 9756];
        if (v4 < 0 || v3 <= 0)
        {
          __assert_rtn("internalClose", "fsi.c", 1227, "iterator->fdArray[iterator->resumeFd] >= 0 && iterator->fdCount >= 0");
        }

        if (v4)
        {
          *&a1[4 * v2 + 9756] = -v4;
        }
      }

      close(v2);
    }

    v5 = *(a1 + 1210);
    if (v5)
    {
      SQueueDestroy(*v5);
      free(v5);
    }

    v6 = *(a1 + 1205);
    if (v6)
    {
      SQueueDestroy(v6);
    }
  }

  free(*(a1 + 430));
  free(*(a1 + 434));
  free(*(a1 + 435));
  if (*(a1 + 1076))
  {
    fsi_close();
  }

  v7 = *(a1 + 134);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 134) = 0;
  }

  atomic_fetch_add_explicit(gIteratorCount, 0xFFFFFFFF, memory_order_relaxed);
  v8 = *(a1 + 1208);
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(a1 + 1209);
  if (v9)
  {
    _Block_release(v9);
  }

  free(a1);
}

unint64_t fsi_attr_size(_DWORD *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = attrTable_table;
  v4 = &attrTable_commonattr;
  v5 = 4;
  do
  {
    ++a1;
    if (v4 == &attrTable_dirattr)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    if (v4 == &attrTable_fileattr)
    {
      v1 = v5;
      v5 = v2;
    }

    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 6;
      do
      {
        if ((*a1 & v7) != 0)
        {
          v5 += *(v8 - 3);
        }

        v9 = *v8;
        v8 += 10;
        v7 = v9;
      }

      while (v9);
    }

    v10 = v3[1];
    ++v3;
    v4 = v10;
    v2 = v6;
  }

  while (v10);
  if (v5 <= v1)
  {
    return v1;
  }

  else
  {
    return v5;
  }
}

uint64_t fsi_attr_mapping_descriptor(_DWORD *a1, _DWORD *a2, char *a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  bzero(a3, 0x8A8uLL);
  v6 = (a3 + 56);
  v7 = a3 + 136;
  v8 = a3 + 216;
  v9 = (a3 + 296);
  v10 = a3 + 936;
  v11 = a3 + 1576;
  v26[1] = 0;
  v26[2] = 0;
  v26[0] = 0x800000005;
  *(a3 + 3) = fsi_attr_offset(v5, v26);
  v25[1] = 0;
  v25[2] = 0;
  v25[0] = 0x2000000000005;
  result = fsi_attr_offset(v5, v25);
  v13 = 0;
  v14 = 0;
  v15 = 4;
  *(a3 + 4) = result;
  v16 = attrTable_table;
  *(a3 + 40) = vdupq_n_s64(4uLL);
  v17 = &attrTable_commonattr;
  v18 = 4;
  do
  {
    v19 = v17 != &attrTable_dirattr;
    if (v17 == &attrTable_dirattr)
    {
      result = (a3 + 4);
      v14 = v18;
    }

    else
    {
      if (v17 != &attrTable_fileattr)
      {
        v19 = 0;
        goto LABEL_11;
      }

      result = (a3 + 12);
      v18 = v14;
    }

    *result = v13;
LABEL_11:
    ++v4;
    ++v5;
    v20 = *(v17 + 2);
    if (v20)
    {
      v21 = v17 + 3;
      do
      {
        result = *v5 & v20;
        if ((*v4 & v20) != 0)
        {
          v22 = *(v21 - 1) != *v21;
          if (result)
          {
            v23 = v18;
          }

          else
          {
            v23 = 0;
          }

          *v9++ = v23;
          *v10++ = *(a3 + 5);
          *v11++ = *(v21 - 1);
          *v6++ = v22;
          *v7++ = *(v21 + 3);
          *v8++ = *(v21 + 2);
          *(a3 + 5) += *(v21 - 1);
          if (v17 == &attrTable_dirattr)
          {
            ++*(a3 + 2);
          }

          ++v13;
          if (v19)
          {
            ++*(a3 + 4);
          }
        }

        if (result)
        {
          result = *(v21 - 1);
          v18 += result;
        }

        v20 = *(v21 + 6);
        v21 += 5;
      }

      while (v20);
      v15 = *(a3 + 6);
    }

    if (v18 > v15)
    {
      v15 = v18;
    }

    *(a3 + 6) = v15;
    v24 = v16[1];
    ++v16;
    v17 = v24;
  }

  while (v24);
  *a3 = v13;
  return result;
}

uint64_t pushStackEntry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9696) < 512)
  {
    v5 = *(a1 + 9680);
    v6 = SQueueOpenPushData(*v5, 0x448uLL);
    *v6 = 1092;
    bzero(v6 + 4, 0x444uLL);
    v7 = *v5;
    v7[6] = *(*v5 + 48) + 1092;
    *(v7[4] + 24) += 1092;
    v7[1] += 1092;
    *(v6 + 52) = a2;
    strcpy(v6 + 68, (a1 + 8616));
    *(v6 + 12) = v6 + 4;
    v8 = *(a1 + 9696);
    *(*(a1 + 9688) + 8 * v8) = v6 + 4;
    *(a1 + 9696) = v8 + 1;
    result = 0;
    if (*(a1 + 1080))
    {
      v9 = *(a1 + 3352);
      *(a1 + 9736) = v9;
      *(v6 + 60) = v9;
    }
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *addIntoChildList(uint64_t a1, unsigned int *a2, size_t a3, const void *a4, int a5)
{
  v9 = *(a1 + 9696);
  if (v9)
  {
    v10 = *(*(a1 + 9688) + 8 * v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  result = SStackPushData(*(a1 + 9680), *a2, a2);
  v12 = result;
  if (*(a1 + 9712) && !*(a1 + 1080))
  {
    result = SStackPushData(*(a1 + 9680), a3, a4);
  }

  v10[1] = result;
  if (a5)
  {
    v13 = v10[3];
    v14 = *(a1 + 9656);
    if (v13 >= v14)
    {
      v15 = 2 * v14;
      if (!v14)
      {
        v15 = 8;
      }

      *(a1 + 9656) = v15;
      result = malloc_type_realloc(*(a1 + 9648), 8 * v15, 0x80040B8603338uLL);
      *(a1 + 9648) = result;
      v13 = v10[3];
    }

    else
    {
      result = *(a1 + 9648);
    }

    result[v13] = v12;
    v10[3] = v13 + 1;
  }

  else if (!*v10)
  {
    *v10 = v12;
  }

  return result;
}

uint64_t fsi_attr_offset(_DWORD *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = attrTable_table;
  v4 = &attrTable_commonattr;
  v5 = 4;
  do
  {
    ++a2;
    ++a1;
    if (v4 == &attrTable_dirattr)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    if (v4 == &attrTable_fileattr)
    {
      v5 = v2;
    }

    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 6;
      do
      {
        if ((*a1 & v7) != 0)
        {
          if (v7 == *a2)
          {
            return v5;
          }

          v5 += *(v8 - 4);
        }

        v9 = *v8;
        v8 += 10;
        v7 = v9;
      }

      while (v9);
    }

    v10 = v3[1];
    ++v3;
    v4 = v10;
    v2 = v6;
  }

  while (v10);
  return 0;
}

uint64_t fsi_iterate_f(uint64_t a1, __int128 *a2)
{
  v2 = a1;
  v172 = *MEMORY[0x1E69E9840];
  v166 = 0u;
  v167 = 0u;
  *(a1 + 3404) = 0;
  v3 = *(a1 + 8608);
  if (v3)
  {
    *(v3 + 3404) = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = *v2;
  if (!*v2)
  {
    v7 = callBlock;
    v6 = v2;
    goto LABEL_35;
  }

  if (v5 == 1)
  {
    if (*(v2 + 1064) == 1 && !*(v2 + 1072))
    {
      v8 = *MEMORY[0x1E695E480];
      *(v2 + 1072) = SIUINT64SetCreate();
    }

    v9 = CFAbsoluteTimeGetCurrent();
    while (1)
    {
      v170.d_ino = 0;
      if (searchfs((v2 + 4), (v2 + 3488), &v170.d_ino, 0x8000103u, *(v2 + 3424), (v2 + 3592)))
      {
        v10 = *__error();
        v11 = v10 == 35;
        if (v10 != 35 && v10 != 0)
        {
          *(v2 + 3424) &= ~1u;
          if (v10 != 35)
          {
            goto LABEL_377;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      if (v170.d_ino)
      {
        break;
      }

LABEL_29:
      *(v2 + 3424) &= ~1u;
      if (!v11)
      {
LABEL_377:
        v24 = 0;
        v23 = *(v2 + 3400);
LABEL_42:
        *(v2 + 3404) = v23;
        *(v2 + 3400) = 0;
        *__error() = v10;
        if (v10)
        {
          v28 = 1;
        }

        else
        {
          v28 = v24;
        }

        goto LABEL_366;
      }

LABEL_30:
      v20 = *(v2 + 3416);
      v21 = CFAbsoluteTimeGetCurrent();
      v22 = v2;
      if (v20 < v21 - v9)
      {
        do
        {
          *(v22 + 3400) = 1;
          v22 = *(v22 + 8608);
        }

        while (v22);
      }

      v23 = *(v2 + 3400);
      if (v23)
      {
        v24 = 0;
        goto LABEL_42;
      }
    }

    v13 = *(v2 + 3440);
    v14 = 1;
    while (1)
    {
      v15 = *(v2 + 1072);
      *(v2 + 1065) = v15 != 0;
      if (v15)
      {
        v16 = *(v13 + *(v2 + 1112));
        if (SIUINT64SetContainsValue(v15, v16))
        {
          goto LABEL_28;
        }

        v17 = *(v2 + 1072) != 0;
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }

      *(v2 + 1065) = v17;
      v18 = (*(a2 + 2))(a2, v2, v2 + 3344, *(v2 + 3384), v13);
      if (*(v2 + 1065) == 1)
      {
        SIValueSet<unsigned long long>::SIValueSetInsert((*(v2 + 1072) + 16), v16);
      }

      if (v18 == 1)
      {
        v23 = 0;
        v24 = -1;
        goto LABEL_42;
      }

LABEL_28:
      v13 = (v13 + *v13);
      if (v170.d_ino <= v14++)
      {
        goto LABEL_29;
      }
    }
  }

  if (v5 != 2)
  {
    v28 = 0xFFFFFFFFLL;
    goto LABEL_366;
  }

  *&v166 = Current;
  *(&v166 + 1) = callBlock;
  *&v167 = a2;
  *(&v167 + 1) = v2;
  v6 = *(v2 + 8608);
  a2 = &v166;
  v7 = hybridSearch;
LABEL_35:
  if (*(v6 + 1064) == 1 && !*(v6 + 1072))
  {
    v25 = *MEMORY[0x1E695E480];
    *(v6 + 1072) = SIUINT64SetCreate();
  }

  v26 = *(v6 + 9696);
  if (v26)
  {
    v27 = *(*(v6 + 9688) + 8 * v26 - 8);
  }

  else
  {
    v27 = 0;
  }

  LODWORD(v29) = -1;
  if (*(v6 + 9708))
  {
    goto LABEL_47;
  }

  atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
  v137 = open(".", 32772);
  LODWORD(v29) = v137;
  if (v137 > 0x7FF)
  {
    if ((v137 & 0x80000000) != 0)
    {
      atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
      goto LABEL_358;
    }
  }

  else
  {
    *(v6 + 4 * v137 + 9756) = 1607;
    ++*(v6 + 9752);
  }

  if ((*(v6 + 9704) & 0x80000000) == 0 || v27 && (*(v27 + 48) & 0x80000000) == 0)
  {
    if (!MEMORY[0x1C6921200]())
    {
      v155 = *(v6 + 9704);
      if ((v155 & 0x80000000) == 0)
      {
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v155 <= 0x7FF)
        {
          v156 = *(v6 + 9752);
          *(v6 + 9752) = v156 - 1;
          v157 = *(v6 + 9756 + 4 * v155);
          if (v157 < 0 || v156 <= 0)
          {
            __assert_rtn("internalIterateWalk", "fsi.c", 1619, "iterator->fdArray[iterator->resumeFd] >= 0 && iterator->fdCount >= 0");
          }

          if (v157)
          {
            *(v6 + 9756 + 4 * v155) = -v157;
          }
        }
      }

      close(v155);
      *(v6 + 9704) = -1;
      goto LABEL_47;
    }

    v138 = *__error();
    atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
    if (v29 <= 2047)
    {
      v139 = *(v6 + 9752);
      *(v6 + 9752) = v139 - 1;
      v140 = *(v6 + 9756 + 4 * v29);
      if (v140 < 0 || v139 <= 0)
      {
        __assert_rtn("internalIterateWalk", "fsi.c", 1615, "iterator->fdArray[savedFd] >= 0 && iterator->fdCount >= 0");
      }

      if (v140)
      {
        *(v6 + 9756 + 4 * v29) = -v140;
      }
    }

LABEL_357:
    close(v29);
    *__error() = v138;
LABEL_358:
    v28 = 1;
    goto LABEL_366;
  }

LABEL_47:
  v158 = v29;
  v30 = *(v6 + 1056);
  v31 = 10;
  if (*(v6 + 9712))
  {
    v31 = 0;
  }

  v164 = v30 << v31;
  v32 = malloc_type_malloc(v30 << v31, 0x1BB4496BuLL);
  v33 = 0;
  v160 = v6 + 9756;
  v162 = v2;
  v163 = v7;
  v34 = v27;
  do
  {
    if (*(v6 + 9700) == 2)
    {
      goto LABEL_155;
    }

    v33 = 0;
    *(v6 + 9700) = 0;
    if (*(v6 + 3400))
    {
      goto LABEL_52;
    }

    v33 = 0;
    LODWORD(v35) = 0;
    while (2)
    {
      v36 = *(v6 + 9696);
      if (!v36)
      {
        goto LABEL_316;
      }

      while (1)
      {
        v34 = *(*(v6 + 9688) + 8 * v36 - 8);
        if (!v34)
        {
          goto LABEL_153;
        }

        v37 = *v34;
        if (*v34 && v35 == 0)
        {
          break;
        }

        if (!*(v6 + 9708))
        {
          v39 = *(v34 + 48);
          if (v39 != -1)
          {
            if ((v39 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
              if (v39 <= 0x7FF)
              {
                v40 = *(v6 + 9752);
                *(v6 + 9752) = v40 - 1;
                v41 = *(v160 + 4 * (v39 & 0x7FF));
                if (v41 < 0 || v40 <= 0)
                {
                  __assert_rtn("pop", "fsi.c", 708, "iterator->fdArray[(int)previousFileReference] >= 0 && iterator->fdCount >= 0");
                }

                if (v41)
                {
                  *(v160 + 4 * (v39 & 0x7FF)) = -v41;
                }
              }
            }

            close(v39);
            v36 = *(v6 + 9696);
          }
        }

        *(v6 + 9696) = --v36;
        if (!v36)
        {
          goto LABEL_152;
        }

        v42 = *(*(v6 + 9688) + 8 * v36 - 8);
        if (v42)
        {
          if (*(v6 + 1080))
          {
            *(v6 + 9736) = *(v42 + 56);
          }

          if (*(v6 + 9708) || !MEMORY[0x1C6921200](*(v42 + 48)))
          {
            v35 = 0;
          }

          else
          {
            v35 = *__error();
          }

          v43 = *(v6 + 9680);
          Data = SStackNextData(v43, *(v42 + 8));
          if (Data)
          {
            v45 = (Data + ((*(Data - 4) - 1) & 0xFFFFFFFFFFFFFFFCLL));
            v46 = *v43;
            v47 = *(*v43 + 32);
            if (v47)
            {
              do
              {
                if (v47 + 4 <= v45 && v47 + *(v47 + 4) + 32 >= v45)
                {
                  break;
                }

                v48 = *v47;
                v49 = v46[2];
                v46[1] -= v47[3];
                if (v49)
                {
                  free(v47);
                  --gSlabs;
                }

                else
                {
                  v46[2] = v47;
                }

                v47 = v48;
              }

              while (v48);
            }

            v47[1] = 0;
            v46[4] = v47;
            v46[1] -= v47[3];
            v50 = v45 - v47 - 32;
            v47[3] = v50;
            if (v47 == v46[3])
            {
              v50 = &v45[-v46[5]];
              v47[3] = v50;
            }

            v46[1] += v50;
            v46[6] = v45;
            *v45 = 0;
          }

          v36 = *(v6 + 9696);
        }

        else
        {
          v35 = 0;
        }

        v7 = v163;
        if (!v36)
        {
LABEL_152:
          v34 = 0;
LABEL_153:
          if (v33 == 1)
          {
            goto LABEL_272;
          }

          goto LABEL_154;
        }

        v34 = *(*(v6 + 9688) + 8 * v36 - 8);
        if (v34)
        {
          LODWORD(v35) = updateStackEntry(v6, v35, *(v34 + 16));
          *(v6 + 3348) = 2;
          v51 = v163(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
          if (v51 == 2)
          {
            v33 = 0;
          }

          else
          {
            v33 = v51;
          }

          if (v51 == 1)
          {
            goto LABEL_153;
          }

          v36 = *(v6 + 9696);
        }

        if (!v36)
        {
          goto LABEL_152;
        }
      }

      if (*(v6 + 9712) && !*(v6 + 1080))
      {
        v52 = SStackNextData(*(v6 + 9680), *v34);
      }

      else
      {
        v52 = 0;
      }

      *(v34 + 16) = v37;
      LODWORD(v35) = updateStackEntry(v6, 0, v37);
      if (*(v6 + 9664) && ((v53 = *(v6 + 9672)) == 0 || (*(v53 + 16))(v53, v6)))
      {
        v54 = *(v34 + 40);
        if (v54 != *(v34 + 24))
        {
          v55 = *(v34 + 32);
          *(v34 + 40) = v54 + 1;
          v56 = *(v55 + 8 * v54);
          goto LABEL_111;
        }
      }

      else if (v37 != *(v34 + 8))
      {
        v56 = SStackNextData(*(v6 + 9680), v37);
        goto LABEL_111;
      }

      v56 = 0;
LABEL_111:
      *v34 = v56;
      if (*&v37[*(v6 + 1096)] == 1 && *(v6 + 9664))
      {
        v57 = *(v6 + 9672);
        if (!v57)
        {
          goto LABEL_302;
        }

        if ((*(v57 + 16))(v57, v6))
        {
          if (!*(v6 + 9664))
          {
            __assert_rtn("handleRunOfFiles", "fsi.c", 1412, "iterator->comparator");
          }

LABEL_302:
          *(v6 + 3348) = 0;
          v33 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
          if ((v33 & 0xFFFFFFFD) == 0)
          {
            v132 = *v34;
            if (*v34)
            {
              if (*&v132[*(v6 + 1096)] == 1)
              {
                updated = 0;
                do
                {
                  *(v34 + 16) = v132;
                  v134 = *(v34 + 40);
                  if (v134 == *(v34 + 24))
                  {
                    v135 = 0;
                  }

                  else
                  {
                    v136 = *(v34 + 32);
                    *(v34 + 40) = v134 + 1;
                    v135 = *(v136 + 8 * v134);
                  }

                  *v34 = v135;
                  updated = updateStackEntry(v6, updated, v132);
                  *(v6 + 3348) = 0;
                  v33 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
                  if ((v33 & 0xFFFFFFFD) != 0)
                  {
                    break;
                  }

                  v132 = *v34;
                  if (!*v34)
                  {
                    break;
                  }
                }

                while (*&v132[*(v6 + 1096)] == 1);
              }
            }
          }

          if (v33 == 2)
          {
            v33 = 0;
            goto LABEL_154;
          }

          goto LABEL_153;
        }
      }

      if (!*(v6 + 9708))
      {
        v61 = *(v6 + 1080);
        if (v61)
        {
          v62 = *v37;
          if (v61 + 8 <= v62)
          {
            v63 = &v37[v61];
            v64 = *(v63 + 1);
            v65 = &v63[*v63];
            if (&v65[v64] <= &v37[v62])
            {
              v52 = v65;
            }

            else
            {
              v52 = 0;
            }
          }

          else
          {
            v52 = 0;
          }
        }

        atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
        v66 = open(v52, 32772);
        LODWORD(v60) = v66;
        if (v66 > 0x7FF)
        {
          if ((v66 & 0x80000000) != 0)
          {
            v58 = v34;
            atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
            goto LABEL_137;
          }
        }

        else
        {
          *(v160 + 4 * v66) = 749;
          ++*(v6 + 9752);
        }

        v58 = v34;
        if (!MEMORY[0x1C6921200](v66))
        {
          v60 = v60;
          goto LABEL_135;
        }

        v67 = *__error();
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v60 <= 2047)
        {
          v68 = *(v6 + 9752);
          *(v6 + 9752) = v68 - 1;
          v69 = *(v160 + 4 * v60);
          if (v69 < 0 || v68 <= 0)
          {
            __assert_rtn("prepareForPush", "fsi.c", 756, "iterator->fdArray[fd] >= 0 && iterator->fdCount >= 0");
          }

          if (v69)
          {
            *(v160 + 4 * v60) = -v69;
          }
        }

        close(v60);
        *__error() = v67;
LABEL_137:
        __error();
        v70 = 0;
        v60 = -1;
        goto LABEL_138;
      }

      v58 = v34;
      v59 = *(v6 + 1112);
      if (v59 + 8 > *v37)
      {
        goto LABEL_137;
      }

      v60 = *&v37[v59];
LABEL_135:
      v70 = 1;
LABEL_138:
      *(v6 + 3348) = 1;
      if (*(v6 + 9720))
      {
        *(v6 + 3388) = 0;
        v71 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
        *(v6 + 3388) = 0;
      }

      else
      {
        v71 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
      }

      if (v71)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (v72 != 1)
      {
        cleanupAfterNoPush(v6, v60);
        v34 = v58;
        if (v71 == 1)
        {
          goto LABEL_272;
        }

        *(v6 + 3348) = 2;
        if (v71 != 3 && (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392)) == 1)
        {
          goto LABEL_272;
        }

LABEL_150:
        v33 = 2;
        if (!*(v6 + 3400))
        {
          continue;
        }

LABEL_52:
        *(v6 + 9700) = 1;
        goto LABEL_154;
      }

      break;
    }

    if (pushStackEntry(v6, v60))
    {
      v34 = v58;
      cleanupAfterNoPush(v6, v60);
      goto LABEL_150;
    }

    v131 = *(v6 + 9696);
    if (v131)
    {
      v33 = 0;
      v34 = *(*(v6 + 9688) + 8 * v131 - 8);
      goto LABEL_154;
    }

    v33 = 0;
LABEL_316:
    v34 = 0;
LABEL_154:
    if (*(v6 + 3400))
    {
      goto LABEL_271;
    }

LABEL_155:
    if (!v34)
    {
      goto LABEL_271;
    }

    if (*(v6 + 3400) && !*(v6 + 9700))
    {
      *(v6 + 9700) = 2;
      goto LABEL_271;
    }

    *(v6 + 9700) = 0;
    bzero(v171, 0x400uLL);
    if (*(v6 + 9708))
    {
      d_name = v171;
      sprintf(v171, "/.vol/%llu/%llu", *(v6 + 9724), *(v34 + 48));
    }

    else
    {
      d_name = ".";
    }

    if (!*(v6 + 9712))
    {
      atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
      v78 = open(d_name, 32772);
      v79 = v78;
      v161 = v78;
      if (v78 > 0x7FF)
      {
        v2 = v162;
        if ((v78 & 0x80000000) != 0)
        {
          atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
          goto LABEL_271;
        }

        v159 = v34;
      }

      else
      {
        v159 = v34;
        *(v160 + 4 * v78) = 1654;
        ++*(v6 + 9752);
        v2 = v162;
      }

      while (1)
      {
        v80 = getattrlistbulk(v79, (v6 + 1032), v32, v164, 0x208uLL);
        if ((v80 & 0x80000000) == 0)
        {
          break;
        }

        LODWORD(v84) = *__error();
LABEL_199:
        v96 = v33 != 1;
        if (v84)
        {
          v2 = v162;
          v79 = v161;
LABEL_205:
          if (*(v6 + 9716) && (!*(v6 + 9664) || (v97 = *(v6 + 9672)) != 0 && ((*(v97 + 16))(v97, v6) & 1) == 0))
          {
            if (v33 == 1)
            {
              v34 = v159;
            }

            else
            {
              v124 = 0;
              v34 = v159;
              do
              {
                v125 = *(v6 + 9640);
                v126 = *(v125 + 24);
                if (!v126)
                {
                  break;
                }

                v127 = *(v126 + 24);
                if (v127 < 4)
                {
                  break;
                }

                v128 = *(v125 + 40);
                v129 = *v128;
                if (v127 < v129)
                {
                  break;
                }

                v124 = updateStackEntry(v6, v124, v128);
                *(v6 + 3348) = 0;
                *(v6 + 1065) = *(v6 + 1072) != 0;
                v130 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
                if (*(v6 + 1065) == 1)
                {
                  SIValueSet<unsigned long long>::SIValueSetInsert((*(v6 + 1072) + 16), *(*(v6 + 3392) + *(v6 + 1112)));
                }

                SQueueDropData(*(v6 + 9640), v129);
                v33 = v130 == 2 ? 0 : v130;
              }

              while (v33 != 1);
            }

            SQueueEmpty(*(v6 + 9640));
          }

          else
          {
            if (v96)
            {
              finishChildList(v6);
            }

            else
            {
              v33 = 1;
            }

            v34 = v159;
          }

          atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
          if (v79 <= 2047)
          {
            v98 = *(v6 + 9752);
            *(v6 + 9752) = v98 - 1;
            v99 = *(v160 + 4 * v79);
            if (v99 < 0 || v98 <= 0)
            {
              __assert_rtn("internalIterateWalk", "fsi.c", 1767, "iterator->fdArray[fd] >= 0 && iterator->fdCount >= 0");
            }

            if (v99)
            {
              *(v160 + 4 * v79) = -v99;
            }
          }

          close(v79);
          goto LABEL_271;
        }

        v2 = v162;
        v79 = v161;
        if (v33 == 1)
        {
          goto LABEL_205;
        }
      }

      v81 = v80;
      if (!v80)
      {
        v96 = v33 != 1;
        goto LABEL_205;
      }

      if (*(v6 + 9664))
      {
        v82 = *(v6 + 9672);
        if (v82)
        {
          v83 = (*(v82 + 16))(v82, v6);
        }

        else
        {
          v83 = 1;
        }
      }

      else
      {
        v83 = 0;
      }

      v84 = 0;
      v33 = 0;
      v85 = 1;
      v86 = v32;
      while (1)
      {
        if (*(v6 + 9724) != *&v86[*(v6 + 1088)])
        {
          goto LABEL_197;
        }

        v87 = *&v86[*(v6 + 1096)];
        if ((v87 - 1) > 1)
        {
          goto LABEL_197;
        }

        v88 = *(v6 + 1072);
        if (v88)
        {
          if (SIUINT64SetContainsValue(v88, *&v86[*(v6 + 1112)]))
          {
            goto LABEL_197;
          }
        }

        if (v87 != 1)
        {
          break;
        }

        if (!*(v6 + 9716))
        {
          v84 = updateStackEntry(v6, v84, v86);
          *(v6 + 3348) = 0;
          *(v6 + 1065) = *(v6 + 1072) != 0;
          v33 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
          if (*(v6 + 1065) == 1)
          {
            SIValueSet<unsigned long long>::SIValueSetInsert((*(v6 + 1072) + 16), *(*(v6 + 3392) + *(v6 + 1112)));
          }

          if (v33 == 2)
          {
            v33 = 0;
          }

          goto LABEL_197;
        }

        if (v83)
        {
          v89 = v6;
          v90 = v86;
          v91 = 1;
LABEL_190:
          addIntoChildList(v89, v90, 0, 0, v91);
          goto LABEL_197;
        }

        v92 = v32;
        v93 = *(v6 + 9640);
        v94 = *v86;
        v95 = SQueueOpenPushData(v93, v94);
        memcpy(v95, v86, v94);
        v93[6] += v94;
        *(v93[4] + 24) += v94;
        v93[1] += v94;
        v32 = v92;
        v7 = v163;
LABEL_197:
        if (v85 < v81)
        {
          v86 += *v86;
          ++v85;
          if (v33 != 1)
          {
            continue;
          }
        }

        goto LABEL_199;
      }

      if ((v86[*(v6 + 1120)] & 3) != 0)
      {
        goto LABEL_197;
      }

      v89 = v6;
      v90 = v86;
      v91 = v83;
      goto LABEL_190;
    }

    v74 = opendir(d_name);
    if (!v74)
    {
      goto LABEL_267;
    }

    v75 = v74;
    bzero(&v170, 0x418uLL);
    v169 = 0;
    if (*(v6 + 9664))
    {
      v76 = *(v6 + 9672);
      if (v76)
      {
        v77 = (*(v76 + 16))(v76, v6);
      }

      else
      {
        v77 = 1;
      }
    }

    else
    {
      v77 = 0;
    }

    while (v33 != 1)
    {
      if (readdir_r(v75, &v170, &v169))
      {
        break;
      }

      v100 = v169;
      if (!v169)
      {
        break;
      }

      if (v169->d_name[0] != 46 || v169->d_name[1] && (v169->d_name[1] != 46 || v169->d_name[2]))
      {
        if (*(v6 + 9708))
        {
          sprintf(v171, "/.vol/%llu/%llu", *(v6 + 9724), v169->d_ino);
          v100 = v169;
        }

        else
        {
          d_name = v169->d_name;
        }

        d_type = v100->d_type;
        if (d_type)
        {
          goto LABEL_242;
        }

        memset(&v168, 0, sizeof(v168));
        if (!fstatat(-2, d_name, &v168, 544))
        {
          v103 = v169;
LABEL_239:
          v103->d_type = v168.st_mode >> 12;
          goto LABEL_241;
        }

        if (*__error() != 22)
        {
          v103 = v169;
          goto LABEL_241;
        }

        v102 = fstatat(-2, d_name, &v168, 32);
        v103 = v169;
        if (!v102)
        {
          goto LABEL_239;
        }

LABEL_241:
        d_type = v103->d_type;
LABEL_242:
        v104 = d_type == 8 || d_type == 4;
        if (v104 && (!getattrlist(d_name, (v6 + 1032), v32, v164, 0x208u) || !*__error()))
        {
          if (v169->d_type == 8)
          {
            if (*(v6 + 9724) == *(v32 + *(v6 + 1088)))
            {
              if (*(v6 + 9716))
              {
                if (v77)
                {
                  v105 = v6;
                  v106 = v32;
                  d_namlen = 0;
                  v108 = 0;
                  v109 = 1;
                  goto LABEL_257;
                }

                v111 = v34;
                v112 = *(v6 + 9640);
                v113 = *v32;
                v114 = SQueueOpenPushData(v112, v113);
                memcpy(v114, v32, v113);
                v112[6] += v113;
                *(v112[4] + 24) += v113;
                v112[1] += v113;
                v34 = v111;
              }

              else
              {
                updateStackEntry(v6, 0, v32);
                *(v6 + 3348) = 0;
                v110 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
                if (v110 == 2)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = v110;
                }
              }
            }
          }

          else if ((*(v32 + *(v6 + 1120)) & 3) == 0 && *(v6 + 9724) == *(v32 + *(v6 + 1088)))
          {
            d_namlen = v169->d_namlen;
            v108 = v169->d_name;
            v105 = v6;
            v106 = v32;
            v109 = v77;
LABEL_257:
            addIntoChildList(v105, v106, d_namlen, v108, v109);
          }
        }
      }
    }

    closedir(v75);
    if (*(v6 + 9716) && (!*(v6 + 9664) || (v115 = *(v6 + 9672)) != 0 && ((*(v115 + 16))(v115, v6) & 1) == 0))
    {
      v2 = v162;
      if (v33 != 1)
      {
        v116 = 0;
        do
        {
          v117 = *(v6 + 9640);
          v118 = *(v117 + 24);
          if (!v118)
          {
            break;
          }

          v119 = *(v118 + 24);
          if (v119 < 4)
          {
            break;
          }

          v120 = *(v117 + 40);
          v121 = *v120;
          if (v119 < v121)
          {
            break;
          }

          v116 = updateStackEntry(v6, v116, v120);
          *(v6 + 3348) = 0;
          v122 = v34;
          v123 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
          SQueueDropData(*(v6 + 9640), v121);
          v33 = v123 == 2 ? 0 : v123;
          v34 = v122;
        }

        while (v33 != 1);
      }

      SQueueEmpty(*(v6 + 9640));
    }

    else
    {
      finishChildList(v6);
LABEL_267:
      v2 = v162;
    }

LABEL_271:
    if (v33 != 1)
    {
      v28 = 0;
      if (!v34)
      {
        break;
      }

      continue;
    }

LABEL_272:
    if (!*(v6 + 9708))
    {
      v141 = *(v6 + 9696);
      v28 = 0xFFFFFFFFLL;
      if (v141)
      {
        do
        {
          v142 = *(*(v6 + 9688) + 8 * v141 - 8);
          if (!v142)
          {
            break;
          }

          v143 = *(v142 + 48);
          if (v143 != -1)
          {
            if ((v143 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
              if (v143 <= 2047)
              {
                v144 = *(v6 + 9752);
                *(v6 + 9752) = v144 - 1;
                v145 = *(v160 + 4 * (v143 & 0x7FFFFFFF));
                if (v145 < 0 || v144 <= 0)
                {
                  __assert_rtn("internalIterateWalk", "fsi.c", 1856, "iterator->fdArray[(int)tos->fileReference] >= 0 && iterator->fdCount >= 0");
                }

                if (v145)
                {
                  *(v160 + 4 * (v143 & 0x7FFFFFFF)) = -v145;
                }
              }
            }

            close(v143);
            v141 = *(v6 + 9696);
          }

          *(v6 + 9696) = --v141;
        }

        while (v141);
        v28 = 0xFFFFFFFFLL;
      }

      break;
    }

    v33 = 1;
    v28 = 0xFFFFFFFFLL;
    if (!v34)
    {
      break;
    }
  }

  while (v33 != 1 && !*(v6 + 3400));
  v146.n128_f64[0] = SQueueEmpty(*(v6 + 9640));
  if (*(v6 + 3400))
  {
    *(v6 + 3404) = 1;
    v29 = v158;
    if (!*(v6 + 9708))
    {
      atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
      v147 = open(".", 32772, v146.n128_f64[0]);
      if (v147 <= 0x7FF)
      {
        *(v160 + 4 * v147) = 1868;
        ++*(v6 + 9752);
        goto LABEL_349;
      }

      if ((v147 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        *(v6 + 9704) = v147;
        *(v6 + 3404) = 0;
        v28 = 1;
      }

      else
      {
LABEL_349:
        *(v6 + 9704) = v147;
      }
    }

    *(v6 + 3400) = 0;
    if ((v158 & 0x80000000) == 0)
    {
LABEL_351:
      if (MEMORY[0x1C6921200](v29, v146))
      {
        *(v6 + 3404) = 0;
        v138 = *__error();
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v29 <= 0x7FF)
        {
          v148 = *(v6 + 9752);
          *(v6 + 9752) = v148 - 1;
          v149 = *(v160 + 4 * v29);
          if (v149 < 0 || v148 <= 0)
          {
            __assert_rtn("internalIterateWalk", "fsi.c", 1880, "iterator->fdArray[savedFd] >= 0 && iterator->fdCount >= 0");
          }

          if (v149)
          {
            *(v160 + 4 * v29) = -v149;
          }
        }

        goto LABEL_357;
      }

      atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
      if (v29 <= 0x7FF)
      {
        v150 = *(v6 + 9752);
        *(v6 + 9752) = v150 - 1;
        v151 = *(v160 + 4 * v29);
        if (v151 < 0 || v150 <= 0)
        {
          __assert_rtn("internalIterateWalk", "fsi.c", 1884, "iterator->fdArray[savedFd] >= 0 && iterator->fdCount >= 0");
        }

        if (v151)
        {
          *(v160 + 4 * v29) = -v151;
        }
      }

      close(v29);
    }
  }

  else
  {
    v29 = v158;
    if ((v158 & 0x80000000) == 0)
    {
      goto LABEL_351;
    }
  }

  free(v32);
LABEL_366:
  v152 = *(v2 + 8608);
  if (v152)
  {
    *(v2 + 3404) = *(v152 + 3404);
    *(v2 + 3400) = 0;
  }

  v153 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t updateStackEntry(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *(a1 + 1080);
  if (v6)
  {
    v7 = *a3;
    if (v6 + 8 > v7 || (v8 = &a3[v6], v9 = *(v8 + 1), v10 = &v8[*v8], &v10[v9] > &a3[v7]))
    {
      a2 = 2;
      v11 = -1;
LABEL_5:
      *(a1 + 3376) = a1 + *(a1 + 3352) - v11 + 8616;
      *(a1 + 3368) = v11;
      goto LABEL_6;
    }

    v11 = v9 - 1;
    v13 = *(a1 + 9736);
    if (v13 == 1)
    {
      if (*(a1 + 8616) == 47)
      {
        strlcpy((a1 + 8617), v10, 0x3FFuLL);
        goto LABEL_12;
      }
    }

    else if (!v13)
    {
      __strlcpy_chk();
LABEL_12:
      --v9;
LABEL_15:
      *(a1 + 3352) = *(a1 + 9736) + v9;
      goto LABEL_5;
    }

    if ((v13 + v9) > 0x3FF)
    {
      a2 = 63;
      goto LABEL_5;
    }

    *(a1 + 8616 + v13) = 47;
    strlcpy((a1 + 8616 + *(a1 + 9736) + 1), v10, 1023 - *(a1 + 9736));
    goto LABEL_15;
  }

LABEL_6:
  *(a1 + 3384) = a2;
  *(a1 + 3392) = a3;
  *(a1 + 3344) = *(a1 + 9696) - 1;
  return a2;
}

uint64_t cleanupAfterNoPush(uint64_t result, uint64_t a2)
{
  if (a2 != -1)
  {
    v2 = result;
    if (!*(result + 9708))
    {
      v3 = a2;
      v4 = *(result + 9696);
      if (v4)
      {
        v5 = *(*(result + 9688) + 8 * v4 - 8);
        if (v5)
        {
          MEMORY[0x1C6921200](*(v5 + 48));
        }
      }

      if ((v3 & 0x80000000) == 0)
      {
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v3 <= 0x7FF)
        {
          v6 = *(v2 + 9752);
          *(v2 + 9752) = v6 - 1;
          v7 = *(v2 + 9756 + 4 * (v3 & 0x7FF));
          if (v7 < 0 || v6 <= 0)
          {
            __assert_rtn("cleanupAfterNoPush", "fsi.c", 776, "iterator->fdArray[(int)fileReference] >= 0 && iterator->fdCount >= 0");
          }

          if (v7)
          {
            *(v2 + 9756 + 4 * (v3 & 0x7FF)) = -v7;
          }
        }
      }

      return close(v3);
    }
  }

  return result;
}

_DWORD *finishChildList(_DWORD *result)
{
  if (*(result + 1208))
  {
    v1 = result;
    result = *(result + 1209);
    if (!result || (result = (*(result + 2))(result, v1), result))
    {
      v2 = v1[2424];
      if (v2)
      {
        v3 = *(*(v1 + 1211) + 8 * v2 - 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = v3[5];
      v5 = v3[3];
      if (v4)
      {
        if (v4 < v5)
        {
          if (!*v3)
          {
            __assert_rtn("finishChildList", "fsi.c", 574, "tos->currentItem!=0");
          }

          if (*v3 != *(v3[4] + 8 * v4 - 8))
          {
            __assert_rtn("finishChildList", "fsi.c", 575, "tos->currentItem == tos->children[tos->currentChild-1]");
          }
        }
      }

      else if (v5)
      {
        v6 = *(v1 + 1206);
        __compar[0] = MEMORY[0x1E69E9820];
        __compar[1] = 0x40000000;
        __compar[2] = __finishChildList_block_invoke;
        __compar[3] = &__block_descriptor_tmp_28_10148;
        __compar[4] = v1;
        qsort_b(v6, v5, 8uLL, __compar);
        result = SStackPushData(*(v1 + 1210), 8 * v3[3], *(v1 + 1206));
        v3[4] = result;
        if (*v3)
        {
          __assert_rtn("finishChildList", "fsi.c", 564, "tos->currentItem==0");
        }

        if (v3[5])
        {
          __assert_rtn("finishChildList", "fsi.c", 565, "tos->currentChild==0");
        }

        v3[5] = 1;
        *v3 = *result;
      }

      else if (*v3)
      {
        __assert_rtn("finishChildList", "fsi.c", 568, "tos->currentItem==0");
      }

      v3[1] = v3[4];
    }
  }

  return result;
}

uint64_t __finishChildList_block_invoke(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  return (*(*(*(a1 + 32) + 9664) + 16))();
}

uint64_t hybridSearch(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = *(a3 + 24);
  v7 = *(a2 + 4);
  if (v7 != 2)
  {
    v11 = *a2;
    v12 = v7 != 1 || v11 < 1;
    v83 = a5;
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v14 = *(v6 + 3424);
      if ((v14 & 0x40) == 0)
      {
        v13 = 0;
        goto LABEL_17;
      }

      v15 = *(a2 + 16);
      if (path_bundle_index_predicate != -1)
      {
        dispatch_once(&path_bundle_index_predicate, &__block_literal_global_10155);
      }

      v13 = fcntl(path_bundle_index_sDummyFD_10156, 52, v15) >= 0;
      v11 = *a2;
      a5 = v83;
    }

    v14 = *(v6 + 3424);
    if (v11 < 1)
    {
LABEL_18:
      v16 = 1;
      goto LABEL_26;
    }

LABEL_17:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    if ((*(a5 + *(v6 + 1104) + 8) & 0x40) != 0)
    {
      goto LABEL_22;
    }

    v17 = *(a2 + 32);
    if (v17)
    {
      if (*v17 == 46)
      {
LABEL_22:
        v16 = 0;
        LODWORD(v17) = *(a2 + 4) == 1;
LABEL_25:
        v13 |= v17;
LABEL_26:
        v18 = *(a2 + 4);
        if (v18 == 1)
        {
          if ((v14 & 4) == 0)
          {
            return (2 * v13);
          }
        }

        else if (!v18 && (v14 & 8) == 0)
        {
          return (2 * v13);
        }

        v80 = v16;
        v81 = v13;
        v77 = a2;
        v78 = a4;
        v79 = a3;
        v19 = *(v6 + 4176);
        if (v19 >= 1)
        {
          v20 = 0;
          v21 = (*(v6 + 3480) + 4);
          v22 = (*(v6 + 3472) + 4);
          v23 = v6 + 4472;
          v76 = a5 + 4;
          while (1)
          {
            v24 = *(v6 + 5752 + 8 * v20);
            v25 = *(v23 + 8 * v20);
            if (!v25)
            {
              goto LABEL_63;
            }

            if (!*(v6 + 4312 + v20))
            {
              v28 = 1;
              goto LABEL_65;
            }

            v26 = (a5 + v25);
            v27 = *(v6 + 4392 + v20);
            v28 = 1;
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                v41 = v14;
                v42 = v26 + *v26;
                v43 = v22 + *v22;
                if ((v14 & 2) != 0)
                {
                  v28 = strcasestr(v42, v43) != 0;
                  v19 = *(v6 + 4176);
                }

                else
                {
                  v28 = strcasecmp(v42, v43) == 0;
                }

                v23 = v6 + 4472;
                a5 = v83;
                v14 = v41;
              }

              else if (v27 == 4 && v24 >= 4)
              {
                if ((*v21 & *v26) == *v22)
                {
                  v33 = 0;
                  v34 = v76 + v25;
                  while ((v24 >> 2) - 1 != v33)
                  {
                    v35 = v21[v33 + 1] & *(v34 + 4 * v33);
                    v36 = v22[++v33];
                    if (v35 != v36)
                    {
                      goto LABEL_74;
                    }
                  }

                  v33 = v24 >> 2;
LABEL_74:
                  v28 = v33 >= v24 >> 2;
                }

                else
                {
LABEL_70:
                  v28 = 0;
                }
              }

              goto LABEL_64;
            }

            if (v27 != 1)
            {
              break;
            }

            if (v24 >= 4)
            {
              v37 = v24 >> 2;
              v38 = v21;
              v39 = v22;
              while (1)
              {
                v40 = *v26;
                if (*v26 > *v39 && v40 < *v38)
                {
                  break;
                }

                if (v40 < *v39 || v40 > *v38)
                {
                  goto LABEL_70;
                }

                ++v26;
                ++v39;
                ++v38;
                v28 = 1;
                if (!--v37)
                {
                  goto LABEL_64;
                }
              }

LABEL_63:
              v28 = 1;
            }

LABEL_64:
            v22 = (v22 + v24);
            v21 = (v21 + v24);
LABEL_65:
            if (++v20 >= v19 || !v28)
            {
              goto LABEL_76;
            }
          }

          if (v27 != 2 || v24 < 8)
          {
            goto LABEL_64;
          }

          v29 = v24 >> 3;
          v30 = v21;
          v31 = v22;
          while (1)
          {
            v32 = *v26;
            if (*v26 > *v31 && v32 < *v30)
            {
              goto LABEL_63;
            }

            if (v32 < *v31 || v32 > *v30)
            {
              goto LABEL_70;
            }

            v26 += 2;
            ++v31;
            ++v30;
            v28 = 1;
            if (!--v29)
            {
              goto LABEL_64;
            }
          }
        }

        v28 = 1;
LABEL_76:
        if (v14 < 0)
        {
          v28 = !v28;
        }

        if (!v28)
        {
          return (2 * v81);
        }

        v44 = v81;
        if ((v80 & 1) == 0)
        {
          return (2 * v81);
        }

        if ((*(v6 + 1028) & 0x80) != 0)
        {
LABEL_115:
          v72 = (*(v79 + 8))(v6, v77, *(v79 + 16), v78, a5);
          if (v44)
          {
            v73 = 2;
          }

          else
          {
            v73 = v72;
          }

          if (v72 == 1)
          {
            return 1;
          }

          else
          {
            return v73;
          }
        }

        v45 = *(v6 + 3440);
        v46 = v45 + 1;
        v82 = v45;
        v47 = v45 + *(v6 + 6432);
        v48 = *(v6 + 6416);
        if (v48)
        {
          v49 = (a5 + v48);
LABEL_83:
          v50 = *v49;
          goto LABEL_84;
        }

        v74 = *(v6 + 6424);
        if (v74)
        {
          v75 = (*(a5 + v74) & 0xF000) - 4096;
          if (v75 >> 14 <= 2)
          {
            v49 = (&unk_1C2BFFCCC + 4 * (v75 >> 12));
            goto LABEL_83;
          }

          v50 = 0;
        }

        else
        {
          v50 = -1;
        }

        if (*(v6 + 6396) < 1)
        {
          goto LABEL_106;
        }

LABEL_84:
        v51 = 0;
        v52 = v6 + 6448;
        do
        {
          v53 = v52 + 8 * v51;
          v54 = *(v53 + 1520);
          v55 = *(v53 + 240);
          if (v55)
          {
            v56 = (a5 + v55);
            if (*(v52 + v51))
            {
              v57 = v56[1];
              memcpy(v47, v56 + *v56, v57);
              *v46 = v47 - v46;
              v46[1] = v57;
              v47 += (v56[1] + 3) & 0xFFFFFFFC;
            }

            else
            {
              memcpy(v46, (a5 + v55), v54);
            }
          }

          else
          {
            bzero(v46, v54);
          }

          v46 = (v46 + v54);
          ++v51;
          v58 = *(v6 + 6396);
          a5 = v83;
        }

        while (v51 < v58);
        if (v50 == 2 && v58 >= 1)
        {
          if (*(v6 + 6400) >= 1)
          {
            v59 = (v6 + 8 * v58 + 6688);
            v60 = (v6 + v58 + 6448);
            do
            {
              v61 = v59[160];
              v62 = *v59;
              if (*v59)
              {
                v63 = (a5 + v62);
                if (*v60)
                {
                  v64 = v63[1];
                  memcpy(v47, v63 + *v63, v64);
                  *v46 = v47 - v46;
                  v46[1] = v64;
                  v47 += (v63[1] + 3) & 0xFFFFFFFC;
                }

                else
                {
                  memcpy(v46, (a5 + v62), v59[160]);
                }
              }

              else
              {
                bzero(v46, v59[160]);
              }

              ++v59;
              v46 = (v46 + v61);
              LODWORD(v58) = v58 + 1;
              ++v60;
              a5 = v83;
            }

            while (*(v6 + 6400) + *(v6 + 6396) > v58);
          }
        }

        else
        {
LABEL_106:
          if (v50 == 1 && *(v6 + 6408) >= 1)
          {
            v65 = *(v6 + 6404);
            v66 = v6 + 6448;
            do
            {
              v67 = v66 + 8 * v65;
              v68 = *(v67 + 1520);
              v69 = *(v67 + 240);
              if (v69)
              {
                v70 = (a5 + v69);
                if (*(v66 + v65))
                {
                  v71 = v70[1];
                  memcpy(v47, v70 + *v70, v71);
                  *v46 = v47 - v46;
                  v46[1] = v71;
                  v47 += (v70[1] + 3) & 0xFFFFFFFC;
                }

                else
                {
                  memcpy(v46, (a5 + v69), v68);
                }
              }

              else
              {
                bzero(v46, v68);
              }

              v46 = (v46 + v68);
              ++v65;
              a5 = v83;
            }

            while (v65 < *(v6 + 6408) + *(v6 + 6404));
          }
        }

        *v82 = v47 - v82;
        a5 = *(v6 + 3440);
        v44 = v81;
        goto LABEL_115;
      }

      LODWORD(v17) = 0;
    }

    v16 = 1;
    goto LABEL_25;
  }

  if (*(v6 + 3416) < CFAbsoluteTimeGetCurrent() - *a3)
  {
    do
    {
      *(v6 + 3400) = 1;
      v6 = *(v6 + 8608);
    }

    while (v6);
  }

  return 0;
}

uint64_t __path_bundle_index_block_invoke_10161()
{
  result = open("/System/Library", 4);
  path_bundle_index_sDummyFD_10156 = result;
  return result;
}

void *___ZL46getkQPQueryParserOptionUseLLMParseKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQueryParserOptionUseLLMParseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *QueryParserLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL22QueryParserLibraryCorePPc_block_invoke_10583;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8196CF8;
    v7 = 0;
    QueryParserLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore(char **)::frameworkLibrary;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QueryParserLibrary()"];
    v1 = [v0 handleFailureInFunction:v4 file:@"PRLLMParse.mm" lineNumber:13 description:{@"%s", v5[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL22QueryParserLibraryCorePPc_block_invoke_12841;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8197788;
    v7 = 0;
    QueryParserLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore(char **)::frameworkLibrary;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QueryParserLibrary()"];
    v1 = [v0 handleFailureInFunction:v4 file:@"PRQUUtils.mm" lineNumber:15 description:{@"%s", v5[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL22QueryParserLibraryCorePPc_block_invoke_16545;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E81996B8;
    v7 = 0;
    QueryParserLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore(char **)::frameworkLibrary;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QueryParserLibrary()"];
    v1 = [v0 handleFailureInFunction:v4 file:@"PRQueryPhotosProcessor.mm" lineNumber:24 description:{@"%s", v5[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t ___ZL22QueryParserLibraryCorePPc_block_invoke_10583(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  QueryParserLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

const void *getLLMParseFromQueryUnderstanding(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0;
  }

  return CFDictionaryGetValue(a1, @"attributedParse");
}

const __CFDictionary *getRawTextFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputTokenRawTextKey");
        getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenRawTextKey()") description:{@"PRLLMParse.mm", 15, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4DC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL38getkQPQUOutputTokenRawTextKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenRawTextKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *getTokenFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputTokenKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
        getkQPQUOutputTokenKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenKey()") description:{@"PRLLMParse.mm", 16, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL31getkQPQUOutputTokenKeySymbolLocv_block_invoke_10598(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *getLemmaFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputLemmaKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputLemmaKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputLemmaKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputLemmaKey");
        getkQPQUOutputLemmaKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputLemmaKey()") description:{@"PRLLMParse.mm", 17, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4DF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL31getkQPQUOutputLemmaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputLemmaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputLemmaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *getRawTextTokensFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputRawTextTokenizedKey");
        getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputRawTextTokenizedKey()") description:{@"PRLLMParse.mm", 18, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4E134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL42getkQPQUOutputRawTextTokenizedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputRawTextTokenizedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getAttributeIndexFromTokenInfo(const __CFDictionary *a1)
{
  if (a1 && CFDictionaryGetCount(a1))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v2 = getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr;
    v11 = getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr;
    if (!getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v9[3] = dlsym(ParserLibrary, "kQPQUOutputTokenAttributeIndexesKey");
      getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr = v9[3];
      v2 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v7 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenAttributeIndexesKey()") description:{@"PRLLMParse.mm", 26, @"%s", dlerror()}];
      __break(1u);
      return result;
    }

    Value = CFDictionaryGetValue(a1, *v2);
    if (Value)
    {
      v5 = Value;
      if (CFArrayGetCount(Value) == 1)
      {
        return [CFArrayGetValueAtIndex(v5 0)];
      }
    }
  }

  return -1;
}

void sub_1C2B4E314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL47getkQPQUOutputTokenAttributeIndexesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenAttributeIndexesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPQUOutputECRGroundNamesTokenKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputECRGroundNamesTokenKey");
    getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputECRGroundNamesTokenKey()") description:{@"PRLLMParse.mm", 22, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B4E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL45getkQPQUOutputECRGroundNamesTokenKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputECRGroundNamesTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPQUOutputTokenPhraseWeightsKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenPhraseWeightsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPQUOutputTokenIsSelfKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenIsSelfKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *getIsRelativeTimeArgFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputTokenIsRelativeTimeKey");
        getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return [CFDictionaryGetValue(v1 *v2)];
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenIsRelativeTimeKey()") description:{@"PRLLMParse.mm", 25, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4E700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL45getkQPQUOutputTokenIsRelativeTimeKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenIsRelativeTimeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const void *getTokenIDsFromTokenInfo(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0;
  }

  v2 = getkQPQUOutputTokenArgIdsKey();

  return CFDictionaryGetValue(a1, v2);
}

uint64_t getkQPQUOutputTokenArgIdsKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
    getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgIdsKey()") description:{@"PRLLMParse.mm", 19, @"%s", dlerror()}];
  __break(1u);
  return result;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
    getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgIdsKey()") description:{@"PRQUUtils.mm", 21, @"%s", dlerror()}];
  __break(1u);
  return result;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
    getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgIdsKey()") description:{@"PRQueryPhotosProcessor.mm", 26, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B4E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL37getkQPQUOutputTokenArgIdsKeySymbolLocv_block_invoke_10624(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getTopTokenIDFromTokenInfo(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!CFDictionaryGetCount(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = getkQPQUOutputTokenArgIdsKey();
  Value = CFDictionaryGetValue(a1, v2);
  if (![Value count])
  {
    return 0xFFFFFFFFLL;
  }

  v4 = [Value objectAtIndexedSubscript:0];

  return [v4 intValue];
}

uint64_t getTokenRangeFromTokenInfo(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  v9 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v7[3] = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
    getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    return [CFDictionaryGetValue(a1 *v2)];
  }

  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenRangeKey()") description:{@"PRLLMParse.mm", 20, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B4EB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL36getkQPQUOutputTokenRangeKeySymbolLocv_block_invoke_10632(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const void *getGroundedNamesTokenFromTokenInfo(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0;
  }

  v2 = getkQPQUOutputECRGroundNamesTokenKey();

  return CFDictionaryGetValue(a1, v2);
}

const __CFDictionary *getGroundedNamesFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputECRGroundNamesKey");
        getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputECRGroundNamesKey()") description:{@"PRLLMParse.mm", 21, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4ED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkQPQUOutputECRGroundNamesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputECRGroundNamesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getLLMTokenDescription(int a1, _NSRange a2, NSAttributedString *a3, int a4)
{
  v4 = &v20;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__10642;
  v24 = __Block_byref_object_dispose__10643;
  v25 = 0;
  if (a2.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v5) = a4;
    v6 = a3;
    length = a2.length;
    location = a2.location;
    LODWORD(v9) = a1;
    if (a2.location + a2.length <= [(NSAttributedString *)a3 length])
    {
      {
        goto LABEL_22;
      }

      while (1)
      {
        if (getLLMTokenAttrDescriptionMap(void)::onceToken != -1)
        {
          dispatch_once(&getLLMTokenAttrDescriptionMap(void)::onceToken, &__block_literal_global_10644);
        }

        v10 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::find<int>(v9);
        if (!v10)
        {
          v10 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::find<int>(-1);
          if (!v10)
          {
            abort();
          }
        }

        v9 = v10 + 3;
        if (v10[3] == v10[4])
        {
          break;
        }

        if (v5)
        {
          v31 = 0;
          v32 = &v31;
          v33 = 0x2020000000;
          v5 = &unk_1EBF64000;
          v11 = getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr;
          v34 = getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr;
          if (!getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr)
          {
            v26 = MEMORY[0x1E69E9820];
            v27 = 3221225472;
            v28 = ___ZL50getkQPParseAttributeRankingDescriptionKeySymbolLocv_block_invoke;
            v29 = &unk_1E8199698;
            v30 = &v31;
            ParserLibrary = QueryParserLibrary();
            v13 = dlsym(ParserLibrary, "kQPParseAttributeRankingDescriptionKey");
            *(v30[1] + 24) = v13;
            getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr = *(v30[1] + 24);
            v11 = v32[3];
          }

          _Block_object_dispose(&v31, 8);
          if (v11)
          {
            goto LABEL_17;
          }

          length = [MEMORY[0x1E696AAA8] currentHandler];
          v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef  _Nullable getkQPParseAttributeRankingDescriptionKey()"];
          [length handleFailureInFunction:v6 file:@"PRLLMParse.mm" lineNumber:28 description:{@"%s", dlerror()}];
        }

        else
        {
          v31 = 0;
          v32 = &v31;
          v33 = 0x2020000000;
          v5 = 0x1EDD78000;
          v11 = getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr;
          v34 = getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr;
          if (!getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr)
          {
            v26 = MEMORY[0x1E69E9820];
            v27 = 3221225472;
            v28 = ___ZL43getkQPParseAttributeDescriptionKeySymbolLocv_block_invoke;
            v29 = &unk_1E8199698;
            v30 = &v31;
            v14 = QueryParserLibrary();
            v15 = dlsym(v14, "kQPParseAttributeDescriptionKey");
            *(v30[1] + 24) = v15;
            getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr = *(v30[1] + 24);
            v11 = v32[3];
          }

          _Block_object_dispose(&v31, 8);
          if (v11)
          {
LABEL_17:
            v16 = *v11;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = ___Z22getLLMTokenDescriptioni8_NSRangeP18NSAttributedStringb_block_invoke;
            v19[3] = &unk_1E8196CD8;
            v19[4] = v16;
            v19[5] = &v20;
            v19[6] = v9;
            [(NSAttributedString *)v6 enumerateAttributesInRange:location options:length usingBlock:0, v19];
            break;
          }

          length = [MEMORY[0x1E696AAA8] currentHandler];
          v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef  _Nullable getkQPParseAttributeDescriptionKey()"];
          [length handleFailureInFunction:v6 file:@"PRLLMParse.mm" lineNumber:27 description:{@"%s", dlerror()}];
        }

        __break(1u);
LABEL_22:
        {
          getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap = 0u;
          *&qword_1EBF643E0 = 0u;
          dword_1EBF643F0 = 1065353216;
        }
      }
    }

    v4 = v21;
  }

  v17 = v4[5];
  _Block_object_dispose(&v20, 8);
  return v17;
}

void sub_1C2B4F164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose((v10 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::find<int>(int a1)
{
  if (!*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) <= a1)
    {
      v2 = a1 % *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1);
    }
  }

  else
  {
    v2 = (*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) - 1) & a1;
  }

  i = *(getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1))
          {
            v4 %= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1);
          }
        }

        else
        {
          v4 &= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void *___ZL50getkQPParseAttributeRankingDescriptionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRankingDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeDescriptionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___Z22getLLMTokenDescriptioni8_NSRangeP18NSAttributedStringb_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    result = [a2 objectForKeyedSubscript:*(a1 + 32)];
    if (result)
    {
      v9 = **(a1 + 48);
      if (*(*(a1 + 48) + 8) != v9)
      {
        v10 = 0;
        while (1)
        {
          result = [a2 objectForKeyedSubscript:*(v9 + 8 * v10)];
          if (result)
          {
            break;
          }

          ++v10;
          v9 = **(a1 + 48);
          if (v10 >= (*(*(a1 + 48) + 8) - v9) >> 3)
          {
            return result;
          }
        }

        result = [a2 objectForKeyedSubscript:*(a1 + 32)];
        *(*(*(a1 + 40) + 8) + 40) = result;
        *a5 = 1;
      }
    }
  }

  return result;
}

void *___ZL29getLLMTokenAttrDescriptionMapv_block_invoke()
{
  v663 = *MEMORY[0x1E69E9840];
  v0 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(-1);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v0 + 3, 0, 0, 0);
  __src = getkQPParseAttributeKeywordKey();
  v1 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(1);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v1 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKeywordKey();
  v651 = &QUPP_ARG_SEARCH_TERM_OPTIONAL;
  v2 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(73);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v2 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v3 = getkQPParseAttributeLocationKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeLocationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeLocationKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL40getkQPParseAttributeLocationKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    ParserLibrary = QueryParserLibrary();
    p_src[3] = dlsym(ParserLibrary, "kQPParseAttributeLocationKey");
    getkQPParseAttributeLocationKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v3 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v3)
  {
    v530 = [MEMORY[0x1E696AAA8] currentHandler];
    [v530 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeLocationKey()") description:{@"PRLLMParse.mm", 30, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v3;
  v5 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(5);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v5 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeDateKey();
  v651 = &QUPP_ARG_TIME;
  v6 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(8);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v6 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v7 = getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL44getkQPParseAttributeFlightActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v8 = QueryParserLibrary();
    p_src[3] = dlsym(v8, "kQPParseAttributeFlightActionKey");
    getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v7 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v7)
  {
    v531 = [MEMORY[0x1E696AAA8] currentHandler];
    [v531 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightActionKey()") description:{@"PRLLMParse.mm", 34, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v7;
  v651 = &QUPP_ARG_EVENT_TYPE_FLIGHT;
  v9 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(15);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v9 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v10 = getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL43getkQPParseAttributeHotelActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v11 = QueryParserLibrary();
    p_src[3] = dlsym(v11, "kQPParseAttributeHotelActionKey");
    getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v10 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v10)
  {
    v532 = [MEMORY[0x1E696AAA8] currentHandler];
    [v532 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeHotelActionKey()") description:{@"PRLLMParse.mm", 35, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v10;
  v651 = &QUPP_ARG_EVENT_TYPE_HOTEL;
  v12 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(16);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v12 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v13 = getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL48getkQPParseAttributeRestaurantActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v14 = QueryParserLibrary();
    p_src[3] = dlsym(v14, "kQPParseAttributeRestaurantActionKey");
    getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v13 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v13)
  {
    v533 = [MEMORY[0x1E696AAA8] currentHandler];
    [v533 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRestaurantActionKey()") description:{@"PRLLMParse.mm", 36, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v13;
  v651 = &QUPP_ARG_EVENT_TYPE_RESTAURANT;
  v15 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(17);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v15 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v16 = getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeAppointmentActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v17 = QueryParserLibrary();
    p_src[3] = dlsym(v17, "kQPParseAttributeAppointmentActionKey");
    getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v16 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v16)
  {
    v534 = [MEMORY[0x1E696AAA8] currentHandler];
    [v534 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAppointmentActionKey()") description:{@"PRLLMParse.mm", 37, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v16;
  v651 = &QUPP_ARG_EVENT_TYPE_APPOINTMENT;
  v18 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(80);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v18 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v19 = getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL43getkQPParseAttributePartyActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v20 = QueryParserLibrary();
    p_src[3] = dlsym(v20, "kQPParseAttributePartyActionKey");
    getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v19 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v19)
  {
    v535 = [MEMORY[0x1E696AAA8] currentHandler];
    [v535 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributePartyActionKey()") description:{@"PRLLMParse.mm", 38, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v19;
  v651 = &QUPP_ARG_EVENT_TYPE_PARTY;
  v21 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(81);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v21 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v22 = getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL53getkQPParseAttributeTicketTransportActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v23 = QueryParserLibrary();
    p_src[3] = dlsym(v23, "kQPParseAttributeTicketTransportActionKey");
    getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v22 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v22)
  {
    v536 = [MEMORY[0x1E696AAA8] currentHandler];
    [v536 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTicketTransportActionKey()") description:{@"PRLLMParse.mm", 39, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v22;
  v651 = &QUPP_ARG_EVENT_TYPE_TICKET_TRANSPORT;
  v24 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(82);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v24 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v25 = getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeCarRentalActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v26 = QueryParserLibrary();
    p_src[3] = dlsym(v26, "kQPParseAttributeCarRentalActionKey");
    getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v25 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v25)
  {
    v537 = [MEMORY[0x1E696AAA8] currentHandler];
    [v537 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeCarRentalActionKey()") description:{@"PRLLMParse.mm", 40, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v25;
  v651 = &QUPP_ARG_EVENT_TYPE_CAR_RENTAL;
  v27 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(83);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v27 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v28 = getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL51getkQPParseAttributeShippingOrderActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v29 = QueryParserLibrary();
    p_src[3] = dlsym(v29, "kQPParseAttributeShippingOrderActionKey");
    getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v28 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v28)
  {
    v538 = [MEMORY[0x1E696AAA8] currentHandler];
    [v538 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeShippingOrderActionKey()") description:{@"PRLLMParse.mm", 41, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v28;
  v30 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(211);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v30 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeCardActionKey();
  v31 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(84);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v31 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindMessageKey();
  v32 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(19);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v32 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindMessageKey();
  v33 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(106);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v33 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhotoKey();
  v34 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(21);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v34 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhotoKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_PHOTO;
  v35 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(108);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v35 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v36 = getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeFavoritedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v37 = QueryParserLibrary();
    p_src[3] = dlsym(v37, "kQPParseAttributeFavoritedActionKey");
    getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v36 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v36)
  {
    v539 = [MEMORY[0x1E696AAA8] currentHandler];
    [v539 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFavoritedActionKey()") description:{@"PRLLMParse.mm", 45, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v36;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_FAVORITED;
  v38 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(41);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v38 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v39 = getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL44getkQPParseAttributeHiddenActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v40 = QueryParserLibrary();
    p_src[3] = dlsym(v40, "kQPParseAttributeHiddenActionKey");
    getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v39 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v39)
  {
    v540 = [MEMORY[0x1E696AAA8] currentHandler];
    [v540 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeHiddenActionKey()") description:{@"PRLLMParse.mm", 46, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v39;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_HIDDEN;
  v41 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(42);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v41 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v42 = getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeForwardedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v43 = QueryParserLibrary();
    p_src[3] = dlsym(v43, "kQPParseAttributeForwardedActionKey");
    getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v42 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v42)
  {
    v541 = [MEMORY[0x1E696AAA8] currentHandler];
    [v541 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeForwardedActionKey()") description:{@"PRLLMParse.mm", 47, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v42;
  v44 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(44);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v44 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeSharedActionKey();
  v45 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(52);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v45 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeSharedActionKey();
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_DELETED;
  v46 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(54);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v46 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v47 = getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL38getkQPParseAttributeUnreadKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v48 = QueryParserLibrary();
    p_src[3] = dlsym(v48, "kQPParseAttributeUnreadKey");
    getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v47 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v47)
  {
    v542 = [MEMORY[0x1E696AAA8] currentHandler];
    [v542 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeUnreadKey()") description:{@"PRLLMParse.mm", 50, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v47;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_UNREAD;
  v49 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(55);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v49 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v50 = getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL46getkQPParseAttributeAcceptedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v51 = QueryParserLibrary();
    p_src[3] = dlsym(v51, "kQPParseAttributeAcceptedActionKey");
    getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v50 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v50)
  {
    v543 = [MEMORY[0x1E696AAA8] currentHandler];
    [v543 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAcceptedActionKey()") description:{@"PRLLMParse.mm", 51, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v50;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_ACCEPTED;
  v52 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(56);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v52 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v53 = getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL46getkQPParseAttributeDeclinedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v54 = QueryParserLibrary();
    p_src[3] = dlsym(v54, "kQPParseAttributeDeclinedActionKey");
    getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v53 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v53)
  {
    v544 = [MEMORY[0x1E696AAA8] currentHandler];
    [v544 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDeclinedActionKey()") description:{@"PRLLMParse.mm", 52, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v53;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_DECLINED;
  v55 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(57);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v55 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v56 = getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL43getkQPParseAttributeMaybeActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v57 = QueryParserLibrary();
    p_src[3] = dlsym(v57, "kQPParseAttributeMaybeActionKey");
    getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v56 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v56)
  {
    v545 = [MEMORY[0x1E696AAA8] currentHandler];
    [v545 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeMaybeActionKey()") description:{@"PRLLMParse.mm", 53, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v56;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_MAYBE;
  v58 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(58);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v58 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v59 = getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL41getkQPParseAttributeTimeStartKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v60 = QueryParserLibrary();
    p_src[3] = dlsym(v60, "kQPParseAttributeTimeStartKey");
    getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v59 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v59)
  {
    v546 = [MEMORY[0x1E696AAA8] currentHandler];
    [v546 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeStartKey()") description:{@"PRLLMParse.mm", 54, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v59;
  v651 = &QUPP_ARG_TIME_START;
  v61 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(9);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v61 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v62 = getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL39getkQPParseAttributeTimeEndKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v63 = QueryParserLibrary();
    p_src[3] = dlsym(v63, "kQPParseAttributeTimeEndKey");
    getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v62 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v62)
  {
    v547 = [MEMORY[0x1E696AAA8] currentHandler];
    [v547 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeEndKey()") description:{@"PRLLMParse.mm", 55, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v62;
  v651 = &QUPP_ARG_TIME_END;
  v64 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(10);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v64 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v65 = getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL43getkQPParseAttributeTimeCreatedKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v66 = QueryParserLibrary();
    p_src[3] = dlsym(v66, "kQPParseAttributeTimeCreatedKey");
    getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v65 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v65)
  {
    v548 = [MEMORY[0x1E696AAA8] currentHandler];
    [v548 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeCreatedKey()") description:{@"PRLLMParse.mm", 56, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v65;
  v651 = &QUPP_ARG_TIME_CREATED;
  v67 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(11);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v67 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v68 = getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL44getkQPParseAttributeTimeModifiedKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v69 = QueryParserLibrary();
    p_src[3] = dlsym(v69, "kQPParseAttributeTimeModifiedKey");
    getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v68 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v68)
  {
    v549 = [MEMORY[0x1E696AAA8] currentHandler];
    [v549 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeModifiedKey()") description:{@"PRLLMParse.mm", 57, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v68;
  v651 = &QUPP_ARG_TIME_MODIFIED;
  v70 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(12);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v70 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v71 = getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL46getkQPParseAttributeTimeLastOpenedKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v72 = QueryParserLibrary();
    p_src[3] = dlsym(v72, "kQPParseAttributeTimeLastOpenedKey");
    getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v71 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v71)
  {
    v550 = [MEMORY[0x1E696AAA8] currentHandler];
    [v550 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeLastOpenedKey()") description:{@"PRLLMParse.mm", 58, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v71;
  v651 = &QUPP_ARG_TIME_LAST_OPENED;
  v73 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(13);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v73 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v74 = getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL41getkQPParseAttributeEventKindKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v75 = QueryParserLibrary();
    p_src[3] = dlsym(v75, "kQPParseAttributeEventKindKey");
    getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v74 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v74)
  {
    v551 = [MEMORY[0x1E696AAA8] currentHandler];
    [v551 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeEventKindKey()") description:{@"PRLLMParse.mm", 74, @"%s", dlerror()}];
    goto LABEL_486;
  }

  v657 = *v74;
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v76 = getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL48getkQPParseAttributeGenericEventKindKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v77 = QueryParserLibrary();
    p_src[3] = dlsym(v77, "kQPParseAttributeGenericEventKindKey");
    getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v76 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v76)
  {
    v552 = [MEMORY[0x1E696AAA8] currentHandler];
    [v552 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeGenericEventKindKey()") description:{@"PRLLMParse.mm", 75, @"%s", dlerror()}];
    goto LABEL_486;
  }

  v658 = *v76;
  v78 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(14);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v78 + 3, &v657, &__src, 2uLL);
  __src = getkQPParseAttributeKindDocumentKey();
  v79 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(18);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v79 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindDocumentKey();
  v80 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(105);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v80 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNotesKey();
  v81 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(20);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v81 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNotesKey();
  v82 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(107);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v82 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindReminderKey();
  v83 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(22);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v83 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindReminderKey();
  v84 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(109);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v84 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVideoKey();
  v85 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(23);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v85 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVideoKey();
  v86 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(110);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v86 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindWebsiteKey();
  v87 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(24);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v87 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindWebsiteKey();
  v88 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(111);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v88 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindKeynoteKey();
  v89 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(26);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v89 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindKeynoteKey();
  v90 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(113);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v90 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPagesKey();
  v91 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(27);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v91 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPagesKey();
  v92 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(114);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v92 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNumbersKey();
  v93 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(28);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v93 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNumbersKey();
  v94 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(115);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v94 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhotoAlbumKey();
  v95 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(30);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v95 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhotoAlbumKey();
  v96 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(117);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v96 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindMemoryKey();
  v97 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(31);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v97 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindMemoryKey();
  v98 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(118);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v98 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindConversationKey();
  v99 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(32);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v99 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindConversationKey();
  v100 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(119);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v100 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNotesFolderKey();
  v101 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(33);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v101 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNotesFolderKey();
  v102 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(120);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v102 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindReminderListKey();
  v103 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(34);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v103 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindReminderListKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_REMINDER_LIST;
  v104 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(121);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v104 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v105 = getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL45getkQPParseAttributeArchiveActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v106 = QueryParserLibrary();
    p_src[3] = dlsym(v106, "kQPParseAttributeArchiveActionKey");
    getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v105 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v105)
  {
    v553 = [MEMORY[0x1E696AAA8] currentHandler];
    [v553 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeArchiveActionKey()") description:{@"PRLLMParse.mm", 72, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v105;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_ARCHIVED;
  v107 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(36);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v107 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v108 = getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL48getkQPParseAttributeBookmarkedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v109 = QueryParserLibrary();
    p_src[3] = dlsym(v109, "kQPParseAttributeBookmarkedActionKey");
    getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v108 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v108)
  {
    v554 = [MEMORY[0x1E696AAA8] currentHandler];
    [v554 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeBookmarkedActionKey()") description:{@"PRLLMParse.mm", 73, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v108;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_BOOKMARKED;
  v110 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(37);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v110 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v111 = getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeUserCreatedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v112 = QueryParserLibrary();
    p_src[3] = dlsym(v112, "kQPParseAttributeUserCreatedActionKey");
    getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v111 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v111)
  {
    v555 = [MEMORY[0x1E696AAA8] currentHandler];
    [v555 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeUserCreatedActionKey()") description:{@"PRLLMParse.mm", 76, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v111;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_CREATED;
  v113 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(38);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v113 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v114 = getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL43getkQPParseAttributeDraftActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v115 = QueryParserLibrary();
    p_src[3] = dlsym(v115, "kQPParseAttributeDraftActionKey");
    getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v114 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v114)
  {
    v556 = [MEMORY[0x1E696AAA8] currentHandler];
    [v556 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDraftActionKey()") description:{@"PRLLMParse.mm", 77, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v114;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_DRAFT;
  v116 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(39);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v116 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v117 = getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL50getkQPParseAttributeUserModifiedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v118 = QueryParserLibrary();
    p_src[3] = dlsym(v118, "kQPParseAttributeUserModifiedActionKey");
    getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v117 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v117)
  {
    v557 = [MEMORY[0x1E696AAA8] currentHandler];
    [v557 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeUserModifiedActionKey()") description:{@"PRLLMParse.mm", 78, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v117;
  v119 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(40);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v119 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeFlaggedActionKey();
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_FLAGGED;
  v120 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(43);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v120 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v121 = getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL42getkQPParseAttributeJunkActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v122 = QueryParserLibrary();
    p_src[3] = dlsym(v122, "kQPParseAttributeJunkActionKey");
    getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v121 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v121)
  {
    v558 = [MEMORY[0x1E696AAA8] currentHandler];
    [v558 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeJunkActionKey()") description:{@"PRLLMParse.mm", 80, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v121;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_JUNK;
  v123 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(45);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v123 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v124 = getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL45getkQPParseAttributePrintedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v125 = QueryParserLibrary();
    p_src[3] = dlsym(v125, "kQPParseAttributePrintedActionKey");
    getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v124 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v124)
  {
    v559 = [MEMORY[0x1E696AAA8] currentHandler];
    [v559 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributePrintedActionKey()") description:{@"PRLLMParse.mm", 88, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v124;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_PRINTED;
  v126 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(46);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v126 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v127 = getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL42getkQPParseAttributeReadActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v128 = QueryParserLibrary();
    p_src[3] = dlsym(v128, "kQPParseAttributeReadActionKey");
    getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v127 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v127)
  {
    v560 = [MEMORY[0x1E696AAA8] currentHandler];
    [v560 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeReadActionKey()") description:{@"PRLLMParse.mm", 89, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v127;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_READ;
  v129 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(47);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v129 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v130 = getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL46getkQPParseAttributeReceivedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v131 = QueryParserLibrary();
    p_src[3] = dlsym(v131, "kQPParseAttributeReceivedActionKey");
    getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v130 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v130)
  {
    v561 = [MEMORY[0x1E696AAA8] currentHandler];
    [v561 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeReceivedActionKey()") description:{@"PRLLMParse.mm", 90, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v130;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_RECEIVED;
  v132 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(48);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v132 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v133 = getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL45getkQPParseAttributeRepliedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v134 = QueryParserLibrary();
    p_src[3] = dlsym(v134, "kQPParseAttributeRepliedActionKey");
    getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v133 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v133)
  {
    v562 = [MEMORY[0x1E696AAA8] currentHandler];
    [v562 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRepliedActionKey()") description:{@"PRLLMParse.mm", 91, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v133;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_REPLIED;
  v135 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(49);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v135 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v136 = getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL42getkQPParseAttributeSentActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v137 = QueryParserLibrary();
    p_src[3] = dlsym(v137, "kQPParseAttributeSentActionKey");
    getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v136 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v136)
  {
    v563 = [MEMORY[0x1E696AAA8] currentHandler];
    [v563 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSentActionKey()") description:{@"PRLLMParse.mm", 92, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v136;
  v138 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(51);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v138 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeFlaggedActionKey();
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_TAGGED;
  v139 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(53);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v139 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v140 = getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL41getkQPParseAttributeDueActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v141 = QueryParserLibrary();
    p_src[3] = dlsym(v141, "kQPParseAttributeDueActionKey");
    getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v140 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v140)
  {
    v564 = [MEMORY[0x1E696AAA8] currentHandler];
    [v564 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDueActionKey()") description:{@"PRLLMParse.mm", 81, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v140;
  v651 = &QUPP_ARG_APP_ENTITY_STATUS_DUE;
  v142 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(59);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v142 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v143 = getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeCompletedActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v144 = QueryParserLibrary();
    p_src[3] = dlsym(v144, "kQPParseAttributeCompletedActionKey");
    getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v143 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v143)
  {
    v565 = [MEMORY[0x1E696AAA8] currentHandler];
    [v565 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeCompletedActionKey()") description:{@"PRLLMParse.mm", 82, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v143;
  v145 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(60);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v145 + 3, &__src, &p_src, 1uLL);
  v651 = getkQPParseAttributeGroundedPersonKey();
  v652 = getkQPParseAttributeTaggedPersonKey();
  v653 = getkQPParseAttributeSenderKey();
  v654 = getkQPParseAttributeSenderHandleKey();
  v655 = getkQPParseAttributeRecipientKey();
  v656 = getkQPParseAttributeRecipientHandleKey();
  __src = &QUPP_ARG_PERSON;
  v146 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(64);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v146 + 3, &v651, &v657, 6uLL);
  v651 = getkQPParseAttributeSenderKey();
  v652 = getkQPParseAttributeSenderHandleKey();
  __src = &QUPP_ARG_PERSON_SENDER;
  v147 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(65);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v147 + 3, &v651, &v653, 2uLL);
  v651 = getkQPParseAttributeRecipientKey();
  v652 = getkQPParseAttributeRecipientHandleKey();
  __src = &QUPP_ARG_PERSON_RECEIVER;
  v148 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(66);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v148 + 3, &v651, &v653, 2uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v149 = getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL44getkQPParseAttributeAttachedKindKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v150 = QueryParserLibrary();
    v151 = dlsym(v150, "kQPParseAttributeAttachedKindKey");
    *(v655[1] + 3) = v151;
    getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v149 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v149)
  {
    v566 = [MEMORY[0x1E696AAA8] currentHandler];
    [v566 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAttachedKindKey()") description:{@"PRLLMParse.mm", 94, @"%s", dlerror()}];
    goto LABEL_486;
  }

  v657 = *v149;
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v152 = getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL42getkQPParseAttributeAttachmentKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v153 = QueryParserLibrary();
    v154 = dlsym(v153, "kQPParseAttributeAttachmentKey");
    *(v655[1] + 3) = v154;
    getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v152 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v152)
  {
    v567 = [MEMORY[0x1E696AAA8] currentHandler];
    [v567 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAttachmentKey()") description:{@"PRLLMParse.mm", 95, @"%s", dlerror()}];
    goto LABEL_486;
  }

  v658 = *v152;
  v651 = &QUPP_ARG_ATTACHMENT_TYPE;
  v155 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(67);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v155 + 3, &v657, &__src, 2uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v156 = getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL46getkQPParseAttributeTagColorActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v157 = QueryParserLibrary();
    v158 = dlsym(v157, "kQPParseAttributeTagColorActionKey");
    *(v655[1] + 3) = v158;
    getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v156 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v156)
  {
    v568 = [MEMORY[0x1E696AAA8] currentHandler];
    [v568 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTagColorActionKey()") description:{@"PRLLMParse.mm", 96, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v156;
  v651 = &QUPP_ARG_TAG_NAME;
  v159 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(68);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v159 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v160 = getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeFlagColorActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v161 = QueryParserLibrary();
    v162 = dlsym(v161, "kQPParseAttributeFlagColorActionKey");
    *(v655[1] + 3) = v162;
    getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v160 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v160)
  {
    v569 = [MEMORY[0x1E696AAA8] currentHandler];
    [v569 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlagColorActionKey()") description:{@"PRLLMParse.mm", 97, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v160;
  v651 = &QUPP_ARG_FLAG_COLOR;
  v163 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(69);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v163 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v164 = getkQPParseAttributeMediaKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeMediaKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeMediaKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL37getkQPParseAttributeMediaKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v165 = QueryParserLibrary();
    v166 = dlsym(v165, "kQPParseAttributeMediaKey");
    *(v655[1] + 3) = v166;
    getkQPParseAttributeMediaKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v164 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v164)
  {
    v570 = [MEMORY[0x1E696AAA8] currentHandler];
    [v570 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeMediaKey()") description:{@"PRLLMParse.mm", 105, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v164;
  v651 = &QUPP_ARG_MEDIA_TYPE;
  v167 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(70);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v167 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v168 = getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL55getkQPParseAttributeFlightDepartureLocationKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v169 = QueryParserLibrary();
    v170 = dlsym(v169, "kQPParseAttributeFlightDepartureLocationKey");
    *(v655[1] + 3) = v170;
    getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v168 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v168)
  {
    v571 = [MEMORY[0x1E696AAA8] currentHandler];
    [v571 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightDepartureLocationKey()") description:{@"PRLLMParse.mm", 98, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v168;
  v651 = &QUPP_ARG_LOCATION_DEPARTURE;
  v171 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(6);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v171 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v172 = getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL53getkQPParseAttributeFlightArrivalLocationKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v173 = QueryParserLibrary();
    v174 = dlsym(v173, "kQPParseAttributeFlightArrivalLocationKey");
    *(v655[1] + 3) = v174;
    getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v172 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v172)
  {
    v572 = [MEMORY[0x1E696AAA8] currentHandler];
    [v572 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightArrivalLocationKey()") description:{@"PRLLMParse.mm", 99, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v172;
  v651 = &QUPP_ARG_LOCATION_ARRIVAL;
  v175 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(7);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v175 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindEmailKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_EMAIL;
  v176 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(25);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v176 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindEmailKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_EMAIL;
  v177 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(112);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v177 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindCalendarEventKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_CALENDAR_EVENT;
  v178 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(29);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v178 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindCalendarEventKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_CALENDAR_EVENT;
  v179 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(116);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v179 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindContactKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_CONTACT;
  v180 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(35);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v180 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindContactKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_CONTACT;
  v181 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(122);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v181 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeEarliestActionKey();
  v651 = &QUPP_ARG_SORT_ORDER_NEXT;
  v182 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(61);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v182 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeLatestActionKey();
  v651 = &QUPP_ARG_SORT_ORDER_LAST;
  v183 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(62);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v183 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v184 = getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL40getkQPParseAttributeKindSongKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v185 = QueryParserLibrary();
    v186 = dlsym(v185, "kQPParseAttributeKindSongKey");
    *(v655[1] + 3) = v186;
    getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v184 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v184)
  {
    v573 = [MEMORY[0x1E696AAA8] currentHandler];
    [v573 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindSongKey()") description:{@"PRLLMParse.mm", 118, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v184;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_SONG;
  v187 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(85);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v187 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v188 = getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL41getkQPParseAttributeKindAlbumKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v189 = QueryParserLibrary();
    v190 = dlsym(v189, "kQPParseAttributeKindAlbumKey");
    *(v655[1] + 3) = v190;
    getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v188 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v188)
  {
    v574 = [MEMORY[0x1E696AAA8] currentHandler];
    [v574 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindAlbumKey()") description:{@"PRLLMParse.mm", 106, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v188;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_ALBUM;
  v191 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(86);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v191 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v192 = getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL42getkQPParseAttributeKindArtistKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v193 = QueryParserLibrary();
    v194 = dlsym(v193, "kQPParseAttributeKindArtistKey");
    *(v655[1] + 3) = v194;
    getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v192 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v192)
  {
    v575 = [MEMORY[0x1E696AAA8] currentHandler];
    [v575 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindArtistKey()") description:{@"PRLLMParse.mm", 108, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v192;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_ARTIST;
  v195 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(87);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v195 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v196 = getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL44getkQPParseAttributeKindPlaylistKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v197 = QueryParserLibrary();
    v198 = dlsym(v197, "kQPParseAttributeKindPlaylistKey");
    *(v655[1] + 3) = v198;
    getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v196 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v196)
  {
    v576 = [MEMORY[0x1E696AAA8] currentHandler];
    [v576 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPlaylistKey()") description:{@"PRLLMParse.mm", 113, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v196;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_PLAYLIST;
  v199 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(88);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v199 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v200 = getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL43getkQPParseAttributeKindPodcastKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v201 = QueryParserLibrary();
    v202 = dlsym(v201, "kQPParseAttributeKindPodcastKey");
    *(v655[1] + 3) = v202;
    getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v200 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v200)
  {
    v577 = [MEMORY[0x1E696AAA8] currentHandler];
    [v577 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPodcastKey()") description:{@"PRLLMParse.mm", 114, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v200;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_PODCAST;
  v203 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(89);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v203 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v204 = getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL40getkQPParseAttributeKindShowKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v205 = QueryParserLibrary();
    v206 = dlsym(v205, "kQPParseAttributeKindShowKey");
    *(v655[1] + 3) = v206;
    getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v204 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v204)
  {
    v578 = [MEMORY[0x1E696AAA8] currentHandler];
    [v578 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindShowKey()") description:{@"PRLLMParse.mm", 117, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v204;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_SHOW;
  v207 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(90);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v207 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v208 = getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL41getkQPParseAttributeKindMovieKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v209 = QueryParserLibrary();
    v210 = dlsym(v209, "kQPParseAttributeKindMovieKey");
    *(v655[1] + 3) = v210;
    getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v208 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v208)
  {
    v579 = [MEMORY[0x1E696AAA8] currentHandler];
    [v579 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMovieKey()") description:{@"PRLLMParse.mm", 119, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v208;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_MOVIE;
  v211 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(91);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v211 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v212 = getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL43getkQPParseAttributeKindArticleKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v213 = QueryParserLibrary();
    v214 = dlsym(v213, "kQPParseAttributeKindArticleKey");
    *(v655[1] + 3) = v214;
    getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v212 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v212)
  {
    v580 = [MEMORY[0x1E696AAA8] currentHandler];
    [v580 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindArticleKey()") description:{@"PRLLMParse.mm", 107, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v212;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_ARTICLE;
  v215 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(92);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v215 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v216 = getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL40getkQPParseAttributeKindLinkKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v217 = QueryParserLibrary();
    v218 = dlsym(v217, "kQPParseAttributeKindLinkKey");
    *(v655[1] + 3) = v218;
    getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v216 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v216)
  {
    v581 = [MEMORY[0x1E696AAA8] currentHandler];
    [v581 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindLinkKey()") description:{@"PRLLMParse.mm", 109, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v216;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_LINK;
  v219 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(93);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v219 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v220 = getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL46getkQPParseAttributeKindMusicAlbumKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v221 = QueryParserLibrary();
    v222 = dlsym(v221, "kQPParseAttributeKindMusicAlbumKey");
    *(v655[1] + 3) = v222;
    getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v220 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v220)
  {
    v582 = [MEMORY[0x1E696AAA8] currentHandler];
    [v582 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMusicAlbumKey()") description:{@"PRLLMParse.mm", 111, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v220;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_MUSIC_ALBUM;
  v223 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(100);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v223 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v224 = getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL40getkQPParseAttributeKindNewsKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v225 = QueryParserLibrary();
    v226 = dlsym(v225, "kQPParseAttributeKindNewsKey");
    *(v655[1] + 3) = v226;
    getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v224 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v224)
  {
    v583 = [MEMORY[0x1E696AAA8] currentHandler];
    [v583 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindNewsKey()") description:{@"PRLLMParse.mm", 112, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v224;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_NEWS;
  v227 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(101);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v227 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v228 = getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL39getkQPParseAttributeKindMapKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v229 = QueryParserLibrary();
    v230 = dlsym(v229, "kQPParseAttributeKindMapKey");
    *(v655[1] + 3) = v230;
    getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v228 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v228)
  {
    v584 = [MEMORY[0x1E696AAA8] currentHandler];
    [v584 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMapKey()") description:{@"PRLLMParse.mm", 110, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v228;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_MAP;
  v231 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(102);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v231 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v232 = getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL48getkQPParseAttributeKindRadioStationKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v233 = QueryParserLibrary();
    v234 = dlsym(v233, "kQPParseAttributeKindRadioStationKey");
    *(v655[1] + 3) = v234;
    getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v232 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v232)
  {
    v585 = [MEMORY[0x1E696AAA8] currentHandler];
    [v585 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindRadioStationKey()") description:{@"PRLLMParse.mm", 115, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v232;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_RADIO_STATION;
  v235 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(103);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v235 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v236 = getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL48getkQPParseAttributeTicketShowActionKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v237 = QueryParserLibrary();
    v238 = dlsym(v237, "kQPParseAttributeTicketShowActionKey");
    *(v655[1] + 3) = v238;
    getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v236 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v236)
  {
    v586 = [MEMORY[0x1E696AAA8] currentHandler];
    [v586 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTicketShowActionKey()") description:{@"PRLLMParse.mm", 116, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v236;
  v651 = &QUPP_ARG_EVENT_TYPE_TICKET_SHOW;
  v239 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(79);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v239 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeCardActionKey();
  v651 = &QUPP_ARG_EVENT_TYPE_CARD;
  v240 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(74);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v240 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhoneCallKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_PHONE_CALL;
  v241 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(75);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v241 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhoneCallKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_PHONE_CALL;
  v242 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(123);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v242 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVoiceMemoKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_VOICE_MEMOS;
  v243 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(76);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v243 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVoiceMemoKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_VOICE_MEMOS;
  v244 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(124);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v244 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVoiceMailKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_VOICE_MAIL;
  v245 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(77);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v245 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVoiceMailKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_VOICE_MAIL;
  v246 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(125);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v246 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindWalletPassKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_WALLET_PASS;
  v247 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(98);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v247 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindWalletPassKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_WALLET_PASS;
  v248 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(128);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v248 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindFreeformBoardKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_FREEFORM_BOARD;
  v249 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(99);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v249 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindFreeformBoardKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_FREEFORM_BOARD;
  v250 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(129);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v250 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindJournalKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_JOURNAL;
  v251 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(78);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v251 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindJournalKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_JOURNAL;
  v252 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(126);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v252 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeEarliestActionKey();
  v651 = &QUPP_ARG_TEMPORAL_REFERENCE_FUTURE;
  v253 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(94);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v253 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeLatestActionKey();
  v651 = &QUPP_ARG_TEMPORAL_REFERENCE_PAST;
  v254 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(95);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v254 + 3, &__src, &p_src, 1uLL);
  v651 = getkQPParseAttributeGroundedPersonKey();
  v652 = getkQPParseAttributeTaggedPersonKey();
  v653 = getkQPParseAttributeSenderKey();
  v654 = getkQPParseAttributeSenderHandleKey();
  v655 = getkQPParseAttributeRecipientKey();
  v656 = getkQPParseAttributeRecipientHandleKey();
  __src = &QUPP_ARG_PERSON_SELF;
  v255 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(104);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v255 + 3, &v651, &v657, 6uLL);
  v651 = &QUPP_ARG_SINGULAR;
  v256 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(96);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v256 + 3, 0, 0, 0);
  v651 = &QUPP_ARG_PLURAL;
  v257 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(97);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v257 + 3, 0, 0, 0);
  v651 = &QUPP_ARG_UNSPECIFIED;
  v258 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(0);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v258 + 3, 0, 0, 0);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v259 = getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL50getkQPParseAttributeSourceTypeDocumentKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v260 = QueryParserLibrary();
    v261 = dlsym(v260, "kQPParseAttributeSourceTypeDocumentKey");
    *(v655[1] + 3) = v261;
    getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v259 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v259)
  {
    v587 = [MEMORY[0x1E696AAA8] currentHandler];
    [v587 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeDocumentKey()") description:{@"PRLLMParse.mm", 135, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v259;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_DOCUMENT;
  v262 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(133);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v262 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v263 = getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeSourceTypeMessageKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v264 = QueryParserLibrary();
    v265 = dlsym(v264, "kQPParseAttributeSourceTypeMessageKey");
    *(v655[1] + 3) = v265;
    getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v263 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v263)
  {
    v588 = [MEMORY[0x1E696AAA8] currentHandler];
    [v588 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeMessageKey()") description:{@"PRLLMParse.mm", 136, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v263;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_MESSAGE;
  v266 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(134);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v266 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v267 = getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL46getkQPParseAttributeSourceTypeNoteKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v268 = QueryParserLibrary();
    v269 = dlsym(v268, "kQPParseAttributeSourceTypeNoteKey");
    *(v655[1] + 3) = v269;
    getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v267 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v267)
  {
    v589 = [MEMORY[0x1E696AAA8] currentHandler];
    [v589 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeNoteKey()") description:{@"PRLLMParse.mm", 137, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v267;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_NOTE;
  v270 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(135);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v270 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v271 = getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeSourceTypePhotoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v272 = QueryParserLibrary();
    v273 = dlsym(v272, "kQPParseAttributeSourceTypePhotoKey");
    *(v655[1] + 3) = v273;
    getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v271 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v271)
  {
    v590 = [MEMORY[0x1E696AAA8] currentHandler];
    [v590 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypePhotoKey()") description:{@"PRLLMParse.mm", 138, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v271;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_PHOTO;
  v274 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(136);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v274 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v275 = getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL50getkQPParseAttributeSourceTypeReminderKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v276 = QueryParserLibrary();
    v277 = dlsym(v276, "kQPParseAttributeSourceTypeReminderKey");
    *(v655[1] + 3) = v277;
    getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v275 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v275)
  {
    v591 = [MEMORY[0x1E696AAA8] currentHandler];
    [v591 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeReminderKey()") description:{@"PRLLMParse.mm", 139, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v275;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_REMINDER;
  v278 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(137);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v278 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v279 = getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeSourceTypeVideoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v280 = QueryParserLibrary();
    v281 = dlsym(v280, "kQPParseAttributeSourceTypeVideoKey");
    *(v655[1] + 3) = v281;
    getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v279 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v279)
  {
    v592 = [MEMORY[0x1E696AAA8] currentHandler];
    [v592 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeVideoKey()") description:{@"PRLLMParse.mm", 140, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v279;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_VIDEO;
  v282 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(138);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v282 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v283 = getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeSourceTypeWebsiteKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v284 = QueryParserLibrary();
    v285 = dlsym(v284, "kQPParseAttributeSourceTypeWebsiteKey");
    *(v655[1] + 3) = v285;
    getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v283 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v283)
  {
    v593 = [MEMORY[0x1E696AAA8] currentHandler];
    [v593 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeWebsiteKey()") description:{@"PRLLMParse.mm", 141, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v283;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_WEBSITE;
  v286 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(139);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v286 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v287 = getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeSourceTypeEmailKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v288 = QueryParserLibrary();
    v289 = dlsym(v288, "kQPParseAttributeSourceTypeEmailKey");
    *(v655[1] + 3) = v289;
    getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v287 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v287)
  {
    v594 = [MEMORY[0x1E696AAA8] currentHandler];
    [v594 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeEmailKey()") description:{@"PRLLMParse.mm", 142, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v287;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_EMAIL;
  v290 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(140);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v290 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v291 = getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeSourceTypeKeynoteKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v292 = QueryParserLibrary();
    v293 = dlsym(v292, "kQPParseAttributeSourceTypeKeynoteKey");
    *(v655[1] + 3) = v293;
    getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v291 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v291)
  {
    v595 = [MEMORY[0x1E696AAA8] currentHandler];
    [v595 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeKeynoteKey()") description:{@"PRLLMParse.mm", 143, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v291;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_KEYNOTE;
  v294 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(141);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v294 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v295 = getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL47getkQPParseAttributeSourceTypePagesKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v296 = QueryParserLibrary();
    v297 = dlsym(v296, "kQPParseAttributeSourceTypePagesKey");
    *(v655[1] + 3) = v297;
    getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v295 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v295)
  {
    v596 = [MEMORY[0x1E696AAA8] currentHandler];
    [v596 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypePagesKey()") description:{@"PRLLMParse.mm", 144, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v295;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_PAGES;
  v298 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(142);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v298 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v299 = getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeSourceTypeNumbersKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v300 = QueryParserLibrary();
    v301 = dlsym(v300, "kQPParseAttributeSourceTypeNumbersKey");
    *(v655[1] + 3) = v301;
    getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v299 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v299)
  {
    v597 = [MEMORY[0x1E696AAA8] currentHandler];
    [v597 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeNumbersKey()") description:{@"PRLLMParse.mm", 145, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v299;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_NUMBERS;
  v302 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(143);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v302 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v303 = getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL55getkQPParseAttributeSourceTypeCalendarEventKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v304 = QueryParserLibrary();
    v305 = dlsym(v304, "kQPParseAttributeSourceTypeCalendarEventKey");
    *(v655[1] + 3) = v305;
    getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v303 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v303)
  {
    v598 = [MEMORY[0x1E696AAA8] currentHandler];
    [v598 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeCalendarEventKey()") description:{@"PRLLMParse.mm", 146, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v303;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_CALENDAR_EVENT;
  v306 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(144);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v306 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v307 = getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v308 = QueryParserLibrary();
    v309 = dlsym(v308, "kQPParseAttributeSourceTypePhotoAlbumKey");
    *(v655[1] + 3) = v309;
    getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v307 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v307)
  {
    v599 = [MEMORY[0x1E696AAA8] currentHandler];
    [v599 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypePhotoAlbumKey()") description:{@"PRLLMParse.mm", 147, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v307;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_PHOTO_ALBUM;
  v310 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(145);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v310 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v311 = getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL48getkQPParseAttributeSourceTypeMemoryKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v312 = QueryParserLibrary();
    v313 = dlsym(v312, "kQPParseAttributeSourceTypeMemoryKey");
    *(v655[1] + 3) = v313;
    getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v311 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v311)
  {
    v600 = [MEMORY[0x1E696AAA8] currentHandler];
    [v600 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeMemoryKey()") description:{@"PRLLMParse.mm", 148, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v311;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_MEMORY;
  v314 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(146);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v314 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v315 = getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL54getkQPParseAttributeSourceTypeConversationKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v316 = QueryParserLibrary();
    v317 = dlsym(v316, "kQPParseAttributeSourceTypeConversationKey");
    *(v655[1] + 3) = v317;
    getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v315 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v315)
  {
    v601 = [MEMORY[0x1E696AAA8] currentHandler];
    [v601 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeConversationKey()") description:{@"PRLLMParse.mm", 149, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v315;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_CONVERSATION;
  v318 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(147);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v318 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v319 = getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeSourceTypeNoteFolderKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v320 = QueryParserLibrary();
    v321 = dlsym(v320, "kQPParseAttributeSourceTypeNoteFolderKey");
    *(v655[1] + 3) = v321;
    getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v319 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v319)
  {
    v602 = [MEMORY[0x1E696AAA8] currentHandler];
    [v602 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeNoteFolderKey()") description:{@"PRLLMParse.mm", 150, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v319;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_NOTE_FOLDER;
  v322 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(148);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v322 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v323 = getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL54getkQPParseAttributeSourceTypeReminderListKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v324 = QueryParserLibrary();
    v325 = dlsym(v324, "kQPParseAttributeSourceTypeReminderListKey");
    *(v655[1] + 3) = v325;
    getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v323 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v323)
  {
    v603 = [MEMORY[0x1E696AAA8] currentHandler];
    [v603 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeReminderListKey()") description:{@"PRLLMParse.mm", 151, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v323;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_REMINDER_LIST;
  v326 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(149);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v326 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v327 = getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeSourceTypeContactKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v328 = QueryParserLibrary();
    v329 = dlsym(v328, "kQPParseAttributeSourceTypeContactKey");
    *(v655[1] + 3) = v329;
    getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v327 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v327)
  {
    v604 = [MEMORY[0x1E696AAA8] currentHandler];
    [v604 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeContactKey()") description:{@"PRLLMParse.mm", 152, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v327;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_CONTACT;
  v330 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(150);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v330 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v331 = getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL51getkQPParseAttributeSourceTypePhoneCallKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v332 = QueryParserLibrary();
    v333 = dlsym(v332, "kQPParseAttributeSourceTypePhoneCallKey");
    *(v655[1] + 3) = v333;
    getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v331 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v331)
  {
    v605 = [MEMORY[0x1E696AAA8] currentHandler];
    [v605 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypePhoneCallKey()") description:{@"PRLLMParse.mm", 153, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v331;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_PHONE_CALL;
  v334 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(151);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v334 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v335 = getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v336 = QueryParserLibrary();
    v337 = dlsym(v336, "kQPParseAttributeSourceTypeVoiceMemosKey");
    *(v655[1] + 3) = v337;
    getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v335 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v335)
  {
    v606 = [MEMORY[0x1E696AAA8] currentHandler];
    [v606 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeVoiceMemosKey()") description:{@"PRLLMParse.mm", 154, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v335;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_VOICE_MEMOS;
  v338 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(152);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v338 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v339 = getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL51getkQPParseAttributeSourceTypeVoiceMailKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v340 = QueryParserLibrary();
    v341 = dlsym(v340, "kQPParseAttributeSourceTypeVoiceMailKey");
    *(v655[1] + 3) = v341;
    getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v339 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v339)
  {
    v607 = [MEMORY[0x1E696AAA8] currentHandler];
    [v607 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeVoiceMailKey()") description:{@"PRLLMParse.mm", 155, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v339;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_VOICE_MAIL;
  v342 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(153);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v342 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v343 = getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeSourceTypeJournalKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v344 = QueryParserLibrary();
    v345 = dlsym(v344, "kQPParseAttributeSourceTypeJournalKey");
    *(v655[1] + 3) = v345;
    getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v343 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v343)
  {
    v608 = [MEMORY[0x1E696AAA8] currentHandler];
    [v608 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeJournalKey()") description:{@"PRLLMParse.mm", 156, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v343;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_JOURNAL;
  v346 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(154);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v346 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v347 = getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeSourceTypeWalletPassKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v348 = QueryParserLibrary();
    v349 = dlsym(v348, "kQPParseAttributeSourceTypeWalletPassKey");
    *(v655[1] + 3) = v349;
    getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v347 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v347)
  {
    v609 = [MEMORY[0x1E696AAA8] currentHandler];
    [v609 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeWalletPassKey()") description:{@"PRLLMParse.mm", 157, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v347;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_WALLET_PASS;
  v350 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(155);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v350 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v351 = getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL55getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v352 = QueryParserLibrary();
    v353 = dlsym(v352, "kQPParseAttributeSourceTypeFreeformBoardKey");
    *(v655[1] + 3) = v353;
    getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v351 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v351)
  {
    v610 = [MEMORY[0x1E696AAA8] currentHandler];
    [v610 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeFreeformBoardKey()") description:{@"PRLLMParse.mm", 158, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v351;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_FREEFORM_BOARD;
  v354 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(156);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v354 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v355 = getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeContainsTypeCalendarKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v356 = QueryParserLibrary();
    v357 = dlsym(v356, "kQPParseAttributeContainsTypeCalendarKey");
    *(v655[1] + 3) = v357;
    getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v355 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v355)
  {
    v611 = [MEMORY[0x1E696AAA8] currentHandler];
    [v611 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeCalendarKey()") description:{@"PRLLMParse.mm", 159, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v355;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_CALENDAR;
  v358 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(158);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v358 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v359 = getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL51getkQPParseAttributeContainsTypeContactKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v360 = QueryParserLibrary();
    v361 = dlsym(v360, "kQPParseAttributeContainsTypeContactKey");
    *(v655[1] + 3) = v361;
    getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v359 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v359)
  {
    v612 = [MEMORY[0x1E696AAA8] currentHandler];
    [v612 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeContactKey()") description:{@"PRLLMParse.mm", 160, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v359;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_CONTACT;
  v362 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(159);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v362 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v363 = getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL56getkQPParseAttributeContainsTypeConversationKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v364 = QueryParserLibrary();
    v365 = dlsym(v364, "kQPParseAttributeContainsTypeConversationKey");
    *(v655[1] + 3) = v365;
    getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v363 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v363)
  {
    v613 = [MEMORY[0x1E696AAA8] currentHandler];
    [v613 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeConversationKey()") description:{@"PRLLMParse.mm", 161, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v363;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_CONVERSATION;
  v366 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(160);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v366 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v367 = getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeContainsTypeDocumentKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v368 = QueryParserLibrary();
    v369 = dlsym(v368, "kQPParseAttributeContainsTypeDocumentKey");
    *(v655[1] + 3) = v369;
    getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v367 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v367)
  {
    v614 = [MEMORY[0x1E696AAA8] currentHandler];
    [v614 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeDocumentKey()") description:{@"PRLLMParse.mm", 162, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v367;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_DOCUMENT;
  v370 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(161);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v370 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v371 = getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeContainsTypeFreeformKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v372 = QueryParserLibrary();
    v373 = dlsym(v372, "kQPParseAttributeContainsTypeFreeformKey");
    *(v655[1] + 3) = v373;
    getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v371 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v371)
  {
    v615 = [MEMORY[0x1E696AAA8] currentHandler];
    [v615 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeFreeformKey()") description:{@"PRLLMParse.mm", 163, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v371;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_FREEFORM;
  v374 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(162);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v374 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v375 = getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL51getkQPParseAttributeContainsTypeJournalKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v376 = QueryParserLibrary();
    v377 = dlsym(v376, "kQPParseAttributeContainsTypeJournalKey");
    *(v655[1] + 3) = v377;
    getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v375 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v375)
  {
    v616 = [MEMORY[0x1E696AAA8] currentHandler];
    [v616 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeJournalKey()") description:{@"PRLLMParse.mm", 164, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v375;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_JOURNAL;
  v378 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(163);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v378 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v379 = getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL51getkQPParseAttributeContainsTypeKeynoteKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v380 = QueryParserLibrary();
    v381 = dlsym(v380, "kQPParseAttributeContainsTypeKeynoteKey");
    *(v655[1] + 3) = v381;
    getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v379 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v379)
  {
    v617 = [MEMORY[0x1E696AAA8] currentHandler];
    [v617 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeKeynoteKey()") description:{@"PRLLMParse.mm", 165, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v379;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_KEYNOTE;
  v382 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(164);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v382 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v383 = getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeContainsTypeMediaKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v384 = QueryParserLibrary();
    v385 = dlsym(v384, "kQPParseAttributeContainsTypeMediaKey");
    *(v655[1] + 3) = v385;
    getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v383 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v383)
  {
    v618 = [MEMORY[0x1E696AAA8] currentHandler];
    [v618 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeMediaKey()") description:{@"PRLLMParse.mm", 166, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v383;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_MEDIA;
  v386 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(165);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v386 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v387 = getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL50getkQPParseAttributeContainsTypeMemoryKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v388 = QueryParserLibrary();
    v389 = dlsym(v388, "kQPParseAttributeContainsTypeMemoryKey");
    *(v655[1] + 3) = v389;
    getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v387 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v387)
  {
    v619 = [MEMORY[0x1E696AAA8] currentHandler];
    [v619 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeMemoryKey()") description:{@"PRLLMParse.mm", 167, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v387;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_MEMORY;
  v390 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(166);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v390 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v391 = getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL48getkQPParseAttributeContainsTypeNoteKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v392 = QueryParserLibrary();
    v393 = dlsym(v392, "kQPParseAttributeContainsTypeNoteKey");
    *(v655[1] + 3) = v393;
    getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v391 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v391)
  {
    v620 = [MEMORY[0x1E696AAA8] currentHandler];
    [v620 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeNoteKey()") description:{@"PRLLMParse.mm", 168, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v391;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_NOTE;
  v394 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(167);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v394 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v395 = getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL54getkQPParseAttributeContainsTypeNoteFolderKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v396 = QueryParserLibrary();
    v397 = dlsym(v396, "kQPParseAttributeContainsTypeNoteFolderKey");
    *(v655[1] + 3) = v397;
    getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v395 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v395)
  {
    v621 = [MEMORY[0x1E696AAA8] currentHandler];
    [v621 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeNoteFolderKey()") description:{@"PRLLMParse.mm", 169, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v395;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_NOTE_FOLDER;
  v398 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(168);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v398 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v399 = getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL51getkQPParseAttributeContainsTypeNumbersKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v400 = QueryParserLibrary();
    v401 = dlsym(v400, "kQPParseAttributeContainsTypeNumbersKey");
    *(v655[1] + 3) = v401;
    getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v399 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v399)
  {
    v622 = [MEMORY[0x1E696AAA8] currentHandler];
    [v622 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeNumbersKey()") description:{@"PRLLMParse.mm", 170, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v399;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_NUMBERS;
  v402 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(169);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v402 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v403 = getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeContainsTypePagesKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v404 = QueryParserLibrary();
    v405 = dlsym(v404, "kQPParseAttributeContainsTypePagesKey");
    *(v655[1] + 3) = v405;
    getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v403 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v403)
  {
    v623 = [MEMORY[0x1E696AAA8] currentHandler];
    [v623 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypePagesKey()") description:{@"PRLLMParse.mm", 171, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v403;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_PAGES;
  v406 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(170);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v406 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v407 = getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeContainsTypePanoramaKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v408 = QueryParserLibrary();
    v409 = dlsym(v408, "kQPParseAttributeContainsTypePanoramaKey");
    *(v655[1] + 3) = v409;
    getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v407 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v407)
  {
    v624 = [MEMORY[0x1E696AAA8] currentHandler];
    [v624 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypePanoramaKey()") description:{@"PRLLMParse.mm", 172, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v407;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_PANORAMA;
  v410 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(171);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v410 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v411 = getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeContainsTypePhotoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v412 = QueryParserLibrary();
    v413 = dlsym(v412, "kQPParseAttributeContainsTypePhotoKey");
    *(v655[1] + 3) = v413;
    getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v411 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v411)
  {
    v625 = [MEMORY[0x1E696AAA8] currentHandler];
    [v625 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypePhotoKey()") description:{@"PRLLMParse.mm", 173, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v411;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_PHOTO;
  v414 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(172);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v414 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v415 = getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL54getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v416 = QueryParserLibrary();
    v417 = dlsym(v416, "kQPParseAttributeContainsTypePhotoAlbumKey");
    *(v655[1] + 3) = v417;
    getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v415 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v415)
  {
    v626 = [MEMORY[0x1E696AAA8] currentHandler];
    [v626 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypePhotoAlbumKey()") description:{@"PRLLMParse.mm", 174, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v415;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_PHOTO_ALBUM;
  v418 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(173);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v418 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v419 = getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL54getkQPParseAttributeContainsTypeScreenshotKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v420 = QueryParserLibrary();
    v421 = dlsym(v420, "kQPParseAttributeContainsTypeScreenshotKey");
    *(v655[1] + 3) = v421;
    getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v419 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v419)
  {
    v627 = [MEMORY[0x1E696AAA8] currentHandler];
    [v627 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeScreenshotKey()") description:{@"PRLLMParse.mm", 175, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v419;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_SCREENSHOT;
  v422 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(174);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v422 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v423 = getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL50getkQPParseAttributeContainsTypeSelfieKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v424 = QueryParserLibrary();
    v425 = dlsym(v424, "kQPParseAttributeContainsTypeSelfieKey");
    *(v655[1] + 3) = v425;
    getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v423 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v423)
  {
    v628 = [MEMORY[0x1E696AAA8] currentHandler];
    [v628 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeSelfieKey()") description:{@"PRLLMParse.mm", 176, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v423;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_SELFIE;
  v426 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(175);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v426 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v427 = getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeContainsTypeSlomoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v428 = QueryParserLibrary();
    v429 = dlsym(v428, "kQPParseAttributeContainsTypeSlomoKey");
    *(v655[1] + 3) = v429;
    getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v427 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v427)
  {
    v629 = [MEMORY[0x1E696AAA8] currentHandler];
    [v629 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeSlomoKey()") description:{@"PRLLMParse.mm", 177, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v427;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_SLOMO;
  v430 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(176);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v430 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v431 = getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL56getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v432 = QueryParserLibrary();
    v433 = dlsym(v432, "kQPParseAttributeContainsTypeSpatialVideoKey");
    *(v655[1] + 3) = v433;
    getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v431 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v431)
  {
    v630 = [MEMORY[0x1E696AAA8] currentHandler];
    [v630 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeSpatialVideoKey()") description:{@"PRLLMParse.mm", 178, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v431;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_SPATIAL_VIDEO;
  v434 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(177);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v434 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v435 = getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL49getkQPParseAttributeContainsTypeVideoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v436 = QueryParserLibrary();
    v437 = dlsym(v436, "kQPParseAttributeContainsTypeVideoKey");
    *(v655[1] + 3) = v437;
    getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v435 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v435)
  {
    v631 = [MEMORY[0x1E696AAA8] currentHandler];
    [v631 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeVideoKey()") description:{@"PRLLMParse.mm", 179, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v435;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_VIDEO;
  v438 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(178);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v438 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v439 = getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL53getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v440 = QueryParserLibrary();
    v441 = dlsym(v440, "kQPParseAttributeContainsTypeVoiceMemoKey");
    *(v655[1] + 3) = v441;
    getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v439 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v439)
  {
    v632 = [MEMORY[0x1E696AAA8] currentHandler];
    [v632 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeVoiceMemoKey()") description:{@"PRLLMParse.mm", 180, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v439;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_VOICE_MEMO;
  v442 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(179);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v442 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v443 = getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL51getkQPParseAttributeContainsTypeWebsiteKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v444 = QueryParserLibrary();
    v445 = dlsym(v444, "kQPParseAttributeContainsTypeWebsiteKey");
    *(v655[1] + 3) = v445;
    getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v443 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v443)
  {
    v633 = [MEMORY[0x1E696AAA8] currentHandler];
    [v633 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeWebsiteKey()") description:{@"PRLLMParse.mm", 181, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v443;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_WEBSITE;
  v446 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(180);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v446 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v447 = getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL52getkQPParseAttributeContainsTypeReminderKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v448 = QueryParserLibrary();
    v449 = dlsym(v448, "kQPParseAttributeContainsTypeReminderKey");
    *(v655[1] + 3) = v449;
    getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v447 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v447)
  {
    v634 = [MEMORY[0x1E696AAA8] currentHandler];
    [v634 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeReminderKey()") description:{@"PRLLMParse.mm", 182, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v447;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_REMINDER;
  v450 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(181);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v450 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v451 = getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL53getkQPParseAttributeContainsTypeVoicemailKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v452 = QueryParserLibrary();
    v453 = dlsym(v452, "kQPParseAttributeContainsTypeVoicemailKey");
    *(v655[1] + 3) = v453;
    getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v451 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v451)
  {
    v635 = [MEMORY[0x1E696AAA8] currentHandler];
    [v635 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeVoicemailKey()") description:{@"PRLLMParse.mm", 183, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v451;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_VOICE_MAIL;
  v454 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(182);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v454 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v455 = getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL50getkQPParseAttributeContainsTypeWalletKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v456 = QueryParserLibrary();
    v457 = dlsym(v456, "kQPParseAttributeContainsTypeWalletKey");
    *(v655[1] + 3) = v457;
    getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v455 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v455)
  {
    v636 = [MEMORY[0x1E696AAA8] currentHandler];
    [v636 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeWalletKey()") description:{@"PRLLMParse.mm", 184, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v455;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_WALLET;
  v458 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(183);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v458 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v459 = getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL44getkQPParseAttributeKindPanoramaKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v460 = QueryParserLibrary();
    v461 = dlsym(v460, "kQPParseAttributeKindPanoramaKey");
    *(v655[1] + 3) = v461;
    getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v459 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v459)
  {
    v637 = [MEMORY[0x1E696AAA8] currentHandler];
    [v637 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPanoramaKey()") description:{@"PRLLMParse.mm", 126, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v459;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_PANORAMA;
  v462 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(184);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v462 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v463 = getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL46getkQPParseAttributeKindScreenshotKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v464 = QueryParserLibrary();
    v465 = dlsym(v464, "kQPParseAttributeKindScreenshotKey");
    *(v655[1] + 3) = v465;
    getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v463 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v463)
  {
    v638 = [MEMORY[0x1E696AAA8] currentHandler];
    [v638 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindScreenshotKey()") description:{@"PRLLMParse.mm", 127, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v463;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_SCREENSHOT;
  v466 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(185);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v466 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v467 = getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL42getkQPParseAttributeKindSelfieKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v468 = QueryParserLibrary();
    v469 = dlsym(v468, "kQPParseAttributeKindSelfieKey");
    *(v655[1] + 3) = v469;
    getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v467 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v467)
  {
    v639 = [MEMORY[0x1E696AAA8] currentHandler];
    [v639 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindSelfieKey()") description:{@"PRLLMParse.mm", 128, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v467;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_SELFIE;
  v470 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(186);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v470 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v471 = getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL41getkQPParseAttributeKindSlomoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v472 = QueryParserLibrary();
    v473 = dlsym(v472, "kQPParseAttributeKindSlomoKey");
    *(v655[1] + 3) = v473;
    getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v471 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v471)
  {
    v640 = [MEMORY[0x1E696AAA8] currentHandler];
    [v640 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindSlomoKey()") description:{@"PRLLMParse.mm", 129, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v471;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_SLOMO;
  v474 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(187);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v474 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v475 = getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL48getkQPParseAttributeKindSpatialVideoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v476 = QueryParserLibrary();
    v477 = dlsym(v476, "kQPParseAttributeKindSpatialVideoKey");
    *(v655[1] + 3) = v477;
    getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v475 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v475)
  {
    v641 = [MEMORY[0x1E696AAA8] currentHandler];
    [v641 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindSpatialVideoKey()") description:{@"PRLLMParse.mm", 130, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v475;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_SPATIAL_VIDEO;
  v478 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(188);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v478 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v479 = getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL45getkQPParseAttributeKindLivePhotoKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v480 = QueryParserLibrary();
    v481 = dlsym(v480, "kQPParseAttributeKindLivePhotoKey");
    *(v655[1] + 3) = v481;
    getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v479 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v479)
  {
    v642 = [MEMORY[0x1E696AAA8] currentHandler];
    [v642 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindLivePhotoKey()") description:{@"PRLLMParse.mm", 131, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v479;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_LIVE_PHOTO;
  v482 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(189);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v482 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v483 = getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL44getkQPParseAttributeKindPortraitKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v484 = QueryParserLibrary();
    v485 = dlsym(v484, "kQPParseAttributeKindPortraitKey");
    *(v655[1] + 3) = v485;
    getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v483 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v483)
  {
    v643 = [MEMORY[0x1E696AAA8] currentHandler];
    [v643 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPortraitKey()") description:{@"PRLLMParse.mm", 132, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v483;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_PORTRAIT;
  v486 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(190);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v486 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v487 = getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL45getkQPParseAttributeKindTimeLapseKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v488 = QueryParserLibrary();
    v489 = dlsym(v488, "kQPParseAttributeKindTimeLapseKey");
    *(v655[1] + 3) = v489;
    getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v487 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v487)
  {
    v644 = [MEMORY[0x1E696AAA8] currentHandler];
    [v644 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindTimeLapseKey()") description:{@"PRLLMParse.mm", 133, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v487;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_TIME_LAPSE;
  v490 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(191);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v490 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v491 = getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL45getkQPParseAttributeKindCinematicKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v492 = QueryParserLibrary();
    v493 = dlsym(v492, "kQPParseAttributeKindCinematicKey");
    *(v655[1] + 3) = v493;
    getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v491 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v491)
  {
    v645 = [MEMORY[0x1E696AAA8] currentHandler];
    [v645 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindCinematicKey()") description:{@"PRLLMParse.mm", 134, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v491;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_CINEMATIC;
  v494 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(192);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v494 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeDateKey();
  v651 = &QUPP_ARG_CONVERSATION_FILTER_TIME;
  v495 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(193);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v495 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindDocumentFolderKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_DOCUMENT_FOLDER;
  v496 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(194);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v496 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindDocumentFolderKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_DOCUMENT_FOLDER;
  v497 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(195);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v497 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v498 = getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL56getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v499 = QueryParserLibrary();
    v500 = dlsym(v499, "kQPParseAttributeSourceTypeDocumentFolderKey");
    *(v655[1] + 3) = v500;
    getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v498 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v498)
  {
    v646 = [MEMORY[0x1E696AAA8] currentHandler];
    [v646 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeDocumentFolderKey()") description:{@"PRLLMParse.mm", 187, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v498;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_DOCUMENT_FOLDER;
  v501 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(196);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v501 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v502 = getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL58getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v503 = QueryParserLibrary();
    v504 = dlsym(v503, "kQPParseAttributeContainsTypeDocumentFolderKey");
    *(v655[1] + 3) = v504;
    getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v502 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v502)
  {
    v647 = [MEMORY[0x1E696AAA8] currentHandler];
    [v647 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeDocumentFolderKey()") description:{@"PRLLMParse.mm", 188, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v502;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_DOCUMENT_FOLDER;
  v505 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(197);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v505 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindGenericFolderKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_GENERIC_FOLDER;
  v506 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(198);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v506 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindGenericFolderKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_GENERIC_FOLDER;
  v507 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(199);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v507 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v508 = getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL55getkQPParseAttributeSourceTypeGenericFolderKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v509 = QueryParserLibrary();
    v510 = dlsym(v509, "kQPParseAttributeSourceTypeGenericFolderKey");
    *(v655[1] + 3) = v510;
    getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v508 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v508)
  {
    v648 = [MEMORY[0x1E696AAA8] currentHandler];
    [v648 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeGenericFolderKey()") description:{@"PRLLMParse.mm", 190, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v508;
  v651 = &QUPP_ARG_APP_SOURCE_TYPE_GENERIC_FOLDER;
  v511 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(200);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v511 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v512 = getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL57getkQPParseAttributeContainsTypeGenericFolderKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v513 = QueryParserLibrary();
    v514 = dlsym(v513, "kQPParseAttributeContainsTypeGenericFolderKey");
    *(v655[1] + 3) = v514;
    getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v512 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v512)
  {
    v649 = [MEMORY[0x1E696AAA8] currentHandler];
    [v649 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeGenericFolderKey()") description:{@"PRLLMParse.mm", 191, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v512;
  v651 = &QUPP_ARG_APP_CONTAINS_TYPE_GENERIC_FOLDER;
  v515 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(201);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v515 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindTabKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_TAB;
  v516 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(202);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v516 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindTabKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_TAB;
  v517 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(203);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v517 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindGroupTabKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_GROUP_TAB;
  v518 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(204);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v518 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindGroupTabKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_GROUP_TAB;
  v519 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(205);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v519 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindAlarmKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_ALARM;
  v520 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(206);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v520 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindAlarmKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_ALARM;
  v521 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(207);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v521 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindTimerKey();
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_TIMER;
  v522 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(208);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v522 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindTimerKey();
  v651 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_TIMER;
  v523 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(209);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v523 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v661 = 0x2020000000;
  v524 = getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr;
  v662 = getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr)
  {
    v651 = MEMORY[0x1E69E9820];
    v652 = 3221225472;
    v653 = ___ZL40getkQPParseAttributeKindBookKeySymbolLocv_block_invoke;
    v654 = &unk_1E8199698;
    v655 = &__src;
    v525 = QueryParserLibrary();
    v526 = dlsym(v525, "kQPParseAttributeKindBookKey");
    *(v655[1] + 3) = v526;
    getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr = *(v655[1] + 3);
    v524 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v524)
  {
    v650 = [MEMORY[0x1E696AAA8] currentHandler];
    [v650 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindBookKey()") description:{@"PRLLMParse.mm", 194, @"%s", dlerror()}];
LABEL_486:
    __break(1u);
  }

  __src = *v524;
  v651 = &QUPP_ARG_APP_ENTITY_TYPE_BOOK;
  v527 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(210);
  result = std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v527 + 3, &__src, &p_src, 1uLL);
  v529 = *MEMORY[0x1E69E9840];
  return result;
}