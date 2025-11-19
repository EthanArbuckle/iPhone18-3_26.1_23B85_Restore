uint64_t dataMap<unsigned long long,false,true,false>::data_map_ids_get(void *a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  locked_with_hash = dataMap<unsigned long long,false,true,false>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
  (*(*a1 + 112))(a1);
  return locked_with_hash;
}

CFIndex dataMap<unsigned long long,false,true,false>::data_map_id_get_with_key_noextra(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v57 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  v68 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v8 = v7;
  v9 = v6;
  v10 = HIDWORD(v6);
  v12 = v11;
  v13 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v66 = v10;
  v67 = v9;
  v64 = v8;
  v65 = v12;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v82 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v82, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v64);
    dropThreadId(v67, 1, add_explicit + 1);
    CICleanUpReset(v67, v65);
    v16 = 0;
    goto LABEL_43;
  }

  if ((*(*a1 + 104))(a1))
  {
    v16 = 0;
    goto LABEL_39;
  }

  v60 = v14;
  v17 = a1[1];
  v18 = *(v17 + 4507);
  v19 = v57 % v18;
  v59 = a3;
  v56 = *(v17 + 216);
  v55 = v56 + a3;
  while (1)
  {
    v20 = a1[1];
    v21 = *(v20 + 4499);
    v22 = *(v21 + 8 * v19);
    if (!v22)
    {
      break;
    }

    v23 = *(v20 + 4531);
    v24 = *(v20 + 4539);
    if (v22 >= v24 || (v23 + 1) <= 1)
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
      *v82 = 0u;
      v83 = 0u;
      v26 = *__error();
      v27 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        log = v27;
        v39 = a1[1];
        v40 = fd_name(*(v39 + 220), v82, 0x100uLL);
        *buf = 136316418;
        v71 = "_data_map_get_offset_entry_impl";
        v72 = 1024;
        v73 = 362;
        v74 = 2048;
        v75 = v22;
        v76 = 2048;
        v77 = v24;
        v78 = 2048;
        v79 = v39;
        v80 = 2080;
        v81 = v40;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v26;
      goto LABEL_18;
    }

    v29 = (v23 + 16 * v22);
    v30 = *v29;
    if (*v29 != 1 && v29[1] == v57)
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v69 = 0;
      v31 = *(v20 + 5619) + v30;
      v32 = v31;
      if (v31 >= *(v20 + 331))
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
        *v82 = 0u;
        v83 = 0u;
        v33 = *__error();
        v41 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v54 = v41;
          v42 = v33;
          v43 = a1[1];
          v44 = *(v43 + 331);
          v45 = fd_name(*(v43 + 220), v82, 0x100uLL);
          *buf = 136316418;
          v71 = "_data_map_get_data_entry";
          v72 = 1024;
          v73 = 397;
          v74 = 2048;
          v75 = v32;
          v76 = 2048;
          v77 = v44;
          v78 = 2048;
          v79 = v43;
          v33 = v42;
          v80 = 2080;
          v81 = v45;
          v37 = v54;
          v38 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x3Au);
        }

LABEL_30:
        *__error() = v33;
        goto LABEL_18;
      }

      dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v31, &v61, &v69);
      if (v69 == 1)
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
        *v82 = 0u;
        v83 = 0u;
        v33 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = fd_name(*(a1[1] + 220), v82, 0x100uLL);
          v36 = *(a1[1] + 331);
          *buf = 136316418;
          v71 = "_data_map_get_data_entry";
          v72 = 1024;
          v73 = 393;
          v74 = 2080;
          v75 = v35;
          v76 = 2048;
          v77 = v32;
          v78 = 2048;
          v79 = v36;
          v80 = 2048;
          v81 = v61;
          v37 = v34;
          v38 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if ((v69 & 1) == 0 && v55 == v61 && !memcmp(a2, (v62 + v56), v59))
      {
        v16 = *(v21 + 8 * v19);
        goto LABEL_38;
      }
    }

LABEL_18:
    v16 = 0;
    if (v19 + 1 == v18)
    {
      v28 = 0;
    }

    else
    {
      v28 = v19 + 1;
    }

    v19 = v28;
    if (v28 == v57 % v18)
    {
      goto LABEL_38;
    }
  }

  v16 = 0;
LABEL_38:
  v14 = v60;
LABEL_39:
  v46 = a1[1];
  if (*(v46 + 264))
  {
    os_unfair_lock_lock((v46 + 260));
    v51 = a1[1];
    v52 = *(v51 + 264);
    if (v52)
    {
      bit_vector_set(v52, v16);
      v51 = a1[1];
    }

    os_unfair_lock_unlock((v51 + 260));
  }

  v68 = 1;
  v47 = threadData[9 * v67 + 1] + 320 * v66;
  *(v47 + 312) = v14;
  v48 = *(v47 + 232);
  if (v48)
  {
    v48(*(v47 + 288));
  }

  dropThreadId(v67, 0, add_explicit + 1);
LABEL_43:
  if ((v68 & 1) == 0)
  {
    v16 = 0;
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  v49 = *MEMORY[0x1E69E9840];
  return v16;
}

CFIndex dataMap<unsigned long long,false,true,false>::data_map_id_get_with_key(uint64_t *a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v101 = *MEMORY[0x1E69E9840];
  v8 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    v9 = 0;
  }

  else
  {
    v60 = v8;
    v71 = 0;
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

      *(v18 + 312) = v61;
      CIOnThreadCleanUpReset(v67);
      dropThreadId(v70, 1, add_explicit + 1);
      CICleanUpReset(v70, v68);
      v9 = 0;
    }

    else
    {
      v62 = a2;
      __s2 = a4;
      v20 = a1[1];
      v21 = *(v20 + 4507);
      v22 = v60 % v21;
      v59 = *(v20 + 216);
      while (1)
      {
        v23 = a1[1];
        v24 = *(v23 + 4499);
        v25 = *(v24 + 8 * v22);
        if (!v25)
        {
          break;
        }

        v26 = *(v23 + 4531);
        v27 = *(v23 + 4539);
        if (v25 < v27 && (v26 + 1) > 1)
        {
          v32 = (v26 + 16 * v25);
          v33 = *v32;
          if (*v32 != 1 && v32[1] == v60)
          {
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v72 = 0;
            v34 = *(v23 + 5619) + v33;
            v35 = v34;
            if (v34 >= *(v23 + 331))
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
              v41 = *__error();
              v42 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v58 = v42;
                v44 = add_explicit;
                v45 = a1[1];
                v46 = *(v45 + 331);
                v47 = fd_name(*(v45 + 220), v85, 0x100uLL);
                *buf = 136316418;
                v74 = "_data_map_get_data_entry";
                v75 = 1024;
                v76 = 397;
                v77 = 2048;
                v78 = v35;
                v79 = 2048;
                v80 = v46;
                v81 = 2048;
                v82 = v45;
                add_explicit = v44;
                v83 = 2080;
                v84 = v47;
                _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", buf, 0x3Au);
              }

              *__error() = v41;
            }

            else
            {
              dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v34, &v64, &v72);
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
                  v48 = fd_name(*(a1[1] + 220), v85, 0x100uLL);
                  v49 = *(a1[1] + 331);
                  *buf = 136316418;
                  v74 = "_data_map_get_data_entry";
                  v75 = 1024;
                  v76 = 393;
                  v77 = 2080;
                  v78 = v48;
                  v79 = 2048;
                  v80 = v35;
                  v81 = 2048;
                  v82 = v49;
                  v83 = 2048;
                  v84 = v64;
                  _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx", buf, 0x3Au);
                }

                *__error() = v36;
              }

              else if ((v72 & 1) == 0 && v59 + a3 == v64)
              {
                v43 = v65;
                if (!memcmp(v62, &v65[v59], a3) && !memcmp(v43, __s2, *(a1[1] + 216)))
                {
                  v9 = *(v24 + 8 * v22);
                  goto LABEL_39;
                }
              }
            }
          }
        }

        else
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
          v29 = *__error();
          v30 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            log = v30;
            v38 = add_explicit;
            v39 = a1[1];
            v40 = fd_name(*(v39 + 220), v85, 0x100uLL);
            *buf = 136316418;
            v74 = "_data_map_get_offset_entry_impl";
            v75 = 1024;
            v76 = 362;
            v77 = 2048;
            v78 = v25;
            v79 = 2048;
            v80 = v27;
            v81 = 2048;
            v82 = v39;
            add_explicit = v38;
            v83 = 2080;
            v84 = v40;
            _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
          }

          *__error() = v29;
        }

        if (v22 + 1 == v21)
        {
          v31 = 0;
        }

        else
        {
          v31 = v22 + 1;
        }

        v22 = v31;
        if (v31 == v60 % v21)
        {
          v9 = 0;
          goto LABEL_39;
        }
      }

      v9 = 0;
LABEL_39:
      v71 = 1;
      v50 = threadData[9 * v70 + 1] + 320 * v69;
      *(v50 + 312) = v61;
      v51 = *(v50 + 232);
      if (v51)
      {
        v51(*(v50 + 288));
      }

      dropThreadId(v70, 0, add_explicit + 1);
    }

    if ((v71 & 1) == 0)
    {
      v9 = 0;
      *(a1[1] + 278) = 22;
    }
  }

  v52 = a1[1];
  if (*(v52 + 264))
  {
    os_unfair_lock_lock((v52 + 260));
    v55 = a1[1];
    v56 = *(v55 + 264);
    if (v56)
    {
      bit_vector_set(v56, v9);
      v55 = a1[1];
    }

    os_unfair_lock_unlock((v55 + 260));
  }

  (*(*a1 + 112))(a1);
  v53 = *MEMORY[0x1E69E9840];
  return v9;
}

unint64_t dataMap<unsigned long long,false,true,false>::_data_map_get_data_id(uint64_t *a1, unsigned int a2, unsigned __int8 *a3, size_t a4, int a5)
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
  v36 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v44 = v15;
  v45 = v14;
  v42 = v13;
  v43 = v17;
  if (!_setjmp(v18))
  {
    bucket_entry = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, *(a1[1] + 4539));
    v41 = 0;
    *buf = 0;
    v39 = 0;
    v40 = 0;
    if (!bucket_entry)
    {
      v20 = 0;
LABEL_18:
      v24 = threadData[9 * v45 + 1] + 320 * v44;
      *(v24 + 312) = v36;
      v25 = *(v24 + 232);
      if (v25)
      {
        v25(*(v24 + 288));
      }

      dropThreadId(v45, 0, add_explicit + 1);
      goto LABEL_21;
    }

    if (*bucket_entry)
    {
      if (*bucket_entry >= *(a1[1] + 4539))
      {
        v20 = 0;
      }

      else
      {
        v20 = *bucket_entry;
      }

      goto LABEL_18;
    }

    if (!a5 || (v22 = bucket_entry, *buf = a4, v39 = a3, v23 = *(a1[1] + 4539), (*(*a1 + 112))(a1), (*(*a1 + 336))(a1)))
    {
LABEL_17:
      v20 = 0;
      goto LABEL_18;
    }

    v26 = v23;
    v27 = *(a1[1] + 4539);
    if (v23 != v27)
    {
      v31 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, v27);
      if (!v31)
      {
        v20 = 0;
        goto LABEL_18;
      }

      v28 = *v31;
      v26 = *(a1[1] + 4539);
      if (*v31 >= v26)
      {
        goto LABEL_17;
      }

      if (v28)
      {
        dataMap<unsigned long long,false,true,false>::_data_map_set_seen_id(a1, v28);
        goto LABEL_48;
      }

      v22 = v31;
    }

    v28 = v26;
    v29 = v22;
    if (a4 >> 28)
    {
      v32 = 5;
    }

    else if (a4 >> 21)
    {
      v32 = 4;
    }

    else
    {
      if (!(a4 >> 14))
      {
        if (a4 < 0x80)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        goto LABEL_38;
      }

      v32 = 3;
    }

    v30 = v32;
LABEL_38:
    if (!dataMap<unsigned long long,false,true,false>::_data_map_grow(a1, (v30 + a4), &v41))
    {
      goto LABEL_17;
    }

    v33 = a1[1];
    if ((*(v33 + 275) & 1) == 0)
    {
      dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
      v33 = a1[1];
      *(v33 + 275) = 1;
    }

    v34 = (*(v33 + 4531) + 16 * v28);
    *v34 = *(v33 + 331);
    v34[1] = v9;
    if ((*(v33 + 273) & 1) == 0)
    {
      dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
      v33 = a1[1];
      *(v33 + 273) = 1;
    }

    *v34 = data_entry_store<unsigned long long,false,true,false>(v33 + 315, buf);
    v35 = a1[1];
    ++*(v35 + 4539);
    if ((*(v35 + 274) & 1) == 0)
    {
      dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
      v35 = a1[1];
      *(v35 + 274) = 1;
    }

    if ((v41 & 4) != 0)
    {
      v29 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, v28, 0, 0, *(v35 + 4539));
    }

    *v29 = v28;
LABEL_48:
    v20 = v28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v18 + 312) = v36;
  CIOnThreadCleanUpReset(v42);
  dropThreadId(v45, 1, add_explicit + 1);
  CICleanUpReset(v45, v43);
  v20 = 0;
LABEL_21:
  (*(*a1 + 112))(a1);
  return v20;
}

void dataMap<unsigned long long,false,true,false>::_data_map_set_seen_id(uint64_t a1, CFIndex a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 264))
  {
    os_unfair_lock_lock((v3 + 260));
    v6 = *(a1 + 8);
    v7 = *(v6 + 264);
    if (v7)
    {
      bit_vector_set(v7, a2);
      v6 = *(a1 + 8);
    }

    os_unfair_lock_unlock((v6 + 260));
  }
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_data_locked(uint64_t a1, unint64_t a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = *(v5 + 4531);
  v7 = *(v5 + 4539);
  if (v7 <= a2 || (v6 + 1) <= 1)
  {
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
    v47 = 0u;
    v48 = 0u;
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      v11 = __error();
      result = 0;
      *v11 = v9;
      goto LABEL_7;
    }

    v26 = *(a1 + 8);
    v27 = fd_name(*(v26 + 220), &v47, 0x100uLL);
    *buf = 136316418;
    v36 = "_data_map_get_offset_entry_impl";
    v37 = 1024;
    v38 = 362;
    v39 = 2048;
    v40 = a2;
    v41 = 2048;
    v42 = v7;
    v43 = 2048;
    v44 = v26;
    v45 = 2080;
    v46 = v27;
    v21 = "%s:%d: invalid data id %llu max %llu %p %s";
    v25 = v10;
LABEL_17:
    _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, v21, buf, 0x3Au);
    goto LABEL_6;
  }

  v14 = *(v6 + 16 * a2);
  if (v14 == 1)
  {
    result = 0;
    goto LABEL_7;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v15 = *(v5 + 216);
  v34 = 0;
  v16 = *(v5 + 5619) + v14;
  if (v16 >= *(v5 + 331))
  {
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
    v47 = 0u;
    v48 = 0u;
    v9 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v22 = *(a1 + 8);
    v23 = *(v22 + 331);
    v24 = fd_name(*(v22 + 220), &v47, 0x100uLL);
    *buf = 136316418;
    v36 = "_data_map_get_data_entry";
    v37 = 1024;
    v38 = 397;
    v39 = 2048;
    v40 = v16;
    v41 = 2048;
    v42 = v23;
    v43 = 2048;
    v44 = v22;
    v45 = 2080;
    v46 = v24;
    v21 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_15:
    v25 = v18;
    goto LABEL_17;
  }

  dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, *(v5 + 5619) + v14, &v31, &v34);
  if (v34 == 1)
  {
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
    v47 = 0u;
    v48 = 0u;
    v9 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v19 = fd_name(*(*(a1 + 8) + 220), &v47, 0x100uLL);
    v20 = *(*(a1 + 8) + 331);
    *buf = 136316418;
    v36 = "_data_map_get_data_entry";
    v37 = 1024;
    v38 = 393;
    v39 = 2080;
    v40 = v19;
    v41 = 2048;
    v42 = v16;
    v43 = 2048;
    v44 = v20;
    v45 = 2048;
    v46 = v31;
    v21 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
    goto LABEL_15;
  }

  if (a3)
  {
    *a3 = (v31 - v15);
  }

  v28 = *(a1 + 8);
  if (*(v28 + 264))
  {
    os_unfair_lock_lock((v28 + 260));
    v29 = *(a1 + 8);
    v30 = *(v29 + 264);
    if (v30)
    {
      bit_vector_set(v30, a2);
      v29 = *(a1 + 8);
    }

    os_unfair_lock_unlock((v29 + 260));
  }

  result = v32 + v15;
LABEL_7:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_unlock(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_rdlock(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_make_read_only(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(v1[1] + 277);
  if (dataMap<unsigned long long,false,true,false>::_data_map_commit(v1, 0))
  {
    goto LABEL_2;
  }

  bzero(v53, 0x400uLL);
  v6 = *(v2[1] + 220);
  if (!v6)
  {
    goto LABEL_2;
  }

  v7 = *(v6 + 44);
  if (v7 == -1)
  {
    goto LABEL_2;
  }

  v8 = fd_name(v6, v53, 0x400uLL);
  if (!v8)
  {
    goto LABEL_2;
  }

  v9 = v8;
  v10 = strlen(v8);
  if (v10 < 8)
  {
    goto LABEL_2;
  }

  v11 = &v9[v10 - 7];
  if (strcmp(v11, ".header"))
  {
    goto LABEL_2;
  }

  strcpy(v11, ".map");
  v12 = v3 ? 3 : 0;
  v13 = fd_create_protected(v7, v9, 1538, v12);
  if (!v13)
  {
    goto LABEL_2;
  }

  v14 = v13;
  v15 = v2[1];
  v16 = *(v15 + 331);
  v17 = (*(v15 + 4483) + 151) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v15 + 4467) + v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (fd_truncate(v13, (v16 + v18 + 15) & 0xFFFFFFFFFFFFFFF8))
  {
    _fd_unlink_with_origin(v14, 0);
    fd_release(v14);
LABEL_2:
    result = 0xFFFFFFFFLL;
    goto LABEL_3;
  }

  v51 = 0;
  v50 = 0u;
  v49 = 0u;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIyLb0ELb1ELb0EE28data_map_make_read_only_implILb0EEENSt3__19enable_ifIXntT_EiE4typeEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_95;
  aBlock[4] = v2;
  v48[0] = v14;
  v44 = v14;
  v48[1] = (v16 + v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v50) = 1;
  BYTE5(v50) = 1;
  *(&v50 + 1) = _Block_copy(aBlock);
  LOBYTE(v51) = 26;
  bzero(v52, 0x1000uLL);
  _windowsMapInit(v48, 1);
  v45 = (v16 + v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  *&v49 = v45;
  Ptr = _windowsGetPtr(v48, 0, 136);
  v20 = _windowsGetPtr(v48, 0x88uLL, v17 - 136);
  v21 = _windowsGetPtr(v48, v17, v18 - v17);
  v22 = *(v2[1] + 307);
  v23 = *(v22 + 76);
  v25 = v22[3];
  v24 = v22[4];
  *(Ptr + 32) = v22[2];
  *(Ptr + 48) = v25;
  *(Ptr + 64) = v24;
  *(Ptr + 76) = v23;
  v26 = v22[1];
  *Ptr = *v22;
  *(Ptr + 16) = v26;
  *(Ptr + 92) = 14;
  *(Ptr + 104) = 136;
  *(Ptr + 112) = v17;
  *(Ptr + 120) = v18;
  memcpy(v20, *(v2[1] + 4499), *(v2[1] + 4483));
  memcpy(v21, *(v2[1] + 4531), *(v2[1] + 4467));
  if (v16)
  {
    for (i = 0; i < v16; i += v28)
    {
      if (v16 - i >= 0x100000)
      {
        v28 = 0x100000;
      }

      else
      {
        v28 = v16 - i;
      }

      v29 = _windowsGetPtr(v48, i + v18, v28);
      fd_pread(*(v2[1] + 315), v29, v28, i);
    }
  }

  *(Ptr + 96) = v45;
  if (v50 >= 1)
  {
    v30 = 0;
    do
    {
      storageWindowSync(v52[v30++], 1);
    }

    while (v30 < v50);
  }

  storageWindowsUnmap(v48);
  fd_release(v44);
  free(*(v2[1] + 307));
  v31 = v2[1];
  *(v31 + 307) = 0;
  _fd_unlink_with_origin(*(v31 + 220), 0);
  fd_release(*(v2[1] + 220));
  v32 = v2[1];
  *(v32 + 220) = 0;
  munmap(*(v32 + 4499), *(v32 + 4491));
  v33 = v2[1];
  *(v33 + 4499) = -1;
  _fd_unlink_with_origin(*(v33 + 236), 0);
  fd_release(*(v2[1] + 236));
  v34 = v2[1];
  *(v34 + 236) = 0;
  munmap(*(v34 + 4531), *(v34 + 4523));
  v35 = v2[1];
  *(v35 + 4531) = -1;
  _fd_unlink_with_origin(*(v35 + 4515), 0);
  fd_release(*(v2[1] + 4515));
  v36 = v2[1];
  *(v36 + 4515) = 0;
  storageWindowsUnmap(v36 + 315);
  v37 = *(v2[1] + 315);
  _fd_unlink_with_origin(v37, 0);
  fd_release(v37);
  if (*(v2[1] + 277))
  {
    v38 = 3;
  }

  else
  {
    v38 = 0;
  }

  v39 = fd_create_protected(v7, v9, 0, v38);
  v40 = v2[1];
  *(v40 + 220) = v39;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 0x40000000;
  v46[2] = ___ZN7dataMapIyLb0ELb1ELb0EE28data_map_make_read_only_implILb0EEENSt3__19enable_ifIXntT_EiE4typeEv_block_invoke_2;
  v46[3] = &__block_descriptor_tmp_96;
  v46[4] = v2;
  *(v40 + 351) = 257;
  *(v40 + 315) = v39;
  *(v40 + 323) = v45;
  *(v40 + 347) = 1;
  *(v40 + 355) = _Block_copy(v46);
  *(v40 + 363) = 26;
  bzero((v40 + 371), 0x1000uLL);
  _windowsMapInit(v2[1] + 315, 1);
  *(v2[1] + 331) = v45;
  v41 = v2[1];
  v42 = _windowsGetPtr(v41 + 315, 0, 128);
  *(v41 + 283) = v42;
  *(v41 + 307) = _windowsGetPtr(v41 + 315, 0, 92);
  *(v41 + 4499) = _windowsGetPtr(v41 + 315, 0x88uLL, v17 - 136);
  v43 = _windowsGetPtr(v41 + 315, v17, v18 - v17);
  result = 0;
  *(v41 + 4531) = v43;
  *(v41 + 5619) = *(v42 + 120);
LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_commit(uint64_t *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 208))(a1))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v32 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v8 = v7;
  v9 = v6;
  v10 = HIDWORD(v6);
  v12 = v11;
  v13 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  LODWORD(v39[0]) = v9;
  *buf = v10;
  v30 = v8;
  v31 = v12;
  if (!_setjmp(v13))
  {
    v17 = *(*(a1[1] + 307) + 16);
    if (v17 == 1)
    {
      goto LABEL_13;
    }

    if (v17)
    {
      v19 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v18 = (*(*a1 + 224))(a1, a2);
    if (!v18)
    {
      v18 = (*(*a1 + 232))(a1, a2);
      if (!v18)
      {
LABEL_13:
        v18 = (*(*a1 + 56))(a1);
        if (!v18)
        {
          v18 = (*(*a1 + 64))(a1);
          if (!v18)
          {
            v18 = (*(*a1 + 72))(a1);
          }
        }
      }
    }

    v19 = v18;
LABEL_18:
    v32 = 1;
    v20 = threadData[9 * LODWORD(v39[0]) + 1] + 320 * *buf;
    *(v20 + 312) = v14;
    v21 = *(v20 + 232);
    if (v21)
    {
      v21(*(v20 + 288));
    }

    dropThreadId(LODWORD(v39[0]), 0, add_explicit + 1);
    v16 = v19;
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v29 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v29, 2u);
  }

  *(v13 + 312) = v14;
  CIOnThreadCleanUpReset(v30);
  dropThreadId(LODWORD(v39[0]), 1, add_explicit + 1);
  CICleanUpReset(LODWORD(v39[0]), v31);
  v16 = 0xFFFFFFFFLL;
LABEL_21:
  if ((v32 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  memset(v39, 0, sizeof(v39));
  v22 = *__error();
  v23 = _SILogForLogForCategory(7);
  v24 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = fd_name(*(a1[1] + 220), v39, 0x100uLL);
    if (a2)
    {
      v26 = "commit";
    }

    else
    {
      v26 = "syncless commit";
    }

    v27 = (*(*a1 + 96))(a1);
    *buf = 136315650;
    v34 = v25;
    v35 = 2080;
    v36 = v26;
    v37 = 2048;
    v38 = v27;
    _os_log_impl(&dword_1C278D000, v23, v24, "%s complete %s with count: %llu", buf, 0x20u);
  }

  *__error() = v22;
  (*(*a1 + 216))(a1);
  result = v16;
LABEL_29:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_commit_shadow_complete(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(v2 + 307);
    if (*(v4 + 16) == 2)
    {
      *(v4 + 44) = *(v4 + 20);
      *(v4 + 60) = *(v4 + 36);
      *(v4 + 16) = 1;
      fd_pwrite(*(v2 + 220), v4, 0x5CuLL, 0);
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_commit_shadow(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_shadow(uint64_t a1)
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

      fd_pwrite(sibling_with_suffix_protected, v4, 0x5CuLL, 0);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_commit_sync(uint64_t a1)
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
      fd_pwrite(*(v2 + 220), v4, 0x5CuLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      return *(*(a1 + 8) + 278);
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_flush(uint64_t *a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_validate(void *a1)
{
  v97 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 104))(a1))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1[1];
    v2 = 1;
    if (*(v3 + 331))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *(v3 + 216);
      while (1)
      {
        v67 = 0;
        v68 = 0;
        v8 = *(v3 + 4539);
        v69 = 0;
        v9 = *(v3 + 4531);
        if (v5 < v8 && (v9 + 1) > 1)
        {
          v14 = (v9 + v4);
          v13 = 1;
        }

        else
        {
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
          v85 = 0u;
          v86 = 0u;
          v84 = 0u;
          memset(v83, 0, sizeof(v83));
          v11 = *__error();
          v12 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v31 = a1[1];
            v32 = fd_name(*(v31 + 220), v83, 0x100uLL);
            *buf = 136316418;
            v72 = "_data_map_get_offset_entry_impl";
            v73 = 1024;
            v74 = 362;
            v75 = 2048;
            v76 = v5;
            v77 = 2048;
            v78 = v8;
            v79 = 2048;
            v80 = v31;
            v81 = 2080;
            v82 = v32;
            _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
          }

          v13 = 0;
          v14 = 0;
          *__error() = v11;
        }

        v70 = 0;
        v15 = a1[1];
        v16 = *(v15 + 5619) + v6;
        if (v16 >= *(v15 + 331))
        {
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
          v85 = 0u;
          v86 = 0u;
          v84 = 0u;
          memset(v83, 0, sizeof(v83));
          v40 = *__error();
          v41 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_47;
          }

          v42 = a1[1];
          v43 = *(v42 + 331);
          v44 = fd_name(*(v42 + 220), v83, 0x100uLL);
          *buf = 136316418;
          v72 = "_data_map_get_data_entry";
          v73 = 1024;
          v74 = 397;
          v75 = 2048;
          v76 = v16;
          v77 = 2048;
          v78 = v43;
          v79 = 2048;
          v80 = v42;
          v81 = 2080;
          v82 = v44;
          v45 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          goto LABEL_77;
        }

        dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v16, &v67, &v70);
        if (v70 == 1)
        {
          break;
        }

        if ((v13 & 1) == 0 || *v14 != v6)
        {
          v33 = *__error();
          v34 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *v83 = 136315394;
            *&v83[4] = "_data_map_validate";
            *&v83[12] = 1024;
            *&v83[14] = 827;
            _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch offset ids ", v83, 0x12u);
          }

          *__error() = v33;
          v35 = *__error();
          v36 = _SILogForLogForCategory(0);
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
          if (v13)
          {
            if (!v37)
            {
              goto LABEL_72;
            }

            v38 = *v14;
            *v83 = 136316418;
            *&v83[4] = "_data_map_validate";
            *&v83[12] = 1024;
            *&v83[14] = 829;
            *&v83[18] = 2048;
            *&v83[20] = v5;
            *&v83[28] = 2048;
            *&v83[30] = v6;
            *&v83[38] = 2048;
            *&v83[40] = v38;
            LOWORD(v84) = 2080;
            *(&v84 + 2) = v68;
            v39 = "%s:%d: sid: %llu so: %ld oo:%ld %s";
LABEL_65:
            v47 = v36;
            v48 = 58;
            goto LABEL_71;
          }

          if (!v37)
          {
            goto LABEL_72;
          }

          *v83 = 136316162;
          *&v83[4] = "_data_map_validate";
          *&v83[12] = 1024;
          *&v83[14] = 831;
          *&v83[18] = 2048;
          *&v83[20] = v5;
          *&v83[28] = 2048;
          *&v83[30] = v6;
          *&v83[38] = 2080;
          *&v83[40] = v68;
          v39 = "%s:%d: offset not found for %llu offset 0x%lx %s";
          goto LABEL_70;
        }

        v17 = v67;
        if (v5)
        {
          v18 = v68;
          v19 = a1[1];
          if (*(v19 + 282) == 1)
          {
            v20 = LegacyHash(&v68[v7], (v67 - v7));
          }

          else
          {
            v20 = commonHash(v67 - v7, &v68[v7]);
          }

          bucket_entry = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v20, v5, 0, 0, *(v19 + 4539));
          v22 = bucket_entry;
          if (!bucket_entry)
          {
            v49 = 0;
            goto LABEL_53;
          }

          if (v5 != *bucket_entry)
          {
            v49 = bucket_entry;
LABEL_53:
            v50 = *__error();
            v51 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *v83 = 136315394;
              *&v83[4] = "_data_map_validate";
              *&v83[12] = 1024;
              *&v83[14] = 841;
              _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ids ", v83, 0x12u);
            }

            *__error() = v50;
            v35 = *__error();
            v52 = _SILogForLogForCategory(0);
            v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
            if (v22)
            {
              if (v53)
              {
                v54 = *v49;
                *v83 = 136316418;
                *&v83[4] = "_data_map_validate";
                *&v83[12] = 1024;
                *&v83[14] = 843;
                *&v83[18] = 2048;
                *&v83[20] = v5;
                *&v83[28] = 2048;
                *&v83[30] = v54;
                *&v83[38] = 2048;
                *&v83[40] = v6;
                LOWORD(v84) = 2080;
                *(&v84 + 2) = v18;
                v55 = "%s:%d: sid: %llu hid: %llu offset: %ld %s";
                v56 = v52;
                v57 = 58;
                goto LABEL_79;
              }
            }

            else if (v53)
            {
              *v83 = 136316162;
              *&v83[4] = "_data_map_validate";
              *&v83[12] = 1024;
              *&v83[14] = 845;
              *&v83[18] = 2048;
              *&v83[20] = v5;
              *&v83[28] = 2048;
              *&v83[30] = v6;
              *&v83[38] = 2080;
              *&v83[40] = v18;
              v55 = "%s:%d: hash entry not found for %llu offset 0x%lx %s";
              v56 = v52;
              v57 = 48;
LABEL_79:
              _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, v55, v83, v57);
            }

            v2 = 0;
            goto LABEL_73;
          }

          v23 = a1[1];
          v24 = dataMap<unsigned long long,false,true,false>::dm_hash(*(v23 + 282), v18, v17);
          v25 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v24, 0, v18, v17, *(v23 + 4539));
          v26 = v25;
          if (!v25)
          {
            v58 = 0;
            goto LABEL_60;
          }

          if (v5 != *v25)
          {
            v58 = v25;
LABEL_60:
            v59 = *__error();
            v60 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *v83 = 136315394;
              *&v83[4] = "_data_map_validate";
              *&v83[12] = 1024;
              *&v83[14] = 855;
              _os_log_error_impl(&dword_1C278D000, v60, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ", v83, 0x12u);
            }

            *__error() = v59;
            v35 = *__error();
            v36 = _SILogForLogForCategory(0);
            v61 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
            if (v26)
            {
              if (!v61)
              {
                goto LABEL_72;
              }

              v62 = *v58;
              *v83 = 136316418;
              *&v83[4] = "_data_map_validate";
              *&v83[12] = 1024;
              *&v83[14] = 857;
              *&v83[18] = 2048;
              *&v83[20] = v5;
              *&v83[28] = 2048;
              *&v83[30] = v62;
              *&v83[38] = 2048;
              *&v83[40] = v6;
              LOWORD(v84) = 2080;
              *(&v84 + 2) = v18;
              v39 = "%s:%d: sid: %llu hid: %llu offset: %ld %s";
              goto LABEL_65;
            }

            if (!v61)
            {
              goto LABEL_72;
            }

            *v83 = 136316162;
            *&v83[4] = "_data_map_validate";
            *&v83[12] = 1024;
            *&v83[14] = 859;
            *&v83[18] = 2048;
            *&v83[20] = v5;
            *&v83[28] = 2048;
            *&v83[30] = v6;
            *&v83[38] = 2080;
            *&v83[40] = v18;
            v39 = "%s:%d: hash entry not found for %llu offset 0x%lx %s";
LABEL_70:
            v47 = v36;
            v48 = 48;
            goto LABEL_71;
          }
        }

        if (v17 < 0x80)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v17 >> 14)
        {
          v28 = 3;
        }

        else
        {
          v28 = v27;
        }

        if (v17 >> 21)
        {
          v29 = 4;
        }

        else
        {
          v29 = v28;
        }

        if (v17 >> 28)
        {
          v30 = 5;
        }

        else
        {
          v30 = v29;
        }

        v6 += (v30 + v17);
        ++v5;
        v3 = a1[1];
        v4 += 16;
        if (v6 >= *(v3 + 331))
        {
          v2 = 1;
          goto LABEL_74;
        }
      }

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
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      memset(v83, 0, sizeof(v83));
      v40 = *__error();
      v41 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      v65 = fd_name(*(a1[1] + 220), v83, 0x100uLL);
      v66 = *(a1[1] + 331);
      *buf = 136316418;
      v72 = "_data_map_get_data_entry";
      v73 = 1024;
      v74 = 393;
      v75 = 2080;
      v76 = v65;
      v77 = 2048;
      v78 = v16;
      v79 = 2048;
      v80 = v66;
      v81 = 2048;
      v82 = v67;
      v45 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_77:
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v45, buf, 0x3Au);
LABEL_47:
      *__error() = v40;
      v35 = *__error();
      v46 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }

      *v83 = 136315394;
      *&v83[4] = "_data_map_validate";
      *&v83[12] = 1024;
      *&v83[14] = 814;
      v39 = "%s:%d: entry exceeds storage";
      v47 = v46;
      v48 = 18;
LABEL_71:
      _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, v39, v83, v48);
LABEL_72:
      v2 = 1;
LABEL_73:
      *__error() = v35;
    }

LABEL_74:
    (*(*a1 + 112))(a1);
  }

  v63 = *MEMORY[0x1E69E9840];
  return v2;
}

void dataMap<unsigned long long,false,true,false>::data_map_destroy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    makeThreadId();
    v2 = *(a1 + 8);
    if ((*(v2 + 283) + 1) >= 2)
    {
      v72 = 0;
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

      v70 = v19;
      v71 = v18;
      v68 = v17;
      v69 = v21;
      if (_setjmp(v22))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v67 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v67, 2u);
        }

        *(v22 + 312) = v23;
        CIOnThreadCleanUpReset(v68);
        dropThreadId(v71, 1, add_explicit + 1);
        CICleanUpReset(v71, v69);
        v25 = 0;
      }

      else
      {
        v52 = *(*(*(a1 + 8) + 283) + 96);
        v72 = 1;
        v53 = threadData[9 * v71 + 1] + 320 * v70;
        *(v53 + 312) = v23;
        v54 = *(v53 + 232);
        if (v54)
        {
          v54(*(v53 + 288));
        }

        dropThreadId(v71, 0, add_explicit + 1);
        v25 = v52;
      }

      v55 = v25;
      if ((v72 & 1) == 0)
      {
        v55 = *(*(a1 + 8) + 291);
      }

      munmap(*(*(a1 + 8) + 283), v55);
      v56 = *(a1 + 8);
      *(v56 + 283) = -1;
      fd_release(*(v56 + 220));
      v57 = *(a1 + 8);
      *(v57 + 220) = 0;
      v58 = *(v57 + 228);
      if (v58)
      {
        fd_release(v58);
        v59 = *(a1 + 8);
        *(v59 + 228) = 0;
        v60 = v59;
      }

      else
      {
        v60 = v57;
      }

      v51 = v60;
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

      v70 = v8;
      v71 = v7;
      v68 = v6;
      v69 = v10;
      if (_setjmp(v11))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v67 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v67, 2u);
        }

        *(v11 + 312) = v12;
        CIOnThreadCleanUpReset(v68);
        dropThreadId(v71, 1, v3 + 1);
        CICleanUpReset(v71, v69);
      }

      else
      {
        v26 = *(a1 + 8);
        v27 = *(v26 + 307);
        if (v27 && !*(v27 + 16))
        {
          v28 = *(a1 + 8);
          if (*(v26 + 274) == 1)
          {
            v29 = v26 + 4499;
            v30 = *v29;
            v31 = 8 * *(v29 + 8);
            fd_system_status_stall_if_busy();
            msync(v30, v31, 4);
            _fd_unlink_with_origin(*(*(a1 + 8) + 236), 0);
            munmap(*(*(a1 + 8) + 4499), *(*(a1 + 8) + 4491));
            v32 = *(a1 + 8);
            *(v32 + 4499) = -1;
            v28 = v32;
          }

          v33 = v28;
          if (*(v28 + 273) == 1)
          {
            storageWindowsKillPages(v28 + 315);
            storageWindowsUnmap(*(a1 + 8) + 315);
            storageWindowsClose(*(a1 + 8) + 315);
            fd_truncate(*(*(a1 + 8) + 315), *(*(*(a1 + 8) + 307) + 20));
            v33 = *(a1 + 8);
          }

          if (*(v33 + 275) == 1)
          {
            v34 = v33 + 4096;
            v35 = *(v34 + 435);
            v36 = 16 * *(v34 + 443);
            fd_system_status_stall_if_busy();
            msync(v35, v36, 4);
            munmap(*(*(a1 + 8) + 4531), *(*(a1 + 8) + 4523));
            v37 = *(a1 + 8);
            *(v37 + 4531) = -1;
            fd_truncate(*(v37 + 4515), 16 * *(v37 + 4539));
          }
        }

        v38 = threadData[9 * v71 + 1] + 320 * v70;
        *(v38 + 312) = v12;
        v39 = *(v38 + 232);
        if (v39)
        {
          v39(*(v38 + 288));
        }

        dropThreadId(v71, 0, v3 + 1);
      }

      v40 = *(a1 + 8);
      v41 = *(v40 + 307);
      if (v41)
      {
        free(v41);
        v42 = *(a1 + 8);
        *(v42 + 307) = 0;
        v40 = v42;
      }

      fd_release(*(v40 + 220));
      v43 = *(a1 + 8);
      *(v43 + 220) = 0;
      v44 = *(v43 + 4531);
      if (v44 != -1)
      {
        munmap(v44, *(v43 + 4523));
        v45 = *(a1 + 8);
        *(v45 + 4531) = -1;
        *(v45 + 4523) = 0;
        v43 = v45;
      }

      fd_release(*(v43 + 4515));
      v46 = *(a1 + 8);
      *(v46 + 4515) = 0;
      storageWindowsUnmap(v46 + 315);
      storageWindowsClose(*(a1 + 8) + 315);
      v47 = *(a1 + 8);
      v48 = *(v47 + 4499);
      if (v48 != -1)
      {
        munmap(v48, *(v47 + 4491));
        v49 = *(a1 + 8);
        *(v49 + 4499) = -1;
        *(v49 + 4491) = 0;
        v47 = v49;
      }

      fd_release(*(v47 + 236));
      v50 = *(a1 + 8);
      *(v50 + 236) = 0;
      v51 = v50;
    }

    v61 = *(v51 + 228);
    if (v61)
    {
      fd_release(v61);
      v62 = *(a1 + 8);
      *(v62 + 228) = 0;
      v51 = v62;
    }

    v63 = *(v51 + 264);
    v64 = v51;
    if (v63)
    {
      v65 = v63[2];
      if (v65)
      {
        CFRelease(v65);
      }

      free(v63);
      v66 = *(a1 + 8);
      *(v66 + 264) = 0;
      v64 = v66;
    }

    if ((v64[4].__opaque[12] & 1) == 0)
    {
      db_rwlock_destroy(v64);
      v64 = *(a1 + 8);
    }

    free(v64);
  }
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_init(uint64_t (***a1)(void, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_init_with_ctx(uint64_t a1, uint64_t a2)
{
  v205 = *MEMORY[0x1E69E9840];
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

  v181 = v9;
  v182 = v8;
  v179 = v7;
  v180 = v11;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __str, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v179);
    dropThreadId(v182, 1, add_explicit + 1);
    CICleanUpReset(v182, v180);
    result = 0;
    goto LABEL_59;
  }

  v170 = v13;
  v16 = *a2;
  __source = *(a2 + 8);
  v17 = *(a2 + 20);
  v167 = *(a2 + 16);
  bzero(__str, 0x400uLL);
  v18 = malloc_type_calloc(1uLL, 0x1603uLL, 0x10A0040AAFE2AE5uLL);
  *(a1 + 8) = v18;
  *(v18 + 63) = *(a2 + 72);
  *(v18 + 4587) = *(a2 + 24);
  *(v18 + 244) = *(a2 + 56);
  *(v18 + 65) = 0;
  v18[277] = BYTE1(v17) & 1;
  v18[276] = (v17 & 8) != 0;
  *(v18 + 283) = -1;
  *(v18 + 307) = 0;
  *(v18 + 4531) = -1;
  *(v18 + 4499) = -1;
  v171 = add_explicit;
  if ((v17 & 8) == 0)
  {
    *(v18 + 26) = 0;
    *(v18 + 11) = 0u;
    *(v18 + 12) = 0u;
    *(v18 + 9) = 0u;
    *(v18 + 10) = 0u;
    *(v18 + 7) = 0u;
    *(v18 + 8) = 0u;
    *(v18 + 5) = 0u;
    *(v18 + 6) = 0u;
    *(v18 + 3) = 0u;
    *(v18 + 4) = 0u;
    *(v18 + 1) = 0u;
    *(v18 + 2) = 0u;
    *v18 = 0u;
    pthread_mutex_init(v18, 0);
    v18 = *(a1 + 8);
  }

  v19 = *(a2 + 32);
  *(v18 + 347) = 0;
  *(v18 + 5619) = 0;
  *(v18 + 5627) = v19;
  *(v18 + 323) = 0;
  *(v18 + 315) = 0;
  strlcpy(v18 + 4595, __source, 0x400uLL);
  v165 = v17 & 2;
  if ((v17 & 2) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 536871426;
  }

  v178 = 0;
  makeThreadId();
  v169 = a1;
  v168 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v21 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, v168 + 1);
  v23 = v22;
  v24 = v21;
  v25 = HIDWORD(v21);
  v27 = v26;
  v28 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
  v29 = *(v28 + 312);
  v30 = *(v28 + 224);
  if (v30)
  {
    v30(*(v28 + 288));
  }

  v176 = v25;
  v177 = v24;
  v174 = v23;
  v175 = v27;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v189 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v189, 2u);
    }

    *(v28 + 312) = v29;
    CIOnThreadCleanUpReset(v174);
    dropThreadId(v177, 1, v168 + 1);
    CICleanUpReset(v177, v175);
    v31 = v170;
    v32 = v169;
    if (v178)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!__source || (v33 = strlen(__source), v16 == -1) || v33 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v56 = *__error();
    v57 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *v189 = 136315394;
      *&v189[4] = "data_map_init_with_ctx";
      *&v189[12] = 1024;
      *&v189[14] = 1111;
      _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: param error", v189, 0x12u);
    }

LABEL_40:
    v58 = v56;
    v31 = v170;
LABEL_41:
    v32 = v169;
LABEL_42:
    *__error() = v58;
LABEL_43:
    v59 = 0;
    goto LABEL_44;
  }

  v166 = v17;
  if ((v17 & 2) != 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = ((v17 & 1) << 10) | 0x20000202;
  }

  if ((v17 & 3) != 2)
  {
    if ((v17 & 0x100) != 0)
    {
      v76 = 3;
    }

    else
    {
      v76 = 0;
    }

LABEL_67:
    snprintf(__str, 0x400uLL, "%s.header", __source);
    v79 = fd_create_protected(v16, __str, v34, 3u);
    *(*(v169 + 8) + 220) = v79;
    *(*(v169 + 8) + 299) = fd_lseek(v79, 0, 2);
    snprintf(__str, 0x400uLL, "%s.data", __source);
    v80 = fd_create_protected(v16, __str, v34, v76);
    v81 = v80;
    if ((v17 & 3) != 0 || (memset(&buf, 0, sizeof(buf)), fd_stat(v80, &buf)) || (v82 = buf.st_blocks << 9, buf.st_blocks << 9 <= buf.st_size + 0x400000))
    {
      v84 = v81;
    }

    else
    {
      bzero(v189, 0x400uLL);
      v163 = *__error();
      v83 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *v183 = 134218498;
        v184 = v82;
        v185 = 2048;
        st_size = buf.st_size;
        v187 = 2080;
        v188 = __str;
        _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "found allocated size %lld for %lld %s", v183, 0x20u);
      }

      *__error() = v163;
      snprintf(v189, 0x400uLL, "tmp.%s.data.1", __source);
      v84 = fd_create_protected(v16, v189, 1538, v76);
      if (fd_copyfile(v81, v84, 0) || (snprintf(v189, 0x400uLL, "tmp.%s.data.2", __source), fd_rename(v81, v189)) || fd_rename(v84, __str))
      {
        v85 = v84;
        v84 = v81;
      }

      else
      {
        _fd_unlink_with_origin(v81, 0);
        fd_release(v81);
        v85 = 0;
      }

      v86 = v85;
      _fd_unlink_with_origin(v85, 0);
      fd_release(v86);
    }

    v87 = fd_lseek(v84, 0, 2);
    v88 = *(v169 + 8);
    v172[0] = MEMORY[0x1E69E9820];
    v172[1] = 0x40000000;
    v172[2] = ___ZN7dataMapIyLb0ELb1ELb0EE22data_map_init_with_ctxEP17data_map_init_ctx_block_invoke_79;
    v172[3] = &__block_descriptor_tmp_80_6103;
    v172[4] = v169;
    *(v88 + 351) = (v17 & 2) >> 1;
    *(v88 + 315) = v84;
    *(v88 + 323) = v87;
    *(v88 + 347) = 1;
    *(v88 + 352) = 1;
    *(v88 + 355) = _Block_copy(v172);
    *(v88 + 363) = 26;
    bzero((v88 + 371), 0x1000uLL);
    snprintf(__str, 0x400uLL, "%s.offsets", __source);
    v89 = fd_create_protected(v16, __str, v34, 3u);
    *(*(v169 + 8) + 4515) = v89;
    *(*(v169 + 8) + 4467) = fd_lseek(v89, 0, 2);
    snprintf(__str, 0x400uLL, "%s.buckets", __source);
    v90 = fd_create_protected(v16, __str, 514, 3u);
    *(*(v169 + 8) + 236) = v90;
    v91 = fd_lseek(v90, 0, 2);
    v92 = *(v169 + 8);
    *(v92 + 4483) = v91;
    if (v17)
    {
      v31 = v170;
      if (fd_truncate(*(v92 + 220), 92) == -1)
      {
        v118 = *__error();
        v119 = _SILogForLogForCategory(0);
        v32 = v169;
        if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_153;
        }

        *v189 = 136315394;
        *&v189[4] = "data_map_init_with_ctx";
        *&v189[12] = 1024;
        *&v189[14] = 1241;
        v120 = "%s:%d: fd_truncate error";
      }

      else
      {
        v95 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
        v32 = v169;
        v96 = *(v169 + 8);
        *(v96 + 299) = 92;
        *(v96 + 307) = v95;
        *v95 = 0x446174615064;
        *(v95 + 12) = v167;
        *(v95 + 2) = 14;
        *(v95 + 20) = 0;
        v97 = MEMORY[0x1E69E9AC8];
        if (fd_truncate(*(v96 + 4515), *MEMORY[0x1E69E9AC8] & 0xFFFFFFFFFFFFFFF0) == -1)
        {
          v118 = *__error();
          v119 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_153;
          }

          *v189 = 136315394;
          *&v189[4] = "data_map_init_with_ctx";
          *&v189[12] = 1024;
          *&v189[14] = 1267;
          v120 = "%s:%d: fd_truncate error";
        }

        else
        {
          v98 = fd_mmap(*(*(v169 + 8) + 4515));
          v99 = *(v169 + 8);
          *(v99 + 4531) = v98;
          if (v98 == -1)
          {
            v118 = *__error();
            v119 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_153;
            }

            *v189 = 136315394;
            *&v189[4] = "data_map_init_with_ctx";
            *&v189[12] = 1024;
            *&v189[14] = 1272;
            v120 = "%s:%d: offsets fd_mmap error";
          }

          else
          {
            v100 = v99;
            v101 = v99 + 4096;
            *(v101 + 427) = 0x100000;
            v102 = *v97;
            *(v101 + 371) = *v97 & 0xFFFFFFFFFFFFFFF0;
            *(v101 + 379) = v102 >> 4;
            v103 = v102 & 0xFFFFFFFFFFFFFFF8;
            if (fd_truncate(*(v100 + 236), v102 & 0xFFFFFFFFFFFFFFF8) == -1)
            {
              v118 = *__error();
              v119 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_153;
              }

              *v189 = 136315394;
              *&v189[4] = "data_map_init_with_ctx";
              *&v189[12] = 1024;
              *&v189[14] = 1282;
              v120 = "%s:%d: fd_truncate error";
            }

            else
            {
              v104 = fd_mmap(*(*(v169 + 8) + 236));
              v105 = *(v169 + 8);
              *(v105 + 4499) = v104;
              if (v104 == -1)
              {
                v118 = *__error();
                v119 = _SILogForLogForCategory(0);
                if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_153;
                }

                *v189 = 136315394;
                *&v189[4] = "data_map_init_with_ctx";
                *&v189[12] = 1024;
                *&v189[14] = 1288;
                v120 = "%s:%d: hash fd_mmap error";
              }

              else
              {
                *(v105 + 4483) = v103;
                *(v105 + 4491) = 0x100000;
                v106 = *v97;
                v107 = *v97 >> 3;
                *(*(v105 + 307) + 28) = v107;
                *(v105 + 4507) = v107;
                if (_storageWindowsSetFileSize((v105 + 315), v106))
                {
                  data_entry_store<unsigned long long,false,true,false>(*(v169 + 8) + 315, dword_1E8194788);
                  v108 = *(v169 + 8);
                  v109 = *(v108 + 307);
                  *(v109 + 20) = *(v108 + 331);
                  v110 = *(v108 + 4531);
                  v111 = (v109 + 36);
                  *v110 = 0;
                  v110[1] = 0;
                  v112 = v108;
                  goto LABEL_134;
                }

                v118 = *__error();
                v119 = _SILogForLogForCategory(0);
                if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_153;
                }

                *v189 = 136315394;
                *&v189[4] = "data_map_init_with_ctx";
                *&v189[12] = 1024;
                *&v189[14] = 1300;
                v120 = "%s:%d: fd_truncate error";
              }
            }
          }
        }
      }
    }

    else
    {
      if (*(v92 + 299) <= 0x5BuLL)
      {
        v56 = *__error();
        v93 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v32 = v169;
          v94 = *(*(v169 + 8) + 299);
          *v189 = 136315650;
          *&v189[4] = "data_map_init_with_ctx";
          *&v189[12] = 1024;
          *&v189[14] = 1322;
          *&v189[18] = 2048;
          *&v189[20] = v94;
          _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, "%s:%d: invalid header size %ld", v189, 0x1Cu);
          v58 = v56;
          v31 = v170;
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v113 = v17;
      v114 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
      v32 = v169;
      v115 = *(v169 + 8);
      *(v115 + 307) = v114;
      v116 = (v17 >> 2) & 1;
      if (v166 < 0)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v115 + 220), ".shadow", 0);
        v115 = *(v169 + 8);
        v117 = v165;
        if (sibling_with_suffix_protected)
        {
          v122 = sibling_with_suffix_protected;
          v123 = (v113 >> 2) & 1;
          if (!fd_copyfile(sibling_with_suffix_protected, *(v115 + 220), 0))
          {
            v123 = 0;
          }

          fd_release(v122);
          v115 = *(v169 + 8);
          v116 = v123;
        }

        v31 = v170;
      }

      else
      {
        v31 = v170;
        v117 = v165;
      }

      if (fd_pread(*(v115 + 220), *(v115 + 307), 0x5CuLL, 0) == 92)
      {
        *(*(v169 + 8) + 331) = *(*(*(v169 + 8) + 307) + 20);
        v124 = *(v169 + 8);
        v125 = (v124 + 4515);
        v126 = *(*(v124 + 307) + 36);
        v125[3] = v126;
        fd_truncate(*v125, 16 * v126);
        fd_truncate(*(*(v169 + 8) + 4515), *(*(v169 + 8) + 4467));
        v127 = *(v169 + 8);
        *(v127 + 4475) = *(v127 + 4467) >> 4;
        v128 = *(v127 + 307);
        *(v127 + 4507) = *(v128 + 28);
        *(v127 + 4563) = *(v128 + 68);
        *(v127 + 4579) = *(v128 + 84);
        *(v127 + 282) = *(v128 + 8) < 9u;
        if (v116)
        {
          v129 = *(v128 + 20);
          v130 = *(v128 + 44);
          if (v129 < v130)
          {
            goto LABEL_43;
          }

          if (v130 == v129)
          {
            v131 = v128;
            v132 = v127;
          }

          else
          {
            if (!v117)
            {
              *(v128 + 20) = v130;
            }

            *(v127 + 331) = v130;
            v132 = *(v169 + 8);
            v131 = *(v132 + 307);
          }

          v133 = *(v132 + 4539);
          v134 = *(v131 + 60);
          if (v133 < v134)
          {
            goto LABEL_43;
          }

          if (v133 != v134)
          {
            if (!v117)
            {
              *(v131 + 36) = v134;
              *(v131 + 28) = 0;
              *(v131 + 20) = *(v131 + 44);
            }

            *(v132 + 4539) = v134;
            *(v132 + 4507) = 0;
          }

          v127 = v132;
        }

        v135 = MEMORY[0x1E69E9AC8];
        if (((*(v127 + 4467) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) <= 0x100000)
        {
          v136 = 0x100000;
        }

        else
        {
          v136 = (*(v127 + 4467) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        }

        v137 = fd_mmap(*(v127 + 4515));
        v138 = *(v169 + 8);
        *(v138 + 4531) = v137;
        if (v137 == -1)
        {
          v118 = *__error();
          v119 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_153;
          }

          *v189 = 136315394;
          *&v189[4] = "data_map_init_with_ctx";
          *&v189[12] = 1024;
          *&v189[14] = 1398;
          v120 = "%s:%d: offset fd_mmap error";
        }

        else
        {
          *(v138 + 4523) = v136;
          if (((*(v138 + 4483) + *v135 - 1) & -*v135) <= 0x100000)
          {
            v139 = 0x100000;
          }

          else
          {
            v139 = (*(v138 + 4483) + *v135 - 1) & -*v135;
          }

          v140 = fd_mmap(*(v138 + 236));
          v141 = *(v169 + 8);
          *(v141 + 4499) = v140;
          if (v140 != -1)
          {
            v112 = v141;
            *(v141 + 4491) = v139;
            v142 = *(v141 + 307);
            v143 = *(v142 + 36);
            v111 = (v142 + 36);
            if (v143)
            {
LABEL_135:
              v54 = v112;
              if ((v166 & 0x10) != 0)
              {
                v54 = v32[1];
              }

              v55 = 0;
              goto LABEL_138;
            }

LABEL_134:
            *v111 = 1;
            *(v112 + 4539) = 1;
            goto LABEL_135;
          }

          v118 = *__error();
          v119 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_153;
          }

          *v189 = 136315394;
          *&v189[4] = "data_map_init_with_ctx";
          *&v189[12] = 1024;
          *&v189[14] = 1407;
          v120 = "%s:%d: offset fd_mmap error";
        }
      }

      else
      {
        v118 = *__error();
        v119 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_153;
        }

        *v189 = 136315394;
        *&v189[4] = "data_map_init_with_ctx";
        *&v189[12] = 1024;
        *&v189[14] = 1341;
        v120 = "%s:%d: header pread error";
      }
    }

LABEL_151:
    v148 = v119;
    v149 = 18;
    goto LABEL_152;
  }

  snprintf(__str, 0x400uLL, "%s.map", __source);
  if ((v17 & 0x100) != 0)
  {
    v35 = 3;
  }

  else
  {
    v35 = 0;
  }

  v36 = fd_create_protected(v16, __str, v20, v35);
  *(*(v169 + 8) + 220) = v36;
  v37 = fd_lseek(v36, 0, 2);
  v38 = *(v169 + 8);
  *(v38 + 299) = v37;
  v39 = v37 - 129;
  v40 = *(v38 + 220);
  if (v39 > 0xFFFFFFFFFFFFFF7DLL)
  {
    fd_release(v40);
    *(*(v169 + 8) + 299) = 0;
    v76 = v35;
    goto LABEL_67;
  }

  v41 = fd_mmap(v40);
  v42 = *(v169 + 8);
  *(v42 + 283) = v41;
  v32 = v169;
  if (v41 == -1)
  {
    v59 = 0;
    v31 = v170;
    goto LABEL_44;
  }

  v43 = *(v42 + 299);
  *(v42 + 291) = v43;
  v31 = v170;
  if (v41[12] != v43)
  {
    goto LABEL_43;
  }

  *(v42 + 307) = v41;
  v44 = v41[13];
  if (v44 >= v43)
  {
    goto LABEL_43;
  }

  v45 = v41[14];
  if (v45 >= v43)
  {
    goto LABEL_43;
  }

  v46 = v41[15];
  if (v46 >= v43)
  {
    goto LABEL_43;
  }

  *(v42 + 4539) = *(v41 + 36);
  *(v42 + 4499) = v41 + v44;
  *(v42 + 4507) = *(v41 + 28);
  *(v42 + 4531) = v41 + v45;
  v47 = *(v42 + 220);
  v48 = *(v41 + 20) + v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIyLb0ELb1ELb0EE22data_map_init_with_ctxEP17data_map_init_ctx_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_74_6102;
  aBlock[4] = v169;
  *(v42 + 351) = 257;
  *(v42 + 315) = v47;
  *(v42 + 323) = v48;
  *(v42 + 347) = 1;
  *(v42 + 355) = _Block_copy(aBlock);
  *(v42 + 363) = 26;
  bzero((v42 + 371), 0x1000uLL);
  v49 = *(v169 + 8);
  v50 = *(*(v49 + 283) + 120);
  *(v49 + 5619) = v50;
  *(v49 + 331) = *(*(v49 + 307) + 20) + v50;
  v51 = *(v169 + 8);
  v52 = (*(*(v51 + 283) + 120) - *(*(v51 + 283) + 112)) >> 4;
  if (*(v51 + 4475) > *(v51 + 4539))
  {
    v52 = *(v51 + 4539);
  }

  *(v51 + 4475) = v52;
  v53 = *(v51 + 307);
  *(v51 + 4563) = *(v53 + 68);
  *(v51 + 4579) = *(v53 + 84);
  *(v51 + 282) = *(v53 + 8) < 9u;
  v54 = v51;
  v55 = 1;
LABEL_138:
  if (*(v54 + 4475) < *(v54 + 4539))
  {
    v118 = *__error();
    v144 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
    {
      v145 = v32[1];
      v146 = *(v145 + 4475);
      v147 = *(v145 + 4539);
      *v189 = 136315906;
      *&v189[4] = "data_map_init_with_ctx";
      *&v189[12] = 1024;
      *&v189[14] = 1431;
      *&v189[18] = 2048;
      *&v189[20] = v146;
      *&v189[28] = 2048;
      *&v189[30] = v147;
      v120 = "%s:%d: invalid offset size 1 - %ld %llu";
      v148 = v144;
      v149 = 38;
LABEL_152:
      _os_log_error_impl(&dword_1C278D000, v148, OS_LOG_TYPE_ERROR, v120, v189, v149);
      goto LABEL_153;
    }

    goto LABEL_153;
  }

  v150 = *(v54 + 307);
  if (*v150 != 0x446174615064)
  {
    v118 = *__error();
    v119 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_153;
    }

    *v189 = 136315394;
    *&v189[4] = "data_map_init_with_ctx";
    *&v189[12] = 1024;
    *&v189[14] = 1440;
    v120 = "%s:%d: invalid offset signature";
    goto LABEL_151;
  }

  v151 = *(v150 + 8);
  if (v151 <= 0xD)
  {
    v118 = *__error();
    v152 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
    {
      *v189 = 136315650;
      *&v189[4] = "data_map_init_with_ctx";
      *&v189[12] = 1024;
      *&v189[14] = 1450;
      *&v189[18] = 1024;
      *&v189[20] = v151;
      v120 = "%s:%d: invalid version %d";
      v148 = v152;
      v149 = 24;
      goto LABEL_152;
    }

LABEL_153:
    v58 = v118;
    goto LABEL_42;
  }

  if (*(v150 + 12) != v167)
  {
    v118 = *__error();
    v153 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_153;
    }

    v154 = *(*(v32[1] + 307) + 12);
    *v189 = 136315906;
    *&v189[4] = "data_map_init_with_ctx";
    *&v189[12] = 1024;
    *&v189[14] = 1454;
    *&v189[18] = 1024;
    *&v189[20] = v154;
    *&v189[24] = 1024;
    *&v189[26] = v167;
    v120 = "%s:%d: invalid extra_size %d %d";
    v148 = v153;
    v149 = 30;
    goto LABEL_152;
  }

  *(v54 + 216) = v167;
  if (v55)
  {
    v59 = 1;
    goto LABEL_44;
  }

  if (*(v54 + 299) <= 0x5BuLL)
  {
    v155 = *__error();
    v156 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
    {
      v32 = v169;
      v157 = *(*(v169 + 8) + 299);
      *v189 = 136315906;
      *&v189[4] = "data_map_init_with_ctx";
      *&v189[12] = 1024;
      *&v189[14] = 1462;
      *&v189[18] = 2048;
      *&v189[20] = v157;
      *&v189[28] = 2048;
      *&v189[30] = 92;
      _os_log_error_impl(&dword_1C278D000, v156, OS_LOG_TYPE_ERROR, "%s:%d: invalid header size %llu < %lu", v189, 0x26u);
      v58 = v155;
      v31 = v170;
      goto LABEL_42;
    }

    goto LABEL_176;
  }

  if (*(v54 + 323) < *(v54 + 331))
  {
    v155 = *__error();
    v158 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      *v189 = 136315394;
      *&v189[4] = "data_map_init_with_ctx";
      *&v189[12] = 1024;
      *&v189[14] = 1468;
      v159 = "%s:%d: invalid storage size 1";
LABEL_179:
      _os_log_error_impl(&dword_1C278D000, v158, OS_LOG_TYPE_ERROR, v159, v189, 0x12u);
      goto LABEL_176;
    }

    goto LABEL_176;
  }

  if (v166 < 0 || !*(v150 + 16) || (v160 = *(v54 + 4507)) == 0 || (v161 = *(v54 + 4483), v161 < 8 * v160))
  {
    if (!dataMap<unsigned long long,false,true,false>::_data_map_rehash(v169))
    {
      v155 = *__error();
      v158 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        *v189 = 136315394;
        *&v189[4] = "data_map_init_with_ctx";
        *&v189[12] = 1024;
        *&v189[14] = 1475;
        v159 = "%s:%d: re-build hash error";
        goto LABEL_179;
      }

      goto LABEL_176;
    }

    v162 = *(v169 + 8);
    v161 = *(v162 + 4483);
    v160 = *(v162 + 4507);
  }

  if (v161 < 8 * v160)
  {
    v155 = *__error();
    v158 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      *v189 = 136315394;
      *&v189[4] = "data_map_init_with_ctx";
      *&v189[12] = 1024;
      *&v189[14] = 1482;
      v159 = "%s:%d: invalid hash size 1";
      goto LABEL_179;
    }

LABEL_176:
    v58 = v155;
    v31 = v170;
    goto LABEL_41;
  }

  v59 = 1;
  v31 = v170;
  v32 = v169;
LABEL_44:
  v178 = 1;
  v60 = threadData[9 * v177 + 1] + 320 * v176;
  *(v60 + 312) = v29;
  v61 = *(v60 + 232);
  if (v61)
  {
    v61(*(v60 + 288));
  }

  dropThreadId(v177, 0, v168 + 1);
  if ((v178 & 1) == 0)
  {
LABEL_53:
    v71 = *__error();
    v72 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v77 = fd_realpath(*(v32[1] + 220), __str);
      *&v189[4] = "data_map_init_with_ctx";
      v78 = "";
      *v189 = 136315650;
      if (v77)
      {
        v78 = v77;
      }

      *&v189[12] = 1024;
      *&v189[14] = 1496;
      *&v189[18] = 2080;
      *&v189[20] = v78;
      _os_log_error_impl(&dword_1C278D000, v72, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", v189, 0x1Cu);
    }

    *__error() = v71;
    goto LABEL_55;
  }

  if (v59)
  {
    v62 = v32[1];
    if (v62)
    {
      v63 = v62 + 4096;
      v64 = *(v63 + 443) - 1;
      *(v63 + 451) = v64;
      *(v63 + 459) = v64;
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      v190 = 0u;
      memset(v189, 0, sizeof(v189));
      v65 = *__error();
      v66 = _SILogForLogForCategory(7);
      v67 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = fd_name(*(v32[1] + 220), v189, 0x100uLL);
        v69 = (*(*v32 + 96))(v32);
        buf.st_dev = 136315394;
        *&buf.st_mode = v68;
        WORD2(buf.st_ino) = 2048;
        *(&buf.st_ino + 6) = v69;
        _os_log_impl(&dword_1C278D000, v66, v67, "Opened map %s with counts: %llu", &buf, 0x16u);
      }

      *__error() = v65;
    }

    v70 = 1;
    goto LABEL_56;
  }

LABEL_55:
  (*(*v32 + 16))(v32);
  v32[1] = 0;
  v70 = 0;
LABEL_56:
  v73 = threadData[9 * v182 + 1] + 320 * v181;
  *(v73 + 312) = v31;
  v74 = *(v73 + 232);
  if (v74)
  {
    v74(*(v73 + 288));
  }

  dropThreadId(v182, 0, v171 + 1);
  result = v70;
LABEL_59:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *convertCommaSeparatedNumberTokenWithNumberFormatter(const __CFString *a1)
{
  if (!a1)
  {
    return &stru_1F4284FD0;
  }

  v2 = &stru_1F4284FD0;
  if ((CFStringGetLength(a1) - 4) <= 0x13)
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    v4 = [v3 localeIdentifier];
    if (v4)
    {
      v5 = v4;
      os_unfair_lock_lock(&copyNumberFormatters_sUnfairLock);
      if (copyNumberFormatters_sFormatters)
      {
        v6 = *(copyNumberFormatters_sFormatters + 8);
      }

      else
      {
        v6 = 0;
      }

      if ([objc_msgSend(v6 "localeIdentifier")])
      {
        v7 = copyNumberFormatters_sFormatters;
        os_unfair_lock_unlock(&copyNumberFormatters_sUnfairLock);
        if (v7)
        {
          goto LABEL_17;
        }
      }

      else
      {
        os_unfair_lock_unlock(&copyNumberFormatters_sUnfairLock);
      }

      os_unfair_lock_lock(&copyNumberFormatters_sUnfairLock);
      if (copyNumberFormatters_sFormatters)
      {
        v8 = *(copyNumberFormatters_sFormatters + 8);
      }

      else
      {
        v8 = 0;
      }

      v9 = [objc_msgSend(v8 "localeIdentifier")];
      v10 = copyNumberFormatters_sFormatters;
      if (v9)
      {
        v11 = copyNumberFormatters_sFormatters;
        v10 = 0;
      }

      else
      {
        v11 = [[PRQueryNumberFormatters alloc] initWithLocale:v3];
        copyNumberFormatters_sFormatters = v11;
      }

      v7 = v11;
      os_unfair_lock_unlock(&copyNumberFormatters_sUnfairLock);

      if (v7)
      {
LABEL_17:
        v12 = v7 + 5;
        v13 = [v7[5] numberFromString:a1];
        if (v13)
        {
          v14 = v13;
          v15 = [v7[4] stringFromNumber:v13];
          if (([v15 isEqualToString:a1] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v12 = v7 + 3;
          v16 = [v7[3] numberFromString:a1];
          if (!v16)
          {
            v15 = 0;
            goto LABEL_25;
          }

          v14 = v16;
          v15 = [v7[2] stringFromNumber:v16];
          if (![v15 isEqualToString:a1])
          {
LABEL_25:

LABEL_26:
            if (v15)
            {
              return v15;
            }

            return v2;
          }
        }

        v15 = [*v12 stringFromNumber:v14];
        goto LABEL_25;
      }
    }

    v15 = 0;
    goto LABEL_26;
  }

  return v2;
}

_BYTE *packPostingChunkUpdatesWithType(_BYTE *result, unint64_t *a2, unsigned int a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    v5 = result;
    v6 = 0;
    v7 = a3;
    do
    {
      if (v6)
      {
        packRelativeVDocID(v5, v3);
      }

      else
      {
        v10 = *(v5 + 8);
        v9 = *(v5 + 16);
        if (v9 + 10 > v10)
        {
          do
          {
            v10 *= 2;
          }

          while (v10 < v9 + 10);
          *(v5 + 8) = v10;
          v11 = malloc_type_realloc(*v5, v10, 0xF29073FuLL);
          *v5 = v11;
          v9 = *(v5 + 16);
        }

        else
        {
          v11 = *v5;
        }

        v12 = writeVInt64(v11, v9, v3);
        *(v5 + 16) = v12;
        *(v5 + 24) = v3;
        v13 = *(v5 + 8);
        if (v12 + 10 > v13)
        {
          do
          {
            v13 *= 2;
          }

          while (v13 < v12 + 10);
          *(v5 + 8) = v13;
          v15 = malloc_type_realloc(*v5, v13, 0xF29073FuLL);
          *v5 = v15;
          v14 = *(v5 + 16);
        }

        else
        {
          v14 = v12;
          v15 = *v5;
        }

        v16 = writeVInt64(v15, v14, v3);
        *(v5 + 16) = v16;
        *(v5 + 24) = v3;
        v17 = *(v5 + 8);
        if (v16 + 10 > v17)
        {
          do
          {
            v17 *= 2;
          }

          while (v17 < v16 + 10);
          *(v5 + 8) = v17;
          v19 = malloc_type_realloc(*v5, v17, 0xF29073FuLL);
          *v5 = v19;
          v18 = *(v5 + 16);
        }

        else
        {
          v18 = v16;
          v19 = *v5;
        }

        *(v5 + 16) = writeVInt64(v19, v18, v7);
      }

      v8 = v4[1];
      ++v4;
      v3 = v8;
      v6 = 1;
    }

    while (v8);
    v20 = *(v5 + 8);
    v21 = *(v5 + 16);
    if (v21 + 10 > v20)
    {
      do
      {
        v20 *= 2;
      }

      while (v20 < v21 + 10);
      *(v5 + 8) = v20;
      result = malloc_type_realloc(*v5, v20, 0xF29073FuLL);
      *v5 = result;
      v21 = *(v5 + 16);
    }

    else
    {
      result = *v5;
    }

    result[v21] = 0;
    *(v5 + 16) = v21 + 1;
    *(v5 + 24) = 0;
  }

  return result;
}

uint64_t packRelativeVDocID(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 <= a2)
  {
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 570, "rb->current > docID", v11);
    free(v10);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 + 10 > v6)
  {
    do
    {
      v6 *= 2;
    }

    while (v6 < v5 + 10);
    *(a1 + 8) = v6;
    v7 = malloc_type_realloc(*a1, v6, 0xF29073FuLL);
    *a1 = v7;
    v5 = *(a1 + 16);
    v2 = *(a1 + 24);
  }

  else
  {
    v7 = *a1;
  }

  result = writeVInt64(v7, v5, v2 - a2);
  *(a1 + 16) = result;
  *(a1 + 24) = a2;
  return result;
}

void si_analytics_log_6257(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "%s:%u: failed assertion '%s' %s Offset past bounds; incoming %ld, current %ld, buffer length %ld, val %llu from %d", &a9);
  SISetCrashCStr(v10[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v12 = v10[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v10[0]);
  v9 = *MEMORY[0x1E69E9840];
}

unint64_t PostingChunkEnumeratorNextDocID(unint64_t *a1, int *a2)
{
  v98 = 0;
  for (LODWORD(v3) = *(a1 + 9); ; LODWORD(v3) = 4)
  {
    while (1)
    {
LABEL_2:
      while (v3 > 3)
      {
        if ((v3 - 5) >= 2)
        {
          if (v3 != 4)
          {
            goto LABEL_118;
          }

          v14 = a1[1];
          if (v14 >= *a1)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
LABEL_64:
              v37 = 0;
              *(a1 + 8) = v24 - 1;
              a1[1] = v14 - 1;
              goto LABEL_73;
            }

            while (1)
            {
              v25 = a1[3];
              if (v98 >= v25)
              {
                goto LABEL_118;
              }

              v26 = a1[2];
              if (v98 + 5 <= v25)
              {
                v29 = v98 + 1;
                v28 = *(v26 + v98);
                if (*(v26 + v98) < 0)
                {
                  v30 = *(v26 + v29);
                  v31 = *(v26 + v29);
                  if (v30 < 0)
                  {
                    v32 = *(v26 + v98 + 2);
                    if (*(v26 + v98 + 2) < 0)
                    {
                      v33 = *(v26 + v98 + 3);
                      if (*(v26 + v98 + 3) < 0)
                      {
                        v34 = *(v26 + v98 + 4);
                        if (v34 < 0)
                        {
                          goto LABEL_127;
                        }

                        v28 = ((v33 & 0x7F) << 21) | (v34 << 28) | ((v32 & 0x7F) << 14) | ((v31 & 0x7F) << 7) | v28 & 0x7F;
                        v98 += 5;
                      }

                      else
                      {
                        v28 = ((v32 & 0x7F) << 14) | (v33 << 21) | ((v31 & 0x7F) << 7) | v28 & 0x7F;
                        v98 += 4;
                      }
                    }

                    else
                    {
                      v28 = ((v31 & 0x7F) << 7) | (v32 << 14) | v28 & 0x7F;
                      v98 += 3;
                    }
                  }

                  else
                  {
                    v28 = v28 & 0x7F | (v31 << 7);
                    v98 += 2;
                  }
                }

                else
                {
                  ++v98;
                }
              }

              else
              {
                v27 = a1;
                v28 = _protectedReadVInt32(a1[2], &v98, v25);
                a1 = v27;
                v14 = v27[1];
              }

              a1[1] = --v14;
              if (v28 >= 2)
              {
                v24 = v28 - 1;
                goto LABEL_64;
              }

              if (!v28)
              {
                v35 = v14 - *a1;
                v36 = __CFADD__(v35, 1);
                v24 = v35 + 1;
                *(a1 + 8) = v24;
                if (!v36)
                {
                  goto LABEL_64;
                }

                LODWORD(v3) = 0;
                *(a1 + 9) = 0;
                goto LABEL_2;
              }
            }
          }
        }

        else
        {
          v9 = a1[3];
          if (v98 >= v9)
          {
            goto LABEL_118;
          }

          v10 = 0;
          v11 = 0;
          v12 = v98;
          while (1)
          {
            v13 = *(a1[2] + v12++);
            v11 |= (v13 & 0x7F) << v10;
            if ((v13 & 0x80) == 0 || v10 == 63)
            {
              break;
            }

            v10 += 7;
            if (v9 == v12)
            {
              if (!__valid_fs(-1))
              {
                goto LABEL_136;
              }

LABEL_102:
              v63 = __si_assert_copy_extra_332();
              si_analytics_log_6257(v63, v64, v65, v66, v67, v68, v69, v70, "PostingChunk.c");
              free(v63);
              v71 = 2816;
              goto LABEL_137;
            }
          }

          v98 = v12;
          if (v11)
          {
            v14 = *a1 - v11;
            *a1 = v14;
            if (v3 == 5)
            {
              v37 = 1;
            }

            else
            {
              v37 = 2;
            }

            goto LABEL_73;
          }
        }

        LODWORD(v3) = 0;
        *(a1 + 9) = 0;
      }

      if (!v3)
      {
        break;
      }

      if (v3 == 2)
      {
        v3 = a1[1];
        if (v3)
        {
          v38 = v98;
          v39 = a1[3];
          if (v98 >= v39)
          {
            goto LABEL_118;
          }

          v14 = *a1 - v3;
          *a1 = v14;
          v40 = a1[2];
          v41 = v38 + 5;
          if (v38 + 5 <= v39)
          {
            v51 = v38 + 1;
            v43 = *(v40 + v38);
            if (*(v40 + v38) < 0)
            {
              v54 = *(v40 + v51);
              v55 = *(v40 + v51);
              if (v54 < 0)
              {
                v58 = *(v40 + v38 + 2);
                if (*(v40 + v38 + 2) < 0)
                {
                  v81 = v38 + 4;
                  v82 = *(v40 + v38 + 3);
                  v83 = *(v40 + v38 + 3);
                  if (v82 < 0)
                  {
                    v87 = *(v40 + v81);
                    if (v87 < 0)
                    {
                      v95 = __si_assert_copy_extra_332();
                      v96 = v95;
                      v97 = "";
                      if (v95)
                      {
                        v97 = v95;
                      }

                      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v97);
                      free(v96);
                      if (!__valid_fs(-1))
                      {
                        goto LABEL_136;
                      }

                      v71 = 2989;
                      goto LABEL_137;
                    }

                    v43 = ((v83 & 0x7F) << 21) | (v87 << 28) | ((v58 & 0x7F) << 14) | ((v55 & 0x7F) << 7) | v43 & 0x7F;
                    v98 = v41;
                  }

                  else
                  {
                    v43 = ((v58 & 0x7F) << 14) | (v83 << 21) | ((v55 & 0x7F) << 7) | v43 & 0x7F;
                    v98 = v81;
                  }
                }

                else
                {
                  v43 = ((v55 & 0x7F) << 7) | (v58 << 14) | v43 & 0x7F;
                  v98 = v38 + 3;
                }
              }

              else
              {
                v43 = v43 & 0x7F | (v55 << 7);
                v98 = v38 + 2;
              }
            }

            else
            {
              v98 = v38 + 1;
            }
          }

          else
          {
            v42 = a1;
            v43 = _protectedReadVInt32(a1[2], &v98, v39);
            a1 = v42;
            v14 = *v42;
          }

          v37 = 0;
          a1[1] = v43;
LABEL_73:
          v44 = a1[3];
          if (v98 >= v44)
          {
            v45 = a1[3];
          }

          else
          {
            v45 = v98;
          }

          v46 = v44 - v98;
          if (v44 < v98)
          {
            v46 = 0;
          }

          a1[2] += v45;
          a1[3] = v46;
          if (a2)
          {
            goto LABEL_79;
          }

          return v14;
        }

        *(a1 + 9) = 0;
      }

      else
      {
        if (v3 != 3)
        {
          goto LABEL_118;
        }

        v4 = *(a1 + 8);
        v5 = v98;
        if (v4)
        {
          v6 = a1[1];
          v8 = v98;
LABEL_72:
          v37 = 0;
          v98 = v8;
          v14 = v6 - PostingChunkEnumeratorNextDocID_sBitToIndex1[(((v4 - 1) & v4 ^ v4) - 11 * ((((117 * ((v4 - 1) & v4 ^ v4)) >> 8) + (((((v4 - 1) & v4 ^ v4) - ((117 * ((v4 - 1) & v4 ^ v4)) >> 8)) & 0xFE) >> 1)) >> 3))];
          *(a1 + 8) = (v4 - 1) & v4;
          goto LABEL_73;
        }

        v6 = a1[1];
        v7 = -*a1;
        while (v7 + v6 >= 9 && v5 < a1[3])
        {
          v6 -= 8;
          a1[1] = v6;
          v8 = v5 + 1;
          v4 = *(a1[2] + v5);
          *(a1 + 8) = v4;
          ++v5;
          if (v4)
          {
            goto LABEL_72;
          }
        }

        LODWORD(v3) = 0;
        v98 = v5;
        *(a1 + 9) = 0;
      }
    }

    v15 = a1[3];
    if (v98 >= v15)
    {
      goto LABEL_118;
    }

    v16 = 0;
    v14 = 0;
    v17 = a1[2];
    v18 = v98;
    while (1)
    {
      v19 = *(v17 + v18++);
      v14 |= (v19 & 0x7F) << v16;
      if ((v19 & 0x80) == 0 || v16 == 63)
      {
        break;
      }

      v16 += 7;
      if (v15 == v18)
      {
        v61 = a1[3];
        if (__valid_fs(-1))
        {
          goto LABEL_102;
        }

LABEL_136:
        v71 = 3072;
LABEL_137:
        *v71 = -559038737;
        abort();
      }
    }

    v98 = v18;
    *a1 = v14;
    if (v18 >= v15 || !v14)
    {
      goto LABEL_118;
    }

    v20 = 0;
    v21 = 0;
    v22 = v18;
    while (1)
    {
      v23 = v22 + 1;
      v21 |= (*(v17 + v22) & 0x7F) << v20;
      if ((*(v17 + v22) & 0x80) == 0 || v20 == 63)
      {
        break;
      }

      v20 += 7;
      ++v22;
      if (v15 == v23)
      {
        if (__valid_fs(-1))
        {
          v73 = __si_assert_copy_extra_332();
          si_analytics_log_6257(v73, v74, v75, v76, v77, v78, v79, v80, "PostingChunk.c");
          free(v73);
          MEMORY[0xB00] = -559038737;
          abort();
        }

        goto LABEL_131;
      }
    }

    v98 = v22 + 1;
    a1[1] = v21;
    if (v14 > v21)
    {
      v37 = 0;
      v48 = 2;
      goto LABEL_82;
    }

    if (v14 >= v21)
    {
      break;
    }

    if (*(v17 + v23))
    {
      v37 = 0;
      v14 = v21 - 1;
      *(a1 + 9) = 3;
      v98 = v22 + 2;
      *(a1 + 8) = *(v17 + v23) & 0xFE;
      goto LABEL_73;
    }

    v98 = v22 + 2;
    a1[4] = 0x400000000;
  }

  if (v23 >= v15)
  {
    goto LABEL_118;
  }

  v49 = v22 + 6;
  if (v22 + 6 <= v15)
  {
    v52 = v22 + 2;
    v53 = *(v17 + v23);
    v37 = v53;
    if (v53 < 0)
    {
      v56 = *(v17 + v52);
      v57 = *(v17 + v52);
      if (v56 < 0)
      {
        v59 = *(v17 + v22 + 3);
        if (*(v17 + v22 + 3) < 0)
        {
          v84 = v22 + 5;
          v85 = *(v17 + v22 + 4);
          v86 = *(v17 + v22 + 4);
          if (v85 < 0)
          {
            v88 = *(v17 + v84);
            if (v88 < 0)
            {
LABEL_127:
              v92 = __si_assert_copy_extra_332();
              v93 = v92;
              v94 = "";
              if (v92)
              {
                v94 = v92;
              }

              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v94);
              free(v93);
              if (__valid_fs(-1))
              {
                MEMORY[0xBAD] = -559038737;
                abort();
              }

LABEL_131:
              MEMORY[0xC00] = -559038737;
              abort();
            }

            v37 = ((v86 & 0x7F) << 21) | (v88 << 28) | ((v59 & 0x7F) << 14) | ((v57 & 0x7F) << 7) | v37 & 0x7F;
            v98 = v49;
          }

          else
          {
            v37 = ((v59 & 0x7F) << 14) | (v86 << 21) | ((v57 & 0x7F) << 7) | v37 & 0x7F;
            v98 = v84;
          }
        }

        else
        {
          v37 = ((v57 & 0x7F) << 7) | (v59 << 14) | v53 & 0x7F;
          v98 = v22 + 4;
        }
      }

      else
      {
        v37 = v53 & 0x7F | (v57 << 7);
        v98 = v22 + 3;
      }
    }

    else
    {
      v98 = v22 + 2;
    }
  }

  else
  {
    v50 = a1;
    v37 = _protectedReadVInt32(v17, &v98, v15);
    a1 = v50;
  }

  switch(v37)
  {
    case 2:
      v48 = 6;
      goto LABEL_82;
    case 1:
      v48 = 5;
LABEL_82:
      *(a1 + 9) = v48;
      goto LABEL_73;
    case 0:
      *(a1 + 9) = 0;
      v37 = 1;
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_73;
  }

LABEL_118:
  v14 = 0;
  *(a1 + 9) = 1;
  v89 = a1[3];
  if (v98 >= v89)
  {
    v90 = a1[3];
  }

  else
  {
    v90 = v98;
  }

  v91 = v89 - v98;
  if (v89 < v98)
  {
    v91 = 0;
  }

  a1[2] += v90;
  a1[3] = v91;
  if (a2)
  {
    v37 = 0;
LABEL_79:
    *a2 = v37;
  }

  return v14;
}

void packPostingChunks(uint64_t a1, _DWORD *a2, size_t size, uint64_t a4)
{
  v4 = a4;
  v5 = size;
  v7 = a1;
  v68 = *MEMORY[0x1E69E9840];
  if (size)
  {
    if (a4)
    {
      v8 = *(a4 + 32);
      if (*(a4 + 40) < size)
      {
        v9 = malloc_type_realloc(*(a4 + 32), size, 0x100004077774924uLL);
        *(v4 + 32) = v9;
        if (!v9)
        {
          v58 = __si_assert_copy_extra_332();
          v59 = v58;
          v60 = "";
          if (v58)
          {
            v60 = v58;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 454, "packCtx->chunkChanges", v60);
          free(v59);
          if (__valid_fs(-1))
          {
            v61 = 2989;
          }

          else
          {
            v61 = 3072;
          }

          *v61 = -559038737;
          abort();
        }

        v8 = v9;
        *(v4 + 40) = v5;
      }

      bzero(v8, v5);
    }

    else
    {
      v8 = malloc_type_calloc(size, 1uLL, 0x100004077774924uLL);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v5 - 1;
    v20 = a2[v19];
    if (*a2 < 0x200000u)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    if (*a2 >> 28)
    {
      v22 = 5;
    }

    else
    {
      v22 = v21;
    }

    if (*a2 < 0x80u)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (*a2 >> 14)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v25 = 16 * v24;
    v26 = v5 - 2;
    v63 = v5;
    v27 = -v5;
    v28 = 1 - v5;
    v62 = v8;
    v29 = &v8[v19];
    v30 = &a2[v19];
    v31 = 8 * v24 + 8;
    v32 = (2 * v24) | 1;
    v33 = v20;
    do
    {
      v34 = v30[v13];
      if (v28 == v13)
      {
        v35 = 0;
      }

      else
      {
        v35 = a2[v26 + v13] + ~v34;
      }

      v36 = v34 - v20 + 1;
      v37 = v31 + v15 - 8 * v14;
      v38 = v17 + v34;
      v39 = v16 + v25 + v36;
      v66[0] = v37;
      v66[1] = v39;
      v67 = v18 + 8 + 8 * (v32 + v13 + v17 + v34 - v33);
      if (v39 <= v67)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }

      if (v37 <= v39)
      {
        v41 = 2 * (v37 > v67);
      }

      else
      {
        v41 = v40;
      }

      v42 = v36 + v16 + v35;
      v43 = v18 + 8 + 8 * (v13 + v38 + v35 - v33);
      v44 = v66[v41];
      v45 = v44 + 8;
      v46 = v43 > v44 + 8;
      v47 = v44 + 4;
      v48 = (v44 + 7) & 0xFFFFFFF8;
      v49 = 3;
      if (v43 <= v45)
      {
        v49 = 1;
      }

      v50 = 2 * v46;
      if (v41)
      {
        v15 = v48;
        v14 = v12 + 1;
      }

      if (v42 <= v47)
      {
        v49 = v50;
      }

      v29[v13] = kPostingChunkChangeHintForFormat[4 * v41 + v49];
      if (v42 > v47)
      {
        v16 = v48;
        v20 = 0;
      }

      if (v28 != v13 && v42 > v47)
      {
        v20 = a2[v26 + v13];
        v16 = v48;
      }

      if (v43 > v45)
      {
        v18 = v48;
        v17 = v12 + 1;
        v33 = 0;
      }

      if (v28 != v13 && v43 > v45)
      {
        v33 = a2[v26 + v13];
        v18 = v48;
        v17 = v12 + 1;
      }

      --v13;
      ++v12;
      v31 += 8;
    }

    while (v27 + v12);
    v66[0] = 0;
    v10 = v62;
    v51 = *v62;
    if ((v51 - 4) < 4)
    {
      v11 = 1;
      v7 = a1;
      v4 = a4;
      v5 = v63;
    }

    else
    {
      v7 = a1;
      v4 = a4;
      v5 = v63;
      if ((v51 - 8) >= 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 2;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v66[0] = 0;
  }

  packPostingChunk(v7, v11, a2, v10, v5, v66);
  v52 = v66[0];
  while (v52 < v5)
  {
    v54 = v10[v52];
    if (v54 <= 5)
    {
      if (v54 <= 2)
      {
        if (v54 == 1)
        {
          v53 = v11;
          if (v11 != 1)
          {
            goto LABEL_54;
          }

LABEL_79:
          v53 = 0;
          goto LABEL_54;
        }

        v55 = v54 == 2 && v11 == 2;
        v53 = v11;
        if (v55)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v54 == 3)
        {
          goto LABEL_79;
        }

        if (v54 != 4)
        {
          if (v11 != 2)
          {
            goto LABEL_53;
          }

LABEL_83:
          v53 = 2;
          goto LABEL_54;
        }

        v53 = v11;
        if (!v11)
        {
          goto LABEL_53;
        }
      }
    }

    else if (v54 > 8)
    {
      if (v54 == 9)
      {
        v53 = 2;
      }

      else
      {
        if (v54 == 10)
        {
          if (v11 == 1)
          {
LABEL_53:
            v53 = 1;
            goto LABEL_54;
          }

          goto LABEL_83;
        }

        v53 = v11;
        if (v54 == 11)
        {
          goto LABEL_83;
        }
      }
    }

    else if (v54 == 6)
    {
      v53 = 1;
    }

    else
    {
      if (v54 == 7)
      {
        goto LABEL_53;
      }

      v53 = v11;
      if (!v11)
      {
        goto LABEL_83;
      }
    }

LABEL_54:
    packPostingChunk(v7, v53, a2, v10, v5, v66);
    v52 = v66[0];
    v11 = v53;
  }

  if (v4)
  {
    v56 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v57 = *MEMORY[0x1E69E9840];

    free(v10);
  }
}

void packPostingChunk(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6)
{
  v6 = *a6;
  if (v6 >= a5)
  {
    return;
  }

  v12 = *(a3 + 4 * v6);
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v13 = v6 + 1;
      if (v6 + 1 >= a5)
      {
        *a6 = v13;
        v35 = 1;
      }

      else
      {
        v14 = a5 - 1;
        v15 = (a4 + v13);
        do
        {
          v16 = *v15++;
          v17 = (1 << v16) & 0xAAA;
          if (v16 <= 0xB && v17 != 0)
          {
            v14 = v13 - 1;
            goto LABEL_33;
          }

          LODWORD(v13) = v13 + 1;
        }

        while (a5 != v13);
        LODWORD(v13) = a5;
LABEL_33:
        v36 = *(a3 + 4 * v14);
        *a6 = v13;
        v35 = v12 + 1 - v36;
        if (v12 + 1 == v36)
        {
          v88 = __si_assert_copy_extra_332();
          v81 = v88;
          v89 = "";
          if (v88)
          {
            v89 = v88;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 642, "bitVectorCount > 0", v89);
          goto LABEL_80;
        }

        LODWORD(v12) = v36;
      }

      v37 = *(a1 + 8);
      v38 = *(a1 + 16);
      if (v38 + 10 > v37)
      {
        do
        {
          v37 *= 2;
        }

        while (v37 < v38 + 10);
        *(a1 + 8) = v37;
        v39 = malloc_type_realloc(*a1, v37, 0xF29073FuLL);
        *a1 = v39;
        v38 = *(a1 + 16);
      }

      else
      {
        v39 = *a1;
      }

      v40 = writeVInt64(v39, v38, v12);
      *(a1 + 16) = v40;
      *(a1 + 24) = v12;
      v41 = v12 + v35;
      v42 = *(a1 + 8);
      if (v40 + 10 > v42)
      {
        do
        {
          v42 *= 2;
        }

        while (v42 < v40 + 10);
        *(a1 + 8) = v42;
        v44 = malloc_type_realloc(*a1, v42, 0xF29073FuLL);
        *a1 = v44;
        v43 = *(a1 + 16);
      }

      else
      {
        v43 = v40;
        v44 = *a1;
      }

      v45 = writeVInt64(v44, v43, v41);
      *(a1 + 16) = v45;
      *(a1 + 24) = v41;
      v46 = (v35 + 7) >> 3;
      v47 = v45 + (v46 + 4);
      v48 = *(a1 + 8);
      if (v47 > v48)
      {
        do
        {
          v48 *= 2;
        }

        while (v48 < v47);
        *(a1 + 8) = v48;
        v49 = malloc_type_realloc(*a1, v48, 0xF29073FuLL);
        *a1 = v49;
        v45 = *(a1 + 16);
      }

      else
      {
        v49 = *a1;
      }

      bzero(&v49[v45], (v35 + 7) >> 3);
      v50 = *a6;
      v51 = *(a1 + 16);
      if (v6 < v50)
      {
        v52 = *a1 + v51;
        v53 = *(a3 + 4 * v6);
        v54 = v50 - v6;
        v55 = (a3 + 4 * v6);
        do
        {
          v56 = *v55++;
          *(v52 + ((v53 - v56) >> 3)) |= 1 << ((v53 - v56) & 7);
          --v54;
        }

        while (v54);
        v51 = *(a1 + 16);
      }

      *(a1 + 16) = v51 + v46;
    }

    else
    {
      v27 = *(a1 + 8);
      v28 = *(a1 + 16);
      if (v28 + 10 > v27)
      {
        do
        {
          v27 *= 2;
        }

        while (v27 < v28 + 10);
        *(a1 + 8) = v27;
        v29 = malloc_type_realloc(*a1, v27, 0xF29073FuLL);
        *a1 = v29;
        v28 = *(a1 + 16);
      }

      else
      {
        v29 = *a1;
      }

      *(a1 + 16) = writeVInt64(v29, v28, v12);
      *(a1 + 24) = v12;
      v30 = (v6 + 1);
      if (v30 < a5)
      {
        v31 = ~v6 + a5;
        while (*(a4 + v30) - 4 >= 8)
        {
          packRelativeVDocID(a1, *(a3 + 4 * v30++));
          if (!--v31)
          {
            LODWORD(v30) = a5;
            break;
          }
        }
      }

      v32 = *(a1 + 8);
      v33 = *(a1 + 16);
      if (v33 + 10 > v32)
      {
        do
        {
          v32 *= 2;
        }

        while (v32 < v33 + 10);
        *(a1 + 8) = v32;
        v34 = malloc_type_realloc(*a1, v32, 0xF29073FuLL);
        *a1 = v34;
        v33 = *(a1 + 16);
      }

      else
      {
        v34 = *a1;
      }

      v34[v33] = 0;
      *(a1 + 16) = v33 + 1;
      *(a1 + 24) = 0;
      *a6 = v30;
    }

    return;
  }

  v19 = (v12 + 1);
  v20 = v6 + 1;
  v21 = v6 + 1;
  if (v6 + 1 < a5)
  {
    v22 = a5 - 1;
    v23 = (a4 + v20);
    v21 = v6 + 1;
    do
    {
      v24 = *v23++;
      v25 = (1 << v24) & 0xCCC;
      if (v24 <= 0xB && v25 != 0)
      {
        v22 = v21 - 1;
        goto LABEL_46;
      }

      ++v21;
    }

    while (a5 != v21);
    v21 = a5;
LABEL_46:
    LODWORD(v12) = *(a3 + 4 * v22);
  }

  v57 = v12;
  v58 = *(a1 + 8);
  v59 = *(a1 + 16);
  if (v59 + 10 > v58)
  {
    do
    {
      v58 *= 2;
    }

    while (v58 < v59 + 10);
    *(a1 + 8) = v58;
    v60 = malloc_type_realloc(*a1, v58, 0xF29073FuLL);
    *a1 = v60;
    v59 = *(a1 + 16);
  }

  else
  {
    v60 = *a1;
  }

  v61 = writeVInt64(v60, v59, v12);
  *(a1 + 16) = v61;
  *(a1 + 24) = v12;
  v62 = *(a1 + 8);
  if (v61 + 10 > v62)
  {
    do
    {
      v62 *= 2;
    }

    while (v62 < v61 + 10);
    *(a1 + 8) = v62;
    v64 = malloc_type_realloc(*a1, v62, 0xF29073FuLL);
    *a1 = v64;
    v63 = *(a1 + 16);
  }

  else
  {
    v63 = v61;
    v64 = *a1;
  }

  v65 = writeVInt64(v64, v63, v19);
  *(a1 + 16) = v65;
  *(a1 + 24) = v19;
  v66 = *(a1 + 8);
  if (v65 + 10 > v66)
  {
    do
    {
      v66 *= 2;
    }

    while (v66 < v65 + 10);
    *(a1 + 8) = v66;
    v67 = malloc_type_realloc(*a1, v66, 0xF29073FuLL);
    *a1 = v67;
    v65 = *(a1 + 16);
  }

  else
  {
    v67 = *a1;
  }

  v68 = v65 + 1;
  v67[v65] = 0;
  *(a1 + 16) = v65 + 1;
  v69 = *(a3 + 4 * v6);
  if (v69 <= v57)
  {
    v90 = __si_assert_copy_extra_332();
    v81 = v90;
    v91 = "";
    if (v90)
    {
      v91 = v90;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 727, "docIDLast > docIDStart", v91);
    goto LABEL_80;
  }

  if (v69 >= v19)
  {
    v92 = __si_assert_copy_extra_332();
    v81 = v92;
    v93 = "";
    if (v92)
    {
      v93 = v92;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 728, "docIDLast < docIDEnd", v93);
    goto LABEL_80;
  }

  if (v20 >= v21)
  {
    goto LABEL_70;
  }

  v70 = v20;
  do
  {
    v71 = *(a3 + 4 * v70);
    if (v69 < v71)
    {
      v86 = __si_assert_copy_extra_332();
      v81 = v86;
      v87 = "";
      if (v86)
      {
        v87 = v86;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 732, "docIDLast >= docIDs[i]", v87);
      goto LABEL_80;
    }

    if (--v69 > v71)
    {
      while (1)
      {
        if (v69 >= v19)
        {
          v77 = __si_assert_copy_extra_332();
          v78 = v77;
          v79 = "";
          if (v77)
          {
            v79 = v77;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 734, "docIDLast < docIDEnd", v79);
LABEL_85:
          free(v78);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        if (v69 <= v57)
        {
          break;
        }

        v72 = *(a1 + 24);
        if (v72 <= v69)
        {
          v84 = __si_assert_copy_extra_332();
          v78 = v84;
          v85 = "";
          if (v84)
          {
            v85 = v84;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 570, "rb->current > docID", v85);
          goto LABEL_85;
        }

        v73 = *(a1 + 8);
        if (v68 + 10 > v73)
        {
          do
          {
            v73 *= 2;
          }

          while (v73 < v68 + 10);
          *(a1 + 8) = v73;
          v74 = malloc_type_realloc(*a1, v73, 0xF29073FuLL);
          *a1 = v74;
          v68 = *(a1 + 16);
          v72 = *(a1 + 24);
        }

        else
        {
          v74 = *a1;
        }

        v68 = writeVInt64(v74, v68, v72 - v69);
        *(a1 + 16) = v68;
        *(a1 + 24) = v69--;
        if (v69 <= *(a3 + 4 * v70))
        {
          goto LABEL_57;
        }
      }

      v80 = __si_assert_copy_extra_332();
      v81 = v80;
      v82 = "";
      if (v80)
      {
        v82 = v80;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 735, "docIDLast > docIDStart", v82);
LABEL_80:
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

LABEL_57:
    ++v70;
  }

  while (v70 != v21);
  LODWORD(v20) = v21;
LABEL_70:
  v75 = *(a1 + 8);
  if (v68 + 10 > v75)
  {
    do
    {
      v75 *= 2;
    }

    while (v75 < v68 + 10);
    *(a1 + 8) = v75;
    v76 = malloc_type_realloc(*a1, v75, 0xF29073FuLL);
    *a1 = v76;
    v68 = *(a1 + 16);
  }

  else
  {
    v76 = *a1;
  }

  v76[v68] = 0;
  *(a1 + 16) = v68 + 1;
  *(a1 + 24) = 0;
  *a6 = v20;
}

void *FlattenPostingsContextInit(uint64_t a1)
{
  *(a1 + 8) = 16;
  *a1 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  *(a1 + 24) = 16;
  *(a1 + 16) = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  *(a1 + 40) = 16;
  result = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *(a1 + 32) = result;
  return result;
}

void FlattenPostingsContextDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    free(*(a1 + 16));
    v2 = *(a1 + 32);

    free(v2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,false>(int *a1, int *a2, uint64_t a3, char a4, __n128 a5)
{
  v345 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = a2 - 24;
  v292 = a2 - 20;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 5);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      goto LABEL_438;
    }

    if (v12 == 2)
    {
      if (*(a2 - 11) == 1)
      {
        v118 = *(a2 - 5);
        v119 = *(v10 + 76);
        if (v118 >= v119)
        {
          if (v118 != v119)
          {
            goto LABEL_438;
          }

          goto LABEL_433;
        }
      }

      else if (*v292 >= *(v10 + 16))
      {
        if (*(a2 - 9) != *(v10 + 24) || *v292 != *(v10 + 16))
        {
          goto LABEL_438;
        }

LABEL_433:
        v252 = *(a2 - 7);
        v253 = *(v10 + 68);
        if (v252 >= v253 && (v252 != v253 || *(a2 - 8) <= *(v10 + 64)))
        {
          goto LABEL_438;
        }
      }

      v254 = *v10;
      *v10 = *v9;
      *v9 = v254;
      v319 = *(v10 + 64);
      v324 = *(v10 + 80);
      v308 = *(v10 + 32);
      v314 = *(v10 + 48);
      v300 = *(v10 + 16);
      *(v10 + 16) = *v292;
      v255 = *(a2 - 3);
      v257 = *(a2 - 2);
      v256 = *(a2 - 1);
      *(v10 + 32) = *(a2 - 4);
      *(v10 + 48) = v255;
      *(v10 + 64) = v257;
      *(v10 + 80) = v256;
      *v292 = v300;
      *(a2 - 2) = v319;
      *(a2 - 1) = v324;
      *(a2 - 4) = v308;
      *(a2 - 3) = v314;
      goto LABEL_438;
    }

LABEL_10:
    if (v11 <= 2303)
    {
      v123 = (v10 + 96);
      v125 = v10 == a2 || v123 == a2;
      if (a4)
      {
        if (v125)
        {
          goto LABEL_438;
        }

        v126 = 0;
        v127 = v10;
        while (2)
        {
          v129 = v127;
          v127 = v123;
          v130 = *(v129 + 181);
          if (v130 == 1)
          {
            v131 = *(v129 + 43);
            v132 = *(v129 + 19);
            if (v131 < v132)
            {
              goto LABEL_286;
            }

            if (v131 != v132)
            {
              goto LABEL_272;
            }

LABEL_283:
            v136 = *(v129 + 41);
            v137 = *(v129 + 17);
            if (v136 < v137 || v136 == v137 && *(v129 + 40) > *(v129 + 16))
            {
LABEL_286:
              v138 = *(v129 + 24);
              v140 = *(v129 + 14);
              v139 = *(v129 + 15);
              v298 = v129[8];
              v306 = v129[9];
              v141 = *(v129 + 40);
              v142 = *(v129 + 41);
              v143 = *(v129 + 42);
              v144 = *(v129 + 43);
              v328 = *(v129 + 44);
              v331 = *(v129 + 180);
              v340 = *(v129 + 95);
              v336 = *(v129 + 182);
              *(v129 + 24) = *v129;
              v128 = (v129 + 1);
              v145 = v129[4];
              *(v127 + 3) = v129[3];
              *(v127 + 4) = v145;
              *(v127 + 5) = v129[5];
              v146 = v129[2];
              *(v127 + 1) = v129[1];
              *(v127 + 2) = v146;
              if (v129 == v10)
              {
LABEL_270:
                v129 = v10;
                goto LABEL_271;
              }

              v147 = v126;
              if (v130)
              {
                while (1)
                {
                  v150 = v10 + v147;
                  v151 = *(v10 + v147 - 20);
                  if (v144 >= v151)
                  {
                    if (v144 != v151)
                    {
LABEL_307:
                      v129 = (v10 + v147);
                      v128 = (v10 + v147 + 16);
                      goto LABEL_271;
                    }

                    v152 = *(v10 + v147 - 28);
                    if (v142 >= v152 && (v142 != v152 || v141 <= *(v10 + v147 - 32)))
                    {
                      goto LABEL_271;
                    }
                  }

                  v128 = (v129 - 5);
                  v129 -= 6;
                  *v150 = *(v150 - 96);
                  v148 = *(v150 - 32);
                  *(v150 + 48) = *(v150 - 48);
                  *(v150 + 64) = v148;
                  *(v150 + 80) = *(v150 - 16);
                  v149 = *(v150 - 64);
                  *(v150 + 16) = *(v150 - 80);
                  *(v150 + 32) = v149;
                  v147 -= 96;
                  if (!v147)
                  {
LABEL_269:
                    v128 = (v10 + v147 + 16);
                    goto LABEL_270;
                  }
                }
              }

              while (1)
              {
                v155 = v10 + v147;
                if (__PAIR128__(v139, v140) >= *(v10 + v147 - 80))
                {
                  if (v139 != *(v10 + v147 - 72) || v140 != *(v10 + v147 - 80))
                  {
                    break;
                  }

                  v157 = *(v10 + v147 - 28);
                  if (v142 >= v157)
                  {
                    if (v142 != v157)
                    {
                      goto LABEL_307;
                    }

                    if (v141 <= *(v10 + v147 - 32))
                    {
                      break;
                    }
                  }
                }

                v128 = (v129 - 5);
                v129 -= 6;
                *v155 = *(v155 - 96);
                v153 = *(v10 + v147 - 32);
                *(v155 + 48) = *(v10 + v147 - 48);
                *(v155 + 64) = v153;
                *(v155 + 80) = *(v10 + v147 - 16);
                v154 = *(v10 + v147 - 64);
                *(v155 + 16) = *(v10 + v147 - 80);
                *(v155 + 32) = v154;
                v147 -= 96;
                if (!v147)
                {
                  goto LABEL_269;
                }
              }

LABEL_271:
              *v129 = v138;
              *v128 = v140;
              v128[1] = v139;
              v129[2] = v298;
              v129[3] = v306;
              *(v129 + 16) = v141;
              *(v129 + 17) = v142;
              *(v129 + 18) = v143;
              *(v129 + 19) = v144;
              *(v129 + 84) = v331;
              *(v129 + 20) = v328;
              *(v129 + 85) = v130;
              *(v129 + 86) = v336;
              *(v129 + 47) = v340;
            }
          }

          else
          {
            v134 = *(v129 + 14);
            v133 = *(v129 + 15);
            if (__PAIR128__(v133, v134) < v129[1])
            {
              goto LABEL_286;
            }

            if (v133 == *(v129 + 3) && v134 == *(v129 + 2))
            {
              goto LABEL_283;
            }
          }

LABEL_272:
          v123 = v127 + 24;
          v126 += 96;
          if (v127 + 24 == a2)
          {
            goto LABEL_438;
          }

          continue;
        }
      }

      if (v125)
      {
        goto LABEL_438;
      }

      v259 = (v10 + 112);
      while (2)
      {
        v262 = a1;
        a1 = v123;
        v263 = *(v262 + 181);
        if (v263 == 1)
        {
          v264 = *(v262 + 43);
          v265 = *(v262 + 19);
          if (v264 < v265)
          {
            goto LABEL_456;
          }

          if (v264 != v265)
          {
            goto LABEL_442;
          }

LABEL_453:
          v269 = *(v262 + 41);
          v270 = *(v262 + 17);
          if (v269 < v270 || v269 == v270 && v262[40] > v262[16])
          {
LABEL_456:
            v271 = *a1;
            v273 = *(v262 + 14);
            v272 = *(v262 + 15);
            v301 = *(v262 + 8);
            v309 = *(v262 + 9);
            v274 = v262[40];
            v275 = *(v262 + 41);
            v276 = v262[42];
            v330 = v262[44];
            v332 = *(v262 + 180);
            v339 = *(v262 + 182);
            v341 = *(v262 + 95);
            v277 = v259;
            v278 = *(v262 + 43);
            if (v263)
            {
              do
              {
                do
                {
                  v260 = v262;
                  v262[24] = *v262;
                  v279 = *(v262 + 4);
                  *(v262 + 9) = *(v262 + 3);
                  *(v262 + 10) = v279;
                  *(v262 + 11) = *(v262 + 5);
                  v280 = *(v262 - 5);
                  v281 = v278 == v280;
                  v282 = v278 < v280;
                  v284 = *(v262 + 1);
                  v283 = *(v262 + 2);
                  v262 -= 24;
                  *(v260 + 7) = v284;
                  *(v260 + 8) = v283;
                }

                while (v282);
                if (!v281)
                {
                  break;
                }

                v285 = *(v260 - 7);
              }

              while (v275 < v285 || v275 == v285 && v274 > *(v260 - 8));
              v261 = (v260 + 4);
            }

            else
            {
              while (1)
              {
                *(v277 - 4) = *(v277 - 28);
                v286 = *(v277 - 3);
                v277[2] = *(v277 - 4);
                v277[3] = v286;
                v277[4] = *(v277 - 2);
                v287 = *(v277 - 5);
                v289 = *(v277 - 24);
                v288 = *(v277 - 23);
                v93 = __PAIR128__(v272, v273) >= *(v277 - 12);
                *v277 = *(v277 - 6);
                v277[1] = v287;
                if (v93)
                {
                  if (v272 != v288 || v273 != v289)
                  {
                    break;
                  }

                  v291 = *(v277 - 35);
                  if (v275 >= v291 && (v275 != v291 || v274 <= *(v277 - 36)))
                  {
                    break;
                  }
                }

                v277 -= 6;
              }

              v260 = (v277 - 7);
              v261 = (v277 - 6);
            }

            *v260 = v271;
            *v261 = v273;
            v261[1] = v272;
            *(v260 + 2) = v301;
            *(v260 + 3) = v309;
            v260[16] = v274;
            *(v260 + 17) = v275;
            v260[18] = v276;
            *(v260 + 19) = v278;
            *(v260 + 84) = v332;
            v260[20] = v330;
            *(v260 + 85) = v263;
            *(v260 + 86) = v339;
            *(v260 + 47) = v341;
          }
        }

        else
        {
          v267 = *(v262 + 14);
          v266 = *(v262 + 15);
          if (__PAIR128__(v266, v267) < *(v262 + 1))
          {
            goto LABEL_456;
          }

          if (v266 == *(v262 + 3) && v267 == *(v262 + 2))
          {
            goto LABEL_453;
          }
        }

LABEL_442:
        v123 = a1 + 24;
        v259 += 6;
        if (a1 + 24 == a2)
        {
          goto LABEL_438;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v10 != a2)
      {
        v158 = (v12 - 2) >> 1;
        v159 = v158;
        while (1)
        {
          v161 = v159;
          if (v158 < v159)
          {
            goto LABEL_312;
          }

          v162 = (2 * v159) | 1;
          v160 = v10 + 96 * v162;
          if (2 * v161 + 2 >= v12)
          {
            goto LABEL_329;
          }

          if (*(v160 + 85) == 1)
          {
            break;
          }

          v166 = *(v160 + 16);
          v165 = *(v160 + 24);
          if (__PAIR128__(v165, v166) < *(v160 + 112))
          {
            goto LABEL_328;
          }

          if (v165 == *(v160 + 120) && v166 == *(v160 + 112))
          {
            goto LABEL_325;
          }

LABEL_329:
          v170 = (v10 + 96 * v161);
          if (*(v160 + 85) == 1)
          {
            v171 = *(v160 + 76);
            v172 = *(v170 + 19);
            if (v171 < v172)
            {
              goto LABEL_312;
            }

            if (v171 == v172)
            {
              goto LABEL_339;
            }
          }

          else
          {
            v174 = *(v160 + 16);
            v173 = *(v160 + 24);
            if (__PAIR128__(v173, v174) < *(v170 + 1))
            {
              goto LABEL_312;
            }

            if (v173 == *(v170 + 3) && v174 == *(v170 + 2))
            {
LABEL_339:
              v176 = *(v160 + 68);
              v177 = *(v170 + 17);
              if (v176 < v177 || v176 == v177 && *(v160 + 64) > v170[16])
              {
                goto LABEL_312;
              }
            }
          }

          v178 = *v170;
          v179 = *(v170 + 2);
          v180 = *(v170 + 3);
          v299 = *(v170 + 2);
          v307 = *(v170 + 3);
          v181 = v170[16];
          v182 = *(v170 + 17);
          v183 = v170[18];
          v184 = *(v170 + 19);
          v337 = *(v170 + 5);
          do
          {
            do
            {
              while (1)
              {
                *v170 = *v160;
                *(v170 + 1) = *(v160 + 16);
                v185 = *(v160 + 32);
                v186 = *(v160 + 48);
                v187 = *(v160 + 80);
                *(v170 + 4) = *(v160 + 64);
                *(v170 + 5) = v187;
                *(v170 + 2) = v185;
                *(v170 + 3) = v186;
                if (v158 < v162)
                {
                  goto LABEL_311;
                }

                v170 = v160;
                v188 = 2 * v162;
                v162 = (2 * v162) | 1;
                v160 = v10 + 96 * v162;
                v189 = v188 + 2;
                if (v189 >= v12)
                {
                  goto LABEL_359;
                }

                if (*(v160 + 85) == 1)
                {
                  v190 = *(v160 + 76);
                  v191 = *(v160 + 172);
                  if (v190 < v191)
                  {
                    goto LABEL_358;
                  }

                  if (v190 != v191)
                  {
                    goto LABEL_359;
                  }

LABEL_355:
                  v195 = *(v160 + 68);
                  v196 = *(v160 + 164);
                  if (v195 < v196 || v195 == v196 && *(v160 + 64) > *(v160 + 160))
                  {
LABEL_358:
                    v160 += 96;
                    v162 = v189;
                    goto LABEL_359;
                  }

                  goto LABEL_359;
                }

                v193 = *(v160 + 16);
                v192 = *(v160 + 24);
                if (__PAIR128__(v192, v193) < *(v160 + 112))
                {
                  goto LABEL_358;
                }

                if (v192 == *(v160 + 120) && v193 == *(v160 + 112))
                {
                  goto LABEL_355;
                }

LABEL_359:
                if (*(v160 + 85) != 1)
                {
                  break;
                }

                v197 = *(v160 + 76);
                if (v197 < v184)
                {
                  goto LABEL_310;
                }

                if (v197 == v184)
                {
                  goto LABEL_369;
                }
              }

              if (*(v160 + 16) < __PAIR128__(v180, v179))
              {
                goto LABEL_310;
              }
            }

            while (*(v160 + 24) != v180 || *(v160 + 16) != v179);
LABEL_369:
            v199 = *(v160 + 68);
          }

          while (v199 >= v182 && (v199 != v182 || *(v160 + 64) <= v181));
LABEL_310:
          v160 = v170;
LABEL_311:
          *v160 = v178;
          *(v160 + 16) = v179;
          *(v160 + 24) = v180;
          *(v160 + 32) = v299;
          *(v160 + 48) = v307;
          *(v160 + 64) = v181;
          *(v160 + 68) = v182;
          *(v160 + 72) = v183;
          *(v160 + 76) = v184;
          *(v160 + 80) = v337;
LABEL_312:
          v159 = v161 - 1;
          if (!v161)
          {
            v200 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 5);
            while (1)
            {
              v202 = 0;
              v203 = *v10;
              v302 = *(v10 + 16);
              v325 = *(v10 + 80);
              v320 = *(v10 + 64);
              v315 = *(v10 + 48);
              v310 = *(v10 + 32);
              v204 = v10;
              do
              {
                v208 = v204;
                v209 = v204 + 96 * v202;
                v204 = v209 + 96;
                v210 = 2 * v202;
                v202 = (2 * v202) | 1;
                v211 = v210 + 2;
                if (v211 >= v200)
                {
                  goto LABEL_378;
                }

                if (*(v209 + 181) == 1)
                {
                  v212 = *(v209 + 172);
                  v213 = *(v209 + 268);
                  if (v212 < v213)
                  {
                    goto LABEL_377;
                  }

                  if (v212 != v213)
                  {
                    goto LABEL_378;
                  }

LABEL_390:
                  v217 = *(v209 + 164);
                  v218 = *(v209 + 260);
                  if (v217 < v218 || v217 == v218 && *(v209 + 160) > *(v209 + 256))
                  {
LABEL_377:
                    v204 = v209 + 192;
                    v202 = v211;
                    goto LABEL_378;
                  }

                  goto LABEL_378;
                }

                v215 = *(v209 + 112);
                v214 = *(v209 + 120);
                if (__PAIR128__(v214, v215) < *(v209 + 208))
                {
                  goto LABEL_377;
                }

                if (v214 == *(v209 + 216) && v215 == *(v209 + 208))
                {
                  goto LABEL_390;
                }

LABEL_378:
                *v208 = *v204;
                *(v208 + 16) = *(v204 + 16);
                v205 = *(v204 + 32);
                v206 = *(v204 + 48);
                v207 = *(v204 + 80);
                *(v208 + 64) = *(v204 + 64);
                *(v208 + 80) = v207;
                *(v208 + 32) = v205;
                *(v208 + 48) = v206;
              }

              while (v202 <= ((v200 - 2) >> 1));
              if (v204 == a2 - 24)
              {
                *v204 = v203;
                *(v204 + 16) = v302;
                *(v204 + 64) = v320;
                *(v204 + 80) = v325;
                *(v204 + 32) = v310;
                *(v204 + 48) = v315;
                goto LABEL_375;
              }

              *v204 = *(a2 - 24);
              *(v204 + 16) = *(a2 - 5);
              v219 = *(a2 - 4);
              v220 = *(a2 - 3);
              v221 = *(a2 - 1);
              *(v204 + 64) = *(a2 - 2);
              *(v204 + 80) = v221;
              *(v204 + 32) = v219;
              *(v204 + 48) = v220;
              *(a2 - 24) = v203;
              *(a2 - 5) = v302;
              *(a2 - 2) = v320;
              *(a2 - 1) = v325;
              *(a2 - 4) = v310;
              *(a2 - 3) = v315;
              v222 = v204 - v10 + 96;
              if (v222 >= 97)
              {
                v223 = 0xAAAAAAAAAAAAAAABLL * (v222 >> 5) - 2;
                v224 = v223 >> 1;
                v225 = v10 + 96 * (v223 >> 1);
                if (*(v225 + 85) == 1)
                {
                  v226 = *(v225 + 76);
                  v227 = *(v204 + 76);
                  if (v226 < v227)
                  {
                    goto LABEL_409;
                  }

                  if (v226 != v227)
                  {
                    goto LABEL_375;
                  }

LABEL_406:
                  v231 = *(v225 + 68);
                  v232 = *(v204 + 68);
                  if (v231 < v232 || v231 == v232 && *(v225 + 64) > *(v204 + 64))
                  {
LABEL_409:
                    v233 = *v204;
                    v234 = *(v204 + 16);
                    v235 = *(v204 + 24);
                    v338 = *(v204 + 32);
                    v344 = *(v204 + 48);
                    v236 = *(v204 + 64);
                    v237 = *(v204 + 68);
                    v238 = *(v204 + 72);
                    v239 = *(v204 + 76);
                    v329 = *(v204 + 80);
                    *v204 = *v225;
                    v241 = *(v225 + 64);
                    v240 = *(v225 + 80);
                    v242 = *(v225 + 48);
                    *(v204 + 32) = *(v225 + 32);
                    *(v204 + 48) = v242;
                    *(v204 + 64) = v241;
                    *(v204 + 80) = v240;
                    *(v204 + 16) = *(v225 + 16);
                    if (v223 < 2)
                    {
LABEL_426:
                      *v225 = v233;
                      *(v225 + 16) = v234;
                      *(v225 + 24) = v235;
                      *(v225 + 32) = v338;
                      *(v225 + 48) = v344;
                      *(v225 + 64) = v236;
                      *(v225 + 68) = v237;
                      *(v225 + 72) = v238;
                      *(v225 + 76) = v239;
                      *(v225 + 80) = v329;
                      goto LABEL_375;
                    }

                    while (2)
                    {
                      v246 = v225;
                      v247 = v224 - 1;
                      v224 = (v224 - 1) >> 1;
                      v225 = v10 + 96 * v224;
                      if (*(v225 + 85) == 1)
                      {
                        v248 = *(v225 + 76);
                        if (v248 >= v239)
                        {
                          if (v248 != v239)
                          {
                            goto LABEL_425;
                          }

                          goto LABEL_422;
                        }
                      }

                      else if (*(v225 + 16) >= __PAIR128__(v235, v234))
                      {
                        if (*(v225 + 24) != v235 || *(v225 + 16) != v234)
                        {
LABEL_425:
                          v225 = v246;
                          goto LABEL_426;
                        }

LABEL_422:
                        v250 = *(v225 + 68);
                        if (v250 >= v237 && (v250 != v237 || *(v225 + 64) <= v236))
                        {
                          goto LABEL_425;
                        }
                      }

                      *v246 = *v225;
                      *(v246 + 16) = *(v225 + 16);
                      v243 = *(v225 + 32);
                      v244 = *(v225 + 48);
                      v245 = *(v225 + 80);
                      *(v246 + 64) = *(v225 + 64);
                      *(v246 + 80) = v245;
                      *(v246 + 32) = v243;
                      *(v246 + 48) = v244;
                      if (v247 <= 1)
                      {
                        goto LABEL_426;
                      }

                      continue;
                    }
                  }
                }

                else
                {
                  v229 = *(v225 + 16);
                  v228 = *(v225 + 24);
                  if (__PAIR128__(v228, v229) < *(v204 + 16))
                  {
                    goto LABEL_409;
                  }

                  if (v228 == *(v204 + 24) && v229 == *(v204 + 16))
                  {
                    goto LABEL_406;
                  }
                }
              }

LABEL_375:
              a2 -= 24;
              if (v200-- <= 2)
              {
                goto LABEL_438;
              }
            }
          }
        }

        v163 = *(v160 + 76);
        v164 = *(v160 + 172);
        if (v163 < v164)
        {
          goto LABEL_328;
        }

        if (v163 != v164)
        {
          goto LABEL_329;
        }

LABEL_325:
        v168 = *(v160 + 68);
        v169 = *(v160 + 164);
        if (v168 < v169 || v168 == v169 && *(v160 + 64) > *(v160 + 160))
        {
LABEL_328:
          v160 += 96;
          v162 = 2 * v161 + 2;
          goto LABEL_329;
        }

        goto LABEL_329;
      }

LABEL_438:
      v258 = *MEMORY[0x1E69E9840];
      return;
    }

    v13 = v12 >> 1;
    v14 = v10 + 96 * (v12 >> 1);
    if (v11 <= 0x3000)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(&a1[24 * v13], a1, a2 - 6, a5);
      --a3;
      if (a4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v15 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, &a1[24 * v13], a2 - 6, a5);
      v16 = 24 * v13;
      v17 = &a1[24 * v13 - 24];
      v18 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1 + 6, v17, a2 - 12, v15);
      v19 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1 + 12, &a1[v16 + 24], a2 - 18, v18);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(v17, v14, &a1[v16 + 24], v19);
      v20 = *a1;
      *a1 = *v14;
      *v14 = v20;
      v316 = *(a1 + 4);
      v321 = *(a1 + 5);
      v303 = *(a1 + 2);
      v311 = *(a1 + 3);
      v295 = *(a1 + 1);
      *(a1 + 1) = *(v14 + 16);
      v21 = *(v14 + 48);
      v23 = *(v14 + 64);
      v22 = *(v14 + 80);
      *(a1 + 2) = *(v14 + 32);
      *(a1 + 3) = v21;
      *(a1 + 4) = v23;
      *(a1 + 5) = v22;
      *(v14 + 16) = v295;
      *(v14 + 64) = v316;
      *(v14 + 80) = v321;
      *(v14 + 32) = v303;
      *(v14 + 48) = v311;
      --a3;
      if (a4)
      {
        goto LABEL_29;
      }
    }

    if (*(a1 - 11) == 1)
    {
      v24 = *(a1 - 5);
      v25 = *(a1 + 19);
      if (v24 < v25)
      {
        goto LABEL_29;
      }

      if (v24 != v25)
      {
        goto LABEL_115;
      }

LABEL_26:
      v29 = *(a1 - 7);
      v30 = *(a1 + 17);
      if (v29 < v30 || v29 == v30 && *(a1 - 8) > a1[16])
      {
        goto LABEL_29;
      }

LABEL_115:
      v71 = *a1;
      v72 = *(a1 + 2);
      v73 = *(a1 + 3);
      a5 = *(a1 + 2);
      v335 = a5;
      v343 = *(a1 + 3);
      v74 = a1[16];
      a5.n128_u32[0] = a1[17];
      v75 = a1[18];
      v76 = *(a1 + 19);
      v293 = a1[20];
      v294 = *(a1 + 84);
      v77 = *(a1 + 85);
      v333 = *(a1 + 47);
      v327 = *(a1 + 86);
      if (v77)
      {
        v78 = *(a2 - 5);
        if (v76 < v78 || v76 == v78 && ((v79 = *(a2 - 7), a5.n128_f32[0] < v79) || a5.n128_f32[0] == v79 && v74 > *(a2 - 8)))
        {
          v80 = (a1 + 24);
          v81 = *(a1 + 43);
          if (v76 < v81)
          {
            i = a2;
            if (v80 >= a2)
            {
              goto LABEL_187;
            }

LABEL_178:
            for (i = a2 - 24; ; i -= 24)
            {
              v96 = *(i + 19);
              if (v76 >= v96)
              {
                if (v76 != v96)
                {
                  break;
                }

                v97 = *(i + 17);
                if (a5.n128_f32[0] >= v97 && (a5.n128_f32[0] != v97 || v74 <= i[16]))
                {
                  break;
                }
              }
            }

            goto LABEL_187;
          }

          v91 = a1 + 40;
          do
          {
            if (v76 == v81)
            {
              v92 = *(v91 + 1);
              if (a5.n128_f32[0] < v92)
              {
                goto LABEL_176;
              }

              if (a5.n128_f32[0] == v92 && v74 > *v91)
              {
                break;
              }
            }

            v80 += 96;
            v81 = *(v91 + 27);
            v91 += 24;
          }

          while (v76 >= v81);
LABEL_175:
          v80 = (v91 - 16);
          goto LABEL_176;
        }
      }

      else if (__PAIR128__(v73, v72) < *v292 || (v73 == *(a2 - 9) ? (v85 = v72 == *v292) : (v85 = 0), v85 && ((v86 = *(a2 - 7), a5.n128_f32[0] < v86) || a5.n128_f32[0] == v86 && v74 > *(a2 - 8))))
      {
        v80 = (a1 + 24);
        v83 = *(a1 + 14);
        v84 = *(a1 + 15);
        if (__PAIR128__(v73, v72) < *(a1 + 7))
        {
          i = a2;
          if (v80 >= a2)
          {
            goto LABEL_187;
          }

          goto LABEL_233;
        }

        v91 = a1 + 40;
        while (1)
        {
          if (v73 == v84 && v72 == v83)
          {
            v95 = *(v91 + 1);
            if (a5.n128_f32[0] < v95)
            {
              goto LABEL_176;
            }

            if (a5.n128_f32[0] == v95 && v74 > *v91)
            {
              goto LABEL_175;
            }
          }

          v80 += 96;
          v83 = *(v91 + 6);
          v84 = *(v91 + 7);
          v93 = __PAIR128__(v73, v72) >= *(v91 + 3);
          v91 += 24;
          if (!v93)
          {
            goto LABEL_175;
          }
        }
      }

      v80 = (a1 + 24);
      if (a1 + 24 < a2)
      {
        if (*(a1 + 85))
        {
          do
          {
            v89 = *(v80 + 76);
            if (v76 < v89)
            {
              break;
            }

            if (v76 == v89)
            {
              v90 = *(v80 + 68);
              if (a5.n128_f32[0] < v90 || a5.n128_f32[0] == v90 && v74 > *(v80 + 64))
              {
                break;
              }
            }

            v80 += 96;
          }

          while (v80 < a2);
        }

        else
        {
          do
          {
            if (__PAIR128__(v73, v72) < *(v80 + 16))
            {
              break;
            }

            if (v73 == *(v80 + 24) && v72 == *(v80 + 16))
            {
              v88 = *(v80 + 68);
              if (a5.n128_f32[0] < v88 || a5.n128_f32[0] == v88 && v74 > *(v80 + 64))
              {
                break;
              }
            }

            v80 += 96;
          }

          while (v80 < a2);
        }
      }

LABEL_176:
      if (v80 >= a2)
      {
        i = a2;
        goto LABEL_187;
      }

      if (*(a1 + 85))
      {
        goto LABEL_178;
      }

LABEL_233:
      for (i = a2 - 24; ; i -= 24)
      {
        if (__PAIR128__(v73, v72) >= *(i + 1))
        {
          if (v73 != *(i + 3) || v72 != *(i + 2))
          {
            break;
          }

          v117 = *(i + 17);
          if (a5.n128_f32[0] >= v117 && (a5.n128_f32[0] != v117 || v74 <= i[16]))
          {
            break;
          }
        }
      }

LABEL_187:
      if (v80 < i)
      {
        while (1)
        {
          v101 = *v80;
          *v80 = *i;
          *i = v101;
          v318 = *(v80 + 64);
          v323 = *(v80 + 80);
          v305 = *(v80 + 32);
          v313 = *(v80 + 48);
          v297 = *(v80 + 16);
          *(v80 + 16) = *(i + 1);
          v102 = *(i + 3);
          v104 = *(i + 4);
          v103 = *(i + 5);
          *(v80 + 32) = *(i + 2);
          *(v80 + 48) = v102;
          *(v80 + 64) = v104;
          *(v80 + 80) = v103;
          *(i + 3) = v313;
          *(i + 4) = v318;
          *(i + 5) = v323;
          *(i + 1) = v297;
          *(i + 2) = v305;
          v10 = v80 + 96;
          if (v77)
          {
            v105 = *(v80 + 172);
            if (v76 >= v105)
            {
              v106 = v80 + 160;
              while (1)
              {
                if (v76 == v105)
                {
                  v107 = *(v106 + 4);
                  if (a5.n128_f32[0] < v107)
                  {
                    goto LABEL_216;
                  }

                  if (a5.n128_f32[0] == v107 && v74 > *v106)
                  {
                    break;
                  }
                }

                v10 += 96;
                v105 = *(v106 + 108);
                v106 += 96;
                if (v76 < v105)
                {
                  goto LABEL_216;
                }
              }

LABEL_214:
              if ((v77 & 1) == 0)
              {
                goto LABEL_223;
              }
            }

            do
            {
              do
              {
LABEL_217:
                i -= 24;
                v112 = *(i + 19);
              }

              while (v76 < v112);
              if (v76 != v112)
              {
                break;
              }

              v113 = *(i + 17);
            }

            while (a5.n128_f32[0] < v113 || a5.n128_f32[0] == v113 && v74 > i[16]);
            goto LABEL_192;
          }

          v108 = *(v80 + 112);
          v109 = *(v80 + 120);
          if (__PAIR128__(v73, v72) < *(v80 + 112))
          {
            goto LABEL_223;
          }

          v106 = v80 + 160;
          while (v73 != v109 || v72 != v108)
          {
LABEL_204:
            v10 += 96;
            v108 = *(v106 + 48);
            v109 = *(v106 + 56);
            v93 = __PAIR128__(v73, v72) >= *(v106 + 48);
            v106 += 96;
            if (!v93)
            {
              goto LABEL_216;
            }
          }

          v111 = *(v106 + 4);
          if (a5.n128_f32[0] >= v111)
          {
            break;
          }

LABEL_216:
          v10 = v106 - 64;
          if (v77)
          {
            goto LABEL_217;
          }

          do
          {
            do
            {
LABEL_223:
              i -= 24;
            }

            while (__PAIR128__(v73, v72) < *(i + 1));
            if (v73 != *(i + 3) || v72 != *(i + 2))
            {
              break;
            }

            v115 = *(i + 17);
          }

          while (a5.n128_f32[0] < v115 || a5.n128_f32[0] == v115 && v74 > i[16]);
LABEL_192:
          v80 = v10;
          if (v10 >= i)
          {
            goto LABEL_189;
          }
        }

        if (a5.n128_f32[0] == v111 && v74 > *v106)
        {
          goto LABEL_214;
        }

        goto LABEL_204;
      }

      v10 = v80;
LABEL_189:
      if ((v10 - 96) != a1)
      {
        *a1 = *(v10 - 96);
        *(a1 + 1) = *(v10 - 80);
        v98 = *(v10 - 64);
        v99 = *(v10 - 48);
        v100 = *(v10 - 16);
        *(a1 + 4) = *(v10 - 32);
        *(a1 + 5) = v100;
        *(a1 + 2) = v98;
        *(a1 + 3) = v99;
      }

      a4 = 0;
      *(v10 - 96) = v71;
      *(v10 - 80) = v72;
      *(v10 - 72) = v73;
      *(v10 - 64) = v335;
      *(v10 - 48) = v343;
      *(v10 - 32) = v74;
      *(v10 - 28) = a5.n128_u32[0];
      *(v10 - 24) = v75;
      *(v10 - 20) = v76;
      *(v10 - 16) = v293;
      *(v10 - 12) = v294;
      *(v10 - 11) = v77;
      *(v10 - 10) = v327;
      *(v10 - 2) = v333;
    }

    else
    {
      v27 = *(a1 - 10);
      v26 = *(a1 - 9);
      if (__PAIR128__(v26, v27) >= *(a1 + 1))
      {
        if (v26 != *(a1 + 3) || v27 != *(a1 + 2))
        {
          goto LABEL_115;
        }

        goto LABEL_26;
      }

LABEL_29:
      v31 = 0;
      v32 = *(a1 + 2);
      v33 = *a1;
      v34 = *(a1 + 3);
      v334 = *(a1 + 2);
      v342 = *(a1 + 3);
      v35 = a1[16];
      v36 = *(a1 + 17);
      v37 = a1[18];
      v38 = *(a1 + 19);
      v326 = *(a1 + 5);
      while (1)
      {
        v39 = &a1[v31];
        if (BYTE1(a1[v31 + 45]) == 1)
        {
          v40 = *(v39 + 43);
          if (v40 < v38)
          {
            goto LABEL_30;
          }

          if (v40 != v38)
          {
            break;
          }

          goto LABEL_41;
        }

        v43 = v39 + 28;
        v41 = *(v39 + 14);
        v42 = *(v43 + 1);
        if (__PAIR128__(v42, v41) < __PAIR128__(v34, v32))
        {
          goto LABEL_30;
        }

        if (v42 != v34 || v41 != v32)
        {
          break;
        }

LABEL_41:
        v45 = *&a1[v31 + 41];
        if (v45 >= v36)
        {
          if (v45 != v36)
          {
            break;
          }

          v46 = &a1[v31];
          if (a1[v31 + 40] <= v35)
          {
            goto LABEL_46;
          }
        }

LABEL_30:
        v31 += 24;
      }

      v46 = &a1[v31];
LABEL_46:
      v47 = (v46 + 24);
      j = a2 - 24;
      if (v46 != a1)
      {
        while (1)
        {
          if (*(j + 85) == 1)
          {
            v52 = *(j + 19);
            if (v52 < v38)
            {
              goto LABEL_78;
            }

            if (v52 != v38)
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (*(j + 1) < __PAIR128__(v34, v32))
            {
              goto LABEL_78;
            }

            if (*(j + 3) != v34 || *(j + 2) != v32)
            {
              goto LABEL_64;
            }
          }

          v54 = *(j + 17);
          if (v54 < v36 || v54 == v36 && j[16] > v35)
          {
            goto LABEL_78;
          }

LABEL_64:
          j -= 24;
        }
      }

      j = a2;
      if (v47 < a2)
      {
        for (j = a2 - 24; ; j -= 24)
        {
          if (*(j + 85) == 1)
          {
            v49 = *(j + 19);
            if (v49 < v38)
            {
              break;
            }

            if (v49 != v38)
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (*(j + 1) < __PAIR128__(v34, v32))
            {
              break;
            }

            if (*(j + 3) != v34 || *(j + 2) != v32)
            {
              goto LABEL_62;
            }
          }

          v51 = *(j + 17);
          if (v51 < v36 || v51 == v36 && j[16] > v35)
          {
            break;
          }

LABEL_62:
          if (v47 >= j)
          {
            break;
          }
        }
      }

LABEL_78:
      v10 = (v46 + 24);
      if (v47 < j)
      {
        v10 = (v46 + 24);
        v55 = j;
LABEL_81:
        v56 = *v10;
        *v10 = *v55;
        *v55 = v56;
        v317 = *(v10 + 64);
        v322 = *(v10 + 80);
        v304 = *(v10 + 32);
        v312 = *(v10 + 48);
        v296 = *(v10 + 16);
        *(v10 + 16) = *(v55 + 1);
        v57 = *(v55 + 3);
        v59 = *(v55 + 4);
        v58 = *(v55 + 5);
        *(v10 + 32) = *(v55 + 2);
        *(v10 + 48) = v57;
        *(v10 + 64) = v59;
        *(v10 + 80) = v58;
        *(v55 + 3) = v312;
        *(v55 + 4) = v317;
        *(v55 + 5) = v322;
        *(v55 + 1) = v296;
        *(v55 + 2) = v304;
        while (1)
        {
          do
          {
            while (1)
            {
              v10 += 96;
              if (*(v10 + 85) != 1)
              {
                break;
              }

              v60 = *(v10 + 76);
              if (v60 >= v38)
              {
                if (v60 != v38)
                {
                  goto LABEL_95;
                }

                goto LABEL_92;
              }
            }
          }

          while (*(v10 + 16) < __PAIR128__(v34, v32));
          if (*(v10 + 24) != v34 || *(v10 + 16) != v32)
          {
            break;
          }

LABEL_92:
          v62 = *(v10 + 68);
          if (v62 >= v36 && (v62 != v36 || *(v10 + 64) <= v35))
          {
            goto LABEL_95;
          }
        }

        while (1)
        {
LABEL_95:
          while (1)
          {
            v55 -= 24;
            if (*(v55 + 85) == 1)
            {
              break;
            }

            if (*(v55 + 1) < __PAIR128__(v34, v32))
            {
              goto LABEL_80;
            }

            if (*(v55 + 3) == v34 && *(v55 + 2) == v32)
            {
              goto LABEL_105;
            }
          }

          v63 = *(v55 + 19);
          if (v63 < v38)
          {
            goto LABEL_80;
          }

          if (v63 == v38)
          {
LABEL_105:
            v65 = *(v55 + 17);
            if (v65 < v36 || v65 == v36 && v55[16] > v35)
            {
LABEL_80:
              if (v10 >= v55)
              {
                break;
              }

              goto LABEL_81;
            }
          }
        }
      }

      if ((v10 - 96) != a1)
      {
        *a1 = *(v10 - 96);
        *(a1 + 1) = *(v10 - 80);
        v66 = *(v10 - 64);
        v67 = *(v10 - 48);
        v68 = *(v10 - 16);
        *(a1 + 4) = *(v10 - 32);
        *(a1 + 5) = v68;
        *(a1 + 2) = v66;
        *(a1 + 3) = v67;
      }

      *(v10 - 96) = v33;
      *(v10 - 80) = v32;
      *(v10 - 72) = v34;
      *(v10 - 64) = v334;
      *(v10 - 48) = v342;
      *(v10 - 32) = v35;
      *(v10 - 28) = v36;
      *(v10 - 24) = v37;
      *(v10 - 20) = v38;
      *(v10 - 16) = v326;
      if (v47 < j)
      {
LABEL_114:
        std::__introsort<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,false>(a1, v10 - 96, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *>(a1, (v10 - 96), v326);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *>(v10, a2, v70))
        {
          a2 = (v10 - 96);
          if (v69)
          {
            goto LABEL_438;
          }

          goto LABEL_2;
        }

        if (!v69)
        {
          goto LABEL_114;
        }
      }
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v121 = *MEMORY[0x1E69E9840];

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(v10, (v10 + 96), (v10 + 192), a2 - 6, a5);
      return;
    }

    if (v12 == 5)
    {
      v120 = *MEMORY[0x1E69E9840];

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(v10, (v10 + 96), (v10 + 192), (v10 + 288), a2 - 6, a5);
      return;
    }

    goto LABEL_10;
  }

  v122 = *MEMORY[0x1E69E9840];

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(v10, (v10 + 96), a2 - 6, a5);
}

__n128 std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 result)
{
  if (a2[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a2[4].n128_u32[3];
    v4 = a1[4].n128_f32[3];
    if (result.n128_f32[0] < v4)
    {
      goto LABEL_14;
    }

    if (result.n128_f32[0] != v4)
    {
      goto LABEL_28;
    }

LABEL_11:
    result.n128_u32[0] = a2[4].n128_u32[1];
    v8 = a1[4].n128_f32[1];
    if (result.n128_f32[0] < v8 || result.n128_f32[0] == v8 && a2[4].n128_u32[0] > a1[4].n128_u32[0])
    {
LABEL_14:
      if (a3[5].n128_u8[5] == 1)
      {
        v9 = a3[4].n128_f32[3];
        v10 = a2[4].n128_f32[3];
        if (v9 >= v10)
        {
          if (v9 != v10)
          {
            goto LABEL_32;
          }

LABEL_24:
          v14 = a3[4].n128_f32[1];
          v15 = a2[4].n128_f32[1];
          if (v14 < v15 || v14 == v15 && a3[4].n128_u32[0] > a2[4].n128_u32[0])
          {
            goto LABEL_27;
          }

LABEL_32:
          v21 = a1->n128_f32[0];
          a1->n128_u32[0] = a2->n128_u32[0];
          a2->n128_f32[0] = v21;
          v60 = a1[3];
          v64 = a1[4];
          v68 = a1[5];
          v52 = a1[1];
          v56 = a1[2];
          a1[1] = a2[1];
          v22 = a2[5];
          v24 = a2[2];
          v23 = a2[3];
          a1[4] = a2[4];
          a1[5] = v22;
          a1[2] = v24;
          a1[3] = v23;
          a2[4] = v64;
          a2[5] = v68;
          a2[2] = v56;
          a2[3] = v60;
          result = v52;
          a2[1] = v52;
          if (a3[5].n128_u8[5] == 1)
          {
            result.n128_u32[0] = a3[4].n128_u32[3];
            v25 = a2[4].n128_f32[3];
            if (result.n128_f32[0] >= v25)
            {
              if (result.n128_f32[0] != v25)
              {
                return result;
              }

LABEL_55:
              result.n128_u32[0] = a3[4].n128_u32[1];
              v38 = a2[4].n128_f32[1];
              if (result.n128_f32[0] >= v38 && (result.n128_f32[0] != v38 || a3[4].n128_u32[0] <= a2[4].n128_u32[0]))
              {
                return result;
              }
            }
          }

          else
          {
            v36 = a3[1].n128_u64[0];
            v35 = a3[1].n128_u64[1];
            if (__PAIR128__(v35, v36) >= *&a2[1])
            {
              if (v35 != a2[1].n128_u64[1] || v36 != a2[1].n128_u64[0])
              {
                return result;
              }

              goto LABEL_55;
            }
          }

          v39 = a2->n128_u32[0];
          a2->n128_u32[0] = a3->n128_u32[0];
          a3->n128_u32[0] = v39;
          v59 = a2[3];
          v63 = a2[4];
          v67 = a2[5];
          v51 = a2[1];
          v55 = a2[2];
          a2[1] = a3[1];
          v40 = a3[5];
          v42 = a3[2];
          v41 = a3[3];
          a2[4] = a3[4];
          a2[5] = v40;
          a2[2] = v42;
          a2[3] = v41;
          goto LABEL_59;
        }
      }

      else
      {
        v12 = a3[1].n128_u64[0];
        v11 = a3[1].n128_u64[1];
        if (__PAIR128__(v11, v12) >= *&a2[1])
        {
          if (v11 != a2[1].n128_u64[1] || v12 != a2[1].n128_u64[0])
          {
            goto LABEL_32;
          }

          goto LABEL_24;
        }
      }

LABEL_27:
      v16 = a1->n128_u32[0];
      a1->n128_u32[0] = a3->n128_u32[0];
      a3->n128_u32[0] = v16;
      v59 = a1[3];
      v63 = a1[4];
      v67 = a1[5];
      v51 = a1[1];
      v55 = a1[2];
      a1[1] = a3[1];
      v17 = a3[5];
      v19 = a3[2];
      v18 = a3[3];
      a1[4] = a3[4];
      a1[5] = v17;
      a1[2] = v19;
      a1[3] = v18;
LABEL_59:
      a3[4] = v63;
      a3[5] = v67;
      a3[2] = v55;
      a3[3] = v59;
      result = v51;
      a3[1] = v51;
      return result;
    }

    goto LABEL_28;
  }

  v6 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u64[1];
  if (__PAIR128__(v5, v6) < *&a1[1])
  {
    goto LABEL_14;
  }

  if (v5 == a1[1].n128_u64[1] && v6 == a1[1].n128_u64[0])
  {
    goto LABEL_11;
  }

LABEL_28:
  if (a3[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a3[4].n128_u32[3];
    v20 = a2[4].n128_f32[3];
    if (result.n128_f32[0] < v20)
    {
      goto LABEL_45;
    }

    if (result.n128_f32[0] != v20)
    {
      return result;
    }
  }

  else
  {
    v27 = a3[1].n128_u64[0];
    v26 = a3[1].n128_u64[1];
    if (__PAIR128__(v26, v27) < *&a2[1])
    {
      goto LABEL_45;
    }

    if (v26 != a2[1].n128_u64[1] || v27 != a2[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a3[4].n128_u32[1];
  v29 = a2[4].n128_f32[1];
  if (result.n128_f32[0] >= v29 && (result.n128_f32[0] != v29 || a3[4].n128_u32[0] <= a2[4].n128_u32[0]))
  {
    return result;
  }

LABEL_45:
  v30 = a2->n128_u32[0];
  a2->n128_u32[0] = a3->n128_u32[0];
  a3->n128_u32[0] = v30;
  v61 = a2[3];
  v65 = a2[4];
  v69 = a2[5];
  v53 = a2[1];
  v57 = a2[2];
  a2[1] = a3[1];
  v31 = a3[5];
  v33 = a3[2];
  v32 = a3[3];
  a2[4] = a3[4];
  a2[5] = v31;
  a2[2] = v33;
  a2[3] = v32;
  a3[4] = v65;
  a3[5] = v69;
  a3[2] = v57;
  a3[3] = v61;
  result = v53;
  a3[1] = v53;
  if (a2[5].n128_u8[5] != 1)
  {
    v44 = a2[1].n128_u64[0];
    v43 = a2[1].n128_u64[1];
    if (__PAIR128__(v43, v44) >= *&a1[1])
    {
      if (v43 != a1[1].n128_u64[1] || v44 != a1[1].n128_u64[0])
      {
        return result;
      }

      goto LABEL_66;
    }

LABEL_69:
    v47 = a1->n128_u32[0];
    a1->n128_u32[0] = a2->n128_u32[0];
    a2->n128_u32[0] = v47;
    v62 = a1[3];
    v66 = a1[4];
    v70 = a1[5];
    v54 = a1[1];
    v58 = a1[2];
    a1[1] = a2[1];
    v48 = a2[5];
    v50 = a2[2];
    v49 = a2[3];
    a1[4] = a2[4];
    a1[5] = v48;
    a1[2] = v50;
    a1[3] = v49;
    a2[4] = v66;
    a2[5] = v70;
    a2[2] = v58;
    a2[3] = v62;
    result = v54;
    a2[1] = v54;
    return result;
  }

  result.n128_u32[0] = a2[4].n128_u32[3];
  v34 = a1[4].n128_f32[3];
  if (result.n128_f32[0] < v34)
  {
    goto LABEL_69;
  }

  if (result.n128_f32[0] != v34)
  {
    return result;
  }

LABEL_66:
  result.n128_u32[0] = a2[4].n128_u32[1];
  v46 = a1[4].n128_f32[1];
  if (result.n128_f32[0] < v46 || result.n128_f32[0] == v46 && a2[4].n128_u32[0] > a1[4].n128_u32[0])
  {
    goto LABEL_69;
  }

  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 a5)
{
  result.n128_u64[0] = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a2, a3, a5).n128_u64[0];
  if (a4[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a4[4].n128_u32[3];
    v10 = a3[4].n128_f32[3];
    if (result.n128_f32[0] < v10)
    {
      goto LABEL_14;
    }

    if (result.n128_f32[0] != v10)
    {
      return result;
    }
  }

  else
  {
    v12 = a4[1].n128_u64[0];
    v11 = a4[1].n128_u64[1];
    if (__PAIR128__(v11, v12) < *&a3[1])
    {
      goto LABEL_14;
    }

    if (v11 != a3[1].n128_u64[1] || v12 != a3[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a4[4].n128_u32[1];
  v14 = a3[4].n128_f32[1];
  if (result.n128_f32[0] >= v14 && (result.n128_f32[0] != v14 || a4[4].n128_u32[0] <= a3[4].n128_u32[0]))
  {
    return result;
  }

LABEL_14:
  v15 = a3->n128_u32[0];
  a3->n128_u32[0] = a4->n128_u32[0];
  a4->n128_u32[0] = v15;
  v43 = a3[3];
  v46 = a3[4];
  v49 = a3[5];
  v37 = a3[1];
  v40 = a3[2];
  a3[1] = a4[1];
  v16 = a4[5];
  v18 = a4[2];
  v17 = a4[3];
  a3[4] = a4[4];
  a3[5] = v16;
  a3[2] = v18;
  a3[3] = v17;
  a4[4] = v46;
  a4[5] = v49;
  a4[2] = v40;
  a4[3] = v43;
  result = v37;
  a4[1] = v37;
  if (a3[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a3[4].n128_u32[3];
    v19 = a2[4].n128_f32[3];
    if (result.n128_f32[0] < v19)
    {
      goto LABEL_27;
    }

    if (result.n128_f32[0] != v19)
    {
      return result;
    }
  }

  else
  {
    v21 = a3[1].n128_u64[0];
    v20 = a3[1].n128_u64[1];
    if (__PAIR128__(v20, v21) < *&a2[1])
    {
      goto LABEL_27;
    }

    if (v20 != a2[1].n128_u64[1] || v21 != a2[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a3[4].n128_u32[1];
  v23 = a2[4].n128_f32[1];
  if (result.n128_f32[0] >= v23 && (result.n128_f32[0] != v23 || a3[4].n128_u32[0] <= a2[4].n128_u32[0]))
  {
    return result;
  }

LABEL_27:
  v24 = a2->n128_u32[0];
  a2->n128_u32[0] = a3->n128_u32[0];
  a3->n128_u32[0] = v24;
  v44 = a2[3];
  v47 = a2[4];
  v50 = a2[5];
  v38 = a2[1];
  v41 = a2[2];
  a2[1] = a3[1];
  v25 = a3[5];
  v27 = a3[2];
  v26 = a3[3];
  a2[4] = a3[4];
  a2[5] = v25;
  a2[2] = v27;
  a2[3] = v26;
  a3[4] = v47;
  a3[5] = v50;
  a3[2] = v41;
  a3[3] = v44;
  result = v38;
  a3[1] = v38;
  if (a2[5].n128_u8[5] != 1)
  {
    v30 = a2[1].n128_u64[0];
    v29 = a2[1].n128_u64[1];
    if (__PAIR128__(v29, v30) >= *&a1[1])
    {
      if (v29 != a1[1].n128_u64[1] || v30 != a1[1].n128_u64[0])
      {
        return result;
      }

      goto LABEL_37;
    }

LABEL_40:
    v33 = a1->n128_u32[0];
    a1->n128_u32[0] = a2->n128_u32[0];
    a2->n128_u32[0] = v33;
    v45 = a1[3];
    v48 = a1[4];
    v51 = a1[5];
    v39 = a1[1];
    v42 = a1[2];
    a1[1] = a2[1];
    v34 = a2[5];
    v36 = a2[2];
    v35 = a2[3];
    a1[4] = a2[4];
    a1[5] = v34;
    a1[2] = v36;
    a1[3] = v35;
    a2[4] = v48;
    a2[5] = v51;
    a2[2] = v42;
    a2[3] = v45;
    result = v39;
    a2[1] = v39;
    return result;
  }

  result.n128_u32[0] = a2[4].n128_u32[3];
  v28 = a1[4].n128_f32[3];
  if (result.n128_f32[0] < v28)
  {
    goto LABEL_40;
  }

  if (result.n128_f32[0] != v28)
  {
    return result;
  }

LABEL_37:
  result.n128_u32[0] = a2[4].n128_u32[1];
  v32 = a1[4].n128_f32[1];
  if (result.n128_f32[0] < v32 || result.n128_f32[0] == v32 && a2[4].n128_u32[0] > a1[4].n128_u32[0])
  {
    goto LABEL_40;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  result.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a2, a3, a4, a6).n128_u64[0];
  if (a5[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a5[4].n128_u32[3];
    v12 = a4[4].n128_f32[3];
    if (result.n128_f32[0] < v12)
    {
      goto LABEL_14;
    }

    if (result.n128_f32[0] != v12)
    {
      return result;
    }
  }

  else
  {
    v14 = a5[1].n128_u64[0];
    v13 = a5[1].n128_u64[1];
    if (__PAIR128__(v13, v14) < *&a4[1])
    {
      goto LABEL_14;
    }

    if (v13 != a4[1].n128_u64[1] || v14 != a4[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a5[4].n128_u32[1];
  v16 = a4[4].n128_f32[1];
  if (result.n128_f32[0] >= v16 && (result.n128_f32[0] != v16 || a5[4].n128_u32[0] <= a4[4].n128_u32[0]))
  {
    return result;
  }

LABEL_14:
  v17 = a4->n128_u32[0];
  a4->n128_u32[0] = a5->n128_u32[0];
  a5->n128_u32[0] = v17;
  v56 = a4[3];
  v60 = a4[4];
  v64 = a4[5];
  v48 = a4[1];
  v52 = a4[2];
  a4[1] = a5[1];
  v18 = a5[5];
  v20 = a5[2];
  v19 = a5[3];
  a4[4] = a5[4];
  a4[5] = v18;
  a4[2] = v20;
  a4[3] = v19;
  a5[4] = v60;
  a5[5] = v64;
  a5[2] = v52;
  a5[3] = v56;
  result = v48;
  a5[1] = v48;
  if (a4[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a4[4].n128_u32[3];
    v21 = a3[4].n128_f32[3];
    if (result.n128_f32[0] < v21)
    {
      goto LABEL_27;
    }

    if (result.n128_f32[0] != v21)
    {
      return result;
    }
  }

  else
  {
    v23 = a4[1].n128_u64[0];
    v22 = a4[1].n128_u64[1];
    if (__PAIR128__(v22, v23) < *&a3[1])
    {
      goto LABEL_27;
    }

    if (v22 != a3[1].n128_u64[1] || v23 != a3[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a4[4].n128_u32[1];
  v25 = a3[4].n128_f32[1];
  if (result.n128_f32[0] >= v25 && (result.n128_f32[0] != v25 || a4[4].n128_u32[0] <= a3[4].n128_u32[0]))
  {
    return result;
  }

LABEL_27:
  v26 = a3->n128_u32[0];
  a3->n128_u32[0] = a4->n128_u32[0];
  a4->n128_u32[0] = v26;
  v57 = a3[3];
  v61 = a3[4];
  v65 = a3[5];
  v49 = a3[1];
  v53 = a3[2];
  a3[1] = a4[1];
  v27 = a4[5];
  v29 = a4[2];
  v28 = a4[3];
  a3[4] = a4[4];
  a3[5] = v27;
  a3[2] = v29;
  a3[3] = v28;
  a4[4] = v61;
  a4[5] = v65;
  a4[2] = v53;
  a4[3] = v57;
  result = v49;
  a4[1] = v49;
  if (a3[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a3[4].n128_u32[3];
    v30 = a2[4].n128_f32[3];
    if (result.n128_f32[0] < v30)
    {
      goto LABEL_40;
    }

    if (result.n128_f32[0] != v30)
    {
      return result;
    }
  }

  else
  {
    v32 = a3[1].n128_u64[0];
    v31 = a3[1].n128_u64[1];
    if (__PAIR128__(v31, v32) < *&a2[1])
    {
      goto LABEL_40;
    }

    if (v31 != a2[1].n128_u64[1] || v32 != a2[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a3[4].n128_u32[1];
  v34 = a2[4].n128_f32[1];
  if (result.n128_f32[0] >= v34 && (result.n128_f32[0] != v34 || a3[4].n128_u32[0] <= a2[4].n128_u32[0]))
  {
    return result;
  }

LABEL_40:
  v35 = a2->n128_u32[0];
  a2->n128_u32[0] = a3->n128_u32[0];
  a3->n128_u32[0] = v35;
  v58 = a2[3];
  v62 = a2[4];
  v66 = a2[5];
  v50 = a2[1];
  v54 = a2[2];
  a2[1] = a3[1];
  v36 = a3[5];
  v38 = a3[2];
  v37 = a3[3];
  a2[4] = a3[4];
  a2[5] = v36;
  a2[2] = v38;
  a2[3] = v37;
  a3[4] = v62;
  a3[5] = v66;
  a3[2] = v54;
  a3[3] = v58;
  result = v50;
  a3[1] = v50;
  if (a2[5].n128_u8[5] != 1)
  {
    v41 = a2[1].n128_u64[0];
    v40 = a2[1].n128_u64[1];
    if (__PAIR128__(v40, v41) >= *&a1[1])
    {
      if (v40 != a1[1].n128_u64[1] || v41 != a1[1].n128_u64[0])
      {
        return result;
      }

      goto LABEL_50;
    }

LABEL_53:
    v44 = a1->n128_u32[0];
    a1->n128_u32[0] = a2->n128_u32[0];
    a2->n128_u32[0] = v44;
    v59 = a1[3];
    v63 = a1[4];
    v67 = a1[5];
    v51 = a1[1];
    v55 = a1[2];
    a1[1] = a2[1];
    v45 = a2[5];
    v47 = a2[2];
    v46 = a2[3];
    a1[4] = a2[4];
    a1[5] = v45;
    a1[2] = v47;
    a1[3] = v46;
    a2[4] = v63;
    a2[5] = v67;
    a2[2] = v55;
    a2[3] = v59;
    result = v51;
    a2[1] = v51;
    return result;
  }

  result.n128_u32[0] = a2[4].n128_u32[3];
  v39 = a1[4].n128_f32[3];
  if (result.n128_f32[0] < v39)
  {
    goto LABEL_53;
  }

  if (result.n128_f32[0] != v39)
  {
    return result;
  }

LABEL_50:
  result.n128_u32[0] = a2[4].n128_u32[1];
  v43 = a1[4].n128_f32[1];
  if (result.n128_f32[0] < v43 || result.n128_f32[0] == v43 && a2[4].n128_u32[0] > a1[4].n128_u32[0])
  {
    goto LABEL_53;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *>(__n128 *a1, int *a2, __n128 a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a1 + 6, a2 - 6, a3);
        result = 1;
        goto LABEL_64;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a1 + 6, a1 + 12, a2 - 6, a3);
        result = 1;
        goto LABEL_64;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a1 + 6, a1 + 12, a1 + 18, a2 - 6, a3);
        result = 1;
        goto LABEL_64;
    }

LABEL_14:
    v7 = a1 + 12;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a1 + 6, a1 + 12, a3);
    v10 = &a1[18];
    if (&a1[18] == a2)
    {
      goto LABEL_3;
    }

    v11 = 0;
    v12 = 0;
    while (1)
    {
      v14 = *(v10 + 85);
      if (v14 == 1)
      {
        v15 = *(v10 + 19);
        v16 = v7[4].n128_f32[3];
        if (v15 >= v16)
        {
          if (v15 != v16)
          {
            goto LABEL_18;
          }

          goto LABEL_29;
        }
      }

      else
      {
        v18 = *(v10 + 2);
        v17 = *(v10 + 3);
        if (__PAIR128__(v17, v18) >= *&v7[1])
        {
          if (v17 != v7[1].n128_u64[1] || v18 != v7[1].n128_u64[0])
          {
            goto LABEL_18;
          }

LABEL_29:
          v20 = *(v10 + 17);
          v21 = v7[4].n128_f32[1];
          if (v20 >= v21 && (v20 != v21 || v10[16] <= v7[4].n128_u32[0]))
          {
            goto LABEL_18;
          }
        }
      }

      v22 = *v10;
      v24 = *(v10 + 2);
      v23 = *(v10 + 3);
      v57 = *(v10 + 2);
      v59 = *(v10 + 3);
      v25 = v10[16];
      v26 = *(v10 + 17);
      v27 = v10[18];
      v28 = *(v10 + 19);
      v55 = v10[20];
      v56 = *(v10 + 84);
      v65 = *(v10 + 47);
      v64 = *(v10 + 86);
      *v10 = v7->n128_u32[0];
      n128_u64 = v7[1].n128_u64;
      v29 = v7[5];
      *(v10 + 4) = v7[4];
      *(v10 + 5) = v29;
      v30 = v7[3];
      *(v10 + 2) = v7[2];
      *(v10 + 3) = v30;
      *(v10 + 1) = v7[1];
      v31 = v11;
      if (v14)
      {
        while (1)
        {
          v34 = a1 + v31;
          v35 = *(&a1[10].n128_f32[3] + v31);
          if (v28 >= v35)
          {
            if (v28 != v35)
            {
              goto LABEL_17;
            }

            v36 = *(&a1[10].n128_f32[1] + v31);
            if (v26 >= v36)
            {
              if (v26 != v36)
              {
                goto LABEL_17;
              }

              v37 = (a1 + v31);
              if (v25 <= *(a1[10].n128_u32 + v31))
              {
                break;
              }
            }
          }

          n128_u64 = v7[-5].n128_u64;
          v7 -= 6;
          *(v34 + 192) = *(v34 + 96);
          v32 = *(v34 + 160);
          *(v34 + 240) = *(v34 + 144);
          *(v34 + 256) = v32;
          *(v34 + 272) = *(v34 + 176);
          v33 = *(v34 + 128);
          v31 -= 96;
          *(v34 + 208) = *(v34 + 112);
          *(v34 + 224) = v33;
          if (v31 == -192)
          {
LABEL_16:
            n128_u64 = (a1[13].n128_u64 + v31);
            v7 = a1;
            goto LABEL_17;
          }
        }

        n128_u64 = v37[13].n128_u64;
        v7 = v37 + 12;
      }

      else
      {
        while (1)
        {
          v40 = a1 + v31;
          v41 = (a1[7].n128_u64 + v31);
          if (__PAIR128__(v23, v24) >= *v41)
          {
            if (v23 != *(&a1[7].n128_u64[1] + v31) || v24 != *(a1[7].n128_u64 + v31))
            {
              goto LABEL_17;
            }

            v43 = *(&a1[10].n128_f32[1] + v31);
            if (v26 >= v43)
            {
              if (v26 != v43)
              {
                goto LABEL_17;
              }

              v44 = (a1 + v31);
              if (v25 <= *(a1[10].n128_u32 + v31))
              {
                break;
              }
            }
          }

          n128_u64 = v7[-5].n128_u64;
          v7 -= 6;
          *(v40 + 192) = *(v40 + 96);
          v38 = *(&a1[10] + v31);
          *(v40 + 240) = *(a1 + v31 + 144);
          *(v40 + 256) = v38;
          *(v40 + 272) = *(a1 + v31 + 176);
          v39 = *(&a1[8] + v31);
          v31 -= 96;
          *(v40 + 208) = *v41;
          *(v40 + 224) = v39;
          if (v31 == -192)
          {
            goto LABEL_16;
          }
        }

        n128_u64 = v44[13].n128_u64;
        v7 = v44 + 12;
      }

LABEL_17:
      v7->n128_f32[0] = v22;
      *n128_u64 = v24;
      n128_u64[1] = v23;
      v7[2] = v57;
      v7[3] = v59;
      v7[4].n128_u32[0] = v25;
      v7[4].n128_f32[1] = v26;
      v7[4].n128_u32[2] = v27;
      v7[4].n128_f32[3] = v28;
      v7[5].n128_u8[4] = v56;
      v7[5].n128_u32[0] = v55;
      v7[5].n128_u8[5] = v14;
      *(v7[5].n128_u64 + 6) = v64;
      ++v12;
      v7[5].n128_u16[7] = v65;
      if (v12 == 8)
      {
        result = v10 + 24 == a2;
        goto LABEL_64;
      }

LABEL_18:
      v7 = v10;
      v11 += 96;
      v10 += 24;
      if (v10 == a2)
      {
        goto LABEL_3;
      }
    }
  }

  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      if (*(a2 - 11) == 1)
      {
        v5 = *(a2 - 5);
        v6 = a1[4].n128_f32[3];
        if (v5 < v6)
        {
          goto LABEL_62;
        }

        if (v5 != v6)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v46 = *(a2 - 10);
        v45 = *(a2 - 9);
        if (__PAIR128__(v45, v46) < *&a1[1])
        {
          goto LABEL_62;
        }

        if (v45 != a1[1].n128_u64[1] || v46 != a1[1].n128_u64[0])
        {
          goto LABEL_3;
        }
      }

      v48 = *(a2 - 7);
      v49 = a1[4].n128_f32[1];
      if (v48 >= v49 && (v48 != v49 || *(a2 - 8) <= a1[4].n128_u32[0]))
      {
        goto LABEL_3;
      }

LABEL_62:
      v50 = a1->n128_u32[0];
      a1->n128_u32[0] = *(a2 - 24);
      *(a2 - 24) = v50;
      v61 = a1[3];
      v62 = a1[4];
      v63 = a1[5];
      v58 = a1[1];
      v60 = a1[2];
      a1[1] = *(a2 - 5);
      v51 = *(a2 - 1);
      v53 = *(a2 - 4);
      v52 = *(a2 - 3);
      a1[4] = *(a2 - 2);
      a1[5] = v51;
      a1[2] = v53;
      a1[3] = v52;
      *(a2 - 2) = v62;
      *(a2 - 1) = v63;
      *(a2 - 4) = v60;
      *(a2 - 3) = v61;
      result = 1;
      *(a2 - 5) = v58;
      goto LABEL_64;
    }

    goto LABEL_14;
  }

LABEL_3:
  result = 1;
LABEL_64:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

void word_trie_s::~word_trie_s(word_trie_s *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        v5 = v4[13];
        if (v5)
        {
          word_trie_s::~word_trie_s(v5);
          MEMORY[0x1C691FEF0]();
        }

        v6 = v4[17];
        if (v6)
        {
          do
          {
            v7 = *v6;
            operator delete(v6);
            v6 = v7;
          }

          while (v7);
        }

        v8 = v4[15];
        v4[15] = 0;
        if (v8)
        {
          operator delete(v8);
        }

        MEMORY[0x1C691FEF0](v4, 0x10A0C4077AE0019);
      }

      v9 = v2[2];
      if (v9)
      {
        free(v9);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

uint64_t __SIWordTrieGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSIWordTrieTypeID = result;
  return result;
}

void SIWordTrieInsert(uint64_t a1, uint64_t a2, unint64_t a3, __n128 *a4, uint64_t a5, int a6, int a7, unsigned __int8 a8, __n128 a9, unsigned __int8 a10, int a11)
{
  if (a3)
  {
    v11 = a4[3];
    v13[2] = a4[2];
    v13[3] = v11;
    v13[4] = a4[4];
    v12 = a4[1];
    v13[0] = *a4;
    v13[1] = v12;
    v12.n128_u64[0] = 0;
    word_trie_s::insert((a1 + 16), a2, a3, v13, a5, U_ZERO_ERROR, a6, 0, a9, v12, a7, a8, a10, a11, 0, 0, 0);
  }
}

void word_trie_s::insert(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, UErrorCode a6, int a7, int a8, __n128 a9, __n128 a10, int a11, unsigned __int8 a12, unsigned __int8 a13, int a14, unsigned __int8 a15, unsigned __int8 a16, unint64_t a17)
{
  v144 = a8;
  v143 = a7;
  v142 = a6;
  v141 = a5;
  v147 = a3;
  v149 = a9;
  v150 = a10;
  v159 = *MEMORY[0x1E69E9840];
  v131 = a2;
  v136 = a17;
  v19 = a2 + 16 * a17;
  v20 = *v19;
  v133 = v19;
  v21 = *(v19 + 8);
  v22 = malloc_good_size(2 * v21);
  v23 = malloc_type_malloc(v22, 0x1000040BDFB0063uLL);
  pErrorCode[0] = U_ZERO_ERROR;
  for (i = u_strToLower(v23, v22 >> 1, v20, v21, 0, pErrorCode); pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR; v22 *= 2)
  {
    v23 = malloc_type_realloc(v23, 2 * v22, 0x1000040BDFB0063uLL);
    i = u_strToLower(v23, (2 * v22) >> 1, v20, v21, 0, pErrorCode);
  }

  v25 = i;
  v26 = (3 * i + 1);
  MEMORY[0x1EEE9AC00](i);
  v27 = &v126 - ((v26 + 15) & 0x1FFFFFFF0);
  bzero(v27, v26);
  v28 = &v23[v25];
  if (v26 < 4 * v25)
  {
    v29 = &v27[v26];
    v30 = v23;
    v31 = v23;
    while (1)
    {
      v40 = *v31++;
      v39 = v40;
      if (v40 > 0x7F)
      {
        if (v39 > 0x7FF)
        {
          if ((v39 & 0xF800) == 0xD800)
          {
            if ((v39 & 0x400) == 0 && v31 < v28)
            {
              v41 = *v31;
              if ((v41 & 0xFC00) == 0xDC00)
              {
                if ((v27 + 3) >= v29)
                {
                  goto LABEL_34;
                }

                v31 = v30 + 2;
                v38 = v41 + (v39 << 10) - 56613888;
                *v27 = (v38 >> 18) | 0xF0;
                v27[1] = (v38 >> 12) & 0x3F | 0x80;
                v27[2] = (v38 >> 6) & 0x3F | 0x80;
                v27[3] = v41 & 0x3F | 0x80;
                v27 += 4;
              }
            }
          }

          else
          {
            if ((v27 + 2) >= v29)
            {
              goto LABEL_34;
            }

            *v27 = (v39 >> 12) | 0xE0;
            v27[1] = (v39 >> 6) & 0x3F | 0x80;
            v27[2] = v39 & 0x3F | 0x80;
            v27 += 3;
          }
        }

        else
        {
          if ((v27 + 1) >= v29)
          {
            goto LABEL_34;
          }

          *v27 = (v39 >> 6) | 0xC0;
          v27[1] = v39 & 0x3F | 0x80;
          v27 += 2;
        }
      }

      else
      {
        if (v27 >= v29)
        {
          goto LABEL_34;
        }

        *v27++ = v39;
      }

      v30 = v31;
      if (v31 >= v28)
      {
        goto LABEL_34;
      }
    }
  }

  if (v25)
  {
    v32 = v23;
    v33 = v23;
    do
    {
      v35 = *v33++;
      v34 = v35;
      if (v35 <= 0x7F)
      {
        *v27++ = v34;
      }

      else if (v34 > 0x7FF)
      {
        if ((v34 & 0xF800) == 0xD800)
        {
          if ((v34 & 0x400) == 0 && v33 < v28)
          {
            v36 = *v33;
            if ((v36 & 0xFC00) == 0xDC00)
            {
              v33 = v32 + 2;
              v37 = v36 + (v34 << 10) - 56613888;
              *v27 = (v37 >> 18) | 0xF0;
              v27[1] = (v37 >> 12) & 0x3F | 0x80;
              v27[2] = (v37 >> 6) & 0x3F | 0x80;
              v27[3] = v36 & 0x3F | 0x80;
              v27 += 4;
            }
          }
        }

        else
        {
          *v27 = (v34 >> 12) | 0xE0;
          v27[1] = (v34 >> 6) & 0x3F | 0x80;
          v27[2] = v34 & 0x3F | 0x80;
          v27 += 3;
        }
      }

      else
      {
        *v27 = (v34 >> 6) | 0xC0;
        v27[1] = v34 & 0x3F | 0x80;
        v27 += 2;
      }

      v32 = v33;
    }

    while (v33 < v28);
  }

LABEL_34:
  v137 = a4;
  v151 = a1;
  v134 = &v126;
  v42 = -1759636613;
  v43 = -1789642873;
  v44 = 718793509;
  *v27 = 0;
  v45 = 2 * v25;
  if ((v25 & 0x40000000) != 0)
  {
    v46 = 2 * v25 + 3;
  }

  else
  {
    v46 = 2 * v25;
  }

  v47 = v46 >> 2;
  v48 = (v23 + (v46 & 0xFFFFFFFC));
  v49 = 1713515327;
  v50 = 1107688271;
  v51 = -1759636613;
  v135 = 2 * v25 + 3;
  if (v135 >= 7)
  {
    v52 = -v47;
    v51 = -1759636613;
    v53 = 718793509;
    v54 = -1789642873;
    do
    {
      v54 = 5 * v54 + 2071795100;
      v53 = 5 * v53 + 1808688022;
      HIDWORD(v55) = v54 * *&v48[2 * v52];
      LODWORD(v55) = HIDWORD(v55);
      v56 = (v55 >> 21) * v53;
      HIDWORD(v55) = v51;
      LODWORD(v55) = v51;
      v51 = v56 ^ (5 * (v55 >> 19) + 1390208809);
      v57 = __CFADD__(v52++, 1);
    }

    while (!v57);
    v49 = 5 * v54 + 2071795100;
    v50 = 5 * v53 + 1808688022;
  }

  v138 = a16;
  v145 = a14;
  v146 = a13;
  v148 = a11;
  v140 = a12;
  v130 = v47;
  if (v25)
  {
    HIDWORD(v58) = *v48 * v49;
    LODWORD(v58) = HIDWORD(v58);
    v59 = (v58 >> 21) * v50;
    HIDWORD(v58) = v51;
    LODWORD(v58) = v51;
    v51 = v59 ^ (5 * (v58 >> 19) + 1390208809);
  }

  v139 = a15;
  v60 = v151[1];
  v152 = 2 * v25;
  if (!*&v60)
  {
    goto LABEL_68;
  }

  v61 = -1028477387 * ((-2048144789 * (v51 ^ v45)) ^ ((-2048144789 * (v51 ^ v45)) >> 13));
  v62 = v61 ^ HIWORD(v61);
  v63 = vcnt_s8(v60);
  v63.i16[0] = vaddlv_u8(v63);
  v128 = v63.u32[0];
  if (v63.u32[0] > 1uLL)
  {
    v64 = v61 ^ HIWORD(v61);
    if (*&v60 <= v62)
    {
      v64 = v62 % v60.i32[0];
    }
  }

  else
  {
    v64 = (v60.i32[0] - 1) & v62;
  }

  v127 = *v151;
  v65 = *(v127 + 8 * v64);
  if (!v65 || (v66 = *v65) == 0)
  {
LABEL_68:
    v132.i32[0] = 2 * v25;
    operator new();
  }

  v129 = *&v60 - 1;
  v132 = v60;
  v67 = v64;
  if (v128 < 2)
  {
    while (1)
    {
      v68 = v66[1];
      if (v68 == v62)
      {
        if (*(v66 + 6) == v25)
        {
          v69 = memcmp(v66[2], v23, v152);
          v64 = v67;
          v60 = v132;
          if (!v69)
          {
            goto LABEL_58;
          }
        }
      }

      else if ((v68 & v129) != v64)
      {
        goto LABEL_68;
      }

      v66 = *v66;
      if (!v66)
      {
        goto LABEL_68;
      }
    }
  }

  while (1)
  {
    v72 = v66[1];
    if (v72 == v62)
    {
      break;
    }

    if (v72 >= *&v60)
    {
      v72 %= *&v60;
    }

    if (v72 != v64)
    {
      goto LABEL_68;
    }

LABEL_61:
    v66 = *v66;
    if (!v66)
    {
      goto LABEL_68;
    }
  }

  if (*(v66 + 6) != v25)
  {
    goto LABEL_61;
  }

  v73 = memcmp(v66[2], v23, v152);
  v64 = v67;
  v60 = v132;
  if (v73)
  {
    goto LABEL_61;
  }

LABEL_58:
  if (v135 >= 7)
  {
    v75 = -v130;
    do
    {
      v43 = 5 * v43 + 2071795100;
      v44 = 5 * v44 + 1808688022;
      HIDWORD(v76) = v43 * *&v48[2 * v75];
      LODWORD(v76) = HIDWORD(v76);
      v77 = (v76 >> 21) * v44;
      HIDWORD(v76) = v42;
      LODWORD(v76) = v42;
      v42 = v77 ^ (5 * (v76 >> 19) + 1390208809);
      v57 = __CFADD__(v75++, 1);
    }

    while (!v57);
    v70 = 5 * v43 + 2071795100;
    v71 = 5 * v44 + 1808688022;
  }

  else
  {
    v70 = 1713515327;
    v71 = 1107688271;
  }

  v78 = v145;
  if (v25)
  {
    HIDWORD(v79) = *v48 * v70;
    LODWORD(v79) = HIDWORD(v79);
    v80 = (v79 >> 21) * v71;
    HIDWORD(v79) = v42;
    LODWORD(v79) = v42;
    v42 = v80 ^ (5 * (v79 >> 19) + 1390208809);
  }

  v81 = v137;
  v82 = -1028477387 * ((-2048144789 * (v42 ^ v45)) ^ ((-2048144789 * (v42 ^ v45)) >> 13));
  v83 = v82 ^ HIWORD(v82);
  if (v128 > 1)
  {
    v84 = v82 ^ HIWORD(v82);
    if (*&v60 <= v83)
    {
      v84 = v83 % v60.i32[0];
    }
  }

  else
  {
    v84 = (v60.i32[0] - 1) & v83;
  }

  v85 = *(v127 + 8 * v84);
  if (!v85 || (v86 = *v85) == 0)
  {
LABEL_100:
    operator new();
  }

  if (v128 < 2)
  {
    while (1)
    {
      v87 = v86[1];
      if (v87 == v83)
      {
        if (*(v86 + 6) == v25 && !memcmp(v86[2], v23, v152))
        {
          goto LABEL_91;
        }
      }

      else if ((v87 & v129) != v84)
      {
        goto LABEL_100;
      }

      v86 = *v86;
      if (!v86)
      {
        goto LABEL_100;
      }
    }
  }

  while (2)
  {
    v91 = v86[1];
    if (v91 != v83)
    {
      if (v91 >= *&v60)
      {
        v91 %= *&v60;
      }

      if (v91 != v84)
      {
        goto LABEL_100;
      }

      goto LABEL_93;
    }

    if (*(v86 + 6) != v25 || (v92 = memcmp(v86[2], v23, v152), v60 = v132, v92))
    {
LABEL_93:
      v86 = *v86;
      if (!v86)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

LABEL_91:
  v88 = v144;
  v89 = v143;
  v90 = v142;
  v93 = v86[4];
  *(v93 + 112) = *(v93 + 112) & 0xFF800000FFFFFFFFLL | ((((*(v93 + 112) + 0x100000000) >> 32) & 0x7FFFFF) << 32);
  v94 = v141;
  if (*(v81 + 69) == 1)
  {
    v95 = *(v81 + 60);
    v96 = *(v93 + 60);
    v97 = v95 == v96;
    if (v95 < v96)
    {
      goto LABEL_113;
    }
  }

  else
  {
    if (*v81 < *v93)
    {
      goto LABEL_113;
    }

    v97 = *(v81 + 8) == *(v93 + 8) && *v81 == *v93;
  }

  v98 = v81;
  if (v97)
  {
    v99 = *(v81 + 52);
    v100 = *(v93 + 52);
    if (v99 < v100 || (v98 = v81, v99 == v100) && (v98 = v81, *(v81 + 48) > *(v93 + 48)))
    {
LABEL_113:
      v98 = v93;
    }
  }

  *v93 = *v98;
  v101 = v98[1];
  v102 = v98[2];
  v103 = v98[4];
  *(v93 + 48) = v98[3];
  *(v93 + 64) = v103;
  *(v93 + 16) = v101;
  *(v93 + 32) = v102;
  *&v102.f64[0] = v149.n128_u64[0];
  *&v102.f64[1] = v150.n128_u64[0];
  *(v93 + 80) = vminnmq_f64(*(v93 + 80), v102);
  pErrorCode[0] = v90;
  v104 = *(v81 + 48);
  v156 = *(v81 + 32);
  v157 = v104;
  v158 = *(v81 + 64);
  v105 = *(v81 + 16);
  v154 = *v81;
  v155 = v105;
  std::__hash_table<std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,ci_rankingbits_wrapped_s>>((v93 + 120), v90);
  v106 = *(v93 + 112);
  v107 = (v106 << 27) >> 27;
  if (v107 >= v89)
  {
    LOBYTE(v107) = v89;
  }

  v108 = v107 & 0x1F;
  v109 = v106 & 0xFBFFFFFFFFFFFC00;
  v110 = (v106 << 54) >> 59;
  if ((v106 << 22) >> 27 <= v88)
  {
    LOBYTE(v110) = v88;
  }

  v111 = v108 & 0xFFFFFC1F | (32 * (v110 & 0x1F));
  v112 = v138;
  *(v93 + 169) = v138;
  v113 = *(v93 + 164);
  if (v113 >= v78)
  {
    v113 = v78;
  }

  *(v93 + 164) = v113;
  v114 = v136;
  v115 = (v106 >> 58) & 1;
  if (v112 <= v136)
  {
    LODWORD(v115) = 1;
  }

  v97 = v115 == 0;
  v116 = 0x400000000000000;
  if (v97)
  {
    v116 = 0;
  }

  v117 = v109 | v116 | v111;
  *(v93 + 112) = v117;
  v118 = *(v93 + 96);
  v119 = v94;
  v120 = v147;
  v121 = v140;
  if (v118)
  {
    if (v118 != v94)
    {
      v119 = -1;
      goto LABEL_128;
    }
  }

  else
  {
LABEL_128:
    *(v93 + 96) = v119;
  }

  if ((v146 & 1) != 0 || v121)
  {
    if (v146)
    {
      v117 |= 0x100000000000000uLL;
    }

    if (v121)
    {
      v117 |= 0x80000000000000uLL;
    }

    *(v93 + 112) = v117;
  }

  v122 = v149;
  v123 = v150;
  if (*(v93 + 160) != v148)
  {
    *(v93 + 160) = 0;
  }

  if (v114 + 1 < v120)
  {
    if (!*(v93 + 104))
    {
      operator new();
    }

    v124 = *(v81 + 48);
    v155 = *(v81 + 32);
    v156 = v124;
    v157 = *(v81 + 64);
    v125 = *(v81 + 16);
    *pErrorCode = *v81;
    v154 = v125;
    word_trie_s::insert(v122, v123);
  }

  if (v23)
  {
    free(v23);
  }

  v74 = *MEMORY[0x1E69E9840];
}

void *std::__hash_table<std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,ci_rankingbits_wrapped_s>>(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_22;
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

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,std::__unordered_map_hasher<SIUnicodeString,std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,HashFunction,HashEqual,true>,std::__unordered_map_equal<SIUnicodeString,std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,HashEqual,HashFunction,true>,std::allocator<std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

double word_trie_s::iterateFragments(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, int a7, int a8)
{
  v105 = a8;
  v96 = a7;
  v99 = a5;
  v127 = *MEMORY[0x1E69E9840];
  v106 = a3;
  if (a3 <= 0x13)
  {
    v8 = MEMORY[0x1EEE9AC00](a1);
    v88 = 0;
    *(&v12 + 1) = 0;
    memset(v87, 0, sizeof(v87));
    v13 = *(v8 + 16);
    if (v13)
    {
      v113 = v87;
      v104 = v10;
      v103 = v9;
      v102 = (v9 + 16 * v106);
      v98 = v11;
      v14 = -1.79769313e308;
      *&v12 = 134217984;
      v90 = v12;
      v107 = v106 + 1;
      v97 = v11 + 16;
      v91 = &v115;
      while (1)
      {
        v15 = v13[4];
        v16 = *(v15 + 14);
        v17 = v15[3];
        v119 = v15[2];
        v18 = v15[4];
        v120 = v17;
        v121 = v18;
        v19 = *v15;
        v118 = v15[1];
        v117 = v19;
        v20 = *(v15 + 12);
        v21 = *(v15 + 10);
        v22 = *(v15 + 11);
        v23 = *(v15 + 168);
        v24 = *(v15 + 169);
        v26 = *(v15 + 40);
        v25 = *(v15 + 41);
        v116 = 0;
        v115 = 0u;
        v114 = 0u;
        LODWORD(v116) = *(v15 + 38);
        prime = *(v15 + 16);
        v111 = v20;
        v110 = v23;
        v109 = v25;
        v108 = v24;
        v112 = v26;
        if (prime == 1)
        {
          break;
        }

        if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
          v28 = *(&v114 + 8);
          v29 = prime >= *(&v114 + 1);
          if (prime > *(&v114 + 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          v28 = 0;
          v29 = 1;
          if (prime)
          {
            goto LABEL_21;
          }
        }

        if (!v29)
        {
          v30 = vcvtps_u32_f32(*(&v115 + 1) / *&v116);
          if (*&v28 < 3uLL || (v31 = vcnt_s8(v28), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
          {
            v33 = prime;
            v30 = std::__next_prime(v30);
            prime = v33;
          }

          else
          {
            v32 = 1 << -__clz(v30 - 1);
            if (v30 >= 2)
            {
              v30 = v32;
            }
          }

          if (prime <= v30)
          {
            prime = v30;
          }

          if (prime < *&v28)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
        v34 = *(v15 + 17);
        if (!v34)
        {
          goto LABEL_46;
        }

        do
        {
          v35 = *(v34 + 4);
          if (!*(&v114 + 1))
          {
            goto LABEL_44;
          }

          v36 = vcnt_s8(*(&v114 + 8));
          v36.i16[0] = vaddlv_u8(v36);
          if (v36.u32[0] > 1uLL)
          {
            v37 = *(v34 + 4);
            if (*(&v114 + 1) <= v35)
            {
              v37 = v35 % DWORD2(v114);
            }
          }

          else
          {
            v37 = (DWORD2(v114) - 1) & v35;
          }

          v38 = *(v114 + 8 * v37);
          if (!v38 || (v39 = *v38) == 0)
          {
LABEL_44:
            operator new();
          }

          if (v36.u32[0] < 2uLL)
          {
            while (1)
            {
              v40 = v39[1];
              if (v40 == v35)
              {
                if (*(v39 + 4) == v35)
                {
                  goto LABEL_45;
                }
              }

              else if ((v40 & (*(&v114 + 1) - 1)) != v37)
              {
                goto LABEL_44;
              }

              v39 = *v39;
              if (!v39)
              {
                goto LABEL_44;
              }
            }
          }

          while (1)
          {
            v41 = v39[1];
            if (v41 == v35)
            {
              break;
            }

            if (v41 >= *(&v114 + 1))
            {
              v41 %= *(&v114 + 1);
            }

            if (v41 != v37)
            {
              goto LABEL_44;
            }

LABEL_39:
            v39 = *v39;
            if (!v39)
            {
              goto LABEL_44;
            }
          }

          if (*(v39 + 4) != v35)
          {
            goto LABEL_39;
          }

LABEL_45:
          v34 = *v34;
        }

        while (v34);
LABEL_46:
        v42 = (v16 << 9) >> 41;
        v43 = v102;
        *v102 = v13[2];
        v43[1] = *(v13 + 6);
        if ((*(v15 + 119) & 2) != 0)
        {
          v55 = *(v15 + 13);
          if (v55)
          {
            v56 = v99;
            v57 = v99[1];
            v58 = v113;
            *v113 = *v99;
            v58[1] = v57;
            v58[2] = v56[2];
            *(v58 + 6) = *(v56 + 6);
            v14 = fmax(v14, word_trie_s::iterateFragments(v55, v103, v107, v104, v58, v98, (v16 << 9) >> 41));
          }
        }

        else
        {
          v44 = v99;
          v45 = v99[1];
          v46 = v113;
          *v113 = *v99;
          v46[1] = v45;
          v46[2] = v44[2];
          *(v46 + 6) = *(v44 + 6);
          v47 = *(v15 + 13);
          v101 = (v16 << 27) >> 27;
          v100 = (v16 << 54) >> 59;
          if (v47)
          {
            if ((v16 & 0x400000000000000) != 0)
            {
              v59 = HIBYTE(v16) & 1;
              v60 = (v16 >> 55) & 1;
              v124 = v119;
              v125 = v120;
              v126 = v121;
              *buf = v117;
              v123 = v118;
              if (v106)
              {
                v61 = v96;
              }

              else
              {
                v61 = (v16 >> 23) >> 9;
              }

              if (v106)
              {
                v62 = v105;
              }

              else
              {
                v62 = (v16 >> 23) >> 9;
              }

              v50 = v98;
              v63 = *(v98 + 16);
              v95 = v16;
              v64 = v113;
              v89 = v59;
              v51 = v104;
              v94 = v60;
              v92 = v62;
              v52 = v103;
              v54 = v107;
              LODWORD(v93) = v61;
              v65 = v63(v98, v103, v107, v104 + 1, buf, v111, v42, v21, v22, 1.79769313e308);
              v53 = v64;
              v16 = v95;
              if (v65 > v14)
              {
                v124 = v119;
                v125 = v120;
                v126 = v121;
                *buf = v117;
                v123 = v118;
                BYTE5(v86) = v108;
                BYTE4(v86) = v110;
                LODWORD(v86) = v109;
                BYTE6(v85) = v89;
                BYTE5(v85) = v94;
                BYTE4(v85) = v112 != 0;
                LODWORD(v85) = v100;
                v66 = (*(v50 + 16))(v50, v52, v54, v51 + 1, buf, v111, v42, v93, v21, v22, 1.79769313e308, __PAIR64__(v101, v92), v85, v86, &v114, v53);
                v53 = v113;
                v14 = v66;
              }
            }

            else
            {
              v48 = *__error();
              v49 = _SILogForLogForCategory(1);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v90;
                *&buf[4] = v107;
                _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "Skip at %ld", buf, 0xCu);
              }

              *__error() = v48;
              v50 = v98;
              v51 = v104;
              v52 = v103;
              v53 = v113;
              v54 = v107;
            }

            v14 = fmax(v14, word_trie_s::iterateFragments(*(v15 + 13), v52, v54, v51 + 1, v53, v50, v42));
          }

          if ((v16 & 0x400000000000000) != 0)
          {
            v69 = HIBYTE(v16) & 1;
            v70 = (v16 >> 55) & 1;
            v124 = v119;
            v125 = v120;
            v126 = v121;
            *buf = v117;
            v123 = v118;
            if (v106)
            {
              v71 = v96;
            }

            else
            {
              v71 = v42;
            }

            if (v106)
            {
              v72 = v105;
            }

            else
            {
              v72 = v42;
            }

            v73 = v98;
            v74 = *(v98 + 16);
            v75 = v108;
            v76 = v110;
            v77 = v109;
            v93 = v69;
            v95 = v70;
            v92 = v72;
            v78 = v107;
            v79 = v111;
            LODWORD(v94) = v71;
            if (v74(v98, v103, v107, v104 + 1, buf, v111, v42, v21, v22, v14) > v14)
            {
              v124 = v119;
              v125 = v120;
              v126 = v121;
              *buf = v117;
              v123 = v118;
              BYTE5(v86) = v75;
              BYTE4(v86) = v76;
              LODWORD(v86) = v77;
              BYTE6(v85) = v93;
              BYTE5(v85) = v95;
              BYTE4(v85) = v112 != 0;
              LODWORD(v85) = v100;
              v14 = (*(v73 + 16))(v73, v103, v78, v104 + 1, buf, v79, v42, v94, v21, v22, v14, __PAIR64__(v101, v92), v85, v86, &v114, v113);
            }
          }

          else
          {
            v67 = *__error();
            v68 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v90;
              *&buf[4] = v107;
              _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "Skip at %ld", buf, 0xCu);
            }

            *__error() = v67;
          }
        }

        v80 = v115;
        if (v115)
        {
          do
          {
            v81 = *v80;
            operator delete(v80);
            v80 = v81;
          }

          while (v81);
        }

        v82 = v114;
        *&v114 = 0;
        if (v82)
        {
          operator delete(v82);
        }

        v13 = *v13;
        if (!v13)
        {
          goto LABEL_80;
        }
      }

      prime = 2;
LABEL_21:
      std::__hash_table<std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,std::__unordered_map_hasher<SIUnicodeString,std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,HashFunction,HashEqual,true>,std::__unordered_map_equal<SIUnicodeString,std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,HashEqual,HashFunction,true>,std::allocator<std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>>>::__do_rehash<true>(&v114, prime);
      goto LABEL_22;
    }
  }

  v14 = -1.79769313e308;
LABEL_80:
  v83 = *MEMORY[0x1E69E9840];
  return v14;
}

void *ContentIndexQueryNodeForOidPath(const void *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = 8 * a2;
  v7 = 8 * a2 + 104;
  if (v7 >> 17)
  {
    v8 = 1;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9AC8] >= v7;
  }

  if (!v8)
  {
    ++sTotal_6326;
  }

  v9 = malloc_type_zone_calloc(queryZone, 1uLL, v7, 0x5BAF1CEAuLL);
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v12 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v12, 2u);
  }

  *v9 = 1;
  memcpy(v9 + 13, a1, v6);
  v9[5] = v9 + 13;
  v9[4] = v9 + 5;
  v9[6] = 0;
  if (a3)
  {
    v10 = 512;
  }

  else
  {
    v10 = 1024;
  }

  *(v9 + 14) = v10;
  *(v9 + 15) = v4;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  v9[12] = 0;
  *(v9 + 6) = 1;
  return v9;
}

void assert_invalid_doc_type(_DWORD *a1)
{
  v2 = *__error();
  v3 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[12];
    *buf = 136315906;
    v9 = "assert_invalid_doc_type";
    v10 = 1024;
    v11 = 117;
    v12 = 2048;
    v13 = a1;
    v14 = 1024;
    v15 = v4;
    _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: Expected valid doc set type for %p. Got %d", buf, 0x22u);
  }

  *__error() = v2;
  v5 = __si_assert_copy_extra_332();
  v6 = v5;
  v7 = "";
  if (v5)
  {
    v7 = v5;
  }

  __message_assert("%s:%u: failed assertion '%s' %s Expected valid doc set type for %p. Got %d", "ContentIndexQuery.c", 118, "0", v7, a1, a1[12]);
  free(v6);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

unsigned int *ContentIndexDocSetCreateEmpty(uint64_t a1)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
  {
    ++sTotal_6326;
  }

  result = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
  if (!result)
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    result = 0;
    if (v3)
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v4, 2u);
      result = 0;
    }
  }

  atomic_store(1u, result);
  result[1] = -1073627135;
  *(result + 7) = a1;
  result[12] = 0;
  *(result + 5) = -1;
  result[5] = 0;
  return result;
}

uint64_t *extractConstrainingDocSets(int a1, uint64_t *a2, const __CFSet *a3, _DWORD *a4, _BYTE *a5)
{
  *a5 = 0;
  if (a2)
  {
    v6 = a2;
    v7 = malloc_type_zone_malloc(queryZone, 8 * a1, 0xA4971684uLL);
    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v72 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v72, 2u);
    }

    v70 = a4;
    LODWORD(v8) = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = 1;
    do
    {
      v11 = v9;
      v12 = v8;
      v13 = v10;
      v14 = *v6;
      v15 = *(v6 + 2);
      v16 = malloc_type_zone_malloc(queryZone, 0x98uLL, 0xA4971684uLL);
      if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      v17 = v7;
      v18 = *(v14 + 16);
      *v16 = *v14;
      v16[1] = v18;
      v19 = *(v14 + 32);
      v20 = *(v14 + 48);
      v21 = *(v14 + 80);
      v16[4] = *(v14 + 64);
      v16[5] = v21;
      v16[2] = v19;
      v16[3] = v20;
      v22 = *(v14 + 96);
      v23 = *(v14 + 112);
      v24 = *(v14 + 128);
      *(v16 + 18) = *(v14 + 144);
      v16[7] = v23;
      v16[8] = v24;
      v16[6] = v22;
      atomic_store(1u, v16);
      *(v16 + 2) = 0;
      *(v16 + 18) = 0;
      *(v16 + 13) = 0;
      *(v16 + 10) = 0;
      *(v16 + 11) = 0;
      v25 = *(v14 + 20);
      if (v25 != 0.0)
      {
        *(v16 + 5) = v25;
      }

      *(v16 + 14) = 0;
      *(v16 + 15) = 0;
      *(v16 + 32) &= 0x80000000;
      *(v16 + 33) = 0;
      *(v16 + 17) = 0;
      v26 = malloc_type_zone_malloc(queryZone, 8 * *(v14 + 96), 0xA4971684uLL);
      if (!v26 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v74 = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v74, 2u);
      }

      *(v16 + 9) = v26;
      v27 = *(v14 + 96);
      if (v27 >= v15)
      {
        v28 = v15;
      }

      else
      {
        v28 = *(v14 + 96);
      }

      if (v28)
      {
        v29 = 0;
        v9 = v11;
        do
        {
          v30 = *(*(v14 + 72) + v29);
          if (v30)
          {
            atomic_fetch_add(v30, 1u);
          }

          *(*(v16 + 9) + v29) = v30;
          v29 += 8;
        }

        while (8 * v28 != v29);
        v27 = *(v14 + 96);
      }

      else
      {
        v9 = v11;
      }

      v31 = v28 + 1;
      if (v31 < v27)
      {
        v32 = v28;
        do
        {
          v33 = *(*(v14 + 72) + 8 * v31);
          if (v33)
          {
            atomic_fetch_add(v33, 1u);
          }

          *(*(v16 + 9) + 8 * v32) = v33;
          ++v31;
          ++v32;
        }

        while (v31 < *(v14 + 96));
      }

      --*(v16 + 24);
      *(v16 + 64) = 1;
      if (!v28 && *(v16 + 12) == 7)
      {
        *(v16 + 12) = 4;
        v34 = ContentIndexDocSetNotLazy(v16, 0.0);
        ContentIndexDocSetDispose(v16);
        v16 = v34;
      }

      Mutable = CFArrayCreateMutable(v9, 2, 0);
      v36 = _ContentIndexMemoizeDocSet(v16, a3, Mutable);
      CFRelease(Mutable);
      if (!v36[2])
      {
        ContentIndexFlattenDocSet(v36, a3);
        v37 = CFArrayCreateMutable(v9, 2, 0);
        v36 = _ContentIndexMemoizeDocSet(v36, a3, v37);
        CFRelease(v37);
      }

      v8 = v12 + 1;
      v17[v12] = v36;
      v7 = v17;
      v6 = v6[2];
      v10 = v13 + 1;
    }

    while (v6);
    if (v12 == -1)
    {
LABEL_39:
      a4 = v70;
    }

    else
    {
      v38 = 0;
      while (*(v17[v38] + 48) != 6)
      {
        if (v13 == ++v38)
        {
          goto LABEL_39;
        }
      }

      qsort_b(v17, v12 + 1, 8uLL, &__block_literal_global_6366);
      v39 = 0;
      v40 = -1;
      while (*(v17[v39] + 48) != 6)
      {
        ++v39;
        ++v40;
        if (v12 + 1 == v39)
        {
          goto LABEL_50;
        }
      }

      if (v39)
      {
        if (v39 == 1)
        {
          v41 = ContentIndexDocSetExceptLazy_Array(*v17, v12, (v17 + 1));
          v42 = v13;
          v43 = v17;
          do
          {
            v44 = *v43++;
            ContentIndexDocSetDispose(v44);
            --v42;
          }

          while (v42);
          a4 = v70;
        }

        else
        {
          v69 = v39 - 1;
          v58 = v8 - v40;
          v59 = ContentIndexDocSetIntersectionLazy(v39, v17, 0.0);
          ContentIndexFlattenDocSet(v59, a3);
          v60 = CFArrayCreateMutable(v11, 2, 0);
          v61 = _ContentIndexMemoizeDocSet(v59, a3, v60);
          CFRelease(v60);
          v62 = 0;
          do
          {
            ContentIndexDocSetDispose(v17[v62++]);
          }

          while (v39 != v62);
          v17[v69] = v61;
          v41 = ContentIndexDocSetExceptLazy_Array(v61, v8 - v39, &v17[v39]);
          if (v69 < v8)
          {
            v63 = &v17[v40];
            a4 = v70;
            v64 = a3;
            do
            {
              v65 = *v63++;
              ContentIndexDocSetDispose(v65);
              --v58;
            }

            while (v58);
            v7 = v17;
            goto LABEL_79;
          }

          a4 = v70;
          v7 = v17;
        }

        v64 = a3;
LABEL_79:
        ContentIndexFlattenDocSet(v41, v64);
        v66 = CFArrayCreateMutable(v11, 2, 0);
        v55 = _ContentIndexMemoizeDocSet(v41, v64, v66);
        CFRelease(v66);
        goto LABEL_80;
      }

LABEL_50:
      v45 = 0;
      v46 = 0;
      *a5 = 1;
      v47 = v17;
      do
      {
        v48 = v47;
        v49 = *(v7[v45] + 96);
        v46 += v49;
        if (v49 <= 1)
        {
          v47 = v48;
        }

        else
        {
          v47 = 0;
        }

        ++v45;
      }

      while (v13 != v45);
      a4 = v70;
      if (!v47)
      {
        v48 = malloc_type_zone_malloc(queryZone, 8 * v46, 0xA4971684uLL);
        if (!v48)
        {
          _log_fault_for_malloc_failure();
        }
      }

      v50 = 0;
      v51 = 0;
      do
      {
        v52 = v7[v50];
        if (*(v52 + 96))
        {
          v53 = 0;
          do
          {
            v54 = *(*(v52 + 72) + 8 * v53);
            if (v54)
            {
              atomic_fetch_add(v54, 1u);
            }

            v48[(v51 + v53++)] = v54;
          }

          while (v53 < *(v52 + 96));
          v51 = (v51 + v53);
        }

        ContentIndexDocSetDispose(v52);
        ++v50;
      }

      while (v50 != v8);
      v55 = ContentIndexDocSetUnionLazy(v51, v48, 0.0);
      if (v51)
      {
        v56 = v48;
        do
        {
          v57 = *v56++;
          ContentIndexDocSetDispose(v57);
          --v51;
        }

        while (v51);
      }

      if (v48 != v7)
      {
        free(v48);
      }

LABEL_80:
      *v7 = v55;
      LODWORD(v8) = 1;
    }
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
  }

  *a4 = v8;
  return v7;
}

void recomputeConstraints(atomic_uint **a1, unsigned int a2, uint64_t *a3, int a4, int a5, int a6, char a7, int a8)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v15 = *a3;
  v16 = *(*a3 + 128);
  v17 = v16 & 0x7FFFFFFF;
  if ((v16 & 0x7FFFFFFFu) < 2)
  {
    v20 = **(v15 + 120);
    if (v20)
    {
      atomic_fetch_add(v20, 1u);
    }

    v34 = v20;
  }

  else
  {
    v18 = *(v15 + 120);
    if (a4 == 5)
    {
      v19 = ContentIndexDocSetIntersectionLazy(v17, v18, 0.0);
    }

    else
    {
      v19 = ContentIndexDocSetUnionLazy(v17, v18, 0.0);
    }

    v20 = v19;
    v34 = v19;
  }

  v21 = *a3;
  if ((*(*a3 + 128) & 0x7FFFFFFF) != 0)
  {
    v22 = 0;
    do
    {
      ContentIndexDocSetDispose(*(*(v21 + 120) + 8 * v22++));
      v21 = *a3;
    }

    while (v22 < (*(*a3 + 128) & 0x7FFFFFFFu));
  }

  if (a5 == 5)
  {
    v23 = ContentIndexDocSetIntersectionLazy(a2, a1, 0.0);
  }

  else
  {
    v23 = ContentIndexDocSetUnionLazy(a2, a1, 0.0);
  }

  v24 = v23;
  v25 = 0;
  v35 = v23;
  do
  {
    ContentIndexDocSetDispose(a1[v25++]);
  }

  while (a2 != v25);
  free(a1);
  if (a7)
  {
    v34 = v24;
    v35 = v20;
    v26 = v20;
    if (a6 != 4)
    {
      goto LABEL_19;
    }

LABEL_23:
    v27 = ContentIndexDocSetUnionLazy(2, &v34, 0.0);
    goto LABEL_25;
  }

  v26 = v24;
  v24 = v20;
  if (a6 == 4)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (a6 == 7)
  {
    v27 = ContentIndexDocSetExceptLazy(v24, v26, 0.0);
  }

  else
  {
    if (a6 != 5)
    {
      v30 = __si_assert_copy_extra_332();
      v31 = v30;
      v32 = "";
      if (v30)
      {
        v32 = v30;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 1099, "0", v32);
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

    v27 = ContentIndexDocSetIntersectionLazy(2, &v34, 0.0);
  }

LABEL_25:
  **(*a3 + 120) = v27;
  ContentIndexDocSetDispose(v24);
  ContentIndexDocSetDispose(v26);
  *(*a3 + 128) = *(*a3 + 128) & 0x80000000 | 1;
  if (a8)
  {
    v28 = 0x80000000;
  }

  else
  {
    v28 = 0;
  }

  *(*a3 + 128) = v28 & 0x80000000 | *(*a3 + 128) & 0x7FFFFFFF;
  v29 = *MEMORY[0x1E69E9840];
}