uint64_t DDScannerCreate(int a1, unint64_t a2, CFErrorRef *a3)
{
  v4 = DDScannerCreateWithTypeAndLocale(a1, 0, a3);
  v5 = v4;
  if (v4)
  {
    DDScannerSetOptions(v4, a2);
  }

  return v5;
}

uint64_t DDScannerCreateWithTypeAndLocale(int a1, const __CFLocale *a2, CFErrorRef *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  memset(&v23, 0, sizeof(v23));
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.datadetectorscore");
  if (!BundleWithIdentifier)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v8 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v9 = "Couldn't find bundle with identifier com.apple.datadetectorscore. It's either not here or you ran out of file descriptors.";
LABEL_33:
    v15 = v8;
    v16 = 2;
LABEL_34:
    _os_log_error_impl(&dword_1BCFDD000, v15, OS_LOG_TYPE_ERROR, v9, buf, v16);
    goto LABEL_40;
  }

  v7 = BundleWithIdentifier;
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    if (a1 != 1)
    {
LABEL_29:
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v8 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 0;
      v9 = "Unknown cache type in _pathToSystemCacheFile";
      goto LABEL_33;
    }

    v10 = @"com.apple.datadetectorscore.cache.urlifier";
  }

  else
  {
    switch(a1)
    {
      case 4:
        v10 = @"com.apple.datadetectorscore.cache.replies";
        break;
      case 3:
        v10 = @"com.apple.datadetectorscore.cache.test";
        break;
      case 2:
LABEL_14:
        v11 = _copyCacheFileBaseName(a1, a2);
        if (!v11)
        {
          goto LABEL_16;
        }

        v12 = v11;
        v13 = CFBundleCopyResourceURLForLocalization(v7, v11, @"system", 0, 0);
        CFAutorelease(v12);
        if (!v13)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      default:
        goto LABEL_29;
    }
  }

  v13 = CFBundleCopyResourceURLForLocalization(BundleWithIdentifier, v10, @"system", 0, 0);
  v12 = 0;
  if (!v13)
  {
LABEL_16:
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v8 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v9 = "CFBundleCopyResourceURL failed";
    goto LABEL_33;
  }

LABEL_23:
  if (!CFURLGetFileSystemRepresentation(v13, 1u, buffer, 1025))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v17 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BCFDD000, v17, OS_LOG_TYPE_ERROR, "CFURLGetFileSystemRepresentation failed", buf, 2u);
    }

    CFRelease(v13);
    goto LABEL_40;
  }

  CFRelease(v13);
  if (stat(buffer, &v23) || (v21 = DDCacheCreateFromFileAtPathWithExtraChecks(buffer, v12, v23.st_size, 0)) == 0)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v14 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 136315138;
    v25 = buffer;
    v9 = "Could not load system cache %s";
    v15 = v14;
    v16 = 12;
    goto LABEL_34;
  }

  v22 = v21;
  if (!a1)
  {
    CFStringCompare(v21[10], @"com.apple.datadetectorscore.cache.full.india", 0);
  }

  v18 = DDScannerCreateFromCacheSupportingMLScan(v22);
  CFRelease(v22);
  if (v18)
  {
    *(v18 + 224) = 0;
    goto LABEL_44;
  }

LABEL_40:
  if (a3 && !*a3)
  {
    v18 = 0;
    *a3 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E640], 22, 0);
  }

  else
  {
    v18 = 0;
  }

LABEL_44:
  kdebug_trace();
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

const void *_copyCacheFileBaseName(int a1, const __CFLocale *a2)
{
  v77[1] = *MEMORY[0x1E69E9840];
  v76 = 0;
  v77[0] = 0;
  v4 = CFLocaleCopyPreferredLanguages();
  v5 = v4;
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v8 = !_appendLocale(v77, &v76, ValueAtIndex);
      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  else
  {
    Count = 0;
  }

  v8 = 1;
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v8)
  {
    Value = CFLocaleGetValue(a2, *MEMORY[0x1E695E6D0]);
    v10 = Value;
    if (Value)
    {
      LanguageCodeFromCountryCode = _createLanguageCodeFromCountryCode(Value);
      if (LanguageCodeFromCountryCode)
      {
        v12 = LanguageCodeFromCountryCode;
        appended = _appendLocale(v77, &v76, LanguageCodeFromCountryCode);
        CFRelease(v12);
        if (appended)
        {
          goto LABEL_38;
        }
      }
    }

    v14 = CFLocaleGetValue(a2, *MEMORY[0x1E695E6F0]);
    if (v10)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      _appendLocale(v77, &v76, v14);
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v8)
  {
    goto LABEL_38;
  }

LABEL_17:
  v16 = CPPhoneNumberCopyHomeCountryCode();
  if (!v16)
  {
LABEL_22:
    v21 = CFLocaleCopyCurrent();
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = v21;
    v23 = CFLocaleGetValue(v21, *MEMORY[0x1E695E6D0]);
    v24 = v23;
    if (v23 && (v25 = _createLanguageCodeFromCountryCode(v23)) != 0 && (v26 = v25, v27 = _appendLocale(v77, &v76, v25), CFRelease(v26), v27))
    {
      v28 = 0;
    }

    else
    {
      v29 = CFLocaleGetValue(v22, *MEMORY[0x1E695E6F0]);
      v28 = 1;
      if (v24 && v29)
      {
        _appendLocale(v77, &v76, v29);
      }
    }

    CFRelease(v22);
    if (v28)
    {
LABEL_31:
      if (Count >= 2)
      {
        v30 = 2;
        do
        {
          v31 = CFArrayGetValueAtIndex(v5, v30 - 1);
        }

        while (!_appendLocale(v77, &v76, v31) && Count > v30++);
      }
    }

    goto LABEL_38;
  }

  v17 = v16;
  v18 = _createLanguageCodeFromCountryCode(v16);
  if (!v18)
  {
    CFRelease(v17);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = _appendLocale(v77, &v76, v18);
  CFRelease(v19);
  CFRelease(v17);
  if (!v20)
  {
    goto LABEL_22;
  }

LABEL_38:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v77[0] && CFStringGetLength(v77[0]) >= 3)
  {
    v33 = v77[0];
    v78.location = 0;
    v78.length = 2;
    v77[0] = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v77[0], v78);
    CFRelease(v33);
  }

  if (v76 && CFStringGetLength(v76) >= 3)
  {
    v34 = v76;
    v79.location = 0;
    v79.length = 2;
    v76 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v76, v79);
    CFRelease(v34);
  }

  if (a1 == 2)
  {
    v35 = 2;
  }

  else
  {
    v35 = 6;
  }

  if (a1 == 2)
  {
    v36 = calendarBasenames;
  }

  else
  {
    v36 = fullBasenames;
  }

  MEMORY[0x1EEE9AC00]();
  v38 = &v75[-v37];
  strcpy(&v75[4], "xx");
  strcpy(v75, "xx");
  if (v77[0] && CFStringGetLength(v77[0]) == 2)
  {
    CFStringGetCString(v77[0], &v75[4], 3, 0x8000100u);
  }

  v39 = v76;
  if (v76)
  {
    Length = CFStringGetLength(v76);
    v39 = v76;
    if (Length == 2)
    {
      CFStringGetCString(v76, v75, 3, 0x8000100u);
      v39 = v76;
    }
  }

  v41 = 0;
  v42 = v77[0];
  v43 = v75[4];
  v44 = v75[5];
  v45 = v75[0];
  v46 = v75[1];
  v47 = "esptenfrca                    svpldanlnonbnnfiesptitdeenfr  rupldeenukhuhrsrslroskcskkbgltenhi                          msthkojazhenidvihi            hetrarelitdeesenfr            ";
  v48 = "sptenfrca                    svpldanlnonbnnfiesptitdeenfr  rupldeenukhuhrsrslroskcskkbgltenhi                          msthkojazhenidvihi            hetrarelitdeesenfr            ";
  v49 = &byte_1BD018C59;
  do
  {
    if (a1 == 2)
    {
      if (!v42)
      {
        v53 = 0;
        if (!v39)
        {
          goto LABEL_99;
        }

LABEL_82:
        v58 = 0;
        v59 = 1;
        v60 = v49;
        do
        {
          if (*(v60 - 1) == v45 && *v60 == v46)
          {
            break;
          }

          v59 = v58 < 0x20;
          v60 += 2;
          ++v58;
        }

        while (v58 != 33);
        v53 |= v59;
        goto LABEL_99;
      }

      v50 = 0;
      v51 = 1;
      v52 = v49;
      do
      {
        if (*(v52 - 1) == v43 && *v52 == v44)
        {
          break;
        }

        v51 = v50 < 0x20;
        v52 += 2;
        ++v50;
      }

      while (v50 != 33);
      if (v51)
      {
        v53 = 2;
      }

      else
      {
        v53 = 0;
      }

      if (v39)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (!v42)
      {
LABEL_79:
        v53 = 0;
        if (!v39)
        {
          goto LABEL_99;
        }

LABEL_88:
        v61 = 0;
        while (1)
        {
          v62 = v47[v61];
          if (v62 == v45 && v48[v61] == v46)
          {
            break;
          }

          v63 = v62 == 32 || v61 == 28;
          v61 += 2;
          if (v63)
          {
            v64 = 0;
            goto LABEL_98;
          }
        }

        v64 = 1;
LABEL_98:
        v53 |= v64;
        goto LABEL_99;
      }

      v54 = v48;
      v55 = 14;
      while (1)
      {
        v56 = *(v54 - 1);
        if (v56 == v43 && *v54 == v44)
        {
          break;
        }

        v57 = v56 == 32 || v55-- == 0;
        v54 += 2;
        if (v57)
        {
          goto LABEL_79;
        }
      }

      v53 = 2;
      if (v39)
      {
        goto LABEL_88;
      }
    }

LABEL_99:
    *&v38[4 * v41++] = v53;
    v48 += 30;
    v47 += 30;
    v49 += 66;
  }

  while (v41 != v35);
  if (v42)
  {
    CFRelease(v42);
    v39 = v76;
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v67 = *v36;
  v66 = (v36 + 1);
  v65 = v67;
  LODWORD(v67) = *v38;
  v69 = (v38 + 4);
  v68 = v67;
  v70 = v35 - 1;
  do
  {
    v72 = *v69++;
    v71 = v72;
    if (v72 > v68)
    {
      v65 = *v66;
      v68 = v71;
    }

    ++v66;
    --v70;
  }

  while (v70);
  if (v65)
  {
    CFRetain(v65);
  }

  v73 = *MEMORY[0x1E69E9840];
  return v65;
}

BOOL _appendLocale(CFStringRef *a1, CFTypeRef *a2, CFStringRef theString)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v6 = theString;
  if (!theString || CFStringHasPrefix(theString, @"en"))
  {
    return *a2 != 0;
  }

  if (CFStringHasPrefix(v6, @"yue"))
  {
    v6 = @"zh";
  }

  else
  {
    location = CFStringFind(v6, @"-", 0).location;
    if (location >= 2)
    {
      v13.length = location;
      v13.location = 0;
      v8 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v6, v13);
      v9 = v8 == 0;
      if (v8)
      {
        v6 = v8;
      }

      goto LABEL_14;
    }
  }

  v9 = 1;
LABEL_14:
  v10 = *a1;
  if (*a1)
  {
    if (CFStringGetLength(*a1) >= 2 && CFStringGetLength(v6) >= 2 && (CharacterAtIndex = CFStringGetCharacterAtIndex(v10, 0), CharacterAtIndex == CFStringGetCharacterAtIndex(v6, 0)) && (v12 = CFStringGetCharacterAtIndex(v10, 1), v12 == CFStringGetCharacterAtIndex(v6, 1)))
    {
      if (!v9)
      {
        CFRelease(v6);
      }

      return 0;
    }

    else
    {
      if (*a2)
      {
        CFRelease(*a2);
      }

      if (v9)
      {
        CFRetain(v6);
      }

      *a2 = v6;
      return 1;
    }
  }

  else
  {
    if (v9)
    {
      CFRetain(v6);
    }

    result = 0;
    *a1 = v6;
  }

  return result;
}

CFTypeRef _createLanguageCodeFromCountryCode(CFStringRef theString)
{
  v1 = *MEMORY[0x1E695E480];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 2, theString);
  CFStringUppercase(MutableCopy, 0);
  if (!MutableCopy)
  {
    return 0;
  }

  v3 = CFDictionaryCreate(v1, &_createLanguageCodeFromCountryCode_rawCC, &_createLanguageCodeFromCountryCode_rawLC, 223, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, MutableCopy);
    if (Value)
    {
      v6 = CFRetain(Value);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(MutableCopy);
  return v6;
}

void *DDmmap(const char *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = open(a1, 0);
  if (v4 == -1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v6 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      v11 = 136315138;
      v12 = v10;
      _os_log_error_impl(&dword_1BCFDD000, v6, OS_LOG_TYPE_ERROR, "DDCache: could not open file descriptor to mmap cache file. Error %s", &v11, 0xCu);
    }

    a2 = 0;
  }

  else
  {
    v5 = v4;
    if (a2)
    {
      a2 = _DDmmap(a1, v4, a2);
    }

    close(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return a2;
}

void *_DDmmap(uint64_t a1, int a2, size_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, 512);
  if (fstatfs(a2, &v20))
  {
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  if ((v20.f_flags & 0x1000) == 0)
  {
    v9 = getenv("CI_XCODE_CLOUD");
    if (!v9 || !strncmp(v9, "TRUE", 5uLL))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___DDmmap_block_invoke;
      block[3] = &__block_descriptor_tmp_2012;
      block[4] = a1;
      if (_DDmmap_sOnce == -1)
      {
        v6 = 0;
        goto LABEL_3;
      }

      dispatch_once(&_DDmmap_sOnce, block);
      goto LABEL_2;
    }
  }

  v10 = mmap(0, a3, 1, 2, a2, 0);
  if (v10 == -1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v14 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 136315138;
      v19 = v16;
      _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, "DDCache: mmap failed with error %s", buf, 0xCu);
    }

    goto LABEL_2;
  }

  v6 = v10;
  if (madvise(v10, a3, 1))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v11 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 136315138;
      v19 = v13;
      _os_log_error_impl(&dword_1BCFDD000, v11, OS_LOG_TYPE_ERROR, "DDCache: madvise failed with error %s", buf, 0xCu);
    }
  }

LABEL_3:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void *DDLookupTableCreateFromCacheData(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) != a2)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v12 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v32 = *(a1 + 1);
    v37 = 67109376;
    LODWORD(v38) = v32;
    WORD2(v38) = 2048;
    *(&v38 + 6) = a2;
    v9 = "length mismatch on LookupTable Cache (%d, %ld)";
    v10 = v12;
    v11 = 18;
    goto LABEL_43;
  }

  v6 = a1[1];
  if (v6 - 8 <= 0xFFFFFFFA)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v8 = a1[1];
    v37 = 67109632;
    LODWORD(v38) = v8;
    WORD2(v38) = 1024;
    *(&v38 + 6) = 3;
    WORD5(v38) = 1024;
    HIDWORD(v38) = 7;
    v9 = "version mismatch on LookupTable Cache (%d, min supported %d, max supported %d)";
    v10 = v7;
    v11 = 20;
LABEL_43:
    _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, v9, &v37, v11);
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  if (*a1 != 57054)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v21 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v37) = 0;
    v9 = "magic mismatch on LookupTable Cache";
LABEL_24:
    v10 = v21;
    v11 = 2;
    goto LABEL_43;
  }

  v18 = *(a1 + 4);
  if (v18 >= 1)
  {
    v19 = *(a1 + 5);
    if (v19 < 0 || v18 + v19 + 24 > a2)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v20 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v37 = 136315138;
      *&v38 = "ContextStaticTrie";
      v9 = "corruption of %s";
      goto LABEL_37;
    }
  }

  if (v6 <= 5)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v22 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v36 = a1[1];
      v37 = 67109120;
      LODWORD(v38) = v36;
      _os_log_error_impl(&dword_1BCFDD000, v22, OS_LOG_TYPE_ERROR, "Lookup tables before version 6 (loading:%d) have issues. Might fail when loading context or threshold data. This support is only temporary, please update your files to v6 NOW (DDCore-492.0)", &v37, 8u);
    }
  }

  v23 = *(a1 + 2);
  v24 = *(a1 + 3);
  if (v23 >= 1 && ((v24 & 0x80000000) != 0 || v23 + v24 + 24 > a2))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v20 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v37 = 136315138;
    *&v38 = "StaticTrie";
    v9 = "corruption of %s";
LABEL_37:
    v10 = v20;
    v11 = 12;
    goto LABEL_43;
  }

  v25 = a1 + 12;
  v26 = DDStaticLookupCreateWithCache((a1 + v24 + 24), v23, a1[1]);
  if (!v26)
  {
    v33 = *(a1 + 2);
    if (v33 < 1 || v25 + v33 + *(a1 + 3) > a2)
    {
      goto LABEL_10;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v21 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v37) = 0;
    v9 = "Static lookup creation failed";
    goto LABEL_24;
  }

  v27 = v26;
  v28 = DDTypeRegister(&DDLookupTableGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v28, 0x88uLL);
  v13 = Instance;
  Instance[4] = a1;
  Instance[5] = a3;
  Instance[6] = a4;
  Instance[2] = v27;
  v30 = *(a1 + 4);
  if (v30 >= 1 && (v31 = *(a1 + 5), (v30 + v31 + 24) <= a2))
  {
    v34 = DDStaticLookupCreateWithCache((v25 + v31), v30, a1[1]);
    v13[3] = v34;
    if (!v34)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v35 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v37) = 0;
        _os_log_error_impl(&dword_1BCFDD000, v35, OS_LOG_TYPE_ERROR, "Failed to load context tables. Results will be less accurate (you'll miss some)", &v37, 2u);
      }
    }
  }

  else
  {
    Instance[3] = 0;
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t DDScannerCreateFromCacheSupportingMLScan(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[2])
  {
    operator new();
  }

  v2 = a1[4];
  if (!v2 || (v3 = a1[5], v3 != *v2) || (v4 = v2[2], v4 < 0) || (v5 = v3 - 52, v4 > v3 - 52))
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  v10 = v2[4];
  if ((v10 & 0x80000000) == 0 && v10 <= v5)
  {
    v6 = 0;
    v11 = v2[6];
    if ((v11 & 0x80000000) == 0 && v11 <= v5)
    {
      v6 = 0;
      if (*(a1[8] + 4) >= 56 && v2[3] + v4 == v10)
      {
        if (v10 + 12 * v2[5] == v11)
        {
          v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x10F004081EB040EuLL);
          v6 = v12;
          if (v12)
          {
            *v12 = v2;
            v13 = v2 + 13;
            v14 = v2[3];
            v15 = (v2 + v2[2] + 52);
            v16 = malloc_type_malloc(0x60uLL, 0x1070040511C5677uLL);
            v17 = *v15;
            *v16 = v17;
            v18 = *(v15 + 2);
            v16[2] = v18;
            v19 = *(v15 + 3);
            v16[3] = v19;
            v20 = *(v15 + 2);
            *(v16 + 1) = *(v15 + 1);
            if (v18)
            {
              if (v18 == 2)
              {
                v21 = v20 / 5;
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = v20 >> 2;
            }

            *(v16 + 4) = v21;
            v22 = *(v15 + 3);
            v23 = *(v15 + 4);
            *(v16 + 6) = v22 >> 1;
            if (v19)
            {
              if (v19 == 2)
              {
                v24 = v23 / 5;
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = v23 >> 2;
            }

            v25 = v15 + 10;
            v26 = 4 * v17;
            v27 = v18 == 2;
            v28 = &v15[2 * v17 + 12];
            v29 = v28 + 4 * v21;
            if (v27)
            {
              v26 = 4 * v17 + 4;
            }

            else
            {
              v28 = &v15[2 * v17 + 10];
              v29 = 0;
            }

            *(v16 + 1) = v25;
            *(v16 + 2) = v28;
            *(v16 + 3) = v29;
            if (v20 <= 0)
            {
              v30 = -(-v20 & 3);
            }

            else
            {
              v30 = v20 & 3;
            }

            if (v30 > 0)
            {
              v20 += -v30 + 4;
            }

            v31 = v25 + v26 + v20;
            *(v16 + 5) = v31;
            if (v22 <= 0)
            {
              v32 = -(-v22 & 3);
            }

            else
            {
              v32 = v22 & 3;
            }

            if (v32 <= 0)
            {
              v33 = v22;
            }

            else
            {
              v33 = v22 + -v32 + 4;
            }

            v34 = &v31[v33];
            *(v16 + 7) = v34;
            *(v16 + 8) = &v34[4 * v17];
            *(v16 + 9) = v24;
            *(v16 + 10) = v15;
            *(v16 + 11) = v14;
            v35 = v2[5];
            v36 = v13 + v2[4];
            v6[1] = v16;
            v6[2] = v36;
            v6[3] = v2[1];
            v6[4] = v35;
            LODWORD(v35) = v2[7];
            v6[5] = v13 + v2[6];
            *(v6 + 12) = v35;
            v37 = v2[9];
            if (v37 < 1)
            {
              v38 = 0;
            }

            else
            {
              v38 = v13 + v2[8];
            }

            v6[7] = v38;
            *(v6 + 16) = v37;
            v6[9] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
          }

          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v7 = a1[6];
  if (v7)
  {
    v8 = DDLookupTableCreateFromCacheData(v7, a1[7], 0, 0);
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    DDLRTableDestroy(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return 0;
}

void *DDCacheCreateFromFileAtPathWithExtraChecks(const char *a1, const __CFString *a2, void *a3, int a4)
{
  *&v35[7] = *MEMORY[0x1E69E9840];
  v7 = DDmmap(a1, a3);
  if (!v7)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v13 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_error_impl(&dword_1BCFDD000, v13, OS_LOG_TYPE_ERROR, "DataDetectorsCore: mmapping the cache file failed", &v32, 2u);
    }

    goto LABEL_48;
  }

  v8 = v7;
  if (a3 < 0x34)
  {
LABEL_47:
    munmap(v8, a3);
LABEL_48:
    Instance = 0;
    goto LABEL_49;
  }

  if (a4 && *v7 != 43962)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v9 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    LOWORD(v32) = 0;
    v10 = "DDCache creation: bad magic cookie";
    v11 = v9;
    v12 = 2;
    goto LABEL_46;
  }

  if (a4)
  {
    if (v7[1] == 56)
    {
      if (v7[2] == a3)
      {
        v14 = v7[11];
        if (v14 < 0)
        {
          goto LABEL_47;
        }

        v15 = v7[12];
        if (v15 < 0)
        {
          goto LABEL_47;
        }

        if ((v14 & 3) != 0)
        {
          goto LABEL_47;
        }

        if ((v14 + v15 + 52) > a3)
        {
          goto LABEL_47;
        }

        v16 = v7[3];
        if (v16 < 0)
        {
          goto LABEL_47;
        }

        v17 = v7[4];
        if (v17 < 0)
        {
          goto LABEL_47;
        }

        if ((v16 & 3) != 0)
        {
          goto LABEL_47;
        }

        if ((v16 + v17 + 52) > a3)
        {
          goto LABEL_47;
        }

        v18 = v7[5];
        if (v18 < 0)
        {
          goto LABEL_47;
        }

        v19 = v7[6];
        if (v19 < 0)
        {
          goto LABEL_47;
        }

        if ((v18 & 3) != 0)
        {
          goto LABEL_47;
        }

        if ((v18 + v19 + 52) > a3)
        {
          goto LABEL_47;
        }

        v20 = v7[7];
        if (v20 < 0)
        {
          goto LABEL_47;
        }

        v21 = v7[8];
        if (v21 < 0)
        {
          goto LABEL_47;
        }

        if ((v20 & 3) != 0)
        {
          goto LABEL_47;
        }

        if ((v20 + v21 + 52) > a3)
        {
          goto LABEL_47;
        }

        v22 = v7[9];
        if (v22 < 0)
        {
          goto LABEL_47;
        }

        v23 = v7[10];
        if (v23 < 0 || (v22 & 3) != 0 || (v22 + v23 + 52) > a3)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v28 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      v29 = v8[2];
      v32 = 67109376;
      v33 = v29;
      v34 = 2048;
      *v35 = a3;
      v10 = "DDCache creation: bad size : %d != %ld";
      v11 = v28;
      v12 = 18;
    }

    else
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v26 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      v27 = v8[1];
      v32 = 67109632;
      v33 = v27;
      v34 = 1024;
      *v35 = 56;
      v35[2] = 1024;
      *&v35[3] = 56;
      v10 = "DDCache creation: bad version (file: %d, min supported: %d, max supported: %d)";
      v11 = v26;
      v12 = 20;
    }

LABEL_46:
    _os_log_error_impl(&dword_1BCFDD000, v11, OS_LOG_TYPE_ERROR, v10, &v32, v12);
    goto LABEL_47;
  }

LABEL_36:
  v24 = DDTypeRegister(&DDCacheGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v24, 0x48uLL);
  Instance[2] = v8 + v8[3] + 52;
  Instance[3] = v8[4];
  Instance[4] = v8 + v8[5] + 52;
  Instance[5] = v8[6];
  Instance[6] = v8 + v8[7] + 52;
  Instance[7] = v8[8];
  Instance[8] = v8;
  if (a2)
  {
    Instance[10] = CFStringCreateCopy(0, a2);
  }

LABEL_49:
  v30 = *MEMORY[0x1E69E9840];
  return Instance;
}

int **DDStaticLookupCreateWithCache(int *a1, unint64_t a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2 < 60)
  {
    if (a2 < 1)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (*a1 != a2)
  {
LABEL_15:
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v9 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v8 = "Incorrect source file size";
    goto LABEL_36;
  }

  v3 = a1[1];
  if (v3 < 0 || ((v4 = a1[2], v5 = (v4 + v3), v4 >= 4) ? (v6 = v5 > a2) : (v6 = 1), v6))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v31 = "Cells";
    v8 = "Inconsistency in source section %s";
  }

  else
  {
    v12 = a1[3];
    if (v12 < 0 || (v13 = a1[4], v13 < 0) || (v13 + v12) > a2)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v7 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      v31 = "ExtraData";
      v8 = "Inconsistency in source section %s";
    }

    else
    {
      if ((v13 & 1) != 0 || (v12 & 1) != 0 && v13)
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v7 = DDLogHandle_error_log_handle;
        if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 136315138;
        v31 = "ExtraData";
        v8 = "Inconsistency in source section array %s";
        goto LABEL_34;
      }

      v16 = a1[5];
      if (v16 < 0 || (v17 = a1[6], v17 < 0) || (v17 + v16) > a2)
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v7 = DDLogHandle_error_log_handle;
        if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 136315138;
        v31 = "MetaData";
        v8 = "Inconsistency in source section %s";
      }

      else
      {
        if ((v17 & 3) != 0 || (v16 & 3) != 0 && v17)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v7 = DDLogHandle_error_log_handle;
          if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 136315138;
          v31 = "MetaData";
          v8 = "Inconsistency in source section array %s";
          goto LABEL_34;
        }

        v18 = a1[7];
        if (v18 < 0 || (v19 = a1[8], v19 < 0) || (v19 + v18) > a2)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v7 = DDLogHandle_error_log_handle;
          if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 136315138;
          v31 = "ThresholdData";
          v8 = "Inconsistency in source section %s";
        }

        else
        {
          if ((v19 & 7) != 0 || (v18 & 3) != 0 && v19)
          {
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v7 = DDLogHandle_error_log_handle;
            if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            *buf = 136315138;
            v31 = "ThresholdData";
            v8 = "Inconsistency in source section array %s";
            goto LABEL_34;
          }

          if (a3 < 5)
          {
            v22 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10B004003C429ACuLL);
            if (v22)
            {
              v23 = v22;
              assignFromHeaderV4(v22, a1);
LABEL_79:
              result = v23;
              goto LABEL_19;
            }

LABEL_113:
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v9 = DDLogHandle_error_log_handle;
            if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            *buf = 0;
            v8 = "Failed to allocate the static table";
LABEL_36:
            v14 = v9;
            v15 = 2;
            goto LABEL_37;
          }

          v20 = a1[11];
          if (v20 < 0 || (v21 = a1[12], v21 < 0) || (v21 + v20) > a2)
          {
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v7 = DDLogHandle_error_log_handle;
            if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            *buf = 136315138;
            v31 = "StringIdxData";
            v8 = "Inconsistency in source section %s";
          }

          else
          {
            if ((v21 & 3) != 0 || (v20 & 3) != 0 && v21)
            {
              if (DDLogHandle_onceToken != -1)
              {
                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
              }

              v7 = DDLogHandle_error_log_handle;
              if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_18;
              }

              *buf = 136315138;
              v31 = "StringIdxData";
              v8 = "Inconsistency in source section array %s";
              goto LABEL_34;
            }

            v24 = a1[9];
            if (v24 < 0 || (v25 = a1[10], v25 < 0) || (v25 + v24) > a2)
            {
              if (DDLogHandle_onceToken != -1)
              {
                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
              }

              v7 = DDLogHandle_error_log_handle;
              if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_18;
              }

              *buf = 136315138;
              v31 = "ContextStringIdxData";
              v8 = "Inconsistency in source section %s";
            }

            else
            {
              if ((v25 & 7) != 0 || (v24 & 3) != 0 && v25)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                v7 = DDLogHandle_error_log_handle;
                if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_18;
                }

                *buf = 136315138;
                v31 = "ContextStringIdxData";
                v8 = "Inconsistency in source section array %s";
                goto LABEL_34;
              }

              v26 = a1[13];
              if ((v26 & 0x80000000) == 0)
              {
                v27 = a1[14];
                if ((v27 & 0x80000000) == 0 && (v27 + v26) <= a2)
                {
                  if (v27 && *(a1 + v26 + v27 + 59))
                  {
                    if (DDLogHandle_onceToken != -1)
                    {
                      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                    }

                    v9 = DDLogHandle_error_log_handle;
                    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_18;
                    }

                    *buf = 0;
                    v8 = "Invalid string section in source";
                    goto LABEL_36;
                  }

                  v28 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10B004003C429ACuLL);
                  if (v28)
                  {
                    v23 = v28;
                    assignFromHeaderV5(v28, a1);
                    goto LABEL_79;
                  }

                  goto LABEL_113;
                }
              }

              if (DDLogHandle_onceToken != -1)
              {
                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
              }

              v7 = DDLogHandle_error_log_handle;
              if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_18;
              }

              *buf = 136315138;
              v31 = "StringData";
              v8 = "Inconsistency in source section %s";
            }
          }
        }
      }
    }
  }

LABEL_34:
  v14 = v7;
  v15 = 12;
LABEL_37:
  _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, v8, buf, v15);
LABEL_18:
  result = 0;
LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

int **assignFromHeaderV5(int **result, int *a2)
{
  v2 = a2 + 15;
  v3 = a2 + a2[1] + 60;
  *result = a2;
  result[1] = v3;
  result[2] = v3;
  v4 = a2[4];
  result[9] = (v4 >> 1);
  if (v4 >= 2)
  {
    v5 = (v2 + a2[3]);
  }

  else
  {
    v5 = 0;
  }

  result[3] = v5;
  v6 = a2[6];
  result[10] = (v6 >> 2);
  if (v6 >= 4)
  {
    v7 = (v2 + a2[5]);
  }

  else
  {
    v7 = 0;
  }

  result[4] = v7;
  v8 = a2[8];
  result[12] = (v8 >> 3);
  if (v8 >= 8)
  {
    v9 = (v2 + a2[7]);
  }

  else
  {
    v9 = 0;
  }

  result[6] = v9;
  v10 = a2[12];
  result[11] = (v10 >> 2);
  if (v10 >= 4)
  {
    v11 = (v2 + a2[11]);
  }

  else
  {
    v11 = 0;
  }

  result[5] = v11;
  v12 = a2[10];
  result[13] = (v12 >> 3);
  if (v12 >= 8)
  {
    v13 = (v2 + a2[9]);
  }

  else
  {
    v13 = 0;
  }

  result[7] = v13;
  v14 = a2[14];
  result[14] = v14;
  if (v14 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v2 + a2[13]);
  }

  result[8] = v15;
  return result;
}

uint64_t DDTypeCreateInstance_(uint64_t a1, CFTypeID a2, size_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    bzero((Instance + 16), a3);
  }

  else
  {
    v7 = CFCopyTypeIDDescription(a2);
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v8 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "Failed to create instance of type %@", &v11, 0xCu);
    }

    CFRelease(v7);
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t DDScanQueryCreateFromString(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v8 = DDTypeRegister(&DDScanQueryGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(a1, v8, 0x28uLL);
  DDScanQueryAddTextFragment(Instance, a2, a3, a4, 0, 0, 0);
  return Instance;
}

uint64_t DDTypeRegister(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    pthread_mutex_lock(&DDTypeRegister_lock);
    if (!*a1)
    {
      *a1 = _CFRuntimeRegisterClass();
    }

    pthread_mutex_unlock(&DDTypeRegister_lock);
    return *a1;
  }

  return result;
}

uint64_t DDScanQueryAddTextFragment(uint64_t result, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unsigned int a7)
{
  if (!theString)
  {
    return result;
  }

  v13 = result;
  result = CFStringGetLength(theString);
  if (!result || *(v13 + 32) > 29999)
  {
    return result;
  }

  DDScanQueryAddSeparator(v13, a7);
  v14 = *(v13 + 16);
  if (!v14)
  {
    *(v13 + 24) = xmmword_1BD018B70;
    v14 = malloc_type_malloc(0xC0uLL, 0x10E004000188D12uLL);
LABEL_13:
    *(v13 + 16) = v14;
    v16 = *(v13 + 32);
    goto LABEL_14;
  }

  v15 = *(v13 + 24);
  v16 = *(v13 + 32);
  if (v15 == v16)
  {
    v17 = 2 * v15;
    if (v15 < 2)
    {
      v17 = 4;
    }

    if (v15 >= 1024)
    {
      v18 = v15 + 1024;
    }

    else
    {
      v18 = v17;
    }

    *(v13 + 24) = v18;
    v14 = malloc_type_realloc(v14, 48 * v18, 0x10E004000188D12uLL);
    goto LABEL_13;
  }

LABEL_14:
  v19 = &v14[48 * v16];
  result = CFRetain(theString);
  v20 = *(v19 + 10) & 0x3FFFFFF;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *v19 = result;
  *(v19 + 1) = a5;
  v21 = v20 & 0x83FFFFFF | ((a6 & 3) << 29) | ((a7 & 7) << 26);
  *(v19 + 10) = v21;
  if (v16 < 1)
  {
    *(v19 + 4) = 0;
  }

  else
  {
    v22 = *(v13 + 16) + 48 * v16;
    *(v19 + 4) = *(v22 - 16) + *(v22 - 24) + 1;
    v23 = *(v22 - 8);
    v24 = (v23 >> 26) & 7;
    if (v24 <= a7)
    {
      LOBYTE(v24) = a7;
    }

    *(v22 - 8) = v23 & 0xE3FFFFFF | ((v24 & 7) << 26);
    v21 = *(v19 + 10);
  }

  *(v19 + 10) = v21 & 0xFC000000;
  ++*(v13 + 32);
  return result;
}

uint64_t DDScanQueryAddSeparator(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 16) + 48 * v2;
    v4 = *(v3 - 8);
    v5 = (v4 & 0x1C000000) == 0xC000000 && a2 >= 3;
    if (v5 && (v4 & 0x80000000) != 0)
    {
      v4 = v4 & 0xE3FFFFFF | 0x10000000;
      *(v3 - 8) = v4;
    }

    if (((v4 >> 26) & 7) < a2)
    {
      *(v3 - 8) = v4 & 0xE3FFFFFF | ((a2 & 7) << 26);
    }
  }

  return result;
}

uint64_t DDScannerCreateWithLocale(int a1, unint64_t a2, const __CFLocale *a3, CFErrorRef *a4)
{
  v6 = DDScannerCreateWithTypeAndLocale(a1, a3, a4);
  v7 = v6;
  if (v6)
  {
    DDScannerSetOptions(v6, a2);
    if (a3)
    {
      DDScannerSetLocale(v7, a3);
    }
  }

  return v7;
}

uint64_t DDTokenCacheGetTokenOrSubtokenAtPosition(void *a1, void *a2, uint64_t a3)
{
  v14 = 0;
  TokensAtPosition = DDTokenCacheGetTokensAtPosition(a1, a2, a3, &v14);
  if (!TokensAtPosition)
  {
    return 4294901760;
  }

  if (TokensAtPosition == 1)
  {
    result = *v14;
    v6 = v14[1];
    return result;
  }

  if (TokensAtPosition < 1)
  {
    return 4294901760;
  }

  v7 = a3 >> 16;
  v8 = TokensAtPosition + 1;
  for (i = &v14[2 * TokensAtPosition - 1]; ; i -= 2)
  {
    result = *(i - 1);
    v10 = result >> 16;
    if (v10 < v7 || (v10 <= v7 ? (v11 = SHIDWORD(result) <= SHIDWORD(a3)) : (v11 = 0), v11))
    {
      v12 = *i << 32 >> 48;
      if (v12 >= v7 && (v12 > v7 || HIDWORD(*i) > SHIDWORD(a3)))
      {
        break;
      }
    }

    if (--v8 <= 1)
    {
      return 4294901760;
    }
  }

  return result;
}

void DDCachingStringTokenizerResetStringWithOptions(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 121))
  {
    *(a1 + 80) = -1;
    *(a1 + 112) = -1;
    v7 = *(a1 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 40) = 0;
    }
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(a1 + 72);
      if (v9 >= 1)
      {
        v10 = 16;
        v11 = *(a1 + 72);
        do
        {
          v12 = *(*(a1 + 48) + v10);
          if (v12)
          {
            free(v12);
          }

          v10 += 32;
          --v11;
        }

        while (v11);
        bzero(v8, 32 * v9);
      }
    }

    else
    {
      *(a1 + 64) = 64;
      *(a1 + 48) = malloc_type_calloc(0x40uLL, 0x20uLL, 0x10200406A33E52CuLL);
    }

    *(a1 + 104) = xmmword_1BD018B50;
    *(a1 + 72) = 0;
    *(a1 + 80) = -1;
    *(a1 + 88) = -1;
    *(a1 + 96) = -1;
    *(a1 + 120) = 0;
    *(a1 + 56) = a2;
    if (a3 && *(a1 + 40))
    {

      NLStringTokenizerSetStringWithOptions();
    }
  }
}

uint64_t *DDTokenCacheGetTokensAtPosition(void *a1, void *cf, uint64_t a3, void *a4)
{
  v4 = cf[2] + 48 * (a3 >> 16);
  v5 = *(v4 + 32) + (a3 >> 32) - *(v4 + 16);
  v6 = a1[2];
  v7 = v5 - v6;
  if (v5 - v6 > 199)
  {
    return 0;
  }

  v11 = a1[5];
  if (v11 <= v7)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = v5 - v6;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v12 + 1;
    v14 = v12 + a1[7];
    while (1)
    {
      v15 = v14 >= a1[6] ? a1[6] : 0;
      if ((*(*(a1[4] - 8 * v15 + 8 * v14) + 3) & 0x80) == 0)
      {
        break;
      }

      --v13;
      --v14;
      if (v13 <= 0)
      {
        v12 = -1;
        goto LABEL_14;
      }
    }

    v12 = v13 - 1;
  }

LABEL_14:
  if (v12 < v7)
  {
    v16 = v12 + 1;
    do
    {
      TokenInCache = _FillNextTokenInCache(a1, cf, v16);
      if (TokenInCache >= 0)
      {
        v16 = TokenInCache;
      }
    }

    while ((TokenInCache & 0x8000000000000000) == 0 && v16 <= v7);
  }

  result = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, v5 - v6);
  if (!result)
  {
    return result;
  }

  v19 = *result;
  if ((*result & 0x80000000) != 0)
  {
    return 0;
  }

  if (v19 != v5)
  {
    result = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, (v19 - v6) & ~((v19 - v6) >> 63));
    if (!result)
    {
      return result;
    }

    v19 = *result;
  }

  v20 = result + 1;
  if (v19 << 16 >= 0x2000000000000)
  {
    v20 = *v20;
  }

  *a4 = v20;
  return (*result << 16 >> 48);
}

uint64_t _FillNextTokenInCache(void *a1, CFTypeRef cf, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v7 = a1[48];
  if (v7 <= 0)
  {
    v8 = *a1;
    if (!*(*a1 + 32))
    {
      v8[4] = CFRetain(cf);
    }

    v9 = v8[10];
    if (v9 >= v8[9] - 1)
    {
      NextToken = _fetchNextToken(v8);
      if (NextToken < 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      NextToken = v9 + 1;
      if (v9 + 1 < 0)
      {
        goto LABEL_75;
      }
    }

    v11 = _tokenEntryAtRealIndex(v8, (v8[12] + NextToken) % v8[9]);
    v8[10] = NextToken;
    if (!v11)
    {
      goto LABEL_75;
    }

    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = (*v11 << 32) >> 48;
    if (v14 == v13 >> 16)
    {
      v15 = (v13 - (v12 & 0xFFFFFFFF00000000)) >> 32;
LABEL_23:
      v23 = *(cf + 2);
      v24 = *(v23 + 48 * (*v11 >> 16) + 32) + (v12 >> 32) - *(v23 + 48 * (*v11 >> 16) + 16);
      if (v24 < a3)
      {
        if (_FillNextTokenInCache_sOnce != -1)
        {
          dispatch_once(&_FillNextTokenInCache_sOnce, &__block_literal_global_853);
        }

        goto LABEL_75;
      }

      *&__src = *v11;
      *(&__src + 1) = v13;
      if (*(v11 + 24))
      {
        v25 = 0;
        if (*(v11 + 24) >= 0x13u)
        {
          v26 = 19;
        }

        else
        {
          v26 = *(v11 + 24);
        }

        v27 = &v58;
        do
        {
          *v27 = *(*(v11 + 16) + v25);
          v27 += 2;
          v25 += 32;
        }

        while (32 * v26 != v25);
        v7 = v26 + 1;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_34;
    }

    v16 = v13 >> 16;
    v17 = __OFSUB__(v14, v16);
    v18 = v14 - v16;
    if (!((v18 < 0) ^ v17 | (v18 == 0)))
    {
      v15 = 0;
      goto LABEL_23;
    }

    v19 = 0;
    v15 = 0;
    v20 = *(cf + 2) + 48 * (*v11 >> 16) + 24;
    while (v19)
    {
      if (v18 != v19)
      {
        v21 = *v20;
LABEL_19:
        v22 = v21 + v15;
        if (((*(v20 + 16) >> 26) & 7u) - 1 >= 4)
        {
          v15 = v22;
        }

        else
        {
          v15 = v22 + 1;
        }

        goto LABEL_22;
      }

      v15 = v15 + (v13 >> 32) - *(v20 - 8);
LABEL_22:
      --v19;
      v20 += 48;
      if (v18 - 1 == v19)
      {
        goto LABEL_23;
      }
    }

    v21 = *(v20 - 8) - (v12 >> 32) + *v20;
    goto LABEL_19;
  }

  v53 = a1[8];
  v13 = a1[9];
  v23 = *(cf + 2);
  v24 = *(v23 + 48 * (v53 >> 16) + 32) + (v53 >> 32) - *(v23 + 48 * (v53 >> 16) + 16);
  v15 = (v13 - (v53 & 0xFFFFFFFF00000000)) >> 32;
  __memcpy_chk();
  a1[48] = 0;
LABEL_34:
  if (v15 > 200)
  {
    goto LABEL_75;
  }

  v28 = v24 - v6;
  if (v24 - v6 + v15 > 200)
  {
    a1[48] = v7;
    memcpy(a1 + 8, &__src, 16 * v7);
    goto LABEL_75;
  }

  if (v28 > a3)
  {
    while (1)
    {
      IfNeeded = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, a3);
      if (!IfNeeded)
      {
        goto LABEL_75;
      }

      *IfNeeded = v6 + a3++;
      if (a3 >= v28)
      {
        v23 = *(cf + 2);
        break;
      }
    }
  }

  v56 = v13 >> 16;
  v30 = v23 + 48 * v56;
  v31 = *(v30 + 32);
  v32 = *(v30 + 16);
  v33 = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, a3);
  if (!v33)
  {
LABEL_75:
    v36 = -1;
    goto LABEL_76;
  }

  v34 = v33;
  v35 = v13 >> 32;
  v36 = v31 + (v13 >> 32) - (v6 + v32);
  v37 = *v33;
  if (v7 <= 1)
  {
    if (v37 < 0x2000000000000)
    {
LABEL_45:
      v39 = v37 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
      *v34 = v39;
LABEL_46:
      *(v34 + 8) = __src;
      v40 = 0x100000000;
LABEL_57:
      v45 = v39 & 0xFFFF000000000000 | v40;
LABEL_58:
      v46 = v24;
      goto LABEL_59;
    }

    v38 = v13 >> 32;
    free(*(v33 + 8));
LABEL_44:
    v37 = *v34;
    v35 = v38;
    goto LABEL_45;
  }

  v38 = v13 >> 32;
  if (v37 >> 48 >= v7)
  {
    goto LABEL_56;
  }

  if (v37 >> 48 <= 1)
  {
    v41 = 16 * v7;
    v42 = malloc_type_malloc(16 * v7, 0x1000040451B5BE8uLL);
    if (!v42)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v43 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v60 = v41;
        _os_log_error_impl(&dword_1BCFDD000, v43, OS_LOG_TYPE_ERROR, "TokenCache could not alloc space to cache %ld ranges", buf, 0xCu);
      }

      goto LABEL_44;
    }

    goto LABEL_55;
  }

  v44 = 16 * v7;
  v42 = malloc_type_realloc(*(v33 + 8), 16 * v7, 0x1000040451B5BE8uLL);
  if (v42)
  {
LABEL_55:
    *(v34 + 8) = v42;
    *(v34 + 6) = v7;
    goto LABEL_56;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v52 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v60 = v44;
    _os_log_error_impl(&dword_1BCFDD000, v52, OS_LOG_TYPE_ERROR, "TokenCache could not realloc space to cache %ld ranges", buf, 0xCu);
  }

  v39 = *v34;
  v7 = *v34 >> 48;
  v35 = v38;
  if (v7 == 1)
  {
    goto LABEL_46;
  }

  if (v7 >= 2)
  {
LABEL_56:
    memcpy(*(v34 + 8), &__src, 16 * v7);
    v39 = *v34;
    v40 = v7 << 32;
    v35 = v38;
    goto LABEL_57;
  }

  v45 = v39 & 0xFFFF000000000000 | (HIWORD(*v34) << 32);
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_58;
  }

  v46 = 0xFFFFFFFFLL;
LABEL_59:
  *v34 = v46 | v45;
  v47 = *(cf + 2) + 48 * v56;
  v48 = v35 + *(v47 + 32) - (v6 + *(v47 + 16));
  v49 = a3 + 1;
  if (a3 + 1 < v48)
  {
    v50 = a3 + v6;
    do
    {
      v51 = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, v49);
      if (!v51)
      {
        goto LABEL_75;
      }

      *v51 = v50;
    }

    while (++v49 < v48);
  }

LABEL_76:
  v54 = *MEMORY[0x1E69E9840];
  return v36;
}

void DDTokenCacheClear(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1 >= 1)
    {
      for (i = 0; i < v1; ++i)
      {
        v4 = *(a1 + 48);
        v3 = *(a1 + 56);
        if (i + v3 < v4)
        {
          v4 = 0;
        }

        v5 = *(*(a1 + 32) + 8 * (i + v3 - v4));
        if (v5)
        {
          *v5 = (*(v5 + 6) << 48) | 0xFFFFFFFF;
          v1 = *(a1 + 40);
        }
      }
    }

    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 16) = xmmword_1BD018B50;
    *(a1 + 384) = 0;
    if (*a1)
    {
      DDCachingStringTokenizerResetStringWithOptions(*a1, *(a1 + 392), 1);
    }
  }
}

uint64_t computeLexemsAtPosition()
{
  v0 = (MEMORY[0x1EEE9AC00])();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v291 = *MEMORY[0x1E69E9840];
  v282 = 0;
  if (DDLexemCacheGetLexems(*(v0 + 48), *(*(v0 + 56) + 16), v3, v1, &v282))
  {
    goto LABEL_323;
  }

  v6 = *(v5 + 56);
  v281 = 0;
  TokensAtPosition = DDTokenCacheGetTokensAtPosition(*(v5 + 40), v6, v4, &v281);
  v8 = v4 >> 16;
  if (TokensAtPosition < 1)
  {
    v10 = 4294901760;
    v12 = 4294901760;
  }

  else
  {
    v9 = v281;
    v10 = *v281;
    v11 = *v281 ^ v4;
    if (v11 >> 16)
    {
      v12 = 4294901760;
      v10 = 4294901760;
    }

    else
    {
      v12 = v281[1];
      v13 = v282;
      if (v282 <= 46)
      {
        v14 = **(v5 + 16);
        v15 = &v290[2 * v282];
        *v15 = v12 & 0xFFFFFFFFFFFF0000 | v14[20];
        v15[1] = 0;
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v10 & 0xFFFFFFFFFFFF0000 | v14[21];
        v15[5] = 0;
        v15[6] = 0;
        v15[7] = 0;
        v15[8] = v10 & 0xFFFFFFFFFFFF0000 | v14[23];
        v15[9] = 0;
        v15[10] = 0;
        v15[11] = 0;
        v282 = v13 + 3;
      }
    }

    v16 = TokensAtPosition - 1;
    if (TokensAtPosition != 1)
    {
      v17 = v282;
      v18 = v4 & 0xFFFFFFFFFFFF0000;
      v19 = v9 + 3;
      do
      {
        v21 = *(v19 - 1);
        v20 = *v19;
        if (!((v21 ^ v4) >> 16))
        {
          if ((v10 & 0xFFFF0000) == 0xFFFF0000)
          {
            v12 = *v19;
            v10 = *(v19 - 1);
          }

          if (v11 >= 0x10000 && v17 <= 46)
          {
            v22 = **(v5 + 16);
            v23 = &v290[2 * v17];
            *v23 = v20 & 0xFFFFFFFFFFFF0000 | v22[20];
            v23[1] = 0;
            v23[2] = 0;
            v23[3] = 0;
            v24 = v21 & 0xFFFFFFFFFFFF0000;
            v23[4] = v24 | v22[21];
            v23[5] = 0;
            v23[6] = 0;
            v23[7] = 0;
            v17 += 3;
            v23[8] = v24 | v22[23];
            v23[9] = 0;
            v23[10] = 0;
            v23[11] = 0;
          }
        }

        if (!((v20 ^ v4) >> 16) && v17 <= 47)
        {
          v25 = &v290[2 * v17];
          v26 = **(v5 + 16);
          *v25 = v18 | *(v26 + 44);
          v25[1] = 0;
          v25[2] = 0;
          v25[3] = 0;
          v17 += 2;
          v25[4] = v18 | *(v26 + 46);
          v25[5] = 0;
          v25[6] = 0;
          v25[7] = 0;
        }

        v19 += 2;
        --v16;
      }

      while (v16);
      v282 = v17;
    }

    if (v11 >= 0x10000)
    {
      v253 = v12;
      v27 = v4 >> 32;
      goto LABEL_28;
    }
  }

  v27 = v4 >> 32;
  v28 = *(v6[2] + 48 * v8 + 16);
  v253 = v12;
  if (v4 >> 32 > v28 && DDTokenCacheGetTokensAtPosition(*(v5 + 40), v6, (v4 & 0xFFFFFFFF00000000 | (WORD1(v4) << 16)) - 0x100000000, &v281) >= 1 && !((v281[1] ^ v4) >> 16))
  {
    v29 = v282;
    if (v282 <= 47)
    {
      v30 = &v290[2 * v282];
      v31 = **(v5 + 16);
      *v30 = v4 & 0xFFFFFFFFFFFF0000 | *(v31 + 44);
      v30[1] = 0;
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v4 & 0xFFFFFFFFFFFF0000 | *(v31 + 46);
      v30[5] = 0;
      v30[6] = 0;
      v30[7] = 0;
      v282 = v29 + 2;
    }
  }

LABEL_28:
  v32 = v6[2] + 48 * v8;
  if (v27 >= *(v32 + 24) + *(v32 + 16))
  {
    if (v8 != v6[4] - 1)
    {
      v36 = (*(v32 + 40) >> 26) & 7;
      if (v36 <= 2)
      {
        if (v36)
        {
          goto LABEL_50;
        }

        CharacterAtIndex = CFStringGetCharacterAtIndex(*(v32 + 48), *(v32 + 64));
        v38 = CharacterAtIndex == 10 || CharacterAtIndex == 8232;
        if (!v38 && CharacterAtIndex != 13)
        {
          goto LABEL_50;
        }
      }
    }
  }

  else
  {
    v33 = CFStringGetCharacterAtIndex(*v32, v27);
    v34 = v33 == 10 || v33 == 13;
    if (!v34 && v33 != 8232)
    {
      goto LABEL_50;
    }
  }

  v40 = v282;
  if (v282 <= 49)
  {
    v41 = &v290[2 * v282];
    *v41 = v4 & 0xFFFFFFFFFFFF0000 | *(**(v5 + 16) + 50);
    v41[1] = 0;
    v41[2] = 0;
    v41[3] = 0;
    v282 = v40 + 1;
  }

LABEL_50:
  if (v27 > *(v32 + 16))
  {
    v42 = CFStringGetCharacterAtIndex(*v32, (v4 - 0x100000000) >> 32);
    v43 = 0;
LABEL_56:
    v46 = v253;
    goto LABEL_57;
  }

  if (v8 < 1)
  {
    v42 = 0;
    v43 = 1;
    goto LABEL_56;
  }

  v44 = v6[2] + 48 * (v8 - 1);
  v45 = (*(v44 + 40) >> 26) & 7;
  v43 = v45 > 2;
  v46 = v253;
  if (v45)
  {
    v42 = 0;
  }

  else
  {
    v42 = CFStringGetCharacterAtIndex(*v44, *(v44 + 16) + *(v44 + 24) - 1);
    v43 = 0;
  }

LABEL_57:
  v49 = v42 == 10 || v42 == 13 || v42 == 8232;
  v50 = v282;
  if ((v43 || v49) && v282 <= 49)
  {
    v51 = &v290[2 * v282];
    v50 = v282 + 1;
    *v51 = v4 & 0xFFFFFFFFFFFF0000 | *(**(v5 + 16) + 48);
    v51[1] = 0;
    v51[2] = 0;
    v51[3] = 0;
    v282 = v50;
  }

  v255 = v6;
  if (v50 > 49)
  {
    goto LABEL_307;
  }

  v50 += DDLexerDeterministicScan(*(v5 + 24), v4, &v290[2 * v50], 50 - v50);
  v282 = v50;
  if ((~v10 & 0xFFFF0000) == 0 || v50 > 49)
  {
    goto LABEL_307;
  }

  v52 = 0;
  v258 = v5 + 72;
  v244 = v264;
  v245 = v4 >> 32;
  v242 = &v284;
  v261 = &v287;
  v262 = &v289;
  v250 = v10;
  v251 = v4 >> 16;
  v243 = v2;
  v252 = v4;
  v256 = v5;
  do
  {
    v53 = *(v258 + 8 * v52);
    if (!v53)
    {
      goto LABEL_305;
    }

    v259 = v52;
    v260 = v50;
    v54 = &v290[2 * v50];
    v257 = v53;
    v55 = DDLookupTableRefLookupCurrentWord(v5, v53, v10, v46, v4, v54, 50 - v50, 0);
    if (v55 < 1)
    {
      v52 = v259;
      v56 = v260;
      goto LABEL_304;
    }

    v52 = v259;
    if ((v259 & 6) != 2 && (v259 - 5) > 1)
    {
      v56 = v260;
      goto LABEL_304;
    }

    v57 = (MEMORY[0x1EEE9AC00])();
    v59 = &v242 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v57);
    v62 = &v242 - v61;
    v63 = 0;
    v64 = 0;
    v65 = (*(v5 + 192) >> 25) & 1;
    v66 = v55 != 1 || (*(v5 + 192) & 0x2000000) != 0;
    v68 = v54 + 3;
    v67 = *(v54 + 3);
    v69 = v54 + 2;
    v56 = v260;
    v70 = v257;
    do
    {
      if ((v67 & 0x10000) == 0)
      {
        v78 = 0;
        LODWORD(v8) = v251;
        v4 = v252;
        v6 = v255;
        v5 = v256;
        goto LABEL_303;
      }

      v71 = *v54;
      if (!v63 || (v72 = v64 >> 16, v72 >= v71 >> 16) && (v72 <= v71 >> 16 ? (v73 = SHIDWORD(v64) <= SHIDWORD(v71)) : (v73 = 0), !v73))
      {
        v64 = *v54;
      }

      v74 = *(v70 + 24);
      v75 = 0.0;
      if (!v74 || (v71 = v71, (v71 - 8) > 0x1F) || (v76 = v74[6]) == 0 || v74[12] < 1)
      {
LABEL_99:
        if (v66)
        {
          goto LABEL_101;
        }

LABEL_100:
        if (*v69 <= v75)
        {
          goto LABEL_101;
        }

        *v69 = *v69 - v75;
        v78 = 1;
        LODWORD(v8) = v251;
        v4 = v252;
        v6 = v255;
        v5 = v256;
LABEL_262:
        v208 = v78;
        do
        {
          v209 = v208 - 1;
          if (v74)
          {
            v210 = SLOWORD(v290[2 * v56 + 2 * v209]);
            if ((v210 - 8) <= 0x1F)
            {
              v211 = v74[7];
              if (v211)
              {
                if (v74[13] >= 1)
                {
                  v212 = v74[13] & 0x7FFFFFFFLL;
                  while (!*(v211 + 6) || v210 != *(v211 + 2))
                  {
                    v211 += 2;
                    if (!--v212)
                    {
                      goto LABEL_271;
                    }
                  }

                  v213 = *v211;
                  if (v213 && *(v211 + 7) && v74[14] > v213)
                  {
                    *&v290[2 * v56 + 1 + 2 * v209] = v74[8] + v213;
                  }
                }
              }
            }
          }

LABEL_271:
          v73 = v208-- > 1;
        }

        while (v73);
        v214 = *(v5 + 152);
        if (!v214)
        {
          v214 = malloc_type_calloc(1uLL, 0x3D0uLL, 0x10300403B58F53CuLL);
          if (v214)
          {
            *v214 = -1;
            v214[1] = -1;
          }

          *(v5 + 152) = v214;
          v52 = v259;
          v56 = v260;
        }

        v215 = v6[2] + 48 * v8;
        v216 = *(v215 + 32) + v245 - *(v215 + 16);
        if (v216 < 0)
        {
          goto LABEL_303;
        }

        v218 = *v214;
        v217 = v214[1];
        if (*v214 < 0)
        {
          if (v218 == -1)
          {
            v221 = (v214 + 2);
            *v214 = 0;
            v214[1] = 0;
LABEL_295:
            *v221 = v216;
            if (v78 == 1)
            {
              v222 = v54[1];
              *(v221 + 32) = *v54;
              *(v221 + 48) = v222;
            }

            else
            {
              v223 = *(v221 + 24);
              if (*(v221 + 16) < v78)
              {
                if (v223)
                {
                  free(v223);
                }

                v223 = malloc_type_malloc(32 * v78, 0x1010040F32E1FD2uLL);
                *(v221 + 16) = v78;
                *(v221 + 24) = v223;
              }

              memcpy(v223, v54, 32 * v78);
              v52 = v259;
              v56 = v260;
              v2 = v243;
            }

            *(v221 + 8) = v78;
            v46 = v253;
            goto LABEL_303;
          }
        }

        else if (v214[8 * v218 + 2] >= v216)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v219 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v283[0]) = 0;
            _os_log_error_impl(&dword_1BCFDD000, v219, OS_LOG_TYPE_ERROR, "DDSourceMatchCacheAddEntry location should be constant or monotonically increasing", v283, 2u);
          }

          v52 = v259;
          v56 = v260;
          goto LABEL_303;
        }

        v220 = (v218 + 1) % 15;
        if (v217 == v220)
        {
          v217 = (v217 + 1 - 15 * ((((137 * (v217 + 1)) >> 8) >> 3) + ((((137 * (v217 + 1)) >> 8) & 0x80) >> 7)));
        }

        *v214 = v220;
        v214[1] = v217;
        v221 = &v214[8 * v220 + 2];
        goto LABEL_295;
      }

      v77 = v74[12] & 0x7FFFFFFFLL;
      while (!*(v76 + 6) || v71 != *(v76 + 4))
      {
        v76 += 8;
        if (!--v77)
        {
          goto LABEL_99;
        }
      }

      v75 = *v76;
      if (!*(v76 + 7))
      {
        v75 = 0.0;
      }

      if (!v66)
      {
        goto LABEL_100;
      }

LABEL_101:
      *&v62[4 * v63] = v75;
      *&v59[4 * v63++] = 0;
    }

    while (v63 != v55);
    v246 = v65;
    v247 = v62;
    v248 = v55 - 1;
    v249 = v60;
    v277 = 0;
    v278 = &v277;
    v279 = 0x2000000000;
    v280 = 0;
    v273 = 0;
    v274 = &v273;
    v275 = 0x2000000000;
    v276 = 0;
    v272[0] = 0;
    v272[1] = v272;
    v272[2] = 0x2000000000;
    v272[3] = &v288;
    v271[0] = 0;
    v271[1] = v271;
    v271[2] = 0x2000000000;
    v271[3] = &v286;
    v270[0] = 0;
    v270[1] = v270;
    v270[2] = 0x2000000000;
    v270[3] = v285;
    v269[0] = 0;
    v269[1] = v269;
    v269[2] = 0x2000000000;
    v269[3] = v283;
    v265 = 0;
    v266 = &v265;
    v267 = 0x2000000000;
    v268 = 0;
    v79 = v255;
    v80 = *(v256 + 40);
    v263[0] = MEMORY[0x1E69E9820];
    v263[1] = 0x40000000;
    v264[0] = __computeLexemsAtPosition_block_invoke;
    v264[1] = &unk_1E8001E58;
    v264[2] = &v273;
    v264[3] = v272;
    v264[4] = v271;
    v264[5] = &v277;
    v264[10] = v255;
    v264[11] = v256;
    v264[12] = v70;
    v264[6] = &v265;
    v264[7] = v270;
    v81 = v252;
    v264[8] = v269;
    v264[9] = v252;
    DDCachingStringTokenizerEnumerateTokens(*v80, v255, 1, v252, v263);
    DDCachingStringTokenizerEnumerateTokens(*v80, v79, 0, v81, v263);
    v82 = v266;
    if (v266[3] < 1)
    {
      goto LABEL_226;
    }

    v83 = 0;
    v84 = 0;
    while (2)
    {
      v85 = &v283[5 * v83];
      if (BYTE14(v285[2 * v85[3]]))
      {
        v90 = v85[1];
        if (v90 >= 0x100000000)
        {
          v91 = **(v256 + 40);
          v254 = (v90 & 0x7FFFFFFF00000000) - 0x100000000;
          Offset = matchingTokenRealIndexForQueryOffset(v91, v254 & 0xFFFFFFFF00000000 | v90, 0);
          v93 = _tokenEntryAtRealIndex(v91, Offset);
          if (v93)
          {
            v94 = *v93;
            v95 = v90 >> 16;
            if (v95 >= (*v93 << 32) >> 48)
            {
              v34 = v95 == v94 >> 16;
              v96 = HIDWORD(v94);
              if (!v34 || SHIDWORD(v254) >= v96)
              {
                v98 = *(v93 + 8);
                if (v95 <= v98 >> 16)
                {
                  if (v95 != v98 >> 16 || (v99 = HIDWORD(v98), SHIDWORD(v254) < v99) && (v99 <= HIDWORD(v90) ? (v100 = v99 < SHIDWORD(v90)) : (v100 = 1), v100))
                  {
                    v101 = *(v93 + 24);
                    if (!*(v93 + 24))
                    {
LABEL_139:
                      v82 = v266;
                      goto LABEL_111;
                    }

                    v102 = (*(v93 + 16) + 8);
                    while (1)
                    {
                      v103 = *v102;
                      v102 += 4;
                      v104 = v103 >> 16;
                      if (!((v103 ^ v90) >> 32) && v104 == v95)
                      {
                        break;
                      }

                      if (!--v101)
                      {
                        goto LABEL_139;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v84;
        v82 = v266;
        v86 = v266[3];
      }

      else
      {
LABEL_111:
        v86 = v82[3] - 1;
        if (v86 > v83)
        {
          v87 = &v283[5 * v86];
          v88 = *v87;
          v89 = *(v87 + 1);
          v85[4] = v87[4];
          *v85 = v88;
          *(v85 + 1) = v89;
          v86 = v82[3] - 1;
        }

        v82[3] = v86;
      }

      v83 = v84;
      if (v86 > v84)
      {
        continue;
      }

      break;
    }

    if (v86 <= 1)
    {
      v2 = v243;
    }

    else
    {
      qsort(v283, v86, 0x28uLL, keywordSort);
      v106 = v266;
      v107 = v266[3];
      v2 = v243;
      if (v107 >= 2)
      {
        LODWORD(v108) = 0;
        v109 = v242;
        v110 = 1;
        while (1)
        {
          v111 = v108;
          v112 = &v283[5 * v108];
          if (v112[2] == v109[2])
          {
            break;
          }

          v108 = v108 + 1;
          if (v110 != v111 + 1)
          {
            v112 = &v283[5 * v108];
LABEL_163:
            v126 = *v109;
            v127 = *(v109 + 1);
            v112[4] = v109[4];
            *v112 = v126;
            *(v112 + 1) = v127;
            v107 = v106[3];
          }

LABEL_164:
          ++v110;
          v109 += 5;
          if (v107 <= v110)
          {
            v86 = v108 + 1;
            goto LABEL_169;
          }
        }

        v113 = v112[1];
        v114 = *v109;
        v115 = v113 >> 16;
        if (v115 < *v109 << 32 >> 48 || ((v116 = v114 >> 16, v117 = HIDWORD(v113), v118 = HIDWORD(v114), v115 <= v116) ? (v119 = v117 < v118) : (v119 = 0), v119))
        {
          v108 = v108 + 1;
          if (v110 == v111 + 1)
          {
            goto LABEL_164;
          }

          v112 = &v283[5 * v108];
        }

        else
        {
          v120 = v109[1];
          if (v115 >= v120 >> 16)
          {
            if (v115 > v120 >> 16)
            {
              goto LABEL_164;
            }

            v121 = HIDWORD(v120);
            if (v117 >= v121)
            {
              if (v117 > v121)
              {
                goto LABEL_164;
              }

              v122 = &v285[2 * v109[3]];
              v123 = v122[2];
              v124 = &v285[2 * v112[3]];
              v125 = v124[2];
              if (v123 > v125 || v123 >= v125 && ((*(v122 + 15) & 0x10) != 0 || (*(v124 + 15) & 0x10) == 0))
              {
                goto LABEL_164;
              }
            }
          }
        }

        goto LABEL_163;
      }

      v86 = 1;
LABEL_169:
      v106[3] = v86;
    }

    if (v86 >= 1)
    {
      v128 = 0;
      v129 = v274;
      v130 = v278;
      do
      {
        v131 = &v283[5 * v128];
        v132 = &v285[2 * v131[3]];
        v133 = *v132;
        v134 = v132[2];
        v135 = *(v132 + 3);
        v136 = v131[1];
        v137 = HIDWORD(v136);
        v138 = v136 >> 16;
        v139 = HIDWORD(*v131);
        v140 = (*v131 << 32) >> 48;
        v141 = v55;
        do
        {
          v142 = v141--;
          v143 = *&v54[2 * v141];
          if (v143 != v133)
          {
            continue;
          }

          if (*(v131 + 32))
          {
            v144 = 24;
          }

          else
          {
            v144 = 26;
          }

          v145 = v135 >> v144;
          v146 = 0.0;
          if ((v145 & 2) == 0)
          {
            goto LABEL_216;
          }

          if (*(v131 + 32))
          {
            v147 = *(v130 + 6);
            if (v147 < 1)
            {
              goto LABEL_210;
            }

            v148 = 15 - v147;
            v149 = v261;
            v150 = 15;
            do
            {
              v152 = *v149--;
              v151 = v152;
              if (v138 >= v152 >> 16)
              {
                v153 = v151 >> 16;
                v154 = HIDWORD(v151);
                if (v138 > v153 || v137 > v154)
                {
                  v172 = 15;
                  goto LABEL_211;
                }
              }

              --v150;
            }

            while (v150 > v148);
            v172 = 15;
            v150 = v148;
          }

          else
          {
            v156 = *(v129 + 6);
            if (v156 < 1)
            {
LABEL_210:
              v172 = 15;
              v150 = 15;
              goto LABEL_211;
            }

            v157 = HIDWORD(v143);
            LODWORD(v158) = v156 + 15;
            v159 = v143 >> 16;
            if (v158 <= 16)
            {
              v158 = 16;
            }

            else
            {
              v158 = v158;
            }

            v160 = v262;
            v172 = 15;
            while (1)
            {
              v162 = *v160++;
              v161 = v162;
              if (v159 < v162 >> 16)
              {
                break;
              }

              v163 = v161 >> 16;
              v164 = HIDWORD(v161);
              if (v159 <= v163 && v157 <= v164)
              {
                break;
              }

              if (v158 == ++v172)
              {
                v172 = v158;
                break;
              }
            }

            v166 = v262;
            v150 = 15;
            while (1)
            {
              v168 = *v166++;
              v167 = v168;
              if (v140 < v168 >> 16)
              {
                break;
              }

              v169 = v167 >> 16;
              v170 = HIDWORD(v167);
              if (v140 <= v169 && v139 < v170)
              {
                break;
              }

              if (v158 == ++v150)
              {
                v150 = v158;
                break;
              }
            }
          }

LABEL_211:
          v173 = v172 - v150;
          v174 = v150 - v172;
          if (*(v131 + 32))
          {
            v175 = v173;
          }

          else
          {
            v175 = v174;
          }

          if (v175 - 1 <= 9)
          {
            v146 = v175;
LABEL_216:
            v176 = v145 & 3;
            if (v176 > 1)
            {
              if (v176 == 2)
              {
                v177 = (11.0 - v146) * v134 / 10.0;
              }

              else
              {
                v177 = v134 / v146;
              }
            }

            else if (v176)
            {
              v177 = 0.0;
            }

            else
            {
              v177 = v134;
            }

            *&v59[4 * v141] = v177 + *&v59[4 * v141];
          }
        }

        while (v142 > 1);
        ++v128;
      }

      while (v128 != v86);
    }

LABEL_226:
    MEMORY[0x1EEE9AC00](&v242);
    v178 = &v242 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    v179 = 0;
    v180 = v260;
    v182 = v246;
    v181 = v247;
    do
    {
      v183 = *(v68 - 1);
      v184 = llroundf(v183 * 100.0);
      v185 = (*&v59[4 * v179] + v183) - *&v181[4 * v179];
      if (v184 <= 100)
      {
        v186 = (v184 & ~(v184 >> 63) & 0x7F) << 17;
      }

      else
      {
        v186 = 13107200;
      }

      *v68 = v186 | *v68 & 0xFF01FFFF;
      *(v68 - 1) = v185;
      if (v185 >= 0.0)
      {
        v187 = 1;
      }

      else
      {
        v187 = v182;
      }

      v178[v179++] = v187;
      v68 += 8;
    }

    while (v55 != v179);
    v78 = v55;
    LODWORD(v8) = v251;
    v4 = v252;
    v6 = v255;
    v5 = v256;
    v46 = v253;
    v188 = v248;
    while (2)
    {
      v189 = v78;
      v190 = v55--;
      if (v178[v55])
      {
        v191 = v190 < 2;
      }

      else
      {
        v191 = 1;
      }

      if (v191)
      {
LABEL_248:
        v78 = v189;
      }

      else
      {
        v192 = &v290[2 * v180 + 2 * v55];
        v193 = v178;
        v194 = v54;
        v195 = v180;
        v196 = v188;
        while (1)
        {
          if (*v193++)
          {
            if (!((*v192 ^ *v194) >> 16))
            {
              break;
            }
          }

          ++v195;
          v194 += 4;
          if (!--v196)
          {
            goto LABEL_248;
          }
        }

        v198 = &v290[2 * v195];
        if (v192[2] > v198[2])
        {
          v199 = *(v192 + 1);
          *v198 = *v192;
          *(v198 + 1) = v199;
        }

        v78 = v55;
        if (v190 != v189)
        {
          v178[v55] = 0;
          goto LABEL_248;
        }
      }

      --v188;
      if (v190 > 1)
      {
        continue;
      }

      break;
    }

    if (v78 >= 1)
    {
      v200 = 0;
      while (v178[v200])
      {
LABEL_257:
        if (++v200 >= v78)
        {
          goto LABEL_260;
        }
      }

      v201 = v78;
      while (1)
      {
        v202 = v201 - 1;
        if (v201 - 1 <= v200)
        {
          break;
        }

        if (v178[--v201])
        {
          v204 = &v290[2 * v180 + 2 * v202];
          v205 = *v204;
          v206 = v204[1];
          v207 = &v290[2 * v180 + 2 * v200];
          *v207 = v205;
          v207[1] = v206;
          --v78;
          goto LABEL_257;
        }
      }

      v78 = v200;
    }

LABEL_260:
    _Block_object_dispose(&v265, 8);
    _Block_object_dispose(v269, 8);
    _Block_object_dispose(v270, 8);
    _Block_object_dispose(v271, 8);
    _Block_object_dispose(v272, 8);
    _Block_object_dispose(&v273, 8);
    _Block_object_dispose(&v277, 8);
    if (v78 >= 1)
    {
      v74 = *(v257 + 24);
      v52 = v259;
      v56 = v260;
      goto LABEL_262;
    }

    v52 = v259;
    v56 = v260;
LABEL_303:
    v55 = v78;
    v10 = v250;
LABEL_304:
    v50 = v56 + v55;
    v282 = v50;
LABEL_305:
    if (v52 > 5)
    {
      break;
    }

    ++v52;
  }

  while (v50 < 50);
LABEL_307:
  v224 = *(v5 + 48);
  v225 = v6[2] + 48 * v8;
  v226 = *(v225 + 32) + (v4 >> 32) - (*(v225 + 16) + *v224);
  if (v226 >= 201)
  {
    v240 = *(v224 + 64);
    if (v240)
    {
      v241 = v50;
      DDLexemCacheItemResetForCapacity(v240, v50);
      DDLexemCacheItemSet(*(v224 + 64), v241, v290);
    }

    else
    {
      *(v224 + 64) = DDLexemCacheItemCreate(v50, v290);
    }

    *(v224 + 72) = v4;
  }

  else
  {
    v227 = *(v224 + 24);
    if (v227 <= v226)
    {
      v228 = v50;
      v227 = v226 + 8;
      if (*(v224 + 32))
      {
        v229 = malloc_type_malloc(8 * v227, 0x2004093837F09uLL);
        v230 = *(v224 + 32);
        v231 = *(v224 + 24) - v230;
        memcpy(v229, (*(v224 + 8) + 8 * v230), 8 * v231);
        memcpy(&v229[8 * v231], *(v224 + 8), 8 * *(v224 + 32));
        free(*(v224 + 8));
        *(v224 + 8) = v229;
        *(v224 + 32) = 0;
      }

      else
      {
        v229 = malloc_type_realloc(*(v224 + 8), 8 * v227, 0x2004093837F09uLL);
        *(v224 + 8) = v229;
      }

      bzero(&v229[8 * *(v224 + 24)], 8 * (v227 - *(v224 + 24)));
      *(v224 + 24) = v227;
      v50 = v228;
    }

    if (*(v224 + 16) <= v226)
    {
      *(v224 + 16) = v226 + 1;
    }

    v232 = *(v224 + 32);
    v233 = *(v224 + 48);
    if (v233 < 0)
    {
      v236 = v50;
      v235 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
      DDLexemCacheItemReset(v235);
      v50 = v236;
    }

    else
    {
      v234 = *(v224 + 40);
      v235 = *(v234 + 8 * v233);
      *(v234 + 8 * v233) = 0;
      *(v224 + 48) = v233 - 1;
    }

    if (v232 + v226 >= v227)
    {
      v237 = v227;
    }

    else
    {
      v237 = 0;
    }

    *(*(v224 + 8) + 8 * (v232 + v226 - v237)) = v235;
    DDLexemCacheItemSet(v235, v50, v290);
    v6 = v255;
  }

  DDLexemCacheGetLexems(*(v5 + 48), v6[2], v4, v2, &v282);
LABEL_323:
  result = v282;
  v239 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DDTokenCacheGetTokenOrSubtokenAfterPosition(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a3 >> 16;
  v6 = a2[2] + 48 * v5;
  if (*(v6 + 32) + (a3 >> 32) - *(v6 + 16) < a1[2])
  {
    v7 = *a1;
    Offset = matchingTokenRealIndexForQueryOffset(*a1, a3, 1);
    v9 = _tokenEntryAtRealIndex(v7, Offset);
    if (v9)
    {
      v12 = *v9;
      v10 = v9 + 1;
      v11 = v12;
LABEL_40:
      v32 = *v10;
      return v11;
    }

    return 4294901760;
  }

  v34 = 0;
  TokensAtPosition = DDTokenCacheGetTokensAtPosition(a1, a2, a3, &v34);
  if (TokensAtPosition < 1)
  {
    v22 = a3 >> 32;
  }

  else
  {
    v15 = v34;
    v11 = *v34;
    if ((*v34 ^ a3) < 0x10000)
    {
      if (TokensAtPosition != 1)
      {
LABEL_35:
        v11 = v15[2];
        v10 = v15 + 3;
        goto LABEL_40;
      }

LABEL_39:
      v10 = v15 + 1;
      goto LABEL_40;
    }

    if (TokensAtPosition != 1)
    {
      v16 = v34 + 2;
      v17 = 1;
      while (1)
      {
        v18 = *v16;
        v16 += 2;
        v11 = v18;
        v19 = v18 >> 16;
        if (v19 >= v5)
        {
          v20 = v19 <= v5 && SHIDWORD(v11) < SHIDWORD(a3);
          if (!v20)
          {
            break;
          }
        }

        if (TokensAtPosition == ++v17)
        {
          goto LABEL_15;
        }
      }

      v15 = &v34[2 * v17];
      goto LABEL_39;
    }

LABEL_15:
    v21 = v34[1];
    v5 = v21 >> 16;
    v22 = v21 >> 32;
  }

  v23 = a1[2];
  v24 = a2[2];
  v25 = v22 + *(v24 + 48 * v5 + 32) - (v23 + *(v24 + 48 * v5 + 16));
  if (v25 > 199)
  {
    return 4294901760;
  }

  v26 = *(v24 + 48 * a2[4] - 16) - v23 + *(v24 + 48 * a2[4] - 24);
  v27 = v26 >= 200 ? 200 : v26;
  if (v26 < v25)
  {
    return 4294901760;
  }

  v28 = 0;
  v11 = 4294901760;
  do
  {
    IfNeeded = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, v25);
    if (!IfNeeded)
    {
      break;
    }

    v30 = *IfNeeded;
    if ((*IfNeeded & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    if (v28)
    {
      return v11;
    }

    _FillNextTokenInCache(a1, a2, v25);
    IfNeeded = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, v25);
    if (!IfNeeded)
    {
      return v11;
    }

    v30 = *IfNeeded;
    v28 = 1;
    if ((*IfNeeded & 0x80000000) == 0)
    {
LABEL_44:
      v31 = v30 << 16 >> 48;
      if (v31 >= 1)
      {
        if (v31 != 1)
        {
          v15 = IfNeeded[1];
          goto LABEL_35;
        }

        v11 = IfNeeded[1];
        v10 = IfNeeded + 2;
        goto LABEL_40;
      }
    }

    v20 = v25++ < v27;
  }

  while (v20);
  return v11;
}

BOOL DDScannerScanQuery(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v4 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1BCFDD000, v4, OS_LOG_TYPE_ERROR, "DDScannerScanQuery called with NULL scanner", &buf, 2u);
    }

    goto LABEL_9;
  }

  v2 = a1;
  if (*(a1 + 233) != 1)
  {
    *(a1 + 233) = 1;
    DDScannerReset(a1);
    if (*(v2 + 40) || (v7 = DDTokenCacheCreate(0), *(v2 + 40) = v7, *(v2 + 236) = 0, v7))
    {
      if (a2 && a2[4])
      {
        kdebug_trace();
        v8 = CFRetain(a2);
        *(v2 + 56) = v8;
        v9 = *(v2 + 24);
        v10 = *(v9 + 24);
        if (v10 != v8)
        {
          if (v10)
          {
            CFRelease(v10);
          }

          *(v9 + 24) = v8;
          if (v8)
          {
            CFRetain(v8);
          }
        }

        *(v9 + 40) = -1;
        v11 = *(v2 + 56);
        v12 = v11[2];
        v13 = *(v12 + 40);
        v14 = v13 << 38 >> 38;
        if ((v13 << 6) >> 6 >= 1)
        {
          v15 = 0;
          while (1)
          {
            DDTokenCacheGetTokenOrSubtokenAtPosition(*(v2 + 40), v11, v15 << 32);
            if (v16 >> 32 <= v15)
            {
              ++v15;
            }

            else
            {
              v15 = v16 >> 32;
            }

            v17 = *(v2 + 40);
            v18 = *(*(v2 + 56) + 16);
            if (v15 >= v14)
            {
              break;
            }

            DDTokenCacheMoveStreamOffset(v17, v18, v15 << 32);
            v11 = *(v2 + 56);
          }

          DDTokenCacheMoveStreamOffset(v17, v18, v14 << 32);
        }

        v92 = a2;
        v19 = (*(v12 + 16) + v14);
        v20 = *(v2 + 200);
        if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 0 && !*(v2 + 128))
        {
          goto LABEL_38;
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (*(v2 + 136) >= Current + -9.0)
        {
          goto LABEL_38;
        }

        *(v2 + 136) = Current;
        if ((v20 & 4) != 0)
        {
          v22 = *(v2 + 128);
          if (v22)
          {
            DDLookupTableUpdateFromExternalFile(5, (v2 + 104), v22);
          }
        }

        if (v20)
        {
          DDLookupTableUpdateFromExternalFile(6, (v2 + 80), 0);
          if ((v20 & 2) == 0)
          {
LABEL_35:
            if ((v20 & 8) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_138;
          }
        }

        else if ((v20 & 2) == 0)
        {
          goto LABEL_35;
        }

        if (!altPath)
        {
          v88 = CFPreferencesCopyAppValue(@"LookupSuggestionsDisabled", @"com.apple.lookup.shared");
          if (v88)
          {
            v89 = v88;
            v90 = CFGetTypeID(v88);
            if (v90 == CFBooleanGetTypeID())
            {
              Value = CFBooleanGetValue(v89);
              CFRelease(v89);
              if (Value)
              {
                _DDScannerDestroyOptionalLookupTable(v2, 2);
                _DDScannerDestroyOptionalLookupTable(v2, 3);
                if ((v20 & 8) != 0)
                {
LABEL_138:
                  DDLookupTableUpdateFromExternalFile(4, (v2 + 112), 0);
                  if ((v20 & 0x80) != 0)
                  {
LABEL_37:
                    DDLookupTableUpdateFromExternalFile(1, (v2 + 120), 0);
                  }

LABEL_38:
                  *(v2 + 232) &= ~2u;
                  *(v2 + 232) &= ~1u;
                  *(v2 + 176) = -1;
                  v23 = *(v2 + 224);
                  v24 = 0.0;
                  if (v23 > 0.0)
                  {
                    v24 = v23 + CFAbsoluteTimeGetCurrent();
                  }

                  v93 = v14;
                  CFArrayRemoveAllValues(*(v2 + 168));
                  if (*(v2 + 192) >> 31)
                  {
                    CFArrayRemoveAllValues(*(v2 + 160));
                  }

                  malloc_make_nonpurgeable(*(v2 + 208));
                  TokenOrSubtokenAfterPosition = DDTokenCacheGetTokenOrSubtokenAfterPosition(*(v2 + 40), *(v2 + 56), v19 << 32);
                  v95 = *(*(v2 + 56) + 32);
                  v96 = v26;
                  if (v95 >= 1)
                  {
                    v27 = TokenOrSubtokenAfterPosition;
                    v28 = 0;
                    v94 = v19;
                    while (1)
                    {
                      if (*(v2 + 232))
                      {
                        goto LABEL_116;
                      }

                      v29 = *(*(v2 + 56) + 16) + 48 * v28;
                      v30 = *(v29 + 16);
                      v31 = *(v29 + 24);
                      if (v28)
                      {
                        v32 = v30;
                      }

                      else
                      {
                        v32 = v94;
                      }

                      v33 = v31 + v30;
                      if (v31 < 0 || v30 < 0 || v33 >= 2147483646)
                      {
                        if (DDLogHandle_onceToken != -1)
                        {
                          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                        }

                        v34 = DDLogHandle_error_log_handle;
                        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf) = 0;
                          _os_log_error_impl(&dword_1BCFDD000, v34, OS_LOG_TYPE_ERROR, "Fragment is too long for DD, ignoring. Do you really need to analyze something this long?", &buf, 2u);
                        }

                        *(v2 + 232) |= 1u;
                      }

                      if (v32 <= v33)
                      {
                        break;
                      }

LABEL_57:
                      if (++v28 == v95)
                      {
                        goto LABEL_116;
                      }
                    }

                    v98 = v33;
                    v99 = v28 << 16;
                    v102 = v28 << 16;
                    v35 = v28;
                    v97 = v28;
                    while (1)
                    {
                      if (*(v2 + 232))
                      {
                        goto LABEL_57;
                      }

                      v36 = v35;
                      v37 = v102 | (v32 << 32);
                      v38 = *(v2 + 216);
                      if (v38 && !(*(v38 + 16))(v38, v102 | (v32 << 32)))
                      {
                        goto LABEL_96;
                      }

                      if (*(v2 + 192))
                      {
                        v58 = *(v2 + 168);
                        Count = CFArrayGetCount(v58);
                        if (Count > 10)
                        {
                          goto LABEL_96;
                        }

                        v60 = Count;
                        if (Count >= 1)
                        {
                          v101 = v27;
                          v61 = 0;
                          v62 = 1;
                          do
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(v58, v61);
                            if (!ValueAtIndex)
                            {
                              break;
                            }

                            v64 = ValueAtIndex;
                            if (!_typesAreEqual(ValueAtIndex[8], @"Compatibility") && !_typesAreEqual(v64[8], @"Data") && !_typesAreEqual(v64[8], @"Tag") && !_typesAreEqual(v64[8], @"Generic"))
                            {
                              break;
                            }

                            v62 = ++v61 < v60;
                          }

                          while (v60 != v61);
                          v27 = v101;
                          v33 = v98;
                          if (v62)
                          {
LABEL_96:
                            *(v2 + 232) |= 1u;
                            v35 = v36;
                            goto LABEL_97;
                          }
                        }
                      }

                      *(v2 + 184) = 0;
                      DDTokenCacheMoveStreamOffset(*(v2 + 40), *(*(v2 + 56) + 16), v37);
                      v39 = *(*(v2 + 56) + 16);
                      v35 = v36;
                      v40 = *(v39 + 48 * v36 + 32) + v32 - *(v39 + 48 * v36 + 16);
                      if (v99 >= 0x10000 || v32 > *(v39 + 16))
                      {
                        --v40;
                      }

                      v41 = *(v2 + 48);
                      v42 = v40 - *v41;
                      if (v42 >= 1)
                      {
                        v100 = v27;
                        v43 = *(v41 + 16);
                        if (v42 >= v43)
                        {
                          v44 = *(v41 + 16);
                        }

                        else
                        {
                          v44 = v42;
                        }

                        if (v43 >= 1)
                        {
                          v45 = 0;
                          if (v44 <= 1)
                          {
                            v46 = 1;
                          }

                          else
                          {
                            v46 = v44;
                          }

                          do
                          {
                            v48 = *(v41 + 24);
                            v47 = *(v41 + 32);
                            if (v45 + v47 < v48)
                            {
                              v48 = 0;
                            }

                            v49 = v45 + v47 - v48;
                            v50 = *(v41 + 8);
                            v51 = *(v50 + 8 * v49);
                            if (v51)
                            {
                              DDLexemCacheItemReset(*(v50 + 8 * v49));
                              DDLexemCacheInsertItemInFreeArray(v41, v51);
                              *(*(v41 + 8) + 8 * v49) = 0;
                            }

                            ++v45;
                          }

                          while (v46 != v45);
                        }

                        v52 = *(v41 + 24);
                        v53 = *(v41 + 32) + v44;
                        *(v41 + 32) = v53;
                        v54 = v53 < v52;
                        v55 = v53 - v52;
                        if (!v54)
                        {
                          *(v41 + 32) = v55;
                        }

                        *(v41 + 16) -= v44;
                        *v41 += v44;
                        v28 = v97;
                        v33 = v98;
                        v27 = v100;
                        v35 = v36;
                      }

                      buf = 0uLL;
                      v104 = v102 | (v32 << 32);
                      v105 = 0;
                      _DDScannerHandleState(v2, &buf, 0);
                      if ((~v27 & 0xFFFF0000) != 0)
                      {
                        if (v35 < v27 >> 16 || v35 <= v27 >> 16 && v32 < SHIDWORD(v27))
                        {
                          goto LABEL_109;
                        }

                        v32 = v96 >> 32;
                        v27 = DDTokenCacheGetTokenOrSubtokenAfterPosition(*(v2 + 40), *(v2 + 56), v96);
                      }

                      else
                      {
                        v56 = DDTokenCacheGetTokenOrSubtokenAfterPosition(*(v2 + 40), *(v2 + 56), v37);
                        v27 = v56;
                        if ((~v56 & 0xFFFF0000) == 0)
                        {
                          v96 = v57;
LABEL_109:
                          ++v32;
                          goto LABEL_97;
                        }

                        if (v35 >= v56 >> 16 && (v35 > v56 >> 16 || v32 > SHIDWORD(v56)))
                        {
                          v96 = v102 | (v32 << 32);
                          v27 = v96;
                          goto LABEL_97;
                        }
                      }

                      v96 = v57;
LABEL_97:
                      if (v23 > 0.0 && (v32 & 0x7FF) == 0 && v24 < CFAbsoluteTimeGetCurrent())
                      {
                        *(v2 + 232) |= 1u;
                        if (DDLogHandle_onceToken != -1)
                        {
                          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                        }

                        v65 = DDLogHandle_error_log_handle;
                        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(buf) = 134217984;
                          *(&buf + 4) = v2;
                          _os_log_impl(&dword_1BCFDD000, v65, OS_LOG_TYPE_DEFAULT, "DDScanner %p has timed out", &buf, 0xCu);
                        }
                      }

                      if (v32 > v33)
                      {
                        goto LABEL_57;
                      }
                    }
                  }

LABEL_116:
                  malloc_make_purgeable(*(v2 + 208));
                  v66 = CFArrayGetCount(*(v2 + 168));
                  v67 = v66;
                  v5 = v66 > 0;
                  if (v93 >= 1 && v66 > 0)
                  {
                    v68 = *(v2 + 168);
                    if (v68)
                    {
                      _offsetResultsInArray(v68, v93);
                    }
                  }

                  if (*(v2 + 236))
                  {
                    DDTokenCacheDestroy(*(v2 + 40));
                    *(v2 + 40) = 0;
                    *(v2 + 236) = 0;
                  }

                  kdebug_trace();
                  LOBYTE(buf) = 0;
                  if ((*(v2 + 232) & 1) == 0)
                  {
                    v70 = *(v2 + 248);
                    if (v70)
                    {
                      if (!*(v2 + 264))
                      {
                        if (!*(v2 + 256))
                        {
                          goto LABEL_151;
                        }

                        if (DDMLEnhancementEnabled_onceToken != -1)
                        {
                          dispatch_once(&DDMLEnhancementEnabled_onceToken, &__block_literal_global_55);
                        }

                        if (!DDMLEnhancementEnabled__isDDMLEnabled)
                        {
                          goto LABEL_151;
                        }

                        gotLoadHelper_x8__kMRLNeuralNetworkOptionModelURLKey(v69);
                        if (!**(v72 + 2080))
                        {
                          goto LABEL_151;
                        }

                        v70 = *(v2 + 248);
                      }

                      if (v70 == 2)
                      {
                        if (v67 < 1)
                        {
                          v5 = 0;
                          goto LABEL_151;
                        }
                      }

                      else if (v67 < 1 || v70 != 4)
                      {
                        goto LABEL_151;
                      }

                      CopyFullStringExcludingContext = DDScanQueryCopyFullStringExcludingContext(v92);
                      if (CopyFullStringExcludingContext)
                      {
                        v74 = CopyFullStringExcludingContext;
                        v75 = DDMLScannerScanStringAroundResults(v2, CopyFullStringExcludingContext, *(v2 + 168), &buf);
                        CFRelease(v74);
                        if (buf)
                        {
                          v5 = DDMLUpdateScannerResultsWithMLResults(v2, *(v2 + 56), v75, *(v2 + 272));
LABEL_165:
                          if (!v5)
                          {
                            DDScannerReset(v2);
                          }

                          if (!*(v2 + 233))
                          {
                            DDScannerThreadDebug(v2, 0);
                            goto LABEL_169;
                          }

                          goto LABEL_168;
                        }
                      }
                    }
                  }

LABEL_151:
                  if (*(v2 + 248))
                  {
                    if ((*(v2 + 195) & 0x20) == 0)
                    {
                      v76 = *(v2 + 168);
                      if (v76)
                      {
                        v77 = CFArrayGetCount(v76);
                        if (v77 >= 1)
                        {
                          v78 = v77;
                          v79 = 0;
                          v80 = 0;
                          v81 = -1;
                          v82 = -1000000;
                          while (1)
                          {
                            v83 = CFArrayGetValueAtIndex(*(v2 + 168), v79);
                            v84 = v83;
                            v85 = v83[6];
                            if (v83[4] <= v81)
                            {
                              if (DDResultsCanShareRange(v80, v83))
                              {
                                goto LABEL_164;
                              }

                              if (v82 > v85)
                              {
                                CFArrayRemoveValueAtIndex(*(v2 + 168), v79);
                                --v78;
                                --v79;
                                goto LABEL_164;
                              }

                              if (v79 >= 1)
                              {
                                CFArrayRemoveValueAtIndex(*(v2 + 168), v79 - 1);
                                --v78;
                                v82 = v85;
                                v80 = v84;
                                --v79;
                                goto LABEL_164;
                              }
                            }

                            else
                            {
                              v81 = v83[4];
                            }

                            v82 = v85;
                            v80 = v84;
LABEL_164:
                            if (++v79 >= v78)
                            {
                              goto LABEL_165;
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_165;
                }

LABEL_36:
                if ((v20 & 0x80) == 0)
                {
                  goto LABEL_38;
                }

                goto LABEL_37;
              }
            }

            else
            {
              CFRelease(v89);
            }
          }
        }

        DDLookupTableUpdateFromExternalFile(2, (v2 + 88), 0);
        DDLookupTableUpdateFromExternalFile(3, (v2 + 96), 0);
        if ((v20 & 8) != 0)
        {
          goto LABEL_138;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v71 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_1BCFDD000, v71, OS_LOG_TYPE_ERROR, "DDScannerScanQuery called with NULL token cache", &buf, 2u);
      }
    }

    if (!*(v2 + 233))
    {
      a1 = v2;
      v3 = 0;
      goto LABEL_4;
    }

    v5 = 0;
LABEL_168:
    *(v2 + 233) = 0;
    goto LABEL_169;
  }

  v3 = 1;
LABEL_4:
  DDScannerThreadDebug(a1, v3);
LABEL_9:
  v5 = 0;
LABEL_169:
  v86 = *MEMORY[0x1E69E9840];
  return v5;
}

void _DDScannerHandleState(uint64_t a1, uint64_t *a2, int a3)
{
  v107 = *MEMORY[0x1E69E9840];
  if (*(a1 + 184) > 30000)
  {
    goto LABEL_146;
  }

  while (2)
  {
    v5 = a2[2];
    v4 = a2[3];
    v99 = a2[1];
    v100 = *a2;
    v105 = 0;
    v6 = computeLexemsAtPosition();
    if (v6 >= 50 && (*(a1 + 232) & 2) == 0)
    {
      CopySubStringFromPos = DDScanQueryCopySubStringFromPos(*(a1 + 56), v5);
      CFRelease(CopySubStringFromPos);
      *(a1 + 232) |= 2u;
    }

    v7 = v4 << 16 >> 48;
    v8 = v4;
    if ((v4 - 7901) < 0xFFFFFFFFFFFFE0BFLL)
    {
      v14 = 0;
      goto LABEL_118;
    }

    v9 = *(a1 + 208);
    if (!v9)
    {
      v14 = 0;
      goto LABEL_118;
    }

    v10 = v9 + v4;
    v11 = *(*(a1 + 16) + 8);
    v12 = (*(v11 + 8) + 4 * v7);
    if (v6 >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = v105;
      while (1)
      {
        v18 = (v17 + 32 * (v6 - 1));
        v19 = *v18;
        v20 = *(v18 + 2);
        v21 = *(v18 + 3);
        v22 = *(v18 + 1);
        v91 = v15 <= *v18;
        v15 = *v18;
        if (v91)
        {
          v16 = 0;
        }

        v23 = v12[1];
        if ((v15 - 1) > 6)
        {
          if (v19 << 48 == 0x28000000000000 && (v23 & 0x1000000) != 0)
          {
            goto LABEL_64;
          }
        }

        else if ((HIBYTE(v23) >> v15))
        {
          goto LABEL_64;
        }

        v25 = *v12;
        v26 = v25 << 40 >> 40;
        v27 = v25 << 40;
        v28 = ((v23 << 8) >> 8) - 1;
        if (v16 <= 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = v16;
        }

        if (v29 == v27 >> 40)
        {
          v30 = (*(v11 + 16) + 4 * v26);
          v31 = *v30 >> 1;
          if (v31 != v15 && (v31 >= v15 || *(*(v11 + 24) + v26) + v31 < v15))
          {
            goto LABEL_64;
          }

          v32 = *v30;
          if (*v30)
          {
            goto LABEL_24;
          }

          goto LABEL_49;
        }

        if (v29 <= v26)
        {
          goto LABEL_64;
        }

        v34 = *(v11 + 16);
        v35 = (v34 + 4 * v26);
        v36 = *v35 >> 1;
        if (v36 > v15)
        {
          goto LABEL_64;
        }

        if (v36 == v15)
        {
          goto LABEL_48;
        }

        v37 = *(v11 + 24);
        if (*(v37 + v26) + v36 >= v15)
        {
          goto LABEL_48;
        }

        v35 = (v34 + 4 * v29);
        v38 = *v35 >> 1;
        if (v38 <= v15)
        {
          if (v38 != v15 && *(v37 + v29) + v38 < v15)
          {
            goto LABEL_64;
          }

          if (v15 > 0x28)
          {
            v16 = v29 - (v38 == v15);
          }

LABEL_48:
          v32 = *v35;
          if (*v35)
          {
            v33 = v35 + 1;
            goto LABEL_52;
          }

LABEL_49:
          v43 = (*(v11 + 40) + 2 * HIWORD(v32));
          v45 = *v43;
          v33 = v43 + 1;
          v44 = v45;
          if (v45)
          {
            goto LABEL_53;
          }

          goto LABEL_64;
        }

        v39 = v29 - 1;
        if (v39 <= v26)
        {
LABEL_38:
          if (v15 > 40)
          {
            v16 = v39;
          }

          goto LABEL_64;
        }

        v40 = v26 + 1;
        while (1)
        {
          v41 = (v39 + v40) / 2;
          v42 = *(v34 + 4 * v41) >> 1;
          if (v42 > v15)
          {
            v39 = v41 - 1;
            goto LABEL_37;
          }

          if (v42 == v15)
          {
            break;
          }

          if (*(v37 + v41) + v42 >= v15)
          {
            goto LABEL_68;
          }

          v40 = v41 + 1;
LABEL_37:
          if (v40 > v39)
          {
            goto LABEL_38;
          }
        }

        v42 = v15;
LABEL_68:
        if (v15 > 0x28)
        {
          v16 = v41 - (v42 == v15);
        }

        v32 = *(v34 + 4 * v41);
        if ((v32 & 1) == 0)
        {
          goto LABEL_49;
        }

        v30 = (v34 + 4 * v41);
LABEL_24:
        v33 = v30 + 1;
LABEL_52:
        v44 = 1;
LABEL_53:
        v46 = 0;
        v47 = v19 & 0xFFFFFFFFFFFF0000;
        v48 = (v15 << 17) | HIWORD(v21) & 1;
        do
        {
          v49 = v33[v46];
          if (v49)
          {
            if (v14 <= 99)
            {
              v53 = &v106[2 * v14];
              *v53 = v47;
              *(v53 + 2) = v20;
              *(v53 + 3) = v48 | v49 & 0xFFFE | 0x10000;
              v53[1] = v22;
              ++v14;
            }
          }

          else if (v14 <= 99)
          {
            v50 = v49 >> 1;
            v51 = v13;
            while (v51 >= 1)
            {
              v52 = *(v9 + v4 - 2 + 2 * v51--);
              if (v50 == v52)
              {
                goto LABEL_63;
              }
            }

            HIDWORD(v106[2 * v14]) = HIDWORD(v106[2 * v14]) & 0xFFFE0001 | v49;
            ++v14;
            *(v10 + 2 * v13++) = v50;
          }

LABEL_63:
          ++v46;
        }

        while (v46 != v44);
LABEL_64:
        v91 = v6-- <= 1;
        if (v91)
        {
          goto LABEL_73;
        }
      }
    }

    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
LABEL_73:
    v54 = *(v11 + 4);
    if (v15 <= v54)
    {
      v16 = 0;
    }

    v55 = v12[1];
    if ((v54 - 1) >= 7)
    {
      if (v54 == 40 && (v55 & 0x1000000) != 0)
      {
        goto LABEL_118;
      }
    }

    else if ((HIBYTE(v55) >> v54))
    {
      goto LABEL_118;
    }

    v56 = *v12;
    v57 = v56 << 40 >> 40;
    v58 = v56 << 40;
    v59 = ((v55 << 8) >> 8) - 1;
    if (v16 > 0)
    {
      v59 = v16;
    }

    if (v59 == v58 >> 40)
    {
      v60 = (*(v11 + 16) + 4 * v57);
      v61 = *v60;
      if (v54 != v61 >> 1)
      {
        v74 = v61 >> 1;
        if (v54 <= v74 || *(*(v11 + 24) + v57) + v74 < v54)
        {
          goto LABEL_118;
        }
      }

      v62 = *v60;
      if (*v60)
      {
        v63 = (v60 + 1);
        goto LABEL_109;
      }

      goto LABEL_106;
    }

    if (v59 <= v57)
    {
      goto LABEL_118;
    }

    v64 = *(v11 + 16);
    v65 = (v64 + 4 * v57);
    v66 = *v65;
    if (v54 < (v66 >> 1))
    {
      goto LABEL_118;
    }

    v67 = v66 >> 1;
    if (v54 == v66 >> 1)
    {
      goto LABEL_105;
    }

    v68 = *(v11 + 24);
    if (*(v68 + v57) + v67 >= v54)
    {
      goto LABEL_105;
    }

    v65 = (v64 + 4 * v59);
    v69 = *v65;
    if (v54 >= v69 >> 1)
    {
      if (v54 != v69 >> 1 && *(v68 + v59) + (v69 >> 1) < v54)
      {
        goto LABEL_118;
      }

LABEL_105:
      v62 = *v65;
      if (*v65)
      {
        v63 = (v65 + 1);
        goto LABEL_109;
      }

LABEL_106:
      v75 = (*(v11 + 40) + 2 * HIWORD(v62));
      v77 = *v75;
      v63 = (v75 + 1);
      v76 = v77;
      if (v77)
      {
        goto LABEL_110;
      }

      goto LABEL_118;
    }

    v70 = v59 - 1;
    if (v70 <= v57)
    {
      goto LABEL_118;
    }

    v71 = v57 + 1;
    while (1)
    {
      v72 = (v70 + v71) / 2;
      v73 = *(v64 + 4 * v72);
      if (v54 >= (v73 >> 1))
      {
        break;
      }

      v70 = v72 - 1;
LABEL_98:
      if (v71 > v70)
      {
        goto LABEL_118;
      }
    }

    if (v54 != v73 >> 1 && *(v68 + v72) + (v73 >> 1) < v54)
    {
      v71 = v72 + 1;
      goto LABEL_98;
    }

    v62 = *(v64 + 4 * v72);
    if ((v62 & 1) == 0)
    {
      goto LABEL_106;
    }

    v63 = v64 + 4 * v72 + 2;
LABEL_109:
    v76 = 1;
LABEL_110:
    v78 = 0;
    v79 = v9 + v4 - 2;
    do
    {
      if (v14 <= 99)
      {
        v80 = *(v63 + 2 * v78);
        v81 = v80 >> 1;
        v82 = v13;
        while (v82 >= 1)
        {
          v83 = *(v79 + 2 * v82--);
          if (v81 == v83)
          {
            goto LABEL_117;
          }
        }

        HIDWORD(v106[2 * v14]) = HIDWORD(v106[2 * v14]) & 0xFFFE0001 | v80 & 0xFFFE;
        ++v14;
        *(v10 + 2 * v13++) = v81;
      }

LABEL_117:
      ++v78;
    }

    while (v78 != v76);
LABEL_118:
    v84 = v4 >> 48;
    if (a3 > 69)
    {
      goto LABEL_139;
    }

    v85 = *(a1 + 176);
    if (v85 < 0)
    {
      goto LABEL_120;
    }

    if (v85 < v4)
    {
LABEL_139:
      if (v14 >= 1)
      {
        v14 = 1;
      }

      if ((*(a1 + 232) & 2) == 0)
      {
        *(a1 + 232) |= 2u;
      }

      v86 = v14 - 1;
      goto LABEL_129;
    }

    *(a1 + 176) = -1;
LABEL_120:
    v86 = v14 - 1;
    if (v14 <= 1)
    {
LABEL_129:
      if (v14 < 1)
      {
        goto LABEL_146;
      }

      v103 = 0u;
      v104 = 0u;
      v92 = &v106[2 * v86];
      v93 = v92[1];
      v101 = *v92;
      v102 = v93;
      if (!processToken(a1, v7, v5, v84, v100, v99, v8, &v101, &v103))
      {
        goto LABEL_146;
      }

      v94 = v104;
      *a2 = v103;
      *(a2 + 1) = v94;
      if (*(a1 + 184) >= 30001)
      {
        goto LABEL_146;
      }

      continue;
    }

    break;
  }

  v87 = v106;
  v88 = v14 - 1;
  while (1)
  {
    v89 = v87[1];
    v101 = *v87;
    v102 = v89;
    v103 = 0u;
    v104 = 0u;
    if (processToken(a1, v7, v5, v84, v100, v99, v8, &v101, &v103))
    {
      v101 = v103;
      v102 = v104;
      _DDScannerHandleState(a1, &v101, (a3 + 1));
    }

    v90 = *(a1 + 176);
    v91 = v90 >= 1 && v90 < v8;
    if (v91)
    {
      break;
    }

    v87 += 2;
    if (!--v88)
    {
      goto LABEL_129;
    }
  }

LABEL_146:
  v96 = *MEMORY[0x1E69E9840];
}

BOOL DDScannerScanStringWithRangeAndContextOffset(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v10 = os_signpost_id_generate(DDLogHandle_error_log_handle);
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = DDLogHandle_error_log_handle;
    if (os_signpost_enabled(DDLogHandle_error_log_handle))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v10, "datadetectors.scanString", &unk_1BD01C96D, buf, 2u);
    }
  }

  if (!a1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v14 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, "DDScannerScanStringWithRange called with NULL scanner", v23, 2u);
    }

    return 0;
  }

  if (*(a1 + 233) == 1)
  {
    v12 = a1;
    v13 = 1;
LABEL_23:
    DDScannerThreadDebug(v12, v13);
    return 0;
  }

  *(a1 + 233) = 1;
  if (a2 && a4 != a5)
  {
    v16 = *(a1 + 64);
    if (v16)
    {
      DDScanQueryReset(v16);
      DDScanQueryAddTextFragment(*(a1 + 64), a2, a3, a4, 0, 0, 0);
      if (!a5)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *(a1 + 64) = DDScanQueryCreateFromString(0, a2, a3, a4);
      if (!a5)
      {
LABEL_30:
        v20 = *(a1 + 40);
        if (v20)
        {
          *(v20 + 392) = 0;
        }

        if (*(a1 + 233))
        {
          *(a1 + 233) = 0;
        }

        else
        {
          DDScannerThreadDebug(a1, 0);
        }

        v15 = DDScannerScanQuery(a1, *(a1 + 64));
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v21 = DDLogHandle_error_log_handle;
          if (os_signpost_enabled(DDLogHandle_error_log_handle))
          {
            *v22 = 0;
            _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v21, OS_SIGNPOST_INTERVAL_END, v10, "datadetectors.scanString", &unk_1BD01C96D, v22, 2u);
          }
        }

        return v15;
      }
    }

    v18 = *(a1 + 64);
    if (*(v18 + 32) == 1)
    {
      v19 = *(v18 + 16);
      if (v19)
      {
        *(v19 + 40) = *(v19 + 40) & 0xFC000000 | a5 & 0x3FFFFFF;
      }
    }

    goto LABEL_30;
  }

  DDScannerReset(a1);
  if (!*(a1 + 233))
  {
    v12 = a1;
    v13 = 0;
    goto LABEL_23;
  }

  v15 = 0;
  *(a1 + 233) = 0;
  return v15;
}

uint64_t DDLexerDeterministicScan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v81 = *MEMORY[0x1E69E9840];
  v8 = 16 * a4;
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = &v64 - 2 * v10;
  v13 = v12 >> 16;
  if (v13 == *(v9 + 40))
  {
    v14 = *(a1 + 32);
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 24) + 16) + 48 * v13;
    *(a1 + 40) = v13;
    *(a1 + 48) = (*(v16 + 40) & 0x40000000) != 0;
    v17 = *v16;
    v14 = CFStringOpenUText();
    *(a1 + 32) = v14;
  }

  utext_setNativeIndex(v14, a2 >> 32);
  v18 = *(a1 + 56);
  v19 = *(v18 + 8);
  v70 = *(v18 + 16);
  v74 = *(v19 + 4);
  v78 = a1;
  v79 = a2;
  v80 = *(*(*(a1 + 24) + 16) + 48 * v13 + 16);
  v20 = *(a1 + 8);
  if (!v20 || (v21 = v20(*(a1 + 16), a2), v23 = v22, Next = getNext(&v78), !*(a1 + 56)) || Next == -1)
  {
    result = 0;
    goto LABEL_77;
  }

  v76 = Next;
  v66 = a3;
  v73 = v19 + 16;
  bzero(v11, v8);
  v75 = 0;
  v25 = 0;
  v71 = 0;
  v26 = 0;
  v27 = 0;
  v72 = v19 + 22;
  v28 = v11;
  v29 = -1;
  v30 = 4294901760;
  v31 = v74;
  v65 = v28;
  v69 = v28;
  do
  {
    v32 = v76;
    if (v76 != -1)
    {
      if (v25)
      {
        v77 = 0x100000001;
        v33 = v75;
        goto LABEL_25;
      }

      if (!HIWORD(v76))
      {
        v34 = *(*(a1 + 56) + 72);
        if ((v76 & 0xFC00) == 0xD800)
        {
          v35 = 320;
        }

        else
        {
          v35 = 0;
        }

        v36 = v35 + (v76 >> 5);
        goto LABEL_21;
      }

      if (HIWORD(v76) > 0x10u)
      {
        v34 = *(a1 + 56);
      }

      else
      {
        v37 = (*(*(a1 + 56) + 88))(*(*(*(a1 + 56) + 72) + 2 * (((v76 >> 10) & 0x1F) + 4 * *(*(*(a1 + 56) + 72) + 2 * (((v76 >> 10) + 55232) >> 5)))));
        v34 = *(a1 + 56);
        if (v37 >= 1)
        {
          v34 = *(v34 + 72);
          v36 = v37 + ((v32 >> 5) & 0x1F);
LABEL_21:
          LOWORD(v34) = *(v34 + 2 * ((v32 & 0x1F) + 4 * *(v34 + 2 * v36)));
LABEL_24:
          v77 = 0;
          v33 = v34 & 0xBFFF;
          goto LABEL_25;
        }
      }

      LODWORD(v34) = *(v34 + 104);
      goto LABEL_24;
    }

    if (v25 == 1)
    {
      break;
    }

    v77 = 0x100000001;
    v33 = 1;
LABEL_25:
    v38 = *(v72 + v31 + 2 * (v33 >> 5));
    v39 = *(v72 + v31 + 2 * (v33 >> 5));
    v75 = v33;
    if (v38 < 0)
    {
      v40 = v39 & 0x7FFF;
    }

    else
    {
      v40 = *(v70 + 2 * (v33 & 0x1F | (32 * v39)));
    }

    v31 = (v40 * v74);
    v41 = (v73 + v31);
    if (v29 < 0)
    {
      v29 = -1;
    }

    else if (v40 != v29)
    {
      v42 = *v41 == -1 ? v41[2] : -1;
      v29 = -1;
      if ((~v30 & 0xFFFF0000) != 0)
      {
        v43 = v71;
        if (v71 != v42)
        {
          v44 = v69;
          *v69 = v30;
          *(v44 + 2) = v43;
          v69 = v44 + 2;
          --v4;
          v27 = (v27 + 1);
        }
      }
    }

    if (*v41 == -1)
    {
      v71 = v41[2];
      v30 = v79;
      if ((~v21 & 0xFFFF0000) != 0)
      {
        v67 = v27;
        v68 = v4;
        v45 = 0;
        v46 = v79 >> 16;
        v47 = HIDWORD(v79);
        while ((v30 ^ v21) >= 0x10000)
        {
          v48 = v21 >> 16;
          if ((v48 < v46 || v48 <= v46 && SHIDWORD(v21) < v47) && v46 >= v23 >> 16 && (v46 > v23 >> 16 || v47 >= SHIDWORD(v23)))
          {
            if (!((v30 ^ v23) >> 16))
            {
              v45 = 1;
            }

            v21 = (*(a1 + 8))(*(a1 + 16), v30);
            v23 = v49;
            if ((~v21 & 0xFFFF0000) != 0)
            {
              continue;
            }
          }

          if (!v45)
          {
            v29 = v40;
            v27 = v67;
            v4 = v68;
            goto LABEL_58;
          }

          break;
        }

        v29 = -1;
        v27 = v67;
        v4 = v68;
        if (v71 != -1 && v68 >= 1 && (v30 & 0xFFFF0000) != 0xFFFF0000)
        {
          v50 = v69;
          *v69 = v30;
          *(v50 + 2) = v71;
          v69 = v50 + 2;
          v27 = (v27 + 1);
          --v4;
        }

        v30 = 4294901760;
      }

      else
      {
        v29 = v40;
      }
    }

LABEL_58:
    v51 = v77;
    if (!v40)
    {
      v51 = 1;
    }

    if (v51)
    {
      v25 = HIDWORD(v77);
      if (!v40)
      {
        break;
      }
    }

    else
    {
      v76 = getNext(&v78);
      v25 = HIDWORD(v77);
    }

    if (v4 < 1)
    {
      break;
    }
  }

  while (v26++ < 0x12C);
  if (v29 < 0 || (v53 = v71, v71 == -1))
  {
    v55 = v65;
    v54 = v66;
  }

  else
  {
    v55 = v65;
    v54 = v66;
    if (v4 >= 1 && (v30 & 0xFFFF0000) != 0xFFFF0000)
    {
      v56 = v69;
      *v69 = v30;
      *(v56 + 2) = v53;
      LODWORD(v27) = v27 + 1;
    }
  }

  result = v27;
  if (v27 >= 1)
  {
    v58 = (v54 + 8);
    v59 = (v55 + 1);
    v60 = v27;
    do
    {
      v61 = *(v59 - 1);
      v62 = *v59;
      v59 += 8;
      *(v58 - 1) = v61 & 0xFFFFFFFFFFFF0000 | v62;
      *v58 = 0;
      v58[1] = 0;
      v58[2] = 0;
      v58 += 4;
      --v60;
    }

    while (v60);
  }

LABEL_77:
  v63 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t processToken(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v9 = a7;
  v13 = a2;
  v15 = a9;
  v16 = *(a8 + 12);
  if ((v16 & 0x10000) != 0)
  {
    v24 = *(a8 + 16);
    v23 = *(a8 + 24);
    v25 = v16 & 1 | (v24 != 0) | (v23 != 0);
    v26 = *a8 & 0xFFFFFFFF00000000;
    v27 = 24;
    if (v25)
    {
      v27 = 48;
    }

    v28 = v27 + a7;
    if ((v27 + a7) > 0x1F40)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(a1 + 208) + a7;
      v9 = v28;
    }

    v30 = *(v29 + 12) & 0xF0;
    *(v29 + 8) = (a3 >> 16) & 0xFFFFFF | ((WORD1(*a8) - BYTE2(a3)) << 24);
    *v29 = v26 | HIDWORD(a3);
    *(v29 + 14) = -(v16 >> 17);
    v31 = v30 | v25;
    *(v29 + 12) = v30 | v25;
    *(v29 + 13) = 0;
    *(v29 + 16) = a5;
    if (v16 & 1 | (v24 != 0) | (v23 != 0))
    {
      *(v29 + 24) = 0;
      *(v29 + 32) = 0;
      *(v29 + 40) = 0;
      if (v16)
      {
        v32 = *(a8 + 8);
        v31 |= 2u;
        *(v29 + 12) = v31;
        *(v29 + 24) = v32;
      }

      if (v24)
      {
        v31 |= 8u;
        *(v29 + 12) = v31;
        *(v29 + 32) = v24;
      }

      if (v23)
      {
        *(v29 + 12) = v31 | 4;
        *(v29 + 40) = v23;
      }
    }

    v33 = *(a1 + 184);
    if (v33 > 30000)
    {
      return 0;
    }

    v34 = *(a8 + 12);
    v35 = *a8;
    *(a1 + 184) = v33 + 1;
    if ((v9 + 16) > 0x1F40)
    {
      return 0;
    }

    v36 = *(a1 + 208);
    if (!v36)
    {
      return 0;
    }

    v37 = v34 >> 1;
    v38 = (v36 + v9);
    *v38 = a6;
    v38[1] = a2;
    v39 = *(a1 + 56);
    v40 = v35 >> 16;
    v41 = *(v39 + 16);
    v42 = v41 + 48 * v40;
    if (*(v42 + 24) + *(v42 + 16) == v35 >> 32 && (*(v42 + 43) & 0x1C) == 0 && v40 < *(v39 + 32) - 1)
    {
      v35 = ((v40 << 16) + 0x10000) & 0xFFFF0000 | v35 | (*(v41 + 48 * (((v40 << 16) + 0x10000) >> 16) + 16) << 32);
    }

    *a9 = v29;
    a9[1] = v38;
    v43 = (a4 << 48) | (v37 << 32) | (v9 + 16);
    a9[2] = v35;
    goto LABEL_75;
  }

  v17 = *(a1 + 16);
  v18 = (*(v17 + 16) + 12 * (v16 >> 1));
  v19 = *(v18 + 10);
  if (*(v18 + 10))
  {
    v20 = *(v18 + 10);
    do
    {
      v21 = a6;
      a6 = *a6;
      --v20;
    }

    while (v20);
    v13 = v21[1];
  }

  if ((*(v18 + 11) & 2) != 0)
  {
    v22 = -1;
  }

  else
  {
    v22 = *(*(*(v17 + 8) + 64) + 4 * *(*(*(v17 + 8) + 56) + 4 * v13) + 4 * v18[3]) >> 17;
  }

  v44 = *(a1 + 192);
  v45 = (v44 & 0x40000000) == 0;
  if (*(v18 + 10))
  {
    v46 = (*a5 << 32) | (*(a5 + 8) << 16);
    v47 = ((*(a5 + 8) + (*(a5 + 8) >> 24)) << 16) | *a5 & 0xFFFFFFFF00000000;
    v45 = (v44 & 0x40000000) == 0 && *(a5 + 14) < 0;
    v48 = *(a5 + 16);
    v49 = v19 - 1;
    if (v19 != 1)
    {
      do
      {
        v50 = *(v48 + 8);
        v51 = v50 + (v50 >> 24);
        v52 = (*v48 << 32) | (v50 << 16);
        v53 = *v48 & 0xFFFFFFFF00000000 | ((v50 + (v50 >> 24)) << 16);
        v54 = v46 >> 16;
        if (SHIDWORD(v46) >= *v48)
        {
          v55 = (*v48 << 32) | (*(v48 + 8) << 16);
        }

        else
        {
          v55 = v46;
        }

        if (v54 <= v50)
        {
          v52 = v55;
        }

        if (v54 >= v50)
        {
          v46 = v52;
        }

        v56 = v47 >> 16;
        if (SHIDWORD(v47) >= HIDWORD(*v48))
        {
          v57 = v47;
        }

        else
        {
          v57 = v53;
        }

        if (v56 > v51)
        {
          v57 = v47;
        }

        if (v56 >= v51)
        {
          v47 = v57;
        }

        else
        {
          v47 = v53;
        }

        v45 = v45 && *(v48 + 14) < 0;
        v48 = *(v48 + 16);
        --v49;
      }

      while (v49);
    }
  }

  else
  {
    v46 = a3 & 0xFFFFFFFFFFFF0000;
    v48 = a5;
    v47 = a3 & 0xFFFFFFFFFFFF0000;
  }

  if ((*(v18 + 11) & 1) == 0)
  {
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_61:
    if (v9 + 8 * v19 + 24 > 0x1F40)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(a1 + 208) + v9;
      v9 += 8 * v19 + 24;
    }

    v60 = *(v58 + 12);
    *(v58 + 8) = (v46 >> 16) & 0xFFFFFF | ((BYTE2(v47) - BYTE2(v46)) << 24);
    *v58 = v47 & 0xFFFFFFFF00000000 | HIDWORD(v46);
    *(v58 + 14) = v16 >> 1;
    *(v58 + 12) = v60 & 0xF0;
    *(v58 + 16) = v48;
    if (a5 && v19)
    {
      v61 = 0;
      do
      {
        *(v58 + 8 * v61++ + 24) = a5;
        if (v19 < 2)
        {
          break;
        }

        a5 = *(a5 + 16);
        --v19;
      }

      while (a5);
      *(v58 + 13) = v61;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

LABEL_70:
    v62 = *(a1 + 184);
    if (v62 > 30000)
    {
      return 0;
    }

    v63 = v18[2];
    *(a1 + 184) = v62 + 1;
    if ((v9 + 16) > 0x1F40)
    {
      return 0;
    }

    v64 = *(a1 + 208);
    if (!v64)
    {
      return 0;
    }

    v65 = v63 + a4;
    v66 = (v64 + v9);
    *v66 = a6;
    v66[1] = v13;
    v67 = *(a1 + 56);
    v68 = a3 >> 16;
    v69 = *(v67 + 16);
    v70 = v69 + 48 * v68;
    if (*(v70 + 24) + *(v70 + 16) == a3 >> 32 && (*(v70 + 43) & 0x1C) == 0 && v68 < *(v67 + 32) - 1)
    {
      a3 = ((v68 << 16) + 0x10000) & 0xFFFF0000 | a3 | (*(v69 + 48 * (((v68 << 16) + 0x10000) >> 16) + 16) << 32);
    }

    *v15 = v58;
    v15[1] = v66;
    v43 = (v22 << 32) | (v65 << 48) | (v9 + 16);
    v15[2] = a3;
LABEL_75:
    v15[3] = v43;
    return 1;
  }

  v76 = v18;
  v77 = v22;
  v78 = v13;
  v79 = a3;
  v80 = a4;
  v81 = 0;
  if (!DDTokenCacheGetTokensAtPosition(*(a1 + 40), *(a1 + 56), v46, &v81) || (*v81 ^ v46) >> 16 || (v81[1] ^ v47) >> 16)
  {
    return 0;
  }

  a4 = v80;
  v15 = a9;
  v13 = v78;
  a3 = v79;
  v18 = v76;
  v22 = v77;
  if (!v45)
  {
    goto LABEL_61;
  }

LABEL_52:
  if (*v18 != -1 || v18[1] != -1)
  {
    goto LABEL_61;
  }

  if (v9 >= 6001 && v19)
  {
    v72 = v19 - 1;
    if (v19 != 1)
    {
      do
      {
        a5 = *(a5 + 16);
        --v72;
      }

      while (v72);
    }

    if (a5)
    {
      *(a5 + 8) = (v46 >> 16) & 0xFFFFFF | ((BYTE2(v47) - BYTE2(v46)) << 24);
      *a5 = v47 & 0xFFFFFFFF00000000 | HIDWORD(v46);
      *(a5 + 14) = -1;
      v73 = *(a5 + 12);
      *(a5 + 12) = v73 & 0xF1;
      *(a5 + 13) = 0;
      *(a5 + 16) = v48;
      if (v73)
      {
        *(a5 + 24) = 0;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
      }
    }

    v74 = a5 - *(a1 + 208);
    v75 = *(a1 + 176);
    if (v75 < 0 || v74 < v75)
    {
      *(a1 + 176) = v74;
    }

    if (!a5)
    {
      return 0;
    }

    v9 = v74 + 48;
    v58 = a5;
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_70;
  }

  v58 = *(a1 + 208) + v9;
  v59 = *(v58 + 12);
  *(v58 + 8) = (v46 >> 16) & 0xFFFFFF | ((BYTE2(v47) - BYTE2(v46)) << 24);
  *v58 = v47 & 0xFFFFFFFF00000000 | HIDWORD(v46);
  v9 += 24;
  *(v58 + 14) = -1;
  *(v58 + 12) = v59 & 0xF0;
  *(v58 + 16) = v48;
  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_70;
  }

LABEL_95:
  if ((a4 & 0x8000000000000000) == 0)
  {
    DDInsertResultRec(a1, v58, v58, a4, 0xFFFF0000uLL, 0xFFFF0000uLL);
  }

  return 0;
}

uint64_t _fetchNextToken(uint64_t a1)
{
  v58[31] = *MEMORY[0x1E69E9840];
  if (*(a1 + 120))
  {
LABEL_20:
    v24 = -1;
  }

  else
  {
    do
    {
      v2 = *(a1 + 40);
      Token = NLStringTokenizerAdvanceToNextToken();
      if (Token)
      {
        break;
      }

      v4 = *(a1 + 112) + 1;
      v5 = *(a1 + 32);
      if (v4 >= *(v5 + 32))
      {
        *(a1 + 120) = 1;
        goto LABEL_20;
      }

      *(a1 + 112) = v4;
      v6 = (*(v5 + 16) + 48 * v4);
      v7 = *(a1 + 40);
      v8 = *v6;
      v9 = *(a1 + 56);
      v10 = v6[2];
      v11 = v6[3];
      NLStringTokenizerSetStringWithOptions();
      v12 = *(a1 + 40);
      Token = NLStringTokenizerAdvanceToNextToken();
    }

    while (!Token);
    v13 = Token;
    if (*(a1 + 120))
    {
      goto LABEL_20;
    }

    v14 = *(a1 + 88);
    v15 = *(a1 + 64);
    if (v14 + 1 < v15)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a1 + 48) + 32 * v16;
    v55 = v16;
    if (*(v17 + 25))
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        free(v18);
        v15 = *(a1 + 64);
      }

      *(v17 + 24) = 0;
      *(v17 + 16) = 0;
      *(a1 + 96) = (v16 + 1) % v15;
      v19 = *(a1 + 80);
      v20 = v19 == 1;
      v21 = v19 < 1;
      v22 = v19 - 1;
      if (!v21)
      {
        *(a1 + 80) = v22;
        if (v20)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v23 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1BCFDD000, v23, OS_LOG_TYPE_ERROR, "We missed a token, because the cache was over used...", buf, 2u);
          }
        }
      }
    }

    else
    {
      ++*(a1 + 72);
      *(a1 + 96) = 0;
      *(v17 + 25) = 1;
    }

    v26 = *(a1 + 112);
    ++*(a1 + 104);
    v27 = *(a1 + 40);
    CurrentTokenRange = NLStringTokenizerGetCurrentTokenRange();
    v30 = v29;
    v31 = CurrentTokenRange + v29;
    v32 = v26 << 16;
    v33 = v32 | (CurrentTokenRange << 32);
    v34 = v32 | ((CurrentTokenRange + v29) << 32);
    *v17 = v33;
    *(v17 + 8) = v34;
    if ((v13 & 6) != 0 && (v35 = *(a1 + 40), CurrentSubTokens = NLStringTokenizerGetCurrentSubTokens(), CurrentSubTokens >= 1))
    {
      v37 = CurrentSubTokens;
      if (CurrentSubTokens > 0xF)
      {
        v40 = v55;
      }

      else
      {
        v38 = &buf[16 * CurrentSubTokens];
        v39 = *(v38 - 2) + *(v38 - 1);
        v40 = v55;
        if (v31 > v39)
        {
          *v38 = v39;
          *(v38 + 1) = v31 - v39;
          v37 = CurrentSubTokens + 1;
        }
      }

      v47 = malloc_type_calloc(v37, 0x20uLL, 0x10200406A33E52CuLL);
      *(v17 + 16) = v47;
      if (v47)
      {
        v48 = 0;
        v49 = v58;
        v50 = v37;
        do
        {
          v51 = *(v49 - 1);
          v52 = *v49;
          v49 += 4;
          v53 = *(v17 + 16) + v48;
          *v53 = v32 | (v51 << 32);
          *(v53 + 8) = v32 | ((v52 + v51) << 32);
          *(v53 + 16) = 0;
          *(v53 + 24) = 256;
          *(v53 + 26) = 0;
          *(v53 + 30) = 0;
          v48 += 32;
          --v50;
        }

        while (v50);
        *(v17 + 24) = v37;
      }
    }

    else
    {
      v41 = (*(*(a1 + 32) + 16) + 48 * v26);
      result = xmmword_1BD018B60;
      v59.location = CurrentTokenRange;
      v59.length = v30;
      if (CFStringFindWithOptions(*v41, @"'", v59, 0, &result) || (v60.location = CurrentTokenRange, v60.length = v30, CFStringFindWithOptions(*v41, @"’", v60, 0, &result)))
      {
        location = result.location;
        v43 = result.length + result.location;
        v44 = result.location <= CurrentTokenRange ? v31 > result.length + result.location : (v31 > result.length + result.location) + 1;
        if (v44)
        {
          v45 = malloc_type_calloc(v44, 0x20uLL, 0x10200406A33E52CuLL);
          *(v17 + 16) = v45;
          if (v45)
          {
            if (location <= CurrentTokenRange)
            {
              v46 = 0;
            }

            else
            {
              *v45 = v33;
              *(v45 + 1) = v32 | (location << 32);
              *(v45 + 2) = 0;
              *(v45 + 12) = 256;
              *(v45 + 26) = 0;
              *(v45 + 15) = 0;
              v46 = 1;
            }

            if (v31 > v43)
            {
              v54 = *(v17 + 16) + 32 * v46;
              *v54 = v32 | (v43 << 32);
              *(v54 + 8) = v34;
              *(v54 + 16) = 0;
              *(v54 + 24) = 256;
              *(v54 + 26) = 0;
              *(v54 + 30) = 0;
            }

            *(v17 + 24) = v44;
          }
        }
      }

      v40 = v55;
    }

    *(a1 + 88) = v40;
    v24 = (v40 - *(a1 + 96) + *(a1 + 72)) % *(a1 + 72);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void *DDTokenCacheCreate(const void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x1020040DB4D2780uLL);
  if (v2)
  {
    v3 = v2;
    DDCachingStringTokenizerResetStringWithOptions(v2, 64, 0);
    v4 = NLStringTokenizerCreate();
    v3[5] = v4;
    if (!a1 || v4)
    {
      v7 = malloc_type_calloc(1uLL, 0x190uLL, 0x10E00409D72FF36uLL);
      if (!a1)
      {
        v8 = 0;
        goto LABEL_13;
      }

LABEL_11:
      v8 = CFRetain(a1);
LABEL_13:
      *v7 = v3;
      v7[1] = v8;
      v7[4] = malloc_type_calloc(0x5AuLL, 8uLL, 0x2004093837F09uLL);
      v7[6] = 90;
      DDTokenCacheClear(v7);
      goto LABEL_24;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v5 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = a1;
      _os_log_error_impl(&dword_1BCFDD000, v5, OS_LOG_TYPE_ERROR, "Tokenizer creation failed with locale %@, trying to fallback to default", &v13, 0xCu);
    }

    v6 = NLStringTokenizerCreate();
    v3[5] = v6;
    if (v6)
    {
      v7 = malloc_type_calloc(1uLL, 0x190uLL, 0x10E00409D72FF36uLL);
      goto LABEL_11;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v9 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_1BCFDD000, v9, OS_LOG_TYPE_ERROR, "Tokenizer creation failed again, giving up", &v13, 2u);
    }

    DDCachingStringTokenizerDestroy(v3);
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v10 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "DD tokenizer creation failed", &v13, 2u);
  }

  v7 = 0;
LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void *DDLexemCacheCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040B8F6FDBAuLL);
  v0[1] = malloc_type_calloc(0x90uLL, 8uLL, 0x2004093837F09uLL);
  v0[3] = 144;
  v0[5] = malloc_type_calloc(0x60uLL, 8uLL, 0x2004093837F09uLL);
  *(v0 + 3) = xmmword_1BD018B80;
  DDLexemCacheClear(v0);
  return v0;
}

void DDLookupTablePrepareToScan(void *a1)
{
  if (!a1[2])
  {
    v2 = a1[7];
    a1[2] = DDStaticLookupCreateWithDynamicTrie(v2, 0, 0, 0);
    DDLookupTrieDestroy(v2);
    a1[7] = 0;
    v3 = a1[8];
    if (v3)
    {
      v5 = a1[9];
      v4 = a1[10];
      v6 = a1[11];
      a1[3] = DDStaticLookupCreateWithDynamicTrie(a1[8], v5, v4, v6);
      if (v5)
      {
        CFRelease(v5);
        a1[9] = 0;
      }

      if (v4)
      {
        CFRelease(v4);
        a1[10] = 0;
      }

      if (v6)
      {
        CFRelease(v6);
        a1[11] = 0;
      }

      DDLookupTrieDestroy(v3);
      a1[8] = 0;
    }
  }
}

void DDScannerSetOptions(uint64_t a1, unint64_t a2)
{
  *(a1 + 192) = a2;
  v3 = *(a1 + 160);
  if (a2 >> 31)
  {
    if (v3)
    {

      CFArrayRemoveAllValues(v3);
    }

    else
    {
      *(a1 + 160) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  else if (v3)
  {
    CFRelease(v3);
    *(a1 + 160) = 0;
  }
}

void DDLexemCacheClear(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = *(a1 + 24);
      v4 = *(a1 + 32);
      if (i + v4 < v5)
      {
        v5 = 0;
      }

      v6 = i + v4 - v5;
      v7 = *(a1 + 8);
      v8 = *(v7 + 8 * v6);
      if (v8)
      {
        DDLexemCacheItemReset(*(v7 + 8 * v6));
        DDLexemCacheInsertItemInFreeArray(a1, v8);
        v2 = *(a1 + 16);
        *(*(a1 + 8) + 8 * v6) = 0;
      }
    }
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v9 = *(a1 + 64);
  if (v9)
  {

    DDLexemCacheItemReset(v9);
  }
}

void DDScannerReset(uint64_t a1)
{
  if (a1)
  {
    DDTokenCacheClear(*(a1 + 40));
    DDLexemCacheClear(*(a1 + 48));
    DDSourceMatchCacheFree(*(a1 + 152));
    *(a1 + 152) = 0;
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 56) = 0;
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        CFRelease(v4);
        *(v3 + 24) = 0;
      }

      *(v3 + 40) = -1;
    }

    v5 = *(a1 + 168);
    if (v5)
    {

      CFArrayRemoveAllValues(v5);
    }
  }
}

id DDScannerServiceScanQuerySyncWithOptionsAndQOS(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int64_t *a6, uint64_t a7)
{
  v12 = [[DDScannerServiceConfiguration alloc] initWithScannerType:a2 passiveIntent:a3 == 1];
  v13 = v12;
  if (a4 == 1)
  {
    [(DDScannerServiceConfiguration *)v12 setSpotlightSuggestionsEnabled:1];
  }

  [(DDScannerServiceConfiguration *)v13 setNoObjC:1];
  [(DDScannerServiceConfiguration *)v13 setQos:a7];
  v13->_jobIdentifierPtr = a6;
  if (a5 == 1)
  {
    [(DDScannerServiceConfiguration *)v13 setResultsOptions:[(DDScannerServiceConfiguration *)v13 resultsOptions]| 2];
  }

  v14 = [DDScannerService scanQuery:a1 configuration:v13];

  return v14;
}

void DDLookupTableUpdateFromExternalFile(uint64_t a1, unsigned __int16 **a2, CFStringRef string)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if ((a1 & 0xFFFFFFFD) == 4)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __DDLookupTableUpdateFromExternalFile_block_invoke;
    v17[3] = &__block_descriptor_tmp_26_525;
    v17[4] = a2;
    v17[5] = v4;
    mmapSource(a1, 0, v17);
    goto LABEL_21;
  }

  v15 = 0;
  v16 = 0;
  if (v4)
  {
    v6 = *(v4 + 20);
  }

  else
  {
    v6 = 0uLL;
  }

  v14 = v6;
  if (!string)
  {
    v10 = 1;
    if (_DDTriePathForSource(a1, v18, 0, 1, 0))
    {
      v10 = DDautommap(v18, &v15, &v16, &v14);
    }

LABEL_13:
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(string);
  if (MaximumSizeOfFileSystemRepresentation >= 1)
  {
    v8 = &v14 - ((MEMORY[0x1EEE9AC00](MaximumSizeOfFileSystemRepresentation) + 15) & 0xFFFFFFFFFFFFFFF0);
    if (CFStringGetFileSystemRepresentation(string, v8, v9))
    {
      v10 = DDautommap(v8, &v15, &v16, &v14);
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_13;
  }

LABEL_14:
  if (v4)
  {
    v11 = *(v4 + 4);
    if (v11)
    {
      munmap(v11, v11[1]);
      *(v4 + 5) = 0;
      *(v4 + 6) = 0;
      *(v4 + 4) = 0;
    }

    CFRelease(v4);
  }

  v12 = v15;
  if (v15)
  {
    v12 = DDLookupTableCreateFromCacheData(v15, v16, v14, *(&v14 + 1));
  }

  *a2 = v12;
LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
}

id _getSharedDispatcher()
{
  if (_getSharedDispatcher_once != -1)
  {
    dispatch_once(&_getSharedDispatcher_once, &__block_literal_global_679);
  }

  v1 = _getSharedDispatcher__scannerDispatcher;

  return v1;
}

uint64_t ___getSharedDispatcher_block_invoke()
{
  _getSharedDispatcher__scannerDispatcher = objc_alloc_init(DDScanServerDispatcher);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t DDDeletionFilterBlocks_block_invoke(int a1, const __CFString *a2, CFStringRef theString, uint64_t a4, const __CFString *a5)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = _typesAreEqual(theString, @"GenericURL");
  if (a2)
  {
    if (v8)
    {
      info = a2[2].info;
      if (info)
      {
        location = CFStringFind(a2[2].info, @":", 0).location;
        if (location >= 5)
        {
          v49.length = location;
          v11 = *MEMORY[0x1E695E480];
          v49.location = 0;
          v12 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], info, v49);
          if (v12)
          {
            v13 = v12;
            v14 = @"http";
            if (CFStringHasSuffix(v12, @"http") || (v14 = @"https", CFStringHasSuffix(v13, @"https")))
            {
              Length = CFStringGetLength(v13);
              v16 = Length - CFStringGetLength(v14);
              if (v16 >= 1 && CFStringGetCharacterAtIndex(v13, v16 - 1) - 45 <= 1)
              {
                v50.length = CFStringGetLength(info) - v16;
                v50.location = v16;
                v17 = CFStringCreateWithSubstring(v11, info, v50);
                if (v17)
                {
                  v18 = v17;
                  DDResultSetMatchedString(a2, v17);
                  v19 = a2[1].info - v16;
                  a2[1].isa = a2[1].isa + v16;
                  a2[1].info = v19;
                  DDResultSetType(a2, @"HttpURL");
                  CFRelease(v18);
                }
              }
            }

            CFRelease(v13);
          }
        }
      }
    }
  }

  if (CFStringCompare(theString, @"PhoneNumber", 0) == kCFCompareEqualTo)
  {
    v25 = a2[1].length;
    if (v25)
    {
      if (CFArrayGetCount(v25) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v25, 0);
        if (CFStringCompare(*(ValueAtIndex + 8), @"Value", 0) == kCFCompareEqualTo)
        {
          v41 = *(ValueAtIndex + 9);
          v42 = CFStringGetLength(v41);
          CFStringGetMaximumSizeForEncoding(v42, 0x8000100u);
          MEMORY[0x1EEE9AC00]();
          v44 = v47 - v43;
          v48.location = 0;
          v48.length = v42;
          CFStringGetCharacters(v41, v48, (v47 - v43));
          if (a5)
          {
            v45 = CFStringHasSuffix(a5, @"BR") != 0;
          }

          else
          {
            v45 = 0;
          }

          result = DDResultBufferIsValidForPhoneNumber(v44, 0, v42, 0, v45);
          goto LABEL_68;
        }
      }
    }

    goto LABEL_28;
  }

  if (CFStringCompare(theString, @"FlightInformation", 0) == kCFCompareEqualTo)
  {
    SubresultWithType = DDResultGetSubresultWithType(a2, @"AirlineCode");
    if (SubresultWithType)
    {
      v28 = SubresultWithType[10];
      if (!v28)
      {
        v28 = SubresultWithType[9];
      }
    }

    else
    {
      v28 = 0;
    }

    v39 = DDResultGetSubresultWithType(a2, @"FlightNumber");
    if (!v39)
    {
      goto LABEL_67;
    }

    v40 = v39[10];
    if (!v40)
    {
      v40 = v39[9];
    }

    if (!v28 || !v40 || CFStringCompare(v28, @"MH", 0) == kCFCompareEqualTo && (CFStringCompare(v40, @"17", 0) == kCFCompareEqualTo || CFStringCompare(v40, @"370", 0) == kCFCompareEqualTo || CFStringCompare(v40, @"371", 0) == kCFCompareEqualTo) || CFStringCompare(v28, @"BA", 0) == kCFCompareEqualTo && CFStringCompare(v40, @"1", 0) == kCFCompareEqualTo || CFStringCompare(v28, @"UA", 0) == kCFCompareEqualTo && CFStringCompare(v40, @"93", 0) == kCFCompareEqualTo || CFStringCompare(v28, @"AA", 0) == kCFCompareEqualTo && CFStringCompare(v40, @"77", 0) == kCFCompareEqualTo)
    {
      goto LABEL_67;
    }

    if (a2)
    {
      a2 = a2[2].info;
    }

    if (CFStringCompare(a2, @"A300", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A318", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A319", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A320", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A321", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A330", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A340", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A350", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A380", 0) == kCFCompareEqualTo)
    {
      goto LABEL_67;
    }

    goto LABEL_28;
  }

  if (!_typesAreEqual(theString, @"Email") && !_typesAreEqual(theString, @"WebURL") && !_typesAreEqual(theString, @"HttpURL") && !_typesAreEqual(theString, @"FileURL") && !_typesAreEqual(theString, @"WindowsRemoteFileURL") && !_typesAreEqual(theString, @"MapsURL"))
  {
LABEL_28:
    result = 1;
    goto LABEL_68;
  }

  result = DDResultCopyExtractedURLWithOptions(a2, 0);
  if (result)
  {
    v21 = result;
    v22 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:result];
    if (!v22)
    {
      v29 = [v21 rangeOfString:@"://"];
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }

      v31 = v29 + v30;
      if (v29 + v30 >= [v21 length] || (v32 = objc_msgSend(v21, "rangeOfString:options:range:", @"/", 0, v31, objc_msgSend(v21, "length") - v31), v34 = v32 + v33, v32 + v33 >= objc_msgSend(v21, "length")) || (v35 = objc_msgSend(v21, "substringToIndex:", v34), v36 = objc_msgSend(v21, "substringFromIndex:", v34), v37 = objc_msgSend(v36, "stringByAddingPercentEncodingWithAllowedCharacters:", objc_msgSend(MEMORY[0x1E696AB08], "URLFragmentAllowedCharacterSet")), v38 = objc_alloc(MEMORY[0x1E695DFF8]), (v22 = objc_msgSend(v38, "initWithString:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@", v35, v37))) == 0))
      {
LABEL_36:
        CFRelease(v21);
        goto LABEL_67;
      }
    }

    v23 = v22;
    v24 = CFRetain(v22);

    CFRelease(v21);
    if (!v24)
    {
LABEL_67:
      result = 0;
      goto LABEL_68;
    }

    CFRelease(v24);
    goto LABEL_28;
  }

LABEL_68:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

void **DDLexemCacheItemSet(void **result, uint64_t a2, void *__src)
{
  v4 = result;
  if (a2 >= 1)
  {
    v6 = *result;
    if (a2 > v4[1] >> 32)
    {
      v7 = 24;
      if (a2 > 0x18)
      {
        v7 = a2;
      }

      v4[1] = (v4[1] | (v7 << 32));
      v6 = malloc_type_realloc(v6, 32 * v7, 0x1010040F32E1FD2uLL);
      *v4 = v6;
    }

    result = memcpy(v6, __src, 32 * a2);
  }

  *(v4 + 2) = a2;
  return result;
}

void DDApplyOptions(const __CFArray *a1, void *a2, unsigned int a3)
{
  if (!a1)
  {
    return;
  }

  v3 = a2;
  v4 = a1;
  if (a2[24])
  {
    v5 = a3 & 0xFFFFFFFD;
  }

  else
  {
    v5 = a3;
  }

  v108 = v5;
  DDUnwrapCompatibility(a1, 0);
  v6 = v3[24];
  Count = CFArrayGetCount(v4);
  v125 = v3;
  if (Count < 1)
  {
    goto LABEL_122;
  }

  v8 = Count;
  v9 = 0;
  v110 = 0;
  v115 = 0;
  v10 = 0;
  v114 = v6 & 0x28000000;
  v11 = -1;
  v109 = -1;
  v121 = -1;
  v12 = -1;
  v123 = v4;
  do
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v10);
    v17 = ValueAtIndex;
    v124 = *(ValueAtIndex + 6);
    v116 = v15;
    v117 = v14;
    v118 = *(ValueAtIndex + 5);
    v119 = *(ValueAtIndex + 4);
    v19 = v15 != v119 || v14 != *(ValueAtIndex + 5) || v13 <= 0;
    v20 = !v19;
    v21 = CFStringCompare(*(ValueAtIndex + 8), @"Tag", 0);
    v122 = v21 != kCFCompareEqualTo;
    if (!_typesAreEqual(*(v17 + 64), @"Data"))
    {
      if (v114)
      {
        v53 = 0;
      }

      else
      {
        v53 = v20;
      }

      if (v53 != 1 || v9 || v21 != kCFCompareEqualTo)
      {
        v115 = 0;
        v110 = 0;
        v10 = v13 + 1;
        v109 = -1;
      }

      else
      {
        if (v115 || v121 >= v124)
        {
          CFArrayRemoveValueAtIndex(v4, v13);
          v61 = CFArrayGetCount(v4);
          v10 = v13;
          v8 = v61;
          v50 = v116;
          v51 = v117;
          v52 = v121;
          goto LABEL_107;
        }

        CFArrayRemoveValueAtIndex(v4, v13 - 1);
        v54 = CFArrayGetCount(v4);
        v10 = v13;
        v8 = v54;
        v115 = 0;
      }

      v52 = v124;
      v51 = v118;
      v50 = v119;
      goto LABEL_107;
    }

    UnwrappedResultOfType = DDResultGetUnwrappedResultOfType(v17, @"Data");
    TagTypeForDataType = DDResultGetTagTypeForDataType(UnwrappedResultOfType);
    SubresultWithType = DDResultGetSubresultWithType(UnwrappedResultOfType, TagTypeForDataType);
    v126 = SubresultWithType == 0;
    v132 = UnwrappedResultOfType;
    if (SubresultWithType)
    {
      v25 = SubresultWithType;
    }

    else
    {
      v25 = UnwrappedResultOfType;
    }

    v127 = v25;
    v26 = CFArrayGetCount(v4);
    v27 = v13 - 1;
    idx = v13;
    v28 = v13 + 1;
    v111 = v13 - 1;
    v112 = v13 + 1;
    v113 = v20;
    v128 = v26;
    v130 = v17;
    while (1)
    {
      if (v27 < 0)
      {
        v29 = 0;
      }

      else
      {
        v29 = CFArrayGetValueAtIndex(v4, v27);
      }

      if (v28 < v26)
      {
        v30 = CFArrayGetValueAtIndex(v4, v28);
      }

      else
      {
        v30 = 0;
      }

      VirtualDistance = DDResultGetVirtualDistance(v17, v29);
      v32 = DDResultGetVirtualDistance(v17, v30);
      v33 = v32;
      v134 = VirtualDistance;
      v35 = v27 < 0 || VirtualDistance > 1000;
      v37 = v28 >= v26 || v32 > 1000;
      if (v35)
      {
        v38 = 0;
      }

      else
      {
        v38 = v29;
      }

      if (v37)
      {
        v30 = 0;
      }

      v39 = DDShouldPauseSearchForTag(v35, v132, v38);
      v40 = DDShouldPauseSearchForTag(v37, v132, v30);
      if (!v39 || !v40)
      {
        v27 -= !v39;
        v28 += !v40;
        goto LABEL_72;
      }

      v136[0] = 0;
      v42 = DDGetDataValueForMatchingTagToData(v38, v127, v126, v136 + 1);
      v43 = DDGetDataValueForMatchingTagToData(v30, v127, v126, v136);
      if (v42 && v43)
      {
        break;
      }

      if (!(v42 | v43))
      {
        v27 -= !v35;
LABEL_71:
        v28 += !v37;
        goto LABEL_72;
      }

      if (v127)
      {
        v44 = v43;
        v45 = *(v127 + 80);
        if (!v45)
        {
          v45 = *(v127 + 72);
        }
      }

      else
      {
        v44 = v43;
        v45 = 0;
      }

      v46 = CFStringFind(v45, @"-", 0).location != -1 || CFStringFind(v45, @"Generic", 0).location != -1;
      v4 = v123;
      if (!v38 || !v46 || !v44 || v134 >= v33)
      {
        v47 = !v46;
        if (!v42)
        {
          v47 = 1;
        }

        if ((v47 & 1) != 0 || !v30 || v33 >= v134)
        {
          if (v42)
          {
            v55 = v42;
          }

          else
          {
            v55 = v44;
          }

          if (v42)
          {
            v56 = v136 + 1;
          }

          else
          {
            v56 = v136;
          }

          if (v42)
          {
            v57 = v134;
          }

          else
          {
            v57 = v33;
          }

          v58 = v123;
          goto LABEL_96;
        }

        goto LABEL_71;
      }

      v27 -= !v35;
LABEL_72:
      v48 = v35 && v37;
      v26 = v128;
      v17 = v130;
      if (v48)
      {
        goto LABEL_73;
      }
    }

    if (v134 <= v33)
    {
      v55 = v42;
    }

    else
    {
      v55 = v43;
    }

    if (v134 <= v33)
    {
      v56 = v136 + 1;
    }

    else
    {
      v56 = v136;
    }

    if (v134 >= v33)
    {
      v57 = v33;
    }

    else
    {
      v57 = v134;
    }

    v58 = v4;
LABEL_96:
    DDUpdateDataWithMatchedTag(v58, idx, v132, v127, v55);
    v59 = *v56;
    v60 = v113 ^ 1;
    if (v114)
    {
      v60 = 1;
    }

    v51 = v118;
    v50 = v119;
    if ((v60 & 1) == 0)
    {
      if (!*v56 && v110)
      {
        goto LABEL_73;
      }

      if (*v56 == v110)
      {
        if (v57 <= v109 && (v57 != v109 || v121 < v124))
        {
          v115 = 1;
          goto LABEL_121;
        }

LABEL_73:
        v49 = idx;
      }

      else
      {
        v115 = 1;
        v110 = *v56;
LABEL_121:
        v121 = v124;
        v109 = v57;
        v49 = v111;
      }

      CFArrayRemoveValueAtIndex(v4, v49);
      v124 = v121;
      v50 = v116;
      v51 = v117;
      goto LABEL_75;
    }

    v115 = 1;
    idx = v112;
    v110 = *v56;
    v109 = v57;
LABEL_75:
    v3 = v125;
    v8 = CFArrayGetCount(v4);
    v10 = idx;
    v52 = v124;
LABEL_107:
    v9 = v122;
    v121 = v52;
    v11 = v51;
    v12 = v50;
  }

  while (v10 < v8);
LABEL_122:
  DDUnwrapCompatibility(v4, 1);
  v62 = CFArrayGetCount(v4);
  if (v62 >= 1)
  {
    v63 = v62;
    v64 = 0;
    do
    {
      v65 = CFArrayGetValueAtIndex(v4, v64);
      if (v65 && _typesAreEqual(v65[8], @"Tag"))
      {
        CFArrayRemoveValueAtIndex(v4, v64);
        v63 = CFArrayGetCount(v4);
      }

      else
      {
        ++v64;
      }
    }

    while (v64 < v63);
  }

  v66 = CFArrayGetCount(v4);
  if (v66 >= 1)
  {
    v67 = v66;
    v68 = 0;
    do
    {
      v69 = CFArrayGetValueAtIndex(v4, v68);
      if (v69 && (v70 = v69, _typesAreEqual(v69[8], @"TrackingInformation")))
      {
        v71 = DDResultGetSubresultWithType(v70, @"Carrier");
        v72 = DDResultGetSubresultWithType(v70, @"TrackingNumber");
        if (v71 && v72)
        {
          v73 = v71[10];
          if (!v73)
          {
            v73 = v71[9];
          }

          DDResultSetType(v72, v73);
          DDResultRemoveSubresultWithType(v70, @"Carrier");
          DDResultSetType(v70, @"TrackingNumber");
        }
      }

      else
      {
        ++v68;
      }
    }

    while (v68 < v67);
  }

  v135 = CFArrayGetCount(v4);
  v74 = v108;
  if (v135 >= 1)
  {
    v75 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 7, 0);
    v77 = Mutable;
    if ((v108 & 0x20000) == 0)
    {
      CFArrayAppendValue(Mutable, &__block_literal_global_224);
    }

    if ((v108 & 0x10005) != 0)
    {
      CFArrayAppendValue(v77, &__block_literal_global_215);
    }

    if ((v108 & 0x10000) != 0)
    {
      CFArrayAppendValue(v77, &__block_literal_global_212);
    }

    v78 = (v108 >> 8) & 1;
    if (v108)
    {
      CFArrayAppendValue(v77, &__block_literal_global_206);
    }

    if (!v77)
    {
      goto LABEL_154;
    }

    v79 = CFArrayGetCount(v77);
    if (v79 >= 1)
    {
      v80 = v79;
      for (i = 0; i != v80; ++i)
      {
        v82 = CFArrayGetValueAtIndex(v77, i);
        v82[2](v82, v4, v3, v78);
      }
    }

    v83 = CFArrayGetCount(v4);
    CFRelease(v77);
    v135 = v83;
    v19 = v83 < 1;
    v74 = v108;
    if (!v19)
    {
LABEL_154:
      v84 = CFArrayCreateMutable(v75, 9, 0);
      v85 = v84;
      if ((v74 & 0x400) != 0)
      {
        CFArrayAppendValue(v84, &__block_literal_global_196);
        if ((v74 & 0x800) != 0)
        {
          goto LABEL_178;
        }

LABEL_156:
        if ((v74 & 0x40) == 0)
        {
          goto LABEL_157;
        }

LABEL_179:
        CFArrayAppendValue(v85, &__block_literal_global_76);
        if ((v74 & 0x1000) != 0)
        {
          goto LABEL_180;
        }

LABEL_158:
        if ((v74 & 0x10) == 0)
        {
          goto LABEL_159;
        }

LABEL_181:
        CFArrayAppendValue(v85, &__block_literal_global_82);
        if ((v74 & 8) != 0)
        {
          goto LABEL_182;
        }

LABEL_160:
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_161;
        }

LABEL_183:
        CFArrayAppendValue(v85, &__block_literal_global_79);
        if ((v74 & 0x200) != 0)
        {
LABEL_162:
          CFArrayAppendValue(v85, &__block_literal_global_88);
        }
      }

      else
      {
        if ((v74 & 0x800) == 0)
        {
          goto LABEL_156;
        }

LABEL_178:
        CFArrayAppendValue(v85, &__block_literal_global_199);
        if ((v74 & 0x40) != 0)
        {
          goto LABEL_179;
        }

LABEL_157:
        if ((v74 & 0x1000) == 0)
        {
          goto LABEL_158;
        }

LABEL_180:
        CFArrayAppendValue(v85, &__block_literal_global_202);
        if ((v74 & 0x10) != 0)
        {
          goto LABEL_181;
        }

LABEL_159:
        if ((v74 & 8) == 0)
        {
          goto LABEL_160;
        }

LABEL_182:
        CFArrayAppendValue(v85, &__block_literal_global_85);
        if ((v74 & 0x80) != 0)
        {
          goto LABEL_183;
        }

LABEL_161:
        if ((v74 & 0x200) != 0)
        {
          goto LABEL_162;
        }
      }

      CFArrayAppendValue(v85, &__block_literal_global_2232);
      if (!v85)
      {
        goto LABEL_194;
      }

      v86 = CFArrayGetCount(v85);
      if (v86 < 1)
      {
        CFRelease(v85);
        goto LABEL_194;
      }

      v87 = v86;
      v88 = v3[30];
      if (v88)
      {
        goto LABEL_166;
      }

      v101 = v3[5];
      if (v101)
      {
        v88 = *(v101 + 8);
        if (v88)
        {
          goto LABEL_166;
        }
      }

      if ((v74 & 0x200) == 0)
      {
        v89 = v4;
        v88 = 0;
        goto LABEL_212;
      }

      if (getLocaleForExtraction_sOnce != -1)
      {
        dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
      }

      v88 = _sLocaleForExtraction;
      if (_sLocaleForExtraction)
      {
LABEL_166:
        v89 = v4;
        CFRetain(v88);
        v90 = MEMORY[0x1BFB34430](v88);
        v133 = 0;
      }

      else
      {
        v89 = v4;
LABEL_212:
        v90 = 0;
        v133 = 1;
      }

      v91 = CFArrayCreateMutable(v75, v135, MEMORY[0x1E695E9C0]);
      if (v91)
      {
        v92 = v91;
        v129 = v88;
        v131 = v75;
        v93 = 0;
        do
        {
          v94 = CFArrayGetValueAtIndex(v89, v93);
          v95 = 0;
          v96 = v94[8];
          while (1)
          {
            v97 = CFArrayGetValueAtIndex(v85, v95);
            if (((*(v97 + 2))(v97, v94, v96, v125, v90, v78) & 1) == 0)
            {
              break;
            }

            if (v87 == ++v95)
            {
              CFArrayAppendValue(v92, v94);
              break;
            }
          }

          ++v93;
        }

        while (v93 != v135);
        v98 = CFArrayGetCount(v92);
        v4 = v89;
        LOBYTE(v74) = v108;
        if (v98 != v135)
        {
          v99 = v98;
          CFArrayRemoveAllValues(v89);
          v138.location = 0;
          v138.length = v99;
          CFArrayAppendArray(v89, v92, v138);
        }

        CFRelease(v92);
        v100 = CFArrayGetCount(v89) > 0;
        v88 = v129;
        v75 = v131;
      }

      else
      {
        v100 = 1;
        v4 = v89;
        LOBYTE(v74) = v108;
      }

      v3 = v125;
      if ((v133 & 1) == 0)
      {
        CFRelease(v88);
      }

      CFRelease(v85);
      if (v100)
      {
LABEL_194:
        v102 = CFArrayCreateMutable(v75, 7, 0);
        v103 = v102;
        if ((v74 & 2) != 0)
        {
          CFArrayAppendValue(v102, &__block_literal_global_209);
          if ((v74 & 4) != 0)
          {
            goto LABEL_205;
          }

LABEL_196:
          if ((v74 & 0x20) == 0)
          {
            goto LABEL_197;
          }

LABEL_206:
          CFArrayAppendValue(v103, &__block_literal_global_221);
          if (v103)
          {
LABEL_198:
            v104 = CFArrayGetCount(v103);
            if (v104 >= 1)
            {
              v105 = v104;
              for (j = 0; j != v105; ++j)
              {
                v107 = CFArrayGetValueAtIndex(v103, j);
                v107[2](v107, v4, v3, v78);
              }
            }

            CFRelease(v103);
          }
        }

        else
        {
          if ((v74 & 4) == 0)
          {
            goto LABEL_196;
          }

LABEL_205:
          CFArrayAppendValue(v103, &__block_literal_global_218);
          if ((v74 & 0x20) != 0)
          {
            goto LABEL_206;
          }

LABEL_197:
          if (v103)
          {
            goto LABEL_198;
          }
        }
      }
    }
  }
}

uint64_t DDInsertResultRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((*(a3 + 14) & 0x8000000000000000) != 0)
  {
    goto LABEL_84;
  }

  if ((*(*(*(a1 + 16) + 16) + 12 * *(a3 + 14) + 11) & 4) != 0)
  {
    a5 = (*a3 << 32) | (*(a3 + 8) << 16);
    a6 = ((*(a3 + 8) + (*(a3 + 8) >> 24)) << 16) | *a3 & 0xFFFFFFFF00000000;
  }

  if (*(*(*(a1 + 16) + 16) + 12 * *(a3 + 14)) == -1)
  {
LABEL_84:
    v36 = *(a3 + 13);
    if (*(a3 + 13))
    {
      v37 = 48;
      if ((*(a3 + 12) & 1) == 0)
      {
        v37 = 24;
      }

      v38 = (a3 + v37);
      v39 = 1;
      v40 = *(a3 + 13);
      v41 = 1;
      do
      {
        if (DDInsertResultRec(a1, a2, *v38, a4, a5, a6))
        {
          break;
        }

        v41 = v39 < v36;
        ++v38;
        ++v39;
        --v40;
      }

      while (v40);
    }

    else
    {
      return 0;
    }

    return v41;
  }

  if ((~a5 & 0xFFFF0000) == 0)
  {
    a5 = (*a2 << 32) | (*(a2 + 8) << 16);
    a6 = ((*(a2 + 8) + (*(a2 + 8) >> 24)) << 16) | *a2 & 0xFFFFFFFF00000000;
  }

  if ((*(a1 + 195) & 0x20) != 0 || (Count = CFArrayGetCount(*(a1 + 168)), Count < 1))
  {
    ScannerResult = 0;
    goto LABEL_98;
  }

  v43 = a3;
  ScannerResult = 0;
  v12 = a5 >> 16;
  v13 = Count + 1;
  v44 = 1;
  v45 = a6 >> 16;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 168), v13 - 2);
    v15 = ValueAtIndex;
    v16 = ValueAtIndex[6];
    v17 = ValueAtIndex[14];
    v18 = ValueAtIndex[15];
    v19 = v18 >> 16;
    if (v12 >= v19 && (v12 > v19 || SHIDWORD(a5) >= SHIDWORD(v18)))
    {
      break;
    }

    if ((v17 ^ a5) >> 16)
    {
      v21 = 0;
    }

    else
    {
      v21 = (v18 ^ a6) >> 16 == 0;
    }

    if (!v21)
    {
      v22 = v17 >> 16;
      if (SHIDWORD(a5) >= SHIDWORD(v17))
      {
        v23 = ValueAtIndex[14];
      }

      else
      {
        v23 = a5;
      }

      if (v12 > v22)
      {
        v23 = ValueAtIndex[14];
      }

      if (v12 >= v17 >> 16)
      {
        v24 = v23;
      }

      else
      {
        v24 = a5;
      }

      if (SHIDWORD(a6) >= SHIDWORD(v18))
      {
        v25 = a6;
      }

      else
      {
        v25 = ValueAtIndex[15];
      }

      if (v45 > v19)
      {
        v25 = a6;
      }

      if (v45 < v19)
      {
        v25 = ValueAtIndex[15];
      }

      if (!((v24 ^ a5) >> 16) && (v25 ^ a6) < 0x10000)
      {
LABEL_37:
        if (*(a1 + 192) >> 31)
        {
          CFArrayRemoveValueAtIndex(*(a1 + 160), v13 - 2);
        }

        CFArrayRemoveValueAtIndex(*(a1 + 168), v13 - 2);
        goto LABEL_68;
      }

      if (SHIDWORD(a5) >= SHIDWORD(v17))
      {
        v27 = ValueAtIndex[14];
      }

      else
      {
        v27 = a5;
      }

      v28 = v12 < v22;
      if (v12 <= v22)
      {
        v29 = v27;
      }

      else
      {
        v29 = ValueAtIndex[14];
      }

      if (v28)
      {
        v29 = a5;
      }

      if (SHIDWORD(a6) >= SHIDWORD(v18))
      {
        v30 = a6;
      }

      else
      {
        v30 = ValueAtIndex[15];
      }

      v31 = v45 < v19;
      if (v45 <= v19)
      {
        v32 = v30;
      }

      else
      {
        v32 = a6;
      }

      if (v31)
      {
        v32 = ValueAtIndex[15];
      }

      v21 = (v29 ^ v17 | v32 ^ v18) >> 16 == 0;
      v33 = v44;
      if (v21)
      {
        v33 = 0;
      }

LABEL_64:
      v44 = v33;
      goto LABEL_68;
    }

    if (!ScannerResult)
    {
      if (_typesAreEqual(ValueAtIndex[8], @"Compatibility") && (*(v43 + 14) & 0x8000000000000000) == 0 && (v26 = *(a1 + 16), *(*(v26 + 16) + 12 * *(v43 + 14)) == *(a1 + 234)))
      {
        ScannerResult = DDLRResultCreateScannerResult(v43, v26, 0);
      }

      else
      {
        ScannerResult = 0;
      }
    }

    if (DDResultsCanShareRange(ScannerResult, v15) || (*(a1 + 195) & 8) != 0)
    {
      goto LABEL_68;
    }

    if (v16 > a4 || v16 == a4 && !_typesAreEqual(v15[8], @"Location"))
    {
      if (!*(a1 + 248))
      {
        v44 = 0;
        goto LABEL_68;
      }

      v34 = DDTypeForLRResult(*(v43 + 14), *(a1 + 16));
      if (v15)
      {
        v44 = 1;
        if (!v34)
        {
          goto LABEL_68;
        }

        v33 = !_typesAreEqual(v15[8], v34);
      }

      else
      {
        v33 = 1;
      }

      goto LABEL_64;
    }

    if (!*(a1 + 248))
    {
      goto LABEL_37;
    }

    v35 = DDTypeForLRResult(*(v43 + 14), *(a1 + 16));
    if (v15)
    {
      if (v35 && _typesAreEqual(v15[8], v35))
      {
        goto LABEL_37;
      }
    }

LABEL_68:
    --v13;
  }

  while (v13 > 1);
  if (!v44)
  {
    if (ScannerResult)
    {
      goto LABEL_93;
    }

    return 1;
  }

LABEL_98:
  DDInsertResultsFromTopLevelRec(a1, a2, a4, a5, a6, ScannerResult);
  if (ScannerResult)
  {
LABEL_93:
    CFRelease(ScannerResult);
  }

  return 1;
}

const __CFString **DDResultGetSubresultWithType(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v7);
    if (_typesAreEqual(a2, ValueAtIndex[8]))
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

void DDUnwrapCompatibility(const __CFArray *a1, int a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex;
        if (_typesAreEqual(ValueAtIndex[8], @"Compatibility"))
        {
          v9 = v8[7];
          v10 = CFArrayGetCount(v9);
          v11 = v10;
          if (a2 || v10 != 1)
          {
            CFArrayRemoveValueAtIndex(a1, v6);
            if (v11 < 1)
            {
              --v5;
            }

            else
            {
              for (i = 0; i != v11; ++i)
              {
                v14 = CFArrayGetValueAtIndex(v9, i);
                CFArrayInsertValueAtIndex(a1, v6 + i, v14);
              }

              v6 += i;
              v5 = v11 + v5 - 1;
            }

            continue;
          }

          v12 = CFArrayGetValueAtIndex(v9, 0);
          CFArraySetValueAtIndex(a1, v6, v12);
        }
      }

      ++v6;
    }

    while (v6 < v5);
  }
}

CFArrayRef DDScannerCopyResultsWithOptions(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 233) == 1)
  {
    DDScannerThreadDebug(a1, 1);
    return 0;
  }

  *(a1 + 233) = 1;
  kdebug_trace();
  v5 = *(a1 + 168);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    v7 = *MEMORY[0x1E695E480];
    if (Count < 1 || (MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], Count, *(a1 + 168))) == 0 || (v9 = MutableCopy, DDApplyOptions(MutableCopy, a1, a2), Copy = CFArrayCreateCopy(0, v9), CFRelease(v9), !Copy))
    {
      Copy = CFArrayCreate(v7, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  else
  {
    Copy = 0;
  }

  kdebug_trace();
  DDScannerReset(a1);
  if (*(a1 + 233))
  {
    *(a1 + 233) = 0;
  }

  else
  {
    DDScannerThreadDebug(a1, 0);
  }

  return Copy;
}

CFIndex DDCreatePunycodedString(const __CFString *a1, int a2, int a3, int a4)
{
  v7 = a1;
  v40 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  if (a2)
  {
    result.length = 0;
    result.location = 0;
    v44.location = 0;
    v44.length = Length;
    if (CFStringFindWithOptions(v7, @"://", v44, 0, &result))
    {
      v9 = result.length + result.location;
    }

    else
    {
      v9 = 0;
    }

    Length -= v9;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (DDCreatePunycodedString_sOnce != -1)
  {
    dispatch_once(&DDCreatePunycodedString_sOnce, &__block_literal_global_279);
  }

  result.length = 0;
  result.location = 0;
  if (DDCreatePunycodedString_componentSeparatorSet)
  {
    v45.location = v9;
    v45.length = Length;
    if (CFStringFindCharacterFromSet(v7, DDCreatePunycodedString_componentSeparatorSet, v45, 0, &result))
    {
      Length = result.location - v9;
    }
  }

LABEL_13:
  v10 = CFStringGetLength(v7);
  if (v10)
  {
    v11 = v10;
    v10 = 0;
    if ((v9 & 0x8000000000000000) == 0 && Length + v9 <= v11 && Length <= 512)
    {
      v37.location = 0;
      v37.length = 0;
      v46.location = v9;
      v46.length = Length;
      v12 = CFStringFindWithOptions(v7, @"@", v46, 0, &v37);
      v13 = MEMORY[0x1E695E480];
      if (!v12)
      {
        goto LABEL_28;
      }

      v14 = v37.location - v9 + v37.length;
      if (a4 && v14 >= 2)
      {
        v15 = *MEMORY[0x1E695E480];
        v47.location = v9;
        v47.length = v14 - 1;
        v16 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v7, v47);
        if (_shouldPunyCodeHost(v16))
        {
          v17 = CFURLCreateStringByReplacingPercentEscapes(v15, v16, &stru_1F3B75AB8);
          v18 = CFStringGetLength(v16);
          CFRelease(v16);
          if (!v17)
          {
            goto LABEL_41;
          }

          v19 = CFURLCreateStringByAddingPercentEscapes(v15, v17, &stru_1F3B75AB8, &stru_1F3B75AB8, 0x8000100u);
          CFRelease(v17);
          if (!v19)
          {
            goto LABEL_41;
          }

          MutableCopy = CFStringCreateMutableCopy(v15, 0, v7);
          v7 = MutableCopy;
          if (!MutableCopy)
          {
            v32 = v19;
            goto LABEL_46;
          }

          v41.location = v9;
          v41.length = v14 - 1;
          CFStringReplace(MutableCopy, v41, v19);
          CFAutorelease(v7);
          v21 = v14 - v18 + CFStringGetLength(v19);
          CFRelease(v19);
          goto LABEL_27;
        }

        CFRelease(v16);
      }

      v21 = v14;
LABEL_27:
      Length -= v14;
      v9 += v21;
LABEL_28:
      v22 = *v13;
      v48.location = v9;
      v48.length = Length;
      v23 = CFStringCreateWithSubstring(*v13, v7, v48);
      if (v23)
      {
        v24 = v23;
        if (!_shouldPunyCodeHost(v23))
        {
          CFRetain(v7);
          goto LABEL_45;
        }

        v49.location = v9;
        v49.length = Length;
        if (!CFStringFindWithOptions(v7, @"%", v49, 0, 0) || (v25 = CFURLCreateStringByReplacingPercentEscapes(v22, v24, &stru_1F3B75AB8), CFRelease(v24), (v24 = v25) != 0))
        {
          usedBufLen = 0;
          v26 = CFStringGetLength(v24);
          v42.location = 0;
          v42.length = v26;
          if (CFStringGetBytes(v24, v42, 0x8000100u, 0, 0, &result, 512, &usedBufLen) == v26)
          {
            pErrorCode = U_ZERO_ERROR;
            v27 = MEMORY[0x1BFB35390](48, &pErrorCode);
            if (v27)
            {
              if (pErrorCode == U_ZERO_ERROR)
              {
                v28 = v27;
                pInfo = xmmword_1BD018BA0;
                v29 = uidna_nameToASCII_UTF8(v27, &result, usedBufLen, dest, 512, &pInfo, &pErrorCode);
                if (v29 < 1 || pErrorCode)
                {
                  uidna_close(v28);
                }

                else
                {
                  v30 = CFStringCreateWithBytes(v22, dest, v29, 0x8000100u, 0);
                  uidna_close(v28);
                  if (v30)
                  {
                    if (CFStringCompare(v24, v30, 0))
                    {
                      v31 = CFStringCreateMutableCopy(v22, 0, v7);
                      v7 = v31;
                      if (v31)
                      {
                        v43.location = v9;
                        v43.length = Length;
                        CFStringReplace(v31, v43, v30);
                      }
                    }

                    else
                    {
                      v7 = 0;
                    }

                    CFRelease(v30);
                    goto LABEL_45;
                  }
                }
              }
            }
          }

          v7 = 0;
LABEL_45:
          v32 = v24;
LABEL_46:
          CFRelease(v32);
          goto LABEL_47;
        }
      }

LABEL_41:
      v7 = 0;
LABEL_47:
      v10 = v7;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

CFStringRef DDResultCopyExtractedURLWithOptions(uint64_t a1, char a2)
{
  v4 = *(a1 + 64);
  if (_typesAreEqual(v4, @"Email"))
  {
    SubresultWithType = DDResultGetSubresultWithType(a1, @"Value");
    if (SubresultWithType)
    {
      MutableCopy = SubresultWithType[9];
      if (!MutableCopy)
      {
        return MutableCopy;
      }

      v7 = DDCreatePunycodedString(SubresultWithType[9], 0, 0, 1);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = MutableCopy;
      }

      v10 = @"mailto:";
LABEL_21:
      MutableCopy = CFStringCreateMutableCopy(0, 0, v10);
      CFStringAppend(MutableCopy, v9);
      if (v8)
      {
        v18 = v8;
LABEL_23:
        CFRelease(v18);
      }

      return MutableCopy;
    }

    return 0;
  }

  if (_typesAreEqual(v4, @"FullAddress"))
  {
    if ((a2 & 2) == 0)
    {
      return 0;
    }

    if (*(a1 + 72))
    {
      Helper_x8__OBJC_CLASS___GEOMapURLBuilder = gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v11);
      v14 = [*(v13 + 536) URLForAddress:Helper_x8__OBJC_CLASS___GEOMapURLBuilder];
      if (v14)
      {
        v14 = [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
      }

      v15 = [v14 absoluteString];
      MutableCopy = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      return MutableCopy;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v23 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v37 = 0;
    v24 = "can't have a result of type address without a string";
    v25 = &v37;
    goto LABEL_51;
  }

  if (_typesAreEqual(v4, @"WebURL"))
  {
    v16 = *(a1 + 72);
    if (v16)
    {
      v17 = DDCreatePunycodedString(v16, 0, 1, 0);
      v8 = v17;
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        v9 = v16;
      }

      v10 = @"http://";
      goto LABEL_21;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v23 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v36 = 0;
    v24 = "can't have a result of type web without a string";
    v25 = &v36;
LABEL_51:
    _os_log_error_impl(&dword_1BCFDD000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  if (_typesAreEqual(v4, @"HttpURL"))
  {
    v19 = *(a1 + 72);
    if (!v19)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v23 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v35 = 0;
      v24 = "can't have a result of type http without a string";
      v25 = &v35;
      goto LABEL_51;
    }

    MutableCopy = DDCreatePunycodedString(*(a1 + 72), 1, 1, 0);
    if (MutableCopy)
    {
      return MutableCopy;
    }

    v20 = *MEMORY[0x1E695E480];
    v21 = v19;
  }

  else if (_typesAreEqual(v4, @"MapsURL") || _typesAreEqual(v4, @"MailURL"))
  {
    v21 = *(a1 + 72);
    if (!v21)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v23 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 0;
      v24 = "can't have a result of type maps/mail without a string";
      v25 = buf;
      goto LABEL_51;
    }

    v20 = *MEMORY[0x1E695E480];
  }

  else
  {
    if (_typesAreEqual(v4, @"PhoneNumber") || _typesAreEqual(v4, @"QuotedShortPhoneNumber") || _typesAreEqual(v4, @"UnquotedShortPhoneNumber"))
    {
      v26 = DDResultCopyCleanPhoneNumber(a1);
      MutableCopy = v26;
      if (!v26)
      {
        return MutableCopy;
      }

      v27 = *MEMORY[0x1E695E480];
      Length = CFStringGetLength(v26);
      v29 = CFStringCreateMutableCopy(v27, Length, MutableCopy);
      v30 = DDResultCopyStrippedPhoneNumber(v29);
      if (v29)
      {
        CFRelease(v29);
      }

      if (v30)
      {
        CFRelease(MutableCopy);
      }

      else
      {
        v30 = MutableCopy;
      }

      v31 = CFURLCreateStringByAddingPercentEscapes(0, v30, 0, 0, 0x8000100u);
      CFRelease(v30);
      if (v31)
      {
        MutableCopy = CFStringCreateMutableCopy(0, 0, @"tel:");
        CFStringAppend(MutableCopy, v31);
        v18 = v31;
        goto LABEL_23;
      }

      return 0;
    }

    if (!_typesAreEqual(v4, @"GenericURL"))
    {
      return 0;
    }

    v32 = *(a1 + 72);
    if (!v32)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v23 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v33 = 0;
      v24 = "can't have a result of type generic without a string";
      v25 = &v33;
      goto LABEL_51;
    }

    if ((a2 & 1) != 0 && !DDURLSchemeIsKnown(v32))
    {
      return 0;
    }

    v20 = *MEMORY[0x1E695E480];
    v21 = v32;
  }

  return CFStringCreateCopy(v20, v21);
}

void DDGlobalFilterBlocks_block_invoke_16(int a1, CFArrayRef theArray)
{
  v16 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v4 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4 - 2);
      if (_typesAreEqual(@"BoxedResults", *(ValueAtIndex + 8)))
      {
        v6 = *(ValueAtIndex + 7);
        v7 = CFArrayGetCount(v6);
        if (v6)
        {
          v12 = v7 < 1;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          CFArrayRemoveValueAtIndex(theArray, v4 - 2);
        }

        else
        {
          v13 = v7;
          if (v7 >= 0xB)
          {
            DDLogErrD(v7, v8, v9, v10, v11, @"More than 10 boxed results. Ignoring aditional results...");
            v13 = 10;
          }

          memset(v15, 0, sizeof(v15));
          v17.location = 0;
          v17.length = v13;
          CFArrayGetValues(v6, v17, v15);
          CFRetain(ValueAtIndex);
          v18.location = v4 - 2;
          v18.length = 1;
          CFArrayReplaceValues(theArray, v18, v15, v13);
          CFRelease(ValueAtIndex);
        }
      }

      --v4;
    }

    while (v4 > 1);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void DDLexemCacheItemReset(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 | 0xFFFFFFFFLL;
  if (SHIDWORD(v1) >= 25)
  {
    free(*a1);
    v3 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = v3;
  }
}

uint64_t DDTokenCacheGetItemAtIndexCreateIfNeeded(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4 > a2)
  {
    goto LABEL_11;
  }

  v6 = a2 + 10;
  v7 = *(a1 + 56);
  if (v7)
  {
    if (v4 <= v7)
    {
      if (DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged_12)
      {
        return 0;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v20 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BCFDD000, v20, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", buf, 2u);
      }

      DDLogAssertionFailure("tokenCache->_tokenCacheTableSize > tokenCache->_tokenCacheTableStartOffset", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/PushDown/DDTokenCache.c", v21, 482, @"Start offset out of bounds");
      result = 0;
      DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged_12 = 1;
      return result;
    }

    v8 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
    v9 = *(a1 + 56);
    v10 = *(a1 + 48) - v9;
    memcpy(v8, (*(a1 + 32) + 8 * v9), 8 * v10);
    memcpy(&v8[8 * v10], *(a1 + 32), 8 * *(a1 + 56));
    free(*(a1 + 32));
    *(a1 + 32) = v8;
    *(a1 + 56) = 0;
  }

  else
  {
    v8 = malloc_type_realloc(*(a1 + 32), 8 * v6, 0x2004093837F09uLL);
    *(a1 + 32) = v8;
    if (!v8)
    {
      if (DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged)
      {
        return 0;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v22 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_error_impl(&dword_1BCFDD000, v22, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", v26, 2u);
      }

      DDLogAssertionFailure("tokenCache->_tokenCacheTable != NULL", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/PushDown/DDTokenCache.c", v23, 480, @"Realloc failed");
      result = 0;
      DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged = 1;
      return result;
    }
  }

  bzero(&v8[8 * *(a1 + 48)], 8 * (v6 - *(a1 + 48)));
  v11 = *(a1 + 32);
  if (!*(v11 + 8 * a2 + 72) && !*(v11 + 8 * *(a1 + 48)))
  {
    *(a1 + 48) = v6;
    v4 = a2 + 10;
LABEL_11:
    if (v5 <= a2)
    {
      do
      {
        v14 = *(a1 + 48);
        v13 = *(a1 + 56);
        if (v5 + v13 < v14)
        {
          v14 = 0;
        }

        v15 = v5 + v13 - v14;
        if (!*(*(a1 + 32) + 8 * v15))
        {
          v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x10220403CBE8D38uLL);
          *v16 = 0x10000FFFFFFFFLL;
          *(*(a1 + 32) + 8 * v15) = v16;
        }

        ++*(a1 + 40);
        ++v5;
      }

      while (a2 + 1 != v5);
      v4 = *(a1 + 48);
    }

    v17 = *(a1 + 56) + a2;
    if (v17 < v4)
    {
      v4 = 0;
    }

    return *(*(a1 + 32) + 8 * (v17 - v4));
  }

  if (DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged_17)
  {
    return 0;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v18 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_error_impl(&dword_1BCFDD000, v18, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", v24, 2u);
  }

  DDLogAssertionFailure("tokenCache->_tokenCacheTable[newSize - 1] == NULL && tokenCache->_tokenCacheTable[tokenCache->_tokenCacheTableSize] == NULL", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/PushDown/DDTokenCache.c", v19, 496, @"Wrong initialization");
  result = 0;
  DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged_17 = 1;
  return result;
}

uint64_t DDLexemCacheGetLexems(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v5 = *(a2 + 48 * (a3 >> 16) + 32) + (a3 >> 32) - (*(a2 + 48 * (a3 >> 16) + 16) + *a1);
  if (v5 < 201 || (v8 = a1[8]) == 0 || (a1[9] ^ a3) >= 0x10000)
  {
    if (v5 >= a1[2])
    {
      return 0;
    }

    v6 = a1[4] + v5;
    v7 = v6 >= a1[3] ? a1[3] : 0;
    v8 = *(a1[1] + 8 * (v6 - v7));
    if (!v8)
    {
      return 0;
    }
  }

  if ((v8[1] & 0x80000000) != 0)
  {
    return 0;
  }

  *a5 = v8[1] & 0x7FFFFFFFLL;
  *a4 = *v8;
  return 1;
}

BOOL _shouldPunyCodeHost(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  theString = a1;
  v24 = 0;
  v25 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v22 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v26 = 0;
  v27 = 0;
  v23 = CStringPtr;
  if (Length >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    v9 = 64;
    memset(v20, 0, sizeof(v20));
    while (1)
    {
      if (v7 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v7;
      }

      v11 = v25;
      if (v25 <= v7)
      {
        v13 = 0;
      }

      else
      {
        if (v22)
        {
          v12 = &v22[v24];
        }

        else
        {
          if (v23)
          {
            v13 = v23[v24 + v7];
            goto LABEL_13;
          }

          if (v27 <= v7 || v6 > v7)
          {
            v15 = v10 + v5;
            v16 = v9 - v10;
            v17 = v7 - v10;
            v18 = v17 + 64;
            if (v17 + 64 >= v25)
            {
              v18 = v25;
            }

            v26 = v17;
            v27 = v18;
            if (v25 >= v16)
            {
              v11 = v16;
            }

            v28.location = v17 + v24;
            v28.length = v11 + v15;
            CFStringGetCharacters(theString, v28, v20);
            v6 = v26;
          }

          v12 = v20 - v6;
        }

        v13 = v12[v7];
      }

LABEL_13:
      if ((v13 - 58) > 0xFFF5u || (v13 - 123) > 0xFFE5u || (v13 - 91) > 0xFFE5u || (v13 - 47) >= 0xFFFEu)
      {
        v8 = ++v7 < Length;
        --v5;
        ++v9;
        if (Length != v7)
        {
          continue;
        }
      }

      return v8;
    }
  }

  return 0;
}

uint64_t getNext(void *a1)
{
  do
  {
    v2 = a1[1];
    v3 = a1[3] + a1[2];
    if (v3 <= v2 >> 32)
    {
      goto LABEL_6;
    }

    v4 = *(*a1 + 32);
    chunkOffset = v4->chunkOffset;
    if (chunkOffset < v4->chunkLength)
    {
      v6 = v4->chunkContents[chunkOffset];
      if (v6 >> 11 <= 0x1A)
      {
        v4->chunkOffset = chunkOffset + 1;
LABEL_12:
        if (v6 >> 2 == 0x3FFF || (v6 != 10 ? (v19 = v6 == 8232) : (v19 = 1), !v19 ? (v20 = v6 == 13) : (v20 = 1), v20 && *(*a1 + 48) == 1))
        {
          v6 = 32;
        }

        v21 = v4->chunkOffset;
        if (v21 <= v4->nativeIndexingLimit)
        {
          v22 = v4->chunkNativeStart + v21;
        }

        else
        {
          v22 = (v4->pFuncs->mapOffsetToNative)(v4);
        }

        for (; v22 < v3; v22 = v25 <= v4->nativeIndexingLimit ? v4->chunkNativeStart + v25 : (v4->pFuncs->mapOffsetToNative)(v4))
        {
          v23 = v4->chunkOffset;
          if (v23 < v4->chunkLength)
          {
            v24 = v4->chunkContents[v23];
            if (v24 >> 11 <= 0x1A)
            {
              goto LABEL_47;
            }
          }

          v24 = utext_current32(v4);
LABEL_47:
          if (v24 >> 1 != 4103 || !utext_moveIndex32(v4, 1))
          {
            break;
          }

          v25 = v4->chunkOffset;
        }

        *(a1 + 3) = v22;
        return v6;
      }
    }

    v7 = utext_next32(*(*a1 + 32));
    if (v7 != -1)
    {
      v6 = v7;
      goto LABEL_12;
    }

    v2 = a1[1];
LABEL_6:
    v8 = *a1;
    v9 = *(*a1 + 24);
    v10 = v2 >> 16;
    if (v10 >= *(v9 + 32) - 1)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = *(v9 + 16);
    v12 = 48 * v10;
    v13 = (*(v11 + 48 * v10 + 40) >> 26) & 7;
    v14 = v10 + 1;
    v12 += 48;
    v15 = *(v11 + v12 + 16);
    *(a1 + 1) = v15;
    a1[1] = v2 | (v14 << 16) | (v15 << 32);
    v16 = *(v8 + 32);
    v17 = *(*(v8 + 24) + 16) + v12;
    *(v8 + 40) = v14;
    *(v8 + 48) = (*(v17 + 40) & 0x40000000) != 0;
    v18 = *v17;
    *(v8 + 32) = CFStringOpenUText();
  }

  while (!v13);
  if (v13 > 2)
  {
    if (v13 != 4)
    {
      if (v13 == 3)
      {
        return 10;
      }

      return 0xFFFFFFFFLL;
    }

    return 31;
  }

  else if (v13 == 1)
  {
    return 32;
  }

  else
  {
    return 9;
  }
}

BOOL _typesAreEqual(CFStringRef theString, const __CFString *a2)
{
  result = 0;
  if (theString && a2)
  {
    if (theString == a2)
    {
      return 1;
    }

    else
    {
      Length = CFStringGetLength(theString);
      if (Length == CFStringGetLength(a2))
      {
        v6.location = 0;
        v6.length = Length;
        return CFStringCompareWithOptionsAndLocale(theString, a2, v6, 0, 0) == kCFCompareEqualTo;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL DDResultsCanShareRange(CFStringRef *a1, CFStringRef *a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (!_typesAreEqual(a1[8], @"Compatibility") || !_typesAreEqual(a2[8], @"Compatibility"))
  {
    return 0;
  }

  v5 = a1[10];
  if (!v5)
  {
    v5 = a1[9];
  }

  v6 = a2[10];
  if (!v6)
  {
    v6 = a2[9];
  }

  v2 = 0;
  if (v5 && v6)
  {
    if (CFStringFind(v5, @"-", 0).location != -1 && CFStringFind(v6, @"-", 0).location != -1)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v5, @"-");
      v8 = CFStringCreateArrayBySeparatingStrings(0, v6, @"-");
      v9 = v8;
      if (ArrayBySeparatingStrings && v8)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
        v11 = CFArrayGetValueAtIndex(v9, 0);
        if (CFStringCompare(ValueAtIndex, @"1", 0) && CFStringCompare(v11, @"1", 0))
        {
          v12 = 0;
        }

        else
        {
          v14 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
          v15 = CFArrayGetValueAtIndex(v9, 1);
          v12 = CFStringCompare(v14, v15, 0) == kCFCompareEqualTo;
        }
      }

      else
      {
        v12 = 0;
        v2 = 0;
        if (!ArrayBySeparatingStrings)
        {
LABEL_24:
          if (v9)
          {
            CFRelease(v9);
          }

          return v2;
        }
      }

      CFRelease(ArrayBySeparatingStrings);
      v2 = v12;
      goto LABEL_24;
    }

    return 0;
  }

  return v2;
}

void DDGlobalFilterBlocks_block_invoke_13(int a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 2)
  {
    v4 = Count;
    v5 = 1;
    v6 = 2;
    do
    {
      v7 = *(CFArrayGetValueAtIndex(theArray, v5) + 2);
      v8 = v7 >> 16;
      v9 = HIDWORD(v7);
      v10 = v6;
      do
      {
        v11 = v10 - 1;
        v12 = v10 - 2;
        v13 = *(CFArrayGetValueAtIndex(theArray, v10 - 2) + 2);
        v14 = v13 >> 16;
        if (v14 < v8)
        {
          break;
        }

        v15 = HIDWORD(v13);
        if (v14 <= v8 && v15 <= v9)
        {
          break;
        }

        CFArrayExchangeValuesAtIndices(theArray, v12, v11);
        v10 = v11;
      }

      while (v11 > 1);
      ++v5;
      ++v6;
    }

    while (v5 != v4);
  }
}

void DDGlobalFilterBlocks_block_invoke_10(int a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 2)
  {
    v4 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v6 = *(ValueAtIndex + 3);
    if (*(ValueAtIndex + 2) >> 16)
    {
      v7 = 0;
    }

    else
    {
      v7 = CFStringCompare(*(ValueAtIndex + 8), @"AuthCode", 0) == kCFCompareEqualTo;
    }

    v8 = CFArrayGetValueAtIndex(theArray, 0);
    v9 = 1;
    while (1)
    {
      v10 = CFArrayGetValueAtIndex(theArray, v9);
      v11 = v10;
      v12 = v10[2];
      v13 = v10[3];
      v14 = v6 >> 16;
      if (v14 >= v12 >> 16 && (v14 > v12 >> 16 || SHIDWORD(v6) > SHIDWORD(v12)))
      {
        break;
      }

      if (((v12 ^ v6) & 0xFFFF0000) == 0 && (HIDWORD(v12) - HIDWORD(v6) < 50 || v7))
      {
        v15 = v10[8];
        if (v15 == v8[8] && CFStringCompare(v15, @"AuthCode", 0) == kCFCompareEqualTo)
        {
          v28 = v8[9];
          Length = CFStringGetLength(v28);
          v27 = v11[9];
          v17 = CFStringGetLength(v27);
          v18 = Length;
          v19 = v17;
          v20 = Length == v17 && !v7;
          if (v20 != 1 || (v21 = v28, v29 = v19, v22 = CFStringCompare(v21, v27, 0), v19 = v29, v18 = Length, v22))
          {
            v23 = v8[6];
            v24 = v11[6];
            if (!v7)
            {
              v25 = v18 == v19;
              if (v23 <= v24)
              {
                v25 = 0;
              }

              if (v18 > v19 || v25)
              {
                break;
              }
            }

            v26 = v23 < v24 && v18 == v19;
            if (v18 < v19 || v26)
            {
              CFArrayRemoveValueAtIndex(theArray, v9 - 1);
              --v4;
              goto LABEL_17;
            }
          }
        }
      }

      ++v9;
LABEL_17:
      v6 = v13;
      v8 = v11;
      if (v9 >= v4)
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(theArray, v9);
    --v4;
    v11 = v8;
    v13 = v6;
    goto LABEL_17;
  }
}

const __CFString **_DDGetRelevantResultsForUrlificationRange(uint64_t a1, const __CFString ***a2)
{
  v4 = *(a1 + 64);
  if (_DDResultTypeIsAnyPhoneKind(v4))
  {
    v5 = &DDBinderExtensionKey;
    v6 = @"Value";
LABEL_5:
    *a2 = DDResultGetSubresultWithType(a1, *v5);
    goto LABEL_6;
  }

  if (_typesAreEqual(v4, @"FlightInformation"))
  {
    v5 = DDBinderFlightNumberKey;
    v6 = @"AirlineCode";
    goto LABEL_5;
  }

  if (!_typesAreEqual(v4, @"Email"))
  {
    return a1;
  }

  v6 = @"Value";
LABEL_6:

  return DDResultGetSubresultWithType(a1, v6);
}

void DDStaticLookupDestroy(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[17];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[18];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    CFRelease(v6);
  }

  free(a1);
}

void _DDLookupTableCFFinalize(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    DDLookupTrieDestroy(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    DDLookupTrieDestroy(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[14];
  if (v8)
  {
    CFRelease(v8);
    a1[14] = 0;
  }

  v9 = a1[15];
  if (v9)
  {
    free(v9);
    a1[15] = 0;
  }

  v10 = a1[2];
  if (v10)
  {
    DDStaticLookupDestroy(v10);
  }

  v11 = a1[3];
  if (v11)
  {

    DDStaticLookupDestroy(v11);
  }
}

void _DDScannerCFFinalize(uint64_t a1)
{
  DDTokenCacheDestroy(*(a1 + 40));
  DDLexemCacheDestroy(*(a1 + 48));
  DDLRTableDestroy(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 208))
  {
    v3 = malloc_default_purgeable_zone();
    malloc_zone_free(v3, *(a1 + 208));
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  for (i = 0; i != 7; ++i)
  {
    _DDScannerDestroyOptionalLookupTable(a1, i);
  }

  DDSourceMatchCacheFree(*(a1 + 152));
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 216);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(a1 + 240);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 264);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 272);
  if (v13)
  {

    CFRelease(v13);
  }
}

void DDLexemCacheItemDestroy(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void dd_icu_3_6__5_0_2::RuleBasedClassifier::~RuleBasedClassifier(dd_icu_3_6__5_0_2::RuleBasedClassifier *this)
{
  dd_icu_3_6__5_0_2::RuleBasedClassifier::~RuleBasedClassifier(this);

  JUMPOUT(0x1BFB34A30);
}

{
  *this = &unk_1F3B73E48;
  v2 = *(this + 4);
  if (v2)
  {
    utext_close(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x1BFB34A30](v3, 0x10F0C40ABC2424ELL);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }
}

void _DDScannerDestroyOptionalLookupTable(uint64_t a1, int a2)
{
  v2 = a1 + 72;
  v3 = *(a1 + 72 + 8 * a2);
  if (v3)
  {
    if (a2 == 4)
    {
      if (!*(a1 + 128))
      {
        CFRelease(*(a1 + 104));
        v7 = *(a1 + 144);
        if (v7)
        {
          CFRelease(v7);
          *(a1 + 144) = 0;
        }

        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_8:
      CFRelease(v3);
LABEL_9:
      *(v2 + 8 * a2) = 0;
      return;
    }

    v6 = v3[4];
    if (v6)
    {
      munmap(v6, v6[1]);
      v3[5] = 0;
      v3[6] = 0;
      v3[4] = 0;
    }

    goto LABEL_8;
  }
}

void DDScanQueryReset(void *a1)
{
  if (a1[4] >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1[2] + v2);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = a1[5];
      if (v5)
      {
        v5(a1[6], *(a1[2] + v2 + 8));
      }

      ++v3;
      v2 += 48;
    }

    while (v3 < a1[4]);
  }

  a1[4] = 0;
}

void _DDCacheCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  else if (munmap(*(a1 + 64), *(*(a1 + 64) + 8)) < 0)
  {
    v3 = __error();
    v4 = strerror(*v3);
    DDLogErrD(v4, v5, v6, v7, v8, @"could not munmap file: %s", v4);
  }

  v9 = *(a1 + 80);
  if (v9)
  {

    CFRelease(v9);
  }
}

char *DDLexemCacheInsertItemInFreeArray(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 7);
  v5 = *(result + 6) + 1;
  if (v5 >= v4)
  {
    result = malloc_type_realloc(*(result + 5), 8 * v4 + 64, 0x2004093837F09uLL);
    v3[5] = result;
    v6 = &result[8 * v3[7]];
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    v7 = v3[6];
    v3[7] += 8;
    v5 = v7 + 1;
  }

  v3[6] = v5;
  *(v3[5] + 8 * v5) = a2;
  return result;
}

void DDLexemCacheDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(a1 + 8) + 8 * i);
        if (v4)
        {
          DDLexemCacheItemDestroy(v4);
          v2 = *(a1 + 24);
        }
      }
    }

    free(*(a1 + 8));
    *(a1 + 8) = 0;
    v5 = *(a1 + 56);
    if (v5 >= 1)
    {
      for (j = 0; j < v5; ++j)
      {
        v7 = *(*(a1 + 40) + 8 * j);
        if (v7)
        {
          DDLexemCacheItemDestroy(v7);
          v5 = *(a1 + 56);
        }
      }
    }

    free(*(a1 + 40));
    *(a1 + 40) = 0;
    v8 = *(a1 + 64);
    if (v8)
    {
      DDLexemCacheItemDestroy(v8);
    }

    free(a1);
  }
}

void _DDScanQueryCFFinalize(void *a1)
{
  DDScanQueryReset(a1);
  v2 = a1[2];
  if (v2)
  {
    free(v2);
    a1[2] = 0;
  }
}

void DDLRTableDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[10];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[9];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}