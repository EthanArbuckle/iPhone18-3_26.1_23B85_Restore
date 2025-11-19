uint64_t DDDFAScannerScanQuery(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2[4];
  CFArrayRemoveAllValues(*(a1 + 32));
  if (v4 < 1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = a2[2] + 48 * v5;
      CharactersPtr = CFStringGetCharactersPtr(*v7);
      if (CharactersPtr)
      {
        v6 |= DDDFAScannerScanUnicharArrayFragment(a1, &CharactersPtr[*(v7 + 16)], *(v7 + 24), v5);
      }

      else
      {
        v9 = *(v7 + 24);
        v21 = 1;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        v15 = 0u;
        v14[0] = buffer;
        v14[1] = 0;
        v14[2] = 0;
        DDDFAScannerFillInitialContext(a1, v5, *(v7 + 16), *(a1 + 32), 1, 1, v14);
        DDDFAScannerComputeResultsForContextWithRebuffering(v7, v14, buffer);
        if (v9 >= 1)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*(a1 + 16))
            {
              break;
            }

            DDDFAScannerFillInitialContext(a1, v5, i + *(v7 + 16), *(a1 + 32), 0, 1, v14);
            DDDFAScannerComputeResultsForContextWithRebuffering(v7, v14, buffer);
          }
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  DDDFAScannerPostprocessResults(a1, a2);
  if (CFArrayGetCount(*(a1 + 32)) > 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

CFIndex DDDFAScannerPostprocessResults(uint64_t a1, void *a2)
{
  for (i = 0; ; ++i)
  {
    result = CFArrayGetCount(*(a1 + 32));
    if (i >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
    v7 = ValueAtIndex;
    v8 = *(*(a1 + 24) + 80);
    if (v8)
    {
      v8(ValueAtIndex);
    }

    if (a2)
    {
      DDResultSetContent(v7, a2);
    }
  }

  return result;
}

BOOL DDDFAScannerScanUnicharArrayFragment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9[0] = a2;
  v9[1] = 0;
  v9[2] = a3;
  DDDFAScannerFillInitialContext(a1, a4, 0, *(a1 + 32), 1, 1, v9);
  (*(&v15 + 1))(v9);
  if (a3 >= 1)
  {
    v7 = 0;
    do
    {
      if (*(a1 + 16))
      {
        break;
      }

      DDDFAScannerFillInitialContext(a1, a4, v7, *(a1 + 32), 0, 1, v9);
      (*(&v15 + 1))(v9);
      ++v7;
    }

    while (a3 != v7);
  }

  return CFArrayGetCount(*(a1 + 32)) > 0;
}

uint64_t DDDFAScannerFillInitialContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v10 = *(a1 + 24);
  *(a7 + 80) = xmmword_1BD018B60;
  *(a7 + 72) = a6;
  if (a6)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  *(a7 + 96) = v11;
  *(a7 + 24) = v10;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = a3;
  *(a7 + 56) = a3 - *(a7 + 8);
  *(a7 + 64) = a2;
  *(a7 + 73) = 0;
  if (getLocaleForExtraction_sOnce != -1)
  {
    dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
  }

  result = _sLocaleForExtraction;
  if (_sLocaleForExtraction)
  {
    result = MEMORY[0x1BFB34430]();
    if (result)
    {
      result = CFStringHasSuffix(result, @"BR");
      if (result)
      {
        *(a7 + 73) = 1;
      }
    }
  }

  v13 = *(a1 + 24);
  if (a5 || (v14 = *(v13 + 64)) == 0)
  {
    v15 = *(v13 + 38);
    v14 = DDDFAScannerSimulateState;
  }

  else
  {
    v15 = -1;
  }

  *(a7 + 104) = v15;
  *(a7 + 112) = v14;
  return result;
}

uint64_t DDDFAScannerComputeResultsForContextWithRebuffering(uint64_t a1, uint64_t a2, UniChar *buffer)
{
  do
  {
    v6 = *(a2 + 56);
    if (v6 < 0 || v6 >= *(a2 + 16) - 5 && *(a2 + 120))
    {
      v7.location = *(a2 + 8) + v6;
      *(a2 + 56) = 0;
      *(a2 + 8) = v7.location;
      *(a2 + 16) = 1024;
      v8 = *(a1 + 24) + *(a1 + 16);
      if (v7.location + 1024 >= v8)
      {
        v9 = 0;
        v7.length = v8 - v7.location;
        *(a2 + 16) = v8 - v7.location;
      }

      else
      {
        v9 = 1;
        v7.length = 1024;
      }

      *(a2 + 120) = v9;
      CFStringGetCharacters(*a1, v7, buffer);
    }

    result = (*(a2 + 112))(a2);
  }

  while (result && *(a2 + 16) + *(a2 + 8) < *(a1 + 24) + *(a1 + 16));
  return result;
}

BOOL DDDFAScannerScanUnicharArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CFArrayRemoveAllValues(*(a1 + 32));
  v6 = DDDFAScannerScanUnicharArrayFragment(a1, a2, a3, 0);
  DDDFAScannerPostprocessResults(a1, 0);
  return v6;
}

uint64_t DDDFAScannerFirstResultInUnicharArray(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  v24 = 0;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17[0] = a2;
  v17[1] = 0;
  v9 = a3;
  v17[2] = a3;
  DDDFAScannerFillInitialContext(a1, 0, 0, *(a1 + 32), 1, 0, v17);
  (*(&v23 + 1))(v17);
  if (*(&v21 + 1) == -1)
  {
    v12 = *(a1 + 24);
    v13 = *(v12 + 64);
    if (v13)
    {
      v14 = -1;
    }

    else
    {
      v14 = *(v12 + 38);
      v13 = DDDFAScannerSimulateState;
    }

    *&v23 = v14;
    *(&v23 + 1) = v13;
    if (a3)
    {
      v15 = 0;
      while (!*(a1 + 16))
      {
        *&v19 = 0;
        *(&v19 + 1) = v15;
        *&v20 = v15;
        (*(&v23 + 1))(v17);
        v16 = DWORD2(v21);
        if (*(&v21 + 1) != -1)
        {
          *a4 = DWORD2(v21);
          v10 = v22 + v16;
          goto LABEL_3;
        }

        if (v9 == ++v15)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  else
  {
    *a4 = 0;
    v10 = v22;
LABEL_3:
    *a5 = v10;
    return 1;
  }
}

void DDDFAScannerReset(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2.length = CFArrayGetCount(v1);
  v2.location = 0;

  CFArrayReplaceValues(v1, v2, 0, 0);
}

uint64_t DDDFAScannerScanStringWithRange(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (!a1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v10 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "DDDFAScannerScanStringWithRange called with NULL scanner", v12, 2u);
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    DDScanQueryReset(v8);
    DDScanQueryAddTextFragment(*(a1 + 40), a2, a3, a4, 0, 0, 0);
    v9 = *(a1 + 40);
  }

  else
  {
    v9 = DDScanQueryCreateFromString(0, a2, a3, a4);
    *(a1 + 40) = v9;
  }

  return DDDFAScannerScanQuery(a1, v9);
}

uint64_t DDDFAScannerScanString(uint64_t a1, CFStringRef theString)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);

    return DDDFAScannerScanStringWithRange(a1, theString, 0, Length);
  }

  else
  {
    v6 = *(a1 + 32);
    v8.length = CFArrayGetCount(v6);
    v8.location = 0;
    CFArrayReplaceValues(v6, v8, 0, 0);
    return 0;
  }
}

uint64_t DDDFACacheCreateFromBundle(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = DDTypeRegister(&DDDFACacheGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v2, 0x50uLL);
  *(Instance + 88) = a1;
  CFRetain(a1);
  FunctionPointerForName = CFBundleGetFunctionPointerForName(a1, @"GetPrefixInitialState");
  v5 = CFBundleGetFunctionPointerForName(a1, @"GetSuffixInitialState");
  v6 = CFBundleGetFunctionPointerForName(a1, @"GetVersion");
  v7 = CFBundleGetFunctionPointerForName(a1, @"GetResultPostprocessor");
  v8 = v7;
  if (!FunctionPointerForName || !v5 || !v6 || !v7)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v19 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 134218752;
    *v42 = FunctionPointerForName;
    *&v42[8] = 2048;
    v43 = v5;
    *v44 = 2048;
    *&v44[2] = v6;
    v45 = 2048;
    v46 = v8;
    v16 = "Missing function when loading DFA cache (%p, %p, %p, %p)";
    v17 = v19;
    v18 = 42;
    goto LABEL_27;
  }

  v9 = v6();
  if (v9 != 7)
  {
    v20 = v9;
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v21 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 67109376;
    *v42 = 7;
    *&v42[4] = 1024;
    *&v42[6] = v20;
    v16 = "Could not load the DFA plugin. Version expected = %d, found = %d";
LABEL_21:
    v17 = v21;
    v18 = 14;
LABEL_27:
    _os_log_error_impl(&dword_1BCFDD000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_67;
  }

  *(Instance + 64) = FunctionPointerForName();
  *(Instance + 72) = v5();
  *(Instance + 80) = v8();
  v10 = CFBundleCopyResourceURL(a1, @"main", @"cache", 0);
  if (!v10)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v22 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v16 = "Could not find the cache in the DFA plugin";
LABEL_26:
    v17 = v22;
    v18 = 2;
    goto LABEL_27;
  }

  v11 = v10;
  v12 = CFURLGetFileSystemRepresentation(v10, 1u, buffer, 1024);
  CFRelease(v11);
  if (!v12)
  {
LABEL_67:
    CFRelease(Instance);
    Instance = 0;
    goto LABEL_68;
  }

  memset(&v39, 0, sizeof(v39));
  if (stat(buffer, &v39))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v13 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    v14 = __error();
    v15 = strerror(*v14);
    *buf = 136315394;
    *v42 = buffer;
    *&v42[8] = 2080;
    v43 = v15;
    v16 = "Could not stat %s: %s, aborting";
    v17 = v13;
    v18 = 22;
    goto LABEL_27;
  }

  if (v39.st_size >= 0x1000000)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v22 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v16 = "Cache file too big";
    goto LABEL_26;
  }

  v23 = DDmmap(buffer, v39.st_size);
  if (!v23)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v22 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v16 = "DataDetectorsCore: mmapping the DFA cache failed";
    goto LABEL_26;
  }

  *(Instance + 16) = v23;
  *(Instance + 24) = *v23;
  if (*(Instance + 24) != 48862)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v22 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v16 = "Could not load DFA cache. Wrong magic number.";
    goto LABEL_26;
  }

  if (*(Instance + 26) != 7)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v21 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    v34 = *(Instance + 26);
    *buf = 67109376;
    *v42 = 7;
    *&v42[4] = 1024;
    *&v42[6] = v34;
    v16 = "Could not load DFA cache. Version expected = %d, found = %d";
    goto LABEL_21;
  }

  if (*(Instance + 38) >= *(Instance + 32))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v21 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    v35 = *(Instance + 38);
    v36 = *(Instance + 32);
    *buf = 67109376;
    *v42 = v35;
    *&v42[4] = 1024;
    *&v42[6] = v36;
    v16 = "Simplified cache header sanity check failed (%d >= %d)";
    goto LABEL_21;
  }

  v24 = (v23 + 1);
  *(Instance + 40) = malloc_type_malloc(8 * *(Instance + 34), 0x6004044C4A2DFuLL);
  LODWORD(v25) = *(Instance + 34);
  if (*(Instance + 34))
  {
    v26 = 0;
    do
    {
      *(*(Instance + 40) + 8 * v26) = CFStringCreateWithCString(0, v24, 0x600u);
      v24 += 128;
      ++v26;
      v25 = *(Instance + 34);
    }

    while (v26 < v25);
  }

  *(Instance + 48) = v24;
  if (*v24 >= *(Instance + 36) || *(v24 + 1) >= v25)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v22 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v16 = "DFA cache states sanity check failed";
    goto LABEL_26;
  }

  v27 = *(Instance + 32);
  v28 = &v24[8 * v27];
  *(Instance + 56) = v28;
  if (v28[1] <= *v28 || v28[3] >= v27)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v29 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    v30 = *(Instance + 56);
    v31 = v30[1];
    v32 = *v30;
    LODWORD(v30) = v30[3];
    v33 = *(Instance + 32);
    *buf = 67109888;
    *v42 = v31;
    *&v42[4] = 1024;
    *&v42[6] = v32;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = v30;
    HIWORD(v43) = 1024;
    *v44 = v33;
    v16 = "Simplified cache transitions sanity check failed (%d, %d, %d, %d)";
    v17 = v29;
    v18 = 26;
    goto LABEL_27;
  }

LABEL_68:
  v37 = *MEMORY[0x1E69E9840];
  return Instance;
}

void _DDDFACacheCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 28))
  {
    v3 = *(a1 + 40);
    if (v3 && *(a1 + 34))
    {
      v4 = 0;
      do
      {
        CFRelease(*(*(a1 + 40) + 8 * v4++));
      }

      while (v4 < *(a1 + 34));
      v3 = *(a1 + 40);
    }

    free(v3);
    v5 = *(a1 + 28);
    if (v5 > 0x3FF)
    {
      v7 = v5;
      if (v5 >> 20)
      {
        v6 = CFStringCreateWithFormat(0, 0, @"%.2f MB", (v7 * 0.00000095367));
      }

      else
      {
        v6 = CFStringCreateWithFormat(0, 0, @"%.2f KB", (v7 * 0.00097656));
      }
    }

    else
    {
      v6 = CFStringCreateWithFormat(0, 0, @"%ld B", *(a1 + 28));
    }

    CFRelease(v6);
    if (munmap(*(a1 + 16), *(a1 + 28)) < 0)
    {
      v8 = __error();
      v9 = strerror(*v8);
      DDLogErrD(v9, v10, v11, v12, v13, @"could not munmap file: %s", v9);
    }
  }
}

uint64_t _DDDFACacheCFInit(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 88) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t DDDFACacheCreateFromFramework()
{
  v18 = *MEMORY[0x1E69E9840];
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.datadetectorscore");
  if (!BundleWithIdentifier)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v9 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v16 = 138412290;
    v17 = @"com.apple.datadetectorscore";
    v10 = "Could not locate the DDCore bundle %@, aborting. It's either not here or you ran out of file descriptors.";
    v11 = v9;
    v12 = 12;
LABEL_13:
    _os_log_error_impl(&dword_1BCFDD000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
    goto LABEL_19;
  }

  v1 = CFBundleCopyBuiltInPlugInsURL(BundleWithIdentifier);
  if (!v1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v13 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LOWORD(v16) = 0;
    v10 = "Could not locate the plugins in the DDCore bundle";
    v11 = v13;
    v12 = 2;
    goto LABEL_13;
  }

  v2 = v1;
  v3 = CFURLCreateCopyAppendingPathComponent(0, v1, @"PhoneNumbers.plugin", 1u);
  CFRelease(v2);
  v4 = CFBundleCreate(0, v3);
  if (v4)
  {
    v5 = v4;
    CFRelease(v3);
    v6 = DDDFACacheCreateFromBundle(v5);
    CFRelease(v5);
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v14 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v3;
    _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, "Could not load the plugin %@", &v16, 0xCu);
  }

  CFRelease(v3);
LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t DDExtractKanjiNumber(const __CFString *a1, void *a2)
{
  Length = CFStringGetLength(a1);
  if (Length >= 1)
  {
    v5 = Length;
    v46 = a2;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v47 = 1;
    while (1)
    {
      if ((v7 & 1) == 0)
      {
        if (v9 > 0xCCCCCCCCCCCCCCBLL)
        {
          return 0;
        }

        v9 *= 10;
      }

      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v6);
      result = 0;
      v14 = CharacterAtIndex == 12583 || (CharacterAtIndex - 13312) >> 4 < 0x6BF;
      if (CharacterAtIndex <= 20842)
      {
        if (CharacterAtIndex <= 3664)
        {
          if (CharacterAtIndex <= 2405)
          {
            v18 = v6;
            switch(CharacterAtIndex)
            {
              case ' ':
              case ',':
              case '.':
                v9 /= 10;
                goto LABEL_237;
              case '0':
                goto LABEL_173;
              case '1':
                goto LABEL_233;
              case '2':
                goto LABEL_179;
              case '3':
                goto LABEL_131;
              case '4':
                goto LABEL_132;
              case '5':
                goto LABEL_236;
              case '6':
                goto LABEL_108;
              case '7':
                goto LABEL_164;
              case '8':
                goto LABEL_216;
              case '9':
                goto LABEL_149;
              default:
                return result;
            }

            return result;
          }

          if (CharacterAtIndex <= 2410)
          {
            if (CharacterAtIndex > 2407)
            {
              if (CharacterAtIndex == 2408)
              {
                goto LABEL_179;
              }

              if (CharacterAtIndex != 2409)
              {
                goto LABEL_132;
              }

              goto LABEL_131;
            }

            if (CharacterAtIndex != 2406)
            {
              goto LABEL_233;
            }
          }

          else
          {
            if (CharacterAtIndex <= 2413)
            {
              if (CharacterAtIndex == 2411)
              {
                goto LABEL_236;
              }

              if (CharacterAtIndex != 2412)
              {
                v18 = v6;
                goto LABEL_164;
              }

              goto LABEL_108;
            }

            if (CharacterAtIndex == 2414)
            {
              goto LABEL_216;
            }

            if (CharacterAtIndex == 2415)
            {
              goto LABEL_149;
            }

            if (CharacterAtIndex != 3664)
            {
              return result;
            }
          }
        }

        else
        {
          if (CharacterAtIndex <= 12294)
          {
            if (CharacterAtIndex > 3670)
            {
              if (CharacterAtIndex > 12031)
              {
                if (CharacterAtIndex == 12032)
                {
                  goto LABEL_233;
                }

                if (CharacterAtIndex != 12038)
                {
                  v17 = 12043;
LABEL_112:
                  if (CharacterAtIndex != v17)
                  {
                    return result;
                  }

LABEL_216:
                  v9 += 8;
                  goto LABEL_237;
                }

                goto LABEL_179;
              }

              if (CharacterAtIndex == 3671)
              {
                goto LABEL_163;
              }

              if (CharacterAtIndex == 3672)
              {
                goto LABEL_216;
              }

              if (CharacterAtIndex != 3673)
              {
                return result;
              }

              goto LABEL_149;
            }

            if (CharacterAtIndex <= 3667)
            {
              if (CharacterAtIndex == 3665)
              {
                goto LABEL_233;
              }

              if (CharacterAtIndex == 3666)
              {
                goto LABEL_179;
              }

LABEL_131:
              v9 += 3;
              goto LABEL_237;
            }

            if (CharacterAtIndex == 3668)
            {
              goto LABEL_132;
            }

            if (CharacterAtIndex == 3669)
            {
              goto LABEL_236;
            }

            goto LABEL_108;
          }

          if (CharacterAtIndex > 20003)
          {
            if (CharacterAtIndex > 20115)
            {
              if (CharacterAtIndex <= 20335)
              {
                if (CharacterAtIndex == 20116)
                {
                  goto LABEL_236;
                }

                v16 = 20191;
LABEL_156:
                if (CharacterAtIndex != v16)
                {
                  return result;
                }

LABEL_157:
                v28 = v9 / 10;
                if (v7)
                {
                  v28 = v9;
                }

                if (v28 <= 1)
                {
                  v28 = 1;
                }

                v29 = 1000 * v28;
                if (v8 >= (v29 ^ 0x7FFFFFFFFFFFFFFFLL))
                {
                  return 0;
                }

                v9 = 0;
                v8 += v29;
                v7 = 1;
                v30 = 100;
                goto LABEL_186;
              }

              if (CharacterAtIndex == 20336)
              {
                goto LABEL_180;
              }

              v24 = 20841;
LABEL_178:
              if (CharacterAtIndex != v24)
              {
                return result;
              }

LABEL_179:
              v9 += 2;
              goto LABEL_237;
            }

            if (CharacterAtIndex == 20004)
            {
              goto LABEL_179;
            }

            if (CharacterAtIndex != 20061)
            {
              v24 = 20108;
              goto LABEL_178;
            }

            goto LABEL_149;
          }

          if (CharacterAtIndex > 19970)
          {
            if (CharacterAtIndex == 19971)
            {
              goto LABEL_163;
            }

            if (CharacterAtIndex == 19975)
            {
              goto LABEL_166;
            }

            if (CharacterAtIndex != 19977)
            {
              return result;
            }

            goto LABEL_131;
          }

          if (CharacterAtIndex != 12295)
          {
            if (CharacterAtIndex != 12583)
            {
              v20 = 19968;
LABEL_206:
              if (CharacterAtIndex != v20)
              {
                return result;
              }
            }

LABEL_233:
            ++v9;
            goto LABEL_237;
          }
        }
      }

      else
      {
        if (CharacterAtIndex > 47563)
        {
          if (CharacterAtIndex <= 50667)
          {
            if (CharacterAtIndex > 49463)
            {
              if (CharacterAtIndex > 49827)
              {
                if (CharacterAtIndex == 49828)
                {
                  if (++v6 >= v5 || CFStringGetCharacterAtIndex(a1, v6) != 47932)
                  {
                    return 0;
                  }

LABEL_226:
                  v40 = v9 / 10;
                  if (v7)
                  {
                    v40 = v9;
                  }

                  if (v40 <= 1)
                  {
                    v40 = 1;
                  }

                  v26 = 20 * v40;
                  goto LABEL_202;
                }

                if (CharacterAtIndex == 49901)
                {
                  goto LABEL_196;
                }

                if (CharacterAtIndex != 50500)
                {
                  return result;
                }

                if (++v6 >= v5)
                {
                  return 0;
                }

                v27 = CFStringGetCharacterAtIndex(a1, v6);
                if (v27 == 55124)
                {
                  v22 = v9 / 10;
                  if (v7)
                  {
                    v22 = v9;
                  }

                  if (v22 <= 1)
                  {
                    v22 = 1;
                  }

                  v23 = 90;
                  goto LABEL_252;
                }

                if (v27 != 54857)
                {
                  return 0;
                }

LABEL_149:
                v9 += 9;
                goto LABEL_237;
              }

              if (CharacterAtIndex != 49464 && CharacterAtIndex != 49483)
              {
                if (CharacterAtIndex != 49776)
                {
                  return result;
                }

                v22 = v9 / 10;
                if (v7)
                {
                  v22 = v9;
                }

                if (v22 <= 1)
                {
                  v22 = 1;
                }

                v23 = 50;
LABEL_252:
                v26 = v22 * v23;
LABEL_202:
                if (v8 >= (v26 ^ 0x7FFFFFFFFFFFFFFFLL))
                {
                  return 0;
                }

                v9 = 0;
                v8 += v26;
                v47 = 1;
                v7 = 1;
                goto LABEL_237;
              }
            }

            else
            {
              if (CharacterAtIndex <= 49323)
              {
                if (CharacterAtIndex != 47564)
                {
                  if (CharacterAtIndex == 47924)
                  {
                    goto LABEL_196;
                  }

                  v19 = 48177;
                  goto LABEL_136;
                }

LABEL_166:
                v31 = v9 / 10;
                if (v7)
                {
                  v31 = v9;
                }

                if (v31 <= 1)
                {
                  v31 = 1;
                }

                v32 = 10000 * v31;
                if (v8 >= (v32 ^ 0x7FFFFFFFFFFFFFFFLL))
                {
                  return 0;
                }

                v9 = 0;
                v8 += v32;
                v7 = 1;
                v30 = 1000;
LABEL_186:
                v47 = v30;
                goto LABEL_237;
              }

              if (CharacterAtIndex == 49324)
              {
                goto LABEL_132;
              }

              if (CharacterAtIndex != 49340)
              {
                if (CharacterAtIndex != 49436)
                {
                  return result;
                }

                if (++v6 >= v5 || CFStringGetCharacterAtIndex(a1, v6) != 47480)
                {
                  return 0;
                }

                goto LABEL_126;
              }
            }

            goto LABEL_131;
          }

          if (CharacterAtIndex > 51059)
          {
            if (CharacterAtIndex <= 52831)
            {
              if (CharacterAtIndex != 51060)
              {
                if (CharacterAtIndex != 51068)
                {
                  v16 = 52380;
                  goto LABEL_156;
                }

                v18 = v6 + 1;
                if (v6 + 1 >= v5 || CFStringGetCharacterAtIndex(a1, v6 + 1) != 44273)
                {
                  goto LABEL_233;
                }

                goto LABEL_164;
              }

              v18 = v6 + 1;
              if (v6 + 1 >= v5 || CFStringGetCharacterAtIndex(a1, v6 + 1) != 47480)
              {
                goto LABEL_179;
              }

              v41 = v9 / 10;
              if (v7)
              {
                v41 = v9;
              }

              if (v41 <= 1)
              {
                v41 = 1;
              }

              v42 = 70 * v41;
              if (v8 >= (v42 ^ 0x7FFFFFFFFFFFFFFFLL))
              {
                return 0;
              }

              v9 = 0;
              v8 += v42;
              v47 = 1;
              v7 = 1;
            }

            else
            {
              if (CharacterAtIndex > 54615)
              {
                if (CharacterAtIndex != 54616)
                {
                  v20 = 54620;
                  goto LABEL_206;
                }

                if (++v6 >= v5 || CFStringGetCharacterAtIndex(a1, v6) != 45208)
                {
                  return 0;
                }

                goto LABEL_233;
              }

              if (CharacterAtIndex != 52832)
              {
                v17 = 54036;
                goto LABEL_112;
              }

LABEL_163:
              v18 = v6;
LABEL_164:
              v9 += 7;
            }

            v6 = v18;
            goto LABEL_237;
          }

          if (CharacterAtIndex > 50695)
          {
            if (CharacterAtIndex == 50696)
            {
              if (++v6 >= v5 || CFStringGetCharacterAtIndex(a1, v6) != 49692)
              {
                return 0;
              }

              v39 = v9 / 10;
              if (v7)
              {
                v39 = v9;
              }

              if (v39 <= 1)
              {
                v39 = 1;
              }

              v26 = 60 * v39;
              goto LABEL_202;
            }

            if (CharacterAtIndex == 50724)
            {
              goto LABEL_236;
            }

            v15 = 50977;
LABEL_104:
            if (CharacterAtIndex != v15)
            {
              return result;
            }

LABEL_108:
            v9 += 6;
            goto LABEL_237;
          }

          if (CharacterAtIndex == 50668)
          {
            if (++v6 >= v5)
            {
              return 0;
            }

            v38 = CFStringGetCharacterAtIndex(a1, v6);
            if ((v38 - 45918) < 2)
            {
              goto LABEL_216;
            }

            if (v38 == 46304)
            {
              v43 = v9 / 10;
              if (v7)
              {
                v43 = v9;
              }

              if (v43 <= 1)
              {
                v43 = 1;
              }

              v26 = 80 * v43;
              goto LABEL_202;
            }

            if (v38 != 49455)
            {
              return 0;
            }

            goto LABEL_108;
          }

          if (CharacterAtIndex == 50676)
          {
            goto LABEL_196;
          }

          v21 = 50689;
LABEL_69:
          if (CharacterAtIndex != v21)
          {
            return result;
          }

          goto LABEL_173;
        }

        if (CharacterAtIndex <= 33835)
        {
          if (CharacterAtIndex > 21441)
          {
            if (CharacterAtIndex > 24318)
            {
              if (CharacterAtIndex == 24319)
              {
                goto LABEL_226;
              }

              if (CharacterAtIndex != 24336)
              {
                v19 = 30334;
LABEL_136:
                if (CharacterAtIndex != v19)
                {
                  return result;
                }

LABEL_180:
                v34 = v9 / 10;
                if (v7)
                {
                  v34 = v9;
                }

                if (v34 <= 1)
                {
                  v34 = 1;
                }

                v35 = 100 * v34;
                if (v8 >= (v35 ^ 0x7FFFFFFFFFFFFFFFLL))
                {
                  return 0;
                }

                v9 = 0;
                v8 += v35;
                v7 = 1;
                v30 = 10;
                goto LABEL_186;
              }

              goto LABEL_179;
            }

            if (CharacterAtIndex != 21442)
            {
              if (CharacterAtIndex != 22235)
              {
                v20 = 22769;
                goto LABEL_206;
              }

LABEL_132:
              v9 += 4;
              goto LABEL_237;
            }

            goto LABEL_131;
          }

          if (CharacterAtIndex > 21314)
          {
            if (CharacterAtIndex != 21315)
            {
              if (CharacterAtIndex == 21317)
              {
LABEL_126:
                v25 = v9 / 10;
                if (v7)
                {
                  v25 = v9;
                }

                if (v25 <= 1)
                {
                  v25 = 1;
                }

                v26 = 30 * v25;
                goto LABEL_202;
              }

              if (CharacterAtIndex != 21324)
              {
                return result;
              }

LABEL_191:
              v36 = v9 / 10;
              if (v7)
              {
                v36 = v9;
              }

              if (v36 <= 1)
              {
                v36 = 1;
              }

              v26 = 40 * v36;
              goto LABEL_202;
            }

            goto LABEL_157;
          }

          if (CharacterAtIndex == 20843)
          {
            goto LABEL_216;
          }

          if (CharacterAtIndex != 20845)
          {
            if (CharacterAtIndex != 21313)
            {
              return result;
            }

            goto LABEL_196;
          }

          goto LABEL_108;
        }

        if (CharacterAtIndex <= 45795)
        {
          if (CharacterAtIndex > 44395)
          {
            if (CharacterAtIndex == 44396)
            {
              goto LABEL_149;
            }

            if (CharacterAtIndex != 45348 && CharacterAtIndex != 45367)
            {
              return result;
            }

            goto LABEL_132;
          }

          if (CharacterAtIndex == 33836)
          {
            goto LABEL_166;
          }

          if (CharacterAtIndex == 38646)
          {
            goto LABEL_173;
          }

          v21 = 44277;
          goto LABEL_69;
        }

        if (CharacterAtIndex <= 47160)
        {
          if (CharacterAtIndex == 45796)
          {
            if (++v6 >= v5 || CFStringGetCharacterAtIndex(a1, v6) != 49455)
            {
              return 0;
            }

LABEL_236:
            v9 += 5;
            goto LABEL_237;
          }

          if (CharacterAtIndex != 46160)
          {
            v24 = 46168;
            goto LABEL_178;
          }

          goto LABEL_179;
        }

        if (CharacterAtIndex > 47479)
        {
          if (CharacterAtIndex != 47480)
          {
            if (CharacterAtIndex != 47560)
            {
              return result;
            }

            if (++v6 >= v5 || CFStringGetCharacterAtIndex(a1, v6) != 55124)
            {
              return 0;
            }

            goto LABEL_191;
          }

LABEL_196:
          v37 = v9 / 10;
          if (v7)
          {
            v37 = v9;
          }

          if (v37 <= 1)
          {
            v37 = 1;
          }

          v33 = 5 * v37;
          goto LABEL_201;
        }

        if (CharacterAtIndex != 47161)
        {
          v15 = 47449;
          goto LABEL_104;
        }
      }

LABEL_173:
      if (v7)
      {
        v33 = 5 * v9;
LABEL_201:
        v26 = 2 * v33;
        goto LABEL_202;
      }

      v7 = 0;
LABEL_237:
      v10 |= v14;
      if (++v6 >= v5)
      {
        a2 = v46;
        v45 = v47;
        if ((v10 & 1) == 0)
        {
          v45 = 1;
        }

        v44 = v45 * v9;
        goto LABEL_262;
      }
    }
  }

  v8 = 0;
  v44 = 0;
LABEL_262:
  if (v8 >= (v44 ^ 0x7FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  *a2 = v44 + v8;
  return 1;
}

uint64_t DDDeletionFilterBlocks_block_invoke_6(int a1, const __CFString *a2, const __CFString *a3, int a4, CFStringRef theString)
{
  if (!theString)
  {
    return 1;
  }

  if (CFStringHasPrefix(theString, @"de") || CFStringHasPrefix(theString, @"nl") || CFStringHasPrefix(theString, @"is"))
  {
    if (_typesAreEqual(a3, @"Time"))
    {
      if (a2)
      {
        info = a2[2].info;
      }

      else
      {
        info = 0;
      }

      v11 = CFStringGetLength(info) & 0xFFFFFFFFFFFFFFFELL;
      if (v11 == 6)
      {
        if (CFStringHasPrefix(info, @"Alle ") || CFStringHasPrefix(info, @"alle "))
        {
          return 0;
        }
      }

      else if (v11 == 4 && CFStringHasSuffix(info, @" am"))
      {
        return 0;
      }

LABEL_23:
      if (CFStringHasPrefix(theString, @"pl") || !_typesAreEqual(a3, @"WebURL"))
      {
        return 1;
      }

      if (a2)
      {
        a2 = a2[2].info;
      }

      return CFStringHasPrefix(a2, @"www") || CFStringHasPrefix(a2, @"WWW") || CFStringHasPrefix(a2, @"Www") || !CFStringHasSuffix(a2, @".pl");
    }

    if (!_typesAreEqual(a3, @"Date"))
    {
      goto LABEL_23;
    }

    v10 = a2 ? a2[2].info : 0;
    if (CFStringGetLength(v10) != 4)
    {
      goto LABEL_23;
    }

    result = CFStringCompare(v10, @"Hier", 1uLL);
    if (result)
    {
      goto LABEL_23;
    }

    return result;
  }

  if (CFStringHasPrefix(theString, @"fr"))
  {
    if (!_typesAreEqual(a3, @"WebURL"))
    {
      goto LABEL_23;
    }

    v12 = a2 ? a2[2].info : 0;
    if (CFStringHasPrefix(v12, @"www") || CFStringHasPrefix(v12, @"WWW") || CFStringHasPrefix(v12, @"Www"))
    {
      goto LABEL_23;
    }

    if (CFStringHasSuffix(v12, @".la"))
    {
      result = CFStringHasSuffix(theString, @"LA");
      if (!result)
      {
        return result;
      }
    }

    if (CFStringHasSuffix(v12, @".il"))
    {
      result = CFStringHasSuffix(theString, @"IL");
      if (!result)
      {
        return result;
      }
    }

    if (CFStringHasSuffix(v12, @".sa"))
    {
      result = CFStringHasSuffix(theString, @"SA");
      if (!result)
      {
        return result;
      }
    }

    if (!CFStringHasSuffix(v12, @".va"))
    {
      goto LABEL_23;
    }

    v15 = @"VA";
    goto LABEL_72;
  }

  if (!CFStringHasPrefix(theString, @"en"))
  {
    if (CFStringHasPrefix(theString, @"zh") || CFStringHasPrefix(theString, @"yue"))
    {
      v14 = 0x10000;
    }

    else
    {
      if (!CFStringHasPrefix(theString, @"ja"))
      {
        goto LABEL_23;
      }

      v14 = 0x20000;
    }

    a2[3].isa = (a2[3].isa | v14);
    goto LABEL_23;
  }

  if (!_typesAreEqual(a3, @"WebURL"))
  {
    goto LABEL_23;
  }

  v13 = a2 ? a2[2].info : 0;
  if (CFStringHasPrefix(v13, @"www") || CFStringHasPrefix(v13, @"WWW") || CFStringHasPrefix(v13, @"Www"))
  {
    goto LABEL_23;
  }

  if (!CFStringHasSuffix(v13, @".in") || (result = CFStringHasSuffix(theString, @"IN"), result))
  {
    if (!CFStringHasSuffix(v13, @".be") || (result = CFStringHasSuffix(theString, @"BE"), result))
    {
      if (!CFStringHasSuffix(v13, @".it") || (result = CFStringHasSuffix(theString, @"IT"), result))
      {
        if (!CFStringHasSuffix(v13, @".to") || (result = CFStringHasSuffix(theString, @"TO"), result))
        {
          if (!CFStringHasSuffix(v13, @".my"))
          {
            goto LABEL_23;
          }

          v15 = @"MY";
LABEL_72:
          result = CFStringHasSuffix(theString, v15);
          if (result)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  return result;
}

BOOL DDDeletionFilterBlocks_block_invoke_9(int a1, uint64_t a2, CFStringRef theString)
{
  if (_typesAreEqual(theString, @"DateTime"))
  {
    SubresultWithType = DDResultGetSubresultWithType(a2, @"Time");
    if (!SubresultWithType)
    {
      return 1;
    }
  }

  else
  {
    if (!_typesAreEqual(theString, @"Time"))
    {
      return 1;
    }

    SubresultWithType = a2;
  }

  return !timeIsTimeStamp(SubresultWithType);
}

const __CFString **timeIsTimeStamp(uint64_t a1)
{
  result = DDResultGetSubresultWithType(a1, @"Seconds");
  if (result)
  {
    v2 = result;
    v3 = result[10];
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      if (!v2[9])
      {
        return 0;
      }

      v5 = 0;
      v3 = v2[9];
    }

    if (DDFastIntegerExtraction(v3, &v5))
    {
      v4 = v5 == 0;
    }

    else
    {
      v4 = 1;
    }

    return !v4;
  }

  return result;
}

uint64_t DDDeletionFilterBlocks_block_invoke_2(int a1, uint64_t a2, CFStringRef theString, uint64_t a4, uint64_t a5, int a6)
{
  if (_typesAreEqual(theString, @"DateTime"))
  {
    v9 = *(a2 + 56);
    if (CFArrayGetCount(v9) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(v9, 0)) == 0 || !_typesAreEqual(ValueAtIndex[8], @"SpecialDateTime"))
    {
      SubresultWithType = DDResultGetSubresultWithType(a2, @"Time");
      if (!SubresultWithType || !timeIsTimeStamp(SubresultWithType))
      {
        return 1;
      }
    }

LABEL_12:
    if (!a6)
    {
      return 0;
    }

    *(a2 + 96) &= ~1uLL;
    return 1;
  }

  if (_typesAreEqual(theString, @"Time"))
  {
    if (timeIsTimeStamp(a2))
    {
      goto LABEL_12;
    }

    v12 = *(a2 + 56);
LABEL_11:
    if (timeIsApprox(v12))
    {
      goto LABEL_12;
    }

    return 1;
  }

  if (_typesAreEqual(theString, @"Date"))
  {
    v14 = a2;
    while (1)
    {
      v15 = v14[7];
      if (!v15 || CFArrayGetCount(v15) != 1)
      {
        return 1;
      }

      v16 = CFArrayGetValueAtIndex(v15, 0);
      v14 = v16;
      if (v16)
      {
        if (_typesAreEqual(v16[8], @"DayOfWeek"))
        {
          goto LABEL_12;
        }

        if (_typesAreEqual(v14[8], @"RelativeDay"))
        {
          v23 = 0;
          v17 = v14[10];
          if (!v17)
          {
            v17 = v14[9];
          }

          if (!DDFastIntegerExtraction(v17, &v23))
          {
            goto LABEL_12;
          }

          v18 = v23;
          if (v23 < 0)
          {
            v18 = -v23;
          }

          if (v18 <= 1)
          {
            goto LABEL_12;
          }

          return 1;
        }
      }
    }
  }

  if (!_typesAreEqual(theString, @"TimeDuration") || CFArrayGetCount(*(a2 + 56)) != 2)
  {
    return 1;
  }

  v19 = DDResultGetSubresultWithType(a2, @"BeginTime");
  v20 = DDResultGetSubresultWithType(a2, @"EndTime");
  result = 1;
  if (v19)
  {
    if (v20)
    {
      v21 = DDResultGetSubresultWithType(v19, @"Time");
      v22 = DDResultGetSubresultWithType(v20, @"Time");
      result = 1;
      if (v21)
      {
        if (v22)
        {
          if (!timeIsApprox(v21[7]))
          {
            return 1;
          }

          v12 = v22[7];
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

CFStringRef *timeIsApprox(CFStringRef *result)
{
  if (result)
  {
    v1 = result;
    if (CFArrayGetCount(result) == 1)
    {
      result = CFArrayGetValueAtIndex(v1, 0);
      if (result)
      {
        return _typesAreEqual(result[8], @"ApproxTime");
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void removeNoResultSubResults(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    Count = CFArrayGetCount(*(a1 + 56));
    if (Count >= 1)
    {
      v4 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4 - 2);
        v6 = ValueAtIndex;
        if (ValueAtIndex && _typesAreEqual(ValueAtIndex[8], @"NoResult"))
        {
          CFArrayRemoveValueAtIndex(v1, v4 - 2);
        }

        else
        {
          removeNoResultSubResults(v6);
        }

        --v4;
      }

      while (v4 > 1);
    }

    if (!CFArrayGetCount(v1))
    {
      v7 = *(a1 + 56);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 56) = 0;
      }
    }
  }
}

void DDGlobalFilterBlocks_block_invoke_12(int a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 2)
  {
    v4 = Count;
    for (i = 1; i < v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (i >= 1)
      {
        v7 = ValueAtIndex;
        for (j = i + 1; j > 1; --j)
        {
          v9 = CFArrayGetValueAtIndex(theArray, j - 2);
          v10.i64[0] = 0xFFFFLL;
          v10.i64[1] = 0xFFFFLL;
          v11 = vmovn_s64(vcgtq_u64(veorq_s8(v7[1], v9[1]), v10));
          if ((v11.i32[0] | v11.i32[1]))
          {
            break;
          }

          v12 = v9;
          v13 = v7[4].i64[0];
          v14 = v9[4].i64[0];
          if (_typesAreEqual(v13, v14) && !_typesAreEqual(v13, @"DateTime") || !assistantAcceptTypeWithTypeOrdered(v13, v14, v7, v12) && !assistantAcceptTypeWithTypeOrdered(v14, v13, v12, v7))
          {
            if (v7[3].i64[0] >= *(v12 + 48))
            {
              v15 = j - 2;
            }

            else
            {
              v15 = i;
            }

            CFArrayRemoveValueAtIndex(theArray, v15);
            --v4;
            --i;
            break;
          }
        }
      }
    }
  }
}

uint64_t assistantAcceptTypeWithTypeOrdered(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (_typesAreEqual(a1, @"Time"))
  {
    if (_typesAreEqual(a2, @"DateSpan") && DDResultGetSubresultWithType(a4, @"YearNumber") || _typesAreEqual(a2, @"TimeSpan"))
    {
      goto LABEL_37;
    }

    if (_typesAreEqual(a2, @"TimeDuration"))
    {
      if (DDResultGetSubresultWithType(a3, @"MinutesBefore"))
      {
        SubresultWithTypePath = DDResultGetSubresultWithTypePath(a4, @"BeginTime.Time");
        v9 = DDResultGetSubresultWithTypePath(a4, @"EndTime.Time");
        if (SubresultWithTypePath)
        {
          v10 = v9;
          if (v9)
          {
            if (CFArrayGetCount(*(SubresultWithTypePath + 7)) == 1 && CFArrayGetCount(*(v10 + 56)) <= 2 && DDResultGetSubresultWithType(SubresultWithTypePath, @"Hours") && DDResultGetSubresultWithType(v10, @"Hours") && !DDResultGetSubresultWithType(v10, @"Minutes") && !DDResultGetSubresultWithType(v10, @"MinutesBefore"))
            {
              goto LABEL_37;
            }
          }
        }
      }

      goto LABEL_33;
    }

    v14 = @"TimeSpanWithReference";
LABEL_32:
    if (!_typesAreEqual(a2, v14))
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (_typesAreEqual(a1, @"TimeDuration"))
  {
    if (!_typesAreEqual(a2, @"TimeSpanWithReference"))
    {
      if (!_typesAreEqual(a2, @"DateDuration"))
      {
LABEL_33:
        result = 0;
        goto LABEL_38;
      }

      v11 = *(a4 + 56);
      if (CFArrayGetCount(v11) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
        v13 = @"DateSpan.YearNumber";
      }

      else
      {
        if (!DDResultGetSubresultWithTypePath(a4, @"BeginDate.DateSpan.YearNumber"))
        {
          goto LABEL_33;
        }

        v13 = @"EndDate.DateSpan.YearNumber";
        ValueAtIndex = a4;
      }

      if (!DDResultGetSubresultWithTypePath(ValueAtIndex, v13))
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    result = 1;
    goto LABEL_38;
  }

  if (_typesAreEqual(a1, @"DateDuration"))
  {
    v14 = @"DateSpanWithReference";
    goto LABEL_32;
  }

  if (!_typesAreEqual(a1, @"DateTime") || !_typesAreEqual(a2, @"DateTime"))
  {
    goto LABEL_33;
  }

  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  getDateFromDateTime(a3, &v29, &v31);
  getDateFromDateTime(a4, &v28, &v30);
  v16 = v30;
  v15 = v31;
  v18 = v28;
  v17 = v29;
  if (v31 && v30 && v29 && v28)
  {
    v19 = v28[8];
    if (v19)
    {
      v20 = _typesAreEqual(v29[8], v19);
    }

    else
    {
      v20 = 0;
    }

    v24 = v16[8];
    if (v24)
    {
      v25 = _typesAreEqual(v15[8], v24);
    }

    else
    {
      v25 = 0;
    }

    v26 = v20 || assistantAcceptTypeWithTypeOrdered(v17[8], v18[8], v17, v18) != 0;
    v27 = v25 || assistantAcceptTypeWithTypeOrdered(v15[8], v16[8], v15, v16) != 0;
    result = v26 && v27 && (!v20 || !v25);
  }

  else
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v23 = DDLogHandle_error_log_handle;
    result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 67109888;
      v33 = v17 == 0;
      v34 = 1024;
      v35 = v18 == 0;
      v36 = 1024;
      v37 = v15 == 0;
      v38 = 1024;
      v39 = v16 == 0;
      _os_log_error_impl(&dword_1BCFDD000, v23, OS_LOG_TYPE_ERROR, "One required component of a DateTime was NULL (dates %d-%d and times %d-%d)", buf, 0x1Au);
      goto LABEL_33;
    }
  }

LABEL_38:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFString **getDateFromDateTime(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  SubresultWithType = DDResultGetSubresultWithType(a1, @"Time");
  if (!SubresultWithType)
  {
    SubresultWithType = DDResultGetSubresultWithType(a1, @"TimeSpan");
    if (!SubresultWithType)
    {
      SubresultWithType = DDResultGetSubresultWithType(a1, @"TimeDuration");
    }
  }

  *a3 = SubresultWithType;
  result = DDResultGetSubresultWithType(a1, @"Date");
  if (!result)
  {
    result = DDResultGetSubresultWithType(a1, @"DateSpan");
  }

  *a2 = result;
  return result;
}

CFIndex DDGlobalFilterBlocks_block_invoke_15(int a1, CFArrayRef theArray)
{
  v12.length = CFArrayGetCount(theArray);
  v12.location = 0;
  CFArraySortValues(theArray, v12, DDResultRangeCompare, 0);
  v3 = 0;
  while (1)
  {
    result = CFArrayGetCount(theArray);
    if (v3 >= result - 1)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
    v6 = ValueAtIndex[4];
    v7 = ValueAtIndex[5];
    v8 = CFArrayGetValueAtIndex(theArray, v3 + 1);
    v9 = v8[4];
    if (v9 >= v6 + v7)
    {
      ++v3;
    }

    else
    {
      if (v8[5] >= v7 && v6 == v9)
      {
        v11 = v3;
      }

      else
      {
        v11 = v3 + 1;
      }

      CFArrayRemoveValueAtIndex(theArray, v11);
    }
  }

  return result;
}

void DDGlobalFilterBlocks_block_invoke_14(int a1, CFArrayRef theArray, uint64_t a3, int a4)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i < v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (_typesAreEqual(*(ValueAtIndex + 8), @"FullAddress") && !DDResultGetSubresultWithType(ValueAtIndex, @"Street"))
      {
        if (i < 1 || (v10 = CFArrayGetValueAtIndex(theArray, i - 1), !DDAddressResultCanBeMergedWith(ValueAtIndex, v10)))
        {
          if (i >= v7 - 1 || (v11 = CFArrayGetValueAtIndex(theArray, i + 1), !DDAddressResultCanBeMergedWith(ValueAtIndex, v11)))
          {
            if (a4)
            {
              *(ValueAtIndex + 12) &= ~1uLL;
            }

            else
            {
              CFArrayRemoveValueAtIndex(theArray, i--);
              --v7;
            }
          }
        }
      }
    }
  }
}

BOOL DDAddressResultCanBeMergedWith(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  result = _typesAreEqual(*(a2 + 64), @"FullAddress");
  if (result)
  {
    v5 = 0;
    v8[0] = @"Street";
    v8[1] = @"StreetNumber";
    v8[2] = @"StreetName";
    v8[3] = @"POBox";
    v8[4] = @"ZipCode";
    v8[5] = @"City";
    v8[6] = @"State";
    v8[7] = @"Country";
    while (1)
    {
      v6 = v8[v5];
      if (DDResultGetSubresultWithType(a1, v6))
      {
        if (DDResultGetSubresultWithType(a2, v6))
        {
          goto LABEL_8;
        }
      }

      if (++v5 == 8)
      {
        result = 1;
        break;
      }
    }
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CFIndex DDGlobalFilterBlocks_block_invoke_11(int a1, CFArrayRef theArray, uint64_t a3)
{
  v3 = theArray;
  result = CFArrayGetCount(theArray);
  if (result >= 2)
  {
    v5 = 0;
    for (i = v3; ; v3 = i)
    {
LABEL_3:
      result = CFArrayGetCount(v3);
      if (v5 >= result - 1)
      {
        return result;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
      v7 = v5 + 1;
      v8 = CFArrayGetValueAtIndex(v3, v5 + 1);
      Count = CFArrayGetCount(v3);
      v74 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v71 = 0;
      v15 = 0;
      v16 = 0;
      v67 = v5 + 1;
      idx = v5 + 2;
      v66 = v5;
      if (Count > v5 + 2)
      {
LABEL_5:
        v16 = CFArrayGetValueAtIndex(v3, idx);
        v13 = v74;
        v14 = v10;
        v71 = v11;
        v15 = v12;
      }

      v74 = v13;
      v12 = v15;
      v17 = ValueAtIndex;
      while (1)
      {
        v70 = v14;
        v18 = *(a3 + 56);
        v19 = v17[8];
        v20 = *(v8 + 8);
        v76 = v17;
        if (v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = !_typesAreEqual(@"Contact", v19) || !_typesAreEqual(@"FullAddress", v20);
          v17 = v76;
        }

        if (!resultsAreCloseEnoughToCoalesce(v18, v17, v8, v21) || !resultTypeIsCoalescibleInSignatures(v19) || !resultTypeIsCoalescibleInSignatures(v20))
        {
          goto LABEL_131;
        }

        v22 = _typesAreEqual(@"Contact", v20);
        value = v8;
        v78 = v19;
        if (!v12)
        {
          break;
        }

        if (v22)
        {
          v24 = v74;
          v62 = v70;
          goto LABEL_134;
        }

        v23 = CFArrayGetCount(v12[7]);
        if (v23 < 1)
        {
          v24 = v74;
          ValueAtIndex = value;
          goto LABEL_115;
        }

LABEL_80:
        v73 = v20;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v75 = 0;
        v53 = 0;
        do
        {
          if (v12)
          {
            v54 = CFArrayGetValueAtIndex(v12[7], v48);
            v55 = *(v54 + 8);
          }

          else
          {
            v54 = 0;
            v55 = v78;
          }

          if (_typesAreEqual(@"PhoneNumber", v55))
          {
            if (v12 && !v54)
            {
              v54 = CFArrayGetValueAtIndex(v12[7], v48);
            }

            ++v51;
            if (v54 && DDResultGetSubresultWithType(v54, @"Label"))
            {
              ++v52;
            }
          }

          else if (_typesAreEqual(@"FullAddress", v55))
          {
            ++v50;
          }

          else if (_typesAreEqual(@"Email", v55))
          {
            ++v53;
          }

          else if (_typesAreEqual(@"Contact", v55))
          {
            ++v49;
          }

          else if (_typesAreEqual(@"HttpURL", v55) || _typesAreEqual(@"WebURL", v55))
          {
            ++v75;
          }

          ++v48;
        }

        while (v23 != v48);
        v56 = 2;
        if (!((v49 + v52 < 0) ^ __OFADD__(v49, v52) | (v49 + v52 == 0)))
        {
          v56 = 4;
        }

        if (v51 >= v56 && _typesAreEqual(@"PhoneNumber", v73))
        {
          v3 = i;
          v7 = v67;
LABEL_131:
          v24 = v74;
LABEL_132:
          v62 = v70;
LABEL_133:
          v5 = v7;
          if (!v12)
          {
            goto LABEL_3;
          }

LABEL_134:
          v12[2] = v71;
          v12[3] = v62;
          v63 = v62;
          v12[9] = DDScanQueryCopyRange(*(a3 + 56), v71, v62);
          v12[4] = DDScanQueryComputeCFRangeForQueryRange(*(a3 + 56), v71, v63);
          v12[5] = v64;
          v12[6] = v24;
LABEL_135:
          v5 = v7;
          goto LABEL_3;
        }

        v57 = v50 < 1;
        v3 = i;
        v7 = v67;
        v24 = v74;
        if (!v57 && _typesAreEqual(@"FullAddress", v73))
        {
          goto LABEL_132;
        }

        if (v53 >= 1 && _typesAreEqual(@"Email", v73))
        {
          goto LABEL_132;
        }

        v5 = v66;
        ValueAtIndex = value;
        if (v75 >= 1 && (_typesAreEqual(@"HttpURL", v73) || _typesAreEqual(@"WebURL", v73)))
        {
          goto LABEL_132;
        }

        if (!v12)
        {
          v12 = DDRootResultCreate(@"SignatureBlock", v76[2], v76[3]);
          DDResultAddSubresult(v12, v76);
          CFArraySetValueAtIndex(i, v66, v12);
          CFRelease(v12);
          v70 = v76[3];
          v71 = v76[2];
          v24 = v76[6];
          v76[6] = 0;
        }

LABEL_115:
        DDResultAddSubresult(v12, ValueAtIndex);
        v11 = ValueAtIndex[2];
        v10 = ValueAtIndex[3];
        v58 = v71 >> 16;
        if (v58 >= v11 >> 16)
        {
          v59 = v70;
          if (v58 <= v11 >> 16 && SHIDWORD(v71) < SHIDWORD(v11))
          {
            v11 = v71;
          }
        }

        else
        {
          v11 = v71;
          v59 = v70;
        }

        v60 = v59 >> 16;
        if (v60 >= v10 >> 16)
        {
          if (v60 <= v10 >> 16)
          {
            if (SHIDWORD(v59) >= SHIDWORD(v10))
            {
              v10 = v59;
            }
          }

          else
          {
            v10 = v59;
          }
        }

        v24 += ValueAtIndex[6];
        ValueAtIndex[6] = 0;
        CFArrayRemoveValueAtIndex(v3, v7);
        if (v5 >= CFArrayGetCount(v3) - 1)
        {
          v62 = v10;
          v71 = v11;
          goto LABEL_133;
        }

        v74 = v24;
        v8 = CFArrayGetValueAtIndex(v3, v7);
        v61 = CFArrayGetCount(v3);
        v16 = 0;
        v14 = v10;
        v71 = v11;
        v17 = ValueAtIndex;
        if (v61 > idx)
        {
          goto LABEL_5;
        }
      }

      if (!v22)
      {
        goto LABEL_43;
      }

      v25 = v76[7];
      v72 = v20;
      if (v25 && (v26 = CFArrayGetCount(v25), v26 >= 1))
      {
        v27 = v26;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = v76;
        do
        {
          v32 = *(CFArrayGetValueAtIndex(v31[7], v29) + 8);
          if (_typesAreEqual(@"ContactName", v32))
          {
            v28 = 1;
          }

          else if (_typesAreEqual(@"CompanyName", v32))
          {
            v30 = 1;
          }

          ++v29;
          v31 = v76;
        }

        while (v27 != v29);
      }

      else
      {
        v30 = 0;
        v28 = 0;
      }

      v33 = value[7];
      if (!v33)
      {
        goto LABEL_135;
      }

      v34 = CFArrayGetCount(v33);
      if (v34 < 1)
      {
        goto LABEL_135;
      }

      v35 = v34;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = *(CFArrayGetValueAtIndex(value[7], v36) + 8);
        if (_typesAreEqual(@"ContactName", v39))
        {
          v37 = 1;
        }

        else if (_typesAreEqual(@"CompanyName", v39))
        {
          v38 = 1;
        }

        ++v36;
      }

      while (v35 != v36);
      if (v28 != v30 && v37 != v38)
      {
        break;
      }

      v5 = v67;
    }

    v40 = v28 == v37;
    v3 = i;
    v7 = v67;
    if (v40)
    {
      goto LABEL_135;
    }

    v20 = v72;
    v19 = v78;
    if (!resultsAreCloseEnoughToCoalesce(v18, v76, value, 0))
    {
      goto LABEL_135;
    }

LABEL_43:
    v41 = _typesAreEqual(@"Contact", v19);
    if (v16)
    {
      v42 = *(v16 + 8);
      if (v42)
      {
        v43 = _typesAreEqual(@"Contact", *(v16 + 8));
        if (resultsAreCloseEnoughToCoalesce(v18, value, v16, 0) && resultTypeIsCoalescibleInSignatures(v42))
        {
          v44 = _typesAreEqual(@"Contact", v42);
          v45 = v44;
          if (v43 && !v44)
          {
            goto LABEL_135;
          }

LABEL_53:
          if ((v41 & v45) == 1 && _typesAreEqual(v78, v20))
          {
            goto LABEL_135;
          }

          if (v41)
          {
            goto LABEL_65;
          }

          if (v45)
          {
            if (_typesAreEqual(v78, v20) || _typesAreEqual(@"PhoneNumber", v78) && _typesAreEqual(v20, @"Email"))
            {
              goto LABEL_135;
            }

            if (!_typesAreEqual(@"PhoneNumber", v20))
            {
              goto LABEL_65;
            }

            v46 = v78;
            v47 = @"Email";
          }

          else
          {
            if (!_typesAreEqual(v42, v20))
            {
LABEL_65:
              if (_typesAreEqual(v20, @"Email") && ((v41 & v45 & 1) != 0 || (v45 & 1) == 0 && (v43 || _typesAreEqual(v42, @"Email"))) || _typesAreEqual(@"HttpURL", v78) || _typesAreEqual(@"WebURL", v78))
              {
                goto LABEL_135;
              }

              if (_typesAreEqual(@"HttpURL", v20) || _typesAreEqual(@"WebURL", v20))
              {
                if (v45)
                {
                  goto LABEL_135;
                }

                if (_typesAreEqual(@"HttpURL", v42))
                {
                  goto LABEL_135;
                }

                if (_typesAreEqual(@"WebURL", v42))
                {
                  goto LABEL_135;
                }

                v23 = 1;
                if (_typesAreEqual(v78, @"Email"))
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v23 = 1;
              }

              goto LABEL_80;
            }

            v46 = v78;
            v47 = v20;
          }

          if (_typesAreEqual(v46, v47))
          {
            goto LABEL_135;
          }

          goto LABEL_65;
        }
      }

      else
      {
        LOBYTE(v43) = 0;
      }
    }

    else
    {
      LOBYTE(v43) = 0;
      v42 = 0;
    }

    v45 = 1;
    goto LABEL_53;
  }

  return result;
}

BOOL resultsAreCloseEnoughToCoalesce(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = a2[3];
    v8 = *(a3 + 16);
    v9 = v7 >> 16;
    v10 = v8 >> 16;
    if (v9 < v10 || v9 <= v10 && SHIDWORD(v7) < SHIDWORD(v8))
    {
      v11 = -1;
      if ((v9 & 0x8000000000000000) == 0 && v10 < v5)
      {
        v22 = *(a3 + 16);
        v23 = a3;
        v24 = a4;
        v12 = 0;
        v13 = 0;
        v14 = v7 >> 32;
        v15 = 48 * v9;
        while (1)
        {
          v16 = *(a1 + 16) + v15;
          if (v9 + v12 >= v10)
          {
            break;
          }

          if (v12)
          {
            v17 = *(v16 + 16);
          }

          else
          {
            v17 = v14;
          }

          v13 += _DDScanQueryCountNewlinesInFragment(*(a1 + 16) + v15, v17, *(v16 + 16) - v17 + *(v16 + 24), 3 - v13);
          v18 = *(v16 + 40);
          if ((v18 & 0x80000000) != 0)
          {
            v19 = (v18 >> 26) & 7;
            if (v19 == 3)
            {
              ++v13;
            }

            else if (v19 == 4)
            {
              goto LABEL_16;
            }
          }

          ++v12;
          v15 += 48;
          if (v13 >= 3)
          {
LABEL_16:
            v11 = -1;
            goto LABEL_25;
          }
        }

        if (v10 != v9)
        {
          v14 = *(v16 + 16);
        }

        v11 = _DDScanQueryCountNewlinesInFragment(*(a1 + 16) + v15, v14, (v22 >> 32) - v14, 3 - v13) + v13;
        if (v11 > 2)
        {
          v11 = -1;
        }

LABEL_25:
        a4 = v24;
        a3 = v23;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = -1;
  }

  return v11 >= a4 && *(a3 + 32) - (a2[4] + a2[5]) < 0x20uLL;
}

const __CFString *resultTypeIsCoalescibleInSignatures(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (_typesAreEqual(result, @"FullAddress") || _typesAreEqual(v1, @"PhoneNumber") || _typesAreEqual(v1, @"Email") || _typesAreEqual(v1, @"Contact") || _typesAreEqual(v1, @"IMScreenName") || _typesAreEqual(v1, @"HttpURL"))
    {
      return 1;
    }

    else
    {
      return _typesAreEqual(v1, @"WebURL");
    }
  }

  return result;
}

void DDUpdateDataWithMatchedTag(__CFArray *a1, CFIndex a2, const void *a3, uint64_t a4, CFTypeRef cf)
{
  if (a3 && a4 && cf)
  {
    DDResultSetValue(a4, cf);

    CFArraySetValueAtIndex(a1, a2, a3);
  }
}

__CFArray *DDCreateRelatedResultsArray(const __CFArray *a1, CFIndex a2, CFIndex a3)
{
  Count = CFArrayGetCount(a1);
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, 0);
  CFArrayAppendValue(theArray, ValueAtIndex);
  v8 = ValueAtIndex[8];
  if (_typesAreEqual(v8, @"FullAddress") || _typesAreEqual(v8, @"Date") || _typesAreEqual(v8, @"Time") || _typesAreEqual(v8, @"TimeDuration") || _typesAreEqual(v8, @"DateTime"))
  {
    v9 = a2 + 1;
    v10 = a2;
    do
    {
      v11 = a2 - (v10 - 1);
      v12 = v10-- < 1;
      v12 = !v12 && v11 <= a3 + 1;
      v13 = !v12;
      do
      {
        if (v13)
        {
          if (v9 >= Count)
          {
            return theArray;
          }

          v14 = v9 - a2;
          if (v9 - a2 > a3)
          {
            return theArray;
          }
        }

        else
        {
          v14 = v9 - a2;
        }

        if (v9 < Count && v14 <= a3)
        {
          v15 = CFArrayGetValueAtIndex(a1, v9);
          if (areResultRelatedRec(ValueAtIndex, v15))
          {
            goto LABEL_24;
          }

          ++v9;
        }
      }

      while ((v13 & 1) != 0);
      v15 = CFArrayGetValueAtIndex(a1, v10);
    }

    while (!areResultRelatedRec(ValueAtIndex, v15));
LABEL_24:
    CFArrayAppendValue(theArray, v15);
  }

  return theArray;
}

BOOL areResultRelatedRec(uint64_t a1, uint64_t a2)
{
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = a1;
    v7 = *(a1 + 64);
    v8 = *(a2 + 64);
    if (_typesAreEqual(v7, @"FullAddress"))
    {
      break;
    }

    if (_typesAreEqual(v7, @"Date"))
    {
      goto LABEL_6;
    }

    result = _typesAreEqual(v7, @"DateTime");
    if (result)
    {
      if (_typesAreEqual(v8, @"Date"))
      {
        return 1;
      }

LABEL_6:
      if (_typesAreEqual(v8, @"Time"))
      {
        return 1;
      }

      result = _typesAreEqual(v8, @"TimeDuration");
      if (result)
      {
        return result;
      }

      v4 = 0;
      a1 = a2;
      a2 = v6;
      if ((v5 ^ 1))
      {
        return result;
      }
    }

    else
    {
      v4 = 0;
      a1 = a2;
      a2 = v6;
      if ((v5 & 1) == 0)
      {
        return result;
      }
    }
  }

  return DDAddressResultCanBeMergedWith(v6, a2);
}

void *DDResultCreateFromDateTimeResults(const __CFArray *a1)
{
  if (CFArrayGetCount(a1) < 1)
  {
    if (CFArrayGetCount(a1) > 1)
    {
      CFArrayGetValueAtIndex(a1, 1);
    }

    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  if (CFArrayGetCount(a1) <= 1)
  {
    if (ValueAtIndex)
    {
      return CFRetain(ValueAtIndex);
    }

    return 0;
  }

  v3 = CFArrayGetValueAtIndex(a1, 1);
  if (!ValueAtIndex)
  {
    return 0;
  }

  v4 = v3;
  if (!v3)
  {
    return CFRetain(ValueAtIndex);
  }

  v49 = 0;
  v50 = 0;
  v48 = 0;
  v47 = 0;
  if ((extractDateAndTime(ValueAtIndex, &v50, &v49, &v47 + 1, &v47, &v48) & 1) == 0)
  {
    return CFRetain(ValueAtIndex);
  }

  cf = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  extractDateAndTime(v4, &v46, &cf, &v43 + 1, &v43, &v44);
  v5 = v50;
  if (v50)
  {
    v6 = HIBYTE(v47);
    if (v48)
    {
      v7 = v48;
    }

    else
    {
      v7 = v44;
    }

    v8 = v50;
  }

  else
  {
    v8 = v46;
    v6 = HIBYTE(v43);
    if (v46)
    {
      v11 = v44;
      v12 = v48;
    }

    else
    {
      v11 = v48;
      v12 = v44;
    }

    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v7 = v12;
    }
  }

  v13 = cf;
  if (v49)
  {
    if (cf)
    {
      if (v50)
      {
        v14 = v46;
        if (v46)
        {
          SubresultWithType = DDResultGetSubresultWithType(v50, @"Hours");
          if (SubresultWithType)
          {
            v16 = SubresultWithType;
            v17 = DDResultGetSubresultWithType(v14, @"Hours");
            if (v17)
            {
              v18 = v17;
              v51 = 0;
              v19 = v16[10];
              if (!v19)
              {
                v19 = v16[9];
              }

              if (DDFastIntegerExtraction(v19, &v51 + 1))
              {
                v20 = v18[10];
                if (!v20)
                {
                  v20 = v18[9];
                }

                if (DDFastIntegerExtraction(v20, &v51) && HIDWORD(v51) != v51)
                {
                  return CFRetain(ValueAtIndex);
                }
              }
            }
          }
        }
      }

      v21 = _DDResultCreateFromDatesResults(*(v49 + 7), cf);
      if (v21 || (v21 = _DDResultCreateFromDatesResults(*(cf + 7), v49)) != 0)
      {
        v13 = v21;
LABEL_44:
        v22 = &v47;
        goto LABEL_45;
      }

      v5 = v50;
    }

    if (v5)
    {
      return CFRetain(ValueAtIndex);
    }

    v13 = v49;
    CFRetain(v49);
    goto LABEL_44;
  }

  if (!cf)
  {
    return CFRetain(ValueAtIndex);
  }

  CFRetain(cf);
  v22 = &v43;
LABEL_45:
  if (!(v8 | v7) || !v13)
  {
    if (v13)
    {
LABEL_71:
      CFRelease(v13);
    }

    return CFRetain(ValueAtIndex);
  }

  if (*v22 && v6)
  {
    goto LABEL_71;
  }

  if (v6)
  {
    v23 = @"DateDuration";
  }

  else
  {
    v23 = @"DateTime";
  }

  v24 = ValueAtIndex[2];
  v25 = ValueAtIndex[3];
  v26 = v4[2];
  v27 = v4[3];
  v28 = v24 >> 16;
  v29 = v26 << 32;
  if (SHIDWORD(v24) >= SHIDWORD(v26))
  {
    v30 = v4[2];
  }

  else
  {
    v30 = ValueAtIndex[2];
  }

  if (v28 <= v26 >> 16)
  {
    v26 = v30;
  }

  if (v28 >= v29 >> 48)
  {
    v31 = v26;
  }

  else
  {
    v31 = ValueAtIndex[2];
  }

  v32 = v25 >> 16;
  if (SHIDWORD(v25) >= SHIDWORD(v27))
  {
    v33 = ValueAtIndex[3];
  }

  else
  {
    v33 = v4[3];
  }

  if (v32 <= v27 >> 16)
  {
    v25 = v33;
  }

  if (v32 >= v27 >> 16)
  {
    v34 = v25;
  }

  else
  {
    v34 = v4[3];
  }

  v9 = DDResultCreate(v23, v31, v34);
  v35 = ValueAtIndex[9];
  v36 = CFStringCreateWithFormat(0, 0, @"%@ --- %@", v35, v4[9]);
  if (v36)
  {
    v37 = v36;
    DDResultSetMatchedString(v9, v36);
    CFRelease(v37);
  }

  else
  {
    DDResultSetMatchedString(v9, @"Merged");
  }

  DDResultAddSubresult(v9, v13);
  if (v8)
  {
    DDResultAddSubresultSorted(v9, v8);
    if (v7)
    {
      DDResultAddSubresultSorted(v9, v7);
    }
  }

  else if (v7)
  {
    Copy = DDResultCreateCopy(v7);
    if (Copy)
    {
      v39 = Copy;
      v40 = *(Copy + 64);
      if (v40)
      {
        CFRelease(v40);
      }

      v39[8] = CFRetain(@"Time");
      v41 = v39[7];
      if (v41)
      {
        CFRelease(v41);
      }

      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, v7);
      v39[7] = Mutable;
      DDResultAddSubresultSorted(v9, v39);
      CFRelease(v39);
    }
  }

  CFRelease(v13);
  return v9;
}

uint64_t extractDateAndTime(uint64_t a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5, void *a6)
{
  v12 = *(a1 + 64);
  if (!_typesAreEqual(v12, @"DateTime"))
  {
    if (_typesAreEqual(v12, @"Date"))
    {
      if (a3)
      {
        *a3 = a1;
      }

      if (a5)
      {
        *a5 = 0;
      }
    }

    else
    {
      if (_typesAreEqual(v12, @"SpecialDateTime"))
      {
        if (a3)
        {
          *a3 = a1;
        }

        result = 1;
        if (a5)
        {
          *a5 = 1;
        }

        return result;
      }

      if (_typesAreEqual(v12, @"Time"))
      {
        v24 = 0;
        v19 = *(a1 + 56);
        if (v19 && CFArrayGetCount(*(a1 + 56)) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v19, 0), extractDateAndTime(ValueAtIndex, 0, 0, 0, 0, &v24), v24))
        {
          *a6 = v24;
        }

        else if (a2)
        {
          *a2 = a1;
        }

        if (a4)
        {
          *a4 = 0;
        }
      }

      else
      {
        if (_typesAreEqual(v12, @"TimeDuration"))
        {
          if (a2)
          {
            *a2 = a1;
          }

          result = 1;
          if (a4)
          {
            *a4 = 1;
          }

          return result;
        }

        result = _typesAreEqual(v12, @"ApproxTime");
        if (!result)
        {
          return result;
        }

        if (a6)
        {
          *a6 = a1;
        }
      }
    }

    return 1;
  }

  v13 = *(a1 + 56);
  Count = CFArrayGetCount(v13);
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  if (Count < 1)
  {
LABEL_6:
    if (a3)
    {
      *a3 = v23;
    }

    if (a2)
    {
      *a2 = v24;
    }

    if (a4)
    {
      *a4 = HIBYTE(v21);
    }

    if (a5)
    {
      *a5 = v21;
    }

    if (a6)
    {
      *a6 = v22;
    }

    return 1;
  }

  v15 = Count;
  v16 = 0;
  while (1)
  {
    v17 = CFArrayGetValueAtIndex(v13, v16);
    result = extractDateAndTime(v17, &v24, &v23, &v21 + 1, &v21, &v22);
    if (!result)
    {
      return result;
    }

    if (v15 == ++v16)
    {
      goto LABEL_6;
    }
  }
}

uint64_t _DDResultCreateFromDatesResults(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (CFArrayGetCount(a1) != 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  if (!ValueAtIndex)
  {
    return 0;
  }

  v5 = ValueAtIndex;
  if (!_typesAreEqual(ValueAtIndex[8], @"RelativeDayOfWeek"))
  {
    return 0;
  }

  v6 = *(a2 + 56);
  if (!v6)
  {
    return 0;
  }

  if (CFArrayGetCount(*(a2 + 56)) != 1)
  {
    return 0;
  }

  v7 = CFArrayGetValueAtIndex(v6, 0);
  if (!v7 || !_typesAreEqual(v7[8], @"AbsoluteDate"))
  {
    return 0;
  }

  Copy = DDResultCreateCopy(a2);
  v9 = CFArrayGetValueAtIndex(*(Copy + 56), 0);
  CFArrayAppendValue(v9[7], v5);
  return Copy;
}

void *createContactNameComponentInText(void *a1, void *a2, const void *a3, NSRange *a4)
{
  v7 = a1;
  v8 = a2;
  if (v8 && (v9 = [v7 rangeOfString:v8], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    location = v9;
    length = v10;
    v11 = DDResultCreate(a3, (v9 << 32) | 0x10000, ((v9 + v10) << 32) | 0x10000);
    DDResultSetMatchedString(v11, v8);
    v11[4] = location;
    v11[5] = length;
    if (a4->location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16.location = location;
      v16.length = length;
      v14 = NSUnionRange(*a4, v16);
      location = v14.location;
      length = v14.length;
    }

    a4->location = location;
    a4->length = length;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t _DDResultIsURL(uint64_t a1)
{
  if (!_DDResultIsURL__sURLTypes)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"HttpURL", @"WebURL", @"MailURL", @"MapsURL", @"GenericURL", @"Email", 0}];
    v5 = _DDResultIsURL__sURLTypes;
    _DDResultIsURL__sURLTypes = v4;

    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  v2 = _DDResultIsURL__sURLTypes;

  return [v2 containsObject:a1];
}

void sub_1BD014A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DataDetectorsProximitySort(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v5 cfRange];
  v10 = v9;
  v11 = [v7 cfRange];
  v13 = v8 + v10;
  v14 = v11 + v12;
  if (v8 + v10 >= v11 + v12)
  {
    v15 = v11 + v12;
  }

  else
  {
    v15 = v8 + v10;
  }

  if (v11 > v8 || v8 >= v14)
  {
    if (v8 > v11 || v11 >= v13)
    {
      goto LABEL_11;
    }

    v16 = v11;
  }

  else
  {
    v16 = v8;
  }

  if (v15 == v16)
  {
LABEL_11:
    v17 = v11 - v13;
    v18 = v8 - v14;
    if (v8 > v11)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = [v5 cfRange];
  v22 = v21;
  v23 = [v6 cfRange];
  v25 = v20 + v22;
  v26 = v23 + v24;
  if (v20 + v22 >= v23 + v24)
  {
    v27 = v23 + v24;
  }

  else
  {
    v27 = v20 + v22;
  }

  if (v23 > v20 || v20 >= v26)
  {
    if (v20 > v23 || v23 >= v25)
    {
      goto LABEL_25;
    }

    v28 = v23;
  }

  else
  {
    v28 = v20;
  }

  if (v27 != v28)
  {
    v29 = 0;
    goto LABEL_29;
  }

LABEL_25:
  v29 = v23 - v25;
  v30 = v20 - v26;
  if (v20 > v23)
  {
    v29 = v30;
  }

LABEL_29:
  v31 = v19 <= v29;
  v32 = v19 < v29 || v7 == v5;
  v33 = !v31 || v6 == v5;
  v34 = v32 << 63 >> 63;
  if (v33)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  return v35;
}

uint64_t DDURLSchemeIsKnown(uint64_t a1)
{
  if (_schemeCheckingDisabled)
  {
    return 1;
  }

  v2 = DDURLWithPotentiallyInvalidURLString(a1);
  v1 = v2;
  if (v2)
  {
    v3 = [v2 scheme];
    if ([v3 length])
    {
      if (DDURLSchemeIsKnown_sSchemeOnce != -1)
      {
        dispatch_once(&DDURLSchemeIsKnown_sSchemeOnce, &__block_literal_global_2659);
      }

      v6 = 0;
      v7 = &v6;
      v8 = 0x2020000000;
      v9 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __DDURLSchemeIsKnown_block_invoke_3;
      block[3] = &unk_1E8002BF0;
      block[5] = v1;
      block[6] = &v6;
      block[4] = v3;
      dispatch_sync(qword_1EBD2C9C8, block);
      v1 = *(v7 + 24) != 0;
      _Block_object_dispose(&v6, 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t __DDURLSchemeIsKnown_block_invoke_3(void *a1)
{
  v2 = DDURLSchemeIsKnown_sPublicSchemes;
  result = [DDURLSchemeIsKnown_sPublicSchemes containsObject:a1[4]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    v4 = qword_1EBD2C9C0;
    result = [qword_1EBD2C9C0 containsObject:a1[4]];
    if (result)
    {
      *(*(a1[6] + 8) + 24) = 0;
    }

    else
    {
      *(*(a1[6] + 8) + 24) = [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
      if (*(*(a1[6] + 8) + 24))
      {
        if (!v2)
        {
          v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          DDURLSchemeIsKnown_sPublicSchemes = v2;
        }

        v5 = a1[4];
        v6 = v2;
      }

      else
      {
        if (!v4)
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          qword_1EBD2C9C0 = v4;
        }

        v5 = a1[4];
        v6 = v4;
      }

      return [v6 addObject:v5];
    }
  }

  return result;
}

void __DDURLSchemeIsKnown_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1EBD2C9C8 = dispatch_queue_create("com.apple.datadetectorscore.schemes", v0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, &DDURLSchemeIsKnown_sPublicSchemes, publicSchemesUpdatedCB, *MEMORY[0x1E69635B0], 0, 0);
  v2 = qword_1EBD2C9C8;

  dispatch_sync(v2, &__block_literal_global_3);
}

void updatePublicSchemes(uint64_t a1)
{
  if (*a1)
  {

    v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    *a1 = v2;
    [v2 addObject:@"smb"];
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    *(a1 + 8) = 0;
  }
}

void publicSchemesUpdatedCB(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __publicSchemesUpdatedCB_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v2, block);
}

void DDLookupTrieDestroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  _DDTrieDestroy(*(a1 + 48), a1);
  v3 = *(a1 + 48);
  if (v3)
  {
    malloc_destroy_zone(v3);
  }

  v4 = *(a1 + 24);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    do
    {
      v7 = (v6 + 16 * v5);
      v8 = *v7;
      if (v8 >= 1)
      {
        if (v8 == 1)
        {
          v9 = *(v7 + 1);
          if (v9)
          {
            CFRelease(v9);
          }
        }

        else
        {
          v10 = 0;
          v11 = 16 * v8;
          do
          {
            v12 = *(*(v7 + 1) + v10);
            if (v12)
            {
              CFRelease(v12);
            }

            v10 += 16;
          }

          while (v11 != v10);
          malloc_zone_free(*(a1 + 40), *(v7 + 1));
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    malloc_destroy_zone(v13);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    MEMORY[0x1BFB35460](*MEMORY[0x1E69E9A60], v14, 8388592);
  }

  free(a1);
}

void _DDTrieDestroy(malloc_zone_t *a1, uint64_t a2)
{
  if (*a2)
  {
    if ((*a2 & 0xFFEu) < 0xD)
    {
      return;
    }

    v4 = *(a2 + 8);
  }

  else
  {
    v3 = (*a2 >> 1) & 0x7FF;
    v4 = *(a2 + 8);
    while (v3 == 1)
    {
      v3 = (*v4 >> 1) & 0x7FF;
      if (*v4)
      {
        v5 = v3 >= 7;
        v3 = 0;
        if (v5)
        {
          malloc_zone_free(a1, v4[1]);
          v3 = 0;
        }
      }

      else
      {
        v6 = v4[1];
        malloc_zone_free(a1, v4);
        v4 = v6;
      }
    }

    if (!v3)
    {
      return;
    }

    v7 = v3;
    v8 = v4;
    do
    {
      _DDTrieDestroy(a1, v8);
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  malloc_zone_free(a1, v4);
}

void DDLookupTrieInsertKeyWithExtra(uint64_t a1, CFStringRef theString, uint64_t a3, __int16 *a4)
{
  v103 = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  CFStringTrimWhitespace(MutableCopy);
  CFStringFold(MutableCopy, 0x81uLL, 0);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormKC);
  Length = CFStringGetLength(MutableCopy);
  if (Length < 1 || !a1)
  {
LABEL_38:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    goto LABEL_40;
  }

  v9 = Length;
  v99 = a3;
  v100 = a4;
  v10 = 0;
  v11 = 1;
  v12 = a1;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(MutableCopy, v10);
    if (CharacterAtIndex == 45)
    {
      v14 = 32;
    }

    else
    {
      v14 = CharacterAtIndex;
    }

    if (CharacterAtIndex == 8217)
    {
      v15 = 39;
    }

    else
    {
      v15 = v14;
    }

    if (v15 == 8217)
    {
      v16 = 39;
    }

    else
    {
      v16 = v15;
    }

    v17 = *v12;
    if ((v17 & 1) != 0 || (v18 = (v17 >> 1) & 0x7FF, !v18))
    {
      v19 = 0;
LABEL_27:
      appended = _DDTrieAppendChar(v12, v15, a1, v19);
      if (v10 - v9 <= -2)
      {
        v27 = buffer;
        if (v9 >= 33)
        {
          v27 = malloc_type_malloc(2 * (v9 - v10), 0x1000040BDFB0063uLL);
        }

        v104.location = v10;
        v104.length = v9 - v10;
        CFStringGetCharacters(MutableCopy, v104, v27);
        _DDTrieCellMakeLeafWithChars(a1, appended, v27, v9 - v10);
        if (v27 != buffer)
        {
          free(v27);
        }
      }

      goto LABEL_32;
    }

    v19 = 0;
    v20 = *(v12 + 1);
    while (1)
    {
      v21 = v19 + (v18 >> 1);
      appended = (v20 + 16 * v21);
      v23 = *(appended + 2);
      if (v23 == v16)
      {
        break;
      }

      v24 = v18 >> 1;
      v18 += v19 + ~v21;
      if (v23 >= v16)
      {
        v18 = v24;
      }

      else
      {
        v19 = v21 + 1;
      }

      if (v18 <= 0)
      {
        goto LABEL_27;
      }
    }

    v101 = a1;
    LODWORD(v25) = *appended;
    v26 = v10 + 1;
    if (*appended)
    {
      break;
    }

    --v11;
    v12 = (v20 + 16 * v21);
    ++v10;
    v37 = v26 == v9;
    a1 = v101;
    if (v37)
    {
      goto LABEL_32;
    }
  }

  v40 = v10;
  if (v26 >= v9)
  {
LABEL_85:
    v41 = v26;
  }

  else
  {
    v41 = v10 + 1;
    if ((v25 & 0xFFC) != 0)
    {
      v42 = appended + 6;
      v43 = 1;
      while (1)
      {
        v41 = v10 + v43;
        v44 = CFStringGetCharacterAtIndex(MutableCopy, v10 + v43);
        if (v44 == 45)
        {
          v45 = 32;
        }

        else
        {
          v45 = v44;
        }

        if (v44 == 8217)
        {
          v46 = 39;
        }

        else
        {
          v46 = v45;
        }

        v25 = *appended;
        v47 = appended + 4;
        if (v25)
        {
          v47 = v42;
          if (v43 >= 2)
          {
            v47 = v42;
            if ((*appended & 0xFFEu) >= 0xE)
            {
              v47 = (*(appended + 1) + 2 * v43 - 4);
            }
          }
        }

        if (v46 != *v47)
        {
          v40 = v41 - 1;
          v26 = v10 + v43;
          goto LABEL_86;
        }

        if (v10 - v9 + 2 + v43 == 1)
        {
          break;
        }

        ++v43;
        v42 += 2;
        if (v43 >= ((v25 >> 1) & 0x7FF))
        {
          v26 = v10 + v43;
          v40 = v10 + v43 - 1;
          goto LABEL_85;
        }
      }

      v40 = v10 + v43;
      v48 = 0;
      v41 = v9;
      v26 = v9;
LABEL_87:
      v49 = (v25 >> 1) & 0x7FF;
      if (v41 - v10 == v49)
      {
LABEL_153:
        a1 = v101;
        goto LABEL_32;
      }

      goto LABEL_90;
    }
  }

LABEL_86:
  v48 = v9 - v26;
  if (v9 == v26)
  {
    goto LABEL_87;
  }

  LODWORD(v49) = (v25 >> 1) & 0x7FF;
LABEL_90:
  v50 = v40 - v10;
  *buffer = *appended;
  *appended = 4096;
  *(appended + 1) = 0;
  if (v40 - v10 <= 0)
  {
    v56 = v50 + 1;
    v98 = *buffer;
  }

  else
  {
    v98 = *buffer;
    v51 = *&buffer[4] - 4;
    v93 = v40 - v10;
    v94 = v49;
    v95 = v50 + 1;
    v52 = &buffer[3];
    v53 = (v40 + v11);
    v54 = 1;
    do
    {
      v55 = &buffer[2];
      if (buffer[0])
      {
        v55 = (v51 + 2 * v54);
        if (v54 < 2)
        {
          v55 = v52;
        }

        if ((buffer[0] & 0xFFEu) < 0xE)
        {
          v55 = v52;
        }
      }

      appended = _DDTrieAppendChar(appended, *v55, v101, 0);
      ++v54;
      ++v52;
    }

    while (v53 != v54);
    v56 = v95;
    LODWORD(v49) = v94;
    v50 = v93;
  }

  v59 = (v49 - v56);
  if (v49 <= v56)
  {
    *appended = v98 & 0xFFFFF000 | *appended & 0xFFF;
  }

  else
  {
    if (v98)
    {
      if (v50 < 1 || (v98 & 0xFFEu) <= 0xD)
      {
        v60 = &buffer[v56 + 2];
      }

      else
      {
        v60 = (*&buffer[4] + 2 * v56 - 4);
      }
    }

    else
    {
      v60 = &buffer[2];
    }

    v61 = _DDTrieAppendChar(appended, *v60, v101, 0);
    v62 = v98 & 0xFFFFF000;
    if (v59 == 1)
    {
      *v61 = v62;
    }

    else
    {
      *v61 = v62 | (2 * (v59 & 0x7FF)) | 1;
      v63 = v56;
      if (v59 >= 7)
      {
        v70 = 0;
        v71 = v98 & 0xFFE;
        v96 = *&buffer[4];
        v97 = v61;
        v72 = *&buffer[4] - 4;
        v73 = 1;
        do
        {
          v74 = v73;
          v75 = &buffer[2];
          if (v98)
          {
            v76 = v70 + v63;
            if (v71 < 0xE || v76 <= 1)
            {
              v75 = &buffer[v76 + 2];
            }

            else
            {
              v75 = (v72 + 2 * v76);
            }
          }

          v73 = 0;
          *&v61[2 * v70 + 4] = *v75;
          v70 = 1;
        }

        while ((v74 & 1) != 0);
        MallocZoneForSons = _getMallocZoneForSons(v101);
        v78 = malloc_type_zone_malloc(MallocZoneForSons, 2 * (v59 - 2), 0x1000040BDFB0063uLL);
        v79 = 0;
        *(v97 + 1) = v78;
        v80 = (v96 + 2 * v63);
        do
        {
          v81 = &buffer[2];
          if (v98)
          {
            v82 = v79 + v63;
            if (v71 < 0xE || (v81 = v80, v82 < 0))
            {
              v81 = &buffer[v82 + 4];
            }
          }

          *(*(v97 + 1) + 2 * v79++) = *v81;
          ++v80;
        }

        while (v59 - 2 != v79);
      }

      else
      {
        v64 = 0;
        v65 = *&buffer[4] - 4;
        v66 = (v61 + 4);
        v67 = &buffer[v56 + 2];
        v68 = v56;
        do
        {
          v69 = &buffer[2];
          if (v98)
          {
            v69 = (v65 + 2 * (v64 + v56));
            if (v68 < 2)
            {
              v69 = v67;
            }

            if ((v98 & 0xFFEu) < 0xE)
            {
              v69 = v67;
            }
          }

          *v66++ = *v69;
          ++v64;
          ++v67;
          ++v68;
          --v59;
        }

        while (v59);
      }
    }
  }

  if ((v98 & 0xFFEu) >= 0x201)
  {
    v83 = _getMallocZoneForSons(v101);
    malloc_zone_free(v83, *&buffer[4]);
  }

  if (v48 < 1)
  {
    goto LABEL_153;
  }

  v84 = CFStringGetCharacterAtIndex(MutableCopy, v26);
  v85 = v84 == 45 ? 32 : v84;
  v86 = v84 == 8217 ? 39 : v85;
  v87 = (*appended & 0xFFE) == 2 && (v86 > *(*(appended + 1) + 4));
  appended = _DDTrieAppendChar(appended, v86, v101, v87);
  if (v48 == 1)
  {
    goto LABEL_153;
  }

  v88 = buffer;
  if (v9 >= 33)
  {
    v88 = malloc_type_malloc(2 * v48, 0x1000040BDFB0063uLL);
  }

  v105.location = v26;
  v105.length = v48;
  CFStringGetCharacters(MutableCopy, v105, v88);
  a1 = v101;
  _DDTrieCellMakeLeafWithChars(v101, appended, v88, v48);
  if (v88 != buffer)
  {
    free(v88);
  }

LABEL_32:
  if (appended == a1)
  {
    goto LABEL_38;
  }

  CFRelease(MutableCopy);
  if (!appended)
  {
    goto LABEL_40;
  }

  if (v99 <= 0)
  {
    if ((_DDLookupTrieInsertDataInTrie_alreadyLogged_28 & 1) == 0)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v89 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        buffer[0] = 0;
        _os_log_error_impl(&dword_1BCFDD000, v89, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", buffer, 2u);
      }

      DDLogAssertionFailure("tokenId > 0", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/Lookup/DDTrie.c", v90, 713, @"non positive token");
      _DDLookupTrieInsertDataInTrie_alreadyLogged_28 = 1;
    }

    goto LABEL_40;
  }

  if (v99 >= 0x7FFFF)
  {
    if ((_DDLookupTrieInsertDataInTrie_alreadyLogged_33 & 1) == 0)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v91 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        buffer[0] = 0;
        _os_log_error_impl(&dword_1BCFDD000, v91, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", buffer, 2u);
      }

      DDLogAssertionFailure("tokenId < MaxData", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/Lookup/DDTrie.c", v92, 714, @"data too big for the trie");
      _DDLookupTrieInsertDataInTrie_alreadyLogged_33 = 1;
    }

    goto LABEL_40;
  }

  v28 = *appended;
  if ((*appended & 0x1000) == 0)
  {
LABEL_37:
    _DDLookupTrieNonImmediateCellAppendItem(a1, v28, v99, v100);
    goto LABEL_40;
  }

  if (v100 || v28 >> 13)
  {
    if (v100)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v28 |= v99 << 13;
    *appended = v28;
  }

  if (v28 >> 13 == v99)
  {
    goto LABEL_40;
  }

LABEL_46:
  v30 = *(a1 + 24);
  if (v30 >= 0x7FFFF)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v31 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      buffer[0] = 0;
      v32 = "currentExtraOffset too big";
LABEL_51:
      _os_log_error_impl(&dword_1BCFDD000, v31, OS_LOG_TYPE_ERROR, v32, buffer, 2u);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v33 = *(a1 + 16);
  if (v33)
  {
LABEL_58:
    v36 = v28 >> 13;
    if (v36)
    {
      v37 = v36 == v99;
    }

    else
    {
      v37 = 1;
    }

    v38 = !v37;
    if (v37)
    {
      if (v100)
      {
        v39 = CFRetain(v100);
        v33 = *(a1 + 16);
      }

      else
      {
        v39 = 0;
      }

      LODWORD(v36) = v99;
    }

    else
    {
      v39 = 0;
    }

    v57 = *(a1 + 24);
    v58 = v33 + 16 * v57;
    *v58 = 1;
    *(v58 + 4) = v36;
    *(v58 + 8) = v39;
    *(a1 + 24) = v57 + 1;
    v28 = *appended & 0xFFF | (v30 << 13);
    *appended = v28;
    if (v38)
    {
      goto LABEL_37;
    }

    goto LABEL_40;
  }

  *buffer = 0;
  v34 = vm_allocate(*MEMORY[0x1E69E9A60], buffer, 0x7FFFF0uLL, 1);
  v33 = *buffer;
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = *buffer;
  }

  *(a1 + 16) = v35;
  if (v35)
  {
    v28 = *appended;
    goto LABEL_58;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v31 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    buffer[0] = 0;
    v32 = "cannot allocate extra data vm region";
    goto LABEL_51;
  }

LABEL_40:
  v29 = *MEMORY[0x1E69E9840];
}

char *_DDTrieAppendChar(unsigned int *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if ((~*a1 & 0xFFE) != 0)
  {
    v8 = (v4 + 2) & 0xFFE;
    *a1 = v8 | v4 & 0xFFFFF001;
    if (*(a1 + 1))
    {
      MallocZoneForSons = _getMallocZoneForSons(a3);
      v10 = malloc_type_zone_realloc(MallocZoneForSons, *(a1 + 1), (8 * *a1) & 0x7FF0, 0x102204052CB07EBuLL);
      goto LABEL_6;
    }

    if (v8 == 2)
    {
      v11 = _getMallocZoneForSons(a3);
      v10 = malloc_type_zone_calloc(v11, 1uLL, 0x10uLL, 0x102204052CB07EBuLL);
LABEL_6:
      *(a1 + 1) = v10;
      if (v10)
      {
        v12 = *a1;
        v13 = (((v12 >> 1) & 0x7FF) - 1);
        if (v13 > a4)
        {
          v14 = 16 * ((v12 >> 1) & 0x7FF);
          do
          {
            *(*(a1 + 1) + v14 - 16) = *(*(a1 + 1) + v14 - 32);
            --v13;
            v14 -= 16;
          }

          while (v13 > a4);
          v10 = *(a1 + 1);
        }

        result = &v10[16 * a4];
        *(result + 7) = 0;
        *(result + 6) = 0;
        *(result + 2) = a2;
        *result = 4096;
        return result;
      }

      if ((_DDTrieAppendChar_alreadyLogged_18 & 1) == 0)
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v18 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          v22[0] = 0;
          _os_log_error_impl(&dword_1BCFDD000, v18, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", v22, 2u);
        }

        DDLogAssertionFailure("trie->storage.sons != NULL", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/Lookup/DDTrie.c", v19, 138, @"Allocation failed");
        result = 0;
        _DDTrieAppendChar_alreadyLogged_18 = 1;
        return result;
      }

      return 0;
    }

    if (_DDTrieAppendChar_alreadyLogged_13)
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
      *v23 = 0;
      _os_log_error_impl(&dword_1BCFDD000, v20, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", v23, 2u);
    }

    DDLogAssertionFailure("trie->sonsOrCharCount == 1", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/Lookup/DDTrie.c", v21, 133, @"should have a buffer");
    result = 0;
    _DDTrieAppendChar_alreadyLogged_13 = 1;
  }

  else
  {
    if (_DDTrieAppendChar_alreadyLogged)
    {
      return 0;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v16 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BCFDD000, v16, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", buf, 2u);
    }

    DDLogAssertionFailure("(int)(trie->sonsOrCharCount) < MaxNumberOfSons", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/Lookup/DDTrie.c", v17, 129, @"overflow in the trie");
    result = 0;
    _DDTrieAppendChar_alreadyLogged = 1;
  }

  return result;
}

void *_DDTrieCellMakeLeafWithChars(void *result, uint64_t a2, __int16 *a3, uint64_t a4)
{
  v5 = *a2 | 1;
  *a2 = v5;
  if (a4 >= 256)
  {
    v6 = 256;
  }

  else
  {
    v6 = a4;
  }

  if (a4 < 1)
  {
    *a2 = v5 & 0xFFFFF001 | (2 * (v6 & 0x7FF));
  }

  else
  {
    v7 = a3;
    v8 = 0;
    do
    {
      v9 = a3[v8];
      if (v9 == 8217)
      {
        v10 = 39;
      }

      else
      {
        v10 = a3[v8];
      }

      if (v9 == 45)
      {
        v11 = 32;
      }

      else
      {
        v11 = v10;
      }

      a3[v8++] = v11;
    }

    while (v6 != v8);
    *a2 = *a2 & 0xFFFFF001 | (2 * v6);
    v12 = (a2 + 4);
    if (a4 > 6)
    {
      *(a2 + 4) = *a3;
      *(a2 + 6) = a3[1];
      MallocZoneForSons = _getMallocZoneForSons(result);
      v15 = v6 - 2;
      result = malloc_type_zone_malloc(MallocZoneForSons, 2 * v15, 0x1000040BDFB0063uLL);
      v16 = 0;
      *(a2 + 8) = result;
      do
      {
        *(*(a2 + 8) + 2 * v16) = v7[v16 + 2];
        ++v16;
      }

      while (v15 != v16);
    }

    else
    {
      do
      {
        v13 = *v7++;
        *v12++ = v13;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

malloc_zone_t *_getMallocZoneForSons(uint64_t a1)
{
  zone = *(a1 + 48);
  if (!zone)
  {
    zone = malloc_create_zone(0x400000uLL, 0);
    malloc_set_zone_name(zone, "DataDetectorsTrieSons");
    *(a1 + 48) = zone;
  }

  return zone;
}

void _DDLookupTrieNonImmediateCellAppendItem(uint64_t a1, unsigned int a2, uint64_t a3, __int16 *a4)
{
  v4 = (*(a1 + 16) + 16 * (a2 >> 13));
  v5 = *v4;
  if (v5 <= 0)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v14 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v15 = "unexpected size";
    v16 = buf;
    goto LABEL_14;
  }

  v7 = a3;
  v9 = *(v4 + 1);
  if (v5 == 1)
  {
    if (v9 == a4 && v4[1] == a3)
    {
      return;
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      goto LABEL_8;
    }

    zone = malloc_create_zone(0x400000uLL, 0);
    if (zone)
    {
      v10 = zone;
      malloc_set_zone_name(zone, "DataDetectorsTrieItems");
      *(a1 + 40) = v10;
LABEL_8:
      v12 = malloc_type_zone_calloc(v10, 2uLL, 0x10uLL, 0x10C00408E2ACF4FuLL);
      v12[4] = v4[1];
      v12[12] = v7;
      *v12 = *(v4 + 1);
      if (a4)
      {
        v13 = CFRetain(a4);
      }

      else
      {
        v13 = 0;
      }

      *(v12 + 2) = v13;
      v19 = 2;
LABEL_25:
      *v4 = v19;
      *(v4 + 1) = v12;
      return;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v14 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v22 = 0;
    v15 = "can't allocate trie_items_malloc_zone in trie";
    v16 = &v22;
LABEL_14:
    _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    return;
  }

  v17 = (v9 + 4);
  v18 = *v4;
  while (*(v17 - 1) != a4 || *v17 != a3)
  {
    v17 += 2;
    if (!--v18)
    {
      v19 = v5 + 1;
      v12 = malloc_type_zone_realloc(*(a1 + 40), v9, 16 * (v5 + 1), 0x10C00408E2ACF4FuLL);
      v20 = &v12[8 * v5];
      *(v20 + 4) = v7;
      if (a4)
      {
        v21 = CFRetain(a4);
      }

      else
      {
        v21 = 0;
      }

      *v20 = v21;
      goto LABEL_25;
    }
  }
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = MEMORY[0x1EEDB6B88](calendar, smallerUnit, biggerUnit, at);
  result.length = v5;
  result.location = v4;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
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

uint64_t LDEnumerateAssetDataItems_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_LinguisticData))
  {
    dlopenHelper_LinguisticData(a1);
  }

  return MEMORY[0x1EEE18C08]();
}

uint64_t MRLNeuralNetworkCreate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_Montreal))
  {
    dlopenHelper_Montreal(a1);
  }

  return MEMORY[0x1EEE1F5E8]();
}

uint64_t MRLNeuralNetworkGetOutput_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_Montreal))
  {
    dlopenHelper_Montreal(a1);
  }

  return MEMORY[0x1EEE1F600]();
}

uint64_t MRLNeuralNetworkPredict_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_Montreal))
  {
    dlopenHelper_Montreal(a1);
  }

  return MEMORY[0x1EEE1F618]();
}

uint64_t MRLNeuralNetworkSetInput_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_Montreal))
  {
    dlopenHelper_Montreal(a1);
  }

  return MEMORY[0x1EEE1F628]();
}

double gotLoadHelper_x8__NLNaturalLanguageErrorDomain(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__NLTagSchemeTokenType(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CSFFeatureManager(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudSubscriptionFeatures))
  {
    return dlopenHelper_CloudSubscriptionFeatures(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(double result)
{
  if (!atomic_load(&dlopenHelperFlag_GeoServices))
  {
    return dlopenHelper_GeoServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___NLContextualEmbedding(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___NLTagger(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

void gotLoadHelper_x20__OBJC_CLASS___NLTokenizer(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    dlopenHelper_NaturalLanguage(a1);
  }
}

double gotLoadHelper_x8__kLDAssetTypeDataDetectorHead(double result)
{
  if (!atomic_load(&dlopenHelperFlag_LinguisticData))
  {
    return dlopenHelper_LinguisticData(result);
  }

  return result;
}

double gotLoadHelper_x8__kMRLNeuralNetworkOptionModelURLKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Montreal))
  {
    return dlopenHelper_Montreal(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_NaturalLanguage(double a1)
{
  dlopen("/System/Library/Frameworks/NaturalLanguage.framework/NaturalLanguage", 0);
  atomic_store(1u, &dlopenHelperFlag_NaturalLanguage);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CloudSubscriptionFeatures(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CloudSubscriptionFeatures.framework/CloudSubscriptionFeatures", 0);
  atomic_store(1u, &dlopenHelperFlag_CloudSubscriptionFeatures);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_GeoServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/GeoServices.framework/GeoServices", 0);
  atomic_store(1u, &dlopenHelperFlag_GeoServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_LinguisticData(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/LinguisticData.framework/LinguisticData", 0);
  atomic_store(1u, &dlopenHelperFlag_LinguisticData);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_Montreal(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/Montreal.framework/Montreal", 0);
  atomic_store(1u, &dlopenHelperFlag_Montreal);
  return a1;
}