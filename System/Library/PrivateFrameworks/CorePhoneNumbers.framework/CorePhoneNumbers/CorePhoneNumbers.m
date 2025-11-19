CFStringRef PNCopyBestGuessCountryCodeForNumber(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable(a1);
  if (CFStringGetLength(v1) && CFStringGetCharacterAtIndex(v1, 0) == 43)
  {
    v2 = *MEMORY[0x277CBECE8];
    v6.length = CFStringGetLength(v1) - 1;
    v6.location = 1;
    v3 = CFStringCreateWithSubstring(v2, v1, v6);
    v4 = _PNCopyCountryCodeForInternationalCode(v3);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v1);
  return v4;
}

CFStringRef _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length)
  {
    v3 = Length;
    v4 = 2 * Length;
    v5 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
    v6 = malloc_type_malloc(v4, 0x1000040BDFB0063uLL);
    v14.location = 0;
    v14.length = v3;
    CFStringGetCharacters(a1, v14, v5);
    if (v3 < 1)
    {
      goto LABEL_12;
    }

    v7 = 0;
    v8 = v5;
    do
    {
      v10 = *v8++;
      v9 = v10;
      if (pn_uset_expandedPresentationSetContains() == 1 && !_IsInFormattingSet(v9))
      {
        v6[v7++] = v9;
      }

      --v3;
    }

    while (v3);
    if (v7)
    {
      v11 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], v6, v7);
    }

    else
    {
LABEL_12:
      v11 = &stru_2858F2AC8;
    }

    free(v5);
    free(v6);
    return v11;
  }

  return CFRetain(a1);
}

uint64_t pn_uset_expandedPresentationSetContains()
{
  os_unfair_lock_lock(&__pn_uset_unfair_lock);
  if (!__pn_uset_getExpandedPresentationSet_set)
  {
    os_unfair_lock_assert_owner(&__pn_uset_unfair_lock);
    if ((__pn_uset_getExpandedPresentationPattern_didInit & 1) == 0)
    {
      u_charsToUChars("[[+][:Nd:][,;][\\ '()\\-./<>\\[\\]][*#][A-Za-z]]", __pn_uset_getExpandedPresentationPattern_pattern, 46);
      __pn_uset_getExpandedPresentationPattern_didInit = 1;
    }

    __pn_uset_getExpandedPresentationSet_set = uset_openPattern();
  }

  os_unfair_lock_unlock(&__pn_uset_unfair_lock);
  result = __pn_uset_getExpandedPresentationSet_set;
  if (__pn_uset_getExpandedPresentationSet_set)
  {

    JUMPOUT(0x24C19BE20);
  }

  return result;
}

uint64_t _IsInFormattingSet(unsigned int a1)
{
  result = 1;
  if (a1 > 0x2F || ((1 << a1) & 0xE30100000000) == 0)
  {
    v3 = a1 - 8236;
    v4 = a1 == 160;
    return v3 < 2 || v4;
  }

  return result;
}

uint64_t UIPhoneFormatCountryGetInfoIndex(unsigned int *a1, CFStringRef theString)
{
  v19 = *MEMORY[0x277D85DE8];
  if (theString && (Length = CFStringGetLength(theString), Length >= 1))
  {
    v5 = Length;
    valuePtr = 0;
    os_unfair_lock_lock_with_options();
    IndexCache = __CFPhoneNumberCountryGetIndexCache();
    Value = CFDictionaryGetValue(IndexCache, theString);
    os_unfair_lock_unlock(&__CFPhoneNumberCountryCacheUnfairLock);
    if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
    {
      result = valuePtr;
    }

    else
    {
      MEMORY[0x28223BE20]();
      CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
      if ((CStringPtr || (CStringPtr = &v17 - ((v5 + 16) & 0xFFFFFFFFFFFFFFF0), CFStringGetCString(theString, CStringPtr, v5 + 1, 0x8000100u))) && a1 && (v10 = *a1, v17 = 0, v10))
      {
        v11 = (a1 + 2);
        v12 = 1;
        while (strcasecmp(v11, CStringPtr))
        {
          v17 = v12;
          v11 += 12;
          ++v12;
          if (!--v10)
          {
            goto LABEL_14;
          }
        }

        v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &v17);
        if (v14)
        {
          v15 = v14;
          os_unfair_lock_lock_with_options();
          v16 = __CFPhoneNumberCountryGetIndexCache();
          CFDictionarySetValue(v16, theString, v15);
          os_unfair_lock_unlock(&__CFPhoneNumberCountryCacheUnfairLock);
          CFRelease(v15);
        }

        result = v17;
      }

      else
      {
LABEL_14:
        result = 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void __PNGetFormatFileHeader_block_invoke()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = CFPhoneNumberBundleCopyRulesetFileSystemPath();
  if (v0)
  {
    v1 = v0;
    CStringPtr = CFStringGetCStringPtr(v0, 0x8000100u);
    Length = CFStringGetLength(v1);
    if (CStringPtr || (CStringPtr = v16 - ((Length + 16) & 0xFFFFFFFFFFFFFFF0), CFStringGetCString(v1, CStringPtr, Length + 1, 0x8000100u)))
    {
      v4 = open(CStringPtr, 0);
      if (v4 < 0)
      {
        v11 = *MEMORY[0x277D85DF8];
        v12 = __error();
        fprintf(v11, "Attempt to open file at %s failed with errno (%d).\n", CStringPtr, *v12);
      }

      else
      {
        v5 = v4;
        v6 = lseek(v4, 0, 2);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v13 = *MEMORY[0x277D85DF8];
          v14 = __error();
          fprintf(v13, "Attempt to locate end of file at %s failed with errno (%d).\n", CStringPtr, *v14);
        }

        else
        {
          sFormatFile = mmap(0, v6, 1, 2, v5, 0);
          if (sFormatFile == -1)
          {
            v7 = *MEMORY[0x277D85DF8];
            v8 = __error();
            fprintf(v7, "Attempt to memory map file at %s failed with errno (%d).\n", CStringPtr, *v8);
            sFormatFile = 0;
          }
        }

        close(v5);
      }
    }

    else
    {
      fwrite("Could not obtain ruleset file system path.\n", 0x2BuLL, 1uLL, *MEMORY[0x277D85DF8]);
    }

    CFRelease(v1);
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = *MEMORY[0x277D85DE8];

    fwrite("Could not obtain ruleset file system path.\n", 0x2BuLL, 1uLL, v9);
  }
}

uint64_t _PNDecomposeForCountry(char *a1, const __CFString *a2, uint64_t a3, int a4)
{
  v8 = PNGetFormatFileHeader();
  if (!a2 || !v8)
  {
    return 0;
  }

  InfoIndex = UIPhoneFormatCountryGetInfoIndex(v8, a2);
  if (InfoIndex == -1)
  {
    *(a3 + 48) = a1;
    *(a3 + 56) = strlen(a1);
    return 0;
  }

  return _DecomposePhoneNumberWithCountryIndex(a1, InfoIndex, a3, 0, a4);
}

uint64_t PNGetFormatFileHeader()
{
  result = sOverrideFormatFile;
  if (!sOverrideFormatFile)
  {
    if (PNGetFormatFileHeader_initOnce != -1)
    {
      PNGetFormatFileHeader_cold_1();
    }

    return sFormatFile;
  }

  return result;
}

__CFBundle *CFPhoneNumberBundleCopyRulesetFileSystemPath()
{
  result = CFPhoneNumberBundleCopyRulesetURL();
  if (result)
  {
    v1 = result;
    v2 = CFURLCopyFileSystemPath(result, kCFURLPOSIXPathStyle);
    CFRelease(v1);
    return v2;
  }

  return result;
}

__CFBundle *CFPhoneNumberBundleCopyRulesetURL()
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.CorePhoneNumbers");
  if (result)
  {

    return CFBundleCopyResourceURL(result, @"CorePhoneNumbers.ruleset", 0, 0);
  }

  return result;
}

void *_PNCopyStrippedNumberWithoutPauses(const __CFString *a1, __CFString *a2, CFStringRef *a3, int a4)
{
  if (_PNCopyStrippedNumberWithoutPauses_initOnce != -1)
  {
    _PNCopyStrippedNumberWithoutPauses_cold_1();
  }

  result.location = 0;
  result.length = 0;
  v8 = MEMORY[0x277CBECE8];
  if (a4)
  {
    v9 = _PNCopyBestGuessNumberForCountry(a1, a2, 0, 0, &v20);
    v10 = strlen(v9);
    v11 = CFStringCreateWithBytesNoCopy(*v8, v9, v10, 0x8000100u, 0, *MEMORY[0x277CBECF0]);
  }

  else
  {
    v11 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable(a1);
  }

  v12 = v11;
  v13 = _PNCopyStrippedNumberWithoutPauses_pauses;
  v21.length = CFStringGetLength(v11);
  v21.location = 0;
  if (CFStringFindCharacterFromSet(v12, v13, v21, 0, &result))
  {
    v14 = *v8;
    v22.length = result.location;
    v22.location = 0;
    v15 = CFStringCreateWithSubstring(*v8, v12, v22);
    if (a3)
    {
      location = result.location;
      Length = CFStringGetLength(v12);
      v23.length = Length - result.location;
      v23.location = location;
      *a3 = CFStringCreateWithSubstring(v14, v12, v23);
    }
  }

  else
  {
    v15 = CFRetain(v12);
  }

  CFRelease(v12);
  return v15;
}

char *PNCopyBestGuessNormalizedNumberForCountry(char *result, __CFString *a2)
{
  if (result)
  {
    if (a2)
    {
      memset(v4, 0, sizeof(v4));
      return _PNCopyBestGuessNumberForCountry(result, a2, 1, v4, &v3);
    }

    else
    {

      return _PNCopyNormalized(result);
    }
  }

  return result;
}

_BYTE *_PNCopyBestGuessNumberForCountry(const __CFString *a1, __CFString *a2, int a3, __int128 *a4, _BYTE *a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = &v45;
  }

  v45 = 0uLL;
  v46 = 0uLL;
  if (a3)
  {
    v10 = _PNCopyNormalized(a1);
  }

  else
  {
    v11 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable(a1);
    Length = CFStringGetLength(v11);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    *usedBufLen = 0;
    v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    v55.location = 0;
    v55.length = Length;
    CFStringGetBytes(v11, v55, 0x8000100u, 0, 0, v10, MaximumSizeForEncoding, usedBufLen);
    v10[*usedBufLen] = 0;
    CFRelease(v11);
  }

  v14 = _PNDecomposeForCountry(v10, a2, v9, 1);
  *a5 = v14;
  if (v14)
  {
    goto LABEL_8;
  }

  v29 = PNGetFormatFileHeader();
  if (!a2)
  {
    goto LABEL_8;
  }

  v30 = v29;
  if (!v29)
  {
    goto LABEL_8;
  }

  InfoIndex = UIPhoneFormatCountryGetInfoIndex(v29, a2);
  if (InfoIndex == -1)
  {
    goto LABEL_8;
  }

  v32 = InfoIndex;
  Count = UIPhoneFormatCountryGetCount(v30);
  if (!v10)
  {
    goto LABEL_8;
  }

  if (!*(&v30[3 * Count + 3] + v30[3 * v32 + 3]))
  {
    goto LABEL_8;
  }

  v34 = _PNGetITUCountryCode(a2);
  if (!v34)
  {
    goto LABEL_8;
  }

  v35 = v34;
  v36 = strlen(v10);
  v37 = strlen(v35);
  if (!v36 || v36 < v37 || strncmp(v10, v35, v37))
  {
    goto LABEL_8;
  }

  v15 = malloc_type_malloc(v36 + 2, 0x100004077774924uLL);
  *v15 = 43;
  v15[v36 + 1] = 0;
  strncpy(v15 + 1, v10, v36);
  v38 = strlen(v15);
  v39 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v15, v38, 0x8000100u, 0, *MEMORY[0x277CBED00]);
  valid = _PNIsValidPhoneNumberForCountry(v39, a2, 0, 0, 1);
  CFRelease(v39);
  if ((valid & 1) == 0)
  {
    free(v15);
LABEL_8:
    v15 = v10;
    goto LABEL_9;
  }

  *a5 = _PNDecomposeForCountry(v15, a2, v9, 1);
  v41 = &v45;
  if (a4)
  {
    v41 = a4;
  }

  if (v10 == v41[6])
  {
    v44 = cpn_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      *usedBufLen = 138412802;
      *&usedBufLen[4] = a1;
      v50 = 2112;
      v51 = a2;
      v52 = 2080;
      v53 = v10;
      _os_log_fault_impl(&dword_2461B8000, v44, OS_LOG_TYPE_FAULT, "Decompose failure for digits %@ ISO country code %@; cannot deallocate %s", usedBufLen, 0x20u);
    }
  }

  else
  {
    free(v10);
  }

LABEL_9:
  if (*v15 == 43)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = PNGetFormatFileHeader();
    if (a2)
    {
      v17 = v16;
      if (v16)
      {
        v18 = UIPhoneFormatCountryGetInfoIndex(v16, a2);
        if (v18 != -1)
        {
          v19 = v18;
          v20 = v17 + 1;
          v21 = &v17[3 * UIPhoneFormatCountryGetCount(v17) + 1];
          v22 = v20[3 * v19 + 2];
          *usedBufLen = 0;
          v23 = strlen(v15);
          if (_InternationalPrefixForDigitsInCountry(v21 + v22, v19, 0, v15, 0, v23, 0, usedBufLen))
          {
            if (*usedBufLen)
            {
              v24 = strlen(*usedBufLen);
              v25 = strdup(&v15[v24]);
              if (_PNDecomposeForCountry(v25, a2, &v45, 1))
              {
                if (v25)
                {
                  v26 = v45;
                  v27 = v46;
                  v28 = v48;
                  v9[2] = v47;
                  v9[3] = v28;
                  *v9 = v26;
                  v9[1] = v27;
                  *a5 = 1;
                  free(v15);
                  v15 = v25;
                }
              }

              else
              {
                free(v25);
              }
            }
          }
        }
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t CFPhoneNumberGetITUCountryCodeForISOCountryCode(__CFString *a1)
{
  if (!a1)
  {
    return -1;
  }

  if (!CFStringGetLength(a1))
  {
    return -1;
  }

  v2 = _PNCopyInternationalCodeForCountry(a1);
  if (!v2)
  {
    return -1;
  }

  v3 = v2;
  IntValue = CFStringGetIntValue(v2);
  if (IntValue > 0x7FFFFFFE)
  {
    v5 = -1;
  }

  else
  {
    v5 = IntValue;
  }

  v6 = v5;
  CFRelease(v3);
  return v6;
}

CFStringRef CFPhoneNumberCreate(const __CFAllocator *a1, CFStringRef theString, const __CFString *a3)
{
  v3 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      if (CFPhoneNumberStringIsEncodingASCII(v3))
      {
        Copy = CFRetain(v3);
      }

      else
      {
        Copy = CFPhoneNumberStringTransformCreateCopy(a1, v3, 0, @"NFD; Any-Latin; [:Mn:] Remove; Latin-ASCII; [:^ASCII:] Remove; NFC", 0);
      }

      v7 = Copy;
      if (Copy)
      {
        if (!CFStringGetLength(Copy))
        {
          goto LABEL_25;
        }

        v8 = PNCopyBestGuessCountryCodeForNumber(v7);
        if (v8)
        {
          v9 = v8;
          if (CFStringGetLength(v8))
          {
LABEL_19:
            if (CFPhoneNumberGetITUCountryCodeForISOCountryCode(v9) == -1)
            {
              v3 = 0;
            }

            else
            {
              if (CFPhoneNumberGetTypeID_initOnce != -1)
              {
                CFPhoneNumberGetTypeID_cold_1();
              }

              Instance = _CFRuntimeCreateInstance();
              v3 = Instance;
              if (Instance)
              {
                Instance[2] = 0u;
                *(Instance + 57) = 0u;
                Instance[3] = 0u;
                Instance[1] = 0u;
                *(Instance + 6) = CFPhoneNumberStringCreateLowercaseCopy(a1, v9);
                v3[1].info = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable(v7);
                v3->length = _PNCopyStrippedNumberWithoutPauses(v7, v3[1].data, &v3[1], 0);
                v12 = CFStringGetLength(v3[1].info) >= 1 && CFStringGetCharacterAtIndex(v3[1].info, 0) == 43;
                LOBYTE(v3[2].info) = v12;
              }
            }

            CFRelease(v7);
            goto LABEL_30;
          }

          CFRelease(v9);
        }

LABEL_13:
        if (a3)
        {
          v10 = (CFPhoneNumberStringIsEncodingASCII(a3) ? CFRetain(a3) : CFPhoneNumberStringTransformCreateCopy(a1, v3, 0, @"NFD; Any-Latin; [:Mn:] Remove; Latin-ASCII; [:^ASCII:] Remove; NFC", 0));
          v9 = v10;
          if (v10)
          {
            goto LABEL_19;
          }
        }

LABEL_25:
        v3 = 0;
        v9 = v7;
LABEL_30:
        CFRelease(v9);
        return v3;
      }
    }

    else
    {
      v7 = CFRetain(v3);
      if (v7)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t CFPhoneNumberStringIsEncodingASCII(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  memset(v20, 0, sizeof(v20));
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
  if (Length < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  for (i = 64; ; ++i)
  {
    if (v7 >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v7;
    }

    v10 = v25;
    if (v25 <= v7)
    {
      goto LABEL_16;
    }

    if (v22)
    {
      v11 = &v22[v24];
LABEL_12:
      v12 = v11[v7];
      goto LABEL_15;
    }

    if (!v23)
    {
      if (v27 <= v7 || v6 > v7)
      {
        v14 = -v9;
        v15 = v9 + v5;
        v16 = i - v9;
        v17 = v7 + v14;
        v18 = v17 + 64;
        if (v17 + 64 >= v25)
        {
          v18 = v25;
        }

        v26 = v17;
        v27 = v18;
        if (v25 >= v16)
        {
          v10 = v16;
        }

        v28.location = v17 + v24;
        v28.length = v10 + v15;
        CFStringGetCharacters(theString, v28, v20);
        v6 = v26;
      }

      v11 = v20 - v6;
      goto LABEL_12;
    }

    v12 = v23[v24 + v7];
LABEL_15:
    if (v12 > 0x7Fu)
    {
      break;
    }

LABEL_16:
    ++v7;
    --v5;
    if (Length == v7)
    {
      return 1;
    }
  }

  return 0;
}

unsigned int *_PNCopyInternationalCodeForCountry(unsigned int *a1)
{
  result = _PNGetITUCountryCode(a1);
  if (result)
  {
    v2 = result;
    v3 = *MEMORY[0x277CBECE8];

    return CFStringCreateWithCString(v3, v2, 0x8000100u);
  }

  return result;
}

unsigned int *_PNGetITUCountryCode(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringGetLength(result) == 2)
    {
      result = PNGetFormatFileHeader();
      if (result)
      {
        v2 = result;
        InfoIndex = UIPhoneFormatCountryGetInfoIndex(result, v1);
        if (InfoIndex == -1)
        {
          return 0;
        }

        else
        {
          return &v2[3 * InfoIndex + 1];
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableDictionaryRef __CFPhoneNumberCountryGetIndexCache()
{
  os_unfair_lock_assert_owner(&__CFPhoneNumberCountryCacheUnfairLock);
  result = __CFPhoneNumberCountryGetIndexCache_sCache;
  if (!__CFPhoneNumberCountryGetIndexCache_sCache)
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    __CFPhoneNumberCountryGetIndexCache_sCache = result;
  }

  return result;
}

const __CFString *_PNCopyLastFourDigitsOfLocalNumber(const __CFString *a1, __CFString *a2)
{
  result = _PNCopyStrippedNumberWithoutPauses(a1, a2, 0, 0);
  if (result)
  {
    v3 = result;
    v4 = _PNCopyNormalized(result);
    v5 = strlen(v4);
    if (v5 >= 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], &v4[v5 - v6], v6, 0x8000100u, 0);
    free(v4);
    CFRelease(v3);
    return v7;
  }

  return result;
}

CFStringRef PNCreateFormattedStringWithCountry(const __CFString *a1, __CFString *a2, int a3, unsigned int a4)
{
  if (!a1)
  {
    return 0;
  }

  if (a3 == 2)
  {
    v5 = _PNCopyCompressedFormattedStringWithCountry(a1, a2, a4);
    if (v5)
    {
      v6 = v5;
      v7 = _PNCreateLocalizedStringWithString(*MEMORY[0x277CBECE8], v5);
      CFRelease(v6);
      return v7;
    }

    return 0;
  }

  if (a3 != 1)
  {
    return 0;
  }

  return _PNCopyCompressedFormattedStringWithCountry(a1, a2, a4);
}

CFStringRef _PNCopyCompressedFormattedStringWithCountry(const __CFString *a1, __CFString *cf, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = cf;
  if (!cf)
  {
    v4 = PNCopyBestGuessCountryCodeForNumber(a1);
    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  CFRetain(cf);
LABEL_5:
  cfa = 0;
  v6 = _PNCopyStrippedNumberWithoutPauses(a1, v4, &cfa, 0);
  v7 = _PNCopyFormattedNumberForDigitsWithCountry(v6, v4, a3);
  v8 = _PNCreateStringByAddingPauses(v7, cfa);
  CFRelease(v6);
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v4);
  return v8;
}

CFStringRef _PNCopyCountryCodeForInternationalCode(const __CFString *a1)
{
  v2 = PNGetFormatFileHeader();
  result = 0;
  if (a1 && v2)
  {
    v6 = 0;
    Length = CFStringGetLength(a1);
    CountryOffsetFromDialingCode = _GetCountryOffsetFromDialingCode(v2, a1, 0, 0, Length, &v6);
    if (CountryOffsetFromDialingCode == -1)
    {
      return 0;
    }

    else
    {
      return CFStringCreateWithCString(*MEMORY[0x277CBECE8], &v2[3 * CountryOffsetFromDialingCode + 2], 0x8000100u);
    }
  }

  return result;
}

uint64_t _GetCountryOffsetFromDialingCode(unsigned int *a1, CFStringRef theString, uint64_t a3, CFIndex a4, CFIndex a5, _DWORD *a6)
{
  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a5;
  length = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  *theStringa = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *buffer = 0u;
  if (!a3)
  {
    theStringa[0] = theString;
    *(&v47 + 1) = a4;
    *&v48 = a5;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    theStringa[1] = CharactersPtr;
    if (CharactersPtr)
    {
      *(&v48 + 1) = 0;
      length = 0;
      *&v47 = 0;
      if (v7 >= 1)
      {
        LOWORD(v11) = *(&CharactersPtr->isa + a4);
LABEL_12:
        v11 = v11;
        goto LABEL_13;
      }
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
      *(&v48 + 1) = 0;
      length = 0;
      *&v47 = CStringPtr;
      if (v7 > 0)
      {
        if (CStringPtr)
        {
          LOWORD(v11) = CStringPtr[a4];
        }

        else
        {
          if (v7 >= 0x40)
          {
            v33.length = 64;
          }

          else
          {
            v33.length = v7;
          }

          length = v33.length;
          v33.location = a4;
          CFStringGetCharacters(theString, v33, buffer);
          LOWORD(v11) = buffer[-*(&v48 + 1)];
        }

        goto LABEL_12;
      }
    }

    LOWORD(v11) = 0;
    goto LABEL_12;
  }

  v11 = *(a3 + a4);
LABEL_13:
  if (v11 == 48)
  {
    return 0xFFFFFFFFLL;
  }

  Count = UIPhoneFormatCountryGetCount(a1);
  if (!Count)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = 0;
  v18 = a1 + 1;
  v19 = a3 + a4;
  v36 = v7;
  v37 = a1 + 1;
  v34 = a6;
  v35 = Count;
  while (1)
  {
    v20 = strlen(&v37[3 * v17]);
    if (v7 >= v20)
    {
      break;
    }

LABEL_17:
    ++v17;
    v18 += 3;
    result = 0xFFFFFFFFLL;
    v7 = v36;
    if (v17 == v35)
    {
      return result;
    }
  }

  v21 = v20;
  if (v20)
  {
    v22 = 0;
    v23 = 0;
    v24 = 64;
    while (1)
    {
      v25 = v23 >= 4 ? 4 : v23;
      v26 = u_charDigitValue(*(v18 + v23));
      if (!a3)
      {
        break;
      }

      v27 = *(v19 + v23);
LABEL_33:
      if (v26 != u_charDigitValue(v27))
      {
        goto LABEL_17;
      }

      ++v23;
      --v22;
      ++v24;
      if (v21 == v23)
      {
        goto LABEL_47;
      }
    }

    if (v23 < 0 || (v28 = v48, v48 <= v23))
    {
      v30 = 0;
    }

    else
    {
      if (theStringa[1])
      {
        v29 = theStringa[1] + *(&v47 + 1);
      }

      else
      {
        if (v47)
        {
          v30 = *(v47 + *(&v47 + 1) + v23);
          goto LABEL_32;
        }

        if (length <= v23 || (v31 = *(&v48 + 1), *(&v48 + 1) > v23))
        {
          v32 = v23 - v25 + 64;
          if (v32 >= v48)
          {
            v32 = v48;
          }

          *(&v48 + 1) = v23 - v25;
          length = v32;
          if (v48 >= v24 - v25)
          {
            v28 = v24 - v25;
          }

          v50.location = v23 - v25 + *(&v47 + 1);
          v50.length = v28 + v25 + v22;
          CFStringGetCharacters(theStringa[0], v50, buffer);
          v31 = *(&v48 + 1);
        }

        v29 = &buffer[-v31];
      }

      v30 = v29[v23];
    }

LABEL_32:
    v27 = v30;
    goto LABEL_33;
  }

LABEL_47:
  if (v34)
  {
    *v34 = v21;
  }

  return v17;
}

unsigned int *UIPhoneFormatCountryGetCount(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

const char *_InternationalPrefixForDigitsInCountry(uint64_t a1, unsigned int a2, const __CFString *a3, const char *a4, CFIndex a5, uint64_t a6, void *a7, const char **a8)
{
  v16 = PNGetFormatFileHeader();
  v17 = __InternationalPrefixForDigitsInCountry(a1, a2, a3, a4, a5, a6, a7);
  v18 = v17;
  if (a8)
  {
    if (v17)
    {
      if (*v17 == 43 && !v17[1])
      {
        v19 = a6 - 1;
        if (_GetCountryOffsetFromDialingCode(v16, a3, a4, 1, v19, 0) == -1)
        {
          v20 = __InternationalPrefixForDigitsInCountry(a1, a2, a3, a4, 1, v19, a7);
          if (v20)
          {
            *a8 = v18;
            return v20;
          }
        }
      }
    }
  }

  return v18;
}

_BYTE *_FormatEntryAndNationalPrefixForDigitsInCountry(uint64_t a1, UniChar *a2, char *__s1, uint64_t *a4, int a5, unsigned __int8 **a6, CFStringRef *a7, uint64_t a8)
{
  if (a5)
  {
    NationalAccessCodeForDigitsInCountry = 0;
  }

  else
  {
    NationalAccessCodeForDigitsInCountry = _FindNationalAccessCodeForDigitsInCountry(a2, __s1, a4, (a1 + 12), a7);
  }

  *a6 = NationalAccessCodeForDigitsInCountry;
  result = _FindFormatEntryForDigitsInCountry(a1, a2, __s1, a4, a5, NationalAccessCodeForDigitsInCountry != 0, a8);
  if (a5)
  {
    if (!result)
    {
      v18 = a4[1];
      result = _FindNationalAccessCodeForDigitsInCountry(a2, __s1, a4, (a1 + 12), a7);
      if (result)
      {
        if (a8)
        {
          *(a8 + 41) = 1;
          *(a8 + 56) = v18 - a4[1];
        }

        result = _FindFormatEntryForDigitsInCountry(a1, a2, __s1, a4, 1, *a6 != 0, a8);
      }
    }
  }

  if (a5 & 1) == 0 && !*a6 && result && (*(a1 + 2) & 1) != 0 && (result[12])
  {
    return 0;
  }

  return result;
}

unsigned __int16 *_FindFormatEntryForDigitsInCountry(unsigned __int16 *a1, uint64_t a2, char *__s1, uint64_t *a4, int a5, int a6, uint64_t a7)
{
  v9 = a2;
  v10 = *a1;
  if (a4[1] < 1)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *a4;
      if (__s1)
      {
        v15 = __s1[v14 + v11];
      }

      else
      {
        v16 = v14 + v11;
        if (v14 + v11 < 0 || (v17 = *(v9 + 160), v17 <= v16))
        {
          LOWORD(v15) = 0;
        }

        else
        {
          v18 = *(v9 + 136);
          if (v18)
          {
            LOWORD(v15) = *(v18 + 2 * *(v9 + 152) + 2 * v16);
          }

          else
          {
            v20 = *(v9 + 144);
            if (v20)
            {
              LOWORD(v15) = *(v20 + *(v9 + 152) + v16);
            }

            else
            {
              if (*(v9 + 176) <= v16 || (v21 = *(v9 + 168), v21 > v16))
              {
                v22 = v16 - 4;
                if (v16 < 4)
                {
                  v22 = 0;
                }

                if (v22 + 64 < v17)
                {
                  v17 = v22 + 64;
                }

                *(v9 + 168) = v22;
                *(v9 + 176) = v17;
                v23 = v13;
                v85.length = v17 - v22;
                v85.location = *(v9 + 152) + v22;
                CFStringGetCharacters(*(v9 + 128), v85, a2);
                v13 = v23;
                v9 = a2;
                v21 = *(a2 + 168);
              }

              LOWORD(v15) = *(v9 + 2 * (v16 - v21));
            }
          }
        }

        v15 = v15;
      }

      if (v15 == 42 || v15 == 35)
      {
        v13 = (v13 + 1);
        v19 = a4[1];
      }

      else
      {
        v19 = a4[1];
        v12 = v19;
      }

      v11 = ++v12;
    }

    while (v19 > v12);
  }

  v24 = a1;
  if (!*(a1 + 2))
  {
    return 0;
  }

  result = 0;
  v26 = 0;
  v27 = (a1 + v10);
  if (a5)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v75 = v28 | a6;
  v29 = v13;
  v76 = (v9 | __s1) == 0;
  v73 = v13 + 64;
  v81 = v13;
  v78 = v13;
  do
  {
    v30 = *v27;
    if (a4[1] - v29 < v30)
    {
      goto LABEL_109;
    }

    v83 = result;
    if (!v76)
    {
      v31 = 0;
      if (!*v27)
      {
        goto LABEL_36;
      }

      v48 = *a4;
      v49 = *a4 + v29;
      if (v49 < 0)
      {
        goto LABEL_36;
      }

      v50 = v49 + v30;
      if (__s1)
      {
        v51 = strnlen(__s1, v50);
        v9 = a2;
        LODWORD(v13) = v81;
      }

      else
      {
        v51 = v50 >= (*(v9 + 160) & ~(*(v9 + 160) >> 63)) ? *(v9 + 160) & ~(*(v9 + 160) >> 63) : v49 + v30;
      }

      if (v49 < v51)
      {
        LODWORD(v52) = 0;
        v53 = -v49;
        v54 = v73 + v48;
        v55 = v51;
        while (1)
        {
          if (v49 >= 4)
          {
            v56 = 4;
          }

          else
          {
            v56 = v49;
          }

          if (__s1)
          {
            v57 = __s1[v49];
            goto LABEL_128;
          }

          if (v49 < 0 || (v58 = *(v9 + 160), v58 <= v49))
          {
            v61 = 0;
          }

          else
          {
            v59 = *(v9 + 136);
            if (v59)
            {
              v60 = v59 + 2 * *(v9 + 152);
            }

            else
            {
              v67 = *(v9 + 144);
              if (v67)
              {
                v61 = *(v67 + *(v9 + 152) + v49);
                goto LABEL_127;
              }

              if (*(v9 + 176) <= v49 || (v68 = *(v9 + 168), v68 > v49))
              {
                v69 = v56 + v53;
                v70 = v54 - v56;
                v71 = v49 - v56;
                v72 = v71 + 64;
                if (v71 + 64 >= v58)
                {
                  v72 = *(v9 + 160);
                }

                *(v9 + 168) = v71;
                *(v9 + 176) = v72;
                if (v58 >= v70)
                {
                  v58 = v70;
                }

                v87.location = v71 + *(v9 + 152);
                v87.length = v58 + v69;
                CFStringGetCharacters(*(v9 + 128), v87, a2);
                v9 = a2;
                v68 = *(a2 + 168);
              }

              v60 = v9 - 2 * v68;
            }

            v61 = *(v60 + 2 * v49);
          }

LABEL_127:
          v57 = v61;
LABEL_128:
          v62 = u_charDigitValue(v57);
          v31 = 0;
          v63 = 10 * v52;
          v64 = (v63 & 0xFFFFFFFF00000000) != 0;
          v65 = v63 + v62;
          v52 = v65 << 31 >> 31;
          v66 = v52 != v65;
          if (v64)
          {
            v9 = a2;
            LODWORD(v13) = v81;
            goto LABEL_36;
          }

          LODWORD(v13) = v81;
          if (v66)
          {
            v9 = a2;
            goto LABEL_36;
          }

          v9 = a2;
          if ((v52 & 0x8000000000000000) == 0)
          {
            ++v49;
            --v53;
            ++v54;
            v31 = v52;
            if (v55 != v49)
            {
              continue;
            }
          }

          goto LABEL_36;
        }
      }
    }

    v31 = 0;
LABEL_36:
    if (!v27[1])
    {
      v29 = v78;
      v24 = a1;
      result = v83;
      goto LABEL_109;
    }

    v32 = 0;
    v33 = v27 + 2;
    v29 = v78;
    v24 = a1;
    result = v83;
    while (2)
    {
      v34 = &v33[8 * v32];
      if (v31 < *v34)
      {
        goto LABEL_102;
      }

      if (v31 > *(v34 + 1))
      {
        goto LABEL_102;
      }

      v35 = a4[1];
      if (v35 - v29 > *(v34 + 9) || (v13 != 0) == ((v34[6] & 0x10) == 0))
      {
        goto LABEL_102;
      }

      if (!v13)
      {
        goto LABEL_79;
      }

      if (v35 < 1)
      {
        v26 = 0;
        goto LABEL_79;
      }

      v84 = result;
      v36 = 0;
      v26 = 0;
      v37 = v24 + *v24 + *(v24 + 1) + v34[7];
      do
      {
        v38 = *a4;
        if (__s1)
        {
          v39 = __s1[v38 + v36];
        }

        else
        {
          v40 = v38 + v36;
          if (v38 + v36 < 0 || (v41 = *(v9 + 160), v41 <= v40))
          {
            LOWORD(v39) = 0;
          }

          else
          {
            v42 = *(v9 + 136);
            if (v42)
            {
              LOWORD(v39) = *(v42 + 2 * *(v9 + 152) + 2 * v40);
            }

            else
            {
              v45 = *(v9 + 144);
              if (v45)
              {
                LOWORD(v39) = *(v45 + *(v9 + 152) + v40);
              }

              else
              {
                if (*(v9 + 176) <= v40 || (v46 = *(v9 + 168), v46 > v40))
                {
                  v47 = v40 - 4;
                  if (v40 < 4)
                  {
                    v47 = 0;
                  }

                  if (v47 + 64 < v41)
                  {
                    v41 = v47 + 64;
                  }

                  *(v9 + 168) = v47;
                  *(v9 + 176) = v41;
                  v86.length = v41 - v47;
                  v86.location = *(v9 + 152) + v47;
                  CFStringGetCharacters(*(v9 + 128), v86, a2);
                  LODWORD(v13) = v81;
                  v9 = a2;
                  v46 = *(a2 + 168);
                }

                LOWORD(v39) = *(v9 + 2 * (v40 - v46));
              }
            }
          }

          v39 = v39;
        }

        if (v39 == 35)
        {
          v44 = *v37 == 92 && v37[1] == 35;
          ++v37;
          goto LABEL_62;
        }

        if (v39 != 42)
        {
          v44 = 1;
LABEL_62:
          v35 = a4[1];
          v26 = v35;
          goto LABEL_63;
        }

        v43 = *v37++;
        v44 = v43 == 42;
        v35 = a4[1];
LABEL_63:
        v36 = ++v26;
      }

      while (v35 > v26 && v44);
      v29 = v78;
      v24 = a1;
      result = v84;
      if (!v44)
      {
        goto LABEL_102;
      }

LABEL_79:
      if (a5 && (v34[6] & 0x40) != 0)
      {
        goto LABEL_102;
      }

      if (!result || a6 && (result[6] & 1) == 0 && (v34[6] & 1) != 0 || a5 && (result[6] & 2) == 0 && (v34[6] & 2) != 0)
      {
        if (a7)
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v75)
        {
          goto LABEL_96;
        }

        if ((result[6] & 3) == 0)
        {
          goto LABEL_96;
        }

        if ((v34[6] & 3) != 0)
        {
          goto LABEL_96;
        }

        result = &v33[8 * v32];
        if (!a7)
        {
          goto LABEL_96;
        }

LABEL_94:
        *(a7 + 32) = *v27;
        *(a7 + 36) = v35;
      }

      result = &v33[8 * v32];
LABEL_96:
      if (a6 && (result[6] & 1) == 0 || a5 && (result[6] & 2) == 0 || !v75 && (result[6] & 3) != 0)
      {
LABEL_102:
        if (++v32 >= v27[1])
        {
          break;
        }

        continue;
      }

      break;
    }

LABEL_109:
    v27 += 8 * v27[1] + 2;
    ++v26;
  }

  while (v26 < *(v24 + 2));
  return result;
}

char *_PNCopyNormalized(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  theString = a1;
  v38 = 0;
  v39 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v36 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *buffer = 0u;
  v28 = 0u;
  v40 = 0;
  v41 = 0;
  v26 = v3;
  v37 = CStringPtr;
  if (Length >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 64;
    while (1)
    {
      v12 = v7 >= 4 ? 4 : v7;
      v13 = v39;
      if (v39 > v7)
      {
        break;
      }

      v16 = 0;
      if (!u_isdigit(0))
      {
        v18 = 0;
LABEL_23:
        if ((*(MEMORY[0x277D85DE0] + 4 * v18 + 60) & 0x100) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_24;
      }

LABEL_13:
      v17 = u_charDigitValue(v16) + 48;
LABEL_14:
      *v3++ = v17;
      v10 &= v9;
      v8 |= v9 ^ 1;
LABEL_41:
      ++v7;
      --v6;
      ++v11;
      if (Length == v7)
      {
        goto LABEL_42;
      }
    }

    if (v36)
    {
      v14 = &v36[v38];
    }

    else
    {
      if (v37)
      {
        v15 = v37[v38 + v7];
LABEL_17:
        v16 = v15;
        if (!(v8 & 1 | (v15 != 43)))
        {
          v9 = 0;
          v10 = 0;
          *v3++ = 43;
          v8 = 1;
          goto LABEL_41;
        }

        if (v15 == 42 || v15 == 35)
        {
          *v3++ = v15;
          v9 |= v10;
          goto LABEL_41;
        }

        if (!u_isdigit(v15))
        {
          if (v16 <= 0x7F)
          {
            v18 = v16;
            goto LABEL_23;
          }

          if (!__maskrune(v16, 0x100uLL))
          {
            goto LABEL_41;
          }

LABEL_24:
          if ((v16 - 65) > 0x39u || ((0x3FFFFFF03FFFFFFuLL >> (v16 - 65)) & 1) == 0)
          {
            goto LABEL_41;
          }

          v17 = a22233344455566[(v16 - 65)];
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v19 = v40;
      if (v41 <= v7 || v40 > v7)
      {
        v21 = v7 - v12;
        v22 = v12 + v6;
        v23 = v11 - v12;
        v24 = v21 + 64;
        if (v21 + 64 >= v39)
        {
          v24 = v39;
        }

        v40 = v21;
        v41 = v24;
        if (v39 >= v23)
        {
          v13 = v23;
        }

        v42.location = v38 + v21;
        v42.length = v13 + v22;
        CFStringGetCharacters(theString, v42, buffer);
        v19 = v40;
      }

      v14 = &buffer[-v19];
    }

    v15 = v14[v7];
    goto LABEL_17;
  }

LABEL_42:
  *v3 = 0;
  return v26;
}

uint64_t _NumberRangeWithoutVerticalServiceCode(const __CFString *a1, const char *a2, int a3)
{
  v6 = PNGetFormatFileHeader();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      if (strlen(a2) >= 3)
      {
        v8 = *a2;
        v9 = v8 == 42;
        if ((v8 == 35 || v8 == 42) && u_isdigit(a2[1]) && u_isdigit(a2[2]))
        {
          v10 = strlen(a2);
          a1 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2, v10, 0x8000100u, 0, *MEMORY[0x277CBED00]);
          goto LABEL_17;
        }
      }
    }

    else if (CFStringGetLength(a1) >= 3)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
      v12 = CFStringGetCharacterAtIndex(a1, 0);
      v9 = CharacterAtIndex == 42;
      if (CharacterAtIndex == 42 || v12 == 35)
      {
        v13 = CFStringGetCharacterAtIndex(a1, 1);
        if (u_isdigit(v13))
        {
          v14 = CFStringGetCharacterAtIndex(a1, 2);
          if (u_isdigit(v14))
          {
            CFRetain(a1);
LABEL_17:
            Length = CFStringGetLength(a1);
            if (Length < 2)
            {
              v27 = -1;
            }

            else
            {
              v16 = Length;
              v17 = 0;
              v18 = Length - 1;
              v19 = -1;
              do
              {
                if (a2)
                {
                  v20 = a2[v18];
                }

                else
                {
                  v20 = CFStringGetCharacterAtIndex(a1, v18);
                }

                if (v20 == 42 || v20 == 35)
                {
                  if (v19 == -1)
                  {
                    v19 = v18;
                  }

                  v17 = 1;
                }

                v21 = v18-- + 1;
              }

              while (v21 > 2);
              if (v19 == -1)
              {
                v27 = -1;
                if (v17 & 1 | !v9 || v16 < 4)
                {
                  goto LABEL_62;
                }

                v30 = *MEMORY[0x277CBECE8];
                v42 = a3;
                v31 = &v7[3 * a3 + 1];
                v32 = strlen((v31 + 4));
                theString1 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (v31 + 4), v32, 0x8000100u, 0, *MEMORY[0x277CBED00]);
                if (v16 >= 5)
                {
                  v33 = 5;
                }

                else
                {
                  v33 = v16;
                }

                v34 = 3;
                v35 = v16 - 3;
                while (v33 != v34)
                {
                  v36 = CFStringGetCharacterAtIndex(a1, v34);
                  if (!u_isdigit(v36))
                  {
                    break;
                  }

                  v55.location = v34;
                  v55.length = v35;
                  v37 = CFStringCreateWithSubstring(v30, a1, v55);
                  valid = _PNIsValidPhoneNumberForCountry(v37, theString1, 0, 1, 0);
                  CFRelease(v37);
                  ++v34;
                  --v35;
                  if (valid)
                  {
                    v27 = v34 - 1;
                    goto LABEL_60;
                  }
                }

                memset(v46, 0, sizeof(v46));
                v44 = 0;
                v45 = CFStringGetLength(a1);
                v47 = a1;
                v50 = 0;
                v51 = v45;
                CharactersPtr = CFStringGetCharactersPtr(a1);
                CStringPtr = 0;
                v48 = CharactersPtr;
                if (!CharactersPtr)
                {
                  CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
                }

                v52 = 0;
                v53 = 0;
                v49 = CStringPtr;
                Count = UIPhoneFormatCountryGetCount(v7);
                if (_FindFormatEntryForDigitsInCountry((&v7[3 * Count + 1] + v7[3 * v42 + 3]), v46, 0, &v44, 0, 0, 0))
                {
                  v27 = -1;
                }

                else if (CFStringGetCharacterAtIndex(a1, 3) == 43)
                {
                  v27 = 3;
                }

                else if (v16 >= 5 && CFStringGetCharacterAtIndex(a1, 4) == 43)
                {
                  v27 = 4;
                }

                else if (CFStringCompare(theString1, @"us", 0))
                {
                  v27 = -1;
                }

                else
                {
                  v27 = 3;
                }

LABEL_60:
                v28 = theString1;
              }

              else
              {
                v22 = *MEMORY[0x277CBECE8];
                v23 = &v7[3 * a3];
                v24 = strlen(v23 + 8);
                v25 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v23 + 8, v24, 0x8000100u, 0, *MEMORY[0x277CBED00]);
                v54.length = v16 + ~v19;
                v54.location = v19 + 1;
                v26 = CFStringCreateWithSubstring(v22, a1, v54);
                if (_PNIsValidPhoneNumberForCountry(v26, v25, 1, 1, 0))
                {
                  v27 = v19 + 1;
                }

                else
                {
                  v27 = -1;
                }

                CFRelease(v26);
                v28 = v25;
              }

              CFRelease(v28);
            }

LABEL_62:
            CFRelease(a1);
            return v27;
          }
        }
      }
    }

    return -1;
  }

  else
  {
    if (a2)
    {
      strlen(a2);
    }

    else
    {
      CFStringGetLength(a1);
    }

    return 0;
  }
}

CFStringRef CFPhoneNumberStringCreateLowercaseCopy(const __CFAllocator *a1, CFStringRef theString)
{
  if (!CFStringGetLength(theString))
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (!MutableCopy)
  {
    return 0;
  }

  v5 = MutableCopy;
  if (CFPhoneNumberStringIsEncodingASCII(theString))
  {
    v6 = 0;
  }

  else
  {
    v6 = CFLocaleCopyCurrent();
  }

  CFStringLowercase(v5, v6);
  Copy = CFStringCreateCopy(a1, v5);
  CFRelease(v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return Copy;
}

uint64_t _DecomposePhoneNumberWithCountryIndex(char *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  result = PNGetFormatFileHeader();
  if (result)
  {
    v11 = result;
    v12 = result + 4;
    v13 = (v12 + 12 * UIPhoneFormatCountryGetCount(result) + *(v12 + 12 * a2 + 8));
    v57 = (v13 + 6);
    v14 = strlen(a1);
    v55 = 0;
    v56 = v14;
    v15 = _NumberRangeWithoutVerticalServiceCode(0, a1, a2);
    if (v15 == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
      v55 = v15;
      v56 = v16;
      v14 = v16;
    }

    *a3 = v12 + 12 * a2;
    if ((a4 & 1) != 0 || ((v53 = 0, v54 = 0, !a5) ? (v18 = 0) : (v18 = &v54), (v19 = _InternationalPrefixForDigitsInCountry(v13, a2, 0, a1, v17, v14, &v53, v18)) == 0))
    {
      v22 = _FormatEntryAndNationalPrefixForDigitsInCountry(v13, 0, a1, &v55, a4, &v57, 0, 0);
      v23 = v22;
      if (v57)
      {
        *(a3 + 8) = v57;
      }

      if (!v22)
      {
LABEL_51:
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 48) = a1;
        v52 = strlen(a1);
        result = 0;
        *(a3 + 56) = v52;
        return result;
      }

      v24 = v55;
      v25 = v56;
      v26 = v56 + v55;
      v27 = &a1[v55];
      if (v56 + v55 > v55)
      {
        v28 = v22[10];
        if (v28 >= 1)
        {
          *(a3 + 16) = v27;
          if (v25 >= v28)
          {
            LODWORD(v25) = v28;
          }

          *(a3 + 24) = v25;
          v24 += v28;
          v27 += v28;
        }
      }

      v29 = v26 - v24;
      if (v26 <= v24)
      {
        v32 = *(a3 + 40);
      }

      else
      {
        v30 = v22[11];
        if (v22[11])
        {
          v31 = v27;
        }

        else
        {
          v31 = 0;
        }

        *(a3 + 32) = v31;
        if (v29 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v26 - v24;
        }

        *(a3 + 40) = v32;
      }

      v33 = v32;
      v34 = v24 + v32;
      if (v26 > v34 && (v22[10] & 0x80) != 0)
      {
        v35 = v22[10] & 0x7F;
        if ((v22[10] & 0x7F) != 0)
        {
          *(a3 + 16) = &v27[v33];
          if (v29 >= v35)
          {
            LODWORD(v29) = v35;
          }

          *(a3 + 24) = v29;
          v27 += v35;
          v34 = v24 + v35 + v33;
        }
      }

      if (v26 > v34)
      {
        v36 = &v27[v33];
        *(a3 + 48) = v36;
        *(a3 + 56) = v26 + a1 - v36;
      }

      v37 = _UIPhoneFormatEntryReplacementCountryCodeRange(v13, v22);
      if (v37 != -1)
      {
        v38 = v13 + *v13 + *(v13 + 1);
        v39 = *(v23 + 7) + v37;
        v40 = strlen(&v38[v39]);
        CountryOffsetFromDialingCode = _GetCountryOffsetFromDialingCode(v11, 0, &v38[v39], 0, v40, 0);
        if (CountryOffsetFromDialingCode != -1)
        {
          *a3 = v12 + 12 * CountryOffsetFromDialingCode;
          _DecomposePhoneNumberWithCountryIndex(a1, CountryOffsetFromDialingCode, a3, a4, 0);
        }
      }

      return 1;
    }

    else
    {
      v20 = v19;
      if (v54)
      {
        v21 = NumberOfDigitsRequiredForPattern(v54);
      }

      else
      {
        v21 = 0;
      }

      v42 = NumberOfDigitsRequiredForPattern(v20);
      v43 = strlen(a1);
      if (v43 >= v21 + v42)
      {
        v44 = v21 + v42;
      }

      else
      {
        v44 = v43;
      }

      v45 = v53;
      result = PNGetFormatFileHeader();
      if (result)
      {
        v46 = result;
        a1 += v44;
        v58 = 0;
        if (v45)
        {
          v47 = strlen(v45);
          v48 = v46;
          v49 = v45;
          v50 = 0;
        }

        else
        {
          v47 = strlen(a1);
          v50 = &v58;
          v48 = v46;
          v49 = a1;
        }

        v51 = _GetCountryOffsetFromDialingCode(v48, 0, v49, 0, v47, v50);
        if (v51 != -1)
        {
          return _DecomposePhoneNumberWithCountryIndex(&a1[v58], v51, a3, 1, 0);
        }

        goto LABEL_51;
      }
    }
  }

  return result;
}

uint64_t __CFPhoneNumberGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kCFPhoneNumberTypeID = result;
  return result;
}

BOOL itu_strneql(const char *a1, const char *a2, size_t a3)
{
  if (!a1 && a2)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  if (a1 && !a2)
  {
    return 0;
  }

  return strncmp(a1, a2, a3) == 0;
}

const __CFString *CFPhoneNumberCreateString(const __CFAllocator *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    if ((a3 & 2) != 0)
    {
      v5 = _CFPhoneNumberCopyFormattedInternationalRepresentation(a2);
    }

    else
    {
      v5 = _CFPhoneNumberCopyFormattedRepresentation(a2);
    }
  }

  else if ((a3 & 2) != 0)
  {
    v5 = __CFPhoneNumberCopyFullyQualified(a2, 1, 1);
  }

  else
  {
    v5 = CFRetain(*(a2 + 40));
  }

  v6 = v5;
  if (!v5 || (a3 & 4) == 0)
  {
    return v6;
  }

  v8 = _PNCreateLocalizedStringWithString(a1, v5);
  CFRelease(v6);
  return v8;
}

uint64_t _PNIsValidPhoneNumberForCountry(const __CFString *a1, CFStringRef a2, uint64_t a3, char a4, char a5)
{
  if (a1 && CFStringGetLength(a1))
  {
    if (a2)
    {
      CFRetain(a2);
      goto LABEL_6;
    }

    a2 = PNCopyBestGuessCountryCodeForNumber(a1);
    if (a2)
    {
LABEL_6:
      v10 = _PNCopyStrippedNumberWithoutPauses(a1, a2, 0, a3);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      memset(v17, 0, sizeof(v17));
      v11 = 0;
      if (!_PNFindFormatRuleForDigitsWithCountry(v10, a2, 0, &v18))
      {
LABEL_20:
        CFRelease(v10);
        CFRelease(a2);
        return v11;
      }

      v12 = _PNCopyNormalized(v10);
      v13 = v12;
      if (((a4 & 1) != 0 || (BYTE4(v19) & 4) == 0) && _PNDecomposeForCountry(v12, a2, v17, a3))
      {
        if (v19)
        {
          v14 = DWORD1(v20);
          v15 = BYTE1(v19);
          if (DWORD1(v20) >= v19 && DWORD1(v20) <= BYTE1(v19))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v14 = DWORD1(v20);
          v15 = BYTE1(v19);
          if (DWORD1(v20) == BYTE1(v19))
          {
LABEL_13:
            v11 = 1;
LABEL_19:
            free(v13);
            goto LABEL_20;
          }
        }

        if (v14 > 4 || (a5 & 1) == 0)
        {
          v11 = 0;
          if (v14 < v15 && *&v17[0])
          {
            v11 = (*(v18 + 2) >> 1) & 1;
          }

          goto LABEL_19;
        }
      }

      v11 = 0;
      goto LABEL_19;
    }
  }

  return 0;
}

__CFString *_PNCopyFullyQualifiedNumberForCountryInternal(const __CFString *a1, __CFString *a2, const __CFString *a3, void *a4, int a5, _DWORD *a6)
{
  v11 = a4;
  if (!a6)
  {
    if (CFStringGetLength(a1) >= 5 && (_PNIsValidPhoneNumberForCountry(a1, a2, 1, 1, 0) & 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_33:
    if (!a5)
    {
LABEL_48:
      MutableCopy = 0;
      goto LABEL_49;
    }

    goto LABEL_34;
  }

  *a6 = 0;
  if (CFStringGetLength(a1) <= 4)
  {
    *a6 = 2;
    if (!a5)
    {
      goto LABEL_48;
    }

    goto LABEL_34;
  }

  if ((_PNIsValidPhoneNumberForCountry(a1, a2, 1, 1, 0) & 1) == 0)
  {
    *a6 = 3;
    goto LABEL_33;
  }

LABEL_9:
  CFStringGetLength(a1);
  if (!CFStringGetCharactersPtr(a1))
  {
    CFStringGetCStringPtr(a1, 0x600u);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  LOBYTE(cStr[0]) = 0;
  v12 = _PNCopyBestGuessNumberForCountry(a1, a2, 1, &v47, cStr);
  if (LOBYTE(cStr[0]) == 1)
  {
    v13 = DWORD2(v48);
    if (DWORD2(v48))
    {
      v14 = v48;
      while (1)
      {
        v16 = *v14++;
        v15 = v16;
        if (v16 == 35 || v15 == 42)
        {
          break;
        }

        if (!--v13)
        {
          goto LABEL_17;
        }
      }

LABEL_37:
      if (a6)
      {
        *a6 = 4;
      }

      free(v12);
      if (!a5)
      {
        goto LABEL_48;
      }

LABEL_34:
      if (a6)
      {
        *a6 = 0;
      }

LABEL_36:
      MutableCopy = _PNCopyFullyQualifiedOriginalValue(a1, a3);
      goto LABEL_49;
    }

LABEL_17:
    v17 = DWORD2(v49);
    if (DWORD2(v49))
    {
      v18 = v49;
      do
      {
        v20 = *v18++;
        v19 = v20;
        if (v20 == 35 || v19 == 42)
        {
          goto LABEL_37;
        }
      }

      while (--v17);
    }

    v21 = DWORD2(v50);
    if (DWORD2(v50))
    {
      v22 = v50;
      do
      {
        v24 = *v22++;
        v23 = v24;
        if (v24 == 35 || v23 == 42)
        {
          goto LABEL_37;
        }
      }

      while (--v21);
    }
  }

  free(v12);
  v55 = 0u;
  v53 = 0u;
  *v54 = 0u;
  *numBytes = 0u;
  *cStr = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v25 = _PNCopyBestGuessNumberForCountry(a1, a2, 1, cStr, &v46);
  _PNFindFormatRuleForDigitsWithCountry(a1, a2, 0, &v47);
  if (v46 != 1 || !v55)
  {
    if (a6)
    {
      *a6 = 3;
    }

LABEL_43:
    free(v25);
    if (!a5)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  if ((BYTE4(v48) & 4) != 0)
  {
    if (a6)
    {
      *a6 = 5;
    }

    free(v25);
    goto LABEL_48;
  }

  v26 = *MEMORY[0x277CBECE8];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, @"+");
  if (cStr[0])
  {
    v28 = CFStringCreateWithCString(v26, cStr[0], 0x8000100u);
    CFStringAppend(MutableCopy, v28);
    CFRelease(v28);
    goto LABEL_52;
  }

  v44 = v26;
  v30 = _PNCopyInternationalCodeForCountry(a2);
  if (!v30)
  {
    if (a6)
    {
      *a6 = 6;
    }

    CFRelease(MutableCopy);
    goto LABEL_43;
  }

  v31 = v30;
  CFStringAppend(MutableCopy, v30);
  CFRelease(v31);
  v26 = v44;
LABEL_52:
  if (numBytes[0] != -1)
  {
    v32 = CFStringCreateWithBytes(v26, (*(&v48 + 1) + numBytes[0]), numBytes[1], 0x8000100u, 0);
    CFStringAppend(MutableCopy, v32);
    CFRelease(v32);
  }

  if (v54[0])
  {
    v33 = CFStringCreateWithBytes(v26, v54[0], LODWORD(v54[1]), 0x8000100u, 0);
    CFStringAppend(MutableCopy, v33);
    CFRelease(v33);
  }

  else if ((BYTE4(v48) & 8) != 0)
  {
    if (cStr[0])
    {
      v38 = CFStringCreateWithCString(v26, cStr[0], 0x8000100u);
      v39 = _PNCopyCountryCodeForInternationalCode(v38);
      v40 = v11[2](v11, v39);
      if (v40)
      {
        v41 = v26;
        v42 = v40;
        v45 = v41;
        v34 = CFStringCreateMutableCopy(v41, 0, MutableCopy);
        CFStringAppend(MutableCopy, v42);
        CFRelease(v42);
        CFRelease(v38);
        if (v39)
        {
          CFRelease(v39);
        }

        v26 = v45;
        if (!MutableCopy)
        {
          goto LABEL_74;
        }

        goto LABEL_58;
      }

      CFRelease(v38);
      if (v39)
      {
        CFRelease(v39);
      }
    }

    if (a6)
    {
      *a6 = 7;
    }

    CFRelease(MutableCopy);
    MutableCopy = 0;
    goto LABEL_76;
  }

  v34 = 0;
  if (MutableCopy)
  {
LABEL_58:
    v35 = CFStringCreateWithBytes(v26, v55, DWORD2(v55), 0x8000100u, 0);
    if (v35)
    {
      v36 = v35;
      CFStringAppend(MutableCopy, v35);
      if (v34)
      {
        if (_PNIsValidPhoneNumberForCountry(MutableCopy, a2, 1, 1, 0))
        {
          v37 = v34;
        }

        else
        {
          CFRelease(MutableCopy);
          CFStringAppend(v34, v36);
          v37 = 0;
          MutableCopy = v34;
        }
      }

      else
      {
        v37 = 0;
      }

      CFRelease(v36);
      v34 = v37;
    }
  }

LABEL_74:
  if (v34)
  {
    CFRelease(v34);
  }

LABEL_76:
  free(v25);
  if (a3 && MutableCopy)
  {
    v43 = _PNCreateStringByAddingPauses(MutableCopy, a3);
    CFRelease(MutableCopy);
    MutableCopy = v43;
  }

LABEL_49:

  return MutableCopy;
}

CFStringRef __CFPhoneNumberCopyFullyQualified(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (a2)
  {
    v8 = *(a1 + 32);
    if ((a3 & 1) == 0)
    {
LABEL_3:

      return _PNCopyFullyQualifiedNumberForCountryInternal(v6, v7, v8, &__block_literal_global_9, 0, 0);
    }
  }

  else
  {
    v8 = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  result = _PNCopyFullyQualifiedNumberForCountryInternal(v6, v7, v8, &__block_literal_global_9, *(a1 + 72), 0);
  if (result)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3 == 0;
  }

  if (!v10)
  {
    if (PNIsValidPhoneNumberForCountry(*(a1 + 40), *(a1 + 48)) && (CFStringHasPrefix(*(a1 + 40), @"+1800") || CFStringHasPrefix(*(a1 + 40), @"+1888") || CFStringHasPrefix(*(a1 + 40), @"+1877") || CFStringHasPrefix(*(a1 + 40), @"+1866") || CFStringHasPrefix(*(a1 + 40), @"+1855") || CFStringHasPrefix(*(a1 + 40), @"+1844")))
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = *(a1 + 40);

      return CFStringCreateCopy(v11, v12);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *_FindNationalAccessCodeForDigitsInCountry(UniChar *a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, CFStringRef *a5)
{
  if (!*a4)
  {
    return 0;
  }

  v6 = a4;
  while (1)
  {
    v10 = NumberOfDigitsRequiredForPattern(v6);
    if (a3[1] >= v10)
    {
      v11 = v10;
      if (InlineBufferHasPatternAtOffset(a1, a2, v6, *a3))
      {
        break;
      }
    }

    v12 = &v6[strlen(v6)];
    v13 = v12[1];
    v6 = v12 + 1;
    if (!v13)
    {
      return 0;
    }
  }

  if (a5)
  {
    *a5 = _CreateFormattedStringForDigitsInRange(a1, a2, *a3, v11, v6, 0, 0, 0, 1);
  }

  v14 = a3[1] - v11;
  *a3 += v11;
  a3[1] = v14;
  return v6;
}

uint64_t decomposedPhoneNumbersEqual(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (!itu_streql(*a1, *a2))
  {
    v10 = 0;
    v11 = 0;
    if (!a4)
    {
      return v10;
    }

    goto LABEL_22;
  }

  v8 = *(a1 + 40);
  v9 = v8 == *(a2 + 40) && itu_strneql(*(a1 + 32), *(a2 + 32), v8);
  v12 = *(a1 + 56);
  if (v12 != *(a2 + 56))
  {
    v13 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_14:
    v10 = v13 & v9;
    v11 = 1;
    if (!a4)
    {
      return v10;
    }

    goto LABEL_22;
  }

  v13 = itu_strneql(*(a1 + 48), *(a2 + 48), v12);
  if (a3)
  {
    goto LABEL_14;
  }

LABEL_9:
  v14 = *a1;
  v15 = *a1 && *v14 == 56 && v14[1] == 54 && v14[2] == 0;
  v10 = v13 & v9;
  v11 = v15 || v13 && v9;
  if (v13 && (v11 & 1) == 0)
  {
    if (!*(a1 + 32))
    {
      v11 = 0;
      v10 = 1;
      if (!a4)
      {
        return v10;
      }

      goto LABEL_22;
    }

    v11 = 0;
    v10 = *(a2 + 32) == 0;
  }

  if (a4)
  {
LABEL_22:
    *a4 = v11 & 1;
  }

  return v10;
}

BOOL itu_streql(const char *a1, const char *a2)
{
  if (!a1 && a2)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  if (a1 && !a2)
  {
    return 0;
  }

  return strcmp(a1, a2) == 0;
}

CFStringRef _CreateFormattedNumberForDigitsWithCountryIndex(const __CFString *a1, uint64_t a2, unsigned int a3, const __CFString *a4, _DWORD *a5, void *a6)
{
  v12 = PNGetFormatFileHeader();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v105 = a5;
  v106 = a3;
  v14 = (&v12[3 * UIPhoneFormatCountryGetCount(v12) + 1] + v12[3 * a2 + 3]);
  v15 = *v14;
  v16 = *(v14 + 1);
  v120 = (v14 + 6);
  if (a6)
  {
    *a6 = v14;
  }

  v107 = a6;
  memset(v112, 0, sizeof(v112));
  Length = CFStringGetLength(a1);
  v110 = 0;
  *v111 = Length;
  v113 = a1;
  v116 = 0;
  v117 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v114 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v118 = 0;
  v119 = 0;
  v115 = CStringPtr;
  v20 = _NumberRangeWithoutVerticalServiceCode(a1, 0, a2);
  if (v20 != -1)
  {
    v22 = v20;
    v23 = v21;
    v24 = v20 + v21;
    v25 = *MEMORY[0x277CBECE8];
    v26 = CFStringGetLength(a1);
    v27.length = v22;
    if (v22 >= v26)
    {
      v27.length = CFStringGetLength(a1);
    }

    v27.location = 0;
    v28 = CFStringCreateWithSubstring(v25, a1, v27);
    v122.location = v22;
    v122.length = v23;
    v29 = CFStringCreateWithSubstring(v25, a1, v122);
    v123.length = Length - v24;
    v123.location = v24;
    v30 = CFStringCreateWithSubstring(v25, a1, v123);
    FormattedNumberForDigitsWithCountryIndex = _CreateFormattedNumberForDigitsWithCountryIndex(v29, a2, v106, a4, v105, v107);
    if (v106)
    {
      CFRelease(v28);
      v28 = &stru_2858F2AC8;
    }

    v32 = "";
    if (CFStringGetLength(FormattedNumberForDigitsWithCountryIndex) && CFStringGetLength(v28))
    {
      v32 = " ";
    }

    Copy = CFStringCreateWithFormat(v25, 0, @"%@%s%@%@", v28, v32, FormattedNumberForDigitsWithCountryIndex, v30);
    CFRelease(v28);
    CFRelease(v29);
    CFRelease(FormattedNumberForDigitsWithCountryIndex);
    v34 = v30;
LABEL_122:
    CFRelease(v34);
    return Copy;
  }

  v35 = a4;
  if (a4)
  {
    goto LABEL_17;
  }

  v108 = 0;
  theString = 0;
  v48 = _InternationalPrefixForDigitsInCountry(v14, a2, a1, 0, 0, Length, &v108, &theString);
  if (v48)
  {
    v49 = v48;
    if (v107)
    {
      *(v107 + 40) = 1;
    }

    if (theString)
    {
      v50 = NumberOfDigitsRequiredForPattern(theString);
    }

    else
    {
      v50 = 0;
    }

    v76 = NumberOfDigitsRequiredForPattern(v49);
    if (v50 + v76 <= Length)
    {
      v77 = v76;
    }

    else
    {
      v77 = Length - v50;
    }

    v104 = v49;
    FormattedStringForDigitsInRange = _CreateFormattedStringForDigitsInRange(v112, 0, v50, v77, v49, v106, 0, 0, 1);
    v79 = *MEMORY[0x277CBECE8];
    v80 = v77 + v50;
    v127.length = CFStringGetLength(a1) - (v77 + v50);
    v127.location = v77 + v50;
    v81 = CFStringCreateWithSubstring(v79, a1, v127);
    v82 = v108;
    v83 = PNGetFormatFileHeader();
    if (v83)
    {
      v84 = v83;
      v121 = 0;
      if (v82)
      {
        v85 = strlen(v82);
        v86 = v84;
        v87 = 0;
        v88 = v82;
        v89 = 0;
      }

      else
      {
        v85 = CFStringGetLength(v81);
        v89 = &v121;
        v86 = v84;
        v87 = v81;
        v88 = 0;
      }

      CountryOffsetFromDialingCode = _GetCountryOffsetFromDialingCode(v86, v87, v88, 0, v85, v89);
      v92 = CountryOffsetFromDialingCode;
      if (CountryOffsetFromDialingCode == a2)
      {
        v93 = v106;
      }

      else
      {
        v93 = v106 & 0xFFFFFFFD;
      }

      if (CountryOffsetFromDialingCode != -1)
      {
        v128.length = v121;
        v128.location = 0;
        v94 = CFStringCreateWithSubstring(v79, v81, v128);
        v95 = v121;
        v96 = CFStringGetLength(v81);
        v129.length = v96 - v121;
        v129.location = v95;
        v97 = CFStringCreateWithSubstring(v79, v81, v129);
        v90 = _CreateFormattedNumberForDigitsWithCountryIndex(v97, v92, v93, v94, v105, v107);
        if (v107 && *(v107 + 41) == 1)
        {
          v107[6] = v121;
        }

        CFRelease(v97);
        CFRelease(v94);
        if ((v93 & 2) == 0)
        {
          goto LABEL_107;
        }

LABEL_109:
        CFRelease(FormattedStringForDigitsInRange);
        v98 = 0;
        theString = 0;
        FormattedStringForDigitsInRange = &stru_2858F2AC8;
        goto LABEL_110;
      }

      v90 = CFRetain(v81);
      if ((v93 & 2) != 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v90 = 0;
      if ((v106 & 2) != 0)
      {
        goto LABEL_109;
      }
    }

LABEL_107:
    v98 = theString;
LABEL_110:
    v99 = "";
    if (v98)
    {
      v100 = v98;
    }

    else
    {
      v100 = "";
    }

    if ((*v104 != 43 || v77 >= 2) && CFStringGetLength(v90) && CFStringGetLength(FormattedStringForDigitsInRange) > 0)
    {
      v99 = " ";
    }

    Copy = CFStringCreateWithFormat(v79, 0, @"%s%@%s%@", v100, FormattedStringForDigitsInRange, v99, v90);
    if (v107 && *(v107 + 41) == 1)
    {
      v107[6] += v80;
    }

    CFRelease(FormattedStringForDigitsInRange);
    CFRelease(v81);
    v34 = v90;
    goto LABEL_122;
  }

  v35 = 0;
LABEL_17:
  theString = 0;
  v36 = _FormatEntryAndNationalPrefixForDigitsInCountry(v14, v112, 0, &v110, v35 != 0, &v120, &theString, a6);
  v102 = v36 != 0;
  v37 = v35;
  v103 = v36;
  if (!v36)
  {
    goto LABEL_43;
  }

  v38 = *(v36 + 7);
  v39 = _UIPhoneFormatEntryReplacementCountryCodeRange(v14, v36);
  if (v39 != -1)
  {
    v40 = v14 + *v14 + *(v14 + 1);
    v41 = v38 + v39;
    v42 = strlen(&v40[v38 + v39]);
    v43 = &v40[v41];
    v37 = a4;
    v44 = _GetCountryOffsetFromDialingCode(v13, 0, v43, 0, v42, 0);
    if (v44 != -1)
    {
      v45 = v44;
      v124.location = v110;
      v124.length = *v111;
      v46 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v124);
      v47 = v106;
      Copy = _CreateFormattedNumberForDigitsWithCountryIndex(v46, v45, v106, 0, v105, v107);
      CFRelease(v46);
      if (!a4)
      {
LABEL_87:
        v34 = theString;
        if (!theString)
        {
          return Copy;
        }

        goto LABEL_122;
      }

      goto LABEL_57;
    }
  }

  v51 = v14 + v15 + v16;
  if (v51)
  {
    v47 = v106;
    Copy = _CreateFormattedStringForDigitsInRange(v112, 0, v110, *v111, &v51[v38], v106, theString, v37, 0);
    if (v105)
    {
      *v105 = a2;
    }

    if (v107)
    {
      v52 = 0;
      v53 = 0;
      *(v107 + 1) = *v103;
      v54 = *(v103 + 7);
      v107[3] = &v51[v54];
      v55 = v14 + *v14 + *(v14 + 1) + v54;
      v56 = -1;
      while (1)
      {
        v57 = v55[v52];
        if (v57 == 91)
        {
          if (v55[v52 + 1] == 91)
          {
            if ((v55[v52 + 2] - 48) > 9)
            {
LABEL_49:
              v107[8] = v56;
              v107[9] = v53;
              break;
            }

            v56 = v52 + 2;
          }
        }

        else
        {
          if (!v55[v52])
          {
            goto LABEL_49;
          }

          if (v56 != -1 && v57 == 93 && v55[v52 + 1] == 93)
          {
            v53 = v52 - v56;
          }
        }

        ++v52;
      }
    }

    if (!v120 || (v103[12] & 1) != 0)
    {
      v59 = 1;
    }

    else
    {
      v60 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@", theString, Copy);
      CFRelease(Copy);
      v59 = 1;
      Copy = v60;
    }
  }

  else
  {
LABEL_43:
    v58 = *MEMORY[0x277CBECE8];
    if (v37 && theString)
    {
      v125.location = v110;
      v125.length = *v111;
      Copy = CFStringCreateWithSubstring(v58, a1, v125);
      v47 = v106;
      if (v103)
      {
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    Copy = CFStringCreateCopy(v58, a1);
    v47 = v106;
    v59 = v102;
  }

  if (!v37)
  {
    goto LABEL_87;
  }

  if (v59)
  {
LABEL_56:
    if ((v103[12] & 2) != 0)
    {
      goto LABEL_87;
    }
  }

LABEL_57:
  if (theString)
  {
    v61 = "";
    if ((v47 & 4) != 0)
    {
      v62 = "";
    }

    else
    {
      v62 = "(";
    }

    if ((v47 & 4) != 0)
    {
      v63 = &stru_2858F2AC8;
    }

    else
    {
      v63 = @"");
    }

    if (CFStringGetLength(Copy))
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(Copy, 0);
      v65 = *MEMORY[0x277CBECE8];
      if (CharacterAtIndex == 40)
      {
        v126.length = CFStringGetLength(Copy) - 1;
        v126.location = 1;
        MutableCopy = CFStringCreateWithSubstring(v65, Copy, v126);
        if (CFStringGetLength(v37))
        {
          v61 = " ";
        }

        v67 = theString;
        if (CFStringGetLength(MutableCopy))
        {
          v68 = MutableCopy;
        }

        else
        {
          v68 = v63;
        }

        v69 = CFStringCreateWithFormat(v65, 0, @"%@%s%s%@%@", v37, v61, v62, v67, v68);
        goto LABEL_85;
      }
    }

    else
    {
      v65 = *MEMORY[0x277CBECE8];
    }

    v73 = CFStringGetLength(theString);
    MutableCopy = CFStringCreateMutableCopy(v65, v73, theString);
    CFStringTrimWhitespace(MutableCopy);
    if (CFStringGetLength(v37))
    {
      v74 = " ";
    }

    else
    {
      v74 = "";
    }

    if (CFStringGetLength(Copy))
    {
      v75 = " ";
    }

    else
    {
      v75 = "";
    }

    v69 = CFStringCreateWithFormat(v65, 0, @"%@%s%s%@%@%s%@", v37, v74, v62, MutableCopy, v63, v75, Copy);
LABEL_85:
    v72 = v69;
    CFRelease(MutableCopy);
LABEL_86:
    CFRelease(Copy);
    Copy = v72;
    goto LABEL_87;
  }

  if ((v47 & 2) == 0)
  {
    v70 = *MEMORY[0x277CBECE8];
    v71 = "";
    if (CFStringGetLength(Copy) && CFStringGetLength(v37))
    {
      v71 = " ";
    }

    v72 = CFStringCreateWithFormat(v70, 0, @"%@%s%@", v37, v71, Copy);
    goto LABEL_86;
  }

  return Copy;
}

uint64_t InlineBufferHasPatternAtOffset(UniChar *buffer, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = *a3;
  if (!*a3)
  {
    return v4 & 1;
  }

  v9 = 0;
  LODWORD(v10) = 0;
  v11 = a2 + a4;
  v12 = a3;
  while (1)
  {
    if (a2)
    {
      v13 = *(v11 + v9);
      goto LABEL_19;
    }

    v14 = v9 + a4;
    if (v14 < 0)
    {
      break;
    }

    v15 = *(buffer + 20);
    if (v15 <= v14)
    {
      break;
    }

    v16 = *(buffer + 17);
    if (v16)
    {
      v13 = *(v16 + 2 * *(buffer + 19) + 2 * v14);
    }

    else
    {
      v17 = *(buffer + 18);
      if (v17)
      {
        v13 = *(v17 + *(buffer + 19) + v14);
      }

      else
      {
        if (*(buffer + 22) <= v14 || (v18 = *(buffer + 21), v18 > v14))
        {
          v19 = v14 - 4;
          if (v14 < 4)
          {
            v19 = 0;
          }

          if (v19 + 64 < v15)
          {
            v15 = v19 + 64;
          }

          *(buffer + 21) = v19;
          *(buffer + 22) = v15;
          v29.length = v15 - v19;
          v29.location = *(buffer + 19) + v19;
          CFStringGetCharacters(*(buffer + 16), v29, buffer);
          v18 = *(buffer + 21);
        }

        v13 = buffer[v14 - v18];
      }
    }

LABEL_19:
    v20 = v13;
    if (!v13)
    {
      break;
    }

    v21 = *v12;
    v22 = (v21 & 0xFE) != 0x2A || v20 == v21;
    if (!v22 || u_isdigit(v21) && (v23 = u_charDigitValue(*v12), v23 != u_charDigitValue(v20)))
    {
LABEL_38:
      v27 = 0;
      LOBYTE(v25) = 0;
      goto LABEL_40;
    }

    v24 = *v12;
    if (v24 != 92)
    {
      goto LABEL_44;
    }

    if (v20 != 35 && v12[1] == 35)
    {
      goto LABEL_38;
    }

    v25 = a3[v10 + 1];
    if (v25 == 35)
    {
      ++v9;
      LODWORD(v10) = v10 + 1;
    }

    else
    {
LABEL_44:
      if (u_isdigit(v24) || (v26 = *v12, v26 <= 0x2B) && (LOBYTE(v25) = 0, ((1 << v26) & 0xC0800000000) != 0))
      {
        ++v9;
      }
    }

    v10 = v10 + 1;
    v12 = &a3[v10];
    if (!a3[v10])
    {
      v27 = 1;
      goto LABEL_40;
    }
  }

  v27 = 0;
  LOBYTE(v25) = 1;
LABEL_40:
  v4 = v27 | v25;
  return v4 & 1;
}

const char *__InternationalPrefixForDigitsInCountry(uint64_t a1, unsigned int a2, const __CFString *a3, const char *a4, CFIndex a5, uint64_t a6, void *a7)
{
  v11 = 0;
  v12 = a1 + 12;
  v13 = (a1 + 12);
  do
  {
    v14 = strlen(v13);
    v11 += v14 + 1;
    v13 += v14 + 1;
  }

  while (*v13);
  if (!a6)
  {
    return 0;
  }

  v52 = 0;
  v15 = v12 + v11 + 1;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *buffer = 0u;
  if (!a4)
  {
    *&v49 = a3;
    *(&v50 + 1) = 0;
    *&v51 = CFStringGetLength(a3);
    CharactersPtr = CFStringGetCharactersPtr(a3);
    CStringPtr = 0;
    *(&v49 + 1) = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(a3, 0x600u);
    }

    *(&v51 + 1) = 0;
    v52 = 0;
    *&v50 = CStringPtr;
  }

  v37 = a7;
  v18 = *MEMORY[0x277CBECE8];
  contentsDeallocator = *MEMORY[0x277CBED00];
  while (1)
  {
    while (*v15 == 45)
    {
      if (*(v15 + 1) != 62)
      {
        goto LABEL_14;
      }

      v15 += strlen(v15) + 1;
    }

    if (!*v15)
    {
      if (a4)
      {
        CharacterAtIndex = a4[a5];
      }

      else
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(a3, a5);
      }

      if (CharacterAtIndex == 43)
      {
        return "+";
      }

      else
      {
        return 0;
      }
    }

LABEL_14:
    v19 = strncmp("[[if valid]]", v15, 0xCuLL);
    v20 = (v15 + 12);
    v21 = (v19 ? v15 : v15 + 12);
    if (InlineBufferHasPatternAtOffset(buffer, a4, v21, a5))
    {
      v22 = strlen(v21);
      if (v19)
      {
        break;
      }

      v23 = NumberOfDigitsRequiredForPattern(v20);
      if (a6 <= v23)
      {
        break;
      }

      v24 = v23;
      if (!InlineBufferHasPatternAtOffset(buffer, a4, v20, a5))
      {
        break;
      }

      v25 = v24;
      v26 = PNGetFormatFileHeader() + 12 * a2;
      v27 = strlen((v26 + 8));
      v28 = CFStringCreateWithBytesNoCopy(v18, (v26 + 8), v27, 0x8000100u, 0, contentsDeallocator);
      if (a4)
      {
        v29 = strlen(a4);
        v30 = CFStringCreateWithBytesNoCopy(v18, &a4[v25], v29 - v25, 0x8000100u, 0, contentsDeallocator);
      }

      else
      {
        v53.length = CFStringGetLength(a3) - v25;
        v53.location = v25;
        v30 = CFStringCreateWithSubstring(v18, a3, v53);
      }

      v31 = v30;
      MutableCopy = CFStringCreateMutableCopy(v18, 0, @"+");
      CFStringAppend(MutableCopy, v31);
      valid = _PNIsValidPhoneNumberForCountry(MutableCopy, v28, 0, 1, 0);
      CFRelease(v28);
      CFRelease(v31);
      CFRelease(MutableCopy);
      if (valid)
      {
        break;
      }
    }

    v15 = &v21[strlen(v21) + 1];
  }

  if (v37)
  {
    v34 = &v21[v22];
    if (v21[v22 + 1] == 45 && v34[2] == 62)
    {
      *v37 = v34 + 3;
    }
  }

  return v21;
}

uint64_t NumberOfDigitsRequiredForPattern(unsigned __int8 *a1)
{
  v1 = a1;
  v2 = *a1;
  result = v2 == 43;
  while (v2 == 92)
  {
    if (v1[1] == 35)
    {
      ++v1;
      goto LABEL_13;
    }

LABEL_7:
    v4 = v2;
    v5 = v2 - 48;
    if (v4 != 35 && v5 >= 0xA)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

LABEL_13:
    v7 = *++v1;
    LOBYTE(v2) = v7;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  return result;
}

CFStringRef _PNCopyFormattedNumberForDigitsWithCountry(const __CFString *a1, const __CFString *a2, unsigned int a3)
{
  v6 = PNGetFormatFileHeader();
  FormattedNumberForDigitsWithCountryIndex = 0;
  if (!a1 || !a2 || !v6)
  {
    return FormattedNumberForDigitsWithCountryIndex;
  }

  InfoIndex = UIPhoneFormatCountryGetInfoIndex(v6, a2);
  if (InfoIndex != -1)
  {
    v9 = InfoIndex;
    FormattedNumberForDigitsWithCountryIndex = _CreateFormattedNumberForDigitsWithCountryIndex(a1, InfoIndex, a3, 0, 0, 0);
    if (!FormattedNumberForDigitsWithCountryIndex)
    {
      return FormattedNumberForDigitsWithCountryIndex;
    }

    if (!CFEqual(a1, FormattedNumberForDigitsWithCountryIndex))
    {
      return FormattedNumberForDigitsWithCountryIndex;
    }

    location = CFStringFind(FormattedNumberForDigitsWithCountryIndex, @"x", 0).location;
    if (location == -1)
    {
      return FormattedNumberForDigitsWithCountryIndex;
    }

    v11 = location;
    v12 = *MEMORY[0x277CBECE8];
    v20.location = 0;
    v20.length = location;
    v13 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], FormattedNumberForDigitsWithCountryIndex, v20);
    v21.length = CFStringGetLength(FormattedNumberForDigitsWithCountryIndex) - v11;
    v21.location = v11;
    v14 = CFStringCreateWithSubstring(v12, FormattedNumberForDigitsWithCountryIndex, v21);
    CFRelease(FormattedNumberForDigitsWithCountryIndex);
    v15 = _CreateFormattedNumberForDigitsWithCountryIndex(v13, v9, a3, 0, 0, 0);
    if (v15)
    {
      v16 = v15;
      if (!CFEqual(v15, v13))
      {
        FormattedNumberForDigitsWithCountryIndex = CFStringCreateWithFormat(v12, 0, @"%@ %@", v16, v14);
        CFRelease(v16);
        goto LABEL_16;
      }

      CFRelease(v16);
    }

    FormattedNumberForDigitsWithCountryIndex = CFStringCreateCopy(v12, a1);
LABEL_16:
    CFRelease(v13);
    CFRelease(v14);
    return FormattedNumberForDigitsWithCountryIndex;
  }

  v17 = *MEMORY[0x277CBECE8];

  return CFStringCreateCopy(v17, a1);
}

CFStringRef _CreateFormattedStringForDigitsInRange(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *__s, uint64_t a6, const __CFString *a7, const __CFString *a8, char a9)
{
  v9 = a8;
  v10 = a7;
  if (a7)
  {
    v14 = a8 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = strlen(__s);
  if (v10)
  {
    Length = CFStringGetLength(v10);
    if (v9)
    {
LABEL_9:
      v18 = CFStringGetLength(v9);
      goto LABEL_12;
    }
  }

  else
  {
    Length = 0;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v18 = 0;
LABEL_12:
  v19 = v16 + 4;
  if (!v15)
  {
    v19 = v16 + 1;
  }

  v20 = v19 + Length + v18;
  v21 = malloc_type_malloc(2 * v20, 0x498DFD98uLL);
  v104 = 2 * v20;
  bzero(v21, 2 * v20);
  v22 = 0;
  v23 = *__s;
  if (!*__s)
  {
    v24 = v21;
    goto LABEL_173;
  }

  v24 = v21;
  if (a4)
  {
    v22 = 0;
    v113 = 0;
    v25 = 0;
    v111 = 0;
    v108 = 0;
    v109 = 0;
    v26 = 0;
    v102 = v10 == 0;
    v27 = a2;
    v105 = a2 + a3;
    v106 = v21;
    if (a4 >= v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = a4;
    }

    v29 = 0;
    v101 = v28;
    v24 = v21;
    v103 = a4;
    while (1)
    {
      if (v25)
      {
        if (v23 == 93)
        {
          v30 = 0;
          v31 = __s[v22 + 1];
          v14 = v31 == 93;
          v25 = v31 != 93;
          if (v14)
          {
            v32 = v22 + 1;
          }

          else
          {
            v32 = v22;
          }

          goto LABEL_80;
        }

        v30 = 0;
        v25 = 1;
        goto LABEL_79;
      }

      if (v23 > 44)
      {
        if (v23 > 91)
        {
          if (v23 == 92)
          {
            v36 = v9;
            ++v22;
LABEL_60:
            v34 = a1;
            goto LABEL_61;
          }

          if (v23 != 99)
          {
            if (v23 == 110)
            {
              if (!((v102 | v111) & 1 | (v9 != 0)))
              {
                v33 = CFStringGetLength(v10);
                v116.location = 0;
                v116.length = v33;
                CFStringGetCharacters(v10, v116, v24);
                v27 = a2;
                v30 = 0;
                v25 = 0;
                v111 = 1;
                v32 = v22;
                v24 += v33;
                goto LABEL_80;
              }

              goto LABEL_58;
            }

            goto LABEL_59;
          }

          if (v9)
          {
            if (v108)
            {
              v30 = 0;
              v25 = 0;
LABEL_95:
              v108 = 1;
              goto LABEL_79;
            }

            if ((a6 & 2) != 0)
            {
              do
              {
                v79 = v22 + 1;
                v80 = __s[++v22];
              }

              while (v80 == 32);
              v22 = v79 - 1;
              if (!v10)
              {
                goto LABEL_94;
              }
            }

            else
            {
              v50 = CFStringGetLength(v9);
              v117.location = 0;
              v117.length = v50;
              CFStringGetCharacters(v9, v117, v24);
              v27 = a2;
              v24 += v50;
              if (!v10)
              {
LABEL_94:
                v25 = 0;
                v30 = 1;
                goto LABEL_95;
              }
            }

            if (v111)
            {
              v25 = 0;
              v30 = 1;
              v108 = 1;
              v111 = 1;
              goto LABEL_79;
            }

            v81 = CFStringGetLength(v10);
            *v24 = 32;
            v82 = v24 + 1;
            if ((a6 & 4) != 0)
            {
              v120.location = 0;
              v87 = v81;
              v120.length = v81;
              CFStringGetCharacters(v10, v120, v82);
              v25 = 0;
              v30 = 1;
              v108 = 1;
              v111 = 1;
              v32 = v22;
              v24 = &v82[v87];
            }

            else
            {
              v24[1] = 40;
              v83 = v24 + 2;
              v119.location = 0;
              v84 = v81;
              v119.length = v81;
              CFStringGetCharacters(v10, v119, v83);
              v25 = 0;
              v85 = &v83[v84];
              *v85 = 41;
              v24 = v85 + 1;
              v30 = 1;
              v108 = 1;
              v111 = 1;
LABEL_100:
              v32 = v22;
            }

            v27 = a2;
            goto LABEL_80;
          }

LABEL_58:
          v30 = 0;
          v25 = 0;
          goto LABEL_79;
        }

        if (v23 != 45)
        {
          if (v23 == 91)
          {
            v32 = v22 + 1;
            if (__s[v22 + 1] == 91)
            {
              v30 = 0;
              v25 = 1;
              goto LABEL_80;
            }

            goto LABEL_78;
          }

LABEL_59:
          v36 = v9;
          goto LABEL_60;
        }

        if ((a6 & 8) != 0)
        {
          goto LABEL_58;
        }

LABEL_78:
        v30 = 0;
        v25 = 0;
        *v24++ = __s[v22];
        goto LABEL_79;
      }

      if (v23 > 39)
      {
        if (v23 == 40)
        {
          v113 = 1;
          if ((a6 & 4) != 0)
          {
            goto LABEL_58;
          }

          goto LABEL_78;
        }

        if (v23 != 41)
        {
          goto LABEL_59;
        }

        if ((v109 | v111 | v108) & 1) != 0 || ((v113 ^ 1))
        {
          v113 = 0;
          if ((a6 & 4) != 0)
          {
            v25 = 0;
            v30 = 0;
            goto LABEL_79;
          }

          goto LABEL_78;
        }

        bzero(v21, v104);
        v27 = a2;
        v30 = 0;
        v108 = 0;
        v109 = 0;
        v111 = 0;
        v25 = 0;
        v113 = 0;
        v24 = v21;
LABEL_79:
        v32 = v22;
        goto LABEL_80;
      }

      if (v23 == 32)
      {
        v30 = 0;
        if (((v109 | v111 | v108) & 1) != 0 && ((a6 & 8) == 0) | v26 & 1)
        {
          goto LABEL_78;
        }

        v25 = 0;
        goto LABEL_79;
      }

      v34 = a1;
      if (v23 != 35)
      {
        v36 = v9;
LABEL_61:
        v37 = a6;
        if (v27)
        {
          v38 = a2 + a3;
          v39 = v29;
LABEL_63:
          v40 = *(v38 + v29);
          goto LABEL_69;
        }

        v39 = v29;
        v29 += a3;
        if (v29 < 0 || (v41 = *(v34 + 160), v41 <= v29))
        {
          v40 = 0;
        }

        else
        {
          v42 = *(v34 + 136);
          if (!v42)
          {
            v86 = *(v34 + 144);
            if (!v86)
            {
              if (*(v34 + 176) <= v29 || (v89 = *(v34 + 168), v89 > v29))
              {
                v90 = v29 - 4;
                if (v29 < 4)
                {
                  v90 = 0;
                }

                if (v90 + 64 < v41)
                {
                  v41 = v90 + 64;
                }

                *(v34 + 168) = v90;
                *(v34 + 176) = v41;
                v121.length = v41 - v90;
                v121.location = *(v34 + 152) + v90;
                CFStringGetCharacters(*(v34 + 128), v121, v34);
                v34 = a1;
                v89 = *(a1 + 168);
              }

              v40 = *(v34 + 2 * (v29 - v89));
              goto LABEL_69;
            }

            v38 = v86 + *(v34 + 152);
            goto LABEL_63;
          }

          v40 = *(v42 + 2 * *(v34 + 152) + 2 * v29);
        }

LABEL_69:
        if (u_isdigit(__s[v22]))
        {
          if (u_isdigit(v40))
          {
            v43 = v10;
            v44 = u_charDigitValue(__s[v22]);
            v14 = v44 == u_charDigitValue(v40);
            v10 = v43;
            a4 = v103;
            if (v14)
            {
              v30 = 0;
              v25 = 0;
              *v24++ = v40;
              v29 = v39 + 1;
              v109 = 1;
              v32 = v22;
              v27 = a2;
              a6 = v37;
              v9 = v36;
              v21 = v106;
              goto LABEL_80;
            }
          }
        }

        if (v40 == __s[v22])
        {
          v29 = v39 + 1;
        }

        else
        {
          v29 = v39;
        }

        v27 = a2;
        a6 = v37;
        v9 = v36;
        v21 = v106;
        goto LABEL_78;
      }

      if (v27)
      {
        v35 = *(v105 + v29);
      }

      else
      {
        v46 = v29;
        v47 = v29 + a3;
        if (v47 < 0 || (v48 = *(a1 + 160), v48 <= v47))
        {
          v35 = 0;
        }

        else
        {
          v49 = *(a1 + 136);
          if (v49)
          {
            v35 = *(v49 + 2 * *(a1 + 152) + 2 * v47);
          }

          else
          {
            v88 = *(a1 + 144);
            if (v88)
            {
              v35 = *(v88 + *(a1 + 152) + v47);
            }

            else
            {
              if (*(a1 + 176) <= v47 || (v91 = *(a1 + 168), v91 > v47))
              {
                v92 = v47 - 4;
                if (v47 < 4)
                {
                  v92 = 0;
                }

                if (v92 + 64 < v48)
                {
                  v48 = v92 + 64;
                }

                *(a1 + 168) = v92;
                *(a1 + 176) = v48;
                v122.length = v48 - v92;
                v122.location = *(a1 + 152) + v92;
                CFStringGetCharacters(*(a1 + 128), v122, a1);
                v34 = a1;
                v91 = *(a1 + 168);
              }

              v35 = *(v34 + 2 * (v47 - v91));
            }
          }
        }

        v29 = v46;
      }

      *v24 = v35;
      if (pn_uset_basicPresentationSetContains() == 1)
      {
        v30 = 0;
        v25 = 0;
        ++v24;
        ++v29;
        v109 = 1;
        goto LABEL_100;
      }

      *v24 = 0;
      if (v113)
      {
        v51 = u_strrchr(v21, 0x28u);
        if (v51 < v24)
        {
          v52 = v24 - v51;
          if (v52 >= 1)
          {
            v53 = v52 - 1;
          }

          else
          {
            v53 = 0;
          }

          u_strncpy(v51, v51 + 1, v53);
          *--v24 = 0;
        }
      }

      v27 = a2;
      v54 = v101 - v29;
      if (v101 <= v29)
      {
        v30 = 0;
        v25 = 0;
        v113 = 0;
        v109 = 1;
        goto LABEL_79;
      }

      v98 = v10;
      v99 = a6;
      v100 = v9;
      v55 = 0;
      v56 = 0;
      v57 = a3 + v29;
      v58 = -(a3 + v29);
      v59 = a3 + 64 + v29;
      v60 = v105 + v29;
      v61 = v29;
      v62 = v57;
      v63 = a1;
      v64 = a1 + 2 * v57;
      v65 = 2 * a3 + 2 * v61;
      do
      {
        if (v62 >= 4)
        {
          v66 = 4;
        }

        else
        {
          v66 = v62;
        }

        if (v27)
        {
          v67 = *(v60 + v56);
          goto LABEL_123;
        }

        v68 = v57 + v56;
        if ((v57 + v56) < 0 || (v69 = v63[20], v69 <= v68))
        {
          v67 = 0;
        }

        else
        {
          v70 = v63[17];
          if (v70)
          {
            v71 = v70 + 2 * v63[19] + v65;
LABEL_119:
            v67 = *(v71 + 2 * v56);
            goto LABEL_123;
          }

          v72 = v63[18];
          if (!v72)
          {
            if (v63[22] <= v68 || (v73 = v63[21], v73 > v68))
            {
              v74 = v57 - v66;
              v75 = v66 + v58;
              v76 = v59 - v66;
              v77 = v56 + v74;
              v78 = v77 + 64;
              if (v77 + 64 >= v69)
              {
                v78 = v69;
              }

              *(a1 + 168) = v77;
              *(a1 + 176) = v78;
              if (v69 >= v76)
              {
                v69 = v76;
              }

              v118.location = v77 + *(a1 + 152);
              v118.length = v69 + v75;
              v114 = v57;
              v110 = v64;
              v97 = v65;
              CFStringGetCharacters(*(a1 + 128), v118, a1);
              v65 = v97;
              v64 = v110;
              v63 = a1;
              v57 = v114;
              v27 = a2;
              v73 = *(a1 + 168);
            }

            v71 = v64 - 2 * v73;
            goto LABEL_119;
          }

          v67 = *(v72 + v63[19] + v57 + v56);
        }

LABEL_123:
        v24[v56] = v67;
        ++v62;
        ++v56;
        --v58;
        ++v59;
        v55 -= 2;
      }

      while (v54 != v56);
      v30 = 0;
      v25 = 0;
      v113 = 0;
      v24 = (v24 - v55);
      v109 = 1;
      v32 = v22;
      v29 = v101;
      v21 = v106;
      v9 = v100;
      a6 = v99;
      v10 = v98;
      a4 = v103;
LABEL_80:
      v22 = v32 + 1;
      v23 = __s[v32 + 1];
      if (__s[v32 + 1])
      {
        v45 = v29 >= a4;
      }

      else
      {
        v45 = 1;
      }

      v26 = v30;
      if (v45)
      {
        if (!(((v113 & 1) == 0) | ((a6 & 4) >> 2) & 1))
        {
          while (1)
          {
            v93 = __s[v32 + 1];
            if (v93 == 35)
            {
              break;
            }

            if (v93 == 41)
            {
              goto LABEL_169;
            }

            if (v93 != 92 || __s[v32 + 2] != 35)
            {
              v22 = v32 + 1;
              goto LABEL_173;
            }

LABEL_170:
            ++v32;
          }

          LOWORD(v93) = 32;
LABEL_169:
          *v24++ = v93;
          goto LABEL_170;
        }

        break;
      }
    }
  }

LABEL_173:
  if (a9 && __s[v22] == 32 && !__s[v22 + 1])
  {
    *v24 = 32;
  }

  v94 = *MEMORY[0x277CBECE8];
  v95 = u_strlen(v21);
  return CFStringCreateWithCharactersNoCopy(v94, v21, v95, *MEMORY[0x277CBECF0]);
}

uint64_t _UIPhoneFormatEntryReplacementCountryCodeRange(unsigned __int16 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1 + *a1 + *(a1 + 1) + *(a2 + 14);
  v4 = -1;
  while (*(v3 + v2) == 91)
  {
    if (*(v3 + v2 + 1) == 91 && !strncmp("country:", (v3 + v2 + 2), 8uLL))
    {
      v4 = v2 + 10;
    }

LABEL_8:
    ++v2;
  }

  if (*(v3 + v2))
  {
    goto LABEL_8;
  }

  return v4;
}

uint64_t pn_uset_basicPresentationSetContains()
{
  os_unfair_lock_lock(&__pn_uset_unfair_lock);
  if (!__pn_uset_getBasicPresentationSet_set)
  {
    os_unfair_lock_assert_owner(&__pn_uset_unfair_lock);
    if ((__pn_uset_getBasicPresentationPattern_didInit & 1) == 0)
    {
      u_charsToUChars("[[+][:Nd:][,;][\\ '()\\-./<>\\[\\]][*#]]", __pn_uset_getBasicPresentationPattern_pattern, 38);
      __pn_uset_getBasicPresentationPattern_didInit = 1;
    }

    __pn_uset_getBasicPresentationSet_set = uset_openPattern();
  }

  os_unfair_lock_unlock(&__pn_uset_unfair_lock);
  result = __pn_uset_getBasicPresentationSet_set;
  if (__pn_uset_getBasicPresentationSet_set)
  {

    JUMPOUT(0x24C19BE20);
  }

  return result;
}

uint64_t _PNFindFormatRuleForDigitsWithCountry(const __CFString *a1, const __CFString *a2, int a3, uint64_t a4)
{
  v8 = PNGetFormatFileHeader();
  v9 = 0;
  if (a1 && a2 && v8)
  {
    if (a4)
    {
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      *(a4 + 64) = -1;
    }

    InfoIndex = UIPhoneFormatCountryGetInfoIndex(v8, a2);
    if (InfoIndex == -1)
    {
      return 0;
    }

    else
    {
      v11 = InfoIndex;
      v14 = -1;
      v12 = _CreateFormattedNumberForDigitsWithCountryIndex(a1, InfoIndex, 0, 0, &v14, a4);
      if (v12)
      {
        CFRelease(v12);
      }

      LODWORD(v9) = a3 ^ 1;
      if (v14 == v11)
      {
        return 1;
      }

      else
      {
        return v9;
      }
    }
  }

  return v9;
}

void __CFPhoneNumberDeallocate(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[8];
  if (v8)
  {

    free(v8);
  }
}

uint64_t __CFPhoneNumberEqual(uint64_t a1, uint64_t a2)
{
  v4 = DecomposeAndCachePhoneNumber(a1);
  v5 = DecomposeAndCachePhoneNumber(a2);
  v6 = v5;
  if (v4 && v5)
  {
    v7 = v4;
    return decomposedPhoneNumbersEqual(v7, v6, 0, 0);
  }

  if (!(v4 | v5))
  {
    memset(v11, 0, sizeof(v11));
    memset(v10, 0, sizeof(v10));
    __CFPhoneNumberNormalize(a1);
    __CFPhoneNumberNormalize(a2);
    v9 = PNDecomposeForCountry(*(a1 + 16), *(a1 + 48), v11);
    if (v9 == PNDecomposeForCountry(*(a2 + 16), *(a2 + 48), v10))
    {
      v7 = v11;
      v6 = v10;
      return decomposedPhoneNumbersEqual(v7, v6, 0, 0);
    }
  }

  return 0;
}

_BYTE *__CFPhoneNumberNormalize(_BYTE *result)
{
  if (!*(result + 2))
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    memset(v5, 0, sizeof(v5));
    v4 = 0;
    result = _PNCopyBestGuessNumberForCountry(*(result + 5), *(result + 6), 1, v5, &v4);
    *(v3 + 2) = result;
  }

  return result;
}

CFStringRef _PNCreateStringByAddingPauses(const __CFString *a1, CFStringRef theString)
{
  if (theString && CFStringGetLength(theString))
  {
    if (a1 && CFStringGetLength(a1))
    {
      return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@", a1, theString);
    }

    v5 = theString;
  }

  else
  {
    if (!a1)
    {
      return 0;
    }

    v5 = a1;
  }

  return CFRetain(v5);
}

CFTypeRef _PNCreateLocalizedStringWithString(const __CFAllocator *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if (Length)
  {
    v5 = Length;
    v6 = CFLocaleCopyCurrent();
    v7 = MEMORY[0x24C19B850]();
    if (CFPhoneNumberLocaleGetNumberingSystemFromLocaleIdentifier(v7) == 2)
    {
      Copy = CFRetain(theString);
    }

    else
    {
      Mutable = CFStringCreateMutable(a1, v5);
      v12 = CFNumberFormatterCreate(a1, v6, kCFNumberFormatterDecimalStyle);
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          rangep.location = i;
          rangep.length = 1;
          valuePtr = 0;
          if (!CFNumberFormatterGetValueFromString(v12, theString, &rangep, kCFNumberShortType, &valuePtr) || (v14 = CFNumberFormatterCreateStringWithValue(a1, v12, kCFNumberShortType, &valuePtr)) == 0)
          {
            rangep.length = 1;
            v20.location = rangep.location;
            v20.length = 1;
            v14 = CFStringCreateWithSubstring(a1, theString, v20);
            if (!v14)
            {
              continue;
            }
          }

          v15 = v14;
          CFStringAppend(Mutable, v14);
          CFRelease(v15);
        }
      }

      Copy = CFStringCreateCopy(a1, Mutable);
      CFRelease(Mutable);
      CFRelease(v12);
    }

    if (CFLocaleGetLanguageCharacterDirection(v7) == kCFLocaleLanguageDirectionRightToLeft && CFStringGetLength(Copy) >= 1)
    {
      v16 = CFStringCreateWithFormat(a1, 0, @"\u202D%@\u202C", Copy);
    }

    else
    {
      v16 = CFRetain(Copy);
    }

    v9 = v16;
    if (v6)
    {
      CFRelease(v6);
    }

    if (Copy)
    {
      CFRelease(Copy);
    }

    return v9;
  }

  return CFRetain(&stru_2858F2AC8);
}

uint64_t CFPhoneNumberLocaleGetNumberingSystemFromLocaleIdentifier(CFLocaleIdentifier localeID)
{
  v1 = localeID;
  if (localeID)
  {
    v2 = *MEMORY[0x277CBECE8];
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(*MEMORY[0x277CBECE8], localeID);
    if (!ComponentsFromLocaleIdentifier)
    {
      return 0;
    }

    v4 = ComponentsFromLocaleIdentifier;
    if (CFDictionaryGetCount(ComponentsFromLocaleIdentifier) < 1)
    {
      v1 = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(v4, @"numbers");
      if (Value)
      {
        v6 = Value;
        if (CFEqual(Value, @"default"))
        {
          v7 = __CFPhoneNumberLocaleCopyNumberingSystemNameFromLocaleIdentifier(v2, v1);
        }

        else
        {
          v7 = CFRetain(v6);
        }

        v12 = v7;
        goto LABEL_15;
      }

      Count = CFDictionaryGetCount(v4);
      MutableCopy = CFDictionaryCreateMutableCopy(v2, Count, v4);
      v1 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionarySetValue(MutableCopy, @"numbers", @"default");
        LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(v2, v1);
        if (LocaleIdentifierFromComponents)
        {
          v11 = LocaleIdentifierFromComponents;
          v12 = __CFPhoneNumberLocaleCopyNumberingSystemNameFromLocaleIdentifier(v2, LocaleIdentifierFromComponents);
          CFRelease(v11);
        }

        else
        {
          v12 = 0;
        }

        CFRelease(v1);
LABEL_15:
        CFRelease(v4);
        if (v12)
        {
          if (CFEqual(v12, @"arab"))
          {
            v1 = 1;
          }

          else
          {
            v1 = 2 * (CFEqual(v12, @"latn") != 0);
          }

          v4 = v12;
          goto LABEL_21;
        }

        return 0;
      }
    }

LABEL_21:
    CFRelease(v4);
  }

  return v1;
}

CFStringRef __CFPhoneNumberLocaleCopyNumberingSystemNameFromLocaleIdentifier(const __CFAllocator *a1, CFStringRef theString)
{
  if (!CFStringGetCStringPtr(theString, 0x8000100u))
  {
    return 0;
  }

  v3 = unumsys_open();
  if (!v3)
  {
    return 0;
  }

  v5 = MEMORY[0x24C19BE00](v3);
  if (v5)
  {
    v4 = CFStringCreateWithCString(a1, v5, 0x8000100u);
  }

  else
  {
    v4 = 0;
  }

  unumsys_close();
  return v4;
}

CFTypeRef _CFPhoneNumberCopyFormattedRepresentation(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    v4 = _PNCopyFormattedNumberForDigitsWithCountry(*(a1 + 24), *(a1 + 48), 0);
    if (v4)
    {
      v5 = v4;
      *(a1 + 56) = _PNCreateStringByAddingPauses(v4, *(a1 + 32));
      CFRelease(v5);
      v2 = *(a1 + 56);
      if (v2)
      {
        goto LABEL_2;
      }
    }

    else
    {
      *(a1 + 56) = 0;
    }

    return 0;
  }

LABEL_2:

  return CFRetain(v2);
}

CFStringRef _CFPhoneNumberCopyFormattedInternationalRepresentation(uint64_t a1)
{
  v2 = __CFPhoneNumberCopyFullyQualified(a1, 0, 1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _PNCopyFormattedNumberForDigitsWithCountry(v2, *(a1 + 48), 0);
  CFRelease(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = _PNCreateStringByAddingPauses(v4, *(a1 + 32));
  CFRelease(v4);
  return v5;
}

CFHashCode __CFPhoneNumberHash(uint64_t a1)
{
  v2 = DecomposeAndCachePhoneNumber(a1);
  if (v2 && (v3 = *(v2 + 14), v3))
  {
    v4 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v2[6], v3, 0x8000100u, 0, *MEMORY[0x277CBED00]);
  }

  else
  {
    v4 = CFRetain(*(a1 + 40));
  }

  v5 = v4;
  v6 = CFHash(v4);
  CFRelease(v5);
  return v6;
}

CFStringRef _PNCopyFullyQualifiedOriginalValue(const __CFString *a1, const __CFString *a2)
{
  if (a2)
  {
    return _PNCreateStringByAddingPauses(a1, a2);
  }

  else
  {
    return CFStringCreateCopy(*MEMORY[0x277CBECE8], a1);
  }
}

uint64_t cpn_default_log()
{
  if (cpn_default_log_onceToken != -1)
  {
    cpn_default_log_cold_1();
  }

  return cpn_default_log_sLog;
}

os_log_t __cpn_default_log_block_invoke()
{
  result = os_log_create("com.apple.corephonenumbers", "default");
  cpn_default_log_sLog = result;
  return result;
}

uint64_t PNPhoneNumbersEqual(const __CFString *a1, __CFString *cf, const __CFString *a3, __CFString *a4, int a5, _BYTE *a6)
{
  v6 = 0;
  if (!a1 || !a3)
  {
    return v6;
  }

  v11 = cf;
  if (cf)
  {
    CFRetain(cf);
    if (a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = PNCopyBestGuessCountryCodeForNumber(a1);
    if (a4)
    {
LABEL_5:
      CFRetain(a4);
      if (!v11)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }
  }

  a4 = PNCopyBestGuessCountryCodeForNumber(a3);
  if (!v11)
  {
LABEL_17:
    if (v11)
    {
      CFRelease(v11);
    }

    if (a4)
    {
      CFRelease(a4);
    }

    return 0;
  }

LABEL_9:
  if (!a4)
  {
    goto LABEL_17;
  }

  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  v13 = _PNCopyBestGuessNumberForCountry(a1, v11, 1, v18, &v16 + 1);
  v14 = _PNCopyBestGuessNumberForCountry(a3, a4, 1, v17, &v16);
  v6 = 0;
  if (HIBYTE(v16) == v16)
  {
    v6 = decomposedPhoneNumbersEqual(v18, v17, a5, a6);
  }

  if (v13)
  {
    free(v13);
  }

  if (v14)
  {
    free(v14);
  }

  CFRelease(v11);
  CFRelease(a4);
  return v6;
}

__CFString *_PNCopyFullyQualifiedNumberForCountry(const __CFString *a1, __CFString *a2, uint64_t a3, _DWORD *a4)
{
  if (a1 && a2)
  {
    v11 = 0;
    v7 = _PNCopyStrippedNumberWithoutPauses(a1, a2, &v11, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___PNCopyFullyQualifiedNumberForCountry_block_invoke;
    v10[3] = &__block_descriptor_48_e34_____CFString__16__0____CFString__8l;
    v10[4] = a3;
    v10[5] = a2;
    v8 = _PNCopyFullyQualifiedNumberForCountryInternal(v7, a2, v11, v10, 0, a4);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v8;
}

CFStringRef _PNCopyAreaCodeForCountry(const __CFString *a1, const __CFString *a2)
{
  v4 = PNGetFormatFileHeader();
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  InfoIndex = UIPhoneFormatCountryGetInfoIndex(v4, a2);
  if (InfoIndex == -1)
  {
    return 0;
  }

  return _CopyPrefixForDigitsWithCountryIndex(a1, InfoIndex);
}

__CFArray *_PNCopyIndexStringsForAddressBookSearch(const __CFString *a1, __CFString *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (_PNIsValidPhoneNumberForCountry(a1, a2, 1, 1, 0))
  {
    v6 = _PNCopyStrippedNumberWithoutPauses(a1, a2, 0, 1);
    v7 = _PNCopyNormalized(v6);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *v34 = 0u;
    v35 = 0u;
    *v32 = 0u;
    *numBytes = 0u;
    v31 = 0u;
    if (!_PNFindFormatRuleForDigitsWithCountry(v6, a2, 0, &v35))
    {
      goto LABEL_44;
    }

    v8 = _PNCopyFullyQualifiedNumberForCountry(a1, a2, 0, 0);
    if (v8)
    {
      v9 = v8;
      if (CFStringGetLength(v8) && CFStringGetCharacterAtIndex(v9, 0))
      {
        v40.length = CFStringGetLength(v9) - 1;
        v40.location = 1;
        cf = CFStringCreateWithSubstring(v4, v9, v40);
        v10 = 0;
        v11 = (v35 + 12);
        do
        {
          v12 = strlen(v11);
          v10 += v12 + 1;
          v11 += v12 + 1;
        }

        while (*v11);
        v13 = v35 + 12 + v10;
        CFArrayAppendValue(Mutable, v9);
        v14 = CFStringCreateWithFormat(v4, 0, @"%s%@", v13 + 1, cf);
        CFArrayAppendValue(Mutable, v14);
        CFRelease(v14);
        if (*(v13 + 1) != 48 || *(v13 + 2) != 48 || *(v13 + 3))
        {
          v15 = CFStringCreateWithFormat(v4, 0, @"00%@", cf);
          CFArrayAppendValue(Mutable, v15);
          CFRelease(v15);
        }

        if (strcmp((v13 + 1), "011"))
        {
          v16 = CFStringCreateWithFormat(v4, 0, @"011%@", cf);
          CFArrayAppendValue(Mutable, v16);
          CFRelease(v16);
        }

        CFRelease(cf);
      }

      CFRelease(v9);
    }

    v17 = PNCreateFormattedStringWithCountry(v6, a2, 2, 0);
    if (v17)
    {
      v18 = v17;
      if (CFStringCompare(v17, a1, 0))
      {
        CFArrayAppendValue(Mutable, v18);
      }

      CFRelease(v18);
    }

    if (!_PNDecomposeForCountry(v7, a2, &v31, 1))
    {
      goto LABEL_44;
    }

    if (numBytes[0])
    {
      v19 = CFStringCreateWithBytes(v4, numBytes[0], LODWORD(numBytes[1]), 0x8000100u, 0);
      v20 = v34[0];
      if (!v34[0])
      {
LABEL_36:
        if (!v19)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v20 = v34[0];
      if (!v34[0])
      {
LABEL_44:
        CFRelease(v6);
        free(v7);
        return Mutable;
      }

      v19 = 0;
    }

    v21 = CFStringCreateWithBytes(v4, v20, LODWORD(v34[1]), 0x8000100u, 0);
    v22 = v21;
    if (v19 && v21)
    {
      if (v32[0] && LODWORD(v32[1]))
      {
        v23 = CFStringCreateWithBytes(v4, v32[0], LODWORD(v32[1]), 0x8000100u, 0);
        v24 = v23;
        if (SBYTE2(v36) < 0)
        {
          v25 = CFStringCreateWithFormat(v4, 0, @"%s%@%@%@", v35 + 12, v19, v23, v22);
        }

        else
        {
          v25 = CFStringCreateWithFormat(v4, 0, @"%s%@%@%@", v35 + 12, v23, v19, v22);
        }

        v26 = v25;
        CFArrayAppendValue(Mutable, v25);
        CFRelease(v26);
        CFRelease(v24);
      }

      v27 = CFStringCreateWithFormat(v4, 0, @"%s%@%@", v35 + 12, v19, v22);
      CFArrayAppendValue(Mutable, v27);
      CFRelease(v27);
      v28 = CFStringCreateWithFormat(v4, 0, @"%@%@", v19, v22);
      CFArrayAppendValue(Mutable, v28);
      CFRelease(v28);
      CFArrayAppendValue(Mutable, v22);
    }

    else
    {
      if (!v21)
      {
        goto LABEL_36;
      }

      CFArrayAppendValue(Mutable, v21);
      if (!v19)
      {
LABEL_42:
        v19 = v22;
LABEL_43:
        CFRelease(v19);
        goto LABEL_44;
      }
    }

    CFRelease(v19);
    goto LABEL_42;
  }

  CFArrayAppendValue(Mutable, a1);
  return Mutable;
}

uint64_t UIPhoneFormatGetInternationalAccessCode(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 12;
  v3 = (a1 + 12);
  do
  {
    v4 = strlen(v3);
    v1 += v4 + 1;
    v3 += v4 + 1;
  }

  while (*v3);
  return v2 + v1 + 1;
}

void _PNSetSampleNumberForCountry(const __CFString *a1, CFTypeRef cf1)
{
  if (_PNInitializeSamplePhoneNumbers_sSampleNumberOnceToken == -1)
  {
    if (a1)
    {
LABEL_3:
      v4 = _PNCopyNormalized(a1);
      v5 = strlen(v4);
      v6 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v4, v5, 0x8000100u, 0);
      CFDictionarySetValue(sSamplePhoneNumbers, cf1, v6);
      CFRelease(v6);

      free(v4);
      return;
    }
  }

  else
  {
    _PNSetSampleNumberForCountry_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v7 = CFEqual(cf1, @"us");
  v8 = sSamplePhoneNumbers;
  if (v7)
  {

    CFDictionarySetValue(v8, @"us", @"14085551212");
  }

  else
  {

    CFDictionaryRemoveValue(v8, cf1);
  }
}

__CFString *_PNCopySampleNumberForCountry(const __CFString *key)
{
  if (_PNInitializeSamplePhoneNumbers_sSampleNumberOnceToken == -1)
  {
    if (key)
    {
      goto LABEL_3;
    }

    return &stru_2858F2AC8;
  }

  _PNSetSampleNumberForCountry_cold_1();
  if (!key)
  {
    return &stru_2858F2AC8;
  }

LABEL_3:
  Value = CFDictionaryGetValue(sSamplePhoneNumbers, key);
  if (!Value)
  {
    v4 = PNGetFormatFileHeader();
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    InfoIndex = UIPhoneFormatCountryGetInfoIndex(v4, key);
    if (InfoIndex == -1)
    {
      return 0;
    }

    v7 = (&v5[3 * UIPhoneFormatCountryGetCount(v5) + 1] + v5[3 * InfoIndex + 3]);
    v8 = *(v7 + 2);
    if (!v8)
    {
      return 0;
    }

    v9 = 0;
    v10 = v7 + *v7;
    while (1)
    {
      v11 = *(v10 + 1);
      if (*(v10 + 1))
      {
        break;
      }

LABEL_16:
      Mutable = 0;
      v10 += v11 + 4;
      if (++v9 == v8)
      {
        return Mutable;
      }
    }

    v12 = (v10 + 13);
    v13 = *(v10 + 1);
    while (!v12[2])
    {
      v12 += 16;
      if (!--v13)
      {
        v11 *= 16;
        goto LABEL_16;
      }
    }

    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], *v12);
    CFStringAppendFormat(Mutable, 0, @"%d", *(v12 - 9));
    while (CFStringGetLength(Mutable) < *v12)
    {
      CFStringAppendFormat(Mutable, 0, @"%c", 53);
    }

    return Mutable;
  }

  return CFRetain(Value);
}

unsigned int *_PNCopyInternationalPrefix(const __CFString *a1, const __CFString *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = PNGetFormatFileHeader();
      if (result)
      {
        v5 = result;
        InfoIndex = UIPhoneFormatCountryGetInfoIndex(result, a2);
        if (InfoIndex == -1)
        {
          return 0;
        }

        v7 = InfoIndex;
        v8 = &v5[3 * UIPhoneFormatCountryGetCount(v5) + 1] + v5[3 * InfoIndex + 3];
        if (!v8)
        {
          return 0;
        }

        else
        {
          v9 = _NumberRangeWithoutVerticalServiceCode(a1, 0, v7);
          if (v9 == -1)
          {
            Length = CFStringGetLength(a1);
            v11 = 0;
          }

          else
          {
            v11 = v9;
            Length = v10;
          }

          v13 = 0;
          v14 = 0;
          result = _InternationalPrefixForDigitsInCountry(v8, v7, a1, 0, v11, Length, &v13, &v14);
          if (result)
          {
            return CFStringCreateWithCString(*MEMORY[0x277CBECE8], result, 0x8000100u);
          }
        }
      }
    }
  }

  return result;
}

BOOL _PNIsDomesticNumber(const __CFString *a1, const __CFString *a2)
{
  if (CFStringGetCharacterAtIndex(a1, 0) == 43)
  {
    v4 = PNCopyBestGuessCountryCodeForNumber(a1);
    if (!v4)
    {
      CFRelease(0);
      return 0;
    }

    v5 = v4;
    v6 = CFStringCompare(v4, a2, 1uLL) == kCFCompareEqualTo;
    v7 = v5;
  }

  else
  {
    v8 = _PNCopyInternationalDirectDialingPrefixForCountry(*MEMORY[0x277CBECE8], a2);
    v6 = CFStringHasPrefix(a1, v8) == 0;
    v7 = v8;
  }

  CFRelease(v7);
  return v6;
}

CFStringRef _PNCopyInternationalDirectDialingPrefixForCountry(const __CFAllocator *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  if (CFStringGetLength(theString) != 2)
  {
    return 0;
  }

  v4 = PNGetFormatFileHeader();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  InfoIndex = UIPhoneFormatCountryGetInfoIndex(v4, theString);
  if (InfoIndex == -1)
  {
    return 0;
  }

  v7 = &v5[3 * UIPhoneFormatCountryGetCount(v5) + 1] + v5[3 * InfoIndex + 3];
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = v7 + 12;
  v10 = (v7 + 12);
  do
  {
    v11 = strlen(v10);
    v8 += v11 + 1;
    v10 += v11 + 1;
  }

  while (*v10);

  return CFStringCreateWithCString(a1, (v9 + v8 + 1), 0x8000100u);
}

CFStringRef _CopyPrefixForDigitsWithCountryIndex(const __CFString *a1, unsigned int a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15[0] = 0;
  v16.length = CFStringGetLength(a1);
  v16.location = 0;
  Bytes = CFStringGetBytes(a1, v16, 0x8000100u, 0, 0, 0, 0, v15);
  MEMORY[0x28223BE20](Bytes);
  v6 = v11 - ((v5 + 16) & 0xFFFFFFFFFFFFFFF0);
  v17.length = CFStringGetLength(a1);
  v17.location = 0;
  CFStringGetBytes(a1, v17, 0x8000100u, 0, 0, v6, v15[0], &v14);
  v6[v14] = 0;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  v7 = _DecomposePhoneNumberWithCountryIndex(v6, a2, v11, 0, 1);
  result = 0;
  if (v7)
  {
    v9 = v12 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    result = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v12, DWORD2(v12), 0x8000100u, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef _PNCopyNationalDirectDialingPrefixForCountry(const __CFAllocator *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  if (CFStringGetLength(theString) != 2)
  {
    return 0;
  }

  v4 = PNGetFormatFileHeader();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  InfoIndex = UIPhoneFormatCountryGetInfoIndex(v4, theString);
  if (InfoIndex == -1)
  {
    return 0;
  }

  v7 = &v5[3 * UIPhoneFormatCountryGetCount(v5) + 1] + v5[3 * InfoIndex + 3];
  if (!v7)
  {
    return 0;
  }

  return CFStringCreateWithCString(a1, (v7 + 12), 0x8000100u);
}

CFStringRef _PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndex(const __CFString *a1, __CFString *a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a1 && (Length = CFStringGetLength(a1), v7 = Length - 1, Length >= 1))
  {
    v8 = Length;
    v9 = a3 - 1;
    MEMORY[0x28223BE20](Length);
    v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19.location = 0;
    v19.length = v8;
    CFStringGetCharacters(a1, v19, v11);
    if (v9 <= v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = v7;
    }

    if (v12 < 0)
    {
LABEL_10:
      v14 = _PNCopyCompressedFormattedStringWithCountry(a1, a2, 0);
    }

    else
    {
      while (_IsInFormattingSet(v11[v12]))
      {
        if (v12-- <= 0)
        {
          goto LABEL_10;
        }
      }

      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
      v20.location = v12;
      v20.length = 1;
      CFStringDelete(MutableCopy, v20);
      if (CFStringGetLength(MutableCopy))
      {
        v14 = _PNCopyCompressedFormattedStringWithCountry(MutableCopy, a2, 0);
      }

      else
      {
        v14 = &stru_2858F2AC8;
      }

      CFRelease(MutableCopy);
    }
  }

  else
  {
    v14 = &stru_2858F2AC8;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

const __CFString *_PNCopyFormattedNumberSuggestionForDigitsWithCountry(const __CFString *a1, CFIndex a2, const __CFString *a3, uint64_t *a4, __CFString *a5)
{
  if (!a1 || (Length = CFStringGetLength(a1)) == 0)
  {
    v18 = 0;
    v17 = 0;
    if (!a4)
    {
      return v17;
    }

    goto LABEL_20;
  }

  v11 = Length;
  v12 = _PNCountNonPhoneFormattingCharactersPrecedingIndex(a1, a2);
  if (a3 && (v13 = CFGetTypeID(a3), v13 == CFStringGetTypeID()) && (v14 = CFStringGetLength(a3), v11 < v14) && (v14 <= a2 ? (v15 = v14 - 1) : (v15 = a2), CharacterAtIndex = CFStringGetCharacterAtIndex(a3, v15), _IsInFormattingSet(CharacterAtIndex)))
  {
    v17 = _PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndex(a1, a5, a2);
    --v12;
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = _PNCopyCompressedFormattedStringWithCountry(a1, a5, 0);
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  if (CFStringGetLength(v17))
  {
    goto LABEL_18;
  }

  CFRelease(v17);
LABEL_17:
  v17 = &stru_2858F2AC8;
LABEL_18:
  if (a4)
  {
    v18 = _PNIndexCountingNonPhoneFormattingCharactersFromStart(v17, v12);
LABEL_20:
    *a4 = v18;
  }

  return v17;
}

uint64_t _PNCountNonPhoneFormattingCharactersPrecedingIndex(const __CFString *a1, CFIndex a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  if (Length)
  {
    if (Length < a2)
    {
      a2 = Length;
    }

    MEMORY[0x28223BE20](Length);
    v6 = (v11 - v5);
    v12.location = 0;
    v12.length = a2;
    CFStringGetCharacters(a1, v12, (v11 - v5));
    if (a2 < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = *v6++;
        v7 += _IsInFormattingSet(v8) ^ 1;
        --a2;
      }

      while (a2);
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _PNIndexCountingNonPhoneFormattingCharactersFromStart(const __CFString *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  result = 0;
  if (a2 && Length)
  {
    MEMORY[0x28223BE20](0);
    v7 = (v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13.location = 0;
    v13.length = Length;
    CFStringGetCharacters(a1, v13, v7);
    if (Length < 1)
    {
      v10 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      while (_IsInFormattingSet(v7[v9]) || ++v8 != a2)
      {
        if (Length == ++v9)
        {
          v10 = Length;
          goto LABEL_11;
        }
      }

      v10 = v9 + 1;
    }

LABEL_11:
    if (v10 >= Length)
    {
      result = Length;
    }

    else
    {
      result = v10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t UIPhoneFormatFileGetCountryLength(unsigned int *a1, int a2, int a3)
{
  v6 = a1 + 1;
  v7 = &v6[3 * UIPhoneFormatCountryGetCount(a1)] + v6[3 * a3 + 2];
  Count = UIPhoneFormatCountryGetCount(a1);
  if (a3 + 1 >= Count)
  {
    goto LABEL_9;
  }

  v9 = Count;
  v10 = a3 + 2;
  v11 = 12 * (a3 + 1) + 12;
  do
  {
    v12 = &v6[3 * UIPhoneFormatCountryGetCount(a1)] + *(a1 + v11);
    v13 = v12 != v7 || v10++ >= v9;
    v11 += 12;
  }

  while (!v13);
  if (v12 == v7)
  {
LABEL_9:
    LODWORD(v12) = a1 + a2;
  }

  return (v12 - v7);
}

uint64_t itu_strcmp(const char *a1, const char *a2)
{
  if (!a1 && a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1 == a2)
  {
    return 0;
  }

  if (!a1 || a2)
  {
    return strcmp(a1, a2);
  }

  return 1;
}

uint64_t itu_strncmp(const char *a1, const char *a2, size_t a3)
{
  if (!a1 && a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1 == a2)
  {
    return 0;
  }

  if (!a1 || a2)
  {
    return strncmp(a1, a2, a3);
  }

  return 1;
}

uint64_t pn_uset_alphabetSetContains()
{
  os_unfair_lock_lock(&__pn_uset_unfair_lock);
  if (!__pn_uset_getAlphabetSet_set)
  {
    os_unfair_lock_assert_owner(&__pn_uset_unfair_lock);
    if ((__pn_uset_getAlphabetPattern_didInit & 1) == 0)
    {
      u_charsToUChars("[A-Za-z]", __pn_uset_getAlphabetPattern_pattern, 9);
      __pn_uset_getAlphabetPattern_didInit = 1;
    }

    __pn_uset_getAlphabetSet_set = uset_openPattern();
  }

  os_unfair_lock_unlock(&__pn_uset_unfair_lock);
  result = __pn_uset_getAlphabetSet_set;
  if (__pn_uset_getAlphabetSet_set)
  {

    JUMPOUT(0x24C19BE20);
  }

  return result;
}

uint64_t pn_uset_internationalPrefixSetContains()
{
  os_unfair_lock_lock(&__pn_uset_unfair_lock);
  if (!__pn_uset_getInternationalPrefixSet_set)
  {
    os_unfair_lock_assert_owner(&__pn_uset_unfair_lock);
    if ((__pn_uset_getInternationalPrefixPattern_didInit & 1) == 0)
    {
      u_charsToUChars("[+]", __pn_uset_getInternationalPrefixPattern_pattern, 4);
      __pn_uset_getInternationalPrefixPattern_didInit = 1;
    }

    __pn_uset_getInternationalPrefixSet_set = uset_openPattern();
  }

  os_unfair_lock_unlock(&__pn_uset_unfair_lock);
  result = __pn_uset_getInternationalPrefixSet_set;
  if (__pn_uset_getInternationalPrefixSet_set)
  {

    JUMPOUT(0x24C19BE20);
  }

  return result;
}

uint64_t pn_uset_numeralSetContains()
{
  os_unfair_lock_lock(&__pn_uset_unfair_lock);
  if (!__pn_uset_getNumeralSet_set)
  {
    os_unfair_lock_assert_owner(&__pn_uset_unfair_lock);
    if ((__pn_uset_getNumeralPattern_didInit & 1) == 0)
    {
      u_charsToUChars("[:Nd:]", __pn_uset_getNumeralPattern_pattern, 7);
      __pn_uset_getNumeralPattern_didInit = 1;
    }

    __pn_uset_getNumeralSet_set = uset_openPattern();
  }

  os_unfair_lock_unlock(&__pn_uset_unfair_lock);
  result = __pn_uset_getNumeralSet_set;
  if (__pn_uset_getNumeralSet_set)
  {

    JUMPOUT(0x24C19BE20);
  }

  return result;
}

uint64_t pn_uset_pauseSetContains()
{
  os_unfair_lock_lock(&__pn_uset_unfair_lock);
  if (!__pn_uset_getPauseSet_set)
  {
    os_unfair_lock_assert_owner(&__pn_uset_unfair_lock);
    if ((__pn_uset_getPausePattern_didInit & 1) == 0)
    {
      u_charsToUChars("[,;]", __pn_uset_getPausePattern_pattern, 5);
      __pn_uset_getPausePattern_didInit = 1;
    }

    __pn_uset_getPauseSet_set = uset_openPattern();
  }

  os_unfair_lock_unlock(&__pn_uset_unfair_lock);
  result = __pn_uset_getPauseSet_set;
  if (__pn_uset_getPauseSet_set)
  {

    JUMPOUT(0x24C19BE20);
  }

  return result;
}

uint64_t pn_uset_separatorSetContains()
{
  os_unfair_lock_lock(&__pn_uset_unfair_lock);
  if (!__pn_uset_getSeparatorSet_set)
  {
    os_unfair_lock_assert_owner(&__pn_uset_unfair_lock);
    if ((__pn_uset_getSeparatorPattern_didInit & 1) == 0)
    {
      u_charsToUChars("[\\ '()\\-./<>\\[\\]]", __pn_uset_getSeparatorPattern_pattern, 19);
      __pn_uset_getSeparatorPattern_didInit = 1;
    }

    __pn_uset_getSeparatorSet_set = uset_openPattern();
  }

  os_unfair_lock_unlock(&__pn_uset_unfair_lock);
  result = __pn_uset_getSeparatorSet_set;
  if (__pn_uset_getSeparatorSet_set)
  {

    JUMPOUT(0x24C19BE20);
  }

  return result;
}

uint64_t pn_uset_verticalServiceSetContains()
{
  os_unfair_lock_lock(&__pn_uset_unfair_lock);
  if (!__pn_uset_getVerticalServiceSet_set)
  {
    os_unfair_lock_assert_owner(&__pn_uset_unfair_lock);
    if ((__pn_uset_getVerticalServicePattern_didInit & 1) == 0)
    {
      u_charsToUChars("[*#]", __pn_uset_getVerticalServicePattern_pattern, 5);
      __pn_uset_getVerticalServicePattern_didInit = 1;
    }

    __pn_uset_getVerticalServiceSet_set = uset_openPattern();
  }

  os_unfair_lock_unlock(&__pn_uset_unfair_lock);
  result = __pn_uset_getVerticalServiceSet_set;
  if (__pn_uset_getVerticalServiceSet_set)
  {

    JUMPOUT(0x24C19BE20);
  }

  return result;
}

CFStringRef CFPhoneNumberStringTransformCreateCopy(const __CFAllocator *a1, CFStringRef theString, CFRange *a3, const __CFString *a4, Boolean a5)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);
    MutableCopy = CFStringCreateMutableCopy(a1, Length, theString);
    if (CFStringTransform(MutableCopy, a3, a4, a5))
    {
      if (MutableCopy)
      {
        Copy = CFStringCreateCopy(a1, MutableCopy);
        CFRelease(MutableCopy);
        return Copy;
      }
    }

    else
    {
      CFRelease(MutableCopy);
    }
  }

  return 0;
}

void *DecomposeAndCachePhoneNumber(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    __CFPhoneNumberNormalize(a1);
    v1 = malloc_type_calloc(0x40uLL, 1uLL, 0x52AAE1F2uLL);
    if (PNDecomposeForCountry(*(a1 + 16), *(a1 + 48), v1))
    {
      *(a1 + 64) = v1;
    }

    else
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t CFPhoneNumberGetTypeID()
{
  if (CFPhoneNumberGetTypeID_initOnce != -1)
  {
    CFPhoneNumberGetTypeID_cold_1();
  }

  return __kCFPhoneNumberTypeID;
}

CFTypeRef CFPhoneNumberCopyISOCountryCode(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t CFPhoneNumberCreateCopy(uint64_t a1, uint64_t a2)
{
  if (CFPhoneNumberGetTypeID_initOnce != -1)
  {
    CFPhoneNumberGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v4 = strdup(v4);
    }

    *(Instance + 16) = v4;
    v5 = *(a2 + 24);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *(Instance + 24) = v5;
    v6 = *(a2 + 32);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(Instance + 32) = v6;
    v7 = *(a2 + 40);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *(Instance + 40) = v7;
    v8 = *(a2 + 48);
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    *(Instance + 48) = v8;
    v9 = *(a2 + 56);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *(Instance + 56) = v9;
    *(Instance + 64) = 0;
    *(Instance + 72) = *(a2 + 72);
  }

  return Instance;
}

CFStringRef CFPhoneNumberCopyNumberForInternationalAssist(uint64_t a1, char *a2)
{
  v4 = _PNCopyFullyQualifiedNumberForCountryInternal(*(a1 + 24), *(a1 + 48), *(a1 + 32), &__block_literal_global_9, 0, 0);
  if (v4)
  {
    Copy = v4;
    if (CFStringCompare(v4, *(a1 + 40), 0))
    {
      if (a2)
      {
        v6 = 1;
LABEL_8:
        *a2 = v6;
        return Copy;
      }

      return Copy;
    }

    CFRelease(Copy);
  }

  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 40));
  if (a2)
  {
    v6 = 0;
    goto LABEL_8;
  }

  return Copy;
}

CFStringRef CFPhoneNumberCopyNumberForLocalAssist(const __CFString **a1, char *a2)
{
  valid = PNIsValidPhoneNumberForCountry(a1[5], a1[6]);
  v5 = MEMORY[0x277CBECE8];
  if (valid)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v6 = _PNCopyBestGuessNumberForCountry(a1[3], a1[6], 0, v23, &v24);
    v7 = v6;
    if (v24 == 1 && v6)
    {
      v8 = *v5;
      v9 = strlen(v6);
      v10 = CFStringCreateWithBytes(*v5, v7, v9, 0x8000100u, 0);
      free(v7);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      if (_PNFindFormatRuleForDigitsWithCountry(v10, a1[6], 0, &v18))
      {
        if (BYTE9(v20) == 1)
        {
          v25.length = v21;
          v11 = *(&v21 + 1) + v21;
          v25.location = 0;
          v12 = CFStringCreateWithSubstring(v8, v10, v25);
          v26.length = CFStringGetLength(v10) - v11;
          v26.location = v11;
          v13 = CFStringCreateWithSubstring(v8, v10, v26);
          CFRelease(v10);
          v10 = CFStringCreateWithFormat(v8, 0, @"%@%@", v12, v13);
          CFRelease(v12);
          CFRelease(v13);
        }

        if ((BYTE4(v19) & 0x20) != 0 && !BYTE8(v20) && (!*(&v23[0] + 1) || !**(&v23[0] + 1)))
        {
          v14 = CFStringCreateWithFormat(v8, 0, @"%s%@", v18 + 12, v10);
          CFRelease(v10);
          v10 = v14;
        }
      }

      if (v10)
      {
        if (CFStringCompare(v10, a1[3], 0))
        {
          Copy = _PNCreateStringByAddingPauses(v10, a1[4]);
          CFRelease(v10);
          if (a2)
          {
            v16 = 1;
LABEL_21:
            *a2 = v16;
            return Copy;
          }

          return Copy;
        }

        CFRelease(v10);
      }
    }

    else if (v6)
    {
      free(v6);
    }
  }

  Copy = CFStringCreateCopy(*v5, a1[5]);
  if (a2)
  {
    v16 = 0;
    goto LABEL_21;
  }

  return Copy;
}

uint64_t __CFPhoneNumberCopyDescription(uint64_t a1)
{
  if (a1)
  {
    return _CFPhoneNumberCopyFormattedRepresentation(a1);
  }

  return a1;
}

uint64_t PhoneNumber.number.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PhoneNumber.number.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

CorePhoneNumbers::PhoneNumber_optional __swiftcall PhoneNumber.init(isoCodeString:number:)(Swift::String isoCodeString, Swift::String number)
{
  object = number._object;
  countAndFlagsBits = number._countAndFlagsBits;
  v5 = v2;
  v6.value = ISOCode.init(rawValue:)(isoCodeString).value;
  v10 = v11;
  if (v11 == 257)
  {

    v10 = 0;
    countAndFlagsBits = 0;
    object = 0;
  }

  *v5 = v10;
  v5[1] = countAndFlagsBits;
  v5[2] = object;
  result.value.number._object = v8;
  result.value.number._countAndFlagsBits = v7;
  result.value.isoCode = v6.value;
  result.is_nil = v9;
  return result;
}

uint64_t PhoneNumber.normalizedNumber.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = sub_2461C2B70();
  ISOCode.rawValue.getter();
  v5 = sub_2461C2B70();

  v6 = PNCopyBestGuessNormalizedNumberForCountry(v4, v5);

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821FBE78](v7);
}

uint64_t PhoneNumber.isValid.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = sub_2461C2B70();
  ISOCode.rawValue.getter();
  v5 = sub_2461C2B70();

  valid = PNIsValidPhoneNumberForCountry(v4, v5);

  return valid;
}

uint64_t sub_2461C10A8()
{
  v1 = *v0;
  sub_2461C2C40();
  MEMORY[0x24C19B6E0](v1);
  return sub_2461C2C60();
}

uint64_t sub_2461C111C()
{
  v1 = *v0;
  sub_2461C2C40();
  MEMORY[0x24C19B6E0](v1);
  return sub_2461C2C60();
}

uint64_t sub_2461C1160()
{
  if (*v0)
  {
    result = 0x7265626D756ELL;
  }

  else
  {
    result = 0x65646F436F7369;
  }

  *v0;
  return result;
}

uint64_t sub_2461C1198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F436F7369 && a2 == 0xE700000000000000;
  if (v6 || (sub_2461C2C30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2461C2C30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2461C1288(uint64_t a1)
{
  v2 = sub_2461C1A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2461C12C4(uint64_t a1)
{
  v2 = sub_2461C1A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhoneNumber.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE407F0, &qword_2461C3480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2461C1A64();
  sub_2461C2C80();
  v16 = v9;
  v15 = 0;
  sub_2461C1AB8();
  sub_2461C2C20();
  if (!v2)
  {
    v14 = 1;
    sub_2461C2C10();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PhoneNumber.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *v0;
  sub_2461C1B0C();
  sub_2461C2B60();
  return sub_2461C2BB0();
}

uint64_t PhoneNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2461C2C40();
  sub_2461C1B0C();
  sub_2461C2B60();
  sub_2461C2BB0();
  return sub_2461C2C60();
}

uint64_t PhoneNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE40808, &qword_2461C3488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2461C1A64();
  sub_2461C2C70();
  if (!v2)
  {
    v18 = 0;
    sub_2461C1BAC();
    sub_2461C2C00();
    v11 = v19;
    v17 = 1;
    v13 = sub_2461C2BF0();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2461C1774()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2461C2C40();
  sub_2461C1B0C();
  sub_2461C2B60();
  sub_2461C2BB0();
  return sub_2461C2C60();
}

uint64_t sub_2461C17EC()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *v0;
  sub_2461C1B0C();
  sub_2461C2B60();
  return sub_2461C2BB0();
}

uint64_t sub_2461C1854()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2461C2C40();
  sub_2461C1B0C();
  sub_2461C2B60();
  sub_2461C2BB0();
  return sub_2461C2C60();
}

uint64_t _s16CorePhoneNumbers0B6NumberV2eeoiySbAC_ACtFZ_0(__int16 *a1, __int16 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v14 = 0;
  v8 = sub_2461C2B70();
  ISOCode.rawValue.getter();
  v9 = sub_2461C2B70();

  v10 = sub_2461C2B70();
  ISOCode.rawValue.getter();
  v11 = sub_2461C2B70();

  LOBYTE(v2) = PNPhoneNumbersEqual(v8, v9, v10, v11, 1, &v14);

  v12 = *MEMORY[0x277D85DE8];
  return (v2 & v14);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2461C1A64()
{
  result = qword_27EE40930[0];
  if (!qword_27EE40930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE40930);
  }

  return result;
}

unint64_t sub_2461C1AB8()
{
  result = qword_27EE407F8;
  if (!qword_27EE407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE407F8);
  }

  return result;
}

unint64_t sub_2461C1B0C()
{
  result = qword_27EE40800;
  if (!qword_27EE40800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40800);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2461C1BAC()
{
  result = qword_27EE40810;
  if (!qword_27EE40810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40810);
  }

  return result;
}

unint64_t sub_2461C1C04()
{
  result = qword_27EE40818;
  if (!qword_27EE40818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40818);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2461C1C6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2461C1CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneNumber.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneNumber.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2461C1E7C()
{
  result = qword_27EE40C40[0];
  if (!qword_27EE40C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE40C40);
  }

  return result;
}

unint64_t sub_2461C1ED4()
{
  result = qword_27EE40D50;
  if (!qword_27EE40D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40D50);
  }

  return result;
}

unint64_t sub_2461C1F2C()
{
  result = qword_27EE40D58[0];
  if (!qword_27EE40D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE40D58);
  }

  return result;
}

CorePhoneNumbers::ISOCode_optional __swiftcall ISOCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = 0x20u;
  while (1)
  {
    if (v3 == 546)
    {

      v5 = 257;
      goto LABEL_9;
    }

    v5 = *(&unk_2858F25D0 + v3);
    v6 = ISOCode.rawValue.getter();
    v8 = v7;
    if (v6 == sub_2461C2B90() && v8 == v9)
    {
      break;
    }

    v4 = sub_2461C2C30();

    v3 += 2;
    if (v4)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

LABEL_9:
  *v2 = v5;
  return result;
}

uint64_t sub_2461C213C()
{
  v1 = *v0;
  result = qword_2461C4430[v1];
  v3 = qword_2461C4C38[v1];
  return result;
}

uint64_t sub_2461C215C()
{
  v1 = sub_2461C2B50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_2461C2B40();
  v9[7] = v6;
  ISOCode.rawValue.getter();
  sub_2461C2BA0();

  v7 = sub_2461C2B30();

  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_2461C2278(__int16 *a1, __int16 *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ISOCode.rawValue.getter();
  v4 = v3;
  if (v2 == ISOCode.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2461C2C30();
  }

  return v7 & 1;
}

uint64_t sub_2461C2320@<X0>(uint64_t *a1@<X8>)
{
  result = ISOCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2461C23FC()
{
  result = qword_27EE40820;
  if (!qword_27EE40820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40820);
  }

  return result;
}

uint64_t sub_2461C2450()
{
  v1 = *v0;
  sub_2461C2C40();
  ISOCode.rawValue.getter();
  sub_2461C2BB0();

  return sub_2461C2C60();
}

uint64_t sub_2461C24B8()
{
  v2 = *v0;
  ISOCode.rawValue.getter();
  sub_2461C2BB0();
}

uint64_t sub_2461C251C()
{
  v1 = *v0;
  sub_2461C2C40();
  ISOCode.rawValue.getter();
  sub_2461C2BB0();

  return sub_2461C2C60();
}

unint64_t sub_2461C2584()
{
  result = qword_27EE40828;
  if (!qword_27EE40828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE40830, &qword_2461C37B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40828);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISOCode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 8 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 256 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 256 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 256;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 256;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 256;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x101;
  v8 = v6 - 257;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ISOCode(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 256 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 256 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 8 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 8 > 0xFE)
  {
    v6 = ((a2 - 65280) >> 16) + 1;
    *result = a2 + 256;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 256;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_2461C27B4()
{
  result = qword_27EE40838;
  if (!qword_27EE40838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40838);
  }

  return result;
}

uint64_t FormatCompression.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result + 1) > 9)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = byte_2461C55FE[(result + 1)];
  }

  return result;
}

CorePhoneNumbers::FormatCompression_optional __swiftcall FormatCompression.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2461C2898()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

CorePhoneNumbers::FormatLocalization_optional __swiftcall FormatLocalization.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2461C28D4()
{
  result = qword_27EE40840;
  if (!qword_27EE40840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40840);
  }

  return result;
}

unint64_t sub_2461C292C()
{
  result = qword_27EE40848;
  if (!qword_27EE40848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40848);
  }

  return result;
}

void *sub_2461C2980@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatCompression(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatCompression(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}