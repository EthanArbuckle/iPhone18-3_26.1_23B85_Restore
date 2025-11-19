uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::find<TSUFlushableObjectInfo *>(uint64_t a1, const TSUFlushableObjectInfo **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = TSUFlushableObjectInfo::compareFlushingOrder(*(v3 + 32), *a2);
    if (v6 != -1)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v6 == -1));
  }

  while (v3);
  if (v5 == v2 || TSUFlushableObjectInfo::compareFlushingOrder(*a2, *(v5 + 32)) == -1)
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::find<TSUFlushableObjectInfo *>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::find<TSUFlushableObjectInfo *>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(*a2 + 20);
  v6 = v2;
  do
  {
    v7 = *(*(v3 + 32) + 20);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(*(v6 + 32) + 20))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(uint64_t a1, TSUFlushableObjectInfo **a2)
{
  v2 = *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__find_equal<TSUFlushableObjectInfo *>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__find_equal<TSUFlushableObjectInfo *>(uint64_t a1, void *a2, TSUFlushableObjectInfo **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (TSUFlushableObjectInfo::compareFlushingOrder(*a3, v4[4]) != -1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (TSUFlushableObjectInfo::compareFlushingOrder(v7[4], *a3) != -1)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_25D383A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SFUBundle()
{
  if (SFUBundle_onceToken != -1)
  {
    SFUBundle_cold_1();
  }

  return SFUBundle_sSFUBundle;
}

uint64_t __SFUBundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  SFUBundle_sSFUBundle = result;
  return result;
}

uint64_t TSUHashWithSeed(char *a1, uint64_t a2, uint64_t a3)
{
  for (; a2; --a2)
  {
    v3 = *a1++;
    a3 = 0x100000001B3 * (a3 ^ v3);
  }

  return a3;
}

void sub_25D384598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSUSetCrashReporterInfovAndCrash(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v7 = a2;
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) tsu_initRedactedWithFormat:v2 arguments:v6];
  v4 = [v3 UTF8String];
  v5 = 0;
  if (v4)
  {
    asprintf(&v5, "%s", v4);
  }

  _os_crash();
  __break(1u);
}

__CFDateFormatter *TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(const __CFAllocator *a1, void *a2, CFDateFormatterStyle a3, CFDateFormatterStyle a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CFDateFormatterRef TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(CFAllocatorRef, NSLocale *__strong, CFDateFormatterStyle, CFDateFormatterStyle)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:235 isFatal:1 description:"<rdar://problem/29112058>: Shouldn't be passed a locale of NULL"];

    TSUCrash("<rdar://problem/29112058>: Shouldn't be passed a locale of NULL", v10, v11, v12, v13, v14, v15, v16, v60);
  }

  if (![OITSULocale localeIsAutoUpdating:v7])
  {
    v17 = +[OITSULocale currentLocale];
    v18 = [v17 gregorianCalendarLocale];

    if (v7 != v18)
    {
      v19 = TSULocaleNSLocaleWithHarmonizedNumberingSystem(v7);

      v61 = a3;
      v20 = CFDateFormatterCreate(a1, v19, a3, a4);
      v21 = [(__CFLocale *)v19 localeIdentifier];
      if (TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols_onceToken != -1)
      {
        TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols_cold_1();
      }

      [sDateFormatterCldrLock lock];
      v22 = [sDateFormatterCldrSymbolsCache objectForKeyedSubscript:v21];
      v62 = a4;
      v63 = v21;
      if (!v22)
      {
        v23 = sDateFormatterCldrSymbolsCache;
        v22 = [MEMORY[0x277CBEB38] dictionary];
        [v23 setObject:v22 forKeyedSubscript:v21];
        v24 = SFUBundle();
        v25 = [OITSULocaleStructuredDictionary dictionaryWithContentsOfFileForLocale:v19 inDirectory:@"DateFormatterSymbols" inBundle:v24];

        if (!v25)
        {
          v26 = +[OITSULocaleStructuredDictionary dateFormatterSymbolsFallbackDictionary];
          if (!v26)
          {
            goto LABEL_30;
          }

          v25 = v26;
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v27 = sDateFormatterCldrOverridingKeys;
        v28 = [v27 countByEnumeratingWithState:&v72 objects:v78 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v73;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v73 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v72 + 1) + 8 * i);
              v33 = [v25 objectForKey:v32 locale:v19];
              if (v33)
              {
                [v22 setObject:v33 forKeyedSubscript:v32];
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v72 objects:v78 count:16];
          }

          while (v29);
        }

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v34 = sDateFormatterCldrOverridingFormatKeys;
        v35 = [v34 countByEnumeratingWithState:&v68 objects:v77 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v69;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v69 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v68 + 1) + 8 * j);
              v40 = [v25 objectForKey:v39 locale:v19];
              if (v40)
              {
                [v22 setObject:v40 forKeyedSubscript:v39];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v68 objects:v77 count:16];
          }

          while (v36);
        }

        v21 = v63;
      }

LABEL_30:
      [sDateFormatterCldrLock unlock];
      v41 = [v22 objectForKeyedSubscript:@"months.format.narrow"];

      if (!v41)
      {
LABEL_71:

        v7 = v19;
        goto LABEL_72;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v42 = sDateFormatterCldrOverridingKeys;
      v43 = [v42 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v65;
        do
        {
          for (k = 0; k != v44; ++k)
          {
            if (*v65 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v64 + 1) + 8 * k);
            v48 = [sDateFormatterCldrOverridingKeys objectForKeyedSubscript:v47];
            v49 = [v22 objectForKeyedSubscript:v47];
            CFDateFormatterSetProperty(v20, v48, v49);
          }

          v44 = [v42 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v44);
      }

      if ((v61 - 1) > 3)
      {
        v50 = 0;
        v51 = 0;
      }

      else
      {
        v50 = off_2799C6168[v61 - 1];
        v51 = [v22 objectForKeyedSubscript:v50];
      }

      v21 = v63;
      if (v62 <= 1)
      {
        if (!v62)
        {
          goto LABEL_54;
        }

        if (v62 == 1)
        {
          v50 = @"timeFormats.short";
          goto LABEL_53;
        }
      }

      else
      {
        switch(v62)
        {
          case 4:
            v50 = @"timeFormats.full";
            goto LABEL_53;
          case 3:
            v50 = @"timeFormats.long";
            goto LABEL_53;
          case 2:
            v50 = @"timeFormats.medium";
LABEL_53:
            v52 = [v22 objectForKeyedSubscript:v50];
            goto LABEL_55;
        }
      }

      if (v50)
      {
        goto LABEL_53;
      }

LABEL_54:
      v52 = 0;
LABEL_55:
      if (![v63 rangeOfString:@"ar"] && -[__CFString tsu_containsSubstring:](v51, "tsu_containsSubstring:", @"\u200F") && -[__CFString characterAtIndex:](v51, "characterAtIndex:", 0) != 8207)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"\u200F%@", v51];

        v51 = v53;
      }

      v54 = &stru_286EE1130;
      if (v51)
      {
        v55 = v51;
      }

      else
      {
        v55 = &stru_286EE1130;
      }

      if (v51)
      {
        v56 = v52 == 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = @" ";
      if (v56)
      {
        v57 = &stru_286EE1130;
      }

      if (v52)
      {
        v54 = v52;
      }

      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v55, v57, v54];
      CFDateFormatterSetFormat(v20, v58);

      goto LABEL_71;
    }
  }

  v20 = CFDateFormatterCreate(a1, v7, a3, a4);
LABEL_72:

  return v20;
}

id TSUGetGMTTimeZone()
{
  v0 = TSUGetGMTTimeZone_sGMTTimeZone;
  if (!TSUGetGMTTimeZone_sGMTTimeZone)
  {
    v1 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    v2 = TSUGetGMTTimeZone_sGMTTimeZone;
    TSUGetGMTTimeZone_sGMTTimeZone = v1;

    v0 = TSUGetGMTTimeZone_sGMTTimeZone;
    if (!TSUGetGMTTimeZone_sGMTTimeZone)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSTimeZone *TSUGetGMTTimeZone(void)"];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:599 isFatal:0 description:"GMTTimeZone() couldn't create time zone"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      v0 = TSUGetGMTTimeZone_sGMTTimeZone;
    }
  }

  return v0;
}

uint64_t TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDictionary *TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(NSLocale *__strong)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:115 isFatal:0 description:"Unspecified locale no longer supported."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v4 = SFUBundle();
  v5 = [v1 localeIdentifier];
  v6 = [OITSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:v5];

  v7 = [v4 pathForResource:v6 ofType:@"plist" inDirectory:@"DateTimeFormats"];
  if (!v7)
  {
    v8 = [OITSULocale canonicalizeLocaleIdentifierWithLanguageOnly:v6];
    v9 = [OITSULocale deducedScriptForLocale:v6];
    v10 = [v1 localeIdentifier];
    v11 = TSUDateComponentOrderingForLocale(v10);

    v12 = off_2799C6188[v11];
    if (!v9 || ([MEMORY[0x277CCACA8] stringWithFormat:@"generic-%@-%@-%@", v8, v9, v12], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "pathForResource:ofType:inDirectory:", v13, @"plist", @"DateTimeFormats"), v7 = objc_claimAutoreleasedReturnValue(), v13, !v7))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"generic-%@-%@", v8, v12];
      v7 = [v4 pathForResource:v14 ofType:@"plist" inDirectory:@"DateTimeFormats"];

      if (!v7)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"fallback-%@", v12];
        v7 = [v4 pathForResource:v15 ofType:@"plist" inDirectory:@"DateTimeFormats"];
      }
    }

    if (!v7)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDictionary *TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(NSLocale *__strong)"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:169 isFatal:0 description:"Unable to find path for plist containing date time formats!"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      v7 = 0;
    }
  }

  v18 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v7];

  return v18;
}

uint64_t TSUDateComponentOrderingForLocale(void *a1)
{
  v1 = MEMORY[0x277CBEAF8];
  v2 = a1;
  v3 = [[v1 alloc] initWithLocaleIdentifier:v2];

  v4 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"yMd" options:0 locale:v3];
  v5 = [v4 rangeOfString:@"y"];
  v6 = [v4 rangeOfString:@"M"];
  v7 = [v4 rangeOfString:@"d"];
  v8 = v7;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUDateComponentOrdering TSUDateComponentOrderingForLocale(NSString *__strong)"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:730 isFatal:0 description:"Format Failed."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v13 = 1;
  v14 = 4;
  if (v8 > v6)
  {
    v14 = 5;
  }

  if (v8 >= v5)
  {
    v13 = v14;
  }

  v15 = 2;
  if (v8 > v5)
  {
    v15 = 3;
  }

  if (v8 < v6)
  {
    v15 = 0;
  }

  if (v6 < v5)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

uint64_t TSUDateFormatterCopyFormatStringForDateAndTimeStyles(CFDateFormatterStyle a1, CFDateFormatterStyle a2, void *a3)
{
  v5 = [a3 gregorianCalendarLocale];
  UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, v5, a1, kCFDateFormatterNoStyle);
  v7 = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, v5, kCFDateFormatterNoStyle, a2);
  v8 = CFDateFormatterGetFormat(UsingHarmonizedSymbols);
  v9 = CFDateFormatterGetFormat(v7);
  v10 = &stru_286EE1130;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v10 = @" ";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v8, v10, v9];
  CFRelease(UsingHarmonizedSymbols);
  CFRelease(v7);

  return v11;
}

void __TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols_block_invoke()
{
  v21[14] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = sDateFormatterCldrLock;
  sDateFormatterCldrLock = v0;

  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = sDateFormatterCldrSymbolsCache;
  sDateFormatterCldrSymbolsCache = v2;

  v4 = *MEMORY[0x277CBEE00];
  v20[0] = @"months.format.narrow";
  v20[1] = @"months.stand-alone.narrow";
  v5 = *MEMORY[0x277CBEE08];
  v21[0] = v4;
  v21[1] = v5;
  v6 = *MEMORY[0x277CBEDB0];
  v20[2] = @"months.format.abbreviated";
  v20[3] = @"months.stand-alone.abbreviated";
  v7 = *MEMORY[0x277CBEDC0];
  v21[2] = v6;
  v21[3] = v7;
  v8 = *MEMORY[0x277CBED98];
  v20[4] = @"months.format.wide";
  v20[5] = @"months.stand-alone.wide";
  v9 = *MEMORY[0x277CBEDE0];
  v21[4] = v8;
  v21[5] = v9;
  v10 = *MEMORY[0x277CBEE18];
  v20[6] = @"days.format.narrow";
  v20[7] = @"days.stand-alone.narrow";
  v11 = *MEMORY[0x277CBEE10];
  v21[6] = v10;
  v21[7] = v11;
  v12 = *MEMORY[0x277CBEDD8];
  v20[8] = @"days.format.abbreviated";
  v20[9] = @"days.stand-alone.abbreviated";
  v13 = *MEMORY[0x277CBEDD0];
  v21[8] = v12;
  v21[9] = v13;
  v14 = *MEMORY[0x277CBEE20];
  v20[10] = @"days.format.wide";
  v20[11] = @"days.stand-alone.wide";
  v15 = *MEMORY[0x277CBEDF0];
  v21[10] = v14;
  v21[11] = v15;
  v20[12] = @"dayPeriods.format.abbreviated.am";
  v20[13] = @"dayPeriods.format.abbreviated.pm";
  v16 = *MEMORY[0x277CBEDA0];
  v21[12] = *MEMORY[0x277CBED70];
  v21[13] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:14];
  v18 = sDateFormatterCldrOverridingKeys;
  sDateFormatterCldrOverridingKeys = v17;

  v19 = sDateFormatterCldrOverridingFormatKeys;
  sDateFormatterCldrOverridingFormatKeys = &unk_286F6D230;
}

id TSUDateFormatterStringFromDateWithFormat(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDateFormatterStringFromDateWithFormat(NSDate *__strong, NSString *__strong, OITSULocale *__strong)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:396 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v10 = [OITSUDateFormatter_FormatterCache dateFormatterStringFromDate:v5 withFormat:v6 locale:v7];

  return v10;
}

id TSUShortestCompleteDateTimeFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUShortestCompleteDateTimeFormat(OITSULocale *__strong)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:404 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteDateTimeFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"yMd", 0, [v1 cfGregorianCalendarLocale]);
    v7 = CFDateFormatterCreateDateFormatFromTemplate(0, @"jms", 0, [v1 cfGregorianCalendarLocale]);
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", DateFormatFromTemplate, v7];
    [v1 setLocaleSpecificStorage:v4 forKey:@"TSUShortestCompleteDateTimeFormat"];

    objc_sync_exit(v5);
  }

  return v4;
}

id TSUShortestCompleteTimeOnlyFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUShortestCompleteTimeOnlyFormat(OITSULocale *__strong)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:427 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  DateFormatFromTemplate = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteTimeOnlyFormat"];
  if (!DateFormatFromTemplate)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"jms", 0, [v1 cfGregorianCalendarLocale]);
    [v1 setLocaleSpecificStorage:DateFormatFromTemplate forKey:@"TSUShortestCompleteTimeOnlyFormat"];
    objc_sync_exit(v5);
  }

  return DateFormatFromTemplate;
}

id TSUShortestCompleteDateOnlyFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUShortestCompleteDateOnlyFormat(OITSULocale *__strong)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:445 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  DateFormatFromTemplate = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteDateOnlyFormat"];
  if (!DateFormatFromTemplate)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"yMd", 0, [v1 cfGregorianCalendarLocale]);
    [v1 setLocaleSpecificStorage:DateFormatFromTemplate forKey:@"TSUShortestCompleteDateOnlyFormat"];
    objc_sync_exit(v5);
  }

  return DateFormatFromTemplate;
}

id TSUDefaultDateTimeFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUDefaultDateTimeFormat(OITSULocale *__strong)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:522 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultDateTimeFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterShortStyle, kCFDateFormatterShortStyle, v1);
    [v1 setLocaleSpecificStorage:v4 forKey:@"TSUDefaultDateTimeFormat"];
    objc_sync_exit(v5);
  }

  return v4;
}

id TSUDefaultDateOnlyShortFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUDefaultDateOnlyShortFormat(OITSULocale *__strong)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:538 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultDateOnlyShortFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterShortStyle, kCFDateFormatterNoStyle, v1);
    v6 = [OITSUDateFormatter supportedDateFormatsForLocale:v1];
    v7 = [v6 containsObject:v4];

    if ((v7 & 1) == 0)
    {
      v8 = [OITSUDateFormatter p_supportedDateFormatMatchingFormat:v4 locale:v1];

      v4 = v8;
    }

    [v1 setLocaleSpecificStorage:v4 forKey:@"TSUDefaultDateOnlyShortFormat"];
    objc_sync_exit(v5);
  }

  return v4;
}

id TSUDefaultDateOnlyMediumFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUDefaultDateOnlyMediumFormat(OITSULocale *__strong)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:557 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultDateOnlyMediumFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle, v1);
    v6 = [OITSUDateFormatter supportedDateFormatsForLocale:v1];
    v7 = [v6 containsObject:v4];

    if ((v7 & 1) == 0)
    {
      v8 = [OITSUDateFormatter p_supportedDateFormatMatchingFormat:v4 locale:v1];

      v4 = v8;
    }

    [v1 setLocaleSpecificStorage:v4 forKey:@"TSUDefaultDateOnlyMediumFormat"];
    objc_sync_exit(v5);
  }

  return v4;
}

id TSUDefaultTimeOnlyShortFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUDefaultTimeOnlyShortFormat(OITSULocale *__strong)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:576 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultTimeOnlyShortFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterNoStyle, kCFDateFormatterShortStyle, v1);
    v6 = [OITSUDateFormatter supportedDateFormatsForLocale:v1];
    v7 = [v6 containsObject:v4];

    if ((v7 & 1) == 0)
    {
      v8 = [OITSUDateFormatter p_supportedTimeFormatMatchingFormat:v4 locale:v1];

      v4 = v8;
    }

    [v1 setLocaleSpecificStorage:v4 forKey:@"TSUDefaultTimeOnlyShortFormat"];
    objc_sync_exit(v5);
  }

  return v4;
}

uint64_t TSUCopyLocaleWithGregorianCalendarFromLocale(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CBEAF8];
  v3 = [v1 localeIdentifier];
  v4 = [v2 componentsFromLocaleIdentifier:v3];
  v5 = [v4 mutableCopy];

  [v5 setObject:*MEMORY[0x277CBE5C0] forKey:*MEMORY[0x277CBEE88]];
  if (![OITSULocale localeIsAutoUpdating:v1])
  {
    v6 = *MEMORY[0x277CBE698];
    v7 = [v1 objectForKey:*MEMORY[0x277CBE698]];
    v8 = v7;
    v9 = &stru_286EE1130;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    [v5 setObject:v10 forKey:v6];
  }

  v11 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v5];
  v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v11];

  return v12;
}

uint64_t TSUGregorianUnitsPresentInFormatString(void *a1)
{
  v1 = a1;
  v2 = 4 * ([v1 rangeOfString:@"y"] != 0x7FFFFFFFFFFFFFFFLL);
  if ([v1 rangeOfString:@"M"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"L") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 8uLL;
  }

  if ([v1 rangeOfString:@"d"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 0x10uLL;
  }

  if ([v1 rangeOfString:@"h" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:options:", @"k", 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 0x20uLL;
  }

  if ([v1 rangeOfString:@"m"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 0x40uLL;
  }

  if ([v1 rangeOfString:@"s"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 0x80uLL;
  }

  return v2;
}

uint64_t TSUCreateDateWithGregorianUnitsSetToDefaultValue(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = *MEMORY[0x277CBE5C0];
  v8 = [v6 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v9 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v8 setTimeZone:v9];

  v10 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v7];
  v11 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [v10 setTimeZone:v11];

  v12 = [v8 components:252 fromDate:v5];

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v10 components:252 fromDate:v13];

  v15 = TSUGregorianUnitsPresentInFormatString(v4);
  if ((v15 & 0x1C) == 0)
  {
    if (v15 < 0x20)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSDate *TSUCreateDateWithGregorianUnitsSetToDefaultValue(NSDate *__strong, NSString *__strong)"}];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:705 isFatal:0 description:"this line must not be reached"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      goto LABEL_9;
    }

    [v12 setYear:{objc_msgSend(v14, "year")}];
    [v12 setMonth:{objc_msgSend(v14, "month")}];
    v17 = [v14 day];
    v16 = v12;
    goto LABEL_15;
  }

  if ((v15 & 4) == 0)
  {
    [v12 setYear:{objc_msgSend(v14, "year")}];
    if ((v15 & 8) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    [v12 setMonth:1];
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    if ((v15 & 0x20) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if ((v15 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v15 & 0x10) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v16 = v12;
  v17 = 1;
LABEL_15:
  [v16 setDay:v17];
  if ((v15 & 0x20) != 0)
  {
LABEL_16:
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_9:
  [v12 setHour:0];
  if ((v15 & 0x40) == 0)
  {
LABEL_17:
    [v12 setMinute:0];
  }

LABEL_18:
  if (v15 <= 0x7F)
  {
    [v12 setSecond:0];
  }

  v20 = [v8 dateFromComponents:v12];

  return v20;
}

uint64_t TSUCreateArrayOfDateFormatStringsForLocale(void *a1)
{
  v1 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(a1);
  v2 = [v1 objectForKey:@"AcceptedDateFormats"];

  return v2;
}

uint64_t TSUCreateArrayOfTimeFormatStringsForLocale(void *a1)
{
  v1 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(a1);
  v2 = [v1 objectForKey:@"AcceptedTimeFormats"];

  return v2;
}

uint64_t TSUCreateDateFromStringWithPreferredFormat(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSDate *TSUCreateDateFromStringWithPreferredFormat(NSString *__strong, OITSULocale *__strong, NSString *__strong, NSString *__autoreleasing *, BOOL)"}];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:763 isFatal:0 description:"A locale is required here."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v14 = [v10 dateParserLibrary];
  v15 = [v14 checkoutDateParser];
  v16 = [v15 newDateFromString:v9 preferredFormatString:v11 successfulFormatString:a4 tryAggressiveFormats:a5];
  [v14 returnDateParser:v15];

  return v16;
}

__CFDateFormatter *p_createADateFormatter(void *a1)
{
  UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, a1, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBED88], *MEMORY[0x277CBED10]);
  v2 = *MEMORY[0x277CBEDF8];
  v3 = TSUGetGMTTimeZone();
  CFDateFormatterSetProperty(UsingHarmonizedSymbols, v2, v3);

  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 components:4 fromDate:v4];
  v8 = TSUGetGMTTimeZone();
  [v7 setTimeZone:v8];

  v9 = [v6 dateFromComponents:v7];
  CFDateFormatterSetProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBED78], v9);

  return UsingHarmonizedSymbols;
}

uint64_t TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(void *a1, double *a2, _DWORD *a3, _DWORD *a4, int a5, void *a6)
{
  v56 = 0;
  v11 = objc_autoreleasePoolPush();
  v53 = a6;
  v12 = TSUDurationFormatterTokensFromString(a1, &v56, a6);
  v13 = v12;
  objc_autoreleasePoolPop(v11);
  if (!v12 || ![v12 count])
  {
LABEL_48:

    return 0;
  }

  v55 = 0.0;
  v52 = [v53 decimalSeparator];
  if (a3)
  {
    *a3 = 0;
  }

  if (v56 != 1)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v22 = [v12 count];
    v23 = [@"-" isEqual:{objc_msgSend(v12, "objectAtIndex:", 0)}];
    v24 = v23;
    v25 = 0.0;
    if (v22 <= v23)
    {
      goto LABEL_100;
    }

    v26 = 0;
    v27 = v23;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    while (1)
    {
      [objc_msgSend(objc_msgSend(v12 objectAtIndex:{v27), "first"), "doubleValue"}];
      v33 = v32;
      v34 = [v12 objectAtIndex:v27 + 1];
      v54 = 1;
      v35 = TSUDurationFormatterDurationUnitFromString(v34, &v54);
      if (a4 && !v26)
      {
        *a4 = v54;
      }

      if (v35 <= 7)
      {
        switch(v35)
        {
          case 1:
            v28 = v33;
            if (!a3)
            {
              goto LABEL_31;
            }

            break;
          case 2:
            v29 = v33;
            if (!a3)
            {
              goto LABEL_31;
            }

            break;
          case 4:
            v30 = v33;
            if (!a3)
            {
              goto LABEL_31;
            }

            break;
          default:
            goto LABEL_48;
        }

        goto LABEL_30;
      }

      if (v35 == 8)
      {
        break;
      }

      if (v35 == 16)
      {
        v25 = v33;
        if (!a3)
        {
          goto LABEL_31;
        }

LABEL_30:
        *a3 |= v35;
        goto LABEL_31;
      }

      if (v35 != 32)
      {
        goto LABEL_48;
      }

      v55 = v33 / 1000.0;
      if (a3)
      {
        goto LABEL_30;
      }

LABEL_31:
      v27 += 2;
      v26 -= 2;
      if (v27 >= v22)
      {
        goto LABEL_101;
      }
    }

    v31 = v33;
    if (!a3)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v14 = [v12 count];
  v50 = v14;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v14 - 2;
    while (1)
    {
      v19 = [v12 objectAtIndex:v16];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (([v19 isEqual:@"."] & 1) == 0)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_15;
      }

LABEL_16:
      v15 += isKindOfClass & 1;
      ++v16;
      if (--v18 == -2)
      {
        goto LABEL_47;
      }
    }

    v21 = [v19 isEqual:v52];
    if (v18 || (v21 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    v17 = 1;
    goto LABEL_16;
  }

  v17 = 0;
  v15 = 0;
LABEL_47:
  v36 = v15 - (v17 & 1);
  if (v36 > 5)
  {
    goto LABEL_48;
  }

  v38 = 5;
  if (a5 <= 7)
  {
    v39 = v50;
    if (a5 == 2)
    {
      v38 = 4;
    }

    else if (a5 == 4)
    {
      v38 = 3;
    }
  }

  else
  {
    v39 = v50;
    switch(a5)
    {
      case 8:
        v38 = 2;
        break;
      case 16:
        v38 = 1;
        break;
      case 32:
        v38 = 0;
        break;
    }
  }

  if (!a5 || v15 > v38 + (v17 & 1))
  {
    v40 = v36 - 1;
    if (v40 >= 5)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(NSString *, NSTimeInterval *, TSUDurationUnits *, TSUDurationStyle *, TSUDurationUnits, OITSULocale *)"}];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v41, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"], 668, 0, "Unexpected duration unit count!");
      +[OITSUAssertionHandler logBacktraceThrottled];
      a5 = 0;
    }

    else
    {
      a5 = dword_25D6FA5D0[v40];
    }
  }

  if (v39)
  {
    v42 = 0;
    v24 = 0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v25 = 0.0;
    v43 = a5;
    while (1)
    {
      v44 = [v12 objectAtIndex:v42];
      if ([@"-" isEqual:v44])
      {
        v24 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [objc_msgSend(v44 "first")];
          v46 = v45;
          if (v42 && (([objc_msgSend(v12 objectAtIndex:{v42 - 1), "isEqual:", @"."}] & 1) != 0 || objc_msgSend(objc_msgSend(v12, "objectAtIndex:", v42 - 1), "isEqual:", v52)))
          {
            v47 = [v44 second];
            TSUGetNumberValueAndTypeFromString([MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v52, v47], objc_msgSend(v53, "locale"), &v55, 0, 0, 0);
            if (a3)
            {
              *a3 |= 0x20u;
            }
          }

          else
          {
            if (v43 <= 3)
            {
              if (v43 == 1)
              {
                if (a3)
                {
                  *a3 |= 1u;
                }

                v43 = 2;
                v28 = v46;
                goto LABEL_97;
              }

              if (v43 == 2)
              {
                if (a3)
                {
                  *a3 |= 2u;
                }

                v43 = 4;
                v29 = v46;
                goto LABEL_97;
              }
            }

            else
            {
              switch(v43)
              {
                case 4:
                  if (a3)
                  {
                    *a3 |= 4u;
                  }

                  v43 = 8;
                  v30 = v46;
                  goto LABEL_97;
                case 8:
                  if (a3)
                  {
                    *a3 |= 8u;
                  }

                  v43 = 16;
                  v31 = v46;
                  goto LABEL_97;
                case 16:
                  v43 = 0;
                  if (a3)
                  {
                    *a3 |= 0x10u;
                  }

                  v25 = v46;
                  goto LABEL_97;
              }
            }

            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(NSString *, NSTimeInterval *, TSUDurationUnits *, TSUDurationStyle *, TSUDurationUnits, OITSULocale *)"}];
            +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v48, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"], 716, 0, "Unexpected duration unit!");
            +[OITSUAssertionHandler logBacktraceThrottled];
          }
        }
      }

LABEL_97:
      if (v39 == ++v42)
      {
        goto LABEL_101;
      }
    }
  }

  v24 = 0;
  v25 = 0.0;
LABEL_100:
  v31 = 0.0;
  v30 = 0.0;
  v29 = 0.0;
  v28 = 0.0;
LABEL_101:
  if (a2)
  {
    v49 = v25 + v29 * 86400.0 + v28 * 604800.0 + v30 * 3600.0 + v31 * 60.0 + v55;
    *a2 = v49;
    if (v24)
    {
      *a2 = -v49;
    }
  }

  return 1;
}

uint64_t durationStringsEqual(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  if ([a1 isEqualToString:a2])
  {
    return 1;
  }

  if ([v3 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v3 stringByReplacingOccurrencesOfString:@" " withString:&stru_286EE1130];
  }

  if ([v2 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = [v2 stringByReplacingOccurrencesOfString:@" " withString:&stru_286EE1130];
  }

  return [v3 isEqualToString:v2];
}

uint64_t TSUDurationFormatterDurationUnitFromString(void *a1, int *a2)
{
  v4 = [OITSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:?];
  if ((durationStringsEqual([v4 weekLongSingularString], a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "weekLongPluralString"), a1))
  {
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  if ((durationStringsEqual([v4 weekMediumSingularString], a1) & 1) != 0 || (durationStringsEqual(objc_msgSend(v4, "weekMediumPluralString"), a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "weekShortString"), a1))
  {
    v6 = 1;
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if ((durationStringsEqual([v4 dayLongSingularString], a1) & 1) == 0 && !durationStringsEqual(objc_msgSend(v4, "dayLongPluralString"), a1))
  {
    if ((durationStringsEqual([v4 dayMediumSingularString], a1) & 1) != 0 || (durationStringsEqual(objc_msgSend(v4, "dayMediumPluralString"), a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "dayShortString"), a1))
    {
      result = 2;
      if (!a2)
      {
        return result;
      }

      goto LABEL_19;
    }

    if ((durationStringsEqual([v4 hourLongSingularString], a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "hourLongPluralString"), a1))
    {
      result = 4;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if ((durationStringsEqual([v4 hourMediumSingularString], a1) & 1) != 0 || (durationStringsEqual(objc_msgSend(v4, "hourMediumPluralString"), a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "hourShortString"), a1))
    {
      result = 4;
      if (!a2)
      {
        return result;
      }

      goto LABEL_19;
    }

    if ((durationStringsEqual([v4 minuteLongSingularString], a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "minuteLongPluralString"), a1))
    {
      result = 8;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if ((durationStringsEqual([v4 minuteMediumSingularString], a1) & 1) != 0 || (durationStringsEqual(objc_msgSend(v4, "minuteMediumPluralString"), a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "minuteShortString"), a1))
    {
      result = 8;
      if (!a2)
      {
        return result;
      }

      goto LABEL_19;
    }

    if ((durationStringsEqual([v4 secondLongSingularString], a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "secondLongPluralString"), a1))
    {
      result = 16;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if ((durationStringsEqual([v4 secondMediumSingularString], a1) & 1) != 0 || (durationStringsEqual(objc_msgSend(v4, "secondMediumPluralString"), a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "secondShortString"), a1))
    {
      result = 16;
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if ((durationStringsEqual([v4 millisecondLongSingularString], a1) & 1) != 0 || durationStringsEqual(objc_msgSend(v4, "millisecondLongPluralString"), a1))
      {
        result = 32;
        if (!a2)
        {
          return result;
        }

LABEL_4:
        v6 = 2;
LABEL_9:
        *a2 = v6;
        return result;
      }

      result = durationStringsEqual([v4 millisecondShortString], a1);
      if (!result)
      {
        return result;
      }

      result = 32;
      if (!a2)
      {
        return result;
      }
    }

LABEL_19:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = 2;
  result = 2;
  if (a2)
  {
    goto LABEL_9;
  }

  return result;
}

__CFString *TSUDurationFormatterUnitString(int a1, int a2, double a3)
{
  if (!a2)
  {
    return &stru_286EE1130;
  }

  v6 = [OITSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:?];
  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 minuteLongSingularString];
          }

          else
          {

            return [v6 minuteLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_286EE1130;
          }

          return [v6 minuteShortString];
        }

      case 16:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 secondLongSingularString];
          }

          else
          {

            return [v6 secondLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_286EE1130;
          }

          return [v6 secondShortString];
        }

      case 32:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 millisecondLongSingularString];
          }

          else
          {

            return [v6 millisecondLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_286EE1130;
          }

          return [v6 millisecondShortString];
        }

      default:
        return &stru_286EE1130;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 weekLongSingularString];
          }

          else
          {

            return [v6 weekLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_286EE1130;
          }

          return [v6 weekShortString];
        }

      case 2:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 dayLongSingularString];
          }

          else
          {

            return [v6 dayLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_286EE1130;
          }

          return [v6 dayShortString];
        }

      case 4:
        if (a2 != 2)
        {
          if (a2 == 1)
          {

            return [v6 hourShortString];
          }

          return &stru_286EE1130;
        }

        if (a3 == 1.0)
        {

          return [v6 hourLongSingularString];
        }

        else
        {

          return [v6 hourLongPluralString];
        }

      default:
        return &stru_286EE1130;
    }
  }
}

uint64_t TSUDurationFormatterTokensFromString(void *a1, _BYTE *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = [OITSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:?];
  v6 = [a1 stringByTrimmingCharactersInSet:{objc_msgSend(v5, "whitespaceAndNewlineCharacterSet")}];
  v7 = [MEMORY[0x277CCAC80] scannerWithString:v6];
  [v7 setCharactersToBeSkipped:{objc_msgSend(v5, "emptyCharacterSet")}];
  v58 = 0;
  v42 = a3;
  v41 = [a3 decimalSeparator];
  v8 = 0;
  if ([v7 isAtEnd])
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_3;
  }

  v44 = 0;
  v10 = 0;
  v40 = 0;
  v12 = 0;
  v14 = -1;
  v43 = v6;
  do
  {
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB18] array];
    }

    v15 = [v6 characterAtIndex:{objc_msgSend(v7, "scanLocation")}];
    if (![objc_msgSend(v5 "alphabeticCharacterSet")])
    {
      if (v10)
      {
        if ([objc_msgSend(v5 "decimalDigitCharacterSet")])
        {
          if (!v14)
          {
            return 0;
          }

          v29 = [v5 decimalDigitCharacterSet];
LABEL_42:
          [v7 scanCharactersFromSet:v29 intoString:&v58];
          v45 = 0.0;
          if (!TSUGetNumberValueAndTypeFromString(v58, [v42 locale], &v45, 0, 0, 0))
          {
            return 0;
          }

          v44 |= trunc(v45) != v45;
          v30 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v8 addObject:{+[OITSUPair pairWithFirst:second:](OITSUPair, "pairWithFirst:second:", v30, v58)}];
          v14 = 0;
          goto LABEL_61;
        }
      }

      else if ([objc_msgSend(v5 "decimalDigitAndSeperatorsCharacterSet")])
      {
        if (!v14)
        {
          return 0;
        }

        v29 = [v5 decimalDigitAndSeperatorsCharacterSet];
        goto LABEL_42;
      }

      if (![objc_msgSend(v5 "minusSignCharacterSet")] || objc_msgSend(v8, "count"))
      {
        return 0;
      }

      [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"minusSignCharacterSet"), 0}];
      [v8 addObject:@"-"];
      v40 = 1;
      v14 = 3;
      goto LABEL_61;
    }

    if ((v10 | v12))
    {
      return 0;
    }

    v16 = [v8 count];
    result = 0;
    if (v14 == 3 || !v16)
    {
      return result;
    }

    [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"alphabeticCharacterSet"), &v58}];
    if (v14 == 1)
    {
      if ([objc_msgSend(v5 "multiWordDurationUnitStrings")] && (v17 = objc_msgSend(v8, "lastObject"), v18 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %@", v17, v58), v54 = 0u, v55 = 0u, v56 = 0u, v57 = 0u, v19 = objc_msgSend(v5, "multiWordDurationUnitStrings"), (v20 = objc_msgSend(v19, "countByEnumeratingWithState:objects:count:", &v54, v61, 16)) != 0))
      {
        v21 = v20;
        v22 = *v55;
LABEL_19:
        v23 = 0;
        while (1)
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v19);
          }

          if ([*(*(&v54 + 1) + 8 * v23) hasPrefix:v18])
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [v19 countByEnumeratingWithState:&v54 objects:v61 count:16];
            if (v21)
            {
              goto LABEL_19;
            }

            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        result = [objc_msgSend(v5 "fullStopDurationUnitStrings")];
        if (!result)
        {
          return result;
        }

        v24 = [v8 lastObject];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v24, v58];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v25 = [v5 fullStopDurationUnitStrings];
        result = [v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (!result)
        {
          return result;
        }

        v26 = result;
        v27 = *v51;
LABEL_28:
        v28 = 0;
        while (1)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v25);
          }

          if ([*(*(&v50 + 1) + 8 * v28) hasPrefix:v18])
          {
            break;
          }

          if (v26 == ++v28)
          {
            result = [v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
            v26 = result;
            if (result)
            {
              goto LABEL_28;
            }

            return result;
          }
        }
      }

      [v8 removeLastObject];
      v58 = v18;
    }

    if ([objc_msgSend(v5 "fullStopDurationUnitStrings")])
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.", v58];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v32 = [v5 fullStopDurationUnitStrings];
      v33 = [v32 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        while (2)
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v32);
            }

            if ([*(*(&v46 + 1) + 8 * i) hasPrefix:v31])
            {
              if ([v7 scanString:@"." intoString:0])
              {
                v58 = v31;
              }

              goto LABEL_60;
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v46 objects:v59 count:16];
          if (v34)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_60:
    [v8 addObject:v58];
    v14 = 1;
    v6 = v43;
LABEL_61:
    [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"whitespaceCharacterSet"), 0}];
    v37 = [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"separatorPunctuationCharacterSet"), &v58}];
    v38 = v37;
    if (v37)
    {
      if (([v8 count] == 0) | v12 & 1)
      {
        return 0;
      }

      [v8 addObject:v58];
      if ([v58 isEqualToString:@"."])
      {
        v12 = 1;
      }

      else
      {
        v12 = [v58 isEqualToString:v41];
        v10 |= v12 ^ 1;
      }

      v14 = 2;
    }

    [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"whitespaceCharacterSet"), 0}];
  }

  while (![v7 isAtEnd]);
  v9 = v44;
  v11 = v40;
  if (v38)
  {
    return 0;
  }

LABEL_3:
  if (a2)
  {
    *a2 = (v12 | v10) & 1;
  }

  if (v10 & v9)
  {
    return 0;
  }

  if ((v10 | v12))
  {
    if (!(v10 & 1 | ((v12 & 1) == 0)))
    {
      return 0;
    }
  }

  else if ((v11 & 1) != ([v8 count] & 1))
  {
    return 0;
  }

  if ((v11 & 1) != 0 && [v8 count] < 2)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(void *a1, int a2, void *a3, double a4)
{
  v4 = a3;
  v83 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, OITSULocale *)"}];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"], 963, 0, "invalid nil value for '%{public}s'", "locale");
    +[OITSUAssertionHandler logBacktraceThrottled];
    v4 = +[OITSULocale currentLocale];
  }

  v8 = [a1 length];
  v9 = [MEMORY[0x277CCAB68] stringWithCapacity:v8];
  v10 = [OITSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:v4];
  if (a4 < 0.0)
  {
    [v9 appendString:@"-"];
    a4 = fabs(a4);
  }

  v75 = v4;
  v76 = v9;
  if (!v8)
  {
    v35 = 0;
    v81 = 0;
    v13 = 0;
    v30 = 1;
    v36 = 2.22507386e-308;
    v33 = 2.22507386e-308;
    v32 = 2.22507386e-308;
    v34 = 2.22507386e-308;
    goto LABEL_59;
  }

  v11 = 0;
  v12 = 0;
  v81 = 0;
  v13 = 0;
  v77 = v10;
  do
  {
    v14 = [a1 characterAtIndex:v12];
    v15 = v14;
    v16 = v12 + 1;
    if (v12 + 1 >= v8)
    {
      if (v14 == 39)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v17 = [a1 characterAtIndex:v12 + 1];
      if (v15 == 39)
      {
        if (v17 == 39)
        {
          [v9 appendString:@"'"];
          v16 = v12 + 2;
          goto LABEL_53;
        }

        while (1)
        {
          v18 = [a1 characterAtIndex:v16];
          v19 = v18;
          if (v16 + 1 >= v8)
          {
            break;
          }

          v20 = [a1 characterAtIndex:v16 + 1];
          if (v19 != 39)
          {
            goto LABEL_16;
          }

          if (v20 != 39)
          {
            goto LABEL_33;
          }

          [v9 appendString:@"'"];
          v16 += 2;
LABEL_17:
          if (v16 >= v8)
          {
            goto LABEL_53;
          }
        }

        if (v18 == 39)
        {
LABEL_33:
          ++v16;
          goto LABEL_53;
        }

LABEL_16:
        [v9 appendFormat:@"%C", v19];
        ++v16;
        goto LABEL_17;
      }
    }

    if (![objc_msgSend(v10 "specialDurationFormatCharacters")])
    {
      [v9 appendFormat:@"%C", v15];
      goto LABEL_53;
    }

    if (v13 + 1 >= 7)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, OITSULocale *)"}];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"];
      v23 = v21;
      v10 = v77;
      [OITSUAssertionHandler handleFailureInFunction:v23 file:v22 lineNumber:1013 isFatal:0 description:"Too many placeholders in duration format string!"];
      v9 = v76;
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v24 = [v9 length];
    if (v16 >= v8)
    {
LABEL_37:
      v27 = 0;
      goto LABEL_40;
    }

    v25 = v8 - v12;
    v26 = 1;
    while ([a1 characterAtIndex:v16] == v15)
    {
      ++v26;
      if (v8 == ++v16)
      {
        v16 = v8;
        v26 = v25;
        break;
      }
    }

    v10 = v77;
    if (v26 <= 2)
    {
      if (v26 == 1)
      {
        goto LABEL_37;
      }

      if (v26 != 2)
      {
        goto LABEL_38;
      }

      v27 = 1;
    }

    else
    {
      if (v26 == 3)
      {
        v27 = 2;
        goto LABEL_40;
      }

      if (v26 != 5)
      {
LABEL_38:
        v27 = 3;
        goto LABEL_40;
      }

      v27 = 2;
      v81 = 1;
    }

LABEL_40:
    v28 = 0;
    if (v15 > 108)
    {
      if (v15 == 109)
      {
        v28 = 8;
      }

      else if (v15 == 115)
      {
        v28 = 16;
      }

      else
      {
        v28 = v15 == 119;
      }
    }

    else
    {
      switch(v15)
      {
        case 'd':
          v28 = 2;
          break;
        case 'f':
          v28 = 32;
          break;
        case 'h':
          v28 = 4;
          break;
      }
    }

    v29 = &v82[v13];
    *v29 = v24;
    v11 |= v28;
    *(v29 + 2) = v28;
    *(v29 + 3) = v27;
    ++v13;
LABEL_53:
    v12 = v16;
  }

  while (v16 < v8);
  v30 = (v11 & 1) == 0;
  if (v11)
  {
    v32 = floor(a4 / 604800.0);
    a4 = a4 + v32 * -604800.0;
    v31 = 1;
    if ((v11 & 2) == 0)
    {
      goto LABEL_63;
    }

LABEL_56:
    v33 = floor(a4 / 86400.0);
    a4 = a4 + v33 * -86400.0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_57;
    }

LABEL_64:
    v34 = 2.22507386e-308;
  }

  else
  {
    v31 = 0;
    v32 = 2.22507386e-308;
    if ((v11 & 2) != 0)
    {
      goto LABEL_56;
    }

LABEL_63:
    v33 = 2.22507386e-308;
    if ((v11 & 4) == 0)
    {
      goto LABEL_64;
    }

LABEL_57:
    v34 = floor(a4 / 3600.0);
    a4 = a4 + v34 * -3600.0;
  }

  v38 = (v11 & 8) == 0;
  if ((v11 & 8) != 0)
  {
    v36 = floor(a4 / 60.0);
    a4 = a4 + v36 * -60.0;
  }

  else
  {
    v36 = 2.22507386e-308;
  }

  if ((v11 & 0x10) != 0)
  {
    v40 = trunc(a4);
    a4 = a4 - v40;
    LOBYTE(v8) = v11;
    v41 = (v11 & 0x20) == 0;
    if ((v11 & 0x20) != 0)
    {
      v39 = a4 * 1000.0;
    }

    else
    {
      v39 = 2.22507386e-308;
    }

    v37 = 16;
    if (v41)
    {
      v35 = 16;
    }

    else
    {
      v35 = 32;
    }

    goto LABEL_83;
  }

  if ((v11 & 0x20) != 0)
  {
    LOBYTE(v8) = v11;
    v37 = v11 & 0x20;
    v39 = a4 * 1000.0;
    v35 = 32;
    v40 = 2.22507386e-308;
    goto LABEL_83;
  }

  if ((v11 & 8) != 0)
  {
    LOBYTE(v8) = v11;
    v38 = 0;
    v37 = 0;
    v35 = 8;
    goto LABEL_61;
  }

  if ((v11 & 2) != 0)
  {
    v35 = 2;
  }

  else
  {
    v35 = v31;
  }

  LOBYTE(v8) = v11;
  if ((v11 & 4) == 0)
  {
LABEL_59:
    v37 = 0;
    goto LABEL_60;
  }

  v37 = 0;
  v35 = 4;
LABEL_60:
  v38 = 1;
LABEL_61:
  v39 = 2.22507386e-308;
  v40 = 2.22507386e-308;
LABEL_83:
  if (!a2)
  {
    v42 = v13;
    if (v35 <= 7)
    {
      switch(v35)
      {
        case 1:
          v32 = v32 + a4 / 604800.0;
          goto LABEL_121;
        case 2:
          v33 = v33 + a4 / 86400.0;
          goto LABEL_121;
        case 4:
          v43 = a4 / 3600.0;
          goto LABEL_95;
      }

      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, OITSULocale *)"}];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"];
      v46 = v48;
      v47 = 1183;
LABEL_113:
      [OITSUAssertionHandler handleFailureInFunction:v46 file:v45 lineNumber:v47 isFatal:0 description:"Unknown minimum unit!"];
      v9 = v76;
      +[OITSUAssertionHandler logBacktraceThrottled];
      goto LABEL_121;
    }

    if (v35 == 8)
    {
      v36 = v36 + a4 / 60.0;
      goto LABEL_121;
    }

    if (v35 == 16)
    {
      v40 = v40 + a4;
      goto LABEL_121;
    }

    goto LABEL_101;
  }

  if (v35 > 7)
  {
    if (v35 == 8)
    {
      v42 = v13;
      if (round(a4 / 60.0) >= 1.0)
      {
        v36 = v36 + 1.0;
      }

      goto LABEL_121;
    }

    if (v35 == 16)
    {
      v42 = v13;
      if (round(a4) >= 1.0)
      {
        v40 = v40 + 1.0;
      }

      goto LABEL_121;
    }

    v42 = v13;
LABEL_101:
    v39 = round(v39);
    goto LABEL_121;
  }

  switch(v35)
  {
    case 1:
      v42 = v13;
      if (round(a4 / 604800.0) >= 1.0)
      {
        v32 = v32 + 1.0;
      }

      break;
    case 2:
      v42 = v13;
      if (round(a4 / 86400.0) >= 1.0)
      {
        v33 = v33 + 1.0;
      }

      break;
    case 4:
      v42 = v13;
      v43 = 1.0;
      if (round(a4 / 3600.0) < 1.0)
      {
        break;
      }

LABEL_95:
      v34 = v34 + v43;
      break;
    default:
      v42 = v13;
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, OITSULocale *)"}];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"];
      v46 = v44;
      v47 = 1159;
      goto LABEL_113;
  }

LABEL_121:
  if (v30)
  {
    v49 = 2;
  }

  else
  {
    v49 = 1;
  }

  if ((v8 & 3) == 0)
  {
    v49 = 4;
  }

  if (v38)
  {
    v50 = v37;
  }

  else
  {
    v50 = 8;
  }

  if ((v8 & 7) != 0)
  {
    v51 = v49;
  }

  else
  {
    v51 = v50;
  }

  while (v51 != v35)
  {
    if (v35 <= 7)
    {
      switch(v35)
      {
        case 2:
          if (v33 < 7.0)
          {
            goto LABEL_151;
          }

          v32 = v32 + 1.0;
          v35 = 1;
          v33 = 0.0;
          break;
        case 4:
          if (v34 < 24.0)
          {
            goto LABEL_151;
          }

          v33 = v33 + 1.0;
          v35 = 2;
          v34 = 0.0;
          break;
        case 1:
          goto LABEL_151;
        default:
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, OITSULocale *)"}];
          +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v52, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"], 1247, 0, "Unknown unit!");
          v9 = v76;
          +[OITSUAssertionHandler logBacktraceThrottled];
          break;
      }
    }

    else if (v35 == 8)
    {
      if (v36 < 60.0)
      {
        break;
      }

      v34 = v34 + 1.0;
      v35 = 4;
      v36 = 0.0;
    }

    else if (v35 == 16)
    {
      if (v40 < 60.0)
      {
        break;
      }

      v36 = v36 + 1.0;
      v35 = 8;
      v40 = 0.0;
    }

    else
    {
      if (v39 < 1000.0)
      {
        break;
      }

      v40 = v40 + 1.0;
      v35 = 16;
      v39 = 0.0;
    }
  }

LABEL_151:
  v53 = v75;
  if (v42)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = kTSUNumberFormatterDecimalPlacesAsManyAsNecessary;
    if (a2)
    {
      v57 = 0;
    }

    v79 = v57;
    v58 = v42;
    v78 = v42;
    do
    {
      v59 = &v82[v54];
      v60 = *v59;
      v62 = *(v59 + 2);
      v61 = *(v59 + 3);
      if (v62 > 7)
      {
        switch(v62)
        {
          case 8:
            v63 = 0;
            v64 = v36;
            break;
          case 16:
            v63 = 0;
            v64 = v40;
            break;
          case 32:
            v63 = 1;
            v64 = v39;
            break;
          default:
            goto LABEL_166;
        }
      }

      else
      {
        switch(v62)
        {
          case 1:
            v63 = 0;
            v64 = v32;
            break;
          case 2:
            v63 = 0;
            v64 = v33;
            break;
          case 4:
            v63 = 0;
            v64 = v34;
            break;
          default:
LABEL_166:
            v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, OITSULocale *)"}];
            v53 = v75;
            v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"];
            v67 = v65;
            v58 = v78;
            [OITSUAssertionHandler handleFailureInFunction:v67 file:v66 lineNumber:1284 isFatal:0 description:"Unknown duration unit!"];
            v9 = v76;
            +[OITSUAssertionHandler logBacktraceThrottled];
            v63 = 0;
            v64 = 0.0;
            break;
        }
      }

      if ((v81 & (v64 == 0.0)) != 1 || !(v55 & 1 | (v54 + 1 != v58)))
      {
        v69 = 0;
        if (v61 > 1)
        {
          if (v61 == 2)
          {
            LOBYTE(v74) = 0;
            v58 = v78;
            v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", objc_msgSend(v53, "numberFormatterStringFromDouble:withFormat:useDecimalPlaces:minDecimalPlaces:decimalPlaces:showThousandsSeparator:currencyCode:suppressMinusSign:", @"0", a2 ^ 1u, 0, v79, 0, 0, v64, v74), TSUDurationFormatterUnitString(v62, 1, v64)];
          }

          else
          {
            if (v61 != 3)
            {
              goto LABEL_187;
            }

            LOBYTE(v74) = 0;
            v58 = v78;
            v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", objc_msgSend(v53, "numberFormatterStringFromDouble:withFormat:useDecimalPlaces:minDecimalPlaces:decimalPlaces:showThousandsSeparator:currencyCode:suppressMinusSign:", @"0", a2 ^ 1u, 0, v79, 0, 0, v64, v74), TSUDurationFormatterUnitString(v62, 2, v64)];
          }
        }

        else
        {
          if (v61)
          {
            if (v61 == 1)
            {
              if (v63)
              {
                v70 = @"000";
              }

              else
              {
                v70 = @"00";
              }

              goto LABEL_184;
            }

LABEL_187:
            [v9 insertString:v69 atIndex:v60 + v56];
            v68 = [v69 length];
            ++v54;
            v55 = 1;
            goto LABEL_188;
          }

          if (v63)
          {
            v70 = @"000";
          }

          else
          {
            v70 = @"0";
          }

LABEL_184:
          LOBYTE(v74) = 0;
          v71 = [v53 numberFormatterStringFromDouble:v70 withFormat:a2 ^ 1u useDecimalPlaces:0 minDecimalPlaces:v79 decimalPlaces:0 showThousandsSeparator:0 currencyCode:v64 suppressMinusSign:v74];
        }

        v69 = v71;
        goto LABEL_187;
      }

      v68 = -1;
      ++v54;
LABEL_188:
      v56 += v68;
    }

    while (v54 != v58);
  }

  if ((v81 & 1) == 0)
  {
    return v9;
  }

  v72 = [MEMORY[0x277CCA900] whitespaceCharacterSet];

  return [v9 stringByTrimmingCharactersInSet:v72];
}

uint64_t TSURegisterLocaleChangeObserver(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [v2 addObserverForName:*MEMORY[0x277CBEEB0] object:0 queue:0 usingBlock:a1];
  v4 = [v2 addObserverForName:*MEMORY[0x277CBE620] object:0 queue:0 usingBlock:a1];
  return [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v4, 0}];
}

uint64_t TSURemoveLocaleChangeObserver(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 removeObserver:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

id TSULocaleNSLocaleWithHarmonizedNumberingSystem(void *a1)
{
  v1 = a1;
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 localeIdentifier];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&unk_286F6DDB8 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_286F6DDB8);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v2 hasPrefix:v7] && objc_msgSend(v2, "rangeOfString:", @"numbers=") == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v2 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v8 = @"@";
          }

          else
          {
            v8 = @":";
          }

          v1 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{objc_msgSend(v2, "stringByAppendingFormat:", @"%@numbers=%@", v8, objc_msgSend(&unk_286F6DDB8, "objectForKeyedSubscript:", v7))}];
          return v1;
        }
      }

      v4 = [&unk_286F6DDB8 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v1;
}

id TSUNumberFormatStringFromDouble(int a1, unsigned __int16 a2, unsigned __int16 a3, char a4, __CFString *a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, void *a11, uint64_t a12, unsigned __int8 a13, char a14, unsigned __int16 a15, unsigned __int16 a16, unsigned __int8 a17, char a18, __int16 a19, unsigned __int8 a20, unsigned __int16 a21, unsigned __int8 a22, unsigned int a23, void *a24)
{
  v28 = a9;
  if (__fpclassifyd(a9) == 3)
  {
    v28 = 0.0;
  }

  if ((a7 & 1) == 0)
  {
    a3 = TSUNumberOfDecimalPlacesInValue(v28);
    a2 = a3;
  }

  v29 = v28 * a10;
  if (a14)
  {
    v30 = @"#,##0";
    v31 = a24;
    v32 = v29;
    v33 = 1;
    v34 = 2;
    v35 = 2;
    v36 = 1;
LABEL_7:
    v37 = 0;
LABEL_8:

    return [v31 numberFormatterStringFromDouble:v30 withFormat:v33 useDecimalPlaces:v34 minDecimalPlaces:v35 decimalPlaces:v36 showThousandsSeparator:v37 currencyCode:v32 suppressMinusSign:?];
  }

  v33 = a15 ^ 1u;
  if (((a15 ^ 1) & 1) == 0 && (a15 & 0x100) == 0)
  {

    return TSUNumberFormatterStringByUnescapingFormatString(a5);
  }

  v39 = a4 | a13;
  if (BYTE1(a12) | a12 || (a16 & HIBYTE(a16) & 1) != 0 || a8)
  {
    if (a6)
    {
      v43 = a5;
      v44 = -[__CFString rangeOfString:](a5, "rangeOfString:", [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 164]);
      v46 = BYTE3(a12);
      v45 = HIWORD(a12);
      v47 = a17;
      if (v44 && (v48 = v44, v44 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v49 = -[__CFString rangeOfCharacterFromSet:options:](a5, "rangeOfCharacterFromSet:options:", [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0#"], 4);
        v33 = a15 ^ 1u;
        v39 = a4 | a13;
        if (v48 > v49)
        {
          v50 = [+[OITSUNumberFormatter currencySymbolForCurrencyCode:](OITSUNumberFormatter currencySymbolForCurrencyCode:{a6, a15 ^ 1u), "length"}];
          v39 = a4 | a13;
          v33 = a15 ^ 1u;
          v45 = HIWORD(a12) + v50 - 1;
        }
      }

      else
      {
        v33 = a15 ^ 1u;
        v39 = a4 | a13;
      }
    }

    else
    {
      v46 = BYTE3(a12);
      v45 = HIWORD(a12);
      v47 = a17;
      v43 = a5;
    }

    v51 = trunc(v29);
    if ((a16 & HIBYTE(a16)) != 0)
    {
      v52 = v51;
    }

    else
    {
      v52 = v29;
    }

    LOBYTE(v99) = v39;
    v53 = [a24 numberFormatterStringFromDouble:v43 withFormat:v33 useDecimalPlaces:a3 minDecimalPlaces:a2 decimalPlaces:v47 showThousandsSeparator:a6 currencyCode:v52 suppressMinusSign:v99];
    if (BYTE1(a12) | a12)
    {
      v54 = fabs(v52);
      if (v54 >= 1.0)
      {
        v55 = log10(v54) + 1;
      }

      else
      {
        v55 = 0;
      }

      if (v55 <= BYTE2(a12))
      {
        v56 = BYTE2(a12);
      }

      else
      {
        v56 = v55;
      }

      if ((a12 - v56) >= 1)
      {
        v57 = [v53 mutableCopy];
        v58 = TSUNumberOfDecimalPlacesInValue(v29);
        v59 = [v53 length];
        if (BYTE5(a12) == BYTE4(a12) && v58 == 0)
        {
          v61 = v59 + ~(v56 + v45) + 1;
        }

        else
        {
          v61 = v59 + ~(v56 + v45);
        }

        v62 = v58 - (BYTE5(a12) - BYTE4(a12));
        if (v62 <= 0)
        {
          v63 = BYTE4(a12);
        }

        else
        {
          v63 = BYTE4(a12) - v62;
        }

        v64 = v61 + v63;
        if (v58 < BYTE5(a12))
        {
          v65 = v64;
        }

        else
        {
          v65 = v59 + ~(v56 + v45);
        }

        if (v47 && (v66 = [a24 groupingSize]) != 0)
        {
          v67 = vcvtpd_s64_f64(v56 / v66);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 - 1;
        }

        else
        {
          v68 = 0;
        }

        v69 = v65 - v68;
        if (v69 >= 0)
        {
          v70 = 0;
          do
          {
            if (v69 >= [v57 length])
            {
              break;
            }

            v71 = [v57 characterAtIndex:v69];
            if (v71 == 48)
            {
              ++v70;
            }

            if ((v71 - 58) <= 0xFFFFFFF6)
            {
              [v57 replaceCharactersInRange:v69 withString:{1, @" "}];
            }

            if (a12 - v56 <= v70)
            {
              break;
            }

            v72 = v69-- <= 0;
          }

          while (!v72);
        }

        v73 = BYTE1(a12) - v46;
        if (BYTE1(a12) <= v46)
        {
          goto LABEL_88;
        }

        v74 = v45;
        if (v57)
        {
LABEL_83:
          v75 = [v53 length];
          v76 = v46 - v74 + v75 + 1;
          if (v76 + v73 <= [v53 length])
          {
            v77 = v75 + v73 + v46 - v74;
            do
            {
              if ([v57 characterAtIndex:v77] != 48)
              {
                break;
              }

              [v57 replaceCharactersInRange:v77 withString:{1, @" "}];
              v72 = v77-- <= v76;
            }

            while (!v72);
          }

LABEL_88:
          v40 = v53;
          if (v57)
          {
            v40 = v57;
          }

          goto LABEL_90;
        }

LABEL_82:
        v57 = [v53 mutableCopy];
        goto LABEL_83;
      }

      v73 = BYTE1(a12) - v46;
      v40 = v53;
      if (v73 >= 1)
      {
        v74 = v45;
        goto LABEL_82;
      }
    }

    else
    {
      v40 = 0;
    }

LABEL_90:
    if (a8)
    {
      v107 = v53;
      if (v40)
      {
        v78 = v40;
      }

      else
      {
        v78 = v53;
      }

      v40 = [MEMORY[0x277CCAB68] string];
      v105 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v79 = [v78 length];
      v80 = [a11 firstIndex];
      if (v79 - 1 < 0)
      {
        v84 = 0;
      }

      else
      {
        v81 = v80;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = v45;
        do
        {
          if (v81 == v83)
          {
            [v40 insertString:objc_msgSend(a8 atIndex:{"objectAtIndex:", v84), 0}];
            v81 = [a11 indexGreaterThanIndex:v81];
            ++v84;
          }

          v86 = [v78 characterAtIndex:--v79];
          v87 = [v107 characterAtIndex:v79];
          [v40 insertString:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"stringWithFormat:", @"%C", v86), 0}];
          if (v82 >= v85)
          {
            v83 += [v105 characterIsMember:v87];
          }

          ++v82;
        }

        while (v79 > 0);
      }

      if (v84 < [a8 count] && objc_msgSend(a8, "count") > v84)
      {
        v88 = v84;
        do
        {
          [v40 insertString:objc_msgSend(a8 atIndex:{"objectAtIndex:", v88++), 0}];
        }

        while (v88 < [a8 count]);
      }

      v53 = v107;
    }

    if ((a16 & HIBYTE(a16)) == 0)
    {
      return v40;
    }

    if (v40)
    {
      v89 = v40;
    }

    else
    {
      v89 = v53;
    }

    v40 = [v89 mutableCopy];
    v90 = fabs(v29);
    v41 = TSUNumberFormatFractionStringFromDouble(a23, a24, v90 - floor(v90));
    v42 = MEMORY[0x277CCACA8];
    goto LABEL_113;
  }

  if (HIBYTE(a16) && (a16 & 1) == 0)
  {
    v40 = [TSUNumberFormatterStringByUnescapingFormatString(a5) mutableCopy];
    if (a6)
    {
      [v40 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{164), +[OITSUNumberFormatter currencySymbolForCurrencyCode:](OITSUNumberFormatter, "currencySymbolForCurrencyCode:", a6), 0, 0, objc_msgSend(v40, "length")}];
    }

    v41 = TSUNumberFormatFractionStringFromDouble(a23, a24, v29);
    v42 = MEMORY[0x277CCACA8];
LABEL_113:
    [v40 replaceOccurrencesOfString:objc_msgSend(v42 withString:"stringWithFormat:" options:@"%C" range:{TSUCustomNumberFormatFractionReplacementCharacter), v41, 0, 0, objc_msgSend(v40, "length")}];
    return v40;
  }

  if (a1 == 1)
  {
    if (a18)
    {
      v92 = [OITSUNumberFormatter defaultFormatStringForValueType:0 negativeStyle:2];
      BYTE6(v101) = a22;
      WORD2(v101) = a21;
      BYTE2(v101) = a20;
      LOWORD(v101) = a19;
      HIBYTE(v100) = 1;
      BYTE6(v100) = a17;
      *(&v100 + 2) = __PAIR32__(a16, a15);
      LOWORD(v100) = a13;
      v93 = TSUNumberFormatStringFromDouble(0, a2, a3, 0, v92, a6, a7, 0, v29, a10, a11, a12, v100, v101, a23, a24);

      v94 = [OITSUNumberFormatter currencySymbolForCurrencyCode:a6];
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@\t%@", v94, v93];
    }

    goto LABEL_128;
  }

  if (a1 != 5)
  {
    if (a1 == 4)
    {

      return TSUNumberFormatFractionStringFromDouble(a23, a24, v29);
    }

    if (!a1)
    {
      if (a19)
      {
        if ((a15 & 1) == 0)
        {
          v95 = fabs(v29);
          if (v95 > 1.0e12 || v95 < 0.0000001 && (v96 = __fpclassifyd(v29), v33 = a15 ^ 1u, v96 != 3))
          {
            v30 = @"0E0";
            v31 = a24;
            v32 = v29;
            v33 = 1;
            v34 = 0;
            v35 = 5;
            v36 = 0;
            goto LABEL_7;
          }
        }
      }
    }

LABEL_128:
    if (HIBYTE(a19) && (a15 & 1) == 0 && (v97 = v33, v98 = __fpclassifyd(v29), v33 = v97, v98 == 3))
    {
      v31 = a24;
      v32 = v29;
      v30 = a5;
      v33 = 1;
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v31 = a24;
      v34 = a3;
      v35 = a2;
      v32 = v29;
      v30 = a5;
    }

    v36 = a17;
    v37 = a6;
    goto LABEL_8;
  }

  v40 = TSUNumberFormatBaseStringFromDouble(a20, a21, a22, v29);
  if (v40)
  {
    return v40;
  }

  HIDWORD(v99) = -3;
  LOBYTE(v99) = 1;
  v91 = +[OITSUNumberFormat numberFormatWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:](OITSUNumberFormat, "numberFormatWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:", 0, 0, 0, +[OITSUNumberFormatter currentLocaleCurrencyCode], 0, 0, v99);
  [(OITSUNumberFormat *)v91 setUseScientificFormattingAutomatically:1];

  return [(OITSUNumberFormat *)v91 stringFromDouble:a24 locale:v29];
}

uint64_t TSUNumberFormatFractionStringFromDouble(unsigned int a1, void *a2, double a3)
{
  if (!TSUNumberFormatFractionStringFromDouble_sFractionFormatter)
  {
    v6 = objc_opt_class();
    objc_sync_enter(v6);
    if (!TSUNumberFormatFractionStringFromDouble_sFractionFormatter)
    {
      TSUNumberFormatFractionStringFromDouble_sFractionFormatter = objc_opt_new();
      [TSUNumberFormatFractionStringFromDouble_sFractionFormatter setMaximumFractionDigits:0];
      v7 = [a2 locale];
      [TSUNumberFormatFractionStringFromDouble_sFractionFormatter setLocale:v7];
    }

    objc_sync_exit(v6);
  }

  v8 = fabs(a3);
  if (a3 >= 0.0)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 0xFFFFFFFC)
  {
    v10 = a1;
    v11 = a1;
  }

  else
  {
    v10 = *(&unk_25D6FA5F8 + a1 + 3);
    v11 = 2;
  }

  v12 = 0;
  v13 = 0;
  v14 = floor(v9);
  v15 = v9 - v14;
  v16 = v10 + 1;
  v17 = 1.79769313e308;
  do
  {
    v18 = v15 * v11;
    v19 = vabdd_f64(v15, round(v18) / v11);
    v20 = llround(v18);
    if (v19 < v17)
    {
      v13 = v20;
      v12 = v11;
      v17 = v19;
    }

    ++v11;
  }

  while (v16 != v11);
  if (a1 >= 0xFFFFFFFD)
  {
    v21 = v12;
    if (v13)
    {
      v22 = v13;
      v23 = v12;
      do
      {
        v21 = v22;
        v22 = v23 % v22;
        v23 = v21;
      }

      while (v22);
    }

    if (v21 >= 2)
    {
      v13 /= v21;
      v12 /= v21;
    }
  }

  if (v13 == v12)
  {
    v24 = 0;
  }

  else
  {
    v24 = v13;
  }

  if (v13 == v12)
  {
    v25 = v14 + 1.0;
  }

  else
  {
    v25 = v14;
  }

  v26 = TSUNumberFormatFractionStringFromDouble_sFractionFormatter;
  objc_sync_enter(TSUNumberFormatFractionStringFromDouble_sFractionFormatter);
  [TSUNumberFormatFractionStringFromDouble_sFractionFormatter setLocale:{TSULocaleNSLocaleWithHarmonizedNumberingSystem(objc_msgSend(a2, "locale"))}];
  if (v25 == 0.0)
  {
    v28 = 0;
    if (a3 < 0.0)
    {
      v24 = -v24;
    }

    if (v24)
    {
      goto LABEL_31;
    }

LABEL_35:
    v29 = 0;
    goto LABEL_36;
  }

  v27 = -v25;
  if (a3 >= 0.0)
  {
    v27 = v25;
  }

  v28 = [TSUNumberFormatFractionStringFromDouble_sFractionFormatter stringFromNumber:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v27)}];
  if (!v24)
  {
    goto LABEL_35;
  }

LABEL_31:
  v24 = [TSUNumberFormatFractionStringFromDouble_sFractionFormatter stringFromNumber:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v24)}];
  v29 = [TSUNumberFormatFractionStringFromDouble_sFractionFormatter stringFromNumber:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v12)}];
LABEL_36:
  objc_sync_exit(v26);
  if (v28 && v24)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@/%@", v28, v24, v29];
  }

  if (v28)
  {
    return v28;
  }

  if (v24)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v24, v29, v32];
  }

  v31 = TSUNumberFormatFractionStringFromDouble_sFractionFormatter;

  return [v31 stringFromNumber:&unk_286F6D728];
}

void *TSUNumberFormatBaseStringFromDouble(uint64_t a1, unsigned int a2, int a3, double a4)
{
  if ((a1 - 37) <= 0xDBu)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUNumberFormatBaseStringFromDouble(double, UInt8, UInt16, BOOL)"}];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 1352, 0, "Trying to format a baseFormat cell with an illegal base number");
    +[OITSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  if (fabs(a4) > 9.22337204e18)
  {
    return 0;
  }

  v7 = a3;
  v10 = llround(a4);
  if (v10 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -v10;
  }

  if (v10 < 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  if (v10 < 0 && (a3 & 1) == 0)
  {
    if (a1 > 0x10 || ((1 << a1) & 0x10104) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUNumberFormatBaseStringFromDouble(double, UInt8, UInt16, BOOL)"}];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 1374, 0, "Trying to display two's-complement for unsupported base %d", a1);
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    if (v11 >= 0x80000001)
    {
      v14 = -32;
      v15 = 0x80000000;
      while (v14 != -50)
      {
        v16 = 2 * v15;
        --v14;
        v20 = v11 > (2 * v15);
        v15 *= 2;
        if (!v20)
        {
          v17 = -v14;
          goto LABEL_23;
        }
      }

      return 0;
    }

    v16 = 0x80000000;
    v17 = 32;
LABEL_23:
    v11 = 2 * v16 - v11;
    LODWORD(v18) = (log2(a1) * a2);
    if (v18 <= 32)
    {
      v18 = 32;
    }

    else
    {
      v18 = v18;
    }

    v19 = v17 >= v18;
    v20 = v17 < v18 && v16 <= 500000000000000;
    if (v20)
    {
      v21 = v17 + 1;
      do
      {
        v11 += 2 * v16;
        v19 = v21 >= v18;
        if (v21 >= v18)
        {
          break;
        }

        ++v21;
        v20 = v16 < 0xE35FA931A001;
        v16 *= 2;
      }

      while (v20);
    }

    if (!v19)
    {
      return 0;
    }
  }

  v28 = v10;
  v5 = [MEMORY[0x277CCAB68] string];
  v22 = 1;
  do
  {
    if (a1 == 26)
    {
      v23 = v11 / v22 % 26 + 65;
    }

    else if (a1 == 1)
    {
      v23 = 49;
    }

    else
    {
      v24 = v11 / v22 % a1;
      if (v24 <= 9)
      {
        v25 = 48;
      }

      else
      {
        v25 = 55;
      }

      v23 = v25 + v24;
    }

    [v5 tsu_insertCharacter:v23 atIndex:0];
    v22 = (a1 == 1) + v22 * a1;
  }

  while (v22 && v11 / v22 > 0);
  if (a2)
  {
    v26 = (a2 - [v5 length]);
    if (v26 >= 1)
    {
      if (a1 == 26)
      {
        v27 = 65;
      }

      else
      {
        v27 = 48;
      }

      do
      {
        [v5 tsu_insertCharacter:v27 atIndex:0];
        --v26;
      }

      while (v26);
    }
  }

  if ((v28 & 0x8000000000000000) == 0 && (v7 & 1) == 0 && v11 >= 0x80000000 && [v5 characterAtIndex:0] != 48)
  {
    [v5 tsu_insertCharacter:48 atIndex:0];
  }

  if (v12)
  {
    [v5 tsu_insertCharacter:45 atIndex:0];
  }

  return v5;
}

__CFString *TSUNumberFormatterThreadDictionaryKeyForLocale(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = @"TSUNumberFormatterThreadDictionaryKey";
    if (![OITSULocale localeIsAutoUpdating:v1])
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = [OITSULocale cacheKeyForLocale:v1];
      v2 = [v3 stringWithFormat:@"%@-%@", @"TSUNumberFormatterThreadDictionaryKey", v4];
    }
  }

  else
  {
    v2 = @"TSUNumberFormatterThreadDictionaryKey";
  }

  return v2;
}

BOOL TSULocationInRanges(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && (v5 = [v3 count]) != 0)
  {
    v6 = v5;
    v7 = [v4 objectAtIndex:0];
    v8 = [v7 rangeValue];
    v10 = v9;

    if (a1 < v8 || a1 - v8 >= v10)
    {
      v12 = 1;
      do
      {
        v13 = v12;
        if (v6 == v12)
        {
          break;
        }

        v14 = [v4 objectAtIndex:v12];
        v15 = [v14 rangeValue];
        v17 = v16;

        v12 = v13 + 1;
      }

      while (a1 < v15 || a1 - v15 >= v17);
      v11 = v13 < v6;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void TSUNumberFormatterExtractStemAndTagFromStringWithSeparator(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [v9 componentsSeparatedByString:v10];
  v19 = 0.0;
  v18 = -999;
  if ([v12 count] >= 2)
  {
    v13 = [v12 lastObject];
    if (TSUGetNumberValueAndTypeFromStringWithCurrencyCode(v13, 0, v11, &v19, &v18, 0, 0))
    {
      v14 = v18;

      if (!v14)
      {
        v15 = [v9 rangeOfString:v10 options:4];
        if (a4)
        {
          *a4 = [v9 substringToIndex:v15];
        }

        if (a5)
        {
          v16 = vcvtmd_s64_f64(v19);
LABEL_13:
          *a5 = v16;
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if (a4)
  {
    v17 = v9;
    *a4 = v9;
  }

  if (a5)
  {
    v16 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void TSUNumberFormatterExtractBaseStemFromString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v10 = 0;
    TSUNumberFormatterExtractStemAndTagFromStringWithSeparator(v5, @" ", v6, &v10, 0);
    v7 = v10;
    if ([v5 isEqualToString:v7])
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = v7;

        v10 = v8;
        TSUNumberFormatterExtractStemAndTagFromStringWithSeparator(v8, @" ", v6, &v10, 0);
        v7 = v10;

        v5 = v8;
      }

      while (([v8 isEqualToString:v7] & 1) == 0);
    }

    v9 = v7;
    *a3 = v7;

    v5 = v8;
  }
}

uint64_t TSUNumberOfDecimalPlacesInValue(double a1)
{
  valuePtr = a1;
  if (floor(a1) == a1)
  {
    return 0;
  }

  v2 = TSUNumberOfDecimalPlacesInValue_formatter;
  if (!TSUNumberOfDecimalPlacesInValue_formatter)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!TSUNumberOfDecimalPlacesInValue_formatter)
    {
      v4 = MEMORY[0x277CBEAF8];
      v5 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:@"en_US"];
      v6 = [v4 localeWithLocaleIdentifier:v5];

      v7 = [OITSUNumberFormatter createHarmonizedCFNumberFormatterWithLocale:v6 style:0];
      CFNumberFormatterSetFormat(v7, @"0");
      v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
      CFNumberFormatterSetProperty(v7, *MEMORY[0x277CBEF58], v8);

      v9 = [MEMORY[0x277CCABB0] numberWithInt:0x7FFFFFFFLL];
      CFNumberFormatterSetProperty(v7, *MEMORY[0x277CBEF48], v9);

      __dmb(0xBu);
      TSUNumberOfDecimalPlacesInValue_formatter = v7;
    }

    objc_sync_exit(v3);

    v2 = TSUNumberOfDecimalPlacesInValue_formatter;
  }

  v10 = CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], v2, kCFNumberDoubleType, &valuePtr);
  v11 = [(__CFString *)v10 rangeOfString:@"."];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v12 == 1)
  {
    v1 = [(__CFString *)v10 length]+ ~v11;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__CFString *TSUNumberFormatterNumberingSystemForFormatter(__CFNumberFormatter *a1)
{
  v2 = sNumberingSystemForLocaleIdentifier;
  objc_sync_enter(v2);
  Locale = CFNumberFormatterGetLocale(a1);
  v4 = MEMORY[0x25F895F50](Locale);
  v5 = [sNumberingSystemForLocaleIdentifier objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [sNumberingSystemForLocaleIdentifier objectForKeyedSubscript:v4];
  }

  else
  {
    StringWithNumber = CFNumberFormatterCreateStringWithNumber(0, a1, &unk_286F6D758);
    v8 = [(__CFString *)StringWithNumber length];
    if (v8)
    {
      v9 = 0;
      while (1)
      {
        v10 = sNumberingSystemForZeroChar;
        v11 = [(__CFString *)StringWithNumber substringWithRange:v9, 1];
        v6 = [v10 objectForKey:v11];

        if (v6)
        {
          break;
        }

        if (v8 == ++v9)
        {
          v6 = @"latn";
          break;
        }
      }
    }

    else
    {
      v6 = @"latn";
    }

    [sNumberingSystemForLocaleIdentifier setObject:v6 forKeyedSubscript:v4];
  }

  objc_sync_exit(v2);

  return v6;
}

id TSUCurrencyCodesForLocale(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CBEB18];
  v6 = +[OITSUNumberFormatter userVisibleCurrencyCodes];
  v7 = [v5 arrayWithArray:v6];

  if (v3)
  {
    v8 = [v3 objectForKey:*MEMORY[0x277CBE698]];
    if (v8 && ([v7 containsObject:v8] & 1) == 0)
    {
      [v7 insertObject:v8 atIndex:0];
    }
  }

  if (v4 && ([v7 containsObject:v4] & 1) == 0)
  {
    [v7 insertObject:v4 atIndex:0];
  }

  return v7;
}

id TSUCreateArrayOfDecimalFormattersForLocale(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [OITSUNumberFormatter createHarmonizedCFNumberFormatterWithLocale:v1 style:1];
  v4 = *MEMORY[0x277CBEF20];
  CFNumberFormatterSetProperty(v3, *MEMORY[0x277CBEF20], @"xyzzyqghbv&q");
  [v2 addObject:v3];

  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"#, ##0;- #, ##0", @"#, ##0;(#, ##0)", @"#, ##0;( #, ##0)", 0}];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [OITSUNumberFormatter createHarmonizedCFNumberFormatterWithLocale:v1 style:0];
      v10 = [v5 objectAtIndex:i];
      CFNumberFormatterSetFormat(v9, v10);

      CFNumberFormatterSetProperty(v9, v4, @"xyzzyqghbv&q");
      [v2 addObject:v9];
    }
  }

  return v2;
}

id TSUCreateArrayOfPercentageFormattersForLocale(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [OITSUNumberFormatter createHarmonizedCFNumberFormatterWithLocale:v2 style:3];
  v5 = *MEMORY[0x277CBEF20];
  CFNumberFormatterSetProperty(v4, *MEMORY[0x277CBEF20], @"xyzzyqghbv&q");
  [v3 addObject:v4];

  v6 = [OITSUNumberFormatter createHarmonizedCFNumberFormatterWithLocale:v2 style:0];
  CFNumberFormatterSetFormat(v6, @"#,##0%");
  CFNumberFormatterSetProperty(v6, v5, @"xyzzyqghbv&q");
  [v3 addObject:v6];

  v7 = MEMORY[0x277CBEAF8];
  v8 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:@"en_US"];
  v9 = [v7 localeWithLocaleIdentifier:v8];

  v10 = CFNumberFormatterCreate(0, v9, kCFNumberFormatterPercentStyle);
  CFNumberFormatterSetProperty(v10, v5, @"xyzzyqghbv&q");
  [v3 addObject:v10];

  return v3;
}

id TSUCreateArrayOfScientificFormattersForLocale(void *a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [OITSUNumberFormatter createHarmonizedCFNumberFormatterWithLocale:v1 style:4];
  v3 = [v1 objectForKey:*MEMORY[0x277CBE6C8]];
  if ([v3 isEqualToString:@"hi"])
  {
    v4 = [(__CFString *)CFNumberFormatterGetFormat(v2) isEqualToString:@"#E0"];

    if ((v4 & 1) == 0)
    {
      v5 = [OITSUNumberFormatter createHarmonizedCFNumberFormatterWithLocale:v1 style:4];
      CFNumberFormatterSetFormat(v5, @"#E0");
      v9[0] = v2;
      v9[1] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
LABEL_6:

  return v6;
}

uint64_t TSUImprovedCFNumberFormatterGetValueFromString(__CFNumberFormatter *a1, void *a2, double *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  v10.location = 0;
  v10.length = [(__CFString *)v5 length];
  v7 = 0;
  if (!CFNumberFormatterGetValueFromString(a1, v6, &v10, kCFNumberDoubleType, a3) || v10.location)
  {
    goto LABEL_9;
  }

  length = v10.length;
  if (length == [(__CFString *)v6 length])
  {
    if (__fpclassifyd(*a3) == 3)
    {
      *a3 = 0.0;
    }

    v7 = 1;
LABEL_9:
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  if (!v7)
  {
    *a3 = 0.0;
  }

LABEL_12:

  return v7;
}

uint64_t TSUGetNumberValueAndTypeFromStringWithCurrencyCode(void *a1, void *a2, void *a3, uint64_t a4, int *a5, void *a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  if (v13)
  {
    v36 = a6;
    v16 = v13;
    v17 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v18 = [v16 rangeOfCharacterFromSet:v17];

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
LABEL_29:

      goto LABEL_30;
    }

    context = objc_autoreleasePoolPush();
    v20 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v21 = [v16 stringByTrimmingCharactersInSet:v20];

    v22 = [v21 length];
    v23 = v22;
    if (v22 > 0x3E8)
    {
      v29 = 0;
LABEL_25:
      objc_autoreleasePoolPop(context);
      if (v23 < 0x3E9)
      {
        v19 = v29;
      }

      else
      {
        v19 = 0;
      }

      v16 = v21;
      goto LABEL_29;
    }

    if (a5)
    {
      *a5 = -999;
    }

    v24 = [OITSUNumberFormatter formatterForLocale:v15, v22];
    v25 = [v21 mutableCopy];
    CFStringTransform(v25, 0, *MEMORY[0x277CBF0A8], 0);
    v34 = v25;
    v26 = v25;
    v27 = v24;
    v28 = [OITSUNumberFormatter stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:v26];

    v21 = p_stripSingleSpaceNotSurroundedByDigits(v28, v15);

    if ([v24 decimalFromString:v21 value:a4 formatString:v36])
    {
      if (a5)
      {
        *a5 = 0;
      }

      v29 = 1;
      v23 = v33;
      goto LABEL_24;
    }

    if ([v24 currencyFromString:v21 additionalCurrencyCode:v14 value:a4 formatString:v36 currencyCode:a7])
    {
      v29 = 1;
      v23 = v33;
      if (a5)
      {
        *a5 = 1;
      }

      goto LABEL_24;
    }

    v30 = [v24 percentageFromString:v21 value:a4 formatString:v36];
    v23 = v33;
    if (v30)
    {
      if (a5)
      {
        v31 = 2;
LABEL_22:
        *a5 = v31;
      }
    }

    else if ([v27 scientificFromString:v21 value:a4 formatString:v36])
    {
      if (a5)
      {
        v31 = 3;
        goto LABEL_22;
      }
    }

    else
    {
      if (![v27 fractionFromString:v21 value:a4])
      {
        v29 = 0;
        goto LABEL_24;
      }

      if (a5)
      {
        *a5 = 4;
      }

      if (v36)
      {
        *v36 = 0;
      }
    }

    v29 = 1;
LABEL_24:

    goto LABEL_25;
  }

  v19 = 0;
LABEL_30:

  return v19;
}

id p_stripSingleSpaceNotSurroundedByDigits(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [OITSUNumberFormatter decimalSeparatorForLocale:v4];
  v6 = [OITSUNumberFormatter groupingSeparatorForLocale:v4];
  v7 = MEMORY[0x277CCAB50];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, v6];
  v9 = [v7 characterSetWithCharactersInString:v8];

  v10 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  [v9 formUnionWithCharacterSet:v10];

  v11 = [MEMORY[0x277CCAB68] stringWithString:v3];
  v12 = [v11 length] - 2;
  if (v12 >= 1)
  {
    while (1)
    {
      if ([v11 characterAtIndex:v12] != 32)
      {
        goto LABEL_8;
      }

      v13 = v12 - 1;
      v14 = [v11 characterAtIndex:v12 - 1];
      v15 = [v11 characterAtIndex:v12 + 1];
      if (v14 != 32)
      {
        break;
      }

LABEL_9:
      v12 = v13 - 1;
      if (v13 <= 1)
      {
        goto LABEL_10;
      }
    }

    v16 = v15;
    if (v15 != 32 && (![v9 characterIsMember:v14] || (objc_msgSend(v9, "characterIsMember:", v16) & 1) == 0))
    {
      [v11 deleteCharactersInRange:{v12, 1}];
    }

LABEL_8:
    v13 = v12;
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

__CFString *TSUNumberFormatterStringFromValueType(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C6250[a1];
  }
}

__CFString *TSUNumberFormatterStringFromNegativeStyle(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C6280[a1];
  }
}

__CFString *TSUNumberFormatterStringFromFractionAccuracy(uint64_t a1)
{
  if (a1 <= 0xFFFFFFFC)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"1/%d", a1];
  }

  else
  {
    v2 = off_2799C62A8[a1 + 3];
  }

  return v2;
}

id TSUNumberFormatterStringByUnescapingFormatString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v5 = [v1 characterAtIndex:v4];
      v6 = v5;
      v7 = v4 + 1;
      if (v4 + 1 >= v2)
      {
        if (v5 != 39)
        {
LABEL_16:
          [v3 appendFormat:@"%C", v6];
        }

        ++v4;
        goto LABEL_18;
      }

      v8 = [v1 characterAtIndex:v4 + 1];
      if (v6 != 39)
      {
        goto LABEL_16;
      }

      if (v8 != 39)
      {
        break;
      }

      [v3 appendString:@"'"];
      v4 += 2;
LABEL_18:
      if (v4 >= v2)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v9 = [v1 characterAtIndex:v7];
      v10 = v9;
      v4 = v7 + 1;
      if (v7 + 1 >= v2)
      {
        if (v9 == 39)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = [v1 characterAtIndex:v7 + 1];
        if (v10 == 39)
        {
          if (v11 != 39)
          {
            goto LABEL_18;
          }

          [v3 appendString:@"'"];
          v4 = v7 + 2;
          goto LABEL_13;
        }
      }

      [v3 appendFormat:@"%C", v10];
LABEL_13:
      v7 = v4;
      if (v4 >= v2)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_19:

  return v3;
}

void TSUHarmonizedCFNumberFormatterSetCurrency(__CFNumberFormatter *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v8 = CFNumberFormatterGetLocale(a1);
    v4 = [OITSUNumberFormatter currencySymbolForCurrencyCode:v3 locale:?];
    v5 = [v4 copy];

    CFNumberFormatterSetProperty(a1, *MEMORY[0x277CBEF10], v5);
    v6 = CFStringCompare(v3, @"CHF", 0);

    if (v6 == kCFCompareEqualTo)
    {
      v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
      CFNumberFormatterSetProperty(a1, *MEMORY[0x277CBEFD0], v7);
    }
  }
}

id p_newArrayOfCurrencyFormattersForCurrencyCode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 count];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
  if (v8 >= 1)
  {
    v10 = 0;
    key = *MEMORY[0x277CBEF40];
    v11 = *MEMORY[0x277CBED28];
    v12 = *MEMORY[0x277CBEF20];
    do
    {
      v13 = [OITSUNumberFormatter createHarmonizedCFNumberFormatterWithLocale:v5 style:2];
      [v6 objectAtIndex:v10];
      v14 = v9;
      v15 = v7;
      v16 = v6;
      v18 = v17 = v5;
      CFNumberFormatterSetFormat(v13, v18);

      v5 = v17;
      v6 = v16;
      v7 = v15;
      v9 = v14;
      TSUHarmonizedCFNumberFormatterSetCurrency(v13, v7);
      CFNumberFormatterSetProperty(v13, key, v11);
      CFNumberFormatterSetProperty(v13, v12, @"xyzzyqghbv&q");
      [v14 addObject:v13];

      ++v10;
    }

    while (v8 != v10);
  }

  return v9;
}

void *TSUSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *TSUProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v13 = &a9;
  v14 = &a9;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      while (1)
      {
        v11 = v14++;
        if (([v9 conformsToProtocol:{*v11, v13}] & 1) == 0)
        {
          break;
        }

        if (!--v10)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

uint64_t TSUCheckedDynamicCast(objc_class *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedDynamicCast(Class, id<NSObject>)"}];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCast.m"];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:135 isFatal:0 description:"Unexpected object type %@ in checked dynamic cast to %@", v7, NSStringFromClass(a1)];
    +[OITSUAssertionHandler logBacktrace];
    return 0;
  }

  return v2;
}

id TokenizeVersionString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  if ([v1 count] >= 2)
  {
    v3 = [v1 valueForKey:@"integerValue"];
    if ([v3 count] >= 3)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 arrayByAddingObject:&unk_286F6D770];
    }

    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *TSUSoftLinkingLoadFramework(void *a1, void *a2)
{
  v4 = [a2 stringByAppendingString:@".framework"];
  if (a1)
  {
    v5 = [TSUPathForSystemFramework(objc_msgSend(a1 stringByAppendingString:{@".framework", "stringByAppendingPathComponent:", v4}];
  }

  else
  {
    v5 = TSUPathForSystemFramework(v4);
  }

  v6 = [v5 stringByAppendingPathComponent:a2];
  v7 = v6;
  if (!v6 || (result = dlopen([v6 fileSystemRepresentation], 256)) == 0)
  {
    if (([a2 isEqualToString:@"Ubiquity"] & 1) == 0)
    {
      NSLog(@"NSSoftLinking - The %@ framework's library couldn't be loaded from %@.", a2, v7);
    }

    return 0;
  }

  return result;
}

uint64_t TSUPathForSystemFramework(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v4 = [(NSArray *)v3 count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = [(NSArray *)v3 objectAtIndex:v6];
    v8 = [objc_msgSend(v7 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", a1}];
    if ([v2 fileExistsAtPath:v8])
    {
      break;
    }

    v8 = [objc_msgSend(v7 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", a1}];
    if ([v2 fileExistsAtPath:v8])
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return v8;
}

void *TSUSoftLinkingGetFrameworkFunction(void *a1, void *a2, char *__symbol, void **a4)
{
  Framework = *a4;
  if (!*a4 && (Framework = TSUSoftLinkingLoadFramework(a1, a2), (*a4 = Framework) == 0) || (result = dlsym(Framework, __symbol)) == 0)
  {
    if (([a2 isEqualToString:@"Ubiquity"] & 1) == 0)
    {
      NSLog(@"NSSoftLinking - The function '%s' can't be found in the %@ framework.", __symbol, a2);
    }

    return 0;
  }

  return result;
}

uint64_t TSUCFArrayDescription(const __CFArray *a1)
{
  v2 = [OITSUDescription descriptionWithCFType:a1 format:@"; count=%ld", CFArrayGetCount(a1)];
  if (CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      -[OITSUDescription addField:format:](v2, "addField:format:", [MEMORY[0x277CCACA8] stringWithFormat:@"[%d]", v3], @"%@", CFArrayGetValueAtIndex(a1, v3));
      ++v3;
    }

    while (CFArrayGetCount(a1) > v3);
  }

  [(OITSUDescription *)v2 setFieldOptionCommaSeparated];

  return [(OITSUDescription *)v2 descriptionString];
}

__CFString *TSUObjectReferenceDescription(void *a1)
{
  if (!a1)
  {
    return @"<nil>";
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = MEMORY[0x277CCACA8];
  ClassName = object_getClassName(a1);
  if (isKindOfClass)
  {
    return [v3 stringWithFormat:@"(%s*)%p; count=%lu", ClassName, a1, objc_msgSend(a1, "count")];
  }

  else
  {
    return [v3 stringWithFormat:@"(%s*)%p", ClassName, a1, v6];
  }
}

CGColorSpaceRef __TSUDeviceRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  TSUDeviceRGBColorSpace_sDeviceRGBColorSpace = result;
  return result;
}

CGColorSpaceRef __TSUDeviceCMYKColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceCMYK();
  TSUDeviceCMYKColorSpace_sDeviceCMYKColorSpace = result;
  return result;
}

uint64_t TSUSRGBColorSpace()
{
  if (TSUSRGBColorSpace_sSRGBDispatchOnce != -1)
  {
    TSUSRGBColorSpace_cold_1();
  }

  return TSUSRGBColorSpace_sSRGBColorSpace;
}

CGColorSpaceRef __TSUSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  TSUSRGBColorSpace_sSRGBColorSpace = result;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    TSUSRGBColorSpace_sSRGBColorSpace = result;
  }

  return result;
}

uint64_t TSUP3ColorSpace()
{
  if (TSUP3ColorSpace_sP3DispatchOnce != -1)
  {
    TSUP3ColorSpace_cold_1();
  }

  return TSUP3ColorSpace_sP3ColorSpace;
}

CGColorSpaceRef __TSUP3ColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
  TSUP3ColorSpace_sP3ColorSpace = result;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    TSUP3ColorSpace_sP3ColorSpace = result;
  }

  return result;
}

CGColorRef TSUCGColorCreateRandomRGB()
{
  v0 = TSURandom();
  v1 = TSURandom();
  v2 = TSURandom();

  return TSUCGColorCreateDeviceRGB(v0, v1, v2, 1.0);
}

CGColorRef TSUCreateCGColorFromHSBInColorSpace(CGColorSpace *a1, double a2, double a3, double a4, double a5)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[1] = a5;
  TSUHSBToRGB(&components, &v8, v9, a2, a3, a4);
  if (!a1)
  {
    if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
    {
      TSUDeviceRGBColorSpace_cold_1();
    }

    a1 = TSUDeviceRGBColorSpace_sDeviceRGBColorSpace;
  }

  return CGColorCreate(a1, &components);
}

double *TSUHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

double TSURGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

CGContext *TSUCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, TSUDeviceRGBColorSpace_sDeviceRGBColorSpace, 0x2002u);
  CGAffineTransformMakeScale(&v10, a4, a4);
  CGContextConcatCTM(v8, &v10);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(&v10, 1.0, -1.0);
    CGContextConcatCTM(v8, &v10);
  }

  return v8;
}

void std::vector<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t p_chunkIndexForCharacterIndex(unint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = (v2 - *a2) >> 4;
    v2 = *a2;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7[2] + *v7 <= a1)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  return (v2 - *a2) >> 4;
}

void sub_25D3A5320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<TSUStringChunk>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSUStringChunk>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<TSUStringChunk>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_25D3A5AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::shared_ptr<TSUStringChunk>>::insert(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = ((v6 - *a1) >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    v18 = v17 >> 3;
    if (v17 >> 3 <= v15)
    {
      v18 = ((v6 - *a1) >> 4) + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v20 = v16 >> 4;
    v32 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSUStringChunk>>>(a1, v19);
    }

    *&v30 = 0;
    *(&v30 + 1) = 16 * v20;
    v31 = (16 * v20);
    std::__split_buffer<std::shared_ptr<TSUStringChunk>>::emplace_back<std::shared_ptr<TSUStringChunk> const&>(&v30, a3);
    v22 = *(&v30 + 1);
    memcpy(v31, v4, a1[1] - v4);
    v23 = *a1;
    v24 = *(&v30 + 1);
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = (v24 - (v4 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    *&v30 = v27;
    *(&v30 + 1) = v27;
    std::__split_buffer<std::shared_ptr<TSUStringChunk>>::~__split_buffer(&v30);
    return v22;
  }

  else if (a2 == v6)
  {
    v21 = a3[1];
    *v6 = *a3;
    v6[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 2;
  }

  else
  {
    std::vector<std::shared_ptr<TSUStringChunk>>::__move_range(a1, a2, v6, (a2 + 2));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 2;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = v10[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v4[1];
    *v4 = v12;
    v4[1] = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return v4;
}

void sub_25D3A5C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<TSUStringChunk>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_25D3A6194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<TSUStringChunk>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void std::vector<std::shared_ptr<TSUStringChunk>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_25D3A636C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x25F897000](v1, 0x1000C401E2E008BLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TSUStringChunk *,std::shared_ptr<TSUStringChunk>::__shared_ptr_default_delete<TSUStringChunk,TSUStringChunk>,std::allocator<TSUStringChunk>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F897000);
}

uint64_t std::__shared_ptr_pointer<TSUStringChunk *,std::shared_ptr<TSUStringChunk>::__shared_ptr_default_delete<TSUStringChunk,TSUStringChunk>,std::allocator<TSUStringChunk>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x25F897000);
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSUStringChunk>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void **std::__split_buffer<std::shared_ptr<TSUStringChunk>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *std::vector<std::shared_ptr<TSUStringChunk>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(&v11, a2, v7, v6);
}

__int128 *std::__split_buffer<std::shared_ptr<TSUStringChunk>>::emplace_back<std::shared_ptr<TSUStringChunk> const&>(__int128 *result, void *a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    v5 = *(result + 1);
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 3;
      }

      v9 = *(result + 4);
      v11[4] = *(v3 + 4);
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSUStringChunk>>>(v9, v8);
    }

    v6 = (((v5 - *result) >> 4) + 1 + ((((v5 - *result) >> 4) + 1) >> 63)) >> 1;
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    *(v3 + 1) -= 16 * v6;
    *(v3 + 2) = v7;
  }

  *v4 = *a2;
  v10 = a2[1];
  *(v4 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 16;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void _SFRSetLineWidth(CGContextRef c, CGFloat a2)
{
  if (a2 == 0.0)
  {
    NSLog(@"BOGUS - lineWidth is 0.");
    CGContextGetCTM(&v3, c);
    CGAffineTransformInvert(&v4, &v3);
    a2 = v4.a + v4.c;
  }

  CGContextSetLineWidth(c, a2);
}

void *pBuildBezierPath(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v9 = *(a2 + 8);
        v10 = v9[4];
        v11 = v9[5];
        v12 = *v9;
        v13 = v9[1];
        v14 = v9[2];
        v15 = v9[3];

        return [result curveToPoint:v10 controlPoint1:v11 controlPoint2:{v12, v13, v14, v15}];
      }

      else if (v4 == 4)
      {

        return [result closePath];
      }

      return result;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void pBuildBezierPath(void *, const CGPathElement *)"}];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPath.m"], 215, 0, "kCGPathElementAddQuadCurveToPoint not supported yet");
    +[OITSUAssertionHandler logBacktraceThrottled];
    goto LABEL_12;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

LABEL_12:
    v6 = *(a2 + 8);
    v7 = *v6;
    v8 = v6[1];

    return [v3 lineToPoint:{v7, v8}];
  }

  v16 = *(a2 + 8);
  v17 = *v16;
  v18 = v16[1];

  return [result moveToPoint:{v17, v18}];
}

void scanSpaceThenFloat(uint64_t a1, int *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = (a1 + v5);
  if (*(a1 + v5) == 32)
  {
    v7 = v5 + 1;
    do
    {
      *a2 = v7;
      v8 = *++v6;
      ++v7;
    }

    while (v8 == 32);
  }

  v9 = 0;
  strtof(v6, &v9);
  if (v6 == v9)
  {
    *a3 = 1;
  }

  else
  {
    *a2 += v9 - v6;
  }
}

void addifclose(uint64_t a1, float *a2)
{
  v4 = 0;
  v36[25] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = 0.0;
  v8 = v6;
  v9 = *a1;
  do
  {
    v10 = *(a1 + v4 + 16);
    v11 = *(a1 + v4 + 24);
    v7 = TSUDistance(v9, v8, v10, v11) + v7;
    v4 += 16;
    v8 = v11;
    v9 = v10;
  }

  while (v4 != 48);
  v12 = TSUDistance(v5, v6, *(a1 + 48), *(a1 + 56));
  if ((v7 - v12) <= 0.1)
  {
    *a2 = *a2 + v7;
  }

  else
  {
    v13 = *(a1 + 16);
    v35[0] = *a1;
    v35[1] = v13;
    v14 = *(a1 + 48);
    v35[2] = *(a1 + 32);
    v35[3] = v14;
    v15 = v36;
    v16 = 3;
    v17 = 1;
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      v23 = v35[4 * v17 - 4];
      v24 = v16;
      v25 = v15;
      do
      {
        v26 = v25[-3];
        *v25++ = vmlaq_f64(vmulq_f64(v26, _Q0), _Q0, v23);
        v23 = v26;
        --v24;
      }

      while (v24);
      ++v17;
      --v16;
      v15 += 4;
    }

    while (v17 != 4);
    v27 = 0;
    v28 = v35;
    do
    {
      v29 = *v28;
      v28 += 4;
      *&v34[v27] = v29;
      v27 += 16;
    }

    while (v27 != 64);
    v30 = v33;
    v31 = 3;
    v32 = 12;
    do
    {
      *v30++ = v35[v32];
      --v31;
      v32 -= 3;
    }

    while (v31 != -1);
    addifclose(v34, a2);
    addifclose(v33, a2);
  }
}

uint64_t TSUPreferredLocale()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  if (![objc_msgSend(v0 "localeIdentifier")])
  {
    return v0;
  }

  v1 = MEMORY[0x277CBEAF8];
  v2 = [objc_msgSend(v0 "localeIdentifier")];

  return [v1 localeWithLocaleIdentifier:v2];
}

BOOL TSUCGAffineTransformIsValid(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 24) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    return fabs(*(a1 + 40)) != INFINITY;
  }

  return 0;
}

uint64_t TSUNotifyCGAssertionAvoided()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSUNotifyCGAssertionAvoided(void)"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v0, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUSafeCGWrappers.m"], 86, 0, "A CG call was elided because of an invalid parameter.");

  return +[OITSUAssertionHandler logBacktrace];
}

void CGPathMoveToPointSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v9 = fabs(a3) != INFINITY;
  v11 = fabs(a4) == INFINITY || !v9;
  if (v11 || !IsValid)
  {

    TSUNotifyCGAssertionAvoided();
  }

  else
  {

    CGPathMoveToPoint(a1, a2, a3, a4);
  }
}

void CGPathAddLineToPointSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v9 = fabs(a3) != INFINITY;
  v11 = fabs(a4) == INFINITY || !v9;
  if (v11 || !IsValid)
  {

    TSUNotifyCGAssertionAvoided();
  }

  else
  {

    CGPathAddLineToPoint(a1, a2, a3, a4);
  }
}

void CGPathAddArcToPointSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4, double a5, double a6, CGFloat a7)
{
  IsValid = TSUCGAffineTransformIsValid(a2);
  v15 = fabs(a3) != INFINITY;
  v16 = fabs(a4) != INFINITY;
  v17 = fabs(a5) != INFINITY;
  v23 = fabs(a6) == INFINITY || !v17 || !v16 || !v15;
  if (v23 || !IsValid)
  {

    TSUNotifyCGAssertionAvoided();
  }

  else
  {

    CGPathAddArcToPoint(a1, a2, a3, a4, a5, a6, a7);
  }
}

void CGPathAddRectSafe(CGPath *a1, const CGAffineTransform *a2, double a3, double a4, double a5, double a6)
{
  if (TSUCGAffineTransformIsValid(a2))
  {
    v12 = a3;
    v13 = a4;
    v14 = a5;
    v15 = a6;

    CGPathAddRect(a1, a2, *&v12);
  }

  else
  {

    TSUNotifyCGAssertionAvoided();
  }
}

void sub_25D3AF3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::vector<_NSRange>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<_NSRange>::__append(a1, a2 - v2);
  }
}

void std::vector<_NSRange>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

__n128 *std::vector<_NSRange>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<_NSRange>::emplace_back<_NSRange const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_25D3B080C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL p_sortFunction(_NSRange a1, _NSRange a2)
{
  if (a1.location == a2.location)
  {
    return a2.location + a2.length < a1.location + a1.length;
  }

  else
  {
    return a1.location < a2.location;
  }
}

void std::vector<_NSRange>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__split_buffer<_NSRange>::emplace_back<_NSRange const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v53 = a2 - 4;
  v54 = a2 - 2;
  v52 = a2 - 6;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v47 = *(a2 - 2);
        v48 = *(a2 - 1);
        v49 = a2 - 2;
        if ((*a3)(v47, v48, *v9, v9[1]))
        {
          v73 = *v9;
          *v9 = *v49;
          *v49 = v73;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,0>(v9, v9 + 2, v9 + 4, v54, a3);
      return;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,0>(v9, v9 + 2, v9 + 4, v9 + 6, v54, a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,_NSRange*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(*v13, v13[1], *v9, v9[1]);
      v16 = (*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]);
      if (v15)
      {
        if (v16)
        {
          v55 = *v9;
          v17 = a2 - 2;
          *v9 = *v54;
          goto LABEL_28;
        }

        v61 = *v9;
        *v9 = *v13;
        *v13 = v61;
        if ((*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]))
        {
          v55 = *v13;
          v17 = a2 - 2;
          *v13 = *v54;
LABEL_28:
          *v17 = v55;
        }
      }

      else if (v16)
      {
        v57 = *v13;
        *v13 = *v54;
        *v54 = v57;
        if ((*a3)(*v13, v13[1], *v9, v9[1]))
        {
          v58 = *v9;
          *v9 = *v13;
          *v13 = v58;
        }
      }

      v21 = (v9 + 2);
      v22 = v13 - 2;
      v23 = (*a3)(*(v13 - 2), *(v13 - 1), a1[2], a1[3]);
      v24 = (*a3)(*(a2 - 4), *(a2 - 3), *(v13 - 2), *(v13 - 1));
      if (v23)
      {
        if (v24)
        {
          v25 = *v21;
          v26 = a2 - 4;
          *v21 = *v53;
          goto LABEL_42;
        }

        v28 = *v21;
        *v21 = *v22;
        *v22 = v28;
        if ((*a3)(*(a2 - 4), *(a2 - 3), *v22, *(v13 - 1)))
        {
          v64 = *v22;
          v26 = a2 - 4;
          *v22 = *v53;
          v25 = v64;
LABEL_42:
          *v26 = v25;
        }
      }

      else if (v24)
      {
        v62 = *v22;
        *v22 = *v53;
        *v53 = v62;
        if ((*a3)(*v22, *(v13 - 1), a1[2], a1[3]))
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
        }
      }

      v29 = (a1 + 4);
      v30 = v13 + 2;
      v31 = (*a3)(v13[2], v13[3], a1[4], a1[5]);
      v32 = (*a3)(*(a2 - 6), *(a2 - 5), v13[2], v13[3]);
      if (v31)
      {
        if (v32)
        {
          v33 = *v29;
          v34 = a2 - 6;
          *v29 = *v52;
          goto LABEL_51;
        }

        v36 = *v29;
        *v29 = *v30;
        *v30 = v36;
        if ((*a3)(*(a2 - 6), *(a2 - 5), *v30, v13[3]))
        {
          v66 = *v30;
          v34 = a2 - 6;
          *v30 = *v52;
          v33 = v66;
LABEL_51:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v65 = *v30;
        *v30 = *v52;
        *v52 = v65;
        if ((*a3)(*v30, v13[3], a1[4], a1[5]))
        {
          v35 = *v29;
          *v29 = *v30;
          *v30 = v35;
        }
      }

      v37 = (*a3)(*v13, v13[1], *v22, *(v13 - 1));
      v38 = (*a3)(*v30, v13[3], *v13, v13[1]);
      if (v37)
      {
        if (v38)
        {
          v67 = *v22;
          *v22 = *v30;
          goto LABEL_60;
        }

        v70 = *v22;
        *v22 = *v13;
        *v13 = v70;
        if ((*a3)(*v30, v13[3], *v13, v13[1]))
        {
          v67 = *v13;
          *v13 = *v30;
LABEL_60:
          *v30 = v67;
        }
      }

      else if (v38)
      {
        v68 = *v13;
        *v13 = *v30;
        *v30 = v68;
        if ((*a3)(*v13, v13[1], *v22, *(v13 - 1)))
        {
          v69 = *v22;
          *v22 = *v13;
          *v13 = v69;
        }
      }

      v71 = *a1;
      *a1 = *v13;
      *v13 = v71;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v18 = v14(*v9, v9[1], *v13, v13[1]);
    v19 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]);
    if (v18)
    {
      if (v19)
      {
        v56 = *v13;
        v20 = a2 - 2;
        *v13 = *v54;
        goto LABEL_37;
      }

      v63 = *v13;
      *v13 = *v9;
      *v9 = v63;
      if ((*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]))
      {
        v56 = *v9;
        v20 = a2 - 2;
        *v9 = *v54;
LABEL_37:
        *v20 = v56;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v19)
    {
      goto LABEL_38;
    }

    v59 = *v9;
    *v9 = *v54;
    *v54 = v59;
    if (!(*a3)(*v9, v9[1], *v13, v13[1]))
    {
      goto LABEL_38;
    }

    v60 = *v13;
    *v13 = *v9;
    *v9 = v60;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (((*a3)(*(a1 - 2), *(a1 - 1), *a1, a1[1]) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,_NSRange *,BOOL (*&)(_NSRange,_NSRange)>(a1, a2, a3);
      goto LABEL_68;
    }

LABEL_63:
    v39 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,_NSRange *,BOOL (*&)(_NSRange,_NSRange)>(a1, a2, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(a1, v39, a3);
    v9 = v39 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(v39 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v39;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v41)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,false>(a1, v39, a3, -v11, a5 & 1);
      v9 = v39 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v42 = v9 + 2;
  v43 = (*a3)(v9[2], v9[3], *v9, v9[1]);
  v44 = a2 - 2;
  v45 = (*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]);
  if (v43)
  {
    if (v45)
    {
      v72 = *v9;
      *v9 = *v44;
      v46 = v72;
    }

    else
    {
      v75 = *v9;
      *v9 = *v42;
      *v42 = v75;
      if (!(*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]))
      {
        return;
      }

      v46 = *v42;
      *v42 = *v44;
    }

    *v44 = v46;
  }

  else if (v45)
  {
    v51 = *v42;
    *v42 = *v44;
    *v44 = v51;
    if ((*a3)(v9[2], v9[3], *v9, v9[1]))
    {
      v74 = *v9;
      *v9 = *v42;
      *v42 = v74;
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,0>(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void, void, void))
{
  v10 = (*a5)(*a2, a2[1], *a1, a1[1]);
  v11 = (*a5)(*a3, a3[1], *a2, a2[1]);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, a2[1], *a1, a1[1]))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, a4[1], *a3, a3[1]))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, a2[1], *a1, a1[1]))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,0>(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (**a6)(void, void, void, void))
{
  v12 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,0>(a1, a2, a3, a4, a6);
  if ((*a6)(*a5, a5[1], *a4, a4[1], v12))
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if ((*a6)(*a4, a4[1], *a3, a3[1]))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if ((*a6)(*a3, a3[1], *a2, a2[1]))
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if ((*a6)(*a2, a2[1], *a1, a1[1]))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v8[2], v8[3], *v8, v8[1]);
        if (result)
        {
          v10 = *v9;
          v11 = v8[3];
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v10, v11, *(v4 + v12 - 16), *(v4 + v12 - 8));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v10;
          v13[1] = v11;
        }

        v5 = v9 + 2;
        v7 += 16;
        v8 = v9;
      }

      while (v9 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v4[2], v4[3], *v4, v4[1]);
        if (result)
        {
          v8 = *v7;
          v9 = v4[3];
          v10 = v7;
          do
          {
            v11 = v10 - 1;
            *v10 = *(v10 - 1);
            result = (*a3)(v8, v9, *(v10 - 4), *(v10 - 3));
            v10 = v11;
          }

          while ((result & 1) != 0);
          *v11 = v8;
          v11[1] = v9;
        }

        v5 = v7 + 2;
        v4 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,_NSRange *,BOOL (*&)(_NSRange,_NSRange)>(void *a1, _OWORD *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  v7 = a1[1];
  if ((*a3)(*a1, v7, *(a2 - 2), *(a2 - 1)))
  {
    v8 = a1;
    do
    {
      v9 = v8[2];
      v10 = v8[3];
      v8 += 2;
    }

    while (((*a3)(v6, v7, v9, v10) & 1) == 0);
  }

  else
  {
    v11 = a1 + 2;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = (*a3)(v6, v7, *v11, v11[1]);
      v11 = v8 + 2;
    }

    while (!v12);
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *(v4 - 2);
      v14 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v13, v14) & 1) != 0);
  }

  while (v8 < v4)
  {
    v20 = *v8;
    *v8 = *v4;
    *v4 = v20;
    do
    {
      v15 = v8[2];
      v16 = v8[3];
      v8 += 2;
    }

    while (!(*a3)(v6, v7, v15, v16));
    do
    {
      v17 = *(v4 - 2);
      v18 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v17, v18) & 1) != 0);
  }

  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 2) = v6;
  *(v8 - 1) = v7;
  return v8;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,_NSRange *,BOOL (*&)(_NSRange,_NSRange)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  v8 = a1[1];
  do
  {
    v9 = (*a3)(a1[v6 + 2], a1[v6 + 3], v7, v8);
    v6 += 2;
  }

  while ((v9 & 1) != 0);
  v10 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *(a2 - 2);
      v14 = *(a2 - 1);
      a2 -= 2;
    }

    while (((*a3)(v13, v14, v7, v8) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2 - 2);
      v12 = *(a2 - 1);
      a2 -= 2;
    }

    while (!(*a3)(v11, v12, v7, v8));
  }

  v15 = &a1[v6];
  if (v10 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[2];
        v19 = v15[3];
        v15 += 2;
      }

      while (((*a3)(v18, v19, v7, v8) & 1) != 0);
      do
      {
        v20 = *(v16 - 2);
        v21 = *(v16 - 1);
        v16 -= 2;
      }

      while (!(*a3)(v20, v21, v7, v8));
    }

    while (v15 < v16);
  }

  result = v15 - 2;
  if (v15 - 2 != a1)
  {
    *a1 = *result;
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v8;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(void *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 2;
        v10 = (*a3)(a1[2], a1[3], *a1, a1[1]);
        v11 = a2 - 16;
        v12 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, a1[3]);
        if ((v10 & 1) == 0)
        {
          if (v12)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
            if ((*a3)(a1[2], a1[3], *a1, a1[1]))
            {
              v20 = *a1;
              *a1 = *v9;
              *v9 = v20;
            }
          }

          return 1;
        }

        if (v12)
        {
          v13 = *a1;
          *a1 = *v11;
        }

        else
        {
          v23 = *a1;
          *a1 = *v9;
          *v9 = v23;
          if (!(*a3)(*(a2 - 2), *(a2 - 1), a1[2], a1[3]))
          {
            return 1;
          }

          v13 = *v9;
          *v9 = *v11;
        }

        *v11 = v13;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 16;
    if ((*a3)(*(a2 - 2), *(a2 - 1), *a1, a1[1]))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v15 = (*a3)(a1[2], a1[3], *a1, a1[1]);
  v16 = (a1 + 4);
  v17 = (*a3)(a1[4], a1[5], *v14, a1[3]);
  if (v15)
  {
    if (v17)
    {
      v18 = *a1;
      *a1 = *v16;
    }

    else
    {
      v24 = *a1;
      *a1 = *v14;
      *v14 = v24;
      if (!(*a3)(a1[4], a1[5], a1[2], a1[3]))
      {
        goto LABEL_29;
      }

      v18 = *v14;
      *v14 = *v16;
    }

    *v16 = v18;
  }

  else if (v17)
  {
    v21 = *v14;
    *v14 = *v16;
    *v16 = v21;
    if ((*a3)(a1[2], a1[3], *a1, a1[1]))
    {
      v22 = *a1;
      *a1 = *v14;
      *v14 = v22;
    }
  }

LABEL_29:
  v25 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((*a3)(*v25, *(v25 + 1), *v16, *(v16 + 1)))
    {
      v28 = *v25;
      v29 = *(v25 + 1);
      v30 = v26;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v30 -= 16;
        if (((*a3)(v28, v29, *(v31 + 2), *(v31 + 3)) & 1) == 0)
        {
          v32 = (a1 + v30 + 48);
          goto LABEL_37;
        }
      }

      v32 = a1;
LABEL_37:
      *v32 = v28;
      v32[1] = v29;
      if (++v27 == 8)
      {
        return v25 + 16 == a2;
      }
    }

    v16 = v25;
    v26 += 16;
    v25 += 16;
    if (v25 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,_NSRange*>(char *a1, char *a2, char *a3, uint64_t (**a4)(void, void, uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *(v12 + 1), *a1, *(a1 + 1)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v18 = *a1;
        v15 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(a1, (v15 + 16), a4, (v15 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(uint64_t result, unsigned int (**a2)(void, void, void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v17 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(*v11, v11[1], v11[2], v11[3]))
      {
        v11 += 2;
        v10 = v12;
      }

      result = (*a2)(*v11, v11[1], *v5, v5[1]);
      if ((result & 1) == 0)
      {
        v13 = *v5;
        v14 = v5[1];
        do
        {
          v15 = v11;
          *v5 = *v11;
          if (v17 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = (v6 + 16 * v16);
          if (2 * v10 + 2 < a3)
          {
            if ((*a2)(*v11, v11[1], v11[2], v11[3]))
            {
              v11 += 2;
              v16 = 2 * v10 + 2;
            }
          }

          result = (*a2)(*v11, v11[1], v13, v14);
          v5 = v15;
          v10 = v16;
        }

        while (!result);
        *v15 = v13;
        v15[1] = v14;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(_OWORD *a1, unsigned int (**a2)(void, void, uint64_t, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 4);
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 2), *(v12 - 1), v13, *(v12 + 1)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*>(uint64_t result, uint64_t a2, uint64_t (**a3)(void, void, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 16 * (v4 >> 1));
    v10 = (a2 - 16);
    result = (*a3)(*v9, v9[1], *(a2 - 16), *(a2 - 8));
    if (result)
    {
      v11 = *(a2 - 16);
      v12 = *(a2 - 8);
      do
      {
        v13 = v9;
        *v10 = *v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 16 * v8);
        result = (*a3)(*v9, v9[1], v11, v12);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v11;
      v13[1] = v12;
    }
  }

  return result;
}

uint64_t MOFullMethodName(uint64_t a1, const char *a2)
{
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCACA8];
  if (v4 == a1)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"+[%@ %@]", a1, NSStringFromSelector(a2)];
  }

  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"-[%@ %@]", v6, NSStringFromSelector(a2)];
}

CFDataRef _createASCIIData(const __CFString *a1, UInt8 a2, CFIndex a3, CFIndex a4)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  if (CStringPtr)
  {
    v9 = *MEMORY[0x277CBED00];

    return CFDataCreateWithBytesNoCopy(0, &CStringPtr[a3], a4, v9);
  }

  else
  {
    if (a4 < 1)
    {
      return 0;
    }

    Mutable = CFDataCreateMutable(0, a4);
    CFDataSetLength(Mutable, a4);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v14.location = a3;
    v14.length = a4;
    if (a4 != CFStringGetBytes(a1, v14, 0x600u, a2, 0, MutableBytePtr, a4, 0))
    {
      NSLog(@"*** %s: Unexpected string conversion error", "NSData *_createASCIIData(CFStringRef, UInt8, CFRange)");
    }

    return Mutable;
  }
}

void sub_25D3B3BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
}

{
}

void sub_25D3B4664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3B545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3B5668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3B57B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3B5934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3B5A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25D3B5BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3B5CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3B5E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSUImageSourceOrientation(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = [-[__CFDictionary objectForKey:](v1 objectForKey:{*MEMORY[0x277CD3410]), "intValue"}];

  result = 0;
  if ((v2 - 1) <= 7)
  {
    return TSUImageSourceOrientation___orientationMapping[v2 - 1];
  }

  return result;
}

void sub_25D3B69B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL TSUCGImageIsEmpty(CGImage *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  memset(data, 0, sizeof(data));
  v2 = CGBitmapContextCreateWithData(data, 1uLL, 1uLL, 8uLL, 1uLL, 0, 7u, 0, 0);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  CGContextDrawImage(v2, v6, a1);
  CFRelease(v2);
  return LOBYTE(data[0]) == 0;
}

void TSUSplitRectIntoSlices(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = *(MEMORY[0x277CBF398] + 16);
  v22 = *MEMORY[0x277CBF398];
  remainder.origin = v22;
  remainder.size = v21;
  slice.origin = v22;
  slice.size = v21;
  v28.origin = v22;
  v28.size = v21;
  v29.origin = v22;
  v29.size = v21;
  v24.origin = v22;
  v24.size = v21;
  v25.origin = v22;
  v25.size = v21;
  v26.origin = v22;
  v26.size = v21;
  CGRectDivide(*&a2, &slice, &remainder, a8, CGRectMinYEdge);
  CGRectDivide(remainder, &v29, &v28, a9, CGRectMaxYEdge);
  remainder.origin = v22;
  remainder.size = v21;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectDivide(v31, &v24, &remainder, a6, CGRectMinXEdge);
  CGRectDivide(remainder, &v26, &v25, a7, CGRectMaxXEdge);
  v17 = 0;
  v18 = a1 + 16;
  do
  {
    v19 = 0;
    v20 = v18;
    do
    {
      *(v20 - 16) = CGRectIntersection(*(&slice + v19), *(&v24 + v17));
      v20 += 96;
      v19 += 32;
    }

    while (v19 != 96);
    ++v17;
    v18 += 32;
  }

  while (v17 != 3);
}

UIImage *CGImagePNGRepresentationWithProperties(uint64_t a1)
{
  result = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:a1];
  if (result)
  {
    v2 = result;
    v3 = UIImagePNGRepresentation(result);

    return v3;
  }

  return result;
}

UIImage *CGImageJPEGRepresentation(uint64_t a1, CGFloat a2)
{
  result = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:a1];
  if (result)
  {
    v4 = result;
    v5 = UIImageJPEGRepresentation(result, a2);

    return v5;
  }

  return result;
}

__CFData *CGImageTIFFRepresentation(CGImage *a1)
{
  v2 = [MEMORY[0x277CBEB28] data];
  v3 = CGImageDestinationCreateWithData(v2, [*MEMORY[0x277CE1E80] identifier], 1uLL, 0);
  CGImageDestinationAddImage(v3, a1, 0);
  v4 = CGImageDestinationFinalize(v3);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double TSUPointOnCurve(float64x2_t *a1, double a2)
{
  __asm { FMOV            V5.2D, #3.0 }

  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[1], _Q5), a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(*a1, 1.0 - a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[2], _Q5), a2), a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(a1[3], a2), a2), a2);
  return result;
}

double TSUMultiplyRectScalar(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

uint64_t TSUCustomFormatTokenIdentifierCharacterForTokenType(unsigned int a1)
{
  if (a1 < 7)
  {
    return aSidcptf[a1];
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"unichar TSUCustomFormatTokenIdentifierCharacterForTokenType(TSUCustomNumberFormatTokenType)"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormatTokenizer.m"], 352, 0, "Invalid custom number format token type!");
  +[OITSUAssertionHandler logBacktraceThrottled];
  return 83;
}

void sub_25D3BA8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3BD604(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t SFUDeriveAes128Key(uint64_t a1, unint64_t a2, unsigned int a3, char *a4, uint64_t a5, void *a6, size_t a7)
{
  if (a4)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = !v7 && a5 == 16 && a3 > 0x3E7 && HIDWORD(a2) == 0;
  v11 = v10;
  if (v10)
  {
    v18 = a7 + 4;
    if (a7 + 4 <= 0x14)
    {
      v18 = 20;
    }

    v19 = malloc_type_calloc(1uLL, v18 + 40, 0x100004077774924uLL);
    sfu_pbkdf2(hmacsha1, 20, a1, a2, a6, a7, a3, a4, 0x10u, v19);
    free(v19);
  }

  return v11;
}

void TSUEllipseParametricAngleWithPolarAngle(double a1, double a2, double a3)
{
  if (a2 != 0.0 && a3 != 0.0)
  {
    v5 = a1;
    for (i = 0.0; v5 >= 360.0; v5 = v5 + -360.0)
    {
      i = i + 1.0;
    }

    for (; v5 < 0.0; v5 = v5 + 360.0)
    {
      i = i + -1.0;
    }

    if (v5 < 0.0 || v5 >= 360.0)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSUEllipseParametricAngleWithPolarAngle(CGFloat, CGFloat, CGFloat)"}];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPathAdditions.m"], 37, 0, "Angle out of range");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    if (v5 / 90.0 - floor(v5 / 90.0) >= 0.01 && ceil(v5 / 90.0) - v5 / 90.0 >= 0.01)
    {
      v8 = __sincos_stret(v5 * 3.14159265 / 180.0);
        ;
      }

        ;
      }

      if (j < 0.0 || j >= 360.0)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSUEllipseParametricAngleWithPolarAngle(CGFloat, CGFloat, CGFloat)"}];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPathAdditions.m"], 55, 0, "Angle out of range");
        +[OITSUAssertionHandler logBacktraceThrottled];
      }
    }
  }
}

void sub_25D3C0B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUDataRepresentation readIntoData:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUDataRepresentation.m"], 263, 0, "Caught exception trying to read storage into NSMutableData: %@");
    +[OITSUAssertionHandler logBacktraceThrottled];
    [v9 setLength:v10];
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t SFUCGDataProviderSkipForward(void *a1, uint64_t a2)
{
  v4 = [a1 offset];
  [a1 seekToOffset:v4 + a2];
  return [a1 offset] - v4;
}

void SFUCGDataProviderReleaseInfo(void *a1)
{
  [a1 closeLocalStream];
}

void sub_25D3C1428(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

FILE *SFUFileOpen(void *a1, const char *a2)
{
  v3 = fopen([a1 fileSystemRepresentation], a2);
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileOpenError" format:{@"Could not open %@", a1}];
  }

  return v3;
}

void sub_25D3C29E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_25D3C2EE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    free(v3);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_25D3C3538(void *a1)
{
  objc_begin_catch(a1);
  free(v1);
  objc_exception_rethrow();
}

void sub_25D3C46EC(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    if (TSUErrorCat_init_token != -1)
    {
      +[OISFUZipArchive isZipArchiveAtPath:];
    }

    objc_end_catch();
  }

  JUMPOUT(0x25D3C46BCLL);
}

void sub_25D3C4D28(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25D3C4CC8);
  }

  _Unwind_Resume(a1);
}

void sub_25D3C5110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_25D3C5C8C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x25D3C5C18);
}

void sub_25D3C62A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3C6C80(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x25D3C6C8CLL);
  }

  _Unwind_Resume(v2);
}

void sub_25D3C6CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x25D3C6CBCLL);
  }

  objc_terminate();
}

uint64_t SFUZipCurrentDosTime()
{
  v3 = time(0);
  v0 = localtime(&v3);
  tm_year = v0->tm_year;
  if (tm_year <= 81)
  {
    tm_year = 81;
  }

  return ((tm_year << 25) + 1610612736) | ((v0->tm_mon << 21) + 0x200000) | (v0->tm_mday << 16) | (v0->tm_hour << 11) | (32 * v0->tm_min) | (v0->tm_sec >> 1);
}

void sub_25D3C8ED0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_25D3C9344(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_25D3C9920(void *a1)
{
  objc_begin_catch(a1);
  fclose(v1);
  objc_exception_rethrow();
}

uint64_t SFUHashWithSeed(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    do
    {
      v4 = *a1++;
      a3 = (16777619 * a3) ^ v4;
      --a2;
    }

    while (a2);
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"unsigned int SFUHashWithSeed(const char *, size_t, unsigned int)"}];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUHash.m"], 25, 0, "SFUHash must have at least one byte of input.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return a3;
}

CGPath *TSUCreateRoundRectPathForRectWithRadius(double a1, double a2, double a3, double a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  v11 = Mutable;
  if (a5 == 0.0)
  {
    CGPathAddRectSafe(Mutable, 0, a1, a2, a3, a4);
  }

  else
  {
    v12 = a3 > a5 + a5 && a4 > a5 + a5;
    v37 = a5;
    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    if (v12)
    {
      *&v18 = CGRectInset(*&v13, a5, a5);
    }

    else
    {
      TSUCenterOfRect(a1, a2, a3, a4);
      TSURectWithOriginAndSize(v17);
    }

    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    MaxX = CGRectGetMaxX(*&v18);
    v38.origin.x = a1;
    v38.origin.y = a2;
    v38.size.width = a3;
    v38.size.height = a4;
    v33 = CGRectGetMaxX(v38);
    v39.origin.x = v22;
    v39.origin.y = v23;
    v39.size.width = v24;
    v39.size.height = v25;
    MaxY = CGRectGetMaxY(v39);
    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    v35 = CGRectGetMaxY(v40);
    v41.origin.x = v22;
    v41.origin.y = v23;
    v41.size.width = v24;
    v41.size.height = v25;
    MinY = CGRectGetMinY(v41);
    v42.origin.x = a1;
    v42.origin.y = a2;
    v42.size.width = a3;
    v42.size.height = a4;
    v26 = CGRectGetMinY(v42);
    v27 = a1;
    v28 = v26;
    v43.origin.x = v27;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    MinX = CGRectGetMinX(v43);
    v44.origin.x = v22;
    v44.origin.y = v23;
    v44.size.width = v24;
    v44.size.height = v25;
    v30 = CGRectGetMinX(v44);
    CGPathMoveToPointSafe(v11, 0, v30, v28);
    CGPathAddLineToPointSafe(v11, 0, MaxX, v28);
    CGPathAddArcToPointSafe(v11, 0, v33, v28, v33, MinY, v37);
    CGPathAddLineToPointSafe(v11, 0, v33, MaxY);
    CGPathAddArcToPointSafe(v11, 0, v33, v35, MaxX, v35, v37);
    CGPathAddLineToPointSafe(v11, 0, v30, v35);
    CGPathAddArcToPointSafe(v11, 0, MinX, v35, MinX, MaxY, v37);
    CGPathAddLineToPointSafe(v11, 0, MinX, MinY);
    CGPathAddArcToPointSafe(v11, 0, MinX, v28, v30, v28, v37);
    CGPathCloseSubpath(v11);
  }

  return v11;
}

void std::vector<CGRect>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<CGRect>::__append(a1, a2 - v2);
  }
}

char *std::vector<CGRect>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = (&v6[-*a1] >> 5) + 1;
    if (v12 >> 59)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = v7 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v33 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1, v15);
    }

    v30 = 0;
    v31 = 32 * v16;
    v32 = (32 * v16);
    std::__split_buffer<CGRect>::emplace_back<CGRect const&>(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v17;
    a1[1] = v6 + 32;
  }

  else
  {
    v8 = __src + 32;
    if (v6 < 0x20)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 32;
      v10 = *(v6 - 1);
      *v6 = *(v6 - 2);
      *(v6 + 1) = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 32, __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 32;
    if (v25)
    {
      v26 = 0;
    }

    v27 = &a3[v26];
    v28 = *(v27 + 1);
    *v4 = *v27;
    *(v4 + 1) = v28;
  }

  return v4;
}

void sub_25D3CCD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGRect>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__split_buffer<CGRect>::emplace_back<CGRect const&>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 4;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1[4], v11);
    }

    v7 = ((v6 >> 5) + 1) / -2;
    v8 = ((v6 >> 5) + 1) / 2;
    v9 = &v5[-32 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-32 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[32 * v7];
    a1[2] = &v9[v10];
  }

  result = *a2;
  v13 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v13;
  a1[2] += 32;
  return result;
}

uint64_t TSUBase64UpdateBase64StringWithChunk(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 3)
  {
    v5 = 0;
    v6 = (a1 + 2 * a2 + 4);
    do
    {
      *(v6 - 2) = ENCODE_ALPHABETS[*(a3 + v5) >> 2];
      *(v6 - 1) = ENCODE_ALPHABETS[(*(a3 + v5 + 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(a3 + v5) & 3))];
      *v6 = ENCODE_ALPHABETS[(*(a3 + v5 + 2) >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(a3 + v5 + 1) & 0xF))];
      a2 += 4;
      v6[1] = ENCODE_ALPHABETS[*(a3 + v5 + 2) & 0x3F];
      v4 = v5 + 3;
      v7 = v5 + 6;
      v6 += 4;
      v5 += 3;
    }

    while (v7 <= a4);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < a4)
  {
    v8 = *(a3 + v4);
    v9 = (a1 + 2 * a2);
    *v9 = ENCODE_ALPHABETS[v8 >> 2];
    v10 = v4 + 1;
    if (v10 >= a4)
    {
      v12 = 16 * (v8 & 3);
      v13 = 61;
    }

    else
    {
      v11 = *(a3 + v10);
      v12 = (16 * (v8 & 3)) | (v11 >> 4);
      v13 = ENCODE_ALPHABETS[4 * (v11 & 0xF)];
    }

    v9[1] = ENCODE_ALPHABETS[v12];
    v9[2] = v13;
    v9[3] = 61;
    a2 += 4;
  }

  return a2;
}

void TSUFormatStructRelease(id *a1)
{
  v1 = *a1;
  if (*a1 == 266 || v1 == 261)
  {
    v2 = a1 + 2;
  }

  else
  {
    if ((v1 - 270) > 2)
    {
      return;
    }

    v2 = a1 + 1;
  }

  v3 = *v2;
}

id *TSUFormatStructRetain(id *result)
{
  v1 = *result;
  if (*result == 266 || v1 == 261)
  {
    v2 = result + 2;
  }

  else
  {
    if ((v1 - 270) > 2)
    {
      return result;
    }

    v2 = result + 1;
    v4 = result[2];
  }

  v3 = *v2;

  return v3;
}

uint64_t TSUFormatStructCustomEqualKeys(void **a1, void **a2)
{
  v2 = *a1;
  if (v2 == *a2)
  {
    return 1;
  }

  if (*a2)
  {
    return [v2 isEqual:?];
  }

  return 0;
}

uint64_t TSUFormatStructHash(unsigned int *a1)
{
  v1 = *a1;
  if ((v1 & 0xFFFFFFFC) != 0x100)
  {
    if (v1 > 267)
    {
      if (v1 == 268)
      {
        v5 = (4 * (a1[3] | *(a1 + 2))) | HIDWORD(*(a1 + 2));
        v4 = 268;
        return v5 ^ v4;
      }

      if (v1 == 269)
      {
        return (((*(a1 + 4) >> 7) | (*(a1 + 4) << 9)) & 0x1FFFELL | *(a1 + 10) & 1) ^ 0x10D;
      }
    }

    else
    {
      if (v1 == 261)
      {
        v8 = __rbit32(a1[2]) >> 30;
        return [*(a1 + 2) hash] ^ 0x105 ^ v8;
      }

      if (v1 == 262)
      {
        v5 = *(a1 + 8);
        v4 = 262;
        return v5 ^ v4;
      }
    }

    if ((v1 - 270) > 2)
    {
      if ((v1 - 264) >= 2)
      {
        if (v1 != 266)
        {
          return v1;
        }

        v10 = *(a1 + 1);
        v11 = [objc_msgSend(*(a1 + 2) "choices")];
        v5 = v10 ^ HIDWORD(v10);
        v4 = v11 ^ 0x10A;
        return v5 ^ v4;
      }

      v9 = *(a1 + 6);
      v12[0] = *(a1 + 2);
      v12[1] = v9;
      v7 = TSUFormatStructControlHash(v12);
    }

    else
    {
      v7 = [*(a1 + 1) hash];
    }

    v1 ^= v7;
    return v1;
  }

  v2 = vdupq_n_s64(a1[2]);
  v3 = vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_25D6FA9C0), xmmword_25D6FA9F0), vandq_s8(vshlq_u64(v2, xmmword_25D6FA9D0), xmmword_25D6FA9E0));
  v4 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  v5 = a1[2] ^ v1;
  return v5 ^ v4;
}

unint64_t TSUFormatStructControlHash(uint64_t a1)
{
  v2 = TSUHash(a1, 8);
  v3 = TSUHash((a1 + 8), 8) ^ v2;
  return v3 ^ TSUHash((a1 + 16), 8) ^ *(a1 + 24) ^ ((*(a1 + 28) >> 2) & 3 | (4 * (*(a1 + 28) & 3)));
}

void sub_25D3D0530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_25D3D0844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

os_log_t TSULogCreateCategory(char *category)
{
  v1 = os_log_create("com.apple.iwork", category);

  return v1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void tsuSaObjectPage::~tsuSaObjectPage(tsuSaObjectPage *this)
{
  *this = &unk_286EC40E8;
  for (i = 8; i != 2056; i += 8)
  {
    v3 = *(this + i);
    *(this + i) = 0;
  }

  v4 = 2048;
  do
  {

    v4 -= 8;
  }

  while (v4);
}

{
  tsuSaObjectPage::~tsuSaObjectPage(this);

  JUMPOUT(0x25F897000);
}

void tsuSaObjectPage::foreach(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  v7 = a1 + 8;
  v9 = a2;
  do
  {
    if (*a4 == 1)
    {
      break;
    }

    v8 = *(v7 + v6);
    if (v8)
    {
      v9[2](v9, v8, a3, a4);
    }

    ++a3;
    v6 += 8;
  }

  while (v6 != 2048);
}

void tsuSaIndexPage::~tsuSaIndexPage(tsuSaIndexPage *this)
{
  *this = &unk_286EC4118;
  for (i = 8; i != 2056; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      *(this + i) = 0;
    }
  }
}

{
  tsuSaIndexPage::~tsuSaIndexPage(this);

  JUMPOUT(0x25F897000);
}

void tsuSaIndexPage::foreach(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = 0;
  v8 = a1 + 8;
  v9 = a3 << 8;
  do
  {
    if (*a4 == 1)
    {
      break;
    }

    v10 = *(v8 + v7);
    if (v10)
    {
      (*(*v10 + 16))(v10, v11, v9, a4);
    }

    v9 += 256;
    v7 += 8;
  }

  while (v7 != 2048);
}

void sub_25D3D21B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t tsuSaObjectPage::setObjectAtIndex(tsuSaObjectPage *this, objc_object *a2, uint64_t a3)
{
  v4 = this + 8 * a3;
  v7 = *(v4 + 1);
  v5 = (v4 + 8);
  v6 = v7;
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2 != 0;
  }

  objc_storeStrong(v5, a2);

  return v9;
}

void sub_25D3D2B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3D5CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3D6670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3D7B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3D7FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3D8114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3D8244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3D8588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3D95FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__11(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__11(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_25D3D9850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TSU::UUIDData<TSP::UUIDData>::NSStringValue(const unsigned __int8 *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  uuid_unparse_upper(a1, v3);
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];

  return v1;
}

void sub_25D3D9AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_25D3D9C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_25D3D9D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::~__hash_table(uint64_t a1)
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

uint64_t *std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__erase_unique<TSU::UUIDData<TSP::UUIDData>>(void *a1, void *a2)
{
  result = std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::find<TSU::UUIDData<TSP::UUIDData>>(a1, a2);
  if (result)
  {
    std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::find<TSU::UUIDData<TSP::UUIDData>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 ^ *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == *a2 && result[3] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__emplace_unique_key_args<TSU::UUIDData<TSP::UUIDData>,TSU::UUIDData<TSP::UUIDData> const&>(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__rehash<true>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__do_rehash<true>(a1, prime);
    }
  }
}