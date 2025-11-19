atomic_ullong *partition_phase_PositionOffsetWithMeta_t(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[1];
  if (*result >= v3)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v3)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v5 = result[3];
  if (result[2] <= v5)
  {
LABEL_8:
    v7 = 0;
    if (add_explicit == -1)
    {
      v6 = -1;
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
  if (v6 < v5)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  if (v6 == -1 || add_explicit == -1)
  {
    v7 = 0;
    v8 = 0;
    if (add_explicit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v2 + 24 * add_explicit;
    v15 = result[7];
    v16 = v2 + 24 * v6;
    while (1)
    {
      if (v13 < 0x2000)
      {
        v17 = (v14 + 24 * v13);
        while (1)
        {
          v18 = *v17;
          v17 += 3;
          if (v18 > v15)
          {
            break;
          }

          if (++v13 == 0x2000)
          {
            v19 = 0x2000;
            if (v12 < 0x2000)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }
      }

      v19 = v13;
      if (v12 < 0x2000)
      {
LABEL_28:
        v20 = (v16 + 24 * v12);
        while (1)
        {
          v21 = *v20;
          v20 += 3;
          if (v21 < v15)
          {
            break;
          }

          if (++v12 == 0x2000)
          {
            v13 = v19;
            goto LABEL_36;
          }
        }
      }

LABEL_32:
      v22 = v12;
      if (v19 == 0x2000 || v12 == 0x2000)
      {
        break;
      }

      v23 = (v16 + 24 * v12);
      v24 = *(v23 + 2);
      v25 = *v23;
      v26 = v14 + 24 * v19;
      v27 = *(v26 + 16);
      *v23 = *v26;
      *(v23 + 2) = v27;
      *v26 = v25;
      *(v26 + 16) = v24;
      v13 = v19 + 1;
      v12 = v22 + 1;
      if (v19 > 8190 || v22 >= 0x1FFF)
      {
        goto LABEL_36;
      }
    }

    v13 = v19;
LABEL_36:
    v28 = v13 != 0x2000;
    if (v12 == 0x2000 && v13 == 0x2000)
    {
      v28 = 2;
    }

    if (v28)
    {
LABEL_47:
      v31 = result[3];
      if (result[2] > v31)
      {
        v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v6 >= v31)
        {
LABEL_51:
          v12 = 0;
          ++v10;
          continue;
        }

        atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
      }

      v6 = -1;
      goto LABEL_51;
    }

    v30 = result[1];
    if (*result < v30)
    {
      add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v30)
      {
        goto LABEL_46;
      }

      atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_46:
    v13 = 0;
    ++v11;
    if ((v28 - 1) <= 1)
    {
      goto LABEL_47;
    }
  }

  while (v6 != -1 && add_explicit != -1);
  v8 = v11 << 13;
  v7 = v10 << 13;
  if (add_explicit == -1)
  {
LABEL_11:
    add_explicit = v6;
  }

LABEL_12:
  *(result[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(result + 4, v8, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 5, v7, memory_order_relaxed);
  return result;
}

uint64_t _big_split_PositionOffsetWithMeta_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5)
{
  v5 = a2 + 1;
  if (a5 >= 3)
  {
    while (v5 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_PositionOffsetWithMeta_t(a1, v5, a3, a4, a5);
      }
    }
  }

  return parallel_partition_PositionOffsetWithMeta_t(a1, v5, a3, a4, a5);
}

void storage_reader_destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _release_read_window(&availableReaders, v1);
    *(a1 + 8) = 0;
  }
}

void *_storage_reader_match_address(void *result, unint64_t a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      v3 = v2 + 528;
    }

    else
    {
      v3 = *result + 216;
    }

    return storage_windows_contains_address(v3, a2);
  }

  return result;
}

void _storage_reader_exception_cleanup(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      _release_read_window(&availableReaders, v2);
      *(a1 + 8) = 0;
    }
  }
}

void storageMakeReadOnly(uint64_t a1)
{
  storageUnmap(a1);
  v3 = *(a1 + 216);
  v2 = a1 + 216;
  fd_make_readonly(v3);
  *(v2 + 4152) = 1;
  *(v2 + 36) = 1;

  _windowsMapInit(v2, 1);
}

void storageUnmap(uint64_t a1)
{
  if ((*(a1 + 252) & 1) == 0 && *(a1 + 254) == 1 && *(a1 + 248) >= 1)
  {
    v2 = 0;
    do
    {
      storageWindowSync(*(a1 + 272 + 8 * v2++), 0);
    }

    while (v2 < *(a1 + 248));
  }

  storageWindowsUnmap(a1 + 216);
}

uint64_t *storageHeaderStore(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 >> 28)
  {
    *v5 = v4 | 0x80;
    v5[1] = (v4 >> 7) | 0x80;
    v5[2] = (v4 >> 14) | 0x80;
    v5[3] = (v4 >> 21) | 0x80;
    v5[4] = v4 >> 28;
    v6 = 5;
  }

  else if (v4 >= 0x200000)
  {
    *v5 = v4 | 0x80;
    v5[1] = (v4 >> 7) | 0x80;
    v5[2] = (v4 >> 14) | 0x80;
    v5[3] = v4 >> 21;
    v6 = 4;
  }

  else if (v4 >= 0x4000)
  {
    *v5 = v4 | 0x80;
    v5[1] = (v4 >> 7) | 0x80;
    v5[2] = v4 >> 14;
    v6 = 3;
  }

  else if (v4 >= 0x80)
  {
    *v5 = v4 | 0x80;
    v5[1] = v4 >> 7;
    v6 = 2;
  }

  else
  {
    *v5 = v4;
    v6 = 1;
  }

  *a2 += v6;
  storeVInt64(a2, *(a1 + 232));
  result = storeVInt64(a2, *(a1 + 224));
  for (i = 0; i != 128; i += 8)
  {
    v9 = *(a1 + 8 + i);
    if (v9)
    {
      if (v9 >= *(a1 + 232))
      {
        v10 = __si_assert_copy_extra(*(a1 + 216));
        v11 = v10;
        v12 = "";
        if (v10)
        {
          v12 = v10;
        }

        __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v12, v9, *(a1 + 232));
        free(v11);
        if (__valid_fsp(*(a1 + 216)))
        {
          v13 = 2989;
        }

        else
        {
          v13 = 3072;
        }

        *v13 = -559038737;
        abort();
      }

      result = storeVInt64(a2, *(a1 + 8 + i));
    }

    else
    {
      *(*a2)++ = 0;
    }
  }

  return result;
}

BOOL storageHeaderRestore(uint64_t a1, char **a2)
{
  v50 = *MEMORY[0x1E69E9840];
  bzero(a1, 0x1140uLL);
  v4 = *a2;
  v5 = **a2;
  if (**a2 < 0)
  {
    v7 = v4[1];
    if (v4[1] < 0)
    {
      v8 = v4[2];
      if (v4[2] < 0)
      {
        v10 = v4[3];
        if (v4[3] < 0)
        {
          v38 = v4[4];
          v39 = ((v10 & 0x7F) << 21) | (v38 << 28) | ((v8 & 0x7F) << 14) | ((v7 & 0x7F) << 7) | v5 & 0x7F;
          v11 = v4 + 5;
          *a2 = v4 + 5;
          *(a1 + 4) = v39;
          if ((v38 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_11;
        }

        v9 = ((v8 & 0x7F) << 14) | (v10 << 21) | ((v7 & 0x7F) << 7) | v5 & 0x7F;
        v6 = 4;
      }

      else
      {
        v9 = ((v7 & 0x7F) << 7) | (v8 << 14) | v5 & 0x7F;
        v6 = 3;
      }

      v5 = v9;
    }

    else
    {
      v5 = v5 & 0x7F | (v7 << 7);
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  v11 = &v4[v6];
  *a2 = v11;
  *(a1 + 4) = v5;
LABEL_11:
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v11;
  do
  {
    ++v13;
    v16 = *v15++;
    v14 |= (v16 & 0x7F) << v12;
    if ((v16 & 0x80) == 0)
    {
      break;
    }

    v17 = v12 == 63;
    v12 += 7;
  }

  while (!v17);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &v11[v13];
  *a2 = v21;
  *(a1 + 232) = v14;
  do
  {
    ++v19;
    v22 = *v15++;
    v20 |= (v22 & 0x7F) << v18;
    if ((v22 & 0x80) == 0)
    {
      break;
    }

    v17 = v18 == 63;
    v18 += 7;
  }

  while (!v17);
  v23 = 0;
  v24 = &v21[v19];
  *a2 = &v21[v19];
  *(a1 + 224) = v20;
  while (1)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v26 + 1;
      v29 = v24[v26];
      v27 |= (v29 & 0x7F) << v25;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v26 = v28;
      v17 = v25 == 63;
      v25 += 7;
    }

    while (!v17);
    v24 += v28;
    *a2 = v24;
    if (v27)
    {
      if (*(a1 + 232) <= v27)
      {
        break;
      }
    }

    *(a1 + 8 + 8 * v23) = v27;
    *(a1 + 4374) = 0;
    if (++v23 == 16)
    {
      result = *(a1 + 224) >= *(a1 + 232);
      goto LABEL_34;
    }
  }

  v31 = *__error();
  v32 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v37 = *(a1 + 232);
    v40 = 136316162;
    v41 = "_storeageSetFreeListHead";
    v42 = 1024;
    v43 = 200;
    v44 = 1024;
    v45 = v23;
    v46 = 2048;
    v47 = v27;
    v48 = 2048;
    v49 = v37;
    _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", &v40, 0x2Cu);
  }

  *__error() = v31;
LABEL_31:
  v33 = *__error();
  v34 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v40 = 136315394;
    v41 = "storageHeaderRestore";
    v42 = 1024;
    v43 = 358;
    _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: invalid storage data", &v40, 0x12u);
  }

  v35 = __error();
  result = 0;
  *v35 = v33;
LABEL_34:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t storageInit(uint64_t a1, off_t a2, unint64_t a3, uint64_t a4, int a5, int a6, char a7, int a8, void *aBlock)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v11 = a5;
    *a1 = a8;
    *(a1 + 4374) = 0;
    if (a5)
    {
      *(a1 + 196) = 0;
      *(a1 + 180) = 0u;
      *(a1 + 164) = 0u;
      *(a1 + 148) = 0u;
      *(a1 + 132) = 0u;
      *(a1 + 116) = 0u;
      *(a1 + 100) = 0u;
      *(a1 + 84) = 0u;
      *(a1 + 68) = 0u;
      *(a1 + 52) = 0u;
      *(a1 + 36) = 0u;
      *(a1 + 20) = 0u;
      *(a1 + 4) = 0u;
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
      v20 = fd_stat(a4, &v27);
      st_size = *(a1 + 224);
      if (!st_size)
      {
        st_size = v27.st_size;
        if (v20)
        {
          st_size = a2;
        }

        *(a1 + 4) = 0;
      }

      a2 = st_size;
    }

    *(a1 + 216) = a4;
    *(a1 + 252) = a7;
    *(a1 + 224) = a2;
    *(a1 + 248) = 1;
    *(a1 + 253) = 0;
    if (aBlock)
    {
      v22 = _Block_copy(aBlock);
    }

    else
    {
      v22 = 0;
    }

    *(a1 + 256) = v22;
    *(a1 + 264) = 26;
    bzero((a1 + 272), 0x1000uLL);
    if (!*(a1 + 232))
    {
      v23 = 8;
      if (a3 > 8)
      {
        v23 = a3;
      }

      *(a1 + 232) = v23;
      *(a1 + 240) = v23;
    }

    *(a1 + 208) = a6;
    v24 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
    *(a1 + 4408) = v24;
    *v24 = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    v24[5] = 0u;
    v24[6] = 0u;
    v24[7] = 0u;
    v24[8] = 0u;
    v24[9] = 0u;
    v24[10] = 0u;
    v24[11] = 0u;
    v24[12] = 0u;
    pthread_rwlock_init(*(a1 + 4408), 0);
    *(a1 + 252) = a7;
    *(a1 + 254) = 0;
    *(a1 + 4400) = 0;
    _windowsMapInit(a1 + 216, 0);
    if (v11)
    {
      if (a7)
      {
        goto LABEL_26;
      }

      fd_truncate(a4, 0);
      v25 = *(a1 + 224);
    }

    else
    {
      v25 = *(a1 + 224);
      if (*(a1 + 232) > v25)
      {
LABEL_25:
        result = 0;
        goto LABEL_27;
      }

      if (a7)
      {
LABEL_26:
        result = 1;
        goto LABEL_27;
      }
    }

    if (fd_truncate(a4, v25))
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v27.st_dev = 136315394;
    *&v27.st_mode = "storageInit";
    WORD2(v27.st_ino) = 1024;
    *(&v27.st_ino + 6) = 401;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: storageInit - inFdPtr == NULL", &v27, 0x12u);
  }

  v18 = __error();
  result = 0;
  *v18 = v16;
LABEL_27:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void storageClose(uint64_t a1)
{
  storageWindowsUnmap(a1 + 216);
  storageWindowsClose(a1 + 216);
  v2 = *(a1 + 4408);
  if (v2)
  {
    pthread_rwlock_wrlock(v2);
    _release_read_window(&availableReaders, *(*(a1 + 4408) + 200));
    pthread_rwlock_unlock(*(a1 + 4408));
    pthread_rwlock_destroy(*(a1 + 4408));
    free(*(a1 + 4408));
    *(a1 + 4408) = 0;
  }

  *(a1 + 4372) = 1;
}

uint64_t storageSyncPages(uint64_t a1, uint64_t a2, size_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = (a3 + *(a1 + 232) - 1) / a3;
  Current = CFAbsoluteTimeGetCurrent();
  if ((*(a1 + 252) & 1) == 0 && *(a1 + 254) == 1 && *(a1 + 248) >= 1)
  {
    v8 = 0;
    do
    {
      storageWindowSync(*(a1 + 272 + 8 * v8++), 0);
    }

    while (v8 < *(a1 + 248));
  }

  if (!v6)
  {
    v11 = 0;
    v14 = 0;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (*a2 <= v10 || !CFBitVectorGetBitAtIndex(*(a2 + 16), v10))
    {
      v14 = 0;
      goto LABEL_18;
    }

    v12 = fd_mmap(*(a1 + 216));
    if (v12 == -1)
    {
      break;
    }

    v13 = v12;
    fd_system_status_stall_if_busy();
    if (msync(v13, a3, 16))
    {
      v14 = *__error();
    }

    else
    {
      v14 = 0;
    }

    if (munmap(v13, a3))
    {
      v14 = *__error();
    }

    ++v11;
    if (v14)
    {
      goto LABEL_25;
    }

LABEL_18:
    ++v10;
    v9 += a3;
    if (v10 >= v6)
    {
      goto LABEL_25;
    }
  }

  v14 = *__error();
  bzero(buf, 0x400uLL);
  v15 = fd_realpath(*(a1 + 216), buf);
  if (!v15)
  {
    v15 = fd_name(*(a1 + 216), buf, 0x400uLL);
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v24 = "";
    v25 = 136316418;
    v26 = "storageSyncPages";
    v27 = 1024;
    if (v15)
    {
      v24 = v15;
    }

    v28 = 555;
    v29 = 1024;
    v30 = a3;
    v31 = 2048;
    v32 = v9;
    v33 = 1024;
    v34 = v14;
    v35 = 2080;
    v36 = v24;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: mmap(%d, %lld) err:%d, %s", &v25, 0x32u);
  }

  *__error() = v16;
LABEL_25:
  v18 = *__error();
  v19 = _SILogForLogForCategory(10);
  v20 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 67109632;
    v38 = v6;
    v39 = 1024;
    v40 = v11;
    v41 = 2048;
    v42 = v21;
    _os_log_impl(&dword_1C278D000, v19, v20, "sync pages (%d, %d) took %f seconds", buf, 0x18u);
  }

  *__error() = v18;
  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t storageInvalidate(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 248);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = result + 272;
    v9 = a3 + a2;
    do
    {
      v10 = *(v8 + 8 * v7);
      if (v10)
      {
        v11 = v10[2];
        v12 = a2 >= v11;
        v13 = a2 - v11;
        if (v12)
        {
          v14 = v10[3];
          v15 = v10[1];
          if (v14 <= v9)
          {
            v16 = 0;
          }

          else
          {
            v16 = v13;
          }

          result = sync_invalidate_mapping((v15 + v16), a3);
          v3 = *(v6 + 248);
        }
      }

      ++v7;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t storageDeactivateAll(uint64_t result, int a2)
{
  if (*(result + 248) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 272;
    do
    {
      v6 = *(v5 + 8 * v4);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          v8 = *(v6 + 24) - *(v6 + 16);
          fd_system_status_stall_if_busy();
          if (a2)
          {
            msync(v7, v8, 16);
            result = madvise(*(v6 + 8), *(v6 + 24) - *(v6 + 16), 4);
          }

          else
          {
            result = msync(v7, v8, 8);
          }
        }
      }

      ++v4;
    }

    while (v4 < *(v3 + 248));
  }

  return result;
}

uint64_t storageAllocOffsetFromEnd(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 4);
  if (a2 <= v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = (((a2 - v3) ^ (a2 - v3 - 1)) <= a2 - v3 - 1) - __clz(a2 - v3);
    if (v4 <= -29)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 + 28;
    }
  }

  v6 = 8 << v5;
  v7 = 16 << v5;
  v9 = *(a1 + 224);
  result = *(a1 + 232);
  if (v3 + result + v7 + 8 >= v9)
  {
    if (!_storageExpand(a1, v6))
    {
      return 0;
    }

    v9 = *(a1 + 224);
    result = *(a1 + 232);
  }

  v10 = (v6 + v3);
  v11 = result + v10;
  if (result + v10 < v9)
  {
LABEL_8:
    *(a1 + 232) = v11;
    return result;
  }

  if (_storageWindowsExpandBacking((a1 + 216), v10))
  {
    result = *(a1 + 232);
    v11 = result + v10;
    goto LABEL_8;
  }

  return 0;
}

uint64_t _storageExpand(uint64_t a1, int a2)
{
  v3 = _storageWindowsExpandBacking((a1 + 216), (*(a1 + 4) + 2 * a2 + 8));
  if (v3)
  {
    if (*(a1 + 248) == 1 && (*(a1 + 253) & 1) == 0)
    {
      storageWindowRelease((a1 + 272));
    }

    pthread_rwlock_wrlock(*(a1 + 4408));
    v4 = *(a1 + 4408);
    sig = v4[1].__sig;
    v4[1].__sig = 0;
    pthread_rwlock_unlock(v4);
    _release_read_window(&availableReaders, sig);
  }

  return v3;
}

uint64_t storageTruncate(uint64_t *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = fd_truncate(a1[27], a1[29]);
  if (v2 == -1)
  {
    v3 = *__error();
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "storageTruncate";
      v10 = 1024;
      v11 = 736;
      v12 = 1024;
      v13 = v3;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate error %d", &v8, 0x18u);
    }

    *__error() = v4;
  }

  else
  {
    v3 = v2;
    a1[28] = a1[29];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t storageTruncateAndMakeReadOnly(uint64_t a1)
{
  result = storageTruncate(a1);
  if (!result)
  {
    *(a1 + 252) = 1;
    v3 = *(a1 + 248);
    if (v3 >= 1)
    {
      v4 = a1 + 272;
      do
      {
        if (*v4)
        {
          *(*v4 + 40) = 1;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    v5 = *(a1 + 216);

    return fd_make_readonly(v5);
  }

  return result;
}

unint64_t storageAllocOffset(uint64_t a1, unsigned int a2, uint64_t a3, int *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 4);
  v8 = a2 - v7;
  if (a2 <= v7)
  {
    v11 = 0;
    v10 = 8;
  }

  else
  {
    v9 = ((v8 ^ (v8 - 1)) <= v8 - 1) - __clz(v8);
    v10 = 8;
    if (v9 < -28)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 + 28;
      if ((v9 + 28) >= 0x18)
      {
        v24 = __si_assert_copy_extra(0);
        v25 = v24;
        v26 = "";
        if (v24)
        {
          v26 = v24;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 766, "idx < (24)", v26);
LABEL_44:
        free(v25);
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

      v10 = 8 << v11;
    }
  }

  if (v10 < v8)
  {
    v27 = __si_assert_copy_extra(0);
    v25 = v27;
    v28 = "";
    if (v27)
    {
      v28 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 767, "((uint32_t)8<<idx) >= inSize - baseSize", v28);
    goto LABEL_44;
  }

  v12 = v10 + v7;
  if (v12 < a2)
  {
    v29 = __si_assert_copy_extra(0);
    v25 = v29;
    v30 = "";
    if (v29)
    {
      v30 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 768, "rsize+baseSize >= inSize", v30);
    goto LABEL_44;
  }

  *a4 = 0;
  v13 = *(a1 + 8 + 8 * v11);
  if (!v13)
  {
    v13 = takeBuddyPage_4233(a1, v11);
    if (v13)
    {
      goto LABEL_18;
    }

    v17 = *(a1 + 224);
    v13 = *(a1 + 232);
    if (v7 + (16 << v11) + v13 + 8 >= v17)
    {
      if (!_storageExpand(a1, v10))
      {
        v13 = 0;
        goto LABEL_19;
      }

      v17 = *(a1 + 224);
      v13 = *(a1 + 232);
    }

    v18 = v13 + v12;
    if (v18 >= v17)
    {
      if (!_storageWindowsExpandBacking((a1 + 216), v10 + v7))
      {
        v13 = 0;
LABEL_18:
        if (v13 >= *(a1 + 232))
        {
          v31 = __si_assert_copy_extra(0);
          v32 = v31;
          v33 = "";
          if (v31)
          {
            v33 = v31;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 805, "result < inStorage->_windows._freeRegion", v33);
          free(v32);
          if (__valid_fs(-1))
          {
            v34 = 2989;
          }

          else
          {
            v34 = 3072;
          }

          *v34 = -559038737;
          abort();
        }

        goto LABEL_19;
      }

      v13 = *(a1 + 232);
      v18 = v13 + v12;
    }

    *(a1 + 232) = v18;
    goto LABEL_18;
  }

  if (v13 >= *(a1 + 232))
  {
    v35 = __si_assert_copy_extra(*(a1 + 216));
    v36 = v35;
    v37 = "";
    if (v35)
    {
      v37 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v37, v13, *(a1 + 232));
    free(v36);
    if (__valid_fsp(*(a1 + 216)))
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

  v14 = storageResolvePtr(a1, *(a1 + 8 + 8 * v11), 8, 1);
  if (!v14)
  {
    v39 = __si_assert_copy_extra(0);
    v25 = v39;
    v40 = "";
    if (v39)
    {
      v40 = v39;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 774, "ptr", v40);
    goto LABEL_44;
  }

  v15 = *v14;
  if (!*v14 || *(a1 + 232) > v15)
  {
    *(a1 + 8 + 8 * v11) = v15;
    *(a1 + 4374) = 0;
    v16 = *a4;
    *a4 = v16 + 1;
    *(a3 + 8 * v16) = v13;
    goto LABEL_18;
  }

  v21 = *__error();
  v22 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = *(a1 + 232);
    *buf = 136316162;
    v43 = "_storeageSetFreeListHead";
    v44 = 1024;
    v45 = 200;
    v46 = 1024;
    v47 = v11;
    v48 = 2048;
    v49 = v15;
    v50 = 2048;
    v51 = v23;
    _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
  }

  v13 = 0;
  *__error() = v21;
LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t storageResolvePtr(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 232);
  if (v7 <= a2)
  {
    if (__valid_fsp(*(a1 + 216)))
    {
      v15 = __si_assert_copy_extra(*(a1 + 216));
      v33 = *(a1 + 232);
      si_analytics_log_4247(v15, v16, v17, v18, v19, v20, v21, v22, "storage.c");
      free(v15);
      v23 = 2816;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  v8 = a3 + a2;
  if (a3 + a2 > v7 && a4 != 0)
  {
    v24 = __si_assert_copy_extra(*(a1 + 216));
    v25 = v24;
    v26 = "";
    if (v24)
    {
      v26 = v24;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset:%lld, size:%lld, free_region:%lld", "storage.c", 1306, "!check_size||inOffset+inSize<=inStorage->_windows._freeRegion", v26, a2, a3, *(a1 + 232));
    free(v25);
    if (__valid_fsp(*(a1 + 216)))
    {
LABEL_24:
      v27 = 2989;
      goto LABEL_29;
    }

LABEL_28:
    v27 = 3072;
LABEL_29:
    *v27 = -559038737;
    abort();
  }

  v10 = a2 >> *(a1 + 264);
  if (v10 < *(a1 + 248))
  {
    v11 = *(a1 + 8 * v10 + 272);
    if (v11)
    {
      if (v11[2] <= a2 && v11[3] >= v8 && *(a1 + 224) >= v8 && !v11[1])
      {
        if (a2)
        {
          v31 = 0;
        }

        else
        {
          v31 = a3 == 1;
        }

        v32 = !v31;
        _windowsMapInit(a1 + 216, v32);
      }
    }
  }

  result = _windowsGetPtr(a1 + 216, a2, a3);
  if (result)
  {
    if (result == a2)
    {
      v28 = __si_assert_copy_extra(0);
      v29 = v28;
      v30 = "";
      if (v28)
      {
        v30 = v28;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 1337, "(offset_t)(intptr_t)ptr !=inOffset", v30);
      free(v29);
      if (__valid_fs(-1))
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  else
  {

    return _moveWindowsInner((a1 + 216), a2, a3, 0, v13, v14);
  }

  return result;
}

unint64_t takeBuddyPage_4233(uint64_t a1, unsigned int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a2 > 0x16 || *(a1 + 4) || *(a1 + 200) <= a2)
  {
    v6 = 0;
  }

  else
  {
    v4 = 8 << a2;
    v5 = a2 + 1;
    v6 = *(a1 + 8 + 8 * (a2 + 1));
    if (v6)
    {
      if (v6 >= *(a1 + 232))
      {
        v19 = __si_assert_copy_extra(*(a1 + 216));
        v20 = v19;
        v21 = "";
        if (v19)
        {
          v21 = v19;
        }

        __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v21, v6, *(a1 + 232));
        free(v20);
        if (__valid_fsp(*(a1 + 216)))
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

      v7 = storageResolvePtr(a1, *(a1 + 8 + 8 * v5), 8, 1);
      if (!v7)
      {
        v23 = __si_assert_copy_extra(0);
        v24 = v23;
        v25 = "";
        if (v23)
        {
          v25 = v23;
        }

        __message_assert("%s:%u: failed assertion '%s' %s get node %lld idx %d bs %d bl %lld", "storage.c", 633, "ptr", v25, v6, a2, *(a1 + 4), *(a1 + 200));
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

      v8 = v7;
      v9 = *v7;
      if (*v7 && *(a1 + 232) <= v9)
      {
        v27 = *v7;
        v28 = *__error();
        v29 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = *(a1 + 232);
          *buf = 136316162;
          v38 = "_storeageSetFreeListHead";
          v39 = 1024;
          v40 = 200;
          v41 = 1024;
          v42 = v5;
          v43 = 2048;
          v44 = v27;
          v45 = 2048;
          v46 = v30;
          _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
        }

        *__error() = v28;
        v10 = __si_assert_copy_extra(0);
        v34 = *(a1 + 4);
        v36 = *(a1 + 200);
        v32 = *v8;
        __message_assert("%s:%u: failed assertion '%s' %s free idx %d offset %lld bs %d bl %lld", "storage.c");
        goto LABEL_11;
      }

      *(a1 + 8 + 8 * v5) = v9;
      *(a1 + 4374) = 0;
      *v7 = 0;
      if ((_storeageSetFreeListHead(a1, a2, v6 + v4) & 1) == 0)
      {
        v10 = __si_assert_copy_extra(0);
        v33 = *(a1 + 4);
        v35 = *(a1 + 200);
        v31 = *v8;
        __message_assert("%s:%u: failed assertion '%s' %s clear idx %d offset %lld bs %d bl %lld", "storage.c");
LABEL_11:
        v11 = v10;
        goto LABEL_19;
      }
    }

    else
    {
      v14 = takeBuddyPage_4233(a1, a2 + 1);
      v6 = v14;
      if (v14)
      {
        if ((_storeageSetFreeListHead(a1, a2, v14 + v4) & 1) == 0)
        {
          v15 = __si_assert_copy_extra(0);
          v16 = v15;
          v17 = "";
          if (v15)
          {
            v17 = v15;
          }

          __message_assert("%s:%u: failed assertion '%s' %s free idx %d node %lld size %d bs %d bl %lld", "storage.c", 645, "result", v17, a2, v6, 8 << a2, *(a1 + 4), *(a1 + 200));
          v11 = v16;
LABEL_19:
          free(v11);
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
      }

      else
      {
        *(a1 + 200) = a2;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _storeageSetFreeListHead(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (a3 && *(a1 + 232) <= a3)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 232);
      *buf = 136316162;
      v19 = "_storeageSetFreeListHead";
      v20 = 1024;
      v21 = 200;
      v22 = 1024;
      v23 = a2;
      v24 = 2048;
      v25 = a3;
      v26 = 2048;
      v27 = v12;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
    }

    v7 = 0;
    *__error() = v8;
  }

  else
  {
    v6 = storageResolvePtr(a1, a3, 8, 1);
    if (!v6)
    {
      v13 = __si_assert_copy_extra(0);
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 208, "ptr", v15);
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

    *v6 = 0;
    v7 = 1;
    dirtyStorageOffsets(a1, &v17, 1);
    *(a1 + 8 * a2 + 8) = a3;
    *(a1 + 4374) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void dirtyStorageOffsets(uint64_t a1, unint64_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v7 = *a2++;
      v6 = v7;
      bit_vector_set_4242((a1 + 4376), (v7 >> 17));
      if ((v7 >> 17) != (v7 + 8) >> 17)
      {
        bit_vector_set_4242((a1 + 4376), (v6 >> 17) + 1);
      }

      --v5;
    }

    while (v5);
  }
}

void bit_vector_set_4242(void *a1, CFIndex idx)
{
  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = 32;
    }

    while (1)
    {
      v6 *= 2;
      if (v6 > idx)
      {
        break;
      }

      if (v6 <= v4)
      {
        v7 = __si_assert_copy_extra(0);
        v8 = v7;
        v9 = "";
        if (v7)
        {
          v9 = v7;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v9);
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
    }

    v11 = a1[2];
    v12 = *MEMORY[0x1E695E480];
    if (v11)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v12, v6, v11);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v12, v6);
    }

    v14 = MutableCopy;
    if (!MutableCopy)
    {
      v16 = __si_assert_copy_extra(0);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v18);
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

    CFBitVectorSetCount(MutableCopy, v6);
    v15 = a1[2];
    if (v15)
    {
      CFRelease(v15);
    }

    a1[1] = v6;
    a1[2] = v14;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

void si_analytics_log_4247(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "%s:%u: failed assertion '%s' %s offset:%lld, size:%lld, free_region:%lld", &a9);
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

void storageFreeOffset(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 4);
  v6 = a3 >= v5;
  v7 = a3 - v5;
  if (v7 != 0 && v6)
  {
    v8 = ((v7 ^ (v7 - 1)) <= v7 - 1) - __clz(v7);
    v10 = 8;
    if (v8 < -28)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 28;
      if ((v8 + 28) >= 0x18)
      {
        v17 = __si_assert_copy_extra(0);
        v18 = v17;
        v19 = "";
        if (v17)
        {
          v19 = v17;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 820, "idx < (24)", v19);
        goto LABEL_32;
      }

      v10 = 8 << v9;
    }
  }

  else
  {
    v9 = 0;
    v10 = 8;
  }

  if (v7 > v10)
  {
    v20 = __si_assert_copy_extra(0);
    v18 = v20;
    v21 = "";
    if (v20)
    {
      v21 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 821, "inSize - baseSize <= rsize", v21);
    goto LABEL_32;
  }

  if (*(a1 + 224) <= a2)
  {
    v22 = __si_assert_copy_extra(0);
    v18 = v22;
    v23 = "";
    if (v22)
    {
      v23 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 822, "inOffset < inStorage->_windows._size", v23);
    goto LABEL_32;
  }

  v11 = v10;
  if (a2 + v10 != *(a1 + 232))
  {
    v13 = storageResolvePtr(a1, a2, v10, 1);
    if (v13)
    {
      v14 = v13;
      bzero(v13, v11);
      if (*(a1 + 200) < v9)
      {
        *(a1 + 200) = v9;
      }

      v15 = *(a1 + 8 + 8 * v9);
      if (v15 && v15 >= *(a1 + 232))
      {
        v27 = __si_assert_copy_extra(*(a1 + 216));
        v28 = v27;
        v29 = "";
        if (v27)
        {
          v29 = v27;
        }

        __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v29, v15, *(a1 + 232));
        free(v28);
        if (__valid_fsp(*(a1 + 216)))
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

      v36 = *(a1 + 8 + 8 * v9);
      *v14 = v15;
      dirtyStorageOffsets(a1, &v36, 1);
      if (!a2 || *(a1 + 232) > a2)
      {
        *(a1 + 8 + 8 * v9) = a2;
        *(a1 + 4374) = 0;
        goto LABEL_18;
      }

      v31 = *__error();
      v32 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 232);
        *buf = 136316162;
        v38 = "_storeageSetFreeListHead";
        v39 = 1024;
        v40 = 200;
        v41 = 1024;
        v42 = v9;
        v43 = 2048;
        v44 = a2;
        v45 = 2048;
        v46 = v33;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
      }

      *__error() = v31;
      v34 = __si_assert_copy_extra(0);
      v18 = v34;
      v35 = "";
      if (v34)
      {
        v35 = v34;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 845, "success", v35);
    }

    else
    {
      v24 = __si_assert_copy_extra(0);
      v18 = v24;
      v25 = "";
      if (v24)
      {
        v25 = v24;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 834, "ptr", v25);
    }

LABEL_32:
    free(v18);
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

  v12 = storageResolvePtr(a1, a2, a3, 1);
  bzero(v12, v11);
  *(a1 + 232) = a2;
LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t storageExtendOffset(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a2 + a3;
  v8 = *(a1 + 232);
  if (v7 == v8)
  {
    v9 = *(a1 + 224);
    if (a2 + a4 <= v9)
    {
      v10 = v7 + a4 - a3;
      if (v10 < v9)
      {
LABEL_4:
        *(a1 + 232) = v10;
        goto LABEL_18;
      }

      v26 = a4 - a3;
      v27 = _storageWindowsExpandBacking((a1 + 216), v26);
      v10 = *(a1 + 232);
      if (v27)
      {
        v10 += v26;
        goto LABEL_4;
      }

LABEL_18:
      if (v10 <= a2)
      {
        v20 = __si_assert_copy_extra(0);
        v21 = v20;
        v22 = "";
        if (v20)
        {
          v22 = v20;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 875, "inOffset < inStorage->_windows._freeRegion", v22);
      }

      else
      {
        if (a2 + a4 <= v10)
        {
          result = 1;
          goto LABEL_22;
        }

        v23 = __si_assert_copy_extra(0);
        v21 = v23;
        v24 = "";
        if (v23)
        {
          v24 = v23;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 876, "inOffset+inNewSize <= inStorage->_windows._freeRegion", v24);
      }

      free(v21);
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

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  if (a4 > 2 * a3)
  {
    goto LABEL_21;
  }

  v11 = *(a1 + 4);
  v12 = a3 >= v11;
  v13 = a3 - v11;
  if (v13 != 0 && v12 && (v14 = ((v13 ^ (v13 - 1)) <= v13 - 1) - __clz(v13), v14 > -29))
  {
    v15 = v14 + 28;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 8 + 8 * v15);
  if (v16 && v16 >= v8)
  {
    v28 = *(a1 + 8 + 8 * v15);
    v29 = __si_assert_copy_extra(*(a1 + 216));
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v31, v28, *(a1 + 232));
    free(v30);
    if (__valid_fsp(*(a1 + 216)))
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

  if (v16 != v7)
  {
    goto LABEL_21;
  }

  result = _windowsGetPtr(a1 + 216, v7, a3);
  if (result)
  {
    v18 = *result;
    if (*result && v8 <= v18)
    {
      v33 = *result;
      v34 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *(a1 + 232);
        *buf = 136316162;
        v42 = "_storeageSetFreeListHead";
        v43 = 1024;
        v44 = 200;
        v45 = 1024;
        v46 = v15;
        v47 = 2048;
        v48 = v33;
        v49 = 2048;
        v50 = v36;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
      }

      *__error() = v34;
      v37 = __si_assert_copy_extra(0);
      v38 = v37;
      v39 = "";
      if (v37)
      {
        v39 = v37;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 869, "result", v39);
      free(v38);
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

    *(a1 + 8 + 8 * v15) = v18;
    *(a1 + 4374) = 0;
    v10 = *(a1 + 232);
    goto LABEL_18;
  }

LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t storageGrowOffset(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, int *a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 4);
  if (a3 <= v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = (((a3 - v12) ^ (a3 - v12 - 1)) <= a3 - v12 - 1) - __clz(a3 - v12);
    if (v13 <= -29)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 + 28;
    }
  }

  v15 = a4 >= v12;
  v16 = a4 - v12;
  if (v16 != 0 && v15 && (v17 = ((v16 ^ (v16 - 1)) <= v16 - 1) - __clz(v16), v17 > -29))
  {
    v18 = v17 + 28;
  }

  else
  {
    v18 = 0;
  }

  if (v14 > v18)
  {
    v26 = __si_assert_copy_extra(0);
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 887, "oldIdx <= newIdx", v28);
    free(v27);
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

  if (v18 == v14)
  {
    v19 = a2;
  }

  else
  {
    v20 = a3;
    MEMORY[0x1EEE9AC00](a1);
    v21 = storageResolvePtr(a1, a2, a3, 1);
    memcpy(v30 - ((v20 + 15) & 0x1FFFFFFF0), v21, a3);
    storageFreeOffset(a1, a2, a3);
    v19 = storageAllocOffset(a1, a4, a5, a6);
    if (v19)
    {
      v22 = storageResolvePtr(a1, v19, a4, 1);
      memcpy(v22, v30 - ((v20 + 15) & 0x1FFFFFFF0), v20);
    }

    v23 = *a6;
    *(a5 + 8 * v23) = a2;
    *a6 = v23 + 1;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t freeListVerify(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8 * a2 + 8);
  if (v2)
  {
    if (v2 >= *(a1 + 232))
    {
      v17 = __si_assert_copy_extra(*(a1 + 216));
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v19, v2, *(a1 + 232));
      free(v18);
      if (__valid_fsp(*(a1 + 216)))
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

    v4 = 0;
    v5 = *(a1 + 8 * a2 + 8);
    while (1)
    {
      result = storageResolvePtr(a1, v2, 8, 1);
      if (!result)
      {
        goto LABEL_14;
      }

      v2 = *result;
      if (*result >= *(a1 + 232))
      {
        break;
      }

      if (v4)
      {
        v5 = *storageResolvePtr(a1, v5, 8, 1);
        if (v5 == v2)
        {
          v7 = *__error();
          v13 = _SILogForLogForCategory(4);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v16 = *(a1 + 232);
          *buf = 136316162;
          v22 = "freeListVerify";
          v23 = 1024;
          v24 = 988;
          v25 = 2048;
          v26 = v2;
          v27 = 2048;
          v28 = v2;
          v29 = 2048;
          v30 = v16;
          v10 = "%s:%d: Cycle in free-list: head:0x%llx, probe:0x%llx, freeRegion: 0x%llx";
          v11 = v13;
          v12 = 48;
          goto LABEL_16;
        }
      }

      ++v4;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v14 = __error();
      result = 0;
      *v14 = v7;
      goto LABEL_14;
    }

    v9 = *(a1 + 232);
    *buf = 136315906;
    v22 = "freeListVerify";
    v23 = 1024;
    v24 = 980;
    v25 = 2048;
    v26 = v2;
    v27 = 2048;
    v28 = v9;
    v10 = "%s:%d: head:0x%llx, freeRegion: 0x%llx";
    v11 = v8;
    v12 = 38;
LABEL_16:
    _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_13;
  }

LABEL_9:
  result = 1;
LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void dirtyStoragePage(uint64_t a1, unint64_t a2)
{
  v3 = 64 << *(a2 + 2);
  v4 = _windowsAddressOffset(a1 + 216, a2);
  v5 = (v4 >> 17);
  bit_vector_set_4242((a1 + 4376), v5);
  if (v5 != (v4 + v3) >> 17)
  {

    bit_vector_set_4242((a1 + 4376), (v4 >> 17) + 1);
  }
}

char *storage_describe_windows(uint64_t a1, char *__str)
{
  v4 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", *(a1 + 248), *(a1 + 224));
  if (*(a1 + 248) >= 1 && v4 <= 0xFE)
  {
    v5 = 0;
    v6 = &__str[v4];
    v7 = 255 - v4;
    do
    {
      snprintf(v6, v7, "%d:(mem:%p so:%lld eo:%lld)", v5, *(*(a1 + 272 + 8 * v5) + 8), *(*(a1 + 272 + 8 * v5) + 16), *(*(a1 + 272 + 8 * v5) + 24));
      ++v5;
    }

    while (v5 < *(a1 + 248));
  }

  return __str;
}

uint64_t uint32_map_init(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  bzero(a1, 0x1140uLL);
  *(a1 + 4416) = a3;
  v9 = 4 * a3;
  *(a1 + 224) = v9;
  *(a1 + 232) = v9;
  if (a5)
  {
    v10 = 114;
  }

  else
  {
    v10 = 102;
  }

  return storageInit(a1, 0, 4uLL, a2, 0, 0, 0, v10, 0);
}

uint64_t uint32_map_get(uint64_t a1, unsigned int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 && *(a1 + 4416) > a2)
  {
    result = *storageResolvePtr(a1, 4 * a2, 4, 1);
  }

  else
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 4416);
      v10 = 136316162;
      v11 = "uint32_map_get";
      v12 = 1024;
      v13 = 1418;
      v14 = 2048;
      v15 = a1;
      v16 = 1024;
      v17 = v9;
      v18 = 1024;
      v19 = a2;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: invalid map (%p) count:%d <= pos:%d", &v10, 0x28u);
    }

    v8 = __error();
    result = 0;
    *v8 = v6;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *uint32_map_put(uint64_t a1, unsigned int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 && *(a1 + 4416) > a2)
  {
    result = storageResolvePtr(a1, 4 * a2, 4, 1);
    *result = a3;
  }

  else
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 4416);
      v11 = 136316162;
      v12 = "uint32_map_put";
      v13 = 1024;
      v14 = 1430;
      v15 = 2048;
      v16 = a1;
      v17 = 1024;
      v18 = v10;
      v19 = 1024;
      v20 = a2;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid map (%p) count:%d <= pos:%d", &v11, 0x28u);
    }

    result = __error();
    *result = v8;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __si_retain_service_connection_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 40)];
    v6 = 136315394;
    v7 = v2;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### reset client connection %s %p", &v6, 0x16u);
  }

  v4 = gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 40)];
  if (v4)
  {
    xpc_connection_cancel(v4);
    xpc_release(gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 40)]);
    gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 40)] = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __si_xpc_setup_connection_block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (is_valid_xpc_type(0, a2, MEMORY[0x1E69E9E68]))
  {
    xpc_connection_set_target_queue(a2, *(a1 + 40));
    xpc_connection_set_event_handler(a2, &__block_literal_global_4309);
    v4 = *MEMORY[0x1E69E9840];

    xpc_connection_resume(a2);
  }

  else
  {
    if (!is_valid_xpc_type(0, a2, MEMORY[0x1E69E9E68]) && MEMORY[0x1C6921B10](a2) == MEMORY[0x1E69E9E98])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = a2;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### Connection error %p", &v7, 0xCu);
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        (*(v5 + 16))();
      }
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

void __si_xpc_setup_connection_block_invoke_2(int a1, xpc_object_t xdict)
{
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  if (is_valid_xpc_type(remote_connection, xdict, MEMORY[0x1E69E9E80]))
  {
    xpc_dictionary_get_string(xdict, "command");
    if (remote_connection)
    {
      reply = xpc_dictionary_create_reply(xdict);
      if (reply)
      {
        v5 = reply;
        xpc_dictionary_set_int64(reply, "status", -1);
        xpc_connection_send_message(remote_connection, v5);

        dispatch_release(v5);
      }
    }
  }
}

uint64_t _TermUpdateSetLock(uint64_t a1, int a2)
{
  if (a2)
  {
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

    pthread_mutex_lock((a1 + 304));
    if (!*(a1 + 488) && !*(a1 + 500) && (*(a1 + 516) & 1) == 0)
    {
      if (v5 > 5)
      {
LABEL_20:
        *(a1 + 488) = pthread_self();
        goto LABEL_12;
      }

      v8 = v5 - 6;
      v9 = (a1 + 16 * v5 + 368);
      while (!*v9)
      {
        v9 += 2;
        if (__CFADD__(v8++, 1))
        {
          goto LABEL_20;
        }
      }
    }

    db_rwlock_wait(a1 + 304, v5, 2);
LABEL_12:

    return pthread_mutex_unlock((a1 + 304));
  }

  v6 = a1 + 304;

  return db_read_lock(v6);
}

uint64_t _TermUpdateSetUnlock(uint64_t a1)
{
  pthread_mutex_lock((a1 + 304));
  *(a1 + 508) = 0;
  v2 = *(a1 + 480);
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v3 = *(a1 + 500) != 0;
  *(a1 + 516) = 0;
  db_rwlock_wakeup(a1 + 304, v3, 0);
  result = pthread_mutex_unlock((a1 + 304));
  if (v2)
  {

    return pthread_override_qos_class_end_np(v2);
  }

  return result;
}

void *TermUpdateSetSetVectorStore(void *result, uint64_t a2)
{
  if (result)
  {
    result[6] = a2;
    v3 = *result;
    v4 = result + 1;
    if (*result != result + 1)
    {
      do
      {
        result = (*(*v3[5] + 288))(v3[5], a2);
        v5 = v3[1];
        if (v5)
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
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
    }
  }

  return result;
}

_DWORD *TermUpdateSetStore(_DWORD *result, uint64_t a2, void *a3, char a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  if (result)
  {
    v7 = result;
    Current = CFAbsoluteTimeGetCurrent();
    db_read_lock((v7 + 76));
    v9 = atomic_load((*(v7 + 3) + 16));
    v10 = a3[5];
    if ((a3[4] - v10) < 6)
    {
      *(&__p[1] + 1) = 0;
      *(__p + 1) = 0;
      __p[3] = 0;
      *(&__p[2] + 1) = 0;
      LOBYTE(__p[0]) = 11;
      store_stream_write_bytes_3266(a3, __p, 1uLL);
    }

    else
    {
      *(a3[6] + v10) = 11;
      a3[5] = v10 + 1;
    }

    store_stream_write_vint32(a3, v9);
    store_stream_write_vint32(a3, v7[28]);
    v11 = *(v7 + 1);
    v12 = a3[5];
    if ((a3[4] - v12) < 0xB)
    {
      memset(__p, 0, 32);
      v49 = writeVInt64(__p, 0, v11);
      store_stream_write_bytes_3266(a3, __p, v49);
    }

    else
    {
      a3[5] = writeVInt64(a3[6], v12, v11);
    }

    store_stream_write_vint32(a3, v7[4]);
    store_stream_write_vint32(a3, v7[42]);
    store_stream_write_vint32(a3, v7[36]);
    store_stream_write_vint32(a3, v7[30]);
    store_stream_write_vint32(a3, v7[44]);
    store_stream_write_vint32(a3, v7[38]);
    store_stream_write_vint32(a3, v7[32]);
    store_stream_write_vint32(a3, v7[54]);
    store_stream_write_vint32(a3, v7[52]);
    store_stream_write_vint32(a3, v7[34]);
    store_stream_write_vint32(a3, v7[42]);
    store_stream_write_vint32(a3, v7[50]);
    storeDirStoreUpdateSet(*(v7 + 11), (v7 + 12), a3);
    v13 = v7[154];
    BYTE8(v56) = a4;
    LODWORD(v56) = 0;
    DWORD1(v56) = v13;
    v14 = *(v7 + 11);
    *&v55 = v7 + 60;
    *(&v55 + 1) = a2;
    *&v54 = a3;
    *(&v54 + 1) = v14;
    v15 = *(v7 + 3);
    v57[0] = 0;
    v57[1] = v57;
    v59 = 0;
    v58 = 0x2000000000;
    __p[0] = MEMORY[0x1E69E9820];
    __p[1] = 0x40000000;
    __p[2] = ___hashTableIterate_block_invoke_2;
    __p[3] = &unk_1E81939C8;
    __p[5] = storeUpdateSetCallback;
    __p[6] = &v54;
    __p[4] = v57;
    _TermTrieWalkFatWithOptions(v15 + 32, 0, 0, 0, __p, 0, 0);
    _Block_object_dispose(v57, 8);
    if (v9 != v56)
    {
      v50 = __si_assert_copy_extra_332();
      v51 = v50;
      v52 = "";
      if (v50)
      {
        v52 = v50;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 930, "updateTermCount == ctx.termCount", v52);
      free(v51);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v53 = v9;
    v16 = *(v7 + 10);
    if (v16)
    {
      v17 = *(v7 + 11);
      store_stream_write_vint32(a3, *(v16 + 16));
      v18 = *v16;
      if (*v16 != v16 + 8)
      {
        do
        {
          v19 = *__error();
          v20 = _SILogForLogForCategory(16);
          v21 = 2 * (dword_1EBF46B0C < 4);
          if (os_log_type_enabled(v20, v21))
          {
            v22 = v18[5];
            HIBYTE(v58) = 3;
            LODWORD(v57[0]) = 4085052;
            (*(*v22 + 312))(__p);
            v23 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v23 = __p[0];
            }

            *buf = 134218242;
            v62 = v16;
            v63 = 2080;
            v64 = v23;
            _os_log_impl(&dword_1C278D000, v20, v21, "store <UpdateSet> %p %s", buf, 0x16u);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if (SHIBYTE(v58) < 0)
              {
LABEL_40:
                operator delete(v57[0]);
              }
            }

            else if (SHIBYTE(v58) < 0)
            {
              goto LABEL_40;
            }
          }

          *__error() = v19;
          v24 = v18[5];
          v25 = *(v24 + 8);
          if (*(v24 + 22))
          {
            v26 = 0x80000000;
          }

          else
          {
            v26 = 0;
          }

          store_stream_write_vint32(a3, v26 | v25);
          v27 = *(v18[5] + 16);
          if (v27 == 2)
          {
            v28 = 1;
          }

          else
          {
            v28 = 3;
          }

          if (v27 == 4)
          {
            v29 = 0;
          }

          else
          {
            v29 = v28;
          }

          store_stream_write_vint32(a3, v29);
          v30 = *(v18[5] + 12);
          if (v30 == 512)
          {
            v31 = 1;
          }

          else
          {
            v31 = 3;
          }

          if (v30 == 768)
          {
            v31 = 2;
          }

          if (v30 == 256)
          {
            v32 = 0;
          }

          else
          {
            v32 = v31;
          }

          store_stream_write_vint32(a3, v32);
          store_stream_write_vint32(a3, *(v18[5] + 20));
          (*(*v18[5] + 208))(v18[5], v17, a3);
          v33 = v18[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = v18[2];
              v35 = *v34 == v18;
              v18 = v34;
            }

            while (!v35);
          }

          v18 = v34;
        }

        while (v34 != (v16 + 8));
      }
    }

    pthread_mutex_lock((v7 + 76));
    v36 = v7[125] - 1;
    v7[125] = v36;
    if (!v36)
    {
      db_rwlock_wakeup((v7 + 76), 0, 0);
    }

    pthread_mutex_unlock((v7 + 76));
    v37 = *__error();
    v38 = _SILogForLogForCategory(10);
    v39 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v7[28];
      v41 = atomic_load(v7 + 25);
      v42 = CFAbsoluteTimeGetCurrent();
      LODWORD(__p[0]) = 67109888;
      HIDWORD(__p[0]) = v53;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v40;
      HIWORD(__p[1]) = 1024;
      LODWORD(__p[2]) = v41;
      WORD2(__p[2]) = 2048;
      *(&__p[2] + 6) = v42 - Current;
      _os_log_impl(&dword_1C278D000, v38, v39, "Store Update Set (t %d, d %d, p %d) took %f seconds", __p, 0x1Eu);
    }

    result = __error();
    *result = v37;
  }

  else
  {
    v43 = a3[5];
    if ((a3[4] - v43) < 6)
    {
      *(&__p[1] + 1) = 0;
      *(__p + 1) = 0;
      __p[3] = 0;
      *(&__p[2] + 1) = 0;
      LOBYTE(__p[0]) = 11;
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
      v44 = a3[5];
    }

    else
    {
      v44 = v43 + 1;
      *(a3[6] + v43) = 11;
      a3[5] = v43 + 1;
    }

    if ((a3[4] - v44) < 6)
    {
      memset(__p, 0, 32);
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
      v45 = a3[5];
    }

    else
    {
      v45 = v44 + 1;
      *(a3[6] + v44) = 0;
      a3[5] = v44 + 1;
    }

    if ((a3[4] - v45) < 6)
    {
      memset(__p, 0, 32);
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
      v46 = a3[5];
    }

    else
    {
      v46 = v45 + 1;
      *(a3[6] + v45) = 0;
      a3[5] = v45 + 1;
    }

    if ((a3[4] - v46) < 6)
    {
      memset(__p, 0, 32);
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
      v47 = a3[5];
    }

    else
    {
      v47 = v46 + 1;
      *(a3[6] + v46) = 0;
      a3[5] = v46 + 1;
    }

    if ((a3[4] - v47) < 6)
    {
      memset(__p, 0, 32);
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
    }

    else
    {
      *(a3[6] + v47) = 0;
      a3[5] = v47 + 1;
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___hashTableIterate_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 40))(a2 + 16, *(a1 + 48));
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t storeUpdateSetCallback(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = (a1 + 18);
  ++*(a2 + 8);
  store_stream_write_vint32(*a2, v4);
  v6 = *a2;
  while (1)
  {
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    if (v7 + v4 < v8)
    {
      break;
    }

    v9 = v8 - v7;
    memcpy((*(v6 + 48) + v7), v5, v8 - v7);
    *(v6 + 40) += v9;
    if (store_stream_flush(v6, 0))
    {
      goto LABEL_6;
    }

    v5 += v9;
    v4 -= v9;
  }

  memcpy((*(v6 + 48) + v7), v5, v4);
  *(v6 + 40) += v4;
LABEL_6:
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a1 + 12);
  v14 = *(a2 + 9);
  v15 = *(a2 + 40);

  return CIWritePostings(v10, v11, v12, a1, v13, v14);
}

char *TermUpdateSetRestore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, const void *a11)
{
  MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v233 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v255 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v27 = TermUpdateSetCreate(v23, v21, 0, 0, v15 | 4u, a9, a10, a11);
  vint32_3407 = store_stream_read_vint32_3407(v25);
  v29 = vint32_3407;
  v234 = v27;
  if (v12)
  {
    if (!vint32_3407)
    {
LABEL_239:
      v168 = *__error();
      v169 = _SILogForLogForCategory(10);
      v170 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v169, v170))
      {
        v171 = atomic_load((*(v27 + 3) + 16));
        v172 = *(v234 + 28);
        v173 = atomic_load(v234 + 25);
        v174 = CFAbsoluteTimeGetCurrent();
        LODWORD(__dst[0]) = 67109888;
        DWORD1(__dst[0]) = v171;
        v27 = v234;
        WORD4(__dst[0]) = 1024;
        *(__dst + 10) = v172;
        HIWORD(__dst[0]) = 1024;
        LODWORD(__dst[1]) = v173;
        WORD2(__dst[1]) = 2048;
        *(&__dst[1] + 6) = v174 - Current;
        _os_log_impl(&dword_1C278D000, v169, v170, "Restore Update Set (t %d, d %d, p %d) took %f seconds", __dst, 0x1Eu);
      }

      *__error() = v168;
      if ((v27[616] & 2) != 0)
      {
        goto LABEL_244;
      }

      v239 = 0;
      v237 = 0u;
      v238 = 0u;
      memset(__dst, 0, sizeof(__dst));
      _TermUpdateSetGetStats(v27, __dst, 1);
      v175 = *&__dst[1] + v237 + *&__dst[0];
      if (v175 < 0xFFFFFFFF)
      {
        atomic_fetch_add(&gTotalCurrentUsage, v175);
        *(v27 + 28) = *&__dst[1] + v237 + *&__dst[0];
        goto LABEL_244;
      }

      v198 = __si_assert_copy_extra_332();
      v196 = v198;
      v199 = "";
      if (v198)
      {
        v199 = v198;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 1286, "(stats.positionInfoUsed+stats.postingInfoUsed+stats.termInfoUsed) < 4294967295U", v199);
LABEL_275:
      free(v196);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    if (vint32_3407 != 11)
    {
      goto LABEL_16;
    }
  }

  else if (vint32_3407 - 7 >= 5)
  {
    if (vint32_3407)
    {
LABEL_16:
      v40 = *__error();
      v41 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      LODWORD(__dst[0]) = 136316162;
      *(__dst + 4) = "TermUpdateSetRestore";
      WORD6(__dst[0]) = 1024;
      *(__dst + 14) = 976;
      WORD1(__dst[1]) = 1024;
      DWORD1(__dst[1]) = v29;
      WORD4(__dst[1]) = 1024;
      *(&__dst[1] + 10) = 8;
      HIWORD(__dst[1]) = 1024;
      LODWORD(v237) = 7;
      v164 = "%s:%d: invalid store version %d, expected %d or %d";
      v165 = __dst;
      v166 = v41;
      v167 = 36;
      goto LABEL_238;
    }

    goto LABEL_239;
  }

  v30 = store_stream_read_vint32_3407(v25);
  *(v27 + 28) = store_stream_read_vint32_3407(v25);
  v32 = (v25 + 10);
  v31 = *(v25 + 5);
  if (*(v25 + 4) - v31 < 0xB)
  {
    v193 = 0;
    v34 = 0;
    LOBYTE(__dst[0]) = 0;
    while (store_stream_read_bytes_3410(v25, __dst, 1uLL) == 1)
    {
      v34 |= (__dst[0] & 0x7F) << v193;
      v193 += 7;
      if ((__dst[0] & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }

    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(v25 + 6) + v31++);
      v34 |= (v35 & 0x7F) << v33;
      if ((v35 & 0x80) == 0)
      {
        break;
      }

      v36 = v33 == 63;
      v33 += 7;
    }

    while (!v36);
    *v32 = v31;
  }

LABEL_12:
  *(v27 + 1) = v34;
  *(v27 + 4) = store_stream_read_vint32_3407(v25);
  v37 = store_stream_read_vint32_3407(v25);
  if (v29 < 9)
  {
    *(v27 + 15) = v37;
    *(v27 + 16) = store_stream_read_vint32_3407(v25);
    if (v29 == 8)
    {
      *(v27 + 17) = store_stream_read_vint32_3407(v25);
      v38 = v27;
      v39 = 192;
      goto LABEL_22;
    }
  }

  else
  {
    *(v27 + 21) = v37;
    *(v27 + 18) = store_stream_read_vint32_3407(v25);
    *(v27 + 15) = store_stream_read_vint32_3407(v25);
    *(v27 + 22) = store_stream_read_vint32_3407(v25);
    *(v27 + 19) = store_stream_read_vint32_3407(v25);
    *(v27 + 16) = store_stream_read_vint32_3407(v25);
    *(v27 + 27) = store_stream_read_vint32_3407(v25);
    *(v27 + 26) = store_stream_read_vint32_3407(v25);
    *(v27 + 17) = store_stream_read_vint32_3407(v25);
    *(v27 + 24) = store_stream_read_vint32_3407(v25);
    if (v29 != 9)
    {
      v38 = v27;
      v39 = 200;
LABEL_22:
      *&v38[v39] = store_stream_read_vint32_3407(v25);
      v27 = v38;
    }
  }

  if (!*(v27 + 28) && !*(v27 + 1) && !*(v27 + 4))
  {
    *(v27 + 1) = v19;
    *(v27 + 4) = v17;
  }

  if ((restoreDirStoreUpdateSet(v27 + 11, v27 + 3, v25) & 1) == 0)
  {
    v158 = *__error();
    v159 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__dst[0]) = 136315394;
      *(__dst + 4) = "TermUpdateSetRestore";
      WORD6(__dst[0]) = 1024;
      *(__dst + 14) = 1022;
      _os_log_error_impl(&dword_1C278D000, v159, OS_LOG_TYPE_ERROR, "%s:%d: Failed restoring update set for paths", __dst, 0x12u);
    }

    *__error() = v158;
    if (!v25[4])
    {
      v25[4] = -1;
    }

    goto LABEL_226;
  }

  bzero(__dst, 0x1000uLL);
  v42 = atomic_load(v27 + 62);
  v43 = v42 + v30;
  v44 = *(v27 + 63);
  if (v43 >= v44)
  {
    do
    {
      if (v44)
      {
        v45 = 2 * v44;
      }

      else
      {
        v45 = 0x10000;
      }

      *(v27 + 63) = v45;
      v46 = atomic_load(v27 + 62);
      v47 = v46 + v30;
      v44 = *(v27 + 63);
    }

    while (v47 >= v44);
  }

  v48 = 32 * v44;
  v49 = mmap(0, v48, 3, 4098, -167772160, 0);
  *(v27 + 30) = v49;
  if (v49 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v207 = *__error();
      v208 = __error();
      v209 = strerror(*v208);
      *v240 = 136317186;
      *&v240[4] = "slab_allocator.h";
      v241 = 1024;
      v242 = 85;
      v243 = 2048;
      *v244 = v48;
      *&v244[8] = 1024;
      *v245 = 3;
      *&v245[4] = 1024;
      v246 = 4098;
      v247 = 1024;
      v248 = -167772160;
      v249 = 1024;
      v250 = -167772159;
      v251 = 1024;
      v252 = v207;
      v253 = 2080;
      v254 = v209;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s:%u: mmap failed for addr NULL, len 0x%08lx, prot 0x%04x, flags 0x%04x, fd 0x%04x, flags %u, errno %d(%s)", v240, 0x44u);
    }

    v210 = __si_assert_copy_extra_332();
    v205 = v210;
    v211 = "";
    if (v210)
    {
      v211 = v210;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 1039, "kr == 0", v211);
LABEL_291:
    free(v205);
    if (__valid_fs(-1))
    {
      v212 = 2989;
    }

    else
    {
      v212 = 3072;
    }

    *v212 = -559038737;
    abort();
  }

  atomic_fetch_add_explicit(&qword_1EDD78CC0, v48, memory_order_relaxed);
  if (!v49)
  {
    v195 = __si_assert_copy_extra_332();
    v196 = v195;
    v197 = "";
    if (v195)
    {
      v197 = v195;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 1041, "positions->node_table", v197);
    goto LABEL_275;
  }

  if (!v30)
  {
LABEL_227:
    if (_os_feature_enabled_impl())
    {
      v160 = *(v27 + 10);
      if (v160)
      {
        IVFVectorIndexUpdateSet::~IVFVectorIndexUpdateSet(v160);
        MEMORY[0x1C691FEF0]();
      }

      operator new();
    }

    goto LABEL_239;
  }

  v50 = 0;
  v225 = 4 * (v29 != 11);
  v232 = (v25 + 10);
  v221 = v30;
  while (1)
  {
    v222 = v50;
    if (v25[4])
    {
      goto LABEL_18;
    }

    v51 = store_stream_read_vint32_3407(v25);
    v52 = v51;
    if (v51 - 4097 <= 0xFFFFEFFF)
    {
      v40 = *__error();
      v194 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *v240 = 136315650;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1053;
      v243 = 1024;
      *v244 = v52;
      v164 = "%s:%d: invalid termLen %d";
      v165 = v240;
      v166 = v194;
      v167 = 24;
      goto LABEL_238;
    }

    v53 = v51;
    v54 = *(v25 + 4);
    v55 = *(v25 + 5);
    if (v55 + v51 <= v54)
    {
      v56 = __dst;
      v57 = v52;
LABEL_41:
      memcpy(v56, (*(v25 + 6) + v55), v53);
      *(v25 + 5) = v55 + v53;
      v27 = v234;
      goto LABEL_42;
    }

    v57 = v51;
    v145 = v51;
    v146 = *(v25 + 6);
    v147 = v54 - v55;
    if (v54 != v55)
    {
      __memcpy_chk();
      *v32 = v54;
      v55 = v54;
    }

    v148 = prot_pread(*v25, v146, v55, *(v25 + 3));
    if (v148 != -1)
    {
      v149 = v148;
      *(v25 + 4) = v148;
      *(v25 + 5) = 0;
      v150 = *(v25 + 3) + v148;
      *(v25 + 3) = v150;
      v27 = v234;
      v58 = v221;
      if (!v148)
      {
        goto LABEL_43;
      }

      v56 = __dst + v147;
      v53 = v57 - v147;
      if (v53 <= v149)
      {
        v55 = 0;
        v32 = (v25 + 10);
        v52 = v145;
        goto LABEL_41;
      }

      v32 = (v25 + 10);
      while (1)
      {
        v155 = *(v25 + 6);
        v231 = v56;
        memcpy(v56, v155, v149);
        *(v25 + 5) = v149;
        v156 = prot_pread(*v25, v155, v149, v150);
        if (v156 == -1)
        {
          break;
        }

        v157 = v156;
        *(v25 + 4) = v156;
        *(v25 + 5) = 0;
        v150 = *(v25 + 3) + v156;
        *(v25 + 3) = v150;
        v27 = v234;
        v52 = v145;
        if (!v156)
        {
          goto LABEL_42;
        }

        v55 = 0;
        v56 = &v231[v149];
        v53 -= v149;
        v149 = v157;
        if (v53 <= v157)
        {
          goto LABEL_41;
        }
      }
    }

    v25[4] = *__error();
    v27 = v234;
    v52 = v145;
LABEL_42:
    v58 = v221;
    if (!v52)
    {
      v61 = 1;
      v60 = v57;
      goto LABEL_52;
    }

LABEL_43:
    if (v52 >= 2)
    {
      v60 = v57;
      v59 = v57 & 0x1FFE;
      v62 = __dst + 1;
      v63 = v59;
      do
      {
        v64 = tcmr[*v62];
        *(v62 - 1) = tcmr[*(v62 - 1)];
        *v62 = v64;
        v62 += 2;
        v63 -= 2;
      }

      while (v63);
      if (v59 == v57)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v59 = 0;
      v60 = v57;
    }

    v65 = v60 - v59;
    v66 = __dst + v59;
    do
    {
      *v66 = tcmr[*v66];
      ++v66;
      --v65;
    }

    while (v65);
LABEL_51:
    v61 = 0;
LABEL_52:
    *(__dst + v60) = 0;
    v67 = store_stream_read_vint32_3407(v25);
    v68 = v67;
    v69 = *(v25 + 4);
    if (v69 < v67)
    {
      v161 = *__error();
      v178 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_232;
      }

      v179 = *(v25 + 4);
      *v240 = 136315906;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1068;
      v243 = 1024;
      *v244 = v68;
      *&v244[4] = 1024;
      *&v244[6] = v179;
      v180 = "%s:%d: invalid  postingCount %u > %u";
      v181 = v178;
      v182 = 30;
      goto LABEL_249;
    }

    v230 = v67;
    if (v67)
    {
      v217 = v61;
      v223 = v52;
      v226 = 0;
      v70 = 0;
      v228 = 0;
      v71 = 0;
      v72 = 0;
      v216 = v60;
      v219 = v60 - 1;
      while (1)
      {
        v73 = *(v25 + 5);
        if (*(v25 + 4) - v73 >= 0xB)
        {
          v74 = 0;
          v75 = 0;
          do
          {
            v76 = *(*(v25 + 6) + v73++);
            v75 |= (v76 & 0x7F) << v74;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v36 = v74 == 63;
            v74 += 7;
          }

          while (!v36);
          *v32 = v73;
          if (v25[4])
          {
            goto LABEL_231;
          }

          goto LABEL_61;
        }

        v100 = 0;
        v75 = 0;
        v240[0] = 0;
        while (1)
        {
          v101 = *(v25 + 4);
          v102 = *(v25 + 5);
          if (v102 + 1 <= v101)
          {
            v103 = 0;
            v104 = v240;
            v105 = 1;
LABEL_103:
            memcpy(v104, (*(v25 + 6) + v102), v105);
            *(v25 + 5) = v102 + v105;
            v106 = v103;
            v103 = v105;
            goto LABEL_104;
          }

          v107 = *(v25 + 6);
          v103 = v101 - v102;
          if (v101 != v102)
          {
            __memcpy_chk();
            *v232 = v101;
          }

          __n = prot_pread(*v25, v107, v101, *(v25 + 3));
          if (__n == -1)
          {
            v103 = 0;
          }

          else
          {
            v108 = *(v25 + 3) + __n;
            *(v25 + 4) = __n;
            *(v25 + 5) = 0;
            v214 = v108;
            *(v25 + 3) = v108;
            if (!__n)
            {
              v106 = 0;
              goto LABEL_116;
            }

            v104 = &v240[v103];
            v105 = 1 - v103;
            if (1 - v103 <= __n)
            {
              v102 = 0;
              v27 = v234;
              goto LABEL_103;
            }

            while (1)
            {
              v213 = *(v25 + 6);
              v109 = v104;
              memcpy(v104, v213, __n);
              *(v25 + 5) = __n;
              v110 = prot_pread(*v25, v213, __n, v214);
              if (v110 == -1)
              {
                break;
              }

              v111 = v110;
              *(v25 + 4) = v110;
              *(v25 + 5) = 0;
              v214 = *(v25 + 3) + v110;
              *(v25 + 3) = v214;
              if (!v110)
              {
                v106 = v103;
                v103 = __n;
                goto LABEL_116;
              }

              v102 = 0;
              v104 = &v109[__n];
              v105 -= __n;
              v103 += __n;
              __n = v111;
              v27 = v234;
              if (v105 <= v111)
              {
                goto LABEL_103;
              }
            }
          }

          v25[4] = *__error();
          v106 = v103;
          v103 = 0;
LABEL_116:
          v27 = v234;
LABEL_104:
          if (v103 + v106 != 1)
          {
            break;
          }

          v75 |= (v240[0] & 0x7F) << v100;
          v100 += 7;
          if ((v240[0] & 0x80) == 0)
          {
            goto LABEL_129;
          }
        }

        v75 = 0;
LABEL_129:
        v68 = v230;
        if (v25[4])
        {
LABEL_231:
          v161 = *__error();
          v162 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
          {
LABEL_232:
            *__error() = v161;
            goto LABEL_18;
          }

          v183 = v25[4];
          *v240 = 136315650;
          *&v240[4] = "TermUpdateSetRestore";
          v241 = 1024;
          v242 = 1077;
          v243 = 1024;
          *v244 = v183;
          v180 = "%s:%d: storeStream error %d";
          v181 = v162;
          v182 = 24;
LABEL_249:
          _os_log_error_impl(&dword_1C278D000, v181, OS_LOG_TYPE_ERROR, v180, v240, v182);
          goto LABEL_232;
        }

LABEL_61:
        if (v72)
        {
          v77 = v72 - (v75 >> 2);
        }

        else
        {
          v77 = v75 >> 2;
        }

        if ((v75 & 2) == 0)
        {
          v72 = v77;
        }

        if (v75)
        {
          v78 = 1;
          if (v71)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v78 = store_stream_read_vint32_3407(v25);
          if (v71)
          {
LABEL_68:
            if ((v75 & 2) != 0)
            {
              v79 = 2;
            }

            else
            {
              v79 = 1;
            }

            v80 = v27;
            v81 = (v27 + 100);
            v82 = atomic_load(v81);
            v83 = v82 + v79;
            v84 = *(v80 + 24);
            if (v83 >= v84)
            {
              v112 = 2 * v84;
              if (!v84)
              {
                v112 = 0x4000;
              }

              *(v234 + 24) = v112;
              if (my_vm_reallocate(v234 + 11, 12 * v84, 12 * v112, 0xF3u, *(v234 + 13)))
              {
                v204 = __si_assert_copy_extra_332();
                v205 = v204;
                v206 = "";
                if (v204)
                {
                  v206 = v204;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "DocPosting.h", 250, "0 == kr", v206);
                goto LABEL_291;
              }
            }

            add = atomic_fetch_add(v81, v79);
            v27 = v234;
            if (v228)
            {
              v70 = *(v234 + 11) + 12 * v228;
            }

            v68 = v230;
            if (add)
            {
              v86 = *(v234 + 11);
              *v70 = *v70 & 1 | (2 * add);
              v70 = v86 + 12 * add;
              v228 = add;
              goto LABEL_94;
            }

            *v70 &= 1u;
            v40 = *__error();
            v163 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            *v240 = 136315394;
            *&v240[4] = "TermUpdateSetRestore";
            v241 = 1024;
            v242 = 1121;
            v164 = "%s:%d: lastPosting==0";
LABEL_245:
            v165 = v240;
            v166 = v163;
            v167 = 18;
LABEL_238:
            _os_log_error_impl(&dword_1C278D000, v166, OS_LOG_TYPE_ERROR, v164, v165, v167);
            goto LABEL_17;
          }
        }

        v87 = *(v27 + 3);
        v88 = (v87 + 2);
        v89 = *v87;
        v240[0] = 0;
        if (!v89)
        {
          v93 = TermTrieResolve(v88);
LABEL_92:
          v70 = v93;
          goto LABEL_93;
        }

        v90 = (v89 + 0x4000);
        v91 = *(v89 + 0x4000);
        if (v91 < 0)
        {
          v94 = *v89;
          if ((v91 & 0x7FFFFFFF) == 0 && v223 == *(v94 + 16))
          {
            if (v217)
            {
LABEL_83:
              v70 = *v89;
              v68 = v230;
              goto LABEL_93;
            }

            v95 = v87 + 270;
            if (*(v94 + 18) == *(v95 + LOBYTE(__dst[0])))
            {
              v96 = 0;
              while (v219 != v96)
              {
                v97 = *(v94 + v96 + 19);
                v98 = *(v95 + *(__dst + ++v96));
                if (v97 != v98)
                {
                  if (v96 >= v216)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_89;
                }
              }

              goto LABEL_83;
            }
          }

LABEL_89:
          v99 = *v89;
          v93 = TermTrieResolve(v88);
          if (*(v99 + 4) < *(v93 + 4))
          {
            *v89 = v93;
            *(v89 + 0x4000) = 0x80000000;
          }

          v68 = v230;
          goto LABEL_92;
        }

        v92 = TermTrieResolve(v88);
        *v89 = v92;
        v70 = v92;
        *v90 = 0x80000000;
        v68 = v230;
LABEL_93:
        *(v70 + 12) = 0;
        v226 = v70;
LABEL_94:
        *v70 &= 1u;
        if ((v75 & 2) != 0)
        {
          *v70 = 1;
          *(v70 + 8) = v75 >> 2;
        }

        else
        {
          if (v233 && v77 > v233)
          {
            v185 = *__error();
            v186 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
            {
              v202 = *(v27 + 4);
              *v240 = 136316162;
              *&v240[4] = "TermUpdateSetRestore";
              v241 = 1024;
              v242 = 1133;
              v243 = 1024;
              *v244 = v77;
              *&v244[4] = 1024;
              *&v244[6] = v233;
              *v245 = 1024;
              *&v245[2] = v202;
              _os_log_error_impl(&dword_1C278D000, v186, OS_LOG_TYPE_ERROR, "%s:%d: invalid doc id %d exceeded (%d, %d)", v240, 0x24u);
            }

            *__error() = v185;
            v25[4] = 22;
            goto LABEL_18;
          }

          *v70 = 0;
          *(v70 + 8) = v77;
        }

        *(v70 + 4) = v78;
        ++v71;
        v32 = (v25 + 10);
        if (v71 == v68)
        {
          v69 = *(v25 + 4);
          v58 = v221;
          v113 = v226;
          goto LABEL_132;
        }
      }
    }

    v113 = 0;
LABEL_132:
    if (v69 - *v32 < 0xA)
    {
      *&v240[8] = 0;
      *v240 = 0;
      if (store_stream_read_bytes_3410(v25, v240, 1uLL) == 1 && ((v151 = v2_vInt64DataSize(v240[0]), v151 == 1) || store_stream_read_bytes_3410(v25, &v240[1], (v151 - 1)) == v152))
      {
        __p[0] = 0;
        VInt64_2873 = v2_readVInt64_2873(v240, __p);
      }

      else
      {
        VInt64_2873 = 0;
      }

      v27 = v234;
      v58 = v221;
      v32 = (v25 + 10);
      v68 = v230;
      v115 = v222;
      if (!VInt64_2873)
      {
        goto LABEL_194;
      }
    }

    else
    {
      VInt64_2873 = v2_readVInt64_2873(*(v25 + 6), v32);
      v115 = v222;
      if (!VInt64_2873)
      {
        goto LABEL_194;
      }
    }

    if (!v113)
    {
      v200 = *__error();
      v201 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
      {
        *v240 = 136315394;
        *&v240[4] = "TermUpdateSetRestore";
        v241 = 1024;
        v242 = 1148;
        _os_log_error_impl(&dword_1C278D000, v201, OS_LOG_TYPE_ERROR, "%s:%d: value==0", v240, 0x12u);
      }

      *__error() = v200;
      v27 = v234;
      goto LABEL_18;
    }

    v116 = atomic_fetch_add(v27 + 62, 1u);
    *(v113 + 12) = v116;
    v220 = *(v27 + 30) + 32 * v116;
    *(v220 + 16) = VInt64_2873 >> 1;
    if (*(v25 + 4) - *(v25 + 5) >= 0xAuLL)
    {
      break;
    }

    *&v240[8] = 0;
    *v240 = 0;
    if (store_stream_read_bytes_3410(v25, v240, 1uLL) == 1 && ((v153 = v2_vInt64DataSize(v240[0]), v153 == 1) || store_stream_read_bytes_3410(v25, &v240[1], (v153 - 1)) == v154))
    {
      __p[0] = 0;
      v118 = v2_readVInt64_2873(v240, __p);
    }

    else
    {
      v118 = 0;
    }

    v27 = v234;
    v58 = v221;
    v32 = (v25 + 10);
    v68 = v230;
    v115 = v222;
    if (v118)
    {
      goto LABEL_137;
    }

LABEL_194:
    v50 = v115 + 1;
    if (v50 == v58)
    {
      goto LABEL_227;
    }
  }

  v117 = v2_readVInt64_2873(*(v25 + 6), v32);
  LODWORD(v118) = v117;
  v115 = v222;
  if (!v117)
  {
    goto LABEL_194;
  }

LABEL_137:
  v119 = 0;
  v120 = 0;
  v224 = 0;
  v121 = 0;
  while (2)
  {
    v122 = positionInfoAlloc((v27 + 240), v118 + v225 + 8);
    if (!v122)
    {
      v40 = *__error();
      v163 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *v240 = 136315394;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1188;
      v164 = "%s:%d: posPtrStart==0";
      goto LABEL_245;
    }

    v123 = v122;
    v227 = v119;
    v229 = v121;
    v124 = (*(v27 + 32) + 8 * v122);
    *v124 = v118;
    v125 = (v124 + 1);
    v126 = *(v25 + 4);
    v127 = *(v25 + 5);
    if (v127 + v118 <= v126)
    {
      v128 = 0;
      v129 = v125;
      v130 = v118;
      goto LABEL_141;
    }

    v128 = v126 - v127;
    if (v126 != v127)
    {
      memcpy(v125, (*(v25 + 6) + v127), v126 - v127);
      v126 = *(v25 + 4);
      *(v25 + 5) += v128;
    }

    v141 = prot_pread(*v25, *(v25 + 6), v126, *(v25 + 3));
    if (v141 == -1)
    {
      v128 = 0;
LABEL_174:
      v25[4] = *__error();
      v131 = v128;
      v128 = 0;
    }

    else
    {
      *(v25 + 4) = v141;
      *(v25 + 5) = 0;
      *(v25 + 3) += v141;
      if (v141)
      {
        v129 = &v125[v128];
        v130 = v118 - v128;
        if (v130 > v141)
        {
          v218 = v141;
          while (1)
          {
            memcpy(v129, *(v25 + 6), v218);
            v143 = *(v25 + 6);
            *(v25 + 5) += v218;
            v144 = prot_pread(*v25, v143, *(v25 + 4), *(v25 + 3));
            if (v144 == -1)
            {
              v68 = v230;
              goto LABEL_174;
            }

            *(v25 + 4) = v144;
            *(v25 + 5) = 0;
            *(v25 + 3) += v144;
            if (!v144)
            {
              break;
            }

            v127 = 0;
            v129 += v218;
            v130 -= v218;
            v128 += v218;
            v218 = v144;
            if (v130 <= v144)
            {
              goto LABEL_141;
            }
          }

          v131 = v128;
          v128 = v218;
        }

        else
        {
          v127 = 0;
LABEL_141:
          memcpy(v129, (*(v25 + 6) + v127), v130);
          *(v25 + 5) += v130;
          v131 = v128;
          v128 = v130;
        }

        v68 = v230;
      }

      else
      {
        v131 = 0;
      }
    }

    if (v118 != v128 + v131)
    {
      v187 = *__error();
      v188 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
      {
LABEL_258:
        *__error() = v187;
        v27 = v234;
        goto LABEL_18;
      }

      v189 = v25[4];
      *v240 = 136315650;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1198;
      v243 = 1024;
      *v244 = v189;
      v190 = "%s:%d: read error %d";
      v191 = v188;
LABEL_282:
      _os_log_error_impl(&dword_1C278D000, v191, OS_LOG_TYPE_ERROR, v190, v240, 0x18u);
      goto LABEL_258;
    }

    if (v125[(v118 - 1)])
    {
      v187 = *__error();
      v192 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_258;
      }

      v203 = v125[(v118 - 1)];
      *v240 = 136315650;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1206;
      v243 = 1024;
      *v244 = v203;
      v190 = "%s:%d: posStart[len-1]: %d";
      v191 = v192;
      goto LABEL_282;
    }

    v132 = &v125[v118];
    *v132 = 0;
    v27 = v234;
    v133 = *(v234 + 32);
    if (v120)
    {
      v134 = (v120 + v133 - v227);
      if (v227 == v133)
      {
        v134 = v120;
      }

      *v134 = v123;
    }

    else
    {
      v224 = v123;
    }

    v32 = (v25 + 10);
    v135 = *(v25 + 5);
    if ((*(v25 + 4) - v135) < 6)
    {
      *&v240[8] = 0;
      *v240 = 0;
      if (store_stream_read_bytes_3410(v25, v240, 1uLL) == 1 && ((v240[0] & 0x80000000) == 0 || (v240[0] >= 0xC0u ? (v240[0] >= 0xE0u ? (v240[0] < 0xF0u ? (v142 = 3) : (v142 = 4)) : (v142 = 2)) : (v142 = 1), v27 = v234, v32 = (v25 + 10), v68 = v230, store_stream_read_bytes_3410(v25, &v240[1], v142) == v142)))
      {
        __p[0] = 0;
        VInt32 = v2_readVInt32(v240, __p);
      }

      else
      {
        VInt32 = 0;
      }
    }

    else
    {
      v136 = *(v25 + 6);
      v137 = v135 + 1;
      v138 = v136 + v135;
      VInt32 = *(v136 + v135);
      if (*(v136 + v135) < 0)
      {
        if (VInt32 > 0xBF)
        {
          if (VInt32 > 0xDF)
          {
            if (VInt32 > 0xEF)
            {
              VInt32 = *(v136 + v137);
              v137 = v135 + 5;
            }

            else
            {
              VInt32 = ((VInt32 & 0xF) << 24) | (*(v136 + v137) << 16) | (*(v138 + 2) << 8) | *(v138 + 3);
              v137 = v135 + 4;
            }
          }

          else
          {
            VInt32 = ((VInt32 & 0x1F) << 16) | (*(v136 + v137) << 8) | *(v138 + 2);
            v137 = v135 + 3;
          }
        }

        else
        {
          v140 = *(v136 + v137) | ((VInt32 & 0x3F) << 8);
          v137 = v135 + 2;
          VInt32 = v140;
        }
      }

      *v232 = v137;
    }

    if (VInt32)
    {
      if (v229 == v68)
      {
        v40 = *__error();
        v184 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        *v240 = 136315906;
        *&v240[4] = "TermUpdateSetRestore";
        v241 = 1024;
        v242 = 1253;
        v243 = 1024;
        *v244 = v68;
        *&v244[4] = 1024;
        *&v244[6] = v68;
        v164 = "%s:%d: invalid position data %d %d";
LABEL_261:
        v165 = v240;
        v166 = v184;
        v167 = 30;
        goto LABEL_238;
      }

      v121 = v229 + 1;
      v119 = v133;
      v120 = v132;
      LODWORD(v118) = VInt32;
      continue;
    }

    break;
  }

  if (*(v220 + 16) || v229 + 1 == v68)
  {
    *(v220 + 4) = v224;
    v58 = v221;
    v115 = v222;
    goto LABEL_194;
  }

  v40 = *__error();
  v184 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
  {
    *v240 = 136315906;
    *&v240[4] = "TermUpdateSetRestore";
    v241 = 1024;
    v242 = 1243;
    v243 = 1024;
    *v244 = v229 + 1;
    *&v244[4] = 1024;
    *&v244[6] = v68;
    v164 = "%s:%d: invalid position data %d %d";
    goto LABEL_261;
  }

LABEL_17:
  *__error() = v40;
LABEL_18:
  if (v27)
  {
LABEL_226:
    TermUpdateSetRelease(v27);
    v27 = 0;
  }

LABEL_244:
  v176 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t v2_vInt64DataSize(unsigned int a1)
{
  if (a1 == 255)
  {
    v1 = 9;
  }

  else
  {
    v1 = 8;
  }

  if (a1 >= 0xFE)
  {
    v2 = v1;
  }

  else
  {
    v2 = 7;
  }

  if (a1 >= 0xFC)
  {
    v3 = v2;
  }

  else
  {
    v3 = 6;
  }

  if (a1 >= 0xF8)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a1 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  if (a1 >= 0xE0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (a1 >= 0xC0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if ((a1 & 0x80) != 0)
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

uint64_t TermUpdateSetRemoveFromAccounting(uint64_t result)
{
  v1 = *(result + 224);
  v2 = atomic_load(&gTotalCurrentUsage);
  if (v1 > v2)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 1448, "termUpdateSet->reportedSize <= gTotalCurrentUsage", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  atomic_fetch_add(&gTotalCurrentUsage, -*(result + 224));
  *(result + 224) = 0;
  return result;
}

unint64_t termUpdateSetProcessSingleVector(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5)
{
  number = 0;
  value = 0;
  result = CFDictionaryGetValueIfPresent(theDict, @"vec_data", &value);
  if (result)
  {
    result = CFDictionaryGetValueIfPresent(theDict, @"vec_id", &number);
    if (result)
    {
      v31 = 0;
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (CFDictionaryGetValueIfPresent(theDict, @"vec_dim", &number))
      {
        v11 = CFGetTypeID(number);
        if (v11 == CFNumberGetTypeID())
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v31);
        }
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"vec_format", &number))
      {
        v12 = CFGetTypeID(number);
        if (v12 == CFNumberGetTypeID())
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v31 + 4);
        }
      }

      v29 = 0;
      if (CFDictionaryGetValueIfPresent(theDict, @"vec_version", &number))
      {
        v13 = CFGetTypeID(number);
        if (v13 == CFNumberGetTypeID())
        {
          CFNumberGetValue(number, kCFNumberSInt16Type, &v29);
        }
      }

      v14 = -1;
      if (v31 <= 2 && HIDWORD(v31) <= 2)
      {
        v14 = (vector_dimension_vec_sizes_15424[v31] * vector_size_elem_sizes_15423[HIDWORD(v31)]);
      }

      result = CFDataGetLength(value);
      if (v14 <= result)
      {
        v15 = *(a1 + 80);
        v16 = v29;
        v17 = valuePtr;
        BytePtr = CFDataGetBytePtr(value);
        v19 = v31;
        v20 = HIDWORD(v31);
        if (__THREAD_SLOT_KEY)
        {
          v21 = pthread_getspecific(__THREAD_SLOT_KEY);
          if (!v21)
          {
            goto LABEL_33;
          }
        }

        else
        {
          makeThreadId();
          v21 = pthread_getspecific(__THREAD_SLOT_KEY);
          if (!v21)
          {
            goto LABEL_33;
          }
        }

        if (v21 < 0x801)
        {
          v22 = 0;
LABEL_20:
          if (v21 <= 0x800)
          {
            v23 = &threadData[9 * v21];
            v22 = *(v23 - 11);
            *(v23 - 11) = 1;
          }

LABEL_22:
          v28 = v22;
          if (!v17)
          {
            v25 = __si_assert_copy_extra_332();
            v26 = v25;
            v27 = "";
            if (v25)
            {
              v27 = v25;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndex.cpp", 268, "vectorId > 0", v27);
            free(v26);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          IVFVectorIndexUpdateSet::getOrCreateVectorIndex(&v34, v15, a5, v16, v19, v20, 0);
          (*(*v34 + 64))(v34, a5, v17, BytePtr, v19, v20, a3, a4, a1 + 88);
          v24 = v35;
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          if (__THREAD_SLOT_KEY)
          {
            result = pthread_getspecific(__THREAD_SLOT_KEY);
            if (!result)
            {
              goto LABEL_40;
            }
          }

          else
          {
            makeThreadId();
            result = pthread_getspecific(__THREAD_SLOT_KEY);
            if (!result)
            {
              goto LABEL_40;
            }
          }

          if (result < 0x801)
          {
LABEL_29:
            if (result <= 0x800)
            {
              *(&threadData[9 * result - 5] - 1) = v28;
            }

            return result;
          }

LABEL_40:
          makeThreadId();
          result = pthread_getspecific(__THREAD_SLOT_KEY);
          if (!result)
          {
            return result;
          }

          goto LABEL_29;
        }

LABEL_33:
        makeThreadId();
        v21 = pthread_getspecific(__THREAD_SLOT_KEY);
        v22 = 0;
        if (!v21)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }
  }

  return result;
}

void pushPropertyTermForWildCard(void **a1, size_t a2, const void *a3, int a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a2 + 2;
  MEMORY[0x1EEE9AC00](a1);
  v10 = (v20 - ((v9 + 17) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v8);
  *v10 = a2;
  memcpy(v10 + 1, a3, a2);
  v11 = 1;
  if (a4 == 2)
  {
    v11 = 2;
  }

  v12 = a1[v11];
  if (!CFSetContainsValue(v12, v10))
  {
    v13 = *a1;
    while (2)
    {
      for (i = atomic_load(v13 + 1); i + v8 + 8 >= v13[2]; i = atomic_load(v16))
      {
        os_unfair_lock_lock(&_slablock);
        v13 = *a1;
        v16 = *a1 + 1;
        v17 = atomic_load(v16);
        if (v17 + v8 + 8 >= v13[2])
        {
          i = slab_new_slab(a1, v8, 0xFFFFFFFF);
          os_unfair_lock_unlock(&_slablock);
LABEL_11:
          madvise(((i & 0xFFFFFFFFFFFC0000) + 0x40000), 0x40000uLL, 3);
          goto LABEL_12;
        }

        os_unfair_lock_unlock(&_slablock);
      }

      v14 = i;
      atomic_compare_exchange_strong(v13 + 1, &v14, i + v8);
      if (v14 != i)
      {
        continue;
      }

      break;
    }

    v18 = atomic_load(v13 + 1);
    if ((v18 ^ i) >= 0x40000)
    {
      goto LABEL_11;
    }

LABEL_12:
    memcpy(i, v10, v8);
    CFSetAddValue(v12, i);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t _getContentRankedSubTokensCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v16[1] = *MEMORY[0x1E69E9840];
  if (a2 <= 1044)
  {
    v6 = *(a4 + 32);
    if ((v6 - 6) >= 0xFFFFFFFB)
    {
      v7 = a2 + 3;
      MEMORY[0x1EEE9AC00](0);
      v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = v10;
      v13 = v12;
      bzero(v9, v8);
      v11 *= 2;
      memcpy(v9, a1, v11);
      v14 = &v9[v11];
      *v14 = 1;
      *(v14 + 1) = v6;
      *(v14 + 2) = 5;
      result = getContentTokensCallback(v9, v7, 1, v13);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t decode_prefix(unsigned __int8 *a1, unsigned int a2, char *a3)
{
  v3 = tcmr[*a1] >> 4;
  v4 = utf8_byte_length(unsigned char)::utf8_len_table[v3];
  if ((v3 & 0xC) != 8)
  {
    v5 = a1;
    v6 = a3;
    v7 = v4;
    do
    {
      v8 = *v5++;
      *v6++ = tcmr[v8];
      --v7;
    }

    while (v7);
  }

  v9 = &a3[v4];
  if (v4 >= a2)
  {
    LODWORD(v32) = a3 + v4;
    return (v32 - a3);
  }

  v10 = &a1[v4];
  v11 = &a1[a2];
  v12 = tcmr[a1[v4]] >> 4;
  v13 = utf8_byte_length(unsigned char)::utf8_len_table[v12];
  if ((v12 & 0xC) != 8)
  {
    v14 = &a1[v4];
    v15 = &a3[v4];
    v16 = v13;
    do
    {
      v17 = *v14++;
      *v15++ = tcmr[v17];
      --v16;
    }

    while (v16);
  }

  v18 = &v10[v13];
  if (&v10[v13] >= v11)
  {
    goto LABEL_56;
  }

  v19 = *v9;
  if (v19 < 0)
  {
    v20 = utf8_byte_length(unsigned char)::utf8_len_table[*v9 >> 4];
    v21 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v20] & *v9);
    if ((~(*v9 >> 4) & 0xC) != 0)
    {
      goto LABEL_17;
    }

    v22 = v20 <= 2 ? 2 : utf8_byte_length(unsigned char)::utf8_len_table[*v9 >> 4];
    v23 = v22 - 1;
    v24 = &a3[v4 + 1];
    do
    {
      v25 = *v24++;
      v21 = v25 & 0x3F | (v21 << 6);
      --v23;
    }

    while (v23);
    if (v21 < 0x10000)
    {
LABEL_17:
      if ((v21 - 12441) >= 4 && (v21 - 65438) >= 2)
      {
        v36 = a3;
        v37 = unicode_combinable(v21);
        a3 = v36;
        if (!v37)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v33 = v21 - 917760;
      v34 = v21 - 127995;
      if (v33 >= 0xF0 && v34 > 4)
      {
        goto LABEL_34;
      }
    }

    v9 += v13;
    v27 = tcmr[*v18] >> 4;
    v13 = utf8_byte_length(unsigned char)::utf8_len_table[v27];
    if ((v27 & 0xC) != 8)
    {
      v28 = v18;
      v29 = v9;
      v30 = v13;
      do
      {
        v31 = *v28++;
        *v29++ = tcmr[v31];
        --v30;
      }

      while (v30);
    }

    v18 += v13;
    if (v18 >= v11)
    {
      goto LABEL_56;
    }

    LOBYTE(v19) = *v9;
  }

LABEL_34:
  if (v19 != 45)
  {
    if (v19 == 239)
    {
      if (v9[1] != 188 || v9[2] != 189)
      {
        goto LABEL_58;
      }
    }

    else if (v19 != 226 || v9[1] != 128 || (v9[2] & 0xFE) != 0x90)
    {
      goto LABEL_58;
    }
  }

  v38 = *a3;
  if (v38 < 0)
  {
    v39 = v38 >> 4;
    v40 = utf8_byte_length(unsigned char)::utf8_len_table[v39];
    v41 = ~v39;
    v42 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v40] & v38);
    if ((v41 & 0xC) != 0)
    {
      v38 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v40] & v38);
    }

    else
    {
      if (v40 <= 2)
      {
        v40 = 2;
      }

      else
      {
        v40 = v40;
      }

      v43 = v40 - 1;
      v44 = a3 + 1;
      do
      {
        v45 = *v44++;
        v38 = v45 & 0x3F | (v42 << 6);
        v42 = v38;
        --v43;
      }

      while (v43);
    }
  }

  v46 = a3;
  if (((1 << u_charType(v38)) & 0xE3E) == 0)
  {
    LODWORD(a3) = v46;
    goto LABEL_58;
  }

  v9 += v13;
  v47 = tcmr[*v18] >> 4;
  v13 = utf8_byte_length(unsigned char)::utf8_len_table[v47];
  if ((v47 & 0xC) != 8)
  {
    v48 = v18;
    v49 = v9;
    v50 = v13;
    do
    {
      v51 = *v48++;
      *v49++ = tcmr[v51];
      --v50;
    }

    while (v50);
  }

  v18 += v13;
  LODWORD(a3) = v46;
  if (v18 >= v11)
  {
LABEL_56:
    LODWORD(v32) = v9 + v13;
    return (v32 - a3);
  }

LABEL_58:
  v52 = v13;
  v32 = &v9[v13];
  v53 = tcmr[*v18] >> 4;
  v54 = utf8_byte_length(unsigned char)::utf8_len_table[v53];
  if ((v53 & 0xC) != 8)
  {
    v55 = v32;
    v56 = v54;
    do
    {
      v57 = *v18++;
      *v55++ = tcmr[v57];
      --v56;
    }

    while (v56);
  }

  if (*v32 < 0)
  {
    v58 = *v32;
    v59 = v58 >> 4;
    v60 = utf8_byte_length(unsigned char)::utf8_len_table[v58 >> 4];
    v61 = v58 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v60];
    if ((~v59 & 0xC) != 0)
    {
      goto LABEL_69;
    }

    v60 = v60 <= 2 ? 2 : v60;
    v62 = v60 - 1;
    v63 = &v9[v52 + 1];
    do
    {
      v64 = *v63++;
      v61 = v64 & 0x3F | (v61 << 6);
      --v62;
    }

    while (v62);
    if (v61 < 0x10000)
    {
LABEL_69:
      if ((v61 - 12441) >= 4 && (v61 - 65438) >= 2)
      {
        v70 = a3;
        v71 = unicode_combinable(v61);
        LODWORD(a3) = v70;
        if (!v71)
        {
          return (v32 - a3);
        }
      }

LABEL_73:
      LODWORD(v32) = v32 + v54;
      return (v32 - a3);
    }

    v67 = v61 - 917760;
    v68 = v61 - 127995;
    if (v67 < 0xF0 || v68 <= 4)
    {
      goto LABEL_73;
    }
  }

  return (v32 - a3);
}

uint64_t _getContentRankedTokensCallback(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
LABEL_5:
    result = 0;
    if (a2 <= 1044)
    {
      v7 = *(a4 + 32);
      if ((v7 - 6) >= 0xFFFFFFFB)
      {
        v8 = a2 + 3;
        MEMORY[0x1EEE9AC00](0);
        v10 = &buf[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v12 = v11;
        v14 = v13;
        bzero(v10, v9);
        v12 *= 2;
        memcpy(v10, a1, v12);
        v15 = &v10[v12];
        *v15 = 1;
        *(v15 + 1) = v7;
        *(v15 + 2) = 5;
        result = getContentTokensCallback(v10, v8, 0, v14);
      }
    }
  }

  else
  {
    v5 = 0;
    while (a1[v5] > 5u)
    {
      if (a2 == ++v5)
      {
        goto LABEL_5;
      }
    }

    if (_getContentRankedTokensCallback_logCount <= 49)
    {
      ++_getContentRankedTokensCallback_logCount;
      v16 = *__error();
      v17 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = a1[v5];
        v20 = __si_error_str_key;
        if (__si_error_str_key)
        {
          v20 = pthread_getspecific(__si_error_str_key);
        }

        v21 = "";
        *buf = 136315906;
        v23 = "_getContentRankedTokensCallback";
        v24 = 1024;
        if (v20)
        {
          v21 = v20;
        }

        v25 = 2045;
        v26 = 1024;
        v27 = v19;
        v28 = 2080;
        v29 = v21;
        _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: invalid content token (%d) for %s", buf, 0x22u);
      }

      *__error() = v16;
    }

    result = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void pushPrefixTermsForWildCard(void **a1, unint64_t a2, unsigned __int8 *__src, unsigned int a4, const void *a5, int a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = utf8_byte_length(unsigned char)::utf8_len_table[*__src >> 4];
  if (v6 > a2)
  {
    goto LABEL_32;
  }

  v11 = &__src[a2];
  v12 = a4;
  v13 = &__src[v6];
  if (v6 < a2 && *v13 < 0)
  {
    v14 = *v13;
    v15 = v14 >> 4;
    v16 = utf8_byte_length(unsigned char)::utf8_len_table[v14 >> 4];
    v17 = v14 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v16];
    if ((~v15 & 0xC) != 0)
    {
      goto LABEL_11;
    }

    v18 = v16 <= 2 ? 2 : v16;
    v19 = v18 - 1;
    v20 = &__src[v6 + 1];
    do
    {
      v21 = *v20++;
      v17 = v21 & 0x3F | (v17 << 6);
      --v19;
    }

    while (v19);
    if (v17 < 0x10000)
    {
LABEL_11:
      v22 = (v17 - 12441) >= 4 && (v17 - 65438) >= 2;
      if (v22 && !unicode_combinable(v17))
      {
        goto LABEL_16;
      }

LABEL_15:
      v13 += v16;
      goto LABEL_16;
    }

    v36 = v17 - 917760;
    v37 = v17 - 127995;
    if (v36 < 0xF0 || v37 <= 4)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v42 = 0u;
  v43 = 0u;
  memcpy(&v42, __src, v13 - __src);
  memcpy(&v42 + v13 - __src, a5, v12);
  pushPropertyTermForWildCard(a1, v13 - __src + v12, &v42, a6);
  v23 = utf8_byte_length(unsigned char)::utf8_len_table[*v13 >> 4];
  v24 = &v13[v23];
  if (&v13[v23] <= v11)
  {
    if (&v13[v23] < v11 && *v24 < 0)
    {
      v25 = *v24;
      v26 = v25 >> 4;
      v27 = utf8_byte_length(unsigned char)::utf8_len_table[v25 >> 4];
      v28 = v25 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v27];
      if ((~v26 & 0xC) != 0)
      {
        goto LABEL_26;
      }

      v29 = v27 <= 2 ? 2 : v27;
      v30 = v29 - 1;
      v31 = &v13[v23 + 1];
      do
      {
        v32 = *v31++;
        v28 = v32 & 0x3F | (v28 << 6);
        --v30;
      }

      while (v30);
      if (v28 < 0x10000)
      {
LABEL_26:
        v33 = (v28 - 12441) >= 4 && (v28 - 65438) >= 2;
        if (v33 && !unicode_combinable(v28))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v39 = v28 - 917760;
        v40 = v28 - 127995;
        if (v39 >= 0xF0 && v40 >= 5)
        {
          goto LABEL_31;
        }
      }

      v24 += v27;
    }

LABEL_31:
    v34 = v24 - __src;
    v42 = 0u;
    v43 = 0u;
    memcpy(&v42, __src, v34);
    memcpy(&v42 + v34, a5, v12);
    pushPropertyTermForWildCard(a1, v34 + v12, &v42, a6);
  }

LABEL_32:
  v35 = *MEMORY[0x1E69E9840];
}

CFTypeID __termUpdateSetProcessVector_block_invoke()
{
  termUpdateSetProcessVector_sArrayTypeID = CFArrayGetTypeID();
  result = CFDictionaryGetTypeID();
  termUpdateSetProcessVector_sDictionaryTypeID = result;
  return result;
}

uint64_t ___hashTableIterate_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 8 * v4) = a2 + 16;
  return result;
}

uint64_t termUpdateSetApplier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= 0x415u)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 2574, "tu->termLen <= (1024+20)", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = *(a1 + 12);
  v4 = *a2;
  v3 = *(a2 + 8);

  return v4();
}

void SIUserCtxSetArgumentDictionary(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 168);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 168) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 168) = cf;
  }
}

uint64_t SIUserCtxSetEntitlements(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

uint64_t SIUserCtxGetEntitlements(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

uint64_t SISetDefaultSchemaData(void *a1, size_t a2)
{
  if (gDefaultSchema)
  {

    return munmap(a1, a2);
  }

  else
  {
    result = _MDPlistContainerCreateWithBytes();
    gDefaultSchema = result;
  }

  return result;
}

_DWORD *TokenDataCreate(const char *a1, int a2)
{
  v4 = strlen(a1);
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    if (v4 <= 1022)
    {
      if (v4 >= 2 && a1[v4 - 1] == 42 && a1[v4 - 2] != 92)
      {
        a2 |= 1u;
        v6 = v4 - 1;
      }

      if (v6 <= utf8_byte_length_noerror(unsigned char)::utf8_len_table[*a1 >> 4])
      {
        return 0;
      }

      else
      {
        if (*MEMORY[0x1E69E9AC8] <= 0x2FuLL)
        {
          ++sTotal_4537;
        }

        v5 = malloc_type_zone_calloc(queryZone, 1uLL, 0x30uLL, 0x5BAF1CEAuLL);
        if (!v5)
        {
          _log_fault_for_malloc_failure();
        }

        *v5 = 0;
        v5[5] = v6;
        *(v5 + 1) = strndup(a1, v6);
        v5[4] = a2;
      }
    }
  }

  return v5;
}

uint64_t TokenDataAddRange(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock(a1);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 44);
  v7 = (v6 - v5) >> 2;
  if (v7 < 1)
  {
    v10 = 0;
    v14 = 0;
LABEL_13:
    v16 = v10 < v7 && v14;
    v17 = v10 + v16;
    if (v5 <= 3)
    {
      v18 = 2 * v6;
      if (!v6)
      {
        v18 = 128;
      }

      do
      {
        v19 = v18;
        v18 *= 2;
      }

      while (v19 < 4);
      v20 = malloc_type_malloc(v19, 0x78811436uLL);
      v4 = v20;
      v21 = v6 - v5;
      if (v21)
      {
        memcpy(&v20[v19 - v21], (*(a1 + 32) + *(a1 + 40) - v21), v21);
        free(*(a1 + 32));
      }

      *(a1 + 32) = v4;
      *(a1 + 40) = v19;
      LODWORD(v5) = v19 - v21;
    }

    v22 = v5 - 4;
    *(a1 + 44) = v22;
    if (v17)
    {
      memmove(&v4[v22], &v4[v5], 4 * v17);
      v4 = *(a1 + 32);
      LODWORD(v22) = *(a1 + 44);
    }

    else
    {
      v17 = 0;
    }

    *&v4[4 * v17 + v22] = a2;
    if ((a2 >> 16) + a2 == *(a1 + 20))
    {
      ++*(a1 + 24);
    }

    v15 = 1;
  }

  else
  {
    v8 = 0;
    v9 = (v6 - v5) >> 2;
    while (1)
    {
      v10 = (v9 + v8) >> 1;
      v11 = &v4[4 * v10 + v5];
      v12 = *(v11 + 1);
      v13 = HIWORD(a2) + a2 - (*v11 + v12);
      if (!v13)
      {
        v13 = HIWORD(a2) - v12;
        if (HIWORD(a2) == v12)
        {
          break;
        }
      }

      if (v13 >= 0)
      {
        v8 = v10 + 1;
      }

      else
      {
        LODWORD(v9) = (v9 + v8) >> 1;
      }

      if (v8 >= v9)
      {
        v14 = v13 > 0;
        goto LABEL_13;
      }
    }

    v15 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v15;
}

uint64_t TokenDataGetTokens(uint64_t result, uint64_t a2)
{
  v13[8] = *MEMORY[0x1E69E9840];
  if (*(result + 24))
  {
    v3 = result;
    v4 = *(result + 44);
    v5 = *(result + 32) + v4;
    v6 = (*(result + 40) - v4) >> 2;
    v7 = *(result + 20);
    MEMORY[0x1EEE9AC00](result);
    v9 = &v13[-1] - ((v8 + 15) & 0x3FFFFFFF0);
    bzero(v9, v8);
    v10 = *(v3 + 20);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __TokenDataGetTokens_block_invoke;
    v13[3] = &unk_1E81939F0;
    v13[4] = a2;
    v13[5] = v5;
    v13[6] = v9;
    v13[7] = v3;
    result = TokenDataProcessStrings(v5, (v6 - 1), v10, v9, 0, v13);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __TokenDataGetTokens_block_invoke(void *a1, unsigned __int16 a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = v14 - ((4 * a2 + 15) & 0x7FFF0);
  bzero(v4, 4 * a2);
  if (((a2 - 1) & 0x8000) == 0)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = 2 * (a2 - 1);
    v8 = v4;
    do
    {
      *v8++ = *(v5 + 4 * *(v6 + v7));
      v7 -= 2;
    }

    while (v7 != -2);
  }

  v9 = a1[7];
  v10 = *(v9 + 8);
  v11 = *(v9 + 20);
  result = (*(a1[4] + 16))();
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TokenDataProcessStrings(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  if ((a2 & 0x80000000) == 0)
  {
    LODWORD(v10) = a2;
    v11 = result;
    v12 = (a5 + 1);
    do
    {
      while (1)
      {
        v13 = (v11 + 4 * v10);
        v14 = *v13;
        v15 = v13[1] + *v13;
        v16 = v10;
        if (v15 != a3)
        {
          break;
        }

        *(a4 + 2 * a5) = v10;
        if (v14)
        {
          v10 = (v10 - 1);
          result = TokenDataProcessStrings(v11, v10, v14, a4, v12, a6);
        }

        else
        {
          result = (*(a6 + 16))(a6, v12);
          LODWORD(v10) = v10 - 1;
        }

        if (v16 <= 0)
        {
          return result;
        }
      }

      LODWORD(v10) = v10 - 1;
    }

    while (v15 >= a3 && v16 > 0);
  }

  return result;
}

void TokenDataDispose(void **a1)
{
  if (a1)
  {
    free(a1[1]);
    free(a1[4]);

    free(a1);
  }
}

void _qsort_offset_triple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  *v6 = 0;
  v6[1] = 0;
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
        v10 = _partition_offset_triple(a1, a2, a3);
        if (v10 < a2)
        {
          v22 = __si_assert_copy_extra(0);
          v23 = v22;
          v24 = "";
          if (v22)
          {
            v24 = v22;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1311, "q>=left", v24);
          free(v23);
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

        if (v8 == v7)
        {
          heapsort_b((a1 + 24 * a2), a3 - a2 + 1, 0x18uLL, &__block_literal_global_4557);
          v7 = v8;
          goto LABEL_21;
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
          goto LABEL_21;
        }
      }

      v11 = a1 + 32 + 24 * a2;
      v12 = a2;
      do
      {
        v13 = v12++;
        v14 = a1 + 24 * v13;
        v15 = *(v14 + 24);
        v16 = *v14;
        v17 = *(v14 + 8);
        v26 = v17;
        v27 = *(v14 + 32);
        v18 = v12;
        if (v16 > v15)
        {
          v19 = v11;
          do
          {
            v18 = v13;
            *(v19 - 1) = v16;
            *v19 = v26;
            if (v13 <= a2)
            {
              break;
            }

            v16 = *(v19 - 7);
            v26 = *(v19 - 3);
            --v13;
            v19 = (v19 - 24);
          }

          while (v16 > v15);
        }

        v20 = a1 + 24 * v18;
        *v20 = v15;
        *(v20 + 8) = v27;
        v11 += 24;
      }

      while (v12 != a3);
    }

LABEL_21:
    --v7;
    v21 = &v6[2 * v7];
    a2 = *v21;
    a3 = v21[1];
  }

  while (v7);

  free(v6);
}

uint64_t _partition_offset_triple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 24 * a2);
  v5 = &v4[3 * ((v3 + (v3 >> 63)) >> 1)];
  v6 = (a1 + 24 * a3);
  if (a3 - a2 < 1024)
  {
    v24 = &v4[3 * ((v3 + (v3 >> 63)) >> 1)];
    v25 = (a1 + 24 * a3);
    v11 = (a1 + 24 * a2);
  }

  else
  {
    v7 = v3 >> 3;
    v8 = &v4[3 * (v3 >> 3)];
    v9 = *v4;
    v10 = *v8;
    v11 = (a1 + 24 * a2);
    if (*v4 != *v8)
    {
      v11 = &v4[6 * v7];
      v12 = *v11;
      if (v9 >= *v11)
      {
        v13 = &v4[6 * v7];
      }

      else
      {
        v13 = (a1 + 24 * a2);
      }

      if (v10 > v12)
      {
        v13 = v8;
      }

      if (v9 >= v12)
      {
        v14 = (a1 + 24 * a2);
      }

      else
      {
        v14 = &v4[6 * v7];
      }

      if (v10 >= v12)
      {
        v8 = v14;
      }

      if (v9 >= v10)
      {
        v8 = v13;
      }

      if (v12 != v9 && v12 != v10)
      {
        v11 = v8;
      }
    }

    v16 = 2 * v7;
    v17 = -v7;
    v18 = &v5[-3 * v7];
    v19 = *v18;
    v20 = *v5;
    if (*v18 == *v5)
    {
      v24 = &v5[-3 * v7];
    }

    else
    {
      v21 = &v5[3 * v7];
      v22 = *v21;
      v23 = *v21 == v19 || v22 == v20;
      v24 = &v5[3 * v7];
      if (!v23)
      {
        v24 = v5;
        if (v19 >= v20)
        {
          if (v20 <= v22)
          {
            if (v19 >= v22)
            {
              v24 = v21;
            }

            else
            {
              v24 = v18;
            }
          }
        }

        else if (v20 >= v22)
        {
          if (v19 >= v22)
          {
            v24 = v18;
          }

          else
          {
            v24 = v21;
          }
        }
      }
    }

    v25 = &v6[-3 * v16];
    v26 = &v6[3 * v17];
    v27 = *v25;
    v28 = *v26;
    if (*v25 != *v26)
    {
      v29 = *v6;
      if (v27 >= *v6)
      {
        v30 = (a1 + 24 * a3);
      }

      else
      {
        v30 = v25;
      }

      if (v28 > v29)
      {
        v30 = v26;
      }

      if (v27 < v29)
      {
        v25 = (a1 + 24 * a3);
      }

      if (v28 < v29)
      {
        v25 = v26;
      }

      if (v27 >= v28)
      {
        v25 = v30;
      }

      if (v29 == v27 || v29 == v28)
      {
        v25 = (a1 + 24 * a3);
      }
    }
  }

  v32 = *v11;
  v33 = *v24;
  if (*v11 == *v24)
  {
    v24 = v11;
  }

  else
  {
    v34 = *v25;
    if (*v25 == v32 || v34 == v33)
    {
      v24 = v25;
    }

    else if (v32 >= v33)
    {
      if (v33 <= v34)
      {
        if (v32 >= v34)
        {
          v24 = v25;
        }

        else
        {
          v24 = v11;
        }
      }
    }

    else if (v33 >= v34)
    {
      if (v32 >= v34)
      {
        v24 = v11;
      }

      else
      {
        v24 = v25;
      }
    }
  }

  v36 = *v24;
  v51 = *(v24 + 1);
  v37 = *v6;
  v24[2] = v6[2];
  *v24 = v37;
  *v6 = v36;
  *(v6 + 1) = v51;
  v38 = *v4;
  v50 = *(v4 + 1);
  v39 = a3 - a2;
  if (a3 > a2)
  {
    v40 = (a1 + 24 * a2 + 32);
    do
    {
      v41 = *(v40 - 1);
      v49 = v50;
      v50 = *v40;
      if (v38 <= v36)
      {
        v42 = (a1 + 24 * a2);
        v43 = *v42;
        *(v40 - 2) = *(v42 + 2);
        *(v40 - 2) = v43;
        *v42 = v38;
        *(v42 + 8) = v49;
        ++a2;
      }

      v40 = (v40 + 24);
      v38 = v41;
      --v39;
    }

    while (v39);
  }

  v44 = (a1 + 24 * a2);
  v45 = *(v44 + 2);
  v46 = *v44;
  v47 = v6[2];
  *v44 = *v6;
  *(v44 + 2) = v47;
  *v6 = v46;
  v6[2] = v45;
  return a2;
}

uint64_t ___qsort_offset_triple_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void _qsort_big_offset_triple(void *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v37 = *(a1 + 6);
  v38 = *a1;
  v6 = *(a1 + 14);
  v36 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations_4560, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v8 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v10 = getSize_memSize_4562;
      if (!getSize_memSize_4562)
      {
        v42 = 0u;
        v43 = 0u;
        *host_info_out = 0u;
        v11 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v12 = host_info(v11, 1, host_info_out, &host_info_outCnt);
        if (v12)
        {
          mach_error("flushsize", v12);
          exit(1);
        }

        v10 = *(&v43 + 1);
        getSize_memSize_4562 = *(&v43 + 1);
      }

      v13 = 3 * v10;
      v14 = (v13 * 0xCCCCCCCCCCCCCCCDLL) >> 64;
      v15 = v3;
      if (24 * v8 > v13 / 5)
      {
        v15 = dispatch_group_create();
      }

      if (v8 <= v37 || 24 * v8 >= v14 >> 2)
      {
        v18 = _partition_offset_triple(v38, v1, v2);
      }

      else
      {
        v16 = qos_class_self();
        global_queue = dispatch_get_global_queue(v16, 2uLL);
        v18 = _big_partition_offset_triple(v38, v1, v2, global_queue, v6);
      }

      v19 = v18;
      v20 = v18 - v1;
      if (v18 < v1)
      {
        v32 = __si_assert_copy_extra(0);
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1311, "q>=left", v34);
        free(v33);
        if (__valid_fs(-1))
        {
          v35 = 2989;
        }

        else
        {
          v35 = 3072;
        }

        *v35 = -559038737;
        abort();
      }

      v21 = OSAtomicDequeue(&qsort_cached_allocations_4560, 0);
      if (!v21)
      {
        v21 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v21 + 4) = i;
      *(v21 + 5) = v5;
      *(v21 + 6) = v37;
      v22 = v2 - v19;
      if (v20 <= v2 - v19)
      {
        v23 = v19 - 1;
      }

      else
      {
        v22 = v19 - 1 - v1;
        v23 = v2;
      }

      if (v20 > v2 - v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = v1;
      }

      if (v20 > v2 - v19)
      {
        v2 = v19 - 1;
      }

      else
      {
        v1 = v19;
      }

      *v21 = v38;
      *(v21 + 1) = v24;
      v25 = (((v22 + 1) / (v23 - v24 + 1)) * v6);
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      if (v6 >= v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v21[14] = v6 - v27;
      v21[15] = v36;
      *(v21 + 2) = v23;
      *(v21 + 3) = v15;
      if (v15 == v3)
      {
        if (v6 >= v25)
        {
          v6 = v26;
        }

        v30 = qos_class_self();
        v31 = dispatch_get_global_queue(v30, 2uLL);
        dispatch_group_async_f(v15, v31, v21, _qsort_big_offset_triple);
      }

      else
      {
        v21[14] = v6;
        _qsort_big_offset_triple(v21);
        dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v15);
        v28 = qos_class_self();
        v29 = dispatch_get_global_queue(v28, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___qsort_big_offset_triple_block_invoke;
        block[3] = &__block_descriptor_tmp_62;
        block[4] = v21;
        dispatch_async(v29, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_offset_triple(v38, v1, v2);
  }
}

uint64_t _big_partition_offset_triple(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v7 = a3 - a2;
  v8 = a3 - a2 + 1;
  v9 = (a1 + 24 * a2);
  v10 = &v9[3 * ((v8 + (v8 >> 63)) >> 1)];
  v11 = (a1 + 24 * a3);
  if (v7 < 64)
  {
    v28 = &v9[3 * ((v8 + (v8 >> 63)) >> 1)];
    v16 = v9;
  }

  else
  {
    v12 = v8 >> 3;
    v13 = &v9[3 * (v8 >> 3)];
    v14 = *v9;
    v15 = *v13;
    v16 = v9;
    if (*v9 != *v13)
    {
      v16 = &v9[6 * v12];
      v17 = *v16;
      if (*v16 != v14 && v17 != v15)
      {
        if (v14 >= v17)
        {
          v19 = &v9[6 * v12];
        }

        else
        {
          v19 = v9;
        }

        if (v15 > v17)
        {
          v19 = &v9[3 * (v8 >> 3)];
        }

        if (v14 >= v17)
        {
          v16 = v9;
        }

        if (v15 < v17)
        {
          v16 = &v9[3 * (v8 >> 3)];
        }

        if (v14 >= v15)
        {
          v16 = v19;
        }
      }
    }

    v20 = 2 * v12;
    v21 = -v12;
    v22 = &v10[-3 * v12];
    v23 = *v22;
    v24 = *v10;
    if (*v22 == *v10)
    {
      v28 = &v10[-3 * v12];
    }

    else
    {
      v25 = &v10[3 * v12];
      v26 = *v25;
      v27 = *v25 == v23 || v26 == v24;
      v28 = &v10[3 * v12];
      if (!v27)
      {
        v28 = &v9[3 * ((v8 + (v8 >> 63)) >> 1)];
        if (v23 >= v24)
        {
          if (v24 <= v26)
          {
            if (v23 >= v26)
            {
              v28 = v25;
            }

            else
            {
              v28 = v22;
            }
          }
        }

        else if (v24 >= v26)
        {
          if (v23 >= v26)
          {
            v28 = v22;
          }

          else
          {
            v28 = v25;
          }
        }
      }
    }

    v29 = &v11[-3 * v20];
    v30 = &v11[3 * v21];
    v31 = *v29;
    v32 = *v30;
    if (*v29 == *v30)
    {
      v11 = v29;
    }

    else
    {
      v33 = *v11;
      if (v31 >= *v11)
      {
        v34 = v11;
      }

      else
      {
        v34 = v29;
      }

      if (v32 > v33)
      {
        v34 = v30;
      }

      if (v31 < v33)
      {
        v29 = v11;
      }

      if (v32 >= v33)
      {
        v30 = v29;
      }

      if (v31 >= v32)
      {
        v30 = v34;
      }

      if (v33 != v31 && v33 != v32)
      {
        v11 = v30;
      }
    }
  }

  v36 = *v16;
  v37 = *v28;
  if (*v16 == *v28)
  {
    v28 = v16;
  }

  else
  {
    v38 = *v11;
    if (*v11 == v36 || v38 == v37)
    {
      v28 = v11;
    }

    else if (v36 >= v37)
    {
      if (v37 <= v38)
      {
        if (v36 >= v38)
        {
          v28 = v11;
        }

        else
        {
          v28 = v16;
        }
      }
    }

    else if (v37 >= v38)
    {
      if (v36 >= v38)
      {
        v28 = v16;
      }

      else
      {
        v28 = v11;
      }
    }
  }

  return parallel_partition_offset_triple(v9, v8, *v28, a4, a5) + a2;
}

void ___qsort_big_offset_triple_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 24 * *(*(a1 + 32) + 8)), 24 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations_4560, v2, 0);
}

uint64_t parallel_partition_offset_triple(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v5 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v10 = 8 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - v11;
  bzero(v18 - v11, v10);
  v13 = (a2 / 0x4000) << 13;
  context[1] = v13;
  context[2] = a2;
  context[4] = 0;
  context[5] = 0;
  v14 = a2 - v13;
  context[7] = a3;
  context[8] = v12;
  if (v5 >= 1)
  {
    memset(v12, 255, v10);
  }

  v15 = v13 + 0x2000;
  if (v14 > v13 + 0x2000)
  {
    v15 = a2 - ((a2 / 0x4000) << 13);
  }

  context[3] = v14 + ((v15 - v14 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (24 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 24 * a2, 3);
  }

  if (a2 / 0x4000 < v5)
  {
    v5 = a2 / 0x4000;
  }

  dispatch_apply_f(v5, a4, context, partition_phase_offset_triple);
  result = sequential_fixup_offset_triple(context, a2, v5);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sequential_fixup_offset_triple(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp_4567);
  v53 = 0;
  v54 = 0;
  v7 = *(a1 + 64);
  v8 = a3 - 1;
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_91;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
LABEL_91:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
  }

  while (v9 < v8)
  {
    v10 = neutralize_offset_triple(*(a1 + 48) + 24 * *(v7 + 8 * v9), *(a1 + 48) + 24 * *(v7 + 8 * v8), *(a1 + 56), &v53, &v54);
    v7 = *(a1 + 64);
    if ((v10 & 1) == 0)
    {
      v11 = *(v7 + 8 * v9);
      if ((v11 & 0x8000000000000000) == 0 && v11 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      ++v9;
      v53 = 0;
      if ((v10 - 1) > 1)
      {
        continue;
      }
    }

    v12 = *(v7 + 8 * v8);
    v13 = v12 >= a2 || v12 < a2 - *(a1 + 40);
    if (!v13)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    --v8;
    v54 = 0;
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = malloc_type_malloc(0x30000uLL, 0x1000040504FFAC1uLL);
  if (a3 < 1)
  {
    v34 = *a1;
    v33 = *(a1 + 16) - 1;
  }

  else
  {
    v17 = 0;
    v18 = ~v14 + a2;
    v19 = a3;
    v20 = *(a1 + 64);
    v21 = 8 * a3;
    do
    {
      v22 = v20[v17];
      if (v22 != -1 && v18 <= v22)
      {
        break;
      }

      if (v22 != -1)
      {
        if (v15 <= v22)
        {
          break;
        }

        v24 = *(a1 + 32);
        if (v24 > v22)
        {
          v25 = 0;
          do
          {
            if (v20[v25 / 8] == v24)
            {
              v24 += 0x2000;
              *(a1 + 32) = v24;
            }

            v25 += 8;
          }

          while (v21 != v25);
          if (v24 >= *a1)
          {
            break;
          }

          memcpy(v16, (*(a1 + 48) + 24 * v20[v17]), 0x30000uLL);
          memcpy((*(a1 + 48) + 24 * *(*(a1 + 64) + 8 * v17)), (*(a1 + 48) + 24 * *(a1 + 32)), 0x30000uLL);
          memcpy((*(a1 + 48) + 24 * *(a1 + 32)), v16, 0x30000uLL);
          v26 = *(a1 + 32);
          v20 = *(a1 + 64);
          v20[v17] = v26;
          *(a1 + 32) = v26 + 0x2000;
        }
      }

      ++v17;
    }

    while (v17 != v19);
    v27 = v19;
    do
    {
      v28 = v27 - 1;
      v29 = v20[v27 - 1];
      if (v15 > v29)
      {
        break;
      }

      if (v29 != -1)
      {
        if (v18 > v29)
        {
          break;
        }

        v30 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v30;
        v31 = v19 - 1;
        do
        {
          if (v20[v31] == a2 - v30)
          {
            v30 += 0x2000;
            *(a1 + 40) = v30;
          }

          v32 = v31-- + 1;
        }

        while (v32 > 1);
        if ((a2 - v30) < *(a1 + 16))
        {
          break;
        }

        memcpy(v16, (*(a1 + 48) + 24 * v20[v28]), 0x30000uLL);
        memcpy((*(a1 + 48) + 24 * *(*(a1 + 64) + 8 * v28)), (*(a1 + 48) + 24 * (a2 - *(a1 + 40))), 0x30000uLL);
        memcpy((*(a1 + 48) + 24 * (a2 - *(a1 + 40))), v16, 0x30000uLL);
        v20 = *(a1 + 64);
        v20[v28] = a2 - *(a1 + 40);
      }

      v13 = v27-- <= 1;
    }

    while (!v13);
    v33 = *(a1 + 16) - 1;
    v34 = *a1;
    do
    {
      v36 = *v20++;
      v35 = v36;
      if (v36 != -1)
      {
        if (v35 < v34)
        {
          v34 = v35;
        }

        v37 = v35 + 0x2000;
        v38 = v35 + 0x1FFF;
        if (v37 > v33)
        {
          v33 = v38;
        }

        if (v33 >= a2)
        {
          v49 = __si_assert_copy_extra(0);
          v50 = v49;
          v51 = "";
          if (v49)
          {
            v51 = v49;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1311, "right < count", v51);
          free(v50);
          if (__valid_fs(-1))
          {
            v52 = 2989;
          }

          else
          {
            v52 = 3072;
          }

          *v52 = -559038737;
          abort();
        }
      }

      --v19;
    }

    while (v19);
  }

  free(v16);
  if (v34 >= v33)
  {
    v39 = v34;
  }

  else
  {
    v39 = v34;
    do
    {
      v41 = *(a1 + 48);
      v40 = *(a1 + 56);
      v42 = (v41 + 24 * v34);
      while (*v42 < v40)
      {
        ++v39;
        v42 += 3;
        if (v39 >= v33)
        {
          if (v33 <= v34 + 1)
          {
            v39 = v34 + 1;
          }

          else
          {
            v39 = v33;
          }

          goto LABEL_80;
        }
      }

      if (v39 < v33)
      {
        v43 = (v41 + 24 * v33);
        while (*v43 > v40)
        {
          --v33;
          v43 -= 3;
          if (v39 >= v33)
          {
            goto LABEL_80;
          }
        }

        v44 = v43[2];
        v45 = *v43;
        v46 = v42[2];
        *v43 = *v42;
        v43[2] = v46;
        v47 = *(a1 + 48) + 24 * v39;
        *v47 = v45;
        *(v47 + 16) = v44;
        ++v39;
        --v33;
      }

      v34 = v39;
    }

    while (v39 < v33);
  }

LABEL_80:
  if (*(*(a1 + 48) + 24 * v39) >= *(a1 + 56))
  {
    return v39;
  }

  else
  {
    return v39 + 1;
  }
}

uint64_t neutralize_offset_triple(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = *a5;
  while (1)
  {
    if (v5 < 0x2000)
    {
      v7 = (a1 + 24 * v5);
      while (1)
      {
        v8 = *v7;
        v7 += 3;
        if (v8 > a3)
        {
          break;
        }

        if (++v5 == 0x2000)
        {
          v9 = 0x2000;
          goto LABEL_8;
        }
      }
    }

    v9 = v5;
LABEL_8:
    if (v6 < 0x2000)
    {
      v10 = (a2 + 24 * v6);
      while (1)
      {
        v11 = *v10;
        v10 += 3;
        if (v11 < a3)
        {
          break;
        }

        if (++v6 == 0x2000)
        {
          v5 = v9;
          goto LABEL_17;
        }
      }
    }

    v12 = v6;
    if (v9 == 0x2000 || v6 == 0x2000)
    {
      break;
    }

    v13 = (a2 + 24 * v6);
    v14 = *(v13 + 2);
    v15 = *v13;
    v16 = (a1 + 24 * v9);
    v17 = *(v16 + 2);
    *v13 = *v16;
    *(v13 + 2) = v17;
    *v16 = v15;
    *(v16 + 2) = v14;
    v5 = v9 + 1;
    v6 = v12 + 1;
    if (v9 > 8190 || v12 >= 0x1FFF)
    {
      goto LABEL_17;
    }
  }

  v5 = v9;
LABEL_17:
  *a4 = v5;
  *a5 = v6;
  if (v6 == 0x2000 && v5 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v5 != 0x2000;
  }
}

uint64_t index_comp_4567(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

int64_t partition_phase_offset_triple(OSAtomic_int64_aligned64_t *a1, uint64_t a2)
{
  v4 = a1[6];
  Left_Block_offset_triple = Get_Left_Block_offset_triple(a1);
  Right_Block_offset_triple = Get_Right_Block_offset_triple(a1);
  v14 = 0;
  v15 = 0;
  if (Right_Block_offset_triple == -1 || Left_Block_offset_triple == -1)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = neutralize_offset_triple(v4 + 24 * Left_Block_offset_triple, v4 + 24 * Right_Block_offset_triple, a1[7], &v15, &v14);
      if ((v9 & 1) == 0)
      {
        v10 = v9;
        Left_Block_offset_triple = Get_Left_Block_offset_triple(a1);
        v15 = 0;
        ++v8;
        if ((v10 - 1) > 1)
        {
          continue;
        }
      }

      Right_Block_offset_triple = Get_Right_Block_offset_triple(a1);
      v14 = 0;
      ++v7;
    }

    while (Right_Block_offset_triple != -1 && Left_Block_offset_triple != -1);
    v11 = v8 << 13;
    v12 = v7 << 13;
  }

  if (Left_Block_offset_triple == -1)
  {
    Left_Block_offset_triple = Right_Block_offset_triple;
  }

  *(a1[8] + 8 * a2) = Left_Block_offset_triple;
  OSAtomicAdd64(v11, a1 + 4);

  return OSAtomicAdd64(v12, a1 + 5);
}

int64_t Get_Left_Block_offset_triple(OSAtomic_int64_aligned64_t *__theValue)
{
  if (*__theValue >= __theValue[1])
  {
    return -1;
  }

  v2 = OSAtomicAdd64(0x2000, __theValue);
  if (v2 <= __theValue[1])
  {
    return v2 - 0x2000;
  }

  OSAtomicAdd64(-8192, __theValue);
  return -1;
}

int64_t Get_Right_Block_offset_triple(uint64_t a1)
{
  v1 = (a1 + 16);
  if (*(a1 + 16) > *(a1 + 24))
  {
    result = OSAtomicAdd64(-8192, v1);
    if (result >= *(a1 + 24))
    {
      return result;
    }

    OSAtomicAdd64(0x2000, v1);
  }

  return -1;
}

void pqinit_offset_ptr(uint64_t a1)
{
  *(a1 + 8) = xmmword_1C2BFA370;
  v2 = malloc_type_zone_malloc(queryZone, 0x220uLL, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *a1 = v2;
  *v2 = 0;
  v2[1] = 0;
}

void _directoryStoreGetFileListOffsets(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, int a4, unint64_t *a5, uint64_t a6, int a7, unint64_t a8, __n128 a9, __n128 a10, uint64_t a11)
{
  v124 = 0;
  DirectoryWithPath = directoryStoreReaderGetDirectoryWithPath(a1, a2, a4 - 1, a5, a9, a10);
  if (!DirectoryWithPath)
  {
    return;
  }

  v18 = DirectoryWithPath[1];
  if ((v18 & 0x8000000000000000) == 0)
  {
    if (!v18)
    {
      return;
    }

    if (a7)
    {
      ptr = 0;
      v122 = 0;
      v123 = 0;
      v19 = *DirectoryWithPath;
      pqinit_offset_ptr(&ptr);
      v21 = v123;
      v22 = ptr;
      if ((v123 + 2) >= v122)
      {
        v23 = 4;
        if (v122 >= 4)
        {
          v23 = 2 * v122;
        }

        v122 = v23;
        v24 = 16 * v23;
        if (ptr)
        {
          v25 = malloc_type_zone_realloc(queryZone, ptr, v24 + 32, 0xA1A7ADA0uLL);
        }

        else
        {
          v25 = malloc_type_zone_malloc(queryZone, v24 + 32, 0x566E289CuLL);
        }

        v22 = v25;
        if (!v25)
        {
          _log_fault_for_malloc_failure();
        }

        ptr = v22;
        *v22 = 0;
        v22[1] = 0;
      }

      v38 = v21 + 1;
      v123 = v21 + 1;
      v39 = &v22[2 * v21];
      *v39 = v18;
      v39[1] = v19;
      if (v21 >= 2)
      {
        do
        {
          v40 = &v22[2 * v21];
          v41 = &v22[2 * (v21 >> 1)];
          if ((v40->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL) > (v41->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL))
          {
            break;
          }

          v125 = *v40;
          *v40 = *v41;
          *v41 = v125;
          v42 = v21 > 3;
          v21 >>= 1;
        }

        while (v42);
        v38 = v123;
      }

      v43 = xmmword_1C2BFA360;
      while (1)
      {
        v44 = v38 - 1;
        if (v38 == 1)
        {
          v45 = 0;
          v46 = 0;
          v48 = ptr;
          v47 = v122;
          v44 = 1;
          goto LABEL_65;
        }

        v48 = ptr;
        v47 = v122;
        v45 = *(ptr + 2);
        v46 = *(ptr + 3);
        v43 = *(ptr + v38 - 1);
        v49 = v122 >> 1;
        v50 = *(ptr + 2 * v38 - 2);
        *(ptr + 1) = v43;
        v123 = v38 - 1;
        v51 = v50 & 0x3FFFFFFFFFFFFFFFLL;
        v52 = 1;
        v53 = 2;
        v54 = 3;
        while (1)
        {
          v55 = *&v48[2 * v53];
          if (v54 >= v38)
          {
            v20 = xmmword_1C2BFA360;
            if (v53 >= v38)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v20 = *&v48[2 * v54];
          }

          v56 = v55.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
          v57 = v20.n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL;
          if ((v55.i64[0] & 0x3FFFFFFFFFFFFFFFuLL) < v51)
          {
            _CF = v57 >= v56;
            v59 = v57 < v56;
            if (_CF)
            {
              v54 = v53;
            }

            v60 = vdup_n_s32(v59);
            v61.i64[0] = v60.u32[0];
            v61.i64[1] = v60.u32[1];
            v20 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v61, 0x3FuLL)), v20, v55);
            goto LABEL_57;
          }

          if (v57 >= v51)
          {
            break;
          }

LABEL_57:
          _X13 = &v48[4 * v54];
          __asm { PRFM            #1, [X13] }

          if (v54 != v52)
          {
            v53 = 2 * v54;
            *&v48[2 * v54] = v43;
            *&v48[2 * v52] = v20;
            v52 = v54;
            v42 = v54 < v49;
            v54 = (2 * v54) | 1;
            if (v42)
            {
              continue;
            }
          }

          goto LABEL_64;
        }

        _X8 = &v48[4 * v52];
        __asm { PRFM            #1, [X8] }

LABEL_64:
        if (v45 >= 0x4000000000000000)
        {
          Page = _directoryStoreReaderGetPage(a1, v45, &v124, v43, v20);
          Size = directoryStorePageGetSize(Page);
          if (Size)
          {
            v85 = Size;
            v86 = 0;
            v87 = 0;
            v88 = Page + 4;
            do
            {
              v89 = &v88[8 * v86];
              v90 = *v89;
              if (*v89 >= 2 && (!a3 || (Child = negativeFindChild(a3 + 440, *v89, &v125)) == 0 || *(Child + 8) != v46))
              {
                v92 = v89[1];
                if (v92 < 0)
                {
                  v95 = v92 & 0x7FFFFFFFFFFFFFFFLL;
                  if ((v92 & 0x7FFFFFFFFFFFFFFFuLL) < a8)
                  {
                    if (!a11 || HIDWORD(v95))
                    {
LABEL_134:
                      v110 = __si_assert_copy_extra(0);
                      v111 = v110;
                      v112 = "";
                      if (v110)
                      {
                        v112 = v110;
                      }

                      __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx", "FileTree.c", 1723, "postingOffset", v112, v92, a8);
                      goto LABEL_137;
                    }

                    v95 |= a11;
                  }

                  if (!v95)
                  {
                    goto LABEL_134;
                  }

                  oqpush_4581(a6, v95, v84);
                }

                else if (v92)
                {
                  if ((v44 + 2) >= v47)
                  {
                    if (v47 >= 4)
                    {
                      v47 *= 2;
                    }

                    else
                    {
                      v47 = 4;
                    }

                    v93 = 16 * v47;
                    if (v48)
                    {
                      v94 = malloc_type_zone_realloc(queryZone, v48, v93 + 32, 0xA1A7ADA0uLL);
                    }

                    else
                    {
                      v94 = malloc_type_zone_malloc(queryZone, v93 + 32, 0x566E289CuLL);
                    }

                    v48 = v94;
                    if (!v94)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    *v48 = 0;
                    v48[1] = 0;
                  }

                  v96 = v44 + 1;
                  v97 = &v48[2 * v44];
                  *v97 = v92;
                  v97[1] = v90;
                  if (v44 >= 2)
                  {
                    do
                    {
                      v98 = &v48[2 * v44];
                      v99 = &v48[2 * (v44 >> 1)];
                      if ((v98->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL) > (v99->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL))
                      {
                        break;
                      }

                      v125 = *v98;
                      *v98 = *v99;
                      v43 = v125;
                      *v99 = v125;
                      v42 = v44 > 3;
                      v44 >>= 1;
                    }

                    while (v42);
                  }

                  v44 = v96;
                }
              }

              v86 = ++v87;
            }

            while (v85 > v87);
          }
        }

        else
        {
LABEL_65:
          v69 = _directoryStoreReaderGetPage(a1, v45, &v124, v43, v20);
          v70 = directoryTreePageGetSize(*v69, *(v69 + 2));
          if (v70)
          {
            v71 = v70;
            v72 = 0;
            v73 = 0;
            v74 = v69 + 4;
            while (1)
            {
              v75 = *&v74[4 * v72];
              if (v75 < 0)
              {
                break;
              }

              if (v75)
              {
                if ((v44 + 2) >= v47)
                {
                  if (v47 >= 4)
                  {
                    v47 *= 2;
                  }

                  else
                  {
                    v47 = 4;
                  }

                  v76 = 16 * v47;
                  if (v48)
                  {
                    v77 = malloc_type_zone_realloc(queryZone, v48, v76 + 32, 0xA1A7ADA0uLL);
                  }

                  else
                  {
                    v77 = malloc_type_zone_malloc(queryZone, v76 + 32, 0x566E289CuLL);
                  }

                  v48 = v77;
                  if (!v77)
                  {
                    _log_fault_for_malloc_failure();
                  }

                  *v48 = 0;
                  v48[1] = 0;
                }

                v78 = v44 + 1;
                v79 = &v48[2 * v44];
                *v79 = v75;
                v79[1] = v46;
                if (v44 >= 2)
                {
                  do
                  {
                    v80 = &v48[2 * v44];
                    v81 = &v48[2 * (v44 >> 1)];
                    if ((v80->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL) > (v81->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL))
                    {
                      break;
                    }

                    v125 = *v80;
                    *v80 = *v81;
                    v43 = v125;
                    *v81 = v125;
                    v42 = v44 > 3;
                    v44 >>= 1;
                  }

                  while (v42);
                }

                v44 = v78;
              }

              v72 = ++v73;
              if (v71 <= v73)
              {
                goto LABEL_114;
              }
            }

            v100 = __si_assert_copy_extra(0);
            v101 = v100;
            v102 = "";
            if (v100)
            {
              v102 = v100;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1742, "!(offset & (1ull << 63))", v102);
LABEL_120:
            v32 = v101;
LABEL_121:
            free(v32);
            if (__valid_fs(-1))
            {
              v103 = 2989;
            }

            else
            {
              v103 = 3072;
            }

            *v103 = -559038737;
            abort();
          }
        }

LABEL_114:
        v122 = v47;
        v123 = v44;
        v38 = v44;
        ptr = v48;
        if (v44 == 1)
        {
          free(v48);
          return;
        }
      }
    }

    if (!(v18 >> 62))
    {
      ItemOffset = directoryStoreReaderTreeFindItemOffset(a1, v18, *a5, 0, v16, v17);
      if (!ItemOffset)
      {
        return;
      }

      v28 = *(ItemOffset + 1);
      if ((v28 & 0x8000000000000000) == 0)
      {
        v104 = __si_assert_copy_extra(0);
        v101 = v104;
        v105 = "";
        if (v104)
        {
          v105 = v104;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1772, "(offset & (1ull << 63))", v105);
        goto LABEL_120;
      }

      v26 = v28 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v28 & 0x7FFFFFFFFFFFFFFFuLL) < a8)
      {
        if (!a11 || HIDWORD(v26))
        {
          goto LABEL_26;
        }

        v26 |= a11;
      }

      if (!v26)
      {
LABEL_26:
        v29 = __si_assert_copy_extra(0);
        v30 = v29;
        v31 = "";
        if (v29)
        {
          v31 = v29;
        }

        __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx", "FileTree.c", 1774, "postingOffset", v31, v28, a8);
        v32 = v30;
        goto LABEL_121;
      }

      goto LABEL_15;
    }

    v33 = _directoryStoreReaderGetPage(a1, v18, &v124, v16, v17);
    if (!v33)
    {
      return;
    }

    LODWORD(ptr) = 0;
    v34 = directoryStorePageFindItemOffset(*(*a1 + 216), v33, *a5, &ptr, 0);
    if (!v34)
    {
      return;
    }

    v36 = v34[1];
    if ((v36 & 0x8000000000000000) == 0)
    {
      v106 = __si_assert_copy_extra(0);
      v107 = v106;
      v108 = "";
      if (v106)
      {
        v108 = v106;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1761, "(offset & (1ull << 63))", v108);
      free(v107);
      if (__valid_fs(-1))
      {
        v109 = 2989;
      }

      else
      {
        v109 = 3072;
      }

      *v109 = -559038737;
      abort();
    }

    v37 = v36 & 0x7FFFFFFFFFFFFFFFLL;
    if ((v36 & 0x7FFFFFFFFFFFFFFFuLL) < a8)
    {
      if (!a11 || HIDWORD(v37))
      {
LABEL_144:
        v116 = __si_assert_copy_extra(0);
        v111 = v116;
        v117 = "";
        if (v116)
        {
          v117 = v116;
        }

        __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx", "FileTree.c", 1763, "postingOffset", v117, v36, a8);
        goto LABEL_137;
      }

      v37 |= a11;
    }

    if (v37)
    {
      oqpush_4581(a6, v37, v35);
      return;
    }

    goto LABEL_144;
  }

  v26 = v18 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v18 & 0x7FFFFFFFFFFFFFFFLL) < a8)
  {
    if (!a11 || HIDWORD(v26))
    {
      goto LABEL_141;
    }

    v26 |= a11;
  }

  if (!v26)
  {
LABEL_141:
    v114 = __si_assert_copy_extra(0);
    v111 = v114;
    v115 = "";
    if (v114)
    {
      v115 = v114;
    }

    __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx", "FileTree.c", 1700, "postingOffset", v115, v18, a8);
LABEL_137:
    free(v111);
    if (__valid_fs(-1))
    {
      v113 = 2989;
    }

    else
    {
      v113 = 3072;
    }

    *v113 = -559038737;
    abort();
  }

LABEL_15:

  oqpush_4581(a6, v26, v15);
}

uint64_t directoryStoreReaderGetDirectoryWithPath(uint64_t *a1, unsigned __int16 *Page, int a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (a3 != -1)
  {
    v17 = v6;
    v18 = v7;
    v16 = 0;
    v8 = *(Page + 1);
    if (v8 < 1)
    {
      return 0;
    }

    else
    {
      Page = _directoryStoreReaderGetPage(a1, *(Page + 1), &v16, a5, a6);
      if (Page)
      {
        if (v16)
        {
          ItemOffset = directoryStorePageFindItemOffset(*(*a1 + 216), Page, *(a4 + 8 * a3), 0, 0);
        }

        else
        {
          ItemOffset = directoryStoreReaderTreeFindItemOffset(a1, v8, *(a4 + 8 * a3), 0, v12, v13);
        }

        Page = ItemOffset;
        if (ItemOffset)
        {
          return directoryStoreReaderGetDirectoryWithPath(a1, ItemOffset, (a3 - 1), a4);
        }
      }
    }
  }

  return Page;
}

void oqpush_4581(uint64_t a1, uint64_t a2, size_t size)
{
  if (*a1 == 1)
  {
    v17 = __si_assert_copy_extra(0);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 332, "!oqueue->has_meta", v19);
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

  if (*(a1 + 56))
  {
    if (*(a1 + 64) < (a2 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v21 = __si_assert_copy_extra(0);
      v7 = v21;
      v8 = "";
      if (v21)
      {
        v8 = v21;
      }

      v9 = "!queue->split || queue->splitPoint >= offset_t_GET_VALUE(value)";
LABEL_25:
      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, v9, v8);
      free(v7);
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

    v5 = *(a1 + 32);
    if (v5 >= *(a1 + 24))
    {
      v6 = __si_assert_copy_extra(0);
      v7 = v6;
      v8 = "";
      if (v6)
      {
        v8 = v6;
      }

      v9 = "!queue->split";
      goto LABEL_25;
    }
  }

  else
  {
    v10 = *(a1 + 24);
    v5 = *(a1 + 32);
    if (v5 >= v10)
    {
      v11 = 2 * v10;
      if (!v10)
      {
        v11 = 4;
      }

      *(a1 + 24) = v11;
      v12 = *(a1 + 16);
      v13 = 8 * v11;
      if (v12)
      {
        v14 = malloc_type_zone_realloc(queryZone, v12, v13, 0xA1A7ADA0uLL);
      }

      else
      {
        v14 = malloc_type_zone_malloc(queryZone, v13, 0x566E289CuLL);
      }

      v15 = v14;
      if (!v14)
      {
        _log_fault_for_malloc_failure();
      }

      *(a1 + 16) = v15;
      v5 = *(a1 + 32);
    }
  }

  v16 = *(a1 + 16);
  *(a1 + 32) = v5 + 1;
  *(v16 + 8 * v5) = a2;
}

unsigned __int16 *_directoryStoreReaderGetPage(uint64_t *a1, unint64_t a2, BOOL *a3, __n128 a4, __n128 a5)
{
  *a3 = a2 >> 62 == 1;
  v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  v7 = *a1;
  if ((a2 & 0x3FFFFFFFFFFFFFFFLL) >= *(v7 + 232))
  {
    return 0;
  }

  ptr = storage_reader_get_ptr(v7, a1[1], v6, 8, a4, a5);
  if (ptr == -1)
  {
    return 0;
  }

  result = storage_reader_get_ptr(*a1, a1[1], v6, 64 << *(ptr + 2), v9, v10);
  if (result + 1 < 2)
  {
    return 0;
  }

  if ((64 << *(result + 2)) - 8 < *result)
  {
    v12 = result;
    v13 = __si_assert_copy_extra(0);
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 254, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page) && storePageDataSize((StorePageRef)page)", v15, *v12, (64 << *(v12 + 2)) - 8);
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

  return result;
}

unsigned __int16 *directoryStorePageGetSize(unsigned __int16 *result)
{
  if (result)
  {
    v1 = *result;
    v2 = (64 << *(result + 2)) - 8;
    result = (v2 >> 4);
    if (result < v1 >> 4)
    {
      v3 = __si_assert_copy_extra(0);
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 293, "storePageEnd((StorePageRef)page)/sizeof(CIDirectory_t) <= storePageDataSize((StorePageRef)page)/sizeof(CIDirectory_t)", v5);
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

    if (((v2 / 16 + 1) ^ (v2 / 16)) <= v2 / 16)
    {
      v7 = __si_assert_copy_extra(0);
      v8 = v7;
      v9 = "";
      if (v7)
      {
        v9 = v7;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 295, "__builtin_popcount((storePageDataSize((StorePageRef)page))/((int)(sizeof(CIDirectory_t))) + 1) == 1", v9);
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
  }

  return result;
}

unint64_t directoryTreePageGetSize(unsigned __int16 a1, char a2)
{
  v2 = (64 << a2) - 8;
  if (v2 < a1)
  {
    v4 = __si_assert_copy_extra(0);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 310, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v6);
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

  if ((((v2 >> 3) + 1) ^ (v2 >> 3)) <= v2 >> 3)
  {
    v8 = __si_assert_copy_extra(0);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 314, "__builtin_popcount((storePageDataSize((StorePageRef)page))/((int)(sizeof(disk_offset_t))) + 1) == 1", v10);
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

  return v2 >> 3;
}

void *directoryStorePageFindItemOffset(_DWORD *a1, uint64_t a2, int64_t a3, unsigned int *a4, uint64_t a5)
{
  Size = directoryStorePageGetSize(a2);
  if (a5 == 1 && !*(a2 + 6))
  {
    v36 = __si_assert_copy_extra(a1);
    v30 = v36;
    v37 = "";
    if (v36)
    {
      v37 = v36;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected depth %d; page has %d", "FileTree.c", 960, "getNum16(page->depth)==(unsigned)depth", v37, 1, *(a2 + 6));
LABEL_43:
    free(v30);
    if (!__valid_fsp(a1))
    {
      v32 = 3072;
LABEL_46:
      *v32 = -559038737;
      abort();
    }

LABEL_44:
    v32 = 2989;
    goto LABEL_46;
  }

  if (*(a2 + 6) != a5)
  {
    v29 = __si_assert_copy_extra(a1);
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected depth %d; page has %d", "FileTree.c", 962, "getNum16(page->depth)==(unsigned)depth", v31, a5, *(a2 + 6));
    goto LABEL_43;
  }

  v41 = 0;
  Hash = getHash(a3, Size, *(a2 + 2), a5, 10, &v41);
  v10 = Hash;
  v11 = (8 * a5);
  if (*(a2 + 3))
  {
    v41 <<= 8 * a5;
  }

  v12 = a2 + 8;
  v13 = Hash;
  v14 = *(a2 + 8 + 16 * Hash);
  v15 = a4;
  if (!v14)
  {
LABEL_30:
    v20 = -1;
    goto LABEL_32;
  }

  v16 = 0;
  v17 = Size + 1;
  while (1)
  {
    v19 = v17-- != 0;
    v20 = -1;
    if (v14 == a3 || !v19)
    {
      goto LABEL_32;
    }

    if (v14 == 1)
    {
      v33 = __si_assert_copy_extra(0);
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 981, v35);
      free(v34);
      goto LABEL_44;
    }

    if (v15)
    {
      break;
    }

LABEL_26:
    v27 = v10 + 1;
    v16 |= Size <= v27;
    if (Size > v27)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = 0;
    }

    v10 = v13;
    v14 = *(v12 + 16 * v13);
    if (!v14)
    {
      goto LABEL_30;
    }
  }

  v40 = 0;
  v21 = a5;
  v22 = a5;
  v23 = v11;
  v24 = getHash(v14, Size, *(a2 + 2), v22, 10, &v40);
  v11 = v23;
  if (*(a2 + 3))
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = v40 << v25;
  if (v26 > v41)
  {
    v15 = a4;
    if ((v16 ^ (v24 <= v10)))
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v15 = a4;
  if (v14 <= a3 || v26 != v41 || ((v16 ^ (v24 <= v10)) & 1) == 0)
  {
LABEL_24:
    if ((v16 & (v24 <= v10)) == 1)
    {
      goto LABEL_31;
    }

    a5 = v21;
    goto LABEL_26;
  }

LABEL_31:
  v20 = v10;
LABEL_32:
  result = (v12 + 16 * v13);
  if (*result == a3)
  {
    if (!v15)
    {
      return result;
    }

LABEL_38:
    *v15 = v10;
  }

  else
  {
    result = 0;
    if (v15)
    {
      if (v20 != -1)
      {
        v10 = v20;
      }

      goto LABEL_38;
    }
  }

  return result;
}

unsigned __int16 *directoryStoreReaderTreeFindItemOffset(uint64_t *a1, int64_t a2, unint64_t a3, int a4, __n128 a5, __n128 a6)
{
  while (1)
  {
    v6 = a4;
    v7 = a3;
    v8 = a1;
    v21 = 0;
    result = _directoryStoreReaderGetPage(a1, a2, &v21, a5, a6);
    if (!result)
    {
      break;
    }

    if (v21)
    {
      v12 = __si_assert_copy_extra(0);
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 847, "!flat", v14);
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

    v10 = result;
    if (result[3] != v6)
    {
      v16 = __si_assert_copy_extra(0);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 849, "getNum16(page->depth)==(unsigned)pageDepth", v18);
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

    Size = directoryTreePageGetSize(*result, *(result + 2));
    a2 = *&v10[4 * getHash(v7, Size, 0, v6 + 1, 0, 0) + 4];
    if (!a2)
    {
      return 0;
    }

    if (a2 >= 0x4000000000000000)
    {
      result = _directoryStoreReaderGetPage(v8, a2, &v21, a5, a6);
      if (result)
      {
        return directoryStorePageFindItemOffset(*(*v8 + 216), result, v7, &v20, (v6 + 1));
      }

      return result;
    }

    a4 = v6 + 1;
    a1 = v8;
    a3 = v7;
  }

  return result;
}

uint64_t getHash(unint64_t a1, uint64_t a2, char a3, char a4, int a5, unint64_t *a6)
{
  if (!a2)
  {
    v17 = __si_assert_copy_extra(0);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 220, "pageSize", v19);
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

  v10 = a2;
  v11 = hash64(a1);
  if (a6)
  {
    *a6 = v11;
  }

  if (a5)
  {
    v12 = ~(-1 << a5);
  }

  else
  {
    v12 = v10;
  }

  v13 = v12 & (v11 >> -(a5 + 8 * a4));
  v14 = a5 - a3 - 2;
  if (!a5)
  {
    v14 = 0;
  }

  v15 = v13 >> v14;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  return v15 - 1;
}

unint64_t hash64(unint64_t result)
{
  v1 = 0;
  do
  {
    v2 = vaddvq_s64(vandq_s8(vdupq_n_s64(v1 | result), xmmword_1C2BFA410));
    v3 = (0x9E3779B97F4A7C13 - v2) ^ ((v2 - 8) << 9);
    v4 = (-v2 - v3 + 16) ^ (v3 >> 8);
    v5 = (v2 - 8 - v3 - v4) ^ (v4 >> 38);
    v6 = (v3 - v4 - v5) ^ (v5 << 23);
    v7 = (v4 - v5 - v6) ^ (v6 >> 5);
    v8 = (v5 - v6 - v7) ^ (v7 >> 35);
    v9 = (v6 - v7 - v8) ^ (v8 << 49);
    v10 = (v7 - v8 - v9) ^ (v9 >> 11);
    v11 = (v8 - v9 - v10) ^ (v10 >> 12);
    result = (v10 - v11 - ((v9 - v10 - v11) ^ (v11 << 18))) ^ (((v9 - v10 - v11) ^ (v11 << 18)) >> 22);
    ++v1;
  }

  while ((~(((result & 0x7F7F7F7F7F7F7F7FLL) + 0x7F7F7F7F7F7F7F7FLL) | result) & 0x8080808080808080) != 0);
  return result;
}

uint64_t directoryStoreValidate(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (*(result + 4400) && v2 >= 1)
    {
      v4 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      if ((v2 & 0x3FFFFFFFFFFFFFFFuLL) >= *(result + 232))
      {
        v5 = result;
        v6 = __si_assert_copy_extra(*(result + 216));
        v7 = v6;
        v8 = "";
        if (v6)
        {
          v8 = v6;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Expected offset (%llx) to be less than free region (%llx)", "FileTree.c", 1507, "CHILDLESS(offset) || MASKPAGE(offset) <storageGetCount(store)", v8, v4, *(v5 + 232));
        free(v7);
        if (__valid_fsp(*(v5 + 216)))
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
    }
  }

  return result;
}

unsigned __int16 *_directoryStoreGetPageInner(uint64_t a1, unint64_t a2, BOOL *a3)
{
  *a3 = a2 >> 62 == 1;
  v5 = storageResolvePtr(a1, a2 & 0x3FFFFFFFFFFFFFFFLL, 8, 1);
  result = storageResolvePtr(a1, a2 & 0x3FFFFFFFFFFFFFFFLL, 64 << *(v5 + 2), 1);
  v7 = result;
  if (result && (64 << *(result + 2)) - 8 < *result)
  {
    v8 = __si_assert_copy_extra(0);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 269, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v10, *v7, (64 << *(v7 + 2)) - 8);
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

  return result;
}

unsigned __int16 *directoryStoreGetDirectoryWithPath(unsigned __int16 *result, uint64_t a2, unint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = result;
  if (a4 == -1)
  {
    if (a7)
    {
      v17 = a3[1];
      if (v17)
      {
        *(a7 + 112) = 1603;
        *(a7 + 104) = v17;
        result = _directoryStoreGetPageInner(a2, v17, v33);
        if (*(v7 + 24) != result[3])
        {
          v23 = __si_assert_copy_extra(0);
          v24 = v23;
          v25 = "";
          if (v23)
          {
            v25 = v23;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1607, "refPage->pathDepth==getNum16(page->depth)", v25);
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
      }
    }

    *v10 = *a3;
    *(v10 + 2) = a3[2];
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    if (!a7)
    {
      v7 = v33;
    }

    v32 = 0;
    v14 = a3[1];
    v15 = *(*a3 + 8);
    if (v14)
    {
      result = _directoryStoreGetPageInner(a2, v14, &v32);
      *a3 = &result[8 * *(a3 + 4) + 4];
      v16 = result == 0;
    }

    else
    {
      v16 = 1;
    }

    v31 = 0;
    if (v15 <= 0)
    {
      if (a6)
      {
LABEL_25:
        v22 = *(a5 + 8 * a4);
        v28 = 0;
        memset(v27, 0, sizeof(v27));
        v29 = *a3;
        v30 = a3[2];
        insertDirectoryFT(v27, a2, &v29, v31, v22, v22, 0, &v28, v7);
        v19 = (a4 - 1);
        v21 = v27;
        return directoryStoreGetDirectoryWithPath(v10, a2, v21, v19, a5, a6, v7);
      }
    }

    else
    {
      PageInner = _directoryStoreGetPageInner(a2, v15, &v32);
      if (v32)
      {
        result = directoryStorePageFindItemOffset(*(a2 + 216), PageInner, *(a5 + 8 * a4), &v31, 0);
        if (result)
        {
          *(v7 + 14) = 0;
          v7[5] = 0u;
          v7[6] = 0u;
          v7[3] = 0u;
          v7[4] = 0u;
          v7[1] = 0u;
          v7[2] = 0u;
          *v7 = 0u;
          v19 = (a4 - 1);
          *&v29 = result;
          *(&v29 + 1) = v15;
          LODWORD(v30) = v31;
LABEL_21:
          HIDWORD(v30) = 0;
          v21 = &v29;
          return directoryStoreGetDirectoryWithPath(v10, a2, v21, v19, a5, a6, v7);
        }
      }

      else
      {
        result = directoryStoreTreeFindItemOffset(a2, v15, *(a5 + 8 * a4), v7, &v31, 0, a6);
        if (result)
        {
          v20 = *(v7 + 13);
          if (a4)
          {
            *(v7 + 14) = 0;
            v7[5] = 0u;
            v7[6] = 0u;
            v7[3] = 0u;
            v7[4] = 0u;
            v7[1] = 0u;
            v7[2] = 0u;
            *v7 = 0u;
          }

          v19 = (a4 - 1);
          *&v29 = result;
          *(&v29 + 1) = v20;
          LODWORD(v30) = v31;
          goto LABEL_21;
        }
      }

      if (a6)
      {
        if (!v16)
        {
          *a3 = &_directoryStoreGetPageInner(a2, a3[1], &v32)[8 * *(a3 + 4) + 4];
        }

        goto LABEL_25;
      }
    }

    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
  }

  return result;
}

unint64_t shiftEntriesForDelete(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if (a2 + 1 >= a3)
  {
LABEL_6:
    if (a2)
    {
      v15 = 0;
      v11 = a3 - 1;
      v8 = a1 + 8;
      v16 = (a1 + 8);
      while (1)
      {
        result = *v16;
        if (*v16 <= 1)
        {
          break;
        }

        v17 = v15;
        result = getHash(result, a3, *(a1 + 2), a4, 10, 0);
        v13 = (v8 + 16 * v11);
        if (v17 == result)
        {
          goto LABEL_22;
        }

        v18 = *v16;
        v16 += 2;
        *v13 = v18;
        v15 = v17 + 1;
        v11 = v17;
        if (a2 == v17 + 1)
        {
          goto LABEL_11;
        }
      }

      if (*v16 != 1)
      {
        goto LABEL_21;
      }

      v22 = __si_assert_copy_extra(0);
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1089, "!(page->items[i].fileId.storeOID==markerOid.storeOID)", v24);
      free(v23);
      if (!__valid_fs(-1))
      {
        v25 = 3072;
LABEL_28:
        *v25 = -559038737;
        abort();
      }
    }

    else
    {
LABEL_11:
      v19 = __si_assert_copy_extra(0);
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 1110, v21);
      free(v20);
    }

    v25 = 2989;
    goto LABEL_28;
  }

  v8 = a1 + 8;
  v9 = a3 - 1;
  v10 = (a1 + 16 * a2 + 24);
  v11 = a2;
  while (1)
  {
    result = *v10;
    if (*v10 <= 1)
    {
      break;
    }

    result = getHash(result, a3, *(a1 + 2), a4, 10, 0);
    v13 = v10 - 2;
    if (v11 + 1 == result)
    {
      goto LABEL_22;
    }

    v14 = *v10;
    v10 += 2;
    *v13 = v14;
    if (v9 == ++v11)
    {
      goto LABEL_6;
    }
  }

  if (*v10 == 1)
  {
    v26 = __si_assert_copy_extra(0);
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1058, "!(page->items[i].fileId.storeOID==markerOid.storeOID)", v28);
    free(v27);
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

LABEL_21:
  v13 = (v8 + 16 * v11);
LABEL_22:
  *v13 = 0;
  v13[1] = 0;
  return result;
}

void *directoryStoreTreeFindItemOffset(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int *a5, int a6, int a7)
{
  while (1)
  {
    v7 = a7;
    v8 = a6;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = a2;
    v13 = a1;
    v48 = 0;
    PageInner = _directoryStoreGetPageInner(a1, a2, &v48);
    if (v48)
    {
      v30 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_31;
    }

    v15 = PageInner;
    if (PageInner[3] != v8)
    {
      v32 = __si_assert_copy_extra(0);
      v33 = v32;
      v34 = "";
      if (v32)
      {
        v34 = v32;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 884, "getNum16(page->depth)==(unsigned)depth", v34);
      goto LABEL_39;
    }

    Size = directoryTreePageGetSize(*PageInner, *(PageInner + 2));
    if (v10)
    {
      if (v12 <= 0)
      {
        v35 = __si_assert_copy_extra(0);
        v33 = v35;
        v36 = "";
        if (v35)
        {
          v36 = v35;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 889, "!((pageOffset & (1ull << 63)) || pageOffset==0)", v36);
        goto LABEL_39;
      }

      *(v10 + 4 * *(v10 + 96) + 64) = 890;
      v17 = *(v10 + 96);
      *(v10 + 96) = v17 + 1;
      *(v10 + 8 * v17) = v12;
    }

    Hash = getHash(v11, Size, 0, v8 + 1, 0, 0);
    v19 = Hash;
    if (v7)
    {
      v20 = *&v15[4 * Hash + 4];
      v46 = v11;
      v47 = v20;
      v45 = 0;
      v44[1] = 0;
      v44[2] = 0;
      v44[0] = &v46;
      result = directoryStoreEnsurePage(v13, v44, 4 * (v20 == 0), v20 != 0, &v45, &v48, v8 + 1, v10);
      if (!result)
      {
        return result;
      }

      v22 = result;
      if (v45 == 1)
      {
        v23 = _directoryStoreGetPageInner(v13, v12, &v48);
        if (v48)
        {
          v38 = __si_assert_copy_extra(0);
          v33 = v38;
          v39 = "";
          if (v38)
          {
            v39 = v38;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 906, "flat==0", v39);
          goto LABEL_39;
        }

        *&v23[4 * v19 + 4] = v47;
        dirtyStoragePage(v13, v23);
      }

      if (v22 < 0x4000000000000000)
      {
        return directoryStoreTreeFindItemOffset(v13, v22, v11, v10, v9, (v8 + 1), 1);
      }

      v27 = _directoryStoreGetPageInner(v13, v22, &v48);
      v28 = v27;
      if (v10)
      {
        *(v10 + 104) = v22;
        *(v10 + 112) = 917;
      }

      v29 = *v27;
      if ((64 << *(v27 + 2)) - 8 >= v29)
      {
        if (5 * (v29 >> 4) + 5 < 4 * directoryStorePageGetSize(v27))
        {
          return directoryStorePageFindItemOffset(*(v13 + 216), v28, v11, v9, (v8 + 1));
        }

        v40 = __si_assert_copy_extra(0);
        v33 = v40;
        v41 = "";
        if (v40)
        {
          v41 = v40;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 920, "(directoryStorePageGetItemCount(subPage)+1) * 5 < (directoryStorePageGetSize(subPage)) * 4", v41);
LABEL_39:
        free(v33);
        if (__valid_fs(-1))
        {
          v37 = 2989;
        }

        else
        {
          v37 = 3072;
        }

        *v37 = -559038737;
        abort();
      }

      v30 = __si_assert_copy_extra(0);
      v42 = *v28;
      v43 = ((64 << *(v28 + 2)) - 8);
      __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d");
LABEL_31:
      free(v30);
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

    v24 = *&v15[4 * Hash + 4];
    if (!v24)
    {
      return 0;
    }

    if (v24 >= 0x4000000000000000)
    {
      break;
    }

    a6 = v8 + 1;
    a1 = v13;
    a2 = v24;
    a3 = v11;
    a4 = v10;
    a5 = v9;
    a7 = 0;
  }

  v25 = _directoryStoreGetPageInner(v13, v24, &v48);
  if (v10)
  {
    *(v10 + 104) = v24;
    *(v10 + 112) = 933;
  }

  v26 = *(v13 + 216);

  return directoryStorePageFindItemOffset(v26, v25, v11, v9, (v8 + 1));
}

unint64_t directoryStoreEnsurePage(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5, BOOL *a6, unsigned int a7, uint64_t a8)
{
  v109 = a7;
  v124 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v15 = *(v14 + 8);
  *a6 = 1;
  *a5 = 0;
  v16 = *(v14 + 8);
  if (v16 <= 0)
  {
    directoryStoreValidate(a1, v14);
    v22 = *(a2 + 8);
    if (v22)
    {
      PageInner = _directoryStoreGetPageInner(a1, v22, a6);
      v24 = &PageInner[8 * *(a2 + 16) + 4];
      *a2 = v24;
    }

    else
    {
      PageInner = 0;
      v24 = *a2;
    }

    *a5 = 1;
    if (a4)
    {
      v25 = (v16 >> 63) + 1;
    }

    else
    {
      v25 = a3;
    }

    v26 = *v24;
    v27 = v16 & (v16 >> 63) & 0x7FFFFFFFFFFFFFFFLL;
    if ((16 * v25) <= 0x4000)
    {
      if (a8)
      {
        *(a8 + 96) = v109;
      }

      v28 = 16 * v25;
      v29 = 64;
      do
      {
        v30 = v29;
        v29 *= 2;
      }

      while (v30 < v28);
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      v114 = 0u;
      v113 = 0u;
      v112 = 0u;
      v110 = 0;
      v31 = storageAllocOffset(a1, v30, &v112, &v110);
      if (v110)
      {
        dirtyStorageOffsets(a1, &v112, v110);
      }

      if (v31)
      {
        v32 = storageResolvePtr(a1, v31, v30, 1);
        bzero(v32, v30);
        *v32 = 0;
        v33 = __clz(__rbit32(v30 >> 6));
        if (!v30)
        {
          v33 = -1;
        }

        *(v32 + 2) = v33;
        v32[3] = v109;
        v32[2] = 668;
        *(v32 + 3) = 0;
        dirtyStoragePage(a1, v32);
      }

      v15 = v31 | 0x4000000000000000;
      if (!v27)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = directoryStoreNewTreePage(a1, v109, 663, 0);
      *a6 = 0;
      if (!v27)
      {
        goto LABEL_53;
      }
    }

    v110 = 0;
    v34 = _directoryStoreGetPageInner(a1, v15, a6);
    if (*a6)
    {
      v35 = v34;
      ItemOffset = directoryStorePageFindItemOffset(*(a1 + 216), v34, v26, &v110, v109);
    }

    else
    {
      *&v119 = 0;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v114 = 0u;
      v113 = 0u;
      v112 = 0u;
      ItemOffset = directoryStoreTreeFindItemOffset(a1, v15, v26, &v112, &v110, v109, 1);
      v35 = _directoryStoreGetPageInner(a1, *(&v118 + 1), &v111);
    }

    if (ItemOffset)
    {
      v89 = __si_assert_copy_extra(0);
      v77 = v89;
      v90 = "";
      if (v89)
      {
        v90 = v89;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 686, "element==0", v90);
      goto LABEL_94;
    }

    v50 = v110;
    if (*&v35[8 * v110 + 4] >= 2uLL)
    {
      Size = directoryStorePageGetSize(v35);
      shiftEntries(v35, v50, Size);
      v50 = v110;
    }

    v52 = &v35[8 * v50 + 4];
    *v52 = v26;
    v52[1] = v27 | 0x8000000000000000;
    *v35 += 16;
LABEL_53:
    v53 = *(a2 + 8);
    if (v53)
    {
      PageInner = _directoryStoreGetPageInner(a1, v53, a6);
      *a2 = &PageInner[8 * *(a2 + 16) + 4];
    }

    if (PageInner)
    {
      dirtyStoragePage(a1, PageInner);
    }

    goto LABEL_83;
  }

  if (!(v16 >> 62))
  {
    goto LABEL_84;
  }

  directoryStoreValidate(a1, v14);
  v17 = _directoryStoreGetPageInner(a1, v16, a6);
  v18 = v17;
  v19 = *v17;
  if (a4)
  {
    v20 = (64 << *(v17 + 2)) - 8;
    if (v20 < v19)
    {
      goto LABEL_101;
    }

    a3 = (v19 >> 4) + 1;
  }

  else
  {
    v20 = (64 << *(v17 + 2)) - 8;
  }

  if (v20 < v19)
  {
    v84 = __si_assert_copy_extra(0);
    v85 = v84;
    v86 = "";
    if (v84)
    {
      v86 = v84;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 287, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v86, *v18, (64 << *(v18 + 2)) - 8);
    goto LABEL_120;
  }

  v37 = v19 >> 4;
  if (a3 >= v37)
  {
    v38 = a3;
  }

  else
  {
    v38 = (v37 + 1);
  }

  if (v38 >= 3)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 + 1;
  }

  if (5 * v39 < 4 * directoryStorePageGetSize(v17))
  {
    goto LABEL_84;
  }

  *a5 = 1;
  v40 = directoryStorePageGetSize(v18);
  if (v40 != 1023 && (5 * v39) < 0xFFDuLL)
  {
    v41 = *(a2 + 8);
    if (v41)
    {
      v42 = _directoryStoreGetPageInner(a1, v41, a6);
      *a2 = &v42[8 * *(a2 + 16) + 4];
      dirtyStoragePage(a1, v42);
    }

    v15 = *(*a2 + 8);
    v43 = _directoryStoreGetPageInner(a1, v15, &v111);
    v44 = v43;
    v45 = 64 << *(v43 + 2);
    v46 = ((20 * v39) & 0xFFFFFFF0) + 16;
    LODWORD(v39) = v45;
    do
    {
      v39 = (2 * v39);
    }

    while (v46 > v39);
    if ((v45 - 8) < *v43)
    {
      v91 = __si_assert_copy_extra(0);
      v77 = v91;
      v92 = "";
      if (v91)
      {
        v92 = v91;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 587, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v92);
      goto LABEL_94;
    }

    dirtyStoragePage(a1, v43);
    v47 = directoryStorePageGetSize(v44);
    if (storageExtendOffset(a1, v15, v45, v39))
    {
      v48 = _directoryStoreGetPageInner(a1, v15, &v112);
      *(v48 + 2) = __clz(__rbit32(v39 >> 6));
      dirtyStoragePage(a1, v48);
      if (*(a1 + 232) > v15)
      {
        v49 = _directoryStoreGetPageInner(a1, v15, &v111);
        rehashPage(a1, v49, v47, v109);
        dirtyStoragePage(a1, v49);
        if (!v15)
        {
          goto LABEL_84;
        }

        goto LABEL_80;
      }

      v95 = __si_assert_copy_extra(*(a1 + 216));
      v96 = v95;
      v97 = "";
      if (v95)
      {
        v97 = v95;
      }

      __message_assert("%s:%u: failed assertion '%s' %s file tree", "FileTree.c", 595, "getOffset(info) < storageGetCount(store)", v97);
      free(v96);
      if (!__valid_fsp(*(a1 + 216)))
      {
        goto LABEL_116;
      }

      goto LABEL_121;
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v110 = 0;
    if (v39 <= 0x4000)
    {
      v69 = storageGrowOffset(a1, v15 & 0x3FFFFFFFFFFFFFFFLL, v45, v39, &v112, &v110);
      if (v69)
      {
        v15 = v69;
        storageResolvePtr(a1, v69, v39, 1);
        if (v110)
        {
          dirtyStorageOffsets(a1, &v112, v110);
        }

        if (v15 < *(a1 + 232))
        {
          v70 = _directoryStoreGetPageInner(a1, v15, &v111);
          v71 = v109;
          v70[3] = v109;
          v70[2] = 808;
          *(v70 + 2) = __clz(__rbit32(v39 >> 6));
          rehashPage(a1, v70, v47, v71);
          dirtyStoragePage(a1, v70);
LABEL_80:
          v72 = *(a2 + 8);
          if (v72)
          {
            v73 = _directoryStoreGetPageInner(a1, v72, a6);
            *a2 = &v73[8 * *(a2 + 16) + 4];
            dirtyStoragePage(a1, v73);
          }

          v15 |= 0x4000000000000000uLL;
LABEL_83:
          *(*a2 + 8) = v15;
          goto LABEL_84;
        }

        v105 = __si_assert_copy_extra(*(a1 + 216));
        v102 = v105;
        v106 = "";
        if (v105)
        {
          v106 = v105;
        }

        __message_assert("%s:%u: failed assertion '%s' %s file tree", "FileTree.c", 617, "getOffset(*newOffset) < storageGetCount(store)", v106);
      }

      else
      {
        v101 = __si_assert_copy_extra(*(a1 + 216));
        v102 = v101;
        if (v101)
        {
          v103 = v101;
        }

        else
        {
          v103 = "";
        }

        v104 = __error();
        __message_assert("%s:%u: failed assertion '%s' %s error %d expanding from old:%d new:%d", "FileTree.c", 323, "newRealOffset", v103, *v104, v45, v39);
      }

      free(v102);
      if (__valid_fsp(*(a1 + 216)))
      {
        v107 = 2989;
      }

      else
      {
        v107 = 3072;
      }

      *v107 = -559038737;
      abort();
    }

    v99 = __si_assert_copy_extra(0);
    v85 = v99;
    v100 = "";
    if (v99)
    {
      v100 = v99;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 609, "reSize<=((1<<(10))* sizeof(CIDirectory_t))", v100);
LABEL_120:
    free(v85);
    if (!__valid_fs(-1))
    {
LABEL_116:
      v98 = 3072;
      goto LABEL_122;
    }

LABEL_121:
    v98 = 2989;
LABEL_122:
    *v98 = -559038737;
    abort();
  }

  if ((64 << *(v18 + 2)) - 8 < *v18)
  {
LABEL_101:
    v87 = __si_assert_copy_extra(0);
    v77 = v87;
    v88 = "";
    if (v87)
    {
      v88 = v87;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 287, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v88, *v18, (64 << *(v18 + 2)) - 8);
    goto LABEL_94;
  }

  MEMORY[0x1EEE9AC00](v40);
  v55 = &v108[-v54];
  bzero(&v108[-v54], v54);
  v56 = directoryStorePageGetSize(v18);
  v57 = *(v18 + 3);
  v58 = 0;
  if (v56)
  {
    v59 = v18 + 4;
    do
    {
      if (*v59 >= 2)
      {
        *&v55[2 * v58++] = *v59;
      }

      ++v59;
      v56 = (v56 - 1);
    }

    while (v56);
  }

  *&v112 = v16 & 0x3FFFFFFFFFFFFFFFLL;
  storageFreeOffset(a1, v16 & 0x3FFFFFFFFFFFFFFFLL, 64 << *(v18 + 2));
  dirtyStorageOffsets(a1, &v112, 1);
  v15 = directoryStoreNewTreePage(a1, v109, 749, v57);
  if (v58)
  {
    while (1)
    {
      v110 = 0;
      *&v119 = 0;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v114 = 0u;
      v113 = 0u;
      v112 = 0u;
      v60 = _directoryStoreGetPageInner(a1, v15, a6);
      dirtyStoragePage(a1, v60);
      if (*a6)
      {
        break;
      }

      directoryStoreTreeFindItemOffset(a1, v15, *v55, &v112, &v110, v109, 1);
      v61 = _directoryStoreGetPageInner(a1, *(&v118 + 1), a6);
      if (!*a6)
      {
        v79 = __si_assert_copy_extra(0);
        v77 = v79;
        v80 = "";
        if (v79)
        {
          v80 = v79;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 762, "*flat", v80);
        goto LABEL_94;
      }

      if (*(&v118 + 1) == v15)
      {
        v81 = __si_assert_copy_extra(0);
        v77 = v81;
        v82 = "";
        if (v81)
        {
          v82 = v81;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 763, "l_outPage.leafPageOffset != getOffset(newChildPage)", v82);
        goto LABEL_94;
      }

      v62 = v61;
      v63 = v61 + 4;
      v64 = v110;
      if (*&v61[8 * v110 + 4] >= 2uLL)
      {
        v65 = directoryStorePageGetSize(v61);
        shiftEntries(v62, v64, v65);
        v64 = v110;
      }

      v66 = *v55;
      v55 += 2;
      *&v63[8 * v64] = v66;
      *v62 += 16;
      dirtyStoragePage(a1, v62);
      if (!--v58)
      {
        goto LABEL_70;
      }
    }

    v76 = __si_assert_copy_extra(0);
    v77 = v76;
    v78 = "";
    if (v76)
    {
      v78 = v76;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 759, "*flat==0", v78);
LABEL_94:
    free(v77);
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

LABEL_70:
  v67 = *(a2 + 8);
  if (v67)
  {
    v68 = _directoryStoreGetPageInner(a1, v67, a6);
    *a2 = &v68[8 * *(a2 + 16) + 4];
    dirtyStoragePage(a1, v68);
  }

  *(*a2 + 8) = v15;
  *a6 = 0;
  if (!_directoryStoreGetPageInner(a1, v15, a6))
  {
    v93 = __si_assert_copy_extra(0);
    v85 = v93;
    v94 = "";
    if (v93)
    {
      v94 = v93;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 796, "page", v94);
    goto LABEL_120;
  }

LABEL_84:
  v74 = *MEMORY[0x1E69E9840];
  return v15;
}

unint64_t directoryStoreNewTreePage(uint64_t a1, __int16 a2, __int16 a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 371, "specialBits == 0", v13);
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

  memset(v21, 0, sizeof(v21));
  v20 = 0;
  v7 = storageAllocOffset(a1, 0x800u, v21, &v20);
  v19 = v7;
  if (v20)
  {
    dirtyStorageOffsets(a1, v21, v20);
  }

  if (v7)
  {
    v8 = storageResolvePtr(a1, v7, 2048, 1);
    bzero(v8, 0x800uLL);
    *(v8 + 2) = 5;
    *(v8 + 6) = a2;
    *(v8 + 4) = a3;
    directoryTreePageGetSize(0, 5);
    dirtyStorageOffsets(a1, &v19, 1);
    if (v7 >> 62 == 1)
    {
      v15 = __si_assert_copy_extra(0);
      v16 = v15;
      v17 = "";
      if (v15)
      {
        v17 = v15;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 407, "!(((realOffset & (1ull << 63)) ==0) && (realOffset & (1ull << 62))==(1ull << 62))", v17);
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
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t shiftEntries(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (result + 8);
  v4 = (result + 8 + 16 * a2);
  v5 = *v4;
  if (!*v4)
  {
    v16 = __si_assert_copy_extra(0);
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1196, "dir.fileId.storeOID!=0", v18);
    goto LABEL_43;
  }

  if (v5 == 1)
  {
    v19 = __si_assert_copy_extra(0);
    v17 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1197, "getStoreOID(dir.fileId)!=1", v20);
    goto LABEL_43;
  }

  v6 = v4[1];
  if (a2 + 1 >= a3)
  {
    v10 = v4[1];
    v9 = *v4;
LABEL_9:
    if (!a2)
    {
LABEL_12:
      v13 = __si_assert_copy_extra(0);
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 1226, v15);
      free(v14);
      goto LABEL_44;
    }

    while (1)
    {
      v11 = *v3;
      if (*v3 <= 1)
      {
        break;
      }

      v12 = v3[1];
      *v3 = v9;
      v3[1] = v10;
      v3 += 2;
      v9 = v11;
      v10 = v12;
      if (!--a2)
      {
        goto LABEL_12;
      }
    }

    if (*v3 == 1)
    {
      v21 = __si_assert_copy_extra(0);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1215, "page->items[i].fileId.storeOID!=markerOid.storeOID", v23);
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

    if (!v3[1])
    {
      *v3 = v9;
      v3[1] = v10;
      return result;
    }

    v25 = __si_assert_copy_extra(0);
    v17 = v25;
    v26 = "";
    if (v25)
    {
      v26 = v25;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1216, "page->items[i].childPage.offset==0", v26);
LABEL_43:
    free(v17);
    if (!__valid_fs(-1))
    {
      v31 = 3072;
LABEL_46:
      *v31 = -559038737;
      abort();
    }

LABEL_44:
    v31 = 2989;
    goto LABEL_46;
  }

  v7 = ~a2 + a3;
  v8 = (result + 16 * a2 + 32);
  while (1)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    if (v9 <= 1)
    {
      break;
    }

    *(v8 - 1) = v5;
    *v8 = v6;
    v8 += 2;
    v5 = v9;
    v6 = v10;
    if (!--v7)
    {
      goto LABEL_9;
    }
  }

  if (v10)
  {
    v27 = __si_assert_copy_extra(0);
    v17 = v27;
    v28 = "";
    if (v27)
    {
      v28 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1203, "page->items[i].childPage.offset==0", v28);
    goto LABEL_43;
  }

  if (v9 == 1)
  {
    v29 = __si_assert_copy_extra(0);
    v17 = v29;
    v30 = "";
    if (v29)
    {
      v30 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1204, "page->items[i].fileId.storeOID!=markerOid.storeOID", v30);
    goto LABEL_43;
  }

  *(v8 - 1) = v5;
  *v8 = v6;
  return result;
}