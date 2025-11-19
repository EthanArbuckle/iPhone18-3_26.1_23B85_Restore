os_log_t __chunkItem_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_34()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_3_45()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_49()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_2_56()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_60()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_3_71()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

void freeChunkListCacheInfo(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t CSchunklist_for_file(char *a1, CFStringRef *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  valuePtr = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  cf = 0;
  v4 = open(a1, 0);
  if (v4 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_for_file_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = __error();
      v14 = strerror(*v13);
      v6 = CFStringCreateWithFormat(v12, 0, @"open failed on %s: %s\n", a1, v14);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_for_file_cold_2();
      }

      v15 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v6;
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v6)
      {
        goto LABEL_25;
      }

      CFRelease(v6);
    }

    goto LABEL_24;
  }

  if (!gOperations)
  {
    gOperations = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
    if (!gOperations)
    {
LABEL_24:
      v6 = 0;
LABEL_25:
      v10 = 0;
      v8 = 0;
      goto LABEL_26;
    }
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = Mutable;
  if (!Mutable)
  {
    goto LABEL_25;
  }

  DWORD2(v25) = v4;
  *&v26 = 0;
  *(&v26 + 1) = Mutable;
  LODWORD(v21[0]) = 2;
  *&v22 = openFd;
  *(&v22 + 1) = closeFd;
  *&v23 = statFd;
  *(&v23 + 1) = readFd;
  *&v24 = getCacheBlobFd;
  *(&v24 + 1) = setCacheBlobFd;
  *&v25 = a1;
  *(&v21[0] + 1) = 0;
  if (!openFd(&v25, &v27, 0))
  {
    goto LABEL_25;
  }

  v7 = v27;
  *(v27 + 1) = v27;
  *(v7 + 2) = v21;
  v8 = 1;
  if (!CKChunkDigestArgumentsV1Create(&cf, 1, 0) || setOpCtxPath(v7, a1) || setOpCtxChunkScheme(v7, 1, cf) || (v19 = 0, memset(v18, 0, sizeof(v18)), !(v23)(v7, v18, 0)))
  {
    v10 = 0;
    goto LABEL_26;
  }

  setOpCtxStatInfo(v7, v18);
  valuePtr = *(v7 + 5);
  v9 = valuePtr;
  *(v7 + 2) = v21;
  *(v7 + 16) = CSchunklist_for_file_callback;
  *(v7 + 7) = v9;
  v7[160] = 5;
  v10 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (!v10)
  {
LABEL_26:
    v11 = 0;
    goto LABEL_27;
  }

  while (!registerOperation(&gOperationsLock, gOperations, v10))
  {
    waitForOperation(&gOperationsLock, &gOperationsCondition, gOperations, v10);
  }

  if (chunkItem(v7, 0))
  {
    v11 = 0;
    v8 = 1;
  }

  else
  {
    *a2 = v6;
    v8 = 1;
    v11 = 1;
    v6 = 0;
  }

LABEL_27:
  if (cf)
  {
    CKBaseRelease(cf);
  }

  cf = 0;
  if (v8)
  {
    (*(&v22 + 1))(*(&v21[0] + 1), v27, 0);
  }

  if (v10)
  {
    unregisterOperation(&gOperationsLock, &gOperationsCondition, gOperations, v10);
    CFRelease(v10);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v4 != -1)
  {
    close(v4);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t openFd(uint64_t a1, char **a2, CFErrorRef *a3)
{
  *a2 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v6 = *(a1 + 8);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

  v7 = *a1;
  memset(&v20, 0, sizeof(v20));
  if (fstat(v6, &v20) == -1)
  {
    v10 = *__error();
    v11 = *__error();
    v12 = __error();
    v13 = strerror(*v12);
    v9 = CKPOSIXErrorCreateWithFormat(v10, @"fstat failed for fd:%d, path:%s: (%d) %s", v6, v7, v11, v13);
    v8 = 0;
LABEL_9:
    freeOpCtx(v8);
    if (a3)
    {
      result = 0;
      *a3 = v9;
    }

    else
    {
      if (v9)
      {
        CFRelease(v9);
      }

      return 0;
    }

    return result;
  }

  if ((v20.st_mode & 0xF000) == 0x4000)
  {
LABEL_6:
    v8 = 0;
LABEL_7:
    v9 = 0;
    goto LABEL_9;
  }

  OpCtx = createOpCtx();
  v8 = OpCtx;
  if (!OpCtx || setOpCtxPath(OpCtx, v7))
  {
    goto LABEL_7;
  }

  *(v8 + 9) = v6;
  tv_sec = v20.st_mtimespec.tv_sec;
  *(v8 + 5) = v20.st_ino;
  *(v8 + 12) = v20.st_dev;
  st_mode = v20.st_mode;
  *(v8 + 16) = v20.st_mode;
  *(v8 + 7) = v20.st_nlink;
  *(v8 + 10) = v20.st_size;
  *(v8 + 11) = tv_sec;
  *(v8 + 344) = *(a1 + 16);
  v18 = st_mode & 0xF000;
  v19 = 0;
  if (!getFileWriteGeneration(v7, v6, &v19))
  {
    v8[34] = 1;
    *(v8 + 6) = v19;
    v8[178] = v18 == 40960;
    v8[177] = v18 == 40960;
  }

  if (v18 != 40960)
  {
    *(v8 + 15) = getMaxXattrSize(v7, v6);
  }

  *a2 = v8;
  freeOpCtx(0);
  return 1;
}

uint64_t closeFd(int a1, void **a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2[1] != a2)
  {
    closeFd_cold_1();
  }

  freeOpCtx(a2);
  return 1;
}

uint64_t statFd(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (*(a1 + 8) != a1)
  {
    statFd_cold_1();
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 34);
  *(a2 + 28) = *(a1 + 24);
  return 1;
}

uint64_t readFd(uint64_t a1, unint64_t a2, void *__buf, size_t __nbyte, unint64_t *a5, CFErrorRef *a6)
{
  v8 = __nbyte;
  v37 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  if (*(a1 + 8) != a1)
  {
    readFd_cold_1();
  }

  v12 = *(a1 + 36);
  if (v12 == -1)
  {
    if (a6)
    {
      v18 = 0;
LABEL_19:
      result = 0;
      *a6 = v18;
      goto LABEL_32;
    }

LABEL_31:
    result = 0;
    goto LABEL_32;
  }

  v13 = *(a1 + 104);
  if ((*(a1 + 32) & 0xF000) == 0xA000)
  {
    v14 = *(a1 + 320);
    if (v14)
    {
      v15 = *(a1 + 328);
LABEL_8:
      v16 = v15 > a2;
      v17 = v15 - a2;
      if (v16)
      {
        if (v17 < v8)
        {
          v8 = v17;
        }

        memcpy(__buf, &v14[a2], v8);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_26;
    }

    bzero(v36, 0x400uLL);
    if (v13 || (v13 = v36, !get_path_for_fd(v12, v36)))
    {
      v24 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      if (v24)
      {
        v14 = v24;
        v25 = readlink(v13, v24, 0x400uLL);
        if ((v25 & 0x8000000000000000) == 0)
        {
          v15 = 1024;
          if (v25 < 0x400)
          {
            v15 = v25;
          }

          *(a1 + 320) = v14;
          *(a1 + 328) = v15;
          goto LABEL_8;
        }

        v30 = *__error();
        v31 = *__error();
        v32 = __error();
        v33 = strerror(*v32);
        v18 = CKPOSIXErrorCreateWithFormat(v30, @"readlink failed for fd:%d, path:%s: (%d) %s", v12, v13, v31, v33);
        free(v14);
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_18;
    }

    v27 = *__error();
    v28 = *__error();
    v29 = __error();
    v34 = strerror(*v29);
    v22 = CKPOSIXErrorCreateWithFormat(v27, @"get path failed for fd:%d: %d (%s)", v12, v28, v34);
LABEL_17:
    v18 = v22;
LABEL_18:
    if (a6)
    {
      goto LABEL_19;
    }

    if (v18)
    {
      CFRelease(v18);
    }

    goto LABEL_31;
  }

  v8 = pread(*(a1 + 36), __buf, __nbyte, a2);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v19 = *__error();
    v20 = *__error();
    v21 = __error();
    v35 = strerror(*v21);
    v22 = CKPOSIXErrorCreateWithFormat(v19, @"pread failed on fd:%d, path:%s, offset:0x%llx: (%d) %s", v12, v13, a2, v20, v35);
    goto LABEL_17;
  }

LABEL_26:
  if (a5)
  {
    *a5 = v8;
  }

  result = 1;
LABEL_32:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getCacheBlobFd(uint64_t a1, char *name, __CFData **a3, CFErrorRef *a4)
{
  if (*(a1 + 8) != a1)
  {
    getCacheBlobFd_cold_1();
  }

  v8 = *(a1 + 36);
  v9 = *(a1 + 104);

  return CKGetCacheBlobFd(v9, v8, name, a3, a4);
}

uint64_t setCacheBlobFd(uint64_t a1, char *name, CFDataRef theData, CFErrorRef *a4)
{
  if (*(a1 + 8) != a1)
  {
    setCacheBlobFd_cold_1();
  }

  v8 = *(a1 + 36);
  v9 = *(a1 + 104);

  return CKSetCacheBlobFd(v9, v8, name, theData, a4);
}

uint64_t CSchunklist_for_file_callback(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 352);
  v3 = CKSchemeSignatureAndKeySize(v1 + 84);
  v4 = CFDataCreate(0, (v1 + 72), v3 + 16);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(v2, v4);
    CFRelease(v5);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t CKCopyChunkCache(char *a1, char *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  cf = 0;
  v42 = 0;
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    CKCopyChunkCache_cold_1();
  }

  memset(v49, 0, sizeof(v49));
  memset(v48, 0, sizeof(v48));
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"srcPath:%s, dstPath:%s\n", a1, a2);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v53 = v4;
      _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = -1;
  v10 = 0;
  v11 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_32;
  }

  v12 = open(a1, 0);
  v13 = v12 != -1;
  if (v12 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v15 = *MEMORY[0x277CBECE8];
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      v19 = CFStringCreateWithFormat(v15, 0, @"open failed on %s: %d (%s)\n", a1, v16, v18);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKCopyChunkCache_cold_4();
      }

      v39 = v13;
      v20 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v53 = v19;
        _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v7 = 0;
      v6 = 0;
      v11 = 0;
      v10 = 0;
      v9 = -1;
      if (!v19)
      {
        goto LABEL_32;
      }

LABEL_27:
      CFRelease(v19);
      v10 = v39;
      goto LABEL_32;
    }

LABEL_28:
    v7 = 0;
    v6 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_32;
  }

  v9 = v12;
  if (openFdWithReadContext(a1, v12, &v51, v49, &v45))
  {
    goto LABEL_28;
  }

  if (BYTE8(v46) != 1)
  {
    v7 = 0;
    goto LABEL_30;
  }

  if (getChunkListCacheBlob(v51, &v42))
  {
    v42 = 0;
  }

  if (getFileSignatureCacheBlob(v51, &cf))
  {
    v14 = 0;
    cf = 0;
  }

  else
  {
    v14 = cf != 0;
  }

  v7 = v42;
  if (!v42 && !v14)
  {
    v11 = 1;
    goto LABEL_40;
  }

  v23 = open(a2, 0);
  if (v23 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_13();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v26 = *MEMORY[0x277CBECE8];
      v27 = *__error();
      v28 = __error();
      v29 = strerror(*v28);
      v19 = CFStringCreateWithFormat(v26, 0, @"open failed on %s: %d (%s)\n", a2, v27, v29);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKCopyChunkCache_cold_14();
      }

      v39 = v13;
      v30 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v53 = v19;
        _os_log_impl(&dword_243431000, v30, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v6 = 0;
      v8 = -1;
      if (!v19)
      {
        v10 = 1;
        v11 = 0;
        goto LABEL_32;
      }

      v11 = 0;
      goto LABEL_27;
    }

LABEL_30:
    v6 = 0;
    v11 = 0;
LABEL_31:
    v10 = 1;
    goto LABEL_32;
  }

  v8 = v23;
  if (openFdWithReadContext(a2, v23, &v50, v48, v43[0].i64))
  {
    goto LABEL_30;
  }

  if (v43[1].u8[8] != 1)
  {
LABEL_58:
    v11 = 0;
LABEL_105:
    v6 = 1;
    goto LABEL_31;
  }

  if (v7)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    v25 = MutableBytePtr;
    if (HIDWORD(v46) == *(MutableBytePtr + 21) && v46 == *(MutableBytePtr + 25) && v45 == __PAIR128__(*(MutableBytePtr + 33), *(MutableBytePtr + 41)))
    {
      *(MutableBytePtr + 21) = v43[1].i32[3];
      *(MutableBytePtr + 25) = vextq_s8(*(v43 + 8), *(v43 + 8), 8uLL);
      *(MutableBytePtr + 41) = v43[0].i64[0];
      if (setChunkListCacheBlob(v50, v7))
      {
        goto LABEL_58;
      }

      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKCopyChunkCache_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Copied chunk list cache from %s to %s (%llu/%llu)\n", a1, a2, *(&v45 + 1), v43[0].i64[1]);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CKCopyChunkCache_cold_8();
        }

        v38 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v53 = v40;
          _os_log_impl(&dword_243431000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v32 = 1;
        v11 = 1;
LABEL_77:
        if (v40)
        {
          CFRelease(v40);
          v11 = v32;
        }

        goto LABEL_82;
      }

      v11 = 1;
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKCopyChunkCache_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk list cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu\n", a1, v25[20], *(v25 + 25), v46, *(v25 + 33), *(&v45 + 1), *(v25 + 21), HIDWORD(v46), *(v25 + 41), v45);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CKCopyChunkCache_cold_6();
        }

        v31 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v53 = v40;
          _os_log_impl(&dword_243431000, v31, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v32 = 0;
        v11 = 0;
        goto LABEL_77;
      }

      v11 = 0;
    }

LABEL_82:
    v33 = cf;
    if (cf)
    {
      goto LABEL_83;
    }

    CFRelease(v7);
LABEL_107:
    closeFdWithReadContext(v50, v48);
    goto LABEL_40;
  }

  v11 = 0;
  v33 = cf;
  if (!cf)
  {
    goto LABEL_107;
  }

LABEL_83:
  v34 = CFDataGetMutableBytePtr(v33);
  v35 = v34;
  if (HIDWORD(v46) == *(v34 + 21) && v46 == *(v34 + 25) && v45 == __PAIR128__(*(v34 + 33), *(v34 + 41)))
  {
    *(v34 + 21) = v43[1].i32[3];
    *(v34 + 25) = vextq_s8(*(v43 + 8), *(v43 + 8), 8uLL);
    *(v34 + 41) = v43[0].i64[0];
    if (setFileSignatureCacheBlob(v50, cf))
    {
      goto LABEL_105;
    }

    v39 = v13;
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_11();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v6 = 1;
      v10 = 1;
      v11 = 1;
      goto LABEL_32;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Copied file signature cache from %s to %s (%llu/%llu)\n", a1, a2, *(&v45 + 1), v43[0].i64[1]);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_12();
    }

    v36 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v53 = v19;
      _os_log_impl(&dword_243431000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v6 = 1;
    v11 = 1;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_9();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_105;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu\n", a1, v35[20], *(v35 + 25), v46, *(v35 + 33), *(&v45 + 1), *(v35 + 21), HIDWORD(v46), *(v35 + 41), v45);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_10();
    }

    v39 = v13;
    v37 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v53 = v19;
      _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v6 = 1;
  }

  v10 = 1;
  if (v19)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if ((v6 & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  closeFdWithReadContext(v50, v48);
  if (v10)
  {
LABEL_40:
    closeFdWithReadContext(v51, v49);
  }

LABEL_41:
  if (v9 != -1)
  {
    close(v9);
  }

  if (v8 != -1)
  {
    close(v8);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

os_log_t __CKCopyChunkCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_93()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_100()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_104()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_108()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_112()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_119()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_123()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_130()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_134()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_141()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_145()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_152()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t CKFixupChunkCacheAfterExchangeData(char *a1, char *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  cf = 0;
  v47 = 0;
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    CKFixupChunkCacheAfterExchangeData_cold_1();
  }

  memset(v55, 0, sizeof(v55));
  memset(v54, 0, sizeof(v54));
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"srcPath:%s, dstPath:%s\n", a1, a2);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v59 = v4;
      _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = -1;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_57;
  }

  v14 = open(a2, 0);
  v15 = v14 != -1;
  if (v14 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v6 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v9 = -1;
      goto LABEL_57;
    }

    v16 = *MEMORY[0x277CBECE8];
    v17 = *__error();
    v18 = __error();
    v19 = strerror(*v18);
    v20 = CFStringCreateWithFormat(v16, 0, @"open failed on %s: %d (%s)\n", a2, v17, v19);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_4();
    }

    v21 = v15;
    v22 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v59 = v20;
      _os_log_impl(&dword_243431000, v22, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v7 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v6 = 0;
    v8 = -1;
    v9 = -1;
    if (!v20)
    {
      goto LABEL_57;
    }

LABEL_23:
    CFRelease(v20);
    v6 = v21;
    goto LABEL_57;
  }

  v8 = v14;
  if (openFdWithReadContext(a2, v14, &v56, v54, &v48))
  {
    v7 = 0;
    v6 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_57;
  }

  if (BYTE8(v49) != 1)
  {
    v7 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_56:
    v13 = 0;
    v6 = 1;
    goto LABEL_57;
  }

  ChunkListCacheBlob = getChunkListCacheBlob(v56, &v47);
  if (ChunkListCacheBlob)
  {
    v12 = ChunkListCacheBlob == 22;
    v47 = 0;
  }

  else
  {
    v12 = 0;
  }

  FileSignatureCacheBlob = getFileSignatureCacheBlob(v56, &cf);
  if (FileSignatureCacheBlob)
  {
    v25 = 0;
    v11 = FileSignatureCacheBlob == 22;
    cf = 0;
  }

  else
  {
    v11 = 0;
    v25 = cf != 0;
  }

  v7 = v47;
  if (!v47 && !v25)
  {
    v7 = 0;
    v10 = 0;
    v6 = 1;
LABEL_36:
    v13 = 1;
    goto LABEL_57;
  }

  v26 = open(a1, 0);
  if (v26 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_13();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v30 = *MEMORY[0x277CBECE8];
      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      v20 = CFStringCreateWithFormat(v30, 0, @"open failed on %s: %d (%s)\n", a1, v31, v33);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKFixupChunkCacheAfterExchangeData_cold_14();
      }

      v21 = v15;
      v34 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v59 = v20;
        _os_log_impl(&dword_243431000, v34, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v10 = 0;
      v9 = -1;
      if (!v20)
      {
        v6 = 1;
        v13 = 0;
        goto LABEL_57;
      }

      v13 = 0;
      goto LABEL_23;
    }

    goto LABEL_55;
  }

  v9 = v26;
  if (openFdWithReadContext(a1, v26, &v57, v55, &v51))
  {
LABEL_55:
    v10 = 0;
    goto LABEL_56;
  }

  if (BYTE8(v52) != 1)
  {
LABEL_45:
    v13 = 0;
LABEL_92:
    v6 = 1;
    v10 = 1;
    goto LABEL_57;
  }

  --HIDWORD(v52);
  if (!v7)
  {
    v13 = 0;
    goto LABEL_87;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(v7);
  v28 = MutableBytePtr;
  if (HIDWORD(v52) != *(MutableBytePtr + 21) || (v29 = v49, v49 != *(MutableBytePtr + 25)) || __PAIR128__(v48, *(&v51 + 1)) != *(MutableBytePtr + 33))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_5();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v13 = 0;
      v12 = 1;
      goto LABEL_87;
    }

    v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk list cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu\n", a2, v28[20], *(v28 + 25), v49, *(v28 + 33), *(&v51 + 1), *(v28 + 21), HIDWORD(v52), *(v28 + 41), v48);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_6();
    }

    v38 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v59 = v37;
      _os_log_impl(&dword_243431000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v39 = 0;
    v13 = 0;
    v12 = 1;
    if (!v37)
    {
      goto LABEL_87;
    }

LABEL_84:
    CFRelease(v37);
    v13 = v39;
    goto LABEL_87;
  }

  *(MutableBytePtr + 21) = HIDWORD(v49);
  *(MutableBytePtr + 25) = v29;
  *(MutableBytePtr + 33) = *(&v48 + 1);
  if (setChunkListCacheBlob(v56, v7))
  {
    goto LABEL_45;
  }

  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    CKFixupChunkCacheAfterExchangeData_cold_7();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    goto LABEL_87;
  }

  v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Fixed up chunk list cache for %s (%llu)\n", a2, *(&v48 + 1));
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    CKFixupChunkCacheAfterExchangeData_cold_8();
  }

  v44 = CK_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v59 = v37;
    _os_log_impl(&dword_243431000, v44, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  v39 = 1;
  v13 = 1;
  if (v37)
  {
    goto LABEL_84;
  }

LABEL_87:
  if (!cf)
  {
    goto LABEL_92;
  }

  v40 = CFDataGetMutableBytePtr(cf);
  v41 = v40;
  if (HIDWORD(v52) == *(v40 + 21) && (v42 = v49, v49 == *(v40 + 25)) && __PAIR128__(v48, *(&v51 + 1)) == *(v40 + 33))
  {
    *(v40 + 21) = HIDWORD(v49);
    *(v40 + 25) = v42;
    *(v40 + 33) = *(&v48 + 1);
    if (setFileSignatureCacheBlob(v56, cf))
    {
      goto LABEL_92;
    }

    v21 = v15;
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_11();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v6 = 1;
      v10 = 1;
      goto LABEL_36;
    }

    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Fixed up file signature cache for %s (%llu)\n", a2, *(&v48 + 1));
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_12();
    }

    v45 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v59 = v20;
      _os_log_impl(&dword_243431000, v45, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v10 = 1;
    v13 = 1;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_9();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v6 = 1;
      v10 = 1;
      v11 = 1;
      goto LABEL_57;
    }

    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu\n", a2, v41[20], *(v41 + 25), v49, *(v41 + 33), *(&v51 + 1), *(v41 + 21), HIDWORD(v52), *(v41 + 41), v48);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_10();
    }

    v21 = v15;
    v43 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v59 = v20;
      _os_log_impl(&dword_243431000, v43, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v10 = 1;
    v11 = 1;
  }

  v6 = 1;
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if ((v6 & v12) == 1)
  {
    setCacheBlob(v56, "com.apple.cscache", 0);
  }

  if ((v6 & v11) == 1)
  {
    setFileSignatureCacheBlob(v56, 0);
    if (!v10)
    {
      goto LABEL_65;
    }
  }

  else if (!v10)
  {
LABEL_65:
    if (!v6)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  closeFdWithReadContext(v57, v55);
  if (v6)
  {
LABEL_66:
    closeFdWithReadContext(v56, v54);
  }

LABEL_67:
  if (v9 != -1)
  {
    close(v9);
  }

  if (v8 != -1)
  {
    close(v8);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v13;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_162()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_166()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_170()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_174()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_178()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_182()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_186()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_193()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_197()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_201()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_205()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_212()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t openFdUncached(uint64_t a1, char **a2, CFErrorRef *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = openFd(a1, a2, a3);
  if (v4)
  {
    v5 = *a2;
    if ((*(*a2 + 16) & 0xF000) != 0xA000)
    {
      v6 = *(v5 + 13);
      v7 = *(v5 + 9);
      if (make_fd_uncached(*(v5 + 9)))
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          openFdUncached_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *MEMORY[0x277CBECE8];
          v9 = *(v5 + 5);
          v10 = *__error();
          v11 = __error();
          v12 = strerror(*v11);
          v13 = CFStringCreateWithFormat(v8, 0, @"make_fd_uncached failed for fd:%d, path:%s, ino:%llu: %d (%s)\n", v7, v6, v9, v10, v12);
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            openFdUncached_cold_2();
          }

          v14 = CK_DEFAULT_LOG_INTERNAL_0;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v18 = v13;
            _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v13)
          {
            CFRelease(v13);
          }
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

os_log_t __openFdUncached_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __openFdUncached_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_249()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_256()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_260()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_267()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_271()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_278()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_282()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_289()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_294()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_301()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_305()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_312()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_329()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_336()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_340()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_347()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_351()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_358()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_363()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_370()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_374()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_381()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_385()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_392()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_396()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_403()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_407()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_414()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_421()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_428()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t _SetSourceChunk(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (*(v2 + 8))
  {
    _SetSourceChunk_cold_1();
  }

  if (*(v2 + 64))
  {
    _SetSourceChunk_cold_2();
  }

  v5 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *(v2 + 8) = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *(v2 + 80) = 0;
  *(v2 + 72) = a2;
  if (!CKChunkSignatureGeneratorCreate((v2 + 64), *(a1 + 152)) || !*(v2 + 64))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 32))
  {
    _SetSourceChunk_cold_3();
  }

  if (*(v2 + 56))
  {
    _SetSourceChunk_cold_4();
  }

  result = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

void _ClearSourceChunk(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  if (v2)
  {
    free(v2);
    *(v1 + 8) = 0;
  }

  v3 = *(v1 + 48);
  *(v1 + 40) = 0;
  v4 = *(v1 + 56);
  if (v3)
  {
    if (!v4)
    {
      _ClearSourceChunk_cold_1();
    }

    free(v4);
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else if (v4)
  {
    _ClearSourceChunk_cold_2();
  }

  v5 = *(v1 + 64);
  if (v5)
  {
    CKBaseRelease(v5);
  }

  *(v1 + 64) = 0;
  v6 = *(v1 + 32);
  if (v6)
  {
    CKBaseRelease(v6);
  }

  *(v1 + 32) = 0;
}

os_log_t __chunkerFileReadBufferSize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkerFileReadBufferSize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t CSfixed_subchunk_stream(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 136);
  v35 = 0;
  if (!a3)
  {
    CSfixed_subchunk_stream_cold_6();
  }

  v8 = a3;
  v10 = a4;
  while (1)
  {
    v11 = *(v5 + 32);
    if (!v11)
    {
      CKChunkDigestArgumentsV1Create(&v35, 0, 0);
      if (!CKChunkSignatureGeneratorCreate((v5 + 32), v35))
      {
        break;
      }

      v11 = *(v5 + 32);
      if (!v11)
      {
        break;
      }
    }

    v12 = *(v5 + 40) % a4;
    if (v12 + v8 < a4 && (a5 & 1) == 0)
    {
      CKChunkSignatureGeneratorUpdate(v11);
      v29 = 0;
      *(v5 + 40) += v8;
      goto LABEL_43;
    }

    v13 = a4 - v12;
    if (v13 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v13;
    }

    CKChunkSignatureGeneratorUpdate(v11);
    if (!CKChunkSignatureGeneratorFinish(*(v5 + 32)))
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSfixed_subchunk_stream_cold_4();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKChunkSignatureGeneratorFinish failed\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSfixed_subchunk_stream_cold_5();
        }

        v31 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v37 = v30;
          _os_log_impl(&dword_243431000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v30)
        {
          CFRelease(v30);
        }
      }

      *(v5 + 64) = 0;
      break;
    }

    v15 = CKChunkDigestResultsChunkSignature(0);
    v16 = CKSchemeAndSignatureSize(v15);
    v18 = *(v5 + 48);
    v17 = *(v5 + 52);
    if (v18 <= v17)
    {
      v19 = (2 * v18);
      v20 = ceilf(v8 / v10);
      if (v20 >= v19)
      {
        v19 = v20;
      }

      v21 = v19;
      *(v5 + 48) = v21;
      v22 = *(v5 + 56);
      v23 = v16 * v21 + 1;
      if (v22)
      {
        v24 = malloc_type_realloc(v22, v23, 0x100004077774924uLL);
      }

      else
      {
        v24 = malloc_type_calloc(1uLL, v23, 0x100004077774924uLL);
      }

      *(v5 + 56) = v24;
      v17 = *(v5 + 52);
    }

    if (v17)
    {
      v25 = (*(v5 + 56) + v16 * v17);
      if (!v15)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (a4 >= 0x40000)
      {
        CSfixed_subchunk_stream_cold_3();
      }

      v25 = *(v5 + 56);
      *v25 = a4 >> 10;
      if (!v15)
      {
LABEL_48:
        CSfixed_subchunk_stream_cold_2();
      }
    }

    memcpy(v25 + 1, v15, v16);
    v26 = *(v5 + 52);
    if (v26 >= 0x50)
    {
      CSfixed_subchunk_stream_cold_1();
    }

    *(v5 + 52) = v26 + 1;
    if (v35)
    {
      CFRelease(v35);
    }

    v35 = 0;
    v27 = *(v5 + 32);
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *(v5 + 40) + v14;
    *(v5 + 32) = 0;
    *(v5 + 40) = v28;
    a2 += v14;
    v8 -= v14;
    if (!v8)
    {
      v29 = 0;
      goto LABEL_43;
    }
  }

  v29 = -1;
LABEL_43:
  if (v35)
  {
    CFRelease(v35);
  }

  v35 = 0;
  v32 = *(v5 + 32);
  if (v32)
  {
    CFRelease(v32);
  }

  *(v5 + 32) = 0;
  v33 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t CS_fixed_chunk_stream_accumulate(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 136);
  CKChunkSignatureGeneratorUpdate(*(v6 + 64));
  if (*(a1 + 179))
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 80);
  if (!v7)
  {
    if (v8)
    {
      CS_fixed_chunk_stream_accumulate_cold_1();
    }

    v8 = 0;
  }

  v9 = malloc_type_realloc(v7, v8 + a3, 0xD9087845uLL);
  if (v9)
  {
    *(v6 + 8) = v9;
    memcpy(&v9[*(v6 + 80)], a2, a3);
LABEL_7:
    result = 0;
    *(v6 + 80) += a3;
    return result;
  }

  free(*(v6 + 8));
  *(v6 + 8) = 0;
  return 0xFFFFFFFFLL;
}

uint64_t CSchunklist_add_stream(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 136);
  if (CKChunkSignatureGeneratorFinish(*(v2 + 64)))
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      CKBaseRelease(v3);
    }

    *(v2 + 64) = 0;
    if (*(v2 + 80))
    {
      CopyChunkSignatureAndKeyFromChunkDigestResults(v2 + 72, 0);
      if ((*(a1 + 179) & 1) == 0)
      {
        *(v2 + 25) = 1;
        *v2 = *(a1 + 36);
      }

      *v2 = *(a1 + 56);
      v4 = *(a1 + 440);
      *(a1 + 440) = v4 + 1;
      *(v2 + 16) = v4;
      v5 = *(v2 + 80);
      v6 = *(a1 + 256) + 56 * *(a1 + 252);
      *(v6 + 40) += v5;
      ++*(v6 + 48);
      *(a1 + 424) += v5;
      if (*(a1 + 184) != 1)
      {
        goto LABEL_48;
      }

      memset(v21, 0, 43);
      CShex_to_string((v2 + 84), 21, v21);
      v7 = *(a1 + 112);
      if (*(a1 + 544))
      {
        bzero(__str, 0x400uLL);
        v8 = *(a1 + 56);
        snprintf(__str, 0x400uLL, "%s: %llu, %llu, o:0x%llx, sz:0x%x(%u), s:%s\n", v7, v8, *(v2 + 16), *(v2 + 72), *(v2 + 80), *(v2 + 80), v21);
        strcat(*(a1 + 544), __str);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_stream_cold_1();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_48;
        }

        v9 = *(a1 + 56);
        v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %llu, %lld, o:0x%llx, sz:0x%x(%u), s:%s\n", v7, v9, *(v2 + 16), *(v2 + 72), *(v2 + 80), *(v2 + 80), v21, 0);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_stream_cold_2();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
LABEL_46:
          if (v10)
          {
            CFRelease(v10);
          }

LABEL_48:
          if (*(a1 + 180))
          {
            result = 0;
          }

          else
          {
            result = (*(a1 + 128))(a1);
          }

          goto LABEL_51;
        }

        *__str = 138543362;
        v20 = v10;
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_stream_cold_3();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_48;
        }

        v17 = "E";
        if (*(v2 + 84) >= 0)
        {
          v17 = "-";
        }

        v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %s, %lld, o:0x%llx, sz:0x%x(%u), s:%s\n", v7, v17, *(v2 + 16), *(v2 + 72), *(v2 + 80), *(v2 + 80), v21, 0);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_stream_cold_4();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_46;
        }

        *__str = 138543362;
        v20 = v10;
      }

      _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", __str, 0xCu);
      goto LABEL_46;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_stream_cold_5();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring attempt to add 0 length chunk\n");
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_stream_cold_6();
      }

      v16 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *__str = 138543362;
        v20 = v15;
        _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", __str, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    result = 0;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_stream_cold_7();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKChunkSignatureGeneratorFinish failed\n");
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_stream_cold_8();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        v20 = v12;
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    *(v2 + 64) = 0;
    result = 0xFFFFFFFFLL;
  }

LABEL_51:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *CopyChunkSignatureAndKeyFromChunkDigestResults(uint64_t a1, uint64_t a2)
{
  v4 = CKChunkDigestResultsChunkSignature(a2);
  result = CKChunkDigestResultsChunkKey(a2);
  v6 = result;
  if (v4)
  {
    v7 = CKChunkSchemeAndSignatureSize(v4);
    result = memcpy((a1 + 12), v4, v7);
  }

  v9 = *(a1 + 12);
  v8 = (a1 + 12);
  if (v9 < 0 && v6)
  {
    v10 = CKChunkSchemeAndSignatureSize(v8);
    v11 = CKChunkSchemeAndEncryptionKeySize(v6);

    return memcpy(&v8[v10], v6, v11);
  }

  return result;
}

double CSchunklist_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v39[1002] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 136);
  v11 = CKChunkDigestArgumentsChunkScheme(*(a1 + 152));
  if (!a4)
  {
    v13 = *(a1 + 544);
    if (v13)
    {
      bzero(v39, 0x3E2uLL);
      strcpy(__s2, "  === segment end marker ===\n");
      strcat(v13, __s2);
    }

    *(v10 + 8) = 0;
    goto LABEL_66;
  }

  if (a5 <= 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_cold_9();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring attempt to add a chunk with invalid length %d.\n", a5);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_cold_10();
      }

      v15 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *__s2 = 138543362;
        *&__s2[4] = v14;
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", __s2, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  else
  {
    v12 = v11;
    if (*(a1 + 179))
    {
      *v10 = *(a1 + 56);
    }

    else
    {
      *(v10 + 25) = 1;
      *v10 = *(a1 + 36);
    }

    *(v10 + 72) = a3;
    *(v10 + 80) = a5;
    *(v10 + 8) = a4;
    *(v10 + 16) = a2;
    v16 = *(a1 + 256) + 56 * *(a1 + 252);
    *(v16 + 40) += a5;
    ++*(v16 + 48);
    if (*(a1 + 183) == 1)
    {
      *(a1 + 480) = mach_absolute_time();
    }

    v34 = 0;
    v17 = CKCalculateChunkSignatureAndEncryptionKey(*(v10 + 8), *(v10 + 80), *(a1 + 152), &v34);
    if ((v12 & 0x80) == 0)
    {
      if (!v17)
      {
        goto LABEL_78;
      }

      CopyChunkSignatureAndKeyFromChunkDigestResults(v10 + 72, v34);
      if (v34)
      {
        CKBaseRelease(v34);
      }

      v34 = 0;
LABEL_39:
      if (*(a1 + 183) == 1)
      {
        *(a1 + 488) += mach_absolute_time() - *(a1 + 480);
      }

      if (*(a1 + 184) != 1)
      {
        goto LABEL_65;
      }

      v24 = *(a1 + 112);
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      memset(v35, 0, 43);
      v25 = *(v10 + 80);
      if (v25 >= 0x50)
      {
        v26 = 80;
      }

      else
      {
        v26 = v25;
      }

      CShex_to_string((v10 + 84), 21, v35);
      CShex_to_string((*(v10 + 8) + (*(v10 + 80) - v26)), v26, v36);
      if (*(a1 + 544))
      {
        bzero(__s2, 0x400uLL);
        snprintf(__s2, 0x400uLL, "%s: %llu, %lld, o:0x%llx, sz:0x%x(%u), s:%s, (%u, %s)\n", v24, *(a1 + 56), a2, a3, a5, a5, v35, v26, v36);
        strcat(*(a1 + 544), __s2);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_cold_5();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_65;
        }

        v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %llu, %lld, o:0x%llx, sz:0x%x(%u), s:%s, (%u, %s)\n", v24, *(a1 + 56), a2, a3, a5, a5, v35, v26, v36);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_cold_6();
        }

        v28 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
LABEL_63:
          if (v27)
          {
            CFRelease(v27);
          }

LABEL_65:
          *(a1 + 424) += *(v10 + 80);
LABEL_66:
          if ((*(a1 + 180) & 1) == 0)
          {
            (*(a1 + 128))(a1);
          }

          goto LABEL_78;
        }

        *__s2 = 138543362;
        *&__s2[4] = v27;
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_cold_7();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_65;
        }

        v29 = "E";
        if ((v12 & 0x80) == 0)
        {
          v29 = "-";
        }

        v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %s, %llu, o:0x%llx, sz:0x%x(%u), s:%s", v24, v29, a2, a3, a5, a5, v35);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_cold_8();
        }

        v28 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_63;
        }

        *__s2 = 138543362;
        *&__s2[4] = v27;
      }

      _os_log_impl(&dword_243431000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", __s2, 0xCu);
      goto LABEL_63;
    }

    if (!v17)
    {
      goto LABEL_78;
    }

    CopyChunkSignatureAndKeyFromChunkDigestResults(v10 + 72, v34);
    if (v34)
    {
      CKBaseRelease(v34);
    }

    v34 = 0;
    if (*(a1 + 179))
    {
      goto LABEL_39;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"encrypting\n");
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_cold_2();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *__s2 = 138543362;
        *&__s2[4] = v18;
        _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", __s2, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    v20 = *(v10 + 8);
    v21 = *(v10 + 80);
    v22 = v34;
    v23 = CKChunkDigestResultsChunkLength(v34);
    if (doEncrypt(v20, v21, v22, v23))
    {
      goto LABEL_39;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"doEncrypt failed\n");
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_cold_4();
      }

      v31 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *__s2 = 138543362;
        *&__s2[4] = v30;
        _os_log_impl(&dword_243431000, v31, OS_LOG_TYPE_ERROR, "%{public}@", __s2, 0xCu);
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }
  }

LABEL_78:
  *(v10 + 80) = 0;
  result = 0.0;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __setChunkListCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_718()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_725()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_729()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_736()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_740()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_757()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_3_768()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_772()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_779()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_784()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_791()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_795()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_802()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

void CSParametersFinalize(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t CSChunkCryptor_Destroy(uint64_t a1, CFErrorRef *a2)
{
  if (a1 && (v4 = *(a1 + 56)) != 0)
  {
    v5 = v4[1];
    if (v5)
    {
      free(v5);
      v4[1] = 0;
    }

    v6 = v4[7];
    if (v6)
    {
      CFRelease(v6);
      v4[7] = 0;
    }

    v7 = v4[8];
    if (v7)
    {
      CFRelease(v7);
      v4[8] = 0;
    }

    v8 = v4[9];
    if (v8)
    {
      CFRelease(v8);
      v4[9] = 0;
    }

    v9 = v4[11];
    if (v9)
    {
      free(v9);
    }

    free(v4);
    *(a1 + 56) = 0;
    return 1;
  }

  else
  {
    v11 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a2 = v11;
  }

  return result;
}

uint64_t CSChunkCryptor_InitializeEncryptor(uint64_t a1, const __CFData *a2, const __CFData *a3, unint64_t a4, unint64_t a5, CFErrorRef *a6)
{
  if (a5 >= a4)
  {
    if (_CSChunkCryptor_Initialize(a1, a2, a3, a4, a5, a6))
    {
      result = 1;
      *(*(a1 + 56) + 48) = 1;
      return result;
    }
  }

  else
  {
    *a6 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 0, 0);
  }

  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t _CSChunkCryptor_Initialize(uint64_t a1, CFDataRef theData, const __CFData *a3, uint64_t a4, uint64_t a5, CFErrorRef *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  if (CFDataGetLength(theData) != 32)
  {
    v14 = *MEMORY[0x277CBECE8];
    v15 = *MEMORY[0x277CBEE48];
    v16 = 5;
    goto LABEL_7;
  }

  v12 = malloc_type_malloc(0x60uLL, 0x1060040A3E8CD77uLL);
  if (!v12)
  {
    v14 = *MEMORY[0x277CBECE8];
    v15 = *MEMORY[0x277CBEE48];
    v16 = 1;
    goto LABEL_7;
  }

  v13 = v12;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  *(v12 + 49) = 256;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  ccsha256_di();
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  *bytes = 0u;
  v27 = 0u;
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  if (cchkdf())
  {
    free(v13);
    cc_clear();
    v14 = *MEMORY[0x277CBECE8];
    v15 = *MEMORY[0x277CBEE48];
    v16 = 2;
LABEL_7:
    v17 = CFErrorCreate(v14, v15, v16, 0);
    result = 0;
    *a6 = v17;
    goto LABEL_8;
  }

  v20 = *MEMORY[0x277CBECE8];
  v13[7] = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 32);
  v13[8] = CFDataCreate(v20, v28, 32);
  v13[9] = CFDataCreate(v20, v29, 32);
  cc_clear();
  v21 = ccsha256_di();
  *v13 = v21;
  v13[1] = malloc_type_malloc(*(v21 + 8) + *(v21 + 16) + 12, 0x100004052888210uLL);
  v22 = *v13;
  ccdigest_init();
  CFDataGetBytePtr(a3);
  if (CFDataGetLength(a3) <= 31)
  {
    CFDataGetLength(a3);
  }

  __memcpy_chk();
  v25 = v13[3];
  ccsha256_di();
  CFDataGetLength(v13[8]);
  CFDataGetBytePtr(v13[8]);
  cchmac();
  v23 = ccaes_ctr_crypt_mode();
  v13[10] = v23;
  v13[11] = malloc_type_malloc(*v23, 0x1000040451B5BE8uLL);
  v24 = v13[10];
  CFDataGetLength(v13[9]);
  CFDataGetBytePtr(v13[9]);
  ccctr_init();
  *(a1 + 56) = v13;
  cc_clear();
  cc_clear();
  result = 1;
LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSChunkCryptor_InitializeDecryptor(uint64_t a1, const __CFData *a2, const __CFData *a3, unint64_t a4, unint64_t a5, CFErrorRef *a6)
{
  if (a5 >= a4)
  {
    if (_CSChunkCryptor_Initialize(a1, a2, a3, a4, a5, a6))
    {
      *(*(a1 + 56) + 48) = 0;
      return 1;
    }
  }

  else
  {
    *a6 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 0, 0);
  }

  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t CSChunkCryptor_Update(uint64_t a1, uint64_t a2, unsigned int a3, CFErrorRef *a4)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 7, 0);
    result = 0;
    *a4 = v9;
    return result;
  }

  if (*(v4 + 49))
  {
    v6 = 0;
    v7 = a3;
  }

  else
  {
    v11 = v4[4];
    v7 = a3;
    v12 = v11 + a3;
    v13 = v4[2];
    v14 = v13 - v11;
    if (v12 <= v13)
    {
      v6 = a3;
    }

    else
    {
      v6 = v14;
    }
  }

  if (v7 > v6)
  {
    *(v4 + 49) = 1;
  }

  if (v6 && *(v4 + 48))
  {
    v15 = *v4;
    v16 = v4[1];
    ccdigest_update();
  }

  v17 = v4[10];
  v18 = v4[11];
  ccctr_update();
  v4[4] += v7;
  v19 = *(v4 + 48);
  if (v6 && !*(v4 + 48))
  {
    v20 = *v4;
    v21 = v4[1];
    ccdigest_update();
    v19 = *(v4 + 48);
  }

  if (v19)
  {
    return 1;
  }

  result = 1;
  if (*(v4 + 49))
  {
    v22 = v7 - v6;
    if (v7 > v6)
    {
      v23 = *(v4 + 50) & 1;
      v24 = (a2 + v6);
      do
      {
        if (*v24++)
        {
          v23 = 0;
        }

        *(v4 + 50) = v23;
        --v22;
      }

      while (v22);
      return 1;
    }
  }

  return result;
}

uint64_t CSChunkCryptor_Finalize(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  if (!v5)
  {
    v12 = *MEMORY[0x277CBECE8];
    v13 = *MEMORY[0x277CBEE48];
    v14 = 7;
    goto LABEL_17;
  }

  v7 = *(v5 + 88);
  v8 = **(v5 + 80);
  cc_clear();
  free(*(v5 + 88));
  *(v5 + 88) = 0;
  v9 = *(v5 + 8);
  (*(*v5 + 56))();
  v10 = *(v5 + 8);
  v11 = *(*v5 + 8) + *(*v5 + 16);
  cc_clear();
  if (*(a1 + 24))
  {
    ccsha256_di();
    CFDataGetLength(*(a1 + 24));
    CFDataGetBytePtr(*(a1 + 24));
    if (cchkdf())
    {
      cc_clear();
      v12 = *MEMORY[0x277CBECE8];
      v13 = *MEMORY[0x277CBEE48];
      v14 = 2;
LABEL_17:
      v17 = CFErrorCreate(v12, v13, v14, 0);
      result = 0;
      *a4 = v17;
      goto LABEL_18;
    }

    if (cchkdf())
    {
      v14 = 2;
LABEL_16:
      v12 = *MEMORY[0x277CBECE8];
      v13 = *MEMORY[0x277CBEE48];
      goto LABEL_17;
    }

    CFDataGetBytePtr(*(v5 + 56));
    v15 = cc_cmp_safe();
    cc_clear();
    cc_clear();
    cc_clear();
    if (v15)
    {
      v14 = 4;
      goto LABEL_16;
    }
  }

  if (!*(v5 + 48))
  {
    ccsha256_di();
    CFDataGetLength(*(v5 + 56));
    CFDataGetBytePtr(*(v5 + 56));
    cchmac();
    if (cc_cmp_safe())
    {
      v14 = 0;
      goto LABEL_16;
    }
  }

  if (!*(v5 + 50))
  {
    v14 = 8;
    goto LABEL_16;
  }

  result = 1;
LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cs_longrdlock(uint64_t a1)
{
  v2 = pthread_mutex_lock((a1 + 200));
  if (!v2)
  {
    v2 = pthread_rwlock_rdlock(a1);
    if (v2)
    {
      pthread_mutex_unlock((a1 + 200));
    }

    *(a1 + 264) = 0;
  }

  return v2;
}

uint64_t cs_longrdunlock(uint64_t a1)
{
  if (*(a1 + 264))
  {
    cs_longrdunlock_cold_1();
  }

  result = pthread_rwlock_unlock(a1);
  if (!result)
  {

    return pthread_mutex_unlock((a1 + 200));
  }

  return result;
}

os_log_t __CKChunkStoreCreate_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreCreate_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreCreate_block_invoke_9()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreCreate_block_invoke_2_16()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

void CKChunkStoreRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *_CSCheckChunkStoreDB(void *result, sqlite3_int64 a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(result + 17))
  {
    goto LABEL_65;
  }

  v3 = result;
  result = _CSRemovePendingBatchesForInode(result, a2);
  if (*(v3 + 17))
  {
    goto LABEL_65;
  }

  if (a2)
  {
    result = _CSPrepareStatement(v3, @"SELECT pft_rowid, pft_token FROM CSStoragePendingFileChunklistTable where pft_inode = ?", "SELECT pft_rowid, pft_token FROM CSStoragePendingFileChunklistTable where pft_inode = ?");
    if (!result)
    {
      goto LABEL_65;
    }

    v4 = result;
    v5 = sqlite3_bind_int64(*(result + 2), 1, a2);
    if (v5)
    {
      v6 = v5;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCheckChunkStoreDB_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v7 = *MEMORY[0x277CBECE8];
        v8 = sqlite3_errmsg(*(v3 + 24));
        v9 = CFStringCreateWithFormat(v7, 0, @"sqlite3_bind_int64 for inode: %lld returned: %d (%s)\n", a2, v6, v8);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCheckChunkStoreDB_cold_2();
        }

        v10 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v9;
          _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v11 = 0;
        goto LABEL_14;
      }

      v11 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    result = _CSPrepareStatement(v3, @"SELECT pft_rowid, pft_token FROM CSStoragePendingFileChunklistTable", "SELECT pft_rowid, pft_token FROM CSStoragePendingFileChunklistTable");
    v4 = result;
    if (!result)
    {
      goto LABEL_65;
    }
  }

  v11 = _CSPrepareStatement(v3, @"SELECT clt_count, clt_chunkRowIDs FROM CSStorageChunkListTable WHERE clt_rowid = ?", "SELECT clt_count, clt_chunkRowIDs FROM CSStorageChunkListTable WHERE clt_rowid = ?");
  if (!v11)
  {
    goto LABEL_64;
  }

  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    v12 = CS_sqlite3_step(v4);
    if (v12 != 100)
    {
      break;
    }

    v13 = sqlite3_column_int64(*(v4 + 2), 0);
    v14 = sqlite3_column_int64(*(v4 + 2), 1);
    if (!a2)
    {
      goto LABEL_39;
    }

    memset(&v38, 0, sizeof(v38));
    bzero(buf, 0x400uLL);
    if (CKChunkStoreGetLocation(v3, buf, 0x400uLL))
    {
      if (stat(buf, &v38))
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCheckChunkStoreDB_cold_4();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v39 = 136315138;
          *v40 = buf;
          v16 = v15;
          v17 = "stat failed for %s";
          v18 = 12;
LABEL_38:
          _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, v17, v39, v18);
        }
      }

      else
      {
        st_dev = v38.st_dev;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCheckChunkStoreDB_cold_5();
        }

        v21 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v39 = 67109632;
          *v40 = st_dev;
          *&v40[4] = 2048;
          *&v40[6] = a2;
          *&v40[14] = 2048;
          *&v40[16] = 0x8000;
          _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "fsopen(%d,%llu,0x%0llx): unimplemented; returning -1\n", v39, 0x1Cu);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCheckChunkStoreDB_cold_6();
          }
        }

        v22 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v23 = v38.st_dev;
          v24 = __error();
          v25 = strerror(*v24);
          *v39 = 134218498;
          *v40 = v23;
          *&v40[8] = 2048;
          *&v40[10] = a2;
          *&v40[18] = 2080;
          *&v40[20] = v25;
          v16 = v22;
          v17 = "open (%lld,%lld) failed: %s";
          v18 = 32;
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCheckChunkStoreDB_cold_3();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        v16 = v19;
        v17 = "CKChunkStoreGetLocation failed\n";
        v18 = 2;
        goto LABEL_38;
      }
    }

LABEL_39:
    sqlite3_bind_int64(v11[2], 1, v14);
    v26 = CS_sqlite3_step(v11);
    if (v26 == 100)
    {
      v27 = sqlite3_column_int64(v11[2], 0);
      v28 = sqlite3_column_blob(v11[2], 1);
      if (_CSBeginTransactionSqlRc(v3))
      {
        goto LABEL_64;
      }

      _CSReleaseOrphanedChunks(v3, v28, v27);
      if (_CSEndTransactionSqlRc(v3))
      {
        _CSRollbackTransactionSqlRc(v3);
      }
    }

    else
    {
      v29 = v26;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCheckChunkStoreDB_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v30 = sqlite3_errmsg(*(v3 + 24));
        v31 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step returned: %d (%s), listToken: %llu\n", v29, v30, v14);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCheckChunkStoreDB_cold_8();
        }

        v32 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v31;
          _os_log_impl(&dword_243431000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v31)
        {
          CFRelease(v31);
        }
      }
    }

    if (sqlite3_reset(v11[2]) || sqlite3_clear_bindings(v11[2]))
    {
      goto LABEL_64;
    }

    CSsql_corruption_checking_do_0(v3, *(v3 + 24), "DELETE FROM CSStoragePendingFileChunklistTable WHERE pft_rowid = %lld", v13);
  }

  v33 = v12;
  if (v12 != 101)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCheckChunkStoreDB_cold_9();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v34 = sqlite3_errmsg(*(v3 + 24));
      v9 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step returned: %d (%s)\n", v33, v34);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCheckChunkStoreDB_cold_10();
      }

      v35 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v42 = v9;
        _os_log_impl(&dword_243431000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

LABEL_14:
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

LABEL_64:
  _CSFinishPreparedStatement(v11);
  result = _CSFinishPreparedStatement(v4);
LABEL_65:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CKCleanChunkStoreDBForInode(void *a1, sqlite3_int64 a2)
{
  result = CKLockChunkStore(a1);
  if (!result)
  {
    _CSCheckChunkStoreDB(a1, a2);

    return cs_unlock(a1 + 272);
  }

  return result;
}

BOOL CKChunkStoreGetLocation(uint64_t a1, void *a2, size_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = strlen(v5) + 1;
  if (v6 > a3)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreGetLocation_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"bufLen is too small: %lu", a3);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreGetLocation_cold_2();
      }

      v8 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  else
  {
    memcpy(a2, v5, v6);
  }

  result = v6 <= a3;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKChunkStoreGetLocation_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreGetLocation_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t CKChunkStoreRelocateDB(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = copyfile_state_alloc();
  if (v2)
  {
    v3 = v2;
    if (copyfile_state_set(v2, 6u, copyfile_callback))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreRelocateDB_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"copyfile_state_set failed");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreRelocateDB_cold_2();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
LABEL_29:
        if (!v4)
        {
LABEL_32:
          copyfile_state_free(v3);
          goto LABEL_33;
        }

        CFRelease(v4);
LABEL_31:
        v4 = 0;
        goto LABEL_32;
      }

      *buf = 138543362;
      v14 = v4;
    }

    else
    {
      if (!copyfile(*(a1 + 112), *(a1 + 120), v3, 0x800Fu))
      {
        v4 = 1;
        goto LABEL_32;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreRelocateDB_cold_3();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      v8 = *MEMORY[0x277CBECE8];
      v9 = __error();
      v10 = strerror(*v9);
      v4 = CFStringCreateWithFormat(v8, 0, @"copyfile failed: %s", v10);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreRelocateDB_cold_4();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      *buf = 138543362;
      v14 = v4;
    }

    _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    goto LABEL_29;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    CKChunkStoreRelocateDB_cold_5();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"copyfile_state_alloc failed");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreRelocateDB_cold_6();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  v4 = 0;
LABEL_33:
  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_40()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_2_47()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_51()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_2_58()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t CKLockChunkStoreNoFlag(uint64_t a1)
{
  result = cs_wrlock(a1 + 272);
  if (!result)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      cs_unlock(a1 + 272);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CKLongReadLockChunkStore(uint64_t a1)
{
  v2 = (a1 + 256);
  atomic_fetch_add_explicit((a1 + 256), 1u, memory_order_relaxed);
  result = cs_longrdlock(a1 + 272);
  atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed);
  if (!result)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      cs_unlock(a1 + 272);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CKReadLockChunkStore(uint64_t a1)
{
  v2 = (a1 + 256);
  atomic_fetch_add_explicit((a1 + 256), 1u, memory_order_relaxed);
  result = pthread_rwlock_rdlock((a1 + 272));
  atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed);
  if (!result)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      cs_unlock(a1 + 272);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CKChunkStoreSetTestFlags(uint64_t a1, unsigned int a2)
{
  *(a1 + 544) = a2;
  CSSetSQLiteCorruptionTestingEnabled(a2 & 1);
  CSSetContinueOnCorruptDB((a2 >> 1) & 1);

  return CSSetExitOnCorruptDB((a2 >> 3) & 1);
}

uint64_t CKChunkStoreResetTestFlags(uint64_t a1)
{
  *(a1 + 544) = 0;
  CSSetSQLiteCorruptionTestingEnabled(0);
  CSSetContinueOnCorruptDB(0);

  return CSSetExitOnCorruptDB(0);
}

uint64_t _CSBeginTransaction(uint64_t a1)
{
  if (_CSBeginTransactionSqlRc(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _CSEndTransaction(uint64_t a1)
{
  if (_CSEndTransactionSqlRc(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _CSRollbackTransactionSqlRc(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v1 = CS_corruption_checking_sqlite3_exec_0(a1, *(a1 + 24), "ROLLBACK TRANSACTION", &v6);
  if (v1)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRollbackTransactionSqlRc_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to rollback transaction: %d (%s)\n", v1, v6);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRollbackTransactionSqlRc_cold_2();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v8 = v2;
        _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }

    sqlite3_free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t _CSRollbackTransaction(uint64_t a1)
{
  if (_CSRollbackTransactionSqlRc(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t __sqlite3_step(uint64_t a1, sqlite3_stmt *a2, const char *a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = pthread_rwlock_tryrdlock((a1 + 272));
  if (v8 == 16)
  {
LABEL_24:
    v15 = sqlite3_step(a2);
    goto LABEL_25;
  }

  v9 = v8;
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_step_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(v16, 0, @"pthread_mutex_trylock error: %d:%s res: %d in function %s : %d", v17, v19, v9, a3, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __sqlite3_step_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        *&__str[4] = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    goto LABEL_24;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
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
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__str = 0u;
  v27 = 0u;
  snprintf(__str, 0x200uLL, "*** WARNING: _sqlite3_step called without chunkstore_lock in function %s : %d", a3, a4);
  v10 = open("/tmp/cs_log.log", 522, 484);
  if (v10 != -1)
  {
    v11 = v10;
    v12 = strlen(__str);
    write(v11, __str, v12);
    close(v11);
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __sqlite3_step_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"*** WARNING: _sqlite3_step called without chunkstore_lock in function %s : %d", a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_step_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = sqlite3_step(a2);
  cs_unlock(a1 + 272);
LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

os_log_t ____sqlite3_step_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_step_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_step_block_invoke_125()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_step_block_invoke_2_132()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t __sqlite3_reset(uint64_t a1, sqlite3_stmt *a2, const char *a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = pthread_rwlock_tryrdlock((a1 + 272));
  if (v8 == 16)
  {
LABEL_24:
    v15 = sqlite3_reset(a2);
    goto LABEL_25;
  }

  v9 = v8;
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_reset_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(v16, 0, @"pthread_mutex_trylock error: %d:%s res: %d in function %s : %d", v17, v19, v9, a3, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __sqlite3_reset_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        *&__str[4] = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    goto LABEL_24;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
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
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__str = 0u;
  v27 = 0u;
  snprintf(__str, 0x200uLL, "*** WARNING: _sqlite3_reset called without chunkstore_lock in function %s : %d", a3, a4);
  v10 = open("/tmp/cs_log.log", 522, 484);
  if (v10 != -1)
  {
    v11 = v10;
    v12 = strlen(__str);
    write(v11, __str, v12);
    close(v11);
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __sqlite3_reset_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"*** WARNING: _sqlite3_reset called without chunkstore_lock in function %s : %d", a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_reset_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = sqlite3_reset(a2);
  cs_unlock(a1 + 272);
LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

os_log_t ____sqlite3_reset_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_reset_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_reset_block_invoke_146()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_reset_block_invoke_2_150()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t __sqlite3_clear_bindings(uint64_t a1, sqlite3_stmt *a2, const char *a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = pthread_rwlock_tryrdlock((a1 + 272));
  if (v8 == 16)
  {
LABEL_24:
    v15 = sqlite3_clear_bindings(a2);
    goto LABEL_25;
  }

  v9 = v8;
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_clear_bindings_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(v16, 0, @"pthread_mutex_trylock error: %d:%s res: %d in function %s : %d", v17, v19, v9, a3, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __sqlite3_clear_bindings_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        *&__str[4] = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    goto LABEL_24;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
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
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__str = 0u;
  v27 = 0u;
  snprintf(__str, 0x200uLL, "*** WARNING: _sqlite3_clear_bindings called without chunkstore_lock in function %s : %d", a3, a4);
  v10 = open("/tmp/cs_log.log", 522, 484);
  if (v10 != -1)
  {
    v11 = v10;
    v12 = strlen(__str);
    write(v11, __str, v12);
    close(v11);
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __sqlite3_clear_bindings_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"*** WARNING: _sqlite3_clear_bindings called without chunkstore_lock in function %s : %d", a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_clear_bindings_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = sqlite3_clear_bindings(a2);
  cs_unlock(a1 + 272);
LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

os_log_t ____sqlite3_clear_bindings_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_clear_bindings_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_clear_bindings_block_invoke_164()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_clear_bindings_block_invoke_2_168()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t __sqlite3_finalize(uint64_t a1, sqlite3_stmt *a2, const char *a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = pthread_rwlock_tryrdlock((a1 + 272));
  if (v8 == 16)
  {
LABEL_24:
    v15 = sqlite3_finalize(a2);
    goto LABEL_25;
  }

  v9 = v8;
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_finalize_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(v16, 0, @"pthread_mutex_trylock error: %d:%s res: %d in function %s : %d", v17, v19, v9, a3, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __sqlite3_finalize_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        *&__str[4] = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    goto LABEL_24;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
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
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__str = 0u;
  v27 = 0u;
  snprintf(__str, 0x200uLL, "*** WARNING: _sqlite3_finalize called without chunkstore_lock in function %s : %d", a3, a4);
  v10 = open("/tmp/cs_log.log", 522, 484);
  if (v10 != -1)
  {
    v11 = v10;
    v12 = strlen(__str);
    write(v11, __str, v12);
    close(v11);
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __sqlite3_finalize_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"*** WARNING: _sqlite3_finalize called without chunkstore_lock in function %s : %d", a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_finalize_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = sqlite3_finalize(a2);
  cs_unlock(a1 + 272);
LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

os_log_t ____sqlite3_finalize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_finalize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_finalize_block_invoke_182()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_finalize_block_invoke_2_186()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t CS_sqlite3_step(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[2];
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v3 = CS_corruption_causing_sqlite3_step(v2);
  }

  else
  {
    v3 = sqlite3_step(v2);
  }

  v4 = v3;
  _CSHandleDatabaseIOError_0(v3);
  if (v4 == 26 || v4 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CS_sqlite3_step_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_step", v4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CS_sqlite3_step_cold_2();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    _CSHandleCorruptDatabase(v1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

sqlite3_stmt **_CSPrepareStatement(uint64_t a1, const void *a2, const char *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    _CSPrepareStatement_cold_5();
  }

  pthread_mutex_lock((a1 + 32));
  v6 = *(a1 + 96);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, a2);
    if (Value)
    {
      v8 = Value;
      CFDictionaryRemoveValue(*(a1 + 96), a2);
      sqlite3_reset(v8[2]);
      sqlite3_clear_bindings(v8[2]);
      goto LABEL_32;
    }
  }

  else
  {
    *(a1 + 96) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  }

  v8 = malloc_type_malloc(0x18uLL, 0x60040AA6EF139uLL);
  *v8 = a1;
  v8[1] = a2;
  v9 = *(a1 + 24);
  v10 = CSSQLiteCorruptionTestingEnabled();
  v11 = v8 + 2;
  if (v10)
  {
    v12 = CS_corruption_causing_sqlite3_prepare_v2(v9, a3, -1, v11, 0);
  }

  else
  {
    v12 = sqlite3_prepare_v2(v9, a3, -1, v11, 0);
  }

  v13 = v12;
  _CSHandleDatabaseIOError_0(v12);
  if (v13)
  {
    if (v13 == 26 || v13 == 11)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSPrepareStatement_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_prepare_v2", v13);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSPrepareStatement_cold_2();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v23 = v14;
          _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }

      _CSHandleCorruptDatabase(a1);
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSPrepareStatement_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = sqlite3_errmsg(*(a1 + 24));
      v18 = CFStringCreateWithFormat(v16, 0, @"sqlite3_prepare_v2 returned: %d %s for query %s\n", v13, v17, a3);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSPrepareStatement_cold_4();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v18;
        _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    free(v8);
    v8 = 0;
  }

LABEL_32:
  pthread_mutex_unlock((a1 + 32));
  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t *_CSFinishPreparedStatement(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    sqlite3_reset(result[2]);
    sqlite3_clear_bindings(v1[2]);
    pthread_mutex_lock((v2 + 32));
    if (CFDictionaryContainsKey(*(v2 + 96), v1[1]))
    {
      sqlite3_finalize(v1[2]);
      free(v1);
    }

    else
    {
      CFDictionarySetValue(*(v2 + 96), v1[1], v1);
    }

    return pthread_mutex_unlock((v2 + 32));
  }

  return result;
}

BOOL __CSCreateStoragePath(uint64_t a1, int a2, int a3, char *a4, size_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  bzero(v16, 0x400uLL);
  if (CKChunkStoreGetLocation(a1, v16, 0x400uLL))
  {
    if (a3)
    {
      if (snprintf(a4, a5, "%s/%s/%d/%d/%d", v16, "ChunkStorage", HIBYTE(a2), BYTE2(a2), BYTE1(a2)) >= a5)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          __CSCreateStoragePath_cold_5();
        }

        result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outPath too small\n");
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            __CSCreateStoragePath_cold_6();
          }

          v12 = CK_DEFAULT_LOG_INTERNAL_1;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 138543362;
          v15 = v11;
LABEL_18:
          _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_19:
          if (v11)
          {
            CFRelease(v11);
          }

          result = 0;
          goto LABEL_24;
        }

        goto LABEL_24;
      }
    }

    else if (snprintf(a4, a5, "%s/%s/%d/%d/%d/%d", v16, "ChunkStorage", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2) >= a5)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __CSCreateStoragePath_cold_3();
      }

      result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outPath too small\n");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          __CSCreateStoragePath_cold_4();
        }

        v12 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 138543362;
        v15 = v11;
        goto LABEL_18;
      }

      goto LABEL_24;
    }

    result = 1;
    goto LABEL_24;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __CSCreateStoragePath_cold_1();
  }

  result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to get chunk store location!\n");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __CSCreateStoragePath_cold_2();
    }

    v12 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138543362;
    v15 = v11;
    goto LABEL_18;
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSCreateStorageFile(sqlite3_stmt **a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v43 = 0;
  bzero(v44, 0x400uLL);
  if (!CKChunkStoreGetLocation(a1, v44, 0x400uLL))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCreateStorageFile_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKChunkStoreGetLocation failed");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        buf[0].st_dev = 138543362;
        *&buf[0].st_mode = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004017768742uLL);
  if (!v4)
  {
LABEL_25:
    result = 0xFFFFFFFFLL;
    goto LABEL_139;
  }

  v5 = v4;
  v6 = _CSAddStorageFileToDb(a1, 0, &v43);
  if (v6)
  {
    v7 = v6;
LABEL_5:
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCreateStorageFile_cold_28();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to add SF entry to database!\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_29();
      }

      v9 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        buf[0].st_dev = 138543362;
        *&buf[0].st_mode = v8;
LABEL_12:
        _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    v13 = v43;
    bzero(buf, 0x400uLL);
    bzero(__str, 0x400uLL);
    if (!CKChunkStoreGetLocation(a1, buf, 0x400uLL))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v18 = CFStringCreateWithFormat(alloc, 0, @"failed to get chunk store location!");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_4();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v45 = 138543362;
          v46 = v18;
          goto LABEL_92;
        }

        goto LABEL_93;
      }

      goto LABEL_97;
    }

    if (snprintf(__str, 0x400uLL, "%s/%s/%d/%d/%d/", buf, "ChunkStorage", BYTE3(v13), BYTE2(v13), BYTE1(v13)) >= 0x400)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v18 = CFStringCreateWithFormat(alloc, 0, @"path exceeds %d characters!", 1024);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_6();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v45 = 138543362;
          v46 = v18;
          goto LABEL_92;
        }

LABEL_93:
        if (v18)
        {
          CFRelease(v18);
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_9();
        }
      }

LABEL_97:
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      v8 = CFStringCreateWithFormat(alloc, 0, @"unable to create storage directory\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_10();
      }

      v20 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        buf[0].st_dev = 138543362;
        *&buf[0].st_mode = v8;
LABEL_102:
        _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

LABEL_103:
      if (v8)
      {
        CFRelease(v8);
        goto LABEL_105;
      }

LABEL_135:
      v7 = -1;
      goto LABEL_136;
    }

    if (mkdir_recursive(__str, 0x1C0u) && *__error() != 17)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v29 = __error();
        v30 = strerror(*v29);
        v18 = CFStringCreateWithFormat(alloc, 0, @"failed to create directory: %s, %s\n", __str, v30);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_8();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v45 = 138543362;
          v46 = v18;
LABEL_92:
          _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", v45, 0xCu);
        }

        goto LABEL_93;
      }

      goto LABEL_97;
    }

    if (!__CSCreateStoragePath(a1, v13, 0, v44, 0x400uLL))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_11();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v8 = CFStringCreateWithFormat(alloc, 0, @"unable to create storage path\n");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_12();
        }

        v20 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          buf[0].st_dev = 138543362;
          *&buf[0].st_mode = v8;
          goto LABEL_102;
        }

        goto LABEL_103;
      }

LABEL_105:
      LOBYTE(v8) = 0;
      goto LABEL_135;
    }

    v14 = open(v44, 2562, 384);
    if (v14 != -1)
    {
      v21 = v14;
      memset(&v42, 0, sizeof(v42));
      if (fstat(v14, &v42))
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_13();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v22 = __error();
          v23 = strerror(*v22);
          v24 = CFStringCreateWithFormat(alloc, 0, @"fstat failed: %s", v23);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_14();
          }

          v25 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 138543362;
            *&buf[0].st_mode = v24;
            _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          LODWORD(v26) = 0;
          goto LABEL_132;
        }

        LODWORD(v26) = 0;
LABEL_134:
        close(v21);
        unlink(v44);
        LOBYTE(v8) = v26 == 13;
        goto LABEL_135;
      }

      v31 = CSsql_corruption_checking_do_0(a1, a1[3], "UPDATE CSStorageFileTable SET ft_inode = %lld WHERE ft_rowid = %lld", v42.st_ino, v13);
      if (v31)
      {
        v26 = v31;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_15();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_134;
        }

        v32 = sqlite3_errmsg(a1[3]);
        v24 = CFStringCreateWithFormat(alloc, 0, @"failed to set inode for file: %s: %d %s\n", v44, v26, v32);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_16();
        }

        v33 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_132;
        }

        buf[0].st_dev = 138543362;
        *&buf[0].st_mode = v24;
      }

      else
      {
        v34 = CSsql_corruption_checking_do_0(a1, a1[3], "UPDATE CSStorageFileTable SET ft_space = %d WHERE ft_rowid = %lld", 20971620, v13);
        if (v34)
        {
          v26 = v34;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_17();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_134;
          }

          v35 = sqlite3_errmsg(a1[3]);
          v24 = CFStringCreateWithFormat(alloc, 0, @"failed to set space for file: %s: %d %s\n", v44, v26, v35);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_18();
          }

          v33 = CK_DEFAULT_LOG_INTERNAL_1;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          buf[0].st_dev = 138543362;
          *&buf[0].st_mode = v24;
        }

        else
        {
          v36 = CSsql_corruption_checking_do_0(a1, a1[3], "UPDATE CSStorageFileTable SET ft_pspace = %d WHERE ft_rowid = %lld", 0, v13);
          if (!v36)
          {
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCreateStorageFile_cold_21();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
            {
              v39 = CFStringCreateWithFormat(alloc, 0, @"Created a new SF, ino:%llu, rowID:%llu\n", v42.st_ino, v13);
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSCreateStorageFile_cold_22();
              }

              v40 = CK_DEFAULT_LOG_INTERNAL_1;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
              {
                buf[0].st_dev = 138543362;
                *&buf[0].st_mode = v39;
                _os_log_impl(&dword_243431000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v39)
              {
                CFRelease(v39);
              }
            }

            result = 0;
            v5[2] = v21;
            *v5 = v42.st_ino;
            *(v5 + 2) = v13;
            *(v5 + 3) = 20971620;
            *a2 = v5;
            goto LABEL_139;
          }

          v26 = v36;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_19();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_134;
          }

          v37 = sqlite3_errmsg(a1[3]);
          v24 = CFStringCreateWithFormat(alloc, 0, @"failed to set purgeable space for file: %s: %d %s\n", v44, v26, v37);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_20();
          }

          v33 = CK_DEFAULT_LOG_INTERNAL_1;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          buf[0].st_dev = 138543362;
          *&buf[0].st_mode = v24;
        }
      }

      _os_log_impl(&dword_243431000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_132:
      if (v24)
      {
        CFRelease(v24);
      }

      goto LABEL_134;
    }

    if (*__error() != 17)
    {
      break;
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCreateStorageFile_cold_25();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      memset(buf, 0, 144);
      stat(v44, buf);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_26();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v15 = CFStringCreateWithFormat(alloc, 0, @"file %s already exists (size: %lld), trying again.", v44, buf[0].st_size);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_27();
        }

        v16 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          *__str = 138543362;
          v48 = v15;
          _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", __str, 0xCu);
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }
    }

    v17 = _CSAddStorageFileToDb(a1, 0, &v43);
    if (v17)
    {
      v7 = v17;
      goto LABEL_5;
    }
  }

  v7 = *__error();
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCreateStorageFile_cold_23();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
LABEL_15:
    LOBYTE(v8) = 0;
    goto LABEL_136;
  }

  v27 = __error();
  v28 = strerror(*v27);
  v8 = CFStringCreateWithFormat(alloc, 0, @"open(%s) failed: %s", v44, v28);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCreateStorageFile_cold_24();
  }

  v9 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    buf[0].st_dev = 138543362;
    *&buf[0].st_mode = v8;
    goto LABEL_12;
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
    goto LABEL_15;
  }

LABEL_136:
  free(v5);
  _CSRemoveStorageFileFromDb(a1, v43);
  if ((v8 & (v7 < 0)) != 0)
  {
    result = 28;
  }

  else
  {
    result = v7;
  }

LABEL_139:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSAddStorageFileToDb(uint64_t a1, sqlite3_int64 a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v6 = _CSPrepareStatement(a1, @"INSERT INTO CSStorageFileTable (ft_inode, vt_rowID) VALUES (?, ?)", "INSERT INTO CSStorageFileTable (ft_inode, vt_rowID) VALUES (?, ?)");
  v7 = v6;
  if (!v6)
  {
    insert_rowid = 0;
    LODWORD(v10) = 0;
LABEL_7:
    v12 = -1;
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
  v9 = sqlite3_bind_int64(v6[2], 1, a2);
  if (v9 || (v9 = sqlite3_bind_int64(v7[2], 2, 0)) != 0)
  {
    LODWORD(v10) = v9;
LABEL_5:
    insert_rowid = 0;
    v12 = -1;
    goto LABEL_8;
  }

  v15 = CS_sqlite3_step(v7);
  if (v15 != 101)
  {
    v10 = v15;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSAddStorageFileToDb_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v16 = *MEMORY[0x277CBECE8];
    v17 = sqlite3_errmsg(*(a1 + 24));
    insert_rowid = CFStringCreateWithFormat(v16, 0, @"sqlite3_step returned: %d %s\n", v10, v17);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSAddStorageFileToDb_cold_2();
    }

    v18 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = insert_rowid;
      _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (insert_rowid)
    {
      CFRelease(insert_rowid);
      insert_rowid = 0;
    }

    goto LABEL_7;
  }

  insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
  v8 = 0;
  v12 = 0;
  LODWORD(v10) = 101;
LABEL_8:
  _CSFinishPreparedStatement(v7);
  if ((v8 & (v10 == 13)) != 0)
  {
    result = 28;
  }

  else
  {
    result = v12;
  }

  if (!result)
  {
    *a3 = insert_rowid;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt **_CSRemoveStorageFileFromDb(sqlite3_stmt **result, sqlite3_int64 a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = result;
    result = _CSPrepareStatement(result, @"DELETE FROM CSStorageFileTable WHERE ft_rowid = ?", "DELETE FROM CSStorageFileTable WHERE ft_rowid = ?");
    if (result)
    {
      v4 = result;
      if (!sqlite3_bind_int64(result[2], 1, a2))
      {
        v5 = CS_sqlite3_step(v4);
        if (v5 != 101)
        {
          v6 = v5;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRemoveStorageFileFromDb_cold_1();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v7 = *MEMORY[0x277CBECE8];
            v8 = sqlite3_errmsg(v3[3]);
            v9 = CFStringCreateWithFormat(v7, 0, @"sqlite3_step returned: %d %s\n", v6, v8);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSRemoveStorageFileFromDb_cold_2();
            }

            v10 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v13 = v9;
              _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }
        }
      }

      result = _CSFinishPreparedStatement(v4);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSUpdateStorageFileInfo(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = CSsql_get64(a1, 1, "SELECT ft_space FROM CSStorageFileTable WHERE ft_rowid = %lld", *(a2 + 16));
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSUpdateStorageFileInfo_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Updating SF space for ftRowId:%llu curspace:%llu, space:%llu\n", *(a2 + 16), v4, *(a2 + 24));
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUpdateStorageFileInfo_cold_2();
    }

    v6 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v27 = v5;
      _os_log_impl(&dword_243431000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (v4 != *(a2 + 24))
  {
    v9 = _CSPrepareStatement(a1, @"UPDATE CSStorageFileTable SET ft_space = ? WHERE ft_rowid = ?", "UPDATE CSStorageFileTable SET ft_space = ? WHERE ft_rowid = ?");
    v8 = v9;
    if (v9)
    {
      v10 = sqlite3_bind_int64(v9[2], 1, *(a2 + 24));
      if (v10)
      {
        v11 = v10;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_3();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        v12 = *MEMORY[0x277CBECE8];
        v13 = sqlite3_errmsg(*(a1 + 24));
        v14 = CFStringCreateWithFormat(v12, 0, @"sqlite3_bind_int returned: %d %s\n", v11, v13);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_4();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 138543362;
        v27 = v14;
        goto LABEL_38;
      }

      v16 = sqlite3_bind_int64(v8[2], 2, *(a2 + 16));
      if (v16)
      {
        v17 = v16;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_5();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        v18 = *MEMORY[0x277CBECE8];
        v19 = sqlite3_errmsg(*(a1 + 24));
        v14 = CFStringCreateWithFormat(v18, 0, @"sqlite3_bind_int64 returned: %d %s\n", v17, v19);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_6();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 138543362;
        v27 = v14;
        goto LABEL_38;
      }

      v20 = CS_sqlite3_step(v8);
      if (v20 == 101)
      {
        v7 = 0;
        goto LABEL_42;
      }

      v21 = v20;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSUpdateStorageFileInfo_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v22 = *MEMORY[0x277CBECE8];
        v23 = sqlite3_errmsg(*(a1 + 24));
        v14 = CFStringCreateWithFormat(v22, 0, @"sqlite3_step returned: %d %s\n", v21, v23);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_8();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 138543362;
        v27 = v14;
LABEL_38:
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_39:
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }

LABEL_41:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_42;
  }

  v7 = 0;
  v8 = 0;
LABEL_42:
  _CSFinishPreparedStatement(v8);
  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

void _CSCacheStorageFile(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0x7FFFFFFFLL;
  v7 = *(a1 + 264);
  while (*v7)
  {
    if (*(*v7 + 24) < v6)
    {
      v5 = v4;
      v6 = *(*v7 + 24);
    }

    ++v4;
    v7 += 8;
    if (v4 == 5)
    {
      _CSCloseStorageFile(a1, *(*(a1 + 264) + 8 * v5), 0);
      v7 = *(a1 + 264) + 8 * v5;
      break;
    }
  }

  *v7 = a2;
}

void _CSCloseStorageFile(uint64_t a1, _DWORD *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = a2[2];
    if (v6 != -1)
    {
      if (close(v6) == -1)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCloseStorageFile_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"close failed for SF rowID:%llu\n", *(a2 + 2));
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCloseStorageFile_cold_2();
          }

          v8 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v16 = v7;
            _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v7)
          {
            CFRelease(v7);
          }
        }
      }

      a2[2] = -1;
    }

    if (a3)
    {
      _CSUpdateStorageFileInfo(a1, a2);
    }

    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a1 + 264);
      v12 = v9;
      while (1)
      {
        v13 = *(v11 + 8 * v12);
        if (v13 == a2)
        {
          break;
        }

        if (++v12 == 5)
        {
          if ((v10 & 1) == 0)
          {
            free(a2);
          }

          goto LABEL_27;
        }
      }

      if ((v10 & 1) == 0)
      {
        free(v13);
        v11 = *(a1 + 264);
      }

      *(v11 + 8 * v12) = 0;
      v9 = v12 + 1;
      v10 = 1;
    }

    while (v12 != 4);
  }

LABEL_27:
  v14 = *MEMORY[0x277D85DE8];
}

unint64_t _CSSyncStorageFile(uint64_t a1, uint64_t a2, char a3)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_8();
    }

    v15 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v43 = "_CSSyncStorageFile";
    v12 = "could not fsync null storage file in %s";
    v13 = v15;
    v14 = 12;
    goto LABEL_16;
  }

  v6 = *(a2 + 8);
  if (v6 < 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_1();
    }

    v16 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = *(a2 + 16);
    *buf = 134218242;
    v43 = v17;
    v44 = 2080;
    v45 = "_CSSyncStorageFile";
    v12 = "could not fsync closed storage file %llu in %s";
    v13 = v16;
    v14 = 22;
    goto LABEL_16;
  }

  if (fsync(v6))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_2();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 16);
    v9 = __error();
    v10 = strerror(*v9);
    v11 = *__error();
    *buf = 134218754;
    v43 = v8;
    v44 = 2080;
    v45 = "_CSSyncStorageFile";
    v46 = 2080;
    v47 = v10;
    v48 = 1024;
    v49 = v11;
    v12 = "fsync for storage file %llu in %s failed: %s (%d)";
    v13 = v7;
    v14 = 38;
LABEL_16:
    _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if ((a3 & 1) == 0)
  {
    v18 = 1;
    goto LABEL_18;
  }

  bzero(buf, 0x400uLL);
  if (!__CSCreateStoragePath(a1, *(a2 + 16), 1, buf, 0x400uLL))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"could not create storage file path for storage file %llu in %s", *(a2 + 16), "_CSSyncStorageFile");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_4();
    }

    v29 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *v34 = 138543362;
      v35 = v18;
LABEL_43:
      _os_log_impl(&dword_243431000, v29, OS_LOG_TYPE_ERROR, "%{public}@", v34, 0xCu);
    }

LABEL_44:
    if (!v18)
    {
      goto LABEL_18;
    }

    CFRelease(v18);
    goto LABEL_17;
  }

  v21 = open(buf, 0);
  if (v21 < 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_5();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v30 = *MEMORY[0x277CBECE8];
    v31 = __error();
    v32 = strerror(*v31);
    v33 = __error();
    v18 = CFStringCreateWithFormat(v30, 0, @"could not open storage file directory %s in %s: %s (%d)", buf, "_CSSyncStorageFile", v32, *v33);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_6();
    }

    v29 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *v34 = 138543362;
      v35 = v18;
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v22 = v21;
  v23 = fsync(v21);
  v18 = v23 == 0;
  if (v23)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_7();
    }

    v24 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a2 + 16);
      v26 = __error();
      v27 = strerror(*v26);
      v28 = *__error();
      *v34 = 134218754;
      v35 = v25;
      v36 = 2080;
      v37 = "_CSSyncStorageFile";
      v38 = 2080;
      v39 = v27;
      v40 = 1024;
      v41 = v28;
      _os_log_impl(&dword_243431000, v24, OS_LOG_TYPE_ERROR, "fsync for storage file %llu parent directory in %s failed: %s (%d)", v34, 0x26u);
    }
  }

  close(v22);
LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void _CSCloseCachedStorageFile(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 264);
      v5 = *(v4 + v3);
      if (v5)
      {
        if (*(v5 + 16) == a2)
        {
          break;
        }
      }

      v3 += 8;
      if (v3 == 40)
      {
        return;
      }
    }

    _CSCloseStorageFile(a1, *(v4 + v3), a3);
  }
}

void *_CSGetStorageFile(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v3 = *(a2 + 80);
  v4 = v3 + CKSchemeAndSignatureSize((a2 + 84)) + 4;
  if (v4 >> 31)
  {
    _CSGetStorageFile_cold_19();
  }

  for (i = 0; i != 5; ++i)
  {
    v6 = *(*(a1 + 264) + 8 * i);
    if (v6 && *(v6 + 3) >= v4)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetStorageFile_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found cached SF %u at rowID:%llu, space:%llu, needSize:%llu\n", i, *(v6 + 2), *(v6 + 3), v4);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetStorageFile_cold_2();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v51 = v18;
          _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      goto LABEL_114;
    }
  }

  v7 = _CSPrepareStatement(a1, @"SELECT ft_rowid, ft_space FROM CSStorageFileTable WHERE (ft_space >= ? AND ft_status IS NULL)", "SELECT ft_rowid, ft_space FROM CSStorageFileTable WHERE (ft_space >= ? AND ft_status IS NULL)");
  if (v7)
  {
    v8 = v7;
    sqlite3_bind_int(v7[2], 1, v4);
    if (CS_sqlite3_step(v8) != 100)
    {
      _CSFinishPreparedStatement(v8);
      goto LABEL_112;
    }

    v44 = a1;
    v9 = 0;
    v10 = 0;
    alloc = *MEMORY[0x277CBECE8];
    do
    {
      v11 = sqlite3_column_int(v8[2], 0);
      if (v11)
      {
        v12 = v11;
        v13 = sqlite3_column_int(v8[2], 1);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetStorageFile_cold_3();
        }

        v14 = v12;
        v15 = v13;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          v16 = CFStringCreateWithFormat(alloc, 0, @"Checking free space for SF at rowID:%llu, %llu/%llu\n", v12, v13, v4);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetStorageFile_cold_4();
          }

          v17 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v51 = v16;
            _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }

        if (v4 <= v15 && v10 < v15)
        {
          v10 = v15;
          v9 = v14;
        }
      }
    }

    while (CS_sqlite3_step(v8) == 100);
    _CSFinishPreparedStatement(v8);
    a1 = v44;
    if (!v9)
    {
LABEL_112:
      _CSCreateStorageFile(a1, &v46);
      v6 = v46;
      if (!v46)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSGetStorageFile_cold_5();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(alloc, 0, @"Found a candidate SF at rowID:%llu\n", v9);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetStorageFile_cold_6();
      }

      v23 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v51 = v22;
        _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004017768742uLL);
    v46 = v6;
    if (v6)
    {
      bzero(buf, 0x400uLL);
      if (__CSCreateStoragePath(v44, v9, 0, buf, 0x400uLL))
      {
        memset(&v49, 0, sizeof(v49));
        v24 = open(buf, 2, 384);
        *(v6 + 2) = v24;
        if (v24 == -1)
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetStorageFile_cold_15();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v34 = __error();
            v35 = strerror(*v34);
            v36 = CFStringCreateWithFormat(alloc, 0, @"Attempting first aid in %s after open failed for %s: %s\n", "_CSGetStorageFile", buf, v35);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSGetStorageFile_cold_16();
            }

            v37 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *v47 = 138543362;
              v48 = v36;
              _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_ERROR, "%{public}@", v47, 0xCu);
            }

            if (v36)
            {
              CFRelease(v36);
            }
          }

          CSAttemptAutomaticFirstAidForStorageFile(v44, v9);
        }

        else
        {
          if (fstat(v24, &v49) != -1)
          {
            if (v10 <= 0x1400064)
            {
              v25 = 20971620 - v10;
            }

            else
            {
              v25 = 0;
            }

            if (v10 <= 0x1400063 && v25 < v49.st_size)
            {
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSGetStorageFile_cold_9();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                v26 = CFStringCreateWithFormat(alloc, 0, @"The size on disk is different from the size in db for %s: usedSpace:%llu, size:%llu - truncating\n", buf, v25, v49.st_size);
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSGetStorageFile_cold_10();
                }

                v27 = CK_DEFAULT_LOG_INTERNAL_1;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  *v47 = 138543362;
                  v48 = v26;
                  _os_log_impl(&dword_243431000, v27, OS_LOG_TYPE_ERROR, "%{public}@", v47, 0xCu);
                }

                a1 = v44;
                if (v26)
                {
                  CFRelease(v26);
                }
              }

              if (ftruncate(*(v6 + 2), v25))
              {
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSGetStorageFile_cold_11();
                }

                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  v28 = __error();
                  v29 = strerror(*v28);
                  v30 = CFStringCreateWithFormat(alloc, 0, @"ftruncate failed for %s: %s\n", buf, v29);
                  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                  {
                    _CSGetStorageFile_cold_12();
                  }

                  v31 = CK_DEFAULT_LOG_INTERNAL_1;
                  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                  {
                    *v47 = 138543362;
                    v48 = v30;
                    _os_log_impl(&dword_243431000, v31, OS_LOG_TYPE_ERROR, "%{public}@", v47, 0xCu);
                  }

                  if (v30)
                  {
                    CFRelease(v30);
                  }
                }
              }
            }

            *(v6 + 2) = v9;
            *(v6 + 3) = v10;
LABEL_113:
            _CSCacheStorageFile(a1, v6);
            goto LABEL_114;
          }

          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetStorageFile_cold_13();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v38 = __error();
            v39 = strerror(*v38);
            v40 = CFStringCreateWithFormat(alloc, 0, @"fstat failed for %s: %s\n", buf, v39);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSGetStorageFile_cold_14();
            }

            v41 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *v47 = 138543362;
              v48 = v40;
              _os_log_impl(&dword_243431000, v41, OS_LOG_TYPE_ERROR, "%{public}@", v47, 0xCu);
            }

            if (v40)
            {
              CFRelease(v40);
            }
          }

          close(*(v6 + 2));
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetStorageFile_cold_7();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v32 = CFStringCreateWithFormat(alloc, 0, @"_CSCreateStoragePath failed for rowID: %lld\n", v9);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetStorageFile_cold_8();
          }

          v33 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v49.st_dev = 138543362;
            *&v49.st_mode = v32;
            _os_log_impl(&dword_243431000, v33, OS_LOG_TYPE_ERROR, "%{public}@", &v49, 0xCu);
          }

          if (v32)
          {
            CFRelease(v32);
          }
        }
      }

      free(v6);
      v46 = 0;
      goto LABEL_112;
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSGetStorageFile_cold_17();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL stmt");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetStorageFile_cold_18();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    v6 = 0;
  }

LABEL_114:
  v42 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t _CSCompactStorage(uint64_t a1, unint64_t a2)
{
  v244 = *MEMORY[0x277D85DE8];
  v4 = &old_ringing[83];
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCompactStorage_cold_1();
  }

  v5 = &old_ringing[83];
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"spaceNeeded:%llu\n", a2);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_2();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (!a2 || *(a1 + 256))
  {
    v8 = 0;
LABEL_13:
    if (v4[445] != -1)
    {
      _CSCompactStorage_cold_75();
    }

    goto LABEL_15;
  }

  if (*(a1 + 17) == 1)
  {
    _CSCompactStorage_cold_74();
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v8 = 0;
    v24 = 0xFFFFFFFFLL;
    goto LABEL_192;
  }

  v18 = Mutable;
  v19 = _CSPrepareStatement(a1, @"SELECT ft_rowid FROM CSStorageFileTable WHERE ft_pspace > 0 ORDER BY ft_pspace DESC", "SELECT ft_rowid FROM CSStorageFileTable WHERE ft_pspace > 0 ORDER BY ft_pspace DESC");
  if (!v19)
  {
    v8 = 0;
    v24 = 0xFFFFFFFFLL;
    goto LABEL_191;
  }

  v20 = v19;
  while (1)
  {
    v21 = CS_sqlite3_step(v20);
    if (v21 != 100)
    {
      break;
    }

    if (*(a1 + 256))
    {
      goto LABEL_187;
    }

    *buf = sqlite3_column_int64(v20[2], 0);
    v22 = CFNumberCreate(0, kCFNumberLongLongType, buf);
    if (!v22)
    {
      v227 = 0;
      v24 = 0xFFFFFFFFLL;
      goto LABEL_190;
    }

    v23 = v22;
    CFArrayAppendValue(v18, v22);
    CFRelease(v23);
  }

  v25 = v21;
  if (v21 != 101)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v26 = *MEMORY[0x277CBECE8];
      v27 = sqlite3_errmsg(*(a1 + 24));
      v28 = CFStringCreateWithFormat(v26, 0, @"sqlite3_step returned: %d %s\n", v25, v27);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_4();
      }

      v29 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_243431000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v5 = &old_ringing[83];
      if (v28)
      {
        CFRelease(v28);
      }
    }
  }

  _CSFinishPreparedStatement(v20);
  Count = CFArrayGetCount(v18);
  if (Count < 1)
  {
    v20 = 0;
LABEL_187:
    v227 = 0;
LABEL_189:
    v24 = 0;
    goto LABEL_190;
  }

  v30 = 0;
  v227 = 0;
  alloc = *MEMORY[0x277CBECE8];
  v31 = a2;
  do
  {
    if (*(a1 + 256))
    {
      v20 = 0;
      goto LABEL_189;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v18, v30);
    *&valuePtr.st_dev = 0;
    if (!CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, &valuePtr))
    {
      goto LABEL_176;
    }

    if (*(a1 + 17) == 1)
    {
      _CSCompactStorage_cold_21();
    }

    v33 = *&valuePtr.st_dev;
    if ((CSAttemptAutomaticFirstAidForStorageFile(a1, *&valuePtr.st_dev) & 1) == 0)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_5();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      v34 = CFStringCreateWithFormat(alloc, 0, @"Failed first aid check in %s", "removeUnreferencedChunksAtEof");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_6();
      }

      v35 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v34;
        _os_log_impl(&dword_243431000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v34)
      {
        CFRelease(v34);
      }
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_7();
    }

LABEL_65:
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v36 = CFStringCreateWithFormat(alloc, 0, @"ftRowId:%llu, spaceNeeded:%llu\n", v33, v31);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_8();
      }

      v37 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v36;
        _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }

    v38 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v223 = v33;
    if (!v38)
    {
      v42 = 0;
      v43 = 0xFFFFFFFFLL;
      v5 = old_ringing + 664;
      goto LABEL_160;
    }

    v39 = v38;
    v40 = _CSPrepareStatement(a1, @"SELECT ct_rowid, dataLen, offset, refCount FROM CSChunkTable WHERE ft_rowid = ? AND location = ? ORDER BY offset DESC", "SELECT ct_rowid, dataLen, offset, refCount FROM CSChunkTable WHERE ft_rowid = ? AND location = ? ORDER BY offset DESC");
    v41 = v40;
    if (!v40)
    {
      goto LABEL_157;
    }

    v5 = old_ringing + 664;
    if (sqlite3_bind_int64(v40[2], 1, v33) || sqlite3_bind_int(v41[2], 2, 115))
    {
      goto LABEL_76;
    }

    v44 = CS_sqlite3_step(v41);
    v45 = v44 == 100;
    theArray = v39;
    if (v44 != 100)
    {
      v54 = v44;
      __fd = 0;
      v55 = 0;
      goto LABEL_96;
    }

    __fd = 0;
    v46 = -1;
    do
    {
      if (*(a1 + 256))
      {
        v43 = 0;
        v42 = 0;
        goto LABEL_141;
      }

      v218 = v46;
      *v232 = sqlite3_column_int64(v41[2], 0);
      v47 = sqlite3_column_int(v41[2], 1);
      v55 = sqlite3_column_int64(v41[2], 2);
      v48 = sqlite3_column_int64(v41[2], 3);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_9();
      }

      cf = v47;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v49 = CFStringCreateWithFormat(alloc, 0, @"ctRowId:%llu, refCount:%llu, offset:0x%llx, size:0x%llx\n", *v232, v48, v55, v47);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCompactStorage_cold_10();
        }

        v50 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v49;
          _os_log_impl(&dword_243431000, v50, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v49)
        {
          CFRelease(v49);
        }
      }

      if (v48)
      {
        v45 = 1;
        v39 = theArray;
        goto LABEL_106;
      }

      if (v218 <= v55)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCompactStorage_cold_11();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v57 = CFStringCreateWithFormat(alloc, 0, @"Invalid chunk, ftRowId:%llu, ctRowId:%llu, chunkOffset:0x%llx, truncateOffset:0x%llx\n", v223, *v232, v55, v218);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCompactStorage_cold_12();
          }

          v58 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
LABEL_137:
            *buf = 138543362;
            *&buf[4] = v57;
            _os_log_impl(&dword_243431000, v58, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

LABEL_138:
          if (v57)
          {
            CFRelease(v57);
          }
        }

LABEL_140:
        v42 = 0;
        v43 = 0xFFFFFFFFLL;
LABEL_141:
        v5 = old_ringing + 664;
LABEL_142:
        v39 = theArray;
        goto LABEL_159;
      }

      v51 = CFNumberCreate(0, kCFNumberLongLongType, v232);
      if (!v51)
      {
        goto LABEL_140;
      }

      v52 = v51;
      CFArrayAppendValue(theArray, v51);
      CFRelease(v52);
      __fd += cf;
      v53 = CS_sqlite3_step(v41);
      v46 = v55;
    }

    while (v53 == 100);
    v54 = v53;
    v39 = theArray;
    v45 = 1;
LABEL_96:
    v218 = v55;
    if ((v54 - 102) <= 0xFFFFFFFD)
    {
      v5 = &old_ringing[83];
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_17();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v56 = sqlite3_errmsg(*(a1 + 24));
        v57 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step returned: %d %s\n", v54, v56);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCompactStorage_cold_18();
        }

        v58 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_137;
        }

        goto LABEL_138;
      }

LABEL_76:
      v42 = 0;
      v43 = 0xFFFFFFFFLL;
      goto LABEL_159;
    }

LABEL_106:
    v59 = v45;
    _CSFinishPreparedStatement(v41);
    v60 = CFArrayGetCount(v39);
    v5 = &old_ringing[83];
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_13();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v61 = CFStringCreateWithFormat(alloc, 0, @"chunkCount:%u, truncateOffset:0x%llx, freeSpace:%llu\n", v60, v218, __fd);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_14();
      }

      v62 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v61;
        _os_log_impl(&dword_243431000, v62, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v5 = old_ringing + 664;
      if (v61)
      {
        CFRelease(v61);
      }
    }

    if (v60)
    {
      v63 = 0;
    }

    else
    {
      v63 = v59;
    }

    if (v63)
    {
      v41 = 0;
      v43 = 0;
      v42 = 0;
      goto LABEL_142;
    }

    v64 = v60;
    v41 = _CSPrepareStatement(a1, @"DELETE FROM CSChunkTable WHERE ct_rowid = ?", "DELETE FROM CSChunkTable WHERE ct_rowid = ?");
    v39 = theArray;
    if (!v41 || _CSBeginTransactionSqlRc(a1))
    {
      goto LABEL_76;
    }

    if (v64 < 1)
    {
      v65 = 0;
      goto LABEL_154;
    }

    v65 = 0;
    while (1)
    {
      v66 = CFArrayGetValueAtIndex(v39, v65);
      *v232 = 0;
      if (!CFNumberGetValue(v66, kCFNumberLongLongType, v232))
      {
        goto LABEL_129;
      }

      if (sqlite3_bind_int64(v41[2], 1, *v232))
      {
        goto LABEL_153;
      }

      v67 = CS_sqlite3_step(v41);
      if (v67 != 101)
      {
        break;
      }

      if (sqlite3_reset(v41[2]))
      {
        goto LABEL_153;
      }

      v39 = theArray;
      if (sqlite3_clear_bindings(v41[2]))
      {
        goto LABEL_154;
      }

LABEL_129:
      if (v64 == ++v65)
      {
        _CSFinishPreparedStatement(v41);
        goto LABEL_155;
      }
    }

    v68 = v67;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_15();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v69 = sqlite3_errmsg(*(a1 + 24));
      cfa = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step error: %d, %s", v68, v69);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_16();
      }

      v70 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = cfa;
        _os_log_impl(&dword_243431000, v70, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (cfa)
      {
        CFRelease(cfa);
      }
    }

LABEL_153:
    v39 = theArray;
LABEL_154:
    _CSFinishPreparedStatement(v41);
    if (v65 != v64)
    {
LABEL_156:
      _CSRollbackTransactionSqlRc(a1);
      v41 = 0;
LABEL_157:
      v42 = 0;
      v43 = 0xFFFFFFFFLL;
      goto LABEL_158;
    }

LABEL_155:
    if (_CSEndTransactionSqlRc(a1))
    {
      goto LABEL_156;
    }

    v75 = truncateStorageFile(a1, v223, v218, __fd, __fd);
    v41 = 0;
    if (v75)
    {
      v42 = 0;
    }

    else
    {
      v42 = __fd;
    }

    if (v75)
    {
      v43 = 0xFFFFFFFFLL;
    }

    else
    {
      v43 = 0;
    }

LABEL_158:
    v5 = &old_ringing[83];
LABEL_159:
    _CSFinishPreparedStatement(v41);
    CFRelease(v39);
LABEL_160:
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_19();
    }

    if (os_log_type_enabled(v5[433], OS_LOG_TYPE_DEBUG))
    {
      v71 = CFStringCreateWithFormat(alloc, 0, @"ftRowId:%llu, totalFreeSpace:%llu, rc:%d\n", v223, v42, v43);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_20();
      }

      v72 = v5[433];
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v71;
        _os_log_impl(&dword_243431000, v72, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v5 = old_ringing + 664;
      if (v71)
      {
        CFRelease(v71);
      }
    }

    v73 = v31 - v42;
    if (v31 < v42)
    {
      v73 = 0;
    }

    if (v43)
    {
      v74 = 0;
    }

    else
    {
      v74 = v42;
    }

    v227 += v74;
    if (!v43)
    {
      v31 = v73;
    }

LABEL_176:
    v24 = 0;
    v20 = 0;
    ++v30;
  }

  while (v30 < Count && v31);
LABEL_190:
  _CSFinishPreparedStatement(v20);
  v4 = &old_ringing[83];
  v8 = v227;
LABEL_191:
  CFRelease(v18);
LABEL_192:
  if (a2 >= v8)
  {
    v76 = a2 - v8;
  }

  else
  {
    v76 = 0;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCompactStorage_cold_22();
  }

  if (os_log_type_enabled(v5[433], OS_LOG_TYPE_DEBUG))
  {
    v77 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"removeUnreferencedChunks freed %llu bytes, totalFreeSpace:%llu, spaceNeeded:%llu, rc:%d\n", v8, v8, v76, v24);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_23();
    }

    v78 = v5[433];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v77;
      _os_log_impl(&dword_243431000, v78, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v77)
    {
      CFRelease(v77);
    }
  }

  if (v8 >= a2 || *(a1 + 256))
  {
    goto LABEL_13;
  }

  if (*(a1 + 17) == 1)
  {
    _CSCompactStorage_cold_73();
  }

  v79 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (v79)
  {
    v80 = v79;
    v228 = v8;
    v81 = _CSPrepareStatement(a1, @"SELECT ft_rowid FROM CSStorageFileTable WHERE (ft_pspace > 0 AND ft_status IS NULL) ORDER BY ft_pspace DESC", "SELECT ft_rowid FROM CSStorageFileTable WHERE (ft_pspace > 0 AND ft_status IS NULL) ORDER BY ft_pspace DESC");
    if (v81)
    {
      v82 = v81;
      while (1)
      {
        v83 = CS_sqlite3_step(v82);
        if (v83 != 100)
        {
          break;
        }

        if (*(a1 + 256))
        {
          goto LABEL_518;
        }

        *buf = sqlite3_column_int64(v82[2], 0);
        v84 = CFNumberCreate(0, kCFNumberLongLongType, buf);
        if (!v84)
        {
          v86 = 0;
          v87 = 0xFFFFFFFFLL;
          goto LABEL_521;
        }

        v85 = v84;
        CFArrayAppendValue(v80, v84);
        CFRelease(v85);
      }

      v88 = v83;
      if (v83 != 101)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCompactStorage_cold_24();
        }

        if (os_log_type_enabled(v5[433], OS_LOG_TYPE_ERROR))
        {
          v89 = *MEMORY[0x277CBECE8];
          v90 = sqlite3_errmsg(*(a1 + 24));
          v91 = CFStringCreateWithFormat(v89, 0, @"sqlite3_step returned: %d %s\n", v88, v90);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCompactStorage_cold_25();
          }

          v92 = v5[433];
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v91;
            _os_log_impl(&dword_243431000, v92, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v91)
          {
            CFRelease(v91);
          }
        }
      }

      _CSFinishPreparedStatement(v82);
      v224 = CFArrayGetCount(v80);
      if (v224 >= 1)
      {
        v93 = 0;
        v86 = 0;
        alloca = *MEMORY[0x277CBECE8];
        v94 = v76;
        while (2)
        {
          if (*(a1 + 256))
          {
            v82 = 0;
            goto LABEL_520;
          }

          v95 = CFArrayGetValueAtIndex(v80, v93);
          v229 = 0;
          if (!CFNumberGetValue(v95, kCFNumberLongLongType, &v229))
          {
            goto LABEL_484;
          }

          v96 = v229;
          v231 = 0;
          if (*(a1 + 17) == 1)
          {
            _CSCompactStorage_cold_70();
          }

          v226 = v94;
          if (CSAttemptAutomaticFirstAidForStorageFile(a1, v229))
          {
            _CSCloseCachedStorageFile(a1, v96, 0);
            bzero(buf, 0x400uLL);
            if (!__CSCreateStoragePath(a1, v96, 0, buf, 0x400uLL))
            {
              goto LABEL_248;
            }

            v97 = open(buf, 2, 384);
            if (v97 != -1)
            {
              v98 = v97;
              memset(&valuePtr, 0, sizeof(valuePtr));
              if (fstat(v97, &valuePtr) == -1)
              {
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSCompactStorage_cold_62();
                }

                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  __fda = v98;
                  v112 = __error();
                  v113 = strerror(*v112);
                  v114 = CFStringCreateWithFormat(alloca, 0, @"fstat failed for %s: %s", buf, v113);
                  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                  {
                    _CSCompactStorage_cold_63();
                  }

                  v115 = CK_DEFAULT_LOG_INTERNAL_1;
                  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                  {
                    *v232 = 138543362;
                    *&v232[4] = v114;
                    _os_log_impl(&dword_243431000, v115, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                  }

                  if (v114)
                  {
                    CFRelease(v114);
                  }

                  v101 = 0;
                  LODWORD(v103) = 0;
                  LODWORD(v98) = __fda;
                  goto LABEL_300;
                }

                v101 = 0;
              }

              else
              {
                st_size = valuePtr.st_size;
                v100 = _CSPrepareStatement(a1, @"SELECT CSChunkTable.ct_rowid, CSChunkTable.dataLen, CSChunkTable.offset FROM CSStorageFileTable INNER JOIN CSChunkTable on CSChunkTable.ft_rowid = CSStorageFileTable.ft_rowid WHERE CSChunkTable.ft_rowid = ? AND CSChunkTable.refCount > 0 AND CSChunkTable.location = ? AND CSStorageFileTable.ft_status IS NULL ORDER BY CSChunkTable.refCount DESC", "SELECT CSChunkTable.ct_rowid, CSChunkTable.dataLen, CSChunkTable.offset FROM CSStorageFileTable INNER JOIN CSChunkTable on CSChunkTable.ft_rowid = CSStorageFileTable.ft_rowid WHERE CSChunkTable.ft_rowid = ? AND CSChunkTable.refCount > 0 AND CSChunkTable.location = ? AND CSStorageFileTable.ft_status IS NULL ORDER BY CSChunkTable.refCount DESC");
                v101 = v100;
                if (v100)
                {
                  v207 = st_size;
                  v102 = sqlite3_bind_int64(v100[2], 1, v96);
                  if (!v102)
                  {
                    v102 = sqlite3_bind_int(v101[2], 2, 115);
                    if (!v102)
                    {
                      v205 = v101;
                      theArraya = 0;
                      *__fdb = v98;
                      v203 = 0;
                      v118 = 0;
                      v208 = 0;
                      v119 = 0;
                      while (1)
                      {
                        v206 = v118;
                        v120 = v205;
                        v121 = CS_sqlite3_step(v205);
                        if (v121 != 100)
                        {
                          break;
                        }

                        v122 = sqlite3_column_int64(v205[2], 0);
                        v123 = sqlite3_column_int(v205[2], 1);
                        v124 = sqlite3_column_int64(v205[2], 2);
                        v125 = v124;
                        if (!v123)
                        {
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_39();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v146 = CFStringCreateWithFormat(alloca, 0, @"Bad chunk in %s, ctRowId:%llu, chunkOffset:0x%llx, chunkSize:0x%llx\n", buf, v122, v125, 0);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_40();
                            }

                            v147 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v232 = 138543362;
                              *&v232[4] = v146;
                              _os_log_impl(&dword_243431000, v147, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                            }

                            if (v146)
                            {
                              CFRelease(v146);
                            }
                          }

                          goto LABEL_380;
                        }

                        v126 = v123;
                        __nbyte = v123;
                        v204 = v122;
                        if (v124 > 0x1400064)
                        {
                          v148 = "offset_bounded_by_storage_file_length";
                          goto LABEL_359;
                        }

                        v127 = __fdb[0];
                        if (v126 > 0x500019)
                        {
                          v148 = "length_bounded_by_slot_size";
LABEL_359:
                          v149 = xpc_string_create("compact_source_invalid");
                          theArrayb = v148;
                          v150 = xpc_string_create(v148);
                          keys = xmmword_278DB9EB0;
                          values = v149;
                          v151 = v149;
                          v239 = v150;
                          v152 = xpc_dictionary_create(&keys, &values, 2uLL);
                          analytics_send_event();
                          xpc_release(v151);
                          xpc_release(v150);
                          xpc_release(v152);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_38();
                          }

                          v153 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_FAULT))
                          {
                            *v232 = 136316162;
                            *&v232[4] = buf;
                            *&v232[12] = 2048;
                            *&v232[14] = v204;
                            *&v232[22] = 2048;
                            v233 = v125;
                            v234 = 2048;
                            v235 = __nbyte;
                            v236 = 2080;
                            v237 = theArrayb;
                            v154 = v153;
                            v155 = "Bad chunk offset/size in %s, ctRowId:%llu, chunkOffset:0x%llx, chunkSize:0x%llx (%s violated)";
                            v156 = 52;
LABEL_367:
                            _os_log_impl(&dword_243431000, v154, OS_LOG_TYPE_FAULT, v155, v232, v156);
                          }

LABEL_380:
                          LODWORD(v106) = -1;
                          goto LABEL_381;
                        }

                        if (v124 + v126 > 0x1400064)
                        {
                          v148 = "chunk_contained_in_storage_file";
                          goto LABEL_359;
                        }

                        v128 = (theArraya + v126);
                        if (theArraya + v126 > 0x1400064)
                        {
                          v157 = xpc_string_create("compact_destination_invalid");
                          v158 = xpc_string_create("chunk_contained_in_storage_file");
                          keys = xmmword_278DB9EB0;
                          values = v157;
                          v239 = v158;
                          v159 = xpc_dictionary_create(&keys, &values, 2uLL);
                          analytics_send_event();
                          xpc_release(v157);
                          xpc_release(v158);
                          xpc_release(v159);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_37();
                          }

                          v160 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_FAULT))
                          {
                            *v232 = 134218754;
                            *&v232[4] = v204;
                            *&v232[12] = 2048;
                            *&v232[14] = theArraya;
                            *&v232[22] = 2048;
                            v233 = __nbyte;
                            v234 = 2080;
                            v235 = "chunk_contained_in_storage_file";
                            v154 = v160;
                            v155 = "Bad chunk offset/size, ctRowId:%llu, dstOffset:0x%llx, chunkSize:0x%llx (%s violated)";
                            v156 = 42;
                            goto LABEL_367;
                          }

                          goto LABEL_380;
                        }

                        v129 = v208;
                        if (!v208)
                        {
                          v129 = malloc_type_malloc(0x500019uLL, 0x100004052888210uLL);
                          if (!v129)
                          {
                            v208 = 0;
                            LODWORD(v106) = -1;
                            LODWORD(v103) = 100;
                            goto LABEL_383;
                          }
                        }

                        v208 = v129;
                        v130 = pread(__fdb[0], v129, __nbyte, v125);
                        if (v130 != __nbyte)
                        {
                          v161 = v130;
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_28();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v162 = "Read size doesn't match request";
                            if (v161 < 0)
                            {
                              v163 = __error();
                              v162 = strerror(*v163);
                            }

                            v164 = CFStringCreateWithFormat(alloca, 0, @"pread(%d, 0x%llx, 0x%llx) failed: %s, read %lld bytes, file is 0x%llx(%lld) bytes long\n", *__fdb, __nbyte, v125, v162, v161, v207, v207);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_29();
                            }

                            v165 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v232 = 138543362;
                              *&v232[4] = v164;
                              _os_log_impl(&dword_243431000, v165, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                            }

                            if (v164)
                            {
                              CFRelease(v164);
                            }
                          }

                          CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSChunkTable WHERE ct_rowid = %lld", v204);
                          goto LABEL_380;
                        }

                        v131 = v231;
                        if (!v231)
                        {
                          v132 = _CSCreateStorageFile(a1, &v231);
                          if (v132)
                          {
                            v106 = v132;
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_30();
                            }

                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              v169 = CFStringCreateWithFormat(alloca, 0, @"_CSCreateStorageFile failed, rc:%d\n", v106);
                              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                              {
                                _CSCompactStorage_cold_31();
                              }

                              v170 = CK_DEFAULT_LOG_INTERNAL_1;
                              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                              {
LABEL_457:
                                *v232 = 138543362;
                                *&v232[4] = v169;
                                _os_log_impl(&dword_243431000, v170, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                              }

LABEL_458:
                              if (v169)
                              {
                                CFRelease(v169);
                              }
                            }

LABEL_381:
                            LODWORD(v103) = 100;
LABEL_382:
                            v127 = __fdb[0];
LABEL_383:
                            _CSFinishPreparedStatement(v205);
                            close(v127);
                            if (v208)
                            {
                              free(v208);
                            }

                            if (v206)
                            {
                              CFRelease(v206);
                            }

                            goto LABEL_250;
                          }

                          v131 = v231;
                          v203 = *(v231 + 2);
                        }

                        v133 = pwrite(v131[2], v208, __nbyte, theArraya);
                        if (v133 < 0)
                        {
                          LODWORD(v106) = *__error();
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_35();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v166 = *__error();
                            v167 = __error();
                            v168 = strerror(*v167);
                            v169 = CFStringCreateWithFormat(alloca, 0, @"pwrite(%d, sz:0x%llx, o:0x%llx) failed: %d, %s\n", *__fdb, __nbyte, theArraya, v166, v168);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_36();
                            }

                            v170 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_457;
                            }

                            goto LABEL_458;
                          }

                          goto LABEL_381;
                        }

                        v134 = v133;
                        v118 = v206;
                        if (v133 != __nbyte)
                        {
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_32();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v171 = CFStringCreateWithFormat(alloca, 0, @"pwrite(%d, sz:0x%llx, o:0x%llx) failed: wrote %lld bytes\n", *__fdb, __nbyte, theArraya, v134);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_33();
                            }

                            v172 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v232 = 138543362;
                              *&v232[4] = v171;
                              _os_log_impl(&dword_243431000, v172, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                            }

                            if (v171)
                            {
                              CFRelease(v171);
                            }
                          }

                          LODWORD(v106) = 28;
                          goto LABEL_381;
                        }

                        if (!v206)
                        {
                          v118 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
                          if (!v118)
                          {
                            v206 = 0;
LABEL_488:
                            LODWORD(v106) = -1;
                            LODWORD(v103) = 100;
                            goto LABEL_382;
                          }
                        }

                        if (!v203)
                        {
                          _CSCompactStorage_cold_34();
                        }

                        *v232 = v203;
                        *&v232[8] = v204;
                        *&v232[16] = theArraya;
                        v135 = CFDataCreate(0, v232, 24);
                        if (!v135)
                        {
                          v206 = v118;
                          goto LABEL_488;
                        }

                        v136 = v135;
                        CFArrayAppendValue(v118, v135);
                        CFRelease(v136);
                        v119 += __nbyte;
                        theArraya = v128;
                      }

                      v103 = v121;
                      if (v121 != 101)
                      {
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_41();
                        }

                        v120 = v205;
                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                        {
                          v137 = sqlite3_errmsg(*(a1 + 24));
                          v138 = CFStringCreateWithFormat(alloca, 0, @"sqlite3_step error: %d, %s", v103, v137);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_42();
                          }

                          v139 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            *v232 = 138543362;
                            *&v232[4] = v138;
                            _os_log_impl(&dword_243431000, v139, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                          }

                          v120 = v205;
                          if (v138)
                          {
                            CFRelease(v138);
                          }
                        }
                      }

                      _CSFinishPreparedStatement(v120);
                      if (v208)
                      {
                        free(v208);
                      }

                      if (v206)
                      {
                        if (v119)
                        {
                          v140 = *(v231 + 3);
                          v141 = v140 >= v119;
                          v142 = v140 - v119;
                          if (!v141)
                          {
                            v142 = 0;
                          }

                          v103 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_space = %lld, ft_pspace = 0 WHERE ft_rowid = %lld", v142, *(v231 + 2));
                          if (v103)
                          {
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_43();
                            }

                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              v143 = sqlite3_errmsg(*(a1 + 24));
                              v144 = CFStringCreateWithFormat(alloca, 0, @"CSsql_do error: %d, %s", v103, v143);
                              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                              {
                                _CSCompactStorage_cold_44();
                              }

                              v145 = CK_DEFAULT_LOG_INTERNAL_1;
                              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                              {
                                *v232 = 138543362;
                                *&v232[4] = v144;
                                _os_log_impl(&dword_243431000, v145, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                              }

                              if (v144)
                              {
                                CFRelease(v144);
                              }
                            }

LABEL_514:
                            v205 = 0;
LABEL_515:
                            v208 = 0;
                            LODWORD(v106) = -1;
                            goto LABEL_382;
                          }
                        }

                        v205 = _CSPrepareStatement(a1, @"UPDATE CSChunkTable SET offset = ?, ft_rowid = ? WHERE ct_rowid = ?", "UPDATE CSChunkTable SET offset = ?, ft_rowid = ? WHERE ct_rowid = ?");
                        if (!v205)
                        {
                          goto LABEL_514;
                        }

                        if (_CSBeginTransactionSqlRc(a1))
                        {
                          goto LABEL_515;
                        }

                        theArrayc = CFArrayGetCount(v206);
                        if (theArrayc < 1)
                        {
                          v186 = 0;
                        }

                        else
                        {
                          v186 = 0;
                          while (1)
                          {
                            v187 = CFArrayGetValueAtIndex(v206, v186);
                            BytePtr = CFDataGetBytePtr(v187);
                            sqlite3_bind_int64(v205[2], 1, BytePtr[2]);
                            sqlite3_bind_int64(v205[2], 2, *BytePtr);
                            sqlite3_bind_int64(v205[2], 3, BytePtr[1]);
                            v189 = CS_sqlite3_step(v205);
                            if (v189 != 101)
                            {
                              break;
                            }

                            v190 = sqlite3_reset(v205[2]);
                            if (v190 || (v190 = sqlite3_clear_bindings(v205[2])) != 0)
                            {
                              LODWORD(v103) = v190;
                              goto LABEL_500;
                            }

                            if (theArrayc == ++v186)
                            {
                              LODWORD(v103) = 0;
                              v186 = theArrayc;
                              goto LABEL_500;
                            }
                          }

                          v103 = v189;
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_45();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v196 = sqlite3_errmsg(*(a1 + 24));
                            __nbytea = CFStringCreateWithFormat(alloca, 0, @"sqlite3_step error: %d, %s", v103, v196);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_46();
                            }

                            v197 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v232 = 138543362;
                              *&v232[4] = __nbytea;
                              _os_log_impl(&dword_243431000, v197, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                            }

                            if (__nbytea)
                            {
                              CFRelease(__nbytea);
                            }
                          }
                        }

LABEL_500:
                        _CSFinishPreparedStatement(v205);
                        if ((_CSSyncStorageFile(a1, v231, 1) & 1) == 0)
                        {
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_47();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v198 = CFStringCreateWithFormat(alloca, 0, @"failed to sync storage file while relocating chunks in %s", "_CSRelocateStorageFileChunks");
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_48();
                            }

                            v199 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v232 = 138543362;
                              *&v232[4] = v198;
                              _os_log_impl(&dword_243431000, v199, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                            }

                            if (v198)
                            {
                              CFRelease(v198);
                            }
                          }

LABEL_513:
                          _CSRollbackTransactionSqlRc(a1);
                          goto LABEL_514;
                        }

                        if (v186 != theArrayc)
                        {
                          goto LABEL_513;
                        }

                        LODWORD(v103) = _CSEndTransactionSqlRc(a1);
                        if (v103)
                        {
                          goto LABEL_513;
                        }

                        CFRelease(v206);
                        _CSCloseStorageFile(a1, v231, 0);
LABEL_413:
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_51();
                        }
                      }

                      else
                      {
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_49();
                        }

                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                        {
                          v173 = CFStringCreateWithFormat(alloca, 0, @"Nothing was moved from SF ft_rowid:%lld\n", v96);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_50();
                          }

                          v174 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                          {
                            *v232 = 138543362;
                            *&v232[4] = v173;
                            _os_log_impl(&dword_243431000, v174, OS_LOG_TYPE_DEBUG, "%{public}@", v232, 0xCu);
                          }

                          if (v173)
                          {
                            CFRelease(v173);
                          }

                          goto LABEL_413;
                        }
                      }

                      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                      {
                        v175 = CFStringCreateWithFormat(alloca, 0, @"Removing SF %s\n", buf);
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_52();
                        }

                        v176 = CK_DEFAULT_LOG_INTERNAL_1;
                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                        {
                          *v232 = 138543362;
                          *&v232[4] = v175;
                          _os_log_impl(&dword_243431000, v176, OS_LOG_TYPE_DEBUG, "%{public}@", v232, 0xCu);
                        }

                        if (v175)
                        {
                          CFRelease(v175);
                        }
                      }

                      if (unlink(buf))
                      {
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_53();
                        }

                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                        {
                          v177 = __error();
                          v178 = strerror(*v177);
                          v179 = CFStringCreateWithFormat(alloca, 0, @"unlink failed for %s: %s\n", buf, v178);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_54();
                          }

                          v180 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            *v232 = 138543362;
                            *&v232[4] = v179;
                            _os_log_impl(&dword_243431000, v180, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                          }

                          if (v179)
                          {
                            CFRelease(v179);
                          }
                        }
                      }

                      close(__fdb[0]);
                      v181 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSChunkTable WHERE ft_rowid = %lld", v96);
                      if (v181)
                      {
                        v182 = v181;
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_55();
                        }

                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                        {
                          v183 = sqlite3_errmsg(*(a1 + 24));
                          v184 = CFStringCreateWithFormat(alloca, 0, @"sqlite3_step error: %d (%s)", v182, v183);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_56();
                          }

                          v185 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_467;
                          }

                          goto LABEL_468;
                        }
                      }

                      else
                      {
                        v191 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStorageFileTable WHERE ft_rowid = %lld", v96);
                        if (v191)
                        {
                          v192 = v191;
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_57();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v193 = sqlite3_errmsg(*(a1 + 24));
                            v184 = CFStringCreateWithFormat(alloca, 0, @"CSsql_do error: %d (%s)", v192, v193);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_58();
                            }

                            v185 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
LABEL_467:
                              *v232 = 138543362;
                              *&v232[4] = v184;
                              _os_log_impl(&dword_243431000, v185, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                            }

LABEL_468:
                            if (v184)
                            {
                              CFRelease(v184);
                            }
                          }
                        }
                      }

                      v109 = v207 - v119;
                      if (v207 < v119)
                      {
                        _CSCompactStorage_cold_61();
                      }

                      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                      {
                        _CSCompactStorage_cold_59();
                      }

                      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                      {
                        v194 = CFStringCreateWithFormat(alloca, 0, @"fileSize:%llu, totalMoved:%llu\n", v207, v119);
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_60();
                        }

                        v195 = CK_DEFAULT_LOG_INTERNAL_1;
                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                        {
                          *v232 = 138543362;
                          *&v232[4] = v194;
                          _os_log_impl(&dword_243431000, v195, OS_LOG_TYPE_DEBUG, "%{public}@", v232, 0xCu);
                        }

                        if (v194)
                        {
                          CFRelease(v194);
                        }
                      }

LABEL_480:
                      v86 += v109;
                      if (v226 >= v109)
                      {
                        v94 = v226 - v109;
                      }

                      else
                      {
                        v94 = 0;
                      }

                      v4 = old_ringing + 664;
                      goto LABEL_484;
                    }
                  }

                  LODWORD(v103) = v102;
LABEL_300:
                  _CSFinishPreparedStatement(v101);
                  close(v98);
LABEL_249:
                  LODWORD(v106) = -1;
LABEL_250:
                  if (v231)
                  {
                    v107 = *(v231 + 2);
                    _CSCloseStorageFile(a1, v231, 0);
                    if (v107)
                    {
                      bzero(v232, 0x400uLL);
                      if (__CSCreateStoragePath(a1, v107, 0, v232, 0x400uLL))
                      {
                        unlink(v232);
                      }

                      _CSRemoveStorageFileFromDb(a1, v107);
                    }
                  }

                  if (v103 == 13 && v106 < 0)
                  {
                    v109 = 28;
                  }

                  else
                  {
                    v109 = v106;
                  }

                  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                  {
                    _CSCompactStorage_cold_68();
                  }

                  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                  {
                    v110 = CFStringCreateWithFormat(alloca, 0, @"There was a problem compacting SF ft_rowid:%lld, rc:%d\n", v96, v109);
                    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                    {
                      _CSCompactStorage_cold_69();
                    }

                    v111 = CK_DEFAULT_LOG_INTERNAL_1;
                    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                    {
                      *v232 = 138543362;
                      *&v232[4] = v110;
                      _os_log_impl(&dword_243431000, v111, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
                    }

                    if (v110)
                    {
                      CFRelease(v110);
                    }
                  }

                  if (!v109)
                  {
                    goto LABEL_480;
                  }

                  if (v109 == 28)
                  {
                    v82 = 0;
                    v87 = 28;
                    v4 = old_ringing + 664;
                    goto LABEL_521;
                  }

                  v4 = old_ringing + 664;
                  v94 = v226;
LABEL_484:
                  v87 = 0;
                  v82 = 0;
                  if (++v93 >= v224 || !v94)
                  {
                    goto LABEL_521;
                  }

                  continue;
                }
              }

              LODWORD(v103) = 0;
              goto LABEL_300;
            }

            if (*__error() == 2)
            {
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSCompactStorage_cold_66();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                v104 = CFStringCreateWithFormat(alloca, 0, @"%s does not exist, ft_rowid:%llu\n", buf, v96);
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSCompactStorage_cold_67();
                }

                v105 = CK_DEFAULT_LOG_INTERNAL_1;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  break;
                }

LABEL_246:
                if (v104)
                {
                  CFRelease(v104);
                }
              }

LABEL_248:
              LODWORD(v103) = 0;
              goto LABEL_249;
            }

            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCompactStorage_cold_64();
            }

            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_248;
            }

            v116 = __error();
            v117 = strerror(*v116);
            v104 = CFStringCreateWithFormat(alloca, 0, @"open failed for %s, ft_rowid=%lld: %s", buf, v96, v117);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCompactStorage_cold_65();
            }

            v105 = CK_DEFAULT_LOG_INTERNAL_1;
            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_246;
            }
          }

          else
          {
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCompactStorage_cold_26();
            }

            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_248;
            }

            v104 = CFStringCreateWithFormat(alloca, 0, @"Failed first aid check in %s, skipping chunk copying", "_CSRelocateStorageFileChunks");
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCompactStorage_cold_27();
            }

            v105 = CK_DEFAULT_LOG_INTERNAL_1;
            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_246;
            }
          }

          break;
        }

        *v232 = 138543362;
        *&v232[4] = v104;
        _os_log_impl(&dword_243431000, v105, OS_LOG_TYPE_ERROR, "%{public}@", v232, 0xCu);
        goto LABEL_246;
      }

      v82 = 0;
LABEL_518:
      v86 = 0;
LABEL_520:
      v87 = 0;
LABEL_521:
      _CSFinishPreparedStatement(v82);
      v5 = old_ringing + 664;
    }

    else
    {
      v86 = 0;
      v87 = 0xFFFFFFFFLL;
    }

    CFRelease(v80);
    v8 = v228;
  }

  else
  {
    v86 = 0;
    v87 = 0xFFFFFFFFLL;
  }

  if (v4[445] != -1)
  {
    _CSCompactStorage_cold_71();
  }

  v8 += v86;
  if (os_log_type_enabled(v5[433], OS_LOG_TYPE_DEBUG))
  {
    v200 = v76 - v86;
    if (v76 < v86)
    {
      v200 = 0;
    }

    v201 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"copyReferencedChunks freed %llu bytes, totalFreeSpace:%llu, spaceNeeded:%llu, rc:%d\n", v86, v8, v200, v87);
    if (v4[445] != -1)
    {
      _CSCompactStorage_cold_72();
    }

    v202 = v5[433];
    if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v201;
      _os_log_impl(&dword_243431000, v202, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v201)
    {
      CFRelease(v201);
    }

    goto LABEL_13;
  }

LABEL_15:
  if (os_log_type_enabled(v5[433], OS_LOG_TYPE_DEBUG))
  {
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"freeSpace:%llu\n", v8);
    if (v4[445] != -1)
    {
      _CSCompactStorage_cold_76();
    }

    v10 = v5[433];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v9;
      _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  v11 = sqlite3_wal_checkpoint_v2(*(a1 + 24), 0, 1, 0, 0);
  if (v11)
  {
    v12 = v11;
    if (v4[445] != -1)
    {
      _CSCompactStorage_cold_77();
    }

    v13 = v5[433];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = sqlite3_errstr(v12);
      *buf = 136315394;
      *&buf[4] = "_CSCompactStorage";
      v242 = 2080;
      v243 = v14;
      _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_FAULT, "failed to checkpoint WAL in %s: %s", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t _CSStoreChunks(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, void *a5, uint64_t a6)
{
  v81 = *MEMORY[0x277D85DE8];
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  if (Mutable)
  {
    v10 = Mutable;
    if (a3)
    {
      v11 = (a2 + 84);
      v12 = a3;
      do
      {
        *&valuePtr = 0;
        if (_CSStorageFileForChunkSignature(a1, v11, 115, &valuePtr))
        {
          v13 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
          if (v13)
          {
            v14 = v13;
            CFSetAddValue(v10, v13);
            CFRelease(v14);
          }
        }

        v11 += a4;
        --v12;
      }

      while (v12);
    }

    Count = CFSetGetCount(v10);
    v16 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFSetGetValues(v10, v16);
    if (Count < 1)
    {
      free(v16);
    }

    else
    {
      v17 = 0;
      v18 = 1;
      do
      {
        *&valuePtr = 0;
        if (CFNumberGetValue(v16[v17], kCFNumberLongLongType, &valuePtr))
        {
          v18 &= CSAttemptAutomaticFirstAidForStorageFile(a1, valuePtr);
        }

        ++v17;
      }

      while (Count != v17);
      free(v16);
      CFRelease(v10);
      if (v18)
      {
        goto LABEL_25;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed first aid check in %s", "_CSStoreChunks");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_2();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        LODWORD(valuePtr) = 138543362;
        *(&valuePtr + 4) = v10;
        _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", &valuePtr, 0xCu);
      }

      if (!v10)
      {
        goto LABEL_25;
      }
    }

    CFRelease(v10);
  }

LABEL_25:
  if (_CSBeginTransactionSqlRc(a1))
  {
    v20 = 0;
    goto LABEL_195;
  }

  _CSSetDirtyState(a1, 1);
  if (!a3)
  {
    if (_CSEndTransactionSqlRc(a1))
    {
      v20 = 0;
      goto LABEL_194;
    }

    goto LABEL_200;
  }

  v20 = 0;
  v66 = a4;
  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSStoreChunks_cold_3();
    }

    v21 = a2 + v20 * v66;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(alloc, 0, @"o:0x%llx, sz:0x%x, (0x%x/%u/%llu)\n", *(v21 + 72), *(v21 + 80), *(v21 + 84), *(v21 + 25), *(v21 + 16));
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_4();
      }

      v23 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(valuePtr) = 138543362;
        *(&valuePtr + 4) = v22;
        _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", &valuePtr, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    if (!*(v21 + 80))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
      {
        if (a6)
        {
          v24 = *(a6 + 104);
        }

        else
        {
          v24 = 0;
        }

        v25 = CFStringCreateWithFormat(alloc, 0, @"zero length chunk for file %s\n", v24);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_6();
        }

        v26 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(valuePtr) = 138543362;
          *(&valuePtr + 4) = v25;
          _os_log_impl(&dword_243431000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@", &valuePtr, 0xCu);
        }

        if (v25)
        {
          CFRelease(v25);
        }
      }
    }

    if (*(a1 + 17))
    {
      v27 = 0;
      insert_rowid = 0;
      goto LABEL_143;
    }

    if (a6 && *(a6 + 183) == 1)
    {
      *(a6 + 528) = mach_absolute_time();
    }

    insert_rowid = _CSTokenForChunkSignature(a1, (v21 + 84), 115);
    if (insert_rowid)
    {
      v29 = _CSChunkIsInvalid(a1, insert_rowid);
      v30 = v29;
      v31 = v29;
      if (!a6)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v31 = 0;
      v30 = 1;
      if (!a6)
      {
        goto LABEL_62;
      }
    }

    if (*(a6 + 183) == 1)
    {
      *(a6 + 536) += mach_absolute_time() - *(a6 + 528);
    }

LABEL_62:
    if (v31)
    {
      v32 = @"UPDATE CSChunkTable SET cid = ?, ft_rowid = ?, offset = ?, dataLen = ?, refCount = ?, timestamp = ?, location = ? WHERE ct_rowid = ?";
      v33 = "UPDATE CSChunkTable SET cid = ?, ft_rowid = ?, offset = ?, dataLen = ?, refCount = ?, timestamp = ?, location = ? WHERE ct_rowid = ?";
    }

    else
    {
      v32 = @"INSERT INTO CSChunkTable (cid, ft_rowid, offset, dataLen, refCount, timestamp, location) VALUES (?, ?, ?, ?, ?, ?, ?)";
      v33 = "INSERT INTO CSChunkTable (cid, ft_rowid, offset, dataLen, refCount, timestamp, location) VALUES (?, ?, ?, ?, ?, ?, ?)";
    }

    v27 = _CSPrepareStatement(a1, v32, v33);
    if (!v27)
    {
      goto LABEL_143;
    }

    if (a6 && *(a6 + 183) == 1)
    {
      *(a6 + 528) = mach_absolute_time();
    }

    if ((v30 & 1) == 0)
    {
      if (*(v21 + 25) == 1)
      {
        if (a6 && *(a6 + 184) == 1)
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStoreChunks_cold_7();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            v39 = CFStringCreateWithFormat(alloc, 0, @"Retaining chunk: o:0x%llx, sz:0x%x\n", *(v21 + 72), *(v21 + 80));
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSStoreChunks_cold_8();
            }

            v40 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(valuePtr) = 138543362;
              *(&valuePtr + 4) = v39;
              _os_log_impl(&dword_243431000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", &valuePtr, 0xCu);
            }

            if (v39)
            {
              CFRelease(v39);
            }
          }

          printSignature((v21 + 84));
        }

        if (!_CSRetainChunkForRowID(a1, insert_rowid))
        {
          insert_rowid = 0;
        }
      }

      goto LABEL_143;
    }

    if (v31)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_11();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v34 = CFStringCreateWithFormat(alloc, 0, @"Fixing corruption in chunk %llu by storing chunk: o:0x%llx, sz:0x%x\n", insert_rowid, *(v21 + 72), *(v21 + 80));
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_12();
        }

        v35 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(valuePtr) = 138543362;
          *(&valuePtr + 4) = v34;
          _os_log_impl(&dword_243431000, v35, OS_LOG_TYPE_DEBUG, "%{public}@", &valuePtr, 0xCu);
        }

        if (v34)
        {
          CFRelease(v34);
        }
      }

      v36 = _CSRefCountForChunkWithRowID(a1, insert_rowid);
      if (v36 < 0)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_13();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v43 = CFStringCreateWithFormat(alloc, 0, @"Could not retrieve retain count for chunk with ct_rowid %llu", insert_rowid);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStoreChunks_cold_14();
          }

          v44 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            LODWORD(valuePtr) = 138543362;
            *(&valuePtr + 4) = v43;
            _os_log_impl(&dword_243431000, v44, OS_LOG_TYPE_ERROR, "%{public}@", &valuePtr, 0xCu);
          }

          if (v43)
          {
            CFRelease(v43);
          }
        }

        v37 = 0;
        if (a6)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v37 = v36;
        if (v36)
        {
          v38 = v36;
          do
          {
            _CSReleaseChunkForSignature(a1, (v21 + 84));
            --v38;
          }

          while (v38);
        }

        if (a6)
        {
          goto LABEL_125;
        }
      }
    }

    else
    {
      if (a6)
      {
        if (*(a6 + 184) == 1)
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStoreChunks_cold_9();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            v41 = CFStringCreateWithFormat(alloc, 0, @"Storing chunk: o:0x%llx, sz:0x%x\n", *(v21 + 72), *(v21 + 80));
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSStoreChunks_cold_10();
            }

            v42 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(valuePtr) = 138543362;
              *(&valuePtr + 4) = v41;
              _os_log_impl(&dword_243431000, v42, OS_LOG_TYPE_DEBUG, "%{public}@", &valuePtr, 0xCu);
            }

            if (v41)
            {
              CFRelease(v41);
            }
          }

          printSignature((v21 + 84));
        }

        v37 = 0;
LABEL_125:
        if (*(a6 + 183) == 1)
        {
          *(a6 + 536) += mach_absolute_time() - *(a6 + 528);
          if (*(a6 + 183))
          {
            *(a6 + 512) = mach_absolute_time();
          }
        }

        v79 = 0u;
        memset(v80, 0, 25);
        valuePtr = 0u;
        v45 = _StoreChunk(a1, v21, &valuePtr);
        if (*(a6 + 183) == 1 && (*(a6 + 520) += mach_absolute_time() - *(a6 + 512), (*(a6 + 183) & 1) != 0))
        {
          *(a6 + 528) = mach_absolute_time();
          if ((v45 & 1) == 0)
          {
            goto LABEL_143;
          }
        }

        else if (!v45)
        {
          goto LABEL_143;
        }

        goto LABEL_136;
      }

      v37 = 0;
    }

    v79 = 0u;
    memset(v80, 0, 25);
    valuePtr = 0u;
    if ((_StoreChunk(a1, v21, &valuePtr) & 1) == 0)
    {
      goto LABEL_143;
    }

LABEL_136:
    v46 = "offset_bounded_by_storage_file_length";
    if (*(&v79 + 1) > 0x1400064uLL || (v46 = "length_bounded_by_slot_size", v80[2] > 0x500019u) || (v46 = "chunk_contained_in_storage_file", *(&v79 + 1) + v80[2] > 0x1400064))
    {
      v47 = xpc_string_create("chunk_insert_invalid");
      v48 = xpc_string_create(v46);
      *keys = xmmword_278DB9EB0;
      values[0] = v47;
      values[1] = v48;
      v49 = xpc_dictionary_create(keys, values, 2uLL);
      analytics_send_event();
      xpc_release(v47);
      xpc_release(v48);
      xpc_release(v49);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_19();
      }

      v50 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v71 = *(&v79 + 1);
        v72 = 1024;
        v73 = v80[2];
        v74 = 2080;
        v75 = v46;
        _os_log_impl(&dword_243431000, v50, OS_LOG_TYPE_FAULT, "Bad chunk value(s): o:0x%llx, sz:0x%x (%s violated)", buf, 0x1Cu);
      }

      goto LABEL_143;
    }

    v51 = CKSchemeAndSignatureSize((v21 + 84));
    v52 = sqlite3_bind_blob(v27[2], 1, (v21 + 84), v51, 0);
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int(v27[2], 2, SHIDWORD(valuePtr));
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int64(v27[2], 3, *(&v79 + 1));
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int(v27[2], 4, v51 + v80[2] + 4);
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int64(v27[2], 5, v37 + *(v21 + 25));
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int64(v27[2], 6, *&v80[3]);
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int(v27[2], 7, 115);
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = v31;
    }

    if (v53 == 1)
    {
      v52 = sqlite3_bind_int64(v27[2], 8, insert_rowid);
    }

    if (v52)
    {
LABEL_161:
      v54 = v52;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_15();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v55 = sqlite3_errmsg(*(a1 + 24));
        v56 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_bind failed: %s (%d)\n", v55, v54);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_16();
        }

        v57 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_167;
        }

        goto LABEL_168;
      }
    }

    else
    {
      v58 = CS_sqlite3_step(v27);
      if (v58 == 101)
      {
        *(v21 + 24) = 1;
        if ((v31 & 1) == 0)
        {
          insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
        }
      }

      else
      {
        v59 = v58;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_17();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v60 = sqlite3_errmsg(*(a1 + 24));
          v56 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step failed: %s (%d)\n", v60, v59);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStoreChunks_cold_18();
          }

          v57 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
LABEL_167:
            *buf = 138543362;
            v71 = v56;
            _os_log_impl(&dword_243431000, v57, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

LABEL_168:
          if (v56)
          {
            CFRelease(v56);
          }
        }
      }
    }

LABEL_143:
    _CSFinishPreparedStatement(v27);
    if (a6 && *(a6 + 183) == 1)
    {
      *(a6 + 536) += mach_absolute_time() - *(a6 + 528);
    }

    a5[v20] = insert_rowid;
    if (!insert_rowid)
    {
      break;
    }

    if (++v20 == a3)
    {
      v20 = a3;
      goto LABEL_192;
    }
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSStoreChunks_cold_20();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v61 = CFStringCreateWithFormat(alloc, 0, @"_CSInsertChunk failed, i:%llu, count:%llu\n", v20, a3);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSStoreChunks_cold_21();
    }

    v62 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      LODWORD(valuePtr) = 138543362;
      *(&valuePtr + 4) = v61;
      _os_log_impl(&dword_243431000, v62, OS_LOG_TYPE_ERROR, "%{public}@", &valuePtr, 0xCu);
    }

    if (v61)
    {
      CFRelease(v61);
    }
  }

  if (!v20)
  {
    goto LABEL_193;
  }

LABEL_192:
  if (!_CSRecordPendingChunks(a1, a5, v20, *(a6 + 40)))
  {
    goto LABEL_194;
  }

LABEL_193:
  if (_CSEndTransactionSqlRc(a1))
  {
LABEL_194:
    _CSRollbackTransactionSqlRc(a1);
    goto LABEL_195;
  }

  if (v20 == a3)
  {
LABEL_200:
    _CSSetDirtyState(a1, 0);
    result = 1;
  }

  else
  {
LABEL_195:
    if (a3 > v20)
    {
      bzero(&a5[v20], 8 * (a3 - v20));
    }

    result = 0;
  }

  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSStorageFileForChunkSignature(uint64_t a1, unsigned __int8 *a2, int a3, sqlite3_int64 *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = _CSPrepareStatement(a1, @"SELECT ft_rowid FROM CSChunkTable WHERE cid = ? AND location = ?", "SELECT ft_rowid FROM CSChunkTable WHERE cid = ? AND location = ?");
  if (v8)
  {
    v9 = CKSchemeAndSignatureSize(a2);
    if (!sqlite3_bind_blob(v8[2], 1, a2, v9, 0) && !sqlite3_bind_int(v8[2], 2, a3))
    {
      v10 = CS_sqlite3_step(v8);
      v11 = v10;
      if ((v10 - 102) > 0xFFFFFFFD)
      {
        if (v10 == 100)
        {
          v16 = sqlite3_column_int64(v8[2], 0);
          v17 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStorageFileForChunkSignature_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v12 = *MEMORY[0x277CBECE8];
          v13 = sqlite3_errmsg(*(a1 + 24));
          v14 = CFStringCreateWithFormat(v12, 0, @"sqlite3_step returned: %s (%d), for signature:", v13, v11);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStorageFileForChunkSignature_cold_2();
          }

          v15 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v21 = v14;
            _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v14)
          {
            CFRelease(v14);
          }
        }

        printSignature(a2);
      }
    }
  }

  v16 = 0;
  v17 = 0;
LABEL_18:
  _CSFinishPreparedStatement(v8);
  if (a4)
  {
    *a4 = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void _CSSetDirtyState(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  if (!CKChunkStoreGetLocation(a1, __s, 0x400uLL))
  {
    goto LABEL_23;
  }

  v4 = strlen(__s);
  snprintf(&__s[v4], 1024 - v4, "/%s", "ChunkStoreDirty");
  if (a2)
  {
    v5 = open(__s, 512, 384);
    if (v5 != -1)
    {
      close(v5);
      goto LABEL_23;
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSetDirtyState_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      v10 = CFStringCreateWithFormat(v12, 0, @"open failed on %s: %d (%s)\n", __s, v13, v15);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSSetDirtyState_cold_4();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      v18 = v10;
LABEL_20:
      _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_21:
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  else if (unlink(__s))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSetDirtyState_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = *MEMORY[0x277CBECE8];
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      v10 = CFStringCreateWithFormat(v6, 0, @"unlink failed %s: %d (%s)\n", __s, v7, v9);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSSetDirtyState_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      v18 = v10;
      goto LABEL_20;
    }
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
}

const void *_CSRecordPendingChunks(uint64_t a1, const void *a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17))
  {
    v4 = 0;
LABEL_7:
    insert_rowid = 0;
    goto LABEL_8;
  }

  v9 = _CSPrepareStatement(a1, @"INSERT INTO CSStoragePendingChunksTable (pct_inode, pct_count, pct_chunkRowIDs) VALUES (?, ?, ?)", "INSERT INTO CSStoragePendingChunksTable (pct_inode, pct_count, pct_chunkRowIDs) VALUES (?, ?, ?)");
  v4 = v9;
  if (!v9 || sqlite3_bind_int64(v9[2], 1, a4) || sqlite3_bind_int64(v4[2], 2, a3) || sqlite3_bind_blob(v4[2], 3, a2, 8 * a3, 0))
  {
    goto LABEL_7;
  }

  v13 = CS_sqlite3_step(v4);
  if (v13 == 101)
  {
    insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
    goto LABEL_8;
  }

  v14 = v13;
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRecordPendingChunks_cold_1();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = *MEMORY[0x277CBECE8];
  v16 = sqlite3_errmsg(*(a1 + 24));
  insert_rowid = CFStringCreateWithFormat(v15, 0, @"sqlite3_step returned: %d (%s)\n", v14, v16);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRecordPendingChunks_cold_2();
  }

  v17 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = insert_rowid;
    _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (insert_rowid)
  {
    CFRelease(insert_rowid);
    goto LABEL_7;
  }

LABEL_8:
  _CSFinishPreparedStatement(v4);
  v11 = *MEMORY[0x277D85DE8];
  return insert_rowid;
}

uint64_t *_CSCommitChunkedFile(uint64_t *result, sqlite3_int64 a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    if ((*(result + 17) & 1) == 0)
    {
      v4 = _CSPrepareStatement(result, @"SELECT pft_inode FROM CSStoragePendingFileChunklistTable WHERE pft_token = ?", "SELECT pft_inode FROM CSStoragePendingFileChunklistTable WHERE pft_token = ?");
      v5 = v4;
      if (v4 && !sqlite3_bind_int64(v4[2], 1, a2))
      {
        while (1)
        {
          v7 = CS_sqlite3_step(v5);
          if (v7 != 100)
          {
            break;
          }

          v6 = sqlite3_column_int64(v5[2], 0);
          _CSRemovePendingBatchesForInode(v2, v6);
        }

        v8 = v7;
        if (v7 != 101)
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCommitChunkedFile_cold_1();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v9 = *MEMORY[0x277CBECE8];
            v10 = sqlite3_errmsg(*(v2 + 24));
            v11 = CFStringCreateWithFormat(v9, 0, @"sqlite3_step returned: %d %s\n", v8, v10);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCommitChunkedFile_cold_2();
            }

            v12 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v15 = v11;
              _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v11)
            {
              CFRelease(v11);
            }
          }
        }

        CSsql_corruption_checking_do_0(v2, *(v2 + 24), "DELETE FROM CSStoragePendingFileChunklistTable WHERE pft_token = %llu", a2);
      }

      result = _CSFinishPreparedStatement(v5);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *_CSRemovePendingBatchesForInode(uint64_t a1, sqlite3_int64 a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSRemovePendingBatchesForInode_cold_7();
  }

  if (a2)
  {
    v4 = _CSPrepareStatement(a1, @"SELECT * FROM CSStoragePendingChunksTable WHERE pct_inode = ?", "SELECT * FROM CSStoragePendingChunksTable WHERE pct_inode = ?");
    v5 = v4;
    if (!v4)
    {
      goto LABEL_36;
    }

    v6 = sqlite3_bind_int64(v4[2], 1, a2);
    if (v6)
    {
      v7 = v6;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemovePendingBatchesForInode_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = sqlite3_errmsg(*(a1 + 24));
        v10 = CFStringCreateWithFormat(v8, 0, @"sqlite3_bind_int64 for inode:%lld returned: %d (%s)\n", a2, v7, v9);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRemovePendingBatchesForInode_cold_2();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = 138543362;
        v24 = v10;
LABEL_33:
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_34:
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_36;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v5 = _CSPrepareStatement(a1, @"SELECT * FROM CSStoragePendingChunksTable", "SELECT * FROM CSStoragePendingChunksTable");
    if (!v5)
    {
      goto LABEL_36;
    }
  }

  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    v12 = CS_sqlite3_step(v5);
    if (v12 != 100)
    {
      break;
    }

    v13 = sqlite3_column_int64(v5[2], 0);
    v14 = sqlite3_column_int64(v5[2], 2);
    v15 = sqlite3_column_blob(v5[2], 3);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemovePendingBatchesForInode_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v16 = CFStringCreateWithFormat(alloc, 0, @"Removing pending batch for inode:%llu, rowId:%llu, count:0x%llu\n", a2, v13, v14);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemovePendingBatchesForInode_cold_4();
      }

      v17 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v24 = v16;
        _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    _CSReleaseOrphanedChunks(a1, v15, v14);
    CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStoragePendingChunksTable WHERE pct_rowid = %lld", v13);
  }

  v18 = v12;
  if (v12 != 101)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemovePendingBatchesForInode_cold_5();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v19 = sqlite3_errmsg(*(a1 + 24));
      v10 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step returned: %d %s\n", v18, v19);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemovePendingBatchesForInode_cold_6();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v24 = v10;
      goto LABEL_33;
    }
  }

LABEL_36:
  result = _CSFinishPreparedStatement(v5);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_int64 _CSRegisterStorageChunkList(uint64_t a1, const void *a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (_CSBeginTransactionSqlRc(a1))
  {
    goto LABEL_10;
  }

  if (*(a1 + 17))
  {
    v8 = 0;
  }

  else
  {
    v9 = _CSPrepareStatement(a1, @"INSERT INTO CSStorageChunkListTable (clt_count, clt_chunkRowIDs, clt_inode) VALUES (?, ?, ?)", "INSERT INTO CSStorageChunkListTable (clt_count, clt_chunkRowIDs, clt_inode) VALUES (?, ?, ?)");
    v8 = v9;
    if (v9 && !sqlite3_bind_int64(v9[2], 1, a3) && !sqlite3_bind_blob(v8[2], 2, a2, 8 * a3, 0) && !sqlite3_bind_int64(v8[2], 3, a4))
    {
      v13 = CS_sqlite3_step(v8);
      if (v13 == 101)
      {
        insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
        if (insert_rowid)
        {
          v10 = insert_rowid;
          if (!CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStoragePendingChunksTable WHERE pct_inode = %llu", a4) && !CSsql_corruption_checking_do_0(a1, *(a1 + 24), "INSERT INTO CSStoragePendingFileChunklistTable (pft_token, pft_inode) VALUES (%llu, %llu)", v10, a4))
          {
            _CSFinishPreparedStatement(v8);
            if (!_CSEndTransactionSqlRc(a1))
            {
              goto LABEL_11;
            }

            goto LABEL_9;
          }
        }
      }

      else
      {
        v15 = v13;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRegisterStorageChunkList_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v16 = *MEMORY[0x277CBECE8];
          v17 = sqlite3_errmsg(*(a1 + 24));
          v18 = CFStringCreateWithFormat(v16, 0, @"sqlite3_step returned: %d (%s)\n", v15, v17);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRegisterStorageChunkList_cold_2();
          }

          v19 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v21 = v18;
            _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v18)
          {
            CFRelease(v18);
          }
        }
      }
    }
  }

  _CSFinishPreparedStatement(v8);
LABEL_9:
  _CSRollbackTransactionSqlRc(a1);
LABEL_10:
  v10 = 0;
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _CSRemoveStoredFile(uint64_t a1, sqlite3_int64 a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSRemoveStoredFile_cold_13();
  }

  if (!a2)
  {
LABEL_17:
    v10 = 0;
    v13 = 0;
    goto LABEL_66;
  }

  v29 = 0;
  v4 = _CSChunkRefsForToken(a1, a2, &v29);
  if (!v4)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemoveStoredFile_cold_9();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v10 = 0;
      goto LABEL_68;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"_CSChunkRefsForToken failed\n");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemoveStoredFile_cold_10();
    }

    v12 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v11;
      _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_17;
  }

  v5 = v4;
  v6 = _CSChunkSignatureForToken(a1, *v4, 0);
  if (v6)
  {
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      v9 = _CSBeginTransactionSqlRc(a1);
      if (v9)
      {
        v10 = v9;
        goto LABEL_63;
      }

      v15 = v29;
      if (!v29)
      {
LABEL_50:
        v19 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStorageChunkListTable WHERE clt_rowid = %llu", a2);
        if (v19)
        {
          v10 = v19;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRemoveStoredFile_cold_5();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v20 = *MEMORY[0x277CBECE8];
            v21 = sqlite3_errmsg(*(a1 + 24));
            v22 = CFStringCreateWithFormat(v20, 0, @"CSsql_do returned: %d (%s)\n", v10, v21);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSRemoveStoredFile_cold_6();
            }

            v23 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v31 = v22;
              _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v22)
            {
              CFRelease(v22);
            }
          }
        }

        else
        {
          v10 = _CSEndTransactionSqlRc(a1);
          if (!v10)
          {
            v13 = 1;
            goto LABEL_64;
          }
        }

        _CSRollbackTransactionSqlRc(a1);
LABEL_63:
        v13 = 0;
LABEL_64:
        free(v8);
        goto LABEL_65;
      }

      alloc = *MEMORY[0x277CBECE8];
      v16 = v5;
      while (_CSChunkSignatureForToken(a1, *v16, v8))
      {
        if (_CSReleaseChunkForSignature(a1, v8))
        {
          goto LABEL_49;
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRemoveStoredFile_cold_1();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        v17 = CFStringCreateWithFormat(alloc, 0, @"_CSReleaseChunkForSignature failed for chunk token %lld\n", *v16);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRemoveStoredFile_cold_2();
        }

        v18 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

LABEL_47:
        if (v17)
        {
          CFRelease(v17);
        }

LABEL_49:
        v16 += 2;
        if (!--v15)
        {
          goto LABEL_50;
        }
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemoveStoredFile_cold_3();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v17 = CFStringCreateWithFormat(alloc, 0, @"_CSChunkSignatureForToken failed for chunk token %lld\n", *v16);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemoveStoredFile_cold_4();
      }

      v18 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

LABEL_46:
      *buf = 138543362;
      v31 = v17;
      _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      goto LABEL_47;
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemoveStoredFile_cold_7();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid signature size, sigSize:%u\n", 0);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemoveStoredFile_cold_8();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v13;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v13)
      {
        v10 = 0;
        goto LABEL_65;
      }

      CFRelease(v13);
    }
  }

  v10 = 0;
  v13 = 0;
LABEL_65:
  free(v5);
LABEL_66:
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRemoveStoredFile_cold_11();
  }

LABEL_68:
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"token:%llu, result:%d, sqlRc:%d\n", a2, v13, v10);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemoveStoredFile_cold_12();
    }

    v25 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v31 = v24;
      _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}