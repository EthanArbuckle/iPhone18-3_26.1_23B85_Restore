id __RunTimeThemeRefForBytes_block_invoke(void *a1, void *a2)
{
  v4 = [a2 objectForKey:a1[4]];
  if (v4)
  {
    result = [v4 unsignedIntegerValue];
    *(*(a1[5] + 8) + 24) = result;
  }

  else
  {
    v6 = [[CUIStructuredThemeStore alloc] initWithBytes:a1[7] length:a1[8]];
    if (v6)
    {
      v7 = v6;
      *(*(a1[5] + 8) + 24) = _RegisterThemeProvider(v6);

      v8 = [NSNumber numberWithUnsignedInteger:*(*(a1[5] + 8) + 24)];
      v9 = a1[4];

      return [a2 setObject:v8 forKey:v9];
    }

    else
    {
      result = [[NSString alloc] initWithFormat:@"RunTimeThemeRefForBytes() failed to initialize CUIStructuredThemeStore"];
      *(*(a1[6] + 8) + 40) = result;
    }
  }

  return result;
}

uint64_t BOMStreamFree(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if ((*(result + 80) & 2) != 0 && BOMStreamFlush(result, a2, a3, a4, a5, a6, a7, a8))
    {
      return 1;
    }

    else
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        if (*(v8 + 80))
        {
          free(v9);
        }
      }

      free(v8);
      return 0;
    }
  }

  return result;
}

uint64_t BOMStreamReadUInt32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40) == 1)
  {
    v9 = BOMExceptionHandlerMessage("%s read called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt32");
    v10 = *__error();
    v11 = v9;
    v12 = 0;
    v13 = 278;
LABEL_5:
    _BOMExceptionHandlerCall(v11, v12, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v13, v10);
    v17 = 0;
    goto LABEL_7;
  }

  v14 = *(a1 + 56);
  v15 = v14 + 1;
  if ((v14 + 1) > *(a1 + 64))
  {
    v16 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt32");
    v10 = *__error();
    v11 = v16;
    v12 = 1;
    v13 = 280;
    goto LABEL_5;
  }

  v17 = *v14;
  *(a1 + 56) = v15;
LABEL_7:
  v18 = bswap32(v17);
  if (*(a1 + 4) == 2)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

void *BOMStreamWithAddress(uint64_t a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (v6)
  {
    __CFSetLastAllocationEventName();
    *v6 = 0x100000002;
    v6[4] = a2;
    *(v6 + 10) = a3;
    v6[6] = a1;
    *(v6 + 80) &= ~1u;
    if (a2 < 0)
    {
      _CUILog(4, "%s: stream invalid: overflow", v8, v9, v10, v11, v12, v13, "BOMStreamWithAddress");
LABEL_7:
      BOMStreamFree(v6, v7, v8, v9, v10, v11, v12, v13);
      return 0;
    }

    v6[7] = a1;
    v6[8] = a1 + a2;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = __error();
    strerror(*v14);
    _CUILog(4, "%s malloc: %s", v15, v16, v17, v18, v19, v20, "BOMStreamWithAddress");
  }

  return v6;
}

uint64_t _ReadBlockTable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = BOMStreamReadUInt32(a2, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v18 = result;
    if (result >> 29 || (v11 = (8 * result), v11 > *(a1 + 1064)))
    {
      v19 = BOMExceptionHandlerMessage("bad value for block table count", v11, v12, v13, v14, v15, v16, v17, v39);
      v20 = __error();
      _BOMExceptionHandlerCall(v19, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1610, *v20);
      return 1;
    }

    else if (*(a1 + 1052))
    {
      _ExpandBlockTable(a1, result);
      v29 = 0;
      v30 = 4 * v18;
      v31 = 4;
      do
      {
        *(*(a1 + 1072) + v31 - 4) = BOMStreamReadUInt32(a2, v22, v23, v24, v25, v26, v27, v28);
        *(*(a1 + 1072) + v31) = BOMStreamReadUInt32(a2, v32, v33, v34, v35, v36, v37, v38);
        *(*(a1 + 1080) + v29) &= ~1u;
        v31 += 8;
        v29 += 4;
      }

      while (v30 != v29);
      return 0;
    }

    else
    {
      DataPointer = BOMStreamGetDataPointer(a2, v11);
      result = 0;
      *(a1 + 1072) = DataPointer;
      *(a1 + 1068) = v18;
    }
  }

  return result;
}

uint64_t _ReadFreeList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 1052) & 1) == 0)
  {
    v9 = _BOMFreeListAllocate();
    result = 0;
    *(a1 + 1088) = v9;
    return result;
  }

  UInt32 = BOMStreamReadUInt32(a2, a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 1088) = _BOMFreeListAllocate();
  if (!UInt32)
  {
    return 0;
  }

  v20 = (8 * UInt32);
  if (v20 < 1)
  {
    v31 = BOMExceptionHandlerMessage("_ReadFreeList: tring to read %d byte for freelist table.", v13, v14, v15, v16, v17, v18, v19, v20);
    v32 = __error();
    _BOMExceptionHandlerCall(v31, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1755, *v32);
  }

  else
  {
    v21 = malloc_type_malloc(v20, 0x2D95399uLL);
    if (v21)
    {
      v27 = v21;
      BOMStreamReadBuffer(a2, v21, v20, v22, v23, v24, v25, v26);
      v28 = *(a1 + 1088);
      v29 = *(v28 + 16);
      v30 = BOMStreamGetByteOrder(a2) == 1;
      v29(v28, v27, v20, v30);
      free(v27);
      return 0;
    }
  }

  return 1;
}

uint64_t BOMStreamGetDataPointer(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  result = *(a1 + 56);
  *(a1 + 56) = result + a2;
  return result;
}

void *_BOMFreeListAllocate()
{
  v0 = malloc_type_malloc(0x48uLL, 0x1080040D23F5C74uLL);
  if (v0)
  {
    __CFSetLastAllocationEventName();
    v0[2] = _dense_initialize;
    v0[3] = _dense_serialize;
    v0[4] = _dense_deallocate;
    v0[7] = _dense_clear;
    v0[5] = _dense_addFreeRange;
    v0[6] = _dense_allocateRange;
    v0[8] = _dense_print;
    v1 = malloc_type_malloc(0x18uLL, 0x10A0040DF6760FDuLL);
    if (v1)
    {
      v2 = v1;
      v3 = malloc_type_calloc(0x20uLL, 8uLL, 0x2004093837F09uLL);
      *v2 = v3;
      if (v3)
      {
        v2[1] = 0;
        *(v2 + 4) = 32;
        *v0 = v2;
        *(v0 + 2) = 0;
        return v0;
      }

      free(v0);
      v4 = v2;
    }

    else
    {
      v4 = v0;
    }

    free(v4);
    return 0;
  }

  return v0;
}

void *BOMStorageOpenInRAM(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0x1FF)
  {
    v8 = BOMExceptionHandlerMessage("stream invalid; root page is outside of address range", a2, a3, a4, a5, a6, a7, a8, v164);
    v9 = *__error();
    v10 = v8;
    v11 = 489;
LABEL_14:
    _BOMExceptionHandlerCall(v10, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v11, v9);
    return 0;
  }

  v12 = a3;
  v13 = a2;
  v15 = BOMStreamWithAddress(a1, 512, 0);
  if (!v15)
  {
    v108 = BOMExceptionHandlerMessage("can't read from memory %p", v16, v17, v18, v19, v20, v21, v22, a1);
    v9 = *__error();
    v10 = v108;
    v11 = 497;
    goto LABEL_14;
  }

  v23 = v15;
  if (BOMStreamReadUInt32(v15, v16, v17, v18, v19, v20, v21, v22) == 1112493395 && BOMStreamReadUInt32(v23, v24, v25, v26, v27, v28, v29, v30) == 1953460837)
  {
    UInt32 = BOMStreamReadUInt32(v23, v24, v25, v26, v27, v28, v29, v30);
    if (UInt32 == 1)
    {
      v39 = malloc_type_calloc(1uLL, 0x470uLL, 0x10A0040835A29DFuLL);
      if (!v39)
      {
        v111 = __error();
        strerror(*v111);
        _CUILog(4, "%s: malloc: %s", v112, v113, v114, v115, v116, v117, "BOMStorage BOMStorageOpenInRAM(void *, size_t, Boolean)");
        BOMStreamFree(v23, v118, v119, v120, v121, v122, v123, v124);
        return v39;
      }

      v39[140] = BomSys_default();
      *(v39 + 257) = -1;
      *(v39 + 258) = v13;
      *(v39 + 259) = v13;
      *(v39 + 263) = *(v39 + 263) & 0xFFFFFFF6 | v12 & 1;
      *(v39 + 264) = BOMStreamReadUInt32(v23, v40, v41, v42, v43, v44, v45, v46);
      *(v39 + 265) = BOMStreamReadUInt32(v23, v47, v48, v49, v50, v51, v52, v53);
      *(v39 + 266) = BOMStreamReadUInt32(v23, v54, v55, v56, v57, v58, v59, v60);
      *(v39 + 274) = BOMStreamReadUInt32(v23, v61, v62, v63, v64, v65, v66, v67);
      *(v39 + 275) = BOMStreamReadUInt32(v23, v68, v69, v70, v71, v72, v73, v74);
      *(v39 + 263) |= 6u;
      BOMStreamFree(v23, v75, v76, v77, v78, v79, v80, v81);
      v89 = *(v39 + 265);
      v90 = *(v39 + 266);
      v91 = __CFADD__(v90, v89);
      v92 = v90 + v89;
      if (v91)
      {
        v93 = BOMExceptionHandlerMessage(" <memory>: stream invalid; overflow of admin offset+size", v82, v83, v84, v85, v86, v87, v88, v164);
        v94 = *__error();
        v95 = v93;
        v96 = 552;
      }

      else
      {
        v125 = *(v39 + 258);
        if (v92 <= v125)
        {
          v127 = *(v39 + 274);
          v128 = *(v39 + 275);
          v91 = __CFADD__(v128, v127);
          v129 = v128 + v127;
          if (v91)
          {
            v130 = BOMExceptionHandlerMessage("<memory>: stream invalid; overflow of toc offset+size", v82, v83, v84, v85, v86, v87, v88, v164);
            v94 = *__error();
            v95 = v130;
            v96 = 566;
          }

          else
          {
            if (v129 <= v125)
            {
              *(v39 + 262) = v125;
              v39[130] = a1;
              _CreateBlockTable(v39);
              v132 = *(v39 + 265);
              if (v132)
              {
                v133 = BOMStreamWithAddress(v39[130] + v132, *(v39 + 266), 0);
                if (!v133)
                {
                  v154 = __error();
                  v155 = strerror(*v154);
                  v163 = BOMExceptionHandlerMessage("can't read from <memory>: %s", v156, v157, v158, v159, v160, v161, v162, v155);
                  v94 = *__error();
                  v95 = v163;
                  v96 = 592;
                  goto LABEL_26;
                }

                v140 = v133;
                if (_ReadBlockTable(v39, v133, v134, v135, v136, v137, v138, v139) || _ReadFreeList(v39, v140, v141, v142, v143, v144, v145, v146))
                {
                  goto LABEL_27;
                }

                BOMStreamFree(v140, v147, v148, v149, v150, v151, v152, v153);
              }

              else
              {
                v39[136] = _BOMFreeListAllocate();
              }

              __strlcpy_chk();
              return v39;
            }

            v131 = BOMExceptionHandlerMessage("<memory>: stream invalid; toc range is outside file", v82, v83, v84, v85, v86, v87, v88, v164);
            v94 = *__error();
            v95 = v131;
            v96 = 573;
          }
        }

        else
        {
          v126 = BOMExceptionHandlerMessage("<memory>: stream invalid; admin range is outside of file", v82, v83, v84, v85, v86, v87, v88, v164);
          v94 = *__error();
          v95 = v126;
          v96 = 559;
        }
      }

LABEL_26:
      _BOMExceptionHandlerCall(v95, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v96, v94);
LABEL_27:
      free(v39);
      return 0;
    }

    v110 = BOMExceptionHandlerMessage("<memory> has an unknown version: 0x%X", v32, v33, v34, v35, v36, v37, v38, UInt32);
    v98 = *__error();
    v99 = v110;
    v100 = 517;
  }

  else
  {
    v97 = BOMExceptionHandlerMessage("%s is not a BOMStorage file", v24, v25, v26, v27, v28, v29, v30, "<memory>");
    v98 = *__error();
    v99 = v97;
    v100 = 504;
  }

  _BOMExceptionHandlerCall(v99, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v100, v98);
  BOMStreamFree(v23, v101, v102, v103, v104, v105, v106, v107);
  return 0;
}

void *_CreateBlockTable(void *result)
{
  if (*(result + 1052))
  {
    v1 = result;
    result[134] = malloc_type_calloc(1uLL, 0x800uLL, 0x100004000313F17uLL);
    result = malloc_type_calloc(1uLL, 0x400uLL, 0x1000040BEE6EA24uLL);
    v1[135] = result;
    *(v1 + 267) = 256;
  }

  return result;
}

void PerformBlockWithThemeRefCache(uint64_t a1)
{
  if (PerformBlockWithThemeRefCache___onceToken != -1)
  {
    PerformBlockWithThemeRefCache_cold_1();
  }

  os_unfair_lock_lock(&PerformBlockWithThemeRefCache___themeRefCacheLookupMutex);
  (*(a1 + 16))(a1, PerformBlockWithThemeRefCache___themeRefsByUniqueKey);

  os_unfair_lock_unlock(&PerformBlockWithThemeRefCache___themeRefCacheLookupMutex);
}

void BOMExceptionHandlerSet(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (__BOMExceptionHandlerKey___onceHandler != -1)
  {
    BOMExceptionHandlerSet_cold_1();
  }

  if (pthread_setspecific(__BOMExceptionHandlerKey___key, a1))
  {

    _CUILog(4, "BOMExceptionHandlerSet couldn't pthread_setspecific", v10, v11, v12, v13, v14, v15, a9);
  }
}

void _CUILog(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_CUILog___onceDefaultToken != -1)
  {
    _CUILog_cold_1();
  }

  if (a1 != 3 || _CUILog___showDebugLogs == 1)
  {
    v11 = objc_autoreleasePoolPush();
    if (__logToStderr == 1)
    {
      *buf = &a9;
      v12 = [[NSString alloc] initWithUTF8String:a2];
      v13 = [[NSString alloc] initWithFormat:v12 arguments:&a9];

      if (a1 <= 2)
      {
        if (a1 != 1 && a1 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_20;
      }

      if (a1 == 3)
      {
LABEL_20:
        fprintf(__stderrp, "%s\n", [v13 UTF8String]);
        goto LABEL_40;
      }

      if (a1 != 4)
      {
LABEL_40:

        objc_autoreleasePoolPop(v11);
        return;
      }

      fprintf(__stderrp, "%s\n", [v13 UTF8String]);
LABEL_30:
      qword_1ED4EBC50 = [v13 UTF8String];
      goto LABEL_40;
    }

    v14 = [[NSString alloc] initWithUTF8String:a2];
    v13 = [[NSString alloc] initWithFormat:v14 arguments:&a9];

    if (a1 > 2)
    {
      if (a1 != 3)
      {
        if (a1 != 4)
        {
          goto LABEL_40;
        }

        if (__onceToken != -1)
        {
          _CUILog_cold_2();
        }

        v18 = __handle;
        if (os_log_type_enabled(__handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v13;
          _os_log_impl(&dword_18DF47000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          if (__onceToken != -1)
          {
            _CUILog_cold_2();
          }
        }

        v19 = __handle;
        if (os_log_type_enabled(__handle, OS_LOG_TYPE_FAULT))
        {
          _CUILog_cold_4(v13, v19);
        }

        goto LABEL_30;
      }

      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v21 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v13;
      v16 = v21;
      v17 = OS_LOG_TYPE_DEBUG;
    }

    else if (a1 == 1)
    {
      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v20 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v13;
      v16 = v20;
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_40;
      }

      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v15 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v13;
      v16 = v15;
      v17 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_18DF47000, v16, v17, "%{public}@", buf, 0xCu);
    goto LABEL_40;
  }
}

id _LookupThemeProvider(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = ___LookupThemeProvider_block_invoke;
  v11[3] = &unk_1E7251588;
  v11[4] = &v12;
  v11[5] = a1;
  __PerformBlockWithThemeRegistry(v11);
  v8 = v13[5];
  if (!v8)
  {
    _CUILog(4, "CoreUI: CUIThemeStore: No theme registered with id=%lu", v2, v3, v4, v5, v6, v7, a1);
    v8 = v13[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_18DF4A33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PerformBlockWithThemeRegistry(uint64_t a1)
{
  if (__PerformBlockWithThemeRegistry___onceToken != -1)
  {
    __PerformBlockWithThemeRegistry_cold_1();
  }

  os_unfair_lock_lock(&__PerformBlockWithThemeRegistry___lock);
  (*(a1 + 16))(a1, __PerformBlockWithThemeRegistry___themeRegistry);

  os_unfair_lock_unlock(&__PerformBlockWithThemeRegistry___lock);
}

uint64_t BOMStorageCopyFromBlockRange(uint64_t a1, unsigned int a2, uint64_t a3, size_t __len, void *__dst, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !__dst)
  {
    if (a1)
    {
      if (a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v19 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1112, *v19);
      if (a2)
      {
LABEL_8:
        if (!__dst)
        {
          goto LABEL_17;
        }

        return 1;
      }
    }

    v20 = __error();
    _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !bid", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1114, *v20);
    if (!__dst)
    {
LABEL_17:
      v11 = *__error();
      v12 = "BOMStorageCopyFromBlockRange: !data";
      v13 = 1116;
      goto LABEL_43;
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v11 = *__error();
    v12 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v13 = 1122;
LABEL_43:
    _BOMExceptionHandlerCall(v12, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v13, v11);
    return 1;
  }

  v16 = *(a1 + 1068);
  if (v16 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, __len, __dst, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
    v16 = *(a1 + 1068);
  }

  else
  {
    v17 = *(*(a1 + 1072) + 8 * a2);
    v18 = bswap32(v17);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v17 = v18;
    }

    if (v17 != -1)
    {
      goto LABEL_25;
    }
  }

  if (v16 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, __len, __dst, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v16 = *(a1 + 1068);
  }

  else
  {
    v21 = *(*(a1 + 1072) + 8 * a2 + 4);
    v22 = bswap32(v21);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v21 = v22;
    }

    if (v21 == -1)
    {
      v11 = *__error();
      v12 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
      v13 = 1127;
      goto LABEL_43;
    }
  }

LABEL_25:
  if (v16 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, __len, __dst, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
    v16 = *(a1 + 1068);
    v24 = -1;
  }

  else
  {
    v23 = bswap32(*(*(a1 + 1072) + 8 * a2));
    if (*(a1 + 1052))
    {
      v24 = *(*(a1 + 1072) + 8 * a2);
    }

    else
    {
      v24 = v23;
    }
  }

  if (v16 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, __len, __dst, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v25 = 0;
  }

  else
  {
    v25 = *(*(a1 + 1072) + 8 * a2 + 4);
    v26 = bswap32(v25);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v25 = v26;
    }
  }

  if (__CFADD__(v25, v24))
  {
    v11 = *__error();
    v12 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v13 = 1137;
    goto LABEL_43;
  }

  if (v25 + v24 > *(a1 + 1032))
  {
    v11 = *__error();
    v12 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v13 = 1141;
    goto LABEL_43;
  }

  if (__CFADD__(__len, a3))
  {
    BOMStorageCopyFromBlockRange_cold_1();
    return 1;
  }

  if (__len + a3 > v25)
  {
    v11 = *__error();
    v12 = "BOMStorageCopyRangeFromBlockRange: length extends beyond block size";
    v13 = 1156;
    goto LABEL_43;
  }

  if (v25)
  {
    if (!v24)
    {
      v11 = *__error();
      v12 = "BOMStorageCopyRangeFromBlockRange: bad block address";
      v13 = 1164;
      goto LABEL_43;
    }

    v28 = *(a1 + 1080);
    if (v28 && (*(v28 + 4 * a2) & 1) != 0)
    {
      v29 = *(a1 + 1052);
    }

    else
    {
      v29 = *(a1 + 1052);
      if ((v29 & 1) != 0 && *(a1 + 1028) != -1)
      {
        goto LABEL_55;
      }
    }

    if ((v29 & 2) != 0)
    {
      v44 = (*(a1 + 1040) + v24 + a3);
      goto LABEL_64;
    }

LABEL_55:
    v30 = *(a1 + 1028);
    if ((v29 & 2) == 0)
    {
      v31 = BOMStreamWithFile(v30, v24, v25, 0, 0);
      BOMStreamReadBuffer(v31, __dst, __len, v32, v33, v34, v35, v36);
      BOMStreamFree(v31, v37, v38, v39, v40, v41, v42, v43);
      return 0;
    }

    v45 = BOMStreamWithFile(v30, v24, v25, 0, (*(a1 + 1040) + v24));
    if (!v45)
    {
      v11 = *__error();
      v12 = "BOMStorageCopyRangeFromBlockRange: !stream";
      v13 = 1189;
      goto LABEL_43;
    }

    BOMStreamFree(v45, v46, v47, v48, v49, v50, v51, v52);
    v60 = *(a1 + 1080);
    if (v60)
    {
      *(v60 + 4 * a2) |= 1u;
    }

    else
    {
      v61 = BOMExceptionHandlerMessage("BOM blockShadowTable is null", v53, v54, v55, v56, v57, v58, v59, v63);
      v62 = __error();
      _BOMExceptionHandlerCall(v61, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1196, *v62);
    }

    v44 = (*(a1 + 1040) + v24 + a3);
LABEL_64:
    memmove(__dst, v44, __len);
  }

  return 0;
}

uint64_t BOMStorageCopyFromBlock(uint64_t a1, unsigned int a2, void *__dst, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1010, *v17);
      if (!a2)
      {
LABEL_13:
        v10 = *__error();
        v11 = "BOMStorageCopyFromBlock: !bid";
        v12 = 1012;
        goto LABEL_14;
      }
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v10 = *__error();
    v11 = "BOMStorageCopyFromBlock: bid > storage->blocks";
    v12 = 1016;
LABEL_14:
    _BOMExceptionHandlerCall(v11, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v12, v10);
    return 1;
  }

  if (*(a1 + 1068) <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", __dst, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v16 = 0;
  }

  else
  {
    v14 = *(*(a1 + 1072) + 8 * a2 + 4);
    v15 = bswap32(v14);
    if (*(a1 + 1052))
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }
  }

  return BOMStorageCopyFromBlockRange(a1, a2, 0, v16, __dst, a6, a7, a8);
}

uint64_t BOMStorageSizeOfBlock(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 1056) < a2)
    {
      return 0;
    }

    v11 = *(a1 + 1068);
    if (v11 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
      v11 = *(a1 + 1068);
    }

    else
    {
      v12 = *(*(a1 + 1072) + 8 * a2);
      v13 = bswap32(v12);
      if ((*(a1 + 1052) & 1) == 0)
      {
        v12 = v13;
      }

      if (v12 != -1)
      {
LABEL_16:
        if (v11 > a2)
        {
          v16 = *(*(a1 + 1072) + 8 * a2 + 4);
          v17 = bswap32(v16);
          if (*(a1 + 1052))
          {
            return v16;
          }

          else
          {
            return v17;
          }
        }

        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
        return 0;
      }
    }

    if (v11 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
      v11 = *(a1 + 1068);
    }

    else
    {
      v14 = *(*(a1 + 1072) + 8 * a2 + 4);
      v15 = bswap32(v14);
      if ((*(a1 + 1052) & 1) == 0)
      {
        v14 = v15;
      }

      if (v14 == -1)
      {
        return 0;
      }
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t (*BOMStreamReadBuffer(uint64_t a1, void *__dst, size_t __len, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  if (*(a1 + 40) == 1)
  {
    v8 = BOMExceptionHandlerMessage("%s read called on read-only buffer", __dst, __len, a4, a5, a6, a7, a8, "BOMStreamReadBuffer");
    v9 = *__error();
    v10 = v8;
    v11 = 0;
    v12 = 332;
  }

  else
  {
    v15 = *(a1 + 56);
    if (__CFADD__(__len, v15))
    {
      return BOMStreamReadBuffer_cold_1(a1, __dst, __len, a4, a5, a6, a7, a8);
    }

    if (v15 + __len <= *(a1 + 64))
    {
      result = memmove(__dst, v15, __len);
      *(a1 + 56) += __len;
      return result;
    }

    v16 = BOMExceptionHandlerMessage("%s buffer overflow", __dst, __len, a4, a5, a6, a7, a8, "BOMStreamReadBuffer");
    v9 = *__error();
    v10 = v16;
    v11 = 1;
    v12 = 347;
  }

  return _BOMExceptionHandlerCall(v10, v11, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v12, v9);
}

uint64_t _tocGet(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 1096);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 1100);
  if (!v5)
  {
    return 0;
  }

  v6 = (*(a1 + 1052) & 2) != 0 ? BOMStreamWithAddress(*(a1 + 1040) + v4, *(a1 + 1100), 0) : BOMStreamWithFile(*(a1 + 1028), v4, v5, 0, 0);
  v14 = v6;
  if (!v6)
  {
    return 0;
  }

  UInt32 = BOMStreamReadUInt32(v6, v7, v8, v9, v10, v11, v12, v13);
  if (UInt32)
  {
    v23 = UInt32;
    while (1)
    {
      v24 = BOMStreamReadUInt32(v14, v16, v17, v18, v19, v20, v21, v22);
      UInt8 = BOMStreamReadUInt8(v14, v25, v26, v27, v28, v29, v30, v31);
      BOMStreamReadBuffer(v14, __s2, UInt8, v33, v34, v35, v36, v37);
      __s2[UInt8] = 0;
      if (!strncmp(a2, __s2, 0xFFuLL))
      {
        break;
      }

      if (!--v23)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v24 = 0;
  }

  BOMStreamFree(v14, v16, v17, v18, v19, v20, v21, v22);
  v44 = *(a1 + 1068);
  if (v24 <= v44)
  {
    v45 = v24;
  }

  else
  {
    v45 = 0;
  }

  v46 = *(a1 + 1052);
  if ((v46 & 2) != 0 && (v46 & 5) == 0 && v45)
  {
    v47 = *(a1 + 1040);
    if (v44 <= v45)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v38, v39, v40, v41, v42, v43, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
      v44 = *(a1 + 1068);
      v48 = 0xFFFFFFFFLL;
    }

    else
    {
      v48 = bswap32(*(*(a1 + 1072) + 8 * v45));
    }

    if (v44 <= v45)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v38, v39, v40, v41, v42, v43, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
      v52 = 0;
    }

    else
    {
      v50 = *(*(a1 + 1072) + 8 * v45 + 4);
      v51 = bswap32(v50);
      if (*(a1 + 1052))
      {
        v52 = v50;
      }

      else
      {
        v52 = v51;
      }
    }

    madvise((v47 + v48), v52, 3);
    return v24;
  }

  return v45;
}

uint64_t BOMStreamReadUInt8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40) == 1)
  {
    v8 = BOMExceptionHandlerMessage("%s read called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt8");
    v9 = *__error();
    v10 = v8;
    v11 = 0;
    v12 = 318;
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = v13 + 1;
    if ((v13 + 1) <= *(a1 + 64))
    {
      v16 = *v13;
      *(a1 + 56) = v14;
      return v16;
    }

    v15 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt8");
    v9 = *__error();
    v10 = v15;
    v11 = 1;
    v12 = 320;
  }

  _BOMExceptionHandlerCall(v10, v11, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v12, v9);
  return 0;
}

void *BOMTreeIteratorNew(uint64_t a1, void *a2, unint64_t a3, BOOL *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00408C39C337uLL);
  v13 = v8;
  if (!v8)
  {
    return v13;
  }

  *v8 = a1;
  BOMTreeIteratorSet(v8, a2, a3, a4, v9, v10, v11, v12);
  v14 = *(a1 + 296);
  if (!v14)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(a1 + 296) = Mutable;
    if (!Mutable)
    {
      v19 = __error();
      _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2688, *v19);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v15 = BOMCFArrayMaxRange(v14);
  v17 = v16;
  v21.location = v15;
  v21.length = v17;
  if (!CFArrayContainsValue(*(a1 + 296), v21, v13))
  {
    Mutable = *(a1 + 296);
LABEL_6:
    CFArrayAppendValue(Mutable, v13);
  }

LABEL_8:
  if ((*(*v13 + 356) & 4) == 0)
  {
    v13[3] = malloc_type_malloc(v13[4], 0xE2286860uLL);
  }

  v13[5] = malloc_type_malloc(v13[6], 0x62594550uLL);
  __CFSetLastAllocationEventName();
  return v13;
}

uint64_t BOMTreeIteratorIsAtEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  v9 = *(a1 + 57);
  if ((v9 & 8) != 0)
  {
    return 1;
  }

  if ((v9 & 1) != 0 || (v10 = *(a1 + 8)) == 0 || *v10 != *(a1 + 16))
  {
    v11 = _revalidateIterator(a1, a2, a3, a4, a5, a6, a7, a8);
    v9 = *(a1 + 57);
    if (!v11)
    {
      v9 |= 8u;
      *(a1 + 57) = v9;
    }
  }

  return (v9 >> 3) & 1;
}

uint64_t BOMTreeIteratorKey(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if ((*(result + 57) & 8) != 0)
    {
      return 0;
    }

    if (((*(result + 57) & 1) != 0 || (v9 = *(result + 8)) == 0 || *v9 != *(result + 16)) && !_revalidateIterator(result, a2, a3, a4, a5, a6, a7, a8))
    {
      result = 0;
      *(v8 + 57) |= 8u;
      return result;
    }

    v10 = *v8;
    v11 = *(*v8 + 356);
    if ((v11 & 4) == 0)
    {
      if ((*(v8 + 57) & 2) != 0)
      {
        return *(v8 + 24);
      }

      if ((v11 & 0x40) != 0)
      {
        v15 = *(v10 + 348);
        if (v15 >= 1)
        {
LABEL_18:
          v16 = *(v8 + 32);
          if (v15 > v16)
          {
            v17 = *(v8 + 24);
            if (v17)
            {
              free(v17);
              *(v8 + 24) = 0;
              v16 = *(v8 + 32);
            }

            if (v15 <= 2 * v16)
            {
              v18 = 2 * v16;
            }

            else
            {
              v18 = v15;
            }

            *(v8 + 32) = v18;
            *(v8 + 24) = malloc_type_malloc(v18, 0xCCA19725uLL);
          }

          v19 = *v8;
          if ((*(*v8 + 356) & 0x40) == 0)
          {
            v20 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
            goto LABEL_31;
          }

          v21 = *(v19 + 348);
          v22 = *(v8 + 8);
          if (v21 < 1)
          {
            v20 = bswap32(*(*(v22 + 24) + 8 * *(v8 + 20) + 4));
LABEL_31:
            if (BOMStorageCopyFromBlock(*v19, v20, *(v8 + 24), a4, a5, a6, a7, a8))
            {
              return 0;
            }

            goto LABEL_34;
          }

          v23 = *(v22 + 32);
          if (v23)
          {
            memcpy(*(v8 + 24), (v23 + *(v8 + 20) * v21), v21);
LABEL_34:
            *(v8 + 57) |= 2u;
            return *(v8 + 24);
          }

          return 0;
        }

        v12 = bswap32(*(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4));
      }

      else
      {
        v12 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
      }

      v15 = BOMStorageSizeOfBlock(*v10, v12, a3, a4, a5, a6, a7, a8);
      goto LABEL_18;
    }

    v13 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
    v14 = bswap32(v13);
    if ((v11 & 0x40) != 0)
    {
      return v14;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

uint64_t _findIndexForKey(uint64_t a1, uint64_t a2, void *__s1, unint64_t a4, BOOL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 16))
  {
    v12 = 0;
    v13 = *(a2 + 16) - 1;
    while (1)
    {
      v14 = v12 + ((v13 - v12) >> 1);
      v15 = *(*(a2 + 24) + 8 * v14 + 4);
      v16 = *(a1 + 356);
      v17 = bswap32(v15);
      if ((v16 & 0x40) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = *(*(a2 + 24) + 8 * v14 + 4);
      }

      if (!v18)
      {
        v21 = 0;
        v19 = 0;
        goto LABEL_28;
      }

      if ((v16 & 4) != 0)
      {
        v19 = 0;
        if ((v16 & 0x40) != 0)
        {
          v21 = v17;
        }

        else
        {
          v21 = v15;
        }

        goto LABEL_28;
      }

      if ((v16 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      v19 = *(a1 + 348);
      if (v19 < 1)
      {
        break;
      }

LABEL_12:
      v20 = *(a1 + 344);
      v21 = *(a1 + 336);
      if (v19 > v20)
      {
        v22 = (2 * v20);
        if (v19 > v22)
        {
          LODWORD(v22) = v19;
        }

        *(a1 + 344) = v22;
        if (v21)
        {
          free(v21);
          *(a1 + 336) = 0;
          LODWORD(v22) = *(a1 + 344);
        }

        v21 = malloc_type_malloc(v22, 0x67B7B83AuLL);
        *(a1 + 336) = v21;
      }

      if ((*(a1 + 356) & 0x40) != 0)
      {
        v24 = *(a1 + 348);
        if (v24 >= 1)
        {
          memcpy(v21, (*(a2 + 32) + v24 * v14), v24);
          goto LABEL_28;
        }

        v23 = bswap32(*(*(a2 + 24) + 8 * v14 + 4));
      }

      else
      {
        v23 = *(*(a2 + 24) + 8 * v14 + 4);
      }

      BOMStorageCopyFromBlock(*a1, v23, v21, a4, a5, a6, a7, a8);
LABEL_28:
      if ((*(a1 + 356) & 4) != 0)
      {
        if (v21 <= __s1)
        {
          v27 = 0;
        }

        else
        {
          v27 = -1;
        }

        if (v21 < __s1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v27;
        }

        goto LABEL_44;
      }

      if (v21 == __s1)
      {
        if (!a5)
        {
          return v14;
        }

        v26 = 0;
        v28 = 1;
        goto LABEL_48;
      }

      if (__s1)
      {
        if (!v21)
        {
          v26 = 1;
          goto LABEL_44;
        }

        if (a4 >= v19)
        {
          v25 = v19;
        }

        else
        {
          v25 = a4;
        }

        v26 = memcmp(__s1, v21, v25);
        if (v26)
        {
          goto LABEL_44;
        }

        if (v19 <= a4)
        {
          v26 = v19 < a4;
          goto LABEL_44;
        }
      }

      v26 = -1;
LABEL_44:
      if (!a5)
      {
        goto LABEL_49;
      }

      v28 = v26 == 0;
LABEL_48:
      *a5 = v28;
LABEL_49:
      if (v13 == v12)
      {
        if (v26 <= 0)
        {
          return v14;
        }

        else
        {
          return (v14 + 1);
        }
      }

      if (v26 >= 1)
      {
        if (v14 == v13)
        {
          v12 += (v13 - v12) >> 1;
        }

        else
        {
          v12 = v14 + 1;
        }
      }

      else
      {
        if ((v26 & 0x80000000) == 0)
        {
          return v14;
        }

        v13 = v14 - ((v13 - v12) > 1);
      }
    }

    v15 = v17;
LABEL_11:
    v19 = BOMStorageSizeOfBlock(*a1, v15, __s1, a4, a5, a6, a7, a8);
    goto LABEL_12;
  }

  v14 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  return v14;
}

uint64_t _findPagesForKey(uint64_t a1, uint64_t a2, void *__s1, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 24);
  if (a2)
  {
    BOMStackPush(a2, v12, __s1, a4, a5, a6, a7, a8);
  }

  if ((*(v12 + 4) & 1) == 0)
  {
    do
    {
      v19 = *(*(v12 + 24) + 8 * _findIndexForKey(a1, v12, __s1, a4, 0, a6, a7, a8));
      v20 = bswap32(v19);
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      Page = _findPage(a1, v21, v13, v14, v15, v16, v17, v18);
      v12 = Page;
      if (!Page)
      {
        break;
      }

      if (a2)
      {
        BOMStackPush(a2, Page, v23, v24, v25, a6, a7, a8);
        v26 = *(v12 + 4) | 8;
      }

      else
      {
        v26 = *(Page + 2);
      }

      *(v12 + 4) = v26 & 0xFFFB;
    }

    while ((v26 & 1) == 0);
  }

  return v12;
}

uint64_t BOMTreeGetValueSize(uint64_t a1, void *__s1, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && __s1 && a4 && (a3 || (*(a1 + 356) & 4) != 0))
  {
    PagesForKey = _findPagesForKey(a1, 0, __s1, a3, a5, a6, a7, a8);
    if (PagesForKey && (v17 = PagesForKey, v28 = 0, IndexForKey = _findIndexForKey(a1, PagesForKey, __s1, a3, &v28, v14, v15, v16), v28))
    {
      v25 = bswap32(*(*(v17 + 24) + 8 * IndexForKey));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = *(*(v17 + 24) + 8 * IndexForKey);
      }

      v27 = BOMStorageSizeOfBlock(*a1, v26, v19, v20, v21, v22, v23, v24);
      result = 0;
      *a4 = v27;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

_DWORD *BOMTreeIteratorSet(uint64_t a1, void *__s1, unint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 57) &= 0xF6u;
  result = _findPagesForKey(*a1, 0, __s1, a3, a5, a6, a7, a8);
  *(a1 + 8) = result;
  if (result)
  {
    *(a1 + 16) = *result;
    result = _findIndexForKey(*a1, result, __s1, a3, a4, v13, v14, v15);
    *(a1 + 20) = result;
    *(a1 + 56) = 1;
    v22 = *(a1 + 8);
    if (result >= *(v22 + 16))
    {
      *(a1 + 20) = 0;
      v23 = *(v22 + 8);
      if (!v23 || (*(a1 + 16) = v23, result = _findPage(*a1, v23, v16, v17, v18, v19, v20, v21), (*(a1 + 8) = result) == 0))
      {
        *(a1 + 57) |= 8u;
      }
    }
  }

  else
  {
    *(a1 + 57) |= 8u;
    *(a1 + 56) = 0;
  }

  return result;
}

_DWORD *BOMStreamWithBlockID(uint64_t a1, unsigned int a2, size_t a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (!v8)
  {
    v27 = __error();
    strerror(*v27);
    _CUILog(4, "%s: malloc: %s", v28, v29, v30, v31, v32, v33, "BOMStreamWithBlockID");
    return v8;
  }

  __CFSetLastAllocationEventName();
  v8[1] = 1;
  v15 = BOMStorageSizeOfBlock(a1, a2, v9, v10, v11, v12, v13, v14);
  *(v8 + 9) = BOMStorageGetSys(a1);
  *v8 = 0;
  *(v8 + 1) = a1;
  v8[4] = a2;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v15;
  }

  *(v8 + 4) = v16;
  v8[10] = a4;
  if (v15 <= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = v15;
  }

  v18 = malloc_type_calloc(1uLL, v17, 0x74A48935uLL);
  *(v8 + 6) = v18;
  if (!v18)
  {
    v34 = __error();
    strerror(*v34);
    _CUILog(4, "%s: malloc: %s", v35, v36, v37, v38, v39, v40, "BOMStreamWithBlockID");
    goto LABEL_16;
  }

  v25 = v18;
  *(v8 + 80) |= 1u;
  v26 = *(v8 + 4);
  *(v8 + 7) = v18;
  *(v8 + 8) = &v18[v26];
  if ((v8[10] | 2) != 2)
  {
    goto LABEL_12;
  }

  if (BOMStorageCopyFromBlock(a1, a2, v18, v20, v21, v22, v23, v24))
  {
LABEL_16:
    BOMStreamFree(v8, v19, v25, v20, v21, v22, v23, v24);
    return 0;
  }

  v26 = *(v8 + 4);
LABEL_12:
  if (!v26)
  {
    goto LABEL_16;
  }

  return v8;
}

uint64_t BOMStorageGetSys(uint64_t result)
{
  if (result)
  {
    return *(result + 1120);
  }

  return result;
}

uint64_t BOMStorageIsOpenForWriting(uint64_t result)
{
  if (result)
  {
    return *(result + 1052) & 1;
  }

  return result;
}

uint64_t CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(uint64_t result, uint64_t a2)
{
  *(result + 192) = 0;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 80) = 0u;
  if (*(a2 + 8))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a2 + 12 + 4 * v2);
      *(result + 8 + v5) = v2;
      if (v5 <= 0x1C)
      {
        *(result + 80 + 4 * v4++) = v5;
      }

      v3 |= 1 << v5;
      ++v2;
      LODWORD(v5) = *(a2 + 8);
      if (v5 >= 0x40)
      {
        v5 = 64;
      }

      else
      {
        v5 = v5;
      }
    }

    while (v2 < v5);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 76) = v4;
  *result = v3;
  return result;
}

uint64_t BOMTreeOpenWithName(uint64_t a1, const char *a2, char a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  NamedBlock = BOMStorageGetNamedBlock(a1, a2);
  if (!NamedBlock)
  {
    return 0;
  }

  return _BOMTreeOpen(a1, a2, NamedBlock, a3);
}

uint64_t _BOMTreeOpen(uint64_t a1, const char *a2, unsigned int a3, char a4)
{
  v8 = _newBOMTree(a1, a2);
  v15 = v8;
  if (!v8)
  {
    return v15;
  }

  *v8 = a1;
  v8[4] = a3;
  v22 = BOMStorageSizeOfBlock(a1, a3, v9, v10, v11, v12, v13, v14);
  v23 = *v15;
  if ((*(v15 + 356) & 0x40) != 0)
  {
    v32 = BOMStorageReadFromBlock(v23, a3, v16, v17, v18, v19, v20, v21);
    if (v32)
    {
      v33 = v32;
      v31 = BOMStreamWithAddress(v32, v22, 0);
      if (!BOMStorageInRam(*v15))
      {
        madvise(v33, v22, 3);
        if (!v31)
        {
          goto LABEL_25;
        }

        goto LABEL_8;
      }

      if (v31)
      {
        goto LABEL_8;
      }
    }

LABEL_25:
    BOMTreeFree(v15);
    return 0;
  }

  v31 = BOMStreamWithBlockID(v23, a3, v22, 0);
  if (!v31)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (BOMStreamReadUInt32(v31, v24, v25, v26, v27, v28, v29, v30) != 1953654117)
  {
    if (a2)
    {
      _CUILog(4, "%s: '%s' is not a BOMTree", v35, v36, v37, v38, v39, v40, "BOMTree _BOMTreeOpen(BOMStorage, const char *, BOMBlockID, Boolean)");
    }

    else
    {
      _CUILog(4, "%s: '<Tree %d>' is not a BOMTree", v35, v36, v37, v38, v39, v40, "BOMTree _BOMTreeOpen(BOMStorage, const char *, BOMBlockID, Boolean)");
    }

    goto LABEL_24;
  }

  if (BOMStreamReadUInt32(v31, v34, v35, v36, v37, v38, v39, v40) != 1)
  {
    if (a2)
    {
      _CUILog(4, "%s: BOMTree '%s' has an unknown version: 0x%X", v42, v43, v44, v45, v46, v47, "BOMTree _BOMTreeOpen(BOMStorage, const char *, BOMBlockID, Boolean)");
    }

    else
    {
      _CUILog(4, "%s: BOMTree '<Tree %d>' has an unknown version: 0x%X", v42, v43, v44, v45, v46, v47, "BOMTree _BOMTreeOpen(BOMStorage, const char *, BOMBlockID, Boolean)");
    }

LABEL_24:
    BOMStreamFree(v31, v99, v100, v101, v102, v103, v104, v105);
    goto LABEL_25;
  }

  UInt32 = BOMStreamReadUInt32(v31, v41, v42, v43, v44, v45, v46, v47);
  *(v15 + 304) = BOMStreamReadUInt32(v31, v49, v50, v51, v52, v53, v54, v55);
  *(v15 + 20) = BOMStreamReadUInt32(v31, v56, v57, v58, v59, v60, v61, v62);
  *(v15 + 356) = *(v15 + 356) & 0xFFFFFFFB | (4 * (BOMStreamReadUInt8(v31, v63, v64, v65, v66, v67, v68, v69) & 1));
  if (!BOMStreamAtEOF(v31, v70, v71, v72, v73, v74, v75, v76))
  {
    *(v15 + 348) = BOMStreamReadUInt32(v31, v77, v78, v79, v80, v81, v82, v83);
    if (!BOMStreamAtEOF(v31, v84, v85, v86, v87, v88, v89, v90))
    {
      *(v15 + 352) = BOMStreamReadUInt32(v31, v77, v78, v79, v80, v81, v82, v83);
    }
  }

  BOMStreamFree(v31, v77, v78, v79, v80, v81, v82, v83);
  v91 = *(v15 + 304) - 16;
  *(v15 + 308) = v91 >> 3;
  *(v15 + 312) = (v91 >> 3) + 1;
  *(v15 + 316) = v91 >> 4;
  v92 = _NewPage(v15, UInt32);
  *(v15 + 24) = v92;
  if (!v92 || _ReadPage(v15, v92, v93, v94, v95, v96, v97, v98))
  {
    goto LABEL_25;
  }

  *(v15 + 356) = *(v15 + 356) & 0xFFFFFFFD | (2 * (a4 & 1));
  return v15;
}

_DWORD *_newBOMTree(uint64_t a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x168uLL, 0x10B0040E869A47AuLL);
  if (v4)
  {
    __CFSetLastAllocationEventName();
    *v4 = a1;
    if (BOMStorageMemoryMapped(a1))
    {
      v5 = (BOMStorageIsOpenForWriting(a1) == 0) << 6;
    }

    else
    {
      v5 = 0;
    }

    v13 = v4[89] & 0xFFFFFFBF | v5;
    v4[89] = v13;
    if (a2)
    {
      v14 = strdup(a2);
      *(v4 + 1) = v14;
      v4[89] = v13 & 0xFFFFFFDF | (32 * (v14 != a2));
    }
  }

  else
  {
    v6 = __error();
    strerror(*v6);
    _CUILog(4, "%s: calloc: %s creating tree '%s'", v7, v8, v9, v10, v11, v12, "BOMTree _newBOMTree(BOMStorage, const char *)");
  }

  return v4;
}

BOOL BOMStorageMemoryMapped(_BOOL8 result)
{
  if (result)
  {
    return (*(result + 1052) & 6) == 2;
  }

  return result;
}

BOOL BOMStreamAtEOF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40))
  {
    v9 = BOMExceptionHandlerMessage("%s Can't check EOF on a writeable stream", a2, a3, a4, a5, a6, a7, a8, "BOMStreamAtEOF");
    v10 = __error();
    _BOMExceptionHandlerCall(v9, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", 359, *v10);
  }

  return *(a1 + 56) == *(a1 + 64);
}

void *_NewPage(uint64_t a1, int a2)
{
  v3 = *a1;
  if ((*(a1 + 356) & 0x40) != 0)
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300401C741A23uLL);
    v6 = 0;
    if (!v8)
    {
      return 0;
    }

    v7 = v8;
  }

  else
  {
    v4 = *(a1 + 308);
    if (v4 <= *(a1 + 312))
    {
      v4 = *(a1 + 312);
    }

    v5 = malloc_type_calloc(1uLL, 8 * (v4 + 1), 0x100004000313F17uLL);
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300401C741A23uLL);
    if (!v7)
    {
      free(v6);
      return v7;
    }
  }

  if (!a2)
  {
    a2 = BOMStorageNewBlock(v3);
  }

  v7[3] = v6;
  *v7 = a2;
  return v7;
}

uint64_t _ReadPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v17 = BOMStorageSizeOfBlock(*a1, *a2, a3, a4, a5, a6, a7, a8);
  v18 = *a1;
  if ((*(a1 + 356) & 0x40) != 0)
  {
    v27 = BOMStorageReadFromBlock(v18, v10, v11, v12, v13, v14, v15, v16);
    if (v27)
    {
      v28 = v27;
      v26 = BOMStreamWithAddress(v27, v17, 0);
      if (BOMStorageInRam(*a1))
      {
        if (v26)
        {
          goto LABEL_7;
        }
      }

      else
      {
        madvise(v28, v17, 3);
        if (v26)
        {
          goto LABEL_7;
        }
      }
    }

    return 1;
  }

  v26 = BOMStreamWithBlockID(v18, v10, v17, 0);
  if (!v26)
  {
    return 1;
  }

LABEL_7:
  UInt16 = BOMStreamReadUInt16(v26, v19, v20, v21, v22, v23, v24, v25);
  v37 = *(a2 + 4) & 0xFFFE;
  if (UInt16)
  {
    ++v37;
  }

  *(a2 + 4) = v37;
  *(a2 + 16) = BOMStreamReadUInt16(v26, v30, v31, v32, v33, v34, v35, v36);
  *(a2 + 8) = BOMStreamReadUInt32(v26, v38, v39, v40, v41, v42, v43, v44);
  *(a2 + 12) = BOMStreamReadUInt32(v26, v45, v46, v47, v48, v49, v50, v51);
  v59 = *(a2 + 16);
  if (*(a1 + 308) < v59)
  {
    v79 = BOMExceptionHandlerMessage("(tree (%s) page->numKeys(%d) > tree->maxKeys(%d)", v52, v53, v54, v55, v56, v57, v58, *(a1 + 8));
    v80 = __error();
    _BOMFatalException(v79, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1338, *v80);
  }

  if ((*(a1 + 356) & 0x40) != 0)
  {
    *(a2 + 24) = BOMStreamGetDataPointer(v26, (8 * v59) | 4);
  }

  else
  {
    if (*(a2 + 16))
    {
      v60 = 0;
      v61 = 0;
      do
      {
        *(*(a2 + 24) + v60) = BOMStreamReadUInt32(v26, v52, v53, v54, v55, v56, v57, v58);
        *(*(a2 + 24) + v60 + 4) = BOMStreamReadUInt32(v26, v62, v63, v64, v65, v66, v67, v68);
        ++v61;
        v60 += 8;
      }

      while (v61 < *(a2 + 16));
    }

    *(*(a2 + 24) + 8 * *(a2 + 16)) = BOMStreamReadUInt32(v26, v52, v53, v54, v55, v56, v57, v58);
  }

  if ((*(a1 + 356) & 0x44) == 0x40 && (v76 = *(a1 + 348), v76 >= 1))
  {
    DataPointer = BOMStreamGetDataPointer(v26, v76 * *(a2 + 16));
  }

  else
  {
    DataPointer = 0;
  }

  *(a2 + 32) = DataPointer;
  BOMStreamFree(v26, v69, v70, v71, v72, v73, v74, v75);
  return 0;
}

uint64_t BOMStreamReadUInt16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40) == 1)
  {
    v9 = BOMExceptionHandlerMessage("%s read called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt16");
    v10 = *__error();
    v11 = v9;
    v12 = 0;
    v13 = 298;
LABEL_5:
    _BOMExceptionHandlerCall(v11, v12, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v13, v10);
    v17 = 0;
    goto LABEL_7;
  }

  v14 = *(a1 + 56);
  v15 = v14 + 1;
  if ((v14 + 1) > *(a1 + 64))
  {
    v16 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt16");
    v10 = *__error();
    v11 = v16;
    v12 = 1;
    v13 = 300;
    goto LABEL_5;
  }

  v17 = *v14;
  *(a1 + 56) = v15;
LABEL_7:
  v18 = __rev16(v17);
  if (*(a1 + 4) == 2)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

unint64_t BOMTreeGetValue(uint64_t a1, void *__s1, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v37 = 0;
  if (a1 && __s1)
  {
    if (!a3 && (*(a1 + 356) & 4) == 0)
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, __s1, a3, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v15 = result;
    IndexForKey = _findIndexForKey(a1, result, __s1, a3, &v37, v12, v13, v14);
    if (!v37)
    {
      return 0;
    }

    v23 = IndexForKey;
    v24 = bswap32(*(*(v15 + 24) + 8 * IndexForKey));
    v25 = (*(a1 + 356) & 0x40) != 0 ? v24 : *(*(v15 + 24) + 8 * IndexForKey);
    result = BOMStorageSizeOfBlock(*a1, v25, v17, v18, v19, v20, v21, v22);
    if (result)
    {
      v31 = result;
      v32 = *(a1 + 320);
      if (v32)
      {
        if (result <= *(a1 + 328))
        {
          goto LABEL_19;
        }

        free(*(a1 + 320));
        *(a1 + 320) = 0;
        v33 = (2 * *(a1 + 328));
        if (v31 <= v33)
        {
          result = v33;
        }

        else
        {
          result = v31;
        }

        *(a1 + 328) = result;
        v34 = 4263778202;
      }

      else
      {
        *(a1 + 328) = result;
        result = result;
        v34 = 1261575674;
      }

      v32 = malloc_type_malloc(result, v34);
      *(a1 + 320) = v32;
LABEL_19:
      v35 = bswap32(*(*(v15 + 24) + 8 * v23));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = *(*(v15 + 24) + 8 * v23);
      }

      if (!BOMStorageCopyFromBlock(*a1, v36, v32, v26, v27, v28, v29, v30))
      {
        return *(a1 + 320);
      }

      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeStorage(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMTreeIteratorNext(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if ((*(result + 57) & 8) == 0)
    {
      if ((*(result + 57) & 1) == 0 && (v9 = *(result + 8)) != 0 && *v9 == *(result + 16) || (result = _revalidateIterator(result, a2, a3, a4, a5, a6, a7, a8), result))
      {
        if (*(v8 + 56))
        {
          v10 = *(v8 + 20) + 1;
          *(v8 + 20) = v10;
          v11 = *(v8 + 8);
          if (v10 >= *(v11 + 16))
          {
            *(v8 + 20) = 0;
            v12 = *(v11 + 8);
            if (!v12 || (*(v8 + 16) = v12, result = _findPage(*v8, v12, a3, a4, a5, a6, a7, a8), (*(v8 + 8) = result) == 0))
            {
              *(v8 + 57) |= 8u;
            }
          }
        }

        else
        {
          *(v8 + 56) = 1;
        }

        v13 = *(v8 + 57) & 0xF9;
      }

      else
      {
        v13 = *(v8 + 57) | 8;
      }

      *(v8 + 57) = v13;
    }
  }

  return result;
}

void BOMTreeIteratorFree(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1[57];
    a1[56] = 0;
    v3 = v2 | 9;
    a1[57] = v3;
    v4 = *(a1 + 3);
    if (v4 && (*(*a1 + 356) & 4) == 0)
    {
      free(v4);
      *(a1 + 3) = 0;
      v3 = a1[57];
    }

    v5 = v3 & 0xFD;
    a1[57] = v5;
    v6 = *(a1 + 5);
    if (v6)
    {
      free(v6);
      *(a1 + 5) = 0;
      v5 = a1[57];
    }

    a1[57] = v5 & 0xFB;
    *(a1 + 4) = -1;
    *(a1 + 1) = 0;
    v7 = *a1;
    v8 = *(*a1 + 296);
    if (v8)
    {
      v9 = BOMCFArrayMaxRange(v8);
      v11 = v10;
      v14.location = v9;
      v14.length = v11;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v7 + 296), v14, a1);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(*(v7 + 296), FirstIndexOfValue);
        if (!CFArrayGetCount(*(v7 + 296)))
        {
          CFRelease(*(v7 + 296));
          *(v7 + 296) = 0;
        }
      }
    }

    free(a1);
  }
}

_DWORD *CUIBitVectorFromData(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 4 * v2;
  if (4 * v2 + 4 != a2)
  {
    return 0;
  }

  v5 = malloc_type_malloc(v3 + 8, 0xE343BF1CuLL);
  bzero(v5, v3 + 8);
  __CFSetLastAllocationEventName();
  *v5 = 0;
  v5[1] = v2;
  if (v2)
  {
    v6 = (a1 + 1);
    v7 = 2;
    do
    {
      v8 = *v6++;
      v5[v7++] = v8;
      --v2;
    }

    while (v2);
  }

  return v5;
}

BOOL CUIRenditionKeyHasIdentifier(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 12);
  for (i = 0xFFFFFFFFLL; ; --i)
  {
    v5 = *v3++;
    if (v5 == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return i != 0;
}

uint64_t _RegisterThemeProvider(void *a1)
{
  if ([a1 conformsToProtocol:&unk_1F01081B0])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = ___RegisterThemeProvider_block_invoke;
    v10[3] = &unk_1E7251518;
    v10[4] = a1;
    v10[5] = &v11;
    __PerformBlockWithThemeRegistry(v10);
    [a1 setThemeIndex:v12[3]];
    v8 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    _CUILog(4, "provider must conform to the CUIStructuredThemeStorage protocol", v2, v3, v4, v5, v6, v7, v10[0]);
    return 0;
  }

  return v8;
}

void sub_18DF4C98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *CUIDefaultThemeRenditionKeyFormat(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case 4:
      return "tmfk";
    case 2:
      if (a2 >= 6)
      {
        if (a2 >= 0xB)
        {
          if (a2 == 11)
          {
            return "tmfk";
          }

          else if (a2 >= 0xD)
          {
            if (a2 == 13)
            {
              return "tmfk";
            }

            else if (a2 >= 0xF)
            {
              if (a2 == 15)
              {
                return "tmfk";
              }

              else if (a2 >= 0x11)
              {
                return "tmfk";
              }

              else
              {
                return "tmfk";
              }
            }

            else
            {
              return "tmfk";
            }
          }

          else
          {
            return "tmfk";
          }
        }

        else
        {
          return "tmfk";
        }
      }

      else
      {
        return "tmfk";
      }

    case 1:
      v9 = "tmfk";
      v10 = "tmfk";
      if (a2 < 0xF)
      {
        v10 = "tmfk";
      }

      if (a2 != 13)
      {
        v9 = v10;
      }

      if (a2 >= 0xD)
      {
        return v9;
      }

      else
      {
        return "tmfk";
      }

    default:
      _CUILog(4, "CoreUI: Unable to provide key format for custom theme semantics", a3, a4, a5, a6, a7, a8, v8);
      return 0;
  }
}

uint64_t CUIMaxScaleForTargetPlatform(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void *CUIRenditionKeyCopy(void *a1, char *a2, unsigned int a3)
{
  if (!a1 || !a2)
  {
    CUIRenditionKeyCopy_cold_2();
  }

  for (i = 0; ; i = v4 + 1)
  {
    v4 = i;
    v5 = &a2[4 * i];
    if (!*(v5 + 1) && !*v5)
    {
      break;
    }
  }

  if (v4 >= a3)
  {
    CUIRenditionKeyCopy_cold_1();
  }

  return memmove(a1, a2, 4 * v4 + 4);
}

uint64_t CUIRenditionKeyTokenCount(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    while (1)
    {
      v2 = (a1 + 4 * v1);
      if (!v2[1] && !*v2)
      {
        break;
      }

      ++v1;
    }
  }

  return v1;
}

uint64_t _CUIColorSpaceGetSRGB()
{
  if (_CUIColorSpaceGetSRGB___once != -1)
  {
    _CUIColorSpaceGetSRGB_cold_1();
  }

  return _CUIColorSpaceGetSRGB_sSRGBColorSpace;
}

id OUTLINED_FUNCTION_5_0()
{

  return [v0 appendBytes:&STACK[0x258] length:8];
}

id OUTLINED_FUNCTION_5_2()
{

  return [v0 setThemeDisplayGamut:v1];
}

__CFString *OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{

  return CUIPlatformNameForPlatform(a2);
}

id OUTLINED_FUNCTION_1_4()
{

  return [v0 setThemeSizeClassVertical:v1];
}

id OUTLINED_FUNCTION_2_3()
{

  return [v0 setThemeSizeClassHorizontal:v1];
}

void OUTLINED_FUNCTION_6(int a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{

  _Block_object_dispose(a2, 8);
}

id OUTLINED_FUNCTION_6_1()
{
  v3 = *(v1 - 160);

  return [v0 setThemeDirection:v3];
}

uint64_t BOMTreeValueExists(uint64_t a1, void *__s1, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v15 = 0;
  if (a1 && __s1)
  {
    if (a3 || (*(a1 + 356) & 4) != 0)
    {
      result = _findPagesForKey(a1, 0, __s1, a3, a5, a6, a7, a8);
      if (result)
      {
        _findIndexForKey(a1, result, __s1, a3, &v15, v12, v13, v14);
        return v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *CUIRenditionKeyValueForAttribute(unsigned __int16 *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (result[1])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 == 0;
    }

    if (v3)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      v5 = result + 3;
      while (v2 != a2)
      {
        ++v4;
        v6 = *v5;
        v2 = *(v5 - 1);
        v5 += 2;
        if (v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = v2 == 0;
        }

        if (v7)
        {
          return 0;
        }
      }

      return result[2 * v4 + 1];
    }
  }

  return result;
}

uint64_t CUIFillCARKeyArrayForRenditionKey2(uint64_t result, int *a2, uint64_t a3, uint64_t *a4)
{
  if (!result || !a2)
  {
    CUIFillCARKeyArrayForRenditionKey2_cold_1();
  }

  v5 = a4;
  v6 = result;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (!a4)
  {
    v5 = v13;
    result = CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(v13, a3);
  }

  v7 = *a2;
  if (*a2)
  {
    v10 = *v5;
    v9 = v5 + 1;
    v8 = v10;
    v11 = a2 + 1;
    do
    {
      if ((v8 & (1 << v7)) != 0)
      {
        *(v6 + 2 * *(v9 + v7)) = *(v11 - 1);
      }

      v12 = *v11++;
      LOWORD(v7) = v12;
    }

    while (v12);
  }

  return result;
}

id OUTLINED_FUNCTION_3_0()
{

  return [v0 appendBytes:&STACK[0x258] length:8];
}

id OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return [v17 countByEnumeratingWithState:&a9 objects:&a17 count:16];
}

id OUTLINED_FUNCTION_4_3()
{

  return [v0 setThemeIdiom:v1];
}

id OUTLINED_FUNCTION_7_2()
{
  v3 = *(v1 - 120);

  return [v0 setThemeDeploymentTarget:v3];
}

uint64_t __bppFromBlockPixelFormat(uint64_t a1)
{
  if (a1 < 7)
  {
    return dword_18E022150[a1];
  }

  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"CUIThemeRendition.m", 503, @"CoreUI: %s unknown pixel format %d", "unsigned int __bppFromBlockPixelFormat(enum CSIRenditionBlockPixelFormat)", a1];
  return 0;
}

uint64_t _StreamSys_init_read(unint64_t a1, uint64_t a2)
{
  v16 = 0;
  if (!(a1 | a2) || BomSys_init(&v16, a2))
  {
    return 0xFFFFFFFFLL;
  }

  BomSys_set_read(v16, __StreamSys_read, v3, v4, v5, v6, v7, v8);
  BomSys_set_close(v16, __StreamSys_close, v10, v11, v12, v13, v14, v15);
  result = 0;
  if (a1)
  {
    *a1 = v16;
  }

  return result;
}

uint64_t BomSys_init(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v5 = *&off_1F00D6B40;
  v4[4] = xmmword_1F00D6B30;
  v4[5] = v5;
  v6 = *&off_1F00D6B60;
  v4[6] = xmmword_1F00D6B50;
  v4[7] = v6;
  v7 = *&off_1F00D6B00;
  *v4 = gDefaultSys;
  v4[1] = v7;
  v8 = *&off_1F00D6B20;
  v4[2] = xmmword_1F00D6B10;
  v4[3] = v8;
  *(v4 + 1) = a2;
  *a1 = v4;
  __CFSetLastAllocationEventName();
  return 0;
}

void BomSys_set_close(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_close(BomSys *, BomSys_close_call)");
  }

  else if (a2)
  {
    *(a1 + 3) = a2;
  }

  else
  {
    *(a1 + 3) = BomSys_close;
  }
}

uint64_t BOMFileNewFromFDWithSys(void *a1, uint64_t a2, char a3, unsigned __int8 *a4, __int128 *a5)
{
  v10 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1032040657EF821uLL);
  __CFSetLastAllocationEventName();
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  a5 = BomSys_default();
  if ((a3 & 0x10) != 0)
  {
LABEL_4:
    (*(a5 + 4))(*(a5 + 1), a2, 48, 1);
  }

LABEL_5:
  *v10 = *a4 == 119;
  v10[2] = a2;
  if (_BOMFileInit(v10, a3 & 0xF, a5))
  {
LABEL_6:
    v11 = v10;
LABEL_7:
    _freeBOMFile(v11);
    return 0xFFFFFFFFLL;
  }

  if ((a3 & 0x20) != 0)
  {
    if (getenv("BOM_ASYNC_DEBUG"))
    {
      gBOMAsyncDebug = 1;
    }

    else if (gBOMAsyncDebug != 1)
    {
LABEL_17:
      v13 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1032040657EF821uLL);
      __CFSetLastAllocationEventName();
      if (!v13)
      {
        goto LABEL_6;
      }

      if (*v10 == 1)
      {
        v14 = 5;
      }

      else
      {
        v14 = 4;
      }

      *v13 = v14;
      v13[1] = v10;
      if (_BOMFileInit(v13, 0, a5))
      {
        v11 = v13;
        goto LABEL_7;
      }

      v10 = v13;
      goto LABEL_12;
    }

    fprintf(__stderrp, "async compression enabled for %d\n", a2);
    goto LABEL_17;
  }

LABEL_12:
  result = 0;
  *a1 = v10;
  return result;
}

uint64_t _BOMFileInit(uint64_t a1, int a2, __int128 *a3)
{
  if (!a3)
  {
    a3 = BomSys_default();
  }

  *(a1 + 240) = a3;
  if (a2 == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 5)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  v7 = a2 == 1;
  if (a2 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = v7;
  *(a1 + 24) = v8;
  v10 = *a1;
  result = 0xFFFFFFFFLL;
  if (*a1 > 2)
  {
    switch(v10)
    {
      case 5:
        if (gBufferPoolOnce != -1)
        {
          _BOMFileInit_cold_2();
        }

        v16 = BOMBufferAllocate(gBOMAsyncBufferSize);
        if (!v16)
        {
          return 0xFFFFFFFFLL;
        }

        BOMBufferPoolAddBuffer(gBufferPool, v16);
        *(a1 + 88) = BOMBufferFIFOCreate();
        *(a1 + 96) = 0;
        *(a1 + 224) = 0;
        if (pthread_mutex_init((a1 + 160), 0) || pthread_cond_init((a1 + 112), 0))
        {
          return 1;
        }

        v17 = _asyncWriteThread;
        break;
      case 4:
        if (gBufferPoolOnce != -1)
        {
          _BOMFileInit_cold_1();
        }

        v18 = BOMBufferAllocate(gBOMAsyncBufferSize);
        if (!v18)
        {
          return 0xFFFFFFFFLL;
        }

        BOMBufferPoolAddBuffer(gBufferPool, v18);
        *(a1 + 88) = BOMBufferFIFOCreate();
        *(a1 + 96) = 0;
        *(a1 + 224) = 0;
        if (pthread_mutex_init((a1 + 160), 0) || pthread_cond_init((a1 + 112), 0))
        {
          return 1;
        }

        v17 = _asyncReadThread;
        break;
      case 3:
        goto LABEL_26;
      default:
        return result;
    }

    return pthread_create((a1 + 104), 0, v17, a1) != 0;
  }

  if ((v10 - 1) >= 2)
  {
    if (v10)
    {
      return result;
    }

LABEL_26:
    if (v9)
    {
      memset(__src, 0, 11);
      Raw = _BOMFileReadRaw(a1, __src, 11);
      if (Raw == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v8 = *(a1 + 24) == 1 && __src[0] == 31 && __src[1] == 139 && __src[2] == 8;
      *(a1 + 24) = v8;
      *(a1 + 64) = Raw;
      *(a1 + 72) = 1;
      memcpy((a1 + 76), __src, Raw);
    }

    if ((v8 - 3) < 2)
    {
      return _BOMFileCompressionLibrary_Setup(a1, 0);
    }

    if (v8)
    {
      return _BOMFileSetupGzip(a1, 0);
    }

    return 0;
  }

  if ((v8 - 3) >= 2)
  {
    if (!v8)
    {
      return 0;
    }

    *&__src[7] = 196608;
    *__src = 559903;
    if (!_BOMFileSetupGzip(a1, 1) && _BOMFileWriteRaw(a1, __src, 10) > 9)
    {
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return _BOMFileCompressionLibrary_Setup(a1, 1);
}

uint64_t _BOMFileCompressionLibrary_Setup(uint64_t a1, int a2)
{
  if (!*(a1 + 32))
  {
    v4 = malloc_type_malloc(0x28uLL, 0x10D00405C4BD7A1uLL);
    *(a1 + 32) = v4;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!*(a1 + 40))
  {
    v5 = malloc_type_malloc(0x20000uLL, 0x57B472E8uLL);
    *(a1 + 40) = v5;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(a1 + 24);
  switch(v6)
  {
    case 1:
      v7 = COMPRESSION_ZLIB;
      break;
    case 4:
      v7 = COMPRESSION_LZFSE;
      break;
    case 3:
      v7 = 2304;
      break;
    default:
      return 0xFFFFFFFFLL;
  }

  if (compression_stream_init(*(a1 + 32), (a2 == 0), v7))
  {
LABEL_12:
    free(*(a1 + 32));
    *(a1 + 32) = 0;
    return 0xFFFFFFFFLL;
  }

  v9 = crc32(0, 0, 0);
  result = 0;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0;
  return result;
}

uint64_t BOMFileClose(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if ((*a1 - 1) <= 1)
  {
    v3 = *(a1 + 24);
    if ((v3 - 3) >= 2)
    {
      if (v3 == 1)
      {
        v6 = *(a1 + 32);
        if (v6->avail_out)
        {
          goto LABEL_11;
        }

        v7 = 1;
        for (i = 0x20000; ; i = 0x20000 - avail_out)
        {
          v13 = *(a1 + 40);
          while (i)
          {
            v14 = _BOMFileWriteRaw(a1, v13, i);
            i -= v14;
            v13 += v14;
            if (v14 == -1)
            {
              return 0xFFFFFFFFLL;
            }
          }

          v6->next_out = *(a1 + 40);
          v6->avail_out = 0x20000;
          if (!v7)
          {
            break;
          }

LABEL_11:
          v11 = deflate(v6, 4);
          if (v11)
          {
            if (v11 != 1)
            {
              return 0xFFFFFFFFLL;
            }

            v7 = 0;
            avail_out = v6->avail_out;
          }

          else
          {
            avail_out = v6->avail_out;
            v7 = avail_out == 0;
          }
        }

        v15 = 0;
        v16 = *(a1 + 48);
        *(a1 + 48) = v16;
        *buffer = v16;
        while (v15 != 4)
        {
          v17 = _BOMFileWriteRaw(a1, buffer, 4 - v15);
          v15 += v17;
          if (v17 < 0)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v18 = 0;
        total_in = v6->total_in;
        v6->total_in = total_in;
        *v38 = total_in;
        while (v18 != 4)
        {
          v20 = _BOMFileWriteRaw(a1, v38, 4 - v18);
          v18 += v20;
          if (v20 < 0)
          {
            return 0xFFFFFFFFLL;
          }
        }

        deflateEnd(v6);
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (v4->dst_size)
      {
        goto LABEL_30;
      }

      v5 = 1;
      while (1)
      {
        v22 = 0x20000 - v4->dst_size;
        v23 = *(a1 + 40);
        while (v22)
        {
          v24 = _BOMFileWriteRaw(a1, v23, v22);
          v22 -= v24;
          v23 += v24;
          if (v24 == -1)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v4->dst_ptr = *(a1 + 40);
        v4->dst_size = 0x20000;
        if ((v5 & 1) == 0)
        {
          break;
        }

LABEL_30:
        v5 = 1;
        v21 = compression_stream_process(v4, 1);
        if (v21 == 1)
        {
          v5 = 0;
        }

        else
        {
          v9 = v21;
          if (v21 == -1)
          {
            return v9;
          }
        }
      }

      compression_stream_destroy(v4);
    }

    v2 = *a1;
  }

  if (v2 == 3 || v2 == 0)
  {
    v26 = *(a1 + 24);
    if ((v26 - 3) >= 2)
    {
      if (v26 == 1)
      {
        v28 = *(a1 + 32);
        v27 = *(a1 + 40);
        v29 = *(v28 + 8);
        *(a1 + 64) = v29;
        *(a1 + 72) = 0;
        memmove(v27, *v28, v29);
        if (inflateEnd(*(a1 + 32)))
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      compression_stream_destroy(*(a1 + 32));
    }
  }

  v30 = *a1;
  if ((*a1 & 0xFFFFFFFE) != 4)
  {
    goto LABEL_93;
  }

  if (v30 == 5)
  {
    v31 = *(a1 + 96);
    if (v31)
    {
      *(a1 + 96) = 0;
    }

    else
    {
      v31 = BOMBufferPoolRequestBuffer(gBufferPool);
      v31[1] = 0;
      v31[2] = 0;
    }

    *(v31 + 12) |= 1u;
    BOMBufferFIFOEnqueue(*(a1 + 88), v31);
    if (!pthread_mutex_lock((a1 + 160)))
    {
      v35 = *(a1 + 224);
      if (!v35)
      {
        v35 = 1;
        *(a1 + 224) = 1;
      }

      if (gBOMAsyncDebug != 1)
      {
        goto LABEL_70;
      }

      fwrite("waiting for async write thread to finish...", 0x2BuLL, 1uLL, __stderrp);
      while (1)
      {
        v35 = *(a1 + 224);
LABEL_70:
        if (v35 == 2)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 112), (a1 + 160)))
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (!pthread_mutex_unlock((a1 + 160)) && !pthread_join(*(a1 + 104), 0))
      {
        if (gBOMAsyncDebug == 1)
        {
          fwrite("async write thread terminated. Draining FIFO...", 0x2FuLL, 1uLL, __stderrp);
        }

        while (BOMBufferFIFOCount(*(a1 + 88)))
        {
          v36 = BOMBufferFIFODequeue(*(a1 + 88));
          BOMBufferPoolReturnBuffer(gBufferPool, v36);
        }

        if ((gBOMAsyncDebug & 1) == 0)
        {
          goto LABEL_92;
        }

LABEL_91:
        fwrite("done\n", 5uLL, 1uLL, __stderrp);
LABEL_92:
        v30 = *a1;
LABEL_93:
        v9 = 0;
        if (v30 > 2)
        {
          if ((v30 - 4) < 2)
          {
            v9 = BOMFileClose(*(a1 + 8));
LABEL_103:
            *(a1 + 8) = 0;
            goto LABEL_104;
          }

          if (v30 != 3)
          {
            goto LABEL_104;
          }

          CFReadStreamClose(*(a1 + 8));
        }

        else
        {
          if (v30 < 2)
          {
            v9 = (*(*(a1 + 240) + 24))(*(*(a1 + 240) + 8), *(a1 + 8));
            *(a1 + 8) = -1;
LABEL_104:
            _freeBOMFile(a1);
            return v9;
          }

          if (v30 != 2)
          {
            goto LABEL_104;
          }

          CFWriteStreamClose(*(a1 + 8));
        }

        v9 = 0;
        goto LABEL_103;
      }
    }
  }

  else if (!pthread_mutex_lock((a1 + 160)))
  {
    v32 = *(a1 + 96);
    if (v32)
    {
      BOMBufferPoolReturnBuffer(gBufferPool, v32);
      *(a1 + 96) = 0;
    }

    while (BOMBufferFIFOCount(*(a1 + 88)))
    {
      v33 = BOMBufferFIFODequeue(*(a1 + 88));
      BOMBufferPoolReturnBuffer(gBufferPool, v33);
    }

    v34 = *(a1 + 224);
    if (!v34)
    {
      v34 = 1;
      *(a1 + 224) = 1;
    }

    if (gBOMAsyncDebug != 1)
    {
      goto LABEL_82;
    }

    fwrite("waiting for async read thread to finish...", 0x2AuLL, 1uLL, __stderrp);
    while (1)
    {
      v34 = *(a1 + 224);
LABEL_82:
      if (v34 == 2)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 112), (a1 + 160)))
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (!pthread_mutex_unlock((a1 + 160)) && !pthread_join(*(a1 + 104), 0))
    {
      while (BOMBufferFIFOCount(*(a1 + 88)))
      {
        v37 = BOMBufferFIFODequeue(*(a1 + 88));
        BOMBufferPoolReturnBuffer(gBufferPool, v37);
      }

      if (gBOMAsyncDebug != 1)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  return 0xFFFFFFFFLL;
}

void BomSys_free(void *a1)
{
  if (a1 != &gDefaultNOMMAPSys && a1 != 0 && a1 != &gDefaultSys)
  {
    free(a1);
  }
}

void BomSys_set_read(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_read(BomSys *, BomSys_read_call)");
  }

  else if (a2)
  {
    *(a1 + 5) = a2;
  }

  else
  {
    *(a1 + 5) = BomSys_read;
  }
}

uint64_t _BOMFileNewFromCFReadStreamSys(void *a1, __int128 *a2, char a3)
{
  if (BOMFileNewFromFDWithSys(a1, 0, a3, "r", a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

size_t BOMFileRead(uint64_t a1, UInt8 *buffer, unint64_t bufferLength)
{
  if (!a1)
  {
    return -1;
  }

  v3 = bufferLength;
  v4 = buffer;
  v6 = *a1;
  if (!*a1)
  {
LABEL_5:
    if (!bufferLength)
    {
      return 0;
    }

    if (!buffer)
    {
      return -1;
    }

    v7 = *(a1 + 24);
    if ((v7 - 3) < 2)
    {
      v20 = *(a1 + 32);
      v20->dst_ptr = buffer;
      v20->dst_size = bufferLength;
      while (1)
      {
        v21 = *(a1 + 56);
        if (v20->src_size)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21 == 0;
        }

        if (v22)
        {
          Raw = _BOMFileReadRaw(a1, *(a1 + 40), 0x20000);
          if (Raw)
          {
            if (Raw == -1)
            {
              goto LABEL_56;
            }

            v20->src_ptr = *(a1 + 40);
            v20->src_size = Raw;
            v21 = *(a1 + 56);
          }

          else
          {
            v21 = 1;
            *(a1 + 56) = 1;
          }
        }

        v24 = compression_stream_process(v20, v21 != 0);
        if (v24 == COMPRESSION_STATUS_END)
        {
          break;
        }

        if (v24 == COMPRESSION_STATUS_ERROR)
        {
LABEL_56:
          *(a1 + 56) = 1;
          return -1;
        }

        dst_size = v20->dst_size;
        if (!dst_size)
        {
          return v3 - dst_size;
        }
      }

      dst_size = v20->dst_size;
    }

    else
    {
      if (!v7)
      {
        v25 = *(a1 + 64);
        if (v25)
        {
          if (*(a1 + 72))
          {
            v26 = (a1 + 76);
          }

          else
          {
            v26 = *(a1 + 40);
          }

          if (v25 >= bufferLength)
          {
            v28 = bufferLength;
          }

          else
          {
            v28 = *(a1 + 64);
          }

          memcpy(buffer, v26, v28);
          v29 = *(a1 + 64);
          v3 -= v28;
          *(a1 + 236) -= v28;
          v4 += v28;
          *(a1 + 64) = v29 - v28;
          if (v29 != v28)
          {
            memmove(v26, &v26[v28], v29 - v28);
          }
        }

        else
        {
          v28 = 0;
        }

        v30 = _BOMFileReadRaw(a1, v4, v3);
        v10 = v30;
        if (v30 != -1)
        {
          if (!v30)
          {
            *(a1 + 56) = 1;
          }

          return v30 + v28;
        }

        return v10;
      }

      if (v7 != 1)
      {
        return -1;
      }

      v8 = *(a1 + 32);
      v8->next_out = buffer;
      v8->avail_out = bufferLength;
      while (1)
      {
        if (!v8->avail_in && !*(a1 + 56))
        {
          v9 = _BOMFileReadRaw(a1, *(a1 + 40), 0x20000);
          v10 = v9;
          if (v9)
          {
            if (v9 == -1)
            {
              return v10;
            }
          }

          else
          {
            *(a1 + 56) = 1;
          }

          *(a1 + 236) = v9;
          v8->avail_in = v9;
          v8->next_in = *(a1 + 40);
        }

        v11 = inflate(v8, 0);
        if (v11)
        {
          if (v11 != 1)
          {
            goto LABEL_56;
          }

          *(a1 + 56) = 1;
        }

        dst_size = v8->avail_out;
        if (dst_size != v3)
        {
          break;
        }

        if (*(a1 + 56))
        {
          dst_size = v3;
          return v3 - dst_size;
        }
      }
    }

    return v3 - dst_size;
  }

  if (v6 != 4)
  {
    if (v6 != 3)
    {
      return -1;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (!bufferLength)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = *(a1 + 96);
    if (!v13)
    {
      v13 = BOMBufferFIFODequeue(*(a1 + 88));
      *(a1 + 96) = v13;
    }

    v14 = v13[1];
    if (v3 >= v13[2] - v14)
    {
      v15 = v13[2] - v14;
    }

    else
    {
      v15 = v3;
    }

    memcpy(v4, (v13[3] + v14), v15);
    v16 = v13[2];
    v17 = v13[1] + v15;
    v13[1] = v17;
    v10 += v15;
    if (v16 != v17)
    {
      goto LABEL_36;
    }

    if (!v17)
    {
      if (pthread_mutex_lock((a1 + 160)))
      {
        goto LABEL_37;
      }

      v19 = *(a1 + 224);
      v18 = *(a1 + 228);
      if (pthread_mutex_unlock((a1 + 160)))
      {
        goto LABEL_37;
      }

      if ((v19 - 1) <= 1)
      {
        break;
      }
    }

    BOMBufferPoolReturnBuffer(gBufferPool, v13);
    *(a1 + 96) = 0;
LABEL_36:
    v4 += v15;
    v3 -= v15;
    if (!v3)
    {
      goto LABEL_37;
    }
  }

  if (v18)
  {
    *__error() = v18;
    return -1;
  }

LABEL_37:
  *(a1 + 16) += v10;
  return v10;
}

uint64_t _BOMFileReadRaw(uint64_t a1, UInt8 *buffer, CFIndex bufferLength)
{
  v6 = 0;
  do
  {
    if (*a1 == 3)
    {
      v7 = CFReadStreamRead(*(a1 + 8), buffer, bufferLength);
    }

    else if (*a1)
    {
      v7 = -1;
    }

    else
    {
      v7 = (*(*(a1 + 240) + 40))(*(*(a1 + 240) + 8), *(a1 + 8), buffer, bufferLength);
    }

    v8 = v7 & ~(v7 >> 63);
    v6 += v8;
    if (v7 < 1)
    {
      break;
    }

    buffer += v8;
    bufferLength -= v8;
  }

  while (bufferLength);
  *(a1 + 16) += v6;
  if (v7 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

void _freeBOMFile(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    free(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
    a1[5] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    BOMBufferFIFODestroy(v4);
  }

  free(a1);
}

uint64_t BOMTreeIteratorValue(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 57);
    if ((v9 & 8) != 0)
    {
      return 0;
    }

    if ((*(result + 57) & 1) == 0 && (v10 = *(result + 8)) != 0 && *v10 == *(result + 16) || (v11 = _revalidateIterator(result, a2, a3, a4, a5, a6, a7, a8), v9 = *(v8 + 57), v11))
    {
      if ((v9 & 4) == 0)
      {
        v12 = bswap32(*(*(*(v8 + 8) + 24) + 8 * *(v8 + 20)));
        if ((*(*v8 + 356) & 0x40) != 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20));
        }

        v14 = BOMStorageSizeOfBlock(**v8, v13, a3, a4, a5, a6, a7, a8);
        v20 = *(v8 + 48);
        if (v14 > v20)
        {
          v21 = v14;
          v22 = *(v8 + 40);
          if (v22)
          {
            free(v22);
            *(v8 + 40) = 0;
            v20 = *(v8 + 48);
          }

          if (v21 <= 2 * v20)
          {
            v23 = 2 * v20;
          }

          else
          {
            v23 = v21;
          }

          *(v8 + 48) = v23;
          *(v8 + 40) = malloc_type_malloc(v23, 0x6CF44FC8uLL);
        }

        v24 = bswap32(*(*(*(v8 + 8) + 24) + 8 * *(v8 + 20)));
        if ((*(*v8 + 356) & 0x40) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20));
        }

        if (BOMStorageCopyFromBlock(**v8, v25, *(v8 + 40), v15, v16, v17, v18, v19))
        {
          return 0;
        }

        *(v8 + 57) |= 4u;
      }

      return *(v8 + 40);
    }

    else
    {
      result = 0;
      *(v8 + 57) = v9 | 8;
    }
  }

  return result;
}

uint64_t BOMTreeIteratorKeySize(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if ((*(result + 57) & 8) != 0)
    {
      return 0;
    }

    if (((*(result + 57) & 1) != 0 || (v9 = *(result + 8)) == 0 || *v9 != *(result + 16)) && !_revalidateIterator(result, a2, a3, a4, a5, a6, a7, a8))
    {
      result = 0;
      *(v8 + 57) |= 8u;
      return result;
    }

    v10 = *v8;
    v11 = *(*v8 + 356);
    if ((v11 & 4) != 0)
    {
      return 0;
    }

    if ((v11 & 0x40) != 0)
    {
      result = *(v10 + 348);
      if (result >= 1)
      {
        return result;
      }

      v12 = bswap32(*(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4));
    }

    else
    {
      v12 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
    }

    v13 = *v10;

    return BOMStorageSizeOfBlock(v13, v12, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t CUIBitVectorIsBitSet(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = (a1[(a2 >> 5) + 2]._os_unfair_lock_opaque >> a2) & 1;
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorNumberOfBitsSetInBucket(uint64_t a1, unsigned int a2)
{
  v2 = vcnt_s8(*(a1 + 4 * (a2 >> 5) + 8));
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

int8x16_t _extractMetrics(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, int8x16_t *a6, void *a7, double *a8, int8x16_t *a9, double *a10, int8x16_t *a11)
{
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        if (a4)
        {
          v11 = *(a1 + 12);
          v12 = HIDWORD(*(a1 + 4));
          v13 = vadd_s32(v11, *(a1 + 4));
          v14 = *(a1 + 20);
          *a3 = *(a1 + 4);
          a3[1] = v11.i32[1];
          *a4 = v11.i32[0];
          a4[1] = v12;
          v15 = vadd_s32(v13, v14);
          v16.i64[0] = v15.i32[0];
          v16.i64[1] = v15.i32[1];
          result = vcvtq_f64_s64(v16);
          *a2 = result;
          if (a6)
          {
            if (a5)
            {
              v18 = *a1;
              if (*a1 >= 2u)
              {
                v19 = *(a1 + 40);
                *a5 = *(a1 + 28);
                a5[1] = v19;
                v20 = *(a1 + 32);
                v21.i64[0] = v20;
                v21.i64[1] = SHIDWORD(v20);
                v22 = vcvtq_f64_s64(v21);
                result = vextq_s8(v22, v22, 8uLL);
                *a6 = result;
                if (a7)
                {
                  if (v18 >= 3)
                  {
                    *result.i64 = *(a2 + 8) - *(a1 + 56);
                    *a7 = result.i64[0];
                    if (a9)
                    {
                      if (a8)
                      {
                        if (v18 >= 4)
                        {
                          v23 = *(a1 + 88);
                          *a8 = *(a1 + 76);
                          a8[1] = v23;
                          v24 = *(a1 + 80);
                          v25.i64[0] = v24;
                          v25.i64[1] = SHIDWORD(v24);
                          v26 = vcvtq_f64_s64(v25);
                          result = vextq_s8(v26, v26, 8uLL);
                          *a9 = result;
                          if (a11)
                          {
                            if (a10)
                            {
                              if (v18 >= 5)
                              {
                                v27 = *(a1 + 112);
                                *a10 = *(a1 + 100);
                                a10[1] = v27;
                                v28 = *(a1 + 104);
                                v29.i64[0] = v28;
                                v29.i64[1] = SHIDWORD(v28);
                                v30 = vcvtq_f64_s64(v29);
                                result = vextq_s8(v30, v30, 8uLL);
                                *a11 = result;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unsigned __int16 *CUIRenditionKeySetValueForAttribute(unsigned __int16 *result, int a2, int a3, unsigned int a4)
{
  if (result)
  {
    if (!a4)
    {
      CUIRenditionKeySetValueForAttribute_cold_3();
    }

    v4 = *result;
    if (result[1] | v4)
    {
      LODWORD(v5) = 0;
      v6 = result + 3;
      while (v4 != a2)
      {
        LODWORD(v5) = v5 + 1;
        v7 = *v6;
        v4 = *(v6 - 1);
        v6 += 2;
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v4 == 0;
        }

        if (v8)
        {
          goto LABEL_11;
        }
      }

      if (a3)
      {
        result[2 * v5 + 1] = a3;
      }

      else
      {
        v11 = 0;
        if (result[1])
        {
          goto LABEL_22;
        }

        while (1)
        {
          v12 = v11;
          if (!result[2 * v11])
          {
            break;
          }

          do
          {
LABEL_22:
            ++v11;
          }

          while (result[2 * v11 + 1]);
        }

        if (a4 <= v11)
        {
          CUIRenditionKeySetValueForAttribute_cold_1();
        }

        if (v11 > v5)
        {
          v5 = v5;
          v13 = &result[2 * v5 + 2];
          do
          {
            *(v13 - 1) = *v13;
            ++v5;
            v13 += 2;
          }

          while (v5 < v12);
        }
      }
    }

    else
    {
LABEL_11:
      if (a3)
      {
        v9 = 0;
        if (result[1])
        {
          goto LABEL_14;
        }

        while (result[2 * v9])
        {
          do
          {
LABEL_14:
            ++v9;
          }

          while (result[2 * v9 + 1]);
        }

        if ((a4 - 1) <= v9)
        {
          CUIRenditionKeySetValueForAttribute_cold_2();
        }

        v10 = &result[2 * v9];
        *v10 = a2;
        v10[1] = a3;
        *(v10 + 1) = 0;
      }
    }
  }

  return result;
}

unsigned __int16 *_CUIRenditionKeySetIntegerValueForAttribute(unsigned __int16 *a1, __int16 a2, unint64_t a3)
{
  if (a3 >> 16)
  {
    _CUIRenditionKeySetIntegerValueForAttribute_cold_1(a2);
  }

  return CUIRenditionKeySetValueForAttribute(a1, a2, a3, 0x16u);
}

void CUIUpdateImageProviderForATECompressedData(int a1, _DWORD *a2, int *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 <= 1195456543)
  {
    if (a1 != 1095911234)
    {
      if (a1 != 1195454774)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a1 == 1195456544)
  {
LABEL_8:
    *a2 = 8;
    v8 = 2;
    goto LABEL_9;
  }

  if (a1 == 1380401751)
  {
LABEL_7:
    *a2 = 8;
    v8 = 4;
LABEL_9:
    *a3 = v8;
    *a4 = 1;
    return;
  }

LABEL_10:
  _CUILog(4, "CoreUI: %s got a pixelFormat that it doesn't understand", a3, a4, a5, a6, a7, a8, "void CUIUpdateImageProviderForATECompressedData(enum CSIPixelFormat, u_int32_t *, u_int32_t *, CGImageComponentType *)");
}

uint64_t _CUIColorSpaceGetDisplayP3()
{
  if (_CUIColorSpaceGetDisplayP3___once != -1)
  {
    _CUIColorSpaceGetDisplayP3_cold_1();
  }

  return _CUIColorSpaceGetDisplayP3_sDisplayP3ColorSpace;
}

uint64_t CUIPlatformForPlatformString(void *a1)
{
  if ([a1 isEqualToString:kCUIPlatformMac[0]] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"osx"))
  {
    return 0;
  }

  if ([a1 isEqualToString:kCUIPlatformMaciOS])
  {
    return 2;
  }

  if ([a1 isEqualToString:kCUIPlatformiOS] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"iphoneos"))
  {
    return 1;
  }

  if ([a1 isEqualToString:kCUIPlatformAppleTV])
  {
    return 3;
  }

  if ([a1 isEqualToString:kCUIPlatformWatch])
  {
    return 4;
  }

  if ([a1 isEqualToString:kCUIPlatformVision])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"xros"])
  {
    return 5;
  }

  return -1;
}

uint64_t CUIValidateIdiomSubtypes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  result = 1;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if ((a1 - 6) >= 2)
      {
        if (a1 != 8)
        {
          return result;
        }

        if (v9 == 3648)
        {
          v11 = 3648;
          goto LABEL_58;
        }
      }

LABEL_57:
      v11 = 0;
      *a2 = 0;
LABEL_58:
      if (v11 != v9)
      {
        _CUILog(4, "CoreUI: %s passed a device subtype '%d' and idiom '%d':%s that are not a matching pair, subtype is not valid with given idiom. Assuming subtype should be 0 instead.", a3, a4, a5, a6, a7, a8, "_Bool CUIValidateIdiomSubtypes(NSInteger, NSUInteger *)");
        return 0;
      }

      return result;
    }

    if (a1 == 4)
    {
      goto LABEL_57;
    }

    if (v9 <= 483)
    {
      if (((v9 - 384) > 0x3E || ((1 << (v9 + 0x80)) & 0x4000400000000041) == 0) && v9 != 320 && v9 != 340)
      {
        goto LABEL_57;
      }

      return result;
    }

    if ((v9 - 484) > 0x1E)
    {
      goto LABEL_57;
    }

    v12 = 1 << (v9 + 28);
    v13 = 1074008065;
LABEL_42:
    if ((v12 & v13) != 0)
    {
      return result;
    }

    goto LABEL_57;
  }

  if ((a1 - 1) < 2)
  {
    if (v9 <= 2435)
    {
      if (v9 > 2223)
      {
        if (v9 <= 2339)
        {
          if (v9 != 2224 && v9 != 2266)
          {
            goto LABEL_57;
          }
        }

        else if (((v9 - 2340) > 0x30 || ((1 << (v9 - 36)) & 0x1000000100001) == 0) && v9 != 2420)
        {
          goto LABEL_57;
        }
      }

      else if (v9 > 1791)
      {
        if (v9 != 1792 && v9 != 2160)
        {
          goto LABEL_57;
        }
      }

      else if ((v9 - 568) >= 3 && v9 != 163)
      {
        goto LABEL_57;
      }
    }

    else if (v9 > 2751)
    {
      if (v9 <= 2867)
      {
        if ((v9 - 2752) > 0x2C)
        {
          goto LABEL_57;
        }

        v12 = 1 << (v9 + 64);
        v13 = 0x100004000001;
        goto LABEL_42;
      }

      if (v9 != 2868 && v9 != 3024 && v9 != 32401)
      {
        goto LABEL_57;
      }
    }

    else if (v9 <= 2621)
    {
      if (v9 != 2436 && v9 != 2532 && v9 != 2556)
      {
        goto LABEL_57;
      }
    }

    else if (((v9 - 2688) > 0x30 || ((1 << (v9 + 0x80)) & 0x1100000000001) == 0) && v9 != 2622)
    {
      goto LABEL_57;
    }
  }

  else if (!a1 || a1 == 3 && v9 != 720 && v9 != 3840)
  {
    goto LABEL_57;
  }

  return result;
}

id __PerformBlockWithThemeRefCache_block_invoke()
{
  result = objc_alloc_init(NSMutableDictionary);
  PerformBlockWithThemeRefCache___themeRefsByUniqueKey = result;
  return result;
}

void __RunTimeThemeRefForBundleIdentifierAndName_block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:*(a1 + 32)];
  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v4 unsignedIntegerValue];
    return;
  }

  if ([*(a1 + 40) hasPrefix:kCUIMutableStructureThemeStoreBundlePrefix])
  {
    v5 = [[CUIMutableStructuredThemeStore alloc] initWithIdentifier:*(a1 + 32)];
  }

  else
  {
    v6 = [NSBundle bundleWithIdentifier:*(a1 + 40)];
    v7 = [(NSBundle *)v6 pathForResource:*(a1 + 48) ofType:@"car" inDirectory:0];
    if (!v7)
    {
      *(*(*(a1 + 64) + 8) + 40) = [[NSString alloc] initWithFormat:@"RunTimeThemeRefForBundleIdentifierAndName() couldn't find %@.car in bundle with identifier: %@", *(a1 + 48), *(a1 + 40)];
      return;
    }

    v8 = v7;
    v5 = [[CUIStructuredThemeStore alloc] initWithPath:v7];
    [(CUIStructuredThemeStore *)v5 setBundleID:*(a1 + 40)];
    [(CUIStructuredThemeStore *)v5 setMainBundle:v6 == +[NSBundle mainBundle]];
    if (!v5)
    {
      *(*(*(a1 + 64) + 8) + 40) = [[NSString alloc] initWithFormat:@"RunTimeThemeRefForBundleIdentifierAndName() failed to initialize CUIStructuredThemeStore at path: %@ in bundle: %@", v8, *(a1 + 40)];
      _CUILog(4, "CoreUI: RunTimeThemeRefForBundleIdentifierAndName() failed to initialize CUIStructuredThemeStore at path: '%@' in bundle '%@'", v11, v12, v13, v14, v15, v16, v8);
      return;
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = _RegisterThemeProvider(v5);

  v9 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
  v10 = *(a1 + 32);

  [a2 setObject:v9 forKey:v10];
}

void CUIBitVectorDestroy(os_unfair_lock_s *a1)
{
  if (a1)
  {
    os_unfair_lock_lock(a1);

    free(a1);
  }
}

unsigned int *BOMStorageOpenWithSys(uint64_t a1, int a2, __int128 *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v215 = 0u;
  v216 = 0u;
  v214 = 0u;
  memset(v213, 0, sizeof(v213));
  v6 = (*(v3 + 2))(*(v3 + 1), a1, 2 * (a2 != 0), 420);
  if (v6 != -1)
  {
    v7 = v6;
    if ((*(v3 + 9))(*(v3 + 1), v6, v213) != -1)
    {
      v8 = BOMStreamWithFileAndSys(v7, 0, 0x200uLL, 0, 0, v3);
      if (!v8)
      {
        v121 = __error();
        strerror(*v121);
        v129 = BOMExceptionHandlerMessage("can't read from: '%s' %s", v122, v123, v124, v125, v126, v127, v128, a1);
        v87 = *__error();
        v88 = v129;
        v89 = 287;
        goto LABEL_18;
      }

      v16 = v8;
      if (BOMStreamReadUInt32(v8, v9, v10, v11, v12, v13, v14, v15) == 1112493395 && BOMStreamReadUInt32(v16, v17, v18, v19, v20, v21, v22, v23) == 1953460837)
      {
        if (BOMStreamReadUInt32(v16, v17, v18, v19, v20, v21, v22, v23) == 1)
        {
          v31 = malloc_type_calloc(1uLL, 0x470uLL, 0x10A0040835A29DFuLL);
          if (!v31)
          {
            v132 = __error();
            v133 = strerror(*v132);
            v141 = BOMExceptionHandlerMessage("calloc: %s", v134, v135, v136, v137, v138, v139, v140, v133);
            v142 = __error();
            _BOMExceptionHandlerCall(v141, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 318, *v142);
            BOMStreamFree(v16, v143, v144, v145, v146, v147, v148, v149);
            (*(v3 + 3))(*(v3 + 1), v7);
            return v31;
          }

          __CFSetLastAllocationEventName();
          *(v31 + 140) = v3;
          v31[257] = v7;
          v32 = v214;
          v31[258] = v214;
          v31[259] = v32;
          v31[263] = v31[263] & 0xFFFFFFF6 | a2 & 1;
          v31[264] = BOMStreamReadUInt32(v16, v33, v34, v35, v36, v37, v38, v39);
          v31[265] = BOMStreamReadUInt32(v16, v40, v41, v42, v43, v44, v45, v46);
          v31[266] = BOMStreamReadUInt32(v16, v47, v48, v49, v50, v51, v52, v53);
          v31[274] = BOMStreamReadUInt32(v16, v54, v55, v56, v57, v58, v59, v60);
          v31[275] = BOMStreamReadUInt32(v16, v61, v62, v63, v64, v65, v66, v67);
          v31[263] &= ~4u;
          *(v31 + 141) = 0;
          BOMStreamFree(v16, v68, v69, v70, v71, v72, v73, v74);
          v82 = v31[265];
          v83 = v31[266];
          v84 = __CFADD__(v83, v82);
          v85 = v83 + v82;
          if (v84)
          {
            v86 = BOMExceptionHandlerMessage("%s: stream invalid; overflow of admin offset+size", v75, v76, v77, v78, v79, v80, v81, a1);
            v87 = *__error();
            v88 = v86;
            v89 = 347;
          }

          else
          {
            v150 = v31[258];
            if (v85 <= v150)
            {
              v152 = v31[274];
              v153 = v31[275];
              v84 = __CFADD__(v153, v152);
              v154 = v153 + v152;
              if (v84)
              {
                v155 = BOMExceptionHandlerMessage("%s: stream invalid; overflow of toc offset+size", v75, v150, v77, v78, v79, v80, v81, a1);
                v87 = *__error();
                v88 = v155;
                v89 = 361;
              }

              else
              {
                if (v154 <= v150)
                {
                  if (a2)
                  {
                    if (v150 <= 0x800)
                    {
                      v157 = 2048;
                    }

                    else
                    {
                      v157 = v31[258];
                    }

                    v31[262] = v157;
                    _CreateMapAddress(v31, v157);
                    v158 = *(v31 + 130);
                    if (!v158)
                    {
                      goto LABEL_19;
                    }

                    v31[263] |= 0xAu;
                    v159 = v31[274];
                    if (v159)
                    {
                      v160 = BOMStreamWithFileAndSys(v31[257], v159, v31[275], 0, (v158 + v159), v3);
                      if (!v160)
                      {
                        goto LABEL_19;
                      }

                      BOMStreamFree(v160, v161, v162, v163, v164, v165, v166, v167);
                    }
                  }

                  else
                  {
                    v168 = *(v3 + 12);
                    if (!v168)
                    {
                      goto LABEL_50;
                    }

                    v169 = v168(*(v3 + 1), 0);
                    if (CUILogRenditionLogEnabled())
                    {
                      v170 = CUILogHandle();
                      if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136446466;
                        v218 = a1;
                        v219 = 2050;
                        v220 = v169;
                        _os_log_impl(&dword_18DF47000, v170, OS_LOG_TYPE_INFO, "CoreUI %{public}s %{public}p", buf, 0x16u);
                      }
                    }

                    if (v169 == -1)
                    {
LABEL_50:
                      v31[262] = 0;
                      *(v31 + 130) = 0;
                      v31[263] &= ~2u;
                      v174 = __error();
                      strerror(*v174);
                      _CUILog(1, "mmap failed for '%s' using regular file reading '%s'", v175, v176, v177, v178, v179, v180, a1);
                    }

                    else
                    {
                      (*(*(v31 + 140) + 24))(*(*(v31 + 140) + 8), v31[257]);
                      v31[257] = -1;
                      v171 = v31[263];
                      v31[262] = v31[258];
                      *(v31 + 130) = v169;
                      v31[263] = v171 | 0xA;
                      v172 = v31[265];
                      if (v172 && (v171 & 4) == 0)
                      {
                        madvise((v169 + v172), v31[266], 3);
                      }

                      v173 = v31[274];
                      if (v173 && (v31[263] & 4) == 0)
                      {
                        madvise((*(v31 + 130) + v173), v31[275], 3);
                      }
                    }
                  }

                  _CreateBlockTable(v31);
                  v181 = v31[265];
                  if (v181)
                  {
                    if (!a2 && (v31[263] & 2) != 0)
                    {
                      v183 = BOMStreamWithAddress(*(v31 + 130) + v181, v31[266], 0);
                    }

                    else
                    {
                      v182 = malloc_type_calloc(1uLL, v31[266], 0x5DFBE76CuLL);
                      *(v31 + 141) = v182;
                      if (!v182)
                      {
                        v191 = __error();
                        strerror(*v191);
                        _CUILog(4, "%s: malloc: %s", v192, v193, v194, v195, v196, v197, "BOMStorage BOMStorageOpenWithSys(const char *, Boolean, BomSys *)");
                        return 0;
                      }

                      v183 = BOMStreamWithFileAndSys(v7, v31[265], v31[266], 0, v182, v3);
                    }

                    v198 = v183;
                    if (!v183)
                    {
                      v212 = BOMExceptionHandlerMessage("can't read from %s unable to create a BOMStream", v184, v185, v186, v187, v188, v189, v190, a1);
                      v87 = *__error();
                      v88 = v212;
                      v89 = 455;
                      goto LABEL_18;
                    }

                    if (_ReadBlockTable(v31, v183, v185, v186, v187, v188, v189, v190) || _ReadFreeList(v31, v198, v199, v200, v201, v202, v203, v204))
                    {
                      goto LABEL_19;
                    }

                    BOMStreamFree(v198, v205, v206, v207, v208, v209, v210, v211);
                  }

                  else
                  {
                    *(v31 + 136) = _BOMFreeListAllocate();
                  }

                  __strlcpy_chk();
                  return v31;
                }

                v156 = BOMExceptionHandlerMessage("%s: stream invalid; toc range is outside of file", v75, v150, v77, v78, v79, v80, v81, a1);
                v87 = *__error();
                v88 = v156;
                v89 = 368;
              }
            }

            else
            {
              v151 = BOMExceptionHandlerMessage("%s: stream invalid; admin range is outside of file", v75, v150, v77, v78, v79, v80, v81, a1);
              v87 = *__error();
              v88 = v151;
              v89 = 354;
            }
          }

LABEL_18:
          _BOMExceptionHandlerCall(v88, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v89, v87);
          goto LABEL_19;
        }

        v131 = BOMExceptionHandlerMessage("%s has an unknown version: 0x%X", v24, v25, v26, v27, v28, v29, v30, a1);
        v111 = *__error();
        v112 = v131;
        v113 = 308;
      }

      else
      {
        v110 = BOMExceptionHandlerMessage("%s is not a BOMStorage file\n", v17, v18, v19, v20, v21, v22, v23, a1);
        v111 = *__error();
        v112 = v110;
        v113 = 294;
      }

      _BOMExceptionHandlerCall(v112, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v113, v111);
      BOMStreamFree(v16, v114, v115, v116, v117, v118, v119, v120);
LABEL_19:
      (*(v3 + 3))(*(v3 + 1), v7);
      return 0;
    }

    v100 = __error();
    v101 = strerror(*v100);
    v109 = BOMExceptionHandlerMessage("fstat: %s", v102, v103, v104, v105, v106, v107, v108, v101);
    v87 = *__error();
    v88 = v109;
    v89 = 278;
    goto LABEL_18;
  }

  v90 = __error();
  strerror(*v90);
  v98 = BOMExceptionHandlerMessage("can't open: '%s' %s", v91, v92, v93, v94, v95, v96, v97, a1);
  v99 = __error();
  _BOMExceptionHandlerCall(v98, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 271, *v99);
  return 0;
}

void *BOMStreamWithFileAndSys(int a1, uint64_t a2, size_t a3, int a4, char *a5, __int128 *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (v12)
  {
    if (!a6)
    {
      a6 = BomSys_default();
    }

    __CFSetLastAllocationEventName();
    v12[9] = a6;
    *v12 = 0x100000001;
    *(v12 + 5) = a1;
    v12[3] = a2;
    v12[4] = a3;
    *(v12 + 10) = a4;
    if (a5)
    {
      v12[6] = a5;
      *(v12 + 80) &= ~1u;
      if ((a3 & 0x8000000000000000) != 0)
      {
LABEL_15:
        v21 = __error();
        strerror(*v21);
        _CUILog(4, "%s: malloc: %s", v22, v23, v24, v25, v26, v27, "BOMStreamWithFileAndSys");
LABEL_18:
        BOMStreamFree(v12);
        return 0;
      }
    }

    else
    {
      v20 = malloc_type_calloc(1uLL, a3, 0x22400796uLL);
      v12[6] = v20;
      if (!v20)
      {
        goto LABEL_15;
      }

      a5 = v20;
      *(v12 + 80) |= 1u;
      a3 = v12[4];
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }
    }

    v12[7] = a5;
    v12[8] = &a5[a3];
    if ((*(v12 + 10) | 2) == 2)
    {
      if ((*(a6 + 7))(*(a6 + 1), *(v12 + 5), v12[3], 0) == -1)
      {
        v28 = __error();
        strerror(*v28);
        _CUILog(4, "%s: lseek: %s", v29, v30, v31, v32, v33, v34, "BOMStreamWithFileAndSys");
        goto LABEL_18;
      }

      a3 = (*(a6 + 5))(*(a6 + 1), *(v12 + 5), v12[6], v12[4]);
      if (a3 != v12[4])
      {
        v35 = __error();
        strerror(*v35);
        _CUILog(4, "%s: read: %s", v36, v37, v38, v39, v40, v41, "BOMStreamWithFileAndSys");
        goto LABEL_18;
      }
    }

    if (!a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = __error();
    strerror(*v13);
    _CUILog(4, "%s: malloc: %s", v14, v15, v16, v17, v18, v19, "BOMStreamWithFileAndSys");
  }

  return v12;
}

uint64_t BOMStorageReadFromBlock(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1029, *v16);
      if (!a2)
      {
LABEL_13:
        v10 = *__error();
        v11 = "BOMStorageCopyFromBlock: !bid";
        v12 = 1032;
        goto LABEL_27;
      }
    }

    return 0;
  }

  if (*(a1 + 1056) < a2)
  {
    v10 = *__error();
    v11 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v12 = 1039;
LABEL_27:
    _BOMExceptionHandlerCall(v11, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v12, v10);
    return 0;
  }

  v13 = *(a1 + 1068);
  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
    v13 = *(a1 + 1068);
    v15 = -1;
  }

  else
  {
    v14 = bswap32(*(*(a1 + 1072) + 8 * a2));
    if (*(a1 + 1052))
    {
      v15 = *(*(a1 + 1072) + 8 * a2);
    }

    else
    {
      v15 = v14;
    }
  }

  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v17 = 0;
  }

  else
  {
    v17 = *(*(a1 + 1072) + 8 * a2 + 4);
    v18 = bswap32(v17);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v17 = v18;
    }

    if (v15 == -1 && v17 == -1)
    {
      v10 = *__error();
      v11 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
      v12 = 1048;
      goto LABEL_27;
    }
  }

  if (__CFADD__(v17, v15))
  {
    v10 = *__error();
    v11 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v12 = 1054;
    goto LABEL_27;
  }

  if (v17 + v15 > *(a1 + 1032))
  {
    v10 = *__error();
    v11 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v12 = 1058;
    goto LABEL_27;
  }

  if (!v17)
  {
    return 0;
  }

  v20 = *(a1 + 1080);
  if (v20 && (*(v20 + 4 * a2) & 1) != 0)
  {
    v21 = *(a1 + 1052);
LABEL_39:
    if ((v21 & 2) == 0)
    {
      return 0;
    }

    return *(a1 + 1040) + v15;
  }

  v21 = *(a1 + 1052);
  if ((v21 & 1) == 0)
  {
    goto LABEL_39;
  }

  v22 = *(a1 + 1028);
  if (v22 == -1)
  {
    goto LABEL_39;
  }

  if ((v21 & 2) == 0)
  {
    return 0;
  }

  v23 = BOMStreamWithFile(v22, v15, v17, 0, (*(a1 + 1040) + v15));
  if (!v23)
  {
    v10 = *__error();
    v11 = "BOMStorageCopyRangeFromBlockRange: !stream";
    v12 = 1086;
    goto LABEL_27;
  }

  BOMStreamFree(v23, v24, v25, v26, v27, v28, v29, v30);
  v38 = *(a1 + 1080);
  if (v38)
  {
    *(v38 + 4 * a2) |= 1u;
  }

  else
  {
    v39 = BOMExceptionHandlerMessage("BOM blockShadowTable is null", v31, v32, v33, v34, v35, v36, v37, v41);
    v40 = __error();
    _BOMExceptionHandlerCall(v39, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1093, *v40);
  }

  return *(a1 + 1040) + v15;
}

uint64_t BOMStorageInRam(uint64_t result)
{
  if (result)
  {
    return (*(result + 1052) >> 2) & 1;
  }

  return result;
}

uint64_t BOMTreeReadValue(uint64_t a1, void *__s1, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v25 = 0;
  if (a1 && __s1)
  {
    if (!a3 && (*(a1 + 356) & 4) == 0)
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, __s1, a3, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v15 = result;
    IndexForKey = _findIndexForKey(a1, result, __s1, a3, &v25, v12, v13, v14);
    if (v25)
    {
      v23 = bswap32(*(*(v15 + 24) + 8 * IndexForKey));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = *(*(v15 + 24) + 8 * IndexForKey);
      }

      return BOMStorageReadFromBlock(*a1, v24, v17, v18, v19, v20, v21, v22);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _CUICopySortedKeySignature(char *__dst, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = -1;
  if (__dst && a2 >= 0x65)
  {
    v9 = stpncpy(__dst, "{", a2 - 1);
    v10 = (&__dst[a2] - v9);
    if (&__dst[a2] == v9 || (a4 & 0xFFFFFFFFFFFFFFFELL) < 1)
    {
      v28 = v9;
    }

    else
    {
      v11 = a3 + 2;
      do
      {
        v12 = *(v11 - 2);
        v13 = (v12 >> 8) & 0xF;
        if (v12 >= 0xA000)
        {
          v14 = 87;
        }

        else
        {
          v14 = 48;
        }

        v15 = v14 + (v12 >> 12);
        if (v13 >= 0xA)
        {
          v16 = 87;
        }

        else
        {
          v16 = 48;
        }

        v17 = v16 + v13;
        v18 = v12 & 0xF;
        v19 = v12 >> 4;
        if (v19 >= 0xA)
        {
          v20 = 87;
        }

        else
        {
          v20 = 48;
        }

        v21 = v20 + v19;
        if (v18 >= 0xA)
        {
          v22 = 87;
        }

        else
        {
          v22 = 48;
        }

        v23 = v22 + v18;
        v25 = v15 == 48 && v17 == 48;
        v26 = v21 == 48 && v25;
        v27 = v9 + 1;
        if (v26 && v23 == 48)
        {
          *v9 = 48;
        }

        else if (v26)
        {
          *v9 = v23;
        }

        else if (v25)
        {
          *v9 = v21;
          v27 = v9 + 2;
          v9[1] = v23;
        }

        else if (v15 == 48)
        {
          v27 = v9 + 3;
          *v9 = v17;
          v9[1] = v21;
          v9[2] = v23;
        }

        else
        {
          *v9 = v15;
          v9[1] = v17;
          v9[2] = v21;
          v27 = v9 + 4;
          v9[3] = v23;
        }

        *v27 = 45;
        v28 = v27 + 1;
        v10 -= 5;
        if (v10)
        {
          v29 = v11 >= a3 + (a4 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v29 = 1;
        }

        v11 += 2;
        v9 = v28;
      }

      while (!v29);
    }

    if ((v10 - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v28 -= 2;
    }

    else
    {
      *(v28 - 1) = 125;
    }

    *v28 = 0;
    return v28 - __dst;
  }

  return result;
}

uint64_t CUICopyKeySignatureWithPrefix(char *a1, unint64_t a2, int *a3, uint64_t a4, uint64_t *a5, unsigned int a6)
{
  if (!a4)
  {
    CUICopyKeySignatureWithPrefix_cold_1();
  }

  memset(v38, 0, 44);
  v12 = *(a4 + 8);
  if (v12 < 0x16)
  {
    v13 = v38;
  }

  else
  {
    v13 = malloc_type_calloc(v12, 2uLL, 0x1000040BDFB0063uLL);
  }

  CUIFillCARKeyArrayForRenditionKey2(v13, a3, a4, a5);
  if (a2)
  {
    v15 = a1 + 1;
    do
    {
      v16 = a6;
      v14 = v15;
      a6 /= 0xAu;
      *(v15 - 1) = (v16 - 10 * a6) | 0x30;
      if (v16 < 0xA)
      {
        break;
      }

      ++v15;
      --a2;
    }

    while (a2);
  }

  else
  {
    v14 = a1;
  }

  v17 = v14 - a1;
  if ((v14 - a1) >= 2)
  {
    v18 = 1;
    v19 = a1;
    do
    {
      v20 = *v19;
      v21 = (v17 - v18);
      *v19++ = v21[a1];
      v21[a1] = v20;
    }

    while (v17 >> 1 > v18++);
  }

  v23 = _CUICopySortedKeySignature(v14, a2, v13, 2 * *(a4 + 8));
  if (v23 < 0)
  {
    if (v13 != v38)
    {
      free(v13);
    }

    return -1;
  }

  v24 = v23;
  if (v13 != v38)
  {
    free(v13);
  }

  if (a2 - v24 < 0x11)
  {
    return -1;
  }

  if (v24 < 0x61)
  {
    return v24;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    v27 = &a3[v25];
    v28 = *(v27 + 1);
    if (!*(v27 + 1))
    {
      break;
    }

    v29 = *v27;
    if (a5 && (*a5 & (1 << v29)) != 0)
    {
      LODWORD(v30) = *(a5 + v29 + 8);
LABEL_23:
      v31 = 8 * v25;
      if (v30 >= 4)
      {
        v31 = 4 * v25 + 16;
      }

      v32 = (v28 << v31) ^ v26;
      if (v30 <= 0xB)
      {
        v26 = v32;
      }

      goto LABEL_32;
    }

    v33 = *(a4 + 8);
    if (v33)
    {
      v30 = 0;
      while (*(a4 + 12 + 4 * v30) != v29)
      {
        if (v33 == ++v30)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_23;
    }

LABEL_32:
    ++v25;
  }

  while (v25 != 21);
  v24 += 16;
  v34 = &v14[v24];
  v14[v24] = 0;
  v35 = 16;
  do
  {
    if (v26)
    {
      if ((v26 & 0xF) >= 0xA)
      {
        v36 = (v26 & 0xF) + 87;
      }

      else
      {
        v36 = v26 & 0xF | 0x30;
      }

      *--v34 = v36;
      v26 >>= 4;
    }

    else
    {
      *--v34 = 48;
    }

    --v35;
  }

  while (v35);
  return v24;
}

void _UnRegisterThemeRef(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = ___UnRegisterThemeRef_block_invoke;
  v1[3] = &__block_descriptor_40_e20_v16__0__NSMapTable_8l;
  v1[4] = a1;
  __PerformBlockWithThemeRegistry(v1);
}

uint64_t BOMTreeFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 356) & 1) != 0 && BOMTreeCommit(result))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 296);
      if (v2 && CFArrayGetCount(v2))
      {
        _CUILog(4, "%s: BOMTree '%s' still has iterators active", v3, v4, v5, v6, v7, v8, "int BOMTreeFree(BOMTree)");
      }

      for (i = 32; i != 288; i += 8)
      {
        v10 = *(v1 + i);
        if (v10)
        {
          if ((v10[2] & 2) != 0)
          {
            _WritePage(v1, *(v1 + i));
          }

          _FreePage(v1, v10);
          *(v1 + i) = 0;
        }
      }

      _FreePage(v1, *(v1 + 24));
      *(v1 + 24) = 0;
      v11 = *(v1 + 8);
      if (v11 && (*(v1 + 356) & 0x20) != 0)
      {
        free(v11);
        *(v1 + 8) = 0;
      }

      v12 = *(v1 + 296);
      if (v12)
      {
        CFRelease(v12);
        *(v1 + 296) = 0;
      }

      v13 = *(v1 + 336);
      if (v13)
      {
        free(v13);
        *(v1 + 336) = 0;
      }

      v14 = *(v1 + 320);
      if (v14)
      {
        free(v14);
      }

      free(v1);
      return 0;
    }
  }

  return result;
}

void _FreePage(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = -1;
    *(a2 + 1) = -1;
    *(a2 + 4) = 0;
    if ((*(a1 + 356) & 0x40) == 0)
    {
      free(*(a2 + 3));
    }

    free(a2);
  }
}

void __csiImageProviderReleaseData(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 40));

  *(a1 + 24) = 0;
  v1 = *(a1 + 88);
  if (v1)
  {
    [+[_CSIRenditionBlockData sharedCache]() removeObjectForKey:v1];
  }

  *(a1 + 88) = 0;
  v2 = *(a1 + 96);
  if (v2)
  {
    [+[_CSIRenditionBlockData sharedCache]() removeObjectForKey:v2];
  }

  *(a1 + 96) = 0;
  v3 = *(a1 + 104);
  if (v3)
  {
    [+[_CSIRenditionBlockData sharedCache]() removeObjectForKey:v3];
  }

  *(a1 + 104) = 0;
  objc_storeWeak((a1 + 56), 0);
  objc_storeWeak((a1 + 64), 0);
  objc_storeWeak((a1 + 72), 0);
  objc_storeWeak((a1 + 48), 0);
}

void _dense_deallocate(uint64_t a1)
{
  v2 = *a1;
  (*(a1 + 56))();
  free(*v2);
  free(v2);
  *a1 = 0;
}

uint64_t __csiCopyImageTextureDataWithOptions(uint64_t a1)
{
  v2 = [objc_loadWeak((a1 + 48)) key];
  CUIRenditionKeyValueForAttribute(v2, 17);
  CUIRenditionKeyValueForAttribute(v2, 1);
  CUIRenditionKeyValueForAttribute(v2, 2);
  kdebug_trace();
  v3 = *(*(a1 + 32) + 8);
  if (__hardware_supports_encoding_onceToken != -1)
  {
    __csiCopyImageTextureDataWithOptions_cold_1();
  }

  if (v3 == 7 && __hardware_supports_encoding_supportsASTC == 1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v5 = objc_alloc_init(CSIATECHelper);
    v6 = CUIATECompressedDataFromBuffer(*(a1 + 32) + 16, *(*(a1 + 32) + 8), &v5->glInternalFormat, &v5->metalPixelFormat, &v5->width, &v5->height, &v5->rowbytes, &v5->twiddled);
    v5->data = v6;
    if (v6)
    {
      __CUICFMutableDictAddInt32Property(Mutable, @"width", v5->width);
      __CUICFMutableDictAddInt32Property(Mutable, @"height", v5->height);
      __CUICFMutableDictAddInt32Property(Mutable, @"rowBytes", v5->rowbytes);
      __CUICFMutableDictAddInt32Property(Mutable, @"glInternalFormat", v5->glInternalFormat);
      __CUICFMutableDictAddInt32Property(Mutable, @"pixelFormatGL", v5->glInternalFormat);
      __CUICFMutableDictAddInt32Property(Mutable, @"pixelFormatMetal", v5->metalPixelFormat);
      __CUICFMutableDictAddInt32Property(Mutable, @"mipmapLevelCount", 1);
      __CUICFMutableDictAddInt32Property(Mutable, @"faceCount", 1);
      CFDictionaryAddValue(Mutable, @"supportsTiledLayout", v5->twiddled);
      ColorSpace = CGImageProviderGetColorSpace();
      CFDictionaryAddValue(Mutable, @"colorSpace", ColorSpace);
      v8 = CGImageTextureDataCreate();
    }

    else
    {

      v8 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    v8 = 0;
  }

  kdebug_trace();
  return v8;
}

uint64_t BOMStorageFree(_BYTE *a1)
{
  if (!a1)
  {
    return 1;
  }

  if ((a1[1052] & 0x10) != 0 && BOMStorageCommit(a1))
  {
    return 1;
  }

  v3 = *(a1 + 134);
  if (v3)
  {
    if (a1[1052])
    {
      free(v3);
      v4 = *(a1 + 135);
      if (v4)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v5[4](*(a1 + 136));
    free(v5);
  }

  if (*(a1 + 130))
  {
    if ((*(a1 + 263) & 8) != 0)
    {
      v6 = *(a1 + 263) & 3;
      v7 = (*(*(a1 + 140) + 104))(*(*(a1 + 140) + 8));
      if (v6 != 2 && v7 == -1)
      {
        v8 = __error();
        _BOMExceptionHandlerCall("munmap failed", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1521, *v8);
      }
    }
  }

  if (*(a1 + 257) != -1)
  {
    (*(*(a1 + 140) + 24))(*(*(a1 + 140) + 8));
  }

  v9 = *(a1 + 141);
  if (v9)
  {
    free(v9);
  }

  free(a1);
  return 0;
}

void *_dense_clear(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*v1 + 8 * i);
      *(*v1 + 8 * i) = 0;
      if (v4)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
        v2 = *(v1 + 16);
      }
    }
  }

  result = *(v1 + 8);
  *(v1 + 8) = 0;
  if (result)
  {
    do
    {
      v7 = *result;
      free(result);
      result = v7;
    }

    while (v7);
  }

  return result;
}

void __CUICFMutableDictAddInt32Property(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

_CUISubrangeData *CUIATECompressedDataFromBuffer(uint64_t a1, int a2, int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, CFBooleanRef *a8)
{
  v13 = a3;
  if (!*a1)
  {
    v25 = a1 + 12;
    v24 = *(a1 + 12);
    v26 = *(a1 + 13);
    if (v24 == 65)
    {
      if (v26 != 84 || *(a1 + 14) != 69 || *(a1 + 15) != 67 || *(a1 + 18))
      {
        goto LABEL_47;
      }

      LODWORD(v84) = 0;
      *a5 = *(a1 + 19) | (*(a1 + 21) << 16);
      *a6 = *(a1 + 22) | (*(a1 + 24) << 16);
      __ATEBlockFormatToGLInternalFormat((*(a1 + 25) | (*(a1 + 27) << 16)), a4, a3, &v84, a5, a6, a7, a8);
      *a7 = v84 * ((*a5 + *(a1 + 16) - 1) / *(a1 + 16));
      *a8 = kCFBooleanFalse;
      v28 = (v25 & 0x3F) != 0;
      if ((v25 & 0x3F) != 0)
      {
        v72 = malloc_default_zone();
        v30 = malloc_type_zone_memalign(v72, 0x40uLL, *(a1 + 8), 0xC32B7EC7uLL);
        __CFSetLastAllocationEventName();
        memcpy(v30, (a1 + 28), *(a1 + 8) - 16);
      }

      else
      {
        v30 = (a1 + 268);
      }
    }

    else
    {
      if (v24 != 19 || v26 != 171 || *(a1 + 14) != 161 || *(a1 + 15) != 92)
      {
        goto LABEL_47;
      }

      *a5 = *(a1 + 19) | (*(a1 + 21) << 16);
      *a6 = *(a1 + 22) | (*(a1 + 24) << 16);
      __ASTCBlockFormatToGLInternalFormat(*(a1 + 16), *(a1 + 17), a3, a4);
      *a7 = 16 * ((*a5 + *(a1 + 16) - 1) / *(a1 + 16));
      *a8 = kCFBooleanFalse;
      v28 = (v25 & 0x3F) != 0;
      if ((v25 & 0x3F) != 0)
      {
        v29 = malloc_default_zone();
        v30 = malloc_type_zone_memalign(v29, 0x40uLL, *(a1 + 8), 0x75B3F9E4uLL);
        __CFSetLastAllocationEventName();
        memcpy(v30, (a1 + 28), *(a1 + 8) - 16);
        v31 = v30;
      }

      else
      {
        v31 = 0;
        v30 = (a1 + 268);
      }

      v62 = MTLCreateSystemDefaultDevice();
      if (v62)
      {
        v63 = v62;
        if (objc_opt_respondsToSelector())
        {
          v64 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:*a4 width:*a5 height:*a6 mipmapped:0];
          [(MTLTextureDescriptor *)v64 setMipmapLevelCount:1];
          v65 = [v63 newTextureLayoutWithDescriptor:v64 isHeapOrBufferBacked:0];
          v66 = [v65 size];
          v67 = malloc_default_zone();
          v68 = malloc_type_zone_memalign(v67, [v65 alignment], v66, 0x24ADB17AuLL);
          __CFSetLastAllocationEventName();
          if (objc_opt_respondsToSelector())
          {
            [v65 initializeTextureMemory:v68];
          }

          v69 = *a7;
          v70 = *a5;
          v71 = *a6;
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v87 = v70;
          v88 = v71;
          v89 = 1;
          [v65 copyFromLinearBytes:v30 linearOffset:0 linearBytesPerRow:v69 linearBytesPerImage:0 toTextureMemory:v68 textureSlice:0 textureLevel:0 textureRegion:&v84];
          [v65 finalizeTextureMemory:v68];
          *a8 = kCFBooleanTrue;
          if (v31)
          {
            free(v31);
          }

          return [NSData dataWithBytesNoCopy:v68 length:v66 freeWhenDone:1];
        }
      }
    }

    v73 = [NSData alloc];
    v74 = *(a1 + 8) - 16;

    return [v73 initWithBytesNoCopy:v30 length:v74 freeWhenDone:v28];
  }

  if (a2 != 7 || (memset(&stream, 0, sizeof(stream)), (v15 = MTLCreateSystemDefaultDevice()) == 0))
  {
LABEL_6:
    v17 = malloc_default_zone();
    v18 = malloc_type_zone_memalign(v17, 0x40uLL, *(a1 + 8), 0x81439CE6uLL);
    __CFSetLastAllocationEventName();
    v19 = compression_decode_buffer(v18, *(a1 + 8), (a1 + 12), *(a1 + 4), 0, COMPRESSION_LZFSE);
    if (!v19)
    {
      free(v18);
      _CUILog(4, "CoreUI: %s couldn't uncompress ASTC buffer %zu %u %u", v32, v33, v34, v35, v36, v37, "CFDataRef CUIATECompressedDataFromBuffer(const u_int8_t *, int, uint32_t *, uint32_t *, uint32_t *, uint32_t *, uint32_t *, CFBooleanRef *)");
      return 0;
    }

    v20 = v19;
    v21 = [NSData dataWithBytesNoCopy:v18 length:v19 freeWhenDone:1];
    v22 = *v18;
    v23 = v18[1];
    if (v22 == 19)
    {
      if (v23 != 171 || v18[2] != 161 || v18[3] != 92)
      {
        goto LABEL_47;
      }

      *a5 = *(v18 + 7) | (v18[9] << 16);
      *a6 = *(v18 + 5) | (v18[12] << 16);
      __ASTCBlockFormatToGLInternalFormat(v18[4], v18[5], v13, a4);
      v38 = 16 * ((*a5 + v18[4] - 1) / v18[4]);
    }

    else
    {
      if (v22 != 65 || v23 != 84 || v18[2] != 69 || v18[3] != 67 || v18[6])
      {
LABEL_47:
        _CUILog(4, "CoreUI: %s got an invalid Compressed Texture Header %c%c%c%c", a3, a4, a5, a6, a7, a8, "CFDataRef CUIATECompressedDataFromBuffer(const u_int8_t *, int, uint32_t *, uint32_t *, uint32_t *, uint32_t *, uint32_t *, CFBooleanRef *)");
        return 0;
      }

      LODWORD(v84) = 0;
      *a5 = *(v18 + 7) | (v18[9] << 16);
      *a6 = *(v18 + 5) | (v18[12] << 16);
      __ATEBlockFormatToGLInternalFormat((*(v18 + 13) | (v18[15] << 16)), a4, v13, &v84, a5, a6, a7, a8);
      v38 = v84 * ((*a5 + v18[4] - 1) / v18[4]);
    }

    *a7 = v38;
    *a8 = kCFBooleanFalse;
    return [[_CUISubrangeData alloc] initWithData:v21 range:16, v20 - 16];
  }

  v16 = v15;
  if (compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE))
  {

    goto LABEL_6;
  }

  v80 = v16;
  v76 = a4;
  v77 = a6;
  v82 = a7;
  v78 = a8;
  v39 = *(a1 + 4);
  stream.src_ptr = (a1 + 12);
  stream.src_size = v39;
  v40 = malloc_default_zone();
  v41 = 16;
  v42 = malloc_type_zone_memalign(v40, 0x40uLL, 0x10uLL, 0x87547845uLL);
  __CFSetLastAllocationEventName();
  v43 = 0;
  v44 = 0;
  v79 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v75 = v13;
  while (1)
  {
    stream.dst_ptr = v42;
    stream.dst_size = v41;
    v48 = compression_stream_process(&stream, 0);
    if (v48 == COMPRESSION_STATUS_ERROR)
    {
      free(v42);

      compression_stream_destroy(&stream);
      return 0;
    }

    v55 = v48;
    if (v43 || (stream.dst_ptr - v42) != 16)
    {
      if (!v47)
      {
        CUIATECompressedDataFromBuffer_cold_1();
      }

      v59 = *v82;
      v60 = *a5;
      v84 = 0;
      v85 = v46;
      v86 = 0;
      v87 = v60;
      v88 = v47;
      v89 = 1;
      [v44 copyFromLinearBytes:v42 linearOffset:0 linearBytesPerRow:v59 linearBytesPerImage:0 toTextureMemory:v45 textureSlice:0 textureLevel:0 textureRegion:&v84];
      v46 += v47;
      goto LABEL_45;
    }

    if (*v42 != 19 || v42[1] != 171 || v42[2] != 161 || v42[3] != 92)
    {
      _CUILog(4, "CoreUI: %s got an invalid ASTC Header %c%c%c%c", v49, v50, v51, v52, v53, v54, "CFDataRef CUIATECompressedDataFromBuffer(const u_int8_t *, int, uint32_t *, uint32_t *, uint32_t *, uint32_t *, uint32_t *, CFBooleanRef *)");
      goto LABEL_51;
    }

    v47 = v42[5];
    if (!v47)
    {
      break;
    }

    v81 = v46;
    *a5 = *(v42 + 7) | (v42[9] << 16);
    *v77 = *(v42 + 5) | (v42[12] << 16);
    __ASTCBlockFormatToGLInternalFormat(v42[4], v47, v13, v76);
    *v82 = 16 * ((*a5 + v42[4] - 1) / v42[4]);
    *v78 = kCFBooleanTrue;
    v43 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:*v76 width:*a5 height:*v77 mipmapped:0];
    [(MTLTextureDescriptor *)v43 setMipmapLevelCount:1];
    v44 = [v80 newTextureLayoutWithDescriptor:v43 isHeapOrBufferBacked:0];
    v56 = [v44 size];
    v57 = malloc_default_zone();
    v79 = v56;
    v45 = malloc_type_zone_memalign(v57, [v44 alignment], v56, 0xEA8D05uLL);
    __CFSetLastAllocationEventName();
    v41 = *v82;
    free(v42);
    v58 = malloc_default_zone();
    v42 = malloc_type_zone_memalign(v58, 0x40uLL, v41, 0xD7680D61uLL);
    __CFSetLastAllocationEventName();
    if (objc_opt_respondsToSelector())
    {
      [v44 initializeTextureMemory:v45];
    }

    v13 = v75;
    v46 = v81;
LABEL_45:
    if (v55 == COMPRESSION_STATUS_END)
    {
      [v44 finalizeTextureMemory:v45];
      free(v42);
      compression_stream_destroy(&stream);

      return [[NSData alloc] initWithBytesNoCopy:v45 length:v79 freeWhenDone:1];
    }
  }

  _CUILog(4, "CoreUI: %s got an invalid ASTC Header (astcHeader->blockdim_y == 0) ", v49, v50, v51, v52, v53, v54, "CFDataRef CUIATECompressedDataFromBuffer(const u_int8_t *, int, uint32_t *, uint32_t *, uint32_t *, uint32_t *, uint32_t *, CFBooleanRef *)");
LABEL_51:

  return 0;
}

uint64_t __ASTCBlockFormatToGLInternalFormat(uint64_t result, char a2, int *a3, int *a4)
{
  v4 = (a2 | (16 * result));
  if (v4 > 0x87)
  {
    if ((a2 | (16 * result)) <= 0xA7u)
    {
      switch(v4)
      {
        case 0x88u:
          v5 = 212;
          v6 = 37815;
          break;
        case 0xA5u:
          v5 = 213;
          v6 = 37816;
          break;
        case 0xA6u:
          v5 = 214;
          v6 = 37817;
          break;
        default:
          return result;
      }
    }

    else if ((a2 | (16 * result)) > 0xC9u)
    {
      if (v4 == 202)
      {
        v5 = 217;
        v6 = 37820;
      }

      else
      {
        if (v4 != 204)
        {
          return result;
        }

        v5 = 218;
        v6 = 37821;
      }
    }

    else if (v4 == 168)
    {
      v5 = 215;
      v6 = 37818;
    }

    else
    {
      if (v4 != 170)
      {
        return result;
      }

      v5 = 216;
      v6 = 37819;
    }
  }

  else if ((a2 | (16 * result)) <= 0x64u)
  {
    switch(v4)
    {
      case 'D':
        v5 = 204;
        v6 = 37808;
        break;
      case 'T':
        v5 = 205;
        v6 = 37809;
        break;
      case 'U':
        v5 = 206;
        v6 = 37810;
        break;
      default:
        return result;
    }
  }

  else if ((a2 | (16 * result)) > 0x84u)
  {
    if (v4 == 133)
    {
      v5 = 210;
      v6 = 37813;
    }

    else
    {
      if (v4 != 134)
      {
        return result;
      }

      v5 = 211;
      v6 = 37814;
    }
  }

  else if (v4 == 101)
  {
    v5 = 207;
    v6 = 37811;
  }

  else
  {
    if (v4 != 102)
    {
      return result;
    }

    v5 = 208;
    v6 = 37812;
  }

  *a3 = v6;
  *a4 = v5;
  return result;
}

__CFString *OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2)
{

  return CUIPlatformNameForPlatform(a2);
}

const UInt8 *__csiTextureDataLockData(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex *a4)
{
  *a4 = CFDataGetLength(*(a1 + 40));
  v5 = *(a1 + 40);

  return CFDataGetBytePtr(v5);
}

void ____getDeviceTraits_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  v11 = MGCopyAnswer();
  __getDeviceTraits___deviceIdiom = 0;
  __getDeviceTraits___deviceSubtype = 0;
  __getDeviceTraits___deviceDisplayGamut = 0;
  __getDeviceTraits___deviceMemoryClass = 0;
  __getDeviceTraits___deviceGraphicsClass = 0;
  v18 = &_MergedGlobals;
  __getDeviceTraits___deviceGraphicsFallbackOrder = 0;
  __getDeviceTraits___deviceSubtypeFallbackOrder = 0;
  if (!v11)
  {

    _CUILog(4, "CoreUI: CUICatalog: MGCopyAnswer returned nil", v12, v13, v14, v15, v16, v17, a9);
    return;
  }

  v19 = v11;
  v20 = [v11 objectForKey:@"ArtworkDeviceIdiom"];
  if (![v20 length])
  {
    _CUILog(4, "CoreUI: CUICatalog: couldn't get 'kMGArtworkDeviceIdiom' from MGCopyAnswer got '%@'", v21, v22, v23, v24, v25, v26, v19);
    goto LABEL_16;
  }

  v27 = v19;
  v28 = [v20 UTF8String];
  v29 = v28;
  if (!"universal")
  {
    goto LABEL_12;
  }

  v30 = &gThemeIdioms;
  if (strcasecmp(v28, "universal"))
  {
    while (1)
    {
      v31 = v30[5];
      if (!v31)
      {
        break;
      }

      v30 += 3;
      if (!strcasecmp(v29, v31))
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    v32 = __getDeviceTraits___deviceIdiom;
    goto LABEL_13;
  }

LABEL_7:
  v32 = *v30;
  __getDeviceTraits___deviceIdiom = *v30;
LABEL_13:
  v19 = v27;
  if (!v32 && !strcasecmp(v29, "reality"))
  {
    __getDeviceTraits___deviceIdiom = 8;
  }

LABEL_16:
  v33 = [objc_msgSend(v19 objectForKey:{@"ArtworkDeviceSubType", "integerValue"}];
  __getDeviceTraits___deviceSubtype = v33;
  if (__getDeviceTraits___deviceIdiom == 5)
  {
    CUIWatchSubTypeFallbackOrder(v33, v10);
  }

  [v10 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 0)}];
  __getDeviceTraits___deviceSubtypeFallbackOrder = v10;
  __getDeviceTraits___deviceMemoryClass = [objc_msgSend(v19 objectForKey:{@"DevicePerformanceMemoryClass", "integerValue"}];
  v34 = [v19 objectForKey:@"ArtworkDisplayGamut"];
  if ([v34 length])
  {
    v41 = [v34 UTF8String];
    if ("sRGB")
    {
      v42 = v41;
      v43 = &gThemeDisplayGamuts;
      if (!strcasecmp(v41, "sRGB"))
      {
LABEL_23:
        __getDeviceTraits___deviceDisplayGamut = *v43;
      }

      else
      {
        while (1)
        {
          v44 = v43[5];
          if (!v44)
          {
            break;
          }

          v43 += 3;
          if (!strcasecmp(v42, v44))
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  else
  {
    _CUILog(4, "CoreUI: CUICatalog: couldn't get 'kMGArtworkDisplayGamut' from MGCopyAnswer got '%@'", v35, v36, v37, v38, v39, v40, v19);
  }

  v45 = [v19 objectForKey:@"GraphicsFeatureSetClass"];
  if (!v45)
  {
    _CUILog(4, "CoreUI: CUICatalog: couldn't get 'kMGArtworkGraphicsFeatureSetClass' from MGCopyAnswer got '%@'", v46, v47, v48, v49, v50, v51, v19);
    goto LABEL_39;
  }

  v52 = v45;
  v53 = [v45 UTF8String];
  v54 = v53;
  if (!"GLES2,0")
  {
    goto LABEL_32;
  }

  v55 = &gThemeGraphicsFeatureSetClasses_Legacy;
  if (strcasecmp(v53, "GLES2,0"))
  {
    while (1)
    {
      v56 = v55[5];
      if (!v56)
      {
        break;
      }

      v55 += 3;
      if (!strcasecmp(v54, v56))
      {
        goto LABEL_36;
      }
    }

LABEL_32:
    if (!"GLES2,0")
    {
LABEL_37:
      if ([v52 length])
      {
        _CUILog(4, "CoreUI: CUICatalog: Failed to parse value of 'kMGArtworkGraphicsFeatureSetClass' from MGCopyAnswer: '%@'", v58, v59, v60, v61, v62, v63, v52);
      }

      goto LABEL_39;
    }

    v55 = &gThemeGraphicsFeatureSetClasses;
    if (strcasecmp(v54, "GLES2,0"))
    {
      do
      {
        v57 = v55[5];
        if (!v57)
        {
          goto LABEL_37;
        }

        v55 += 3;
      }

      while (strcasecmp(v54, v57));
    }
  }

LABEL_36:
  __getDeviceTraits___deviceGraphicsClass = *v55;
  [v52 length];
LABEL_39:
  v64 = [v19 objectForKey:@"GraphicsFeatureSetFallbacks"];
  if (v64 && (v71 = v64, [v64 length] >= 2))
  {
    v98 = v19;
    v99 = v71;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v72 = [v71 componentsSeparatedByString:@":"];
    v73 = [v72 countByEnumeratingWithState:&v104 objects:v109 count:16];
    if (!v73)
    {
      goto LABEL_55;
    }

    v74 = v73;
    v75 = 0;
    v76 = *v105;
    do
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v105 != v76)
        {
          objc_enumerationMutation(v72);
        }

        v78 = [*(*(&v104 + 1) + 8 * i) UTF8String];
        if ("GLES2,0")
        {
          v79 = v78;
          v80 = &gThemeGraphicsFeatureSetClasses_Legacy;
          if (!strcasecmp(v78, "GLES2,0"))
          {
LABEL_50:
            v82 = *v80;
            [v9 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *v80)}];
            v75 |= v82 > 0;
          }

          else
          {
            while (1)
            {
              v81 = v80[5];
              if (!v81)
              {
                break;
              }

              v80 += 3;
              if (!strcasecmp(v79, v81))
              {
                goto LABEL_50;
              }
            }
          }
        }
      }

      v74 = [v72 countByEnumeratingWithState:&v104 objects:v109 count:16];
    }

    while (v74);
    if ((v75 & 1) == 0 || ![v9 count])
    {
LABEL_55:
      [v9 removeAllObjects];
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v83 = [v99 componentsSeparatedByString:@":"];
      v84 = [v83 countByEnumeratingWithState:&v100 objects:v108 count:16];
      if (v84)
      {
        v85 = v84;
        v86 = *v101;
        do
        {
          for (j = 0; j != v85; j = j + 1)
          {
            if (*v101 != v86)
            {
              objc_enumerationMutation(v83);
            }

            v88 = [*(*(&v100 + 1) + 8 * j) UTF8String];
            if ("GLES2,0")
            {
              v89 = v88;
              v90 = &gThemeGraphicsFeatureSetClasses;
              if (!strcasecmp(v88, "GLES2,0"))
              {
LABEL_64:
                [v9 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *v90)}];
              }

              else
              {
                while (1)
                {
                  v91 = v90[5];
                  if (!v91)
                  {
                    break;
                  }

                  v90 += 3;
                  if (!strcasecmp(v89, v91))
                  {
                    goto LABEL_64;
                  }
                }
              }
            }
          }

          v85 = [v83 countByEnumeratingWithState:&v100 objects:v108 count:16];
        }

        while (v85);
      }
    }

    v18 = &_MergedGlobals;
    v19 = v98;
    if (![v9 count])
    {
      _CUILog(4, "CoreUI: CUICatalog: Failed to parse value of 'kMGArtworkGraphicsFeatureSetFallbacks' from MGCopyAnswer: '%@'", v92, v93, v94, v95, v96, v97, v99);
    }
  }

  else
  {
    _CUILog(3, "CoreUI: CUICatalog: couldn't get 'kMGArtworkGraphicsFeatureSetFallbacks' from MGCopyAnswer got '%@'", v65, v66, v67, v68, v69, v70, v19);
  }

  if ([v9 count])
  {
    *(v18 + 22) = v9;
  }
}

id __RunTimeThemeRefForFileURL_block_invoke(void *a1, void *a2)
{
  v4 = [a2 objectForKey:a1[4]];
  if (v4)
  {
    result = [v4 unsignedIntegerValue];
    *(*(a1[6] + 8) + 24) = result;
  }

  else
  {
    v6 = [[CUIStructuredThemeStore alloc] initWithURL:a1[5]];
    if (v6)
    {
      v7 = v6;
      *(*(a1[6] + 8) + 24) = _RegisterThemeProvider(v6);

      v8 = [NSNumber numberWithUnsignedInteger:*(*(a1[6] + 8) + 24)];
      v9 = a1[4];

      return [a2 setObject:v8 forKey:v9];
    }

    else
    {
      result = [[NSString alloc] initWithFormat:@"RunTimeThemeRefForFileURL() failed to initialize CUIStructuredThemeStore at path: %@", a1[5]];
      *(*(a1[7] + 8) + 40) = result;
    }
  }

  return result;
}

uint64_t __resolvedDesignSystemForInputSystem(uint64_t result)
{
  if (!result)
  {
    v1 = CUICurrentPlatform();
    if (v1 > 5)
    {
      return 1;
    }

    else
    {
      return qword_18E021D50[v1];
    }
  }

  return result;
}

__n128 OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v9 + 24) = v11;
  result = a9;
  *(v9 + 8) = a9;
  *v9 = v10;
  return result;
}

float64_t OUTLINED_FUNCTION_11_0(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a3.f64[1] = a4;
  a1.f64[1] = a2;
  *&a1.f64[0] = vrndxq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(a1), a3)).u64[0];
  return a1.f64[0];
}

void *_findPage(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a1)
    {
      v10 = 0;
      while (1)
      {
        v11 = *(a1 + 32 + v10);
        if (v11)
        {
          if (*v11 == a2)
          {
            break;
          }
        }

        v10 += 8;
        if (v10 == 256)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v11 = 0;
    }

    v12 = 0;
    v13 = a1 + 32;
    while (1)
    {
      if (v11)
      {
        return v11;
      }

      v14 = *(a1 + 288);
      v11 = *(v13 + 8 * v14);
      if (!v11)
      {
        v11 = _NewPage(a1, a2);
        if (!v11)
        {
          return v11;
        }

        if (_ReadPage(a1, v11, v19, v20, v21, v22, v23, v24))
        {
          return 0;
        }

        v14 = *(a1 + 288);
        *(v13 + 8 * v14) = v11;
        goto LABEL_26;
      }

      v15 = *(v11 + 2);
      if ((v15 & 0xC) == 4)
      {
        break;
      }

      if ((v15 & 4) != 0)
      {
        v11 = 0;
LABEL_26:
        v25 = v12;
        goto LABEL_27;
      }

      v25 = 0;
      *(v11 + 2) = v15 | 4;
      LODWORD(v14) = *(a1 + 288);
      v11 = 0;
LABEL_27:
      v26 = v14 + 1;
      v27 = -v26 < 0;
      v28 = -v26 & 0x1F;
      v29 = v26 & 0x1F;
      if (!v27)
      {
        v29 = -v28;
      }

      *(a1 + 288) = v29;
      v12 = v25 + 1;
      if (!v11 && v25 >= 32)
      {
        v30 = __error();
        _BOMExceptionHandlerCall("btree cache is deadlocked", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2356, *v30);
        return 0;
      }
    }

    if ((v15 & 2) != 0)
    {
      _WritePage(a1, *(v13 + 8 * v14));
    }

    v16 = 0;
    v17 = v11[3];
    v11[4] = 0;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    if ((*(a1 + 356) & 0x40) == 0)
    {
      v18 = *(a1 + 308);
      if (v18 <= *(a1 + 312))
      {
        v18 = *(a1 + 312);
      }

      bzero(v17, 8 * v18);
      v16 = v17;
    }

    *v11 = a2;
    v11[1] = -1;
    v11[3] = v16;
    v11[4] = 0;
    if (_ReadPage(a1, v11, a3, a4, a5, a6, a7, a8))
    {
      return 0;
    }

    v14 = *(a1 + 288);
    *(v13 + 8 * v14) = v11;
    goto LABEL_26;
  }

  return 0;
}

void sub_18DF5503C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF5560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFDataRef __compress_data_stream(const __CFData *a1, compression_stream_operation a2)
{
  Length = CFDataGetLength(a1);
  v5 = Length;
  if (a2 == COMPRESSION_STREAM_DECODE && !(Length >> 14))
  {
    v6 = 2 * Length;
    v7 = malloc_type_malloc(2 * Length, 0xD53F1B9BuLL);
    __CFSetLastAllocationEventName();
    BytePtr = CFDataGetBytePtr(a1);
    v9 = compression_decode_buffer(v7, 2 * v5, BytePtr, v5, 0, COMPRESSION_LZFSE);
    if (v9 && v9 != v6)
    {

      return CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v7, v9, kCFAllocatorMalloc);
    }

    free(v7);
  }

  memset(&v19, 0, sizeof(v19));
  v11 = compression_stream_init(&v19, a2, COMPRESSION_LZFSE);
  result = 0;
  if (v11 == COMPRESSION_STATUS_OK)
  {
    v19.src_size = v5;
    v12 = CFDataGetBytePtr(a1);
    v13 = a2 == COMPRESSION_STREAM_DECODE;
    v14 = a2 != COMPRESSION_STREAM_DECODE;
    v19.src_ptr = v12;
    if (v13)
    {
      src_size = v19.src_size;
    }

    else
    {
      src_size = v19.src_size >> 2;
    }

    v16 = malloc_type_malloc(src_size, 0x1A01134FuLL);
    __CFSetLastAllocationEventName();
    v17 = 0;
    while (1)
    {
      if (v17 >= src_size)
      {
        src_size += src_size >> 1;
        v16 = reallocf(v16, src_size);
        __CFSetLastAllocationEventName();
      }

      v19.dst_ptr = &v17[v16];
      v19.dst_size = src_size - v17;
      v18 = compression_stream_process(&v19, v14);
      if (v18 == COMPRESSION_STATUS_ERROR)
      {
        break;
      }

      v17 = (v19.dst_ptr - v16);
      if (v18 == COMPRESSION_STATUS_END)
      {
        compression_stream_destroy(&v19);
        return CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v16, v17, kCFAllocatorMalloc);
      }
    }

    free(v16);
    compression_stream_destroy(&v19);
    return 0;
  }

  return result;
}

uint64_t _revalidateIterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 57))
  {
    PagesForKey = _findPagesForKey(*a1, 0, *(a1 + 24), *(a1 + 32), a5, a6, a7, a8);
    *(a1 + 8) = PagesForKey;
    if (!PagesForKey)
    {
      *(a1 + 57) |= 1u;
      goto LABEL_12;
    }

    IndexForKey = _findIndexForKey(*a1, PagesForKey, *(a1 + 24), *(a1 + 32), (a1 + 56), v12, v13, v14);
    Page = *(a1 + 8);
    *(a1 + 16) = *Page;
    *(a1 + 20) = IndexForKey;
    *(a1 + 57) &= ~1u;
    goto LABEL_9;
  }

  Page = *(a1 + 8);
  if (!Page)
  {
    v10 = *(a1 + 16);
LABEL_8:
    Page = _findPage(*a1, v10, a3, a4, a5, a6, a7, a8);
    *(a1 + 8) = Page;
    if (!Page)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v10 = *(a1 + 16);
  if (*Page != v10)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (*(a1 + 20) < *(Page + 8))
  {
    return 1;
  }

LABEL_12:
  result = 0;
  *(a1 + 57) |= 1u;
  return result;
}

uint64_t _CUIColorSpaceGetGrayGamma2_2()
{
  if (_CUIColorSpaceGetGrayGamma2_2___once != -1)
  {
    _CUIColorSpaceGetGrayGamma2_2_cold_1();
  }

  return _CUIColorSpaceGetGrayGamma2_2_sGenericGrayColorSpace;
}

CGContextRef CUICGBitmapContextCreate(size_t a1, size_t a2, size_t a3, size_t a4, CGColorSpaceRef space, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v11 = a6;
  AlignedBytesPerRow = a4;
  if (!a4)
  {
    if ((a6 & 0x1F) - 1 >= 6)
    {
      if ((a6 & 0x1F) == 7)
      {
        goto LABEL_6;
      }

      if ((a6 & 0x1F) != 0)
      {
        CUICGBitmapContextCreate_cold_1(0, a2, a3, 0, space, a6, a7, a8);
      }
    }

    CGColorSpaceGetNumberOfComponents(space);
LABEL_6:
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  }

  releaseInfo = ((vm_page_size + AlignedBytesPerRow * a2 - 1) & -vm_page_size);
  v16 = mmap(0, releaseInfo, 3, 4098, 1728053248, 0);
  if (v16 == -1)
  {
    v18 = __error();
    v19 = strerror(*v18);
    _CUILog(4, "CoreUI: CUICGBitmapContextCreate() mmap failed error:'%s'", v20, v21, v22, v23, v24, v25, v19);
  }

  else
  {
    v17 = v16;
    result = CGBitmapContextCreateWithData(v16, a1, a2, a3, AlignedBytesPerRow, space, v11, __freeBitmapContextData, releaseInfo);
    if (result)
    {
      return result;
    }

    munmap(v17, releaseInfo);
  }

  return 0;
}

id OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return [v35 countByEnumeratingWithState:&a35 objects:&STACK[0x2E0] count:16];
}

id CUICreatePathFromSVGNode(void *a1, __int128 *a2)
{
  v2 = a1;
  if (a1)
  {
      ;
    }

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v18 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3052000000;
    v16[3] = __Block_byref_object_copy__1;
    v16[4] = __Block_byref_object_dispose__1;
    v4 = a2[1];
    v13 = *a2;
    v5 = a2[2];
    v14 = v4;
    v15 = v5;
    v16[5] = [NSValue valueWithCGAffineTransform:&v13];
    *&v13 = 0;
    *(&v13 + 1) = &v13;
    *&v14 = 0x3052000000;
    *(&v14 + 1) = __Block_byref_object_copy__1;
    *&v15 = __Block_byref_object_dispose__1;
    *(&v15 + 1) = +[NSMutableArray array];
    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = __Block_byref_object_copy__1;
    v11 = __Block_byref_object_dispose__1;
    v12 = +[NSMutableArray array];
    CGSVGNodeEnumerate();
    v2 = [CUIVectorGlyphPath createConcatenatingPaths:v8[5]];
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
  }

  return v2;
}

void sub_18DF56F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void __CUICreatePathFromSVGNode_block_invoke(void *a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    if (a1[8] == a2)
    {
      *(*(a1[6] + 8) + 24) = 0;
      *a4 = 1;
    }

    *(*(a1[4] + 8) + 40) = [*(*(a1[5] + 8) + 40) lastObject];
    v6 = *(*(a1[5] + 8) + 40);

    [v6 removeLastObject];
  }

  else
  {
    v7 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v7;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    if (CGSVGNodeGetAttributeMap() && CGSVGAttributeMapGetAttribute())
    {
      CGSVGAttributeGetTransform();
    }

    memset(&v14, 0, sizeof(v14));
    v8 = a1[4];
    v9 = *(*(v8 + 8) + 40);
    if (v9)
    {
      [v9 cgAffineTransformValue];
      v8 = a1[4];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v12 = v15;
    CGAffineTransformConcat(&v14, &v12, &t2);
    [*(*(a1[5] + 8) + 40) addObject:*(*(v8 + 8) + 40)];
    t2 = v14;
    *(*(a1[4] + 8) + 40) = [NSValue valueWithCGAffineTransform:&t2];
    if (a1[8] == a2)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    if (*(*(a1[6] + 8) + 24) == 1)
    {
      t2 = v14;
      v10 = CUICreatePathFromSVGShapeNode(a2, &t2);
      if (v10)
      {
        v11 = v10;
        [*(*(a1[7] + 8) + 40) addObject:v10];
      }
    }
  }
}

uint64_t _CUIColorGetSRGBBlack()
{
  if (_CUIColorGetSRGBBlack_onceToken != -1)
  {
    _CUIColorGetSRGBBlack_cold_1();
  }

  return _CUIColorGetSRGBBlack_sBlackColor;
}

id CUICreatePathFromSVGShapeNode(uint64_t a1, const CGAffineTransform *a2)
{
  if (CGSVGNodeGetType() != 2)
  {
    return 0;
  }

  Primitive = CGSVGShapeNodeGetPrimitive();
  if (Primitive != 42)
  {
    v6 = Primitive;
    if ((Primitive & 0xFFFFFFFE) != 0x2C)
    {
      return 0;
    }

    FloatCount = CGSVGShapeNodeGetFloatCount();
    if (!FloatCount)
    {
      return 0;
    }

    v8 = FloatCount;
    v9 = malloc_type_malloc(8 * FloatCount, 0x100004000313F17uLL);
    CGSVGShapeNodeGetFloats();
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, a2, *v9, v9[1]);
    if (v8 >= 3)
    {
      v10 = v9 + 3;
      v11 = 3;
      do
      {
        CGPathAddLineToPoint(Mutable, a2, *(v10 - 1), *v10);
        v12 = v11 + 1;
        v11 += 2;
        v10 += 2;
      }

      while (v12 < v8);
    }

    if (v6 == 44)
    {
      CGPathCloseSubpath(Mutable);
    }

    free(v9);
    if (!Mutable)
    {
      return 0;
    }

LABEL_14:
    v13 = CUICreateClipStrokeKeyframeDataFromNode(0.0);
    v14 = [CUIVectorGlyphPath createWithPath:Mutable clipStrokeKeyframes:v13];
    CGPathRelease(Mutable);

    return v14;
  }

  if (CGSVGShapeNodeGetPath())
  {
    CGPath = CGSVGPathCreateCGPath();
    Mutable = MEMORY[0x193AC5C50](CGPath, a2);
    CGPathRelease(CGPath);
    if (Mutable)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t CUICreateClipStrokeKeyframeDataFromNode(float a1)
{
  CGSVGNodeGetAttributeMap();
  if (CUIVectorGlyphClipStrokeKeyframesAtom_onceToken != -1)
  {
    CUICreateClipStrokeKeyframeDataFromNode_cold_1();
  }

  result = CGSVGAttributeMapGetAttribute();
  if (result)
  {
    v3 = CGSVGAttributeCopyString();
    *&v4 = a1;
    v5 = [NSData encodedClipStrokeKeyframesFromString:v3 subpathOffset:v4];

    return v5;
  }

  return result;
}

uint64_t __CUIVectorGlyphClipStrokeKeyframesAtom_block_invoke()
{
  result = CGSVGAtomFromString();
  CUIVectorGlyphClipStrokeKeyframesAtom_atom = result;
  return result;
}

void sub_18DF57750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

__IOSurface *__csiCompressImageProviderCopyIOSurfaceWithOptions(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = 1111970369;
  v6 = [objc_loadWeak((a1 + 48)) key];
  CUIRenditionKeyValueForAttribute(v6, 17);
  CUIRenditionKeyValueForAttribute(v6, 1);
  CUIRenditionKeyValueForAttribute(v6, 2);
  kdebug_trace();
  v14 = [*(a1 + 24) bytes];
  v48 = 0;
  valuePtr = 1111970369;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(v14 + 3);
  v18 = *(v14 + 4);
  if (a3)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"kCGImageSurfaceFormatRequest", &value))
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v19 = *(v14 + 6);
  v48 = v19;
  v20 = *(*(a1 + 32) + 8);
  if (v20 == 12 || v20 == 7)
  {
    CUIUpdatePixelFormatForATECompressedData(&v48, v7, v8, v9, v10, v11, v12, v13);
    v20 = *(*(a1 + 32) + 8);
    v19 = v48;
  }

  if (v20 == 5 && (v19 == 1195454774 || v19 == 1380401751))
  {
    v23 = 0;
    v48 = 1095911234;
    v19 = 1095911234;
    if (valuePtr == 1111970369)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

  v23 = valuePtr == 1111970369;
  if (v19 == 1095911234 && valuePtr == 1111970369)
  {
    goto LABEL_17;
  }

  if (v19 != 1380401751)
  {
    if (v19 == 1195456544 && valuePtr == 1279340600)
    {
      goto LABEL_30;
    }

    if (v19 == 1195454774)
    {
      v27 = *(v14 + 7);
      if ((v27 & 0xF) != 6 || valuePtr != 843264104)
      {
        v28 = (v27 & 0xF) == 3 && valuePtr == 843264310;
        v29 = v28;
        if (a3 && !v29)
        {
          goto LABEL_73;
        }
      }

      v5 = 843264104;
      v30 = v27 & 0xF;
      if (v30 == 2)
      {
        v5 = 843264310;
      }

      else if (v30 != 6)
      {
        -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInFunction:file:lineNumber:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)"), @"CUIThemeRendition.m", 1573, @"CoreUI: %s No supported surface type for this gray colorspace: %d in rendition '%@'", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)", *(v14 + 7) & 0xF, [objc_loadWeak((a1 + 48)) name]);
        goto LABEL_73;
      }

      v24 = 5;
      goto LABEL_62;
    }

    goto LABEL_44;
  }

  v26 = *(v14 + 7);
  if ((v26 & 0xF) == 4 && valuePtr == 1380411457)
  {
    goto LABEL_50;
  }

  if ((v26 & 0xF) != 3)
  {
    v19 = 1380401751;
LABEL_44:
    if (a3)
    {
      goto LABEL_73;
    }

    if (v19 > 1195456543)
    {
      if (v19 != 1195456544)
      {
        if (v19 != 1380401717)
        {
          if (v19 == 1380401751)
          {
            v26 = *(v14 + 7);
            goto LABEL_50;
          }

          goto LABEL_71;
        }

        v44 = 6;
LABEL_72:
        -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInFunction:file:lineNumber:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)"), @"CUIThemeRendition.m", 1584, @"CoreUI: %s No supported surface type for this block pixel format: %d in rendition '%@'", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)", v44, [objc_loadWeak((a1 + 48)) name]);
        goto LABEL_73;
      }

LABEL_30:
      v24 = 2;
      v5 = 1279340600;
      goto LABEL_62;
    }

    if (v19 != 1095911234)
    {
LABEL_71:
      -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInFunction:file:lineNumber:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)"), @"CUIThemeRendition.m", 1543, @"CoreUI: %s unknown pixel format %d rendition '%@'", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)", *(v14 + 6), [objc_loadWeak((a1 + 48)) name]);
      v44 = 0xFFFFFFFFLL;
      goto LABEL_72;
    }

    if (!v23)
    {
      v44 = 1;
      goto LABEL_72;
    }

LABEL_17:
    v24 = 0;
    goto LABEL_62;
  }

  v19 = 1380401751;
  if (valuePtr != 1815491698)
  {
    goto LABEL_44;
  }

LABEL_50:
  if ((v26 & 0xF) != 3)
  {
    if ((v26 & 0xF) == 4)
    {
      v24 = 4;
      v5 = 1380411457;
      goto LABEL_62;
    }

    -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInFunction:file:lineNumber:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)"), @"CUIThemeRendition.m", 1560, @"CoreUI: %s No supported surface type for this color space: %d in rendition '%@'", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)", *(v14 + 7) & 0xF, [objc_loadWeak((a1 + 48)) name]);
LABEL_73:
    v32 = 0;
    goto LABEL_74;
  }

  v5 = 1815491698;
  v24 = 4;
LABEL_62:
  v31 = __bppFromBlockPixelFormat(v24);
  v32 = 0;
  if (__PAIR64__(v18, v17) == v16)
  {
    v33 = v31;
    v46 = v15;
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfaceWidth, v17);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfaceHeight, v18);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfaceBytesPerElement, v33);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfaceBytesPerRow, AlignedBytesPerRow);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfacePixelFormat, v5);
    v32 = IOSurfaceCreate(Mutable);
    IOSurfaceSetValue(v32, kIOSurfaceName, @"CoreUI image IOSurface");
    CFRelease(Mutable);
    if (!IOSurfaceLock(v32, 0, 0))
    {
      v36 = [_CSIRenditionBlockData alloc];
      BaseAddress = IOSurfaceGetBaseAddress(v32);
      v38 = [(_CSIRenditionBlockData *)v36 initWithBytes:v17 pixelWidth:v18 pixelHeight:*(a1 + 112) sourceRowbytes:v24 pixelFormat:?];
      v42 = v38;
      if (v38)
      {
        strlcpy(v38 + 48, v14 + 40, 0x80uLL);
        v42[2] = *(v14 + 6);
      }

      v43 = [(_CSIRenditionBlockData *)v42 expandCSIBitmapData:v46 fromSlice:v16 makeReadOnly:0, v39, v40, v41];

      IOSurfaceUnlock(v32, 0, 0);
      if (!v43)
      {
        CFRelease(v32);
        goto LABEL_73;
      }
    }
  }

LABEL_74:
  kdebug_trace();
  return v32;
}

unsigned int *BOMStorageNewWithOptionsAndSys(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v5 = (*(v3 + 2))(*(v3 + 1), a1, 1538, 420);
  if (v5 == -1)
  {
    v8 = __error();
    strerror(*v8);
    _CUILog(4, "%s can't open: '%s' %s", v9, v10, v11, v12, v13, v14, "BOMStorage BOMStorageNewWithOptionsAndSys(const char *, CFDictionaryRef, BomSys *)");
  }

  else
  {
    v6 = v5;
    bzero(v15, 0x470uLL);
    v16 = v6;
    v17 = v3;
    if (!_WriteRootPage(v15))
    {
      (*(v3 + 3))(*(v3 + 1), v6);
      return BOMStorageOpenWithSys(a1, 1, v3);
    }
  }

  return 0;
}

void _CUILog_cold_4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_18DF47000, a2, OS_LOG_TYPE_FAULT, "%{public}@", &v2, 0xCu);
}

uint64_t (*BOMStreamWriteUInt32(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  v8 = bswap32(a2);
  if (*(result + 1) == 2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  if (*(result + 10))
  {
    v10 = *(result + 7);
    if ((v10 + 1) <= *(result + 8))
    {
      *v10 = v9;
      *(result + 7) += 4;
      *(result + 80) |= 2u;
      return result;
    }

    v11 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt32");
    v12 = *__error();
    v13 = v11;
    v14 = 1;
    v15 = 379;
  }

  else
  {
    v16 = BOMExceptionHandlerMessage("%s write called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt32");
    v12 = *__error();
    v13 = v16;
    v14 = 0;
    v15 = 377;
  }

  return _BOMExceptionHandlerCall(v13, v14, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v15, v12);
}

uint64_t BOMStreamFlush(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CUILog(4, "%s: bad stream!", a3, a4, a5, a6, a7, a8, "BOMStreamFlush");
    return 1;
  }

  if (!a1[10])
  {
    goto LABEL_13;
  }

  v9 = *a1;
  if (*a1 == 2)
  {
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    if ((*(*(a1 + 9) + 56))(*(*(a1 + 9) + 8), a1[5], *(a1 + 3), 0) == -1)
    {
      v18 = __error();
      strerror(*v18);
      _CUILog(4, "%s: lseek: %s", v19, v20, v21, v22, v23, v24, "BOMStreamFlush");
    }

    else
    {
      if ((*(*(a1 + 9) + 48))(*(*(a1 + 9) + 8), a1[5], *(a1 + 6), *(a1 + 4)) == *(a1 + 4))
      {
LABEL_13:
        result = 0;
        goto LABEL_14;
      }

      v11 = __error();
      strerror(*v11);
      _CUILog(4, "%s: write: %s", v12, v13, v14, v15, v16, v17, "BOMStreamFlush");
    }

    return 1;
  }

  if (v9)
  {
    _CUILog(4, "%s: unknown stream type: %d", a3, a4, a5, a6, a7, a8, "BOMStreamFlush");
    goto LABEL_13;
  }

  result = BOMStorageCopyToBlock(*(a1 + 1), a1[4], *(a1 + 6), *(a1 + 4), a5, a6, a7, a8);
LABEL_14:
  *(a1 + 80) &= ~2u;
  return result;
}

uint64_t _ExpandMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1048);
  if (v3 < a2)
  {
    if (v3 >= 0x100000)
    {
      LODWORD(v4) = v3 + 0x100000;
    }

    else
    {
      LODWORD(v4) = 2 * v3;
    }

    if (v4 <= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = v4;
    }

    v5 = vm_page_size - v4 % vm_page_size;
    if (!(v4 % vm_page_size))
    {
      v5 = 0;
    }

    v6 = (v5 + v4);
    v7 = (*(*(a1 + 1120) + 96))(*(*(a1 + 1120) + 8), 0, v6, 3, 4098, 0xFFFFFFFFLL, 0);
    if (v7 == -1)
    {
      v12 = *__error();
      v13 = "mmap failed";
      v11 = 1;
      v14 = 1547;
    }

    else
    {
      v8 = v7;
      if (vm_copy(mach_task_self_, *(a1 + 1040), *(a1 + 1048), v7))
      {
        v9 = __error();
        _BOMExceptionHandlerCall("vm_copy failed", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1551, *v9);
      }

      if ((*(*(a1 + 1120) + 104))(*(*(a1 + 1120) + 8), *(a1 + 1040), *(a1 + 1048)) != -1)
      {
        *(a1 + 1040) = v8;
        *(a1 + 1048) = v6;
        if (!v8)
        {
          goto LABEL_17;
        }

        return 0;
      }

      v12 = *__error();
      v13 = "munmap failed";
      v11 = 1;
      v14 = 1554;
    }

    _BOMExceptionHandlerCall(v13, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v14, v12);
    return v11;
  }

  if (!*(a1 + 1040))
  {
LABEL_17:
    v10 = __error();
    _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1567, *v10);
  }

  return 0;
}

uint64_t (*BOMStreamWriteBuffer(uint64_t a1, const void *a2, size_t __len, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  if (*(a1 + 40))
  {
    v10 = *(a1 + 56);
    if (v10 + __len <= *(a1 + 64))
    {
      result = memmove(v10, a2, __len);
      *(a1 + 56) += __len;
      *(a1 + 80) |= 2u;
      return result;
    }

    v11 = BOMExceptionHandlerMessage("%s buffer overflow", a2, __len, a4, a5, a6, a7, a8, "BOMStreamWriteBuffer");
    v12 = *__error();
    v13 = v11;
    v14 = 1;
    v15 = 424;
  }

  else
  {
    v16 = BOMExceptionHandlerMessage("%s write called on read-only buffer", a2, __len, a4, a5, a6, a7, a8, "BOMStreamWriteBuffer");
    v12 = *__error();
    v13 = v16;
    v14 = 0;
    v15 = 422;
  }

  return _BOMExceptionHandlerCall(v13, v14, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v15, v12);
}

uint64_t (*BOMStreamWriteUInt8(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  if (*(result + 10))
  {
    v8 = *(result + 7);
    if ((v8 + 1) <= *(result + 8))
    {
      *v8 = a2;
      ++*(result + 7);
      *(result + 80) |= 2u;
      return result;
    }

    v9 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt8");
    v10 = *__error();
    v11 = v9;
    v12 = 1;
    v13 = 411;
  }

  else
  {
    v14 = BOMExceptionHandlerMessage("%s write called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt8");
    v10 = *__error();
    v11 = v14;
    v12 = 0;
    v13 = 409;
  }

  return _BOMExceptionHandlerCall(v11, v12, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v13, v10);
}

void _AddToWriteCache(uint64_t a1, unsigned int a2, int a3)
{
  if (!a2 || !a3)
  {
    return;
  }

  v5 = (a1 + 1104);
  v6 = *(a1 + 1104);
  if (!v6)
  {
    *(a1 + 1104) = _newFreeListEntry(a2, a3);
    v12 = 1;
LABEL_23:
    *(a1 + 1112) = v12;
LABEL_24:
    if (*(a1 + 1112) < 0x10u)
    {
      v15 = *v5;
      if (*v5)
      {
        v16 = 0;
        do
        {
          v17 = *(v15 + 3);
          if (v17 < 0xFFFF)
          {
            v18 = *v15;
            v16 = v15;
          }

          else
          {
            v18 = *v15;
            if (v16)
            {
              v19 = v16;
            }

            else
            {
              v19 = v5;
            }

            *v19 = v18;
            _WriteAddress(a1, *(v15 + 2), v17);
            free(v15);
            --*(a1 + 1112);
          }

          v15 = v18;
        }

        while (v18);
      }
    }

    else
    {

      _FlushWriteCache(a1);
    }

    return;
  }

  v7 = v6[2];
  if (v7 <= a2)
  {
    while (1)
    {
      v8 = v6;
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v9 = v6[2];
      if (v9 >= a2)
      {
        v11 = v8[3];
        if (v11 + v8[2] != a2)
        {
          goto LABEL_6;
        }

        v8[3] = v11 + a3;
        if (a3 + a2 == v6[2])
        {
          v8[3] = v6[3] + v11 + a3;
          *v8 = *v6;
          free(v6);
          v12 = *(a1 + 1112) - 1;
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    v14 = v8[3];
    if (v14 + v8[2] == a2)
    {
      v8[3] = v14 + a3;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = v6[2];
LABEL_6:
    if (a3 + a2 == v9)
    {
      v10 = v6[3] + a3;
      v6[2] = a2;
      v6[3] = v10;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = v6;
      if (v7 <= a2)
      {
LABEL_21:
        *v8 = v13;
      }

      else
      {
        *v5 = v13;
      }

      v12 = *(a1 + 1112) + 1;
      goto LABEL_23;
    }
  }

  v20 = *__error();

  _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 2136, v20);
}

uint64_t _AdjustFileSize(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    if ((a3 + a2) <= *(a1 + 1032))
    {
      return 0;
    }

    else
    {
      result = 0;
      *(a1 + 1032) = a3 + a2;
    }
  }

  else
  {
    v5 = (*(*(a1 + 1120) + 56))(*(*(a1 + 1120) + 8), *(a1 + 1028), 0, 2);
    if (v5 == -1)
    {
      v7 = __error();
      strerror(*v7);
      _CUILog(4, "%s: lseek: %s", v8, v9, v10, v11, v12, v13, "int _AdjustFileSize(BOMStorage, unsigned int, unsigned int)");
      return 1;
    }

    else
    {
      v6 = v5;
      result = 0;
      *(a1 + 1032) = v6;
    }
  }

  return result;
}

_DWORD *_newFreeListEntry(int a1, int a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
    v4[2] = a1;
    v4[3] = a2;
  }

  else
  {
    v6 = __error();
    strerror(*v6);
    _CUILog(4, "%s: malloc: %s", v7, v8, v9, v10, v11, v12, "FreeListEntry _newFreeListEntry(unsigned int, unsigned int)");
  }

  return v5;
}

uint64_t BOMStorageCopyToBlock(uint64_t a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || *(a1 + 1056) < a2 || (*(a1 + 1052) & 1) == 0)
  {
    return 1;
  }

  if (*(a1 + 1068) <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v13 = 0;
  }

  else
  {
    v13 = *(*(a1 + 1072) + 8 * a2 + 4);
  }

  return BOMStorageCopyToBlockRange(a1, a2, a3, a4, 0, v13, a7, a8);
}

uint64_t BOMStorageCopyToBlockRange(uint64_t a1, uint64_t a2, const void *a3, size_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (*(a1 + 1056) >= a2 && (*(a1 + 1052) & 1) != 0)
      {
        v15 = *(a1 + 1068);
        if (v15 <= a2)
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
          v15 = *(a1 + 1068);
          v16 = -1;
        }

        else
        {
          v16 = *(*(a1 + 1072) + 8 * a2);
        }

        if (v15 <= v10)
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
          LODWORD(v17) = 0;
        }

        else
        {
          LODWORD(v17) = *(*(a1 + 1072) + 8 * v10 + 4);
          v18 = bswap32(v17);
          if ((*(a1 + 1052) & 1) == 0)
          {
            LODWORD(v17) = v18;
          }
        }

        v19 = a6 + a5;
        v20 = v17;
        v21 = v17 - (a6 + a5);
        if (v17 < a6 + a5)
        {
          v22 = *__error();
          v23 = "BOMStorageCopyToBlockRange: length extends beyond block size";
          v24 = 842;
          goto LABEL_20;
        }

        if (v17 <= a5)
        {
          v17 = a5;
        }

        else
        {
          v17 = v17;
        }

        v25 = v17 + a4;
        if (((v17 + a4) | v17 | a4) >> 32)
        {
          v26 = BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", a2, a3, a4, a5, a6, a7, a8, "BOMStorageCopyToBlockRange");
          v22 = *__error();
          v23 = v26;
          v24 = 859;
          goto LABEL_20;
        }

        __len = v21;
        v27 = v25 - a6;
        if ((v25 - a6) >> 32 || HIDWORD(a6))
        {
          BOMStorageCopyToBlockRange_cold_5();
          return 1;
        }

        v58 = v16;
        if (v20 != v27 || v16 < *(a1 + 1036))
        {
          if (v16 && v20)
          {
            (*(*(a1 + 1088) + 40))();
            v27 = v25 - a6;
          }

          if (v25 == a6)
          {
            v16 = 0;
          }

          else
          {
            v28 = v27;
            v29 = (*(*(a1 + 1088) + 48))();
            v27 = v28;
            v16 = v29;
            if (!v29)
            {
              v16 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
            }
          }

          v30 = (*(a1 + 1072) + 8 * v10);
          *v30 = v16;
          v30[1] = v27;
        }

        result = 0;
        if (v16 && v25 != a6)
        {
          v56 = v27;
          v31 = v27 + v16;
          if (HIDWORD(v31))
          {
            BOMStorageCopyToBlockRange_cold_4();
            return 1;
          }

          if (_ExpandMapAddress(a1, v31))
          {
            return 1;
          }

          if (a5 && (v38 = *(a1 + 1040)) != 0)
          {
            v39 = v58;
            memmove((v38 + v16), (v38 + v58), a5);
            v40 = a5;
          }

          else
          {
            v40 = 0;
            v39 = v58;
          }

          v41 = v19 + v39;
          v42 = __len;
          if (HIDWORD(v41))
          {
            BOMStorageCopyToBlockRange_cold_3();
            return 1;
          }

          v43 = a5 + a4 + v16;
          if (((a5 + a4) | v43) >> 32)
          {
            v44 = BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v32, __len, v33, v34, v35, v36, v37, "BOMStorageCopyToBlockRange");
            v22 = *__error();
            v23 = v44;
            v24 = 922;
          }

          else
          {
            if (v20 <= a5 || v16 < v58 || v16 >= v20 + v58)
            {
              if (a4)
              {
                v47 = v40;
                memmove((*(a1 + 1040) + v16 + v40), a3, a4);
                v40 = v47 + a4;
              }

              if (v40 < v56)
              {
                v48 = v56 - v40;
                if (HIDWORD(v48))
                {
                  BOMStorageCopyToBlockRange_cold_2();
                  return 1;
                }

                v49 = v40;
                memmove((*(a1 + 1040) + v16 + v40), (*(a1 + 1040) + v41), v48);
                v40 = v49 + v48;
              }
            }

            else
            {
              if (HIDWORD(__len))
              {
                BOMStorageCopyToBlockRange_cold_1();
                return 1;
              }

              if (v20 != v19)
              {
                v45 = v40;
                memmove((*(a1 + 1040) + v43), (*(a1 + 1040) + v41), __len);
                v40 = v45;
                v42 = __len;
              }

              if (a4)
              {
                v46 = v40;
                memmove((*(a1 + 1040) + v16 + v40), a3, a4);
                v42 = __len;
                v40 = v46 + a4;
              }

              v40 += v42;
            }

            v50 = *(a1 + 1080);
            if (v50)
            {
              *(v50 + 4 * v10) |= 1u;
            }

            else
            {
              v51 = v40;
              v52 = BOMExceptionHandlerMessage("BOM blockShadowTable is null", v32, v42, v33, v34, v35, v36, v37, v55);
              v53 = __error();
              _BOMExceptionHandlerCall(v52, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 973, *v53);
              v40 = v51;
            }

            v54 = v56;
            if (v40 == v56)
            {
              if (*(a1 + 1028) == -1)
              {
                if (v16 + v56 > *(a1 + 1032))
                {
                  *(a1 + 1032) = v16 + v56;
                }
              }

              else
              {
                _AddToWriteCache(a1, v16, v56);
                v54 = v56;
              }

              result = _AdjustFileSize(a1, v16, v54);
              if (!result)
              {
                *(a1 + 1052) |= 0x10u;
                return result;
              }

              return 1;
            }

            v22 = *__error();
            v23 = "BOMStorageCopyToBlockRange: internal consistency error";
            v24 = 978;
          }

LABEL_20:
          _BOMExceptionHandlerCall(v23, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v24, v22);
          return 1;
        }
      }
    }
  }

  return result;
}

_DWORD *_dense_addFreeRange(_DWORD *result, int a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = *result;
    if (a3 < 0x10000)
    {
      v8 = *(v6 + 16);
      if (v8 <= a3)
      {
        v9 = a3 + 1;
        v10 = (8 * (a3 + 1));
        v11 = *v6;
        if (v8 <= a3)
        {
          v12 = malloc_type_realloc(v11, v10, 0x1F9D68D3uLL);
          *v6 = v12;
          bzero(&v12[8 * *(v6 + 16)], 8 * (v9 - v8));
        }

        else
        {
          *v6 = malloc_type_realloc(v11, v10, 0x2AEB1F5BuLL);
        }

        *(v6 + 16) = v9;
        v6 = *v5;
      }

      v13 = *(*v6 + 8 * a3);
      result = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v13;
      *(*v6 + 8 * a3) = result;
    }

    else
    {
      v7 = *(v6 + 8);
      result = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v7;
      *(v6 + 8) = result;
    }

    ++v5[2];
  }

  return result;
}

uint64_t BOMTreeCommit(uint64_t a1)
{
  if (!a1 || (*(a1 + 356) & 1) == 0)
  {
    return 0;
  }

  for (i = 32; i != 288; i += 8)
  {
    v5 = *(a1 + i);
    if (v5 && (*(v5 + 4) & 2) != 0)
    {
      _WritePage(a1, v5);
    }
  }

  _WritePage(a1, *(a1 + 24));
  v2 = 1;
  v6 = BOMStreamWithBlockID(*a1, *(a1 + 16), 0x1DuLL, 1);
  if (v6)
  {
    v13 = v6;
    BOMStreamWriteUInt32(v6, 1953654117, v7, v8, v9, v10, v11, v12);
    BOMStreamWriteUInt32(v13, 1, v14, v15, v16, v17, v18, v19);
    BOMStreamWriteUInt32(v13, **(a1 + 24), v20, v21, v22, v23, v24, v25);
    BOMStreamWriteUInt32(v13, *(a1 + 304), v26, v27, v28, v29, v30, v31);
    BOMStreamWriteUInt32(v13, *(a1 + 20), v32, v33, v34, v35, v36, v37);
    BOMStreamWriteUInt8(v13, (*(a1 + 356) >> 2) & 1, v38, v39, v40, v41, v42, v43);
    if ((*(a1 + 356) & 4) != 0)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(a1 + 348);
    }

    BOMStreamWriteUInt32(v13, v50, v44, v45, v46, v47, v48, v49);
    BOMStreamWriteUInt32(v13, 0, v51, v52, v53, v54, v55, v56);
    if (!BOMStreamFree(v13, v57, v58, v59, v60, v61, v62, v63))
    {
      v2 = 0;
      *(a1 + 356) &= ~1u;
    }
  }

  return v2;
}

uint64_t (*BOMStreamWriteUInt16(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  v8 = __rev16(a2);
  if (*(result + 1) == 2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  if (*(result + 10))
  {
    v10 = *(result + 7);
    if ((v10 + 1) <= *(result + 8))
    {
      *v10 = v9;
      *(result + 7) += 2;
      *(result + 80) |= 2u;
      return result;
    }

    v11 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt16");
    v12 = *__error();
    v13 = v11;
    v14 = 1;
    v15 = 398;
  }

  else
  {
    v16 = BOMExceptionHandlerMessage("%s write called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt16");
    v12 = *__error();
    v13 = v16;
    v14 = 0;
    v15 = 396;
  }

  return _BOMExceptionHandlerCall(v13, v14, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v15, v12);
}

uint64_t _WriteRootPage(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1120);
  }

  else
  {
    v2 = 0;
  }

  v3 = 1;
  v4 = BOMStreamWithFileAndSys(*(a1 + 1028), 0, 0x200uLL, 1, 0, v2);
  if (v4)
  {
    v11 = v4;
    BOMStreamWriteUInt32(v4, 1112493395, v5, v6, v7, v8, v9, v10);
    BOMStreamWriteUInt32(v11, 1953460837, v12, v13, v14, v15, v16, v17);
    BOMStreamWriteUInt32(v11, 1, v18, v19, v20, v21, v22, v23);
    BOMStreamWriteUInt32(v11, *(a1 + 1056), v24, v25, v26, v27, v28, v29);
    BOMStreamWriteUInt32(v11, *(a1 + 1060), v30, v31, v32, v33, v34, v35);
    BOMStreamWriteUInt32(v11, *(a1 + 1064), v36, v37, v38, v39, v40, v41);
    BOMStreamWriteUInt32(v11, *(a1 + 1096), v42, v43, v44, v45, v46, v47);
    BOMStreamWriteUInt32(v11, *(a1 + 1100), v48, v49, v50, v51, v52, v53);
    v3 = BOMStreamFree(v11, v54, v55, v56, v57, v58, v59, v60);
    if ((*(v2 + 64))(*(v2 + 8), *(a1 + 1028)))
    {
      v61 = __error();
      strerror(*v61);
      _CUILog(4, "%s fsync: '%s'", v62, v63, v64, v65, v66, v67, "int _WriteRootPage(BOMStorage)");
      return 1;
    }
  }

  return v3;
}

void _CreateMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = a2 % vm_page_size;
  if (v3)
  {
    v4 = vm_page_size - v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + a2;
  v6 = (*(*(a1 + 1120) + 96))(*(*(a1 + 1120) + 8), 0, v5, 3, 4098, 0xFFFFFFFFLL, 0);
  *(a1 + 1040) = v6;
  if (v6 == -1)
  {
    v7 = __error();
    strerror(*v7);
    _CUILog(4, "%s can't mmap memory of size '%d' error: '%s'", v8, v9, v10, v11, v12, v13, "int _CreateMapAddress(BOMStorage, unsigned int)");
    *(a1 + 1040) = 0;
  }

  *(a1 + 1048) = v5;
}

uint64_t BOMStorageNewNamedBlock(uint64_t a1, const char *a2)
{
  if ((*(a1 + 1052) & 1) == 0)
  {
    return 0;
  }

  if (_tocGet(a1, a2))
  {
    _CUILog(4, "%s: block named '%s' already exists", v4, v5, v6, v7, v8, v9, "BOMBlockID BOMStorageNewNamedBlock(BOMStorage, const char *)");
    return 0;
  }

  v10 = BOMStorageNewBlock(a1);
  v12 = strnlen(a2, 0xFFuLL);
  v19 = v12;
  if (v12 < 0xFF)
  {
    if (*(a1 + 1096))
    {
      v20 = *(a1 + 1100);
    }

    else
    {
      v20 = 4;
    }

    v21 = v12 + v20;
    v22 = v21 + 5;
    if (v21 == -5)
    {
      v23 = 0;
    }

    else
    {
      v23 = (*(*(a1 + 1088) + 48))();
      if (!v23)
      {
        v23 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
      }
    }

    _ExpandMapAddress(a1, v23 + v22);
    v24 = *(a1 + 1096);
    if (v24)
    {
      v25 = BOMStreamWithAddress(*(a1 + 1040) + v24, *(a1 + 1100), 0);
      if (!v25)
      {
        return v10;
      }

      v33 = v25;
      UInt32 = BOMStreamReadUInt32(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
      UInt32 = 0;
      v33 = 0;
    }

    v35 = BOMStreamWithAddress(*(a1 + 1040) + v23, v22, 1);
    if (v35)
    {
      v42 = v35;
      BOMStreamWriteUInt32(v35, (UInt32 + 1), v36, v37, v38, v39, v40, v41);
      if (v33)
      {
        for (i = v23; UInt32; --UInt32)
        {
          v50 = BOMStreamReadUInt32(v33, v43, v44, v45, v46, v47, v48, v49);
          UInt8 = BOMStreamReadUInt8(v33, v51, v52, v53, v54, v55, v56, v57);
          BOMStreamReadBuffer(v33, __dst, UInt8, v59, v60, v61, v62, v63);
          BOMStreamWriteUInt32(v42, v50, v64, v65, v66, v67, v68, v69);
          BOMStreamWriteUInt8(v42, UInt8, v70, v71, v72, v73, v74, v75);
          BOMStreamWriteBuffer(v42, __dst, UInt8, v76, v77, v78, v79, v80);
        }

        BOMStreamFree(v33, v43, v44, v45, v46, v47, v48, v49);
        if (*(a1 + 1096))
        {
          v44 = *(a1 + 1100);
          if (v44)
          {
            (*(*(a1 + 1088) + 40))();
          }
        }

        v23 = i;
      }

      BOMStreamWriteUInt32(v42, v10, v44, v45, v46, v47, v48, v49);
      BOMStreamWriteUInt8(v42, v19, v81, v82, v83, v84, v85, v86);
      BOMStreamWriteBuffer(v42, a2, v19, v87, v88, v89, v90, v91);
      BOMStreamFree(v42, v92, v93, v94, v95, v96, v97, v98);
      *(a1 + 1096) = v23;
      *(a1 + 1100) = v22;
      _AdjustFileSize(a1, v23, v22);
      if (*(a1 + 1028) != -1)
      {
        _AddToWriteCache(a1, v23, v22);
      }

      *(a1 + 1052) |= 0x10u;
    }
  }

  else
  {
    _CUILog(4, "%s: name length '%s' is > %d", v13, v14, v15, v16, v17, v18, "void _tocSet(BOMStorage, BOMBlockID, const char *)");
  }

  return v10;
}

uint64_t BOMStorageNewBlock(uint64_t a1)
{
  if (!a1 || (*(a1 + 1052) & 1) == 0)
  {
    return 0;
  }

  v1 = (*(a1 + 1056) + 1);
  *(a1 + 1056) = v1;
  v3 = *(a1 + 1068);
  if (v1 >= v3)
  {
    _ExpandBlockTable(a1, v3 + 8);
  }

  return v1;
}

uint64_t _dense_allocateRange(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 > a2)
  {
    v6 = *(*v4 + 8 * a2);
    if (v6)
    {
      v7 = v6[2];
      v8 = *v6;
      free(v6);
      *(*v4 + 8 * a2) = v8;
      --*(a1 + 8);
      return v7;
    }
  }

  LODWORD(v9) = 0;
  v10 = a2 + 1;
  while (1)
  {
    v11 = v10 + v9;
    if (v10 + v9 >= v5)
    {
      break;
    }

    v12 = *(*v4 + 8 * v11);
    v9 = (v9 + 1);
    if (v12)
    {
      v7 = v12[2];
      v13 = *v12;
      free(v12);
      *(*v4 + 8 * v11) = v13;
      goto LABEL_19;
    }
  }

  v16 = v4[1];
  v15 = v4 + 1;
  v14 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = *(v14 + 3);
  if (v17 < a2)
  {
    while (1)
    {
      v18 = v14;
      v14 = *v14;
      if (!v14)
      {
        return 0;
      }

      v17 = *(v14 + 3);
      if (v17 >= a2)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = 0;
LABEL_15:
  v19 = *v14;
  v7 = *(v14 + 2);
  v9 = (v17 - a2);
  free(v14);
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  *v20 = v19;
LABEL_19:
  --*(a1 + 8);
  (*(a1 + 40))(a1, (v7 + a2), v9);
  return v7;
}

_DWORD *BOMTreeNewWithName(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = BOMStorageNewNamedBlock(a1, a2);
  if (!v4)
  {
    return 0;
  }

  return _BOMTreeNew(a1, a2, v4, 0, 0);
}

_DWORD *_BOMTreeNew(uint64_t a1, const char *a2, unsigned int a3, int a4, char a5)
{
  result = _newBOMTree(a1, a2);
  if (result)
  {
    v11 = result;
    result[4] = a3;
    if ((a4 - 1) >= 0x2F)
    {
      v12 = a4;
    }

    else
    {
      v12 = 48;
    }

    if (!v12)
    {
      v12 = 4096;
    }

    result[76] = v12;
    v13 = v12 - 16;
    result[77] = v13 >> 3;
    result[78] = (v13 >> 3) + 1;
    result[79] = v13 >> 4;
    result[89] = result[89] & 0xFFFFFFFB | (4 * (a5 & 1));
    v14 = _NewPage(result, 0);
    *(v11 + 24) = v14;
    *(v14 + 2) |= 1u;
    *(v11 + 356) |= 1u;
    BOMTreeFree(v11);

    return _BOMTreeOpen(a1, a2, a3, 1);
  }

  return result;
}

uint64_t (*_WritePage(uint64_t a1, uint64_t a2))(void *)
{
  v4 = *(a1 + 304);
  if ((*(a1 + 356) & 4) == 0)
  {
    v5 = *(a1 + 348);
    if (v5 >= 1)
    {
      v4 += v5 * *(a2 + 16);
    }
  }

  result = BOMStreamWithBlockID(*a1, *a2, v4, 1);
  if (result)
  {
    v13 = result;
    BOMStreamWriteUInt16(result, *(a2 + 4) & 1, v7, v8, v9, v10, v11, v12);
    BOMStreamWriteUInt16(v13, *(a2 + 16), v14, v15, v16, v17, v18, v19);
    BOMStreamWriteUInt32(v13, *(a2 + 8), v20, v21, v22, v23, v24, v25);
    BOMStreamWriteUInt32(v13, *(a2 + 12), v26, v27, v28, v29, v30, v31);
    if (*(a2 + 16))
    {
      v38 = 0;
      v39 = 0;
      do
      {
        BOMStreamWriteUInt32(v13, *(*(a2 + 24) + v38), v32, v33, v34, v35, v36, v37);
        BOMStreamWriteUInt32(v13, *(*(a2 + 24) + v38 + 4), v40, v41, v42, v43, v44, v45);
        ++v39;
        v46 = *(a2 + 16);
        v38 += 8;
      }

      while (v39 < v46);
    }

    else
    {
      v46 = 0;
    }

    BOMStreamWriteUInt32(v13, *(*(a2 + 24) + 8 * v46), v32, v33, v34, v35, v36, v37);
    if ((*(a1 + 356) & 4) == 0)
    {
      v54 = *(a1 + 348);
      if (v54 >= 1)
      {
        v61 = malloc_type_malloc(v54, 0xED7B97B4uLL);
        if (*(a2 + 16))
        {
          v62 = 0;
          v63 = 4;
          do
          {
            if (BOMStorageSizeOfBlock(*a1, *(*(a2 + 24) + v63), v55, v56, v57, v58, v59, v60) != *(a1 + 348))
            {
              v76 = BOMExceptionHandlerMessage("%s blockSize %d != tree->keySize %d", v64, v65, v66, v67, v68, v69, v70, "_WritePage");
              v77 = __error();
              _BOMFatalException(v76, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1417, *v77);
            }

            BOMStorageCopyFromBlock(*a1, *(*(a2 + 24) + v63), v61, v66, v67, v68, v69, v70);
            BOMStreamWriteBuffer(v13, v61, *(a1 + 348), v71, v72, v73, v74, v75);
            ++v62;
            v63 += 8;
          }

          while (v62 < *(a2 + 16));
        }

        free(v61);
      }
    }

    result = BOMStreamFree(v13, v47, v48, v49, v50, v51, v52, v53);
    *(a2 + 4) &= ~2u;
  }

  return result;
}

uint64_t CUIImageIsMonochrome(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelMonochrome)
  {
    return 1;
  }

  memset(&srcARGB, 0, sizeof(srcARGB));
  v22 = 0;
  memset(&destB, 0, sizeof(destB));
  v18[0] = 0x2000000008;
  v18[1] = _CUIColorSpaceGetSRGB();
  v19 = 8194;
  v21 = 0;
  v20 = 0;
  if (!MEMORY[0x193AC74A0](&srcARGB, v18, 0, a1, 256))
  {
    v14.height = srcARGB.height;
    v14.width = srcARGB.width;
    destR.height = srcARGB.height;
    destR.width = srcARGB.width;
    destA.height = srcARGB.height;
    destA.width = srcARGB.width;
    destB.height = srcARGB.height;
    destB.width = srcARGB.width;
    v14.rowBytes = srcARGB.width;
    destR.rowBytes = srcARGB.width;
    destA.rowBytes = srcARGB.width;
    destB.rowBytes = srcARGB.width;
    destB.data = malloc_type_malloc(srcARGB.width * srcARGB.height, 0x24633C40uLL);
    destA.data = malloc_type_malloc(srcARGB.width * srcARGB.height, 0x4EC4DB72uLL);
    destR.data = malloc_type_malloc(srcARGB.width * srcARGB.height, 0x6403512CuLL);
    v14.data = malloc_type_malloc(srcARGB.width * srcARGB.height, 0xDA9A05DDuLL);
    if (!vImageConvert_ARGB8888toPlanar8(&srcARGB, &destA, &destR, &v14, &destB, 0))
    {
      height = destA.height;
      if (!destA.height)
      {
LABEL_12:
        free(srcARGB.data);
        free(destA.data);
        v3 = 1;
        goto LABEL_13;
      }

      width = destA.width;
      rowBytes = destA.rowBytes;
      v8 = v14.rowBytes;
      data = destR.data;
      v10 = destR.rowBytes;
      v9 = destA.data;
      v11 = v14.data;
      v12 = v14.width;
      while (!memcmp(v9, data, width) && !memcmp(v11, data, v12))
      {
        v11 += v8;
        data += v10;
        v9 += rowBytes;
        if (!--height)
        {
          goto LABEL_12;
        }
      }
    }

    free(srcARGB.data);
    free(destA.data);
    v3 = 0;
LABEL_13:
    free(destR.data);
    free(v14.data);
    free(destB.data);
    return v3;
  }

  return 0;
}

BOOL CSIEqualMetrics(uint64_t a1, uint64_t a2)
{
  if (!NSEqualSizes(*a1, *a2) || !NSEqualSizes(*(a1 + 16), *(a2 + 16)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);

  return NSEqualSizes(*&v4, *&v6);
}

__CFString *CUIPlatformNameForPlatform(uint64_t a1)
{
  result = &stru_1F00D74D0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return kCUIPlatformAppleTV;
      case 4:
        return kCUIPlatformWatch;
      case 5:
        return kCUIPlatformVision;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return kCUIPlatformiOS;
    }

    else if (a1 == 2)
    {
      return kCUIPlatformMaciOS;
    }
  }

  else
  {
    return kCUIPlatformMac[0];
  }

  return result;
}

char *BOMExceptionHandlerMessage(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = __BOMExceptionMessageString();
  vsnprintf(v10, 0x1000uLL, a1, &a9);
  return v10;
}

void *__BOMExceptionMessageString()
{
  if (__BOMExceptionMessageString___onceMessage != -1)
  {
    __BOMExceptionMessageString_cold_1();
  }

  v0 = pthread_getspecific(__BOMExceptionMessageString___key);
  if (!v0)
  {
    v0 = malloc_type_calloc(0x1000uLL, 1uLL, 0x100004077774924uLL);
    __CFSetLastAllocationEventName();
    if (pthread_setspecific(__BOMExceptionMessageString___key, v0))
    {
      _CUILog(4, "__BOMExceptionMessageString couldn't pthread_setspecific", v1, v2, v3, v4, v5, v6, v8);
    }
  }

  return v0;
}

id OUTLINED_FUNCTION_21_0()
{

  return [v1 countByEnumeratingWithState:v0 + 32 objects:v0 + 96 count:16];
}

id OUTLINED_FUNCTION_19_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return [v43 countByEnumeratingWithState:&a43 objects:&STACK[0x360] count:16];
}

id OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 appendBytes:a3 length:8];
}

id OUTLINED_FUNCTION_27_0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x258]) = a1;

  return [v1 length];
}

id OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

id OUTLINED_FUNCTION_12_1(uint64_t a1)
{

  return [v1 initWithKeyList:a1];
}

void BOMStackFree(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t *BOMStackPop(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result && (v2 = result[2]) != 0)
    {
      v3 = v2 - 1;
      result[2] = v3;
      result = *(v1 + 8 * v3);
      *(v1 + 8 * v3) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeSetValue(uint64_t a1, void *a2, unint64_t a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = 0;
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      v14 = *(a1 + 356);
      if (a3 || (v14 & 4) != 0)
      {
        if ((v14 & 2) == 0)
        {
          _CUILog(4, "%s: BOMTree '%s' is read-only tree can't update values", a3, a4, a5, a6, a7, a8, "int BOMTreeSetValue(BOMTree, void *, size_t, void *, size_t)");
          return v8;
        }

        v15 = BOMStackNew();
        if (!_findPagesForKey(a1, v15, a2, a3, v16, v17, v18, v19))
        {
          BOMStackFree(v15);
          return v8;
        }

        if (v15)
        {
          if ((*(a1 + 356) & 4) != 0)
          {
            v31 = a2;
          }

          else
          {
            v20 = BOMStackPeek(v15);
            if (!v20)
            {
              v33 = 0;
              goto LABEL_27;
            }

            v24 = v20;
            IndexForKey = _findIndexForKey(a1, v20, a2, a3, &v42, v21, v22, v23);
            if (v42)
            {
              v30 = (v24[3] + 8 * IndexForKey);
              v32 = *v30;
              v31 = v30[1];
              if (v32)
              {
LABEL_17:
                if (!BOMStorageCopyToBlock(*a1, v32, a4, a5, v26, v27, v28, v29) && !_PageSetValue(a1, v15, a2, a3, v31, v32))
                {
                  if (!v42)
                  {
                    ++*(a1 + 20);
                  }

                  v8 = 0;
                  *(a1 + 356) |= 1u;
                  v33 = 1;
LABEL_27:
                  while (!BOMStackIsEmpty(v15))
                  {
                    v39 = BOMStackPop(v15);
                    *(v39 + 2) &= ~8u;
                  }

                  BOMStackFree(v15);
                  if (v33)
                  {
                    if ((*(a1 + 356) & 4) == 0)
                    {
                      v40 = *(a1 + 348);
                      if (v40 != -1)
                      {
                        if (!v40)
                        {
                          v8 = 0;
                          *(a1 + 348) = a3;
                          return v8;
                        }

                        if (v40 != a3)
                        {
                          v8 = 0;
                          *(a1 + 348) = -1;
                          return v8;
                        }
                      }
                    }

                    return 0;
                  }

                  return v8;
                }

LABEL_25:
                v33 = 0;
                v8 = 1;
                goto LABEL_27;
              }
            }

            else
            {
              v34 = BOMStorageNewBlock(*a1);
              if (!v34)
              {
                goto LABEL_25;
              }

              v31 = v34;
              if (BOMStorageCopyToBlock(*a1, v34, a2, a3, v35, v36, v37, v38))
              {
                goto LABEL_25;
              }
            }
          }

          v32 = BOMStorageNewBlock(*a1);
          if (!v32)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }
      }
    }
  }

  return v8;
}

void **BOMStackNew()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040468F112EuLL);
  if (v0)
  {
    __CFSetLastAllocationEventName();
    v0[1] = 1024;
    v1 = malloc_type_calloc(1uLL, 0x2000uLL, 0x80040B8603338uLL);
    *v0 = v1;
    if (!v1)
    {
      BOMStackFree(v0);
      v10 = BOMExceptionHandlerMessage("Allocating BOMStack failed", v3, v4, v5, v6, v7, v8, v9, v12);
      v11 = __error();
      _BOMFatalException(v10, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 40, *v11);
    }
  }

  return v0;
}

void BOMStackPush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (*a1)
    {
      v11 = *(a1 + 8);
      if (*(a1 + 16) + 1 >= v11)
      {
        if (v11 == 0xFFFFFFF)
        {
          v23 = BOMExceptionHandlerMessage("BOMStack is full can't grow anymore", a2, a3, a4, a5, a6, a7, a8, v27);
          v24 = __error();
          _BOMFatalException(v23, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 105, *v24);
        }

        v12 = 2 * v11;
        if (2 * v11 >= 0xFFFFFFF)
        {
          v12 = 0xFFFFFFFLL;
        }

        v13 = 8 * v12;
        *(a1 + 8) = v12;
        v14 = reallocf(v9, 8 * v12);
        *a1 = v14;
        if (!v14)
        {
          v25 = BOMExceptionHandlerMessage("BOMStack got blown", v15, v16, v17, v18, v19, v20, v21, v27);
          v26 = __error();
          _BOMFatalException(v25, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 124, *v26);
        }

        v9 = v14;
        if (v13 > 8 * v11)
        {
          bzero(&v14[8 * v11], v13 - 8 * v11);
        }
      }

      v22 = *(a1 + 16);
      *(a1 + 16) = v22 + 1;
      *(v9 + v22) = a2;
    }
  }
}

void *BOMStackPeek(void *result)
{
  if (result)
  {
    if (*result && (v1 = result[2]) != 0)
    {
      return *(*result + 8 * v1 - 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _PageSetValue(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4, int a5, int a6)
{
  v62 = 0;
  v6 = 1;
  if (a5)
  {
    if (a6)
    {
      v13 = BOMStackPop(a2);
      if (v13)
      {
        v14 = v13;
        v15 = (*(v13 + 2) & 1) == 0;
        _invalidateIteratorsForPageID(a1, *v13);
        IndexForKey = _findIndexForKey(a1, v14, a3, a4, &v62, v16, v17, v18);
        v20 = *(v14 + 24);
        if (v62)
        {
          v21 = *(v14 + 16);
        }

        else
        {
          if (*(v20 + 8 * IndexForKey + 4))
          {
            v22 = *(a1 + 356);
            if ((v22 & 8) != 0)
            {
              *(a1 + 356) = v22 & 0xFFFFFFF7;
              v20 = *(v14 + 24);
            }

            v23 = *(v14 + 16);
            v24 = v23 - IndexForKey;
            if (v23 != IndexForKey)
            {
              v25 = v23 + v15;
              v26 = *(v14 + 16);
              do
              {
                v27 = v20 + 8 * v26--;
                v28 = 8 * v25--;
                v29 = *(v20 + 8 * v25);
                *(v27 + 4) = *(v20 + 8 * v26 + 4);
                *(v20 + v28) = v29;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            LOWORD(v23) = *(v14 + 16);
          }

          *(v20 + 8 * IndexForKey + 4) = a5;
          v21 = v23 + 1;
          *(v14 + 16) = v23 + 1;
        }

        *(v20 + 8 * (IndexForKey + v15)) = a6;
        *(v14 + 4) |= 2u;
        if (*(a1 + 308) >= v21)
        {
          v6 = 0;
        }

        else
        {
          v30 = _NewPage(a1, 0);
          if (v30)
          {
            v37 = v30;
            *(v30 + 2) = *(v30 + 2) & 0xFFFC | *(v14 + 4) & 1 | 2;
            if ((*(v14 + 4) & 1) == 0 || (v38 = *v30, v39 = *v14, *(v30 + 2) = *(v14 + 8), *(v14 + 8) = v38, *(v30 + 3) = v39, (v40 = *(v30 + 2)) == 0))
            {
LABEL_22:
              if ((*(a1 + 356) & 8) != 0)
              {
                LODWORD(v43) = *(a1 + 308) - 1;
                v42 = *(v14 + 16);
              }

              else
              {
                v42 = *(v14 + 16);
                LODWORD(v43) = v42 >> 1;
              }

              v44 = *(v14 + 24);
              v45 = *(v37 + 3);
              if (v43 + 1 >= v42)
              {
                v47 = *(v37 + 8);
                v43 = v43;
                v49 = v42;
              }

              else
              {
                v43 = v43;
                v46 = v43 + 1;
                v47 = *(v37 + 8);
                do
                {
                  v48 = (v44 + 8 * v46);
                  *(v45 + 8 * v47++) = *v48;
                  *(v37 + 8) = v47;
                  *v48 = 0;
                  ++v46;
                  v49 = *(v14 + 16);
                }

                while (v46 < v49);
                LOWORD(v42) = *(v14 + 16);
              }

              v50 = 8 * v49;
              *(v45 + 8 * v47) = *(v44 + v50);
              *(v44 + v50) = 0;
              *(v14 + 16) = v42 - v47;
              v51 = v44 + 8 * v43;
              v54 = *(v51 + 4);
              v52 = (v51 + 4);
              v53 = v54;
              if ((*(v14 + 4) & 1) == 0)
              {
                *v52 = 0;
                *(v14 + 16) = v42 - v47 - 1;
              }

              _addPageToCache(a1, v37);
              if (BOMStackIsEmpty(a2))
              {
                v55 = _NewPage(a1, 0);
                v6 = 1;
                if (v55)
                {
                  v56 = v55;
                  v57 = v55[3];
                  *v57 = *v14;
                  v57[1] = v53;
                  v57[2] = *v37;
                  *(v55 + 8) = 1;
                  *(v55 + 2) |= 2u;
                  _addPageToCache(a1, v14);
                  v6 = 0;
                  *(a1 + 24) = v56;
                }
              }

              else
              {
                v6 = _PageSetValue(a1, a2, a3, a4, v53, *v37);
              }

              goto LABEL_41;
            }

            Page = _findPage(a1, v40, v31, v32, v33, v34, v35, v36);
            if (Page)
            {
              if (*(Page + 3) == *v14)
              {
                *(Page + 3) = *v37;
                *(Page + 2) |= 2u;
                goto LABEL_22;
              }

              v58 = *__error();
              v59 = "internal btree error";
              v6 = 1;
              v60 = 2210;
            }

            else
            {
              v58 = *__error();
              v59 = "missing tree page";
              v6 = 1;
              v60 = 2206;
            }

            _BOMExceptionHandlerCall(v59, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", v60, v58);
          }

          else
          {
            v6 = 1;
          }
        }

LABEL_41:
        *(v14 + 4) &= ~8u;
      }
    }
  }

  return v6;
}

void _invalidateIteratorsForPageID(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 296);
  if (v3)
  {
    v5 = BOMCFArrayMaxRange(v3);
    v7 = v6;
    v8 = *(a1 + 296);
    v9.location = v5;
    v9.length = v7;

    CFArrayApplyFunction(v8, v9, _invalidateIterator, a2);
  }
}

void _FlushWriteCache(uint64_t a1)
{
  for (i = *(a1 + 1104); i; i = *(a1 + 1104))
  {
    *(a1 + 1104) = *i;
    _WriteAddress(a1, i[2], i[3]);
    free(i);
  }

  *(a1 + 1112) = 0;
}

id OUTLINED_FUNCTION_25_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return [v51 countByEnumeratingWithState:&a51 objects:&STACK[0x3E0] count:16];
}

uint64_t CUIConvertFromTXRPixelFormat(uint64_t a1)
{
  if (a1 <= 104)
  {
    if (a1 > 59)
    {
      if (a1 == 93)
      {
        v1 = 93;
      }

      else
      {
        v1 = 0;
      }

      if (a1 == 92)
      {
        v1 = 92;
      }

      if (a1 == 90)
      {
        v1 = 90;
      }

      if (a1 == 81)
      {
        v6 = 81;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 80)
      {
        v6 = 80;
      }

      if (a1 == 72)
      {
        v6 = 72;
      }

      if (a1 <= 89)
      {
        v1 = v6;
      }

      if (a1 == 71)
      {
        v3 = 71;
      }

      else
      {
        v3 = 0;
      }

      if (a1 == 70)
      {
        v3 = 70;
      }

      if (a1 == 65)
      {
        v3 = 65;
      }

      if (a1 == 62)
      {
        v7 = 62;
      }

      else
      {
        v7 = 0;
      }

      if (a1 == 60)
      {
        v7 = 60;
      }

      if (a1 <= 64)
      {
        v3 = v7;
      }

      v5 = a1 <= 71;
    }

    else
    {
      if (a1 == 55)
      {
        v1 = 55;
      }

      else
      {
        v1 = 0;
      }

      if (a1 == 32)
      {
        v1 = 32;
      }

      if (a1 == 31)
      {
        v1 = 31;
      }

      if (a1 == 30)
      {
        v2 = 30;
      }

      else
      {
        v2 = 0;
      }

      if (a1 == 25)
      {
        v2 = 25;
      }

      if (a1 == 22)
      {
        v2 = 22;
      }

      if (a1 <= 30)
      {
        v1 = v2;
      }

      if (a1 == 20)
      {
        v3 = 20;
      }

      else
      {
        v3 = 0;
      }

      if (a1 == 12)
      {
        v3 = 12;
      }

      if (a1 == 11)
      {
        v3 = 11;
      }

      if (a1 == 10)
      {
        v4 = 10;
      }

      else
      {
        v4 = 0;
      }

      if (a1 == 1)
      {
        v4 = 1;
      }

      if (a1 <= 10)
      {
        v3 = v4;
      }

      v5 = a1 <= 21;
    }

LABEL_88:
    if (v5)
    {
      return v3;
    }

    return v1;
  }

  if (a1 > 151)
  {
    if (a1 == 555)
    {
      v1 = 555;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 553)
    {
      v1 = 553;
    }

    if (a1 == 212)
    {
      v8 = 212;
    }

    else
    {
      v8 = 0;
    }

    if (a1 == 204)
    {
      v8 = 204;
    }

    if (a1 <= 552)
    {
      v1 = v8;
    }

    if (a1 == 194)
    {
      v3 = 194;
    }

    else
    {
      v3 = 0;
    }

    if (a1 == 186)
    {
      v3 = 186;
    }

    if (a1 == 152)
    {
      v3 = 152;
    }

    v5 = a1 <= 203;
    goto LABEL_88;
  }

  v1 = 0;
  switch(a1)
  {
    case 110:
    case 112:
    case 115:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
      v1 = a1;
      break;
    case 111:
    case 113:
    case 114:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 126:
    case 127:
    case 128:
    case 129:
    case 136:
    case 137:
    case 138:
    case 139:
      return v1;
    default:
      if (a1 == 105)
      {
        v1 = 105;
      }

      else
      {
        v1 = 0;
      }

      break;
  }

  return v1;
}