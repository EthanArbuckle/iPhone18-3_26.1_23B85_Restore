uint64_t _FSURLCopyResourcePropertyForKeyInternal(const __CFURL *a1, const __CFString *a2, void **a3, CFTypeRef cf, __CFError **a5, int a6)
{
  v31 = a2;
  value = 0;
  v11 = _FileCacheGetForURL(a1, cf);
  v12 = CFDictionaryGetValue(qword_1ED4458B8, a2);
  if (!v12)
  {
    _FileCacheLockTempPermProperties();
    TemporaryPropertyDictionary = _FileCacheGetTemporaryPropertyDictionary(v11, 0);
    if (TemporaryPropertyDictionary && CFDictionaryGetValueIfPresent(TemporaryPropertyDictionary, a2, &value) || (PermanentPropertyDictionary = _FileCacheGetPermanentPropertyDictionary(v11, 0)) != 0 && CFDictionaryGetValueIfPresent(PermanentPropertyDictionary, a2, &value))
    {
      v23 = value;
      if (value)
      {
        v23 = CFRetain(value);
      }

      value = v23;
    }

    _FileCacheUnlockTempPermProperties();
    v17 = 1;
    goto LABEL_18;
  }

  v13 = v12;
  _FileCacheLock(v11);
  v29 = *v13;
  v14 = *(v13 + 140);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  _FileCacheIncrementInProvider(v11);
  v17 = v16(a1, v11, &v31, &value, &v29, 1, v15);
  _FileCacheDecrementInProvider(v11);
  if (a6 && !v17)
  {
    if (_FileCacheLockTransitionToPreparer(v11))
    {
      goto LABEL_28;
    }

    _FileCacheLock(v11);
    v24 = *(v13 + 140);
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    _FileCacheIncrementInProvider(v11);
    v17 = v26(a1, v11, &v31, &value, &v29, 1, v25);
    _FileCacheDecrementInProvider(v11);
    _FileCacheUnlock(v11);
    if (!v17)
    {
LABEL_28:
      memset(v28, 0, 60);
      addPropertyAndDependenciesToBitmap(v13, v28);
      v17 = prepareValuesForBitmap(a1, v11, v28, a5);
      if (v17)
      {
        _FileCacheLock(v11);
        v18 = *(v13 + 140);
        v19 = *(v18 + 32);
        v20 = *(v18 + 8);
        _FileCacheIncrementInProvider(v11);
        v19(a1, v11, &v31, &value, &v29, 1, v20);
        _FileCacheDecrementInProvider(v11);
        _FileCacheUnlock(v11);
      }
    }

    _FileCacheLockTransitionFromPreparer(v11);
  }

  _FileCacheUnlock(v11);
  if (v17)
  {
LABEL_18:
    *a3 = value;
    return v17;
  }

  if (!a5 || *a5)
  {
    return 0;
  }

  if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
  {
    _FSURLCopyResourcePropertyForKeyInternal();
  }

  v17 = 0;
  *a5 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  return v17;
}

CFTypeRef _FileCacheGetForURL(const __CFURL *a1, CFTypeRef cf)
{
  if (cf)
  {
    return cf;
  }

  CFGetAllocator(a1);
  initGlobalsOnce();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    __CFURLSetResourceInfoPtr();
    CFRelease(v5);
  }

  return __CFURLResourceInfoPtr();
}

void initGlobalsOnce(void)
{
  if (initGlobalsOnce(void)::onceToken != -1)
  {
    initGlobalsOnce();
  }
}

double _FileCacheInit(const void *a1)
{
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  atomic_store(0xFFFFFFFF, a1 + 4);
  atomic_store(0, a1 + 5);
  atomic_store(0xFFFFFFFF, a1 + 4);
  result = 0.0;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 3) = 0u;
  return result;
}

pthread_t _FileCacheLock(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = pthread_self();
  if (v2 == result)
  {
    v4 = *(a1 + 32) + 1;
  }

  else
  {
    os_unfair_lock_lock((a1 + 36));
    result = pthread_self();
    *(a1 + 24) = result;
    v4 = 1;
  }

  *(a1 + 32) = v4;
  return result;
}

uint64_t corePropertyProviderCopyValues(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 1;
  }

  v6 = a6;
  if ((*_FileCacheGetAttributes(a2) & 1) == 0)
  {
    return 0;
  }

  if (v6 < 1)
  {
    return 1;
  }

  while (1)
  {
    cf = 0;
    v12 = *a5;
    if ((*(*a5 + 8) & 2) == 0 || !_FileCacheGetPropertyValueForKey(a2, *v12, &cf))
    {
      break;
    }

    if (cf)
    {
      CFRetain(cf);
    }

LABEL_12:
    *a4++ = cf;
    ++a5;
    if (!--v6)
    {
      return 1;
    }
  }

  v13 = *(v12 + 24);
  if (v13)
  {
    Attributes = _FileCacheGetAttributes(a2);
    if (v13(a1, Attributes, &cf))
    {
      goto LABEL_12;
    }
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t _FileCacheLockTransitionToPreparer(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 36));
  v2 = os_unfair_recursive_lock_trylock();
  v3 = *(a1 + 32);
  *(a1 + 24) = 0;
  os_unfair_lock_unlock((a1 + 36));
  if ((v2 & 1) == 0)
  {
    os_unfair_recursive_lock_lock_with_options();
  }

  if (v3 >= 2)
  {
    os_unfair_lock_lock((a1 + 36));
    *(a1 + 32) = v3 - 1;
    *(a1 + 24) = pthread_self();
  }

  return v2;
}

uint64_t prepareValuesForBitmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v31 = a1;
  v38 = *MEMORY[0x1E69E9840];
  if (qword_1ED445788 < 1)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = 0;
    LOBYTE(v6) = 1;
    do
    {
      v7 = (v33 + 12 * v5);
      v8 = *v7;
      v35 = 0;
      v36 = v8;
      v37 = *(v7 + 2);
      v34 = 0;
      if (PropertyMaskIsNotZero(&v36, &v35, &v34))
      {
        v9 = &sFileProviderGlobals[7 * v5];
        v10 = 8 * *(v9 + 5);
        MEMORY[0x1EEE9AC00]();
        v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
        v12 = &v31 - v11;
        v13 = v10 >= 0x200 ? 512 : v10;
        bzero(&v31 - v11, v13);
        MEMORY[0x1EEE9AC00]();
        v14 = &v31 - v11;
        bzero(&v31 - v11, v13);
        if (v35 <= v34)
        {
          v15 = 0;
          v16 = v36;
          v17 = v37;
          v18 = v34 - v35 + 1;
          v19 = sFileProviderGlobals[7 * v5 + 8] + 148 * v35;
          do
          {
            v20 = *(v19 + 136);
            v21 = 1 << v20;
            v22 = v20 < 64;
            if (v20 >= 64)
            {
              v23 = 0;
            }

            else
            {
              v23 = 1 << v20;
            }

            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v21;
            }

            v25 = v17 & v24;
            if ((v23 & v16) != 0 || v25 != 0)
            {
              *&v12[8 * v15] = *(v19 + 8);
              *&v14[8 * v15++] = *v19;
            }

            v19 += 148;
            --v18;
          }

          while (v18);
        }

        else
        {
          v15 = 0;
        }

        v27 = v9[5];
        v28 = v9[3];
        _FileCacheIncrementInProvider(a2);
        v6 = v27(v31, a2, v12, v14, v15, v28, v32);
        _FileCacheDecrementInProvider(a2);
        if (!v6)
        {
          break;
        }
      }

      ++v5;
    }

    while (v5 < qword_1ED445788);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t addPropertyAndDependenciesToBitmap(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  v3 = 1 << v2;
  v4 = v2 < 64;
  if (v2 >= 64)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << v2;
  }

  if (v4)
  {
    v3 = 0;
  }

  v6 = a2 + 12 * **(result + 140);
  v7 = *(v6 + 8) | v3;
  *v6 |= v5;
  *(v6 + 8) = v7;
  v8 = qword_1ED445788;
  if (qword_1ED445788 >= 1)
  {
    v9 = (result + 24);
    v10 = (a2 + 8);
    do
    {
      v11 = *(v9 - 1) | *(v10 - 1);
      v12 = *v9;
      v9 += 3;
      v13 = v12 | *v10;
      *(v10 - 1) = v11;
      *v10 = v13;
      v10 += 3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t PropertyMaskIsNotZero(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = *a1;
  result = *(a1 + 8);
  if (v6)
  {
    v8 = __clz(__rbit64(v6));
    v9 = flsll(result);
    if (v9)
    {
      v10 = v9 + 64;
    }

    else
    {
      v10 = flsll(*a1);
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v11 = __clz(__rbit32(result));
    v10 = flsll(result) + 64;
    v8 = v11 | 0x40;
  }

  *a2 = v8;
  *a3 = v10 - 1;
  return 1;
}

uint64_t corePropertyProviderPrepareValues(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, CFErrorRef *a7)
{
  v61 = *MEMORY[0x1E69E9840];
  *&v58.bitmapcount = xmmword_19605E6E0;
  *&v58.fileattr = 0;
  _FileCacheLock(a2);
  v60 = 0;
  if (a5 < 1)
  {
    goto LABEL_6;
  }

  do
  {
    v12 = *a4++;
    *(&v59 + *(v12 + 16)) = 1;
    --a5;
  }

  while (a5);
  if (!HIBYTE(v60) || (*(_FileCacheGetAttributes(a2) + 1) & 4) != 0)
  {
LABEL_6:
    v15 = 0;
    v16 = 0;
    v56 = 0u;
    v57 = 0u;
  }

  else
  {
    *&v13 = qword_1ED44574C;
    *&v14 = unk_1ED445754;
    v56 = v14;
    v57 = v13;
    *(&v13 + 1) = unk_1ED445754;
    *&v58.commonattr = v13;
    v15 = dword_1ED44575C;
    v58.forkattr = dword_1ED44575C;
    v16 = 1;
  }

  if (BYTE4(v60) && (*_FileCacheGetAttributes(a2) & 4) == 0)
  {
    *(&v18 + 1) = *(&v56 + 1);
    *(&v17 + 1) = *(&v57 + 1);
    *&v17 = vorr_s8(*&v57, qword_1ED445704);
    *&v18 = vorr_s8(*&v56, *algn_1ED44570C);
    v56 = v18;
    v57 = v17;
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v58.commonattr = v19;
    v15 |= dword_1ED445714;
    v58.forkattr = v15;
    v16 = 1;
  }

  if (BYTE6(v60) && (*(_FileCacheGetAttributes(a2) + 1) & 1) == 0)
  {
    *(&v21 + 1) = *(&v56 + 1);
    *(&v20 + 1) = *(&v57 + 1);
    *&v20 = vorr_s8(*&v57, qword_1ED445734);
    *&v21 = vorr_s8(*&v56, *algn_1ED44573C);
    v56 = v21;
    v57 = v20;
    *&v22 = v20;
    *(&v22 + 1) = v21;
    *&v58.commonattr = v22;
    v15 |= dword_1ED445744;
    v58.forkattr = v15;
    v16 = 1;
  }

  if (BYTE5(v60) && (*_FileCacheGetAttributes(a2) & 0x40) == 0)
  {
    *(&v24 + 1) = *(&v56 + 1);
    *(&v23 + 1) = *(&v57 + 1);
    *&v23 = vorr_s8(*&v57, qword_1ED44571C);
    *&v24 = vorr_s8(*&v56, *algn_1ED445724);
    v56 = v24;
    v57 = v23;
    *&v25 = v23;
    *(&v25 + 1) = v24;
    *&v58.commonattr = v25;
    v15 |= dword_1ED44572C;
    v58.forkattr = v15;
    v16 = 1;
  }

  if (BYTE3(v60) && (*_FileCacheGetAttributes(a2) & 0x80) == 0)
  {
    *(&v27 + 1) = *(&v56 + 1);
    *(&v26 + 1) = *(&v57 + 1);
    *&v26 = vorr_s8(*&v57, qword_1ED4456EC);
    *&v27 = vorr_s8(*&v56, *algn_1ED4456F4);
    v56 = v27;
    v57 = v26;
    *&v28 = v26;
    *(&v28 + 1) = v27;
    *&v58.commonattr = v28;
    v15 |= dword_1ED4456FC;
    v58.forkattr = v15;
    v16 = 1;
  }

  if (BYTE2(v60) && (*(_FileCacheGetAttributes(a2) + 16) & 0xF000) != 0x4000 && (*_FileCacheGetAttributes(a2) & 0x20) == 0)
  {
    *(&v30 + 1) = *(&v56 + 1);
    *(&v29 + 1) = *(&v57 + 1);
    *&v29 = vorr_s8(*&v57, qword_1ED4456D4);
    *&v30 = vorr_s8(*&v56, *algn_1ED4456DC);
    v56 = v30;
    v57 = v29;
    *&v31 = v29;
    *(&v31 + 1) = v30;
    *&v58.commonattr = v31;
    v15 |= dword_1ED4456E4;
    v58.forkattr = v15;
    v16 = 1;
  }

  if (BYTE1(v60) && (*_FileCacheGetAttributes(a2) & 0x10) == 0)
  {
    *(&v33 + 1) = *(&v56 + 1);
    *(&v32 + 1) = *(&v57 + 1);
    *&v32 = vorr_s8(*&v57, qword_1ED4456BC);
    *&v33 = vorr_s8(*&v56, *algn_1ED4456C4);
    v56 = v33;
    v57 = v32;
    *&v34 = v32;
    *(&v34 + 1) = v33;
    *&v58.commonattr = v34;
    v15 |= dword_1ED4456CC;
    v58.forkattr = v15;
    v16 = 1;
  }

  if (!v60 || (*_FileCacheGetAttributes(a2) & 8) != 0)
  {
    if (!v16 && (!v59 || (*_FileCacheGetAttributes(a2) & 1) != 0))
    {
      v45 = 1;
      goto LABEL_50;
    }
  }

  else
  {
    *(&v35 + 1) = *(&v57 + 1);
    *&v35 = vorr_s8(*&v57, qword_1ED4456A4);
    *(&v36 + 1) = *(&v56 + 1);
    *&v36 = vorr_s8(*&v56, *algn_1ED4456AC);
    v56 = v36;
    v57 = v35;
    v15 |= dword_1ED4456B4;
  }

  *&v58.commonattr = vorr_s8(*&v57, qword_1ED44568C);
  *&v58.dirattr = vorr_s8(*&v56, unk_1ED445694);
  v58.forkattr = v15 | dword_1ED44569C;
  _FileCacheUnlock(a2);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, &v59, 1024))
  {
    if (a7)
    {
      v46 = CFGetAllocator(a1);
      *a7 = _FSURLCreateStandardError(v46, *MEMORY[0x1E695E628], 258, 0, a1, 0);
    }

    _FileCacheLock(a2);
    goto LABEL_39;
  }

  v58.commonattr |= 0x80000000;
  v37 = calculateAttributeBufferSize(&v58, 0);
  MEMORY[0x1EEE9AC00]();
  v39 = &v56 - v38;
  bzero(&v56 - v38, v37);
  if (filtered_getattrlist(&v59, &v58, v39, v37, 0x25u))
  {
    _FileCacheLock(a2);
    goto LABEL_33;
  }

  v47 = *v39;
  if (v37 >= v47)
  {
    _FileCacheLock(a2);
    goto LABEL_47;
  }

  v48 = *v39;
  MEMORY[0x1EEE9AC00]();
  v39 = &v56 - ((v47 + 15) & 0x1FFFFFFF0);
  bzero(v39, v47);
  v49 = filtered_getattrlist(&v59, &v58, v39, v47, 0x21u);
  _FileCacheLock(a2);
  if (!v49)
  {
LABEL_47:
    v50 = CFGetAllocator(a1);
    Attributes = _FileCacheGetAttributes(a2);
    v45 = 1;
    v52 = parseAttributeBuffer(v50, &v59, &v58, v39, 0, Attributes, 1);
    if (!v52)
    {
      goto LABEL_50;
    }

    if (a7)
    {
      v53 = v52;
      v42 = CFGetAllocator(a1);
      v43 = *MEMORY[0x1E695E638];
      v44 = v53;
      goto LABEL_35;
    }

LABEL_39:
    v45 = 0;
    goto LABEL_50;
  }

LABEL_33:
  v40 = __error();
  if (!a7)
  {
    goto LABEL_39;
  }

  v41 = *v40;
  v42 = CFGetAllocator(a1);
  v43 = *MEMORY[0x1E695E640];
  v44 = v41;
LABEL_35:
  v45 = 0;
  *a7 = _FSURLCreateStandardError(v42, v43, v44, 0, a1, 0);
LABEL_50:
  _FileCacheUnlock(a2);
  v54 = *MEMORY[0x1E69E9840];
  return v45;
}

void _FileCacheUnlock(uint64_t a1)
{
  v1 = *(a1 + 32) - 1;
  *(a1 + 32) = v1;
  if (!v1)
  {
    *(a1 + 24) = 0;
    os_unfair_lock_unlock((a1 + 36));
  }
}

unint64_t calculateAttributeBufferSize(const attrlist *a1, uint64_t a2)
{
  commonattr = a1->commonattr;
  if (a2 <= 0)
  {
    a2 = (commonattr >> 17) & 0x400 | (commonattr >> 14) & 0x100 | ((commonattr << 31) >> 31) & 0x2FE;
  }

  v3 = a2 + 4;
  if (commonattr)
  {
    if (commonattr)
    {
      v3 = a2 + 12;
    }

    v4 = vdupq_n_s32(commonattr);
    v5.i64[0] = vshlq_u32(v4, xmmword_19605E4C0).u64[0];
    v5.i64[1] = vshlq_u32(v4, xmmword_19605E500).i64[1];
    v6 = vandq_s8(v5, xmmword_19605E510);
    v7 = vandq_s8(vshlq_u32(v4, xmmword_19605E4F0), xmmword_19605E520);
    v8 = vandq_s8(vshlq_u32(v4, xmmword_19605E4E0), xmmword_19605E530);
    v9.i64[0] = 0x1000000010;
    v9.i64[1] = 0x1000000010;
    v10 = vandq_s8(vshlq_u32(v4, xmmword_19605E4D0), v9);
    v11 = vshlq_u32(v4, xmmword_19605E540);
    v12.i64[0] = 0x400000004;
    v12.i64[1] = 0x400000004;
    v13 = vandq_s8(vshlq_u32(v4, xmmword_19605E550), v12);
    v14 = vandq_s8(v11, xmmword_19605E560);
    v3 += vaddvq_s64(vpadalq_u32(vaddq_s64(vaddq_s64(vaddl_u32(vorr_s8(*v6.i8, *v10.i8), vorr_s8(*v7.i8, *v8.i8)), vaddw_u32(vaddl_u32(*v13.i8, *v14.i8), vorr_s8(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)))), vaddw_u32(vaddl_high_u32(v7, v8), vorr_s8(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v10, v10, 8uLL)))), vandq_s8(vshlq_u32(vdupq_n_s32(commonattr), xmmword_19605E570), xmmword_19605E580))) + ((commonattr >> 27) & 4) + ((commonattr >> 28) & 4);
    if ((commonattr & 0x80000000) != 0)
    {
      v3 += 20;
    }
  }

  dirattr = a1->dirattr;
  if (dirattr)
  {
    v16 = vdupq_n_s32(dirattr);
    v17.i64[0] = vshlq_u32(v16, xmmword_19605E590).u64[0];
    v17.i64[1] = vshlq_u32(v16, xmmword_19605E5A0).i64[1];
    v18 = vaddvq_s32(vandq_s8(v17, xmmword_19605E5B0)) + (a1->dirattr & 0xC);
  }

  else
  {
    v18 = 0;
  }

  fileattr = a1->fileattr;
  if (fileattr)
  {
    v20 = vdupq_n_s32(fileattr);
    v21.i64[0] = vshlq_u32(v20, xmmword_19605E5D0).u64[0];
    v21.i64[1] = vshlq_u32(v20, xmmword_19605E5E0).i64[1];
    v22 = vaddvq_s32(vaddq_s32(vandq_s8(v21, xmmword_19605E5F0), vandq_s8(vshlq_u32(v20, xmmword_19605E5C0), xmmword_19605E600)));
  }

  else
  {
    v22 = 0;
  }

  forkattr = a1->forkattr;
  if (forkattr)
  {
    v24 = ((((2 * forkattr) & 8) + (forkattr & 8) + ((forkattr >> 1) & 8) + ((forkattr >> 2) & 8)) | (forkattr >> 4) & 4) + ((forkattr >> 4) & 8);
  }

  else
  {
    v24 = 0;
  }

  if (v18 <= v22)
  {
    v18 = v22;
  }

  return v18 + v3 + v24;
}

uint64_t filtered_getattrlist(char *a1, _DWORD *a2, void *a3, size_t a4, unsigned int a5)
{
  if (filtered_getattrlist::onceToken != -1)
  {
    filtered_getattrlist_cold_1();
  }

  if (filtered_getattrlist::isJazz == 1)
  {
    a2[5] &= 0xFCu;
  }

  return getattrlist(a1, a2, a3, a4, a5);
}

CFErrorRef _FSURLCreateStandardError(const __CFAllocator *a1, const __CFString *a2, uint64_t a3, int a4, const __CFString *cf, void *a6)
{
  v7 = cf;
  v33 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v12 = CFGetTypeID(cf);
  if (v12 != CFURLGetTypeID())
  {
    if (v12 == CFStringGetTypeID())
    {
      v7 = CFRetain(v7);
      v16 = CFGetAllocator(v7);
      HasSuffix = CFStringHasSuffix(v7, @"/");
      v13 = CFURLCreateWithFileSystemPath(v16, v7, kCFURLPOSIXPathStyle, HasSuffix);
      goto LABEL_9;
    }

    v7 = 0;
    goto LABEL_8;
  }

  v13 = CFRetain(v7);
  v14 = CFURLCopyAbsoluteURL(v13);
  if (v14)
  {
    v15 = v14;
    v7 = CFURLCopyFileSystemPath(v14, kCFURLPOSIXPathStyle);
    CFRelease(v15);
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  *userInfoKeys = 0u;
  *userInfoValues = 0u;
  v28 = 0u;
  code = 0;
  _FSURLTranslateDomainAndCodeToCocoaError(a2, a3, a4, &code);
  v18 = *MEMORY[0x1E695E628];
  if (*MEMORY[0x1E695E628] == a2)
  {
    v19 = 0;
    if (v13)
    {
LABEL_11:
      v20 = &userInfoValues[1];
      v21 = &userInfoKeys[1];
      userInfoKeys[0] = *MEMORY[0x1E695E668];
      userInfoValues[0] = v13;
      v22 = 1;
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v19 = CFErrorCreate(a1, a2, a3, 0);
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v22 = 0;
  v21 = userInfoKeys;
  v20 = userInfoValues;
  if (v7)
  {
LABEL_12:
    *v21 = *MEMORY[0x1E695E648];
    *v20 = v7;
    ++v22;
  }

LABEL_13:
  if (a6)
  {
    userInfoKeys[v22] = @"NSURLKeys";
    userInfoValues[v22++] = a6;
  }

  if (v19)
  {
    userInfoKeys[v22] = *MEMORY[0x1E695E670];
    userInfoValues[v22++] = v19;
  }

  v23 = CFErrorCreateWithUserInfoKeysAndValues(a1, v18, code, userInfoKeys, userInfoValues, v22);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (!v23)
  {
    if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
    {
      _FSURLCreateStandardError_cold_1();
    }

    v23 = CFErrorCreate(*MEMORY[0x1E695E480], v18, 256, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t _FSURLTranslateDomainAndCodeToCocoaError(const void *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = a1;
  result = CFEqual(a1, *MEMORY[0x1E695E628]);
  if (!result)
  {
    if (!CFEqual(v7, *MEMORY[0x1E695E638]))
    {
      goto LABEL_39;
    }

    if (a2 > -52)
    {
      if (a2 > -38)
      {
        if (a2 <= -35)
        {
          if (a2 == -37)
          {
            a2 = 63;
          }

          else if (a2 == -36)
          {
            a2 = 5;
          }

          else
          {
            a2 = 6;
          }

          goto LABEL_52;
        }

        switch(a2)
        {
          case 0xFFFFFFDE:
            a2 = 28;
            goto LABEL_52;
          case 0xFFFFFFFC:
            a2 = 45;
            goto LABEL_52;
          case 0:
            a2 = 0;
            goto LABEL_52;
        }

LABEL_39:
        v9 = *MEMORY[0x1E695E640];
        goto LABEL_53;
      }

      if (a2 <= -49)
      {
        if (a2 == -51)
        {
          a2 = 9;
          goto LABEL_52;
        }

        if (a2 == -50)
        {
          a2 = 22;
          goto LABEL_52;
        }

        goto LABEL_39;
      }

      if (a2 == -48)
      {
        a2 = 17;
        goto LABEL_52;
      }

      if (a2 != -43)
      {
        if (a2 != -42)
        {
          goto LABEL_39;
        }

        a2 = 24;
        goto LABEL_52;
      }

LABEL_40:
      a2 = 2;
      goto LABEL_52;
    }

    if (a2 > -1304)
    {
      if (a2 <= -121)
      {
        if (a2 == -1303)
        {
          a2 = 18;
          goto LABEL_52;
        }

        if (a2 == -128)
        {
          a2 = 89;
          goto LABEL_52;
        }

        goto LABEL_39;
      }

      if (a2 == -120)
      {
        goto LABEL_40;
      }

      if (a2 == -61)
      {
        a2 = 30;
        goto LABEL_52;
      }

      if (a2 != -54)
      {
        goto LABEL_39;
      }

      a2 = 1;
    }

    else
    {
      if (a2 <= -1426)
      {
        if (a2 == -5023)
        {
          a2 = 80;
          goto LABEL_52;
        }

        if (a2 == -5000)
        {
          a2 = 13;
          goto LABEL_52;
        }

        goto LABEL_39;
      }

      if (a2 == -1425)
      {
        a2 = 69;
        goto LABEL_52;
      }

      if (a2 == -1407)
      {
        a2 = 20;
        goto LABEL_52;
      }

      if (a2 != -1309)
      {
        goto LABEL_39;
      }

      a2 = 27;
    }

LABEL_52:
    v9 = *MEMORY[0x1E695E640];
    v7 = *MEMORY[0x1E695E640];
LABEL_53:
    result = CFEqual(v7, v9);
    if (!result)
    {
      if (a3)
      {
        a2 = 512;
      }

      else
      {
        a2 = 256;
      }

      goto LABEL_2;
    }

    if (a3)
    {
      if (a2 > 27)
      {
        if (a2 > 62)
        {
          if (a2 == 63)
          {
            a2 = 514;
            goto LABEL_2;
          }

          if (a2 != 69)
          {
            goto LABEL_79;
          }
        }

        else if (a2 != 28)
        {
          if (a2 == 30)
          {
            a2 = 642;
            goto LABEL_2;
          }

LABEL_79:
          a2 = 512;
          goto LABEL_2;
        }

        a2 = 640;
        goto LABEL_2;
      }

      switch(a2)
      {
        case 1:
          goto LABEL_71;
        case 2:
          a2 = 4;
          goto LABEL_2;
        case 13:
LABEL_71:
          a2 = 513;
          goto LABEL_2;
      }

      goto LABEL_79;
    }

    if (a2 <= 12)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          a2 = 260;
          goto LABEL_2;
        }

        goto LABEL_83;
      }
    }

    else if (a2 != 13)
    {
      if (a2 == 27)
      {
        a2 = 263;
        goto LABEL_2;
      }

      if (a2 == 63)
      {
        a2 = 258;
        goto LABEL_2;
      }

LABEL_83:
      a2 = 256;
      goto LABEL_2;
    }

    a2 = 257;
  }

LABEL_2:
  *a4 = a2;
  return result;
}

uint64_t _FileCacheLockTransitionFromPreparer(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == pthread_self())
  {
    ++*(a1 + 32);
  }

  else
  {
    os_unfair_lock_lock((a1 + 36));
    *(a1 + 32) = 1;
    *(a1 + 24) = pthread_self();
  }

  return MEMORY[0x1EEE73FD0](a1 + 40);
}

void _FSURLEndResourcePropertyCacheAccess(const __CFURL *a1, const void *a2)
{
  if (a2)
  {
    v2 = _FileCacheGetForURL(a1, a2);
    _FileCacheLock(v2);
    if (!_FileCacheGetInProvider(v2) && _FileCacheNeedsValidSeed(v2) && _CFRunLoopCurrentIsMain())
    {
      GlobalSeed = _FileCacheGetGlobalSeed();
      _FileCacheSetValidSeed(v2, GlobalSeed);
      Main = CFRunLoopGetMain();
      _FileCacheScheduleGlobalSeedIncrement(Main);
    }

    _FileCacheUnlock(v2);
  }
}

uint64_t _FileCacheSetValidSeed(uint64_t result, unsigned int a2)
{
  v2 = atomic_load((result + 16));
  if (v2 >= -1)
  {
    atomic_store(a2, (result + 16));
  }

  return result;
}

void _FileCacheScheduleGlobalSeedIncrement(CFRunLoopRef rl)
{
  v2 = seedGlobals;
  if (!seedGlobals)
  {
    memset(&v3, 0, sizeof(v3));
    v2 = CFRunLoopObserverCreate(*MEMORY[0x1E695E480], 0x40uLL, 1u, 0, observerCall, &v3);
    seedGlobals = v2;
  }

  if ((seedGlobals & 1) == 0)
  {
    if (v2)
    {
      CFRunLoopAddObserver(rl, v2, *MEMORY[0x1E695E8D0]);
      seedGlobals = 1;
    }
  }
}

uint64_t _FileCacheFinalize(os_unfair_lock_s *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  os_unfair_lock_lock(a1 + 9);
  _FileCacheReleaseContents(a1, 0, 0, 0, 1);
  os_unfair_lock_unlock(a1 + 9);

  return MEMORY[0x1EEE73FD0](&a1[10]);
}

void _FileCacheReleaseContents(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (!a5)
  {
    _FileCacheLock(a1);
    _FileCacheLockTransitionToPreparer(a1);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 56) = 0;
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 272) = 0;
  }

  v12 = *(a1 + 280);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 280) = 0;
  }

  v13 = *(a1 + 288);
  if (v13)
  {
    *(a1 + 288) = 0;
    CFRelease(v13);
  }

  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  if (a3)
  {
LABEL_12:
    if (a4)
    {
      goto LABEL_25;
    }

    if (a5)
    {
      v14 = *(a1 + 304);
      if (v14)
      {
        *(a1 + 304) = 0;
        CFRelease(v14);
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a5)
  {
    v15 = *(a1 + 296);
    if (v15)
    {
      *(a1 + 296) = 0;
      CFRelease(v15);
    }

    goto LABEL_12;
  }

  os_unfair_lock_lock(&sTempPermDictionaryLock);
  v16 = *(a1 + 296);
  if (v16)
  {
    *(a1 + 296) = 0;
    CFRelease(v16);
  }

  os_unfair_lock_unlock(&sTempPermDictionaryLock);
  if (!a4)
  {
LABEL_22:
    os_unfair_lock_lock(&sTempPermDictionaryLock);
    v17 = *(a1 + 304);
    if (v17)
    {
      *(a1 + 304) = 0;
      CFRelease(v17);
    }

    os_unfair_lock_unlock(&sTempPermDictionaryLock);
  }

LABEL_25:
  v18 = *(a1 + 312);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 312) = 0;
  }

  if (a2)
  {
    atomic_store(0xFFFFFFFF, (a1 + 16));
  }

  if (!a5)
  {
    _FileCacheLockTransitionFromPreparer(a1);
    v19 = *(a1 + 32) - 1;
    *(a1 + 32) = v19;
    if (!v19)
    {
      *(a1 + 24) = 0;

      os_unfair_lock_unlock((a1 + 36));
    }
  }
}

uint64_t createIsDirectoryValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a2 + 16) & 0xF000) == 0x4000)
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createIsVolumeValue(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*a2 & 0x2000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t parseAttributeBuffer(CFAllocatorRef alloc, _BYTE *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a7;
  v137 = a2;
  v9 = alloc;
  v151 = *MEMORY[0x1E69E9840];
  v144 = a5;
  v150 = 0uLL;
  v149 = 0uLL;
  v10 = a3[1];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  v140 = a5;
  v141 = v11;
  if ((v10 & 0x80000000) != 0)
  {
    v16 = a4[1];
    v15 = a4[4];
    v138 = a4[3];
    v14 = 6;
    v143 = a4[5];
  }

  else
  {
    v14 = 1;
    v143 = v13;
    v15 = v12;
    v138 = v11;
    v16 = v10;
  }

  v17 = &a4[v14];
  if (*a6 & 1 | ((~v16 & 0x79C0D) == 0))
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 | *a6 & 0xFFFFFFFC;
  *a6 = v19;
  v20 = qword_1ED445704 & ~v10 | dword_1ED445714 & ~v13;
  v21 = v20 != 0;
  if (!v20)
  {
    v19 |= 4u;
    *a6 = v19;
  }

  v22 = v17 + ((v16 >> 27) & 4);
  if ((dword_1ED445728 & ~v12) == 0)
  {
    *a6 = v19 | 0x40;
  }

  if (v10)
  {
    if (v16)
    {
      v23 = *(v22 + 1);
      if (!v23)
      {
        parseAttributeBuffer();
        result = 22;
        goto LABEL_245;
      }

      v135 = v13;
      SetNameAndHiddenFlagsFromCString(alloc, &v22[*v22], (v23 - 1), a6);
      v22 += 8;
      v7 = a7;
      v13 = v135;
    }

    else
    {
      SetNameAndHiddenFlagsFromCString(alloc, "", 0, a6);
    }
  }

  v25 = &v22[(2 * v16) & 4];
  if ((v10 & 4) != 0)
  {
    if ((v16 & 4) != 0)
    {
      v27 = *v25;
      v25 += 8;
      *(a6 + 104) = v27;
      if ((v16 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    *(a6 + 104) = 0;
  }

  if ((v16 & 8) == 0)
  {
LABEL_20:
    v26 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v28 = *v25;
  v25 += 4;
  v26 = v28;
LABEL_23:
  v29 = &v25[((v16 >> 2) & 4) + ((v16 >> 2) & 8) + ((v16 >> 3) & 8) + ((v16 >> 4) & 8) + ((v16 >> 6) & 4)];
  if ((v10 & 0x200) != 0)
  {
    if ((v16 & 0x200) != 0)
    {
      v31 = *v29;
      v32 = v29[1];
      v29 += 2;
      v30 = v31 - *MEMORY[0x1E695E468] + v32 * 0.000000001;
    }

    else
    {
      v30 = -1.0 - *MEMORY[0x1E695E460];
    }

    *(a6 + 80) = v30;
    if ((v10 & 0x400) == 0)
    {
LABEL_25:
      if ((v10 & 0x800) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }
  }

  else if ((v10 & 0x400) == 0)
  {
    goto LABEL_25;
  }

  if ((v16 & 0x400) != 0)
  {
    v34 = *v29;
    v35 = v29[1];
    v29 += 2;
    v33 = v34 - *MEMORY[0x1E695E468] + v35 * 0.000000001;
  }

  else
  {
    v33 = -*MEMORY[0x1E695E468];
  }

  *(a6 + 64) = v33;
  if ((v10 & 0x800) == 0)
  {
LABEL_26:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_36:
  if ((v16 & 0x800) != 0)
  {
    v37 = *v29;
    v38 = v29[1];
    v29 += 2;
    v36 = v37 - *MEMORY[0x1E695E468] + v38 * 0.000000001;
  }

  else
  {
    v36 = -*MEMORY[0x1E695E468];
  }

  *(a6 + 72) = v36;
  if ((v10 & 0x1000) != 0)
  {
LABEL_40:
    if ((v16 & 0x1000) != 0)
    {
      v40 = *v29;
      v41 = v29[1];
      v29 += 2;
      v39 = v40 - *MEMORY[0x1E695E468] + v41 * 0.000000001;
    }

    else
    {
      v39 = -*MEMORY[0x1E695E468];
    }

    *(a6 + 56) = v39;
  }

LABEL_44:
  v42 = (v29 + ((v16 >> 9) & 0x10));
  if ((v10 & 0x4000) != 0)
  {
    if ((v16 & 0x4000) != 0)
    {
      v44 = 0;
      v45 = *a6 | 0x10;
      *a6 = v45;
      do
      {
        if (*(v42 + v44))
        {
          break;
        }

        ++v44;
      }

      while (v44 != 32);
      *a6 = v45 & 0xFBFFFFFF | ((v44 == 32) << 26);
      v46 = *v42;
      v47 = *(v42 + 1);
      v42 += 8;
      *(a6 + 160) = v46;
      *(a6 + 176) = v47;
      if (v44 != 32)
      {
        if (v26 == 2)
        {
          v48 = vrev16_s8(*(a6 + 160));
        }

        else
        {
          v48 = vrev32_s8(*(a6 + 160));
        }

        v49 = vrev16_s8(*(a6 + 168));
        *(a6 + 160) = v48;
        *(a6 + 168) = v49;
        if (v26 == 2)
        {
          *(a6 + 178) = bswap32(*(a6 + 178)) >> 16;
          *(a6 + 176) = bswap32(*(a6 + 176)) >> 16;
          *(a6 + 180) = bswap32(*(a6 + 180));
        }

        else
        {
          *(a6 + 176) = vrev16_s8(*(a6 + 176));
        }

        *(a6 + 184) = bswap32(*(a6 + 184)) >> 16;
        *(a6 + 186) = bswap32(*(a6 + 186)) >> 16;
        *(a6 + 188) = bswap32(*(a6 + 188));
      }
    }

    else
    {
      if (v7)
      {
        v43 = 67108880;
      }

      else
      {
        v43 = 0x4000000;
      }

      *a6 = v43 | *a6 & 0xFBFFFFEF;
      *(a6 + 160) = 0u;
      *(a6 + 176) = 0u;
    }
  }

  if ((v10 & 0x8000) != 0)
  {
    if ((v16 & 0x8000) != 0)
    {
      v52 = *v42++;
      *(a6 + 40) = v52;
      if ((v10 & 0x10000) != 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      *(a6 + 40) = 0;
      if ((v10 & 0x10000) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_63:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_64;
  }

  if ((v10 & 0x10000) == 0)
  {
    goto LABEL_63;
  }

LABEL_73:
  if ((v16 & 0x10000) != 0)
  {
    v53 = *v42++;
    *(a6 + 44) = v53;
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    *(a6 + 44) = 0;
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_77;
    }
  }

LABEL_64:
  if ((v16 & 0x20000) != 0)
  {
    v51 = *v42++;
    v50 = v51;
  }

  else
  {
    v50 = 0;
  }

  *(a6 + 16) = v50;
  if ((v26 - 1) <= 6)
  {
    *(a6 + 16) = v50 | dword_19605E740[v26 - 1];
  }

LABEL_77:
  if ((v10 & 0x40000) == 0)
  {
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_79;
    }

LABEL_98:
    if ((v16 & 0x80000) != 0)
    {
      v65 = *v42++;
      *(a6 + 32) = v65;
      if ((v10 & 0x100000) != 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      *(a6 + 32) = 0;
      if ((v10 & 0x100000) != 0)
      {
        goto LABEL_102;
      }
    }

LABEL_80:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_81;
  }

  if ((v16 & 0x40000) != 0)
  {
    v64 = *v42++;
    *(a6 + 20) = v64;
    if ((v10 & 0x80000) != 0)
    {
      goto LABEL_98;
    }
  }

  else
  {
    *(a6 + 20) = 0;
    if ((v10 & 0x80000) != 0)
    {
      goto LABEL_98;
    }
  }

LABEL_79:
  if ((v10 & 0x100000) == 0)
  {
    goto LABEL_80;
  }

LABEL_102:
  if ((v16 & 0x100000) != 0)
  {
    v66 = *v42++;
    *(a6 + 36) = v66;
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_88;
    }
  }

  else
  {
    *(a6 + 36) = 0;
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_88;
    }
  }

LABEL_81:
  v54 = *a6 | 8;
  *a6 = v54;
  if ((v16 & 0x200000) != 0)
  {
    v56 = *v42++;
    v55 = (v56 & 7) << 23;
  }

  else
  {
    v55 = 0;
  }

  *a6 = v55 | v54 & 0xFC7FFFFF;
LABEL_88:
  v142 = 0;
  if ((v10 & 0x400000) == 0 || (v16 & 0x400000) == 0)
  {
    v57 = v42;
    if ((v16 & 0x800000) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_94;
  }

  v57 = v42 + 2;
  if (!v42[1])
  {
    v142 = 0;
    if ((v16 & 0x800000) != 0)
    {
      goto LABEL_108;
    }

LABEL_94:
    v139 = 0;
    if ((v16 & 0x1000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_95;
  }

  v58 = v15;
  v59 = v21;
  v60 = v9;
  v61 = v26;
  v62 = acl_copy_int_native(v42 + *v42);
  v26 = v61;
  v9 = v60;
  v21 = v59;
  v15 = v58;
  v142 = v62;
  if ((v16 & 0x800000) == 0)
  {
    goto LABEL_94;
  }

LABEL_108:
  v67 = *v57;
  v57 += 4;
  v150 = v67;
  v139 = &v150;
  if ((v16 & 0x1000000) == 0)
  {
LABEL_109:
    v136 = 0;
    if ((v10 & 0x2000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_110;
  }

LABEL_95:
  v63 = *v57;
  v57 += 4;
  v149 = v63;
  v136 = &v149;
  if ((v10 & 0x2000000) == 0)
  {
LABEL_112:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_113;
    }

LABEL_118:
    if ((v16 & 0x4000000) != 0)
    {
      v69 = *v57;
      v57 += 2;
      *(a6 + 136) = v69;
      if ((v10 & 0x8000000) != 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      *(a6 + 136) = 0;
      if ((v10 & 0x8000000) != 0)
      {
        goto LABEL_122;
      }
    }

LABEL_114:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_132;
  }

LABEL_110:
  if ((v16 & 0x2000000) == 0)
  {
    *(a6 + 120) = 0;
    goto LABEL_112;
  }

  v68 = *v57;
  v57 += 2;
  *(a6 + 120) = v68;
  if ((v10 & 0x4000000) != 0)
  {
    goto LABEL_118;
  }

LABEL_113:
  if ((v10 & 0x8000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_122:
  if ((v16 & 0x8000000) != 0)
  {
    HIDWORD(v133) = v15;
    v134 = v12;
    v135 = v13;
    v75 = v21;
    v76 = v9;
    v77 = *v57;
    v78 = (v57[1] - 1);
    v79 = *(a6 + 232);
    if (v79)
    {
      v80 = v26;
      CFRelease(v79);
      v26 = v80;
    }

    if (v78)
    {
      v81 = v57 + v77;
      v82 = v76;
      v83 = v76;
      v84 = v26;
      v85 = CFStringCreateWithBytes(v83, v81, v78, 0x8000100u, 0);
      v26 = v84;
    }

    else
    {
      v85 = 0;
      v82 = v76;
    }

    *(a6 + 232) = v85;
    v57 += 2;
    v21 = v75;
    v9 = v82;
    v12 = v134;
    LOWORD(v13) = v135;
    v15 = HIDWORD(v133);
  }

  else
  {
    v70 = *(a6 + 232);
    if (v70)
    {
      v71 = v15;
      v72 = v21;
      v73 = v9;
      v74 = v26;
      CFRelease(v70);
      v26 = v74;
      v9 = v73;
      v21 = v72;
      v15 = v71;
      *(a6 + 232) = 0;
    }
  }

  *a6 |= 0x100u;
  if ((v10 & 0x10000000) == 0)
  {
LABEL_115:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_136;
  }

LABEL_132:
  if ((v16 & 0x10000000) != 0)
  {
    v87 = *v57;
    v88 = *(v57 + 1);
    v57 += 4;
    v86 = v87 - *MEMORY[0x1E695E468] + v88 * 0.000000001;
  }

  else
  {
    v86 = -1.0 - *MEMORY[0x1E695E460];
  }

  *(a6 + 88) = v86;
  if ((v10 & 0x40000000) != 0)
  {
LABEL_136:
    if ((v16 & 0x40000000) != 0)
    {
      v89 = *v57++;
      *(a6 + 48) = v89;
    }

    else
    {
      *(a6 + 48) = 0;
    }
  }

LABEL_139:
  v90 = v141;
  if (v26 != 2)
  {
    v91 = *a6 & 0xFFFFDFFF;
    *a6 = v91;
    if (!v12)
    {
      goto LABEL_182;
    }

    if (v12)
    {
      if (v15)
      {
        v95 = *v57++;
        v93 = v95;
      }

      else
      {
        v93 = 1;
      }

      *(a6 + 24) = v93;
    }

    v57 = (v57 + ((4 * v15) & 8) + ((2 * v15) & 8) + ((v15 >> 1) & 4) + ((v15 >> 3) & 4));
    if ((v12 & 0x200) == 0)
    {
      if ((v12 & 0x400) == 0)
      {
        goto LABEL_154;
      }

LABEL_169:
      if ((v15 & 0x400) != 0)
      {
        v102 = *v57;
        v57 += 2;
        *(a6 + 216) = v102;
        if ((v12 & 0x1000) != 0)
        {
          goto LABEL_178;
        }
      }

      else
      {
        *(a6 + 216) = 0;
        if ((v12 & 0x1000) != 0)
        {
          goto LABEL_178;
        }
      }

LABEL_155:
      if ((v12 & 0x2000) == 0)
      {
        goto LABEL_182;
      }

      goto LABEL_156;
    }

    if ((v15 & 0x200) != 0)
    {
      v99 = *v57;
      v57 += 2;
      *(a6 + 208) = v99;
      if ((v12 & 0x400) != 0)
      {
        goto LABEL_169;
      }
    }

    else
    {
      *(a6 + 208) = 0;
      if ((v12 & 0x400) != 0)
      {
        goto LABEL_169;
      }
    }

LABEL_154:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_155;
    }

LABEL_178:
    v91 |= 0x20u;
    *a6 = v91;
    if ((v15 & 0x1000) != 0)
    {
      v103 = *v57;
      v57 += 2;
      *(a6 + 192) = v103;
      if ((v12 & 0x2000) == 0)
      {
        goto LABEL_182;
      }
    }

    else
    {
      *(a6 + 192) = 0;
      if ((v12 & 0x2000) == 0)
      {
        goto LABEL_182;
      }
    }

LABEL_156:
    if ((v15 & 0x2000) != 0)
    {
      v98 = *v57;
      v57 += 2;
      *(a6 + 200) = v98;
    }

    else
    {
      *(a6 + 200) = 0;
    }

    goto LABEL_182;
  }

  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  v91 = *a6 & 0xFFFFFFDF;
  *a6 = v91;
  if (!v90)
  {
    goto LABEL_182;
  }

  if ((v90 & 1) == 0)
  {
    v92 = v138;
    if ((v138 & 2) == 0)
    {
      goto LABEL_164;
    }

LABEL_163:
    v97 = *v57++;
    *(a6 + 28) = v97;
    v91 |= 0x400u;
    *a6 = v91;
    goto LABEL_164;
  }

  v92 = v138;
  if (v138)
  {
    v96 = *v57++;
    v94 = v96;
  }

  else
  {
    v94 = 1;
  }

  *(a6 + 24) = v94;
  if ((v92 & 2) != 0)
  {
    goto LABEL_163;
  }

LABEL_164:
  if ((v90 & 4) != 0)
  {
    if ((v92 & 4) != 0)
    {
      v100 = *v57++;
      v91 = v91 & 0xFFFF9FFF | ((v100 & 3) << 13);
      *a6 = v91;
      v101 = (v100 & 3) == 0 || v21;
      if ((v101 & 1) == 0)
      {
        *(a6 + 120) = vdupq_n_s64(2uLL);
        *(a6 + 136) = 1;
      }
    }

    else
    {
      v91 &= 0xFFFF9FFF;
      *a6 = v91;
    }
  }

LABEL_182:
  v104 = 0;
  if ((v13 & 0x10) != 0 && (v143 & 0x10) != 0)
  {
    v105 = *v57;
    v57 += 2;
    v104 = v105;
  }

  v106 = (v57 + ((v143 >> 2) & 8));
  if ((v13 & 0x40) != 0 && (v143 & 0x40) != 0)
  {
    v107 = *v106++;
    *(a6 + 100) = v107;
  }

  if ((v13 & 0x100) != 0 && (v143 & 0x100) != 0)
  {
    v108 = *v106;
    v106 += 2;
    *(a6 + 144) = v108;
  }

  if ((v13 & 0x200) != 0 && (v143 & 0x200) != 0)
  {
    v91 |= 0x200u;
    *a6 = v91;
    *(a6 + 152) = *v106;
  }

  v109 = (qword_1ED4456EC & ~v10) == 0;
  if ((v91 & 0x4000) != 0)
  {
    *a6 = v91 & 0xFF817FFF | 0x400000;
    *(a6 + 112) = 0;
    if (!v21)
    {
      *(a6 + 120) = vdupq_n_s64(2uLL);
      *(a6 + 136) = xmmword_19605E610;
    }

    v117 = v142;
    if (!v109)
    {
      goto LABEL_242;
    }

    goto LABEL_224;
  }

  v110 = v9;
  MountInfoStorageSize();
  v111 = &v133 - ((MEMORY[0x1EEE9AC00]() + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v140)
  {
    v112 = v140;
    FSID = MountInfoGetFSID(v140);
    v114 = *(a6 + 104);
    if (v114 == FSID)
    {
      v115 = 1;
      v116 = v112;
      goto LABEL_205;
    }
  }

  else
  {
    v114 = *(a6 + 104);
  }

  v144 = 0;
  if (!MountInfoPrepare(&v144, 0, v114, v111, 0, 0, 0))
  {
    *(a6 + 128) = *(a6 + 120);
    v117 = v142;
    goto LABEL_223;
  }

  v115 = 0;
  v116 = v144;
LABEL_205:
  Capabilities = MountInfoGetCapabilities(v116);
  *(a6 + 112) = MountInfoGetMountID(v144);
  *a6 = (Capabilities >> 44) & 0x10000 | (Capabilities >> 36) & 0x8000 | (Capabilities >> 30) & 0x20000 | (Capabilities >> 40) & 0x80000 | (Capabilities >> 29) & 0x100000 | (Capabilities >> 37) & 0x200000 | *a6 & 0xFFC47FFF;
  *a6 = *a6 & 0xFFBFFFFF | (((MountInfoGetVolumeFlags(v144) >> 1) & 1) << 22);
  *(a6 + 96) = MountInfoGetIOBlockSize(v144);
  if ((Capabilities & 0x800000000000) == 0 && (qword_1ED4456EC & ~v10 & 0xFE3FFFFF) == 0)
  {
    v109 = 1;
  }

  v119 = *a6;
  v120 = (*a6 & 0x8000) == 0 || v21;
  v117 = v142;
  if ((v120 & 1) == 0)
  {
    if ((v143 & 0x10) == 0)
    {
      v104 = *(a6 + 120);
    }

    *(a6 + 128) = v104;
  }

  if ((v119 & 0x2000) != 0 && *v137 == 47 && !v137[1])
  {
    VolumeName = MountInfoGetVolumeName(v144);
    if (VolumeName)
    {
      v122 = VolumeName;
      v123 = strlen(VolumeName);
      SetNameAndHiddenFlagsFromCString(v110, v122, v123, a6);
    }
  }

  if ((v115 & 1) == 0)
  {
    MountInfoDestroy(v144);
  }

LABEL_223:
  if (v109)
  {
LABEL_224:
    *a6 |= 0x80u;
    v124 = *(a6 + 224);
    if (v124)
    {
      CFRelease(v124);
      *(a6 + 224) = 0;
    }

    v125 = *(a6 + 40);
    v126 = *(a6 + 44);
    v127 = *(a6 + 16);
    v148 = v117;
    v146 = v126;
    v147 = v125;
    v145 = v127;
    v128 = filesec_init();
    if (!v128)
    {
      goto LABEL_242;
    }

    v129 = v128;
    if (!v117)
    {
      goto LABEL_251;
    }

    if (filesec_set_property(v128, FILESEC_ACL, &v148))
    {
      goto LABEL_241;
    }

    if (!v148)
    {
LABEL_251:
      if (!v139 || uuid_is_null(v139))
      {
LABEL_233:
        if ((!v148 && (!v136 || uuid_is_null(v136)) || !filesec_set_property(v129, FILESEC_GRPUUID, v136)) && !filesec_set_property(v129, FILESEC_OWNER, &v147) && !filesec_set_property(v129, FILESEC_GROUP, &v146) && !filesec_set_property(v129, FILESEC_MODE, &v145))
        {
          v132 = _CFFileSecurityCreateFromFilesec();
          *(a6 + 224) = v132;
          if (v132)
          {
            goto LABEL_242;
          }
        }

        goto LABEL_241;
      }
    }

    if (!filesec_set_property(v129, FILESEC_UUID, v139))
    {
      goto LABEL_233;
    }

LABEL_241:
    filesec_free(v129);
  }

LABEL_242:
  if (v117)
  {
    acl_free(v117);
  }

  result = 0;
LABEL_245:
  v131 = *MEMORY[0x1E69E9840];
  return result;
}

void SetNameAndHiddenFlagsFromCString(CFAllocatorRef alloc, UInt8 *bytes, CFIndex numBytes, uint64_t a4)
{
  v8 = *(a4 + 8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = CFStringCreateWithBytes(alloc, bytes, numBytes, 0x8000100u, 0);
  *(a4 + 8) = v9;
  if (!v9)
  {
    syslog(3, "SetNameAndExtensionLengthFromCString: CFStringCreateWithBytes failed with kCFStringEncodingUTF8; retrying with kCFStringEncodingISOLatin1");
    v10 = CFStringCreateWithBytes(alloc, bytes, numBytes, 0x201u, 0);
    *(a4 + 8) = v10;
    if (!v10)
    {
      syslog(3, "SetNameAndExtensionLengthFromCString: CFStringCreateWithBytes failed with kCFStringEncodingISOLatin1; setting name to empty string");
      *(a4 + 8) = &stru_1F0A862C0;
    }
  }

  v11 = *bytes == 46;
  v12 = *a4 & 0xFFFFF7FF | (v11 << 11);
  *a4 = v12;
  if (v11)
  {
    v13 = (bytes[1] == 46) << 12;
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13 | v12 & 0xFFFFEFFF;
}

uint64_t corePropertyProviderCopyAndCacheValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _FileCacheLock(a2);
  if (a6 < 1)
  {
LABEL_19:
    _FileCacheUnlock(a2);
    return 1;
  }

  v11 = 0;
  v12 = *MEMORY[0x1E695EA38];
  v13 = *MEMORY[0x1E695EBF8];
  while (1)
  {
    cf = 0;
    v14 = *(a5 + 8 * v11);
    if ((*(v14 + 8) & 2) == 0 || !_FileCacheGetPropertyValueForKey(a2, *v14, &cf))
    {
      break;
    }

    if (cf)
    {
      CFRetain(cf);
    }

LABEL_18:
    *(a4 + 8 * v11++) = cf;
    if (a6 == v11)
    {
      goto LABEL_19;
    }
  }

  v15 = *(v14 + 24);
  if (v15)
  {
    Attributes = _FileCacheGetAttributes(a2);
    v17 = v15(a1, Attributes, &cf);
    if (v17 == 2)
    {
      _FileCacheSetPropertyValueForKey(a2, *v14, cf);
    }

    if (cf)
    {
      if (*(v14 + 16) == 7)
      {
        if (CFEqual(*v14, v12))
        {
          v22 = 0;
          if (_FileCacheGetPropertyValueForKey(a2, v13, &v22))
          {
            if (cf != v22 && CFEqual(cf, v22))
            {
              v18 = _FileCacheGetAttributes(a2);
              _FileCacheSetPropertyValueForKey(a2, v13, *(v18 + 232));
            }
          }
        }
      }
    }

    if (v17)
    {
      goto LABEL_18;
    }
  }

  _FileCacheUnlock(a2);
  v20 = 0;
  do
  {
    v21 = *(a4 + 8 * v20);
    if (v21)
    {
      CFRelease(v21);
      *(a4 + 8 * v20) = 0;
    }

    ++v20;
  }

  while (v11 + 1 != v20);
  return 0;
}

uint64_t MountInfoGetVolumeFlags(uint64_t a1)
{
  v1 = *(a1 + 64);
  if ((*(a1 + 2136) & 2) != 0)
  {
    v3 = 64;
  }

  else
  {
    v2 = strcmp((a1 + 72), "lifs");
    v3 = 128;
    if (!v2)
    {
      v3 = 64;
    }
  }

  v4 = vdupq_n_s32(v1);
  v5 = vshlq_u32(v4, xmmword_19605E940);
  v5.i32[3] = vshlq_u32(v4, xmmword_19605E950).i32[3];
  v6 = vandq_s8(v5, xmmword_19605E960);
  *v6.i8 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v7 = v3 | (v1 << 9) & 0x800000 | (v6.i32[0] | (v1 >> 6) & 0x10 | v6.i32[1]) ^ 1;
  if ((v1 & 0x80) != 0)
  {
    v7 |= 0x3000000uLL;
  }

  return v7 | (32 * v1) & 0x4000000;
}

uint64_t createIsMountTriggerValue(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*a2 & 0x4000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createNameValue(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a3 = v4;
  return 1;
}

uint64_t createVolumeIDValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v4 = (a2 + 112);
  if (*(a2 + 112))
  {
    v5 = CFGetAllocator(a1);
    v6 = CFNumberCreate(v5, kCFNumberSInt32Type, v4);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return 1;
}

uint64_t createCanonicalPathValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a2 + 1) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 232);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *a3 = v5;
  return 1;
}

uint64_t _FileCacheGetPropertyValueForKey(uint64_t a1, const void *a2, void **a3)
{
  value = 0;
  _FileCacheLock(a1);
  v6 = *(a1 + 288);
  if (v6 && CFDictionaryGetValueIfPresent(v6, a2, &value))
  {
    *a3 = value;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32) - 1;
  *(a1 + 32) = v8;
  if (!v8)
  {
    *(a1 + 24) = 0;
    os_unfair_lock_unlock((a1 + 36));
  }

  return v7;
}

uint64_t _FileCacheInitClass(void)
{
  if (_FileCacheInitClass(void)::once != -1)
  {
    _FileCacheInitClass();
  }

  return sFileCacheTypeID;
}

void registerCoreProperties(void)
{
  v6[69] = *MEMORY[0x1E69E9840];
  if ((byte_1ED44592C & 1) == 0)
  {
    registerCoreProperties();
  }

  MEMORY[0x1EEE9AC00]();
  v0 = 0;
  v1 = &unk_1EAEF8688;
  memset(v6, 0, 512);
  do
  {
    *&v2 = *(v1 - 4);
    *(&v2 + 1) = *v1;
    *&v6[v0] = v2;
    v1 += 8;
    v0 += 2;
  }

  while (v0 != 68);
  v3 = 0;
  qword_1ED4458A8 = _RegisterFilePropertyProvider(off_1F0A85840, 0, v6, 0x44uLL);
  v4 = &qword_1EAEF8668;
  do
  {
    _RegisterFilePropertyWithOptions(v6[v3++], v4[1], 0, 0, v4);
    v4 += 4;
  }

  while (v3 != 68);
  v5 = *MEMORY[0x1E69E9840];
}

double registerCoreProperties()
{
  qword_1EAEF8668 = *MEMORY[0x1E695EB28];
  *&qword_1EAEF8670 = xmmword_19605E610;
  v0 = *MEMORY[0x1E695EBE8];
  qword_1EAEF8680 = createIsDirectoryValue;
  unk_1EAEF8688 = v0;
  unk_1EAEF8690 = xmmword_19605E610;
  v1 = *MEMORY[0x1E695EB40];
  qword_1EAEF86A0 = createNameValue;
  unk_1EAEF86A8 = v1;
  unk_1EAEF86B0 = xmmword_19605E620;
  v2 = *MEMORY[0x1E695EB90];
  qword_1EAEF86C0 = createIsHiddenValue;
  unk_1EAEF86C8 = v2;
  unk_1EAEF86D0 = xmmword_19605E610;
  v3 = *MEMORY[0x1E695EB80];
  qword_1EAEF86E0 = createIsUserImmutableValue;
  unk_1EAEF86E8 = v3;
  unk_1EAEF86F0 = xmmword_19605E610;
  v4 = *MEMORY[0x1E695EBB8];
  qword_1EAEF8700 = createIsSystemImmutableValue;
  unk_1EAEF8708 = v4;
  unk_1EAEF8710 = xmmword_19605E610;
  v5 = *MEMORY[0x1E695E340];
  qword_1EAEF8720 = createLinkCountValue;
  unk_1EAEF8728 = v5;
  result = 0.0;
  unk_1EAEF8730 = 0u;
  v7 = *MEMORY[0x1E695E318];
  qword_1EAEF8740 = createIsSystemNoUnlinkValue;
  unk_1EAEF8748 = v7;
  unk_1EAEF8750 = 0u;
  v8 = *MEMORY[0x1E695E320];
  qword_1EAEF8760 = createIsRestrictedValue;
  unk_1EAEF8768 = v8;
  xmmword_1EAEF8770 = 0u;
  v9 = *MEMORY[0x1E695E348];
  qword_1EAEF8780 = createIsSystemAppendValue;
  unk_1EAEF8788 = v9;
  xmmword_1EAEF8790 = 0u;
  v10 = *MEMORY[0x1E695EA00];
  qword_1EAEF87A0 = createIsUserAppendValue;
  unk_1EAEF87A8 = v10;
  xmmword_1EAEF87B0 = xmmword_19605E610;
  v11 = *MEMORY[0x1E695EAF0];
  qword_1EAEF87C0 = createAddedToDirectoryDateValue;
  unk_1EAEF87C8 = v11;
  xmmword_1EAEF87D0 = xmmword_19605E630;
  v12 = *MEMORY[0x1E695EB68];
  qword_1EAEF87E0 = createFileSizeValue;
  unk_1EAEF87E8 = v12;
  xmmword_1EAEF87F0 = xmmword_19605E610;
  v13 = *MEMORY[0x1E695EB78];
  qword_1EAEF8800 = createIsRegularFileValue;
  unk_1EAEF8808 = v13;
  xmmword_1EAEF8810 = xmmword_19605E610;
  v14 = *MEMORY[0x1E695EB18];
  qword_1EAEF8820 = createIsSymbolicLinkValue;
  unk_1EAEF8828 = v14;
  xmmword_1EAEF8830 = xmmword_19605E620;
  v15 = *MEMORY[0x1E695EB98];
  qword_1EAEF8840 = createIsAliasFileValue;
  unk_1EAEF8848 = v15;
  xmmword_1EAEF8850 = xmmword_19605E610;
  v16 = *MEMORY[0x1E695EA68];
  qword_1EAEF8860 = createIsVolumeValue;
  unk_1EAEF8868 = v16;
  xmmword_1EAEF8870 = xmmword_19605E630;
  qword_1EAEF8880 = createFileAllocatedSizeValue;
  qword_1EAEF8888 = *MEMORY[0x1E695E2C0];
  xmmword_1EAEF8890 = vdupq_n_s64(2uLL);
  qword_1EAEF88A0 = createFinderInfoValue;
  qword_1EAEF88A8 = *MEMORY[0x1E695E2B8];
  xmmword_1EAEF88B0 = xmmword_19605E640;
  qword_1EAEF88C0 = createFileSizeOfResourceForkValue;
  qword_1EAEF88C8 = *MEMORY[0x1E695E2A0];
  xmmword_1EAEF88D0 = xmmword_19605E640;
  qword_1EAEF88E0 = createFileAllocatedSizeOfResourceForkValue;
  qword_1EAEF88E8 = *MEMORY[0x1E695E2F8];
  xmmword_1EAEF88F0 = 0u;
  qword_1EAEF8900 = createIsCompressedValue;
  qword_1EAEF8908 = *MEMORY[0x1E695E3A8];
  xmmword_1EAEF8910 = xmmword_19605E650;
  qword_1EAEF8920 = createParentDirectoryIsVolumeRoot;
  qword_1EAEF8928 = *MEMORY[0x1E695E2B0];
  xmmword_1EAEF8930 = xmmword_19605E650;
  qword_1EAEF8940 = createFileIDValue;
  qword_1EAEF8948 = *MEMORY[0x1E695EA48];
  xmmword_1EAEF8950 = xmmword_19605E610;
  qword_1EAEF8960 = createContentModificationDateValue;
  qword_1EAEF8968 = *MEMORY[0x1E695EA08];
  xmmword_1EAEF8970 = xmmword_19605E610;
  qword_1EAEF8980 = createAttributeModificationDateValue;
  qword_1EAEF8988 = *MEMORY[0x1E695EA50];
  xmmword_1EAEF8990 = xmmword_19605E610;
  qword_1EAEF89A0 = createCreationDateValue;
  qword_1EAEF89A8 = *MEMORY[0x1E695EB10];
  xmmword_1EAEF89B0 = xmmword_19605E620;
  qword_1EAEF89C0 = createHasHiddenExtensionValue;
  qword_1EAEF89C8 = *MEMORY[0x1E695EB60];
  xmmword_1EAEF89D0 = vdupq_n_s64(1uLL);
  qword_1EAEF89E0 = createIsReadableValue;
  qword_1EAEF89E8 = *MEMORY[0x1E695EBA0];
  xmmword_1EAEF89F0 = xmmword_1EAEF89D0;
  qword_1EAEF8A00 = createIsWriteableValue;
  qword_1EAEF8A08 = *MEMORY[0x1E695EB38];
  xmmword_1EAEF8A10 = xmmword_1EAEF89D0;
  qword_1EAEF8A20 = createIsExecutableValue;
  qword_1EAEF8A28 = *MEMORY[0x1E695EBB0];
  xmmword_1EAEF8A30 = xmmword_19605E620;
  qword_1EAEF8A40 = createLabelNumberValue;
  qword_1EAEF8A48 = *MEMORY[0x1E695EAE8];
  xmmword_1EAEF8A50 = xmmword_19605E660;
  qword_1EAEF8A60 = createFileSecurityValue;
  qword_1EAEF8A68 = *MEMORY[0x1E695EAA8];
  xmmword_1EAEF8A70 = xmmword_19605E610;
  qword_1EAEF8A80 = createFileProtectionValue;
  qword_1EAEF8A88 = *MEMORY[0x1E695EA40];
  xmmword_1EAEF8A90 = xmmword_19605E610;
  qword_1EAEF8AA0 = createContentAccessDateValue;
  qword_1EAEF8AA8 = *MEMORY[0x1E695EC20];
  xmmword_1EAEF8AB0 = xmmword_19605E670;
  qword_1EAEF8AC0 = createTotalFileSizeValue;
  qword_1EAEF8AC8 = *MEMORY[0x1E695EC18];
  xmmword_1EAEF8AD0 = xmmword_19605E670;
  qword_1EAEF8AE0 = createTotalFileAllocatedSizeValue;
  qword_1EAEF8AE8 = *MEMORY[0x1E695EAB8];
  xmmword_1EAEF8AF0 = xmmword_19605E680;
  qword_1EAEF8B00 = createFileResourceIdentifierValue;
  qword_1EAEF8B08 = *MEMORY[0x1E695EAF8];
  xmmword_1EAEF8B10 = xmmword_19605E680;
  qword_1EAEF8B20 = createGenerationIdentifierValue;
  qword_1EAEF8B28 = *MEMORY[0x1E695EA60];
  xmmword_1EAEF8B30 = xmmword_19605E610;
  qword_1EAEF8B40 = createDocumentIdentifierValue;
  qword_1EAEF8B48 = *MEMORY[0x1E695EAC8];
  xmmword_1EAEF8B50 = xmmword_19605E610;
  qword_1EAEF8B60 = createFileResourceTypeValue;
  qword_1EAEF8B68 = *MEMORY[0x1E695EC00];
  xmmword_1EAEF8B70 = xmmword_19605E610;
  qword_1EAEF8B80 = createPreferredIOBlockSizeValue;
  qword_1EAEF8B88 = *MEMORY[0x1E695EB48];
  xmmword_1EAEF8B90 = xmmword_19605E610;
  qword_1EAEF8BA0 = createIsMountTriggerValue;
  qword_1EAEF8BA8 = *MEMORY[0x1E695EA38];
  xmmword_1EAEF8BB0 = xmmword_19605E690;
  qword_1EAEF8BC0 = createCanonicalPathValue;
  qword_1EAEF8BC8 = *MEMORY[0x1E695EA88];
  xmmword_1EAEF8BD0 = xmmword_19605E650;
  qword_1EAEF8BE0 = createInodeNumberValue;
  qword_1EAEF8BE8 = *MEMORY[0x1E695EA70];
  xmmword_1EAEF8BF0 = xmmword_19605E650;
  qword_1EAEF8C00 = createFileContentIdentifierValue;
  qword_1EAEF8C08 = *MEMORY[0x1E695EBE0];
  xmmword_1EAEF8C10 = 0u;
  qword_1EAEF8C20 = createMayShareFileContentValue;
  qword_1EAEF8C28 = *MEMORY[0x1E695EBD8];
  xmmword_1EAEF8C30 = 0u;
  qword_1EAEF8C40 = createMayHaveExtendedAttributesValue;
  qword_1EAEF8C48 = *MEMORY[0x1E695EB58];
  xmmword_1EAEF8C50 = 0u;
  qword_1EAEF8C60 = createIsPurgeableValue;
  qword_1EAEF8C68 = *MEMORY[0x1E695EB70];
  xmmword_1EAEF8C70 = 0u;
  qword_1EAEF8C80 = createIsSparseValue;
  qword_1EAEF8C88 = *MEMORY[0x1E695EA58];
  xmmword_1EAEF8C90 = xmmword_19605E6A0;
  qword_1EAEF8CA0 = createDirectoryEntryCountValue;
  qword_1EAEF8CA8 = *MEMORY[0x1E695E298];
  xmmword_1EAEF8CB0 = xmmword_19605E6B0;
  qword_1EAEF8CC0 = createFaultLogicalFileIsHiddenValue;
  qword_1EAEF8CC8 = *MEMORY[0x1E695E390];
  xmmword_1EAEF8CD0 = 0u;
  qword_1EAEF8CE0 = createNameExtensionValue;
  qword_1EAEF8CE8 = *MEMORY[0x1E695E420];
  xmmword_1EAEF8CF0 = 0u;
  qword_1EAEF8D00 = createVolumeIsHFSStandardValue;
  qword_1EAEF8D08 = *MEMORY[0x1E695E358];
  xmmword_1EAEF8D10 = 0u;
  qword_1EAEF8D20 = createIsUserNoDumpValue;
  qword_1EAEF8D28 = *MEMORY[0x1E695E360];
  xmmword_1EAEF8D30 = 0u;
  qword_1EAEF8D40 = createIsUserOpaqueValue;
  qword_1EAEF8D48 = *MEMORY[0x1E695E368];
  xmmword_1EAEF8D50 = 0u;
  qword_1EAEF8D60 = createIsUserTrackedValue;
  qword_1EAEF8D68 = *MEMORY[0x1E695E350];
  xmmword_1EAEF8D70 = 0u;
  qword_1EAEF8D80 = createIsUserDataVaultValue;
  qword_1EAEF8D88 = *MEMORY[0x1E695E328];
  xmmword_1EAEF8D90 = 0u;
  qword_1EAEF8DA0 = createIsSystemArchivedValue;
  qword_1EAEF8DA8 = *MEMORY[0x1E695E3F0];
  xmmword_1EAEF8DB0 = 0u;
  qword_1EAEF8DC0 = createVolumeIDValue;
  qword_1EAEF8DC8 = *MEMORY[0x1E695E2F0];
  xmmword_1EAEF8DD0 = xmmword_19605E650;
  qword_1EAEF8DE0 = createInodeNumberValue;
  qword_1EAEF8DE8 = *MEMORY[0x1E695E3A0];
  xmmword_1EAEF8DF0 = xmmword_19605E650;
  qword_1EAEF8E00 = createParentDirectoryIDValue;
  qword_1EAEF8E08 = *MEMORY[0x1E695E398];
  xmmword_1EAEF8E10 = 0u;
  qword_1EAEF8E20 = createOwnerIDValue;
  qword_1EAEF8E28 = *MEMORY[0x1E695E2D0];
  xmmword_1EAEF8E30 = 0u;
  qword_1EAEF8E40 = createGroupIDValue;
  qword_1EAEF8E48 = *MEMORY[0x1E695E3C0];
  xmmword_1EAEF8E50 = 0u;
  qword_1EAEF8E60 = createStatModeValue;
  qword_1EAEF8E68 = *MEMORY[0x1E695E338];
  xmmword_1EAEF8E70 = 0u;
  qword_1EAEF8E80 = createIsSystemFirmlinkValue;
  qword_1EAEF8E88 = *MEMORY[0x1E695E330];
  xmmword_1EAEF8E90 = 0u;
  qword_1EAEF8EA0 = createIsSystemDatalessValue;
  qword_1EAEF8EA8 = *MEMORY[0x1E695E2A8];
  xmmword_1EAEF8EB0 = 0u;
  qword_1EAEF8EC0 = createFileFlagsValue;
  qword_1EAEF8EC8 = *MEMORY[0x1E695E2C8];
  xmmword_1EAEF8ED0 = 0u;
  qword_1EAEF8EE0 = createGenerationCountValue;
  byte_1ED44592C = 1;
  return result;
}

os_log_t init_logging(void)
{
  defaultLog = os_log_create("com.apple.FileURL", "default");
  securityScopedLog = os_log_create("com.apple.FileURL", "scoped");
  bmarkLog = os_log_create("com.apple.FileURL", "bookmark");
  resolveLog = os_log_create("com.apple.FileURL", "resolve");
  result = os_log_create("com.apple.FileURL", "alias");
  aliasLog = result;
  return result;
}

void observerCall(__CFRunLoopObserver *a1, unint64_t a2, void *a3)
{
  v4 = seedGlobals;
  if (seedGlobals < 0)
  {
    v4 = -1;
  }

  seedGlobals = v4 + 1;
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveObserver(Current, a1, *MEMORY[0x1E695E8D0]);
  seedGlobals = 0;
}

uint64_t MountInfoPrepare(void *a1, int a2, int a3, char *a4, uint64_t a5, const __CFString *a6, CFErrorRef *a7)
{
  v107 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
LABEL_17:
    result = 1;
    goto LABEL_18;
  }

  if (a2)
  {
    a3 = a2;
  }

  bzero(a4, 0xBD0uLL);
  if (CreateMountInfo(int,MountInfoBuf *)::onceToken != -1)
  {
    MountInfoPrepare_cold_1();
  }

  os_unfair_lock_lock(&sMountEntrysSpinLock);
  v12 = 1;
  atomic_compare_exchange_strong(sEntriesChanged, &v12, 0);
  v13 = sMountEntrys;
  if (v12 == 1 && sMountEntrys != 0)
  {
    do
    {
      sMountEntrys = *v13;
      free(v13);
      v13 = sMountEntrys;
    }

    while (sMountEntrys);
  }

  v15 = &sMountEntrys;
  while (1)
  {
    v15 = *v15;
    if (!v15)
    {
      break;
    }

    if (*(v15 + 14) == a3)
    {
      memcpy(a4, v15 + 1, 0xBD0uLL);
LABEL_16:
      os_unfair_lock_unlock(&sMountEntrysSpinLock);
      *a1 = a4;
      goto LABEL_17;
    }
  }

  v97 = 0;
  v18 = getmntinfo_r_np(&v97, 2);
  if (v18)
  {
    v19 = v97;
    if (v18 < 1)
    {
LABEL_24:
      v22 = 2;
    }

    else
    {
      v20 = v18;
      v21 = v97;
      while (v21->f_fsid.val[0] != a3)
      {
        ++v21;
        if (!--v20)
        {
          goto LABEL_24;
        }
      }

      memcpy(a4, v21, 0x878uLL);
      v22 = 0;
    }

    free(v19);
    if (!v22)
    {
LABEL_29:
      v94 = xmmword_19605E990;
      v95 = 0;
      bzero(&v97, 0x388uLL);
      v22 = filtered_getattrlist(a4 + 88, &v94, &v97, 0x388uLL, 9u);
      if (!v22)
      {
        v25 = v98;
        if ((v98 & 0x20000) != 0)
        {
          *v23.i8 = v101;
          *v24.i8 = v102;
          v28 = vdupq_lane_s32(v101, 0);
          v29 = vdupq_lane_s32(v102, 0);
          v30 = vdupq_lane_s32(v101, 1);
          v31 = vandq_s8(v30, xmmword_19605E840);
          v32 = vceqzq_s32(vandq_s8(v30, xmmword_19605E850));
          v33.i64[0] = v32.i32[2];
          v33.i64[1] = v32.i32[3];
          v34 = v33;
          v35 = vceqzq_s32(v31);
          v33.i64[0] = v35.i32[2];
          v33.i64[1] = v35.i32[3];
          v36 = v33;
          v33.i64[0] = v32.i32[0];
          v33.i64[1] = v32.i32[1];
          v37 = v33;
          v38 = vdupq_lane_s32(v102, 1);
          v33.i64[0] = v35.i32[0];
          v33.i64[1] = v35.i32[1];
          v39 = v33;
          v40 = vandq_s8(v38, xmmword_19605E850);
          v41 = vandq_s8(v38, xmmword_19605E840);
          v33.i64[0] = v41.u32[0];
          v33.i64[1] = v41.u32[1];
          v42 = v33;
          v33.i64[0] = v40.u32[0];
          v33.i64[1] = v40.u32[1];
          v43 = v33;
          v33.i64[0] = v41.u32[2];
          v33.i64[1] = v41.u32[3];
          v44 = v33;
          v33.i64[0] = v40.u32[2];
          v33.i64[1] = v40.u32[3];
          v45 = vshlq_n_s64(v44, 0x2CuLL);
          v46 = vbicq_s8(vshlq_u64(v42, xmmword_19605E880), v39);
          v47 = vbicq_s8(vshlq_u64(v43, xmmword_19605E870), v37);
          v48 = vbicq_s8(v45, v36);
          v49 = vbicq_s8(vshlq_u64(v33, xmmword_19605E860), v34);
          v50 = vandq_s8(v28, xmmword_19605E890);
          v51 = vandq_s8(v28, xmmword_19605E8A0);
          v52 = vceqzq_s32(vandq_s8(v28, xmmword_19605E8C0));
          v33.i64[0] = v52.i32[2];
          v33.i64[1] = v52.i32[3];
          v53 = v33;
          v54 = vceqzq_s32(vandq_s8(vzip1q_s32(v23, v23), xmmword_19605E8B0));
          v33.i64[0] = v54.i32[2];
          v33.i64[1] = v54.i32[3];
          v55 = v33;
          v56 = vceqzq_s32(v51);
          v33.i64[0] = v56.i32[2];
          v33.i64[1] = v56.i32[3];
          v57 = v33;
          v58 = vceqzq_s32(v50);
          v33.i64[0] = v58.i32[2];
          v33.i64[1] = v58.i32[3];
          v59 = v33;
          v33.i64[0] = v52.i32[0];
          v33.i64[1] = v52.i32[1];
          v60 = v33;
          v33.i64[0] = v54.i32[0];
          v33.i64[1] = v54.i32[1];
          v61 = v33;
          v33.i64[0] = v56.i32[0];
          v33.i64[1] = v56.i32[1];
          v62 = v33;
          v33.i64[0] = v58.i32[0];
          v33.i64[1] = v58.i32[1];
          v63 = v33;
          v64 = vandq_s8(v29, xmmword_19605E8C0);
          v65 = vandq_s8(vzip1q_s32(v24, v24), xmmword_19605E8B0);
          v66 = vandq_s8(v29, xmmword_19605E8A0);
          v67 = vandq_s8(v29, xmmword_19605E890);
          v33.i64[0] = v67.u32[0];
          v33.i64[1] = v67.u32[1];
          v68 = v33;
          v33.i64[0] = v66.u32[0];
          v33.i64[1] = v66.u32[1];
          v69 = v33;
          v33.i64[0] = v65.u32[0];
          v33.i64[1] = v65.u32[1];
          v70 = v33;
          v33.i64[0] = v64.u32[0];
          v33.i64[1] = v64.u32[1];
          v71 = v33;
          v33.i64[0] = v67.u32[2];
          v33.i64[1] = v67.u32[3];
          v72 = v33;
          v33.i64[0] = v66.u32[2];
          v33.i64[1] = v66.u32[3];
          v73 = v33;
          v33.i64[0] = v65.u32[2];
          v33.i64[1] = v65.u32[3];
          v74 = v33;
          v33.i64[0] = v64.u32[2];
          v33.i64[1] = v64.u32[3];
          v75 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vbicq_s8(vshlq_u64(v69, xmmword_19605E920), v62), vbicq_s8(vshlq_u64(v68, xmmword_19605E930), v63)), vorrq_s8(vbicq_s8(vshlq_u64(v71, xmmword_19605E910), v60), vbicq_s8(vshlq_n_s64(v70, 0x30uLL), v61))), vorrq_s8(vorrq_s8(vbicq_s8(vshlq_u64(v73, xmmword_19605E8F0), v57), vbicq_s8(vshlq_u64(v72, xmmword_19605E900), v59)), vorrq_s8(vbicq_s8(vshlq_u64(v33, xmmword_19605E8D0), v53), vbicq_s8(vshlq_u64(v74, xmmword_19605E8E0), v55)))), vorrq_s8(vorrq_s8(v47, v46), vorrq_s8(v49, v48)));
          v76 = vorr_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
          v77 = v76;
          if ((v102.i16[0] & 0x8000) == 0 || (v101.i16[0] & 0x8000) == 0)
          {
            v77 = *&v76 | 0x100000000000000;
          }

          if (v101.i16[2] < 0)
          {
            v79 = (v102.i16[2] & 0x8000) << 42;
          }

          else
          {
            v79 = 0;
          }

          v80 = (v102.i16[0] & 0x2000) << 45;
          if ((v101.i16[0] & 0x2000) == 0)
          {
            v80 = 0;
          }

          v81 = (v102.i32[0] & 0x10000) << 43;
          if ((v101.i32[0] & 0x10000) == 0)
          {
            v81 = 0;
          }

          if ((v101.i32[0] & 0x20000) != 0)
          {
            v82 = (v102.i32[0] & 0x20000) << 43;
          }

          else
          {
            v82 = 0;
          }

          *(a4 + 369) = v81 | v80 | v82 | v79 | v46.i64[1] | v48.i64[0] | v48.i64[1] | v77;
          if ((BYTE5(v97) & 2) != 0)
          {
            *(a4 + 2168) = v99;
          }

          if ((v25 & 0x2000) != 0)
          {
            v87 = a4 + 2184;
            v88 = v100 + v100[0];
          }

          else
          {
            if ((a4[65] & 0x10) != 0)
            {
              goto LABEL_58;
            }

            v83 = a4 + 1112;
            v84 = strlen(a4 + 1112);
            if (v84)
            {
              v85 = v84 - 1;
              if (v83[v84 - 1] == 47)
              {
                strncpy(__dst, a4 + 1112, v85);
                __dst[v85] = 0;
                v83 = __dst;
              }

              v84 = strrchr(v83, 47);
              if (!v84)
              {
LABEL_58:
                v84 = strrchr(a4 + 88, 47);
              }
            }

            if (v84)
            {
              v86 = v84;
            }

            else
            {
              v86 = a4 + 88;
            }

            if (strlen(v86) != 1 && *v86 == 47)
            {
              ++v86;
            }

            v87 = a4 + 2184;
            v88 = v86;
          }

          strlcpy(v87, v88, 0x2FEuLL);
          v89 = v98;
          if ((v98 & 0x40000) != 0)
          {
            uuid_copy(a4 + 3000, v103);
            v89 = v98;
          }

          if ((v89 & 0x40000000) != 0)
          {
            v90 = v105;
            *(a4 + 185) = v104;
            *(a4 + 186) = v90;
            *(a4 + 374) = v106;
          }

          v91 = pathconf(a4 + 88, 18);
          if (v91 == -1)
          {
            if (a4[2958])
            {
              v92 = 0x20000000000;
            }

            else
            {
              v92 = -1;
            }
          }

          else if (v91 < 65)
          {
            if (v91 > 31)
            {
              v92 = 0xFFFFFFFFFFFFFFFFLL >> (65 - v91);
            }

            else
            {
              v92 = 0x7FFFFFFFLL;
            }
          }

          else
          {
            v92 = 0x7FFFFFFFFFFFFFFFLL;
          }

          *(a4 + 377) = v92;
          v93 = malloc_type_malloc(0xBD8uLL, 0x1020040C75464EAuLL);
          memcpy(v93 + 1, a4, 0xBD0uLL);
          *v93 = sMountEntrys;
          sMountEntrys = v93;
          goto LABEL_16;
        }

        v22 = 2;
      }
    }
  }

  else
  {
    v22 = *__error();
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  os_unfair_lock_unlock(&sMountEntrysSpinLock);
  result = 0;
  if (a6 && a7)
  {
    v26 = CFGetAllocator(a6);
    v27 = _FSURLCreateStandardError(v26, *MEMORY[0x1E695E640], v22, 0, a6, 0);
    result = 0;
    *a7 = v27;
  }

LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void ___Z15initGlobalsOncev_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  init_logging();
  v15 = 16;
  if (sysctlbyname("kern.osproductversion", buf, &v15, 0, 0) || ((v1 = bswap64(*buf | (v17 << 32)), v2 = v1 > 0x31302E3135000000, v3 = v1 < 0x31302E3135000000, !v2) ? (v4 = 0) : (v4 = 1), v3 == v4))
  {
    v0 = 252;
  }

  else
  {
    v0 = 8188;
  }

  v5.i64[0] = 0x3FF0FFFFFFLL;
  v5.i32[2] = 14335;
  v5.i32[3] = v0;
  v6 = 8u;
  do
  {
    *(&corePropertyAttrListTable + v6) = vandq_s8(*(&corePropertyAttrListTable + v6), v5);
    v6 += 24;
  }

  while (v6 != 224);
  sFileProviderGlobals[0] = _FileCacheInitClass();
  v7 = *MEMORY[0x1E695E480];
  qword_1ED4458B8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  qword_1ED4458C8 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  v8 = defaultLog;
  if (os_signpost_enabled(defaultLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19602C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Register Property Providers", &unk_19605FDB3, buf, 2u);
  }

  registerCoreProperties();
  registerPathURLProperties();
  registerVolumeProperties();
  v9 = _LSRegisterFilePropertyProvider();
  registerExternalProviderProperties(v9, v10, v11, v12);
  v13 = defaultLog;
  if (os_signpost_enabled(defaultLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19602C000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Register Property Providers", &unk_19605FDB3, buf, 2u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t ___Z19_FileCacheInitClassv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  sFileCacheTypeID = result;
  return result;
}

uint64_t _RegisterFilePropertyProvider(_OWORD *a1, uint64_t a2, const __CFString **a3, size_t count)
{
  v4 = count;
  v6 = qword_1ED445788++;
  v7 = &sFileProviderGlobals[7 * v6];
  *(v7 + 4) = v6;
  v8 = v7 + 2;
  v8[1] = a2;
  *(v8 + 1) = *a1;
  *(v8 + 2) = a1[1];
  *(v8 + 1) = 0;
  v8[6] = malloc_type_calloc(count, 0x94uLL, 0x10E0040CEEF78F5uLL);
  if (v4 >= 1)
  {
    v9 = *MEMORY[0x1E695E480];
    do
    {
      v10 = *a3++;
      v11 = *(v8 + 1);
      *(v8 + 1) = v11 + 1;
      v12 = v8[6] + 148 * v11;
      *(v12 + 136) = v11;
      Copy = CFStringCreateCopy(v9, v10);
      *(v12 + 8) = Copy;
      *(v12 + 140) = v8;
      CFDictionaryAddValue(qword_1ED4458B8, Copy, v12);
      --v4;
    }

    while (v4);
  }

  return v6;
}

void _RegisterFilePropertyWithOptions(void *key, char a2, const void **a3, uint64_t a4, uint64_t a5)
{
  Value = CFDictionaryGetValue(qword_1ED4458B8, key);
  if (a2)
  {
    CFArrayAppendValue(qword_1ED4458C8, key);
  }

  if (a4)
  {
    if (a4 >= 1)
    {
      do
      {
        v11 = CFDictionaryGetValue(qword_1ED4458B8, *a3);
        if (v11)
        {
          addPropertyAndDependenciesToBitmap(v11, (Value + 16));
        }

        ++a3;
        --a4;
      }

      while (a4);
    }

    if (qword_1ED445788 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = &Value[12 * v12 + 16];
        v14 = *v13;
        v34 = 0;
        v35 = v14;
        v36 = *(v13 + 8);
        v33 = 0;
        if (PropertyMaskIsNotZero(&v35, &v34, &v33) && v34 <= v33)
        {
          v15 = v35;
          v16 = v36;
          v17 = v33 - v34 + 1;
          v18 = sFileProviderGlobals[7 * v12 + 8] + 148 * v34;
          do
          {
            v19 = *(v18 + 136);
            v20 = 1 << v19;
            v21 = v19 < 64;
            if (v19 >= 64)
            {
              v22 = 0;
            }

            else
            {
              v22 = 1 << v19;
            }

            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v20;
            }

            v24 = v16 & v23;
            if ((v22 & v15) != 0 || v24 != 0)
            {
              v26 = *(Value + 34);
              v27 = 1 << v26;
              v28 = v26 < 64;
              if (v26 >= 64)
              {
                v29 = 0;
              }

              else
              {
                v29 = 1 << v26;
              }

              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27;
              }

              v31 = v18 + 12 * **(Value + 140);
              v32 = *(v31 + 84) | v30;
              *(v31 + 76) |= v29;
              *(v31 + 84) = v32;
            }

            v18 += 148;
            --v17;
          }

          while (v17);
        }

        ++v12;
      }

      while (v12 < qword_1ED445788);
    }
  }

  *Value = a5;
}

void registerPathURLProperties()
{
  *algn_1ED445950 = *MEMORY[0x1E695EB98];
  *&algn_1ED445950[8] = *MEMORY[0x1E695E3A0];
  byte_1ED44592D = 1;
}

{
  unk_1ED445960 = *MEMORY[0x1E695EE48];
  qword_1ED445968 = 1;
  unk_1ED445970 = MEMORY[0x1E695EB98];
  qword_1ED445978 = 1;
  unk_1ED445980 = *MEMORY[0x1E695EBF0];
  unk_1ED445988 = 1;
  unk_1ED445990 = algn_1ED445950;
  unk_1ED445998 = 2;
  unk_1ED4459A0 = *MEMORY[0x1E695EB30];
  unk_1ED4459A8 = 1;
  unk_1ED4459B8 = 0;
  unk_1ED4459B0 = 0;
  unk_1ED4459C0 = *MEMORY[0x1E695EBF8];
  unk_1ED4459C8 = 1;
  unk_1ED4459D8 = 0;
  unk_1ED4459D0 = 0;
  unk_1ED4459E0 = *MEMORY[0x1E695E300];
  unk_1ED4459F0 = 0;
  unk_1ED4459E8 = 0;
  unk_1ED4459F8 = 0;
  unk_1ED445A00 = *MEMORY[0x1E695E308];
  unk_1ED445A10 = 0;
  unk_1ED445A18 = 0;
  unk_1ED445A08 = 0;
  byte_1ED44592E = 1;
}

void registerPathURLProperties(void)
{
  v6[7] = *MEMORY[0x1E69E9840];
  if ((byte_1ED44592D & 1) == 0)
  {
    registerPathURLProperties();
  }

  if ((byte_1ED44592E & 1) == 0)
  {
    registerPathURLProperties();
  }

  MEMORY[0x1EEE9AC00]();
  v0 = 0;
  memset(v6, 0, 48);
  v1 = &unk_1ED445980;
  do
  {
    *&v2 = *(v1 - 4);
    *(&v2 + 1) = *v1;
    *&v6[v0] = v2;
    v1 += 8;
    v0 += 2;
  }

  while (v0 != 6);
  _RegisterFilePropertyProvider(off_1F0A85880, 0, v6, 6uLL);
  v3 = 0;
  v4 = &unk_1ED445960;
  do
  {
    _RegisterFilePropertyWithOptions(v6[v3++], *(v4 + 1), *(v4 + 2), *(v4 + 3), v4);
    v4 += 32;
  }

  while (v3 != 6);
  v5 = *MEMORY[0x1E69E9840];
}

void registerVolumeProperties(void)
{
  v10[59] = *MEMORY[0x1E69E9840];
  if ((byte_1ED44592F & 1) == 0)
  {
    registerVolumeProperties();
  }

  MEMORY[0x1EEE9AC00]();
  v0 = 0;
  v1 = &qword_1EAEF7F48;
  memset(v10, 0, 464);
  do
  {
    *&v2 = *(v1 - 4);
    *(&v2 + 1) = *v1;
    *&v10[v0] = v2;
    v1 += 8;
    v0 += 2;
  }

  while (v0 != 58);
  v3 = 0;
  qword_1ED4458B0 = _RegisterFilePropertyProvider(off_1F0A858A0, 0, v10, 0x3AuLL);
  v4 = &qword_1EAEF7F30;
  v5 = &qword_1EAEF7F30;
  do
  {
    v6 = v10[v3];
    v7 = *v5;
    v5 += 4;
    v8 = CFEqual(v7, @"__kCFURLNoDependsVolumeInformationKey") == 0;
    _RegisterFilePropertyWithOptions(v6, 0, v4, v8, (v4 - 1));
    ++v3;
    v4 = v5;
  }

  while (v3 != 58);
  v9 = *MEMORY[0x1E69E9840];
}

void registerExternalProviderProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals_1 & 1) == 0)
  {
    registerExternalProviderProperties_cold_1();
  }

  if ((byte_1ED446201 & 1) == 0)
  {
    registerExternalProviderProperties_cold_2();
  }

  if ((byte_1ED446202 & 1) == 0)
  {
    registerExternalProviderProperties_cold_3();
  }

  v11[0] = xmmword_1F0A859C0;
  v11[1] = *&off_1F0A859D0;
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v4 = 0;
  memset(v10, 0, sizeof(v10));
  v5 = &unk_1ED446248;
  do
  {
    *&v6 = *(v5 - 6);
    *(&v6 + 1) = *v5;
    *&v10[v4] = v6;
    v5 += 12;
    v4 += 2;
  }

  while (v4 != 32);
  v7 = 32;
  _RegisterFilePropertyProvider(v11, 0, v10, 0x20uLL);
  v8 = &unk_1ED446240;
  do
  {
    _RegisterFilePropertyWithOptions(*(v8 - 5), *(v8 - 4), *(v8 - 1), *v8, (v8 - 5));
    v8 += 6;
    --v7;
  }

  while (v7);
  v9 = *MEMORY[0x1E69E9840];
}

CFDictionaryRef _FSURLCopyResourcePropertiesForKeysInternal(const __CFURL *a1, const __CFArray *a2, CFTypeRef cf, __CFError **a4, int a5)
{
  v139 = *MEMORY[0x1E69E9840];
  v129 = a1;
  v130 = _FileCacheGetForURL(a1, cf);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = qword_1ED4458C8;
  }

  v135 = v8;
  Count = CFArrayGetCount(v8);
  v10 = qword_1ED445788;
  v14 = MEMORY[0x1EEE9AC00](Count, v11, v12, v13);
  v16 = &v119[-256 * v15];
  v20 = MEMORY[0x1EEE9AC00](v14, v17, v18, v19);
  v22 = &v119[-256 * v21];
  v26 = MEMORY[0x1EEE9AC00](v20, v23, v24, v25);
  v28 = &v119[-256 * v27];
  v31 = MEMORY[0x1EEE9AC00](v26, 8 * v10, v29, v30);
  v33 = &v119[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x1EEE9AC00](v31, v32, v34, v35);
  v41 = &v119[-((v40 + 15) & 0xFF0)];
  if (((8 * v36) & 0x600) != 0)
  {
    v42 = 512;
  }

  else
  {
    v42 = v40;
  }

  MEMORY[0x1EEE9AC00](v36, v37, v38, v39);
  v45 = &v119[-v44];
  if (v10 >= 1)
  {
    bzero(v33, v43);
  }

  bzero(v41, v42);
  bzero(v45, v42);
  LOBYTE(v134) = CFArrayGetCount(v135);
  v134 = v134;
  if (!v134)
  {
    v47 = 0;
    goto LABEL_84;
  }

  v123 = a5;
  v132 = v28;
  v133 = v33;
  v131 = v22;
  v126 = v10;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = v130;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v135, v46);
    v51 = CFDictionaryGetValue(qword_1ED4458B8, ValueAtIndex);
    if (v51)
    {
      v52 = **(v51 + 140);
      v53 = v133;
      v54 = *&v133[8 * v52];
      if (v54 <= 95)
      {
        *&v16[768 * v52 + 8 * v54] = *(v51 + 1);
        v55 = v132;
        *&v131[768 * v52 + 8 * v54] = 0;
        *&v55[768 * v52 + 8 * v54] = *v51;
        *&v53[8 * v52] = v54 + 1;
      }

      v48 = 1;
    }

    else
    {
      _FileCacheLockTempPermProperties();
      TemporaryPropertyDictionary = _FileCacheGetTemporaryPropertyDictionary(v49, 0);
      if (TemporaryPropertyDictionary)
      {
        value[0] = 0;
        if (CFDictionaryGetValueIfPresent(TemporaryPropertyDictionary, ValueAtIndex, value))
        {
          v57 = value[0];
          if (value[0])
          {
            *&v41[8 * v47] = ValueAtIndex;
            v45[v47++] = CFRetain(v57);
          }
        }
      }

      PermanentPropertyDictionary = _FileCacheGetPermanentPropertyDictionary(v49, 0);
      if (PermanentPropertyDictionary)
      {
        value[0] = 0;
        if (CFDictionaryGetValueIfPresent(PermanentPropertyDictionary, ValueAtIndex, value))
        {
          v59 = value[0];
          if (value[0])
          {
            *&v41[8 * v47] = ValueAtIndex;
            v45[v47++] = CFRetain(v59);
          }
        }
      }

      _FileCacheUnlockTempPermProperties();
    }

    ++v46;
  }

  while (v134 != v46);
  if (!v48)
  {
    v10 = v126;
LABEL_83:
    v22 = v131;
    v33 = v133;
LABEL_84:
    if (v10 >= 1)
    {
      for (i = 0; i != v10; ++i)
      {
        v110 = *&v33[8 * i];
        v111 = v22;
        v112 = v16;
        if (v110 >= 1)
        {
          do
          {
            v113 = *v111;
            if (*v111)
            {
              *&v41[8 * v47] = *v112;
              v45[v47++] = v113;
            }

            ++v112;
            ++v111;
            --v110;
          }

          while (v110);
        }

        v16 += 768;
        v22 += 768;
      }
    }

    goto LABEL_91;
  }

  _FileCacheLock(v49);
  if (v126 < 1)
  {
    _FileCacheUnlock(v49);
LABEL_91:
    v114 = CFGetAllocator(v129);
    v115 = CFDictionaryCreate(v114, v41, v45, v47, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_92;
  }

  v122 = a4;
  v121 = -768;
  v60 = 768 * v126 - 768;
  v61 = &v131[v60];
  v62 = &v132[v60];
  v124 = v126 - 1;
  v125 = v16;
  v63 = &v16[v60];
  v64 = &sFileProviderGlobals[7 * v126 - 4];
  v65 = 1;
  v66 = v126 - 1;
  while (1)
  {
    v67 = *&v133[8 * v66];
    if (v67 >= 1)
    {
      v68 = v64[1];
      v127 = *v64;
      v128 = v68;
      v69 = v130;
      _FileCacheIncrementInProvider(v130);
      v70 = v128(v129, v69, v63, v61, v62, v67, v127);
      _FileCacheDecrementInProvider(v69);
      v65 = v70;
      if (!v70)
      {
        break;
      }
    }

    v61 -= 96;
    v62 -= 768;
    v63 -= 768;
    v64 -= 7;
    if (v66-- <= 0)
    {
      goto LABEL_44;
    }
  }

  v72 = v126;
  if (v66 < v126)
  {
    v73 = v133;
    do
    {
      v74 = *&v73[8 * v66];
      v75 = v61;
      if (v74 >= 1)
      {
        do
        {
          if (*v75)
          {
            CFRelease(*v75);
            *v75 = 0;
          }

          ++v75;
          --v74;
        }

        while (v74);
      }

      ++v66;
      v61 += 96;
    }

    while (v66 != v72);
  }

  v65 = 0;
LABEL_44:
  v76 = v123;
  if (v123)
  {
    v77 = v65 == 0;
  }

  else
  {
    v77 = 0;
  }

  v78 = v77;
  a4 = v122;
  v10 = v126;
  if (!v77)
  {
LABEL_54:
    if (!v76)
    {
      goto LABEL_80;
    }

    goto LABEL_55;
  }

  v79 = v130;
  if (_FileCacheLockTransitionToPreparer(v130))
  {
    v65 = 0;
    goto LABEL_54;
  }

  v120 = v78;
  _FileCacheLock(v79);
  v93 = v124;
  if (v10 >= 1)
  {
    v65 = 0;
    v94 = v121 + 768 * v10;
    v95 = &v131[v94];
    v96 = &v132[v94];
    v97 = &v125[v94];
    v98 = &sFileProviderGlobals[7 * v10 - 4];
    v99 = v130;
    while (1)
    {
      v124 = v93;
      v100 = *&v133[8 * v93];
      if (v100 >= 1)
      {
        v101 = *v98;
        v102 = v98[1];
        _FileCacheIncrementInProvider(v130);
        v103 = v102(v129, v130, v97, v95, v96, v100, v101);
        v99 = v130;
        v65 = v103;
        _FileCacheDecrementInProvider(v130);
        if (!v65)
        {
          break;
        }
      }

      v93 = v124 - 1;
      v95 -= 96;
      v96 -= 768;
      v97 -= 768;
      v98 -= 7;
      if (v124 <= 0)
      {
        goto LABEL_79;
      }
    }

    v104 = v126;
    v105 = v124;
    if (v124 < v126)
    {
      v106 = v133;
      do
      {
        v107 = *&v106[8 * v105];
        v108 = v95;
        if (v107 >= 1)
        {
          do
          {
            if (*v108)
            {
              CFRelease(*v108);
              *v108 = 0;
            }

            ++v108;
            --v107;
          }

          while (v107);
        }

        ++v105;
        v95 += 96;
      }

      while (v105 != v104);
    }
  }

  v65 = 0;
  v99 = v130;
LABEL_79:
  _FileCacheUnlock(v99);
  a4 = v122;
  v10 = v126;
  v78 = v120;
  if (!v123)
  {
LABEL_80:
    LODWORD(v127) = v65;
    v16 = v125;
    if (!v78)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_55:
  if (v65)
  {
    goto LABEL_80;
  }

  v137 = 0u;
  memset(v138, 0, sizeof(v138));
  *value = 0u;
  getPropertyBitmapForKeys(v135, v134, value);
  v80 = v130;
  v81 = prepareValuesForBitmap(v129, v130, value, a4);
  v16 = v125;
  LODWORD(v127) = v81;
  if (v81)
  {
    v120 = v78;
    _FileCacheLock(v80);
    if (v10 >= 1)
    {
      v82 = v133;
      v83 = v16;
      v84 = v131;
      v85 = v126;
      v86 = &qword_1ED4457B0;
      do
      {
        v88 = *v82;
        v82 = (v82 + 8);
        v87 = v88;
        v89 = v132;
        if (v88 >= 1)
        {
          v134 = *v86;
          v135 = v82;
          v128 = *(v86 - 3);
          v90 = v130;
          v91 = v87;
          _FileCacheIncrementInProvider(v130);
          v92 = v91;
          v16 = v125;
          (v134)(v129, v90, v83, v84, v89, v92, v128);
          _FileCacheDecrementInProvider(v90);
          v82 = v135;
        }

        v132 = v89 + 768;
        v84 += 768;
        v83 += 768;
        v86 += 7;
        --v85;
      }

      while (v85);
    }

    _FileCacheUnlock(v130);
    a4 = v122;
    v10 = v126;
    LOBYTE(v78) = v120;
  }

  if (v78)
  {
LABEL_81:
    _FileCacheLockTransitionFromPreparer(v130);
  }

LABEL_82:
  _FileCacheUnlock(v130);
  if (v127)
  {
    goto LABEL_83;
  }

  v115 = 0;
LABEL_92:
  if (v47 >= 1)
  {
    do
    {
      v116 = *v45++;
      CFRelease(v116);
      --v47;
    }

    while (v47);
  }

  if (a4 && !v115 && !*a4)
  {
    if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
    {
      _FSURLCopyResourcePropertiesForKeysInternal();
    }

    *a4 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

  v117 = *MEMORY[0x1E69E9840];
  return v115;
}

const __CFArray *getPropertyBitmapForKeys(const __CFArray *theArray, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v5 = theArray;
    for (i = 0; i != a2; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      theArray = CFDictionaryGetValue(qword_1ED4458B8, ValueAtIndex);
      if (theArray)
      {
        theArray = addPropertyAndDependenciesToBitmap(theArray, a3);
      }
    }
  }

  return theArray;
}

uint64_t createHasHiddenExtensionValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a2 & 0x10) == 0)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      Length = CFStringGetLength(*(a2 + 8));
      if ((*(a2 + 3) & 8) != 0)
      {
        if (*(a2 + 4) == 3)
        {
          theString = v5;
          v51 = Length - 3;
          v52 = 3;
          CharactersPtr = CFStringGetCharactersPtr(v5);
          v49 = CharactersPtr;
          if (CharactersPtr)
          {
            CStringPtr = 0;
          }

          else
          {
            CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
          }

          v20 = 0;
          v53 = 0;
          v54 = 0;
          v50 = CStringPtr;
          if (!CharactersPtr)
          {
LABEL_32:
            if (v50)
            {
              v21 = v50[v51 + v20];
            }

            else
            {
              if (v54 <= v20 || (v25 = v53, v53 > v20))
              {
                v26.location = v51;
                if (v52 >= 64)
                {
                  v26.length = 64;
                }

                else
                {
                  v26.length = v52;
                }

                v53 = 0;
                v54 = v26.length;
                CFStringGetCharacters(theString, v26, buffer);
                v25 = v53;
              }

              v21 = buffer[v20 - v25];
            }

LABEL_41:
            if ((v21 & 0xFFDF) != 0x41)
            {
              return 0;
            }

            v27 = v20 + 1;
            if (v49)
            {
              v28 = v49[v51 + v27];
            }

            else if (v50)
            {
              v28 = v50[v51 + v27];
            }

            else
            {
              if (v54 <= v27 || (v29 = v53, v53 > v27))
              {
                v30.location = v51;
                if (v52 >= 64)
                {
                  v30.length = 64;
                }

                else
                {
                  v30.length = v52;
                }

                v53 = 0;
                v54 = v30.length;
                CFStringGetCharacters(theString, v30, buffer);
                v29 = v53;
              }

              v28 = buffer[v27 - v29];
            }

            if ((v28 & 0xFFDF) != 0x50)
            {
              return 0;
            }

            v31 = v20 | 2;
            if (v49)
            {
              v32 = v49[v51 + v31];
            }

            else if (v50)
            {
              v32 = v50[v51 + v31];
            }

            else
            {
              if (v54 <= v31 || (v37 = v53, v53 > v31))
              {
                v38.location = v51;
                if (v52 >= 64)
                {
                  v38.length = 64;
                }

                else
                {
                  v38.length = v52;
                }

                v53 = 0;
                v54 = v38.length;
                CFStringGetCharacters(theString, v38, buffer);
                v37 = v53;
              }

              v32 = buffer[v31 - v37];
            }

            if ((v32 & 0xFFDF) != 0x50)
            {
              return 0;
            }

            goto LABEL_104;
          }

LABEL_23:
          v21 = CharactersPtr[v51 + v20];
          goto LABEL_41;
        }
      }

      else if (Length >= 5)
      {
        v7 = Length - 4;
        theString = v5;
        v51 = Length - 4;
        v52 = 4;
        v8 = CFStringGetCharactersPtr(v5);
        v49 = v8;
        if (v8)
        {
          v53 = 0;
          v54 = 0;
          v50 = 0;
          v9 = v8[v7];
        }

        else
        {
          v19 = CFStringGetCStringPtr(v5, 0x600u);
          v53 = 0;
          v54 = 0;
          v50 = v19;
          if (v19)
          {
            v9 = v19[v7];
          }

          else
          {
            v54 = 4;
            v55.location = v7;
            v55.length = 4;
            CFStringGetCharacters(v5, v55, buffer);
            v9 = buffer[-v53];
          }
        }

        if (v9 == 46)
        {
          CharactersPtr = v49;
          v20 = 1;
          if (!v49)
          {
            goto LABEL_32;
          }

          goto LABEL_23;
        }
      }
    }

    return 0;
  }

  if ((*(a2 + 168) & 0x10) == 0)
  {
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_106;
    }

    v11 = CFStringGetLength(*(a2 + 8));
    if ((*(a2 + 3) & 8) != 0)
    {
      if (*(a2 + 4) != 3)
      {
        goto LABEL_106;
      }

      theString = v10;
      v51 = v11 - 3;
      v52 = 3;
      v17 = CFStringGetCharactersPtr(v10);
      v49 = v17;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = CFStringGetCStringPtr(v10, 0x600u);
      }

      v23 = 0;
      v53 = 0;
      v54 = 0;
      v50 = v18;
      if (!v17)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v11 < 5)
      {
        goto LABEL_106;
      }

      v12 = v11 - 4;
      theString = v10;
      v51 = v11 - 4;
      v52 = 4;
      v13 = CFStringGetCharactersPtr(v10);
      v49 = v13;
      if (v13)
      {
        v53 = 0;
        v54 = 0;
        v50 = 0;
        v14 = v13[v12];
      }

      else
      {
        v22 = CFStringGetCStringPtr(v10, 0x600u);
        v53 = 0;
        v54 = 0;
        v50 = v22;
        if (v22)
        {
          v14 = v22[v12];
        }

        else
        {
          v54 = 4;
          v56.location = v12;
          v56.length = 4;
          CFStringGetCharacters(v10, v56, buffer);
          v14 = buffer[-v53];
        }
      }

      if (v14 != 46)
      {
        goto LABEL_106;
      }

      v17 = v49;
      v23 = 1;
      if (!v49)
      {
LABEL_61:
        if (v50)
        {
          v24 = v50[v51 + v23];
        }

        else
        {
          if (v54 <= v23 || (v33 = v53, v53 > v23))
          {
            v34.location = v51;
            if (v52 >= 64)
            {
              v34.length = 64;
            }

            else
            {
              v34.length = v52;
            }

            v53 = 0;
            v54 = v34.length;
            CFStringGetCharacters(theString, v34, buffer);
            v33 = v53;
          }

          v24 = buffer[v23 - v33];
        }

LABEL_70:
        if ((v24 & 0xFFDF) == 0x41)
        {
          v35 = v23 + 1;
          if (v49)
          {
            v36 = v49[v51 + v35];
          }

          else if (v50)
          {
            v36 = v50[v51 + v35];
          }

          else
          {
            if (v54 <= v35 || (v40 = v53, v53 > v35))
            {
              v41.location = v51;
              if (v52 >= 64)
              {
                v41.length = 64;
              }

              else
              {
                v41.length = v52;
              }

              v53 = 0;
              v54 = v41.length;
              CFStringGetCharacters(theString, v41, buffer);
              v40 = v53;
            }

            v36 = buffer[v35 - v40];
          }

          if ((v36 & 0xFFDF) == 0x50)
          {
            v42 = v23 | 2;
            if (v49)
            {
              v43 = v49[v51 + v42];
            }

            else if (v50)
            {
              v43 = v50[v51 + v42];
            }

            else
            {
              if (v54 <= v42 || (v44 = v53, v53 > v42))
              {
                v45.location = v51;
                if (v52 >= 64)
                {
                  v45.length = 64;
                }

                else
                {
                  v45.length = v52;
                }

                v53 = 0;
                v54 = v45.length;
                CFStringGetCharacters(theString, v45, buffer);
                v44 = v53;
              }

              v43 = buffer[v42 - v44];
            }

            if ((v43 & 0xFFDF) == 0x50)
            {
LABEL_104:
              *(a2 + 4) = 3;
              *a2 |= 0x8000000u;
              goto LABEL_105;
            }
          }
        }

LABEL_106:
        v46 = MEMORY[0x1E695E4C0];
        goto LABEL_107;
      }
    }

    v24 = v17[v51 + v23];
    goto LABEL_70;
  }

LABEL_105:
  v46 = MEMORY[0x1E695E4D0];
LABEL_107:
  *a3 = *v46;
  return 1;
}

uint64_t createCreationDateValue(const void *a1, uint64_t a2, CFDateRef *a3)
{
  if (*(a2 + 80) == -1.0 - *MEMORY[0x1E695E460])
  {
    v4 = 0;
  }

  else
  {
    v6 = CFGetAllocator(a1);
    v4 = CFDateCreate(v6, *(a2 + 80));
  }

  *a3 = v4;
  return 1;
}

uint64_t DirEnumSkipDescendents(uint64_t a1)
{
  v1 = *(a1 + 1840);
  if (*(v1 + 48) == 1)
  {
    result = 0;
    *(v1 + 52) |= 2u;
  }

  else
  {
    *__error() = 20;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t DirEnumClose(void *a1)
{
  v2 = a1[230];
  if (v2)
  {
    do
    {
      v3 = *v2;
      DirEnumEntryFree(a1, v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[231];
  if (v4)
  {
    do
    {
      v5 = *v4;
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a1[232];
  if (v6)
  {
    free(v6);
  }

  free(a1);
  return 0;
}

uint64_t _FSURLSetResourcePropertyForKey(const __CFURL *a1, const void *a2, const void *a3, int a4, CFTypeRef cf, CFErrorRef *a6)
{
  v8 = a3;
  v22 = a3;
  v23 = a2;
  v11 = _FileCacheGetForURL(a1, cf);
  Value = CFDictionaryGetValue(qword_1ED4458B8, a2);
  v13 = Value;
  if (v8)
  {
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695E738];
    v22 = *MEMORY[0x1E695E738];
    if (!a4)
    {
LABEL_9:
      v17 = 1;
      if (!a4 && !Value)
      {
        _FileCacheLockTempPermProperties();
        PermanentPropertyDictionary = _FileCacheGetPermanentPropertyDictionary(v11, 0);
        if (PermanentPropertyDictionary)
        {
          CFDictionaryRemoveValue(PermanentPropertyDictionary, a2);
        }

        TemporaryPropertyDictionary = _FileCacheGetTemporaryPropertyDictionary(v11, 1);
        if (TemporaryPropertyDictionary)
        {
          CFDictionarySetValue(TemporaryPropertyDictionary, a2, v8);
        }

        _FileCacheUnlockTempPermProperties();
      }

      return v17;
    }
  }

  if (!Value)
  {
    goto LABEL_9;
  }

  if (!*(*(Value + 140) + 40))
  {
    return 1;
  }

  v21 = *Value;
  _FileCacheLock(v11);
  v14 = *(v13 + 140);
  v15 = *(v14 + 40);
  v16 = *(v14 + 8);
  _FileCacheIncrementInProvider(v11);
  v17 = v15(a1, v11, &v23, &v22, &v21, 1, v16, a6);
  _FileCacheDecrementInProvider(v11);
  if (v17)
  {
    clearPropertyAndDependentValues(a1, v11, v13);
    _FileCacheUnlock(v11);
  }

  else
  {
    _FileCacheUnlock(v11);
    if (a6 && !*a6)
    {
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
      {
        _FSURLSetResourcePropertyForKey_cold_1();
      }

      v17 = 0;
      *a6 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
    }

    else
    {
      return 0;
    }
  }

  return v17;
}

uint64_t createIsRegularFileValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a2 + 16) & 0xF000) == 0x8000)
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t volumePropertyProviderCopyValues(uint64_t a1, uint64_t a2, const void **a3, void **a4, uint64_t *a5, uint64_t a6)
{
  if ((*_FileCacheGetAttributes(a2) & 2) == 0)
  {
    return 0;
  }

  if (a6 >= 1)
  {
    BytePtr = 0;
    Length = 0;
    do
    {
      v15 = *a5;
      if (!*(*a5 + 24))
      {
        goto LABEL_17;
      }

      if (CFEqual(*(v15 + 8), @"__kCFURLNoDependsVolumeInformationKey"))
      {
        v16 = 0;
      }

      else
      {
        v16 = BytePtr == 0;
      }

      if (v16)
      {
        result = _FileCacheGetVolumeInfo(a2);
        if (!result)
        {
          return result;
        }

        v17 = result;
        BytePtr = CFDataGetBytePtr(result);
        Length = CFDataGetLength(v17);
      }

      if (CFEqual(*(v15 + 8), @"__kCFURLExpensiveVolumeInformationKey") && (!BytePtr || *BytePtr == -1))
      {
        return 0;
      }

      if (!(*(v15 + 24))(a1, a2, BytePtr, Length, v15, 0, a4))
      {
LABEL_17:
        result = _FileCacheGetPropertyValueForKey(a2, *a3, a4);
        if (!result)
        {
          return result;
        }

        if (*a4)
        {
          CFRetain(*a4);
        }
      }

      ++a4;
      ++a3;
      ++a5;
      --a6;
    }

    while (a6);
  }

  return 1;
}

BOOL volumePropertyProviderPrepareValues(const __CFString *a1, uint64_t a2, uint64_t a3, CFTypeRef **a4, uint64_t a5, uint64_t a6, CFErrorRef *a7)
{
  v123 = *MEMORY[0x1E69E9840];
  v118 = 0;
  v119 = 0;
  v12 = MountInfoStorageSize();
  v16 = &v94 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
  _FileCacheLock(a2);
  Attributes = _FileCacheGetAttributes(a2);
  if ((Attributes->val[0] & 2) == 0)
  {
    _FileCacheUnlock(a2);
    if (CFURLGetFileSystemRepresentation(a1, 1u, &v122, 1024))
    {
      v120 = xmmword_19605E710;
      v121 = 0;
      v18 = filtered_getattrlist(&v122, &v120, &v116, 0xCuLL, 0x21u);
      _FileCacheLock(a2);
      if (v18)
      {
        if (a7)
        {
          v19 = CFGetAllocator(a1);
          v96 = a2;
          v20 = Attributes;
          v21 = a1;
          v22 = v16;
          v23 = a7;
          v24 = *MEMORY[0x1E695E640];
          v25 = __error();
          v26 = v24;
          a7 = v23;
          v16 = v22;
          a1 = v21;
          Attributes = v20;
          a2 = v96;
          *a7 = _FSURLCreateStandardError(v19, v26, *v25, 0, a1, 0);
        }
      }

      else
      {
        v28 = v117.val[0];
        Attributes[13] = v117;
        MountID = MountInfoPrepare(&v118, 0, v28, v16, 0, a1, 0);
        if (MountID)
        {
          MountID = MountInfoGetMountID(v118);
        }

        Attributes[14].val[0] = MountID;
        Attributes->val[0] |= 2u;
      }
    }

    else
    {
      if (a7)
      {
        v27 = CFGetAllocator(a1);
        *a7 = _FSURLCreateStandardError(v27, *MEMORY[0x1E695E628], 4, 0, a1, 0);
      }

      _FileCacheLock(a2);
    }

    if ((Attributes->val[0] & 2) == 0)
    {
      v30 = 0;
      goto LABEL_140;
    }
  }

  v112 = &v94;
  if (a5 < 1)
  {
    v113 = 1;
    goto LABEL_139;
  }

  v111 = a7;
  v114 = Attributes[14].val[0];
  v115 = 0;
  v110 = Attributes[13].val[0];
  v31 = *MEMORY[0x1E695ED78];
  v109 = *MEMORY[0x1E695ED58];
  v32 = *MEMORY[0x1E695E440];
  f_mntonname = v122.f_mntonname;
  v107 = *MEMORY[0x1E695EDE0];
  v100 = *MEMORY[0x1E695E4C0];
  v99 = *MEMORY[0x1E695E4D0];
  v106 = *MEMORY[0x1E695ED90];
  v33 = *MEMORY[0x1E695ECE8];
  v101 = *MEMORY[0x1E695E480];
  v34 = *MEMORY[0x1E695ECE0];
  v113 = 1;
  v102 = *MEMORY[0x1E695EE38];
  v98 = *MEMORY[0x1E695ED88];
  v97 = *MEMORY[0x1E695ED70];
  v108 = v32;
  v103 = v34;
  v104 = v33;
  while (1)
  {
    v35 = *a4;
    if ((*a4)[3])
    {
      goto LABEL_40;
    }

    v36 = v31;
    if (CFEqual(*v35, @"__kCFURLCheapVolumeInformationKey"))
    {
      if (!v115 && !_FileCacheGetVolumeInfo(a2))
      {
        if (v114 && !MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
        {
          goto LABEL_141;
        }

        prepareCheapVolumeInformation(a1, a2, v118);
      }

LABEL_38:
      v115 = 1;
      goto LABEL_39;
    }

    if (!CFEqual(*v35, @"__kCFURLExpensiveVolumeInformationKey"))
    {
      break;
    }

    if (!v115 && !_FileCacheGetVolumeInfo(a2))
    {
      if (v114 && !MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
      {
LABEL_141:
        v113 = 0;
        goto LABEL_139;
      }

      prepareCheapVolumeInformation(a1, a2, v118);
    }

    VolumeInfo = _FileCacheGetVolumeInfo(a2);
    MutableBytePtr = CFDataGetMutableBytePtr(VolumeInfo);
    if (!MutableBytePtr)
    {
      goto LABEL_38;
    }

    v39 = MutableBytePtr;
    v31 = v36;
    if (*MutableBytePtr == -1)
    {
      if (v114)
      {
        if (!MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
        {
          goto LABEL_141;
        }

        MountInfoGetMutableVolumeInfo(v118, v39, v39 + 1, v39 + 2, v39 + 3);
        goto LABEL_38;
      }

      *MutableBytePtr = 0u;
      *(MutableBytePtr + 1) = 0u;
    }

    v115 = 1;
LABEL_40:
    ++a4;
    if (!--a5)
    {
      goto LABEL_139;
    }
  }

  v40 = Attributes;
  v41 = a1;
  v42 = v16;
  if (CFEqual(*v35, v36))
  {
    if (_FileCacheGetPropertyValueForKey(a2, v36, &v119))
    {
      v31 = v36;
LABEL_46:
      a1 = v41;
      Attributes = v40;
      goto LABEL_40;
    }

    a1 = v41;
    Attributes = v40;
    if (v114)
    {
      if (!MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
      {
        goto LABEL_141;
      }

      VolumeName = MountInfoGetVolumeName(v118);
      if (VolumeName)
      {
        v47 = VolumeName;
        v48 = CFGetAllocator(a1);
        v49 = CFStringCreateWithCString(v48, v47, 0x8000100u);
        v50 = a2;
        v51 = v36;
LABEL_51:
        _FileCacheSetPropertyValueForKey(v50, v51, v49);
        if (v49)
        {
          CFRelease(v49);
        }

LABEL_39:
        v31 = v36;
        goto LABEL_40;
      }
    }

    v52 = a2;
    v53 = v36;
LABEL_55:
    v54 = 0;
LABEL_56:
    _FileCacheSetPropertyValueForKey(v52, v53, v54);
    goto LABEL_39;
  }

  v43 = v109;
  if (CFEqual(*v35, v109))
  {
    PropertyValueForKey = _FileCacheGetPropertyValueForKey(a2, v43, &v119);
    v45 = v43;
    v16 = v42;
    if (!PropertyValueForKey)
    {
      _FileCacheSetPropertyValueForKey(a2, v45, 0);
    }

    v31 = v36;
    goto LABEL_46;
  }

  v55 = v108;
  v56 = CFEqual(*v35, v108);
  v95 = v42;
  if (v56)
  {
    a1 = v41;
    if (_FileCacheGetPropertyValueForKey(a2, v55, &v119))
    {
      v31 = v36;
      Attributes = v40;
      v16 = v95;
      goto LABEL_40;
    }

    Attributes = v40;
    v60 = v40[13];
    StatfsByFSID = GetStatfsByFSID(v60, &v122);
    v16 = v95;
    if (!StatfsByFSID)
    {
      v64 = CFGetAllocator(a1);
      v49 = CFStringCreateWithCString(v64, f_mntonname, 0x8000100u);
      v50 = a2;
      v51 = v108;
      goto LABEL_51;
    }

    v52 = a2;
    v53 = v108;
    goto LABEL_55;
  }

  v57 = v107;
  a1 = v41;
  if (CFEqual(*v35, v107))
  {
    v58 = _FileCacheGetPropertyValueForKey(a2, v57, &v119);
    Attributes = v40;
    v16 = v95;
    if (v58)
    {
      goto LABEL_39;
    }

    if (v114)
    {
      if (!MountInfoPrepare(&v118, v114, v110, v95, 0, a1, v111))
      {
        goto LABEL_141;
      }

      MountPoint = MountInfoGetMountPoint(v118);
      if (!MountPoint)
      {
LABEL_84:
        v54 = 0;
        goto LABEL_85;
      }
    }

    else
    {
      v66 = v40[13];
      v67 = GetStatfsByFSID(v66, &v122);
      MountPoint = f_mntonname;
      if (v67)
      {
        goto LABEL_84;
      }
    }

    v120 = xmmword_19605E728;
    v121 = 0;
    if (filtered_getattrlist(MountPoint, &v120, &v122, 0x24uLL, 0x21u) || (v122.f_bfree & 0x20000000000000) == 0)
    {
      goto LABEL_84;
    }

    if ((v122.f_iosize & 0x200000) != 0)
    {
      v54 = v100;
    }

    else
    {
      v54 = v99;
    }

LABEL_85:
    v52 = a2;
    v53 = v107;
    goto LABEL_56;
  }

  v62 = CFEqual(*v35, v106);
  Attributes = v40;
  v16 = v95;
  if (v62)
  {
    if (_FileCacheGetPropertyValueForKey(a2, v106, &v119))
    {
      goto LABEL_39;
    }

    if (v114)
    {
      if (!MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
      {
        goto LABEL_141;
      }

      v63 = MountInfoGetMountPoint(v118);
      if (!v63)
      {
LABEL_95:
        v54 = 0;
        goto LABEL_96;
      }
    }

    else
    {
      v69 = v40[13];
      v70 = GetStatfsByFSID(v69, &v122);
      v63 = f_mntonname;
      if (v70)
      {
        goto LABEL_95;
      }
    }

    v120 = xmmword_19605E728;
    v121 = 0;
    if (filtered_getattrlist(v63, &v120, &v122, 0x24uLL, 0x21u) || (v122.f_bfree & 0x40000000000000) == 0)
    {
      goto LABEL_95;
    }

    if ((v122.f_iosize & 0x400000) != 0)
    {
      v54 = v100;
    }

    else
    {
      v54 = v99;
    }

LABEL_96:
    v53 = v106;
    v52 = a2;
    goto LABEL_56;
  }

  if (CFEqual(*v35, v104))
  {
    if (_FileCacheGetPropertyValueForKey(a2, v104, &v119))
    {
      goto LABEL_39;
    }

    if (v114)
    {
      if (!MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
      {
        goto LABEL_141;
      }

      v65 = MountInfoGetMountPoint(v118);
      if (!v65)
      {
        goto LABEL_110;
      }

LABEL_108:
      v75 = CFStringCreateWithFileSystemRepresentation(v101, v65);
      if (v75)
      {
        v77 = v75;
        v96 = Call_CacheDeleteCopyAvailableSpaceForVolume(v76);
        CFRelease(v77);
        v50 = a2;
        v51 = v104;
LABEL_125:
        v49 = v96;
        goto LABEL_51;
      }
    }

    else
    {
      v73 = v40[13];
      v74 = GetStatfsByFSID(v73, &v122);
      v65 = f_mntonname;
      if (!v74)
      {
        goto LABEL_108;
      }
    }

LABEL_110:
    v52 = a2;
    v53 = v104;
    goto LABEL_55;
  }

  if (CFEqual(*v35, v103))
  {
    if (_FileCacheGetPropertyValueForKey(a2, v103, &v119))
    {
      goto LABEL_39;
    }

    if (v114)
    {
      if (!MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
      {
        goto LABEL_141;
      }

      v68 = MountInfoGetMountPoint(v118);
      if (!v68)
      {
        goto LABEL_117;
      }

LABEL_115:
      v80 = CFStringCreateWithFileSystemRepresentation(v101, v68);
      if (v80)
      {
        v82 = v80;
        v96 = Call_CacheDeleteCopyAvailableSpaceForVolume(v81);
        CFRelease(v82);
        v50 = a2;
        v51 = v103;
        goto LABEL_125;
      }
    }

    else
    {
      v78 = v40[13];
      v79 = GetStatfsByFSID(v78, &v122);
      v68 = f_mntonname;
      if (!v79)
      {
        goto LABEL_115;
      }
    }

LABEL_117:
    v52 = a2;
    v53 = v103;
    goto LABEL_55;
  }

  if (CFEqual(*v35, v102) || CFEqual(*v35, v98))
  {
    if (_FileCacheGetPropertyValueForKey(a2, v102, &v119) && _FileCacheGetPropertyValueForKey(a2, v98, &v119))
    {
      goto LABEL_39;
    }

    v120 = 0uLL;
    v116 = 0;
    if (v114)
    {
      if (MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
      {
        v71 = MountInfoGetMountPoint(v118);
        v72 = _FSGetTypeInfoForPath(v71, &v120, 0x10uLL, &v116);
        goto LABEL_120;
      }
    }

    else
    {
      v83 = v40[13];
      if (!GetStatfsByFSID(v83, &v122))
      {
        v72 = _FSGetTypeInfoFromStatfs(&v122, &v120, 0x10uLL, &v116);
LABEL_120:
        v113 = v72 == 0;
      }
    }

    if (!v113)
    {
      goto LABEL_141;
    }

    *&v122.f_bsize = v116;
    v84 = strlen(&v120);
    v85 = v101;
    v94 = CFStringCreateWithBytes(v101, &v120, v84, 0x8000100u, 0);
    v96 = CFNumberCreate(v85, kCFNumberSInt64Type, &v122);
    v86 = v94;
    _FileCacheSetPropertyValueForKey(a2, v102, v94);
    if (v86)
    {
      CFRelease(v86);
    }

    v50 = a2;
    v51 = v98;
    goto LABEL_125;
  }

  if (!CFEqual(*v35, v97))
  {
    goto LABEL_39;
  }

  v94 = v40;
  v96 = a2;
  if (_FileCacheGetPropertyValueForKey(a2, v97, &v119))
  {
LABEL_137:
    Attributes = v94;
    a2 = v96;
    goto LABEL_39;
  }

  bzero(&v120, 0x400uLL);
  if (v114)
  {
    if (MountInfoPrepare(&v118, v114, v110, v16, 0, a1, v111))
    {
      v87 = MountInfoGetMountPoint(v118);
      v88 = _FSGetLocationForPath(v87, &v120, 0x400uLL);
      goto LABEL_133;
    }
  }

  else
  {
    v89 = v94[13];
    if (!GetStatfsByFSID(v89, &v122))
    {
      v88 = _FSGetLocationFromStatfs(&v122, &v120, 0x400uLL);
LABEL_133:
      v113 = v88 == 0;
    }
  }

  if (v113)
  {
    v90 = strlen(&v120);
    v91 = CFStringCreateWithBytes(v101, &v120, v90, 0x8000100u, 0);
    _FileCacheSetPropertyValueForKey(v96, v97, v91);
    if (v91)
    {
      CFRelease(v91);
    }

    goto LABEL_137;
  }

  v113 = 0;
  a2 = v96;
LABEL_139:
  MountInfoDestroy(v118);
  v30 = v113;
LABEL_140:
  _FileCacheUnlock(a2);
  v92 = *MEMORY[0x1E69E9840];
  return v30;
}

void prepareCheapVolumeInformation(const void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  *bytes = -1;
  if (!a3)
  {
    v11 = *(_FileCacheGetAttributes(a2) + 104);
    if (GetStatfsByFSID(v11, &v19))
    {
LABEL_21:
      *&v23 = -1.0 - *MEMORY[0x1E695E460];
      *(&v23 + 1) = -1;
      v14 = 56;
      goto LABEL_27;
    }

    if ((v19.f_flags & 0x1000) != 0)
    {
      *(&v22 + 1) |= 1uLL;
      if ((v19.f_flags & 0x400000) == 0)
      {
LABEL_9:
        if ((v19.f_flags & 0x100000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_32;
      }
    }

    else if ((v19.f_flags & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    *(&v22 + 1) |= 2uLL;
    if ((v19.f_flags & 0x100000) == 0)
    {
LABEL_10:
      if ((v19.f_flags & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(&v22 + 1) |= 4uLL;
    if ((v19.f_flags & 1) == 0)
    {
LABEL_11:
      if ((v19.f_flags & 0x400) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(&v22 + 1) |= 8uLL;
    if ((v19.f_flags & 0x400) == 0)
    {
LABEL_12:
      if ((v19.f_flags & 0x4000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(&v22 + 1) |= 0x10uLL;
    if ((v19.f_flags & 0x4000) == 0)
    {
LABEL_13:
      if ((v19.f_flags & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_35:
    *(&v22 + 1) |= 0x4000000uLL;
    if ((v19.f_flags & 0x80) == 0)
    {
LABEL_15:
      v12 = *(&v22 + 1) & 0xFEFFFFFFFFFFFFFFLL | (v19.f_flags << 8) & 0x20000000;
      *(&v22 + 1) = v12;
      if (*v19.f_fstypename == 1719035236 && *&v19.f_fstypename[4] == 115)
      {
        *(&v22 + 1) = v12 | 0x10000;
      }

      goto LABEL_21;
    }

LABEL_14:
    *(&v22 + 1) |= 0x8000000uLL;
    goto LABEL_15;
  }

  VolumeFlags = MountInfoGetVolumeFlags(a3);
  v7 = VolumeFlags & 0x7F ^ 1;
  if ((VolumeFlags & 0x80) != 0)
  {
    v7 |= 0x80uLL;
    *(&v22 + 1) = v7;
  }

  *(&v22 + 1) = v7 & 0xFFFFFFFFC3FFEFFFLL | VolumeFlags & 0x700 | (((VolumeFlags >> 11) & 1) << 12) & 0xFFFFFFFFC3FFFFFFLL | (((VolumeFlags >> 23) & 0xF) << 26) | MountInfoGetCapabilities(a3);
  VolumeCreationDate = MountInfoGetVolumeCreationDate(a3);
  if (VolumeCreationDate | v9)
  {
    v10 = VolumeCreationDate - *MEMORY[0x1E695E468] + v9 * 0.000000001;
  }

  else
  {
    v10 = -1.0 - *MEMORY[0x1E695E460];
  }

  *&v23 = v10;
  if (MountInfoGetVolumeUUID(a3, &v24))
  {
    v14 = 72;
  }

  else
  {
    v14 = 56;
  }

  *(&v23 + 1) = MountInfoGetMaxFileSize(a3);
LABEL_27:
  v15 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v15, v14);
  if (Mutable)
  {
    v17 = Mutable;
    CFDataAppendBytes(Mutable, bytes, v14);
    _FileCacheLock(a2);
    _FileCacheSetVolumeInfo(a2, v17);
    _FileCacheUnlock(a2);
    CFRelease(v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t MountInfoGetVolumeUUID(uint64_t a1, unsigned __int8 *a2)
{
  if (uuid_is_null((a1 + 3000)))
  {
    return 0;
  }

  uuid_copy(a2, (a1 + 3000));
  return 1;
}

void _FileCacheSetVolumeInfo(uint64_t a1, const void *a2)
{
  os_unfair_lock_assert_owner((a1 + 36));
  v4 = *(a1 + 312);
  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 312) = v5;
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t volumePropertyProviderCopyAndCacheValues(uint64_t a1, uint64_t a2, const void **a3, CFTypeRef *a4, uint64_t *a5, uint64_t a6)
{
  if (a6 >= 1)
  {
    v6 = a6;
    v11 = 0;
    Length = 0;
    BytePtr = 0;
    while (1)
    {
      if (_FileCacheGetPropertyValueForKey(a2, *a3, a4))
      {
        if (*a4)
        {
          CFRetain(*a4);
        }

        v11 = 1;
      }

      else
      {
        v13 = *a5;
        if (*(*a5 + 24))
        {
          if (CFEqual(*(v13 + 8), @"__kCFURLNoDependsVolumeInformationKey"))
          {
            v14 = 0;
          }

          else
          {
            v14 = BytePtr == 0;
          }

          if (!v14)
          {
            goto LABEL_15;
          }

          VolumeInfo = _FileCacheGetVolumeInfo(a2);
          if (VolumeInfo)
          {
            v16 = VolumeInfo;
            BytePtr = CFDataGetBytePtr(VolumeInfo);
            Length = CFDataGetLength(v16);
LABEL_15:
            v11 = 1;
            if ((*(v13 + 24))(a1, a2, BytePtr, Length, v13, 1, a4) == 2)
            {
              _FileCacheSetPropertyValueForKey(a2, *a3, *a4);
            }

            goto LABEL_17;
          }

          BytePtr = 0;
          *a4 = 0;
        }
      }

LABEL_17:
      ++a5;
      ++a4;
      ++a3;
      if (!--v6)
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t createVolumeIdentifierValue(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CFDataRef *a7)
{
  v16 = *MEMORY[0x1E69E9840];
  Attributes = _FileCacheGetAttributes(a2);
  v10 = Attributes[28];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v10 = Attributes[26];
    v11 = Attributes[27];
  }

  v15[0] = v10;
  v15[1] = v11;
  v12 = CFGetAllocator(a1);
  *a7 = CFDataCreate(v12, v15, 8);
  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t createVolumeFlagValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if ((*(a5 + 16) & *(a3 + 32)) != 0)
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  *a7 = *v7;
  return 1;
}

uint64_t createFileIDValue(const void *a1, _BYTE *a2, CFNumberRef *a3)
{
  if ((*a2 & 4) == 0)
  {
    return 0;
  }

  v5 = a2 + 128;
  if (*(a2 + 16))
  {
    v6 = CFGetAllocator(a1);
    v7 = CFNumberCreate(v6, kCFNumberSInt64Type, v5);
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return 1;
}

double registerVolumeProperties()
{
  _MergedGlobals_68 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF7F30 = @"__kCFURLNoDependsVolumeInformationKey";
  result = 0.0;
  xmmword_1EAEF7F38 = 0u;
  qword_1EAEF7F48 = @"__kCFURLExpensiveVolumeInformationKey";
  unk_1EAEF7F50 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF7F58 = 0u;
  qword_1EAEF7F68 = *MEMORY[0x1E695ED78];
  unk_1EAEF7F70 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF7F78 = 0u;
  qword_1EAEF7F88 = *MEMORY[0x1E695ED58];
  unk_1EAEF7F90 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF7F98 = 0u;
  qword_1EAEF7FA8 = *MEMORY[0x1E695EE40];
  unk_1EAEF7FB0 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF7FB8 = 0u;
  qword_1EAEF7FC8 = *MEMORY[0x1E695ED38];
  unk_1EAEF7FD0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF7FD8 = 1;
  v1 = *MEMORY[0x1E695ED08];
  qword_1EAEF7FE0 = createVolumeFlagValue;
  unk_1EAEF7FE8 = v1;
  qword_1EAEF7FF0 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF7FF8 = 2;
  v2 = *MEMORY[0x1E695ED10];
  qword_1EAEF8000 = createVolumeFlagValue;
  unk_1EAEF8008 = v2;
  qword_1EAEF8010 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF8018 = 4;
  v3 = *MEMORY[0x1E695ED40];
  qword_1EAEF8020 = createNegatedVolumeFlagValue;
  unk_1EAEF8028 = v3;
  qword_1EAEF8030 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF8038 = 8;
  v4 = *MEMORY[0x1E695ED18];
  qword_1EAEF8040 = createVolumeFlagValue;
  unk_1EAEF8048 = v4;
  qword_1EAEF8050 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF8058 = 32;
  v5 = *MEMORY[0x1E695ED48];
  qword_1EAEF8060 = createVolumeFlagValue;
  unk_1EAEF8068 = v5;
  qword_1EAEF8070 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF8078 = 64;
  v6 = *MEMORY[0x1E695ED20];
  qword_1EAEF8080 = createVolumeFlagValue;
  unk_1EAEF8088 = v6;
  qword_1EAEF8090 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF8098 = 0x8000000;
  v7 = *MEMORY[0x1E695EDD0];
  qword_1EAEF80A0 = createVolumeFlagValue;
  unk_1EAEF80A8 = v7;
  qword_1EAEF80B0 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF80B8 = 0x10000000;
  v8 = *MEMORY[0x1E695ED50];
  qword_1EAEF80C0 = createVolumeFlagValue;
  unk_1EAEF80C8 = v8;
  qword_1EAEF80D0 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF80D8 = 0x4000000;
  v9 = *MEMORY[0x1E695EDB0];
  qword_1EAEF80E0 = createVolumeFlagValue;
  unk_1EAEF80E8 = v9;
  qword_1EAEF80F0 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF80F8 = 0x800000000000000;
  v10 = *MEMORY[0x1E695EDF0];
  qword_1EAEF8100 = createVolumeFlagValue;
  unk_1EAEF8108 = v10;
  qword_1EAEF8110 = @"__kCFURLCheapVolumeInformationKey";
  unk_1EAEF8118 = 0x100000000;
  v11 = *MEMORY[0x1E695EE18];
  qword_1EAEF8120 = createVolumeFlagValue;
  unk_1EAEF8128 = v11;
  qword_1EAEF8130 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8138 = 0x1000000000;
  qword_1EAEF8140 = createVolumeFlagValue;
  qword_1EAEF8148 = *MEMORY[0x1E695EDE8];
  qword_1EAEF8150 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8158 = 0x10000000000;
  qword_1EAEF8160 = createVolumeFlagValue;
  qword_1EAEF8168 = *MEMORY[0x1E695EDF8];
  qword_1EAEF8170 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8178 = 0x20000000000;
  qword_1EAEF8180 = createVolumeFlagValue;
  qword_1EAEF8188 = *MEMORY[0x1E695EDA8];
  qword_1EAEF8190 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8198 = 0x80000000000;
  qword_1EAEF81A0 = createVolumeFlagValue;
  qword_1EAEF81A8 = *MEMORY[0x1E695EDA0];
  qword_1EAEF81B0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF81B8 = 0x100000000000;
  qword_1EAEF81C0 = createVolumeFlagValue;
  qword_1EAEF81C8 = *MEMORY[0x1E695ED98];
  qword_1EAEF81D0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF81D8 = 0x200000000000;
  qword_1EAEF81E0 = createVolumeFlagValue;
  qword_1EAEF81E8 = *MEMORY[0x1E695EE00];
  qword_1EAEF81F0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF81F8 = 0x400000000000;
  qword_1EAEF8200 = createNegatedVolumeFlagValue;
  qword_1EAEF8208 = *MEMORY[0x1E695EDC0];
  qword_1EAEF8210 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8218 = 0x800000000000;
  qword_1EAEF8220 = createVolumeFlagValue;
  qword_1EAEF8228 = *MEMORY[0x1E695EDD8];
  qword_1EAEF8230 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8238 = 0x2000000000000;
  qword_1EAEF8240 = createVolumeFlagValue;
  qword_1EAEF8248 = *MEMORY[0x1E695ED30];
  qword_1EAEF8250 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8258 = 0x20000000000000;
  qword_1EAEF8260 = createVolumeFlagValue;
  qword_1EAEF8268 = *MEMORY[0x1E695EE08];
  qword_1EAEF8270 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8278 = 0x40000000000000;
  qword_1EAEF8280 = createVolumeFlagValue;
  qword_1EAEF8288 = *MEMORY[0x1E695EE28];
  qword_1EAEF8290 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8298 = 0x80000000000000;
  qword_1EAEF82A0 = createVolumeFlagValue;
  qword_1EAEF82A8 = *MEMORY[0x1E695EE20];
  qword_1EAEF82B0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF82B8 = 0x100000000000000;
  qword_1EAEF82C0 = createVolumeFlagValue;
  qword_1EAEF82C8 = *MEMORY[0x1E695EDC8];
  qword_1EAEF82D0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF82D8 = 0x2000000000000000;
  qword_1EAEF82E0 = createVolumeFlagValue;
  qword_1EAEF82E8 = *MEMORY[0x1E695EE10];
  qword_1EAEF82F0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF82F8 = 0x4000000000000000;
  qword_1EAEF8300 = createVolumeFlagValue;
  qword_1EAEF8308 = *MEMORY[0x1E695EDB8];
  qword_1EAEF8310 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8318 = 0x8000000000000000;
  qword_1EAEF8320 = createVolumeFlagValue;
  qword_1EAEF8328 = *MEMORY[0x1E695EDE0];
  qword_1EAEF8330 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF8338 = 0u;
  qword_1EAEF8348 = *MEMORY[0x1E695ED90];
  qword_1EAEF8350 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF8358 = 0u;
  qword_1EAEF8368 = *MEMORY[0x1E695ED28];
  qword_1EAEF8370 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8378 = 0;
  qword_1EAEF8380 = createVolumeIsInternalValue;
  qword_1EAEF8388 = *MEMORY[0x1E695ED68];
  qword_1EAEF8390 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8398 = 0;
  qword_1EAEF83A0 = createVolumeMaximumFileSizeValue;
  qword_1EAEF83A8 = *MEMORY[0x1E695ECF8];
  qword_1EAEF83B0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF83B8 = 0;
  qword_1EAEF83C0 = createVolumeCreationDateValue;
  qword_1EAEF83C8 = *MEMORY[0x1E695EE50];
  qword_1EAEF83D0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF83D8 = 0;
  qword_1EAEF83E0 = createVolumeUUIDStringValue;
  qword_1EAEF83E8 = *MEMORY[0x1E695ED00];
  qword_1EAEF83F0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF83F8 = 0;
  qword_1EAEF8400 = createVolumeIdentifierValue;
  qword_1EAEF8408 = *MEMORY[0x1E695EE30];
  qword_1EAEF8410 = @"__kCFURLExpensiveVolumeInformationKey";
  qword_1EAEF8418 = 0;
  qword_1EAEF8420 = createVolumeTotalCapacityValue;
  qword_1EAEF8428 = *MEMORY[0x1E695ECF0];
  qword_1EAEF8430 = @"__kCFURLExpensiveVolumeInformationKey";
  qword_1EAEF8438 = 0;
  qword_1EAEF8440 = createVolumeAvailableCapacityValue;
  qword_1EAEF8448 = *MEMORY[0x1E695ED80];
  qword_1EAEF8450 = @"__kCFURLExpensiveVolumeInformationKey";
  qword_1EAEF8458 = 0;
  qword_1EAEF8460 = createVolumeResourceCountValue;
  qword_1EAEF8468 = *MEMORY[0x1E695E278];
  qword_1EAEF8470 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF8478 = 0u;
  qword_1EAEF8488 = *MEMORY[0x1E695E440];
  qword_1EAEF8490 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF8498 = 0u;
  qword_1EAEF84A8 = *MEMORY[0x1E695EE38];
  qword_1EAEF84B0 = @"__kCFURLCheapVolumeInformationKey";
  xmmword_1EAEF84B8 = 0u;
  qword_1EAEF84C8 = *MEMORY[0x1E695ED88];
  qword_1EAEF84D0 = @"__kCFURLCheapVolumeInformationKey";
  xmmword_1EAEF84D8 = 0u;
  qword_1EAEF84E8 = *MEMORY[0x1E695ED70];
  qword_1EAEF84F0 = @"__kCFURLCheapVolumeInformationKey";
  xmmword_1EAEF84F8 = 0u;
  qword_1EAEF8508 = *MEMORY[0x1E695E430];
  qword_1EAEF8510 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8518 = 16;
  qword_1EAEF8520 = createVolumeFlagValue;
  qword_1EAEF8528 = *MEMORY[0x1E695E410];
  qword_1EAEF8530 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8538 = 512;
  qword_1EAEF8540 = createVolumeFlagValue;
  qword_1EAEF8548 = *MEMORY[0x1E695E418];
  qword_1EAEF8550 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8558 = 1024;
  qword_1EAEF8560 = createVolumeFlagValue;
  qword_1EAEF8568 = *MEMORY[0x1E695E438];
  qword_1EAEF8570 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8578 = 4096;
  qword_1EAEF8580 = createVolumeFlagValue;
  qword_1EAEF8588 = *MEMORY[0x1E695E3F8];
  qword_1EAEF8590 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8598 = 0x4000;
  qword_1EAEF85A0 = createVolumeFlagValue;
  qword_1EAEF85A8 = *MEMORY[0x1E695E400];
  qword_1EAEF85B0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF85B8 = 0x8000;
  qword_1EAEF85C0 = createVolumeFlagValue;
  qword_1EAEF85C8 = *MEMORY[0x1E695E408];
  qword_1EAEF85D0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF85D8 = 0x10000;
  qword_1EAEF85E0 = createVolumeFlagValue;
  qword_1EAEF85E8 = *MEMORY[0x1E695E3E8];
  qword_1EAEF85F0 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF85F8 = 0;
  qword_1EAEF8600 = createVolumeDeviceIDValue;
  qword_1EAEF8608 = *MEMORY[0x1E695ECE8];
  qword_1EAEF8610 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF8618 = 0u;
  qword_1EAEF8628 = *MEMORY[0x1E695ECE0];
  qword_1EAEF8630 = @"__kCFURLNoDependsVolumeInformationKey";
  xmmword_1EAEF8638 = 0u;
  qword_1EAEF8648 = *MEMORY[0x1E695E428];
  qword_1EAEF8650 = @"__kCFURLCheapVolumeInformationKey";
  qword_1EAEF8658 = 0x20000000;
  qword_1EAEF8660 = createVolumeFlagValue;
  byte_1ED44592F = 1;
  return result;
}

void ___ZL15CreateMountInfoiP12MountInfoBuf_block_invoke()
{
  atomic_store(0, sEntriesChanged);
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.coreservicesinternal.vfs_notifications", v0);
  if (v1)
  {
    CreateMountInfo(int,MountInfoBuf *)::source = dispatch_source_create(MEMORY[0x1E69E9718], 0, 0x118uLL, v1);
    dispatch_source_set_event_handler(CreateMountInfo(int,MountInfoBuf *)::source, &__block_literal_global_10);
    v2 = CreateMountInfo(int,MountInfoBuf *)::source;

    dispatch_resume(v2);
  }
}

uint64_t parse_path_prefix(const char *a1, unsigned int *a2)
{
  if (!strncmp(a1, "/.nofollow/", 0xBuLL))
  {
    *a2 = 1;
    return 10;
  }

  else
  {
    if (strncmp(a1, "/.resolve/", 0xAuLL))
    {
LABEL_3:
      result = 0;
      *a2 = 0;
      return result;
    }

    v5 = *(a1 + 10);
    __endptr = 0;
    if (v5 == 48)
    {
      if (a1[11] != 47)
      {
        goto LABEL_3;
      }
    }

    else if ((v5 - 58) <= 0xFFFFFFF5)
    {
      goto LABEL_3;
    }

    *a2 = strtoul(a1 + 10, &__endptr, 10);
    return __endptr - a1;
  }
}

uint64_t _URLEnumeratorCreateForDirectoryURL(const __CFAllocator *a1, const void *a2, uint64_t a3, const __CFArray *a4)
{
  v8 = _URLEnumeratorCreate(a1);
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = a1;
    *(v8 + 32) = a3;
    if (a4)
    {
      MutableCopy = CFArrayCreateMutableCopy(a1, 0, a4);
      a3 = *(v9 + 32);
    }

    else
    {
      MutableCopy = 0;
    }

    *(v9 + 40) = MutableCopy;
    if ((a3 & 0x40) == 0)
    {
      if (CFURLIsFileReferenceURL(a2))
      {
        if (_CFURLGetVolumePropertyFlags())
        {
          v11 = *(v9 + 32) & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          v11 = *(v9 + 32) & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_11:
        *(v9 + 32) = v11;
        if ((v11 & 0xE) == 0)
        {
LABEL_30:
          *(v9 + 48) = CFRetain(a2);
          _SetHashCode(v9);
          return v9;
        }

        Mutable = *(v9 + 40);
        if (Mutable)
        {
          if ((v11 & 2) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
          *(v9 + 40) = Mutable;
          if ((*(v9 + 32) & 2) == 0)
          {
LABEL_19:
            if ((*(v9 + 32) & 4) != 0)
            {
              Count = CFArrayGetCount(*(v9 + 40));
              v16 = *MEMORY[0x1E695E3F0];
              if (!Count || (v23.length = Count - 1, v23.location = 0, !CFArrayContainsValue(*(v9 + 40), v23, *MEMORY[0x1E695E3F0])))
              {
                CFArrayAppendValue(*(v9 + 40), v16);
              }

              v17 = CFArrayGetCount(*(v9 + 40));
              v18 = *MEMORY[0x1E695E2B0];
              if (!v17 || (v24.length = v17 - 1, v24.location = 0, !CFArrayContainsValue(*(v9 + 40), v24, *MEMORY[0x1E695E2B0])))
              {
                CFArrayAppendValue(*(v9 + 40), v18);
              }
            }

            if ((*(v9 + 32) & 8) != 0)
            {
              v19 = CFArrayGetCount(*(v9 + 40));
              v20 = *MEMORY[0x1E695EB50];
              if (!v19 || (v25.length = v19 - 1, v25.location = 0, !CFArrayContainsValue(*(v9 + 40), v25, *MEMORY[0x1E695EB50])))
              {
                CFArrayAppendValue(*(v9 + 40), v20);
              }
            }

            goto LABEL_30;
          }
        }

        v13 = CFArrayGetCount(Mutable);
        v14 = *MEMORY[0x1E695EB40];
        if (!v13 || (v22.length = v13 - 1, v22.location = 0, !CFArrayContainsValue(*(v9 + 40), v22, *MEMORY[0x1E695EB40])))
        {
          CFArrayAppendValue(*(v9 + 40), v14);
        }

        goto LABEL_19;
      }

      a3 = *(v9 + 32);
    }

    v11 = a3 & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_11;
  }

  return v9;
}

uint64_t _URLEnumeratorCreate(const __CFAllocator *a1)
{
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_4);
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), 0x220uLL);
  }

  return v2;
}

CFHashCode _SetHashCode(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v3 ^= CFHash(v2);
  }

  result = a1[6];
  if (result)
  {
    result = CFHash(result);
    v3 ^= result;
  }

  a1[3] = v3;
  return result;
}

CFErrorRef _InitalizeDirectoryEnumerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v54 = *MEMORY[0x1E69E9840];
  *(v4 + 152) = _CFGetEUID();
  v5 = MEMORY[0x19A8C6D00](*(v4 + 16), 320, 0x6004044C4A2DFLL, 0);
  *(v4 + 72) = v5;
  if (!v5)
  {
    v10 = *(v4 + 16);
    v11 = *MEMORY[0x1E695E640];
    v12 = 12;
    v13 = 0;
LABEL_17:
    result = _FSURLCreateStandardError(v10, v11, v12, 0, v13, 0);
    goto LABEL_18;
  }

  v5[18] = 0u;
  v5[19] = 0u;
  v5[16] = 0u;
  v5[17] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  if (!CFURLGetFileSystemRepresentation(*(v4 + 48), 1u, buffer, 1044))
  {
    v10 = *(v4 + 16);
    v11 = *MEMORY[0x1E695E640];
    v13 = *(v4 + 48);
    v12 = 63;
    goto LABEL_17;
  }

  parse_path_prefix(buffer, (v4 + 552));
  *v47 = xmmword_19605E78C;
  v48 = 0;
  if (filtered_getattrlist(buffer, v47, __str, 0x43CuLL, 0x29u))
  {
    __dst[0] = 0;
    v6 = *__error();
    if (v6)
    {
LABEL_16:
      v10 = *(v4 + 16);
      v11 = *MEMORY[0x1E695E640];
      v12 = v6;
      v13 = *(v4 + 48);
      goto LABEL_17;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    if ((v50 & 8) == 0)
    {
      __dst[0] = 0;
LABEL_15:
      v6 = 22;
      goto LABEL_16;
    }

    v9 = v51;
    v7 = v52 == 5;
    v8 = v52 == 2;
    strlcpy(__dst, v53 + v53[0], 0x414uLL);
  }

  v14 = *(v4 + 552);
  bzero(__str, 0x414uLL);
  if (__dst[0] != 47)
  {
    goto LABEL_15;
  }

  *v47 = 0;
  parse_path_prefix(__dst, v47);
  if (*v47 | v14)
  {
    if ((*v47 | v14) == 1)
    {
      v15 = snprintf(__str, 0x414uLL, "/.nofollow%s");
    }

    else
    {
      v15 = snprintf(__str, 0x414uLL, "/.resolve/%u%s");
    }

    if (v15 <= 0x413)
    {
      strlcpy(__dst, __str, 0x414uLL);
      goto LABEL_24;
    }

    v6 = 63;
    goto LABEL_16;
  }

LABEL_24:
  if (v8 || !v7)
  {
    goto LABEL_58;
  }

  v18 = *(v4 + 16);
  v19 = *(v4 + 48);
  v20 = CFURLCreateWithFileSystemPath(v18, @"/private/", kCFURLPOSIXPathStyle, 1u);
  if (!v20)
  {
LABEL_62:
    v10 = *(v4 + 16);
    v11 = *MEMORY[0x1E695E640];
    v13 = *(v4 + 48);
    v12 = 20;
    goto LABEL_17;
  }

  v21 = v20;
  propertyValueTypeRefPtr = 0;
  v22 = *MEMORY[0x1E695EAB8];
  if (!CFURLCopyResourcePropertyForKey(v20, *MEMORY[0x1E695EAB8], &propertyValueTypeRefPtr, 0) || !propertyValueTypeRefPtr)
  {
    v30 = v21;
LABEL_55:
    CFRelease(v30);
    goto LABEL_62;
  }

  if (CFURLGetFileSystemRepresentation(v19, 1u, __str, 1044) && (v23 = strlen(__str), (v24 = CFURLCreateFromFileSystemRepresentation(v18, __str, v23, 0)) != 0))
  {
    v25 = v24;
    v26 = readlink(__str, v47, 0x414uLL);
    if (v26 < 0 || (v27 = MEMORY[0x19A8C75B0](v18, v47, v26, 0, v25)) == 0)
    {
      v29 = 0;
    }

    else
    {
      v28 = v27;
      url = 0;
      v29 = 0;
      if (CFURLCopyResourcePropertyForKey(v27, *MEMORY[0x1E695EBF0], &url, 0) && url)
      {
        cf1 = 0;
        v29 = 0;
        if (CFURLCopyResourcePropertyForKey(url, v22, &cf1, 0) && cf1)
        {
          if (CFEqual(cf1, propertyValueTypeRefPtr))
          {
            v29 = CFURLCopyAbsoluteURL(v28);
          }

          else
          {
            v29 = 0;
          }

          CFRelease(cf1);
        }

        CFRelease(url);
      }

      CFRelease(v28);
    }

    CFRelease(v25);
  }

  else
  {
    v29 = 0;
  }

  CFRelease(propertyValueTypeRefPtr);
  CFRelease(v21);
  if (!v29)
  {
    goto LABEL_62;
  }

  if (!CFURLGetFileSystemRepresentation(v29, 1u, buffer, 1044))
  {
    goto LABEL_54;
  }

  *v47 = xmmword_19605E78C;
  v48 = 0;
  if (!filtered_getattrlist(buffer, v47, __str, 0x43CuLL, 0x29u))
  {
    if ((v50 & 8) != 0)
    {
      v9 = v51;
      v8 = v52 == 2;
      strlcpy(__dst, v53 + v53[0], 0x414uLL);
      goto LABEL_57;
    }

    __dst[0] = 0;
    goto LABEL_54;
  }

  __dst[0] = 0;
  if (*__error())
  {
LABEL_54:
    v30 = v29;
    goto LABEL_55;
  }

  v8 = 0;
  v9 = 0;
LABEL_57:
  CFRelease(*(v4 + 48));
  *(v4 + 48) = v29;
LABEL_58:
  if (!v8)
  {
    goto LABEL_62;
  }

  if (!v9)
  {
    v10 = *(v4 + 16);
    v11 = *MEMORY[0x1E695E640];
    v13 = *(v4 + 48);
    v12 = 2;
    goto LABEL_17;
  }

  *(v4 + 128) = 5;
  *(v4 + 138) = 0;
  *(v4 + 130) = 0;
  *(v4 + 144) = 0;
  *(v4 + 121) = _FSURLGetAttrListForPropertyKeys(0, *(v4 + 40), v4 + 128, (v4 + 64), (v4 + 122));
  v31 = *(v4 + 132);
  *(v4 + 132) = v31 & 0xF7FFFFFF;
  v32 = *(v4 + 64);
  if (v32)
  {
    v55.length = CFArrayGetCount(*(v4 + 64));
    v55.location = 0;
    v33 = CFArrayContainsValue(v32, v55, *MEMORY[0x1E695EBF8]) != 0;
  }

  else
  {
    v33 = 0;
  }

  *(v4 + 123) = v33;
  if ((v31 & 0x8000000) != 0)
  {
    v35 = 1;
  }

  else
  {
    v34 = *(v4 + 40);
    if (v34)
    {
      v56.length = CFArrayGetCount(*(v4 + 40));
      v56.location = 0;
      v35 = CFArrayContainsValue(v34, v56, *MEMORY[0x1E695EA38]) != 0;
    }

    else
    {
      v35 = 0;
    }
  }

  *(v4 + 124) = v35;
  if ((*(v4 + 32) & 0x40) != 0)
  {
    v36 = strlen(__dst);
    *(v4 + 544) = v36;
    *(v4 + 536) = CFURLCreateFromFileSystemRepresentation(*(v4 + 16), __dst, v36, 1u);
    v37 = *(v4 + 544);
    if (__dst[v37 - 1] != 47)
    {
      *(v4 + 544) = v37 + 1;
    }
  }

  if (*(v4 + 121))
  {
    v38 = (v4 + 128);
  }

  else
  {
    v38 = 0;
  }

  v39 = DirEnumOpen(__dst, v38);
  *(v4 + 160) = v39;
  if (v39)
  {
    result = *(v4 + 112);
    if (!result)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v40 = *(v4 + 16);
  v41 = __error();
  result = _CFErrorWithPOSIXPathAndErrno(v40, *v41, __dst);
LABEL_18:
  *(v4 + 112) = result;
  if (result)
  {
LABEL_19:
    *(v4 + 120) = 1;
  }

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _URLEnumeratorGetNextURL(uint64_t a1, void *a2, CFErrorRef *a3, uint64_t a4)
{
  if (*(a1 + 120))
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 48);
  *(a1 + 104) = 0;
  v9 = *(a1 + 112);
  if (v8)
  {
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 112) = 0;
    }

    if (!*(a1 + 160))
    {
      _InitalizeDirectoryEnumerator(a1, a2, a3, a4);
    }

    if (*(a1 + 120))
    {
      *(a1 + 56) = 0;
      if (!a3)
      {
        return 3;
      }

      v10 = *(a1 + 112);
      if (!v10)
      {
LABEL_17:
        *a3 = v10;
        if (!v10)
        {
LABEL_28:
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            _URLEnumeratorGetNextURL_cold_1();
          }

          *a3 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
        }

        return 3;
      }
    }

    else
    {
      while (1)
      {
        v11 = *(a1 + 88);
        if (v11 < *(a1 + 80))
        {
          if (*(a1 + v11 + 488))
          {
            result = 4;
          }

          else
          {
            result = 1;
          }

          if (a2)
          {
            v16 = *(*(a1 + 72) + 8 * v11);
            *(a1 + 104) = v16;
            *a2 = v16;
            *(a1 + 56) = *(a1 + 8 * v11 + 168);
          }

          *(a1 + 88) = v11 + 1;
          return result;
        }

        v10 = *(a1 + 96);
        if (v10)
        {
          break;
        }

        if (!_GetDirectoryURLs(a1))
        {
          goto LABEL_2;
        }
      }

      *(a1 + 112) = v10;
      *(a1 + 56) = *(a1 + 528);
      *(a1 + 96) = 0;
      if (!a3)
      {
        return 3;
      }
    }

    v10 = CFRetain(v10);
    goto LABEL_17;
  }

  if (v9)
  {
    CFRelease(v9);
    *(a1 + 112) = 0;
  }

  if (!*(a1 + 72))
  {
    _InitalizeVolumeEnumerator(a1);
  }

  if (*(a1 + 120) || (v13 = *(a1 + 72)) == 0)
  {
    if (!a3)
    {
      return 3;
    }

    v12 = *(a1 + 112);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a3 = v12;
    *(a1 + 56) = 0;
    if (v12)
    {
      return 3;
    }

    goto LABEL_28;
  }

  v14 = *(a1 + 88);
  if (v14 >= *(a1 + 80))
  {
LABEL_2:
    *(a1 + 56) = 0;
    return 2;
  }

  *(a1 + 56) = 1;
  if (a2)
  {
    v15 = *(v13 + 8 * v14);
    *(a1 + 104) = v15;
    *a2 = v15;
  }

  *(a1 + 88) = v14 + 1;
  return 1;
}

uint64_t __filtered_getattrlist_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 16;
  result = sysctlbyname("kern.osproductversion", &v5, &v4, 0, 0);
  if (!result)
  {
    v2 = v5 == 825110577 && v6 == 53;
    filtered_getattrlist::isJazz = v2;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void _URLEnumeratorFinalize(const void *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 6);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 9);
  if (v4)
  {
    if (*(a1 + 10) >= 1)
    {
      v5 = 0;
      do
      {
        CFRelease(*(*(a1 + 9) + 8 * v5++));
      }

      while (v5 < *(a1 + 10));
      v4 = *(a1 + 9);
    }

    CFAllocatorDeallocate(*(a1 + 2), v4);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 12);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 14);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 20);
  if (v9)
  {
    DirEnumClose(v9);
  }

  v10 = *(a1 + 67);
  if (v10)
  {

    CFRelease(v10);
  }
}

char *DirEnumOpen(const char *a1, __int128 *a2)
{
  v3 = strlen(a1);
  v4 = malloc_type_calloc(1uLL, 0x748uLL, 0x10A0040CD28BF90uLL);
  if (!v4)
  {
    v28 = *__error();
LABEL_45:
    v5 = 0;
    *__error() = v28;
    return v5;
  }

  v5 = v4;
  if (__strlcpy_chk() > 0x6FC)
  {
    v28 = 63;
LABEL_44:
    free(v5);
    goto LABEL_45;
  }

  v6 = -1610350579;
  if (a2)
  {
    v7 = *a2;
    *(v5 + 1812) = *(a2 + 2);
    *(v5 + 1796) = v7;
    v6 = *(v5 + 450) | 0xA004000D;
    *(v5 + 450) = v6;
    *(v5 + 452) |= 4u;
  }

  else
  {
    *(v5 + 449) = 5;
    *(v5 + 1800) = xmmword_19605E7D0;
    *(v5 + 454) = 0;
  }

  v8 = ((2 * v6) & 4) + ((v6 >> 2) & 4) + ((v6 >> 2) & 8) + ((v6 >> 3) & 8) + ((v6 >> 4) & 8) + ((v6 >> 6) & 4) + 790 + ((v6 >> 5) & 0x10) + ((v6 >> 6) & 0x10) + ((v6 >> 7) & 0x10) + ((v6 >> 8) & 0x10) + ((v6 >> 9) & 0x10) + ((v6 >> 9) & 0x20) + ((v6 >> 13) & 4) + ((v6 >> 14) & 4) + ((v6 >> 15) & 4) + ((v6 >> 17) & 4) + ((v6 >> 18) & 4) + ((v6 >> 19) & 4);
  v9 = v8 + 4;
  v10 = v8 + 268;
  if ((v6 & 0x400000) == 0)
  {
    v10 = v9;
  }

  v11 = v10 + ((((v6 >> 20) & 0x10) + ((v6 >> 19) & 0x10)) | (v6 >> 22) & 8) + ((v6 >> 23) & 8);
  if ((v6 & 0x8000000) != 0)
  {
    v11 += 1032;
  }

  v12 = ((v6 >> 28) & 4 | HIBYTE(v6) & 0x10) + 4;
  if (*(v5 + 452))
  {
    v13 = ((2 * *(v5 + 452)) & 4) + (*(v5 + 452) & 0xC) + 4 * (*(v5 + 452) & 1) + ((*(v5 + 452) >> 2) & 0xCu);
  }

  else
  {
    v13 = 0;
  }

  v14 = v11 + v12;
  v15 = *(v5 + 453);
  if (v15)
  {
    v16 = vdupq_n_s32(v15);
    v17 = vshlq_u32(v16, xmmword_19605E7E0);
    v18 = vshlq_u32(v16, xmmword_19605E7F0);
    v18.i64[0] = vshlq_u32(v16, xmmword_19605E800).u64[0];
    v19 = vandq_s8(v18, xmmword_19605E810);
    v18.i64[0] = 0x800000008;
    v18.i64[1] = 0x800000008;
    v20 = vaddvq_s32(vaddq_s32(vandq_s8(v17, v18), v19)) + ((v15 >> 5) & 4) + ((v15 >> 5) & 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = v14 + 20;
  if (*(v5 + 454))
  {
    v22 = ((2 * *(v5 + 454)) & 8) + (*(v5 + 454) & 8) + ((*(v5 + 454) >> 1) & 8u);
  }

  else
  {
    v22 = 0;
  }

  if (v13 <= v20)
  {
    v13 = v20;
  }

  *(v5 + 228) = v13 + v21 + v22;
  v5[1833] = 0;
  *(v5 + 1848) = 0u;
  v23 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F004033F4FF7FuLL);
  if (!v23)
  {
    v28 = *__error();
    goto LABEL_44;
  }

  v24 = v23;
  *(v5 + 230) = v23;
  *(v23 + 12) = 0;
  *(v23 + 52) &= ~1u;
  v25 = *(v5 + 231);
  if (v25)
  {
    *(v5 + 231) = *v25;
    *(v25 + 2) = 0u;
    *(v25 + 3) = 0u;
    *(v25 + 4) = 0u;
    *v25 = 0u;
    *(v25 + 1) = 0u;
  }

  else
  {
    v25 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F004033F4FF7FuLL);
    if (!v25)
    {
      v28 = *__error();
LABEL_43:
      free(*(v5 + 230));
      goto LABEL_44;
    }
  }

  *v24 = v25;
  *v25 = 0;
  *(v25 + 1) = v5;
  *(v25 + 4) = v3;
  *(v25 + 2) = v3;
  *(v25 + 5) = 0;
  *(v25 + 12) = 1;
  *(v25 + 52) = *(v25 + 52) & 0xFC | 1;
  v26 = malloc_type_malloc(*(v5 + 228), 0x2B713B78uLL);
  *(v25 + 7) = v26;
  if (!v26)
  {
    v28 = *__error();
LABEL_42:
    free(**(v5 + 230));
    goto LABEL_43;
  }

  if (GetattrlistRetry(*(v25 + 1), v5 + 449, v25 + 7, *(v5 + 228)))
  {
    v28 = *__error();
LABEL_41:
    free(*(v25 + 7));
    goto LABEL_42;
  }

  v36 = 0;
  if (!ParseAttributes(*(v25 + 7), &v36 + 1, v25 + 3, v25 + 4, v25 + 16, &v36, &v35, &v34, &v33))
  {
    v28 = 22;
    goto LABEL_41;
  }

  if (v36 != 2)
  {
    v28 = 20;
    goto LABEL_41;
  }

  *(v5 + 448) = *(v25 + 16);
  v32 = 0;
  v31 = xmmword_19605E820;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  if (!getattrlist(v5, &v31, v29, 0x24uLL, 0))
  {
    v5[1832] = (WORD4(v29[0]) & 0x4000) != 0;
  }

  *(v25 + 9) = 0;
  return v5;
}

uint64_t ParseAttributes(_DWORD *a1, _DWORD *a2, void *a3, void *a4, _DWORD *a5, _DWORD *a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  v9 = a1[1];
  if (v9)
  {
    if ((v9 & 0x20000000) != 0)
    {
      *a2 = a1[6];
      v19 = a1[7];
      v18 = a1 + 7;
      *a3 = v18 + v19;
      *a4 = (v18[1] - 1);
    }

    else
    {
      v10 = a1[3];
      *a2 = 0;
      v11 = a1[7];
      *a3 = a1 + a1[6] + 24;
      *a4 = (v11 - 1);
      v12 = 9;
      if ((v9 & 2) == 0)
      {
        v12 = 8;
      }

      v13 = &a1[v12];
      if ((v9 & 4) != 0)
      {
        v14 = *v13;
        v13 += 2;
        *a5 = v14;
      }

      if ((v9 & 8) != 0)
      {
        v15 = *v13++;
        *a6 = v15;
      }

      v16 = v13 + ((v9 >> 2) & 4) + ((v9 >> 2) & 8) + ((v9 >> 3) & 8) + ((v9 >> 4) & 8) + ((v9 >> 6) & 4) + ((v9 >> 5) & 0x10) + ((v9 >> 6) & 0x10) + ((v9 >> 7) & 0x10) + ((v9 >> 8) & 0x10) + ((v9 >> 9) & 0x30) + ((v9 >> 13) & 4) + ((v9 >> 14) & 4) + ((v9 >> 15) & 4);
      if ((v9 & 0x40000) != 0)
      {
        v20 = *(v16 + 2);
        v16 += 4;
        v17 = (v20 & 0x80) == 0;
      }

      else
      {
        v17 = 1;
      }

      if (*a6 == 2)
      {
        if (!v17)
        {
          *a9 = 1;
        }

        if ((v10 & 4) != 0)
        {
          v21 = *(v16 + ((v9 >> 17) & 4) + ((v9 >> 18) & 4) + ((v9 >> 19) & 4) + ((v9 >> 19) & 8) + ((v9 >> 19) & 0x10) + ((v9 >> 20) & 0x10) + ((v9 >> 22) & 8) + ((v9 >> 23) & 8) + (BYTE3(v9) & 8) + (BYTE3(v9) & 0x10) + ((v9 >> 28) & 4) + 4 * (v10 & 1) + ((2 * v10) & 4));
          if (v21)
          {
            *a7 = 1;
          }

          if ((v21 & 2) != 0)
          {
            *a8 = 1;
          }
        }
      }
    }
  }

  else
  {
    *a2 = 22;
  }

  return v9 & 1;
}

uint64_t _GetDirectoryURLs(uint64_t a1)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v43[0] = 0;
  v2 = MountInfoStorageSize();
  v6 = &v37 - ((MEMORY[0x1EEE9AC00](v2, v3, v4, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 72);
  if (!v7)
  {
    v13 = 0;
    goto LABEL_87;
  }

  v8 = (a1 + 80);
  if (*(a1 + 80) >= 1)
  {
    v9 = 0;
    do
    {
      CFRelease(*(*(a1 + 72) + 8 * v9++));
    }

    while (v9 < *(a1 + 80));
    v7 = *(a1 + 72);
  }

  bzero(v7, 0x140uLL);
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *v8 = 0;
  *(a1 + 88) = 0;
  if (*(a1 + 121))
  {
    v10 = *(*(a1 + 160) + 1792);
    if (v10)
    {
      if (!MountInfoPrepare(v43, 0, v10, v6, a1 + 152, 0, 0))
      {
        *(a1 + 121) = 0;
      }
    }
  }

  v42 = 0;
  v11 = DirEnumRead(*(a1 + 160));
  if (!v11)
  {
    v13 = 0;
    goto LABEL_86;
  }

  v12 = v11;
  v13 = 0;
  v14 = *MEMORY[0x1E695EB40];
  v38 = *MEMORY[0x1E695EB50];
  while (1)
  {
    v15 = *(v12 + 48);
    if (v15 > 6)
    {
      goto LABEL_77;
    }

    v16 = 1 << v15;
    if (((1 << v15) & 6) != 0)
    {
      if (!*(v12 + 44))
      {
        goto LABEL_77;
      }

      if (v15 != 1)
      {
        goto LABEL_53;
      }

      if (*(a1 + 32))
      {
        goto LABEL_22;
      }

      DirEnumSkipDescendents(*(a1 + 160));
      v15 = *(v12 + 48);
      if (v15 == 2)
      {
LABEL_53:
        if ((*(a1 + 32) & 0x20) == 0)
        {
          goto LABEL_77;
        }

        v21 = 0;
        v20 = 1;
        goto LABEL_29;
      }

      if (v15 == 1)
      {
LABEL_22:
        if ((*(a1 + 32) & 0x30) == 0x20)
        {
          goto LABEL_77;
        }

        v20 = 0;
        v21 = 1;
        goto LABEL_29;
      }
    }

    else if ((v16 & 0x18) == 0)
    {
      if ((v16 & 0x60) == 0)
      {
        goto LABEL_77;
      }

      v17 = *(a1 + 16);
      v18 = *(v12 + 40);
      v19 = *(v12 + 8);
      goto LABEL_56;
    }

    if (v15 == 3 && (*(a1 + 35) & 0x80) == 0)
    {
      v22 = *(v12 + 24);
      if (*v22 == 46 && v22[1] == 95)
      {
        goto LABEL_77;
      }
    }

    v21 = 0;
    v20 = 0;
LABEL_29:
    if (*(a1 + 121) && *(v12 + 56))
    {
      break;
    }

    v28 = MEMORY[0x19A8C75B0](*(a1 + 16), *(v12 + 8) + *(a1 + 544), *(v12 + 16) - *(a1 + 544), v21 | v20, *(a1 + 536));
    if (!v28)
    {
      v17 = *(a1 + 16);
      v19 = *(v12 + 8);
      v18 = 63;
LABEL_56:
      v32 = _CFErrorWithPOSIXPathAndErrno(v17, v18, v19);
      if (v32)
      {
        goto LABEL_84;
      }

      goto LABEL_78;
    }

    v25 = v28;
    if (*(a1 + 64))
    {
      v29 = __CFURLResourceInfoPtr();
      OUTLINED_FUNCTION_1_1(v29);
    }

LABEL_47:
    v30 = *(a1 + 80);
    *(*(a1 + 72) + 8 * v30) = v25;
    *(a1 + 168 + 8 * v30) = *(v12 + 44);
    if (*(v12 + 48) == 2)
    {
      *(a1 + 488 + *v8) = 1;
    }

    v31 = *v8 + 1;
    *v8 = v31;
    if (v31 == 40)
    {
      goto LABEL_85;
    }

    v13 = 1;
    if (*(v12 + 48) - 1) <= 1 && (*(a1 + 32))
    {
      goto LABEL_86;
    }

LABEL_80:
    v42 = 0;
    v12 = DirEnumRead(*(a1 + 160));
    if (!v12)
    {
      goto LABEL_86;
    }
  }

  HasExtendedAttributes = DirEnumHasExtendedAttributes(*(a1 + 160));
  v24 = _FSURLCreateWithPathAndExtendedAttributes(*(a1 + 16), *(v12 + 8), *(v12 + 16), *(a1 + 544), *(a1 + 536), *(a1 + 160) + 1796, *(v12 + 56), HasExtendedAttributes, (*(a1 + 32) & 4) != 0, *(a1 + 123), HIBYTE(*(a1 + 123)), -1, *(a1 + 552), v43[0], &v42);
  if (!v24)
  {
    goto LABEL_77;
  }

  v25 = v24;
  if ((*(a1 + 32) & 2) == 0)
  {
    goto LABEL_33;
  }

  v33 = __CFURLResourceInfoPtr();
  v40 = 0;
  v41 = 0;
  if (!v33 || !_FileCacheGetFlags(v33, &v41, &v40, 0, 0) || (v40 & 0x80) == 0)
  {
    propertyValueTypeRefPtr = 0;
    if (CFURLCopyResourcePropertyForKey(v25, v14, &propertyValueTypeRefPtr, 0) && propertyValueTypeRefPtr)
    {
      if (CFBooleanGetValue(propertyValueTypeRefPtr))
      {
        if (*(v12 + 48) == 1)
        {
          DirEnumSkipDescendents(*(a1 + 160));
        }

        CFRelease(v25);
        v34 = propertyValueTypeRefPtr;
        goto LABEL_76;
      }

      CFRelease(propertyValueTypeRefPtr);
    }

    goto LABEL_33;
  }

  if ((v41 & 0x80) == 0)
  {
LABEL_33:
    if (*(a1 + 122))
    {
      _FSURLCacheCheapVolumeInformation(v25, *(*(a1 + 160) + 1792), v43[0]);
    }

    if (*(a1 + 64))
    {
      v26 = __CFURLResourceInfoPtr();
      OUTLINED_FUNCTION_1_1(v26);
    }

    if ((*(a1 + 32) & 8) != 0 && *(v12 + 48) == 1)
    {
      v27 = __CFURLResourceInfoPtr();
      v41 = 0;
      if (v27 && _FileCacheGetPropertyValueForKey(v27, v38, &v41) && v41)
      {
        if (CFBooleanGetValue(v41))
        {
          DirEnumSkipDescendents(*(a1 + 160));
        }
      }

      else if (CFURLCopyResourcePropertyForKey(v25, v38, &v41, 0) && v41)
      {
        if (CFBooleanGetValue(v41))
        {
          DirEnumSkipDescendents(*(a1 + 160));
        }

        CFRelease(v41);
      }
    }

    goto LABEL_47;
  }

  if (*(v12 + 48) == 1)
  {
    DirEnumSkipDescendents(*(a1 + 160));
  }

  v34 = v25;
LABEL_76:
  CFRelease(v34);
LABEL_77:
  v32 = v42;
  if (!v42)
  {
LABEL_78:
    if (*(v12 + 48) - 1) <= 1 && (*(a1 + 32))
    {
      goto LABEL_85;
    }

    goto LABEL_80;
  }

LABEL_84:
  *(a1 + 96) = v32;
  *(a1 + 528) = *(v12 + 44);
LABEL_85:
  v13 = 1;
LABEL_86:
  MountInfoDestroy(v43[0]);
LABEL_87:
  v35 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t DirEnumRead(uint64_t a1)
{
  for (i = *(a1 + 1840); ; i = 0)
  {
    if (!i || (*(a1 + 1833) & 1) != 0)
    {
      i = 0;
      *(a1 + 1833) = 1;
      goto LABEL_43;
    }

    v16 = 0;
    v3 = *(i + 48);
    if (v3 == 1)
    {
      break;
    }

    if (!v3)
    {
      v4 = *i;
LABEL_7:
      DirEnumEntryFree(a1, i);
      goto LABEL_31;
    }

    v10 = *i;
    if (*i)
    {
      *&v17.st_dev = 0;
      v11 = NextEntryFromParent(a1, v10, &v17, &v16);
      if (v11 == 2)
      {
        v4 = *i;
      }

      else
      {
        if (v11 == 1)
        {
          v4 = *&v17.st_dev;
          goto LABEL_7;
        }

        v4 = *i;
        *(v4 + 40) = v16;
        *(v4 + 48) = 6;
      }

      DirEnumEntryFree(a1, i);
      *(a1 + *(v4 + 16)) = 0;
      goto LABEL_31;
    }

    DirEnumEntryFree(a1, i);
LABEL_21:
    *(a1 + 1840) = 0;
LABEL_32:
    v4 = 0;
    if (*(a1 + 1833))
    {
      return v4;
    }
  }

  *(i + 48) = 2;
  if ((*(i + 52) & 2) != 0 || *(i + 64) != *(a1 + 1792))
  {
    goto LABEL_43;
  }

  *(a1 + *(i + 16)) = 0;
  v5 = malloc_type_malloc(0x30uLL, 0x10A004010CD0317uLL);
  if (!v5)
  {
    v14 = *__error();
    goto LABEL_40;
  }

  v6 = v5;
  v7 = open(a1, 17825792);
  *v6 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    memset(&v17, 0, sizeof(v17));
    if (!fstat(v7, &v17))
    {
      if (v17.st_dev != *(a1 + 1792))
      {
        v14 = 18;
        goto LABEL_38;
      }

      v6[4] = 0;
      *(v6 + 1) = a1;
      v8 = 20 * *(a1 + 1824);
      *(v6 + 2) = v8;
      v9 = *(a1 + 1856);
      if (v9)
      {
        *(a1 + 1856) = 0;
        *(v6 + 3) = v9;
LABEL_23:
        *(v6 + 4) = 0;
        *(v6 + 5) = 0;
        *(i + 72) = v6;
        *&v17.st_dev = 0;
        v13 = NextEntryFromParent(a1, i, &v17, &v16);
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v4 = *&v17.st_dev;
            goto LABEL_31;
          }

          *(i + 40) = v16;
          *(i + 48) = 6;
        }

        *(a1 + *(i + 16)) = 0;
        v4 = i;
LABEL_31:
        *(a1 + 1840) = v4;
        if (v4)
        {
          return v4;
        }

        goto LABEL_32;
      }

      v12 = malloc_type_malloc(v8, 0xBE6E696EuLL);
      *(v6 + 3) = v12;
      if (v12)
      {
        goto LABEL_23;
      }
    }

    v14 = *__error();
LABEL_38:
    v16 = v14;
    close(*v6);
    goto LABEL_39;
  }

  v14 = *__error();
  v16 = v14;
LABEL_39:
  free(v6);
LABEL_40:
  *(i + 72) = 0;
  *(i + 40) = v14;
  if (v14 == 12)
  {
    DirEnumEntryFree(a1, i);
    *(a1 + 1833) = 1;
    goto LABEL_21;
  }

  if (v14 == 18)
  {
    *(i + 40) = 0;
  }

  else
  {
    *(i + 48) = 6;
  }

LABEL_43:
  *(a1 + 1840) = i;
  return i;
}

void DirEnumEntryFree(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 52))
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      free(v4);
    }
  }

  v5 = *(a2 + 72);
  if (v5)
  {
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = *(v5 + 3);
    if (*(v7 + 1856))
    {
      free(v8);
    }

    else
    {
      *(v7 + 1856) = v8;
    }

    free(v5);
    close(v6);
    *(a2 + 72) = 0;
  }

  *a2 = *(a1 + 1848);
  *(a1 + 1848) = a2;
}

uint64_t NextEntryFromParent(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  *a3 = 0;
  *a4 = 0;
  v8 = *(a1 + 1848);
  if (v8)
  {
    *(a1 + 1848) = *v8;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *a3 = v8;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F004033F4FF7FuLL);
    *a3 = v8;
    if (!v8)
    {
      *a4 = *__error();
      return 3;
    }
  }

  v9 = *(a2 + 72);
  if (*(v9 + 4))
  {
    goto LABEL_5;
  }

  v11 = *(v9 + 40);
  v12 = *(v9 + 44);
  if (v12 >= v11)
  {
    *(v9 + 44) = 0;
  }

  else if (v12)
  {
    v10 = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_18:
    v15 = *(v9 + 32);
    *(v9 + 32) = v15 + *v15;
    ++*(v9 + 44);
    *a4 = 0;
    *(v8 + 7) = v15;
    v16 = (v8 + 56);
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v17 = v8 + 32;
    if ((ParseAttributes(v15, &v30 + 1, v8 + 3, v8 + 4, v8 + 16, &v30, &v29 + 1, &v29, &v28) & 1) == 0)
    {
      *(v8 + 12) = 5;
      v27 = HIDWORD(v30);
      goto LABEL_52;
    }

    v18 = HIDWORD(v30);
    if (HIDWORD(v30))
    {
      *(v8 + 12) = 5;
      *(v8 + 10) = v18;
      v8[52] &= ~1u;
      goto LABEL_38;
    }

    if ((v29 & 0x100) == 0 && v28 != 1)
    {
      v8[52] &= ~1u;
      goto LABEL_32;
    }

    v19 = *(a2 + 16);
    if (*(v19 + a1 - 1) != 47)
    {
      if ((v19 + 1) >= 0x6FD)
      {
        goto LABEL_53;
      }

      *(a1 + v19++) = 47;
    }

    *(a1 + v19) = 0;
    if ((*v17 + v19) < 0x6FD)
    {
      memcpy((a1 + v19), *(v8 + 3), *v17 + 1);
      v20 = malloc_type_malloc(*(a1 + 1824), 0x75D782B8uLL);
      *v16 = v20;
      if (!v20)
      {
        *(v8 + 12) = 5;
        v21 = 12;
        goto LABEL_56;
      }

      v8[52] |= 1u;
      if (GetattrlistRetry(a1, (a1 + 1796), v8 + 7, *(a1 + 1824)))
      {
        *(v8 + 12) = 5;
        v21 = *__error();
        goto LABEL_56;
      }

      if ((ParseAttributes(*v16, &v30 + 1, v8 + 3, v8 + 4, v8 + 16, &v30, &v29 + 1, &v29, &v28) & 1) == 0)
      {
        *(v8 + 12) = 5;
        v21 = HIDWORD(v30);
LABEL_56:
        *(v8 + 10) = v21;
        goto LABEL_38;
      }

LABEL_32:
      *(v8 + 10) = 0;
      if (v30 == 2)
      {
        v22 = 1;
      }

      else if (v30 == 1)
      {
        v22 = 3;
      }

      else
      {
        v22 = 4;
      }

      *(v8 + 12) = v22;
LABEL_38:
      *v8 = a2;
      *(v8 + 1) = a1;
      v23 = *(a2 + 16);
      if (*(v23 + a1 - 1) != 47)
      {
        if ((v23 + 1) >= 0x6FD)
        {
LABEL_50:
          *(v8 + 12) = 5;
          v27 = 63;
LABEL_52:
          *(v8 + 10) = v27;
          return 1;
        }

        *(a1 + v23++) = 47;
      }

      *(a1 + v23) = 0;
      if ((*v17 + v23) < 0x6FD)
      {
        memcpy((a1 + v23), *(v8 + 3), *v17 + 1);
        *(v8 + 11) = *(a2 + 44) + 1;
        v24 = *(v8 + 4) + v23;
        *(v8 + 2) = v24;
        if (v24 < 0x400)
        {
          if ((v29 | HIBYTE(v29)))
          {
            v25 = 2;
          }

          else
          {
            v25 = 0;
          }

          v8[52] = v25 | v8[52] & 0xFD;
          *(v8 + 9) = 0;
          return 1;
        }
      }

      goto LABEL_50;
    }

LABEL_53:
    *(v8 + 12) = 5;
    v21 = 63;
    goto LABEL_56;
  }

  v13 = getattrlistbulk(*v9, (*(v9 + 8) + 1796), *(v9 + 24), *(v9 + 16), 0x20uLL);
  if (v13 < 1)
  {
    *(v9 + 40) = 0;
    *(v9 + 4) = 1;
    if (v13)
    {
      v14 = *__error();
      v10 = 3;
    }

    else
    {
      v14 = 0;
      v10 = 2;
    }
  }

  else
  {
    v14 = 0;
    v10 = 0;
    *(v9 + 40) = v13;
    *(v9 + 32) = *(v9 + 24);
  }

  *a4 = v14;
  if (*(v9 + 40))
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v10 != 2)
  {
    DirEnumEntryFree(a1, v8);
    *a3 = 0;
    return v10;
  }

LABEL_5:
  DirEnumEntryFree(a1, v8);
  *a3 = 0;
  return 2;
}

uint64_t _FSURLGetAttrListForPropertyKeys(int a1, CFArrayRef theArray, uint64_t a3, __CFArray **a4, Boolean *a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (initGlobalsOnce(void)::onceToken == -1)
  {
    if (theArray)
    {
      goto LABEL_3;
    }

LABEL_58:
    v41 = 0;
    goto LABEL_59;
  }

  initGlobalsOnce();
  if (!theArray)
  {
    goto LABEL_58;
  }

LABEL_3:
  if (a5)
  {
    *a5 = 0;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_58;
  }

  v9 = Count;
  memset(v48, 0, 60);
  memset(v47, 0, 60);
  if (Count >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      Value = CFDictionaryGetValue(qword_1ED4458B8, ValueAtIndex);
      if (Value)
      {
        v13 = Value;
        addPropertyAndDependenciesToBitmap(Value, v48);
        if (a4 && qword_1ED4458A8 != **(v13 + 140))
        {
          addPropertyAndDependenciesToBitmap(v13, v47);
        }

        if (a5 && !*a5 && qword_1ED4458B0 == **(v13 + 140))
        {
          *a5 = CFEqual(*(*v13 + 8), @"__kCFURLCheapVolumeInformationKey");
        }
      }
    }
  }

  v14 = qword_1ED4458A8;
  if (a4)
  {
    v15 = v47 + 12 * qword_1ED4458A8;
    *(v15 + 2) = 0;
    *v15 = 0;
    if (qword_1ED445788 < 1)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = 0;
      v17 = 0;
      do
      {
        v18 = v47 + 12 * v17;
        v19 = *v18;
        v50 = 0;
        v51 = v19;
        v52 = *(v18 + 2);
        v49 = 0;
        if (PropertyMaskIsNotZero(&v51, &v50, &v49) && v50 <= v49)
        {
          v20 = v51;
          v21 = v52;
          v22 = v49 - v50 + 1;
          v23 = 148 * v50;
          do
          {
            v24 = sFileProviderGlobals[7 * v17 + 8];
            v25 = *(v24 + v23 + 136);
            v26 = 1 << v25;
            v27 = v25 < 64;
            if (v25 >= 64)
            {
              v28 = 0;
            }

            else
            {
              v28 = 1 << v25;
            }

            if (v27)
            {
              v29 = 0;
            }

            else
            {
              v29 = v26;
            }

            v30 = v29 & v21;
            if ((v28 & v20) != 0 || v30 != 0)
            {
              if (Mutable || (v32 = CFGetAllocator(*(v24 + v23 + 8)), (Mutable = CFArrayCreateMutable(v32, 0, MEMORY[0x1E695E9C0])) != 0))
              {
                CFArrayAppendValue(Mutable, *(v24 + v23 + 8));
              }
            }

            v23 += 148;
            --v22;
          }

          while (v22);
        }

        ++v17;
      }

      while (v17 < qword_1ED445788);
      v14 = qword_1ED4458A8;
    }

    *a4 = Mutable;
  }

  LOBYTE(v52) = 0;
  v51 = 0;
  v33 = SHIDWORD(sFileProviderGlobals[7 * v14 + 2]);
  if (v33 >= 1)
  {
    v34 = v48 + 12 * v14;
    v35 = *v34;
    v36 = *(v34 + 2);
    v37 = sFileProviderGlobals[7 * v14 + 8];
    do
    {
      v38 = v37[34];
      v39 = 1 << v38;
      if (v38 >= 64)
      {
        v39 = 0;
      }

      if ((v39 & v35) != 0 || (v38 >= 64 ? (v40 = 1 << v38) : (v40 = 0), (v40 & v36) != 0))
      {
        *(&v51 + *(*v37 + 16)) = 1;
        LOBYTE(v51) = 1;
      }

      v37 += 37;
      --v33;
    }

    while (v33);
  }

  v41 = 0;
  v42 = 0;
  v43 = &dword_1ED44569C;
  do
  {
    if (*(&v51 + v42))
    {
      *(a3 + 4) = vorrq_s8(*(a3 + 4), *(v43 - 1));
      *(a3 + 20) |= *v43;
      v41 = 1;
    }

    ++v42;
    v43 += 6;
  }

  while (v42 != 9);
LABEL_59:
  v44 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t GetattrlistRetry(char *a1, _DWORD *a2, void **a3, size_t a4)
{
  result = filtered_getattrlist(a1, a2, *a3, a4, 0x25u);
  if (result)
  {
    return result;
  }

  v9 = **a3;
  if (v9 <= a4)
  {
    return 0;
  }

  if (v9 > 0x10000)
  {
    syslog(3, "GetattrlistRetry: realloc request too large (%d)", **a3);
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  v10 = malloc_type_realloc(*a3, **a3, 0x7E0CB0B3uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v10;

  return filtered_getattrlist(a1, a2, v10, v9, 0x21u);
}

uint64_t pathURLPropertyProviderCopyValues(const __CFURL *a1, uint64_t a2, CFTypeRef *a3, void **a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 1)
  {
    return 1;
  }

  v6 = a6;
  v11 = *MEMORY[0x1E695EE48];
  v12 = *MEMORY[0x1E695EBF0];
  v13 = *MEMORY[0x1E695EBF8];
  v18 = *MEMORY[0x1E695E300];
  cf2 = *MEMORY[0x1E695EB30];
  v17 = *MEMORY[0x1E695E308];
  while (1)
  {
    v14 = *a3;
    if (!CFEqual(*a3, v11))
    {
      if (!CFEqual(v14, v12) && !CFEqual(v14, v13) && !CFEqual(v14, cf2) && !CFEqual(v14, v18))
      {
        result = CFEqual(v14, v17);
        if (!result)
        {
          return result;
        }
      }

      result = _FileCacheGetPropertyValueForKey(a2, v14, a4);
      if (!result)
      {
        return result;
      }

LABEL_15:
      if (*a4)
      {
        CFRetain(*a4);
      }

      goto LABEL_17;
    }

    if (_FileCacheGetPropertyValueForKey(a2, v11, a4))
    {
      goto LABEL_15;
    }

    if ((~*_FileCacheGetAttributes(a2) & 0x2001) != 0)
    {
      return 0;
    }

    result = CFURLHasDirectoryPath(a1);
    if (!result)
    {
      return result;
    }

    v16 = CFURLGetString(a1);
    if (_FileURLStringHasNoFollowPrefix(v16))
    {
      return 0;
    }

    *a4 = CFRetain(a1);
LABEL_17:
    ++a4;
    ++a3;
    if (!--v6)
    {
      return 1;
    }
  }
}

BOOL _FSURLStartAccessingSecurityScopedResource(const __CFURL *a1)
{
  propertyValueTypeRefPtr = 0;
  if (!a1 || !_CFURLIsFileURL())
  {
    return 0;
  }

  v2 = CFURLCopyResourcePropertyForKey(a1, @"_NSURLSecuritySandboxExtensionKey", &propertyValueTypeRefPtr, 0);
  v3 = SandboxExtensionCache::shared(v2);
  v4 = SandboxExtensionCache::consume(v3, a1, propertyValueTypeRefPtr);
  if (v4)
  {
    v5 = v4;
    if (v4 != propertyValueTypeRefPtr)
    {
      _FSURLSetPermanentResourcePropertyForKey(a1, @"_NSURLSecuritySandboxExtensionKey", v4);
    }

    CFRelease(v5);
    v6 = 0;
    v7 = 1;
  }

  else
  {
    getpid();
    v8 = sandbox_check();
    v6 = v8 != 0;
    v7 = v8 == 0;
  }

  if (propertyValueTypeRefPtr)
  {
    CFRelease(propertyValueTypeRefPtr);
  }

  cf = 0;
  if (!v6)
  {
    if (CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695E3B0], &cf, 0))
    {
      v9 = cf;
      if (cf)
      {
        if (cf != *MEMORY[0x1E695E738])
        {
          _FSURLStartAccessingSecurityScopedResource();
          v9 = cf;
        }

        CFRelease(v9);
      }
    }
  }

  return v7;
}

uint64_t SandboxExtensionCache::_consume(CFDictionaryRef *this, const __CFString *a2, const __CFData *a3, const __CFData **a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    SandboxExtensionCache::_consume();
  }

  *a4 = 0;
  Item = SandboxExtensionCache::_findItem(this, a2, a3);
  v9 = Item;
  if (a3 && !Item)
  {
    v9 = SandboxExtensionCache::_insert(this, a2, a3);
  }

  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = v10 + 1;
      *v9 = v10 + 1;
      v12 = securityScopedLog;
      if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
      {
        v18 = v9[1];
        v19 = 134218498;
        v20 = v18;
        v21 = 2048;
        v22 = v11;
        v23 = 2112;
        v24 = a2;
        _os_log_debug_impl(&dword_19602C000, v12, OS_LOG_TYPE_DEBUG, "handle %lld: incrementing ref count to %lld for path %@", &v19, 0x20u);
      }

      result = 0;
LABEL_17:
      *a4 = v9[2];
      goto LABEL_18;
    }

    CFDataGetBytePtr(v9[2]);
    v14 = sandbox_extension_consume();
    v9[1] = v14;
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = securityScopedLog;
      if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
      {
        SandboxExtensionCache::_consume(a2, v14, v15);
      }

      result = 0;
      *v9 = 1;
      goto LABEL_17;
    }

    v17 = os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR);
    if (v14 == -1)
    {
      if (v17)
      {
        SandboxExtensionCache::_consume();
      }
    }

    else if (v17)
    {
      SandboxExtensionCache::_consume();
    }

    result = 4;
  }

  else
  {
    getpid();
    if (sandbox_check())
    {
      result = 3;
    }

    else
    {
      result = 2;
    }
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableDictionaryRef _FileCacheGetPermanentPropertyDictionary(void *cf, int a2)
{
  result = cf[38];
  if (a2)
  {
    if (!result)
    {
      v4 = CFGetAllocator(cf);
      result = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      cf[38] = result;
    }
  }

  return result;
}

CFMutableDictionaryRef _FileCacheGetTemporaryPropertyDictionary(void *cf, int a2)
{
  result = cf[37];
  if (a2)
  {
    if (!result)
    {
      v4 = CFGetAllocator(cf);
      result = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      cf[37] = result;
    }
  }

  return result;
}

uint64_t pathURLPropertyProviderPrepareValues(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CFErrorRef *a7)
{
  v92 = *MEMORY[0x1E69E9840];
  _FileCacheLock(a2);
  if (a5 < 1)
  {
    v20 = 1;
    goto LABEL_121;
  }

  v12 = 0;
  v13 = 0;
  v77 = 0;
  v74 = 0;
  v14 = *MEMORY[0x1E695EE48];
  v15 = *MEMORY[0x1E695EBF0];
  v67 = *MEMORY[0x1E695E640];
  v70 = *MEMORY[0x1E695E628];
  cf2 = *MEMORY[0x1E695EBF8];
  v75 = *MEMORY[0x1E695EB30];
  v72 = *MEMORY[0x1E695E4D0];
  v69 = *MEMORY[0x1E695E4C0];
  v71 = *MEMORY[0x1E695E300];
  v68 = *MEMORY[0x1E695E308];
  v73 = a7;
  while (1)
  {
    v16 = *(a3 + 8 * v12);
    if (CFEqual(v16, v14))
    {
      Attributes = _FileCacheGetAttributes(a2);
      if (!v13)
      {
        v77 = CFURLIsFileReferenceURL(a1);
      }

      if ((*(Attributes + 1) & 0x20) == 0 || !CFURLHasDirectoryPath(a1) || (v18 = CFURLGetString(a1), _FileURLStringHasNoFollowPrefix(v18)))
      {
LABEL_9:
        cf = 0;
        if (!_FileCacheGetPropertyValueForKey(a2, v14, &cf))
        {
          v19 = CFGetAllocator(a1);
          if (!createVolumeURL(v19, v77, Attributes, &cf))
          {
            goto LABEL_118;
          }

          _FileCacheSetPropertyValueForKey(a2, v14, cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        goto LABEL_13;
      }

      if (v77)
      {
        v28 = CFURLGetString(a1);
        if (CFStringFind(v28, @"/?", 0).length == 2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v77 = 0;
      }

LABEL_13:
      v13 = 1;
      goto LABEL_14;
    }

    if (CFEqual(v16, v15))
    {
      v81 = 0;
      if (_FileCacheGetPropertyValueForKey(a2, v15, &v81))
      {
        goto LABEL_14;
      }

      v21 = _FileCacheGetAttributes(a2);
      v80 = 0;
      if (!v13)
      {
        v77 = CFURLIsFileReferenceURL(a1);
      }

      if ((*v21 & 0x2000) != 0)
      {
        v31 = CFGetAllocator(a1);
        if (!createVolumeParentURL(v31, v77, v21, &v80))
        {
          goto LABEL_118;
        }

        v32 = v80;
        _FileCacheSetPropertyValueForKey(a2, v15, v80);
        if (!v32)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      v22 = *(v21 + 112);
      if (v77)
      {
        if (!v22)
        {
          goto LABEL_63;
        }

        if (*(v21 + 136))
        {
          v23 = CFGetAllocator(a1);
          v24 = *(v21 + 112);
          v25 = *(v21 + 136);
          v20 = 1;
          FileReferenceURLRef = createFileReferenceURLRef(v23, v24, 0, v25, 0, 1, 0);
          _FileCacheSetPropertyValueForKey(a2, v15, FileReferenceURLRef);
          if (FileReferenceURLRef)
          {
            CFRelease(FileReferenceURLRef);
          }

          goto LABEL_116;
        }
      }

      else if (!v22)
      {
        goto LABEL_63;
      }

      if ((*v21 & 0x8000) != 0)
      {
        if (!getFileSystemPathForFileID(v22, *(v21 + 136), __s, 0x400))
        {
          goto LABEL_118;
        }

        v36 = CFGetAllocator(a1);
        v37 = strlen(__s);
        v88 = 0;
        v89 = 0;
        cf = __s;
        v83 = v37;
        v84 = 0u;
        v85 = 0u;
        v86 = 1;
        v87 = 1;
        v38 = __FSURLCreateWithPathAndAttributes(v36, &cf, 0);
        v80 = v38;
        if (!v38)
        {
          goto LABEL_118;
        }

        v32 = v38;
        _FileCacheSetPropertyValueForKey(a2, v15, v38);
LABEL_61:
        CFRelease(v32);
LABEL_62:
        v20 = 1;
LABEL_116:
        v13 = 1;
        goto LABEL_15;
      }

LABEL_63:
      if (!CFURLGetFileSystemRepresentation(a1, 1u, __s, 1024))
      {
        if (v73)
        {
          v45 = CFGetAllocator(a1);
          v20 = 0;
          *v73 = _FSURLCreateStandardError(v45, v70, 4, 0, a1, 0);
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_116;
      }

      v79 = 0;
      v78 = xmmword_19605E6F8;
      _FileCacheUnlock(a2);
      v39 = v73;
      if (filtered_getattrlist(__s, &v78, &cf, 0x40CuLL, 0x21u))
      {
        if (v73)
        {
          v40 = CFGetAllocator(a1);
          v41 = *__error();
          v42 = v40;
          v43 = v67;
LABEL_113:
          v20 = 0;
          *v39 = _FSURLCreateStandardError(v42, v43, v41, 0, a1, 0);
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      v46 = &cf + SHIDWORD(cf) + 4;
      v47 = *v46;
      if (v83 < 3)
      {
        if (v47 == 47)
        {
          v56 = -v46[1];
        }

        else
        {
          v56 = 47 - v47;
        }

        v39 = v73;
        if (!v56)
        {
          _FileCacheSetPropertyValueForKey(a2, v15, 0);
LABEL_110:
          v20 = 1;
LABEL_115:
          _FileCacheLock(a2);
          goto LABEL_116;
        }
      }

      else
      {
        if (*v46)
        {
          v48 = strlen(&cf + SHIDWORD(cf) + 4);
          v49 = &cf + v48 + SHIDWORD(cf) + 3;
          v50 = &cf + v48 + SHIDWORD(cf) + 2;
          while (v49 > v46)
          {
            v51 = v50;
            v52 = *v49--;
            --v50;
            if (v52 != 47)
            {
              while (v51 > v46)
              {
                v53 = *v51--;
                if (v53 == 47)
                {
                  v49 = v51 + 1;
                  goto LABEL_89;
                }
              }

              goto LABEL_101;
            }
          }

LABEL_89:
          if (v49 != v46)
          {
            v54 = (v49 - 1);
            do
            {
              v55 = v54;
              if (v54 <= v46)
              {
                break;
              }

              --v54;
            }

            while (*v55 == 47);
            goto LABEL_105;
          }

LABEL_101:
          if (v47 == 47)
          {
            v57 = "/";
          }

          else
          {
            v57 = ".";
          }

          strlcpy(__s, v57, 0x400uLL);
          v55 = v46;
LABEL_105:
          v58 = v55 - v46 + 1;
          if (v58 >= 0x400)
          {
            *__error() = 63;
          }

          memcpy(__s, v46, v58);
          __s[v58] = 0;
        }

        else
        {
          strncpy(__s, ".", 0x400uLL);
        }

        v59 = CFGetAllocator(a1);
        v60 = strlen(__s);
        v61 = CFURLCreateFromFileSystemRepresentation(v59, __s, v60, 1u);
        v80 = v61;
        v39 = v73;
        if (v61)
        {
          v62 = v61;
          _FileCacheSetPropertyValueForKey(a2, v15, v61);
          CFRelease(v62);
          goto LABEL_110;
        }
      }

      if (v39)
      {
        v42 = CFGetAllocator(a1);
        v43 = v70;
        v41 = 4;
        goto LABEL_113;
      }

LABEL_114:
      v20 = 0;
      goto LABEL_115;
    }

    if (CFEqual(v16, cf2))
    {
      cf = 0;
      if (!_FileCacheGetPropertyValueForKey(a2, cf2, &cf))
      {
        if (CFURLGetBaseURL(a1))
        {
          v27 = CFURLCopyAbsoluteURL(a1);
          if (!v27)
          {
            goto LABEL_118;
          }
        }

        else
        {
          CFRetain(a1);
          v27 = a1;
          if (!a1)
          {
            goto LABEL_118;
          }
        }

        v44 = CFURLCopyFileSystemPath(v27, kCFURLPOSIXPathStyle);
        CFRelease(v27);
        if (!v44)
        {
LABEL_118:
          if (v73)
          {
            v63 = CFGetAllocator(a1);
            *v73 = _FSURLCreateStandardError(v63, v70, 4, 0, a1, 0);
          }

          v20 = 0;
          goto LABEL_121;
        }

        _FileCacheSetPropertyValueForKey(a2, cf2, v44);
        CFRelease(v44);
      }

      goto LABEL_14;
    }

    if (CFEqual(v16, v75))
    {
      cf = 0;
      if (!_FileCacheGetPropertyValueForKey(a2, v75, &cf))
      {
        if (!v74 && !CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
        {
          goto LABEL_118;
        }

        v29 = getxattr(buffer, "com.apple.metadata:com_apple_backup_excludeItem", 0, 0, 0, 1);
        v30 = v72;
        if (v29 <= 0)
        {
          if (getxattr(buffer, "com.apple.MobileBackup", 0, 0, 0, 1) >= 1)
          {
            v30 = v72;
          }

          else
          {
            v30 = v69;
          }
        }

        _FileCacheSetPropertyValueForKey(a2, v75, v30);
        v74 = 1;
      }

      goto LABEL_14;
    }

    if (CFEqual(v16, v71))
    {
      cf = 0;
      if (!_FileCacheGetPropertyValueForKey(a2, v71, &cf))
      {
        if (!v74 && !CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
        {
          goto LABEL_118;
        }

        v74 = 1;
        if (getxattr(buffer, "com.apple.metadata:com_apple_cloudBackup_excludeItem", 0, 0, 0, 1) >= 1)
        {
          v33 = v72;
        }

        else
        {
          v33 = v69;
        }

        v34 = a2;
        v35 = v71;
LABEL_80:
        _FileCacheSetPropertyValueForKey(v34, v35, v33);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    if (!CFEqual(v16, v68))
    {
      break;
    }

    cf = 0;
    if (!_FileCacheGetPropertyValueForKey(a2, v68, &cf))
    {
      if (!v74 && !CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
      {
        goto LABEL_118;
      }

      v74 = 1;
      if (getxattr(buffer, "com.apple.metadata:com_apple_unencryptedBackup_excludeItem", 0, 0, 0, 1) >= 1)
      {
        v33 = v72;
      }

      else
      {
        v33 = v69;
      }

      v34 = a2;
      v35 = v68;
      goto LABEL_80;
    }

LABEL_14:
    v20 = 1;
LABEL_15:
    if (++v12 == a5)
    {
      goto LABEL_121;
    }
  }

  v20 = v73;
  if (v73)
  {
    v66 = CFGetAllocator(a1);
    v20 = 0;
    *v73 = _FSURLCreateStandardError(v66, v70, 256, 1, a1, 0);
  }

LABEL_121:
  _FileCacheUnlock(a2);
  v64 = *MEMORY[0x1E69E9840];
  return v20;
}

void _FileCacheSetPropertyValueForKey(uint64_t a1, const void *a2, const void *a3)
{
  _FileCacheLock(a1);
  v6 = *(a1 + 288);
  if (!v6)
  {
    v9 = *byte_1F0A85758;
    v7 = CFGetAllocator(a1);
    v6 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], &v9);
    *(a1 + 288) = v6;
  }

  CFDictionarySetValue(v6, a2, a3);
  v8 = *(a1 + 32) - 1;
  *(a1 + 32) = v8;
  if (!v8)
  {
    *(a1 + 24) = 0;
    os_unfair_lock_unlock((a1 + 36));
  }
}

CFTypeRef FileCachePropertyValueRetainCallBack(const __CFAllocator *a1, CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  else
  {
    return 0;
  }
}

uint64_t pathURLPropertyProviderCopyAndCacheValues(const __CFURL *a1, uint64_t a2, CFTypeRef *a3, void **a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 1)
  {
    return 1;
  }

  v6 = a6;
  v11 = *MEMORY[0x1E695EE48];
  v12 = *MEMORY[0x1E695EBF8];
  v13 = *MEMORY[0x1E695EBF0];
  v14 = *MEMORY[0x1E695EB30];
  cf2 = *MEMORY[0x1E695E300];
  v21 = *MEMORY[0x1E695E308];
  while (1)
  {
    v15 = *a3;
    if (CFEqual(*a3, v11))
    {
      break;
    }

    if (CFEqual(v15, v12))
    {
      result = _FileCacheGetPropertyValueForKey(a2, v15, a4);
      if (!result)
      {
        return result;
      }

      if (!*a4)
      {
        goto LABEL_24;
      }

      Attributes = _FileCacheGetAttributes(a2);
      if (*(Attributes + 1))
      {
        v18 = Attributes;
        v19 = *(Attributes + 232);
        if (v19)
        {
          if (v19 != *a4)
          {
            if (CFEqual(v19, *a4))
            {
              _FileCacheSetPropertyValueForKey(a2, v12, *(v18 + 232));
              *a4 = *(v18 + 232);
            }
          }
        }
      }

      v20 = *a4;
LABEL_23:
      CFRetain(v20);
      goto LABEL_24;
    }

    if (!CFEqual(v15, v13) && !CFEqual(v15, v14) && !CFEqual(v15, cf2))
    {
      result = CFEqual(v15, v21);
      if (!result)
      {
        return result;
      }
    }

    result = _FileCacheGetPropertyValueForKey(a2, v15, a4);
    if (!result)
    {
      return result;
    }

LABEL_22:
    v20 = *a4;
    if (*a4)
    {
      goto LABEL_23;
    }

LABEL_24:
    ++a4;
    ++a3;
    if (!--v6)
    {
      return 1;
    }
  }

  if (_FileCacheGetPropertyValueForKey(a2, v11, a4))
  {
    goto LABEL_22;
  }

  if ((*(_FileCacheGetAttributes(a2) + 1) & 0x20) != 0)
  {
    result = CFURLHasDirectoryPath(a1);
    if (!result)
    {
      return result;
    }

    *a4 = CFRetain(a1);
    goto LABEL_24;
  }

  return 0;
}

void FileCachePropertyValueReleaseCallBack(const __CFAllocator *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t pathURLPropertyProviderSetValues(const __CFURL *a1, uint64_t a2, CFTypeRef *a3, const __CFBoolean **a4, uint64_t a5, uint64_t a6, uint64_t a7, CFErrorRef *a8)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a6 < 1)
  {
LABEL_57:
    result = 1;
    goto LABEL_58;
  }

  v8 = a6;
  v12 = 0;
  v13 = *MEMORY[0x1E695EB30];
  v14 = *MEMORY[0x1E695E738];
  v15 = *MEMORY[0x1E695E300];
  cf2 = *MEMORY[0x1E695E308];
  while (1)
  {
    v16 = *a4;
    if (*a4)
    {
      break;
    }

LABEL_50:
    ++a4;
    ++a3;
    if (!--v8)
    {
      goto LABEL_57;
    }
  }

  v17 = *a3;
  if (CFEqual(*a3, v13))
  {
    if (!v12 && !CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      goto LABEL_61;
    }

    if (v16 != v14 && valueOfBoolean(v16))
    {
      if (!setxattr(buffer, "com.apple.metadata:com_apple_backup_excludeItem", "com.apple.MobileBackup", 0x16uLL, 0, 1))
      {
        v18 = defaultLog;
        if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136380675;
          v41 = buffer;
          v19 = v18;
          v20 = "kExcludedFromBackupXattrName set on path: %{private}s";
LABEL_56:
          _os_log_impl(&dword_19602C000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (removexattr(buffer, "com.apple.MobileBackup", 1))
    {
      v21 = *__error();
      if (v21 == 93)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }
    }

    else
    {
      v22 = 0;
    }

    if (removexattr(buffer, "com.apple.metadata:com_apple_backup_excludeItem", 1))
    {
      v24 = *__error();
      if (v24 == 93)
      {
        v24 = 0;
      }
    }

    else
    {
      v26 = defaultLog;
      v27 = os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT);
      v24 = 0;
      if (v27)
      {
        *buf = 136380675;
        v41 = buffer;
        _os_log_impl(&dword_19602C000, v26, OS_LOG_TYPE_DEFAULT, "kExcludedFromBackupXattrName removed from path: %{private}s", buf, 0xCu);
        v24 = 0;
      }
    }

    if (v22)
    {
      v28 = v24 == 0;
    }

    else
    {
      v28 = 0;
    }

    if (!v28)
    {
      v22 = v24;
    }

LABEL_48:
    if (v22)
    {
      v33 = a8;
      if (a8)
      {
        v34 = CFGetAllocator(a1);
        v35 = *MEMORY[0x1E695E640];
        v36 = v22;
LABEL_65:
        v37 = _FSURLCreateStandardError(v34, v35, v36, 1, a1, 0);
        result = 0;
        *v33 = v37;
        goto LABEL_58;
      }

      goto LABEL_66;
    }

    goto LABEL_49;
  }

  if (CFEqual(v17, v15))
  {
    if (!v12 && !CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      goto LABEL_61;
    }

    if (v16 != v14 && valueOfBoolean(v16))
    {
      if (!setxattr(buffer, "com.apple.metadata:com_apple_cloudBackup_excludeItem", "com.apple.MobileBackup", 0x16uLL, 0, 1))
      {
        v23 = defaultLog;
        if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136380675;
          v41 = buffer;
          v19 = v23;
          v20 = "kExcludedFromCloudBackupName set on path: %{private}s";
          goto LABEL_56;
        }

LABEL_49:
        v12 = 1;
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    if (!removexattr(buffer, "com.apple.metadata:com_apple_cloudBackup_excludeItem", 1))
    {
      v25 = defaultLog;
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136380675;
        v41 = buffer;
        v19 = v25;
        v20 = "kExcludedFromCloudBackupName removed from path: %{private}s";
        goto LABEL_56;
      }

      goto LABEL_49;
    }

LABEL_47:
    v22 = *__error();
    if (v22 == 93)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (!CFEqual(v17, cf2))
  {
    v33 = a8;
    if (a8)
    {
      v34 = CFGetAllocator(a1);
      v35 = *MEMORY[0x1E695E628];
      v36 = 512;
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  if (v12 || CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    if (v16 != v14 && valueOfBoolean(v16))
    {
      if (!setxattr(buffer, "com.apple.metadata:com_apple_unencryptedBackup_excludeItem", "com.apple.MobileBackup", 0x16uLL, 0, 1))
      {
        v30 = defaultLog;
        if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136380675;
          v41 = buffer;
          v19 = v30;
          v20 = "kExcludedFromUnencryptedBackupName set on path: %{private}s";
          goto LABEL_56;
        }

        goto LABEL_49;
      }

LABEL_45:
      v22 = *__error();
      goto LABEL_48;
    }

    if (!removexattr(buffer, "com.apple.metadata:com_apple_unencryptedBackup_excludeItem", 1))
    {
      v29 = defaultLog;
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136380675;
        v41 = buffer;
        v19 = v29;
        v20 = "kExcludedFromUnencryptedBackupName removed from path: %{private}s";
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    goto LABEL_47;
  }

LABEL_61:
  v33 = a8;
  if (a8)
  {
    v34 = CFGetAllocator(a1);
    v35 = *MEMORY[0x1E695E628];
    v36 = 4;
    goto LABEL_65;
  }

LABEL_66:
  result = 0;
LABEL_58:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t valueOfBoolean(const __CFBoolean *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    if (CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr))
    {
      v3 = valuePtr == 0;
    }

    else
    {
      v3 = 1;
    }

    return !v3;
  }

  else
  {

    return CFBooleanGetValue(a1);
  }
}

void clearPropertyValue(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a3 + 140);
  v6 = *(v5 + 40);
  if (v6)
  {
    v8 = *a3;
    v10 = 0;
    v11 = v8;
    v9 = *(v5 + 8);
    _FileCacheIncrementInProvider(a2);
    v6(a1, a2, (a3 + 1), &v10, &v11, 1, v9, 0);
    _FileCacheDecrementInProvider(a2);
  }

  _FileCacheClearPropertyValueForKey(a2, a3[1]);
}

void clearPropertyAndDependentValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED4458A8 == **(a3 + 140))
  {
    if (*_FileCacheGetAttributes(a2))
    {

      _FileCacheReleaseContents(a2, 1, 1, 1, 0);
    }
  }

  else
  {
    clearPropertyValue(a1, a2, a3);
    if (qword_1ED445788 >= 1)
    {
      v6 = 0;
      v7 = a3 + 76;
      do
      {
        v8 = (v7 + 12 * v6);
        v9 = *v8;
        v23 = 0;
        v24 = v9;
        v25 = *(v8 + 2);
        v22 = 0;
        if (PropertyMaskIsNotZero(&v24, &v23, &v22) && v23 <= v22)
        {
          v10 = v24;
          v11 = v25;
          v12 = v22 - v23 + 1;
          v13 = 148 * v23;
          do
          {
            v14 = sFileProviderGlobals[7 * v6 + 8] + v13;
            v15 = *(v14 + 136);
            v16 = 1 << v15;
            v17 = v15 < 64;
            if (v15 >= 64)
            {
              v18 = 0;
            }

            else
            {
              v18 = 1 << v15;
            }

            if (v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = v16;
            }

            v20 = v19 & v11;
            if ((v18 & v10) != 0 || v20 != 0)
            {
              clearPropertyValue(a1, a2, v14);
            }

            v13 += 148;
            --v12;
          }

          while (v12);
        }

        ++v6;
      }

      while (v6 < qword_1ED445788);
    }
  }
}

void _FileCacheClearPropertyValueForKey(uint64_t a1, const void *a2)
{
  _FileCacheLock(a1);
  v4 = *(a1 + 288);
  if (v4)
  {
    CFDictionaryRemoveValue(v4, a2);
  }

  v5 = *(a1 + 32) - 1;
  *(a1 + 32) = v5;
  if (!v5)
  {
    *(a1 + 24) = 0;

    os_unfair_lock_unlock((a1 + 36));
  }
}

void _FSURLSetPermanentResourcePropertyForKey(const __CFURL *a1, const void *a2, const void *a3)
{
  v6 = __CFURLResourceInfoPtr();
  v7 = _FileCacheGetForURL(a1, v6);
  _FileCacheLockTempPermProperties();
  TemporaryPropertyDictionary = _FileCacheGetTemporaryPropertyDictionary(v7, 0);
  if (TemporaryPropertyDictionary)
  {
    CFDictionaryRemoveValue(TemporaryPropertyDictionary, a2);
  }

  PermanentPropertyDictionary = _FileCacheGetPermanentPropertyDictionary(v7, 1);
  if (PermanentPropertyDictionary)
  {
    if (a3)
    {
      CFDictionarySetValue(PermanentPropertyDictionary, a2, a3);
    }

    else
    {
      CFDictionaryRemoveValue(PermanentPropertyDictionary, a2);
    }
  }

  _FileCacheUnlockTempPermProperties();
}

BOOL SandboxExtensionCache::insert(os_unfair_lock_s *this, CFURLRef url, const __CFData *a3)
{
  if (!url)
  {
    SandboxExtensionCache::insert();
  }

  if (!a3)
  {
    SandboxExtensionCache::insert();
  }

  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(url, *MEMORY[0x1E695EBF8], &propertyValueTypeRefPtr, 0))
  {
    v5 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  os_unfair_lock_lock(this);
  v6 = SandboxExtensionCache::_insert(this, propertyValueTypeRefPtr, a3) != 0;
  os_unfair_lock_unlock(this);
  CFRelease(propertyValueTypeRefPtr);
  return v6;
}

CFTypeRef *SandboxExtensionCache::_insert(CFDictionaryRef *this, const __CFString *a2, const __CFData *a3)
{
  if (!a2)
  {
    SandboxExtensionCache::_insert();
  }

  if (!a3)
  {
    SandboxExtensionCache::_insert();
  }

  Item = SandboxExtensionCache::_findItem(this, a2, a3);
  if (!Item)
  {
    operator new();
  }

  v6 = Item;
  if (!CFEqual(a3, Item[2]))
  {
    operator new();
  }

  v7 = securityScopedLog;
  if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
  {
    SandboxExtensionCache::_insert(this, v7);
  }

  return v6;
}

CFTypeRef SandboxExtensionCache::consume(os_unfair_lock_s *this, CFURLRef url, const __CFData *a3)
{
  v9 = 0;
  cf = 0;
  if (CFURLCopyResourcePropertyForKey(url, *MEMORY[0x1E695EBF8], &v9, 0))
  {
    v5 = v9 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  os_unfair_lock_lock(this);
  v6 = SandboxExtensionCache::_consume(this, v9, a3, &cf);
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  os_unfair_lock_unlock(this);
  CFRelease(v9);
  if ((v6 & 5) != 0)
  {
    if (v6 == 3)
    {
      if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
      {
        SandboxExtensionCache::consume();
      }
    }

    else if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
    {
      SandboxExtensionCache::consume();
    }

    return 0;
  }

  return v7;
}

uint64_t SandboxExtensionCache::shared(SandboxExtensionCache *this)
{
  if (SandboxExtensionCache::shared(void)::onceToken != -1)
  {
    SandboxExtensionCache::shared();
  }

  return SandboxExtensionCache::shared(void)::shared;
}

const void *SandboxExtensionCache::_findItem(CFDictionaryRef *this, const __CFString *a2, const __CFData *a3)
{
  Value = CFDictionaryGetValue(this[1], a2);
  v5 = Value;
  if (Value && a3)
  {
    v6 = Value;
    while (!CFEqual(a3, *(v6 + 2)))
    {
      v6 = *(v6 + 3);
      if (!v6)
      {
        return v5;
      }
    }

    return v6;
  }

  return v5;
}

void _URLAttachSecurityScopeToFileURL(const __CFURL *a1, CFDataRef Copy)
{
  if (a1 && _CFURLIsFileURL())
  {
    if (Copy)
    {
      v4 = CFGetTypeID(Copy);
      if (v4 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(Copy);
        if (Length && !CFDataGetBytePtr(Copy)[Length - 1])
        {
          v10 = 0;
        }

        else
        {
          v6 = CFGetAllocator(Copy);
          MutableCopy = CFDataCreateMutableCopy(v6, 0, Copy);
          if (!MutableCopy)
          {
            return;
          }

          v8 = MutableCopy;
          CFDataAppendBytes(MutableCopy, &_URLAttachSecurityScopeToFileURL::zero, 1);
          v9 = CFGetAllocator(Copy);
          Copy = CFDataCreateCopy(v9, v8);
          CFRelease(v8);
          v10 = Copy;
          if (!Copy)
          {
            return;
          }
        }

        v14 = securityScopedLog;
        if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
        {
          _URLAttachSecurityScopeToFileURL_cold_2(a1, Copy, v14);
        }

        _FSURLSetPermanentResourcePropertyForKey(a1, @"_NSURLSecuritySandboxExtensionKey", Copy);
        v16 = SandboxExtensionCache::shared(v15);
        SandboxExtensionCache::insert(v16, a1, Copy);
        if (v10)
        {
          CFRelease(v10);
        }
      }

      else
      {
        v13 = securityScopedLog;
        if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
        {
          _URLAttachSecurityScopeToFileURL_cold_1(v13);
        }
      }
    }

    else
    {
      v12 = securityScopedLog;
      if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
      {
        _URLAttachSecurityScopeToFileURL_cold_3(a1, v12);
      }

      _FSURLSetPermanentResourcePropertyForKey(a1, @"_NSURLSecuritySandboxExtensionKey", 0);
    }
  }

  else
  {
    v11 = securityScopedLog;
    if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
    {
      _URLAttachSecurityScopeToFileURL_cold_4(a1, v11);
    }
  }
}