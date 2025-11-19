uint64_t _MFAcquireObjectLock(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = v2;
  v4 = *(a1 + 72);
  if ((v4 & 0x80000000) == 0)
  {
    ++*(a1 + 80);
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = v2 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      do
      {
        pthread_cond_wait((a1 + 24), &sMutex);
        v7 = *(a1 + 16);
        if (v7)
        {
          v8 = v3 == v7;
        }

        else
        {
          v8 = 1;
        }
      }

      while (!v8);
      LOWORD(v4) = *(a1 + 72);
    }

    *(a1 + 72) = v4 & 0x8000 | (v4 + 1) & 0x7FFF;
    *(a1 + 16) = v3;
    goto LABEL_13;
  }

  if (v2 == *(a1 + 16))
  {
    *(a1 + 72) = (v4 + 1) | 0x8000;
    goto LABEL_13;
  }

  v13 = [MEMORY[0x1E699B850] currentDesignator];
  if (v13)
  {
    v14 = [v13 priority];
  }

  else
  {
    v14 = -1;
  }

  Mutable = *(a1 + 80);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    *(a1 + 80) = Mutable;
  }

  v29.length = CFArrayGetCount(Mutable);
  v29.location = 0;
  v16 = CFArrayBSearchValues(Mutable, v29, v14, _comparePriorities, 0);
  CFArrayInsertValueAtIndex(*(a1 + 80), v16, v14);
  while (*(a1 + 16) || CFArrayGetValueAtIndex(*(a1 + 80), 0) != v14)
  {
    pthread_cond_wait((a1 + 24), &sMutex);
  }

  *(a1 + 16) = v3;
  *(a1 + 72) = *(a1 + 72) & 0x8000 | 1;
  v17 = *(a1 + 80);
  v30.length = CFArrayGetCount(v17);
  v30.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v17, v30, v14);
  v19 = FirstIndexOfValue;
  if (!FirstIndexOfValue)
  {
LABEL_37:
    CFArrayRemoveValueAtIndex(*(a1 + 80), v19);
    goto LABEL_13;
  }

  if (FirstIndexOfValue != -1)
  {
    v22 = CFCopyDescription(*(a1 + 80));
    v23 = MFLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = 67109378;
      v25 = v14;
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&dword_1D36B2000, v23, OS_LOG_TYPE_INFO, "*** Expected priority %u at idx 0 in priorities %@", &v24, 0x12u);
    }

    goto LABEL_37;
  }

  v20 = CFCopyDescription(*(a1 + 80));
  v21 = MFLogGeneral();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v24 = 67109378;
    v25 = v14;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&dword_1D36B2000, v21, OS_LOG_TYPE_INFO, "*** Couldn't find value %u in priorities %@", &v24, 0x12u);
  }

LABEL_13:
  v9 = *(a1 + 8);
  if (_mfCallStackLoggingEnabled())
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (!objc_getAssociatedObject(v9, @"MFLock Call Stack Symbols"))
    {
      objc_setAssociatedObject(v9, @"MFLock Call Stack Symbols", [MEMORY[0x1E696AF00] callStackSymbols], 0x301);
    }

    [v10 drain];
  }

  result = pthread_mutex_unlock(&sMutex);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _mfCallStackLoggingEnabled()
{
  if (_mfCallStackLoggingEnabled_onceToken != -1)
  {
    _mfCallStackLoggingEnabled_cold_1();
  }

  if (_mfCallStackLoggingEnabled___loggingDefaultEnabled)
  {
    v0 = _mfCallStackLoggingEnabled___isInternal == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

void *_MFFindObjectLock(uint64_t a1, uint64_t a2)
{
  v4 = sFirstLock;
  if (sFirstLock)
  {
    v5 = 0;
    do
    {
      v6 = v4[1];
      if (v6 | v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v4;
      }

      if (v6 == a1)
      {
        result = v4;
      }

      else
      {
        result = 0;
      }

      if (v6 != a1)
      {
        v5 = v7;
      }

      v4 = *v4;
      if (result)
      {
        v9 = 1;
      }

      else
      {
        v9 = v4 == 0;
      }
    }

    while (!v9);
    if (a2 && !result)
    {
      if (v5)
      {
LABEL_22:
        *(v5 + 8) = a1;
        *(v5 + 72) = *(v5 + 72) & 0x7FFF | ((a2 == 2) << 15);
        return v5;
      }

LABEL_21:
      v5 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040CAED1BC0uLL);
      pthread_cond_init((v5 + 24), 0);
      *v5 = sFirstLock;
      sFirstLock = v5;
      goto LABEL_22;
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_21;
    }

    return 0;
  }

  return result;
}

pthread_t _MFLockGlobalLock()
{
  pthread_mutex_lock(&sMFGlobalLock);
  result = pthread_self();
  sThreadWithGlobalLock = result;
  return result;
}

void _MFRecycleObjectLock(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(a1 + 72);
  *(a1 + 72) = v2 & 0x8000;
  if (v2 < 0)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      CFRelease(v3);
      v4 = *(a1 + 72) & 0x7FFF;
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 80) = 0;
    *(a1 + 72) = v4;
  }

  else
  {
    *(a1 + 80) = 0;
  }
}

uint64_t _mfRegisterLockOnThisThread(void *a1)
{
  pthread_mutex_lock(&__threadLockRelationsLock);
  value = 0;
  v2 = __threadLockRelations;
  v3 = pthread_self();
  if (!CFDictionaryGetValueIfPresent(v2, v3, &value))
  {
    if (CFArrayGetCount(__threadLockEmptySets) < 1)
    {
      value = objc_alloc_init(MEMORY[0x1E696AB50]);
    }

    else
    {
      value = CFArrayGetValueAtIndex(__threadLockEmptySets, 0);
      CFArrayRemoveValueAtIndex(__threadLockEmptySets, 0);
    }

    v4 = __threadLockRelations;
    v5 = pthread_self();
    CFDictionarySetValue(v4, v5, value);
  }

  [value addObject:a1];
  if (_mfCallStackLoggingEnabled())
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (!objc_getAssociatedObject(a1, @"MFLock Call Stack Symbols"))
    {
      objc_setAssociatedObject(a1, @"MFLock Call Stack Symbols", [MEMORY[0x1E696AF00] callStackSymbols], 0x301);
    }

    [v6 drain];
  }

  return pthread_mutex_unlock(&__threadLockRelationsLock);
}

uint64_t _mfUnregisterLockOnThisThread(void *a1)
{
  pthread_mutex_lock(&__threadLockRelationsLock);
  v2 = __threadLockRelations;
  v3 = pthread_self();
  Value = CFDictionaryGetValue(v2, v3);
  v5 = Value;
  if (!Value)
  {
    if (sMFLockTesting != 1)
    {
      _mfUnregisterLockOnThisThread_cold_1();
    }

    sMFLockEncounteredError = 1;
  }

  if (([Value containsObject:a1] & 1) == 0)
  {
    if (sMFLockTesting != 1)
    {
      _mfUnregisterLockOnThisThread_cold_2();
    }

    sMFLockEncounteredError = 1;
  }

  [v5 removeObject:a1];
  if (![v5 count])
  {
    if (v5 && CFArrayGetCount(__threadLockEmptySets) <= 19)
    {
      CFArrayAppendValue(__threadLockEmptySets, v5);
    }

    v6 = __threadLockRelations;
    v7 = pthread_self();
    CFDictionaryRemoveValue(v6, v7);
  }

  if (_mfCallStackLoggingEnabled())
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    objc_setAssociatedObject(a1, @"MFLock Call Stack Symbols", 0, 0x301);
    [v8 drain];
  }

  return pthread_mutex_unlock(&__threadLockRelationsLock);
}

CFMutableArrayRef _setupThreadLockRelationsDictionary()
{
  v0 = *MEMORY[0x1E695E480];
  __threadLockRelations = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  result = CFArrayCreateMutable(v0, 0, MEMORY[0x1E695E9C0]);
  __threadLockEmptySets = result;
  return result;
}

uint64_t ___mfCallStackLoggingEnabled_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E699B7B0] "currentDevice")];
  _mfCallStackLoggingEnabled___isInternal = result;
  if (result)
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"MFLockCallStackLoggingEnabled", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat))
    {
      v1 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v1 = 1;
    }

    v2 = !v1;
    _mfCallStackLoggingEnabled___loggingDefaultEnabled = v2;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___mfCallStackLoggingEnabled_block_invoke_3;
    v4[3] = &unk_1E84558E0;
    v4[4] = &__block_literal_global_103;
    return [v3 addObserverForName:@"MFLockCallStackLoggingEnabled" object:0 queue:0 usingBlock:v4];
  }

  return result;
}

uint64_t MFInitializeMIME()
{

  return objc_opt_class();
}

uint64_t MFCreateDataWithString(void *a1, CFStringEncoding a2, int a3)
{
  v5 = a1;
  v6 = objc_autoreleasePoolPush();
  if (MFCanUseSoftBankCodePoints())
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v7 = telephonyQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __softBankTransform_block_invoke;
    block[3] = &unk_1E84551A0;
    block[4] = &v13;
    dispatch_sync(v7, block);

    v8 = v14[5];
    _Block_object_dispose(&v13, 8);

    v9 = [v5 mf_applyTransform:v8];

    v5 = v9;
  }

  v10 = [v5 dataUsingEncoding:CFStringConvertEncodingToNSStringEncoding(a2) allowLossyConversion:a3 != 0];
  objc_autoreleasePoolPop(v6);

  return v10;
}

id getCoreTelephonySubscriptionChangeListener()
{
  if (getCoreTelephonySubscriptionChangeListener_p != -1)
  {
    getCoreTelephonySubscriptionChangeListener_cold_1();
  }

  v1 = getCoreTelephonySubscriptionChangeListener_sharedInstance;

  return v1;
}

uint64_t MFCanUseSoftBankCodePoints()
{
  v0 = atomic_load(sCanUseCodePoints);
  if (v0 == 1)
  {
    LOBYTE(v1) = 1;
  }

  else if (v0 == 2)
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E699AEC8] getValueForKey:@"re-enable-softbank-code-points"];

    if (v1)
    {
      v4 = 0;
      v5 = &v4;
      v6 = 0x2020000000;
      v7 = 0;
      v1 = telephonyQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __MFCanUseSoftBankCodePoints_block_invoke;
      block[3] = &unk_1E84551A0;
      block[4] = &v4;
      dispatch_sync(v1, block);

      LOBYTE(v1) = *(v5 + 24);
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      atomic_store(2u, sCanUseCodePoints);
    }
  }

  return v1 & 1;
}

void *telephonyQueue()
{
  v0 = getCoreTelephonySubscriptionChangeListener();
  v1 = v0[1];
  v2 = v1;

  return v1;
}

uint64_t __getCoreTelephonySubscriptionChangeListener_block_invoke()
{
  getCoreTelephonySubscriptionChangeListener_sharedInstance = objc_alloc_init(_MFCoreTelephonySubscriptionChangeListener);

  return MEMORY[0x1EEE66BB8]();
}

void __MFCanUseSoftBankCodePoints_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (sInnerCanUseCodePoints == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else if (sInnerCanUseCodePoints)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = activeContexts();
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    context = v2;
    if (v5)
    {
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = sharedCoreTelephonyClient();
          v18 = 0;
          v10 = [v9 copyBundleIdentifier:v8 bundleType:v3 error:&v18];
          v11 = v18;

          if (v10)
          {
            if ([v10 isEqualToString:@"com.apple.Softbank_jp"])
            {

              v13 = 1;
              goto LABEL_19;
            }
          }

          else
          {
            v12 = MFLogGeneral();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v24 = v11;
              _os_log_error_impl(&dword_1D36B2000, v12, OS_LOG_TYPE_ERROR, "SoftBank: Unable to get bundle ID: %{public}@", buf, 0xCu);
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v5);
    }

    v13 = 0;
LABEL_19:

    objc_autoreleasePoolPop(context);
    *(*(*(a1 + 32) + 8) + 24) = v13;
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v25 = 67109120;
      v26 = v13;
      _os_log_impl(&dword_1D36B2000, v14, OS_LOG_TYPE_INFO, "SoftBank: has SoftBank carrier: %{BOOL}d", v25, 8u);
    }

    if (v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    sInnerCanUseCodePoints = v15;
    atomic_store(v15, sCanUseCodePoints);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void *sharedCoreTelephonyClient()
{
  v0 = getCoreTelephonySubscriptionChangeListener();
  v1 = v0[2];
  v2 = v1;

  return v1;
}

id activeContexts()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = sharedCoreTelephonyClient();
  v9 = 0;
  v1 = [v0 getActiveContexts:&v9];
  v2 = v9;

  if (v1)
  {
    v3 = [v1 subscriptions];
    v4 = [v3 ef_compactMap:&__block_literal_global_4];
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 count];
      *buf = 67109120;
      v11 = v6;
      _os_log_impl(&dword_1D36B2000, v5, OS_LOG_TYPE_INFO, "MFStringTransform: Found %u active contexts.", buf, 8u);
    }
  }

  else
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      activeContexts_cold_1(v2, v3);
    }

    v4 = MEMORY[0x1E695E0F0];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1D36B4CF0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id __activeContexts_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 context];
  if (!v3)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __activeContexts_block_invoke_cold_1(v2, v4);
    }
  }

  return v3;
}

uint64_t _UniquingHash(uint64_t a1, __CFString *a2)
{
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(a2, SystemEncoding);
  if (!CStringPtr)
  {
    CStringPtr = [(__CFString *)a2 ef_lossyDefaultCStringBytes];
    if (!CStringPtr)
    {
      _UniquingHash_cold_1(a2);
    }
  }

  v5 = CStringPtr;
  v6 = strlen(CStringPtr);
  v7 = v6;
  if (v6 >= 0x11)
  {
    v11 = 8;
    v9 = v6;
    do
    {
      v12 = *v5++;
      v9 = 257 * v9 + __tolower(v12);
      --v11;
    }

    while (v11);
    v13 = v7 - 16;
    v14 = -8;
    do
    {
      v9 = 257 * v9 + __tolower(v5[v13++]);
    }

    while (!__CFADD__(v14++, 1));
  }

  else if (v6)
  {
    v8 = v6;
    v9 = v6;
    do
    {
      --v8;
      v10 = *v5++;
      v9 = 257 * v9 + __tolower(v10);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return (v9 << (v7 & 0x1F)) + v9;
}

BOOL _UniquingIsEqual(uint64_t a1, __CFString *a2, __CFString *a3)
{
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(a2, SystemEncoding);
  v7 = CFStringGetCStringPtr(a3, SystemEncoding);
  v8 = v7;
  if (CStringPtr)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    CStringPtr = [(__CFString *)a2 ef_lossyDefaultCStringBytes];
    if (v8)
    {
LABEL_3:
      if (CStringPtr)
      {
        goto LABEL_4;
      }

LABEL_8:
      _UniquingIsEqual_cold_1(a2);
      if (v8)
      {
        return strcasecmp(CStringPtr, v8) == 0;
      }

LABEL_9:
      _UniquingIsEqual_cold_2(a3);
      return strcasecmp(CStringPtr, v8) == 0;
    }
  }

  v8 = [(__CFString *)a3 ef_lossyDefaultCStringBytes];
  if (!CStringPtr)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v8)
  {
    goto LABEL_9;
  }

  return strcasecmp(CStringPtr, v8) == 0;
}

uint64_t _MFGuessEncodingForBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = ucsdet_open();
  ucsdet_setText();
  ucsdet_enableInputFilter();
  ucsdet_detectAll();
  if (a4)
  {
    *a4 = v5;
  }

  else if (v5)
  {
    ucsdet_close();
  }

  return 0xFFFFFFFFLL;
}

CFIndex MFStringGetBytes(const __CFString *a1, CFRange a2, CFStringEncoding a3, UInt8 a4, Boolean a5, UInt8 *a6, CFIndex a7, CFIndex *a8)
{
  usedBufLen = 0;
  result = CFStringGetBytes(a1, a2, a3, a4, a5, a6, a7, &usedBufLen);
  if (a8)
  {
    *a8 = usedBufLen;
  }

  return result;
}

__CFString *MFCreateStringWithBytes(const UInt8 *a1, CFIndex a2, uint64_t a3, CFStringEncoding *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = &off_1F4F336A0;
    v9 = 12;
    v10 = a3;
    do
    {
      v11 = *(v8 - 2);
      if (v11 == -1 || v11 == v10)
      {
        v13 = (*v8)(a1, a2, a4);
        if (v13)
        {
          v17 = v13;
          goto LABEL_27;
        }

        if (v11 == v10)
        {
          v10 = -1;
        }
      }

      v8 += 2;
      --v9;
    }

    while (v9);
    v14 = a3;
    if (v10 != -1)
    {
      v15 = MFGetMappedAllocator();
      v16 = _MFCreateStringWithBytes(v15, a1, a2, v10, 0);
      v17 = v16;
      if (a4 && v16)
      {
        *a4 = v10;
        goto LABEL_27;
      }

      if (v16)
      {
        goto LABEL_27;
      }

      v14 = 0xFFFFFFFFLL;
    }

    *buf = 0;
    _MFGuessEncodingForBytes(a1, a2, v14, buf);
    if (*buf)
    {
      ucsdet_close();
    }

    if (a3 != -1 && v10 == -1)
    {
      v21 = MFGetMappedAllocator();
      v22 = _MFCreateStringWithBytes(v21, a1, a2, a3, 0);
      v17 = v22;
      if (a4 && v22)
      {
        *a4 = a3;
LABEL_27:
        v20 = *MEMORY[0x1E69E9840];
        return v17;
      }

      if (v22)
      {
        goto LABEL_27;
      }
    }

    v23 = [+[MFMimeCharset preferredMimeCharset](MFMimeCharset "preferredMimeCharset")];
    *buf = v23;
    v24 = [objc_msgSend(objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    v25 = 0;
    v26 = &dword_1E8454C10;
    do
    {
      if ([*(v26 - 1) isEqualToString:v24])
      {
        v27 = *v26;
      }

      else
      {
        v27 = -1;
      }

      if (v25 > 0xF)
      {
        break;
      }

      v25 += 2;
      v26 += 4;
    }

    while (v27 == -1);
    *&buf[4] = v27;
    *&buf[8] = xmmword_1D36EFDA0;
    if (v23 == -1)
    {
LABEL_44:
      v32 = MFLogGeneral();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = CFStringConvertEncodingToIANACharSetName(a3);
        *buf = 138412546;
        *&buf[4] = v33;
        *&buf[12] = 2048;
        *&buf[14] = a3;
        _os_log_impl(&dword_1D36B2000, v32, OS_LOG_TYPE_DEFAULT, "#Warning MFCreateStringWithData: failed to decode data with given encoding %@ (%lx)", buf, 0x16u);
      }

      v17 = 0;
    }

    else
    {
      v28 = buf;
      while (1)
      {
        v29 = MFGetMappedAllocator();
        v30 = _MFCreateStringWithBytes(v29, a1, a2, *v28, 0);
        if (v30)
        {
          break;
        }

        v31 = v28[1];
        ++v28;
        if (v31 == -1)
        {
          goto LABEL_44;
        }
      }

      v17 = v30;
      if (a4)
      {
        *a4 = *v28;
      }
    }

    goto LABEL_27;
  }

  if (a4)
  {
    *a4 = a3;
  }

  v18 = *MEMORY[0x1E69E9840];

  return &stru_1F4F33820;
}

CFStringRef _MFCreateStringWithBytes(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3, CFStringEncoding a4, Boolean a5)
{
  Default = CFAllocatorGetDefault();
  CFAllocatorSetDefault(a1);
  v11 = CFStringCreateWithBytes(a1, a2, a3, a4, a5);
  CFAllocatorSetDefault(Default);
  return v11;
}

__CFString *MFCreateStringWithData(__CFString *result, uint64_t a2, CFStringEncoding *a3)
{
  if (result)
  {
    v5 = result;
    v6 = [(__CFString *)result bytes];
    v7 = [(__CFString *)v5 length];

    return MFCreateStringWithBytes(v6, v7, a2, a3);
  }

  return result;
}

BOOL MFStringCanBeConvertedLosslessly(void *a1, CFStringEncoding a2)
{
  v2 = 0;
  if (a1 && a2 != 2081 && a2 != 2096)
  {
    v3 = MFCreateDataWithString(a1, a2, 0);
    v2 = v3 != 0;
  }

  return v2;
}

__CFString *MFCharsetForEncoding(CFStringEncoding encoding)
{
  if (encoding == 67109120)
  {
    return @"UTF-7";
  }

  if (encoding == 1056 && (MFCanUseSoftBankCodePoints() & 1) != 0)
  {
    return @"Shift_JIS";
  }

  result = CFStringConvertEncodingToIANACharSetName(encoding);
  if (!result)
  {

    return CFStringConvertEncodingToIANACharSetName(0x201u);
  }

  return result;
}

uint64_t MFEncodingForCharsetWithFallback(const __CFString *a1, uint64_t a2)
{
  if (!a1)
  {
    return a2;
  }

  if (![@"UTF-7" caseInsensitiveCompare:a1])
  {
    return 67109120;
  }

  if (![@"UNKNOWN" caseInsensitiveCompare:a1])
  {
    return a2;
  }

  if (![@"softbank-sjis" caseInsensitiveCompare:a1])
  {
    return 2561;
  }

  return CFStringConvertIANACharSetNameToEncoding(a1);
}

uint64_t _MFStringEncodingForMatch(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Name = ucsdet_getName();
  if (!Name)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], Name, 0x8000100u, *MEMORY[0x1E695E498]);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = CFStringConvertIANACharSetNameToEncoding(v2);
  CFRelease(v3);
  if (v4 == 2561)
  {
    return 1056;
  }

  else
  {
    return v4;
  }
}

CFStringRef _filter_utf8_trailingSplitCodePoints(const UInt8 *a1, CFIndex a2, _DWORD *a3)
{
  if (!a2)
  {
    goto LABEL_28;
  }

  v6 = &a1[a2 - 1];
  if (v6 <= a1)
  {
    v8 = a2;
LABEL_9:
    v9 = *v6;
  }

  else
  {
    v7 = 1;
    v8 = a2;
    while ((*v6 & 0x80000000) == 0)
    {
      --v8;
      --v6;
      if (v7 <= 1)
      {
        ++v7;
        if (v6 > a1)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    v9 = *v6;
  }

  if (v9 < 0xC0)
  {
    if ((v9 & 0xC0) == 0x80 && v6 >= a1)
    {
      v14 = 0;
      v15 = v6;
      while (1)
      {
        v16 = *v15;
        if (v16 > 0xBF)
        {
          break;
        }

        --v15;
        ++v14;
        if (v15 < a1)
        {
          goto LABEL_28;
        }
      }

      if (v14 <= 5 && _filter_utf8_trailingSplitCodePoints_checkValues[v14] != (_filter_utf8_trailingSplitCodePoints_masks[v14] & v16))
      {
        v10 = v6 - a1 - v14;
        goto LABEL_13;
      }
    }

LABEL_28:
    v10 = -1;
    goto LABEL_29;
  }

  v10 = v8 - 1;
LABEL_13:
  if (v10 != -1)
  {
    v11 = MFGetMappedAllocator();
    result = _MFCreateStringWithBytes(v11, a1, v10, 0x8000100u, 0);
    if (result)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_32;
    }
  }

LABEL_29:
  if (v10 == a2)
  {
    return 0;
  }

  v17 = MFGetMappedAllocator();
  result = _MFCreateStringWithBytes(v17, a1, a2, 0x8000100u, 0);
  if (a3)
  {
LABEL_32:
    if (result)
    {
      *a3 = 134217984;
    }
  }

  return result;
}

uint64_t _filter_invalidEncoding(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = -1;
  }

  return 0;
}

CFStringRef _filter_checkISO2022_JP(unint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = a1 + a2 - 3;
  if (v3 <= a1)
  {
    return 0;
  }

  v7 = a1;
  while (1)
  {
    if (*v7 == 27)
    {
      if (v7[1] != 36)
      {
        ++v7;
        goto LABEL_8;
      }

      v8 = v7[2];
      v7 += 2;
      if ((v8 | 2) == 0x42)
      {
        break;
      }
    }

LABEL_8:
    if (++v7 >= v3)
    {
      return 0;
    }
  }

  [(__CFString *)CFStringConvertEncodingToIANACharSetName(0x821u) UTF8String];
  result = _MFCreateStringWithBytesViaICU(a1, a2);
  if (a3)
  {
    if (result)
    {
      *a3 = 2081;
    }
  }

  return result;
}

CFStringRef _filter_checkASCII(const UInt8 *a1, CFIndex a2, _DWORD *a3)
{
  v6 = a1;
  while (v6 < &a1[a2])
  {
    v7 = *v6++;
    if (v7 < 0)
    {
      return 0;
    }
  }

  v9 = MFGetMappedAllocator();
  result = _MFCreateStringWithBytes(v9, a1, a2, 0x600u, 0);
  if (a3)
  {
    if (result)
    {
      *a3 = 1536;
    }
  }

  return result;
}

CFStringRef _filter_promoteGB18030(const UInt8 *a1, CFIndex a2, _DWORD *a3)
{
  v6 = MFGetMappedAllocator();
  result = _MFCreateStringWithBytes(v6, a1, a2, 0x632u, 0);
  if (a3)
  {
    if (result)
    {
      *a3 = 1586;
    }
  }

  return result;
}

CFStringRef _filter_promoteBig5_HKSCS(const UInt8 *a1, CFIndex a2, _DWORD *a3)
{
  v6 = MFGetMappedAllocator();
  result = _MFCreateStringWithBytes(v6, a1, a2, 0xA06u, 0);
  if (a3)
  {
    if (result)
    {
      *a3 = 2566;
    }
  }

  return result;
}

CFStringRef _filter_softbank(const UInt8 *a1, unint64_t a2, _DWORD *a3)
{
  if (MFCanUseSoftBankCodePoints())
  {
    result = _MFCreateStringWithBytesViaICU(a1, a2);
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v7 = MFGetMappedAllocator();
    result = _MFCreateStringWithBytes(v7, a1, a2, 0xA01u, 0);
    if (!a3)
    {
      return result;
    }
  }

  if (result)
  {
    *a3 = 2561;
  }

  return result;
}

CFStringRef _filter_checkUTF32(const UInt8 *a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  if (*a1 != 255)
  {
    if (!*a1 && !a1[1] && a1[2] == 254 && a1[3] == 255)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (a1[1] != 254 || a1[2] || a1[3])
  {
    return 0;
  }

LABEL_14:
  v7 = MFGetMappedAllocator();
  result = _MFCreateStringWithBytes(v7, a1, a2, 0xC000100u, 1u);
  if (a3)
  {
    if (result)
    {
      *a3 = 201326848;
    }
  }

  return result;
}

CFStringRef _filter_checkUTF16(const UInt8 *a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = *a1;
  if (v6 == 255)
  {
    if (a1[1] != 254)
    {
      return 0;
    }
  }

  else if (v6 != 254 || a1[1] != 255)
  {
    return 0;
  }

  v8 = MFGetMappedAllocator();
  result = _MFCreateStringWithBytes(v8, a1, a2, 0x100u, 1u);
  if (a3)
  {
    if (result)
    {
      *a3 = 256;
    }
  }

  return result;
}

CFStringRef _MFCreateStringWithBytesViaICU(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAB)
  {
    ucnv_open();
    ucnv_setFallback();
    v6 = MFGetMappedAllocator();
    v7 = MEMORY[0x1D38BA5D0](v6, 2 * ((2 * a2) | 1u), 0x1000040BDFB0063, 0);
    if (v7)
    {
      v8 = v7;
      v9 = ucnv_toUChars();
      v4 = CFStringCreateWithCharactersNoCopy(v6, v8, v9, v6);
    }

    else
    {
      v4 = 0;
    }

    ucnv_close();
  }

  else
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _MFCreateStringWithBytesViaICU_cold_1(a2, v3);
    }

    return 0;
  }

  return v4;
}

BOOL MFGetRandomBytes(char *a1, int a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = open("/dev/urandom", 0);
  if (v4 < 0)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      MFGetRandomBytes_cold_3(v10, v20, v8);
    }

    v11 = 0;
  }

  else
  {
    v5 = v4;
    if (a2 >= 1)
    {
      while (1)
      {
        v6 = read(v5, a1, a2);
        v7 = v6;
        if (v6 <= 0)
        {
          break;
        }

        a2 -= v6;
        a1 += v6;
        if (a2 <= 0)
        {
          goto LABEL_15;
        }
      }

      v12 = MFLogGeneral();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v7 < 0)
      {
        if (v13)
        {
          v16 = __error();
          v17 = strerror(*v16);
          MFGetRandomBytes_cold_2(v17, v20, v12);
        }
      }

      else if (v13)
      {
        v14 = __error();
        v15 = strerror(*v14);
        MFGetRandomBytes_cold_1(v15, v20, v12);
      }

      a2 = 1;
    }

LABEL_15:
    v11 = a2 == 0;
    close(v5);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

void MF_MD5HMAC_Init(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 204) = 0u;
  if ([v3 length] >= 0x41)
  {
    memset(md, 170, sizeof(md));
    CC_MD5_Init(a1);
    CC_MD5_Update(a1, [v3 bytes], objc_msgSend(v3, "length"));
    CC_MD5_Final(md, a1);
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];

    v3 = v4;
  }

  [v3 getBytes:a1 + 92 length:64];
  v5 = 0;
  *(a1 + 156) = *(a1 + 92);
  *(a1 + 172) = *(a1 + 108);
  *(a1 + 188) = *(a1 + 124);
  *(a1 + 204) = *(a1 + 140);
  v6.i64[0] = 0x3636363636363636;
  v6.i64[1] = 0x3636363636363636;
  v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  do
  {
    v8 = a1 + v5;
    *(v8 + 92) = veorq_s8(*(a1 + v5 + 92), v6);
    *(v8 + 156) = veorq_s8(*(a1 + v5 + 156), v7);
    v5 += 16;
  }

  while (v5 != 64);
  CC_MD5_Init(a1);
  CC_MD5_Update(a1, (a1 + 92), 0x40u);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t MF_MD5HMAC_Output(CC_MD5_CTX *c, unsigned __int8 *md)
{
  CC_MD5_Final(md, c);
  CC_MD5_Init(c);
  CC_MD5_Update(c, &c[1].data[10], 0x40u);
  CC_MD5_Update(c, md, 0x10u);

  return CC_MD5_Final(md, c);
}

void OUTLINED_FUNCTION_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

CFAllocatorRef _MappedAllocatorInitialize()
{
  v1 = *byte_1F4F33758;
  result = CFAllocatorCreate(*MEMORY[0x1E695E480], &v1);
  _MappedAllocator = result;
  return result;
}

uint64_t _MappedAllocatorAllocate(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v1 = [[MFMutableData alloc] initWithLength:a1 + 8];
  *[(MFMutableData *)v1 mutableBytes]= v1;
  return ([(MFMutableData *)v1 mutableBytes]+ 8);
}

uint64_t _MappedAllocatorReallocate(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 - 8);
  [v2 setLength:a2 + 8];
  return [v2 mutableBytes] + 8;
}

void MFSetUseLegacyMessageIDHashFormat(uint64_t a1)
{
  v2 = EFAtomicObjectRelease();
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v3 = EFAtomicObjectSetIfNil();
}

uint64_t MFStringHashForMessageID(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = EFAtomicObjectLoad();
    v3 = v2;
    if (v2)
    {
      v4 = [v2 BOOLValue];

      if (v4)
      {
LABEL_4:
        v5 = [v1 ef_lossyDefaultCStringBytes];
        v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:strlen(v5)];
        v7 = [v6 ef_md5Digest];

        v8 = [objc_alloc(MEMORY[0x1E699B990]) initWithMD5Digest:v7];
LABEL_10:
        v9 = [v8 int64Value];

        goto LABEL_11;
      }
    }

    else
    {
      if (useLegacyMessageIDHashFormat_onceToken != -1)
      {
        MFStringHashForMessageID_cold_1();
      }

      v10 = [useLegacyMessageIDHashFormat_userDefaults valueForKey:@"UseLegacyMessageIDHashFormat"];
      v11 = [v10 BOOLValue];

      if (v11)
      {
        goto LABEL_4;
      }
    }

    v8 = [objc_alloc(MEMORY[0x1E699B990]) initWithString:v1];
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t MFStringHashForMessageIDHeader(void *a1)
{
  v1 = [a1 ec_messageIDSubstring];
  v2 = MFStringHashForMessageID(v1);

  return v2;
}

uint64_t MFUniqueMessageIDHash()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v1 = [v0 UUIDString];
  v2 = MFStringHashForMessageID(v1);

  return v2;
}

uint64_t MFMessageIDHashFromHeaders(void *a1, int a2)
{
  v3 = [a1 firstHeaderForKey:*MEMORY[0x1E699B130]];
  v4 = MFStringHashForMessageIDHeader(v3);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2 == 0;
  }

  if (!v5)
  {
    v4 = MFUniqueMessageIDHash();
  }

  return v4;
}

void sub_1D36B8B00(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1D36B8ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1D36B9FAC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id _cachedIvarLoadFromHeaders(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  _MFLockGlobalLock();
  v7 = v6[2](v6);
  _MFUnlockGlobalLock();
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2 == 0;
  }

  if (!v8)
  {
    v9 = [v5 headers];
    [v5 loadCachedHeaderValuesFromHeaders:v9];

    _MFLockGlobalLock();
    v7 = v6[2](v6);
    _MFUnlockGlobalLock();
  }

  return v7;
}

uint64_t __useLegacyMessageIDHashFormat_block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.mail"];

  useLegacyMessageIDHashFormat_userDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.mail"];

  return MEMORY[0x1EEE66BB8]();
}

void _changeFileAttributes(void *a1, void *a2, void *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v10[5];
  if (v6)
  {
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = v10[5];
      v10[5] = v8;

      v7 = v10[5];
    }

    [v7 setValue:v6 forKey:v5];
  }

  else
  {
    [v7 removeObjectForKey:v5];
  }
}

id _mimeTypeFromFileName(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MFTypeInfo);
  v3 = [v1 pathExtension];
  [(MFTypeInfo *)v2 setPathExtension:v3];

  [(MFTypeInfo *)v2 setFilename:v1];
  if (MFGetTypeInfo(v2, 1))
  {
    v4 = [(MFTypeInfo *)v2 mimeType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1D36BDDE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void _fixSubwrappersAtPath(void *a1, uint64_t a2)
{
  v13 = a1;
  if ([v13 isDirectory])
  {
    v3 = [v13 fileWrappers];
    v4 = v3;
    if (v3 && [v3 count])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = strlen(a2);
      v7 = [v4 keyEnumerator];
      v8 = 0;
      v9 = (a2 + v6);
      v10 = 1022 - v6;
      while (1)
      {
        v11 = [v7 nextObject];

        if (!v11)
        {
          break;
        }

        v12 = [v4 objectForKey:v11];
        if ([v11 getFileSystemRepresentation:v9 + 1 maxLength:v10])
        {
          *v9 = 47;
          *(a2 + 1023) = 0;
          _fixSubwrappersAtPath(v12, a2);
        }

        v8 = v11;
      }

      *v9 = 0;

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    v4 = 0;
  }
}

void sub_1D36BECE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMessageFileWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D36BF618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _MFCreateStringFromHeaderBytes(unsigned int a1, UInt8 *a2, size_t a3)
{
  if (_MFCreateStringFromHeaderBytes_onceToken != -1)
  {
    _MFCreateStringFromHeaderBytes_cold_1();
  }

  v52 = -1;
  v46 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a2 length:a3 encoding:1 freeWhenDone:0];
  __n = a3;
  if (!a3)
  {
    v6 = 0;
    v7 = 0;
    v36 = 0;
    goto LABEL_49;
  }

  v50 = 0;
  v5 = 0;
  bytesDeallocator = *MEMORY[0x1E695E498];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = a3;
  while (1)
  {
    v8 = [_MFCreateStringFromHeaderBytes_mimeRegex firstMatchInString:v45 options:0 range:{v5, v7, bytesDeallocator}];
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = [v8 range];
    v47 = v11;
    v12 = v10;
    v13 = [v9 rangeAtIndex:1];
    v15 = v14;
    v16 = [v9 rangeAtIndex:2];
    v49 = [v9 rangeAtIndex:3];
    v18 = v17;
    if (!v50)
    {
      v50 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:__n];
    }

    v48 = v9;
    v19 = v7;
    if (v12 > v5)
    {
      if (v6 != v5)
      {
        goto LABEL_16;
      }

      do
      {
        v20 = a2[v6];
        if ((v20 & 0x80000000) != 0)
        {
          v21 = __maskrune(v20, 0x4000uLL);
        }

        else
        {
          v21 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x4000;
        }

        ++v6;
      }

      while (v6 < v12 && v21);
      if (!v21)
      {
LABEL_16:
        _consumeBuffer(v50, v46, &v52);
        v22 = _createStringFromRawHeaderBytes(a1, &a2[v5], v12 - v5);
        if (v22)
        {
          [v50 appendString:v22];
        }
      }
    }

    if (!v15)
    {
      goto LABEL_30;
    }

    v23 = _createStringFromRawHeaderBytes(1536, &a2[v13], v15);
    v24 = MFEncodingForCharsetWithFallback(v23, a1);
    v25 = v24;
    if (v52 != v24)
    {
      goto LABEL_28;
    }

    if (v24 > 2351)
    {
      if ((v24 - 2352) <= 0x10 && ((1 << (v24 - 48)) & 0x10003) != 0 || v24 == 2565 || v24 == 134217984)
      {
        goto LABEL_29;
      }

LABEL_28:
      _consumeBuffer(v50, v46, &v52);
      v52 = v25;
      goto LABEL_29;
    }

    if ((v24 - 1584) >= 3)
    {
      goto LABEL_28;
    }

LABEL_29:

LABEL_30:
    v26 = __tolower(a2[v16]);
    UnfoldedData = _createUnfoldedData(&a2[v49], v18);
    Mutable = UnfoldedData;
    if (v26 == 113)
    {
      if (!UnfoldedData)
      {
        Mutable = CFDataCreateMutable(0, v18);
        CFDataAppendBytes(Mutable, &a2[v49], v18);
      }

      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      Length = CFDataGetLength(Mutable);
      if (Length >= 1)
      {
        v31 = &MutableBytePtr[Length];
        do
        {
          v32 = memchr(MutableBytePtr, 95, v31 - MutableBytePtr);
          if (!v32)
          {
            break;
          }

          *v32 = 32;
          MutableBytePtr = v32 + 1;
        }

        while ((v32 + 1) < v31);
      }

      v33 = [(__CFData *)Mutable mf_decodeQuotedPrintableForText:1];
    }

    else
    {
      if (UnfoldedData)
      {
        v34 = CFRetain(UnfoldedData);
      }

      else
      {
        v34 = CFDataCreateWithBytesNoCopy(0, &a2[v49], v18, bytesDeallocator);
      }

      v35 = v34;
      v33 = [v34 mf_decodeBase64];
      CFRelease(v35);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    [v46 appendData:v33];
    v6 = v12 + v47;
    v7 = v19 + v5 - (v12 + v47);

    v5 = v12 + v47;
    if (!v7)
    {
      goto LABEL_48;
    }
  }

  v6 = v5;
LABEL_48:
  v36 = v50;
LABEL_49:
  v51 = v36;
  _consumeBuffer(v36, v46, &v52);
  if (v36)
  {
    if (v7)
    {
      v37 = _createStringFromRawHeaderBytes(a1, &a2[v6], v7);
      if (v37)
      {
        [v51 appendString:v37];
      }
    }

    v38 = v51;
    v39 = v51;
  }

  else
  {
    v38 = 0;
    v39 = _createStringFromRawHeaderBytes(a1, a2, __n);
  }

  v40 = v39;

  return v40;
}

void sub_1D36BFD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void _consumeBuffer(void *a1, void *a2, _DWORD *a3)
{
  v7 = a1;
  v5 = a2;
  if ([(__CFString *)v5 length])
  {
    v6 = MFCreateStringWithData(v5, *a3, 0);
    if (v6)
    {
      [v7 appendString:v6];
    }

    [(__CFString *)v5 setLength:0];
    *a3 = -1;
  }
}

__CFString *_createStringFromRawHeaderBytes(uint64_t a1, UInt8 *a2, size_t __n)
{
  UnfoldedData = _createUnfoldedData(a2, __n);
  if (!UnfoldedData)
  {
    UnfoldedData = CFDataCreateWithBytesNoCopy(0, a2, __n, *MEMORY[0x1E695E498]);
  }

  if (a1 != -1 || (v7 = MFCreateStringWithData(UnfoldedData, 1536, 0)) == 0)
  {
    v7 = MFCreateStringWithData(UnfoldedData, a1, 0);
    if (!v7)
    {
      v7 = CFStringCreateWithBytes(0, a2, __n, a1, 0);
    }
  }

  if (UnfoldedData)
  {
    CFRelease(UnfoldedData);
  }

  return v7;
}

__CFData *_createUnfoldedData(UInt8 *a1, size_t __n)
{
  v3 = a1;
  v4 = memchr(a1, 10, __n);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = &v3[__n];
  Mutable = CFDataCreateMutable(0, __n);
  do
  {
    CFDataAppendBytes(Mutable, v3, v5 - v3);
    v3 = (v5 + 1);
    if ((v5 + 1) < v6)
    {
      v8 = v6 - 1 - v5;
      while (1)
      {
        v9 = *v3;
        if (v9 != 32 && v9 != 9)
        {
          break;
        }

        ++v3;
        if (!--v8)
        {
          v3 = v6;
          break;
        }
      }
    }

    CFDataAppendBytes(Mutable, " ", 1);
    v5 = memchr(v3, 10, v6 - v3);
  }

  while (v5);
  if (v3 < v6)
  {
    CFDataAppendBytes(Mutable, v3, v6 - v3);
  }

  return Mutable;
}

uint64_t _MFDataInit()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v1 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v2 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if (!v2)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithCString:getprogname() encoding:4];
  }

  v3 = NSHomeDirectory();
  v4 = [[(NSString *)v3 stringByAppendingPathComponent:@"Library"] stringByAppendingPathComponent:@"Caches"];
  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = v2;
  }

  sMFDataPath = [[(NSString *)v4 stringByAppendingPathComponent:v5] stringByAppendingPathComponent:@"MFData"];
  if (sMFDataPath)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v6 fileExistsAtPath:sMFDataPath])
    {
      v7 = [v6 enumeratorAtPath:sMFDataPath];
      v8 = [v7 nextObject];
      if (v8)
      {
        v9 = v8;
        do
        {
          MFRemoveItemAtPath([sMFDataPath stringByAppendingPathComponent:v9]);
          v9 = [v7 nextObject];
        }

        while (v9);
      }
    }

    else if (([v6 createDirectoryAtPath:sMFDataPath withIntermediateDirectories:1 attributes:0 error:0] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unable to create %@.  Check the sandbox access.", sMFDataPath}];
    }

    v10 = [(NSString *)v3 stringByAppendingPathComponent:@"Library"];
    if ([@"MobileMail" isEqualToString:v2])
    {
      v11 = @"Mail";
    }

    else
    {
      v11 = v2;
    }

    v12 = [[(NSString *)v10 stringByAppendingPathComponent:v11] stringByAppendingPathComponent:@"MFData"];
    if (v12)
    {
      v13 = v12;
      if ([v6 fileExistsAtPath:v12])
      {
        MFRemoveItemAtPath(v13);
      }
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Unable to produce a cache path."];
  }

  return [v0 drain];
}

void MFDataConsumerAppendDispatchData(void *a1, NSObject *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && a2)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __MFDataConsumerAppendDispatchData_block_invoke;
    applier[3] = &unk_1E8454EC0;
    v6 = v3;
    dispatch_data_apply(a2, applier);
  }
}

uint64_t MFDataConsumerConsumeCompleteData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 length];
  v6 = [v4 bytes];
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 + v8 length:v5 - v8 freeWhenDone:0];
    v10 = [v3 appendData:v9];
    v11 = v10;
    if (v10 < 0)
    {
      break;
    }

    if (v7 && v10 == 0)
    {
      v11 = v8;
      break;
    }

    v8 += v10;
    if (v8 == v5)
    {
      v11 = v5;
      break;
    }

    v7 = v11 == 0;
  }

  return v11;
}

void sub_1D36C865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1D36C87D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);
  _Block_object_dispose((v12 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t _block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 caseInsensitiveCompare:v9];
  if (!v10)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [v4 compare:v5];
    }

    else if (v4 < v5)
    {
      v10 = -1;
    }

    else
    {
      v10 = v4 > v5;
    }
  }

  return v10;
}

__CFString *copyMutablePlainTextFromPoint(__CFString *theString, uint64_t a2, unint64_t a3, int a4)
{
  v4 = theString;
  v178[2] = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    goto LABEL_246;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v172 = v8;
  v173 = v8;
  v170 = v8;
  v171 = v8;
  v168 = v8;
  v169 = v8;
  *buffer = v8;
  v167 = v8;
  v9 = CFStringGetLength(theString) - a2;
  theStringa[0] = v4;
  *(&v175 + 1) = a2;
  *&v176 = v9;
  theStringa[1] = CFStringGetCharactersPtr(v4);
  if (theStringa[1])
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
  }

  *(&v176 + 1) = 0;
  v177 = 0;
  *&v175 = CStringPtr;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12 = v11;
  memset(v165, 170, 5);
  if (!a3 || v9 < 1)
  {
    goto LABEL_244;
  }

  v13 = 0;
  v150 = 0;
  v151 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v137 = a4 ^ 1;
  v143 = v9 - 7;
  v19 = MEMORY[0x1E69E9830];
  v138 = v9;
  v139 = a3;
  v144 = v11;
  v145 = v4;
  do
  {
    if (v16 < 0)
    {
      chars = 0;
      if (!v14)
      {
LABEL_15:
        v21 = 0;
        v22 = v18 != 0;
        goto LABEL_16;
      }

LABEL_121:
      v14 = 1;
      goto LABEL_122;
    }

    v20 = v176;
    if (v176 <= v16)
    {
      chars = 0;
      if (!v14)
      {
        goto LABEL_15;
      }

LABEL_38:
      *v160 = *theStringa;
      v161 = v175;
      v162 = v176;
      v163 = v177;
      v156 = v170;
      v157 = v171;
      v158 = v172;
      v159 = v173;
      *v152 = *buffer;
      v153 = v167;
      v154 = v168;
      v155 = v169;
      v31 = v176;
      if (v176 > v16)
      {
        if (v160[1])
        {
          v32 = *(&v160[1]->isa + *(&v161 + 1) + v16);
        }

        else if (v161)
        {
          v32 = *(v161 + *(&v161 + 1) + v16);
        }

        else
        {
          if (v163 <= v16 || (v43 = *(&v162 + 1), *(&v162 + 1) > v16))
          {
            v44 = v16 - 4;
            if (v16 < 4)
            {
              v44 = 0;
            }

            if (v44 + 64 < v176)
            {
              v31 = v44 + 64;
            }

            *(&v162 + 1) = v44;
            v163 = v31;
            v45 = v18;
            v46 = v17;
            v180.length = v31 - v44;
            v180.location = *(&v161 + 1) + v44;
            v47 = v13;
            CFStringGetCharacters(v160[0], v180, v152);
            v13 = v47;
            v17 = v46;
            v18 = v45;
            v19 = MEMORY[0x1E69E9830];
            v43 = *(&v162 + 1);
          }

          v32 = v152[v16 - v43];
        }

        if (v32 == 45)
        {
          v48 = v16 + 1;
          v49 = v162;
          if (v162 > v16 + 1)
          {
            if (v160[1])
            {
              v50 = *(&v160[1]->isa + *(&v161 + 1) + v48);
            }

            else if (v161)
            {
              v50 = *(v161 + *(&v161 + 1) + v48);
            }

            else
            {
              if (v163 <= v48 || (v70 = *(&v162 + 1), *(&v162 + 1) > v48))
              {
                v71 = v16 - 3;
                if (v16 < 3)
                {
                  v71 = 0;
                }

                if (v71 + 64 < v162)
                {
                  v49 = v71 + 64;
                }

                *(&v162 + 1) = v71;
                v163 = v49;
                v72 = v18;
                v73 = v17;
                v182.length = v49 - v71;
                v182.location = *(&v161 + 1) + v71;
                v74 = v12;
                v75 = v13;
                CFStringGetCharacters(v160[0], v182, v152);
                v13 = v75;
                v12 = v74;
                v17 = v73;
                v18 = v72;
                v4 = v145;
                v19 = MEMORY[0x1E69E9830];
                v70 = *(&v162 + 1);
              }

              v50 = v152[v48 - v70];
            }

            if (v50 == 45)
            {
              v76 = v16 + 2;
              v77 = v162;
              if (v162 > v16 + 2)
              {
                if (v160[1])
                {
                  v78 = *(&v160[1]->isa + *(&v161 + 1) + v76);
                }

                else if (v161)
                {
                  v78 = *(v161 + *(&v161 + 1) + v76);
                }

                else
                {
                  if (v163 <= v76 || (v125 = *(&v162 + 1), *(&v162 + 1) > v76))
                  {
                    v126 = v16 - 2;
                    if (v16 < 2)
                    {
                      v126 = 0;
                    }

                    if (v126 + 64 < v162)
                    {
                      v77 = v126 + 64;
                    }

                    *(&v162 + 1) = v126;
                    v163 = v77;
                    v127 = v18;
                    v128 = v17;
                    v187.length = v77 - v126;
                    v187.location = *(&v161 + 1) + v126;
                    v129 = v12;
                    v130 = v13;
                    CFStringGetCharacters(v160[0], v187, v152);
                    v13 = v130;
                    v12 = v129;
                    v17 = v128;
                    v18 = v127;
                    v4 = v145;
                    v19 = MEMORY[0x1E69E9830];
                    v125 = *(&v162 + 1);
                  }

                  v78 = v152[v76 - v125];
                }

                v14 = v78 != 62;
                if (v78 == 62)
                {
                  v16 += 2;
                }

                goto LABEL_122;
              }
            }
          }
        }
      }

      goto LABEL_121;
    }

    if (theStringa[1])
    {
      v21 = *(&theStringa[1]->isa + *(&v175 + 1) + v16);
    }

    else if (v175)
    {
      v21 = *(v175 + *(&v175 + 1) + v16);
    }

    else
    {
      if (v177 <= v16 || (v24 = *(&v176 + 1), *(&v176 + 1) > v16))
      {
        v25 = v16 - 4;
        if (v16 < 4)
        {
          v25 = 0;
        }

        if (v25 + 64 < v176)
        {
          v20 = v25 + 64;
        }

        *(&v176 + 1) = v25;
        v177 = v20;
        v26 = v18;
        v27 = v17;
        v179.length = v20 - v25;
        v179.location = *(&v175 + 1) + v25;
        v28 = v4;
        v29 = v12;
        v30 = v13;
        CFStringGetCharacters(theStringa[0], v179, buffer);
        v13 = v30;
        v12 = v29;
        v4 = v28;
        v17 = v27;
        v18 = v26;
        v19 = MEMORY[0x1E69E9830];
        v24 = *(&v176 + 1);
      }

      v21 = buffer[v16 - v24];
    }

    chars = v21;
    if (v14)
    {
      goto LABEL_38;
    }

    if (v21 != 60)
    {
      v22 = v18 != 0;
      if (v21 == 62 && v18 != 0)
      {
        if (!v17)
        {
          v18 = (v18 - 1);
          if (v15)
          {
            v147 = v13;
            v40 = v4;
            v41 = v18;
            if (!strncasecmp(v165, "br", 5uLL) || !strncasecmp(v165, "li", 5uLL) || !strncasecmp(v165, "/li", 5uLL) || !strncasecmp(v165, "div", 5uLL) || !strncasecmp(v165, "/div", 5uLL) || !strncasecmp(v165, "/p", 5uLL))
            {
              v52 = HIDWORD(v150);
              v53 = @"\n";
              if (((v137 | HIDWORD(v150)) & 1) == 0 || (v53 = @" ", ((v150 | HIDWORD(v150)) & 1) == 0))
              {
                CFStringAppend(v40, v53);
                v52 = (v137 | HIDWORD(v150)) ^ 1;
                LODWORD(v150) = v137 | HIDWORD(v150);
              }

              HIDWORD(v150) = v52;
              v17 = 0;
              v14 = 0;
              ++v15;
            }

            else
            {
              v17 = 0;
              v14 = 0;
            }

            v19 = MEMORY[0x1E69E9830];
            v18 = v41;
            v4 = v40;
            v13 = v147;
            goto LABEL_122;
          }

LABEL_80:
          v17 = 0;
        }

        goto LABEL_81;
      }

      if (v21 == 62)
      {
        v37 = v18;
        v38 = v17;
        v39 = v13;
        CFStringAppendCharacters(v4, &chars, 1);
        v13 = v39;
        v17 = v38;
        v18 = v37;
        v19 = MEMORY[0x1E69E9830];
        v14 = 0;
        v150 = 0;
        ++v15;
        goto LABEL_122;
      }

LABEL_16:
      if (v22 && !v17)
      {
        if (v13 <= 3)
        {
          v17 = 0;
          v14 = 0;
          v165[v13++] = v21;
          goto LABEL_122;
        }

        goto LABEL_80;
      }

      if (!(v18 | v17))
      {
        if (v21 <= 0x26u)
        {
          if (((1 << v21) & 0x100002600) != 0)
          {
            if (v151)
            {
              v23 = v13;
              CFStringAppend(v4, @"&");
              CFStringAppend(v4, v12);
              CFStringReplaceAll(v12, &stru_1F4F33820);
              v13 = v23;
              v19 = MEMORY[0x1E69E9830];
            }

            if (!((v150 | HIDWORD(v150)) & 1 | (v15 == 0)))
            {
              v42 = v13;
              CFStringAppend(v4, @" ");
              v13 = v42;
              v19 = MEMORY[0x1E69E9830];
              v18 = 0;
              v17 = 0;
              v151 = 0;
              v14 = 0;
              v150 = 1;
              goto LABEL_122;
            }

            v18 = 0;
            v17 = 0;
            v151 = 0;
            goto LABEL_81;
          }

          if (v21 == 38)
          {
            v18 = 0;
            v17 = 0;
            v14 = 0;
            v151 = 1;
            goto LABEL_122;
          }
        }

        if ((v151 & (v21 != 59)) != 1)
        {
          v54 = v13;
          if ((v151 & (v21 == 59)) == 1)
          {
            v148 = v15;
            CFStringAppendCharacters(v12, &chars, 1);
            v55 = [(__CFString *)v12 ec_parseHTMLEntity];
            v56 = [(__CFString *)v12 isEqualToString:@"nbsp;"];
            if (v55 && (v57 = v56, (Length = CFStringGetLength(v55)) != 0) && ((v59 = Length, !v57) || !((v150 | HIDWORD(v150)) & 1 | (v148 == 0))))
            {
              CFStringAppend(v4, v55);
              HIDWORD(v150) = 0;
              v15 = v148 + v59;
              v60 = v57;
            }

            else
            {
              v60 = v150;
              v15 = v148;
            }

            CFStringReplaceAll(v12, &stru_1F4F33820);
            v18 = 0;
            v17 = 0;
            v151 = 0;
            v14 = 0;
            LODWORD(v150) = v60;
          }

          else
          {
            CFStringAppendCharacters(v4, &chars, 1);
            v18 = 0;
            v17 = 0;
            v14 = 0;
            v150 = 0;
            ++v15;
          }

          v19 = MEMORY[0x1E69E9830];
          v13 = v54;
          goto LABEL_122;
        }

        v151 = 1;
        v51 = v13;
        CFStringAppendCharacters(v12, &chars, 1);
        v13 = v51;
        v19 = MEMORY[0x1E69E9830];
        v18 = 0;
        goto LABEL_80;
      }

LABEL_81:
      v14 = 0;
      goto LABEL_122;
    }

    v33 = v16 + 1;
    *v160 = *theStringa;
    v161 = v175;
    v162 = v176;
    v163 = v177;
    v156 = v170;
    v157 = v171;
    v158 = v172;
    v159 = v173;
    *v152 = *buffer;
    v153 = v167;
    v154 = v168;
    v155 = v169;
    v34 = v176;
    if (v176 <= v16 + 1)
    {
      goto LABEL_142;
    }

    if (v160[1])
    {
      v35 = *(&v160[1]->isa + *(&v161 + 1) + v33);
    }

    else if (v161)
    {
      v35 = *(v161 + *(&v161 + 1) + v33);
    }

    else
    {
      if (v163 <= v33 || (v61 = *(&v162 + 1), *(&v162 + 1) > v33))
      {
        v62 = v16 - 3;
        if (v33 < 4)
        {
          v62 = 0;
        }

        if (v62 + 64 < v176)
        {
          v34 = v62 + 64;
        }

        *(&v162 + 1) = v62;
        v163 = v34;
        v63 = v18;
        v64 = v17;
        v181.length = v34 - v62;
        v181.location = *(&v161 + 1) + v62;
        v65 = v12;
        v66 = v13;
        CFStringGetCharacters(v160[0], v181, v152);
        v13 = v66;
        v12 = v65;
        v17 = v64;
        v18 = v63;
        v19 = MEMORY[0x1E69E9830];
        v61 = *(&v162 + 1);
      }

      v35 = v152[v33 - v61];
    }

    if (v35 != 33)
    {
      goto LABEL_142;
    }

    v67 = v16 + 2;
    v68 = v162;
    if (v162 <= v16 + 2)
    {
      goto LABEL_142;
    }

    if (v160[1])
    {
      v69 = *(&v160[1]->isa + *(&v161 + 1) + v67);
    }

    else if (v161)
    {
      v69 = *(v161 + *(&v161 + 1) + v67);
    }

    else
    {
      if (v163 <= v67 || (v79 = *(&v162 + 1), *(&v162 + 1) > v67))
      {
        v80 = v16 - 2;
        if (v33 < 3)
        {
          v80 = 0;
        }

        if (v80 + 64 < v162)
        {
          v68 = v80 + 64;
        }

        *(&v162 + 1) = v80;
        v163 = v68;
        v141 = v18;
        v81 = v17;
        v183.length = v68 - v80;
        v183.location = *(&v161 + 1) + v80;
        v82 = v12;
        v83 = v13;
        CFStringGetCharacters(v160[0], v183, v152);
        v13 = v83;
        v12 = v82;
        v17 = v81;
        v18 = v141;
        v19 = MEMORY[0x1E69E9830];
        v79 = *(&v162 + 1);
      }

      v69 = v152[v67 - v79];
    }

    if (v69 == 45 && (v84 = v16 + 3, v85 = v162, v162 > v16 + 3))
    {
      if (v160[1])
      {
        v86 = v18;
        v87 = *(&v160[1]->isa + *(&v161 + 1) + v84);
      }

      else if (v161)
      {
        v86 = v18;
        v87 = *(v161 + *(&v161 + 1) + v84);
      }

      else
      {
        v86 = v18;
        if (v163 <= v84 || (v131 = *(&v162 + 1), *(&v162 + 1) > v84))
        {
          v132 = v16 - 1;
          if (v33 < 2)
          {
            v132 = 0;
          }

          if (v132 + 64 < v162)
          {
            v85 = v132 + 64;
          }

          *(&v162 + 1) = v132;
          v163 = v85;
          v133 = v17;
          v188.length = v85 - v132;
          v188.location = *(&v161 + 1) + v132;
          v134 = v13;
          CFStringGetCharacters(v160[0], v188, v152);
          v13 = v134;
          v17 = v133;
          v19 = MEMORY[0x1E69E9830];
          v131 = *(&v162 + 1);
        }

        v87 = v152[v84 - v131];
      }

      if (v87 == 45)
      {
        v14 = 1;
        v16 += 3;
        v18 = v86;
        v4 = v145;
        goto LABEL_122;
      }
    }

    else
    {
LABEL_142:
      LODWORD(v86) = v18;
    }

    v146 = v17;
    v149 = v15;
    v88 = v17 == 0;
    v165[4] = 0;
    *v165 = 0;
    v89 = -v16;
    v90 = v16 + 64;
    v91 = v16 + 65;
    v92 = v16;
    do
    {
      v93 = v91;
      if (v92 >= 3)
      {
        v94 = 3;
      }

      else
      {
        v94 = v92;
      }

      v95 = v92 + 1;
      v96 = v176;
      if (v176 <= v92 + 1)
      {
        v98 = 0;
LABEL_164:
        v106 = *(v19 + 4 * v98 + 60) & 0x4000;
        goto LABEL_166;
      }

      if (theStringa[1])
      {
        v97 = *(&theStringa[1]->isa + *(&v175 + 1) + v92 + 1);
      }

      else if (v175)
      {
        v97 = *(v175 + *(&v175 + 1) + v92 + 1);
      }

      else
      {
        v99 = *(&v176 + 1);
        if (v177 <= v95 || *(&v176 + 1) > v95)
        {
          v101 = -v94;
          v102 = v94 + v89;
          v103 = v90 - v94;
          v104 = v92 + v101;
          v105 = v104 + 64;
          if (v104 + 64 >= v176)
          {
            v105 = v176;
          }

          *(&v176 + 1) = v104;
          v177 = v105;
          if (v176 >= v103)
          {
            v96 = v103;
          }

          v184.location = v104 + *(&v175 + 1);
          v184.length = v96 + v102;
          CFStringGetCharacters(theStringa[0], v184, buffer);
          v19 = MEMORY[0x1E69E9830];
          v99 = *(&v176 + 1);
        }

        v97 = buffer[v92 + 1 - v99];
      }

      v98 = v97;
      if (v97 <= 0x7Fu)
      {
        goto LABEL_164;
      }

      v106 = __maskrune(v97, 0x4000uLL);
      v19 = MEMORY[0x1E69E9830];
LABEL_166:
      --v89;
      ++v90;
      v91 = v93 + 1;
      ++v92;
    }

    while (v106);
    v18 = (v86 + v88);
    if (v92 >= v143)
    {
      v14 = 0;
      v13 = 0;
      v12 = v144;
      v4 = v145;
      v17 = v146;
      v15 = v149;
    }

    else
    {
      *v160 = *theStringa;
      v161 = v175;
      v162 = v176;
      v163 = v177;
      v156 = v170;
      v157 = v171;
      v158 = v172;
      v159 = v173;
      *v152 = *buffer;
      v153 = v167;
      v154 = v168;
      v155 = v169;
      v107 = v176;
      v142 = v86 + v88;
      if (v176 <= v92)
      {
        v109 = 0;
      }

      else
      {
        if (v160[1])
        {
          v108 = v160[1] + *(&v161 + 1);
          goto LABEL_171;
        }

        if (v161)
        {
          v109 = *(v161 + *(&v161 + 1) + v92);
        }

        else
        {
          if (v163 <= v92 || (v122 = *(&v162 + 1), *(&v162 + 1) > v92))
          {
            if (v92 >= 4)
            {
              v123 = 4;
            }

            else
            {
              v123 = v92;
            }

            v124 = v92 - v123 + 64;
            if (v124 >= v176)
            {
              v124 = v176;
            }

            *(&v162 + 1) = v92 - v123;
            v163 = v124;
            if (v176 >= v90 - v123)
            {
              v107 = v90 - v123;
            }

            v186.length = v107 + v123 - v92;
            v186.location = v92 - v123 + *(&v161 + 1);
            CFStringGetCharacters(v160[0], v186, v152);
            v122 = *(&v162 + 1);
          }

          v108 = &v152[-v122];
LABEL_171:
          v109 = v108[v92];
        }
      }

      v110 = 0;
      v140 = v109;
      v111 = v109 == 47;
      memset(v178, 170, 14);
      if (v109 == 47)
      {
        v112 = v92 + 1;
      }

      else
      {
        v112 = v92;
      }

      if (v109 == 47)
      {
        ++v93;
      }

      v113 = -v111;
      v114 = v112;
      do
      {
        if (v114 >= 4)
        {
          v115 = 4;
        }

        else
        {
          v115 = v114;
        }

        v116 = v112 + v110;
        v117 = v162;
        if (v162 <= (v112 + v110))
        {
          v118 = 0;
        }

        else if (v160[1])
        {
          v118 = *(&v160[1]->isa + *(&v161 + 1) + v116);
        }

        else if (v161)
        {
          v118 = *(v161 + *(&v161 + 1) + v111 + v92);
        }

        else
        {
          if (v163 <= v116 || (v119 = *(&v162 + 1), *(&v162 + 1) > v116))
          {
            v120 = v112 + v110 - v115 + 64;
            if (v120 >= v162)
            {
              v120 = v162;
            }

            *(&v162 + 1) = v112 + v110 - v115;
            v163 = v120;
            if (v162 >= v93 - v115)
            {
              v117 = v93 - v115;
            }

            v185.location = v112 + v110 + *(&v161 + 1) - v115;
            v185.length = v115 + v113 - v92 + v117;
            CFStringGetCharacters(v160[0], v185, v152);
            v119 = *(&v162 + 1);
          }

          v118 = v152[v92 + v111 - v119];
        }

        *(v178 + v110++) = v118;
        ++v111;
        ++v93;
        ++v114;
        --v113;
      }

      while ((v110 + v112) <= v92 + 6);
      if (v140 == 47)
      {
        v121 = -1;
      }

      else
      {
        v121 = 1;
      }

      if (ustrncasecmp(v178, "style", 5) && ustrncasecmp(v178, "script", 6))
      {
        v121 = 0;
      }

      v9 = v138;
      a3 = v139;
      v12 = v144;
      v4 = v145;
      v15 = v149;
      v19 = MEMORY[0x1E69E9830];
      v18 = v142;
      v14 = 0;
      v13 = 0;
      v17 = v121 + v146;
    }

LABEL_122:
    if (v15 >= a3)
    {
      break;
    }

    ++v16;
  }

  while (v16 < v9);
LABEL_244:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_246:
  v135 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ustrncasecmp(char *a1, char *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = *a2;
    v7 = __tolower(*a1);
    v8 = __tolower(v6);
    if (v7 < v8)
    {
      return 0xFFFFFFFFLL;
    }

    if (v8 < v7)
    {
      break;
    }

    a1 += 2;
    ++a2;
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1D36CC32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFStringTransform;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__CFString *withMutableCharactersAndPadding(void *a1, void *a2)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v3 length];
  v9 = v6;
  if (!v6)
  {
    v23 = 166;
    goto LABEL_22;
  }

  if (v6 <= 0x18F)
  {
    v10 = v6 + 1;
    MEMORY[0x1EEE9AC00](v6, v7, v8);
    v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v12, 170, 2 * v9 + 2);
    [v3 getCharacters:v12 range:{0, v9}];
    v13 = v4[2](v4, v12, v9, v9 + 1);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 0;
    }

    else if (v13)
    {
      if (v10 < v13)
      {
        __assert_rtn("withMutableCharactersAndPadding", "MFStringTransform.m", 178, "0");
      }

      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v12 length:v13];
    }

    else
    {
      v14 = &stru_1F4F33820;
    }

    goto LABEL_17;
  }

  if (v6 > 0x98967F)
  {
    v23 = 199;
LABEL_22:
    __assert_rtn("withMutableCharactersAndPadding", "MFStringTransform.m", v23, "0");
  }

  v15 = v6 + 1;
  v16 = [MEMORY[0x1E695DF88] dataWithLength:2 * (v6 + 1)];
  v17 = [v16 bytes];
  [v3 getCharacters:v17 range:{0, v9}];
  v18 = v4[2](v4, v17, v9, v9 + 1);
  v19 = v18;
  if ((v18 & 0x80000000) != 0)
  {
    v14 = 0;
  }

  else if (v18)
  {
    if (v15 < v18)
    {
      __assert_rtn("withMutableCharactersAndPadding", "MFStringTransform.m", 196, "0");
    }

    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __withMutableCharactersAndPadding_block_invoke;
    v24[3] = &unk_1E8455128;
    v24[4] = v16;
    v14 = [v20 initWithCharactersNoCopy:v17 length:v19 deallocator:v24];
  }

  else
  {
    v14 = &stru_1F4F33820;
  }

LABEL_17:
  objc_autoreleasePoolPop(v5);

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

void withMutableCharacters(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v3 length];
  v8 = v6;
  if (!v6)
  {
    v14 = 143;
    goto LABEL_9;
  }

  if (v6 > 0x18F)
  {
    if (v6 <= 0x98967F)
    {
      v11 = [MEMORY[0x1E695DF88] dataWithLength:2 * v6];
      v12 = [v11 bytes];
      [v3 getCharacters:v12 range:{0, v8}];
      v4[2](v4, v12, v8);

      goto LABEL_6;
    }

    v14 = 154;
LABEL_9:
    __assert_rtn("withMutableCharacters", "MFStringTransform.m", v14, "0");
  }

  MEMORY[0x1EEE9AC00](v6, v7, 2 * v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v10, 170, v9);
  [v3 getCharacters:v10 range:{0, v8}];
  v4[2](v4, v10, v8);
LABEL_6:
  objc_autoreleasePoolPop(v5);

  v13 = *MEMORY[0x1E69E9840];
}

void __createTransliterator_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __createTransliterator_block_invoke_2;
  v3[3] = &unk_1E8455150;
  v4 = a3;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  withMutableCharacters(@"SoftBankStrip", v3);
}

void __createTransliterator_block_invoke_2(uint64_t a1)
{
  v6 = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = utrans_openU();
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __createTransliterator_block_invoke_2_cold_2();
    }
  }
}

void MFTestOverrideCanUseSoftBankCodePoints(int a1)
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MFTestOverrideCanUseSoftBankCodePoints(BOOL)"];
    [v3 handleFailureInFunction:v4 file:@"MFStringUtils+SoftBank.m" lineNumber:127 description:{@"%s can only be called from unit tests", "void MFTestOverrideCanUseSoftBankCodePoints(BOOL)"}];
  }

  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  atomic_store(v2, sCanUseCodePoints);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __softBankTransform_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1 + 32;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), sSoftBankTransform);
  if (!*(*(*v1 + 8) + 40))
  {
    v25 = [MFStringTransform alloc];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = activeContexts();
    v2 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v2)
    {
      v30 = *v36;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v35 + 1) + 8 * i);
          v5 = sharedCoreTelephonyClient();
          v34 = 0;
          v6 = [v5 copyCarrierBundleLocation:v4 error:&v34];
          v7 = v34;

          if (!v6)
          {
            goto LABEL_19;
          }

          v8 = [MEMORY[0x1E696AAE8] bundleWithPath:v6];
          v9 = v8;
          if (!v8)
          {
            v16 = MFLogGeneral();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __softBankTransform_block_invoke_cold_1(&v32, v33, v16);
            }

LABEL_19:
            continue;
          }

          v10 = [v8 pathForResource:@"hexvalues" ofType:@"plist"];
          if (v10)
          {
            v31 = v7;
            v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v10 options:0 error:&v31];
            v12 = v31;

            v13 = MFLogGeneral();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v18 = [v11 length];
              *buf = 67109379;
              LODWORD(v40[0]) = v18;
              WORD2(v40[0]) = 2117;
              *(v40 + 6) = v4;
              _os_log_error_impl(&dword_1D36B2000, v13, OS_LOG_TYPE_ERROR, "MFStringTransform: Read hex values data (%{iec-bytes}u bytes) for %{sensitive}@", buf, 0x12u);
            }

            v14 = v11 == 0;
            if (v11)
            {
              v15 = MFLogGeneral();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 138739971;
                v40[0] = v4;
                _os_log_error_impl(&dword_1D36B2000, v15, OS_LOG_TYPE_ERROR, "MFStringTransform: Found hex values data for %{sensitive}@", buf, 0xCu);
              }

              v27 = v11;
            }

            else
            {
              v17 = MFLogGeneral();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v40[0] = v12;
                _os_log_error_impl(&dword_1D36B2000, v17, OS_LOG_TYPE_ERROR, "MFStringTransform: Unable to read hex values in bundle: %{public}@", buf, 0xCu);
              }
            }

            v7 = v12;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            goto LABEL_29;
          }
        }

        v2 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v2);
    }

    v27 = 0;
LABEL_29:

    obja = [(MFStringTransform *)v25 initWithSoftBankHexData:v27];
    if (obja)
    {
      v19 = MFLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_1D36B2000, v19, OS_LOG_TYPE_INFO, "SoftBank: Using SoftBank string transform.", v41, 2u);
      }

      v20 = obja;
      v21 = obja;
    }

    else
    {
      v22 = MFLogGeneral();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_1D36B2000, v22, OS_LOG_TYPE_INFO, "SoftBank: Not using SoftBank string transform.", v41, 2u);
      }

      v21 = +[MFStringTransform identityTransform];
      v20 = 0;
    }

    v23 = v20 == 0;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v21);
    if (v23)
    {
    }

    objc_storeStrong(&sSoftBankTransform, *(*(*(a1 + 32) + 8) + 40));
  }

  v24 = *MEMORY[0x1E69E9840];
}

id _ef_log_MFMimeBody()
{
  if (_ef_log_MFMimeBody_onceToken != -1)
  {
    _ef_log_MFMimeBody_cold_1();
  }

  v1 = _ef_log_MFMimeBody_log;

  return v1;
}

void __computeHasEncryptedDescendant_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 32) != v5)
  {
    [v5 decodeIfNecessary];
    v8 = 0;
    v7 = [v6 decryptedMessageBodyIsEncrypted:&v8 isSigned:0];
    if (v8 == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

id __keyboardsUpdated()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 synchronize];

  return [MFMimeCharset allMimeCharsets:1];
}

uint64_t _indexOfEncodingInCharsets(unsigned int a1, void *a2)
{
  v3 = a2;
  if ([v3 count] && (v4 = objc_msgSend(v3, "count")) != 0)
  {
    v5 = 0;
    v6 = a1;
    while (1)
    {
      v7 = [v3 objectAtIndex:v5];
      v8 = [v7 encoding];

      if (v8 == v6)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

id _convertKeyboardsArrayToLanguages(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v15 = [MEMORY[0x1E695DF70] array];
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v14;
  v1 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v1)
  {
    v18 = *v21;
    v2 = *MEMORY[0x1E695D9B0];
    v3 = *MEMORY[0x1E695D9E8];
    do
    {
      v19 = v1;
      for (i = 0; i != v19; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:*(*(&v20 + 1) + 8 * i)];
        v6 = [v5 objectForKey:v2];
        v7 = [v5 objectForKey:v3];
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = v8;
        if (v6)
        {
          [v8 setObject:v6 forKey:v2];
        }

        if (v7)
        {
          [v9 setObject:v7 forKey:v3];
        }

        v10 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v9];
        v11 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:v10];

        if (v11 && ([v17 containsObject:v11] & 1) == 0)
        {
          [v15 addObject:v11];
          [v17 addObject:v11];
        }
      }

      v1 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v1);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v15;
}

void ___copyEncodingsForLocaleIdentifier_block_invoke()
{
  v0 = objc_opt_new();
  Mutable = CFArrayCreateMutable(0, 0, 0);
  v2 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, 0x820);
    CFArrayAppendValue(v2, 0x420);
    [v0 setObject:v2 forKey:@"ja"];
    CFRelease(v2);
  }

  v3 = CFArrayCreateMutable(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    CFArrayAppendValue(v3, 0x930);
    CFArrayAppendValue(v4, 0x830);
    CFArrayAppendValue(v4, 0xA05);
    [v0 setObject:v4 forKey:@"zh-Hans"];
    CFRelease(v4);
  }

  v5 = CFArrayCreateMutable(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    CFArrayAppendValue(v5, 0xA03);
    CFArrayAppendValue(v6, 0xA06);
    CFArrayAppendValue(v6, 0x930);
    [v0 setObject:v6 forKey:@"zh-Hant"];
    CFRelease(v6);
  }

  v7 = CFArrayCreateMutable(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    CFArrayAppendValue(v7, 0x632);
    CFArrayAppendValue(v8, 0x421);
    [v0 setObject:v8 forKey:@"zh"];
    CFRelease(v8);
  }

  v9 = CFArrayCreateMutable(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    CFArrayAppendValue(v9, 0x940);
    [v0 setObject:v10 forKey:@"ko"];
    CFRelease(v10);
  }

  v11 = CFArrayCreateMutable(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    CFArrayAppendValue(v11, 0xA02);
    CFArrayAppendValue(v12, 0x205);
    CFArrayAppendValue(v12, 0x502);
    [v0 setObject:v12 forKey:@"ru"];
    CFRelease(v12);
  }

  v13 = [v0 copy];

  v14 = _copyEncodingsForLocaleIdentifier_regionEncodingMapping;
  _copyEncodingsForLocaleIdentifier_regionEncodingMapping = v13;
}

id _EnDecodeData(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  MFDataConsumerConsumeCompleteData(v6, v7);
  [v6 done];
  [v5 done];
  v8 = [v5 data];

  return v8;
}

id _decodeBase64Data(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = objc_alloc_init(MFBufferedDataConsumer);
  v7 = [(MFBaseFilterDataConsumer *)[MFBase64Decoder alloc] initWithConsumer:v6];
  [(MFBase64Decoder *)v7 setConvertCommas:a2];
  if (a3)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:objc_msgSend(v5 length:"bytes") + *a3 freeWhenDone:{a3[1], 0}];
    [(MFBase64Decoder *)v7 setIsBound:1];
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  MFDataConsumerConsumeCompleteData(v7, v9);
  [(MFBase64Decoder *)v7 done];
  [(MFBufferedDataConsumer *)v6 done];
  if (a3)
  {
    v10 = a3[1];
    a3[1] = v10 - [(MFBase64Decoder *)v7 unconverted];
  }

  v11 = [(MFBufferedDataConsumer *)v6 data];

  return v11;
}

id _encodeBase64Data(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = objc_alloc_init(MFBufferedDataConsumer);
  v9 = [(MFBaseFilterDataConsumer *)[MFBase64Encoder alloc] initWithConsumer:v8];
  v10 = v9;
  if (a2)
  {
    [(MFBase64Encoder *)v9 setStandardLineBreak];
  }

  [(MFBase64Encoder *)v10 setAllowSlash:a3];
  if (a4 != 61)
  {
    [(MFBase64Encoder *)v10 setPadChar:a4];
  }

  v11 = _EnDecodeData(v8, v10, v7);

  return v11;
}

void *_UniqueString(__CFString *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_24;
  }

  [sFore lock];
  v2 = NSHashGet(sStringsCache, a1);
  [sFore unlock];
  if (v2)
  {
    goto LABEL_25;
  }

  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(a1, SystemEncoding);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = MEMORY[0x1E69E9830];
    while (1)
    {
      v7 = *v5;
      if (!*v5)
      {
        break;
      }

      if ((v7 & 0x80000000) != 0)
      {
        v8 = __maskrune(v7, 0x8000uLL);
      }

      else
      {
        v8 = *(v6 + 4 * v7 + 60) & 0x8000;
      }

      ++v5;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v14 = a1;
  }

  else
  {
LABEL_10:
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v9;
    v30 = v9;
    v27 = v9;
    v28 = v9;
    v25 = v9;
    v26 = v9;
    *cStr = v9;
    v24 = v9;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    Length = CFStringGetLength(a1);
    v32.location = 0;
    v32.length = Length;
    if (Length == MFStringGetBytes(a1, v32, SystemEncoding, 0x3Fu, 0, cStr, 127, &v22))
    {
      v11 = v22;
      cStr[v22] = 0;
      v12 = v11 - 1;
      v22 = v11 - 1;
      if (v11)
      {
        do
        {
          cStr[v12] = __tolower(cStr[v12]);
          v13 = v22;
          v12 = --v22;
        }

        while (v13);
      }

      v14 = CFStringCreateWithCString(0, cStr, SystemEncoding);
    }

    else
    {
      v33.location = 0;
      v33.length = Length;
      MFStringGetBytes(a1, v33, SystemEncoding, 0x3Fu, 0, 0, 0, &v22);
      v15 = malloc_type_malloc(v22 + 1, 0xD186048FuLL);
      v34.location = 0;
      v34.length = Length;
      MFStringGetBytes(a1, v34, SystemEncoding, 0x3Fu, 0, v15, v22, 0);
      v15[v22] = 0;
      while (1)
      {
        v16 = v22;
        v17 = --v22;
        if (!v16)
        {
          break;
        }

        v15[v17] = __tolower(v15[v17]);
      }

      v14 = CFStringCreateWithCStringNoCopy(0, v15, SystemEncoding, 0);
    }
  }

  v18 = v14;
  if (!v14)
  {
LABEL_24:
    v2 = 0;
    goto LABEL_25;
  }

  [sFore lock];
  inserted = NSHashInsertIfAbsent(sStringsCache, v18);
  [sFore unlock];
  if (inserted)
  {
    v2 = inserted;
  }

  else
  {
    v2 = v18;
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _UniquingDescribe(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@:%p>", NSStringFromClass(v4), a2];
}

void *_MFSetValueInDictionary(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  result = *a2;
  if (a4)
  {
    if (!result)
    {
      result = [objc_msgSend(MEMORY[0x1E695DF90] allocWithZone:{objc_msgSend(a1, "zone")), "initWithCapacity:", 3}];
      *a2 = result;
    }

    return [result setObject:a4 forKey:a3];
  }

  else if (result)
  {

    return [result removeObjectForKey:?];
  }

  return result;
}

void setParent(uint64_t a1, void *a2)
{
  v4 = [MFWeakReferenceHolder weakReferenceWithObject:a2];
  os_unfair_lock_lock((a1 + 128));
  v6 = *(a1 + 64);
  *(a1 + 64) = v4;
  os_unfair_lock_unlock((a1 + 128));
  v5 = *(a1 + 96);
  if (v5 != [a2 partURL])
  {

    *(a1 + 96) = [a2 partURL];
  }
}

void sub_1D36D4200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _appendToDescriptionWithIndent(uint64_t a1, void *a2, unsigned int a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = [a1 bodyParameterKeys];
  if (a3)
  {
    v7 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(@"|   ", "length") * a3}];
    v8 = a3;
    do
    {
      [(__CFString *)v7 appendString:@"|   "];
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = &stru_1F4F33820;
  }

  [a2 appendFormat:@"\n%@<%@:%p>", v7, objc_opt_class(), a1];
  if (![(__CFString *)v7 length])
  {
    [a2 appendFormat:@" (mimeBody=<%@:%p>)", objc_opt_class(), objc_msgSend(a1, "mimeBody")];
  }

  [a2 appendString:@"\n"];
  if (*(a1 + 8) || *(a1 + 16) || [v6 count])
  {
    [a2 appendString:v7];
    [a2 appendString:@"Content-Type: "];
    if (*(a1 + 8))
    {
      [a2 appendString:?];
    }

    [a2 appendString:@"/"];
    if (*(a1 + 16))
    {
      [a2 appendString:?];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v47;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(v6);
          }

          [a2 appendFormat:@";\n%@    %@=%@", v7, *(*(&v46 + 1) + 8 * i), objc_msgSend(a1, "bodyParameterForKey:", *(*(&v46 + 1) + 8 * i))];
        }

        v10 = [v6 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v10);
    }

    [a2 appendString:@"\n"];
  }

  if (*(a1 + 32))
  {
    [a2 appendString:v7];
    [a2 appendString:@"Content-Transfer-Encoding: "];
    [a2 appendString:*(a1 + 32)];
    [a2 appendString:@"\n"];
  }

  v13 = [a1 disposition];
  v14 = [a1 dispositionParameterKeys];
  v15 = v14;
  if (v13)
  {
    [a2 appendString:v7];
    [a2 appendString:@"Content-Disposition: "];
  }

  else
  {
    if (![v14 count])
    {
      goto LABEL_37;
    }

    [a2 appendString:v7];
    v13 = @"Content-Disposition: ";
  }

  [a2 appendString:v13];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [a2 appendFormat:@";\n%@    %@=%@", v7, *(*(&v42 + 1) + 8 * j), objc_msgSend(a1, "dispositionParameterForKey:", *(*(&v42 + 1) + 8 * j))];
      }

      v17 = [v15 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v17);
  }

  [a2 appendString:@"\n"];
LABEL_37:
  v20 = [a1 contentDescription];
  if (v20)
  {
    v21 = v20;
    [a2 appendString:v7];
    [a2 appendString:@"Content-Description: "];
    [a2 appendString:v21];
    [a2 appendString:@"\n"];
  }

  v22 = [a1 contentID];
  if (v22)
  {
    v23 = v22;
    [a2 appendString:v7];
    [a2 appendString:@"Content-ID: "];
    [a2 appendString:v23];
    [a2 appendString:@"\n"];
  }

  v24 = [a1 contentLocation];
  if (v24)
  {
    v25 = v24;
    [a2 appendString:v7];
    [a2 appendString:@"Content-Location: "];
    [a2 appendString:v25];
    [a2 appendString:@"\n"];
  }

  v26 = [a1 languages];
  if (v26)
  {
    v27 = v26;
    [a2 appendString:v7];
    [a2 appendString:@"Content-Language: "];
    [a2 appendString:{objc_msgSend(v27, "componentsJoinedByString:", @" "}];
    [a2 appendString:@"\n"];
  }

  v28 = *(a1 + 56);
  if (*(a1 + 48) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v28)
    {
      [a2 appendFormat:@"%@X-Content-Length: %lu\n", v7, v28, v37];
    }
  }

  else
  {
    [a2 appendFormat:@"%@X-Content-Range: %lu/%lu\n", v7, *(a1 + 48), v28];
  }

  v29 = [a1 _objectInOtherIvarsForKey:@"x-signed-data"];
  if (v29)
  {
    [a2 appendFormat:@"%@X-Signed-Part: %lu bytes @ %p\n", v7, objc_msgSend(v29, "length"), objc_msgSend(v29, "bytes")];
  }

  v30 = [a1 partNumber];
  if (v30)
  {
    [a2 appendFormat:@"%@X-IMAP-Part-Number: %@\n", v7, v30];
  }

  if (([*(a1 + 8) isEqualToString:@"multipart"] & 1) != 0 || (result = objc_msgSend(*(a1 + 8), "isEqualToString:", @"message"), result) && (result = objc_msgSend(*(a1 + 16), "isEqualToString:", @"rfc822"), result))
  {
    v31 = [a1 subparts];
    [a2 appendFormat:@"%@X-Subpart-Count: %lu\n", v7, objc_msgSend(v31, "count")];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    result = [v31 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (result)
    {
      v33 = result;
      v34 = *v39;
      do
      {
        v35 = 0;
        do
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(v31);
          }

          _appendToDescriptionWithIndent(*(*(&v38 + 1) + 8 * v35++), a2, a3 + 1);
        }

        while (v33 != v35);
        result = [v31 countByEnumeratingWithState:&v38 objects:v50 count:16];
        v33 = result;
      }

      while (result);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *_getFilenameEncodingHint(void *a1)
{
  SomeCharsetFromPartTree = _getSomeCharsetFromPartTree(a1);
  if (SomeCharsetFromPartTree)
  {
    v3 = SomeCharsetFromPartTree;
  }

  else
  {
    v3 = @"windows-1252";
  }

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _getFilenameEncodingHint_cold_1(a1, v3, v4);
  }

  return v3;
}

void *_getSomeCharsetFromPartTree(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  for (i = a1; ; a1 = i)
  {
    i = [i parentPart];
    if (!i)
    {
      break;
    }
  }

  v4 = [v2 initWithObjects:{a1, 0}];
  while ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    if ([objc_msgSend(v5 "type")])
    {
      v6 = [v5 bodyParameterForKey:@"charset"];
      if ([v6 isEqualToString:@"us-ascii"])
      {
        v6 = 0;
      }
    }

    else
    {
      for (j = [v5 firstChildPart]; ; j = objc_msgSend(v6, "nextSiblingPart"))
      {
        v6 = j;
        if (!j)
        {
          break;
        }

        [v4 addObject:j];
      }
    }

    [v4 removeObjectAtIndex:0];
    if (v6)
    {
      goto LABEL_15;
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

uint64_t _getApproximateRawSize(uint64_t a1)
{
  if ((([*(a1 + 8) isEqualToString:@"multipart"] & 1) != 0 || objc_msgSend(*(a1 + 8), "isEqualToString:", @"message") && objc_msgSend(*(a1 + 16), "isEqualToString:", @"rfc822")) && (!objc_msgSend(*(a1 + 8), "isEqualToString:", @"message") || !objc_msgSend(*(a1 + 16), "isEqualToString:", @"rfc822")))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 56);
  }

  v3 = [a1 firstChildPart];
  if (v3)
  {
    v4 = v3;
    do
    {
      v2 = _getApproximateRawSize(v4) + v2;
      v4 = [v4 nextSiblingPart];
    }

    while (v4);
  }

  return v2;
}

CFMutableStringRef _copyNextMimeToken(UInt8 **a1, uint64_t a2, int a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = MEMORY[0x1E69E9830];
  while (v7 < v6)
  {
    v9 = *v7;
    if (v9 < 0)
    {
      if (!__maskrune(*v7, 0x4000uLL))
      {
LABEL_8:
        v7 = *a1;
        v6 = a1[1];
        break;
      }
    }

    else if ((*(v8 + 4 * v9 + 60) & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    *a1 = ++v7;
    v6 = a1[1];
  }

  if (v7 < v6)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a1;
      v13 = *a1 + 1;
      v14 = **a1;
      bytes = 0;
      *a1 = v13;
      if (v11 == 2)
      {
        if (v14 <= 33)
        {
          if (v14 != 10 && v14 != 13)
          {
            goto LABEL_54;
          }

          v15 = 0;
          v17 = 2;
          goto LABEL_34;
        }

        if (v14 != 34)
        {
          if (v14 != 92)
          {
            goto LABEL_54;
          }

LABEL_37:
          if (v13 >= a1[1])
          {
            LODWORD(v14) = 0;
          }

          else
          {
            LODWORD(v14) = *v13;
            bytes = *v13;
          }

          *a1 = v12 + 2;
          goto LABEL_55;
        }

        v17 = 0;
        v15 = 1;
      }

      else if (v11 == 1)
      {
        if (v14 == 41)
        {
          v15 = 0;
          v17 = 0;
        }

        else
        {
          if (v14 == 92)
          {
            v15 = 0;
            *a1 = v12 + 2;
            goto LABEL_33;
          }

          v15 = 0;
          v17 = 1;
        }
      }

      else
      {
        v15 = 1;
        if (v14 != 34)
        {
          if (v14 != 40)
          {
            if (v14 == 92)
            {
              goto LABEL_37;
            }

            if ((v14 & 0x80) != 0)
            {
              if (__maskrune(v14, 0x4000uLL))
              {
                goto LABEL_51;
              }

LABEL_54:
              bytes = v14;
LABEL_55:
              v19 = *a1;
              v20 = a1[1];
              if (*a1 >= v20)
              {
                v11 = 3;
              }

              if (v14)
              {
                Mutable = a1[3];
                if (Mutable || (v22 = v20 >= v19, v23 = (v20 - v19), v22) && (Mutable = CFDataCreateMutable(0, (v23 + 1)), (a1[3] = Mutable) != 0))
                {
                  CFDataAppendBytes(Mutable, &bytes, 1);
                }
              }

              goto LABEL_63;
            }

            if (((*(a2 + (v14 >> 3)) >> (v14 & 7)) & 1) == 0)
            {
              if ((*(v8 + 4 * v14 + 60) & 0x4000) == 0)
              {
                goto LABEL_54;
              }

LABEL_51:
              LODWORD(v14) = bytes;
              goto LABEL_55;
            }

            v18 = a1[1];
            if (v13 < v18)
            {
              while ((*v13 & 0x80000000) == 0 && ((*(a2 + (*v13 >> 3)) >> (*v13 & 7)) & 1) != 0)
              {
                v15 = 0;
                *a1 = ++v13;
                v17 = 3;
                if (v13 == v18)
                {
                  goto LABEL_34;
                }
              }
            }

            v15 = 0;
            v17 = 3;
            goto LABEL_34;
          }

LABEL_33:
          v17 = 1;
LABEL_34:
          v13 = *a1;
          goto LABEL_45;
        }

        v17 = 2;
      }

LABEL_45:
      if (v13 >= a1[1])
      {
        v11 = 3;
      }

      else
      {
        v11 = v17;
      }

      if (v15)
      {
LABEL_64:
        v24 = a1[3];
        if (!v24)
        {
          goto LABEL_73;
        }

        Length = CFDataGetLength(v24);
        if (Length < 1)
        {
          goto LABEL_73;
        }

        v26 = Length;
        if (a3)
        {
          v27 = *(a1 + 4);
          BytePtr = CFDataGetBytePtr(a1[3]);
          v29 = _MFCreateStringFromHeaderBytes(v27, BytePtr, v26);
        }

        else
        {
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:CFDataGetBytePtr(a1[3]) length:Length encoding:4];
        }

        v30 = v29;
        if (v10)
        {
          if (v29)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v10 = CFStringCreateMutable(0, 0);
          if (v30)
          {
LABEL_71:
            [(__CFString *)v10 appendString:v30];
          }
        }

        v33.location = 0;
        v33.length = v26;
        CFDataDeleteBytes(a1[3], v33);
        goto LABEL_73;
      }

LABEL_63:
      if (v11 == 3)
      {
        goto LABEL_64;
      }

LABEL_73:
      if (v11 == 3)
      {
        return v10;
      }
    }
  }

  return 0;
}

BOOL _scanMimeKeyValuePair(uint64_t a1, void *a2, void *a3)
{
  if (*a1 >= *(a1 + 8))
  {
    return 0;
  }

  MimeToken = _copyNextMimeToken(a1, &EQUALS_SEPARATOR_MASK, 1);
  if (!MimeToken)
  {
    return 0;
  }

  v7 = MimeToken;
  v8 = _copyNextMimeToken(a1, &SPACE_SEMICOLON_COMMA_SEPARATOR_MASK, 0);
  v9 = v8 != 0;
  if (v8)
  {
    if (a2)
    {
      *a2 = v7;
    }

    if (a3)
    {
      *a3 = v8;
    }
  }

  return v9;
}

void sub_1D36D7724(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, CFStringEncoding a10, uint64_t a11, __int128 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    a10 = -1431655766;
    v14 = _MFCopyDecodeText(v12, &a10);
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_1D36B2000, v15, OS_LOG_TYPE_INFO, "*** Exception %@ was raised while decoding mime message part. Displaying as text/plain.", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1D36D76B0);
  }

  _Unwind_Resume(a1);
}

void *_createAttachment(void *a1)
{
  v2 = [objc_msgSend(objc_msgSend(objc_opt_class() "attachmentClass")];
  [a1 configureFileWrapper:{objc_msgSend(v2, "fileWrapperForcingDownload:", 0)}];
  return v2;
}

BOOL _isCalendar(void *a1)
{
  v2 = [a1 type];
  v3 = [a1 subtype];
  v4 = [v2 isEqualToString:@"text"];
  result = 0;
  if (v4)
  {
    if (v3)
    {
      return [@"calendar" caseInsensitiveCompare:v3] == 0;
    }
  }

  return result;
}

__CFString *_MFDecodeText(void *a1, CFStringEncoding *a2)
{
  v2 = _MFCopyDecodeText(a1, a2);

  return v2;
}

void _getAttachmentsAndAddToCount(void *a1, _DWORD *a2, void *a3)
{
  v6 = [a1 type];
  v7 = [a1 subtype];
  if (![v6 isEqualToString:@"multipart"])
  {
    if ([v6 isEqualToString:@"message"] && objc_msgSend(v7, "isEqualToString:", @"rfc822"))
    {
      _getAttachmentsAndAddToCount([a1 firstChildPart], a2, a3);
    }

    goto LABEL_23;
  }

  if ([v7 isEqualToString:@"x-folder"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"appledouble"))
  {
LABEL_24:
    if (a2)
    {
      ++*a2;
    }

    if (a3)
    {
      Attachment = _createAttachment(a1);
      [a3 addObject:Attachment];
    }

    return;
  }

  if ([v7 isEqualToString:@"alternative"] && objc_msgSend(a1, "firstChildPart"))
  {
    v8 = [a1 firstChildPart];
    if (v8)
    {
      v9 = v8;
      do
      {
        _getAttachmentsAndAddToCount(v9, a2, a3);
        v9 = [v9 nextSiblingPart];
      }

      while (v9);
    }

    return;
  }

  v10 = [a1 firstChildPart];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  v12 = 0;
  do
  {
    while (![a1 hasValidMultipartSignedContentType] || objc_msgSend(@"application", "mf_caseInsensitiveCompareExcludingXDash:", objc_msgSend(v11, "type")) || objc_msgSend(@"pkcs7-signature", "mf_caseInsensitiveCompareExcludingXDash:", objc_msgSend(v11, "subtype")))
    {
      _getAttachmentsAndAddToCount(v11, a2, a3);
      v11 = [v11 nextSiblingPart];
      v12 = 1;
      if (!v11)
      {
        return;
      }
    }

    v11 = [v11 nextSiblingPart];
  }

  while (v11);
  if ((v12 & 1) == 0)
  {
LABEL_23:
    if (![a1 isAttachment])
    {
      return;
    }

    goto LABEL_24;
  }
}

BOOL MFMimePartParseContentTypeHeader(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v18[0] = (a3 + a4);
  v18[1] = (a3 + a4 + a5);
  v20 = -1431655766;
  v21 = 0;
  v19 = a2;
  MimeToken = _copyNextMimeToken(v18, &SLASH_SEPARATOR_MASK, 1);
  v7 = _copyNextMimeToken(v18, &SPACE_SEMICOLON_COMMA_SEPARATOR_MASK, 1);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  [a1 setType:MimeToken];
  [a1 setSubtype:v7];

  while (_scanMimeKeyValuePair(v18, &v17, &v16))
  {
    if ([objc_msgSend(a1 "type")] && (objc_msgSend(objc_msgSend(a1, "subtype"), "isEqualToString:", @"html") & 1) != 0)
    {
      goto LABEL_13;
    }

    v8 = [@"charset" isEqualToString:{objc_msgSend(v17, "lowercaseString")}];
    v9 = v16;
    if (!v8)
    {
      goto LABEL_14;
    }

    v10 = [(__CFString *)v16 lowercaseString];
    if ([v10 isEqualToString:@"iso-8859-8-i"])
    {
      v11 = v17;
      v12 = a1;
      v9 = @"ISO-8859-8";
    }

    else
    {
      if (![v10 isEqualToString:@"iso-8859-6-i"])
      {
        if (([v10 isEqualToString:@"iso-8859-8"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"iso-8859-6"))
        {
          [a1 _setObjectInOtherIvars:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"x-encoding-is-visual"}];
        }

LABEL_13:
        v9 = v16;
LABEL_14:
        v11 = v17;
        v12 = a1;
        goto LABEL_15;
      }

      v11 = v17;
      v12 = a1;
      v9 = @"ISO-8859-6";
    }

LABEL_15:
    [v12 setBodyParameter:v9 forKey:v11];
  }

  v13 = a1[3];
  if (v13)
  {
    [v13 mf_fixupRFC2231Values];
  }

  if (v21)
  {
  }

  if (MimeToken)
  {
    v14 = v7 == 0;
  }

  else
  {
    v14 = 1;
  }

  return !v14;
}

uint64_t MFMimePartSetValueForPreservedHeader(void *a1, uint64_t a2, __CFString *a3)
{
  v5 = _UniqueString(a3);

  return [a1 _setObjectInOtherIvars:a2 forKey:v5];
}

void MFMimePartParseContentDispositionHeader(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v10[0] = (a3 + a4);
    v10[1] = (a3 + a4 + a5);
    v12 = -1431655766;
    v13 = 0;
    v11 = a2;
    MimeToken = _copyNextMimeToken(v10, &SPACE_SEMICOLON_COMMA_SEPARATOR_MASK, 1);
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    [a1 setDisposition:MimeToken];

    while (_scanMimeKeyValuePair(v10, &v9, &v8))
    {
      [a1 setDispositionParameter:v8 forKey:v9];
    }

    v7 = [a1 _objectInOtherIvarsForKey:@"x-disposition-parameters"];
    if (v7)
    {
      [v7 mf_fixupRFC2231Values];
    }

    if (v13)
    {
    }
  }
}

void *_parseUuencodedParts(void *a1, int a2, void *a3, unint64_t a4, size_t a5)
{
  v7 = a3;
  v9 = [a3 bytes];
  v10 = v9;
  if (a5 >= 7 && strncasecmp(v9, "begin ", 6uLL) && !strnstr(v10, "\nbegin ", a5))
  {
    return 0;
  }

  if (_parseUuencodedParts_onceToken != -1)
  {
    _parseUuencodedParts_cold_1();
  }

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v10 length:a5 encoding:1 freeWhenDone:0];
  v12 = v11;
  if (!a5)
  {
    v13 = 0;
LABEL_31:

    return v13;
  }

  v31 = v7;
  v32 = v10;
  v13 = 0;
  v33 = v11;
  v34 = a4 + a5;
  encoding = -1;
  do
  {
    v14 = [_parseUuencodedParts_uuencodeRegex firstMatchInString:v12 options:16 range:{a4, a5}];
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v16 = [v14 range];
    v18 = v17;
    v19 = [v15 rangeAtIndex:1];
    v21 = v20;
    v22 = [v7 mf_rangeOfCString:"\nend\n" options:1 range:{v16 + v18, a5 + a4 - (v16 + v18)}];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v33;
      break;
    }

    v24 = v22;
    v25 = v23;
    if (!v13)
    {
      v13 = [MEMORY[0x1E695DF70] array];
      if (a2 != -1)
      {
        encoding = MEMORY[0x1D38BAA60]();
      }

      v26 = encoding;
      if (encoding == 256)
      {
        v26 = 134217984;
      }

      if (v26 == -1)
      {
        v26 = 1280;
      }

      encoding = v26;
    }

    if (v16 > a4)
    {
      v27 = [objc_msgSend(objc_opt_class() allocWithZone:{objc_msgSend(a1, "zone")), "init"}];
      [v27 setRange:{a4, v16 - a4}];
      [v13 addObject:v27];

      v7 = v31;
    }

    if (v21)
    {
      v21 = CFStringCreateWithBytes(0, &v32[v19], v21, encoding, 0);
    }

    if (![(__CFString *)v21 length])
    {

      v21 = @"mime-attachment";
    }

    v28 = [objc_msgSend(objc_opt_class() allocWithZone:{objc_msgSend(a1, "zone")), "init"}];
    [v28 setRange:{v16, v25 - v16 + v24}];
    [v28 setContentTransferEncoding:@"x-uuencode"];
    [v28 setType:@"application"];
    [v28 setSubtype:@"octet-stream"];
    [v28 setDisposition:@"attachment"];
    [v28 setDispositionParameter:v21 forKey:@"filename"];

    [v13 addObject:v28];
    a4 = v25 + v24;
    v12 = v33;
    a5 = v34 - (v25 + v24);
  }

  while (v34 != v25 + v24);

  if (v13 && v34 != a5 + a4)
  {
    v12 = [objc_msgSend(objc_opt_class() allocWithZone:{objc_msgSend(a1, "zone")), "init"}];
    [v12 setRange:{a5 + a4, v34 - (a5 + a4)}];
    [v13 addObject:v12];
    goto LABEL_31;
  }

  return v13;
}

void _parseHeaders(uint64_t a1, unsigned int a2, void *a3, void *a4, unsigned int a5)
{
  v121 = *MEMORY[0x1E69E9840];
  v7 = [a3 bytes];
  v8 = [a3 length];
  v115 = 0xAAAAAAAAAAAAAAAALL;
  v116 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *MEMORY[0x1E699B0D0];
  if (ECGetNextHeaderFromDataInRange())
  {
    MFMimePartParseContentTypeHeader(a1, a2, v7, v115, v116);
  }

  v10 = *MEMORY[0x1E699B0A8];
  if (ECGetNextHeaderFromDataInRange())
  {
    MFMimePartParseContentDispositionHeader(a1, a2, v7, v115, v116);
  }

  v11 = *MEMORY[0x1E699B0C8];
  if (ECGetNextHeaderFromDataInRange())
  {
    v12 = _MFCreateStringFromHeaderBytes(a2, (v7 + v115), v116);
    [a1 setContentTransferEncoding:v12];
  }

  v13 = *MEMORY[0x1E699B0B0];
  if (ECGetNextHeaderFromDataInRange())
  {
    v14 = _MFCreateStringFromHeaderBytes(a2, (v7 + v115), v116);
    if ([v14 hasPrefix:@"<"] && objc_msgSend(v14, "hasSuffix:", @">"))
    {
      v15 = [v14 substringWithRange:{1, objc_msgSend(v14, "length") - 2}];

      v14 = v15;
    }

    if ([v14 length])
    {
      [a1 setContentID:v14];
    }
  }

  v16 = *MEMORY[0x1E699B0C0];
  if (ECGetNextHeaderFromDataInRange())
  {
    v17 = _MFCreateStringFromHeaderBytes(a2, (v7 + v115), v116);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
    memset(result, 170, 16);
    v19 = [(__CFString *)v17 length];
    if (v17)
    {
      v20 = v19;
      v122.location = 0;
      v122.length = v19;
      if (CFStringFindCharacterFromSet(v17, Predefined, v122, 0, result))
      {
        v21 = [(__CFString *)v17 mutableCopyWithZone:0];
        v22.length = *&result[8];
        if (*&result[8] >= 1)
        {
          while (1)
          {
            v22.location = *result;
            CFStringReplace(v21, v22, &stru_1F4F33820);
            v23.location = *result;
            v20 -= *&result[8];
            if (v20 <= *result)
            {
              break;
            }

            *&result[8] = v20 - *result;
            v23.length = v20 - *result;
            CFStringFindCharacterFromSet(v21, Predefined, v23, 0, result);
            v22.length = *&result[8];
            if (*&result[8] <= 0)
            {
              goto LABEL_24;
            }
          }

          *&result[8] = 0;
        }

LABEL_24:
      }

      else
      {
        v21 = v17;
      }
    }

    else
    {
      v21 = 0;
    }

    [a1 setContentLocation:v21];
  }

  v24 = *MEMORY[0x1E699B0A0];
  if (ECGetNextHeaderFromDataInRange())
  {
    v25 = _MFCreateStringFromHeaderBytes(a2, (v7 + v115), v116);
    [a1 setContentDescription:v25];
  }

  if (([*(a1 + 8) isEqualToString:@"multipart"] & 1) == 0 && ECGetNextHeaderFromDataInRange())
  {
    v26 = 0;
    v27 = v8;
    while (1)
    {
      v28 = _MFCreateStringFromHeaderBytes(a2, (v7 + v115), v116);
      if (v26)
      {
        if ([v26 isEqualToString:v28])
        {

          goto LABEL_38;
        }

        v29 = MFLogGeneral();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *result = 138543874;
          *&result[4] = v26;
          *&result[12] = 2114;
          *&result[14] = v28;
          v119 = 2112;
          v120 = a1;
          _os_log_fault_impl(&dword_1D36B2000, v29, OS_LOG_TYPE_FAULT, "Found conflicting X-Apple-Content-Length headers (%{public}@ and %{public}@) for part %@", result, 0x20u);
        }
      }

      v26 = v28;
LABEL_38:
      v30 = v27 > v116 + v115;
      v27 -= v116 + v115;
      if (!v30 || !ECGetNextHeaderFromDataInRange())
      {
        if (v26)
        {
          if ([v26 isEqualToString:@"unknown"])
          {
            v31 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = [v26 intValue];
          }

          *(a1 + 56) = v31;
          v32 = MFLogGeneral();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = NSStringFromRange(*(a1 + 48));
            *result = 138543618;
            *&result[4] = v33;
            *&result[12] = 2112;
            *&result[14] = a1;
            _os_log_impl(&dword_1D36B2000, v32, OS_LOG_TYPE_INFO, "Updating range to %{public}@ for part %@", result, 0x16u);
          }

          if (*(a1 + 48) && a5)
          {
            *(a1 + 48) = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        break;
      }
    }
  }

  v34 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AF00] "currentThread")];
  if (v34)
  {
    v35 = v34;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v36 = [v34 countByEnumeratingWithState:&v111 objects:v117 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v112;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v112 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v111 + 1) + 8 * i);
          if (ECGetNextHeaderFromDataInRange())
          {
            v41 = _MFCreateStringFromHeaderBytes(a2, (v7 + v115), v116);
            [a1 _setObjectInOtherIvars:v41 forKey:_UniqueString(v40)];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v111 objects:v117 count:16];
      }

      while (v37);
    }
  }

  v42 = a1;
  if ([*(a1 + 8) isEqualToString:@"multipart"])
  {
    v43 = [a1 bodyParameterForKey:@"boundary"];
    v106 = [a4 bytes];
    if (!v43)
    {
      if (_parseSubparts_onceToken != -1)
      {
        _parseHeaders_cold_1();
      }

      v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v106 length:objc_msgSend(a4 encoding:"length") freeWhenDone:{1, 0}];
      v88 = [_parseSubparts_mimeBoundaryRegex firstMatchInString:v87 options:0 range:{*(a1 + 48), *(a1 + 56)}];

      if (!v88)
      {
        goto LABEL_155;
      }

      [v88 range];
      v90 = v89;
      v91 = [v88 rangeAtIndex:1];
      if (!v90 || v91 == 0x7FFFFFFFFFFFFFFFLL || !v92)
      {
        goto LABEL_155;
      }

      v43 = [MEMORY[0x1E696AEC0] mf_stringWithData:objc_msgSend(a4 encoding:{"mf_subdataWithRange:", v91, v92), 1}];
      v93 = MFLogGeneral();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v94 = [objc_msgSend(objc_msgSend(a1 "mimeBody")];
        *result = 138543618;
        *&result[4] = v43;
        *&result[12] = 2114;
        *&result[14] = v94;
        _os_log_impl(&dword_1D36B2000, v93, OS_LOG_TYPE_DEFAULT, "Mime parsing: Missing multipart boundary parameter; using %{public}@, message = %{public}@", result, 0x16u);
      }

      if (!v43)
      {
LABEL_155:
        v95 = MFLogGeneral();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = [objc_msgSend(objc_msgSend(a1 "mimeBody")];
          *result = 138543362;
          *&result[4] = v96;
          _os_log_impl(&dword_1D36B2000, v95, OS_LOG_TYPE_DEFAULT, "Mime parsing: No MIME boundary for message = %{public}@", result, 0xCu);
        }

        goto LABEL_157;
      }
    }

    v44 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v43, "length") + 2}];
    v108 = [a1 range];
    v46 = v45;
    [v44 mf_appendCString:"--"];
    v104 = v43;
    v107 = v44;
    [v44 appendData:{objc_msgSend(v43, "dataUsingEncoding:", 1)}];
    v48 = a4;
    if (!v46)
    {
LABEL_157:
      if (![v42 firstChildPart] && (objc_msgSend(objc_msgSend(v42, "subtype"), "isEqualToString:", @"x-folder") & 1) == 0 && *(v42 + 56) && *(v42 + 48) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v97 = [objc_msgSend(objc_opt_class() allocWithZone:{objc_msgSend(v42, "zone")), "init"}];
        [v97 setType:@"text"];
        [v97 setSubtype:@"plain"];
        [v97 setRange:{*(v42 + 48), *(v42 + 56)}];
        [v42 addSubpart:v97];
      }

      *(v42 + 48) = xmmword_1D36EFEE0;
      goto LABEL_163;
    }

    *&v47 = 134218496;
    v103 = v47;
    v49 = v108;
    v50 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v51 = [v48 mf_rangeOfData:v107 options:0 range:{v49, v46, v103}];
      if (v51 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v53 = 0;
        v54 = v46 + v49;
        v55 = MFLogGeneral();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v74 = *(a1 + 24);
          v75 = [objc_msgSend(objc_msgSend(a1 "mimeBody")];
          *result = 138543874;
          *&result[4] = v104;
          *&result[12] = 2114;
          *&result[14] = v74;
          v42 = a1;
          v119 = 2114;
          v120 = v75;
          _os_log_error_impl(&dword_1D36B2000, v55, OS_LOG_TYPE_ERROR, "Mime parsing: Couldn't find MIME boundary %{public}@ in message, parameters = %{public}@, message = %{public}@", result, 0x20u);
        }

        v48 = a4;
      }

      else
      {
        v54 = v51;
        v53 = v52;
      }

      v56 = v54 > v49 && *(v106 - 1 + v54) == 10;
      v57 = v46 + v49;
      v49 = v53 + v54;
      v46 = v57 - (v53 + v54);
      if (v57 == v53 + v54)
      {
        break;
      }

      if (v46 >= 2)
      {
        v58 = *(v106 + v49) != 11565;
        if (v46 == 2 || *(v106 + v49) != 11565)
        {
          if (*(v106 + v49) == 11565)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v60 = *(v106 + v49 + 2);
          v59 = 1;
          if (v60 == 10 || v60 == 13)
          {
            goto LABEL_84;
          }
        }
      }

      v59 = 0;
      v58 = *(v106 + v49) == 10;
LABEL_84:
      v61 = v54 == v108 || v56;
      if (v57 == v49)
      {
        v62 = 1;
      }

      else
      {
        v62 = v59;
      }

      if (v61 == 1 && ((v62 | v58) & 1) != 0)
      {
        v63 = v54 - v56;
        v64 = v53 + v56 + v58;
        if (v50 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_120;
        }

        v65 = [objc_msgSend(objc_opt_class() allocWithZone:{objc_msgSend(v42, "zone")), "init"}];
        if ([*(v42 + 16) isEqualToString:@"digest"])
        {
          v66 = [*(v42 + 8) isEqualToString:@"multipart"];
        }

        else
        {
          v66 = 0;
        }

        if ([*(v42 + 16) isEqualToString:@"signed"] && objc_msgSend(*(v42 + 8), "isEqualToString:", @"multipart"))
        {
          v67 = [v42 firstChildPart] == 0;
          if (!v66)
          {
LABEL_102:
            if (v67)
            {
              v68 = objc_alloc_init(MFMutableData);
              [(MFMutableData *)v68 appendBytes:v106 + v50 length:v63 - v50];
              [a1 _setObjectInOtherIvars:v68 forKey:@"x-signed-data"];

              v48 = a4;
            }

            if (v63 == v50)
            {
              v69 = 0;
              goto LABEL_106;
            }

            if (*(v106 + v50) == 10)
            {
              if (v66)
              {
                v69 = [v48 mf_subdataWithRange:{v50, 1}];
              }

              else
              {
                v69 = 0;
              }

              ++v50;
              v42 = a1;
            }

            else
            {
              if ([v48 mf_rangeOfCString:"begin" options:9 range:{v50, v63 - v50}] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v70 = 0;
              }

              else
              {
                v70 = _parseUuencodedParts(v65, a2, v48, v50, v63 - v50);
              }

              v42 = a1;
              if ([v70 count] == 1)
              {

                v65 = [v70 lastObject];
                v50 = [v65 range];
                v69 = 0;
              }

              else
              {
                v72 = [v48 mf_rangeOfCString:"\n\n" options:0 range:{v50, v63 - v50}];
                if (v72 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v69 = 0;
                  v50 = v63;
                }

                else
                {
                  v76 = v72 + v73;
                  v69 = [v48 mf_subdataWithRange:{v50, v72 + v73 - v50}];
                  v50 = v76;
LABEL_106:
                  v42 = a1;
                }
              }
            }

            v71 = MFLogGeneral();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              *result = v103;
              *&result[4] = v50;
              *&result[12] = 2048;
              *&result[14] = v63;
              v119 = 2048;
              v120 = v64;
              _os_log_debug_impl(&dword_1D36B2000, v71, OS_LOG_TYPE_DEBUG, "subRange.location={%lu} matchRange={%lu,%lu}", result, 0x20u);
            }

            [v65 setRange:{v50, v63 - v50}];
            [v42 addSubpart:v65];
            v48 = a4;
            if (v69 && [v69 length])
            {
              _parseHeaders(v65, a2, v69, a4, a5);
            }

LABEL_120:
            if (v59)
            {
              goto LABEL_157;
            }

            v49 = v64 + v63;
            v46 = v57 - v49;
            v50 = v49;
            goto LABEL_122;
          }
        }

        else
        {
          v67 = 0;
          if (!v66)
          {
            goto LABEL_102;
          }
        }

        [v65 setType:@"message"];
        [v65 setSubtype:@"rfc822"];
        goto LABEL_102;
      }

LABEL_122:
      if (!v46)
      {
        goto LABEL_157;
      }
    }

    v58 = 0;
LABEL_75:
    v59 = 1;
    goto LABEL_84;
  }

  if ((([*(a1 + 8) isEqualToString:@"multipart"] & 1) != 0 || objc_msgSend(*(a1 + 8), "isEqualToString:", @"message") && objc_msgSend(*(a1 + 16), "isEqualToString:", @"rfc822")) && *(a1 + 48) != 0x7FFFFFFFFFFFFFFFLL && (v77 = *(a1 + 56), v30 = v77 > objc_msgSend(a4, "length") - *(a1 + 48), v42 = a1, !v30))
  {
    v78 = [a4 bytes];
    v79 = [objc_msgSend(objc_opt_class() allocWithZone:{objc_msgSend(a1, "zone")), "init"}];
    v80 = *(a1 + 48);
    if (*(a1 + 56) && *(v78 + v80) == 10)
    {
      v81 = 1;
    }

    else
    {
      v99 = [a4 mf_rangeOfCString:"\n\n" options:0 range:*(a1 + 48)];
      v80 = *(a1 + 48);
      if (v100)
      {
        v81 = v99 + v100 - v80;
      }

      else
      {
        v81 = *(a1 + 56);
      }
    }

    v101 = objc_alloc_init(MFMutableData);
    [(MFMutableData *)v101 appendBytes:v78 + v80 length:v81];
    v102 = *(a1 + 48) - (v80 + v81) + *(a1 + 56);
    [v79 setRange:?];
    [a1 addSubpart:v79];
    _parseHeaders(v79, a2, v101, a4, a5);
  }

  else if (![v42 parentPart])
  {
    v82 = [a4 bytes];
    if (v82)
    {
      v83 = *(a1 + 48);
      if (v83 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v84 = v82;
        if ([a4 length] >= (v83 + 2) && *(v84 + v83) == 45 && *(v84 + v83 + 1) == 45)
        {
          v85 = MFLogGeneral();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            v86 = [objc_msgSend(objc_msgSend(a1 "mimeBody")];
            *result = 138543618;
            *&result[4] = a1;
            *&result[12] = 2114;
            *&result[14] = v86;
            _os_log_impl(&dword_1D36B2000, v85, OS_LOG_TYPE_DEFAULT, "Mime parsing: Message wasn't marked as multipart but started with '--', self = %{public}@, message = %{public}@", result, 0x16u);
          }
        }
      }
    }
  }

LABEL_163:
  v98 = *MEMORY[0x1E69E9840];
}

uint64_t _setupDictionaryFromArray(void *a1, void **a2, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 2)
  {
    v7 = result;
    for (i = 1; i < v7; i += 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i - 1);
      result = CFArrayGetValueAtIndex(theArray, i);
      if (ValueAtIndex)
      {
        v10 = result;
        if (result)
        {
          TypeID = CFStringGetTypeID();
          result = CFGetTypeID(ValueAtIndex);
          if (TypeID == result)
          {
            v12 = CFStringGetTypeID();
            result = CFGetTypeID(v10);
            if (v12 == result)
            {
              v13 = _UniqueString(ValueAtIndex);
              result = _MFSetValueInDictionary(a1, a2, v13, v10);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _MFOffsetFromThreadDictionary(void *a1)
{
  v1 = [a1 objectForKey:@"__MIME_PART_DECODE_OFFSET"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v1 unsignedIntegerValue];
}

__CFString *_MFCopyDecodeText(void *a1, CFStringEncoding *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(MEMORY[0x1E696AF00] "currentThread")];
  v13 = 0;
  v12 = 0;
  v5 = [a1 copyBodyDataToOffset:_MFOffsetFromThreadDictionary(v4) resultOffset:&v13 downloadIfNecessary:objc_msgSend(objc_msgSend(v4 isComplete:{"objectForKey:", @"__MIME_PART_DECODE_DOWNLOAD", "BOOLValue"), &v12}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v13), @"__MIME_PART_DECODE_RESULT_OFFSET"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v12), @"__MIME_PART_RESULT_IS_COMPLETE"}];
  if (a2)
  {
    *a2 = -1;
  }

  if (v5 && (([(__CFString *)v5 mf_rangeOfCString:"\r\n"], !v6) || (v7 = [(__CFString *)v5 mutableCopy], v5, [(__CFString *)v7 mf_convertNetworkLineEndingsToUnix], (v5 = v7) != 0)))
  {
    v8 = MFCreateStringWithData(v5, [a1 textEncoding], a2);
  }

  else
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = a1;
      _os_log_impl(&dword_1D36B2000, v9, OS_LOG_TYPE_INFO, "---self=%p nil data!", buf, 0xCu);
    }

    v5 = 0;
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ___parseUuencodedParts_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^begin +[0-9]+ +(.+)$" options:17 error:0];
  _parseUuencodedParts_uuencodeRegex = result;
  return result;
}

uint64_t ___parseSubparts_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^\\-\\-(.+)[ \t]*$" options:16 error:0];
  _parseSubparts_mimeBoundaryRegex = result;
  return result;
}

BOOL MFGetTypeInfo(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = v3;
    v6 = v5;
    if ((a2 & 2) != 0)
    {
      v9 = 0;
    }

    else
    {
      v7 = [v5 filename];
      v8 = [v7 pathExtension];
      v9 = [v8 lowercaseString];
    }

    v11 = 0;
    while (1)
    {
      if ((a2 & 1) == 0)
      {
        v12 = _getTypeInfoFromFallbackFields_FallBackTypeInfos[v11];
        if (v12)
        {
          v13 = [v6 mimeType];
          v14 = [(__CFString *)v12 caseInsensitiveCompare:v13];

          if (!v14)
          {
            goto LABEL_18;
          }
        }
      }

      if ((a2 & 2) == 0)
      {
        v15 = _getTypeInfoFromFallbackFields_FallBackTypeInfos[v11 + 1];
        if (v15)
        {
          v16 = [v6 pathExtension];
          v17 = [(__CFString *)v15 caseInsensitiveCompare:v16];

          if (!v17)
          {
            break;
          }

          v18 = [v6 filename];

          if (v18)
          {
            if ([v9 isEqualToString:v15])
            {
              break;
            }
          }
        }
      }

LABEL_21:
      if (a2)
      {
        v19 = v11 >= 188;
        v11 += 4;
        if (!v19)
        {
          continue;
        }
      }

      v10 = a2 == 0;
      goto LABEL_25;
    }

    if ((a2 & 1) != 0 && _getTypeInfoFromFallbackFields_FallBackTypeInfos[v11])
    {
      [v6 setMimeType:?];
      a2 &= 0xFFFFFFFC;
    }

LABEL_18:
    if (_getTypeInfoFromFallbackFields_FallBackTypeInfos[v11 + 1] && (a2 & 2) != 0)
    {
      [v6 setPathExtension:?];
      a2 &= ~2u;
    }

    goto LABEL_21;
  }

  v10 = 1;
LABEL_25:

  return v10;
}

uint64_t _rangeOfBytes(void *a1, char *a2, size_t a3, char a4, uint64_t a5, size_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a1;
  if (a5 + a6 > [v11 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%s: Out of bounds", "NSRange _rangeOfBytes(NSData *__strong, const char *, NSUInteger, NSUInteger, NSRange)"}];
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (![v11 bytes] || a6 < a3)
  {
    goto LABEL_29;
  }

  if ((a6 & 0x80000000) != 0)
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = a6;
      _os_log_impl(&dword_1D36B2000, v18, OS_LOG_TYPE_DEFAULT, "#Warning _rangeOfBytes: searchRange.length is invalid (%lu)", buf, 0xCu);
    }

    goto LABEL_29;
  }

  v13 = v11;
  if ((a4 & 4) != 0)
  {
    v14 = ([v11 bytes] + a5 + a6 - 1);
    if ((a4 & 8) != 0)
    {
      v16 = &v14[-a3];
    }

    else
    {
      v16 = ([v11 bytes] + a5);
    }

    v17 = -1;
  }

  else
  {
    v14 = ([v11 bytes] + a5);
    if ((a4 & 8) != 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = a6;
    }

    v16 = &v14[v15];
    if ((a4 & 1) == 0 && v15 >= a3)
    {
      v23 = *a2;
      v17 = 1;
      while (1)
      {
        v24 = memchr(v14, v23, v15);
        v25 = v24;
        if (!v24 || v16 - v24 < a3)
        {
          goto LABEL_27;
        }

        if (!memcmp(v24, a2, a3))
        {
          v12 = &v25[-[v11 bytes]];
          goto LABEL_29;
        }

        v14 = v25 + 1;
        v15 = v16 - v14;
        if (v16 - v14 < a3)
        {
          goto LABEL_20;
        }
      }
    }

    v17 = 1;
  }

LABEL_20:
  if (a4)
  {
    v19 = memcasecmp;
  }

  else
  {
    v19 = MEMORY[0x1E69E98C8];
  }

  if (v16 - v14 < a3)
  {
LABEL_27:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_29;
  }

  v20 = v14;
  while (v19(v14, a2, a3))
  {
    v14 += v17;
    v20 += v17;
    if (v16 - v14 < a3)
    {
      goto LABEL_27;
    }
  }

  v12 = &v20[-[v11 bytes]];
LABEL_29:

  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t memcasecmp(char *a1, char *a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E9830];
  while (a3)
  {
    v8 = *a1++;
    v7 = v8;
    v10 = *a2++;
    v9 = v10;
    if ((v7 & 0x80000000) == 0)
    {
      if ((*(v6 + 4 * v7 + 60) & 0x8000) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      LOBYTE(v7) = __tolower(v7);
      goto LABEL_6;
    }

    if (__maskrune(v7, 0x8000uLL))
    {
      goto LABEL_5;
    }

LABEL_6:
    if ((v9 & 0x80000000) != 0)
    {
      if (!__maskrune(v9, 0x8000uLL))
      {
        goto LABEL_9;
      }

LABEL_8:
      LOBYTE(v9) = __tolower(v9);
      goto LABEL_9;
    }

    if ((*(v6 + 4 * v9 + 60) & 0x8000) != 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    --a3;
    if (v7 != v9)
    {
      return (v7 - v9);
    }
  }

  return 0;
}

id MFRemoveItemAtURL(void *a1)
{
  v1 = [a1 path];
  v2 = MFRemoveItemAtPath(v1);

  return v2;
}

id MFRemoveItemAtPath(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = removefile([v1 fileSystemRepresentation], 0, 1u)) != 0)
  {
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A368];
    v10[0] = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:*MEMORY[0x1E696A798] code:v3 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t _mfLockEncounteredError()
{
  result = sMFLockEncounteredError;
  sMFLockEncounteredError = 0;
  return result;
}

uint64_t __mfEnableCallStackLogging()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 registerDefaults:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", *MEMORY[0x1E695E4D0], @"MFLockCallStackLoggingEnabled"}];
  v1 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v1 postNotificationName:@"MFLockCallStackLoggingEnabled" object:0];
}

uint64_t _MFTryObjectLock(uint64_t a1)
{
  v2 = pthread_self();
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 < 0)
  {
    if (v2 == *(a1 + 16))
    {
      v13 = (v4 + 1) | 0x8000;
    }

    else
    {
      v10 = [MEMORY[0x1E699B850] currentDesignator];
      if (v10)
      {
        v11 = [v10 priority];
      }

      else
      {
        v11 = -1;
      }

      Mutable = *(a1 + 80);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, 0);
        *(a1 + 80) = Mutable;
      }

      v23.length = CFArrayGetCount(Mutable);
      v23.location = 0;
      v15 = CFArrayBSearchValues(Mutable, v23, v11, _comparePriorities, 0);
      CFArrayInsertValueAtIndex(*(a1 + 80), v15, v11);
      while (*(a1 + 16) || CFArrayGetValueAtIndex(*(a1 + 80), 0) != v11)
      {
        v22.tv_sec = 0;
        v22.tv_nsec = 0;
        if (pthread_cond_timedwait((a1 + 24), &sMutex, &v22) == 60)
        {
          v16 = 0;
          goto LABEL_25;
        }
      }

      v16 = 1;
LABEL_25:
      v17 = *(a1 + 80);
      v24.length = CFArrayGetCount(v17);
      v24.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v17, v24, v11);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 80), FirstIndexOfValue);
      }

      if (!v16)
      {
        v12 = 0;
        goto LABEL_35;
      }

      v19 = *(a1 + 8);
      if (_mfCallStackLoggingEnabled())
      {
        v20 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        if (!objc_getAssociatedObject(v19, @"MFLock Call Stack Symbols"))
        {
          objc_setAssociatedObject(v19, @"MFLock Call Stack Symbols", [MEMORY[0x1E696AF00] callStackSymbols], 0x301);
        }

        [v20 drain];
      }

      *(a1 + 16) = v3;
      v13 = *(a1 + 72) & 0x8000 | 1;
    }

    *(a1 + 72) = v13;
    goto LABEL_34;
  }

  v5 = *(a1 + 80);
  *(a1 + 80) = v5 + 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v2 == v6;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *(a1 + 8);
    if (_mfCallStackLoggingEnabled())
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      if (!objc_getAssociatedObject(v8, @"MFLock Call Stack Symbols"))
      {
        objc_setAssociatedObject(v8, @"MFLock Call Stack Symbols", [MEMORY[0x1E696AF00] callStackSymbols], 0x301);
      }

      [v9 drain];
    }

    *(a1 + 72) = *(a1 + 72) & 0x8000 | (*(a1 + 72) + 1) & 0x7FFF;
    *(a1 + 16) = v3;
LABEL_34:
    v12 = 1;
    goto LABEL_35;
  }

  v12 = 0;
  *(a1 + 80) = v5;
LABEL_35:
  pthread_mutex_unlock(&sMutex);
  return v12;
}

uint64_t _mfIsLockedOnThisThread(uint64_t a1)
{
  pthread_mutex_lock(&__threadLockRelationsLock);
  v2 = __threadLockRelations;
  v3 = pthread_self();
  v4 = [CFDictionaryGetValue(v2 v3)];
  pthread_mutex_unlock(&__threadLockRelationsLock);
  return v4;
}

uint64_t ___mfCallStackLoggingEnabled_block_invoke_2()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"MFLockCallStackLoggingEnabled", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  _mfCallStackLoggingEnabled___loggingDefaultEnabled = v2;
  return result;
}

uint64_t ___mfCallStackLoggingEnabled_block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 registerDefaults:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", *MEMORY[0x1E695E4D0], @"MFLockCallStackLoggingEnabled"}];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t _comparePriorities(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (a1 >= a2)
  {
    v2 = -1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_1_0(void *a1, const char *a2, uint64_t a3)
{

  return [a1 _mf_dumpLockCallStacks:a2 ordering:a3];
}

void sub_1D36E35A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TemporaryFile::~TemporaryFile(va);
  _Unwind_Resume(a1);
}

uint64_t DecodeBuffer::parse(DecodeBuffer *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (DecodeBuffer::parseHeader(a1))
  {
    std::__function::__value_func<void ()(unsigned char)>::__value_func[abi:nn200100](v10, a2);
    std::__function::__value_func<void ()(LineOfOutput const&)>::__value_func[abi:nn200100](v9, a3);
    v6 = DecodeBuffer::parseLines(a1, v10, v9);
    std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](v9);
    std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](v10);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1D36E3694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

FILE *TemporaryFile::mappedData(TemporaryFile *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    fflush(v2);
    v2 = mmap(0, *(this + 3), 1, 1, *this, 0);
    if (v2)
    {
      v3 = v2;
      v4 = objc_alloc(MEMORY[0x1E695DEF0]);
      v2 = [v4 initWithBytesNoCopy:v3 length:*(this + 3) deallocator:*MEMORY[0x1E696A268]];
    }
  }

  return v2;
}

void OutputBuffer::OutputBuffer(OutputBuffer *this, uint64_t a2)
{
  *this = 0;
  v3 = [MEMORY[0x1E695DF88] dataWithLength:a2];
  *(this + 1) = v3;
  v4 = [v3 mutableBytes];
  *(this + 2) = v4;
  *(this + 3) = v4 + [*(this + 1) length];
}

void DecodeBuffer::DecodeBuffer(DecodeBuffer *this, NSData *a2)
{
  v3 = a2;
  *this = [(NSData *)v3 bytes];
  v4 = [(NSData *)v3 bytes];
  *(this + 1) = v4 + [(NSData *)v3 length];
  *(this + 2) = [(NSData *)v3 bytes];
}

uint64_t DecodeBuffer::parseHeader(DecodeBuffer *this)
{
  if (!*this)
  {
    return 0;
  }

  v2 = *(this + 2);
  v3 = *(this + 1) - v2;
  if (v3 < 6)
  {
    return 0;
  }

  v4 = 0;
  if (v3 >= 0x78)
  {
    v3 = 120;
  }

  v5 = (v2 + v3);
  while (1)
  {
    v6 = *(v2 + v4);
    if (v6 == 10 || v6 == 13)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  v9 = v3 - v4;
  if (v3 == v4 || v4 < 6 || strncmp(*(this + 2), "begin ", 6uLL))
  {
    return 0;
  }

  v10 = (v2 + v4);
  v11 = (v2 + v4 + v9);
  while (1)
  {
    v12 = *v10;
    if (v12 != 13 && v12 != 10)
    {
      break;
    }

    ++v10;
    if (!--v9)
    {
      v10 = v11;
      break;
    }
  }

  if (v10 == v5)
  {
    return 0;
  }

  *(this + 2) = v10;
  return 1;
}

uint64_t DecodeBuffer::parseLines(DecodeBuffer *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  do
  {
    std::__function::__value_func<void ()(unsigned char)>::__value_func[abi:nn200100](v11, a2);
    std::__function::__value_func<void ()(LineOfOutput const&)>::__value_func[abi:nn200100](v10, a3);
    v6 = DecodeBuffer::parseSingleLine(a1, v11, v10);
    std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](v10);
    std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](v11);
    if (v6 == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v7 = 1;
    }
  }

  while (!v7);
  if (v7 == 1)
  {
    result = 0;
  }

  else
  {
    result = DecodeBuffer::parseFinalLine(a1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D36E3A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t DecodeBuffer::parseSingleLine(DecodeBuffer *this, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v3 == v4)
  {
    goto LABEL_3;
  }

  v5 = *v4;
  if ((v5 - 97) < 0xFFFFFFBF)
  {
    goto LABEL_3;
  }

  v9 = v4 + 1;
  *(this + 2) = v9;
  v10 = v5 & 0x3F;
  v11 = v10 ^ 0x20;
  if ((v10 ^ 0x20) == 0x2D)
  {
    if ((v3 - v9) >= 0x42)
    {
      std::__function::__value_func<void ()(LineOfOutput const&)>::__value_func[abi:nn200100](v15, a3);
      v12 = DecodeBuffer::parseLineFast(this, v15);
      std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](v15);
      if (v12)
      {
        goto LABEL_14;
      }

      goto LABEL_3;
    }

LABEL_13:
    std::__function::__value_func<void ()(unsigned char)>::__value_func[abi:nn200100](v14, a2);
    v13 = DecodeBuffer::parseLineSlow(this, v11, v14);
    std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](v14);
    if (v13)
    {
LABEL_14:
      result = 1;
      goto LABEL_4;
    }

LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  if (v11)
  {
    goto LABEL_13;
  }

  if (DecodeBuffer::parseNewline(this))
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D36E3B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t DecodeBuffer::parseFinalLine(DecodeBuffer *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if ((v1 - v2) < 3 || *v2 != 101 || v2[1] != 110 || v2[2] != 100)
  {
    return 0;
  }

  v3 = v2 + 3;
  *(this + 2) = v3;
  if (v1 == v3)
  {
    return 1;
  }

  result = DecodeBuffer::parseNewline(this);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t DecodeBuffer::parseNewline(DecodeBuffer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = *v1;
  if (v3 != 13 && v3 != 10)
  {
    return 0;
  }

  *(this + 2) = v1 + 1;
  if (v2 != v1 + 1)
  {
    v5 = v1[1];
    if (v5 == 13 || v5 == 10)
    {
      *(this + 2) = v1 + 2;
    }
  }

  return 1;
}

uint64_t DecodeBuffer::parseLineSlow(DecodeBuffer *a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = *(a1 + 2);
    while (1)
    {
      v8 = *(a1 + 1) - v7;
      if (!v8)
      {
        return 0;
      }

      if (a2 - v6 >= 3)
      {
        break;
      }

      if (v8 < 2)
      {
        return 0;
      }

      v12 = *v7;
      if ((*v7 - 97) < 0xBFu)
      {
        return 0;
      }

      v13 = v7[1];
      if (v13 - 32 > 0x40)
      {
        return 0;
      }

      std::function<void ()(unsigned char)>::operator()(a3, ((4 * v12) | (v13 >> 4) & 3) ^ 0x82);
      v14 = *(a1 + 2);
      v7 = (v14 + 2);
      *(a1 + 2) = v14 + 2;
      v15 = v6 + 1;
      if (v6 + 1 < a2)
      {
        if (*(a1 + 1) == v7)
        {
          return 0;
        }

        v16 = *v7;
        if ((v16 - 97) < 0xBFu)
        {
          return 0;
        }

        v9 = ((v16 >> 2) & 0xF | (16 * *(v14 + 1))) ^ 8;
        v10 = 1;
        v11 = 2;
        goto LABEL_18;
      }

LABEL_19:
      v6 = v15;
      if (v15 >= a2)
      {
        goto LABEL_23;
      }
    }

    if (v8 < 4 || (*v7 - 97) < 0xBFu || (v7[1] - 97) < 0xBFu || v7[2] - 97 < 0xFFFFFFBF || v7[3] - 32 > 0x40)
    {
      return 0;
    }

    std::function<void ()(unsigned char)>::operator()(a3, ((4 * *v7) | (v7[1] >> 4) & 3) ^ 0x82);
    std::function<void ()(unsigned char)>::operator()(a3, ((16 * *(*(a1 + 2) + 1)) | (*(*(a1 + 2) + 2) >> 2) & 0xF) ^ 8);
    LOBYTE(v9) = (*(*(a1 + 2) + 3) & 0x3F | (*(*(a1 + 2) + 2) << 6)) ^ 0x20;
    v10 = 4;
    v11 = 3;
LABEL_18:
    std::function<void ()(unsigned char)>::operator()(a3, v9);
    v7 = (*(a1 + 2) + v10);
    *(a1 + 2) = v7;
    v15 = v6 + v11;
    goto LABEL_19;
  }

  v7 = *(a1 + 2);
LABEL_23:
  v18 = *(a1 + 1);
  if (v18 != v7 && *v7 == 96)
  {
    *(a1 + 2) = ++v7;
  }

  if (v18 != v7 && *v7 == 96)
  {
    *(a1 + 2) = v7 + 1;
  }

  return DecodeBuffer::parseNewline(a1);
}

uint64_t std::function<void ()(unsigned char)>::operator()(uint64_t a1, char a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(unsigned char)>::__value_func[abi:nn200100](v4, v5);
}

uint64_t std::__function::__value_func<void ()(unsigned char)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(LineOfOutput const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void TemporaryFile::TemporaryFile(TemporaryFile *this)
{
  v15 = *MEMORY[0x1E69E9840];
  *this = -1;
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 temporaryDirectory];
  v5 = [v4 URLByAppendingPathComponent:@"uudecode.XXXXXXXXXXXXXXXX"];

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v14 + 12) = v6;
  v13[16] = v6;
  v14[0] = v6;
  v13[14] = v6;
  v13[15] = v6;
  v13[12] = v6;
  v13[13] = v6;
  v13[10] = v6;
  v13[11] = v6;
  v13[8] = v6;
  v13[9] = v6;
  v13[6] = v6;
  v13[7] = v6;
  v13[4] = v6;
  v13[5] = v6;
  v13[2] = v6;
  v13[3] = v6;
  v13[0] = v6;
  v13[1] = v6;
  if ([v5 getFileSystemRepresentation:v13 maxLength:299])
  {
    v7 = mkstemp(v13);
    *this = v7;
    if (v7 >= 1)
    {
      v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v13 isDirectory:0 relativeToURL:0];
      v9 = *(this + 1);
      *(this + 1) = v8;

      v10 = *this;
      if (*(this + 1))
      {
        *(this + 2) = fdopen(v10, "w");
      }

      else
      {
        close(v10);
        *this = -1;
      }

      v11 = [MEMORY[0x1E696AC08] defaultManager];
      [v11 removeItemAtURL:*v2 error:0];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void TemporaryFile::~TemporaryFile(TemporaryFile *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    fclose(v2);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t OutputBuffer::write(uint64_t this, char a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (*(this + 24) <= v4)
  {
    [*(this + 8) setLength:{objc_msgSend(*(this + 8), "length") + 1000}];
    v5 = [*(v3 + 8) mutableBytes];
    v6 = *(v3 + 8);
    v7 = v5 + *v3;
    *(v3 + 16) = v7;
    this = [v6 length];
    *(v3 + 24) = v7 + this;
    v4 = *(v3 + 16);
  }

  *v4 = a2;
  ++*(v3 + 16);
  ++*v3;
  return this;
}

BOOL std::type_info::operator==[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

__n128 OutputBuffer::write(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (*(a1 + 24) < (v4 + 45))
  {
    [*(a1 + 8) setLength:{objc_msgSend(*(a1 + 8), "length") + 1000}];
    v5 = [*(a1 + 8) mutableBytes];
    v6 = *(a1 + 8);
    v7 = v5 + *a1;
    *(a1 + 16) = v7;
    *(a1 + 24) = v7 + [v6 length];
    v4 = *(a1 + 16);
  }

  result = *a2;
  v9 = *(a2 + 16);
  *(v4 + 29) = *(a2 + 29);
  *v4 = result;
  *(v4 + 16) = v9;
  *(a1 + 16) += 45;
  *a1 += 45;
  return result;
}

void _MFCreateStringWithBytesViaICU_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1D36B2000, a2, OS_LOG_TYPE_ERROR, "_MFCreateStringWithBytesViaICU: cannot process input buffer of length %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void MFGetRandomBytes_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1D36B2000, a2, a3, "*** Unexpected EOF on /dev/urandom: %s", a2);
}

void MFGetRandomBytes_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1D36B2000, a2, a3, "*** Failed to read bytes from /dev/urandom: %s", a2);
}

void MFGetRandomBytes_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1D36B2000, a2, a3, "*** Unable to open /dev/urandom: %s", a2);
}

void __createTransliterator_block_invoke_2_cold_1(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void __createTransliterator_block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __softBankTransform_block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "MFStringTransform: Unable to read bundle.", buf, 2u);
}

void activeContexts_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1D36B2000, a2, OS_LOG_TYPE_ERROR, "MFStringTransform: Failed to get active CTXPCContexts: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __activeContexts_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1D36B2000, a2, OS_LOG_TYPE_ERROR, "MFStringTransform: Failed to create request context for CTXPCContextInfo %p.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _UniquingHash_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSUInteger _UniquingHash(NSHashTable * description:{const void *)"), @"MimePart.m", 284, @"Invalid string table entry %p(%@)", a1, a1}];
  __break(1u);
}

void _getFilenameEncodingHint_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1D36B2000, log, OS_LOG_TYPE_DEBUG, "*** part=%p result=%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void _mfUnregisterLockOnThisThread_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MFLogGeneral();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    pthread_self();
    OUTLINED_FUNCTION_0_1(&dword_1D36B2000, v1, v2, "#Warning No thread set for %@ on thread %p", v3, v4, v5, v6, 2u);
  }

  CFShow(__threadLockRelations);
  __assert_rtn("_mfUnregisterLockOnThisThread", "NSLockAdditions.m", 221, "threadSet");
}

void _mfUnregisterLockOnThisThread_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MFLogGeneral();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    pthread_self();
    OUTLINED_FUNCTION_0_1(&dword_1D36B2000, v1, v2, "#Warning Unlocked lock %@ on thread %p that did not own it", v3, v4, v5, v6, 2u);
  }

  CFShow(__threadLockRelations);
  __assert_rtn("_mfUnregisterLockOnThisThread", "NSLockAdditions.m", 231, "0");
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x1EEDB7A68](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}