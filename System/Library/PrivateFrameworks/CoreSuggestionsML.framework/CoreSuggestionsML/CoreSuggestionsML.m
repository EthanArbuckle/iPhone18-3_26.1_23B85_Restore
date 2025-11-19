void sub_2479A2E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __setup_block_invoke()
{
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = objc_opt_new();
  v1 = _cache;
  _cache = v0;

  v2 = dispatch_queue_create("SGModelAsset-notifications", 0);
  v3 = _notificationQueue;
  _notificationQueue = v2;

  v4 = [v13 pathForResource:@"Assets" ofType:@"suggestionsmodelassets"];
  v5 = objc_alloc(MEMORY[0x277D42538]);
  v6 = [v5 initWithAssetTypeDescriptorPath:@"/System/Library/AssetTypeDescriptors/com.apple.MobileAsset.AssetTypeDescriptor.CoreSuggestionsModelAssets.plist" defaultBundlePath:v4 matchingKeysAndValues:0 notificationQueue:_notificationQueue logHandle:MEMORY[0x277D86220] enableAssetUpdates:1];
  v7 = _assetInstance;
  _assetInstance = v6;

  v8 = objc_opt_new();
  v9 = _lock;
  _lock = v8;

  v10 = objc_opt_new();
  v11 = _updateBlocks;
  _updateBlocks = v10;

  v12 = [_assetInstance registerUpdateHandler:&__block_literal_global_77];
}

uint64_t __setup_block_invoke_2()
{
  +[SGModelAsset _reset];

  return +[SGModelAsset _invokeOnUpdateBlock];
}

void sub_2479A8718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479A8904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479A8AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479AB31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSGNameDetectorClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreSuggestionsInternalsLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreSuggestionsInternalsLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278EB7770;
    v9 = 0;
    CoreSuggestionsInternalsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSuggestionsInternalsLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreSuggestionsInternalsLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGStringPreprocessingTransformer.m" lineNumber:22 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SGNameDetector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSGNameDetectorClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"SGStringPreprocessingTransformer.m" lineNumber:23 description:{@"Unable to find class %s", "SGNameDetector"}];

LABEL_10:
    __break(1u);
  }

  getSGNameDetectorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreSuggestionsInternalsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSuggestionsInternalsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2479AC330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SGIsEmoji(int a1)
{
  result = 1;
  if (a1 > 9641)
  {
    if (a1 <= 10547)
    {
      if ((a1 - 10133) < 0x2B || (a1 - 9642) <= 0x16 && ((1 << (a1 + 86)) & 0x401003) != 0)
      {
        return result;
      }

      goto LABEL_27;
    }

    if (a1 > 12348)
    {
      if (a1 == 12349 || a1 == 12951)
      {
        return result;
      }

      v3 = 12953;
    }

    else
    {
      if ((a1 - 10548) < 2)
      {
        return result;
      }

      v3 = 12336;
    }

LABEL_26:
    if (a1 == v3)
    {
      return result;
    }

LABEL_27:
    v4 = a1 - 9723;
    v5 = a1 - 11013;
    v6 = a1 - 127489;
    v8 = v6 + 513 < 0x1E6 || v6 < 0xDFD;
    if (v5 <= 0x50)
    {
      v8 = 1;
    }

    return v4 < 0x16A || v8;
  }

  if (a1 <= 8985)
  {
    if (a1 <= 8504)
    {
      if (a1 == 169 || a1 == 174)
      {
        return result;
      }

      v3 = 8482;
    }

    else
    {
      if ((a1 - 8596) < 0x17)
      {
        return result;
      }

      v3 = 8505;
    }

    goto LABEL_26;
  }

  if (((a1 - 9167) > 0x2B || ((1 << (a1 + 49)) & 0xFFFFC000001) == 0) && ((a1 - 8986) > 0xE || ((1 << (a1 - 26)) & 0x4003) == 0))
  {
    v3 = 9410;
    goto LABEL_26;
  }

  return result;
}

void sub_2479AC6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479AD06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2479AD24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2479AD420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2479AD778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2479AD9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2479AE8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479AF1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__237(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479AF89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__267(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479AFA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479B48A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__438(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479B4A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSGNameDetectorClass_block_invoke_441(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreSuggestionsInternalsLibraryCore_frameworkLibrary_442)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreSuggestionsInternalsLibraryCore_block_invoke_443;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278EB7960;
    v9 = 0;
    CoreSuggestionsInternalsLibraryCore_frameworkLibrary_442 = _sl_dlopen();
  }

  if (!CoreSuggestionsInternalsLibraryCore_frameworkLibrary_442)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreSuggestionsInternalsLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGQuickResponsesInference.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SGNameDetector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSGNameDetectorClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"SGQuickResponsesInference.m" lineNumber:22 description:{@"Unable to find class %s", "SGNameDetector"}];

LABEL_10:
    __break(1u);
  }

  getSGNameDetectorClass_softClass_440 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreSuggestionsInternalsLibraryCore_block_invoke_443(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSuggestionsInternalsLibraryCore_frameworkLibrary_442 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2479B5514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *modelModeName(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_278EB7A28[a1];
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *modelModeName(SGModelMode)"];
  [v3 handleFailureInFunction:v4 file:@"SGQuickResponsesModel.m" lineNumber:208 description:{@"Unexpected SGModelMode mode: %lX", a1}];

  return 0;
}

void sub_2479B6F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479B7FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479B8200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479B8514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479B8B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__579(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479B99DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479BBF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479BCE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479BD000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479BE38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479BF8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2479C04A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479C0818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479C3224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479C44AC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x2479C44B8);
}

void SGPersonalizeEmojisWarmup()
{
  if ([&stru_285992FC0 _isSingleEmoji])
  {
    __assert_rtn("SGPersonalizeEmojisWarmup", "SGStringUtilML.m", 54, "isSingleEmoji == NO");
  }

  v0 = SGEmojiPreferences();
  if (!v0)
  {
    __assert_rtn("SGPersonalizeEmojisWarmup", "SGStringUtilML.m", 56, "emojiPreferences != nil");
  }
}

uint64_t SGEmojiPreferences()
{
  if (SGEmojiPreferences__pasOnceToken2 != -1)
  {
    dispatch_once(&SGEmojiPreferences__pasOnceToken2, &__block_literal_global_954);
  }

  v1 = SGEmojiPreferences__pasExprOnceResult;

  return [v1 result];
}

void __SGEmojiPreferences_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_15 idleTimeout:0.2];
  v2 = SGEmojiPreferences__pasExprOnceResult;
  SGEmojiPreferences__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __SGEmojiPreferences_block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D07308]) _initWithoutConnection];
  [v0 readEmojiDefaults];

  return v0;
}

id SGPersonalizeEmojisInString(void *a1)
{
  v1 = a1;
  v2 = SGEmojiPreferences();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v1, "length")}];
  v4 = [v1 length];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __SGPersonalizeEmojisInString_block_invoke;
  v18 = &unk_278EB82E0;
  v22 = &v23;
  v5 = v3;
  v19 = v5;
  v6 = v1;
  v20 = v6;
  v7 = v2;
  v21 = v7;
  [v6 _enumerateEmojiTokensInRange:0 block:{v4, &v15}];
  v8 = v24[3];
  if (v8 < [v6 length])
  {
    v9 = v24[3];
    v10 = [v6 length];
    v11 = [v6 substringWithRange:{v9, v10 - v24[3]}];
    [v5 appendString:v11];
  }

  v12 = v21;
  v13 = v5;

  _Block_object_dispose(&v23, 8);

  return v13;
}

void sub_2479C47F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SGPersonalizeEmojisInString_block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  v14 = v7;
  if (a3 > *(*(*(a1 + 56) + 8) + 24))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) substringWithRange:?];
    [v8 appendString:v9];

    v7 = v14;
  }

  if ([v7 supportsSkinToneVariants])
  {
    v10 = [*(a1 + 48) lastUsedVariantEmojiForEmoji:v14];
  }

  else
  {
    v10 = v14;
  }

  v11 = v10;
  v12 = *(a1 + 32);
  v13 = [v10 string];
  [v12 appendString:v13];

  *(*(*(a1 + 56) + 8) + 24) = a3 + a4;
}

id SGNormalizeEmojisInString(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v1, "length")}];
  v3 = [v1 length];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __SGNormalizeEmojisInString_block_invoke;
  v13[3] = &unk_278EB8308;
  v16 = &v17;
  v4 = v2;
  v14 = v4;
  v5 = v1;
  v15 = v5;
  [v5 _enumerateEmojiTokensInRange:0 block:{v3, v13}];
  v6 = v18[3];
  if (v6 < [v5 length])
  {
    v7 = v18[3];
    v8 = [v5 length];
    v9 = [v5 substringWithRange:{v7, v8 - v18[3]}];
    [v4 appendString:v9];
  }

  v10 = v15;
  v11 = v4;

  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_2479C4A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SGNormalizeEmojisInString_block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a3 > *(*(*(a1 + 48) + 8) + 24))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) substringWithRange:?];
    [v8 appendString:v9];
  }

  if ([v7 supportsSkinToneVariants])
  {
    v10 = v7;
    v11 = MEMORY[0x277D07320];
    v12 = [v10 string];
    v13 = [v11 _baseStringForEmojiString:v12];

    if ([MEMORY[0x277D072F0] _isCoupleMultiSkinToneEmoji:v13])
    {
      v19[0] = *MEMORY[0x277D072E8];
      v19[1] = v19[0];
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v15 = [v10 copyWithSkinToneVariantSpecifier:v14];
    }

    else
    {
      v15 = v10;
      if ([v10 skinTone])
      {
        v15 = [v10 copyWithSkinToneVariant:0];
      }
    }
  }

  else
  {
    v15 = v7;
  }

  v16 = *(a1 + 32);
  v17 = [v15 string];
  [v16 appendString:v17];

  *(*(*(a1 + 48) + 8) + 24) = a3 + a4;
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2479C5330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1085(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479C5664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479C79FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479C8080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1400(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479CA3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1603(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2479CA5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479CA84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479CAAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479CAC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479CC0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIMAttachmentCharacterStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMFoundationLibrary();
  result = dlsym(v2, "IMAttachmentCharacterString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMAttachmentCharacterStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IMFoundationLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!IMFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __IMFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278EB8520;
    v7 = 0;
    IMFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IMFoundationLibraryCore_frameworkLibrary;
  if (!IMFoundationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IMFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"SGMessagePairIterator.m" lineNumber:25 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *__getIMBreadcrumbCharacterStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMFoundationLibrary();
  result = dlsym(v2, "IMBreadcrumbCharacterString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMBreadcrumbCharacterStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IMFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2479CDE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}