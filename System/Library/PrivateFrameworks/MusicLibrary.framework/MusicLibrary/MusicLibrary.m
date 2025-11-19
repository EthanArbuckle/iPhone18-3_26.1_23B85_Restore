void sub_22D2FBD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ML3GreenTeaIsLoggableBundleIdentifier(void *a1)
{
  v1 = ML3GreenTeaIsLoggableBundleIdentifier_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&ML3GreenTeaIsLoggableBundleIdentifier_onceToken, &__block_literal_global_15784);
  }

  v3 = [ML3GreenTeaIsLoggableBundleIdentifier___greenTeaBundleIdentifierIgnoreList containsObject:v2];

  return v3 ^ 1u;
}

void __ML3GreenTeaIsLoggableBundleIdentifier_block_invoke()
{
  v0 = ML3GreenTeaIsLoggableBundleIdentifier___greenTeaBundleIdentifierIgnoreList;
  ML3GreenTeaIsLoggableBundleIdentifier___greenTeaBundleIdentifierIgnoreList = &unk_2840C85D0;
}

id MLMobileUserHomeDirectory()
{
  v14 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&MLMobileUserHomeDirectory_lock);
  if (MLMobileUserHomeDirectory_pathDictionary)
  {
    Value = CFDictionaryGetValue(MLMobileUserHomeDirectory_pathDictionary, @"mobile");
    if (Value)
    {
      goto LABEL_20;
    }
  }

  else
  {
    MLMobileUserHomeDirectory_pathDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  pw_dir = getenv("IPHONE_SHARED_RESOURCES_DIRECTORY");
  if (!pw_dir)
  {
    Length = CFStringGetLength(@"mobile");
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    usedBufLen = 0;
    v5 = MEMORY[0x277CBED08];
    if (MaximumSizeForEncoding >= 127)
    {
      v6 = MEMORY[0x2318CC510](*MEMORY[0x277CBED08], MaximumSizeForEncoding + 1, 2540992702, 0);
    }

    else
    {
      v6 = buffer;
    }

    v16.location = 0;
    v16.length = Length;
    Bytes = CFStringGetBytes(@"mobile", v16, 0x8000100u, 0, 1u, v6, MaximumSizeForEncoding, &usedBufLen);
    v8 = 0;
    if (Bytes == Length)
    {
      v6[usedBufLen] = 0;
      v8 = getpwnam(v6);
    }

    if (buffer != v6)
    {
      CFAllocatorDeallocate(*v5, v6);
    }

    if (!v8)
    {
      goto LABEL_17;
    }

    pw_dir = v8->pw_dir;
    if (!pw_dir)
    {
      goto LABEL_17;
    }
  }

  v2 = CFStringCreateWithFileSystemRepresentation(0, pw_dir);
  if (v2)
  {
    Value = v2;
    CFDictionarySetValue(MLMobileUserHomeDirectory_pathDictionary, @"mobile", v2);
    CFRelease(Value);
  }

  else
  {
LABEL_17:
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 138543362;
      v13 = @"mobile";
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "Returning NULL path from MLMobileUserHomeDirectory for %{public}@", buffer, 0xCu);
    }

    Value = 0;
  }

LABEL_20:
  pthread_mutex_unlock(&MLMobileUserHomeDirectory_lock);

  return Value;
}

void ML3RestrictionInfoInitializeIfNecessary()
{
  if ((sRestrictionSettingsInfo & 1) == 0)
  {
    pthread_mutex_lock(&sRestrictionSettingsLock);
    if ((sRestrictionSettingsInfo & 1) == 0)
    {
      byte_280B5EE6A = ML3HasExplicitContentRestriction();
      v0 = [MEMORY[0x277D262A0] sharedConnection];
      v1 = [v0 effectiveBoolValueForSetting:*MEMORY[0x277D25DB0]];

      byte_280B5EE6B = v1 == 2;
      v2 = [MEMORY[0x277D262A0] sharedConnection];
      v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25FA8]];

      byte_280B5EE6C = v3 == 2;
      ML3RestrictionRankInfoInitialize(&qword_280B5EE70, *MEMORY[0x277D25F80], 0, 1000);
      ML3RestrictionRankInfoInitialize(&qword_280B5EE88, *MEMORY[0x277D25F90], 0, 1000);
      v4 = 1;
      if ((byte_280B5EE6A & 1) == 0)
      {
        v4 = (byte_280B5EE6B & 1) != 0 || (byte_280B5EE6C & 1) != 0 || qword_280B5EE78 < qword_280B5EE80 || qword_280B5EE90 < qword_280B5EE98;
      }

      byte_280B5EE69 = v4;
      sRestrictionSettingsInfo = 1;
    }

    pthread_mutex_unlock(&sRestrictionSettingsLock);
  }
}

BOOL ML3HasExplicitContentRestriction()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 effectiveBoolValueForSetting:*MEMORY[0x277D25E90]];

  return v1 == 2;
}

void ML3RestrictionRankInfoInitialize(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v7 = [MEMORY[0x277D262A0] sharedConnection];
  *a1 = a3;
  a1[2] = a4;
  v8 = [v7 effectiveValueForSetting:v9];
  a1[1] = [v8 intValue];
}

void sub_22D2FDBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D2FDDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D2FE0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D2FE310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void _MLDispatchToSerialQueue(int a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (_MLDispatchToSerialQueue___once == -1)
  {
    v4 = v3;
  }

  else
  {
    dispatch_once(&_MLDispatchToSerialQueue___once, &__block_literal_global_83);
    v4 = v5;
  }

  if (a1)
  {
    dispatch_async(__ML3LogSerialQueue, v4);
  }

  else
  {
    dispatch_sync(__ML3LogSerialQueue, v4);
  }
}

void __MLSetSQLiteAutoTraceEnabled_block_invoke(uint64_t a1)
{
  if (_MLShouldAutoTraceML_onceToken != -1)
  {
    dispatch_once(&_MLShouldAutoTraceML_onceToken, &__block_literal_global_1226);
  }

  if (_MLShouldAutoTraceML_shouldAutoTraceML == 1)
  {
    if (*(a1 + 32) == 1)
    {

      setenv("SQLITE_AUTO_TRACE", "1", 1);
    }

    else
    {

      unsetenv("SQLITE_AUTO_TRACE");
    }
  }
}

void sub_22D2FF754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL26_executeTimeQueryOperationP8NSStringP17ML3QueryResultSetU13block_pointerFvvE_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _executeTimeQueryOperation(NSString *,ML3QueryResultSet *,void({block_pointer})(void))::timeQueryOps = [v0 BOOLForKey:@"MLTimeQueryOperations"];
}

void sub_22D30172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ML3LocalizationLanguageCanonicalIdentifier()
{
  v0 = +[ML3LanguageResourceManager sharedResourceManager];
  v1 = [v0 resources];
  v2 = [v1 canonicalLanguageIdentifier];

  return v2;
}

void *iPhoneSortKeyBuilderCreateForCurrentDevice()
{
  v0 = ML3LocalizationLanguageCanonicalIdentifier();
  v1 = ML3LocalizedSectionDictionary();
  if ((_NSIsNSDictionary() & 1) == 0)
  {
    v2 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_ERROR, "Failed to load section dictionary - using simple sections", buf, 2u);
    }

    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 bundleIdentifier];

    if ([v4 isEqualToString:@"com.apple.Music"])
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"We failed to load the sections headers dictionary for language %@", v0];
      ML3ShowFileRadarAlert(@"Invalid Sections Found", @"Failed to load sections headers dictionary.", v5);
    }

    v1 = &unk_2840CA5C0;
  }

  v6 = iPhoneSortKeyBuilderCreate(v0, v1);

  return v6;
}

id ML3LocalizedSectionDictionary()
{
  v0 = +[ML3LanguageResourceManager sharedResourceManager];
  v1 = [v0 resources];
  v2 = [v1 sectionsInfo];

  return v2;
}

void *iPhoneSortKeyBuilderCreate(const __CFString *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    __assert_rtn("iPhoneSortKeyBuilderCreate", "iPhoneSortKey.c", 105, "canonicalLanguageIdentifier != NULL");
  }

  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x1060040E905D0B9uLL);
  if (!v4)
  {
    __assert_rtn("iPhoneSortKeyBuilderCreate", "iPhoneSortKey.c", 108, "builder != NULL");
  }

  v5 = v4;
  Value = CFDictionaryGetValue(a2, @"SectionHeaders");
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFArrayGetTypeID()) || !CFArrayGetCount(v7))
  {
    __assert_rtn("iPhoneSortKeyBuilderCreate", "iPhoneSortKey.c", 111, "!CFSafeGetArrayIsEmpty(sectionHeadersDictionaries)");
  }

  Count = CFArrayGetCount(v7);
  v5[4] = Count;
  if (Count >= 75)
  {
    __assert_rtn("iPhoneSortKeyBuilderCreate", "iPhoneSortKey.c", 114, "builder->languageCount <= MAXIMUM_LANGUAGE_COUNT");
  }

  v10 = CFDictionaryGetValue(a2, @"NameTransform");
  v5[5] = v10;
  if (v10)
  {
    v11 = CFGetTypeID(v10);
    if (v11 != CFStringGetTypeID())
    {
      __assert_rtn("iPhoneSortKeyBuilderCreate", "iPhoneSortKey.c", 117, "builder->nameTransform == NULL || (CFGetTypeID(builder->nameTransform) == CFStringGetTypeID())");
    }
  }

  v62 = 0;
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
  v14 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  usedBufLen = 0;
  v63.location = 0;
  v63.length = Length;
  CFStringGetBytes(a1, v63, 0x600u, 0, 0, v14, MaximumSizeForEncoding, &usedBufLen);
  v14[usedBufLen] = 0;
  v15 = ucol_open();
  free(v14);
  v16 = v62;
  v57 = v5;
  if (v62 > 0)
  {
    v52 = 703;
LABEL_53:
    v53 = *MEMORY[0x277D85DF8];
    v54 = u_errorName(v16);
    fprintf(v53, "%s:%d: %s\n", "/Library/Caches/com.apple.xbs/Sources/MusicLibrary/MusicLibrary/Sorting/iPhoneSortKey/iPhoneSortKey.c", v52, v54);
    v5[1] = 0;
LABEL_54:
    __assert_rtn("iPhoneSortKeyBuilderCreate", "iPhoneSortKey.c", 120, "builder->collator != NULL");
  }

  ucol_setAttribute();
  if (v62 >= 1)
  {
    ucol_close();
    v52 = 712;
    v16 = v62;
    goto LABEL_53;
  }

  theString = a1;
  v5[1] = v15;
  if (!v15)
  {
    goto LABEL_54;
  }

  v5[3] = malloc_type_calloc(v5[4], 0x30uLL, 0x106004084DD7D94uLL);
  if (v5[4] >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = *MEMORY[0x277CBECE8];
    v56 = v7;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v17);
      if (!ValueAtIndex || (v21 = ValueAtIndex, v22 = v5[3], v23 = CFGetTypeID(ValueAtIndex), v23 != CFDictionaryGetTypeID()))
      {
        __assert_rtn("BuildLanguage", "iPhoneSortKey.c", 638, "!CFSafeTypeMismatch(languageDictionary, CFDictionaryGetTypeID)");
      }

      v24 = CFDictionaryGetValue(v21, @"FirstCharacterAfterLanguage");
      if (!v24 || (v25 = v24, v26 = CFGetTypeID(v24), v26 != CFStringGetTypeID()))
      {
        __assert_rtn("BuildLanguage", "iPhoneSortKey.c", 641, "!CFSafeTypeMismatch(firstCharacterAfterLanguage, CFStringGetTypeID)");
      }

      v27 = CFDictionaryGetValue(v21, @"Headers");
      if (!v27 || (v28 = v27, v29 = CFGetTypeID(v27), v29 != CFArrayGetTypeID()) || !CFArrayGetCount(v28))
      {
        __assert_rtn("BuildLanguage", "iPhoneSortKey.c", 644, "!CFSafeGetArrayIsEmpty(headers)");
      }

      v30 = CFArrayGetValueAtIndex(v28, 0);
      SortKeyForSections = CFStringCreateSortKeyForSections(v19, v30);
      if (!SortKeyForSections)
      {
        __assert_rtn("BuildLanguage", "iPhoneSortKey.c", 647, "firstCharacterSortKey != NULL");
      }

      v32 = SortKeyForSections;
      v33 = CFStringCreateSortKeyForSections(v19, v25);
      if (!v33)
      {
        __assert_rtn("BuildLanguage", "iPhoneSortKey.c", 650, "endCharacterSortKey != NULL");
      }

      v34 = v33;
      v59 = v18;
      cf = v32;
      v58 = v22;
      v35 = CFArrayGetCount(v28);
      v36 = malloc_type_calloc(v35, 8uLL, 0x6004044C4A2DFuLL);
      if (v35 < 1)
      {
        v43 = CFArrayCreate(v19, v36, v35, MEMORY[0x277CBF128]);
        v37 = 0;
      }

      else
      {
        v37 = 0;
        for (i = 0; i != v35; ++i)
        {
          v39 = CFArrayGetValueAtIndex(v28, i);
          v40 = CFStringCreateSortKeyForSections(v19, v39);
          if (!v40)
          {
            if (i)
            {
              for (j = 0; j != i; ++j)
              {
                CFRelease(v36[j]);
              }
            }

            free(v36);
            CFRelease(v34);
            CFRelease(cf);
            __assert_rtn("iPhoneSortKeyBuilderCreate", "iPhoneSortKey.c", 130, "result != 0");
          }

          v41 = v40;
          v42 = CFDataGetLength(v40);
          if (v42 > v37)
          {
            v37 = v42;
          }

          v36[i] = v41;
        }

        v43 = CFArrayCreate(v19, v36, v35, MEMORY[0x277CBF128]);
        v44 = v36;
        do
        {
          v45 = *v44++;
          CFRelease(v45);
          --v35;
        }

        while (v35);
      }

      v46 = (v58 + 48 * v17);
      free(v36);
      v47 = CFRetain(v28);
      *v46 = cf;
      v46[1] = v34;
      v46[2] = v47;
      v46[3] = v43;
      v46[4] = v37;
      v46[5] = v59;
      v18 = (v59 + CFArrayGetCount(v43));
      ++v17;
      v7 = v56;
      v5 = v57;
    }

    while (v17 < v57[4]);
  }

  if (CFStringHasPrefix(theString, @"ja"))
  {
    v48 = *MEMORY[0x277CBECE8];
    v49 = CFLocaleCreate(*MEMORY[0x277CBECE8], theString);
    v64.location = 0;
    v64.length = 0;
    v5[2] = CFStringTokenizerCreate(v48, 0, v64, 4uLL, v49);
    CFRelease(v49);
  }

  atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  return v5;
}

CFDataRef CFStringCreateSortKeyForSections(const __CFAllocator *a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = MEMORY[0x2318CC510](a1, 2 * Length, 0x1000040BDFB0063, 0);
  v10.location = 0;
  v10.length = Length;
  CFStringGetCharacters(theString, v10, v5);
  SortKey = ucol_getSortKey();
  v7 = MEMORY[0x2318CC510](a1, SortKey, 4089988666, 0);
  ucol_getSortKey();
  CFAllocatorDeallocate(a1, v5);
  Bound = ucol_getBound();
  return CFDataCreateWithBytesNoCopy(a1, v7, Bound, a1);
}

uint64_t iPhoneSortKeyBuilderInstallSqlite3_v2(atomic_uint *pApp, sqlite3 *db)
{
  if (pApp)
  {
    atomic_fetch_add_explicit(pApp, 1u, memory_order_relaxed);
  }

  result = sqlite3_create_function_v2(db, "iPhoneSortKey", 1, 2052, pApp, iPhoneSortKeyBuilderMake_xFunc, 0, 0, iPhoneSortKeyBuilderRelease);
  if (!result)
  {
    result = sqlite3_create_function_v2(db, "iPhoneSortSection", 1, 2053, pApp, iPhoneSortKeyBuilderSection_xFunc, 0, 0, 0);
    if (!result)
    {
      return sqlite3_create_function_v2(db, "iPhoneGroupingKey", 1, 2052, pApp, iPhoneSortKeyBuilderGroupingKey_xFunc, 0, 0, 0);
    }
  }

  return result;
}

void sub_22D3038A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D303CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D30423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ML3ProcessHandleFromPID(uint64_t a1)
{
  v1 = a1;
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [MEMORY[0x277D47008] targetWithPid:a1];
    v3 = [MEMORY[0x277D46FA0] predicateMatchingTarget:v2];
    v8 = 0;
    v4 = [MEMORY[0x277D46F48] handleForPredicate:v3 error:&v8];
    v5 = v8;

    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v10 = v1;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to query process handle for PID '%lld'. err=%{public}@", buf, 0x16u);
  }

  v4 = 0;
LABEL_8:

  return v4;
}

uint64_t _databaseAuthorizer(_DWORD *a1, int a2, char *__s2, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  result = 0;
  switch(a2)
  {
    case 1:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_INDEX: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 2:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_TABLE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 3:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_TEMP_INDEX: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 4:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_TEMP_TABLE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 5:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_TEMP_TRIGGER: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 6:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_TEMP_VIEW: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 7:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_TRIGGER: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 8:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_VIEW: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 9:
      if (strncmp("sqlite_", __s2, 7uLL))
      {
        return 0;
      }

      v9 = _ML3LogCategoryService();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DELETE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 10:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_INDEX: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 11:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_TABLE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 12:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_TEMP_INDEX: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 13:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_TEMP_TABLE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 14:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_TEMP_TRIGGER: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 15:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_TEMP_VIEW: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 16:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_TRIGGER: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 17:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_VIEW: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 18:
      if (strncmp("sqlite_", __s2, 7uLL))
      {
        return 0;
      }

      v9 = _ML3LogCategoryService();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_INSERT: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 19:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_PRAGMA: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 20:
      if (strncmp("sqlite_", __s2, 7uLL))
      {
        return 0;
      }

      v9 = _ML3LogCategoryService();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_READ: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 21:
    case 22:
    case 31:
    case 32:
    case 33:
      return result;
    case 23:
      if (strncmp("sqlite_", __s2, 7uLL))
      {
        return 0;
      }

      v9 = _ML3LogCategoryService();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = 136446722;
        *v14 = "denied";
        *&v14[8] = 2082;
        *&v14[10] = __s2;
        v15 = 2082;
        v16 = a4;
        v10 = "SQLITE_UPDATE: %{public}s, param1=%{public}s, param2=%{public}s";
LABEL_65:
        v11 = v9;
        v12 = 32;
LABEL_66:
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, v10, &v13, v12);
      }

LABEL_67:

      *a1 = a2;
      return 1;
    case 24:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_ATTACH: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 25:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DETACH: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 26:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_ALTER_TABLE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 27:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_REINDEX: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 28:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_ANALYZE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 29:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_CREATE_VTABLE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    case 30:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 136446722;
      *v14 = "denied";
      *&v14[8] = 2082;
      *&v14[10] = __s2;
      v15 = 2082;
      v16 = a4;
      v10 = "SQLITE_DROP_VTABLE: %{public}s, param1=%{public}s, param2=%{public}s";
      goto LABEL_65;
    default:
      v9 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v13 = 67109378;
      *v14 = a2;
      *&v14[4] = 2082;
      *&v14[6] = "denied";
      v10 = "Unknown action %d: %{public}s";
      v11 = v9;
      v12 = 18;
      goto LABEL_66;
  }
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, *(i + 4));
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_22D3063E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22D3074C0(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x277D85DE8];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x277D85EF8];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_22D307720(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x277D85EF8];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_22D3078B4(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x277D85EF8];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_22D307AA8(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_22D307C28(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_28407CFD0 + ((107 * (dword_27D9FC1A8 ^ 0xF9 ^ qword_27D9FC1D8)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * (dword_27D9FC1A8 ^ 0xF9 ^ qword_27D9FC1D8))] ^ 0x3A]) - 13);
  v2 = *(v1 - 4);
  v3 = *(&off_28407CFD0 + (*(off_28407D240 + (*(off_28407D378 + (107 * (v2 ^ qword_27D9FC1D8 ^ 0xF9)) - 4) ^ 0xCDu) - 12) ^ (107 * (v2 ^ qword_27D9FC1D8 ^ 0xF9))) - 49);
  v4 = (*(v3 - 4) ^ v2) - &v6;
  *(v1 - 4) = 1010482283 * (v4 + 0x5450BF49BFD4E907);
  *(v3 - 4) = 1010482283 * (v4 ^ 0xABAF40B6402B16F9);
  v7 = 1104 - 143681137 * (((&v7 | 0x9370951A) - (&v7 & 0x9370951A)) ^ 0x47D78940);
  v8 = a1;
  LOBYTE(v3) = 107 * ((*(v3 - 4) + *(v1 - 4)) ^ 0xF9);
  return (*(*(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 + dword_27D9FC1A8) ^ 0xF9)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * ((qword_27D9FC1D8 + dword_27D9FC1A8) ^ 0xF9))] ^ 0x3A]) - 82) + (*(off_28407D1B8 + (*(off_28407D120 + v3 - 12) ^ 0xADu) - 4) ^ v3) + 2029))(&v7);
}

uint64_t sub_22D307F5C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(&off_28407CFD0 + ((107 * (dword_27D9FC278 ^ 0xF9 ^ qword_27D9FC1D8)) ^ byte_22D5AF1D0[byte_22D5A9F30[(107 * (dword_27D9FC278 ^ 0xF9 ^ qword_27D9FC1D8))] ^ 0xD]) - 207);
  v2 = off_28407D378 - 4;
  v3 = off_28407D240 - 12;
  v4 = *(&off_28407CFD0 + (*(off_28407D240 + (*(off_28407D378 + (107 * ((qword_27D9FC1D8 - *v1) ^ 0xF9)) - 4) ^ 0xDu) - 12) ^ (107 * ((qword_27D9FC1D8 - *v1) ^ 0xF9))) - 224);
  v5 = (*(v4 - 4) - *v1) ^ &v7;
  *v1 = 1010482283 * v5 - 0x5450BF49BFD4E907;
  *(v4 - 4) = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  v9 = 1785193651 * ((((2 * (&v8 ^ 0x8B78F7EF)) | 0x59E945FC) - (&v8 ^ 0x8B78F7EF) - 754230014) ^ 0xB450B931) + 421;
  v8 = a1;
  LODWORD(v4) = 1010482283 * (*v1 ^ 0x402B16F9 ^ *(v4 - 4));
  return (*(*(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 - dword_27D9FC278) ^ 0xF9)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * ((qword_27D9FC1D8 - dword_27D9FC278) ^ 0xF9))] ^ 0xF6]) - 55) + (v4 ^ v3[v2[v4] ^ 0xD]) + 2028))(&v8);
}

uint64_t sub_22D3082CC(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 - dword_27D9FC1A0) ^ 0xF9)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * ((qword_27D9FC1D8 - dword_27D9FC1A0) ^ 0xF9))] ^ 0x79]) - 4);
  v2 = off_28407D350 - 12;
  v3 = off_28407D038 - 8;
  v4 = *(&off_28407CFD0 + (*(off_28407D038 + (*(off_28407D350 + (107 * ((qword_27D9FC1D8 - *v1) ^ 0xF9)) - 12) ^ 0x79u) - 8) ^ (107 * ((qword_27D9FC1D8 - *v1) ^ 0xF9))) - 22);
  v5 = &v7[*v1 + *(v4 - 4)];
  *v1 = 1010482283 * (v5 + 0x5450BF49BFD4E907);
  *(v4 - 4) = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  v8 = a1;
  v9 = (1785193651 * (&v8 ^ 0x13DCEC20)) ^ 0x2C2;
  LOBYTE(v4) = 107 * ((*(v4 - 4) - *v1) ^ 0xF9);
  (*(*(&off_28407CFD0 + ((107 * (dword_27D9FC1A0 ^ 0xF9 ^ qword_27D9FC1D8)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * (dword_27D9FC1A0 ^ 0xF9 ^ qword_27D9FC1D8))] ^ 0xF6]) - 55) + (v4 ^ v3[v2[v4] ^ 0x8F]) + 2261))(&v8);
  return v10;
}

uint64_t sub_22D30869C@<X0>(_OWORD *a1@<X8>)
{
  v6 = a1[1];
  v7 = (v5 + v1);
  *v7 = *a1;
  v7[1] = v6;
  LODWORD(v7) = ((v3 + 1049) ^ 0x71FLL) == (v2 & 0x60);
  return (*(v4 + 8 * (((4 * v7) | (16 * v7)) ^ v3)))();
}

uint64_t sub_22D308738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = v14 & 0xFFFFFFF8;
  v18 = *(v16 + 8 * ((774 * (((v15 - 931) | 0x278) - 753 == v17)) ^ (v15 - 8)));
  return v18(a1, a2, a3, v17, 774, v18, a7, a8, a9, a10, a11, a12, a13, a14);
}

void Ehn34khqq1jgEJw()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 + dword_27D9FC270) ^ 0xF9)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * ((qword_27D9FC1D8 + dword_27D9FC270) ^ 0xF9))] ^ 0xF6]) - 15);
  v1 = off_28407D350 - 12;
  v2 = off_28407D038 - 8;
  v3 = *(&off_28407CFD0 + (*(off_28407D038 + (*(off_28407D350 + (107 * (*v0 ^ qword_27D9FC1D8 ^ 0xF9)) - 12) ^ 0xF6u) - 8) ^ (107 * (*v0 ^ qword_27D9FC1D8 ^ 0xF9))) - 103);
  v4 = &v6[*(v3 - 4) - *v0];
  *v0 = 1010482283 * (v4 + 0x5450BF49BFD4E907);
  *(v3 - 4) = 1010482283 * (v4 ^ 0xABAF40B6402B16F9);
  v7[0] = (1037613739 * ((((2 * v7) | 0xB144690A) - v7 + 660458363) ^ 0x9A019FA)) ^ 0x9617D40F;
  LOBYTE(v3) = 107 * ((*(v3 - 4) - *v0) ^ 0xF9);
  v5 = *(&off_28407CFD0 + ((107 * (dword_27D9FC270 ^ 0xF9 ^ qword_27D9FC1D8)) ^ byte_22D5B2B40[byte_22D5AF0D0[(107 * (dword_27D9FC270 ^ 0xF9 ^ qword_27D9FC1D8))] ^ 0xAD]) - 149) - 8;
  (*&v5[8 * (v3 ^ v2[v1[v3] ^ 0x79]) + 17560])(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D308A04()
{
  STACK[0x260] = v1 - 112;
  STACK[0x4F8] = v1 - 112;
  return v0();
}

uint64_t sub_22D308A20()
{
  v6 = 17 * LODWORD(STACK[0x2F4]);
  v7 = (v5 + 4 * v0);
  v8 = *v7;
  LODWORD(v7) = 833381725 * ((*(*STACK[0x300] + (*STACK[0x308] & 0x5135FB80)) ^ v7) & 0x7FFFFFFF);
  LODWORD(v7) = v7 ^ (v7 >> 16);
  v9 = 833381725 * v7;
  *(v4 + 4 * v0) ^= v8 ^ ((((v3 - 929) ^ v0) & v0) >> (__clz((v3 - 929) ^ v0 | 1) ^ 0x1F)) & 1 ^ *(*(&off_28407CFD0 + v3 - 841) + HIBYTE(v9)) ^ *(*(&off_28407CFD0 + SLODWORD(STACK[0x2EC])) + HIBYTE(v9) - 2) ^ *(*(&off_28407CFD0 + SLODWORD(STACK[0x2F0])) + HIBYTE(v9) + 1) ^ (v7 * (v6 + 1700592729)) ^ v9 ^ (-471850983 * ((833381725 * v7) >> 24));
  return (*(v2 + 8 * (((((v6 + 881763406) & 0xCB715BAE) + 459) * (v1 == 1)) ^ v6)))();
}

void sub_22D308BA4(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D308C5C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  result = (*(v3 + 8 * ((a2 - 623) ^ 0xB92)))(*v4, a1, ((a2 - 170) | 0xC5u) + *(v2 + 8) - 563554189);
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 12) = v5;
  return result;
}

uint64_t sub_22D308DBC(uint64_t a1)
{
  v1 = 1082434553 * ((-2 - ((a1 | 0x87804AFB) + (~a1 | 0x787FB504))) ^ 0xE338438E);
  v2 = *(a1 + 28) ^ v1;
  v3 = *(a1 + 24) + v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1726767306;
  v5 = v4 - 1726767306 < 0;
  v7 = 1726767306 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_28407CFD0 + v2 - 301) + ((255 * ((((v2 + 1238) ^ ((v3 - 256085926) < (4 * v7))) & 1) == 0)) ^ v2) - 1))();
}

uint64_t sub_22D308F18@<X0>(uint64_t a1@<X1>, int a2@<W4>, int a3@<W8>)
{
  v9 = v3 - 2;
  v10 = v4 + 2;
  *(v9 + (a3 ^ (a2 + 354) ^ (a1 + 86))) = (v10 ^ v6) * (v10 + 17);
  *(v9 + 90) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v5 == 2) * v7) ^ a3)))();
}

void sub_22D309394(uint64_t a1)
{
  v2 = *(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 - dword_27D9FC1E8) ^ 0xF9)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * ((qword_27D9FC1D8 - dword_27D9FC1E8) ^ 0xF9))] ^ 0x8F]) + 69);
  v3 = *(v2 - 4);
  v4 = *(&off_28407CFD0 + ((107 * (v3 ^ qword_27D9FC1D8 ^ 0xF9)) ^ byte_22D5A9D30[byte_22D5B5FC0[(107 * (v3 ^ qword_27D9FC1D8 ^ 0xF9))] ^ 0xB8]) - 9);
  v5 = (*(v4 - 4) + v3) ^ &v9;
  v6 = 1010482283 * v5 - 0x5450BF49BFD4E907;
  v7 = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_28407CFD0 + ((107 * (dword_27D9FC1E8 ^ 0xF9 ^ qword_27D9FC1D8)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * (dword_27D9FC1E8 ^ 0xF9 ^ qword_27D9FC1D8))] ^ 0xA4]) - 68) - 8;
  (*&v8[8 * (*(off_28407D038 + (*(off_28407D350 + (107 * ((v7 + v4) ^ 0xF9)) - 12) ^ 0x3Au) - 8) ^ (107 * ((v7 + v4) ^ 0xF9))) + 16392])(*(&off_28407CFD0 + ((107 * ((v7 - v4) ^ 0xF9)) ^ *(off_28407D038 + (*(off_28407D350 + (107 * ((v7 - v4) ^ 0xF9)) - 12) ^ 0xF6u) - 8)) + 49), sub_22D309CDC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D309574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, _BYTE *a12, int a13, char a14, uint64_t a15, uint64_t a16, _BYTE *a17, char *a18, int a19, unsigned int a20)
{
  a20 = v20 + 1252 + 210068311 * (((&a17 | 0x63E96607) - &a17 + (&a17 & 0x9C1699F8)) ^ 0x9162C9EF);
  a17 = a12;
  a18 = &a11;
  (*(v22 + 8 * (v20 + 1958)))(&a17);
  a17 = a12;
  a18 = &a14;
  a20 = v20 + 1252 + 210068311 * ((((2 * &a17) | 0xD326B718) - &a17 - 1771264908) ^ 0x9B18F464);
  (*(v22 + 8 * (v20 + 1958)))(&a17);
  LODWORD(a17) = v20 - 50899313 * ((((&a17 | 0x421F566A) ^ 0xFFFFFFFE) - (~&a17 | 0xBDE0A995)) ^ 0x75816DC3) + 1156;
  a18 = a12;
  v23 = (*(v22 + 8 * (v20 + 1990)))(&a17);
  return (*(v22 + 8 * ((((((23 * (v20 ^ 0x10E)) ^ (a19 == v21)) & 1) == 0) * (((v20 + 1418989340) | 0xA3032203) + 141086164)) ^ v20)))(v23);
}

uint64_t sub_22D309714@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, int a3@<W4>, int a4@<W7>, unsigned __int8 *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v56 = &STACK[0x18A0] + v51;
  *v56 = *a5;
  *(v56 + 1) = *(a5 + 1);
  *(v56 + 9) = *(a5 + 9);
  *(v56 + 13) = *(a5 + 13);
  v56[15] = a5[15];
  v58 = *a5;
  v57 = *(a5 + 1);
  *(v56 + 2) = v58;
  *(v56 + 3) = v57;
  v59 = *(v55 + 8 * (v52 ^ 0x1BB)) - 12;
  LOBYTE(v57) = *(v59 + (v56[5] ^ v53));
  v60 = *(v55 + 8 * (v52 - 299)) - 4;
  v61 = *(v60 + (v56[15] ^ 0x74));
  LODWORD(v58) = *(v60 + (v56[7] ^ (v52 - 21)));
  LODWORD(v57) = (v58 ^ 0xA8FF4C26) & ((((19 * v57 + 46) ^ (76 * v57 - 116)) << 16) ^ 0xA8BC4C2F) | v58 & 0xD0;
  LODWORD(v58) = *(v60 + (v56[11] ^ 0x19));
  v62 = *(v55 + 8 * (v52 - 423)) - 8;
  v63 = *(v62 + (v56[2] ^ 0xA4));
  v64 = v63 ^ (v63 >> 5) ^ (v63 >> 3);
  v65 = *(v55 + 8 * (v52 ^ 0x15C)) - 4;
  v66 = *(v65 + (v56[12] ^ 0x28));
  v67 = (((v66 ^ (v66 >> 3) ^ (v66 >> 2) ^ a3) << 24) ^ 0x9CF9803E) & (v61 ^ 0xFFF9F1A6) | v61 & 0xFFFFFFC1;
  v68 = *(v65 + (*v56 ^ 0xBBLL));
  v69 = *(v59 + (v56[13] ^ 0xCFLL));
  v70 = 19 * v69 + 46;
  v71 = (((v68 ^ (v68 >> 2) ^ ((v68 >> 3) | 0x20) ^ 0x2A) << 24) ^ 0xDCC146C5) & ((v64 << 8) | 0xFFCD00F5);
  v72 = (v64 << 8) & 0xB900;
  LOBYTE(v64) = 76 * v69 - 116;
  v73 = *(v65 + (v56[8] ^ 4));
  v74 = (v70 ^ v64) << 16;
  v75 = *(v60 + (v56[3] ^ 0xF1));
  v76 = (((v73 ^ (v73 >> 3) ^ (v73 >> 2) ^ 0xE2) << 24) ^ 0x3A3AD5C1) & (v58 ^ 0xFFBBD754) | v58 & 0x3E;
  LODWORD(v58) = ((v71 | v72) ^ 0x9D97A420) & (v75 ^ 0xFFDFFFAE);
  v77 = v75 & 0x1A;
  v78 = *(v62 + (v56[6] ^ 0xAELL));
  LODWORD(v57) = (((v78 ^ (v78 >> 5) ^ (v78 >> 3)) << 8) ^ 0xEFD240A5) & (v57 ^ 0x47F4B30A) | v57 & 0x2D005A;
  LOBYTE(v78) = *(v59 + (v56[1] ^ a2));
  v79 = *(v62 + (v56[10] ^ 0x41));
  v80 = ((((19 * v78 + 46) ^ (76 * v78 - 116)) << 16) ^ 0xADB66EBB) & ((v77 | v58) ^ 0x2BA93D48);
  v81 = v79 ^ (v79 >> 5) ^ (v79 >> 3);
  v215 = v65;
  v216 = v62;
  v82 = (*(v62 + (v56[14] ^ 0xC9)) ^ (*(v62 + (v56[14] ^ 0xC9)) >> 5) ^ (*(v62 + (v56[14] ^ 0xC9)) >> 3)) << 8;
  v83 = *(v65 + (v56[4] ^ 0x51));
  v84 = (v82 ^ 0xFFFF7EFF) & ((v74 & 0xEB0000 | (v67 ^ 0x2EED7759) & (v74 ^ 0xFF2FF7FF)) ^ 0x88A0E9BC);
  v85 = (v83 ^ (v83 >> 3) ^ (v83 >> 2) ^ 0x73) << 24;
  v217 = v59;
  LOBYTE(v56) = *(v59 + (v56[9] ^ 0x7DLL));
  LODWORD(v56) = ((76 * v56 - 116) ^ (19 * v56 + 46)) << 16;
  LODWORD(STACK[0x288]) = v58 & 0x52409144 ^ 0xC79EAAD5 ^ v80;
  v224 = v85 & 0xC3FFFFFF ^ 0x1176A151 ^ (v85 ^ 0x8BFFFFFF) & (v57 ^ 0xD3C90EA3);
  LODWORD(STACK[0x2D0]) = v82 & 0xFFFFE1FF ^ 0x367E1120 ^ v84;
  v223 = v56 & 0x680000 ^ 0xF96A9AA7 ^ (v56 ^ 0xFF16FFFF) & (((v81 << 8) & 0xB800 | 0x53344677) ^ ((v81 << 8) ^ 0xFFFFC3FF) & (v76 ^ 0x799992C7));
  v213 = STACK[0x590];
  v214 = STACK[0x588];
  v86 = v52 + 1307;
  LODWORD(STACK[0x308]) = 0;
  STACK[0x260] = 6;
  LOBYTE(v57) = v214[6];
  STACK[0x2C8] = 11;
  HIDWORD(a16) = (v52 + 1307) ^ 0x22A;
  LODWORD(v57) = *(v62 + ((v52 + 27) ^ 0x30u ^ v57));
  v87 = v214[11];
  STACK[0x2D8] = 14;
  HIDWORD(v221) = v52;
  LODWORD(STACK[0x278]) = v52 ^ 0x1CB;
  LOBYTE(v87) = *(v60 + (v87 ^ 0x3F));
  LODWORD(v56) = *(v62 + (v214[14] ^ 0xC3));
  v88 = v214[v52 ^ 0x1CB];
  LOBYTE(v80) = (v87 ^ 0x31) - 98;
  v89 = ((2 * v87) & 0xC4 ^ 0x84) + v80;
  STACK[0x2E0] = 7;
  v90 = *(v60 + (v88 ^ 0x87));
  LODWORD(v65) = v56 ^ (v56 >> 5) ^ (v56 >> 3);
  v91 = *(v60 + (v214[7] ^ 0xEELL));
  STACK[0x300] = 13;
  LODWORD(v87) = (v91 ^ 0xC7E8FF62) & (((v57 ^ (v57 >> 5) ^ (v57 >> 3)) << 8) ^ 0xC7E83A7B);
  LOBYTE(v56) = v80 & 2;
  LODWORD(v57) = *(v59 + (v214[13] ^ 0xFLL));
  LOBYTE(v80) = 19 * v57;
  v92 = 19 * v57 + 46;
  LODWORD(v57) = ((v92 ^ 0xFFFFFFB5) + ((38 * v57 + 92) & 0x6A)) << v56 << (v56 ^ 2);
  LOBYTE(v56) = v80 - ((2 * v92) & 0xC7) - 111;
  v93 = *(v215 + (v214[8] ^ 0xAALL));
  LOBYTE(v56) = v57 ^ v56;
  v94 = v93 ^ (v93 >> 3) ^ (v93 >> 2);
  STACK[0x290] = 1;
  v95 = *(v59 + (v214[1] ^ 0xDLL));
  v96 = (76 * v95 - 116) ^ (19 * v95 + 46);
  v97 = (((v96 >> 4) ^ 0xFFFFFFFFFFFFFFF7) & ((v90 << 12) ^ 0x6CBF206696A6F95CLL) ^ 0x1300D90168440280) & ((v96 << 28) ^ 0x3392F9457E6742DCLL) ^ ((v96 >> 4) | (v90 << 12) ^ 0x6CBF206696A6F95CLL) & 0x4C2D00228088B803;
  LODWORD(v90) = *(v62 + (v214[10] ^ 8));
  v98 = v214[4] - ((2 * v214[4]) & 0x1A4u) + 210;
  v99 = v90 ^ (v90 >> 5) ^ (v90 >> 3);
  LODWORD(v90) = *(v215 + (v98 ^ 0x71)) ^ (*(v215 + (v98 ^ 0x71)) >> 3) ^ (*(v215 + (v98 ^ 0x71)) >> 2);
  v100 = *(v215 + (v214[12] ^ 0x9FLL));
  LODWORD(v98) = v100 ^ a4 ^ ((v100 >> 3) ^ (v100 >> 2) | 0x80);
  v101 = *(v62 + (v214[2] ^ 0x3FLL));
  LOBYTE(v92) = *(v59 + (v214[9] ^ 0x9DLL));
  v102 = (19 * v92 + 46) ^ (76 * v92 - 116);
  LODWORD(v59) = ((v98 << 24) ^ 0xD99B241A) & ((((v56 << 16) ^ 0x3623A6A8) & ((v65 << 8) ^ 0xFEFF46EA) | (v65 << 8) & 0x5900) ^ 0xC9C2C9F6) ^ (((v56 << 16) ^ 0x3623A6A8) & ((v65 << 8) ^ 0xFEFF46EA) & 0x3064DB00 | (v65 << 8) & 0x5900);
  STACK[0x220] = 15;
  v103 = *(v60 + (v214[15] ^ 0x4BLL));
  LOBYTE(v57) = *(v217 + (v214[5] ^ 0xF7));
  v104 = (((((19 * v57 + 46) ^ (76 * v57 - 116)) << 16) ^ 0xFF9C4DBD) & (((v90 ^ 0xF6) << 24) ^ 0x36FF4DBD) ^ 0x279BFC31) & ((v87 | v91 & 0x84) ^ 0x38175E16) ^ v87 & 0x2E04E73;
  LODWORD(v57) = *(v215 + (*v214 ^ 0xD6));
  LODWORD(v57) = ((16 * (v57 ^ (v57 >> 1))) & 0xFC0 ^ 0x6F) & (((v57 ^ (v57 >> 1)) >> 4) ^ 0xFFFFFFFB) ^ (((v57 ^ 0x85) >> 2) | ((v57 ^ 0xFFFFFF85) << 6));
  LODWORD(v98) = (v57 >> 6) | (4 * v57);
  LODWORD(v90) = (v97 << 20) ^ 0x26C00000 | (v97 >> 12) ^ 0x9673B238;
  LODWORD(v57) = v90 ^ ((v101 ^ (v101 >> 5) ^ (v101 >> 3)) << 8);
  HIDWORD(v219) = v57 ^ ((v98 ^ 0xA7) << 24);
  v105 = *(&off_28407CFD0 + v86 - 1661) - 12;
  v106 = v56 ^ 0x37u;
  HIDWORD(v222) = v86;
  v107 = *(&off_28407CFD0 + (v86 ^ 0x66C)) - 4;
  v108 = *&v107[4 * v106];
  v109 = *(&off_28407CFD0 + (v86 ^ 0x65A)) - 12;
  v110 = *&v109[4 * (v91 ^ 0x57)] - (v104 ^ 0x21C17698);
  v111 = *(&off_28407CFD0 + v86 - 1616) - 12;
  v112 = *&v111[4 * (v99 ^ 0x9F)] ^ (v108 - 1409877230) ^ v110 ^ (*&v105[4 * (HIBYTE(HIDWORD(v219)) ^ 0xE3)] + (HIBYTE(HIDWORD(v219)) ^ 0xA095C548) - 745719458);
  HIDWORD(v218) = v89;
  LODWORD(v62) = *&v111[4 * (v65 ^ 0x81)] ^ (*&v107[4 * (BYTE2(v90) ^ 0x7C)] - 1409877230) ^ (*&v105[4 * (HIBYTE(v104) ^ 0x1E)] + (HIBYTE(v104) ^ 0xA095C5B5) - 745719458) ^ (*&v109[4 * (v89 ^ 0xAE)] - (v89 ^ 0x21C17607));
  LODWORD(v221) = v94;
  LODWORD(v219) = (v59 ^ 0x51126684) & (v103 ^ 0xFFFFFF06) | v103 & 0x61;
  LODWORD(v57) = *&v111[4 * (BYTE1(v57) ^ 0x9B)] ^ ((v94 ^ 0xA095C5B0) - 745719458 + *&v105[4 * (v94 ^ 0x1B)]) ^ (*&v109[4 * (v103 ^ 0xD2)] - (((v59 ^ 0x84) & (v103 ^ 6) | v103 & 0x61) ^ 0x21C1767D)) ^ (*&v107[4 * (BYTE2(v104) ^ 0xCA) + 500 + 4 * ((v104 >> 15) & 0xF8 ^ 0xFFFFFF6F)] - 1409877230);
  LODWORD(v218) = v102;
  v220 = __PAIR64__(v99, v104);
  LODWORD(v87) = (*&v107[4 * (v102 ^ 0xE3)] - 1409877230) ^ *&v111[4 * (BYTE1(v104) ^ 0x9F)] ^ (*&v109[4 * ((v97 >> 12) ^ 0x8ELL)] - ((v97 >> 12) ^ 0x21C17627)) ^ ((BYTE3(v59) ^ 0x5F6A3AAE) - 745719459 - 2 * (BYTE3(v59) ^ 0x5F6A3AAE) + *&v105[4 * (BYTE3(v59) ^ 0xFA)]);
  v113 = *&v107[4 * (BYTE2(v87) ^ 0xC5)];
  v114 = *&v111[4 * (BYTE1(v57) ^ 0xF9)] ^ (*&v109[4 * (v62 ^ 0x68)] - (v62 ^ 0x21C176C1)) ^ ((HIBYTE(v112) ^ 0xA095C535) - 745719458 + *&v105[4 * (HIBYTE(v112) ^ 0x9E)]) ^ ((__ROR4__(__ROR4__(v113, 7) ^ 0xDC83A63C, 25) ^ 0xEA25E57C) + ((2 * v113) & 0x57EDF624));
  v115 = (*&v107[4 * (BYTE2(v112) ^ 0x96)] - 1409877230) ^ ((BYTE3(v62) ^ 0xA095C503) - 745719458 + *&v105[4 * (BYTE3(v62) ^ 0xA8)]) ^ *&v111[4 * (BYTE1(v87) ^ 0x6E)] ^ (*&v109[4 * (v57 ^ 0xFA)] - (v57 ^ 0x21C17653));
  LODWORD(v90) = (*&v107[4 * (((BYTE2(v62) ^ 5) - (BYTE2(v62) ^ 0x79)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v62) ^ 5)] - 1409877230) ^ ((BYTE3(v57) ^ 0xA095C50D) - 745719458 + *&v105[4 * (BYTE3(v57) ^ 0xA6)]) ^ *&v111[4 * (BYTE1(v112) ^ 0xE0)] ^ (*&v109[4 * (v87 ^ 0x40)] - (v87 ^ 0x21C176E9));
  LODWORD(v87) = (*&v107[4 * (BYTE2(v57) ^ 0xA3)] - 1409877230) ^ ((BYTE3(v87) ^ 0xA095C5DF) - 745719458 + *&v105[4 * (BYTE3(v87) ^ 0x74)]) ^ *&v111[4 * (BYTE1(v62) ^ 0x9A)] ^ (*&v109[4 * (v112 ^ 0x9A)] - (v112 ^ 0x21C17633));
  v116 = *&v109[4 * (v115 ^ 0xE0)];
  v115 ^= 0xF7D9A230;
  LODWORD(v65) = *&v111[4 * (BYTE1(v90) ^ 0xBB)];
  LODWORD(v97) = (*&v107[4 * (BYTE2(v87) ^ 0x2C)] - 1409877230) ^ v65 & 0xFFFFFFBF ^ ((((v114 ^ 0xC29E1175) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v114 ^ 0xC29E1175) >> 24) ^ 0x8A)]) ^ (v65 & 0x40 | 0x94F5230B) ^ (v116 - (v115 ^ 0x21C17679));
  v117 = (*&v107[4 * (BYTE2(v114) ^ 0xE2)] - 1409877230) ^ ((HIBYTE(v115) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v115) ^ 0x8A)]) ^ *&v111[4 * (BYTE1(v87) ^ 0x4F)] ^ (*&v109[4 * (v90 ^ 0x80)] - (v90 ^ 0x21C17629));
  v118 = *&v109[4 * (v87 ^ 0xA8)];
  LODWORD(v87) = v87 ^ 0x13501878;
  v119 = (*&v107[4 * (BYTE2(v115) - ((v115 >> 15) & 0xF8)) + 496] - 1409877230) ^ ((((v90 ^ 0xCFECEC50) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v90 ^ 0xCFECEC50) >> 24) ^ 0x8A)]) ^ *&v111[4 * (BYTE1(v114) ^ 0x46)] ^ (v118 - (v87 ^ 0x21C17679));
  LODWORD(v57) = (*&v107[4 * (((v90 ^ 0xCFECEC50) >> 16) ^ 0x7C)] - 1409877230) ^ ((BYTE3(v87) ^ 0xA095C521) - 745719458 + *&v105[4 * (BYTE3(v87) ^ 0x8A)]) ^ *&v111[4 * BYTE1(v115)] ^ (*&v109[4 * (v114 ^ 0xA5)] - (v114 ^ 0x21C1760C));
  LODWORD(v65) = v57 ^ 0x1DF67BEA;
  BYTE2(v90) = BYTE2(v119) ^ 0x7F;
  v120 = (*&v107[4 * ((v57 ^ 0x1DF67BEA) >> 16)] - 1409877230) ^ *&v111[4 * ((v119 ^ 0xC1A2) >> 8)] ^ ((((v97 ^ 0xFB60CFE9) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v97 ^ 0xFB60CFE9) >> 24) ^ 0x8A)]) ^ (*&v109[4 * (v117 ^ 0x57)] - (v117 ^ 0x21C176FE));
  v121 = ((((v117 ^ 0xF40D6B87) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v117 ^ 0xF40D6B87) >> 24) ^ 0x8A)]) ^ 0x94F5230B ^ *&v111[4 * (BYTE1(v57) ^ 0x2C)] ^ (*&v109[4 * (v119 ^ 0x72)] - (v119 ^ 0x21C176DB)) ^ (*&v107[4 * ((((v97 ^ 0xFB60CFE9) >> 16) - (((v97 ^ 0xFB60CFE9) >> 16) ^ 0x7C)) ^ 0xFFFFFFF8) + 4 * ((v97 ^ 0xFB60CFE9) >> 16)] - 1409877230);
  v122 = (v119 ^ 0xF97FC1A2) >> 24;
  v123 = v122 ^ 0x8A;
  v124 = v122 ^ 0x5F6A3ADE;
  v125 = (*&v107[4 * ((v117 ^ 0xF40D6B87) >> 16)] - 1409877230) ^ *&v111[4 * ((v97 ^ 0xCFE9) >> 8)] ^ (*&v109[4 * (v57 ^ 0x3A)] - (v57 ^ 0x21C17693)) ^ (-745719459 - v124 + *&v105[4 * v123]);
  v126 = (*&v107[4 * BYTE2(v90)] - 1409877230) ^ (-745719459 - ((1600797406 - (BYTE3(v65) & 2)) ^ BYTE3(v65) & 0xFFFFFFFD) + *&v105[4 * (BYTE3(v65) ^ 0x8A)]) ^ *&v111[4 * ((((v117 ^ 0x6B87) >> 8) - 1853103297 - (((v117 ^ 0xF40D6B87) >> 7) & 0x7E)) ^ 0x918BE368)] ^ (*&v109[4 * (v97 ^ 0x39)] - (v97 ^ 0x21C17690));
  v127 = v120 ^ 0xFBC8137;
  v128 = v126 ^ 0x25BF358A;
  LODWORD(v130) = __ROR4__(v121, 24) ^ 0xF7A7AFD3;
  HIDWORD(v130) = v130;
  v129 = v130 >> 8;
  v131 = (*&v107[4 * (((v126 ^ 0x25BF358A) >> 16) ^ 0x7C)] - 1409877230) ^ ((HIBYTE(v127) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v127) ^ 0x8A)]) ^ *&v111[4 * (BYTE1(v125) ^ 0x25)] ^ (*&v109[4 * (BYTE1(v130) ^ 0xD3)] - (BYTE1(v130) ^ 0x21C1767A));
  v132 = (v120 ^ 0xFBC8137) >> 16;
  if (((v120 ^ 0xFBC8137) & 0x3F0000) == 0)
  {
    LOBYTE(v132) = v132 & 0xC0;
  }

  v133 = (*&v107[4 * (v132 ^ 0x7C)] - 1409877230) ^ *&v111[4 * BYTE1(v128)] ^ (*&v109[4 * (v125 ^ 0x37)] - (v125 ^ 0x21C1769E)) ^ ((((v129 ^ 0x1DD0DB03u) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v129 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)]);
  v134 = (*&v107[4 * (BYTE2(v129) ^ 0xAC)] - 1409877230) ^ ((((v125 ^ 0xCC4472E7) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v125 ^ 0xCC4472E7) >> 24) ^ 0x8A)]) ^ *&v111[4 * BYTE1(v127)] ^ (*&v109[4 * (v126 ^ 0x5A)] - (v126 ^ 0x21C176F3));
  v135 = (*&v107[4 * (BYTE2(v125) ^ 0x38)] - 1409877230) ^ ((HIBYTE(v128) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v128) ^ 0x8A)]) ^ (*&v109[4 * (v120 ^ 0xE7)] - (v120 ^ 0x21C1764E)) ^ *&v111[4 * (BYTE1(v129) ^ 0x8C)];
  v136 = v135 ^ 0x28B1C8AF;
  v137 = (*&v107[4 * ((v135 ^ 0x28B1C8AF) >> 16)] - 1409877230) ^ *&v111[4 * ((v134 ^ 0xF582) >> 8)] ^ ((((v131 ^ 0x3AB33250) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v131 ^ 0x3AB33250) >> 24) ^ 0x8A)]) ^ (*&v109[4 * (v133 ^ 0x82)] - (v133 ^ 0x21C1762B));
  v138 = (*&v107[4 * (BYTE2(v131) ^ 0xCF)] - 1409877230) ^ *&v111[4 * ((v135 ^ 0xC8AF) >> 8)] ^ (*&v109[4 * (v134 ^ 0x52)] - (v134 ^ 0x21C176FB)) ^ ((((v133 ^ 0x94240652) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v133 ^ 0x94240652) >> 24) ^ 0x8A)]);
  v139 = (*&v107[4 * ((v133 ^ 0x94240652) >> 16)] - 1409877230) ^ ((((v134 ^ 0x57A0F582) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v134 ^ 0x57A0F582) >> 24) ^ 0x8A)]) ^ *&v111[4 * ((v131 ^ 0x3250) >> 8)] ^ (*&v109[4 * (v135 ^ 0x7F)] - (v135 ^ 0x21C176D6));
  v140 = (*&v107[4 * (BYTE2(v134) ^ 0xDC)] - 1409877230) ^ ((HIBYTE(v136) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v136) ^ 0x8A)]) ^ *&v111[4 * (((v133 ^ 0x652) >> 8) ^ 0x57)] ^ (*&v109[4 * (v131 ^ 0x80)] - (v131 ^ 0x21C17629));
  v141 = v140 ^ 0xBE27B2EF;
  v142 = (*&v107[4 * ((v140 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *&v111[4 * ((v139 ^ 0x7C12) >> 8)] ^ ((((v137 ^ 0xDBAE4527) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v137 ^ 0xDBAE4527) >> 24) ^ 0x8A)]) ^ (*&v109[4 * (v138 ^ 0x10)] - (v138 ^ 0x21C176B9));
  v143 = (*&v107[4 * (BYTE2(v137) ^ 0xD2)] - 1409877230) ^ *&v111[4 * (BYTE1(v140) ^ 0xE5)] ^ ((((v138 ^ 0x6FA1BBC0) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v138 ^ 0x6FA1BBC0) >> 24) ^ 0x8A)]) ^ (*&v109[4 * (v139 ^ 0xC2)] - (v139 ^ 0x21C1766B));
  v144 = (*&v107[4 * ((v138 ^ 0x6FA1BBC0) >> 16)] - 1409877230) ^ *&v111[4 * ((v137 ^ 0x4527) >> 8)] ^ ((((v139 ^ 0x2B27C12) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v139 ^ 0x2B27C12) >> 24) ^ 0x8A)]) ^ (*&v109[4 * (v140 ^ 0x3F)] - (v140 ^ 0x21C17696));
  v145 = (*&v107[4 * ((v139 ^ 0x2B27C12) >> 16)] - 1409877230) ^ *&v111[4 * ((v138 ^ 0xBBC0) >> 8)] ^ ((HIBYTE(v141) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v141) ^ 0x8A)]) ^ (*&v109[4 * (v137 ^ 0xF7)] - (v137 ^ 0x21C1765E));
  v146 = (v142 ^ 0x179F0454) >> 24;
  v147 = *&v105[4 * (v146 ^ 0x8A)];
  v148 = (v146 ^ 0xA095C521) - 745719458;
  v149 = v145 ^ 0x7DDF413F;
  v150 = (*&v107[4 * ((v145 ^ 0x7DDF413F) >> 16)] - 1409877230) ^ *&v111[4 * (BYTE1(v144) ^ 0x1F)] ^ (v148 + v147) ^ (*&v109[4 * (v143 ^ 0xF5)] - (v143 ^ 0x21C1765C));
  v151 = (*&v107[4 * ((v142 ^ 0x179F0454) >> 16)] - 1409877230) ^ *&v111[4 * ((v145 ^ 0x413F) >> 8)] ^ ((((v143 ^ 0x75457125) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v143 ^ 0x75457125) >> 24) ^ 0x8A)]) ^ (*&v109[4 * (v144 ^ 0xC0)] - (v144 ^ 0x21C17669));
  v152 = *&v111[4 * (BYTE1(v142) ^ 0x53)];
  v153 = v152 ^ -v152 ^ (-1795874037 - (__ROR4__(__ROR4__(v152, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v154 = (*&v107[4 * (BYTE2(v143) ^ 0x39)] - 1409877230) ^ (*&v109[4 * (v145 ^ 0xEF)] - (v145 ^ 0x21C17646)) ^ ((((v144 ^ 0xAC254810) >> 24) ^ 0xA095C521) - 745719458 + *&v105[4 * (((v144 ^ 0xAC254810) >> 24) ^ 0x8A)]) ^ (((2 * v153) & 0x29EA4616) + (v153 ^ 0x94F5230B));
  v155 = (*&v107[4 * (BYTE2(v144) ^ 0x59)] - 1409877230) ^ *&v111[4 * (BYTE1(v143) ^ 0x26)] ^ ((HIBYTE(v149) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v149) ^ 0x8A)]) ^ (*&v109[4 * (v142 ^ 0x84)] - (v142 ^ 0x21C1762D));
  v156 = v150 ^ 0x8EBD9B97;
  v157 = v155 ^ 0x10CC86ED;
  v158 = v151 ^ 0xA3ECFAB3;
  v159 = *&v109[4 * (v151 ^ 0x63)] - (v151 ^ 0x21C176CA);
  v160 = (*&v107[4 * ((v155 ^ 0x10CC86ED) >> 16)] - 1409877230) ^ ((HIBYTE(v156) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v156) ^ 0x8A)]) ^ 0x94F5230B ^ *&v111[4 * (BYTE1(v154) ^ 0xC2)];
  v161 = (v160 ^ -v160 ^ (v159 - (v160 ^ v159))) + v159;
  v162 = v154 ^ 0x8CA395FC;
  if (((v154 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v163 = -16;
  }

  else
  {
    v163 = 16;
  }

  v164 = (*&v107[4 * (BYTE2(v150) ^ 0xC1)] - 1409877230) ^ *&v111[4 * ((v155 ^ 0x86ED) >> 8)] ^ ((HIBYTE(v158) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v158) ^ 0x8A)]) ^ (*&v109[4 * ((v163 + v162) ^ 0xC0)] - ((v163 + v162) ^ 0x21C17669));
  v165 = ((HIBYTE(v162) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v162) ^ 0x8A)]) ^ (*&v107[4 * BYTE2(v158)] - 1409877230) ^ *&v111[4 * BYTE1(v156)] ^ (*&v109[4 * (v155 ^ 0x3D)] - (v155 ^ 0x21C17694));
  v166 = ((HIBYTE(v157) ^ 0xA095C521) - 745719458 + *&v105[4 * (HIBYTE(v157) ^ 0x8A)]) ^ *&v111[4 * (BYTE1(v151) ^ 0xAD)] ^ (*&v109[4 * (v150 ^ 0x47)] - (v150 ^ 0x21C176EE));
  v167 = *&v107[4 * (BYTE2(v154) ^ 0xDF)] - 1409877230;
  v168 = *(&off_28407CFD0 + (HIDWORD(v222) ^ 0x6DF)) - 12;
  v169 = *&v168[4 * (HIBYTE(v161) ^ 0xBE)];
  v170 = *&v168[4 * (HIBYTE(v164) ^ 0x43)];
  v171 = *&v168[4 * (HIBYTE(v165) ^ 0xD5)];
  v172 = v167 ^ v166;
  LODWORD(v222) = *&v168[4 * ((v172 ^ 0x66EB169Au) >> 24)];
  v173 = *(&off_28407CFD0 + HIDWORD(v222) - 1658) - 4;
  v174 = *&v173[4 * ((v172 ^ 0x66EB169Au) >> 16)];
  v175 = *&v173[4 * (BYTE2(v161) ^ 0xBF)];
  v176 = *&v173[4 * (BYTE2(v164) ^ 0x20)];
  v177 = v165 ^ 0xC4;
  v178 = *&v173[4 * ((v165 ^ 0x6CCB3DC4) >> 16)];
  v179 = *(&off_28407CFD0 + HIDWORD(v222) - 1739);
  v180 = v171 ^ ((v172 ^ 0x9A) - 1352815326) ^ *(v179 + 4 * (v172 ^ 0xAFu));
  v181 = *(&off_28407CFD0 + (HIDWORD(v222) ^ 0x6DC)) - 4;
  v182 = *&v181[4 * (BYTE1(v165) ^ 0x57)];
  v183 = *&v181[4 * (BYTE1(v172) ^ 0x7C)];
  v184 = ~v161;
  v185 = *&v181[4 * ((v161 ^ 0x84FF) >> 8)];
  v186 = *&v181[4 * (BYTE1(v164) ^ 0x2D)];
  v187 = v164;
  v188 = *(v179 + 4 * (v164 ^ 0x91u));
  v189 = *(v179 + 4 * (v165 ^ 0xF1u));
  v190 = *(v179 + 4 * (v161 ^ 0xCAu));
  LODWORD(v179) = v180 ^ v185 ^ ((v176 ^ 0x4D522762u) >> 2) ^ ((v176 ^ 0x4D522762u) >> 5);
  v191 = v176 ^ 0x4D522762 ^ v223 ^ (v179 - ((2 * v179) & 0xDD3A373C) + 1855789982);
  v192 = *(&off_28407CFD0 + HIDWORD(v222) - 1687) - 8;
  v213[8] = (-97 * v192[HIBYTE(v191) ^ 0x4CLL]) ^ ((-97 * v192[HIBYTE(v191) ^ 0x4CLL]) >> 5) ^ ((-97 * v192[HIBYTE(v191) ^ 0x4CLL]) >> 1) ^ 0xD4;
  v193 = v170 ^ (v177 - 1352815326) ^ v183 ^ v175 ^ 0x4D522762 ^ v189 ^ ((v175 ^ 0x4D522762u) >> 2) ^ ((v175 ^ 0x4D522762u) >> 5);
  v194 = (v193 - ((2 * v193) & 0xDAD1C25A) + 1835589933) ^ v224;
  v213[4] = (-97 * v192[HIBYTE(v194) ^ 0x61]) ^ ((-97 * v192[HIBYTE(v194) ^ 0x61]) >> 5) ^ ((-97 * v192[HIBYTE(v194) ^ 0x61]) >> 1) ^ 0xD8;
  v195 = *(&off_28407CFD0 + (HIDWORD(v222) & 0xCC235990)) - 12;
  v213[10] = ((((((v191 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v191 ^ 0xD2C1) >> 8) ^ 0xDA) + v195[((v191 ^ 0xD2C1) >> 8) ^ 0x6CLL]) ^ 0xB3;
  v196 = *(&off_28407CFD0 + (HIDWORD(v222) ^ 0x6D9)) - 8;
  LOBYTE(v185) = v196[((((v191 ^ 0xA619D2C1) >> 16) ^ -((v191 ^ 0xA619D2C1) >> 16) ^ (510 - ((v191 ^ 0xA619D2C1) >> 16) - ((2 * ((v191 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v197 = ((((v191 ^ 0xA619D2C1) >> 16) ^ -((v191 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v191 ^ 0xA619D2C1) >> 16) - ((2 * ((v191 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v198 = (v197 & 8 & v185) == 0;
  v199 = v197 & 8 ^ v185;
  v200 = v185 - (v197 & 8);
  v201 = LODWORD(STACK[0x308]);
  if (v198)
  {
    v200 = v199;
  }

  v213[9] = v200 ^ v197 & 0xF7;
  v202 = ((v187 ^ 0xA4) - 1352815326) ^ v182 ^ v169 ^ v188 ^ ((((v174 ^ 0x4D522762u) >> (v124 & 3) >> (v124 & 3 ^ 3)) ^ v174 ^ 0x4D522762) >> 2);
  v203 = v174 ^ 0x4D522762 ^ LODWORD(STACK[0x288]) ^ (v202 - ((2 * v202) & 0x51C2AA68) + 685856052);
  v204 = v222 ^ (v184 - 1352815326) ^ v178 ^ 0x4D522762 ^ v186 ^ ((v178 ^ 0x4D522762u) >> 2) ^ ((v178 ^ 0x4D522762u) >> 5) ^ v190;
  v213[STACK[0x260]] = (v195[BYTE1(v194) ^ 0x94] + (((BYTE1(v194) ^ 0x22) + 99) ^ BYTE1(v194) ^ 0x22)) ^ 0xA8;
  HIDWORD(v205) = ((v204 ^ 0x23A4540) + 4951688 - 2 * ((v204 ^ 0x23A4540) & 0x4B8E99 ^ v204 & 0x11)) ^ LODWORD(STACK[0x2D0]);
  LODWORD(v205) = ((v204 ^ 0x23A4540) + 1682673288 - 2 * ((v204 ^ 0x23A4540) & 0x644B8E9A ^ v204 & 0x12)) ^ LODWORD(STACK[0x2D0]);
  v213[5] = BYTE2(v194) ^ 0x9E ^ v196[BYTE2(v194) ^ 0xD5];
  v206 = *(&off_28407CFD0 + HIDWORD(v222) - 1642) - 8;
  v207 = v206[v203 ^ 0xE7] - 24;
  HIDWORD(v205) = (v205 >> 24) ^ 0x8829CA87;
  LODWORD(v205) = HIDWORD(v205);
  v208 = v205 >> 8;
  v213[LODWORD(STACK[0x278])] = v207 ^ 0x5D ^ (v207 >> 1) & 0x1E;
  v213[12] = (-97 * v192[HIBYTE(v208) ^ 0x60]) ^ ((-97 * v192[HIBYTE(v208) ^ 0x60]) >> 5) ^ ((-97 * v192[HIBYTE(v208) ^ 0x60]) >> 1) ^ 0xFE;
  v209 = v206[((180 - (v191 ^ 0x56) + (v191 ^ 0xE2) - 2 * ((180 - (v191 ^ 0x56)) & (v191 ^ 0xE2))) ^ -(v191 ^ 0xE2)) + 180] - 24;
  v213[STACK[0x2C8]] = v209 ^ 0x62 ^ (v209 >> 1) & 0x1E;
  v213[STACK[0x2D8]] = (v195[((HIDWORD(v205) >> 8) >> 8) ^ 0x4FLL] + (((((HIDWORD(v205) >> 8) >> 8) ^ 0xF9) + 99) ^ ((HIDWORD(v205) >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  v213[2] = (v195[BYTE1(v203) ^ 0x1FLL] + (((BYTE1(v203) ^ 0xA9) + 99) ^ BYTE1(v203) ^ 0xA9)) ^ 0x84;
  v210 = v206[v194 ^ 0xDDLL];
  v213[STACK[0x2E0]] = (((v210 + ((v210 - 24) ^ 0xAE) - 23) ^ 0xFE) + v210 - 24) ^ ((v210 - 24) >> 1) & 0x1E;
  LOBYTE(v210) = -97 * v192[HIBYTE(v203) ^ 0x67];
  *v213 = v210 ^ (v210 >> 5) ^ (v210 >> 1) ^ 0xE1;
  v213[STACK[0x300]] = BYTE2(v208) ^ 0x8E ^ v196[BYTE2(v208) ^ 0x55];
  v213[STACK[0x290]] = BYTE2(v203) ^ 0xD3 ^ v196[BYTE2(v203) ^ 0x7DLL];
  LOBYTE(v206) = v206[BYTE5(v205) ^ 0xF7] - 24;
  v213[STACK[0x220]] = v206 ^ ((v206 & (v206 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v54 + 8 * ((23 * (v201 > 0x13F)) ^ HIDWORD(v222))))(HIDWORD(v222), 2942151970, v188, &off_28407CFD0, 249, 164, v201, v213, a6, a7, a8, a9, a10, a1, a12, a13, a14, a15, a16, v213, v214, v215, v216, v60, 0x2EFFFFFF8CLL, v217, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, v218, v219, v220, v221, v222, 4);
}

void sub_22D30977C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = 1388665877 * (((a1 | 0x37BF73D7) - (a1 & 0x37BF73D7)) ^ 0xBA12113B);
  v2 = *(a1 + 48) - v1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5 = 742307843 * ((2 * ((v9 ^ 0x4E936EDF) & 0x2DFAC602) - (v9 ^ 0x4E936EDF) + 1376074237) ^ 0x2B4DA77);
  v6 = (*(a1 + 44) ^ v1) - v5;
  v7 = -1296686805 * (*(a1 + 16) ^ v1);
  v9[1] = *(a1 + 56);
  v9[2] = v3;
  v12 = v4;
  v14 = v6 + 543731998;
  v10 = v7 - v5 - 1084092442;
  v11 = v2 + 1421512341 + v5;
  v9[0] = v4;
  v8 = *(&off_28407CFD0 + v2 - 101) - 8;
  (*&v8[8 * v2 + 16272])(v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D309900@<X0>(int a1@<W8>)
{
  v4 = (v1 - 1035336572) & 0x3DB5F536;
  v5 = v2 + a1;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return (*(v3 + 8 * (((v6 <= 2 * (v4 ^ 0x221) - 1516) * (((v4 + 563) | 0x412) ^ 0x767)) ^ v4)))();
}

uint64_t sub_22D309960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = STACK[0x460];
  v7 = LODWORD(STACK[0x55C]);
  STACK[0x488] = *(v3 + 8 * (v4 - 907));
  STACK[0x4F8] = ((v4 - 1) ^ 0xFFFFFFFFFFFFFF6FLL) + STACK[0x260] + ((v4 + 1194921987) & 0xB8C6EFFC);
  STACK[0x360] = v6;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(v3 + 8 * ((22 * v9) ^ (v4 - 1))))(a1, a2, a3, v7);
}

uint64_t sub_22D309994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (v7 <= v8 - v9)
  {
    v11 = v8 - v9;
  }

  else
  {
    v11 = v7;
  }

  return (*(v10 + 8 * ((((((a7 + 421655705) & 0xE6DE0CF4) - 299) ^ 0x2CE) * ((v11 + 1) > 0x23)) ^ a7)))(a1, a2, a3, 0);
}

uint64_t sub_22D3099E8(int8x16_t *a1, int8x16_t a2, double a3, double a4, int8x16_t a5)
{
  v10 = (v7 + v6);
  v11 = vaddq_s8(vsubq_s8(v10[1], vandq_s8(vaddq_s8(v10[1], v10[1]), a5)), a2);
  *a1 = vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a5)), a2);
  a1[1] = v11;
  return (*(v8 + 8 * (((v5 == 1515) * v9) ^ v5)))();
}

uint64_t sub_22D309AC0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = (v3 ^ 0xCF) + *(a1 + v5) - ((2 * *(a1 + v5)) & 0x64) + 61;
  return (*(v4 + 8 * ((112 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_22D309B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v23 = (v20 - 562) | 0x450;
  v24 = 1785193651 * ((v22 + 1766605422 - 2 * ((v22 - 136) & 0x694C42F6)) ^ 0x7A90AED6);
  *(v22 - 128) = v20 - v24 + 454;
  *(v22 - 124) = (v21 ^ 0x7FBD1A97) - v24 + ((v23 - 8769486) & (2 * v21)) - 287314055;
  *(v22 - 136) = &a17;
  (*(v19 + 8 * (v20 + 1521)))(v22 - 136);
  *(v22 - 120) = a15;
  *(v22 - 128) = v23 - 143681137 * (((v18 | (v22 - 136)) - ((v22 - 136) & v18)) ^ 0xBB00B646) + 15;
  *(v22 - 136) = a16;
  v25 = (*(v19 + 8 * (v23 ^ 0xC47)))(v22 - 136);
  return (*(v19 + 8 * ((477 * (*(v22 - 112) > ((v17 + 20 * (v23 ^ 0x4F6) - 136) ^ (v23 - 178056710) & 0xA9CE9C9u))) ^ v23)))(v25);
}

uint64_t sub_22D309CDC()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 + dword_27D9FC1E0) ^ 0xF9)) ^ byte_22D5B2B40[byte_22D5AF0D0[(107 * ((qword_27D9FC1D8 + dword_27D9FC1E0) ^ 0xF9))] ^ 0x1A]) + 30);
  v1 = *(v0 - 4);
  v2 = off_28407D5B0 - 4;
  v3 = off_28407D420 - 8;
  v4 = *(&off_28407CFD0 + (*(off_28407D420 + (*(off_28407D5B0 + (107 * (v1 ^ qword_27D9FC1D8 ^ 0xF9)) - 4) ^ 0x16u) - 8) ^ (107 * (v1 ^ qword_27D9FC1D8 ^ 0xF9))) - 184);
  v5 = &v7[v1 + *(v4 - 4)];
  *(v0 - 4) = 1010482283 * v5 - 0x29E5798DF8B489EDLL;
  *(v4 - 4) = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  v9 = (1785193651 * ((-2039063195 - (&v8 | 0x86765D65) + (&v8 | 0x7989A29A)) ^ 0x6A554EBA)) ^ 0x2C2;
  LOBYTE(v5) = 107 * (*(v0 - 4) ^ 0xF9 ^ *(v4 - 4));
  v8 = *(&off_28407CFD0 + (*(off_28407D240 + (*(off_28407D378 + v5 - 4) ^ 0xB3u) - 12) ^ v5) - 107);
  LOBYTE(v0) = 107 * ((*(v4 - 4) - *(v0 - 4)) ^ 0xF9);
  return (*(*(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 + dword_27D9FC1E0) ^ 0xF9)) ^ byte_22D5AF1D0[byte_22D5A9F30[(107 * ((qword_27D9FC1D8 + dword_27D9FC1E0) ^ 0xF9))] ^ 0xCD]) - 1) + (v0 ^ v3[v2[v0] ^ 0x16]) + 2072))(&v8);
}

void sub_22D309F20(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D30A0F0()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xB3B)))();
  v4 = (v0 - 224);
  STACK[0x4F8] += v4 ^ 0xFFFFFFFFFFFFFD34;
  return (*(v1 + 8 * (v4 ^ (1761 * (v2 == -1261164275)))))(v3);
}

uint64_t sub_22D30A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  *v40 = v40[623] - (v41 - (v39 + 1500582225) >= ~(v39 + 1500582225));
  v43 = 1388665877 * ((0x59000D002C7ACF31 - ((v42 - 152) | 0x59000D002C7ACF31) + a36) ^ 0x938562B05E285222);
  v44 = v42 - 176;
  *(v44 + 56) = v43 ^ 3;
  *(v44 + 32) = (v38 + 1) - v43;
  *(v42 - 136) = a37 ^ v43 ^ 0x32;
  *(v42 - 132) = v43 + 1;
  *(v42 - 124) = v43 ^ 0xDFABAF92;
  *(v42 - 152) = a37 ^ v43;
  *(v42 - 148) = ((v39 + 1500582225) ^ 0xCE87E12) + v43;
  v45 = (*(v37 + 18216))(v42 - 152);
  return (*(v37 + 8 * *(v42 - 128)))(v45);
}

uint64_t sub_22D30A230(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v4 + 16);
  *(v6 - 112) = veorq_s8(**(v4 + 8), xmmword_22D5B62F0);
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = *(v3 + 8 * ((117 * v9) ^ a3));
  *(v6 - 140) = -42900;
  return v10(a1, a2);
}

uint64_t sub_22D30A2E8()
{
  *(v7 - 112) = v6 + 1082434553 * ((((2 * (v7 - 144)) | 0xBB2F7668) - (v7 - 144) - 1570224948) ^ 0xC6D04DBE) + 187;
  *(v7 - 128) = v1;
  *(v7 - 120) = v2;
  *(v7 - 144) = v3;
  *(v7 - 136) = v1;
  (*(v4 + 8 * (v6 + 505)))(v7 - 144);
  v8 = 2066391179 * ((((v7 - 144) | 0x5C2D82AF) - ((v7 - 144) & 0x5C2D82AF)) ^ 0xF30A00B7);
  *(v7 - 144) = v8 + v6 - 1219;
  *(v7 - 128) = (v6 - 1469 + v5 + 718822813) ^ v8;
  *(v7 - 136) = v0;
  v9 = (*(v4 + 8 * (v6 + 497)))(v7 - 144);
  return (*(v4 + 8 * (v6 ^ (16 * (*(v7 - 140) != 262715241)))))(v9);
}

uint64_t sub_22D30A3E0()
{
  v4 = (v0 - 1650) | 0x441;
  v5 = v4 ^ 0x7E5;
  (*(v2 + 8 * (v4 ^ 0xC86)))(*STACK[0x280], STACK[0x448], LODWORD(STACK[0x430]));
  v6 = LODWORD(STACK[0x504]);
  v7 = 1564307779 * ((~v1 & 0xD47784044BE05D52 | v1 & 0x2B887BFBB41FA2ADLL) ^ 0xF1B4707EDCED9141);
  *(v3 - 184) = v7;
  *(v3 - 180) = ((v5 - 1668183303) ^ 0x90) + v7;
  *(v3 - 208) = v7 ^ 0x4B2B72D7;
  *(v3 - 192) = v6 + v7;
  *(v3 - 176) = v5 - v7 - 2030745604;
  *(v3 - 216) = v5 - 1668183303 - v7;
  *(v3 - 212) = ((v5 - 1668183303) ^ 0x13) + v7;
  v8 = (*(v2 + 8 * (v5 + 1329)))(v3 - 216);
  return (*(v2 + 8 * *(v3 - 200)))(v8);
}

uint64_t sub_22D30A4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v72 = v22 - 180;
  v62 = *(v17 + 8 * (v15 + 14));
  v64 = STACK[0x298];
  v65 = STACK[0x29C];
  v66 = LOBYTE(STACK[0x2A8]);
  if (v66 == 2)
  {
    v69 = &STACK[0x248] + v18 + 385662593;
    v70 = ((*v69 ^ v21) << 24) | ((v69[1] ^ v21) << 16) | ((v69[2] ^ v21) << 8);
    *v16 = (v70 | v69[3] ^ v21) + v20 - 2 * ((v70 | v69[3] ^ v21) & 0x34D4291D ^ (v69[3] ^ v21) & 0x10);
    v71 = *(v17 + 8 * ((244 * ((v18 + 385662597) < 0x40)) ^ (a4 + 595)));
    return v71(385662597, v71, 96415648, v19 + 16, 1, 2666282502, a7, a8, a9, a10, a11, v72);
  }

  else if (v66 == 1)
  {
    v67 = &STACK[0x248] + v18 + 385662593;
    v68 = *v67 ^ v21;
    LODWORD(v67) = ((v67[2] ^ (a4 + 22)) << 16) | ((v67[3] ^ v21) << 24) | v68 | ((v67[1] ^ v21) << 8);
    *v16 = v67 + v20 - 2 * (v67 & 0x34D4291D ^ v68 & 0x10);
    return (*(v17 + 8 * ((495 * ((v18 + 385662597) > 0x3F)) ^ (a4 + 212))))(1410334720, (a4 + 259), 1949302784, a4, 385662593, 873474085, a7, a8, a9, a10, a11, v72, a13, a14, a15);
  }

  else
  {
    v63 = STACK[0x290];
    v23 = (((v63 ^ 0x55601DD4) - 1432362452) ^ ((v63 ^ 0x35DB3517) - 903558423) ^ ((v63 ^ 0x36DE79BF) - 920549823)) + (((v63 ^ 0xC4B40806) + 994834426) ^ ((v63 ^ 0x796A6CB) - 127313611) ^ ((v63 ^ 0x9547FFB1) + 1790443599)) + 735391447;
    v24 = (v23 ^ 0x40F57099) & (2 * (v23 & 0x80F57421)) ^ v23 & 0x80F57421;
    v25 = ((2 * (v23 ^ 0x40BF389B)) ^ 0x80949974) & (v23 ^ 0x40BF389B) ^ (2 * (v23 ^ 0x40BF389B)) & 0xC04A4CBA;
    v26 = v25 ^ 0x404A448A;
    v27 = v25 & (4 * v24) ^ v24;
    v28 = ((4 * v26) ^ 0x12932E8) & v26 ^ (4 * v26) & 0xC04A4CB8;
    v29 = (v28 ^ 0x800A0) & (16 * v27) ^ v27;
    v30 = ((16 * (v28 ^ 0xC0424C12)) ^ 0x4A4CBA0) & (v28 ^ 0xC0424C12) ^ (16 * (v28 ^ 0xC0424C12)) & 0xC04A4CB0;
    v31 = v29 ^ 0xC04A4CBA ^ (v30 ^ 0x4800) & (v29 << 8);
    v32 = v23 ^ (2 * ((v31 << 16) & 0x404A0000 ^ v31 ^ ((v31 << 16) ^ 0x4CBA0000) & (((v30 ^ 0xC04A041A) << 8) & 0xC04A0000 ^ (((v30 ^ 0xC04A041A) << 8) ^ 0x4A4C0000) & (v30 ^ 0xC04A041A) ^ 0x20000))) ^ 0xD610BC29;
    v33 = (((LODWORD(STACK[0x294]) ^ 0x99A47EEC) + 1717272852) ^ ((LODWORD(STACK[0x294]) ^ 0x58BAE192) - 1488642450) ^ ((LODWORD(STACK[0x294]) ^ 0x977BCE02) + 1753494014)) + (((LODWORD(STACK[0x294]) ^ 0x8CD9855D) + 1931901603) ^ ((LODWORD(STACK[0x294]) ^ 0xEAE18A7) - 246290599) ^ ((LODWORD(STACK[0x294]) ^ 0xD412CC86) + 736965498)) - 832254577;
    v34 = (v33 ^ 0xDF659165) & (2 * (v33 & 0xDE65D569)) ^ v33 & 0xDE65D569;
    v35 = ((2 * (v33 ^ 0xD7E699F5)) ^ 0x13069938) & (v33 ^ 0xD7E699F5) ^ (2 * (v33 ^ 0xD7E699F5)) & 0x9834C9C;
    v36 = v35 ^ 0x8814484;
    v37 = (v35 ^ 0x1020808) & (4 * v34) ^ v34;
    v38 = ((4 * v36) ^ 0x260D3270) & v36 ^ (4 * v36) & 0x9834C9C;
    v39 = (v38 ^ 0x10010) & (16 * v37) ^ v37;
    v40 = ((16 * (v38 ^ 0x9824C8C)) ^ 0x9834C9C0) & (v38 ^ 0x9824C8C) ^ (16 * (v38 ^ 0x9824C8C)) & 0x9834C90;
    v41 = v39 ^ 0x9834C9C ^ (v40 ^ 0x8004800) & (v39 << 8);
    LODWORD(STACK[0x290]) = v32;
    LODWORD(STACK[0x294]) = v33 ^ (2 * ((v41 << 16) & 0x9830000 ^ v41 ^ ((v41 << 16) ^ 0x4C9C0000) & (((v40 ^ 0x183041C) << 8) & 0x9830000 ^ 0x8830000 ^ (((v40 ^ 0x183041C) << 8) ^ 0x34C0000) & (v40 ^ 0x183041C)))) ^ 0x8A061D2D;
    v42 = (((v64 ^ 0x93C0EE49) + 1816072631) ^ ((v64 ^ 0x3DB51B45) - 1035279173) ^ ((v64 ^ 0xF810A470) + 133127056)) + (((LODWORD(STACK[0x298]) ^ 0xACCD1FF) - 181195263) ^ ((LODWORD(STACK[0x298]) ^ 0x9C012D58) + 1677644456) ^ ((LODWORD(STACK[0x298]) ^ 0xC0A8ADDB) + 1062687269)) + 442704197;
    v43 = (v42 ^ 0x405729B3) & (2 * (v42 & 0x926781B3)) ^ v42 & 0x926781B3;
    v44 = ((2 * (v42 ^ 0x60DC2BF3)) ^ 0xE5775480) & (v42 ^ 0x60DC2BF3) ^ (2 * (v42 ^ 0x60DC2BF3)) & a8;
    v45 = v44 ^ 0x1288AA40;
    v46 = (v44 ^ 0xC0320000) & (4 * v43) ^ v43;
    v47 = ((4 * v45) ^ 0xCAEEA900) & v45 ^ (4 * v45) & a8;
    v48 = v46 ^ a8 ^ (v47 ^ 0xC2AAA800) & (16 * v46);
    v49 = (16 * (v47 ^ 0x30110240)) & a8 ^ 0xD0010A40 ^ ((16 * (v47 ^ 0x30110240)) ^ 0x2BBAA400) & (v47 ^ 0x30110240);
    v50 = (v48 << 8) & (a8 - 64) ^ v48 ^ ((v48 << 8) ^ 0xBBAA4000) & v49;
    v51 = v42 ^ (2 * ((v50 << 16) & 0x72BB0000 ^ v50 ^ ((v50 << 16) ^ 0x2A400000) & ((v49 << 8) & 0x72BB0000 ^ 0x40110000 ^ ((v49 << 8) ^ 0xBBAA0000) & v49))) ^ 0x21844F;
    v52 = (((v65 ^ 0xEC2572C6) + 333090106) ^ ((v65 ^ 0x81C580AB) + 2117762901) ^ ((v65 ^ 0x3B85A311) - 998613777)) + (((LODWORD(STACK[0x29C]) ^ 0x2F737A79) - 796097145) ^ ((LODWORD(STACK[0x29C]) ^ 0x3BA50878) - 1000671352) ^ ((LODWORD(STACK[0x29C]) ^ 0x42B3237D) - 1119036285)) + 742876381;
    v53 = (v52 ^ 0xA8A2BF92) & (2 * (v52 & 0x80833E1B)) ^ v52 & 0x80833E1B;
    v54 = ((2 * (v52 ^ 0xA8A48F92)) ^ 0x504F6312) & (v52 ^ 0xA8A48F92) ^ (2 * (v52 ^ 0xA8A48F92)) & 0x2827B188;
    v55 = v54 ^ 0x28209089;
    v56 = (v54 ^ 0x52000) & (4 * v53) ^ v53;
    v57 = ((4 * v55) ^ 0xA09EC624) & v55 ^ (4 * v55) & 0x2827B188;
    v58 = (v57 ^ 0x20068000) & (16 * v56) ^ v56;
    v59 = ((16 * (v57 ^ 0x8213189)) ^ 0x827B1890) & (v57 ^ 0x8213189) ^ (16 * (v57 ^ 0x8213189)) & 0x2827B180;
    v60 = v58 ^ 0x2827B189 ^ (v59 ^ 0x231000) & (v58 << 8);
    LODWORD(STACK[0x298]) = v51;
    LODWORD(STACK[0x29C]) = v52 ^ (2 * ((v60 << 16) & 0x28270000 ^ v60 ^ ((v60 << 16) ^ 0x31890000) & (((v59 ^ 0x2804A109) << 8) & 0x28270000 ^ 0x8060000 ^ (((v59 ^ 0x2804A109) << 8) ^ 0x27B10000) & (v59 ^ 0x2804A109)))) ^ 0xC6AB0C75;
    return v62(3148480512, 3226094778, 3226075136, a4, a5, a6, a7, a8, a9, a10, a11, v72, a13, a14, a15);
  }
}

uint64_t sub_22D30A504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2 - 16);
  *(a1 + a2 - 32) = *(v3 + a2 - 32);
  *(a1 + a2 - 16) = v5;
  return (*(v4 + 8 * ((477 * ((((a2 & 0xFFFFFFE0) == 32) ^ (27 * (v2 ^ 0xB5))) & 1)) ^ (v2 - 180))))();
}

uint64_t sub_22D30A740()
{
  v2 = (*(v0 + 8 * (v1 ^ 0xB93)))(1576, 0x105004009637391);
  STACK[0x378] = v2;
  return (*(v0 + 8 * (((v2 == 0) * (201 * (v1 ^ 0x3E6) + ((v1 + 1483308059) & 0xA79683A4) - 1305)) ^ v1)))();
}

uint64_t sub_22D30A840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v20 + 76 + 742307843 * ((~((v21 - 136) ^ 0x66D1BF4E | 0xA2B0F45B) + (((v21 - 136) ^ 0x66D1BF4E) & 0xA2B0F45B)) ^ 0x25BC39BF) + 1309;
  *(v21 - 136) = &a17;
  *(v21 - 120) = v19;
  v22 = (*(v17 + 8 * ((v20 + 76) ^ 0x93F)))(v21 - 136);
  return (*(v17 + 8 * (((v18 == ((v20 - 141) ^ 0xC4)) * (v20 + 424)) ^ (v20 + 76))))(v22);
}

uint64_t sub_22D30A8EC@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W8>)
{
  v9 = *(*(v3 + 8) + 4 * v8);
  *(*(a1 + 8) + (v4 + a3)) = ((v7 + a2 + 80) ^ v9) - ((2 * ((v7 + a2 + 80) ^ v9)) & 0x64) + 50;
  return (*(v5 + 8 * ((a2 - 203) ^ (1194 * (v4 - 1 == v6 + 741)))))();
}

uint64_t sub_22D30A90C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v4 ^ 0x11u) - 641 - 1325;
  *(v1 - 7 + (v6 ^ v3) + v2) = vadd_s8(vsub_s8(*(a1 - 7 + (v6 ^ v3) + v2), vand_s8(vadd_s8(*(a1 - 7 + (v6 ^ v3) + v2), *(a1 - 7 + (v6 ^ v3) + v2)), 0x6464646464646464)), 0x3232323232323232);
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFF8) - 8 != v3) | (16 * ((v2 & 0xFFFFFFF8) - 8 != v3))) ^ v4 ^ 0x11)))();
}

uint64_t sub_22D30A9F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_22D30AA08(uint64_t a1)
{
  v1 = 2066391179 * ((-2 - ((a1 | 0xDAF47D5D) + (~a1 | 0x250B82A2))) ^ 0x8A2C00BA);
  v2 = *a1 - v1;
  v3 = *(a1 + 16) ^ v1;
  v5 = v3 - 1714952872;
  v4 = v3 - 1714952872 < 0;
  v6 = 1714952872 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 1726767306;
  v4 = v7 - 1726767306 < 0;
  v9 = 1726767306 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_28407CFD0 + v2 - 406) + ((2478 * ((v6 >> 5) < v9)) ^ v2) - 1))();
}

uint64_t sub_22D30AB10(uint64_t result)
{
  v1 = 1361651671 * (((result | 0x43FE8A9C55C36F0ALL) - result + (result & 0xBC017563AA3C90F5)) ^ 0x9053F9A586E19F86);
  v2 = *(result + 40) - v1;
  v3 = *result ^ v1;
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = v4 + v1;
  v7 = v5 + v1;
  v8 = *(result + 32) + v1;
  v9 = *(result + 4) + v1;
  v10 = v5 != v4;
  if (v8)
  {
    v10 = v7 >= v6;
  }

  if (v10)
  {
    v2 = v3;
  }

  *(result + 36) = v2 ^ v9;
  return result;
}

uint64_t sub_22D30ABB8(uint64_t a1)
{
  v1 = *a1 - 1082434553 * ((994318387 - (a1 | 0x3B441833) + (a1 | 0xC4BBE7CC)) ^ 0x5FFC1146) + 506;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 1726768246;
  v3 = v2 - 1726768246 < 0;
  v5 = 1726768246 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_28407CFD0 + v1 - 869) + ((67 * (v5 > ((v1 - 506) ^ 0x1B2))) | v1) - 1))();
}

uint64_t sub_22D30AD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  v51 = STACK[0x530];
  STACK[0x458] = *(v50 + 8 * (STACK[0x340] - 846));
  v52 = STACK[0x290];
  STACK[0x5A8] = v51;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v52;
  return (*(v50 + 8 * ((11 * (((((a50 & 0x943EC3BB) + 457) ^ (((((a50 & 0x943EC3BB) + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v51 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ a50 & 0x943EC3BB)))();
}

uint64_t sub_22D30B1C0(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  a6.i64[0] = *(v11 + 4);
  a6.i32[2] = *(v11 + 12);
  v13 = vextq_s8(a1, a6, 0xCuLL);
  v14 = a6;
  v14.i32[3] = *(v11 + 16);
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, a3), vandq_s8(v13, a2)), 1uLL), *(v11 - 908));
  v13.i32[0] = *(v8 + 4 * (*(v11 + 4) & 1));
  v13.i32[1] = *(v8 + 4 * (*(v11 + 8) & v9));
  v13.i32[2] = *(v8 + 4 * (*(v11 + 12) & 1));
  v13.i32[3] = *(v8 + 4 * (v14.i8[12] & 1));
  *v11 = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a4)), a5), v13);
  return (*(v12 + 8 * (((v7 == 4) * v10) ^ v6)))();
}

void sub_22D30B254(int a1@<W8>)
{
  *v6 = *v2;
  *v5 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x219721AE219721AELL;
  v3 = *(v2 + 24);
  v4 = *(v2 + 20) | (((a1 - 679632203) & 0x28825FB7) - 914);
  *(v2 + 16) = 1941292484;
  *(v2 + 20) = v4;
  *v7 = v3;
}

void sub_22D30B810(_DWORD *a1)
{
  v1 = 1082434553 * ((2 * (a1 & 0x312F7059) - a1 - 825192538) ^ 0x5597792C);
  v2 = a1[1] ^ v1;
  v3 = *a1 ^ v1;
  v5 = (v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 637534208;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D30B8E4@<X0>(unsigned int a1@<W8>)
{
  v5 = a1 + 670899822 < v1 + 239256766;
  if (a1 > ((233 * (v2 ^ 0x381)) ^ (v4 + 164)) != v1 + 239256766 < (v2 + 670898921))
  {
    v5 = v1 + 239256766 < (v2 + 670898921);
  }

  return (*(v3 + 8 * ((1295 * v5) ^ v2)))();
}

uint64_t sub_22D30B95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, int a19, uint64_t a20, char *a21, int a22)
{
  v25 = 742307843 * ((&a17 + 532274142 - 2 * (&a17 & 0x1FB9DBDE)) ^ 0x19B568B);
  a19 = v24 - v25 - 1197042732;
  a17 = v25 - 1023075472;
  a22 = v25 ^ 0x20384770;
  a20 = a12;
  a21 = &a14;
  v26 = (*(v23 + 8 * (v24 + 1934)))(&a17);
  return (*(v23 + 8 * ((39 * (((((v24 ^ 0x1FC) + 330) ^ (a18 == v22)) & 1) == 0)) ^ v24)))(v26);
}

uint64_t sub_22D30BA64@<X0>(uint64_t a1@<X8>)
{
  v7 = STACK[0x4C4];
  v8 = ((-2138549497 - ((v6 - 216) | 0x80885307) + ((v6 - 216) | 0x7F77ACF8)) ^ 0xABD0B0A2) * v5;
  *(v6 - 216) = v1 - v8 - 2013066669;
  *(v6 - 208) = v4;
  *(v6 - 200) = a1;
  *(v6 - 192) = (v1 + 1066531512) * v3 - v8 + 541753075;
  *(v6 - 188) = v8 + 197060377 * v7 + 1275665887;
  v9 = STACK[0x2B8];
  *(v6 - 184) = STACK[0x2C0];
  *(v6 - 176) = v9;
  v10 = (*(v2 + 8 * (v1 ^ 0x859)))(v6 - 216);
  v11 = *(v6 - 212);
  LODWORD(STACK[0x504]) = v11;
  return (*(v2 + 8 * ((1896 * (v11 == -1261164275)) ^ v1)))(v10);
}

uint64_t sub_22D30BC20@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4E8]) = a1;
  v6 = (*(v2 + 8 * (v1 + 1346)))(v3 + 4, 0);
  v7 = v3[4] + 877119384 - ((2 * v3[4]) & 0x688F8F30);
  v3[1] = v3[6] + 877119384 - ((v3[6] << ((v1 ^ 3) + 93)) & 0x688F8F30);
  v3[2] = v7;
  v8 = (*(v2 + 8 * (v1 + 1309)))(v6);
  v3[3] = v8 + 877119384 - ((2 * v8) & 0x688F8F30);
  v9 = (*(v2 + 8 * (v1 ^ 0xB63)))();
  *v3 = v9 + 877119384 - ((2 * v9) & 0x688F8F30);
  v10 = (1664525 * (*v4 ^ (*v4 >> 30))) ^ v4[1];
  v4[1] = (((*v3 ^ 0xC5ACD47C) + 978529156) ^ ((*v3 ^ 0x7EAF2851) - 2125408337) ^ ((*v3 ^ 0x8F443BB5) + 1891353675)) + 1230503938 + (((v10 ^ 0xD31A3EAF) + 972421435) ^ ((v10 ^ 0x242A5BA1) - 825910219) ^ ((v10 ^ 0xF730650E) + 501195420));
  v11 = STACK[0x338];
  v12 = (v1 ^ 3) + 1853523700 - STACK[0x338];
  *(v5 - 216) = (((v1 ^ 3) + 1853523700) ^ 0x6D) - STACK[0x338];
  *(v5 - 188) = ((v1 ^ 3) + 1853523682) ^ v11;
  *(v5 - 184) = v11 + (v1 ^ 3) + 1212454636;
  *(v5 - 196) = v12;
  *(v5 - 192) = -v11;
  *(v5 - 208) = 2 - v11;
  *(v5 - 176) = v11 + 623;
  v13 = (*(v2 + 8 * ((v1 ^ 3) + 1296)))(v5 - 216);
  return (*(v2 + 8 * *(v5 - 200)))(v13);
}

uint64_t sub_22D30BE70()
{
  v4 = STACK[0x2F8] & 0x25D4833B;
  v5 = STACK[0x340] - 309;
  *v3 = v3[623] ^ v5 ^ 0x26E ^ (((v5 ^ v1) & v1) >> (__clz(v5 ^ v1 | 1) ^ 0x1F)) & 1;
  return (*(v0 + 8 * (((v2 + (v4 ^ 0xFFFFFDA8) + v5 == 1) * (v4 + 131)) ^ v4)))();
}

uint64_t sub_22D30BED0@<X0>(int a1@<W8>)
{
  v6 = v1 + 2;
  v7 = (v2 - 2);
  *v7 = ((v4 - 121) ^ v6) * (v6 + 17);
  *(v7 - 1) = (v6 ^ 0xBB) * (v6 + 18);
  return (*(v5 + 8 * ((62 * (v3 == 2)) ^ a1)))();
}

uint64_t sub_22D30BF90()
{
  v5 = 1785193651 * ((v4 - 216) ^ 0x13DCEC20);
  *(v4 - 216) = (v1 + 618) ^ v5;
  *(v4 - 200) = v0 - v5 + 1437952498;
  *(v4 - 208) = v3;
  v6 = (*(v2 + 8 * (v1 ^ 0xB7F)))(v4 - 216);
  return (STACK[0x458])(v6);
}

uint64_t sub_22D30C000@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = v3 - 1;
  STACK[0x470] = v8;
  *(a1 + v8) = (v2 + 1 + ((a2 - 124) ^ v5)) * ((v2 + 1) ^ v4);
  return (*(v7 + 8 * (((v8 == 0) * v6) ^ a2)))();
}

uint64_t sub_22D30C00C()
{
  v10.val[1].i64[0] = (v3 + 13) & 0xF;
  v10.val[1].i64[1] = (v3 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + 9) & 0xF;
  v10.val[3].i64[1] = v3 & 0xF ^ 8;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v7 = vqtbl4q_s8(v11, xmmword_22D5B62D0).u64[0];
  v8.i64[0] = 0x7373737373737373;
  v8.i64[1] = 0x7373737373737373;
  v10.val[0].i64[0] = (v3 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.val[2].i64[0] = vqtbl4q_s8(v10, xmmword_22D5B62D0).u64[0];
  v11.val[2].i64[1] = v7;
  v11.val[0] = vrev64q_s8(vmulq_s8(v11.val[2], v8));
  *(v6 - 15 + v3 - 1) = veorq_s8(veorq_s8(veorq_s8(*(v0 + v10.val[0].i64[0] - 15), *(v6 - 15 + v3 - 1)), veorq_s8(*(v1 + v10.val[0].i64[0] - 15), *(v10.val[0].i64[0] + v2 - 14))), vextq_s8(v11.val[0], v11.val[0], 8uLL));
  return (*(v5 + 8 * ((1102 * (((v4 + 689) | 0x32Eu) - 2014 == (v3 & 0x10))) ^ v4)))();
}

uint64_t sub_22D30C258(int a1)
{
  v7 = *(v3 + 8 * (v5 - 872));
  v8 = *v1;
  *(*v1 + (a1 + 1507321841)) = 50;
  *(v8 + (a1 + 1507321842)) = (v2 ^ 0x31) - (v6 & (2 * (v2 ^ 0x31))) + 50;
  *(v8 + (a1 + 1507321843)) = 50;
  *(v8 + (a1 + 1507321844)) = v4 ^ 0x10;
  return v7();
}

void sub_22D30C29C(uint64_t a1)
{
  v1 = 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_22D30C3D8@<X0>(int a1@<W4>, unsigned int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v17 = ((a3 | 0x224) + 2138466600) & 0x8089925D;
  v18 = a16 - 1431841876 < (a1 + 1519336754);
  if (a16 - 1431841876 < a2 != a1 + 1519336754 < a2)
  {
    v18 = a1 + 1519336754 < a2;
  }

  return (*(v16 + 8 * ((v18 * (v17 ^ 0x4A7 ^ (v17 - 249) ^ 0x78B)) | v17)))();
}

uint64_t sub_22D30C408@<X0>(int a1@<W8>)
{
  v6 = ((1815990229 - (&v8 | 0x6C3DCFD5) + (&v8 | 0x93C2302A)) ^ 0x801EDC0A) * a1;
  v8 = 1332270173 - v6;
  v11 = v1 - v6;
  v12 = v2 - v6 - 1251;
  v9 = 0;
  v10 = v4;
  result = (*(v5 + 8 * (v2 + 677)))(&v8);
  *v3 = *(v4 + 24);
  return result;
}

uint64_t sub_22D30C52C(int a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 & (((a8 + 136347067) | 0x67441433) - 1291370273) ^ (a2 ^ 0x8BF17611) & (v15 ^ v12) ^ 0xFD9EAFEF;
  v17 = *(v8 + 4 * (*(a5 + v10 + v13) - 45));
  v18 = (((a1 ^ 0xB00A3755) + 1341507755) ^ ((a1 ^ 0x7BEE1768) - 2079201128) ^ ((a1 ^ 0x9D817141) + 1652461247)) + *(a4 + 4 * (v10 + v13)) + ((v16 + v12 - ((2 * v16) & 0xACCAA2F8)) ^ v9) + 1136349886 + (((v17 ^ 0x77A1754) - 125441876) ^ ((v17 ^ 0x73840A08) - 1938033160) ^ ((v17 ^ 0xC02A3451) + 1070975919));
  v19 = *(a7 + v10 + v13);
  LOBYTE(v17) = (v19 + 22) ^ 0x2A;
  v20 = v17 & (2 * ((-23 - v19) & 0xD8)) ^ (-23 - v19) & 0xD8;
  v21 = v18 ^ ((v18 ^ 0x18931DA0) - 1644676847) ^ ((v18 ^ 0x4AC2BC1C) - 810968915) ^ ((v18 ^ 0x563A8104) - 749623883) ^ ((v18 ^ 0x7EFFFBF7) - 74129592) ^ 0x7A94DB4F;
  v22 = (((a2 ^ 0x71197385) - 1897493381) ^ ((a2 ^ 0xC83826B5) + 935844171) ^ ((a2 ^ 0xEF44044C) + 280755124)) - 1116590020 + ((v21 << (((v19 + 22) ^ (2 * (((2 * v17) ^ 0xE0) & v17 & (4 * v20) ^ v20))) & 0x1F ^ 8)) | (v21 >> (a3 - v19)));
  return (*(v11 + 8 * ((959 * (v10 + 1 == v14 + 48)) ^ a8)))(v15, v22 ^ ((v22 ^ 0xA2EAFD52) + 974773358) ^ ((v22 ^ 0xC0DF2F72) + 1479282254) ^ ((v22 ^ 0xF85EF31F) + 1622004257) ^ ((v22 ^ 0xFD67FFFF) + 1704255169) ^ 0x31698FBC);
}

uint64_t sub_22D30C85C()
{
  v4 = *(v2 + 8 * (((v0 == 24) * ((v1 + 574) ^ 0x5ED)) | v1));
  STACK[0x308] = *(v3 + 8 * (v1 - 327));
  STACK[0x300] = *(v3 + 8 * (v1 ^ 0x123)) - 4;
  return v4();
}

uint64_t sub_22D30C868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  *(v18 - 120) = &a12;
  *(v18 - 136) = &a14;
  *(v18 - 128) = v17 - ((182870043 - ((v18 - 136) | 0xAE6601B) + ((v18 - 136) | 0xF5199FE4)) ^ 0x21BE83BE) * v16 - 215;
  v19 = (*(v14 + 8 * (v17 ^ 0xD59)))(v18 - 136);
  return (*(v14 + 8 * ((772 * (*(v18 - 112) + v15 < ((19 * (v17 ^ 0x5AD)) ^ ((v17 ^ 0x293u) - 1058487692)))) ^ v17)))(v19);
}

void sub_22D30CB00(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a3[3] ^ 0x32;
  v6 = (((*a3 ^ 0x32) << (((a1 + 40) | 0xC) ^ 0x14)) + ((a3[1] ^ 0x32) << 16) + ((a3[2] ^ 0x32) << 8)) | v5;
  **(v3 + 8) = v6 + v4 - 2 * (v6 & 0x34D4291D ^ v5 & 0x10);
  JUMPOUT(0x22D30CB74);
}

uint64_t sub_22D30CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 8 * (v26 ^ (v26 + 2005))))(a19 + a20, 0x100004077774924);
  v30 = (*(v27 + 8 * (v28 + v26 + 1621)))();
  *v29 = v30;
  v29[1] = 1812433253 * (((v30 ^ (v30 >> 30) ^ 0x9C9E93D2) + 1516069995) ^ ((v30 ^ (v30 >> 30) ^ 0xBA9880AD) + 2086369046) ^ ((a17 ^ v30 ^ (v30 >> 30) ^ 0x260610BB) - 523901752)) - 485604604;
  return (*(v27 + 8 * (a18 ^ 9)))(v30, 2627638226, 1516069995, 3130556589, 2086369046, 637931707, 3771065544, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22D30CCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = 1785193651 * ((~(v19 | 0x96B39AB) + (v19 & 0x96B39AB)) ^ 0xE5482A74);
  *(v23 - 128) = v22 - v24 + 1053;
  *(v23 - 124) = 1855785489 - v24;
  *(v23 - 136) = v18;
  (*(v17 + 8 * (v22 + 2120)))(v23 - 136);
  *(v23 - 136) = v20;
  *(v23 - 128) = a17;
  *(v23 - 120) = (v22 + 1651) ^ (1564307779 * a11);
  (*(v17 + 8 * (v22 ^ 0x810)))(v23 - 136);
  *(v23 - 128) = v22 - a10 * v21 + 1156;
  *(v23 - 136) = a17;
  *(v23 - 120) = v18;
  v25 = (*(v17 + 8 * (v22 + 2100)))(v23 - 136);
  return (*(v17 + 8 * (((*(v23 - 112) > 0x43A7A85Fu) * ((v22 ^ 0x4F) + 1261)) ^ v22)))(v25);
}

uint64_t sub_22D30CEE4@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v7 = *(*a2 + (v4 - 1941292481)) ^ 0x32;
  v8 = (((v6 - 2021593537) & 0x787F0FF1 ^ *(*a2 + (v4 - 1941292484)) ^ 0x23) << 24) | ((*(*a2 + (v6 ^ 0x8C4A3FDD) + v4) ^ 0x32) << 16) | ((*(*a2 + (v4 - 1941292482)) ^ 0x32) << 8) | v7;
  return (*(v3 + 8 * ((26 * (((v8 + v2 - 2 * (v8 & 0x34D4291D ^ v7 & 0x10)) & 0xFFFFFF ^ 0xD4290D) - (*a1 ^ v5) == -69821931)) ^ v6)))();
}

uint64_t sub_22D30D194@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, unsigned int a39, unsigned int a40)
{
  v44 = (((a37 ^ 0x8E814AF2) + 1904129294) ^ ((a37 ^ 0x4928B0EF) - 1227403503) ^ ((a37 ^ 0x91CCAB61) + 1848857759)) + (((v43 ^ 0x3B06F50D) - 990311693) ^ ((v43 ^ 0x736D5B53) - 1936546643) ^ ((v43 ^ 0x1E0EFF22) - 504299298)) + 60386280;
  v45 = (v44 ^ 0x812127C0) & (2 * (v44 & 0xA9313710)) ^ v44 & 0xA9313710;
  v46 = ((2 * (v44 ^ 0xD1030FC0)) ^ 0xF06471A0) & (v44 ^ 0xD1030FC0) ^ (2 * (v44 ^ 0xD1030FC0)) & 0x783238D0;
  v47 = v46 ^ 0x8120850;
  v48 = (v46 ^ 0x60003080) & (4 * v45) ^ v45;
  v49 = ((4 * v47) ^ 0xE0C8E340) & v47 ^ (4 * v47) & 0x783238D0;
  v50 = (v49 ^ 0x60002040) & (16 * v48) ^ v48;
  v51 = ((16 * (v49 ^ 0x18321890)) ^ 0x83238D00) & (v49 ^ 0x18321890) ^ (16 * (v49 ^ 0x18321890)) & 0x783238D0;
  v52 = v50 ^ 0x783238D0 ^ (v51 ^ 0x220800) & (v50 << 8);
  v53 = (v52 << 16) ^ 0x38D00000u;
  v54 = (((a38 ^ 0x46DD7869) - 1188919401) ^ ((a38 ^ 0x3D699EAB) - 1030332075) ^ ((a38 ^ 0x2DD1B7BE) - 768718782)) + (((v41 ^ 0x511E86B9) - 1360955065) ^ ((v41 ^ 0xD53492A7) + 717974873) ^ ((v41 ^ 0xD24F4562) + 766556830)) - 725893459;
  a37 = v44 ^ (2 * ((v52 << 16) & 0x78320000 ^ v52 ^ v53 & (((v51 ^ 0x781030D0) << 8) & 0x78320000 ^ 0x48020000 ^ (((v51 ^ 0x781030D0) << 8) ^ 0x32380000) & (v51 ^ 0x781030D0)))) ^ 0x7F1017CC;
  a38 = v54 ^ ((v54 ^ 0xB11534D9) + 1763430548) ^ ((v54 ^ 0x7BD2FD96) - 1545856547) ^ ((v54 ^ 0x5CC92515) - 2067283616) ^ ((v54 ^ 0xB1FFF7EF) + 1777406886) ^ 0x71944AC9;
  v55 = (((v42 ^ 0xC4F75287) + 990424441) ^ ((v42 ^ 0x805276D4) + 2142079276) ^ ((v42 ^ 0x12C0752F) - 314602799)) + (((a39 ^ 0x1706569) - 24143209) ^ ((a39 ^ 0xD4660C6F) + 731509649) ^ ((a39 ^ 0x8373387A) + 2089600902)) + 598572391;
  v56 = ((2 * (v55 & 0x891D2591)) & 0x10220202 | v55 & 0x891D2591) ^ (2 * (v55 & 0x891D2591)) & (v55 ^ 0x583B97DE);
  v57 = ((2 * (v55 ^ 0x583B97DE)) ^ 0xA24D649E) & (v55 ^ 0x583B97DE) ^ (2 * (v55 ^ 0x583B97DE)) & 0xD126B24E;
  v58 = v57 ^ 0x51229241;
  v59 = (v57 ^ 0x1106200D) & (4 * v56) ^ v56;
  v60 = ((4 * v58) ^ 0x449AC93C) & v58 ^ (4 * v58) & 0xD126B24C;
  v61 = (v60 ^ 0x40028003) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x91243243)) ^ 0x126B24F0) & (v60 ^ 0x91243243) ^ (16 * (v60 ^ 0x91243243)) & 0xD126B240;
  v63 = v61 ^ 0xD126B24F ^ (v62 ^ 0x10222000) & (v61 << 8);
  v64 = (((v40 ^ 0xD1E9739B) + 773229669) ^ ((v40 ^ 0xB40B8ED5) + 1274310955) ^ ((v40 ^ 0x3387AC32) - 864529458)) + (((a40 ^ 0x8D42B901) + 1925007103) ^ ((a40 ^ 0x62836EFD) - 1652780797) ^ ((a40 ^ 0xB9A48680) + 1180400000)) - 124795201;
  a39 = v55 ^ (2 * ((v63 << 16) & 0x51260000 ^ v63 ^ ((v63 << 16) ^ 0x324F0000) & (((v62 ^ 0xC104920F) << 8) & 0x51260000 ^ 0x51040000 ^ (((v62 ^ 0xC104920F) << 8) ^ 0x26B20000) & (v62 ^ 0xC104920F)))) ^ 0x5D391073;
  a40 = v64 ^ ((v64 ^ 0xB81AB0B4) + 203451533) ^ ((v64 ^ 0xB06766BD) + 73251462) ^ ((v64 ^ 0x9D470A71) + 696112714) ^ ((v64 ^ 0xDEFFFFBF) + 1791304584) ^ 0x1DA072BB;
  return a6(v53, &a28, a1, 100, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_22D30D1B4@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = a1 + 544;
  v6 = (*(v4 + 8 * (v5 ^ 0xF66)))(**(v3 + 8 * (v5 ^ 0x7AC)), va, ((((v2 - 963435087) & 0xFFFFF000 ^ 0xDA086827) + 305218553) ^ (((v2 - 963435087) & 0xFFFFF000 ^ 0xFD62B7C2) + 895196190) ^ (((((a1 - 1518749659) & 0x5A8647DA) - 635) ^ 0xEF53F724) + ((v2 - 963435087) & 0xFFFFF000 ^ 0x276ADFE5))) + 935777312, 1) != 0;
  return (*(v4 + 8 * ((118 * v6) ^ v5)))();
}

uint64_t sub_22D30D290(uint64_t result)
{
  if ((v2 + v3 - 1) >= 0x7FFFFFFF)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v4;
  }

  *(v1 + 4) = v6;
  *(result + 24) = 895728756;
  return result;
}

uint64_t sub_22D30D2D0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = v6 + 32;
  v10 = ((2 * (v5 ^ (a3 + 1482)) - 1397) ^ v9) + v4;
  v11 = *(a4 + v10 - 15);
  v12 = *(a4 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * ((896 * (v7 == v9)) ^ (a2 + v5 + 1014))))();
}

uint64_t sub_22D30D38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v30 = v27 - 132;
  LOBYTE(STACK[0x24C]) = a27;
  v31 = 1785193651 * ((((v29 - 160) | 0x4890146A) - (v29 - 160) + ((v29 - 160) & 0xB76FEB90)) ^ 0x5B4CF84A);
  *(v29 - 152) = &STACK[0x248];
  *(v29 - 144) = 1869595558 - v31;
  *(v29 - 160) = (v30 + 1522) ^ v31;
  (*(v28 + 8 * (v30 ^ 0x8C7)))(v29 - 160);
  return a19(100);
}

uint64_t sub_22D30D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, int a21, char *a22, int a23, int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a21 = 313566482;
  v31 = *(a2 + 8);
  v32 = 1082434553 * ((-1725705386 - (&a22 | 0x9923D356) + (&a22 | 0x66DC2CA9)) ^ 0xFD9BDA23);
  a24 = *(a2 + 4) - 530103060 + v32 + 501;
  a28 = &a21;
  a29 = v31;
  a22 = &a18;
  a25 = &a14;
  a26 = v32 + v29 + 164;
  a27 = &a16;
  v34 = (*(v30 + 8 * (v29 ^ 0x8BBu)))(&a22);
  return (*(v30 + 8 * (((a23 == -1261164275) * (((v29 + 363) ^ 0x170) + ((v29 + 363) | 0xD))) ^ v29)))(v34, a2);
}

uint64_t sub_22D30D548(uint64_t result)
{
  v1 = 1388665877 * (((result | 0x2916B44FED2ABA0BLL) - (result & 0x2916B44FED2ABA0BLL)) ^ 0x1C6C24006087D8E7);
  v2 = *(result + 8) + v1;
  v3 = *(result + 32) ^ v1;
  v4 = v2 == v3;
  v5 = v2 > v3;
  v6 = v4;
  if (((*(result + 20) - v1) & 1) == 0)
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = result;
  }

  else
  {
    v7 = (result + 16);
  }

  *(result + 24) = *v7 ^ v1 ^ (*(result + 4) - v1);
  return result;
}

uint64_t sub_22D30D5DC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v6 = a1 ^ 0x1E8u;
  *(a2 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4) = vadd_s8(vsub_s8(*(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4), vand_s8(vadd_s8(*(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4), *(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4)), 0x6464646464646464)), 0x3232323232323232);
  return (*(v2 + 8 * ((1485 * ((v4 & 0xFFFFFFF8) - 8 == v5)) ^ a1)))();
}

uint64_t sub_22D30D744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v76 = (*(v75 - 152) - 893350477) & 0x353F71BE;
  v77 = v74 + v76 - 294;
  v78 = *(v75 - 160);
  *(v75 - 128) = *(v75 - 164) ^ 0xCE5920C4;
  *(v75 - 132) = v78 ^ 0x1978C64A;
  *(v75 - 136) = *(v75 - 168) ^ 0x8AA361C;
  *(v75 - 140) = *(v75 - 156) ^ 0xDCB3F494;
  *(v75 - 120) = v77;
  *(v75 - 144) = *(v75 - 124) < 0x4E092D8Au;
  v79 = (*(v75 - 184) + v77);
  v80 = *(v75 - 224);
  v81 = *(v80 + (v79[5] ^ 0x87));
  *(v75 - 152) = v76 + 142;
  LOBYTE(v78) = v79[4];
  *(v75 - 176) = 0;
  *(v75 - 172) = (v76 + 142) ^ 0x2AA;
  v83 = *(v75 - 240);
  v82 = *(v75 - 232);
  v84 = *(v75 - 248);
  v85 = *(v75 - 252);
  v86 = (((v81 - 62) ^ 0x74) << 16) | ((*(v83 + ((v76 - 114) ^ 0xC6u ^ v78)) ^ 0x2C) << 24) | ((*(v82 + (v79[6] ^ 0xE2)) ^ 0x86) << 8) | (v85 + 53 * *(v84 + (v79[7] ^ 0xBFLL))) ^ 0xFA;
  v87 = ((v85 + 53 * *(v84 + (v79[15] ^ 0x3CLL))) ^ 0x68 | ((*(v82 + (v79[14] ^ 8)) ^ 0xC2) << 8)) & 0xFF00FFFF | ((*(v83 + (v79[12] ^ 0xBDLL)) ^ 4) << 24) | (((*(v80 + (v79[13] ^ 0xCALL)) - 62) ^ 0xFD) << 16);
  v88 = (v85 + 53 * *(v84 + (v79[3] ^ 0x19))) ^ 0x38 | ((*(v83 + (*v79 ^ 0x50)) ^ 0x19) << 24) | (((*(v80 + (v79[1] ^ 0x1ELL)) - 62) ^ 0x68) << 16) | ((*(v82 + (v79[2] ^ 6)) ^ 0xBE) << 8);
  v89 = ((*(v83 + v79[8]) ^ 0x27) << 24) | (((*(v80 + (v79[9] ^ 0xB0)) - 62) ^ 0x86) << 16) | ((*(v82 + (v79[10] ^ 0x42)) ^ 0x43) << 8) | (v85 + 53 * *(v84 + (v79[11] ^ 0x60))) ^ 0xDA;
  if ((((v85 + 53 * *(v84 + (v79[7] ^ 0xBFLL))) ^ 0xFA) & 2) != 0)
  {
    v90 = -2;
  }

  else
  {
    v90 = 2;
  }

  *(v75 - 164) = v86;
  *(v75 - 160) = v87;
  v91 = a66 ^ v87;
  v92 = a65 ^ (v90 + v86);
  *(v75 - 156) = v89;
  *(v75 - 168) = v88;
  v93 = a63 ^ v88;
  v94 = *(&off_28407CFD0 + v76 - 242) - 12;
  v95 = *&v94[4 * ((a64 ^ v89) >> 8)];
  HIDWORD(v97) = v95 ^ 0x1309;
  LODWORD(v97) = v95 ^ 0x553F0000;
  v96 = v97 >> 14;
  *(v75 - 116) = v76;
  v98 = *(&off_28407CFD0 + (v76 & 0x96870AF9));
  v99 = *&v94[4 * BYTE1(v93)];
  v100 = HIBYTE(v93);
  HIDWORD(v97) = v99 ^ 0x1309;
  LODWORD(v97) = v99 ^ 0x553F0000;
  v101 = *(&off_28407CFD0 + (v76 ^ 0x141)) - 12;
  v102 = (-60143190 - 21582785 * *&v101[4 * (a64 ^ v89)]) ^ (*(v98 + 4 * HIBYTE(v92)) - 1120064789);
  v103 = (-60143190 - 21582785 * *&v101[4 * (a65 ^ (v90 + v86))]) ^ v96;
  v104 = *(&off_28407CFD0 + v76 - 258) - 8;
  v105 = *&v104[4 * BYTE2(v93)];
  v106 = (*(v98 + 4 * ((a64 ^ v89) >> 24)) - 1120064789) ^ (v97 >> 14);
  v107 = *&v104[4 * BYTE2(v92)];
  v108 = *&v94[4 * BYTE1(v92)];
  HIDWORD(v97) = v108 ^ 0x1309;
  LODWORD(v97) = v108 ^ 0x553F0000;
  v109 = (v106 + 724807849 - ((2 * v106) & 0x56676152)) ^ v107 ^ (-60143190 - 21582785 * *&v101[4 * v91]);
  v110 = (*(v98 + 4 * HIBYTE(v91)) - 1120064789) ^ (v97 >> 14);
  v111 = *&v104[4 * BYTE2(v91)];
  v112 = *&v94[4 * BYTE1(v91)];
  HIDWORD(v97) = v112 ^ 0x1309;
  LODWORD(v97) = v112 ^ 0x553F0000;
  v113 = v110 ^ (-60143190 - 21582785 * *&v101[4 * v93]);
  v114 = a36 ^ (v109 + a38 - 2 * (v109 & a38));
  v115 = a62 ^ v111 ^ (*(v98 + 4 * v100) - 1120064789) ^ 0x8E1E9161 ^ (v103 + 724807849 - ((2 * v103) & 0x56676152));
  v116 = a61 ^ v105 ^ (v97 >> 14) ^ (v102 + 724807849 - ((2 * v102) & 0x56676152)) ^ 0x7A8BED94;
  v117 = a60 ^ *&v104[4 * ((a64 ^ v89) >> 16)] ^ 0x342D1067 ^ (v113 + 724807849 - ((2 * v113) & 0x56676152));
  v118 = *&v94[4 * ((v114 ^ 0xAB13) >> 8)];
  HIDWORD(v97) = v118 ^ 0x1309;
  LODWORD(v97) = v118 ^ 0x553F0000;
  v119 = (v97 >> 14) ^ (*(v98 + 4 * HIBYTE(v115)) - 1120064789);
  v120 = *(v98 + 4 * HIBYTE(v116));
  v121 = (2 * v120 + 2054837718) & 0x56676152;
  v122 = v120 - 395256940;
  v123 = *&v94[4 * ((a60 ^ *&v104[4 * ((a64 ^ v89) >> 16)] ^ 0x1067 ^ (v113 - 20311 - ((2 * v113) & 0x6152))) >> 8)];
  HIDWORD(v97) = v123 ^ 0x1309;
  LODWORD(v97) = v123 ^ 0x553F0000;
  v124 = v97 >> 14;
  v125 = v122 - v121;
  v126 = *(v98 + 4 * ((v114 ^ 0xC04AB13u) >> 24));
  v127 = v126 - 395256940 - ((2 * v126 + 2054837718) & 0x56676152);
  v128 = (-60143190 - 21582785 * *&v101[4 * v115]) ^ (*(v98 + 4 * HIBYTE(v117)) - 1120064789);
  v129 = *&v94[4 * BYTE1(v115)];
  HIDWORD(v97) = v129 ^ 0x1309;
  LODWORD(v97) = v129 ^ 0x553F0000;
  v130 = v97 >> 14;
  v131 = *&v94[4 * BYTE1(v116)];
  HIDWORD(v97) = v131 ^ 0x1309;
  LODWORD(v97) = v131 ^ 0x553F0000;
  v132 = -60143190 - 21582785 * *&v101[4 * ((a60 ^ v104[4 * ((a64 ^ v89) >> 16)]) ^ 0x67 ^ (v113 - 87 - ((2 * v113) & 0x52)))];
  v133 = -60143190 - 21582785 * *&v101[4 * (v114 ^ 0x33)];
  v134 = *&v104[4 * ((v114 ^ 0xC04AB13u) >> 16)];
  v135 = *(v75 - 256) ^ *&v104[4 * BYTE2(v117)] ^ (-60143190 - 21582785 * *&v101[4 * v116]) ^ (v119 + 724807849 - ((2 * v119) & 0x56676152));
  v136 = a59 ^ v134 ^ (v97 >> 14) ^ 0xD9D684A ^ (v128 + 724807849 - ((2 * v128) & 0x56676152));
  v137 = a58 ^ *&v104[4 * BYTE2(v115)] ^ v125 ^ v124 ^ 0x87DD46DC ^ v133;
  v138 = a57 ^ *&v104[4 * BYTE2(v116)] ^ v132 ^ v130 ^ 0x96521C3F ^ v127;
  v139 = *&v94[4 * ((v135 ^ 0xB36B) >> 8)];
  HIDWORD(v97) = v139 ^ 0x1309;
  LODWORD(v97) = v139 ^ 0x553F0000;
  v140 = v97 >> 14;
  v141 = *&v94[4 * BYTE1(v136)];
  HIDWORD(v97) = v141 ^ 0x1309;
  LODWORD(v97) = v141 ^ 0x553F0000;
  v142 = *&v94[4 * BYTE1(v137)];
  v143 = -60143190 - 21582785 * *&v101[4 * v137];
  v144 = (*(v98 + 4 * HIBYTE(v137)) - 1120064789) ^ (v97 >> 14);
  HIDWORD(v97) = v142 ^ 0x1309;
  LODWORD(v97) = v142 ^ 0x553F0000;
  v145 = (-60143190 - 21582785 * *&v101[4 * v136]) ^ v140;
  v146 = v144 ^ (-60143190 - 21582785 * *&v101[4 * v138]);
  v147 = (*(v98 + 4 * HIBYTE(v136)) - 1120064789) ^ (v97 >> 14);
  v148 = *&v94[4 * BYTE1(v138)];
  HIDWORD(v97) = v148 ^ 0x1309;
  LODWORD(v97) = v148 ^ 0x553F0000;
  v149 = *&v104[4 * BYTE2(v136)];
  v150 = v147 ^ (-60143190 - 21582785 * *&v101[4 * (v135 ^ 0x6B)]);
  v151 = a74 ^ *&v104[4 * ((v135 ^ 0x2F7BB36B) >> 16)] ^ (v146 + 724807849 - ((2 * v146) & 0x56676152));
  v152 = a56 ^ *&v104[4 * BYTE2(v138)] ^ 0xB6EFE4B7 ^ (v150 + 724807849 - ((2 * v150) & 0x56676152));
  v153 = a55 ^ *&v104[4 * BYTE2(v137)] ^ (*(v98 + 4 * HIBYTE(v138)) - 1120064789) ^ 0xD8A932B2 ^ (v145 + 724807849 - ((2 * v145) & 0x56676152));
  BYTE2(v116) = BYTE2(v151) ^ 0x6F;
  v154 = a54 ^ v149 ^ (*(v98 + 4 * (HIBYTE(v135) ^ 0xEE)) - 1120064789) ^ 0xDBC82169 ^ (((v97 >> 14) ^ v143) + 724807849 - ((2 * ((v97 >> 14) ^ v143)) & 0x56676152));
  v155 = *&v94[4 * ((a74 ^ *&v104[4 * ((v135 ^ 0x2F7BB36B) >> 16)] ^ (v146 - 20311 - ((2 * v146) & 0x6152)) ^ 0x9E59) >> 8)];
  v156 = *&v94[4 * BYTE1(v154)];
  HIDWORD(v97) = v155 ^ 0x1309;
  LODWORD(v97) = v155 ^ 0x553F0000;
  v157 = v97 >> 14;
  HIDWORD(v97) = v156 ^ 0x1309;
  LODWORD(v97) = v156 ^ 0x553F0000;
  v158 = *&v104[4 * BYTE2(v152)];
  v159 = (-60143190 - 21582785 * *&v101[4 * v153]) ^ (*(v98 + 4 * ((v151 ^ 0xD16F9E59) >> 24)) - 1120064789) ^ (*&v94[4 * BYTE1(v152)] >> 14) ^ (*&v94[4 * BYTE1(v152)] << 18) ^ 0x4C2554FC;
  v160 = (*(v98 + 4 * HIBYTE(v152)) - 1120064789) ^ v157 ^ (-60143190 - 21582785 * *&v101[4 * v154]);
  v161 = (v97 >> 14) ^ (*(v98 + 4 * HIBYTE(v153)) - 1120064789) ^ (-60143190 - 21582785 * *&v101[4 * v152]);
  v162 = *&v101[4 * ((a74 ^ v104[4 * ((v135 ^ 0x2F7BB36B) >> 16)] ^ (v146 - 87 - ((2 * v146) & 0x52))) ^ 0x79)];
  v163 = -21582785 * v162 + 664664659 - ((2104318078 * v162 + 2027197268) & 0x56676152);
  v164 = *&v94[4 * BYTE1(v153)];
  HIDWORD(v97) = v164 ^ 0x1309;
  LODWORD(v97) = v164 ^ 0x553F0000;
  v165 = a73 ^ *&v104[4 * BYTE2(v153)] ^ (v160 + 724807849 - ((2 * v160) & 0x56676152));
  v166 = v165 ^ 0xE0349DAE;
  v167 = a53 ^ *&v104[4 * BYTE2(v116)] ^ 0xF4361671 ^ (v161 + 724807849 - ((2 * v161) & 0x56676152));
  v168 = a72 ^ v158 ^ (*(v98 + 4 * HIBYTE(v154)) - 1120064789) ^ (v97 >> 14) ^ v163;
  v169 = a52 ^ *&v104[4 * BYTE2(v154)] ^ 0x7E1E5010 ^ (v159 + 724807849 - ((2 * v159) & 0x56676152));
  v170 = (v165 ^ 0xE0349DAE) >> 24;
  v171 = (-60143190 - 21582785 * *&v101[4 * (v165 ^ 0x8E)]) ^ (*(v98 + 4 * HIBYTE(v167)) - 1120064789);
  v172 = v171 + 724807849 - ((2 * v171) & 0x56676152);
  v173 = *&v94[4 * BYTE1(v166)];
  HIDWORD(v97) = v173 ^ 0x1309;
  LODWORD(v97) = v173 ^ 0x553F0000;
  v174 = v97 >> 14;
  v175 = *&v94[4 * ((a52 ^ *&v104[4 * BYTE2(v154)] ^ 0x5010 ^ (v159 - 20311 - ((2 * v159) & 0x6152))) >> 8)];
  HIDWORD(v97) = v175 ^ 0x1309;
  LODWORD(v97) = v175 ^ 0x553F0000;
  v176 = v97 >> 14;
  v177 = v174 ^ (-60143190 - 21582785 * *&v101[4 * v167]) ^ (*(v98 + 4 * HIBYTE(v169)) - 1120064789);
  v178 = *&v94[4 * ((v168 ^ 0x500A) >> 8)];
  HIDWORD(v97) = v178 ^ 0x1309;
  LODWORD(v97) = v178 ^ 0x553F0000;
  v179 = v97 >> 14;
  v180 = *&v94[4 * BYTE1(v167)];
  HIDWORD(v97) = v180 ^ 0x1309;
  LODWORD(v97) = v180 ^ 0x553F0000;
  v181 = *&v104[4 * BYTE2(v169)];
  v182 = (-60143190 - 21582785 * *&v101[4 * v169]) ^ (*(v98 + 4 * ((v168 ^ 0x6754500Au) >> 24)) - 1120064789) ^ (v97 >> 14);
  v183 = *&v104[4 * BYTE2(v166)];
  v184 = -60143190 - 21582785 * *&v101[4 * (v168 ^ 0x2A)];
  v185 = a51 ^ v181 ^ v179 ^ v172 ^ 0x541774FA;
  v186 = a50 ^ *&v104[4 * ((v168 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v177 + 724807849 - ((2 * v177) & 0x56676152));
  v187 = a49 ^ *&v104[4 * BYTE2(v167)] ^ (*(v98 + 4 * v170) - 395256940 - ((2 * *(v98 + 4 * v170) + 2054837718) & 0x56676152)) ^ v184 ^ 0xEB532C08 ^ v176;
  v188 = a48 ^ v183 ^ 0x8EB61C45 ^ (v182 + 724807849 - ((2 * v182) & 0x56676152));
  v189 = *&v94[4 * BYTE1(v186)];
  HIDWORD(v97) = v189 ^ 0x1309;
  LODWORD(v97) = v189 ^ 0x553F0000;
  v190 = *&v101[4 * (v185 - ((2 * v185) & 0x40)) + 128];
  v191 = *&v94[4 * ((a48 ^ v183 ^ 0x1C45 ^ (v182 - 20311 - ((2 * v182) & 0x6152))) >> 8)];
  v192 = (v97 >> 14) + 724807849 - ((2 * (v97 >> 14)) & 0x56676152);
  HIDWORD(v97) = v191 ^ 0x1309;
  LODWORD(v97) = v191 ^ 0x553F0000;
  v193 = (v97 >> 14) ^ (*(v98 + 4 * HIBYTE(v185)) - 1120064789);
  v194 = *&v94[4 * BYTE1(v185)];
  HIDWORD(v97) = v194 ^ 0x1309;
  LODWORD(v97) = v194 ^ 0x553F0000;
  v195 = v97 >> 14;
  v196 = *&v94[4 * BYTE1(v187)];
  HIDWORD(v97) = v196 ^ 0x1309;
  LODWORD(v97) = v196 ^ 0x553F0000;
  v197 = *(v98 + 4 * HIBYTE(v186)) - 1120064789;
  v198 = *&v104[4 * BYTE2(v186)];
  v199 = a71 ^ *&v104[4 * BYTE2(v187)] ^ v195 ^ (*(v98 + 4 * HIBYTE(v188)) - 1120064789) ^ (-21582785 * *&v101[4 * v186] + 664664659 - ((2104318078 * *&v101[4 * v186] + 2027197268) & 0x56676152));
  v200 = a47 ^ *&v104[4 * BYTE2(v185)] ^ (*(v98 + 4 * HIBYTE(v187)) - 1120064789) ^ v192 ^ (-60143190 - 21582785 * *&v101[4 * v188]) ^ 0x7C892C4A;
  v201 = a46 ^ *&v104[4 * BYTE2(v188)] ^ v197 ^ (v97 >> 14) ^ 0x190B7FE4 ^ (-21582785 * v190 + 664664659 - ((2104318078 * v190 + 2027197268) & 0x56676152));
  v202 = a45 ^ v198 ^ (-60143190 - 21582785 * *&v101[4 * v187]) ^ 0xCFA132BA ^ (v193 + 724807849 - ((2 * v193) & 0x56676152));
  v203 = v199 ^ 0x402CF460;
  v204 = *&v104[4 * BYTE2(v202)];
  v205 = *&v94[4 * BYTE1(v200)];
  HIDWORD(v97) = v205 ^ 0x1309;
  LODWORD(v97) = v205 ^ 0x553F0000;
  v206 = v97 >> 14;
  v207 = *&v94[4 * BYTE1(v202)];
  v208 = HIBYTE(v202);
  HIDWORD(v97) = v207 ^ 0x1309;
  LODWORD(v97) = v207 ^ 0x553F0000;
  v209 = *&v101[4 * (v199 ^ 0x40)];
  v210 = (-60143190 - 21582785 * *&v101[4 * v201]) ^ (*(v98 + 4 * ((v199 ^ 0x402CF460u) >> 24)) - 1120064789) ^ (v97 >> 14);
  v211 = *&v94[4 * BYTE1(v201)];
  HIDWORD(v97) = v211 ^ 0x1309;
  LODWORD(v97) = v211 ^ 0x553F0000;
  v212 = v97 >> 14;
  v213 = (*(v98 + 4 * HIBYTE(v201)) - 1120064789) ^ v206 ^ (-60143190 - 21582785 * *&v101[4 * v202]);
  v214 = (-60143190 - 21582785 * *&v101[4 * v200]) ^ (*(v98 + 4 * v208) - 1120064789);
  v215 = *(v98 + 4 * HIBYTE(v200)) - 1120064789;
  v216 = *&v94[4 * BYTE1(v203)];
  HIDWORD(v97) = v216 ^ 0x1309;
  LODWORD(v97) = v216 ^ 0x553F0000;
  v217 = a44 ^ *&v104[4 * BYTE2(v200)] ^ 0x2655A6B2 ^ (v210 + 724807849 - ((2 * v210) & 0x56676152));
  v218 = a43 ^ *&v104[4 * BYTE2(v201)] ^ (v97 >> 14) ^ 0x354150DE ^ (v214 + 724807849 - ((2 * v214) & 0x56676152));
  v219 = a42 ^ v204 ^ v212 ^ v215 ^ (-21582785 * v209 + 664664659 - ((2104318078 * v209 + 2027197268) & 0x56676152)) ^ 0x6005D395;
  v220 = a41 ^ *&v104[4 * BYTE2(v203)] ^ 0xD6EF510D ^ (v213 + 724807849 - ((2 * v213) & 0x56676152));
  v221 = *&v94[4 * BYTE1(v219)];
  HIDWORD(v97) = v221 ^ 0x1309;
  LODWORD(v97) = v221 ^ 0x553F0000;
  v222 = (v97 >> 14) + 724807849 - ((2 * (v97 >> 14)) & 0x56676152);
  v223 = *(v98 + 4 * HIBYTE(v217));
  v224 = (-60143190 - 21582785 * *&v101[4 * v217]) ^ (*(v98 + 4 * HIBYTE(v219)) - 1120064789);
  v225 = v223 - 395256940 - ((2 * v223 + 2054837718) & 0x56676152);
  v226 = -21582785 * *&v101[4 * v219] + 664664659 - ((2104318078 * *&v101[4 * v219] + 2027197268) & 0x56676152);
  v227 = *&v94[4 * BYTE1(v218)];
  HIDWORD(v97) = v227 ^ 0x1309;
  LODWORD(v97) = v227 ^ 0x553F0000;
  v228 = v97 >> 14;
  v229 = *&v94[4 * BYTE1(v217)];
  HIDWORD(v97) = v229 ^ 0x1309;
  LODWORD(v97) = v229 ^ 0x553F0000;
  v230 = v97 >> 14;
  v231 = *&v94[4 * BYTE1(v220)];
  HIDWORD(v97) = v231 ^ 0x1309;
  LODWORD(v97) = v231 ^ 0x553F0000;
  v232 = *&v104[4 * BYTE2(v217)];
  v233 = *&v104[4 * BYTE2(v218)] ^ *(v75 - 212) ^ (v97 >> 14) ^ (v224 + 724807849 - ((2 * v224) & 0x56676152));
  v234 = *&v104[4 * BYTE2(v220)];
  v235 = *(v98 + 4 * HIBYTE(v220)) - 1120064789;
  v236 = *&v104[4 * BYTE2(v219)];
  v237 = *(v98 + 4 * HIBYTE(v218)) - 1120064789;
  BYTE2(v220) = BYTE2(v233) ^ 0x1C;
  v238 = a70 ^ v236 ^ v228 ^ v225 ^ (-60143190 - 21582785 * *&v101[4 * v220]);
  v239 = a40 ^ v232 ^ v235 ^ v222 ^ (-60143190 - 21582785 * *&v101[4 * v218]) ^ 0xDE12593A;
  v240 = a39 ^ v237 ^ v234 ^ v226 ^ v230 ^ 0x8D19C5A6;
  v241 = *&v94[4 * BYTE1(v240)];
  HIDWORD(v97) = v241 ^ 0x1309;
  LODWORD(v97) = v241 ^ 0x553F0000;
  v242 = *&v101[4 * (v233 ^ 0x30)];
  v243 = *&v101[4 * v239];
  v244 = *&v94[4 * ((v233 ^ 0x5930) >> 8)];
  v245 = (v97 >> 14) + 724807849 - ((2 * (v97 >> 14)) & 0x56676152);
  HIDWORD(v97) = v244 ^ 0x1309;
  LODWORD(v97) = v244 ^ 0x553F0000;
  v246 = (v97 >> 14) + 724807849 - ((2 * (v97 >> 14)) & 0x56676152);
  v247 = *&v94[4 * ((v238 ^ 0x88C) >> 8)];
  v248 = (*(v98 + 4 * (HIBYTE(v233) ^ 0x50)) - 1120064789) ^ (-60143190 - 21582785 * *&v101[4 * (v238 ^ 0x8C)]);
  HIDWORD(v97) = v247 ^ 0x1309;
  LODWORD(v97) = v247 ^ 0x553F0000;
  v249 = v97 >> 14;
  v250 = *&v104[4 * ((v238 ^ 0x857E088C) >> 16)];
  v251 = *(v98 + 4 * HIBYTE(v240)) - 1120064789;
  v252 = *(v98 + 4 * HIBYTE(v239)) - 1120064789;
  LODWORD(v98) = *(v98 + 4 * (HIBYTE(v238) ^ 0x44));
  v253 = *&v94[4 * BYTE1(v239)];
  HIDWORD(v97) = v253 ^ 0x1309;
  LODWORD(v97) = v253 ^ 0x553F0000;
  v254 = a69 ^ v250 ^ v252 ^ (-60143190 - 21582785 * *&v101[4 * v240]) ^ v246;
  LODWORD(v101) = v251 ^ a37 ^ v249 ^ *&v104[4 * BYTE2(v239)] ^ (-60143190 - 21582785 * v242);
  v255 = a68 ^ *&v104[4 * BYTE2(v220)] ^ v245 ^ (-60143190 - 21582785 * v243) ^ (v98 - 1120064789);
  v256 = a67 ^ *&v104[4 * BYTE2(v240)] ^ (v97 >> 14) ^ (v248 + 724807849 - ((2 * v248) & 0x56676152));
  v257 = v256 ^ 0x644667A6;
  LODWORD(v98) = v255 ^ 0x7EC2C88;
  LODWORD(v94) = v254 ^ 0x9A25D878;
  v258 = *(v75 - 116);
  v259 = *(&off_28407CFD0 + v258 - 152) - 8;
  v260 = *&v259[4 * ((v256 ^ 0x644667A6u) >> 24)];
  HIDWORD(v97) = v260 ^ 0x14;
  LODWORD(v97) = v260 ^ 0xFAE34E80;
  v261 = *(&off_28407CFD0 + v258 - 143);
  v262 = *(&off_28407CFD0 + v258 - 203) - 12;
  v263 = ((v255 ^ 0x88) + 1401715492 - ((2 * v255) & 0x48)) ^ *&v262[4 * (v255 ^ 0xDB)] ^ (v97 >> 7);
  v264 = *(v261 + 4 * ((v256 ^ 0x644667A6u) >> 16));
  *(v75 - 148) = ((2 * v264) & 0xBB708860 ^ 0x4EAFFFDF) - 1234739703 + (((v264 ^ 0xDA6A75AF) + 630557265) ^ ((v264 ^ 0xB12E9162) + 1322348190) ^ ((v264 ^ 0x33EBFD15) - 871103765));
  v265 = (v254 ^ 0x78) + 1401715492 - ((2 * (v254 ^ 0x9A25D878)) & 0x48);
  v266 = *(v261 + 4 * BYTE2(v98));
  v267 = *(v261 + 4 * ((v101 ^ 0xAD089B63) >> 16));
  LODWORD(v261) = *(v261 + 4 * ((v254 ^ 0x9A25D878) >> 16));
  v268 = *(&off_28407CFD0 + (v258 ^ 0x163)) - 8;
  v269 = ((v256 ^ 0xA6) + 1401715492 - 2 * ((v256 ^ 0x644667A6) & 0x2C ^ v256 & 8)) ^ (BYTE1(v98) - 677493334 - ((v98 >> 7) & 0x154)) ^ *&v268[4 * (BYTE1(v98) ^ 0xF5)] ^ *&v262[4 * (v256 ^ 0xF5)];
  v270 = *&v259[4 * ((v254 ^ 0x9A25D878) >> 24)];
  HIDWORD(v97) = v270 ^ 0x14;
  LODWORD(v97) = v270 ^ 0xFAE34E80;
  v271 = ((v101 ^ 0x9B63) >> 8);
  v272 = v271 - 677493334 - (((v101 ^ 0xAD089B63) >> 7) & 0x154);
  v273 = (v97 >> 7) + 1487870424 - ((2 * (v97 >> 7)) & 0xB15E33B0);
  v274 = *&v259[4 * ((v101 >> 24) ^ 0xBD)];
  HIDWORD(v97) = v274 ^ 0x14;
  LODWORD(v97) = v274 ^ 0xFAE34E80;
  v275 = v97 >> 7;
  v276 = *&v262[4 * (v254 ^ 0x2B)];
  v277 = *&v268[4 * (v271 ^ 0xF5)];
  v278 = BYTE1(v94) ^ 0xF5;
  v279 = BYTE1(v94) - 677493334 - ((v94 >> 7) & 0x154);
  LODWORD(v98) = *&v259[4 * BYTE3(v98)];
  HIDWORD(v97) = v98 ^ 0x14;
  LODWORD(v97) = v98 ^ 0xFAE34E80;
  LODWORD(v98) = *(v75 - 140) ^ *(v75 - 200) ^ v261 ^ v275 ^ (v269 + 1487870424 - ((2 * v269) & 0xB15E33B0));
  LODWORD(v94) = *(v75 - 136) ^ *(v75 - 208) ^ v272 ^ v265 ^ v276 ^ v277 ^ (v97 >> 7) ^ *(v75 - 148);
  LODWORD(v259) = *(v75 - 132) ^ *(v75 - 204) ^ v279 ^ v267 ^ *&v268[4 * v278] ^ (v263 + 1487870424 - ((2 * v263) & 0xB15E33B0));
  LODWORD(v101) = *(v75 - 128) ^ *(v75 - 196) ^ v266 ^ ((v101 ^ 0x63) + 1401715492 - 2 * ((v101 ^ 0xAD089B63) & 0x3C ^ v101 & 0x18)) ^ (BYTE1(v257) - 677493334 - ((v257 >> 7) & 0x154)) ^ *&v262[4 * (v101 ^ 0x30)] ^ *&v268[4 * (BYTE1(v257) ^ 0xF5)] ^ v273;
  v280 = *(&off_28407CFD0 + v258 - 130) - 12;
  v79[3] = v280[(*(v75 - 136) ^ *(v75 - 208) ^ v272 ^ v265 ^ v276 ^ v277 ^ (v97 >> 7) ^ *(v75 - 148)) ^ 0xDFLL] ^ 0xA2;
  v281 = *(&off_28407CFD0 + v258 - 300) - 4;
  v79[4] = (v281[(v101 >> 24) ^ 0x2CLL] + 121) ^ 0x78;
  *v79 = (v281[(v94 >> 24) ^ 0x57] + 121) ^ 0xC8;
  v282 = *(&off_28407CFD0 + v258 - 283) - 4;
  v79[13] = (v282[BYTE2(v259) ^ 0x5CLL] + 125) ^ 0xC7;
  v79[11] = v280[v98 ^ 0x46] ^ 0xE6;
  v283 = *(&off_28407CFD0 + (v258 ^ 0x147)) - 4;
  v79[14] = ((BYTE1(v259) ^ 0xEE) - ((2 * (BYTE1(v259) ^ 0xEE)) & 0x4A) - 91) ^ 0x75 ^ v283[BYTE1(v259)];
  v79[2] = ((BYTE1(v94) ^ 3) - ((2 * (BYTE1(v94) ^ 3)) & 0x4A) - 91) ^ 0x8B ^ v283[BYTE1(v94) ^ 0xE6];
  v79[10] = ((BYTE1(v98) ^ 0xAB) - ((2 * (BYTE1(v98) ^ 0xAB)) & 0x4A) - 91) ^ 0x6D ^ v283[BYTE1(v98) ^ 0x84];
  v79[15] = v280[v259 ^ 0x11] ^ 0x51;
  v79[5] = (v282[BYTE2(v101) ^ 0x44] + 125) ^ 0xE2;
  v79[8] = (v281[BYTE3(v98) ^ 0x26] + 121) ^ 0xA2;
  v79[7] = v280[v101 ^ 0x3DLL] ^ 0x5B;
  v79[12] = (v281[(v259 >> 24) ^ 0x44] + 121) ^ 0x23;
  v79[1] = (v282[BYTE2(v94) ^ 0xA3] + 125) ^ 0x17;
  v284 = *(v75 - 120);
  v79[6] = (BYTE1(v101) - ((v101 >> 7) & 0x4A) - 91) ^ 0xD0 ^ v283[BYTE1(v101) ^ 0x58];
  v79[9] = (v282[BYTE2(v98) ^ 0xF8] + 125) ^ 0x90;
  v285 = (v284 + 1309224346) < *(v75 - 124);
  if (*(v75 - 144) != (v284 + 1309224346) < 0x4E092D8A)
  {
    v285 = *(v75 - 144);
  }

  return (*(*(v75 - 192) + 8 * ((95 * v285) ^ v258)))();
}

uint64_t sub_22D30D7B8(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v45 = v44[396] ^ ((*v44 & 0x7FFFFFFE | v44[623] & 0x80000000) >> 1);
  v44[623] = (v45 + a4 - ((v45 << (a2 + ((v41 - 116) | 0x50) - 110)) & (((v41 + 1347484827) | 0x9201041) ^ 0x4EB37BDB))) ^ *(v43 + 4 * (*v44 & 1));
  return (*(v42 + 8 * ((212 * (a41 > 0x26F)) ^ v41)))();
}

void sub_22D30D8F8(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0x8DEF8326) + (~a1 | 0x72107CD9))) ^ 0xFFBD1E35);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D30D9B0()
{
  v7 = *(v10 + 24);
  v8 = ((((v6 - 144) | 0xD03EDA8A) - (v6 - 144) + ((v6 - 144) & 0x2FC12570)) ^ 0x7F195892) * v5;
  *(v6 - 144) = v11;
  *(v6 - 136) = v8 + v1 + 1665;
  *(v6 - 132) = v8 + 1068377366;
  (*(v4 + 8 * (v1 + 2068)))(v6 - 144);
  *(v6 - 120) = v3;
  *(v6 - 112) = v11;
  *(v6 - 128) = v1 - ((2 * ((v6 - 144) & 0x63063E80) - (v6 - 144) - 1661353608) ^ 0x33DE4360) * v5 + 833;
  *(v6 - 104) = v2;
  *(v6 - 144) = v0;
  *(v6 - 136) = v0;
  (*(v4 + 8 * (v1 ^ 0x84E)))(v6 - 144);
  *(v6 - 128) = (v1 + 1559) ^ (1564307779 * (((v6 - 144) & 0xD90C3F48 | ~((v6 - 144) | 0xD90C3F48)) ^ 0xB1FE0CA4));
  *(v6 - 144) = v7;
  *(v6 - 136) = v0;
  return (*(v4 + 8 * (v1 ^ 0x874)))(v6 - 144);
}

uint64_t sub_22D30DDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v21 - 120) = v17 - ((((v21 - 128) | 0xF0638305) - (v21 - 128) + ((v21 - 128) & 0xF9C7CF8)) ^ 0x24C49F5F) * v19 + 186;
  *(v21 - 128) = &a15;
  *(v21 - 112) = &a17;
  v22 = (*(v18 + 8 * (v17 ^ 0xCEA)))(v21 - 128);
  return (*(v18 + 8 * ((533 * (*(v21 - 104) > (v20 + v17 - 337 - 768))) ^ v17)))(v22);
}

uint64_t sub_22D30DE38@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  a6 = (v8 ^ 0x6B) + 210068311 * (((&a3 | 0xE8A0B975) - &a3 + (&a3 & 0x175F4688)) ^ 0x1A2B169D) - 576;
  a3 = a2;
  a4 = a1;
  v9 = (*(v7 + 8 * ((v8 ^ 0x6B) + 130)))(&a3);
  return (*(v7 + 8 * (((((v8 ^ 0x6B ^ (a5 == v6)) & 1) == 0) * ((((v8 ^ 0x6B) - 2116) | 0xA4) ^ 0xBC)) ^ v8 ^ 0x6B)))(v9);
}

uint64_t sub_22D30DEE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v11 = v10;
  if (v5 > 0x12)
  {
    return (*(v7 + 8 * ((1636 * ((*(v6 + 48 * a5 + 40) & 8) == ((((v11 - 644) | 0xD4) + 516) ^ (v11 + 84)))) ^ (v11 - 427))))();
  }

  v11 = v10;
  if (((1 << v5) & 0x50181) == 0)
  {
    return (*(v7 + 8 * ((1636 * ((*(v6 + 48 * a5 + 40) & 8) == ((((v11 - 644) | 0xD4) + 516) ^ (v11 + 84)))) ^ (v11 - 427))))();
  }

  LODWORD(STACK[0x348]) = v9;
  return (*(v7 + 8 * ((23 * ((*(v6 + 48 * a5 + 40) & 1) == ((v10 - 1773427176) & 0x69B456C3) - 128)) ^ (v10 + 234))))(48, a1, a2, a3, a4, 3033803021, 329604862, v8);
}

uint64_t sub_22D30DFDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, unsigned int a30, unsigned int a31, unsigned int a32, unsigned int a33, int a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, __int128 a50, __int128 a51, __int128 a52, __int128 a53)
{
  v59 = vdupq_n_s32(0x34D4291Du);
  v60 = vdupq_n_s32(0xB4D4290D);
  v61.n128_u64[0] = 0x3232323232323232;
  v61.n128_u64[1] = 0x3232323232323232;
  v62.n128_u64[0] = 0x6464646464646464;
  v62.n128_u64[1] = 0x6464646464646464;
  v120 = *(v54 + 8 * (v58 + v53 + 37));
  if (a35 == 2)
  {
    v121 = vld4q_s8(&a19);
    v90 = a33;
    v91 = veorq_s8(v121.val[0], v61);
    v92 = vmovl_high_u8(v91);
    v93 = vmovl_u8(*v91.i8);
    v94 = veorq_s8(v121.val[1], v61);
    _Q21 = vmovl_high_u8(v94);
    _Q20 = vmovl_u8(*v94.i8);
    v97 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v98 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v99 = veorq_s8(v121.val[2], v61);
    v100 = vmovl_u8(*v99.i8);
    v101 = vmovl_high_u8(v99);
    v121.val[0] = veorq_s8(v121.val[3], v61);
    v121.val[1] = vmovl_u8(*v121.val[0].i8);
    v121.val[2] = vmovl_u16(*v121.val[1].i8);
    v121.val[1] = vmovl_high_u16(v121.val[1]);
    v121.val[0] = vmovl_high_u8(v121.val[0]);
    v121.val[3] = vmovl_u16(*v121.val[0].i8);
    v121.val[0] = vmovl_high_u16(v121.val[0]);
    v102 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v101, 8uLL)), vshlq_n_s32(vmovl_high_u16(v92), 0x18uLL)), v121.val[0]);
    v103 = vorrq_s8(vorrq_s8(vorrq_s8(v98, vshll_n_u16(*v101.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v92.i8), 0x18uLL)), v121.val[3]);
    v104 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v100, 8uLL)), vshlq_n_s32(vmovl_high_u16(v93), 0x18uLL)), v121.val[1]);
    v105 = vorrq_s8(vorrq_s8(vorrq_s8(v97, vshll_n_u16(*v100.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v93.i8), 0x18uLL)), v121.val[2]);
    v121.val[0] = veorq_s8(vandq_s8(v102, v59), (*v121.val & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v121.val[3] = veorq_s8(vandq_s8(v103, v59), (*&v121.val[3] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v121.val[1] = veorq_s8(vandq_s8(v104, v59), (*&v121.val[1] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v121.val[2] = veorq_s8(vandq_s8(v105, v59), (*&v121.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v121.val[0] = vaddq_s32(vsubq_s32(v102, vaddq_s32(v121.val[0], v121.val[0])), v60);
    v121.val[3] = vaddq_s32(vsubq_s32(v103, vaddq_s32(v121.val[3], v121.val[3])), v60);
    v121.val[1] = vaddq_s32(vsubq_s32(v104, vaddq_s32(v121.val[1], v121.val[1])), v60);
    v121.val[2] = vaddq_s32(vsubq_s32(v105, vaddq_s32(v121.val[2], v121.val[2])), v60);
    LODWORD(a50) = v121.val[2].i32[0];
    *(&a50 + 4) = vextq_s8(v121.val[2], v121.val[1], 4uLL);
    *(&a51 + 4) = vextq_s8(v121.val[1], v121.val[3], 4uLL);
    *(&a52 + 4) = vextq_s8(v121.val[3], v121.val[0], 4uLL);
    *(&a53 + 4) = vextq_s8(v121.val[0], v121.val[0], 4uLL).u64[0];
    HIDWORD(a53) = v121.val[0].i32[3];
    v106 = &a50 + v55 + 273634779;
    *v106 = v57 ^ __ROR4__(*(v106 - 8) ^ *(v106 - 3) ^ *(v106 - 14) ^ *(&a50 + v55 + ((v58 + a4 - 282750985) & 0x10DA75BD) + 273633294), 31);
    return (*(v54 + 8 * ((71 * (v56 == 273634716)) ^ (v58 + a4 + 1433))))(v90, v56 - 16, 50);
  }

  else
  {
    if (a35 == 1)
    {
      v122 = vld4q_s8(&a19);
      v63 = veorq_s8(v122.val[0], v61);
      v64 = vmovl_high_u8(v63);
      v65 = vmovl_high_u16(v64);
      v66 = vmovl_u16(*v64.i8);
      v67 = vmovl_u8(*v63.i8);
      v68 = vmovl_high_u16(v67);
      v69 = vmovl_u16(*v67.i8);
      v70 = veorq_s8(v122.val[1], v61);
      v71 = vmovl_u8(*v70.i8);
      v72 = vmovl_high_u8(v70);
      v73 = veorq_s8(v122.val[2], v61);
      _Q25 = vmovl_u8(*v73.i8);
      _Q24 = vmovl_high_u8(v73);
      __asm
      {
        SHLL2           V26.4S, V24.8H, #0x10
        SHLL2           V27.4S, V25.8H, #0x10
      }

      v122.val[0] = veorq_s8(v122.val[3], v61);
      v122.val[1] = vmovl_u8(*v122.val[0].i8);
      v122.val[2] = vmovl_u16(*v122.val[1].i8);
      v122.val[0] = vmovl_high_u8(v122.val[0]);
      v122.val[3] = vmovl_u16(*v122.val[0].i8);
      v122.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v122.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v72, 8uLL), v65));
      v122.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v122.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v72.i8, 8uLL), v66));
      v122.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v122.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v71, 8uLL), v68));
      v122.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v122.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v71.i8, 8uLL), v69));
      v82 = veorq_s8(vandq_s8(v122.val[0], v59), (*&v65 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
      v83 = veorq_s8(vandq_s8(v122.val[3], v59), (*&v66 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
      v84 = veorq_s8(vandq_s8(v122.val[1], v59), (*&v68 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
      v85 = veorq_s8(vandq_s8(v122.val[2], v59), (*&v69 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
      v86 = vaddq_s32(vsubq_s32(v122.val[0], vaddq_s32(v82, v82)), v60);
      v87 = vaddq_s32(vsubq_s32(v122.val[3], vaddq_s32(v83, v83)), v60);
      v88 = vaddq_s32(vsubq_s32(v122.val[1], vaddq_s32(v84, v84)), v60);
      v89 = vaddq_s32(vsubq_s32(v122.val[2], vaddq_s32(v85, v85)), v60);
      LODWORD(a50) = v89.i32[0];
      *(&a50 + 4) = vextq_s8(v89, v88, 4uLL);
      *(&a51 + 4) = vextq_s8(v88, v87, 4uLL);
      *(&a52 + 4) = vextq_s8(v87, v86, 4uLL);
      *(&a53 + 4) = vextq_s8(v86, v86, 4uLL).u64[0];
      HIDWORD(a53) = v86.i32[3];
      JUMPOUT(0x22D34ACCCLL);
    }

    v108 = (((a29 ^ 0x2F17C673) - 790087283) ^ ((a29 ^ 0x61CD6D1B) - 1640852763) ^ ((a29 ^ 0x18BFFA14) - 415234580)) + (((a29 ^ 0xB3374CF1) + 1288221455) ^ ((a29 ^ 0x682D7FE0) - 1747812320) ^ ((a29 ^ 0x8D7F626D) + 1921031571)) - 1148559446;
    v109 = (((a30 ^ 0x64DAAE92) - 1692053138) ^ ((a30 ^ 0xDFB5DD5C) + 541729444) ^ ((a30 ^ 0xED0A22B2) + 318102862)) + (((a30 ^ 0xC1B933C1) + 1044827199) ^ ((a30 ^ 0x9B8BF8C6) + 1685325626) ^ ((a30 ^ 0xC579A7B) - 207067771)) - 151412661;
    a29 = v108 ^ ((v108 ^ 0x119974FE) - 522635340) ^ ((v108 ^ 0x302B9329) - 1049898907) ^ ((v108 ^ 0x50F380BA) - 1582054408) ^ ((v108 ^ 0x7FFEDBDF) - 1900111725) ^ 0x58DAEDCE;
    a30 = v109 ^ ((v109 ^ 0xFC1754E2) + 1237734991) ^ ((v109 ^ 0x982B2568) + 771368901) ^ ((v109 ^ 0x51ED3326) - 465817205) ^ ((v109 ^ 0x7FFFBFFF) - 902906540) ^ 0x1C4BAC2F;
    v110 = (((a31 ^ 0x16997974) - 379156852) ^ ((a31 ^ 0xB982416C) + 1182645908) ^ ((a31 ^ 0xF97E6964) + 109155996)) + (((a31 ^ 0xE09B0867) + 526710681) ^ ((a31 ^ 0x9504BF2E) + 1794851026) ^ ((a31 ^ 0x23FAE635) - 603645493)) - 934325064;
    v111 = (((a32 ^ 0x39416FDF) - 960589791) ^ ((a32 ^ 0xEF0A40E7) + 284540697) ^ ((a32 ^ 0x802E7E44) + 2144436668)) + (((a32 ^ 0x41562218) - 1096163864) ^ ((a32 ^ 0x74470F4E) - 1950814030) ^ ((a32 ^ 0x63747C2A) - 1668578346)) - 258417836;
    v112 = (v111 ^ 0x39B1F7B5) & (2 * (v111 & 0xBC31C7A4)) ^ v111 & 0xBC31C7A4;
    v113 = ((2 * (v111 ^ 0x21D3F7FD)) ^ 0x3BC460B2) & (v111 ^ 0x21D3F7FD) ^ (2 * (v111 ^ 0x21D3F7FD)) & 0x9DE23058;
    v114 = v113 ^ 0x84221049;
    v115 = (v113 ^ 0x11C02010) & (4 * v112) ^ v112;
    v116 = ((4 * v114) ^ 0x7788C164) & v114 ^ (4 * v114) & 0x9DE23058;
    v117 = (v116 ^ 0x15800040) & (16 * v115) ^ v115;
    v118 = ((16 * (v116 ^ 0x88623019)) ^ 0xDE230590) & (v116 ^ 0x88623019) ^ (16 * (v116 ^ 0x88623019)) & 0x9DE23050;
    v119 = v117 ^ 0x9DE23059 ^ (v118 ^ 0x9C220000) & (v117 << 8);
    a31 = v110 ^ ((v110 ^ 0xE1721B0F) + 84497713) ^ ((v110 ^ 0x7B08B5A1) - 1619788897) ^ ((v110 ^ 0xFC10A081) + 409726655) ^ ((v110 ^ 0x7DEEBFEF) - 1718226479) ^ 0x4DE1E0BC;
    a32 = v111 ^ (2 * ((v119 << 16) & 0x1DE20000 ^ v119 ^ ((v119 << 16) ^ 0x30590000) & (((v118 ^ 0x1C03049) << 8) & 0x1DE20000 ^ 0x1DC20000 ^ (((v118 ^ 0x1C03049) << 8) ^ 0x62300000) & (v118 ^ 0x1C03049)))) ^ 0xF110F66A;
    return v120(v59, v60, v61, v62);
  }
}

void sub_22D30DFE8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) - 843532609 * ((-2 - ((a1 | 0xE4DA0525) + (~a1 | 0x1B25FADA))) ^ 0x4768AE5F);
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (v3 - 1726767306 < 0)
  {
    v4 = 1726767306 - v3;
  }

  else
  {
    v4 = v3 - 1726767306;
  }

  v7 = v1 + 50899313 * ((2 * (&v6 & 0x4A1C24A0) - &v6 - 1243358369) ^ 0x7D821F09) + 828;
  v6 = v2;
  v5 = *(&off_28407CFD0 + (v1 ^ 0x1CE)) - 8;
  (*&v5[8 * v1 + 15048])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D30E114(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = v7 + 2;
  v14 = (v10 - 2);
  *v14 = (v13 ^ a7) * (v13 + 17);
  *(v14 - 1) = (v13 ^ 0xBB) * (v13 + 18);
  return (*(v12 + 8 * (((v9 + 106 != v11) * a4) ^ v8)))();
}

uint64_t sub_22D30E4C4()
{
  v5 = 7 * (v0 ^ 0x23B);
  *v7 = (v2 + v5 - 357) ^ v8;
  v11 = v5 - (&v11 ^ 0x8DAD62EC) * v4 + 1139;
  v12 = v10;
  (*(v3 + 8 * (v5 + 1815)))(&v11);
  v12 = v9;
  v11 = (v5 ^ 0x1DB) - (((&v11 ^ 0x8384400 | 0x20039B97) + (&v11 ^ 0x20021203 | 0xDFFC6468)) ^ 0xA59734EE) * v4 + 1306;
  (*(v3 + 8 * ((v5 ^ 0x1DB) + 1982)))(&v11);
  return v1 ^ v2;
}

uint64_t sub_22D30E658(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = a3 - 28;
  v16 = ((((v15 ^ 0xA5A70C4) + a12) ^ 0x13A2B942) - 1064193133) ^ ((v15 ^ 0xA5A70C4) + a12) ^ ((((v15 ^ 0xA5A70C4) + a12) ^ 0x6C307D72) - 1090291805) ^ ((((v15 ^ 0xA5A70C4) + a12) ^ 0xAC01DEE0) + 2134037553) ^ ((v12 ^ 0xFF5FE984 ^ ((v15 ^ 0xA5A70C4) + a12)) + 745334064);
  v18 = v16 != 751629615 && ((v15 ^ 0x79B) & v16) == 15;
  v19 = *(v13 + 8 * ((v18 * (v15 ^ 0x7A9)) ^ v15));
  *(v14 - 140) = -42899;
  return v19();
}

uint64_t sub_22D30E74C()
{
  *v4 = 513153;
  v6 = *v3;
  v7 = 143681137 * ((2 * ((v5 - 152) & 0x7907226145A9DC60) - (v5 - 152) + 0x6F8DD9EBA562398) ^ 0x17805F996EF13FC2);
  *(v5 - 120) = 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2) + v0 - 288126657;
  v8 = v5 - 176;
  *(v8 + 64) = v7 + 5119;
  *(v8 + 32) = v6 - v7;
  *(v5 - 128) = -143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  *(v5 - 124) = (v0 - 50079159) ^ (143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2));
  *(v5 - 132) = v0 - 50079173 - 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  *(v5 - 152) = ((v0 - 50079173) ^ 0x6F) - 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  v9 = (*(v2 + 8 * (v0 ^ (v1 + 2196))))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 136)))(v9);
}

uint64_t sub_22D30E860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = v15;
  *(v20 - 120) = v17 - (((((v20 - 128) | 0xB2F517AA) ^ 0xFFFFFFFE) - (~(v20 - 128) | 0x4D0AE855)) ^ 0x99ADF40F) * v18 + 523;
  *(v20 - 112) = &a15;
  v21 = (*(v16 + 8 * (v17 ^ 0xBBB)))(v20 - 128);
  return (*(v16 + 8 * (v17 ^ (2 * (((v17 ^ (*(v20 - 104) > (v17 ^ 2 ^ (v19 + 771)))) & 1) == 0)))))(v21);
}

uint64_t sub_22D30E8F8@<X0>(int a1@<W8>)
{
  v5 = (&STACK[0x248] + v2);
  *v5 = v4;
  v5[1] = v4;
  return (*(v3 + 8 * ((641 * (35 * (a1 ^ 0x5Du) - 229 == (v1 & 0x30))) ^ a1 ^ 0x433)))();
}

uint64_t sub_22D30EA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v23 = 1785193651 * ((((v22 - 136) | 0x2555F3DE) - (v22 - 136) + ((v22 - 136) & 0xDAAA0C20)) ^ 0x36891FFE);
  *(v22 - 128) = v17 - v23 + 991;
  *(v22 - 124) = ((v17 + 227) ^ 0xEEFFAA5B) - v23 + (v21 ^ 0x7F9D5E1D) + ((2 * v21) & 0xFF3ABC3A);
  *(v22 - 136) = &a17;
  (*(v19 + 8 * (v17 + 2058)))(v22 - 136);
  *(v22 - 128) = v17 + 227 - 143681137 * ((~((v22 - 136) | 0xFC9625E1) + ((v22 - 136) & 0xFC9625E1)) ^ 0xD7CEC644) + 867;
  *(v22 - 120) = v20;
  *(v22 - 136) = a16;
  v24 = (*(v19 + 8 * (v17 + 2038)))(v22 - 136);
  return (*(v19 + 8 * (((*(v22 - 112) > ((v17 + 1565826730) & 0xA2AB65BD ^ (v18 + 1299))) * (v17 - 133)) ^ (v17 + 227))))(v24);
}

void sub_22D30EDEC(uint64_t a1)
{
  v1 = *(a1 + 8) - 742307843 * ((2 * (a1 & 0x4921A181) - a1 + 920542846) ^ 0x28FCD32B);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D30EEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *v11 = v7 - 1;
  v13 = &v11[6 * (v7 - 1098146251)];
  v14 = v13[2];
  LODWORD(STACK[0x53C]) = v13[3];
  STACK[0x3A0] = *(v13 + 2);
  LODWORD(STACK[0x524]) = v13[6];
  v15 = *(v9 + 48 * (v12 + ((v8 + 1695) | 0x60) + v14 - 2144) + 36);
  LODWORD(STACK[0x348]) = v15;
  return (*(v10 + 8 * (((v15 == a7) * (((8 * v8) ^ 0x8F0) + 270)) ^ v8)))();
}

uint64_t sub_22D30EF78(uint64_t a1, int a2, int a3, int a4)
{
  v8 = *(v5 + 48 * v7 + 36);
  v10 = v8 != a3 && (v8 + a4) < 0x80000003;
  return (*(v6 + 8 * ((v10 * (((158 * (v4 ^ 0x541) + 269485740) | 0x6DA08741) ^ (a2 - 950))) ^ v4)))();
}

void sub_22D30EFDC(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12) - 50899313 * ((a1 + 2038787724 - 2 * (a1 & 0x79856E8C)) ^ 0xB1E4AADA);
  v2 = *a1;
  v4[0] = (50899313 * (((v4 | 0x439B0BB4) - v4 + (v4 & 0xBC64F448)) ^ 0x8BFACFE2)) ^ (v1 - 219);
  v5 = v2;
  v3 = *(&off_28407CFD0 + (v1 ^ 0x482)) - 8;
  (*&v3[8 * (v1 ^ 0xC9B)])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D30F0F0(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 8 * (v3 ^ 0xB85)))(*v6, a2, LODWORD(STACK[0x208]) ^ 0x54FB64AEu, v3 - 1082972259 + v6[13], &STACK[0x5D0], v5, v4, &STACK[0x1888]);
  if (v8 == 268435459)
  {
    return (*(v2 + 8 * ((((((STACK[0x340] - 852) | 0x2A3) - 626) ^ 0xD5) * (LODWORD(STACK[0x26C]) < 3)) ^ (STACK[0x340] + 1178))))(v8, v9);
  }

  if (v8)
  {
    v10 = STACK[0x340];
    v11 = STACK[0x340] - 803;
    v12 = (v8 << (STACK[0x340] + 93)) & 0x69A8521A;
    v13 = 1785193651 * ((((v7 - 216) | 0x512F35CF) - ((v7 - 216) & 0x512F35CF)) ^ 0x42F3D9EF);
    *(v7 - 216) = &STACK[0x504];
    LODWORD(STACK[0x270]) = v8;
    *(v7 - 208) = -1261164275 - v13 + v8 - v12;
    *(v7 - 204) = v10 - v13 - 536;
    v14 = (*(v2 + 8 * (v10 ^ 0xB70)))(v7 - 216);
    return (*(v2 + 8 * (((LODWORD(STACK[0x504]) == -1261164275) * ((v11 + 2) ^ 0x617)) ^ v11)))(v14);
  }

  else
  {
    v15 = STACK[0x340] + 484;
    v16 = STACK[0x340] + 157;
    v17 = v4;
    v18 = STACK[0x340];
    (*(v2 + 8 * (STACK[0x340] + 1315)))(*STACK[0x280], v5, v17);
    v19 = v6[13];
    v20 = ((STACK[0x208] & 0x7FFFFFFF ^ 0xB6916ED4) - 1671353055) ^ ((STACK[0x208] & 0x7FFFFFFF ^ 0xE48DBA5A) - 830604881) ^ ((v15 ^ 0xAC17F65D) + (STACK[0x208] & 0x7FFFFFFF ^ 0x86E7B020));
    v21 = (LODWORD(STACK[0x430]) ^ 0xBBDCEFFF) + 1606156016 + ((2 * LODWORD(STACK[0x430])) & 0x77B9DFFE);
    v22 = (v7 - 216) | 0x9BFA2ABB;
    v23 = 742307843 * ((-1678103877 - v22 + ((v7 - 216) | 0x6405D544)) ^ 0x7A275811);
    *(v7 - 200) = STACK[0x448];
    *(v7 - 192) = &STACK[0x1888];
    v24 = -742307843 * ((-1678103877 - v22 + ((v7 - 216) | 0x6405D544)) ^ 0x7A275811);
    *(v7 - 208) = v21 ^ v23;
    *(v7 - 204) = v24 + 2129113115 * v19 - 101675350;
    *(v7 - 216) = STACK[0x2B0];
    *(v7 - 180) = (v18 - 894) ^ v23;
    *(v7 - 176) = v24 + 2129113115 * v20 + 2091270256;
    v25 = (*(v2 + 8 * (v18 ^ 0xAA7)))(v7 - 216);
    v26 = *(v7 - 184);
    LODWORD(STACK[0x504]) = v26;
    return (*(v2 + 8 * ((327 * (v26 == -1261164275)) ^ v16)))(v25);
  }
}

uint64_t sub_22D30F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49)
{
  v50 = STACK[0x530];
  STACK[0x3F8] = *(v49 + 8 * (STACK[0x340] - 874));
  STACK[0x4F0] = v50;
  STACK[0x518] = a17;
  v51 = *(v50 + 68) & (((a49 & 0xD60470CF) - 314933776) & 0x12C5875D ^ 0x56B);
  *(v50 + v51) = -78;
  return (*(v49 + 8 * ((1239 * (v51 > 0x37)) ^ a49 & 0xD60470CF)))(a1, 2015, 2037, a4, 1261138644, 2630733904, 50, 100);
}

uint64_t sub_22D30F328()
{
  STACK[0x220] = v1;
  STACK[0x278] = v0;
  STACK[0x228] = v5;
  LODWORD(STACK[0x274]) = v2;
  v7 = 1082434553 * ((v6 - 216) ^ 0x9B47F68A);
  STACK[0x3A8] = 0;
  *(v6 - 200) = &STACK[0x3A8];
  *(v6 - 208) = &STACK[0x43C];
  *(v6 - 184) = 0;
  *(v6 - 216) = v7 ^ 0xA68CCC3A;
  *(v6 - 212) = (v4 - 67) ^ v7;
  v8 = (*(v3 + 8 * (v4 + 1352)))(v6 - 216);
  return (*(v3 + 8 * ((206 * (*(v6 - 192) == 2 * (((v4 - 887) | 0x61A) ^ 0x7C8) - 1261165207)) ^ v4)))(v8);
}

uint64_t sub_22D30F4D4@<X0>(int a1@<W8>)
{
  v6 = a1 - 27;
  v7 = (((v4 | 0xD6E866FE) - v4 + (v4 & 0x29179900)) ^ 0x4DAF9074) * v1;
  *(v5 - 184) = 0;
  *(v5 - 200) = &STACK[0x460];
  *(v5 - 208) = &STACK[0x55C];
  *(v5 - 216) = v7 ^ 0xA68CCC3F;
  *(v5 - 212) = (a1 + 407) ^ v7;
  v8 = (*(v2 + 8 * (a1 + 1826)))(v5 - 216);
  return (*(v2 + 8 * (((*(v5 - 192) != ((13 * (v6 ^ 0x187)) ^ (v3 + 63))) * (5 * (v6 ^ 0x18F) - 34)) ^ v6)))(v8);
}

uint64_t sub_22D30F59C(int8x16_t a1, int8x16_t a2)
{
  v9 = v3 + 2;
  v10 = v5 + 2;
  v11 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v10[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v10 = v11;
  return (*(v8 + 8 * (((v4 == 32) * v6) ^ (v7 + v2 - 91))))();
}

uint64_t sub_22D30F6A8@<X0>(int a1@<W5>, int a2@<W8>)
{
  if (v3)
  {
    a2 = a1;
  }

  LODWORD(STACK[0x348]) = v5;
  return (*(v4 + 8 * (((a2 == a1) * (((v2 - 440) | 0x360) + 1982)) ^ ((v2 - 440) | 0x360))))();
}

void sub_22D30FEBC(uint64_t a1)
{
  v1 = *(a1 + 20) - 210068311 * (a1 ^ 0xF28BAFE8);
  __asm { BRAA            X9, X17 }
}

void sub_22D30FF78(int a1@<W8>)
{
  v4 = v2 ^ 0xF5;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  **(v1 + 8) = v3 - ((2 * v3) & 0x8CE65042) + (v4 ^ 0x46732FB0);
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_22D310004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, unsigned int a28)
{
  v30 = ((a8 + 458) ^ 0xA7B2CD6E) + v29;
  v31 = v30 < 0xA7B2CC5E;
  v32 = v30 > a28;
  if (a28 < 0xA7B2CC5E != v31)
  {
    v32 = v31;
  }

  return (*(v28 + 8 * ((!v32 * a27) ^ (a8 + 2011))))();
}

uint64_t sub_22D3100B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 112) = v18 + 965 + 1082434553 * ((((v21 - 144) | 0x99459B04) - ((v21 - 144) & 0x99459B04)) ^ 0x2026D8E);
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  (*(v19 + 8 * (v18 ^ 0xB0F)))(v21 - 144);
  *(v21 - 112) = v18 + 965 + 1082434553 * ((((v21 - 144) | 0x26A45A25) + (~(v21 - 144) | 0xD95BA5DA)) ^ 0xBDE3ACAE);
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  (*(v19 + 8 * (v18 ^ 0xB0F)))(v21 - 144);
  v22 = 2066391179 * ((-281814440 - ((v21 - 144) | 0xEF33DA58) + ((v21 - 144) | 0x10CC25A7)) ^ 0xBFEBA7BF);
  *(v21 - 128) = (((v20 - 996129833) ^ 0xEFBB9FBC) + ((2 * (v20 - 996129833)) & 0xDF773F78) + 1987868478 + ((v18 + 133863513) & 0xF80567BE)) ^ v22;
  *(v21 - 144) = v22 + v18 - 441;
  *(v21 - 136) = a13;
  v23 = (*(v19 + 8 * (v18 ^ 0xB07)))(v21 - 144);
  return (*(v19 + 8 * ((37 * (*(v21 - 140) == ((v18 - 274) | 0x49) + 262714524)) ^ v18)))(v23);
}

uint64_t sub_22D310280@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, unsigned int a6, int a7)
{
  v11 = ((1505657689 - (&a3 | 0x59BE8359) + (&a3 | 0xA6417CA6)) ^ 0xB59D9086) * a1;
  a3 = 1332270185 - v11;
  a6 = 1480580334 - v11;
  a7 = v10 - v11 - 527;
  a4 = &a2;
  a5 = v7;
  v12 = (*(v8 + 8 * (v10 ^ 0xB89)))(&a3);
  return (*(v8 + 8 * ((162 * (*(v7 + 24) == ((v10 + 1255) ^ (v9 + 132)))) ^ v10)))(v12);
}

uint64_t sub_22D3103B0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = (a11 + v11);
  v18 = vaddq_s8(vsubq_s8(v17[1], vandq_s8(vaddq_s8(v17[1], v17[1]), a7)), a8);
  *&STACK[0x248] = vaddq_s8(vsubq_s8(*v17, vandq_s8(vaddq_s8(*v17, *v17), a7)), a8);
  *&STACK[0x258] = v18;
  return (*(v15 + 8 * ((((((v12 ^ 0x4F7u) * v16) ^ v13) == 32) * v14) ^ v12 ^ 0xFC)))(a1, a2, v11 + 64);
}

uint64_t sub_22D310488()
{
  v4 = v2 ^ 0x2D6;
  v13 = v2 + 210068311 * ((&v10 + 1582083030 - 2 * (&v10 & 0x5E4CABD6)) ^ 0xACC7043E) + 912;
  v10 = v9;
  v11 = &v8;
  (*(v1 + 8 * (v2 ^ 0xAB2u)))(&v10);
  LODWORD(v10) = v2 - 50899313 * (&v10 ^ 0xC861C456) + 816;
  v11 = v9;
  (*(v1 + 8 * (v2 + 1650)))(&v10);
  if (v12 == (v2 ^ 0x2D6 ^ (v3 + 154)))
  {
    v5 = v8;
  }

  else
  {
    v5 = v12;
  }

  LODWORD(v10) = v2 - ((2 * (&v10 & 0x507F5F0) - &v10 + 2063075855) ^ 0xF75568E3) * v0 + 860;
  v11 = v9;
  (*(v1 + 8 * (v2 + 1536)))(&v10);
  v11 = v7;
  LODWORD(v10) = v4 - (((&v10 | 0xD415C51B) - &v10 + (&v10 & 0x2BEA3AE0)) ^ 0x59B8A7F7) * v0 + 1326;
  (*(v1 + 8 * (v4 + 2002)))(&v10);
  return v5 ^ v3;
}

uint64_t sub_22D310708(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int8x16_t a23, int32x4_t a24, int8x16_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = vld1q_dup_f32(v34);
  v36.i64[0] = 0x8000000080000000;
  v36.i64[1] = 0x8000000080000000;
  a2.i32[0] = *(v34 + 4 * (v31 - 1500581780) - 1776);
  a2.i32[1] = *(v34 + 8);
  a2.i32[2] = *(v34 + 12);
  v37 = vextq_s8(v35, a2, 0xCuLL);
  v38 = a2;
  v38.i32[3] = *(v34 + 16);
  v39 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v38, a23), vandq_s8(v37, v36)), 1uLL), *(v34 + 1588));
  v37.i32[0] = *(v33 + 4 * (*(v34 + 4 * (v31 - 1500581780) - 1776) & 1));
  v37.i32[1] = *(v33 + 4 * (*(v34 + 8) & 1));
  v37.i32[2] = *(v33 + 4 * (*(v34 + 12) & 1));
  v37.i32[3] = *(v33 + 4 * (v38.i8[12] & 1));
  *v34 = veorq_s8(vaddq_s32(vsubq_s32(v39, vandq_s8(vaddq_s32(v39, v39), a25)), a24), v37);
  return (*(v32 + 8 * ((v31 - 1500581780) ^ 2)))(1500582225, 2794385694, a31, 2346792261, 398617226, 1751, 2895);
}

uint64_t sub_22D310774(uint64_t a1, int a2)
{
  v7 = v2 + a1 - v3;
  v8 = *(v7 - 31);
  v9 = v6 + a1 - v3;
  v10.i64[0] = 0x6464646464646464;
  v10.i64[1] = 0x6464646464646464;
  v11.i64[0] = 0x3232323232323232;
  v11.i64[1] = 0x3232323232323232;
  *(v9 - 15) = vaddq_s8(vsubq_s8(*(v7 - 15), vandq_s8(vaddq_s8(*(v7 - 15), *(v7 - 15)), v10)), v11);
  *(v9 - 31) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v10)), v11);
  return (*(v5 + 8 * (((v3 != 288) * ((a2 ^ (4 * v4)) - 834)) ^ v4)))();
}

uint64_t sub_22D310820(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 107;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_22D310840(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

void sub_22D31085C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 8) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x22D343154);
}

uint64_t sub_22D3108F8(uint64_t result)
{
  v1 = 1564307779 * ((((2 * result) | 0x3BE076D6021D91FELL) - result - 0x1DF03B6B010EC8FFLL) ^ 0x3833CF11960304ECLL);
  v2 = *(result + 32) ^ v1;
  v3 = *(result + 36) - v1;
  v4 = *(result + 4) - v1;
  v5 = *(result + 8) ^ v1;
  v6 = *result + v1;
  v7 = *(result + 24) - v1;
  v8 = v5 > v7;
  v9 = v5 == v7;
  v10 = v8;
  if (v2)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3;
  }

  *(result + 16) = v11 ^ v4;
  return result;
}

void sub_22D310994(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40) ^ (2066391179 * ((((2 * a1) | 0xC785A6D2) - a1 - 1673712489) ^ 0xCCE55171));
  v2 = *(a1 + 32);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v10[0] = 0x66EC60CA00000082;
  v10[1] = &v12;
  v9[0] = 0x66EC60CA00000082;
  v9[1] = &v11;
  v6 = v4[1];
  v13 = v10;
  v14 = v6;
  v15 = v1 - 2066391179 * ((2013797641 - (&v13 | 0x78081D09) + (&v13 | 0x87F7E2F6)) ^ 0x28D060EE) + 833;
  v17 = v2;
  v18 = v4;
  v16 = v5;
  v7 = *(&off_28407CFD0 + (v1 ^ 0xA4)) - 8;
  (*&v7[8 * v1 + 15952])(&v13);
  v8 = *v4;
  v13 = v9;
  v14 = v8;
  v15 = (1564307779 * (&v13 ^ 0x970DCC13)) ^ (v1 + 1559);
  (*&v7[8 * v1 + 15776])(&v13);
  LODWORD(v13) = v1 + 1082434553 * (((&v13 | 0x5D0504A1) - (&v13 & 0x5D0504A1)) ^ 0xC642F22B) + 207;
  v14 = v3;
  (*&v7[8 * (v1 ^ 0x826)])(&v13);
  __asm { BRAA            X8, X17 }
}

void sub_22D310BF0(uint64_t a1)
{
  v1 = *a1 + 143681137 * ((a1 + 242471276 - 2 * (a1 & 0xE73D16C)) ^ 0xDAD4CD36);
  v2 = *(a1 + 8);
  v3 = *(&off_28407CFD0 + v1 - 1033) - 8;
  (*&v3[8 * v1 + 8784])(*(&off_28407CFD0 + (v1 ^ 0x4FF)), sub_22D309CDC);
  __asm { BRAA            X10, X17 }
}

void sub_22D310CBC(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = 843532609 * ((a1 + 918077498 - 2 * (a1 & 0x36B8C03A)) ^ 0x6AF594BF);
  v2 = *(a1 + 64) - v1;
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 24) ^ v1;
  v13 = 0x66EC60CA00000040;
  v14 = &v18;
  v9 = 0x66EC60CA00000082;
  v10 = &v19;
  v11 = 0x66EC60CA00000001;
  v12 = &v8;
  v15 = 0x66EC60CA00000082;
  v16 = &v17;
  if (v3 | v4)
  {
    v6 = v5 == 1213870120;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D310E54(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (v11 + v9 + v12 - 16);
  v15 = vaddq_s8(vsubq_s8(*(a9 + v9 - 16), vandq_s8(vaddq_s8(*(a9 + v9 - 16), *(a9 + v9 - 16)), a4)), a5);
  v14[-1] = vaddq_s8(vsubq_s8(*(a9 + v9 - 32), vandq_s8(vaddq_s8(*(a9 + v9 - 32), *(a9 + v9 - 32)), a4)), a5);
  *v14 = v15;
  return (*(v13 + 8 * ((((v9 & 0xFFFFFFE0) == 32) * (((v10 + 1955013696) & 0x8B78D7F7) + 397)) ^ v10)))();
}

void sub_22D310F38(uint64_t a1)
{
  v1 = 1785193651 * ((2 * (a1 & 0x70CFEB8A) - a1 - 1892674443) ^ 0x9CECF855);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D31106C@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 3 + ((v3 - 16) ^ 0xFFFFFFFFFFFFF913) + v2) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((v3 - 16) | (16 * ((v2 & 0xFFFFFFFC) != 4)))))();
}

uint64_t sub_22D311110(void *a1)
{
  if (*a1)
  {
    v3 = (a1[6] | a1[3]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (((((v1 ^ 0x5CB) << 6) - 547054082) & 0x209B634C) - 781)) ^ v1)))();
}

void sub_22D311250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(v8 + 16);
  **(v8 + 8) = v7;
  *v10 = a7;
  *v8 = *(v9 + 24);
}

uint64_t sub_22D3113EC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17, unsigned int a18)
{
  v19 = a3 + a4 + 1856 + a15 + 26906444;
  v20 = v19 < ((a3 + a4 - 91) | 0x153u) + 26907988;
  v21 = v19 > a18;
  if (a18 < a17 != v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  return (*(v18 + 8 * ((13 * v22) ^ (a3 + a4 + 1034))))();
}

uint64_t sub_22D3113F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v49 = 1361651671 * (((v48 - 216) & 0x903CF2FA | ~((v48 - 216) | 0x903CF2FA)) ^ 0xBCE1FD89);
  *(v48 - 200) = v49 + v46 + 136;
  *(v48 - 152) = v49 + 1934792313;
  *(v48 - 216) = &STACK[0x434];
  *(v48 - 208) = a16;
  *(v48 - 168) = 0;
  *(v48 - 160) = 0;
  *(v48 - 192) = v47;
  *(v48 - 184) = a45;
  v50 = (*(v45 + 8 * (v46 ^ 0xA24)))(v48 - 216);
  v51 = *(v48 - 176);
  LODWORD(STACK[0x5A4]) = v51;
  return (*(v45 + 8 * ((1619 * (v51 == (v46 ^ 0x160) - 1261165207)) ^ v46)))(v50);
}

uint64_t sub_22D31155C()
{
  v2 = (v0 + 1124427618) & 0xBCFA9BF6;
  v3 = STACK[0x3C0];
  v4 = STACK[0x378];
  v5 = (v2 - 6433701) & 0x622967;
  v6 = v2 + 679;
  STACK[0x408] = *(v1 + 8 * v0);
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v1 + 8 * ((v8 * (v5 ^ 0x179)) ^ v6)))();
}

uint64_t sub_22D3115D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

void sub_22D3115F0(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_22D311818@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x34C]) = v3;
  LODWORD(STACK[0x390]) = a1;
  LODWORD(STACK[0x41C]) = v2;
  LODWORD(STACK[0x42C]) = v6 + 80;
  v7 = STACK[0x5B8];
  v8 = (((v2 ^ 0x57691D37) - 1466506551) ^ ((v2 ^ 0xC680C984) + 964638332) ^ ((((v5 - 2060) | 0x384) ^ 0x38737995) + (v2 ^ 0xC78C85CF))) - 1098546695 + (((*(STACK[0x5B8] + 88) ^ 0x1AF3D9C4) - 452188612) ^ ((*(STACK[0x5B8] + 88) ^ 0xFEE6ED30) + 18420432) ^ ((*(STACK[0x5B8] + 88) ^ 0xB2706588) + 1301256824));
  v9 = (v8 ^ 0xCC2420FF) & (2 * (v8 & 0xEE4520FF)) ^ v8 & 0xEE4520FF;
  v10 = ((2 * (v8 ^ 0x8AE20DB)) ^ 0xCDD60048) & (v8 ^ 0x8AE20DB) ^ (2 * (v8 ^ 0x8AE20DB)) & 0xE6EB0024;
  v11 = v10 ^ 0x22290024;
  v12 = (v10 ^ 0xC0000000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x9BAC0090) & v11 ^ (4 * v11) & 0xE6EB0024;
  v14 = v12 ^ 0xE6EB0024 ^ (v13 ^ 0x82A80000) & (16 * v12);
  v15 = (16 * (v13 ^ 0x64430024)) & 0xE6EB0020 ^ 0x804B0024 ^ ((16 * (v13 ^ 0x64430024)) ^ 0x6EB00240) & (v13 ^ 0x64430024);
  v16 = (v14 << 8) & 0xE6EB0000 ^ v14 ^ ((v14 << 8) ^ 0xEB002400) & v15;
  *(STACK[0x5B8] + 88) = v8 ^ (2 * ((v16 << 16) & 0x66EB0000 ^ v16 ^ ((v16 << 16) ^ 0x240000) & ((v15 << 8) & 0xE6EB0000 ^ 0x4EB0000 ^ ((v15 << 8) ^ 0x6B000000) & v15))) ^ 0xB1B671CB;
  LODWORD(STACK[0x4C0]) = a2;
  LODWORD(STACK[0x438]) = v4;
  v17 = (((a2 ^ 0xDA0B7AE7) + 636781849) ^ ((a2 ^ 0xAB375D7) - 179533271) ^ ((a2 ^ 0x86DD5E4C) + 2032312756)) + (((*(v7 + 72) ^ 0x38E59A8D) - 954571405) ^ ((*(v7 + 72) ^ 0xD350F9C1) + 749667903) ^ ((*(v7 + 72) ^ 0xBDD03230) + 1110429136)) - 11217545;
  v18 = (((v4 ^ 0x414D46FA) - 1095583482) ^ ((v4 ^ 0x3C451D5C) - 1011162460) ^ ((v4 ^ 0x2B6D0ADA) - 728566490)) + (((*(v7 + 76) ^ 0x42903DE3) - 1116749283) ^ ((*(v7 + 76) ^ 0xC3D5C80D) + 1009399795) ^ ((*(v7 + 76) ^ 0xD720A492) + 685726574)) + 603407937;
  v19 = (v18 ^ 0xA68A5E36) & (2 * (v18 & 0x88D35CB7)) ^ v18 & 0x88D35CB7;
  v20 = ((2 * (v18 ^ 0xA7AAE750)) ^ 0x5EF377CE) & (v18 ^ 0xA7AAE750) ^ (2 * (v18 ^ 0xA7AAE750)) & 0x2F79BBE6;
  v21 = v20 ^ 0x21088821;
  v22 = (v20 ^ 0x65133C4) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0xBDE6EF9C) & v21 ^ (4 * v21) & 0x2F79BBE4;
  v24 = (v23 ^ 0x2D60AB80) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x2191063)) ^ 0xF79BBE70) & (v23 ^ 0x2191063) ^ (16 * (v23 ^ 0x2191063)) & 0x2F79BBE0;
  v26 = v24 ^ 0x2F79BBE7 ^ (v25 ^ 0x2719BA00) & (v24 << 8);
  *(v7 + 72) = v17 ^ ((v17 ^ 0x9F805DCE) + 854954063) ^ ((v17 ^ 0xBDD7BA77) + 279083000) ^ ((v17 ^ 0x1F062A21) - 1301026910) ^ ((v17 ^ 0x6FDBFFE7) - 1028771224) ^ 0x4EF6303;
  *(v7 + 76) = v18 ^ (2 * ((v26 << 16) & 0x2F790000 ^ v26 ^ ((v26 << 16) ^ 0x3BE70000) & (((v25 ^ 0x8600187) << 8) & 0x2F790000 ^ 0x6400000 ^ (((v25 ^ 0x8600187) << 8) ^ 0x79BB0000) & (v25 ^ 0x8600187)))) ^ 0xD6877A05;
  v27 = STACK[0x5B8];
  v28 = (((LODWORD(STACK[0x34C]) ^ 0x796D14DF) - 2037191903) ^ ((LODWORD(STACK[0x34C]) ^ 0xD97AE3BC) + 646257732) ^ ((LODWORD(STACK[0x34C]) ^ 0xF672A61F) + 160258529)) + 203661824 + (((*(STACK[0x5B8] + 80) ^ 0x81D631C2) + 2116668990) ^ ((*(STACK[0x5B8] + 80) ^ 0x4A90AF66) - 1250996070) ^ ((*(STACK[0x5B8] + 80) ^ 0x9D23CFD8) + 1658597416));
  v29 = (((LODWORD(STACK[0x390]) ^ 0xF91BBFE7) + 115621913) ^ ((LODWORD(STACK[0x390]) ^ 0x14EE1A1E) - 351148574) ^ ((LODWORD(STACK[0x390]) ^ 0xBB90F485) + 1148128123)) - 1231815175 + (((*(STACK[0x5B8] + 84) ^ 0xE3E50C28) + 471528408) ^ ((*(STACK[0x5B8] + 84) ^ 0x7056F824) - 1884747812) ^ ((*(STACK[0x5B8] + 84) ^ 0xC5D6A570) + 975788688));
  *(v27 + 80) = v28 ^ ((v28 ^ 0x85C4B065) + 627290259) ^ ((v28 ^ 0xB81E5064) + 414797972) ^ ((v28 ^ 0x8D7DE8F6) + 769320962) ^ ((v28 ^ 0xEFFFF7FF) + 1331230473) ^ 0x93DAE74;
  *(v27 + 84) = v29 ^ ((v29 ^ 0x2A75D19) - 191759896) ^ ((v29 ^ 0x7401BAC9) - 2110317000) ^ ((v29 ^ 0x40900328) - 1230592041) ^ ((v29 ^ 0x3FFFBFF9) - 909567224) ^ 0x5FAC0A7D;
  STACK[0x4F8] -= 320;
  return (STACK[0x3D8])();
}

void sub_22D31205C(uint64_t a1@<X8>, uint64_t a2, char a3, unsigned int a4)
{
  v9 = 3 * ((v4 - 1248) ^ 0xB);
  *(v8 - 100) = v9 + 450 + 50899313 * ((v8 - 112) ^ 0xC861C456);
  *(v8 - 112) = a1;
  (*(v6 + 8 * (v9 ^ 0xBE1)))(v8 - 112);
  v10 = *(v8 - 104);
  *(v8 - 100) = v9 + 450 + 50899313 * (((v8 - 112) & 0x44A45AB1 | ~((v8 - 112) | 0x44A45AB1)) ^ 0x733A6118);
  *(v8 - 112) = v5;
  (*(v6 + 8 * (v9 + 1503)))(v8 - 112);
  v11 = ((*(v8 - 104) + v10) * (((v9 - 767) | 0xC0) - 1725545589) + *(v8 - 104) * v10 - 944893855) * v7;
  a4 = (v11 ^ 0x7EFCF7DB) - 403740433 + ((2 * v11) & 0xFDF9EFB6);
  *(v8 - 96) = (v9 + 1015) ^ (1564307779 * ((2 * ((v8 - 112) & 0x643E4990) - (v8 - 112) + 465679980) ^ 0x8CCC7A7F));
  *(v8 - 112) = v5;
  *(v8 - 104) = &a3;
  (*(v6 + 8 * (v9 + 1428)))(v8 - 112);
  JUMPOUT(0x22D3121B8);
}

uint64_t sub_22D3121F4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1 ^ 0x5AA;
  v16 = (a1 + 20139728) & 0xFECCACCA;
  v17 = a1 - 1190;
  *(v14 - 104) = a1 + 1082434553 * ((-603942666 - (v13 | 0xDC0090F6) + a4) ^ 0xB8B89983) + 558;
  *(v14 - 136) = a11;
  *(v14 - 128) = v12;
  *(v14 - 120) = v12;
  *(v14 - 112) = a6;
  v18 = (*(v11 + 8 * (a1 + 876)))(v14 - 136);
  return (*(v11 + 8 * (((((a8 >> 1) & a5) != (v16 ^ 0xC8)) * (v15 - 55)) | v17)))(v18);
}

uint64_t sub_22D3121FC(uint64_t a1)
{
  v3 = STACK[0x448];
  v4 = (LODWORD(STACK[0x430]) ^ 0x77DBF77EEFDEFF6BLL) + ((2 * LODWORD(STACK[0x430])) & 0x1DFBDFED6) + ((17 * (v1 ^ 0x761u)) ^ 0x882408811021007BLL);
  STACK[0x470] = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 - 814) ^ 0x4A3)) ^ v1)))(a1, v3);
}

uint64_t sub_22D3122D0@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t))
{
  v19 = &STACK[0x248] + v14;
  *v19 = a1;
  v19[1] = v13;
  v19[2] = v15;
  *(&STACK[0x248] + (a5 ^ 0x11DLL) + v14) = v16;
  v20 = 1785193651 * ((((v18 - 160) | 0x4890146A) - (v18 - 160) + ((v18 - 160) & 0xB76FEB90)) ^ 0x5B4CF84A);
  *(v18 - 152) = &STACK[0x248];
  *(v18 - 144) = 1869595558 - v20;
  *(v18 - 160) = ((a5 ^ 0x102) + 1522) ^ v20;
  (*(v17 + 8 * (a5 ^ 0x9C5)))(v18 - 160);
  return a13(100);
}

uint64_t sub_22D312314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = 307 * (v13 ^ 0xDE);
  v15 = ((v14 - 1603128684 + (a12 ^ 0x5F8DC507)) ^ ((a12 ^ 0xA6680DDE) + 1503130146) ^ ((a12 ^ 0x4D31E1D4) - (v14 ^ 0x86B) + 16 * (v14 ^ 0x86B) - 1295114918)) + 1247207451;
  v16 = v15 < 0x9582B70E;
  v17 = v15 > 0x9582B70E;
  if (v16)
  {
    v17 = v16;
  }

  return (*(v12 + 8 * ((228 * !v17) ^ v14)))(2999852378, 2791837150, 1503130146, 1247207451);
}

uint64_t sub_22D3123FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v10 = &STACK[0x5E0] + v9;
  *v10 = 1368544279;
  *(v10 + 1) = 0;
  *(v10 + 4) = 572608532;
  *(v10 + 6) = 1657355148;
  *(&STACK[0x5E0] + v9 + 40) = 1657355148;
  *(v10 + 4) = 0;
  STACK[0x4D8] = &STACK[0x5E0] + v9 + 40;
  *(&STACK[0x5E0] + v9 + 48) = 0;
  STACK[0x550] = &STACK[0x5E0] + v9 + 48;
  *(&STACK[0x5E0] + v9 + 56) = 1657355148;
  *(&STACK[0x5E0] + v9 + 64) = 0;
  STACK[0x420] = &STACK[0x5E0] + v9 + 56;
  STACK[0x4A8] = &STACK[0x5E0] + v9 + 64;
  *(&STACK[0x5E0] + v9 + 72) = 1657355148;
  STACK[0x3E0] = &STACK[0x5E0] + v9 + 72;
  *(&STACK[0x5E0] + v9 + 80) = 0;
  STACK[0x380] = &STACK[0x5E0] + v9 + 80;
  v10[88] = 107;
  *v7 = 1368544279;
  memset((v7 + 4), 50, 20);
  *(v7 + 28) = 0;
  STACK[0x290] = v7 + 28;
  *(v7 + 24) = 1657355148;
  *(v7 + 232) = 0;
  STACK[0x288] = v7 + 232;
  memset((v7 + 436), 50, 40);
  memset((v7 + 1128), 50, 40);
  *(v7 + 1168) = 0u;
  *(v7 + 1184) = 0u;
  return (*(v8 + 8 * a7))(a1, a2, a3, a4, a5, a6, 329604862);
}

uint64_t sub_22D3125D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, unsigned int a18)
{
  a18 = v18 + 1090264433 + ((v21 + 908907675) & 0xC9D327DD);
  *(v22 - 112) = (v21 + 730) ^ (1564307779 * ((((v22 - 128) | 0x6844822D) + (~(v22 - 128) | 0x97BB7DD2)) ^ 0xFF494E3F));
  *(v22 - 128) = &a15;
  *(v22 - 120) = v19;
  (*(v20 + 8 * (v21 + 1143)))(v22 - 128);
  *(v22 - 128) = v19;
  *(v22 - 120) = v21 - 143681137 * ((((2 * (v22 - 128)) | 0x646EBC3A) - (v22 - 128) + 1304994275) ^ 0x66904247) + 235;
  *(v22 - 112) = &a17;
  v23 = (*(v20 + 8 * (v21 + 1179)))(v22 - 128);
  return (*(v20 + 8 * ((181 * (*(v22 - 104) <= 0x43A7A85Fu)) ^ v21)))(v23);
}

uint64_t sub_22D31274C@<X0>(uint64_t a1@<X8>)
{
  v8 = (v2 - 1249789826) & 0x4A7E4776;
  v9 = (**(v7 + 8) ^ v3) + (**(v4 + 8) ^ v3);
  **(a1 + 8) = v9 + v3 - ((v9 << (v8 - 117)) & (v6 + 1427));
  return (*(v5 + 8 * ((247 * (v1 != 1)) ^ v8)))();
}

uint64_t sub_22D3127DC(uint64_t a1, uint64_t a2)
{
  v6 = **(a2 + 8) - 42;
  v7 = (v3 & (2 * v6)) + (((v4 - 122) | 0x108) ^ (v2 - 350) ^ v6) == v2;
  return (*(v5 + 8 * (((8 * v7) | (32 * v7)) ^ v4)))();
}

void sub_22D31282C()
{
  if ((*(v2 + 4) - 1726767307) >= 0x7FFFFFFF)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 + 2;
  }

  *(v0 + 8) = v3;
}

uint64_t sub_22D312850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, int a17, uint64_t a18, char *a19, int a20)
{
  v23 = v20 + 38;
  v24 = 742307843 * (((&a15 | 0xE567A8BF) + (~&a15 | 0x1A985740)) ^ 0xFB4525EB);
  a20 = v24 ^ 0x233D6C96;
  a15 = v24 - 1023075472;
  a17 = v23 - v24 - 1197042671;
  a18 = a13;
  a19 = &a11;
  v25 = (*(v22 + 8 * (v23 + 1995)))(&a15);
  return (*(v22 + 8 * (((a16 == v21) * ((8 * (((v23 - 129) | 0x223) ^ 0x282)) ^ 0x7AB)) ^ v23)))(v25);
}

uint64_t sub_22D312954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, unint64_t a30, uint64_t a31, _DWORD *a32)
{
  *a32 = 0;
  v37 = (((((v35 + 1500581603) ^ 1) - ((v33 - 5120) ^ (v33 - 5120))) | (v33 - 5120)) >> 63) ^ v32 ^ (v32 >> (((v35 + 106) | 0x44) ^ 0xC7));
  v38 = (v37 << ((v35 + 106) ^ 0x8F)) & 0x9D2C5680 ^ v37;
  *(*a28 + a30) ^= (v35 + 1500581603) ^ 1 ^ v36 & (v38 << 15) ^ v38 ^ ((v36 & (v38 << 15) ^ v38) >> 18);
  return (*(v34 + 8 * ((116 * (a30 < 0x1FC)) ^ (v35 + 1500581603) ^ 0x1AE)))();
}

uint64_t sub_22D312C70(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  HIDWORD(v14) = a1 ^ 0x665517C;
  LODWORD(v14) = a1 ^ 0x55555555;
  v15 = (a6 ^ 0xA99AAE83) & (v6 ^ 0x600C06E9) ^ a6 & 0x36695795;
  v16 = (v14 >> 27) + (((v8 ^ 0x7F5BFC53) - 2136734803) ^ ((v8 ^ 0x4F252DF7) - 1327836663) ^ ((v8 ^ 0x661B80D8) - 1713078488)) + (v15 & 0xEFDB3BC6 ^ 0x302CC6B9 ^ (v15 ^ 0xDFF7F97E) & (v7 & 0x9890D784 ^ 0x24953D ^ (a6 ^ (a2 - 822770999)) & (v7 ^ v12))) - 1125750377 + (((*(v9 + 4 * (a3 + v11)) ^ 0xCA908619) + 896498151) ^ ((*(v9 + 4 * (a3 + v11)) ^ 0xBAEE0DBB) + 1158804037) ^ ((*(v9 + 4 * (a3 + v11)) ^ 0xC4AAA2AF) + 995450193));
  return (*(v10 + 8 * ((689 * (a3 + 1 == v13 + 20)) ^ a2)))(v16 ^ ((v16 ^ 0x8665F7B3) + 783318330) ^ ((v16 ^ 0x4D5774A7) - 444400082) ^ ((v16 ^ 0xE3F7689A) + 1260577297) ^ ((v16 ^ 0x7FEF9EFB) - 684059534) ^ 0x14F2409);
}

uint64_t sub_22D312E9C(unint64_t a1)
{
  STACK[0x4D0] = a1;
  LODWORD(STACK[0x428]) = v3;
  v4 = 7 * ((4 * (v1 ^ 0x680)) ^ 0x325);
  v5 = STACK[0x410];
  v6 = (v4 ^ 0xFFFFFFFFFFFFFC78) + 336;
  STACK[0x368] = v6;
  *(v5 + v6) = (&STACK[0x368] ^ 0xBA) * (&STACK[0x368] + 17);
  return (*(v2 + 8 * ((1277 * (STACK[0x368] == 0)) ^ v4)))();
}

uint64_t sub_22D312F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v27 = ((((v26 - 144) | 0x2A8C4F6F) - (v26 - 144) + ((v26 - 144) & 0xD573B090)) ^ 0x85ABCD77) * v22;
  *(v26 - 144) = &a22;
  *(v26 - 136) = v27 + v25 + 1089;
  *(v26 - 132) = v27 + 1068442902;
  v28 = (*(v23 + 8 * (v25 + 1492)))(v26 - 144);
  return (*(v23 + 8 * ((((((v25 - 419) | 0x220) + 2) ^ (v25 - 618209150) & 0x24D91FFA) * (v24 == 0)) | (v25 + 1209))))(v28);
}

uint64_t sub_22D312FE4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = ((v2 + 874) ^ v5) + a2;
  *(v6 + v8) = *(a1 + v8);
  return (*(v7 + 8 * (((v8 == ((v2 + 874 + v3) & v4) - 58) * (v2 - 13)) ^ (v2 + 996))))();
}

uint64_t sub_22D3130B0(_DWORD *a1)
{
  v2 = *a1 ^ (1037613739 * (a1 ^ 0xD1022D7F));
  result = (*(*(&off_28407CFD0 + (v2 ^ 0x9617D448)) + (v2 ^ 0x9617DC95) - 1))(*(&off_28407CFD0 + (v2 ^ 0x9617D452)) - 4, sub_22D3249E8);
  v4 = **(&off_28407CFD0 + (v2 ^ 0x9617D474));
  if (result)
  {
    v4 = 1261138867;
  }

  a1[1] = v4;
  return result;
}

uint64_t sub_22D31316C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, unint64_t a4@<X5>, int a5@<W6>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int8x16_t a9@<Q4>, int8x16_t a10@<Q5>, int32x4_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v17 = v12 + 4;
  v18 = v13 + 16;
  a8.i64[0] = *(v18 + 4);
  a8.i32[2] = *(v18 + 12);
  v19 = vextq_s8(a7, a8, 0xCuLL);
  v20 = a8;
  v20.i32[3] = *(v16 + 4 * (v17 + (((a6 ^ (a1 + 5)) * a3) ^ a4)));
  v21 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v20, a12), vandq_s8(v19, a9)), 1uLL), *(v18 - 908));
  v19.i32[0] = *(v15 + 4 * (*(v18 + 4) & 1));
  v19.i32[1] = *(v15 + 4 * (*(v18 + 8) & 1));
  v19.i32[2] = *(v15 + 4 * (*(v18 + 12) & 1));
  v19.i32[3] = *(v15 + 4 * (v20.i8[12] & 1));
  *v18 = veorq_s8(vaddq_s32(vsubq_s32(v21, vandq_s8(vaddq_s32(v21, v21), a10)), a11), v19);
  return (*(v14 + 8 * (((v17 == 392) * a5) ^ (a2 + a6 + 175))))();
}

void sub_22D313208(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24) ^ (1388665877 * (((a1 | 0x3647F9EA) - (a1 | 0xC9B80615) - 910686699) ^ 0xBBEA9B06));
  v2 = 742307843 * ((((2 * &v5) | 0x163644D6) - &v5 - 186327659) ^ 0x1539AF3E);
  v7 = 602092488 - v2;
  v6 = v4;
  v5 = v1 - v2 - 473373692;
  v3 = *(&off_28407CFD0 + (v1 ^ 0x5B)) - 8;
  (*&v3[8 * v1 + 17928])(&v5);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_22D313438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, _BYTE *a16, int a17, char a18, __int16 a19, char a20, _BYTE *a21, char *a22, char *a23, _BYTE *a24)
{
  HIDWORD(a21) = v25 + (((~&a21 & 0xA32B3690) - (~&a21 | 0xA32B3691)) ^ 0xBD09BBC4) * v24 + 739;
  a22 = &a20;
  a23 = &a18;
  a24 = a16;
  (*(v27 + 8 * (v25 + 1716)))(&a21);
  HIDWORD(a23) = v25 + 210068311 * (&a21 ^ 0xF28BAFE8) + 1028;
  a21 = a16;
  a22 = &a12;
  (*(v27 + 8 * (v25 + 1734)))(&a21);
  HIDWORD(a23) = v25 + 210068311 * (&a21 ^ 0xF28BAFE8) + 1028;
  a21 = a16;
  a22 = &a15;
  (*(v27 + 8 * (v25 + 1734)))(&a21);
  LODWORD(a21) = v25 - 50899313 * (&a21 ^ 0xC861C456) + 932;
  a22 = a16;
  v28 = (*(v27 + 8 * (v25 ^ 0xAE6)))(&a21);
  return (*(v27 + 8 * ((1067 * (a23 == v26 + 51 * (v25 ^ 0x20F) - 357)) ^ v25)))(v28);
}

uint64_t sub_22D31359C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 2 * (a4 ^ 0xEF3334FF02300D6ALL);
  v11 = ((a4 ^ 0xEF3334FF02300D6ALL) - (v10 & 0xEF5B77A68B58122ALL) + 0x77ADBBD345AC0915) ^ a3;
  v12 = v11 ^ a1 ^ 0xB1847C999AF7BC6ELL;
  if (((a4 ^ 0xEF3334FF02300D6ALL) & 0x82EE1687ACCADB62) != 0)
  {
    v13 = a4 ^ 0xEF3334FF02300D6ALL;
  }

  else
  {
    v13 = v11 ^ a1 ^ 0xB1847C999AF7BC6ELL;
  }

  v14 = v13 & (a3 ^ 0x39D638B520A44C1ELL);
  v15 = a5 ^ (a7 | (v148 << 32));
  v16 = v8 ^ v15 ^ 0xA0F6A1995EC296E4;
  v17 = ((a4 ^ 0xEF3334FF02300D6ALL) - 0x21AB2F79F13344 - (v10 & 0xFFBCA9A10C1D9978)) ^ v7;
  v18 = v14 ^ v16 ^ 0x3CF986AD46254D3BLL;
  if (v17 == 0x68040451F630332FLL)
  {
    v18 = v16 ^ 0x43067952B9DAB2C4;
  }

  v19 = (v14 ^ v16 ^ 0xED9891E9C940C322) + 2 * (v14 & (v16 ^ 0x6D9891E9C940C322)) - 2 * ((v18 ^ 0x2E9EE8BB709A71E6) & v14);
  v20 = (v16 ^ 0x12676E1636BF3CDDLL) & (a3 ^ 0xD1BCDA9F436F48A2);
  v21 = v16 & 0x17951DD59C34FB43;
  v22 = v16 & 0xD87006A6404BA173 ^ (v16 ^ 0xED9891E9C940C322) & (v15 ^ 0xB3B4E95F649F9A69) ^ v17 ^ 0x4CA8D4CD69877E38;
  v23 = v21 ^ v15 ^ 0xA0F6A1995EC296E4 ^ v20 ^ v22;
  *(&v24 + 1) = v23 ^ 0x85DC954123DBC8CCLL;
  *&v24 = v23;
  v25 = v23 ^ 0x85DC954123DBC8CCLL ^ __ROR8__(v23 ^ 0x85DC954123DBC8CCLL, 61) ^ (v24 >> 39);
  v26 = __ROR8__(__ROR8__(v25 ^ 0x1F8023B6C94E8738 ^ (v19 >> 6) ^ (v19 >> 1) ^ v19 ^ 0x848EAF93308C3BA1 ^ ((v19 ^ 0x848EAF93308C3BA1) << 58) ^ ((v19 ^ 0x848EAF93308C3BA1) << 63) ^ 0xC7B67A763B00CE0FLL, 31) ^ 0x842C347A09874434, 33);
  v27 = a3 ^ 0x8C88747CFC525113 ^ (v12 & 0xFB3E5102089C8525 | (v17 ^ 0x933A5553FEACB60ALL) & (v11 ^ 0x4E7B83666508450BLL));
  v28 = (-v19 ^ (v27 - (v19 ^ v27)) ^ 0x3C1E6AAD233402CBLL ^ (v19 - ((2 * v19) & 0x783CD55A46680596) + 0x3C1E6AAD233402CBLL)) + v27;
  v29 = v28 ^ __ROR8__(v28, 17) ^ (v28 << 54) ^ (v28 >> 10);
  v30 = v15 & 0x3BD047E8AC7C6A7FLL ^ (v17 ^ 0xAC2BBC46A5B3A6AFLL) & (v15 ^ 0x943B1006DB2BC4E5) ^ v12 ^ 0x98DC5FD5E5364DEELL;
  *&v24 = __ROR8__(__ROR8__(v30, 48) ^ 0x2B13308C6A1AAE48, 16);
  v31 = v24 ^ 0x911628FC53A9C027 ^ ((v24 ^ 0x911628FC53A9C027) << 23) ^ (((v24 >> 41) ^ (v24 >> 7) ^ 0xEAEBADAFF0EF964ALL) & (((v24 ^ 0x911628FC53A9C027) << 57) ^ 0x73FFFFFFFFFFFFFFLL) | ((v24 ^ 0x911628FC53A9C027) << 57) & 0x1400000000000000);
  v32 = (v29 & 0x6A2FB5C53305728 | (v31 ^ 0xB6E6DAB3DF8C3C1) & ~v29) ^ v26;
  v33 = v31 ^ 0xEDD231C8B7069357;
  v34 = v29 ^ 0x8401BA65A20C7889 ^ v31 ^ 0xEDD231C8B7069357;
  v35 = v30 ^ v22;
  *(&v24 + 1) = v35 ^ 0x8690FEDFC512279;
  *&v24 = v35;
  v36 = v35 ^ 0x8690FEDFC512279 ^ __ROR8__(v35 ^ 0x8690FEDFC512279, 28) ^ (v24 >> 19) ^ v33;
  *(&v24 + 1) = v34 & 0x19B2BE841E1A7CB1 ^ v29 ^ 0x8401BA65A20C7889 ^ v32 ^ (v34 ^ 0x9BE0E2A5843D80C8) & (v36 ^ 0x5B4028378EBCE62CLL) ^ 0x54F51E67C8C4A5F0;
  *&v24 = v34 & 0x19B2BE841E1A7CB1 ^ v29 ^ 0x8401BA65A20C7889 ^ v32 ^ (v34 ^ 0x9BE0E2A5843D80C8) & (v36 ^ 0x5B4028378EBCE62CLL);
  v37 = v24 >> 17;
  *&v24 = __ROR8__(*(&v24 + 1), 10);
  v38 = ((v37 ^ v24 ^ 0xD6DA16427EB366DALL) - 2 * ((v37 ^ v24 ^ 0xD6DA16427EB366DALL) & 0x3C8CE547BAC5F8ABLL ^ (v37 ^ v24) & 1) + 0x3C8CE547BAC5F8AALL) ^ *(&v24 + 1);
  v39 = v36 & 0x282DBDAEEA7DE4F8 ^ (v36 ^ 0xBD0D694C6F596562) & (v25 ^ 0xD0404A3738C8C3B9) ^ 0x1A3C60AACD98A6AFLL ^ v34;
  v40 = (v39 & 0xF2F0F93CF1701AFDLL ^ 0x9097F5B1C24940B2) & (v39 & 0xD0F06C30E8FE502 ^ 0xF2F9FB3DF77E5EFFLL) | v39 & 0xD0802420C86A500;
  v41 = __ROR8__(v40 ^ 0x807523D053428863, 7);
  *&v24 = __ROR8__(v40 ^ 0x807523D053428863, 41);
  v42 = ((v41 ^ v24 ^ 0xAB5FA1F5FDF76B5DLL) - 2 * ((v41 ^ v24 ^ 0xAB5FA1F5FDF76B5DLL) & 0x5CF2BAE5CC89006ELL ^ (v41 ^ v24) & 2) - 0x230D451A3376FF94) ^ v40 ^ 0x807523D053428863;
  v43 = v25 & 0x5E91F30F2450BD2ELL ^ v36 ^ 0x5F4D8D0123B7DAF1 ^ (v26 ^ 0xAF644E097E3D1FE3) & (v25 ^ 0x79208662D4AD8BELL);
  v44 = v40 ^ v43 ^ ((v40 ^ v43 ^ 0x42E72441891A0B1ALL) >> 19) ^ ((v40 ^ v43 ^ 0x42E72441891A0B1ALL) >> 28) ^ ((v40 ^ v43 ^ 0xD0C8D777ADEEE37CLL) << 36) ^ ((v40 ^ v43 ^ 0xD0C8D777ADEEE37CLL) << 45) ^ 0xBCF6E12E86176E59;
  *(&v24 + 1) = v43 ^ v25 ^ 0x1F8023B6C94E8738;
  *&v24 = v43 ^ v25;
  v45 = (v26 ^ 0xE0A42F9A5925D32) & (v29 ^ 0x11151B40B0209886) ^ v26 & 0x11151B40B0209886 ^ __ROR8__((v24 >> 54) ^ 0x2C8233060D805428, 10);
  LOBYTE(v21) = *(v9 + ((v45 >> 61) ^ 0x52));
  v46 = (v21 ^ ((v21 ^ 0x3C) - ((2 * (v21 ^ 0x3C) + 2) & 0xB8) + 93) ^ ((v21 ^ (57 - (v21 ^ 0xFA)) ^ 0x36 ^ ((v21 ^ 0x3C) - ((2 * (v21 ^ 0x3C) + 2) & 0x14) + 11)) + 1) ^ 0x9F) - 62;
  v47 = v46 ^ (v45 >> 39) ^ v45 ^ 0x9D3851BE94ABEA66 ^ (8 * (v45 ^ 0x9D3851BE94ABEA66)) ^ ((v45 ^ 0x9D3851BE94ABEA66) << 25);
  v48 = (v42 - ((2 * v42) & 0x48E51F629851E4ACLL) - 0x5B8D704EB3D70DAALL) ^ v44;
  v49 = v38 ^ 0x147D2CDEEA4;
  v50 = v38 ^ 0x147D2CDEEA4 ^ v42;
  v51 = (~(2 * v48) + v48) & (v47 ^ 0x45B83ECA51117C24) ^ v50;
  v52 = ((v51 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v51 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v51 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v51 ^ 0x26974B18501E2B14) - (((v51 ^ 0x26974B18501E2B14) << 58) & (2 * (v51 ^ 0x26974B18501E2B14))));
  v53 = v32 ^ (v32 << 58) ^ 0xE41231C5A00235DFLL;
  v54 = (v32 >> 1) ^ 0x4C0918E2D0011AEFLL;
  v55 = v54 & 0x100000000000;
  if ((v54 & 0x100000000000 & v53) != 0)
  {
    v55 = -v55;
  }

  v56 = ((v32 << 63) | 0x14EE3DA2DA8E866ALL) ^ (v32 >> 6) ^ v54 & 0xFFFFEFFFFFFFFFFFLL ^ (v55 + v53);
  v57 = ((v38 ^ 0xFFFFFEB82D32115BLL) & v42) - ((2 * ((v38 ^ 0xFFFFFEB82D32115BLL) & v42)) & 0xC1D6ABE6842A518) - 0x79F14AA0CBDEAD74;
  v58 = (v49 - ((2 * v49) & 0x48E51F629851E4ACLL) - 0x5B8D704EB3D70DAALL) ^ v44;
  if (!v46)
  {
    v58 = v48;
  }

  v59 = v57 ^ v47 ^ v56;
  v60 = v38 ^ v58 & ~v50 ^ 0x153BBA291CEE65C6;
  v61 = v59 ^ 0x3373E9F6372DE041;
  v62 = v60 ^ v59 ^ 0x3373E9F6372DE041;
  v63 = __ROR8__(v62, 10);
  v64 = (v62 ^ v63 ^ (v62 >> 17)) + (v62 << 47) - 2 * ((v62 ^ v63 ^ (v62 >> 17)) & (v62 << 47));
  v65 = v59 ^ 0x2C6D141CE4761819;
  v66 = (((2 * (0x34CDB152F4A04500 - ((v59 ^ 0x2C6D141CE4761819) << 58))) & 0x9000000000000200) + ((0x34CDB152F4A04500 - ((v59 ^ 0x2C6D141CE4761819) << 58)) ^ 0xCB324EAD0B5FBB00)) ^ ((v59 ^ 0x2C6D141CE4761819) << 58) ^ ((v59 ^ 0x2C6D141CE4761819) - ((((v59 ^ 0x2C6D141CE4761819) << 58) & 0xF800000000000000 ^ (v59 ^ 0x2C6D141CE4761819) & 0xF9BFE541A2368FBELL | (v59 ^ 0x2C6D141CE4761819) & 0x6401ABE5DC97041) ^ ((v59 ^ 0x2C6D141CE4761819) << 58) & 0x400000000000000));
  v67 = v47 & 0xE09B73AB3D6C0569 ^ 0xA00341212C6C0149 ^ (v47 ^ 0xBA47C135AEEE83DBLL) & (v56 ^ 0x761506CEF1628BD4);
  v68 = (v48 ^ -v48 ^ (v67 - (v48 ^ v67))) + v67;
  v69 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v47 ^ (((v47 ^ v56 ^ 0x2CC9B45062E00D66) & v49) - ((2 * ((v47 ^ v56 ^ 0x2CC9B45062E00D66) & v49)) & 0xED97AE78CC7938CALL) + 0x76CBD73C663C9C65) ^ v68 ^ 0x10B11CEC96E32FDLL, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v70 = v69 ^ 0x93DD7BE3C3310A2CLL ^ ((v69 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v69 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v69 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v69 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v71 = (v66 + v65) ^ (v61 << 63) ^ __ROR8__((v65 >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v70, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v72 = v71 & 0xA8F512753D8F931ELL ^ (v65 >> 1) & 0x28F512753D8F931ELL | (v71 ^ (v65 >> 1)) & 0x570AED8AC2706CE1;
  v73 = v72 ^ v52 & ~v64;
  *(&v74 + 1) = v73;
  *&v74 = v73 ^ 0xD3DA1E3360BF843ALL;
  v75 = ((v74 >> 1) ^ v73 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v73 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v74 >> 1) ^ v73 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v73 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  *(&v74 + 1) = v73;
  *&v74 = v73 ^ 0xD3DA1E3360BF843ALL;
  v76 = v51 ^ 0x6E04C15915AB860ALL ^ v68 ^ __ROR8__(v51 ^ 0x6E04C15915AB860ALL ^ v68, 19) ^ ((v51 ^ 0x6E04C15915AB860ALL ^ v68) << 36) ^ ((v51 ^ 0x6E04C15915AB860ALL ^ v68) >> 28) ^ v52;
  v77 = ((v72 ^ v70) + (v72 | ~v70) + 1) ^ v76;
  v78 = v70 ^ v64 & ~v72 ^ 0x425764BB5877DA25 ^ v77;
  v79 = v78 ^ (v78 >> 61) ^ (v78 >> 39) ^ (8 * v78) ^ (v78 << 25);
  v80 = v64 ^ v52;
  v81 = v70 & ~v76 ^ v64 ^ v52;
  v82 = v81 ^ 0xFD;
  v83 = v81 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v81 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v81 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v81 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v84 = v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77 ^ __ROR8__(v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77, 19) ^ ((v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77) << 36) ^ ((v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77) >> 28);
  *&v74 = __ROR8__((v74 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v79 ^ v75, 3) ^ 0x55413C453664FDCDLL, 61);
  v85 = ((v84 | v83) ^ v83 & v84) & 0x2D23D578E308995FLL | (v84 ^ v83) & 0xD2DC2A871CF766A0;
  v86 = v76 & ~v80;
  v87 = (v74 ^ 0xAA09E229B327EE6ALL) & ~v79 ^ v85;
  v88 = v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73 ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) >> 10) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) << 47) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) << 54) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) >> 17);
  v89 = ((v87 ^ v79) + ((v74 ^ 0x55F61DD64CD81195) & v88) - 2 * ((v87 ^ v79) & (v74 ^ 0x55F61DD64CD81195) & v88)) ^ 0x6005BE354A5BB0B2;
  v90 = v89 >> (v29 & 0x3D) >> (v29 & 0x3D ^ 0x3D);
  v91 = (8 * v89) ^ (v89 >> 39) ^ ((v89 ^ (v89 << 25)) & 0xF21553F3FD140018 ^ v90 & 0x18 | (v89 ^ (v89 << 25)) & 0xDEAAC0C02EBFFE7 ^ v90 & 0xE7);
  v92 = v79 & ~v85 ^ v88 ^ v83;
  v93 = v92 ^ 0x2DB5B6AF87F64351 ^ ((v92 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v92 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v92 ^ 0x2DB5B6AF87F64351) >> 41) | ((v92 ^ 0x2DB5B6AF87F64351) << 57));
  v94 = v92 ^ 0x93C23431B76D41FLL ^ v87;
  v95 = (v94 ^ (v94 >> 28)) + (v94 >> 19) - 2 * ((v94 ^ (v94 >> 28)) & (v94 >> 19));
  v96 = v94 << 36;
  v97 = v95 ^ (v94 << 45);
  v98 = v85 & ~(v88 ^ v83);
  v99 = v97 ^ (v94 << 36);
  v100 = v74 ^ 0xAA09E229B327EE6ALL ^ v83 & ~v88;
  v101 = v99 ^ v93;
  v102 = v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100 ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) >> 10) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) << 47) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) << 54) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) >> 17);
  v103 = v102 ^ v93;
  v104 = v91 & ~(v99 ^ v93) ^ v102 ^ v93;
  v105 = v100 ^ 0x6DC4FB0BD4FFFF44;
  *(&v74 + 1) = v100;
  *&v74 = v100 ^ 0x6DC4FB0BD4FFFF44;
  v106 = (v74 >> 1) ^ v100 ^ 0x6DC4FB0BD4FFFF44 ^ ((v100 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v91;
  v107 = v105 >> 6;
  if (v96 == v97)
  {
    v108 = v107;
  }

  else
  {
    v108 = ~(v107 ^ v106);
  }

  v109 = v106 + v107 - 2 * (v108 & v106);
  v110 = v109 ^ (((~v102 | 0xFFFFFFFFEFFFFFFFLL) - (v102 & 0x4000000000)) ^ v102 & 0xFFFFFFBFEFFFFFFFLL) & v103;
  v111 = __ROR8__(((v101 << (v95 & 0x2B) << (v95 & 0x2B ^ 0x2B)) + (v101 >> 21)) ^ __ROR8__(v109 & ~v91, 21) ^ 0x6D12C2B6EED373A6, 43);
  v112 = v102 & ~v109 ^ v91 ^ v111;
  v113 = v104 ^ 0x5035F38BF1002A3ALL ^ v111;
  v114 = v113 ^ (v113 >> 19);
  v115 = v114 & 0xD99EEE0927173347 ^ (v113 << 45) & 0xD99EE00000000000 | v114 & 0x266111F6D8E8CCB8 ^ (v113 << 45) & 0x2661000000000000;
  v116 = (((v113 << 45) ^ (0xFFFFE00000000000 * v113) ^ (v115 + v114 - 2 * v115)) + v114) ^ (v113 >> 28);
  v117 = v116 & 0x78E134634F73AA70 ^ (v113 << 36) & 0x78E1346000000000 | v116 & 0x871ECB9CB08C558FLL ^ (v113 << 36) & 0x871ECB9000000000;
  v118 = v117 - 0x21AB2F79F13344 - ((2 * v117) & 0xFFBCA9A10C1D9978);
  v145[65] = v118 ^ 0xBC;
  v119 = v112 ^ 0xE013161F571CC4C5 ^ ((v112 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v112 ^ 0xE013161F571CC4C5));
  v120 = v119 ^ (((v112 ^ 0xE013161F571CC4C5) >> 61) | (v112 << 25));
  v121 = *(v144 + ((69 * ((v118 ^ 0xFFDE54D0860ECCBCLL) >> (v116 & 8) >> (v116 & 8 ^ 8))) ^ 0x3DLL)) - 18;
  v122 = (((v121 ^ 0x57) + v121 - 2 * (v121 ^ 0x57)) ^ 0xFE) + v121;
  v145[54] = ((v119 ^ (((v112 ^ 0xE013161F571CC4C5) >> 61) | (v112 << 25))) >> 24) ^ 0x8A;
  v145[28] = BYTE2(v118) ^ 0xE;
  v145[41] = (v122 >> 2) | (v122 << 6);
  v123 = (v118 ^ 0xFFDE54D0860ECCBCLL) >> (v82 & 0x20) >> (v82 & 0x20 ^ 0x20u);
  v145[35] = BYTE1(v119);
  v124 = BYTE6(v118) ^ 0xDE;
  v145[21] = BYTE2(v119);
  v125 = v99 ^ v102;
  if (v103 == -1)
  {
    v126 = 0;
  }

  else
  {
    v126 = v125;
  }

  v145[58] = v123;
  v145[17] = BYTE4(v120) ^ 0x89;
  v145[5] = BYTE3(v118) ^ 0x86;
  v145[47] = BYTE5(v118) ^ 0x54;
  v127 = v110 - ((2 * v110) & 0x5A47EBDAAC1EB792);
  v145[14] = ~v118 >> 56;
  v128 = v127 + 0x2D23F5ED560F5BC9;
  v145[48] = v124;
  v145[16] = (v120 ^ 0x3EAE39898A000000) >> (v112 & 0x28) >> (v112 & 0x28 ^ 0x28);
  v129 = v127 - 0x5BDA183C59819C5ELL;
  v130 = 0x88FE0E29AF90F827;
  if (v128 < 0x88FE0E29AF90F827)
  {
    v129 = v128;
    v130 = 0;
  }

  if (v129)
  {
    v131 = v128;
  }

  else
  {
    v131 = v130;
  }

  *(&v132 + 1) = v131;
  *&v132 = v128;
  v133 = (v132 >> 1) ^ v128;
  v145[6] = v120;
  v134 = *(v9 + (BYTE6(v120) ^ 0xF9));
  v135 = v133 ^ (v131 << 58) ^ (v131 >> 6);
  v145[10] = BYTE1(v135);
  v136 = v102 ^ v126 & v101 ^ 0x29E1AB0124FF49E7 ^ v110;
  *&v132 = __ROR8__(v136, 10);
  v137 = (v136 ^ v132 ^ (v136 << 47)) + (v136 >> 17) - 2 * ((v136 ^ v132 ^ (v136 << 47)) & (v136 >> 17));
  v145[18] = BYTE4(v135);
  v145[25] = BYTE2(v135);
  v145[42] = HIBYTE(v120) ^ 0x3E;
  v145[12] = BYTE5(v135);
  v145[23] = BYTE6(v135);
  v145[44] = v135;
  v145[24] = BYTE3(v135);
  v145[30] = (v134 ^ 0xFA) - 119;
  v145[62] = HIBYTE(v135);
  v145[19] = (v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17));
  v138 = *(v147 + ((((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 8) ^ 0x27) + 279);
  v145[8] = ((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 24;
  v145[33] = ((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 16;
  v145[4] = (v138 ^ BYTE1(v137) ^ 0x2D ^ ((BYTE1(v137) ^ 0x2D) + 72) ^ 0x41) + 15;
  v139 = v104 ^ __ROR8__(v104 ^ 0x4734313A1F2B2857, 41) ^ ((v104 ^ 0x4734313A1F2B2857) >> 7);
  v140 = *(v146 + (((v137 >> 28) & 0xF0 | (v137 >> 36) & 0xF) ^ 0x5C));
  v145[46] = HIBYTE(v137);
  v145[43] = BYTE6(v137);
  v145[38] = BYTE5(v137);
  v145[31] = ((v140 >> 5) | (8 * v140)) ^ 0xC1;
  result = 58;
  LOBYTE(v137) = *(v9 + ((((((4 * v139) | (v139 >> 6)) ^ 0xA) >> 2) | ((((4 * v139) | (v139 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  v145[55] = BYTE4(v139) ^ 0x3A;
  v145[34] = BYTE3(v139) ^ 0x1F;
  v145[32] = BYTE1(v139) ^ 0x28;
  v145[15] = (v137 ^ 0xFA) - 119;
  v142 = v139 ^ ((v104 ^ 0x4734313A1F2B2857) << 57);
  v145[7] = (v142 ^ 0x4734313A1F2B2857uLL) >> (v34 & 0x10) >> (v34 & 0x10 ^ 0x10);
  v145[61] = BYTE5(v139) ^ 0x31;
  v145[56] = (*(v9 + (BYTE6(v139) ^ 0x63)) ^ 0xFA) - 119;
  v145[51] = HIBYTE(v142) ^ 0x47;
  *v143 = v148 + 1;
  return result;
}

uint64_t sub_22D314B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v24 = v19 ^ 0x720;
  *(v23 - 120) = v24 - (((v20 | (v23 - 128)) - ((v23 - 128) & v20)) ^ 0x5C24A40F) * v21 + 235;
  *(v23 - 128) = v17;
  *(v23 - 112) = &a17;
  v25 = (*(v18 + 8 * (v24 + 1179)))(v23 - 128);
  return (*(v18 + 8 * (((((v24 + 49) ^ (*(v23 - 104) > v22)) & 1) * (((v24 - 698397283) & 0x29A0AEDB) + 28)) ^ v24)))(v25);
}

uint64_t sub_22D314B98@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W5>, char a5@<W6>, uint64_t a6@<X8>)
{
  v12 = (a6 + 16);
  v13 = v8 + 1 - ((v7 + 2) & a4);
  v11[12] = ((v9 - 40) ^ a1 ^ HIBYTE(v13)) - 2 * (((v9 - 40) ^ a1 ^ HIBYTE(v13)) & a5 ^ HIBYTE(v13) & 4) + 50;
  v11[13] = (BYTE2(v13) ^ 0x31) - (a3 & (2 * (BYTE2(v13) ^ 0x31))) + 50;
  v11[14] = (BYTE1(v13) ^ 0x1E) - (a3 & (2 * (BYTE1(v13) ^ 0x1E))) + 50;
  v11[15] = v13 ^ 0x26;
  *(v12 - 15) ^= *v11 ^ a2;
  *(v12 - 14) ^= v11[1] ^ a2;
  *(v12 - 13) ^= v11[2] ^ a2;
  *(v12 - 12) ^= v11[3] ^ a2;
  *(v12 - 11) ^= v11[4] ^ a2;
  *(v12 - 10) ^= v11[5] ^ a2;
  *(v12 - 9) ^= v11[6] ^ a2;
  *(v12 - 8) ^= v11[7] ^ a2;
  *(v12 - 7) ^= v11[8] ^ a2;
  *(v12 - 6) ^= v11[9] ^ a2;
  *(v12 - 5) ^= v11[10] ^ a2;
  *(v12 - 4) ^= v11[11] ^ a2;
  *(v12 - 3) ^= v11[12] ^ a2;
  *(v12 - 2) ^= v11[13] ^ a2;
  *(v12 - 1) ^= v11[14] ^ a2;
  *v12 ^= v11[15] ^ a2;
  return (*(v10 + 8 * ((((v6 + 16) > 0x13F) | (2 * ((v6 + 16) > 0x13F))) ^ (v9 - 307))))();
}

uint64_t sub_22D314BF4@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 + 1067) ^ 0xFFFFFFFFFFFFF830) + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v4 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((796 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v2 + 468))))(-2000);
}

uint64_t sub_22D314C50()
{
  v5 = 1388665877 * ((0xE90268FA5CBD5689 - ((v4 - 216) | 0xE90268FA5CBD5689) + STACK[0x328]) ^ 0x2387074A2EEFCB9ALL);
  *(v4 - 208) = (v3 + 1) - v5;
  *(v4 - 188) = (v2 - 542397458) ^ v5;
  v6 = STACK[0x334];
  v7 = v5 - (((v1 | ~(v2 - 309)) & (v2 - 309 - v1) | v1 & ~(v2 - 309)) >= 0) + 2 * LODWORD(STACK[0x334]) + 973282764;
  *(v4 - 184) = v5 ^ 3;
  v8 = LODWORD(STACK[0x330]) ^ v5;
  *(v4 - 216) = v6 ^ v5;
  *(v4 - 212) = v7;
  *(v4 - 200) = v8;
  *(v4 - 196) = v5 + 1;
  v9 = (*(v0 + 8 * SLODWORD(STACK[0x324])))(v4 - 216);
  return (*(v0 + 8 * *(v4 - 192)))(v9);
}

uint64_t sub_22D314D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v30 - 144) = &a18;
  *(v30 - 136) = &a18;
  *(v30 - 112) = &a26;
  *(v30 - 104) = a11;
  *(v30 - 120) = a12;
  *(v30 - 128) = v27 - ((v30 - 1435881714 - 2 * ((v30 - 144) & 0xAA6A2F9E)) ^ 0x54DAD86) * v28 + 118;
  v31 = (*(v26 + 8 * (v27 + 1279)))(v30 - 144);
  return (*(v26 + 8 * (((v27 ^ 0x243) + 534) | (8 * (((((v27 ^ 0x43) - 63) ^ (v29 - 996129833 + (((v27 ^ 0x243) + 1478651026) & 0xA7DD91F5) - 116 < 0x7FFFFFFF)) & 1) == 0)))))(v31);
}

uint64_t sub_22D314E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v21 = STACK[0x3B0];
  STACK[0x580] -= 32;
  *(v21 + 335) = *(a14 + 335) ^ 0xE1 ^ *(*(&off_28407CFD0 + (a20 ^ 0x4D7)) + 15) ^ *(*(&off_28407CFD0 + (a20 ^ 0x44C)) + (((a20 - 681) | 0x140u) ^ 0x362) + 11) ^ *(*(&off_28407CFD0 + (a20 ^ 0x4B3)) + 6) ^ 0x32;
  return (*(v20 + 8 * a20))();
}

uint64_t sub_22D315184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25)
{
  v34 = (a25 & 0xDFFFFFFF ^ 0x94D4290D) + 707862032 - ((2 * (a25 & 0xDFFFFFFF ^ 0x94D4290D)) & 0x14623C28) + 4;
  v35 = *(v29 + 8 * (v31 - 868));
  v36 = *v26;
  v37 = (v25 ^ 0xFFD7FFFD) + 1509943280 + ((2 * v25) & 0xFFAFFFFA) - 1507321837;
  *(*v26 + v37) = (HIBYTE(v34) ^ 0x2A) - 2 * ((HIBYTE(v34) ^ 0x2A) & v27 ^ HIBYTE(v34) & 4) + 50;
  *(v36 + v37 + 1) = (v28 ^ BYTE2(v34)) - (v32 & (2 * (v28 ^ BYTE2(v34)))) + 50;
  *(v36 + v37 + 2) = (BYTE1(v34) ^ 0x1E) - (v32 & (2 * (BYTE1(v34) ^ 0x1E))) + 50;
  *(v36 + v37 + 3) = ((a25 ^ 0xD) + 16 - ((2 * (a25 ^ 0xD)) & 0x28) + 4) ^ v30;
  return v35(2787645459, v33, 1507321841, a19, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22D315344(uint64_t a1, uint64_t a2)
{
  v5 = *(v4 + 56);
  *(v4 + 56) = v5 + ((v3 - 345246885) & 0x5FBF7BD7) - 1261138646;
  return (*(v2 + 8 * ((663 * ((v5 - 1470670869) < 0xFFFFFFFA)) ^ (v3 - 801))))(a1, a2, 0);
}

uint64_t sub_22D315808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = v9 ^ 1;
  if (a8 != ((v8 - 1955) | 0x226) - 703)
  {
    v11 = 1;
  }

  return (*(v10 + 8 * (v11 | v8)))();
}

uint64_t sub_22D315834(uint64_t a1)
{
  v6 = v2 + (v1 + 709) - 1642;
  *(a1 + v6) = *(v4 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v3) ^ (v1 + 428))))();
}

uint64_t sub_22D3159C0@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 50;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_22D3159F4(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_22D315A10@<X0>(int a1@<W8>)
{
  v7 = STACK[0x524];
  v8 = STACK[0x3A0];
  v9 = STACK[0x53C];
  v10 = &v6[6 * v3];
  v10[2] = v5;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v6 = v2 + 1;
  LODWORD(STACK[0x348]) = v1;
  v11 = a1 + 209 + ((a1 + 794) ^ 0x8C073DED) + v1;
  v13 = v11 < 531406499 && v11 >= SLODWORD(STACK[0x2D0]);
  return (*(v4 + 8 * ((26 * v13) ^ a1)))();
}

uint64_t sub_22D315A88(int8x16_t a1, int8x16_t a2)
{
  v8 = (v3 - 32);
  v9 = (v4 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v8 = v10;
  return (*(v7 + 8 * (((v2 == 32) * v6) | v5)))();
}

uint64_t sub_22D315B18@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v7 = *(v6 - 220 + a2 + 72);
  v8 = ((2 * a2) & 0xABBFDBF0) + (a2 ^ 0xD5DFEDF9) + v2;
  *(a1 + v8) = (((v3 + 124) | 0x80) - 52) ^ v7;
  *(a1 + v8 + 1) = (BYTE1(v7) ^ 0x51) + ~(2 * ((BYTE1(v7) ^ 0x51) & 0x3A ^ BYTE1(v7) & 8)) + 51;
  *(a1 + v8 + 2) = (BYTE2(v7) ^ 0x65) - ((2 * (BYTE2(v7) ^ 0x65)) & 0x64) + 50;
  *(a1 + v8 + 3) = (HIBYTE(v7) ^ 0x56) - 2 * ((HIBYTE(v7) ^ 0x56) & 0x33 ^ HIBYTE(v7) & 1) + 50;
  return (*(v5 + 8 * (((a2 + 4 < *(v6 - 128)) * v4) ^ v3)))();
}

uint64_t sub_22D315C60@<X0>(int a1@<W3>, int a2@<W4>, unsigned int a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v24 = (a15 + 24 * v19);
  *v24 = v22;
  v24[1] = a2;
  *&v20[6 * v19 + 4] = v23;
  v24[4] = a17;
  *v20 = a4 + 1;
  return (*(v21 + 8 * ((1209 * (v17 + a1 < (((v18 ^ 0x176) + 862) ^ a3))) ^ v18)))();
}

uint64_t sub_22D315D38@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v39 = *(&a24 + a2 + 72);
  v40 = ((2 * a2) & 0xB7AFEFF8) + (a2 ^ 0x5BD7F7FF) + v36;
  *(a1 + v40) = ((v39 >> ((v37 + 104) ^ 0x3E)) ^ 0x56) - ((2 * ((v39 >> ((v37 + 104) ^ 0x3E)) ^ 0x56)) & 0x64) + 50;
  *(a1 + v40 + 1) = (BYTE2(v39) ^ 0x65) - ((2 * (BYTE2(v39) ^ 0x65)) & 0x64) + 50;
  *(a1 + v40 + 2) = (BYTE1(v39) ^ 0x51) - ((2 * (BYTE1(v39) ^ 0x51)) & 0x64) + 50;
  *(a1 + v40 + 3) = v39 ^ 0x4E;
  return (*(v38 + 8 * ((117 * (a2 + 4 < a36)) ^ v37)))();
}

uint64_t sub_22D315EA8@<X0>(int a1@<W8>)
{
  v5 = ((&v7 & 0x52E069D0 | ~(&v7 | 0x52E069D0)) ^ 0xBEC37A0F) * a1;
  v8 = 0;
  v9 = v3;
  v7 = 1332270173 - v5;
  v10 = 2017451246 - v5;
  v11 = v1 + 1468 - v5 - 1782;
  result = (*(v4 + 8 * ((v1 + 1468) ^ 0xAE)))(&v7);
  *(v2 + 16) = *(v3 + 24);
  return result;
}

uint64_t sub_22D315F28@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v3 + 36 + a2 - 931;
  *(v8 + v2) = *(STACK[0x4C8] + a2);
  v10 = a1 + a2 + 897 < v4;
  if (v4 < v5 != v9 > v7)
  {
    v10 = v4 < v5;
  }

  return (*(v6 + 8 * ((!v10 | (4 * !v10)) ^ v3)))();
}

uint64_t sub_22D315FD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q1>, int8x16_t a4@<Q4>, uint64_t a5@<D5>, int8x16_t a6@<Q6>)
{
  v17 = v14 - 16;
  v18 = (v17 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a3 - 1), a4).u64[0];
  v20.i64[1] = a5;
  v21 = vrev64q_s8(vmulq_s8(v20, a6));
  *(v15 + v17) = veorq_s8(veorq_s8(veorq_s8(*(v11 + v18 - 15), *(a2 + v17)), veorq_s8(*(v9 + v18 - 15), *(v10 + v18 - 15))), vextq_s8(v21, v21, 8uLL));
  return (*(v16 + 8 * (((a1 == 16) * (v13 + 1901)) ^ v12)))();
}

uint64_t sub_22D316018@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  v19 = a1 < v15;
  *(&a12 + v12) = *(v18 + v13) - ((2 * *(v18 + v13)) & 0x64) + 50;
  if (v19 == v13 + 1 > v14)
  {
    v19 = (((v17 - 561) | 0x28) ^ (v15 - 44)) + v13 < a1;
  }

  return (*(v16 + 8 * ((116 * !v19) ^ v17)))();
}

uint64_t sub_22D3160E8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = (&STACK[0x5E0] + STACK[0x260] + (a1 ^ 0xFFFFFFFFFFFFFF7ALL));
  STACK[0x440] = v4;
  *v6 = 0xCDCDCDCDCDCDCDCDLL;
  v6[1] = 0x3232323234323220;
  v7 = 2066391179 * ((1995074501 - ((v5 - 216) | 0x76EA6BC5) + ((v5 - 216) | 0x8915943A)) ^ 0x26321622);
  *(v5 - 216) = (v2 + 68669857) ^ v7;
  *(v5 - 212) = 1525008249 - v7;
  (*(v3 + 8 * (v2 ^ 0xD1)))(v5 - 216);
  LODWORD(STACK[0x528]) = 1657355484;
  v8 = (*(v3 + 8 * (v2 + 91)))(336, 0x100004077774924);
  STACK[0x410] = v8;
  return (*(v3 + 8 * ((v8 == 0) ^ v2)))(v8, v9, v10, v11, v12, v13, v14, v15, a2);
}

uint64_t sub_22D316260()
{
  v6 = v2 - 1;
  *(v5 + v6) = (v1 ^ 0x26) + *(v0 + v6) - (v3 & (2 * *(v0 + v6)));
  return (*(v4 + 8 * ((v6 == 0) | (8 * (v6 == 0)) | v1)))();
}

void sub_22D3162DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v12 = ((v10 ^ 0x3F34D2FB) - 1109938949) ^ v10 ^ ((v10 ^ 0xDAF97A1C) + 1478099998) ^ ((v10 ^ 0xF77FEBFF) + 1973196287) ^ ((v10 ^ 0x6FAECAA9 ^ v11) - 313672472);
  *a9 = (HIBYTE(v12) ^ 0x7D) - ((2 * (HIBYTE(v12) ^ 0x7D)) & 0x64) + 50;
  a9[1] = (BYTE2(v12) ^ 0x1C) - ((2 * (BYTE2(v12) ^ 0x1C)) & 0x64) + 50;
  a9[2] = (((((v10 ^ 0xD2FB) - 21253) ^ v10 ^ ((v10 ^ 0x7A1C) + 1054) ^ ((v10 ^ 0xEBFF) - 27137) ^ ((v10 ^ 0xCAA9 ^ v11) - 17176)) >> 8) ^ 0x81) - ((v12 >> 7) & 0x64) + 50;
  a9[3] = ((v10 ^ 0xFB) - 5) ^ v10 ^ ((v10 ^ 0x1C) + 30) ^ (-v10 - 2) ^ ((v10 ^ 0xA9 ^ v11) - 24) ^ 0xCC;
  v13 = v9 - ((2 * v9) & 0xEC48959136FDE122) + 0x76244AC89B7EF091;
  a9[4] = (HIBYTE(v13) ^ 0x76) - 2 * ((HIBYTE(v13) ^ 0x76) & 0x33 ^ HIBYTE(v13) & 1) + 50;
  a9[5] = (BYTE6(v13) ^ 0x24) - ((2 * (BYTE6(v13) ^ 0x24)) & 0x64) + 50;
  a9[6] = (BYTE5(v13) ^ 0x4A) - ((2 * (BYTE5(v13) ^ 0x4A)) & 0x64) + 50;
  a9[7] = (BYTE4(v13) ^ 0xC8) - ((2 * BYTE4(v13)) & 0x64) + 50;
  a9[8] = (((v9 - ((2 * v9) & 0x36FDE122) - 1686179695) >> 24) ^ 0x9B) + (~(2 * (((v9 - ((2 * v9) & 0x36FDE122) - 1686179695) >> 24) ^ 0x9B)) | 0x9B) + 51;
  a9[9] = (BYTE2(v13) ^ 0x7E) - 2 * ((BYTE2(v13) ^ 0x7E) & 0x33 ^ BYTE2(v13) & 1) + 50;
  a9[10] = (BYTE1(v13) ^ 0xF0) - 2 * ((BYTE1(v13) ^ 0xF0) & 0x3A ^ BYTE1(v13) & 8) + 50;
  a9[11] = (v9 - ((2 * v9) & 0x22) - 111) ^ 0xA3;
  JUMPOUT(0x22D315F20);
}

uint64_t sub_22D3164F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 - 1908470786) & 0x71C0F3EF ^ 0xFFFFFFFFFFFFFD10) + v2;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((19 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))();
}

uint64_t sub_22D316560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v29 = v20 ^ 0x320;
  *(v28 - 120) = v24;
  *(v28 - 112) = &a20;
  *(v28 - 104) = v27;
  *(v28 - 128) = v20 - ((2 * ((v28 - 144) & 0x6A16D4D8) - (v28 - 144) + 367602467) ^ 0xBACEA93B) * v25 + 343;
  *(v28 - 144) = v22;
  *(v28 - 136) = v22;
  (*(v21 + 8 * (v20 + 1504)))(v28 - 144);
  return (*(v21 + 8 * ((v29 + 534) | (8 * ((((v29 - 63) ^ (v23 + v26 + ((v29 + 1478651026) & 0xA7DD91F5) - 116 < 0x7FFFFFFF)) & 1) == 0)))))();
}

uint64_t sub_22D3165BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a13;
  a17 = 2066391179 * (((&a15 | 0x9AD2B40) - (&a15 & 0x9AD2B40)) ^ 0xA68AA958) + 668;
  v20 = (*(v19 + 18424))(&a15);
  return (*(v19 + 8 * (((4 * (a15 == v18)) | (16 * (a15 == v18))) ^ v17)))(v20);
}

uint64_t sub_22D316700@<X0>(uint64_t a1@<X8>)
{
  v4 = 843532609 * ((((2 * v6) | 0x49415EF8) - v6 - 614510460) ^ 0x78EDFBF9);
  v7 = a1;
  v6[0] = (-467380673 - v2 - ((843044 - (v2 << ((-96 * (v3 ^ 0x5A)) ^ 0xE1))) & 0xBCF5A)) ^ v4;
  v6[1] = v4 + v3 - 464;
  return (*(v1 + 8 * (v3 ^ 0xB20u)))(v6);
}

uint64_t sub_22D316938(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t (*a15)(uint64_t, uint64_t, void))
{
  v18 = (((v15 ^ 0xD408C36) - 222334006) ^ ((v15 ^ 0x78F287E) - 126822526) ^ ((v15 ^ 0x5CAAF534) - 1554707764)) + (((*(v17 - 148) ^ 0xE4B2D8A) - 239807882) ^ ((*(v17 - 148) ^ 0xF2AAB43C) + 223693764) ^ ((*(v17 - 148) ^ 0xAA84C8CA) + 1434138422)) - 932548192;
  v19 = (v18 ^ 0xE76C2058) & (2 * (v18 & 0xE4603158)) ^ v18 & 0xE4603158;
  v20 = ((2 * (v18 ^ 0x2FEC0248)) ^ 0x97186620) & (v18 ^ 0x2FEC0248) ^ (2 * (v18 ^ 0x2FEC0248)) & 0xCB8C3310;
  v21 = v20 ^ 0x48841110;
  v22 = (v20 ^ 0x83000200) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x2E30CC40) & v21 ^ (4 * v21) & 0xCB8C3310;
  v24 = (v23 ^ 0xA000000) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC18C3310)) ^ 0xB8C33100) & (v23 ^ 0xC18C3310) ^ (16 * (v23 ^ 0xC18C3310)) & 0xCB8C3310;
  v26 = v24 ^ 0xCB8C3310 ^ (v25 ^ 0x88803100) & (v24 << 8);
  v27 = (((v16 ^ 0x762F9D25) - 1982831909) ^ ((v16 ^ 0xDEC31583) + 557640317) ^ ((v16 ^ 0xFE89D9DA) + 24520230)) + (((*(v17 - 144) ^ 0xCE6B0AE2) + 831845662) ^ ((*(v17 - 144) ^ 0x6FCB324A) - 1875587658) ^ ((*(v17 - 144) ^ 0xF7C569D4) + 138057260)) - 1379710549;
  *(v17 - 148) = v18 ^ (2 * ((v26 << 16) & 0x4B8C0000 ^ v26 ^ ((v26 << 16) ^ 0x33100000) & (((v25 ^ 0x430C0210) << 8) & 0x4B8C0000 ^ 0x438C0000 ^ (((v25 ^ 0x430C0210) << 8) ^ 0xC330000) & (v25 ^ 0x430C0210)))) ^ 0x231D0604;
  *(v17 - 144) = v27 ^ ((v27 ^ 0x20BFC9CC) - 541552511) ^ ((v27 ^ 0xCDBABD4F) + 851305476) ^ ((v27 ^ 0x182A6DCF) - 416467836) ^ ((v27 ^ 0xF5D7BFFF) + 181462708) ^ 0x569DF7CF;
  v28 = (((a7 ^ 0x8EF9CB81) + 1896232063) ^ ((a7 ^ 0xD80DC9B3) + 670185037) ^ ((a7 ^ 0x91534E) - 9524046)) + (((*(v17 - 140) ^ 0x92CA633E) + 1832230082) ^ ((*(v17 - 140) ^ 0xC00079BE) + 1073710658) ^ ((*(v17 - 140) ^ 0x4AF4BFC) - 78597116)) + 395597097;
  v29 = (v28 ^ 0xD1344DCF) & (2 * (v28 & 0x95364DCF)) ^ v28 & 0x95364DCF;
  v30 = ((2 * (v28 ^ 0xD15C5E49)) ^ 0x88D4270C) & (v28 ^ 0xD15C5E49) ^ (2 * (v28 ^ 0xD15C5E49)) & 0x446A1386;
  v31 = v30 ^ 0x442A1082;
  v32 = (v30 ^ 0x400304) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x11A84E18) & v31 ^ (4 * v31) & 0x446A1384;
  v34 = (v33 ^ 0x280200) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x44421186)) ^ 0x46A13860) & (v33 ^ 0x44421186) ^ (16 * (v33 ^ 0x44421186)) & 0x446A1380;
  v36 = v34 ^ 0x446A1386 ^ (v35 ^ 0x44201000) & (v34 << 8);
  v37 = (v36 << 16) & 0x446A0000 ^ v36 ^ ((v36 << 16) ^ 0x13860000) & (((v35 ^ 0x4A0386) << 8) & 0x446A0000 ^ 0x4680000 ^ (((v35 ^ 0x4A0386) << 8) ^ 0x6A130000) & (v35 ^ 0x4A0386));
  v38 = (((a4 ^ 0xC85EA396) + 933321834) ^ ((a4 ^ 0x64798A4C) - 1685686860) ^ ((a4 ^ 0xFA4278A6) + 96307034)) + (((*(v17 - 136) ^ 0xCC7B0383) + 864353405) ^ ((*(v17 - 136) ^ 0x3A548E47) - 978619975) ^ ((*(v17 - 136) ^ 0xA04ADCB8) + 1605706568)) - 1342435896;
  v39 = (v38 ^ 0xF8EE15B5) & (2 * (v38 & 0xFCCE9530)) ^ v38 & 0xFCCE9530;
  v40 = ((2 * (v38 ^ 0x41EE1FB5)) ^ 0x7A41150A) & (v38 ^ 0x41EE1FB5) ^ (2 * (v38 ^ 0x41EE1FB5)) & 0xBD208A84;
  v41 = v40 ^ 0x85208A85;
  v42 = (v40 ^ 0x30000000) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0xF4822A14) & v41 ^ (4 * v41) & 0xBD208A84;
  v44 = (v43 ^ 0xB4000A00) & (16 * v42) ^ v42;
  v45 = ((16 * (v43 ^ 0x9208081)) ^ 0xD208A850) & (v43 ^ 0x9208081) ^ (16 * (v43 ^ 0x9208081)) & 0xBD208A80;
  v46 = v44 ^ 0xBD208A85 ^ (v45 ^ 0x90008800) & (v44 << 8);
  *(v17 - 140) = v28 ^ (2 * v37) ^ 0x4B833BBF;
  *(v17 - 136) = v38 ^ (2 * ((v46 << 16) & 0x3D200000 ^ v46 ^ ((v46 << 16) ^ 0xA850000) & (((v45 ^ 0x2D200285) << 8) & 0x3D200000 ^ 0x1D200000 ^ (((v45 ^ 0x2D200285) << 8) ^ 0x208A0000) & (v45 ^ 0x2D200285)))) ^ 0xC0EAD146;
  return a15(v17 - 220, a2, a14);
}

uint64_t sub_22D3169F8(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = 742307843 * ((2 * (a1 & 0x686566B6) - a1 - 1751475895) ^ 0x89B8141C);
  v3 = *(a1 + 8) + v2;
  v4 = *(a1 + 32) ^ v2;
  v5 = *a1 - v2;
  v6 = *(a1 + 24);
  v7 = 1365817397 * v4 + 1547213640;
  v8 = (v7 ^ 0x2DE62529) & (2 * (v7 & 0xAD84B52C)) ^ v7 & 0xAD84B52C;
  v9 = ((2 * (v7 ^ 0x27E70539)) ^ 0x14C7602A) & (v7 ^ 0x27E70539) ^ (2 * (v7 ^ 0x27E70539)) & 0x8A63B014;
  v10 = v9 ^ 0x8A209015;
  v11 = (v9 ^ 0x32000) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x298EC054) & v10 ^ (4 * v10) & 0x8A63B014;
  v13 = (v12 ^ 0x8028000) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x82613001)) ^ 0xA63B0150) & (v12 ^ 0x82613001) ^ (16 * (v12 ^ 0x82613001)) & 0x8A63B010;
  v15 = v13 ^ 0x8A63B015 ^ (v14 ^ 0x82230000) & (v13 << 8);
  v16 = v7 ^ (2 * ((v15 << 16) & 0xA630000 ^ v15 ^ ((v15 << 16) ^ 0x30150000) & (((v14 ^ 0x840B005) << 8) & 0xA630000 ^ 0x8430000 ^ (((v14 ^ 0x840B005) << 8) ^ 0x63B00000) & (v14 ^ 0x840B005)))) ^ 0xEDBAB1A8;
  v17 = 1564307779 * (((&v19 ^ 0x823EB004) & 0x1692BE1F | ~(&v19 ^ 0x823EB004 | 0x1692BE1F)) ^ 0xFC5E3DF7);
  v20 = *(a1 + 16);
  v19 = v16 + v17;
  v23 = v6;
  v21 = (((v5 ^ 0x4600779F) - 1174435743) ^ ((v5 ^ 0x37AA255A) - 933897562) ^ ((v5 ^ 0xB2AF49B7) + 1297135177)) + v17 - 88065600;
  v22 = v3 - v17 + 1197043342;
  result = (*(*(&off_28407CFD0 + (v3 ^ 0xB8A69551)) + (v3 ^ 0xB8A69DFC) - 1))(&v19);
  *(a1 + 4) = v24;
  return result;
}

void sub_22D316CF8(uint64_t a1)
{
  v1 = *(a1 + 32) - 1082434553 * (a1 ^ 0x9B47F68A);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_22D316E28@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - ((2 * *(v1 + v5)) & 0x64) + 50;
  return (*(v4 + 8 * ((3859 * (v5 == ((v2 - 1262890870) & 0x4B462A2D) - 525)) ^ v2)))();
}

void sub_22D316ED4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (((v3 ^ 0x1DF45B96) - 502553494) ^ ((v3 ^ 0x16E588CB) - 384141515) ^ ((v3 ^ 0x5D748221) - 1567916605 + ((a3 + 1844898631) & 0x92090F3F))) + (((v4 ^ 0x25CCEED8) - 634187480) ^ ((v4 ^ 0x81568F02) + 2125033726) ^ ((v4 ^ 0xF2FF30A6) + 218156890));
  LODWORD(STACK[0x2A0]) = (1396006152 - v5) ^ (v5 - 24590127) ^ (((v5 - 24590127) ^ 0x942F7728) + 980331791) ^ (((v5 - 24590127) ^ 0x2060318B) - 1910379602) ^ (((v5 - 24590127) ^ 0x1A0E9C85) - 1269872988) ^ 0x7DB74A5;
  JUMPOUT(0x22D317028);
}

uint64_t sub_22D31792C@<X0>(int a1@<W8>, uint64_t a2, char a3, __int16 a4, __int16 a5, char a6, char a7, uint64_t a8, char *a9, char *a10, char a11, uint64_t *a12, int a13, unsigned int a14, int a15)
{
  v18 = 843532609 * ((~&a8 & 0x74270446 | &a8 & 0x8BD8FBB9) ^ 0x286A50C3);
  a8 = *(v15 + 32);
  a9 = &a7;
  a12 = &a2;
  a10 = &a3;
  a13 = (v17 + 1986157456) ^ v18;
  a14 = ((((a1 ^ 0x7D6AB68C) - 2104145548) ^ ((a1 ^ 0x5B43E0EC) - 1531175148) ^ ((a1 ^ 0x81A59A5C) + v17 - 167 + 2119852823)) + 114677510) ^ v18;
  a11 = 65 * ((~&a8 & 0x46 | &a8 & 0xB9) ^ 0xC3) + 60;
  v19 = (*(v16 + 8 * (v17 + 1499)))(&a8);
  return (*(v16 + 8 * ((1077 * (a15 == -1261164275)) ^ v17)))(v19);
}

uint64_t sub_22D317BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, char *), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, __int16 a31, char a32)
{
  v35 = (v32 - 299) | 6;
  a32 = a30;
  v36 = 1785193651 * ((((v34 - 176) | 0x8172465B) + (~(v34 - 176) | 0x7E8DB9A4)) ^ 0x92AEAA7A);
  *(v34 - 168) = a2;
  *(v34 - 160) = 1869595558 - v36;
  *(v34 - 176) = (v35 + 1512) ^ v36;
  v37 = (*(v33 + 8 * (v35 + 2229)))(v34 - 176);
  return a16(v37, &a30);
}

uint64_t sub_22D317CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = v20 + 2066391179 * (((&a17 | 0xD88E90BB) - &a17 + (&a17 & 0x27716F40)) ^ 0x77A912A3) + 478;
  a18 = &a12;
  v21 = (*(v19 + 8 * (v20 + 2113)))(&a17);
  return (*(v19 + 8 * (((a17 == ((v20 + 1664859825) & 0x9CC441F5 ^ 0xB4D42868)) * (((v20 + 21927898) | 0x40A12204) - 1106228182)) ^ v20)))(v21);
}

uint64_t sub_22D317DF0()
{
  v2 = STACK[0x57C];
  LODWORD(STACK[0x57C]) += 64;
  v3 = LODWORD(STACK[0x5B4]) + 1149647750;
  v4 = v2 + 1581290870 > v3;
  if ((v2 + 1581290870) < 0x5E409536 != v3 < ((v0 + 926) ^ 0x7EAu) + 1581290638)
  {
    v4 = (v2 + 1581290870) < 0x5E409536;
  }

  return (*(v1 + 8 * ((245 * v4) ^ (v0 + 926))))();
}

uint64_t sub_22D317DFC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v25 = 742307843 * ((((v24 - 128) | 0xE932CD9F) - (v24 - 128) + ((v24 - 128) & 0x16CD3260)) ^ 0xF71040CA);
  *(v24 - 120) = &a12;
  *(v24 - 128) = v21 - v25 - 473374142;
  *(v24 - 108) = v21 + 1443 - v25 + a1 - (((v21 + 88) ^ 0x47C665E2) & (2 * a1)) + 602090569;
  v26 = (*(v22 + 8 * (v21 ^ 0x903)))(v24 - 128);
  return (*(v22 + 8 * ((938 * (*v23 - 1368544343 + (a21 & 0x3Fu) < 0xFFFFFFC0)) ^ v21)))(v26);
}

uint64_t sub_22D317F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v19 = (a9 - 671758740) | 0x117;
  v20 = a9 - 671758251;
  v21 = a9 - 671757072;
  v22 = v18 + 1968681738 < (a17 + 624893072);
  if (v18 + 1968681738 < (v20 ^ (a8 + 198) ^ v19) != a17 + 624893072 < a8)
  {
    v22 = a17 + 624893072 < a8;
  }

  return (*(v17 + 8 * ((22 * !v22) ^ v21)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22D317FDC(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v12 = a6 + 1;
  v13 = v12 < a1;
  if (v9 > a3 != v12 < v11)
  {
    v13 = v9 > a3;
  }

  return (*(v8 + 8 * ((v13 * ((a7 ^ a8) * v10 + 3348)) ^ a7)))();
}

uint64_t sub_22D318100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, __int16 a31, char a32, char a33)
{
  a33 = *(&a30 + v35);
  v37 = ((v33 + 1894287562) & 0x8F1773FF ^ ((v33 - 1164) + 344)) + v34 == 4;
  return (*(v36 + 8 * (((2 * v37) | (8 * v37)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_22D318158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v11 = v6 + 32;
  v12 = (v11 ^ a1 ^ ((v7 + 426) | v9)) + v5;
  v13 = *(a2 + v12 - 15);
  v14 = *(a2 + v12 - 31);
  v15 = v4 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a3)), a4);
  return (*(v10 + 8 * ((14 * (v8 != v11)) ^ v7)))();
}

uint64_t sub_22D318160(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = v8 + 1;
  if (v13 == 19)
  {
    v15 = 0;
  }

  else
  {
    v14 = (*(v10 + v13) ^ a3) - (*(v11 + v13) ^ a3);
    v15 = v14 + a4 - (a8 & (2 * v14)) == ((v9 + 194) ^ (a4 + 412));
  }

  v16 = v15;
  return (*(v12 + 8 * ((504 * v16) ^ v9)))();
}

uint64_t sub_22D318168()
{
  v4 = 1082434553 * (((v3 - 144) & 0xB78A4088 | ~((v3 - 144) | 0xB78A4088)) ^ 0xD33249FD);
  *(v3 - 136) = v9;
  *(v3 - 128) = v2;
  *(v3 - 120) = v7 - v4 + ((v0 - 1680) ^ 0x9BF0F93B);
  *(v3 - 116) = (v0 - 1458) ^ v4;
  (*(v1 + 8 * (v0 ^ 0xFD7)))(v3 - 144);
  *v6 = v7;
  result = v8;
  *(v8 + 40) = -1261164275;
  return result;
}

uint64_t sub_22D318294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (a9 + v11);
  *(v14 - 1) = v13;
  *v14 = v13;
  return (*(v12 + 8 * (((((((v10 + 1879970782) & 0x8FF1EBF1) - 513) & v9) != 16) * (((((v10 + 1879970782) & 0x8FF1EBF1) - 237) | 0x6B2) - 998)) ^ (v10 + 1879970782) & 0x8FF1EBF1)))();
}

uint64_t sub_22D3182F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v38 = 1785193651 * ((2 * ((v37 - 160) & 0x71CC2098) - (v37 - 160) - 1909203100) ^ 0x9DEF3344);
  STACK[0x2C8] = &a26;
  *(v37 - 144) = a15 - v38 + 212240405;
  *(v37 - 160) = (v35 + 1481) ^ v38;
  v39 = (*(v36 + 8 * (v35 ^ 0x89E)))(v37 - 160);
  v40 = a35 & (((v35 - 69) | 0x400) - 961);
  *(&a26 + v40) = -78;
  return (*(v36 + 8 * ((1351 * (v40 > 0x37)) ^ v35)))(v39);
}

uint64_t sub_22D318498@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x248] + a2 + 72);
  v6 = (a2 ^ 0x5FF7EFE3 ^ (2 * v3) ^ 0x9A6) + ((2 * a2) & 0xBFEFDFF8) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0x56) - ((2 * (HIBYTE(v5) ^ 0x56)) & 0x64) + 50;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x65) - ((2 * (BYTE2(v5) ^ 0x65)) & 0x64) + 50;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0x51) - ((2 * (BYTE1(v5) ^ 0x51)) & 0x64) + 50;
  *(a1 + v6 + 3) = v5 ^ 0x4E;
  return (*(v4 + 8 * ((52 * (a2 + 4 < LODWORD(STACK[0x2A4]))) ^ v3)))();
}

uint64_t sub_22D3185A8@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 + 843532609 * ((((2 * &v5) | 0x55EA1954) - &v5 + 1426781014) ^ 0xF6B8582F) - 771;
  v7 = v3;
  v8 = v1;
  v5 = v3;
  return (*(a1 + 8 * (v2 + 1151)))(&v5);
}

uint64_t sub_22D318674@<X0>(int a1@<W8>)
{
  *v2 = STACK[0x4EC];
  v2[85] = STACK[0x544];
  v2[86] = STACK[0x540];
  v2[87] = STACK[0x3CC];
  v2[88] = STACK[0x4A4];
  return (*(v1 + 8 * (((STACK[0x3D0] == 0) * (4 * (a1 ^ 0x48) - 152 + ((4 * (a1 ^ 0x48) - 1289612341) & 0x4CDDECDB) - 1384)) ^ (4 * (a1 ^ 0x48) - 193))))();
}

uint64_t sub_22D3187D8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned int a10)
{
  a9 = (-117 * (((&a9 | 0x45) - &a9 + (&a9 & 0xB8)) ^ 0x5D)) ^ 0x2B;
  a10 = (a1 + 999) ^ (2066391179 * (((&a9 | 0xB8757545) - &a9 + (&a9 & 0x478A8AB8)) ^ 0x1752F75D));
  v11 = (*(v10 + 8 * (a1 + 1946)))(&a9);
  return sub_22D318850(v11);
}

uint64_t sub_22D3188AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x260] = v65;
  *(v62 + 1424) = 0;
  memset((v62 + 1432), 50, 104);
  *(v63 + 96) = v62;
  STACK[0x400] = v63 + 96;
  *(v62 + 476) = 1;
  v66 = STACK[0x360];
  STACK[0x478] = *(v64 + 8 * v61);
  STACK[0x2C8] = v63;
  v67 = STACK[0x4F8];
  v68 = (v61 + 1887) ^ 0x48E;
  v69 = (&STACK[0x5E0] + STACK[0x4F8]);
  STACK[0x4E0] = v69;
  STACK[0x4F8] = v67 + 432;
  LODWORD(STACK[0x300]) = a4;
  LODWORD(STACK[0x53C]) = a4;
  STACK[0x3A0] = v66;
  LODWORD(STACK[0x394]) = -712618048;
  LODWORD(STACK[0x374]) = 1657355148;
  STACK[0x510] = 0;
  LODWORD(STACK[0x524]) = 313566482;
  LODWORD(STACK[0x348]) = a7 + 1;
  *v69 = 1098146250;
  LODWORD(STACK[0x2E0]) = 61642217;
  LODWORD(STACK[0x308]) = v68 - 440216382;
  LODWORD(STACK[0x2D0]) = -1616077123;
  LODWORD(STACK[0x2D8]) = 257946682;
  v71 = *v69 != 1098146250 || LODWORD(STACK[0x348]) != a7 + 4 * ((v61 + 1887) ^ 0x79F) - 932;
  return (*(v64 + 8 * ((v71 * (v68 + 466)) ^ v68)))(a1, a2, a3, a4, a5, a6, a7, 2699484461, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

void sub_22D318A30(unsigned int *a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + v6 + 4) = 85;
  *(a1 + (v5 + 2) + 4) = 73;
  v7 = ((a4 - 1751449038) ^ (v4 + 88)) + v5 - 1751449034 - 87;
  *a1 = v7;
  v8 = a1 + 1;
  *(v8 + (v5 + 3)) = 68;
  *(v8 + v5) = 47;
  *(v8 + (v5 + 4)) = 61;
  *(v8 + v7) = 0;
  JUMPOUT(0x22D334048);
}

void sub_22D318A54()
{
  v4 = v0;
  v5 = STACK[0x450] + 128;
  STACK[0x530] = v5;
  v6 = 742307843 * ((((v3 - 216) | 0x816BE91D) - ((v3 - 216) & 0x816BE91D)) ^ 0x9F496448);
  *(v3 - 208) = v5;
  *(v3 - 196) = 602092488 - v6;
  *(v3 - 216) = -473373760 - v6 + v0;
  (*(v1 + 8 * (v0 + 2173)))(v3 - 216);
  STACK[0x458] = *(v1 + 8 * v4);
  STACK[0x308] = v2;
  JUMPOUT(0x22D30CA40);
}

uint64_t sub_22D318B18()
{
  v2 = STACK[0x340] - 872;
  LODWORD(STACK[0x598]) = v1;
  return (*(v0 + 8 * v2))();
}

uint64_t sub_22D318B3C@<X0>(uint64_t a1@<X8>)
{
  v9 = (*(*(v7 + 8) + 4 * v1) ^ 0xB98CD7DE) + v2;
  *(*(a1 + 8) + 4 * v1) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((609 * (v8 > (v1 + 1))) ^ (v3 - 969568221) & 0x39CA6DBDu)))();
}

uint64_t sub_22D318C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 128) = v14 - ((((v18 - 136) | 0xDEECC404) - (v18 - 136) + ((v18 - 136) & 0x21133BF8)) ^ 0xA4BD85E) * v17 - 614;
  *(v18 - 136) = a11;
  *(v18 - 120) = &a14;
  v19 = (*(v15 + 8 * (v14 ^ 0xFCA)))(v18 - 136);
  return (*(v15 + 8 * ((((v14 ^ ((v16 + *(v18 - 112) - 1) < 0xE85389C3)) & 1) * ((v14 + 1889433606) & 0x8F6187FB ^ 0x771)) ^ v14)))(v19);
}

uint64_t sub_22D318DE4(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a3 ^ 0x7D8;
  v9 = (((a5 ^ 0x6AC7A2BB) - 1791468219) ^ ((a5 ^ 0x622FC16E) - 1647296878) ^ (((394 * (v8 ^ 0x550)) ^ 0xB164B718) + (a5 ^ 0x4E9B4BF4))) + v7;
  v10 = (((a4 ^ 0xCD33790C) + 852264692) ^ ((a4 ^ 0x2712709B) - 655519899) ^ ((a4 ^ 0xAC5221B6) + 1403903562)) + v7;
  v11 = (v10 < v6) ^ (v9 < v6);
  v12 = v9 < v10;
  if (v11)
  {
    v12 = v10 < v6;
  }

  return (*(v5 + 8 * (((4 * v12) | (8 * v12)) ^ v8)))();
}

uint64_t sub_22D318FA4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  HIDWORD(v16) = a1 ^ 0x665517C;
  LODWORD(v16) = a1 ^ 0x55555555;
  v17 = (a2 ^ v12) + (v16 >> 27) + (((v6 ^ v5) + v12 - ((2 * (v6 ^ v5)) & 0xACCAA2F8)) ^ a4) - 14901403 + (((v7 + 774) | 0x180) ^ (v14 + 907) ^ *(v8 + 4 * (a5 + v11)));
  v18 = (v17 ^ 0xA317B061) & (2 * (v17 & 0xCB462271)) ^ v17 & 0xCB462271;
  v19 = ((2 * (v17 ^ 0x271FF0C3)) ^ 0xD8B3A564) & (v17 ^ 0x271FF0C3) ^ (2 * (v17 ^ 0x271FF0C3)) & (v10 + 2);
  v20 = v19 ^ 0x24485292;
  v21 = (v19 ^ 0x48118000) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xB1674AC8) & v20 ^ (4 * v20) & v10;
  v23 = (v22 ^ 0xA0414280) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x4C189032)) ^ 0xC59D2B20) & (v22 ^ 0x4C189032) ^ (16 * (v22 ^ 0x4C189032)) & v10;
  v25 = v24 ^ 0x2840D092;
  v26 = v23 ^ (v10 + 2) ^ (v24 ^ 0xC4190200) & (v23 << 8);
  return (*(v9 + 8 * ((28 * (a5 + 1 != v13 + 80)) ^ v7)))(v17 ^ (2 * ((v26 << 16) & 0x6C590000 ^ v26 ^ ((v26 << 16) ^ 0x52B20000) & ((v25 << 8) & 0x6C590000 ^ 0x24090000 ^ ((v25 << 8) ^ 0x59D20000) & v25))) ^ 0xC5B0D669, a4);
}

void sub_22D319190()
{
  STACK[0x288] = 0;
  LODWORD(STACK[0x544]) = 313725005;
  v0 = &STACK[0x5E0] + STACK[0x220];
  v1 = STACK[0x220] + 1712;
  STACK[0x4F8] = v1;
  *v0 = 0x6370646600;
  v0[8] = 1;
  STACK[0x260] = v1;
  STACK[0x290] = (v0 + 9);
  JUMPOUT(0x22D33C440);
}

uint64_t sub_22D319280@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 563552687;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 50)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 178)
  {
    v12 = -1261164275;
    v13 = *(v2 + 16);
    v14 = *(v2 + 24) ^ v3;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 37)
    {
      v15 = 2008292077;
    }

    else
    {
      v15 = 2008292076;
    }

    *(result + 16) = 1941292484;
    *(result + 20) = v15;
    *(result + 24) = -1261164275;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0x900)))();
    v12 = 1261138644;
  }

  *(v2 + 8) = v12;
  return result;
}

uint64_t sub_22D319354(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v20 = (v16 + 1727012092) & 0x990FDF3D;
  *v17 = a1;
  *a4 = a16 ^ (v18 + 295) ^ v20;
  return (*(v19 + 8 * (((((v20 + 763229254) & 0xD28209E5 ^ 0xFFFFFFCA) + ((v20 - 817) | 0x200)) * (a9 == 0)) ^ v20)))();
}

uint64_t sub_22D3193DC@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xCCBu));

  return v3(v1);
}

uint64_t sub_22D319410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = STACK[0x340];
  STACK[0x4F8] -= 1616;
  LODWORD(STACK[0x52C]) = a5 - 154;
  return (*(v5 + 8 * (((STACK[0x3D0] == 0) * (v6 - 152 + ((v6 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v6 - 193))))();
}

uint64_t sub_22D3194C8()
{
  v13.val[1].i64[0] = (v3 + 13) & 0xF;
  v13.val[1].i64[1] = (v3 + 12) & 0xF;
  v13.val[2].i64[0] = (v3 + 11) & 0xF;
  v13.val[2].i64[1] = (v3 + 10) & 0xF;
  v13.val[3].i64[0] = (v3 + 9) & 0xF;
  v13.val[3].i64[1] = v3 & 0xF ^ 8;
  v8 = (v3 + v6 - 16);
  v14.val[0].i64[0] = (v3 + 7) & 0xF;
  v14.val[0].i64[1] = (v3 + 6) & 0xF;
  v14.val[1].i64[0] = (v3 + 5) & 0xF;
  v14.val[1].i64[1] = (v3 + 4) & 0xF;
  v14.val[2].i64[0] = (v3 + 3) & 0xF;
  v14.val[2].i64[1] = (v3 + 2) & 0xF;
  v14.val[3].i64[0] = (v3 + 1) & 0xF;
  v14.val[3].i64[1] = v3 & 0xF;
  v9.i64[0] = 0x6161616161616161;
  v9.i64[1] = 0x6161616161616161;
  v10.i64[0] = 0x3232323232323232;
  v10.i64[1] = 0x3232323232323232;
  v13.val[0].i64[0] = v4 & 0xF;
  v13.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.i64[0] = vqtbl4q_s8(v13, xmmword_22D5B62D0).u64[0];
  v11.i64[1] = vqtbl4q_s8(v14, xmmword_22D5B62D0).u64[0];
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*v8, *(v0 + v13.val[0].i64[0] - 15)), veorq_s8(*(v13.val[0].i64[0] + v1 - 12), *(v13.val[0].i64[0] + v2 - 10))));
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v14.val[0], v14.val[0], 8uLL), v10), vmulq_s8(v11, v9)));
  *v8 = vextq_s8(v14.val[0], v14.val[0], 8uLL);
  return (*(v7 + 8 * (v5 ^ (((v5 + 1020) - (v3 & 0x10) == 1394) << 6))))(v13.val[0].i64[1], 1394 - (v5 + 1020));
}

uint64_t sub_22D319690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1726767306;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v4 = *(a2 + 8) + (*(a2 + 4) - v3);
  v5 = 50899313 * ((v10 & 0xD24FDAC | ~(v10 | 0xD24FDAC)) ^ 0x3ABAC605);
  v11 = *(a1 + 96) + 528;
  v12 = v4;
  v13 = v5 ^ 0x2D7;
  v10[1] = v5 + v3 + 210866775;
  (*(a3 + 18296))(v10);
  v8 = v10[0];
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v3);
  return v8 ^ 0xB75BE8A7;
}

uint64_t sub_22D3197F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, int a19, int a20, uint64_t a21, int a22)
{
  v28 = &a22 + 6 * v24;
  v28[2] = v25;
  v28[3] = a17;
  *(v28 + 2) = a15;
  v28[6] = a20;
  a22 = (a9 ^ 0x116) + v23;
  return (*(v26 + 8 * ((2323 * (a4 + v22 + 15 * (a9 ^ 0x11Au) - 195 < v27)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

void sub_22D3198B0(unsigned __int8 *a1@<X8>)
{
  *(v3 - 192) = v4;
  v5 = v1 + 215;
  v6 = (v1 + 215) ^ 0xF2;
  *(v3 - 116) = v6;
  v7 = *(&off_28407CFD0 + ((v1 + 215) ^ 0x15D)) - 12;
  v8 = v7[a1[5] ^ 0xE2];
  v9 = *(&off_28407CFD0 + v1 - 229) - 4;
  v10 = v9[a1[15] ^ 0x92];
  *(v3 - 148) = v2;
  v11 = v9[((a1[7] & 0xC0 ^ 0xFEE1A8275804A472) & (a1[7] & 0x3F ^ 0xFEFDFBF7DF67F7D1) | a1[7] & 0xD) ^ 0xFEE1A8275804A4E3];
  v12 = *(&off_28407CFD0 + v5 - 269) - 8;
  v13 = (v11 ^ 0x9FFF8D26) & ((v8 << 16) ^ 0x9F538D6E) | v11 & 0x91;
  v14 = ((-1459617792 * v12[a1[4] ^ 0x57] + 436207616) ^ 0xC1AEE8FE) & (v13 ^ 0x60E36591);
  v15 = v13 & 0x5510001;
  v16 = -87 * v12[a1[12] ^ 0x68] + 26;
  v17 = *(&off_28407CFD0 + (v5 ^ 0x154));
  LOBYTE(v11) = *(v17 + (a1[14] ^ 0xD6)) + 19;
  v18 = ((*(v17 + (a1[6] ^ 0x87)) + 19) ^ 0x30) << 8;
  v19 = (v18 & 0x4100 | (v15 ^ 0x8A1F56E2 ^ v14) & ~v18) ^ 0x35E1BE1C;
  v20 = ((((v16 ^ 0x7E) << 24) ^ 0x7896999E) & ~((v11 ^ 0x27) << 8) & 0x7A107100 | ((v11 ^ 0x27) << 8) & 0x6000) ^ 0x8DE75840 ^ (((((v16 ^ 0x7E) << 24) ^ 0x7896999E) & ~((v11 ^ 0x27) << 8) | ((v11 ^ 0x27) << 8) & 0x6666) ^ 0x85690661) & ((((v7[a1[13] ^ 0xB9] << 16) ^ 0xA5D6614A) & (v6 ^ 0xBFFFF63A ^ v10) | v10 & 0xB5) ^ 0x2001EF85);
  v21 = ((v9[a1[3] ^ 0x29] ^ 0xB8) & 0xFFFF00FF | ((v7[a1[1] ^ 8] ^ 0x8F) << 16) | (((-87 * v12[*a1 ^ 0xE1] + 26) ^ 0xDA) << 24) | (((*(v17 + (a1[2] ^ 0x8FLL)) + 19) ^ 0xD8) << 8)) ^ 0x1B;
  v22 = *(&off_28407CFD0 + (v5 ^ 0x17E));
  v23 = *(&off_28407CFD0 + v5 - 290) - 8;
  v24 = (((-87 * v12[a1[8] ^ 0xB9] + 26) ^ 0xBC) << 24) | ((v7[a1[9] ^ 0x3BLL] ^ 0x7E) << 16) | (v9[a1[11] ^ 0x62] ^ 0xFB) & 0xFFFF00FF | (((*(v17 + (a1[10] ^ 0xB7)) + 19) ^ 0xE7) << 8);
  v25 = *(&off_28407CFD0 + (v5 ^ 0x1BB)) - 12;
  LODWORD(v12) = *&v25[4 * (v16 ^ 0x88)];
  v26 = *(v22 + 4 * (BYTE2(v20) ^ 0xBAu)) ^ *&v23[4 * (v11 ^ 0x7E)] ^ 0x9DE514AB;
  v27 = *(&off_28407CFD0 + v5 - 437) - 8;
  LODWORD(v10) = *&v27[4 * (v10 ^ 0x26)];
  *(v3 - 208) = v21;
  LODWORD(v12) = v10 ^ v21 ^ (((v26 - ((2 * v26) & 0xFD142FCC) + 2122979302) ^ v12) - ((2 * ((v26 - ((2 * v26) & 0xFD142FCC) + 2122979302) ^ v12)) & 0x53472F04) - 1448896638);
  *(v3 - 196) = v19;
  LODWORD(v10) = v12 ^ v19;
  v28 = v12;
  *(v3 - 200) = v24;
  LODWORD(v12) = v12 ^ v19 ^ v24;
  v29 = v10;
  LODWORD(v10) = v12 ^ v20;
  v30 = v12;
  LODWORD(v12) = *&v27[4 * ((v12 ^ v20) ^ 0x35)] ^ 0xDE04F601;
  LODWORD(v10) = v10 ^ 0xF83672DE;
  *(v3 - 156) = BYTE1(v10);
  LODWORD(v12) = v12 ^ *&v23[4 * (BYTE1(v10) ^ 0x9E)];
  LODWORD(v12) = (v12 - ((2 * v12) & 0xFD142FCC) + 2122979302) ^ *&v25[4 * (BYTE3(v10) ^ 0x86)];
  v98 = v28 ^ *(v22 + 4 * (BYTE2(v10) ^ 0xBAu)) ^ (v12 - ((2 * v12) & 0xD484EA50) - 364743384) ^ v29 ^ 0xA25B684D;
  v31 = v28 ^ *(v22 + 4 * (BYTE2(v10) ^ 0xBAu)) ^ (v12 - ((2 * v12) & 0xD484EA50) - 364743384);
  *(v3 - 204) = v20;
  LODWORD(v12) = (v98 ^ 0xF73EC34E ^ v20 ^ 0x7E4FB786) >> 24;
  *(v3 - 232) = v12;
  v97 = ((v98 ^ 0xF73EC34E ^ v20 ^ 0x7E4FB786) >> 16);
  LODWORD(v17) = *&v25[4 * (v12 ^ 0x86)] ^ *(v22 + 4 * (v97 ^ 0xBAu));
  v95 = ((v98 ^ 0xC34E ^ v20 ^ 0xB786) >> 8);
  v32 = ((v17 ^ 0x94C862CE) + 2007458179 + (~(2 * (v17 ^ 0x94C862CE)) | 0x10B13CF9) + 1) ^ *&v23[4 * (v95 ^ 0x9E)];
  v33 = v98 ^ 0x4E ^ v20;
  *(v3 - 152) = v33;
  v34 = v31 ^ *&v27[4 * (v33 ^ 0x6D)] ^ (v32 - ((2 * v32) & 0x53472F04) - 1448896638);
  *(v3 - 124) = v34;
  v34 ^= 0xFEB4AEEu;
  v35 = v34 ^ v30 ^ 0xF83672DE;
  v36 = v34;
  *(v3 - 172) = v35;
  v37 = v35 ^ v98 ^ 0xF73EC34E ^ v20 ^ 0x7E4FB786;
  *(v3 - 212) = BYTE2(v37);
  v38 = *(v22 + 4 * (BYTE2(v37) ^ 0xBAu));
  *(v3 - 164) = BYTE1(v37);
  LODWORD(v9) = v38 ^ *&v23[4 * (BYTE1(v37) ^ 0x9E)] ^ 0x9DE514AB;
  *(v3 - 168) = HIBYTE(v37);
  LODWORD(v9) = (v9 - ((2 * v9) & 0xFD142FCC) + 2122979302) ^ *&v25[4 * (HIBYTE(v37) ^ 0x86)];
  *(v3 - 160) = v37;
  v39 = v36 ^ *&v27[4 * (v37 ^ 0xEB)];
  *(v3 - 248) = v36;
  v93 = v98 ^ 0xF73EC34E ^ v30 ^ 0xF83672DE;
  v40 = v39 ^ (v9 - ((2 * v9) & 0x53472F04) - 1448896638);
  *(v3 - 132) = v40 ^ v93;
  LODWORD(v9) = v40 ^ v93 ^ 0x598844C8;
  v41 = v9 ^ v37;
  v42 = v9;
  LODWORD(v9) = *&v27[4 * ((v9 ^ v37) ^ 0x83)] ^ *&v25[4 * (((v9 ^ v37 ^ 0xCD2CB9A0) >> 24) ^ 0x86)] ^ 0xD7298064;
  v43 = (v9 - ((2 * v9) & 0xD484EA50) - 364743384) ^ *(v22 + 4 * (((v41 ^ 0xCD5DCD68) >> 16) ^ 0xBAu));
  v44 = (v43 - ((2 * v43) & 0xEF4EC306) + 2007458179) ^ *&v23[4 * (((v41 ^ 0xCD68) >> 8) ^ 0x9E)];
  v45 = v36 ^ v98 ^ 0xF73EC34E;
  *(v3 - 240) = v45;
  v45 ^= 0x7E4FB786u;
  *(v3 - 136) = v45;
  *(v3 - 256) = v44 ^ v45;
  v46 = v44 ^ v45 ^ 0xF39A3E26;
  v47 = v46 ^ v37;
  v48 = v46;
  v49 = *&v25[4 * ((v47 >> (v40 & 0x18) >> (v40 & 0x18 ^ 0x18)) ^ 0x86)];
  *(v3 - 252) = BYTE2(v47);
  v50 = *(v22 + 4 * (BYTE2(v47) ^ 0xBAu)) ^ v49;
  LODWORD(v12) = ((v50 ^ 0x94C862CE) - 2 * ((v50 ^ 0x94C862CE) & 0x77A761A3 ^ v50 & 0x20) + 2007458179) ^ *&v23[4 * (BYTE1(v47) ^ 0x9E)];
  LODWORD(v7) = v44 ^ v40 ^ *&v27[4 * ((v48 ^ v42 ^ v41 ^ 0x68) ^ 0x83)] ^ (v12 - ((2 * v12) & 0x53472F04) - 1448896638);
  *(v3 - 140) = v7;
  *(v3 - 224) = v7 ^ 0x53DB0D92;
  LODWORD(v10) = v7 ^ 0x53DB0D92 ^ v48 ^ 0xF73EC34E;
  LODWORD(v12) = v10 ^ v41 ^ 0xCD5DCD68 ^ 0xBF7FF0FA;
  v51 = *(v22 + 4 * (BYTE2(v12) ^ 0xBAu));
  v52 = (v10 ^ v41 ^ 0x68);
  *(v3 - 176) = v52;
  v53 = *&v27[4 * (v52 ^ 0x11)] ^ v51;
  v54 = ((v53 ^ 0x43E1E2AA) - 2 * ((v53 ^ 0x43E1E2AA) & 0x7E8A17F7 ^ v53 & 0x11) + 2122979302) ^ *&v25[4 * ((v12 >> 24) ^ 0x86)];
  v55 = v7 ^ 0x53DB0D92 ^ *&v23[4 * (BYTE1(v12) ^ 0x9E)] ^ (v54 - ((2 * v54) & 0xEF4EC306) + 2007458179);
  *(v3 - 128) = v55;
  v56 = v55 ^ 0x85DB0D92;
  v88 = v55 ^ 0x85DB0D92;
  v94 = v55 ^ 0x85DB0D92 ^ v7 ^ 0x53DB0D92 ^ v48 ^ 0x484133B4 ^ v10 ^ v48 ^ v42 ^ 0xCD5DCD68;
  v57 = v94 ^ 0xBDE5CEDC ^ v12;
  LODWORD(v9) = *&v25[4 * (((v57 ^ 0x29A3E26) >> 24) ^ 0x86)];
  v58 = *&v23[4 * (((v57 ^ 0x3E26) >> 8) ^ 0x9E)];
  *(v3 - 120) = 0;
  LODWORD(v9) = ((v9 ^ v58 ^ 0x92D7665) - ((2 * (v9 ^ v58 ^ 0x92D7665)) & 0xD484EA50) - 364743384) ^ *(v22 + 4 * (((v57 ^ 0x29A3E26) >> 16) ^ 0xBAu));
  v90 = (v9 - ((2 * v9) & 0x53472F04) - 1448896638) ^ *&v27[4 * (v94 ^ 0xDC ^ v12 ^ 0xCD)];
  *(v3 - 144) = v90 ^ v56;
  v59 = *(&off_28407CFD0 + v5 - 281) - 8;
  v60 = *(&off_28407CFD0 + (v5 ^ 0x146)) - 8;
  v61 = *(&off_28407CFD0 + v5 - 336) - 8;
  v62 = *(&off_28407CFD0 + v5 - 320) - 12;
  v91 = *(v3 - 132) ^ 0xAF58D76C;
  LODWORD(v10) = (v97 ^ 0xFD84E219) - 1223506397 + *&v59[4 * (v97 ^ 0x89)];
  v63 = (v10 - ((2 * v10) & 0x1F22D66A) + 261188405) ^ *&v62[4 * (v95 ^ 0x93)];
  v92 = v63 - ((2 * v63) & 0x666E95BE);
  LODWORD(v9) = *&v60[4 * ((v90 ^ ~v88) >> 24)];
  v64 = *(v3 - 144) ^ 0xDDA7A6D4;
  LODWORD(v9) = (-1583929207 - 914915627 * v9 - 1059953136 * v9 - 2 * ((-1583929207 - 914915627 * v9 - 1059953136 * v9) & 0xF916B3F ^ (-1583929207 - 914915627 * v9) & 0xA) + 261188405) ^ *&v62[4 * BYTE1(v64)];
  v89 = v9 - ((2 * v9) & 0x666E95BE);
  v96 = (BYTE2(v64) ^ 0xFD84E2A5) - 1223506397 + *&v59[4 * (BYTE2(v64) ^ 0x35)];
  v65 = *(v3 - 232) ^ 0x32;
  LODWORD(v12) = (BYTE2(v48) ^ 0xFD84E2B1) - 1223506397 + *&v59[4 * (BYTE2(v48) ^ 0x21)];
  v66 = (v12 - ((2 * v12) & 0x1F22D66A) + 261188405) ^ *&v62[4 * (BYTE1(*(v3 - 256)) ^ 0x56)] ^ (-1974868763 * *&v60[4 * (HIBYTE(*(v3 - 256)) ^ 0x6D)] - 1583929207);
  *(v3 - 232) = v66 - ((2 * v66) & 0x666E95BE);
  v67 = (*(v3 - 212) ^ 0xFD84E246) - 1223506397 + *&v59[4 * (*(v3 - 212) ^ 0xD6)];
  *(v3 - 252) = v67 - ((2 * v67) & 0x1F22D66A);
  v68 = *(v3 - 172);
  v69 = *&v60[4 * (HIBYTE(v98) ^ 0xE6)];
  v70 = *&v60[4 * v65];
  v71 = *(v3 - 240);
  *(v3 - 212) = -1974868763 * *&v60[4 * (HIBYTE(*(v3 - 132)) ^ 0xE)] - 1583929207;
  *(v3 - 168) = -1974868763 * v69 - 1583929207;
  *(v3 - 156) = *&v62[4 * BYTE1(v91)];
  *(v3 - 164) = *&v62[4 * (BYTE1(v71) ^ 0x74)];
  *(v3 - 176) = (BYTE2(v68) ^ 0xFD84E264) - 1223506397 + *&v59[4 * (BYTE2(v68) ^ 0xF4)];
  v72 = *&v61[4 * (*(v3 - 152) ^ 0xC9)];
  *(v3 - 172) = *&v61[4 * (v98 ^ 0x7D)];
  *(v3 - 152) = *&v61[4 * (v93 ^ 0x6A)];
  v73 = *&v61[4 * (*(v3 - 144) ^ 0x1C)];
  LODWORD(v9) = *(v3 - 160) ^ 0xF2;
  *(v3 - 160) = *&v61[4 * (*(v3 - 124) ^ 0x45)];
  *(v3 - 144) = *&v61[4 * v9];
  LODWORD(v12) = v72 ^ (-1974868763 * v70 - 1583929207) ^ 0xADE18B96 ^ (v92 - 1288221985);
  v74 = *(&off_28407CFD0 + v5 - 273) - 12;
  v75 = *(&off_28407CFD0 + v5 - 436) - 4;
  v76 = *(&off_28407CFD0 + (v5 ^ 0x1D1)) - 4;
  v77 = (((v74[*(v3 - 111) ^ 0xD5] - 62) ^ 0xED) << 16) | ((v76[*(v3 - 112) ^ 1] ^ 0xF6) << 24);
  LODWORD(v60) = ((v75[*(v3 - 102) ^ 0x49] ^ 0xF9) << 8) & 0xFF00FFFF | (((v74[*(v3 - 103) ^ 0xB3] - 62) ^ 0x59) << 16);
  v78 = (((v74[*(v3 - 99) ^ 0xDLL] - 62) ^ 0xA9) << 16) | ((v76[*(v3 - 100) ^ 0xCALL] ^ 0x64) << 24);
  v79 = *(v3 - 107) ^ 0x45;
  v80 = ((v75[*(v3 - 106) ^ 0xD5] ^ 0xDA) << 8) | ((v76[*(v3 - 108) ^ 0xC2] ^ 0x3C) << 24);
  *(v3 - 232) = v75;
  *(v3 - 224) = v74;
  v81 = v80 & 0xFF00FFFF | (((v74[v79] - 62) ^ 0x16) << 16);
  v82 = v78 | ((v75[*(v3 - 98) ^ 0xC6] ^ 0xA4) << 8);
  LODWORD(v79) = v77 | ((v75[*(v3 - 110) ^ 0xE7] ^ 0x40) << 8);
  v83 = *(&off_28407CFD0 + v5 - 385) - 12;
  v84 = v82 & 0xFFFFFF00 | (53 * v83[*(v3 - 97) ^ 0xCBLL] - 98) ^ 0x79;
  LODWORD(v79) = v79 & 0xFFFFFF00 | (53 * v83[*(v3 - 109) ^ 0x8ALL] - 98) ^ 0xC9;
  v85 = v81 & 0xFFFFFF00 | (53 * v83[*(v3 - 105) ^ 0xB9] - 98) ^ 0x3C;
  v86 = *(v3 - 104) ^ 0x8ALL;
  v87 = *(v3 - 101) ^ 6;
  *(v3 - 248) = v83;
  *(v3 - 240) = v76;
  LOBYTE(v87) = v83[v87];
  *(v3 - 252) = -98;
  LODWORD(v60) = v60 & 0xFFFFFF00 | (53 * v87 - 98) ^ 0x87 | ((v76[v86] ^ 0x1B) << 24);
  *(v3 - 136) = v79 ^ 0x37373737;
  *(v3 - 132) = v84 ^ 0x37373737;
  *(v3 - 128) = v85 ^ 0x37373737;
  *(v3 - 140) = v60 ^ 0x37373737;
  *(v3 - 256) = v96 ^ v73 ^ (v89 - 1288221985);
  *(v3 - 124) = (((*(v3 - 148) ^ 0x44333B87) + 1999025154) ^ ((*(v3 - 148) ^ 0xCBEB841D) - 117568612) ^ ((*(v3 - 148) ^ 0xFBC19321) - 925623128)) + 117213772;
  *(v3 - 212) = v12;
  JUMPOUT(0x22D31BE5CLL);
}

uint64_t sub_22D31D514(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x8_t a6, int8x8_t a7)
{
  v14 = a2 - 8;
  v16.val[0].i64[0] = (v10 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v10 + v14 + v11 - 60) & 0xF;
  v16.val[1].i64[1] = (v10 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v10 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v10 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + v14) & 0xF ^ 8;
  *(a3 + v14) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + v14), *(v7 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v8 - 4), *(v16.val[0].i64[0] + v9 - 2)))), a7), vmul_s8(*&vqtbl4q_s8(v16, a5), a6)));
  return (*(v13 + 8 * (((a1 == v14) * a4) ^ v12)))();
}

uint64_t sub_22D31D568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v17 = 386 * (v15 ^ 0x118);
  v18 = ((a5 - 1657355370 + v17 - 1705) & 0xFFFFFFFC) - a15 != (((v17 - 1898) | 0xC1) ^ 0x9D36C492);
  return (*(v16 + 8 * (((16 * v18) | (v18 << 6)) ^ v17)))();
}

uint64_t sub_22D31D660(uint64_t a1)
{
  v3 = (*(v1 + 18384))();
  if (v3 == 16)
  {
    v4 = -42029;
  }

  else
  {
    v4 = -42030;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  (*(v1 + 17656))(a1);
  return v5;
}

uint64_t sub_22D31D6C0@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v5 = *(v4 + a1);
  v6 = a1 - 1;
  *(a3 + v6) = v5;
  return (*(v3 + 8 * (a2 ^ ((v6 == ((a2 - 22) | 0x18Au) - 1498) << 7))))();
}

uint64_t sub_22D31D734(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, _BYTE *a11, uint64_t a12, _BYTE *a13, uint64_t a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, uint64_t a18, _BYTE *a19, _BYTE *a20, _BYTE *a21, uint64_t a22, _BYTE *a23, uint64_t a24, uint64_t a25, uint64_t a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, _BYTE *a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  *a11 = v41;
  *a20 = BYTE3(v41);
  a11[1] = BYTE6(a7);
  a9[1] = (((a34 + 73) & 0xF4) + 64) ^ BYTE4(v41);
  a16[20] = v42;
  *a27 = BYTE5(a7);
  a16[64] = BYTE2(v41);
  a16[50] = BYTE3(a8);
  *a21 = BYTE1(v41);
  *a28 = a8;
  a16[26] = BYTE6(a8);
  *a29 = BYTE4(a8);
  a9[2] = BYTE1(a2);
  a16[45] = BYTE5(a8);
  *a30 = HIBYTE(a8);
  a16[11] = BYTE2(a2);
  *a31 = BYTE1(v42);
  *a9 = HIBYTE(a7);
  *a13 = BYTE2(v42);
  a16[52] = BYTE4(v42);
  *a17 = BYTE3(v42);
  v44 = *(a12 + 526 + (((a6 >> 33) & 0x80 | (v42 >> 41) & 0x7F) ^ 0x1D));
  a16[9] = BYTE6(v42);
  *a15 = (((v44 >> 4) | (16 * v44)) ^ 0xB ^ (((v44 >> 4) | (16 * v44)) >> 1) & 0x55) + 95;
  v45 = (*(a10 + (((v42 >> 51) & 0xE0 | (a6 >> 59)) ^ 0xF3)) ^ 0xBC) + 74;
  a16[39] = v40 ^ 0x53;
  *a23 = v45;
  v46 = *(a10 + (((v40 >> 3) & 0xE0 | (v40 >> 11)) ^ 0xEF));
  v47 = (a1 >> 38) ^ 0xB0;
  a16[49] = BYTE5(v40) ^ 0xBB;
  a16[63] = BYTE3(v40) ^ 0xC1;
  a16[13] = BYTE6(v40) ^ 0x15;
  *a19 = BYTE2(v40) ^ 0x1D;
  *a32 = (v46 ^ 0xBC) + 74;
  a16[36] = BYTE4(v40) ^ 0xF2;
  a16[60] = BYTE1(a1) ^ 0x54;
  a16[27] = BYTE2(a1) ^ 0x11;
  a16[40] = (v40 ^ 0x4F15BBF2C11DE053) >> (a2 & 0x38) >> (a2 & 0x38 ^ 0x38u);
  a16[53] = BYTE3(a1) ^ 5;
  a16[59] = a1 ^ 0x4C;
  a16[22] = BYTE4(a1) ^ 0x2D;
  v48 = *(a14 + ((v47 & 0xFC | (a1 >> 46) & 3) ^ 0x97));
  a16[37] = -35 * ((((v47 & 0xFC | (a1 >> 46) & 3) ^ 0x86) - ((2 * v47) & 0xD0) + (v48 ^ 0xB2) + ((2 * v48) & 0x64) + 79) ^ 0x85);
  v49 = *(a12 + 526 + (((a1 >> 41) & 0x80 | (a1 >> 49) & 0x7F) ^ 0x56));
  a16[29] = HIBYTE(a1) ^ 0x30;
  a16[57] = (((v49 >> 4) | (16 * v49)) ^ 0xB) + ((((v49 >> 4) | (16 * v49)) >> 1) & 0x55) - 2 * ((((v49 >> 4) | (16 * v49)) >> 1) & 0x55 & (((v49 >> 4) | (16 * v49)) ^ 0xB)) + 95;
  **a25 = a18 + 1;
  v51 = *a25;
  v52 = ((*(*a25 + 17) << 32) | (*(*a25 + 16) << 40) | (*(*a25 + 30) << 48)) ^ __ROR8__(((*(*a25 + 21) << 51) | (*(*a25 + 35) << 43) | (*(*a25 + 6) << 35) | __ROR8__(*(*a25 + 54), 5)) ^ 0xE2AE42236AE791A4, 35) ^ (*(*a25 + 42) << 56);
  v53 = *(*a25 + 15) | (*(*a25 + 32) << 8) | (*(*a25 + 7) << 16) | (*(*a25 + 34) << 24) | (*(*a25 + 61) << 40);
  v54 = v52 ^ 0x9811A675F89B50C9;
  v55 = *(&off_28407CFD0 + (a34 ^ 0x3A0));
  v56 = (*(v55 - 2 + (((((69 * v51[55]) - ((69 * v51[55]) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * v51[55])) ^ 0xD5)) - 18) ^ 0x57;
  v57 = ((*(*a25 + 51) << 56) | (*(*a25 + 56) << 48)) ^ 0xB4A3F0758D989FABLL ^ (((0xFFFFFFFF00000000 * ((v56 >> 2) | (v56 << 6))) ^ (v53 - (v53 & 0xFFFFFF00FFFFFFFFLL | (((v56 >> 2) | (v56 << 6)) << 32))) ^ ((((v56 >> 2) | (v56 << 6)) << 32) - (((v56 >> 2) << 33) & 0xFFFFFFF7FFFFFFFFLL) - 0x524F0AC4D0490303) ^ 0xADB0F53B2FB6FCFDLL) + v53);
  v61 = ((v51[4] >> 4) | (16 * v51[4])) ^ 0x5CLL;
  v62 = (((*(v55 + 529 + v61) >> 5) | (8 * *(v55 + 529 + v61))) << 8) ^ 0x764DA23C495917ALL;
  LOBYTE(v53) = (*(v55 - 2 + ((69 * *(*a25 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v58 = ((v53 >> 2) | (v53 << 6)) << 32;
  v59 = *(*a25 + 8) << 24;
  v60 = *(*a25 + 33) << 16;
  v63 = ((v59 & 0xDE000000 ^ 0x2F18FF5EE10B7CD6 ^ (v60 & 0xFC0000 ^ 0x75202470ACE09C56 ^ ((v62 & (*(*a25 + 19) ^ 0x2FF5FF73F5DDFFFBLL) | *(*a25 + 19) & 0x85) ^ 0x28B2F164996D5C0) & (v60 ^ 0x3FFFFFFFFFFFFFFFLL)) & (v59 ^ 0x7FFFFFFFFFFFFFFFLL)) & ~v58 | v58 & 0xE400000000) ^ ((v51[38] << 40) | (v51[43] << 48));
  return sub_22D31DF40(0xFFFFFF0000000000 * v51[12], 250, ((v63 & 0x4AF54021979D7FCDLL ^ (v51[46] << 56) & 0x4A00000000000000 ^ 0xB50ABFFE78638AF2) & ((v51[46] << 56) & 0xB500000000000000 ^ 0xC956176A306B0FDALL ^ v63 & 0xB50ABFDE68628032) | (v63 & 0x4AF54021979D7FCDLL ^ (v51[46] << 56) & 0x4A00000000000000) & 0x2A1400187947005) ^ 0xDED53971F08B6FE8, v57, v54, v62, a40, *(v43 - 176), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22D31DFE4@<X0>(int a1@<W8>)
{
  v7 = (a1 + 209724836) & 0xF37FD88F;
  v8 = STACK[0x350];
  v9 = LODWORD(STACK[0x4C4]) ^ 0xCFCDEBEB;
  v10 = (v7 ^ 0x9F9BD757) & (2 * LODWORD(STACK[0x4C4]));
  v11 = 742307843 * ((-383716899 - (v2 | 0xE920F1DD) + (v2 | 0x16DF0E22)) ^ 0x8FD8377);
  *(v6 - 172) = v1 - v11 + 870003632;
  v12 = v9 - v11 + v10 + 830177151;
  *(v6 - 184) = v5;
  v13 = STACK[0x2B8];
  *(v6 - 208) = v3;
  *(v6 - 200) = v13;
  *(v6 - 192) = v12;
  *(v6 - 188) = v11 + a1 + 1421511924;
  *(v6 - 216) = v8;
  v14 = (*(v4 + 8 * (a1 + 1617)))(v6 - 216);
  v15 = *(v6 - 176);
  LODWORD(STACK[0x504]) = v15;
  return (*(v4 + 8 * ((38 * (v15 == ((35 * (((v7 - 128) | 0x82) ^ 0x94)) ^ 0xB4D42A28))) ^ v7)))(v14);
}

uint64_t sub_22D31E11C()
{
  v6 = 1564307779 * ((2 * ((v1 - 152) & 0x41AC7EF644526C78) - (v1 - 152) + 0x3E538109BBAD9384) ^ 0x1B9075732CA05F97);
  *(v1 - 160) = -1948175035;
  *(v1 - 156) = 317293978;
  v2 = *off_28407D4E8;
  v3 = v1 - 176;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2 + v6;
  *(v1 - 112) = -2030744672 - 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 120) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 116) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97) - 750401412;
  *(v1 - 152) = -750401434 - 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 148) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97) - 750401524;
  v4 = (*(v0 + 18088))(v1 - 152);
  return (*(v0 + 8 * *(v1 - 136)))(v4);
}

uint64_t sub_22D31E4EC@<X0>(int a1@<W8>)
{
  v7 = (v1 ^ 0x66F91AA8) + (a1 & 0xCDF23550) - 12648448;
  v8 = ((((v6 - 144) | 0x1EE1D691) - ((v6 - 144) & 0x1EE1D691)) ^ 0xB1C65489) * v4;
  *(v6 - 128) = v7 ^ v8;
  *(v6 - 136) = v5;
  *(v6 - 144) = v8 + v2 - 427;
  v9 = (*(v3 + 8 * (v2 ^ 0xB19)))(v6 - 144);
  return (*(v3 + 8 * (((*(v6 - 140) != 157 * (v2 ^ 0x38E) + 262714299) * ((v2 + 38) ^ 0x3A9)) ^ v2)))(v9);
}

uint64_t sub_22D31E600(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v45 = v41;
  *v43 = a41 + 513153;
  v46 = *a3;
  v47 = 143681137 * ((v44 - 152) ^ 0x11788207D4A71C5ALL);
  v48 = v45 + 218857968 - v47;
  *(v44 - 128) = -143681137 * ((v44 - 152) ^ 0xD4A71C5A);
  *(v44 - 124) = v47 ^ 0x2B ^ (v45 + 218857968);
  *(v44 - 152) = v48 - 36;
  *(v44 - 132) = v48;
  v49 = v44 - 176;
  *(v49 + 64) = v47 + 5119;
  *(v49 + 32) = v46 - v47;
  *(v44 - 120) = v47 - 288126657 + v45;
  v50 = (*(v42 + 8 * (a2 + v45 + 1605)))(v44 - 152);
  return (*(v42 + 8 * *(v44 - 136)))(v50);
}

uint64_t sub_22D31E744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40, unsigned int a41, unsigned int a42, unsigned int a43, int a44, char a45, uint64_t a46, int a47, char a48)
{
  v55 = *(v50 + 8 * (v48 - 23));
  if (a45 == 2)
  {
    return sub_22D31EB3C(a1, a43, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  if (a45 == 1)
  {
    v56 = &a30 + v52 + 2077315864;
    v57 = *v56 ^ v49;
    LODWORD(v56) = (((v56[2] ^ v49) << 16) | ((v56[3] ^ v49) << 24)) + ((v56[1] ^ v49) << (a8 - 30)) + v57;
    *(v53 + 4 * (v51 ^ 0x1EF454C6)) = v56 + v54 - 2 * (v56 & 0x34D4291D ^ v57 & 0x10);
    return (*(v50 + 8 * ((87 * ((v52 + 2077315868) < 0x40)) ^ (a8 + 1143))))((a8 + 1143), 0, 0, 1003606299, 2077315864, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v58 = (((a39 ^ 0x8E814AF2) + 1904129294) ^ ((a39 ^ 0x4928B0EF) - 1227403503) ^ ((a39 ^ 0x91CCAB61) + 1848857759)) + (((a39 ^ 0x3B06F50D) - 990311693) ^ ((a39 ^ 0x736D5B53) - 1936546643) ^ ((a39 ^ 0x1E0EFF22) - 504299298)) + 60386280;
    v59 = (v58 ^ 0x812127C0) & (2 * (v58 & 0xA9313710)) ^ v58 & 0xA9313710;
    v60 = ((2 * (v58 ^ 0xD1030FC0)) ^ 0xF06471A0) & (v58 ^ 0xD1030FC0) ^ (2 * (v58 ^ 0xD1030FC0)) & 0x783238D0;
    v61 = v60 ^ 0x8120850;
    v62 = (v60 ^ 0x60003080) & (4 * v59) ^ v59;
    v63 = ((4 * v61) ^ 0xE0C8E340) & v61 ^ (4 * v61) & 0x783238D0;
    v64 = (v63 ^ 0x60002040) & (16 * v62) ^ v62;
    v65 = ((16 * (v63 ^ 0x18321890)) ^ 0x83238D00) & (v63 ^ 0x18321890) ^ (16 * (v63 ^ 0x18321890)) & 0x783238D0;
    v66 = v64 ^ 0x783238D0 ^ (v65 ^ 0x220800) & (v64 << 8);
    v67 = (v66 << 16) ^ 0x38D00000u;
    v68 = (((a40 ^ 0x46DD7869) - 1188919401) ^ ((a40 ^ 0x3D699EAB) - 1030332075) ^ ((a40 ^ 0x2DD1B7BE) - 768718782)) + (((a40 ^ 0x511E86B9) - 1360955065) ^ ((a40 ^ 0xD53492A7) + 717974873) ^ ((a40 ^ 0xD24F4562) + 766556830)) - 725893459;
    a39 = v58 ^ (2 * ((v66 << 16) & 0x78320000 ^ v66 ^ v67 & (((v65 ^ 0x781030D0) << 8) & 0x78320000 ^ 0x48020000 ^ (((v65 ^ 0x781030D0) << 8) ^ 0x32380000) & (v65 ^ 0x781030D0)))) ^ 0x7F1017CC;
    a40 = v68 ^ ((v68 ^ 0xB11534D9) + 1763430548) ^ ((v68 ^ 0x7BD2FD96) - 1545856547) ^ ((v68 ^ 0x5CC92515) - 2067283616) ^ ((v68 ^ 0xB1FFF7EF) + 1777406886) ^ 0x71944AC9;
    v69 = (((a41 ^ 0xC4F75287) + 990424441) ^ ((a41 ^ 0x805276D4) + 2142079276) ^ ((a41 ^ 0x12C0752F) - 314602799)) + (((a41 ^ 0x1706569) - 24143209) ^ ((a41 ^ 0xD4660C6F) + 731509649) ^ ((a41 ^ 0x8373387A) + 2089600902)) + 598572391;
    v70 = ((2 * (v69 & 0x891D2591)) & 0x10220202 | v69 & 0x891D2591) ^ (2 * (v69 & 0x891D2591)) & (v69 ^ 0x583B97DE);
    v71 = ((2 * (v69 ^ 0x583B97DE)) ^ 0xA24D649E) & (v69 ^ 0x583B97DE) ^ (2 * (v69 ^ 0x583B97DE)) & 0xD126B24E;
    v72 = v71 ^ 0x51229241;
    v73 = (v71 ^ 0x1106200D) & (4 * v70) ^ v70;
    v74 = ((4 * v72) ^ 0x449AC93C) & v72 ^ (4 * v72) & 0xD126B24C;
    v75 = (v74 ^ 0x40028003) & (16 * v73) ^ v73;
    v76 = ((16 * (v74 ^ 0x91243243)) ^ 0x126B24F0) & (v74 ^ 0x91243243) ^ (16 * (v74 ^ 0x91243243)) & 0xD126B240;
    v77 = v75 ^ 0xD126B24F ^ (v76 ^ 0x10222000) & (v75 << 8);
    v78 = (((a42 ^ 0xD1E9739B) + 773229669) ^ ((a42 ^ 0xB40B8ED5) + 1274310955) ^ ((a42 ^ 0x3387AC32) - 864529458)) + (((a42 ^ 0x8D42B901) + 1925007103) ^ ((a42 ^ 0x62836EFD) - 1652780797) ^ ((a42 ^ 0xB9A48680) + 1180400000)) - 124795201;
    a41 = v69 ^ (2 * ((v77 << 16) & 0x51260000 ^ v77 ^ ((v77 << 16) ^ 0x324F0000) & (((v76 ^ 0xC104920F) << 8) & 0x51260000 ^ 0x51040000 ^ (((v76 ^ 0xC104920F) << 8) ^ 0x26B20000) & (v76 ^ 0xC104920F)))) ^ 0x5D391073;
    a42 = v78 ^ ((v78 ^ 0xB81AB0B4) + 203451533) ^ ((v78 ^ 0xB06766BD) + 73251462) ^ ((v78 ^ 0x9D470A71) + 696112714) ^ ((v78 ^ 0xDEFFFFBF) + 1791304584) ^ 0x1DA072BB;
    return v55(v67, &a30, a3, 100, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, &a48, a24, a4, a26, a27, a28, a29);
  }
}

uint64_t sub_22D31E754@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v4 + 32;
  v10 = (v7 ^ v9) + v3;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a3 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * a1) | v6)))();
}

void sub_22D31E824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v34 - 128) = v30 - ((((v34 - 144) | 0x92ACA6BC) - (v34 - 144) + ((v34 - 144) & 0x6D535940)) ^ 0x3D8B24A4) * v32 + 567;
  *(v34 - 112) = &a30;
  *(v34 - 104) = v33;
  *(v34 - 144) = &a18;
  *(v34 - 136) = &a18;
  *(v34 - 120) = a12;
  (*(v31 + 8 * (v30 ^ 0x940)))(v34 - 144);
  JUMPOUT(0x22D314D9CLL);
}

uint64_t sub_22D31E98C@<X0>(int a1@<W5>, int a2@<W8>)
{
  if (v2 >= v3)
  {
    v7 = 1261138643;
  }

  else
  {
    v7 = a1;
  }

  return (*(v4 + 8 * (((v7 == a1) * ((9 * (a2 ^ (v5 - 9))) ^ 0x284)) ^ (v6 + a2 + 279))))();
}

uint64_t sub_22D31EB3C()
{
  v10 = (v0 + v2 + v6);
  v11 = ((*v10 ^ v3) << 24) | ((v10[1] ^ v3) << 16) | ((v10[2] ^ v3) << 8);
  *(v8 + 4 * (((((v2 ^ 0xE3DE0744) + 1743825828) ^ v2 ^ ((v2 ^ 0x8DF407BA) + 165325662) ^ ((v2 ^ 0x2A14AC9B) - 1371930499) ^ ((v2 ^ 0x3FEFFF7D) - 1144958053)) >> 2) ^ v5)) = (v11 | v10[3] ^ v3) + v9 - 2 * ((v11 | v10[3] ^ v3) & 0x34D4291D ^ (v10[3] ^ v3) & 0x10);
  return (*(v4 + 8 * ((415 * ((v2 + 4 + v6) < 0x40)) ^ v1)))(v7 + 16);
}

uint64_t sub_22D31EC38(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = vdupq_n_s32(0x46732821u);
  *&STACK[0x258] = v5;
  *&STACK[0x268] = v5;
  return (*(v4 + 8 * ((((a3 & 0xFFFFFFF8) != 8) * ((a4 ^ 0x1D2) - 1559)) ^ (a4 - 1185))))();
}

uint64_t sub_22D31EC8C(uint64_t a1, unsigned int a2)
{
  v4 = (v3 - 797405627) & 0x2F876F7C;
  if (((v4 ^ 0x19139C22) + a2) < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -841432684 - a2;
  }

  return (*(v2 + 8 * (((v5 - 1726767307 >= 0) * (((v4 - 138) ^ 0x781) + 623)) ^ v4)))(a1, v5 - 1);
}

uint64_t sub_22D31ED30@<X0>(uint64_t a1@<X2>, char a2@<W4>, unsigned int a3@<W8>)
{
  v8 = *(v7 - 220 + a3 + 72);
  v9 = ((a3 << ((a2 + v3 + 122) ^ (a2 + 1))) & 0xB3BFEFD8) + (a3 ^ 0xD9DFF7ED) + v5;
  *(a1 + v9) = (HIBYTE(v8) ^ 0x56) - ((2 * (HIBYTE(v8) ^ 0x56)) & 0x64) + 50;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0x65) - ((2 * (BYTE2(v8) ^ 0x65)) & 0x64) + 50;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 0x51) - ((2 * (BYTE1(v8) ^ 0x51)) & 0x64) + 50;
  *(a1 + v9 + 3) = v8 ^ 0x4E;
  return (*(v6 + 8 * (((a3 + 4 < *(v7 - 128)) * v4) ^ v3)))();
}

uint64_t sub_22D31EE04@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = (v11 + 4 * v9);
  v13 = HIDWORD(a1) + (*v12 ^ v3) + HIDWORD(v5) + v7 * (*(v10 + 4 * v9) ^ v3);
  *(v12 - 1) = v3 + (v4 ^ v6) + v13 - (a2 & (2 * v13)) - 660;
  return (*(v8 + 8 * (((2 * (v9 + 1 == a3)) | (4 * (v9 + 1 == a3))) ^ v4)))();
}

uint64_t sub_22D31EE6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a6 - 32;
  v11 = *(v10 + v8);
  v12 = (a5 - 32 + v8);
  *(v12 - 1) = *(v10 + v8 - 16);
  *v12 = v11;
  return (*(v7 + 8 * ((56 * (((a3 ^ (v9 - 11)) ^ (a4 == 32)) & 1)) ^ a7)))();
}

uint64_t sub_22D31EE80@<X0>(_DWORD *a1@<X8>, uint8x8_t a2@<D2>)
{
  a2.i32[0] = *v2;
  v5 = vmovl_u8(a2).u64[0];
  *a1 = vuzp1_s8(vadd_s16(vsub_s16(v5, vand_s8(vadd_s16(v5, v5), 0x64006400640064)), 0x32003200320032), 0x64006400640064).u32[0];
  return (*(v4 + 8 * ((28 * ((((v3 ^ 0x1Cu) - 674) ^ 0x209) != 4)) ^ v3 ^ 0x1C)))();
}

uint64_t sub_22D31EEFC()
{
  v10 = (v5 - v7 - 1) & (v1 ^ 0x8Du);
  v12.val[0].i64[0] = v10;
  v12.val[0].i64[1] = (v5 - v7 + 14) & 0xF;
  v12.val[1].i64[0] = (v5 - v7 + 13) & 0xF;
  v12.val[1].i64[1] = (v5 - v7 + 12) & 0xF;
  v12.val[2].i64[0] = (v5 - v7 + 11) & 0xF;
  v12.val[2].i64[1] = (v5 - v7 + 10) & 0xF;
  v12.val[3].i64[0] = (v5 - v7 + 9) & 0xF;
  v12.val[3].i64[1] = (v5 - v7) & 0xFLL ^ 8;
  *(v9 + -8 - v7 + v5) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v0 + -8 - v7 + v5), *(v2 + v10 - 7)), veor_s8(*(v10 + v3 - 2), *(v10 + v4 - 5)))), 0x3232323232323232), vmul_s8(*&vqtbl4q_s8(v12, xmmword_22D5B62E0), 0x5959595959595959)));
  return (*(v8 + 8 * ((4 * (8 - (v6 & 0x18) == -v7)) | (8 * (8 - (v6 & 0x18) == -v7)) | v1)))(v5 - (v6 & 0x18), xmmword_22D5B62E0);
}

uint64_t sub_22D31F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v25 = 21 * (v24 ^ 0x3CC);
  v26 = (a22 ^ (a5 + v25 - 1995)) + a23;
  v27 = a19 < a18;
  if (v27 == v26 > 0x181F614D)
  {
    v27 = 61 * (v25 ^ 0x7C4u) + v26 - 404710625 < a19;
  }

  return (*(v23 + 8 * ((!v27 * (((v25 - 1897046780) & 0x71129B7D) - 21)) ^ v25)))(a1, v26, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22D31F20C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = v24 + 1168;
  v31 = &STACK[0x5E0] + STACK[0x260];
  v32 = a1 + 528;
  v33 = a1 + 800;
  LODWORD(STACK[0x308]) = v26;
  switch(v28)
  {
    case 32:
      v34 = 19;
      break;
    case 20:
      v34 = 15;
      break;
    case 16:
      v34 = 18;
      break;
    default:
      LODWORD(STACK[0x300]) = 0;
      goto LABEL_9;
  }

  LODWORD(STACK[0x300]) = v34;
LABEL_9:
  v35 = STACK[0x340] + 643;
  v36 = (v27 ^ 0xCD5B31E8) + 2063531584 + ((v27 << (STACK[0x340] ^ 0xA5)) & 0x9AB663D0);
  v37 = 843532609 * ((v29 - 216) ^ 0x5C4D5485);
  *(v29 - 152) = v37 + STACK[0x340] - 129;
  *(v29 - 144) = 0;
  *(v29 - 168) = v30;
  *(v29 - 160) = v31;
  *(v29 - 184) = &STACK[0x494];
  *(v29 - 176) = 0;
  *(v29 - 192) = v36 ^ v37;
  *(v29 - 216) = v33;
  *(v29 - 200) = v32;
  v38 = (*(v25 + 8 * a24))(v29 - 216);
  return (*(v25 + 8 * ((450 * (*(v29 - 208) == -1261164275)) ^ v35)))(v38);
}

uint64_t sub_22D31F594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 1073) | 0x96) ^ 0x6FB)) | v3)))();
}

void sub_22D31F5CC()
{
  v4 = STACK[0x530];
  v5 = 742307843 * ((2 * (((v3 - 216) ^ 0xBBE7F91) & 0x505349E8) - ((v3 - 216) ^ 0xBBE7F91) - 1347635691) ^ 0xBA3044D1);
  *(v3 - 216) = -473373760 - v5 + v0 + 13;
  *(v3 - 208) = v4;
  *(v3 - 196) = 602092488 - v5;
  (*(v1 + 8 * (v0 + 2186)))(v3 - 216);
  STACK[0x458] = *(v1 + 8 * v0);
  STACK[0x308] = v2;
  JUMPOUT(0x22D31F67CLL);
}

void sub_22D31F688()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x22D31F69CLL);
}

uint64_t sub_22D31F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v46 ^ (v45 + 324);
  v51 = (*(v47 + 8 * (v46 + 1317)))(&a45, 0);
  (*(v47 + 8 * (v46 + 1280)))(v51);
  v52 = (*(v47 + 8 * (v46 + 1280)))();
  v53 = *v48;
  v54 = 1664525 * (((v53 ^ (v53 >> 30) ^ 0x323144CF) - 1284451497) ^ ((v53 ^ (v53 >> 30) ^ 0xAA0FA45C) + 726545350) ^ ((v53 ^ (v53 >> 30) ^ 0x983EE093) + 427783947)) - 362575568;
  v48[1] = ((v52 + 880541013 - ((2 * v52) & 0x68F7FAAA)) ^ 0x347BFD55) + ((v48[1] - ((2 * v48[1]) & 0xD09CCBA2) - 397515311) ^ v54 ^ ((v54 ^ 0xA729E73A) + 872382664) ^ ((v54 ^ 0xFDA9DB3A) + 1769979080) ^ ((v54 ^ 0x7E5C5BBD) - 360039359) ^ ((v54 ^ 0x4FF5FFBF) - 618424253) ^ 0x8367FDD3);
  *(v49 - 124) = (v50 - 2042978751) ^ a35;
  v55 = v49 - 176;
  *(v55 + 32) = 2 - a35;
  v56 = (v50 - 447985790) ^ a35;
  *(v49 - 136) = v56 ^ 0x53;
  *(v49 - 132) = a35 + 1;
  *(v49 - 152) = v56;
  *(v49 - 148) = a35 + v50 - 447985790 - 31;
  *(v55 + 56) = a38;
  v57 = (*(v47 + 8 * (v50 - 1500579948)))(v49 - 152);
  return (*(v47 + 8 * *(v49 - 128)))(v57);
}

uint64_t sub_22D31F9F8@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x4E8])++;
  *STACK[0x2D0] = v3 + 513153;
  v4 = *STACK[0x2D8];
  v5 = STACK[0x2A0];
  *(v2 - 188) = (a1 - 542397458) ^ STACK[0x2A0];
  *(v2 - 184) = STACK[0x298];
  *(v2 - 216) = (a1 - 442992481) ^ v5;
  *(v2 - 212) = v5 + a1 - 442992481 + 53;
  *(v2 - 208) = v4 - v5;
  *(v2 - 200) = (a1 - 442992529) ^ v5;
  *(v2 - 196) = v5 | 1;
  v6 = (*(v1 + 8 * (a1 + 1345)))(v2 - 216);
  return (*(v1 + 8 * *(v2 - 192)))(v6);
}

uint64_t sub_22D31FAA4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1 + 1361651671 * (((a1 | 0xB6552830) - a1 + (a1 & 0x49AAD7CF)) ^ 0x6577D8BC);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v1 + 143681137 * (((&v5 | 0x9D5253EB) + (~&v5 | 0x62ADAC14)) ^ 0x49F54FB0) + 562359048;
  v6 = v2;
  v7 = v3;
  return (*(*(&off_28407CFD0 + (v1 ^ 0xDE7B15FB)) + (v1 ^ 0xDE7B1D4A) - 1))(&v5);
}

void sub_22D31FBAC(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (v3 + 420716342 >= (v1 ^ 0x188))
  {
    a1 = -a1;
  }

  *(v2 + 4) = a1 + v3;
}

void sub_22D31FD64(uint64_t a1)
{
  v1 = 1564307779 * (((a1 | 0x7695409B) - (a1 & 0x7695409B)) ^ 0xE1988C88);
  __asm { BRAA            X14, X17 }
}

void sub_22D31FE28(uint64_t a1)
{
  if (*(*(a1 + 24) + 4) - 1726767306 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1726767306;
  }

  else
  {
    v2 = 1726767306 - *(*(a1 + 24) + 4);
  }

  v1 = *(a1 + 32) + 843532609 * (((a1 | 0xB1CD8508) - (a1 | 0x4E327AF7) + 1311931127) ^ 0xED80D18D);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22D31FF58@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 32);
  if ((a1 - 1726767307) >= 0x7FFFFFFF)
  {
    v7 = -v3;
  }

  else
  {
    v7 = v1;
  }

  v10[1] = v7;
  *(v5 - 120) = (v2 + 522) ^ (1564307779 * ((((v5 - 136) | 0xC622D8A1) - (v5 - 136) + ((v5 - 136) & 0x39DD2758)) ^ 0x512F14B2));
  *(v5 - 136) = v6;
  *(v5 - 128) = v10;
  return (*(v4 + 8 * (v2 ^ 0xC67)))(v5 - 136);
}

uint64_t sub_22D320104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, int a14, int a15, char *a16, uint64_t a17, char *a18)
{
  v22 = 50899313 * (&a14 ^ 0xC861C456);
  a16 = &a13;
  a17 = v19;
  a18 = &a10;
  a14 = v22 ^ 0x5247F43;
  a15 = (v21 + 392) ^ v22;
  v23 = (*(v20 + 8 * (v21 + 2043)))(&a14);
  return (*(v20 + 8 * ((31 * (*(v19 + 24) != v18)) ^ v21)))(v23);
}

uint64_t sub_22D32027C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + (v2 ^ 0xC59u);
  *(a1 + v5 - 2128) = *(v3 + v5 - 2128) - ((2 * *(v3 + v5 - 2128)) & 0x64) + 50;
  return (*(v4 + 8 * ((650 * (v5 == 2128)) ^ v2)))();
}

uint64_t sub_22D3202C0()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_22D3202E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v15 = 1564307779 * ((v14 + 493274148 - 2 * ((v14 - 136) & 0x1D66C4AC)) ^ 0x8A6B08BF);
  *(v14 - 136) = v15 + v13 + 1429;
  *(v14 - 128) = &a12;
  *(v14 - 120) = v15 + ((a4 << 6) & 0xCD7CDF80) + ((v13 - 58) ^ (32 * a4) ^ 0xE6BE6DC7) + 2103443132;
  v16 = (*(v12 + 8 * (v13 + 1722)))(v14 - 136);
  return (*(v12 + 8 * ((445 * ((v13 - 1726766985 + *(a9 + 4) - 909) < 0x7FFFFFFF)) ^ v13)))(v16);
}

uint64_t sub_22D32041C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

void sub_22D3204A4(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1785193651 * (((a1 | 0x3A136D46) - a1 + (a1 & 0xC5EC92B9)) ^ 0x29CF8166));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D3205C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v17 = 577 * (a2 ^ 0x6CC);
  *(&a12 + a5) = v12 + v17 + HIDWORD(a1) - (v15 & (2 * HIDWORD(a1))) - 1154;
  return (*(v16 + 8 * ((((v17 ^ 0x485) + 2123 + 38 * (v17 ^ 0x485) + 694) * (v14 + 1 == v13)) ^ v17)))();
}

uint64_t sub_22D320634(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = 143681137 * (a1 ^ 0xD4A71C5A);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 28) - v2;
  v8 = *a1 + 2013066611 + v2;
  v9 = 1037613739 * ((-255044930 - (&v11 | 0xF0CC52BE) + (&v11 | 0xF33AD41)) ^ 0xDE31803E);
  v15 = v9 ^ (v8 + 1568);
  v17 = v6;
  v11 = v9 - 807041751 * v7 + 788322856;
  v13 = v3;
  v14 = v5;
  v12 = v4;
  result = (*(*(&off_28407CFD0 + v8) + v8 + 2146))(&v11);
  *(a1 + 4) = v16;
  return result;
}

void sub_22D320768(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4) - 1726767306;
  if (v2 < 0)
  {
    v2 = 1726767306 - *(*(a1 + 24) + 4);
  }

  v1 = *a1 - 2066391179 * ((((2 * a1) | 0x48B2A1A) - a1 + 2109369075) ^ 0x2D621715);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_22D3208C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, char a16, uint64_t a17, _BYTE *a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22)
{
  a20 = &a13;
  a21 = &a16;
  a22 = a18;
  HIDWORD(a19) = v22 + (((&a19 | 0xC656D417) - (&a19 & 0xC656D417)) ^ 0xD8745942) * v23 + 793;
  (*(v24 + 8 * (v22 ^ 0x96E)))(&a19);
  a19 = a18;
  a20 = &a11;
  HIDWORD(a21) = v22 + 210068311 * ((-1481193942 - (&a19 | 0xA7B6C62A) + (&a19 | 0x584939D5)) ^ 0xAAC2963D) + 1082;
  (*(v24 + 8 * (v22 ^ 0x91C)))(&a19);
  a20 = a18;
  LODWORD(a19) = v22 - 50899313 * (((&a19 | 0x3BD61B01) - &a19 + (&a19 & 0xC429E4F8)) ^ 0xF3B7DF57) + 986;
  v25 = (*(v24 + 8 * (v22 + 1820)))(&a19);
  return (*(v24 + 8 * (((a21 == -1261164275) * (((v22 + 1136) | 0x11) ^ 0x29B)) ^ v22)))(v25);
}

uint64_t sub_22D320A2C@<X0>(uint64_t a1@<X8>)
{
  v5[1] = a1;
  v6 = v2;
  v7 = v3 + 1785193651 * ((((2 * v5) | 0xE4FFA836) - v5 + 226503653) ^ 0xE1A3383B) + 584;
  v5[0] = v2;
  return (*(v1 + 8 * (v3 ^ 0x9F7)))(v5);
}

uint64_t sub_22D320B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t *a11, uint64_t a12, unsigned int a13, int a14)
{
  v17 = 1785193651 * (((&a10 | 0xBBAB27D7) - &a10 + (&a10 & 0x4454D828)) ^ 0xA877CBF7);
  a11 = &a9;
  a12 = v14;
  a13 = 2023425342 - v17;
  a14 = v15 - v17 - 550;
  a10 = 1332270177 - v17;
  v18 = (*(v16 + 8 * (v15 ^ 0xB9E)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == -1261164275) * (903 * (v15 ^ 0x37D) + 143)) ^ v15)))(v18);
}

uint64_t sub_22D320BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = &a17;
  *(v22 - 120) = v19;
  *(v22 - 128) = v21 - ((2 * ((v22 - 136) & 0x46156F40) - (v22 - 136) + 971673789) ^ 0xED4D8CE7) * v20 + 953;
  v23 = (*(v18 + 8 * (v21 ^ 0x9E9)))(v22 - 136);
  return (*(v18 + 8 * ((204 * (((v21 - 1) ^ (*(v22 - 112) > v17 + ((v21 + 1056356739) & 0xC10945EF) - 197)) & 1)) ^ v21)))(v23);
}

uint64_t sub_22D320E30@<X0>(char a1@<W1>, char a2@<W7>, uint64_t a3@<X8>)
{
  v8 = *(a3 + v3 + 72);
  v9 = ((v3 << ((v4 + 93) ^ 0xA5)) & 0xB3EFEFF8) + (v3 ^ 0x59F7F7FD) - 1509423101;
  *(v5 + v9) = (a1 ^ HIBYTE(v8)) - (a2 & (2 * (a1 ^ HIBYTE(v8)))) + 50;
  *(v5 + v9 + 1) = (v6 ^ BYTE2(v8)) - (a2 & (2 * (v6 ^ BYTE2(v8)))) + 50;
  *(v5 + v9 + 2) = (BYTE1(v8) ^ 0x51) - (a2 & (2 * (BYTE1(v8) ^ 0x51))) + 50;
  *(v5 + v9 + 3) = v8 ^ 0x4E;
  return (*(v7 + 8 * ((437 * (v3 + 4 < *(a3 + 92))) ^ v4)))();
}

uint64_t sub_22D320EFC()
{
  LODWORD(STACK[0x348]) = v0;
  STACK[0x4F8] -= 432;
  return (STACK[0x478])();
}

uint64_t sub_22D320F88@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x248] + a2 + 72);
  v7 = ((2 * a2) & 0xCEFFFBF0) + ((v3 + 1736440970) ^ a2) + v2;
  *(a1 + v7) = v6 ^ 0x4E;
  *(a1 + v7 + 1) = (BYTE1(v6) ^ 0x51) + ~(2 * ((BYTE1(v6) ^ 0x51) & 0x3A ^ BYTE1(v6) & 8)) + 51;
  *(a1 + v7 + 2) = (BYTE2(v6) ^ 0x65) - ((2 * (BYTE2(v6) ^ 0x65)) & 0x64) + 50;
  *(a1 + v7 + 3) = (HIBYTE(v6) ^ 0x56) - 2 * ((HIBYTE(v6) ^ 0x56) & 0x33 ^ HIBYTE(v6) & 1) + 50;
  return (*(v5 + 8 * (((a2 + 4 >= LODWORD(STACK[0x2A4])) * v4) ^ v3)))();
}

uint64_t sub_22D321524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v20 - ((~((v21 - 136) | 0x93D12884) + ((v21 - 136) & 0x93D12884)) ^ 0xB889CB21) * v17 + 557;
  *(v21 - 120) = &a17;
  *(v21 - 136) = a16;
  v22 = (*(v19 + 8 * (v20 + 1501)))(v21 - 136);
  return (*(v19 + 8 * ((1156 * (*(v21 - 112) > ((v20 + 542) ^ (v18 + 1085)))) ^ v20)))(v22);
}

uint64_t sub_22D3215BC(uint64_t a1, uint64_t a2)
{
  *(a2 + v4 - 1) = ((v2 + v3) ^ v6) * (v2 + v3 + 17);
  v9 = *(v8 + 8 * (((v4 != 1) * v7) ^ v5));
  return v9(v9, a2);
}

uint64_t sub_22D321604(int8x8_t a1, int8x8_t a2)
{
  v9 = v2 + 8;
  *(v5 + v9) = vadd_s8(vsub_s8(*(v8 + v9), vand_s8(vadd_s8(*(v8 + v9), *(v8 + v9)), a1)), a2);
  return (*(v7 + 8 * (((v4 != v9) * v6) ^ v3)))();
}

uint64_t sub_22D3216B4@<X0>(int a1@<W8>)
{
  *v1 = v9 ^ v4;
  v7 = a1 ^ v3;
  v13 = v10;
  v12 = v2 - 1388665877 * (((&v12 | 0xC0EEBB05) - (&v12 & 0xC0EEBB05)) ^ 0x4D43D9E9) + a1 + 1469;
  (*(v5 + 8 * (a1 ^ (v3 + 2395))))(&v12);
  v12 = v7 - 1388665877 * ((((&v12 | 0x20300AC0) ^ 0xFFFFFFFE) - (~&v12 | 0xDFCFF53F)) ^ 0x526297D3) + 817;
  v13 = v11;
  (*(v5 + 8 * (v7 + 1493)))(&v12);
  return v6 ^ v4;
}

uint64_t sub_22D321B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v36 = *(&a19 + v31 + 72);
  v37 = (v36 >> (v35 + ((v33 + 66) | 0x12) + 16)) ^ 0x56;
  v38 = ((2 * v31) & 0xF7AFCFD8) + (v31 ^ 0x7BD7E7ED) + v32;
  *(a1 + v38) = v37 - ((2 * v37) & 0x64) + 50;
  *(a1 + v38 + 1) = (BYTE2(v36) ^ 0x65) - ((2 * (BYTE2(v36) ^ 0x65)) & 0x64) + 50;
  *(a1 + v38 + 2) = (BYTE1(v36) ^ 0x51) - ((2 * (BYTE1(v36) ^ 0x51)) & 0x64) + 50;
  *(a1 + v38 + 3) = v36 ^ 0x4E;
  return (*(v34 + 8 * (((2 * (v31 + 4 < a31)) | (32 * (v31 + 4 < a31))) ^ v33)))();
}

uint64_t sub_22D321C44@<X0>(uint64_t a1@<X8>)
{
  v9 = v1 - 1 + (*(*(v7 + 8) + 4 * v2) ^ (v4 + v3 + 509 - 1180));
  *(*(a1 + 8) + 4 * v2) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((50 * (v2 + 1 == v8)) ^ v3)))();
}

uint64_t sub_22D321CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = (v19 + 510) ^ (1564307779 * ((((2 * (v21 - 136)) | 0x9D5A8418) - (v21 - 136) - 1319977484) ^ 0xD9A08E1F));
  *(v21 - 136) = &a17;
  *(v21 - 128) = a16;
  (*(v18 + 8 * (v19 ^ 0xC6B)))(v21 - 136);
  v22 = 1785193651 * ((2 * ((v21 - 136) & 0x5A883020) - (v21 - 136) - 1518874662) ^ 0xB6AB23FA);
  *(v21 - 136) = a15;
  *(v21 - 128) = v19 - v22 - 88;
  *(v21 - 124) = 1855785489 - v22;
  (*(v18 + 8 * (v19 ^ 0xC33)))(v21 - 136);
  *(v21 - 120) = a15;
  *(v21 - 128) = v19 - ((((v21 - 136) | 0x9C3391) - ((v21 - 136) & 0x9C3391)) ^ 0xD43B2FCB) * v20 + 15;
  *(v21 - 136) = a16;
  v23 = (*(v18 + 8 * (v19 + 959)))(v21 - 136);
  return (*(v18 + 8 * (((*(v21 - 112) > v17) * ((v19 - 1954432291) & 0x747E40E6 ^ (v19 + 1406693074) & 0xAC278CF9 ^ 0x1D5)) ^ v19)))(v23);
}

uint64_t sub_22D321E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v25 = 143681137 * (((&a15 | 0x1A05EB13) - &a15 + (&a15 & 0xE5FA14E8)) ^ 0xCEA2F749);
  a16 = a13;
  LODWORD(a15) = (((2 * v21) & 0xE79F6F7C) - 591430660 + (v21 ^ 0x73CFB7BE)) ^ v25;
  LODWORD(a17) = 1806 - v25;
  (*(v23 + 18120))(&a15);
  a18 = 618 - ((((2 * &a15) | 0x5FE5C5D4) - &a15 - 804446954) ^ 0x80D560F2) * v24;
  a16 = v20;
  a17 = a13;
  (*(v23 + 17736))(&a15);
  v26 = 1037613739 * (&a15 ^ 0xD1022D7F);
  HIDWORD(a17) = v26 ^ 0x84F;
  a18 = (v19 ^ 0xFDDCD7FF) + ((2 * v19) & 0xFBB9AFFE) - v26 + 2134878719;
  a15 = v18;
  a16 = a13;
  v27 = (*(v23 + 17928))(&a15);
  return (*(v23 + 8 * ((474 * (a17 != v22)) ^ 0xDFu)))(v27);
}

uint64_t sub_22D322008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a16 = a12 + 471356342;
  v30 = (v29 - 220);
  v31.i64[0] = 0x3232323232323232;
  v31.i64[1] = 0x3232323232323232;
  v32 = vdupq_n_s32(0x34D4291Du);
  a18 = a5 ^ (a5 - 889);
  v33 = vdupq_n_s32(0xB4D4290D);
  v34 = (a18 - 313) | 0x204u;
  a19 = v28 - 16;
  a15 = 553;
  a17 = *(v25 + 8 * (v24 + v23 - 578));
  v35 = (&a23 + a4);
  a20 = a4 + 320;
  v37 = *(v29 - 140);
  v36 = *(v29 - 136);
  v38 = *(v29 - 124);
  if (v38 == 2)
  {
    v80 = vld4q_s8(v30);
    v63 = veorq_s8(v80.val[0], v31);
    v64 = vmovl_high_u8(v63);
    v65 = vmovl_u8(*v63.i8);
    v66 = veorq_s8(v80.val[1], v31);
    _Q21 = vmovl_high_u8(v66);
    _Q20 = vmovl_u8(*v66.i8);
    v69 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v70 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v71 = veorq_s8(v80.val[2], v31);
    v72 = vmovl_u8(*v71.i8);
    v73 = vmovl_high_u8(v71);
    v80.val[0] = veorq_s8(v80.val[3], v31);
    v80.val[1] = vmovl_u8(*v80.val[0].i8);
    v80.val[2] = vmovl_u16(*v80.val[1].i8);
    v80.val[1] = vmovl_high_u16(v80.val[1]);
    v80.val[0] = vmovl_high_u8(v80.val[0]);
    v80.val[3] = vmovl_u16(*v80.val[0].i8);
    v80.val[0] = vmovl_high_u16(v80.val[0]);
    v74 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v73, 8uLL)), vshlq_n_s32(vmovl_high_u16(v64), 0x18uLL)), v80.val[0]);
    v75 = vorrq_s8(vorrq_s8(vorrq_s8(v70, vshll_n_u16(*v73.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v64.i8), 0x18uLL)), v80.val[3]);
    v76 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v72, 8uLL)), vshlq_n_s32(vmovl_high_u16(v65), 0x18uLL)), v80.val[1]);
    v77 = vorrq_s8(vorrq_s8(vorrq_s8(v69, vshll_n_u16(*v72.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v65.i8), 0x18uLL)), v80.val[2]);
    v80.val[0] = veorq_s8(vandq_s8(v74, v32), (*v80.val & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v80.val[3] = veorq_s8(vandq_s8(v75, v32), (*&v80.val[3] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v80.val[1] = veorq_s8(vandq_s8(v76, v32), (*&v80.val[1] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v80.val[2] = veorq_s8(vandq_s8(v77, v32), (*&v80.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    *v35 = vaddq_s32(vsubq_s32(v77, vaddq_s32(v80.val[2], v80.val[2])), v33);
    v35[1] = vaddq_s32(vsubq_s32(v76, vaddq_s32(v80.val[1], v80.val[1])), v33);
    v35[2] = vaddq_s32(vsubq_s32(v75, vaddq_s32(v80.val[3], v80.val[3])), v33);
    v35[3] = vaddq_s32(vsubq_s32(v74, vaddq_s32(v80.val[0], v80.val[0])), v33);
    v78 = &v35[183174684].i32[v27 + 2];
    v79 = *(v78 - 16);
    *v78 = v26 ^ __ROR4__(*(v78 - 8) ^ *(v78 - 3) ^ v79 ^ v35[183174275].i32[v27 + 2 + v34], 31);
    return (*(v25 + 8 * ((848 * (v28 == 732698675)) ^ a18)))(v79, v36, 553, a4, a5, 50, v37, 100, a9, a10);
  }

  else
  {
    if (v38 != 1)
    {
      JUMPOUT(0x22D33829CLL);
    }

    v81 = vld4q_s8(v30);
    v39 = veorq_s8(v81.val[0], v31);
    v40 = vmovl_high_u8(v39);
    v41 = vmovl_high_u16(v40);
    v42 = vmovl_u16(*v40.i8);
    v43 = vmovl_u8(*v39.i8);
    v44 = vmovl_high_u16(v43);
    v45 = vmovl_u16(*v43.i8);
    v46 = veorq_s8(v81.val[1], v31);
    v47 = vmovl_u8(*v46.i8);
    v48 = vmovl_high_u8(v46);
    v49 = veorq_s8(v81.val[2], v31);
    _Q25 = vmovl_u8(*v49.i8);
    _Q24 = vmovl_high_u8(v49);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v81.val[0] = veorq_s8(v81.val[3], v31);
    v81.val[1] = vmovl_u8(*v81.val[0].i8);
    v81.val[2] = vmovl_u16(*v81.val[1].i8);
    v81.val[0] = vmovl_high_u8(v81.val[0]);
    v81.val[3] = vmovl_u16(*v81.val[0].i8);
    v81.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v81.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v48, 8uLL), v41));
    v81.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v81.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v48.i8, 8uLL), v42));
    v81.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v81.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v47, 8uLL), v44));
    v81.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v81.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v47.i8, 8uLL), v45));
    v58 = veorq_s8(vandq_s8(v81.val[0], v32), (*&v41 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v59 = veorq_s8(vandq_s8(v81.val[3], v32), (*&v42 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v60 = veorq_s8(vandq_s8(v81.val[1], v32), (*&v44 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v61 = veorq_s8(vandq_s8(v81.val[2], v32), (*&v45 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    *v35 = vaddq_s32(vsubq_s32(v81.val[2], vaddq_s32(v61, v61)), v33);
    v35[1] = vaddq_s32(vsubq_s32(v81.val[1], vaddq_s32(v60, v60)), v33);
    v35[2] = vaddq_s32(vsubq_s32(v81.val[3], vaddq_s32(v59, v59)), v33);
    v35[3] = vaddq_s32(vsubq_s32(v81.val[0], vaddq_s32(v58, v58)), v33);
    return (*(v25 + 8 * ((466 * (a19 + 1 != v28)) ^ (73 * (a5 ^ (a5 - 1))))))(*(&off_28407CFD0 + ((73 * (a5 ^ (a5 - 1))) ^ 0xF6)) - 12);
  }
}

uint64_t sub_22D322014()
{
  v2 = v0 - 554;
  v3 = STACK[0x4D0];
  v4 = (v0 - 1657355702 + LODWORD(STACK[0x428]) - 378);
  STACK[0x4B0] = v4;
  return (*(v1 + 8 * ((172 * (v4 == 0)) ^ v2)))(v3);
}

uint64_t sub_22D3220A8@<X0>(unsigned int a1@<W8>)
{
  v8 = (v5 + 4 * v1);
  v9 = v2 & 0x80000000;
  v10 = v1 + 1;
  v11 = *(v5 + 4 * v10);
  v12 = v8[397] ^ ((v11 & 0x7FFFFFFE | v9) >> 1);
  *v8 = (v12 + v3 - ((v12 << ((a1 + 83) & 0xD9 ^ 0x91)) & v6)) ^ *(v7 - 168 + 4 * (v11 & 1));
  return (*(v4 + 8 * ((834 * (v10 == 227)) ^ a1)))();
}

void sub_22D32224C()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x22D322290);
}

uint64_t sub_22D322330@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1428);
  STACK[0x4F8] = STACK[0x260] + 256;
  STACK[0x548] = v1 + 1432;
  if (v3 <= 0x20 && ((1 << v3) & 0x100110000) != 0)
  {
    return (*(v2 + 8 * ((167 * (*(a1 + 476) == ((STACK[0x340] + 643) ^ 0x626))) ^ (STACK[0x340] + 643))))();
  }

  v5 = STACK[0x4F8] - 256;
  STACK[0x260] = v5;
  STACK[0x4F8] = v5;
  return (STACK[0x408])();
}

void sub_22D322480()
{
  STACK[0x2C8] = STACK[0x288];
  STACK[0x478] = *(v1 + 8 * v0);
  JUMPOUT(0x22D318934);
}

uint64_t sub_22D3224E0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x9AB));

  return v3(v1);
}

void sub_22D322514(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x4C0]) = a2;
  LODWORD(STACK[0x34C]) = a1;
  LODWORD(STACK[0x438]) = v3;
  LODWORD(STACK[0x390]) = v2;
  LODWORD(STACK[0x42C]) = v4 + 64;
  JUMPOUT(0x22D311A50);
}

uint64_t sub_22D322710@<X0>(int a1@<W8>)
{
  v8 = v5 - v1;
  *(v8 + 91) = ((v1 + v3) ^ v4) * (v1 + v3 + 17);
  *(v8 + 90) = (v2 ^ (v1 + v3) ^ 8) * (v1 + v3 + 18);
  return (*(v7 + 8 * (((v1 == 90) * v6) ^ a1)))(0);
}

uint64_t sub_22D3227A8@<X0>(int a1@<W2>, int a2@<W3>, unsigned int a3@<W5>, int a4@<W8>)
{
  v7 = *(v5 + 48 * a4 + 36);
  v9 = v7 + a2 < (v4 ^ a3) && v7 != a1 + ((v4 + 882) ^ 5) - 1864;
  return (*(v6 + 8 * ((v4 + 882) ^ (2 * v9))))();
}

uint64_t sub_22D3227F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19)
{
  v25 = 143681137 * ((&a15 - 709854109 - 2 * (&a15 & 0xD5B07C63)) ^ 0x1176039);
  a17 = v24 - v25 + 187;
  LODWORD(a15) = (((2 * v21) & 0xEDBEF7F6) + 1504688063 + (v21 ^ 0xF6DF7F5E ^ (v24 - 513558182) & 0x1E9C44F7)) ^ v25;
  a16 = a13;
  (*(v23 + 8 * (v24 ^ 0xE8A)))(&a15);
  v26 = ((2 * (&a15 & 0x5E054410) - &a15 - 1577403409) ^ 0x70F89690) * v22;
  a18 = (v24 + 508) ^ v26;
  a19 = (v20 ^ 0xFFDFE1FE) + ((2 * v20) & 0xFFBFC3FC) - v26 + 2101125120;
  a15 = v19;
  a16 = a13;
  v27 = (*(v23 + 8 * (v24 + 622)))(&a15);
  return (*(v23 + 8 * ((461 * (a17 == -1261164275)) ^ v24)))(v27);
}

uint64_t sub_22D322960@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((1212 * (v5 == ((136 * (v3 ^ 0x33Cu)) ^ 0x440))) ^ (v3 - 341))))();
}

uint64_t sub_22D3229A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v13 = *(v11 + v9 * v10 + 36);
  v15 = v13 - 1925087724 > 552000786 || v13 - 1925087724 < a8;
  v16 = v13 != a7 + ((v8 - 488) | 0x20) + 40 - 592 && v15;
  return (*(v12 + 8 * ((2019 * v16) ^ v8)))();
}

uint64_t sub_22D322A04@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, unsigned int a5@<W8>)
{
  v14 = ((v13 >> (6 * (v12 ^ a1) - 60)) ^ (v7 + 509)) + (*(a2 + 4 * v5) ^ a5);
  v15 = v14 - ((5 * (v12 ^ 0x112u) + a3) & (2 * v14)) + a4;
  *(a2 + 4 * v8) = v15 ^ v9;
  *(a2 + 4 * v5) = HIDWORD(v15) ^ v11;
  return (*(v10 + 8 * (v12 ^ (1005 * (v6 + 1 == v5)))))();
}

void sub_22D322AE0(uint64_t a1)
{
  v1 = *(a1 + 16) + 143681137 * ((-2 - ((~a1 | 0xA95D22BC) + (a1 | 0x56A2DD43))) ^ 0x7DFA3EE6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22D322C08(uint64_t a1)
{
  v1 = 1785193651 * (a1 ^ 0x13DCEC20);
  v2 = *(a1 + 12) + v1;
  return (*(*(&off_28407CFD0 + (v2 ^ 0x1CB)) + (v2 ^ (32 * ((((v2 - 1240308176) ^ (((((*(a1 + 8) + v1) ^ 0x29F2AE26) - 703770150) ^ (((*(a1 + 8) + v1) ^ 0xBF8A30DC) + 1081462564) ^ (((*(a1 + 8) + v1) ^ 0x22ACB7F7) - 581744631)) + 886319373 < 0x80000064)) & 1) == 0))) - 1))();
}

void sub_22D322E90()
{
  v3 = 742307843 * ((v2 - 216) ^ 0x1E228D55);
  *(v2 - 208) = STACK[0x530];
  *(v2 - 216) = -473373760 - v3 + v0 + 26;
  *(v2 - 196) = 602092488 - v3;
  (*(v1 + 8 * (v0 + 2199)))(v2 - 216);
  JUMPOUT(0x22D31F660);
}

void sub_22D322F90(uint64_t a1)
{
  v1 = *(a1 + 16) - 1361651671 * ((2 * (a1 & 0xA46929BF) - a1 + 1536611904) ^ 0x88B426CC);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22D3230DC()
{
  v4 = STACK[0x3A0];
  v5 = 1082434553 * ((~((v3 - 216) | 0x4FDACFB9) + ((v3 - 216) & 0x4FDACFB9)) ^ 0x2B62C6CC);
  *(v3 - 176) = &STACK[0x524];
  *(v3 - 168) = v4;
  *(v3 - 184) = &STACK[0x374];
  *(v3 - 192) = v5 + v2 + 169;
  *(v3 - 204) = v5 + v0 - 530102559;
  *(v3 - 216) = &STACK[0x510];
  *(v3 - 200) = &STACK[0x394];
  v6 = (*(v1 + 8 * (v2 ^ 0x8BE)))(v3 - 216);
  return (*(v1 + 8 * ((1093 * (*(v3 - 208) == (v2 ^ 0xB4D42834 ^ (v2 + 281)))) ^ v2)))(v6);
}

uint64_t sub_22D3231D0()
{
  STACK[0x218] = v2;
  v3 = *(v0 + 8 * ((290 * (LODWORD(STACK[0x43C]) - 1657357197 < (((v1 - 1400) | 0x405) ^ 0xFFFFFBDD ^ (727 * (v1 ^ 0x619))))) ^ v1));
  STACK[0x210] = &STACK[0x5E0] + STACK[0x278];
  return v3();
}

uint64_t sub_22D323290()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28407CFD0 + (*(off_28407D240 + (*(off_28407D378 + (107 * ((qword_27D9FC1D8 - dword_27D9FC228) ^ 0xF9)) - 4) ^ 0xD6u) - 12) ^ (107 * ((qword_27D9FC1D8 - dword_27D9FC228) ^ 0xF9))) + 4);
  v1 = *(v0 - 4);
  v2 = *(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 - v1) ^ 0xF9)) ^ *(off_28407D240 + (*(off_28407D378 + (107 * ((qword_27D9FC1D8 - v1) ^ 0xF9)) - 4) ^ 0xD6u) - 12)) - 157);
  v3 = 1010482283 * ((*(v2 - 4) + v1) ^ &v7 ^ 0xABAF40B6402B16F9);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  LOBYTE(v3) = 107 * ((v3 - *(v0 - 4)) ^ 0xF9);
  v8 = *(&off_28407CFD0 + (*(off_28407D038 + (*(off_28407D350 + v3 - 12) ^ 0xA4u) - 8) ^ v3) + 48);
  v9 = (1785193651 * ((&v8 & 0x51F9934E | ~(&v8 | 0x51F9934E)) ^ 0xBDDA8091)) ^ 0x2C2;
  v4 = *(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 - dword_27D9FC228) ^ 0xF9)) ^ byte_22D5AF1D0[byte_22D5A9F30[(107 * ((qword_27D9FC1D8 - dword_27D9FC228) ^ 0xF9))] ^ 0xCD]) - 1) - 8;
  (*&v4[8 * ((107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9)) ^ *(off_28407D038 + (*(off_28407D350 + (107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9)) - 12) ^ 0xF6u) - 8)) + 17232])(&v8);
  v8 = *(&off_28407CFD0 + (*(off_28407D1B8 + (*(off_28407D120 + (107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9)) - 12) ^ 0xADu) - 4) ^ (107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9))) - 220);
  v9 = (1785193651 * ((912259484 - (&v8 | 0x365FF99C) + (&v8 | 0xC9A00663)) ^ 0xDA7CEA43)) ^ 0x2C2;
  (*&v4[8 * ((107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9)) ^ *(off_28407D1B8 + (*(off_28407D120 + (107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9)) - 12) ^ 0xFCu) - 4)) + 17448])(&v8);
  v5 = 2066391179 * ((((2 * &v8) | 0x8383177C) - &v8 + 1044280386) ^ 0x6EE609A6);
  LOBYTE(v8) = v5 ^ 0x2A;
  HIDWORD(v8) = v5 ^ 0x507;
  LOBYTE(v5) = 107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9);
  return (*&v4[8 * (*(off_28407D190 + (*(off_28407D538 + v5 - 12) ^ 0xB8u) - 8) ^ v5) + 17616])(&v8);
}

uint64_t sub_22D323640(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v6 < v8;
  if (v11 == v7 + 1 > (a6 + 2))
  {
    v11 = v9 + v7 + 2 < v6;
  }

  return (*(v10 + 8 * ((60 * !v11) ^ a1)))();
}

void sub_22D323790(uint64_t a1)
{
  v1 = 1785193651 * ((((2 * a1) | 0xE946973A) - a1 + 190624867) ^ 0xE77FA7BD);
  v2 = *(a1 + 8) + v1;
  __asm { BRAA            X14, X17 }
}

void sub_22D324058(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) - 56353480;
  v3 = *(a1 + 12) - v1 - 870039588;
  v4 = v2 < 0xF54C249;
  v5 = v2 > v3;
  if (v3 < 0xF54C249 != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_22D324134()
{
  v6 = 1082434553 * ((((v5 - 144) | 0x4B6FCB25) - ((v5 - 144) & 0x4B6FCB25)) ^ 0xD0283DAF);
  *(v5 - 120) = v0 - v6 - 957784556 + ((v3 - 1141) | 0x120);
  *(v5 - 116) = (v3 - 843) ^ v6;
  *(v5 - 136) = v2;
  *(v5 - 128) = v4;
  (*(v1 + 8 * (v3 + 1074)))(v5 - 144);
  result = v10;
  *v9 = v8;
  *(v10 + 8) = -1261164275;
  return result;
}

uint64_t sub_22D324204@<X0>(int a1@<W8>)
{
  v10 = v5 >= 0x10;
  v8 = ((25 * (a1 ^ 0x630u) - 435) ^ (11 * (a1 ^ 0x6F6u))) & (v4 + 15);
  v9 = -v7 - v4;
  v10 = v10 && (v9 + v1 + v8 + 1) >= 0x10;
  v11 = v10 && (v9 + v2 + v8 + 6) >= 0x10;
  v12 = v9 + v3 + v8 + 3;
  v14 = !v11 || v12 < 0x10;
  return (*(v6 + 8 * ((v14 | (8 * v14)) ^ a1)))(v4);
}

uint64_t sub_22D324638@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X4>, int a4@<W8>)
{
  v8 = a3 + v6 - v4;
  v9 = *(v8 - 31);
  v10 = a2 + v6 - v4;
  v11.i64[0] = 0x6464646464646464;
  v11.i64[1] = 0x6464646464646464;
  v12.i64[0] = 0x3232323232323232;
  v12.i64[1] = 0x3232323232323232;
  *(v10 - 15) = vaddq_s8(vsubq_s8(*(v8 - 15), vandq_s8(vaddq_s8(*(v8 - 15), *(v8 - 15)), v11)), v12);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v11)), v12);
  return (*(v7 + 8 * (((v4 == 96) * (((a4 + 366) | v5) ^ a1)) ^ a4)))();
}

uint64_t sub_22D324700@<X0>(char a1@<W1>, char a2@<W7>, uint64_t a3@<X8>)
{
  v6 = STACK[0x518];
  v7 = *(a3 + 72);
  *v6 = v7 ^ 0x4E;
  v6[1] = (BYTE1(v7) ^ 0x51) + ~(2 * ((BYTE1(v7) ^ 0x51) & 0x3A ^ BYTE1(v7) & 8)) + 51;
  v6[2] = (v4 ^ BYTE2(v7)) - (a2 & (2 * (v4 ^ BYTE2(v7)))) + 50;
  v6[3] = (HIBYTE(v7) ^ a1) - 2 * ((HIBYTE(v7) ^ a1) & 0x33 ^ HIBYTE(v7) & 1) + 50;
  return (*(v5 + 8 * ((3046 * (*(a3 + 92) > 4u)) ^ (v3 - 1027))))();
}

uint64_t sub_22D324818@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v12 = (v8 ^ 0x23DC7716) == -1;
  v13 = ((2 * (&a3 & 0x4B36CC30) - &a3 - 1261882417) ^ 0xA715DFEF) * a1;
  a6 = v7 - v13;
  a7 = v11 - v13 - 1234;
  a3 = (((v8 ^ 0x23DC7716) + 1) ^ 0xDF69F4FF) - v13 + (((309 * (v11 ^ 0x629) + 885411093) & 0xCB39B2FB ^ 0xBED3EB84) & (2 * ((v8 ^ 0x23DC7716) + 1))) + 1878974302;
  a4 = &a2;
  a5 = v9;
  v14 = (*(v10 + 8 * (v11 + 694)))(&a3);
  v15 = *(v9 + 24) != -1261164275 || v12;
  return (*(v10 + 8 * ((23 * v15) ^ v11)))(v14);
}

uint64_t sub_22D324958()
{
  v3 = (*(v1 + 8 * (v0 + 1275)))(v2);
  STACK[0x4F8] = STACK[0x260] - 1712;
  LODWORD(STACK[0x52C]) = 1261138649;
  return (*(v1 + 8 * (((STACK[0x3D0] == 0) * (v0 - 152 + ((v0 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v0 - 193))))(v3);
}

void sub_22D3249E8()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28407CFD0 + (*(off_28407D038 + (*(off_28407D350 + (107 * ((qword_27D9FC1D8 + dword_27D9FC230) ^ 0xF9)) - 12) ^ 0x3Au) - 8) ^ (107 * ((qword_27D9FC1D8 + dword_27D9FC230) ^ 0xF9))) - 116);
  v1 = off_28407D120 - 12;
  v2 = off_28407D1B8 - 4;
  v3 = *(&off_28407CFD0 + (*(off_28407D1B8 + (*(off_28407D120 + (107 * ((qword_27D9FC1D8 - *v0) ^ 0xF9)) - 12) ^ 0xFCu) - 4) ^ (107 * ((qword_27D9FC1D8 - *v0) ^ 0xF9))) - 76);
  v4 = *(v3 - 4) - *v0 - &v9;
  v5 = 1010482283 * (v4 + 0x5450BF49BFD4E907);
  v6 = 1010482283 * (v4 ^ 0xABAF40B6402B16F9);
  *v0 = v5;
  *(v3 - 4) = v6;
  LOBYTE(v6) = 107 * ((v6 + *v0) ^ 0xF9);
  **(&off_28407CFD0 + (*(off_28407D190 + (*(off_28407D538 + v6 - 12) ^ 1u) - 8) ^ v6) - 70) = -1261164275;
  LOBYTE(v6) = 107 * ((*(v3 - 4) + *v0) ^ 0xF9);
  v7 = *(&off_28407CFD0 + ((107 * (dword_27D9FC230 ^ 0xF9 ^ qword_27D9FC1D8)) ^ byte_22D5B2A40[byte_22D5AEFD0[(107 * (dword_27D9FC230 ^ 0xF9 ^ qword_27D9FC1D8))] ^ 0xBD]) + 66) - 8;
  v8 = (*&v7[8 * (*(off_28407D240 + (*(off_28407D378 + v6 - 4) ^ 0xD6u) - 12) ^ v6) + 15896])(512, 0x100004077774924);
  *(*(&off_28407CFD0 + ((107 * ((*(v3 - 4) + *v0) ^ 0xF9)) ^ v2[v1[(107 * ((*(v3 - 4) + *v0) ^ 0xF9))] ^ 0x1A]) + 66) - 4) = v8;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D324F8C@<X0>(uint64_t a1@<X8>)
{
  v8 = v5 - v1;
  *(v8 + 91) = ((v1 + v3) ^ v4) * (v1 + v3 + 17);
  *(v8 + 90) = ((v1 + v3) ^ 0xBB) * (v1 + v3 + 18);
  return (*(v7 + 8 * (((v1 + a1 == 118) * v6) ^ v2)))();
}

uint64_t sub_22D32501C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = *(v8 + 48 * v5 + 36);
  v11 = v9 != a3 && v9 + a4 < ((v4 + 138060) | (v7 + 3593)) + 1475724912;
  return (*(v6 + 8 * ((44 * v11) ^ v4)))();
}

uint64_t sub_22D325088@<X0>(uint64_t a1@<X8>)
{
  v8 = v5 + ((v3 - 398) | 0x200) - 516;
  *(*(v1 + 8) + 4 * (v5 + v2)) = (v7 + v4) ^ v6;
  *(v1 + 4) = v8;
  v9 = v8 + v2;
  if (v8 + v2 < 0)
  {
    v9 = -v9;
  }

  return (*(a1 + 8 * ((494 * (((v9 ^ 0xEFFFFFDE) + ((v9 << (((v3 + 102) & 0xEF) + 24)) & 0xDFFFFFBC) + 268435489) > ((((v3 - 398) | 0x200) - 820549388) & 0x30E895EF) - 234)) ^ (((v3 - 398) | 0x200) - 820549388) & 0x30E895EFu)))();
}

uint64_t sub_22D3253DC@<X0>(int a1@<W8>)
{
  v6 = 6 * (a1 ^ 0x1A9);
  (*(v1 + 8 * (a1 ^ 0x923)))(*v8, v4);
  *(v5 - 216) = (v3 + v6 + 343) ^ (1564307779 * ((2 * ((v5 - 216) & 0x390604D0) - (v5 - 216) + 1190787885) ^ 0xD1F4373E));
  result = (*(v1 + 8 * (v6 ^ 0x955)))(v5 - 216);
  *(v2 + 32) = v9;
  return result;
}

uint64_t sub_22D325EEC@<X0>(uint64_t a1@<X8>)
{
  v4 = vdupq_n_s32(0x46732821u);
  v5 = (&STACK[0x240] + 4 * a1);
  *v5 = v4;
  v5[1] = v4;
  return (*(v3 + 8 * ((3861 * (((v1 - 671360770) & 0x2804269B ^ 0x482) == (v2 & 0xFFFFFFFFFFFFFFF8))) ^ (v1 + 642))))();
}

uint64_t sub_22D326310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  *(*(a13 + 96) + 504) = v35 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v38 = 742307843 * ((v37 - 160) ^ 0x1E228D55);
  *(v37 - 160) = -473373664 - v38;
  *(v37 - 140) = 602092488 - v38;
  STACK[0x2C8] = &a26;
  v39 = (*(v36 + 18152))(v37 - 160);
  return (*(v36 + 8 * ((22 * (a15 - 1657355370 + (a35 & 0x3Fu) + 157 < 0xFFFFFFC0)) ^ 0x306u)))(v39);
}

uint64_t sub_22D326480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (v8 <= v9)
  {
    v8 = v9;
  }

  return (*(v10 + 8 * (((v8 <= 106 * (a6 ^ 0x2F3u) + a8) * ((a6 + 1215209860) & 0xB7915FA6 ^ 0x423)) ^ a6)))(a1, a2, a3, 0);
}

uint64_t sub_22D3264DC@<X0>(char a1@<W3>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5)
{
  v8 = (a5 + a2);
  v9 = vaddq_s8(vaddq_s8(v7[1], a4), vmvnq_s8(vandq_s8(vaddq_s8(v7[1], v7[1]), a3)));
  v8[-1] = vaddq_s8(vaddq_s8(*v7, a4), vmvnq_s8(vandq_s8(vaddq_s8(*v7, *v7), a3)));
  *v8 = v9;
  return (*(v6 + 8 * ((((a1 & 0x60) == 32) * (((v5 - 353) | 0x18) ^ 0x81)) ^ v5)))();
}

uint64_t sub_22D32660C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_22D326634@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10.val[0].i64[0] = (v5 - v6 - 1) & 0xF;
  v10.val[0].i64[1] = (v5 - v6 + 14) & 0xF;
  v10.val[1].i64[0] = (v5 - v6 + 13) & 0xF;
  v10.val[1].i64[1] = (v5 - v6 + 12) & 0xF;
  v10.val[2].i64[0] = (v5 - v6 + 11) & 0xF;
  v10.val[2].i64[1] = (v5 - v6 + 10) & 0xF;
  v10.val[3].i64[0] = (v5 - v6 + (((a1 - 83) | 2) ^ 0xAA)) & 0xF;
  v10.val[3].i64[1] = (v5 - v6) & 0xF ^ 8;
  *(v7 + -8 - v6 + v5) = veor_s8(veor_s8(veor_s8(*(v4 + v10.val[0].i64[0] - 7), *(a2 + -8 - v6 + v5)), veor_s8(*(v2 + v10.val[0].i64[0] - 7), *(v3 + v10.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v10, xmmword_22D5B62E0), 0x7575757575757575)));
  return (*(v8 + 8 * ((82 * (8 - (v5 & 0x18) == -v6)) ^ a1)))(xmmword_22D5B62E0);
}

uint64_t sub_22D3268BC(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = -18;
  }

  else
  {
    v2 = -20;
  }

  *(a1 + 88) = ((**(a2 + 8) != 0) ^ 0x7F) + v2;
  return 0;
}

uint64_t sub_22D326934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(a12 + 16) = -v17;
  v23 = 2066391179 * ((v22 - 407170079 - 2 * ((v22 - 136) & 0xE7BB1469)) ^ 0x489C9671);
  *(v22 - 136) = v21;
  *(v22 - 128) = v23 + v20 + 1468;
  *(v22 - 124) = v23 + 1068377366;
  (*(v19 + 8 * (v20 + 1871)))(v22 - 136);
  v24 = 1785193651 * ((v22 - 136) ^ 0x13DCEC20);
  *(v22 - 128) = v20 - v24 + 764;
  *(v22 - 124) = ((v18 << 6) & 0xFF3B16C0) - v24 + ((32 * v18) ^ 0xFF9D8B74) + 1862237852;
  *(v22 - 136) = v21;
  (*(v19 + 8 * (v20 ^ 0x967)))(v22 - 136);
  *(v22 - 136) = &a17;
  *(v22 - 128) = a16;
  *(v22 - 120) = (v20 + 1362) ^ (1564307779 * (((v22 - 136) & 0xAFD64741 | ~((v22 - 136) | 0xAFD64741)) ^ 0xC72474AD));
  (*(v19 + 8 * (v20 ^ 0x93F)))(v22 - 136);
  *(v22 - 120) = v21;
  *(v22 - 136) = a16;
  *(v22 - 128) = v20 - 143681137 * ((v22 - 136) ^ 0xD4A71C5A) + 867;
  v25 = (*(v19 + 8 * (v20 + 1811)))(v22 - 136);
  return (*(v19 + 8 * (((*(v22 - 112) > 0x43A7A85Fu) * (((v20 - 86) ^ 0x47F) - 1261)) ^ v20)))(v25);
}

uint64_t sub_22D326B48(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42)
{
  if (BYTE4(a36) == 1)
  {
    v48 = a3 + a4 + 828;
    BYTE4(a31) = (((a33 - ((2 * a33) & 0xA) + 12) << ((a3 + a4 + 60) ^ 0xB4)) - 56) ^ 0x1A;
    BYTE5(a31) = (a33 >> 5) ^ 0x32;
    BYTE6(a31) = (a33 >> 13) ^ 0x32;
    HIBYTE(a31) = (a33 >> 21) ^ 0x32;
    LOBYTE(a32) = ((__PAIR64__(HIDWORD(a32), a33) >> 29) - ((2 * (__PAIR64__(HIDWORD(a32), a33) >> 29)) & 0x72) - 71) ^ 0x8B;
    BYTE1(a32) = (HIDWORD(a32) >> 5) ^ 0x32;
    BYTE2(a32) = (HIDWORD(a32) >> 13) ^ 0x32;
    v49 = (HIDWORD(a32) >> 21) ^ 0x32;
  }

  else
  {
    v47 = 2108723143;
    if (BYTE4(a36) != 2)
    {
      goto LABEL_6;
    }

    v48 = (a4 + 266644528) & 0x726AC7BF;
    BYTE4(a31) = (HIDWORD(a32) >> 21) - ((HIDWORD(a32) >> 20) & 0x64) + 50;
    BYTE5(a31) = (HIDWORD(a32) >> ((a4 + 48) & 0xBF ^ 0xBA)) - ((2 * (HIDWORD(a32) >> ((a4 + 48) & 0xBF ^ 0xBA))) & 0x64) + 50;
    BYTE6(a31) = (HIDWORD(a32) >> 5) - ((HIDWORD(a32) >> 4) & 0x64) + 50;
    HIBYTE(a31) = (__PAIR64__(HIDWORD(a32), a33) >> 29) - ((2 * (__PAIR64__(HIDWORD(a32), a33) >> 29)) & 0x64) + 50;
    LOBYTE(a32) = (a33 >> 21) - ((a33 >> 20) & 0x64) + 50;
    BYTE1(a32) = (a33 >> 13) - ((a33 >> 12) & 0x64) + 50;
    BYTE2(a32) = (a33 >> 5) - ((a33 >> 4) & 0x64) + 50;
    LOBYTE(v49) = (8 * (a33 - ((2 * a33) & 0x14)) + 80) ^ 0x62;
  }

  v47 = (v48 + 1166051344) | 0x38300400;
  BYTE3(a32) = v49;
LABEL_6:
  LODWORD(v115) = 26908359;
  v112 = vdupq_n_s32(0x34D4291Du);
  v113.i64[0] = 0x3232323232323232;
  v113.i64[1] = 0x3232323232323232;
  v117 = v42 - 16;
  v114 = vdupq_n_s32(0xB4D4290D);
  v116 = *(v43 + 8 * (a3 + v47 - 32));
  if (BYTE4(a36) == 2)
  {
    v118 = vld4q_s8(&a24 + 4);
    v96 = HIDWORD(a35);
    v97 = veorq_s8(v118.val[0], v113);
    v98 = vmovl_high_u8(v97);
    v99 = vmovl_u8(*v97.i8);
    v100 = veorq_s8(v118.val[1], v113);
    _Q21 = vmovl_high_u8(v100);
    _Q20 = vmovl_u8(*v100.i8);
    v103 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v104 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v105 = veorq_s8(v118.val[2], v113);
    v106 = vmovl_u8(*v105.i8);
    v107 = vmovl_high_u8(v105);
    v118.val[0] = veorq_s8(v118.val[3], v113);
    v118.val[1] = vmovl_u8(*v118.val[0].i8);
    v118.val[2] = vmovl_u16(*v118.val[1].i8);
    v118.val[1] = vmovl_high_u16(v118.val[1]);
    v118.val[0] = vmovl_high_u8(v118.val[0]);
    v118.val[3] = vmovl_u16(*v118.val[0].i8);
    v118.val[0] = vmovl_high_u16(v118.val[0]);
    v108 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v107, 8uLL)), vshlq_n_s32(vmovl_high_u16(v98), 0x18uLL)), v118.val[0]);
    v109 = vorrq_s8(vorrq_s8(vorrq_s8(v104, vshll_n_u16(*v107.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v98.i8), 0x18uLL)), v118.val[3]);
    v110 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v106, 8uLL)), vshlq_n_s32(vmovl_high_u16(v99), 0x18uLL)), v118.val[1]);
    v111 = vorrq_s8(vorrq_s8(vorrq_s8(v103, vshll_n_u16(*v106.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v99.i8), 0x18uLL)), v118.val[2]);
    v118.val[0] = veorq_s8(vandq_s8(v108, v112), (*v118.val & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v118.val[3] = veorq_s8(vandq_s8(v109, v112), (*&v118.val[3] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v118.val[1] = veorq_s8(vandq_s8(v110, v112), (*&v118.val[1] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v118.val[2] = veorq_s8(vandq_s8(v111, v112), (*&v118.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v118.val[0] = vaddq_s32(vsubq_s32(v108, vaddq_s32(v118.val[0], v118.val[0])), v114);
    v118.val[3] = vaddq_s32(vsubq_s32(v109, vaddq_s32(v118.val[3], v118.val[3])), v114);
    v118.val[1] = vaddq_s32(vsubq_s32(v110, vaddq_s32(v118.val[1], v118.val[1])), v114);
    v118.val[2] = vaddq_s32(vsubq_s32(v111, vaddq_s32(v118.val[2], v118.val[2])), v114);
    LODWORD(a39) = v118.val[2].i32[0];
    *(&a39 + 4) = vextq_s8(v118.val[2], v118.val[1], 4uLL);
    *(&a40 + 4) = vextq_s8(v118.val[1], v118.val[3], 4uLL);
    *(&a41 + 4) = vextq_s8(v118.val[3], v118.val[0], 4uLL);
    *(&a42 + 4) = vextq_s8(v118.val[0], v118.val[0], 4uLL).u64[0];
    HIDWORD(a42) = v118.val[0].i32[3];
    *(&a39 + v46 + 2027230958) = v45 ^ __ROR4__(*(&a35 + v46 + 2027230958) ^ *(&a37 + v46 + 2027230959) ^ *(&a31 + v46 + 2027230958) ^ *(&a39 + ((a3 + a4 + 936) ^ (v46 + 1045)) + 2027230958), 31);
    return (*(v43 + 8 * (((v42 != 2027230895) | (8 * (v42 != 2027230895))) ^ (a3 + a4 + 2043))))(v96);
  }

  else
  {
    if (BYTE4(a36) != 1)
    {
      JUMPOUT(0x22D335B50);
    }

    v119 = vld4q_s8(&a24 + 4);
    v50 = a3 + a4 + 378;
    v51 = veorq_s8(v119.val[0], v113);
    v52 = vmovl_high_u8(v51);
    v53 = vmovl_high_u16(v52);
    v54 = vmovl_u16(*v52.i8);
    v55 = vmovl_u8(*v51.i8);
    v56 = vmovl_high_u16(v55);
    v57 = vmovl_u16(*v55.i8);
    v58 = veorq_s8(v119.val[1], v113);
    v59 = vmovl_u8(*v58.i8);
    v60 = vmovl_high_u8(v58);
    v61 = veorq_s8(v119.val[2], v113);
    _Q25 = vmovl_u8(*v61.i8);
    _Q24 = vmovl_high_u8(v61);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v119.val[0] = veorq_s8(v119.val[3], v113);
    v119.val[1] = vmovl_u8(*v119.val[0].i8);
    v119.val[2] = vmovl_u16(*v119.val[1].i8);
    v119.val[0] = vmovl_high_u8(v119.val[0]);
    v119.val[3] = vmovl_u16(*v119.val[0].i8);
    v119.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v119.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v60, 8uLL), v53));
    v119.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v119.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v60.i8, 8uLL), v54));
    v119.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v119.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v59, 8uLL), v56));
    v119.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v119.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v59.i8, 8uLL), v57));
    v70 = veorq_s8(vandq_s8(v119.val[0], v112), (*&v53 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v71 = veorq_s8(vandq_s8(v119.val[3], v112), (*&v54 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v72 = veorq_s8(vandq_s8(v119.val[1], v112), (*&v56 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v73 = veorq_s8(vandq_s8(v119.val[2], v112), (*&v57 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v74 = vaddq_s32(vsubq_s32(v119.val[0], vaddq_s32(v70, v70)), v114);
    v75 = vaddq_s32(vsubq_s32(v119.val[3], vaddq_s32(v71, v71)), v114);
    v76 = vaddq_s32(vsubq_s32(v119.val[1], vaddq_s32(v72, v72)), v114);
    v77 = vaddq_s32(vsubq_s32(v119.val[2], vaddq_s32(v73, v73)), v114);
    LODWORD(a39) = v77.i32[0];
    *(&a39 + 4) = vextq_s8(v77, v76, 4uLL);
    *(&a40 + 4) = vextq_s8(v76, v75, 4uLL);
    *(&a41 + 4) = vextq_s8(v75, v74, 4uLL);
    HIDWORD(a42) = v74.i32[3];
    *(&a42 + 4) = vextq_s8(v74, v74, 4uLL).u64[0];
    v78 = (HIDWORD(a34) & 0x9EB8A64E ^ 0x1620004C ^ (a34 ^ 0xC8DDF732) & (HIDWORD(a34) ^ v44) | a34 & 0xE25192A9 ^ 0xA0108281 ^ (a34 ^ (((v50 - 498) | 0x204) - 1449481092)) & (a35 ^ 0xB434C3D5)) + (HIDWORD(a33) ^ v44) + *(*(&off_28407CFD0 + v50 - 424) + v117 + v46) + (*(&a39 + (*(*(&off_28407CFD0 + (v50 ^ 0x1AC)) + v117 + v46 - 8) - 45)) ^ v45);
    v79 = (v78 ^ 0xBDEEFEF4) & (2 * (v78 & 0xBDECFCE6)) ^ v78 & 0xBDECFCE6;
    v80 = ((2 * (v78 ^ 0xAC373E34)) ^ 0x23B785A4) & (v78 ^ 0xAC373E34) ^ (2 * (v78 ^ 0xAC373E34)) & 0x11DBC2D2;
    v81 = v80 ^ 0x10484252;
    v82 = (v80 ^ 0x1938080) & (4 * v79) ^ v79;
    v83 = ((4 * v81) ^ 0x476F0B48) & v81 ^ (4 * v81) & 0x11DBC2D0;
    v84 = (v83 ^ 0x14B0240) & (16 * v82) ^ v82;
    v85 = ((16 * (v83 ^ 0x1090C092)) ^ 0x1DBC2D20) & (v83 ^ 0x1090C092) ^ (16 * (v83 ^ 0x1090C092)) & 0x11DBC2D0;
    v86 = v84 ^ 0x11DBC2D2 ^ (v85 ^ 0x11980000) & (v84 << 8);
    v87 = (v86 << 16) & 0x11DB0000 ^ v86 ^ ((v86 << 16) ^ 0x42D20000) & (((v85 ^ 0x43C2D2) << 8) & 0x11DB0000 ^ 0x190000 ^ (((v85 ^ 0x43C2D2) << 8) ^ 0x5BC20000) & (v85 ^ 0x43C2D2));
    v88 = *(*(&off_28407CFD0 + v50 - 456) + v117 + v46 - 12);
    LOBYTE(v81) = (((v88 - 111) ^ 0x51) + 14) ^ (v88 - 111) ^ (((v88 - 111) ^ 0x4F) + 20) ^ (((v88 - 111) ^ 0x42) + 31) ^ (18 - v88);
    v89 = (((a34 ^ 0x303C68BE) - 809265342) ^ ((a34 ^ 0x179DF962) - 396228962) ^ ((a34 ^ 0x71C4C0A0) - 1908719776)) - 1911178823 + (((v78 ^ (2 * v87) ^ 0x9FFF7942) << (v81 & 0x1E ^ 2) << ((v81 & 1) == 0)) | ((v78 ^ (2 * v87) ^ 0x9FFF7942) >> (50 - v88)));
    v90 = (v89 ^ 0x8E2F9792) & (2 * (v89 & 0xC84F97C3)) ^ v89 & 0xC84F97C3;
    v91 = ((2 * (v89 ^ 0x8E3F9B14)) ^ 0x8CE019AE) & (v89 ^ 0x8E3F9B14) ^ (2 * (v89 ^ 0x8E3F9B14)) & 0x46700CD6;
    v92 = v91 ^ 0x42100451;
    v93 = (v91 ^ 0x600804) & (4 * v90) ^ v90;
    v94 = ((4 * v92) ^ 0x19C0335C) & v92 ^ (4 * v92) & 0x46700CD4;
    HIDWORD(v115) = HIDWORD(a14) - 1630446790;
    return (*(v43 + 8 * v50))(1010, a34, *(v43 + 8 * v50), v42 - 15, 2027230958, a6, (((v94 ^ 0x400050) & (16 * v93) ^ v93 ^ 0x46700CD7 ^ (((16 * (v94 ^ 0x46300C83)) ^ 0x6700CD70) & (v94 ^ 0x46300C83) ^ (16 * (v94 ^ 0x46300C83)) & 0x46700CD0 ^ 0x46000C00) & (((v94 ^ 0x400050) & (16 * v93) ^ v93) << 8)) << 16) ^ 0xCD70000u, 1181748432, a9, a10, a11, a12, a13, a14, a15, a11 + a12, v115, v116, v42 - 16, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }
}

void sub_22D326E04(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 563552686;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D326ED0(_DWORD *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 843532609 * ((((2 * a1) | 0x7C0848CA) - a1 + 1107024795) ^ 0xE24970E0);
  v3 = a1[10] ^ v2;
  v4 = a1[11] ^ v2;
  v9 = v3 + 1037613739 * ((&v9 & 0xCF13DD99 | ~(&v9 | 0xCF13DD99)) ^ 0xE1EE0F19) + 1084731835;
  v5 = *(&off_28407CFD0 + (v3 ^ 0x76625E83)) - 8;
  result = (*&v5[8 * (v3 ^ 0x76625615)])(&v9);
  if (v4 > 1615399632)
  {
    if (v4 == 1900612304)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1615399633)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = (*&v5[8 * v3 - 0x3B312B268])(((v3 + 1243828026) & 0x3F7A536Fu) - 1657355514 + *(*(&off_28407CFD0 + (v3 ^ 0x76625EC2)) + 6 * v7 + 4), 0x100004077774924) != 0;
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1615399629)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1615399632)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[12] = 1261138609;
  return result;
}

uint64_t sub_22D327164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = &a17;
  *(v21 - 136) = a16;
  *(v21 - 128) = v17 - ((2 * (((v21 - 136) ^ 0x21DDEFBE) & 0x5AC9821C) - ((v21 - 136) ^ 0x21DDEFBE) - 1523155486) ^ 0x504C8E06) * v20 + 1094;
  v22 = (*(v19 + 8 * (v17 + 2038)))(v21 - 136);
  return (*(v19 + 8 * ((476 * (*(v21 - 112) > (v17 ^ 0x16D ^ (v18 + 361)))) ^ v17)))(v22);
}

uint64_t sub_22D327274@<X0>(int a1@<W8>)
{
  v7 = v2 + 16;
  v8 = (v2 - 1278442705) & 0x4C337FF4;
  v9 = STACK[0x4E0];
  *(v9 + 392) = v1;
  *(v9 + 396) = STACK[0x374];
  *(v9 + 400) = STACK[0x510];
  *(v9 + 408) = 1368544279 - v4 + LODWORD(STACK[0x524]);
  *(v9 + 416) = v6 + ((v2 - 1445166827) & 0x56237EEA ^ 0xED4F5A6E) + v4;
  v10 = (*(v3 + 48 * a1 + 8))(STACK[0x2C8], v9 + 392);
  return (*(v5 + 8 * ((1156 * (v8 - 1261164275 + v10 - ((2 * v10) & 0x69A8521A) == -1261163343)) ^ v7)))();
}

uint64_t sub_22D3277DC(uint64_t a1, int a2, int a3)
{
  v6 = ((2 * a3) ^ 0xB4F1E46A) + v3;
  v7 = a2 + v5 > ((a3 + 1844976559) & 0x9207DD79) + 131958799;
  if (v7 == v6 < 0xF82276B7)
  {
    v7 = a2 + v5 - 131959113 > v6;
  }

  return (*(v4 + 8 * ((84 * !v7) ^ a3)))();
}

uint64_t sub_22D327910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43, uint64_t a44, int a45, char a46)
{
  v51 = *v49;
  memset((v50 - 192), 50, 16);
  v52 = 1037613739 * (((v50 - 176) & 0xC9E43C28 | ~((v50 - 176) | 0xC9E43C28)) ^ 0xE719EEA8);
  *(v50 - 160) = v51;
  *(v50 - 152) = &a46;
  *(v50 - 176) = v52 + 577928687;
  *(v50 - 136) = &a43;
  *(v50 - 144) = (v46 + 1588) ^ v52;
  *(v50 - 168) = v50 - 192;
  v53 = (*(v47 + 8 * (v46 ^ 0x899)))(v50 - 176);
  return (*(v47 + 8 * ((1830 * (*(v50 - 140) == v48 + ((v46 + 754640457) & 0x13051BCF) - 588)) ^ v46)))(v53);
}

uint64_t sub_22D3279F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x52C]) = v8;
  STACK[0x4F8] = STACK[0x278];
  LODWORD(STACK[0x504]) = v8;
  return (*(v7 + 8 * (((v8 == a6) * ((v6 - 801) ^ 0x617)) ^ (v6 - 803))))(a1, a2, a3, a4, 1261138644);
}

uint64_t sub_22D327B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35, uint64_t a36, uint64_t a37, int a38)
{
  v42 = a8 ^ 0x1DA;
  v43 = __ROR8__((((a6 >> (((a8 ^ 0xDA) - 64) & 0xF7 ^ 0xD3u)) ^ 0xD51CC9FD8FEE033DLL) & ((a6 << 27) ^ 0x5C7938C7F7FFFFFFLL) | (((a8 ^ 0x1DAu) + 125886912) ^ 0x2AE336027780E44CLL) & (a6 << 27)) ^ 0x75B8793A887A889ELL, 27);
  v44 = v43 ^ v38 ^ 0xFC24DE1AF118E910;
  v45 = a2 ^ a36 ^ v41;
  v46 = (v44 & 0xE370D22389E963F8 ^ (v43 ^ v40 ^ 0xBE1809339C11E6CBLL) & (v43 ^ v38 ^ 0x9DB354A2D1EB9C7DLL) ^ 0x9EEF7DDFFF1E9E97) - (v43 ^ v40 ^ 0x3CFF51A8350BF05ELL ^ v44);
  v47 = (v43 ^ v40 ^ 0xE05D1F65A59055A1) & (a2 ^ a36 ^ 0xA018715D8E86E82FLL);
  v48 = (a2 ^ a36) & 0xBD35C475B068D092;
  v49 = v45 & 0xE395E631ECE3821ELL ^ (v45 ^ 0xC28210BF701425CBLL) & (a2 ^ a36 ^ 0xBC7268939D9A95CELL) ^ 0x53CB19A0E1104E6DLL ^ v43 ^ v40;
  v50 = v43 & 0x250DA82BBCFED4D6 ^ v45 ^ (v43 ^ 0x282C5FE8B6EFD3A2) & (v38 ^ 0x6F6D5C9E240564F6);
  v51 = v49 ^ a2 ^ a36;
  v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
  v53 = v44 ^ v48 ^ v47;
  v54 = (v45 ^ 0x3D7DEF408FEBDA34) & (v38 ^ 0x5830F6FEB2631256) ^ v45 & 0xEDAFFDB4D5675D89;
  v55 = v53 ^ v49;
  v56 = v53 ^ v49 ^ 0x79D8A72CA7000810;
  v57 = v51 & 1;
  if ((v57 & v54) + 0x1B15E1F1D6857FA7 - 2 * (v57 & v54) != 0x1B15E1F1D6857FA7)
  {
    v57 = -v57;
  }

  v58 = (v57 + (v54 ^ 0x2D2DED0085635800)) ^ v52;
  v59 = (v58 ^ 0x5E2CE3858ED8BD4DLL ^ (8 * (v58 ^ 0x5E2CE3858ED8BD4DLL))) & 0x809545084A0D0A1ALL ^ (v58 >> 39) ^ (v58 ^ 0x5E2CE3858ED8BD4DLL ^ (8 * (v58 ^ 0x5E2CE3858ED8BD4DLL)) ^ 0x20A12F204B23163) & ((v58 >> 61) ^ 0x7F6ABAF7B5F2F5E5) ^ (((v58 ^ 1) & (v58 >> 61) ^ 0x603B8202C80A8B91) & (((v58 ^ 0x5E2CE3858ED8BD4DLL) << 25) ^ 0x5E3975D510DF9F97) | ((v58 ^ 0x5E2CE3858ED8BD4DLL) << 25) & 0x9FC47DFD36000000);
  v60 = v50 ^ 0xE3DD6ACC6D6A5BEBLL ^ (v50 >> 1) ^ (((v50 >> 6) ^ 0x727DC59BA3549D42) & 0x71FC6A90E5FD3DFBLL ^ (((v50 ^ 0xE3DD6ACC6D6A5BEBLL) << 63) | 0x402800804D0DA9) | ((v50 >> 6) ^ 0x727DC59BA3549D42) & 0x203956F1A02C204) ^ ((v59 ^ 0x8A1178A505C68904) + ((v50 << 58) ^ 0x2800000000000000) - 2 * ((v59 ^ 0x8A1178A505C68904) & ((v50 << 58) ^ 0x2800000000000000)));
  v61 = v53 ^ 0xC630E1018CD70509 ^ (v53 >> 7);
  v62 = ((v50 ^ v38 ^ v46) >> 17) ^ ((v50 ^ v38 ^ v46) >> 10) ^ v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48 ^ ((v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48) << 47) ^ ((v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48) << 54);
  *(&v63 + 1) = ~v61;
  *&v63 = v61;
  v64 = ((v53 ^ 0xC630E1018CD70509) << 57) ^ ((v53 ^ 0xC630E1018CD70509) << 23) ^ __ROR8__(__ROR8__(v53, 44) & 0xE0000000000FFFFFLL ^ 0x77AC5EA2FF32C9D4 ^ (v63 >> 3), 61);
  *(&v63 + 1) = v56;
  *&v63 = v55;
  v65 = v56 ^ __ROR8__(v56, 19) ^ (v63 >> 28) ^ v64;
  v66 = v65 ^ 0xC54D8C9E0EDE4C24;
  v67 = v62 ^ 0xCD29F13A99BFB785 ^ v64;
  v68 = (v67 ^ 0xB0F28FB6696C11EDLL) & (v65 ^ 0xC54D8C9E0EDE4C24);
  v69 = v65 & 0xA3913D86965B49F1;
  v70 = (v60 ^ 0xA7BF4AC0C014BDE0) & (v62 ^ 0x4A90D2F7C04E1159);
  v71 = v60 & 0x439ADF6CA31E1892;
  v72 = (v59 ^ 0x8A1178A505C68904) & (~(2 * v66) + v66);
  v73 = v59 & 0x5B8C5E6928BBBA65 ^ v66 ^ (v60 ^ 0x3CCEB561750F87ALL) & (v59 ^ 0x75EE875AFA3976FBLL);
  v74 = (__ROR8__(__ROR8__(v62 ^ 0xCD29F13A99BFB785, 62) ^ 0x8AB89576054BF462, 2) ^ 0xA90458F574653BD6) & (v67 ^ 0xEC9C4DCF00C8A7E3) ^ v67 & 0x30767EF6F027877FLL ^ v60;
  v75 = ((v73 & 0xE0096EE0D8B2C64DLL ^ 0xE9ED0047F43C3665) & (v73 & 0x1FF6911F274D39B2 ^ 0xEA69FEF7DDB6CECDLL) | v73 & 0x1612911803410992) ^ 0xF528C1664501489DLL;
  if ((v72 & 0x100000000 & (v67 ^ 0xEC9C4DCF00C8A7E3)) != 0)
  {
    v76 = -(v72 & 0x100000000);
  }

  else
  {
    v76 = v72 & 0x100000000;
  }

  v77 = (v76 + (v67 ^ 0xEC9C4DCF00C8A7E3)) ^ v72 & 0xFFFFFFFEFFFFFFFFLL;
  v78 = v71 ^ v59 ^ 0x8A1178A505C68904 ^ v70 ^ v75;
  v79 = v78 ^ 0x452028502E95DD85;
  v80 = v75 ^ v77;
  v81 = v80 ^ 0xE0B1C89DB829195ALL;
  v82 = v62 ^ 0xCD29F13A99BFB785 ^ v69 ^ v68 ^ v74;
  v83 = (v80 & 0x8000) == 0;
  v84 = 0x8000;
  if (!v83)
  {
    v84 = -32768;
  }

  v85 = v84 + v81;
  *(&v86 + 1) = v78 ^ 0x18104C7FDE4DCAEFLL;
  *&v86 = v78;
  v87 = (v86 >> 61) - ((2 * (v86 >> 61)) & 0x23FE4DA55827B64CLL);
  *(&v86 + 1) = v82 ^ 0x3A4;
  *&v86 = v82 ^ 0x3FF9AC451E16E000;
  v88 = (v86 >> 10) - ((2 * (v86 >> 10)) & 0x4E0B133AE1A9BE5ELL);
  *(&v86 + 1) = v78 ^ 0x452028502E95DD85;
  *&v86 = v78;
  v89 = (v86 >> 39) ^ 0xCE1E96FC7823FBBELL ^ (v87 - 0x6E00D92D53EC24DALL);
  v90 = (v89 - ((2 * v89) & 0xBA60C85FE1B02ED4) + 0x5D30642FF0D8176ALL) ^ v79;
  *(&v86 + 1) = v82 ^ 0xE0CF29C5A240019;
  *&v86 = v82;
  v91 = (((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17) ^ 0xD6DB1661A6F65024) + 0x31F55ED94432E3BDLL - 2 * (((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17) ^ 0xD6DB1661A6F65024) & 0x31F55ED94432E3BFLL ^ ((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17)) & 2)) ^ v82 ^ 0xE0CF29C5A240019;
  v92 = v77 ^ 0x9A383CF881807545 ^ ((v77 ^ 0x9A383CF881807545) >> 7) ^ (((v77 ^ 0x9A383CF881807545) >> 41) | ((v77 ^ 0x9A383CF881807545) << 57)) ^ ((v77 ^ 0x9A383CF881807545) << ((v74 >> 1) & 0x17 ^ 3) << ((v74 >> 1) & 0x17 ^ 0x14));
  v93 = ((v74 & 0x9B6535C14F352826 ^ (v74 << 63) ^ 0xC7C183457EA140F5) & (v74 & 0x649ACA3EB0CAD7D9 ^ 0xDBFF35E3EF356DB7) | v74 & 0x201A483A804A9708) ^ __ROR8__(v74, 6) ^ 0xCD31DCC01C6AEAE6 ^ v90;
  v94 = (v93 - ((2 * v93) & 0x925BB517DB382142) + 0x492DDA8BED9C10A1) ^ (v74 >> 1);
  v95 = v81 ^ v92 ^ (v81 >> 19) ^ (v85 >> 28) ^ ((v85 ^ 0x8000) << 36) ^ ((v85 ^ 0x8000) << 45);
  v96 = v91 ^ v92;
  v97 = v96 - ((2 * v96) & 0x4BCF7563A6B4D67ELL);
  v98 = v94 ^ 0x43180866D8636D02 ^ v92 & ~v91;
  v99 = (v94 ^ 0x43180866D8636D02) & ~v90 ^ v95;
  v100 = v90 & ~v95 ^ v96;
  v101 = v100 ^ 0x6E04C15915AB860ALL ^ v99;
  *(&v86 + 1) = (v101 >> 19) & v101 & 0x1A36E0206AEDLL ^ (v101 >> 28) ^ (((v101 >> 19) | v101) & 0xD8807A36E0206AEDLL | (v101 >> 19) & 0x5C91FDF9512 ^ v101 & 0x277F85C91FDF9512);
  *&v86 = (v101 << 36) ^ (v101 << 45) ^ *(&v86 + 1);
  v102 = (v90 - 2 * (v90 & v95) + v99) ^ (v94 ^ 0xBCE7F799279C92FDLL) & v91;
  v103 = v95 & ((v97 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ v91 ^ v98 ^ 0x7370AC685030CB36;
  v104 = (v102 >> 39) ^ (v102 >> 61) ^ (8 * (v102 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v102 ^ 0x3278F838FE43D2BCLL) - (((v102 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v102 ^ 0x3278F838FE43D2BCLL))));
  v105 = v104 ^ 0x64F1F1;
  v106 = v100 ^ 0x26974B18501E2B14 ^ ((v100 ^ 0x26974B18501E2B14) >> 41) ^ ((v100 ^ 0x26974B18501E2B14) >> 7) ^ ((v100 ^ 0x26974B18501E2B14) << 23) ^ ((v100 ^ 0x26974B18501E2B14) << 57);
  v107 = v98 ^ 0x7955EAEC4D48B80CLL ^ (v98 << 63) ^ __ROR8__(v98 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v98 ^ 0x7955EAEC4D48B80CuLL) >> ((v61 & 8) == 0) >> ((v61 & 8) != 0));
  v108 = v104 ^ 0x64F1F1 ^ v107;
  v109 = (v103 >> 17) ^ __ROR8__(v103, 10) ^ __ROR8__(__ROR8__(v103, 14) & 0xFFFC000000000007 ^ __ROR8__(v103, 61), 3);
  v110 = v109 ^ v106;
  *&v86 = __ROR8__(__ROR8__(v106, 7) ^ __ROR8__(__ROR8__(v86 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v111 = v106 & ~v109 ^ v108;
  v112 = v86 ^ 0xBBDB0FB7A00B9120 ^ (v104 ^ 0xFFFFFFFFFF9B0E0ELL) & v107;
  v113 = v104 ^ (((v108 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v108 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v109 ^ 0x425764BB58132BD4 ^ v112;
  v114 = (v86 ^ 0x4424F0485FF46EDFLL) & v105 ^ v110;
  v115 = (v114 ^ -v114 ^ (0x70C7A8D3F3643DFDLL - (v114 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v116 = v111 ^ 0xD3DA1E3360BF843ALL ^ ((v111 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v111 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v117 = v109 ^ 0x44C9D571A5C4A51CLL ^ v111 ^ (v86 ^ 0xBBDB0FB7A00B9120) & ~v110;
  v119 = __ROR8__(__ROR8__(v113, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v113 ^ (8 * v113) ^ ((v113 >> 61) | (v113 << 25)), 23) ^ 0x735302FC48340548, 41);
  v120 = (v115 >> 7) ^ (v115 >> 41) ^ (v115 << 23) ^ (v115 << 57);
  v121 = v120 ^ v115;
  v122 = v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114 ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) >> 28) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) >> 19) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) << 36) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) << 45) ^ v120 ^ v115;
  v123 = v116 & 0xFFFFFFF7FFFFFFFFLL ^ (v111 << 63) ^ (v116 & 0x800000000 | ((v111 ^ 0xD3DA1E3360BF843ALL) << ((v101 >> 19) & 0x12) << ((v101 >> 19) & 0x12 ^ 0x3A))) ^ v119;
  if (v120 == v115)
  {
    v124 = 0;
  }

  else
  {
    v124 = v117 << 47;
  }

  v125 = v119 ^ 0x7E241A02A439A981;
  v118 = (v117 ^ (v117 >> 10) | (v117 << 54)) ^ (v117 << 54) & v117;
  v126 = (v124 ^ v118 | (v117 << 47)) ^ (v118 & (v117 << 47) & 0xFFFF800000000000 | (v117 >> 17));
  v127 = v123 ^ 0x7E241A02A439A981;
  v128 = v126 & (v123 ^ 0x81DBE5FD5BC6567ELL);
  v129 = v126 ^ v121 ^ v125 & ~v122;
  v130 = v122 ^ (~(2 * v125) + v125) & (v123 ^ 0x7E241A02A439A981);
  v131 = v129 ^ v130;
  v132 = v129 ^ v130 ^ 0x93C23431B76D41FLL;
  *(&v133 + 1) = v132;
  *&v133 = v129 ^ v130;
  v134 = v125 ^ 0x6005BE354A5BB0B2 ^ v130;
  v135 = v122 & ~(v126 ^ v121) ^ v126 ^ v121 & ~v126 ^ v127;
  v136 = (v133 >> 62) ^ (4 * (v132 >> 28)) ^ 0x406FF36C296024B3;
  *(&v133 + 1) = v132;
  *&v133 = v131;
  v137 = ((v133 >> 19) ^ __ROR8__(v136, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v138 = v129 ^ 0x2DB5B6AF87F64351 ^ ((v129 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v129 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v129 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v129 ^ 0x2DB5B6AF87F64351) >> 41);
  v139 = (((v134 ^ v128) << (v121 & 3) << (v121 & 3 ^ 3)) ^ v134 ^ v128 ^ (((v134 ^ v128) >> 39) ^ ((v134 ^ v128) >> 61) | ((v134 ^ v128) << 25))) & ~(v138 ^ (v132 << 36) ^ (((2 * v137) & 0xFFFFFFFF18D20D4ALL) + (v137 ^ 0xFFFFFFFF8C6906A5))) ^ __ROR8__(v135 ^ 0xF374A001D380BDC2, 17) ^ ((v135 ^ 0xF374A001D380BDC2) >> 10) ^ (((v135 ^ 0xF374A001D380BDC2) << 54) | (v135 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v135 ^ 0xF374A001D380BDC2) << 54) & (v135 ^ 0xF374A001D380BDC2) | v135 & 0x20) ^ v138;
  return (*(v39 + 8 * (v42 ^ (a35 > 2 * (a38 & 1) + (a38 ^ 1u)))))(v139 ^ __ROR8__(v139 ^ 0x3096EC2D0511544CLL, 7) ^ ((v139 ^ 0x3096EC2D0511544CLL) << 23) ^ ((v139 ^ 0x3096EC2D0511544CLL) >> 41));
}

void sub_22D328C38(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 36) ^ (742307843 * ((~a1 & 0x6EE94400 | a1 & 0x9116BBFF) ^ 0x70CBC955));
  v2 = 742307843 * (((&v6 | 0x7C782FF7) - (&v6 & 0x7C782FF7)) ^ 0x625AA2A2);
  v6 = v1 - v2 - 473373702;
  v7 = &v4;
  v8 = 602092488 - v2;
  v3 = *(&off_28407CFD0 + v1 + 33) - 8;
  (*&v3[8 * (v1 ^ 0x8FB)])(&v6);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_22D328E9C@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 - 1255));
  v9 = *v8;
  v10 = *(v6 + 8 * (a1 ^ 0x552));
  v11 = *v10;
  v22[0] = **v10 - 15;
  v22[1] = v11[1] - 15;
  v22[2] = v11[2] - 15;
  v22[3] = v11[3] - 15;
  v22[4] = v11[4] - 15;
  v22[5] = v11[5] - 15;
  v22[6] = v11[6] - 15;
  v22[7] = v11[7] - 15;
  v22[8] = v11[8] - 15;
  v22[9] = v11[9] - 15;
  v22[10] = v11[10] - 15;
  v22[11] = v11[11] - 15;
  v22[12] = v11[12] - 15;
  v22[13] = v11[13] - 15;
  v22[14] = v11[14] - 15;
  v22[15] = v11[15] - 15;
  v22[16] = v11[16] - 15;
  v22[17] = v11[17] - 15;
  v22[18] = v11[18] - 15;
  v22[19] = v11[19] - 15;
  v12 = *v10;
  v22[20] = v12[20] - 15;
  v22[21] = v12[21] - 15;
  v22[22] = v12[22] - 15;
  v22[23] = v12[23] - 15;
  v22[24] = v12[24] - 15;
  v22[25] = v12[25] - 15;
  v22[26] = v12[26] - 15;
  v22[27] = v12[27] - 15;
  v22[28] = v12[28] - 15;
  v22[29] = v12[29] - 15;
  result = (*(v4 + 8 * (a1 ^ 0xC7D)))(v9, v22, v2);
  if (result == 1102)
  {
    v15 = *v8;
    v16 = *(v6 + 8 * (v5 ^ 0x50B));
    v17 = *(v16 - 4);
    v23[0] = 9 * *v17 + 97;
    v23[1] = 9 * v17[1] + (v5 ^ 0x1C);
    v23[2] = 9 * v17[2] + 97;
    v23[3] = 9 * v17[3] + 97;
    v23[4] = 9 * v17[4] + 97;
    v23[5] = 9 * v17[5] + 97;
    v23[6] = 9 * v17[6] + 97;
    v23[7] = 9 * v17[7] + 97;
    v23[8] = 9 * v17[8] + 97;
    v23[9] = 9 * v17[9] + 97;
    v23[10] = 9 * v17[10] + 97;
    v23[11] = 9 * v17[11] + 97;
    v23[12] = 9 * v17[12] + 97;
    v23[13] = 9 * v17[13] + 97;
    v23[14] = 9 * v17[14] + 97;
    v23[15] = 9 * v17[15] + 97;
    v23[16] = 9 * v17[16] + 97;
    v18 = *(v16 - 4);
    v23[17] = 9 * v18[17] + 97;
    v23[18] = 9 * v18[18] + 97;
    v23[19] = 9 * v18[19] + 97;
    v19 = *(v4 + 8 * ((102 * ((*(v4 + 8 * (v5 + 899)))(v15, v23, v2) != 0)) ^ (v5 - 968)));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v21 = 1261138485;
  }

  else
  {
    v14 = (v5 - 1386) | 0x1C0;
    *(v7 + 352) |= v14 - 457;
    *(v7 + 52) = 1470670864;
    result = (*(v4 + 8 * (v5 ^ 0xDC5)))(*v2, v7 + 340, v7 + 344, v7 + 348, v3);
    v20 = *(v1 + 16);
    **(v1 + 8) = *v2;
    *v20 = *v3 - (((v14 + 938) ^ 0x4EC00A9F) & (2 * *v3)) + 660604913;
    v21 = -1261164275;
  }

  *(v1 + 24) = v21;
  return result;
}

void sub_22D3292CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v9 + 8);
  v12 = (*(v11 + 4 * (v10 - 1)) ^ v5) >> v7;
  *(v11 + 4 * v8) = v12 + v5 - ((v12 << ((6 * (a5 ^ 0x40)) ^ 0x5D)) & v6);
  JUMPOUT(0x22D329340);
}

uint64_t sub_22D329390@<X0>(int a1@<W1>, unsigned int a2@<W7>, unsigned int a3@<W8>)
{
  v13 = (v11 + 4 * v6);
  v14 = HIDWORD(v7) + a2 * (*(v5 + 4 * v6) ^ a3) + (*v13 ^ (a3 + v9 + 1020 - 1689)) + HIDWORD(v3) + v10 * (*(v12 + 4 * v6) ^ a3);
  *(v13 - 1) = v14 + a3 - (a1 & (2 * v14));
  return (*(v8 + 8 * (((4 * (v6 + 1 != v4)) | (32 * (v6 + 1 != v4))) ^ v9)))();
}

uint64_t sub_22D3295E4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = 1785193651 * ((2 * ((v30 - 128) & 0x61346E78) - (v30 - 128) + 516657541) ^ 0xD177DA5);
  *(v30 - 112) = a12 - v32 + (((a1 ^ 0x25) - v31 - 1367814192) ^ (257 * (a1 ^ 0x25)));
  *(v30 - 128) = (a1 + 1505) ^ v32;
  *(v30 - 120) = &a20;
  v33 = (*(v29 + 8 * (a1 ^ 0x8F6)))(v30 - 128);
  v34 = a29 & 0x3F;
  *(&a20 + v34) = -78;
  return (*(v29 + 8 * ((78 * (v34 > 0x37)) ^ a1)))(v33);
}

uint64_t sub_22D329760()
{
  v3 = v0 + 182;
  v4 = (v1 & 2) != ((v3 - 38) ^ 0x1DE) - 213;
  return (*(v2 + 8 * ((2 * v4) | (4 * v4) | v3)))();
}

uint64_t sub_22D3297D4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3F0] = -v1;
  v2 = STACK[0x488];
  v3 = a1 - 112;
  STACK[0x260] = v3;
  STACK[0x4F8] = v3;
  return v2();
}

uint64_t sub_22D3298C0@<X0>(int a1@<W8>)
{
  v7 = v6 + v4;
  v8 = (v4 + ((a1 + 60) | 5) - 88) & 0xF;
  v9 = v8 + 1 - v4;
  v10 = v1 + v9;
  v11 = v1 + v8 + 1;
  v12 = v2 + v9;
  v13 = v2 + v8 + 1;
  v14 = v8 + v3 + 2;
  v16 = v11 > v6 && v10 < v7;
  v18 = v13 > v6 && v12 < v7 || v16;
  if (v14 <= v6 || v14 - v4 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 8 * (a1 ^ (16 * v20))))();
}

uint64_t sub_22D32993C@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = (v8 - 1);
  *(a4 + v11) = *(a5 + v11) ^ ((v11 & 0xF) * a2) ^ *(v7 + (v11 & 0xF)) ^ *((v11 & 0xF) + a6 + 5) ^ (v9 + 20) ^ *((v11 & 0xF) + v6 + 1);
  return (*(v10 + 8 * (((v11 == ((6 * ((v9 + 902) ^ a3)) ^ 0x1E)) * a1) ^ (v9 + 494))))();
}

uint64_t sub_22D329B0C@<X0>(int a1@<W8>)
{
  v6 = v1 + 1321;
  v7 = v1 + 1321 - v5 + 1726765185;
  if (v4 > v7)
  {
    v7 = v4;
  }

  *(*(v2 + 8) + 4 * (((v6 - 151034828) & 0x90097EE ^ 0xFFFFFB93) + v7 + a1)) = *(*(v2 + 8) + 4 * (((v6 - 151034828) & 0x90097EE ^ 0xFFFFFFFFFFFFFB93) + v7));
  return (*(v3 + 8 * ((205 * (v7 > 1)) ^ v6)))();
}

uint64_t sub_22D329C10@<X0>(unsigned int a1@<W3>, unsigned int a2@<W4>, unint64_t a3@<X5>, _DWORD *a4@<X7>, uint64_t a5@<X8>)
{
  v13 = (a4[1] ^ v5) + (v8 ^ HIDWORD(a3)) + a2 * (*(*(v9 + 8) + 4) ^ v5);
  *a4 = (v13 + ((a1 - 23) ^ v6) - ((v7 + 1207) & (2 * v13))) ^ v11;
  return (*(v10 + 8 * (((a5 == 2) * v12) ^ a1)))();
}

uint64_t sub_22D329C7C()
{
  v7 = ((((v6 - 144) | 0x3B300661) + (~(v6 - 144) | 0xC4CFF99E)) ^ 0x94178478) * v3;
  *(v6 - 128) = (((2 * (v4 - 996129833)) & 0xED74B5FC) - 276971606 + ((v4 - 996129833) ^ 0x76BA5833 ^ (v1 - 1201))) ^ v7;
  *(v6 - 136) = v5;
  *(v6 - 144) = v7 + v1 - 1441;
  v8 = (*(v0 + 8 * (v1 + 275)))(v6 - 144);
  return (*(v0 + 8 * ((((v1 ^ (*(v6 - 140) == v2)) & 1) == 0) | v1)))(v8);
}

void sub_22D329D44()
{
  LODWORD(STACK[0x53C]) = STACK[0x374];
  STACK[0x3A0] = STACK[0x510];
  LODWORD(STACK[0x524]) = 313566482;
  JUMPOUT(0x22D326D98);
}

uint64_t sub_22D329D70()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_22D329D98()
{
  v2 = v0 - 449;
  v3 = (*(v1 + 8 * ((v0 - 449) ^ 0x8C8)))(1576, 0x105004009637391);
  STACK[0x3C0] = v3;
  return (*(v1 + 8 * ((73 * (((v3 == 0) ^ (v2 + 38)) & 1)) ^ v2)))();
}

uint64_t sub_22D329EF8()
{
  v4 = (*(v1 + 8 * (v0 ^ 0xB3B)))();
  LODWORD(STACK[0x52C]) = v2;
  return (*(v1 + 8 * ((((v0 ^ 0xBF4) - 2113) * v3) ^ (v0 - 317))))(v4);
}

uint64_t sub_22D329F4C()
{
  v4 = v3[1];
  v5 = v3[398] ^ v0 ^ ((v3[2] & 0x7FFFFFFE | v4 & 0x80000000) >> 1) ^ *(&STACK[0x1898] + (v3[2] & 1));
  *v3 = v3[397] ^ v0 ^ ((v4 & 0x7FFFFFFE | *v3 & 0x80000000) >> 1) ^ *(&STACK[0x1898] + (v4 & 1));
  v3[1] = v5;
  return (*(v1 + 8 * (((v2 - 408) | 0x10) ^ 0x21)))(&STACK[0x1898], 1948, 289, 1120, 159);
}

uint64_t sub_22D329F54()
{
  *(v2 - 208) = &STACK[0x46C];
  *(v2 - 200) = &STACK[0x558];
  *(v2 - 212) = v1 - 143681137 * ((((v2 - 216) | 0x894AE35) - (v2 - 216) + ((v2 - 216) & 0xF76B51C8)) ^ 0xDC33B26F) - 362;
  *(v2 - 216) = (113 * ((((v2 + 40) | 0x35) - (v2 + 40) + ((v2 + 40) & 0xC8)) ^ 0x6F)) ^ 0x34;
  v3 = (*(v0 + 8 * (v1 + 476)))(v2 - 216);
  v4 = *(v2 - 192);
  LODWORD(STACK[0x504]) = v4;
  return (*(v0 + 8 * ((357 * (v4 == (((v1 ^ 0x729) + 1095) ^ 0xB4D42F18))) ^ v1)))(v3);
}

uint64_t sub_22D32A04C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char *a10, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v27 = a1 + 787;
  v28 = 1785193651 * ((1722119212 - ((v26 - 144) | 0x66A5742C) + ((v26 - 144) | 0x995A8BD3)) ^ 0x8A8667F3);
  *(v26 - 144) = v23;
  *(v26 - 136) = v28 + a1 + 310;
  *(v26 - 132) = v19 + v28 - 986202239 + a1 + 787;
  *(v26 - 128) = &a17;
  (*(v21 + 8 * (a1 + 1343)))(v26 - 144);
  a10 = &a7;
  a11 = &a19;
  *(v26 - 144) = (v27 - 390) ^ (((2 * ((v26 - 144) & 0x636868F0) - (v26 - 144) - 1667786994) ^ 0x54F65358) * v20);
  *(v26 - 136) = v22;
  *(v26 - 128) = &a10;
  (*(v21 + 8 * (v27 + 507)))(v26 - 144);
  *(v26 - 144) = &a10;
  *(v26 - 136) = v25;
  *(v26 - 128) = v22;
  *(v26 - 120) = &a13;
  *(v26 - 112) = &a17;
  *(v26 - 104) = (v27 - 1488) ^ (2066391179 * ((-688079416 - ((v26 - 144) | 0xD6FCBDC8) + ((v26 - 144) | 0x29034237)) ^ 0x8624C02F));
  v29 = (*(v21 + 8 * (v27 + 596)))(v26 - 144);
  return (*(v21 + 8 * ((((v27 - 500) ^ 0x4B3) * (v24 == 0)) ^ v27)))(v29);
}

uint64_t sub_22D32A10C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v11 = *(v9 + 48 * v6 + 36);
  v13 = v11 != a3 && v11 + a4 < v10;
  return (*(v7 + 8 * ((v13 * (v8 + ((v4 + 1100) ^ (v5 + 1533)) + 105)) ^ v4)))();
}

void sub_22D32A150(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = v6 - 97;
  a4 = v5;
  a5 = (v6 - 114) ^ (1564307779 * (&a3 ^ 0x970DCC13));
  (*(a1 + 8 * ((v6 - 97) ^ 0xF9C)))(&a3);
  *(v7 + 4) = (v8 ^ 0xCDD8C69F) - *(v7 + 4);
  JUMPOUT(0x22D318604);
}

void sub_22D32A3E0(uint64_t a1)
{
  v1 = *(a1 + 24) + 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22D32A53C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = v3 - 1;
  *(a2 + v8) = *(a1 + v8) - (v6 & (2 * *(a1 + v8))) + 50;
  return (*(v5 + 8 * ((27 * (v8 != (v2 ^ v7 ^ v4))) ^ v2)))();
}

uint64_t sub_22D32A67C()
{
  v2 = STACK[0x340] - 771;
  v3 = (((LODWORD(STACK[0x59C]) ^ 0x11E7EAC3) - 300411587) ^ ((LODWORD(STACK[0x59C]) ^ 0x3F7DCC25) - 1065208869) ^ ((LODWORD(STACK[0x59C]) ^ 0x9A4E0FEB) + 1706160149)) + 1772638746 + (((v1 ^ 0xE51C8EF9) + 451113223) ^ ((v1 ^ 0x563EF5E2) - 1446966754) ^ ((v1 ^ ((STACK[0x340] - 899) | 0x80) ^ 0x7F652B7) - 133583382));
  *(STACK[0x228] + 52) = ((v3 % 0x2710) ^ 0xDEEEFD8D) + 1637734272 + ((2 * (v3 % 0x2710)) & 0x7B1A);
  v4 = STACK[0x5A4];
  STACK[0x4F8] -= 1616;
  LODWORD(STACK[0x52C]) = v4;
  return (*(v0 + 8 * ((1514 * (v4 == -1261164275)) ^ v2)))();
}

uint64_t sub_22D32A934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  ++*(v8 + 52);
  LODWORD(STACK[0x3BC]) = *(v8 + 360);
  STACK[0x4F8] += ((v6 + 1002) | 4u) ^ 0xFFFFFFFFFFFFF086;
  LODWORD(STACK[0x504]) = a6;
  return (*(v7 + 8 * ((78 * (STACK[0x350] == 0)) ^ v6)))();
}

void sub_22D32A9F4(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_28407CFD0 + v1 - 597) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 11992])(32, 0x101004023FF3BD5) == 0) * (((v1 - 92) | 0x89) - 628)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D32AAB0()
{
  v3 = LODWORD(STACK[0x524]) - 356556495;
  v4 = ((v0 - 1700345161) < 0xFD700643) ^ (v3 < (((v1 - 503) | 0x10) ^ 0xFD7003CA) + ((v1 + 1713206652) & 0x99E282B3));
  v5 = v3 < v0 - 1700345161;
  if (v4)
  {
    v5 = (v0 - 1700345161) < 0xFD700643;
  }

  return (*(v2 + 8 * (v1 | (2 * v5))))();
}

void sub_22D32ABA0(uint64_t a1)
{
  v1 = *(a1 + 8) - 1785193651 * ((a1 & 0x5CB9D977 | ~(a1 | 0x5CB9D977)) ^ 0xB09ACAA8);
  v2 = *a1;
  v3 = *(&off_28407CFD0 + v1 - 350) - 8;
  (*&v3[8 * (v1 ^ 0x93F)])(*(&off_28407CFD0 + v1 - 246), sub_22D309CDC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D32ACD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x64) + 50;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((2034 * v4) ^ 0x390u)))(0);
}

uint64_t sub_22D32AD24(uint64_t a1)
{
  v1 = ((*a1 ^ (50899313 * (a1 ^ 0xC861C456))) + 559) | 6;
  v2 = (v1 ^ 0x99139929) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_28407CFD0 + (v1 ^ 0x658)) + (((v2 > v1 - 1567) * ((v1 ^ 0x3D7) - 1201)) ^ v1) - 1))();
}

uint64_t sub_22D32ADD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v20 = 1785193651 * ((((v19 - 136) ^ 0x58986BCA) + 422353094 - 2 * (((v19 - 136) ^ 0x58986BCA) & 0x192C98C6)) ^ 0x52681F2C);
  *(v19 - 136) = &a14;
  *(v19 - 128) = v14 - v20 - 719;
  *(v19 - 124) = ((v14 - 1378) ^ v16 ^ 0x7EBD892A) - v20 + ((2 * v16) & 0xFD7B1676) - 270565675;
  (*(v15 + 8 * (v14 ^ 0xFBC)))(v19 - 136);
  *(v19 - 136) = a11;
  *(v19 - 128) = v14 - 1378 - ((v19 - 136) ^ 0xD4A71C5A) * v18 + 762;
  *(v19 - 120) = &a12;
  v21 = (*(v15 + 8 * (v14 + 328)))(v19 - 136);
  return (*(v15 + 8 * ((90 * ((((v14 - 401) ^ (*(v19 - 112) + v17 < (((v14 - 1639) | 0x280) ^ 0xFA2A17FD))) & 1) == 0)) ^ (v14 - 1378))))(v21);
}

void CFUnnB0JdUjJ5CNJMkDS()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28407CFD0 + (*(off_28407D038 + (*(off_28407D350 + (107 * (dword_27D9FC260 ^ 0xF9 ^ qword_27D9FC1D8)) - 12) ^ 0xA4u) - 8) ^ (107 * (dword_27D9FC260 ^ 0xF9 ^ qword_27D9FC1D8))) + 37);
  v1 = off_28407D180;
  v2 = off_28407D488 - 8;
  v3 = *(&off_28407CFD0 + (*(off_28407D488 + (*(off_28407D180 + (107 * ((qword_27D9FC1D8 + *v0) ^ 0xF9))) ^ 0xBDu) - 8) ^ (107 * ((qword_27D9FC1D8 + *v0) ^ 0xF9))) + 18);
  v4 = *v0 - &v6 + *(v3 - 4);
  *v0 = 1010482283 * (v4 + 0x5450BF49BFD4E907);
  *(v3 - 4) = 1010482283 * (v4 ^ 0xABAF40B6402B16F9);
  v7[0] = (1037613739 * (v7 ^ 0xD1022D7F)) ^ 0x9617D40F;
  LOBYTE(v3) = 107 * ((*(v3 - 4) + *v0) ^ 0xF9);
  v5 = *(&off_28407CFD0 + ((107 * (dword_27D9FC260 ^ 0xF9 ^ qword_27D9FC1D8)) ^ byte_22D5B2B40[byte_22D5AF0D0[(107 * (dword_27D9FC260 ^ 0xF9 ^ qword_27D9FC1D8))] ^ 0xAD]) - 149) - 8;
  (*&v5[8 * (v3 ^ v2[v1[v3] ^ 0xBD]) + 17880])(v7);
  __asm { BRAA            X8, X17 }
}

void sub_22D32B214(uint64_t a1)
{
  v2 = *(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 + dword_27D9FC1F0) ^ 0xF9)) ^ byte_22D5A9E30[byte_22D5B60C0[(107 * ((qword_27D9FC1D8 + dword_27D9FC1F0) ^ 0xF9))] ^ 0x16]) - 127);
  v3 = *(v2 - 4);
  v4 = *(&off_28407CFD0 + (*(off_28407D488 + (*(off_28407D180 + (107 * ((qword_27D9FC1D8 + v3) ^ 0xF9))) ^ 0xBDu) - 8) ^ (107 * ((qword_27D9FC1D8 + v3) ^ 0xF9))) + 18);
  v5 = (*(v4 - 4) ^ v3) - &v9;
  v6 = 1010482283 * v5 - 0x5450BF49BFD4E907;
  v7 = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_28407CFD0 + ((107 * ((qword_27D9FC1D8 - dword_27D9FC1F0) ^ 0xF9)) ^ byte_22D5AA030[byte_22D5B61C0[(107 * ((qword_27D9FC1D8 - dword_27D9FC1F0) ^ 0xF9))] ^ 0x8F]) + 53) - 8;
  (*&v8[8 * (*(off_28407D240 + (*(off_28407D378 + (107 * ((v7 - v4) ^ 0xF9)) - 4) ^ 0xCDu) - 12) ^ (107 * ((v7 - v4) ^ 0xF9))) + 17040])(*(&off_28407CFD0 + ((107 * ((v7 + v4) ^ 0xF9)) ^ *(off_28407D240 + (*(off_28407D378 + (107 * ((v7 + v4) ^ 0xF9)) - 4) ^ 0xCDu) - 12)) + 103), sub_22D309CDC);
  __asm { BRAA            X9, X17 }
}

void sub_22D32B400(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_22D32B4EC@<X0>(int a1@<W8>)
{
  v7 = *(v3 + 4 * (v5 - 1));
  *(v3 + 4 * v5) = ((1566083941 * (v7 ^ (v7 >> 30))) ^ *(v3 + 4 * v5)) - v5;
  *(v6 - 120) = v4 + a1 - 288126657;
  v8 = v6 - 176;
  *(v8 + 64) = v4 + 623;
  *(v6 - 152) = ((a1 + 1610053433) ^ 0x61) - v4;
  *(v6 - 132) = a1 + 1610053433 - v4;
  *(v6 - 128) = -v4;
  *(v6 - 124) = (a1 + 1610053457) ^ v4;
  *(v8 + 32) = v5 + 1 - v4;
  v9 = (*(v2 + 8 * (v1 + a1 + 1605)))(v6 - 152);
  return (*(v2 + 8 * *(v6 - 136)))(v9);
}

uint64_t sub_22D32B5FC@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v7 = v3 - ((2 * v3) & 0x180) - 712618048;
  v8 = *result;
  v9 = *(result + 32);
  v10 = *(result + 16);
  *a2 = v4;
  *v10 = v7;
  *v9 = v6;
  *v8 = v2 + v5;
  *(result + 8) = -1261164275;
  return result;
}

uint64_t sub_22D32B7B0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 ^ 0x3A9;
  v9 = ((a1 ^ 0x3A9) + 195) | 0xA;
  v10 = v4[3];
  *(v7 - 116) = v5;
  v11 = *(&off_28407CFD0 + (v8 ^ 0x463)) - 4;
  v12 = *(&off_28407CFD0 + v8 - 961) - 4;
  v13 = v11[v10 ^ 0xDE] ^ v10;
  v14 = (v12[v4[4] ^ 0xF7] + 68) ^ 0x18;
  v15 = *(&off_28407CFD0 + v8 - 956) - 8;
  v16 = v15[v4[14] ^ 0x82];
  v17 = v9;
  v18 = *(&off_28407CFD0 + v8 - 929) - 8;
  v19 = v18[v4[5] ^ 0x6DLL] << 16;
  v20 = ((((v15[v4[6]] << 8) ^ 0x81C16E80) & ((v14 << 24) ^ 0xA3CBFF80) & 0x81FFFFFF | (((v14 >> 1) & 0x3F) << 25)) ^ 0x45570F5D) & (v19 ^ 0xFFCEFFDD);
  v21 = v19 & 0x690000;
  LOBYTE(v19) = (v4[15] - ((2 * v4[15]) & 8) - 124) ^ v11[v4[15] ^ 0xFDLL];
  v22 = ((v12[v4[8] ^ 0x70] + 68) ^ 0x5E) << 24;
  v23 = v18[v4[13] ^ 0xC7];
  v24 = v11[v4[11] ^ 0xD3] ^ v4[11];
  v25 = ((v18[v4[1] ^ 0x40] << 16) ^ 0x2944739B) & (v13 ^ 0xBFFF77FC) | v13 & 0x64;
  v26 = (v12[v4[12] ^ 0xBDLL] + 68) ^ 0x1B;
  v27 = (v12[v4[12] ^ 0xBDLL] + 68) ^ 0x1B;
  v28 = ((v23 << 16) ^ 0xCF2F87B3) & ~(v26 << 24) & 0xCFFFFFFF | (((v26 >> 4) & 3) << 28);
  LODWORD(v18) = (v18[v4[9] ^ 0x7CLL] ^ 0xD0) << 16;
  v29 = v18 & 0x970000 | ((v24 & 0xA2 | (((v22 ^ 0x30A0FF82) & ((v15[(v4[10] ^ (v9 + 62))] << 8) ^ 0x76A00B82) | v22 & 0x89000000) ^ 0xD1FF97DF) & (v24 ^ 0xFFFFFF83)) ^ 0x9D3704D4) & ~v18;
  v30 = ((((v15[v4[2] ^ 0x87] << 8) ^ 0x7550CEFA) & (v25 ^ 0x5E018C41) | v25 & 0x8AF0005) ^ 0x7DD88BFB) + (((v12[*v4 ^ 9] + 68) ^ 0x85) << 24);
  v31 = (v4[7] - ((2 * v4[7]) & 8) - 124) ^ v11[v4[7] ^ 0x2FLL];
  v32 = (v28 ^ 0x30E4784C) & (((v19 ^ 0xF8ADFF04) & ((v16 << 8) ^ 0xF8AD027D) | v19 & 0x82) ^ 0x5F69DD7E) ^ v28 & 0x583B0000;
  v33 = v31 & 0xA6 | (v21 ^ 0x6007D384 ^ v20) & ~v31;
  v34 = *(&off_28407CFD0 + (v8 ^ 0x411)) - 8;
  LODWORD(v10) = *&v34[4 * (v23 ^ 0xBE)];
  HIDWORD(v35) = v10 ^ 0x1AA93C9;
  LODWORD(v35) = v10 ^ 0x58000000;
  v36 = *(&off_28407CFD0 + v8 - 931) - 4;
  v37 = *&v36[4 * (v27 ^ 0xB4)];
  v38 = *(&off_28407CFD0 + v8 - 1006) - 4;
  v39 = 690312999 * *&v38[4 * (v19 ^ 0x78)] - 85913135;
  v40 = v16 ^ 0xF0;
  v41 = *(&off_28407CFD0 + (v8 ^ 0x4A2)) - 4;
  v42 = *&v41[4 * v40];
  *(v7 - 168) = v30;
  *(v7 - 164) = v29;
  *(v7 - 176) = v33;
  *(v7 - 172) = v32;
  v33 ^= 0x9A90CB0B;
  v43 = v30 ^ (v35 >> 27) ^ v39 ^ (-219980569 * v37 - 371359334) ^ (-36060539 * v42 + 1423491956) ^ 0x1A;
  *(v7 - 184) = v43 ^ v33;
  v44 = v29 ^ 0x3B685709 ^ v43 ^ v33;
  v45 = v44 ^ v32;
  v46 = *&v34[4 * (((v45 ^ 0x8E8C66C8) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v46 ^ 0x1AA93C9;
  LODWORD(v35) = v46 ^ 0x58000000;
  LODWORD(v10) = (690312999 * *&v38[4 * (v45 ^ 0x89)] - 85913135) ^ (v35 >> 27) ^ (-36060539 * *&v41[4 * (((v45 ^ 0x66C8) >> 8) ^ 0xAF)] + 1423491956) ^ (-219980569 * *&v36[4 * (HIBYTE(v45) ^ 0xAF)] - 371359334);
  v198 = v45;
  v47 = v45 ^ 0x7A3E8043;
  v48 = v10 ^ v33;
  *(v7 - 188) = v44;
  v196 = v10 ^ v33 ^ v44;
  v49 = v196 ^ 0xC1D6411F ^ v45 ^ 0x7A3E8043;
  v50 = *&v34[4 * (BYTE2(v49) ^ 0xBF)];
  HIDWORD(v35) = v50 ^ 0x1AA93C9;
  LODWORD(v35) = v50 ^ 0x58000000;
  v51 = (690312999 * *&v38[4 * (v196 ^ 0x1F ^ v45 ^ 0x43 ^ 0xAB)] - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v49) ^ 0x20)] - 371359334);
  v195 = v49;
  v52 = *&v41[4 * (BYTE1(v49) ^ 0xE9)];
  *(v7 - 180) = v43;
  v194 = v10 ^ v43;
  v53 = v51 ^ v10 ^ v43 ^ (-36060539 * v52 + 1423491956) ^ (v35 >> 27);
  v197 = v48;
  v192 = v53 ^ v48;
  LODWORD(v10) = v53 ^ v48 ^ 0xF78131F4;
  v54 = v10 ^ v47 ^ 0x68E79195;
  v55 = *&v34[4 * (BYTE2(v54) ^ 0xD9)];
  HIDWORD(v35) = v55 ^ 0x1AA93C9;
  LODWORD(v35) = v55 ^ 0x58000000;
  v191 = v10 ^ v47;
  v193 = v53;
  v56 = (-36060539 * *&v41[4 * (BYTE1(v54) ^ 0x49)] + 1423491956) ^ (690312999 * *&v38[4 * ((v10 ^ v47) ^ 0x5F)] - 85913135) ^ v53 ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (((v10 ^ v47) >> 24) ^ 0xBD)] - 371359334);
  v188 = v56 ^ v10;
  v189 = v10 ^ v196 ^ 0xC1D6411F;
  LODWORD(v10) = v56 ^ v10 ^ 0x5F64A794;
  v187 = v10 ^ v189;
  v57 = v10 ^ v189 ^ 0xC733F746;
  v58 = v57 ^ v54;
  v59 = v57 ^ v54 ^ 0x81B0C147;
  v60 = *&v34[4 * (BYTE2(v59) ^ 0xD9)];
  HIDWORD(v35) = v60 ^ 0x1AA93C9;
  LODWORD(v35) = v60 ^ 0x58000000;
  v190 = v56;
  v186 = v58;
  v61 = (-36060539 * *&v41[4 * (BYTE1(v58) ^ 0x88)] + 1423491956) ^ (v35 >> 27) ^ v56 ^ (690312999 * *&v38[4 * (v58 ^ 0x8D)] - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v58) ^ 0x54)] - 371359334);
  v184 = v61 ^ v10;
  LODWORD(v10) = v61 ^ v10 ^ 0xD5833601;
  v62 = v10 ^ v57;
  v63 = v10 ^ v57 ^ v59;
  v64 = *&v34[4 * (BYTE2(v63) ^ 0x8C)];
  HIDWORD(v35) = v64 ^ 0x1AA93C9;
  LODWORD(v35) = v64 ^ 0x58000000;
  v185 = v61;
  v65 = (-36060539 * *&v41[4 * (BYTE1(v63) ^ 0x1E)] + 1423491956) ^ (-219980569 * *&v36[4 * (HIBYTE(v63) ^ 0xE7)] - 371359334) ^ v61 ^ (v35 >> 27) ^ (690312999 * *&v38[4 * (v63 ^ 0xED)] - 85913135);
  LODWORD(v181) = v65 ^ v10;
  LODWORD(v10) = v65 ^ v10 ^ 0xE8131F4;
  v182 = v63;
  v183 = v62;
  HIDWORD(v180) = v10 ^ v62;
  v66 = v10 ^ v62 ^ 0xC00207F5;
  v67 = v66 ^ v63;
  v68 = *&v34[4 * (((v67 ^ 0x32555727) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v68 ^ 0x1AA93C9;
  LODWORD(v35) = v68 ^ 0x58000000;
  HIDWORD(v181) = v65;
  HIDWORD(v179) = (-36060539 * *&v41[4 * (((v67 ^ 0x5727) >> 8) ^ 0x8F)] + 1423491956) ^ (690312999 * *&v38[4 * (v67 ^ 0x5F)] - 85913135) ^ v65 ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (HIBYTE(v67) ^ 0x63)] - 371359334);
  LODWORD(v180) = v67;
  v69 = v67 ^ 0xB6E79195;
  LODWORD(v179) = HIDWORD(v179) ^ 0x5F64A794 ^ v10;
  v70 = v179 ^ v66 ^ v67 ^ 0xB6E79195;
  v71 = *&v34[4 * (BYTE2(v70) ^ 0x8E)];
  HIDWORD(v35) = v71 ^ 0x1AA93C9;
  LODWORD(v35) = v71 ^ 0x58000000;
  LODWORD(v178) = v70;
  v72 = (690312999 * *&v38[4 * (v70 ^ 0x18)] - 85913135) ^ (-36060539 * *&v41[4 * (BYTE1(v70) ^ 0x19)] + 1423491956) ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (HIBYTE(v70) ^ 0x98)] - 371359334);
  v73 = v72 ^ v10;
  v74 = v72 ^ v10 ^ v69;
  v75 = *&v34[4 * (((v74 ^ 0x76E59660) >> 16) ^ 0x3C)];
  HIDWORD(v35) = v75 ^ 0x1AA93C9;
  LODWORD(v35) = v75 ^ 0x58000000;
  HIDWORD(v177) = v72 ^ HIDWORD(v179) ^ 0x5F64A794;
  v76 = (-219980569 * *&v36[4 * (HIBYTE(v74) ^ 0xD8)] - 371359334) ^ HIDWORD(v177) ^ (690312999 * *&v38[4 * (v74 ^ 0xCA)] - 85913135) ^ (-36060539 * *&v41[4 * (((v74 ^ 0x9660) >> 8) ^ 0xDF)] + 1423491956) ^ (v35 >> 27);
  HIDWORD(v178) = v179 ^ v66;
  HIDWORD(v176) = v74;
  HIDWORD(v175) = v76 ^ v179 ^ v66 ^ 0xBFE59660;
  v77 = HIDWORD(v175) ^ v74;
  v78 = *&v38[4 * ((BYTE4(v175) ^ v74) ^ 0x78)];
  LODWORD(v175) = HIDWORD(v175) ^ v74 ^ 0x52B2C6B2;
  v79 = *&v34[4 * (((HIDWORD(v175) ^ v74) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v79 ^ 0x1AA93C9;
  LODWORD(v35) = v79 ^ 0x58000000;
  LODWORD(v11) = (v35 >> 27) ^ (690312999 * v78 - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v77) ^ 0x87)] - 371359334) ^ (-36060539 * *&v41[4 * (BYTE1(v77) ^ 0x8F)] + 1423491956);
  v80 = *(&off_28407CFD0 + v8 - 1080) - 4;
  v81 = *(&off_28407CFD0 + v8 - 919);
  v82 = *(&off_28407CFD0 + (v8 ^ 0x498)) - 12;
  v83 = *(&off_28407CFD0 + v8 - 1047);
  v174 = v80;
  v84 = (v80[*(v7 - 97) ^ 0xC9] ^ 0xFF | ((*(v81 + (*(v7 - 99) ^ 0x76)) ^ 0xCC) << 16) | (((*(v83 + (*(v7 - 100) ^ 0x17)) - 9) ^ 0x52) << 24) | ((v82[*(v7 - 98) ^ 0xECLL] ^ (*(v7 - 98) - ((2 * *(v7 - 98)) & 0xAE) - 41) ^ 0xBC) << 8)) ^ 0xD2D2D211;
  v85 = (v80[*(v7 - 109) ^ 0x30] ^ 0x8E | ((8 - *(v83 + (*(v7 - 112) ^ 0xF4))) << 24) | ((v82[*(v7 - 110) ^ 0xDELL] ^ (*(v7 - 110) - ((2 * *(v7 - 110)) & 0xAE) - 41) ^ 0x98) << 8) | ((*(v81 + (*(v7 - 111) ^ 0x39)) ^ 0x26) << 16)) ^ 0xD2D2D2D2;
  v86 = (v80[*(v7 - 105) ^ 0xDLL] ^ 0x15 | ((v82[*(v7 - 106) ^ 0x17] ^ (*(v7 - 106) - ((2 * *(v7 - 106)) & 0xAE) - 41) ^ 0xA0) << 8) | ((*(v81 + (*(v7 - 107) ^ 0xEFLL)) ^ 0x7C) << 16) | (((*(v83 + (*(v7 - 108) ^ 0x9CLL)) - 9) ^ 0x1C) << 24)) ^ 0xD2D2D2D2;
  v87 = (v80[*(v7 - 101) ^ 0xCCLL] ^ 0x78 | ((v82[*(v7 - 102) ^ 0x4ELL] ^ (*(v7 - 102) - ((2 * *(v7 - 102)) & 0xAE) - 41) ^ 0x16) << 8) | (((*(v83 + (*(v7 - 104) ^ 9)) - 9) ^ 0xDA) << 24) | ((*(v81 + (*(v7 - 103) ^ 0x1BLL)) ^ 0x70) << 16)) ^ 0xD2D2D2D2;
  HIDWORD(v173) = (((*(v7 - 116) ^ 0xF7FF6FC1) + 506026907) ^ ((*(v7 - 116) ^ 0xF9977F19) + 272714563) ^ ((*(v7 - 116) ^ 0x22A4E5F7) - 881667667)) + 1043720715;
  LODWORD(v177) = v73;
  LODWORD(v173) = v73 ^ 0xD000000 ^ v11;
  HIDWORD(v172) = v76 ^ v179 ^ v66 ^ 0x64000000 ^ v173;
  LODWORD(v176) = v76;
  LODWORD(v172) = v11 ^ v76;
  *(v7 - 160) = v6;
  *(v7 - 116) = 0;
  *(v7 - 140) = 0;
  *(v7 - 136) = v17;
  LODWORD(v11) = (v17 - 207) | 0x240;
  *(v7 - 132) = v11;
  v88 = v6;
  v89 = *(v81 + (v6[13] ^ 0x90));
  v90 = v6[9] ^ 0xD2;
  v91 = (v11 - 1647);
  *(v7 - 128) = v91;
  LODWORD(v10) = ((v89 ^ 0x7F) << 16) | (((*(v83 + (v6[v91] ^ 0x80)) - 9) ^ 0x31) << 24);
  v92 = *(v7 - 176) ^ v86 ^ 0x76E4D1F9 ^ (((v82[v88[6] ^ 8] ^ (v88[6] + (~(2 * v88[6]) | 0x51) - 40) ^ 0x19) << 8) | (((*(v83 + (v88[4] ^ 0xC5)) - 9) ^ 0xFFFFFFFB) << 24) | v80[v88[7] ^ 0xFDLL] ^ 0xFF | ((*(v81 + (v88[5] ^ 0xF5)) ^ 0xCB) << 16));
  v93 = *(v7 - 168) ^ v85 ^ 0x4D036472 ^ (v80[v88[3] ^ 0x75] ^ 0x52 | (((*(v83 + (*v88 ^ 0xB0)) - 9) ^ 0x16) << 24) | ((*(v81 + (v88[1] ^ 0x93)) ^ 1) << 16) | ((v82[v88[2] ^ 0x1CLL] ^ (v88[2] + (~(2 * v88[2]) | 0x51) - 40) ^ 0x5D) << 8));
  LODWORD(v38) = *(v7 - 172) ^ v84 ^ 0xA24B29A ^ (v10 | ((v82[v88[14] ^ 5] ^ (v88[14] - ((2 * v88[14]) & 0xAE) - 41) ^ 0x99) << 8) | v80[v88[15] ^ 8] ^ 0xFF);
  LODWORD(v90) = *(v7 - 164) ^ v87 ^ 0x6769B69B ^ (v80[v88[11] ^ 9] ^ 0xF8 | ((*(v81 + v90) ^ 0xE9) << 16) | ((v82[v88[10] ^ 0xA9] ^ (v88[10] - ((2 * v88[10]) & 0xAE) - 41) ^ 0xC2) << 8) | (((*(v83 + (v88[8] ^ 2)) - 9) ^ 0xE2) << 24));
  v94 = *(&off_28407CFD0 + v17 - 1281) - 4;
  LODWORD(v10) = *&v94[4 * ((*(v7 - 176) ^ v86 ^ 0xD1F9 ^ (((v82[v88[6] ^ 8] ^ (v88[6] + (~(2 * v88[6]) | 0x51) - 40) ^ 0x19) << 8) | v80[v88[7] ^ 0xFDLL] ^ 0xFF)) >> 8)];
  v95 = *(&off_28407CFD0 + v17 - 1259) - 4;
  v96 = *(&off_28407CFD0 + (v17 ^ 0x550)) - 8;
  LODWORD(v10) = *&v96[4 * (v38 >> 24)] ^ v10;
  v97 = *(&off_28407CFD0 + v17 - 1251) - 4;
  v98 = *&v97[4 * v90] - 190468687;
  LODWORD(v80) = *&v94[4 * BYTE1(v93)] ^ *&v96[4 * BYTE3(v90)];
  LODWORD(v23) = (*&v97[4 * v38] - 541937675 - ((2 * *&v97[4 * v38] - 380937374) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v92)];
  LODWORD(v11) = (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v93)];
  v99 = *&v96[4 * HIBYTE(v92)] ^ *&v95[4 * BYTE2(v90)] ^ (*&v97[4 * v93] - 190468687);
  LODWORD(v11) = *&v94[4 * BYTE1(v90)] ^ *(v7 - 180) ^ (v11 + 1283085937 - ((2 * v11) & 0x98F4ACE2));
  v100 = *&v95[4 * BYTE2(v38)] ^ *(v7 - 188) ^ (*&v97[4 * v92] - 190468687) ^ ((v80 ^ 0x32E473E4) - 351468988 - 2 * ((v80 ^ 0x32E473E4) & 0x6B0D0245 ^ v80 & 1));
  LODWORD(v80) = *&v94[4 * BYTE1(v38)] ^ *(v7 - 184) ^ ((v99 ^ 0x959327D1) + 1283085937 - 2 * ((v99 ^ 0x959327D1) & 0x4C7A5679 ^ v99 & 8));
  LODWORD(v90) = v80 ^ 0xBF80DD5E;
  LODWORD(v38) = (v11 ^ 0xD7674CCB) >> 24;
  v101 = v198 ^ *&v95[4 * BYTE2(v93)] ^ v98 ^ 0x731FA71B ^ ((v10 ^ 0x32E473E4) - 351468988 - 2 * ((v10 ^ 0x32E473E4) & 0x6B0D0257 ^ v10 & 0x13));
  v102 = *&v97[4 * ((v198 ^ v95[4 * BYTE2(v93)] ^ v98) ^ 0x1B ^ ((v10 ^ 0xE4) + 68 - 2 * ((v10 ^ 0xE4) & 0x57 ^ v10 & 0x13)))];
  LODWORD(v91) = (v80 ^ 0xBF80DD5E) >> 24;
  v103 = *&v95[4 * ((v11 ^ 0xD7674CCB) >> 16)] ^ *&v96[4 * HIBYTE(v101)];
  v104 = *&v94[4 * ((v100 ^ 0xDD4) >> 8)] ^ (v102 + 1092617250 - ((2 * v102 - 380937374) & 0x98F4ACE2));
  LODWORD(v80) = *&v97[4 * (v80 ^ 0x48)];
  LODWORD(v80) = (v80 + 1933824838 - ((2 * v80 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * ((v100 ^ 0x16B10DD4) >> 24)];
  LODWORD(v80) = (v80 + 1283085937 - ((2 * v80) & 0x98F4ACE2)) ^ *&v94[4 * ((v11 ^ 0x4CCB) >> 8)];
  LODWORD(v11) = *&v97[4 * (v11 ^ 0xDD)];
  LODWORD(v11) = (v11 + 1092617250 - ((2 * v11 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v198 ^ *&v95[4 * BYTE2(v93)] ^ v98 ^ 0xA71B ^ ((v10 ^ 0x73E4) + 580 - 2 * ((v10 ^ 0x73E4) & 0x257 ^ v10 & 0x13))) >> 8)];
  LODWORD(v38) = *&v96[4 * v38] ^ (v104 + 2124293525 - ((2 * v104) & 0xFD3C4B2A));
  LODWORD(v10) = (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A)) ^ *&v96[4 * v91];
  LODWORD(v11) = *&v95[4 * ((v100 ^ 0x16B10DD4) >> 16)];
  v105 = v10 - 351468988 - ((2 * v10) & 0xD61A0488);
  LODWORD(v80) = *&v95[4 * BYTE2(v101)] ^ v196 ^ (v80 - 351468988 - ((2 * v80) & 0xD61A0488));
  LODWORD(v35) = __ROR4__(__ROR4__(*&v95[4 * BYTE2(v90)] ^ 0xB9AB301 ^ (v38 - 351468988 - ((2 * v38) & 0xD61A0488)), 5) ^ 0x50D2ECF9, 27);
  LODWORD(v10) = v194 ^ v35 ^ 0x6EDAF696;
  v106 = ((v103 ^ 0x959327D1) + 1283085937 - 2 * ((v103 ^ 0x959327D1) & 0x4C7A5675 ^ v103 & 4)) ^ v195 ^ *&v94[4 * BYTE1(v90)] ^ (*&v97[4 * (v100 ^ 0xC2)] - 190468687);
  v107 = v197 ^ v11 ^ 0x2201ECBC ^ v105;
  LODWORD(v38) = BYTE3(v10);
  v108 = *&v97[4 * (v80 ^ 0x37)];
  LODWORD(v23) = (v108 - 541937675 - ((2 * v108 - 380937374) & 0xD61A0488)) ^ *&v95[4 * (((v194 ^ v35) >> 16) ^ 0x45)];
  v109 = *&v96[4 * ((v80 ^ 0xD62C0A37) >> 24)] ^ *&v94[4 * BYTE1(v10)];
  LODWORD(v23) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v107)];
  LODWORD(v11) = *&v94[4 * ((v80 ^ 0xA37) >> 8)] ^ *&v95[4 * BYTE2(v107)];
  v110 = *&v96[4 * ((v106 ^ 0xFC47C039) >> 24)];
  LODWORD(v10) = *&v95[4 * (BYTE2(v80) ^ 0xB3)] ^ (*&v97[4 * ((v194 ^ v35) ^ 0x96)] - 190468687) ^ *&v96[4 * HIBYTE(v107)];
  LODWORD(v90) = *&v97[4 * (v106 ^ 0x39)] - 190468687;
  v111 = *&v94[4 * (BYTE1(v106) ^ 0x87)];
  v112 = ((v109 ^ 0x32E473E4) - 351468988 - 2 * ((v109 ^ 0x32E473E4) & 0x6B0D024C ^ v109 & 8)) ^ v189 ^ *&v95[4 * ((v106 ^ 0xFC47C039) >> 16)] ^ (*&v97[4 * v107] - 190468687);
  v113 = v191 ^ v110 ^ 0x61C6B6CD ^ (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A));
  LODWORD(v90) = ((v11 ^ 0xA7775435) + 2124293525 - 2 * ((v11 ^ 0xA7775435) & 0x7E9E259D ^ v11 & 8)) ^ v193 ^ *&v96[4 * v38] ^ v90;
  LODWORD(v10) = v111 ^ v192 ^ ((v10 ^ 0x959327D1) + 1283085937 - 2 * ((v10 ^ 0x959327D1) & 0x4C7A5673 ^ v10 & 2));
  BYTE2(v38) = BYTE2(v10) ^ 0x65;
  LODWORD(v80) = (v10 ^ 0x7D650C28) >> 24;
  v114 = *&v97[4 * (v90 ^ 0xDD)];
  v115 = *&v97[4 * (v10 ^ 0x28)];
  LODWORD(v23) = (v115 + 1933824838 + ((380937372 - 2 * v115) | 0x2C3B4D5) + 1) ^ *&v96[4 * ((v112 ^ 0x7F82DAABu) >> 24)];
  LODWORD(v23) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * (((v90 ^ 0x35DF) >> 8) ^ 0x79)];
  v116 = (v114 + 1092617250 - ((2 * v114 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v113)];
  LODWORD(v10) = *&v94[4 * (BYTE1(v10) ^ 0x4B)] ^ 0xA7775435 ^ *&v95[4 * (BYTE2(v90) ^ 0x67)];
  LODWORD(v11) = *&v95[4 * ((v112 ^ 0x7F82DAABu) >> 16)] ^ (v116 - 351468988 - ((2 * v116) & 0xD61A0488));
  v117 = v10 + 2124293525 - ((2 * v10) & 0xFD3C4B2A);
  LODWORD(v10) = *&v95[4 * BYTE2(v38)] ^ 0x959327D1 ^ *&v96[4 * (BYTE3(v90) ^ 0xBD)] ^ (*&v97[4 * v113] - 190468687);
  LODWORD(v11) = *&v96[4 * v80] ^ v188 ^ (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A));
  LODWORD(v80) = v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2);
  LODWORD(v10) = *&v95[4 * BYTE2(v113)] ^ v187 ^ (v23 - 351468988 - ((2 * v23) & 0xD61A0488));
  LODWORD(v23) = v11 ^ 0x66654B3E;
  v118 = v117 ^ v186 ^ *&v96[4 * HIBYTE(v113)] ^ (*&v97[4 * (v112 ^ 0xBD)] - 190468687);
  LODWORD(v80) = v190 ^ *&v94[4 * ((v112 ^ 0xDAAB) >> 8)] ^ 0xE82DABD ^ v80;
  v119 = v80 >> 24;
  BYTE2(v112) = BYTE2(v10) ^ 0x80;
  v120 = (v11 ^ 0x66654B3E) >> 24;
  LODWORD(v11) = *&v97[4 * (v11 ^ 0x28)];
  LODWORD(v38) = *&v96[4 * v120];
  v121 = (*&v97[4 * v80] + 1092617250 - ((2 * *&v97[4 * v80] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v118 ^ 0xE61F) >> 8)];
  LODWORD(v38) = (v121 + 2124293525 - ((2 * v121) & 0xFD3C4B2A)) ^ v38;
  v122 = *&v95[4 * BYTE2(v23)];
  LODWORD(v11) = (v11 + 1092617250 - ((2 * v11 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v80)];
  LODWORD(v11) = (v11 - 351468988 - ((2 * v11) & 0xD61A0488)) ^ *&v95[4 * (BYTE2(v118) ^ 0x91)];
  LODWORD(v23) = *&v96[4 * ((v118 ^ 0x880EE61F) >> 24)] ^ 0xF9992A21 ^ *&v94[4 * BYTE1(v23)];
  LODWORD(v80) = *&v95[4 * BYTE2(v80)] ^ 0x2BEAE880;
  LODWORD(v80) = v80 + v23 - 2 * (v80 & v23);
  LODWORD(v23) = *&v96[4 * ((v10 ^ 0xA480DD5E) >> 24)];
  LODWORD(v90) = *&v97[4 * (v118 ^ 0x1F)];
  LODWORD(v90) = (v90 - 541937675 - ((2 * v90 - 380937374) & 0xD61A0488)) ^ v122;
  LODWORD(v90) = (v90 + 2124293525 - ((2 * v90) & 0xFD3C4B2A)) ^ *&v96[4 * v119];
  v123 = *&v94[4 * ((v10 ^ 0xDD5E) >> 8)];
  v124 = v90 + 1283085937 - ((2 * v90) & 0x98F4ACE2);
  LODWORD(v10) = (*&v97[4 * (v10 ^ 0x48)] - 190468687) ^ v182 ^ v80;
  LODWORD(v90) = v23 ^ v183 ^ (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A));
  LODWORD(v11) = v123 ^ v185 ^ v124;
  v125 = v184 ^ *&v95[4 * BYTE2(v112)] ^ 0x84654B28 ^ (v38 - 351468988 - ((2 * v38) & 0xD61A0488));
  v126 = *&v97[4 * (v10 ^ 0x7E)];
  v127 = *&v97[4 * ((v123 ^ v185 ^ v124) ^ 0xDD)];
  v128 = *&v95[4 * (BYTE2(v11) ^ 0x67)] ^ *&v96[4 * (BYTE3(v10) ^ 0x30)] ^ (*&v97[4 * (v90 ^ 0x6E)] - 190468687);
  v129 = (v127 + 1933824838 - ((2 * v127 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v125)];
  LODWORD(v80) = (v129 - 351468988 - ((2 * v129) & 0xD61A0488)) ^ *&v95[4 * (((v90 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v130 = *&v95[4 * BYTE2(v125)] ^ (v126 - 541937675 - ((2 * v126 - 380937374) & 0xD61A0488));
  LODWORD(v23) = *&v95[4 * (BYTE2(v10) ^ 0xEE)] ^ (*&v97[4 * v125] - 190468687) ^ *&v96[4 * ((v90 ^ 0xD0C9FB6E) >> 24)];
  v131 = *&v94[4 * (BYTE1(v10) ^ 0xC3)];
  LODWORD(v38) = v80 + 1283085937 - ((2 * v80) & 0x98F4ACE2);
  LODWORD(v10) = (v130 + 2124293525 - ((2 * v130) & 0xFD3C4B2A)) ^ *&v96[4 * ((v11 >> 24) ^ 0x5F)];
  LODWORD(v80) = v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2);
  LODWORD(v10) = *&v94[4 * (BYTE1(v11) ^ 0x4C)] ^ HIDWORD(v180) ^ ((v23 ^ 0x959327D1) + 1283085937 - 2 * ((v23 ^ 0x959327D1) & 0x4C7A5677 ^ v23 & 6));
  v132 = ((v128 ^ 0x959327D1) + 1283085937 - 2 * ((v128 ^ 0x959327D1) & 0x4C7A567F ^ v128 & 0xE)) ^ v180 ^ *&v94[4 * BYTE1(v125)];
  v133 = *&v94[4 * (BYTE1(v90) ^ 0xBC)] ^ HIDWORD(v181) ^ v80;
  v134 = v181 ^ v131 ^ 0x9A674CDD ^ v38;
  LODWORD(v38) = (*&v97[4 * v134] + 1092617250 - ((2 * *&v97[4 * v134] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v133 ^ 0xDAAB) >> 8)];
  LODWORD(v11) = (v38 - 351468988 - ((2 * v38) & 0xD61A0488)) ^ *&v95[4 * ((v132 ^ 0xBFC6B6DB) >> 16)];
  v135 = v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A);
  LODWORD(v11) = *&v94[4 * BYTE1(v134)] ^ *&v96[4 * ((v132 ^ 0xBFC6B6DB) >> 24)] ^ (*&v97[4 * (v10 ^ 0xE)] - 190468687);
  v136 = *&v96[4 * ((v133 ^ 0x2982DAAB) >> 24)] ^ *&v94[4 * (BYTE1(v10) ^ 0x2A)];
  LODWORD(v80) = *&v96[4 * HIBYTE(v134)] ^ *&v94[4 * ((v132 ^ 0xB6DB) >> 8)];
  v137 = v132 ^ 0xCD;
  v138 = (v136 ^ 0x32E473E4) - 351468988 - 2 * ((v136 ^ 0x32E473E4) & 0x6B0D0256 ^ v136 & 0x12);
  v139 = *&v97[4 * (v133 ^ 0xBD)] - 190468687;
  v140 = *&v95[4 * ((v133 ^ 0x2982DAAB) >> 16)] ^ v178 ^ ((v11 ^ 0x32E473E4) - 351468988 - 2 * ((v11 ^ 0x32E473E4) & 0x6B0D0247 ^ v11 & 3));
  v141 = HIDWORD(v179) ^ *&v95[4 * BYTE2(v134)] ^ (*&v97[4 * v137] - 190468687) ^ 0x2674CDD ^ v138;
  v142 = v179 ^ v66 ^ *&v96[4 * (BYTE3(v10) ^ 0xA6)] ^ 0xAF54BB9B ^ v135;
  LODWORD(v10) = v179 ^ *&v95[4 * (BYTE2(v10) ^ 0xB3)] ^ v139 ^ 0x2BE67D3F ^ ((v80 ^ 0x32E473E4) - 351468988 - 2 * ((v80 ^ 0x32E473E4) & 0x6B0D025F ^ v80 & 0x1B));
  LODWORD(v80) = *&v97[4 * (v140 ^ 0x8A)];
  LODWORD(v23) = (*&v97[4 * v142] - 541937675 - ((2 * *&v97[4 * v142] - 380937374) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v141)];
  LODWORD(v38) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v10)];
  v143 = *&v96[4 * ((v140 ^ 0x44E9778Au) >> 24)];
  LODWORD(v11) = *&v96[4 * BYTE3(v10)] ^ *&v94[4 * ((v140 ^ 0x778A) >> 8)];
  v144 = *&v97[4 * v141];
  LODWORD(v23) = *&v94[4 * BYTE1(v141)] ^ (*&v97[4 * (v10 ^ 0x16)] - 190468687) ^ *&v96[4 * HIBYTE(v142)];
  LODWORD(v80) = *&v96[4 * HIBYTE(v141)] ^ (v80 + 1933824838 - ((2 * v80 - 380937374) & 0xFD3C4B2A));
  v145 = *&v95[4 * (BYTE2(v140) ^ 0x76)];
  LODWORD(v10) = (v80 - 351468988 - ((2 * v80) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v10)];
  v146 = *&v95[4 * BYTE2(v142)] ^ v73 ^ (v144 - 190468687) ^ ((v11 ^ 0x32E473E4) - 351468988 - 2 * ((v11 ^ 0x32E473E4) & 0x6B0D025C ^ v11 & 0x18));
  LODWORD(v90) = v143 ^ HIDWORD(v176) ^ (v38 + 2124293525 - ((2 * v38) & 0xFD3C4B2A));
  v147 = HIDWORD(v177) ^ *&v94[4 * BYTE1(v142)] ^ 0x26E67D29 ^ (v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2));
  LODWORD(v10) = v179 ^ v66 ^ v73 ^ v145 ^ 0xA254BB9B ^ ((v23 ^ 0x32E473E4) - 351468988 - 2 * ((v23 ^ 0x32E473E4) & 0x6B0D0255 ^ v23 & 0x11));
  LODWORD(v80) = (v90 ^ 0x4BE2758) >> 24;
  v148 = *&v97[4 * (v146 ^ 0x49)];
  LODWORD(v23) = (*&v97[4 * v147] + 1092617250 - ((2 * *&v97[4 * v147] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v90 ^ 0x2758) >> 8)];
  LODWORD(v90) = (v148 - 541937675 - ((2 * v148 - 380937374) & 0xD61A0488)) ^ *&v95[4 * (BYTE2(v90) ^ 0x21)];
  LODWORD(v90) = (v90 + 2124293525 - ((2 * v90) & 0xFD3C4B2A)) ^ *&v96[4 * BYTE3(v10)];
  LODWORD(v23) = (v23 - 351468988 - ((2 * v23) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v10)];
  v149 = *&v96[4 * (HIBYTE(v146) ^ 0xEF)];
  LODWORD(v11) = *&v97[4 * ((v143 ^ BYTE4(v176) ^ (v38 - 107 - ((2 * v38) & 0x2A))) ^ 0x58)];
  LODWORD(v11) = (v11 + 1933824838 - ((2 * v11 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v147)];
  LODWORD(v11) = (v11 + 1283085937 - ((2 * v11) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v10)];
  LODWORD(v10) = *&v94[4 * (BYTE1(v146) ^ 0xEB)] ^ (*&v97[4 * v10] - 190468687) ^ *&v96[4 * v80];
  LODWORD(v97) = *&v95[4 * BYTE2(v147)] ^ v175 ^ ((v10 ^ 0x32E473E4) - 351468988 - 2 * ((v10 ^ 0x32E473E4) & 0x6B0D024F ^ v10 & 0xB));
  LODWORD(v10) = *&v95[4 * (BYTE2(v146) ^ 3)];
  v150 = *&v94[4 * BYTE1(v147)] ^ HIDWORD(v175) ^ (v90 + 1283085937 - ((2 * v90) & 0x98F4ACE2));
  LODWORD(v11) = v10 ^ v76 ^ (v11 - 351468988 - ((2 * v11) & 0xD61A0488));
  LODWORD(v80) = v76 ^ v73 ^ v149 ^ (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A));
  LODWORD(v90) = v80 ^ 0xBD9E3C06;
  LODWORD(v96) = v11 ^ 0xB0693C07;
  v151 = *(v7 - 136);
  v152 = *(&off_28407CFD0 + v151 - 1271) - 12;
  LODWORD(v23) = *&v152[4 * ((v76 ^ v73 ^ v149 ^ (v23 - 107 - ((2 * v23) & 0x2A))) ^ 7)];
  v153 = *(&off_28407CFD0 + (v151 ^ 0x5BF)) - 4;
  LODWORD(v80) = *&v153[4 * ((v80 >> 24) ^ 0xD2)];
  v154 = 1909043885 * v80 - ((59991386 * v80 + 18354992) & 0x1EE0BD3E);
  v155 = *(&off_28407CFD0 + (v151 ^ 0x516));
  LODWORD(v80) = *(v155 + 4 * ((v150 ^ 0xFAB5) >> 8));
  HIDWORD(v35) = v80 ^ 0x24E6661;
  LODWORD(v35) = v80 ^ 0xC0000000;
  LODWORD(v11) = (v35 >> 28) ^ (*&v152[4 * (v97 ^ 0x16)] - 927715928) ^ (1909043885 * *&v153[4 * ((v11 >> 24) ^ 0xDF)] - 259257960);
  v156 = *(v155 + 4 * ((v97 ^ 0xF016) >> 8));
  HIDWORD(v35) = v156 ^ 0x24E6661;
  LODWORD(v35) = v156 ^ 0xC0000000;
  v157 = v35 >> 28;
  v158 = *(v155 + 4 * BYTE1(v90));
  LODWORD(v80) = v23 - ((2 * v23 + 292051792) & 0x1EE0BD3E);
  HIDWORD(v35) = v158 ^ 0x24E6661;
  LODWORD(v35) = v158 ^ 0xC0000000;
  v159 = *(&off_28407CFD0 + v151 - 1208) - 4;
  v160 = *&v159[4 * ((v150 ^ 0x422CFAB5) >> 16)];
  v161 = *&v159[4 * ((v97 ^ 0xF6BCF016) >> 16)];
  LODWORD(v10) = (v35 >> 28) ^ (*&v152[4 * (v150 ^ 0xB5)] - 927715928);
  LODWORD(v152) = *&v152[4 * v96];
  LODWORD(v90) = *&v159[4 * BYTE2(v90)];
  v162 = *&v159[4 * (BYTE2(v96) ^ 0xF7)];
  LODWORD(v96) = *(v155 + 4 * BYTE1(v96));
  v163 = *(v7 - 160);
  v164 = *&v153[4 * (HIBYTE(v150) ^ 0x2D)];
  LODWORD(v159) = *&v153[4 * ((v97 >> 24) ^ 0x99)];
  HIDWORD(v35) = v96 ^ 0x24E6661;
  LODWORD(v35) = v96 ^ 0xC0000000;
  LODWORD(v97) = v172 ^ v90 ^ (v11 + 259022495 - ((2 * v11) & 0x1EE0BD3E));
  LODWORD(v153) = v160 ^ v173 ^ v157 ^ (v152 - 927715928) ^ (v154 - 235465);
  LODWORD(v95) = (v80 - 668693433) ^ HIDWORD(v172) ^ v161 ^ (1909043885 * v164 - 259257960) ^ (v35 >> 28);
  v165 = HIDWORD(v172) ^ v175 ^ v162 ^ (1909043885 * v159 - 259257960) ^ (v10 + 259022495 - ((2 * v10) & 0x1EE0BD3E));
  v166 = *(&off_28407CFD0 + (v151 ^ 0x58C));
  v88[10] = *(v166 + (BYTE1(v95) ^ 0x79)) ^ 0x1E;
  v167 = *(&off_28407CFD0 + (v151 ^ 0x56A)) - 12;
  v88[13] = v167[BYTE2(v165) ^ 0xF0] ^ 0xF9;
  v168 = *(&off_28407CFD0 + v151 - 1247);
  v88[15] = (*(v168 + ((BYTE4(v172) ^ v175 ^ v162 ^ (-83 * v159 - 104) ^ (v10 - 97 - ((2 * v10) & 0x3E))) ^ 0x45)) + 127) ^ 0x8F;
  v88[6] = *(v166 + (BYTE1(v153) ^ 0x1BLL)) ^ 0xE2;
  v88[1] = v167[BYTE2(v97) ^ 0x3ELL] ^ 0x9F;
  v169 = *(&off_28407CFD0 + v151 - 1273) - 8;
  *(v163 + *(v7 - 128)) = v169[HIBYTE(v165) ^ 0x41] ^ 0x27;
  v88[8] = v169[(v95 >> 24) ^ 0xB6] ^ 0xE1;
  v88[3] = (*(v168 + (v97 ^ 0xDFLL)) + 127) ^ 0x17;
  v88[14] = *(v166 + (BYTE1(v165) ^ 0x5ELL)) ^ 0xA3;
  v88[11] = (*(v168 + (v95 ^ 0x54)) + 127) ^ 0x67;
  v88[2] = *(v166 + (BYTE1(v97) ^ 0x13)) ^ 0xEE;
  LODWORD(v152) = *(v7 - 116);
  v88[7] = (*(v168 + (v153 ^ 0xDELL)) + 127) ^ 0x84;
  v88[5] = v167[BYTE2(v153) ^ 0x7ALL] ^ 0x58;
  *v88 = v169[(v97 >> 24) ^ 0xB5] ^ 1;
  v88[9] = v167[BYTE2(v95) ^ 0x6FLL] ^ 0x2A;
  v88[4] = v169[(v153 >> 24) ^ 0x49] ^ 0x75;
  v170 = (v152 + 55618448) < HIDWORD(v173);
  if (HIDWORD(v173) < 0x350AB80 != (v152 + 55618448) < 0x350AB80)
  {
    v170 = HIDWORD(v173) < 0x350AB80;
  }

  return (*(*(v7 - 152) + 8 * (v151 ^ (4 * !v170))))(HIDWORD(v173), v175, 223, v162, 153, 38692449, v160, &off_28407CFD0, a2, a3, a4, v172, v173, v83, v82, v81, v174, v175, v176, v177, v178, v179, v180, v181);
}

uint64_t sub_22D32DD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 17336))(a19 + a20, 0x100004077774924);
  v29 = (*(v27 + 17952))();
  *v28 = v29;
  v30 = v29 ^ (v29 >> 30);
  v31 = (v30 ^ 0x85F5489E) + 175377777;
  v32 = 1812433253 * (((v30 ^ 0x2469CBC0) - 1410822609) ^ v31 ^ ((v30 ^ 0xA19C835E) + 773703345)) + 1980334518;
  v28[1] = v32;
  return (*(v27 + 8640))(v32, *(v27 + 8640), v31, 1812433253, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v26, a22, a23, a24, a25, a26);
}

uint64_t sub_22D32DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v22 - 112) = &a17;
  *(v22 - 120) = v18 - ((v22 - 128 + v19 - 2 * ((v22 - 128) & v19)) ^ 0x9F83A128) * v20 - 196;
  *(v22 - 128) = &a15;
  v23 = (*(v17 + 8 * (v18 + 748)))(v22 - 128);
  return (*(v17 + 8 * ((((*(v22 - 104) + v21) < 0xC25D1D16) * ((v18 - 1058483744) & 0x3F172EFD ^ 0x402)) ^ v18)))(v23);
}

uint64_t sub_22D32DFA0(int a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v12 = *(v9 + 8);
  v13 = *(v12 + 4 * v11 - 4) ^ (v7 + a2 + 307 - 1307);
  *(v12 + 4 * (a6 - 1)) = ((v13 >> v8) & a4 | (a7 ^ a1) & ~(v13 >> v8)) ^ a1;
  return (*(v10 + 8 * (((v11 > 1) * a5) ^ a2)))();
}

uint64_t sub_22D32DFA8@<X0>(int a1@<W8>)
{
  v5 = *(v3 + a1 * v2 + 36);
  LODWORD(STACK[0x348]) = v5;
  v6 = v5 - 71658207;
  v8 = v6 > -1889536993 && v6 < SLODWORD(STACK[0x2D8]);
  return (*(v4 + 8 * ((v8 * (((v1 + 864) | 8) + ((v1 - 108) | 0x380) - 1489)) ^ v1)))();
}

uint64_t sub_22D32E010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x2E0]) = a7;
  v12 = v7 ^ 0x69;
  LODWORD(STACK[0x1898]) = v8;
  LODWORD(STACK[0x189C]) = -800765707;
  v13 = *(v10 + 8 * ((v7 ^ 0x69) - 801));
  STACK[0x2D0] = v13;
  LODWORD(STACK[0x4E8]) = *v13 - 513152;
  v14 = *(v10 + 8 * (v7 ^ 0x36E));
  STACK[0x2D8] = v14;
  v15 = *v14;
  v16 = STACK[0x2A8];
  LODWORD(v14) = STACK[0x2A8] + v12 + 1255647160;
  *(v11 - 216) = v12 + 1255647160 - STACK[0x2A8];
  *(v11 - 212) = v14 - 52;
  *(v11 - 184) = v16;
  *(v11 - 180) = v14 - 3;
  *(v11 - 176) = -2030745604 - v16 + v12;
  STACK[0x2C8] = v15;
  *(v11 - 208) = v16;
  *(v11 - 192) = v15 + v16;
  v17 = (*(v9 + 8 * (v12 ^ 0xB71)))(v11 - 216);
  return (*(v9 + 8 * *(v11 - 200)))(v17);
}

void sub_22D32E170(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24) - 1785193651 * ((-2 - ((a1 | 0xD15DBABD) + (~a1 | 0x2EA24542))) ^ 0x3D7EA962);
  v2 = *(a1 + 16);
  if (*(v2 + 4) - 1726767306 >= 0)
  {
    v3 = *(v2 + 4) - 1726767306;
  }

  else
  {
    v3 = 1726767306 - *(v2 + 4);
  }

  if (*(*(a1 + 8) + 4) - 1726767306 >= 0)
  {
    v4 = *(*(a1 + 8) + 4) - 1726767306;
  }

  else
  {
    v4 = 1726767306 - *(*(a1 + 8) + 4);
  }

  v8 = v1 + 50899313 * (((&v7 | 0xEF6AF04F) - &v7 + (&v7 & 0x10950FB0)) ^ 0x270B3419) + 383;
  v7 = v2;
  v5 = *(&off_28407CFD0 + v1 - 767) - 8;
  (*&v5[8 * v1 + 11488])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_22D32E2E0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = v3 + 1065;
  v7 = (*(v5 + 8 * ((v3 + 377) ^ 0xA30)))(**(a1 + 8 * (v3 - 360)), *v4, (v3 + 1065 + v2 + *(v4 + 8)));
  *(v4 + 31) = (&a2 ^ 0xBA) * (&a2 + 17);
  *(v4 + 30) = (&a2 ^ 0xBB) * (&a2 + 18);
  return (*(v5 + 8 * ((3531 * (((v6 - 961) | 0x410) == 1556)) ^ v6)))(v7);
}

uint64_t sub_22D32E380(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v36 = *(&a19 + v31 + 72);
  v37 = ((2 * v31) & 0xCABDFBF8) + (v31 ^ 0xE55EFDFC) + v32;
  *(a1 + v37) = v36 ^ 0x4E;
  *(a1 + v37 + 1) = ((v36 >> ((v33 ^ (a4 + 57)) + v35)) ^ 0x51) + ~(2 * (((v36 >> ((v33 ^ (a4 + 57)) + v35)) ^ 0x51) & 0x3A ^ (v36 >> ((v33 ^ (a4 + 57)) + v35)) & 8)) + 51;
  *(a1 + v37 + 2) = (BYTE2(v36) ^ 0x65) - ((2 * (BYTE2(v36) ^ 0x65)) & 0x64) + 50;
  *(a1 + v37 + 3) = (HIBYTE(v36) ^ 0x56) - 2 * ((HIBYTE(v36) ^ 0x56) & 0x33 ^ HIBYTE(v36) & 1) + 50;
  return (*(v34 + 8 * (((8 * (v31 + 4 < a31)) | ((v31 + 4 < a31) << 7)) ^ v33)))();
}

uint64_t sub_22D32E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v6 - 1;
  *(a2 + v10) = *(a5 + v10) - (v7 & (2 * *(a5 + v10))) + 50;
  return (*(v9 + 8 * (((((v5 + 101) ^ (v10 == 0)) & 1) * v8) ^ (v5 - 165))))();
}

uint64_t sub_22D32E590@<X0>(int a1@<W8>)
{
  v9.val[0].i64[0] = (v4 - v5 - 1) & 0xF;
  v9.val[0].i64[1] = (v4 - v5 + 14) & 0xF;
  v9.val[1].i64[0] = (v4 - v5 + 13) & 0xF;
  v9.val[1].i64[1] = (v4 - v5 + 12) & 0xF;
  v9.val[2].i64[0] = (v4 + a1 - 117 + 25 - v5) & 0xF;
  v9.val[2].i64[1] = (v4 - v5 + 10) & 0xF;
  v9.val[3].i64[0] = (v4 - v5 + 9) & 0xF;
  v9.val[3].i64[1] = (v4 - v5) & 0xF ^ 8;
  *(v4 + v7 - 8 - v5) = veor_s8(veor_s8(veor_s8(*(v1 + v9.val[0].i64[0] - 7), *(v4 + v7 - 8 - v5)), veor_s8(*(v2 + v9.val[0].i64[0] - 7), *(v9.val[0].i64[0] + v3 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v9, xmmword_22D5B62E0), 0x7373737373737373)));
  return (*(v6 + 8 * ((435 * (8 - (v4 & 0x18) != -v5)) ^ (a1 - 1408))))(xmmword_22D5B62E0);
}

uint64_t sub_22D32E7E4(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 + 1578)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1501)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 12) = v5;
  return result;
}

uint64_t sub_22D32E8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, int a14, int a15, char *a16, uint64_t a17, char *a18)
{
  v22 = 50899313 * ((-355700510 - (&a14 | 0xEACC70E2) + (&a14 | 0x15338F1D)) ^ 0xDD524B4B);
  a17 = v18;
  a18 = &a10;
  a14 = v22 ^ 0x4892673;
  a15 = (v21 + 530) ^ v22;
  a16 = &a13;
  v23 = (*(v19 + 8 * (v21 ^ 0x8FF)))(&a14);
  return (*(v19 + 8 * ((239 * (((v21 - 100) ^ (*(v18 + 24) == v20)) & 1)) ^ v21)))(v23);
}

uint64_t sub_22D32E998(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v17 = v16 + 4 * v13;
  a6.i64[0] = *(v17 + 4);
  a6.i32[2] = *(v17 + 12);
  v18 = vextq_s8(a1, a6, 0xCuLL);
  v19 = a6;
  v19.i32[3] = *(v16 + 4 * (v13 + 4));
  v20 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v19, a3), vandq_s8(v18, a2)), 1uLL), *(v16 + 4 * (v10 + v13)));
  v18.i32[0] = *(v11 + 4 * (*(v17 + 4) & 1));
  v18.i32[1] = *(v11 + 4 * (*(v17 + 8) & 1));
  v18.i32[2] = *(v11 + 4 * (*(v17 + 12) & 1));
  v18.i32[3] = *(v11 + 4 * (v19.i8[12] & 1));
  *v17 = veorq_s8(vaddq_s32(vsubq_s32(v20, vandq_s8(vaddq_s32(v20, v20), a4)), a5), v18);
  return (*(v15 + 8 * (((v13 == 220) * v12) ^ (a10 + v14 + 454))))();
}

uint64_t sub_22D32EE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t *a13, char a14, uint64_t a15)
{
  v22 = 1361651671 * ((2 * (&a10 & 0x7D199048) - &a10 - 2098827338) ^ 0x51C49F3A);
  a14 = (((((v21 - 116) & 0xEF ^ 0x32) + (*(v15 + 52) ^ v20 ^ 0xEB)) ^ ((*(v15 + 52) ^ v20 ^ 0x9F) + 97) ^ ((v21 ^ *(v15 + 52) ^ v20 ^ 0x90) - 59)) + 116) ^ (-41 * ((2 * (&a10 & 0x48) - &a10 - 74) ^ 0x3A));
  a15 = v18;
  a13 = &a9;
  a10 = v22 - 542128598 + v19;
  a11 = v21 - v22 + 244;
  v23 = (*(v17 + 8 * (v21 + 2117)))(&a10);
  return (*(v17 + 8 * ((7 * (a12 != v16)) ^ v21)))(v23);
}

uint64_t sub_22D32EFBC(uint64_t a1, int a2)
{
  v5 = v4 ^ ((a2 - 1362) | 0x4A) ^ 0x4B2BD4BD;
  v6 = ((a2 + 1259021863) & 0xB4F4D7EB ^ 0x1E3AAB8C) + v3;
  v7 = v6 < 0x91F074A2;
  v8 = v6 > v5 - 1846512478;
  if (v7 != v5 > 0x6E0F8B5D)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(v2 + 8 * ((211 * !v9) ^ a2)))();
}

uint64_t sub_22D32F108(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 20) - 18429 * ((2 * (result & 0x51F9) - result - 20986) ^ 0x2353);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x1CA;
  v3 = v2 ^ 0xCA;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -1783123828;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xB9A8FAF53120727DLL;
    *(v1 + 80) = 0x4657050ACEDF8D82;
    *(v1 + 92) = v4;
  }

  *(result + 16) = -1797458203;
  return result;
}

uint64_t sub_22D32F1C8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  v14 = (a1 - 1022613214) & 0xFB041CFF;
  v15 = a1 + v11;
  a10 = (a1 + 1411914099) ^ (1037613739 * (((&a10 | 0xF6A5DD78) - &a10 + (&a10 & 0x95A2280)) ^ 0x27A7F007));
  v16 = (*(v13 + 8 * (a1 ^ 0x41EFB25Cu)))(&a10);
  return (*(v13 + 8 * ((1488 * (a11 == v12 + v14 - 190)) ^ v15)))(v16);
}

void sub_22D32F27C(uint64_t a1)
{
  v1 = *(a1 + 4) - 742307843 * ((2 * (a1 & 0x782C26B9) - a1 + 131324230) ^ 0x19F15413);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22D32F344(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v9 = (v5 - 1034) | 0x102;
  *v6 = a1;
  *a5 = v12 ^ (a4 - 46) ^ v9;
  v10 = (v9 ^ 0x781) - 430;
  v15 = (v9 ^ 0x781) - (((&v15 | 0xA385B145) - &v15 + (&v15 & 0x5C7A4EB8)) ^ 0x2E28D3A9) * v7 - 123;
  v16 = v14;
  (*(v8 + 8 * ((v9 ^ 0x781) + 553)))(&v15);
  v15 = v10 - ((((2 * &v15) | 0xA1D710E8) - &v15 + 789870476) ^ 0x5D46EA98) * v7 + 307;
  v16 = v13;
  (*(v8 + 8 * (v10 + 983)))(&v15);
  return 0;
}

uint64_t sub_22D32F528@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 50;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_22D32F55C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 622577687;
  v4 = *(a1 + 12) + 2000315973 + ((v2 - 565) | 0x180);
  v5 = v3 < 0x98D18DD3;
  v6 = v3 > v4;
  if (v5 != v4 < 0x98D18DD3)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((!v6 * (((v2 - 1106) | 0xC) - 551)) ^ v2)))();
}

void sub_22D32F61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1785193651 * ((((v18 - 128) | 0xD50291B3) - ((v18 - 128) & 0xD50291B3)) ^ 0xC6DE7D93);
  *(v18 - 128) = &a15;
  *(v18 - 120) = v17 - v19 + 418;
  *(v18 - 116) = ((v17 + 945464124) & 0xC7A55DE1) - v19 + (v15 ^ 0x7F9F5A5B) + ((2 * v15) & 0xFF3EB4B6) - 285365355;
  (*(v16 + 8 * (v17 + 1485)))(v18 - 128);
  JUMPOUT(0x22D32F6C8);
}

uint64_t sub_22D32F75C()
{
  v7 = v4 ^ 0x970;
  v8 = v5 + v3;
  v9 = (v3 - 1) & 0xF;
  v10 = v0 - v3 + v9 + 1;
  v11 = v0 + v9 + 1;
  v12 = v1 + ((v7 + 1658827935) & 0x9D204BFE ^ 0x1E6) - v3 + v9;
  v13 = v9 + ((v7 + 204) | 0xC3u) + v1 - 719;
  v14 = v9 + v2 + 6;
  v16 = v11 > v5 && v10 < v8;
  if (v12 < v8 && v13 > v5)
  {
    v16 = 1;
  }

  v19 = v14 > v5 && v14 - v3 < v8 || v16;
  return (*(v6 + 8 * ((13 * v19) ^ v7)))();
}

uint64_t sub_22D32F894@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((230 * (((v4 == 1726767306) ^ (v3 - 115)) & 1)) ^ v3)))();
}

uint64_t sub_22D32F8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = STACK[0x210];
  STACK[0x300] = STACK[0x210] + 2353;
  STACK[0x2E0] = a18 + 49;
  STACK[0x2D8] = v21 + 2333;
  STACK[0x2D0] = a18 + 29;
  STACK[0x2C8] = v21 + 2313;
  STACK[0x290] = a18 + 9;
  return (*(v19 + 8 * (v18 - 865)))();
}

uint64_t sub_22D32FA54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v23 = a22 + 1444258570 > a14;
  if (a14 < 0x5615A2CA != a22 + 1444258570 < (((a4 + 1221) | 0x14) ^ 0x5615A459u) + a4 + 514)
  {
    v23 = a22 + 1444258570 < (((a4 + 1221) | 0x14) ^ 0x5615A459u) + a4 + 514;
  }

  return (*(v22 + 8 * ((23 * !v23) ^ (a4 + 1577))))(100, 1263);
}

uint64_t sub_22D32FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 136) = &a14;
  *(v18 - 128) = v15 + 742307843 * ((v18 - 136) ^ 0x1E228D55) + 222;
  *(v18 - 120) = v16;
  v19 = (*(v14 + 8 * (v15 ^ 0xD7C)))(v18 - 136);
  return (*(v14 + 8 * (((((v15 - 217321054) & 0xCF40FF3) - 1844) * (v17 != 1)) ^ v15)))(v19);
}

uint64_t sub_22D32FB54@<X0>(uint64_t a1@<X8>)
{
  v5[0] = v2;
  v5[1] = a1;
  v6 = (v3 + 1532) ^ (1564307779 * ((2 * (v5 & 0x3E624C38) - v5 + 1100854209) ^ 0xD6907FD2));
  return (*(v1 + 8 * (v3 + 1945)))(v5);
}

uint64_t sub_22D32FBB8()
{
  result = (*(v2 + 8 * (v3 + 1834)))(*v4);
  *v1 = 0;
  *v0 = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 56) = 1470670864;
  return result;
}

void sub_22D32FBFC(int a1@<W8>)
{
  v4 = a1 - 57;
  if (((STACK[0x2C8] - v4) | (v4 - STACK[0x2C8])) > ((2 * v4) ^ 0x3A4) - 933)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = 0x80000000;
  }

  *v2 = v5 + (v4 ^ 1);
  (*(v1 + 8 * (v4 ^ 0x89F)))(v3);
  JUMPOUT(0x22D32FC6CLL);
}

uint64_t sub_22D32FF5C(void *a1)
{
  if (a1[4])
  {
    v4 = (a1[5] | a1[7]) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((((v2 ^ v5) & 1) * (((v1 - 1577540389) & 0x5E0757D7) - 966)) | v1)))();
}

uint64_t sub_22D32FFB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = (((a5 - 447) | 0x148) ^ (v5 + 1735)) - a2;
  if (v6 > v8)
  {
    v8 = v6;
  }

  return (*(v7 + 8 * (((16 * (v8 > 0x7FFFFFFE)) | (32 * (v8 > 0x7FFFFFFE))) ^ a5)))();
}

void sub_22D32FFFC(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) + 143681137 * ((((2 * a1) | 0x9F3C2B94) - a1 + 811723318) ^ 0x1B390990);
  v2 = *a1;
  v4[0] = (50899313 * (((v4 | 0xA0E9AF53) - v4 + (v4 & 0x5F1650A8)) ^ 0x68886B05)) ^ (v1 - 114);
  v5 = v2;
  v3 = *(&off_28407CFD0 + (v1 ^ 0x41B)) - 8;
  (*&v3[8 * (v1 ^ 0xC02)])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D33022C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 128) = &a15;
  *(v20 - 120) = v17 + 742307843 * ((((v20 - 128) | 0xD746F9BB) + (~(v20 - 128) | 0x28B90644)) ^ 0xC96474EF) + 618;
  *(v20 - 112) = &a17;
  v21 = (*(v18 + 8 * (v17 ^ 0xCF0)))(v20 - 128);
  return (*(v18 + 8 * (v17 | (8 * (v19 == (v17 ^ 0x751) - 767)))))(v21);
}

uint64_t sub_22D330590(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = (*(v14 + 4 * v13) ^ v9) + v10 + a4 * (*(*(v11 + 8) + a2) ^ v9);
  *(v14 + 4 * v13) = v9 + ((a7 - 1223) ^ v12) - 42 + 4 * ((a7 - 1223) ^ v12) + v15 - ((v8 + 930) & (2 * v15)) - 2088;
  return (*(v7 + 8 * ((a7 - 1223) | (30 * (a5 == 0)))))();
}

uint64_t sub_22D330630()
{
  v6 = 1388665877 * (((((v5 - 216) | 0xA00D7E8) ^ 0xFFFFFFFE) - (~(v5 - 216) | 0xF5FF2817)) ^ 0x78524AFB);
  v7 = v6 - 129332923 + *(v4 + 52);
  v8 = LODWORD(STACK[0x234]) - v6 - 1915567360;
  *(v5 - 208) = v3;
  *(v5 - 200) = &STACK[0x5D0];
  *(v5 - 216) = ((v2 ^ 0x1AE3AF49) - 409087040 + ((v2 << (((v0 ^ 0xD7) + 45) ^ 0x82)) & 0x35C75E92)) ^ v6;
  *(v5 - 212) = v7;
  *(v5 - 184) = v8;
  *(v5 - 192) = (v0 - 101) ^ v6;
  *(v5 - 176) = STACK[0x2B0];
  v9 = (*(v1 + 8 * (v0 ^ 0x87D)))(v5 - 216);
  v10 = *(v5 - 188);
  LODWORD(STACK[0x504]) = v10;
  return (*(v1 + 8 * ((428 * (v10 == -1261164275)) ^ v0)))(v9);
}

uint64_t sub_22D330B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v19 - 120) = (v15 + 461) ^ (1564307779 * ((((v19 - 136) | 0x83C8834) - (v19 - 136) + ((v19 - 136) & 0xF7C377C8)) ^ 0x9F314427));
  *(v19 - 136) = a15;
  *(v19 - 128) = v18;
  v20 = (*(v17 + 8 * (v15 ^ 0xDBA)))(v19 - 136);
  return (*(v17 + 8 * (((v16 < 1) * (((v15 - 1125) | 0x434) - 106)) ^ (v15 - 981))))(v20);
}

uint64_t sub_22D330C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  v43 = (*(v41 + 8 * (v40 + 652)))(3);
  v44 = *(&off_28407CFD0 + v40 - 1425);
  *v44 = v43;
  v45 = v44;
  v74 = v44;
  (*(v41 + 8 * (v40 + 627)))();
  v46 = (*(v41 + 8 * (v40 + 652)))(66);
  v47 = *(&off_28407CFD0 + v40 - 1524);
  *v47 = v46;
  (*(v41 + 8 * (v40 + 627)))();
  v48 = (*(v41 + 8 * (v40 ^ 0xEF4)))(2);
  v49 = *(&off_28407CFD0 + v40 - 1507);
  *(v49 - 4) = v48;
  *v48 = 7196;
  **v47 = 0;
  **(&off_28407CFD0 + (v40 & 0xE971F971)) = 0;
  v50 = *(v49 - 4);
  v51 = *v47;
  v52 = *v45;
  v51[64] = 1;
  v53 = *(&off_28407CFD0 + (v40 ^ 0x689));
  *v53 = 51;
  v51[9] = -15;
  v50[1] = 79;
  v54 = *(&off_28407CFD0 + v40 - 1435);
  *v54 = 80;
  v72 = *(&off_28407CFD0 + v40 - 1574);
  *v72 = -77;
  *v50 = -22;
  v51[11] = 73;
  *v52 = 68;
  v51[20] = -44;
  v73 = *(&off_28407CFD0 + v40 - 1570);
  *v73 = -121;
  v51[36] = -11;
  v51[45] = -113;
  v51[49] = 25;
  *(v52 + 1) = 6695;
  v71 = *(&off_28407CFD0 + v40 - 1518);
  *v71 = -122;
  v55 = *(&off_28407CFD0 + (v40 ^ 0x634));
  *v55 = 88;
  v51[26] = -34;
  v51[60] = -5;
  v56 = *(&off_28407CFD0 + v40 - 1530);
  *v56 = 96;
  v70 = *(&off_28407CFD0 + v40 - 1491);
  *v70 = 80;
  v57 = *(&off_28407CFD0 + (v40 ^ 0x6AE));
  *v57 = 17;
  v58 = *(&off_28407CFD0 + v40 - 1563);
  *v58 = 119;
  v51[52] = 47;
  v51[50] = 102;
  v51[59] = -59;
  v51[22] = -36;
  v51[29] = 59;
  v51[27] = 34;
  v51[40] = -80;
  v51[13] = 23;
  v59 = *(&off_28407CFD0 + (v40 ^ 0x6AD));
  *v59 = 99;
  v51[53] = 3;
  v60 = *(&off_28407CFD0 + (v40 ^ 0x695));
  *v60 = -109;
  v51[39] = 54;
  v51[57] = 73;
  v61 = *(&off_28407CFD0 + (v40 ^ 0x6AA));
  *v61 = 83;
  v51[37] = -52;
  v51[63] = -72;
  v62 = *v47;
  *(v62 + 65) = -85;
  *(v62 + 5) = -14;
  *(v62 + 54) = 32;
  *(v62 + 58) = 113;
  *(v62 + 8) = 16909;
  *(v62 + 28) = -39;
  *(v62 + 47) = -4065;
  *(v62 + 21) = 15;
  *(v62 + 41) = -29527;
  *(v62 + 38) = -121;
  *(v62 + 31) = 8824;
  *(v62 + 10) = -98;
  *(v62 + 7) = 27031;
  *(v62 + 23) = -86;
  *(v62 + 14) = -90;
  *(v62 + 62) = -105;
  *(v62 + 35) = 52;
  *(v62 + 33) = 15089;
  *(v62 + 55) = -30385;
  *(v62 + 4) = -92;
  *(v62 + 30) = 36;
  *(v62 + 25) = 69;
  *(v62 + 46) = -17;
  *(v62 + 15) = 72;
  *(v62 + 51) = -15;
  *(v62 + 12) = -15;
  *(v62 + 61) = 73;
  *(v62 + 9) = -9761;
  *(v62 + 43) = 19744;
  *(v62 + 6) = 45;
  *(v62 + 24) = -72;
  v63 = *(&off_28407CFD0 + v40 - 1567);
  v69 = v47;
  v64 = *v47;
  v68 = *(v49 - 4);
  if (a40 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = a40;
  }

  v65 = ((((*(v64 + 22) << 32) | (*(v64 + 60) << 8) | (*(v64 + 27) << 16) | *(v64 + 59) | (*(v64 + 53) << 24) | (*(v64 + 37) << 40) | (((*(v63 + 5 + (((*(v64 + 57) >> 3) | (32 * *(v64 + 57))) ^ 0xF3)) ^ 0xBC) + 74) << 48)) ^ 0x93D812DCFFCE36E9) & ~(*(v64 + 29) << 56) | (*(v64 + 29) << 56) & 0x6C00000000000000) ^ 0xD8357849CB3291E6;
  LODWORD(a18) = *v64;
  return (*(v41 + 8 * (((v40 + 17) | 0x1A6) ^ 0x71C)))(0, ((v40 + 17) | 0x1A6) ^ 0x71Cu ^ ((-35 * (((((*v70 >> 6) | (4 * *v70)) ^ 0xED) + *(v63 + 266 + (((*v70 >> 6) | (4 * *v70)) ^ 0x94)) - 103) ^ 0x85)) | (*(*v74 + 2) << 8) | (*(v64 + 11) << 16) | (*(v64 + 50) << 24) | (((*(v63 + 5 + (((*v71 >> 3) | (32 * *v71)) ^ 0xF3)) ^ 0xBC) + 74) << 32) | (*(v64 + 26) << 48)) ^ ((*v72 << 56) | (*(v64 + 45) << 40)) ^ 0x1EA4F2EFA3F5C341, v66 - 1, v63 + 5, *(v42 - 176), v65, 0, ((((v40 + 17) | 0x1A6) ^ 0x71C) - 1886214389) & 0x706D5FEE, *v74, v63 + 5, v68, *(&off_28407CFD0 + v40 - 1567), v59, v63 + 266, v61, v64, v58, a18, v60, v55, v53, a22, v57, a24, v69, a26, v56, v70, v71, v72, v54, v73);
}

uint64_t sub_22D3318F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = &a17;
  *(v22 - 120) = v19;
  *(v22 - 128) = v21 - ((2 * ((v22 - 136) & 0x4D83B6D8) - (v22 - 136) + 847005985) ^ 0xE6DB557B) * v20 + 1099;
  v23 = (*(v18 + 8 * (v21 ^ 0x87B)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 112) > v17) * ((v21 + 542) ^ 0x168)) ^ v21)))(v23);
}

uint64_t sub_22D33198C@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W8>)
{
  v12 = v10 < v9;
  *(a4 + a6) = *(a5 + v6) - (a1 & (2 * *(a5 + v6))) + 50;
  v13 = v6 + 1;
  if (v12 == v13 > v8 + 22)
  {
    v12 = v13 + v9 < v10;
  }

  return (*(v11 + 8 * ((v12 * ((v7 + a2) & a3 ^ 0x10)) ^ v7)))();
}

void sub_22D3319F4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 1657355148)
  {
    v2 = 1346;
  }

  else
  {
    v2 = 1347;
  }

  __asm { BRAA            X8, X17 }
}

void sub_22D331D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v25 - 128) = v22 - ((((v25 - 144) | 0x75476BBF) - (v25 - 144) + ((v25 - 144) & 0x8AB89440)) ^ 0xDA60E9A7) * v23 + 118;
  *(v25 - 120) = a12;
  *(v25 - 112) = &a22;
  *(v25 - 104) = v24;
  *(v25 - 144) = &a18;
  *(v25 - 136) = &a18;
  JUMPOUT(0x22D314D8CLL);
}

uint64_t sub_22D331DFC@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v8 = v3 - 1;
  STACK[0x4B0] = v8;
  *(a1 + v8) = (((v2 + 42) ^ v5) + a2) * (a2 ^ v6);
  return (*(v7 + 8 * (((STACK[0x4B0] == 0) * v4) ^ v2)))();
}

uint64_t sub_22D331E58@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>)
{
  v10 = (v8 + v7 + a2);
  v11 = vaddq_s8(vsubq_s8(*(a1 + v7 + 16), vandq_s8(vaddq_s8(*(a1 + v7 + 16), *(a1 + v7 + 16)), a3)), a4);
  *v10 = vaddq_s8(vsubq_s8(*(a1 + v7), vandq_s8(vaddq_s8(*(a1 + v7), *(a1 + v7)), a3)), a4);
  v10[1] = v11;
  return (*(v9 + 8 * ((94 * ((v6 ^ 0x3FA) + v7 != v4)) ^ (v5 + 930))))();
}

uint64_t sub_22D3326A0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 319;
  v5 = (*(v3 + 8 * (v2 ^ 0xBCB)))(*STACK[0x280], a2, LODWORD(STACK[0x56C]));
  return (*(v3 + 8 * ((((((v4 - 971) | 1) + 407) ^ 0x21E) * (LODWORD(STACK[0x52C]) != -1261164275)) ^ v4)))(v5);
}

uint64_t sub_22D332808@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xBF8));

  return v3(v1);
}

uint64_t sub_22D332920@<X0>(int a1@<W5>, unsigned int a2@<W8>)
{
  v4 = STACK[0x4C8] + a2;
  v5 = STACK[0x5A8];
  STACK[0x3D8] = *(v3 + 8 * v2);
  STACK[0x5B8] = v5;
  STACK[0x5C0] = v4;
  v6 = STACK[0x4F8];
  v7 = (&STACK[0x5E0] + STACK[0x4F8]);
  STACK[0x5C8] = v7;
  STACK[0x4F8] = v6 + 320;
  LODWORD(STACK[0x4C0]) = *(v5 + 72);
  LODWORD(STACK[0x438]) = *(v5 + 76);
  LODWORD(STACK[0x34C]) = *(v5 + 80);
  LODWORD(STACK[0x390]) = *(v5 + 84);
  v8 = *(v5 + 96);
  if (v8 == 2)
  {
    v13 = (STACK[0x340] + 238) | 9;
    LODWORD(STACK[0x41C]) = *(v5 + 88);
    return sub_22D3111D8(a1, v13);
  }

  else
  {
    if (v8 != 1)
    {
      JUMPOUT(0x22D311A50);
    }

    v9 = STACK[0x340] + 164;
    v10 = (STACK[0x340] - 114) ^ *(v4 + (a1 + 1664233392));
    v11 = ((*(v4 + (a1 + 1664233394)) ^ 0x32) << 16) | ((*(v4 + (a1 + 1664233395)) ^ 0x32) << 24) | v10 | ((*(v4 + (a1 + 1664233393)) ^ 0x32) << 8);
    *v7 = v11 - 1261164275 - 2 * (v11 & 0x34D4291D ^ v10 & 0x10);
    return (*(v3 + 8 * ((22 * ((a1 + 1664233396) < 0x40)) ^ v9)))();
  }
}

uint64_t sub_22D332938(__n128 a1)
{
  a1.n128_u16[0] = 12850;
  a1.n128_u8[2] = 50;
  a1.n128_u8[3] = 50;
  a1.n128_u8[4] = 50;
  a1.n128_u8[5] = 50;
  a1.n128_u8[6] = 50;
  a1.n128_u8[7] = 50;
  return sub_22D332960(19, a1);
}

uint64_t sub_22D332960@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v9 = (v6 + v4 + a2);
  *v9 = a3;
  v9[1] = a3;
  return (*(v8 + 8 * (((((v5 + 947) ^ v7) + v4 != v3) * a1) ^ v5)))();
}

uint64_t sub_22D332A30@<X0>(int a1@<W8>)
{
  v8 = v2 + 1;
  v9 = v1 < v3;
  *(*(v6 + 8) + 4 * v8) = *(*(v6 + 8) + 4 * (v8 + a1));
  if (v9 == v8 + v5 < v3)
  {
    v9 = v8 + v5 < v1;
  }

  return (*(v7 + 8 * ((240 * v9) ^ v4)))();
}

uint64_t sub_22D332AE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((505 * (((v3 + 28) ^ (v5 == 0)) & 1)) ^ (v3 - 1466))))();
}

void sub_22D332D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a69 + 1560) = *STACK[0x380];
  *(a69 + 1552) = *STACK[0x3E0];
  v69 = STACK[0x400];
  *(*STACK[0x400] + 488) = *(a68 + 8);
  *(*v69 + 480) = *a68;
  JUMPOUT(0x22D332E1CLL);
}

uint64_t sub_22D332E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, uint64_t a16, int a17, int a18, uint64_t *a19, int a20, unsigned int a21, char *a22, int a23, int *a24, int *a25, uint64_t a26)
{
  a18 = 313566482;
  v29 = 1082434553 * ((((2 * &a19) | 0x5E86226C) - &a19 - 792924470) ^ 0xB404E7BC);
  a23 = v29 + v27 + 164;
  a19 = &a16;
  a25 = &a18;
  a26 = a16;
  a22 = &a14;
  a24 = &a15;
  a21 = a15 + v29 + ((v27 + 1050) ^ 0xE067424E);
  v30 = (*(v28 + 8 * (v27 ^ 0x8BB)))(&a19);
  return (*(v28 + 8 * ((1202 * (a20 == -1261164275)) ^ v27)))(v30, v26);
}

uint64_t sub_22D332F54()
{
  v0.n128_u64[0] = 0x6464646464646464;
  v0.n128_u64[1] = 0x6464646464646464;
  v1.n128_u64[0] = 0x3232323232323232;
  v1.n128_u64[1] = 0x3232323232323232;
  return sub_22D332F74(v0, v1);
}

uint64_t sub_22D332F74@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v11 = ~v10 + v7;
  v12 = *(v6 + v11 - 15);
  v13 = *(v6 + v11 - 31);
  v14 = a3 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a4)), a5);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a4)), a5);
  return (*(v5 + 8 * (((v10 + v9 - 1319 == v8) * a2) ^ (a1 + 109))))();
}

uint64_t sub_22D333128@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 ^ 0x4C58F5F8) & (2 * ((((v3 + 173157022) & 0xF5ADD6B5) + v4) & v2)) ^ (((v3 + 173157022) & 0xF5ADD6B5) + v4) & v2;
  v6 = ((2 * (v2 ^ 0x4E997738)) ^ 0xBFF70590) & (v2 ^ 0x4E997738) ^ (2 * (v2 ^ 0x4E997738)) & 0xDFFB82C8;
  v7 = (v6 ^ 0x8F930088) & (4 * v5) ^ v5;
  v8 = ((4 * (v6 ^ 0x40088248)) ^ 0x7FEE0B20) & (v6 ^ 0x40088248) ^ (4 * (v6 ^ 0x40088248)) & 0xDFFB82C8;
  v9 = (v8 ^ 0x5FEA0208) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x801180C8)) ^ 0xFFB82C80) & (v8 ^ 0x801180C8) ^ (16 * (v8 ^ 0x801180C8)) & 0xDFFB82C0;
  v11 = v9 ^ 0xDFFB82C8 ^ (v10 ^ 0xDFB80048) & (v9 << 8);
  v12 = (v11 << 16) & 0x5FFB0000 ^ v11 ^ ((v11 << 16) ^ 0x2C80000) & (((v10 ^ 0x438248) << 8) & 0x5FFB0000 ^ 0x4790000 ^ (((v10 ^ 0x438248) << 8) ^ 0x7B820000) & (v10 ^ 0x438248));
  v13 = 843532609 * (((v15 ^ 0x8310404 | 0xE5CAF05B) + (v15 ^ 0xA080F053 | 0x1A350FA4)) ^ 0xF4FCA0D3);
  v15[0] = v2 ^ v13 ^ (2 * v12) ^ 0xAB0017CD;
  v15[1] = v13 + v3 - 455;
  v16 = a1;
  return (*(v1 + 8 * (v3 + 1321)))(v15);
}

uint64_t sub_22D333394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = STACK[0x210] + 2048;
  LODWORD(STACK[0x3EC]) = 2;
  STACK[0x3D0] = 0;
  LODWORD(STACK[0x56C]) = 0;
  LODWORD(STACK[0x4EC]) = 0;
  return (*(v38 + 8 * ((((a8 ^ 0x982) + 507 + 2 * (a8 ^ 0x982) - 1856) * ((v37 & 2) == 0)) ^ a8)))(a1, a2, a3, a4, a5, v39, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_22D3333E8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x448];
  v69 = 1388665877 * ((2 * ((v67 - 216) & 0x6BE96988) - (v67 - 216) + 337024627) ^ 0x99BBF49F);
  *(v67 - 200) = (((v66 - 1560316752) & 0x5D008FEF) + 1291687299 * LODWORD(STACK[0x430]) + 52142365) ^ v69;
  *(v67 - 208) = v68;
  *(v67 - 216) = a65;
  *(v67 - 164) = (21 * ((2 * ((v67 + 40) & 0x88) - (v67 + 40) + 115) ^ 0x9F)) ^ 0x4E;
  *(v67 - 192) = STACK[0x2B8];
  *(v67 - 184) = &STACK[0x484];
  *(v67 - 172) = ((a1 ^ 0x53FF9297) + (a1 << ((v66 + 106) ^ 0x38)) - 1082986501) ^ v69;
  *(v67 - 168) = v69 + v66 - 547;
  *(v67 - 160) = STACK[0x2C0];
  v70 = (*(v65 + 8 * (v66 + 1544)))(v67 - 216);
  v71 = *(v67 - 176);
  LODWORD(STACK[0x504]) = v71;
  return (*(v65 + 8 * ((1416 * (v71 == -1261164275)) ^ v66)))(v70);
}

uint64_t sub_22D333590()
{
  v6 = (v4 + v0 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v3 + 8 * ((((v1 & 0x30) == 16) * (v2 + 767)) ^ v2)))();
}

uint64_t sub_22D3337C8(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v5 < v4;
  v8 = v3 + 1;
  if (v7 == v8 > (a3 + 789) - 2780777873u)
  {
    v7 = v8 + v4 < v5;
  }

  return (*(v6 + 8 * ((!v7 * ((5 * (a3 ^ 0xAF)) ^ 0x547)) ^ a3)))();
}

uint64_t sub_22D333830@<X0>(int a1@<W5>, int a2@<W8>)
{
  v9 = *(v3 + 4 * (a1 + v4 - 8)) ^ *(v3 + 4 * (a1 + v4 - 3)) ^ *(v3 + 4 * (a1 + v4 - 14)) ^ *(v3 + 4 * (a1 + v4 - 16));
  HIDWORD(v10) = v9 ^ v6;
  LODWORD(v10) = v9;
  *(v3 + 4 * (v2 + a1)) = (17 * (a2 ^ v8)) ^ v5 ^ (v10 >> 31);
  return (*(v7 + 8 * ((((v2 + 1 + a1) > 0x4F) | (4 * ((v2 + 1 + a1) > 0x4F))) ^ a2)))();
}

uint64_t sub_22D3338AC()
{
  v3 = v2 - 10;
  v4 = *(v0 + 16) - 984075518;
  v5 = *(v0 + 12) + (v2 ^ 0x1776D6C9);
  v6 = v5 < 0x390DF8C6;
  v7 = v4 < v5;
  if (v4 < 0x390DF8C6 != v6)
  {
    v7 = v6;
  }

  return (*(v1 + 8 * ((22 * ((v3 ^ v7) & 1)) ^ v3)))();
}

uint64_t sub_22D333958(uint64_t a1, uint64_t a2, int a3)
{
  v9 = v6 + ((v5 - 67305833) & 0x6C67FF36) + 113;
  v11 = (v8 & (2 * (*(a2 + 9) - 1))) + ((*(a2 + 9) - 1) ^ v7) == ((v5 - 58917034) & 0x6BE7FE77) + a3 && v3 + 6 < v9;
  return (*(v4 + 8 * ((1750 * v11) ^ v5)))();
}

uint64_t sub_22D3339D4()
{
  v2 = STACK[0x340] - 769;
  v3 = STACK[0x530];
  STACK[0x458] = *(v1 + 8 * (STACK[0x340] - 845));
  v4 = STACK[0x2D0];
  STACK[0x5A8] = v3;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v4;
  return (*(v1 + 8 * ((11 * ((((v2 + 457) ^ ((((v2 + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v3 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_22D333AF0()
{
  *(v7 - 120) = v2;
  *(v7 - 136) = v4;
  *(v7 - 128) = v0 + 742307843 * (((v3 | 0x7A386143) - (v3 & 0x7A386143)) ^ 0x641AEC16) + 339;
  v8 = (*(v1 + 8 * (v0 + 825)))(v7 - 136);
  return (*(v1 + 8 * (((v5 - 748) * (v6 == 1)) ^ v0)))(v8);
}

uint64_t sub_22D333B70(uint64_t result)
{
  v1 = 143681137 * ((((2 * result) | 0xF321E7EF3978BF1ALL) - result - 0x7990F3F79CBC5F8DLL) ^ 0x68E871F0481B43D7);
  v2 = *(result + 8) + v1;
  v3 = *(result + 40) - v1;
  v4 = *(result + 20) + 143681137 * ((((2 * result) | 0x3978BF1A) - result + 1665376371) ^ 0x481B43D7);
  v5 = v3 < v2;
  v6 = v3 < v2;
  if ((*(result + 24) + 143681137 * ((((2 * result) | 0x3978BF1A) - result + 1665376371) ^ 0x481B43D7)))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    v4 = *(result + 28) ^ (143681137 * ((((2 * result) | 0x3978BF1A) - result + 1665376371) ^ 0x481B43D7));
  }

  *(result + 16) = v4 ^ (*result + 143681137 * ((((2 * result) | 0x3978BF1A) - result + 1665376371) ^ 0x481B43D7));
  return result;
}

uint64_t sub_22D333C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13, int a14, int a15, uint64_t a16, char *a17, int a18)
{
  v21 = 742307843 * (((&a13 | 0xFF78C668) - &a13 + (&a13 & 0x873990)) ^ 0xE15A4B3D);
  a13 = v21 - 1023075469;
  a15 = v19 - v21 - 1197043046;
  a18 = v21 ^ 0x233D6C96;
  a16 = a9;
  a17 = &a11;
  v22 = (*(v18 + 8 * (v19 ^ 0xAAC)))(&a13);
  return (*(v18 + 8 * (((a14 == v20) * (2 * (v19 ^ 0x229) + 1667)) ^ v19)))(v22);
}

void sub_22D333D78(uint64_t a1)
{
  v1 = *(a1 + 28) + 1785193651 * ((2 * (a1 & 0xBB308A28) - a1 + 1154446807) ^ 0x571399F7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22D333E4C(uint64_t a1, uint64_t a2)
{
  v2 = (qword_27D9FC1D8 ^ qword_27D9FC1B0) - &v8;
  qword_27D9FC1B0 = 1010482283 * v2 + 0x5450BF49BFD4E907;
  qword_27D9FC1D8 = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  v3 = *(a2 + 4);
  v4 = 107 * ((qword_27D9FC1D8 - (107 * v2 + 7)) ^ 0xF9);
  v5 = *(&off_28407CFD0 + (v4 ^ byte_22D5AF1D0[byte_22D5A9F30[v4] ^ 0xCD]) - 1) - 8;
  if (v3 == 1657355151)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 1657355158)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X2, X17 }
  }

  return 4294925278;
}

uint64_t sub_22D3341F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = *v26;
  v31 = *(v26 + 48);
  *(v28 - 172) = (a1 - 1047) | 0x24A;
  *(v28 - 112) = veorq_s8(*v30, xmmword_22D5B62C0);
  *(v28 - 184) = v27;
  if (v27)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v32;
  v34 = *(v29 + 8 * ((7 * v33) ^ a1));
  *(v28 - 176) = -42900;
  return v34(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22D334410@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  if (v9)
  {
    v12 = a9 == v10;
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || a3 == 0;
  return (*(v11 + 8 * ((82 * ((v14 ^ (a1 + 58)) & 1)) ^ a1)))();
}

uint64_t sub_22D3344BC(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v41 = *(&a25 + v37 + 72);
  v42 = ((v37 << ((v39 - a3 - 35) ^ (a4 - 1))) & 0xBBBFDFD8) + (v37 ^ 0x5DDFEFEF) + v38;
  *(a1 + v42) = (HIBYTE(v41) ^ 0x56) - ((2 * (HIBYTE(v41) ^ 0x56)) & 0x64) + 50;
  *(a1 + v42 + 1) = (BYTE2(v41) ^ 0x65) - ((2 * (BYTE2(v41) ^ 0x65)) & 0x64) + 50;
  *(a1 + v42 + 2) = (BYTE1(v41) ^ 0x51) - ((2 * (BYTE1(v41) ^ 0x51)) & 0x64) + 50;
  *(a1 + v42 + 3) = v41 ^ 0x4E;
  return (*(v40 + 8 * ((2291 * (v37 + 4 < a37)) ^ v39)))();
}

uint64_t sub_22D33460C(uint64_t a1)
{
  v1 = 1082434553 * (a1 ^ 0x9B47F68A);
  v2 = *(a1 + 16) ^ v1;
  v3 = *a1 + v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1726767306;
  v5 = v4 - 1726767306 < 0;
  v7 = 1726767306 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_28407CFD0 + v2 - 1803) + ((((v3 - 1610049664) >= (4 * v7)) * (((v2 - 187806071) & 0xB31AFF4) - 1431)) ^ v2) - 1))();
}

void sub_22D334718(int a1@<W8>)
{
  v3 = *(v2 + 4);
  v4 = ((v1 - 774024175) & 0x2E22AFDC ^ 0x45C) - a1;
  if (v3 + 420716342 >= 0)
  {
    v4 = a1;
  }

  *(v2 + 4) = v4 + v3;
  JUMPOUT(0x22D33477CLL);
}

uint64_t sub_22D33485C(uint64_t a1)
{
  v1 = 1785193651 * (((a1 | 0x265792B0) - a1 + (a1 & 0xD9A86D4F)) ^ 0x358B7E90);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) + v1;
  v5 = v4 + *(v3 + 68) - 1869595554;
  *(v3 + 68) = v5;
  v4 += 1304184109;
  v6 = v4 < 0xBD2C08CF;
  v7 = v5 - 1121187633 < v4;
  if (v6 != v5 > 0x42D3F730)
  {
    v7 = v6;
  }

  return (*(*(&off_28407CFD0 + v2 - 1479) + ((76 * v7) ^ v2) - 1))();
}

uint64_t sub_22D3349A4@<X0>(int a1@<W8>)
{
  if ((a1 + 712618036) <= 0x12 && ((1 << (a1 + 52)) & 0x50181) != 0)
  {
    return sub_22D34C458();
  }

  else
  {
    return (*(v3 + 8 * ((14 * ((*(v2 + 48 * v4 + 40) & 8) != 0)) ^ (v1 + 2108724001))))(4294925278);
  }
}

void sub_22D334A40(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(&off_28407CFD0 + (*(off_28407D240 + (*(off_28407D378 + (107 * ((qword_27D9FC1D8 + dword_27D9FC268) ^ 0xF9)) - 4) ^ 0xD6u) - 12) ^ (107 * ((qword_27D9FC1D8 + dword_27D9FC268) ^ 0xF9))) - 173);
  v4 = *(v3 - 4);
  v5 = off_28407D120 - 12;
  v6 = off_28407D1B8 - 4;
  v7 = *(&off_28407CFD0 + (*(off_28407D1B8 + (*(off_28407D120 + (107 * ((qword_27D9FC1D8 - v4) ^ 0xF9)) - 12) ^ 0x1Au) - 4) ^ (107 * ((qword_27D9FC1D8 - v4) ^ 0xF9))) - 89);
  v8 = &v10[*(v7 - 4) - v4];
  *(v3 - 4) = 1010482283 * v8 + 0x5450BF49BFD4E907;
  *(v7 - 4) = 1010482283 * (v8 ^ 0xABAF40B6402B16F9);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v8) = 742307843 * (&v12 ^ 0x1E228D55);
  v14 = 602092488 - v8;
  v13 = v11;
  v12 = -473373664 - v8;
  LODWORD(v7) = 1010482283 * ((*(v7 - 4) - *(v3 - 4)) ^ 0x402B16F9);
  v9 = *(&off_28407CFD0 + ((107 * (dword_27D9FC268 ^ 0xF9 ^ qword_27D9FC1D8)) ^ byte_22D5A9E30[byte_22D5B60C0[(107 * (dword_27D9FC268 ^ 0xF9 ^ qword_27D9FC1D8))] ^ 0x16]) - 136) - 8;
  (*&v9[8 * (v7 ^ v6[v5[v7] ^ 0x48]) + 16280])(&v12);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22D334CCC@<X0>(int a1@<W8>)
{
  v6 = (((v2 - 106) | 0x48) - 1073742170) & v1;
  v7 = *v3;
  v8 = *(v3 + 4) + a1;
  *(*v3 + v8) = (HIBYTE(v6) ^ 0x78) - 2 * ((HIBYTE(v6) ^ 0x78) & 0x36 ^ HIBYTE(v6) & 4) + 50;
  *(v7 + v8 + 1) = (BYTE2(v6) ^ 0x60) - 2 * ((BYTE2(v6) ^ 0x60) & 0x37 ^ BYTE2(v6) & 5) + 50;
  *(v7 + v8 + 2) = (BYTE1(v6) ^ 0x1C) - ((2 * (BYTE1(v6) ^ 0x1C)) & 0x64) + 50;
  *(v7 + v8 + 3) = v6 ^ 0x54;
  v9 = *v3;
  result = 3882538062;
  v11 = ((v5 ^ 0xE165D9AC) + 1374876175) ^ v5 ^ ((v5 ^ 0x9AF8015C) + 711928575) ^ ((v5 ^ 0x6308F342) - 744498975) ^ ((v5 ^ 0x57FDFFEF) - 412429234);
  v12 = ((2 * (a1 + *(v3 + 4) + 4)) & 0xB7FFFFFA) + ((a1 + *(v3 + 4) + 4) ^ 0x5BFFFFFD) - 1543503869;
  *(*v3 + v12) = (HIBYTE(v11) ^ 0x4F) - ((2 * (HIBYTE(v11) ^ 0x4F)) & 0x64) + 50;
  *(v9 + v12 + 1) = (BYTE2(v11) ^ 0x68) - 2 * ((BYTE2(v11) ^ 0x68) & 0x37 ^ BYTE2(v11) & 5) + 50;
  *(v9 + v12 + 2) = (BYTE1(v11) ^ 0xD4) - ((2 * (BYTE1(v11) ^ 0xD4)) & 0x64) + 50;
  *(v9 + v12 + 3) = ((v5 ^ 0xAC) + 15) ^ v5 ^ ((v5 ^ 0x5C) - 1) ^ ((v5 ^ 0x42) - 31) ^ ((v5 ^ 0xEF) + 78) ^ 0x6F;
  *(v3 + 4) = v4;
  return result;
}

uint64_t sub_22D334EF0@<X0>(uint64_t a1@<X8>)
{
  v11 = (*(*(v9 + 8) + 4 * v2) ^ v6) + v1;
  *(*(a1 + 8) + 4 * v2) = v11 + v6 - (((v3 ^ v4) + v8) & (2 * v11));
  return (*(v7 + 8 * (((v2 + 1 == v10) * v5) ^ v3)))();
}

uint64_t sub_22D334F44@<X0>(int a1@<W8>)
{
  v7 = (a1 & 0xDEF47D7E) + (v1 ^ 0x6F7A3EBF) + ((v3 - 1329) ^ 0xF6BDDA04);
  v8 = ((v6 - 144) ^ 0xAF278218) * v4;
  *(v6 - 144) = v8 + v3 - 1345;
  *(v6 - 136) = v5;
  *(v6 - 128) = v7 ^ v8;
  v9 = (*(v2 + 8 * (v3 + 371)))(v6 - 144);
  return (*(v2 + 8 * ((37 * (*(v6 - 140) != ((17 * (v3 ^ 0x703)) ^ 0xFA8B684))) ^ v3)))(v9);
}

uint64_t sub_22D335050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = v9;
  v11 = v9 + 1;
  *(a1 + v3 + 4) = *(*(a2 + 8) + v10);
  v12 = *(a2 + 4) + v6;
  v13 = v12 < v4;
  v14 = v11 + v4 < v12;
  if (v11 > v7 != v13)
  {
    v14 = v13;
  }

  return (*(a3 + 8 * ((!v14 * v8) ^ v5)))();
}

uint64_t sub_22D335058()
{
  v4 = ((v1 - 970349216) & 0x9D65BB4 ^ 0xFFFFFFFFFFFFFE6BLL) + v2;
  if (HIDWORD(v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = -2 - v0 >= v4;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((244 * (((v1 + 44) ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_22D335120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = 1785193651 * ((1530038460 - ((v13 - 160) | 0x5B3288BC) + ((v13 - 160) | 0xA4CD7743)) ^ 0xB7119B63);
  *(v13 - 144) = a11 - v14;
  *(v13 - 160) = (v12 + 1508) ^ v14;
  *(v13 - 152) = a4;
  v15 = (*(v11 + 8 * (v12 + 2225)))(v13 - 160);
  v16 = STACK[0x28C] & (7 * (v12 ^ 0x2E) + 35);
  *(&STACK[0x248] + v16) = -78;
  return (*(v11 + 8 * ((1787 * (v16 > (v12 ^ 0x2Eu) + 51)) ^ v12)))(v15);
}

uint64_t sub_22D336354(double a1, double a2, int8x16_t a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v16 = (v14 + (v11 + v9));
  v17 = *v16;
  v18 = v16[1];
  v19 = (v10 + v11);
  *v19 = vaddq_s8(vsubq_s8(v17, vandq_s8(vaddq_s8(v17, v17), a4)), a3);
  v19[1] = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a4)), a3);
  return (*(v13 + 8 * (((v11 == 32) * a9) ^ (v15 + v12 + 814))))();
}

void sub_22D336468()
{
  v3 = v1[623];
  if (v2 - (v0 + 1500582225) >= ((v0 + 1500581601) ^ (v0 + 1500582225)))
  {
    ++v3;
  }

  *v1 = v3;
  JUMPOUT(0x22D333D08);
}

uint64_t sub_22D3364E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v17 - 136) = &a14;
  *(v17 - 128) = a11;
  *(v17 - 120) = (v14 + 1257) ^ (1564307779 * ((2 * ((v17 - 136) & 0x1FF9FBD8) - (v17 - 136) + 1611007013) ^ 0xF70BC836));
  (*(v15 + 8 * (v14 ^ 0xA86)))(v17 - 136);
  *(v17 - 136) = a11;
  *(v17 - 128) = v14 - 143681137 * ((((2 * (v17 - 136)) | 0x83D3F7BC) - (v17 - 136) + 1041630242) ^ 0x154EE784) + 762;
  *(v17 - 120) = v16;
  v18 = (*(v15 + 8 * (v14 ^ 0xAAA)))(v17 - 136);
  return (*(v15 + 8 * ((90 * (*(v17 - 112) - 1135061088 >= ((v14 - 525) | 0x388) + ((v14 + 977) ^ 0xFA2A1507))) ^ v14)))(v18);
}

uint64_t sub_22D336678@<X0>(int a1@<W1>, unsigned int a2@<W7>, unsigned int a3@<W8>)
{
  v15 = (v11 + 4 * v12);
  v16 = HIDWORD(v8) + (*v15 ^ a3) + HIDWORD(v4) + a2 * (*(v6 + 4 * v12) ^ a3);
  *(v15 - 1) = v16 + a3 - ((v16 << (v7 & v13 ^ v14)) & a1);
  return (*(v9 + 8 * (((v12 + 1 != v3) * v5) ^ (v10 - 194))))();
}

uint64_t sub_22D3366E8@<X0>(int a1@<W2>, int a2@<W8>, int8x16_t a3@<Q1>, int8x16_t a4@<Q3>)
{
  v10 = (v9 + (v5 + v4));
  v11 = *v10;
  v12 = v10[1];
  v13 = (v6 + v5);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a4)), a3);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a4)), a3);
  return (*(v8 + 8 * (((v5 == 32) * v7) ^ (a1 + a2 + 672))))();
}

uint64_t sub_22D336744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, char a19, __int16 a20, char a21, __int16 a22, char a23)
{
  v27 = 1082434553 * ((-1760979050 - ((v26 - 152) | 0x97099796) + ((v26 - 152) | 0x68F66869)) ^ 0xF3B19EE3);
  *(v26 - 140) = (v24 ^ 0xC7) - 530103023 + v27 + v23;
  *(v26 - 136) = &a23;
  *(v26 - 128) = v27 + v24 + 34;
  *(v26 - 152) = &a16;
  *(v26 - 120) = &a21;
  *(v26 - 112) = &a19;
  *(v26 - 104) = a14;
  v28 = (*(v25 + 8 * (v24 + 1815)))(v26 - 152);
  return (*(v25 + 8 * ((1158 * (*(v26 - 144) == -1261164275)) ^ v24)))(v28);
}

uint64_t sub_22D336A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v25 = ((v24 - 1885941195) ^ 0x8F96D5F9) - 1710669959 + (((a23 ^ 0x22548063) - 575963235) ^ ((a23 ^ 0xAEFE0008) + 1359085560) ^ ((a23 ^ 0x387EA966) - 947826286 + ((v24 - 1885941195) & 0x70692F3F)));
  v26 = (v25 ^ 0x50E0C852) & (2 * (v25 & 0x1ACAE963)) ^ v25 & 0x1ACAE963;
  v27 = ((2 * (v25 ^ 0x54E1CA10)) ^ 0x9C5646E6) & (v25 ^ 0x54E1CA10) ^ (2 * (v25 ^ 0x54E1CA10)) & (a7 + 2);
  v28 = v27 ^ 0x42292111;
  v29 = (v27 ^ 0xC020200) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0x38AC8DCC) & v28 ^ (4 * v28) & a7;
  v31 = (v30 ^ 0x8280140) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x46032233)) ^ 0xE2B23730) & (v30 ^ 0x46032233) ^ (16 * (v30 ^ 0x46032233)) & a7;
  return (*(v23 + 8 * ((1016 * ((v25 ^ (2 * ((((v32 ^ 0xC090043) << 8) & 0x4E2B0000 ^ 0xA230000 ^ (((v32 ^ 0xC090043) << 8) ^ 0x2B230000) & (v32 ^ 0xC090043)) & (((v32 ^ 0x42222300) & (v31 << 8) ^ v31) << 16) ^ (v32 ^ 0x42222300) & (v31 << 8) ^ v31))) == a8)) ^ (v24 + 601))))(a1, a2, 905, a20);
}

uint64_t sub_22D336DC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = 4 * a4 - 0x19BB1832CLL;
  v10 = (((*(*(v4 + 8) + v9) ^ 0xB0C139F3) + 1329513997) ^ ((*(*(v4 + 8) + v9) ^ 0x5124F827) - 1361377319) ^ ((*(*(v4 + 8) + v9) ^ 0xA796E9F5) + (a3 ^ 0x58691481))) + v8;
  v11 = (((a3 ^ 0x12F4A901 ^ *(*(v5 + 8) + v9)) - 318024587) ^ ((*(*(v5 + 8) + v9) ^ 0x6BFBE882) - 1811671170) ^ ((*(*(v5 + 8) + v9) ^ 0x3F7C6B28) - 1065118504)) + v8;
  v12 = v10 < v7;
  v13 = v10 > v11;
  if (v12 != v11 < v7)
  {
    v13 = v12;
  }

  return (*(v6 + 8 * ((414 * v13) ^ a3)))();
}

uint64_t sub_22D336ED0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 1018));

  return v3(v1);
}

uint64_t sub_22D337498(_DWORD *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (1564307779 * ((213036865 - (a1 | 0xCB2AF41) + (a1 | 0xF34D50BE)) ^ 0x64409CAD));
  v2 = **(&off_28407CFD0 + (v1 + 875954275));
  v5 = v1 + 875954159 + 1785193651 * (((&v4 | 0xC658FE9D) + (~&v4 | 0x39A70162)) ^ 0xD58412BC) + 350;
  v4 = v2;
  return (*(*(&off_28407CFD0 + (v1 + 875954159)) + (v1 ^ 0xCBCA08BC) - 1))(&v4);
}

uint64_t sub_22D3375B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, unsigned int a8@<W8>, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = v12 + 55126177 < a12 - 1313418102;
  if ((a12 - 1313418102) < 0x34928A1 != v12 > 0xFCB6D75E)
  {
    v14 = (a12 - 1313418102) < 0x34928A1;
  }

  return (*(v13 + 8 * ((235 * (((a8 - 1) ^ v14) & 1)) ^ a8)))(55126177, a1, a2, a3, a4, a5, a6, a7);
}

void sub_22D337628()
{
  v0 = MEMORY[0x28223BE20]();
  v1 = *(v0 + 24) - 1388665877 * ((-1205643889 - (v0 | 0xB823558F) + (v0 | 0x47DCAA70)) ^ 0xCA71C89C);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22D3377D4(double a1, double a2, double a3, double a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9)
{
  v15 = (v14 + (v11 + v9));
  v16 = *v15;
  v17 = v15[1];
  v18 = (a9 + v11);
  *v18 = vaddq_s8(vsubq_s8(v16, vandq_s8(vaddq_s8(v16, v16), a5)), a7);
  v18[1] = vaddq_s8(vsubq_s8(v17, vandq_s8(vaddq_s8(v17, v17), a5)), a7);
  return (*(v13 + 8 * (((v11 + v10 - 969 == 85) * v12) ^ v10)))();
}

void sub_22D33812C(int a1)
{
  v3 = (((*(v2 - 132) ^ 0xDCA942A7) + 592887129) ^ ((*(v2 - 132) ^ 0x3C42646B) - 1010984043) ^ ((*(v2 - 132) ^ 0xB68E77B0) + 1232177232)) + (((v1 ^ 0x8D19D07) - 147954951) ^ ((v1 ^ 0x76EF80B7) - 1995407543) ^ (((((a1 - 1616053703) & 0x6CFFC7AE) + 464422474) ^ v1) - 677072076)) - 718988925;
  *(v2 - 132) = v3 ^ ((v3 ^ 0x89AC8057) + 1577650468) ^ ((v3 ^ 0xA1BC186E) + 1981387035) ^ ((v3 ^ 0x7FB7114D) - 1475176390) ^ ((v3 ^ 0x7FFDFFFF) - 1470597492) ^ 0x7E3F27F7;
  JUMPOUT(0x22D338294);
}

uint64_t sub_22D338A04()
{
  v4 = v0 - 1364881578;
  v5 = (v4 < 0xF1D611C3) ^ ((v3 - 1894984137) < 0xF1D611C3);
  v6 = v3 - 1894984137 > v4;
  if (v5)
  {
    v6 = (v3 - 1894984137) < 0xF1D611C3;
  }

  return (*(v1 + 8 * ((((v2 ^ 0x5C) - 490) * v6) ^ v2)))();
}

uint64_t sub_22D338A7C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (v7)
  {
    v9 = a6 == v6;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || a2 == 0;
  return (*(v8 + 8 * (((((a1 - 96) ^ v11) & 1) * (a1 - 1466)) ^ a1)))();
}

void sub_22D338C10(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a5 = v7;
  a6 = a1;
  a3 = v7;
  a4 = v8 + 843532609 * (&a3 ^ 0x5C4D5485) + 120;
  (*(v6 + 8 * (v8 ^ 0x806)))(&a3);
  JUMPOUT(0x22D338C54);
}

uint64_t sub_22D33AE10(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  HIDWORD(v15) = a1 ^ 0x665517C;
  LODWORD(v15) = a1 ^ 0x55555555;
  v16 = (v15 >> 27) + (a5 ^ v13 ^ v7 ^ v9) + (((a4 ^ 0xEC39EC75) + (v8 ^ 0x13C61692)) ^ ((a4 ^ 0xE40752AD) + 469282131) ^ ((a4 ^ 0x5E5BEFA4) - 1583083428)) - 1543282788 + (((*(v10 + 4 * (a7 + v12)) ^ 0xA7BBDDBA) + 1480860230) ^ ((*(v10 + 4 * (a7 + v12)) ^ 0xEBD6348E) + 338283378) ^ ((*(v10 + 4 * (a7 + v12)) ^ 0xF8B9C039) + 122044359));
  return (*(v11 + 8 * ((110 * (a7 + 1 == v14 + 40)) ^ v8)))(v16 ^ ((v16 ^ 0xD8AB9001) + 247174797) ^ ((v16 ^ 0x2F4A5839) - 111518027) ^ ((v16 ^ 0xE1F0CEB5) + 937478201) ^ ((v16 ^ 0x3FFEFFFF) - 370214541) ^ 0x7F8AA80E);
}

void sub_22D33B048()
{
  LODWORD(STACK[0x578]) = v0;
  STACK[0x3D8] = *(v2 + 8 * v1);
  JUMPOUT(0x22D33B058);
}

uint64_t sub_22D33B22C(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_22D33B288()
{
  v3 = 1082434553 * ((((v2 - 216) | 0x894769BB) - ((v2 - 216) & 0x894769BB)) ^ 0x12009F31);
  *(v2 - 184) = 0;
  *(v2 - 200) = &STACK[0x460];
  *(v2 - 208) = &STACK[0x55C];
  *(v2 - 216) = v3 ^ 0xA68CCC3D;
  *(v2 - 212) = (v1 + 434) ^ v3;
  v4 = (*(v0 + 8 * (v1 ^ 0x93D)))(v2 - 216);
  return (*(v0 + 8 * (((*(v2 - 192) != ((v1 - 321) ^ 0xB4D4294C)) * (((v1 - 386) | 0x41) ^ 0x5E)) ^ v1)))(v4);
}

uint64_t sub_22D33B374@<X0>(uint64_t a1@<X8>)
{
  v8 = 123 * (v2 ^ 0x307) + 1 + (**(v7 + 8) ^ v3) - (**(v6 + 8) ^ v3) - 370;
  **(a1 + 8) = v8 + v3 - (v5 & (2 * v8));
  return (*(v4 + 8 * ((1207 * (v1 == 1)) ^ v2)))();
}

uint64_t sub_22D33B4A0@<X0>(int a1@<W8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  memset(v8, 50, sizeof(v8));
  v6 = 1037613739 * ((((v3 - 160) | 0xD4E3D45A) - (v3 - 160) + ((v3 - 160) & 0x2B1C2BA0)) ^ 0x5E1F925);
  *(v3 - 128) = (a1 + 1611) ^ v6;
  *(v3 - 160) = v6 + 577928687;
  *(v3 - 120) = v4;
  *(v3 - 152) = v8;
  *(v3 - 144) = v5;
  *(v3 - 136) = v3 - 180;
  result = (*(v2 + 8 * (a1 + 2190)))(v3 - 160);
  *(v1 + 28) = *(v3 - 124);
  return result;
}

void sub_22D33B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, char a51)
{
  v53 = *(v52 + 96);
  if (v53 == 1)
  {
    v59 = *(v52 + 64);
    v58 = *(v52 + 68);
    v56 = (STACK[0x340] - 732) | 0x607;
    *(v52 + 56) = (8 * (v58 - ((2 * v58) & 0x55)) + 80) ^ 0x62;
    *(v52 + 57) = v56 ^ (v58 >> 5) ^ 0xFD;
    *(v52 + 58) = a7 ^ (v58 >> 13);
    *(v52 + 59) = a7 ^ (v58 >> 21);
    *(v52 + 60) = ((__PAIR64__(v59, v58) >> 29) - ((2 * (__PAIR64__(v59, v58) >> 29)) & 0xB0) - 40) ^ 0xEA;
    *(v52 + 61) = a7 ^ (v59 >> 5);
    *(v52 + 62) = a7 ^ (v59 >> 13);
    v57 = a7 ^ (v59 >> 21);
  }

  else
  {
    v54 = STACK[0x340];
    if (v53 != 2)
    {
LABEL_6:
      STACK[0x3D8] = *(v51 + 8 * (v54 - 886));
      JUMPOUT(0x22D33B060);
    }

    v57 = *(v52 + 64);
    v55 = *(v52 + 68);
    *(v52 + 56) = (v57 >> a51) - (a8 & (2 * (v57 >> a51))) + 50;
    *(v52 + 57) = (v57 >> 13) - (a8 & (v57 >> 12)) + 50;
    v56 = STACK[0x340] ^ 0x56B;
    *(v52 + 58) = (v57 >> 5) - (a8 & (v57 >> 4)) + 50;
    *(v52 + 59) = (__PAIR64__(v57, v55) >> 29) - (a8 & (2 * (__PAIR64__(v57, v55) >> 29))) + 50;
    *(v52 + 60) = (~(v55 >> 20) | 0x9B) + (v55 >> 21) + 51;
    *(v52 + 61) = (v55 >> 13) - (a8 & (v55 >> 12)) + 50;
    *(v52 + 62) = (v55 >> 5) - (a8 & (v55 >> 4)) + 50;
    LOBYTE(v57) = (8 * (v55 - ((2 * v55) & 0xA)) - 88) ^ 0x9A;
  }

  LODWORD(v54) = 2 * (v56 ^ 0x71D);
  *(v52 + 63) = v57;
  goto LABEL_6;
}