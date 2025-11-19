char **BOMGetArchInfoFromCpuType(int a1, int a2)
{
  v3 = &BOMArchInfoTable;
  while (*(v3 + 2) != a1 || a2 != -1 && ((*(v3 + 3) ^ a2) & 0xFFFFFF) != 0)
  {
    v4 = v3[4];
    v3 += 4;
    if (!v4)
    {
      if (a1 == 18)
      {
        v6 = malloc_type_malloc(0x20uLL, 0x1050040796EC678uLL);
        v3 = v6;
        if (!v6)
        {
          return v3;
        }

        *v6 = xmmword_278D136F8;
        *(v6 + 1) = unk_278D13708;
        *(v6 + 3) = a2;
        v8 = 0;
        asprintf(&v8, "PowerPC cpusubtype %u");
LABEL_12:
        if (v8)
        {
          v3[3] = v8;
          return v3;
        }

        free(v3);
      }

      else if (a1 == 7)
      {
        v5 = malloc_type_malloc(0x20uLL, 0x1050040796EC678uLL);
        v3 = v5;
        if (!v5)
        {
          return v3;
        }

        *v5 = xmmword_278D13638;
        *(v5 + 1) = unk_278D13648;
        *(v5 + 3) = a2;
        v8 = 0;
        asprintf(&v8, "Intel family %u model %u");
        goto LABEL_12;
      }

      return 0;
    }
  }

  return v3;
}

int8x8_t BOMSwapFatHeader(int8x8_t *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      result = vrev32_s8(*a1);
      *a1 = result;
    }
  }

  return result;
}

uint64_t BOMSwapFatArch(uint64_t a1, unsigned int a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    v5 = a2;
    v6 = (a1 + 16);
    do
    {
      *(v6 - 1) = vrev32q_s8(*(v6 - 1));
      *v6 = bswap32(*v6);
      v6 += 5;
      --v5;
    }

    while (v5);
    return 0;
  }

  return result;
}

uint64_t BOMSwapFatArch64(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    v3 = a2;
    do
    {
      *a1 = vrev32_s8(*a1);
      *(a1 + 8) = vrev64q_s8(*(a1 + 8));
      *(a1 + 24) = vrev32_s8(*(a1 + 24));
      a1 += 32;
      --v3;
    }

    while (v3);
  }

  return v3;
}

int8x8_t BOMSwapMachHeader(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      *a1 = vrev32q_s8(*a1);
      result = vrev32_s8(*(a1 + 16));
      *(a1 + 16) = result;
      *(a1 + 24) = bswap32(*(a1 + 24));
    }
  }

  return result;
}

int8x16_t BOMSwapMachHeader64(int8x16_t *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      result = vrev32q_s8(*a1);
      v3 = vrev32q_s8(a1[1]);
      *a1 = result;
      a1[1] = v3;
    }
  }

  return result;
}

void *BOMBufferAllocate(size_t a1)
{
  v2 = BOM_malloczero(0x48uLL);
  v3 = malloc_type_valloc(a1, 0xD78D30BBuLL);
  v2[3] = v3;
  *v2 = a1;
  if (!v3)
  {
    free(v2);
    return 0;
  }

  return v2;
}

void *BOMBufferPoolAllocate(size_t a1, unint64_t a2)
{
  v4 = BOM_malloczero(0xA0uLL);
  if (pthread_cond_init(v4 + 1, 0))
  {
    goto LABEL_4;
  }

  if (pthread_mutex_init((v4 + 12), 0))
  {
    pthread_cond_destroy(v4 + 1);
LABEL_4:
    free(v4);
    return 0;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = a2;
  v4[3] = a1;
  v4[4] = 0;
  v4[5] = v4 + 4;
  if (a2 >= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = a2;
  }

  if (a2)
  {
    while (1)
    {
      v7 = BOMBufferAllocate(a1);
      if (!v7)
      {
        break;
      }

      --v4[2];
      BOMBufferPoolAddBuffer(v4, v7);
      if (!--v6)
      {
        return v4;
      }
    }

    BOMBufferPoolDeallocate(v4);
    return 0;
  }

  return v4;
}

void BOMBufferPoolDeallocate(uint64_t a1)
{
  if (a1 && !pthread_mutex_lock((a1 + 96)) && !pthread_mutex_unlock((a1 + 96)))
  {
    pthread_cond_destroy((a1 + 48));
    pthread_mutex_destroy((a1 + 96));
    for (i = *(a1 + 32); i; i = *(a1 + 32))
    {
      v3 = *(i + 7);
      v4 = *(i + 8);
      v5 = (v3 + 64);
      if (!v3)
      {
        v5 = (a1 + 40);
      }

      *v5 = v4;
      *v4 = v3;
      free(*(i + 3));
      *(i + 8) = 0;
      *(i + 2) = 0u;
      *(i + 3) = 0u;
      *i = 0u;
      *(i + 1) = 0u;
      free(i);
    }

    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;

    free(a1);
  }
}

uint64_t BOMBufferPoolAddBuffer(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 96));
  if (!result)
  {
    v5 = (a1 + 32);
    v6 = *(a1 + 32);
    *(a2 + 56) = v6;
    if (v6)
    {
      v7 = (v6 + 64);
    }

    else
    {
      v7 = (a1 + 40);
    }

    *v7 = a2 + 56;
    *v5 = a2;
    *(a2 + 64) = v5;
    *a1 = vaddq_s64(*a1, vdupq_n_s64(1uLL));
    pthread_mutex_unlock((a1 + 96));

    return pthread_cond_signal((a1 + 48));
  }

  return result;
}

void *BOMBufferPoolRequestBuffer(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 96)))
  {
    return 0;
  }

  while (1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      break;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      *(a1 + 16) = v4 - 1;
      ++*a1;
      pthread_mutex_unlock((a1 + 96));
      v5 = BOMBufferAllocate(*(a1 + 24));
      if (v5)
      {
        return v5;
      }

      if (pthread_mutex_lock((a1 + 96)))
      {
        return 0;
      }

      ++*(a1 + 16);
      --*a1;
    }

    else if (pthread_cond_wait((a1 + 48), (a1 + 96)))
    {
      return 0;
    }
  }

  v2 = *(a1 + 32);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = (a1 + 40);
  if (v7)
  {
    v9 = (v7 + 64);
  }

  *v9 = v8;
  *v8 = v7;
  *(a1 + 8) = v6 - 1;
  pthread_mutex_unlock((a1 + 96));
  pthread_cond_signal((a1 + 48));
  return v2;
}

uint64_t BOMBufferPoolReturnBuffer(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 96));
  if (!result)
  {
    v6 = (a1 + 32);
    v5 = *(a1 + 32);
    *(a2 + 56) = v5;
    if (v5)
    {
      v7 = (v5 + 64);
    }

    else
    {
      v7 = (a1 + 40);
    }

    *v7 = a2 + 56;
    *v6 = a2;
    *(a2 + 64) = v6;
    ++*(a1 + 8);
    pthread_mutex_unlock((a1 + 96));

    return pthread_cond_signal((a1 + 48));
  }

  return result;
}

char *BOMBufferFIFOCreate()
{
  v0 = BOM_malloczero(0x88uLL);
  if (!pthread_cond_init((v0 + 24), 0))
  {
    if (!pthread_mutex_init((v0 + 72), 0))
    {
      *v0 = 0;
      *(v0 + 1) = 0;
      *(v0 + 2) = v0 + 8;
      return v0;
    }

    pthread_cond_destroy((v0 + 24));
  }

  free(v0);
  return 0;
}

void BOMBufferFIFODestroy(uint64_t a1)
{
  if (a1 && !pthread_mutex_lock((a1 + 72)))
  {
    if (*a1)
    {
      v2 = BOMExceptionHandlerMessage("Attempting to destroy a non-empty FIFO!");
      v3 = __error();
      _BOMFatalException(v2, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMBufferManager.c", 308, *v3);
    }

    if (!pthread_mutex_unlock((a1 + 72)))
    {
      pthread_cond_destroy((a1 + 24));
      pthread_mutex_destroy((a1 + 72));

      free(a1);
    }
  }
}

uint64_t BOMBufferFIFOEnqueue(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 72));
  if (!result)
  {
    *(a2 + 56) = 0;
    v5 = *(a1 + 16);
    *(a2 + 64) = v5;
    *v5 = a2;
    *(a1 + 16) = a2 + 56;
    ++*a1;
    pthread_mutex_unlock((a1 + 72));

    return pthread_cond_broadcast((a1 + 24));
  }

  return result;
}

uint64_t BOMBufferFIFODequeue(uint64_t *a1)
{
  if (pthread_mutex_lock((a1 + 9)))
  {
    return 0;
  }

  while (1)
  {
    v4 = *a1;
    if (*a1)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 3), (a1 + 9)))
    {
      return 0;
    }
  }

  v2 = a1[1];
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v7 = a1 + 2;
  if (v5)
  {
    v7 = (v5 + 64);
  }

  *v7 = v6;
  *v6 = v5;
  v8 = v4 - 1;
  *a1 = v4 - 1;
  pthread_mutex_unlock((a1 + 9));
  v9 = (a1 + 3);
  if (v8)
  {
    pthread_cond_signal(v9);
  }

  else
  {
    pthread_cond_broadcast(v9);
  }

  return v2;
}

uint64_t BOMBufferFIFOCount(uint64_t *a1)
{
  if (pthread_mutex_lock((a1 + 9)))
  {
    return 0;
  }

  v2 = *a1;
  pthread_mutex_unlock((a1 + 9));
  return v2;
}

uint64_t BomSys_init(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = BOM_malloc(0x160uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  memcpy(v4, &gDefaultSys, 0x160uLL);
  result = 0;
  v5[1] = a2;
  *a1 = v5;
  return result;
}

uint64_t BomSys_clone(void *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = BOM_malloc(0x160uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  memcpy(v6, a2, 0x160uLL);
  result = 0;
  v7[1] = a3;
  *a1 = v7;
  return result;
}

void BomSys_free(void *a1)
{
  if (a1)
  {
    if (a1 != &gDefaultSys)
    {
      free(a1);
    }
  }
}

uint64_t BomSys_set_open(uint64_t result, uint64_t (*a2)(int a1, char *a2, int a3, uint64_t a4))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_open;
    }

    *(result + 16) = v2;
  }

  return result;
}

uint64_t BomSys_set_close(uint64_t result, uint64_t (*a2)(int a1, int a2))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_close;
    }

    *(result + 32) = v2;
  }

  return result;
}

uint64_t BomSys_set_read(uint64_t result, ssize_t (*a2)(int a1, int a2, void *a3, size_t a4))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_read;
    }

    *(result + 48) = v2;
  }

  return result;
}

uint64_t BomSys_set_lchown(uint64_t result, uint64_t (*a2)(int a1, char *a2, uid_t a3, gid_t a4))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_lchown;
    }

    *(result + 192) = v2;
  }

  return result;
}

uint64_t BomSys_set_chmod(uint64_t result, uint64_t (*a2)(int a1, char *a2, mode_t a3))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_chmod;
    }

    *(result + 200) = v2;
  }

  return result;
}

uint64_t BomSys_set_symlink(uint64_t result, uint64_t (*a2)(int a1, char *a2, char *a3))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_symlink;
    }

    *(result + 248) = v2;
  }

  return result;
}

uint64_t BomSys_set_opendir(uint64_t result, DIR *(*a2)(int a1, char *a2))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_opendir;
    }

    *(result + 272) = v2;
  }

  return result;
}

uint64_t BomSys_set_closedir(uint64_t result, uint64_t (*a2)(int a1, DIR *a2))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_closedir;
    }

    *(result + 280) = v2;
  }

  return result;
}

uint64_t BomSys_set_readdir(uint64_t result, dirent *(*a2)(int a1, DIR *a2))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_readdir;
    }

    *(result + 288) = v2;
  }

  return result;
}

uint64_t BomSys_set_readdir_r(uint64_t result, uint64_t (*a2)(int a1, DIR *a2, dirent *a3, dirent **a4))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_readdir_r;
    }

    *(result + 296) = v2;
  }

  return result;
}

uint64_t BomSys_set_copyfile(uint64_t result, uint64_t (*a2)(int a1, char *from, char *to, copyfile_state_t state, copyfile_flags_t flags))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_copyfile;
    }

    *(result + 344) = v2;
  }

  return result;
}

uint64_t BomSys_set_access(uint64_t result, uint64_t (*a2)(int a1, char *a2, int a3))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_access;
    }

    *(result + 184) = v2;
  }

  return result;
}

uint64_t BomSys_set_fstat(uint64_t result, uint64_t (*a2)(int a1, int a2, stat *a3))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_fstat;
    }

    *(result + 88) = v2;
  }

  return result;
}

uint64_t BomSys_set_lseek(uint64_t result, off_t (*a2)(int a1, int a2, off_t a3, int a4))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_lseek;
    }

    *(result + 64) = v2;
  }

  return result;
}

uint64_t BomSys_set_mmap(uint64_t result, void *(*a2)(int a1, void *a2, size_t a3, int a4, int a5, int a6, off_t a7))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_mmap;
    }

    *(result + 320) = v2;
  }

  return result;
}

uint64_t BomSys_set_munmap(uint64_t result, uint64_t (*a2)(int a1, void *a2, size_t a3))
{
  if (result && result != &gDefaultSys && !*result)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = BomSys_munmap;
    }

    *(result + 328) = v2;
  }

  return result;
}

uint64_t BomSys_log_attached(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(*result + 352);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *BomSys_log_attach(void **a1, int a2, int a3, uint64_t a4, char a5)
{
  v9 = a1;
  if (!a1)
  {
    v9 = BomSys_default();
  }

  v10 = *v9;
  if (!*v9)
  {
    v10 = BOM_malloczero(0x1A8uLL);
  }

  memcpy(v10, &gLogSysSTDIO, 0x160uLL);
  *v10 = v10;
  v10[1] = v10;
  v10[44] = v9;
  v10[45] = a4;
  *(v10 + 368) = a5;
  *(v10 + 93) = a3;
  if ((a3 & 0x100) != 0)
  {
    *(v10 + 394) = a2;
    if ((a3 & 0x10000) == 0)
    {
LABEL_7:
      if ((a3 & 0x2000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((a3 & 0x10000) == 0)
  {
    goto LABEL_7;
  }

  *(v10 + 95) = 16843009 * a2;
  if ((a3 & 0x2000) == 0)
  {
LABEL_8:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v10 + 388) = a2;
  *(v10 + 96) = 16843009 * a2;
  if ((a3 & 0x8000) == 0)
  {
LABEL_9:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v10 + 393) = a2;
  *(v10 + 389) = 16843009 * a2;
  if ((a3 & 0x200) == 0)
  {
LABEL_10:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v10 + 402) = a2;
  *(v10 + 407) = a2;
  *(v10 + 94) = 16843009 * a2;
  if ((a3 & 0x400) == 0)
  {
LABEL_11:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v10 + 395) = a2;
  *(v10 + 403) = a2;
  *(v10 + 102) = 16843009 * a2;
  *(v10 + 206) = 257 * a2;
  if ((a3 & 0x1000) == 0)
  {
LABEL_12:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    *(v10 + 404) = a2;
    *(v10 + 405) = a2;
    *(v10 + 406) = a2;
    if ((a3 & 0x4000) == 0)
    {
      return v10;
    }

    goto LABEL_14;
  }

LABEL_22:
  *(v10 + 396) = a2;
  if ((a3 & 0x800) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((a3 & 0x4000) != 0)
  {
LABEL_14:
    *(v10 + 401) = a2;
    *(v10 + 397) = 16843009 * a2;
  }

  return v10;
}

uint64_t BomSys_log_detach(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1[44];
  free(v1);
  return v2;
}

uint64_t BomSys_log_config(uint64_t result, char *__s2, char a3)
{
  if (result)
  {
    if (__s2)
    {
      v4 = *result;
      if (*result)
      {
        result = strcmp("realpath", __s2);
        if (result)
        {
          result = strcmp("mkdir", __s2);
          if (result)
          {
            result = strcmp("read", __s2);
            if (result)
            {
              result = strcmp("write", __s2);
              if (result)
              {
                result = strcmp("lseek", __s2);
                if (result)
                {
                  result = strcmp("fsync", __s2);
                  if (result)
                  {
                    result = strcmp("stat", __s2);
                    if (result)
                    {
                      result = strcmp("fstat", __s2);
                      if (result)
                      {
                        result = strcmp("lstat", __s2);
                        if (result)
                        {
                          result = strcmp("statfs", __s2);
                          if (result)
                          {
                            result = strcmp("fstatfs", __s2);
                            if (result)
                            {
                              result = strcmp("getattrlist", __s2);
                              if (result)
                              {
                                result = strcmp("getxattr", __s2);
                                if (result)
                                {
                                  result = strcmp("setxattr", __s2);
                                  if (result)
                                  {
                                    result = strcmp("listxattr", __s2);
                                    if (result)
                                    {
                                      result = strcmp("removexattr", __s2);
                                      if (result)
                                      {
                                        result = strcmp("open", __s2);
                                        if (result)
                                        {
                                          result = strcmp("openFor", __s2);
                                          if (result)
                                          {
                                            result = strcmp("close", __s2);
                                            if (result)
                                            {
                                              result = strcmp("fcntl", __s2);
                                              if (result)
                                              {
                                                result = strcmp("unlink", __s2);
                                                if (result)
                                                {
                                                  result = strcmp("rename", __s2);
                                                  if (result)
                                                  {
                                                    result = strcmp("opendir", __s2);
                                                    if (result)
                                                    {
                                                      result = strcmp("closedir", __s2);
                                                      if (result)
                                                      {
                                                        result = strcmp("readdir", __s2);
                                                        if (result)
                                                        {
                                                          result = strcmp("readdir_r", __s2);
                                                          if (result)
                                                          {
                                                            result = strcmp("getcwd", __s2);
                                                            if (result)
                                                            {
                                                              result = strcmp("chdir", __s2);
                                                              if (result)
                                                              {
                                                                result = strcmp("rmdir", __s2);
                                                                if (result)
                                                                {
                                                                  result = strcmp("mknod", __s2);
                                                                  if (result)
                                                                  {
                                                                    result = strcmp("link", __s2);
                                                                    if (result)
                                                                    {
                                                                      result = strcmp("symlink", __s2);
                                                                      if (result)
                                                                      {
                                                                        result = strcmp("readlink", __s2);
                                                                        if (result)
                                                                        {
                                                                          result = strcmp("access", __s2);
                                                                          if (result)
                                                                          {
                                                                            result = strcmp("lchown", __s2);
                                                                            if (result)
                                                                            {
                                                                              result = strcmp("chmod", __s2);
                                                                              if (result)
                                                                              {
                                                                                result = strcmp("chflags", __s2);
                                                                                if (result)
                                                                                {
                                                                                  result = strcmp("utimes", __s2);
                                                                                  if (result)
                                                                                  {
                                                                                    result = strcmp("mmap", __s2);
                                                                                    if (result)
                                                                                    {
                                                                                      result = strcmp("munmap", __s2);
                                                                                      if (result)
                                                                                      {
                                                                                        result = strcmp("mktemp", __s2);
                                                                                        if (!result)
                                                                                        {
                                                                                          v4[416] = a3;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v4[415] = a3;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v4[414] = a3;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v4[401] = a3;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v4[400] = a3;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v4[399] = a3;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v4[398] = a3;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v4[397] = a3;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v4[406] = a3;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v4[405] = a3;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v4[404] = a3;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v4[396] = a3;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v4[403] = a3;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v4[413] = a3;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v4[412] = a3;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v4[411] = a3;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v4[410] = a3;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v4[409] = a3;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v4[408] = a3;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v4[407] = a3;
                                                  }
                                                }

                                                else
                                                {
                                                  v4[402] = a3;
                                                }
                                              }

                                              else
                                              {
                                                v4[379] = a3;
                                              }
                                            }

                                            else
                                            {
                                              v4[378] = a3;
                                            }
                                          }

                                          else
                                          {
                                            v4[377] = a3;
                                          }
                                        }

                                        else
                                        {
                                          v4[376] = a3;
                                        }
                                      }

                                      else
                                      {
                                        v4[393] = a3;
                                      }
                                    }

                                    else
                                    {
                                      v4[392] = a3;
                                    }
                                  }

                                  else
                                  {
                                    v4[391] = a3;
                                  }
                                }

                                else
                                {
                                  v4[390] = a3;
                                }
                              }

                              else
                              {
                                v4[389] = a3;
                              }
                            }

                            else
                            {
                              v4[388] = a3;
                            }
                          }

                          else
                          {
                            v4[387] = a3;
                          }
                        }

                        else
                        {
                          v4[386] = a3;
                        }
                      }

                      else
                      {
                        v4[385] = a3;
                      }
                    }

                    else
                    {
                      v4[384] = a3;
                    }
                  }

                  else
                  {
                    v4[383] = a3;
                  }
                }

                else
                {
                  v4[382] = a3;
                }
              }

              else
              {
                v4[381] = a3;
              }
            }

            else
            {
              v4[380] = a3;
            }
          }

          else
          {
            v4[395] = a3;
          }
        }

        else
        {
          v4[394] = a3;
        }
      }
    }
  }

  return result;
}

uint64_t BomSys_log_resume(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      *(*result + 368) = 1;
    }
  }

  return result;
}

uint64_t BomSys_log_pause(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      *(*result + 368) = 0;
    }
  }

  return result;
}

uint64_t BomSysLog_open(uint64_t a1, const char *a2, int a3, int a4)
{
  v8 = (*(*(a1 + 352) + 16))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 376))
  {
    fprintf(*(a1 + 360), "open(%s, %d, %d) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_openFor(uint64_t a1, const char *a2, int a3, int a4, const char *a5)
{
  v10 = (*(*(a1 + 352) + 24))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 377))
  {
    fprintf(*(a1 + 360), "openFor(%s, %d, %d, %s) => %d\n", a2, a3, a4, a5, v10);
  }

  return v10;
}

uint64_t BomSysLog_close(uint64_t a1, int a2)
{
  v4 = (*(*(a1 + 352) + 32))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 378))
  {
    fprintf(*(a1 + 360), "close(%d) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_fcntl(uint64_t a1, int a2, int a3, const void *a4)
{
  v8 = (*(*(a1 + 352) + 40))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 379))
  {
    fprintf(*(a1 + 360), "fcntl(%d, %d, %p) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_read(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  v8 = (*(*(a1 + 352) + 48))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 380))
  {
    fprintf(*(a1 + 360), "read(%d, %p, %zu) => %zd\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_write(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  v8 = (*(*(a1 + 352) + 56))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 381))
  {
    fprintf(*(a1 + 360), "write(%d, %p, %zu) => %zd\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_lseek(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = (*(*(a1 + 352) + 64))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 382))
  {
    fprintf(*(a1 + 360), "lseek(%d, %lld, %d) => %lld\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_fsync(uint64_t a1, int a2)
{
  v4 = (*(*(a1 + 352) + 72))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 383))
  {
    fprintf(*(a1 + 360), "fsync(%d) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_stat(uint64_t a1, const char *a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 80))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 384))
  {
    fprintf(*(a1 + 360), "stat(%s, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_fstat(uint64_t a1, int a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 88))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 385))
  {
    fprintf(*(a1 + 360), "fstat(%d, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_lstat(uint64_t a1, const char *a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 96))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 386))
  {
    fprintf(*(a1 + 360), "lstat(%s, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_statfs(uint64_t a1, const char *a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 104))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 387))
  {
    fprintf(*(a1 + 360), "statfs(%s, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_fstatfs(uint64_t a1, int a2, const void *a3)
{
  v6 = (*(*(a1 + 352) + 112))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 388))
  {
    fprintf(*(a1 + 360), "fstatfs(%d, %p) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_getattrlist(uint64_t a1, const char *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(*(a1 + 352) + 120))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 389))
  {
    fprintf(*(a1 + 360), "getattrlist(%s, %p, %p, %zu, %lu) => %d\n", a2, a3, a4, a5, a6, v12);
  }

  return v12;
}

uint64_t BomSysLog_getxattr(uint64_t a1, const char *a2, const char *a3, const void *a4, uint64_t a5, int a6, int a7)
{
  v14 = (*(*(a1 + 352) + 128))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 390))
  {
    fprintf(*(a1 + 360), "getxattr(%s, %s, %p, %zu, %u, %d) => %zd\n", a2, a3, a4, a5, a6, a7, v14);
  }

  return v14;
}

uint64_t BomSysLog_setxattr(uint64_t a1, const char *a2, const char *a3, const void *a4, uint64_t a5, int a6, int a7)
{
  v14 = (*(*(a1 + 352) + 136))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 391))
  {
    fprintf(*(a1 + 360), "setxattr(%s, %s, %p, %zu, %u, %d) => %d\n", a2, a3, a4, a5, a6, a7, v14);
  }

  return v14;
}

uint64_t BomSysLog_listxattr(uint64_t a1, const char *a2, const char *a3, uint64_t a4, int a5)
{
  v10 = (*(*(a1 + 352) + 144))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 392))
  {
    fprintf(*(a1 + 360), "listxattr(%s, %s, %zu, %d) => %zd\n", a2, a3, a4, a5, v10);
  }

  return v10;
}

uint64_t BomSysLog_removexattr(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v8 = (*(*(a1 + 352) + 152))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 393))
  {
    fprintf(*(a1 + 360), "removexattr(%s, %s, %d) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_realpath(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 160))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 394))
  {
    v7 = "(null)";
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "(null)";
    }

    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = "(null)";
    }

    if (v6)
    {
      v7 = v6;
    }

    fprintf(*(a1 + 360), "realpath(%s, %s) => %s\n", v8, v9, v7);
  }

  return v6;
}

uint64_t BomSysLog_mkdir(uint64_t a1, const char *a2, int a3)
{
  v6 = (*(*(a1 + 352) + 168))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 395))
  {
    fprintf(*(a1 + 360), "mkdir(%s, %d) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_mknod(uint64_t a1, const char *a2, int a3, int a4)
{
  v8 = (*(*(a1 + 352) + 176))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 396))
  {
    fprintf(*(a1 + 360), "mknod(%s, %d, %d) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_access(uint64_t a1, const char *a2, int a3)
{
  v6 = (*(*(a1 + 352) + 184))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 397))
  {
    fprintf(*(a1 + 360), "access(%s, %d) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_lchown(uint64_t a1, const char *a2, int a3, int a4)
{
  v8 = (*(*(a1 + 352) + 192))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 398))
  {
    fprintf(*(a1 + 360), "chown(%s, %d, %d) => %d\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_chmod(uint64_t a1, const char *a2, int a3)
{
  v6 = (*(*(a1 + 352) + 200))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 399))
  {
    fprintf(*(a1 + 360), "chmod(%s, %d) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_chflags(uint64_t a1, const char *a2, int a3)
{
  v6 = (*(*(a1 + 352) + 208))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 400))
  {
    fprintf(*(a1 + 360), "chflags(%s, %u) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_utimes(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 216))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 401))
  {
    fprintf(*(a1 + 360), "utimes(%s) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_unlink(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 224))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 402))
  {
    fprintf(*(a1 + 360), "unlink(%s) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_rmdir(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 232))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 403))
  {
    fprintf(*(a1 + 360), "rmdir(%s) => %d\n", a2, v4);
  }

  return v4;
}

uint64_t BomSysLog_link(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 240))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 404))
  {
    v7 = "(null)";
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "(null)";
    }

    if (a3)
    {
      v7 = a3;
    }

    fprintf(*(a1 + 360), "link(%s, %s) => %d\n", v8, v7, v6);
  }

  return v6;
}

uint64_t BomSysLog_symlink(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 248))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 405))
  {
    v7 = "(null)";
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "(null)";
    }

    if (a3)
    {
      v7 = a3;
    }

    fprintf(*(a1 + 360), "symlink(%s, %s) => %d\n", v8, v7, v6);
  }

  return v6;
}

uint64_t BomSysLog_readlink(uint64_t a1, const char *a2, const void *a3, uint64_t a4)
{
  v8 = (*(*(a1 + 352) + 256))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 406))
  {
    fprintf(*(a1 + 360), "readlink(%s, %p, %zu) => %zd\n", a2, a3, a4, v8);
  }

  return v8;
}

uint64_t BomSysLog_rename(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 264))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 407))
  {
    v7 = "(null)";
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "(null)";
    }

    if (a3)
    {
      v7 = a3;
    }

    fprintf(*(a1 + 360), "rename(%s, %s) => %d\n", v8, v7, v6);
  }

  return v6;
}

unsigned int *BomSysLog_opendir(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = (*(*(a1 + 352) + 272))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 408))
  {
    BomSysLog_DIR(v7, v4);
    fprintf(*(a1 + 360), "opendir(%s) => %s\n", a2, v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t BomSysLog_closedir(uint64_t a1, unsigned int *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 368) && *(a1 + 409))
  {
    BomSysLog_DIR(v7, a2);
  }

  v4 = (*(*(a1 + 352) + 280))(*(*(a1 + 352) + 8), a2);
  if (*(a1 + 368) && *(a1 + 409))
  {
    fprintf(*(a1 + 360), "closedir(%s) => %d\n", v7, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t *BomSysLog_readdir(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (*(*(a1 + 352) + 288))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 410))
  {
    BomSysLog_DIR(v8, a2);
    BomSysLog_DIRENT(v7, v4);
    fprintf(*(a1 + 360), "readdir(%s) => %s\n", v8, v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t BomSysLog_readdir_r(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t **a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = (*(*(a1 + 352) + 296))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 411))
  {
    BomSysLog_DIR(v14, a2);
    BomSysLog_DIRENT(v13, a3);
    if (a4)
    {
      v9 = *a4;
      if (*a4 == a3)
      {
        strcpy(v12, "<same>");
LABEL_8:
        fprintf(*(a1 + 360), "readdir_r(%s, %s, %s) => %d\n", v14, v13, v12, v8);
        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
    }

    BomSysLog_DIRENT(v12, v9);
    goto LABEL_8;
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t BomSysLog_getcwd(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = (*(*(a1 + 352) + 304))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 412))
  {
    v7 = "(null)";
    if (v6)
    {
      v7 = v6;
    }

    fprintf(*(a1 + 360), "getcwd(%p, %zu) => %s\n", a2, a3, v7);
  }

  return v6;
}

uint64_t BomSysLog_chdir(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 312))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 413))
  {
    fprintf(*(a1 + 360), "chdir(%s) => %d\n", a2, v4);
  }

  return v4;
}

const void *BomSysLog_mmap(uint64_t a1, const void *a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  v14 = (*(*(a1 + 352) + 320))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 414))
  {
    fprintf(*(a1 + 360), "mmap(%p, %zu, %d, %d, %d, %lld) => %p\n", a2, a3, a4, a5, a6, a7, v14);
  }

  return v14;
}

uint64_t BomSysLog_munmap(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = (*(*(a1 + 352) + 328))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 415))
  {
    fprintf(*(a1 + 360), "munmap(%p, %zd) => %d\n", a2, a3, v6);
  }

  return v6;
}

uint64_t BomSysLog_mktemp(uint64_t a1, const char *a2)
{
  v4 = (*(*(a1 + 352) + 336))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 416))
  {
    v5 = "(null)";
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = "(null)";
    }

    if (v4)
    {
      v5 = v4;
    }

    fprintf(*(a1 + 360), "mktemp(%s) => %s\n", v6, v5);
  }

  return v4;
}

uint64_t BomSysLog_copyfile(uint64_t a1, const char *a2, const char *a3)
{
  v6 = (*(*(a1 + 352) + 344))(*(*(a1 + 352) + 8));
  if (*(a1 + 368) && *(a1 + 417))
  {
    fprintf(*(a1 + 360), "copyfile(%s, %s)\n", a2, a3);
  }

  return v6;
}

uint64_t BomSysLog_DIR(char *a1, unsigned int *a2)
{
  if (!a2)
  {
    return snprintf(a1, 0x40uLL, "%p");
  }

  v2 = *a2;
  return snprintf(a1, 0x40uLL, "%p {%d}");
}

uint64_t BomSysLog_DIRENT(char *a1, uint64_t *a2)
{
  if (!a2)
  {
    return snprintf(a1, 0x440uLL, "%p");
  }

  v2 = *a2;
  v4 = *(a2 + 20);
  return snprintf(a1, 0x440uLL, "%p {%llu, %d, %s}");
}

void BOMCopierErrorFree(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t BOMCopierErrorGetFileName(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMCopierErrorGetLineNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t BOMCopierErrorGetCompilationDate(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t BOMCopierErrorGetFunctionName(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t BOMCopierErrorGetMessage(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t BOMCopierErrorGetCode(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void *BOMCopierErrorCapture(void *result, int a2, uint64_t a3, int a4, uint64_t a5, char *a6, ...)
{
  va_start(va, a6);
  v17[0] = 0;
  if (result)
  {
    v6 = result;
    if (!*result)
    {
      va_copy(&v17[1], va);
      if (vasprintf(v17, a6, va) < 0)
      {
        v11 = *MEMORY[0x277D85DF8];
        v12 = __error();
        v13 = strerror(*v12);
        return fprintf(v11, "Could not create error message: %s\n", v13);
      }

      else
      {
        if (v17[0])
        {
          result = malloc_type_calloc(1uLL, 0x30uLL, 0x105004057D267B0uLL);
          if (result)
          {
            *result = a3;
            *(result + 2) = a4;
            result[2] = "Oct 10 2025";
            result[3] = a5;
            result[4] = v17[0];
            *(result + 10) = a2;
            *v6 = result;
            return result;
          }

          v14 = *MEMORY[0x277D85DF8];
          v15 = "Could not allocate empty _BOMCopierError\n";
          v16 = 41;
        }

        else
        {
          v14 = *MEMORY[0x277D85DF8];
          v15 = "Error message is NULL\n";
          v16 = 22;
        }

        return fwrite(v15, v16, 1uLL, v14);
      }
    }
  }

  return result;
}

uint64_t BOMCopierCopyWithOptions2(uint64_t a1, char *a2, char *a3, const void *a4)
{
  v120 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v14 = 22;
    goto LABEL_250;
  }

  v8 = (a1 + 11616);
  v112 = 0;
  if (os_variant_has_internal_content())
  {
    getenv("BOMCOPIER_LOGGING");
LABEL_4:
    *(a1 + 13008) = os_log_create("com.apple.Bom", "BOMCopier");
    goto LABEL_5;
  }

  v15 = v8[1450];
  v16 = getenv("BOMCOPIER_LOGGING");
  if (v16)
  {
    if (*v16 == 49 && !v16[1] || (v15 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (v15)
  {
    goto LABEL_4;
  }

LABEL_5:
  v9 = *(a1 + 13008);
  if (v9)
  {
    if (!os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT) || (*buf = 136315138, *&buf[4] = a2, _os_log_impl(&dword_241C0E000, v9, OS_LOG_TYPE_DEFAULT, "fromObj: %s", buf, 0xCu), (v9 = *(a1 + 13008)) != 0))
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = a3;
        _os_log_impl(&dword_241C0E000, v9, OS_LOG_TYPE_DEFAULT, "toObj: %s", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 13016) = Mutable;
  if (!Mutable)
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 720, "prepare_copy_state", "Could not create source options");
    goto LABEL_249;
  }

  v12 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 13032) = v12;
  if (!v12)
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 727, "prepare_copy_state", "Could not create destination options");
    goto LABEL_249;
  }

  if (!a4)
  {
    goto LABEL_89;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 735, "prepare_copy_state", "The options dictionary is not a CFDictionary");
    goto LABEL_249;
  }

  if (parse_copier_options(a1, a4, &v112))
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 742, "prepare_copy_state", "Could not create parse copier options");
LABEL_249:
    v14 = 1;
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 188, "BOMCopierCopyWithOptions2", "Could not parse the client options");
    notify_fatal_error(a1, v112);
    release_copy_state_0(a1);
    goto LABEL_250;
  }

  if (CFDictionaryContainsKey(a4, @"compressCPIO") && *(a1 + 12712) != 1 && *(a1 + 12716) != 4)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3597, "verify_copier_options", "Compression is only used for CPIO archives");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"skipCPIOTerminator") && *(a1 + 12716) != 4)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3606, "verify_copier_options", "SkipTerminator is only used for CPIO archives");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"skipCPIORoot") && *(a1 + 12716) != 4)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3615, "verify_copier_options", "SkipRoot is only used for CPIO archives");
    goto LABEL_248;
  }

  if (*(a1 + 12712) == 2 && *(a1 + 12716) != 3)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3626, "verify_copier_options", "PKZip archives can only be extracted to filesystem destinations");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"sequesterResources") && *(a1 + 12716) != 5 && *(a1 + 12712) != 2)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3634, "verify_copier_options", "sequesterResources is only for PKZip archives");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"keepParent") && *(a1 + 12716) == 3)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3647, "verify_copier_options", "keepParent is only for archives");
    goto LABEL_248;
  }

  v17 = CFDictionaryContainsKey(a4, @"inputFD");
  if (a2 && v17)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3660, "verify_copier_options", "Cannot specify a fromObj with kBOMCopierOptionInputFileDescriptorKey");
    goto LABEL_248;
  }

  v18 = CFDictionaryContainsKey(a4, @"outputFD");
  if (a3 && v18)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3669, "verify_copier_options", "Cannot specify a toObj with kBOMCopierOptionOutputFileDescriptorKey");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"inputStream"))
  {
    if (a2 || CFDictionaryContainsKey(a4, @"inputFD"))
    {
      BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3682, "verify_copier_options", "Cannot specify fromObj or kBOMCopierOptionInputFileDescriptorKey with kBOMCopierOptionInputCFReadStreamKey");
      goto LABEL_248;
    }

    Value = CFDictionaryGetValue(a4, @"inputStream");
    for (i = 30; ; --i)
    {
      Status = CFReadStreamGetStatus(Value);
      if (Status != kCFStreamStatusOpening)
      {
        break;
      }

      if (!i)
      {
        BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3706, "verify_copier_options", "Timed out waiting for the read stream to open");
        goto LABEL_248;
      }

      *buf = xmmword_241C78EB0;
      nanosleep(buf, 0);
    }

    if (Status != kCFStreamStatusOpen)
    {
      BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3722, "verify_copier_options", "CFReadStream is not open: %u");
      goto LABEL_248;
    }
  }

  if (CFDictionaryContainsKey(a4, @"outputStream"))
  {
    if (a3 || CFDictionaryContainsKey(a4, @"outputFD"))
    {
      BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3731, "verify_copier_options", "Cannot specify toObj or kBOMCopierOptionOutputFileDescriptorKey with kBOMCopierOptionOutputCFWriteStreamKey");
      goto LABEL_248;
    }

    v22 = CFDictionaryGetValue(a4, @"outputStream");
    for (j = 30; ; --j)
    {
      v24 = CFWriteStreamGetStatus(v22);
      if (v24 != kCFStreamStatusOpening)
      {
        break;
      }

      if (!j)
      {
        BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3755, "verify_copier_options", "Timed out waiting for the write stream to open");
        goto LABEL_248;
      }

      *buf = xmmword_241C78EB0;
      nanosleep(buf, 0);
    }

    if (v24 != kCFStreamStatusOpen)
    {
      BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3771, "verify_copier_options", "CFWriteStream is not open: %u");
      goto LABEL_248;
    }
  }

  v25 = CFDictionaryContainsKey(a4, @"output2Nowhere");
  if (a3 && v25)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3780, "verify_copier_options", "Cannot specify a toObj with kBOMCopierOptionOutputNowhereKey");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"setStaticContent") && *(a1 + 12716) != 3)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3793, "verify_copier_options", "setStaticContent is only for filesystem destinations");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"setSingleWriter") && *(a1 + 12716) != 3)
  {
    BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3802, "verify_copier_options", "setSingleWriter is only for filesystem destinations");
    goto LABEL_248;
  }

  if (CFDictionaryContainsKey(a4, @"applyProvenance"))
  {
    if (!*(a1 + 12712))
    {
      BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3811, "verify_copier_options", "applyProvenance is only for extracting from archives");
      goto LABEL_248;
    }

    if (*(a1 + 12716) != 3)
    {
      BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3817, "verify_copier_options", "applyProvenance is only applicable when extracting from archives");
      goto LABEL_248;
    }
  }

  if (CFDictionaryContainsKey(a4, @"injectAppleDoubleBetweenSegmentedFiles"))
  {
    if (CFDictionaryContainsKey(a4, @"createCPIO"))
    {
      if (CFDictionaryContainsKey(a4, @"segmentLargeFiles"))
      {
        goto LABEL_86;
      }

      BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3834, "verify_copier_options", "injectAppleDouble requires segment large files");
    }

    else
    {
      BOMCopierErrorCapture(&v112, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3827, "verify_copier_options", "injectAppleDouble requires creating a CPIO");
    }

LABEL_248:
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 749, "prepare_copy_state", "Could not verify copier options");
    goto LABEL_249;
  }

LABEL_86:
  v26 = *(a1 + 13008);
  if (v26 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a4;
    _os_log_impl(&dword_241C0E000, v26, OS_LOG_TYPE_DEFAULT, "options: %@", buf, 0xCu);
  }

LABEL_89:
  if (getenv("PRESERVECOMPRESSION"))
  {
    v27 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(*(a1 + 13016), @"discoverCompressionAttributes", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(*(a1 + 13032), @"preserveAppleFSCompression", v27);
  }

  v28 = *(a1 + 13008);
  if (v28)
  {
    if (!os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT) || (v29 = *(a1 + 13016), *buf = 138412290, *&buf[4] = v29, _os_log_impl(&dword_241C0E000, v28, OS_LOG_TYPE_DEFAULT, "source options: %@", buf, 0xCu), (v28 = *(a1 + 13008)) != 0))
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 13032);
        *buf = 138412290;
        *&buf[4] = v30;
        _os_log_impl(&dword_241C0E000, v28, OS_LOG_TYPE_DEFAULT, "destination options: %@", buf, 0xCu);
        v28 = *(a1 + 13008);
      }
    }
  }

  v31 = BOMCopierSourceNew(a2, *(a1 + 13016), v28, &v112);
  *(a1 + 13024) = v31;
  if (!v31)
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 783, "prepare_copy_state", "Could not create BOMCopierSource");
    goto LABEL_249;
  }

  v32 = BOMCopierDestinationNew(a3, *(a1 + 13032), &v112);
  *(a1 + 13040) = v32;
  if (!v32)
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 790, "prepare_copy_state", "Could not create BOMCopierDestination");
    goto LABEL_249;
  }

  BOMCopierDestinationSetLog(v32, *(a1 + 13008));
  if (BOMCopierSourceSetErrorHandler(*(a1 + 13024), source_error_handler, a1, &v112))
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 803, "prepare_copy_state", "Could not set BOMCopierSource error handler");
    goto LABEL_249;
  }

  if (*(a1 + 128))
  {
    if (BOMCopierSourceSetPassphraseCallback(*(a1 + 13024), passphrase_callback, a1, &v112))
    {
      BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 816, "prepare_copy_state", "Could not set BOMCopierSource passphrase callback");
      goto LABEL_249;
    }

    v33 = *(a1 + 13008);
    if (v33 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v33, OS_LOG_TYPE_DEFAULT, "Set passphrase callback", buf, 2u);
    }
  }

  v34 = (a1 + 13040);
  v35 = *(a1 + 13048);
  if (v35)
  {
    if (BOMCopierDestinationSetAllowBom(*v34, v35, &v112))
    {
      BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 832, "prepare_copy_state", "Could not set allow bom for destination");
      goto LABEL_249;
    }

    v36 = *(a1 + 13008);
    if (v36 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v36, OS_LOG_TYPE_DEFAULT, "Set allow bom with destination", buf, 2u);
    }
  }

  v37 = *(a1 + 13056);
  if (v37)
  {
    if (BOMCopierDestinationSetDenyBom(*v34, v37, &v112))
    {
      BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 844, "prepare_copy_state", "Could not set deny bom for destination");
      goto LABEL_249;
    }

    v38 = *(a1 + 13008);
    if (v38 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v38, OS_LOG_TYPE_DEFAULT, "Set deny bom with destination", buf, 2u);
    }
  }

  if (v8[1448] == 1)
  {
    v39 = *(a1 + 13048);
    if (!v39)
    {
      BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 855, "prepare_copy_state", "The client did not provide an index bom to use for enumeration");
      goto LABEL_249;
    }

    if (BOMCopierSourceSetEnumerationBom(*(a1 + 13024), v39, &v112))
    {
      BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 862, "prepare_copy_state", "Could not set enumeration bom for source");
      goto LABEL_249;
    }

    v40 = *(a1 + 13008);
    if (v40 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v40, OS_LOG_TYPE_DEFAULT, "Set enumeration bom with source", buf, 2u);
    }
  }

  if (v8[1449] == 1)
  {
    v41 = *(a1 + 13048);
    if (!v41)
    {
      BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 873, "prepare_copy_state", "The client did not provide an index bom to use for checksum validation");
      goto LABEL_249;
    }

    if (BOMCopierDestinationSetChecksumBom(*v34, v41, &v112))
    {
      BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 880, "prepare_copy_state", "Could not set checksum bom for destination");
      goto LABEL_249;
    }

    v42 = *(a1 + 13008);
    if (v42 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v42, OS_LOG_TYPE_DEFAULT, "Set enumeration bom with destination", buf, 2u);
    }
  }

  if (BOMCopierDestinationSetConflictResolver(*(a1 + 13040), conflict_resolver, a1, &v112))
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 894, "prepare_copy_state", "Could not set conflict resolver");
    goto LABEL_249;
  }

  if (BOMCopierDestinationSetDataWrittenCallback(*(a1 + 13040), data_written_callback, a1, &v112))
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 905, "prepare_copy_state", "Could not set data written callback");
    goto LABEL_249;
  }

  if (BOMCopierDestinationSetFinalizationCallback(*(a1 + 13040), finalization_callback, a1, &v112))
  {
    BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 916, "prepare_copy_state", "Could not set finalization callback");
    goto LABEL_249;
  }

  v43 = *(a1 + 13008);
  if (v43 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241C0E000, v43, OS_LOG_TYPE_DEFAULT, "Copy state prepared", buf, 2u);
    v43 = *(a1 + 13008);
  }

  bzero(buf, 0x430uLL);
  *buf = 1;
  v50 = *(a1 + 8);
  *&buf[8] = a1 + 13040;
  v116 = v50;
  v51 = *(a1 + 16);
  v52 = *(a1 + 24);
  v118 = *(a1 + 32);
  v119 = v52;
  v117 = v51;
  if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *v113 = 0;
    _os_log_impl(&dword_241C0E000, v43, OS_LOG_TYPE_DEFAULT, "Starting copy", v113, 2u);
  }

  while (1)
  {
    v53 = *(a1 + 13008);
    if (*(a1 + 168) == 1)
    {
      if (v53 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 0;
        v96 = "Client cancelled";
        v110 = 2;
        v97 = v53;
LABEL_246:
        _os_log_impl(&dword_241C0E000, v97, OS_LOG_TYPE_DEFAULT, v96, v113, 2u);
        goto LABEL_282;
      }

LABEL_280:
      v105 = 2;
      goto LABEL_281;
    }

    if (v53 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&dword_241C0E000, v53, OS_LOG_TYPE_DEFAULT, "Retrieving the next source entry", v113, 2u);
    }

    v54 = BOMCopierSourceNext(*(a1 + 13024), &v112, v44, v45, v46, v47, v48, v49);
    v55 = v54;
    if (v112)
    {
      if (v54)
      {
        BOMCopierSourceEntryFree(v54);
      }

      v110 = 1;
      BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 249, "BOMCopierCopyWithOptions2", "Could not copy from %s to %s: %s", a2);
      goto LABEL_274;
    }

    if (!v54)
    {
      break;
    }

    Type = BOMCopierSourceEntryGetType(v54);
    if (Type == 6)
    {
      Mode = BOMCopierSourceEntryGetMode(v55);
      if ((Mode & 0x80) == 0)
      {
        BOMCopierSourceEntrySetMode(v55, Mode | 0x80);
      }

      goto LABEL_167;
    }

    if (Type == 8)
    {
      if (*(a1 + 12712) || !BOMCopierSourceEntryCheckAccess(v55, 0))
      {
        goto LABEL_167;
      }

      Path = BOMCopierSourceEntryGetPath(v55);
      v111 = 0;
      asprintf(&v111, "%s/%s", a2, Path);
      v91 = v111;
      if (!v111)
      {
        v94 = *__error();
        v95 = __error();
        v108 = strerror(*v95);
        BOMCopierErrorCapture(&v112, v94, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 358, "BOMCopierCopyWithOptions2", "Could not create error path: %s", v108);
        goto LABEL_213;
      }

      v8[1451] = 1;
      v92 = __error();
      v93 = notify_file_error(a1, v91, *v92);
      free(v111);
      if (v93 != 1)
      {
LABEL_219:
        BOMCopierSourceEntryFree(v55);
        release_copy_state_0(a1);
        v110 = 2;
        v61 = 1;
        goto LABEL_220;
      }

      v60 = *(a1 + 13008);
      if (!v60 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_162;
      }

LABEL_161:
      *v113 = 136315138;
      v114 = Path;
      _os_log_impl(&dword_241C0E000, v60, OS_LOG_TYPE_DEFAULT, "Skipping %s", v113, 0xCu);
LABEL_162:
      BOMCopierSourceEntryFree(v55);
      v61 = 2;
LABEL_220:
      if (v61 != 2)
      {
        goto LABEL_283;
      }
    }

    else
    {
      if (Type <= 2)
      {
        Path = BOMCopierSourceEntryGetPath(v55);
        v111 = 0;
        asprintf(&v111, "%s/%s", a2, Path);
        v58 = v111;
        if (v111)
        {
          v8[1451] = 1;
          v59 = notify_file_error(a1, v58, 13);
          free(v111);
          if (v59 != 1)
          {
            goto LABEL_219;
          }

          v60 = *(a1 + 13008);
          if (!v60 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_162;
          }

          goto LABEL_161;
        }

        v89 = *__error();
        v90 = __error();
        v107 = strerror(*v90);
        BOMCopierErrorCapture(&v112, v89, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 290, "BOMCopierCopyWithOptions2", "Could not create error path: %s", v107);
LABEL_213:
        v61 = 1;
        v110 = 1;
        goto LABEL_220;
      }

LABEL_167:
      *v8 = 0;
      v8[1025] = 0;
      if (!*(a1 + 88))
      {
        goto LABEL_170;
      }

      v63 = BOMCopierSourceEntryGetPath(v55);
      v64 = BOMCopierSourceEntryGetType(v55);
      Size = BOMCopierSourceEntryGetSize(v55);
      v66 = map_entry_type(v64);
      v67 = (*(a1 + 88))(a1, v63, v66, Size);
      if (v67 == 1)
      {
        v86 = *(a1 + 13008);
        if (v86 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
        {
          *v113 = 0;
          _os_log_impl(&dword_241C0E000, v86, OS_LOG_TYPE_DEFAULT, "Client skipped source entry", v113, 2u);
        }

        BOMCopierSourceEntryFree(v55);
      }

      else
      {
        if (v67 == 2)
        {
          v99 = *(a1 + 13008);
          if (v99 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v113 = 0;
            v100 = "Client cancelled";
            goto LABEL_278;
          }

LABEL_279:
          BOMCopierSourceEntryFree(v55);
          goto LABEL_280;
        }

LABEL_170:
        if (*(a1 + 168) == 1)
        {
          v99 = *(a1 + 13008);
          if (v99 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v113 = 0;
            v100 = "Client cancelled";
            goto LABEL_278;
          }

          goto LABEL_279;
        }

        if (v8[1025] == 1)
        {
          v68 = BOMCopierSourceEntryGetPath(v55);
          if (!v68)
          {
            v110 = 1;
            BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 460, "BOMCopierCopyWithOptions2", "Could not get path for redirected source entry", v106, v109);
            goto LABEL_274;
          }

          v69 = strdup(v68);
          if (!v69)
          {
            v110 = 1;
            BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 468, "BOMCopierCopyWithOptions2", "Could not duplicate path for redirected source entry", v106, v109);
            goto LABEL_274;
          }

          v70 = v69;
          BOMCopierSourceEntryFree(v55);
          if (BOMCopierSourceSetRedirectCallback(*(a1 + 13024), source_redirection_callback, a1, &v112))
          {
            v110 = 1;
            BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 478, "BOMCopierCopyWithOptions2", "Could not set source redirect callback", v106, v109);
            goto LABEL_273;
          }

          v77 = BOMCopierSourceNext(*(a1 + 13024), &v112, v71, v72, v73, v74, v75, v76);
          v55 = v77;
          if (v112)
          {
            if (v77)
            {
              BOMCopierSourceEntryFree(v77);
            }

            v110 = 1;
            BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 493, "BOMCopierCopyWithOptions2", "Could not copy from %s to %s: %s", a2);
LABEL_273:
            free(v70);
LABEL_274:
            notify_fatal_error(a1, v112);
            goto LABEL_282;
          }

          if (!v77)
          {
            free(v70);
            goto LABEL_263;
          }

          if (BOMCopierSourceEntrySetPath(v77, v70))
          {
            v110 = 1;
            BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 510, "BOMCopierCopyWithOptions2", "Could not set the saved entry path");
            goto LABEL_273;
          }

          free(v70);
        }

        if (*v8 != 1)
        {
          goto LABEL_184;
        }

        if (BOMCopierDestinationSetRedirectCallback(*(a1 + 13040), destination_redirection_callback, a1, &v112))
        {
          v110 = 1;
          BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 530, "BOMCopierCopyWithOptions2", "Could not set destination redirect callback");
          notify_fatal_error(a1, v112);
          goto LABEL_258;
        }

        v78 = *(a1 + 13008);
        if (v78)
        {
          if (os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v113 = 0;
            _os_log_impl(&dword_241C0E000, v78, OS_LOG_TYPE_DEFAULT, "Set destination redirect callback", v113, 2u);
LABEL_184:
            v78 = *(a1 + 13008);
            if (!v78)
            {
              goto LABEL_187;
            }
          }

          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            *v113 = 0;
            _os_log_impl(&dword_241C0E000, v78, OS_LOG_TYPE_DEFAULT, "Copying source entry to destination set", v113, 2u);
          }
        }

LABEL_187:
        v79 = BOMCopierSourceEntryGetPath(v55);
        v80 = *(a1 + 13008);
        if (v80)
        {
          v81 = v79;
          if (os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v113 = 136315138;
            v114 = v81;
            _os_log_impl(&dword_241C0E000, v80, OS_LOG_TYPE_DEFAULT, " %s", v113, 0xCu);
          }
        }

        if (BOMCopierCopySourceEntryToDestinationSet(v55, buf, &v112))
        {
          v110 = 1;
          BOMCopierErrorCapture(&v112, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 550, "BOMCopierCopyWithOptions2", "Could not copy from %s to %s: %s", a2, a3, 0x8200102);
          notify_fatal_file_error(a1, v55, v112);
LABEL_258:
          BOMCopierSourceEntryFree(v55);
          goto LABEL_282;
        }

        CopyOperation = BOMCopierDestinationGetCopyOperation(*v34);
        if (CopyOperation <= 1)
        {
          if (CopyOperation)
          {
            if (CopyOperation != 1)
            {
              goto LABEL_210;
            }

            v83 = *(a1 + 13008);
            if (!v83 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_210;
            }

            *v113 = 0;
            v84 = v83;
            v85 = "Source entry skipped\n";
          }

          else
          {
            v88 = *(a1 + 13008);
            if (!v88 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_210;
            }

            *v113 = 0;
            v84 = v88;
            v85 = "Source entry copied to destination set\n";
          }

          goto LABEL_208;
        }

        if (CopyOperation == 3)
        {
          v87 = *(a1 + 13008);
          if (!v87 || !os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_210;
          }

          *v113 = 0;
          v84 = v87;
          v85 = "Source entry retry?\n";
LABEL_208:
          _os_log_impl(&dword_241C0E000, v84, OS_LOG_TYPE_DEFAULT, v85, v113, 2u);
          goto LABEL_210;
        }

        if (CopyOperation == 2)
        {
          v99 = *(a1 + 13008);
          if (v99 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v113 = 0;
            v100 = "Client cancelled\n";
LABEL_278:
            _os_log_impl(&dword_241C0E000, v99, OS_LOG_TYPE_DEFAULT, v100, v113, 2u);
          }

          goto LABEL_279;
        }

LABEL_210:
        BOMCopierSourceEntryFree(v55);
        if (*(a1 + 168) == 1)
        {
          v101 = *(a1 + 13008);
          if (v101 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
          {
            *v113 = 0;
            v96 = "Client cancelled\n";
            v110 = 2;
            v97 = v101;
            goto LABEL_246;
          }

          goto LABEL_280;
        }
      }
    }
  }

  v98 = *(a1 + 13008);
  if (v98 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
  {
    *v113 = 0;
    _os_log_impl(&dword_241C0E000, v98, OS_LOG_TYPE_DEFAULT, "Source exhausted", v113, 2u);
  }

LABEL_263:
  v104 = *(a1 + 13008);
  if (v8[1451])
  {
    if (v104 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&dword_241C0E000, v104, OS_LOG_TYPE_DEFAULT, "Copy complete but a file error occurred", v113, 2u);
    }

    v105 = 1;
LABEL_281:
    v110 = v105;
  }

  else
  {
    if (v104 && os_log_type_enabled(*(a1 + 13008), OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&dword_241C0E000, v104, OS_LOG_TYPE_DEFAULT, "Copy successful", v113, 2u);
    }

    v110 = 0;
  }

LABEL_282:
  release_copy_state_0(a1);
LABEL_283:
  v14 = v110;
LABEL_250:
  v102 = *MEMORY[0x277D85DE8];
  return v14;
}

void notify_fatal_error(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    Message = BOMCopierErrorGetMessage(a2);
    if (Message)
    {
      v5 = Message;
      v6 = *(a1 + 56);
      if (v6)
      {
        v6(a1, Message);
      }

      v7 = *(a1 + 13008);
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = v5;
        _os_log_impl(&dword_241C0E000, v7, OS_LOG_TYPE_DEFAULT, "fatal error: %s", &v9, 0xCu);
      }
    }

    BOMCopierErrorFree(a2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void release_copy_state_0(uint64_t a1)
{
  v2 = *(a1 + 13056);
  if (v2)
  {
    BOMBomFree(v2);
    *(a1 + 13056) = 0;
  }

  v3 = *(a1 + 13048);
  if (v3)
  {
    BOMBomFree(v3);
    *(a1 + 13048) = 0;
  }

  v4 = *(a1 + 13040);
  if (v4)
  {
    BOMCopierDestinationFree(v4);
    *(a1 + 13040) = 0;
  }

  v5 = *(a1 + 13032);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 13032) = 0;
  }

  v6 = *(a1 + 13024);
  if (v6)
  {
    BOMCopierSourceFree(v6);
    *(a1 + 13024) = 0;
  }

  v7 = *(a1 + 13016);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 13016) = 0;
  }

  *(a1 + 13067) = 0;
}

uint64_t notify_file_error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a3;
    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = v6(a1, a2, a3);
      if (v7 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 13008);
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = a2;
      v15 = 1024;
      v16 = v3;
      v17 = 2080;
      v18 = strerror(v3);
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_241C0E000, v10, OS_LOG_TYPE_DEFAULT, "file error: %s %d (%s) [%u]", &v13, 0x22u);
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void source_redirection_callback(uint64_t a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    v4 = strdup((a3 + 11617));
    if (v4)
    {
      *a2 = v4;
    }
  }
}

void destination_redirection_callback(uint64_t a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    v4 = strdup((a3 + 10592));
    if (v4)
    {
      *a2 = v4;
    }
  }
}

void notify_fatal_file_error(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    ActualPath = BOMCopierSourceEntryGetActualPath(a2);
    Code = BOMCopierErrorGetCode(a3);
    Message = BOMCopierErrorGetMessage(a3);
    v8 = *(a1 + 64);
    if (v8)
    {
      v8(a1, ActualPath, Code);
    }

    v9 = *(a1 + 13008);
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = ActualPath;
      v13 = 1024;
      v14 = Code;
      v15 = 2080;
      v16 = strerror(Code);
      v17 = 2080;
      v18 = Message;
      _os_log_impl(&dword_241C0E000, v9, OS_LOG_TYPE_DEFAULT, "fatal file error: %s %d (%s) [%s]", &v11, 0x26u);
    }

    BOMCopierErrorFree(a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t parse_copier_options(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v239 = *MEMORY[0x277D85DE8];
  TypeID = CFBooleanGetTypeID();
  v7 = CFStringGetTypeID();
  v237 = CFDictionaryGetTypeID();
  v8 = CFNumberGetTypeID();
  v9 = CFWriteStreamGetTypeID();
  v10 = CFReadStreamGetTypeID();
  v236 = CFArrayGetTypeID();
  v11 = CFDataGetTypeID();
  *(a1 + 12712) = 0x300000000;
  Value = CFDictionaryGetValue(a2, @"inputFD");
  if (Value)
  {
    v13 = Value;
    if (v8 != CFGetTypeID(Value))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 972, "parse_copier_options", "kBOMCopierOptionInputFileDescriptorKey must be a CFNumberRef");
      goto LABEL_489;
    }

    CFDictionarySetValue(*(a1 + 13016), @"inputFD", v13);
  }

  v14 = CFDictionaryGetValue(a2, @"zipFileEncryptionKey");
  if (v14)
  {
    v15 = v14;
    if (v7 != CFGetTypeID(v14))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1005, "parse_copier_options", "kBOMCopierOptionEncryptionKey must be a CFStringRef");
      goto LABEL_489;
    }

    CFDictionarySetValue(*(a1 + 13016), @"passphrase", v15);
  }

  v235 = v11;
  v16 = CFDictionaryGetValue(a2, @"extractCPIO");
  if (v16)
  {
    v17 = v16;
    if (TypeID != CFGetTypeID(v16))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1063, "parse_copier_options", "kBOMCopierOptionExtractCPIOKey must be a CFBooleanRef");
      goto LABEL_489;
    }

    v18 = *MEMORY[0x277CBED28];
    if (CFEqual(v17, *MEMORY[0x277CBED28]) == 1)
    {
      *(a1 + 12712) = 1;
      CFDictionarySetValue(*(a1 + 13016), @"extractLibarchive", v18);
      CFDictionarySetValue(*(a1 + 13016), @"replaySymlinks", v18);
      CFDictionarySetValue(*(a1 + 13016), @"replayDirectories", v18);
    }
  }

  v19 = CFDictionaryGetValue(a2, @"createCPIO");
  if (v19)
  {
    v20 = v19;
    if (TypeID != CFGetTypeID(v19))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1125, "parse_copier_options", "kBOMCopierOptionCreateCPIOKey must be a CFBooleanRef");
      goto LABEL_489;
    }

    CFDictionarySetValue(*(a1 + 13032), @"createArchive", v20);
    if (CFEqual(v20, *MEMORY[0x277CBED28]) == 1)
    {
      *(a1 + 12716) = 4;
    }
  }

  v21 = CFDictionaryGetValue(a2, @"compressCPIO");
  if (!v21)
  {
LABEL_34:
    v27 = CFDictionaryGetValue(a2, @"extractPKZip");
    if (v27)
    {
      v28 = v27;
      if (TypeID != CFGetTypeID(v27))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1274, "parse_copier_options", "kBOMCopierOptionExtractPKZipKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      v29 = *MEMORY[0x277CBED28];
      if (CFEqual(v28, *MEMORY[0x277CBED28]) == 1)
      {
        if (*(a1 + 12712))
        {
          v222 = *(a1 + 12712);
          v24 = 22;
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1282, "parse_copier_options", "The source type has already been assigned to %d");
          goto LABEL_489;
        }

        *(a1 + 12712) = 2;
        CFDictionarySetValue(*(a1 + 13016), @"extractDataArchive", v29);
        CFDictionarySetValue(*(a1 + 13016), @"enforceArchiveEntryPermissions", v29);
      }
    }

    v30 = CFDictionaryGetValue(a2, @"createPKZip");
    if (v30)
    {
      v31 = v30;
      if (TypeID != CFGetTypeID(v30))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1328, "parse_copier_options", "kBOMCopierOptionExtractPKZipKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      CFDictionarySetValue(*(a1 + 13032), @"createArchive", v31);
      if (CFEqual(v31, *MEMORY[0x277CBED28]) == 1)
      {
        if (*(a1 + 12716) != 3)
        {
          v223 = *(a1 + 12716);
          v24 = 22;
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1338, "parse_copier_options", "The destination type has already been assigned to %d");
          goto LABEL_489;
        }

        *(a1 + 12716) = 5;
        CFDictionarySetValue(*(a1 + 13016), @"excludeRootDirectory", v31);
        *valuePtr = 327680;
        v32 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
        if (!v32)
        {
          v24 = 1;
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1359, "parse_copier_options", "Could not create CFNumber from %d");
          goto LABEL_489;
        }

        v33 = v32;
        CFDictionarySetValue(*(a1 + 13032), @"libarchiveFormat", v32);
        CFRelease(v33);
      }
    }

    v34 = CFDictionaryGetValue(a2, @"createAppleArchive");
    if (v34)
    {
      v35 = v34;
      if (TypeID != CFGetTypeID(v34))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1377, "parse_copier_options", "kBOMCopierOptionCreateAppleArchiveKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      CFDictionarySetValue(*(a1 + 13032), @"createAppleArchive", v35);
      if (CFEqual(v35, *MEMORY[0x277CBED28]) == 1)
      {
        if (*(a1 + 12716) != 3)
        {
          v224 = *(a1 + 12716);
          v24 = 22;
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1387, "parse_copier_options", "The destination type has already been assigned to %d");
          goto LABEL_489;
        }

        *(a1 + 12716) = 6;
      }
    }

    v36 = CFDictionaryGetValue(a2, @"compressAppleArchive");
    if (v36)
    {
      v37 = v36;
      if (v7 != CFGetTypeID(v36))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1400, "parse_copier_options", "kBOMCopierOptionCompressAppleArchiveKey must be a CFStringRef");
        goto LABEL_489;
      }

      CFDictionarySetValue(*(a1 + 13032), @"compressAppleArchive", v37);
    }

    v38 = CFDictionaryGetValue(a2, @"extractAppleArchive");
    if (v38)
    {
      v39 = v38;
      if (TypeID != CFGetTypeID(v38))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1412, "parse_copier_options", "kBOMCopierOptionExtractAppleArchiveKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      CFDictionarySetValue(*(a1 + 13016), @"extractAppleArchive", v39);
      if (CFEqual(v39, *MEMORY[0x277CBED28]) == 1)
      {
        if (*(a1 + 12712))
        {
          v40 = *(a1 + 12716);
          v24 = 22;
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1422, "parse_copier_options", "The source type has already been assigned to %d");
          goto LABEL_489;
        }

        *(a1 + 12712) = 3;
      }
    }

    v41 = CFDictionaryGetValue(a2, @"crossDevices");
    if (v41)
    {
      v42 = v41;
      if (TypeID != CFGetTypeID(v41))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1457, "parse_copier_options", "kBOMCopierSourceOptionUseFilesystemCacheKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      CFDictionarySetValue(*(a1 + 13016), @"crossDevices", v42);
    }

    v43 = CFDictionaryGetValue(a2, @"useFilesystemCache");
    if (v43)
    {
      v44 = v43;
      if (TypeID != CFGetTypeID(v43))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1502, "parse_copier_options", "kBOMCopierOptionUseFilesystemCacheKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      CFDictionarySetValue(*(a1 + 13016), @"useFilesystemCache", v44);
      CFDictionarySetValue(*(a1 + 13032), @"useFilesystemCache", v44);
    }

    v45 = CFDictionaryGetValue(a2, @"applySourcePermissions");
    if (v45)
    {
      v46 = v45;
      if (TypeID != CFGetTypeID(v45))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1541, "parse_copier_options", "kBOMCopierOptionApplySourcePermissionsKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      CFDictionarySetValue(*(a1 + 13032), @"applySourcePermissions", v46);
    }

    v47 = CFDictionaryGetValue(a2, @"copyResources");
    if (v47)
    {
      v48 = v47;
      if (TypeID != CFGetTypeID(v47))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1601, "parse_copier_options", "kBOMCopierOptionCopyResourcesKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      v49 = CFEqual(*MEMORY[0x277CBED28], v48) != 0;
    }

    else
    {
      v49 = 0;
    }

    v50 = CFDictionaryGetValue(a2, @"copyExtendedAttributes");
    if (v50)
    {
      v51 = v50;
      if (TypeID != CFGetTypeID(v50))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1642, "parse_copier_options", "kBOMCopierOptionCopyExtendedAttributesKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      buffer = CFEqual(*MEMORY[0x277CBED28], v51) != 0;
    }

    else
    {
      buffer = 0;
    }

    v52 = CFDictionaryGetValue(a2, @"copyACLs");
    if (v52)
    {
      v53 = v52;
      if (TypeID != CFGetTypeID(v52))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1683, "parse_copier_options", "kBOMCopierOptionCopyACLsKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      v232 = CFEqual(*MEMORY[0x277CBED28], v53) != 0;
    }

    else
    {
      v232 = 0;
    }

    v54 = CFDictionaryGetValue(a2, @"sequesterResources");
    v55 = v54;
    if (v54)
    {
      if (TypeID != CFGetTypeID(v54))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1720, "parse_copier_options", "kBOMCopierOptionSequesterResourcesKey must be a CFBooleanRef");
        goto LABEL_489;
      }

      LODWORD(v55) = CFEqual(*MEMORY[0x277CBED28], v55) != 0;
    }

    v56 = *(a1 + 12712);
    v57 = *(a1 + 12716);
    if (v56)
    {
      if (v57 != 3)
      {
        v229 = 0;
        v230 = 0uLL;
        v226 = 0;
        v227 = 0uLL;
        v228 = 0;
        LODWORD(v55) = 0;
        v231 = 0;
LABEL_120:
        v59 = getenv("BOMCOPIER_LOG_OPTION_RESULTS");
        if (!v59)
        {
          goto LABEL_123;
        }

        if (*v59 != 49)
        {
          goto LABEL_123;
        }

        if (v59[1])
        {
          goto LABEL_123;
        }

        v108 = *(a1 + 13008);
        if (!v108)
        {
          goto LABEL_123;
        }

        log = *(a1 + 13008);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          v109 = "false";
          if (v49)
          {
            v109 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v109;
          _os_log_impl(&dword_241C0E000, log, OS_LOG_TYPE_DEFAULT, "copy_resources: %s", valuePtr, 0xCu);
          v110 = *(a1 + 13008);
          if (!v110)
          {
LABEL_123:
            if (v231)
            {
              CFDictionarySetValue(*(a1 + 13016), @"discoverResourceAttribute", *MEMORY[0x277CBED28]);
            }

            if (HIDWORD(v230))
            {
              CFDictionarySetValue(*(a1 + 13016), @"discoverExtendedAttributes", *MEMORY[0x277CBED28]);
            }

            if (DWORD2(v230))
            {
              CFDictionarySetValue(*(a1 + 13016), @"discoverACLs", *MEMORY[0x277CBED28]);
            }

            if (BYTE4(v230))
            {
              CFDictionarySetValue(*(a1 + 13016), @"synthesizeAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (v230)
            {
              CFDictionarySetValue(*(a1 + 13016), @"appleDoublesCaptureResourceAttributes", *MEMORY[0x277CBED28]);
            }

            if ((v229 & 0x100000000) != 0)
            {
              CFDictionarySetValue(*(a1 + 13016), @"appleDoublesCaptureExtendedAttributes", *MEMORY[0x277CBED28]);
            }

            if (v229)
            {
              CFDictionarySetValue(*(a1 + 13016), @"appleDoublesCaptureACLs", *MEMORY[0x277CBED28]);
            }

            if (HIDWORD(v228))
            {
              CFDictionarySetValue(*(a1 + 13016), @"deferAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (v228)
            {
              CFDictionarySetValue(*(a1 + 13016), @"replayAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (HIDWORD(v227))
            {
              CFDictionarySetValue(*(a1 + 13016), @"appleDoubleSuffix", @"__");
            }

            if (DWORD2(v227))
            {
              CFDictionarySetValue(*(a1 + 13032), @"appleDoubleMergeACLs", *MEMORY[0x277CBED28]);
            }

            if (BYTE4(v227))
            {
              CFDictionarySetValue(*(a1 + 13016), @"ignoreAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (v227)
            {
              CFDictionarySetValue(*(a1 + 13016), @"sequesterAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (v55)
            {
              CFDictionarySetValue(*(a1 + 13016), @"unsequesterAppleDoubles", *MEMORY[0x277CBED28]);
            }

            if (HIDWORD(v226))
            {
              CFDictionarySetValue(*(a1 + 13016), @"reorderExtraEntries", *MEMORY[0x277CBED28]);
            }

            if (v226)
            {
              CFDictionarySetValue(*(a1 + 13016), @"replayExtraAppleDoubles", *MEMORY[0x277CBED28]);
            }

            v60 = CFDictionaryGetValue(a2, @"copyQuarantine");
            if (v60)
            {
              v61 = v60;
              if (TypeID != CFGetTypeID(v60))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2048, "parse_copier_options", "kBOMCopierOptionCopyQuarantineKey must be a CFBooleanRef");
                goto LABEL_489;
              }

              CFDictionarySetValue(*(a1 + 13016), @"discoverQuarantine", v61);
            }

            v62 = CFDictionaryGetValue(a2, @"quarantineFilePath");
            if (v62)
            {
              v63 = v62;
              if (v7 != CFGetTypeID(v62))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2089, "parse_copier_options", "kBOMCopierOptionCopyQuarantineKey must be a CFStringRef");
                goto LABEL_489;
              }

              CFDictionarySetValue(*(a1 + 13016), @"replayQuarantineFromPath", v63);
            }

            v64 = CFDictionaryGetValue(a2, @"useHFSPlusCompression");
            if (v64)
            {
              v65 = v64;
              if (TypeID != CFGetTypeID(v64))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2121, "parse_copier_options", "kBOMCopierOptionUseHFSPlusCompressionKey must be a CFBooleanRef");
                goto LABEL_489;
              }

              CFDictionarySetValue(*(a1 + 13032), @"useAppleFSCompression", v65);
            }

            v66 = CFDictionaryGetValue(a2, @"preserveHFSPlusCompression");
            if (v66)
            {
              v67 = v66;
              if (TypeID != CFGetTypeID(v66))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2152, "parse_copier_options", "kBOMCopierOptionPreserveHFSPlusCompressionKey must be a CFBooleanRef");
                goto LABEL_489;
              }

              CFDictionarySetValue(*(a1 + 13016), @"discoverCompressionAttributes", v67);
              CFDictionarySetValue(*(a1 + 13032), @"preserveAppleFSCompression", v67);
            }

            v68 = CFDictionaryGetValue(a2, @"hfsPlusCompressionOptions");
            if (v68)
            {
              v69 = v68;
              if (v237 != CFGetTypeID(v68))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2185, "parse_copier_options", "kBOMCopierOptionPreserveHFSPlusCompressionKey must be a CFBooleanRef");
                goto LABEL_489;
              }

              v70 = CFDictionaryGetValue(v69, @"CompressionTypes");
              if (v70)
              {
                v71 = v70;
                if (v8 != CFGetTypeID(v70))
                {
                  v24 = 22;
                  BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2206, "parse_copier_options", "CompressionTypes must be a CFNumberRef");
                  goto LABEL_489;
                }

                CFDictionarySetValue(*(a1 + 13032), @"AppleFSCompressionType", v71);
              }
            }

            v72 = CFDictionaryGetValue(a2, @"indexbom");
            if (v72)
            {
              v73 = v72;
              if (v7 != CFGetTypeID(v72))
              {
                v24 = 22;
                BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2252, "parse_copier_options", "kBOMCopierOptionIndexBomKey must be a CFStringRef");
                goto LABEL_489;
              }

              v74 = CFStringGetLength(v73) + 1;
              buffera = malloc_type_calloc(1uLL, v74, 0xCC30406BuLL);
              if (!buffera)
              {
                v126 = *__error();
                BOMCopierErrorCapture(a3, v126, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2267, "parse_copier_options", "Could not allocate %ld bytes for kBOMCopierOptionIndexBomKey");
                goto LABEL_292;
              }

              if (!CFStringGetCString(v73, buffera, v74, 0x8000100u))
              {
                v24 = 1;
                BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2274, "parse_copier_options", "Could not convert kBOMCopierOptionIndexBomKey to UTF8 C string");
                goto LABEL_314;
              }

              v75 = BOMBomOpenWithSys(buffera, 0, 0);
              *(a1 + 13048) = v75;
              if (!v75)
              {
                v140 = buffera;
                v24 = 1;
                BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2282, "parse_copier_options", "Could not open allow bom at %s");
LABEL_330:
                v147 = v140;
                goto LABEL_331;
              }

              free(buffera);
            }

            v76 = CFDictionaryGetValue(a2, @"skipbom");
            if (!v76)
            {
              goto LABEL_184;
            }

            v77 = v76;
            if (v7 != CFGetTypeID(v76))
            {
              v24 = 22;
              BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2319, "parse_copier_options", "kBOMCopierOptionSkipBomKey must be a CFStringRef");
              goto LABEL_489;
            }

            v78 = CFStringGetLength(v77) + 1;
            buffera = malloc_type_calloc(1uLL, v78, 0x2DD6FBF1uLL);
            if (buffera)
            {
              if (CFStringGetCString(v77, buffera, v78, 0x8000100u))
              {
                v79 = BOMBomOpenWithSys(buffera, 0, 0);
                *(a1 + 13056) = v79;
                if (v79)
                {
                  free(buffera);
LABEL_184:
                  v80 = CFDictionaryGetValue(a2, @"verifyFileDataPerIndexBom");
                  if (v80)
                  {
                    v81 = v80;
                    if (TypeID != CFGetTypeID(v80))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2381, "parse_copier_options", "kBOMCopierOptionVerifyFileDataPerIndexBomKey must be a CFStringRef");
                      goto LABEL_489;
                    }

                    *(a1 + 13065) = CFEqual(v81, *MEMORY[0x277CBED28]) != 0;
                  }

                  v82 = CFDictionaryGetValue(a2, @"outputFD");
                  if (v82)
                  {
                    v83 = v82;
                    if (v8 != CFGetTypeID(v82))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2416, "parse_copier_options", "kBOMCopierOptionOutputFileDescriptorKey must be a CFNumberRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"outputFD", v83);
                  }

                  v84 = CFDictionaryGetValue(a2, @"outputStream");
                  if (v84)
                  {
                    v85 = v84;
                    if (v9 != CFGetTypeID(v84))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2446, "parse_copier_options", "kBOMCopierOptionOutputCFWriteStreamKey must be a CFWriteStream");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"outputStream", v85);
                  }

                  v86 = CFDictionaryGetValue(a2, @"inputStream");
                  if (v86)
                  {
                    v87 = v86;
                    if (v10 != CFGetTypeID(v86))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2477, "parse_copier_options", "kBOMCopierOptionInputCFReadStreamKey must be a CFReadStream");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"inputStream", v87);
                  }

                  v88 = CFDictionaryGetValue(a2, @"archs");
                  if (v88)
                  {
                    v89 = v88;
                    if (v236 != CFGetTypeID(v88))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2552, "parse_copier_options", "kBOMCopierOptionArchitectureArrayKey must be a CFArrayRef");
                      goto LABEL_489;
                    }

                    if (!CFArrayGetCount(v89))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2560, "parse_copier_options", "kBOMCopierOptionArchitectureArrayKey is empty");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"discoverBinaries", *MEMORY[0x277CBED28]);
                    CFDictionarySetValue(*(a1 + 13032), @"archs", v89);
                  }

                  v90 = CFDictionaryGetValue(a2, @"fallbackForSubtype");
                  if (v90)
                  {
                    v91 = v90;
                    if (v237 != CFGetTypeID(v90))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2599, "parse_copier_options", "kBOMCopierOptionArchitectureFallbackKey must be a CFDictionaryRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"fallbackForSubtype", v91);
                  }

                  v92 = CFDictionaryGetValue(a2, @"keepBinaries");
                  if (v92)
                  {
                    v93 = v92;
                    if (TypeID != CFGetTypeID(v92))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2638, "parse_copier_options", "kBOMCopierOptionKeepBinariesKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"discoverBinaries", v93);
                    CFDictionarySetValue(*(a1 + 13032), @"keepBinaries", v93);
                  }

                  v94 = CFDictionaryGetValue(a2, @"keepBinariesList");
                  if (v94)
                  {
                    v95 = v94;
                    if (v7 != CFGetTypeID(v94))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2670, "parse_copier_options", "kBOMCopierOptionKeepBinariesListKey must be a CFStringRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"keptFileList", v95);
                  }

                  v96 = CFDictionaryGetValue(a2, @"keepBinariesPattern");
                  if (v96)
                  {
                    v97 = v96;
                    if (v7 != CFGetTypeID(v96))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2701, "parse_copier_options", "kBOMCopierOptionKeepBinariesPatternKey must be a CFStringRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"keepFilePattern", v97);
                  }

                  v98 = CFDictionaryGetValue(a2, @"keepBinariesDir");
                  if (v98)
                  {
                    v99 = v98;
                    if (v7 != CFGetTypeID(v98))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2721, "parse_copier_options", "kBOMCopierOptionKeepBinariesDirKey must be a CFStringRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"keptFileDirectory", v99);
                    CFDictionarySetValue(*(a1 + 13032), @"balanceKeptFiles", *MEMORY[0x277CBED28]);
                    *valuePtr = 50;
                    v100 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
                    if (!v100)
                    {
                      v24 = 1;
                      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2734, "parse_copier_options", "Could not create CFNumber from %d");
                      goto LABEL_489;
                    }

                    v101 = v100;
                    CFDictionarySetValue(*(a1 + 13032), @"keptFileBalanceLimit", v100);
                    CFRelease(v101);
                  }

                  v102 = CFDictionaryGetValue(a2, @"keepParent");
                  if (v102)
                  {
                    v103 = v102;
                    if (TypeID != CFGetTypeID(v102))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2787, "parse_copier_options", "kBOMCopierOptionKeepParentKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"keepParent", v103);
                  }

                  v104 = CFDictionaryGetValue(a2, @"zlibCompressionLevel");
                  if (v104)
                  {
                    v105 = v104;
                    if (v8 != CFGetTypeID(v104))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2822, "parse_copier_options", "kBOMCopierOptionZlibCompressionLevel must be a CFNumberRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"zlibCompressionLevel", v105);
                  }

                  v106 = CFDictionaryGetValue(a2, @"compress");
                  if (v106)
                  {
                    v107 = v106;
                    if (v7 != CFGetTypeID(v106))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2851, "parse_copier_options", "kBOMCopierOptionCompressDeprecatedKey must be a CFStringRef");
                      goto LABEL_489;
                    }

                    *valuePtr = 1;
                    if (CFEqual(v107, @"none") == 1)
                    {
                      *valuePtr = 0;
                    }

                    else
                    {
                      if (CFEqual(v107, @"auto") == 1 || CFEqual(v107, @"gzip") == 1)
                      {
                        v166 = 1;
                      }

                      else
                      {
                        if (CFEqual(v107, @"bzip2") != 1)
                        {
                          v24 = 22;
                          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2871, "parse_copier_options", "Unknown deprecated compression option");
                          goto LABEL_489;
                        }

                        v166 = 2;
                      }

                      *valuePtr = v166;
                    }

                    v167 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
                    if (!v167)
                    {
                      v24 = 1;
                      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2878, "parse_copier_options", "Could not create CFNumber from %d");
                      goto LABEL_489;
                    }

                    v168 = v167;
                    CFDictionarySetValue(*(a1 + 13032), @"libarchiveFilter", v167);
                    CFRelease(v168);
                  }

                  v169 = CFDictionaryGetValue(a2, @"symlinkTreatment");
                  if (v169)
                  {
                    v170 = v169;
                    if (v7 != CFGetTypeID(v169))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2925, "parse_copier_options", "kBOMCopierOptionSymlinkTreatmentKey must be a CFStringRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"symlinkTreatment", v170);
                  }

                  v171 = CFDictionaryGetValue(a2, @"enforceDestinationEncapsulation");
                  if (v171)
                  {
                    v172 = v171;
                    if (TypeID != CFGetTypeID(v171))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2964, "parse_copier_options", "kBOMCopierOptionEnforceDestinationEncapsulationKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"enforceDestinationEncapsulation", v172);
                  }

                  v173 = CFDictionaryGetValue(a2, @"enforceDestinationLocation");
                  if (v173)
                  {
                    v174 = v173;
                    if (TypeID != CFGetTypeID(v173))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2988, "parse_copier_options", "kBOMCopierOptionEnforceDestinationLocationKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"enforceDestinationLocation", v174);
                  }

                  v175 = CFDictionaryGetValue(a2, @"nonatomicCopy");
                  if (v175)
                  {
                    v176 = v175;
                    if (TypeID != CFGetTypeID(v175))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3037, "parse_copier_options", "kBOMCopierOptionNonAtomicCopyKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    v177 = *MEMORY[0x277CBED28];
                    if (CFEqual(v176, *MEMORY[0x277CBED28]) == 1)
                    {
                      CFDictionarySetValue(*(a1 + 13016), @"replaySymlinks", v177);
                      CFDictionarySetValue(*(a1 + 13032), @"enableAtomicCopies", *MEMORY[0x277CBED10]);
                    }
                  }

                  v178 = CFDictionaryGetValue(a2, @"applyIndexBomOwnership");
                  if (v178)
                  {
                    v179 = v178;
                    if (TypeID != CFGetTypeID(v178))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3076, "parse_copier_options", "kBOMCopierOptionApplyIndexBomOwnershipKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"applyBomOwnership", v179);
                    if (*(a1 + 13048))
                    {
                      CFDictionarySetValue(*(a1 + 13016), @"useEnumerationBom", v179);
                      CFDictionarySetValue(*(a1 + 13016), @"allowAccessFailures", v179);
                      *(a1 + 13064) = CFEqual(v179, *MEMORY[0x277CBED28]) != 0;
                    }
                  }

                  v180 = CFDictionaryGetValue(a2, @"sourceIsAppSandboxed");
                  if (v180)
                  {
                    v181 = v180;
                    if (TypeID != CFGetTypeID(v180))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3124, "parse_copier_options", "kBOMCopierOptionSourceIsAppSandboxed must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    if (*(a1 + 13048))
                    {
                      CFDictionarySetValue(*(a1 + 13016), @"useEnumerationBom", v181);
                      CFDictionarySetValue(*(a1 + 13016), @"allowAccessFailures", v181);
                      *(a1 + 13064) = CFEqual(v181, *MEMORY[0x277CBED28]) != 0;
                    }
                  }

                  v182 = CFDictionaryGetValue(a2, @"persistRestrictedFlags");
                  if (v182)
                  {
                    v183 = v182;
                    if (TypeID != CFGetTypeID(v182))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3169, "parse_copier_options", "kBOMCopierOptionPersistRestrictedFlagsKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"persistRestrictedFlags", v183);
                  }

                  v184 = CFDictionaryGetValue(a2, @"preserveRestrictedFlags");
                  if (v184)
                  {
                    v185 = v184;
                    if (TypeID != CFGetTypeID(v184))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3200, "parse_copier_options", "kBOMCopierOptionPreserveRestrictedFlagsKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"preserveRestrictedFlags", v185);
                  }

                  v186 = CFDictionaryGetValue(a2, @"persistRootlessEAs");
                  if (v186)
                  {
                    v187 = v186;
                    if (TypeID != CFGetTypeID(v186))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3233, "parse_copier_options", "kBOMCopierOptionPersistRootlessExtendedAttributesKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"persistRootless", v187);
                  }

                  v188 = CFDictionaryGetValue(a2, @"initialCPIOInode");
                  if (v188)
                  {
                    v189 = v188;
                    if (v8 != CFGetTypeID(v188))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3266, "parse_copier_options", "kBOMCopierOptionInitialCPIOInodeRootKey must be a CFNumberRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"initialInode", v189);
                  }

                  v190 = CFDictionaryGetValue(a2, @"skipCPIORoot");
                  if (v190)
                  {
                    v191 = v190;
                    if (TypeID != CFGetTypeID(v190))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3298, "parse_copier_options", "kBOMCopierOptionSkipCPIORootKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"skipRootDirectory", v191);
                  }

                  v192 = CFDictionaryGetValue(a2, @"skipCPIOTerminator");
                  if (v192)
                  {
                    v193 = v192;
                    if (TypeID != CFGetTypeID(v192))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3326, "parse_copier_options", "kBOMCopierOptionSkipCPIOTerminatorKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"skipTerminator", v193);
                  }

                  v194 = CFDictionaryGetValue(a2, @"segmentLargeFiles");
                  if (v194)
                  {
                    v195 = v194;
                    if (TypeID != CFGetTypeID(v194))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3364, "parse_copier_options", "kBOMCopierOptionSegmentLargeFilesKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13016), @"discoverSegmentedFiles", v195);
                    if (CFEqual(v195, *MEMORY[0x277CBED28]) == 1)
                    {
                      *valuePtr = 0x40000000;
                      v196 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
                      if (!v196)
                      {
                        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3377, "parse_copier_options", "Could not create number for %lld");
                        goto LABEL_452;
                      }

                      v197 = v196;
                      CFDictionarySetValue(*(a1 + 13016), @"segmentFileSize", v196);
                      CFDictionarySetValue(*(a1 + 13032), @"segmentFileSize", v197);
                      CFRelease(v197);
                    }
                  }

                  v198 = CFDictionaryGetValue(a2, @"enableLogging");
                  if (v198)
                  {
                    v199 = v198;
                    if (TypeID != CFGetTypeID(v198))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3394, "parse_copier_options", "kBOMCopierOptionEnableLogging must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    *(a1 + 13066) = CFEqual(*MEMORY[0x277CBED28], v199) != 0;
                  }

                  v200 = CFDictionaryGetValue(a2, @"output2Nowhere");
                  if (v200)
                  {
                    v201 = v200;
                    if (TypeID != CFGetTypeID(v200))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3406, "parse_copier_options", "kBOMCopierOptionOutputNowhereKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"output2Nowhere", v201);
                  }

                  v202 = CFDictionaryGetValue(a2, @"cloneFiles");
                  if (v202)
                  {
                    v203 = v202;
                    if (TypeID != CFGetTypeID(v202))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3418, "parse_copier_options", "kBOMCopierOptionCloneFiles must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    if (CFEqual(v203, *MEMORY[0x277CBED28]) == 1)
                    {
                      if (*(a1 + 12712))
                      {
                        v24 = 22;
                        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3426, "parse_copier_options", "kBOMCopierOptionCloneFiles requires the source to be a filesystem");
                        goto LABEL_489;
                      }

                      if (*(a1 + 12716) != 3)
                      {
                        v24 = 22;
                        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3432, "parse_copier_options", "kBOMCopierOptionCloneFiles requires the destination to be a filesystem");
                        goto LABEL_489;
                      }

                      CFDictionarySetValue(*(a1 + 13032), @"cloneFiles", v203);
                    }
                  }

                  v204 = CFDictionaryGetValue(a2, @"removeSetuidPermissions");
                  if (v204)
                  {
                    v205 = v204;
                    if (TypeID != CFGetTypeID(v204))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3445, "parse_copier_options", "kBOMCopierOptionRemoveSetuidPermissionsKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"removeSetuidPermissions", v205);
                  }

                  v206 = CFDictionaryGetValue(a2, @"removeExecutablePermissions");
                  if (v206)
                  {
                    v207 = v206;
                    if (TypeID != CFGetTypeID(v206))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3457, "parse_copier_options", "kBOMCopierOptionRemoveSetuidPermissionsKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"removeExecutablePermissions", v207);
                  }

                  v208 = CFDictionaryGetValue(a2, @"setStaticContent");
                  if (v208)
                  {
                    v209 = v208;
                    if (TypeID != CFGetTypeID(v208))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3469, "parse_copier_options", "kBOMCopierOptionSetStaticContentKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"setStaticContent", v209);
                  }

                  v210 = CFDictionaryGetValue(a2, @"setSingleWriter");
                  if (v210)
                  {
                    v211 = v210;
                    if (TypeID != CFGetTypeID(v210))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3481, "parse_copier_options", "kBOMCopierOptionSetSingleWriterKey must be a CFBooleanRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"setSingleWriter", v211);
                  }

                  v212 = CFDictionaryGetValue(a2, @"setDataProtectionClass");
                  if (v212)
                  {
                    v213 = v212;
                    if (v7 != CFGetTypeID(v212))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3493, "parse_copier_options", "kBOMCopierOptionSetDataProtectionClassKey must be a CFStringRef");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"setDataProtectionClass", v213);
                  }

                  v214 = CFDictionaryGetValue(a2, @"applyProvenance");
                  if (v214)
                  {
                    v215 = v214;
                    if (v235 != CFGetTypeID(v214))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3505, "parse_copier_options", "kBOMCopierOptionApplyProvenanceKey must be a CFDataRef");
                      goto LABEL_489;
                    }

                    if (!CFDataGetLength(v215))
                    {
                      v24 = 22;
                      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3513, "parse_copier_options", "kBOMCopierOptionApplyProvenanceKey has an invalid size");
                      goto LABEL_489;
                    }

                    CFDictionarySetValue(*(a1 + 13032), @"applyProvenance", v215);
                  }

                  v216 = CFDictionaryGetValue(a2, @"injectAppleDoubleBetweenSegmentedFiles");
                  if (!v216)
                  {
                    goto LABEL_479;
                  }

                  v217 = v216;
                  if (TypeID != CFGetTypeID(v216))
                  {
                    v24 = 22;
                    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3525, "parse_copier_options", "kBOMCopierOptionInjectAppleDoubleBetweenSegmentedFilesKey must be a CFBooleanRef");
                    goto LABEL_489;
                  }

                  CFDictionarySetValue(*(a1 + 13016), @"injectAppleDoubleBetweenSegmentedFiles", v217);
                  if (CFEqual(v217, *MEMORY[0x277CBED28]) != 1)
                  {
LABEL_479:
                    v24 = 0;
                    goto LABEL_489;
                  }

                  *valuePtr = 0x40000000;
                  v218 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
                  if (v218)
                  {
                    v219 = v218;
                    CFDictionarySetValue(*(a1 + 13016), @"segmentFileSize", v218);
                    CFRelease(v219);
                    goto LABEL_479;
                  }

                  BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3544, "parse_copier_options", "Could not create number for %lld");
LABEL_452:
                  v24 = 22;
                  goto LABEL_489;
                }

                v140 = buffera;
                v24 = 1;
                BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2349, "parse_copier_options", "Could not open deny bom at %s");
                goto LABEL_330;
              }

              v24 = 1;
              BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2341, "parse_copier_options", "Could not convert kBOMCopierOptionIndexBomKey to UTF8 C string");
LABEL_314:
              v147 = buffera;
LABEL_331:
              free(v147);
              goto LABEL_489;
            }

            v136 = *__error();
            BOMCopierErrorCapture(a3, v136, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 2334, "parse_copier_options", "Could not allocate %ld bytes for kBOMCopierOptionIndexBomKey");
LABEL_292:
            v24 = 1;
            goto LABEL_489;
          }
        }

        else
        {
          v110 = log;
        }

        v111 = v110;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          v112 = "false";
          if (buffer)
          {
            v112 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v112;
          _os_log_impl(&dword_241C0E000, v111, OS_LOG_TYPE_DEFAULT, "copy_extended_attributes: %s", valuePtr, 0xCu);
          v113 = *(a1 + 13008);
          if (!v113)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v113 = v111;
        }

        v114 = v113;
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          v115 = "false";
          if (v232)
          {
            v115 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v115;
          _os_log_impl(&dword_241C0E000, v114, OS_LOG_TYPE_DEFAULT, "copy_acls: %s", valuePtr, 0xCu);
          v116 = *(a1 + 13008);
          if (!v116)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v116 = v114;
        }

        v117 = v116;
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          v118 = "false";
          if (v231)
          {
            v118 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v118;
          _os_log_impl(&dword_241C0E000, v117, OS_LOG_TYPE_DEFAULT, " discover_resource_attributes: %s", valuePtr, 0xCu);
          v119 = *(a1 + 13008);
          if (!v119)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v119 = v117;
        }

        v120 = v119;
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
        {
          v121 = "false";
          if (HIDWORD(v230))
          {
            v121 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v121;
          _os_log_impl(&dword_241C0E000, v120, OS_LOG_TYPE_DEFAULT, " discover_extended_attributes: %s", valuePtr, 0xCu);
          v122 = *(a1 + 13008);
          if (!v122)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v122 = v120;
        }

        v123 = v122;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          v124 = "false";
          if (DWORD2(v230))
          {
            v124 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v124;
          _os_log_impl(&dword_241C0E000, v123, OS_LOG_TYPE_DEFAULT, " discover_acls: %s", valuePtr, 0xCu);
          v125 = *(a1 + 13008);
          if (!v125)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v125 = v123;
        }

        v127 = v125;
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v128 = "false";
          if (BYTE4(v230))
          {
            v128 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v128;
          _os_log_impl(&dword_241C0E000, v127, OS_LOG_TYPE_DEFAULT, " synthesize_apple_doubles: %s", valuePtr, 0xCu);
          v129 = *(a1 + 13008);
          if (!v129)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v129 = v127;
        }

        v130 = v129;
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          v131 = "false";
          if (v230)
          {
            v131 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v131;
          _os_log_impl(&dword_241C0E000, v130, OS_LOG_TYPE_DEFAULT, " capture_resource_attributes: %s", valuePtr, 0xCu);
          v132 = *(a1 + 13008);
          if (!v132)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v132 = v130;
        }

        v133 = v132;
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          v134 = "false";
          if ((v229 & 0x100000000) != 0)
          {
            v134 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v134;
          _os_log_impl(&dword_241C0E000, v133, OS_LOG_TYPE_DEFAULT, " capture_extended_attributes: %s", valuePtr, 0xCu);
          v135 = *(a1 + 13008);
          if (!v135)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v135 = v133;
        }

        v137 = v135;
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          v138 = "false";
          if (v229)
          {
            v138 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v138;
          _os_log_impl(&dword_241C0E000, v137, OS_LOG_TYPE_DEFAULT, " capture_acls: %s", valuePtr, 0xCu);
          v139 = *(a1 + 13008);
          if (!v139)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v139 = v137;
        }

        v141 = v139;
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          v142 = "false";
          if (HIDWORD(v228))
          {
            v142 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v142;
          _os_log_impl(&dword_241C0E000, v141, OS_LOG_TYPE_DEFAULT, " defer_apple_doubles: %s", valuePtr, 0xCu);
          v143 = *(a1 + 13008);
          if (!v143)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v143 = v141;
        }

        v144 = v143;
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          v145 = "false";
          if (v228)
          {
            v145 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v145;
          _os_log_impl(&dword_241C0E000, v144, OS_LOG_TYPE_DEFAULT, " replay_apple_doubles: %s", valuePtr, 0xCu);
          v146 = *(a1 + 13008);
          if (!v146)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v146 = v144;
        }

        v148 = v146;
        if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
        {
          v149 = "false";
          if (HIDWORD(v227))
          {
            v149 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v149;
          _os_log_impl(&dword_241C0E000, v148, OS_LOG_TYPE_DEFAULT, " use_apple_double_suffix: %s", valuePtr, 0xCu);
          v150 = *(a1 + 13008);
          if (!v150)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v150 = v148;
        }

        v151 = v150;
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          v152 = "false";
          if (DWORD2(v227))
          {
            v152 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v152;
          _os_log_impl(&dword_241C0E000, v151, OS_LOG_TYPE_DEFAULT, " merge_acls: %s", valuePtr, 0xCu);
          v153 = *(a1 + 13008);
          if (!v153)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v153 = v151;
        }

        v154 = v153;
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
        {
          v155 = "false";
          if (BYTE4(v227))
          {
            v155 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v155;
          _os_log_impl(&dword_241C0E000, v154, OS_LOG_TYPE_DEFAULT, " ignore_apple_doubles: %s", valuePtr, 0xCu);
          v156 = *(a1 + 13008);
          if (!v156)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v156 = v154;
        }

        v157 = v156;
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
        {
          v158 = "false";
          if (v227)
          {
            v158 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v158;
          _os_log_impl(&dword_241C0E000, v157, OS_LOG_TYPE_DEFAULT, " sequester_apple_doubles: %s", valuePtr, 0xCu);
          v159 = *(a1 + 13008);
          if (!v159)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v159 = v157;
        }

        v160 = v159;
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
        {
          v161 = "false";
          if (v55)
          {
            v161 = "true";
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = v161;
          _os_log_impl(&dword_241C0E000, v160, OS_LOG_TYPE_DEFAULT, " unsequester_apple_doubles: %s", valuePtr, 0xCu);
          v162 = *(a1 + 13008);
          if (!v162)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v162 = v160;
        }

        v163 = v162;
        if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_493;
        }

        v164 = "false";
        if (HIDWORD(v226))
        {
          v164 = "true";
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = v164;
        _os_log_impl(&dword_241C0E000, v163, OS_LOG_TYPE_DEFAULT, " reorder_extra_files: %s", valuePtr, 0xCu);
        v163 = *(a1 + 13008);
        if (v163)
        {
LABEL_493:
          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
          {
            v165 = "false";
            if (v226)
            {
              v165 = "true";
            }

            *valuePtr = 136315138;
            *&valuePtr[4] = v165;
            _os_log_impl(&dword_241C0E000, v163, OS_LOG_TYPE_DEFAULT, " convert_extra_apple_doubles: %s", valuePtr, 0xCu);
          }
        }

        goto LABEL_123;
      }

      if (v56 == 2)
      {
        v229 = 0;
        v230 = 0uLL;
        *&v227 = 0;
        v228 = 0;
        v231 = 0;
        v226 = v49 | 0x100000000;
        LODWORD(v55) = v49;
      }

      else
      {
        if (v56 == 3)
        {
          v229 = 0;
          *&v230 = 0;
          v226 = 0;
          *&v227 = 0;
          v228 = v49;
          v58 = v232;
          *(&v227 + 1) = __PAIR64__(v49, v232);
LABEL_115:
          *(&v230 + 1) = __PAIR64__(buffer, v58);
          v231 = v49;
          goto LABEL_120;
        }

        v229 = 0;
        v230 = 0uLL;
        v226 = 0;
        *&v227 = 0;
        v228 = v49;
        v231 = 0;
      }

      *(&v227 + 1) = __PAIR64__(v49, v232);
      goto LABEL_120;
    }

    if (v57 == 3)
    {
      v229 = 0;
      *&v230 = 0;
      LODWORD(v227) = 0;
      BYTE4(v227) = v49;
      v226 = 0;
      LODWORD(v55) = 0;
      *(&v227 + 1) = 0;
      v228 = 0x100000000;
    }

    else
    {
      if (v57 != 6)
      {
        HIDWORD(v227) = 0;
        v228 = 0;
        v226 = 0;
        HIDWORD(v230) = 0;
        v231 = 0;
        LOBYTE(v230) = v49 | v55;
        *(&v230 + 4) = (v49 || buffer || v232) | v55;
        LODWORD(v229) = v232;
        BYTE4(v229) = buffer | v55;
        LODWORD(v227) = v55;
        *(&v227 + 4) = v49 | v55;
        LODWORD(v55) = 0;
        goto LABEL_120;
      }

      v229 = 0;
      *&v230 = 0;
      v226 = 0;
      v227 = 0uLL;
      v228 = 0;
      LODWORD(v55) = 0;
    }

    v58 = v232;
    goto LABEL_115;
  }

  v22 = v21;
  if (TypeID != CFGetTypeID(v21))
  {
    if (v7 != CFGetTypeID(v22))
    {
      v24 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1227, "parse_copier_options", "kBOMCopierOptionCompressCPIOKey must be a CFBooleanRef or CFStringRef");
      goto LABEL_489;
    }

    if (CFEqual(v22, @"auto"))
    {
      goto LABEL_27;
    }

    if (CFEqual(v22, @"none"))
    {
      *valuePtr = 0;
LABEL_32:
      v23 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
      if (!v23)
      {
        v24 = 1;
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1219, "parse_copier_options", "Could not create CFNumber from %d");
        goto LABEL_489;
      }

LABEL_33:
      v26 = v23;
      CFDictionarySetValue(*(a1 + 13032), @"libarchiveFilter", v23);
      CFRelease(v26);
      goto LABEL_34;
    }

    if (CFEqual(v22, @"gzip"))
    {
LABEL_27:
      v25 = 1;
    }

    else
    {
      if (!CFEqual(v22, @"bzip2"))
      {
        v24 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1212, "parse_copier_options", "Unknown compression type");
        goto LABEL_489;
      }

      v25 = 2;
    }

    *valuePtr = v25;
    goto LABEL_32;
  }

  if (CFEqual(v22, *MEMORY[0x277CBED28]) != 1 || *(a1 + 12716) != 4)
  {
    goto LABEL_34;
  }

  *valuePtr = 1;
  v23 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
  if (v23)
  {
    goto LABEL_33;
  }

  v24 = 1;
  BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 1184, "parse_copier_options", "Could not create CFNumber from %d");
LABEL_489:
  v220 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t source_error_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a2 + 13067) = 1;
  v5 = notify_file_error(a2, *(a3 + 8), *(a3 + 16));
  v6 = *(a2 + 13008);
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a3 + 8);
    v8 = *(a3 + 16);
    v11 = 136315906;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    v15 = 2080;
    v16 = strerror(v8);
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&dword_241C0E000, v6, OS_LOG_TYPE_DEFAULT, "file error: %s %d (%s) [%d]", &v11, 0x22u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t passphrase_callback(int a1, uint64_t a2, void *a3)
{
  result = *(a2 + 12800);
  if (!result)
  {
    v13 = v4;
    v14 = v3;
    v12 = *(a2 + 128);
    if (!v12)
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3901, "passphrase_callback", "Client did not register password request callback", v6, v5, v13, v14, v7, v8);
      return 0;
    }

    if (v12(a2, "", a2 + 12800))
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 3910, "passphrase_callback", "Could not request password from client", v6, v5, v13, v14, v7, v8);
      return 0;
    }

    return *(a2 + 12800);
  }

  return result;
}

uint64_t conflict_resolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a4 || !*(a4 + 80))
  {
    return 2;
  }

  Type = BOMCopierSourceEntryGetType(a2);
  v9 = BOMCopierDestinationEntryGetType(a3, a5);
  Path = BOMCopierDestinationEntryGetPath(a3, a5);
  if (!Path)
  {
    BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopier2.c", 4110, "conflict_resolver", "Could not get destination path");
    return 2;
  }

  v11 = Path;
  v12 = map_entry_type(v9);
  v13 = map_entry_type(Type);
  v14 = *(a4 + 80);

  return v14(a4, v11, v13, v12);
}

void data_written_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && *(a4 + 104))
  {
    Path = BOMCopierSourceEntryGetPath(a2);
    TotalWritten = BOMCopierDestinationEntryGetTotalWritten(a3, 0);
    v8 = *(a4 + 104);

    v8(a4, Path, TotalWritten);
  }
}

void finalization_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 && *(a5 + 96))
  {
    Path = BOMCopierSourceEntryGetPath(a2);
    Type = BOMCopierSourceEntryGetType(a2);
    v11 = map_entry_type(Type);
    TotalWritten = BOMCopierDestinationEntryGetTotalWritten(a3, 0);
    v13 = *(a5 + 96);

    v13(a5, Path, v11, TotalWritten, a4);
  }
}

uint64_t map_entry_type(int a1)
{
  if ((a1 - 5) > 5)
  {
    return 0;
  }

  else
  {
    return dword_241C795E0[a1 - 5];
  }
}

void BOMCopierSandbox_boxup(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = BOM_malloczero(0x400uLL);
        if (v6)
        {
          v7 = v6;
          v8 = (*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), a2, v6);
          if (v8)
          {
            v9 = v8;
            v10 = BOM_malloczero(0x100uLL);
            if (v10)
            {
              v11 = v10;
              BomSys_clone(v10 + 8, *(a1 + 12832), v10);
              BomSys_set_opendir(v11[8], BOMCopierSandbox_opendir);
              BomSys_set_closedir(v11[8], BOMCopierSandbox_closedir);
              BomSys_set_readdir(v11[8], BOMCopierSandbox_readdir);
              BomSys_set_readdir_r(v11[8], BOMCopierSandbox_readdir_r);
              v12 = *(a1 + 12832);
              *(v11 + 1) = *(v12 + 272);
              *(v11 + 3) = *(v12 + 288);
              v11[9] = v7;
              v11[10] = strlen(v9);
              v11[14] = v11;
              v11[28] = a3;
              v11[29] = BOMBomGetRootFSObject(a3);
              v13 = BOMStackNew();
              v11[31] = v13;
              if (v13)
              {
                *v11 = a1;
                v11[5] = *(a1 + 12832);
                *(a1 + 12840) = v11;
                v14 = v11[6];
                if (!v14)
                {
                  v14 = v11[8];
                }

                *(a1 + 12832) = v14;
              }
            }

            else
            {

              free(v7);
            }
          }

          else
          {
            v15 = *MEMORY[0x277D85DF8];
            v16 = __error();
            v17 = strerror(*v16);
            fprintf(v15, "Cannot get the real path for %s: %s", a2, v17);
          }
        }
      }
    }
  }
}

unsigned int *BOMCopierSandbox_opendir(uint64_t a1, char *__s)
{
  v15 = *MEMORY[0x277D85DE8];
  if (strlen(__s) > *(a1 + 80) && !strncmp(__s, *(a1 + 72), *(a1 + 80)))
  {
    __strlcpy_chk();
    v8 = strlen(__sa) - 1;
    if (__sa[v8] == 47)
    {
      __sa[v8] = 0;
    }

    FSObjectAtPath = BOMBomGetFSObjectAtPath(*(a1 + 224), __sa);
    v10 = FSObjectAtPath;
    if (!FSObjectAtPath)
    {
      fprintf(*MEMORY[0x277D85DF8], "Could not lookup %s in sandbox bom\n", __sa);
      goto LABEL_17;
    }

    if (BOMFSObjectType(FSObjectAtPath) == 2)
    {
      v11 = BOMBomEnumeratorNewWithOptions(*(a1 + 224), v10, 5);
      BOMFSObjectFree(v10);
      if (!v11)
      {
LABEL_16:
        v10 = 0;
        goto LABEL_17;
      }

      v12 = BOM_malloczero(0x90uLL);
      if (v12)
      {
        *v12 = v11;
        v10 = (v12 + 1);
        BOMStackPush(*(a1 + 248), v12);
LABEL_17:
        v13 = *MEMORY[0x277D85DE8];
        return v10;
      }
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s is not a directory in the sandbox bom\n", __sa);
    }

    BOMFSObjectFree(v10);
    goto LABEL_16;
  }

  v4 = *(a1 + 8);
  v5 = *(*(a1 + 64) + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v4(v5, __s);
}

uint64_t BOMCopierSandbox_closedir(uint64_t a1, void **a2)
{
  v4 = BOMStackPeek(*(a1 + 248));
  if (v4 + 1 == a2)
  {
    v8 = v4;
    BOMStackPop(*(a1 + 248));
    BOMBomEnumeratorFree(*v8);
    free(v8);
    return 0;
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(*(a1 + 64) + 8);

    return v5(v6, a2);
  }
}

uint64_t BOMCopierSandbox_readdir(uint64_t a1, void *a2)
{
  if (BOMStackPeek(*(a1 + 248)) + 1 == a2)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(*(a1 + 64) + 8);

  return v4(v5, a2);
}

uint64_t BOMCopierSandbox_readdir_r(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = BOMStackPeek(*(a1 + 248));
  if (v8 + 1 == a2)
  {
    v12 = BOMBomEnumeratorNext(*v8);
    if (v12)
    {
      v13 = v12;
      bzero(a3, 0x418uLL);
      v14 = BOMFSObjectShortName(v13);
      strcpy((a3 + 21), v14);
      *(a3 + 18) = strlen((a3 + 21));
      *a4 = a3;
      BOMFSObjectFree(v13);
    }

    else
    {
      *a4 = 0;
    }

    return 0;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 64) + 8);

    return v9(v10, a2, a3, a4);
  }
}

void BOMCopierSandbox_unbox(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 12840);
    if (v2)
    {
      v3 = BOMStackPop(*(v2 + 31));
      if (v3)
      {
        v4 = v3;
        do
        {
          BOMBomEnumeratorFree(*v4);
          *(v4 + 7) = 0u;
          *(v4 + 8) = 0u;
          *(v4 + 5) = 0u;
          *(v4 + 6) = 0u;
          *(v4 + 3) = 0u;
          *(v4 + 4) = 0u;
          *(v4 + 1) = 0u;
          *(v4 + 2) = 0u;
          *v4 = 0u;
          free(v4);
          v4 = BOMStackPop(*(v2 + 31));
        }

        while (v4);
      }

      BOMStackFree(*(v2 + 31));
      *(a1 + 12832) = *(v2 + 5);
      *(a1 + 12840) = 0;
      *(v2 + 5) = 0;
      *v2 = 0;
      v5 = *(v2 + 30);
      if (v5)
      {
        BOMBomEnumeratorFree(v5);
        *(v2 + 30) = 0;
      }

      v6 = *(v2 + 9);
      if (v6)
      {
        free(v6);
        *(v2 + 9) = 0;
      }

      v7 = *(v2 + 29);
      if (v7)
      {
        BOMFSObjectFree(v7);
        *(v2 + 29) = 0;
      }

      v8 = *(v2 + 6);
      if (v8)
      {
        BomSys_log_detach(v8);
        *(v2 + 6) = 0;
      }

      v9 = *(v2 + 8);
      if (v9)
      {
        BomSys_free(v9);
      }

      free(v2);
    }
  }
}