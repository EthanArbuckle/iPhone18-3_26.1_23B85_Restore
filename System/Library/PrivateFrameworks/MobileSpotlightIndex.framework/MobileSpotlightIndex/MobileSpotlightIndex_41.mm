void *initIndex(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = -1163003219;
  v6.__sig = 0;
  *v6.__opaque = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutex_init((a1 + 15056), &v6);
  pthread_mutex_init((a1 + 15120), &v6);
  pthread_mutexattr_destroy(&v6);
  *(a1 + 15688) = 0;
  *(a1 + 15696) = dispatch_semaphore_create(0);
  *(a1 + 14720) = 0u;
  *(a1 + 14736) = 0u;
  *(a1 + 14752) = 0u;
  *(a1 + 14768) = 0u;
  *(a1 + 14784) = 0u;
  *(a1 + 14800) = 0u;
  *(a1 + 14816) = 0u;
  *(a1 + 14832) = 0u;
  *(a1 + 14848) = 0u;
  *(a1 + 14864) = 0u;
  *(a1 + 14880) = 0u;
  *(a1 + 14896) = 0u;
  *(a1 + 14912) = 0u;
  *(a1 + 14928) = 0;
  pthread_mutex_init((a1 + 14720), 0);
  *(a1 + 14504) = 0u;
  *(a1 + 14520) = 0u;
  *(a1 + 14536) = 0u;
  *(a1 + 14552) = 0u;
  *(a1 + 14568) = 0u;
  *(a1 + 14584) = 0u;
  *(a1 + 14600) = 0u;
  *(a1 + 14616) = 0u;
  *(a1 + 14632) = 0u;
  *(a1 + 14648) = 0u;
  *(a1 + 14664) = 0u;
  *(a1 + 14680) = 0u;
  *(a1 + 14696) = 0u;
  *(a1 + 14712) = 0;
  pthread_mutex_init((a1 + 14504), 0);
  *(a1 + 9440) = -1;
  memset(&v7, 0, sizeof(v7));
  pthread_rwlockattr_init(&v7);
  pthread_rwlock_init((a1 + 9464), &v7);
  pthread_rwlockattr_destroy(&v7);
  *(a1 + 14160) = -1;
  memset(&v7, 0, sizeof(v7));
  pthread_rwlockattr_init(&v7);
  pthread_rwlock_init((a1 + 14184), &v7);
  pthread_rwlockattr_destroy(&v7);
  *(a1 + 4904) = 0;
  *(a1 + 4872) = 0u;
  *(a1 + 4888) = 0u;
  *(a1 + 4840) = 0u;
  *(a1 + 4856) = 0u;
  *(a1 + 4808) = 0u;
  *(a1 + 4824) = 0u;
  *(a1 + 4776) = 0u;
  *(a1 + 4792) = 0u;
  *(a1 + 4744) = 0u;
  *(a1 + 4760) = 0u;
  *(a1 + 4712) = 0u;
  *(a1 + 4728) = 0u;
  *(a1 + 4696) = 0u;
  pthread_mutex_init((a1 + 4696), 0);
  result = _Block_copy(a2);
  *(a1 + 4936) = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *open_index_file(int a1, const char *a2, int a3, off_t a4, off_t a5, int a6, uint64_t *a7, uint64_t a8, int *a9)
{
  v46 = *MEMORY[0x1E69E9840];
  v14 = fd_create_protected(a1, a2, a3 | (((a3 & 3) != 0) << 29), 3u);
  if (!v14)
  {
    *a9 = *__error();
    v26 = *__error();
    v27 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = *a9;
      v45.st_dev = 136315906;
      *&v45.st_mode = "open_index_file";
      WORD2(v45.st_ino) = 1024;
      *(&v45.st_ino + 6) = 1311;
      HIWORD(v45.st_uid) = 1024;
      v45.st_gid = v33;
      LOWORD(v45.st_rdev) = 2080;
      *(&v45.st_rdev + 2) = a2;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: open file error: %d, %s\n", &v45, 0x22u);
    }

    *__error() = v26;
    goto LABEL_23;
  }

  if (a5)
  {
    memset(&v45, 0, sizeof(v45));
    do
    {
      v15 = fstatat(*(v14 + 11), v14[9], &v45, 2048);
      v16 = g_prot_error_callback;
      if (v15 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v18 = *(v14 + 10);
      v19 = __error();
    }

    while (((*(v16 + 16))(v16, v18, *v19, 8) & 1) != 0);
    if (v45.st_size < a5)
    {
      *a9 = -1;
      v20 = *__error();
      v21 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v35 = 136316162;
        v36 = "open_index_file";
        v37 = 1024;
        v38 = 1319;
        v39 = 1024;
        st_size = v45.st_size;
        v41 = 1024;
        v42 = a5;
        v43 = 2080;
        v44 = a2;
        v22 = "%s:%d: bad file size: %d, min size %d, %s\n";
        v23 = &v35;
        v24 = v21;
        v25 = 40;
LABEL_27:
        _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, v22, v23, v25);
      }

LABEL_22:
      *__error() = v20;
LABEL_23:
      fd_release(v14);
      v14 = 0;
      goto LABEL_24;
    }
  }

  if (a7)
  {
    v28 = fd_mmap(v14);
    *a7 = v28;
    if (v28 == -1)
    {
      *a9 = *__error();
      v20 = *__error();
      v29 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v34 = *a9;
      v45.st_dev = 136316162;
      *&v45.st_mode = "open_index_file";
      WORD2(v45.st_ino) = 1024;
      *(&v45.st_ino + 6) = 1327;
      HIWORD(v45.st_uid) = 1024;
      v45.st_gid = v34;
      LOWORD(v45.st_rdev) = 2048;
      *(&v45.st_rdev + 2) = a4;
      WORD1(v45.st_atimespec.tv_sec) = 2080;
      *(&v45.st_atimespec.tv_sec + 4) = a2;
      v22 = "%s:%d: map error: %d, size: %lld, %s";
      goto LABEL_26;
    }
  }

  if (a6 && fd_truncate(v14, a4) == -1)
  {
    *a9 = *__error();
    v20 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v30 = *a9;
    v45.st_dev = 136316162;
    *&v45.st_mode = "open_index_file";
    WORD2(v45.st_ino) = 1024;
    *(&v45.st_ino + 6) = 1333;
    HIWORD(v45.st_uid) = 1024;
    v45.st_gid = v30;
    LOWORD(v45.st_rdev) = 2048;
    *(&v45.st_rdev + 2) = a4;
    WORD1(v45.st_atimespec.tv_sec) = 2080;
    *(&v45.st_atimespec.tv_sec + 4) = a2;
    v22 = "%s:%d: ftruncate error: %d, size: %lld, %s";
LABEL_26:
    v23 = &v45;
    v24 = v29;
    v25 = 44;
    goto LABEL_27;
  }

LABEL_24:
  v31 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t *storeVInt64(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  if (HIDWORD(a2))
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      *v2 = a2 | 0x80;
      v5 = vdupq_n_s64(a2);
      v5.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_1C2BFA320), vshlq_u64(v5, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = (a2 >> 49) | 0x80;
      *(v2 + 8) = HIBYTE(a2);
      *(v2 + 9) = 1;
      v3 = 10;
    }

    else if (HIBYTE(a2))
    {
      *v2 = a2 | 0x80;
      v6 = vdupq_n_s64(a2);
      v6.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_1C2BFA320), vshlq_u64(v6, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v6.i8, *v6.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = (a2 >> 49) | 0x80;
      *(v2 + 8) = HIBYTE(a2);
      v3 = 9;
    }

    else if (a2 >> 49)
    {
      *v2 = a2 | 0x80;
      v7 = vdupq_n_s64(a2);
      v7.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_1C2BFA320), vshlq_u64(v7, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = a2 >> 49;
      v3 = 8;
    }

    else
    {
      *v2 = a2 | 0x80;
      v4 = vdupq_n_s64(a2);
      v4.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1C2BFA320), vshlq_u64(v4, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
      if (a2 >> 42)
      {
        *(v2 + 5) = (a2 >> 35) | 0x80;
        *(v2 + 6) = a2 >> 42;
        v3 = 7;
      }

      else
      {
        *(v2 + 5) = a2 >> 35;
        v3 = 6;
      }
    }
  }

  else if (a2 >> 28)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = (a2 >> 14) | 0x80;
    *(v2 + 3) = (a2 >> 21) | 0x80;
    *(v2 + 4) = a2 >> 28;
    v3 = 5;
  }

  else if (a2 >= 0x200000)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = (a2 >> 14) | 0x80;
    *(v2 + 3) = a2 >> 21;
    v3 = 4;
  }

  else if (a2 >= 0x4000)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = a2 >> 14;
    v3 = 3;
  }

  else if (a2 >= 0x80)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = a2 >> 7;
    v3 = 2;
  }

  else
  {
    *v2 = a2;
    v3 = 1;
  }

  *result += v3;
  return result;
}

uint64_t openPayload(uint64_t a1, int a2, const char *a3, const char *a4, const char *a5, char *__str, int a7, char a8, unsigned __int8 a9, int a10, void *a11)
{
  v12 = a7;
  v68 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v17 = 0;
  }

  else
  {
    v17 = 536871426;
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, a4);
  v18 = fd_create_protected(a2, __str, v17, 3u);
  if (!v18)
  {
    v27 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v41 = *__error();
      *buf = 136315906;
      v61 = "openPayload";
      v62 = 1024;
      v63 = 1198;
      v64 = 1024;
      v65 = v41;
      v66 = 2080;
      v67 = __str;
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    }

    v29 = __error();
    result = 0;
    *v29 = v27;
    goto LABEL_31;
  }

  v19 = v18;
  if (a8)
  {
    result = initPayload(a1, v18, 0, v12, a9, a10, a11);
    if (result)
    {
      memset(&v49, 0, sizeof(v49));
      v21 = *(a1 + 4488);
      if (!v21)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v22 = fstatat(*(v21 + 44), *(v21 + 72), &v49, 2048);
        v23 = g_prot_error_callback;
        if (v22 != -1 || g_prot_error_callback == 0)
        {
          break;
        }

        v25 = *(v21 + 40);
        v26 = __error();
        if (((*(v23 + 16))(v23, v25, *v26, 8) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (v22 == -1)
      {
LABEL_28:
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v42 = *__error();
          *buf = 136315650;
          v61 = "openPayload";
          v62 = 1024;
          v63 = 1223;
          v64 = 1024;
          v65 = v42;
          _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: stat err: %d", buf, 0x18u);
        }

        v39 = __error();
        result = 0;
        *v39 = v37;
      }

      else if (v49.st_size >= *(a1 + 24))
      {
        result = 1;
      }

      else
      {
        bzero(buf, 0x400uLL);
        v34 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          st_size = v49.st_size;
          v45 = *(a1 + 24);
          v46 = fd_realpath(*(a1 + 4488), buf);
          *v50 = 136316162;
          v51 = "openPayload";
          v47 = "";
          v52 = 1024;
          if (v46)
          {
            v47 = v46;
          }

          v53 = 1228;
          v54 = 2048;
          v55 = st_size;
          v56 = 2048;
          v57 = v45;
          v58 = 2080;
          v59 = v47;
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: bad file size: %lldd, min size %lldd, %s\n", v50, 0x30u);
        }

        v36 = __error();
        result = 0;
        *v36 = v34;
      }
    }

    goto LABEL_31;
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, a5);
  v30 = fd_create_protected(a2, __str, v17, 3u);
  if (!v30)
  {
    v32 = *__error();
    v33 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v43 = *__error();
      *buf = 136315906;
      v61 = "openPayload";
      v62 = 1024;
      v63 = 1210;
      v64 = 1024;
      v65 = v43;
      v66 = 2080;
      v67 = __str;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    }

    *__error() = v32;
    fd_release(v19);
    result = 0;
LABEL_31:
    v40 = *MEMORY[0x1E69E9840];
    return result;
  }

  v31 = *MEMORY[0x1E69E9840];

  return initPayload(a1, v19, v30, v12, a9, a10, a11);
}

uint64_t indexRestoreFromBuffer(uint64_t a1, unsigned int **a2, int a3, unsigned int a4, unsigned int a5, _BYTE *a6, int a7)
{
  v143 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  result = indexRestoreHeaderFromBuffer(a1, a2, a3, a4, a5, a6);
  if (!result)
  {
    goto LABEL_110;
  }

  v12 = *(*a2)++;
  *(a1 + 60) = restoreVInt32_3354(a2);
  *(a1 + 68) = restoreVInt32_3354(a2);
  *(a1 + 72) = restoreVInt32_3354(a2);
  *(a1 + 14936) = restoreVInt32_3354(a2);
  *(a1 + 14944) = restoreVInt32_3354(a2);
  if (*(a1 + 4) >= 0x57u)
  {
    *(a1 + 14952) = restoreVInt32_3354(a2);
    *(a1 + 15008) = restoreVInt32_3354(a2);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *a2;
  do
  {
    v17 = v14 + 1;
    v18 = *(v16 + v14);
    v15 |= (v18 & 0x7F) << v13;
    if ((v18 & 0x80) == 0)
    {
      break;
    }

    v14 = v17;
    v19 = v13 == 63;
    v13 += 7;
  }

  while (!v19);
  *a2 = (v16 + v17);
  *(a1 + 80) = v15;
  *(a1 + 88) = 5391;
  atomic_store(restoreVInt32_3354(a2), (a1 + 16));
  *(a1 + 52) = restoreVInt32_3354(a2);
  *(a1 + 24) = restoreVInt32_3354(a2);
  *(a1 + 96) = restoreVInt32_3354(a2);
  *(a1 + 240) = restoreVInt32_3354(a2);
  v20 = restoreVInt32_3354(a2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  *(a1 + 244) = v20;
  v24 = *a2;
  do
  {
    ++v22;
    v25 = *v24;
    v24 = (v24 + 1);
    v23 |= (v25 & 0x7F) << v21;
    if ((v25 & 0x80) == 0)
    {
      break;
    }

    v19 = v21 == 63;
    v21 += 7;
  }

  while (!v19);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = (*a2 + v22);
  *a2 = v29;
  *(a1 + 4944) = v23;
  do
  {
    ++v27;
    v30 = *v24;
    v24 = (v24 + 1);
    v28 |= (v30 & 0x7F) << v26;
    if ((v30 & 0x80) == 0)
    {
      break;
    }

    v19 = v26 == 63;
    v26 += 7;
  }

  while (!v19);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = (v29 + v27);
  *a2 = v34;
  *(a1 + 4952) = v28;
  *(a1 + 4960) = v28;
  do
  {
    ++v32;
    v35 = *v24;
    v24 = (v24 + 1);
    v33 |= (v35 & 0x7F) << v31;
    if ((v35 & 0x80) == 0)
    {
      break;
    }

    v19 = v31 == 63;
    v31 += 7;
  }

  while (!v19);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = (v34 + v32);
  *a2 = v39;
  *(a1 + 4968) = v33;
  do
  {
    ++v37;
    v40 = *v24;
    v24 = (v24 + 1);
    v38 |= (v40 & 0x7F) << v36;
    if ((v40 & 0x80) == 0)
    {
      break;
    }

    v19 = v36 == 63;
    v36 += 7;
  }

  while (!v19);
  *a2 = (v39 + v37);
  *(a1 + 4976) = v38;
  *(a1 + 40) = restoreVInt32_3354(a2);
  *(a1 + 44) = restoreVInt32_3354(a2) != 0;
  *(a1 + 9400) = restoreVInt32_12670(a2);
  v41 = restoreVInt32_12670(a2);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  *(a1 + 9404) = v41;
  v45 = *(a1 + 9400);
  *(a1 + 5216) = 8 * v45;
  *(a1 + 5208) = 8 * v41;
  v46 = *a2;
  do
  {
    ++v43;
    v47 = *v46;
    v46 = (v46 + 1);
    v44 |= (v47 & 0x7F) << v42;
    if ((v47 & 0x80) == 0)
    {
      break;
    }

    v19 = v42 == 63;
    v42 += 7;
  }

  while (!v19);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = (*a2 + v43);
  *a2 = v51;
  *(a1 + 9664) = v44;
  do
  {
    ++v49;
    v52 = *v46;
    v46 = (v46 + 1);
    v50 |= (v52 & 0x7F) << v48;
    if ((v52 & 0x80) == 0)
    {
      break;
    }

    v19 = v48 == 63;
    v48 += 7;
  }

  while (!v19);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = (v51 + v49);
  *a2 = v56;
  *(a1 + 9672) = v50;
  *(a1 + 9680) = v50;
  do
  {
    ++v54;
    v57 = *v46;
    v46 = (v46 + 1);
    v55 |= (v57 & 0x7F) << v53;
    if ((v57 & 0x80) == 0)
    {
      break;
    }

    v19 = v53 == 63;
    v53 += 7;
  }

  while (!v19);
  v140 = a7;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = (v56 + v54);
  *a2 = v61;
  *(a1 + 9688) = v55;
  do
  {
    ++v59;
    v62 = *v46;
    v46 = (v46 + 1);
    v60 |= (v62 & 0x7F) << v58;
    if ((v62 & 0x80) == 0)
    {
      break;
    }

    v19 = v58 == 63;
    v58 += 7;
  }

  while (!v19);
  *a2 = (v61 + v59);
  *(a1 + 9696) = v60;
  restoreVInt32_3354(a2);
  restoreVInt32_3354(a2);
  *(a1 + 14120) = restoreVInt32_12670(a2);
  v63 = restoreVInt32_12670(a2);
  *(a1 + 14124) = v63;
  v64 = *(a1 + 14120);
  *(a1 + 9936) = 8 * v64;
  *(a1 + 9928) = 8 * v63;
  *(a1 + 120) = restoreVInt32_3928(a2);
  *(a1 + 128) = restoreVInt32_3928(a2);
  *(a1 + 136) = restoreVInt32_3928(a2);
  *(a1 + 144) = restoreVInt32_3928(a2);
  *(a1 + 148) = restoreVInt32_3928(a2);
  *(a1 + 152) = restoreVInt32_3928(a2);
  *(a1 + 156) = restoreVInt32_3928(a2);
  *(a1 + 160) = restoreVInt32_3928(a2);
  *(a1 + 164) = restoreVInt32_3928(a2);
  *(a1 + 168) = restoreVInt32_3928(a2);
  *(a1 + 172) = restoreVInt32_3928(a2);
  *(a1 + 176) = restoreVInt32_3928(a2);
  *(a1 + 180) = restoreVInt32_3928(a2);
  *(a1 + 184) = restoreVInt32_3928(a2);
  *(a1 + 188) = restoreVInt32_3928(a2);
  *(a1 + 192) = restoreVInt32_3928(a2);
  *(a1 + 196) = restoreVInt32_3928(a2);
  *(a1 + 200) = restoreVInt32_3928(a2);
  *(a1 + 204) = restoreVInt32_3928(a2);
  v138 = *(a1 + 128);
  v139 = *(a1 + 136);
  v65 = storageHeaderRestore(a1 + 256, a2);
  memset(__s, 0, sizeof(__s));
  v66 = *a2;
  __strlcpy_chk();
  *a2 = (*a2 + strlen((a1 + 15495)) + 1);
  __strlcpy_chk();
  *a2 = (*a2 + strlen((a1 + 15463)) + 1);
  __strlcpy_chk();
  *a2 = (*a2 + strlen(__s) + 1);
  __strlcpy_chk();
  v67 = strlen((a1 + 15527));
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = *a2 + v67 + 1;
  *a2 = v71;
  v72 = v71;
  do
  {
    ++v69;
    v73 = *v72++;
    v70 |= (v73 & 0x7F) << v68;
    if ((v73 & 0x80) == 0)
    {
      break;
    }

    v19 = v68 == 63;
    v68 += 7;
  }

  while (!v19);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = v71 + v69;
  *a2 = (v71 + v69);
  *(a1 + 15560) = v70;
  do
  {
    ++v75;
    v78 = *v72++;
    v76 |= (v78 & 0x7F) << v74;
    if ((v78 & 0x80) == 0)
    {
      break;
    }

    v19 = v74 == 63;
    v74 += 7;
  }

  while (!v19);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = v77 + v75;
  *a2 = (v77 + v75);
  *(a1 + 15584) = v76;
  do
  {
    ++v80;
    v83 = *v72++;
    v81 |= (v83 & 0x7F) << v79;
    if ((v83 & 0x80) == 0)
    {
      break;
    }

    v19 = v79 == 63;
    v79 += 7;
  }

  while (!v19);
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = v82 + v80;
  *a2 = (v82 + v80);
  *(a1 + 15592) = v81;
  do
  {
    ++v85;
    v88 = *v72++;
    v86 |= (v88 & 0x7F) << v84;
    if ((v88 & 0x80) == 0)
    {
      break;
    }

    v19 = v84 == 63;
    v84 += 7;
  }

  while (!v19);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = v87 + v85;
  *a2 = (v87 + v85);
  *(a1 + 15600) = v86;
  do
  {
    ++v90;
    v93 = *v72++;
    v91 |= (v93 & 0x7F) << v89;
    if ((v93 & 0x80) == 0)
    {
      break;
    }

    v19 = v89 == 63;
    v89 += 7;
  }

  while (!v19);
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = v92 + v90;
  *a2 = (v92 + v90);
  *(a1 + 15608) = v91;
  do
  {
    ++v95;
    v98 = *v72++;
    v96 |= (v98 & 0x7F) << v94;
    if ((v98 & 0x80) == 0)
    {
      break;
    }

    v19 = v94 == 63;
    v94 += 7;
  }

  while (!v19);
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = v97 + v95;
  *a2 = (v97 + v95);
  *(a1 + 15616) = v96;
  do
  {
    ++v100;
    v103 = *v72++;
    v101 |= (v103 & 0x7F) << v99;
    if ((v103 & 0x80) == 0)
    {
      break;
    }

    v19 = v99 == 63;
    v99 += 7;
  }

  while (!v19);
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = (v102 + v100);
  *a2 = v107;
  *(a1 + 15624) = v101;
  do
  {
    ++v105;
    v108 = *v72++;
    v106 |= (v108 & 0x7F) << v104;
    if ((v108 & 0x80) == 0)
    {
      break;
    }

    v19 = v104 == 63;
    v104 += 7;
  }

  while (!v19);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = (v107 + v105);
  *a2 = v112;
  *(a1 + 15632) = v106;
  do
  {
    ++v110;
    v113 = *v72++;
    v111 |= (v113 & 0x7F) << v109;
    if ((v113 & 0x80) == 0)
    {
      break;
    }

    v19 = v109 == 63;
    v109 += 7;
  }

  while (!v19);
  *a2 = (v112 + v110);
  *(a1 + 15640) = v111;
  *(a1 + 15576) = v76;
  *(a1 + 14984) = v81;
  *(a1 + 14992) = v86;
  *(a1 + 15032) = v91;
  *(a1 + 14960) = v96;
  *(a1 + 14968) = v101;
  *(a1 + 15024) = v106;
  if (v111)
  {
    v70 = v111;
  }

  *(a1 + 15568) = v70;
  *(a1 + 15016) = *(a1 + 15648);
  v114 = (v12 - 4);
  v115 = *a2;
  v116 = *a2 - v10;
  if (v116 < v114)
  {
    v117 = *(a1 + 4);
    if (v140)
    {
      if (v117 >= 0x72)
      {
        v118 = 0;
        v119 = 0;
        v120 = 0;
        do
        {
          v121 = *(v115 + v119++);
          v120 |= (v121 & 0x7F) << v118;
          if ((v121 & 0x80) == 0)
          {
            break;
          }

          v19 = v118 == 63;
          v118 += 7;
        }

        while (!v19);
LABEL_91:
        v115 = (v115 + v119);
        *(a1 + 15656) = v120;
        v116 = v115 - v10;
      }
    }

    else if (v117 >= 0x65)
    {
      v122 = 0;
      v119 = 0;
      v120 = 0;
      do
      {
        v123 = *(v115 + v119++);
        v120 |= (v123 & 0x7F) << v122;
        if ((v123 & 0x80) == 0)
        {
          break;
        }

        v19 = v122 == 63;
        v122 += 7;
      }

      while (!v19);
      goto LABEL_91;
    }
  }

  v124 = v114 <= v116;
  v125 = v114 - v116;
  if (v124)
  {
    v125 = 0;
  }

  v126 = (v115 + v125);
  v129 = *v126;
  v127 = v126 + 1;
  v128 = v129;
  *a2 = v127;
  if (v12 == v129 && (v127 - v10 == v12 && v65 ? (v130 = v139 >= v138) : (v130 = 0), v130 ? (v131 = v63 >= v64) : (v131 = 0), v131 ? (v132 = v41 >= v45) : (v132 = 0), v132))
  {
    result = 1;
  }

  else
  {
    v133 = *__error();
    v134 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      v137 = *a2 - v10;
      *__s = 136316162;
      *&__s[4] = "indexRestoreFromBuffer";
      *&__s[12] = 1024;
      *&__s[14] = 5506;
      *&__s[18] = 1024;
      *&__s[20] = v12;
      *&__s[24] = 1024;
      *&__s[26] = v128;
      *&__s[30] = 1024;
      v142 = v137;
      _os_log_error_impl(&dword_1C278D000, v134, OS_LOG_TYPE_ERROR, "%s:%d: invalid file (%d, %d, %d)\n", __s, 0x24u);
    }

    v135 = __error();
    result = 0;
    *v135 = v133;
    *(a1 + 4) = 0;
  }

LABEL_110:
  v136 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t indexRestoreHeaderFromBuffer(_DWORD *a1, unsigned int **a2, int a3, unsigned int a4, unsigned int a5, _BYTE *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = *(*a2)++;
  a1[1] = v12;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109120;
    LODWORD(v25) = v12;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Restored header version %d", &v24, 8u);
  }

  if (a3 < a4 || a3 > a5 || v12 == a3)
  {
    if (v12 == a3)
    {
LABEL_8:
      v14 = *a2;
      v15 = *(*a2)++;
      atomic_store(v15, a1 + 8);
      v16 = v14[1];
      *a2 = v14 + 2;
      atomic_store(v16, a1 + 9);
      v17 = v14[2];
      *a2 = v14 + 3;
      a1[12] = v17;
      result = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v13 = a1[1];
    if (v13 >= a4 && v13 <= a5)
    {
      goto LABEL_8;
    }
  }

  if (a6)
  {
    *a6 = 1;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v23 = a1[1];
    v24 = 136315906;
    v25 = "indexRestoreHeaderFromBuffer";
    v26 = 1024;
    v27 = 5364;
    v28 = 1024;
    v29 = v23;
    v30 = 1024;
    v31 = a3;
    _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: Invalid version (%d) expected (%d)", &v24, 0x1Eu);
  }

  v21 = __error();
  result = 0;
  *v21 = v19;
LABEL_15:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t restoreVInt32_3354(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (**a1 < 0)
  {
    v4 = v1[1];
    if (v1[1] < 0)
    {
      v5 = v1[2];
      if (v1[2] < 0)
      {
        v7 = v1[3];
        if (v1[3] < 0)
        {
          v9 = v1[4];
          if (v9 < 0)
          {
            v12 = __si_assert_copy_extra_3233(0, -1);
            v13 = v12;
            v14 = "";
            if (v12)
            {
              v14 = v12;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v14);
            free(v13);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v10 = ((v7 & 0x7F) << 21) | (v9 << 28) | ((v5 & 0x7F) << 14) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
          v3 = 5;
          v2 = v10;
        }

        else
        {
          v8 = ((v5 & 0x7F) << 14) | (v7 << 21) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
          v3 = 4;
          v2 = v8;
        }
      }

      else
      {
        v6 = ((v4 & 0x7F) << 7) | (v5 << 14) | (v2 & 0x7F);
        v3 = 3;
        v2 = v6;
      }
    }

    else
    {
      v2 = v2 & 0x7F | (v4 << 7);
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  *a1 = &v1[v3];
  return v2;
}

void __openIndexShadow_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = *(a1 + 32);
  *(v9 + 4920) += a9;
  if (a8 == 4 && *(v9 + 45) == 1)
  {
    writeVectorIndexDrop(*(v9 + 15716), a9, *(v9 + 15203), *(a1 + 40), a3);
  }
}

void writeVectorIndexDrop(uint64_t a1, int a2, int a3, const char *a4, int a5)
{
  v20 = a5;
  valuePtr = a2;
  v19 = 4;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  if (v10)
  {
    v11 = v10;
    CFDictionaryAddValue(Mutable, @"vectorcount", v10);
    CFRelease(v11);
  }

  v12 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v12 = MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"readonly", *v12);
  if (a4)
  {
    v13 = CFStringCreateWithCString(v8, a4, 0x8000100u);
    if (v13)
    {
      v14 = v13;
      CFDictionaryAddValue(Mutable, @"prefix", v13);
      CFRelease(v14);
    }
  }

  v15 = CFNumberCreate(v8, kCFNumberNSIntegerType, &v20);
  if (v15)
  {
    v16 = v15;
    CFDictionaryAddValue(Mutable, @"propertyname", v15);
    CFRelease(v16);
  }

  v17 = CFNumberCreate(v8, kCFNumberIntType, &v19);
  if (v17)
  {
    v18 = v17;
    CFDictionaryAddValue(Mutable, @"dropreason", v17);
    CFRelease(v18);
  }

  if (Mutable)
  {
    (*(sVectorIndexDropCallback + 16))(sVectorIndexDropCallback, a1, Mutable);
    CFRelease(Mutable);
  }
}

uint64_t index_read_index_id(int a1, const char *a2, char *__str)
{
  v23 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "%s%s", a2, "indexId");
  v17 = -1;
  memset(&v20, 0, sizeof(v20));
  std::string::append[abi:nn200100]<char const*,0>(&v20, ".", "");
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v19 = v6;
  if (v6)
  {
    memcpy(&__dst, a2, v6);
  }

  *(&__dst + v7) = 0;
  IVFVectorIndex_s::metaFilename(__p, &v20, &__dst);
  LODWORD(v8) = IVFVectorIndex_s::readIndexId(__p);
  if ((SBYTE7(v22) & 0x80000000) == 0)
  {
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    operator delete(__dst);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  operator delete(__p[0]);
  if (v19 < 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_22:
  operator delete(v20.__r_.__value_.__l.__data_);
LABEL_10:
  if (v8 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v8;
  }

  if (!v8)
  {
    v9 = open_index_file(a1, __str, 0, 0, 0, 0, 0, 0, &v17);
    if (v9)
    {
      v10 = v9;
      *__p = 0u;
      v22 = 0u;
      v11 = __p;
      fd_pread(v9, __p, 0x20uLL, 0);
      v12 = 0;
      v8 = 0;
      do
      {
        v13 = *v11;
        v11 = (v11 + 1);
        v8 |= (v13 & 0x7F) << v12;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v14 = v12 == 63;
        v12 += 7;
      }

      while (!v14);
      fd_release(v10);
    }

    else
    {
      v8 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

char *openIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, int a10, uint64_t a11, uint64_t a12, const void *a13, int a14)
{
  MEMORY[0x1EEE9AC00](a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v308 = v20;
  v291 = v21;
  v23 = v22;
  v25 = v24;
  v302 = v26;
  v333 = *MEMORY[0x1E69E9840];
  bzero(v332, 0x400uLL);
  bzero(v331, 0x1000uLL);
  v310 = v15;
  *v15 = -1;
  v307 = v19;
  v27 = v19 & 0x100;
  if ((v19 & 0x100) != 0)
  {
    v28 = 111;
  }

  else
  {
    v28 = 95;
  }

  if ((v19 & 0x100) != 0)
  {
    v29 = 114;
  }

  else
  {
    v29 = 102;
  }

  v324 = 0u;
  v325 = 0u;
  if (v25)
  {
    v30 = v25;
  }

  else
  {
    v30 = "";
  }

  v322 = 0uLL;
  v323 = 0uLL;
  LODWORD(v322) = -1;
  v31 = *__error();
  v32 = _SILogForLogForCategory(10);
  v33 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v32, v33))
  {
    buf[0].st_dev = 136315138;
    *&buf[0].st_mode = v30;
    _os_log_impl(&dword_1C278D000, v32, v33, "open index at %s", buf, 0xCu);
  }

  *__error() = v31;
  result = malloc_type_calloc(1uLL, 0x3D68uLL, 0x10F00405C9458FEuLL);
  if (!result)
  {
    *v310 = -1;
    goto LABEL_247;
  }

  v292 = v29;
  v309 = v17;
  v35 = result;
  v36 = result + 12288;
  v37 = result + 12288;
  v303 = v27;
  v38 = v27 >> 8;
  v39 = result;
  initIndex(result, a13);
  v305 = (v39 + 3802);
  v301 = v30;
  __strlcpy_chk();
  *(v35 + 80) = v23;
  *(v35 + 88) = 1913;
  *(v35 + 64) = v302;
  *(v35 + 15716) = a14;
  v36[2914] = (v307 & 0x10) != 0;
  *(v35 + 45) = v38;
  *(v35 + 46) = (v307 & 0x400) != 0;
  v306 = v39;
  atomic_fetch_and(v39 + 9, 0xFFFFF7FF);
  atomic_fetch_or(v39 + 9, 0x800u);
  *(v36 + 3425) = 0;
  bzero(&v330, 0x878uLL);
  if (fstatfs(v302, &v330))
  {
    v40 = *__error();
    v41 = _SILogForLogForCategory(10);
    v42 = v308;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      buf[0].st_dev = 136315650;
      *&buf[0].st_mode = "openIndex";
      WORD2(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 6) = 1932;
      HIWORD(buf[0].st_uid) = 2080;
      *&buf[0].st_gid = v291;
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't statfs parent directory: %s", buf, 0x1Cu);
    }

    v43 = v310;
    v44 = v37;
    v45 = v30;
  }

  else
  {
    v46 = 0;
    v47 = *v330.f_fstypename;
    v48 = *v330.f_fstypename == 1634105445 && *&v330.f_fstypename[4] == 116;
    v49 = v48;
    v37[3425] = v49;
    v42 = v308;
    v44 = v37;
    if (v47 ^ 0x73667061 | v330.f_fstypename[4])
    {
      v43 = v310;
      v45 = v30;
      if (v47 != 7562856)
      {
        v46 = (*v330.f_fstypename != 1634105445 || *&v330.f_fstypename[4] != 116) && (*v330.f_fstypename != 1868854125 || *&v330.f_fstypename[4] != 115);
      }
    }

    else
    {
      v43 = v310;
      v45 = v30;
    }

    v52 = 0;
    if ((v307 & 0x8000) != 0 && !v46)
    {
      v52 = (v307 & 0x20) == 0;
    }

    v44[3426] = v52;
    v40 = *__error();
    v53 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v44[3426];
      buf[0].st_dev = 136316162;
      *&buf[0].st_mode = v45;
      WORD2(buf[0].st_ino) = 2080;
      v48 = v54 == 0;
      v55 = "";
      if (v48)
      {
        v55 = "not";
      }

      *(&buf[0].st_ino + 6) = v55;
      HIWORD(buf[0].st_gid) = 2080;
      *&buf[0].st_rdev = v330.f_fstypename;
      LOWORD(buf[0].st_atimespec.tv_sec) = 1024;
      *(&buf[0].st_atimespec.tv_sec + 2) = (v307 >> 15) & 1;
      HIWORD(buf[0].st_atimespec.tv_sec) = 1024;
      LODWORD(buf[0].st_atimespec.tv_nsec) = (v307 >> 5) & 1;
      _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "openIndex(%s) VectorIndex %s supported on %s isLocalVolume: %d, isBackup: %d", buf, 0x2Cu);
    }
  }

  *__error() = v40;
  snprintf(v332, 0x400uLL, "%s%s", v45, "indexHead");
  if (v42)
  {
    v56 = 0;
  }

  else
  {
    v56 = 2;
  }

  v57 = open_index_file(v302, v332, v56, 4096, 4096, 0, 0, 0, v43);
  *(v35 + 14480) = v57;
  if (v57)
  {
    v58 = v42;
    if ((v42 & 1) == 0)
    {
      v59 = v57;
      *&buf[0].st_dev = 0;
      v60 = _fd_acquire_fd(v57, buf);
      if (v60 != -1)
      {
        v61 = v35;
        v62 = v43;
        v63 = v58;
        v64 = v60;
        *(v59 + 28) |= 1u;
        fcntl(v60, 48, 1);
        fcntl(v64, 76, v59[7] & 1);
        v65 = v64;
        v58 = v63;
        v43 = v62;
        v35 = v61;
        _fd_release_fd(v59, v65, 0, *&buf[0].st_dev);
      }
    }

    index_id = index_read_index_id(v302, v45, v332);
    *(v35 + 56) = index_id;
    if (a12 && !index_id && (v58 & 1) == 0)
    {
      *(v35 + 56) = (*(a12 + 16))(a12, 0);
    }

    v67 = *(v35 + 14480);
    if (!v67)
    {
      goto LABEL_242;
    }

    v68 = fd_pread(v67, v331, 0x1000uLL, 0);
    if (v68 != 4096)
    {
      if (v68 != -1)
      {
        goto LABEL_242;
      }

      v69 = *__error();
      if (v69)
      {
LABEL_243:
        *v43 = v69;
        goto LABEL_244;
      }
    }

    v70 = v58;
    v321 = v331;
    if (!indexRestoreFromBuffer(v35, &v321, a10, v28, v292, 0, v303 != 0))
    {
      goto LABEL_244;
    }

    v71 = *__error();
    v72 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = *(v35 + 56);
      buf[0].st_dev = 67109378;
      *&buf[0].st_mode = v73;
      LOWORD(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 2) = v332;
      _os_log_impl(&dword_1C278D000, v72, OS_LOG_TYPE_DEFAULT, "open indexid %u at %s", buf, 0x12u);
    }

    *__error() = v71;
    if ((v307 & 0x400) == 0)
    {
      v74 = *(v35 + 4);
      if (v303)
      {
        if (v74 <= 0x70)
        {
          goto LABEL_71;
        }
      }

      else if (v74 != 98 && v74 < 0x64)
      {
LABEL_71:
        if (v70)
        {
          v44[2915] = 1;
        }

        v75 = atomic_load(v306 + 9);
        v76 = atomic_load(v306 + 9);
        v77 = atomic_load(v306 + 8);
        if (v77 == -1073623027)
        {
          v78 = *(v35 + 72);
          if (*(v35 + 45) == 1)
          {
            v79 = (v78 + 3) >> 2;
          }

          else
          {
            v79 = (v78 + 4) / 5uLL;
          }

          v84 = (8 * *MEMORY[0x1E69E9AC8] - 1 + v79) / (8 * *MEMORY[0x1E69E9AC8]);
          v85 = 1650497869;
        }

        else
        {
          v80 = atomic_load(v306 + 8);
          if (v80 != 1)
          {
            v86 = atomic_load(v306 + 8);
            if (v86 != -804450864)
            {
              v112 = atomic_load(v306 + 8);
              if (v112 != 2)
              {
                v113 = *(v35 + 60);
                if (*(v35 + 68) > v113)
                {
                  *(v35 + 68) = v113 + 1;
                }

                goto LABEL_244;
              }

              v88 = 1;
              v87 = 1;
              goto LABEL_89;
            }

            v87 = 0;
LABEL_88:
            v88 = 0;
LABEL_89:
            v89 = v87;
            v300 = v88;
            v90 = v56;
            snprintf(v332, 0x400uLL, "%s%s", v45, "indexIds");
            v91 = *(v35 + 68);
            v92 = *(v35 + 72);
            if (v91 >= 2)
            {
              v93 = 8 * v91;
            }

            else
            {
              v93 = 0;
            }

            v94 = *(v35 + 72);
            if (v91 <= v92)
            {
              v95 = 8 * v92;
            }

            else
            {
              *(v35 + 72) = v91;
              v95 = 8 * v91;
            }

            v299 = v75;
            if (v308)
            {
              v96 = 1;
            }

            else
            {
              v96 = 3;
            }

            v97 = v308 | ((v75 & 2) >> 1);
            v298 = v90;
            v98 = open_index_file(v302, v332, v90, v95, v93, v97 ^ 1u, v306 + 1801, v96, v43);
            *(v35 + 14448) = v98;
            if (!v98)
            {
              goto LABEL_244;
            }

            snprintf(v332, 0x400uLL, "%s%s", v45, "indexBigDates");
            v99 = *(v35 + 68);
            if (v99 >= 2)
            {
              v100 = 4 * v99;
            }

            else
            {
              v100 = 0;
            }

            v101 = open_index_file(v302, v332, v90, 4 * *(v35 + 72), v100, v97 ^ 1u, v306 + 1802, v96, v43);
            *(v35 + 14456) = v101;
            if (!v101)
            {
              *(v35 + 14456) = open_index_file(v302, v332, 1538, 4 * *(v35 + 72), 0, 1, v306 + 1802, 3, v43);
            }

            if (v303)
            {
              snprintf(v332, 0x400uLL, "%s%s", v301, "indexScores");
              v102 = *(v35 + 68);
              v103 = v102 >= 2 ? 8 * v102 : 0;
              v104 = open_index_file(v302, v332, v90, 8 * *(v35 + 72), v103, v308 ^ 1u, v306 + 1803, v96, v43);
              *(v35 + 14464) = v104;
              if (!v104)
              {
                *(v35 + 14464) = open_index_file(v302, v332, 1538, 8 * *(v35 + 72), 0, 1, v306 + 1803, 3, v43);
              }
            }

            v105 = v301;
            snprintf(v332, 0x400uLL, "%s%s", v301, "indexGroups");
            v106 = *(v35 + 72);
            if (*(v35 + 45) == 1)
            {
              v107 = *(v35 + 68);
            }

            else
            {
              v106 = (4 * v106 + 4) / 5;
              v107 = (4 * *(v35 + 68) + 4) / 5u;
            }

            v108 = open_index_file(v302, v332, v90, v106, v107, v97 ^ 1u, v306 + 1804, v96, v43);
            *(v35 + 14472) = v108;
            if (!v108)
            {
              goto LABEL_244;
            }

            if (!openPayload((v306 + 1236), *(v35 + 64), v301, "indexPostings", "indexTermIds", v332, v97, (v76 & 4) != 0, 1u, *(v35 + 4), *(v35 + 4936)))
            {
              goto LABEL_244;
            }

            if (!openPayload((v306 + 2416), *(v35 + 64), v301, "indexPositions", "indexPositionTable", v332, v97, (v76 & 4) != 0, 1u, *(v35 + 4), *(v35 + 4936)))
            {
              goto LABEL_244;
            }

            v304 = v89;
            if (!bt_openTrie((v306 + 24), *(v35 + 64), v301, (v76 >> 2) & 1, v97, 0, *(v35 + 4), *(v35 + 4936)))
            {
              goto LABEL_244;
            }

            v109 = v302;
            v110 = v70;
            if ((v307 & 0x40) != 0)
            {
              v111 = openForwardStore(*(v35 + 64), v301, (v307 >> 14) & 1, v70, 0, *(v35 + 4936));
              *(v35 + 4928) = v111;
              if (v111)
              {
                atomic_fetch_or(v306 + 9, 0x80u);
              }

              else
              {
                v114 = *__error();
                v115 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  buf[0].st_dev = 136315394;
                  *&buf[0].st_mode = "openIndex";
                  WORD2(buf[0].st_ino) = 1024;
                  *(&buf[0].st_ino + 6) = 2062;
                  _os_log_error_impl(&dword_1C278D000, v115, OS_LOG_TYPE_ERROR, "%s:%d: Failed to open path index", buf, 0x12u);
                }

                *__error() = v114;
                if (!v303)
                {
                  goto LABEL_244;
                }

                *(v35 + 4928) = 0;
                v116 = *__error();
                v117 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                {
                  buf[0].st_dev = 136315394;
                  *&buf[0].st_mode = "openIndex";
                  WORD2(buf[0].st_ino) = 1024;
                  *(&buf[0].st_ino + 6) = 2065;
                  _os_log_error_impl(&dword_1C278D000, v117, OS_LOG_TYPE_ERROR, "%s:%d: Ignoring failed dirstore open for corespotlight", buf, 0x12u);
                }

                *__error() = v116;
                v109 = v302;
                v110 = v70;
              }
            }

            if (!*(v35 + 4928) || (v118 = atomic_load(v306 + 9), (v118 & 0x24) != 4) || !*(v35 + 52))
            {
LABEL_152:
              v135 = _os_feature_enabled_impl();
              v136 = v44[3426];
              if (v135)
              {
                if (v44[3426])
                {
                  v137 = *__error();
                  v138 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    v139 = *(v35 + 56);
                    buf[0].st_dev = 67109120;
                    *&buf[0].st_mode = v139;
                    _os_log_impl(&dword_1C278D000, v138, OS_LOG_TYPE_DEFAULT, "open vector index for indexid %d", buf, 8u);
                  }

                  *__error() = v137;
                  if ((v307 & 0x2000) != 0)
                  {
                    bzero(buf, 0x400uLL);
                    v109 = v302;
                    v156 = fcntl(v302, 50, buf);
                    if (LOBYTE(buf[0].st_dev))
                    {
                      v157 = v156 < 0;
                    }

                    else
                    {
                      v157 = 1;
                    }

                    if (v157)
                    {
                      v158 = 0;
                    }

                    else
                    {
                      v158 = buf;
                    }

                    IVFVectorIndex_s::unlink(v158, v105, 0);
                    if (*(v35 + 45) == 1)
                    {
                      writeVectorIndexDrop(*(v35 + 15716), 1, v44[2915], v105, 0);
                    }
                  }

                  else
                  {
                    v109 = v302;
                    if (*(v35 + 56))
                    {
                      v140 = *(v35 + 64);
                      if ((v110 & 1) == 0)
                      {
                        atomic_load(v306 + 9);
                      }

                      v141 = *(v35 + 56);
                      v313[2] = MEMORY[0x1E69E9820];
                      v313[3] = 0x40000000;
                      v313[4] = __openIndex_block_invoke;
                      v313[5] = &__block_descriptor_tmp_17;
                      v313[6] = v35;
                      v313[7] = v105;
                      openVectorIndex();
                    }
                  }
                }
              }

              else if (v44[3426])
              {
                bzero(buf, 0x400uLL);
                v142 = fcntl(v109, 50, buf);
                if (LOBYTE(buf[0].st_dev))
                {
                  v143 = v142 < 0;
                }

                else
                {
                  v143 = 1;
                }

                if (v143)
                {
                  v144 = 0;
                }

                else
                {
                  v144 = buf;
                }

                IVFVectorIndex_s::unlink(v144, v105, 0);
              }

              if ((v307 & 0x1100) == 0x100)
              {
                snprintf(v332, 0x400uLL, "%s%s", v105, "topK.v2.mdplistc");
                v145 = fd_create_protected(v109, v332, 0, 0);
                *(v35 + 14488) = v145;
                if (v145)
                {
                  memset(buf, 0, 144);
                  if (fd_stat(v145, buf) != -1)
                  {
                    v146 = fd_mmap(*(v35 + 14488));
                    if (v146 != -1)
                    {
                      v147 = v146;
                      *v326 = v146;
                      *&v326[8] = buf[0].st_size;
                      *&v326[16] = 0;
                      v313[0] = 1;
                      v313[1] = v326;
                      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
                      v320 = 0;
                      v319 = 0;
                      v318 = 0;
                      v317 = 0;
                      v149 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v313, 0, add_explicit + 1);
                      v319 = HIDWORD(v149);
                      v320 = v149;
                      v318 = v150;
                      v317 = v151;
                      v152 = threadData[9 * v149 + 1] + 320 * HIDWORD(v149);
                      *(v152 + 216) = 0;
                      v153 = *(v152 + 312);
                      v154 = *(v152 + 224);
                      v155 = v152;
                      if (v154)
                      {
                        v154(*(v152 + 288));
                      }

                      v316 = v320;
                      v315 = v319;
                      v314 = v318;
                      v312 = v317;
                      if (_setjmp(v155))
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          *v311 = 0;
                          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v311, 2u);
                        }

                        v155[78] = v153;
                        CIOnThreadCleanUpReset(v312);
                        dropThreadId(v316, 1, add_explicit + 1);
                        CICleanUpReset(v316, v314);
                      }

                      else
                      {
                        v159 = *MEMORY[0x1E695E480];
                        *(v35 + 14496) = _MDPlistContainerCreateWithBytes();
                        v160 = threadData[9 * v316 + 1] + 320 * v315;
                        *(v160 + 312) = v153;
                        v161 = *(v160 + 232);
                        if (v161)
                        {
                          v161(*(v160 + 288));
                        }

                        dropThreadId(v316, 0, add_explicit + 1);
                      }

                      v105 = v301;
                      v109 = v302;
                      if (!*(v35 + 14496))
                      {
                        munmap(v147, buf[0].st_size);
                      }
                    }
                  }
                }
              }

              v162 = *(v35 + 15576);
              if (!v162)
              {
LABEL_233:
                v183 = a9;
                if ((v299 & 2) != 0)
                {
                  goto LABEL_234;
                }

                snprintf(v332, 0x400uLL, "%s%s", v105, "indexUpdates");
                if ((v307 & 0x1000) != 0)
                {
                  if (v300)
                  {
                    v216 = __si_assert_copy_extra_3233(0, -1);
                    v217 = v216;
                    v218 = "";
                    if (v216)
                    {
                      v218 = v216;
                    }

                    v284 = "!wasFastFlush";
                    v285 = v218;
                    v219 = 2215;
                    goto LABEL_303;
                  }

                  v192 = 0;
                }

                else
                {
                  v192 = fd_create_protected(v109, v332, v298, 0);
                  if (!v192)
                  {
                    goto LABEL_244;
                  }
                }

                LOBYTE(v314) = 0;
                *(v35 + 8) = 1;
                v198 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
                *v326 = 0;
                LODWORD(v313[0]) = 0;
                v320 = 0;
                v319 = 0;
                v199 = setThreadIdAndInfo(*(v35 + 64), sIndexExceptionCallbacks, v35, 0x20000000, v198 + 1);
                LODWORD(v313[0]) = HIDWORD(v199);
                *v326 = v199;
                v320 = v200;
                v319 = v201;
                v202 = threadData[9 * v199 + 1] + 320 * HIDWORD(v199);
                *(v202 + 216) = 0;
                v203 = *(v202 + 312);
                v204 = *(v202 + 224);
                if (v204)
                {
                  v204(*(v202 + 288));
                }

                v318 = *v326;
                v317 = v313[0];
                v316 = v320;
                v315 = v319;
                if (_setjmp(v202))
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf[0].st_dev) = 0;
                    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
                  }

                  *(v202 + 312) = v203;
                  if ((~*(v202 + 212) & 0xA0000000) == 0)
                  {
                    v205 = *(v202 + 288);
                    if (v205)
                    {
                      _CIMakeInvalid(v205);
                    }
                  }

                  CIOnThreadCleanUpReset(v315);
                  dropThreadId(v318, 1, v198 + 1);
                  CICleanUpReset(v318, v316);
                  *(v35 + 8) = 0;
                  goto LABEL_265;
                }

                if ((v307 & 0x1000) != 0)
                {
                  v210 = 0;
                  LOBYTE(v211) = 0;
LABEL_287:
                  v212 = v211;
                  v213 = threadData[9 * v318 + 1] + 320 * v317;
                  *(v213 + 312) = v203;
                  v214 = *(v213 + 232);
                  if (v214)
                  {
                    v214(*(v213 + 288));
                  }

                  dropThreadId(v318, 0, v198 + 1);
                  *(v35 + 8) = 0;
                  if (v212)
                  {
                    if (v192)
                    {
                      store_stream_destroy(&v322);
                      fd_release(v192);
                    }

                    goto LABEL_244;
                  }

                  v183 = a9;
                  if (v210)
                  {
                    free(v210);
                  }

LABEL_265:
                  if ((v307 & 0x1000) == 0)
                  {
                    store_stream_destroy(&v322);
                    fd_release(v192);
                    if (v323)
                    {
                      goto LABEL_244;
                    }
                  }

                  if (*v183)
                  {
                    goto LABEL_244;
                  }

LABEL_234:
                  v184 = *(v35 + 14392);
                  v185 = v306;
                  if (v184)
                  {
                    if (v44[2914] == 1)
                    {
                      *(v184 + 608) = getPropertyStringCallback;
                    }

                    *(v184 + 280) = v306 + 3546;
                  }

                  *(v35 + 8) = 1;
                  if ((v304 | v308))
                  {
                    if (!v309)
                    {
LABEL_241:
                      *v43 = 0;
                      goto LABEL_244;
                    }

LABEL_240:
                    v186 = *(v185 + 3734);
                    v187 = *(v185 + 3742);
                    *(v309 + 16) = *(v185 + 3738);
                    *(v309 + 32) = v187;
                    *v309 = v186;
                    v188 = *(v185 + 3746);
                    v189 = *(v185 + 3750);
                    v190 = *(v185 + 3754);
                    *(v309 + 96) = *(v35 + 15032);
                    *(v309 + 64) = v189;
                    *(v309 + 80) = v190;
                    *(v309 + 48) = v188;
                    goto LABEL_241;
                  }

                  if (indexShadowFiles(v35, 1, v331, v183))
                  {
                    *v43 = -1;
                    v193 = *__error();
                    v194 = _SILogForLogForCategory(0);
                    if (!os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
                    {
LABEL_283:
                      *__error() = v193;
                      goto LABEL_244;
                    }

                    v195 = *v43;
                    buf[0].st_dev = 136315906;
                    *&buf[0].st_mode = "openIndex";
                    WORD2(buf[0].st_ino) = 1024;
                    *(&buf[0].st_ino + 6) = 2420;
                    HIWORD(buf[0].st_uid) = 1024;
                    buf[0].st_gid = v195;
                    LOWORD(buf[0].st_rdev) = 2080;
                    *(&buf[0].st_rdev + 2) = v305;
                    v196 = "%s:%d: index shadow err:%d at %s\n";
                    v197 = buf;
                  }

                  else
                  {
                    bzero(buf, 0x1000uLL);
                    v313[0] = buf;
                    indexStoreToBuffer(v35, v313);
                    if (!indexCommitShadow(v35, buf))
                    {
                      fd_sync(*(v35 + 14472), 1);
                      v185 = v306;
                      if (!v309)
                      {
                        goto LABEL_241;
                      }

                      goto LABEL_240;
                    }

                    *v43 = -1;
                    v193 = *__error();
                    v194 = _SILogForLogForCategory(0);
                    if (!os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_283;
                    }

                    v215 = *v43;
                    *v326 = 136315906;
                    *&v326[4] = "openIndex";
                    *&v326[12] = 1024;
                    *&v326[14] = 2429;
                    *&v326[18] = 1024;
                    *&v326[20] = v215;
                    v327 = 2080;
                    v328 = v305;
                    v196 = "%s:%d: index commit shadow err:%d at %s\n";
                    v197 = v326;
                  }

                  _os_log_error_impl(&dword_1C278D000, v194, OS_LOG_TYPE_ERROR, v196, v197, 0x22u);
                  goto LABEL_283;
                }

                v206 = store_stream_init(&v322, v192, 0);
                if (dword_1EBF46AF4 >= 5)
                {
                  v220 = v206;
                  v221 = *__error();
                  v222 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0].st_dev = 134217984;
                    *&buf[0].st_mode = *(&v323 + 1) - v324 + *(&v324 + 1);
                    _os_log_impl(&dword_1C278D000, v222, OS_LOG_TYPE_DEFAULT, "Post init at %lld", buf, 0xCu);
                  }

                  *__error() = v221;
                  v206 = v220;
                }

                if (v323)
                {
                  v207 = 0;
                }

                else
                {
                  v207 = v206;
                }

                if (v207 != 1)
                {
                  goto LABEL_285;
                }

                v208 = v300;
                if (!v324)
                {
                  v208 = 0;
                }

                if (v208 != 1)
                {
LABEL_285:
                  v210 = 0;
                  LOBYTE(v211) = 0;
LABEL_286:
                  v43 = v310;
                  goto LABEL_287;
                }

                if (dword_1EBF46AF4 >= 5)
                {
                  v223 = *__error();
                  v224 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0].st_dev = 134217984;
                    *&buf[0].st_mode = *(&v323 + 1) - v324 + *(&v324 + 1);
                    _os_log_impl(&dword_1C278D000, v224, OS_LOG_TYPE_DEFAULT, "At start %lld", buf, 0xCu);
                  }

                  *__error() = v223;
                  if ((v307 & 0x40) == 0)
                  {
                    goto LABEL_280;
                  }
                }

                else if ((v307 & 0x40) == 0)
                {
LABEL_280:
                  v209 = 0;
                  goto LABEL_313;
                }

                v209 = *(v35 + 4928) + 4384;
LABEL_313:
                v293 = v209;
                vint32_3407 = store_stream_read_vint32_3407(&v322);
                v226 = vint32_3407;
                if (dword_1EBF46AF4 >= 5)
                {
                  v264 = *__error();
                  v265 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0].st_dev = 134217984;
                    *&buf[0].st_mode = *(&v323 + 1) - v324 + *(&v324 + 1);
                    _os_log_impl(&dword_1C278D000, v265, OS_LOG_TYPE_DEFAULT, "Post version at %lld", buf, 0xCu);
                  }

                  *__error() = v264;
                  if (v226 != 2)
                  {
                    goto LABEL_375;
                  }
                }

                else if (vint32_3407 != 2)
                {
                  goto LABEL_375;
                }

                v227 = (a10 - 111) < 4;
                if (!v303)
                {
                  v227 = (a10 - 95) < 8;
                }

                if (v227)
                {
                  v228 = store_stream_read_vint32_3407(&v322);
                  v296 = store_stream_read_vint32_3407(&v322);
                  numBits = store_stream_read_vint32_3407(&v322);
                  v229 = atomic_load(v306 + 9);
                  if (v229 < 0)
                  {
                    v230 = store_stream_read_vint32_3407(&v322);
                  }

                  else
                  {
                    v230 = 0;
                  }

                  v231 = v230;
                  if (v296 <= v228)
                  {
                    v232 = v228;
                  }

                  else
                  {
                    v232 = v296;
                  }

                  if (v232 <= numBits)
                  {
                    v233 = numBits;
                  }

                  else
                  {
                    v233 = v232;
                  }

                  v294 = v231;
                  if (v231 > v233)
                  {
                    v233 = v231;
                  }

                  v234 = malloc_type_malloc((v233 + 7) >> 3, 0xF4248005uLL);
                  if (v234)
                  {
                    v235 = v234;
                    if (dword_1EBF46AF4 >= 5)
                    {
                      v268 = *__error();
                      v269 = _SILogForLogForCategory(10);
                      if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
                      {
                        buf[0].st_dev = 134217984;
                        *&buf[0].st_mode = *(&v323 + 1) - v324 + *(&v324 + 1);
                        _os_log_impl(&dword_1C278D000, v269, OS_LOG_TYPE_DEFAULT, "Pre-loop at %lld", buf, 0xCu);
                      }

                      *__error() = v268;
                    }

                    bytes = v235;
                    if (*a9)
                    {
                      goto LABEL_370;
                    }

                    if (store_stream_read_bytes_3410(&v322, v235, (v228 + 7) >> 3) == (v228 + 7) >> 3)
                    {
                      v236 = CFBitVectorCreate(0, v235, v228);
                      if (v236)
                      {
                        v237 = v236;
                        if (v228)
                        {
                          for (i = 0; i != v228; ++i)
                          {
                            v239 = CFBitVectorGetBitAtIndex(v237, i) != 0;
                            bit_vector_set_3411(v306 + 1176, i, v239);
                          }
                        }

                        CFRelease(v237);
                        if (dword_1EBF46AF4 >= 5)
                        {
                          v276 = *__error();
                          v277 = _SILogForLogForCategory(10);
                          if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
                          {
                            buf[0].st_dev = 134217984;
                            *&buf[0].st_mode = *(&v323 + 1) - v324 + *(&v324 + 1);
                            _os_log_impl(&dword_1C278D000, v277, OS_LOG_TYPE_DEFAULT, "Post bv1 at %lld", buf, 0xCu);
                          }

                          *__error() = v276;
                        }

                        if (*a9)
                        {
                          goto LABEL_370;
                        }

                        if (store_stream_read_bytes_3410(&v322, bytes, (v296 + 7) >> 3) == (v296 + 7) >> 3)
                        {
                          v240 = CFBitVectorCreate(0, bytes, v296);
                          if (v240)
                          {
                            v241 = v240;
                            if (v296)
                            {
                              for (j = 0; j != v296; ++j)
                              {
                                v243 = CFBitVectorGetBitAtIndex(v241, j) != 0;
                                bit_vector_set_3411(v306 + 1766, j, v243);
                              }
                            }

                            CFRelease(v241);
                            if (dword_1EBF46AF4 >= 5)
                            {
                              v278 = *__error();
                              v279 = _SILogForLogForCategory(10);
                              if (os_log_type_enabled(v279, OS_LOG_TYPE_DEFAULT))
                              {
                                buf[0].st_dev = 134217984;
                                *&buf[0].st_mode = *(&v323 + 1) - v324 + *(&v324 + 1);
                                _os_log_impl(&dword_1C278D000, v279, OS_LOG_TYPE_DEFAULT, "Post bv2 at %lld", buf, 0xCu);
                              }

                              *__error() = v278;
                            }

                            if (*a9)
                            {
                              goto LABEL_370;
                            }

                            if (store_stream_read_bytes_3410(&v322, bytes, (numBits + 7) >> 3) == (numBits + 7) >> 3)
                            {
                              v244 = CFBitVectorCreate(0, bytes, numBits);
                              if (v244)
                              {
                                v245 = v244;
                                if (numBits)
                                {
                                  for (k = 0; k != numBits; ++k)
                                  {
                                    v247 = CFBitVectorGetBitAtIndex(v245, k) != 0;
                                    bit_vector_set_3411(v306 + 579, k, v247);
                                  }
                                }

                                CFRelease(v245);
                                if (dword_1EBF46AF4 >= 5)
                                {
                                  v280 = *__error();
                                  v281 = _SILogForLogForCategory(10);
                                  if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
                                  {
                                    buf[0].st_dev = 134217984;
                                    *&buf[0].st_mode = *(&v323 + 1) - v324 + *(&v324 + 1);
                                    _os_log_impl(&dword_1C278D000, v281, OS_LOG_TYPE_DEFAULT, "Post bv3 at %lld", buf, 0xCu);
                                  }

                                  *__error() = v280;
                                  if ((v307 & 0x40) == 0)
                                  {
LABEL_361:
                                    if (!*a9)
                                    {
                                      if (dword_1EBF46AF4 >= 5)
                                      {
                                        v282 = *__error();
                                        v283 = _SILogForLogForCategory(10);
                                        if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                                        {
                                          buf[0].st_dev = 134217984;
                                          *&buf[0].st_mode = *(&v323 + 1) - v324 + *(&v324 + 1);
                                          _os_log_impl(&dword_1C278D000, v283, OS_LOG_TYPE_DEFAULT, "Post bv4 at %lld", buf, 0xCu);
                                        }

                                        *__error() = v282;
                                      }

                                      if (*(v35 + 46))
                                      {
                                        v252 = 32;
                                      }

                                      else
                                      {
                                        v252 = 0;
                                      }

                                      v253 = *(v35 + 80);
                                      v254 = *(v35 + 68);
                                      v255 = atomic_load(v306 + 9);
                                      updated = TermUpdateSetRestore(&v322, _indexProgress, v35, v253, v254, v252, v254, (v255 >> 3) & 1, *(v35 + 14384), *(v35 + 56), *(v35 + 4936));
                                      *(v35 + 14392) = updated;
                                      if (!updated)
                                      {
                                        v263 = v323;
                                        if (v323 == 22)
                                        {
                                          __si_set_error_str(1, "%s:%u: %s", v257, v258, v259, v260, v261, v262, "JHContentIndex.c");
                                          _si_set_invalid_term_update_set();
                                        }

                                        else
                                        {
                                          bzero(buf, 0x400uLL);
                                          snprintf(buf, 0x400uLL, "restoring term update set failed %d", v263);
                                          __si_set_error_str(1, "%s:%u: %s", v270, v271, v272, v273, v274, v275, "JHContentIndex.c");
                                        }

                                        if (!v323)
                                        {
                                          LODWORD(v323) = -1;
                                        }
                                      }

                                      LOBYTE(v211) = 0;
                                      if (!v228 && !v296 && !numBits && !v294)
                                      {
                                        v211 = *(v35 + 14392);
                                        if (v211)
                                        {
                                          atomic_load((*(v211 + 24) + 16));
                                          LOBYTE(v211) = 0;
                                        }
                                      }

                                      goto LABEL_371;
                                    }

LABEL_370:
                                    LOBYTE(v211) = 0;
LABEL_371:
                                    v210 = bytes;
                                    goto LABEL_286;
                                  }
                                }

                                else if ((v307 & 0x40) == 0)
                                {
                                  goto LABEL_361;
                                }

                                if (!*(v35 + 4928))
                                {
                                  goto LABEL_361;
                                }

                                if (*a9)
                                {
                                  goto LABEL_370;
                                }

                                if (store_stream_read_bytes_3410(&v322, bytes, (v294 + 7) >> 3) == (v294 + 7) >> 3)
                                {
                                  v248 = CFBitVectorCreate(0, bytes, v294);
                                  if (v248)
                                  {
                                    v249 = v248;
                                    if (v294)
                                    {
                                      for (m = 0; m != v294; ++m)
                                      {
                                        v251 = CFBitVectorGetBitAtIndex(v249, m) != 0;
                                        bit_vector_set_3411(v293, m, v251);
                                      }
                                    }

                                    **(v35 + 4928) = 1;
                                    CFRelease(v249);
                                    goto LABEL_361;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    LODWORD(v323) = -1;
                    goto LABEL_370;
                  }

                  v266 = __si_assert_copy_extra_3233(0, -1);
                  v217 = v266;
                  v267 = "";
                  if (v266)
                  {
                    v267 = v266;
                  }

                  v284 = "bits";
                  v285 = v267;
                  v219 = 2276;
LABEL_303:
                  __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", v219, v284, v285);
                  free(v217);
                  if (__valid_fs(-1))
                  {
                    MEMORY[0xBAD] = -559038737;
                    abort();
                  }

                  MEMORY[0xC00] = -559038737;
                  abort();
                }

LABEL_375:
                v210 = 0;
                LODWORD(v323) = -1;
                LOBYTE(v211) = 1;
                goto LABEL_286;
              }

              LOBYTE(v314) = 0;
              *(v35 + 8) = 1;
              v163 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
              *v326 = 0;
              LODWORD(v313[0]) = 0;
              v320 = 0;
              v319 = 0;
              v164 = setThreadIdAndInfo(*(v35 + 64), sIndexExceptionCallbacks, v35, 0x20000000, v163 + 1);
              LODWORD(v313[0]) = HIDWORD(v164);
              *v326 = v164;
              v320 = v165;
              v319 = v166;
              v167 = threadData[9 * v164 + 1] + 320 * HIDWORD(v164);
              *(v167 + 216) = 0;
              v168 = *(v167 + 312);
              v169 = *(v167 + 224);
              if (v169)
              {
                v169(*(v167 + 288));
              }

              v318 = *v326;
              v317 = v313[0];
              v316 = v320;
              v315 = v319;
              v109 = v302;
              if (_setjmp(v167))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf[0].st_dev) = 0;
                  _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
                }

                *(v167 + 312) = v168;
                if ((~*(v167 + 212) & 0xA0000000) == 0)
                {
                  v170 = *(v167 + 288);
                  if (v170)
                  {
                    _CIMakeInvalid(v170);
                  }
                }

                CIOnThreadCleanUpReset(v315);
                dropThreadId(v318, 1, v163 + 1);
                CICleanUpReset(v318, v316);
                goto LABEL_232;
              }

              v171 = **(v35 + 104);
              v172 = **(v35 + 112);
              v173 = *storageResolvePtr((v306 + 64), 0, 8, 1);
              v174 = *(v35 + 4928);
              if (v174)
              {
                v175 = *storageResolvePtr(v174 + 8, 0, 8, 1);
              }

              else
              {
                v175 = 0;
              }

              v290 = v175;
              v287 = v162;
              v289 = *__error();
              v176 = _SILogForLogForCategory(10);
              v177 = v176;
              if (v171 <= v162 && v172 <= v162 && v173 <= v162 && v290 <= v162)
              {
                v178 = 2 * (dword_1EBF46AF4 < 4);
                if (os_log_type_enabled(v176, v178))
                {
                  buf[0].st_dev = 134219008;
                  *&buf[0].st_mode = v287;
                  WORD2(buf[0].st_ino) = 2048;
                  *(&buf[0].st_ino + 6) = v171;
                  HIWORD(buf[0].st_gid) = 2048;
                  *&buf[0].st_rdev = v172;
                  LOWORD(buf[0].st_atimespec.tv_sec) = 2048;
                  *(&buf[0].st_atimespec.tv_sec + 2) = v173;
                  WORD1(buf[0].st_atimespec.tv_nsec) = 2048;
                  *(&buf[0].st_atimespec.tv_nsec + 4) = v290;
                  _os_log_impl(&dword_1C278D000, v177, v178, "head:%lld fat:%lld compact:%lld flat:%lld dir:%lld", buf, 0x34u);
                }

                *__error() = v289;
                LOBYTE(v314) = 1;
                v109 = v302;
                v105 = v301;
                goto LABEL_229;
              }

              if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
              {
                buf[0].st_dev = 136316674;
                *&buf[0].st_mode = "openIndex";
                WORD2(buf[0].st_ino) = 1024;
                *(&buf[0].st_ino + 6) = 2184;
                HIWORD(buf[0].st_uid) = 2048;
                *&buf[0].st_gid = v171;
                *(&buf[0].st_rdev + 2) = 2048;
                *(&buf[0].st_rdev + 6) = v172;
                HIWORD(buf[0].st_atimespec.tv_sec) = 2048;
                buf[0].st_atimespec.tv_nsec = v173;
                LOWORD(buf[0].st_mtimespec.tv_sec) = 2048;
                *(&buf[0].st_mtimespec.tv_sec + 2) = v290;
                WORD1(buf[0].st_mtimespec.tv_nsec) = 2048;
                *(&buf[0].st_mtimespec.tv_nsec + 4) = v162;
                _os_log_error_impl(&dword_1C278D000, v177, OS_LOG_TYPE_ERROR, "%s:%d: unexpected sync count %lld %lld %lld %lld, expected %lld", buf, 0x44u);
              }

              *__error() = v289;
              v180 = v171 == v172 && v172 == v173;
              if (v303)
              {
                v109 = v302;
                v105 = v301;
                if (!v180 || v171 != v162 + 1 || v290 > v162 + 1)
                {
                  goto LABEL_229;
                }
              }

              else
              {
                if (v173 != v290)
                {
                  v180 = 0;
                }

                v109 = v302;
                v105 = v301;
                if (!v180 || v290 != v162 + 1)
                {
                  goto LABEL_229;
                }
              }

              LOBYTE(v314) = 1;
LABEL_229:
              v181 = threadData[9 * v318 + 1] + 320 * v317;
              *(v181 + 312) = v168;
              v182 = *(v181 + 232);
              if (v182)
              {
                v182(*(v181 + 288));
              }

              dropThreadId(v318, 0, v163 + 1);
LABEL_232:
              *(v35 + 8) = 0;
              if (v314)
              {
                goto LABEL_233;
              }

              goto LABEL_242;
            }

            memset(buf, 0, 144);
            if (fd_stat(*(v35 + 9432), buf) == -1 || (st_size = buf[0].st_size, buf[0].st_size < 0x100000001uLL))
            {
LABEL_151:
              v109 = v302;
              goto LABEL_152;
            }

            LOBYTE(v312) = 0;
            *(v35 + 8) = 1;
            v120 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            LODWORD(v313[0]) = 0;
            v320 = 0;
            v319 = 0;
            v318 = 0;
            v121 = setThreadIdAndInfo(*(v35 + 64), sIndexExceptionCallbacks, v35, 0x20000000, v120 + 1);
            v320 = HIDWORD(v121);
            LODWORD(v313[0]) = v121;
            v319 = v122;
            v318 = v123;
            v124 = threadData[9 * v121 + 1] + 320 * HIDWORD(v121);
            *(v124 + 216) = 0;
            v125 = *(v124 + 312);
            v126 = *(v124 + 224);
            v127 = v124;
            if (v126)
            {
              v126(*(v124 + 288));
            }

            v317 = v313[0];
            v316 = v320;
            v315 = v319;
            v314 = v318;
            if (_setjmp(v127))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v326 = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v326, 2u);
              }

              *(v127 + 312) = v125;
              if ((~*(v127 + 212) & 0xA0000000) == 0)
              {
                v128 = *(v127 + 288);
                if (v128)
                {
                  _CIMakeInvalid(v128);
                }
              }

              CIOnThreadCleanUpReset(v314);
              dropThreadId(v317, 1, v120 + 1);
              CICleanUpReset(v317, v315);
              v129 = 0;
            }

            else
            {
              CompactTermOffset = bt_lastCompactTermOffset((v306 + 24));
              v286 = *__error();
              v130 = _SILogForLogForCategory(10);
              v131 = 2 * (dword_1EBF46AF4 < 4);
              if (os_log_type_enabled(v130, v131))
              {
                *v326 = 134217984;
                *&v326[4] = CompactTermOffset;
                _os_log_impl(&dword_1C278D000, v130, v131, "last term offset: %llu", v326, 0xCu);
              }

              *__error() = v286;
              LOBYTE(v312) = 1;
              v132 = threadData[9 * v317 + 1] + 320 * v316;
              *(v132 + 312) = v125;
              v133 = *(v132 + 232);
              if (v133)
              {
                v133(*(v132 + 288));
              }

              dropThreadId(v317, 0, v120 + 1);
              v129 = CompactTermOffset;
            }

            v43 = v310;
            *(v35 + 8) = 0;
            if (v312 == 1)
            {
              v134 = *(v35 + 4928);
              *(v134 + 4440) = v129;
              *(v134 + 4448) = st_size;
              v105 = v301;
              v110 = v70;
              goto LABEL_151;
            }

LABEL_242:
            v69 = -1;
            goto LABEL_243;
          }

          v81 = *(v35 + 60);
          if (*(v35 + 68) > v81)
          {
            *(v35 + 68) = v81 + 1;
          }

          v82 = *(v35 + 72);
          if (*(v35 + 45) == 1)
          {
            v83 = (v82 + 3) >> 2;
          }

          else
          {
            v83 = (v82 + 4) / 5uLL;
          }

          v84 = (8 * *MEMORY[0x1E69E9AC8] - 1 + v83) / (8 * *MEMORY[0x1E69E9AC8]);
          v85 = 2950786367;
        }

        *(v35 + 14440) = malloc_type_calloc(1uLL, v84, v85);
        v87 = 1;
        goto LABEL_88;
      }
    }

    *(v35 + 46) = 1;
    goto LABEL_71;
  }

LABEL_244:
  if (*v43)
  {
    freeIndex(v35);
    result = 0;
  }

  else
  {
    result = v35;
  }

LABEL_247:
  v191 = *MEMORY[0x1E69E9840];
  return result;
}

void __openIndex_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = *(a1 + 32);
  *(v9 + 4920) += a9;
  if (a8 == 4 && *(v9 + 45) == 1)
  {
    writeVectorIndexDrop(*(v9 + 15716), a9, *(v9 + 15203), *(a1 + 40), a3);
  }
}

uint64_t store_stream_read_vint32_3407(unsigned int *a1)
{
  v1 = a1;
  v2 = *(a1 + 5);
  if ((*(a1 + 4) - v2) < 6)
  {
    v16 = 0;
    LODWORD(result) = 0;
    __dst = 0;
    while (1)
    {
      v17 = result;
      v18 = v1;
      if (store_stream_read_bytes_3410(v1, &__dst, 1uLL) != 1)
      {
        break;
      }

      result = ((__dst & 0x7F) << v16) | v17;
      v16 += 7;
      v1 = v18;
      if ((__dst & 0x80) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  else
  {
    v3 = *(a1 + 6);
    v4 = v2 + 1;
    result = *(v3 + v2);
    if (*(v3 + v2) < 0)
    {
      v6 = v2 + 2;
      v7 = *(v3 + v4);
      v8 = *(v3 + v4);
      if (v7 < 0)
      {
        v9 = v2 + 3;
        v10 = *(v3 + v6);
        v11 = v10;
        if (v10 < 0)
        {
          v12 = v2 + 4;
          v13 = *(v3 + v9);
          v14 = *(v3 + v9);
          if (v13 < 0)
          {
            v15 = *(v3 + v12);
            *(v1 + 5) = v2 + 5;
            if (v15 < 0)
            {
              return ((v14 & 0x7F) << 21) | (v15 << 28) | ((v11 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | (result & 0x7F);
            }

            else
            {
              result = 0;
              v1[4] = 22;
            }
          }

          else
          {
            result = ((v11 & 0x7F) << 14) | (v14 << 21) | ((v8 & 0x7F) << 7) | (result & 0x7F);
            *(v1 + 5) = v12;
          }
        }

        else
        {
          result = ((v8 & 0x7F) << 7) | (v10 << 14) | (result & 0x7F);
          *(v1 + 5) = v9;
        }
      }

      else
      {
        result = result & 0x7F | (v8 << 7);
        *(v1 + 5) = v6;
      }
    }

    else
    {
      *(v1 + 5) = v4;
    }
  }

  return result;
}

size_t store_stream_read_bytes_3410(unsigned int *a1, char *__dst, size_t __n)
{
  v4 = __dst;
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  if (v7 + __n > v6)
  {
    v8 = v6 - v7;
    if (v6 != v7)
    {
      memcpy(__dst, (*(a1 + 6) + v7), v6 - v7);
      v6 = *(a1 + 4);
      *(a1 + 5) += v8;
    }

    v11 = prot_pread(*a1, *(a1 + 6), v6, *(a1 + 3));
    if (v11 == -1)
    {
      v8 = 0;
    }

    else
    {
      *(a1 + 4) = v11;
      *(a1 + 5) = 0;
      *(a1 + 3) += v11;
      if (!v11)
      {
        v9 = 0;
        return v8 + v9;
      }

      v4 += v8;
      __n -= v8;
      if (__n <= v11)
      {
        v7 = 0;
        goto LABEL_3;
      }

      __na = v11;
      while (1)
      {
        memcpy(v4, *(a1 + 6), __na);
        v12 = *(a1 + 6);
        *(a1 + 5) += __na;
        v13 = prot_pread(*a1, v12, *(a1 + 4), *(a1 + 3));
        if (v13 == -1)
        {
          break;
        }

        *(a1 + 4) = v13;
        *(a1 + 5) = 0;
        *(a1 + 3) += v13;
        if (!v13)
        {
          v9 = v8;
          v8 = __na;
          return v8 + v9;
        }

        v7 = 0;
        v4 += __na;
        __n -= __na;
        v8 += __na;
        __na = v13;
        if (__n <= v13)
        {
          goto LABEL_3;
        }
      }
    }

    a1[4] = *__error();
    v9 = v8;
    v8 = 0;
    return v8 + v9;
  }

  v8 = 0;
LABEL_3:
  memcpy(v4, (*(a1 + 6) + v7), __n);
  *(a1 + 5) += __n;
  v9 = v8;
  v8 = __n;
  return v8 + v9;
}

void bit_vector_set_3411(CFIndex *a1, CFIndex a2, CFBit a3)
{
  if (a2 < 0)
  {
    v7 = __si_assert_copy_extra_3233(0, -1);
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 142, "bitIndex >= 0", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  bit_vector_internal_touch_for_set(a1, a2);
  v6 = a1[2];

  CFBitVectorSetBitAtIndex(v6, a2, a3);
}

uint64_t indexShadowFiles(uint64_t a1, char a2, _DWORD *a3, int *a4)
{
  v74 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  if (*(a1 + 15203) == 1)
  {
    if (indexShadowFiles__COUNT_)
    {
      v8 = 0;
LABEL_29:
      v28 = 22;
      goto LABEL_30;
    }

    indexShadowFiles__COUNT_ = 1;
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      v8 = 0;
      *__error() = v29;
      goto LABEL_29;
    }

    *buf = 136315650;
    *&buf[4] = "indexShadowFiles";
    v69 = 1024;
    v70 = 3223;
    v71 = 2080;
    *v72 = a1 + 15208;
    v31 = "%s:%d: trying to modify read only index %s";
LABEL_51:
    _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x1Cu);
    goto LABEL_28;
  }

  if (*(a1 + 8) != 1 || *(a1 + 15196) == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315650;
    *&buf[4] = "indexShadowFiles";
    v69 = 1024;
    v70 = 3232;
    v71 = 2080;
    *v72 = a1 + 15208;
    v31 = "%s:%d: can't shadow %s";
    goto LABEL_51;
  }

  v9 = (a1 + 36);
  v10 = atomic_load((a1 + 36));
  if ((v10 & 1) == 0 || (v11 = atomic_load(v9), (v11 & 2) != 0) || (v12 = *(a1 + 14392)) != 0 && (v13 = atomic_load((*(v12 + 24) + 16))) != 0)
  {
    v14 = 0;
  }

  else
  {
    atomic_fetch_or((a1 + 36), 2u);
    v43 = *__error();
    v44 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 56);
      *buf = 136315394;
      *&buf[4] = a1 + 15208;
      v69 = 1024;
      v70 = v45;
      _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "mark index %s (%u) read-only during shadow", buf, 0x12u);
    }

    *__error() = v43;
    v46 = atomic_load((a1 + 36));
    a3[2] = v46;
    v47 = *(a1 + 14392);
    if (v47)
    {
      if (atomic_load((*(v47 + 24) + 16)))
      {
        v65 = __si_assert_copy_extra_3233(0, -1);
        v66 = v65;
        v67 = "";
        if (v65)
        {
          v67 = v65;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 3258, "0 == TermUpdateSetTermCount(cindex->_deltaSet)", v67);
        free(v66);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      _db_write_lock(a1 + 14720);
      TermUpdateSetRelease(*(a1 + 14392));
      atomic_fetch_add(gTermUpdateSetCount, 0xFFFFFFFF);
      *(a1 + 14392) = 0;
      db_write_unlock(a1 + 14720);
    }

    v14 = 1;
  }

  v15 = atomic_load(v9);
  v16 = (a1 + 15208);
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), "shadowIndexHead");
  v17 = fd_create_protected(*(a1 + 64), __str, 536872450, 3u);
  if (!v17)
  {
    v28 = *__error();
    v36 = *__error();
    v37 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "indexShadowFiles";
      v69 = 1024;
      v70 = 3277;
      v71 = 1024;
      *v72 = v28;
      *&v72[4] = 2080;
      *&v72[6] = __str;
      _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    }

    v8 = 0;
    *__error() = v36;
    goto LABEL_30;
  }

  v8 = v17;
  *buf = 0;
  v18 = _fd_acquire_fd(v17, buf);
  if (v18 != -1)
  {
    *(v8 + 56) |= 1u;
    v19 = v18;
    fcntl(v18, 48, 1);
    fcntl(v19, 76, *(v8 + 56) & 1);
    _fd_release_fd(v8, v19, 0, *buf);
  }

  *a3 = 1;
  v20 = fd_pwrite(v8, a3, 0x1000uLL, 0);
  *a3 = *(a1 + 4);
  if (v20 == -1)
  {
    v28 = *__error();
    v38 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "indexShadowFiles";
      v69 = 1024;
      v70 = 3288;
      v71 = 1024;
      *v72 = v28;
      v40 = "%s:%d: write err: %d";
LABEL_43:
      v41 = v39;
      v42 = 24;
LABEL_55:
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
      goto LABEL_81;
    }

    goto LABEL_81;
  }

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
    v16 = (a1 + 15208);
  }

  *buf = 0;
  v21 = _fd_acquire_fd(v8, buf);
  if (v21 != -1)
  {
    v22 = v21;
    prot_fsync(v21, 0);
    _fd_release_fd(v8, v22, 0, *buf);
  }

  if ((v15 & 2) != 0)
  {
    goto LABEL_65;
  }

  v23 = v14;
  Current = CFAbsoluteTimeGetCurrent();
  snprintf(__str, 0x400uLL, "%s%s", v16, "shadowIndexTermIds");
  v25 = fd_create_protected(*(a1 + 64), __str, 536871426, 3u);
  if (!v25)
  {
    v28 = *__error();
    v38 = *__error();
    v49 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "indexShadowFiles";
      v69 = 1024;
      v70 = 3303;
      v71 = 1024;
      *v72 = v28;
      *&v72[4] = 2080;
      *&v72[6] = __str;
      v40 = "%s:%d: open err: %d, %s";
LABEL_54:
      v41 = v49;
      v42 = 34;
      goto LABEL_55;
    }

LABEL_81:
    *__error() = v38;
    goto LABEL_30;
  }

  v26 = v25;
  fd_no_cache(v25);
  v27 = termIdStoreShadow(a1 + 4984, v26, a2 & 1, a4);
  if (v27)
  {
LABEL_24:
    v28 = v27;
    fd_release(v26);
LABEL_30:
    v32 = *__error();
    v33 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "indexShadowFiles";
      v69 = 1024;
      v70 = 3400;
      v71 = 2080;
      *v72 = a1 + 15208;
      *&v72[8] = 1024;
      *&v72[10] = 3400;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
    }

    *__error() = v32;
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
      *(a1 + 12) = v28;
    }

    fd_release(v8);
    if (v28)
    {
      result = v28;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    goto LABEL_37;
  }

  fd_sync(v26, 0);
  fd_release(v26);
  v50 = *__error();
  v51 = _SILogForLogForCategory(10);
  v52 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v51, v52))
  {
    v53 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 134217984;
    *&buf[4] = v53;
    _os_log_impl(&dword_1C278D000, v51, v52, "shadowIndexTermIds took %f seconds", buf, 0xCu);
  }

  *__error() = v50;
  v54 = CFAbsoluteTimeGetCurrent();
  snprintf(__str, 0x400uLL, "%s%s", v16, "shadowIndexPositionTable");
  v55 = fd_create_protected(*(a1 + 64), __str, 536871426, 3u);
  if (!v55)
  {
    v28 = *__error();
    v38 = *__error();
    v49 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

    *buf = 136315906;
    *&buf[4] = "indexShadowFiles";
    v69 = 1024;
    v70 = 3324;
    v71 = 1024;
    *v72 = v28;
    *&v72[4] = 2080;
    *&v72[6] = __str;
    v40 = "%s:%d: open err: %d, %s";
    goto LABEL_54;
  }

  v26 = v55;
  fd_no_cache(v55);
  v27 = termIdStoreShadow(a1 + 9704, v26, a2 & 1, a4);
  if (v27)
  {
    goto LABEL_24;
  }

  fd_sync(v26, 0);
  fd_release(v26);
  v56 = *__error();
  v57 = _SILogForLogForCategory(10);
  v58 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v57, v58))
  {
    v59 = CFAbsoluteTimeGetCurrent() - v54;
    *buf = 134217984;
    *&buf[4] = v59;
    _os_log_impl(&dword_1C278D000, v57, v58, "shadowIndexPositionTable took %f seconds", buf, 0xCu);
  }

  *__error() = v56;
  v60 = bt_shadowTrie(a1 + 96, v16, a2 & 1, a4);
  if (v60)
  {
LABEL_68:
    v28 = v60;
    goto LABEL_30;
  }

  v61 = *(a1 + 4912);
  v14 = v23;
  if (v61)
  {
    shadowVectorIndex(v61, a2 & 1, a4);
  }

LABEL_65:
  v62 = *(a1 + 4928);
  if (v62)
  {
    shadowForwardStore(v62, a2 & 1, a4);
  }

  v60 = _indexShadowGroups(a1, 0);
  if (v60)
  {
    goto LABEL_68;
  }

  if (fd_pwrite(v8, a3, 0x1000uLL, 0) == -1)
  {
    v28 = *__error();
    v38 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

    *buf = 136315650;
    *&buf[4] = "indexShadowFiles";
    v69 = 1024;
    v70 = 3361;
    v71 = 1024;
    *v72 = v28;
    v40 = "%s:%d: write err: %d";
    goto LABEL_43;
  }

  fd_sync(v8, 0);
  if (v14)
  {
    fd_sync(v8, 1);
    if (_os_feature_enabled_impl())
    {
      v63 = *(a1 + 4912);
      if (v63)
      {
        IVFVectorIndex_s::makeReadOnly((v63 + 8));
      }
    }

    storageTruncateAndMakeReadOnly(a1 + 256);
    fd_truncate_and_make_readonly(*(a1 + 208), *(a1 + 128));
    fd_truncate_and_make_readonly(*(a1 + 4672), 1028 * (*(a1 + 240) + 1));
    fd_truncate(*(a1 + 14448), 8 * *(a1 + 68));
    fd_truncate(*(a1 + 14456), 4 * *(a1 + 68));
    fd_truncate(*(a1 + 14464), 8 * *(a1 + 68));
    v64 = atomic_load((a1 + 36));
    if ((v64 & 4) == 0)
    {
      storageTruncateAndMakeReadOnly(a1 + 4984);
      storageTruncateAndMakeReadOnly(a1 + 9704);
    }

    index_DeleteShadow(*(a1 + 64), v16, 1);
  }

  fd_release(v8);
  result = 0;
LABEL_37:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *indexStoreToBuffer(uint64_t a1, void **a2)
{
  v4 = *a2;
  bzero(*a2, 0x1000uLL);
  v5 = *a2;
  *v5++ = *(a1 + 4);
  *a2 = v5;
  v6 = atomic_load((a1 + 32));
  *v5++ = v6;
  *a2 = v5;
  v7 = atomic_load((a1 + 36));
  v8 = v5;
  *v5 = v7;
  v5[1] = *(a1 + 48);
  v5[2] = 0;
  v9 = v5 + 3;
  *a2 = v9;
  v10 = *(a1 + 60);
  if (v10 >> 28)
  {
    *(v8 + 12) = v10 | 0x80;
    *(v8 + 13) = (v10 >> 7) | 0x80;
    *(v8 + 14) = (v10 >> 14) | 0x80;
    *(v8 + 15) = (v10 >> 21) | 0x80;
    *(v8 + 16) = v10 >> 28;
    v11 = 5;
  }

  else if (v10 >= 0x200000)
  {
    *(v8 + 12) = v10 | 0x80;
    *(v8 + 13) = (v10 >> 7) | 0x80;
    *(v8 + 14) = (v10 >> 14) | 0x80;
    *(v8 + 15) = v10 >> 21;
    v11 = 4;
  }

  else if (v10 >= 0x4000)
  {
    *(v8 + 12) = v10 | 0x80;
    *(v8 + 13) = (v10 >> 7) | 0x80;
    *(v8 + 14) = v10 >> 14;
    v11 = 3;
  }

  else if (v10 >= 0x80)
  {
    *(v8 + 12) = v10 | 0x80;
    *(v8 + 13) = v10 >> 7;
    v11 = 2;
  }

  else
  {
    *v9 = v10;
    v11 = 1;
  }

  v12 = *a2 + v11;
  *a2 = v12;
  v13 = *(a1 + 68);
  if (v13 >> 28)
  {
    *v12 = v13 | 0x80;
    v12[1] = (v13 >> 7) | 0x80;
    v12[2] = (v13 >> 14) | 0x80;
    v12[3] = (v13 >> 21) | 0x80;
    v12[4] = v13 >> 28;
    v14 = 5;
  }

  else if (v13 >= 0x200000)
  {
    *v12 = v13 | 0x80;
    v12[1] = (v13 >> 7) | 0x80;
    v12[2] = (v13 >> 14) | 0x80;
    v12[3] = v13 >> 21;
    v14 = 4;
  }

  else if (v13 >= 0x4000)
  {
    *v12 = v13 | 0x80;
    v12[1] = (v13 >> 7) | 0x80;
    v12[2] = v13 >> 14;
    v14 = 3;
  }

  else if (v13 >= 0x80)
  {
    *v12 = v13 | 0x80;
    v12[1] = v13 >> 7;
    v14 = 2;
  }

  else
  {
    *v12 = v13;
    v14 = 1;
  }

  v15 = *a2 + v14;
  *a2 = v15;
  v16 = *(a1 + 72);
  if (v16 >> 28)
  {
    *v15 = v16 | 0x80;
    v15[1] = (v16 >> 7) | 0x80;
    v15[2] = (v16 >> 14) | 0x80;
    v15[3] = (v16 >> 21) | 0x80;
    v15[4] = v16 >> 28;
    v17 = 5;
  }

  else if (v16 >= 0x200000)
  {
    *v15 = v16 | 0x80;
    v15[1] = (v16 >> 7) | 0x80;
    v15[2] = (v16 >> 14) | 0x80;
    v15[3] = v16 >> 21;
    v17 = 4;
  }

  else if (v16 >= 0x4000)
  {
    *v15 = v16 | 0x80;
    v15[1] = (v16 >> 7) | 0x80;
    v15[2] = v16 >> 14;
    v17 = 3;
  }

  else if (v16 >= 0x80)
  {
    *v15 = v16 | 0x80;
    v15[1] = v16 >> 7;
    v17 = 2;
  }

  else
  {
    *v15 = v16;
    v17 = 1;
  }

  v18 = *a2 + v17;
  *a2 = v18;
  v19 = *(a1 + 14936);
  if (v19 >> 28)
  {
    *v18 = v19 | 0x80;
    v18[1] = (v19 >> 7) | 0x80;
    v18[2] = (v19 >> 14) | 0x80;
    v18[3] = (v19 >> 21) | 0x80;
    v18[4] = v19 >> 28;
    v20 = 5;
  }

  else if (v19 >= 0x200000)
  {
    *v18 = v19 | 0x80;
    v18[1] = (v19 >> 7) | 0x80;
    v18[2] = (v19 >> 14) | 0x80;
    v18[3] = v19 >> 21;
    v20 = 4;
  }

  else if (v19 >= 0x4000)
  {
    *v18 = v19 | 0x80;
    v18[1] = (v19 >> 7) | 0x80;
    v18[2] = v19 >> 14;
    v20 = 3;
  }

  else if (v19 >= 0x80)
  {
    *v18 = v19 | 0x80;
    v18[1] = v19 >> 7;
    v20 = 2;
  }

  else
  {
    *v18 = v19;
    v20 = 1;
  }

  v21 = *a2 + v20;
  *a2 = v21;
  v22 = *(a1 + 14944);
  if (v22 >> 28)
  {
    *v21 = v22 | 0x80;
    v21[1] = (v22 >> 7) | 0x80;
    v21[2] = (v22 >> 14) | 0x80;
    v21[3] = (v22 >> 21) | 0x80;
    v21[4] = v22 >> 28;
    v23 = 5;
  }

  else if (v22 >= 0x200000)
  {
    *v21 = v22 | 0x80;
    v21[1] = (v22 >> 7) | 0x80;
    v21[2] = (v22 >> 14) | 0x80;
    v21[3] = v22 >> 21;
    v23 = 4;
  }

  else if (v22 >= 0x4000)
  {
    *v21 = v22 | 0x80;
    v21[1] = (v22 >> 7) | 0x80;
    v21[2] = v22 >> 14;
    v23 = 3;
  }

  else if (v22 >= 0x80)
  {
    *v21 = v22 | 0x80;
    v21[1] = v22 >> 7;
    v23 = 2;
  }

  else
  {
    *v21 = v22;
    v23 = 1;
  }

  v24 = *a2 + v23;
  *a2 = v24;
  if (*(a1 + 4) >= 0x57u)
  {
    v25 = *(a1 + 14952);
    if (v25 >> 28)
    {
      *v24 = v25 | 0x80;
      v24[1] = (v25 >> 7) | 0x80;
      v24[2] = (v25 >> 14) | 0x80;
      v24[3] = (v25 >> 21) | 0x80;
      v24[4] = v25 >> 28;
      v26 = 5;
    }

    else if (v25 >= 0x200000)
    {
      *v24 = v25 | 0x80;
      v24[1] = (v25 >> 7) | 0x80;
      v24[2] = (v25 >> 14) | 0x80;
      v24[3] = v25 >> 21;
      v26 = 4;
    }

    else if (v25 >= 0x4000)
    {
      *v24 = v25 | 0x80;
      v24[1] = (v25 >> 7) | 0x80;
      v24[2] = v25 >> 14;
      v26 = 3;
    }

    else if (v25 >= 0x80)
    {
      *v24 = v25 | 0x80;
      v24[1] = v25 >> 7;
      v26 = 2;
    }

    else
    {
      *v24 = v25;
      v26 = 1;
    }

    v27 = *a2 + v26;
    *a2 = v27;
    v28 = *(a1 + 15008);
    if (v28 >> 28)
    {
      *v27 = v28 | 0x80;
      v27[1] = (v28 >> 7) | 0x80;
      v27[2] = (v28 >> 14) | 0x80;
      v27[3] = (v28 >> 21) | 0x80;
      v27[4] = v28 >> 28;
      v29 = 5;
    }

    else if (v28 >= 0x200000)
    {
      *v27 = v28 | 0x80;
      v27[1] = (v28 >> 7) | 0x80;
      v27[2] = (v28 >> 14) | 0x80;
      v27[3] = v28 >> 21;
      v29 = 4;
    }

    else if (v28 >= 0x4000)
    {
      *v27 = v28 | 0x80;
      v27[1] = (v28 >> 7) | 0x80;
      v27[2] = v28 >> 14;
      v29 = 3;
    }

    else if (v28 >= 0x80)
    {
      *v27 = v28 | 0x80;
      v27[1] = v28 >> 7;
      v29 = 2;
    }

    else
    {
      *v27 = v28;
      v29 = 1;
    }

    *a2 = *a2 + v29;
  }

  storeVInt64(a2, *(a1 + 80));
  v30 = atomic_load((a1 + 16));
  v31 = *a2;
  if (v30 >> 28)
  {
    *v31 = v30 | 0x80;
    v31[1] = (v30 >> 7) | 0x80;
    v31[2] = (v30 >> 14) | 0x80;
    v31[3] = (v30 >> 21) | 0x80;
    v31[4] = v30 >> 28;
    v32 = 5;
  }

  else if (v30 >= 0x200000)
  {
    *v31 = v30 | 0x80;
    v31[1] = (v30 >> 7) | 0x80;
    v31[2] = (v30 >> 14) | 0x80;
    v31[3] = v30 >> 21;
    v32 = 4;
  }

  else if (v30 >= 0x4000)
  {
    *v31 = v30 | 0x80;
    v31[1] = (v30 >> 7) | 0x80;
    v31[2] = v30 >> 14;
    v32 = 3;
  }

  else if (v30 >= 0x80)
  {
    *v31 = v30 | 0x80;
    v31[1] = v30 >> 7;
    v32 = 2;
  }

  else
  {
    *v31 = v30;
    v32 = 1;
  }

  v33 = *a2 + v32;
  *a2 = v33;
  v34 = *(a1 + 52);
  if (v34 >> 28)
  {
    *v33 = v34 | 0x80;
    v33[1] = (v34 >> 7) | 0x80;
    v33[2] = (v34 >> 14) | 0x80;
    v33[3] = (v34 >> 21) | 0x80;
    v33[4] = v34 >> 28;
    v35 = 5;
  }

  else if (v34 >= 0x200000)
  {
    *v33 = v34 | 0x80;
    v33[1] = (v34 >> 7) | 0x80;
    v33[2] = (v34 >> 14) | 0x80;
    v33[3] = v34 >> 21;
    v35 = 4;
  }

  else if (v34 >= 0x4000)
  {
    *v33 = v34 | 0x80;
    v33[1] = (v34 >> 7) | 0x80;
    v33[2] = v34 >> 14;
    v35 = 3;
  }

  else if (v34 >= 0x80)
  {
    *v33 = v34 | 0x80;
    v33[1] = v34 >> 7;
    v35 = 2;
  }

  else
  {
    *v33 = v34;
    v35 = 1;
  }

  v36 = *a2 + v35;
  *a2 = v36;
  v37 = *(a1 + 24);
  if (v37 >> 28)
  {
    *v36 = v37 | 0x80;
    v36[1] = (v37 >> 7) | 0x80;
    v36[2] = (v37 >> 14) | 0x80;
    v36[3] = (v37 >> 21) | 0x80;
    v36[4] = v37 >> 28;
    v38 = 5;
  }

  else if (v37 >= 0x200000)
  {
    *v36 = v37 | 0x80;
    v36[1] = (v37 >> 7) | 0x80;
    v36[2] = (v37 >> 14) | 0x80;
    v36[3] = v37 >> 21;
    v38 = 4;
  }

  else if (v37 >= 0x4000)
  {
    *v36 = v37 | 0x80;
    v36[1] = (v37 >> 7) | 0x80;
    v36[2] = v37 >> 14;
    v38 = 3;
  }

  else if (v37 >= 0x80)
  {
    *v36 = v37 | 0x80;
    v36[1] = v37 >> 7;
    v38 = 2;
  }

  else
  {
    *v36 = v37;
    v38 = 1;
  }

  v39 = *a2 + v38;
  *a2 = v39;
  v40 = *(a1 + 96);
  if (v40 >> 28)
  {
    *v39 = v40 | 0x80;
    v39[1] = (v40 >> 7) | 0x80;
    v39[2] = (v40 >> 14) | 0x80;
    v39[3] = (v40 >> 21) | 0x80;
    v39[4] = v40 >> 28;
    v41 = 5;
  }

  else if (v40 >= 0x200000)
  {
    *v39 = v40 | 0x80;
    v39[1] = (v40 >> 7) | 0x80;
    v39[2] = (v40 >> 14) | 0x80;
    v39[3] = v40 >> 21;
    v41 = 4;
  }

  else if (v40 >= 0x4000)
  {
    *v39 = v40 | 0x80;
    v39[1] = (v40 >> 7) | 0x80;
    v39[2] = v40 >> 14;
    v41 = 3;
  }

  else if (v40 >= 0x80)
  {
    *v39 = v40 | 0x80;
    v39[1] = v40 >> 7;
    v41 = 2;
  }

  else
  {
    *v39 = v40;
    v41 = 1;
  }

  v42 = *a2 + v41;
  *a2 = v42;
  v43 = *(a1 + 240);
  if (v43 >> 28)
  {
    *v42 = v43 | 0x80;
    v42[1] = (v43 >> 7) | 0x80;
    v42[2] = (v43 >> 14) | 0x80;
    v42[3] = (v43 >> 21) | 0x80;
    v42[4] = v43 >> 28;
    v44 = 5;
  }

  else if (v43 >= 0x200000)
  {
    *v42 = v43 | 0x80;
    v42[1] = (v43 >> 7) | 0x80;
    v42[2] = (v43 >> 14) | 0x80;
    v42[3] = v43 >> 21;
    v44 = 4;
  }

  else if (v43 >= 0x4000)
  {
    *v42 = v43 | 0x80;
    v42[1] = (v43 >> 7) | 0x80;
    v42[2] = v43 >> 14;
    v44 = 3;
  }

  else if (v43 >= 0x80)
  {
    *v42 = v43 | 0x80;
    v42[1] = v43 >> 7;
    v44 = 2;
  }

  else
  {
    *v42 = v43;
    v44 = 1;
  }

  v45 = *a2 + v44;
  *a2 = v45;
  v46 = *(a1 + 244);
  if (v46 >> 28)
  {
    *v45 = v46 | 0x80;
    v45[1] = (v46 >> 7) | 0x80;
    v45[2] = (v46 >> 14) | 0x80;
    v45[3] = (v46 >> 21) | 0x80;
    v45[4] = v46 >> 28;
    v47 = 5;
  }

  else if (v46 >= 0x200000)
  {
    *v45 = v46 | 0x80;
    v45[1] = (v46 >> 7) | 0x80;
    v45[2] = (v46 >> 14) | 0x80;
    v45[3] = v46 >> 21;
    v47 = 4;
  }

  else if (v46 >= 0x4000)
  {
    *v45 = v46 | 0x80;
    v45[1] = (v46 >> 7) | 0x80;
    v45[2] = v46 >> 14;
    v47 = 3;
  }

  else if (v46 >= 0x80)
  {
    *v45 = v46 | 0x80;
    v45[1] = v46 >> 7;
    v47 = 2;
  }

  else
  {
    *v45 = v46;
    v47 = 1;
  }

  *a2 = *a2 + v47;
  storeVInt64(a2, *(a1 + 4944));
  storeVInt64(a2, *(a1 + 4952));
  storeVInt64(a2, *(a1 + 4968));
  storeVInt64(a2, *(a1 + 4976));
  v48 = *(a1 + 40);
  v49 = *a2;
  if (v48 >> 28)
  {
    *v49 = v48 | 0x80;
    v49[1] = (v48 >> 7) | 0x80;
    v49[2] = (v48 >> 14) | 0x80;
    v49[3] = (v48 >> 21) | 0x80;
    v49[4] = v48 >> 28;
    v50 = 5;
  }

  else if (v48 >= 0x200000)
  {
    *v49 = v48 | 0x80;
    v49[1] = (v48 >> 7) | 0x80;
    v49[2] = (v48 >> 14) | 0x80;
    v49[3] = v48 >> 21;
    v50 = 4;
  }

  else if (v48 >= 0x4000)
  {
    *v49 = v48 | 0x80;
    v49[1] = (v48 >> 7) | 0x80;
    v49[2] = v48 >> 14;
    v50 = 3;
  }

  else if (v48 >= 0x80)
  {
    *v49 = v48 | 0x80;
    v49[1] = v48 >> 7;
    v50 = 2;
  }

  else
  {
    *v49 = v48;
    v50 = 1;
  }

  v51 = *a2;
  *a2 = *a2 + v50;
  v51[v50] = *(a1 + 44);
  *a2 = *a2 + 1;
  termIdStoreHeaderStore(a1 + 4984, a2);
  storeVInt64(a2, *(a1 + 9664));
  storeVInt64(a2, *(a1 + 9672));
  storeVInt64(a2, *(a1 + 9688));
  storeVInt64(a2, *(a1 + 9696));
  **a2 = 0;
  v52 = *a2 + 1;
  *a2 = v52;
  *v52 = 0;
  *a2 = *a2 + 1;
  termIdStoreHeaderStore(a1 + 9704, a2);
  v53 = *(a1 + 120);
  v54 = *a2;
  if (v53 >> 28)
  {
    *v54 = v53 | 0x80;
    v54[1] = (v53 >> 7) | 0x80;
    v54[2] = (v53 >> 14) | 0x80;
    v54[3] = (v53 >> 21) | 0x80;
    v54[4] = v53 >> 28;
    v55 = 5;
  }

  else if (v53 >= 0x200000)
  {
    *v54 = v53 | 0x80;
    v54[1] = (v53 >> 7) | 0x80;
    v54[2] = (v53 >> 14) | 0x80;
    v54[3] = v53 >> 21;
    v55 = 4;
  }

  else if (v53 >= 0x4000)
  {
    *v54 = v53 | 0x80;
    v54[1] = (v53 >> 7) | 0x80;
    v54[2] = v53 >> 14;
    v55 = 3;
  }

  else if (v53 >= 0x80)
  {
    *v54 = v53 | 0x80;
    v54[1] = v53 >> 7;
    v55 = 2;
  }

  else
  {
    *v54 = v53;
    v55 = 1;
  }

  v56 = *a2 + v55;
  *a2 = v56;
  v57 = *(a1 + 128);
  if (v57 >> 28)
  {
    *v56 = v57 | 0x80;
    v56[1] = (v57 >> 7) | 0x80;
    v56[2] = (v57 >> 14) | 0x80;
    v56[3] = (v57 >> 21) | 0x80;
    v56[4] = v57 >> 28;
    v58 = 5;
  }

  else if (v57 >= 0x200000)
  {
    *v56 = v57 | 0x80;
    v56[1] = (v57 >> 7) | 0x80;
    v56[2] = (v57 >> 14) | 0x80;
    v56[3] = v57 >> 21;
    v58 = 4;
  }

  else if (v57 >= 0x4000)
  {
    *v56 = v57 | 0x80;
    v56[1] = (v57 >> 7) | 0x80;
    v56[2] = v57 >> 14;
    v58 = 3;
  }

  else if (v57 >= 0x80)
  {
    *v56 = v57 | 0x80;
    v56[1] = v57 >> 7;
    v58 = 2;
  }

  else
  {
    *v56 = v57;
    v58 = 1;
  }

  v59 = *a2 + v58;
  *a2 = v59;
  v60 = *(a1 + 136);
  if (v60 >> 28)
  {
    *v59 = v60 | 0x80;
    v59[1] = (v60 >> 7) | 0x80;
    v59[2] = (v60 >> 14) | 0x80;
    v59[3] = (v60 >> 21) | 0x80;
    v59[4] = v60 >> 28;
    v61 = 5;
  }

  else if (v60 >= 0x200000)
  {
    *v59 = v60 | 0x80;
    v59[1] = (v60 >> 7) | 0x80;
    v59[2] = (v60 >> 14) | 0x80;
    v59[3] = v60 >> 21;
    v61 = 4;
  }

  else if (v60 >= 0x4000)
  {
    *v59 = v60 | 0x80;
    v59[1] = (v60 >> 7) | 0x80;
    v59[2] = v60 >> 14;
    v61 = 3;
  }

  else if (v60 >= 0x80)
  {
    *v59 = v60 | 0x80;
    v59[1] = v60 >> 7;
    v61 = 2;
  }

  else
  {
    *v59 = v60;
    v61 = 1;
  }

  v62 = 0;
  v63 = *a2 + v61;
  *a2 = v63;
  do
  {
    v65 = *(a1 + 144 + v62);
    if (v65 >> 28)
    {
      *v63 = v65 | 0x80;
      v63[1] = (v65 >> 7) | 0x80;
      v63[2] = (v65 >> 14) | 0x80;
      v63[3] = (v65 >> 21) | 0x80;
      v63[4] = v65 >> 28;
      v64 = 5;
    }

    else if (v65 >= 0x200000)
    {
      *v63 = v65 | 0x80;
      v63[1] = (v65 >> 7) | 0x80;
      v63[2] = (v65 >> 14) | 0x80;
      v63[3] = v65 >> 21;
      v64 = 4;
    }

    else if (v65 >= 0x4000)
    {
      *v63 = v65 | 0x80;
      v63[1] = (v65 >> 7) | 0x80;
      v63[2] = v65 >> 14;
      v64 = 3;
    }

    else if (v65 >= 0x80)
    {
      *v63 = v65 | 0x80;
      v63[1] = v65 >> 7;
      v64 = 2;
    }

    else
    {
      *v63 = v65;
      v64 = 1;
    }

    v63 = *a2 + v64;
    *a2 = v63;
    v62 += 4;
  }

  while (v62 != 64);
  storageHeaderStore(a1 + 256, a2);
  strlcpy(*a2, (a1 + 15495), 0x20uLL);
  v66 = strlen((a1 + 15495));
  if ((v66 & 0xFFFFFFE0) != 0)
  {
    v80 = __si_assert_copy_extra_3233(0, -1);
    v81 = v80;
    v82 = "";
    if (v80)
    {
      v82 = v80;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 5280, "len > 0 && len <= 32", v82);
LABEL_188:
    free(v81);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v67 = *a2 + (v66 & 0x1F) + 1;
  *a2 = v67;
  strlcpy(v67, (a1 + 15463), 0x20uLL);
  v68 = strlen((a1 + 15463));
  if ((v68 & 0xFFFFFFE0) != 0)
  {
    v83 = __si_assert_copy_extra_3233(0, -1);
    v84 = v83;
    v85 = "";
    if (v83)
    {
      v85 = v83;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 5286, "len > 0 && len <= 32", v85);
LABEL_194:
    free(v84);
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

  v69 = *a2 + (v68 & 0x1F) + 1;
  *a2 = v69;
  strlcpy(v69, sysVersionCStr, 0x20uLL);
  v70 = strlen(sysVersionCStr);
  if ((v70 & 0xFFFFFFE0) != 0)
  {
    v86 = __si_assert_copy_extra_3233(0, -1);
    v81 = v86;
    v87 = "";
    if (v86)
    {
      v87 = v86;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 5292, "len > 0 && len <= 32", v87);
    goto LABEL_188;
  }

  v71 = *a2 + (v70 & 0x1F) + 1;
  *a2 = v71;
  strlcpy(v71, buildVersionCStr, 0x20uLL);
  v72 = strlen(buildVersionCStr);
  if ((v72 & 0xFFFFFFE0) != 0)
  {
    v88 = __si_assert_copy_extra_3233(0, -1);
    v84 = v88;
    v89 = "";
    if (v88)
    {
      v89 = v88;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 5298, "len > 0 && len <= 32", v89);
    goto LABEL_194;
  }

  *a2 = *a2 + (v72 & 0x1F) + 1;
  storeVInt64(a2, *(a1 + 15560));
  v73 = (a1 + 15584);
  *(a1 + 15584) = *(a1 + 15576);
  *(a1 + 15592) = *(a1 + 14984);
  *(a1 + 15608) = *(a1 + 15032);
  *(a1 + 15616) = *(a1 + 14960);
  *(a1 + 15632) = *(a1 + 15024);
  *(a1 + 15640) = *(a1 + 15568);
  *(a1 + 15648) = *(a1 + 15016);
  v74 = *(a1 + 4);
  if (*(a1 + 45) == 1)
  {
    if (v74 <= 0x71)
    {
      v75 = 9;
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  if (v74 >= 0x65)
  {
LABEL_175:
    *(a1 + 15656) = *(a1 + 56);
    v75 = 10;
    goto LABEL_177;
  }

  v75 = 9;
  do
  {
LABEL_177:
    v76 = *v73++;
    result = storeVInt64(a2, v76);
    --v75;
  }

  while (v75);
  v78 = *a2;
  v79 = *a2 - v4 + 4;
  *v78 = v79;
  *a2 = v78 + 1;
  v8[2] = v79;
  return result;
}

uint64_t indexCommitShadow(uint64_t a1, _DWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v4 = a2;
  atomic_store(0xC001D00D, (a1 + 32));
  *a2 = *(a1 + 4);
  v5 = atomic_load((a1 + 32));
  a2[1] = v5;
  v6 = atomic_load((a1 + 36));
  a2[2] = v6;
  a2[3] = *(a1 + 48);
  v7 = *(a1 + 14480);
  if (v7)
  {
    v8 = fd_pwrite(*(a1 + 14480), v4, 0x1000uLL, 0);
    if (v8 == -1)
    {
      result = *__error();
      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 != 4096)
      {
        result = 0xFFFFFFFFLL;
        goto LABEL_15;
      }

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

      v15 = 0;
      v9 = _fd_acquire_fd(v7, &v15);
      if (v9 != -1)
      {
        v10 = v9;
        prot_fsync(v9, 0);
        _fd_release_fd(v7, v10, 0, v15);
      }
    }
  }

  v12 = atomic_load((a1 + 36));
  if ((v12 & 2) == 0)
  {
    snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), "indexUpdates");
    unlinkat(*(a1 + 64), __str, 0);
    v13 = fd_create_protected(*(a1 + 64), __str, 536872450, 3u);
    fd_release(v13);
  }

  result = 0;
LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _indexShadowGroups(uint64_t a1, int a2)
{
  v87 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  Current = CFAbsoluteTimeGetCurrent();
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), "shadowIndexGroups");
  v5 = fd_create_protected(*(a1 + 64), __str, 536871426, 3u);
  v6 = v5;
  if (!v5)
  {
    v19 = *__error();
    v20 = *__error();
    v21 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136315906;
    *&buf[4] = "_indexShadowGroups";
    v78 = 1024;
    v79 = 3113;
    v80 = 1024;
    v81 = v19;
    v82 = 2080;
    *v83 = __str;
    v22 = "%s:%d: open err: %d, %s";
    v23 = v21;
    v24 = 34;
    goto LABEL_77;
  }

  *buf = 0;
  v7 = _fd_acquire_fd(v5, buf);
  if (v7 != -1)
  {
    *(v6 + 56) |= 1u;
    v8 = v7;
    fcntl(v7, 48, 1);
    fcntl(v8, 76, *(v6 + 56) & 1);
    _fd_release_fd(v6, v8, 0, *buf);
  }

  v9 = *(a1 + 14440);
  if (__THREAD_SLOT_KEY)
  {
    v10 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    makeThreadId();
    v10 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v10)
    {
LABEL_6:
      if (v10 < 0x801)
      {
        goto LABEL_7;
      }
    }
  }

  makeThreadId();
  v10 = pthread_getspecific(__THREAD_SLOT_KEY);
LABEL_7:
  v11 = v10 - 1;
  v12 = CICleanUpPush(v10 - 1, fd_release, v6);
  if (!v9)
  {
    v25 = *(a1 + 68);
    if (*(a1 + 45))
    {
      v26 = v25;
    }

    else
    {
      v26 = (4 * v25 + 4) / 5;
    }

    v27 = fd_pwrite(v6, *(a1 + 14432), v26, 0);
    CICleanUpClearItem(v11, v12);
    CICleanUpPop(v11);
    if (v27 == v26)
    {
      v28 = *(a1 + 72);
      v29 = (v28 + 4) / 5uLL;
      v30 = (v28 + 3) >> 2;
      if (*(a1 + 45) == 1)
      {
        v29 = v30;
      }

      *(a1 + 14440) = malloc_type_calloc(1uLL, (8 * *MEMORY[0x1E69E9AC8] - 1 + v29) / (8 * *MEMORY[0x1E69E9AC8]), 0x72313C74uLL);
      goto LABEL_25;
    }

    if (v27 == -1)
    {
      v19 = *__error();
    }

    else
    {
      v19 = 0;
    }

    v20 = *__error();
    v59 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
LABEL_78:
      *__error() = v20;
      fd_release(v6);
      if (v19)
      {
        result = v19;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      goto LABEL_81;
    }

    *buf = 136316418;
    *&buf[4] = "_indexShadowGroups";
    v78 = 1024;
    v79 = 3143;
    v80 = 1024;
    v81 = v26;
    v82 = 1024;
    *v83 = v27;
    *&v83[4] = 1024;
    *&v83[6] = v19;
    v84 = 2080;
    v85 = __str;
    v22 = "%s:%d: write(%d) %d err: %d, %s";
LABEL_76:
    v23 = v59;
    v24 = 46;
LABEL_77:
    _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    goto LABEL_78;
  }

  v76 = 0;
  v13 = _fd_acquire_fd(v6, &v76);
  v14 = *(a1 + 68);
  v15 = MEMORY[0x1E69E9AC8];
  v16 = 8 * *MEMORY[0x1E69E9AC8];
  v17 = v16 - 1;
  if (*(a1 + 45) == 1)
  {
    v18 = v17 + ((v14 + 3) >> 2);
    if (v16 <= v18)
    {
LABEL_32:
      v69 = v11;
      v36 = 0;
      v75 = 4 * *MEMORY[0x1E69E9AC8];
      v70 = v18 / v16;
      v74 = v12;
      do
      {
        if (*(*(a1 + 14440) + v36))
        {
          v37 = 0;
          v38 = 8 * v36;
          while (1)
          {
            if ((*(*(a1 + 14440) + v36) >> v37))
            {
              v39 = *v15;
              v40 = v38 + v37;
              v41 = 4 * (v38 + v37);
              v42 = *(a1 + 68);
              if (*(a1 + 45) != 1)
              {
                v42 = (4 * v42 + 4) / 5uLL;
              }

              if ((v41 + 4) * *v15 < v42)
              {
                v72 = 0;
                v43 = *(a1 + 14432) + 4 * v39 * v40;
                v44 = v41 * v39;
                v45 = v75;
                while (1)
                {
                  while (1)
                  {
                    v46 = guarded_pwrite_np();
                    if ((v46 & 0x8000000000000000) == 0)
                    {
                      break;
                    }

                    v47 = g_prot_error_callback;
                    if (g_prot_error_callback)
                    {
                      v48 = __error();
                      if ((*(v47 + 16))(v47, v13, *v48, 5))
                      {
                        continue;
                      }
                    }

                    v19 = *__error();
                    LODWORD(v49) = -1;
                    goto LABEL_64;
                  }

                  v49 = v46 + v72;
                  v50 = v45 > v46;
                  v45 -= v46;
                  if (!v50)
                  {
                    break;
                  }

                  v72 += v46;
                  v43 += v46;
                  v44 += v46;
                }

                v38 = 8 * v36;
                v12 = v74;
                v15 = MEMORY[0x1E69E9AC8];
                if (v49 == v75)
                {
                  goto LABEL_36;
                }

                v19 = 0;
LABEL_64:
                v20 = *__error();
                v59 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  *&buf[4] = "_indexShadowGroups";
                  v78 = 1024;
                  v79 = 3165;
                  v80 = 1024;
                  v81 = v75;
                  v82 = 1024;
                  *v83 = v49;
                  *&v83[4] = 1024;
                  *&v83[6] = v19;
                  v84 = 2080;
                  v85 = __str;
                  v22 = "%s:%d: write(%d) %d err: %d, %s";
                  goto LABEL_76;
                }

                goto LABEL_78;
              }

              v51 = 4 * v39 * v40;
              v52 = v42 - v51;
              v53 = *(a1 + 14432) + v51;
              v54 = v41 * v39;
              v71 = v42 - v51;
              v73 = 0;
              do
              {
                while (1)
                {
                  v55 = guarded_pwrite_np();
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    break;
                  }

                  v58 = v55 + v73;
                  v50 = v52 > v55;
                  v52 -= v55;
                  if (!v50)
                  {
                    goto LABEL_58;
                  }

                  v73 += v55;
                  v53 += v55;
                  v54 += v55;
                }

                v56 = g_prot_error_callback;
                if (!g_prot_error_callback)
                {
                  break;
                }

                v57 = __error();
              }

              while (((*(v56 + 16))(v56, v13, *v57, 5) & 1) != 0);
              v58 = -1;
LABEL_58:
              v12 = v74;
              v38 = 8 * v36;
              v15 = MEMORY[0x1E69E9AC8];
              if (v58 != v71)
              {
                break;
              }
            }

LABEL_36:
            if (++v37 == 8)
            {
              goto LABEL_60;
            }
          }

          v68 = v58;
          if (v58 == -1)
          {
            v19 = *__error();
          }

          else
          {
            v19 = 0;
          }

          v20 = *__error();
          v59 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "_indexShadowGroups";
            v78 = 1024;
            v79 = 3176;
            v80 = 1024;
            v81 = v71;
            v82 = 1024;
            *v83 = v68;
            *&v83[4] = 1024;
            *&v83[6] = v19;
            v84 = 2080;
            v85 = __str;
            v22 = "%s:%d: write(%d) %d err: %d, %s";
            goto LABEL_76;
          }

          goto LABEL_78;
        }

LABEL_60:
        ++v36;
      }

      while (v36 != v70);
      LODWORD(v14) = *(a1 + 68);
      v11 = v69;
      if ((*(a1 + 45) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v18 = v17 + (v14 + 4) / 5uLL;
    if (v16 <= v18)
    {
      goto LABEL_32;
    }

LABEL_21:
    LODWORD(v14) = (4 * v14 + 4) / 5u;
  }

  _fd_ftruncate_guarded(v13, &v76, v14);
  _fd_release_fd(v6, v13, 0, v76);
  CICleanUpClearItem(v11, v12);
  CICleanUpPop(v11);
  v31 = *(a1 + 68);
  v32 = (v31 + 4) / 5uLL;
  v33 = (v31 + 3) >> 2;
  if (*(a1 + 45) == 1)
  {
    v32 = v33;
  }

  bzero(*(a1 + 14440), (8 * *v15 - 1 + v32) / (8 * *v15));
LABEL_25:
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
  v34 = _fd_acquire_fd(v6, buf);
  if (v34 != -1)
  {
    if (a2)
    {
      v35 = (*(v6 + 56) & 8) == 0;
    }

    else
    {
      v35 = 0;
    }

    v60 = v34;
    prot_fsync(v34, v35);
    _fd_release_fd(v6, v60, 0, *buf);
  }

  fd_release(v6);
  v61 = *__error();
  v62 = _SILogForLogForCategory(10);
  v63 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 134217984;
    *&buf[4] = v64;
    _os_log_impl(&dword_1C278D000, v62, v63, "shadowIndexGroups took %f seconds", buf, 0xCu);
  }

  v65 = __error();
  result = 0;
  *v65 = v61;
LABEL_81:
  v67 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t index_verify(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v83 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
  v73 = HIDWORD(v8);
  v74 = v8;
  v72 = __PAIR64__(v9, v10);
  v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v71 = v74;
  v70 = v73;
  v69 = v72;
  v14 = 0x1EBF46000uLL;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v11 + 312) = v12;
    if (__THREAD_SLOT_KEY)
    {
      v15 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v15)
      {
        goto LABEL_67;
      }
    }

    else
    {
      makeThreadId();
      v15 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v15)
      {
        goto LABEL_67;
      }
    }

    v16 = v15;
    if (v15 < 0x801)
    {
LABEL_9:
      v17 = &threadData[9 * v16];
      v19 = *(v17 - 4);
      v18 = v17 - 2;
      if (v19 > v69)
      {
        v20 = v16 - 1;
        do
        {
          CIOnThreadCleanUpPop(v20);
        }

        while (*v18 > v69);
      }

      dropThreadId(v71, 1, add_explicit + 1);
      CICleanUpReset(v71, HIDWORD(v69));
      v21 = 0xFFFFFFFFLL;
      goto LABEL_60;
    }

LABEL_67:
    makeThreadId();
    v16 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_9;
  }

  v60 = v2;
  v61 = v12;
  v22 = *__error();
  v23 = _SILogForLogForCategory(10);
  v24 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v23, v24))
  {
    *buf = 136315138;
    v76 = (v6 + 15208);
    _os_log_impl(&dword_1C278D000, v23, v24, "Validating %s", buf, 0xCu);
  }

  *__error() = v22;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v68[0] = 0;
  v68[1] = v60;
  DWORD2(v65) = *(v6 + 9400);
  *&v67 = v6 + 4984;
  *(&v67 + 1) = v6 + 9704;
  v25 = *(v6 + 9688);
  *&v66 = *(v6 + 4968);
  *(&v66 + 1) = v25;
  LODWORD(v68[0]) = *(v6 + 4680);
  v26 = atomic_load((v6 + 36));
  v27 = v12;
  if ((v4 & 0x8000) == 0 && (v26 & 2) != 0)
  {
    goto LABEL_17;
  }

  v28 = *(v6 + 4680);
  if (v28 == 1)
  {
    v62 = add_explicit;
    if ((v4 & 2) != 0)
    {
      v63 = 0;
      v35 = strtod((v6 + 15463), &v63);
      v36 = v63 != (v6 + 15463);
      v37 = v35 > 425.0;
      bzero(buf, 0x5160uLL);
      _bt_dumpTrie(v6 + 96, v36 && v37, v68 + 1, buf, verifyTermsCallback, &v64);
    }
  }

  else
  {
    if (v28)
    {
      v38 = *__error();
      v39 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *(v6 + 4680);
        *buf = 136315906;
        v76 = "index_verify";
        v77 = 1024;
        v78 = 2602;
        v79 = 2080;
        v80 = v6 + 15208;
        v81 = 1024;
        v82 = v40;
        v41 = "%s:%d: %s invalid type %d";
        v42 = v39;
        v43 = 34;
LABEL_65:
        _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    v62 = add_explicit;
    if (v4)
    {
      bzero(buf, 0x5160uLL);
      _bt_dumpTrie(v6 + 96, 1, v68 + 1, buf, verifyTermsCallback, &v64);
      if (*(v6 + 5232) >= 1)
      {
        v29 = 0;
        v30 = *(v6 + 5232);
        do
        {
          v31 = *(v6 + 5256 + 8 * v29);
          if (v31)
          {
            v32 = *(v31 + 8);
            if (v32)
            {
              v34 = *(v31 + 16);
              v33 = *(v31 + 24);
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

              msync(v32, v33 - v34, 16);
              madvise(*(v31 + 8), *(v31 + 24) - *(v31 + 16), 4);
              v30 = *(v6 + 5232);
            }
          }

          ++v29;
        }

        while (v29 < v30);
      }

      if (*(v6 + 9952) >= 1)
      {
        v44 = 0;
        v45 = *(v6 + 9952);
        do
        {
          v46 = *(v6 + 9976 + 8 * v44);
          if (v46)
          {
            v47 = *(v46 + 8);
            if (v47)
            {
              v49 = *(v46 + 16);
              v48 = *(v46 + 24);
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

              msync(v47, v48 - v49, 16);
              madvise(*(v46 + 8), *(v46 + 24) - *(v46 + 16), 4);
              v45 = *(v6 + 9952);
            }
          }

          ++v44;
        }

        while (v44 < v45);
      }
    }
  }

  v50 = HIDWORD(v68[0]);
  if (HIDWORD(v68[0]) && !*v60)
  {
    v38 = *__error();
    v52 = _SILogForLogForCategory(0);
    v27 = v61;
    add_explicit = v62;
    v14 = 0x1EBF46000uLL;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v76 = "index_verify";
      v77 = 1024;
      v78 = 2606;
      v79 = 2080;
      v80 = v6 + 15208;
      v41 = "%s:%d: %s error walking terms";
      goto LABEL_64;
    }

LABEL_56:
    *__error() = v38;
    v21 = 0xFFFFFFFFLL;
    goto LABEL_57;
  }

  v51 = *(v6 + 4928);
  v27 = v61;
  add_explicit = v62;
  v14 = 0x1EBF46000;
  if (v51)
  {
    dumpDirectoryStore(v51);
    v50 = HIDWORD(v68[0]);
  }

  if (v50 && !*v60)
  {
    v38 = *__error();
    v52 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v76 = "index_verify";
      v77 = 1024;
      v78 = 2622;
      v79 = 2080;
      v80 = v6 + 15208;
      v41 = "%s:%d: %s error walking directoyr store";
LABEL_64:
      v42 = v52;
      v43 = 28;
      goto LABEL_65;
    }

    goto LABEL_56;
  }

LABEL_17:
  v21 = 0;
LABEL_57:
  v53 = threadData[9 * v71 + 1] + 320 * v70;
  *(v53 + 312) = v27;
  v54 = *(v53 + 232);
  if (v54)
  {
    v54(*(v53 + 288));
  }

  dropThreadId(v71, 0, add_explicit + 1);
LABEL_60:
  v55 = *__error();
  v56 = _SILogForLogForCategory(10);
  v57 = 2 * (*(v14 + 2804) < 4);
  if (os_log_type_enabled(v56, v57))
  {
    *buf = 136315394;
    v76 = (v6 + 15208);
    v77 = 1024;
    v78 = v21;
    _os_log_impl(&dword_1C278D000, v56, v57, "Validate %s complete %d", buf, 0x12u);
  }

  *__error() = v55;
  v58 = *MEMORY[0x1E69E9840];
  return v21;
}

BOOL __index_verify_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 >= 1 && gSILogLevels[0] >= 5)
  {
    v9 = a1;
    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a3 + 8 * a2 - 8);
      v13 = 134218496;
      v14 = v12;
      v15 = 1024;
      v16 = a2;
      v17 = 2048;
      v18 = a4;
      _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "oid: %lld depth: %d offset: %llu ", &v13, 0x1Cu);
    }

    *__error() = v10;
    a1 = v9;
  }

  result = **(a1 + 32) != 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *verifyTermsCallback(_DWORD *result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (**(a5 + 72))
  {
    goto LABEL_22;
  }

  if ((result - 1044) <= 0xFFFFFBEC)
  {
    v6 = result;
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      result = __error();
      *result = v7;
LABEL_22:
      *(a5 + 68) = 1;
      goto LABEL_23;
    }

    v23 = 136315650;
    v24 = "verifyTermsCallback";
    v25 = 1024;
    v26 = 2500;
    v27 = 1024;
    *v28 = v6;
    v17 = "%s:%d: invalid term length: %d";
    v18 = v8;
    v19 = 24;
LABEL_28:
    _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, v17, &v23, v19);
    goto LABEL_4;
  }

  if (*(a5 + 64))
  {
    v9 = a3;
    v10 = *a5 + 1;
    if (*a5 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3;
    v11 = 8 * a3;
    v9 = *storageResolvePtr(*(a5 + 48), v11, 8, 1);
    result = storageResolvePtr(*(a5 + 56), v11, 8, 1);
    a4 = *result;
    if (!v10)
    {
LABEL_19:
      v12 = *__error();
      v13 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a5 + 24);
        v23 = 136315906;
        v24 = "verifyTermsCallback";
        v25 = 1024;
        v26 = 2529;
        v27 = 1024;
        *v28 = v10;
        *&v28[4] = 1024;
        *&v28[6] = v20;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid termID: %d, max: %d", &v23, 0x1Eu);
      }

      result = __error();
      *result = v12;
      goto LABEL_22;
    }
  }

  if (v10 >= *(a5 + 24))
  {
    goto LABEL_19;
  }

  if (!v9 || v9 >= *(a5 + 32))
  {
    v7 = *__error();
    v15 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v16 = *(a5 + 32);
    v23 = 136315906;
    v24 = "verifyTermsCallback";
    v25 = 1024;
    v26 = 2534;
    v27 = 2048;
    *v28 = v9;
    *&v28[8] = 2048;
    v29 = v16;
    v17 = "%s:%d: invalid posting offset: %lld, max: %lld";
    goto LABEL_26;
  }

  if (v9 > *(a5 + 8))
  {
    *(a5 + 8) = v9;
  }

  if (a4 && a4 >= *(a5 + 40))
  {
    v21 = a4;
    v7 = *__error();
    v15 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v22 = *(a5 + 40);
    v23 = 136315906;
    v24 = "verifyTermsCallback";
    v25 = 1024;
    v26 = 2544;
    v27 = 2048;
    *v28 = v21;
    *&v28[8] = 2048;
    v29 = v22;
    v17 = "%s:%d: invalid position offset: %lld, max: %lld";
LABEL_26:
    v18 = v15;
    v19 = 38;
    goto LABEL_28;
  }

  if (a4 > *(a5 + 16))
  {
    *(a5 + 16) = a4;
  }

  ++*a5;
LABEL_23:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t indexPerformSync(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v29[512] = *MEMORY[0x1E69E9840];
  v5 = *(v1 + 4928);
  if (v5)
  {
    flushForwardStore(v5, *(v4 + 15576));
  }

  v6 = *(v4 + 4912);
  if (v6)
  {
    IVFVectorIndex_s::flush((v6 + 8), *(v4 + 15576));
  }

  if (*(v4 + 15203))
  {
    goto LABEL_44;
  }

  v7 = *(v4 + 14432);
  v8 = *(v4 + 68);
  if (*(v4 + 45))
  {
    v9 = v8;
  }

  else
  {
    v9 = (4 * v8 + 4) / 5;
  }

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

  msync(v7, v9, 16);
  v10 = *(v4 + 14472);
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

  v29[0] = 0;
  v11 = _fd_acquire_fd(v10, v29);
  if (v11 != -1)
  {
    v12 = v11;
    prot_fsync(v11, 0);
    _fd_release_fd(v10, v12, 0, v29[0]);
  }

  v13 = atomic_load((v4 + 36));
  if ((v13 & 2) != 0)
  {
LABEL_44:
    result = 0;
  }

  else
  {
    result = syncPayload(v4 + 4944);
    if (!result)
    {
      result = syncPayload(v4 + 9664);
      if (!result)
      {
        result = bt_syncTrie(v4 + 96);
        if (!result)
        {
          v15 = *(v4 + 14408);
          v16 = 8 * *(v4 + 68);
          fd_system_status_stall_if_busy();
          v17 = msync(v15, v16, 16);
          v18 = *(v4 + 14416);
          v19 = 4 * *(v4 + 68);
          fd_system_status_stall_if_busy();
          v20 = msync(v18, v19, 16);
          if (v20)
          {
            v21 = v20;
          }

          else
          {
            v21 = v17;
          }

          v22 = *(v4 + 14424);
          if (v22)
          {
            v23 = 8 * *(v4 + 68);
            fd_system_status_stall_if_busy();
            v24 = msync(v22, v23, 16);
            if (v24)
            {
              v21 = v24;
            }
          }

          if (*(v4 + 15205) == 1)
          {
            if (fd_sync(*(v4 + 14456), 0))
            {
              v21 = *__error();
            }

            v25 = *(v4 + 14464);
            if (v25 && fd_sync(v25, 0))
            {
              v21 = *__error();
            }

            if (fd_sync(*(v4 + 14448), 0))
            {
              v21 = *__error();
            }

            *(v4 + 15205) = 0;
          }

          if (v3)
          {
            v26 = *(v4 + 68);
            if (v26)
            {
              *(v4 + 4960) = *(v4 + 4952);
              *(v4 + 9680) = *(v4 + 9672);
              *(v4 + 60) = v26 - 1;
            }
          }

          bzero(v29, 0x1000uLL);
          v28 = v29;
          indexStoreToBuffer(v4, &v28);
          LODWORD(result) = index_header_write(*(v4 + 14480), v29);
          if (result)
          {
            result = result;
          }

          else
          {
            result = v21;
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t index_header_write(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = fd_pwrite(result, a2, 0x1000uLL, 0);
  if (v3 != 4096)
  {
    if (v3 == -1)
    {
      return *__error();
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(v2 + 56))
  {
    if (_gSystemStatusBool)
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

      goto LABEL_14;
    }
  }

  else if (_gSystemStatusBool)
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

LABEL_14:
    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  v6 = 0;
  v4 = _fd_acquire_fd(v2, &v6);
  if (v4 != -1)
  {
    v5 = v4;
    prot_fsync(v4, 0);
    _fd_release_fd(v2, v5, 0, v6);
  }

  return 0;
}

uint64_t recoverIndex(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v91 = *MEMORY[0x1E69E9840];
  bzero(v90, 0x400uLL);
  bzero(v89, 0x400uLL);
  memset(&v67, 0, sizeof(v67));
  v15 = *__error();
  v16 = _SILogForLogForCategory(0);
  v17 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v16, v17))
  {
    *buf = 136315138;
    v82 = v12;
    _os_log_impl(&dword_1C278D000, v16, v17, "recoverIndex: %s", buf, 0xCu);
  }

  *__error() = v15;
  bzero(v88, 0x1000uLL);
  v66 = v88;
  snprintf(v90, 0x400uLL, "%s%s", v12, "indexPostings");
  if (stat(v90, &v67))
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v82 = "recoverIndex";
      v83 = 1024;
      v84 = 3587;
      v85 = 2080;
      v86 = v12;
      v20 = "%s:%d: Unrecoverable error: Missing postings file (%s)";
LABEL_33:
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x1Cu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  snprintf(v90, 0x400uLL, "%s%s", v12, "indexPositions");
  if (stat(v90, &v67))
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v82 = "recoverIndex";
      v83 = 1024;
      v84 = 3594;
      v85 = 2080;
      v86 = v12;
      v20 = "%s:%d: Unrecoverable error: Missing positions file (%s)";
      goto LABEL_33;
    }

LABEL_8:
    v21 = 0;
LABEL_9:
    v22 = __error();
    v23 = 0;
LABEL_10:
    *v22 = v18;
    goto LABEL_11;
  }

  snprintf(v89, 0x400uLL, "%s%s", v12, "shadowIndexHead");
  v30 = fd_create_protected(v14, v89, 536870914, 3u);
  if (!v30)
  {
    v18 = *__error();
    v35 = _SILogForLogForCategory(0);
    v36 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v35, (gSILogLevels[0] < 3)))
    {
      v37 = *__error();
      *buf = 136315394;
      v82 = v12;
      v83 = 1024;
      v84 = v37;
      _os_log_impl(&dword_1C278D000, v35, v36, "*warn* Unrecoverable error: Missing shadow head file (%s) %d", buf, 0x12u);
    }

    goto LABEL_8;
  }

  v21 = v30;
  v31 = fd_pread(v30, v88, 0x1000uLL, 0);
  if (v31 != 4096)
  {
    v38 = v31;
    v18 = *__error();
    v39 = _SILogForLogForCategory(0);
    v40 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v39, (gSILogLevels[0] < 3)))
    {
      v41 = *__error();
      *buf = 136315650;
      v82 = v12;
      v83 = 1024;
      v84 = v38;
      v85 = 1024;
      LODWORD(v86) = v41;
      _os_log_impl(&dword_1C278D000, v39, v40, "*warn* Unrecoverable error: Missing data in index head file (%s) %d %d", buf, 0x18u);
    }

    goto LABEL_9;
  }

  fd_release(v21);
  bzero(buf, 0x3D68uLL);
  if ((indexRestoreHeaderFromBuffer(buf, &v66, v6, v4, v2, 0) & 1) == 0)
  {
    v42 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *__str = 136315650;
    v72 = "recoverIndex";
    v73 = 1024;
    v74 = 3617;
    v75 = 2080;
    v76 = v12;
    v49 = "%s:%d: Unrecoverable error: Malformed index head file (%s)";
LABEL_73:
    v60 = v43;
    v61 = 28;
LABEL_74:
    _os_log_error_impl(&dword_1C278D000, v60, OS_LOG_TYPE_ERROR, v49, __str, v61);
    goto LABEL_31;
  }

  v32 = atomic_load(v87);
  if ((v32 & 2) != 0)
  {
    v66 = v88;
    goto LABEL_35;
  }

  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", v12, "indexDirectory");
  if (fstatat(v14, __str, &v67, 0) || v67.st_mode != 256)
  {
    v66 = v88;
    snprintf(v90, 0x400uLL, "%s%s", v12, "indexUpdates");
    unlinkat(v14, v90, 0);
    v50 = fd_create_protected(v14, v90, 536872450, 3u);
    *v68 = 0;
    v51 = _fd_acquire_fd(v50, v68);
    _fd_release_fd(v50, v51, 0, *v68);
    fd_release(v50);
    if (v51 == -1)
    {
      v52 = *__error();
      v53 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315650;
        v72 = "recoverIndex";
        v73 = 1024;
        v74 = 3649;
        v75 = 2080;
        v76 = v12;
        v54 = "%s:%d: Unrecoverable error: could not open update file (%s)";
        goto LABEL_78;
      }
    }

    else
    {
      snprintf(v90, 0x400uLL, "%s%s", v12, "indexTermIds");
      snprintf(v89, 0x400uLL, "%s%s", v12, "shadowIndexTermIds");
      if (copyFileFallback(v14, v89, v14, v90, v10, 1, 1))
      {
        snprintf(v90, 0x400uLL, "%s%s", v12, "indexPositionTable");
        snprintf(v89, 0x400uLL, "%s%s", v12, "shadowIndexPositionTable");
        if (copyFileFallback(v14, v89, v14, v90, v10, 1, 1))
        {
          if (bt_recoverTrie(v14, v12, v10))
          {
            goto LABEL_35;
          }

          if (*v10)
          {
            goto LABEL_80;
          }

          v52 = *__error();
          v53 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *__str = 136315650;
            v72 = "recoverIndex";
            v73 = 1024;
            v74 = 3670;
            v75 = 2080;
            v76 = v12;
            v54 = "%s:%d: Unrecoverable error: could not recover term index (%s)";
LABEL_78:
            _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, v54, __str, 0x1Cu);
          }
        }

        else
        {
          if (*v10)
          {
            goto LABEL_80;
          }

          v52 = *__error();
          v53 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *__str = 136315650;
            v72 = "recoverIndex";
            v73 = 1024;
            v74 = 3664;
            v75 = 2080;
            v76 = v12;
            v54 = "%s:%d: Unrecoverable error: could not recover term id file (positions) (%s)";
            goto LABEL_78;
          }
        }
      }

      else
      {
        if (*v10)
        {
          goto LABEL_80;
        }

        v52 = *__error();
        v53 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *__str = 136315650;
          v72 = "recoverIndex";
          v73 = 1024;
          v74 = 3656;
          v75 = 2080;
          v76 = v12;
          v54 = "%s:%d: Unrecoverable error: could not recover term id file (%s)";
          goto LABEL_78;
        }
      }
    }

    *__error() = v52;
    goto LABEL_80;
  }

  atomic_fetch_or(v87, 2u);
  v33 = *__error();
  v34 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 136315394;
    *&v68[4] = v12;
    v69 = 1024;
    v70 = v87[5];
    _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "mark index %s (%u) read-only during recover", v68, 0x12u);
  }

  *__error() = v33;
  v66 = v88;
LABEL_35:
  if (v8 && (recoverForwardStore(v14, v12, v10) & 1) == 0)
  {
    if (!*v10)
    {
      v42 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *__str = 136315650;
      v72 = "recoverIndex";
      v73 = 1024;
      v74 = 3677;
      v75 = 2080;
      v76 = v12;
      v49 = "%s:%d: Unrecoverable error: could not recover path index (%s)";
      goto LABEL_73;
    }
  }

  else
  {
    if (_os_feature_enabled_impl() && (recoverVectorIndex(v14, v12, v10) & 1) == 0 && !*v10)
    {
      v44 = *__error();
      v45 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315650;
        v72 = "recoverIndex";
        v73 = 1024;
        v74 = 3685;
        v75 = 2080;
        v76 = v12;
        _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: error: could not recover vector index (%s)", __str, 0x1Cu);
      }

      *__error() = v44;
    }

    snprintf(v90, 0x400uLL, "%s%s", v12, "indexGroups");
    snprintf(v89, 0x400uLL, "%s%s", v12, "shadowIndexGroups");
    if (copyFileFallback(v14, v89, v14, v90, v10, 1, 1))
    {
      snprintf(v90, 0x400uLL, "%s%s", v12, "indexHead");
      snprintf(v89, 0x400uLL, "%s%s", v12, "shadowIndexHead");
      v46 = fd_create_protected(v14, v89, 536870914, 0);
      if (v46)
      {
        v21 = v46;
        v47 = fd_pread(v46, v88, 0x1000uLL, 0);
        if (v47 != 4096)
        {
          v57 = v47;
          v58 = *__error();
          v59 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v64 = *__error();
            *__str = 136316162;
            v72 = "recoverIndex";
            v73 = 1024;
            v74 = 3710;
            v75 = 2080;
            v76 = v12;
            v77 = 1024;
            v78 = v57;
            v79 = 1024;
            v80 = v64;
            _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, "%s:%d: Unrecoverable error: could not read shadow head file (%s) %d, %d", __str, 0x28u);
          }

          v23 = 0;
          *__error() = v58;
          goto LABEL_11;
        }

        fd_release(v21);
        v88[0] = v6;
        v88[1] = 1;
        v48 = fd_create_protected(v14, v90, 536872450, 0);
        if (v48)
        {
          v23 = v48;
          if (fd_pwrite(v48, v88, 0x1000uLL, 0) != -1)
          {
            v27 = 1;
            fd_sync(v23, 1);
            v21 = 0;
            goto LABEL_16;
          }

          v18 = *__error();
          v63 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v65 = *__error();
            *__str = 136315906;
            v72 = "recoverIndex";
            v73 = 1024;
            v74 = 3725;
            v75 = 2080;
            v76 = v12;
            v77 = 1024;
            v78 = v65;
            _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: Unrecoverable error: could not write index head file (%s) %d", __str, 0x22u);
          }

          v22 = __error();
          v21 = 0;
          goto LABEL_10;
        }

        v42 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v62 = *__error();
        *__str = 136315906;
        v72 = "recoverIndex";
        v73 = 1024;
        v74 = 3721;
        v75 = 2080;
        v76 = v12;
        v77 = 1024;
        v78 = v62;
        v49 = "%s:%d: Unrecoverable error: could not open index head file (%s) %d";
        goto LABEL_83;
      }

      v42 = *__error();
      v55 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = *__error();
        *__str = 136315906;
        v72 = "recoverIndex";
        v73 = 1024;
        v74 = 3704;
        v75 = 2080;
        v76 = v12;
        v77 = 1024;
        v78 = v56;
        v49 = "%s:%d: Unrecoverable error: could not open shadow head file (%s) %d";
LABEL_83:
        v60 = v55;
        v61 = 34;
        goto LABEL_74;
      }

LABEL_31:
      v23 = 0;
      v21 = 0;
      *__error() = v42;
      goto LABEL_11;
    }

    if (!*v10)
    {
      v42 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *__str = 136315650;
      v72 = "recoverIndex";
      v73 = 1024;
      v74 = 3694;
      v75 = 2080;
      v76 = v12;
      v49 = "%s:%d: Unrecoverable error: could not recover groups file (%s)";
      goto LABEL_73;
    }
  }

LABEL_80:
  v23 = 0;
  v21 = 0;
LABEL_11:
  if (*v10)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    v26 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v25, (gSILogLevels[0] < 3)))
    {
      *buf = 136315138;
      v82 = v12;
      _os_log_impl(&dword_1C278D000, v25, v26, "*warn* recover canceled (%s)", buf, 0xCu);
    }

    v27 = 0;
    *__error() = v24;
  }

  else
  {
    v27 = 0;
  }

LABEL_16:
  fd_release(v21);
  fd_release(v23);
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

BOOL indexClosing(uint64_t a1)
{
  v1 = atomic_fetch_or((a1 + 15192), 1u);
  if (!v1)
  {
    *(a1 + 15048) = CFAbsoluteTimeGetCurrent();
    if (gSILogLevels[0] >= 5)
    {
      v3 = *__error();
      v4 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "close requested\n", v5, 2u);
      }

      *__error() = v3;
    }
  }

  return v1 != 0;
}

uint64_t indexGrowDocumentPayloads(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == 1)
  {
    v40 = 0;
    v6 = *(a1 + 72);
    if (expandUnsafeMapNew((a1 + 14408), *(a1 + 14448), v6, 8uLL, &v40, a2, a3))
    {
      v7 = *__error();
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v42 = "indexGrowDocumentPayloads";
        v43 = 1024;
        v44 = 4859;
        v45 = 2080;
        v46 = a1 + 15208;
        v47 = 1024;
        v48 = 4859;
        _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
      }

      *__error() = v8;
      if (*(a1 + 8) == 1)
      {
        *(a1 + 8) = 0;
        *(a1 + 12) = v7;
      }
    }

    else
    {
      *(a1 + 15205) = 1;
      v12 = *(a1 + 14432);
      v39 = 4 * v6;
      v13 = 4 * v6 + 4;
      v14 = (v13 * 0x3333333333333334uLL) >> 64;
      if (*(a1 + 45))
      {
        v15 = v6;
      }

      else
      {
        v15 = (v13 * 0x3333333333333334uLL) >> 64;
      }

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

      msync(v12, v15, 16);
      if (*(a1 + 45))
      {
        v16 = v6;
      }

      else
      {
        v16 = v14;
      }

      munmap(*(a1 + 14432), v16);
      *(a1 + 14432) = -1;
      v17 = v40;
      v18 = v40;
      if ((*(a1 + 45) & 1) == 0)
      {
        v18 = (4 * v40 + 4) / 5;
      }

      if (expandMap(*(a1 + 14472), v18, (a1 + 14432), a2, a3))
      {
        v7 = *__error();
        v19 = *__error();
        v20 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v42 = "indexGrowDocumentPayloads";
          v43 = 1024;
          v44 = 4848;
          v45 = 2080;
          v46 = a1 + 15208;
          v47 = 1024;
          v48 = 4848;
          _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
        }

        *__error() = v19;
        if (*(a1 + 8) == 1)
        {
          *(a1 + 8) = 0;
          *(a1 + 12) = v7;
        }

        munmap(*(a1 + 14408), 8 * v17);
        *(a1 + 14408) = -1;
      }

      else
      {
        v21 = *(a1 + 14440);
        if (v21)
        {
          v22 = MEMORY[0x1E69E9AC8];
          if (*(a1 + 45) == 1)
          {
            v23 = v17 + 3;
          }

          else
          {
            v23 = ((v17 + 4) * 0xCCCCCCCCCCCCCCCDLL) >> 64;
          }

          v24 = malloc_type_realloc(v21, (8 * *MEMORY[0x1E69E9AC8] - 1 + (v23 >> 2)) / (8 * *MEMORY[0x1E69E9AC8]), 0x2862C721uLL);
          *(a1 + 14440) = v24;
          if (*(a1 + 45) == 1)
          {
            v26 = (v6 + 3) >> 2;
            v27 = v17 + 3;
          }

          else
          {
            v26 = ((v6 + 4) * 0x3333333333333334uLL) >> 64;
            v27 = ((v17 + 4) * 0xCCCCCCCCCCCCCCCDLL) >> 64;
          }

          v25 = 8 * *v22;
          bzero(&v24[(v26 + v25 - 1) / v25], (v25 + (v27 >> 2) - 1) / v25 - (v26 + v25 - 1) / v25);
        }

        v28 = *(a1 + 14416);
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

        msync(v28, v39, 16);
        munmap(*(a1 + 14416), v39);
        *(a1 + 14416) = -1;
        v29 = 4 * v17;
        if (expandMap(*(a1 + 14456), 4 * v17, (a1 + 14416), a2, a3))
        {
          v7 = *__error();
          v30 = *__error();
          v31 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v42 = "indexGrowDocumentPayloads";
            v43 = 1024;
            v44 = 4832;
            v45 = 2080;
            v46 = a1 + 15208;
            v47 = 1024;
            v48 = 4832;
            _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
          }

          *__error() = v30;
          if (*(a1 + 8) == 1)
          {
            *(a1 + 8) = 0;
            *(a1 + 12) = v7;
          }

          munmap(*(a1 + 14408), 8 * v17);
          *(a1 + 14408) = -1;
          munmap(*(a1 + 14416), 4 * v17);
          *(a1 + 14416) = -1;
          v32 = *(a1 + 14432);
          if (*(a1 + 45))
          {
            v33 = v17;
          }

          else
          {
            v33 = (v29 + 4) / 5uLL;
          }
        }

        else
        {
          if (!*(a1 + 14464) || (v34 = *(a1 + 14424), v35 = 8 * v6, fd_system_status_stall_if_busy(), msync(v34, v35, 16), munmap(*(a1 + 14424), v35), *(a1 + 14424) = -1, (v36 = *(a1 + 14464)) == 0) || !expandMap(v36, 8 * v17, (a1 + 14424), a2, a3))
          {
            v7 = 0;
            *(a1 + 72) = v17;
            goto LABEL_8;
          }

          v7 = *__error();
          v37 = *__error();
          v38 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v42 = "indexGrowDocumentPayloads";
            v43 = 1024;
            v44 = 4815;
            v45 = 2080;
            v46 = a1 + 15208;
            v47 = 1024;
            v48 = 4815;
            _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
          }

          *__error() = v37;
          if (*(a1 + 8) == 1)
          {
            *(a1 + 8) = 0;
            *(a1 + 12) = v7;
          }

          munmap(*(a1 + 14408), 8 * v17);
          *(a1 + 14408) = -1;
          munmap(*(a1 + 14416), 4 * v17);
          *(a1 + 14416) = -1;
          munmap(*(a1 + 14424), 8 * v17);
          *(a1 + 14424) = -1;
          v32 = *(a1 + 14432);
          if ((*(a1 + 45) & 1) == 0)
          {
            v17 = (v29 + 4) / 5uLL;
          }

          v33 = v17;
        }

        munmap(v32, v33);
        *(a1 + 14432) = -1;
      }
    }
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void attributeMergeInfoWildcardApplier(unint64_t key, const void *a2, uint64_t a3)
{
  if ((key & 0x80000000) == 0 && !CFDictionaryGetValue(*(a3 + 8), key))
  {
    Mutable = *(a3 + 16);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      *(a3 + 16) = Mutable;
    }

    CFDictionarySetValue(Mutable, (key | 0x40000000), a2);
  }
}

CFTypeID __updateChangedAttributes_block_invoke()
{
  updateChangedAttributes_dateType = CFDateGetTypeID();
  result = CFArrayGetTypeID();
  updateChangedAttributes_arrayType = result;
  return result;
}

uint64_t cleanUpTermUpdateMergeContext(pthread_mutex_t **a1)
{
  v2 = *a1;
  v1 = a1[1];
  pthread_mutex_lock(*a1 + 230);
  *&v2[233].__opaque[4] = 0;
  v3 = *&v2[232].__opaque[40];
  *&v2[232].__opaque[40] = 0u;
  v4 = HIDWORD(v2[233].__sig) != 0;
  v2[233].__opaque[12] = 0;
  db_rwlock_wakeup(&v2[230], v4, 0);
  pthread_mutex_unlock(v2 + 230);
  if (v3)
  {
    pthread_override_qos_class_end_np(v3);
  }

  dispatch_release(*(*&v2[245].__opaque[16] + 40));
  v5 = *&v2[245].__opaque[16];
  *&v2[245].__opaque[16] = 0;
  os_unfair_lock_unlock(v2[245].__opaque);
  dispatch_semaphore_signal(*&v2[245].__opaque[8]);
  free(v5);
  TermUpdateSetRelease(v1);
  return 0;
}

void mergeAttributesForNewEntryApplier(void *key, const void *a2, CFDictionaryRef *a3)
{
  Value = CFDictionaryGetValue(*a3, key);
  if (!Value || Value != a2 && !CFEqual(Value, a2))
  {
    CFSetSetValue(a3[1], (key & 0x3FFFFFF));
  }

  v7 = CFGetTypeID(a2);
  TypeID = CFNullGetTypeID();
  v9 = a3[2];
  if (v7 == TypeID)
  {

    CFDictionaryRemoveValue(v9, key);
  }

  else
  {

    CFDictionarySetValue(v9, key, a2);
  }
}

uint64_t si_rwlock_wrunlock_3589(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  *(a1 + 204) = 0;
  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v4 = *(a1 + 196) != 0;
  *(a1 + 212) = 0;
  db_rwlock_wakeup(a1, v4, 0);
  pthread_mutex_unlock(a1);
  if (v3)
  {
    pthread_override_qos_class_end_np(v3);
  }

  return v2;
}

void IndexFdInfoDispose(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2 != -1)
    {
      _fd_release_fd(*(*a1 + 14480), v2, 0, *(a1 + 2));
    }

    v3 = *(a1 + 6);
    if (v3 != -1)
    {
      _fd_release_fd(*(*a1 + 472), v3, 0, *(a1 + 4));
    }

    v4 = *(a1 + 10);
    if (v4 != -1)
    {
      _fd_release_fd(*(*a1 + 9432), v4, 0, *(a1 + 6));
    }

    v5 = *(a1 + 14);
    if (v5 != -1)
    {
      _fd_release_fd(*(*a1 + 5200), v5, 0, *(a1 + 8));
    }

    v6 = *(a1 + 18);
    if (v6 != -1)
    {
      _fd_release_fd(*(*a1 + 14152), v6, 0, *(a1 + 10));
    }

    v7 = *(a1 + 22);
    if (v7 != -1)
    {
      _fd_release_fd(*(*a1 + 9920), v7, 0, *(a1 + 12));
    }

    v8 = *(a1 + 26);
    if (v8 != -1)
    {
      _fd_release_fd(*(*a1 + 14472), v8, 0, *(a1 + 14));
    }

    v9 = *(a1 + 30);
    if (v9 != -1)
    {
      _fd_release_fd(*(*a1 + 14448), v9, 0, *(a1 + 16));
    }

    v10 = *(a1 + 34);
    if (v10 != -1)
    {
      _fd_release_fd(*(*a1 + 14456), v10, 0, *(a1 + 18));
    }

    v11 = *(a1 + 38);
    if (v11 != -1)
    {
      _fd_release_fd(*(*a1 + 14464), v11, 0, *(a1 + 20));
    }

    if (g_fd_list)
    {
      _fd_close_inactive(*(*a1 + 64), (*a1 + 15208), 0, 0);
    }

    free(a1);
  }
}

_DWORD *IndexFdInfoCreate(uint64_t *a1, int a2)
{
  v4 = malloc_type_malloc(0xA8uLL, 0x1020040A0A6502FuLL);
  *v4 = a1;
  v4[6] = -1;
  v4[10] = -1;
  v4[14] = -1;
  v4[18] = -1;
  v4[22] = -1;
  v4[26] = -1;
  v4[30] = -1;
  v4[34] = -1;
  v4[38] = -1;
  v5 = _fd_acquire_fd(a1[1810], v4 + 2);
  v4[2] = v5;
  if (v5 == -1)
  {
    goto LABEL_14;
  }

  v6 = _fd_acquire_fd(a1[59], v4 + 4);
  v4[6] = v6;
  if (v6 == -1)
  {
    goto LABEL_14;
  }

  v7 = _fd_acquire_fd(a1[1179], v4 + 6);
  v4[10] = v7;
  if (v7 == -1)
  {
    goto LABEL_14;
  }

  v8 = _fd_acquire_fd(a1[1769], v4 + 10);
  v4[18] = v8;
  if (v8 == -1)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    v9 = _fd_acquire_fd(a1[650], v4 + 8);
    v4[14] = v9;
    if (v9 == -1 || (v10 = _fd_acquire_fd(a1[1240], v4 + 12), v4[22] = v10, v10 == -1))
    {
LABEL_14:
      IndexFdInfoDispose(v4);
      return 0;
    }
  }

  else
  {
    v11 = _fd_acquire_fd(a1[1809], v4 + 14);
    v4[26] = v11;
    if (v11 == -1)
    {
      goto LABEL_14;
    }

    v12 = _fd_acquire_fd(a1[1806], v4 + 16);
    v4[30] = v12;
    if (v12 == -1)
    {
      goto LABEL_14;
    }

    v13 = _fd_acquire_fd(a1[1807], v4 + 18);
    v4[34] = v13;
    if (v13 == -1)
    {
      goto LABEL_14;
    }

    v14 = a1[1808];
    if (v14)
    {
      v15 = _fd_acquire_fd(v14, v4 + 20);
      v4[38] = v15;
      if (v15 == -1)
      {
        goto LABEL_14;
      }
    }
  }

  return v4;
}

uint64_t index_compact(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v202 = *MEMORY[0x1E69E9840];
  bzero(v201, 0x400uLL);
  bzero(v200, 0x400uLL);
  bzero(v199, 0x400uLL);
  bzero(v191, 0x4908uLL);
  v9 = atomic_load((v8 + 36));
  *v3 = 0;
  v11 = atomic_load((v8 + 15192));
  if (v11 || ((*(v7 + 16))(*(v7 + 24)) & 1) != 0)
  {
LABEL_3:
    result = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  if ((*(v8 + 8) & 1) == 0)
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v175[0]) = 136315650;
      *(v175 + 4) = "index_compact";
      WORD6(v175[0]) = 1024;
      *(v175 + 14) = 5817;
      WORD1(v175[1]) = 2080;
      *(&v175[1] + 4) = v8 + 15208;
      v18 = "%s:%d: invalid index: %s";
      goto LABEL_28;
    }

LABEL_11:
    *__error() = v16;
    result = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  v14 = atomic_load((v8 + 36));
  if ((v14 & 4) == 0)
  {
    v15 = atomic_load((v8 + 36));
    if ((v15 & 2) == 0)
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v175[0]) = 136315650;
        *(v175 + 4) = "index_compact";
        WORD6(v175[0]) = 1024;
        *(v175 + 14) = 5825;
        WORD1(v175[1]) = 2080;
        *(&v175[1] + 4) = v8 + 15208;
        v18 = "%s:%d: cant compact writable index: %s";
LABEL_28:
        _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, v18, v175, 0x1Cu);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (v5 == -1)
    {
      v21 = -1;
    }

    else if (preflight_compact(v8, v5))
    {
      v21 = v5;
    }

    else
    {
      v21 = -1;
    }

    v22 = v21;
    if (!preflight_compact(v8, *(v8 + 64)))
    {
      goto LABEL_3;
    }

    v145 = v22;
    Current = CFAbsoluteTimeGetCurrent();
    v140 = *(v8 + 64);
    ForwardStore = 0;
    _initPayload(v197, 1);
    _initPayload(v198, 1);
    bzero(v196, 0x12D0uLL);
    pthread_mutex_init(&v196[575], 0);
    bzero(&v196[20], 0x1140uLL);
    bzero(v191, 0x1144uLL);
    v24 = *MEMORY[0x1E695E480];
    v141 = SIUINT32SetCreate();
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v25 = setThreadIdAndInfo(-1, sExcCompactCallbacks, v191, 0, add_explicit + 1);
    v162 = HIDWORD(v25);
    v163 = v25;
    v161 = v26;
    v160 = v27;
    v28 = threadData[9 * v25 + 1] + 320 * HIDWORD(v25);
    v151 = *(v28 + 312);
    v29 = *(v28 + 224);
    if (v29)
    {
      v29(*(v28 + 288));
    }

    v159 = v163;
    v158 = v162;
    v157 = __PAIR64__(v161, v160);
    if (_setjmp(v28))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v175[0]) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v175, 2u);
      }

      *(v28 + 312) = v151;
      CIOnThreadCleanUpReset(v157);
      dropThreadId(v159, 1, add_explicit + 1);
      CICleanUpReset(v159, HIDWORD(v157));
      v30 = 0;
      v31 = 0;
      v32 = v141;
LABEL_74:
      if (v32)
      {
        CFRelease(v32);
      }

      v56 = *__error();
      v57 = _SILogForLogForCategory(10);
      v58 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = CFAbsoluteTimeGetCurrent() - Current;
        LODWORD(v175[0]) = 134218240;
        *(v175 + 4) = v59;
        WORD6(v175[0]) = 1024;
        *(v175 + 14) = v30;
        _os_log_impl(&dword_1C278D000, v57, v58, "index_compact time (%f) - %d", v175, 0x12u);
      }

      *__error() = v56;
      if (v30)
      {
        v60 = 1;
      }

      else
      {
        v60 = v31;
      }

      if (v60)
      {
        v61 = v30;
      }

      else
      {
        v61 = 0xFFFFFFFFLL;
      }

      if (v199[0])
      {
        index_DeleteIndex(0, v140, v199, 1);
      }

      result = v61;
      goto LABEL_4;
    }

    LODWORD(v33) = 0;
    v149 = CICleanUpThreadLoc();
    v150 = LODWORD(threadData[9 * v149 + 4]);
    v199[0] = 0;
    snprintf(v199, 0x400uLL, "tmp.%scmpt.", (v8 + 15208));
    if (!openPayload(v197, v140, v199, "indexPostings", "indexTermIds", v201, 0, 0, 0, *(v8 + 4), *(v8 + 4936)) || (LODWORD(v33) = 0, !openPayload(v198, v140, v199, "indexPositions", "indexPositionTable", v201, 0, 0, 0, *(v8 + 4), *(v8 + 4936))) || (LODWORD(v33) = 0, !bt_openTrie(v196, v140, v199, 1, 0, 0, *(v8 + 4), *(v8 + 4936))))
    {
      v42 = 0;
      goto LABEL_56;
    }

    if (*(v8 + 4928))
    {
      ForwardStore = createForwardStore(v140, v199, *(v8 + 4936));
      if (!ForwardStore)
      {
        LODWORD(v33) = 0;
        v42 = 0;
        goto LABEL_56;
      }
    }

    if (_os_feature_enabled_impl() && *(v8 + 15714) == 1 && *(v8 + 4912))
    {
      v34 = *(v8 + 56);
      createVectorIndexWithPrototype();
    }

    snprintf(v201, 0x400uLL, "%s%s", v199, "newTermIDMap");
    v35 = *(v8 + 9400);
    if (v35 <= 0x4000000)
    {
      v36 = 0x8000000;
    }

    else
    {
      v36 = 0x10000000;
    }

    if (v35 >= 0x2000001)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0x4000000;
    }

    if (v35 >= 0x1000001)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0x2000000;
    }

    if (v35 > 0x800000)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0x1000000;
    }

    LODWORD(v33) = 0;
    v40 = fd_create_protected(v140, v201, 536872450, 0);
    if (!uint32_map_init(v191, v40, v35, v39, (v9 >> 9) & 1))
    {
LABEL_54:
      v42 = 1;
LABEL_56:
      v43 = v42;
      CICleanUpReset(v149, v150);
      v44 = 0;
      v45 = v33;
      goto LABEL_57;
    }

    v41 = termIdStoreAllocBulk(&v197[5], v35);
    if (v41 || (v143 = v35, (v41 = termIdStoreAllocBulk(&v198[5], v35)) != 0))
    {
      LODWORD(v33) = v41;
      goto LABEL_54;
    }

    if (*v7)
    {
      v62 = (*v7)(*(v7 + 24));
    }

    else
    {
      v62 = 0;
    }

    v33 = IndexFdInfoCreate(v8, 1);
    v63 = *(v7 + 8);
    if (v63)
    {
      v63(*(v7 + 24), v62);
      v62 = 0;
    }

    v146 = v62;
    if (!v33)
    {
      v42 = 1;
      goto LABEL_56;
    }

    v10 = (v8 + 15192);
    v64 = (v8 + 15192);
    CICleanUpPush(v149, IndexFdInfoDispose, v33);
    v65 = CFAbsoluteTimeGetCurrent();
    v156[0] = v191;
    v156[1] = 1;
    *v3 = 1;
    bzero(v175, 0x5160uLL);
    _bt_dumpTrie(v8 + 96, 0, (v8 + 15192), v175, reorderTermIdCallback, v156);
    v66 = *(v8 + 4928);
    if (v66)
    {
      v155[6] = MEMORY[0x1E69E9820];
      v155[7] = 0x40000000;
      v155[8] = __index_compact_block_invoke;
      v155[9] = &__block_descriptor_tmp_65_3615;
      v155[10] = v156;
      v155[11] = v8;
      dumpDirectoryStore(v66);
    }

    v67 = *(v8 + 4912);
    if (v67)
    {
      v155[0] = MEMORY[0x1E69E9820];
      v155[1] = 0x40000000;
      v155[2] = __index_compact_block_invoke_2;
      v155[3] = &__block_descriptor_tmp_68;
      v155[4] = v156;
      v155[5] = v8;
      dumpVectorIndex(v67, 0, (v8 + 15192), 0, v155);
    }

    *v3 = 0;
    v68 = atomic_load(v10);
    if (v68 || ((*(v7 + 16))(*(v7 + 24)) & 1) != 0)
    {
      goto LABEL_103;
    }

    v69 = *__error();
    v70 = _SILogForLogForCategory(10);
    v71 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = CFAbsoluteTimeGetCurrent() - v65;
      LODWORD(v175[0]) = 134217984;
      *(v175 + 4) = v72;
      _os_log_impl(&dword_1C278D000, v70, v71, "computer new term ids time (%f)", v175, 0xCu);
    }

    *__error() = v69;
    if (atomic_load(v10))
    {
LABEL_103:
      LODWORD(v33) = 0;
      goto LABEL_54;
    }

    v154 = 0;
    v74 = atomic_load((v8 + 36));
    v75 = (v74 & 0xC) == 8 && indexCopyDeleteDocIds(v8, 1, &v154) + 1 == *(v8 + 68);
    v148 = v75;
    v76 = v154;
    CICleanUpPush(v149, bit_vector_release, v154);
    *v3 = 1;
    v77 = atomic_load((v8 + 36));
    v78 = CICompactPayloads(v197, 1, v76, v191, v8 + 4944, v199, v145, (v77 & 8) != 0, (v8 + 15192));
    *v3 = 0;
    if (v78 || (v79 = atomic_load(v10)) != 0 || *(v8 + 8) != 1 || (*(v7 + 16))(*(v7 + 24)))
    {
      v81 = v78;
      v82 = *__error();
      v83 = _SILogForLogForCategory(10);
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
LABEL_113:
        LODWORD(v33) = v81;
        *__error() = v82;
        goto LABEL_54;
      }

      LODWORD(v175[0]) = 136315394;
      *(v175 + 4) = "index_compact";
      WORD6(v175[0]) = 1024;
      *(v175 + 14) = 5999;
      v84 = "%s:%d: Failed compacting postings";
LABEL_115:
      _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, v84, v175, 0x12u);
      goto LABEL_113;
    }

    if (!v148)
    {
      *v3 = 1;
      v85 = v154;
      v86 = atomic_load((v8 + 36));
      v80 = CICompactPayloads(v198, 2, v85, v191, v8 + 9664, v199, v145, (v86 & 8) != 0, (v8 + 15192));
      *v3 = 0;
      if (v80)
      {
LABEL_122:
        v81 = v80;
        v82 = *__error();
        v83 = _SILogForLogForCategory(10);
        if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        LODWORD(v175[0]) = 136315394;
        *(v175 + 4) = "index_compact";
        WORD6(v175[0]) = 1024;
        *(v175 + 14) = 6012;
        v84 = "%s:%d: Failed compacting positions";
        goto LABEL_115;
      }
    }

    v87 = atomic_load(v10);
    if (v87 || *(v8 + 8) != 1 || (*(v7 + 16))(*(v7 + 24), v80))
    {
      LODWORD(v80) = 0;
      goto LABEL_122;
    }

    v88 = CFAbsoluteTimeGetCurrent();
    bzero(&v181, 0x890uLL);
    v176[0] = v8;
    v176[1] = v8 + 96;
    v147 = (v8 + 96);
    v176[2] = v196;
    v177 = v197;
    v178 = v198;
    v179 = v191;
    v180 = v3;
    bzero(v175, 0x10000uLL);
    fd_pread(v198[561], v175, 0x10000uLL, 0);
    if (v143 >= 2)
    {
      v89 = 0;
      v90 = 1;
      v91 = 8;
      while (1)
      {
        v139 = v90;
        v92 = atomic_load(v64);
        if (v92 || (*(v7 + 16))(*(v7 + 24)))
        {
          goto LABEL_137;
        }

        v93 = *storageResolvePtr(&v198[5], v91, 8, 1);
        if (v93)
        {
          if (v93 < v89 || v93 + 10 > v89 + 0x10000)
          {
            v89 = v93 & ~*MEMORY[0x1E69E9AB8];
            fd_pread(v198[561], v175, 0x10000uLL, v89);
          }

          v172[0] = v93 - v89;
          if (!v2_readVInt32(v175, v172))
          {
            break;
          }
        }

        v90 = v139 + 1;
        v91 += 8;
        if (v143 == v139 + 1)
        {
          goto LABEL_137;
        }
      }

      v131 = 1;
      do
      {
        if (uint32_map_get(v191, v131) == v139)
        {
          goto LABEL_207;
        }

        ++v131;
      }

      while (v143 != v131);
      v131 = 0;
LABEL_207:
      *v3 = 1;
      v132 = __si_assert_copy_extra_3233(v198[561], -1);
      v133 = v132;
      v134 = "";
      if (v132)
      {
        v134 = v132;
      }

      __message_assert("%s:%u: failed assertion '%s' %s missing positions for term %d (%d)", "JHContentIndex.c", 6056, "false", v134, v139, v131);
      free(v133);
      if (__valid_fsp(v198[561]))
      {
        goto LABEL_210;
      }

      goto LABEL_214;
    }

LABEL_137:
    v182 = v196;
    v188 = 0;
    v186 = 0u;
    v190 = 0u;
    v183 = 1;
    v187 = 0u;
    v189 = 0;
    v184 = 0;
    v185 = 0;
    _bt_dumpTrie(v147, 0, (v8 + 15192), 0, compactTermsCallback, v176);
    v95 = *(v8 + 4928);
    if (v95)
    {
      v96 = *(v7 + 16);
      v175[0] = *v7;
      v175[1] = v96;
      compactForwardDirectoryStore(v95);
    }

    v97 = *(v8 + 4912);
    if (v97)
    {
      v98 = *(v7 + 16);
      v175[0] = *v7;
      v175[1] = v98;
      compactVectorIndex(v97, v195, v179, (v177 + 5), v175, (v8 + 15192));
    }

    v99 = atomic_load(v64);
    if (v99 || ((*(v7 + 16))(*(v7 + 24)) & 1) != 0 || HIDWORD(v183))
    {
      goto LABEL_103;
    }

    if (v193 - 1 < v181)
    {
      *v3 = 1;
      v136 = __si_assert_copy_extra_3233(*(v8 + 14480), -1);
      v137 = v136;
      v138 = "";
      if (v136)
      {
        v138 = v136;
      }

      __message_assert("%s:%u: failed assertion '%s' %s inconsistent term counts (%d %d)", "JHContentIndex.c", 6085, "false", v138, v181, v193 - 1);
      free(v137);
      if (__valid_fsp(*(v8 + 14480)))
      {
LABEL_210:
        v135 = 2989;
        goto LABEL_215;
      }

LABEL_214:
      v135 = 3072;
LABEL_215:
      *v135 = -559038737;
      abort();
    }

    v100 = *__error();
    v101 = _SILogForLogForCategory(10);
    v102 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v101, v102))
    {
      v103 = CFAbsoluteTimeGetCurrent() - v88;
      LODWORD(v175[0]) = 134217984;
      *(v175 + 4) = v103;
      _os_log_impl(&dword_1C278D000, v101, v102, "compact_trie time (%f)", v175, 0xCu);
    }

    *__error() = v100;
    _fd_unlink_with_origin(v197[32], 0);
    termIdStoreDestroy(&v197[5]);
    _fd_unlink_with_origin(v198[32], 0);
    termIdStoreDestroy(&v198[5]);
    if (SLODWORD(v196[51]) >= 1)
    {
      v104 = 0;
      do
      {
        v105 = v104;
        storageWindowSync(v196[v104 + 54], 0);
        v104 = v105 + 1;
      }

      while (v105 + 1 < SLODWORD(v196[51]));
    }

    if (SLODWORD(v198[36]) >= 1)
    {
      v106 = 0;
      do
      {
        v107 = v106;
        storageWindowSync(v198[v106 + 39], 0);
        v106 = v107 + 1;
      }

      while (v107 + 1 < SLODWORD(v198[36]));
    }

    bt_syncTrie(v196);
    if (v197[3] == v197[4])
    {
      v108 = v197[3];
      if (v197[1] == v197[3])
      {
        v197[1] = v197[0];
        v197[3] = v197[0];
        v108 = v197[0];
      }
    }

    else
    {
      v108 = v197[3];
    }

    fd_truncate(v197[561], v108);
    fd_sync(v197[561], 0);
    if (v198[3] == v198[4])
    {
      v109 = v198[3];
      if (v198[1] == v198[3])
      {
        v198[1] = v198[0];
        v198[3] = v198[0];
        v109 = v198[0];
      }
    }

    else
    {
      v109 = v198[3];
    }

    fd_truncate(v198[561], v109);
    fd_sync(v198[561], 0);
    storageTruncate(&v196[20]);
    fd_truncate(v196[14], v196[4]);
    fd_truncate(v196[572], 1028 * (LODWORD(v196[18]) + 1));
    v110 = v146;
    if (*v7)
    {
      v110 = (*v7)(*(v7 + 24));
    }

    v144 = v110;
    CICleanUpReset(v149, v150);
    v111 = *(v8 + 14448);
    if (v111 && (*(v111 + 48) & 3) != 0)
    {
      fd_truncate(v111, 8 * *(v8 + 68));
      fd_make_readonly(*(v8 + 14448));
    }

    storageMakeReadOnly(&v196[20]);
    if (v195)
    {
      IVFVectorIndex_s::makeReadOnly((v195 + 2));
    }

    v142 = (v8 + 15208);
    fd_reparent(v198[561], *(v8 + 64));
    fd_reparent(v197[561], *(v8 + 64));
    fd_make_readonly(v196[14]);
    fd_make_readonly(v197[561]);
    _fd_unlink_with_origin(v197[32], 0);
    storageClose(&v197[5]);
    fd_make_readonly(v198[561]);
    _fd_unlink_with_origin(v198[32], 0);
    storageClose(&v198[5]);
    if (*(v8 + 4928))
    {
      LODWORD(v175[0]) = 0;
      shadowForwardStore(ForwardStore, 1, v175);
    }

    _db_write_lock(v8 + 14504);
    _db_write_lock(v8 + 4696);
    _db_write_lock(v8 + 14720);
    bzero(v174, 0x208uLL);
    v173 = 0x6D6F76650A00;
    v174[0] = 4;
    __strlcpy_chk();
    __strlcpy_chk();
    v112 = si_openat_protected(*(v8 + 64), "tmp.movePlan", 1538, 3);
    pwrite(v112, &v173, 0x210uLL, 0);
    fcntl(v112, 85);
    close(v112);
    *(v8 + 4685) = 1;
    memcpy(v175, v8, 0x3D68uLL);
    memcpy(&v175[6], v196, 0x12D0uLL);
    memcpy(&v175[604], v198, 0x1270uLL);
    memcpy(&v175[309], v197, 0x1270uLL);
    bzero(v172, 0x1000uLL);
    v153 = 0;
    DWORD1(v175[0]) = *(v8 + 4);
    atomic_fetch_or(&v175[2] + 1, 4u);
    if (v148)
    {
      atomic_fetch_or(&v175[2] + 1, 0x10u);
    }

    atomic_store(0xC001D00D, &v175[2]);
    v153 = v172;
    indexStoreToBuffer(v175, &v153);
    snprintf(v201, 0x400uLL, "%s%s", v199, "shadowIndexHead");
    v113 = fd_create_protected(*(v8 + 64), v201, 536872450, 0);
    if (v113)
    {
      v114 = v113;
      if (fd_pwrite(v113, v172, 0x1000uLL, 0) == -1)
      {
        v126 = *__error();
        v127 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
LABEL_196:
          v123 = v126;
          goto LABEL_197;
        }

        v128 = *__error();
        *buf = 136315650;
        v165 = "index_compact";
        v166 = 1024;
        v167 = 6229;
        v168 = 1024;
        v169 = v128;
LABEL_202:
        _os_log_error_impl(&dword_1C278D000, v127, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err: %d", buf, 0x18u);
        goto LABEL_196;
      }

      fd_release(v114);
      snprintf(v201, 0x400uLL, "%s%s", v199, "indexHead");
      v115 = fd_create_protected(v140, v201, 536872450, 0);
      if (v115)
      {
        v114 = v115;
        fd_no_cache(v115);
        if (fd_pwrite(v114, v172, 0x1000uLL, 0) != -1)
        {
          fd_sync(v114, 1);
          snprintf(v201, 0x400uLL, "%s%s", v142, "indexHead");
          fd_rename(v114, v201);
          v116 = *(v8 + 14480);
          *(v8 + 14480) = v114;
          fd_release(v116);
          snprintf(v201, 0x400uLL, "%s%s", v142, "indexPostings");
          fd_rename(v197[561], v201);
          memcpy(v175, v197, 0x1270uLL);
          memcpy(v197, (v8 + 4944), 0x11A8uLL);
          memcpy((v8 + 4944), v175, 0x11A8uLL);
          snprintf(v201, 0x400uLL, "%s%s", v142, "indexPositions");
          fd_rename(v198[561], v201);
          memcpy(v175, v198, 0x1270uLL);
          memcpy(v198, (v8 + 9664), 0x11A8uLL);
          memcpy((v8 + 9664), v175, 0x11A8uLL);
          bt_changePrefix(v196, v199, v142, 0);
          memcpy(v175, v196, 0x12D0uLL);
          memcpy(v196, v147, 0x11F8uLL);
          memcpy(v147, v175, 0x11F8uLL);
          LODWORD(v175[0]) = 0;
          if (fd_setDir(*(v8 + 64), v175))
          {
            snprintf(v201, 0x400uLL, "%s%s", v142, "indexUpdates");
            unlink(v201);
            snprintf(v201, 0x400uLL, "%s%s", v142, "shadowIndexHead");
            snprintf(v200, 0x400uLL, "%s%s", v199, "shadowIndexHead");
            rename(v200, v201, v117);
            v118 = *(v8 + 4928);
            if (v118)
            {
              subvertForwardDirectoryStore(v118, ForwardStore);
              *(v8 + 4928) = ForwardStore;
              ForwardStore = 0;
            }

            v119 = *(v8 + 4912);
            if (v119)
            {
              subvertVectorIndex(v119, v195);
              v120 = v195;
              *(v8 + 4912) = v195;
              v195 = 0;
              vectorIndexEndMerge(v120);
            }

            fd_resetDir(v175[0]);
          }

          unlinkat(*(v8 + 64), "tmp.movePlan", 2048);
          if (v148)
          {
            v121 = 20;
          }

          else
          {
            v121 = 4;
          }

          atomic_fetch_or((v8 + 36), v121);
          v122 = *(v7 + 8);
          if (v122)
          {
            v122(*(v7 + 24), v144);
          }

          CICleanUpReset(v149, v150);
          db_write_unlock(v8 + 4696);
          db_write_unlock(v8 + 14504);
          db_write_unlock(v8 + 14720);
          index_optimize_disk_space(v8);
          v52 = 0;
          if (g_fd_list)
          {
            _fd_close_inactive(*(v8 + 64), v142, 0, 0);
          }

          v51 = 1;
          v46 = add_explicit;
          v32 = v141;
          v47 = v151;
          goto LABEL_70;
        }

        v126 = *__error();
        v127 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_196;
        }

        v130 = *__error();
        *buf = 136315650;
        v165 = "index_compact";
        v166 = 1024;
        v167 = 6244;
        v168 = 1024;
        v169 = v130;
        goto LABEL_202;
      }

      v123 = *__error();
      v124 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
LABEL_194:
        v114 = 0;
LABEL_197:
        *__error() = v123;
        CICleanUpReset(v149, v150);
        db_write_unlock(v8 + 4696);
        db_write_unlock(v8 + 14504);
        db_write_unlock(v8 + 14720);
        v45 = 0;
        v43 = 1;
        v44 = v114;
LABEL_57:
        v46 = add_explicit;
        v32 = v141;
        v47 = v151;
        fd_release(v44);
        if (v195)
        {
          vectorIndexCancelMerge(v195);
        }

        fd_zero_truncate(v196[572]);
        fd_zero_truncate(v196[14]);
        fd_zero_truncate(v196[47]);
        fd_zero_truncate(v197[32]);
        fd_zero_truncate(v197[561]);
        fd_zero_truncate(v198[32]);
        fd_zero_truncate(v198[561]);
        fd_zero_truncate(v192);
        if (ForwardStore)
        {
          fd_zero_truncate(ForwardStore[28]);
          freeForwardDirectoryStore(ForwardStore);
          ForwardStore = 0;
          unlinkDirectoryStore(v199);
          unlinkDirectoryStoreShadow(v199);
        }

        if (v195)
        {
          v48 = v201;
          v49 = fcntl(*v195, 50, v201);
          if (v201[0].__pn_.__r_.__value_.__s.__data_[0])
          {
            v50 = v49 < 0;
          }

          else
          {
            v50 = 1;
          }

          if (v50)
          {
            v48 = 0;
          }

          truncateVectorIndex(v195);
          freeVectorIndex(v195);
          v195 = 0;
          IVFVectorIndex_s::unlink(&v48->__pn_, v199, 0);
          IVFVectorIndex_s::unlink(&v48->__pn_, v199, 1);
          v51 = 0;
          v52 = v45;
          v53 = 0;
          if ((v43 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v51 = 0;
          v52 = v45;
          v53 = 0;
          if (!v43)
          {
LABEL_71:
            storageClose(v191);
            bt_freeTrie(v196);
            freePayload(v198);
            freePayload(v197);
            v54 = threadData[9 * v159 + 1] + 320 * v158;
            *(v54 + 312) = v47;
            v55 = *(v54 + 232);
            if (v55)
            {
              v55(*(v54 + 288));
            }

            dropThreadId(v159, 0, v46 + 1);
            v31 = v53;
            v30 = v45;
            goto LABEL_74;
          }
        }

LABEL_70:
        v53 = v51;
        _fd_unlink_with_origin(v192, 0);
        v45 = v52;
        goto LABEL_71;
      }

      v129 = *__error();
      *buf = 136315906;
      v165 = "index_compact";
      v166 = 1024;
      v167 = 6239;
      v168 = 1024;
      v169 = v129;
      v170 = 2080;
      v171 = v201;
    }

    else
    {
      v123 = *__error();
      v124 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_194;
      }

      v125 = *__error();
      *buf = 136315906;
      v165 = "index_compact";
      v166 = 1024;
      v167 = 6225;
      v168 = 1024;
      v169 = v125;
      v170 = 2080;
      v171 = v201;
    }

    _os_log_error_impl(&dword_1C278D000, v124, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    v114 = 0;
    goto LABEL_197;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v175[0]) = 136315650;
    *(v175 + 4) = "index_compact";
    WORD6(v175[0]) = 1024;
    *(v175 + 14) = 5821;
    WORD1(v175[1]) = 2080;
    *(&v175[1] + 4) = v8 + 15208;
    _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: index alreay compact: %s", v175, 0x1Cu);
  }

  *__error() = v19;
  result = 0;
LABEL_4:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t preflight_compact(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  bzero(&v36, 0x878uLL);
  v4 = atomic_load((a1 + 36));
  atomic_load((a1 + 36));
  v5 = 68;
  if ((v4 & 4) == 0)
  {
    v5 = 72;
  }

  v6 = *(a1 + v5);
  if (*(a1 + 45))
  {
    v7 = v6;
  }

  else
  {
    v7 = ((4 * v6 + 4) * 0x3333333333333334uLL) >> 64;
  }

  v8 = v7 + 8 * v6 + *(a1 + 4968) + 4096;
  if ((v4 & 4) != 0)
  {
    v9 = *(a1 + 9688) + v8;
    v10 = 488;
    v11 = 128;
    v12 = 240;
  }

  else
  {
    v9 = *(a1 + 9688) + v8 + 8 * *(a1 + 9404) + 8 * *(a1 + 14124);
    v10 = 480;
    v11 = 136;
    v12 = 244;
  }

  v13 = *(a1 + v11) + v9 + 1028 * *(a1 + v12) + *(a1 + v10) + 1028;
  v14 = *(a1 + 4928);
  if (v14)
  {
    v13 += *(v14 + 232);
  }

  if (fstatfs(a2, &v36) == -1)
  {
    v17 = *__error();
    v22 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = *__error();
      v27 = 136315906;
      v28 = "preflight_compact";
      v29 = 1024;
      v30 = 5602;
      v31 = 1024;
      *v32 = a2;
      *&v32[4] = 1024;
      *&v32[6] = v26;
      v19 = "%s:%d: fstatfs(%d) err:%d";
      v20 = v22;
      v21 = 30;
      goto LABEL_22;
    }
  }

  else
  {
    v15 = v36.f_bavail * v36.f_bsize;
    v16 = v13 - (*(a1 + 4968) + *(a1 + 9688)) + 2 * (*(a1 + 4968) - *(a1 + 4952) + *(a1 + 4944)) + 2 * (*(a1 + 9688) - *(a1 + 9672) + *(a1 + 9664));
    if (v16 <= v15)
    {
      result = 1;
      goto LABEL_20;
    }

    if (*(a1 + 64) != a2)
    {
      result = 0;
      goto LABEL_20;
    }

    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = 136316162;
      v28 = "preflight_compact";
      v29 = 1024;
      v30 = 5619;
      v31 = 2048;
      *v32 = v16;
      *&v32[8] = 2048;
      v33 = v15;
      v34 = 2048;
      v35 = v36.f_blocks * v36.f_bsize;
      v19 = "%s:%d: not enought space to compact index - needed: %lld, avail: %lld, device: %lld";
      v20 = v18;
      v21 = 48;
LABEL_22:
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, v19, &v27, v21);
    }
  }

  v23 = __error();
  result = 0;
  *v23 = v17;
LABEL_20:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __index_compact_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (uint32_map_get(**(a1 + 32), a4))
    {
      si_analytics_log_2752("Duplicate term id %llu (file tree)", a4);
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      *(v6 + 8) = v7 + 1;
      uint32_map_put(*v6, a4, v7);
    }
  }

  v8 = atomic_load((*(a1 + 40) + 15192));
  return v8 != 0;
}

BOOL __index_compact_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
    if (uint32_map_get(**(a1 + 32), a8))
    {
      si_analytics_log_2752("Duplicate term id %llu (vector index)", a8);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 8);
      *(v10 + 8) = v11 + 1;
      uint32_map_put(*v10, a8, v11);
    }
  }

  v12 = atomic_load((*(a1 + 40) + 15192));
  return v12 != 0;
}

void index_optimize_disk_space(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (atomic_load((a1 + 15192)))
  {
    goto LABEL_11;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v26.st_dev = 136315650;
      *&v26.st_mode = "index_optimize_disk_space";
      WORD2(v26.st_ino) = 1024;
      *(&v26.st_ino + 6) = 6422;
      HIWORD(v26.st_uid) = 2080;
      *&v26.st_gid = a1 + 15208;
      v7 = "%s:%d: invalid index: %s";
      goto LABEL_32;
    }

LABEL_10:
    *__error() = v5;
    goto LABEL_11;
  }

  v3 = atomic_load((a1 + 36));
  if ((v3 & 0x100) != 0)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v26.st_dev = 136315650;
      *&v26.st_mode = "index_optimize_disk_space";
      WORD2(v26.st_ino) = 1024;
      *(&v26.st_ino + 6) = 6426;
      HIWORD(v26.st_uid) = 2080;
      *&v26.st_gid = a1 + 15208;
      v7 = "%s:%d: index alreay compact: %s";
      goto LABEL_32;
    }

    goto LABEL_10;
  }

  v4 = atomic_load((a1 + 36));
  if ((v4 & 2) == 0)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v26.st_dev = 136315650;
      *&v26.st_mode = "index_optimize_disk_space";
      WORD2(v26.st_ino) = 1024;
      *(&v26.st_ino + 6) = 6430;
      HIWORD(v26.st_uid) = 2080;
      *&v26.st_gid = a1 + 15208;
      v7 = "%s:%d: cant optimize writable index: %s";
LABEL_32:
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, v7, &v26, 0x1Cu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v10 = *(a1 + 64);
  memset(&v26, 0, sizeof(v26));
  if (!fstat(v10, &v26))
  {
    v11 = open(".", 4);
    if (!MEMORY[0x1C6921200](v10))
    {
      if (_os_feature_enabled_impl() && *(a1 + 4912))
      {
        vectorIndexFinalizeMerge();
      }

      MEMORY[0x1C6921200](v11);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if ((v11 & 0x80000000) == 0)
    {
LABEL_15:
      close(v11);
    }
  }

LABEL_16:
  atomic_fetch_or((a1 + 36), 0x100u);
  if (*(v23 + 24) == 1)
  {
    pthread_mutex_lock((a1 + 4696));
    *(a1 + 4900) = 0;
    v12 = *(a1 + 4872);
    *(a1 + 4872) = 0;
    *(a1 + 4880) = 0;
    v13 = *(a1 + 4892) != 0;
    *(a1 + 4908) = 0;
    db_rwlock_wakeup(a1 + 4696, v13, 0);
    pthread_mutex_unlock((a1 + 4696));
    if (v12)
    {
      pthread_override_qos_class_end_np(v12);
    }

    pthread_mutex_lock((a1 + 14504));
    *(a1 + 14708) = 0;
    v14 = *(a1 + 14680);
    *(a1 + 14680) = 0;
    *(a1 + 14688) = 0;
    v15 = *(a1 + 14700) != 0;
    *(a1 + 14716) = 0;
    db_rwlock_wakeup(a1 + 14504, v15, 0);
    pthread_mutex_unlock((a1 + 14504));
    if (v14)
    {
      pthread_override_qos_class_end_np(v14);
    }

    pthread_mutex_lock((a1 + 14720));
    *(a1 + 14924) = 0;
    v16 = *(a1 + 14896);
    *(a1 + 14896) = 0u;
    v17 = *(a1 + 14916) != 0;
    *(a1 + 14932) = 0;
    db_rwlock_wakeup(a1 + 14720, v17, 0);
    pthread_mutex_unlock((a1 + 14720));
    if (v16)
    {
      pthread_override_qos_class_end_np(v16);
    }
  }

  v18 = *__error();
  v19 = _SILogForLogForCategory(10);
  v20 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = CFAbsoluteTimeGetCurrent() - Current;
    v26.st_dev = 134217984;
    *&v26.st_mode = v21;
    _os_log_impl(&dword_1C278D000, v19, v20, "index_optimize time (%f)", &v26, 0xCu);
  }

  *__error() = v18;
  _Block_object_dispose(&v22, 8);
LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __index_optimize_disk_space_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
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

  pthread_mutex_lock((v2 + 14504));
  if (*(v2 + 14688) || *(v2 + 14700) || (*(v2 + 14716) & 1) != 0)
  {
LABEL_7:
    db_rwlock_wait(v2 + 14504, v5, 2);
    goto LABEL_8;
  }

  if (v5 <= 5)
  {
    v15 = v5 - 6;
    v16 = (v2 + 16 * v5 + 14568);
    while (!*v16)
    {
      v16 += 2;
      v17 = __CFADD__(v15++, 1);
      if (v17)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_7;
  }

LABEL_28:
  *(v2 + 14688) = pthread_self();
LABEL_8:
  pthread_mutex_unlock((v2 + 14504));
  v6 = *(a1 + 40);
  HIDWORD(v8) = qos_class_self() - 9;
  LODWORD(v8) = HIDWORD(v8);
  v7 = v8 >> 2;
  if (v7 > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_1C2BFF8F0[v7];
  }

  pthread_mutex_lock((v6 + 4696));
  if (*(v6 + 4880) || *(v6 + 4892) || (*(v6 + 4908) & 1) != 0)
  {
LABEL_14:
    db_rwlock_wait(v6 + 4696, v9, 2);
    goto LABEL_15;
  }

  if (v9 <= 5)
  {
    v18 = v9 - 6;
    v19 = (v6 + 16 * v9 + 4760);
    while (!*v19)
    {
      v19 += 2;
      v17 = __CFADD__(v18++, 1);
      if (v17)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_14;
  }

LABEL_34:
  *(v6 + 4880) = pthread_self();
LABEL_15:
  pthread_mutex_unlock((v6 + 4696));
  v10 = *(a1 + 40);
  HIDWORD(v12) = qos_class_self() - 9;
  LODWORD(v12) = HIDWORD(v12);
  v11 = v12 >> 2;
  if (v11 > 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_1C2BFF8F0[v11];
  }

  pthread_mutex_lock((v10 + 14720));
  if (!*(v10 + 14904) && !*(v10 + 14916) && (*(v10 + 14932) & 1) == 0)
  {
    if (v13 > 5)
    {
LABEL_40:
      *(v10 + 14904) = pthread_self();
      goto LABEL_22;
    }

    v20 = v13 - 6;
    v21 = (v10 + 16 * v13 + 14784);
    while (!*v21)
    {
      v21 += 2;
      v17 = __CFADD__(v20++, 1);
      if (v17)
      {
        goto LABEL_40;
      }
    }
  }

  db_rwlock_wait(v10 + 14720, v13, 2);
LABEL_22:
  result = pthread_mutex_unlock((v10 + 14720));
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

uint64_t __index_optimize_disk_space_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  pthread_mutex_lock((v2 + 14504));
  *(v2 + 14708) = 0;
  v3 = *(v2 + 14680);
  *(v2 + 14680) = 0u;
  v4 = *(v2 + 14700) != 0;
  *(v2 + 14716) = 0;
  db_rwlock_wakeup(v2 + 14504, v4, 0);
  pthread_mutex_unlock((v2 + 14504));
  if (v3)
  {
    pthread_override_qos_class_end_np(v3);
  }

  v5 = *(a1 + 40);
  pthread_mutex_lock((v5 + 4696));
  *(v5 + 4900) = 0;
  v6 = *(v5 + 4872);
  *(v5 + 4872) = 0u;
  v7 = *(v5 + 4892) != 0;
  *(v5 + 4908) = 0;
  db_rwlock_wakeup(v5 + 4696, v7, 0);
  pthread_mutex_unlock((v5 + 4696));
  if (v6)
  {
    pthread_override_qos_class_end_np(v6);
  }

  v8 = *(a1 + 40);
  pthread_mutex_lock((v8 + 14720));
  *(v8 + 14924) = 0;
  v9 = *(v8 + 14896);
  *(v8 + 14896) = 0u;
  v10 = *(v8 + 14916) != 0;
  *(v8 + 14932) = 0;
  db_rwlock_wakeup(v8 + 14720, v10, 0);
  result = pthread_mutex_unlock((v8 + 14720));
  if (v9)
  {
    result = pthread_override_qos_class_end_np(v9);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t compactTermsCallback(unsigned int a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  result = uint32_map_get(*(a5 + 40), a3);
  if (!*(a5 + 76))
  {
    v9 = 8 * result;
    *(a5 + 80) = *storageResolvePtr(*(a5 + 24) + 40, v9, 8, 1);
    v10 = storageResolvePtr(*(a5 + 32) + 40, v9, 8, 1);
    v11 = *v10;
    *(a5 + 88) = *v10;
    if (a1 < 2 || !v11)
    {
      goto LABEL_41;
    }

    if (*a2 <= 3u)
    {
      v12 = a2[1];
      if ((a2[1] & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      v13 = a2[2];
      if ((a2[2] & 0x80000000) == 0)
      {
        v12 = v12 & 0x7F | (v13 << 7);
        goto LABEL_40;
      }

      v21 = a2[3];
      if ((a2[3] & 0x80000000) == 0)
      {
        v22 = ((v13 & 0x7F) << 7) | (v21 << 14);
LABEL_39:
        v12 = v22 & 0xFFFFFF80 | v12 & 0x7F;
        goto LABEL_40;
      }

      v23 = a2[4];
      if ((a2[4] & 0x80000000) == 0)
      {
        v12 = ((v21 & 0x7F) << 14) | (v23 << 21) | ((v13 & 0x7F) << 7) | v12 & 0x7F;
        goto LABEL_40;
      }

      v25 = a2[5];
      if ((v25 & 0x80000000) == 0)
      {
        v12 = ((v23 & 0x7F) << 21) | (v25 << 28) | ((v21 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v12 & 0x7F;
        goto LABEL_40;
      }

LABEL_53:
      v35 = __si_assert_copy_extra_3233(0, -1);
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v37);
      free(v36);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v14 = &a2[a1];
    v15 = v14 - 6;
    if (a1 < 6)
    {
      v15 = a2 + 1;
    }

    v16 = *(v14 - 1);
    if (v16 < 0)
    {
      goto LABEL_41;
    }

    v18 = *(v14 - 2);
    v17 = v14 - 2;
    if (v18 == 1 && v16 == 3)
    {
      --v17;
    }

    if (v17 <= v15)
    {
LABEL_20:
      if (*v17 != 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      while (*v17 < 0)
      {
        if (--v17 <= v15)
        {
          v17 = v15;
          goto LABEL_20;
        }
      }

      if (*v17 != 1)
      {
        goto LABEL_41;
      }
    }

    v12 = v17[1];
    if ((v17[1] & 0x80000000) == 0)
    {
LABEL_40:
      if (v12)
      {
        *(a5 + 88) = 0;
        if (*(a5 + 80))
        {
LABEL_42:
          result = bt_mergeTerm(a1, a2, (a5 + 64));
          if (result)
          {
            ++*(a5 + 56);
          }

          return result;
        }

LABEL_46:
        v29 = *(a5 + 48);
        if (v29)
        {
          *v29 = 1;
        }

        v30 = __native_fsp(*(*(a5 + 8) + 376));
        v31 = __si_assert_copy_extra_3233(*(*(a5 + 8) + 376), -1);
        v32 = v31;
        v33 = "";
        if (v31)
        {
          v33 = v31;
        }

        v34 = (*a5 + 15463);
        if (v30)
        {
          __message_assert("%s:%u: failed assertion '%s' %s no posting for term (%s %s)", "JHContentIndex.c", 5563, "0", v33, (*a5 + 15495), v34);
          free(v32);
          if (__valid_fsp(*(*(a5 + 8) + 376)))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        si_analytics_log_2752("%s:%u: failed assertion '%s' %s no posting for term (%s %s)", "JHContentIndex.c", 5563, "false", v33, (*a5 + 15495), v34);
        free(v32);
        MEMORY[0xB00] = -559038737;
        abort();
      }

LABEL_41:
      if (*(a5 + 80))
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    v20 = v17[2];
    if ((v17[2] & 0x80000000) == 0)
    {
      v12 = v12 & 0x7F | (v20 << 7);
      goto LABEL_40;
    }

    v24 = v17[3];
    if ((v17[3] & 0x80000000) == 0)
    {
      v22 = ((v20 & 0x7F) << 7) | (v24 << 14);
      goto LABEL_39;
    }

    v26 = v17[4];
    if (v17[4] < 0)
    {
      v28 = v17[5];
      if (v28 < 0)
      {
        goto LABEL_53;
      }

      v27 = ((v26 & 0x7F) << 21) | (v28 << 28) | ((v24 & 0x7F) << 14);
    }

    else
    {
      v27 = ((v24 & 0x7F) << 14) | (v26 << 21);
    }

    v22 = v27 & 0xFFFFC07F | ((v20 & 0x7F) << 7);
    goto LABEL_39;
  }

  return result;
}

void bit_vector_release(CFTypeRef *a1)
{
  if (a1)
  {
    if (a1[2])
    {
      v2 = a1;
      CFRelease(a1[2]);
      a1 = v2;
      v1 = vars8;
    }

    free(a1);
  }
}

_DWORD *reorderTermIdCallback(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  *(a5 + 8) = v6 + 1;
  if (uint32_map_get(*a5, a3))
  {
    if ((__native_fs() & 1) == 0)
    {
      v13 = __si_assert_copy_extra_3233(0, -1);
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      si_analytics_log_2752("%s:%u: failed assertion '%s' %s duplicate term id (%d)", "JHContentIndex.c", 5585, "0 == uint32_map_get(ctx->newTermIds, termId)", v15, a3);
      free(v14);
      MEMORY[0xB00] = -559038737;
      abort();
    }

    if (uint32_map_get(*a5, a3))
    {
      v10 = __si_assert_copy_extra_3233(0, -1);
      v11 = v10;
      v12 = "";
      if (v10)
      {
        v12 = v10;
      }

      __message_assert("%s:%u: failed assertion '%s' %s duplicate term id (%d)", "JHContentIndex.c", 5585, "0 == uint32_map_get(ctx->newTermIds, termId)", v12, a3);
      free(v11);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  v8 = *a5;

  return uint32_map_put(v8, a3, v6);
}

void _excCompactCleanup(uint64_t a1)
{
  storageClose(a1);
  bt_freeTrie(a1 + 4440);
  freePayload(a1 + 13976);
  freePayload(a1 + 9256);
  v2 = *(a1 + 4424);
  if (v2)
  {
    storageClose((v2 + 1));
    v3 = v2[550];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v2);
    *(a1 + 4424) = 0;
  }

  v4 = *(a1 + 4432);
  if (v4)
  {
    IVFVectorIndex_s::~IVFVectorIndex_s((v4 + 8));
    MEMORY[0x1C691FEF0](v4, 0x1032C40E78FF076);
    *(a1 + 4432) = 0;
  }
}

uint64_t _excCompactMatch(uint64_t a1, unint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 248);
  if (v3 < 1)
  {
    goto LABEL_12;
  }

  v4 = (a1 + 272);
  v5 = 1;
  do
  {
    v6 = *v4;
    if (!*v4 || (v7 = v6[1], v7 + 1 < 2) || v7 > a2 || (v9 = v6[2], v7 - v9 + v6[3] <= a2))
    {
      v8 = 1;
      if (v5 >= v3)
      {
        break;
      }

      goto LABEL_6;
    }

    v8 = a2 - v7 + v9 == -1;
    if (v5 >= v3)
    {
      break;
    }

LABEL_6:
    ++v5;
    ++v4;
  }

  while (v8);
  if (!v8)
  {
    goto LABEL_77;
  }

LABEL_12:
  v10 = *(a1 + 4456);
  if (v10 + 1 >= 2 && v10 <= a2)
  {
    v46 = *(a1 + 4480);
    if (v10 + v46 > a2)
    {
      v47 = *(a1 + 4552);
      v48 = "bases";
      goto LABEL_70;
    }
  }

  v10 = *(a1 + 4448);
  if (v10 + 1 >= 2 && v10 <= a2)
  {
    v46 = *(a1 + 4588);
    if (v10 + 1028 * v46 > a2)
    {
      v47 = *(a1 + 9016);
      v48 = "fat bases";
LABEL_70:
      log_map_access_error(a2, v10, v46, v48, v47);
LABEL_77:
      result = 1;
      goto LABEL_78;
    }
  }

  v13 = *(a1 + 4848);
  if (v13 < 1)
  {
    goto LABEL_33;
  }

  v14 = 1;
  v15 = (a1 + 4872);
  while (2)
  {
    v16 = *v15;
    if (!*v15 || (v17 = v16[1], v17 + 1 < 2) || v17 > a2 || (v19 = v16[2], v17 - v19 + v16[3] <= a2))
    {
      v18 = 1;
      if (v14 >= v13)
      {
        goto LABEL_32;
      }

LABEL_27:
      ++v14;
      ++v15;
      if (!v18)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  v18 = a2 - v17 + v19 == -1;
  if (v14 < v13)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (!v18)
  {
    v35 = a2;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
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
    *__str = 0u;
    v55 = 0u;
    v36 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v13, *(a1 + 4824));
    if (*(a1 + 4848) >= 1 && v36 <= 0xFE)
    {
      v37 = 0;
      v38 = v36;
      v39 = 255 - v36;
      do
      {
        snprintf(&__str[v38], v39, "%d:(mem:%p so:%lld eo:%lld)", v37, *(*(a1 + 4872 + 8 * v37) + 8), *(*(a1 + 4872 + 8 * v37) + 16), *(*(a1 + 4872 + 8 * v37) + 24));
        ++v37;
      }

      while (v37 < *(a1 + 4848));
    }

    v40 = *(a1 + 4816);
    v41 = "flat\n";
    goto LABEL_76;
  }

LABEL_33:
  v20 = *(a1 + 9544);
  if (v20 < 1)
  {
    goto LABEL_44;
  }

  v21 = 1;
  v22 = (a1 + 9568);
  while (2)
  {
    v23 = *v22;
    if (!*v22 || (v24 = v23[1], v24 + 1 < 2) || v24 > a2 || (v26 = v23[2], v24 - v26 + v23[3] <= a2))
    {
      v25 = 1;
      if (v21 >= v20)
      {
        goto LABEL_43;
      }

LABEL_38:
      ++v21;
      ++v22;
      if (!v25)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  v25 = a2 - v24 + v26 == -1;
  if (v21 < v20)
  {
    goto LABEL_38;
  }

LABEL_43:
  if (!v25)
  {
    v35 = a2;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
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
    *__str = 0u;
    v55 = 0u;
    v42 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v20, *(a1 + 9520));
    if (*(a1 + 9544) >= 1 && v42 <= 0xFE)
    {
      v43 = 0;
      v44 = v42;
      v45 = 255 - v42;
      do
      {
        snprintf(&__str[v44], v45, "%d:(mem:%p so:%lld eo:%lld)", v43, *(*(a1 + 9568 + 8 * v43) + 8), *(*(a1 + 9568 + 8 * v43) + 16), *(*(a1 + 9568 + 8 * v43) + 24));
        ++v43;
      }

      while (v43 < *(a1 + 9544));
    }

    v40 = *(a1 + 9512);
    v41 = "termIdStore\n";
    goto LABEL_76;
  }

LABEL_44:
  v27 = *(a1 + 14264);
  if (v27 < 1)
  {
    goto LABEL_55;
  }

  v28 = 1;
  v29 = (a1 + 14288);
  while (2)
  {
    v30 = *v29;
    if (!*v29 || (v31 = v30[1], v31 + 1 < 2) || v31 > a2 || (v33 = v30[2], v31 - v33 + v30[3] <= a2))
    {
      v32 = 1;
      if (v28 >= v27)
      {
        goto LABEL_54;
      }

LABEL_49:
      ++v28;
      ++v29;
      if (!v32)
      {
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v32 = a2 - v31 + v33 == -1;
  if (v28 < v27)
  {
    goto LABEL_49;
  }

LABEL_54:
  if (!v32)
  {
    v35 = a2;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
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
    *__str = 0u;
    v55 = 0u;
    v49 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v27, *(a1 + 14240));
    if (*(a1 + 14264) >= 1 && v49 <= 0xFE)
    {
      v50 = 0;
      v51 = v49;
      v52 = 255 - v49;
      do
      {
        snprintf(&__str[v51], v52, "%d:(mem:%p so:%lld eo:%lld)", v50, *(*(a1 + 14288 + 8 * v50) + 8), *(*(a1 + 14288 + 8 * v50) + 16), *(*(a1 + 14288 + 8 * v50) + 24));
        ++v50;
      }

      while (v50 < *(a1 + 14264));
    }

    v40 = *(a1 + 14232);
    v41 = "positions header table\n";
LABEL_76:
    log_map_access_error_mini(v41, v35, __str, v40);
    goto LABEL_77;
  }

LABEL_55:
  result = 0;
LABEL_78:
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

void finalizePayloadData(uint64_t a1)
{
  v2 = *(a1 + 4496);
  if (v2 != -1)
  {
    _fd_release_fd(*(a1 + 4488), v2, 0, *(a1 + 4504));
    *(a1 + 4496) = -1;
  }

  fd_release(*(a1 + 4488));

  free(a1);
}

void _initPayload(char *a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    bzero(a1, 0x1270uLL);
    *(a1 + 1124) = -1;
    memset(&v4, 0, sizeof(v4));
    pthread_rwlockattr_init(&v4);
    pthread_rwlock_init((a1 + 4520), &v4);
    pthread_rwlockattr_destroy(&v4);
    bzero(a1 + 40, 0x1160uLL);
  }

  else
  {
    *(a1 + 1124) = -1;
    memset(&v4, 0, sizeof(v4));
    pthread_rwlockattr_init(&v4);
    pthread_rwlock_init((a1 + 4520), &v4);
    pthread_rwlockattr_destroy(&v4);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t initPayload(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, void *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a1 + 4096;
  *(a1 + 4488) = a2;
  *(a1 + 256) = a3;
  *(a1 + 4517) = a5;
  v12 = *(a1 + 24);
  if (!v12)
  {
    if (a4)
    {
      result = 0;
LABEL_31:
      v29 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (a5)
    {
      if (a2)
      {
        *(a2 + 56) |= 4u;
        v19 = *(a1 + 4488);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = a2;
    }

    *v31 = 0;
    v23 = _fd_acquire_fd(v19, v31);
    if (v23 != -1)
    {
      v24 = v23;
      v25 = _fd_ftruncate_guarded(v23, v31, 0);
      v26 = *__error();
      *(v19 + 56) &= ~2u;
      _fd_release_fd(v19, v24, 0, *v31);
      if (v25 == -1)
      {
        *__error() = v26;
      }
    }

    if (fd_truncate(*(a1 + 4488), 4096) != -1)
    {
      *(v11 + 420) = 1;
      *a1 = xmmword_1C2BFA3E0;
      *(a1 + 24) = vdupq_n_s64(0x1000uLL);
      v27 = *MEMORY[0x1E69E9840];
      v16 = (a1 + 40);
      v17 = a3;
      v18 = 1;
      a4 = 0;
      goto LABEL_26;
    }

    v20 = *__error();
    v21 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v30 = *__error();
      *v31 = 136315650;
      *&v31[4] = "initPayload";
      v32 = 1024;
      v33 = 106;
      v34 = 1024;
      v35 = v30;
      goto LABEL_33;
    }

LABEL_30:
    v28 = __error();
    result = 0;
    *v28 = v20;
    goto LABEL_31;
  }

  if (a4)
  {
    goto LABEL_11;
  }

  if (a5 && a2)
  {
    v13 = a4;
    *(a2 + 56) |= 4u;
    a2 = *(a1 + 4488);
    v12 = *(a1 + 24);
  }

  else
  {
    v13 = a4;
  }

  if (fd_truncate(a2, v12) == -1)
  {
    v20 = *__error();
    v21 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *__error();
      *v31 = 136315650;
      *&v31[4] = "initPayload";
      v32 = 1024;
      v33 = 122;
      v34 = 1024;
      v35 = v22;
LABEL_33:
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate err: %d", v31, 0x18u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  *(v11 + 420) = 1;
  a4 = v13;
LABEL_11:
  if (!a3)
  {
    result = 1;
    goto LABEL_31;
  }

  v15 = *MEMORY[0x1E69E9840];
  v16 = (a1 + 40);
  v17 = a3;
  v18 = 0;
LABEL_26:

  return termIDStoreInit(v16, v17, v18, a4, a6, a7);
}

uint64_t freePayload(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(10);
  v4 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(a1 + 24);
    v6 = (*a1 + v5 - *(a1 + 8)) * 100.0 / v5;
    v11 = 134218240;
    v12 = v5 >> 10;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_1C278D000, v3, v4, "Payloads: %lluKB %f", &v11, 0x16u);
  }

  *__error() = v2;
  v7 = *(a1 + 4496);
  if (v7 != -1)
  {
    _fd_release_fd(*(a1 + 4488), v7, 0, *(a1 + 4504));
    *(a1 + 4496) = -1;
  }

  fd_release(*(a1 + 4488));
  *(a1 + 4488) = 0;
  storageClose(a1 + 40);
  storageClose(a1 + 40);
  v8 = *(a1 + 4480);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 4480) = 0;
  }

  *(a1 + 4464) = 0u;
  result = pthread_rwlock_destroy((a1 + 4520));
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t syncPayload(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = *(a1 + 4488);
  if (*(a1 + 4516) != 1)
  {
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

    v17 = 0;
    v7 = _fd_acquire_fd(v3, &v17);
    if (v7 != -1)
    {
      v8 = v7;
      v9 = prot_fsync(v7, 0);
      _fd_release_fd(v3, v8, 0, v17);
      if (v9 != -1)
      {
        goto LABEL_19;
      }
    }

    return *__error();
  }

  v4 = *(a1 + 4517);
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

  v17 = 0;
  v5 = _fd_acquire_fd(v3, &v17);
  if (v5 == -1)
  {
    return *__error();
  }

  v6 = v4 && (*(v3 + 56) & 8) == 0;
  v10 = v5;
  v11 = prot_fsync(v5, v6);
  _fd_release_fd(v3, v10, 0, v17);
  if (v11 == -1)
  {
    return *__error();
  }

  *(v2 + 420) = 0;
LABEL_19:
  result = storageSyncPages(a1 + 40, a1 + 4464, *MEMORY[0x1E69E9AC8]);
  v13 = *(a1 + 256);
  if (v13)
  {
    v14 = result;
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

    v17 = 0;
    v15 = _fd_acquire_fd(v13, &v17);
    if (v15 != -1)
    {
      v16 = v15;
      prot_fsync(v15, 0);
      _fd_release_fd(v13, v16, 0, v17);
    }

    return v14;
  }

  return result;
}

uint64_t expandPayload(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  *(a1 + 24) = 2 * v6;
  *a1 = v6;
  *(a1 + 8) = 2 * v6;
  while (1)
  {
    v7 = *(a1 + 24);
    v8 = _fd_acquire_fd(*(a1 + 4488), (a1 + 4504));
    v9 = lseek(v8, 0, 2);
    if (v7 <= v9 || ci_preallocate(v8, v7 - v9) == -1)
    {
      v18 = fd_truncate(*(a1 + 4488), *(a1 + 24));
      _fd_release_fd(*(a1 + 4488), v8, 0, *(a1 + 4504));
      if (v18 != -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
      v11 = v7 - 1;
      v12 = "";
      v13 = 1;
      while (1)
      {
        while (1)
        {
          v14 = guarded_pwrite_np();
          if ((v14 & 0x8000000000000000) == 0)
          {
            break;
          }

          v15 = g_prot_error_callback;
          if (g_prot_error_callback)
          {
            v16 = __error();
            if ((*(v15 + 16))(v15, v8, *v16, 5))
            {
              continue;
            }
          }

          _fd_release_fd(*(a1 + 4488), v8, 0, *(a1 + 4504));
          v3 = a3;
          goto LABEL_15;
        }

        v10 += v14;
        v17 = v13 > v14;
        v13 -= v14;
        if (!v17)
        {
          break;
        }

        v12 += v14;
        v11 += v14;
      }

      _fd_release_fd(*(a1 + 4488), v8, 0, *(a1 + 4504));
      v20 = v10 == 1;
      v3 = a3;
      if (v20)
      {
LABEL_21:
        v19 = 0;
        *(a1 + 4516) = 1;
        goto LABEL_24;
      }
    }

LABEL_15:
    v19 = *__error();
    if (!a2 || v19 != 28)
    {
      break;
    }

    if ((a2(v3) & 1) == 0)
    {
      v19 = 28;
      break;
    }
  }

  bzero(v43, 0x400uLL);
  v21 = *__error();
  v22 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v25 = *(a1 + 4488);
    *buf = 0;
    v26 = _fd_acquire_fd(v25, buf);
    v27 = 0;
    if (v26 != -1)
    {
      v27 = v43;
      v28 = v26;
      v29 = fcntl(v26, 50, v43);
      if (v43[0])
      {
        v30 = v29 < 0;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        v27 = 0;
      }

      _fd_release_fd(v25, v28, 0, *buf);
    }

    v31 = "";
    if (v27)
    {
      v31 = v27;
    }

    v32 = *(a1 + 24);
    *buf = 136316162;
    *&buf[4] = "expandPayload";
    v35 = 1024;
    v36 = 212;
    v37 = 2080;
    v38 = v31;
    v39 = 2048;
    v40 = v32;
    v41 = 1024;
    v42 = v19;
    _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%s, %lld) err: %d", buf, 0x2Cu);
  }

  *__error() = v21;
LABEL_24:
  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

void *PayloadWriteBufferInit(void *a1, void *a2)
{
  result = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  *a1 = result;
  if (!result)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.c", 240, "wb->buffer", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = a2[1] - *a2;
  if (v5 >= 0x10000)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = v5;
  }

  a1[1] = 0x10000;
  a1[2] = v5;
  a1[3] = v5;
  a1[4] = 0;
  return result;
}

int *PayloadWriteBufferWrite(int *result, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(result + 2);
  v3 = *(result + 3);
  v4 = v2 - v3;
  if (v2 != v3)
  {
    if (a2[1] < *a2)
    {
      v23 = __si_assert_copy_extra_332();
      v24 = v23;
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.c", 258, "pd->payloadIndex >= pd->payloadLimit", v25);
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

    v6 = result;
    v7 = _fd_acquire_fd(a2[561], a2 + 563);
    if (v7 == -1)
    {
      *(v6 + 4) = *__error();
      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = *(v6 + 4);
        *buf = 136315650;
        v28 = "PayloadWriteBufferWrite";
        v29 = 1024;
        v30 = 262;
        v31 = 2048;
        v32 = v22;
        _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: open error; %ld", buf, 0x1Cu);
      }

      result = __error();
      *result = v17;
    }

    else
    {
      v8 = v7;
      v9 = *v6 + *(v6 + 3);
      v10 = a2[1];
      do
      {
        while (1)
        {
          v11 = guarded_pwrite_np();
          if ((v11 & 0x8000000000000000) != 0)
          {
            break;
          }

          v14 = v4 > v11;
          v4 -= v11;
          if (!v14)
          {
            goto LABEL_15;
          }

          v9 += v11;
          v10 += v11;
        }

        v12 = g_prot_error_callback;
        if (!g_prot_error_callback)
        {
          break;
        }

        v13 = __error();
      }

      while (((*(v12 + 16))(v12, v8, *v13, 5) & 1) != 0);
      *(v6 + 4) = *__error();
      v15 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = *(v6 + 4);
        *buf = 136315650;
        v28 = "PayloadWriteBufferWrite";
        v29 = 1024;
        v30 = 266;
        v31 = 2048;
        v32 = v21;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: pwrite error; %ld", buf, 0x1Cu);
      }

      *__error() = v15;
LABEL_15:
      result = _fd_release_fd(a2[561], v8, 0, a2[563]);
    }

    v19 = a2[1] - *a2;
    if (v19 >= *(v6 + 1))
    {
      v19 = *(v6 + 1);
    }

    else
    {
      v19 = v19;
    }

    *(v6 + 2) = v19;
    *(v6 + 3) = v19;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}