uint64_t json_parse_string(unint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (*a1 >= a2)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = v2 + 1;
    v3 = *v2;
    if (v3 != 92)
    {
      if (!*v2)
      {
        goto LABEL_27;
      }

      if (v3 == 34)
      {
        v3 = 1;
LABEL_27:
        v2 = v4;
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (v4 == a2)
    {
      goto LABEL_26;
    }

    v4 = v2 + 2;
    v5 = v2[1];
    if ((v5 - 98) <= 0x13)
    {
      if (((1 << (v5 - 98)) & 0x51011) != 0)
      {
        goto LABEL_23;
      }

      if (v5 == 117)
      {
        break;
      }
    }

    v13 = v5 - 34;
    v10 = v13 > 0x3A;
    v14 = (1 << v13) & 0x400000000002001;
    if (v10 || v14 == 0)
    {
LABEL_26:
      v3 = 0;
      goto LABEL_27;
    }

LABEL_23:
    v2 = v4;
LABEL_24:
    if (v2 >= a2)
    {
      goto LABEL_25;
    }
  }

  if (a2 - v4 < 4)
  {
    v3 = 0;
    v2 = a2;
  }

  else
  {
    v6 = v2 + 6;
    v2 += 3;
    v7 = 4;
    while (1)
    {
      v8 = *(v2 - 1);
      if ((v8 - 58) <= 0xFFFFFFF5)
      {
        v9 = v8 - 65;
        v10 = v9 > 0x25;
        v11 = (1 << v9) & 0x3F0000003FLL;
        if (v10 || v11 == 0)
        {
          break;
        }
      }

      ++v2;
      if (!--v7)
      {
        v2 = v6;
        goto LABEL_24;
      }
    }

LABEL_25:
    v3 = 0;
  }

LABEL_28:
  *a1 = v2;
  return v3;
}

__CFString *WFLocalizedDisplayNameForContentCategory(void *a1)
{
  v1 = WFLocalizedDisplayNameResourceForContentCategory(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 localize];
  }

  else
  {
    v3 = &stru_282F53518;
  }

  return v3;
}

id WFLocalizedDisplayNameResourceForContentCategory(void *a1)
{
  v1 = a1;
  v2 = @"Controls";
  if ([v1 isEqualToString:@"Controls"] & 1) != 0 || (v2 = @"Device", (objc_msgSend(v1, "isEqualToString:", @"Device")) || (v2 = @"Documents", (objc_msgSend(v1, "isEqualToString:", @"Documents")) || (v2 = @"Location", (objc_msgSend(v1, "isEqualToString:", @"Location")) || (v2 = @"Media", (objc_msgSend(v1, "isEqualToString:", @"Media")) || (v2 = @"Scripting", (objc_msgSend(v1, "isEqualToString:", @"Scripting")) || (v2 = @"Sharing", (objc_msgSend(v1, "isEqualToString:", @"Sharing")) || (v2 = @"Web", (objc_msgSend(v1, "isEqualToString:", @"Web")) || (v2 = @"Favorites", (objc_msgSend(v1, "isEqualToString:", @"Favorites")) || (v2 = @"Apple Intelligence", objc_msgSend(v1, "isEqualToString:", @"Apple Intelligence")))
  {
    v3 = WFLocalizedStringResourceWithKey(v2, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getPHAssetResourceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetResourceClass_softClass;
  v7 = getPHAssetResourceClass_softClass;
  if (!getPHAssetResourceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetResourceClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getPHAssetResourceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E24A890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHAssetResourceClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetResource");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetResourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetResourceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:37 description:{@"Unable to find class %s", "PHAssetResource"}];

    __break(1u);
  }
}

void *PhotosLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PhotosLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278344E60;
    v6 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotosLibraryCore_frameworkLibrary;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:32 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhotosLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

id getAVURLAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVURLAssetClass_softClass;
  v7 = getAVURLAssetClass_softClass;
  if (!getAVURLAssetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVURLAssetClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getAVURLAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E24B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFLivePhotoFileType()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPFCurrentPlatformLivePhotoBundleTypeSymbolLoc_ptr;
  v9 = getPFCurrentPlatformLivePhotoBundleTypeSymbolLoc_ptr;
  if (!getPFCurrentPlatformLivePhotoBundleTypeSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getPFCurrentPlatformLivePhotoBundleTypeSymbolLoc_block_invoke;
    v5[3] = &unk_27834A178;
    v5[4] = &v6;
    __getPFCurrentPlatformLivePhotoBundleTypeSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = v0();

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"UTType *soft_PFCurrentPlatformLivePhotoBundleType(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFPhotoMediaContentItem.m" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E24B174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPFCurrentPlatformLivePhotoBundleTypeSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PhotosFormatsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PhotosFormatsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278344E48;
    v7 = 0;
    PhotosFormatsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PhotosFormatsLibraryCore_frameworkLibrary;
  if (!PhotosFormatsLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosFormatsLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFPhotoMediaContentItem.m" lineNumber:53 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "PFCurrentPlatformLivePhotoBundleType");
  *(*(a1[4] + 8) + 24) = result;
  getPFCurrentPlatformLivePhotoBundleTypeSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __PhotosFormatsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosFormatsLibraryCore_frameworkLibrary = result;
  return result;
}

void __getAVURLAssetClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVURLAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVURLAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVURLAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:58 description:{@"Unable to find class %s", "AVURLAsset"}];

    __break(1u);
  }
}

void *AVFoundationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278344E90;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:56 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21E24BAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id getPHImageRequestOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHImageRequestOptionsClass_softClass;
  v7 = getPHImageRequestOptionsClass_softClass;
  if (!getPHImageRequestOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHImageRequestOptionsClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getPHImageRequestOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E24C368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPHVideoRequestOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHVideoRequestOptionsClass_softClass;
  v7 = getPHVideoRequestOptionsClass_softClass;
  if (!getPHVideoRequestOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHVideoRequestOptionsClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getPHVideoRequestOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E24C5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHLivePhotoRequestOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHLivePhotoRequestOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHLivePhotoRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHLivePhotoRequestOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:46 description:{@"Unable to find class %s", "PHLivePhotoRequestOptions"}];

    __break(1u);
  }
}

void *__getPHImageManagerMaximumSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosLibrary();
  result = dlsym(v2, "PHImageManagerMaximumSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPHImageManagerMaximumSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getPHImageErrorKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPHImageErrorKeySymbolLoc_ptr;
  v9 = getPHImageErrorKeySymbolLoc_ptr;
  if (!getPHImageErrorKeySymbolLoc_ptr)
  {
    v1 = PhotosLibrary();
    v7[3] = dlsym(v1, "PHImageErrorKey");
    getPHImageErrorKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getPHImageErrorKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFPhotoMediaContentItem.m" lineNumber:50 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E24C9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPHImageErrorKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosLibrary();
  result = dlsym(v2, "PHImageErrorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPHImageErrorKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getPHVideoRequestOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHVideoRequestOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHVideoRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHVideoRequestOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:45 description:{@"Unable to find class %s", "PHVideoRequestOptions"}];

    __break(1u);
  }
}

void __getPHImageRequestOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHImageRequestOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHImageRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHImageRequestOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:44 description:{@"Unable to find class %s", "PHImageRequestOptions"}];

    __break(1u);
  }
}

void __getPHLivePhotoClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHLivePhoto");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHLivePhotoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHLivePhotoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:39 description:{@"Unable to find class %s", "PHLivePhoto"}];

    __break(1u);
  }
}

void __getAVAssetClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:57 description:{@"Unable to find class %s", "AVAsset"}];

    __break(1u);
  }
}

void sub_21E24DD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHAssetResourceRequestOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetResourceRequestOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetResourceRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetResourceRequestOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:47 description:{@"Unable to find class %s", "PHAssetResourceRequestOptions"}];

    __break(1u);
  }
}

id getPHAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetClass_softClass;
  v7 = getPHAssetClass_softClass;
  if (!getPHAssetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getPHAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E24E53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHAssetClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:35 description:{@"Unable to find class %s", "PHAsset"}];

    __break(1u);
  }
}

void sub_21E24EED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E24F23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E24F41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E24F61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHAssetResourceManagerClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetResourceManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetResourceManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetResourceManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:41 description:{@"Unable to find class %s", "PHAssetResourceManager"}];

    __break(1u);
  }
}

void sub_21E24F7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHImageManagerClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHImageManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHImageManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHImageManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:40 description:{@"Unable to find class %s", "PHImageManager"}];

    __break(1u);
  }
}

Class __getCLLocationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278344E78;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFPhotoMediaContentItem.m" lineNumber:62 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFPhotoMediaContentItem.m" lineNumber:63 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

id getPHAssetCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetCollectionClass_softClass;
  v7 = getPHAssetCollectionClass_softClass;
  if (!getPHAssetCollectionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetCollectionClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getPHAssetCollectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E251C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHAssetCollectionClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:36 description:{@"Unable to find class %s", "PHAssetCollection"}];

    __break(1u);
  }
}

void __getPHPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPhotoLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHPhotoLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoMediaContentItem.m" lineNumber:38 description:{@"Unable to find class %s", "PHPhotoLibrary"}];

    __break(1u);
  }
}

id WFPhotoLibraryPossibleMediaTypes()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedContentPropertyPossibleValueMarker(@"Image");
  v5[0] = v0;
  v1 = WFLocalizedContentPropertyPossibleValueMarker(@"Video");
  v5[1] = v1;
  v2 = WFLocalizedContentPropertyPossibleValueMarker(@"Audio");
  v5[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
}

id WFPhotoLibraryPossiblePhotoTypes()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedContentPropertyPossibleValueMarker(@"HDR");
  v6[0] = v0;
  v1 = WFLocalizedContentPropertyPossibleValueMarker(@"Panorama");
  v6[1] = v1;
  v2 = WFLocalizedContentPropertyPossibleValueMarker(@"Burst");
  v6[2] = v2;
  v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Live Photo");
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

void WFImageSizeFromMetadata(void *a1)
{
  v1 = *MEMORY[0x277CD3450];
  v2 = a1;
  v3 = [v2 objectForKey:v1];
  [v3 doubleValue];
  v4 = [v2 objectForKey:*MEMORY[0x277CD3448]];
  [v4 doubleValue];

  WFImageOrientationFromMetadata(v2);
}

uint64_t WFImageOrientationFromMetadata(void *a1)
{
  v1 = [a1 objectForKey:*MEMORY[0x277CD3410]];
  v2 = [v1 intValue];

  return v2;
}

id WFImageDateTakenFromMetadata(void *a1)
{
  v1 = [a1 objectForKey:*MEMORY[0x277CD3038]];
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v2 setTimeZone:v3];

  v4 = [v1 objectForKey:*MEMORY[0x277CD3030]];
  v5 = [v2 dateFromString:v4];

  if (!v5)
  {
    v6 = [v1 objectForKey:*MEMORY[0x277CD3028]];
    v5 = [v2 dateFromString:v6];
  }

  return v5;
}

id WFImageMakeFromMetadata(void *a1)
{
  v1 = [a1 objectForKey:*MEMORY[0x277CD3490]];
  v2 = [v1 objectForKey:*MEMORY[0x277CD34A8]];

  return v2;
}

id WFImageModelFromMetadata(void *a1)
{
  v1 = [a1 objectForKey:*MEMORY[0x277CD3490]];
  v2 = [v1 objectForKey:*MEMORY[0x277CD34B0]];

  return v2;
}

void WFImageLocationTakenFromMetadata(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:*MEMORY[0x277CD3258]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:*MEMORY[0x277CD3278]];
    [v4 doubleValue];
    v6 = v5;

    v7 = [v3 objectForKey:*MEMORY[0x277CD3288]];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v3 objectForKey:*MEMORY[0x277CD3280]];
    v11 = [v10 isEqualToString:@"S"];

    if (v11)
    {
      v6 = -v6;
    }

    v12 = [v3 objectForKey:*MEMORY[0x277CD3290]];
    v13 = [v12 isEqualToString:@"W"];

    if (v13)
    {
      v9 = -v9;
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v14 = getCLLocationCoordinate2DMakeSymbolLoc_ptr;
    v42 = getCLLocationCoordinate2DMakeSymbolLoc_ptr;
    if (!getCLLocationCoordinate2DMakeSymbolLoc_ptr)
    {
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __getCLLocationCoordinate2DMakeSymbolLoc_block_invoke;
      v37 = &unk_27834A178;
      v38 = &v39;
      v15 = CoreLocationLibrary();
      v40[3] = dlsym(v15, "CLLocationCoordinate2DMake");
      getCLLocationCoordinate2DMakeSymbolLoc_ptr = *(v38[1] + 24);
      v14 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v14)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CLLocationCoordinate2D WFCLLocationCoordinate2DMake(CLLocationDegrees, CLLocationDegrees)"}];
      [v32 handleFailureInFunction:v33 file:@"WFImageProperties.m" lineNumber:16 description:{@"%s", dlerror()}];

      __break(1u);
      return;
    }

    v16 = v14(v6, v9);
    v18 = v17;
    v19 = [v3 objectForKey:*MEMORY[0x277CD32D0]];
    v20 = [v3 objectForKey:*MEMORY[0x277CD3210]];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v20, v19];
    v22 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v22 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
    v23 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    [v22 setTimeZone:v23];

    if ([v20 length] && objc_msgSend(v19, "length"))
    {
      v24 = [v22 dateFromString:v21];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v3 objectForKey:*MEMORY[0x277CD31F0]];
    [v25 doubleValue];
    v27 = v26;

    v39 = 0;
    v40 = &v39;
    v41 = 0x2050000000;
    v28 = getCLLocationClass_softClass_747;
    v42 = getCLLocationClass_softClass_747;
    if (!getCLLocationClass_softClass_747)
    {
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __getCLLocationClass_block_invoke_748;
      v37 = &unk_27834A178;
      v38 = &v39;
      __getCLLocationClass_block_invoke_748(&v34);
      v28 = v40[3];
    }

    v29 = v28;
    _Block_object_dispose(&v39, 8);
    v30 = [[v28 alloc] initWithCoordinate:v24 altitude:v16 horizontalAccuracy:v18 verticalAccuracy:v27 timestamp:{0.0, 0.0}];
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
}

void sub_21E253390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCLLocationCoordinate2DMakeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "CLLocationCoordinate2DMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLLocationCoordinate2DMakeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreLocationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_750)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_751;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278344EA8;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_750 = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_750;
  if (!CoreLocationLibraryCore_frameworkLibrary_750)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFImageProperties.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __getCLLocationClass_block_invoke_748(uint64_t a1)
{
  CoreLocationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationClass_softClass_747 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFImageProperties.m" lineNumber:15 description:{@"Unable to find class %s", "CLLocation"}];

    __break(1u);
  }
}

uint64_t __CoreLocationLibraryCore_block_invoke_751()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_750 = result;
  return result;
}

id WFImagePossibleOrientationStrings()
{
  v10[8] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedContentPropertyPossibleValueMarker(@"Up");
  v10[0] = v0;
  v1 = WFLocalizedContentPropertyPossibleValueMarker(@"Down");
  v10[1] = v1;
  v2 = WFLocalizedContentPropertyPossibleValueMarker(@"Left");
  v10[2] = v2;
  v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Right");
  v10[3] = v3;
  v4 = WFLocalizedContentPropertyPossibleValueMarker(@"Up Mirrored");
  v10[4] = v4;
  v5 = WFLocalizedContentPropertyPossibleValueMarker(@"Down Mirrored");
  v10[5] = v5;
  v6 = WFLocalizedContentPropertyPossibleValueMarker(@"Left Mirrored");
  v10[6] = v6;
  v7 = WFLocalizedContentPropertyPossibleValueMarker(@"Right Mirrored");
  v10[7] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:8];

  return v8;
}

id WFImageStringFromOrientation(int a1)
{
  if ((a1 - 1) > 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = WFLocalizedContentPropertyPossibleValueMarker(off_278344EC0[a1 - 1]);
  }

  return v2;
}

void sub_21E254718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNSTextAttachmentClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __UIFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278344F60;
    v8 = 0;
    UIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIFoundationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFImageContentItem.m" lineNumber:37 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("NSTextAttachment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNSTextAttachmentClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFImageContentItem.m" lineNumber:38 description:{@"Unable to find class %s", "NSTextAttachment"}];

LABEL_10:
    __break(1u);
  }

  getNSTextAttachmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCLLocationClass_block_invoke_869(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_870)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke_871;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278344F48;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary_870 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_870)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFImageContentItem.m" lineNumber:34 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFImageContentItem.m" lineNumber:35 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass_868 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_871()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_870 = result;
  return result;
}

id WFCreateArchiveWithFiles(void *a1, void *a2, void *a3, void *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (![v8 length])
  {
    if ([v9 isEqualToString:@"gz"] && objc_msgSend(v7, "count") == 1)
    {
      v10 = [v7 firstObject];
      v11 = [v10 filename];
    }

    else
    {
      v10 = [v7 firstObject];
      v11 = [v10 wfName];
    }

    v12 = v11;

    v8 = v12;
  }

  v13 = 0x278343000uLL;
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 UUIDString];
  v16 = v9;
  v17 = [WFFileRepresentation sanitizedFilename:v15 withExtension:v16];

  v18 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v17];
  v19 = [[WFArchiveWriter alloc] initWithDestinationURL:v18 format:v16 error:a4];
  if (v19)
  {
    v66 = v17;
    v20 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v21 = v7;
    v22 = [v21 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v72;
      v61 = v16;
      v62 = v8;
      v63 = v21;
      v65 = v18;
      v59 = *v72;
      do
      {
        v25 = 0;
        do
        {
          v26 = v7;
          if (*v72 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v71 + 1) + 8 * v25);
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v28 = v20;
          v29 = [WFArchiveEntry archiveEntriesWithTopLevelFileRepresentation:v27 usedFilenames:v20];
          v30 = [v29 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v68;
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v68 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                if (![(WFArchiveWriter *)v19 writeArchiveEntry:*(*(&v67 + 1) + 8 * i) error:a4])
                {

                  v37 = 0;
                  v7 = v26;
                  v16 = v61;
                  v8 = v62;
                  v36 = v63;
                  v18 = v65;
                  goto LABEL_26;
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v67 objects:v76 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          ++v25;
          v7 = v26;
          v21 = v63;
          v18 = v65;
          v20 = v28;
          v24 = v59;
        }

        while (v25 != v23);
        v23 = [v63 countByEnumeratingWithState:&v71 objects:v77 count:16];
        v16 = v61;
        v8 = v62;
      }

      while (v23);
    }

    if (![(WFArchiveWriter *)v19 finishWithError:a4])
    {
      v37 = 0;
      goto LABEL_27;
    }

    v28 = v20;
    v34 = v16;
    v35 = [WFFileRepresentation sanitizedFilename:v8 withExtension:v34];

    v36 = v35;
    v37 = [WFFileRepresentation fileWithURL:v18 options:1 ofType:0 proposedFilename:v35];
LABEL_26:

    v20 = v28;
LABEL_27:

    v17 = v66;
    goto LABEL_39;
  }

  if ([v16 isEqualToString:@"gz"] && objc_msgSend(v7, "count") == 1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v36 = [v7 firstObject];
    v38 = v18;
    v60 = v38;
    if (!v36)
    {
      v53 = [MEMORY[0x277CCA890] currentHandler];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"WFFileRepresentation * _Nullable WFGZipCompressFile(WFFileRepresentation * _Nonnull __strong, NSURL * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
      [v53 handleFailureInFunction:v54 file:@"WFArchiveUtilities.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"file"}];

      v36 = 0;
      v13 = 0x278343000;

      v38 = v60;
    }

    if (([v38 isFileURL] & 1) == 0)
    {
      v55 = [MEMORY[0x277CCA890] currentHandler];
      [MEMORY[0x277CCACA8] stringWithUTF8String:{"WFFileRepresentation * _Nullable WFGZipCompressFile(WFFileRepresentation * _Nonnull __strong, NSURL * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
      v57 = v56 = v36;
      [v55 handleFailureInFunction:v57 file:@"WFArchiveUtilities.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"outputURL.isFileURL"}];

      v36 = v56;
      v13 = 0x278343000;
    }

    if ([v36 representationType])
    {
      [v36 mappedData];
    }

    else
    {
      [v36 data];
    }

    v40 = memset(&strm.avail_in, 0, 104);
    strm.avail_in = [v40 length];
    v58 = v40;
    strm.next_in = [v40 bytes];
    strm.avail_out = 0;
    v41 = open([v60 fileSystemRepresentation], 1538, 420);
    v66 = v17;
    if (v41 == -1)
    {
      if (a4)
      {
        v44 = objc_alloc(MEMORY[0x277CCA9B8]);
        v45 = v36;
        v46 = *MEMORY[0x277CCA5B8];
        v47 = __error();
        v48 = v46;
        v36 = v45;
        v37 = 0;
        *a4 = [v44 initWithDomain:v48 code:*v47 userInfo:0];
      }

      else
      {
        v37 = 0;
      }

      v43 = v60;
    }

    else
    {
      v42 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v41 closeOnDealloc:1];
      if (deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112))
      {
        v37 = 0;
        v43 = v60;
      }

      else
      {
        v64 = v36;
        for (j = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0x4000]; ; objc_msgSend(j, "setLength:", objc_msgSend(j, "length") + 0x4000))
        {
          do
          {
            strm.next_out = [j mutableBytes];
            strm.avail_out = [j length];
            v50 = deflate(&strm, 4);
            v51 = [j subdataWithRange:{0, strm.total_out - objc_msgSend(v42, "offsetInFile")}];
            [v42 writeData:v51];
          }

          while (!v50);
          if (v50 != -5)
          {
            break;
          }
        }

        deflateEnd(&strm);
        if (v50 == 1)
        {
          v43 = v60;
          v37 = [*(v13 + 1816) fileWithURL:v60 options:1 ofType:0];
        }

        else
        {
          v52 = [MEMORY[0x277CCAA00] defaultManager];
          [v52 removeItemAtURL:v60 error:0];

          v43 = v60;
          v37 = 0;
        }

        v36 = v64;
      }
    }

    v28 = v36;
    goto LABEL_26;
  }

  v37 = 0;
LABEL_39:

  return v37;
}

id WFCreateArchiveWithFileWrapper(void *a1, void *a2, void *a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v7)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"WFFileRepresentation * _Nullable WFCreateArchiveWithFileWrapper(NSFileWrapper * _Nonnull __strong, NSString * _Nonnull __strong, WFArchiveFormat  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v31 handleFailureInFunction:v32 file:@"WFArchiveUtilities.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"wrapper"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_23:
    v33 = [MEMORY[0x277CCA890] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"WFFileRepresentation * _Nullable WFCreateArchiveWithFileWrapper(NSFileWrapper * _Nonnull __strong, NSString * _Nonnull __strong, WFArchiveFormat  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v33 handleFailureInFunction:v34 file:@"WFArchiveUtilities.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"archiveFilename"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_3:
  v10 = [v8 stringByDeletingPathExtension];
  v11 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v8];
  v42 = [v7 fileWrappers];
  v12 = [v42 allKeys];
  v13 = [v12 sortedArrayUsingSelector:sel_compare_];

  v14 = [[WFArchiveWriter alloc] initWithDestinationURL:v11 format:v9 error:a4];
  if (v14 && (v15 = [[WFArchiveEntry alloc] initWithDirectoryName:v10], v16 = [(WFArchiveWriter *)v14 writeArchiveEntry:v15 error:a4], v15, v16))
  {
    v40 = v14;
    v41 = v10;
    v36 = v8;
    v37 = v7;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = v13;
    obj = v13;
    v17 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v39 = *v46;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          v20 = a4;
          if (*v46 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v45 + 1) + 8 * i);
          v22 = [v42 objectForKey:v21];
          v23 = [v22 regularFileContents];
          v24 = [WFArchiveEntry alloc];
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v41, v21];
          v26 = [v23 length];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __WFCreateArchiveWithFileWrapper_block_invoke;
          v43[3] = &unk_2783477F0;
          v44 = v23;
          v27 = v23;
          v28 = [(WFArchiveEntry *)v24 initWithFilename:v25 fileType:0x8000 filePermission:420 fileSize:v26 modificationDate:0 creationDate:0 dataProvider:v43];

          a4 = v20;
          LODWORD(v25) = [(WFArchiveWriter *)v40 writeArchiveEntry:v28 error:v20];

          if (!v25)
          {
            v29 = 0;
            v8 = v36;
            v7 = v37;
            v14 = v40;
            v10 = v41;
            goto LABEL_17;
          }
        }

        v18 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v14 = v40;
    if ([(WFArchiveWriter *)v40 finishWithError:a4])
    {
      obj = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E58]];
      v8 = v36;
      v29 = [WFFileRepresentation fileWithURL:"fileWithURL:options:ofType:proposedFilename:" options:v11 ofType:1 proposedFilename:?];
      v7 = v37;
      v10 = v41;
LABEL_17:
      v13 = v35;
    }

    else
    {
      v29 = 0;
      v8 = v36;
      v7 = v37;
      v10 = v41;
      v13 = v35;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

id __WFCreateArchiveWithFileWrapper_block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithData:*(a1 + 32)];

  return v1;
}

id WFExtractArchiveFile(void *a1, uint64_t a2)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [[WFArchiveReader alloc] initWithArchiveFile:v3 error:a2];
  if (!v4)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v5 = [v3 wfName];
  v6 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v5 isDirectory:1];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:a2];

  v9 = 0;
  if (v8)
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__1002;
    v34[4] = __Block_byref_object_dispose__1003;
    v35 = [WFFileRepresentation fileWithURL:v6 options:1];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __WFExtractArchiveFile_block_invoke;
    aBlock[3] = &unk_27834A178;
    aBlock[4] = v34;
    v28 = _Block_copy(aBlock);
    v10 = objc_opt_new();
    v11 = [(WFArchiveReader *)v4 extractArchiveToDestinationURL:v6 error:a2];
    v12 = v11;
    if (!v11)
    {
      v9 = 0;
      goto LABEL_22;
    }

    if ([v11 count] != 1)
    {
      goto LABEL_11;
    }

    v26 = [v12 firstObject];
    v14 = *MEMORY[0x277CBE890];
    v37[0] = *MEMORY[0x277CBE868];
    v13 = v37[0];
    v37[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v27 = [v26 resourceValuesForKeys:v15 error:0];

    v16 = [v27 objectForKey:v13];
    if ([v16 BOOLValue])
    {
      v17 = [v27 objectForKey:v14];
      v18 = [v17 BOOLValue];

      if (v18)
      {
LABEL_10:

LABEL_11:
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v12 = v12;
        v21 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v21)
        {
          v22 = *v30;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v30 != v22)
              {
                objc_enumerationMutation(v12);
              }

              v24 = [WFFileRepresentation fileWithURL:*(*(&v29 + 1) + 8 * i) options:3];
              [v10 addObject:v24];
            }

            v21 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
          }

          while (v21);
        }

        v9 = v10;
        goto LABEL_19;
      }

      v19 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = [v19 contentsOfDirectoryAtURL:v26 includingPropertiesForKeys:0 options:1 error:a2];

      if (!v16)
      {

        v9 = 0;
LABEL_19:

LABEL_22:
        v28[2](v28);

        _Block_object_dispose(v34, 8);
        goto LABEL_23;
      }

      v20 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v16];

      v12 = v20;
    }

    goto LABEL_10;
  }

LABEL_23:

LABEL_24:

  return v9;
}

void sub_21E258CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  (*(a12 + 16))();
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1002(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFExtractArchiveFile_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

id getWFTemporaryFileManagerLogObject()
{
  if (getWFTemporaryFileManagerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTemporaryFileManagerLogObject_onceToken, &__block_literal_global_1181);
  }

  v1 = getWFTemporaryFileManagerLogObject_log;

  return v1;
}

uint64_t __getWFTemporaryFileManagerLogObject_block_invoke()
{
  getWFTemporaryFileManagerLogObject_log = os_log_create(*MEMORY[0x277D7A500], "TemporaryFileManager");

  return MEMORY[0x2821F96F8]();
}

uint64_t gettag(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (*a2 >= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3 + 1;
  *a2 = v3 + 1;
  result = *(a1 + v3) & 0x1F;
  if (result != 31)
  {
    return result;
  }

  if (v5 >= a3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 31;
  while (*(a1 + v5) < 0)
  {
    *a2 = v5 + 1;
    result = *(a1 + v5++) + (result << 7) - 128;
    if (a3 == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t getlength(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (*a2 >= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + v3);
  v6 = v3 + 1;
  *a2 = v3 + 1;
  result = *(a1 + v3) & 0x7F;
  if (v3 + 1 + result >= a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 < 0)
  {
    v8 = 0;
    if (result)
    {
      v9 = 0;
      v10 = v6;
      do
      {
        v6 = v10 + 1;
        *a2 = v10 + 1;
        v8 = *(a1 + v10) | (v8 << 8);
        ++v9;
        ++v10;
      }

      while (v9 < result);
    }

    if (v6 + v8 > a3 || v8 > 0xFFFFFFFF - v6)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

id WFJSONSerializable(void *a1)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = WFSerializable(v1, v2);

  return v3;
}

id WFPlistSerializable(void *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = WFSerializable(v1, v2);

  return v3;
}

id WFSerializable(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          v3 = v3;
          v11 = v4;
          v10 = v3;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v3 allObjects];

    v3 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __WFSerializable_block_invoke;
    v15[3] = &unk_27834A228;
    v16 = v4;
    v10 = [v3 if_compactMap:v15];
    v11 = v16;
LABEL_14:

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __WFSerializable_block_invoke_2;
    v13[3] = &unk_278345168;
    v14 = v4;
    v10 = [v3 if_compactMap:v13];
    v11 = v14;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

id __WFSerializable_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = WFSerializable(a3, *(a1 + 32));
  *a5 = result;
  return result;
}

void WFAddDictionaryObjectToItemArray(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __WFAddDictionaryObjectToItemArray_block_invoke;
    v15[3] = &unk_278345140;
    v16 = v10;
    v17 = v11;
    v18 = v13;
    [v9 enumerateObjectsUsingBlock:v15];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setWf_preferredFileType:v11];
    }

    v14 = [WFContentItem itemWithObject:v9 named:v12 attributionSet:v13];
    if (v14)
    {
      [v10 addObject:v14];
    }
  }
}

id WFEnforceClass(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void __getCLCircularRegionClass_block_invoke(uint64_t a1)
{
  CoreLocationLibrary_1820();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLCircularRegion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLCircularRegionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLCircularRegionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CLCircularRegion+WFSerialization.m" lineNumber:17 description:{@"Unable to find class %s", "CLCircularRegion"}];

    __break(1u);
  }
}

void *__getCLLocationCoordinate2DMakeSymbolLoc_block_invoke_1819(uint64_t a1)
{
  v2 = CoreLocationLibrary_1820();
  result = dlsym(v2, "CLLocationCoordinate2DMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLLocationCoordinate2DMakeSymbolLoc_ptr_1818 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreLocationLibrary_1820()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_1829)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_1830;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783451D0;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_1829 = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_1829;
  if (!CoreLocationLibraryCore_frameworkLibrary_1829)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CLCircularRegion+WFSerialization.m" lineNumber:16 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_1830()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_1829 = result;
  return result;
}

id WFStatusPropertyValueForEKParticipantStatus(unint64_t a1)
{
  if (a1 <= 7)
  {
    a1 = WFLocalizedContentPropertyPossibleValueMarker(off_278345278[a1]);
  }

  return a1;
}

uint64_t unreadable_info(uint64_t a1, __int16 a2, char *a3)
{
  if (access(a3, 2) || (result = file_printf(a1, "writable, ", v6, v7, v8, v9, v10, v11, v19), result != -1))
  {
    if (access(a3, 1) || (result = file_printf(a1, "executable, ", v13, v14, v15, v16, v17, v18, v19), result != -1))
    {
      if ((a2 & 0xF000) != 0x8000 || (result = file_printf(a1, "regular file, ", v13, v14, v15, v16, v17, v18, v19), result != -1))
      {
        if (file_printf(a1, "no read permission", v13, v14, v15, v16, v17, v18, v19) == -1)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const char *magic_file(const char *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v9 = result;
    if (file_reset(result, 1, a3, a4, a5, a6, a7, a8) == -1)
    {
      return 0;
    }

    result = malloc_type_malloc(*(v9 + 280) + 129, 0x1000040AE2C30F4uLL);
    if (!result)
    {
      return result;
    }

    v10 = result;
    memset(&v105, 0, sizeof(v105));
    if (!a2)
    {
      v19 = 0;
      goto LABEL_123;
    }

    v11 = *(v9 + 68);
    if ((v11 & 2) != 0)
    {
      v12 = stat(a2, &v105);
    }

    else
    {
      v12 = lstat(a2, &v105);
    }

    memset(&v106, 0, sizeof(v106));
    if (v12)
    {
      v20 = *(v9 + 68);
      v21 = __error();
      v27 = *v21;
      if ((v20 & 0x200) == 0)
      {
        strerror(*v21);
        {
          v34 = -1;
        }

        else
        {
          v34 = 0;
        }

        goto LABEL_14;
      }

      v104 = a2;
      goto LABEL_29;
    }

    if ((v11 & 0x1000C10) != 0)
    {
      v36 = 0;
    }

    else
    {
      st_mode = v105.st_mode;
      if ((v105.st_mode & 0x800) != 0)
      {
        if (file_printf(v9, "%ssetuid", v13, v14, v15, v16, v17, v18, "") == -1)
        {
          goto LABEL_30;
        }

        v43 = v105.st_mode;
        v36 = 1;
      }

      else
      {
        v36 = 0;
        v43 = v105.st_mode;
      }

      if ((v43 & 0x400) != 0)
      {
        v44 = ", ";
        if ((st_mode & 0x800) == 0)
        {
          v44 = "";
        }

        if (file_printf(v9, "%ssetgid", v13, v14, v15, v16, v17, v18, v44) == -1)
        {
          goto LABEL_30;
        }

        ++v36;
        v43 = v105.st_mode;
      }

      if ((v43 & 0x200) != 0)
      {
        v45 = ", ";
        if (!v36)
        {
          v45 = "";
        }

        if (file_printf(v9, "%ssticky", v13, v14, v15, v16, v17, v18, v45) == -1)
        {
          goto LABEL_30;
        }

        ++v36;
      }
    }

    v37 = v11 & 0x410;
    v38 = v11 & 0x1000800;
    v39 = (v105.st_mode - 4096) >> 12;
    if (v39 > 4)
    {
      if ((v105.st_mode - 4096) >> 12 <= 8)
      {
        if (v39 != 5)
        {
          if (v39 == 7)
          {
            if ((*(v9 + 68) & 8) == 0 && !v105.st_size)
            {
              if ((v11 & 0x410) != 0)
              {
                v40 = "x-empty";
                goto LABEL_117;
              }

              if (v38)
              {
                goto LABEL_122;
              }

              v69 = ", ";
              if (!v36)
              {
                v69 = "";
              }

              v56 = file_printf(v9, "%sempty", v13, v14, v15, v16, v17, v18, v69);
LABEL_182:
              if (v56 != -1)
              {
                goto LABEL_16;
              }

LABEL_30:
              v19 = 0;
              v35 = -1;
              v34 = -1;
              goto LABEL_148;
            }

LABEL_67:
            if ((v11 & 0x1000C10) == 0 && v36 && file_printf(v9, " ", v13, v14, v15, v16, v17, v18, v103) == -1)
            {
              goto LABEL_30;
            }

LABEL_122:
            *__error() = 0;
            v19 = open(a2, 4);
            if (v19 < 0)
            {
              if (!stat(a2, &v105) && unreadable_info(v9, v105.st_mode, a2) == -1)
              {
                v34 = -1;
              }

              else
              {
                v34 = 0;
              }

              free(v10);
              if (v19 == -1)
              {
LABEL_155:
                if (!v34)
                {
                  return file_getbuffer(v9);
                }

                return 0;
              }

LABEL_151:
              if (a2 && v19)
              {
                close(v19);
                if ((*(v9 + 68) & 0x80) != 0)
                {
                  v107.tv_sec = v105.st_atimespec.tv_sec;
                  *&v107.tv_usec = 0;
                  tv_sec = v105.st_mtimespec.tv_sec;
                  v109 = 0;
                  utimes(a2, &v107);
                }
              }

              goto LABEL_155;
            }

LABEL_123:
            v74 = fstat(v19, &v105);
            if (v74)
            {
              v75 = 0;
            }

            else
            {
              v75 = (v105.st_mode & 0xF000) == 4096;
            }

            v76 = v75;
            if (a2)
            {
              v35 = -1;
              if (v76)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v35 = lseek(v19, 0, 1);
              if (v76)
              {
LABEL_131:
                v77 = 0;
                while (1)
                {
                  v78 = sread(v19, &v10[v77], *(v9 + 280) - v77);
                  if (v78 < 1)
                  {
                    break;
                  }

                  v77 += v78;
                  if (v78 < 0x200)
                  {
                    goto LABEL_142;
                  }
                }

                if (!v77 && a2)
                {
                  v85 = unreadable_info(v9, v105.st_mode, a2);
                  goto LABEL_145;
                }

LABEL_142:
                v86 = &v10[v77];
                v86[128] = 0;
                *(v86 + 6) = 0u;
                *(v86 + 7) = 0u;
                *(v86 + 4) = 0u;
                *(v86 + 5) = 0u;
                *(v86 + 2) = 0u;
                *(v86 + 3) = 0u;
                *v86 = 0u;
                *(v86 + 1) = 0u;
                goto LABEL_143;
              }
            }

            v82 = read(v19, v10, *(v9 + 280));
            if (v82 == -1)
            {
              v87 = *__error();
              if (a2 || !v19)
              {
                v93 = "/dev/stdin";
                if (a2)
                {
                  LOBYTE(v93) = a2;
                }
              }

              else
              {
                file_error(v9, v87, "cannot read fd %d", v88, v89, v90, v91, v92, v19);
              }

              free(v10);
              v34 = -1;
              goto LABEL_149;
            }

            v77 = v82;
            v83 = &v10[v82];
            v83[128] = 0;
            *(v83 + 6) = 0u;
            *(v83 + 7) = 0u;
            *(v83 + 4) = 0u;
            *(v83 + 5) = 0u;
            *(v83 + 2) = 0u;
            *(v83 + 3) = 0u;
            *v83 = 0u;
            *(v83 + 1) = 0u;
            if (v74)
            {
              v84 = 0;
              goto LABEL_144;
            }

LABEL_143:
            v84 = &v105;
LABEL_144:
            v85 = file_buffer(v9, v19, v84, v10, v77, v79, v80, v81);
LABEL_145:
            if (v85 == -1)
            {
              v34 = -1;
            }

            else
            {
              v34 = 0;
            }

            goto LABEL_148;
          }

LABEL_57:
          file_error(v9, 0, "invalid mode 0%o", v14, v15, v16, v17, v18, v105.st_mode);
          goto LABEL_30;
        }

        if ((*(v9 + 68) & 8) != 0)
        {
          goto LABEL_67;
        }

        if ((v11 & 0x410) == 0)
        {
          if (v38)
          {
            goto LABEL_122;
          }

          v67 = ", ";
          if (!v36)
          {
            v67 = "";
          }

          v56 = file_printf(v9, "%sblock special (%ld/%ld)", v13, v14, v15, v16, v17, v18, v67);
          goto LABEL_182;
        }

        v40 = "blockdevice";
LABEL_117:
        v73 = handle_mime(v9, v37, v40, v14, v15, v16, v17, v18);
        if (v73 == -1)
        {
          v34 = -1;
        }

        else
        {
          v34 = 1;
        }

        if (v73 != -1)
        {
          goto LABEL_121;
        }

        goto LABEL_14;
      }

      if (v39 != 9)
      {
        if (v39 != 11)
        {
          goto LABEL_57;
        }

        if ((v11 & 0x410) == 0)
        {
          if (v38)
          {
            goto LABEL_122;
          }

          v57 = ", ";
          if (!v36)
          {
            v57 = "";
          }

          v56 = file_printf(v9, "%ssocket", v13, v14, v15, v16, v17, v18, v57);
          goto LABEL_182;
        }

        v40 = "socket";
        goto LABEL_117;
      }

      v46 = readlink(a2, v110, 0x3FFuLL);
      if (v46 <= 0)
      {
        if ((*(v9 + 69) & 2) != 0)
        {
          v27 = *__error();
          v104 = a2;
LABEL_29:
          file_error(v9, v27, v41, v22, v23, v24, v25, v26, v104);
          goto LABEL_30;
        }

        if ((v11 & 0x410) == 0)
        {
          if (v38)
          {
            goto LABEL_122;
          }

          if (v36)
          {
            v48 = ", ";
          }

          else
          {
            v48 = "";
          }

          v49 = __error();
          strerror(*v49);
          goto LABEL_182;
        }

LABEL_116:
        v40 = "symlink";
        goto LABEL_117;
      }

      v110[v46] = 0;
      if (v110[0] == 47)
      {
        v47 = v110;
        goto LABEL_113;
      }

      v59 = strrchr(a2, 47);
      if (v59)
      {
        if (v59 - a2 >= 1024)
        {
          if ((*(v9 + 69) & 2) != 0)
          {
          }

          else if ((v11 & 0x410) != 0)
          {
            if (handle_mime(v9, v37, "x-path-too-long", v61, v62, v63, v64, v65) != -1)
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (v38)
            {
              goto LABEL_122;
            }

            v102 = ", ";
            if (!v36)
            {
              v102 = "";
            }

            {
              goto LABEL_16;
            }
          }

          v34 = -1;
          goto LABEL_14;
        }

        v70 = &v107;
        v71 = &v107 + v59 - a2;
        __strlcpy_chk();
        v71[1] = 0;
        __strlcat_chk();
      }

      else
      {
        v70 = v110;
      }

      v47 = v70;
LABEL_113:
      if (stat(v47, &v106) < 0)
      {
        v94 = __error();
        v34 = bad_link(v9, *v94, v110, v95, v96, v97, v98, v99);
        goto LABEL_14;
      }

      if ((*(v9 + 68) & 2) != 0)
      {
        *(v9 + 68) &= 2u;
        v100 = magic_file(v9, v110);
        *(v9 + 68) |= 2u;
        if (v100)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v100)
        {
LABEL_121:
          if (!v38)
          {
            goto LABEL_14;
          }

          goto LABEL_122;
        }

LABEL_14:
        if (v34 == -1)
        {
LABEL_17:
          v19 = 0;
          v35 = -1;
LABEL_148:
          free(v10);
LABEL_149:
          if (v35 != -1)
          {
            lseek(v19, v35, 0);
          }

          goto LABEL_151;
        }

        if (v34)
        {
LABEL_16:
          v34 = 0;
          goto LABEL_17;
        }

        goto LABEL_122;
      }

      if (!v37)
      {
        if (v38)
        {
          goto LABEL_122;
        }

        v101 = ", ";
        if (!v36)
        {
          v101 = "";
        }

        v56 = file_printf(v9, "%ssymbolic link to %s", v72, v14, v15, v16, v17, v18, v101);
        goto LABEL_182;
      }

      goto LABEL_116;
    }

    if (v39)
    {
      if (v39 == 1)
      {
        if ((*(v9 + 68) & 8) != 0)
        {
          goto LABEL_67;
        }

        if ((v11 & 0x410) == 0)
        {
          if (v38)
          {
            goto LABEL_122;
          }

          v68 = ", ";
          if (!v36)
          {
            v68 = "";
          }

          v56 = file_printf(v9, "%scharacter special (%ld/%ld)", v13, v14, v15, v16, v17, v18, v68);
          goto LABEL_182;
        }

        v40 = "chardevice";
      }

      else
      {
        if (v39 != 3)
        {
          goto LABEL_57;
        }

        if ((v11 & 0x410) == 0)
        {
          if (v38)
          {
            goto LABEL_122;
          }

          v58 = ", ";
          if (!v36)
          {
            v58 = "";
          }

          v56 = file_printf(v9, "%sdirectory", v13, v14, v15, v16, v17, v18, v58);
          goto LABEL_182;
        }

        v40 = "directory";
      }

      goto LABEL_117;
    }

    if ((*(v9 + 68) & 8) == 0)
    {
      if ((v11 & 0x410) == 0)
      {
        if (v38)
        {
          goto LABEL_122;
        }

        v66 = ", ";
        if (!v36)
        {
          v66 = "";
        }

        v56 = file_printf(v9, "%sfifo (named pipe)", v13, v14, v15, v16, v17, v18, v66);
        goto LABEL_182;
      }

      v40 = "fifo";
      goto LABEL_117;
    }

LABEL_91:
    if (!v38)
    {
      goto LABEL_16;
    }

    goto LABEL_122;
  }

  return result;
}

Class initUIPrintFormatter()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_231);
  }

  result = objc_getClass("UIPrintFormatter");
  classUIPrintFormatter = result;
  getUIPrintFormatterClass = UIPrintFormatterFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

Class initUISimpleTextPrintFormatter()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_231);
  }

  result = objc_getClass("UISimpleTextPrintFormatter");
  classUISimpleTextPrintFormatter = result;
  getUISimpleTextPrintFormatterClass = UISimpleTextPrintFormatterFunction;
  return result;
}

id getWFWFContactLogObject()
{
  if (getWFWFContactLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFContactLogObject_onceToken, &__block_literal_global_2994);
  }

  v1 = getWFWFContactLogObject_log;

  return v1;
}

uint64_t __getWFWFContactLogObject_block_invoke()
{
  getWFWFContactLogObject_log = os_log_create(*MEMORY[0x277D7A500], "WFContact");

  return MEMORY[0x2821F96F8]();
}

void sub_21E2658A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMKMapItemClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MapKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783453B8;
    v8 = 0;
    MapKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFMKMapItemContentItem.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MKMapItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFMKMapItemContentItem.m" lineNumber:20 description:{@"Unable to find class %s", "MKMapItem"}];

LABEL_10:
    __break(1u);
  }

  getMKMapItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MapKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary = result;
  return result;
}

id WFGenerateGIFFromImageFiles(void *a1, void *a2, uint64_t a3, void *a4, double a5, double a6, float a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __WFGenerateGIFFromImageFiles_block_invoke;
  block[3] = &unk_278345428;
  v28 = a5;
  v29 = a6;
  v24 = v13;
  v25 = v14;
  v30 = a3;
  v31 = a7;
  v26 = v15;
  v27 = v32;
  v17 = v14;
  v18 = v15;
  v19 = v13;
  dispatch_async(v16, block);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __WFGenerateGIFFromImageFiles_block_invoke_6;
  aBlock[3] = &unk_27834A178;
  aBlock[4] = v32;
  v20 = _Block_copy(aBlock);

  _Block_object_dispose(v32, 8);

  return v20;
}

void __WFGenerateGIFFromImageFiles_block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) count])
  {
    (*(*(a1 + 48) + 16))();
  }

  v2 = WFAutoSizeFromInputSize(*(a1 + 32), *(a1 + 64), *(a1 + 72));
  v3 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __WFGenerateGIFFromImageFiles_block_invoke_2;
  v15[3] = &__block_descriptor_48_e53_v32__0__WFFileRepresentation_8Q16___v_____NSError__24l;
  *&v15[4] = v2;
  v15[5] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __WFGenerateGIFFromImageFiles_block_invoke_5;
  v10[3] = &unk_278345400;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v13 = *(a1 + 80);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v14 = *(a1 + 88);
  *&v9 = v5;
  *(&v9 + 1) = *(a1 + 56);
  v11 = v8;
  v12 = v9;
  [v3 if_mapAsynchronously:v15 completionHandler:v10];
}

double WFAutoSizeFromInputSize(void *a1, double a2, double a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (a2 != 0.0 && a3 == 0.0)
  {
    v8 = [v6 firstObject];
    v9 = WFImageSizeFromFile(v8, 0);
    v11 = v10;

    v5 = a2 * (v11 / v9);
  }

  if (a2 == 0.0)
  {
    v12 = a2;
    if (v5 != 0.0)
    {
      v13 = [v7 firstObject];
      v14 = WFImageSizeFromFile(v13, 0);
      v16 = v15;

      v12 = v5 * (v14 / v16);
    }
  }

  else
  {
    v12 = a2;
  }

  if (v12 == 0.0 && v5 == 0.0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = WFImageSizeFromFile(*(*(&v28 + 1) + 8 * i), 0);
          if (v12 == 0.0 || v22 < a2)
          {
            v12 = v22;
          }

          if (v5 == 0.0 || v23 < a3)
          {
            v5 = v23;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:{16, v22}];
      }

      while (v19);
    }

    if (v12 > 500.0)
    {
      v26 = v5 / v12;
      v12 = 500.0;
      v5 = v26 * 500.0;
    }

    if (v5 > 500.0)
    {
      v12 = v12 * 500.0 / v5;
    }
  }

  return v12;
}

void __WFGenerateGIFFromImageFiles_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  if (WFImageSizeFromFile(v7, 0) == *(a1 + 32) && v8 == *(a1 + 40))
  {
    v6[2](v6, v7, 0);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __WFGenerateGIFFromImageFiles_block_invoke_4;
    v10[3] = &unk_278349F78;
    v11 = v6;
    WFAsyncTransformedImageFromImage(v7, 0, &__block_literal_global_3242, v10, *(a1 + 32), *(a1 + 40));

    v7 = v11;
  }
}

void __WFGenerateGIFFromImageFiles_block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *MEMORY[0x277CE1D88];
    v36 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
    v35 = [WFFileRepresentation proposedFilenameForFile:*(a1 + 32) ofType:?];
    v7 = [WFTemporaryFileManager createTemporaryFileWithFilename:?];
    v8 = [v6 identifier];
    v34 = v7;
    v9 = CGImageDestinationCreateWithURL(v7, v8, [*(a1 + 40) count], 0);

    v48 = *MEMORY[0x277CD31C8];
    v10 = v48;
    v46[0] = *MEMORY[0x277CD31E0];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
    v46[1] = *MEMORY[0x277CD31D8];
    v47[0] = v11;
    v47[1] = MEMORY[0x277CBEC28];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    v49[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];

    v33 = v13;
    CGImageDestinationSetProperties(v9, v13);
    v44 = v10;
    v42 = *MEMORY[0x277CD31C0];
    *&v14 = 1.0 / *(a1 + 72);
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    v43 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v45 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
LABEL_5:
      v22 = 0;
      while (1)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v18);
        }

        if (*(*(*(a1 + 56) + 8) + 24))
        {
          break;
        }

        v23 = WFImageSourceCreateFromFile(*(*(&v37 + 1) + 8 * v22), 0);
        if (v23)
        {
          v24 = v23;
          if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
          {
            v25 = 0;
            do
            {
              if (v25 >= CGImageSourceGetCount(v24))
              {
                break;
              }

              CGImageDestinationAddImageFromSource(v9, v24, v25++, v17);
            }

            while ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0);
          }

          CFRelease(v24);
        }

        if (++v22 == v20)
        {
          v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v20)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      CFRelease(v9);
      v26 = [MEMORY[0x277CCAA00] defaultManager];
      v27 = v34;
      [v26 removeItemAtURL:v34 error:0];

      v28 = *(a1 + 48);
      v29 = [MEMORY[0x277CCA9B8] userCancelledError];
      (*(v28 + 16))(v28, 0, v29);
      v31 = v35;
      v30 = v36;
    }

    else
    {
      CGImageDestinationFinalize(v9);
      CFRelease(v9);
      v32 = *(a1 + 48);
      v27 = v34;
      v31 = v35;
      v30 = v36;
      v29 = [WFFileRepresentation fileWithURL:v34 options:1 ofType:v36 proposedFilename:v35];
      (*(v32 + 16))(v32, v29, 0);
    }
  }
}

id WFGenerateGIFFromVideo(void *a1, void *a2, uint64_t a3, void *a4, double a5, double a6, float a7)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__3245;
  v39[4] = __Block_byref_object_dispose__3246;
  v40 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v16 = getAVURLAssetClass_softClass_3247;
  v47 = getAVURLAssetClass_softClass_3247;
  if (!getAVURLAssetClass_softClass_3247)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __getAVURLAssetClass_block_invoke_3248;
    v43[3] = &unk_27834A178;
    v43[4] = &v44;
    __getAVURLAssetClass_block_invoke_3248(v43);
    v16 = v45[3];
  }

  v17 = v16;
  _Block_object_dispose(&v44, 8);
  v18 = [v13 fileURL];
  v19 = [v16 assetWithURL:v18];

  v48[0] = @"duration";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __WFGenerateGIFFromVideo_block_invoke;
  v28[3] = &unk_278345478;
  v21 = v19;
  v29 = v21;
  v33 = v41;
  v22 = v15;
  v32 = v22;
  v38 = a7;
  v23 = v14;
  v36 = a5;
  v37 = a6;
  v30 = v23;
  v34 = v39;
  v35 = a3;
  v24 = v13;
  v31 = v24;
  [v21 loadValuesAsynchronouslyForKeys:v20 completionHandler:v28];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __WFGenerateGIFFromVideo_block_invoke_2_80;
  aBlock[3] = &unk_2783454A0;
  aBlock[4] = v41;
  aBlock[5] = v39;
  v25 = _Block_copy(aBlock);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  return v25;
}

void sub_21E266D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose((v36 - 144), 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__3245(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __getAVURLAssetClass_block_invoke_3248(uint64_t a1)
{
  AVFoundationLibrary_3263();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVURLAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVURLAssetClass_softClass_3247 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVURLAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnimatedGIFTranscoder.m" lineNumber:47 description:{@"Unable to find class %s", "AVURLAsset"}];

    __break(1u);
  }
}

void __WFGenerateGIFFromVideo_block_invoke(uint64_t a1)
{
  v98[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v94 = 0;
  v3 = [v2 statusOfValueForKey:@"duration" error:&v94];
  v59 = v94;
  if (v3 == 2 && *(*(*(a1 + 64) + 8) + 24) != 1)
  {
    v4 = *(a1 + 32);
    v5 = getAVMediaTypeVideo();
    v6 = [v4 tracksWithMediaType:v5];
    v57 = [v6 firstObject];

    if (v57 && *(*(*(a1 + 64) + 8) + 24) != 1)
    {
      v92 = 0uLL;
      v93 = 0.0;
      v7 = *(a1 + 32);
      if (v7)
      {
        [v7 duration];
      }

      *&v76.a = v92;
      v76.c = v93;
      soft_CMTimeGetSeconds(&v76);
      v9 = v8;
      v10 = *(a1 + 104);
      v11 = *MEMORY[0x277CE1D88];
      v54 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
      v53 = [WFFileRepresentation proposedFilenameForFile:*(a1 + 40) ofType:v54];
      url = [WFTemporaryFileManager createTemporaryFileWithFilename:v53];
      v88 = 0;
      v89 = &v88;
      v90 = 0x2020000000;
      v12 = [v11 identifier];
      v58 = (v9 * v10);
      v13 = CGImageDestinationCreateWithURL(url, v12, v58, 0);

      v91 = v13;
      v97 = *MEMORY[0x277CD31C8];
      v95[0] = *MEMORY[0x277CD31E0];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 80)];
      v95[1] = *MEMORY[0x277CD31D8];
      v96[0] = v14;
      v96[1] = MEMORY[0x277CBEC28];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
      v98[0] = v15;
      properties = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:&v97 count:1];

      CGImageDestinationSetProperties(v89[3], properties);
      [v57 naturalSize];
      v17 = v16;
      v19 = v18;
      [v57 preferredTransform];
      v20 = fabs(v19 * v76.c + v76.a * v17);
      v21 = fabs(v19 * v76.d + v76.b * v17);
      v22 = *(a1 + 88);
      v55 = v22;
      v56 = *(a1 + 96);
      if (v22 != 0.0 && *(a1 + 96) == 0.0)
      {
        v56 = v22 * (v21 / v20);
      }

      if (v22 == 0.0 && v56 != 0.0)
      {
        v55 = v20 / v21 * v56;
      }

      if (v55 == 0.0 && v56 == 0.0)
      {
        v56 = 500.0;
        if (v20 > 500.0)
        {
          v23 = v21 / v20;
          v20 = 500.0;
          v21 = v23 * 500.0;
        }

        if (v21 <= 500.0)
        {
          v56 = v21;
        }

        else
        {
          v20 = v20 * 500.0 / v21;
        }

        v55 = v20;
      }

      [v57 preferredTransform];
      CGAffineTransformInvert(&v76, &v87);
      v49 = *&v76.c;
      v50 = *&v76.a;
      v87.a = 0.0;
      *&v87.b = &v87;
      *&v87.c = 0x2050000000;
      v24 = getAVAssetImageGeneratorClass_softClass;
      *&v87.d = getAVAssetImageGeneratorClass_softClass;
      if (!getAVAssetImageGeneratorClass_softClass)
      {
        *&v76.a = MEMORY[0x277D85DD0];
        *&v76.b = 3221225472;
        *&v76.c = __getAVAssetImageGeneratorClass_block_invoke;
        *&v76.d = &unk_27834A178;
        *&v76.tx = &v87;
        __getAVAssetImageGeneratorClass_block_invoke(&v76);
        v24 = *(*&v87.b + 24);
      }

      v25 = v24;
      _Block_object_dispose(&v87, 8);
      v26 = [v24 assetImageGeneratorWithAsset:*(a1 + 32)];
      getkCMTimeZero(&v85);
      *&v76.a = v85;
      v76.c = v86;
      [v26 setRequestedTimeToleranceAfter:&v76];
      getkCMTimeZero(&v83);
      *&v76.a = v83;
      v76.c = v84;
      [v26 setRequestedTimeToleranceBefore:&v76];
      [v26 setAppliesPreferredTrackTransform:1];
      [v26 setMaximumSize:{vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v49, v56), v50, v55))}];
      v27 = objc_opt_new();
      if (v58)
      {
        for (i = 0; i != v58; ++i)
        {
          v29 = MEMORY[0x277CCAE60];
          soft_CMTimeMake(&v78, i, *(a1 + 104));
          v30 = DWORD2(v92);
          v87.a = 0.0;
          *&v87.b = &v87;
          *&v87.c = 0x2020000000;
          v31 = getCMTimeConvertScaleSymbolLoc_ptr;
          *&v87.d = getCMTimeConvertScaleSymbolLoc_ptr;
          if (!getCMTimeConvertScaleSymbolLoc_ptr)
          {
            *&v76.a = MEMORY[0x277D85DD0];
            *&v76.b = 3221225472;
            *&v76.c = __getCMTimeConvertScaleSymbolLoc_block_invoke;
            *&v76.d = &unk_27834A178;
            *&v76.tx = &v87;
            v32 = CoreMediaLibrary();
            v33 = dlsym(v32, "CMTimeConvertScale");
            *(*(*&v76.tx + 8) + 24) = v33;
            getCMTimeConvertScaleSymbolLoc_ptr = *(*(*&v76.tx + 8) + 24);
            v31 = *(*&v87.b + 24);
          }

          _Block_object_dispose(&v87, 8);
          if (!v31)
          {
            v47 = [MEMORY[0x277CCA890] currentHandler];
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CMTime soft_CMTimeConvertScale(CMTime, int32_t, CMTimeRoundingMethod)"}];
            [v47 handleFailureInFunction:v48 file:@"WFAnimatedGIFTranscoder.m" lineNumber:42 description:{@"%s", dlerror()}];

            __break(1u);
          }

          *&v76.a = v78;
          *&v76.c = v79;
          v31(&v87, &v76, v30, 1);
          v34 = [v29 valueWithCMTime:&v87];
          [v27 addObject:v34];
        }
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __WFGenerateGIFFromVideo_block_invoke_2;
      aBlock[3] = &unk_278349550;
      v35 = v26;
      v82 = v35;
      v36 = _Block_copy(aBlock);
      v37 = *(*(a1 + 72) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;

      *&v78 = 0;
      *(&v78 + 1) = &v78;
      v79 = 0x2020000000;
      v80 = 0;
      v76.a = 0.0;
      *&v76.b = &v76;
      *&v76.c = 0x3810000000;
      *&v76.d = "";
      v76.tx = 0.0;
      v76.ty = 0.0;
      v77 = 0;
      getkCMTimeZero(&v76.tx);
      v87.a = 0.0;
      *&v87.b = &v87;
      *&v87.c = 0x3032000000;
      *&v87.d = __Block_byref_object_copy__70;
      *&v87.tx = __Block_byref_object_dispose__71;
      v87.ty = 0.0;
      v39 = objc_opt_new();
      v40 = objc_opt_new();
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __WFGenerateGIFFromVideo_block_invoke_73;
      v60[3] = &unk_278345450;
      v70 = &v88;
      v74 = v55;
      v75 = v56;
      v61 = v57;
      v62 = *(a1 + 48);
      v71 = &v78;
      v41 = v39;
      v63 = v41;
      v72 = &v76;
      v42 = v40;
      v64 = v42;
      v73 = &v87;
      v43 = v27;
      v65 = v43;
      v69 = *(a1 + 56);
      v44 = url;
      v66 = v44;
      v45 = v54;
      v67 = v45;
      v46 = v53;
      v68 = v46;
      [v35 generateCGImagesAsynchronouslyForTimes:v43 completionHandler:v60];

      _Block_object_dispose(&v87, 8);
      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(&v78, 8);

      _Block_object_dispose(&v88, 8);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_21E2677E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose((v68 - 248), 8);
  _Unwind_Resume(a1);
}

uint64_t __WFGenerateGIFFromVideo_block_invoke_2_80(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void getAVMediaTypeVideo()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVMediaTypeVideoSymbolLoc_ptr_3273;
  v9 = getAVMediaTypeVideoSymbolLoc_ptr_3273;
  if (!getAVMediaTypeVideoSymbolLoc_ptr_3273)
  {
    v1 = AVFoundationLibrary_3263();
    v7[3] = dlsym(v1, "AVMediaTypeVideo");
    getAVMediaTypeVideoSymbolLoc_ptr_3273 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMediaType getAVMediaTypeVideo(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAnimatedGIFTranscoder.m" lineNumber:52 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2679DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_CMTimeGetSeconds(__int128 *a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v2 = getCMTimeGetSecondsSymbolLoc_ptr;
  v13 = getCMTimeGetSecondsSymbolLoc_ptr;
  if (!getCMTimeGetSecondsSymbolLoc_ptr)
  {
    *&v6 = MEMORY[0x277D85DD0];
    *(&v6 + 1) = 3221225472;
    v7 = __getCMTimeGetSecondsSymbolLoc_block_invoke;
    v8 = &unk_27834A178;
    v9 = &v10;
    v3 = CoreMediaLibrary();
    v11[3] = dlsym(v3, "CMTimeGetSeconds");
    getCMTimeGetSecondsSymbolLoc_ptr = *(v9[1] + 24);
    v2 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v2)
  {
    v6 = *a1;
    v7 = *(a1 + 2);
    v2(&v6);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Float64 soft_CMTimeGetSeconds(CMTime)"];
    [v4 handleFailureInFunction:v5 file:@"WFAnimatedGIFTranscoder.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E267B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVAssetImageGeneratorClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_3263();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetImageGenerator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetImageGeneratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetImageGeneratorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnimatedGIFTranscoder.m" lineNumber:48 description:{@"Unable to find class %s", "AVAssetImageGenerator"}];

    __break(1u);
  }
}

void getkCMTimeZero(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getkCMTimeZeroSymbolLoc_ptr;
  v9 = getkCMTimeZeroSymbolLoc_ptr;
  if (!getkCMTimeZeroSymbolLoc_ptr)
  {
    v3 = CoreMediaLibrary();
    v7[3] = dlsym(v3, "kCMTimeZero");
    getkCMTimeZeroSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    *a1 = *v2;
    *(a1 + 16) = *(v2 + 16);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CMTime getkCMTimeZero(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAnimatedGIFTranscoder.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E267D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_CMTimeMake(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = getCMTimeMakeSymbolLoc_ptr;
  v12 = getCMTimeMakeSymbolLoc_ptr;
  if (!getCMTimeMakeSymbolLoc_ptr)
  {
    v6 = CoreMediaLibrary();
    v10[3] = dlsym(v6, "CMTimeMake");
    getCMTimeMakeSymbolLoc_ptr = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v5)
  {
    v5(a2, a3);
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CMTime soft_CMTimeMake(int64_t, int32_t)"}];
    [v7 handleFailureInFunction:v8 file:@"WFAnimatedGIFTranscoder.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E267F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCMTimeConvertScaleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeConvertScale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeConvertScaleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreMediaLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreMediaLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreMediaLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278345578;
    v6 = 0;
    CoreMediaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreMediaLibraryCore_frameworkLibrary;
  if (!CoreMediaLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreMediaLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAnimatedGIFTranscoder.m" lineNumber:38 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFGenerateGIFFromVideo_block_invoke_73(uint64_t a1, uint64_t a2, CGImageRef Image, CGFloat *a4, uint64_t a5, void *a6)
{
  v83[1] = *MEMORY[0x277D85DE8];
  v11 = a6;
  if (!*(*(*(a1 + 104) + 8) + 24))
  {
    goto LABEL_32;
  }

  if (Image && !a5)
  {
    CFRetain(Image);
    Width = CGImageGetWidth(Image);
    Height = CGImageGetHeight(Image);
    v14 = *(a1 + 136);
    v15 = *(a1 + 144);
    if (v14 == Width && v15 == Height)
    {
      v17 = *(a1 + 32);
      if (v17)
      {
        [v17 preferredTransform];
      }

      else
      {
        memset(&v75, 0, sizeof(v75));
      }

      if (CGAffineTransformIsIdentity(&v75))
      {
LABEL_17:
        v25 = MEMORY[0x277CCACA8];
        v26 = [*(a1 + 40) wfName];
        v27 = [v25 stringWithFormat:@"%@-%lu.jpg", v26, *(*(*(a1 + 112) + 8) + 24)];

        v28 = [WFTemporaryFileManager createTemporaryFileWithFilename:v27];
        v29 = *MEMORY[0x277CE1DC0];
        v30 = [*MEMORY[0x277CE1DC0] identifier];
        v31 = CGImageDestinationCreateWithURL(v28, v30, 1uLL, 0);

        CGImageDestinationAddImage(v31, Image, 0);
        CGImageDestinationFinalize(v31);
        CFRelease(v31);
        CFRelease(Image);
        v32 = [MEMORY[0x277D79F68] typeWithUTType:v29];
        v33 = [WFFileRepresentation fileWithURL:v28 options:1 ofType:v32 proposedFilename:v27];

        v34 = *(a1 + 48);
        v35 = MEMORY[0x277CCABB0];
        *&v75.a = *a4;
        v75.c = a4[2];
        soft_CMTimeGetSeconds(&v75);
        v36 = [v35 numberWithDouble:?];
        [v34 setObject:v33 forKey:v36];

        v74 = 0.0;
        v37 = *(*(a1 + 120) + 8);
        v71 = *a4;
        v72 = a4[2];
        v73 = 0uLL;
        v69 = *(v37 + 32);
        v70 = *(v37 + 48);
        *&v76 = 0;
        *(&v76 + 1) = &v76;
        v77 = 0x2020000000;
        v38 = getCMTimeSubtractSymbolLoc_ptr;
        v78 = getCMTimeSubtractSymbolLoc_ptr;
        if (!getCMTimeSubtractSymbolLoc_ptr)
        {
          *&v75.a = MEMORY[0x277D85DD0];
          *&v75.b = 3221225472;
          *&v75.c = __getCMTimeSubtractSymbolLoc_block_invoke;
          *&v75.d = &unk_27834A178;
          *&v75.tx = &v76;
          v39 = CoreMediaLibrary();
          v40 = dlsym(v39, "CMTimeSubtract");
          *(*(*&v75.tx + 8) + 24) = v40;
          getCMTimeSubtractSymbolLoc_ptr = *(*(*&v75.tx + 8) + 24);
          v38 = *(*(&v76 + 1) + 24);
        }

        _Block_object_dispose(&v76, 8);
        if (!v38)
        {
          v63 = [MEMORY[0x277CCA890] currentHandler];
          v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CMTime soft_CMTimeSubtract(CMTime, CMTime)"}];
          [v63 handleFailureInFunction:v64 file:@"WFAnimatedGIFTranscoder.m" lineNumber:44 description:{@"%s", dlerror()}];

          __break(1u);
        }

        *&v75.a = v71;
        v75.c = v72;
        v76 = v69;
        v77 = v70;
        v38(&v73, &v75, &v76);
        v82 = *MEMORY[0x277CD31C8];
        v80 = *MEMORY[0x277CD31C0];
        v41 = MEMORY[0x277CCABB0];
        *&v75.a = v73;
        v75.c = v74;
        soft_CMTimeGetSeconds(&v75);
        v42 = [v41 numberWithDouble:?];
        v81 = v42;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v83[0] = v43;
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];

        v45 = *(a1 + 56);
        v46 = MEMORY[0x277CCABB0];
        *&v75.a = *a4;
        v75.c = a4[2];
        soft_CMTimeGetSeconds(&v75);
        v47 = [v46 numberWithDouble:?];
        [v45 setObject:v44 forKey:v47];

        goto LABEL_21;
      }

      v14 = *(a1 + 136);
      v15 = *(a1 + 144);
    }

    v18 = [MEMORY[0x277D79DF8] HDRCapableContextWithSize:v14 scale:{v15, 1.0}];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
      CGContextTranslateCTM([v19 CGContext], 0.0, *(a1 + 144));
      v21 = v19;
      CGContextScaleCTM([v19 CGContext], 1.0, -1.0);
      v22 = v19;
      v23 = [v19 CGContext];
      v84.origin.x = *MEMORY[0x277CBF348];
      v84.origin.y = *(MEMORY[0x277CBF348] + 8);
      v84.size.width = *(a1 + 136);
      v84.size.height = *(a1 + 144);
      CGContextDrawImage(v23, v84, Image);
      CFRelease(Image);
      v24 = v19;
      Image = CGBitmapContextCreateImage([v19 CGContext]);
    }

    goto LABEL_17;
  }

LABEL_21:
  ++*(*(*(a1 + 112) + 8) + 24);
  v48 = *(*(a1 + 120) + 8);
  v49 = *a4;
  *(v48 + 48) = a4[2];
  *(v48 + 32) = v49;
  if (v11)
  {
    objc_storeStrong((*(*(a1 + 128) + 8) + 40), a6);
  }

  v50 = *(*(*(a1 + 112) + 8) + 24);
  if (v50 >= [*(a1 + 64) count])
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v51 = [*(a1 + 48) allKeys];
    v52 = [v51 sortedArrayUsingSelector:sel_compare_];

    v53 = [v52 countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v53)
    {
      v54 = *v66;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v66 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v65 + 1) + 8 * i);
          v57 = [*(a1 + 48) objectForKeyedSubscript:v56];
          v58 = WFImageSourceCreateFromFile(v57, 0);

          v59 = *(*(*(a1 + 104) + 8) + 24);
          v60 = [*(a1 + 56) objectForKeyedSubscript:v56];
          CGImageDestinationAddImageFromSource(v59, v58, 0, v60);

          CFRelease(v58);
        }

        v53 = [v52 countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v53);
    }

    CGImageDestinationFinalize(*(*(*(a1 + 104) + 8) + 24));
    CFRelease(*(*(*(a1 + 104) + 8) + 24));
    *(*(*(a1 + 104) + 8) + 24) = 0;
    v61 = *(a1 + 96);
    v62 = [WFFileRepresentation fileWithURL:*(a1 + 72) options:1 ofType:*(a1 + 80) proposedFilename:*(a1 + 88)];
    (*(v61 + 16))(v61, v62, 0);
  }

LABEL_32:
}

void *__getCMTimeSubtractSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeSubtract");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeSubtractSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreMediaLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreMediaLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCMTimeMakeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeMakeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCMTimeZeroSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "kCMTimeZero");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMTimeZeroSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary_3263()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_3268)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_3269;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278345560;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_3268 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_3268;
  if (!AVFoundationLibraryCore_frameworkLibrary_3268)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAnimatedGIFTranscoder.m" lineNumber:46 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke_3269()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_3268 = result;
  return result;
}

void *__getCMTimeGetSecondsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeGetSeconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeGetSecondsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke_3274(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr_3273 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void WFAddImageFileToGIF(void *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __WFAddImageFileToGIF_block_invoke;
  block[3] = &unk_2783454F0;
  v27 = a6;
  v28 = a7;
  v23 = v14;
  v24 = v13;
  v25 = v15;
  v26 = v16;
  v29 = a5;
  v18 = v15;
  v19 = v16;
  v20 = v13;
  v21 = v14;
  dispatch_async(v17, block);
}

void __WFAddImageFileToGIF_block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v32[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v3 = WFAutoSizeFromInputSize(v2, *(a1 + 64), *(a1 + 72));
  v5 = v4;

  v6 = WFImageSizeFromFile(*(a1 + 40), 0);
  v8 = v7;
  v9 = dispatch_group_create();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__70;
  v30 = __Block_byref_object_dispose__71;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__70;
  v24[4] = __Block_byref_object_dispose__71;
  v25 = 0;
  dispatch_group_enter(v9);
  if (v6 == v3 && v8 == v5)
  {
    objc_storeStrong(v27 + 5, *(a1 + 40));
    dispatch_group_leave(v9);
  }

  else
  {
    v11 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __WFAddImageFileToGIF_block_invoke_3;
    v21[3] = &unk_2783484F0;
    v23 = &v26;
    v22 = v9;
    WFAsyncTransformedImageFromImage(v11, 0, &__block_literal_global_82, v21, v3, v5);
  }

  v12 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __WFAddImageFileToGIF_block_invoke_4;
  v14[3] = &unk_2783454C8;
  v18 = v24;
  v17 = *(a1 + 56);
  v15 = *(a1 + 32);
  v13 = *(a1 + 48);
  v20 = *(a1 + 80);
  v16 = v13;
  v19 = &v26;
  dispatch_group_notify(v9, v12, v14);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);
}

void __WFAddImageFileToGIF_block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __WFAddImageFileToGIF_block_invoke_4(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = WFImageSourceCreateFromFile(*(a1 + 32), 0);
    Count = CGImageSourceGetCount(v3);
    v5 = *MEMORY[0x277CE1D88];
    v23 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
    v6 = [WFFileRepresentation proposedFilenameForFile:*(a1 + 40) ofType:?];
    v7 = [WFTemporaryFileManager createTemporaryFileWithFilename:v6];
    v8 = [v5 identifier];
    v9 = CGImageDestinationCreateWithURL(v7, v8, Count + 1, 0);

    v10 = CGImageSourceCopyProperties(v3, 0);
    v11 = *MEMORY[0x277CD31C8];
    v28 = v11;
    v22 = v10;
    v12 = [(__CFDictionary *)v10 objectForKey:v11];
    v29[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    CGImageDestinationSetProperties(v9, v13);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        CGImageDestinationAddImageFromSource(v9, v3, i, 0);
      }
    }

    CFRelease(v3);
    v26 = v11;
    v24 = *MEMORY[0x277CD31C0];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
    v25 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v18 = WFImageSourceCreateFromFile(*(*(*(a1 + 64) + 8) + 40), 0);
    for (j = 0; j < CGImageSourceGetCount(v18); ++j)
    {
      CGImageDestinationAddImageFromSource(v9, v18, j, v17);
    }

    CFRelease(v18);
    CGImageDestinationFinalize(v9);
    CFRelease(v9);
    v20 = *(a1 + 48);
    v21 = [WFFileRepresentation fileWithURL:v7 options:1 ofType:v23 proposedFilename:v6];
    (*(v20 + 16))(v20, v21, 0);
  }
}

id WFGenerateImageFilesFromGIF(void *a1, void *a2, void *a3)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v5 wfType];
  v9 = *MEMORY[0x277CE1D88];
  v10 = [v8 conformsToUTType:*MEMORY[0x277CE1D88]];

  if ((v10 & 1) == 0)
  {
    (*(v7 + 2))(v7, 0, 0);
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277CD3618];
  v27[0] = MEMORY[0x277CBEC28];
  v12 = *MEMORY[0x277CD3668];
  v26[0] = v11;
  v26[1] = v12;
  v13 = [v9 identifier];
  v27[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v15 = WFImageSourceCreateFromFile(v5, v14);

  if (v15)
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __WFGenerateImageFilesFromGIF_block_invoke;
    block[3] = &unk_278345518;
    v22 = v24;
    v23 = v15;
    v20 = v6;
    v21 = v7;
    dispatch_async(v16, block);

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __WFGenerateImageFilesFromGIF_block_invoke_2;
    v18[3] = &unk_27834A178;
    v18[4] = v24;
    v15 = _Block_copy(v18);

    _Block_object_dispose(v24, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }

LABEL_7:

  return v15;
}

void __WFGenerateImageFilesFromGIF_block_invoke(uint64_t a1)
{
  Count = CGImageSourceGetCount(*(a1 + 56));
  v16 = objc_opt_new();
  if (Count)
  {
    v2 = 0;
    v14 = *MEMORY[0x277CE1DC0];
    do
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        break;
      }

      v3 = [MEMORY[0x277D79F68] typeWithUTType:v14];
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", *(a1 + 32), v2 + 1];
      v5 = [WFFileRepresentation proposedFilenameForFile:v4 ofType:v3];

      v6 = [WFTemporaryFileManager createTemporaryFileWithFilename:v5];
      v7 = [v3 utType];
      v8 = [v7 identifier];
      v9 = CGImageDestinationCreateWithURL(v6, v8, 1uLL, 0);

      CGImageDestinationAddImageFromSource(v9, *(a1 + 56), v2, 0);
      CGImageDestinationFinalize(v9);
      CFRelease(v9);
      v10 = [WFFileRepresentation fileWithURL:v6 options:1 ofType:v3 proposedFilename:v5];
      [v16 addObject:v10];

      ++v2;
    }

    while (Count != v2);
  }

  CFRelease(*(a1 + 56));
  v12 = a1 + 40;
  v11 = *(a1 + 40);
  if (*(*(*(v12 + 8) + 8) + 24) == 1)
  {
    v13 = [MEMORY[0x277CCA9B8] userCancelledError];
    (*(v11 + 16))(v11, 0, v13);
  }

  else
  {
    (*(v11 + 16))(v11, v16, 0);
  }
}

id WFGenerateVideoFromGIF(void *a1, void *a2, uint64_t a3, void *a4)
{
  v135[2] = *MEMORY[0x277D85DE8];
  v93 = a1;
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v23 = 0;
    goto LABEL_52;
  }

  v88 = a3;
  v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DF0]];
  v92 = [WFFileRepresentation proposedFilenameForFile:v7 ofType:v9];
  v91 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v92];
  v126 = 0;
  v127 = &v126;
  v128 = 0x2050000000;
  v10 = getAVAssetWriterClass_softClass;
  v129 = getAVAssetWriterClass_softClass;
  if (!getAVAssetWriterClass_softClass)
  {
    v115 = MEMORY[0x277D85DD0];
    v116 = 3221225472;
    v117 = __getAVAssetWriterClass_block_invoke;
    v118 = &unk_27834A178;
    v119[0] = &v126;
    __getAVAssetWriterClass_block_invoke(&v115);
    v10 = v127[3];
  }

  v11 = v10;
  _Block_object_dispose(&v126, 8);
  v12 = [v10 alloc];
  v13 = [v9 string];
  v125 = 0;
  v14 = [v12 initWithURL:v91 fileType:v13 error:&v125];
  v90 = v125;

  if (v14)
  {
    v121 = 0;
    v122 = &v121;
    v123 = 0x2020000000;
    v15 = *MEMORY[0x277CD3618];
    v135[0] = MEMORY[0x277CBEC38];
    v16 = *MEMORY[0x277CD3668];
    v134[0] = v15;
    v134[1] = v16;
    v17 = [*MEMORY[0x277CE1D88] identifier];
    v135[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
    v19 = WFImageSourceCreateFromFile(v93, v18);

    v124 = v19;
    v20 = v122[3];
    if (!v20)
    {
      v8[2](v8, 0, v90);
      v23 = 0;
LABEL_50:
      _Block_object_dispose(&v121, 8);
      goto LABEL_51;
    }

    Count = CGImageSourceGetCount(v20);
    if (Count <= 1)
    {
      CFRelease(v122[3]);
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFAnimatedGIFTranscoderErrorDomain" code:0 userInfo:0];
      v8[2](v8, 0, v22);
      v23 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v24 = 0;
    v26 = *MEMORY[0x277CBF3A8];
    v25 = *(MEMORY[0x277CBF3A8] + 8);
    v27 = *MEMORY[0x277CD3448];
    v28 = *MEMORY[0x277CD3450];
    do
    {
      v29 = CGImageSourceCopyPropertiesAtIndex(v122[3], v24, 0);
      v30 = [(__CFDictionary *)v29 objectForKey:v27];
      [v30 doubleValue];
      v32 = v31;

      v33 = [(__CFDictionary *)v29 objectForKey:v28];
      [v33 doubleValue];
      v35 = v34;

      v25 = fmax(v25, v32);
      v26 = fmax(v26, v35);
      ++v24;
    }

    while (Count != v24);
    v126 = 0;
    v127 = &v126;
    v128 = 0x2020000000;
    v36 = getAVVideoCodecKeySymbolLoc_ptr;
    v129 = getAVVideoCodecKeySymbolLoc_ptr;
    if (!getAVVideoCodecKeySymbolLoc_ptr)
    {
      v115 = MEMORY[0x277D85DD0];
      v116 = 3221225472;
      v117 = __getAVVideoCodecKeySymbolLoc_block_invoke;
      v118 = &unk_27834A178;
      v119[0] = &v126;
      v37 = AVFoundationLibrary_3263();
      v38 = dlsym(v37, "AVVideoCodecKey");
      *(*(v119[0] + 8) + 24) = v38;
      getAVVideoCodecKeySymbolLoc_ptr = *(*(v119[0] + 8) + 24);
      v36 = v127[3];
    }

    _Block_object_dispose(&v126, 8);
    if (v36)
    {
      v85 = *v36;
      v132[0] = v85;
      v126 = 0;
      v127 = &v126;
      v128 = 0x2020000000;
      v39 = getAVVideoCodecTypeH264SymbolLoc_ptr;
      v129 = getAVVideoCodecTypeH264SymbolLoc_ptr;
      if (!getAVVideoCodecTypeH264SymbolLoc_ptr)
      {
        v115 = MEMORY[0x277D85DD0];
        v116 = 3221225472;
        v117 = __getAVVideoCodecTypeH264SymbolLoc_block_invoke;
        v118 = &unk_27834A178;
        v119[0] = &v126;
        v40 = AVFoundationLibrary_3263();
        v41 = dlsym(v40, "AVVideoCodecTypeH264");
        *(*(v119[0] + 8) + 24) = v41;
        getAVVideoCodecTypeH264SymbolLoc_ptr = *(*(v119[0] + 8) + 24);
        v39 = v127[3];
      }

      _Block_object_dispose(&v126, 8);
      if (v39)
      {
        v84 = *v39;
        v133[0] = v84;
        v126 = 0;
        v127 = &v126;
        v128 = 0x2020000000;
        v42 = getAVVideoWidthKeySymbolLoc_ptr;
        v129 = getAVVideoWidthKeySymbolLoc_ptr;
        if (!getAVVideoWidthKeySymbolLoc_ptr)
        {
          v115 = MEMORY[0x277D85DD0];
          v116 = 3221225472;
          v117 = __getAVVideoWidthKeySymbolLoc_block_invoke;
          v118 = &unk_27834A178;
          v119[0] = &v126;
          v43 = AVFoundationLibrary_3263();
          v44 = dlsym(v43, "AVVideoWidthKey");
          *(*(v119[0] + 8) + 24) = v44;
          getAVVideoWidthKeySymbolLoc_ptr = *(*(v119[0] + 8) + 24);
          v42 = v127[3];
        }

        _Block_object_dispose(&v126, 8);
        if (v42)
        {
          v83 = *v42;
          v132[1] = v83;
          v87 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
          v133[1] = v87;
          v126 = 0;
          v127 = &v126;
          v128 = 0x2020000000;
          v45 = getAVVideoHeightKeySymbolLoc_ptr;
          v129 = getAVVideoHeightKeySymbolLoc_ptr;
          if (!getAVVideoHeightKeySymbolLoc_ptr)
          {
            v115 = MEMORY[0x277D85DD0];
            v116 = 3221225472;
            v117 = __getAVVideoHeightKeySymbolLoc_block_invoke;
            v118 = &unk_27834A178;
            v119[0] = &v126;
            v46 = AVFoundationLibrary_3263();
            v47 = dlsym(v46, "AVVideoHeightKey");
            *(*(v119[0] + 8) + 24) = v47;
            getAVVideoHeightKeySymbolLoc_ptr = *(*(v119[0] + 8) + 24);
            v45 = v127[3];
          }

          _Block_object_dispose(&v126, 8);
          if (v45)
          {
            v81 = *v45;
            v132[2] = v81;
            v82 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
            v133[2] = v82;
            v126 = 0;
            v127 = &v126;
            v128 = 0x2020000000;
            v48 = getAVVideoCompressionPropertiesKeySymbolLoc_ptr;
            v129 = getAVVideoCompressionPropertiesKeySymbolLoc_ptr;
            if (!getAVVideoCompressionPropertiesKeySymbolLoc_ptr)
            {
              v115 = MEMORY[0x277D85DD0];
              v116 = 3221225472;
              v117 = __getAVVideoCompressionPropertiesKeySymbolLoc_block_invoke;
              v118 = &unk_27834A178;
              v119[0] = &v126;
              v49 = AVFoundationLibrary_3263();
              v50 = dlsym(v49, "AVVideoCompressionPropertiesKey");
              *(*(v119[0] + 8) + 24) = v50;
              getAVVideoCompressionPropertiesKeySymbolLoc_ptr = *(*(v119[0] + 8) + 24);
              v48 = v127[3];
            }

            _Block_object_dispose(&v126, 8);
            if (v48)
            {
              v80 = *v48;
              v132[3] = v80;
              v126 = 0;
              v127 = &v126;
              v128 = 0x2020000000;
              v51 = getAVVideoAverageBitRateKeySymbolLoc_ptr;
              v129 = getAVVideoAverageBitRateKeySymbolLoc_ptr;
              if (!getAVVideoAverageBitRateKeySymbolLoc_ptr)
              {
                v115 = MEMORY[0x277D85DD0];
                v116 = 3221225472;
                v117 = __getAVVideoAverageBitRateKeySymbolLoc_block_invoke;
                v118 = &unk_27834A178;
                v119[0] = &v126;
                v52 = AVFoundationLibrary_3263();
                v53 = dlsym(v52, "AVVideoAverageBitRateKey");
                *(*(v119[0] + 8) + 24) = v53;
                getAVVideoAverageBitRateKeySymbolLoc_ptr = *(*(v119[0] + 8) + 24);
                v51 = v127[3];
              }

              _Block_object_dispose(&v126, 8);
              if (v51)
              {
                v79 = *v51;
                v131[0] = &unk_282F79F70;
                v126 = 0;
                v127 = &v126;
                v128 = 0x2020000000;
                v54 = getAVVideoProfileLevelKeySymbolLoc_ptr;
                v129 = getAVVideoProfileLevelKeySymbolLoc_ptr;
                v130[0] = v79;
                if (!getAVVideoProfileLevelKeySymbolLoc_ptr)
                {
                  v115 = MEMORY[0x277D85DD0];
                  v116 = 3221225472;
                  v117 = __getAVVideoProfileLevelKeySymbolLoc_block_invoke;
                  v118 = &unk_27834A178;
                  v119[0] = &v126;
                  v55 = AVFoundationLibrary_3263();
                  v56 = dlsym(v55, "AVVideoProfileLevelKey");
                  *(*(v119[0] + 8) + 24) = v56;
                  getAVVideoProfileLevelKeySymbolLoc_ptr = *(*(v119[0] + 8) + 24);
                  v54 = v127[3];
                }

                _Block_object_dispose(&v126, 8);
                if (v54)
                {
                  v57 = *v54;
                  v130[1] = v57;
                  v126 = 0;
                  v127 = &v126;
                  v128 = 0x2020000000;
                  v58 = getAVVideoProfileLevelH264High41SymbolLoc_ptr;
                  v129 = getAVVideoProfileLevelH264High41SymbolLoc_ptr;
                  if (!getAVVideoProfileLevelH264High41SymbolLoc_ptr)
                  {
                    v115 = MEMORY[0x277D85DD0];
                    v116 = 3221225472;
                    v117 = __getAVVideoProfileLevelH264High41SymbolLoc_block_invoke;
                    v118 = &unk_27834A178;
                    v119[0] = &v126;
                    v59 = AVFoundationLibrary_3263();
                    v60 = dlsym(v59, "AVVideoProfileLevelH264High41");
                    *(*(v119[0] + 8) + 24) = v60;
                    getAVVideoProfileLevelH264High41SymbolLoc_ptr = *(*(v119[0] + 8) + 24);
                    v58 = v127[3];
                  }

                  _Block_object_dispose(&v126, 8);
                  if (v58)
                  {
                    v61 = *v58;
                    v131[1] = v61;
                    v126 = 0;
                    v127 = &v126;
                    v128 = 0x2020000000;
                    v28 = getAVVideoMaxKeyFrameIntervalKeySymbolLoc_ptr;
                    v129 = getAVVideoMaxKeyFrameIntervalKeySymbolLoc_ptr;
                    if (!getAVVideoMaxKeyFrameIntervalKeySymbolLoc_ptr)
                    {
                      v115 = MEMORY[0x277D85DD0];
                      v116 = 3221225472;
                      v117 = __getAVVideoMaxKeyFrameIntervalKeySymbolLoc_block_invoke;
                      v118 = &unk_27834A178;
                      v119[0] = &v126;
                      v62 = AVFoundationLibrary_3263();
                      v63 = dlsym(v62, "AVVideoMaxKeyFrameIntervalKey");
                      *(*(v119[0] + 8) + 24) = v63;
                      getAVVideoMaxKeyFrameIntervalKeySymbolLoc_ptr = *(*(v119[0] + 8) + 24);
                      v28 = v127[3];
                    }

                    _Block_object_dispose(&v126, 8);
                    if (v28)
                    {
                      v64 = *v28;
                      v130[2] = v64;
                      v131[2] = &unk_282F79F88;
                      v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:3];
                      v133[3] = v65;
                      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:4];

                      v126 = 0;
                      v127 = &v126;
                      v128 = 0x2050000000;
                      v66 = getAVAssetWriterInputClass_softClass;
                      v129 = getAVAssetWriterInputClass_softClass;
                      if (!getAVAssetWriterInputClass_softClass)
                      {
                        v115 = MEMORY[0x277D85DD0];
                        v116 = 3221225472;
                        v117 = __getAVAssetWriterInputClass_block_invoke;
                        v118 = &unk_27834A178;
                        v119[0] = &v126;
                        __getAVAssetWriterInputClass_block_invoke(&v115);
                        v66 = v127[3];
                      }

                      v67 = v66;
                      _Block_object_dispose(&v126, 8);
                      v68 = getAVMediaTypeVideo();
                      v28 = [v66 assetWriterInputWithMediaType:v68 outputSettings:v86];

                      [v28 setExpectsMediaDataInRealTime:0];
                      if (([v14 canAddInput:v28] & 1) == 0)
                      {
                        v8[2](v8, 0, 0);
                        v23 = 0;
                        goto LABEL_48;
                      }

                      [v14 addInput:v28];
                      v126 = 0;
                      v127 = &v126;
                      v128 = 0x2050000000;
                      v69 = getAVAssetWriterInputPixelBufferAdaptorClass_softClass;
                      v129 = getAVAssetWriterInputPixelBufferAdaptorClass_softClass;
                      v70 = &unk_21E356000;
                      if (!getAVAssetWriterInputPixelBufferAdaptorClass_softClass)
                      {
                        v115 = MEMORY[0x277D85DD0];
                        v116 = 3221225472;
                        v117 = __getAVAssetWriterInputPixelBufferAdaptorClass_block_invoke;
                        v118 = &unk_27834A178;
                        v119[0] = &v126;
                        __getAVAssetWriterInputPixelBufferAdaptorClass_block_invoke(&v115);
                        v69 = v127[3];
                      }

                      v71 = v69;
                      _Block_object_dispose(&v126, 8);
                      v72 = [v69 assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v28 sourcePixelBufferAttributes:0];
                      [v14 startWriting];
                      getkCMTimeZero(&v115);
                      [v14 startSessionAtSourceTime:&v115];
                      v87 = v72;
                      if (WFGenerateVideoFromGIF_onceToken == -1)
                      {
LABEL_46:
                        v126 = 0;
                        v127 = &v126;
                        v128 = 0x2020000000;
                        v129 = 0;
                        v120[0] = 0;
                        v120[1] = v120;
                        v120[2] = 0x2020000000;
                        v120[3] = 0;
                        v115 = 0;
                        v116 = &v115;
                        v117 = 0x3810000000;
                        v118 = "";
                        memset(v119, 0, sizeof(v119));
                        getkCMTimeZero(v119);
                        v73 = WFGenerateVideoFromGIF_videoWriterQueue;
                        v98 = MEMORY[0x277D85DD0];
                        v99 = v70[177];
                        v74 = v99;
                        v100 = __WFGenerateVideoFromGIF_block_invoke_2;
                        v101 = &unk_278345540;
                        v109 = &v126;
                        v110 = v120;
                        v113 = v88;
                        v114 = Count;
                        v111 = &v121;
                        v102 = v28;
                        v89 = v87;
                        v103 = v89;
                        v112 = &v115;
                        v75 = v14;
                        v104 = v75;
                        v76 = v8;
                        v108 = v76;
                        v77 = v91;
                        v105 = v77;
                        v106 = v9;
                        v107 = v92;
                        [v102 requestMediaDataWhenReadyOnQueue:v73 usingBlock:&v98];
                        aBlock[0] = MEMORY[0x277D85DD0];
                        aBlock[1] = v74;
                        aBlock[2] = __WFGenerateVideoFromGIF_block_invoke_4;
                        aBlock[3] = &unk_278349EF0;
                        v95 = v75;
                        v96 = v77;
                        v97 = v76;
                        v23 = _Block_copy(aBlock);

                        _Block_object_dispose(&v115, 8);
                        _Block_object_dispose(v120, 8);
                        _Block_object_dispose(&v126, 8);

LABEL_48:
                        v22 = v86;
                        goto LABEL_49;
                      }

LABEL_65:
                      dispatch_once(&WFGenerateVideoFromGIF_onceToken, &__block_literal_global_90);
                      goto LABEL_46;
                    }

                    v70 = [MEMORY[0x277CCA890] currentHandler];
                    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVVideoMaxKeyFrameIntervalKey(void)"];
                    [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:60 description:{@"%s", dlerror()}];
                  }

                  else
                  {
                    v70 = [MEMORY[0x277CCA890] currentHandler];
                    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVVideoProfileLevelH264High41(void)"];
                    [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:62 description:{@"%s", dlerror()}];
                  }
                }

                else
                {
                  v70 = [MEMORY[0x277CCA890] currentHandler];
                  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVVideoProfileLevelKey(void)"];
                  [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:59 description:{@"%s", dlerror()}];
                }
              }

              else
              {
                v70 = [MEMORY[0x277CCA890] currentHandler];
                v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVVideoAverageBitRateKey(void)"];
                [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:58 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              v70 = [MEMORY[0x277CCA890] currentHandler];
              v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVVideoCompressionPropertiesKey(void)"];
              [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:57 description:{@"%s", dlerror()}];
            }
          }

          else
          {
            v70 = [MEMORY[0x277CCA890] currentHandler];
            v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVVideoHeightKey(void)"];
            [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:56 description:{@"%s", dlerror()}];
          }
        }

        else
        {
          v70 = [MEMORY[0x277CCA890] currentHandler];
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVVideoWidthKey(void)"];
          [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:55 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        v70 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVVideoCodecType getAVVideoCodecTypeH264(void)"];
        [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:61 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      v70 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVVideoCodecKey(void)"];
      [v70 handleFailureInFunction:v7 file:@"WFAnimatedGIFTranscoder.m" lineNumber:54 description:{@"%s", dlerror()}];
    }

    __break(1u);
    goto LABEL_65;
  }

  v8[2](v8, 0, v90);
  v23 = 0;
LABEL_51:

LABEL_52:

  return v23;
}

void sub_21E26AB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a60, 8);
  _Unwind_Resume(a1);
}

void __getAVAssetWriterClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_3263();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetWriter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetWriterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetWriterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnimatedGIFTranscoder.m" lineNumber:49 description:{@"Unable to find class %s", "AVAssetWriter"}];

    __break(1u);
  }
}

void *__getAVVideoCodecKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoCodecKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoCodecKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVVideoCodecTypeH264SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoCodecTypeH264");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoCodecTypeH264SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVVideoWidthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoWidthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoWidthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVVideoHeightKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoHeightKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoHeightKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVVideoCompressionPropertiesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoCompressionPropertiesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoCompressionPropertiesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVVideoAverageBitRateKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoAverageBitRateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoAverageBitRateKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVVideoProfileLevelKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoProfileLevelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoProfileLevelKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVVideoProfileLevelH264High41SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoProfileLevelH264High41");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoProfileLevelH264High41SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVVideoMaxKeyFrameIntervalKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_3263();
  result = dlsym(v2, "AVVideoMaxKeyFrameIntervalKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVVideoMaxKeyFrameIntervalKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVAssetWriterInputClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_3263();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetWriterInput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetWriterInputClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetWriterInputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnimatedGIFTranscoder.m" lineNumber:50 description:{@"Unable to find class %s", "AVAssetWriterInput"}];

    __break(1u);
  }
}

void __getAVAssetWriterInputPixelBufferAdaptorClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_3263();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetWriterInputPixelBufferAdaptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetWriterInputPixelBufferAdaptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetWriterInputPixelBufferAdaptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnimatedGIFTranscoder.m" lineNumber:51 description:{@"Unable to find class %s", "AVAssetWriterInputPixelBufferAdaptor"}];

    __break(1u);
  }
}

void __WFGenerateVideoFromGIF_block_invoke_2(uint64_t a1)
{
  v109[2] = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 88) + 8) + 24) >= *(a1 + 120) || (v2 = *(*(*(a1 + 96) + 8) + 24), v2 >= *(a1 + 128)))
  {
    v61 = *(*(*(a1 + 104) + 8) + 24);
    if (v61)
    {
      CFRelease(v61);
      *(*(*(a1 + 104) + 8) + 24) = 0;
    }

    [*(a1 + 32) markAsFinished];
    v62 = *(a1 + 48);
    v63 = *(*(a1 + 112) + 8);
    v101 = *(v63 + 32);
    v102 = *(v63 + 48);
    [v62 endSessionAtSourceTime:&v101];
    v64 = *(a1 + 48);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __WFGenerateVideoFromGIF_block_invoke_3;
    v90[3] = &unk_278346B18;
    v93 = *(a1 + 80);
    v65 = *(a1 + 48);
    v66 = *(a1 + 56);
    v67 = *(a1 + 64);
    v68 = *(a1 + 72);
    *&v69 = v67;
    *(&v69 + 1) = v68;
    *&v70 = v65;
    *(&v70 + 1) = v66;
    v91 = v70;
    v92 = v69;
    [v64 finishWritingWithCompletionHandler:v90];

    v3 = v93;
  }

  else
  {
    v3 = CGImageSourceCopyPropertiesAtIndex(*(*(*(a1 + 104) + 8) + 24), v2, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(*(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 96) + 8) + 24), 0);
    if (ImageAtIndex)
    {
      v5 = ImageAtIndex;
      *&v105 = 0;
      *(&v105 + 1) = &v105;
      v106 = 0x2020000000;
      v6 = getkCVPixelBufferCGImageCompatibilityKeySymbolLoc_ptr;
      v107 = getkCVPixelBufferCGImageCompatibilityKeySymbolLoc_ptr;
      if (!getkCVPixelBufferCGImageCompatibilityKeySymbolLoc_ptr)
      {
        *&v101 = MEMORY[0x277D85DD0];
        *(&v101 + 1) = 3221225472;
        v102 = __getkCVPixelBufferCGImageCompatibilityKeySymbolLoc_block_invoke;
        v103 = &unk_27834A178;
        v104 = &v105;
        v7 = CoreVideoLibrary();
        *(*(&v105 + 1) + 24) = dlsym(v7, "kCVPixelBufferCGImageCompatibilityKey");
        getkCVPixelBufferCGImageCompatibilityKeySymbolLoc_ptr = *(*(v104 + 1) + 24);
        v6 = *(*(&v105 + 1) + 24);
      }

      _Block_object_dispose(&v105, 8);
      if (v6)
      {
        v108[0] = *v6;
        v8 = MEMORY[0x277CBEC38];
        v109[0] = MEMORY[0x277CBEC38];
        *&v105 = 0;
        *(&v105 + 1) = &v105;
        v106 = 0x2020000000;
        v9 = getkCVPixelBufferCGBitmapContextCompatibilityKeySymbolLoc_ptr;
        v107 = getkCVPixelBufferCGBitmapContextCompatibilityKeySymbolLoc_ptr;
        if (!getkCVPixelBufferCGBitmapContextCompatibilityKeySymbolLoc_ptr)
        {
          *&v101 = MEMORY[0x277D85DD0];
          *(&v101 + 1) = 3221225472;
          v102 = __getkCVPixelBufferCGBitmapContextCompatibilityKeySymbolLoc_block_invoke;
          v103 = &unk_27834A178;
          v104 = &v105;
          v10 = CoreVideoLibrary();
          *(*(&v105 + 1) + 24) = dlsym(v10, "kCVPixelBufferCGBitmapContextCompatibilityKey");
          getkCVPixelBufferCGBitmapContextCompatibilityKeySymbolLoc_ptr = *(*(v104 + 1) + 24);
          v9 = *(*(&v105 + 1) + 24);
        }

        _Block_object_dispose(&v105, 8);
        if (v9)
        {
          v108[1] = *v9;
          v109[1] = v8;
          v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
          v100 = 0;
          Width = CGImageGetWidth(v5);
          Height = CGImageGetHeight(v5);
          *&v105 = 0;
          *(&v105 + 1) = &v105;
          v106 = 0x2020000000;
          v13 = getCVPixelBufferCreateSymbolLoc_ptr;
          v107 = getCVPixelBufferCreateSymbolLoc_ptr;
          if (!getCVPixelBufferCreateSymbolLoc_ptr)
          {
            *&v101 = MEMORY[0x277D85DD0];
            *(&v101 + 1) = 3221225472;
            v102 = __getCVPixelBufferCreateSymbolLoc_block_invoke;
            v103 = &unk_27834A178;
            v104 = &v105;
            v14 = CoreVideoLibrary();
            *(*(&v105 + 1) + 24) = dlsym(v14, "CVPixelBufferCreate");
            getCVPixelBufferCreateSymbolLoc_ptr = *(*(v104 + 1) + 24);
            v13 = *(*(&v105 + 1) + 24);
          }

          _Block_object_dispose(&v105, 8);
          if (v13)
          {
            v13(0, Width, Height, 32, v89, &v100);
            v15 = v100;
            if (!v100)
            {
              CGImageRelease(v5);
LABEL_43:

              goto LABEL_41;
            }

            *&v105 = 0;
            *(&v105 + 1) = &v105;
            v106 = 0x2020000000;
            v16 = getCVPixelBufferLockBaseAddressSymbolLoc_ptr;
            v107 = getCVPixelBufferLockBaseAddressSymbolLoc_ptr;
            if (!getCVPixelBufferLockBaseAddressSymbolLoc_ptr)
            {
              *&v101 = MEMORY[0x277D85DD0];
              *(&v101 + 1) = 3221225472;
              v102 = __getCVPixelBufferLockBaseAddressSymbolLoc_block_invoke;
              v103 = &unk_27834A178;
              v104 = &v105;
              v17 = CoreVideoLibrary();
              v18 = dlsym(v17, "CVPixelBufferLockBaseAddress");
              *(*(v104 + 1) + 24) = v18;
              getCVPixelBufferLockBaseAddressSymbolLoc_ptr = *(*(v104 + 1) + 24);
              v16 = *(*(&v105 + 1) + 24);
            }

            _Block_object_dispose(&v105, 8);
            if (v16)
            {
              v16(v15, 0);
              v19 = v100;
              *&v105 = 0;
              *(&v105 + 1) = &v105;
              v106 = 0x2020000000;
              v20 = getCVPixelBufferGetBaseAddressSymbolLoc_ptr;
              v107 = getCVPixelBufferGetBaseAddressSymbolLoc_ptr;
              if (!getCVPixelBufferGetBaseAddressSymbolLoc_ptr)
              {
                *&v101 = MEMORY[0x277D85DD0];
                *(&v101 + 1) = 3221225472;
                v102 = __getCVPixelBufferGetBaseAddressSymbolLoc_block_invoke;
                v103 = &unk_27834A178;
                v104 = &v105;
                v21 = CoreVideoLibrary();
                v22 = dlsym(v21, "CVPixelBufferGetBaseAddress");
                *(*(v104 + 1) + 24) = v22;
                getCVPixelBufferGetBaseAddressSymbolLoc_ptr = *(*(v104 + 1) + 24);
                v20 = *(*(&v105 + 1) + 24);
              }

              _Block_object_dispose(&v105, 8);
              if (v20)
              {
                v23 = v20(v19);
                DeviceRGB = CGColorSpaceCreateDeviceRGB();
                soft_CVPixelBufferGetWidth(v100);
                v26 = v25;
                soft_CVPixelBufferGetHeight(v100);
                v28 = v27;
                v29 = v100;
                *&v105 = 0;
                *(&v105 + 1) = &v105;
                v106 = 0x2020000000;
                v30 = getCVPixelBufferGetBytesPerRowSymbolLoc_ptr;
                v107 = getCVPixelBufferGetBytesPerRowSymbolLoc_ptr;
                if (!getCVPixelBufferGetBytesPerRowSymbolLoc_ptr)
                {
                  *&v101 = MEMORY[0x277D85DD0];
                  *(&v101 + 1) = 3221225472;
                  v102 = __getCVPixelBufferGetBytesPerRowSymbolLoc_block_invoke;
                  v103 = &unk_27834A178;
                  v104 = &v105;
                  v31 = CoreVideoLibrary();
                  v32 = dlsym(v31, "CVPixelBufferGetBytesPerRow");
                  *(*(v104 + 1) + 24) = v32;
                  getCVPixelBufferGetBytesPerRowSymbolLoc_ptr = *(*(v104 + 1) + 24);
                  v30 = *(*(&v105 + 1) + 24);
                }

                _Block_object_dispose(&v105, 8);
                if (v30)
                {
                  v33 = v30(v29);
                  v34 = CGBitmapContextCreate(v23, v26, v28, 8uLL, v33, DeviceRGB, 2u);
                  soft_CVPixelBufferGetWidth(v100);
                  v36 = v35;
                  soft_CVPixelBufferGetHeight(v100);
                  v110.size.width = v36;
                  v110.size.height = v37;
                  v110.origin.x = 0.0;
                  v110.origin.y = 0.0;
                  CGContextDrawImage(v34, v110, v5);
                  CGColorSpaceRelease(DeviceRGB);
                  CGContextRelease(v34);
                  CGImageRelease(v5);
                  v38 = v100;
                  *&v105 = 0;
                  *(&v105 + 1) = &v105;
                  v106 = 0x2020000000;
                  v39 = getCVPixelBufferUnlockBaseAddressSymbolLoc_ptr;
                  v107 = getCVPixelBufferUnlockBaseAddressSymbolLoc_ptr;
                  if (!getCVPixelBufferUnlockBaseAddressSymbolLoc_ptr)
                  {
                    *&v101 = MEMORY[0x277D85DD0];
                    *(&v101 + 1) = 3221225472;
                    v102 = __getCVPixelBufferUnlockBaseAddressSymbolLoc_block_invoke;
                    v103 = &unk_27834A178;
                    v104 = &v105;
                    v40 = CoreVideoLibrary();
                    v41 = dlsym(v40, "CVPixelBufferUnlockBaseAddress");
                    *(*(v104 + 1) + 24) = v41;
                    getCVPixelBufferUnlockBaseAddressSymbolLoc_ptr = *(*(v104 + 1) + 24);
                    v39 = *(*(&v105 + 1) + 24);
                  }

                  _Block_object_dispose(&v105, 8);
                  if (v39)
                  {
                    v39(v38, 0);
                      ;
                    }

                    v42 = *(a1 + 40);
                    v43 = *(*(a1 + 112) + 8);
                    v101 = *(v43 + 32);
                    v102 = *(v43 + 48);
                    [v42 appendPixelBuffer:v100 withPresentationTime:&v101];
                    v44 = [(__CFDictionary *)v3 objectForKey:*MEMORY[0x277CD31C8]];
                    v45 = [v44 objectForKey:*MEMORY[0x277CD31C0]];
                    [v45 doubleValue];
                    v47 = v46;
                    v48 = v46 != 0.0;

                    v50 = 1.0 / v47;
                    v51 = *(*(a1 + 112) + 8);
                    if (!v48)
                    {
                      v50 = 9.99999985;
                    }

                    LODWORD(v49) = vcvtpd_s64_f64(v50);
                    soft_CMTimeMake(&v96, 1, v49);
                    v94 = *(v51 + 32);
                    v95 = *(v51 + 48);
                    *&v105 = 0;
                    *(&v105 + 1) = &v105;
                    v106 = 0x2020000000;
                    v52 = getCMTimeAddSymbolLoc_ptr;
                    v107 = getCMTimeAddSymbolLoc_ptr;
                    if (!getCMTimeAddSymbolLoc_ptr)
                    {
                      *&v101 = MEMORY[0x277D85DD0];
                      *(&v101 + 1) = 3221225472;
                      v102 = __getCMTimeAddSymbolLoc_block_invoke;
                      v103 = &unk_27834A178;
                      v104 = &v105;
                      v53 = CoreMediaLibrary();
                      v54 = dlsym(v53, "CMTimeAdd");
                      *(*(v104 + 1) + 24) = v54;
                      getCMTimeAddSymbolLoc_ptr = *(*(v104 + 1) + 24);
                      v52 = *(*(&v105 + 1) + 24);
                    }

                    _Block_object_dispose(&v105, 8);
                    if (v52)
                    {
                      v101 = v94;
                      v102 = v95;
                      v105 = v96;
                      v106 = v97;
                      v52(&v98, &v101, &v105);
                      v55 = *(*(a1 + 112) + 8);
                      *(v55 + 32) = v98;
                      v56 = v100;
                      *(v55 + 48) = v99;
                      *&v105 = 0;
                      *(&v105 + 1) = &v105;
                      v106 = 0x2020000000;
                      v57 = getCVPixelBufferReleaseSymbolLoc_ptr;
                      v107 = getCVPixelBufferReleaseSymbolLoc_ptr;
                      if (!getCVPixelBufferReleaseSymbolLoc_ptr)
                      {
                        *&v101 = MEMORY[0x277D85DD0];
                        *(&v101 + 1) = 3221225472;
                        v102 = __getCVPixelBufferReleaseSymbolLoc_block_invoke;
                        v103 = &unk_27834A178;
                        v104 = &v105;
                        v58 = CoreVideoLibrary();
                        v59 = dlsym(v58, "CVPixelBufferRelease");
                        *(*(v104 + 1) + 24) = v59;
                        getCVPixelBufferReleaseSymbolLoc_ptr = *(*(v104 + 1) + 24);
                        v57 = *(*(&v105 + 1) + 24);
                      }

                      _Block_object_dispose(&v105, 8);
                      if (v57)
                      {
                        v57(v56);
                        ++*(*(*(a1 + 96) + 8) + 24);
                        v60 = *(*(a1 + 96) + 8);
                        if (*(v60 + 24) == *(a1 + 128))
                        {
                          *(v60 + 24) = 0;
                          ++*(*(*(a1 + 88) + 8) + 24);
                        }

                        goto LABEL_43;
                      }

                      v87 = [MEMORY[0x277CCA890] currentHandler];
                      v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_CVPixelBufferRelease(CVPixelBufferRef _Nullable)"];
                      [v87 handleFailureInFunction:v88 file:@"WFAnimatedGIFTranscoder.m" lineNumber:33 description:{@"%s", dlerror()}];
                    }

                    else
                    {
                      v85 = [MEMORY[0x277CCA890] currentHandler];
                      v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CMTime soft_CMTimeAdd(CMTime, CMTime)"}];
                      [v85 handleFailureInFunction:v86 file:@"WFAnimatedGIFTranscoder.m" lineNumber:43 description:{@"%s", dlerror()}];
                    }
                  }

                  else
                  {
                    v83 = [MEMORY[0x277CCA890] currentHandler];
                    v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CVReturn soft_CVPixelBufferUnlockBaseAddress(CVPixelBufferRef _Nonnull, CVPixelBufferLockFlags)"}];
                    [v83 handleFailureInFunction:v84 file:@"WFAnimatedGIFTranscoder.m" lineNumber:31 description:{@"%s", dlerror()}];
                  }
                }

                else
                {
                  v81 = [MEMORY[0x277CCA890] currentHandler];
                  v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"size_t soft_CVPixelBufferGetBytesPerRow(CVPixelBufferRef _Nonnull)"];
                  [v81 handleFailureInFunction:v82 file:@"WFAnimatedGIFTranscoder.m" lineNumber:36 description:{@"%s", dlerror()}];
                }
              }

              else
              {
                v79 = [MEMORY[0x277CCA890] currentHandler];
                v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *soft_CVPixelBufferGetBaseAddress(CVPixelBufferRef _Nonnull)"];
                [v79 handleFailureInFunction:v80 file:@"WFAnimatedGIFTranscoder.m" lineNumber:32 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              v77 = [MEMORY[0x277CCA890] currentHandler];
              v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CVReturn soft_CVPixelBufferLockBaseAddress(CVPixelBufferRef _Nonnull, CVPixelBufferLockFlags)"}];
              [v77 handleFailureInFunction:v78 file:@"WFAnimatedGIFTranscoder.m" lineNumber:30 description:{@"%s", dlerror()}];
            }
          }

          else
          {
            v75 = [MEMORY[0x277CCA890] currentHandler];
            v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CVReturn soft_CVPixelBufferCreate(CFAllocatorRef _Nullable, size_t, size_t, OSType, CFDictionaryRef _Nullable, CVPixelBufferRef  _Nullable * _Nonnull)"}];
            [v75 handleFailureInFunction:v76 file:@"WFAnimatedGIFTranscoder.m" lineNumber:29 description:{@"%s", dlerror()}];
          }
        }

        else
        {
          v73 = [MEMORY[0x277CCA890] currentHandler];
          v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef getkCVPixelBufferCGBitmapContextCompatibilityKey(void)"];
          [v73 handleFailureInFunction:v74 file:@"WFAnimatedGIFTranscoder.m" lineNumber:28 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        v71 = [MEMORY[0x277CCA890] currentHandler];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef getkCVPixelBufferCGImageCompatibilityKey(void)"];
        [v71 handleFailureInFunction:v72 file:@"WFAnimatedGIFTranscoder.m" lineNumber:27 description:{@"%s", dlerror()}];
      }

      __break(1u);
    }
  }

LABEL_41:
}

void __WFGenerateVideoFromGIF_block_invoke_4(id *a1)
{
  v2 = WFGenerateVideoFromGIF_videoWriterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __WFGenerateVideoFromGIF_block_invoke_5;
  block[3] = &unk_278349EF0;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  dispatch_async(v2, block);
}

void __WFGenerateVideoFromGIF_block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) cancelWriting];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtURL:*(a1 + 40) error:0];

  v3 = *(a1 + 48);
  v4 = [MEMORY[0x277CCA9B8] userCancelledError];
  (*(v3 + 16))(v3, 0, v4);
}

void *__getkCVPixelBufferCGImageCompatibilityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "kCVPixelBufferCGImageCompatibilityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVPixelBufferCGImageCompatibilityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreVideoLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreVideoLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreVideoLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278345590;
    v6 = 0;
    CoreVideoLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreVideoLibraryCore_frameworkLibrary;
  if (!CoreVideoLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreVideoLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAnimatedGIFTranscoder.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getkCVPixelBufferCGBitmapContextCompatibilityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "kCVPixelBufferCGBitmapContextCompatibilityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVPixelBufferCGBitmapContextCompatibilityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVPixelBufferCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "CVPixelBufferCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVPixelBufferCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVPixelBufferLockBaseAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "CVPixelBufferLockBaseAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVPixelBufferLockBaseAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVPixelBufferGetBaseAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "CVPixelBufferGetBaseAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVPixelBufferGetBaseAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void soft_CVPixelBufferGetWidth(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCVPixelBufferGetWidthSymbolLoc_ptr;
  v9 = getCVPixelBufferGetWidthSymbolLoc_ptr;
  if (!getCVPixelBufferGetWidthSymbolLoc_ptr)
  {
    v3 = CoreVideoLibrary();
    v7[3] = dlsym(v3, "CVPixelBufferGetWidth");
    getCVPixelBufferGetWidthSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"size_t soft_CVPixelBufferGetWidth(CVPixelBufferRef _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"WFAnimatedGIFTranscoder.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E26C550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_CVPixelBufferGetHeight(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCVPixelBufferGetHeightSymbolLoc_ptr;
  v9 = getCVPixelBufferGetHeightSymbolLoc_ptr;
  if (!getCVPixelBufferGetHeightSymbolLoc_ptr)
  {
    v3 = CoreVideoLibrary();
    v7[3] = dlsym(v3, "CVPixelBufferGetHeight");
    getCVPixelBufferGetHeightSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"size_t soft_CVPixelBufferGetHeight(CVPixelBufferRef _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"WFAnimatedGIFTranscoder.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E26C6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCVPixelBufferGetBytesPerRowSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "CVPixelBufferGetBytesPerRow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVPixelBufferGetBytesPerRowSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVPixelBufferUnlockBaseAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "CVPixelBufferUnlockBaseAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVPixelBufferUnlockBaseAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCMTimeAddSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeAdd");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeAddSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVPixelBufferReleaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "CVPixelBufferRelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVPixelBufferReleaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __WFGenerateVideoFromGIF_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) status];
  if (v3 == 2)
  {
    v5 = [WFFileRepresentation fileWithURL:*(a1 + 40) options:1 ofType:*(a1 + 48) proposedFilename:*(a1 + 56)];
  }

  else
  {
    v5 = 0;
  }

  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v4);

  if (v3 == 2)
  {
  }
}

void *__getCVPixelBufferGetHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "CVPixelBufferGetHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVPixelBufferGetHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVPixelBufferGetWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreVideoLibrary();
  result = dlsym(v2, "CVPixelBufferGetWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVPixelBufferGetWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreVideoLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreVideoLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __WFGenerateVideoFromGIF_block_invoke()
{
  WFGenerateVideoFromGIF_videoWriterQueue = dispatch_queue_create("is.workflow.my.app.gif-to-video", 0);

  return MEMORY[0x2821F96F8]();
}

BOOL WFImageDataIsAnimatedGIF(void *a1)
{
  v1 = a1;
  v3 = [v1 length] >= 5 && (v2 = objc_msgSend(v1, "bytes"), *v2 == 71) && v2[1] == 73 && v2[2] == 70;

  return v3;
}

id WFUIImageWithAnimatedGIFData(void *a1)
{
  v1 = MEMORY[0x277D79F18];
  v2 = a1;
  v3 = [v1 currentDevice];
  [v3 screenScale];
  v5 = WFUIImageWithAnimatedGIFDataAndOptions(v2, v4, 0.0);

  return v5;
}

id WFUIImageWithAnimatedGIFDataAndOptions(void *a1, double a2, double a3)
{
  v5 = a1;
  if (!v5)
  {
    v30 = 0;
    goto LABEL_20;
  }

  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CD3618]];
  v7 = [*MEMORY[0x277CE1D88] identifier];
  [v6 setObject:v7 forKey:*MEMORY[0x277CD3668]];

  options = v6;
  v8 = CGImageSourceCreateWithData(v5, v6);
  Count = CGImageSourceGetCount(v8);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
  v11 = v10;
  if (!Count)
  {
    CFRelease(v8);
    v16 = 0.0;
LABEL_15:
    UIImageClass = getUIImageClass();
    if (a3 > 0.0)
    {
      v32 = a3;
    }

    else
    {
      v32 = v16;
    }

    v29 = [(objc_class *)UIImageClass animatedImageWithImages:v11 duration:v32];
    goto LABEL_19;
  }

  v34 = v5;
  v35 = v10;
  v12 = 0;
  v13 = *MEMORY[0x277CD31C8];
  v14 = *MEMORY[0x277CD31C0];
  v15 = *MEMORY[0x277CD3410];
  v16 = 0.0;
  do
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, v12, options);
    v18 = CGImageSourceCopyPropertiesAtIndex(v8, v12, 0);
    v19 = [(__CFDictionary *)v18 objectForKey:v13];
    v20 = [v19 objectForKey:v14];
    [v20 doubleValue];
    v22 = v21;

    v23 = [(__CFDictionary *)v18 objectForKeyedSubscript:v15];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 integerValue] - 2;
    }

    else
    {
      v25 = -1;
    }

    v26 = objc_alloc(getUIImageClass());
    if (v25 > 6)
    {
      v27 = 0;
    }

    else
    {
      v27 = qword_21E356A48[v25];
    }

    v16 = v16 + v22;
    v28 = [v26 initWithCGImage:ImageAtIndex scale:v27 orientation:a2];
    [v35 addObject:v28];

    CGImageRelease(ImageAtIndex);
    ++v12;
  }

  while (Count != v12);
  CFRelease(v8);
  v5 = v34;
  v11 = v35;
  if (Count != 1)
  {
    goto LABEL_15;
  }

  v29 = [v35 firstObject];
LABEL_19:
  v30 = v29;

LABEL_20:

  return v30;
}

Class initUIImage()
{
  if (UIKitLibrary_sOnce_3308 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_3308, &__block_literal_global_149);
  }

  result = objc_getClass("UIImage");
  classUIImage = result;
  getUIImageClass = UIImageFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_3310()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_3311 = result;
  return result;
}

id WFUIImageAnimatedGIFRepresentationAndOptions(void *a1, uint64_t a2, void *a3, double a4)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = [v7 images];

  if (v8)
  {
    v9 = [v7 images];
    v10 = [v9 count];

    if (a4 <= 0.0)
    {
      [v7 duration];
      a4 = v11;
    }

    v43 = *MEMORY[0x277CD31C8];
    v12 = v43;
    v41 = *MEMORY[0x277CD31C0];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4 / v10];
    v42 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v44[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];

    v16 = [MEMORY[0x277CBEB28] data];
    v17 = [*MEMORY[0x277CE1D88] identifier];
    v18 = CGImageDestinationCreateWithData(v16, v17, v10, 0);

    v39 = v12;
    v37 = *MEMORY[0x277CD31E0];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v38 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v40 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    CGImageDestinationSetProperties(v18, v21);
    v22 = [v7 images];
    v23 = [v22 count];

    if (v23)
    {
      v24 = 0;
      do
      {
        v25 = [v7 images];
        v26 = [v25 objectAtIndex:v24];
        CGImageDestinationAddImage(v18, [v26 CGImage], v15);

        ++v24;
        v27 = [v7 images];
        v28 = [v27 count];
      }

      while (v24 < v28);
    }

    v29 = CGImageDestinationFinalize(v18);
    CFRelease(v18);
    if (v29)
    {
      v30 = [MEMORY[0x277CBEA90] dataWithData:v16];

      v31 = 0;
    }

    else
    {
      v35 = *MEMORY[0x277CCA450];
      v32 = [MEMORY[0x277CCA8D8] mainBundle];
      v33 = [v32 localizedStringForKey:@"Could not finalize image destination" value:&stru_282F53518 table:0];
      v36 = v33;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

      v30 = 0;
      if (a3)
      {
        *a3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"WFAnimatedGIFTranscoderErrorDomain" code:-1 userInfo:v31];
      }
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

uint64_t EscapeMapCompare(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  v4 = v2 > v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

id __WFGetREMReminderEntry_block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WFGetWorkflowReminderStore();
  v4 = [v2 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.remreminder"];
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getREMObjectIDClass_softClass;
  v17 = getREMObjectIDClass_softClass;
  if (!getREMObjectIDClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getREMObjectIDClass_block_invoke;
    v19 = &unk_27834A178;
    v20 = &v14;
    __getREMObjectIDClass_block_invoke(buf);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = [v7 objectIDWithURL:{v6, v14}];
  v14 = 0;
  v10 = [v3 fetchReminderWithObjectID:v9 error:&v14];
  v11 = v14;
  if (!v10)
  {
    v12 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "WFGetREMReminderFromSerializedRepresentation";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_21E1BD000, v12, OS_LOG_TYPE_ERROR, "%s Failed to fetch reminder with error %@", buf, 0x16u);
    }
  }

  return v10;
}

void __getREMObjectIDClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMObjectID");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMObjectIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMObjectIDClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSerializableContentProvider.m" lineNumber:27 description:{@"Unable to find class %s", "REMObjectID"}];

    __break(1u);
  }
}

void ReminderKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2783456D8;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFSerializableContentProvider.m" lineNumber:25 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  return result;
}

id __WFGetREMReminderEntry_block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = getREMReminderClass_softClass;
  v15 = getREMReminderClass_softClass;
  if (!getREMReminderClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getREMReminderClass_block_invoke;
    v11[3] = &unk_27834A178;
    v11[4] = &v12;
    __getREMReminderClass_block_invoke(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  if (objc_opt_isKindOfClass())
  {
    v12 = @"link.contentkit.remreminder";
    v16 = @"objectID";
    v5 = [v2 objectID];
    v6 = [v5 urlRepresentation];
    v7 = [v6 absoluteString];
    v17[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_21E26F530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMReminderClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMReminder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMReminderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSerializableContentProvider.m" lineNumber:26 description:{@"Unable to find class %s", "REMReminder"}];

    __break(1u);
  }
}

id __WFGetEKEventEntry_block_invoke_2(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WFGetWorkflowEventStore();
  v4 = [v2 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.ekcalendaritem"];
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"startDate"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"endDate"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  v13 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"calendarItemIdentifier"];
  v14 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"calendarItemExternalIdentifier"];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = v12;
  v15 = [v3 predicateForEventsWithStartDate:v11 endDate:v12 calendars:0];
  value = v3;
  v16 = [v3 eventsMatchingPredicate:v15];

  v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    v29 = v4;
    v30 = v2;
    v28 = v11;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v22 = [v21 calendarItemIdentifier];
        if ([v22 isEqualToString:v13])
        {

LABEL_12:
          v26 = value;
          objc_setAssociatedObject(v21, &WFDeserializingEventStoreKey, value, 1);
          v25 = v21;

          v4 = v29;
          v2 = v30;
          v11 = v28;
          goto LABEL_13;
        }

        v23 = [v21 calendarItemExternalIdentifier];
        v24 = [v23 isEqualToString:v14];

        if (v24)
        {
          goto LABEL_12;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v4 = v29;
      v2 = v30;
      v11 = v28;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v25 = WFGetEKCalendarItemFromSerializedRepresentation(v2);
  v26 = value;
LABEL_13:

  return v25;
}

id WFGetEKCalendarItemFromSerializedRepresentation(void *a1)
{
  v1 = a1;
  v2 = WFGetWorkflowEventStore();
  v3 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.ekcalendaritem"];

  v4 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"calendarItemIdentifier"];
  v5 = [v2 calendarItemWithIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    objc_setAssociatedObject(v5, &WFDeserializingEventStoreKey, v2, 1);
    v7 = v6;
  }

  else
  {
    v8 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"calendarItemExternalIdentifier"];
    v9 = [v2 calendarItemsWithExternalIdentifier:v8];
    v7 = [v9 firstObject];

    if (v7)
    {
      objc_setAssociatedObject(v7, &WFDeserializingEventStoreKey, v2, 1);
    }
  }

  return v7;
}

id __WFGetEKEventEntry_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  getEKCalendarItemClass();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = WFGetSerializedRepresentationForEKCalendarItem(v3);
    v5 = [v4 mutableCopy];

    v6 = [v5 objectForKeyedSubscript:@"link.contentkit.ekcalendaritem"];
    v7 = [v6 mutableCopy];

    v8 = MEMORY[0x277CCABB0];
    v9 = [v3 startDate];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    [v7 setObject:v10 forKey:@"startDate"];

    v11 = MEMORY[0x277CCABB0];
    v12 = [v3 endDate];

    [v12 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
    [v7 setObject:v13 forKey:@"endDate"];

    [v5 setObject:v7 forKeyedSubscript:@"link.contentkit.ekcalendaritem"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id getEKCalendarItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEKCalendarItemClass_softClass;
  v7 = getEKCalendarItemClass_softClass;
  if (!getEKCalendarItemClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getEKCalendarItemClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getEKCalendarItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E26FCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFGetSerializedRepresentationForEKCalendarItem(void *a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"calendarItemIdentifier";
  v1 = a1;
  v2 = [v1 calendarItemIdentifier];
  v11[0] = v2;
  v10[1] = @"calendarItemExternalIdentifier";
  v3 = [v1 calendarItemExternalIdentifier];
  v11[1] = v3;
  v10[2] = @"title";
  v4 = [v1 title];

  v11[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = @"link.contentkit.ekcalendaritem";
  v9 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v6;
}

Class __getEKCalendarItemClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __EventKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783456C0;
    v8 = 0;
    EventKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSerializableContentProvider.m" lineNumber:34 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("EKCalendarItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEKCalendarItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSerializableContentProvider.m" lineNumber:35 description:{@"Unable to find class %s", "EKCalendarItem"}];

LABEL_10:
    __break(1u);
  }

  getEKCalendarItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary = result;
  return result;
}

id __WFGetEKCalendarItemEntry_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  getEKCalendarItemClass();
  if (objc_opt_isKindOfClass())
  {
    v3 = WFGetSerializedRepresentationForEKCalendarItem(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __WFGetMPMediaItemEntry_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.archivedmpmediaitem"];

  if ([v3 length])
  {
    v6 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:getMPMediaItemClass() fromData:v3 error:&v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getMPMediaItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaItemClass_softClass;
  v7 = getMPMediaItemClass_softClass;
  if (!getMPMediaItemClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaItemClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getMPMediaItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E270270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaItemClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783456A8;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSerializableContentProvider.m" lineNumber:38 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSerializableContentProvider.m" lineNumber:39 description:{@"Unable to find class %s", "MPMediaItem"}];

LABEL_10:
    __break(1u);
  }

  getMPMediaItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

id __WFGetMPMediaItemEntry_block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  getMPMediaItemClass();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v7];
    v4 = v7;
    if ([v3 length])
    {
      v8 = @"link.contentkit.archivedmpmediaitem";
      v9[0] = v3;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __WFGetCLLocationEntry_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.location"];

  if (v3)
  {
    v4 = WFCLLocationFromSerializedLocation(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __WFGetCLLocationEntry_block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getCLLocationClass_softClass_4022;
  v12 = getCLLocationClass_softClass_4022;
  if (!getCLLocationClass_softClass_4022)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getCLLocationClass_block_invoke_4023;
    v8[3] = &unk_27834A178;
    v8[4] = &v9;
    __getCLLocationClass_block_invoke_4023(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_isKindOfClass())
  {
    v13 = @"link.contentkit.location";
    v5 = WFSerializedLocationFromCLLocation(v2);
    v14[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_21E2707E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke_4023(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_4024)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke_4025;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278345690;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary_4024 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_4024)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSerializableContentProvider.m" lineNumber:41 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSerializableContentProvider.m" lineNumber:42 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass_4022 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_4025()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_4024 = result;
  return result;
}

id __WFGetMKMapItemEntry_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.mkmapitem"];
  v4 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"isCurrentLocation"];
  v5 = [v4 BOOLValue];

  v6 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"placemark"];
  v7 = v6;
  if (v5)
  {
    v8 = [getMKMapItemClass() mapItemForCurrentLocation];
  }

  else if (v6)
  {
    v9 = objc_alloc(getMKMapItemClass());
    v10 = MEMORY[0x277CCAAC8];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v11 = getMKPlacemarkClass_softClass;
    v24 = getMKPlacemarkClass_softClass;
    if (!getMKPlacemarkClass_softClass)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __getMKPlacemarkClass_block_invoke;
      v20[3] = &unk_27834A178;
      v20[4] = &v21;
      __getMKPlacemarkClass_block_invoke(v20);
      v11 = v22[3];
    }

    v12 = v11;
    _Block_object_dispose(&v21, 8);
    v13 = [v10 unarchivedObjectOfClass:v11 fromData:v7 error:0];
    v8 = [v9 initWithPlacemark:v13];
  }

  else
  {
    v8 = 0;
  }

  v14 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"name"];
  [v8 setName:v14];

  v15 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  [v8 setPhoneNumber:v15];

  v16 = MEMORY[0x277CBEBC0];
  v17 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"url"];
  v18 = [v16 URLWithString:v17];
  [v8 setUrl:v18];

  return v8;
}

void sub_21E270CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMKMapItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMKMapItemClass_softClass_4049;
  v7 = getMKMapItemClass_softClass_4049;
  if (!getMKMapItemClass_softClass_4049)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMKMapItemClass_block_invoke_4050;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getMKMapItemClass_block_invoke_4050(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E270DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKPlacemarkClass_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKPlacemark");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKPlacemarkClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKPlacemarkClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSerializableContentProvider.m" lineNumber:32 description:{@"Unable to find class %s", "MKPlacemark"}];

    __break(1u);
  }
}

void MapKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary_4044)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MapKitLibraryCore_block_invoke_4045;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278345678;
    v5 = 0;
    MapKitLibraryCore_frameworkLibrary_4044 = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary_4044)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFSerializableContentProvider.m" lineNumber:30 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MapKitLibraryCore_block_invoke_4045()
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary_4044 = result;
  return result;
}

void __getMKMapItemClass_block_invoke_4050(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKMapItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKMapItemClass_softClass_4049 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSerializableContentProvider.m" lineNumber:31 description:{@"Unable to find class %s", "MKMapItem"}];

    __break(1u);
  }
}

id __WFGetMKMapItemEntry_block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  getMKMapItemClass();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = objc_opt_new();
    v5 = [v3 placemark];

    if (v5)
    {
      v6 = MEMORY[0x277CCAAB0];
      v7 = [v3 placemark];
      v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
      [v4 setValue:v8 forKey:@"placemark"];
    }

    else if ([v3 isCurrentLocation])
    {
      [v4 setObject:MEMORY[0x277CBEC38] forKey:@"isCurrentLocation"];
    }

    v10 = [v3 name];

    if (v10)
    {
      v11 = [v3 name];
      [v4 setObject:v11 forKey:@"name"];
    }

    v12 = [v3 phoneNumber];

    if (v12)
    {
      v13 = [v3 phoneNumber];
      [v4 setObject:v13 forKey:@"phoneNumber"];
    }

    v14 = [v3 url];

    if (v14)
    {
      v15 = [v3 url];
      v16 = [v15 absoluteString];
      [v4 setObject:v16 forKey:@"url"];
    }

    v18 = @"link.contentkit.mkmapitem";
    v19[0] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_21E272AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4233(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E272D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCLGeocoderClass_block_invoke(uint64_t a1)
{
  CoreLocationLibrary_4237();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLGeocoder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLGeocoderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLGeocoderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DCMapsLink+CLGeocoding.m" lineNumber:17 description:{@"Unable to find class %s", "CLGeocoder"}];

    __break(1u);
  }
}

void *CoreLocationLibrary_4237()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_4245)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_4246;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783457A8;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_4245 = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_4245;
  if (!CoreLocationLibraryCore_frameworkLibrary_4245)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"DCMapsLink+CLGeocoding.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_4246()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_4245 = result;
  return result;
}

void sub_21E273304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCLLocationCoordinate2DIsValidSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary_4237();
  result = dlsym(v2, "CLLocationCoordinate2DIsValid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLLocationCoordinate2DIsValidSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCLLocationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationClass_softClass_4261;
  v7 = getCLLocationClass_softClass_4261;
  if (!getCLLocationClass_softClass_4261)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationClass_block_invoke_4262;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCLLocationClass_block_invoke_4262(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E273438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCLCircularRegionClass_block_invoke_4255(uint64_t a1)
{
  CoreLocationLibrary_4237();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLCircularRegion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLCircularRegionClass_softClass_4254 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLCircularRegionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DCMapsLink+CLGeocoding.m" lineNumber:16 description:{@"Unable to find class %s", "CLCircularRegion"}];

    __break(1u);
  }
}

void __getCLLocationClass_block_invoke_4262(uint64_t a1)
{
  CoreLocationLibrary_4237();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationClass_softClass_4261 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DCMapsLink+CLGeocoding.m" lineNumber:15 description:{@"Unable to find class %s", "CLLocation"}];

    __break(1u);
  }
}

void sub_21E2745D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelHomeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelHome");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelHomeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783457E8;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCNLabelWorkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelWork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelWorkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelSchoolSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelSchool");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelSchoolSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberiPhoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberiPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberiPhoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberMobileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberMobile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberMobileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberMainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberMain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberMainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberHomeFaxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberHomeFax");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberWorkFaxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberWorkFax");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberOtherFaxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberOtherFax");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberPagerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberPager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberPagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelEmailiCloudSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelEmailiCloud");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelEmailiCloudSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelOtherSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelOther");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelOtherSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21E27631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNLabeledValueClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_4470)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __ContactsLibraryCore_block_invoke_4471;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783458D8;
    v8 = 0;
    ContactsLibraryCore_frameworkLibrary_4470 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_4470)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFContactLabeledValue.m" lineNumber:13 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CNLabeledValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNLabeledValueClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFContactLabeledValue.m" lineNumber:14 description:{@"Unable to find class %s", "CNLabeledValue"}];

LABEL_10:
    __break(1u);
  }

  getCNLabeledValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_4471()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_4470 = result;
  return result;
}

void __getAVAssetReaderClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_4644();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetReader");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetReaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetReaderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:20 description:{@"Unable to find class %s", "AVAssetReader"}];

    __break(1u);
  }
}

void getAVMediaTypeAudio()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVMediaTypeAudioSymbolLoc_ptr;
  v9 = getAVMediaTypeAudioSymbolLoc_ptr;
  if (!getAVMediaTypeAudioSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_4644();
    v7[3] = dlsym(v1, "AVMediaTypeAudio");
    getAVMediaTypeAudioSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMediaType getAVMediaTypeAudio(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E276BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVFormatIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVFormatIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVFormatIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary_4644()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_4688)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_4689;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278345950;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_4688 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_4688;
  if (!AVFoundationLibraryCore_frameworkLibrary_4688)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:19 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getAVLinearPCMIsFloatKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVLinearPCMIsFloatKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMIsFloatKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVLinearPCMBitDepthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVLinearPCMBitDepthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMBitDepthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVLinearPCMIsNonInterleavedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVLinearPCMIsNonInterleaved");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMIsNonInterleavedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVLinearPCMIsBigEndianKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVLinearPCMIsBigEndianKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMIsBigEndianKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVSampleRateKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVSampleRateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSampleRateKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVNumberOfChannelsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVNumberOfChannelsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVNumberOfChannelsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVChannelLayoutKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVChannelLayoutKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVChannelLayoutKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVAssetReaderTrackOutputClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_4644();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetReaderTrackOutput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetReaderTrackOutputClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetReaderTrackOutputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:22 description:{@"Unable to find class %s", "AVAssetReaderTrackOutput"}];

    __break(1u);
  }
}

void __getAVAssetWriterClass_block_invoke_4657(uint64_t a1)
{
  AVFoundationLibrary_4644();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetWriter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetWriterClass_softClass_4656 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetWriterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:21 description:{@"Unable to find class %s", "AVAssetWriter"}];

    __break(1u);
  }
}

void *__getAVFileTypeAIFFSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVFileTypeAIFF");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVFileTypeAIFFSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVAssetWriterInputClass_block_invoke_4660(uint64_t a1)
{
  AVFoundationLibrary_4644();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetWriterInput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetWriterInputClass_softClass_4659 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetWriterInputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:23 description:{@"Unable to find class %s", "AVAssetWriterInput"}];

    __break(1u);
  }
}

void soft_CMTimeMake_4661(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getCMTimeMakeSymbolLoc_ptr_4669;
  v10 = getCMTimeMakeSymbolLoc_ptr_4669;
  if (!getCMTimeMakeSymbolLoc_ptr_4669)
  {
    v4 = CoreMediaLibrary_4663();
    v8[3] = dlsym(v4, "CMTimeMake");
    getCMTimeMakeSymbolLoc_ptr_4669 = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v3)
  {
    v3(0, a2);
  }

  else
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CMTime soft_CMTimeMake(int64_t, int32_t)"}];
    [v5 handleFailureInFunction:v6 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2773A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __WFEncodeAssetToAIFF_block_invoke(id *a1)
{
  if ([a1[4] isReadyForMoreMediaData])
  {
    do
    {
      v2 = [a1[5] copyNextSampleBuffer];
      v3 = a1[4];
      if (v2)
      {
        [v3 appendSampleBuffer:v2];
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v4 = getCMSampleBufferInvalidateSymbolLoc_ptr;
        v29 = getCMSampleBufferInvalidateSymbolLoc_ptr;
        if (!getCMSampleBufferInvalidateSymbolLoc_ptr)
        {
          v21 = MEMORY[0x277D85DD0];
          v22 = 3221225472;
          v23 = __getCMSampleBufferInvalidateSymbolLoc_block_invoke;
          v24 = &unk_27834A178;
          v25 = &v26;
          v5 = CoreMediaLibrary_4663();
          v6 = dlsym(v5, "CMSampleBufferInvalidate");
          *(v25[1] + 24) = v6;
          getCMSampleBufferInvalidateSymbolLoc_ptr = *(v25[1] + 24);
          v4 = v27[3];
        }

        _Block_object_dispose(&v26, 8);
        if (!v4)
        {
          v14 = [MEMORY[0x277CCA890] currentHandler];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"OSStatus soft_CMSampleBufferInvalidate(CMSampleBufferRef _Nonnull)"];
          [v14 handleFailureInFunction:v15 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:17 description:{@"%s", dlerror()}];

          __break(1u);
          return;
        }

        v4(v2);
        CFRelease(v2);
      }

      else
      {
        [v3 markAsFinished];
        v7 = a1[6];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __WFEncodeAssetToAIFF_block_invoke_2;
        v16[3] = &unk_278345908;
        v20 = a1[11];
        v8 = a1[7];
        v9 = a1[8];
        v10 = a1[9];
        v11 = a1[6];
        *&v12 = v10;
        *(&v12 + 1) = v11;
        *&v13 = v8;
        *(&v13 + 1) = v9;
        v17 = v13;
        v18 = v12;
        v19 = a1[10];
        [v7 finishWritingWithCompletionHandler:v16];
      }
    }

    while (([a1[4] isReadyForMoreMediaData] & 1) != 0);
  }
}

void *__getCMSampleBufferInvalidateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary_4663();
  result = dlsym(v2, "CMSampleBufferInvalidate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMSampleBufferInvalidateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreMediaLibrary_4663()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreMediaLibraryCore_frameworkLibrary_4665)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreMediaLibraryCore_block_invoke_4666;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278345968;
    v6 = 0;
    CoreMediaLibraryCore_frameworkLibrary_4665 = _sl_dlopen();
  }

  v0 = CoreMediaLibraryCore_frameworkLibrary_4665;
  if (!CoreMediaLibraryCore_frameworkLibrary_4665)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreMediaLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAudioInterchangeFormatEncoder.m" lineNumber:15 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __WFEncodeAssetToAIFF_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72);
  v6 = [WFFileRepresentation fileWithURL:*(a1 + 32) options:1 ofType:*(a1 + 40)];
  v3 = [*(a1 + 48) error];
  if (v3)
  {
    (*(v2 + 16))(v2, v6, v3);
  }

  else
  {
    v4 = [*(a1 + 56) error];
    v5 = v4;
    if (!v4)
    {
      v5 = *(a1 + 64);
    }

    (*(v2 + 16))(v2, v6, v5);
  }
}

uint64_t __CoreMediaLibraryCore_block_invoke_4666()
{
  result = _sl_dlopen();
  CoreMediaLibraryCore_frameworkLibrary_4665 = result;
  return result;
}

void *__getCMTimeMakeSymbolLoc_block_invoke_4670(uint64_t a1)
{
  v2 = CoreMediaLibrary_4663();
  result = dlsym(v2, "CMTimeMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeMakeSymbolLoc_ptr_4669 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke_4689()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_4688 = result;
  return result;
}

void *__getAVMediaTypeAudioSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_4644();
  result = dlsym(v2, "AVMediaTypeAudio");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeAudioSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFPossibleMobileDocumentsFileProviderDomainIDs()
{
  if (WFPossibleMobileDocumentsFileProviderDomainIDs_onceToken != -1)
  {
    dispatch_once(&WFPossibleMobileDocumentsFileProviderDomainIDs_onceToken, &__block_literal_global_4712);
  }

  v1 = WFPossibleMobileDocumentsFileProviderDomainIDs_possibleDomainIDs;

  return v1;
}

void __WFPossibleMobileDocumentsFileProviderDomainIDs_block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
  v4[1] = @"com.apple.CloudDocs.MobileDocumentsFileProviderManaged";
  v4[2] = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  v4[3] = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = WFPossibleMobileDocumentsFileProviderDomainIDs_possibleDomainIDs;
  WFPossibleMobileDocumentsFileProviderDomainIDs_possibleDomainIDs = v2;
}

void sub_21E278920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKPlacemarkClass_block_invoke_4736(uint64_t a1)
{
  MapKitLibrary_4737();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKPlacemark");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKPlacemarkClass_softClass_4735 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKPlacemarkClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCalendarEventContentItem.m" lineNumber:41 description:{@"Unable to find class %s", "MKPlacemark"}];

    __break(1u);
  }
}

void MapKitLibrary_4737()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary_4745)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MapKitLibraryCore_block_invoke_4746;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278345BC8;
    v5 = 0;
    MapKitLibraryCore_frameworkLibrary_4745 = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary_4745)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFCalendarEventContentItem.m" lineNumber:36 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MapKitLibraryCore_block_invoke_4746()
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary_4745 = result;
  return result;
}

id getMKMapItemClass_4749()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMKMapItemClass_softClass_4750;
  v7 = getMKMapItemClass_softClass_4750;
  if (!getMKMapItemClass_softClass_4750)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMKMapItemClass_block_invoke_4751;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getMKMapItemClass_block_invoke_4751(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E278D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKMapItemClass_block_invoke_4751(uint64_t a1)
{
  MapKitLibrary_4737();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKMapItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKMapItemClass_softClass_4750 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCalendarEventContentItem.m" lineNumber:40 description:{@"Unable to find class %s", "MKMapItem"}];

    __break(1u);
  }
}

void sub_21E27B15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEKAttendeeClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKAttendee");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKAttendeeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEKAttendeeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCalendarEventContentItem.m" lineNumber:39 description:{@"Unable to find class %s", "EKAttendee"}];

    __break(1u);
  }
}

void EventKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary_4821)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __EventKitLibraryCore_block_invoke_4822;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278345BB0;
    v5 = 0;
    EventKitLibraryCore_frameworkLibrary_4821 = _sl_dlopen();
  }

  if (!EventKitLibraryCore_frameworkLibrary_4821)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFCalendarEventContentItem.m" lineNumber:35 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __EventKitLibraryCore_block_invoke_4822()
{
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary_4821 = result;
  return result;
}

id getEKEventClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEKEventClass_softClass;
  v7 = getEKEventClass_softClass;
  if (!getEKEventClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getEKEventClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getEKEventClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E27BE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEKEventClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKEvent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEKEventClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCalendarEventContentItem.m" lineNumber:38 description:{@"Unable to find class %s", "EKEvent"}];

    __break(1u);
  }
}

void CNContactPropertyKeyFromWFContactPropertyID(int a1)
{
  v2 = 0;
  switch(a1)
  {
    case 0:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactGivenNameKeySymbolLoc_ptr;
      v38 = getCNContactGivenNameKeySymbolLoc_ptr;
      if (!getCNContactGivenNameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactGivenNameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v4 = ContactsLibrary_4899();
        v36[3] = dlsym(v4, "CNContactGivenNameKey");
        getCNContactGivenNameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactGivenNameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:16 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 1:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactFamilyNameKeySymbolLoc_ptr;
      v38 = getCNContactFamilyNameKeySymbolLoc_ptr;
      if (!getCNContactFamilyNameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactFamilyNameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v18 = ContactsLibrary_4899();
        v36[3] = dlsym(v18, "CNContactFamilyNameKey");
        getCNContactFamilyNameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactFamilyNameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:17 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 3:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
      v38 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
      if (!getCNContactPhoneNumbersKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactPhoneNumbersKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v15 = ContactsLibrary_4899();
        v36[3] = dlsym(v15, "CNContactPhoneNumbersKey");
        getCNContactPhoneNumbersKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactPhoneNumbersKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:18 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 4:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactEmailAddressesKeySymbolLoc_ptr;
      v38 = getCNContactEmailAddressesKeySymbolLoc_ptr;
      if (!getCNContactEmailAddressesKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactEmailAddressesKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v23 = ContactsLibrary_4899();
        v36[3] = dlsym(v23, "CNContactEmailAddressesKey");
        getCNContactEmailAddressesKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactEmailAddressesKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:19 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 5:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactPostalAddressesKeySymbolLoc_ptr;
      v38 = getCNContactPostalAddressesKeySymbolLoc_ptr;
      if (!getCNContactPostalAddressesKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactPostalAddressesKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v24 = ContactsLibrary_4899();
        v36[3] = dlsym(v24, "CNContactPostalAddressesKey");
        getCNContactPostalAddressesKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactPostalAddressesKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:20 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 6:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactMiddleNameKeySymbolLoc_ptr;
      v38 = getCNContactMiddleNameKeySymbolLoc_ptr;
      if (!getCNContactMiddleNameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactMiddleNameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v16 = ContactsLibrary_4899();
        v36[3] = dlsym(v16, "CNContactMiddleNameKey");
        getCNContactMiddleNameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactMiddleNameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:21 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 7:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactPhoneticGivenNameKeySymbolLoc_ptr;
      v38 = getCNContactPhoneticGivenNameKeySymbolLoc_ptr;
      if (!getCNContactPhoneticGivenNameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactPhoneticGivenNameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v19 = ContactsLibrary_4899();
        v36[3] = dlsym(v19, "CNContactPhoneticGivenNameKey");
        getCNContactPhoneticGivenNameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactPhoneticGivenNameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:22 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 8:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactPhoneticMiddleNameKeySymbolLoc_ptr;
      v38 = getCNContactPhoneticMiddleNameKeySymbolLoc_ptr;
      if (!getCNContactPhoneticMiddleNameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactPhoneticMiddleNameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v20 = ContactsLibrary_4899();
        v36[3] = dlsym(v20, "CNContactPhoneticMiddleNameKey");
        getCNContactPhoneticMiddleNameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactPhoneticMiddleNameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:23 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 9:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactPhoneticFamilyNameKeySymbolLoc_ptr;
      v38 = getCNContactPhoneticFamilyNameKeySymbolLoc_ptr;
      if (!getCNContactPhoneticFamilyNameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactPhoneticFamilyNameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v26 = ContactsLibrary_4899();
        v36[3] = dlsym(v26, "CNContactPhoneticFamilyNameKey");
        getCNContactPhoneticFamilyNameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactPhoneticFamilyNameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:24 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 10:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactOrganizationNameKeySymbolLoc_ptr;
      v38 = getCNContactOrganizationNameKeySymbolLoc_ptr;
      if (!getCNContactOrganizationNameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactOrganizationNameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v25 = ContactsLibrary_4899();
        v36[3] = dlsym(v25, "CNContactOrganizationNameKey");
        getCNContactOrganizationNameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactOrganizationNameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:25 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 11:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactDepartmentNameKeySymbolLoc_ptr;
      v38 = getCNContactDepartmentNameKeySymbolLoc_ptr;
      if (!getCNContactDepartmentNameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactDepartmentNameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v11 = ContactsLibrary_4899();
        v36[3] = dlsym(v11, "CNContactDepartmentNameKey");
        getCNContactDepartmentNameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactDepartmentNameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:26 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 12:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactDatesKeySymbolLoc_ptr;
      v38 = getCNContactDatesKeySymbolLoc_ptr;
      if (!getCNContactDatesKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactDatesKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v17 = ContactsLibrary_4899();
        v36[3] = dlsym(v17, "CNContactDatesKey");
        getCNContactDatesKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactDatesKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:27 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 13:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr;
      v38 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr;
      if (!getCNContactInstantMessageAddressesKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactInstantMessageAddressesKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v13 = ContactsLibrary_4899();
        v36[3] = dlsym(v13, "CNContactInstantMessageAddressesKey");
        getCNContactInstantMessageAddressesKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactInstantMessageAddressesKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:29 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 14:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactNoteKeySymbolLoc_ptr;
      v38 = getCNContactNoteKeySymbolLoc_ptr;
      if (!getCNContactNoteKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactNoteKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v9 = ContactsLibrary_4899();
        v36[3] = dlsym(v9, "CNContactNoteKey");
        getCNContactNoteKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactNoteKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:30 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 17:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactBirthdayKeySymbolLoc_ptr;
      v38 = getCNContactBirthdayKeySymbolLoc_ptr;
      if (!getCNContactBirthdayKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactBirthdayKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v21 = ContactsLibrary_4899();
        v36[3] = dlsym(v21, "CNContactBirthdayKey");
        getCNContactBirthdayKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactBirthdayKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:31 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 18:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactJobTitleKeySymbolLoc_ptr;
      v38 = getCNContactJobTitleKeySymbolLoc_ptr;
      if (!getCNContactJobTitleKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactJobTitleKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v22 = ContactsLibrary_4899();
        v36[3] = dlsym(v22, "CNContactJobTitleKey");
        getCNContactJobTitleKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactJobTitleKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:32 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 19:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactNicknameKeySymbolLoc_ptr;
      v38 = getCNContactNicknameKeySymbolLoc_ptr;
      if (!getCNContactNicknameKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactNicknameKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v28 = ContactsLibrary_4899();
        v36[3] = dlsym(v28, "CNContactNicknameKey");
        getCNContactNicknameKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactNicknameKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:33 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 20:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactNamePrefixKeySymbolLoc_ptr;
      v38 = getCNContactNamePrefixKeySymbolLoc_ptr;
      if (!getCNContactNamePrefixKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactNamePrefixKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v27 = ContactsLibrary_4899();
        v36[3] = dlsym(v27, "CNContactNamePrefixKey");
        getCNContactNamePrefixKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactNamePrefixKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:34 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 21:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactNameSuffixKeySymbolLoc_ptr;
      v38 = getCNContactNameSuffixKeySymbolLoc_ptr;
      if (!getCNContactNameSuffixKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactNameSuffixKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v7 = ContactsLibrary_4899();
        v36[3] = dlsym(v7, "CNContactNameSuffixKey");
        getCNContactNameSuffixKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactNameSuffixKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:35 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 22:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactUrlAddressesKeySymbolLoc_ptr;
      v38 = getCNContactUrlAddressesKeySymbolLoc_ptr;
      if (!getCNContactUrlAddressesKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactUrlAddressesKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v14 = ContactsLibrary_4899();
        v36[3] = dlsym(v14, "CNContactUrlAddressesKey");
        getCNContactUrlAddressesKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactUrlAddressesKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:38 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 26:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactCreationDateKeySymbolLoc_ptr;
      v38 = getCNContactCreationDateKeySymbolLoc_ptr;
      if (!getCNContactCreationDateKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactCreationDateKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v29 = ContactsLibrary_4899();
        v36[3] = dlsym(v29, "CNContactCreationDateKey");
        getCNContactCreationDateKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactCreationDateKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:36 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 27:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactModificationDateKeySymbolLoc_ptr;
      v38 = getCNContactModificationDateKeySymbolLoc_ptr;
      if (!getCNContactModificationDateKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactModificationDateKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v8 = ContactsLibrary_4899();
        v36[3] = dlsym(v8, "CNContactModificationDateKey");
        getCNContactModificationDateKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactModificationDateKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:37 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 46:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactSocialProfilesKeySymbolLoc_ptr;
      v38 = getCNContactSocialProfilesKeySymbolLoc_ptr;
      if (!getCNContactSocialProfilesKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactSocialProfilesKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v12 = ContactsLibrary_4899();
        v36[3] = dlsym(v12, "CNContactSocialProfilesKey");
        getCNContactSocialProfilesKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
        goto LABEL_97;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactSocialProfilesKey(void)"];
      [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:28 description:{@"%s", dlerror(), v31, v32, v33, v34}];
      goto LABEL_102;
    case 47:
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v3 = getCNContactContactRelationsKeySymbolLoc_ptr;
      v38 = getCNContactContactRelationsKeySymbolLoc_ptr;
      if (!getCNContactContactRelationsKeySymbolLoc_ptr)
      {
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __getCNContactContactRelationsKeySymbolLoc_block_invoke;
        v34 = &unk_27834A178;
        v10 = ContactsLibrary_4899();
        v36[3] = dlsym(v10, "CNContactContactRelationsKey");
        getCNContactContactRelationsKeySymbolLoc_ptr = v36[3];
        v3 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v3)
      {
LABEL_97:
        v2 = *v3;
LABEL_98:

        v30 = v2;
      }

      else
      {
        v5 = [MEMORY[0x277CCA890] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactContactRelationsKey(void)"];
        [v5 handleFailureInFunction:v6 file:@"WFAddressBookTypes.m" lineNumber:39 description:{@"%s", dlerror(), v31, v32, v33, v34}];
LABEL_102:

        __break(1u);
      }

      return;
    default:
      goto LABEL_98;
  }
}

void sub_21E27DDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary_4899()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_4930)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_4931;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278345BE0;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_4930 = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary_4930;
  if (!ContactsLibraryCore_frameworkLibrary_4930)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAddressBookTypes.m" lineNumber:15 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCNContactFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPostalAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactPostalAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPostalAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactMiddleNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactMiddleNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactMiddleNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactPhoneticGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticMiddleNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactPhoneticMiddleNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticMiddleNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactPhoneticFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactOrganizationNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactOrganizationNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactOrganizationNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactDepartmentNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactDepartmentNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactDepartmentNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactDatesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactDatesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactDatesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactSocialProfilesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactSocialProfilesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactSocialProfilesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactInstantMessageAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactInstantMessageAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactInstantMessageAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactNoteKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactNoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNoteKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactBirthdayKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactBirthdayKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactBirthdayKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactJobTitleKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactJobTitleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactJobTitleKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactNicknameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactNicknameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNicknameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactNamePrefixKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactNamePrefixKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNamePrefixKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactNameSuffixKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactNameSuffixKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNameSuffixKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactCreationDateKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactCreationDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactCreationDateKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactModificationDateKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactModificationDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactModificationDateKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactUrlAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactUrlAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactUrlAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactContactRelationsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_4899();
  result = dlsym(v2, "CNContactContactRelationsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactContactRelationsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_4931()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_4930 = result;
  return result;
}

id WFHTTPBodyFromQueryItems(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v1;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [v8 name];
          v10 = WFHTTPFormEncodedString(v9);
          v11 = [v8 value];
          v12 = WFHTTPFormEncodedString(v11);
          [v2 appendFormat:@"%@=%@&", v10, v12];
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    [v2 deleteCharactersInRange:{objc_msgSend(v2, "length") - 1, 1}];
    v13 = [v2 dataUsingEncoding:4];

    v1 = v15;
  }

  else
  {
    v13 = objc_opt_new();
  }

  return v13;
}