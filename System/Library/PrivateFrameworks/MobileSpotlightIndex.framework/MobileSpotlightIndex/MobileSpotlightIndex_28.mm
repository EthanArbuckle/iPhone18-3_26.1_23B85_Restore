void freeOverlayDir(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    *(a1 + 8) = 0;
    v2 = malloc_size(v1);
    if (v2 >= 0x10 && v2 >= ((32 * *v1) | 0x10) && *v1 != 0)
    {
      v4 = 0;
      v5 = v1 + 2;
      do
      {
        freeOverlayDir(v5);
        ++v4;
        v5 += 4;
      }

      while (v4 < *v1);
    }

    free(v1);
  }
}

uint64_t directoryOverlayProcessPaths(uint64_t a1, uint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 8));
  for (i = *(a1 + 456); i; i = *i)
  {
    (*(a2 + 16))(a2, *(i + 2), i + 2, *(i + 3), &i[*(i + 2) + 2]);
  }

  return pthread_rwlock_unlock((a1 + 8));
}

uint64_t getBestDirectory(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, void *a5)
{
  if (*a1 <= 1)
  {
    v14 = __si_assert_copy_extra_332();
    __message_assert_336(v14, v15, v16, v17, v18, v19, v20, v21, "FileTree_Overlay.c");
    free(v14);
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

  v8 = a1;
  if (a2 == -1)
  {
    if (*(a1 + 16))
    {
      *a5 = 0;
      *a4 = -1;
    }

    checkDirectory(a1);
  }

  else
  {
    v9 = *(a1 + 8);
    if (v9 && (v23 = 0, (Child = findChild(v9, *(a3 + 8 * a2), &v23)) != 0))
    {
      v12 = Child;
      checkDirectory(v8);
      if (*(v8 + 16))
      {
        *a5 = v8;
        *a4 = a2;
      }

      return getBestDirectory(v12, (a2 - 1), a3, a4, a5);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void *directoryDumpDirectoryPaths(void *result, int *a2)
{
  v3 = result;
  if (result[3])
  {
    result = overlayPathsAddDirectory(a2, result);
  }

  v4 = v3[1];
  if (v4 && *(v4 + 8))
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v4 + 32 * v5;
      v8 = *(v7 + 16);
      result = (v7 + 16);
      if (v8 >= 2)
      {
        result = directoryDumpDirectoryPaths(result, a2);
        v4 = v3[1];
      }

      v5 = v6;
    }

    while (*(v4 + 8) > v6++);
  }

  return result;
}

void *overlayPathsAddDirectory(int *a1, size_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *a1;
  LODWORD(a2) = a1[1];
  v6 = *a1 + 8 * v4 + 16;
  if (v6 <= a2)
  {
    v8 = *(a1 + 1);
  }

  else
  {
    do
    {
      v7 = v6 > 2 * a2;
      a2 = (2 * a2);
    }

    while (v7);
    a1[1] = a2;
    v8 = reallocf(*(a1 + 1), a2);
    *(a1 + 1) = v8;
    v5 = *a1;
    v4 = *(v2 + 16);
  }

  v9 = &v8[v5];
  *v9 = v4 + 1;
  *(v9 + 1) = *v2;
  result = memcpy(v9 + 16, *(v2 + 24), 8 * *(v2 + 16));
  *a1 += 8 * *(v2 + 16) + 16;
  return result;
}

char *__si_assert_copy_extra_332()
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  v0 = getcwd(v7, 0x400uLL);
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = "";
  }

  v6 = 0;
  v2 = pthread_getspecific(__THREAD_STR_DATA_KEY);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "";
  }

  asprintf(&v6, "%s %s", v1, v3);
  result = v6;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __message_assert_336(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  string[1] = &a9;
  vasprintf(string, "%s:%u: failed assertion '%s' %s ", &a9);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v9 = xpc_string_create(string[0]);
  values = v9;
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v10);
  xpc_release(v9);
  free(string[0]);
  v11 = *MEMORY[0x1E69E9840];
}

void *checkDirectory(void *result)
{
  if (!*result)
  {
    v2 = __si_assert_copy_extra_332();
    __message_assert_336(v2, v3, v4, v5, v6, v7, v8, v9, "FileTree_Overlay.c");
    free(v2);
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

  v1 = result[1];
  if (v1 && *v1 >= (v1[1] - 1))
  {
    v11 = __si_assert_copy_extra_332();
    __message_assert_336(v11, v12, v13, v14, v15, v16, v17, v18, "FileTree_Overlay.c");
    free(v11);
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

  return result;
}

uint64_t findChild(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = HIDWORD(a2) - a2 - 8;
  v4 = (a2 - (HIDWORD(a2) - a2) - 1640531527) ^ (v3 << 8);
  v5 = (16 - (HIDWORD(a2) - a2) - v4) ^ (v4 >> 13);
  v6 = (v3 - v4 - v5) ^ (v5 >> 12);
  v7 = (v4 - v5 - v6) ^ (v6 << 16);
  v8 = (v5 - v6 - v7) ^ (v7 >> 5);
  v9 = (v6 - v7 - v8) ^ (v8 >> 3);
  v10 = (v8 - v9 - ((v7 - v8 - v9) ^ (v9 << 10))) ^ (((v7 - v8 - v9) ^ (v9 << 10)) >> 15);
  v11 = *(a1 + 8);
  v12 = (v11 - 1) & v10;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = v12 - 1;
  v14 = a1 + 16;
  v15 = *(a1 + 16 + 32 * v13);
  if (!v15 || ((v16 = v11 - 1, v17 = v11 != 0, v15 != a2) ? (v18 = !v17) : (v18 = 1), v18))
  {
    v20 = -1;
  }

  else
  {
    v20 = -1;
    v21 = v16;
    do
    {
      if (v20 == -1 && v15 == 1)
      {
        v20 = v13;
      }

      if (v16 > (v13 + 1))
      {
        v13 = (v13 + 1);
      }

      else
      {
        v13 = 0;
      }

      v15 = *(v14 + 32 * v13);
      if (!v15)
      {
        break;
      }

      v23 = v21-- != 0;
      v24 = v23;
    }

    while (v15 != a2 && v24);
  }

  if (v15 == a2)
  {
    result = v14 + 32 * v13;
    if (!a3)
    {
      return result;
    }

LABEL_16:
    *a3 = v13;
    return result;
  }

  result = 0;
  if (a3)
  {
    if (v20 != -1)
    {
      LODWORD(v13) = v20;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t negativeFindChild(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = HIDWORD(a2) - a2 - 8;
  v5 = (a2 - (HIDWORD(a2) - a2) - 1640531527) ^ (v4 << 8);
  v6 = (16 - (HIDWORD(a2) - a2) - v5) ^ (v5 >> 13);
  v7 = (v4 - v5 - v6) ^ (v6 >> 12);
  v8 = (v5 - v6 - v7) ^ (v7 << 16);
  v9 = (v6 - v7 - v8) ^ (v8 >> 5);
  v10 = (v7 - v8 - v9) ^ (v9 >> 3);
  v11 = *a1 - 1;
  v12 = v11 & ((v9 - v10 - ((v8 - v9 - v10) ^ (v10 << 10))) ^ (((v8 - v9 - v10) ^ (v10 << 10)) >> 15));
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = v12 - 1;
  v14 = *(v3 + 16 * v13);
  if (!v14 || (v14 != a2 ? (v15 = *a1 == 0) : (v15 = 1), v15))
  {
    v17 = -1;
  }

  else
  {
    v17 = -1;
    v18 = *a1 - 1;
    do
    {
      if (v17 == -1 && v14 == 1)
      {
        v17 = v13;
      }

      if (v13 + 1 < v11)
      {
        v13 = (v13 + 1);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v3 + 16 * v13);
      if (!v14)
      {
        break;
      }

      v20 = v18-- != 0;
      v21 = v20;
    }

    while (v14 != a2 && v21);
  }

  if (v14 == a2)
  {
    result = v3 + 16 * v13;
    if (!a3)
    {
      return result;
    }

LABEL_18:
    *a3 = v13;
    return result;
  }

  result = 0;
  if (a3)
  {
    if (v17 != -1)
    {
      LODWORD(v13) = v17;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t doInsertItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  result = negativeFindChild(a1, a2, &v17);
  if (result)
  {
    v8 = __si_assert_copy_extra_332();
    __message_assert_336(v8, v9, v10, v11, v12, v13, v14, v15, "FileTree_Overlay.c");
    free(v8);
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

  v7 = (*(a1 + 8) + 16 * v17);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 4);
  return result;
}

uint64_t getDirectory(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*a1 <= 1)
  {
    v17 = __si_assert_copy_extra_332();
    __message_assert_336(v17, v18, v19, v20, v21, v22, v23, v24, "FileTree_Overlay.c");
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

  v5 = a1;
  if (a2 != -1)
  {
    v8 = a1[1];
    if (v8)
    {
      LODWORD(v26[0]) = 0;
      v9 = *(a3 + 8 * a2);
      Child = findChild(v8, v9, v26);
      if (Child)
      {
        v11 = Child;
        checkDirectory(v5);
        v12 = (a2 - 1);
        v13 = v11;
        return getDirectory(v13, v12, a3, a4);
      }

      if (a4)
      {
        v14 = LODWORD(v26[0]);
        goto LABEL_11;
      }
    }

    else if (a4)
    {
      v14 = 0;
      v9 = *(a3 + 8 * a2);
LABEL_11:
      memset(&v26[1], 0, 24);
      checkDirectory(v5);
      v26[0] = v9;
      inserted = insertDirectory(v5, v14, v26);
      checkDirectory(inserted);
      v12 = (a2 - 1);
      v13 = inserted;
      return getDirectory(v13, v12, a3, a4);
    }

    return 0;
  }

  checkDirectory(a1);
  return v5;
}

void *insertDirectory(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a3 <= 2)
  {
    goto LABEL_22;
  }

  if (*a3 == *a1)
  {
    v22 = __si_assert_copy_extra_332();
    __message_assert_336(v22, v23, v24, v25, v26, v27, v28, v29, "FileTree_Overlay.c");
    free(v22);
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

  checkDirectory(a1);
  checkDirectory(a3);
  v6 = a1[1];
  if (v6)
  {
    v7 = v6[1];
    if (5 * *v6 + 5 < (4 * v7 - 4))
    {
      v8 = &v6[4 * a2];
      v10 = v8[2];
      v9 = v8 + 2;
      if (v10 < 2)
      {
        v11 = *(a3 + 16);
        *v9 = *a3;
        v9[1] = v11;
        ++*a1[1];
        checkDirectory(a1);
        return (a1[1] + 32 * a2 + 16);
      }

LABEL_22:
      v31 = __si_assert_copy_extra_332();
      __message_assert_336(v31, v32, v33, v34, v35, v36, v37, v38, "FileTree_Overlay.c");
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

    v6[1] = 2 * v7;
    v14 = malloc_type_calloc(1uLL, v7 << 6, 0x1030040D6482CB5uLL);
    a1[1] = v14;
    v15 = v6[1];
    v14[1] = v15;
    v16 = v15 >> 1;
    v6[1] = v16;
    if (v16 != 1)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = &v6[4 * v17 + 2];
        if (*v19 >= 2)
        {
          doInsertDirectory(a1[1], v19);
          v16 = v6[1];
        }

        v17 = v18;
      }

      while (v16 - 1 > v18++);
      v14 = a1[1];
    }

    inserted = doInsertDirectory(v14, a3);
    free(v6);
    return inserted;
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x80uLL, 0x1030040D6482CB5uLL);
    a1[1] = v13;
    v13[1] = 4;

    return doInsertDirectory(v13, a3);
  }
}

void *doInsertDirectory(void *a1, uint64_t a2)
{
  v16 = 0;
  if (findChild(a1, *a2, &v16))
  {
    v7 = __si_assert_copy_extra_332();
    __message_assert_336(v7, v8, v9, v10, v11, v12, v13, v14, "FileTree_Overlay.c");
    free(v7);
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

  v4 = &a1[4 * v16];
  v5 = *(a2 + 16);
  *(v4 + 1) = *a2;
  *(v4 + 2) = v5;
  ++*a1;
  return v4 + 2;
}

uint64_t directoryOverlayMoveDirectory(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int a4, void *a5)
{
  v9 = (a1 + 208);
  v8 = *(a1 + 208);
  if (a3[a2 - 1] == v8)
  {
    v10 = a2 - 1;
  }

  else
  {
    v10 = a2;
  }

  if (a5[a4 - 1] == v8)
  {
    v11 = a4 - 1;
  }

  else
  {
    v11 = a4;
  }

  v61 = (a1 + 8);
  pthread_rwlock_wrlock((a1 + 8));
  v66 = 0;
  v12 = v10 - 1;
  v64 = 0u;
  v65 = 0u;
  Directory = getDirectory(v9, v10 - 2, (a3 + 1), 0);
  *&v62 = Directory;
  v60 = v10 - 1;
  if (Directory)
  {
    v14 = Directory;
    v15 = Directory[1];
    if (v15 && *v15)
    {
      checkDirectory(Directory);
      v67 = 0;
      v16 = v14[1];
      v17 = *a3;
      Child = findChild(v16, *a3, &v67);
      if (Child)
      {
        v19 = Child[1];
        v64 = *Child;
        v65 = v19;
        v20 = &v16[4 * v67];
        v22 = v20[2];
        v21 = v20 + 2;
        if (v22 != v17)
        {
          v48 = __si_assert_copy_extra_332();
          v56 = v48;
          goto LABEL_52;
        }

        --*v16;
        *v21 = 1;
        checkDirectory(v14);
        goto LABEL_18;
      }

      v12 = v10 - 1;
    }

    v23 = *(v14 + 4);
    if (v23)
    {
      v66 = v10 - 2;
      v59 = *v14;
      v24 = v14[3];
      goto LABEL_19;
    }
  }

  getBestDirectory(v9, v12, a3, &v66, &v62);
  if (v62)
  {
    v59 = *v62;
    v23 = *(v62 + 16);
    v24 = *(v62 + 24);
    goto LABEL_19;
  }

LABEL_18:
  v59 = 0;
  v23 = 0;
  v24 = 0;
LABEL_19:
  v25 = malloc_type_malloc(8 * (v11 + v10) + 16, 0x1020040EDED9539uLL);
  v25[2] = v10;
  v25[3] = v11;
  *v25 = 0;
  memcpy(v25 + 4, a3, 8 * v10);
  memcpy(&v25[2 * v10 + 4], a5, 8 * v11);
  if (*(a1 + 456))
  {
    v26 = (a1 + 464);
    **(a1 + 464) = v25;
  }

  else
  {
    *(a1 + 456) = v25;
    v26 = (a1 + 464);
  }

  *v26 = v25;
  v27 = v64;
  if (!v64)
  {
    v32 = getDirectory(v9, v11 - 1, a5, 1);
    v67 = 0;
    v33 = v32[1];
    if (v33)
    {
      if (findChild(v33, *a3, &v67))
      {
LABEL_48:
        v30 = v61;
        return pthread_rwlock_unlock(v30);
      }

      v34 = v67;
    }

    else
    {
      v34 = 0;
    }

    pthread_rwlock_wrlock((a1 + 240));
    v35 = *a3;
    if (*a3 > 2)
    {
      v58 = v34;
      v36 = a3[1];
      v37 = *(a1 + 448);
      if (v37)
      {
        v38 = *(a1 + 440);
        if (5 * *(a1 + 444) + 5 >= (4 * v38 - 4))
        {
          *(a1 + 440) = 2 * v38;
          *(a1 + 448) = malloc_type_calloc(1uLL, 32 * (2 * v38), 0x1030040D6482CB5uLL);
          if (v38)
          {
            v39 = v37 + 1;
            do
            {
              v40 = *(v39 - 1);
              if (v40 >= 2)
              {
                doInsertItem(a1 + 440, v40, *v39);
              }

              v39 += 2;
              --v38;
            }

            while (v38);
          }

          free(v37);
        }
      }

      else
      {
        *(a1 + 448) = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040451B5BE8uLL);
        *(a1 + 440) = 4;
      }

      doInsertItem(a1 + 440, v35, v36);
      pthread_rwlock_unlock((a1 + 240));
      v41 = v60 - v66;
      if (v59)
      {
        v42 = v60 - v66 + v23;
      }

      else
      {
        v42 = v60;
      }

      v43 = *a3;
      v44 = 8 * v42;
      v45 = malloc_type_malloc(v44, 0x100004000313F17uLL);
      v46 = v45;
      v64 = v43;
      LODWORD(v65) = v42;
      *(&v65 + 1) = v45;
      if (v59)
      {
        v44 = 8 * v41;
        memcpy(&v45[v44], v24, 8 * v23);
      }

      memcpy(v46, a3 + 1, v44);
      v62 = v64;
      v63 = v65;
      insertDirectory(v32, v58, &v62);
      goto LABEL_48;
    }

    v48 = __si_assert_copy_extra_332();
    v56 = v48;
LABEL_52:
    __message_assert_336(v48, v49, v50, v51, v52, v53, v54, v55, "FileTree_Overlay.c");
    free(v56);
    if (__valid_fs(-1))
    {
      v57 = 2989;
    }

    else
    {
      v57 = 3072;
    }

    *v57 = -559038737;
    abort();
  }

  checkDirectory(&v64);
  v28 = getDirectory(v9, v11 - 1, a5, 1);
  checkDirectory(v28);
  v67 = 0;
  v29 = v28[1];
  if (!v29)
  {
    v31 = 0;
    v30 = (v9 - 25);
    goto LABEL_30;
  }

  v30 = (v9 - 25);
  if (!findChild(v29, v27, &v67))
  {
    v31 = v67;
LABEL_30:
    checkDirectory(v28);
    v62 = v64;
    v63 = v65;
    insertDirectory(v28, v31, &v62);
  }

  return pthread_rwlock_unlock(v30);
}

uint64_t getDirectory_355(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*a1 <= 1)
  {
    v21 = __si_assert_copy_extra_332();
    v22 = v21;
    v23 = "";
    if (v21)
    {
      v23 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 134, "directory->fileid>=2", v23);
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

  v5 = a1;
  if (a2 != -1)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 139, "depth >= 0", v19);
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

    v8 = a1[1];
    if (v8)
    {
      LODWORD(v25[0]) = 0;
      v9 = *(a3 + 8 * a2);
      Child = findChild(v8, v9, v25);
      if (Child)
      {
        v11 = Child;
        checkDirectory_362(v5);
        v12 = a2 - 1;
        v13 = v11;
        return getDirectory_355(v13, v12, a3, a4);
      }

      if (a4)
      {
        v14 = LODWORD(v25[0]);
        goto LABEL_12;
      }
    }

    else if (a4)
    {
      v14 = 0;
      v9 = *(a3 + 8 * a2);
LABEL_12:
      memset(&v25[1], 0, 24);
      checkDirectory_362(v5);
      v25[0] = v9;
      inserted = insertDirectoryUS(v5, v14, v25);
      checkDirectory_362(inserted);
      v12 = a2 - 1;
      v13 = inserted;
      return getDirectory_355(v13, v12, a3, a4);
    }

    return 0;
  }

  checkDirectory_362(a1);
  return v5;
}

uint64_t getAllPostings(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 24))
  {
    result = (*(a2 + 16))(a2, result + 16);
  }

  v4 = *(v3 + 8);
  if (v4 && *(v4 + 8) != 1)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v4 + 32 * v5;
      v8 = *(v7 + 16);
      result = v7 + 16;
      if (v8 >= 2)
      {
        result = getAllPostings(result, a2);
        v4 = *(v3 + 8);
      }

      v5 = v6;
    }

    while (*(v4 + 8) - 1 > v6++);
  }

  return result;
}

void *checkDirectory_362(void *result)
{
  if (!*result)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 117, "directory->fileid", v4);
    free(v3);
    if (__valid_fs(-1))
    {
      v5 = 2989;
    }

    else
    {
      v5 = 3072;
    }

    *v5 = -559038737;
    abort();
  }

  v1 = result[1];
  if (v1 && *v1 >= (v1[1] - 1))
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 119, "directory->children->childCount < directory->children->pageSize-1", v8);
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

  return result;
}

void *insertDirectoryUS(void *a1, uint64_t a2, void *a3)
{
  if (*a3 <= 2)
  {
    v22 = __si_assert_copy_extra_332();
    v23 = v22;
    v24 = "";
    if (v22)
    {
      v24 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s got file id %lld", "FileTree_UpdateSet.c", 79, "newDirectory.fileid >2", v24, *a3);
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

  if (*a3 == *a1)
  {
    v26 = __si_assert_copy_extra_332();
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 80, "newDirectory.fileid != directory->fileid", v28);
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

  checkDirectory_362(a1);
  checkDirectory_362(a3);
  v6 = a1[1];
  if (v6)
  {
    v7 = v6[1];
    if (5 * *v6 + 5 >= (4 * v7 - 4))
    {
      v6[1] = 2 * v7;
      v14 = malloc_type_calloc(1uLL, v7 << 6, 0x1020040D49128EBuLL);
      a1[1] = v14;
      v15 = v6[1];
      v14[1] = v15;
      v16 = v15 >> 1;
      v6[1] = v16;
      if (v16 != 1)
      {
        v17 = 0;
        v18 = 1;
        do
        {
          v19 = &v6[4 * v17 + 2];
          if (*v19 >= 2)
          {
            doInsertDirectoryUS(a1[1], v19);
            v16 = v6[1];
          }

          v17 = v18;
        }

        while (v16 - 1 > v18++);
        v14 = a1[1];
      }

      inserted = doInsertDirectoryUS(v14, a3);
      free(v6);
      return inserted;
    }

    else
    {
      v8 = &v6[4 * a2];
      v10 = v8[2];
      v9 = v8 + 2;
      if (v10 >= 2)
      {
        v30 = __si_assert_copy_extra_332();
        v31 = v30;
        v32 = "";
        if (v30)
        {
          v32 = v30;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 106, "directory->children->nodes[slot].fileid<=1", v32);
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

      v11 = *(a3 + 1);
      *v9 = *a3;
      v9[1] = v11;
      ++*a1[1];
      checkDirectory_362(a1);
      return (a1[1] + 32 * a2 + 16);
    }
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x80uLL, 0x1020040D49128EBuLL);
    a1[1] = v13;
    v13[1] = 4;

    return doInsertDirectoryUS(v13, a3);
  }
}

void *doInsertDirectoryUS(void *a1, uint64_t a2)
{
  v11 = 0;
  if (findChild(a1, *a2, &v11))
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 72, "dir==0", v9);
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

  v4 = &a1[4 * v11];
  v5 = *(a2 + 16);
  *(v4 + 1) = *a2;
  *(v4 + 2) = v5;
  ++*a1;
  return v4 + 2;
}

uint64_t doChildFile(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(a4 + 8 * a3 - 8);
  v12 = v10 == 2 || v10 == *a2;
  v13 = (a3 - v12);
  if (a3 == v12)
  {
    LODWORD(v15) = -1;
  }

  else
  {
    v14 = 0;
    do
    {
      if (*(a4 + 8 * v14) <= 0)
      {
        v29 = __si_assert_copy_extra_332();
        v30 = v29;
        v31 = "";
        if (v29)
        {
          v31 = v29;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "FileTree_UpdateSet.c", 214, "parents[i] > 0", v31, v14, *(a4 + 8 * v14), v13);
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

      ++v14;
    }

    while (v13 != v14);
    v15 = (v13 - 1);
    if (v13 >= 3)
    {
      v16 = a4 + 8;
      v17 = v15 - 1;
      while (*(v16 - 8) > 2uLL)
      {
        v16 += 8;
        if (!--v17)
        {
          goto LABEL_17;
        }
      }

      v33 = __si_assert_copy_extra_332();
      v36 = *(v16 - 8);
      __message_assert("%s:%u: failed assertion '%s' %s Got parent with id %lld");
LABEL_37:
      free(v33);
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
  }

LABEL_17:
  result = getDirectory_355(a2, v15, a4, 1);
  v19 = result;
  v20 = (result + 16);
  v21 = *(result + 16) & 1;
  if (*(result + 24))
  {
    if (v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v23 = atomic_load((a1 + 12));
    v24 = v23 + v22;
    v25 = *(a1 + 8);
    if (v24 >= v25)
    {
      v35 = 2 * v25;
      if (!v25)
      {
        v35 = 0x4000;
      }

      *(a1 + 8) = v35;
      if (my_vm_reallocate(a1, 12 * v25, 12 * v35, 0xF3u, *(a1 + 16)))
      {
        v33 = __si_assert_copy_extra_332();
        __message_assert("%s:%u: failed assertion '%s' %s ");
        goto LABEL_37;
      }
    }

    add = atomic_fetch_add((a1 + 12), v22);
    if (v21)
    {
      v27 = 16;
    }

    else
    {
      v27 = 12;
    }

    result = memcpy((*a1 + 12 * add), v20, v27);
    v21 = 2 * add;
  }

  if (a6)
  {
    *(v19 + 24) = a5;
    *(v19 + 16) = v21 | 1;
    v28 = 2 * (a6 != 2);
  }

  else
  {
    *(v19 + 24) = a5;
    *(v19 + 16) = v21 & 0xFFFFFFFE;
    v28 = 1;
  }

  *(v19 + 20) = v28;
  return result;
}

void *moveDirectory(uint64_t *a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v6 = a4;
  v9 = a2 - 1;
  v10 = *a1;
  if (a3[a2 - 1] != *a1)
  {
    v9 = a2;
  }

  v11 = a4 - 1;
  v12 = *(a5 + 8 * (a4 - 1));
  v32 = 0u;
  v33 = 0u;
  result = getDirectory_355(a1, v9 - 2, (a3 + 1), 0);
  if (result)
  {
    v14 = result;
    v15 = result[1];
    if (v15)
    {
      if (*v15)
      {
        checkDirectory_362(result);
        LODWORD(v30[0]) = 0;
        v16 = v14[1];
        v17 = *a3;
        result = findChild(v16, v17, v30);
        if (result)
        {
          v18 = *(result + 1);
          v32 = *result;
          v33 = v18;
          v19 = &v16[4 * LODWORD(v30[0])];
          v21 = v19[2];
          v20 = v19 + 2;
          if (v21 != v17)
          {
            v26 = __si_assert_copy_extra_332();
            v27 = v26;
            v28 = "";
            if (v26)
            {
              v28 = v26;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 286, "directory->children->nodes[slot].fileid==p1[0]", v28);
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

          --*v16;
          *v20 = 1;
          result = checkDirectory_362(v14);
          v22 = v32;
          if (v32)
          {
            if (v12 == v10)
            {
              v6 = v11;
            }

            checkDirectory_362(&v32);
            Directory_355 = getDirectory_355(a1, v6 - 1, a5, 1);
            checkDirectory_362(Directory_355);
            v31 = 0;
            v24 = Directory_355[1];
            if (v24)
            {
              result = findChild(v24, v22, &v31);
              if (result)
              {
                return result;
              }

              v25 = v31;
            }

            else
            {
              v25 = 0;
            }

            checkDirectory_362(Directory_355);
            v30[0] = v32;
            v30[1] = v33;
            return insertDirectoryUS(Directory_355, v25, v30);
          }
        }
      }
    }
  }

  return result;
}

uint64_t storeDirStoreUpdateSet(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = a3[5];
  if ((a3[4] - v7) < 0xB)
  {
    __src = 0u;
    v26 = 0u;
    v19 = writeVInt64(&__src, 0, v6);
    result = store_stream_write_bytes(a3, &__src, v19);
  }

  else
  {
    result = writeVInt64(a3[6], v7, v6);
    a3[5] = result;
  }

  if (*(a2 + 24))
  {
    result = CIWritePostings(a3, a1, 0, (a2 + 16), 0, 0);
  }

  else
  {
    v9 = a3[5];
    if ((a3[4] - v9) < 0xB)
    {
      __src = 0u;
      v26 = 0u;
      result = store_stream_write_bytes(a3, &__src, 1uLL);
    }

    else
    {
      *(a3[6] + v9) = 0;
      a3[5] = v9 + 1;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    v11 = *v10;
    v12 = a3[5];
    if ((a3[4] - v12) < 0xB)
    {
      __src = 0u;
      v26 = 0u;
      v20 = writeVInt64(&__src, 0, v11);
      result = store_stream_write_bytes(a3, &__src, v20);
    }

    else
    {
      result = writeVInt64(a3[6], v12, v11);
      a3[5] = result;
    }

    v13 = *(a2 + 8);
    if (*(v13 + 8) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v16 = 0;
      v17 = 16;
      do
      {
        if (*(v13 + v17) >= 2)
        {
          result = storeDirStoreUpdateSet(a1, v13 + v17, a3);
          ++v14;
          v13 = *(a2 + 8);
        }

        ++v16;
        v17 += 32;
      }

      while (v16 < *(v13 + 8) - 1);
    }

    if (v14 != *v13)
    {
      v21 = __si_assert_copy_extra_332();
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 373, "(uint32_t)outChildren == (uint32_t)root->children->childCount", v23);
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
  }

  else
  {
    v15 = a3[5];
    if ((a3[4] - v15) < 6)
    {
      __src = 0u;
      v26 = 0u;
      result = store_stream_write_bytes(a3, &__src, 1uLL);
    }

    else
    {
      *(a3[6] + v15) = 0;
      a3[5] = v15 + 1;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t writeVInt64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      v9 = a1 + a2;
      *v9 = a3 | 0x80;
      v10 = vdupq_n_s64(a3);
      v10.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v10, xmmword_1C2BFA320), vshlq_u64(v10, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 + 1) = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
      *(v9 + 5) = (a3 >> 35) | 0x80;
      *(v9 + 6) = (a3 >> 42) | 0x80;
      *(v9 + 7) = (a3 >> 49) | 0x80;
      *(v9 + 8) = HIBYTE(a3);
      result = a2 + 10;
      *(v9 + 9) = 1;
    }

    else
    {
      v5 = a3 | 0x80;
      if (HIBYTE(a3))
      {
        v11 = a1 + a2;
        *v11 = v5;
        v12 = vdupq_n_s64(a3);
        v12.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v12, xmmword_1C2BFA320), vshlq_u64(v12, xmmword_1C2BFA310))) | 0x80008000800080;
        *(v11 + 1) = vuzp1_s8(*v12.i8, *v12.i8).u32[0];
        *(v11 + 5) = (a3 >> 35) | 0x80;
        *(v11 + 6) = (a3 >> 42) | 0x80;
        *(v11 + 7) = (a3 >> 49) | 0x80;
        result = a2 + 9;
        *(v11 + 8) = HIBYTE(a3);
      }

      else if (a3 >> 49)
      {
        v14 = a1 + a2;
        *v14 = v5;
        v15 = vdupq_n_s64(a3);
        v15.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v15, xmmword_1C2BFA320), vshlq_u64(v15, xmmword_1C2BFA310))) | 0x80008000800080;
        *(v14 + 1) = vuzp1_s8(*v15.i8, *v15.i8).u32[0];
        *(v14 + 5) = (a3 >> 35) | 0x80;
        *(v14 + 6) = (a3 >> 42) | 0x80;
        result = a2 + 8;
        *(v14 + 7) = a3 >> 49;
      }

      else
      {
        v6 = a1 + a2;
        *v6 = v5;
        v7 = vdupq_n_s64(a3);
        v7.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_1C2BFA320), vshlq_u64(v7, xmmword_1C2BFA310))) | 0x80008000800080;
        *(v6 + 1) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
        if (a3 >> 42)
        {
          *(v6 + 5) = (a3 >> 35) | 0x80;
          result = a2 + 7;
          *(v6 + 6) = a3 >> 42;
        }

        else
        {
          result = a2 + 6;
          *(v6 + 5) = a3 >> 35;
        }
      }
    }
  }

  else if (a3 >> 28)
  {
    v8 = (a1 + a2);
    *v8 = a3 | 0x80;
    v8[1] = (a3 >> 7) | 0x80;
    v8[2] = (a3 >> 14) | 0x80;
    v8[3] = (a3 >> 21) | 0x80;
    result = a2 + 5;
    v8[4] = a3 >> 28;
  }

  else if (a3 >= 0x200000)
  {
    v13 = (a1 + a2);
    *v13 = a3 | 0x80;
    v13[1] = (a3 >> 7) | 0x80;
    v13[2] = (a3 >> 14) | 0x80;
    result = a2 + 4;
    v13[3] = a3 >> 21;
  }

  else
  {
    v3 = (a1 + a2);
    if (a3 >= 0x4000)
    {
      *v3 = a3 | 0x80;
      v3[1] = (a3 >> 7) | 0x80;
      result = a2 + 3;
      v3[2] = a3 >> 14;
    }

    else if (a3 >= 0x80)
    {
      *v3 = a3 | 0x80;
      result = a2 + 2;
      v3[1] = a3 >> 7;
    }

    else
    {
      result = a2 + 1;
      *v3 = a3;
    }
  }

  return result;
}

uint64_t store_stream_write_bytes(uint64_t a1, char *__src, size_t __n)
{
  v3 = __n;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  for (i = v6 + __n; i >= v7; i = v6 + v3)
  {
    v9 = v7 - v6;
    memcpy((*(a1 + 48) + v6), __src, v7 - v6);
    *(a1 + 40) += v9;
    result = store_stream_flush(a1, 0);
    if (result)
    {
      return result;
    }

    __src += v9;
    v3 -= v9;
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
  }

  result = memcpy((*(a1 + 48) + v6), __src, v3);
  *(a1 + 40) += v3;
  return result;
}

uint64_t restoreDirStoreUpdateSet(char **a1, __int128 *a2, unsigned int *a3)
{
  v5 = *(a3 + 5);
  if ((*(a3 + 4) - v5) < 0xB)
  {
    v59 = 0;
    v7 = 0;
    LOBYTE(__dst) = 0;
    while (store_stream_read_bytes(a3, &__dst) == 1)
    {
      v7 |= (__dst & 0x7F) << v59;
      v59 += 7;
      if ((__dst & 0x80) == 0)
      {
        goto LABEL_7;
      }
    }

    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(a3 + 6) + v5++);
      v7 |= (v8 & 0x7F) << v6;
      if ((v8 & 0x80) == 0)
      {
        break;
      }

      v9 = v6 == 63;
      v6 += 7;
    }

    while (!v9);
    *(a3 + 5) = v5;
  }

LABEL_7:
  *a2 = v7;
  if (v7)
  {
    if (v7 < 2)
    {
      return 0;
    }
  }

  else
  {
    if (*(a3 + 4))
    {
      return 0;
    }

    *a2 = 2;
  }

  vint32 = store_stream_read_vint32(a3);
  if (!vint32)
  {
    goto LABEL_65;
  }

  v11 = vint32;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v74 = a2;
  v75 = (a2 + 1);
  v16 = a1;
  v76 = vint32;
  do
  {
    v17 = *(a3 + 5);
    if ((*(a3 + 4) - v17) < 0xB)
    {
      v33 = 0;
      v19 = 0;
      LOBYTE(__dst) = 0;
      while (1)
      {
        v34 = *(a3 + 5);
        if ((v34 + 1) > *(a3 + 4))
        {
          __nbyte = *(a3 + 4);
          v35 = v13;
          v36 = 0;
          p_dst = &__dst;
          v39 = *(a3 + 5);
          v38 = 1;
          v70 = v19;
          while (1)
          {
            v69 = v38;
            v40 = p_dst;
            v41 = v12;
            v42 = *(a3 + 6);
            __n = __nbyte - v39;
            if (__nbyte != v39)
            {
              memcpy(p_dst, &v42[v39], __n);
              *(a3 + 5) = __nbyte;
            }

            __nbyte = prot_pread(*a3, v42, __nbyte, *(a3 + 3));
            if (__nbyte == -1)
            {
              v38 = 0;
              a3[4] = *__error();
              goto LABEL_57;
            }

            v43 = *(a3 + 3) + __nbyte;
            *(a3 + 4) = __nbyte;
            *(a3 + 5) = 0;
            *(a3 + 3) = v43;
            if (!__nbyte)
            {
              break;
            }

            v34 = 0;
            v39 = 0;
            p_dst = (v40 + __n);
            v38 = v69 - __n;
            v36 += __n;
            v12 = v41;
            v19 = v70;
            if (v69 - __n <= __nbyte)
            {
              goto LABEL_44;
            }
          }

          v38 = __n;
LABEL_57:
          v12 = v41;
          v19 = v70;
        }

        else
        {
          v35 = v13;
          v36 = 0;
          p_dst = &__dst;
          v38 = 1;
LABEL_44:
          memcpy(p_dst, (*(a3 + 6) + v34), v38);
          *(a3 + 5) = v34 + v38;
        }

        v16 = a1;
        v11 = v76;
        v13 = v35;
        if (v38 + v36 != 1)
        {
          break;
        }

        v19 |= (__dst & 0x7F) << v33;
        v33 += 7;
        if ((__dst & 0x80) == 0)
        {
          goto LABEL_20;
        }
      }

      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *(*(a3 + 6) + v17++);
        v19 |= (v20 & 0x7F) << v18;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v9 = v18 == 63;
        v18 += 7;
      }

      while (!v9);
      *(a3 + 5) = v17;
    }

LABEL_20:
    if (v15)
    {
      v21 = v15 - (v19 >> 2);
    }

    else
    {
      v21 = v19 >> 2;
    }

    if ((v19 & 2) == 0)
    {
      v15 = v21;
    }

    if (v19)
    {
      v24 = 1;
      if (!v14)
      {
LABEL_39:
        v12 = v75;
        if ((v19 & 2) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v22 = v13;
      v23 = store_stream_read_vint32(a3);
      v13 = v22;
      v11 = v76;
      v16 = a1;
      v24 = v23;
      if (!v14)
      {
        goto LABEL_39;
      }
    }

    if ((v19 & 2) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = v16 + 3;
    v27 = atomic_load(v16 + 3);
    v28 = v27 + v25;
    v29 = *(v16 + 2);
    if (v28 >= v29)
    {
      v44 = 2 * v29;
      if (!v29)
      {
        v44 = 0x4000;
      }

      *(v16 + 2) = v44;
      __nbytea = v13;
      v45 = my_vm_reallocate(v16, 12 * v29, 12 * v44, 0xF3u, v16[2]);
      LODWORD(v13) = __nbytea;
      v11 = v76;
      v16 = a1;
      if (v45)
      {
        v65 = __si_assert_copy_extra_332();
        v66 = v65;
        v67 = "";
        if (v65)
        {
          v67 = v65;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "DocPosting.h", 250, "0 == kr", v67);
        free(v66);
        if (__valid_fs(-1))
        {
          v68 = 2989;
        }

        else
        {
          v68 = 3072;
        }

        *v68 = -559038737;
        abort();
      }
    }

    add = atomic_fetch_add(v26, v25);
    if (v13)
    {
      v12 = &(*v16)[12 * v13];
    }

    if (!add)
    {
      *v12 &= 1u;
      v61 = __si_assert_copy_extra_332();
      v62 = v61;
      v63 = "";
      if (v61)
      {
        v63 = v61;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree_UpdateSet.c", 428, "lastPosting", v63);
      free(v62);
      if (__valid_fs(-1))
      {
        v64 = 2989;
      }

      else
      {
        v64 = 3072;
      }

      *v64 = -559038737;
      abort();
    }

    v31 = *v16;
    *v12 = *v12 & 1 | (2 * add);
    v12 = &v31[12 * add];
    v13 = add;
    if ((v19 & 2) == 0)
    {
LABEL_35:
      v32 = 0;
      v12[2] = v21;
      goto LABEL_36;
    }

LABEL_40:
    *(v12 + 1) = v19 >> 2;
    v32 = 1;
LABEL_36:
    *v12 = v32;
    v12[1] = v24;
    ++v14;
  }

  while (v14 != v11);
  v46 = store_stream_read_vint32(a3);
  a2 = v74;
  if (v46)
  {
    return 0;
  }

LABEL_65:
  v48 = *(a3 + 5);
  if ((*(a3 + 4) - v48) < 0xB)
  {
    v60 = 0;
    v50 = 0;
    LOBYTE(__dst) = 0;
    while (store_stream_read_bytes(a3, &__dst) == 1)
    {
      v50 |= (__dst & 0x7F) << v60;
      v60 += 7;
      if ((__dst & 0x80) == 0)
      {
        goto LABEL_71;
      }
    }

    v50 = 0;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    do
    {
      v51 = *(*(a3 + 6) + v48++);
      v50 |= (v51 & 0x7F) << v49;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v9 = v49 == 63;
      v49 += 7;
    }

    while (!v9);
    *(a3 + 5) = v48;
  }

LABEL_71:
  if (!v50)
  {
    return 1;
  }

  v52 = 4;
  do
  {
    v53 = v52;
    v54 = 4 * v52 - 4;
    v52 *= 2;
  }

  while (5 * v50 >= v54);
  v55 = 1;
  v56 = malloc_type_calloc(1uLL, 32 * v53, 0x1020040D49128EBuLL);
  *(a2 + 1) = v56;
  v56[1] = v53;
  while (1)
  {
    __dst = 0u;
    v79 = 0u;
    if (!restoreDirStoreUpdateSet(a1, &__dst, a3))
    {
      break;
    }

    doInsertDirectoryUS(*(a2 + 1), &__dst);
    if (v50 <= v55++)
    {
      return 1;
    }
  }

  v58 = a2[1];
  __dst = *a2;
  v79 = v58;
  freeDirectory(&__dst);
  result = 0;
  *(a2 + 1) = 0;
  return result;
}

uint64_t store_stream_read_bytes(unsigned int *a1, char *__dst)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  if (v5 + 1 > v4)
  {
    v6 = 0;
    v7 = 1;
    v10 = *(a1 + 5);
    while (1)
    {
      v8 = v4 - v10;
      if (v4 != v10)
      {
        memcpy(__dst, (*(a1 + 6) + v10), v4 - v10);
        v4 = *(a1 + 4);
        *(a1 + 5) += v8;
      }

      v11 = prot_pread(*a1, *(a1 + 6), v4, *(a1 + 3));
      if (v11 == -1)
      {
        break;
      }

      v4 = v11;
      *(a1 + 4) = v11;
      *(a1 + 5) = 0;
      *(a1 + 3) += v11;
      if (!v11)
      {
        return v8 + v6;
      }

      v5 = 0;
      v10 = 0;
      __dst += v8;
      v7 -= v8;
      v6 += v8;
      if (v7 <= v11)
      {
        goto LABEL_3;
      }
    }

    v8 = 0;
    a1[4] = *__error();
  }

  else
  {
    v6 = 0;
    v7 = 1;
LABEL_3:
    memcpy(__dst, (*(a1 + 6) + v5), v7);
    *(a1 + 5) += v7;
    v8 = v7;
  }

  return v8 + v6;
}

uint64_t store_stream_read_vint32(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(a1 + 32) - v2) < 6)
  {
    v17 = 0;
    LODWORD(v5) = 0;
    __dst = 0;
    while (store_stream_read_bytes(a1, &__dst) == 1)
    {
      v5 = ((__dst & 0x7F) << v17) | v5;
      v17 += 7;
      if ((__dst & 0x80) == 0)
      {
        return v5;
      }
    }

    return 0;
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = v2 + 1;
    v5 = *(v3 + v2);
    if ((*(v3 + v2) & 0x80000000) == 0)
    {
      v6 = v2 + 1;
LABEL_11:
      *(a1 + 40) = v6;
      return v5;
    }

    v6 = v2 + 2;
    v7 = *(v3 + v4);
    v8 = *(v3 + v4);
    if ((v7 & 0x80000000) == 0)
    {
      v5 = v5 & 0x7F | (v8 << 7);
      goto LABEL_11;
    }

    v9 = v2 + 3;
    v10 = *(v3 + v6);
    v11 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      v12 = ((v8 & 0x7F) << 7) | (v10 << 14) | (v5 & 0x7F);
      v6 = v9;
LABEL_10:
      v5 = v12;
      goto LABEL_11;
    }

    v6 = v2 + 4;
    v13 = *(v3 + v9);
    v14 = *(v3 + v9);
    if ((v13 & 0x80000000) == 0)
    {
      v12 = ((v11 & 0x7F) << 14) | (v14 << 21) | ((v8 & 0x7F) << 7) | (v5 & 0x7F);
      goto LABEL_10;
    }

    v16 = *(v3 + v6);
    *(a1 + 40) = v2 + 5;
    if (v16 < 0)
    {
      return ((v14 & 0x7F) << 21) | (v16 << 28) | ((v11 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | (v5 & 0x7F);
    }

    else
    {
      v5 = 0;
      *(a1 + 16) = 22;
    }
  }

  return v5;
}

uint64_t countInUpdates(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) > *(a1 + 8))
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert(v10, "ChangeHolder.cpp", 104, "changes->hole <= changes->count", v12);
    goto LABEL_14;
  }

  Slot = findSlotT<PayloadIterator__Changes,DocID_Count_Pair>(a1, a2);
  v5 = 0;
  if ((Slot & 0x8000000000000000) == 0)
  {
    v6 = *(a1 + 16);
    if (Slot < v6)
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 24);
      if (Slot >= v8 && Slot < v6 - v7 + v8)
      {
        return 0;
      }

      if (*(*a1 + 16 * Slot) == a2)
      {
        return *(*a1 + 16 * Slot + 8);
      }

      if (v8 <= v7)
      {
        return 0;
      }

      v14 = __si_assert_copy_extra_332();
      v11 = v14;
      v15 = "";
      if (v14)
      {
        v15 = v14;
      }

      __message_assert(v14, "ChangeHolder.cpp", 121, "changes->hole <= changes->count", v15);
LABEL_14:
      free(v11);
      if (__valid_fs(-1))
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
  }

  return v5;
}

void __message_assert(const char *a1, ...)
{
  va_start(va, a1);
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  va_copy(&v2[1], va);
  vasprintf(v2, "%s:%u: failed assertion '%s' %s ", va);
  SISetCrashCStr(v2[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v4 = v2[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v2[0]);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t findSlotT<PayloadIterator__Changes,DocID_Count_Pair>(unint64_t **a1, unint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return -1;
  }

  v4 = a1[3];
  v5 = *a1;
  if (v4 == v2)
  {
    v6 = v5[2 * v2 - 2];
    result = a1[1];
  }

  else
  {
    result = a1[2] - 1;
    v6 = v5[2 * result];
  }

  if (v6 <= a2)
  {
    if (v2 > 31)
    {
      v15 = __OFSUB__(v4, v2);
      v16 = v4 - v2;
      if (!((v16 < 0) ^ v15 | (v16 == 0)))
      {
        v21 = __si_assert_copy_extra_332();
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert(v21, "ChangeHolder.cpp", 53, "changes->hole <= changes->count", v23);
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

      if (v4 && (v17 = v4 - 1, v5[2 * v17] <= a2))
      {
        result = 0;
      }

      else
      {
        v18 = a1[2];
        result = v18 + v16;
        v17 = v18 - 1;
      }

      while (result <= v17)
      {
        v19 = result + (v17 - result) / 2;
        v20 = v5[2 * v19];
        if (v20 == a2)
        {
          result += (v17 - result) / 2;
          return result;
        }

        if (v20 <= a2)
        {
          v17 = v19 - 1;
        }

        else
        {
          result = v19 + 1;
        }
      }
    }

    else
    {
      v8 = a1[2];
      if (v4 < 1)
      {
LABEL_12:
        v11 = v8 + v4 - v2;
        if (v11 >= v8)
        {
          return v8 - 1;
        }

        else
        {
          v12 = v2 - v4;
          v13 = &v5[2 * v11];
          while (1)
          {
            v14 = *v13;
            v13 += 2;
            if (v14 <= a2)
            {
              break;
            }

            if (!--v12)
            {
              return v8 - 1;
            }
          }

          return v8 - v12;
        }
      }

      else
      {
        result = 0;
        v9 = v5;
        while (1)
        {
          v10 = *v9;
          v9 += 2;
          if (v10 <= a2)
          {
            break;
          }

          if (v4 == ++result)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return result;
}

unint64_t *changesHandleUpdate(uint64_t a1, unint64_t a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  Slot = findSlotT<PayloadIterator__Changes,DocID_Count_Pair>(a1, a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v7, v9);
  if (Slot < 0)
  {
    v10 = *(a1 + 16);
    goto LABEL_15;
  }

  v10 = *(a1 + 16);
  if (Slot < v8 - v7 + v9 && Slot >= *(a1 + 24) || Slot >= v10)
  {
LABEL_15:
    v16 = *(a1 + 8);
    if (v16 >= v10)
    {
      v33 = 2 * v10;
      v34 = v10 == 0;
      v35 = 16;
      if (!v34)
      {
        v35 = v33;
      }

      *(a1 + 16) = v35;
      realloc = query_realloc(*a1, 16 * v35);
      *a1 = realloc;
      v17 = *(a1 + 8);
      v10 = *(a1 + 16);
      *(a1 + 24) = v17;
      v16 = v17;
    }

    else
    {
      v17 = *(a1 + 24);
      realloc = *a1;
    }

    memmove(&realloc[2 * v17], &realloc[2 * (v10 - (v16 - v17))], 16 * (v16 - v17));
    v19 = *(a1 + 8);
    *(a1 + 24) = v19;
    result = weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v19, v19);
    if (a3 == 2)
    {
      v20 = -1;
    }

    else
    {
      if (a3 != 1)
      {
LABEL_23:
        v21 = *(a1 + 8);
        *(*a1 + 16 * v21) = a2;
        *(a1 + 8) = v21 + 1;
        ++*(a1 + 24);
        goto LABEL_24;
      }

      if (dword_1EBF46AF4 >= 5)
      {
        v36 = *__error();
        v37 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v41 = a2;
          v42 = 2048;
          v43 = a1;
          _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "Add %lld to change holder %p", buf, 0x16u);
        }

        result = __error();
        *result = v36;
      }

      v20 = 1;
    }

    *(*a1 + 16 * *(a1 + 8) + 8) = v20;
    goto LABEL_23;
  }

  result = *a1;
  v14 = *a1 + 16 * Slot;
  if (*v14 == a2)
  {
    if (a3 == 2)
    {
      v15 = -1;
    }

    else
    {
      if (a3 != 1)
      {
        goto LABEL_33;
      }

      v15 = 1;
    }

    *(v14 + 8) += v15;
    result = *a1;
LABEL_33:
    if (LODWORD(result[2 * Slot + 1]))
    {
      v24 = *(a1 + 8);
    }

    else
    {
      result = changeHolderMoveHoleToIndex<PayloadIterator__Changes,DocID_Count_Pair>(a1, Slot);
      v24 = *(a1 + 8) - 1;
      *(a1 + 8) = v24;
    }

    if (*(a1 + 24) > v24)
    {
      v25 = __si_assert_copy_extra_332();
      v26 = v25;
      v27 = "";
      if (v25)
      {
        v27 = v25;
      }

      __message_assert(v25, "ChangeHolder.cpp", 237, "changes->hole <= changes->count", v27);
      goto LABEL_45;
    }

    goto LABEL_24;
  }

  if (*v14 >= a2)
  {
    goto LABEL_15;
  }

  if (*(a1 + 8) >= v10)
  {
    *(a1 + 16) = 2 * v10;
    *a1 = query_realloc(result, 32 * v10);
    *(a1 + 24) = *(a1 + 8);
  }

  result = changeHolderMoveHoleToIndex<PayloadIterator__Changes,DocID_Count_Pair>(a1, Slot);
  v23 = *(a1 + 24);
  if (a3 == 1)
  {
    *(*a1 + 16 * v23 + 8) = 1;
    if (dword_1EBF46AF4 >= 5)
    {
      v38 = *__error();
      v39 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v41 = a2;
        v42 = 2048;
        v43 = a1;
        _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "Add %lld to change holder %p", buf, 0x16u);
      }

      result = __error();
      *result = v38;
    }
  }

  else if (a3 == 2)
  {
    *(*a1 + 16 * v23 + 8) = -1;
  }

  *(*a1 + 16 * v23) = a2;
  v28 = *(a1 + 24);
  *(a1 + 24) = v28 + 1;
  v29 = *(a1 + 8);
  *(a1 + 8) = v29 + 1;
  if (v28 > v29)
  {
    v30 = __si_assert_copy_extra_332();
    v26 = v30;
    v31 = "";
    if (v30)
    {
      v31 = v30;
    }

    __message_assert(v30, "ChangeHolder.cpp", 260, "changes->hole <= changes->count", v31);
LABEL_45:
    free(v26);
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

LABEL_24:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(uint64_t result, uint64_t a2)
{
  if (a2 > result)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert(v2, "ChangeHolder.cpp", 131, "changes->hole<=changes->count", v4);
    free(v3);
    if (__valid_fs(-1))
    {
      v5 = 2989;
    }

    else
    {
      v5 = 3072;
    }

    *v5 = -559038737;
    abort();
  }

  return result;
}

uint64_t changeHolderMoveHoleToIndex<PayloadIterator__Changes,DocID_Count_Pair>(void *a1, uint64_t a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v6 = a1[3];
  v7 = v6 - v4 + v5[1];
  weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v4, v6);
  v8 = a2 - v7;
  if (a2 >= v7)
  {
    if (a2 != v7)
    {
      memmove((*a1 + 16 * a1[3]), (*a1 + 16 * v7), 16 * v8);
    }

    a2 = a1[3] + v8;
    a1[3] = a2;
    v13 = a1[1];
    if (a2 <= v13)
    {
      goto LABEL_12;
    }

    v20 = __si_assert_copy_extra_332();
    v15 = v20;
    v21 = "";
    if (v20)
    {
      v21 = v20;
    }

    __message_assert(v20, "ChangeHolder.cpp", 181, "changes->hole <= changes->count", v21);
LABEL_21:
    free(v15);
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

  v9 = a1[3];
  v10 = v9 == a2;
  v11 = v9 < a2;
  v12 = v9 - a2;
  if (v11)
  {
    v18 = __si_assert_copy_extra_332();
    v15 = v18;
    v19 = "";
    if (v18)
    {
      v19 = v18;
    }

    __message_assert(v18, "ChangeHolder.cpp", 185, "i <= changes->hole", v19);
    goto LABEL_21;
  }

  if (!v10)
  {
    memmove((*a1 + 16 * (v7 - v12)), (*a1 + 16 * a2), 16 * v12);
    a1[3] = a2;
  }

  v13 = a1[1];
  if (v13 < a2)
  {
    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert(v14, "ChangeHolder.cpp", 191, "changes->hole <= changes->count", v16);
    goto LABEL_21;
  }

LABEL_12:

  return weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v13, a2);
}

uint64_t changesSetMinCount(uint64_t a1, unint64_t a2, int a3)
{
  Slot = findSlotT<PayloadIterator__Changes,DocID_Count_Pair>(a1, a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  result = weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v7, v9);
  if (Slot < 0)
  {
    v11 = *(a1 + 16);
    v14 = *a1;
    goto LABEL_18;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = Slot >= v8 - v7 + v9 || Slot < v12;
  v14 = *a1;
  if (!v13 || Slot >= v11)
  {
    goto LABEL_18;
  }

  v16 = &v14[2 * Slot];
  if (*v16 == a2)
  {
    if (*(v16 + 2) > a3)
    {
      *(v16 + 2) = a3;
      *(*a1 + 16 * Slot + 12) = 0;
      v12 = *(a1 + 24);
    }

    if (v12 > *(a1 + 8))
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert(v17, "ChangeHolder.cpp", 303, "changes->hole <= changes->count", v19);
      goto LABEL_32;
    }

    return result;
  }

  if (*v16 >= a2)
  {
LABEL_18:
    v20 = *(a1 + 8);
    if (v20 < v11 && v14)
    {
      v21 = *(a1 + 24);
    }

    else
    {
      v22 = 2 * v11;
      if (!v11)
      {
        v22 = 16;
      }

      *(a1 + 8) = v11;
      *(a1 + 16) = v22;
      if (v14)
      {
        v23 = malloc_type_zone_realloc(queryZone, v14, 16 * v22, 0xA1A7ADA0uLL);
      }

      else
      {
        v23 = malloc_type_zone_malloc(queryZone, 16 * v22, 0x566E289CuLL);
      }

      v14 = v23;
      if (v23)
      {
        *a1 = v23;
      }

      else
      {
        _log_fault_for_malloc_failure();
        v14 = *a1;
      }

      v21 = *(a1 + 8);
      v11 = *(a1 + 16);
      *(a1 + 24) = v21;
      v20 = v21;
    }

    memmove(&v14[2 * v21], &v14[2 * (v11 - (v20 - v21))], 16 * (v20 - v21));
    v31 = *(a1 + 8);
    *(a1 + 24) = v31;
    result = weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v31, v31);
    *(*a1 + 16 * *(a1 + 8) + 8) = a3;
    v32 = *(a1 + 8);
    v33 = *a1 + 16 * v32;
    *v33 = a2;
    *(v33 + 12) = 0;
    *(a1 + 8) = v32 + 1;
    ++*(a1 + 24);
    return result;
  }

  if (*(a1 + 8) >= v11)
  {
    *(a1 + 16) = 2 * v11;
    *a1 = query_realloc(v14, 32 * v11);
    *(a1 + 24) = *(a1 + 8);
  }

  result = changeHolderMoveHoleToIndex<PayloadIterator__Changes,DocID_Count_Pair>(a1, Slot);
  v24 = *(a1 + 24);
  *(*a1 + 16 * v24 + 8) = a3;
  v25 = *(a1 + 8);
  v26 = *a1 + 16 * v24;
  *(v26 + 12) = 0;
  *v26 = a2;
  v27 = *(a1 + 24);
  *(a1 + 24) = v27 + 1;
  *(a1 + 8) = v25 + 1;
  if (v27 > v25)
  {
    v28 = __si_assert_copy_extra_332();
    v18 = v28;
    v29 = "";
    if (v28)
    {
      v29 = v28;
    }

    __message_assert(v28, "ChangeHolder.cpp", 322, "changes->hole <= changes->count", v29);
LABEL_32:
    free(v18);
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

  return result;
}

uint64_t distanceHolderSetMinDistance(uint64_t a1, unint64_t a2, int a3, float a4)
{
  Slot = findSlotT<PayloadIterator__Changes,DocID_Count_Pair>(a1, a2);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  result = weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v9, v11);
  if (Slot < 0)
  {
    v14 = *(a1 + 16);
    v16 = *a1;
    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = Slot >= v10 - v9 + v11 || Slot < v13;
  v16 = *a1;
  if (!v15 || Slot >= v14)
  {
    goto LABEL_20;
  }

  v18 = &v16[2 * Slot];
  if (*v18 != a2)
  {
    if (*v18 < a2)
    {
      v27 = *(a1 + 8);
      if (v27 >= v14)
      {
        *(a1 + 16) = 2 * v14;
        *a1 = query_realloc(v16, 32 * v14);
        v13 = *(a1 + 8);
        v14 = *(a1 + 16);
        *(a1 + 24) = v13;
        v27 = v13;
      }

      v28 = v13 - v27 + v14;
      weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v27, v13);
      v29 = Slot - v28;
      if (Slot >= v28)
      {
        if (Slot != v28)
        {
          memmove((*a1 + 16 * *(a1 + 24)), (*a1 + 16 * v28), 16 * v29);
        }

        Slot = *(a1 + 24) + v29;
        *(a1 + 24) = Slot;
        v33 = *(a1 + 8);
        if (Slot <= v33)
        {
          goto LABEL_48;
        }

        v49 = __si_assert_copy_extra_332();
        v20 = v49;
        v50 = "";
        if (v49)
        {
          v50 = v49;
        }

        __message_assert(v49, "ChangeHolder.cpp", 181, "changes->hole <= changes->count", v50);
      }

      else
      {
        v30 = *(a1 + 24);
        v31 = v30 == Slot;
        v15 = v30 < Slot;
        v32 = v30 - Slot;
        if (!v15)
        {
          if (!v31)
          {
            memmove((*a1 + 16 * (v28 - v32)), (*a1 + 16 * Slot), 16 * v32);
            *(a1 + 24) = Slot;
          }

          v33 = *(a1 + 8);
          if (v33 < Slot)
          {
            v34 = __si_assert_copy_extra_332();
            v20 = v34;
            v35 = "";
            if (v34)
            {
              v35 = v34;
            }

            __message_assert(v34, "ChangeHolder.cpp", 191, "changes->hole <= changes->count", v35);
            goto LABEL_17;
          }

LABEL_48:
          result = weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v33, Slot);
          v39 = *(a1 + 24);
          *(*a1 + 16 * v39 + 8) = a4;
          v40 = *(a1 + 8);
          v41 = *a1 + 16 * v39;
          *(v41 + 12) = a3;
          *v41 = a2;
          v42 = *(a1 + 24);
          *(a1 + 24) = v42 + 1;
          *(a1 + 8) = v40 + 1;
          if (v42 > v40)
          {
            v43 = __si_assert_copy_extra_332();
            v44 = v43;
            v45 = "";
            if (v43)
            {
              v45 = v43;
            }

            __message_assert(v43, "ChangeHolder.cpp", 322, "changes->hole <= changes->count", v45);
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

          return result;
        }

        v47 = __si_assert_copy_extra_332();
        v20 = v47;
        v48 = "";
        if (v47)
        {
          v48 = v47;
        }

        __message_assert(v47, "ChangeHolder.cpp", 185, "i <= changes->hole", v48);
      }

LABEL_17:
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

LABEL_20:
    v23 = *(a1 + 8);
    if (v23 < v14 && v16)
    {
      v24 = *(a1 + 24);
    }

    else
    {
      v25 = 2 * v14;
      if (!v14)
      {
        v25 = 16;
      }

      *(a1 + 8) = v14;
      *(a1 + 16) = v25;
      if (v16)
      {
        v26 = malloc_type_zone_realloc(queryZone, v16, 16 * v25, 0xA1A7ADA0uLL);
      }

      else
      {
        v26 = malloc_type_zone_malloc(queryZone, 16 * v25, 0x566E289CuLL);
      }

      v16 = v26;
      if (v26)
      {
        *a1 = v26;
      }

      else
      {
        _log_fault_for_malloc_failure();
        v16 = *a1;
      }

      v24 = *(a1 + 8);
      v14 = *(a1 + 16);
      *(a1 + 24) = v24;
      v23 = v24;
    }

    memmove(&v16[2 * v24], &v16[2 * (v14 - (v23 - v24))], 16 * (v23 - v24));
    v36 = *(a1 + 8);
    *(a1 + 24) = v36;
    result = weak_checkChangeHolderIntegrity<PayloadIterator__Changes,DocID_Count_Pair>(v36, v36);
    *(*a1 + 16 * *(a1 + 8) + 8) = a4;
    v37 = *(a1 + 8);
    v38 = *a1 + 16 * v37;
    *v38 = a2;
    *(v38 + 12) = a3;
    *(a1 + 8) = v37 + 1;
    ++*(a1 + 24);
    return result;
  }

  if (*(v18 + 2) > a4)
  {
    *(v18 + 2) = a4;
    *(*a1 + 16 * Slot + 12) = a3;
    v13 = *(a1 + 24);
  }

  if (v13 > *(a1 + 8))
  {
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert(v19, "ChangeHolder.cpp", 303, "changes->hole <= changes->count", v21);
    goto LABEL_17;
  }

  return result;
}

float distanceHolderGetMinDistance(uint64_t a1, unint64_t a2, _BYTE *a3, _DWORD *a4)
{
  *a3 = 0;
  if (*(a1 + 24) > *(a1 + 8))
  {
    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert(v15, "ChangeHolder.cpp", 104, "changes->hole <= changes->count", v17);
    goto LABEL_15;
  }

  Slot = findSlotT<PayloadIterator__Changes,DocID_Count_Pair>(a1, a2);
  result = 0.0;
  if (Slot < 0)
  {
    return result;
  }

  v10 = *(a1 + 16);
  if (Slot >= v10)
  {
    return result;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  if (Slot >= v12 && Slot < v10 - v11 + v12)
  {
    return result;
  }

  v13 = *a1;
  if (*(*a1 + 16 * Slot) != a2)
  {
    if (v12 <= v11)
    {
      return result;
    }

    v19 = __si_assert_copy_extra_332();
    v16 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert(v19, "ChangeHolder.cpp", 121, "changes->hole <= changes->count", v20);
LABEL_15:
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

  *a3 = 1;
  v14 = &v13[2 * Slot];
  if (a4)
  {
    *a4 = *(v14 + 3);
  }

  return *(v14 + 2);
}

uint64_t checkAgainstChangeHolder(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) > *(a1 + 8))
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert(v13, "ChangeHolder.cpp", 367, "changes->hole <= changes->count", v15);
    goto LABEL_17;
  }

  Slot = findSlotT<PayloadIterator__Changes,DocID_Count_Pair>(a1, a2);
  v5 = 0;
  if (Slot < 0)
  {
    return v5;
  }

  v6 = *(a1 + 16);
  if (Slot >= v6)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  if (Slot >= v8 && Slot < v6 - v7 + v8)
  {
    return 0;
  }

  v9 = *a1 + 16 * Slot;
  if (*v9 != a2)
  {
    if (v8 <= v7)
    {
      return 0;
    }

    v17 = __si_assert_copy_extra_332();
    v14 = v17;
    v18 = "";
    if (v17)
    {
      v18 = v17;
    }

    __message_assert(v17, "ChangeHolder.cpp", 391, "changes->hole <= changes->count", v18);
LABEL_17:
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

  v10 = *(v9 + 8);
  v5 = v10 >> 31;
  *(v9 + 8) = (v10 + 1) & (v10 >> 31);
  if (*(*a1 + 16 * Slot + 8))
  {
    v11 = *(a1 + 8);
  }

  else
  {
    changeHolderMoveHoleToIndex<PayloadIterator__Changes,DocID_Count_Pair>(a1, Slot);
    v11 = *(a1 + 8) - 1;
    *(a1 + 8) = v11;
  }

  if (*(a1 + 24) > v11)
  {
    v19 = __si_assert_copy_extra_332();
    v14 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert(v19, "ChangeHolder.cpp", 388, "changes->hole <= changes->count", v20);
    goto LABEL_17;
  }

  return v5;
}

void ReleaseEmbeddingDistances(uint64_t a1)
{
  if (atomic_fetch_add((a1 + 32), 0xFFFFFFFF) == 1)
  {
    free(*a1);

    free(a1);
  }
}

unint64_t utf8_prev_char_start(unint64_t a1, unint64_t a2)
{
  do
  {
    if (a2 <= a1)
    {
      break;
    }

    do
    {
      v3 = *--a2;
      v2 = v3;
      v4 = v3 >> 4;
      v5 = v4 & 0xC;
    }

    while (v5 == 8);
    if ((v2 & 0x80) != 0)
    {
      v6 = utf8_byte_length(unsigned char)::utf8_len_table[v4];
      v7 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v6] & v2);
      if (v5 == 12)
      {
        if (v6 <= 2)
        {
          v8 = 2;
        }

        else
        {
          v8 = v6;
        }

        for (i = 1; i != v8; ++i)
        {
          v2 = *(a2 + i) & 0x3F | (v7 << 6);
          v7 = v2;
        }
      }

      else
      {
        v2 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v6] & v2);
      }
    }
  }

  while ((v2 - 880) > 0xFFFFFF8F);
  return a2;
}

uint64_t utf8_to_code_point(char *a1)
{
  result = *a1;
  if ((result & 0x80000000) != 0)
  {
    v3 = result >> 4;
    v4 = utf8_byte_length(unsigned char)::utf8_len_table[v3];
    v5 = ~v3;
    v6 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v4] & result);
    if ((v5 & 0xC) != 0)
    {
      return utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v4] & result;
    }

    else
    {
      if (v4 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = v4;
      }

      v7 = v4 - 1;
      v8 = a1 + 1;
      do
      {
        v9 = *v8++;
        result = v9 & 0x3F | (v6 << 6);
        v6 = v9 & 0x3F | (v6 << 6);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

ssize_t file_scanner_read(ssize_t result)
{
  v1 = (result + 16);
  *(result + 4120) = result + 16;
  *(result + 4112) = result + 16;
  if (!*(result + 4128))
  {
    v2 = result;
    result = pread(*result, v1, 0x1000uLL, *(result + 8));
    if (result == -1)
    {
      v3 = *MEMORY[0x1E69E9848];
      v4 = __error();
      v5 = *v4;
      *(v2 + 4128) = *v4;
      return fprintf(v3, "\npread error(%d) offset: 0x%llx \n", v5, *(v2 + 8));
    }

    else
    {
      *(v2 + 8) += result;
      *(v2 + 4112) = v1;
      *(v2 + 4120) = &v1[result];
      if (!result)
      {
        *(v2 + 4128) = -1;
      }
    }
  }

  return result;
}

uint64_t file_scanner_read_vint(ssize_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4112);
  if ((*(a1 + 4120) - v2) < 11)
  {
    v7 = 0;
    memset(v14, 0, sizeof(v14));
    while (1)
    {
      if (v2 >= *(a1 + 4120))
      {
        file_scanner_read(a1);
        v2 = *(a1 + 4112);
      }

      v8 = v2 + 1;
      *(a1 + 4112) = v2 + 1;
      v9 = *v2;
      *(v14 + v7) = v9;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      ++v7;
      v2 = v8;
      if (v7 == 11)
      {
        result = 0;
        goto LABEL_15;
      }
    }

    result = 0;
    if (v7 != 10)
    {
      v10 = *(a1 + 4128);
      if (!v10)
      {
        result = 0;
        v11 = v14;
        do
        {
          v12 = *v11++;
          result |= (v12 & 0x7F) << v10;
          v10 += 7;
        }

        while (v12 < 0);
      }
    }
  }

  else
  {
    v3 = 0;
    result = 0;
    v5 = v2 + 1;
    do
    {
      v6 = *(v5 - 1);
      *(a1 + 4112) = v5;
      result |= (v6 & 0x7F) << v3;
      v3 += 7;
      ++v5;
    }

    while (v6 < 0);
  }

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t file_scanner_read_vint32(ssize_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4112);
  if ((*(a1 + 4120) - v2) < 11)
  {
    v6 = 0;
    memset(v11, 0, sizeof(v11));
    v10 = v11;
    while (1)
    {
      if (v2 >= *(a1 + 4120))
      {
        file_scanner_read(a1);
        v2 = *(a1 + 4112);
      }

      v7 = v2 + 1;
      *(a1 + 4112) = v2 + 1;
      v8 = *v2;
      *(v11 + v6) = v8;
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      ++v6;
      v2 = v7;
      if (v6 == 11)
      {
        result = 0;
        goto LABEL_14;
      }
    }

    result = 0;
    if (v6 != 10 && !*(a1 + 4128))
    {
      v10 = v11;
      result = restoreVInt32(&v10);
    }

LABEL_14:
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
    v4 = (a1 + 4112);

    return restoreVInt32(v4);
  }

  return result;
}

uint64_t restoreVInt32(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((**a1 & 0x80000000) == 0)
  {
    v3 = 1;
    goto LABEL_10;
  }

  v4 = v1[1];
  if ((v1[1] & 0x80000000) == 0)
  {
    v2 = v2 & 0x7F | (v4 << 7);
    v3 = 2;
    goto LABEL_10;
  }

  v5 = v1[2];
  if ((v1[2] & 0x80000000) == 0)
  {
    v6 = ((v4 & 0x7F) << 7) | (v5 << 14) | (v2 & 0x7F);
    v3 = 3;
LABEL_9:
    v2 = v6;
    goto LABEL_10;
  }

  v7 = v1[3];
  if ((v1[3] & 0x80000000) == 0)
  {
    v6 = ((v5 & 0x7F) << 14) | (v7 << 21) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
    v3 = 4;
    goto LABEL_9;
  }

  v9 = v1[4];
  if (v9 < 0)
  {
    v11 = __si_assert_copy_extra_332();
    __message_assert_409(v11, v12, v13, v14, v15, v16, v17, v18, "VIntUtils.h");
    free(v11);
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

  v10 = ((v7 & 0x7F) << 21) | (v9 << 28) | ((v5 & 0x7F) << 14) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
  v3 = 5;
  v2 = v10;
LABEL_10:
  *a1 = &v1[v3];
  return v2;
}

void __message_assert_409(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", &a9);
  SISetCrashCStr(v10[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = v10[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v10[0]);
  v9 = *MEMORY[0x1E69E9840];
}

void Converter::~Converter(Converter *this)
{
  *this = &unk_1F4282740;
  v2 = *(this + 1);
  if (v2 != this + 24)
  {
    free(v2);
  }

  JUMPOUT(0x1C691FEF0);
}

{
  *this = &unk_1F4282740;
  v2 = *(this + 1);
  if (v2 != this + 24)
  {
    free(v2);
  }
}

void UTF8Str::~UTF8Str(UTF8Str *this)
{
  *this = &unk_1F427AF78;
  v2 = *(this + 1);
  if (v2 != this + 24)
  {
    free(v2);
    *(this + 1) = 0;
  }

  *this = &unk_1F4282740;

  JUMPOUT(0x1C691FEF0);
}

{
  *this = &unk_1F427AF78;
  v2 = *(this + 1);
  if (v2 != this + 24)
  {
    free(v2);
    *(this + 1) = 0;
  }

  *this = &unk_1F4282740;
}

CFArrayRef __setDatastoreLocalizedAttributes_block_invoke()
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], &setDatastoreLocalizedAttributes::defaultLanguages, 1, MEMORY[0x1E695E9C0]);
  setDatastoreLocalizedAttributes::defaultLanguageOrder = result;
  return result;
}

uint64_t isVectorDictionary(const void *a1, _DWORD *a2, int *a3, _WORD *a4, const void **a5)
{
  v10 = CFGetTypeID(a1);
  if (isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::onceToken != -1)
  {
    dispatch_once(&isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::onceToken, &__block_literal_global_78);
  }

  if (v10 != isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::sDictionaryTypeID)
  {
    return 0;
  }

  result = CFDictionaryGetValueIfPresent(a1, @"vec_data", a5);
  if (!result)
  {
    return result;
  }

  if (CFGetTypeID(*a5) != isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::sDataTypeID)
  {
    return 0;
  }

  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, @"vec_dim", &value) && CFGetTypeID(value) == isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::sNumberTypeID)
  {
    CFNumberGetValue(value, kCFNumberSInt8Type, a2);
  }

  if (CFDictionaryGetValueIfPresent(a1, @"vec_format", &value) && CFGetTypeID(value) == isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::sNumberTypeID)
  {
    CFNumberGetValue(value, kCFNumberSInt8Type, a3);
  }

  if (CFDictionaryGetValueIfPresent(a1, @"vec_version", &value) && CFGetTypeID(value) == isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::sNumberTypeID)
  {
    CFNumberGetValue(value, kCFNumberSInt16Type, a4);
  }

  Length = CFDataGetLength(*a5);
  v13 = *a2;
  v14 = -1;
  if (v13 <= 2 && *a3 <= 2)
  {
    v14 = (vector_dimension_vec_sizes_15424[v13] * vector_size_elem_sizes_15423[*a3]);
  }

  return v14 <= Length;
}

void *appendVector(size_t a1, unint64_t *a2, char **a3, unint64_t *a4, CFDataRef theData)
{
  v7 = *a2;
  v8 = *a2 + a1;
  *a2 = v8;
  v9 = *a3;
  if (v8 > *a4)
  {
    v11 = (v8 - 1) | ((v8 - 1) >> 1) | (((v8 - 1) | ((v8 - 1) >> 1)) >> 2);
    v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
    v13 = (v12 | (v12 >> 16) | ((v12 | (v12 >> 16)) >> 32)) + 1;
    *a4 = v13;
    v9 = malloc_type_realloc(v9, v13, 0x100004077774924uLL);
    *a3 = v9;
  }

  BytePtr = CFDataGetBytePtr(theData);

  return memcpy(&v9[v7], BytePtr, a1);
}

CFTypeID ___ZL18isVectorDictionaryPK14__CFDictionaryP14vec_dimensionsP15vec_data_formatPtPPK8__CFDatabS4_S2__block_invoke()
{
  isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::sDictionaryTypeID = CFDictionaryGetTypeID();
  isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::sDataTypeID = CFDataGetTypeID();
  result = CFNumberGetTypeID();
  isVectorDictionary(__CFDictionary const*,vec_dimensions *,vec_data_format *,unsigned short *,__CFData const**,BOOL,vec_data_format,vec_dimensions)::sNumberTypeID = result;
  return result;
}

void DBTypeConverter::~DBTypeConverter(DBTypeConverter *this)
{
  *this = &unk_1F4282740;
  v2 = *(this + 1);
  if (v2 != this + 24)
  {
    free(v2);
  }

  JUMPOUT(0x1C691FEF0);
}

{
  *this = &unk_1F4282740;
  v2 = *(this + 1);
  if (v2 != this + 24)
  {
    free(v2);
  }
}

uint64_t runCannedHelper(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x1E69E9840];
  result = a1(a2, a6, a3, a4, a5, a7, a8, 0, &__block_literal_global_67, a9);
  if ((result & 1) == 0)
  {
    if (dword_1EBF46AE0 >= 5)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = a6;
        v17 = 2048;
        v18 = a4;
        _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "No attribute %s for %llx", buf, 0x16u);
      }

      *__error() = v13;
    }

    result = _MDPlistBytesAddNull();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _qpContentIndexMatch(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  if (!v7)
  {
    v8 = a4;
    v9 = a3;
    (a2[1])(a1, a2);
    a3 = v9;
    a4 = v8;
    v7 = *a2;
  }

  result = (*(*a5 + 48))(a5, v7, a3, a4, *(a3 + 72));
  if (result)
  {
    if (*a2)
    {
      *(*a2 + 40) |= 0x8000u;
    }
  }

  return result;
}

uint64_t _qpPathMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a3 + 34) & 0x10) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*a5 + 56))(a5, a1, a2, a3, a4);
  }
}

void ___ZN11SISearchCtxC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CFAbsoluteTimeGetCurrent();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  md_deadline_once_run_block_with_lock();
  if ((v8[3] & 1) == 0)
  {
    v2 = *(v4 + 6);
    operator new();
  }

  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v7, 8);
}

void SISearchCtx_METADATA::SISearchCtx_METADATA(SISearchCtx_METADATA *this, char a2, char a3)
{
  *this = &unk_1F4282348;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 81) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 148) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = -1;
  *(this + 62) = 0;
  *(this + 76) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 36) = md_deadline_once_create();
  *(this + 37) = dispatch_time(0, 500000000);
  *this = &unk_1F427CAD8;
  *(this + 90) = 10;
  *(this + 23) = 0u;
  *(this + 96) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 64) = 0;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 296) = 0;
  *(this + 596) = 0u;
  *(this + 612) = 0u;
  *(this + 628) = 0u;
  *(this + 642) = 0;
  *(this + 650) = a2;
  *(this + 651) = a3;
  *(this + 164) = 0;
  *(this + 83) = 0;
  *(this + 168) = 0;
  *(this + 105) = 0;
  *(this + 212) = 0;
  *(this + 153) = 0;
  *(this + 308) = 0;
  *(this + 155) = 0;
  *(this + 1248) = 0;
  *(this + 157) = 0;
  *(this + 316) = 0;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 820) = 0u;
  *(this + 596) = 0;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 856) = 0u;
  *(this + 304) = 0;
  *(this + 75) = 0u;
}

uint64_t PartialQueryResults::attributeVector(PartialQueryResults *this)
{
  v1 = *(this + 29);
  if (*this == 1)
  {
    if (v1)
    {
      if (!*(this + 13))
      {
        v2 = *(this + 16);
        if (v2)
        {
          v17 = 0;
          v3 = this;
          SIFlattenArrayToCStringVector(v2, this + 13, &v17, &v16);
          this = v3;
        }
      }
    }

    return *(this + 13);
  }

  else
  {
    v4 = *(this + 12);
    if (v1)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v4 = *(this + 15);
      if (v4)
      {
        v6 = this;
        SIFlattenArrayToCStringVector(*(this + 15), this + 12, this + 30, this + 29);
        v4 = *(v6 + 12);
        if (!v4)
        {
          v8 = __si_assert_copy_extra_332();
          __message_assert_336(v8, v9, v10, v11, v12, v13, v14, v15, "SISearchCtx.h");
          free(v8);
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

  return v4;
}

void PartialQueryResults::populateCompletionModel()
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v10 = 0;
  v9 = 0x2000000000;
  md_deadline_once_run_block_with_lock();
  if ((v12[3] & 1) == 0)
  {
    v0 = *(v8 + 6);
    v1 = malloc_type_malloc(0x38uLL, 0x10200403802FF21uLL);
    v2 = v1;
    if (v1)
    {
      atomic_store(0, v1);
      *(v1 + 1) = 0;
      if (v0 == 1)
      {
        v3 = 1;
      }

      else
      {
        *(v1 + 1) = SILanguageModelGetDefaultModel();
        v3 = v0 & 0xFFFFFFEF;
      }

      *(v2 + 1) = 0u;
      v2[1] = v3;
      *(v2 + 2) = 0u;
      v2[12] = 0;
      v4 = *MEMORY[0x1E695E480];
      if (SIWordTrieGetTypeID::once != -1)
      {
        dispatch_once(&SIWordTrieGetTypeID::once, &__block_literal_global_6289);
      }

      Instance = _CFRuntimeCreateInstance();
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 1065353216;
      if (v3)
      {
        *(v2 + 2) = Instance;
      }

      else
      {
        *(v2 + 3) = Instance;
        if (SIWordTrieGetTypeID::once != -1)
        {
          dispatch_once(&SIWordTrieGetTypeID::once, &__block_literal_global_6289);
        }

        v6 = _CFRuntimeCreateInstance();
        *(v6 + 16) = 0u;
        *(v6 + 32) = 0u;
        *(v6 + 48) = 1065353216;
        *(v2 + 4) = v6;
      }

      atomic_fetch_add(v2, 1u);
    }

    md_deadline_once_run_block_with_lock();
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

void *___ZN19PartialQueryResults23populateCompletionModelEP18md_deadline_once_s_block_invoke(void *result, int a2)
{
  v2 = result[6];
  *(*(result[4] + 8) + 24) = a2 != 0;
  if (!a2)
  {
    *(*(result[5] + 8) + 24) = *(v2 + 320);
  }

  return result;
}

void ___ZN19PartialQueryResults23populateCompletionModelEP18md_deadline_once_s_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    SICompletionModelRelease(*(a1 + 40));
  }

  else
  {
    *(*(a1 + 32) + 328) = *(a1 + 40);
  }
}

uint64_t QueryFunctionCallbackContext::findPath(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = **(a4 + 288);
  if ((*(a4 + 34) & 8) != 0 || ((*(*a1 + 24))(a1, **(a4 + 288)) & 1) == 0)
  {
    v9 = *a3;
    if (*a3 || ((a3[1])(a2, a3), (v9 = *a3) != 0))
    {
      v9 = *(v9 + 24);
      v8 = v9 != v7;
      LODWORD(v9) = v9 == v7;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    LODWORD(v9) = 1;
  }

  if (*(a4 + 24) == 5)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t QueryFunctionCallbackContext_LIVE::findContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 33) == 1)
  {
    v44 = v3;
    v45 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 32);
    v7 = *(v5 + 1384);
    v8 = *(v7 + 2);
    if (v8)
    {
      v9 = *v7;
      v10 = v8 + 1;
      v11 = (v9 + 8 * v8 - 8);
      while (1)
      {
        v12 = *v11;
        if (*v11)
        {
          v13 = *(v12 + 80);
          if (v13 < v6 && v13 + *(v12 + 68) > v6)
          {
            break;
          }
        }

        --v10;
        --v11;
        if (v10 <= 1)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v15 = *(v5 + 1392);
      v16 = *(v15 + 2);
      if (!v16)
      {
LABEL_19:
        v14 = 0;
        return v14 ^ ((*(a3 + 24) - 5) < 2);
      }

      v17 = *v15;
      v18 = v16 + 1;
      v19 = (v17 + 8 * v16 - 8);
      while (1)
      {
        v12 = *v19;
        if (*v19)
        {
          v20 = *(v12 + 80);
          if (v20 < v6 && v20 + *(v12 + 68) > v6)
          {
            break;
          }
        }

        --v18;
        --v19;
        if (v18 < 2)
        {
          goto LABEL_19;
        }
      }
    }

    v21 = *(a3 + 120);
    v22 = a3;
    if (!v21)
    {
      v23 = a2;
      v24 = a1;
      v25 = *(a3 + 72);
      if (v25)
      {
        v26 = strlen(*(a3 + 72));
        v27 = *MEMORY[0x1E695E480];
        v28 = v25;
      }

      else
      {
        v27 = *MEMORY[0x1E695E480];
        v28 = 0;
        v26 = 0;
      }

      v29 = CFStringCreateWithBytes(v27, v28, v26, 0x8000100u, 0);
      v30 = *(v22 + 32);
      v31 = (v30 >> 1) & 0x20 | (v30 >> 4) & 3 | (((v30 >> 15) & 1) << 25);
      v32 = (v30 >> 1) & 0x4000000 | (v30 >> 11) & 8;
      v33 = *(v24 + 24);
      if (v33)
      {
        v34 = *(v33 + 144);
      }

      else
      {
        v34 = 0;
      }

      _CIQueryNodeForString(v12, v29, 0, v31 | v32, v34, (*(*(v24 + 8) + 6584) >> 25) & 3, 0, *(v22 + 60));
      v21 = v35;
      v36 = 0;
      atomic_compare_exchange_strong((v22 + 120), &v36, v35);
      if (v36)
      {
        ContentIndexQueryNodeDispose(v35);
        v21 = *(v22 + 120);
      }

      else
      {
        *(v22 + 120) = v35;
        *(v22 + 128) = ContentIndexQueryNodeDispose;
      }

      if (v29)
      {
        CFRelease(v29);
      }

      a1 = v24;
      a2 = v23;
    }

    v41 = 0;
    v42 = 0;
    v43 = 0;
    v37 = *(a1 + 16);
    if (v37)
    {
      v38 = *(v37 + 8);
      if (v38)
      {
        v39 = v38[82];
        v41 = v38[4];
        v42 = v39;
        v43 = v38[9];
      }
    }

    v14 = _CIMatchesNodeByDocId(v12, v21, *(a2 + 32), *(a1 + 32), &v41);
    a3 = v22;
  }

  else
  {
    v14 = 0;
  }

  return v14 ^ ((*(a3 + 24) - 5) < 2);
}

uint64_t QueryFunctionCallbackContext_LIVE::gotten(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*a3)
  {
    v3 = a1;
    (*(a3 + 8))(a2, a3);
    a1 = v3;
    if (!*a3)
    {
      return 0;
    }
  }

  v5 = *(*a1 + 32);

  return v5();
}

uint64_t QueryFunctionCallbackContext_LIVE::gotten(uint64_t a1)
{
  result = *(a1 + 40);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL QueryFunctionCallbackContext_LIVE::matchPath(QueryFunctionCallbackContext_LIVE *this, uint64_t a2)
{
  v2 = *(this + 9);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = *(this + 6);
  if (*v3 == a2)
  {
    return 1;
  }

  v5 = 0;
  v6 = v3 + 1;
  while (v2 - 1 != v5)
  {
    v7 = v6[v5++];
    if (v7 == a2)
    {
      return v5 < v2;
    }
  }

  v5 = *(this + 9);
  return v5 < v2;
}

void QueryFunctionCallbackContext_LIVE::~QueryFunctionCallbackContext_LIVE(QueryFunctionCallbackContext_LIVE *this)
{
  *this = &unk_1F427AF00;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(*(this + 5));
    v1 = vars8;
  }

  JUMPOUT(0x1C691FEF0);
}

{
  *this = &unk_1F427AF00;
  v1 = *(this + 5);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 5));
  }
}

void SIQueryAddResults(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  bzero(v10, 0x11E0uLL);
  v10[0] = 0;
  v33 = 0;
  v40 = 0;
  v41 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v32 = 0;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v48 = 1;
  v50 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (v2)
  {
    CFRetain(v2);
  }

  v46 = v2;
  if (v4)
  {
    CFRetain(v4);
  }

  v49 = 0;
  v45 = v4;
  v47 = 0;
  v51 = MEMORY[0x1E69E9820];
  v52 = 0x40000000;
  v53 = ___ZN19PartialQueryResultsC2EPK17__MDStoreOIDArrayPK14__MDPlistBytes_block_invoke;
  v54 = &__block_descriptor_tmp_31_546;
  v55 = v10;
  v34 = md_deadline_once_create();
  v35 = dispatch_time(0, 100000000);
  v9 = _MDStoreOIDArrayGetVectorCount() < 2;
  si_querypipe_addresults(*(v6 + 24), v10, 0, v9, v8);
  PartialQueryResults::~PartialQueryResults(v10);
}

void *makeNodeForAttribute(const __CFString *cf2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (CFEqual(@"_kMDItemDisplayNameWithExtensionsSynth", cf2))
  {
    v2 = *MEMORY[0x1E69E9840];

    return db_make_query_node_with_ann("true", 0);
  }

  else
  {
    query_node_with_ann = db_make_query_node_with_ann("*=*", 0);
    free(*query_node_with_ann[2]);
    bzero(&v7, 0x410uLL);
    v5 = fastUTF8String(cf2, &v8, v9);
    v7 = v5;
    *query_node_with_ann[2] = strdup(v5);
    if (v5 != v9)
    {
      free(v5);
    }

    v6 = *MEMORY[0x1E69E9840];
    return query_node_with_ann;
  }
}

uint64_t SIUINT32SetGetTypeID()
{
  result = __kSIUINT32SetTypeID;
  if (!__kSIUINT32SetTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kSIUINT32SetTypeID = result;
  }

  return result;
}

uint64_t SIUINT32SetContainsValue(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 176))
  {
    return 0;
  }

  v2 = *(a1 + 20);
  if (v2)
  {
    if ((*(a1 + 16) ^ a2) >> (-4 * v2))
    {
      return 0;
    }
  }

  v3 = *(a1 + 8 * ((a2 >> (28 - 4 * v2)) & 0xF) + 48);
  if (v3)
  {
    v4 = v2 + 2;
    do
    {
      v3 = *((v3 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((a2 >> (32 - 4 * v4++)) & 0xF));
    }

    while ((v3 & 1) != 0);
  }

  if (!v3)
  {
    return 0;
  }

  else
  {
    return (*(*v3 + 16))();
  }
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::valueIterator(uint64_t a1, int a2, uint64_t a3)
{
  *a3 = &unk_1F427B2A8;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1 + 8;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::BitmapIterator::hasMore(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 4095)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(v2 + 8 * (v1 >> 6));
    if (v3)
    {
      break;
    }

    v1 += 64;
    *(a1 + 24) = v1;
LABEL_9:
    if (v1 >= 4096)
    {
      return 0;
    }
  }

  v4 = v1 & 0x3F;
  while (((v3 >> v4) & 1) == 0)
  {
    *(a1 + 24) = ++v1;
    if (++v4 == 64)
    {
      goto LABEL_9;
    }
  }

  return 1;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::BitmapIterator::nextKey(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  if (v2 > 4095)
  {
    return v1;
  }

  v3 = *(a1 + 16);
  while (1)
  {
    v4 = *(v3 + 8 * (v2 >> 6));
    if (v4)
    {
      break;
    }

    v2 += 64;
    *(a1 + 24) = v2;
LABEL_9:
    if (v2 >= 4096)
    {
      return v1;
    }
  }

  v5 = v2 & 0x3F;
  while (((v4 >> v5) & 1) == 0)
  {
    *(a1 + 24) = ++v2;
    if (++v5 == 64)
    {
      goto LABEL_9;
    }
  }

  v7 = *(a1 + 8);
  *(a1 + 24) = v2 + 1;
  return v7 | v2 | v1;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 0);
  v4 = *(*a2 + 16);

  return v4(a2, a1 + 8, 512);
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::IsEmpty(uint64_t a1)
{
  LOWORD(v1) = 0;
  while (1)
  {
    v2 = *(a1 + 8 + 8 * (v1 >> 6));
    if (v2)
    {
      break;
    }

LABEL_2:
    v1 = (v1 + 64);
    if (v1 >= 4096)
    {
      return 1;
    }
  }

  v3 = v1 & 0x3F;
  LOWORD(v1) = v1 & 0xFFC0;
  while (((v2 >> v3) & 1) == 0)
  {
    if (++v3 == 64)
    {
      goto LABEL_2;
    }
  }

  return 0;
}

void SIValueSet<unsigned int>::BitmapHolder::Apply(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  v12 = 0;
  v13 = 0;
  v14 = a1 + 8;
  do
  {
    while (1)
    {
      v15 = *(v14 + 8 * (v13 >> 6));
      if (v15)
      {
        break;
      }

LABEL_2:
      v13 = (v13 + 64);
      if (v13 >= 4096)
      {
        goto LABEL_23;
      }
    }

    v16 = v13 & 0x3F;
    v17 = v13 & 0xFFC0;
    while (((v15 >> v16) & 1) == 0)
    {
      ++v13;
      if (++v16 == 64)
      {
        LOWORD(v13) = v17;
        goto LABEL_2;
      }
    }

    if (v13 > 4095)
    {
      v19 = 0;
    }

    else
    {
      v18 = v13;
      while (1)
      {
        v20 = *(v14 + 8 * (v18 >> 6));
        if (v20)
        {
          break;
        }

LABEL_11:
        v18 = (v18 + 64);
        if (v18 >= 4096)
        {
          v19 = 0;
          v13 = v18;
          goto LABEL_18;
        }
      }

      v21 = v18 & 0x3F;
      v22 = v18 & 0xFFC0;
      while (1)
      {
        v13 = v18 + 1;
        if ((v20 >> v21))
        {
          break;
        }

        ++v21;
        ++v18;
        if (v21 == 64)
        {
          LOWORD(v18) = v22;
          goto LABEL_11;
        }
      }

      v19 = v18;
    }

LABEL_18:
    *&v11[4 * v12++] = v19 | a3;
    if (v12 == a2)
    {
      v23 = a4(v11, a2, a5);
      v12 = 0;
      if (v23)
      {
        break;
      }
    }
  }

  while (v13 < 4096);
LABEL_23:
  if (v12)
  {
    a4(v11, v12, a5);
  }

  v24 = *MEMORY[0x1E69E9840];
}

BOOL SIValueSet<unsigned int>::BitmapHolder::RemoveKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) >> 6));
  if ((v4 & v3) != 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 ^ v3;
  }

  return (v4 & v3) != 0;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::CloseKey(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a1 + 8;
  if ((*(a1 + 8 + 8 * ((a3 & a2) >> 6)) >> (a3 & a2)))
  {
    return a2;
  }

  LOWORD(v5) = a3 & a2;
  LODWORD(result) = a2;
  while (1)
  {
    v5 = (v5 + 1);
    if (v5 >= 64)
    {
      break;
    }

    result = (result + 1);
    if ((*(v3 + 8 * (v5 >> 6)) >> v5))
    {
      return result;
    }
  }

  v6 = (a3 & a2);
  LODWORD(result) = a2;
  while (v6 >= 1)
  {
    --v6;
    result = (result - 1);
    if ((*(v3 + 8 * (v6 >> 6)) >> v6))
    {
      return result;
    }
  }

  return 0;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::AddSortedKeysWithContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= *(a2 + 8))
  {
    return 0;
  }

  v6 = a1 + 8;
  if (a3)
  {
    do
    {
      if ((*(a2 + 20) & *v3) != *(a2 + 16))
      {
        break;
      }

      Key = SIValueSet<unsigned int>::FlatContextWithPfx::nextKey(a2);
      v8 = 1 << Key;
      v9 = *(v6 + 8 * (Key >> 6));
      if (((1 << Key) & v9) == 0)
      {
        goto LABEL_12;
      }

      SIValueSet<unsigned int>::SIValueSetInsert(*(a3 + 8), *a3 | Key);
      v3 = *a2;
    }

    while (*a2 < *(a2 + 8));
  }

  else
  {
    while ((*(a2 + 20) & *v3) == *(a2 + 16))
    {
      Key = SIValueSet<unsigned int>::FlatContextWithPfx::nextKey(a2);
      v8 = 1 << Key;
      v9 = *(v6 + 8 * (Key >> 6));
      if (((1 << Key) & v9) == 0)
      {
LABEL_12:
        *(v6 + 8 * ((Key << 16) >> 22)) = v9 | v8;
        return 1;
      }

      v3 = *a2;
      if (*a2 >= *(a2 + 8))
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t SIValueSet<unsigned int>::FlatContextWithPfx::nextKey(int **a1)
{
  v1 = *(*a1)++;
  v2 = *(a1 + 5);
  if ((v2 & v1) != *(a1 + 4))
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 172, "(key & fMask) == fPfx", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v1 & ~v2;
}

BOOL SIValueSet<unsigned int>::BitmapHolder::AddKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) >> 6));
  if ((v4 & v3) == 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 | v3;
  }

  return (v4 & v3) == 0;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::valueIterator(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_1F427B208;
  *(a3 + 8) = a1 + 10;
  *(a3 + 16) = a1 + 10 + 2 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::RLEKeyIterator::nextKey(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 26))
  {
    --*(a1 + 26);
    v2 = *(a1 + 24) + 1;
    *(a1 + 24) = v2;
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v2 = *v3;
    *(a1 + 8) = v3 + 1;
    *(a1 + 24) = v2;
    if ((v3 + 1) < v4)
    {
      v5 = v3[1];
      if (v5 < 0)
      {
        *(a1 + 8) = v3 + 2;
        *(a1 + 26) = v5 & 0x7FFF;
      }
    }
  }

  return v1 | v2;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 2);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 2 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 10, v4);
}

void SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::Apply(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 10);
  v14 = v9 + 10 + 2 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[4 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      v18 = v13[1];
      if (v18 < 0)
      {
        v16 = v18 & 0x7FFF;
      }

      else
      {
        v16 = 0;
      }

      if (v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::RemoveKey(uint64_t a1, int a2, int a3)
{
  v3 = a2 & a3 & 0x7FFF;
  v4 = a1 + 10;
  v5 = *(a1 + 8);
  v6 = a1 + 10 + 2 * v5;
  if (v5 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 10 + 2 * v5;
    v7 = (a1 + 10);
    do
    {
      v10 = (v7 + (v8 & 0xFFFFFFFFFFFFFFFELL));
      v11 = *v10;
      if (v11 < 0)
      {
        v12 = *--v10;
        LOWORD(v11) = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v3 == v11)
      {
        v7 = v10;
        if (v10 >= v6)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (v11 > v3)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 1;
    }

    while (v9 > v7 && v8 > 2);
    if (v7 >= v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = (a1 + 10);
    if (v4 >= v6)
    {
      return 0;
    }
  }

LABEL_17:
  v14 = v7 + 1;
  v15 = *v7;
  if (v3 == v15)
  {
    if (v14 >= v6)
    {
      goto LABEL_45;
    }

    goto LABEL_35;
  }

  while (1)
  {
    if ((v15 & 0x8000) == 0)
    {
      v17 = 0;
      if (v3 < v15 || v14 >= v6)
      {
        return v17;
      }

      goto LABEL_20;
    }

    v18 = *(v14 - 2);
    v19 = (v18 + (v15 & 0x7FFF));
    if (v3 > v18 && v3 <= v19)
    {
      break;
    }

    if (v14 >= v6)
    {
      return 0;
    }

LABEL_20:
    v16 = *v14++;
    v15 = v16;
    if (v3 == v16)
    {
      v7 = v14 - 1;
      if (v14 >= v6)
      {
        goto LABEL_45;
      }

LABEL_35:
      v21 = *v14;
      if ((v21 & 0x80000000) == 0)
      {
        v22 = v6 - v14;
        v23 = a1;
        v24 = v7;
LABEL_39:
        memmove(v24, v14, v22);
        --*(v23 + 8);
        return 1;
      }

      *v7 = v15 + 1;
      if ((v21 & 0x7FFF) == 1)
      {
        v25 = v7 + 2;
        v22 = v6 - v25;
        v23 = a1;
        v24 = v14;
        v14 = v25;
        goto LABEL_39;
      }

      v26 = v21 - 1;
LABEL_41:
      *v14 = v26 | 0x8000;
      return 1;
    }
  }

  v27 = v14 - 1;
  if ((v15 & 0x7FFF) != 1)
  {
    if (v3 == v19)
    {
      *v27 = (v15 - 1) | 0x8000;
      return 1;
    }

    if (v3 == v18 + 1)
    {
      *v27 = v3 + 1;
      if (v3 == v19 - 1)
      {
        return 1;
      }

      v30 = *(a1 + 8);
      if (v30 < 0x3F)
      {
        v31 = (v14 - v4) >> 1;
        if (v30 != v31)
        {
          v32 = a1;
          v33 = v14;
          memmove(v14 + 1, v14, 2 * (v30 - v31));
          v14 = v33;
          a1 = v32;
          LOWORD(v30) = *(v32 + 8);
        }

        *(a1 + 8) = v30 + 1;
        v26 = v19 + ~v3;
        goto LABEL_41;
      }
    }

    else
    {
      *(v14 - 1) = (v3 + ~v18) | 0x8000;
      v34 = *(a1 + 8);
      if (v34 < 0x3F)
      {
        v35 = (v14 - v4) >> 1;
        if (v34 != v35)
        {
          v36 = a1;
          v37 = v14;
          memmove(v14 + 1, v14, 2 * (v34 - v35));
          v14 = v37;
          a1 = v36;
          LOWORD(v34) = *(v36 + 8);
        }

        *(a1 + 8) = v34 + 1;
        *v14 = v3 + 1;
        v38 = ~v3;
        v39 = v19 + ~v3;
        if (!(v19 + v38))
        {
          return 1;
        }

        v40 = *(a1 + 8);
        if (v40 < 0x3F)
        {
          v41 = (v27 - v4 + 4) >> 1;
          if (v40 != v41)
          {
            v42 = a1;
            memmove(v27 + 3, v27 + 2, 2 * (v40 - v41));
            a1 = v42;
            LOWORD(v40) = *(v42 + 8);
          }

          *(a1 + 8) = v40 + 1;
          v27[2] = v39 | 0x8000;
          return 1;
        }
      }
    }

    v43 = __si_assert_copy_extra_332();
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 649, v45);
    free(v44);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (v14 < v6)
  {
    v28 = a1;
    memmove(v14 - 1, v14, v6 - v14);
    a1 = v28;
    LOWORD(v5) = *(v28 + 8);
  }

LABEL_45:
  *(a1 + 8) = v5 - 1;
  return 1;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::CloseKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFF;
  v5 = (a1 + 10);
  v6 = a1 + 10 + 2 * v3;
  if (v3 < 3)
  {
LABEL_16:
    if (v5 >= v6)
    {
LABEL_31:
      result = *(v6 - 2);
      if (*(v6 - 2) < 0)
      {
        return (result & 0x7FFF) + *(v6 - 4);
      }

      return result;
    }
  }

  else
  {
    v7 = a1 + 10 + 2 * v3;
    while (1)
    {
      v8 = (v5 + (v3 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
        if (v8 <= v5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = *v8;
        if (v8 <= v5)
        {
          goto LABEL_16;
        }
      }

      if (v9 == v4)
      {
        break;
      }

      if (v9 > v4)
      {
        v7 = v8;
      }

      else
      {
        v5 = v8;
      }

      v3 = (v7 - v5) >> 1;
      if (v7 <= v5 || v3 <= 2)
      {
        goto LABEL_16;
      }
    }

    v5 = v8;
    if (v8 >= v6)
    {
      goto LABEL_31;
    }
  }

  v12 = v5;
  while (1)
  {
    v18 = *v12++;
    result = v18;
    if (v4 == v18)
    {
      return a2 & a3 & 0x7FFF;
    }

    if ((result & 0x8000) != 0)
    {
      v13 = *(v5 - 1);
      v14 = v4 >= v13;
      v15 = v13 + (result & 0x7FFF);
      if (v14 && v4 <= v15)
      {
        return a2 & a3 & 0x7FFF;
      }
    }

    else if (v4 < result)
    {
      return result;
    }

    v5 = v12;
    if (v12 >= v6)
    {
      goto LABEL_31;
    }
  }
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::ContainsKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a2 & a3 & 0x7FFF;
  v4 = (a1 + 10);
  v5 = *(a1 + 8);
  v6 = a1 + 10 + 2 * v5;
  if (v5 < 3)
  {
LABEL_15:
    if (v4 >= v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = a1 + 10 + 2 * v5;
    while (1)
    {
      v8 = (v4 + (v5 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
        if (v8 <= v4)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v9 = *v8;
        if (v8 <= v4)
        {
          goto LABEL_15;
        }
      }

      if (v9 == v3)
      {
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 1;
      if (v7 <= v4 || v5 <= 2)
      {
        goto LABEL_15;
      }
    }

    v4 = v8;
    if (v8 >= v6)
    {
      return 0;
    }
  }

  v12 = *v4;
  if (v3 != v12)
  {
    v14 = (v4 + 1);
    do
    {
      if ((v12 & 0x8000) != 0)
      {
        v16 = *(v14 - 2);
        v17 = v16 + (v12 & 0x7FFF);
        if (v3 >= v16 && v3 <= v17)
        {
          return 1;
        }

        if (v14 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v3 < v12 || v14 >= v6)
        {
          return result;
        }
      }

      v15 = *v14++;
      v12 = v15;
    }

    while (v3 != v15);
  }

  return 1;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::AddSortedKeysWithContext(uint64_t a1, int **a2, uint64_t a3)
{
  if (*a2 >= a2[1] || (*(a2 + 5) & **a2) != *(a2 + 4))
  {
    return 0;
  }

  v5 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = a1;
  v8 = *(a1 + 8);
  v9 = 2 * v8 + 10;
  v10 = (a1 + 10);
  if (v8 >= 3)
  {
    v11 = (a1 + v9);
    v10 = (a1 + 10);
    do
    {
      v12 = (v10 + (v8 & 0xFFFFFFFFFFFFFFFELL));
      v13 = *v12;
      if (v13 < 0)
      {
        v14 = *--v12;
        LOWORD(v13) = v14;
      }

      if (v12 <= v10)
      {
        break;
      }

      if (v13 == v5)
      {
        v10 = v12;
        break;
      }

      if (v13 > v5)
      {
        v11 = v12;
      }

      else
      {
        v10 = v12;
      }

      v8 = v11 - v10;
    }

    while (v11 > v10 && v8 > 2);
  }

  v71 = a1 + 10;
  v72 = a1;
  v17 = 0;
  result = 0;
  v73 = a1 + 136;
  v18 = v10;
  v19 = 1;
  v20 = a3;
  while (2)
  {
    v74 = v9;
    v75 = v18;
    LOWORD(v23) = 0;
    v24 = 0;
    v21 = v7 + v9;
    v25 = v10;
    while (1)
    {
      v27 = v24;
      v28 = v23;
      if (v25 >= v21)
      {
        break;
      }

LABEL_32:
      v23 = *v25;
      if (v23 > v6)
      {
        break;
      }

      v30 = 1;
LABEL_57:
      if ((v25 + 1) >= v21)
      {
        v43 = 1;
        v24 = 1;
        if (v27)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v40 = v25[1];
        v41 = v40 & 0x7FFF;
        v42 = v40 >= 0;
        v43 = 2;
        if (v42)
        {
          v43 = 1;
          v24 = 1;
        }

        else
        {
          v24 = v41 + 1;
        }

        if (v27)
        {
LABEL_64:
          v44 = v24 + v23;
          if (v27 + v28 < v23 || v44 < v28)
          {
            goto LABEL_77;
          }

          v46 = v27 - v24 + v28;
          v47 = v46 + v23;
          v48 = v28 > v23;
          if (v28 < v23)
          {
            LOWORD(v23) = v28;
          }

          if (!v48)
          {
            v46 = v27;
            v47 = v27 + v28;
          }

          if (v44 > v47)
          {
            v24 = v46 + v44 - v47;
          }

          else
          {
            v24 = v46;
          }
        }
      }

      v25 += v43;
      if (v24 + v23 >= v6)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    while (2)
    {
      if (v27)
      {
        v29 = v27 + v28;
        v30 = 1;
        if (v29 < v6 || v6 + 1 < v28)
        {
          goto LABEL_55;
        }

        v31 = v28;
        v32 = v27 + v28 - 1;
        v33 = v28 > v6;
        if (v28 >= v6)
        {
          v28 = v6;
        }

        if (v31 > v6)
        {
          v27 = v32;
          v29 = v32 + v6;
        }

        if (v29 <= v6)
        {
          v27 = v27 + v6 + 1 - v29;
          goto LABEL_43;
        }
      }

      else
      {
        v27 = 1;
        v28 = v6;
LABEL_43:
        v33 = 1;
      }

      v34 = *a2 + 1;
      v35 = **a2;
      *a2 = v34;
      v36 = *(a2 + 5);
      if ((v36 & v35) != *(a2 + 4))
      {
        v55 = __si_assert_copy_extra_332();
        v56 = v55;
        v57 = "";
        if (v55)
        {
          v57 = v55;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 172, "(key & fMask) == fPfx", v57);
        goto LABEL_95;
      }

      if (v6 != (v35 & ~v36))
      {
        v58 = __si_assert_copy_extra_332();
        v59 = v58;
        v60 = "";
        if (v58)
        {
          v60 = v58;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v60);
        free(v59);
        if (!__valid_fs(-1))
        {
          v61 = 3072;
LABEL_103:
          *v61 = -559038737;
          abort();
        }

LABEL_100:
        v61 = 2989;
        goto LABEL_103;
      }

      if (v33)
      {
        ++result;
      }

      else if (v20)
      {
        v37 = result;
        SIValueSet<unsigned int>::SIValueSetInsert(*(v20 + 8), *v20 | v6);
        result = v37;
        v20 = a3;
        v34 = *a2;
      }

      if (v34 < a2[1])
      {
        v38 = *v34;
        v39 = *(a2 + 5);
        if ((v39 & v38) == *(a2 + 4))
        {
          v6 = v38 & ~v39;
          ++v19;
          ++v17;
          if (v25 < v21)
          {
            goto LABEL_32;
          }

          continue;
        }
      }

      break;
    }

    v30 = 0;
    ++v17;
LABEL_55:
    if (v25 < v21)
    {
      v23 = *v25;
      goto LABEL_57;
    }

LABEL_77:
    LOWORD(v23) = v28;
    v24 = v27;
LABEL_78:
    if (v24 == 1)
    {
      v49 = v75;
      if (v75 < v25)
      {
        v10 = v25;
        v7 = v72;
        v9 = v74;
LABEL_21:
        *v49 = v23;
        v18 = v49 + 1;
        goto LABEL_22;
      }

      if (v74 < 133)
      {
        v10 = (v73 - (v21 - v25));
        if (v21 != v25)
        {
          v50 = result;
          memmove((v73 - (v21 - v25)), v25, v21 - v25);
          result = v50;
          v49 = v75;
          v20 = a3;
        }

        v9 = 136;
        v7 = v72;
        goto LABEL_21;
      }

LABEL_118:
      v68 = __si_assert_copy_extra_332();
      v69 = v68;
      if (v68)
      {
        v70 = v68;
      }

      else
      {
        v70 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v70);
      free(v69);
      goto LABEL_100;
    }

    v18 = v75;
    if (v24)
    {
      if (v75 + 1 < v25)
      {
        v10 = v25;
        v7 = v72;
        v9 = v74;
        goto LABEL_91;
      }

      if (v74 >= 133)
      {
        goto LABEL_118;
      }

      v10 = (v73 - (v21 - v25));
      v51 = v21 - v25;
      if (v21 != v25)
      {
        v52 = result;
        v53 = (v73 - (v21 - v25));
        v54 = v24;
        memmove(v53, v25, v51);
        LOWORD(v24) = v54;
        result = v52;
        v18 = v75;
        v20 = a3;
      }

      v9 = 136;
      v7 = v72;
LABEL_91:
      *v18 = v23;
      v18[1] = (v24 - 1) | 0x8000;
      v18 += 2;
LABEL_22:
      v21 = v7 + v9;
      if (v18 + v7 + v9 - v10 + 4 <= v73)
      {
        v22 = v30;
      }

      else
      {
        v22 = 0;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_105;
      }

      continue;
    }

    break;
  }

  v10 = v25;
  v7 = v72;
LABEL_105:
  if (!v30)
  {
    if (v17 == v19)
    {
      goto LABEL_112;
    }

    v66 = __si_assert_copy_extra_332();
    v56 = v66;
    v67 = "";
    if (v66)
    {
      v67 = v66;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v67);
LABEL_95:
    free(v56);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v17 >= v19)
  {
    v62 = __si_assert_copy_extra_332();
    v56 = v62;
    v63 = "";
    if (v62)
    {
      v63 = v62;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v63);
    goto LABEL_95;
  }

LABEL_112:
  if (v21 > v10)
  {
    v64 = v7;
    v65 = result;
    memmove(v18, v10, v21 - v10);
    result = v65;
    v7 = v64;
    LODWORD(v18) = v18 + v21 - v10;
  }

  *(v7 + 8) = (v18 - v71) >> 1;
  return result;
}

uint64_t SIValueSet<unsigned int>::FlatContextWithPfx::peek(int **a1)
{
  v1 = **a1;
  v2 = *(a1 + 5);
  if ((v2 & v1) != *(a1 + 4))
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 164, "(key & fMask) == fPfx", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v1 & ~v2;
}

BOOL SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::AddKey(uint64_t a1, int a2, int a3)
{
  LOWORD(v3) = a3 & a2;
  v72 = a3 & a2;
  v4 = *(a1 + 8);
  v5 = 2 * v4 + 10;
  v6 = (a1 + 10);
  if (v4 >= 3)
  {
    v7 = (a1 + v5);
    v6 = (a1 + 10);
    do
    {
      v8 = (v6 + (v4 & 0xFFFFFFFFFFFFFFFELL));
      v9 = *v8;
      if (v9 < 0)
      {
        v10 = *--v8;
        LOWORD(v9) = v10;
      }

      if (v8 <= v6)
      {
        break;
      }

      if (v9 == v3)
      {
        v6 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v6 = v8;
      }

      v4 = v7 - v6;
    }

    while (v7 > v6 && v4 > 2);
  }

  v66 = a1 + 10;
  v12 = 0;
  v13 = 0;
  v14 = a1 + 136;
  v15 = &v72;
  v16 = v6;
  v17 = 1;
  v68 = a1 + 136;
  v69 = a1;
  while (2)
  {
    v20 = 0;
    v21 = 0;
    v18 = a1 + v5;
    v22 = v6;
    while (2)
    {
      if (v22 >= v18)
      {
        v35 = v15++;
        if (!v21)
        {
          goto LABEL_62;
        }

LABEL_50:
        v36 = v21 + v20;
        if (v36 < v3 || v3 + 1 < v20)
        {
          v34 = 1;
          v15 = v35;
          goto LABEL_70;
        }

        v37 = v20;
        v38 = v21 + v20 - 1;
        v39 = v38 + v3;
        if (v20 > v3)
        {
          v20 = v3;
        }

        if (v37 <= v3)
        {
          v40 = 0;
        }

        else
        {
          v21 = v38;
          v40 = 1;
        }

        if (v37 > v3)
        {
          v36 = v39;
        }

        if (v36 > v3)
        {
          v41 = v40;
        }

        else
        {
          v21 = v21 + v3 + 1 - v36;
          v41 = 1;
        }

        while (*v35 == v3)
        {
          v13 += v41;
          if (v35 >= &v72)
          {
            v34 = 0;
            v12 = (v12 + 1);
            goto LABEL_70;
          }

          v42 = *v15++;
          LOWORD(v3) = v42;
          ++v17;
          v12 = (v12 + 1);
          v35 = v15 - 1;
          if (v21)
          {
            goto LABEL_50;
          }

LABEL_62:
          v20 = v3;
          v21 = 1;
          v41 = 1;
        }

LABEL_112:
        v53 = __si_assert_copy_extra_332();
        v54 = v53;
        v55 = "";
        if (v53)
        {
          v55 = v53;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v55);
        goto LABEL_115;
      }

      v24 = *v22;
      if (v24 <= v3)
      {
        v34 = 1;
        goto LABEL_72;
      }

      v25 = v15 + 1;
      v26 = v12;
      while (1)
      {
        v12 = v26;
        v15 = v25;
        v27 = v25 - 1;
        if (!v21)
        {
          v20 = v3;
          v21 = 1;
          v33 = 1;
          goto LABEL_45;
        }

        v28 = v21 + v20;
        if (v28 < v3 || v3 + 1 < v20)
        {
          break;
        }

        v29 = v20;
        v30 = v21 + v20 - 1;
        v31 = v30 + v3;
        if (v20 > v3)
        {
          v20 = v3;
        }

        if (v29 <= v3)
        {
          v32 = 0;
        }

        else
        {
          v21 = v30;
          v32 = 1;
        }

        if (v29 > v3)
        {
          v28 = v31;
        }

        if (v28 > v3)
        {
          v33 = v32;
        }

        else
        {
          v21 = v21 + v3 + 1 - v28;
          v33 = 1;
        }

LABEL_45:
        if (*v27 != v3)
        {
          goto LABEL_112;
        }

        v13 += v33;
        if (v27 >= &v72)
        {
          v34 = 0;
          v12 = (v12 + 1);
          goto LABEL_70;
        }

        v25 = v15 + 1;
        v3 = *v15;
        ++v17;
        v26 = (v12 + 1);
        if (v24 <= *v15)
        {
          v34 = 1;
          v12 = (v12 + 1);
          goto LABEL_70;
        }
      }

      v34 = 1;
      v15 = v27;
LABEL_70:
      if (v22 >= v18)
      {
        goto LABEL_97;
      }

      v24 = *v22;
LABEL_72:
      if ((v22 + 1) >= v18)
      {
        v45 = 1;
        v46 = 1;
        if (!v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v43 = v22[1];
        v44 = v43 >= 0;
        if (v43 < 0)
        {
          v45 = 2;
        }

        else
        {
          v45 = 1;
        }

        if (v44)
        {
          v46 = 1;
        }

        else
        {
          v46 = (v22[1] & 0x7FFF) + 1;
        }

        if (!v21)
        {
          goto LABEL_24;
        }
      }

      v47 = v46 + v24;
      if (v21 + v20 < v24 || v47 < v20)
      {
LABEL_97:
        LOWORD(v24) = v20;
        v46 = v21;
        break;
      }

      v49 = v21 - v46 + v20 + v24;
      v50 = v20 > v24;
      if (v20 < v24)
      {
        LOWORD(v24) = v20;
      }

      if (v50)
      {
        v21 = v21 - v46 + v20;
        v51 = v49;
      }

      else
      {
        v51 = v21 + v20;
      }

      if (v47 > v51)
      {
        v46 = v21 + v47 - v51;
      }

      else
      {
        v46 = v21;
      }

LABEL_24:
      v22 += v45;
      if (v46 + v24 >= v3)
      {
        v23 = v34;
      }

      else
      {
        v23 = 0;
      }

      v20 = v24;
      v21 = v46;
      if (v23)
      {
        continue;
      }

      break;
    }

    if (v46 == 1)
    {
      if (v16 < v22)
      {
        v6 = v22;
      }

      else
      {
        if (v5 >= 133)
        {
LABEL_132:
          v63 = __si_assert_copy_extra_332();
          v64 = v63;
          if (v63)
          {
            v65 = v63;
          }

          else
          {
            v65 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v65);
          free(v64);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v6 = (v14 - (v18 - v22));
        if (v18 != v22)
        {
          v52 = v16;
          v70 = (v14 - (v18 - v22));
          memmove(v70, v22, v18 - v22);
          a1 = v69;
          v6 = v70;
          v14 = v68;
          v16 = v52;
        }

        v5 = 136;
      }

      *v16++ = v24;
      goto LABEL_19;
    }

    if (v46)
    {
      if (v16 + 1 < v22)
      {
        v6 = v22;
        goto LABEL_111;
      }

      if (v5 >= 133)
      {
        goto LABEL_132;
      }

      v6 = (v14 - (v18 - v22));
      if (v18 != v22)
      {
        v67 = v16;
        v71 = (v14 - (v18 - v22));
        memmove(v71, v22, v18 - v22);
        a1 = v69;
        v6 = v71;
        v16 = v67;
        v14 = v68;
      }

      v5 = 136;
LABEL_111:
      *v16 = v24;
      v16[1] = (v46 - 1) | 0x8000;
      v16 += 2;
LABEL_19:
      v18 = a1 + v5;
      if (v16 + a1 + v5 - v6 + 4 <= v14)
      {
        v19 = v34;
      }

      else
      {
        v19 = 0;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_119;
      }

      continue;
    }

    break;
  }

  v6 = v22;
LABEL_119:
  if (!v34)
  {
    if (v12 == v17)
    {
      goto LABEL_126;
    }

    v61 = __si_assert_copy_extra_332();
    v54 = v61;
    v62 = "";
    if (v61)
    {
      v62 = v61;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v62);
LABEL_115:
    free(v54);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v12 >= v17)
  {
    v56 = __si_assert_copy_extra_332();
    v54 = v56;
    v57 = "";
    if (v56)
    {
      v57 = v56;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v57);
    goto LABEL_115;
  }

LABEL_126:
  v58 = v18 - v6;
  if (v18 > v6)
  {
    v59 = v16;
    memmove(v16, v6, v18 - v6);
    a1 = v69;
    LODWORD(v16) = v59 + v58;
  }

  *(a1 + 8) = (v16 - v66) >> 1;
  return v13 != 0;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::valueIterator(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_1F427B168;
  *(a3 + 8) = a1 + 12;
  *(a3 + 16) = a1 + 12 + 4 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::RLEKeyIterator::nextKey(uint64_t a1)
{
  v2 = *(a1 + 28);
  v1 = *(a1 + 32);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(a1 + 24) + 1;
    *(a1 + 24) = v4;
    *(a1 + 28) = v3;
    return v4 | v1;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = *v6;
    *(a1 + 8) = v6 + 1;
    *(a1 + 24) = v8;
    if ((v6 + 1) < v7 && (v9 = v6[1], v9 < 0))
    {
      *(a1 + 8) = v6 + 2;
      *(a1 + 28) = v9 & 0x7FFFFFFF;
      return v8 | v1;
    }

    else
    {
      return v8 | v1;
    }
  }
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 4);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 4 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 12, v4);
}

void SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::Apply(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 12);
  v14 = v9 + 12 + 4 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[4 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFF;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::RemoveKey(uint64_t a1, int a2, int a3)
{
  v3 = a2 & a3 & 0x7FFFFFFF;
  v4 = a1 + 12;
  v5 = *(a1 + 8);
  v6 = a1 + 12 + 4 * v5;
  if (v5 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v5;
    v7 = (a1 + 12);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v3)
      {
        v7 = v10;
        if (v10 >= v6)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (v11 > v3)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 2;
    }

    while (v9 > v7 && v8 > 2);
    if (v7 >= v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = (a1 + 12);
    if (v4 >= v6)
    {
      return 0;
    }
  }

LABEL_17:
  v14 = v7 + 1;
  v15 = *v7;
  if (*v7 == v3)
  {
    if (v14 >= v6)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  while (1)
  {
    if ((v15 & 0x80000000) == 0)
    {
      v17 = 0;
      if (v15 > v3 || v14 >= v6)
      {
        return v17;
      }

      goto LABEL_20;
    }

    v18 = *(v14 - 2);
    v19 = v18 + (v15 & 0x7FFFFFFF);
    if (v3 > v18 && v3 <= v19)
    {
      break;
    }

    if (v14 >= v6)
    {
      return 0;
    }

LABEL_20:
    v16 = *v14++;
    v15 = v16;
    if (v16 == v3)
    {
      v7 = v14 - 1;
      if (v14 >= v6)
      {
        goto LABEL_43;
      }

LABEL_35:
      v21 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        v22 = v6 - v14;
        v23 = a1;
        v24 = v7;
LABEL_39:
        memmove(v24, v14, v22);
        --*(v23 + 8);
        return 1;
      }

      *v7 = v3 + 1;
      if ((v21 & 0x7FFFFFFF) == 1)
      {
        v25 = v7 + 2;
        v22 = v6 - v25;
        v23 = a1;
        v24 = v14;
        v14 = v25;
        goto LABEL_39;
      }

      v29 = (v21 - 1) | 0x80000000;
LABEL_47:
      *v14 = v29;
      return 1;
    }
  }

  v26 = v14 - 1;
  if ((v15 & 0x7FFFFFFF) != 1)
  {
    if (v3 == v19)
    {
      *v26 = (v15 - 1) | 0x80000000;
      return 1;
    }

    if (v3 == v18 + 1)
    {
      *v26 = v3 + 1;
      v30 = v19 + ~v3;
      if (!v30)
      {
        return 1;
      }

      v31 = *(a1 + 8);
      if (v31 < 0x3F)
      {
        v32 = (v14 - v4) >> 2;
        if (v31 != v32)
        {
          v33 = a1;
          v34 = v14;
          memmove(v14 + 1, v14, 4 * (v31 - v32));
          v14 = v34;
          a1 = v33;
          LODWORD(v31) = *(v33 + 8);
        }

        *(a1 + 8) = v31 + 1;
        v29 = v30 | 0x80000000;
        goto LABEL_47;
      }
    }

    else
    {
      *(v14 - 1) = (v3 + ~v18) | 0x80000000;
      v35 = *(a1 + 8);
      if (v35 < 0x3F)
      {
        v36 = (v14 - v4) >> 2;
        if (v35 != v36)
        {
          v37 = a1;
          v38 = v14;
          memmove(v14 + 1, v14, 4 * (v35 - v36));
          v14 = v38;
          a1 = v37;
          LODWORD(v35) = *(v37 + 8);
        }

        *(a1 + 8) = v35 + 1;
        *v14 = v3 + 1;
        v39 = v19 + ~v3;
        if (!v39)
        {
          return 1;
        }

        v40 = *(a1 + 8);
        if (v40 < 0x3F)
        {
          v41 = (v26 - v4 + 8) >> 2;
          if (v40 != v41)
          {
            v42 = a1;
            memmove(v26 + 3, v26 + 2, 4 * (v40 - v41));
            a1 = v42;
            LODWORD(v40) = *(v42 + 8);
          }

          *(a1 + 8) = v40 + 1;
          v26[2] = v39 | 0x80000000;
          return 1;
        }
      }
    }

    v43 = __si_assert_copy_extra_332();
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 649, v45);
    free(v44);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (v14 < v6)
  {
    v27 = a1;
    memmove(v14 - 1, v14, v6 - v14);
    a1 = v27;
    v5 = *(v27 + 8);
  }

LABEL_43:
  *(a1 + 8) = v5 - 1;
  return 1;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::CloseKey(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFFFFFF;
  v5 = a1 + 12;
  v6 = a1 + 12 + 4 * v3;
  v7 = (a1 + 12);
  if (v3 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v3;
    v7 = (a1 + 12);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v4)
      {
        v7 = v10;
        if (v10 < v6)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 2;
    }

    while (v9 > v7 && v8 > 2);
  }

  if (v7 >= v6)
  {
LABEL_30:
    result = *(v5 + 4 * (v3 - 1));
    if ((result & 0x80000000) != 0)
    {
      return *(v5 + 4 * (v3 - 2)) + (result & 0x7FFFFFFF);
    }
  }

  else
  {
LABEL_16:
    v14 = v7;
    while (1)
    {
      v18 = *v14++;
      result = v18;
      if (v18 == v4)
      {
        return a2 & a3 & 0x7FFFFFFF;
      }

      if ((result & 0x80000000) != 0)
      {
        v15 = *(v7 - 1);
        if (v4 >= v15 && v4 <= (v15 + (result & 0x7FFFFFFF)))
        {
          return a2 & a3 & 0x7FFFFFFF;
        }
      }

      else if (result > v4)
      {
        return result;
      }

      v7 = v14;
      if (v14 >= v6)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::ContainsKey(uint64_t a1, int a2, int a3)
{
  v3 = a2 & a3 & 0x7FFFFFFF;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = a1 + 12 + 4 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 12 + 4 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        if (v8 < v6)
        {
          goto LABEL_15;
        }

        return 0;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 2;
    }

    while (v7 > v4 && v5 > 2);
  }

  if (v4 >= v6)
  {
    return 0;
  }

LABEL_15:
  v12 = *v4;
  if (*v4 != v3)
  {
    v14 = v4 + 1;
    do
    {
      if ((v12 & 0x80000000) != 0)
      {
        v16 = *(v14 - 2);
        v17 = v16 + (v12 & 0x7FFFFFFF);
        if (v3 >= v16 && v3 <= v17)
        {
          return 1;
        }

        if (v14 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v12 > v3 || v14 >= v6)
        {
          return result;
        }
      }

      v15 = *v14++;
      v12 = v15;
    }

    while (v15 != v3);
  }

  return 1;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::AddSortedKeysWithContext(uint64_t a1, int **a2, uint64_t a3)
{
  if (*a2 >= a2[1] || (*(a2 + 5) & **a2) != *(a2 + 4))
  {
    return 0;
  }

  v6 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
  v7 = v6;
  v8 = a1;
  v9 = *(a1 + 8);
  v10 = 4 * v9 + 12;
  if (v9 >= 3)
  {
    v13 = (a1 + v10);
    v11 = (a1 + 12);
    do
    {
      v14 = &v11[4 * (v9 >> 1)];
      v15 = *v14;
      if ((*v14 & 0x80000000) != 0)
      {
        v16 = *(v14 - 1);
        v14 -= 4;
        v15 = v16;
      }

      if (v14 <= v11)
      {
        break;
      }

      if (v15 == v6)
      {
        v11 = v14;
        break;
      }

      if (v15 > v6)
      {
        v13 = v14;
      }

      else
      {
        v11 = v14;
      }

      v9 = (v13 - v11) >> 2;
    }

    while (v13 > v11 && v9 > 2);
  }

  else
  {
    v11 = (a1 + 12);
  }

  v70 = a1 + 12;
  v71 = a1;
  v18 = 0;
  result = 0;
  v72 = a1 + 264;
  v19 = v11;
  v20 = 1;
  v77 = a3;
  while (2)
  {
    v73 = v10;
    v76 = v19;
    v23 = 0;
    v24 = 0;
    v21 = v8 + v10;
    v25 = v11;
    while (1)
    {
      v27 = v24;
      v28 = v23;
      if (v25 >= v21)
      {
        break;
      }

LABEL_33:
      v23 = *v25;
      if (v7 < *v25)
      {
        break;
      }

      v30 = 1;
LABEL_62:
      if ((v25 + 1) >= v21)
      {
        v45 = 1;
        v24 = 1;
        if (v27)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v42 = v25[1];
        v43 = v42 & 0x7FFFFFFF;
        v44 = v42 >= 0;
        v45 = 2;
        if (v44)
        {
          v45 = 1;
          v24 = 1;
        }

        else
        {
          v24 = v43 + 1;
        }

        if (v27)
        {
LABEL_69:
          v46 = v24 + v23;
          if (v27 + v28 < v23 || v46 < v28)
          {
            goto LABEL_82;
          }

          v48 = v27 - v24 + v28;
          v49 = v48 + v23;
          v50 = v28 > v23;
          if (v28 < v23)
          {
            v23 = v28;
          }

          if (!v50)
          {
            v48 = v27;
            v49 = v27 + v28;
          }

          if (v46 > v49)
          {
            v24 = v48 + v46 - v49;
          }

          else
          {
            v24 = v48;
          }
        }
      }

      v25 += v45;
      if (v24 + v23 >= v7)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    while (2)
    {
      if (v27)
      {
        v29 = v27 + v28;
        v30 = 1;
        if (v29 < v7 || v7 + 1 < v28)
        {
          goto LABEL_60;
        }

        v31 = v27 + v28 - 1;
        v32 = v28 > v7;
        v33 = v28 > v7;
        if (v28 >= v7)
        {
          v28 = v7;
        }

        if (v32)
        {
          v29 = v31 + v7;
        }

        else
        {
          v31 = v27;
        }

        if (v29 <= v7)
        {
          v27 = v31 + v7 + 1 - v29;
        }

        else
        {
          v27 = v31;
        }

        v34 = v29 <= v7 || v33;
      }

      else
      {
        v27 = 1;
        v28 = v7;
        v34 = 1;
      }

      v35 = *a2 + 1;
      v36 = **a2;
      *a2 = v35;
      v37 = *(a2 + 5);
      if ((v37 & v36) != *(a2 + 4))
      {
        v53 = __si_assert_copy_extra_332();
        v54 = v53;
        v55 = "";
        if (v53)
        {
          v55 = v53;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 172, "(key & fMask) == fPfx", v55);
        goto LABEL_100;
      }

      if ((v36 & ~v37) != v7)
      {
        v56 = __si_assert_copy_extra_332();
        v57 = v56;
        v58 = "";
        if (v56)
        {
          v58 = v56;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v58);
        free(v57);
        if (!__valid_fs(-1))
        {
          v59 = 3072;
LABEL_108:
          *v59 = -559038737;
          abort();
        }

LABEL_105:
        v59 = 2989;
        goto LABEL_108;
      }

      if (v34)
      {
        ++result;
      }

      else if (v77)
      {
        v38 = result;
        v39 = v21;
        SIValueSet<unsigned int>::SIValueSetInsert(*(v77 + 8), *v77 | v7);
        v21 = v39;
        result = v38;
        v35 = *a2;
      }

      if (v35 < a2[1])
      {
        v40 = *v35;
        v41 = *(a2 + 5);
        if ((v41 & v40) == *(a2 + 4))
        {
          v7 = v40 & ~v41;
          ++v20;
          ++v18;
          if (v25 < v21)
          {
            goto LABEL_33;
          }

          continue;
        }
      }

      break;
    }

    v30 = 0;
    ++v18;
LABEL_60:
    if (v25 < v21)
    {
      v23 = *v25;
      goto LABEL_62;
    }

LABEL_82:
    v23 = v28;
    v24 = v27;
LABEL_83:
    if (v24 == 1)
    {
      if (v76 < v25)
      {
        v11 = v25;
        v8 = v71;
        v10 = v73;
LABEL_22:
        *v76 = v23;
        v19 = v76 + 1;
        goto LABEL_23;
      }

      if (v73 < 257)
      {
        v11 = (v72 - (v21 - v25));
        if (v21 != v25)
        {
          v74 = result;
          v51 = (v72 - (v21 - v25));
          memmove(v51, v25, v21 - v25);
          v11 = v51;
          result = v74;
        }

        v10 = 264;
        v8 = v71;
        goto LABEL_22;
      }

LABEL_123:
      v67 = __si_assert_copy_extra_332();
      v68 = v67;
      if (v67)
      {
        v69 = v67;
      }

      else
      {
        v69 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v69);
      free(v68);
      goto LABEL_105;
    }

    v19 = v76;
    if (v24)
    {
      if (v76 + 1 < v25)
      {
        v11 = v25;
        v8 = v71;
        v10 = v73;
        goto LABEL_96;
      }

      if (v73 >= 257)
      {
        goto LABEL_123;
      }

      v11 = (v72 - (v21 - v25));
      if (v21 != v25)
      {
        v75 = result;
        v52 = (v72 - (v21 - v25));
        memmove(v52, v25, v21 - v25);
        v11 = v52;
        result = v75;
      }

      v10 = 264;
      v8 = v71;
LABEL_96:
      *v76 = v23;
      v76[1] = (v24 - 1) | 0x80000000;
      v19 = v76 + 2;
LABEL_23:
      v21 = v8 + v10;
      if (v19 + v8 + v10 - v11 + 8 <= v72)
      {
        v22 = v30;
      }

      else
      {
        v22 = 0;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  v11 = v25;
  v8 = v71;
LABEL_110:
  if (!v30)
  {
    if (v18 == v20)
    {
      goto LABEL_117;
    }

    v65 = __si_assert_copy_extra_332();
    v54 = v65;
    v66 = "";
    if (v65)
    {
      v66 = v65;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v66);
LABEL_100:
    free(v54);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v18 >= v20)
  {
    v60 = __si_assert_copy_extra_332();
    v54 = v60;
    v61 = "";
    if (v60)
    {
      v61 = v60;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v61);
    goto LABEL_100;
  }

LABEL_117:
  v62 = v21 - v11;
  if (v21 > v11)
  {
    v63 = v8;
    v64 = result;
    memmove(v19, v11, v21 - v11);
    result = v64;
    v8 = v63;
    v19 = (v19 + v62);
  }

  *(v8 + 8) = (v19 - v70) >> 2;
  return result;
}

BOOL SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::AddKey(uint64_t a1, int a2, int a3)
{
  v3 = a3 & a2;
  v77 = a3 & a2;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = 4 * v5 + 12;
  v71 = a1 + 12;
  if (v5 >= 3)
  {
    v7 = (a1 + v6);
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = v7 - v4;
    }

    while (v7 > v4 && v5 > 2);
  }

  v12 = 0;
  v13 = 0;
  v14 = a1 + 264;
  v15 = &v77;
  v16 = v4;
  v17 = 1;
  v73 = a1 + 264;
  v74 = a1;
  while (2)
  {
    v20 = 0;
    v21 = 0;
    v18 = a1 + v6;
    v22 = v4;
    while (1)
    {
      if (v22 >= v18)
      {
        v36 = v15++;
        if (!v21)
        {
          while (1)
          {
            v20 = v3;
            v21 = 1;
            v43 = 1;
LABEL_67:
            if (*v36 != v3)
            {
              break;
            }

            v13 += v43;
            if (v36 >= &v77)
            {
              v35 = 0;
              v26 = (v12 + 1);
              if (v22 >= v18)
              {
                goto LABEL_107;
              }

              goto LABEL_80;
            }

            v44 = *v15++;
            v3 = v44;
            ++v17;
            v12 = (v12 + 1);
            v36 = v15 - 1;
            if (v21)
            {
              goto LABEL_52;
            }
          }

LABEL_123:
          v58 = __si_assert_copy_extra_332();
          v59 = v58;
          v60 = "";
          if (v58)
          {
            v60 = v58;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v60);
          goto LABEL_126;
        }

LABEL_52:
        v37 = v3 + 1;
        v38 = v21 + v20;
        if (v38 >= v3 && v37 >= v20)
        {
          v40 = v20 > v3;
          if (v20 <= v3)
          {
            v41 = 0;
          }

          else
          {
            v20 = v3;
            v21 = v38 - 1;
            v41 = 1;
          }

          if (v40)
          {
            v38 = v38 - 1 + v3;
          }

          v42 = v21 + v37 - v38;
          if (v38 > v3)
          {
            v43 = v41;
          }

          else
          {
            v21 = v42;
            v43 = 1;
          }

          goto LABEL_67;
        }

        v35 = 1;
        v15 = v36;
        v26 = v12;
        if (v22 >= v18)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v24 = *v22;
        if (v3 >= *v22)
        {
          v35 = 1;
          goto LABEL_81;
        }

        v25 = v15 + 1;
        while (1)
        {
          v26 = v12;
          v15 = v25;
          v27 = v25 - 1;
          if (v21)
          {
            v28 = v3 + 1;
            v29 = v21 + v20;
            if (v29 < v3 || v28 < v20)
            {
              v35 = 1;
              v15 = v27;
              if (v22 >= v18)
              {
                goto LABEL_107;
              }

              goto LABEL_80;
            }

            v31 = v20 > v3;
            if (v20 <= v3)
            {
              v32 = 0;
            }

            else
            {
              v20 = v3;
              v21 = v29 - 1;
              v32 = 1;
            }

            if (v31)
            {
              v29 = v29 - 1 + v3;
            }

            v33 = v21 + v28 - v29;
            if (v29 > v3)
            {
              v34 = v32;
            }

            else
            {
              v21 = v33;
              v34 = 1;
            }
          }

          else
          {
            v20 = v3;
            v21 = 1;
            v34 = 1;
          }

          if (*v27 != v3)
          {
            goto LABEL_123;
          }

          v13 += v34;
          if (v27 >= &v77)
          {
            break;
          }

          v25 = v15 + 1;
          v3 = *v15;
          ++v17;
          v12 = (v12 + 1);
          if (*v15 >= v24)
          {
            v35 = 1;
            goto LABEL_77;
          }
        }

        v35 = 0;
LABEL_77:
        v26 = (v26 + 1);
        if (v22 >= v18)
        {
LABEL_107:
          v12 = v26;
          goto LABEL_108;
        }
      }

LABEL_80:
      v24 = *v22;
      v12 = v26;
LABEL_81:
      if ((v22 + 1) < v18)
      {
        break;
      }

      v48 = 1;
      v49 = 1;
      if (v21)
      {
        goto LABEL_91;
      }

LABEL_24:
      v22 += v48;
      if (v49 + v24 >= v3)
      {
        v23 = v35;
      }

      else
      {
        v23 = 0;
      }

      v20 = v24;
      v21 = v49;
      if ((v23 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    v45 = v22[1];
    v46 = v45 & 0x7FFFFFFF;
    v47 = v45 >= 0;
    if (v45 < 0)
    {
      v48 = 2;
    }

    else
    {
      v48 = 1;
    }

    if (v47)
    {
      v49 = 1;
    }

    else
    {
      v49 = v46 + 1;
    }

    if (!v21)
    {
      goto LABEL_24;
    }

LABEL_91:
    v50 = v49 + v24;
    v51 = v21 + v20;
    if (v51 >= v24 && v50 >= v20)
    {
      v53 = v21 - v49 + v20 + v24;
      v54 = v20 > v24;
      if (v20 < v24)
      {
        v24 = v20;
      }

      if (v54)
      {
        v55 = v21 - v49 + v20;
      }

      else
      {
        v55 = v21;
      }

      if (v54)
      {
        v56 = v53;
      }

      else
      {
        v56 = v51;
      }

      if (v50 > v56)
      {
        v49 = v55 + v50 - v56;
      }

      else
      {
        v49 = v55;
      }

      goto LABEL_24;
    }

LABEL_108:
    v24 = v20;
    v49 = v21;
LABEL_109:
    if (v49 == 1)
    {
      if (v16 < v22)
      {
        v4 = v22;
      }

      else
      {
        if (v6 >= 257)
        {
LABEL_143:
          v68 = __si_assert_copy_extra_332();
          v69 = v68;
          if (v68)
          {
            v70 = v68;
          }

          else
          {
            v70 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v70);
          free(v69);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v4 = (v14 - (v18 - v22));
        if (v18 != v22)
        {
          v57 = v16;
          v75 = (v14 - (v18 - v22));
          memmove(v75, v22, v18 - v22);
          a1 = v74;
          v4 = v75;
          v14 = v73;
          v16 = v57;
        }

        v6 = 264;
      }

      *v16++ = v24;
      goto LABEL_19;
    }

    if (v49)
    {
      if (v16 + 1 < v22)
      {
        v4 = v22;
        goto LABEL_122;
      }

      if (v6 >= 257)
      {
        goto LABEL_143;
      }

      v4 = (v14 - (v18 - v22));
      if (v18 != v22)
      {
        v72 = v16;
        v76 = (v14 - (v18 - v22));
        memmove(v76, v22, v18 - v22);
        a1 = v74;
        v4 = v76;
        v16 = v72;
        v14 = v73;
      }

      v6 = 264;
LABEL_122:
      *v16 = v24;
      v16[1] = (v49 - 1) | 0x80000000;
      v16 += 2;
LABEL_19:
      v18 = a1 + v6;
      if (v16 + a1 + v6 - v4 + 8 <= v14)
      {
        v19 = v35;
      }

      else
      {
        v19 = 0;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_130;
      }

      continue;
    }

    break;
  }

  v4 = v22;
LABEL_130:
  if (!v35)
  {
    if (v12 == v17)
    {
      goto LABEL_137;
    }

    v66 = __si_assert_copy_extra_332();
    v59 = v66;
    v67 = "";
    if (v66)
    {
      v67 = v66;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v67);
LABEL_126:
    free(v59);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v12 >= v17)
  {
    v61 = __si_assert_copy_extra_332();
    v59 = v61;
    v62 = "";
    if (v61)
    {
      v62 = v61;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v62);
    goto LABEL_126;
  }

LABEL_137:
  v63 = v18 - v4;
  if (v18 > v4)
  {
    v64 = v16;
    memmove(v16, v4, v18 - v4);
    a1 = v74;
    v16 = (v64 + v63);
  }

  *(a1 + 8) = (v16 - v71) >> 2;
  return v13 != 0;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::valueIterator(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_1F427B0C8;
  *(a3 + 8) = a1 + 16;
  *(a3 + 16) = a1 + 16 + 8 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RLEKeyIterator::nextKey(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(a1 + 24) + 1;
    *(a1 + 24) = v4;
    *(a1 + 32) = v3;
    return v1 | v4;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = *v6;
    v8 = *v6;
    *(a1 + 8) = v6 + 1;
    *(a1 + 24) = v9;
    if ((v6 + 1) < v7 && (v10 = v6[1], v10 < 0))
    {
      *(a1 + 8) = v6 + 2;
      *(a1 + 32) = v10 & 0x7FFFFFFFFFFFFFFFLL;
      return v1 | v8;
    }

    else
    {
      return v1 | v8;
    }
  }
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 8);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 8 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 16, v4);
}

void SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::Apply(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 16);
  v14 = v9 + 16 + 8 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  LODWORD(v15) = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    LODWORD(v15) = v15 + 1;
LABEL_15:
    *&v11[4 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3 & a2;
  v4 = a1 + 16;
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  if (v5 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 16 + 8 * v5;
    v7 = (a1 + 16);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x8000000000000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v3)
      {
        v7 = v10;
        if (v10 >= v6)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (v11 > v3)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 3;
    }

    while (v9 > v7 && v8 > 2);
    if (v7 >= v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = (a1 + 16);
    if (v4 >= v6)
    {
      return 0;
    }
  }

LABEL_17:
  v14 = v7 + 1;
  v15 = *v7;
  if (*v7 == v3)
  {
    if (v14 >= v6)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  while (1)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      if (v15 > v3 || v14 >= v6)
      {
        return v17;
      }

      goto LABEL_20;
    }

    v18 = *(v14 - 2);
    v19 = v18 + (v15 & 0x7FFFFFFFFFFFFFFFLL);
    if (v18 < v3 && v19 >= v3)
    {
      break;
    }

    if (v14 >= v6)
    {
      return 0;
    }

LABEL_20:
    v16 = *v14++;
    v15 = v16;
    if (v16 == v3)
    {
      v7 = v14 - 1;
      if (v14 >= v6)
      {
        goto LABEL_42;
      }

LABEL_34:
      v21 = *v14;
      if ((*v14 & 0x8000000000000000) == 0)
      {
        v22 = v6 - v14;
        v23 = a1;
        v24 = v7;
LABEL_38:
        memmove(v24, v14, v22);
        --*(v23 + 8);
        return 1;
      }

      *v7 = v3 + 1;
      if ((v21 & 0x7FFFFFFFFFFFFFFFLL) == 1)
      {
        v25 = v7 + 2;
        v22 = v6 - v25;
        v23 = a1;
        v24 = v14;
        v14 = v25;
        goto LABEL_38;
      }

      v29 = (v21 - 1) | 0x8000000000000000;
LABEL_46:
      *v14 = v29;
      return 1;
    }
  }

  v26 = v14 - 1;
  if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 1)
  {
    if (v19 == v3)
    {
      *v26 = (v15 - 1) | 0x8000000000000000;
      return 1;
    }

    if (v18 + 1 == v3)
    {
      *v26 = v3 + 1;
      v30 = v19 + ~v3;
      if (!v30)
      {
        return 1;
      }

      v31 = *(a1 + 8);
      if (v31 < 0x3F)
      {
        v32 = (v14 - v4) >> 3;
        if (v31 != v32)
        {
          v33 = a1;
          v34 = v14;
          memmove(v14 + 1, v14, 8 * (v31 - v32));
          v14 = v34;
          a1 = v33;
          v32 = *(v33 + 8);
        }

        *(a1 + 8) = v32 + 1;
        v29 = v30 | 0x8000000000000000;
        goto LABEL_46;
      }
    }

    else
    {
      *(v14 - 1) = ((v3 - 1) - v18) | 0x8000000000000000;
      v35 = *(a1 + 8);
      if (v35 < 0x3F)
      {
        v36 = (v14 - v4) >> 3;
        if (v35 != v36)
        {
          v37 = a1;
          v38 = v14;
          memmove(v14 + 1, v14, 8 * (v35 - v36));
          v14 = v38;
          a1 = v37;
          v36 = *(v37 + 8);
        }

        *(a1 + 8) = v36 + 1;
        *v14 = (v3 + 1);
        v39 = v19 + ~v3;
        if (!v39)
        {
          return 1;
        }

        v40 = *(a1 + 8);
        if (v40 < 0x3F)
        {
          v41 = (v26 - v4 + 16) >> 3;
          if (v40 != v41)
          {
            v42 = a1;
            memmove(v26 + 3, v26 + 2, 8 * (v40 - v41));
            a1 = v42;
            v41 = *(v42 + 8);
          }

          *(a1 + 8) = v41 + 1;
          v26[2] = v39 | 0x8000000000000000;
          return 1;
        }
      }
    }

    v43 = __si_assert_copy_extra_332();
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 649, v45);
    free(v44);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (v14 < v6)
  {
    v27 = a1;
    memmove(v14 - 1, v14, v6 - v14);
    a1 = v27;
    v5 = *(v27 + 8);
  }

LABEL_42:
  *(a1 + 8) = v5 - 1;
  return 1;
}

unint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::CloseKey(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  result = a3 & a2;
  v6 = (a1 + 16);
  v7 = a1 + 16 + 8 * v3;
  if (v3 < 3)
  {
    goto LABEL_19;
  }

  v8 = v7;
  do
  {
    v9 = &v6[2 * (v3 >> 1)];
    v10 = *v9;
    if ((*v9 & 0x8000000000000000) != 0)
    {
      v11 = *(v9 - 1);
      v9 -= 2;
      v10 = v11;
    }

    if (v9 <= v6)
    {
      break;
    }

    if (v10 == result)
    {
      v6 = v9;
      break;
    }

    if (v10 > result)
    {
      v8 = v9;
    }

    else
    {
      v6 = v9;
    }

    v3 = (v8 - v6) >> 3;
  }

  while (v8 > v6 && v3 > 2);
LABEL_19:
  while (v6 < v7)
  {
    v13 = *v6;
    if (result == v13)
    {
      return result;
    }

    v6 += 2;
    if (result < v13)
    {
      return v13;
    }
  }

  result = *(v7 - 8);
  if ((result & 0x8000000000000000) != 0)
  {
    return (*(v7 - 16) + result);
  }

  return result;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::ContainsKey(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3 & a2;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[2 * (v5 >> 1)];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *(v8 - 1);
        v8 -= 2;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        goto LABEL_16;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
    }

    while (v7 > v4 && v5 > 2);
  }

  while (1)
  {
LABEL_16:
    if (v4 >= v6)
    {
      return 0;
    }

    v12 = *v4;
    if (v3 == *v4)
    {
      break;
    }

    v4 += 2;
    if (v3 < v12)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedKeysWithContext(uint64_t a1, int **a2, uint64_t a3)
{
  if (*a2 >= a2[1] || (*(a2 + 5) & **a2) != *(a2 + 4))
  {
    return 0;
  }

  v5 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = a1;
  v8 = (a1 + 16);
  v9 = *(a1 + 8);
  v10 = a1 + 16 + 8 * v9;
  v68 = a1 + 16;
  if (v9 >= 3)
  {
    v13 = a1 + 16 + 8 * v9;
    v11 = a3;
    do
    {
      v14 = &v8[v9 >> 1];
      v15 = *v14;
      if ((*v14 & 0x8000000000000000) != 0)
      {
        v16 = *--v14;
        v15 = v16;
      }

      if (v14 <= v8)
      {
        break;
      }

      if (v15 == v5)
      {
        v8 = v14;
        break;
      }

      if (v15 > v5)
      {
        v13 = v14;
      }

      else
      {
        v8 = v14;
      }

      v9 = (v13 - v8) >> 3;
    }

    while (v13 > v8 && v9 > 2);
  }

  else
  {
    v11 = a3;
  }

  v18 = 0;
  result = 0;
  v19 = v8;
  v20 = 1;
  v69 = v7;
  v70 = v7 + 520;
  while (2)
  {
    v71 = v19;
    v23 = 0;
    v24 = 0;
    v25 = v8;
    while (1)
    {
      v27 = v24;
      v28 = v23;
      if (v25 >= v10)
      {
        break;
      }

LABEL_33:
      v23 = *v25;
      if (v6 < *v25)
      {
        break;
      }

      v29 = 1;
LABEL_58:
      if ((v25 + 1) >= v10)
      {
        v42 = 1;
        v24 = 1;
        if (v27)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v39 = v25[1];
        v40 = v39 & 0x7FFFFFFFFFFFFFFFLL;
        v41 = v39 >= 0;
        v24 = 1;
        v42 = 2;
        if (v41)
        {
          v42 = 1;
        }

        else
        {
          v24 = v40 + 1;
        }

        if (v27)
        {
LABEL_65:
          if (v27 + v28 < v23)
          {
            goto LABEL_75;
          }

          v43 = v24 + v23;
          if (v24 + v23 < v28)
          {
            goto LABEL_75;
          }

          v24 = v27 + v28 - v24;
          v44 = v28 > v23;
          if (v28 < v23)
          {
            v23 = v28;
          }

          if (!v44)
          {
            v24 = v27;
          }

          if (v43 > v24 + v23)
          {
            v24 = v43 - v23;
          }
        }
      }

      v25 += v42;
      if (v6 <= v24 + v23)
      {
        v26 = v29;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    while (2)
    {
      if (v27)
      {
        v29 = 1;
        if (v27 + v28 < v6 || v6 + 1 < v28)
        {
          goto LABEL_56;
        }

        v30 = v27 + v28 - 1;
        v31 = v28 > v6;
        v32 = v28 > v6;
        if (v28 >= v6)
        {
          v28 = v6;
        }

        if (v31)
        {
          v27 = v30;
        }

        if (v6 >= v27 + v28)
        {
          v27 = v6 + 1 - v28;
          goto LABEL_44;
        }
      }

      else
      {
        v27 = 1;
        v28 = v6;
LABEL_44:
        v32 = 1;
      }

      v33 = *a2 + 1;
      v34 = **a2;
      *a2 = v33;
      v35 = *(a2 + 5);
      if ((v35 & v34) != *(a2 + 4))
      {
        v52 = __si_assert_copy_extra_332();
        v53 = v52;
        v54 = "";
        if (v52)
        {
          v54 = v52;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 172, "(key & fMask) == fPfx", v54);
        free(v53);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (v6 != (v34 & ~v35))
      {
        v55 = __si_assert_copy_extra_332();
        v56 = v55;
        v57 = "";
        if (v55)
        {
          v57 = v55;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v57);
LABEL_97:
        free(v56);
        if (__valid_fs(-1))
        {
LABEL_98:
          v58 = 2989;
        }

        else
        {
          v58 = 3072;
        }

        *v58 = -559038737;
        abort();
      }

      if (v32)
      {
        ++result;
      }

      else if (v11)
      {
        v36 = result;
        SIValueSet<unsigned int>::SIValueSetInsert(*(v11 + 8), *v11 | v6);
        result = v36;
        v11 = a3;
        v33 = *a2;
      }

      if (v33 < a2[1])
      {
        v37 = *v33;
        v38 = *(a2 + 5);
        if ((v38 & v37) == *(a2 + 4))
        {
          v6 = v37 & ~v38;
          ++v20;
          ++v18;
          if (v25 < v10)
          {
            goto LABEL_33;
          }

          continue;
        }
      }

      break;
    }

    v29 = 0;
    ++v18;
LABEL_56:
    if (v25 < v10)
    {
      v23 = *v25;
      goto LABEL_58;
    }

LABEL_75:
    v23 = v28;
    v24 = v27;
LABEL_76:
    v45 = v24 - 1;
    if (v24 == 1)
    {
      v46 = v71;
      if (v71 < v25)
      {
        v8 = v25;
        v21 = v70;
      }

      else
      {
        v21 = v70;
        if (v10 + 16 > v70)
        {
LABEL_116:
          v65 = __si_assert_copy_extra_332();
          v66 = v65;
          if (v65)
          {
            v67 = v65;
          }

          else
          {
            v67 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v67);
          free(v66);
          goto LABEL_98;
        }

        v8 = (v70 - (v10 - v25));
        if (v10 != v25)
        {
          v47 = result;
          memmove((v70 - (v10 - v25)), v25, v10 - v25);
          v21 = v70;
          v46 = v71;
          result = v47;
          v11 = a3;
        }

        v10 = v21;
      }

      *v46 = v23;
      v19 = v46 + 1;
      goto LABEL_23;
    }

    v19 = v71;
    if (v24)
    {
      if (v71 + 1 < v25)
      {
        v8 = v25;
        goto LABEL_89;
      }

      if (v10 + 16 > v70)
      {
        goto LABEL_116;
      }

      v8 = (v70 - (v10 - v25));
      v48 = v10 - v25;
      if (v10 != v25)
      {
        v49 = result;
        v50 = v25;
        v51 = v24 - 1;
        memmove(v8, v50, v48);
        v45 = v51;
        v19 = v71;
        v11 = a3;
        result = v49;
      }

      v10 = v70;
LABEL_89:
      *v19 = v23;
      v19[1] = v45 | 0x8000000000000000;
      v19 += 2;
      v21 = v70;
LABEL_23:
      if (v19 + v10 - v8 + 16 <= v21)
      {
        v22 = v29;
      }

      else
      {
        v22 = 0;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_103;
      }

      continue;
    }

    break;
  }

  v8 = v25;
LABEL_103:
  if (v29)
  {
    if (v18 >= v20)
    {
      v59 = __si_assert_copy_extra_332();
      v56 = v59;
      v60 = "";
      if (v59)
      {
        v60 = v59;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v60);
      goto LABEL_97;
    }
  }

  else if (v18 != v20)
  {
    v63 = __si_assert_copy_extra_332();
    v56 = v63;
    v64 = "";
    if (v63)
    {
      v64 = v63;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v64);
    goto LABEL_97;
  }

  if (v10 > v8)
  {
    v61 = result;
    v62 = v19;
    memmove(v19, v8, v10 - v8);
    result = v61;
    v19 = (v62 + v10 - v8);
  }

  *(v69 + 8) = (v19 - v68) >> 3;
  return result;
}

BOOL SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddKey(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3 & a2;
  v64 = a3 & a2;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  v58 = a1 + 16;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
    }

    while (v7 > v4 && v5 > 2);
  }

  v12 = 0;
  v13 = 0;
  v14 = a1 + 520;
  v15 = &v64;
  v16 = v4;
  v17 = 1;
  v61 = a1 + 520;
  while (2)
  {
    v19 = 0;
    v20 = 0;
    v21 = v4;
    while (1)
    {
      if (v21 >= v6)
      {
        v30 = v15++;
        if (!v20)
        {
          while (1)
          {
            v20 = 1;
            v19 = v3;
            v39 = 1;
LABEL_64:
            if (v3 != *v30)
            {
              break;
            }

            v13 += v39;
            if (v30 >= &v64)
            {
              goto LABEL_68;
            }

            v40 = *v15++;
            v3 = v40;
            ++v17;
            v12 = (v12 + 1);
            v30 = v15 - 1;
            if (v20)
            {
              goto LABEL_54;
            }
          }

LABEL_101:
          v45 = __si_assert_copy_extra_332();
          v46 = v45;
          v47 = "";
          if (v45)
          {
            v47 = v45;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v47);
          goto LABEL_104;
        }

LABEL_54:
        if (v20 + v19 >= v3 && v3 + 1 >= v19)
        {
          v36 = v20 + v19 - 1;
          v37 = v19 > v3;
          v38 = v19 > v3;
          if (v19 >= v3)
          {
            v19 = v3;
          }

          if (v37)
          {
            v20 = v36;
          }

          if (v3 < v20 + v19)
          {
            v39 = v38;
          }

          else
          {
            v20 = v3 + 1 - v19;
            v39 = 1;
          }

          goto LABEL_64;
        }

LABEL_71:
        v35 = 1;
        v15 = v30;
        if (v21 >= v6)
        {
          goto LABEL_86;
        }

        goto LABEL_72;
      }

      v24 = *v21;
      if (v3 < *v21)
      {
        break;
      }

      v35 = 1;
LABEL_74:
      if ((v21 + 1) >= v6)
      {
        v42 = 1;
        v26 = 1;
        if (v20)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v41 = v21[1];
        if (v41 < 0)
        {
          v42 = 2;
        }

        else
        {
          v42 = 1;
        }

        if (v41 < 0)
        {
          v26 = (v41 & 0x7FFFFFFFFFFFFFFFLL) + 1;
        }

        else
        {
          v26 = 1;
        }

        if (v20)
        {
LABEL_84:
          if (v20 + v19 < v24)
          {
            goto LABEL_86;
          }

          v43 = v26 + v24;
          if (v26 + v24 < v19)
          {
            goto LABEL_86;
          }

          v22 = v20 + v19 - v26;
          v23 = v19 > v24;
          if (v19 < v24)
          {
            v24 = v19;
          }

          if (v23)
          {
            v25 = v22;
          }

          else
          {
            v25 = v20;
          }

          v26 = v43 - v24;
          if (v43 <= v25 + v24)
          {
            v26 = v25;
          }
        }
      }

      v21 += v42;
      if (v3 <= v26 + v24)
      {
        v27 = v35;
      }

      else
      {
        v27 = 0;
      }

      v19 = v24;
      v20 = v26;
      if ((v27 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    v28 = v15 + 1;
    v29 = v12;
    while (1)
    {
      v12 = v29;
      v15 = v28;
      v30 = v28 - 1;
      if (v20)
      {
        if (v20 + v19 < v3 || v3 + 1 < v19)
        {
          goto LABEL_71;
        }

        v31 = v20 + v19 - 1;
        v32 = v19 > v3;
        v33 = v19 > v3;
        if (v19 >= v3)
        {
          v19 = v3;
        }

        if (v32)
        {
          v20 = v31;
        }

        if (v3 < v20 + v19)
        {
          v34 = v33;
        }

        else
        {
          v20 = v3 + 1 - v19;
          v34 = 1;
        }
      }

      else
      {
        v20 = 1;
        v19 = v3;
        v34 = 1;
      }

      if (v3 != *v30)
      {
        goto LABEL_101;
      }

      v13 += v34;
      if (v30 >= &v64)
      {
        break;
      }

      v28 = v15 + 1;
      v3 = *v15;
      ++v17;
      v29 = (v12 + 1);
      if (v24 <= v3)
      {
        v35 = 1;
        goto LABEL_69;
      }
    }

LABEL_68:
    v35 = 0;
LABEL_69:
    v12 = (v12 + 1);
    if (v21 < v6)
    {
LABEL_72:
      v24 = *v21;
      goto LABEL_74;
    }

LABEL_86:
    v24 = v19;
    v26 = v20;
LABEL_87:
    v44 = v26 - 1;
    if (v26 == 1)
    {
      if (v16 < v21)
      {
        v4 = v21;
      }

      else
      {
        if (v6 + 16 > v14)
        {
LABEL_121:
          v55 = __si_assert_copy_extra_332();
          v56 = v55;
          if (v55)
          {
            v57 = v55;
          }

          else
          {
            v57 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v57);
          free(v56);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v4 = (v14 - (v6 - v21));
        if (v6 != v21)
        {
          v62 = v16;
          memmove((v14 - (v6 - v21)), v21, v6 - v21);
          v14 = v61;
          v16 = v62;
        }

        v6 = v14;
      }

      *v16++ = v24;
      goto LABEL_19;
    }

    if (v26)
    {
      if (v16 + 1 < v21)
      {
        v4 = v21;
        goto LABEL_100;
      }

      if (v6 + 16 > v14)
      {
        goto LABEL_121;
      }

      v4 = (v14 - (v6 - v21));
      if (v6 != v21)
      {
        v63 = v16;
        v60 = v26 - 1;
        memmove((v14 - (v6 - v21)), v21, v6 - v21);
        v44 = v60;
        v14 = v61;
        v16 = v63;
      }

      v6 = v14;
LABEL_100:
      *v16 = v24;
      v16[1] = v44 | 0x8000000000000000;
      v16 += 2;
LABEL_19:
      if (v16 + v6 - v4 + 16 <= v14)
      {
        v18 = v35;
      }

      else
      {
        v18 = 0;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_108;
      }

      continue;
    }

    break;
  }

  v4 = v21;
LABEL_108:
  if (!v35)
  {
    if (v12 == v17)
    {
      goto LABEL_115;
    }

    v53 = __si_assert_copy_extra_332();
    v46 = v53;
    v54 = "";
    if (v53)
    {
      v54 = v53;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v54);
LABEL_104:
    free(v46);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v12 >= v17)
  {
    v48 = __si_assert_copy_extra_332();
    v46 = v48;
    v49 = "";
    if (v48)
    {
      v49 = v48;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v49);
    goto LABEL_104;
  }

LABEL_115:
  v50 = v6 - v4;
  if (v6 > v4)
  {
    v51 = v16;
    memmove(v16, v4, v6 - v4);
    v16 = (v51 + v50);
  }

  *(a1 + 8) = (v16 - v58) >> 3;
  return v13 != 0;
}