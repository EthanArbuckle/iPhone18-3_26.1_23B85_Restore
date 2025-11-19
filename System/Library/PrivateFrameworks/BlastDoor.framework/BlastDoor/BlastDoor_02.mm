uint64_t _BlastDoorASCodableWithdrawInviteRequestReadFrom(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v18 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          goto LABEL_22;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  result = [a2 hasError] ^ 1;
LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t add_PCSAttributes(void **a1)
{
  v2 = malloc_type_realloc(a1[1], 24 * (*a1 + 1), 0x10800404ACF7207uLL);
  if (!v2)
  {
    return 12;
  }

  a1[1] = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_PCSAttributes(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  v4 = *(a1 + 8);
  _asn1_free_top();
  v5 = *a1 - 1;
  *a1 = v5;
  if (v5 > a2)
  {
    memmove((*(a1 + 8) + 24 * a2), (*(a1 + 8) + 24 * (a2 + 1)), 24 * (v5 - a2));
    v5 = *a1;
  }

  v6 = malloc_type_realloc(*(a1 + 8), 24 * v5, 0x10800404ACF7207uLL);
  if (!v6 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v6;
  return result;
}

uint64_t add_PCSPublicKeyInfos(void **a1)
{
  v2 = malloc_type_realloc(a1[1], 48 * (*a1 + 1), 0x10A0040698877B7uLL);
  if (!v2)
  {
    return 12;
  }

  a1[1] = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_PCSPublicKeyInfos(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  v4 = *(a1 + 8);
  _asn1_free_top();
  v5 = *a1 - 1;
  *a1 = v5;
  if (v5 > a2)
  {
    memmove((*(a1 + 8) + 48 * a2), (*(a1 + 8) + 48 * (a2 + 1)), 48 * (v5 - a2));
    v5 = *a1;
  }

  v6 = malloc_type_realloc(*(a1 + 8), 48 * v5, 0x10A0040698877B7uLL);
  if (!v6 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v6;
  return result;
}

uint64_t add_PCSPrivateKeys(void **a1)
{
  v2 = malloc_type_realloc(a1[1], 24 * (*a1 + 1), 0x10A00404568A766uLL);
  if (!v2)
  {
    return 12;
  }

  a1[1] = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_PCSPrivateKeys(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  v4 = *(a1 + 8);
  _asn1_free_top();
  v5 = *a1 - 1;
  *a1 = v5;
  if (v5 > a2)
  {
    memmove((*(a1 + 8) + 24 * a2), (*(a1 + 8) + 24 * (a2 + 1)), 24 * (v5 - a2));
    v5 = *a1;
  }

  v6 = malloc_type_realloc(*(a1 + 8), 24 * v5, 0x10A00404568A766uLL);
  if (!v6 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v6;
  return result;
}

id truncatedStringAtMaximumMetadataLength(void *a1)
{
  v1 = a1;
  if ([v1 length] > 0x3E8)
  {
    v2 = [v1 substringToIndex:1000];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id truncatedAttributedStringAtMaximumMetadataLength(void *a1)
{
  v1 = a1;
  if ([v1 length] > 0x3E8)
  {
    v2 = [v1 attributedSubstringFromRange:{0, 1000}];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id URLForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      URLForKey_cold_1();
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    v6 = URLFromStringIfHTTPFamily(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id stringForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      stringForKey_cold_1();
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if ([v5 length])
  {
    v6 = truncatedStringAtMaximumMetadataLength(v5);
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  return v6;
}

id numberForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      numberForKey_cold_1();
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id URLFromStringIfHTTPFamily(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:a1];
  if ([v1 _bd_lp_isHTTPFamilyURL])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id arrayOfDictionariesForKey(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      arrayOfDictionariesForKey_cold_1();
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            arrayOfDictionariesForKey_cold_2();
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = v6;
  }

  else
  {
LABEL_16:
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_213FE85D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x213FE84B4);
  }

  _Unwind_Resume(a1);
}

id decodeURLForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:v3];

  if (([v5 _bd_lp_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(v5, "_bd_lp_hasAllowedNonHTTPScheme"))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id decodeStringForKey(void *a1, uint64_t a2)
{
  v2 = [a1 _bd_lp_strictlyDecodeNSStringForKey:a2];
  v3 = truncatedStringAtMaximumMetadataLength(v2);

  return v3;
}

id allKnownSpecializationClasses()
{
  v1 = allKnownSpecializationClasses_allSpecializationClasses;
  if (allKnownSpecializationClasses_allSpecializationClasses)
  {
  }

  else
  {
    v41 = MEMORY[0x277CBEB98];
    v40 = objc_opt_class();
    v39 = objc_opt_class();
    v38 = objc_opt_class();
    v37 = objc_opt_class();
    v36 = objc_opt_class();
    v35 = objc_opt_class();
    v34 = objc_opt_class();
    v33 = objc_opt_class();
    v32 = objc_opt_class();
    v31 = objc_opt_class();
    v30 = objc_opt_class();
    v29 = objc_opt_class();
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v17 = objc_opt_class();
    v16 = objc_opt_class();
    v15 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v41 setWithObjects:{v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = allKnownSpecializationClasses_allSpecializationClasses;
    allKnownSpecializationClasses_allSpecializationClasses = v13;

    v1 = allKnownSpecializationClasses_allSpecializationClasses;
  }

  return v1;
}

id decodeNumberForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:v3];

  return v5;
}

id decodeArrayOfStringsForKey(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [v1 _bd_lp_strictlyDecodeArrayOfObjectsOfClasses:v4 forKey:@"offers"];

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = truncatedStringAtMaximumMetadataLength(*(*(&v16 + 1) + 8 * i));
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

void SharedWithYouLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SharedWithYouLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SharedWithYouLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278177018;
    v4 = 0;
    SharedWithYouLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!SharedWithYouLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SharedWithYouLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SharedWithYouLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void BD_IOSurfaceDisallowForever()
{
  v5 = *MEMORY[0x277D85DE8];
  if (IOSurfaceLibraryCore() && getIOSurfaceDisallowForeverSymbolLoc())
  {
    v0 = IOSurface_ForwardDeclarationsLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_213FAF000, v0, OS_LOG_TYPE_INFO, "Soft linking IOSurfaceDisallowForever", v4, 2u);
    }

    IOSurfaceDisallowForeverSymbolLoc = getIOSurfaceDisallowForeverSymbolLoc();
    if (!IOSurfaceDisallowForeverSymbolLoc)
    {
      +[PosterKitUtilities configurationIdentityWithProvider:identifier:posterUUID:version:supplement:role:];
    }

    IOSurfaceDisallowForeverSymbolLoc();
  }

  else
  {
    v2 = IOSurface_ForwardDeclarationsLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BD_IOSurfaceDisallowForever_cold_2(v2);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

id IOSurface_ForwardDeclarationsLogHandle()
{
  if (IOSurface_ForwardDeclarationsLogHandle_onceToken != -1)
  {
    IOSurface_ForwardDeclarationsLogHandle_cold_1();
  }

  v1 = IOSurface_ForwardDeclarationsLogHandle_log;

  return v1;
}

uint64_t IOSurfaceLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!IOSurfaceLibraryCore_frameworkLibrary)
  {
    IOSurfaceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = IOSurfaceLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getIOSurfaceDisallowForeverSymbolLoc()
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getIOSurfaceDisallowForeverSymbolLoc_ptr;
  v7 = getIOSurfaceDisallowForeverSymbolLoc_ptr;
  if (!getIOSurfaceDisallowForeverSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getIOSurfaceDisallowForeverSymbolLoc_block_invoke;
    v3[3] = &unk_2781764E8;
    v3[4] = &v4;
    __getIOSurfaceDisallowForeverSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_213FFE20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IOSurfaceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IOSurfaceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getIOSurfaceDisallowForeverSymbolLoc_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = IOSurfaceLibraryCore();
  if (!v2)
  {
    v5 = abort_report_np();
    free(v5);
  }

  result = dlsym(v2, "IOSurfaceDisallowForever");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOSurfaceDisallowForeverSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213FFF750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_213FFFA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_213FFFE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHWHandwritingItemClass()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getHWHandwritingItemClass_softClass;
  v8 = getHWHandwritingItemClass_softClass;
  if (!getHWHandwritingItemClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getHWHandwritingItemClass_block_invoke;
    v4[3] = &unk_2781764E8;
    v4[4] = &v5;
    __getHWHandwritingItemClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_21400012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHWEncodingClass()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getHWEncodingClass_softClass;
  v8 = getHWEncodingClass_softClass;
  if (!getHWEncodingClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getHWEncodingClass_block_invoke;
    v4[3] = &unk_2781764E8;
    v4[4] = &v5;
    __getHWEncodingClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_2140002A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDKDrawingStrokePointClass_block_invoke(uint64_t a1)
{
  DrawingKitLibrary();
  result = objc_getClass("DKDrawingStrokePoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDKDrawingStrokePointClass_block_invoke_cold_1();
  }

  getDKDrawingStrokePointClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void DrawingKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!DrawingKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __DrawingKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278177068;
    v4 = 0;
    DrawingKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!DrawingKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __DrawingKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DrawingKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getDKDrawingStrokeClass_block_invoke(uint64_t a1)
{
  DrawingKitLibrary();
  result = objc_getClass("DKDrawingStroke");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDKDrawingStrokeClass_block_invoke_cold_1();
  }

  getDKDrawingStrokeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getDKDrawingClass_block_invoke(uint64_t a1)
{
  DrawingKitLibrary();
  result = objc_getClass("DKDrawing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDKDrawingClass_block_invoke_cold_1();
  }

  getDKDrawingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHWHandwritingItemClass_block_invoke(uint64_t a1)
{
  DrawingKitLibrary();
  result = objc_getClass("HWHandwritingItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHWHandwritingItemClass_block_invoke_cold_1();
  }

  getHWHandwritingItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHWEncodingClass_block_invoke(uint64_t a1)
{
  DrawingKitLibrary();
  result = objc_getClass("HWEncoding");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHWEncodingClass_block_invoke_cold_1();
  }

  getHWEncodingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id blastdoor_AVTAvatarRecordGetClass()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getAVTAvatarRecordClass_softClass;
  v8 = getAVTAvatarRecordClass_softClass;
  if (!getAVTAvatarRecordClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getAVTAvatarRecordClass_block_invoke;
    v4[3] = &unk_2781764E8;
    v4[4] = &v5;
    __getAVTAvatarRecordClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_214000868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id blastdoor_AVTAvatarPuppetRecordGetClass()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getAVTAvatarPuppetRecordClass_softClass;
  v8 = getAVTAvatarPuppetRecordClass_softClass;
  if (!getAVTAvatarPuppetRecordClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getAVTAvatarPuppetRecordClass_block_invoke;
    v4[3] = &unk_2781764E8;
    v4[4] = &v5;
    __getAVTAvatarPuppetRecordClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_214000974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id blastdoor_AVTAvatarRecordSerializerGetClass()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getAVTAvatarRecordSerializerClass_softClass;
  v8 = getAVTAvatarRecordSerializerClass_softClass;
  if (!getAVTAvatarRecordSerializerClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getAVTAvatarRecordSerializerClass_block_invoke;
    v4[3] = &unk_2781764E8;
    v4[4] = &v5;
    __getAVTAvatarRecordSerializerClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_214000A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTAvatarRecordClass_block_invoke(uint64_t a1)
{
  AvatarPersistenceLibrary();
  result = objc_getClass("AVTAvatarRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVTAvatarRecordClass_block_invoke_cold_1();
  }

  getAVTAvatarRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AvatarPersistenceLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!AvatarPersistenceLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __AvatarPersistenceLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278177080;
    v4 = 0;
    AvatarPersistenceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AvatarPersistenceLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __AvatarPersistenceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AvatarPersistenceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAVTAvatarPuppetRecordClass_block_invoke(uint64_t a1)
{
  AvatarPersistenceLibrary();
  result = objc_getClass("AVTAvatarPuppetRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVTAvatarPuppetRecordClass_block_invoke_cold_1();
  }

  getAVTAvatarPuppetRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVTAvatarRecordSerializerClass_block_invoke(uint64_t a1)
{
  AvatarPersistenceLibrary();
  result = objc_getClass("AVTAvatarRecordSerializer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVTAvatarRecordSerializerClass_block_invoke_cold_1();
  }

  getAVTAvatarRecordSerializerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _BlastDoorASCodableSecureCloudShareItemReadFrom(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        goto LABEL_26;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        goto LABEL_26;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR____BlastDoorASCodableSecureCloudShareItem__invitationToken;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR____BlastDoorASCodableSecureCloudShareItem__shareURL;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        result = 0;
        goto LABEL_27;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        goto LABEL_26;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR____BlastDoorASCodableSecureCloudShareItem__zoneName;
    goto LABEL_23;
  }

LABEL_26:
  result = [a2 hasError] ^ 1;
LABEL_27:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _BlastDoorASCodableSampleReadFrom(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v27[0] = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v27[0];
        v23 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadData();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_34;
        }

        *(a1 + 32) |= 2u;
        v27[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v27[0];
        v23 = 16;
      }

      *(a1 + v23) = v22;
LABEL_34:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  result = [a2 hasError] ^ 1;
LABEL_36:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _BlastDoorASCodableShareLocationsReadFrom(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        goto LABEL_24;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        goto LABEL_24;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = &OBJC_IVAR____BlastDoorASCodableShareLocations__relationshipShareURL;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        result = 0;
        goto LABEL_25;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        goto LABEL_24;
      }
    }

    v13 = &OBJC_IVAR____BlastDoorASCodableShareLocations__activityShareURL;
    goto LABEL_21;
  }

LABEL_24:
  result = [a2 hasError] ^ 1;
LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _BlastDoorASCodableActivitySnapshotReadFrom(uint64_t a1, void *a2)
{
  v81[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        goto LABEL_157;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v81[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v81[0] & 0x7F) << v5;
        if ((v81[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        goto LABEL_157;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 39)
      {
        if (v13 <= 59)
        {
          if (v13 > 49)
          {
            if (v13 == 50)
            {
              *(a1 + 144) |= 0x2000u;
              v81[0] = 0;
              v45 = [a2 position] + 8;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v81[0];
              v67 = 112;
              goto LABEL_155;
            }

            if (v13 == 51)
            {
              *(a1 + 144) |= 0x800u;
              v81[0] = 0;
              v27 = [a2 position] + 8;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
              {
                v70 = [a2 data];
                [v70 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v81[0];
              v67 = 96;
              goto LABEL_155;
            }
          }

          else
          {
            if (v13 == 40)
            {
              *(a1 + 144) |= 1u;
              v81[0] = 0;
              v43 = [a2 position] + 8;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v81[0];
              v67 = 8;
              goto LABEL_155;
            }

            if (v13 == 41)
            {
              *(a1 + 144) |= 2u;
              v81[0] = 0;
              v23 = [a2 position] + 8;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v81[0];
              v67 = 16;
              goto LABEL_155;
            }
          }
        }

        else if (v13 <= 69)
        {
          if (v13 == 60)
          {
            *(a1 + 144) |= 0x200u;
            v81[0] = 0;
            v62 = [a2 position] + 8;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 8, v63 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v66 = v81[0];
            v67 = 80;
            goto LABEL_155;
          }

          if (v13 == 61)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 144) |= 0x4000u;
            while (1)
            {
              LOBYTE(v81[0]) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v81[0] & 0x7F) << v37;
              if ((v81[0] & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_131;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v39;
            }

LABEL_131:
            v64 = 120;
            goto LABEL_132;
          }
        }

        else
        {
          switch(v13)
          {
            case 'F':
              *(a1 + 144) |= 0x100u;
              v81[0] = 0;
              v60 = [a2 position] + 8;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 8, v61 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v81[0];
              v67 = 72;
              goto LABEL_155;
            case 'G':
              *(a1 + 144) |= 0x80u;
              v81[0] = 0;
              v47 = [a2 position] + 8;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
              {
                v71 = [a2 data];
                [v71 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v81[0];
              v67 = 64;
LABEL_155:
              *(a1 + v67) = v66;
              goto LABEL_156;
            case 'H':
              v14 = 0;
              v15 = 0;
              v16 = 0;
              *(a1 + 144) |= 4u;
              while (1)
              {
                LOBYTE(v81[0]) = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v81[0] & 0x7F) << v14;
                if ((v81[0] & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_123;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v16;
              }

LABEL_123:
              v64 = 24;
LABEL_132:
              *(a1 + v64) = v20;
              goto LABEL_156;
          }
        }

        goto LABEL_114;
      }

      if (v13 > 19)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 144) |= 0x400u;
          while (1)
          {
            LOBYTE(v81[0]) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v81[0] & 0x7F) << v52;
            if ((v81[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v54;
          }

LABEL_119:
          v64 = 88;
          goto LABEL_132;
        }

        if (v13 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 144) |= 0x1000u;
          while (1)
          {
            LOBYTE(v81[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v81[0] & 0x7F) << v29;
            if ((v81[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_127;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_127:
          v64 = 104;
          goto LABEL_132;
        }

        goto LABEL_114;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = PBReaderReadData();
          v22 = *(a1 + 136);
          *(a1 + 136) = v21;

          goto LABEL_156;
        }

        goto LABEL_114;
      }

      v49 = objc_alloc_init(_BlastDoorASCodableSample);
      objc_storeStrong((a1 + 128), v49);
      v81[0] = 0;
      v81[1] = 0;
      if (!PBReaderPlaceMark() || !_BlastDoorASCodableSampleReadFrom(v49, a2))
      {

LABEL_160:
        result = 0;
        goto LABEL_158;
      }

      PBReaderRecallMark();

LABEL_156:
      v78 = [a2 position];
      if (v78 >= [a2 length])
      {
        goto LABEL_157;
      }
    }

    if (v13 > 29)
    {
      if (v13 == 30)
      {
        *(a1 + 144) |= 8u;
        v81[0] = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v73 = [a2 data];
          [v73 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v81[0];
        v67 = 32;
        goto LABEL_155;
      }

      if (v13 == 31)
      {
        *(a1 + 144) |= 0x10u;
        v81[0] = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v77 = [a2 data];
          [v77 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v81[0];
        v67 = 40;
        goto LABEL_155;
      }
    }

    else
    {
      if (v13 == 20)
      {
        *(a1 + 144) |= 0x20u;
        v81[0] = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v72 = [a2 data];
          [v72 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v81[0];
        v67 = 48;
        goto LABEL_155;
      }

      if (v13 == 21)
      {
        *(a1 + 144) |= 0x40u;
        v81[0] = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v76 = [a2 data];
          [v76 getBytes:v81 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v81[0];
        v67 = 56;
        goto LABEL_155;
      }
    }

LABEL_114:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_156;
  }

LABEL_157:
  result = [a2 hasError] ^ 1;
LABEL_158:
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _BlastDoorASCodableActivityDataPreviewReadFrom(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v21) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_BlastDoorASCodableAchievement);
          [a1 addAchievements:v14];
          v21 = 0;
          v22 = 0;
          if (!PBReaderPlaceMark() || !_BlastDoorASCodableAchievementReadFrom(v14, a2))
          {
LABEL_41:

LABEL_42:
            result = 0;
            goto LABEL_40;
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 1u;
          v21 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v21 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v21;
          goto LABEL_38;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_BlastDoorASCodableActivitySnapshot);
          objc_storeStrong((a1 + 24), v14);
          v21 = 0;
          v22 = 0;
          if (!PBReaderPlaceMark() || !_BlastDoorASCodableActivitySnapshotReadFrom(v14, a2))
          {
            goto LABEL_41;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_BlastDoorASCodableWorkout);
          [a1 addWorkouts:v14];
          v21 = 0;
          v22 = 0;
          if (!PBReaderPlaceMark() || !_BlastDoorASCodableWorkoutReadFrom(v14, a2))
          {
            goto LABEL_41;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_38:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  result = [a2 hasError] ^ 1;
LABEL_40:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _BlastDoorASCodableAchievementReadFrom(uint64_t a1, void *a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        goto LABEL_73;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43[0] & 0x7F) << v5;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        goto LABEL_73;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 3)
        {
          *(a1 + 64) |= 1u;
          v43[0] = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v43 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v43[0];
          v38 = 8;
          goto LABEL_71;
        }

        if (v13 == 4)
        {
          *(a1 + 64) |= 2u;
          v43[0] = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v43 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v43[0];
          v38 = 16;
LABEL_71:
          *(a1 + v38) = v37;
          goto LABEL_72;
        }

LABEL_42:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_72;
      }

      v25 = objc_alloc_init(_BlastDoorASCodableSample);
      objc_storeStrong((a1 + 48), v25);
      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || !_BlastDoorASCodableSampleReadFrom(v25, a2))
      {

LABEL_76:
        result = 0;
        goto LABEL_74;
      }

      PBReaderRecallMark();

LABEL_72:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        goto LABEL_73;
      }
    }

    if (v13 > 7)
    {
      if (v13 == 8)
      {
        v23 = PBReaderReadString();
        v24 = 40;
        goto LABEL_54;
      }

      if (v13 == 9)
      {
        v23 = PBReaderReadString();
        v24 = 56;
LABEL_54:
        v32 = *(a1 + v24);
        *(a1 + v24) = v23;

        goto LABEL_72;
      }
    }

    else
    {
      if (v13 == 5)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 64) |= 4u;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v43[0] & 0x7F) << v26;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v28;
        }

LABEL_61:
        v35 = 24;
        goto LABEL_66;
      }

      if (v13 == 7)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 8u;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v43[0] & 0x7F) << v14;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_65:
        v35 = 32;
LABEL_66:
        *(a1 + v35) = v20;
        goto LABEL_72;
      }
    }

    goto LABEL_42;
  }

LABEL_73:
  result = [a2 hasError] ^ 1;
LABEL_74:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _BlastDoorASCodableWorkoutReadFrom(uint64_t a1, void *a2)
{
  v71[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v71[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v71[0] & 0x7F) << v5;
        if ((v71[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = objc_alloc_init(_BlastDoorASCodableSample);
          objc_storeStrong((a1 + 96), v13);
          v71[0] = 0;
          v71[1] = 0;
          if (PBReaderPlaceMark() && _BlastDoorASCodableSampleReadFrom(v13, a2))
          {
            PBReaderRecallMark();

            goto LABEL_118;
          }

          goto LABEL_122;
        case 2u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            LOBYTE(v71[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v71[0] & 0x7F) << v34;
            if ((v71[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v36;
          }

LABEL_98:
          v59 = 64;
          goto LABEL_103;
        case 5u:
          *(a1 + 124) |= 2u;
          v71[0] = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:v71 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v71[0];
          v63 = 16;
          goto LABEL_117;
        case 6u:
          *(a1 + 124) |= 0x40u;
          v71[0] = 0;
          v48 = [a2 position] + 8;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v71 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v71[0];
          v63 = 56;
          goto LABEL_117;
        case 7u:
          *(a1 + 124) |= 0x10u;
          v71[0] = 0;
          v50 = [a2 position] + 8;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:v71 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v71[0];
          v63 = 40;
          goto LABEL_117;
        case 8u:
          *(a1 + 124) |= 0x20u;
          v71[0] = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:v71 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v71[0];
          v63 = 48;
          goto LABEL_117;
        case 9u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 124) |= 8u;
          while (1)
          {
            LOBYTE(v71[0]) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v71[0] & 0x7F) << v40;
            if ((v71[0] & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v42;
          }

LABEL_102:
          v59 = 32;
          goto LABEL_103;
        case 0xAu:
          *(a1 + 124) |= 4u;
          v71[0] = 0;
          v46 = [a2 position] + 8;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:v71 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v71[0];
          v63 = 24;
LABEL_117:
          *(a1 + v63) = v62;
          goto LABEL_118;
        case 0xBu:
          v28 = PBReaderReadString();
          v29 = 72;
          goto LABEL_86;
        case 0xCu:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 124) |= 0x200u;
          while (1)
          {
            LOBYTE(v71[0]) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v71[0] & 0x7F) << v52;
            if ((v71[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_105;
            }
          }

          v27 = (v54 != 0) & ~[a2 hasError];
LABEL_105:
          v60 = 121;
          goto LABEL_106;
        case 0xDu:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 124) |= 0x100u;
          while (1)
          {
            LOBYTE(v71[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v71[0] & 0x7F) << v21;
            if ((v71[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_94;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_94:
          v60 = 120;
LABEL_106:
          *(a1 + v60) = v27;
          goto LABEL_118;
        case 0xEu:
          v28 = PBReaderReadString();
          v29 = 80;
          goto LABEL_86;
        case 0xFu:
          v28 = PBReaderReadString();
          v29 = 88;
          goto LABEL_86;
        case 0x10u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 124) |= 1u;
          break;
        case 0x11u:
          v28 = PBReaderReadString();
          v29 = 104;
          goto LABEL_86;
        case 0x12u:
          v28 = PBReaderReadString();
          v29 = 112;
LABEL_86:
          v58 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_118;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_118;
          }

LABEL_122:
          result = 0;
          goto LABEL_120;
      }

      while (1)
      {
        LOBYTE(v71[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v71[0] & 0x7F) << v14;
        if ((v71[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_92;
        }
      }

      v20 = [a2 hasError] ? 0 : v16;
LABEL_92:
      v59 = 8;
LABEL_103:
      *(a1 + v59) = v20;
LABEL_118:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  result = [a2 hasError] ^ 1;
LABEL_120:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21400AA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_214028D8C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214028D38();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402DAA0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402DB90();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400ABA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402DA4C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400ABFC@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = *(v1 + *(type metadata accessor for CSDMConversationMessageProto(0) + 20));
  v8 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  sub_213FB2E54(v7 + v8, v6, &qword_27C903CD8, &qword_2146E9808);
  v9 = type metadata accessor for CSDMConversationLinkProto(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_214028E34(v6, a1, type metadata accessor for CSDMConversationLinkProto);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = &a1[v9[5]];
  sub_2146D8DE8();
  v12 = &a1[v9[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&a1[v9[7]] = xmmword_2146E68C0;
  *&a1[v9[8]] = xmmword_2146E68C0;
  v13 = &a1[v9[9]];
  *v13 = 0;
  v13[8] = 1;
  v14 = &a1[v9[10]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = v9[11];
  v16 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  v17 = &a1[v9[12]];
  *v17 = 0;
  v17[8] = 1;
  a1[v9[13]] = 2;
  v18 = &a1[v9[14]];
  *v18 = 0;
  *(v18 + 1) = 0;
  a1[v9[15]] = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_213FB2DF4(v6, &qword_27C903CD8, &qword_2146E9808);
  }

  return result;
}

uint64_t sub_21400AE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_214028DE0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AEB4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214028EFC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21400AF00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214028EFC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21400AF44()
{
  v2 = *v0;
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_21400AFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402EE20();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AFF4()
{
  v2 = *v0;
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_21400B064(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402EE74();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400B0C0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA196B0);
  __swift_project_value_buffer(v0, qword_27CA196B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "None";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Audio";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Video";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400B2F0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA196C8);
  __swift_project_value_buffer(v0, qword_27CA196C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Default";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AVLessSharePlay";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ContinuitySession";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400B524()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA196E0);
  __swift_project_value_buffer(v0, qword_27CA196E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E68E0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "protoProtocolVersion";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "protoWantsVideo";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "inviteData";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "protoSenderMuteUplink";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "protoShouldSuppressInCallUI";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "protoMomentsV2Available";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "protoUpgradeSessionUUID";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21400B868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          v11 = v4;
          if (result == 6)
          {
            v16 = *(type metadata accessor for CSDMCallMessageProto(0) + 36);
          }

          else
          {
            v14 = *(type metadata accessor for CSDMCallMessageProto(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 8)
        {
          v11 = v4;
          v17 = *(type metadata accessor for CSDMCallMessageProto(0) + 44);
          goto LABEL_5;
        }

        if (result == 9)
        {
          v15 = *(type metadata accessor for CSDMCallMessageProto(0) + 48);
          sub_2146D8F38();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v11 = v4;
          v12 = *(type metadata accessor for CSDMCallMessageProto(0) + 28);
LABEL_5:
          v4 = v11;
          sub_2146D8E98();
          goto LABEL_6;
        }

        if (result == 4)
        {
          sub_21400BA4C();
        }
      }

      else if (result == 1)
      {
        sub_21400CF88(a1, v5, a2, a3, type metadata accessor for CSDMCallMessageProto, sub_21402DAA0);
      }

      else if (result == 2)
      {
        v13 = *(type metadata accessor for CSDMCallMessageProto(0) + 24);
        sub_2146D8F58();
      }

LABEL_6:
      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21400BA4C()
{
  v0 = *(type metadata accessor for CSDMCallMessageProto(0) + 32);
  type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  sub_214027000(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto);
  return sub_2146D8F98();
}

uint64_t sub_21400BB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21400BC00(v3);
  if (!v4)
  {
    sub_21400BC8C(v3);
    sub_21400BD04(v3);
    sub_21400BD7C(v3, a1, a2, a3);
    sub_21400BF8C(v3);
    sub_21400C004(v3);
    sub_21400C07C(v3);
    sub_21400C0F4(v3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21400BC00(uint64_t a1)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 20)) != 3)
  {
    v3 = *(a1 + *(result + 20));
    sub_21402DAA0();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21400BC8C(uint64_t a1)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_21400BD04(uint64_t a1)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21400BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CSDMCallMessageProto(0);
  sub_213FB2E54(a1 + *(v14 + 32), v8, &unk_27C9037B8, &unk_2147598F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &unk_27C9037B8, &unk_2147598F0);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMAVConferenceInviteDataProto);
  sub_214027000(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMAVConferenceInviteDataProto);
}

uint64_t sub_21400BF8C(uint64_t a1)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21400C004(uint64_t a1)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21400C07C(uint64_t a1)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21400C0F4(uint64_t a1)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21400C170@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  *(a2 + a1[5]) = 3;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  v7 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v9) = 2;
  v10 = a1[12];
  *(a2 + a1[11]) = 2;
  v11 = (a2 + v10);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_21400C294(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903D08, type metadata accessor for CSDMCallMessageProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21400C334(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903C58, type metadata accessor for CSDMCallMessageProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21400C3A0()
{
  sub_214027000(&qword_27C903C58, type metadata accessor for CSDMCallMessageProto);

  return sub_2146D9008();
}

uint64_t sub_21400C420()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA196F8);
  __swift_project_value_buffer(v0, qword_27CA196F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Invite";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SenderMuteUplink";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400C654()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19710);
  __swift_project_value_buffer(v0, qword_27CA19710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "SKEBlob";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mediaBlob";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "callInfoBlob";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400C868()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for CSDMAVConferenceInviteDataProto(0) + 28);
LABEL_3:
        v0 = 0;
        sub_2146D8EC8();
        break;
      case 2:
        v1 = *(type metadata accessor for CSDMAVConferenceInviteDataProto(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for CSDMAVConferenceInviteDataProto(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_21400C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140173D0(v3, a1, a2, a3, type metadata accessor for CSDMAVConferenceInviteDataProto);
  if (!v4)
  {
    sub_214017474(v3, a1, a2, a3, type metadata accessor for CSDMAVConferenceInviteDataProto);
    sub_214023878(v3, a1, a2, a3, type metadata accessor for CSDMAVConferenceInviteDataProto);
    return sub_2146D8DD8();
  }

  return result;
}

double sub_21400C9F8@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_2146E68C0;
  *(a2 + v5) = xmmword_2146E68C0;
  *(a2 + a1[7]) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21400CA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903D18, type metadata accessor for CSDMAVConferenceInviteDataProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21400CB28(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21400CB94()
{
  sub_214027000(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto);

  return sub_2146D9008();
}

uint64_t sub_21400CC14()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19728);
  __swift_project_value_buffer(v0, qword_27CA19728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "isoCountryCode";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "siriDisplayName";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400CE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v11 = v4;
          v12 = *(type metadata accessor for CSDMHandleProto(0) + 28);
LABEL_5:
          v4 = v11;
          sub_2146D8F38();
          goto LABEL_6;
        }

        if (result == 5)
        {
          v11 = v4;
          v14 = *(type metadata accessor for CSDMHandleProto(0) + 32);
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        sub_21400CF88(a1, v5, a2, a3, type metadata accessor for CSDMHandleProto, sub_21402DB90);
      }

      else if (result == 2)
      {
        v11 = v4;
        v13 = *(type metadata accessor for CSDMHandleProto(0) + 24);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21400CF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 20);
  a6();
  return sub_2146D8EB8();
}

uint64_t sub_21400D010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21400D0F8(v3);
  if (!v4)
  {
    sub_21401BA04(v3, a1, a2, a3, type metadata accessor for CSDMHandleProto);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMHandleProto);
    sub_21401BA88(v3, a1, a2, a3, type metadata accessor for CSDMHandleProto);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21400D0F8(uint64_t a1)
{
  result = type metadata accessor for CSDMHandleProto(0);
  if (*(a1 + *(result + 20)) != 4)
  {
    v3 = *(a1 + *(result + 20));
    sub_21402DB90();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21400D184@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  *(a2 + a1[5]) = 4;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_21400D228(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903D40, type metadata accessor for CSDMHandleProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21400D2C8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21400D334()
{
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);

  return sub_2146D9008();
}

uint64_t sub_21400D3B4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19740);
  __swift_project_value_buffer(v0, qword_27CA19740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "None";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Generic";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PhoneNumber";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EmailAddress";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400D61C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19758);
  __swift_project_value_buffer(v0, qword_27CA19758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_2146E6900;
  v4 = v72 + v3;
  v5 = v72 + v3 + v1[14];
  *(v72 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v72 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "members";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v72 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "message";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v72 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "messagesGroupUUIDString";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = (v72 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "messagesGroupName";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v72 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isMomentsAvailable";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v72 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "activitySession";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v72 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "video";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v72 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isScreenSharingAvailable";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "providerIdentifier";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "otherInvitedHandles";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isPersonaAvailable";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "lightweightMembers";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "isLightweight";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isGondolaCallingAvailable";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v8();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "videoEnabled";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v8();
  v37 = v72 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "sharePlayProtocolVersion";
  *(v37 + 8) = 24;
  *(v37 + 16) = 2;
  v8();
  v38 = (v72 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "isGFTDowngradeToOneToOneAvailable";
  *(v39 + 1) = 33;
  v39[16] = 2;
  v8();
  v40 = (v72 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "isUPlusNDowngradeAvailable";
  *(v41 + 1) = 26;
  v41[16] = 2;
  v8();
  v42 = (v72 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "collaborationIdentifier";
  *(v43 + 1) = 23;
  v43[16] = 2;
  v8();
  v44 = (v72 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "supportsLeaveContext";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v72 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "isUPlusOneScreenSharingAvailable";
  *(v47 + 1) = 32;
  v47[16] = 2;
  v8();
  v48 = (v72 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "isSpatialPersonaEnabled";
  *(v49 + 1) = 23;
  v49[16] = 2;
  v8();
  v50 = (v72 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 25;
  *v51 = "isUPlusOneAVLessAvailable";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  v52 = (v72 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "visionFeatureVersion";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v72 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "visionCallEstablishmentVersion";
  *(v55 + 1) = 30;
  v55[16] = 2;
  v8();
  v56 = (v72 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 29;
  *v57 = "isUPlusOneVisionToVisionAvailable";
  *(v57 + 1) = 33;
  v57[16] = 2;
  v8();
  v58 = (v72 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 30;
  *v59 = "supportsRequestToScreenShare";
  *(v59 + 1) = 28;
  v59[16] = 2;
  v8();
  v60 = (v72 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 31;
  *v61 = "isPhotosSharePlayAvailable";
  *(v61 + 1) = 26;
  v61[16] = 2;
  v8();
  v62 = (v72 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 32;
  *v63 = "stableDeviceIdentifier";
  *(v63 + 1) = 22;
  v63[16] = 2;
  v8();
  v64 = (v72 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 34;
  *v65 = "isTranslationAvailable";
  *(v65 + 1) = 22;
  v65[16] = 2;
  v8();
  v66 = (v72 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 35;
  *v67 = "isNearbySharePlay";
  *(v67 + 1) = 17;
  v67[16] = 2;
  v8();
  v68 = v72 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 36;
  *v68 = "isUpgradeToVideo";
  *(v68 + 8) = 16;
  *(v68 + 16) = 2;
  v8();
  v69 = (v72 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 37;
  *v70 = "nearbyFeatureVersion";
  *(v70 + 1) = 20;
  v70[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21400DFC0()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  v3 = type metadata accessor for CSDMConversationMessageProto(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable) = 2;
  v6 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  v7 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable) = 2;
  v8 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled) = 2;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable) = 2;
  v10 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable) = 2;
  v11 = v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable) = 2;
  v13 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo) = 2;
  v14 = v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  *v14 = 0;
  *(v14 + 4) = 1;
  return v0;
}

uint64_t sub_21400E238()
{
  v1 = *(v0 + 24);

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message, &qword_27C903CF0, &unk_2146E9810);
  v2 = *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName + 8);

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession, &qword_27C903CB8, &qword_2146E97F0);
  v4 = *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles);

  v6 = *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers);

  v7 = *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier + 8);

  return v0;
}

void sub_21400E35C()
{
  sub_21400E518(319, &qword_27C903418, type metadata accessor for CSDMConversationMessageProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21400E518(319, &unk_27C903420, type metadata accessor for CSDMConversationActivitySessionProto, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21400E518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21400E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2140193A4();
        continue;
      case 2:
        sub_214012D24(a2, a1, a3, a4, type metadata accessor for CSDMConversationMemberProto, &qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
        continue;
      case 3:
        sub_21400E8C4();
        continue;
      case 4:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring;
        goto LABEL_35;
      case 5:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName;
        goto LABEL_35;
      case 6:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
        goto LABEL_3;
      case 7:
        sub_21400E9A0();
        continue;
      case 8:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
        goto LABEL_3;
      case 9:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
        goto LABEL_3;
      case 10:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier;
        goto LABEL_35;
      case 11:
        sub_21400EA7C();
        continue;
      case 12:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
        goto LABEL_3;
      case 13:
        sub_21400EB58();
        continue;
      case 14:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
        goto LABEL_3;
      case 15:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
        goto LABEL_3;
      case 16:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
        goto LABEL_3;
      case 17:
        v12 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
        goto LABEL_38;
      case 18:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
        goto LABEL_3;
      case 20:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
        goto LABEL_3;
      case 21:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier;
        goto LABEL_35;
      case 22:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
        goto LABEL_3;
      case 23:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
        goto LABEL_3;
      case 24:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
        goto LABEL_3;
      case 25:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
        goto LABEL_3;
      case 26:
        v12 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
        goto LABEL_38;
      case 27:
        v12 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
        goto LABEL_38;
      case 29:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
        goto LABEL_3;
      case 30:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
        goto LABEL_3;
      case 31:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
        goto LABEL_3;
      case 32:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier;
LABEL_35:
        sub_2140202C4(a2, a1, a3, a4, v13, MEMORY[0x277D217D0]);
        continue;
      case 34:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
        goto LABEL_3;
      case 35:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
        goto LABEL_3;
      case 36:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
LABEL_3:
        sub_214020438(a2, a1, a3, a4, v9);
        break;
      case 37:
        v12 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
LABEL_38:
        sub_214019630(a2, a1, a3, a4, v12, MEMORY[0x277D217E0]);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21400E8C4()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMessageProto(0);
  sub_214027000(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21400E9A0()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivitySessionProto(0);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21400EA7C()
{
  swift_beginAccess();
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_21400EB58()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMemberProto(0);
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_21400EC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214019BD0(a1);
  if (!v4)
  {
    swift_beginAccess();
    if (*(*(a1 + 24) + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);

      sub_2146D90D8();
    }

    sub_21400F308(a1, a2, a3, a4);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable);
    sub_21400F524(a1, a2, a3, a4);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
    v10 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for CSDMHandleProto(0);
      sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);

      sub_2146D90D8();
    }

    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable);
    v11 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);

      sub_2146D90D8();
    }

    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion, 17, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion, 26, MEMORY[0x277D21860]);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion, 27, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo);
    return sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion, 37, MEMORY[0x277D21860]);
  }

  return result;
}

uint64_t sub_21400F308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationMessageProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &qword_27C903CF0, &unk_2146E9810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C903CF0, &unk_2146E9810);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationMessageProto);
  sub_214027000(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationMessageProto);
}

uint64_t sub_21400F524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &qword_27C903CB8, &qword_2146E97F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C903CB8, &qword_2146E97F0);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationActivitySessionProto);
}

uint64_t sub_21400F740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v237 = *(v4 - 8);
  v238 = v4;
  v5 = *(v237 + 64);
  MEMORY[0x28223BE20](v4);
  v235 = &v231 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D50, &qword_2146E9830);
  v7 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v9 = &v231 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v240 = &v231 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v241 = &v231 - v14;
  v15 = type metadata accessor for CSDMConversationMessageProto(0);
  v243 = *(v15 - 8);
  v16 = *(v243 + 64);
  MEMORY[0x28223BE20](v15);
  v239 = &v231 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D58, &qword_2146E9838);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v231 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v242 = &v231 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v231 - v26;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v29 = *(a1 + 20);
  swift_beginAccess();
  v30 = *(a2 + 20);
  if (v29)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 16))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v233 = v9;
  swift_beginAccess();
  v31 = *(a1 + 24);
  swift_beginAccess();
  v32 = *(a2 + 24);

  v33 = a1;
  v34 = sub_2143D8748(v31, v32);

  if ((v34 & 1) == 0)
  {
    goto LABEL_16;
  }

  v234 = a2;
  v35 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  swift_beginAccess();
  v232 = v33;
  sub_213FB2E54(v33 + v35, v27, &qword_27C903CF0, &unk_2146E9810);
  v36 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  swift_beginAccess();
  v37 = *(v18 + 48);
  sub_213FB2E54(v27, v21, &qword_27C903CF0, &unk_2146E9810);
  v38 = v234 + v36;
  v39 = v234;
  sub_213FB2E54(v38, &v21[v37], &qword_27C903CF0, &unk_2146E9810);
  v40 = *(v243 + 48);
  if (v40(v21, 1, v15) == 1)
  {
    sub_213FB2DF4(v27, &qword_27C903CF0, &unk_2146E9810);
    v41 = v40(&v21[v37], 1, v15);
    v42 = v232;
    if (v41 == 1)
    {
      sub_213FB2DF4(v21, &qword_27C903CF0, &unk_2146E9810);
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v43 = v242;
  sub_213FB2E54(v21, v242, &qword_27C903CF0, &unk_2146E9810);
  v44 = v40(&v21[v37], 1, v15);
  v42 = v232;
  if (v44 == 1)
  {
    sub_213FB2DF4(v27, &qword_27C903CF0, &unk_2146E9810);
    sub_214028E9C(v43, type metadata accessor for CSDMConversationMessageProto);
LABEL_14:
    v45 = &qword_27C903D58;
    v46 = &qword_2146E9838;
    v47 = v21;
LABEL_15:
    sub_213FB2DF4(v47, v45, v46);
    goto LABEL_16;
  }

  v49 = v239;
  sub_214028E34(&v21[v37], v239, type metadata accessor for CSDMConversationMessageProto);
  v50 = *(v15 + 20);
  v51 = *(v43 + v50);
  v52 = *(v49 + v50);
  if (v51 != v52)
  {
    v53 = *(v43 + v50);

    v54 = sub_214014B64(v51, v52);

    if ((v54 & 1) == 0)
    {
      sub_214028E9C(v49, type metadata accessor for CSDMConversationMessageProto);
      sub_213FB2DF4(v27, &qword_27C903CF0, &unk_2146E9810);
      sub_214028E9C(v43, type metadata accessor for CSDMConversationMessageProto);
      v47 = v21;
      v45 = &qword_27C903CF0;
      v46 = &unk_2146E9810;
      goto LABEL_15;
    }
  }

  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
  v55 = sub_2146D9578();
  sub_214028E9C(v49, type metadata accessor for CSDMConversationMessageProto);
  sub_213FB2DF4(v27, &qword_27C903CF0, &unk_2146E9810);
  sub_214028E9C(v43, type metadata accessor for CSDMConversationMessageProto);
  sub_213FB2DF4(v21, &qword_27C903CF0, &unk_2146E9810);
  if ((v55 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v56 = (v42 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  v59 = (v39 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  swift_beginAccess();
  v60 = v59[1];
  if (v58)
  {
    v61 = v240;
    v62 = v241;
    if (!v60 || (v57 != *v59 || v58 != v60) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v61 = v240;
    v62 = v241;
    if (v60)
    {
      goto LABEL_16;
    }
  }

  v63 = (v42 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  swift_beginAccess();
  v64 = *v63;
  v65 = v63[1];
  v66 = (v39 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  swift_beginAccess();
  v67 = v66[1];
  if (v65)
  {
    if (!v67 || (v64 != *v66 || v65 != v67) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v67)
  {
    goto LABEL_16;
  }

  v68 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v69 = *(v42 + v68);
  v70 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v71 = *(v39 + v70);
  if (v69 == 2)
  {
    if (v71 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v71 == 2 || ((v69 ^ v71) & 1) != 0)
  {
    goto LABEL_16;
  }

  v72 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  swift_beginAccess();
  sub_213FB2E54(v42 + v72, v62, &qword_27C903CB8, &qword_2146E97F0);
  v73 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  swift_beginAccess();
  v74 = *(v236 + 48);
  v75 = v233;
  sub_213FB2E54(v62, v233, &qword_27C903CB8, &qword_2146E97F0);
  sub_213FB2E54(v39 + v73, v75 + v74, &qword_27C903CB8, &qword_2146E97F0);
  v76 = v238;
  v77 = *(v237 + 48);
  if (v77(v75, 1, v238) == 1)
  {
    sub_213FB2DF4(v62, &qword_27C903CB8, &qword_2146E97F0);
    if (v77(v75 + v74, 1, v76) == 1)
    {
      sub_213FB2DF4(v75, &qword_27C903CB8, &qword_2146E97F0);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  sub_213FB2E54(v75, v61, &qword_27C903CB8, &qword_2146E97F0);
  if (v77(v75 + v74, 1, v76) == 1)
  {
    sub_213FB2DF4(v241, &qword_27C903CB8, &qword_2146E97F0);
    sub_214028E9C(v61, type metadata accessor for CSDMConversationActivitySessionProto);
LABEL_46:
    v45 = &qword_27C903D50;
    v46 = &qword_2146E9830;
    v47 = v75;
    goto LABEL_15;
  }

  v78 = v75 + v74;
  v79 = v235;
  sub_214028E34(v78, v235, type metadata accessor for CSDMConversationActivitySessionProto);
  v80 = sub_214029B00(v61, v79);
  sub_214028E9C(v79, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_213FB2DF4(v241, &qword_27C903CB8, &qword_2146E97F0);
  sub_214028E9C(v61, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_213FB2DF4(v75, &qword_27C903CB8, &qword_2146E97F0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_48:
  v81 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
  swift_beginAccess();
  v82 = *(v42 + v81);
  v83 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
  swift_beginAccess();
  v84 = *(v39 + v83);
  if (v82 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v84 == 2 || ((v82 ^ v84) & 1) != 0)
  {
    goto LABEL_16;
  }

  v85 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v86 = *(v42 + v85);
  v87 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v88 = *(v39 + v87);
  if (v86 == 2)
  {
    if (v88 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v88 == 2 || ((v86 ^ v88) & 1) != 0)
  {
    goto LABEL_16;
  }

  v89 = (v42 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  swift_beginAccess();
  v90 = *v89;
  v91 = v89[1];
  v92 = (v39 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  swift_beginAccess();
  v93 = v92[1];
  if (!v91)
  {
    if (!v93)
    {
      goto LABEL_65;
    }

LABEL_16:

    return 0;
  }

  if (!v93 || (v90 != *v92 || v91 != v93) && (sub_2146DA6A8() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_65:
  v94 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  swift_beginAccess();
  v95 = *(v42 + v94);
  v96 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  swift_beginAccess();
  v97 = *(v39 + v96);

  v98 = sub_2143D6458(v95, v97);

  if ((v98 & 1) == 0)
  {
    goto LABEL_16;
  }

  v99 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v100 = *(v42 + v99);
  v101 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v102 = *(v39 + v101);
  if (v100 == 2)
  {
    if (v102 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v102 == 2 || ((v100 ^ v102) & 1) != 0)
  {
    goto LABEL_16;
  }

  v103 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  v104 = v232;
  swift_beginAccess();
  v105 = *(v104 + v103);
  v106 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  v107 = v234;
  swift_beginAccess();
  v108 = *(v107 + v106);

  LOBYTE(v107) = sub_2143D8748(v105, v108);

  if ((v107 & 1) == 0)
  {
    goto LABEL_16;
  }

  v109 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  v110 = v232;
  swift_beginAccess();
  v111 = *(v110 + v109);
  v112 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  v113 = v234;
  swift_beginAccess();
  v114 = *(v113 + v112);
  if (v111 == 2)
  {
    if (v114 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v114 == 2 || ((v111 ^ v114) & 1) != 0)
  {
    goto LABEL_16;
  }

  v115 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  v116 = v232;
  swift_beginAccess();
  v117 = *(v116 + v115);
  v118 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  v119 = v234;
  swift_beginAccess();
  v120 = *(v119 + v118);
  if (v117 == 2)
  {
    if (v120 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v120 == 2 || ((v117 ^ v120) & 1) != 0)
  {
    goto LABEL_16;
  }

  v121 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  v122 = v232;
  swift_beginAccess();
  v123 = *(v122 + v121);
  v124 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  v125 = v234;
  swift_beginAccess();
  v126 = *(v125 + v124);
  if (v123 == 2)
  {
    if (v126 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v126 == 2 || ((v123 ^ v126) & 1) != 0)
  {
    goto LABEL_16;
  }

  v127 = (v232 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion);
  swift_beginAccess();
  v128 = *v127;
  v129 = *(v127 + 4);
  v130 = v234 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  v131 = *(v130 + 4);
  if (v129)
  {
    if ((*(v130 + 4) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v130 + 4) & 1) != 0 || v128 != *v130)
  {
    goto LABEL_16;
  }

  v132 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  v133 = v232;
  swift_beginAccess();
  v134 = *(v133 + v132);
  v135 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  v136 = v234;
  swift_beginAccess();
  v137 = *(v136 + v135);
  if (v134 == 2)
  {
    if (v137 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v137 == 2 || ((v134 ^ v137) & 1) != 0)
  {
    goto LABEL_16;
  }

  v138 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  v139 = v232;
  swift_beginAccess();
  v140 = *(v139 + v138);
  v141 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  v142 = v234;
  swift_beginAccess();
  v143 = *(v142 + v141);
  if (v140 == 2)
  {
    if (v143 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v143 == 2 || ((v140 ^ v143) & 1) != 0)
  {
    goto LABEL_16;
  }

  v144 = (v232 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  swift_beginAccess();
  v145 = *v144;
  v146 = v144[1];
  v147 = (v234 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  swift_beginAccess();
  v148 = v147[1];
  if (v146)
  {
    if (!v148 || (v145 != *v147 || v146 != v148) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v148)
  {
    goto LABEL_16;
  }

  v149 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  v150 = v232;
  swift_beginAccess();
  v151 = *(v150 + v149);
  v152 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  v153 = v234;
  swift_beginAccess();
  v154 = *(v153 + v152);
  if (v151 == 2)
  {
    if (v154 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v154 == 2 || ((v151 ^ v154) & 1) != 0)
  {
    goto LABEL_16;
  }

  v155 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  v156 = v232;
  swift_beginAccess();
  v157 = *(v156 + v155);
  v158 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  v159 = v234;
  swift_beginAccess();
  v160 = *(v159 + v158);
  if (v157 == 2)
  {
    if (v160 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v160 == 2 || ((v157 ^ v160) & 1) != 0)
  {
    goto LABEL_16;
  }

  v161 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  v162 = v232;
  swift_beginAccess();
  v163 = *(v162 + v161);
  v164 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  v165 = v234;
  swift_beginAccess();
  v166 = *(v165 + v164);
  if (v163 == 2)
  {
    if (v166 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v166 == 2 || ((v163 ^ v166) & 1) != 0)
  {
    goto LABEL_16;
  }

  v167 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  v168 = v232;
  swift_beginAccess();
  v169 = *(v168 + v167);
  v170 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  v171 = v234;
  swift_beginAccess();
  v172 = *(v171 + v170);
  if (v169 == 2)
  {
    if (v172 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v172 == 2 || ((v169 ^ v172) & 1) != 0)
  {
    goto LABEL_16;
  }

  v173 = (v232 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion);
  swift_beginAccess();
  v174 = *v173;
  v175 = *(v173 + 4);
  v176 = v234 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  v177 = *(v176 + 4);
  if (v175)
  {
    if ((*(v176 + 4) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v176 + 4) & 1) != 0 || v174 != *v176)
  {
    goto LABEL_16;
  }

  v178 = (v232 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion);
  swift_beginAccess();
  v179 = *v178;
  v180 = *(v178 + 4);
  v181 = v234 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  v182 = *(v181 + 4);
  if (v180)
  {
    if ((*(v181 + 4) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v181 + 4) & 1) != 0 || v179 != *v181)
  {
    goto LABEL_16;
  }

  v183 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  v184 = v232;
  swift_beginAccess();
  v185 = *(v184 + v183);
  v186 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  v187 = v234;
  swift_beginAccess();
  v188 = *(v187 + v186);
  if (v185 == 2)
  {
    if (v188 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v188 == 2 || ((v185 ^ v188) & 1) != 0)
  {
    goto LABEL_16;
  }

  v189 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  v190 = v232;
  swift_beginAccess();
  v191 = *(v190 + v189);
  v192 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  v193 = v234;
  swift_beginAccess();
  v194 = *(v193 + v192);
  if (v191 == 2)
  {
    if (v194 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v194 == 2 || ((v191 ^ v194) & 1) != 0)
  {
    goto LABEL_16;
  }

  v195 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  v196 = v232;
  swift_beginAccess();
  v197 = *(v196 + v195);
  v198 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  v199 = v234;
  swift_beginAccess();
  v200 = *(v199 + v198);
  if (v197 == 2)
  {
    if (v200 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v200 == 2 || ((v197 ^ v200) & 1) != 0)
  {
    goto LABEL_16;
  }

  v201 = (v232 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v202 = *v201;
  v203 = v201[1];
  v204 = (v234 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v205 = v204[1];
  if (v203)
  {
    if (!v205 || (v202 != *v204 || v203 != v205) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v205)
  {
    goto LABEL_16;
  }

  v206 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  v207 = v232;
  swift_beginAccess();
  v208 = *(v207 + v206);
  v209 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  v210 = v234;
  swift_beginAccess();
  v211 = *(v210 + v209);
  if (v208 == 2)
  {
    if (v211 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v211 == 2 || ((v208 ^ v211) & 1) != 0)
  {
    goto LABEL_16;
  }

  v212 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  v213 = v232;
  swift_beginAccess();
  v214 = *(v213 + v212);
  v215 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  v216 = v234;
  swift_beginAccess();
  v217 = *(v216 + v215);
  if (v214 == 2)
  {
    if (v217 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v217 == 2 || ((v214 ^ v217) & 1) != 0)
  {
    goto LABEL_16;
  }

  v218 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  v219 = v232;
  swift_beginAccess();
  v220 = *(v219 + v218);
  v221 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  v222 = v234;
  swift_beginAccess();
  v223 = *(v222 + v221);
  if (v220 == 2)
  {
    if (v223 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v223 == 2 || ((v220 ^ v223) & 1) != 0)
  {
    goto LABEL_16;
  }

  v224 = (v232 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion);
  swift_beginAccess();
  v225 = *v224;
  v226 = *(v224 + 4);

  v227 = (v234 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion);
  swift_beginAccess();
  v228 = *v227;
  v229 = *(v227 + 4);

  if (v226)
  {
    if (!v229)
    {
      return 0;
    }
  }

  else
  {
    if (v225 == v228)
    {
      v230 = v229;
    }

    else
    {
      v230 = 1;
    }

    if (v230)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_214010E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903CE8, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214010EA8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214010F14()
{
  sub_214027000(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);

  return sub_2146D9008();
}

uint64_t sub_214010FD4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19770);
  __swift_project_value_buffer(v0, qword_27CA19770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "leaveReason";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21401119C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        v11 = *(type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0) + 20);
        sub_2146D8F58();
      }

      else if (result == 2)
      {
        sub_2140247A4(a1, v5, a2, a3, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, sub_21402DA4C);
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214011288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214017D50(v3, a1, a2, a3, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
  if (!v4)
  {
    sub_2140248F8(v3, a1, a2, a3, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, sub_21402DA4C);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21401133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 4;
  return result;
}

uint64_t sub_2140113CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903CF8, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401146C(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2140114D8()
{
  sub_214027000(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);

  return sub_2146D9008();
}

uint64_t sub_214011558()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19788);
  __swift_project_value_buffer(v0, qword_27CA19788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Handoff";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GreenTea";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ExitScreenMode";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2140117C0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA197A0);
  __swift_project_value_buffer(v0, qword_27CA197A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_2146E6920;
  v4 = v61 + v3;
  v5 = v61 + v3 + v1[14];
  *(v61 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v61 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "type";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v61 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "shouldSuppressInCallUI";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v61 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "activeParticipants";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v61 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "conversationGroupUUIDString";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v8();
  v16 = (v61 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "addedMembers";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v61 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "disconnectedReason";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v61 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "protoUpgradeSessionUUID";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v61 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "activitySessions";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v61 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "nickname";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v61 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "link";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v8();
  v27 = (v61 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "reportData";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v8();
  v29 = (v61 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isLetMeInApproved";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  v31 = (v61 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "encryptedMessage";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v61 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "letMeInDelegationHandle";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v8();
  v35 = (v61 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "letMeInDelegationUUID";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v61 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "enclosedEncryptedType";
  *(v37 + 8) = 21;
  *(v37 + 16) = 2;
  v8();
  v38 = (v61 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "invitationPreferences";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v61 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "removedMembers";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v61 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 22;
  *v43 = "lightweightMembers";
  *(v43 + 1) = 18;
  v43[16] = 2;
  v8();
  v44 = (v61 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 23;
  *v45 = "activeLightweightParticipants";
  *(v45 + 1) = 29;
  v45[16] = 2;
  v8();
  v46 = (v61 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 24;
  *v47 = "guestModeEnabled";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v8();
  v48 = (v61 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 25;
  *v49 = "highlightIdentifier";
  *(v49 + 1) = 19;
  v49[16] = 2;
  v8();
  v50 = (v61 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 27;
  *v51 = "stagedActivitySession";
  *(v51 + 1) = 21;
  v51[16] = 2;
  v8();
  v52 = (v61 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 28;
  *v53 = "avMode";
  *(v53 + 1) = 6;
  v53[16] = 2;
  v8();
  v54 = (v61 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 29;
  *v55 = "requestBlobRecoveryOptions";
  *(v55 + 1) = 26;
  v55[16] = 2;
  v8();
  v56 = (v61 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 31;
  *v57 = "presentationMode";
  *(v57 + 1) = 16;
  v57[16] = 2;
  v8();
  v58 = (v61 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 33;
  *v59 = "isNearbySession";
  *(v59 + 1) = 15;
  v59[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21401200C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_214012060()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 21) = 546;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  *(v0 + 60) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = v1;
  v2 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  v3 = type metadata accessor for CSDMConversationLinkProto(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v5 = type metadata accessor for CSDMConversationReportProto(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved) = 2;
  v6 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v7 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType) = 34;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled) = 2;
  v10 = (v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v12 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode) = 3;
  v13 = v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  *v13 = 0;
  *(v13 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode) = 3;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession) = 2;
  return v0;
}

void *sub_2140122B0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link, &qword_27C903CD8, &qword_2146E9808);
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData, &qword_27C903CD0, &qword_2146E9800);
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage, &qword_27C903CC8, &qword_2146E97F8);
  v7 = *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences);

  v10 = *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers);

  v11 = *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers);

  v12 = *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants);

  v13 = *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier + 8);

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession, &qword_27C903CB8, &qword_2146E97F0);
  return v0;
}

void sub_214012434()
{
  sub_21400E518(319, &qword_27C9034D8, type metadata accessor for CSDMConversationLinkProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_21400E518(319, &qword_27C9034E0, type metadata accessor for CSDMConversationReportProto, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_21400E518(319, &unk_27C9034E8, type metadata accessor for CSDMEncryptedConversationMessageProto, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_21400E518(319, &unk_27C903420, type metadata accessor for CSDMConversationActivitySessionProto, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_214012710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void, void))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = a7;
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = a6(v18);
    a7 = v24;

    *(v10 + v14) = v22;
    v17 = v22;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_2140127F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2140193A4();
        continue;
      case 2:
        sub_214012C0C();
        continue;
      case 3:
        sub_214012CA0();
        continue;
      case 4:
        sub_214012D24(a2, a1, a3, a4, type metadata accessor for CSDMConversationParticipantProto, &qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto);
        continue;
      case 5:
        sub_21401FEF4(a2, a1, a3, a4, MEMORY[0x277D217D0]);
        continue;
      case 6:
        sub_214012DF0();
        continue;
      case 7:
        sub_214012EBC();
        continue;
      case 8:
        sub_214020004();
        continue;
      case 9:
        sub_214012F40();
        continue;
      case 10:
        sub_21401300C();
        continue;
      case 11:
        sub_214013090();
        continue;
      case 12:
        sub_21401316C();
        continue;
      case 13:
        v12 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
        goto LABEL_33;
      case 14:
        sub_214013248();
        continue;
      case 15:
        v9 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle;
        goto LABEL_3;
      case 16:
        v9 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid;
        goto LABEL_3;
      case 17:
        v13 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
        v14 = sub_214028DE0;
        goto LABEL_35;
      case 19:
        sub_214013324();
        continue;
      case 20:
        sub_214013400();
        continue;
      case 22:
        sub_2140134DC();
        continue;
      case 23:
        sub_2140135B8();
        continue;
      case 24:
        v12 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
        goto LABEL_33;
      case 25:
        v9 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier;
LABEL_3:
        sub_2140202C4(a2, a1, a3, a4, v9, MEMORY[0x277D217D0]);
        continue;
      case 27:
        sub_214013694();
        continue;
      case 28:
        v13 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
        v14 = sub_214028D8C;
        goto LABEL_35;
      case 29:
        sub_214019630(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions, MEMORY[0x277D21780]);
        continue;
      case 31:
        v13 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
        v14 = sub_214028D38;
LABEL_35:
        sub_214019588(a2, a1, a3, a4, v13, v14);
        break;
      case 33:
        v12 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
LABEL_33:
        sub_214020438(a2, a1, a3, a4, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_214012C0C()
{
  swift_beginAccess();
  sub_214028DE0();
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_214012CA0()
{
  swift_beginAccess();
  sub_2146D8E98();
  return swift_endAccess();
}

uint64_t sub_214012D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  swift_beginAccess();
  a5(0);
  sub_214027000(a6, a7);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_214012DF0()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMemberProto(0);
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_214012EBC()
{
  swift_beginAccess();
  sub_2146D8F58();
  return swift_endAccess();
}

uint64_t sub_214012F40()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivitySessionProto(0);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_21401300C()
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_214013090()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationLinkProto(0);
  sub_214027000(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21401316C()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationReportProto(0);
  sub_214027000(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214013248()
{
  swift_beginAccess();
  type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  sub_214027000(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214013324()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  sub_214027000(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_214013400()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMemberProto(0);
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_2140134DC()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMemberProto(0);
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_2140135B8()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationParticipantProto(0);
  sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_214013694()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivitySessionProto(0);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214013770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2140137F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214019BD0(a1);
  if (!v4)
  {
    sub_214013F70(a1);
    sub_21401400C(a1);
    swift_beginAccess();
    if (*(a1[3] + 16))
    {
      type metadata accessor for CSDMConversationParticipantProto(0);
      sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto);

      sub_2146D90D8();
    }

    sub_214014094(a1);
    swift_beginAccess();
    if (*(a1[6] + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);

      sub_2146D90D8();
    }

    sub_214014130(a1);
    sub_2140208A0(a1);
    swift_beginAccess();
    if (*(a1[10] + 16))
    {
      type metadata accessor for CSDMConversationActivitySessionProto(0);
      sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);

      sub_2146D90D8();
    }

    sub_2140141B4(a1);
    sub_214014250(a1, a2, a3, a4);
    sub_21401446C(a1, a2, a3, a4);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved);
    sub_214014688(a1, a2, a3, a4);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
    sub_2140148A4(a1);
    v10 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
      sub_214027000(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto);

      sub_2146D90D8();
    }

    v11 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);

      sub_2146D90D8();
    }

    v12 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);

      sub_2146D90D8();
    }

    v13 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
    swift_beginAccess();
    if (*(*(a1 + v13) + 16))
    {
      type metadata accessor for CSDMConversationParticipantProto(0);
      sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto);

      sub_2146D90D8();
    }

    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
    sub_214014948(a1, a2, a3, a4);
    sub_214019FB4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode, sub_214028D8C);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions, 29, MEMORY[0x277D21848]);
    sub_214019FB4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode, sub_214028D38);
    return sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession);
  }

  return result;
}

uint64_t sub_214013F70(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 21) != 34)
  {
    sub_214028DE0();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21401400C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 22) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_214014094(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214014130(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 60) & 1) == 0)
  {
    v3 = *(a1 + 56);
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_2140141B4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 96))
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 96);

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214014250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationLinkProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &qword_27C903CD8, &qword_2146E9808);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C903CD8, &qword_2146E9808);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationLinkProto);
  sub_214027000(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationLinkProto);
}

uint64_t sub_21401446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationReportProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &qword_27C903CD0, &qword_2146E9800);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C903CD0, &qword_2146E9800);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationReportProto);
  sub_214027000(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationReportProto);
}

uint64_t sub_214014688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &qword_27C903CC8, &qword_2146E97F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C903CC8, &qword_2146E97F8);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_214027000(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMEncryptedConversationMessageProto);
}

uint64_t sub_2140148A4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  result = swift_beginAccess();
  if (*(a1 + v2) != 34)
  {
    v4 = *(a1 + v2);
    sub_214028DE0();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_214014948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &qword_27C903CB8, &qword_2146E97F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C903CB8, &qword_2146E97F0);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationActivitySessionProto);
}

uint64_t sub_214014B64(uint64_t a1, uint64_t a2)
{
  v234 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v232 = *(v234 - 8);
  v4 = *(v232 + 64);
  MEMORY[0x28223BE20](v234);
  v233 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D50, &qword_2146E9830);
  v6 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v8 = &v225 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v231 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v230 = &v225 - v13;
  v240 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v238 = *(v240 - 8);
  v14 = *(v238 + 64);
  MEMORY[0x28223BE20](v240);
  v235 = &v225 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D60, &qword_2146E9840);
  v16 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v242 = &v225 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v237 = &v225 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v241 = &v225 - v22;
  v23 = type metadata accessor for CSDMConversationReportProto(0);
  v245 = *(v23 - 8);
  v246 = v23;
  v24 = *(v245 + 64);
  MEMORY[0x28223BE20](v23);
  v239 = &v225 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D68, &qword_2146E9848);
  v26 = *(*(v243 - 8) + 64);
  MEMORY[0x28223BE20](v243);
  v247 = &v225 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v244 = &v225 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v248 = &v225 - v32;
  v33 = type metadata accessor for CSDMConversationLinkProto(0);
  v249 = *(v33 - 8);
  v250 = v33;
  v34 = *(v249 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (&v225 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D70, &qword_2146E9850);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v251 = &v225 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = (&v225 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v46 = &v225 - v45;
  swift_beginAccess();
  v47 = *(a1 + 16);
  v48 = *(a1 + 20);
  swift_beginAccess();
  v49 = *(a2 + 20);
  if (v48)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v47 != *(a2 + 16))
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v50 = *(a1 + 21);
  swift_beginAccess();
  v51 = *(a2 + 21);
  if (v50 == 34)
  {
    if (v51 != 34)
    {
      return 0;
    }
  }

  else if (v51 == 34 || qword_2146E9AB0[v50] != qword_2146E9AB0[v51])
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 22);
  swift_beginAccess();
  v53 = *(a2 + 22);
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      return 0;
    }
  }

  else if (v53 == 2 || ((v52 ^ v53) & 1) != 0)
  {
    return 0;
  }

  v227 = v8;
  swift_beginAccess();
  v54 = *(a1 + 24);
  swift_beginAccess();
  v55 = a2;
  v56 = *(a2 + 24);

  v57 = sub_2143D893C(v54, v56);

  if ((v57 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v58 = *(a1 + 32);
  v59 = *(a1 + 40);
  v228 = a1;
  swift_beginAccess();
  v60 = *(v55 + 40);
  v61 = v55;
  if (v59)
  {
    if (!v60)
    {
      goto LABEL_49;
    }

    v62 = *(v55 + 32);
    v63 = v228;
    if ((v58 != v62 || v59 != v60) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v63 = v228;
    if (v60)
    {
      goto LABEL_49;
    }
  }

  swift_beginAccess();
  v64 = v63[6];
  swift_beginAccess();
  v65 = *(v61 + 48);

  v66 = v61;
  v67 = sub_2143D8748(v64, v65);

  if ((v67 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v68 = *(v63 + 14);
  v69 = *(v63 + 60);
  swift_beginAccess();
  v70 = *(v66 + 60);
  v71 = v66;
  if (v69)
  {
    v72 = v228;
    if ((v70 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (*(v66 + 60))
    {
      goto LABEL_49;
    }

    v73 = *(v66 + 56);
    v72 = v228;
    if (v68 != v73)
    {
      goto LABEL_49;
    }
  }

  swift_beginAccess();
  v74 = v72[8];
  v75 = v72[9];
  swift_beginAccess();
  v76 = v71[9];
  if (v75)
  {
    if (!v76 || (v74 != v71[8] || v75 != v76) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (v76)
  {
LABEL_49:

    return 0;
  }

  swift_beginAccess();
  v77 = v72[10];
  swift_beginAccess();
  v78 = v71[10];

  v79 = v72;
  v80 = v71;
  v81 = sub_2143D8BC8(v77, v78);

  if ((v81 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v83 = v79[11];
  v82 = v79[12];
  swift_beginAccess();
  v84 = v80[12];
  v85 = v80;
  if (v82)
  {
    if (!v84)
    {
      goto LABEL_49;
    }

    v86 = v80[11];
    v87 = v228;
    if ((v83 != v86 || v82 != v84) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v87 = v228;
    if (v84)
    {
      goto LABEL_49;
    }
  }

  v226 = v85;
  v88 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  sub_213FB2E54(v87 + v88, v46, &qword_27C903CD8, &qword_2146E9808);
  v89 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  v90 = *(v37 + 48);
  v91 = v251;
  sub_213FB2E54(v46, v251, &qword_27C903CD8, &qword_2146E9808);
  v92 = v91;
  sub_213FB2E54(v226 + v89, v91 + v90, &qword_27C903CD8, &qword_2146E9808);
  v93 = *(v249 + 48);
  v94 = v91;
  v95 = v250;
  if (v93(v94, 1, v250) == 1)
  {
    sub_213FB2DF4(v46, &qword_27C903CD8, &qword_2146E9808);
    if (v93(v92 + v90, 1, v95) == 1)
    {
      sub_213FB2DF4(v92, &qword_27C903CD8, &qword_2146E9808);
      goto LABEL_59;
    }

LABEL_56:
    sub_213FB2DF4(v92, &qword_27C903D70, &qword_2146E9850);
    goto LABEL_49;
  }

  sub_213FB2E54(v92, v44, &qword_27C903CD8, &qword_2146E9808);
  if (v93(v92 + v90, 1, v95) == 1)
  {
    sub_213FB2DF4(v46, &qword_27C903CD8, &qword_2146E9808);
    sub_214028E9C(v44, type metadata accessor for CSDMConversationLinkProto);
    goto LABEL_56;
  }

  sub_214028E34(v92 + v90, v36, type metadata accessor for CSDMConversationLinkProto);
  v97 = sub_21402B070(v44, v36);
  sub_214028E9C(v36, type metadata accessor for CSDMConversationLinkProto);
  sub_213FB2DF4(v46, &qword_27C903CD8, &qword_2146E9808);
  sub_214028E9C(v44, type metadata accessor for CSDMConversationLinkProto);
  sub_213FB2DF4(v92, &qword_27C903CD8, &qword_2146E9808);
  if ((v97 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_59:
  v98 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  swift_beginAccess();
  v99 = v248;
  sub_213FB2E54(v87 + v98, v248, &qword_27C903CD0, &qword_2146E9800);
  v100 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v101 = v226;
  swift_beginAccess();
  v102 = *(v243 + 48);
  v103 = v99;
  v104 = v247;
  sub_213FB2E54(v103, v247, &qword_27C903CD0, &qword_2146E9800);
  sub_213FB2E54(v101 + v100, v104 + v102, &qword_27C903CD0, &qword_2146E9800);
  v105 = v246;
  v106 = *(v245 + 48);
  if (v106(v104, 1, v246) == 1)
  {
    sub_213FB2DF4(v248, &qword_27C903CD0, &qword_2146E9800);
    if (v106(v104 + v102, 1, v105) == 1)
    {
      sub_213FB2DF4(v104, &qword_27C903CD0, &qword_2146E9800);
      goto LABEL_68;
    }

LABEL_64:
    v107 = &qword_27C903D68;
    v108 = &qword_2146E9848;
    v109 = v104;
LABEL_65:
    sub_213FB2DF4(v109, v107, v108);
    goto LABEL_49;
  }

  sub_213FB2E54(v104, v244, &qword_27C903CD0, &qword_2146E9800);
  if (v106(v104 + v102, 1, v105) == 1)
  {
    sub_213FB2DF4(v248, &qword_27C903CD0, &qword_2146E9800);
    sub_214028E9C(v244, type metadata accessor for CSDMConversationReportProto);
    v104 = v247;
    goto LABEL_64;
  }

  v110 = v247;
  v111 = v247 + v102;
  v112 = v239;
  sub_214028E34(v111, v239, type metadata accessor for CSDMConversationReportProto);
  v113 = v244;
  v114 = sub_21402A8E4(v244, v112);
  sub_214028E9C(v112, type metadata accessor for CSDMConversationReportProto);
  sub_213FB2DF4(v248, &qword_27C903CD0, &qword_2146E9800);
  sub_214028E9C(v113, type metadata accessor for CSDMConversationReportProto);
  sub_213FB2DF4(v110, &qword_27C903CD0, &qword_2146E9800);
  if ((v114 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_68:
  v115 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  v116 = v228;
  swift_beginAccess();
  v117 = *(v116 + v115);
  v118 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  v119 = v226;
  swift_beginAccess();
  v120 = v119[v118];
  if (v117 == 2)
  {
    if (v120 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v120 == 2 || ((v117 ^ v120) & 1) != 0)
  {
    goto LABEL_49;
  }

  v121 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v122 = v228;
  swift_beginAccess();
  v123 = v241;
  sub_213FB2E54(v122 + v121, v241, &qword_27C903CC8, &qword_2146E97F8);
  v124 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v125 = v226;
  swift_beginAccess();
  v126 = *(v236 + 48);
  v127 = v123;
  v128 = v242;
  sub_213FB2E54(v127, v242, &qword_27C903CC8, &qword_2146E97F8);
  sub_213FB2E54(v125 + v124, v128 + v126, &qword_27C903CC8, &qword_2146E97F8);
  v129 = *(v238 + 48);
  if (v129(v128, 1, v240) == 1)
  {
    sub_213FB2DF4(v241, &qword_27C903CC8, &qword_2146E97F8);
    if (v129(v242 + v126, 1, v240) == 1)
    {
      sub_213FB2DF4(v242, &qword_27C903CC8, &qword_2146E97F8);
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  v130 = v242;
  sub_213FB2E54(v242, v237, &qword_27C903CC8, &qword_2146E97F8);
  if (v129(v130 + v126, 1, v240) == 1)
  {
    sub_213FB2DF4(v241, &qword_27C903CC8, &qword_2146E97F8);
    sub_214028E9C(v237, type metadata accessor for CSDMEncryptedConversationMessageProto);
LABEL_78:
    v107 = &qword_27C903D60;
    v108 = &qword_2146E9840;
    v109 = v242;
    goto LABEL_65;
  }

  v131 = v242;
  v132 = v242 + v126;
  v133 = v235;
  sub_214028E34(v132, v235, type metadata accessor for CSDMEncryptedConversationMessageProto);
  v134 = v237;
  v135 = sub_214029130(v237, v133);
  sub_214028E9C(v133, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_213FB2DF4(v241, &qword_27C903CC8, &qword_2146E97F8);
  sub_214028E9C(v134, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_213FB2DF4(v131, &qword_27C903CC8, &qword_2146E97F8);
  if ((v135 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_80:
  v136 = (v228 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  swift_beginAccess();
  v137 = *v136;
  v138 = v136[1];
  v139 = (v226 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  swift_beginAccess();
  v140 = v139[1];
  if (v138)
  {
    if (!v140 || (v137 != *v139 || v138 != v140) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (v140)
  {
    goto LABEL_49;
  }

  v141 = (v228 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  swift_beginAccess();
  v142 = *v141;
  v143 = v141[1];
  v144 = (v226 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  swift_beginAccess();
  v145 = v144[1];
  if (v143)
  {
    if (!v145 || (v142 != *v144 || v143 != v145) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (v145)
  {
    goto LABEL_49;
  }

  v146 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  v147 = v228;
  swift_beginAccess();
  v148 = *(v147 + v146);
  v149 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  v150 = v226;
  swift_beginAccess();
  v151 = v150[v149];
  if (v148 == 34)
  {
    if (v151 != 34)
    {
      goto LABEL_49;
    }
  }

  else if (v151 == 34 || qword_2146E9AB0[v148] != qword_2146E9AB0[v151])
  {
    goto LABEL_49;
  }

  v152 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  v153 = v228;
  swift_beginAccess();
  v154 = *(v153 + v152);
  v155 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  v156 = v226;
  swift_beginAccess();
  v157 = *(v156 + v155);

  LOBYTE(v156) = sub_2143D9264(v154, v157);

  if ((v156 & 1) == 0)
  {
    goto LABEL_49;
  }

  v158 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  v159 = v228;
  swift_beginAccess();
  v160 = *(v159 + v158);
  v161 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  v162 = v226;
  swift_beginAccess();
  v163 = *(v162 + v161);

  LOBYTE(v162) = sub_2143D8748(v160, v163);

  if ((v162 & 1) == 0)
  {
    goto LABEL_49;
  }

  v164 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  v165 = v228;
  swift_beginAccess();
  v166 = *(v165 + v164);
  v167 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  v168 = v226;
  swift_beginAccess();
  v169 = *(v168 + v167);

  LOBYTE(v168) = sub_2143D8748(v166, v169);

  if ((v168 & 1) == 0)
  {
    goto LABEL_49;
  }

  v170 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  v171 = v228;
  swift_beginAccess();
  v172 = *(v171 + v170);
  v173 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  v174 = v226;
  swift_beginAccess();
  v175 = *(v174 + v173);

  LOBYTE(v174) = sub_2143D893C(v172, v175);

  if ((v174 & 1) == 0)
  {
    goto LABEL_49;
  }

  v176 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  v177 = v228;
  swift_beginAccess();
  v178 = *(v177 + v176);
  v179 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  v180 = v226;
  swift_beginAccess();
  v181 = v180[v179];
  if (v178 == 2)
  {
    if (v181 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v181 == 2 || ((v178 ^ v181) & 1) != 0)
  {
    goto LABEL_49;
  }

  v182 = (v228 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  swift_beginAccess();
  v183 = *v182;
  v184 = v182[1];
  v185 = (v226 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  swift_beginAccess();
  v186 = v185[1];
  if (v184)
  {
    if (!v186 || (v183 != *v185 || v184 != v186) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (v186)
  {
    goto LABEL_49;
  }

  v187 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v188 = v228;
  swift_beginAccess();
  v189 = v230;
  sub_213FB2E54(v188 + v187, v230, &qword_27C903CB8, &qword_2146E97F0);
  v190 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v191 = v226;
  swift_beginAccess();
  v192 = *(v229 + 48);
  v193 = v189;
  v194 = v227;
  sub_213FB2E54(v193, v227, &qword_27C903CB8, &qword_2146E97F0);
  sub_213FB2E54(v191 + v190, v194 + v192, &qword_27C903CB8, &qword_2146E97F0);
  v195 = *(v232 + 48);
  if (v195(v194, 1, v234) == 1)
  {
    sub_213FB2DF4(v230, &qword_27C903CB8, &qword_2146E97F0);
    if (v195(&v227[v192], 1, v234) == 1)
    {
      sub_213FB2DF4(v227, &qword_27C903CB8, &qword_2146E97F0);
      goto LABEL_122;
    }

    goto LABEL_120;
  }

  v196 = v227;
  sub_213FB2E54(v227, v231, &qword_27C903CB8, &qword_2146E97F0);
  if (v195((v196 + v192), 1, v234) == 1)
  {
    sub_213FB2DF4(v230, &qword_27C903CB8, &qword_2146E97F0);
    sub_214028E9C(v231, type metadata accessor for CSDMConversationActivitySessionProto);
LABEL_120:
    v107 = &qword_27C903D50;
    v108 = &qword_2146E9830;
    v109 = v227;
    goto LABEL_65;
  }

  v197 = v227;
  v198 = &v227[v192];
  v199 = v233;
  sub_214028E34(v198, v233, type metadata accessor for CSDMConversationActivitySessionProto);
  v200 = v231;
  v201 = sub_214029B00(v231, v199);
  sub_214028E9C(v199, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_213FB2DF4(v230, &qword_27C903CB8, &qword_2146E97F0);
  sub_214028E9C(v200, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_213FB2DF4(v197, &qword_27C903CB8, &qword_2146E97F0);
  if ((v201 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_122:
  v202 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  v203 = v228;
  swift_beginAccess();
  v204 = *(v203 + v202);
  v205 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  v206 = v226;
  swift_beginAccess();
  v207 = v206[v205];
  if (v204 == 3)
  {
    if (v207 != 3)
    {
      goto LABEL_49;
    }
  }

  else if (v207 == 3 || v204 != v207)
  {
    goto LABEL_49;
  }

  v208 = v228 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  swift_beginAccess();
  v209 = *v208;
  v210 = v208[4];
  v211 = v226 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  swift_beginAccess();
  v212 = *(v211 + 4);
  if (v210)
  {
    if ((*(v211 + 4) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((*(v211 + 4) & 1) != 0 || v209 != *v211)
  {
    goto LABEL_49;
  }

  v213 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  v214 = v228;
  swift_beginAccess();
  v215 = *(v214 + v213);
  v216 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  v217 = v226;
  swift_beginAccess();
  v218 = v217[v216];
  if (v215 == 3)
  {
    if (v218 != 3)
    {
      goto LABEL_49;
    }
  }

  else if (v218 == 3 || v215 != v218)
  {
    goto LABEL_49;
  }

  v219 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
  v220 = v228;
  swift_beginAccess();
  v221 = *(v220 + v219);

  v222 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
  v223 = v226;
  swift_beginAccess();
  v224 = v223[v222];

  if (v221 == 2)
  {
    if (v224 != 2)
    {
      return 0;
    }
  }

  else if (v224 == 2 || ((v221 ^ v224) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_214016548(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903CA0, type metadata accessor for CSDMConversationMessageProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2140165E8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214016654()
{
  sub_214027000(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto);

  return sub_2146D9008();
}

uint64_t sub_214016714()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA197B8);
  __swift_project_value_buffer(v0, qword_27CA197B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_2146E6900;
  v4 = v72 + v3;
  v5 = v72 + v3 + v1[14];
  *(v72 + v3) = 0;
  *v5 = "Unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v72 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Invitation";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v72 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Upgrade";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v72 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "AddMember";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v72 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "BlobRecoveryRequest";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v72 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "BlobRecoveryResponse";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v72 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RespondedElsewhere";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v72 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "AddActivitySession";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v72 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "Decline";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "LetMeInRequest";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "LinkCreated";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "NicknameUpdated";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "EncryptedConversationMessage";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v8();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "LetMeInDelegation";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "LetMeInDelegationResponse";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v8();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "LetMeInResponse";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v72 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 19;
  *v37 = "RemoveMember";
  *(v37 + 8) = 12;
  *(v37 + 16) = 2;
  v8();
  v38 = (v72 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 21;
  *v39 = "RemoveActivitySession";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v72 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 22;
  *v41 = "RequestVideoUpgrade";
  *(v41 + 1) = 19;
  v41[16] = 2;
  v8();
  v42 = (v72 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 23;
  *v43 = "UpdateActivity";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v72 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 24;
  *v45 = "LinkInvalidated";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  v46 = (v72 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 25;
  *v47 = "AddLightweightMember";
  *(v47 + 1) = 20;
  v47[16] = 2;
  v8();
  v48 = (v72 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 26;
  *v49 = "LinkChanged";
  *(v49 + 1) = 11;
  v49[16] = 2;
  v8();
  v50 = (v72 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 27;
  *v51 = "UpdateActivityImage";
  *(v51 + 1) = 19;
  v51[16] = 2;
  v8();
  v52 = (v72 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 28;
  *v53 = "GuestModeUpdated";
  *(v53 + 1) = 16;
  v53[16] = 2;
  v8();
  v54 = (v72 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 29;
  *v55 = "Endorse";
  *(v55 + 1) = 7;
  v55[16] = 2;
  v8();
  v56 = (v72 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 30;
  *v57 = "AddHighlight";
  *(v57 + 1) = 12;
  v57[16] = 2;
  v8();
  v58 = (v72 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 31;
  *v59 = "RemoveHighlight";
  *(v59 + 1) = 15;
  v59[16] = 2;
  v8();
  v60 = (v72 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 32;
  *v61 = "UpdateJoinedMetadata";
  *(v61 + 1) = 20;
  v61[16] = 2;
  v8();
  v62 = (v72 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 33;
  *v63 = "ParticipantUpdated";
  *(v63 + 1) = 18;
  v63[16] = 2;
  v8();
  v64 = (v72 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 34;
  *v65 = "RegisterMessagesGroupUUID";
  *(v65 + 1) = 25;
  v65[16] = 2;
  v8();
  v66 = (v72 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 35;
  *v67 = "ScreenShareRequest";
  *(v67 + 1) = 18;
  v67[16] = 2;
  v8();
  v68 = v72 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 36;
  *v68 = "ScreenShareResponse";
  *(v68 + 8) = 19;
  *(v68 + 16) = 2;
  v8();
  v69 = (v72 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 37;
  *v70 = "SharePlayAvailable";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_2140170C8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA197D0);
  __swift_project_value_buffer(v0, qword_27CA197D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publicKey";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "conversationMessageBytes";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214017290()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for CSDMEncryptedConversationMessageProto(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for CSDMEncryptedConversationMessageProto(0) + 24);
LABEL_3:
      v0 = 0;
      sub_2146D8EC8();
    }
  }
}

uint64_t sub_214017338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140173D0(v3, a1, a2, a3, type metadata accessor for CSDMEncryptedConversationMessageProto);
  if (!v4)
  {
    sub_214017474(v3, a1, a2, a3, type metadata accessor for CSDMEncryptedConversationMessageProto);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2140173D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 20);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_21402D9F8(*v7, *(v7 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

uint64_t sub_214017474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 24);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_21402D9F8(*v7, *(v7 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

double sub_214017518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_2146E68C0;
  *(a2 + v5) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_2140175A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903CE0, type metadata accessor for CSDMEncryptedConversationMessageProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214017640(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2140176AC()
{
  sub_214027000(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto);

  return sub_2146D9008();
}

uint64_t sub_21401772C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA197E8);
  __swift_project_value_buffer(v0, qword_27CA197E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handle";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nickname";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "lightweightPrimary";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "lightweightPrimaryParticipantID";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "stableDeviceIdentifier";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2140179F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_214017B74();
          break;
        case 5:
          v14 = *(type metadata accessor for CSDMConversationMemberProto(0) + 36);
          sub_2146D8F68();
          break;
        case 8:
          v13 = *(type metadata accessor for CSDMConversationMemberProto(0) + 40);
LABEL_14:
          v4 = 0;
          sub_2146D8F38();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v9 = *(type metadata accessor for CSDMConversationMemberProto(0) + 20);
          sub_2146D8F58();
          break;
        case 2:
          sub_2140259A8(a1, v5, a2, a3, type metadata accessor for CSDMConversationMemberProto);
          break;
        case 3:
          v12 = *(type metadata accessor for CSDMConversationMemberProto(0) + 28);
          goto LABEL_14;
      }
    }
  }
}

uint64_t sub_214017B74()
{
  v0 = *(type metadata accessor for CSDMConversationMemberProto(0) + 32);
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  return sub_2146D8F98();
}

uint64_t sub_214017C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214017D50(v3, a1, a2, a3, type metadata accessor for CSDMConversationMemberProto);
  if (!v4)
  {
    sub_214025C54(v3, a1, a2, a3, type metadata accessor for CSDMConversationMemberProto);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationMemberProto);
    sub_214017E50(v3, a1, a2, a3);
    sub_214018060(v3);
    sub_214023A44(v3, a1, a2, a3, type metadata accessor for CSDMConversationMemberProto);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214017D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214017DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214017E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMHandleProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CSDMConversationMemberProto(0);
  sub_213FB2E54(a1 + *(v14 + 32), v8, &unk_27C903788, "Į\r");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214018060(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationMemberProto(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D90C8();
  }

  return result;
}

uint64_t sub_2140180DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CSDMHandleProto(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  result = (v7)(a2 + v8, 1, 1, v6);
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_214018200(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DB0, type metadata accessor for CSDMConversationMemberProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2140182A0(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401830C()
{
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);

  return sub_2146D9008();
}

uint64_t sub_214018388()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19800);
  __swift_project_value_buffer(v0, qword_27CA19800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_2146E6940;
  v4 = v67 + v3;
  v5 = v67 + v3 + v1[14];
  *(v67 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v67 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "identifier";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v67 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "handle";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v67 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "avcData";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v67 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isMomentsAvailable";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v67 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isScreenSharingAvailable";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v67 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isGondolaCallingAvailable";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v8();
  v20 = (v67 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isPersonaAvailable";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v67 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isLightweight";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v67 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "sharePlayProtocolVersion";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v8();
  v25 = (v67 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "options";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v67 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isGFTDowngradeToOneToOneAvailable";
  *(v28 + 1) = 33;
  v28[16] = 2;
  v8();
  v29 = (v67 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "guestModeEnabled";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v67 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "isUPlusNDowngradeAvailable";
  *(v32 + 1) = 26;
  v32[16] = 2;
  v8();
  v33 = (v67 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "avMode";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v8();
  v35 = (v67 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "supportsLeaveContext";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  v37 = v67 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "isUPlusOneScreenSharingAvailable";
  *(v37 + 8) = 32;
  *(v37 + 16) = 2;
  v8();
  v38 = (v67 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "personaHandshakeData";
  *(v39 + 1) = 20;
  v39[16] = 2;
  v8();
  v40 = (v67 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "isSpatialPersonaEnabled";
  *(v41 + 1) = 23;
  v41[16] = 2;
  v8();
  v42 = (v67 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "isUPlusOneAVLessAvailable";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v8();
  v44 = (v67 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "visionFeatureVersion";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v67 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "visionCallEstablishmentVersion";
  *(v47 + 1) = 30;
  v47[16] = 2;
  v8();
  v48 = (v67 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "isUPlusOneVisionToVisionAvailable";
  *(v49 + 1) = 33;
  v49[16] = 2;
  v8();
  v50 = (v67 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 25;
  *v51 = "supportsRequestToScreenShare";
  *(v51 + 1) = 28;
  v51[16] = 2;
  v8();
  v52 = (v67 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "spatialPersonaGenerationCounter";
  *(v53 + 1) = 31;
  v53[16] = 2;
  v8();
  v54 = (v67 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "isPhotosSharePlayAvailable";
  *(v55 + 1) = 26;
  v55[16] = 2;
  v8();
  v56 = (v67 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 28;
  *v57 = "presentationMode";
  *(v57 + 1) = 16;
  v57[16] = 2;
  v8();
  v58 = (v67 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 29;
  *v59 = "stableDeviceIdentifier";
  *(v59 + 1) = 22;
  v59[16] = 2;
  v8();
  v60 = (v67 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 31;
  *v61 = "isTranslationAvailable";
  *(v61 + 1) = 22;
  v61[16] = 2;
  v8();
  v62 = (v67 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 32;
  *v63 = "isNearbySharePlay";
  *(v63 + 1) = 17;
  v63[16] = 2;
  v8();
  v64 = (v67 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 33;
  *v65 = "nearbyFeatureVersion";
  *(v65 + 1) = 20;
  v65[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214018C7C()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  v2 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData) = xmmword_2146E68C0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight) = 2;
  v3 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  *v4 = 0;
  *(v4 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode) = 3;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData) = xmmword_2146E68C0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable) = 2;
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare) = 2;
  v7 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode) = 3;
  v8 = (v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay) = 2;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  *v9 = 0;
  *(v9 + 4) = 1;
  return v0;
}

uint64_t sub_214018E94()
{
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle, &unk_27C903788, "Į\r");
  sub_213FDC6BC(*(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData), *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData + 8));
  sub_213FDC6BC(*(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData), *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData + 8));
  v1 = *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_214018F6C()
{
  sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2140190BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2140193A4();
        continue;
      case 2:
        sub_214019428();
        continue;
      case 3:
        sub_2140194AC();
        continue;
      case 4:
        v15 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData;
        goto LABEL_33;
      case 5:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
        goto LABEL_3;
      case 6:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
        goto LABEL_3;
      case 7:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
        goto LABEL_3;
      case 8:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
        goto LABEL_3;
      case 9:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
        goto LABEL_3;
      case 10:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
        goto LABEL_36;
      case 11:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
        goto LABEL_36;
      case 12:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
        goto LABEL_3;
      case 13:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
        goto LABEL_3;
      case 15:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
        goto LABEL_3;
      case 16:
        v13 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
        v14 = sub_214028D8C;
        goto LABEL_40;
      case 17:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
        goto LABEL_3;
      case 18:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
        goto LABEL_3;
      case 19:
        v15 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData;
LABEL_33:
        v16 = MEMORY[0x277D21760];
        goto LABEL_38;
      case 20:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
        goto LABEL_3;
      case 21:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
        goto LABEL_3;
      case 22:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
        goto LABEL_36;
      case 23:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
        goto LABEL_36;
      case 24:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
        goto LABEL_3;
      case 25:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
        goto LABEL_3;
      case 26:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
        goto LABEL_36;
      case 27:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
        goto LABEL_3;
      case 28:
        v13 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
        v14 = sub_214028D38;
LABEL_40:
        sub_214019588(a2, a1, a3, a4, v13, v14);
        continue;
      case 29:
        v15 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier;
        v16 = MEMORY[0x277D217D0];
LABEL_38:
        sub_2140202C4(a2, a1, a3, a4, v15, v16);
        continue;
      case 31:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
        goto LABEL_3;
      case 32:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
LABEL_3:
        sub_214020438(a2, a1, a3, a4, v9);
        break;
      case 33:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
LABEL_36:
        sub_214019630(a2, a1, a3, a4, v12, MEMORY[0x277D217E0]);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2140193A4()
{
  swift_beginAccess();
  sub_2146D8F58();
  return swift_endAccess();
}

uint64_t sub_214019428()
{
  swift_beginAccess();
  sub_2146D8F68();
  return swift_endAccess();
}

uint64_t sub_2140194AC()
{
  swift_beginAccess();
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214019588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_214019630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2140196C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214019BD0(a1);
  if (!v4)
  {
    sub_214019C54(a1);
    sub_214019CD8(a1, a2, a3, a4);
    sub_214019EF4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion, 10, MEMORY[0x277D21860]);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options, 11, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable);
    sub_214019FB4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode, sub_214028D8C);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable);
    sub_214019EF4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion, 22, MEMORY[0x277D21860]);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion, 23, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter, 26, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable);
    sub_214019FB4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode, sub_214028D38);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay);
    return sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion, 33, MEMORY[0x277D21860]);
  }

  return result;
}

uint64_t sub_214019BD0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 20) & 1) == 0)
  {
    v3 = *(a1 + 16);
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214019C54(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = *(a1 + 24);
    return sub_2146D90C8();
  }

  return result;
}

uint64_t sub_214019CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMHandleProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &unk_27C903788, "Į\r");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214019EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7 >> 60 != 15)
  {
    v8 = *v5;
    sub_21402D9F8(v8, v7);
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

uint64_t sub_214019FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 3)
  {
    v10 = *(a1 + v8);
    a6(result);
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21401A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21401A114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v183 = *(v4 - 8);
  v5 = *(v183 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v181 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v181 - v17;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v185 = a1;
  LOBYTE(a1) = *(a1 + 20);
  swift_beginAccess();
  v20 = *(a2 + 20);
  if (a1)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 16))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v182 = v7;
  v21 = v185;
  swift_beginAccess();
  v22 = *(v21 + 24);
  v23 = *(v21 + 32);
  swift_beginAccess();
  v24 = *(a2 + 32);
  if (v23)
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 24))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v184 = a2;
  v25 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  v26 = v185;
  swift_beginAccess();
  sub_213FB2E54(v26 + v25, v18, &unk_27C903788, "Į\r");
  v27 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  swift_beginAccess();
  v28 = *(v8 + 48);
  sub_213FB2E54(v18, v11, &unk_27C903788, "Į\r");
  sub_213FB2E54(v184 + v27, &v11[v28], &unk_27C903788, "Į\r");
  v29 = *(v183 + 48);
  if (v29(v11, 1, v4) == 1)
  {

    sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
    if (v29(&v11[v28], 1, v4) == 1)
    {
      sub_213FB2DF4(v11, &unk_27C903788, "Į\r");
      goto LABEL_22;
    }

LABEL_18:
    sub_213FB2DF4(v11, &qword_27C903D78, &qword_2146E9858);
    goto LABEL_19;
  }

  sub_213FB2E54(v11, v16, &unk_27C903788, "Į\r");
  if (v29(&v11[v28], 1, v4) == 1)
  {

    sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
    sub_214028E9C(v16, type metadata accessor for CSDMHandleProto);
    goto LABEL_18;
  }

  v31 = v182;
  sub_214028E34(&v11[v28], v182, type metadata accessor for CSDMHandleProto);
  v26 = v185;

  v32 = sub_21402B72C(v16, v31);
  sub_214028E9C(v31, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
  sub_214028E9C(v16, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v11, &unk_27C903788, "Į\r");
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v33 = (v26 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  v36 = (v184 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  swift_beginAccess();
  v37 = *v36;
  v38 = v36[1];
  sub_213FDCA18(v35, v34);
  sub_213FDCA18(v37, v38);
  if (v34 >> 60 == 15)
  {
    if (v38 >> 60 != 15)
    {
LABEL_27:

      goto LABEL_28;
    }

    sub_213FDC6BC(v35, v34);
  }

  else
  {
    sub_213FDCA18(v35, v34);
    sub_213FDCA18(v37, v38);
    if (v38 >> 60 == 15)
    {
      goto LABEL_26;
    }

    v39 = sub_214466780(v35, v34, v37, v38);
    sub_213FDC6BC(v37, v38);
    sub_213FDC6BC(v35, v34);
    sub_213FDC6BC(v37, v38);
    sub_213FDC6BC(v35, v34);
    if ((v39 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v40 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v41 = *(v26 + v40);
  v42 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v43 = *(v184 + v42);
  if (v41 == 2)
  {
    if (v43 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v43 == 2 || ((v41 ^ v43) & 1) != 0)
  {
    goto LABEL_19;
  }

  v44 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v45 = *(v26 + v44);
  v46 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v47 = *(v184 + v46);
  if (v45 == 2)
  {
    if (v47 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v47 == 2 || ((v45 ^ v47) & 1) != 0)
  {
    goto LABEL_19;
  }

  v48 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  v49 = *(v26 + v48);
  v50 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  v51 = *(v184 + v50);
  if (v49 == 2)
  {
    if (v51 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v51 == 2 || ((v49 ^ v51) & 1) != 0)
  {
    goto LABEL_19;
  }

  v52 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v53 = *(v26 + v52);
  v54 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v55 = *(v184 + v54);
  if (v53 == 2)
  {
    if (v55 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v55 == 2 || ((v53 ^ v55) & 1) != 0)
  {
    goto LABEL_19;
  }

  v56 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  v57 = *(v26 + v56);
  v58 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  v59 = *(v184 + v58);
  v60 = v184;
  if (v57 == 2)
  {
    if (v59 == 2)
    {
      goto LABEL_55;
    }

LABEL_19:

    return 0;
  }

  if (v59 == 2 || ((v57 ^ v59) & 1) != 0)
  {
    goto LABEL_19;
  }

LABEL_55:
  v61 = v26 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  v62 = v60;
  v63 = *v61;
  LOBYTE(v61) = *(v61 + 4);
  v64 = v62 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  v65 = *(v64 + 4);
  if (v61)
  {
    if ((*(v64 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v64 + 4) & 1) != 0 || v63 != *v64)
  {
    goto LABEL_19;
  }

  v66 = v26 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  swift_beginAccess();
  v67 = *v66;
  LOBYTE(v66) = *(v66 + 4);
  v68 = v184 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  swift_beginAccess();
  v69 = *(v68 + 4);
  if (v66)
  {
    if ((*(v68 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v68 + 4) & 1) != 0 || v67 != *v68)
  {
    goto LABEL_19;
  }

  v70 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  v71 = v185;
  swift_beginAccess();
  v72 = *(v71 + v70);
  v73 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  v74 = v184;
  swift_beginAccess();
  v75 = *(v74 + v73);
  if (v72 == 2)
  {
    if (v75 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v75 == 2 || ((v72 ^ v75) & 1) != 0)
  {
    goto LABEL_19;
  }

  v76 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  v77 = v185;
  swift_beginAccess();
  v78 = *(v77 + v76);
  v79 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  v80 = v184;
  swift_beginAccess();
  v81 = *(v80 + v79);
  if (v78 == 2)
  {
    if (v81 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v81 == 2 || ((v78 ^ v81) & 1) != 0)
  {
    goto LABEL_19;
  }

  v82 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  v83 = v185;
  swift_beginAccess();
  v84 = *(v83 + v82);
  v85 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  v86 = v184;
  swift_beginAccess();
  v87 = *(v86 + v85);
  if (v84 == 2)
  {
    if (v87 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v87 == 2 || ((v84 ^ v87) & 1) != 0)
  {
    goto LABEL_19;
  }

  v88 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  v89 = v185;
  swift_beginAccess();
  v90 = *(v89 + v88);
  v91 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  v92 = v184;
  swift_beginAccess();
  v93 = *(v92 + v91);
  if (v90 == 3)
  {
    if (v93 != 3)
    {
      goto LABEL_19;
    }
  }

  else if (v93 == 3 || v90 != v93)
  {
    goto LABEL_19;
  }

  v94 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  v95 = v185;
  swift_beginAccess();
  v96 = *(v95 + v94);
  v97 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  v98 = v184;
  swift_beginAccess();
  v99 = *(v98 + v97);
  if (v96 == 2)
  {
    if (v99 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v99 == 2 || ((v96 ^ v99) & 1) != 0)
  {
    goto LABEL_19;
  }

  v100 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  v101 = v185;
  swift_beginAccess();
  v102 = *(v101 + v100);
  v103 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  v104 = v184;
  swift_beginAccess();
  v105 = *(v104 + v103);
  if (v102 == 2)
  {
    if (v105 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v105 == 2 || ((v102 ^ v105) & 1) != 0)
  {
    goto LABEL_19;
  }

  v106 = (v185 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  swift_beginAccess();
  v35 = *v106;
  v34 = v106[1];
  v107 = (v184 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  swift_beginAccess();
  v37 = *v107;
  v38 = v107[1];
  sub_213FDCA18(v35, v34);
  sub_213FDCA18(v37, v38);
  if (v34 >> 60 == 15)
  {
    if (v38 >> 60 == 15)
    {
      sub_213FDC6BC(v35, v34);
      goto LABEL_103;
    }

    goto LABEL_27;
  }

  sub_213FDCA18(v35, v34);
  sub_213FDCA18(v37, v38);
  if (v38 >> 60 == 15)
  {
LABEL_26:

    sub_213FDC6BC(v37, v38);
    sub_213FDC6BC(v35, v34);
LABEL_28:
    sub_213FDC6BC(v35, v34);
    sub_213FDC6BC(v37, v38);
    return 0;
  }

  v108 = sub_214466780(v35, v34, v37, v38);
  sub_213FDC6BC(v37, v38);
  sub_213FDC6BC(v35, v34);
  sub_213FDC6BC(v37, v38);
  sub_213FDC6BC(v35, v34);
  if ((v108 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_103:
  v109 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  v110 = v185;
  swift_beginAccess();
  v111 = *(v110 + v109);
  v112 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  v113 = v184;
  swift_beginAccess();
  v114 = *(v113 + v112);
  if (v111 == 2)
  {
    if (v114 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v114 == 2 || ((v111 ^ v114) & 1) != 0)
  {
    goto LABEL_19;
  }

  v115 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  v116 = v185;
  swift_beginAccess();
  v117 = *(v116 + v115);
  v118 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  v119 = v184;
  swift_beginAccess();
  v120 = *(v119 + v118);
  if (v117 == 2)
  {
    if (v120 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v120 == 2 || ((v117 ^ v120) & 1) != 0)
  {
    goto LABEL_19;
  }

  v121 = v185 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  v122 = *v121;
  LOBYTE(v121) = *(v121 + 4);
  v123 = v184 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  v124 = *(v123 + 4);
  if (v121)
  {
    if ((*(v123 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v123 + 4) & 1) != 0 || v122 != *v123)
  {
    goto LABEL_19;
  }

  v125 = v185 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  v126 = *v125;
  LOBYTE(v125) = *(v125 + 4);
  v127 = v184 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  v128 = *(v127 + 4);
  if (v125)
  {
    if ((*(v127 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v127 + 4) & 1) != 0 || v126 != *v127)
  {
    goto LABEL_19;
  }

  v129 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  v130 = v185;
  swift_beginAccess();
  v131 = *(v130 + v129);
  v132 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  v133 = v184;
  swift_beginAccess();
  v134 = *(v133 + v132);
  if (v131 == 2)
  {
    if (v134 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v134 == 2 || ((v131 ^ v134) & 1) != 0)
  {
    goto LABEL_19;
  }

  v135 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  v136 = v185;
  swift_beginAccess();
  v137 = *(v136 + v135);
  v138 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  v139 = v184;
  swift_beginAccess();
  v140 = *(v139 + v138);
  if (v137 == 2)
  {
    if (v140 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v140 == 2 || ((v137 ^ v140) & 1) != 0)
  {
    goto LABEL_19;
  }

  v141 = v185 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  swift_beginAccess();
  v142 = *v141;
  LOBYTE(v141) = *(v141 + 4);
  v143 = v184 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  swift_beginAccess();
  v144 = *(v143 + 4);
  if (v141)
  {
    if ((*(v143 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v143 + 4) & 1) != 0 || v142 != *v143)
  {
    goto LABEL_19;
  }

  v145 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  v146 = v185;
  swift_beginAccess();
  v147 = *(v146 + v145);
  v148 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  v149 = v184;
  swift_beginAccess();
  v150 = *(v149 + v148);
  if (v147 == 2)
  {
    if (v150 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v150 == 2 || ((v147 ^ v150) & 1) != 0)
  {
    goto LABEL_19;
  }

  v151 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  v152 = v185;
  swift_beginAccess();
  v153 = *(v152 + v151);
  v154 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  v155 = v184;
  swift_beginAccess();
  v156 = *(v155 + v154);
  if (v153 == 3)
  {
    if (v156 != 3)
    {
      goto LABEL_19;
    }
  }

  else if (v156 == 3 || v153 != v156)
  {
    goto LABEL_19;
  }

  v157 = (v185 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v158 = *v157;
  v159 = v157[1];
  v160 = (v184 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v161 = v160[1];
  if (v159)
  {
    if (!v161 || (v158 != *v160 || v159 != v161) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v161)
  {
    goto LABEL_19;
  }

  v162 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  v163 = v185;
  swift_beginAccess();
  v164 = *(v163 + v162);
  v165 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  v166 = v184;
  swift_beginAccess();
  v167 = *(v166 + v165);
  if (v164 == 2)
  {
    if (v167 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v167 == 2 || ((v164 ^ v167) & 1) != 0)
  {
    goto LABEL_19;
  }

  v168 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  v169 = v185;
  swift_beginAccess();
  v170 = *(v169 + v168);
  v171 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  v172 = v184;
  swift_beginAccess();
  v173 = *(v172 + v171);
  if (v170 == 2)
  {
    if (v173 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v173 == 2 || ((v170 ^ v173) & 1) != 0)
  {
    goto LABEL_19;
  }

  v174 = (v185 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion);
  swift_beginAccess();
  v175 = *v174;
  v176 = *(v174 + 4);

  v177 = (v184 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion);
  swift_beginAccess();
  v178 = *v177;
  v179 = *(v177 + 4);

  if (v176)
  {
    if (!v179)
    {
      return 0;
    }
  }

  else
  {
    if (v175 == v178)
    {
      v180 = v179;
    }

    else
    {
      v180 = 1;
    }

    if (v180)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21401B408(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DB8, type metadata accessor for CSDMConversationParticipantProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401B4A8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401B514()
{
  sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto);

  return sub_2146D9008();
}

uint64_t sub_21401B5D4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19818);
  __swift_project_value_buffer(v0, qword_27CA19818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "contextIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actionDescription";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ongoingDescription";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "completedDescription";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21401B81C()
{
  result = sub_2146D8E78();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CSDMConversationActivityContextProto(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for CSDMConversationActivityContextProto(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for CSDMConversationActivityContextProto(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for CSDMConversationActivityContextProto(0) + 24);
      }

      v0 = v3;
      sub_2146D8F38();
LABEL_13:
      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21401B908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityContextProto);
  if (!v4)
  {
    sub_21401BA04(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityContextProto);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityContextProto);
    sub_21401BA88(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityContextProto);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21401BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21401BA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21401BB10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_21401BBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DC0, type metadata accessor for CSDMConversationActivityContextProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401BC4C(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401BCB8()
{
  sub_214027000(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto);

  return sub_2146D9008();
}

uint64_t sub_21401BD38()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19830);
  __swift_project_value_buffer(v0, qword_27CA19830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "targetContentIdentifier";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shouldAssociateScene";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "preferredSceneSessionRole";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21401BF4C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0) + 28);
LABEL_10:
        v0 = 0;
        sub_2146D8F38();
        break;
      case 2:
        v1 = *(type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0) + 24);
        sub_2146D8E98();
        break;
      case 1:
        v4 = *(type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_21401C024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
  if (!v4)
  {
    sub_21401CB00(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21401C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21401C16C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_21401C200(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DC8, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401C2A0(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401C30C()
{
  sub_214027000(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);

  return sub_2146D9008();
}

uint64_t sub_21401C38C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19848);
  __swift_project_value_buffer(v0, qword_27CA19848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146E6950;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "fallbackURL";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "supportsContinuationOnTV";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "title";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "subtitle";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "image";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "preferredBroadcastingAttributes";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sceneAssociationBehavior";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "supportsActivityPreviews";
  *(v21 + 1) = 24;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "lifetimePolicy";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21401C70C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          v8 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 28);
        }

        else
        {
          v6 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 32);
        }

LABEL_3:
        v0 = 0;
        sub_2146D8F38();
      }

      else
      {
        if (result == 1)
        {
          v1 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 20);
          goto LABEL_3;
        }

        if (result == 2)
        {
          v5 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 24);
          goto LABEL_25;
        }
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        v9 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 36);
        sub_2146D8EC8();
      }

      else
      {
        v7 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 40);
LABEL_20:
        v0 = 0;
        sub_2146D8F58();
      }
    }

    else
    {
      switch(result)
      {
        case 7:
          sub_21401C8DC();
          break;
        case 8:
          v10 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 48);
LABEL_25:
          v0 = 0;
          sub_2146D8E98();
          break;
        case 9:
          v4 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 52);
          goto LABEL_20;
      }
    }
  }
}

uint64_t sub_21401C8DC()
{
  v0 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 44);
  type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  sub_214027000(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
  return sub_2146D8F98();
}

uint64_t sub_21401C990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityMetadataProto);
  if (!v4)
  {
    sub_21401CB00(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityMetadataProto);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityMetadataProto);
    sub_21401BA88(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityMetadataProto);
    sub_21401CB7C(v3);
    sub_21401CC1C(v3);
    sub_21401CC94(v3, a1, a2, a3);
    sub_21401CEA4(v3);
    sub_21401CF1C(v3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21401CB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21401CB7C(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

uint64_t sub_21401CC1C(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D90B8();
  }

  return result;
}