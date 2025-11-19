unint64_t dataMap<unsigned long long,true,true,false>::data_map_insert_with_id(uint64_t *a1, char *a2, uint64_t a3, unint64_t a4)
{
  v96 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v8 = a1[1];
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(v8 + 282), &a2[*(v8 + 216)], a3 - *(v8 + 216));
  v10 = *(v8 + 256);
  if (!(*(*a1 + 104))(a1))
  {
    v61 = a4;
    makeThreadId();
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
    v14 = v13;
    v15 = v12;
    v16 = HIDWORD(v12);
    v18 = v17;
    v19 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
    v60 = *(v19 + 312);
    v20 = *(v19 + 224);
    if (v20)
    {
      v20(*(v19 + 288));
    }

    v63 = v16;
    v64 = v15;
    if (_setjmp(v19))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v19 + 312) = v60;
      CIOnThreadCleanUpReset(v14);
      dropThreadId(v15, 1, add_explicit + 1);
      CICleanUpReset(v15, v18);
      v21 = 0;
LABEL_49:
      (*(*a1 + 112))(a1);
      result = v21;
      goto LABEL_50;
    }

    bucket_entry = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
    if (bucket_entry)
    {
      v21 = *bucket_entry;
      if (*bucket_entry)
      {
LABEL_46:
        v44 = threadData[9 * v64 + 1] + 320 * v63;
        *(v44 + 312) = v60;
        v45 = *(v44 + 232);
        if (v45)
        {
          v45(*(v44 + 288));
        }

        dropThreadId(v64, 0, add_explicit + 1);
        goto LABEL_49;
      }

      v23 = bucket_entry;
      (*(*a1 + 112))(a1);
      if ((*(*a1 + 336))(a1))
      {
LABEL_12:
        v21 = 0;
        goto LABEL_46;
      }

      if (!*v23)
      {
        v24 = a1[1];
        v25 = v23;
        if (*(v24 + 256) <= v10)
        {
LABEL_18:
          v27 = *(v24 + 403);
          if (dataMap<unsigned long long,true,true,false>::_data_map_grow(a1, &v65))
          {
            v28 = v61;
            v29 = v27 <= v61 ? v61 : v27;
            if (dataMap<unsigned long long,true,true,false>::_data_map_grow_offsets(a1, &v65, v29))
            {
              v30 = a1[1];
              if (!*(v30 + 379) || (*(v30 + 395) + 1) <= 1)
              {
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
                v82 = 0u;
                v83 = 0u;
                *buf = 0u;
                v81 = 0u;
                v31 = *__error();
                v32 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v47 = a1[1];
                  v49 = *(v47 + 395);
                  v48 = *(v47 + 403);
                  v50 = fd_name(*(v47 + 220), buf, 0x100uLL);
                  *v66 = 136316674;
                  v67 = "data_map_insert_with_id";
                  v68 = 1024;
                  v69 = 3648;
                  v70 = 2048;
                  v71 = v61;
                  v72 = 2048;
                  v73 = v48;
                  v28 = v61;
                  v74 = 2048;
                  v75 = v47;
                  v76 = 2048;
                  v77 = v49;
                  v78 = 2080;
                  v79 = v50;
                  _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: insert data id error %lld max %lld %p map: %p %s", v66, 0x44u);
                }

                *__error() = v31;
                v30 = a1[1];
              }

              if ((*(v30 + 275) & 1) == 0)
              {
                dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
                v30 = a1[1];
                *(v30 + 275) = 1;
              }

              v33 = *(v30 + 395) + 24 * v28;
              *(v33 + 16) = v9;
              *v33 = xmmword_1C2BFA360;
              v34 = a1[1];
              if (*(v34 + 459))
              {
                v35 = *(v34 + 475);
                if ((v35 + 1) >= 2)
                {
                  v36 = v35 + 24 * v28;
                  *(v36 + 16) = v9;
                  *v36 = xmmword_1C2BFA360;
                  v34 = a1[1];
                }
              }

              if ((*(v34 + 273) & 1) == 0)
              {
                dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
                *(a1[1] + 273) = 1;
              }

              dataMap<unsigned long long,true,true,false>::data_map_store_as_update<true>(a1, v28, a2, a3);
              v37 = a1[1];
              if ((*(v37 + 274) & 1) == 0)
              {
                dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
                v38 = a1[1];
                *(v38 + 274) = 1;
                v37 = v38;
              }

              v39 = v37;
              if ((v65 & 4) != 0)
              {
                v40 = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, v28, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
                v39 = a1[1];
                v25 = v40;
              }

              v41 = (v39 + 403);
              *v25 = v28;
              v42 = v41[1];
              if (v42 < v28)
              {
                v41[1] = v28;
                v42 = v28;
              }

              v43 = v41[2] + 1;
              v41[2] = v43;
              if (v42 < v43)
              {
                v51 = __si_assert_copy_extra_332();
                __message_assert_336(v51, v52, v53, v54, v55, v56, v57, v58, "dataMap.ipp");
                free(v51);
                if (__valid_fs(-1))
                {
                  v59 = 2989;
                }

                else
                {
                  v59 = 3072;
                }

                *v59 = -559038737;
                abort();
              }

              if (v42 == v43)
              {
                *v41 = v42 + 1;
              }

              v21 = v28;
              goto LABEL_46;
            }
          }

          goto LABEL_12;
        }
      }

      v26 = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
      if (v26)
      {
        v21 = *v26;
        if (*v26)
        {
          goto LABEL_46;
        }

        v24 = a1[1];
        v25 = v26;
        goto LABEL_18;
      }
    }

    v21 = 0;
    goto LABEL_46;
  }

  result = 0;
LABEL_50:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  v87 = *MEMORY[0x1E69E9840];
  if (a3 < a6)
  {
    v10 = 0;
    v11 = *(*(a1 + 8) + 371);
    v12 = a2 % v11;
    v52 = v11;
    while (1)
    {
      v13 = v12;
      if (v12 < v11)
      {
        break;
      }

LABEL_35:
      if (v10 & 1 | (v13 != v52))
      {
        goto LABEL_40;
      }

      v10 = 1;
      v11 = v12;
      v12 = 0;
    }

    v13 = v12;
    v54 = v10;
    while (1)
    {
      v14 = *(a1 + 8);
      v15 = (v14 + 323);
      v16 = *(v14 + 363);
      v17 = *(v16 + 8 * v13);
      if (v17)
      {
        v18 = v17 == a3;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
LABEL_43:
        result = v16 + 8 * v13;
        goto LABEL_44;
      }

      if (!a3)
      {
        v19 = *(v14 + 395);
        if (v17 >= v6 || (v19 + 1) <= 1)
        {
          v85 = 0u;
          v86 = 0u;
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
          v43 = *__error();
          v44 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
LABEL_42:
            v46 = __error();
            result = 0;
            *v46 = v43;
            goto LABEL_44;
          }

          v48 = *(a1 + 8);
          v49 = fd_name(*(v48 + 220), &v71, 0x100uLL);
          *buf = 136316418;
          v60 = "_data_map_get_offset_entry_impl";
          v61 = 1024;
          v62 = 362;
          v63 = 2048;
          v64 = v17;
          v65 = 2048;
          v66 = v6;
          v67 = 2048;
          v68 = v48;
          v69 = 2080;
          v70 = v49;
          v41 = v44;
LABEL_46:
          _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
          goto LABEL_42;
        }

        v21 = (v19 + 24 * v17);
        v22 = *v21;
        if (*v21 == -2)
        {
          goto LABEL_40;
        }

        if (v21[2] == a2)
        {
          v23 = *(v14 + 216);
          __n = 0;
          __s2 = 0;
          v57 = 0;
          v24 = v21[1];
          v58 = 1;
          if (v22 == -1)
          {
            if (!*v15)
            {
              v85 = 0u;
              v86 = 0u;
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
              v30 = *__error();
              v31 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v34 = *(a1 + 8);
                v35 = fd_name(*(v34 + 220), &v71, 0x100uLL);
                *buf = 136316162;
                v60 = "_data_map_get_data_entry";
                v61 = 1024;
                v62 = 425;
                v63 = 2048;
                v64 = -1;
                v65 = 2048;
                v66 = v34;
                v67 = 2080;
                v68 = v35;
                _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
              }

              *__error() = v30;
              fd_name(*(*(a1 + 8) + 220), &v71, 0x100uLL);
              si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
              goto LABEL_33;
            }

            Value = CFDictionaryGetValue(*v15, v17);
            if (!Value)
            {
              v85 = 0u;
              v86 = 0u;
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
              v32 = *__error();
              v33 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v36 = *(a1 + 8);
                v37 = fd_name(*(v36 + 220), &v71, 0x100uLL);
                *buf = 136316162;
                v60 = "_data_map_get_data_entry";
                v61 = 1024;
                v62 = 419;
                v63 = 2048;
                v64 = -1;
                v65 = 2048;
                v66 = v36;
                v67 = 2080;
                v68 = v37;
                _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
              }

              *__error() = v32;
              fd_name(*(*(a1 + 8) + 220), &v71, 0x100uLL);
              si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
LABEL_33:
              v6 = a6;
              v10 = v54;
              goto LABEL_34;
            }

            v27 = Value;
            v25 = CFDataGetLength(Value) - *(*(a1 + 8) + 216);
            LODWORD(__n) = v25;
            __s2 = &CFDataGetBytePtr(v27)[*(*(a1 + 8) + 216)];
            BytePtr = CFDataGetBytePtr(v27);
            memcpy(&v57, BytePtr, *(*(a1 + 8) + 216));
          }

          else
          {
            dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v22, v24, &__n, v17, &v58);
            if ((v58 & 1) == 0)
            {
              goto LABEL_33;
            }

            v25 = __n;
          }

          if (v25 + v23 != a5 || memcmp(&a4[*(*(a1 + 8) + 216)], __s2, v25))
          {
            goto LABEL_33;
          }

          v29 = memcmp(a4, &v57, v23);
          v6 = a6;
          v10 = v54;
          if (!v29)
          {
            goto LABEL_43;
          }
        }
      }

LABEL_34:
      if (++v13 >= v11)
      {
        goto LABEL_35;
      }
    }
  }

  if (a3)
  {
    v85 = 0u;
    v86 = 0u;
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
    v43 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    v39 = *(a1 + 8);
    v40 = fd_name(*(v39 + 220), &v71, 0x100uLL);
    *buf = 136316418;
    v60 = "_data_map_get_bucket_entry";
    v61 = 1024;
    v62 = 514;
    v63 = 2048;
    v64 = a3;
    v65 = 2048;
    v66 = v6;
    v67 = 2048;
    v68 = v39;
    v69 = 2080;
    v70 = v40;
    v41 = v38;
    goto LABEL_46;
  }

LABEL_40:
  result = 0;
LABEL_44:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_grow(uint64_t a1, _DWORD *a2)
{
  v4 = dataMap<unsigned long long,true,true,false>::_data_map_grow_offsets(a1, a2, *(*(a1 + 8) + 403));
  v5 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_3;
  }

  v6 = v5 + 278;
  if (*(v5 + 278))
  {
    goto LABEL_3;
  }

  v9 = *(v5 + 403) - *(v5 + 427);
  if (v9 < 2 * *(v6 + 93) / 3uLL && v9 >= 2 * *(v6 + 157))
  {
    return 1;
  }

  if (dataMap<unsigned long long,true,true,false>::_data_map_rehash(a1))
  {
    *a2 |= 4u;
    return 1;
  }

  v5 = *(a1 + 8);
LABEL_3:
  v7 = (v5 + 278);
  result = 0;
  if (!*v7)
  {
    *v7 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_grow_offsets(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 278))
  {
    goto LABEL_2;
  }

  if (*(v3 + 339) > a3)
  {
    return 1;
  }

  v8 = (*MEMORY[0x1E69E9AC8] + 24 * a3 + 23) & -*MEMORY[0x1E69E9AC8];
  v9 = dataMap<unsigned long long,true,true,false>::grow_offsets<true>(a1, v3 + 379, v8);
  v3 = *(a1 + 8);
  if (v9)
  {
    v10 = dataMap<unsigned long long,true,true,false>::grow_offsets<true>(a1, v3 + 459, v8);
    v3 = *(a1 + 8);
    if (v10)
    {
      *(v3 + 339) = v8 / 0x18;
      *a2 |= 2u;
      return 1;
    }
  }

LABEL_2:
  v4 = (v3 + 278);
  result = 0;
  if (!*v4)
  {
    *v4 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_dirty(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 307);
  if (*(v2 + 16))
  {
    v3 = result;
    *(v2 + 16) = 0;
    fd_pwrite(*(v1 + 220), v2, 0x54uLL, 0);
    v4 = *(*(v3 + 8) + 220);

    return fd_sync(v4, 0);
  }

  return result;
}

void dataMap<unsigned long long,true,true,false>::data_map_store_as_update<true>(uint64_t a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v8 = *MEMORY[0x1E695E480];
  if (!*(*(a1 + 8) + 323))
  {
    *(*(a1 + 8) + 323) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  }

  v9 = CFDataCreate(v8, bytes, length);
  CFDictionarySetValue(*(*(a1 + 8) + 323), a2, v9);

  CFRelease(v9);
}

uint64_t dataMap<unsigned long long,true,true,false>::grow_offsets<true>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*a2)
  {
    return 1;
  }

  if (fd_truncate(*a2, a3) != -1)
  {
    *(*(a1 + 8) + 331) = a3;
    v6 = *(a2 + 8);
    if (v6 >= a3)
    {
      return 1;
    }

    v7 = 2 * v6;
    munmap(*(a2 + 16), v6);
    *(a2 + 8) = 0;
    v8 = fd_mmap(*a2);
    *(a2 + 16) = v8;
    if (v8 != -1)
    {
      *(a2 + 8) = v7;
      return 1;
    }
  }

  return 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_rehash(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) + 403);
  v2[4] = 0;
  v3 = *v2 - v2[3];
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 403);
    v9 = *(v7 + 427);
    v10 = *(v7 + 371);
    *buf = 134219008;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 1024;
    *&buf[26] = v3;
    *&buf[30] = 1024;
    LODWORD(v52) = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "rehash new %p max id: %d deletes: %d count: %d hash_size: %d", buf, 0x24u);
  }

  *__error() = v4;
  v11 = *(*(a1 + 8) + 363);
  v12 = 8 * *(*(a1 + 8) + 371);
  fd_system_status_stall_if_busy();
  msync(v11, v12, 4);
  if (fd_truncate(*(*(a1 + 8) + 236), 0) == -1)
  {
    goto LABEL_26;
  }

  v13 = 2 * v3;
  if ((2 * v3) <= *MEMORY[0x1E69E9AC8] >> 3)
  {
    v13 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v14 = *(a1 + 8);
  *(v14 + 371) = v13;
  v15 = 8 * v13;
  if (fd_truncate(*(v14 + 236), 8 * v13) == -1)
  {
    goto LABEL_26;
  }

  v16 = *(a1 + 8);
  if ((*(v16 + 274) & 1) == 0)
  {
    dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
    v16 = *(a1 + 8);
    *(v16 + 274) = 1;
  }

  v17 = v16 + 347;
  *(v16 + 347) = v15;
  v18 = *(v16 + 355);
  if (v15 > v18)
  {
    v19 = *(v16 + 355);
    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 < v15);
    munmap(*(v17 + 16), v18);
    v21 = *(a1 + 8);
    *(v21 + 355) = 0;
    *(v21 + 363) = -1;
    v22 = fd_mmap(*(v21 + 236));
    v16 = *(a1 + 8);
    *(v16 + 363) = v22;
    if (v22 == -1)
    {
      goto LABEL_26;
    }

    *(v16 + 355) = v20;
  }

  ++*(v16 + 256);
  v23 = *(v16 + 403);
  if (v23 < 2)
  {
LABEL_22:
    result = 1;
    goto LABEL_29;
  }

  v24 = 0;
  v25 = 1;
  while (1)
  {
    v26 = *(v16 + 395);
    if ((v26 + 1) <= 1)
    {
      break;
    }

    v27 = v26 + v24;
    if (*(v27 + 24) != -2)
    {
      bucket_entry = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, *(v27 + 40), v25, 0, 0, v23);
      if (!bucket_entry || *bucket_entry)
      {
        goto LABEL_26;
      }

      *bucket_entry = v25;
      v16 = *(a1 + 8);
    }

    ++v25;
    v23 = *(v16 + 403);
    v24 += 24;
    if (v25 >= v23)
    {
      goto LABEL_22;
    }
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(buf, 0, sizeof(buf));
  v30 = *__error();
  v31 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v37 = *(a1 + 8);
    v38 = fd_name(*(v37 + 220), buf, 0x100uLL);
    v39 = 136316418;
    v40 = "_data_map_get_offset_entry_impl";
    v41 = 1024;
    v42 = 362;
    v43 = 2048;
    v44 = v25;
    v45 = 2048;
    v46 = v23;
    v47 = 2048;
    v48 = v37;
    v49 = 2080;
    v50 = v38;
    _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v39, 0x3Au);
  }

  *__error() = v30;
LABEL_26:
  v32 = *__error();
  v33 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v36 = *(a1 + 8);
    *buf = 136315650;
    *&buf[4] = "_data_map_rehash";
    *&buf[12] = 1024;
    *&buf[14] = 645;
    *&buf[18] = 2048;
    *&buf[20] = v36;
    _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", buf, 0x1Cu);
  }

  v34 = __error();
  result = 0;
  *v34 = v32;
LABEL_29:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

int *dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8) + 315;
  result = *v8;
  if (!*v8)
  {
    goto LABEL_11;
  }

  v12 = a3;
  v14 = HIDWORD(a3);
  v20 = 0;
  result = (*(v8 + 172))(result, a3);
  v19 = 0;
  if (!result)
  {
    if (dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(data_map_ext_offset_t,dataMapMetaData<unsigned long long,true,true,false>::data_entry_t *,unsigned long long,BOOL *)::_COUNT_ >= 1)
    {
      --dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(data_map_ext_offset_t,dataMapMetaData<unsigned long long,true,true,false>::data_entry_t *,unsigned long long,BOOL *)::_COUNT_;
LABEL_8:
      v16 = *__error();
      v17 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v22 = "data_entry_restore";
        v23 = 1024;
        v24 = 312;
        v25 = 2048;
        v26 = a5;
        v27 = 1024;
        v28 = v12;
        v29 = 2048;
        v30 = a2;
        v31 = 1024;
        v32 = v14;
        _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", buf, 0x32u);
      }

      result = __error();
      *result = v16;
      goto LABEL_11;
    }

    if (++dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(data_map_ext_offset_t,dataMapMetaData<unsigned long long,true,true,false>::data_entry_t *,unsigned long long,BOOL *)::_COUNT2_ == 100)
    {
      dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(data_map_ext_offset_t,dataMapMetaData<unsigned long long,true,true,false>::data_entry_t *,unsigned long long,BOOL *)::_COUNT2_ = 0;
      goto LABEL_8;
    }

LABEL_11:
    *a6 = 0;
    goto LABEL_12;
  }

  result = (*(*(a1 + 8) + 495))(result, a2, v14, &v19, &v20);
  *(a4 + 8) = result;
  v15 = v20;
  *(a4 + 16) = v19;
  *a4 = v15;
LABEL_12:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

const UInt8 *dataMap<unsigned long long,true,true,false>::data_map_get_data_for_offset_locked(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *key)
{
  v51 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  if (a2 == -1)
  {
    v8 = *(*(a1 + 8) + 323);
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, key);
      if (Value)
      {
        v10 = Value;
        LODWORD(v21) = CFDataGetLength(Value) - *(*(a1 + 8) + 216);
        v22 = &CFDataGetBytePtr(v10)[*(*(a1 + 8) + 216)];
        CFDataGetBytePtr(v10);
        if (a4)
        {
          goto LABEL_4;
        }

LABEL_8:
        v7 = *(*(a1 + 8) + 216);
        goto LABEL_9;
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = *__error();
      v15 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 8);
        v20 = fd_name(*(v19 + 220), &v35, 0x100uLL);
        *buf = 136316162;
        v26 = "_data_map_get_data_entry";
        v27 = 1024;
        v28 = 419;
        v29 = 2048;
        v30 = -1;
        v31 = 2048;
        v32 = v19;
        v33 = 2080;
        v34 = v20;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
      }

      *__error() = v14;
      fd_name(*(*(a1 + 8) + 220), &v35, 0x100uLL);
      si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = *__error();
      v13 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 8);
        v18 = fd_name(*(v17 + 220), &v35, 0x100uLL);
        *buf = 136316162;
        v26 = "_data_map_get_data_entry";
        v27 = 1024;
        v28 = 425;
        v29 = 2048;
        v30 = -1;
        v31 = 2048;
        v32 = v17;
        v33 = 2080;
        v34 = v18;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
      }

      *__error() = v12;
      fd_name(*(*(a1 + 8) + 220), &v35, 0x100uLL);
      si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, a2, a3 << 32, &v21, key, &v24);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = *(*(a1 + 8) + 216);
  *a4 = (v21 - v7);
LABEL_9:
  result = &v22[v7];
LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

int *dataMap<unsigned long long,true,true,false>::data_map_scan_lost_ids(void *a1, int a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v4 = si_copy_all_index_ids(*(a1[1] + 315));
  (*(*a1 + 104))(a1);
  if (v4)
  {
    v5 = a1[1];
    v6 = *(v5 + 403);
    if (v6 >= 2)
    {
      v53 = 0;
      v52 = *MEMORY[0x1E695E480];
      v7 = 1;
      v8 = 24;
      while (1)
      {
        v9 = *(v5 + 395);
        if ((v9 + 1) >= 2)
        {
          v12 = v9 + v8;
          if (!a2)
          {
            goto LABEL_11;
          }
        }

        else
        {
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
          memset(buf, 0, sizeof(buf));
          v10 = *__error();
          v11 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v21 = a1[1];
            v22 = fd_name(*(v21 + 220), buf, 0x100uLL);
            *v56 = 136316418;
            v57 = "_data_map_get_offset_entry_impl";
            v58 = 1024;
            v59 = 362;
            v60 = 2048;
            v61 = v7;
            v62 = 2048;
            v63 = v6;
            v64 = 2048;
            v65 = v21;
            v66 = 2080;
            v67 = v22;
            _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", v56, 0x3Au);
          }

          v12 = 0;
          *__error() = v10;
          if (!a2)
          {
            goto LABEL_11;
          }
        }

        if ((*(v12 + 12) & 0x80000000) != 0)
        {
          LODWORD(v53) = v53 + 1;
          v13 = (v12 + 8);
          if (*(v12 + 8))
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

LABEL_11:
        v13 = (v12 + 8);
        if ((SIUINT32SetContainsValue(v4, *(v12 + 8)) & 1) == 0)
        {
          if (*v13)
          {
            v14 = *__error();
            v15 = _SILogForLogForCategory(16);
            v16 = dword_1EBF46B0C < 3;
            if (os_log_type_enabled(v15, (dword_1EBF46B0C < 3)))
            {
              v17 = *v13;
              *buf = 67109376;
              *&buf[4] = v17;
              *&buf[8] = 2048;
              *&buf[10] = v7;
              _os_log_impl(&dword_1C278D000, v15, v16, "*warn* Invalid indexId %u for vid: %llu", buf, 0x12u);
            }

            *__error() = v14;
LABEL_17:
            *v13 = 0;
          }

LABEL_18:
          if (*v12 != -1)
          {
            v18 = (*v12 >> 2) & 3;
            v19 = v54 + 24 * (*v12 & 3);
            v20 = *&v19[8 * v18];
            if (!v20)
            {
              v20 = SIUINT64SetCreate();
              *&v19[8 * v18] = v20;
            }

            ++HIDWORD(v53);
            SIValueSet<unsigned long long>::SIValueSetInsert((v20 + 16), v7);
          }
        }

        ++v7;
        v5 = a1[1];
        v6 = *(v5 + 403);
        v8 += 24;
        if (v7 >= v6)
        {
          goto LABEL_26;
        }
      }
    }

    v53 = 0;
LABEL_26:
    CFRelease(v4);
    v23 = v53;
    v24 = HIDWORD(v53);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  (*(*a1 + 112))(a1);
  if (!v24)
  {
    goto LABEL_49;
  }

  v25 = *__error();
  v26 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v24 - v23;
    *&buf[8] = 1024;
    *&buf[10] = v23;
    _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "recoverIds for %u lost vectors %u purged vectors", buf, 0xEu);
  }

  *__error() = v25;
  if (!si_recover_vector_ids(*(a1[1] + 315), v54))
  {
    v41 = *__error();
    v42 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "data_map_scan_lost_ids_impl";
      *&buf[12] = 1024;
      *&buf[14] = 3503;
      _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: recoverIds failed", buf, 0x12u);
    }

    v28 = 0;
    *__error() = v41;
    goto LABEL_53;
  }

  v27 = *MEMORY[0x1E695E480];
  v28 = SIUINT64SetCreate();
  v29 = 0;
  v30 = v54;
  do
  {
    for (i = 0; i != 24; i += 8)
    {
      v32 = *(v30 + i);
      if (v32)
      {
        SIValueSet<unsigned long long>::_SIValueSetInnerIterate(v32 + 56, *(v32 + 16), *(v32 + 24), unionUINT64Set, v28, 512);
      }
    }

    ++v29;
    v30 = (v30 + 24);
  }

  while (v29 != 3);
  (*(*a1 + 104))(a1);
  if (*(a1[1] + 403) < 2uLL)
  {
LABEL_45:
    (*(*a1 + 112))(a1);
    v39 = *__error();
    v40 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "recoverIds completed %u vectorIds no data", buf, 8u);
    }

    *__error() = v39;
    if (v24)
    {
      goto LABEL_53;
    }

    CFRelease(v28);
LABEL_49:
    v28 = 0;
LABEL_53:
    v43 = 0;
    v44 = v54;
    do
    {
      for (j = 0; j != 24; j += 8)
      {
        v46 = *(v44 + j);
        if (v46)
        {
          CFRelease(v46);
        }
      }

      ++v43;
      v44 = (v44 + 24);
    }

    while (v43 != 3);
    v47 = *MEMORY[0x1E69E9840];
    return v28;
  }

  v33 = 1;
  v34 = 32;
  while (1)
  {
    v35 = SIUINT64SetContainsValue(v28, v33);
    v36 = a1[1];
    if (v35)
    {
      break;
    }

LABEL_44:
    ++v33;
    v34 += 24;
    if (v33 >= *(v36 + 403))
    {
      goto LABEL_45;
    }
  }

  v37 = *(v36 + 403);
  if (v33 < v37)
  {
    v38 = *(v36 + 395);
    if ((v38 + 1) >= 2)
    {
      if (*(v38 + v34))
      {
        --v24;
        SIUINT64SetRemoveValue(v28, v33);
        v36 = a1[1];
      }

      goto LABEL_44;
    }
  }

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
  memset(buf, 0, sizeof(buf));
  __error();
  v49 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    v50 = a1[1];
    v51 = fd_name(*(v50 + 220), buf, 0x100uLL);
    *v56 = 136316418;
    v57 = "_data_map_get_offset_entry_impl";
    v58 = 1024;
    v59 = 362;
    v60 = 2048;
    v61 = v33;
    v62 = 2048;
    v63 = v37;
    v64 = 2048;
    v65 = v50;
    v66 = 2080;
    v67 = v51;
    _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", v56, 0x3Au);
  }

  result = __error();
  __break(1u);
  return result;
}

uint64_t unionUINT64Set(unint64_t *a1, uint64_t a2, unint64_t *a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = *a1++;
      SIValueSet<unsigned long long>::SIValueSetInsert(a3 + 2, v6);
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_drop_vectors(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  (*(*a1 + 336))(a1);
  v6 = a1[1];
  v7 = *(v6 + 403);
  if (v7 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
    v10 = 24;
    do
    {
      v11 = *(v6 + 395);
      if ((v11 + 1) >= 2)
      {
        v15 = v11 + v10;
      }

      else
      {
        memset(v35, 0, sizeof(v35));
        v12 = *__error();
        v13 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v22 = v8;
          v17 = a2;
          v18 = a1[1];
          v19 = fd_name(*(v18 + 220), v35, 0x100uLL);
          *buf = 136316418;
          v24 = "_data_map_get_offset_entry_impl";
          v25 = 1024;
          v26 = 362;
          v27 = 2048;
          v28 = v9;
          v29 = 2048;
          v30 = v7;
          v31 = 2048;
          v32 = v18;
          a2 = v17;
          v8 = v22;
          v33 = 2080;
          v34 = v19;
          _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        v14 = __error();
        v15 = 0;
        *v14 = v12;
      }

      if (*(v15 + 8) == a3 && *v15 != -1 && (*v15 & 0xFLL) == a2)
      {
        *(v15 + 8) = 0;
        v8 = (v8 + 1);
      }

      ++v9;
      v6 = a1[1];
      v7 = *(v6 + 403);
      v10 += 24;
    }

    while (v9 < v7);
  }

  (*(*a1 + 112))(a1);
  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_restore_data_impl<true>(void *a1, unint64_t a2, void *a3, size_t a4, const void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = (*(*a1 + 336))(a1);
  v11 = a1[1];
  v12 = *(v11 + 395);
  v13 = *(v11 + 403);
  if (v13 > a2 && (v12 + 1) > 1)
  {
    if (*(v12 + 24 * a2) == -1)
    {
      v21 = *(v11 + 216) + a4;
      MEMORY[0x1EEE9AC00](v10);
      v23 = &v28 - v22;
      bzero(&v28 - v22, v24);
      v25 = *(a1[1] + 216);
      memcpy(v23, a5, v25);
      memcpy(&v23[v25], a3, a4);
      dataMap<unsigned long long,true,true,false>::data_map_store_as_update<true>(a1, a2, v23, v25 + a4);
    }
  }

  else
  {
    memset(v40, 0, sizeof(v40));
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v26 = a1[1];
      v27 = fd_name(*(v26 + 220), v40, 0x100uLL);
      v28 = 136316418;
      v29 = "_data_map_get_offset_entry_impl";
      v30 = 1024;
      v31 = 362;
      v32 = 2048;
      v33 = a2;
      v34 = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = v26;
      v38 = 2080;
      v39 = v27;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v28, 0x3Au);
    }

    *__error() = v15;
    v17 = a1[1];
    v18 = dataMap<unsigned long long,false,true,false>::dm_hash(*(v17 + 282), a3, a4);
    if (*(v17 + 403) <= a2)
    {
      *(v17 + 403) = a2 + 1;
    }

    dataMap<unsigned long long,true,true,false>::_data_map_push_to_update_set<true>(a1, a2, v18, a3, a4, 0);
  }

  result = (*(*a1 + 112))(a1);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t dataMap<unsigned long long,true,true,false>::_data_map_push_to_update_set<true>(uint64_t a1, unint64_t a2, unint64_t a3, UInt8 *a4, CFIndex a5, void *bucket_entry)
{
  v59 = *MEMORY[0x1E69E9840];
  v29 = 0;
  if (dataMap<unsigned long long,true,true,false>::_data_map_grow(a1, &v29))
  {
    v12 = *(a1 + 8);
    if (!*(v12 + 379) || (*(v12 + 395) + 1) <= 1)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v45 = 0u;
      memset(buf, 0, sizeof(buf));
      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 8);
        v26 = *(v25 + 403);
        v28 = *(v25 + 395);
        v27 = fd_name(*(v25 + 220), buf, 0x100uLL);
        *v30 = 136316674;
        v31 = "_data_map_push_to_update_set";
        v32 = 1024;
        v33 = 3260;
        v34 = 2048;
        v35 = a2;
        v36 = 2048;
        v37 = v26;
        v38 = 2048;
        v39 = v25;
        v40 = 2048;
        v41 = v28;
        v42 = 2080;
        v43 = v27;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: insert data id error %lld max %lld %p map: %p %s", v30, 0x44u);
      }

      *__error() = v13;
      v12 = *(a1 + 8);
    }

    if ((*(v12 + 275) & 1) == 0)
    {
      dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
      v12 = *(a1 + 8);
      *(v12 + 275) = 1;
    }

    v15 = *(v12 + 395) + 24 * a2;
    *(v15 + 16) = a3;
    *v15 = xmmword_1C2BFA360;
    v16 = *(a1 + 8);
    if (*(v16 + 459))
    {
      v17 = *(v16 + 475);
      if ((v17 + 1) >= 2)
      {
        v18 = v17 + 24 * a2;
        *(v18 + 16) = a3;
        *v18 = xmmword_1C2BFA360;
        v16 = *(a1 + 8);
      }
    }

    if ((*(v16 + 273) & 1) == 0)
    {
      dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
      *(*(a1 + 8) + 273) = 1;
    }

    dataMap<unsigned long long,true,true,false>::data_map_store_as_update<true>(a1, a2, a4, a5);
    v19 = *(a1 + 8);
    ++*(v19 + 403);
    if ((*(v19 + 274) & 1) == 0)
    {
      dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
      *(*(a1 + 8) + 274) = 1;
    }

    if (!bucket_entry || (v29 & 4) != 0)
    {
      bucket_entry = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, a3, a2, a4, a5, 0xFFFFFFFFFFFFFFFFLL);
    }

    *bucket_entry = a2;
    if (gSILogLevels[0] >= 5)
    {
      v20 = *__error();
      v21 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 8);
        *buf = 134218240;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "added %lld to %p", buf, 0x16u);
      }

      *__error() = v20;
    }
  }

  else
  {
    a2 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_cancel_offset_rewrite(void *a1)
{
  (*(*a1 + 336))(a1);
  if (*(a1[1] + 459))
  {
    munmap(*(a1[1] + 475), *(a1[1] + 467));
    _fd_unlink_with_origin(*(a1[1] + 459), 0);
    fd_release(*(a1[1] + 459));
    v2 = a1[1];
    *(v2 + 467) = 0;
    *(v2 + 459) = 0;
    *(v2 + 475) = 0;
    *(a1[1] + 475) = -1;
  }

  v3 = *(*a1 + 112);

  return v3(a1);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_end_offset_rewrite(void *a1)
{
  (*(*a1 + 336))(a1);
  v2 = *(a1[1] + 459);
  if (v2)
  {
    fd_rename_over_and_release(*(a1[1] + 379), v2);
    munmap(*(a1[1] + 395), *(a1[1] + 387));
    v3 = a1[1];
    v4 = v3 + 379;
    v3 += 459;
    *(v4 + 16) = *(v3 + 16);
    *v4 = *v3;
    v5 = a1[1];
    *(v5 + 475) = 0;
    *(v5 + 459) = 0;
    *(v5 + 467) = 0;
    v6 = (a1[1] + 459);
    v6[2] = -1;
    *v6 = 0;
  }

  v7 = *(*a1 + 112);

  return v7(a1);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_start_offset_rewrite(void *a1, uint64_t a2)
{
  if (*(a1[1] + 459))
  {
    v17 = __si_assert_copy_extra_332();
    __message_assert_336(v17, v18, v19, v20, v21, v22, v23, v24, "dataMap.ipp");
    free(v17);
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

  (*(*a1 + 104))(a1);
  v4 = a1[1];
  if (*(v4 + 403) < 2uLL)
  {
    v12 = *(v4 + 483);
  }

  else
  {
    v5 = *(v4 + 379);
    *(v4 + 467) = *(v4 + 387);
    if (*(v4 + 277))
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    sibling_with_prefix_protected = fd_create_sibling_with_prefix_protected(v5, "tmp.clone.", v6);
    v8 = (a1[1] + 379);
    v8[10] = sibling_with_prefix_protected;
    fd_copyfile(*v8, sibling_with_prefix_protected, 1);
    v9 = *(a1[1] + 467);
    v10 = fd_mmap(*(a1[1] + 459));
    v11 = a1[1] + 403;
    *(v11 + 72) = v10;
    v12 = (*(v11 + 80) + 1);
    *(v11 + 80) = v12;
    if (a2 && *v11 >= 2uLL)
    {
      v13 = 1;
      do
      {
        clone_offset = dataMap<unsigned long long,true,true,false>::_data_map_get_clone_offset_entry<true>(a1, v13);
        if (clone_offset)
        {
          v15 = clone_offset;
          if (SIUINT32SetContainsValue(a2, *(clone_offset + 8)))
          {
            *(v15 + 8) = 0;
          }
        }

        ++v13;
      }

      while (v13 < *(a1[1] + 403));
    }
  }

  (*(*a1 + 112))(a1);
  return v12;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_get_clone_offset_entry<true>(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 8) + 403);
  v5 = *(*(a1 + 8) + 475);
  v8 = v4 > a2 && v5 != 0 && v5 != -1 && *(*(a1 + 8) + 467) / 0x18uLL > a2;
  if (v8 && a2 < *(*(a1 + 8) + 331) / 0x18uLL)
  {
    result = v5 + 24 * a2;
  }

  else
  {
    memset(v28, 0, sizeof(v28));
    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 8);
      v15 = fd_name(*(v14 + 220), v28, 0x100uLL);
      v16 = 136316418;
      v17 = "_data_map_get_offset_entry_impl";
      v18 = 1024;
      v19 = 362;
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = v4;
      v24 = 2048;
      v25 = v14;
      v26 = 2080;
      v27 = v15;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v16, 0x3Au);
    }

    v12 = __error();
    result = 0;
    *v12 = v10;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_set_offset_for_id(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v38 = *MEMORY[0x1E69E9840];
  (*(*a1 + 336))(a1);
  if (!a5)
  {
    v10 = *(a1[1] + 395);
    v11 = *(a1[1] + 403);
    if (v11 > a2 && (v10 + 1) > 1)
    {
      v21 = (v10 + 24 * a2);
      v22 = *v21;
      *v21 = a3;
      v21[1] = a4;
      v15 = v22 == -1;
    }

    else
    {
      memset(v37, 0, sizeof(v37));
      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = a1[1];
        v24 = fd_name(*(v23 + 220), v37, 0x100uLL);
        v25 = 136316418;
        v26 = "_data_map_get_offset_entry_impl";
        v27 = 1024;
        v28 = 362;
        v29 = 2048;
        v30 = a2;
        v31 = 2048;
        v32 = v11;
        v33 = 2048;
        v34 = v23;
        v35 = 2080;
        v36 = v24;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v25, 0x3Au);
      }

      *__error() = v13;
      v15 = 1;
    }

    v16 = *(a1[1] + 323);
    if (v16)
    {
      v17 = !v15;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      CFDictionaryRemoveValue(v16, a2);
    }
  }

  if (*(a1[1] + 459))
  {
    clone_offset = dataMap<unsigned long long,true,true,false>::_data_map_get_clone_offset_entry<true>(a1, a2);
    if (clone_offset)
    {
      *clone_offset = a3;
      clone_offset[1] = a4;
    }
  }

  result = (*(*a1 + 112))(a1);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL dataMap<unsigned long long,true,true,false>::data_map_is_empty(uint64_t a1)
{
  memset(&v6, 0, sizeof(v6));
  if (fd_stat(*(*(a1 + 8) + 236), &v6))
  {
    v2 = 1;
  }

  else
  {
    v2 = v6.st_size == 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (!fd_stat(*(*(a1 + 8) + 220), &v6) && v6.st_size != 0)
  {
    return 0;
  }

  return fd_stat(*(*(a1 + 8) + 379), &v6) || v6.st_size == 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_garbage_collect_complete(int a1, int a2, uint64_t a3, const char *a4, const char *a5)
{
  _rename_prefix_suffix(a2, a4 + 268, ".offsets", a4, a5);
  _rename_prefix_suffix(a2, a4 + 268, ".data", v7, v8);

  return _rename_prefix_suffix(a2, a4 + 268, ".header", v9, v10);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_defer_block(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 451);
  if (v3)
  {
    return v3(*(v2 + 244));
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_get_data_offset_locked(uint64_t a1, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 395);
  v6 = *(v4 + 403);
  if (v6 > a2 && (v5 + 1) > 1)
  {
    v10 = *(v5 + 24 * a2);
    if (v10 == -2)
    {
      v10 = 0;
    }

    else if (*(v4 + 264))
    {
      os_unfair_lock_lock((v4 + 260));
      v13 = *(a1 + 8);
      v14 = *(v13 + 264);
      if (v14)
      {
        bit_vector_set(v14, a2);
        v13 = *(a1 + 8);
      }

      os_unfair_lock_unlock((v13 + 260));
    }
  }

  else
  {
    memset(v29, 0, sizeof(v29));
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 8);
      v16 = fd_name(*(v15 + 220), v29, 0x100uLL);
      v17 = 136316418;
      v18 = "_data_map_get_offset_entry_impl";
      v19 = 1024;
      v20 = 362;
      v21 = 2048;
      v22 = a2;
      v23 = 2048;
      v24 = v6;
      v25 = 2048;
      v26 = v15;
      v27 = 2080;
      v28 = v16;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v17, 0x3Au);
    }

    v10 = 0;
    *__error() = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v12 = 0;
  v6 = *(*(a1 + 8) + 277);
  asprintf(&v12, "%s%s", a2, ".buckets");
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(a1 + 8) + 236), v12, 514, v7);
  *a3 = sibling_protected;
  if (sibling_protected)
  {
    fd_copyfile(*(*(a1 + 8) + 236), sibling_protected, 1);
  }

  free(v12);
  asprintf(&v12, "%s%s", a2, ".header");
  v9 = fd_create_sibling_protected(*(*(a1 + 8) + 220), v12, 514, v7);
  *(a3 + 24) = v9;
  if (v9)
  {
    fd_copyfile(*(*(a1 + 8) + 220), v9, 1);
  }

  free(v12);
  asprintf(&v12, "%s%s", a2, ".offsets");
  v10 = fd_create_sibling_protected(*(*(a1 + 8) + 379), v12, 514, v7);
  *(a3 + 8) = v10;
  if (v10)
  {
    fd_copyfile(*(*(a1 + 8) + 379), v10, 1);
  }

  free(v12);
  return 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_wrlock(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    v2 = 0;
  }

  else
  {
    v2 = _db_write_lock(v1);
    if (v2)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v2;
        if (v2 == -1)
        {
          v7 = *__error();
        }

        v8 = 136315650;
        v9 = "_data_map_wrlock";
        v10 = 1024;
        v11 = 164;
        v12 = 1024;
        v13 = v7;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_wrlock error %d", &v8, 0x18u);
      }

      *__error() = v5;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void *dataMap<unsigned long long,true,true,false>::data_map_copy_deleted_ids(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 && (v2 = (v1 + 403), v2[3]))
  {
    v4 = *v2;
    v5 = bit_vector_create(*v2);
    if (v4 >= 2)
    {
      v6 = 1;
      v7 = 24;
      do
      {
        v8 = *(*(a1 + 8) + 395);
        v9 = *(*(a1 + 8) + 403);
        if (v6 < v9 && (v8 + 1) > 1)
        {
          if (*(v8 + v7) != -2)
          {
            goto LABEL_13;
          }
        }

        else
        {
          memset(v29, 0, sizeof(v29));
          v11 = *__error();
          v12 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 8);
            v14 = fd_name(*(v13 + 220), v29, 0x100uLL);
            *buf = 136316418;
            v18 = "_data_map_get_offset_entry_impl";
            v19 = 1024;
            v20 = 362;
            v21 = 2048;
            v22 = v6;
            v23 = 2048;
            v24 = v9;
            v25 = 2048;
            v26 = v13;
            v27 = 2080;
            v28 = v14;
            _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
          }

          *__error() = v11;
        }

        bit_vector_set(v5, v6);
LABEL_13:
        ++v6;
        v7 += 24;
      }

      while (v4 != v6);
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_garbage_collect(void *a1)
{
  if (*(a1[1] + 264))
  {
    (*(*a1 + 336))(a1);
    (*(*a1 + 96))(a1);
    (*(*a1 + 112))(a1);
  }

  return 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_garbage_collect_setup(void *a1)
{
  (*(*a1 + 336))(a1);
  v2 = a1[1];
  v3 = *(v2 + 403);
  os_unfair_lock_lock((v2 + 260));
  v4 = a1[1];
  if (*(v4 + 264))
  {
    os_unfair_lock_unlock((v4 + 260));
    (*(*a1 + 112))(a1);
    return 22;
  }

  else
  {
    v6 = bit_vector_create(v3);
    v7 = a1[1];
    *(v7 + 264) = v6;
    os_unfair_lock_unlock((v7 + 260));
    return 0;
  }
}

void dataMap<unsigned long long,true,true,false>::_data_map_clear_seen(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 8) + 260));
  v2 = *(a1 + 8);
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(v3);
    v2 = *(a1 + 8);
    *(v2 + 264) = 0;
  }

  os_unfair_lock_unlock((v2 + 260));
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_match_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 283);
  if (v4 != -1)
  {
    if (v4)
    {
      if (v4 <= a2)
      {
        v5 = *(v2 + 291);
        if (&v4[v5] > a2)
        {
          v6 = *(v2 + 220);
          v7 = "data ro header";
          v8 = a2;
          LODWORD(v9) = *(v2 + 291);
LABEL_22:
          log_map_access_error(v8, v4, v5, v9, v7, v6);
          return 1;
        }
      }
    }

    return 0;
  }

  if ((si_vector_index_contains_address(*(v2 + 315), a2) & 1) == 0)
  {
    v12 = *(a1 + 8);
    v4 = *(v12 + 395);
    v13 = (v4 + 1) < 2 || v4 > a2;
    if (v13 || (v5 = *(v12 + 387), &v4[v5] <= a2))
    {
      v4 = *(v12 + 363);
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = *(v12 + 355);
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v9 = *(v12 + 347);
      v6 = *(v12 + 236);
      v7 = "data buckets";
    }

    else
    {
      v9 = *(v12 + 331);
      v6 = *(v12 + 379);
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_22;
  }

  return 1;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_version_update(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 307);
  if (*(v2 + 8) <= 0xAu)
  {
    *(v2 + 8) = 12;
    return fd_pwrite(*(v1 + 220), v2, 0x54uLL, 0);
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_version(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(*(v1 + 307) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_sync_header(uint64_t *a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v30 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v28 = v9;
  v29 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v37, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278))
    {
      v16 = *(v15 + 307);
      if (*(v16 + 16) != 1)
      {
        *(v16 + 44) = *(v16 + 20);
        *(v16 + 28) = *(v15 + 403);
        *(v16 + 20) = *(v15 + 371);
        *(v16 + 16) = 0;
        fd_pwrite(*(v15 + 220), v16, 0x54uLL, 0);
        if (a2)
        {
          fd_sync(*(a1[1] + 220), 0);
        }

        *(*(a1[1] + 307) + 16) = 2;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        *v37 = 0u;
        v17 = *__error();
        v18 = _SILogForLogForCategory(7);
        v19 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = fd_name(*(a1[1] + 220), v37, 0x100uLL);
          if (a2)
          {
            v21 = "sync";
          }

          else
          {
            v21 = "update";
          }

          v22 = (*(*a1 + 96))(a1);
          *buf = 136315650;
          v32 = v20;
          v33 = 2080;
          v34 = v21;
          v35 = 2048;
          v36 = v22;
          _os_log_impl(&dword_1C278D000, v18, v19, "%s complete %s header with count: %llu", buf, 0x20u);
        }

        *__error() = v17;
      }
    }

    v30 = 1;
    v23 = threadData[9 * v29 + 1] + 320 * v28;
    *(v23 + 312) = v13;
    v24 = *(v23 + 232);
    if (v24)
    {
      v24(*(v23 + 288));
    }

    dropThreadId(v29, 0, add_explicit + 1);
  }

  v25 = (a1[1] + 278);
  if (v30 == 1)
  {
    result = *v25;
  }

  else
  {
    *v25 = 22;
    result = 22;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_sync_data(uint64_t *a1, int a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v38 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v36 = v9;
  v37 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v45, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278))
    {
      v16 = *(v15 + 307);
      if (!*(v16 + 16))
      {
        if (*(v15 + 273) == 1)
        {
          *(v15 + 273) = 0;
        }

        if (*(v15 + 275) == 1)
        {
          if (a2)
          {
            v17 = *(v16 + 52);
            v18 = *(v15 + 395) + 24 * v17;
            v19 = -*MEMORY[0x1E69E9AC8];
            v20 = 24 * (*(v15 + 403) - v17);
            fd_system_status_stall_if_busy();
            msync((v18 & v19), v20, 16);
            v15 = a1[1];
          }

          *(v15 + 275) = 0;
        }

        v21 = v15;
        if (*(v15 + 274) == 1)
        {
          if (a2)
          {
            v22 = *(v15 + 363);
            v23 = 8 * *(v15 + 371);
            fd_system_status_stall_if_busy();
            msync(v22, v23, 16);
            v21 = a1[1];
          }

          *(v21 + 274) = 0;
        }

        v24 = *(v21 + 307);
        *(v24 + 28) = *(v21 + 403);
        *(v24 + 20) = *(v21 + 371);
        *(v24 + 60) = *(v21 + 427);
        *(v24 + 76) = *(v21 + 443);
        *(v24 + 16) = 0;
        fd_pwrite(*(v21 + 220), v24, 0x54uLL, 0);
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v50 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        *v45 = 0u;
        v25 = *__error();
        v26 = _SILogForLogForCategory(7);
        v27 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = fd_name(*(a1[1] + 220), v45, 0x100uLL);
          if (a2)
          {
            v29 = "sync";
          }

          else
          {
            v29 = "update";
          }

          v30 = (*(*a1 + 96))(a1);
          *buf = 136315650;
          v40 = v28;
          v41 = 2080;
          v42 = v29;
          v43 = 2048;
          v44 = v30;
          _os_log_impl(&dword_1C278D000, v26, v27, "%s complete %s map with count: %llu", buf, 0x20u);
        }

        *__error() = v25;
      }
    }

    v38 = 1;
    v31 = threadData[9 * v37 + 1] + 320 * v36;
    *(v31 + 312) = v13;
    v32 = *(v31 + 232);
    if (v32)
    {
      v32(*(v31 + 288));
    }

    dropThreadId(v37, 0, add_explicit + 1);
  }

  v33 = (a1[1] + 278);
  if (v38 == 1)
  {
    result = *v33;
  }

  else
  {
    *v33 = 22;
    result = 22;
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL dataMap<unsigned long long,true,true,false>::_data_map_needs_sync(uint64_t a1)
{
  v22 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v5 = v4;
  v6 = v3;
  v7 = HIDWORD(v3);
  v9 = v8;
  v10 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v11 = *(v10 + 312);
  v12 = *(v10 + 224);
  if (v12)
  {
    v12(*(v10 + 288));
  }

  v20 = v7;
  v21 = v6;
  v18 = v5;
  v19 = v9;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v17, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v18);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, v19);
    result = 0;
  }

  else
  {
    v14 = *(*(*(a1 + 8) + 307) + 16) == 0;
    v22 = 1;
    v15 = threadData[9 * v21 + 1] + 320 * v20;
    *(v15 + 312) = v11;
    v16 = *(v15 + 232);
    if (v16)
    {
      v16(*(v15 + 288));
    }

    dropThreadId(v21, 0, add_explicit + 1);
    result = v14;
  }

  if ((v22 & 1) == 0)
  {
    *(*(a1 + 8) + 278) = 22;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_get_data(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_2;
  }

  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v10 = v9;
  v11 = v8;
  v12 = HIDWORD(v8);
  v14 = v13;
  v15 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v24 = v12;
  v25 = v11;
  v22 = v10;
  v23 = v14;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v21, 2u);
    }

    *(v15 + 312) = v16;
    CIOnThreadCleanUpReset(v22);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, v23);
    v18 = 0;
  }

  else
  {
    v18 = (*(*a1 + 120))(a1, a2, a3);
    v26 = 1;
    v19 = threadData[9 * v25 + 1] + 320 * v24;
    *(v19 + 312) = v16;
    v20 = *(v19 + 232);
    if (v20)
    {
      v20(*(v19 + 288));
    }

    dropThreadId(v25, 0, add_explicit + 1);
  }

  if ((v26 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  result = v18;
  if (!v18)
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_get_data_entry_impl<true>(uint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4, char a5)
{
  v98 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if ((a5 & 1) == 0 && (*(*a2 + 104))(a2))
  {
LABEL_21:
    result = (*(*a2 + 112))(a2);
    goto LABEL_22;
  }

  v68 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a2[1], 0, add_explicit + 1);
  v12 = v11;
  v13 = v10;
  v14 = HIDWORD(v10);
  v16 = v15;
  v17 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v59 = *(v17 + 312);
  v18 = *(v17 + 224);
  if (v18)
  {
    v18(*(v17 + 288));
  }

  v66 = v14;
  v67 = v13;
  v64 = v12;
  v65 = v16;
  if (_setjmp(v17))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v17 + 312) = v59;
    CIOnThreadCleanUpReset(v64);
    dropThreadId(v67, 1, add_explicit + 1);
    result = CICleanUpReset(v67, v65);
    goto LABEL_18;
  }

  v20 = a2[1];
  v21 = v20;
  if (*(v20 + 264))
  {
    os_unfair_lock_lock((v20 + 260));
    v55 = a2[1];
    v56 = *(v55 + 264);
    if (v56)
    {
      bit_vector_set(v56, a3);
      v55 = a2[1];
    }

    os_unfair_lock_unlock((v55 + 260));
    v21 = a2[1];
  }

  v22 = (v21 + 323);
  v23 = *(v21 + 403);
  if (v23 <= a3 || (v24 = *(v21 + 395), (v24 + 1) <= 1))
  {
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
    *buf = 0u;
    v83 = 0u;
    v25 = *__error();
    v26 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v37 = a2[1];
      v38 = fd_name(*(v37 + 220), buf, 0x100uLL);
      *v70 = 136316418;
      v71 = "_data_map_get_offset_entry_impl";
      v72 = 1024;
      v73 = 362;
      v74 = 2048;
      v75 = a3;
      v76 = 2048;
      v77 = v23;
      v78 = 2048;
      v79 = v37;
      v80 = 2080;
      v81 = v38;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", v70, 0x3Au);
    }

    *__error() = v25;
    goto LABEL_15;
  }

  v30 = (v24 + 24 * a3);
  v31 = *v30;
  if (*v30 != -2)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v32 = v30[1];
    v69 = 1;
    if (v31 == -1)
    {
      if (!*v22)
      {
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
        *buf = 0u;
        v83 = 0u;
        v49 = *__error();
        v50 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v53 = a2[1];
          v54 = fd_name(*(v53 + 220), buf, 0x100uLL);
          *v70 = 136316162;
          v71 = "_data_map_get_data_entry";
          v72 = 1024;
          v73 = 425;
          v74 = 2048;
          v75 = -1;
          v76 = 2048;
          v77 = v53;
          v78 = 2080;
          v79 = v54;
          _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", v70, 0x30u);
        }

        *__error() = v49;
        fd_name(*(a2[1] + 220), buf, 0x100uLL);
        si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
        goto LABEL_15;
      }

      Value = CFDictionaryGetValue(*v22, a3);
      if (!Value)
      {
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
        *buf = 0u;
        v83 = 0u;
        v51 = *__error();
        v52 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v57 = a2[1];
          v58 = fd_name(*(v57 + 220), buf, 0x100uLL);
          *v70 = 136316162;
          v71 = "_data_map_get_data_entry";
          v72 = 1024;
          v73 = 419;
          v74 = 2048;
          v75 = -1;
          v76 = 2048;
          v77 = v57;
          v78 = 2080;
          v79 = v58;
          _os_log_error_impl(&dword_1C278D000, v52, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", v70, 0x30u);
        }

        *__error() = v51;
        fd_name(*(a2[1] + 220), buf, 0x100uLL);
        si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
        goto LABEL_15;
      }

      v40 = Value;
      v41 = CFDataGetLength(Value) - *(a2[1] + 216);
      v42 = &CFDataGetBytePtr(v40)[*(a2[1] + 216)];
      BytePtr = CFDataGetBytePtr(v40);
      v44 = *(a2[1] + 216);
      v45 = *(a2[1] + 216);
      memcpy(&v63, BytePtr, v44);
      v33 = v44;
      v36 = v41;
      v35 = v42;
      v34 = v45;
      goto LABEL_30;
    }

    dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a2, v31, v32, &v61, a3, &v69);
    if (v69)
    {
      v33 = *(a2[1] + 216);
      v34 = *(a2[1] + 216);
      v35 = v62;
      v36 = v61;
LABEL_30:
      v46 = v34;
      v47 = v35;
      v48 = v36;
      memcpy((a1 + 16), &v63, v33);
      *(a1 + 20) = v46;
      *a1 = v47;
      *(a1 + 8) = v48;
      *a4 = 1;
    }
  }

LABEL_15:
  v68 = 1;
  v27 = threadData[9 * v67 + 1] + 320 * v66;
  *(v27 + 312) = v59;
  v28 = *(v27 + 232);
  if (v28)
  {
    v28(*(v27 + 288));
  }

  result = dropThreadId(v67, 0, add_explicit + 1);
LABEL_18:
  if ((v68 & 1) == 0)
  {
    *a4 = 0;
    *(a2[1] + 278) = 22;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_get_extra_with_key(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v8 = 0;
  v104 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  __dst = 0;
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_47;
  }

  v62 = v9;
  v73 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v63 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v71 = v15;
  v72 = v14;
  v69 = v13;
  v70 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v88 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v88, 2u);
    }

    *(v18 + 312) = v63;
    CIOnThreadCleanUpReset(v69);
    dropThreadId(v72, 1, add_explicit + 1);
    CICleanUpReset(v72, v70);
    goto LABEL_44;
  }

  v64 = a2;
  v65 = a3;
  v20 = *(a1[1] + 371);
  v21 = v62 % v20;
  do
  {
    v22 = a1[1];
    v23 = *(v22 + 363);
    v24 = *(v23 + 8 * v21);
    if (!v24)
    {
      break;
    }

    if (*(v22 + 264))
    {
      os_unfair_lock_lock((v22 + 260));
      v48 = a1[1];
      v49 = *(v48 + 264);
      if (v49)
      {
        bit_vector_set(v49, v24);
        v48 = a1[1];
      }

      os_unfair_lock_unlock((v48 + 260));
      v24 = *(v23 + 8 * v21);
      v22 = a1[1];
    }

    v25 = v22 + 323;
    v26 = *(v25 + 72);
    v27 = *(v25 + 80);
    if (v24 >= v27 || (v26 + 1) <= 1)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
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
      *v88 = 0u;
      v89 = 0u;
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        log = v30;
        v36 = add_explicit;
        v37 = v4;
        v38 = a1[1];
        v39 = fd_name(*(v38 + 220), v88, 0x100uLL);
        *buf = 136316418;
        v77 = "_data_map_get_offset_entry_impl";
        v78 = 1024;
        v79 = 362;
        v80 = 2048;
        v81 = v24;
        v82 = 2048;
        v83 = v27;
        v84 = 2048;
        v85 = v38;
        v4 = v37;
        add_explicit = v36;
        v86 = 2080;
        v87 = v39;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v29;
      goto LABEL_18;
    }

    v32 = (v26 + 24 * v24);
    v33 = *v32;
    if (*v32 != -2 && v32[2] == v62)
    {
      v66 = 0;
      __s2 = 0;
      v68 = 0;
      v34 = v32[1];
      v75 = 1;
      if (v33 == -1)
      {
        if (!*v25)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
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
          *v88 = 0u;
          v89 = 0u;
          v44 = *__error();
          v45 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v50 = a1[1];
            v51 = fd_name(*(v50 + 220), v88, 0x100uLL);
            *buf = 136316162;
            v77 = "_data_map_get_data_entry";
            v78 = 1024;
            v79 = 425;
            v80 = 2048;
            v81 = -1;
            v82 = 2048;
            v83 = v50;
            v84 = 2080;
            v85 = v51;
            _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v44;
          fd_name(*(a1[1] + 220), v88, 0x100uLL);
          si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
          goto LABEL_18;
        }

        Value = CFDictionaryGetValue(*v25, v24);
        if (!Value)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
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
          *v88 = 0u;
          v89 = 0u;
          v46 = *__error();
          v47 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v52 = a1[1];
            v53 = fd_name(*(v52 + 220), v88, 0x100uLL);
            *buf = 136316162;
            v77 = "_data_map_get_data_entry";
            v78 = 1024;
            v79 = 419;
            v80 = 2048;
            v81 = -1;
            v82 = 2048;
            v83 = v52;
            v84 = 2080;
            v85 = v53;
            _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v46;
          fd_name(*(a1[1] + 220), v88, 0x100uLL);
          si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
          goto LABEL_18;
        }

        v41 = Value;
        LODWORD(v66) = CFDataGetLength(Value) - *(a1[1] + 216);
        v42 = v66;
        __s2 = &CFDataGetBytePtr(v41)[*(a1[1] + 216)];
        BytePtr = CFDataGetBytePtr(v41);
        memcpy(&v68, BytePtr, *(a1[1] + 216));
        v35 = v42;
      }

      else
      {
        dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v33, v34, &v66, v24, &v75);
        v35 = v66;
        if ((v75 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v35 == v65 && !memcmp(v64, __s2, v65))
      {
        v54 = add_explicit;
        v55 = *(a1[1] + 216);
        memcpy(&__dst, &v68, v55);
        v56 = v55;
        LODWORD(add_explicit) = v54;
        HIDWORD(__dst) = v56;
        *v4 = 1;
        break;
      }
    }

LABEL_18:
    v31 = 0;
    if (v21 + 1 != v20)
    {
      v31 = v21 + 1;
    }

    v21 = v31;
  }

  while (v31 != v62 % v20);
  v73 = 1;
  v57 = threadData[9 * v72 + 1] + 320 * v71;
  *(v57 + 312) = v63;
  v58 = *(v57 + 232);
  if (v58)
  {
    v58(*(v57 + 288));
  }

  dropThreadId(v72, 0, add_explicit + 1);
LABEL_44:
  if ((v73 & 1) == 0)
  {
    *v4 = 0;
    *(a1[1] + 278) = 22;
  }

  v8 = __dst;
LABEL_47:
  (*(*a1 + 112))(a1);
  v59 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_ids_get_locked(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned long long,false,true,false>::dm_hash(*(*(a1 + 8) + 282), a2, a3);

  return dataMap<unsigned long long,true,true,false>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6)
{
  v108 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = *(v8 + 216);
  v10 = *(v8 + 371);
  v78 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v65 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v76 = v15;
  v77 = v14;
  v74 = v13;
  v75 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v92 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v92, 2u);
    }

    *(v18 + 312) = v65;
    CIOnThreadCleanUpReset(v74);
    dropThreadId(v77, 1, add_explicit + 1);
    CICleanUpReset(v77, v75);
    v20 = 0;
    goto LABEL_42;
  }

  v21 = 0;
  v64 = a3;
  v22 = a3 % v10;
  v62 = v9 + a6;
  v63 = v9;
  v23 = v22;
  v24 = 0;
  do
  {
    v25 = v24;
    v26 = (*(a1 + 8) + 323);
    v27 = *(*(a1 + 8) + 363);
    v28 = *(v27 + 8 * v23);
    if (!v28)
    {
      break;
    }

    v29 = *(v27 + 8 * v23);
    v30 = *(*(a1 + 8) + 395);
    v31 = *(*(a1 + 8) + 403);
    if (v28 < v31 && (v30 + 1) > 1)
    {
      v36 = (v30 + 24 * v28);
      v37 = *v36;
      if (*v36 != -2 && v36[2] == v64)
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v38 = v36[1];
        v79 = 1;
        if (v37 == -1)
        {
          if (!*v26)
          {
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            *v92 = 0u;
            v93 = 0u;
            v47 = *__error();
            v48 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v51 = v21;
              v52 = *(a1 + 8);
              v53 = fd_name(*(v52 + 220), v92, 0x100uLL);
              *buf = 136316162;
              v81 = "_data_map_get_data_entry";
              v82 = 1024;
              v83 = 425;
              v84 = 2048;
              v85 = -1;
              v86 = 2048;
              v87 = v52;
              v21 = v51;
              v88 = 2080;
              v89 = v53;
              _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
            }

            *__error() = v47;
            fd_name(*(*(a1 + 8) + 220), v92, 0x100uLL);
            si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
            goto LABEL_16;
          }

          Value = CFDictionaryGetValue(*v26, v29);
          if (!Value)
          {
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            *v92 = 0u;
            v93 = 0u;
            v49 = *__error();
            v50 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v54 = v21;
              v55 = *(a1 + 8);
              v56 = fd_name(*(v55 + 220), v92, 0x100uLL);
              *buf = 136316162;
              v81 = "_data_map_get_data_entry";
              v82 = 1024;
              v83 = 419;
              v84 = 2048;
              v85 = -1;
              v86 = 2048;
              v87 = v55;
              v21 = v54;
              v88 = 2080;
              v89 = v56;
              _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
            }

            *__error() = v49;
            fd_name(*(*(a1 + 8) + 220), v92, 0x100uLL);
            si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
            goto LABEL_16;
          }

          v44 = Value;
          LODWORD(v71) = CFDataGetLength(Value) - *(*(a1 + 8) + 216);
          v45 = v71;
          v72 = &CFDataGetBytePtr(v44)[*(*(a1 + 8) + 216)];
          BytePtr = CFDataGetBytePtr(v44);
          memcpy(&v73, BytePtr, *(*(a1 + 8) + 216));
          v39 = v45;
LABEL_25:
          if (v62 == v39 && !memcmp(a5, &v72[v63], a6))
          {
            if (v25 < a4)
            {
              *(a2 + 8 * v25) = *(v27 + 8 * v23);
            }

            v25 = (v25 + 1);
          }

          goto LABEL_16;
        }

        dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v37, v38, &v71, v29, &v79);
        v39 = v71;
        if (v79)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      *v92 = 0u;
      v93 = 0u;
      v33 = *__error();
      v34 = _SILogForLogForCategory(v21);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        v40 = v21;
        v41 = *(a1 + 8);
        v42 = fd_name(*(v41 + 220), v92, 0x100uLL);
        *buf = 136316418;
        v81 = "_data_map_get_offset_entry_impl";
        v82 = 1024;
        v83 = 362;
        v84 = 2048;
        v85 = v29;
        v86 = 2048;
        v87 = v31;
        v88 = 2048;
        v89 = v41;
        v21 = v40;
        v90 = 2080;
        v91 = v42;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v33;
    }

LABEL_16:
    if (v23 + 1 == v10)
    {
      v35 = 0;
    }

    else
    {
      v35 = v23 + 1;
    }

    v23 = v35;
    v24 = v25;
  }

  while (v35 != v22);
  v78 = 1;
  v57 = threadData[9 * v77 + 1] + 320 * v76;
  *(v57 + 312) = v65;
  v58 = *(v57 + 232);
  if (v58)
  {
    v58(*(v57 + 288));
  }

  dropThreadId(v77, 0, add_explicit + 1);
  v20 = v25;
LABEL_42:
  result = v20;
  if ((v78 & 1) == 0)
  {
    result = 0;
    *(*(a1 + 8) + 278) = 22;
  }

  v60 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_ids_get(void *a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  locked_with_hash = dataMap<unsigned long long,true,true,false>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
  (*(*a1 + 112))(a1);
  return locked_with_hash;
}

CFIndex dataMap<unsigned long long,true,true,false>::data_map_id_get_with_key_noextra(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v61 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  v71 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v7 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v9 = v8;
  v10 = v7;
  v11 = HIDWORD(v7);
  v13 = v12;
  v14 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  v69 = v11;
  v70 = v10;
  v67 = v9;
  v68 = v13;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v85 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v85, 2u);
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset(v67);
    dropThreadId(v70, 1, add_explicit + 1);
    CICleanUpReset(v70, v68);
    v17 = 0;
    goto LABEL_13;
  }

  if (!(*(*a1 + 104))(a1))
  {
    __s1 = a2;
    __n = a3;
    v24 = *(a1[1] + 371);
    v25 = v61 % v24;
    while (1)
    {
      v26 = (a1[1] + 323);
      v27 = *(a1[1] + 363);
      v28 = *(v27 + 8 * v25);
      if (!v28)
      {
        break;
      }

      v29 = *(v27 + 8 * v25);
      v30 = *(a1[1] + 395);
      v31 = *(a1[1] + 403);
      if (v28 >= v31 || (v30 + 1) <= 1)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        *v85 = 0u;
        v86 = 0u;
        v33 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          log = v34;
          v41 = add_explicit;
          v42 = v15;
          v43 = a1[1];
          v44 = fd_name(*(v43 + 220), v85, 0x100uLL);
          *buf = 136316418;
          v74 = "_data_map_get_offset_entry_impl";
          v75 = 1024;
          v76 = 362;
          v77 = 2048;
          v78 = v29;
          v79 = 2048;
          v80 = v31;
          v81 = 2048;
          v82 = v43;
          v15 = v42;
          add_explicit = v41;
          v83 = 2080;
          v84 = v44;
          _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v33;
        goto LABEL_25;
      }

      v36 = (v30 + 24 * v28);
      v37 = *v36;
      if (*v36 != -2 && v36[2] == v61)
      {
        v64 = 0;
        __s2 = 0;
        v66 = 0;
        v38 = v36[1];
        v72 = 1;
        if (v37 == -1)
        {
          if (!*v26)
          {
            v49 = v15;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            *v85 = 0u;
            v86 = 0u;
            v50 = *__error();
            v51 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v54 = a1[1];
              v55 = fd_name(*(v54 + 220), v85, 0x100uLL);
              *buf = 136316162;
              v74 = "_data_map_get_data_entry";
              v75 = 1024;
              v76 = 425;
              v77 = 2048;
              v78 = -1;
              v79 = 2048;
              v80 = v54;
              v81 = 2080;
              v82 = v55;
              _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
            }

            *__error() = v50;
            fd_name(*(a1[1] + 220), v85, 0x100uLL);
            si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
            goto LABEL_47;
          }

          Value = CFDictionaryGetValue(*v26, v29);
          if (!Value)
          {
            v49 = v15;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            *v85 = 0u;
            v86 = 0u;
            v52 = *__error();
            v53 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v56 = a1[1];
              v57 = fd_name(*(v56 + 220), v85, 0x100uLL);
              *buf = 136316162;
              v74 = "_data_map_get_data_entry";
              v75 = 1024;
              v76 = 419;
              v77 = 2048;
              v78 = -1;
              v79 = 2048;
              v80 = v56;
              v81 = 2080;
              v82 = v57;
              _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
            }

            *__error() = v52;
            fd_name(*(a1[1] + 220), v85, 0x100uLL);
            si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
LABEL_47:
            v15 = v49;
            goto LABEL_25;
          }

          v46 = Value;
          LODWORD(v64) = CFDataGetLength(Value) - *(a1[1] + 216);
          v47 = v15;
          v48 = v64;
          __s2 = &CFDataGetBytePtr(v46)[*(a1[1] + 216)];
          CFDataGetBytePtr(v46);
          v40 = 1;
          v39 = v48;
          v15 = v47;
        }

        else
        {
          dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v37, v38, &v64, v29, &v72);
          v39 = v64;
          v40 = v72;
        }

        if ((v40 & 1) != 0 && v39 == __n && !memcmp(__s1, __s2, __n))
        {
          v18 = v15;
          v17 = *(v27 + 8 * v25);
          goto LABEL_9;
        }
      }

LABEL_25:
      if (v25 + 1 == v24)
      {
        v35 = 0;
      }

      else
      {
        v35 = v25 + 1;
      }

      v25 = v35;
      if (v35 == v61 % v24)
      {
        v18 = v15;
        v17 = 0;
        goto LABEL_9;
      }
    }
  }

  v18 = v15;
  v17 = 0;
LABEL_9:
  v19 = a1[1];
  if (*(v19 + 264))
  {
    os_unfair_lock_lock((v19 + 260));
    v58 = a1[1];
    v59 = *(v58 + 264);
    if (v59)
    {
      bit_vector_set(v59, v17);
      v58 = a1[1];
    }

    os_unfair_lock_unlock((v58 + 260));
  }

  v71 = 1;
  v20 = threadData[9 * v70 + 1] + 320 * v69;
  *(v20 + 312) = v18;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v70, 0, add_explicit + 1);
LABEL_13:
  if ((v71 & 1) == 0)
  {
    v17 = 0;
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

CFIndex dataMap<unsigned long long,true,true,false>::data_map_id_get_with_key(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v103 = *MEMORY[0x1E69E9840];
  v8 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    v9 = 0;
    goto LABEL_48;
  }

  v61 = v8;
  __s1 = a2;
  v73 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v62 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v71 = v15;
  v72 = v14;
  v69 = v13;
  v70 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v87 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v87, 2u);
    }

    *(v18 + 312) = v62;
    CIOnThreadCleanUpReset(v69);
    dropThreadId(v72, 1, add_explicit + 1);
    CICleanUpReset(v72, v70);
    v9 = 0;
    goto LABEL_46;
  }

  __n = a3;
  v65 = a4;
  v20 = *(a1[1] + 371);
  v21 = v61 % v20;
  while (1)
  {
    v22 = (a1[1] + 323);
    v23 = *(a1[1] + 363);
    v24 = *(v23 + 8 * v21);
    if (!v24)
    {
      break;
    }

    v25 = *(v23 + 8 * v21);
    v26 = *(a1[1] + 395);
    v27 = *(a1[1] + 403);
    if (v24 >= v27 || (v26 + 1) <= 1)
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      *v87 = 0u;
      v88 = 0u;
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v37 = add_explicit;
        v38 = a1[1];
        v39 = fd_name(*(v38 + 220), v87, 0x100uLL);
        *buf = 136316418;
        v76 = "_data_map_get_offset_entry_impl";
        v77 = 1024;
        v78 = 362;
        v79 = 2048;
        v80 = v25;
        v81 = 2048;
        v82 = v27;
        v83 = 2048;
        v84 = v38;
        add_explicit = v37;
        v85 = 2080;
        v86 = v39;
        _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v29;
      goto LABEL_18;
    }

    v32 = (v26 + 24 * v24);
    v33 = *v32;
    if (*v32 != -2 && v32[2] == v61)
    {
      v66 = 0;
      __s2 = 0;
      v68 = 0;
      v34 = v32[1];
      v74 = 1;
      if (v33 == -1)
      {
        if (!*v22)
        {
          v45 = add_explicit;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          *v87 = 0u;
          v88 = 0u;
          v46 = *__error();
          v47 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v50 = a1[1];
            v51 = fd_name(*(v50 + 220), v87, 0x100uLL);
            *buf = 136316162;
            v76 = "_data_map_get_data_entry";
            v77 = 1024;
            v78 = 425;
            v79 = 2048;
            v80 = -1;
            v81 = 2048;
            v82 = v50;
            v83 = 2080;
            v84 = v51;
            _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v46;
          fd_name(*(a1[1] + 220), v87, 0x100uLL);
          si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
          goto LABEL_41;
        }

        Value = CFDictionaryGetValue(*v22, v25);
        if (!Value)
        {
          v45 = add_explicit;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          *v87 = 0u;
          v88 = 0u;
          v48 = *__error();
          v49 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v52 = a1[1];
            v53 = fd_name(*(v52 + 220), v87, 0x100uLL);
            *buf = 136316162;
            v76 = "_data_map_get_data_entry";
            v77 = 1024;
            v78 = 419;
            v79 = 2048;
            v80 = -1;
            v81 = 2048;
            v82 = v52;
            v83 = 2080;
            v84 = v53;
            _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v48;
          fd_name(*(a1[1] + 220), v87, 0x100uLL);
          si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
LABEL_41:
          add_explicit = v45;
          goto LABEL_18;
        }

        v41 = Value;
        LODWORD(v66) = CFDataGetLength(Value) - *(a1[1] + 216);
        v42 = add_explicit;
        v43 = v66;
        __s2 = &CFDataGetBytePtr(v41)[*(a1[1] + 216)];
        BytePtr = CFDataGetBytePtr(v41);
        memcpy(&v68, BytePtr, *(a1[1] + 216));
        v36 = 1;
        v35 = v43;
        add_explicit = v42;
      }

      else
      {
        dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v33, v34, &v66, v25, &v74);
        v35 = v66;
        v36 = v74;
      }

      if ((v36 & 1) != 0 && v35 == __n && !memcmp(__s1, __s2, __n) && !memcmp(&v68, v65, *(a1[1] + 216)))
      {
        v9 = *(v23 + 8 * v21);
        goto LABEL_43;
      }
    }

LABEL_18:
    if (v21 + 1 == v20)
    {
      v31 = 0;
    }

    else
    {
      v31 = v21 + 1;
    }

    v21 = v31;
    if (v31 == v61 % v20)
    {
      v9 = 0;
      goto LABEL_43;
    }
  }

  v9 = 0;
LABEL_43:
  v73 = 1;
  v54 = threadData[9 * v72 + 1] + 320 * v71;
  *(v54 + 312) = v62;
  v55 = *(v54 + 232);
  if (v55)
  {
    v55(*(v54 + 288));
  }

  dropThreadId(v72, 0, add_explicit + 1);
LABEL_46:
  if ((v73 & 1) == 0)
  {
    v9 = 0;
    *(a1[1] + 278) = 22;
  }

LABEL_48:
  v56 = a1[1];
  if (*(v56 + 264))
  {
    os_unfair_lock_lock((v56 + 260));
    v59 = a1[1];
    v60 = *(v59 + 264);
    if (v60)
    {
      bit_vector_set(v60, v9);
      v59 = a1[1];
    }

    os_unfair_lock_unlock((v59 + 260));
  }

  (*(*a1 + 112))(a1);
  v57 = *MEMORY[0x1E69E9840];
  return v9;
}

unint64_t dataMap<unsigned long long,true,true,false>::_data_map_get_data_id(uint64_t *a1, unsigned int a2, char *a3, uint64_t a4, int a5)
{
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), &a3[a2], a4 - a2);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v30 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v35 = v15;
  v36 = v14;
  v33 = v13;
  v34 = v17;
  if (!_setjmp(v18))
  {
    bucket_entry = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, *(a1[1] + 403));
    if (!bucket_entry)
    {
      updated = 0;
LABEL_18:
      v24 = threadData[9 * v36 + 1] + 320 * v35;
      *(v24 + 312) = v30;
      v25 = *(v24 + 232);
      if (v25)
      {
        v25(*(v24 + 288));
      }

      dropThreadId(v36, 0, add_explicit + 1);
      goto LABEL_21;
    }

    if (*bucket_entry)
    {
      if (*bucket_entry >= *(a1[1] + 403))
      {
        updated = 0;
      }

      else
      {
        updated = *bucket_entry;
      }

      goto LABEL_18;
    }

    if (!a5 || (v22 = bucket_entry, v23 = *(a1[1] + 403), (*(*a1 + 112))(a1), (*(*a1 + 336))(a1)))
    {
LABEL_17:
      updated = 0;
      goto LABEL_18;
    }

    v26 = v23;
    v27 = *(a1[1] + 403);
    if (v23 == v27)
    {
LABEL_23:
      updated = dataMap<unsigned long long,true,true,false>::_data_map_push_to_update_set<true>(a1, v26, v9, a3, a4, v22);
      goto LABEL_18;
    }

    v28 = 0;
    v29 = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, v27);
    if (v29)
    {
      v28 = *v29;
      if (*v29 >= *(a1[1] + 403))
      {
        goto LABEL_17;
      }

      if (!v28)
      {
        v26 = *(a1[1] + 403);
        v22 = v29;
        goto LABEL_23;
      }

      dataMap<unsigned long long,false,true,false>::_data_map_set_seen_id(a1, v28);
    }

    updated = v28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v18 + 312) = v30;
  CIOnThreadCleanUpReset(v33);
  dropThreadId(v36, 1, add_explicit + 1);
  CICleanUpReset(v36, v34);
  updated = 0;
LABEL_21:
  (*(*a1 + 112))(a1);
  return updated;
}

const UInt8 *dataMap<unsigned long long,true,true,false>::data_map_get_data_locked(uint64_t a1, uint64_t key, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = (*(a1 + 8) + 323);
  v6 = *(*(a1 + 8) + 395);
  v7 = *(*(a1 + 8) + 403);
  if (v7 <= key || (v6 + 1) <= 1)
  {
    v63 = 0u;
    v64 = 0u;
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
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 8);
      v22 = fd_name(*(v21 + 220), &v49, 0x100uLL);
      *buf = 136316418;
      v38 = "_data_map_get_offset_entry_impl";
      v39 = 1024;
      v40 = 362;
      v41 = 2048;
      v42 = key;
      v43 = 2048;
      v44 = v7;
      v45 = 2048;
      v46 = v21;
      v47 = 2080;
      v48 = v22;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
    }

    v11 = __error();
    result = 0;
    *v11 = v9;
    goto LABEL_8;
  }

  v14 = (v6 + 24 * key);
  v15 = *v14;
  if (*v14 == -2)
  {
    goto LABEL_26;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v17 = v14[1];
  v36 = 1;
  if (v15 == -1)
  {
    if (*v5)
    {
      Value = CFDictionaryGetValue(*v5, key);
      if (Value)
      {
        v20 = Value;
        LODWORD(v33) = CFDataGetLength(Value) - *(*(a1 + 8) + 216);
        v34 = &CFDataGetBytePtr(v20)[*(*(a1 + 8) + 216)];
        CFDataGetBytePtr(v20);
        if (!a3)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v63 = 0u;
      v64 = 0u;
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
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v25 = *__error();
      v26 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 8);
        v30 = fd_name(*(v29 + 220), &v49, 0x100uLL);
        *buf = 136316162;
        v38 = "_data_map_get_data_entry";
        v39 = 1024;
        v40 = 419;
        v41 = 2048;
        v42 = -1;
        v43 = 2048;
        v44 = v29;
        v45 = 2080;
        v46 = v30;
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
      }

      *__error() = v25;
      fd_name(*(*(a1 + 8) + 220), &v49, 0x100uLL);
      si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
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
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v23 = *__error();
      v24 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 8);
        v28 = fd_name(*(v27 + 220), &v49, 0x100uLL);
        *buf = 136316162;
        v38 = "_data_map_get_data_entry";
        v39 = 1024;
        v40 = 425;
        v41 = 2048;
        v42 = -1;
        v43 = 2048;
        v44 = v27;
        v45 = 2080;
        v46 = v28;
        _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
      }

      *__error() = v23;
      fd_name(*(*(a1 + 8) + 220), &v49, 0x100uLL);
      si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
    }

LABEL_26:
    result = 0;
    goto LABEL_8;
  }

  dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v15, v17, &v33, key, &v36);
  if ((v36 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
LABEL_13:
    *a3 = v33;
  }

LABEL_14:
  v18 = *(a1 + 8);
  if (*(v18 + 264))
  {
    os_unfair_lock_lock((v18 + 260));
    v31 = *(a1 + 8);
    v32 = *(v31 + 264);
    if (v32)
    {
      bit_vector_set(v32, key);
      v31 = *(a1 + 8);
    }

    os_unfair_lock_unlock((v31 + 260));
  }

  result = v34;
LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_unlock(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    v2 = 0;
  }

  else
  {
    v2 = db_rwlock_unlock_unknown(v1);
    if (v2)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v2;
        if (v2 == -1)
        {
          v7 = *__error();
        }

        v8 = 136315650;
        v9 = "_data_map_unlock";
        v10 = 1024;
        v11 = 186;
        v12 = 1024;
        v13 = v7;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_unlock error %d", &v8, 0x18u);
      }

      *__error() = v5;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_rdlock(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    lock = 0;
  }

  else
  {
    lock = db_read_lock(v1);
    if (lock)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = lock;
        if (lock == -1)
        {
          v7 = *__error();
        }

        v8 = 136315650;
        v9 = "_data_map_rdlock";
        v10 = 1024;
        v11 = 175;
        v12 = 1024;
        v13 = v7;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_rdlock error %d", &v8, 0x18u);
      }

      *__error() = v5;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return lock;
}

void dataMap<unsigned long long,true,true,false>::data_map_make_read_only_impl<true>()
{
  v0 = __si_assert_copy_extra_332();
  __message_assert_336(v0, v1, v2, v3, v4, v5, v6, v7, "dataMap.hpp");
  free(v0);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_commit_shadow_complete(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(v2 + 307);
    if (*(v4 + 16) == 2)
    {
      *(v4 + 16) = 1;
      fd_pwrite(*(v2 + 220), v4, 0x54uLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_commit_shadow(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!*(v2 + 278) && *(*(v2 + 307) + 16) == 2)
  {
    fd_sync(*(v2 + 228), 0);
    v2 = *(a1 + 8);
  }

  fd_release(*(v2 + 228));
  v3 = *(a1 + 8);
  *(v3 + 228) = 0;
  return *(v3 + 278);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_shadow(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(v2 + 307);
    if (*(v4 + 16) == 2)
    {
      sibling_with_suffix_protected = *(v2 + 228);
      if (!sibling_with_suffix_protected)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v2 + 220), ".shadow", 514);
        v6 = *(a1 + 8);
        *(v6 + 228) = sibling_with_suffix_protected;
        v4 = *(v6 + 307);
      }

      fd_pwrite(sibling_with_suffix_protected, v4, 0x54uLL, 0);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_commit_sync(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(v2 + 307);
    if (*(v4 + 16) == 1)
    {
      return 0;
    }

    else
    {
      *(v4 + 16) = 2;
      fd_pwrite(*(v2 + 220), v4, 0x54uLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      return *(*(a1 + 8) + 278);
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_flush(uint64_t *a1)
{
  if ((*(*a1 + 208))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v22 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v6 = v5;
  v7 = v4;
  v8 = HIDWORD(v4);
  v10 = v9;
  v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v20 = v8;
  v21 = v7;
  v18 = v6;
  v19 = v10;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v17, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v18);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, v19);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(*(a1[1] + 307) + 16))
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = (*(*a1 + 224))(a1, 1);
    }

    v22 = 1;
    v15 = threadData[9 * v21 + 1] + 320 * v20;
    *(v15 + 312) = v12;
    v16 = *(v15 + 232);
    if (v16)
    {
      v16(*(v15 + 288));
    }

    dropThreadId(v21, 0, add_explicit + 1);
  }

  if ((v22 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 216))(a1);
  return v14;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_commit(uint64_t *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 208))(a1))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v29 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v6 = v5;
  v7 = v4;
  v8 = HIDWORD(v4);
  v10 = v9;
  v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  LODWORD(v36[0]) = v7;
  *buf = v8;
  v27 = v6;
  v28 = v10;
  if (!_setjmp(v11))
  {
    v15 = *(*(a1[1] + 307) + 16);
    if (v15 == 1)
    {
      goto LABEL_13;
    }

    if (v15)
    {
      v17 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v16 = (*(*a1 + 224))(a1, 1);
    if (!v16)
    {
      v16 = (*(*a1 + 232))(a1, 1);
      if (!v16)
      {
LABEL_13:
        v16 = (*(*a1 + 56))(a1);
        if (!v16)
        {
          v16 = (*(*a1 + 64))(a1);
          if (!v16)
          {
            v16 = (*(*a1 + 72))(a1);
          }
        }
      }
    }

    v17 = v16;
LABEL_18:
    v29 = 1;
    v18 = threadData[9 * LODWORD(v36[0]) + 1] + 320 * *buf;
    *(v18 + 312) = v12;
    v19 = *(v18 + 232);
    if (v19)
    {
      v19(*(v18 + 288));
    }

    dropThreadId(LODWORD(v36[0]), 0, add_explicit + 1);
    v14 = v17;
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v26 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v26, 2u);
  }

  *(v11 + 312) = v12;
  CIOnThreadCleanUpReset(v27);
  dropThreadId(LODWORD(v36[0]), 1, add_explicit + 1);
  CICleanUpReset(LODWORD(v36[0]), v28);
  v14 = 0xFFFFFFFFLL;
LABEL_21:
  if ((v29 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  memset(v36, 0, sizeof(v36));
  v20 = *__error();
  v21 = _SILogForLogForCategory(7);
  v22 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = fd_name(*(a1[1] + 220), v36, 0x100uLL);
    v24 = (*(*a1 + 96))(a1);
    *buf = 136315650;
    v31 = v23;
    v32 = 2080;
    v33 = "commit";
    v34 = 2048;
    v35 = v24;
    _os_log_impl(&dword_1C278D000, v21, v22, "%s complete %s with count: %llu", buf, 0x20u);
  }

  *__error() = v20;
  (*(*a1 + 216))(a1);
  result = v14;
LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL dataMap<unsigned long long,true,true,false>::data_map_validate(uint64_t a1)
{
  v2 = (*(*a1 + 104))(a1);
  if (!v2)
  {
    (*(*a1 + 112))(a1);
  }

  return v2 == 0;
}

void dataMap<unsigned long long,true,true,false>::data_map_destroy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    makeThreadId();
    v2 = *(a1 + 8);
    if ((*(v2 + 283) + 1) >= 2)
    {
      v75 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v15 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v2, 0, add_explicit + 1);
      v17 = v16;
      v18 = v15;
      v19 = HIDWORD(v15);
      v21 = v20;
      v22 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
      v23 = *(v22 + 312);
      v24 = *(v22 + 224);
      if (v24)
      {
        v24(*(v22 + 288));
      }

      v73 = v19;
      v74 = v18;
      v71 = v17;
      v72 = v21;
      if (_setjmp(v22))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v70 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v70, 2u);
        }

        *(v22 + 312) = v23;
        CIOnThreadCleanUpReset(v71);
        dropThreadId(v74, 1, add_explicit + 1);
        CICleanUpReset(v74, v72);
        v25 = 0;
      }

      else
      {
        v55 = *(*(*(a1 + 8) + 283) + 88);
        v75 = 1;
        v56 = threadData[9 * v74 + 1] + 320 * v73;
        *(v56 + 312) = v23;
        v57 = *(v56 + 232);
        if (v57)
        {
          v57(*(v56 + 288));
        }

        dropThreadId(v74, 0, add_explicit + 1);
        v25 = v55;
      }

      v58 = v25;
      if ((v75 & 1) == 0)
      {
        v58 = *(*(a1 + 8) + 291);
      }

      munmap(*(*(a1 + 8) + 283), v58);
      v59 = *(a1 + 8);
      *(v59 + 283) = -1;
      fd_release(*(v59 + 220));
      v60 = *(a1 + 8);
      *(v60 + 220) = 0;
      v61 = *(v60 + 228);
      if (v61)
      {
        fd_release(v61);
        v62 = *(a1 + 8);
        *(v62 + 228) = 0;
        v63 = v62;
      }

      else
      {
        v63 = v60;
      }

      v54 = v63;
    }

    else
    {
      v3 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v2, 0, v3 + 1);
      v6 = v5;
      v7 = v4;
      v8 = HIDWORD(v4);
      v10 = v9;
      v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
      v12 = *(v11 + 312);
      v13 = *(v11 + 224);
      if (v13)
      {
        v13(*(v11 + 288));
      }

      v73 = v8;
      v74 = v7;
      v71 = v6;
      v72 = v10;
      if (_setjmp(v11))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v70 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v70, 2u);
        }

        *(v11 + 312) = v12;
        CIOnThreadCleanUpReset(v71);
        dropThreadId(v74, 1, v3 + 1);
        CICleanUpReset(v74, v72);
      }

      else
      {
        v26 = *(a1 + 8);
        v27 = *(v26 + 307);
        if (v27 && !*(v27 + 16))
        {
          if (*(v26 + 274) == 1)
          {
            v28 = *(v26 + 363);
            v29 = 8 * *(v26 + 371);
            fd_system_status_stall_if_busy();
            msync(v28, v29, 4);
            _fd_unlink_with_origin(*(*(a1 + 8) + 236), 0);
            munmap(*(*(a1 + 8) + 363), *(*(a1 + 8) + 355));
            v30 = *(a1 + 8);
            *(v30 + 363) = -1;
            v26 = v30;
          }

          v31 = v26;
          if (*(v26 + 275) == 1)
          {
            v32 = *(v26 + 395);
            v33 = 24 * *(v26 + 403);
            fd_system_status_stall_if_busy();
            msync(v32, v33, 4);
            munmap(*(*(a1 + 8) + 395), *(*(a1 + 8) + 387));
            v34 = (*(a1 + 8) + 379);
            v34[2] = -1;
            fd_truncate(*v34, 24 * v34[3]);
            v31 = *(a1 + 8);
          }

          v35 = (v31 + 403);
          if (v35[7])
          {
            v36 = v35[9];
            v37 = v35[7];
            if (v36 + 1 >= 2)
            {
              v38 = 24 * *v35;
              fd_system_status_stall_if_busy();
              msync(v36, v38, 4);
              munmap(*(*(a1 + 8) + 475), *(*(a1 + 8) + 387));
              v39 = (*(a1 + 8) + 459);
              v39[2] = -1;
              v37 = *v39;
            }

            fd_truncate(v37, 0);
            _fd_unlink_with_origin(*(*(a1 + 8) + 459), 0);
            fd_release(*(*(a1 + 8) + 459));
            *(*(a1 + 8) + 459) = 0;
          }
        }

        v40 = threadData[9 * v74 + 1] + 320 * v73;
        *(v40 + 312) = v12;
        v41 = *(v40 + 232);
        if (v41)
        {
          v41(*(v40 + 288));
        }

        dropThreadId(v74, 0, v3 + 1);
      }

      v42 = *(a1 + 8);
      v43 = *(v42 + 307);
      if (v43)
      {
        free(v43);
        v44 = *(a1 + 8);
        *(v44 + 307) = 0;
        v42 = v44;
      }

      fd_release(*(v42 + 220));
      v45 = *(a1 + 8);
      *(v45 + 220) = 0;
      v46 = *(v45 + 395);
      if (v46 != -1)
      {
        munmap(v46, *(v45 + 387));
        v47 = *(a1 + 8);
        *(v47 + 387) = 0;
        *(v47 + 395) = -1;
        v45 = v47;
      }

      fd_release(*(v45 + 379));
      v48 = *(a1 + 8);
      *(v48 + 379) = 0;
      v49 = *(v48 + 323);
      if (v49)
      {
        CFRelease(v49);
        v48 = *(a1 + 8);
      }

      v50 = v48;
      v51 = (v48 + 355);
      v52 = v51[1];
      if (v52 != -1)
      {
        munmap(v52, *v51);
        v50 = *(a1 + 8);
        *(v50 + 355) = 0;
        *(v50 + 363) = -1;
      }

      fd_release(*(v50 + 236));
      v53 = *(a1 + 8);
      *(v53 + 236) = 0;
      v54 = v53;
    }

    v64 = *(v54 + 228);
    if (v64)
    {
      fd_release(v64);
      v65 = *(a1 + 8);
      *(v65 + 228) = 0;
      v54 = v65;
    }

    v66 = *(v54 + 264);
    v67 = v54;
    if (v66)
    {
      v68 = v66[2];
      if (v68)
      {
        CFRelease(v68);
      }

      free(v66);
      v69 = *(a1 + 8);
      *(v69 + 264) = 0;
      v67 = v69;
    }

    if ((v67[4].__opaque[12] & 1) == 0)
    {
      db_rwlock_destroy(v67);
      v67 = *(a1 + 8);
    }

    free(v67);
  }
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_init(uint64_t (***a1)(void, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v11 = a5;
  return (**a1)(a1, v9, a3, a4, a5, a6, a7, a8);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_init_with_ctx(uint64_t *a1, uint64_t a2)
{
  v148 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*a2, sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  *(v12 + 216) = 0;
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v127 = v9;
  v128 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __str, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
    result = 0;
    goto LABEL_107;
  }

  v122 = add_explicit;
  v125 = v13;
  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 20);
  bzero(__str, 0x400uLL);
  v20 = malloc_type_calloc(1uLL, 0x5F9uLL, 0x10A0040251D4789uLL);
  a1[1] = v20;
  *(v20 + 63) = *(a2 + 72);
  *(v20 + 451) = *(a2 + 24);
  *(v20 + 244) = *(a2 + 56);
  *(v20 + 65) = 0;
  v20[277] = BYTE1(v19) & 1;
  v20[276] = (v19 & 8) != 0;
  *(v20 + 283) = -1;
  *(v20 + 307) = 0;
  *(v20 + 395) = -1;
  *(v20 + 363) = -1;
  if ((v19 & 8) == 0)
  {
    *(v20 + 26) = 0;
    *(v20 + 11) = 0u;
    *(v20 + 12) = 0u;
    *(v20 + 9) = 0u;
    *(v20 + 10) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 8) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 6) = 0u;
    *(v20 + 3) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *v20 = 0u;
    pthread_mutex_init(v20, 0);
    v20 = a1[1];
  }

  *(v20 + 467) = 0;
  *(v20 + 459) = 0;
  *(v20 + 475) = 0;
  v21 = (a1[1] + 475);
  *v21 = -1;
  v22 = *(a2 + 40);
  if (!v22)
  {
    v22 = si_get_contentindex_for_id;
  }

  *(v21 + 12) = v22;
  v23 = *(a2 + 48);
  if (!v23)
  {
    v23 = ContentIndexGetDataForId;
  }

  *(v21 + 20) = v23;
  makeThreadId();
  v124 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v24 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, v124 + 1);
  v26 = v25;
  v27 = v24;
  v28 = HIDWORD(v24);
  v30 = v29;
  v31 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
  v123 = *(v31 + 312);
  v32 = *(v31 + 224);
  if (v32)
  {
    v32(*(v31 + 288));
  }

  *v129 = v27;
  v126 = v28;
  if (_setjmp(v31))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v31 + 312) = v123;
    CIOnThreadCleanUpReset(v26);
    dropThreadId(*v129, 1, v124 + 1);
    CICleanUpReset(*v129, v30);
    v33 = v125;
    v34 = v122;
    v108 = *__error();
    v109 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      v113 = fd_realpath(*(a1[1] + 220), __str);
      *&buf[4] = "data_map_init_with_ctx";
      v114 = "";
      *buf = 136315650;
      if (v113)
      {
        v114 = v113;
      }

      *&buf[12] = 1024;
      *&buf[14] = 1496;
      *&buf[18] = 2080;
      *&buf[20] = v114;
      _os_log_error_impl(&dword_1C278D000, v109, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", buf, 0x1Cu);
    }

    *__error() = v108;
    goto LABEL_103;
  }

  if (!v17 || (v35 = strlen(v17), v16 == -1) || v35 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
LABEL_31:
      v44 = v45;
      v33 = v125;
      v34 = v122;
LABEL_91:
      *__error() = v44;
      goto LABEL_92;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1111;
    v92 = "%s:%d: param error";
    goto LABEL_67;
  }

  if ((v19 & 2) != 0)
  {
    v36 = 0;
  }

  else
  {
    v36 = ((v19 & 1) << 10) | 0x20000202;
  }

  snprintf(__str, 0x400uLL, "%s.header", v17);
  v37 = fd_create_protected(v16, __str, v36, 3u);
  *(a1[1] + 220) = v37;
  *(a1[1] + 299) = fd_lseek(v37, 0, 2);
  snprintf(__str, 0x400uLL, "%s.offsets", v17);
  v38 = fd_create_protected(v16, __str, v36, 3u);
  *(a1[1] + 379) = v38;
  *(a1[1] + 331) = fd_lseek(v38, 0, 2);
  snprintf(__str, 0x400uLL, "%s.buckets", v17);
  v39 = fd_create_protected(v16, __str, 514, 3u);
  *(a1[1] + 236) = v39;
  v40 = fd_lseek(v39, 0, 2);
  v41 = a1[1];
  *(v41 + 347) = v40;
  if ((v19 & 1) == 0)
  {
    v34 = v122;
    if (*(v41 + 299) <= 0x53uLL)
    {
      v42 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v115 = *(a1[1] + 299);
        *buf = 136315650;
        *&buf[4] = "data_map_init_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 1322;
        *&buf[18] = 2048;
        *&buf[20] = v115;
        _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: invalid header size %ld", buf, 0x1Cu);
      }

      v44 = v42;
      v33 = v125;
      goto LABEL_91;
    }

    v63 = malloc_type_calloc(1uLL, 0x54uLL, 0x10000405C84B8F7uLL);
    v64 = a1[1];
    *(v64 + 307) = v63;
    v65 = (v19 >> 2) & 1;
    if ((v19 & 0x80) != 0)
    {
      sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v64 + 220), ".shadow", 0);
      v64 = a1[1];
      if (sibling_with_suffix_protected)
      {
        v67 = sibling_with_suffix_protected;
        v65 = (v19 >> 2) & 1;
        if (!fd_copyfile(sibling_with_suffix_protected, *(v64 + 220), 0))
        {
          v65 = 0;
        }

        fd_release(v67);
        v64 = a1[1];
      }
    }

    v33 = v125;
    if (fd_pread(*(v64 + 220), *(v64 + 307), 0x54uLL, 0) == 84)
    {
      v68 = (a1[1] + 307);
      v69 = *(*v68 + 28);
      v68[12] = v69;
      fd_truncate(v68[9], 24 * v69);
      fd_truncate(*(a1[1] + 379), *(a1[1] + 331));
      v70 = a1[1];
      v71 = (v70 + 307);
      v72 = *(v70 + 331);
      *(v70 + 339) = v72 / 0x18;
      v73 = *(v70 + 307);
      *(v70 + 371) = *(v73 + 20);
      *(v70 + 427) = *(v73 + 60);
      *(v70 + 443) = *(v73 + 76);
      *(v70 + 282) = *(v73 + 8) < 9u;
      if (v65)
      {
        v74 = *(v70 + 403);
        v75 = *(v73 + 52);
        if (v74 < v75)
        {
LABEL_92:
          v96 = 0;
          goto LABEL_93;
        }

        if (v74 != v75)
        {
          if ((v19 & 2) == 0)
          {
            *(v73 + 28) = v75;
            *(v73 + 20) = 0;
          }

          v71[12] = v75;
          v71[8] = 0;
        }
      }

      v76 = MEMORY[0x1E69E9AC8];
      v77 = (v72 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      if (v77 <= 0x100000)
      {
        v78 = 0x100000;
      }

      else
      {
        v78 = v77;
      }

      v79 = fd_mmap(v71[9]);
      v80 = a1[1];
      *(v80 + 395) = v79;
      if (v79 == -1)
      {
        v84 = *__error();
        v91 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_90;
        }

        *buf = 136315394;
        *&buf[4] = "data_map_init_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 1398;
        v88 = "%s:%d: offset fd_mmap error";
      }

      else
      {
        *(v80 + 387) = v78;
        if (((*(v80 + 347) + *v76 - 1) & -*v76) <= 0x100000)
        {
          v81 = 0x100000;
        }

        else
        {
          v81 = (*(v80 + 347) + *v76 - 1) & -*v76;
        }

        v82 = fd_mmap(*(v80 + 236));
        v83 = a1[1];
        *(v83 + 363) = v82;
        if (v82 != -1)
        {
          v58 = v83;
          *(v83 + 355) = v81;
          v62 = (*(v83 + 307) + 28);
          if (*v62)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v84 = *__error();
        v91 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_90;
        }

        *buf = 136315394;
        *&buf[4] = "data_map_init_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 1407;
        v88 = "%s:%d: offset fd_mmap error";
      }
    }

    else
    {
      v84 = *__error();
      v91 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315394;
      *&buf[4] = "data_map_init_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 1341;
      v88 = "%s:%d: header pread error";
    }

LABEL_88:
    v89 = v91;
    v90 = 18;
    goto LABEL_89;
  }

  v33 = v125;
  v34 = v122;
  if (fd_truncate(*(v41 + 220), 84) == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1241;
    v88 = "%s:%d: fd_truncate error";
    goto LABEL_88;
  }

  v47 = malloc_type_calloc(1uLL, 0x54uLL, 0x10000405C84B8F7uLL);
  v48 = (a1[1] + 299);
  *v48 = 84;
  v48[1] = v47;
  v47[3] = v18;
  v47[4] = 0;
  *v47 = 0x4461746150EELL;
  v47[2] = 14;
  v49 = MEMORY[0x1E69E9AC8];
  if (fd_truncate(v48[10], 24 * (*MEMORY[0x1E69E9AC8] / 0x18uLL)) == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1267;
    v88 = "%s:%d: fd_truncate error";
    goto LABEL_88;
  }

  v50 = fd_mmap(*(a1[1] + 379));
  v51 = a1[1];
  *(v51 + 395) = v50;
  if (v50 == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1272;
    v88 = "%s:%d: offsets fd_mmap error";
    goto LABEL_88;
  }

  *(v51 + 387) = 0x100000;
  v52 = *v49;
  v53 = *v49 / 0x18uLL;
  *(v51 + 331) = 24 * v53;
  *(v51 + 339) = v53;
  v54 = v52 & 0xFFFFFFFFFFFFFFF8;
  if (fd_truncate(*(v51 + 236), v52 & 0xFFFFFFFFFFFFFFF8) == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1282;
    v88 = "%s:%d: fd_truncate error";
    goto LABEL_88;
  }

  v55 = fd_mmap(*(a1[1] + 236));
  v56 = a1[1];
  v57 = (v56 + 307);
  *(v56 + 363) = v55;
  if (v55 == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1288;
    v88 = "%s:%d: hash fd_mmap error";
    goto LABEL_88;
  }

  v58 = v56;
  *(v56 + 347) = v54;
  *(v56 + 355) = 0x100000;
  v59 = *v49 >> 3;
  v60 = *v57;
  *(v60 + 20) = v59;
  v57[8] = v59;
  v61 = v57[11];
  *v61 = 0;
  v61[2] = 0;
  v62 = (v60 + 28);
LABEL_59:
  *v62 = 1;
  *(v58 + 403) = 1;
LABEL_60:
  if (*(v58 + 339) < *(v58 + 403))
  {
    v84 = *__error();
    v85 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v86 = *(a1[1] + 339);
      v87 = *(a1[1] + 403);
      *buf = 136315906;
      *&buf[4] = "data_map_init_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 1431;
      *&buf[18] = 2048;
      *&buf[20] = v86;
      *&buf[28] = 2048;
      *&buf[30] = v87;
      v88 = "%s:%d: invalid offset size 1 - %ld %llu";
LABEL_63:
      v89 = v85;
      v90 = 38;
LABEL_89:
      _os_log_error_impl(&dword_1C278D000, v89, OS_LOG_TYPE_ERROR, v88, buf, v90);
    }

LABEL_90:
    v44 = v84;
    goto LABEL_91;
  }

  v93 = *(v58 + 307);
  if (*v93 != 0x4461746150EELL)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1440;
    v88 = "%s:%d: invalid offset signature";
    goto LABEL_88;
  }

  v94 = *(v93 + 8);
  if (v94 <= 0xD)
  {
    v84 = *__error();
    v95 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "data_map_init_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 1450;
      *&buf[18] = 1024;
      *&buf[20] = v94;
      v88 = "%s:%d: invalid version %d";
      v89 = v95;
      v90 = 24;
      goto LABEL_89;
    }

    goto LABEL_90;
  }

  if (*(v93 + 12) != v18)
  {
    v84 = *__error();
    v117 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    v118 = *(*(a1[1] + 307) + 12);
    *buf = 136315906;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1454;
    *&buf[18] = 1024;
    *&buf[20] = v118;
    *&buf[24] = 1024;
    *&buf[26] = v18;
    v88 = "%s:%d: invalid extra_size %d %d";
    v89 = v117;
    v90 = 30;
    goto LABEL_89;
  }

  *(v58 + 216) = v18;
  if (*(v58 + 299) <= 0x53uLL)
  {
    v84 = *__error();
    v85 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    v116 = *(a1[1] + 299);
    *buf = 136315906;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1462;
    *&buf[18] = 2048;
    *&buf[20] = v116;
    *&buf[28] = 2048;
    *&buf[30] = 84;
    v88 = "%s:%d: invalid header size %llu < %lu";
    goto LABEL_63;
  }

  if ((v19 & 0x80) != 0 || !*(v93 + 16) || (v119 = *(v58 + 371)) == 0 || *(v58 + 347) < (8 * v119))
  {
    if (dataMap<unsigned long long,true,true,false>::_data_map_rehash(a1))
    {
      v120 = *(a1[1] + 347);
      v121 = 8 * *(a1[1] + 371);
      goto LABEL_123;
    }

    v45 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1475;
    v92 = "%s:%d: re-build hash error";
LABEL_67:
    _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, v92, buf, 0x12u);
    goto LABEL_31;
  }

  v121 = 8 * v119;
  v120 = *(v58 + 347);
LABEL_123:
  if (v120 < v121)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1482;
    v92 = "%s:%d: invalid hash size 1";
    goto LABEL_67;
  }

  v96 = 1;
  v33 = v125;
  v34 = v122;
LABEL_93:
  v97 = threadData[9 * *v129 + 1] + 320 * v126;
  *(v97 + 312) = v123;
  v98 = *(v97 + 232);
  if (v98)
  {
    v98(*(v97 + 288));
  }

  dropThreadId(*v129, 0, v124 + 1);
  if (v96)
  {
    v99 = a1[1];
    if (v99)
    {
      v100 = (v99 + 403);
      v101 = *v100 - 1;
      v100[1] = v101;
      v100[2] = v101;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      v102 = *__error();
      v103 = _SILogForLogForCategory(7);
      v104 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v103, v104))
      {
        v105 = fd_name(*(a1[1] + 220), buf, 0x100uLL);
        v106 = (*(*a1 + 96))(a1);
        *v129 = 136315394;
        v130 = v105;
        v131 = 2048;
        v132 = v106;
        _os_log_impl(&dword_1C278D000, v103, v104, "Opened map %s with counts: %llu", v129, 0x16u);
      }

      *__error() = v102;
    }

    v107 = 1;
    goto LABEL_104;
  }

LABEL_103:
  (*(*a1 + 16))(a1);
  a1[1] = 0;
  v107 = 0;
LABEL_104:
  v110 = threadData[9 * v128 + 1] + 320 * v127;
  *(v110 + 312) = v33;
  v111 = *(v110 + 232);
  if (v111)
  {
    v111(*(v110 + 288));
  }

  dropThreadId(v128, 0, v34 + 1);
  result = v107;
LABEL_107:
  v112 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t dataMap<unsigned long long,false,true,false>::data_map_insert_with_id(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v60 = 0;
  v8 = a1[1];
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(v8 + 282), &a2[*(v8 + 216)], a3 - *(v8 + 216));
  v10 = *(v8 + 256);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  v51 = a4;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v14 = v13;
  v15 = v12;
  v16 = HIDWORD(v12);
  v18 = v17;
  v19 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v50 = *(v19 + 312);
  v20 = *(v19 + 224);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  v58 = v16;
  v59 = v15;
  v56 = v14;
  v57 = v18;
  if (!_setjmp(v19))
  {
    bucket_entry = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
    *buf = 0;
    v54 = 0;
    v55 = 0;
    if (bucket_entry)
    {
      v21 = *bucket_entry;
      if (*bucket_entry)
      {
LABEL_24:
        v26 = threadData[9 * v59 + 1] + 320 * v58;
        *(v26 + 312) = v50;
        v27 = *(v26 + 232);
        if (v27)
        {
          v27(*(v26 + 288));
        }

        dropThreadId(v59, 0, add_explicit + 1);
        goto LABEL_27;
      }

      v23 = bucket_entry;
      *buf = a3;
      v54 = a2;
      (*(*a1 + 112))(a1);
      if ((*(*a1 + 336))(a1))
      {
LABEL_12:
        v21 = 0;
        goto LABEL_24;
      }

      if (!*v23 && *(a1[1] + 256) <= v10)
      {
LABEL_17:
        if (a3 >> 28)
        {
          v28 = 5;
        }

        else if (a3 >> 21)
        {
          v28 = 4;
        }

        else
        {
          if (!(a3 >> 14))
          {
            if (a3 < 0x80)
            {
              v25 = 1;
            }

            else
            {
              v25 = 2;
            }

            goto LABEL_32;
          }

          v28 = 3;
        }

        v25 = v28;
LABEL_32:
        v29 = *(a1[1] + 4539);
        if (dataMap<unsigned long long,false,true,false>::_data_map_grow(a1, (v25 + a3), &v60))
        {
          v30 = v29 <= v51 ? v51 : v29;
          if (dataMap<unsigned long long,false,true,false>::_data_map_grow_offsets(a1, &v60, v30))
          {
            v31 = a1[1];
            if ((*(v31 + 275) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              v31 = a1[1];
              *(v31 + 275) = 1;
            }

            v32 = (*(v31 + 4531) + 16 * v51);
            *v32 = *(v31 + 331);
            v32[1] = v9;
            if ((*(v31 + 273) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              v31 = a1[1];
              *(v31 + 273) = 1;
            }

            *v32 = data_entry_store<unsigned long long,false,true,false>(v31 + 315, buf);
            v33 = a1[1];
            if ((*(v33 + 274) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              v34 = a1[1];
              *(v34 + 274) = 1;
              v33 = v34;
            }

            v35 = v33;
            if ((v60 & 4) != 0)
            {
              v36 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, v51, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
              v35 = a1[1];
              v23 = v36;
            }

            v37 = v35 + 4096;
            *v23 = v51;
            v38 = *(v35 + 4547);
            if (v38 < v51)
            {
              *(v35 + 4547) = v51;
              v38 = v51;
            }

            v39 = v38;
            v40 = *(v37 + 459) + 1;
            *(v37 + 459) = v40;
            if (v39 < v40)
            {
              v41 = __si_assert_copy_extra_332();
              __message_assert_336(v41, v42, v43, v44, v45, v46, v47, v48, "dataMap.ipp");
              free(v41);
              if (__valid_fs(-1))
              {
                v49 = 2989;
              }

              else
              {
                v49 = 3072;
              }

              *v49 = -559038737;
              abort();
            }

            if (v39 == v40)
            {
              *(v37 + 443) = v39 + 1;
            }

            v21 = v51;
            goto LABEL_24;
          }
        }

        goto LABEL_12;
      }

      v24 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
      if (v24)
      {
        v21 = *v24;
        v23 = v24;
        if (*v24)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    v21 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v19 + 312) = v50;
  CIOnThreadCleanUpReset(v56);
  dropThreadId(v59, 1, add_explicit + 1);
  CICleanUpReset(v59, v57);
  v21 = 0;
LABEL_27:
  (*(*a1 + 112))(a1);
  return v21;
}

uint64_t dataMap<unsigned long long,false,true,false>::dm_hash(char a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1)
  {
    LODWORD(result) = LegacyHash(a2, a3);
  }

  else
  {
    LODWORD(result) = commonHash(a3, a2);
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(uint64_t a1, unint64_t a2, unint64_t a3, const void *a4, size_t a5, unint64_t a6)
{
  v84 = *MEMORY[0x1E69E9840];
  v51 = a6;
  if (a3 < a6)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(*(a1 + 8) + 4507);
    v12 = a2 % v11;
    v50 = v11;
    while (v12 >= v11)
    {
      v30 = 0;
      v13 = v12;
LABEL_33:
      if (v10 & 1 | (v13 != v50))
      {
        goto LABEL_39;
      }

      result = 0;
      v10 = 1;
      v11 = v12;
      v12 = 0;
      if (v30)
      {
        goto LABEL_43;
      }
    }

    v13 = v12;
    while (1)
    {
      v14 = *(a1 + 8);
      v15 = *(v14 + 4499);
      v16 = *(v15 + 8 * v13);
      if (v16)
      {
        v17 = v16 == a3;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
LABEL_42:
        result = v15 + 8 * v13;
        goto LABEL_43;
      }

      if (!a3)
      {
        v18 = *(v14 + 4531);
        if (v16 >= a6 || (v18 + 1) <= 1)
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v39 = *__error();
          v40 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
LABEL_41:
            v42 = __error();
            result = 0;
            *v42 = v39;
            goto LABEL_43;
          }

          v44 = *(a1 + 8);
          v45 = fd_name(*(v44 + 220), &v68, 0x100uLL);
          *buf = 136316418;
          v57 = "_data_map_get_offset_entry_impl";
          v58 = 1024;
          v59 = 362;
          v60 = 2048;
          v61 = v16;
          v62 = 2048;
          v63 = v51;
          v64 = 2048;
          v65 = v44;
          v66 = 2080;
          v67 = v45;
          v38 = v40;
LABEL_45:
          _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
          goto LABEL_41;
        }

        v20 = (v18 + 16 * v16);
        v21 = *v20;
        if (*v20 == 1)
        {
          goto LABEL_39;
        }

        if (v20[1] == a2)
        {
          v52 = 0;
          __s2 = 0;
          v54 = 0;
          v55 = 0;
          v22 = *(v14 + 5619) + v21;
          if (v22 >= *(v14 + 331))
          {
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v23 = *__error();
            v29 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v32 = *(a1 + 8);
              v46 = *(v32 + 331);
              v47 = v32;
              v33 = fd_name(*(v32 + 220), &v68, 0x100uLL);
              *buf = 136316418;
              v57 = "_data_map_get_data_entry";
              v58 = 1024;
              v59 = 397;
              v60 = 2048;
              v61 = v22;
              v62 = 2048;
              v63 = v46;
              v64 = 2048;
              v65 = v47;
              v66 = 2080;
              v67 = v33;
              v27 = v29;
              v28 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_31:
              _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x3Au);
            }

LABEL_22:
            *__error() = v23;
            v9 = 1;
LABEL_23:
            a6 = v51;
            goto LABEL_24;
          }

          dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v22, &v52, &v55);
          if (v55 == 1)
          {
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v23 = *__error();
            v24 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = fd_name(*(*(a1 + 8) + 220), &v68, 0x100uLL);
              v26 = *(*(a1 + 8) + 331);
              *buf = 136316418;
              v57 = "_data_map_get_data_entry";
              v58 = 1024;
              v59 = 393;
              v60 = 2080;
              v61 = v25;
              v62 = 2048;
              v63 = v22;
              v64 = 2048;
              v65 = v26;
              v66 = 2048;
              v67 = v52;
              v27 = v24;
              v28 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
              goto LABEL_31;
            }

            goto LABEL_22;
          }

          if (v52 != a5)
          {
            goto LABEL_23;
          }

          v31 = memcmp(a4, __s2, a5);
          a6 = v51;
          if (!v31)
          {
            goto LABEL_42;
          }
        }
      }

LABEL_24:
      ++v13;
      v30 = v9;
      if ((v9 & 1) != 0 || v13 >= v11)
      {
        goto LABEL_33;
      }
    }
  }

  if (a3)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v39 = *__error();
    v35 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v36 = *(a1 + 8);
    v37 = fd_name(*(v36 + 220), &v68, 0x100uLL);
    *buf = 136316418;
    v57 = "_data_map_get_bucket_entry";
    v58 = 1024;
    v59 = 514;
    v60 = 2048;
    v61 = a3;
    v62 = 2048;
    v63 = v51;
    v64 = 2048;
    v65 = v36;
    v66 = 2080;
    v67 = v37;
    v38 = v35;
    goto LABEL_45;
  }

LABEL_39:
  result = 0;
LABEL_43:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_grow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = dataMap<unsigned long long,false,true,false>::_data_map_grow_offsets(a1, a3, *(*(a1 + 8) + 4539));
  v7 = *(a1 + 8);
  if (!v6 || *(v7 + 278))
  {
    goto LABEL_3;
  }

  v10 = *(v7 + 4539) - *(v7 + 4563);
  if (v10 >= 2 * *(v7 + 4507) / 3uLL || v10 < 2 * *(v7 + 4571))
  {
    v11 = dataMap<unsigned long long,false,true,false>::_data_map_rehash(a1);
    v7 = *(a1 + 8);
    if (!v11)
    {
      goto LABEL_3;
    }

    *a3 |= 4u;
  }

  v12 = a2 + *(v7 + 331) + 8;
  if (v12 <= *(v7 + 323))
  {
    return 1;
  }

  if (_storageWindowsSetFileSize((v7 + 315), (v12 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    *a3 |= 1u;
    return 1;
  }

  v7 = *(a1 + 8);
LABEL_3:
  v8 = (v7 + 278);
  result = 0;
  if (!*v8)
  {
    *v8 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_grow_offsets(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 278))
  {
    goto LABEL_2;
  }

  v6 = (v3 + 4475);
  if (*v6 > a3)
  {
    return 1;
  }

  v9 = (*MEMORY[0x1E69E9AC8] + 16 * a3 + 15) & -*MEMORY[0x1E69E9AC8];
  v10 = fd_truncate(v6[5], v9);
  v3 = *(a1 + 8);
  if (v10 != -1)
  {
    *(v3 + 4467) = v9;
    v11 = *(v3 + 4523);
    if (v9 <= v11)
    {
LABEL_9:
      *(v3 + 4475) = v9 >> 4;
      *a2 |= 2u;
      return 1;
    }

    v12 = 2 * v11;
    munmap(*(v3 + 4531), v11);
    v13 = *(a1 + 8);
    *(v13 + 4523) = 0;
    v14 = fd_mmap(*(v13 + 4515));
    v3 = *(a1 + 8);
    *(v3 + 4531) = v14;
    if (v14 != -1)
    {
      *(v3 + 4523) = v12;
      goto LABEL_9;
    }
  }

LABEL_2:
  v4 = (v3 + 278);
  result = 0;
  if (!*v4)
  {
    *v4 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_dirty(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 307);
  if (*(v2 + 16))
  {
    v3 = result;
    *(v2 + 16) = 0;
    fd_pwrite(*(v1 + 220), v2, 0x5CuLL, 0);
    v4 = *(*(v3 + 8) + 220);

    return fd_sync(v4, 0);
  }

  return result;
}

unint64_t data_entry_store<unsigned long long,false,true,false>(uint64_t a1, unsigned int *a2)
{
  if (*a2 < 0x80)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (*a2 >> 14)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (*a2 >> 21)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  if (*a2 >> 28)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 + *a2;
  v9 = *(a1 + 16);
  v10 = v9 + v8;
  if (v9 + v8 < *(a1 + 8))
  {
    goto LABEL_14;
  }

  if (_storageWindowsExpandBacking(a1, v8))
  {
    v9 = *(a1 + 16);
    v10 = v9 + v8;
LABEL_14:
    *(a1 + 16) = v10;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v11 = _windowsResolvePtr(a1, v9, v8);
  v12 = *a2;
  v13 = *a2 >> 28;
  if (v13)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = (v12 >> 14) | 0x80;
    v11[3] = (v12 >> 21) | 0x80;
    v11[4] = v13;
    v14 = 5;
  }

  else if (v12 >= 0x200000)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = (v12 >> 14) | 0x80;
    v11[3] = v12 >> 21;
    v14 = 4;
  }

  else if (v12 >= 0x4000)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = v12 >> 14;
    v14 = 3;
  }

  else if (v12 >= 0x80)
  {
    *v11 = v12 | 0x80;
    v11[1] = v12 >> 7;
    v14 = 2;
  }

  else
  {
    *v11 = v12;
    v14 = 1;
  }

  memcpy(&v11[v14], *(a2 + 1), *a2);
  return v9;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_rehash(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  *(v2 + 4571) = 0;
  v3 = *(v2 + 4539) - *(v2 + 4563);
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 4539);
    v9 = *(v7 + 4563);
    v10 = *(v7 + 4507);
    *buf = 134219008;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 1024;
    *&buf[26] = v3;
    *&buf[30] = 1024;
    LODWORD(v53) = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "rehash new %p max id: %d deletes: %d count: %d hash_size: %d", buf, 0x24u);
  }

  *__error() = v4;
  v11 = *(a1 + 8);
  v12 = *(v11 + 4499);
  v13 = 8 * *(v11 + 4507);
  fd_system_status_stall_if_busy();
  msync(v12, v13, 4);
  if (fd_truncate(*(*(a1 + 8) + 236), 0) == -1)
  {
    goto LABEL_26;
  }

  v14 = 2 * v3;
  if ((2 * v3) <= *MEMORY[0x1E69E9AC8] >> 3)
  {
    v14 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v15 = *(a1 + 8);
  *(v15 + 4507) = v14;
  v16 = 8 * v14;
  if (fd_truncate(*(v15 + 236), 8 * v14) == -1)
  {
    goto LABEL_26;
  }

  v17 = *(a1 + 8);
  if ((*(v17 + 274) & 1) == 0)
  {
    dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
    v17 = *(a1 + 8);
    *(v17 + 274) = 1;
  }

  *(v17 + 4483) = v16;
  v18 = *(v17 + 4491);
  if (v16 > v18)
  {
    v19 = v17 + 4096;
    v20 = v18;
    do
    {
      v21 = v20;
      v20 *= 2;
    }

    while (v21 < v16);
    munmap(*(v19 + 403), v18);
    v22 = *(a1 + 8);
    *(v22 + 4491) = 0;
    *(v22 + 4499) = -1;
    v23 = fd_mmap(*(v22 + 236));
    v17 = *(a1 + 8);
    *(v17 + 4499) = v23;
    if (v23 == -1)
    {
      goto LABEL_26;
    }

    *(v17 + 4491) = v21;
  }

  ++*(v17 + 256);
  v24 = *(v17 + 4539);
  if (v24 < 2)
  {
LABEL_22:
    result = 1;
    goto LABEL_29;
  }

  v25 = 0;
  v26 = 1;
  while (1)
  {
    v27 = *(v17 + 4531);
    if ((v27 + 1) <= 1)
    {
      break;
    }

    v28 = v27 + v25;
    if (*(v28 + 16) != 1)
    {
      bucket_entry = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, *(v28 + 24), v26, 0, 0, v24);
      if (!bucket_entry || *bucket_entry)
      {
        goto LABEL_26;
      }

      *bucket_entry = v26;
      v17 = *(a1 + 8);
    }

    ++v26;
    v24 = *(v17 + 4539);
    v25 += 16;
    if (v26 >= v24)
    {
      goto LABEL_22;
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
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
  memset(buf, 0, sizeof(buf));
  v31 = *__error();
  v32 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v38 = *(a1 + 8);
    v39 = fd_name(*(v38 + 220), buf, 0x100uLL);
    v40 = 136316418;
    v41 = "_data_map_get_offset_entry_impl";
    v42 = 1024;
    v43 = 362;
    v44 = 2048;
    v45 = v26;
    v46 = 2048;
    v47 = v24;
    v48 = 2048;
    v49 = v38;
    v50 = 2080;
    v51 = v39;
    _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v40, 0x3Au);
  }

  *__error() = v31;
LABEL_26:
  v33 = *__error();
  v34 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v37 = *(a1 + 8);
    *buf = 136315650;
    *&buf[4] = "_data_map_rehash";
    *&buf[12] = 1024;
    *&buf[14] = 645;
    *&buf[18] = 2048;
    *&buf[20] = v37;
    _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", buf, 0x1Cu);
  }

  v35 = __error();
  result = 0;
  *v35 = v33;
LABEL_29:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(uint64_t a1, unint64_t a2, unsigned int *a3, _BYTE *a4)
{
  v8 = _windowsResolvePtr(*(a1 + 8) + 315, a2, 4);
  v9 = *(a1 + 8);
  v10 = *v8;
  if ((v10 & 0x80) == 0)
  {
    v11 = 1;
    goto LABEL_8;
  }

  v12 = *(v9 + 331);
  if (v12 <= 1)
  {
    goto LABEL_7;
  }

  v13 = v8[1];
  if ((v8[1] & 0x80000000) == 0)
  {
    v10 = v10 & 0x7F | (v13 << 7);
    v11 = 2;
    goto LABEL_8;
  }

  if (v12 == 2)
  {
    goto LABEL_7;
  }

  v15 = v8[2];
  if ((v8[2] & 0x80000000) == 0)
  {
    v11 = 3;
    v10 = ((v13 & 0x7F) << 7) | (v15 << 14) | v10 & 0x7F;
    goto LABEL_8;
  }

  if (v12 <= 3)
  {
    goto LABEL_7;
  }

  v16 = v8[3];
  if (v8[3] < 0)
  {
    if (v12 != 4)
    {
      v18 = v8[4];
      if (v18 < 0)
      {
        if (__valid_fs(-1))
        {
          v19 = __si_assert_copy_extra_332();
          v20 = v19;
          v21 = "";
          if (v19)
          {
            v21 = v19;
          }

          si_analytics_log_2752("%s:%u: failed assertion '%s' %s readVInt32_boundschecked: exceeds max size for uint32_t", "VIntUtils.h", 389, "(b4 & 0x80) == 0", v21);
          free(v20);
          v22 = 2816;
        }

        else
        {
          v22 = 3072;
        }

        *v22 = -559038737;
        abort();
      }

      v17 = ((v16 & 0x7F) << 21) | (v18 << 28) | ((v15 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
      v11 = 5;
      goto LABEL_19;
    }

LABEL_7:
    v11 = 0;
    v10 = 0;
    *a4 = 1;
    goto LABEL_8;
  }

  v17 = ((v15 & 0x7F) << 14) | (v16 << 21) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
  v11 = 4;
LABEL_19:
  v10 = v17;
LABEL_8:
  *a3 = v10;
  result = _windowsResolvePtr(v9 + 315, a2, v11 + v10);
  if (v11 + *a3 <= *(*(a1 + 8) + 331))
  {
    *(a3 + 1) = result + v11;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_data_for_offset_locked(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v5 = *(a1 + 8);
  v6 = *(v5 + 5619) + a2;
  if (v6 >= *(v5 + 331))
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
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
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 8);
      v18 = *(v17 + 331);
      v19 = fd_name(*(v17 + 220), &v36, 0x100uLL);
      *buf = 136316418;
      v25 = "_data_map_get_data_entry";
      v26 = 1024;
      v27 = 397;
      v28 = 2048;
      v29 = v6;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = v17;
      v34 = 2080;
      v35 = v19;
      v12 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      goto LABEL_12;
    }

LABEL_6:
    v13 = __error();
    result = 0;
    *v13 = v8;
    goto LABEL_10;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v6, &v20, &v23);
  if (v23 == 1)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
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
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = fd_name(*(*(a1 + 8) + 220), &v36, 0x100uLL);
      v11 = *(*(a1 + 8) + 331);
      *buf = 136316418;
      v25 = "_data_map_get_data_entry";
      v26 = 1024;
      v27 = 393;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = v6;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v20;
      v12 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_12:
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v12, buf, 0x3Au);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v15 = *(*(a1 + 8) + 216);
  if (a4)
  {
    *a4 = v20 - v15;
  }

  result = v21 + v15;
LABEL_10:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL dataMap<unsigned long long,false,true,false>::data_map_is_empty(void *a1)
{
  memset(&v8, 0, sizeof(v8));
  if (fd_stat(*(a1[1] + 236), &v8))
  {
    v2 = 1;
  }

  else
  {
    v2 = v8.st_size == 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (!fd_stat(*(a1[1] + 220), &v8) && v8.st_size != 0)
  {
    return 0;
  }

  if (!fd_stat(*(a1[1] + 4515), &v8) && v8.st_size != 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 272))(a1);
  return fd_stat(v5, &v8) || v8.st_size == 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_mprotect_storage(uint64_t a1, int a2)
{
  _windowsResolvePtr(*(a1 + 8) + 315, 4uLL, 4);
  storageWindowsProtect(*(a1 + 8) + 315, a2);
  return 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_collect_complete(int a1, int a2, uint64_t a3, const char *a4, const char *a5)
{
  _rename_prefix_suffix(a2, a4 + 268, ".offsets", a4, a5);
  _rename_prefix_suffix(a2, a4 + 268, ".data", v7, v8);

  return _rename_prefix_suffix(a2, a4 + 268, ".header", v9, v10);
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_defer_block(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 4587);
  if (v3)
  {
    return v3(*(v2 + 244));
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_data_offset_locked(uint64_t a1, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 4539);
  v6 = *(v4 + 4531);
  if (v5 > a2 && (v6 + 1) > 1)
  {
    v10 = *(v6 + 16 * a2);
    if (v10 == 1)
    {
      v10 = 0;
    }

    else if (*(v4 + 264))
    {
      os_unfair_lock_lock((v4 + 260));
      v13 = *(a1 + 8);
      v14 = *(v13 + 264);
      if (v14)
      {
        bit_vector_set(v14, a2);
        v13 = *(a1 + 8);
      }

      os_unfair_lock_unlock((v13 + 260));
    }
  }

  else
  {
    memset(v29, 0, sizeof(v29));
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 8);
      v16 = fd_name(*(v15 + 220), v29, 0x100uLL);
      v17 = 136316418;
      v18 = "_data_map_get_offset_entry_impl";
      v19 = 1024;
      v20 = 362;
      v21 = 2048;
      v22 = a2;
      v23 = 2048;
      v24 = v5;
      v25 = 2048;
      v26 = v15;
      v27 = 2080;
      v28 = v16;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v17, 0x3Au);
    }

    v10 = 0;
    *__error() = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v13 = 0;
  v6 = *(*(a1 + 8) + 277);
  asprintf(&v13, "%s%s", a2, ".buckets");
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(a1 + 8) + 236), v13, 514, v7);
  *a3 = sibling_protected;
  if (sibling_protected)
  {
    fd_copyfile(*(*(a1 + 8) + 236), sibling_protected, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".header");
  v9 = fd_create_sibling_protected(*(*(a1 + 8) + 220), v13, 514, v7);
  *(a3 + 24) = v9;
  if (v9)
  {
    fd_copyfile(*(*(a1 + 8) + 220), v9, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".offsets");
  v10 = fd_create_sibling_protected(*(*(a1 + 8) + 4515), v13, 514, v7);
  *(a3 + 8) = v10;
  if (v10)
  {
    fd_copyfile(*(*(a1 + 8) + 4515), v10, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".data");
  v11 = fd_create_sibling_protected(*(*(a1 + 8) + 315), v13, 514, v7);
  *(a3 + 16) = v11;
  if (v11)
  {
    fd_copyfile(*(*(a1 + 8) + 315), v11, 1);
  }

  free(v13);
  return 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_wrlock(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    v2 = 0;
  }

  else
  {
    v2 = _db_write_lock(v1);
    if (v2)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v2;
        if (v2 == -1)
        {
          v7 = *__error();
        }

        v8 = 136315650;
        v9 = "_data_map_wrlock";
        v10 = 1024;
        v11 = 164;
        v12 = 1024;
        v13 = v7;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_wrlock error %d", &v8, 0x18u);
      }

      *__error() = v5;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void *dataMap<unsigned long long,false,true,false>::data_map_copy_deleted_ids(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 && (v2 = v1 + 4096, *(v2 + 467)))
  {
    v4 = *(v2 + 443);
    v5 = bit_vector_create(v4);
    if (v4 >= 2)
    {
      v6 = 1;
      v7 = 16;
      do
      {
        v8 = *(a1 + 8);
        v9 = *(v8 + 4539);
        v10 = *(v8 + 4531);
        if (v6 < v9 && (v10 + 1) > 1)
        {
          if (*(v10 + v7) != 1)
          {
            goto LABEL_13;
          }
        }

        else
        {
          memset(v30, 0, sizeof(v30));
          v12 = *__error();
          v13 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 8);
            v15 = fd_name(*(v14 + 220), v30, 0x100uLL);
            *buf = 136316418;
            v19 = "_data_map_get_offset_entry_impl";
            v20 = 1024;
            v21 = 362;
            v22 = 2048;
            v23 = v6;
            v24 = 2048;
            v25 = v9;
            v26 = 2048;
            v27 = v14;
            v28 = 2080;
            v29 = v15;
            _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
          }

          *__error() = v12;
        }

        bit_vector_set(v5, v6);
LABEL_13:
        ++v6;
        v7 += 16;
      }

      while (v4 != v6);
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_collect(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  v118 = *MEMORY[0x1E69E9840];
  if (!*(a1[1] + 264))
  {
    v14 = 0;
    goto LABEL_13;
  }

  (*(*a1 + 336))(a1);
  v8 = *(a1[1] + 264);
  if ((*(*a1 + 96))(a1) <= a2)
  {
    goto LABEL_10;
  }

  v9 = (*(*a1 + 96))(a1);
  if (v9 <= a2)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v119.length = *(a1[1] + 4539) - a2;
  v119.location = a2;
  FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(v8 + 16), v119, 0);
  if (FirstIndexOfBit < a2)
  {
    goto LABEL_10;
  }

  v12 = FirstIndexOfBit;
  if (FirstIndexOfBit >= *(a1[1] + 4539) || FirstIndexOfBit > v10)
  {
    goto LABEL_10;
  }

  v87 = a3;
  v17 = 16 * FirstIndexOfBit;
  v18 = v10 + 1;
  while (1)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_80:
      v71 = __si_assert_copy_extra_332();
      __message_assert_336(v71, v72, v73, v74, v75, v76, v77, v78, "bit_vector.h");
      free(v71);
      if (__valid_fs(-1))
      {
        v79 = 2989;
      }

      else
      {
        v79 = 3072;
      }

      *v79 = -559038737;
      abort();
    }

    if (*v8 > v12 && CFBitVectorGetBitAtIndex(*(v8 + 16), v12))
    {
      goto LABEL_23;
    }

    v19 = a1[1];
    v20 = *(v19 + 4531);
    v21 = *(v19 + 4539);
    if (v12 < v21 && (v20 + 1) > 1)
    {
      break;
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    memset(v104, 0, sizeof(v104));
    v23 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v32 = a1[1];
      v33 = fd_name(*(v32 + 220), v104, 0x100uLL);
      *buf = 136316418;
      v93 = "_data_map_get_offset_entry_impl";
      v94 = 1024;
      v95 = 362;
      v96 = 2048;
      v97 = v12;
      v98 = 2048;
      v99 = v21;
      v100 = 2048;
      v101 = v32;
      v102 = 2080;
      v103 = v33;
      v30 = v24;
      v31 = "%s:%d: invalid data id %llu max %llu %p %s";
      goto LABEL_31;
    }

LABEL_22:
    *__error() = v23;
LABEL_23:
    ++v12;
    v17 += 16;
    if (v18 == v12)
    {
      goto LABEL_10;
    }
  }

  v25 = *(v20 + v17);
  if (v25 < 2)
  {
    goto LABEL_23;
  }

  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v26 = *(v19 + 5619) + v25;
  if (v26 >= *(v19 + 331))
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    memset(v104, 0, sizeof(v104));
    v23 = *__error();
    v34 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v86 = v23;
    v35 = a1[1];
    v36 = *(v35 + 331);
    v37 = fd_name(*(v35 + 220), v104, 0x100uLL);
    *buf = 136316418;
    v93 = "_data_map_get_data_entry";
    v94 = 1024;
    v95 = 397;
    v96 = 2048;
    v97 = v26;
    v98 = 2048;
    v99 = v36;
    v100 = 2048;
    v101 = v35;
    v23 = v86;
    v102 = 2080;
    v103 = v37;
    v30 = v34;
    v31 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
    goto LABEL_31;
  }

  dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v26, &v88, &v91);
  if (v91 == 1)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    memset(v104, 0, sizeof(v104));
    v23 = *__error();
    v27 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v28 = fd_name(*(a1[1] + 220), v104, 0x100uLL);
    v29 = *(a1[1] + 331);
    *buf = 136316418;
    v93 = "_data_map_get_data_entry";
    v94 = 1024;
    v95 = 393;
    v96 = 2080;
    v97 = v28;
    v98 = 2048;
    v99 = v26;
    v100 = 2048;
    v101 = v29;
    v102 = 2048;
    v103 = v88;
    v30 = v27;
    v31 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_31:
    _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x3Au);
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  if ((v87 & 4) == 0 && a4)
  {
    v14 = dataMap<unsigned long long,false,true,false>::_data_map_garbage_compact_collect<false>(a1);
    goto LABEL_11;
  }

  v38 = (*(*a1 + 96))(a1);
  if (v38 < v12)
  {
    v39 = 0;
    goto LABEL_84;
  }

  *&v85[8] = 0;
  v40 = v38 + 1;
  *v85 = *(a1[1] + 216);
  while (2)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (*v8 <= v12 || !CFBitVectorGetBitAtIndex(*(v8 + 16), v12))
    {
      v41 = a1[1];
      v43 = *(v41 + 4531);
      v42 = *(v41 + 4539);
      if (v12 >= v42 || (v43 + 1) <= 1)
      {
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v105 = 0u;
        memset(v104, 0, sizeof(v104));
        v45 = *__error();
        v46 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v55 = a1[1];
          v56 = fd_name(*(v55 + 220), v104, 0x100uLL);
          *buf = 136316418;
          v93 = "_data_map_get_offset_entry_impl";
          v94 = 1024;
          v95 = 362;
          v96 = 2048;
          v97 = v12;
          v98 = 2048;
          v99 = v42;
          v100 = 2048;
          v101 = v55;
          v102 = 2080;
          v103 = v56;
          _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v45;
        goto LABEL_51;
      }

      v47 = *(v43 + v17);
      if (v47 < 2)
      {
        goto LABEL_51;
      }

      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v48 = *(v41 + 5619) + v47;
      if (v48 >= *(v41 + 331))
      {
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v105 = 0u;
        memset(v104, 0, sizeof(v104));
        v49 = *__error();
        v57 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v66 = a1[1];
          v84 = *(v66 + 331);
          v67 = fd_name(*(v66 + 220), v104, 0x100uLL);
          *buf = 136316418;
          v93 = "_data_map_get_data_entry";
          v94 = 1024;
          v95 = 397;
          v96 = 2048;
          v97 = v48;
          v98 = 2048;
          v99 = v84;
          v100 = 2048;
          v101 = v66;
          v102 = 2080;
          v103 = v67;
          v53 = v57;
          v54 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_75:
          _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, v54, buf, 0x3Au);
        }

LABEL_59:
        *__error() = v49;
        v58 = *&v85[4];
      }

      else
      {
        dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v48, &v88, &v91);
        if (v91 == 1)
        {
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          memset(v104, 0, sizeof(v104));
          v49 = *__error();
          v50 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = fd_name(*(a1[1] + 220), v104, 0x100uLL);
            v52 = *(a1[1] + 331);
            *buf = 136316418;
            v93 = "_data_map_get_data_entry";
            v94 = 1024;
            v95 = 393;
            v96 = 2080;
            v97 = v51;
            v98 = 2048;
            v99 = v48;
            v100 = 2048;
            v101 = v52;
            v102 = 2048;
            v103 = v88;
            v53 = v50;
            v54 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
            goto LABEL_75;
          }

          goto LABEL_59;
        }

        if ((v87 & 2) != 0)
        {
          if ((v87 & 8) != 0)
          {
            if (gSILogLevels[0] >= 5)
            {
              v59 = *__error();
              v68 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                v69 = a1[1];
                v70 = v89 + *(v69 + 216);
                *v104 = 67109890;
                *&v104[4] = v12;
                *&v104[8] = 1024;
                *&v104[10] = v88;
                *&v104[14] = 2080;
                *&v104[16] = v70;
                *&v104[24] = 2048;
                *&v104[26] = v69;
                v62 = v68;
                v63 = "Delete data for id:%d size:%d %s from %p";
                v64 = 34;
LABEL_78:
                _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, v63, v104, v64);
              }

LABEL_79:
              *__error() = v59;
            }
          }

          else if (gSILogLevels[0] >= 5)
          {
            v59 = *__error();
            v60 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = a1[1];
              *v104 = 67109632;
              *&v104[4] = v12;
              *&v104[8] = 1024;
              *&v104[10] = v88;
              *&v104[14] = 2048;
              *&v104[16] = v61;
              v62 = v60;
              v63 = "Delete data for id:%d size:%d from %p";
              v64 = 24;
              goto LABEL_78;
            }

            goto LABEL_79;
          }
        }

        v58 = *&v85[4] + 1;
        if ((v87 & 4) == 0)
        {
          if (!*&v85[4])
          {
            v65 = a1[1];
            if ((*(v65 + 273) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              v65 = a1[1];
              *(v65 + 273) = 1;
            }

            if ((*(v65 + 275) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              *(a1[1] + 275) = 1;
            }
          }

          *(v43 + v17) = xmmword_1C2BFA340;
          bzero(v89, (v88 + *v85));
        }
      }

      *&v85[4] = v58;
    }

LABEL_51:
    ++v12;
    v17 += 16;
    if (v40 != v12)
    {
      continue;
    }

    break;
  }

  v39 = *&v85[4];
LABEL_84:
  if ((v87 & 2) == 0)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v80 = *__error();
  v81 = _SILogForLogForCategory(0);
  v82 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v81, v82))
  {
    v83 = a1[1];
    *v104 = 67109376;
    *&v104[4] = v39;
    *&v104[8] = 2048;
    *&v104[10] = v83;
    _os_log_impl(&dword_1C278D000, v81, v82, "Found %d deleted strings from %p", v104, 0x12u);
  }

  v14 = 0;
  *__error() = v80;
LABEL_11:
  (*(*a1 + 112))(a1);
LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_garbage_compact_collect<false>(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v93 = v4;
  v92 = v5;
  v7 = v6;
  v9 = v8;
  v134 = *MEMORY[0x1E69E9840];
  v10 = (*(*v8 + 96))(v8, v1);
  bzero(v107, 0x400uLL);
  bzero(v106, 0x400uLL);
  v135.location = 0;
  v103 = 0;
  v11 = *(v9 + 8);
  v12 = *(v11 + 277);
  *v3 = 842150450;
  *(v3 + 8) = 0;
  v13 = *(v11 + 4539);
  *(v3 + 16) = v13;
  v135.length = v13 - 1;
  v91 = v7;
  *(v3 + 24) = CFBitVectorGetCountOfBit(*(v7 + 16), v135, 1u);
  bzero(__src, 0x1058uLL);
  __src[520] = -1;
  v14 = fd_name(*(*(v9 + 8) + 315), v107, 0x400uLL);
  snprintf(v106, 0x400uLL, "tmp.%s", v14);
  if (v12)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(v9 + 8) + 315), v106, 1538, v15);
  if (fd_truncate(sibling_protected, *(*(v9 + 8) + 323)) == -1)
  {
    goto LABEL_16;
  }

  v17 = *(*(v9 + 8) + 323);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIyLb0ELb1ELb0EE33_data_map_garbage_compact_collectILb0EEENSt3__19enable_ifIXntT_EiE4typeEP10bit_vectory14DMCollectFlagsP32data_map_garbage_compact_context_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_111_6101;
  aBlock[4] = v9;
  __src[0] = sibling_protected;
  WORD2(__src[4]) = 256;
  __src[1] = v17;
  LODWORD(__src[4]) = 1;
  __src[5] = _Block_copy(aBlock);
  LOBYTE(__src[6]) = 26;
  bzero(&__src[7], 0x1000uLL);
  v18 = fd_name(*(*(v9 + 8) + 4515), v107, 0x400uLL);
  snprintf(v106, 0x400uLL, "tmp.%s", v18);
  __src[519] = fd_create_sibling_protected(*(*(v9 + 8) + 4515), v106, 1538, v15);
  if (fd_truncate(__src[519], *(*(v9 + 8) + 4467)) == -1)
  {
LABEL_16:
    v33 = *__error();
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0xFFFFFFFFLL;
    }

    goto LABEL_19;
  }

  v19 = *(v9 + 8);
  __src[522] = *(v19 + 4467);
  v20 = *(v19 + 4523);
  __src[520] = fd_mmap(__src[519]);
  if (__src[520] == -1)
  {
    v31 = *__error();
    v32 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v120[0]) = 136315394;
      *(v120 + 4) = "_data_map_garbage_compact_collect";
      WORD6(v120[0]) = 1024;
      *(v120 + 14) = 2911;
      _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: offsets fd_mmap error", v120, 0x12u);
    }

    *__error() = v31;
    goto LABEL_16;
  }

  v104[2] = 0;
  __src[521] = *(*(v9 + 8) + 4523);
  v104[0] = 1;
  v104[1] = "";
  data_entry_store<unsigned long long,false,true,false>(__src, v104);
  v21 = __src[520];
  *__src[520] = 0;
  *(v21 + 1) = 0;
  v103 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v22 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(v9 + 8), 0, add_explicit + 1);
  v24 = v23;
  v25 = v22;
  v26 = HIDWORD(v22);
  v28 = v27;
  v29 = threadData[9 * v22 + 1] + 320 * HIDWORD(v22);
  v89 = *(v29 + 312);
  v30 = *(v29 + 224);
  if (v30)
  {
    v30(*(v29 + 288));
  }

  v100 = v25;
  v98 = v28;
  v99 = v26;
  v97 = v24;
  if (_setjmp(v29))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v120[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v120, 2u);
    }

    *(v29 + 312) = v89;
    CIOnThreadCleanUpReset(v97);
    dropThreadId(v100, 1, add_explicit + 1);
    CICleanUpReset(v100, v98);
    goto LABEL_86;
  }

  if (v10)
  {
    v37 = 0;
    for (i = 1; i <= v10; ++i)
    {
      v39 = *(v9 + 8);
      v40 = *(v39 + 4531);
      v41 = *(v39 + 4539);
      if (i >= v41 || (v40 + 1) <= 1)
      {
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        memset(v120, 0, sizeof(v120));
        v43 = *__error();
        v44 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v53 = *(v9 + 8);
          v54 = fd_name(*(v53 + 220), v120, 0x100uLL);
          v108 = 136316418;
          v109 = "_data_map_get_offset_entry_impl";
          v110 = 1024;
          v111 = 362;
          v112 = 2048;
          v113 = i;
          v114 = 2048;
          v115 = v41;
          v116 = 2048;
          v117 = v53;
          v118 = 2080;
          v119 = v54;
          _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v108, 0x3Au);
        }

        *__error() = v43;
        goto LABEL_36;
      }

      v45 = *(v40 + v37 * 4 + 16);
      if (v45 >= 2)
      {
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v105 = 0;
        v46 = *(v39 + 5619) + v45;
        if (v46 >= *(v39 + 331))
        {
          v133 = 0u;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          memset(v120, 0, sizeof(v120));
          v47 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            log = v55;
            v66 = *(v9 + 8);
            v67 = *(v66 + 331);
            v68 = fd_name(*(v66 + 220), v120, 0x100uLL);
            v108 = 136316418;
            v109 = "_data_map_get_data_entry";
            v110 = 1024;
            v111 = 397;
            v112 = 2048;
            v113 = v46;
            v114 = 2048;
            v115 = v67;
            v116 = 2048;
            v117 = v66;
            v118 = 2080;
            v119 = v68;
            v51 = log;
            v52 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_72:
            _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, v52, &v108, 0x3Au);
          }

LABEL_45:
          *__error() = v47;
          goto LABEL_36;
        }

        dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(v9, *(v39 + 5619) + v45, &v94, &v105);
        if (v105 == 1)
        {
          v133 = 0u;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          memset(v120, 0, sizeof(v120));
          v47 = *__error();
          v48 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = fd_name(*(*(v9 + 8) + 220), v120, 0x100uLL);
            v50 = *(*(v9 + 8) + 331);
            v108 = 136316418;
            v109 = "_data_map_get_data_entry";
            v110 = 1024;
            v111 = 393;
            v112 = 2080;
            v113 = v49;
            v114 = 2048;
            v115 = v46;
            v116 = 2048;
            v117 = v50;
            v118 = 2048;
            v119 = v94;
            v51 = v48;
            v52 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
            goto LABEL_72;
          }

          goto LABEL_45;
        }

        if (i < v92)
        {
          goto LABEL_50;
        }

        if ((i & 0x8000000000000000) != 0)
        {
          v79 = __si_assert_copy_extra_332();
          __message_assert_336(v79, v80, v81, v82, v83, v84, v85, v86, "bit_vector.h");
          free(v79);
          if (__valid_fs(-1))
          {
            v87 = 2989;
          }

          else
          {
            v87 = 3072;
          }

          *v87 = -559038737;
          abort();
        }

        if (*v91 > i && CFBitVectorGetBitAtIndex(*(v91 + 16), i))
        {
LABEL_50:
          *&__src[520][v37 + 6] = *(*(*(v9 + 8) + 4531) + v37 * 4 + 24);
          if (v94 < 0x80)
          {
            v56 = 1;
          }

          else
          {
            v56 = 2;
          }

          if (v94 >> 14)
          {
            v57 = 3;
          }

          else
          {
            v57 = v56;
          }

          if (v94 >> 21)
          {
            v58 = 4;
          }

          else
          {
            v58 = v57;
          }

          if (v94 >> 28)
          {
            v59 = 5;
          }

          else
          {
            v59 = v58;
          }

          v60 = (v94 + v59 + 8);
          v61 = (__src[2] + v60);
          if ((__src[2] + v60) >= __src[1])
          {
            if (_storageWindowsExpandBacking(__src, v60))
            {
              v61 = (__src[2] + v60);
              goto LABEL_63;
            }
          }

          else
          {
LABEL_63:
            __src[2] = v61;
          }

          v62 = data_entry_store<unsigned long long,false,true,false>(__src, &v94);
          *&__src[520][v37 + 4] = v62;
          goto LABEL_37;
        }

        ++*(v3 + 8);
        if ((v93 & 2) != 0)
        {
          if ((v93 & 8) != 0)
          {
            if (gSILogLevels[0] >= 5)
            {
              v69 = *__error();
              v70 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                v71 = *(v9 + 8);
                v72 = v95 + *(v71 + 216);
                LODWORD(v120[0]) = 67109890;
                DWORD1(v120[0]) = i;
                WORD4(v120[0]) = 1024;
                *(v120 + 10) = v94;
                HIWORD(v120[0]) = 2080;
                *&v120[1] = v72;
                WORD4(v120[1]) = 2048;
                *(&v120[1] + 10) = v71;
                _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "Deleting id: %d size: %d %s from %p", v120, 0x22u);
              }

              *__error() = v69;
            }
          }

          else if (gSILogLevels[0] >= 5)
          {
            v63 = *__error();
            v64 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = *(v9 + 8);
              LODWORD(v120[0]) = 67109632;
              DWORD1(v120[0]) = i;
              WORD4(v120[0]) = 1024;
              *(v120 + 10) = v94;
              HIWORD(v120[0]) = 2048;
              *&v120[1] = v65;
              _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "Deleting id: %d size: %d from %p", v120, 0x18u);
            }

            *__error() = v63;
          }
        }
      }

LABEL_36:
      *&__src[520][4 * i] = xmmword_1C2BFA340;
LABEL_37:
      v37 += 4;
    }
  }

  if (*(v3 + 8))
  {
    if (SLODWORD(__src[4]) >= 1)
    {
      v73 = 0;
      do
      {
        v74 = v73;
        storageWindowSync(__src[v73 + 7], 1);
        v73 = v74 + 1;
      }

      while (v74 + 1 < SLODWORD(__src[4]));
    }

    v75 = __src[520];
    v76 = __src[522];
    fd_system_status_stall_if_busy();
    msync(v75, v76, 16);
    memcpy((v3 + 32), __src, 0x1058uLL);
    *v3 = 842150450;
    v103 = 1;
    v77 = threadData[9 * v100 + 1] + 320 * v99;
    *(v77 + 312) = v89;
    v78 = *(v77 + 232);
    if (v78)
    {
      v78(*(v77 + 288));
    }

    dropThreadId(v100, 0, add_explicit + 1);
LABEL_86:
    v34 = 0;
    result = 0;
    if (v103)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v34 = 0;
LABEL_19:
  if (sibling_protected)
  {
    storageWindowsUnmap(__src);
    fd_release(sibling_protected);
    _fd_unlink_with_origin(sibling_protected, 0);
  }

  if (__src[520] + 1 >= 2)
  {
    munmap(__src[520], __src[521]);
  }

  if (__src[519])
  {
    fd_release(__src[519]);
    _fd_unlink_with_origin(__src[519], 0);
  }

  result = v34;
LABEL_26:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_collect_setup(void *a1)
{
  (*(*a1 + 336))(a1);
  v2 = a1[1];
  v3 = *(v2 + 4539);
  os_unfair_lock_lock((v2 + 260));
  v4 = a1[1];
  if (*(v4 + 264))
  {
    os_unfair_lock_unlock((v4 + 260));
    (*(*a1 + 112))(a1);
    return 22;
  }

  else
  {
    v6 = bit_vector_create(v3);
    v7 = a1[1];
    *(v7 + 264) = v6;
    os_unfair_lock_unlock((v7 + 260));
    return 0;
  }
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_compact_collect_commit(void *a1, void *a2, _BYTE *a3, char a4)
{
  (*(*a1 + 336))(a1);
  if ((a4 & 1) == 0 && (*a3 & 1) == 0)
  {
    if (a2[1])
    {
      v8 = a2[2];
      v9 = a1[1];
      if (v8 != *(v9 + 4539) || (v10 = a2[3], v12.length = v8 - 1, v12.location = 0, v10 != CFBitVectorGetCountOfBit(*(*(v9 + 264) + 16), v12, 1u)))
      {
        *a3 = 1;
      }
    }
  }

  return 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_collect_handle_deletes(uint64_t *a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a2[1])
  {
    bzero(v53, 0x400uLL);
    bzero(v52, 0x400uLL);
    storageWindowsUnmap(a1[1] + 315);
    fd_sync(*(a1[1] + 315), 0);
    fd_sync(a2[523], 1);
    munmap(*(a1[1] + 4531), *(a1[1] + 4523));
    v4 = a1[1];
    *(v4 + 4531) = a2[524];
    *(v4 + 4467) = a2[526];
    a2[524] = -1;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    __buf[0] = 0x6D6F76650A00;
    __buf[1] = 0x3232323200000003;
    strlcpy(&v51[12], (v4 + 4595), 0xFFuLL);
    v5 = (a2 + 1);
    v6 = a1[1];
    v7 = vld1q_dup_f64(v5);
    *(v6 + 4563) = vaddq_s64(*(v6 + 4563), v7);
    *(v6 + 4579) = 0;
    dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
    (*(*a1 + 224))(a1, 1);
    dataMap<unsigned long long,false,true,false>::_data_map_sync_header_to_tmp<false>(a1);
    v8 = *(a1[1] + 315);
    if (v8)
    {
      v9 = *(v8 + 44);
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    v10 = si_openat_protected(v9, "tmp.movePlan", 1538, 3);
    pwrite(v10, __buf, 0x210uLL, 0);
    fcntl(v10, 85);
    v11 = fd_name(*(a1[1] + 315), v53, 0x400uLL);
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    v14 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = a1[1];
      v16 = fd_realpath(a2[4], v52);
      v29 = 134218498;
      v30 = v15;
      v31 = 2080;
      v32 = v16;
      v33 = 2080;
      v34 = v11;
      _os_log_impl(&dword_1C278D000, v13, v14, "rename %p %s to %s", &v29, 0x20u);
    }

    *__error() = v12;
    fd_rename(a2[4], v11);
    memcpy((a1[1] + 315), a2 + 4, 0x1038uLL);
    bzero(a2 + 4, 0x1038uLL);
    v17 = fd_name(*(a1[1] + 4515), v53, 0x400uLL);
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    v20 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = a1[1];
      v22 = fd_realpath(a2[523], v52);
      v29 = 134218498;
      v30 = v21;
      v31 = 2080;
      v32 = v22;
      v33 = 2080;
      v34 = v17;
      _os_log_impl(&dword_1C278D000, v19, v20, "rename %p %s to %s", &v29, 0x20u);
    }

    *__error() = v18;
    fd_rename(a2[523], v17);
    v23 = a1[1];
    v24 = *(v23 + 4515);
    *(v23 + 4515) = a2[523];
    fd_release(v24);
    a2[523] = 0;
    (*(*a1 + 232))(a1, 1);
    (*(*a1 + 48))(a1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 64))(a1);
    (*(*a1 + 72))(a1);
    v25 = *(a1[1] + 315);
    if (v25)
    {
      v26 = *(v25 + 44);
    }

    else
    {
      v26 = -1;
    }

    unlinkat(v26, "tmp.movePlan", 2048);
    close(v10);
    if ((*(a1[1] + 274) & 1) == 0)
    {
      dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
      *(a1[1] + 274) = 1;
    }

    dataMap<unsigned long long,false,true,false>::_data_map_rehash(a1);
    (*(*a1 + 224))(a1, 1);
    (*(*a1 + 232))(a1, 1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 64))(a1);
    (*(*a1 + 72))(a1);
  }

  v27 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_sync_header_to_tmp<false>(uint64_t *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v32 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v5 = v4;
  v6 = v3;
  v7 = HIDWORD(v3);
  v9 = v8;
  v10 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v11 = *(v10 + 312);
  v12 = *(v10 + 224);
  if (v12)
  {
    v12(*(v10 + 288));
  }

  v30 = v7;
  v31 = v6;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v37, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v5);
    dropThreadId(v6, 1, add_explicit + 1);
    result = CICleanUpReset(v6, v9);
  }

  else
  {
    if (!*(a1[1] + 278) && *(*(a1[1] + 307) + 16) != 1)
    {
      v14 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
      v15 = *(a1[1] + 307);
      v16 = *v15;
      *(v14 + 1) = v15[1];
      v18 = v15[3];
      v17 = v15[4];
      v19 = *(v15 + 76);
      *(v14 + 2) = v15[2];
      *(v14 + 3) = v18;
      *v14 = v16;
      *(v14 + 76) = v19;
      *(v14 + 4) = v17;
      *(v14 + 44) = *(v14 + 20);
      *(v14 + 60) = *(v14 + 36);
      v20 = a1[1];
      *(v14 + 20) = *(v20 + 331);
      *(v14 + 36) = *(v20 + 4539);
      *(v14 + 28) = *(v20 + 4507);
      *(v14 + 4) = 2;
      sibling_with_prefix_protected = fd_create_sibling_with_prefix_protected(*(v20 + 220), "tmp.", 0);
      fd_pwrite(sibling_with_prefix_protected, v14, 0x5CuLL, 0);
      fd_sync(sibling_with_prefix_protected, 1);
      fd_release(sibling_with_prefix_protected);
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      *v37 = 0u;
      v22 = *__error();
      v23 = _SILogForLogForCategory(7);
      v24 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = fd_name(*(a1[1] + 220), v37, 0x100uLL);
        v26 = (*(*a1 + 96))(a1);
        *buf = 136315394;
        v34 = v25;
        v35 = 2048;
        v36 = v26;
        _os_log_impl(&dword_1C278D000, v23, v24, "%s complete write tmp header with count: %llu", buf, 0x16u);
      }

      *__error() = v22;
      free(v14);
    }

    v32 = 1;
    v27 = threadData[9 * v31 + 1] + 320 * v30;
    *(v27 + 312) = v11;
    v28 = *(v27 + 232);
    if (v28)
    {
      v28(*(v27 + 288));
    }

    result = dropThreadId(v31, 0, add_explicit + 1);
  }

  if ((v32 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void dataMap<unsigned long long,false,true,false>::_data_map_clear_seen(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 8) + 260));
  v2 = *(a1 + 8);
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(v3);
    v2 = *(a1 + 8);
    *(v2 + 264) = 0;
  }

  os_unfair_lock_unlock((v2 + 260));
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_match_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 283);
  if (v4 != -1)
  {
    if (v4)
    {
      if (v4 <= a2)
      {
        v5 = *(v2 + 291);
        if (&v4[v5] > a2)
        {
          v6 = *(v2 + 220);
          v7 = "data ro header";
          v8 = a2;
          LODWORD(v9) = *(v2 + 291);
LABEL_21:
          log_map_access_error(v8, v4, v5, v9, v7, v6);
          return 1;
        }
      }
    }

    return 0;
  }

  if (!storage_windows_contains_address(v2 + 315, a2))
  {
    v4 = *(v2 + 4531);
    v10 = (v4 + 1) < 2 || v4 > a2;
    if (v10 || (v5 = *(v2 + 4523), &v4[v5] <= a2))
    {
      v4 = *(v2 + 4499);
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = *(v2 + 4491);
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v9 = *(v2 + 4483);
      v6 = *(v2 + 236);
      v7 = "data buckets";
    }

    else
    {
      v9 = *(v2 + 4467);
      v6 = *(v2 + 4515);
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_21;
  }

  return 1;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_version_update(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 307);
  if (*(v2 + 8) <= 0xAu)
  {
    v3 = result;
    *(v2 + 8) = 12;
    result = fd_pwrite(*(v1 + 220), v2, 0x5CuLL, 0);
    v4 = *(v3 + 8);
    v5 = (v4 + 347);
    if (*(v4 + 347) >= 1)
    {
      v6 = 0;
      v7 = v4 + 371;
      do
      {
        result = storageWindowSync(*(v7 + 8 * v6++), 1);
      }

      while (v6 < *v5);
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_version(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(*(v1 + 307) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_sync_header(uint64_t *a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v30 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v28 = v9;
  v29 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v37, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278))
    {
      v16 = *(v15 + 307);
      if (*(v16 + 16) != 1)
      {
        *(v16 + 60) = *(v16 + 36);
        *(v16 + 44) = *(v16 + 20);
        *(v16 + 20) = *(v15 + 331);
        *(v16 + 36) = *(v15 + 4539);
        *(v16 + 28) = *(v15 + 4507);
        *(v16 + 16) = 0;
        fd_pwrite(*(v15 + 220), v16, 0x5CuLL, 0);
        if (a2)
        {
          fd_sync(*(a1[1] + 220), 0);
        }

        *(*(a1[1] + 307) + 16) = 2;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        *v37 = 0u;
        v17 = *__error();
        v18 = _SILogForLogForCategory(7);
        v19 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = fd_name(*(a1[1] + 220), v37, 0x100uLL);
          if (a2)
          {
            v21 = "sync";
          }

          else
          {
            v21 = "update";
          }

          v22 = (*(*a1 + 96))(a1);
          *buf = 136315650;
          v32 = v20;
          v33 = 2080;
          v34 = v21;
          v35 = 2048;
          v36 = v22;
          _os_log_impl(&dword_1C278D000, v18, v19, "%s complete %s header with count: %llu", buf, 0x20u);
        }

        *__error() = v17;
      }
    }

    v30 = 1;
    v23 = threadData[9 * v29 + 1] + 320 * v28;
    *(v23 + 312) = v13;
    v24 = *(v23 + 232);
    if (v24)
    {
      v24(*(v23 + 288));
    }

    dropThreadId(v29, 0, add_explicit + 1);
  }

  v25 = (a1[1] + 278);
  if (v30 == 1)
  {
    result = *v25;
  }

  else
  {
    *v25 = 22;
    result = 22;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_sync_data(uint64_t *a1, int a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v43 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v41 = v9;
  v42 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v50, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    v16 = v15 + 278;
    if (!*(v15 + 278) && !*(*(v15 + 307) + 16))
    {
      v17 = a1[1];
      if (*(v15 + 273) == 1)
      {
        if (a2 && *(v15 + 347) >= 1)
        {
          v18 = v15 + 371;
          v19 = 0;
          do
          {
            v20 = v19;
            storageWindowSync(*(v18 + 8 * v19), 0);
            v19 = v20 + 1;
          }

          while (v20 + 1 < *(v16 + 69));
          v17 = a1[1];
        }

        *(v17 + 273) = 0;
      }

      v21 = v17;
      if (*(v17 + 275) == 1)
      {
        if (a2)
        {
          v22 = *(*(v17 + 307) + 60);
          v23 = *(v17 + 4531) + 16 * v22;
          v24 = -*MEMORY[0x1E69E9AC8];
          v25 = 16 * (*(v17 + 4539) - v22);
          fd_system_status_stall_if_busy();
          msync((v23 & v24), v25, 16);
          v21 = a1[1];
        }

        *(v21 + 275) = 0;
      }

      if (*(v21 + 274) == 1)
      {
        if (a2)
        {
          v26 = v21 + 4096;
          v27 = *(v26 + 403);
          v28 = 8 * *(v26 + 411);
          fd_system_status_stall_if_busy();
          msync(v27, v28, 16);
          v21 = a1[1];
        }

        *(v21 + 274) = 0;
      }

      v29 = *(v21 + 307);
      *(v29 + 20) = *(v21 + 331);
      *(v29 + 36) = *(v21 + 4539);
      *(v29 + 28) = *(v21 + 4507);
      *(v29 + 68) = *(v21 + 4563);
      *(v29 + 84) = *(v21 + 4579);
      *(v29 + 16) = 0;
      fd_pwrite(*(v21 + 220), v29, 0x5CuLL, 0);
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      *v50 = 0u;
      v30 = *__error();
      v31 = _SILogForLogForCategory(7);
      v32 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = fd_name(*(a1[1] + 220), v50, 0x100uLL);
        if (a2)
        {
          v34 = "sync";
        }

        else
        {
          v34 = "update";
        }

        v35 = (*(*a1 + 96))(a1);
        *buf = 136315650;
        v45 = v33;
        v46 = 2080;
        v47 = v34;
        v48 = 2048;
        v49 = v35;
        _os_log_impl(&dword_1C278D000, v31, v32, "%s complete %s map with count: %llu", buf, 0x20u);
      }

      *__error() = v30;
    }

    v43 = 1;
    v36 = threadData[9 * v42 + 1] + 320 * v41;
    *(v36 + 312) = v13;
    v37 = *(v36 + 232);
    if (v37)
    {
      v37(*(v36 + 288));
    }

    dropThreadId(v42, 0, add_explicit + 1);
  }

  v38 = (a1[1] + 278);
  if (v43 == 1)
  {
    result = *v38;
  }

  else
  {
    *v38 = 22;
    result = 22;
  }

  v40 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL dataMap<unsigned long long,false,true,false>::_data_map_needs_sync(uint64_t a1)
{
  v22 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v5 = v4;
  v6 = v3;
  v7 = HIDWORD(v3);
  v9 = v8;
  v10 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v11 = *(v10 + 312);
  v12 = *(v10 + 224);
  if (v12)
  {
    v12(*(v10 + 288));
  }

  v20 = v7;
  v21 = v6;
  v18 = v5;
  v19 = v9;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v17, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v18);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, v19);
    result = 0;
  }

  else
  {
    v14 = *(*(*(a1 + 8) + 307) + 16) == 0;
    v22 = 1;
    v15 = threadData[9 * v21 + 1] + 320 * v20;
    *(v15 + 312) = v11;
    v16 = *(v15 + 232);
    if (v16)
    {
      v16(*(v15 + 288));
    }

    dropThreadId(v21, 0, add_explicit + 1);
    result = v14;
  }

  if ((v22 & 1) == 0)
  {
    *(*(a1 + 8) + 278) = 22;
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_data(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_2;
  }

  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v10 = v9;
  v11 = v8;
  v12 = HIDWORD(v8);
  v14 = v13;
  v15 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v24 = v12;
  v25 = v11;
  v22 = v10;
  v23 = v14;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v21, 2u);
    }

    *(v15 + 312) = v16;
    CIOnThreadCleanUpReset(v22);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, v23);
    v18 = 0;
  }

  else
  {
    v18 = (*(*a1 + 120))(a1, a2, a3);
    v26 = 1;
    v19 = threadData[9 * v25 + 1] + 320 * v24;
    *(v19 + 312) = v16;
    v20 = *(v19 + 232);
    if (v20)
    {
      v20(*(v19 + 288));
    }

    dropThreadId(v25, 0, add_explicit + 1);
  }

  if ((v26 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  result = v18;
  if (!v18)
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  return result;
}

char *dataMap<unsigned long long,false,true,false>::data_map_get_data_entry@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  v8 = (a5 + 16);
  *a3 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  v9 = *a1;
  *(a5 + 20) = *(a1[1] + 216);
  v13 = 0;
  if (a4)
  {
    result = (*(v9 + 120))(a1, a2, &v13);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*(v9 + 192))(a1, a2, &v13);
    if (!result)
    {
      return result;
    }
  }

  *a3 = 1;
  v11 = *(a1[1] + 216);
  v12 = v13 - v11;
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 20) = v11;
  if (v11)
  {
    return memcpy(v8, &result[-v11], v11);
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_extra_with_key(uint64_t *a1, unsigned __int8 *a2, size_t a3, _BYTE *a4)
{
  v8 = 0;
  v101 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  __dst = 0;
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_46;
  }

  v60 = v9;
  v70 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v61 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v68 = v15;
  v69 = v14;
  v66 = v13;
  v67 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v85 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v85, 2u);
    }

    *(v18 + 312) = v61;
    CIOnThreadCleanUpReset(v66);
    dropThreadId(v69, 1, add_explicit + 1);
    CICleanUpReset(v69, v67);
    goto LABEL_43;
  }

  v62 = a2;
  v20 = a1[1];
  v21 = *(v20 + 4507);
  v22 = v60 % v21;
  v59 = *(v20 + 216);
  do
  {
    v23 = a1[1];
    v24 = *(v23 + 4499);
    v25 = *(v24 + 8 * v22);
    if (!v25)
    {
      break;
    }

    if (*(v23 + 264))
    {
      os_unfair_lock_lock((v23 + 260));
      v50 = a1[1];
      v51 = *(v50 + 264);
      if (v51)
      {
        bit_vector_set(v51, v25);
        v50 = a1[1];
      }

      os_unfair_lock_unlock((v50 + 260));
      v26 = *(v24 + 8 * v22);
      v23 = a1[1];
    }

    else
    {
      v26 = *(v24 + 8 * v22);
    }

    v27 = *(v23 + 4531);
    v28 = *(v23 + 4539);
    if (v26 >= v28 || (v27 + 1) <= 1)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      *v85 = 0u;
      v86 = 0u;
      v30 = *__error();
      v31 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        log = v31;
        v42 = a1[1];
        v43 = fd_name(*(v42 + 220), v85, 0x100uLL);
        *buf = 136316418;
        v74 = "_data_map_get_offset_entry_impl";
        v75 = 1024;
        v76 = 362;
        v77 = 2048;
        v78 = v26;
        v79 = 2048;
        v80 = v28;
        v81 = 2048;
        v82 = v42;
        v83 = 2080;
        v84 = v43;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v30;
      goto LABEL_19;
    }

    v33 = (v27 + 16 * v26);
    v34 = *v33;
    if (*v33 != 1 && v33[1] == v60)
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v72 = 0;
      v35 = (*(v23 + 5619) + v34);
      if (v35 >= *(v23 + 331))
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        *v85 = 0u;
        v86 = 0u;
        v36 = *__error();
        v44 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v58 = v44;
          v46 = v35;
          v47 = a1[1];
          v48 = *(v47 + 331);
          v49 = fd_name(*(v47 + 220), v85, 0x100uLL);
          *buf = 136316418;
          v74 = "_data_map_get_data_entry";
          v75 = 1024;
          v76 = 397;
          v77 = 2048;
          v78 = v46;
          v79 = 2048;
          v80 = v48;
          v81 = 2048;
          v82 = v47;
          v83 = 2080;
          v84 = v49;
          v40 = v58;
          v41 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, v41, buf, 0x3Au);
        }

LABEL_30:
        *__error() = v36;
        goto LABEL_19;
      }

      dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, *(v23 + 5619) + v34, &v63, &v72);
      if (v72 == 1)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        *v85 = 0u;
        v86 = 0u;
        v36 = *__error();
        v37 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = fd_name(*(a1[1] + 220), v85, 0x100uLL);
          v39 = *(a1[1] + 331);
          *buf = 136316418;
          v74 = "_data_map_get_data_entry";
          v75 = 1024;
          v76 = 393;
          v77 = 2080;
          v78 = v38;
          v79 = 2048;
          v80 = v35;
          v81 = 2048;
          v82 = v39;
          v83 = 2048;
          v84 = v63;
          v40 = v37;
          v41 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if ((v72 & 1) == 0 && v59 + a3 == v63)
      {
        v45 = v64;
        if (!memcmp(v62, &v64[v59], a3))
        {
          v52 = *(a1[1] + 216);
          memcpy(&__dst, v45, v52);
          HIDWORD(__dst) = v52;
          *a4 = 1;
          break;
        }
      }
    }

LABEL_19:
    v32 = 0;
    if (v22 + 1 != v21)
    {
      v32 = v22 + 1;
    }

    v22 = v32;
  }

  while (v32 != v60 % v21);
  v70 = 1;
  v53 = threadData[9 * v69 + 1] + 320 * v68;
  *(v53 + 312) = v61;
  v54 = *(v53 + 232);
  if (v54)
  {
    v54(*(v53 + 288));
  }

  dropThreadId(v69, 0, add_explicit + 1);
LABEL_43:
  if ((v70 & 1) == 0)
  {
    *a4 = 0;
    *(a1[1] + 278) = 22;
  }

  v8 = __dst;
LABEL_46:
  (*(*a1 + 112))(a1);
  v55 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_ids_get_locked(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned long long,false,true,false>::dm_hash(*(*(a1 + 8) + 282), a2, a3);

  return dataMap<unsigned long long,false,true,false>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6)
{
  v101 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = *(v8 + 4507);
  v10 = *(v8 + 216);
  v71 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v58 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v69 = v15;
  v70 = v14;
  v67 = v13;
  v68 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v85 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v85, 2u);
    }

    *(v18 + 312) = v58;
    CIOnThreadCleanUpReset(v67);
    dropThreadId(v70, 1, add_explicit + 1);
    CICleanUpReset(v70, v68);
    v20 = 0;
    goto LABEL_40;
  }

  v57 = a3;
  v21 = a3 % v9;
  v22 = v21;
  v23 = 0;
  do
  {
    v24 = v23;
    v25 = *(a1 + 8);
    v26 = *(v25 + 4499);
    v27 = *(v26 + 8 * v22);
    if (!v27)
    {
      break;
    }

    v28 = *(v25 + 4531);
    v29 = *(v25 + 4539);
    if (v27 >= v29 || (v28 + 1) <= 1)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      *v85 = 0u;
      v86 = 0u;
      v31 = *__error();
      v32 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        log = v32;
        v44 = *(a1 + 8);
        v45 = fd_name(*(v44 + 220), v85, 0x100uLL);
        *buf = 136316418;
        v74 = "_data_map_get_offset_entry_impl";
        v75 = 1024;
        v76 = 362;
        v77 = 2048;
        v78 = v27;
        v79 = 2048;
        v80 = v29;
        v81 = 2048;
        v82 = v44;
        v83 = 2080;
        v84 = v45;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v31;
      goto LABEL_16;
    }

    v34 = (v28 + 16 * v27);
    v35 = *v34;
    if (*v34 != 1 && v34[1] == v57)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v72 = 0;
      v36 = *(v25 + 5619) + v35;
      v37 = v36;
      if (v36 >= *(v25 + 331))
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        *v85 = 0u;
        v86 = 0u;
        v38 = *__error();
        v46 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v56 = v46;
          v47 = v37;
          v48 = *(a1 + 8);
          v49 = *(v48 + 331);
          v50 = fd_name(*(v48 + 220), v85, 0x100uLL);
          *buf = 136316418;
          v74 = "_data_map_get_data_entry";
          v75 = 1024;
          v76 = 397;
          v77 = 2048;
          v78 = v47;
          v79 = 2048;
          v80 = v49;
          v81 = 2048;
          v82 = v48;
          v83 = 2080;
          v84 = v50;
          v42 = v56;
          v43 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v43, buf, 0x3Au);
        }
      }

      else
      {
        dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v36, &v64, &v72);
        if (v72 != 1)
        {
          if ((v72 & 1) == 0 && v10 + a6 == v64 && !memcmp(a5, (v65 + v10), a6))
          {
            if (v24 < a4)
            {
              *(a2 + 8 * v24) = *(v26 + 8 * v22);
            }

            v24 = (v24 + 1);
          }

          goto LABEL_16;
        }

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        *v85 = 0u;
        v86 = 0u;
        v38 = *__error();
        v39 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = fd_name(*(*(a1 + 8) + 220), v85, 0x100uLL);
          v41 = *(*(a1 + 8) + 331);
          *buf = 136316418;
          v74 = "_data_map_get_data_entry";
          v75 = 1024;
          v76 = 393;
          v77 = 2080;
          v78 = v40;
          v79 = 2048;
          v80 = v37;
          v81 = 2048;
          v82 = v41;
          v83 = 2048;
          v84 = v64;
          v42 = v39;
          v43 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }
      }

      *__error() = v38;
    }

LABEL_16:
    if (v22 + 1 == v9)
    {
      v33 = 0;
    }

    else
    {
      v33 = v22 + 1;
    }

    v22 = v33;
    v23 = v24;
  }

  while (v33 != v21);
  v71 = 1;
  v51 = threadData[9 * v70 + 1] + 320 * v69;
  *(v51 + 312) = v58;
  v52 = *(v51 + 232);
  if (v52)
  {
    v52(*(v51 + 288));
  }

  dropThreadId(v70, 0, add_explicit + 1);
  v20 = v24;
LABEL_40:
  result = v20;
  if ((v71 & 1) == 0)
  {
    result = 0;
    *(*(a1 + 8) + 278) = 22;
  }

  v54 = *MEMORY[0x1E69E9840];
  return result;
}