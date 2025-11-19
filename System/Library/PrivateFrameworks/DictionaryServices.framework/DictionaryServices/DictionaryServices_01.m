BOOL DCSHasDefinitionForTerm(const void *ValueAtIndex, CFStringRef theString, CFRange range, uint64_t a4, void *a5)
{
  length = range.length;
  location = range.location;
  v9 = theString;
  if (a5)
  {
    *a5 = 0;
  }

  if (!theString)
  {
    return 0;
  }

  if (range.location || range.length != CFStringGetLength(theString))
  {
    v33.location = location;
    v33.length = length;
    v9 = CFStringCreateWithSubstring(0, v9, v33);
    if (!ValueAtIndex)
    {
      goto LABEL_7;
    }
  }

  else
  {
    CFRetain(v9);
    if (!ValueAtIndex)
    {
LABEL_7:
      v11 = SyncSingleton<DCSEnvironment>::instance();
      ActiveDictionaries = DCSEnvironment::getActiveDictionaries(v11);
      if (!ActiveDictionaries || (v13 = ActiveDictionaries, Count = CFArrayGetCount(ActiveDictionaries), Count < 1))
      {
        v15 = 0;
        goto LABEL_37;
      }

      goto LABEL_12;
    }
  }

  v13 = 0;
  Count = 1;
LABEL_12:
  v31 = a5;
  v16 = 0;
  v17 = a4 & 0xFFFFFFFFFFFFFFFELL;
  v15 = 1;
  v32 = a4 & 0xFFFFFFFFFFFFFFFELL;
  while (1)
  {
    if (v13)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
      if (!DCSDictionaryIsSupportedDefinitionStyle(ValueAtIndex, a4))
      {
        goto LABEL_32;
      }
    }

    if (ValueAtIndex)
    {
      v18 = *(ValueAtIndex + 2);
      if (v18 && (DCSDictionary::isNetworkDictionary(*(ValueAtIndex + 2)) & 1) != 0)
      {
        MutableCopy = CFRetain(v9);
        if (v17 != 2)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = DCSDictionary::primaryLocale(v18);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v9);
    DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 0, v20);
    if (v17 != 2)
    {
      break;
    }

    if (!ValueAtIndex)
    {
      goto LABEL_29;
    }

LABEL_23:
    v21 = *(ValueAtIndex + 2);
    if (!v21 || (v22 = DCSDictionary::searchByString(v21, MutableCopy)) == 0)
    {
LABEL_29:
      CFRelease(MutableCopy);
      goto LABEL_32;
    }

    v23 = v22;
    v24 = v9;
    v25 = a4;
    v26 = CFArrayGetCount(v22);
    CFRelease(v23);
    CFRelease(MutableCopy);
    v27 = v26 <= 0;
    a4 = v25;
    v9 = v24;
    v17 = v32;
    if (!v27)
    {
      goto LABEL_35;
    }

LABEL_32:
    v15 = ++v16 < Count;
    if (Count == v16)
    {
      goto LABEL_37;
    }
  }

  if (ValueAtIndex)
  {
LABEL_28:
    v28 = *(ValueAtIndex + 2);
    goto LABEL_31;
  }

  v28 = 0;
LABEL_31:
  hasRecord = DCSDictionary::hasRecord(v28, MutableCopy, 0, 0);
  CFRelease(MutableCopy);
  if (!hasRecord)
  {
    goto LABEL_32;
  }

LABEL_35:
  if (v31)
  {
    *v31 = ValueAtIndex;
  }

LABEL_37:
  CFRelease(v9);
  return v15;
}

uint64_t DCSDictionaryIsSupportedDefinitionStyle(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      result = 1;
      if (a2)
      {
        if (a2 != 255)
        {
          return DCSDictionary::isSupportedDefinitionStyle(v2);
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

void DCSNormalizeSearchStringWithOptionsAndLocale(__CFString *a1, uint64_t a2, const __CFLocale *a3)
{
  v53[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  if (Length >= 256)
  {
    v54.length = Length - 255;
    v54.location = 255;
    CFStringDelete(a1, v54);
  }

  CFStringNormalize(a1, kCFStringNormalizationFormC);
  v53[0] = 0;
  v7 = SyncSingleton<DCSEnvironment>::instance();
  SubstituteCharactersTable = DCSEnvironment::getSubstituteCharactersTable(v7, v53);
  if (!SubstituteCharactersTable)
  {
    goto LABEL_58;
  }

  v9 = SubstituteCharactersTable;
  if (v53[0])
  {
    v10 = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x277CBECE8], a1);
    IsSupersetOfSet = CFCharacterSetIsSupersetOfSet(v53[0], v10);
    CFRelease(v10);
    if (IsSupersetOfSet)
    {
      goto LABEL_56;
    }
  }

  v42 = a2;
  v43 = a3;
  v12 = CFStringGetLength(a1);
  v41 = &v39;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = a1;
  v49 = 0;
  v50 = v13;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v47 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v51 = 0;
  v52 = 0;
  v48 = CStringPtr;
  v44 = v12 - 1;
  if (v12 < 1)
  {
    goto LABEL_55;
  }

  v18 = 0;
  v19 = 0;
  v20 = 1;
LABEL_10:
  v40 = v20;
  do
  {
    v21 = v50;
    v22 = &v15[v19];
    if (v50 <= v18)
    {
      v24 = 0;
      *v22 = 0;
    }

    else
    {
      if (v47)
      {
        v23 = v47[v49 + v18];
      }

      else if (v48)
      {
        v23 = v48[v49 + v18];
      }

      else
      {
        v25 = v51;
        if (v52 <= v18 || v51 > v18)
        {
          v27 = v18 - 4;
          if (v18 < 4)
          {
            v27 = 0;
          }

          if (v27 + 64 < v50)
          {
            v21 = v27 + 64;
          }

          v51 = v27;
          v52 = v21;
          v55.length = v21 - v27;
          v55.location = v49 + v27;
          CFStringGetCharacters(v46, v55, buffer);
          v25 = v51;
        }

        v23 = buffer[v18 - v25];
      }

      v24 = v23;
      *v22 = v23;
      if (v23 >> 10 == 54 && v18 < v44)
      {
        v29 = v18 + 1;
        v30 = v50;
        if (v50 > v18 + 1)
        {
          if (v47)
          {
            v31 = v47[v49 + v29];
          }

          else if (v48)
          {
            v31 = v48[v49 + v29];
          }

          else
          {
            if (v52 <= v29 || (v32 = v51, v51 > v29))
            {
              v33 = v18 - 3;
              if (v18 < 3)
              {
                v33 = 0;
              }

              if (v33 + 64 < v50)
              {
                v30 = v33 + 64;
              }

              v51 = v33;
              v52 = v30;
              v56.length = v30 - v33;
              v56.location = v49 + v33;
              CFStringGetCharacters(v46, v56, buffer);
              v32 = v51;
            }

            v31 = buffer[v29 - v32];
          }

          if (v31 >> 10 == 55)
          {
            v24 = (v24 << 10) + v31 - 56613888;
            v22[1] = v31;
            v34 = 2;
            goto LABEL_48;
          }
        }
      }
    }

    v34 = 1;
LABEL_48:
    Value = CFDictionaryGetValue(v9, v24);
    if (Value)
    {
      v36 = Value;
      v37 = CFStringGetLength(Value);
      v57.location = 0;
      v57.length = v37;
      CFStringGetCharacters(v36, v57, &v15[v19]);
      v20 = 0;
      v19 += v37;
      v18 += v34;
      if (v18 < v12)
      {
        goto LABEL_10;
      }

      goto LABEL_54;
    }

    v19 += v34;
    v18 += v34;
  }

  while (v18 < v12);
  if (v40)
  {
    goto LABEL_55;
  }

LABEL_54:
  v58.location = 0;
  v58.length = v12;
  CFStringDelete(a1, v58);
  CFStringAppendCharacters(a1, v15, v19);
LABEL_55:
  a3 = v43;
  LOBYTE(a2) = v42;
LABEL_56:
  CFStringTrimWhitespace(a1);
  if ((a2 & 1) == 0)
  {
    CFStringLowercase(a1, a3);
  }

LABEL_58:
  v38 = *MEMORY[0x277D85DE8];
}

__CFString *DCSCopyDefinitionMarkup(DCSDictionary **a1, CFStringRef theString, CFRange range, uint64_t a4, void *a5)
{
  length = range.length;
  location = range.location;
  v9 = theString;
  if (a5)
  {
    *a5 = 0;
  }

  if (theString)
  {
    if (range.location || range.length != CFStringGetLength(theString))
    {
      v21.location = location;
      v21.length = length;
      v9 = CFStringCreateWithSubstring(0, v9, v21);
    }

    else
    {
      CFRetain(v9);
    }

    cf = 0;
    v22.location = location;
    v22.length = length;
    v11 = CopyDefinitionsInternal(a1, v9, v22, a4, &cf);
    if (!v11)
    {
      Mutable = 0;
LABEL_24:
      CFRelease(v9);
      return Mutable;
    }

    v12 = v11;
    Count = CFArrayGetCount(v11);
    if (Count < 1)
    {
      Mutable = 0;
      if (!a5)
      {
LABEL_21:
        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(v12);
        goto LABEL_24;
      }
    }

    else
    {
      v14 = Count;
      v15 = 0;
      Mutable = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        if (!Mutable)
        {
          Mutable = CFStringCreateMutable(0, 0);
        }

        CFStringAppend(Mutable, ValueAtIndex);
        ++v15;
      }

      while (v14 != v15);
      if (!a5)
      {
        goto LABEL_21;
      }
    }

    StyleSheetURL = DCSDictionaryGetStyleSheetURL(cf);
    *a5 = StyleSheetURL;
    if (StyleSheetURL)
    {
      CFRetain(StyleSheetURL);
    }

    goto LABEL_21;
  }

  return 0;
}

__CFArray *CopyDefinitionsInternal(DCSDictionary **a1, const __CFString *a2, CFRange a3, uint64_t a4, CFTypeRef *a5)
{
  if (a5)
  {
    *a5 = 0;
    v6 = DCSCopyDefinitionRecords(a1, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      v8 = *(CFArrayGetValueAtIndex(v6, 0) + 2);
      if (v8)
      {
        v8 = DCSRecord::dictionaryRef(v8);
      }

      *a5 = CFRetain(v8);
      goto LABEL_7;
    }

    return 0;
  }

  v7 = DCSCopyDefinitionRecords(a1, a2, a3, a4);
  if (!v7)
  {
    return 0;
  }

LABEL_7:
  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v10 = Count;
    Mutable = 0;
    v12 = 0;
    v13 = MEMORY[0x277CBF128];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v12);
      v15 = DCSRecordCopyDefinition(ValueAtIndex);
      if (v15)
      {
        v16 = v15;
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, v13);
        }

        CFArrayAppendValue(Mutable, v16);
        CFRelease(v16);
      }

      ++v12;
    }

    while (v10 != v12);
  }

  CFRelease(v7);
  return Mutable;
}

const void *DCSDictionaryGetStyleSheetURL(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = DCSDictionary::styleSheetURLs(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v3, 0);
}

const __CFArray *DCSCopyDefinitionRecords(DCSDictionary **a1, CFStringRef theString, CFRange range, uint64_t a4)
{
  if (!theString)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  v7 = theString;
  ValueAtIndex = a1;
  if (a1)
  {
    v9 = a1[2];
    if (!v9 || a4 && a4 != 255 && !DCSDictionary::isSupportedDefinitionStyle(v9))
    {
      return 0;
    }
  }

  if (location || length != CFStringGetLength(v7))
  {
    v40.location = location;
    v40.length = length;
    v7 = CFStringCreateWithSubstring(0, v7, v40);
    if (!ValueAtIndex)
    {
      goto LABEL_10;
    }
  }

  else
  {
    CFRetain(v7);
    if (!ValueAtIndex)
    {
LABEL_10:
      v10 = SyncSingleton<DCSEnvironment>::instance();
      ActiveDictionaries = DCSEnvironment::getActiveDictionaries(v10);
      Count = CFArrayGetCount(ActiveDictionaries);
      v38 = 0;
      if (Count < 1)
      {
LABEL_30:
        v14 = 0;
        goto LABEL_31;
      }

      v13 = Count;
      goto LABEL_15;
    }
  }

  ActiveDictionaries = 0;
  v38 = 0;
  v13 = 1;
LABEL_15:
  v15 = 0;
  while (1)
  {
    if (ActiveDictionaries)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ActiveDictionaries, v15);
      if (!DCSDictionaryIsSupportedDefinitionStyle(ValueAtIndex, a4))
      {
        goto LABEL_29;
      }
    }

    if (ValueAtIndex)
    {
      v16 = *(ValueAtIndex + 2);
      if (v16)
      {
        if (DCSDictionary::isNetworkDictionary(v16))
        {
          MutableCopy = CFRetain(v7);
          goto LABEL_25;
        }

        v16 = *(ValueAtIndex + 2);
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = DCSDictionary::primaryLocale(v16);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v7);
    DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 0, v18);
    if (!ValueAtIndex)
    {
      goto LABEL_28;
    }

LABEL_25:
    v19 = *(ValueAtIndex + 2);
    if (!v19)
    {
LABEL_28:
      CFRelease(MutableCopy);
      goto LABEL_29;
    }

    v14 = DCSDictionary::searchByString(v19, MutableCopy);
    CFRelease(MutableCopy);
    if (v14)
    {
      break;
    }

LABEL_29:
    if (v13 == ++v15)
    {
      goto LABEL_30;
    }
  }

  v38 = v14;
  v21 = *(ValueAtIndex + 2);
  if (!v21)
  {
    v24 = CFArrayGetCount(v14);
    if (v24 <= 1)
    {
      goto LABEL_31;
    }

LABEL_50:
    Mutable = CFArrayCreateMutableCopy(0, v24, v14);
    DCSSortRecordsWithHeadword(Mutable, v7);
    goto LABEL_51;
  }

  v22 = DCSDictionary::primaryLanguage(v21);
  v23 = CFArrayGetCount(v14);
  if (v23 <= 1)
  {
    goto LABEL_31;
  }

  v24 = v23;
  if (!v22 || CFStringCompare(v22, @"ar", 1uLL))
  {
    goto LABEL_50;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v26 = DCSCreateHeadwordList(1, &v38, v7);
  if (v26)
  {
    v27 = v26;
    v28 = CFArrayGetCount(v26);
    if (v28 >= 1)
    {
      v29 = v28;
      for (i = 0; i != v29; ++i)
      {
        v31 = CFArrayGetValueAtIndex(v27, i);
        v32 = DCSCopyRecordsWithHeadword(1, &v38, v31);
        if (v32)
        {
          v33 = v32;
          v34 = CFArrayGetCount(v32);
          if (v34 >= 1)
          {
            v35 = v34;
            for (j = 0; j != v35; ++j)
            {
              v37 = CFArrayGetValueAtIndex(v33, j);
              v39.length = CFArrayGetCount(Mutable);
              v39.location = 0;
              if (!CFArrayContainsValue(Mutable, v39, v37))
              {
                CFArrayAppendValue(Mutable, v37);
              }
            }
          }

          CFRelease(v33);
        }
      }
    }

    CFRelease(v27);
  }

LABEL_51:
  CFRelease(v14);
  v14 = Mutable;
LABEL_31:
  CFRelease(v7);
  return v14;
}

__CFString *DCSDictionaryGetPrimaryLanguage(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::primaryLanguage(v1);
  }

  else
  {
    return 0;
  }
}

CFArrayRef DCSCreateHeadwordList(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  keyCallBacks = *byte_282F95D88;
  v5 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
  v6 = v5;
  v38 = a1;
  if (a1 < 1)
  {
    v8 = 0;
    v23 = 0;
    isSortableDictionary = 1;
    LOBYTE(v11) = 1;
  }

  else
  {
    v7 = v5;
    v37 = a3;
    v39 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 1;
    isSortableDictionary = 1;
    do
    {
      v13 = *(a2 + 8 * v9);
      if (v13)
      {
        Count = CFArrayGetCount(v13);
        if (Count >= 1)
        {
          v15 = Count;
          for (i = 0; i != v15; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8 * v9), i);
            v18 = ValueAtIndex[2];
            CFDictionaryAddValue(v7, v18, ValueAtIndex);
            if (!i && (v10 & 1) != 0)
            {
              EffectiveLanguageOfRecord = GetEffectiveLanguageOfRecord(ValueAtIndex);
              if (EffectiveLanguageOfRecord)
              {
                v20 = v39;
                if (v39)
                {
                  v21 = CompareLanguageCode(v39, EffectiveLanguageOfRecord, 0);
                  v10 = v21;
                  if (!v21)
                  {
                    v20 = 0;
                  }

                  v39 = v20;
                }

                else
                {
                  v10 = 1;
                  v39 = EffectiveLanguageOfRecord;
                }
              }

              else
              {
                v10 = 1;
              }
            }

            if (v8 != *v18)
            {
              if (v11)
              {
                v22 = 0;
              }

              else
              {
                v22 = v11;
              }

              if (v8)
              {
                v11 = v22;
              }

              else
              {
                v8 = *v18;
              }

              if (isSortableDictionary)
              {
                isSortableDictionary = DCSDictionary::isSortableDictionary(v8);
              }

              else
              {
                isSortableDictionary = 0;
              }
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v38);
    a3 = v37;
    v23 = v39;
    v6 = v7;
  }

  v24 = CFDictionaryGetCount(v6);
  if (v24)
  {
    v25 = v24;
    v26 = malloc_type_malloc(8 * v24, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(v6, 0, v26);
    CFRelease(v6);
    if (isSortableDictionary)
    {
      Mutable = CFArrayCreateMutable(0, v25, MEMORY[0x277CBF128]);
      v43.location = 0;
      v43.length = 0;
      CFArrayReplaceValues(Mutable, v43, v26, v25);
      if (v11)
      {
        v28 = v8;
      }

      else
      {
        v28 = 0;
      }

      InitSortStringInfo(context, a3, v28, v23, 1);
      if (v23 == 0 || (v11 & 1) == 0 || (v29 = CompareLanguageCode(v23, @"zh-Hans", 0), v30 = ComparatorForSortingSCHeadword, (v29 & 1) == 0))
      {
        v30 = ComparatorForSortingHeadword;
      }

      v44.location = 0;
      v44.length = v25;
      CFArraySortValues(Mutable, v44, v30, context);
      ReleaseSortStringInfo(context);
      if (v25 >= 1)
      {
        for (j = 0; j != v25; ++j)
        {
          v32 = CFArrayGetValueAtIndex(Mutable, j);
          v26[j] = DCSRecord::headword(v32[2]);
        }
      }

      CFRelease(Mutable);
    }

    else if (v25 >= 1)
    {
      v34 = v26;
      v35 = v25;
      do
      {
        *v34 = DCSRecord::headword(*(*v34 + 2));
        ++v34;
        --v35;
      }

      while (v35);
    }

    v33 = CFArrayCreate(0, v26, v25, MEMORY[0x277CBF128]);
    free(v26);
  }

  else
  {
    CFRelease(v6);
    return 0;
  }

  return v33;
}

__CFArray *DCSCopyRecordsWithHeadword(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v5 = a1;
    theArray = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v5 >= 1)
    {
      v6 = 0;
      v26 = v5;
      v27 = a2;
      while (1)
      {
        v7 = *(a2 + 8 * v6);
        if (!v7)
        {
          goto LABEL_26;
        }

        Count = CFArrayGetCount(*(a2 + 8 * v6));
        if (!Count)
        {
          goto LABEL_26;
        }

        v9 = Count;
        v10 = *(CFArrayGetValueAtIndex(v7, 0) + 2);
        if (!v10)
        {
          break;
        }

        v11 = DCSRecord::dictionaryRef(v10);
        v12 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v13 = *(v11 + 16);
        if (!v13)
        {
          break;
        }

        if ((DCSDictionary::isNetworkDictionary(v13) & 1) == 0)
        {
          v12 = *(v12 + 2);
          goto LABEL_13;
        }

        v14 = 0;
        v15 = 0;
LABEL_14:
        if (v9 >= 1)
        {
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, v16);
            v18 = ValueAtIndex[2];
            v19 = DCSRecord::headword(v18);
            if (v14)
            {
              break;
            }

            if (CFStringCompare(v19, a3, 0x121uLL) == kCFCompareEqualTo)
            {
              goto LABEL_22;
            }

LABEL_23:
            if (v9 == ++v16)
            {
              goto LABEL_24;
            }
          }

          MutableCopy = CFStringCreateMutableCopy(0, 0, v19);
          DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 0, v15);
          v30.length = CFStringGetLength(MutableCopy);
          v30.location = 0;
          v21 = CFStringCompareWithOptionsAndLocale(MutableCopy, v14, v30, 0x121uLL, v15);
          CFRelease(MutableCopy);
          if (v21)
          {
            if (v18[17] < 1)
            {
              goto LABEL_23;
            }

            v22 = DCSRecord::dataString(v18);
            v23 = CFStringCreateMutableCopy(0, 0, v22);
            DCSNormalizeSearchStringWithOptionsAndLocale(v23, 0, v15);
            v31.length = CFStringGetLength(v23);
            v31.location = 0;
            v24 = CFStringCompareWithOptionsAndLocale(v23, v14, v31, 0x121uLL, v15);
            CFRelease(v23);
            if (v24)
            {
              goto LABEL_23;
            }
          }

LABEL_22:
          CFArrayAppendValue(theArray, ValueAtIndex);
          goto LABEL_23;
        }

LABEL_24:
        v5 = v26;
        a2 = v27;
        if (v14)
        {
          CFRelease(v14);
        }

LABEL_26:
        if (++v6 == v5)
        {
          goto LABEL_29;
        }
      }

      v12 = 0;
LABEL_13:
      DCSDictionary::primaryLanguage(v12);
      v15 = DCSDictionary::primaryLocale(v12);
      v14 = CFStringCreateMutableCopy(0, 0, a3);
      DCSNormalizeSearchStringWithOptionsAndLocale(v14, 0, v15);
      goto LABEL_14;
    }

LABEL_29:
    v3 = theArray;
    if (CFArrayGetCount(theArray))
    {
      DCSSortRecordsWithHeadword(theArray, a3);
    }

    else
    {
      CFRelease(theArray);
      return 0;
    }
  }

  return v3;
}

void DCSSortRecordsWithHeadword(const __CFArray *a1, const __CFString *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 2)
  {
    return;
  }

  v5 = Count;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = 1;
  isSortableDictionary = 1;
  do
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      v13 = ValueAtIndex;
      if (v9)
      {
        EffectiveLanguageOfRecord = GetEffectiveLanguageOfRecord(ValueAtIndex);
        if (EffectiveLanguageOfRecord)
        {
          if (v7)
          {
            v15 = CompareLanguageCode(v7, EffectiveLanguageOfRecord, 0);
            v9 = v15;
            if (!v15)
            {
              v7 = 0;
            }
          }

          else
          {
            v9 = 1;
            v7 = EffectiveLanguageOfRecord;
          }
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }

      if (v6 == *v13[2])
      {
        break;
      }

      if (v10)
      {
        v16 = 0;
      }

      else
      {
        v16 = v10;
      }

      if (v6)
      {
        v10 = v16;
      }

      else
      {
        v6 = *v13[2];
      }

      if (isSortableDictionary)
      {
        isSortableDictionary = DCSDictionary::isSortableDictionary(v6);
        break;
      }

      isSortableDictionary = 0;
      if (++v8 == v5)
      {
        goto LABEL_35;
      }
    }

    ++v8;
  }

  while (v8 != v5);
  if (isSortableDictionary)
  {
    if (v10)
    {
      v17 = v6;
    }

    else
    {
      v17 = 0;
    }

    InitSortStringInfo(context, a2, v17, v7, 0);
    if (!v7 || (v10 & 1) == 0 || (v18 = CompareLanguageCode(v7, @"zh-Hans", 0), v19 = ComparatorForSortingSCHeadword, (v18 & 1) == 0))
    {
      v19 = ComparatorForSortingRecord;
    }

    v28.location = 0;
    v28.length = v5;
    CFArraySortValues(a1, v28, v19, context);
    ReleaseSortStringInfo(context);
  }

LABEL_35:
  v20 = v5 - 1;
  do
  {
    v21 = CFArrayGetValueAtIndex(a1, v5 - 1);
    if (v5 < 2)
    {
      break;
    }

    v22 = v21[2];
    v23 = v20;
    while (1)
    {
      v24 = *(CFArrayGetValueAtIndex(a1, --v23) + 2);
      if (*v22 == *v24)
      {
        v25 = DCSRecord::subDictionaryRef(v22);
        if (v25 == DCSRecord::subDictionaryRef(v24) && *(v22 + 26) == *(v24 + 26))
        {
          break;
        }
      }

      if (v23 <= 0)
      {
        goto LABEL_42;
      }
    }

    CFArrayRemoveValueAtIndex(a1, v5 - 1);
LABEL_42:
    --v20;
  }

  while (v5-- != 2);
}

CFStringRef DCSCopyTextDefinition(DCSDictionaryRef dictionary, CFStringRef textString, CFRange range)
{
  if (!textString)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  v5 = textString;
  if (range.location || range.length != CFStringGetLength(textString))
  {
    v32.location = location;
    v32.length = length;
    v5 = CFStringCreateWithSubstring(0, v5, v32);
    if (!dictionary)
    {
      goto LABEL_5;
    }
  }

  else
  {
    CFRetain(v5);
    if (!dictionary)
    {
LABEL_5:
      v7 = SyncSingleton<DCSEnvironment>::instance();
      ActiveDictionaries = DCSEnvironment::getActiveDictionaries(v7);
      if (!ActiveDictionaries || (v9 = ActiveDictionaries, Count = CFArrayGetCount(ActiveDictionaries), Count < 1))
      {
LABEL_24:
        v17 = 0;
        goto LABEL_36;
      }

      goto LABEL_10;
    }
  }

  v9 = 0;
  Count = 1;
LABEL_10:
  v11 = 0;
  while (1)
  {
    if (v9)
    {
      dictionary = CFArrayGetValueAtIndex(v9, v11);
    }

    if (dictionary)
    {
      v12 = *(dictionary + 2);
      if (v12 && DCSDictionary::isNetworkDictionary(*(dictionary + 2)))
      {
        MutableCopy = CFRetain(v5);
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = DCSDictionary::primaryLocale(v12);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v5);
    DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 0, v14);
    if (!dictionary)
    {
      goto LABEL_22;
    }

LABEL_19:
    v15 = *(dictionary + 2);
    if (!v15)
    {
LABEL_22:
      CFRelease(MutableCopy);
      goto LABEL_23;
    }

    v16 = DCSDictionary::searchByString(v15, MutableCopy);
    CFRelease(MutableCopy);
    if (v16)
    {
      break;
    }

LABEL_23:
    if (Count == ++v11)
    {
      goto LABEL_24;
    }
  }

  v18 = CFArrayGetCount(v16);
  if (v18 >= 2 && (v19 = v18, ValueAtIndex = CFArrayGetValueAtIndex(v16, 0), EffectiveLanguageOfRecord = GetEffectiveLanguageOfRecord(ValueAtIndex), v22 = *(ValueAtIndex + 2), (v23 = *v22) != 0) && (v24 = EffectiveLanguageOfRecord, DCSDictionary::isSortableDictionary(*v22)))
  {
    v25 = CFArrayCreateMutableCopy(0, v19, v16);
    InitSortStringInfo(context, v5, v23, v24, 0);
    if (Count != 1 || !v24 || (v26 = CompareLanguageCode(v24, @"zh-Hans", 0), v27 = ComparatorForSortingSCHeadword, (v26 & 1) == 0))
    {
      v27 = ComparatorForSortingHeadword;
    }

    v31.location = 0;
    v31.length = v19;
    CFArraySortValues(v25, v31, v27, context);
    ReleaseSortStringInfo(context);
    CFRelease(v16);
  }

  else
  {
    v25 = v16;
  }

  v28 = CFArrayGetValueAtIndex(v25, 0);
  v17 = DCSRecordCopyDefinition(v28);
  CFRelease(v25);
LABEL_36:
  CFRelease(v5);
  return v17;
}

DCSRecord *GetEffectiveLanguageOfRecord(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = DCSRecord::subDictionaryRef(result);
    if (result || (result = *(a1 + 16)) != 0 && (result = DCSRecord::dictionaryRef(result)) != 0)
    {
      v3 = result;
      result = *(result + 2);
      if (result)
      {
        result = DCSDictionary::primaryLanguage(result);
        if (!result)
        {
          result = *(v3 + 2);
          if (result)
          {
            result = DCSDictionary::languages(result);
            if (result)
            {
              v4 = result;
              if (CFArrayGetCount(result) < 1)
              {
                return 0;
              }

              else
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);

                return CFDictionaryGetValue(ValueAtIndex, @"DCSDictionaryIndexLanguage");
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t InitSortStringInfo(uint64_t a1, const __CFString *a2, DCSDictionary *this, const __CFString *a4, char a5)
{
  if (this)
  {
    v10 = DCSDictionary::primaryLocale(this);
  }

  else
  {
    v10 = 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a2);
  DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 1, v10);
  *(a1 + 8) = MutableCopy;
  if (CFStringCompare(a2, MutableCopy, 0) == kCFCompareEqualTo)
  {
    CFRelease(MutableCopy);
    *(a1 + 8) = CFRetain(a2);
  }

  v12 = CFStringCreateMutableCopy(0, 0, a2);
  DCSNormalizeSearchStringWithOptionsAndLocale(v12, 0, v10);
  *(a1 + 16) = v12;
  if (CFStringCompare(a2, v12, 0))
  {
    v13 = *(a1 + 16);
  }

  else
  {
    CFRelease(v12);
    v13 = CFRetain(a2);
    *(a1 + 16) = v13;
  }

  v14 = CFStringCreateMutableCopy(0, 0, v13);
  CFStringUppercase(v14, 0);
  *(a1 + 24) = v14;
  if (CFStringCompare(a2, v14, 0) == kCFCompareEqualTo)
  {
    CFRelease(v14);
    *(a1 + 24) = CFRetain(a2);
  }

  *a1 = a2;
  *(a1 + 32) = 0;
  if (a4)
  {
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, a4);
    if (CanonicalLocaleIdentifierFromString)
    {
      v16 = CanonicalLocaleIdentifierFromString;
      *(a1 + 32) = CFLocaleCreate(0, CanonicalLocaleIdentifierFromString);
      CFRelease(v16);
    }
  }

  *(a1 + 41) = this != 0;
  if (this)
  {
    result = DCSDictionary::dictionaryFlag(this);
  }

  else
  {
    result = 0;
  }

  *(a1 + 48) = result;
  *(a1 + 40) = a5;
  return result;
}

CFComparisonResult ComparatorForSortingSCHeadword(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = a2[2];
  v5 = a3[4];
  v6 = a3[2];
  Length = CFStringGetLength(v6);
  v8 = DCSRecord::keyString(v3);
  v9 = CFStringGetLength(v8);
  v10 = DCSRecord::keyString(v4);
  v11 = CFStringGetLength(v10);
  if (Length == v9)
  {
    v12 = DCSRecord::keyString(v3);
    v23.location = 0;
    v23.length = Length;
    v13 = CFStringCompareWithOptionsAndLocale(v6, v12, v23, 0x121uLL, v5) == kCFCompareEqualTo;
  }

  else
  {
    v13 = 0;
  }

  if (Length == v11)
  {
    v14 = DCSRecord::keyString(v4);
    v24.location = 0;
    v24.length = Length;
    v15 = CFStringCompareWithOptionsAndLocale(v6, v14, v24, 0x121uLL, v5) == kCFCompareEqualTo;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == v13)
  {
    if (v3[20] < 1 || v4[20] < 1)
    {
      v19 = DCSRecord::headwordSortString(v3, 0);
      v20 = DCSRecord::headwordSortString(v4, 0);
      v21.length = CFStringGetLength(v19);
      v21.location = 0;

      return CFStringCompareWithOptionsAndLocale(v19, v20, v21, 0x121uLL, v5);
    }

    else
    {
      v16 = DCSRecord::sortkeyString(v3);
      v17 = DCSRecord::sortkeyString(v4);

      return CFStringCompare(v16, v17, 0);
    }
  }

  else if (v13)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t ComparatorForSortingHeadword(const void *a1, void *a2, _BYTE *a3)
{
  v3 = a3;
  v4 = *(a1 + 2);
  v5 = a2[2];
  v6 = 1;
  if (a3)
  {
    v7 = a3[41];
  }

  else
  {
    v7 = 1;
  }

  v8 = DCSRecord::headwordSortString(*(a1 + 2), (v7 & 1) == 0);
  v9 = DCSRecord::headwordSortString(v5, (v7 & 1) == 0);
  if (v3)
  {
    if ((v3[48] & 0x20) != 0 && *(v4 + 21) == 1)
    {
      v6 = *(v5 + 21);
    }

    else
    {
      v6 = 0;
    }

    v10 = *(v3 + 4);
    v11 = *v3;
    v12 = v6;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  v13 = *(v4 + 112);
  v14 = *(v5 + 112);
  if (v13 != v14 && (!v13 || v14 == 0))
  {
    v16 = v13 == 0;
    goto LABEL_97;
  }

  if ((v7 & 1) != 0 && *(v4 + 160) >= 1 && *(v5 + 160) >= 1)
  {
    v17 = DCSRecord::sortkeyString(v4);
    v18 = DCSRecord::sortkeyString(v5);
    v19 = CFStringCompare(v17, v18, 0);
    if (v19)
    {
      return v19;
    }
  }

  theString = v12;
  if (v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = &stru_282F97070;
  }

  if (v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = &stru_282F97070;
  }

  if (v10)
  {
    v22 = MEMORY[0x223D5DD40](v10);
    if (v22)
    {
      if (CFStringCompare(v22, @"ar", 1uLL) == kCFCompareEqualTo && v11)
      {
        v23 = v3;
        v24 = DCSRecord::headword(v4);
        v25 = DCSRecord::headword(v5);
        v26 = CFStringCompare(v24, v11, 0);
        theStringa = v25;
        v27 = CFStringCompare(v25, v11, 0);
        v28 = v27;
        if (v26 == v27 || v26 && v27)
        {
          theString2 = v11;
          v29 = *(v23 + 2);
          v89.length = CFStringGetLength(v24);
          theString1 = v24;
          v89.location = 0;
          v30 = CFStringCompareWithOptionsAndLocale(v24, v29, v89, 0x121uLL, v10);
          v90.length = CFStringGetLength(v25);
          v90.location = 0;
          v31 = CFStringCompareWithOptionsAndLocale(v25, v29, v90, 0x121uLL, v10);
          v32 = v31;
          if (v30 != v31 && (v30 == kCFCompareEqualTo || v31 == kCFCompareEqualTo))
          {
LABEL_96:
            v16 = v30 == kCFCompareEqualTo;
LABEL_97:
            if (v16)
            {
              return -1;
            }

            else
            {
              return 1;
            }
          }

          if (CFStringCompare(theString1, v25, 0) || (v33 = DCSRecord::titleString(v4), v34 = DCSRecord::titleString(v5), !(v33 | v34)))
          {
LABEL_84:
            v61 = v23;
            if (!CFStringHasPrefix(v29, @"ال"))
            {
              goto LABEL_91;
            }

            Length = CFStringGetLength(v29);
            if (Length < 3)
            {
              goto LABEL_91;
            }

            v98.length = Length - 2;
            v98.location = 2;
            v63 = CFStringCreateWithSubstring(0, v29, v98);
            v99.length = CFStringGetLength(theString1);
            v99.location = 0;
            v64 = CFStringCompareWithOptionsAndLocale(theString1, v63, v99, 0x121uLL, v10);
            v100.length = CFStringGetLength(theStringa);
            v100.location = 0;
            v65 = CFStringCompareWithOptionsAndLocale(theStringa, v63, v100, 0x121uLL, v10);
            CFRelease(v63);
            v19 = v64 ? 1 : -1;
            if (v64 && v65)
            {
LABEL_91:
              v66 = v5;
              if (DCSRecord::titleString(v4) && (v61[40] & 1) == 0)
              {
                v67 = DCSRecord::titleString(v4);
              }

              else
              {
                v67 = DCSRecord::headword(v4);
              }

              v73 = v67;
              if (DCSRecord::titleString(v66) && (v61[40] & 1) == 0)
              {
                v74 = DCSRecord::titleString(v66);
              }

              else
              {
                v74 = DCSRecord::headword(v66);
              }

              v75 = v74;
              DistanceBetweenWords(v73, theString2);
              v77 = v76;
              DistanceBetweenWords(v75, theString2);
              if (v77 != v78)
              {
                if (v77 >= v78)
                {
                  return 1;
                }

                else
                {
                  return -1;
                }
              }

              v41.length = CFStringGetLength(theString1);
              v42 = theString1;
              v43 = theStringa;
              goto LABEL_137;
            }

            return v19;
          }

          v80 = v33;
          if (v33)
          {
            v35 = v34;
            v26 = CFStringCompare(v80, theString2, 0);
            v34 = v35;
            v33 = v80;
          }

          if (v34)
          {
            v36 = v34;
            v28 = CFStringCompare(v34, theString2, 0);
            v34 = v36;
            v33 = v80;
          }

          if (!(v26 | v28))
          {
LABEL_124:
            if (*(v4 + 200) > *(v5 + 200))
            {
              return 1;
            }

            else
            {
              return -1;
            }
          }

          if (v26 && v28)
          {
            if (v33)
            {
              v37 = v33;
              v38 = v34;
              v91.length = CFStringGetLength(v37);
              v91.location = 0;
              v30 = CFStringCompareWithOptionsAndLocale(v37, v29, v91, 0x121uLL, v10);
              v34 = v38;
              v33 = v37;
            }

            if (v34)
            {
              v39 = v34;
              v92.length = CFStringGetLength(v34);
              v92.location = 0;
              v32 = CFStringCompareWithOptionsAndLocale(v39, v29, v92, 0x121uLL, v10);
              v34 = v39;
            }

            if (v30 | v32)
            {
              if (v30 && v32)
              {
                if (v33 && v34)
                {
                  v40 = v34;
                  v41.length = CFStringGetLength(v33);
                  v42 = v33;
                  v43 = v40;
LABEL_137:
                  v41.location = 0;

                  return CFStringCompareWithOptionsAndLocale(v42, v43, v41, 0x121uLL, v10);
                }

                goto LABEL_84;
              }

              goto LABEL_96;
            }

            goto LABEL_124;
          }
        }

        v16 = v26 == kCFCompareEqualTo;
        goto LABEL_97;
      }
    }
  }

  if (!(v6 & 1 | (v11 == 0)))
  {
    if (CFStringCompare(v20, v21, 0x121uLL) == kCFCompareEqualTo)
    {
      v52 = *(v5 + 192);
      v19 = (v52 & 1) != 0 ? -1 : 1;
      if ((*(v4 + 192) ^ v52))
      {
        return v19;
      }
    }

    theString2a = v11;
    v79 = v5;
    v81 = v3;
    v53 = *(v3 + 1);
    v54 = CFStringGetLength(v20);
    v55 = CFStringGetLength(v21);
    v56 = 1;
    v57 = 32;
    do
    {
      v58 = v56;
      v95.location = 0;
      v95.length = v54;
      v59 = CFStringCompareWithOptionsAndLocale(v20, v53, v95, v57, v10);
      v96.location = 0;
      v96.length = v55;
      if ((v59 == kCFCompareEqualTo) == (CFStringCompareWithOptionsAndLocale(v21, v53, v96, v57, v10) != kCFCompareEqualTo))
      {
        v16 = v59 == kCFCompareEqualTo;
        goto LABEL_97;
      }

      v56 = 0;
      v57 = 33;
    }

    while ((v58 & 1) != 0);
    if (DCSDictionary::isNetworkDictionary(*v4))
    {
      v97.location = 0;
      v97.length = v54;
      v5 = v79;
      if (CFStringFindWithOptionsAndLocale(v20, v53, v97, 0x1A1uLL, v10, &result))
      {
        v60 = result.location == 0;
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 1;
      v5 = v79;
    }

    v3 = v81;
    if (DCSDictionary::isNetworkDictionary(*v5))
    {
      v101.location = 0;
      v101.length = v55;
      if (CFStringFindWithOptionsAndLocale(v21, v53, v101, 0x1A1uLL, v10, &result))
      {
        if (v60)
        {
          v19 = -1;
        }

        else
        {
          v19 = 1;
        }

        v11 = theString2a;
        if ((v60 ^ (result.location == 0)))
        {
          return v19;
        }
      }

      else
      {
        v11 = theString2a;
        if (v60)
        {
          return -1;
        }
      }
    }

    else
    {
      if (v60)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

      v11 = theString2a;
      if (!v60)
      {
        return v19;
      }
    }
  }

  v93.length = CFStringGetLength(v20);
  v93.location = 0;
  v19 = CFStringCompareWithOptionsAndLocale(v20, v21, v93, 0x121uLL, v10);
  if (!v19)
  {
    if ((theString & 1) != 0 || !*(v4 + 136) && !*(v5 + 136) || (v44 = DCSRecord::headword(v4), v45 = DCSRecord::headword(v5), v46 = DCSRecord::headword(v4), v94.length = CFStringGetLength(v46), v94.location = 0, (v19 = CFStringCompareWithOptionsAndLocale(v44, v45, v94, 0x121uLL, v10)) == 0))
    {
      if (!v3 || ((v47 = *(v3 + 3), HasPrefix = CFStringHasPrefix(v20, v47), v49 = CFStringHasPrefix(v21, v47), !HasPrefix) ? (v19 = -1) : (v19 = 1), HasPrefix == v49))
      {
        if (!DCSRecord::titleString(v4) && !DCSRecord::titleString(v5))
        {
          goto LABEL_124;
        }

        v50 = v4;
        v51 = DCSRecord::titleString(v4) ? DCSRecord::titleString(v4) : DCSRecord::headword(v4);
        v68 = v51;
        v69 = DCSRecord::titleString(v5) ? DCSRecord::titleString(v5) : DCSRecord::headword(v5);
        v70 = v69;
        v71 = CFStringCompare(v68, v11, 1uLL);
        v72 = CFStringCompare(v70, v11, 1uLL);
        v19 = v71 ? 1 : -1;
        v4 = v50;
        if (v71 == v72)
        {
          goto LABEL_124;
        }
      }
    }
  }

  return v19;
}

void ReleaseSortStringInfo(uint64_t a1)
{
  CFRelease(*(a1 + 8));
  CFRelease(*(a1 + 16));
  CFRelease(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t DCSRecordCopyData(uint64_t a1, uint64_t a2)
{
  if (a2 == 4)
  {
    return 0;
  }

  else
  {
    return DCSRecordCopyDefinition(a1);
  }
}

uint64_t DCSCopyRecordsForSearchString(uint64_t a1, CFStringRef theString)
{
  if (theString)
  {
    v2 = theString;
    if (CFStringGetLength(theString) <= 100)
    {
      *(SyncSingleton<DCSEnvironment>::instance() + 136) = 1;
      if (a1 && (v5 = *(a1 + 16)) != 0)
      {
        if (DCSDictionary::isNetworkDictionary(v5))
        {
          MutableCopy = 0;
          goto LABEL_12;
        }

        v7 = *(a1 + 16);
      }

      else
      {
        v7 = 0;
      }

      MutableCopy = CFStringCreateMutableCopy(0, 0, v2);
      v8 = DCSDictionary::primaryLocale(v7);
      DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 0, v8);
      if (!a1)
      {
        goto LABEL_15;
      }

      v2 = MutableCopy;
LABEL_12:
      v9 = *(a1 + 16);
      if (v9)
      {
        v4 = DCSDictionary::searchByString(v9, v2);
        if (!MutableCopy)
        {
          return v4;
        }

        goto LABEL_16;
      }

LABEL_15:
      v4 = 0;
      if (!MutableCopy)
      {
        return v4;
      }

LABEL_16:
      CFRelease(MutableCopy);
      return v4;
    }
  }

  return 0;
}

uint64_t DCSCopyRecordForReference(uint64_t a1, const __CFString *a2)
{
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::searchByReference(v2, a2);
  }

  else
  {
    return 0;
  }
}

void DCSSearchSessionCreate(uint64_t a1, const __CFString *a2)
{
  *(SyncSingleton<DCSEnvironment>::instance() + 136) = 1;
  if (a1 && *(a1 + 16))
  {
    if (DCSDictionary::isNetworkDictionary(*(a1 + 16)))
    {
LABEL_8:
      operator new();
    }

    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a2);
  v6 = DCSDictionary::primaryLocale(v4);
  DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 0, v6);
  goto LABEL_8;
}

uint64_t EqualHeadwordCallback(DCSRecord *a1, DCSRecord *a2)
{
  v3 = DCSRecord::headword(a1);
  v4 = DCSRecord::headword(a2);

  return CFEqual(v3, v4);
}

CFHashCode HashHeadwordCallback(DCSRecord *a1)
{
  v1 = DCSRecord::headword(a1);

  return CFHash(v1);
}

__CFArray *DCSCopyRecordsForHeadword(uint64_t a1, const __CFString *a2)
{
  result = 0;
  v4 = a1;
  if (a1)
  {
    if (a2)
    {
      return DCSCopyRecordsWithHeadword(1, &v4, a2);
    }
  }

  return result;
}

DCSRecord *DCSRecordGetDictionary(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::dictionaryRef(result);
  }

  return result;
}

uint64_t ComparatorForSortingRecord(void **a1, void **a2, _BYTE *a3)
{
  v3 = *a1[2];
  v4 = *a2[2];
  if (v3 == v4)
  {
    return ComparatorForSortingHeadword(a1, a2, a3);
  }

  if (*(v3 + 72) < *(v4 + 72))
  {
    return -1;
  }

  return 1;
}

DCSRecord *DCSRecordGetString(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::keyString(result);
  }

  return result;
}

DCSRecord *DCSRecordGetHeadword(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::headword(result);
  }

  return result;
}

DCSRecord *DCSRecordSetHeadword(uint64_t a1, const __CFString *a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::setHeadword(result, a2);
  }

  return result;
}

DCSRecord *DCSRecordGetRawHeadword(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::dataString(result);
  }

  return result;
}

DCSRecord *DCSRecordGetSupplementalHeadword(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::yomiString(result);
  }

  return result;
}

DCSRecord *DCSRecordGetTitle(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::titleString(result);
  }

  return result;
}

DCSRecord *DCSRecordGetAnchor(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::anchorString(result);
  }

  return result;
}

DCSRecord *DCSRecordGetSubDictionary(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::subDictionaryRef(result);
  }

  return result;
}

uint64_t DCSRecordGetDataURL(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(v1 + 224);
  }

  else
  {
    return 0;
  }
}

uint64_t DCSRecordCopyDataURL(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = SyncSingleton<DCSEnvironment>::instance();
  DCSEnvironment::logUsageTrackingInfo(v3, a1);

  return DCSRecord::copyDataURL(v1);
}

uint64_t DCSRecordCopyDefinition(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = SyncSingleton<DCSEnvironment>::instance();
  DCSEnvironment::logUsageTrackingInfo(v3, a1);

  return DCSRecord::copyData(v1);
}

DCSDictionary **DCSRecordCopyTextElements(uint64_t a1, const __CFArray *a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return DCSRecord::copyKeyedElements(result, a2);
  }

  return result;
}

uint64_t DCSRecordSetAssociatedObj(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *(v2 + 240) = a2;
  }

  return result;
}

uint64_t DCSRecordGetAssociatedObj(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(v1 + 240);
  }

  else
  {
    return 0;
  }
}

const void *DCSDictionaryCreate(const __CFURL *a1)
{
  v2 = SyncSingleton<DCSDictionaryManager>::instance();
  v3 = DCSDictionaryManager::dictionary(v2, a1, 0);
  StartDownloadDictionaryIfRequired(v3);
  return v3;
}

uint64_t StartDownloadDictionaryIfRequired(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    v2 = v1 ? *(v1 + 96) : 0;
    result = DCSMAPrepareMobileAssetQuery();
    if (result == 1)
    {

      return DCSDictionary::startGlobalDictionariesEnvironment(v2);
    }
  }

  return result;
}

const void *DCSDictionaryCreateWithIdentifier(const __CFString *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = SyncSingleton<DCSEnvironment>::instance();
  v3 = DCSEnvironment::copyAvailableDictionaries(v2);
  if (v3)
  {
    v4 = v3;
    Count = CFSetGetCount(v3);
    MEMORY[0x28223BE20](Count);
    v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v6 >= 0x200)
    {
      v8 = 512;
    }

    else
    {
      v8 = v6;
    }

    bzero(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    CFSetGetValues(v4, v7);
    if (Count < 1)
    {
LABEL_12:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        if (*v7 && (v9 = *(*v7 + 2)) != 0)
        {
          v10 = DCSDictionary::identifier(v9);
        }

        else
        {
          v10 = 0;
        }

        if (CFStringCompare(a1, v10, 0) == kCFCompareEqualTo)
        {
          break;
        }

        ++v7;
        if (!--Count)
        {
          goto LABEL_12;
        }
      }

      v11 = *v7;
    }

    CFRelease(v4);
    StartDownloadDictionaryIfRequired(v11);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

const __CFDictionary *DCSDictionaryGetIdentifier(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::identifier(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t DCSDictionaryGetURL(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return *(v1 + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *DCSDictionaryGetName(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::name(v1);
  }

  else
  {
    return 0;
  }
}

const __CFString *DCSDictionaryGetShortName(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::shortName(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t DCSDictionaryGetBaseURL(uint64_t a1)
{
  *(SyncSingleton<DCSEnvironment>::instance() + 136) = 1;
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  return DCSDictionary::baseURL(v2);
}

uint64_t DCSDictionaryGetSubDictionaries(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::subDictionaries(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t DCSDictionaryGetParentDictionary(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::parentDictionary(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t DCSDictionaryGetPreferenceHTML(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::preferenceHTML(v1);
  }

  else
  {
    return 0;
  }
}

const void *DCSDictionaryGetPreference(const void *result)
{
  if (result)
  {
    v1 = *(result + 2);
    if (v1)
    {
      v2 = DCSDictionary::identifier(*(result + 2));
      v3 = SyncSingleton<DCSEnvironment>::instance();
      result = DCSEnvironment::getDictionaryPreference(v3, v2);
      if (!result)
      {

        return DCSDictionary::preference(v1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DCSDictionarySetPreference(uint64_t result, const __CFDictionary *a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      Preference = DCSDictionaryGetPreference(result);
      if (!Preference || (result = CFEqual(Preference, a2), !result))
      {
        DCSDictionary::setPreference(v2, a2);
        v5 = DCSDictionary::preference(v2);
        v6 = SyncSingleton<DCSEnvironment>::instance();
        v7 = DCSDictionary::identifier(v2);

        return DCSEnvironment::setDictionaryPreference(v6, v7, v5);
      }
    }
  }

  return result;
}

const __CFArray *DCSDictionaryGetLanguages(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return DCSDictionary::languages(v1);
  }

  else
  {
    return 0;
  }
}

CFTypeRef DCSDictionaryCopyResourceURLsOfType(uint64_t a1, CFStringRef theString1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (CFStringCompare(theString1, @"DCSResourceTypeStyleSheet", 0))
  {
    if (CFStringCompare(theString1, @"DCSResourceTypePrivateFont", 0))
    {
      return 0;
    }

    v4 = DCSDictionary::privateFontURLs(v2);
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = DCSDictionary::styleSheetURLs(v2);
    if (!v4)
    {
      return 0;
    }
  }

  return CFRetain(v4);
}

void DCSDictionarySetDataHeader(uint64_t a1, const __CFString *a2, uint64_t a3, int a4, const __CFString *a5)
{
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      DCSDictionary::setCustomHTMLHeader(v5, a2, a3, a4, a5);
    }
  }
}

const __CFDictionary *DCSDictionaryIsNetworkService(const __CFDictionary *result)
{
  if (result)
  {
    result = *(result + 2);
    if (result)
    {
      return DCSDictionary::isNetworkDictionary(result);
    }
  }

  return result;
}

DCSDictionary *DCSDictionaryIsLanguageDictionary(DCSDictionary *result)
{
  if (result)
  {
    result = *(result + 2);
    if (result)
    {
      return DCSDictionary::isLanguageDictionary(result);
    }
  }

  return result;
}

const __CFDictionary *DCSDictionaryGetAssetObj(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 96)) != 0)
  {
    return DCSMAGetAssetObj(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t DCSDictionaryDownloadFinished(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      v2 = *(v1 + 12);
      if (v2)
      {
        DCSDictionary::startGlobalDictionariesEnvironment(v2);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return DCSDictionary::baseURL(v1);
}

CFSetRef DCSCopyLanguagesOfPreparedDefaultDictionaries()
{
  values[1] = *MEMORY[0x277D85DE8];
  if (DCSMAPrepareMobileAssetQuery())
  {
    DCSDictionary::startGlobalDictionariesEnvironment(1);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v1 = SyncSingleton<DCSEnvironment>::instance();
    v2 = DCSEnvironment::copyActiveDictionaries(v1, 0);
    if (v2)
    {
      v3 = v2;
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        v7 = MEMORY[0x277CBF128];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
          if (!ValueAtIndex)
          {
            goto LABEL_27;
          }

          v9 = ValueAtIndex;
          v10 = ValueAtIndex[2];
          if (!v10)
          {
            goto LABEL_27;
          }

          v11 = DCSDictionary::primaryLanguage(v10);
          values[0] = v11;
          if (v11)
          {
            CFDictionarySetValue(Mutable, v11, &stru_282F97070);
          }

          v12 = v9[2];
          if (!v12)
          {
            goto LABEL_27;
          }

          v13 = DCSDictionary::identifier(v12);
          if (!v13)
          {
            goto LABEL_27;
          }

          v14 = v13;
          v15 = v9[2];
          if (!v15 || !DCSDictionary::isLanguageDictionary(v15))
          {
            goto LABEL_27;
          }

          v16 = v9[2];
          if (v16 && (v17 = DCSDictionary::languages(v16)) != 0)
          {
            v18 = v17;
            v19 = CFArrayCreateMutable(0, 0, v7);
            v20 = CFArrayGetCount(v18);
            if (v20 >= 1)
            {
              v21 = v20;
              for (i = 0; i != v21; ++i)
              {
                v23 = CFArrayGetValueAtIndex(v18, i);
                Value = CFDictionaryGetValue(v23, @"DCSDictionaryIndexLanguage");
                if (Value)
                {
                  CFArrayAppendValue(v19, Value);
                }
              }
            }

            if (CFArrayGetCount(v19) <= 0)
            {
              CFRelease(v19);
              v7 = MEMORY[0x277CBF128];
              goto LABEL_27;
            }

            v7 = MEMORY[0x277CBF128];
            if (!v19)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (!values[0])
            {
              goto LABEL_27;
            }

            v19 = CFArrayCreate(0, values, 1, v7);
            if (!v19)
            {
              goto LABEL_27;
            }
          }

          DCSMAUpdateLinguisticData(v14, v19, 1);
          CFRelease(v19);
LABEL_27:
          ++v6;
        }

        while (v6 != v5);
      }

      CFRelease(v3);
    }

    v25 = CFDictionaryGetCount(Mutable);
    if (v25 < 1)
    {
      v30 = 0;
    }

    else
    {
      v26 = v25;
      MEMORY[0x28223BE20](v25);
      v28 = (values - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (v27 >= 0x200)
      {
        v29 = 512;
      }

      else
      {
        v29 = v27;
      }

      bzero(values - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
      CFDictionaryGetKeysAndValues(Mutable, v28, 0);
      v30 = CFSetCreate(0, v28, v26, MEMORY[0x277CBF158]);
    }

    CFRelease(Mutable);
    DCSDictionary::startGlobalDictionariesEnvironment(0);
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t DCSGetServicePresentationType()
{
  v0 = SyncSingleton<DCSEnvironment>::instance();

  return DCSEnvironment::copyInactiveDictionaries(v0, v1);
}

CFNumberRef DCSSetServicePresentationType(__int16 a1)
{
  v2 = SyncSingleton<DCSEnvironment>::instance();

  return DCSEnvironment::setServiceWindowType(v2, a1);
}

void DCSActivateDictionaryPanel(CFDataRef theData)
{
  if (theData)
  {
    if (!CFDataGetLength(theData))
    {
      v2 = 0;
      goto LABEL_7;
    }
  }

  else if (DCSActivateDictionaryPanel::_PanelIsBeingShown)
  {
    return;
  }

  Remote = CFMessagePortCreateRemote(0, @"com.apple.DictionaryPanelHelper");
  if (!Remote)
  {
    return;
  }

  v4 = Remote;
  v5 = CFMessagePortSendRequest(Remote, 1, theData, 5.0, 5.0, @"DCSActivateDictionaryPanelReplyModes", 0);
  CFRelease(v4);
  v2 = v5 == 0;
LABEL_7:
  DCSActivateDictionaryPanel::_PanelIsBeingShown = v2;
}

uint64_t DCSCreateAppleWordEquivalenceList(uint64_t a1)
{
  if (a1)
  {
    return CreateWordEquivalenceList(a1);
  }

  return a1;
}

DIR *IterateDirectory(const char *a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  result = opendir(a1);
  if (result)
  {
    v7 = result;
    v8 = strlen(a1);
    v9 = malloc_type_malloc(v8 + 256, 0x100004077774924uLL);
    strlcpy(v9, a1, v8 + 256);
    v10 = strlen(a1);
    *&v9[v10] = 47;
    v11 = &v9[v10 + 1];
    memset(&v16, 0, sizeof(v16));
    v12 = readdir(v7);
    if (v12)
    {
      v13 = v12;
      do
      {
        v15 = v13->d_name[0];
        d_name = v13->d_name;
        if (v15 != 46)
        {
          strlcpy(v11, d_name, 0x100uLL);
          if ((stat(v9, &v16) & 0x80000000) == 0)
          {
            if ((v16.st_mode & 0xF000) == 0x4000)
            {
              if (a2(v9, 1, a3))
              {
                IterateDirectory(v9, a2, a3);
              }
            }

            else
            {
              a2(v9, 0, a3);
            }
          }
        }

        v13 = readdir(v7);
      }

      while (v13);
    }

    free(v9);
    return closedir(v7);
  }

  return result;
}

BOOL ItemExistsAtPath(const char *a1, int a2)
{
  if (a2)
  {
    memset(&v4, 0, sizeof(v4));
    return !stat(a1, &v4) && (v4.st_mode & 0xF000) == 0x4000;
  }

  else
  {
    return access(a1, 0) == 0;
  }
}

uint64_t ItemExistsAtURL(const __CFURL *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024);
  if (result)
  {
    v3 = CFURLHasDirectoryPath(a1);
    result = ItemExistsAtPath(buffer, v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef CopyFileObjectIdentifierAtURL(const __CFURL *a1)
{
  v1 = CFURLCopyAbsoluteURL(a1);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  CFRelease(v1);
  return v2;
}

void BuildWordBreakTable(CFStringRef str, CFRange range, const __CFLocale *a3, char *__b)
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if ((range.length & 0x8000000000000000) == 0)
  {
    memset(__b, 255, 8 * range.length + 8);
  }

  v14.location = location;
  v14.length = length;
  v9 = CFStringCreateWithSubstring(0, str, v14);
  v15.location = 0;
  v15.length = length;
  v10 = CFStringTokenizerCreate(0, v9, v15, 0x80uLL, a3);
  if (v10)
  {
    v11 = v10;
    while (_CFStringTokenizerTokenize())
    {
      *__b = 1;
      bzero(__b + 8, 0xFFFFFFFFFFFFFFF8);
    }

    CFRelease(v11);
    CFRelease(v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

CFTypeRef CopyPreferredEnglishLanguage(CFLocaleIdentifier localeID)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v21 = localeID;
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, localeID);
  v2 = *MEMORY[0x277CBEE98];
  v3 = MEMORY[0x277CBEED0];
  if (!ComponentsFromLocaleIdentifier)
  {
    LocaleIdentifierFromComponents = 0;
    v7 = 1;
    goto LABEL_9;
  }

  v4 = ComponentsFromLocaleIdentifier;
  if (!CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x277CBEE98]))
  {
    LocaleIdentifierFromComponents = 0;
    goto LABEL_7;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  CFDictionarySetValue(MutableCopy, *v3, @"en");
  LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(0, MutableCopy);
  CFRelease(MutableCopy);
  if (!LocaleIdentifierFromComponents)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
  v21 = LocaleIdentifierFromComponents;
LABEL_8:
  CFRelease(v4);
LABEL_9:
  keys[0] = *v3;
  keys[1] = v2;
  cf = 0;
  v25 = 0;
  values = @"en";
  v23 = @"US";
  v8 = MEMORY[0x277CBF138];
  v9 = MEMORY[0x277CBF150];
  v10 = CFDictionaryCreate(0, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  cf = CFLocaleCreateLocaleIdentifierFromComponents(0, v10);
  CFRelease(v10);
  values = @"en";
  v23 = @"GB";
  v11 = CFDictionaryCreate(0, keys, &values, 2, v8, v9);
  v25 = CFLocaleCreateLocaleIdentifierFromComponents(0, v11);
  CFRelease(v11);
  v12 = MEMORY[0x277CBF128];
  v13 = CFArrayCreate(0, &cf, 2, MEMORY[0x277CBF128]);
  v14 = CFArrayCreate(0, &v21, 1, v12);
  v15 = CFBundleCopyLocalizationsForPreferences(v13, v14);
  if (v15)
  {
    v16 = v15;
    ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
    v18 = CFRetain(ValueAtIndex);
    CFRelease(v16);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v13);
  CFRelease(v14);
  CFRelease(cf);
  CFRelease(v25);
  if ((v7 & 1) == 0)
  {
    CFRelease(LocaleIdentifierFromComponents);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t CompareLanguageCode(const __CFString *a1, CFStringRef theString2, _BYTE *a3)
{
  CanonicalLocaleIdentifierFromString = 0;
  v51 = 0;
  v52 = 0;
  theString2a = 0;
  theString1 = 0;
  v48 = 0uLL;
  if (!a1 || !theString2)
  {
    return CanonicalLocaleIdentifierFromString;
  }

  if (CFStringCompare(a1, theString2, 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"*", 0) == kCFCompareEqualTo || CFStringCompare(theString2, @"*", 0) == kCFCompareEqualTo)
  {
    CanonicalLocaleIdentifierFromString = 1;
    if (a3)
    {
      *a3 = 1;
    }

    return CanonicalLocaleIdentifierFromString;
  }

  if (a3)
  {
    *a3 = 0;
  }

  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, a1);
  v54 = CanonicalLocaleIdentifierFromString;
  if (!CanonicalLocaleIdentifierFromString)
  {
    return CanonicalLocaleIdentifierFromString;
  }

  v53 = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, theString2);
  if (!v53)
  {
    CFRelease(CanonicalLocaleIdentifierFromString);
    return 0;
  }

  v46 = 0;
  v47 = 0;
  v7 = *MEMORY[0x277CBEED0];
  v8 = *MEMORY[0x277CBEE98];
  v9 = &v54;
  v10 = &v52;
  key = *MEMORY[0x277CBEED8];
  p_theString1 = &theString1;
  v12 = &v48 + 1;
  v13 = &v47;
  v14 = 1;
  do
  {
    v15 = v14;
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, *v9);
    *v13 = ComponentsFromLocaleIdentifier;
    if (ComponentsFromLocaleIdentifier)
    {
      v17 = ComponentsFromLocaleIdentifier;
      Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, v7);
      v19 = CFDictionaryGetValue(v17, v8);
      ComponentsFromLocaleIdentifier = CFDictionaryGetValue(v17, key);
    }

    else
    {
      Value = 0;
      v19 = 0;
    }

    v14 = 0;
    *v10 = Value;
    v9 = &v53;
    *p_theString1 = v19;
    v10 = &v51;
    p_theString1 = &theString2a;
    *v12 = ComponentsFromLocaleIdentifier;
    v12 = &v48;
    v13 = &v46;
  }

  while ((v15 & 1) != 0);
  v20 = &v54;
  v21 = &v52;
  p_theString2a = &theString1;
  v23 = (&v48 + 8);
  v24 = &v47;
  v25 = 1;
  v44 = v8;
  do
  {
    v26 = v25;
    v27 = *v21;
    if (!*v21)
    {
      goto LABEL_36;
    }

    if (CFStringCompare(*v21, @"zh", 0))
    {
      if (CFStringCompare(v27, @"en", 0) || !*p_theString2a)
      {
        if (CFStringCompare(v27, @"nb", 0) == kCFCompareEqualTo || CFStringCompare(v27, @"nn", 0) == kCFCompareEqualTo)
        {
          *v21 = @"no";
        }
      }

      else
      {
        v30 = v7;
        v31 = CopyPreferredEnglishLanguage(*v20);
        if (*v24)
        {
          CFRelease(*v24);
        }

        v32 = CFLocaleCreateComponentsFromLocaleIdentifier(0, v31);
        *v24 = v32;
        if (v32)
        {
          v33 = v32;
          v34 = CFDictionaryGetValue(v32, v30);
          v35 = CFDictionaryGetValue(v33, v44);
          v32 = CFDictionaryGetValue(v33, key);
        }

        else
        {
          v34 = 0;
          v35 = 0;
        }

        *v21 = v34;
        *p_theString2a = v35;
        *v23 = v32;
        CFRelease(v31);
        v7 = v30;
      }
    }

    else if (!*v23)
    {
      v28 = *p_theString2a;
      if (*p_theString2a)
      {
        if (CFStringCompare(*p_theString2a, @"CN", 1uLL))
        {
          if (CFStringCompare(v28, @"TW", 1uLL))
          {
            goto LABEL_36;
          }

          v29 = @"Hant";
        }

        else
        {
          v29 = @"Hans";
        }

        *v23 = v29;
      }
    }

LABEL_36:
    v25 = 0;
    v20 = &v53;
    v21 = &v51;
    p_theString2a = &theString2a;
    v23 = &v48;
    v24 = &v46;
  }

  while ((v26 & 1) != 0);
  if (v52)
  {
    v36 = v51 == 0;
  }

  else
  {
    v36 = 1;
  }

  if (v36 || CFStringCompare(v52, v51, 1uLL))
  {
    CanonicalLocaleIdentifierFromString = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v42 = *(&v48 + 1);
    v43 = v48;
    if (v48 == 0)
    {
      v42 = theString1;
      CanonicalLocaleIdentifierFromString = 1;
      if (!theString1)
      {
        goto LABEL_43;
      }

      v43 = theString2a;
    }

    else
    {
      CanonicalLocaleIdentifierFromString = 0;
      if (!*(&v48 + 1))
      {
        goto LABEL_43;
      }
    }

    if (v43)
    {
      CanonicalLocaleIdentifierFromString = CFStringCompare(v42, v43, 1uLL) == kCFCompareEqualTo;
    }
  }

LABEL_43:
  v37 = &v54;
  v38 = &v47;
  v39 = 1;
  do
  {
    v40 = v39;
    CFRelease(*v37);
    if (*v38)
    {
      CFRelease(*v38);
    }

    v39 = 0;
    v37 = &v53;
    v38 = &v46;
  }

  while ((v40 & 1) != 0);
  return CanonicalLocaleIdentifierFromString;
}

__CFString *GetScriptForLanguage(CFStringRef theString1)
{
  if (GetScriptForLanguage__DispatchOnceToken != -1)
  {
    GetScriptForLanguage_cold_1();
  }

  if (CFStringCompare(theString1, @"ja", 1uLL) == kCFCompareEqualTo)
  {
    return @"Jpan";
  }

  if (CFStringCompare(theString1, @"ko", 1uLL) == kCFCompareEqualTo)
  {
    return @"Kore";
  }

  if (CFStringCompare(theString1, @"zh-Hans", 1uLL) == kCFCompareEqualTo)
  {
    return @"Hans";
  }

  if (CFStringCompare(theString1, @"zh-Hant", 1uLL) == kCFCompareEqualTo)
  {
    return @"Hant";
  }

  v2 = GetScriptForLanguage__LatinLanguagesArray;
  v4.length = CFArrayGetCount(GetScriptForLanguage__LatinLanguagesArray);
  v4.location = 0;
  if (CFArrayContainsValue(v2, v4, theString1))
  {
    return @"Latn";
  }

  else
  {
    return 0;
  }
}

CFArrayRef __GetScriptForLanguage_block_invoke()
{
  __dst[124] = *MEMORY[0x277D85DE8];
  memcpy(__dst, off_27835A508, 0x3E0uLL);
  result = CFArrayCreate(0, __dst, 124, MEMORY[0x277CBF128]);
  GetScriptForLanguage__LatinLanguagesArray = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DetectEncodingOfStringData(const __CFData *a1)
{
  ucsdet_open();
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  ucsdet_setText();
  ucsdet_detect();
  Name = ucsdet_getName();
  if (Name && (v5 = CFStringCreateWithCString(0, Name, 0x8000100u)) != 0)
  {
    v6 = v5;
    v2 = CFStringConvertIANACharSetNameToEncoding(v5);
    CFRelease(v6);
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  ucsdet_close();
  return v2;
}

uint64_t ExtraNormalizeStringForArabic(__CFString *a1, int a2)
{
  CFStringNormalize(a1, kCFStringNormalizationFormD);
  v6.location = 0;
  v6.length = CFStringGetLength(a1);
  if (a2)
  {
    v4 = @"[\\u0610-\\u061A \\u064B-\\u065F \\u0670 \\u06D6-\\u06DC \\u06DF-\\u06E4 \\u06E7-\\u06E8 \\u06EA-\\u06ED] Remove";
  }

  else
  {
    v4 = @"[\\u0610-\\u061A \\u064B-\\u0652 \\u0656-\\u065F \\u0670 \\u06D6-\\u06DC \\u06E1-\\u06E3 \\u06E7-\\u06E8 \\u06EA-\\u06ED] Remove";
  }

  return CFStringTransform(a1, &v6, v4, 0);
}

BOOL ContainsLatinAlphabets(const __CFString *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  MEMORY[0x28223BE20](Length);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12.location = 0;
  v12.length = Length;
  CFStringGetCharacters(a1, v12, v4);
  if (Length < 1)
  {
    result = 0;
  }

  else if ((*v4 & 0xFFDFu) - 65 >= 0x1A)
  {
    v6 = 1;
    do
    {
      v7 = v6;
      if (Length == v6)
      {
        break;
      }

      v8 = (v4[v6++] & 0xFFDF) - 65;
      v9 = (v4[v7] & 0xFFDF) - 90 < 0;
    }

    while (v8 > 0x19);
    result = v7 < Length;
  }

  else
  {
    result = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void DistanceBetweenWords(CFStringRef theString, const __CFString *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4 = CFStringCreateMutableCopy(0, 0, a2);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
  CFStringNormalize(v4, kCFStringNormalizationFormD);
  Length = CFStringGetLength(MutableCopy);
  MEMORY[0x28223BE20](Length);
  v48 = MutableCopy;
  v55.location = 0;
  v55.length = Length;
  v51 = &v45 - v6;
  CFStringGetCharacters(MutableCopy, v55, (&v45 - v6));
  v7 = CFStringGetLength(v4);
  MEMORY[0x28223BE20](v7);
  v47 = v4;
  v56.location = 0;
  v56.length = v7;
  v50 = &v45 - v8;
  CFStringGetCharacters(v4, v56, (&v45 - v8));
  v53 = v7;
  v46 = Length + 1 + (Length + 1) * v7;
  MEMORY[0x28223BE20](v9);
  v11 = (&v45 - v10);
  v52 = Length;
  if ((Length & 0x8000000000000000) == 0)
  {
    v12 = vdupq_n_s64(v52);
    v13 = (v52 & 0x7FFFFFFFFFFFFFFELL) + 2;
    v14 = xmmword_21E5D1B80;
    v15 = v11 + 1;
    v16 = 1;
    v17 = vdupq_n_s64(2uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v12, v14));
      if (v18.i8[0])
      {
        *(v15 - 1) = (v16 - 1);
      }

      if (v18.i8[4])
      {
        *v15 = v16;
      }

      v14 = vaddq_s64(v14, v17);
      v15 += 2;
      v16 += 2;
      v13 -= 2;
    }

    while (v13);
  }

  v19 = v52;
  if ((v53 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = vdupq_n_s64(v53);
    v22 = (v53 & 0x7FFFFFFFFFFFFFFELL) + 2;
    v23 = xmmword_21E5D1B80;
    v24 = 16 * v52 + 16;
    v25 = vdupq_n_s64(2uLL);
    v26 = v11;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v21, v23));
      if (v27.i8[0])
      {
        *v26 = v20;
      }

      if (v27.i8[4])
      {
        v26[v19 + 1] = (v20 + 1);
      }

      v20 += 2;
      v23 = vaddq_s64(v23, v25);
      v26 = (v26 + v24);
    }

    while (v22 != v20);
  }

  v49 = v11;
  if (v52 >= 1)
  {
    v28 = v49 + 1;
    v29 = 1;
    do
    {
      if (v53 >= 1)
      {
        v30 = *&v51[2 * v29 - 2];
        isDiacritic = _isDiacritic(v30);
        if (isDiacritic)
        {
          v32 = 0.1;
        }

        else
        {
          v32 = 1.0;
        }

        v33 = v50;
        v34 = v28;
        v35 = v53;
        do
        {
          v37 = *v33++;
          v36 = v37;
          if (v30 == v37)
          {
            v38 = 0.0;
          }

          else
          {
            v38 = 2.0;
          }

          v39 = _isDiacritic(v36);
          if (isDiacritic && v39)
          {
            v40 = v38 / 100.0;
          }

          else
          {
            v40 = v38 * 0.5;
            if (!isDiacritic && !v39)
            {
              v40 = v38;
            }
          }

          if (v39)
          {
            v41 = 0.1;
          }

          else
          {
            v41 = 1.0;
          }

          v34[v19 + 1] = fmin(v40 + *(v34 - 1), fmin(v32 + v34[v19], v41 + *v34));
          v34 = (v34 + v19 * 8 + 8);
          --v35;
        }

        while (v35);
      }

      ++v28;
    }

    while (v29++ != v52);
  }

  CFRelease(v48);
  CFRelease(v47);
  v43 = v49[v46 - 1];
  v44 = *MEMORY[0x277D85DE8];
}

BOOL _isDiacritic(int a1)
{
  v2 = a1 - 1552;
  result = 1;
  if (v2 >= 0xB && (a1 - 1611) >= 0x15 && ((a1 - 1750) > 0x17 || ((1 << (a1 + 42)) & 0xF67E7F) == 0))
  {
    return a1 == 1648;
  }

  return result;
}

uint64_t IsWorkingInDictionaryApp()
{
  if (IsWorkingInDictionaryApp__OnceToken != -1)
  {
    IsWorkingInDictionaryApp_cold_1();
  }

  return IsWorkingInDictionaryApp__Flag;
}

void DCSLog(int a1, CFStringRef format, ...)
{
  va_start(va, format);
  v11 = *MEMORY[0x277D85DE8];
  if (DCSLog__OnceToken != -1)
  {
    DCSLog_cold_1();
  }

  if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 17)
      {
        v4 = 4;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v4 = 3;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v4 = 2;
        goto LABEL_13;
      }

LABEL_10:
      v4 = 0;
      goto LABEL_13;
    }

    v4 = 1;
  }

LABEL_13:
  v5 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (v5)
  {
    v6 = v5;
    v7 = DCSLog__LogObj[v4];
    if (os_log_type_enabled(v7, a1))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_21E58C000, v7, a1, "%{public}@", buf, 0xCu);
    }

    CFRelease(v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

os_log_t __DCSLog_block_invoke()
{
  for (i = 0; i != 5; ++i)
  {
    result = os_log_create("com.apple.DictionaryServices", off_27835A928[i]);
    DCSLog__LogObj[i] = result;
  }

  return result;
}

__CFArray *CreateWordEquivalenceList(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v50[1024] = *MEMORY[0x277D85DE8];
  v2 = _PrivateWEDictURL;
  if ((_PrivateWEDictURL || (pthread_once(&CreateWordEquivalenceList::once_control, InitializeDictionaryStuff), (v2 = _PrivateWEDictURL) != 0)) && (v42 = IDXCreateIndexObject(0, v2, 0)) != 0)
  {
    Length = CFStringGetLength(v1);
    v37[1] = v37;
    v4 = MEMORY[0x28223BE20](Length);
    v6 = (v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    MEMORY[0x28223BE20](v4);
    v8 = v37 - ((v7 + 23) & 0xFFFFFFFFFFFFFFF0);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v1);
    CFStringLowercase(MutableCopy, 0);
    v51.location = 0;
    v51.length = Length;
    CFStringGetCharacters(MutableCopy, v51, v6);
    CFRelease(MutableCopy);
    v41 = v6;
    v10 = v6[Length - 1];
    if (v10 == 42)
    {
      v11 = Length - 1;
    }

    else
    {
      v11 = Length;
    }

    v52.location = 0;
    v52.length = v11;
    v46 = v8;
    BuildWordBreakTable(v1, v52, 0, v8);
    v40 = v10;
    if (v10 == 42)
    {
      *&v46[8 * Length - 8] = -1;
    }

    memset(v50, 0, 512);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v11 >= 1)
    {
      v12 = 0;
      v39 = @"IDXCommonPrefixMatch";
      v13 = v46 + 8;
      v38 = @"IDXPrefixMatch";
      v14 = v11;
      do
      {
        v43 = v14 - 1;
        if (*&v46[8 * v12] == 1)
        {
          v15 = v42;
          v44 = v11 - v12;
          v45 = &v41[v12];
          IDXSetSearchCharacters(v42, v45, v11 - v12, v39);
          matched = IDXGetMatchDataPtr(v15, 1024, v50, v49);
          v17 = matched;
          if (matched)
          {
            if (matched >= 1)
            {
              v18 = v49;
              v19 = v48;
              v20 = v50;
              v21 = matched;
              do
              {
                v22 = *v20;
                v23 = **v20 >> 1;
                *v19 = v23;
                v24 = v23 + v12;
                if (v11 >= v24 && *&v46[8 * v24])
                {
                  AddSynonymsToArray(Mutable, 0, 0, v22, *v18);
                }

                ++v18;
                ++v19;
                ++v20;
                --v21;
              }

              while (v21);
            }
          }

          else
          {
            v25 = 0;
            while (v43 != v25)
            {
              v26 = v25 + 1;
              if (*&v13[8 * v25++])
              {
                goto LABEL_25;
              }
            }

            v26 = v14;
LABEL_25:
            AddSynonymsToArray(Mutable, v45, v26, 0, 0);
          }

          if (v40 == 42)
          {
            v28 = v42;
            IDXSetSearchCharacters(v42, v45, v44, v38);
            v29 = IDXGetMatchDataPtr(v28, 1024, v50, v49);
            if (v29 >= 1)
            {
              v30 = v29;
              for (i = 0; i != v30; ++i)
              {
                v32 = v50[i];
                if (v17 < 1)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = 0;
                  v34 = 0;
                  do
                  {
                    if (v48[v33] == *v32 >> 1)
                    {
                      break;
                    }

                    v33 = ++v34;
                  }

                  while (v17 > v34);
                }

                if (v17 == v33)
                {
                  AddSynonymsToArray(Mutable, v45, v44 + 1, v32, v49[i]);
                }
              }
            }
          }
        }

        ++v12;
        v13 += 8;
        v14 = v43;
      }

      while (v12 != v11);
    }

    CFRelease(v42);
  }

  else
  {
    Mutable = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return Mutable;
}

const __CFURL *InitializeDictionaryStuff(void)
{
  v0 = SyncSingleton<DCSEnvironment>::instance();
  FrameworkBundle = DCSEnvironment::getFrameworkBundle(v0);
  result = CFBundleCopyResourceURL(FrameworkBundle, @"WordEquivalence", @"dictionary", 0);
  _PrivateWEDictURL = result;
  if (result)
  {

    return IDXCreateIndexObject(0, result, 0);
  }

  return result;
}

void AddSynonymsToArray(__CFArray *a1, const unsigned __int16 *a2, CFIndex a3, const unsigned __int8 *a4, uint64_t a5)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a2)
  {
    v11 = CFStringCreateWithCharacters(0, a2, a3);
    CFArrayAppendValue(Mutable, v11);
    CFRelease(v11);
  }

  if (a5 >= 1)
  {
    v12 = 0;
    do
    {
      v14 = *a4;
      v13 = a4 + 2;
      v15 = CFStringCreateWithBytes(0, v13, v14, 0x14000100u, 0);
      a4 = &v13[v14];
      v12 += v14 + 2;
      CFArrayAppendValue(Mutable, v15);
      CFRelease(v15);
    }

    while (v12 < a5);
  }

  CFArrayAppendValue(a1, Mutable);

  CFRelease(Mutable);
}

__CFString *CopyTransformedTextFromXML(const __CFString *a1, DCSDictionary *a2, unint64_t a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = SyncSingleton<DCSEnvironment>::instance();
  v7 = DCSEnvironment::parentalControlCensoringContents(v6);
  v8 = DCSDictionary::XSLTData(a2);
  if (a3 != 255 || (v7 & 1) != 0)
  {
    mem = 0;
    size = 0;
    pthread_mutex_lock(&CopyTransformedTextFromXML::gGlobalLock);
    UTF8CString = CreateUTF8CString(a1);
    v12 = xmlParseDoc(UTF8CString);
    free(UTF8CString);
    if (v12)
    {
      v66[0] = "parental-control";
      v13 = PredefinedCachedXSLTDoc(0);
      v14 = "''";
      if (v7)
      {
        v14 = "'1'";
      }

      v63 = v14;
      v15 = ApplyXSLT(v12, v13, 0, 1, v66, &v63);
      if (v8)
      {
        BytePtr = CFDataGetBytePtr(v8);
        Length = CFDataGetLength(v8);
        v18 = xmlParseMemory(BytePtr, Length);
        v19 = xsltParseStylesheetDoc(v18);
        Preference = DCSDictionaryGetPreference(*a2);
        v21 = SyncSingleton<DCSEnvironment>::instance();
        if (((a3 == 1) & DCSEnvironment::orientationVerticalAllowed(v21)) != 0)
        {
          v22 = @"1";
        }

        else
        {
          v22 = @"0";
        }

        if (Preference)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Preference);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        }

        v25 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"DCSAllowOrientationVertical", v22);
        v26 = ApplyXSLT(v15, v19, v25, 0, 0, 0);
        CFRelease(v25);
        xmlFreeDoc(v15);
        xsltFreeStylesheet(v19);
        v15 = v26;
      }

      if (a3 - 1 > 1)
      {
        v28 = 0;
      }

      else
      {
        *v66 = xmmword_27835A988;
        v67 = *off_27835A998;
        v68 = "''";
        if (a3 == 2 && BecomeEmptyBySimplification(v15))
        {
          v27 = 1;
        }

        else
        {
          v27 = a3;
        }

        v29 = PredefinedCachedXSLTDoc(v27);
        v30 = DCSDictionary::shortName(a2);
        v31 = CFStringCreateWithFormat(0, 0, @"'%@'", v30);
        v66[0] = CreateUTF8CString(v31);
        CFRelease(v31);
        v32 = DCSDictionary::baseURL(a2);
        if (v32)
        {
          v33 = CFURLGetString(v32);
          v34 = CFURLCreateStringByReplacingPercentEscapes(0, v33, &stru_282F97070);
          v35 = CFURLCreateStringByAddingPercentEscapes(0, v34, 0, @"'", 0x8000100u);
          CFRelease(v34);
          v36 = CFStringCreateWithFormat(0, 0, @"'%@'", v35);
          CFRelease(v35);
          v37 = CreateUTF8CString(v36);
          CFRelease(v36);
        }

        else
        {
          v37 = CreateUTF8CString(@"''");
        }

        v66[1] = v37;
        if (DCSDictionary::isLocalizableDictionary(a2))
        {
          v38 = DCSDictionary::languages(a2);
          if (v38)
          {
            v39 = v38;
            if (CFArrayGetCount(v38))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v39, 0);
              if (ValueAtIndex)
              {
                Value = CFDictionaryGetValue(ValueAtIndex, @"DCSDictionaryDescriptionLanguage");
                if (Value)
                {
                  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, Value);
                  if (CanonicalLanguageIdentifierFromString)
                  {
                    v43 = CanonicalLanguageIdentifierFromString;
                    if (CFLocaleGetLanguageCharacterDirection(CanonicalLanguageIdentifierFromString) == kCFLocaleLanguageDirectionRightToLeft)
                    {
                      *&v67 = "'1'";
                    }

                    CFRelease(v43);
                  }
                }
              }
            }
          }
        }

        isAppearanceAwareDictionary = DCSDictionary::isAppearanceAwareDictionary(a2);
        v45 = "'apple_appearance-incompliant'";
        if (isAppearanceAwareDictionary)
        {
          v45 = "'apple_appearance-compliant'";
        }

        v68 = v45;
        v46 = DCSDictionary::styleSheetContents(a2);
        v28 = v46;
        if (v46 && (Count = CFArrayGetCount(v46), Count >= 1))
        {
          v48 = Count;
          for (i = 0; i != v48; ++i)
          {
            CFArrayGetValueAtIndex(v28, i);
            *(&v67 + 1) = "'<!-- embedded_css_placeholder -->'";
            v50 = ApplyXSLT(v15, v29, 0, 5, &off_27835A960, v66);
            xmlFreeDoc(v15);
            if (!i)
            {
              free(v66[0]);
              v66[0] = "''";
              free(v66[1]);
              v66[1] = "''";
              *&v67 = "''";
            }

            v15 = v50;
          }
        }

        else
        {
          v50 = v15;
        }

        v15 = v50;
      }

      xmlDocDumpMemory(v15, &mem, &size);
      xmlFreeDoc(v12);
      xmlFreeDoc(v15);
      if (a3 == 3)
      {
        v51 = xmlParseDoc(mem);
        if (BecomeEmptyBySimplification(v51))
        {
          v52 = 4;
        }

        else
        {
          v52 = 3;
        }

        v53 = PredefinedCachedXSLTDoc(v52);
        v54 = xsltApplyStylesheet(v53, v51, 0);
        SanitizedText = ExtractSanitizedText(v54);
        xmlFreeDoc(v51);
        xmlFreeDoc(v54);
      }

      else
      {
        v55 = CFStringCreateWithBytes(0, mem, size, 0x8000100u, 0);
        SanitizedText = CFStringCreateMutableCopy(0, 0, v55);
        CFRelease(v55);
        if (v28)
        {
          v56 = CFArrayGetCount(v28);
          if (v56 >= 1)
          {
            v57 = v56;
            for (j = 0; j != v57; ++j)
            {
              v59 = CFStringFind(SanitizedText, @"<!-- embedded_css_placeholder -->", 0);
              if (!v59.length)
              {
                break;
              }

              v60 = CFArrayGetValueAtIndex(v28, j);
              v61 = CFStringCreateWithFormat(0, 0, @"/*<![CDATA[*/ %@ /*]]>*/", v60);
              CFStringReplace(SanitizedText, v59, v61);
              CFRelease(v61);
            }
          }
        }
      }

      free(mem);
    }

    else
    {
      SanitizedText = 0;
    }

    pthread_mutex_unlock(&CopyTransformedTextFromXML::gGlobalLock);
    v62 = *MEMORY[0x277D85DE8];
    return SanitizedText;
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    return CFRetain(a1);
  }
}

UInt8 *CreateUTF8CString(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  usedBufLen = 0;
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  v7.location = 0;
  v7.length = Length;
  CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v4, MaximumSizeForEncoding, &usedBufLen);
  v4[usedBufLen] = 0;
  return v4;
}

uint64_t PredefinedCachedXSLTDoc(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  resourceData[5] = v1;
  resourceData[6] = v2;
  if (!PredefinedCachedXSLTDoc(long)::_XSLTDoc[a1])
  {
    v5 = CFStringCreateWithCString(0, PredefinedCachedXSLTDoc(long)::_FileNames[a1], 0);
    v6 = SyncSingleton<DCSEnvironment>::instance();
    FrameworkBundle = DCSEnvironment::getFrameworkBundle(v6);
    v8 = CFBundleCopyResourceURL(FrameworkBundle, v5, 0, 0);
    CFRelease(v5);
    if (v8)
    {
      resourceData[0] = 0;
      CFURLCreateDataAndPropertiesFromResource(0, v8, resourceData, 0, 0, 0);
      CFRelease(v8);
      if (resourceData[0])
      {
        BytePtr = CFDataGetBytePtr(resourceData[0]);
        Length = CFDataGetLength(resourceData[0]);
        v11 = xmlParseMemory(BytePtr, Length);
        PredefinedCachedXSLTDoc(long)::_XSLTDoc[a1] = xsltParseStylesheetDoc(v11);
        CFRelease(resourceData[0]);
      }
    }
  }

  return PredefinedCachedXSLTDoc(long)::_XSLTDoc[a1];
}

xmlDocPtr ApplyXSLT(xmlDocPtr doc, xsltStylesheetPtr style, CFDictionaryRef theDict, uint64_t a4, const char **a5, const char **a6)
{
  Count = a4;
  v33[1] = *MEMORY[0x277D85DE8];
  if (theDict || a4 >= 1)
  {
    if (theDict)
    {
      Count = CFDictionaryGetCount(theDict);
      v33[0] = 16 * Count;
      v14 = malloc_type_malloc((16 * Count) | 8, 0x10040436913F5uLL);
      MEMORY[0x28223BE20](v14);
      v15 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
      v16 = (v33 - v15);
      if ((8 * Count) >= 0x200)
      {
        v17 = 512;
      }

      else
      {
        v17 = 8 * Count;
      }

      bzero(v33 - v15, v17);
      MEMORY[0x28223BE20](v18);
      v19 = (v33 - v15);
      bzero(v33 - v15, v17);
      CFDictionaryGetKeysAndValues(theDict, (v33 - v15), (v33 - v15));
      if (Count >= 1)
      {
        v20 = (v14 + 1);
        v21 = Count;
        do
        {
          v22 = *v16++;
          *(v20 - 1) = CreateUTF8CString(v22);
          v23 = *v19++;
          *v20 = CreateUTF8CString(v23);
          v20 += 2;
          --v21;
        }

        while (v21);
      }

      v24 = v33[0];
    }

    else
    {
      v24 = 16 * a4;
      v25 = malloc_type_malloc((16 * a4) | 8, 0x10040436913F5uLL);
      v14 = v25;
      if (Count >= 1)
      {
        v26 = 0;
        v27 = v25 + 8;
        do
        {
          *(v27 - 1) = a5[v26];
          *v27 = a6[v26];
          v27 += 2;
          ++v26;
        }

        while (Count != v26);
      }
    }

    *(v14 + v24) = 0;
    v28 = xsltApplyStylesheet(style, doc, v14);
    if (theDict && Count >= 1)
    {
      if (2 * Count <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2 * Count;
      }

      v30 = v14;
      do
      {
        v31 = *v30++;
        free(v31);
        --v29;
      }

      while (v29);
    }

    free(v14);
    v32 = *MEMORY[0x277D85DE8];
    return v28;
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    return xsltApplyStylesheet(style, doc, 0);
  }
}

BOOL BecomeEmptyBySimplification(_xmlDoc *a1)
{
  v2 = PredefinedCachedXSLTDoc(3uLL);
  v3 = xsltApplyStylesheet(v2, a1, 0);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  RootElement = xmlDocGetRootElement(v3);
  if (RootElement && (children = RootElement->children) != 0)
  {
    Content = xmlNodeGetContent(children);
    v8 = strlen(Content);
    if (v8 < 1)
    {
      v11 = 1;
    }

    else
    {
      v9 = CFStringCreateWithBytes(0, Content, v8, 0x8000100u, 0);
      MutableCopy = CFStringCreateMutableCopy(0, 0, v9);
      CFRelease(v9);
      CFStringTrimWhitespace(MutableCopy);
      v11 = CFStringGetLength(MutableCopy) == 0;
      CFRelease(MutableCopy);
    }

    free(Content);
  }

  else
  {
    v11 = 1;
  }

  xmlFreeDoc(v4);
  return v11;
}

_xmlNode *ExtractSanitizedText(_xmlDoc *a1)
{
  result = xmlDocGetRootElement(a1)->children;
  if (result)
  {
    Content = xmlNodeGetContent(result);
    v3 = strlen(Content);
    v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
    if (v3 < 1)
    {
      v13 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      v8 = 1;
      do
      {
        v9 = &Content[v6];
        v10 = *v9;
        v11 = v9[1];
        if (v3 - v6 >= 5 && v10 == 35 && v11 == 66 && v9[2] == 82 && Content[v6 + 3] == 35)
        {
          if (v7)
          {
            v7 = 0;
          }

          else
          {
            v4[v5++] = 10;
          }

          v8 = 1;
          v6 += 3;
        }

        else if (v8)
        {
          if (v10 > 0x20 || ((1 << v10) & 0x100000600) == 0)
          {
            v8 = 0;
            v4[v5++] = v10;
          }

          else
          {
            v8 = 1;
          }
        }

        else if (v10 == 9 || v10 == 32 && v11 == 32)
        {
          v8 = 0;
        }

        else
        {
          v4[v5++] = v10;
          v8 = v10 == 10;
        }

        ++v6;
      }

      while (v6 < v3);
      v13 = v5;
    }

    v14 = CFStringCreateWithBytes(0, v4, v13, 0x8000100u, 0);
    free(Content);
    free(v4);
    return v14;
  }

  return result;
}

xmlDoc *CopySimplifiedTextFromWikipediaResult(const __CFString *a1)
{
  pthread_mutex_lock(&CopySimplifiedTextFromWikipediaResult::gGlobalLock);
  UTF8CString = CreateUTF8CString(a1);
  SanitizedText = xmlParseDoc(UTF8CString);
  free(UTF8CString);
  if (SanitizedText)
  {
    v4 = xsltApplyStylesheet(0, SanitizedText, 0);
    xmlFreeDoc(SanitizedText);
    if (v4)
    {
      SanitizedText = ExtractSanitizedText(v4);
      xmlFreeDoc(v4);
    }

    else
    {
      SanitizedText = 0;
    }
  }

  pthread_mutex_unlock(&CopySimplifiedTextFromWikipediaResult::gGlobalLock);
  return SanitizedText;
}

CFMutableDictionaryRef CopyXPathElementsArray(const __CFString *a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&CopyXPathElementsArray::gGlobalLock);
  if (a1 && (UTF8CString = CreateUTF8CString(a1)) != 0 && (v7 = UTF8CString, v8 = xmlParseDoc(UTF8CString), free(v7), v8))
  {
    v55 = v8;
    v9 = xmlXPathNewContext(v8);
    v56 = 0;
  }

  else
  {
    v55 = 0;
    v9 = 0;
    v56 = 1;
  }

  Count = CFDictionaryGetCount(a2);
  MEMORY[0x28223BE20](Count);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v11 >= 0x200)
  {
    v13 = 512;
  }

  else
  {
    v13 = v11;
  }

  bzero(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  CFDictionaryGetKeysAndValues(a2, v12, 0);
  v62 = v12;
  v63 = Count;
  if (a3)
  {
    if (v9)
    {
      v14 = CFDictionaryGetCount(a3);
      if (v14 >= 1)
      {
        v15 = v14;
        v16 = a2;
        MEMORY[0x28223BE20](v14);
        v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (v17 >= 0x200)
        {
          v19 = 512;
        }

        else
        {
          v19 = v17;
        }

        bzero(&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
        CFDictionaryGetKeysAndValues(a3, v18, 0);
        while (1)
        {
          v20 = *v18;
          Value = CFDictionaryGetValue(a3, *v18);
          if (Value)
          {
            v22 = Value;
            v23 = CreateUTF8CString(v20);
            v24 = CreateUTF8CString(v22);
            v25 = v24;
            if (v23)
            {
              v26 = v24 == 0;
            }

            else
            {
              v26 = 1;
            }

            if (!v26)
            {
              xmlXPathRegisterNs(v9, v23, v24);
LABEL_27:
              free(v23);
              if (!v25)
              {
                goto LABEL_25;
              }

LABEL_24:
              free(v25);
              goto LABEL_25;
            }

            if (v23)
            {
              goto LABEL_27;
            }

            if (v24)
            {
              goto LABEL_24;
            }
          }

LABEL_25:
          ++v18;
          if (!--v15)
          {
            a2 = v16;
            v12 = v62;
            Count = v63;
            break;
          }
        }
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9 || Count < 1)
  {
    goto LABEL_66;
  }

  v27 = 0;
  v64 = @"DCSTextElementKeySensesWithAttributes";
  v60 = @"DCSTextElementSenseKeyText";
  v59 = @"DCSTextElementSenseKeyIsExplicit";
  v58 = *MEMORY[0x277CBED10];
  v53 = @"DCSTextElementKeySenses";
  v54 = a2;
  v61 = v9;
  do
  {
    v28 = v12[v27];
    v29 = CFStringCompare(v28, v64, 0);
    v30 = CFDictionaryGetValue(a2, v28);
    v31 = CreateUTF8CString(v30);
    if (!v31)
    {
      goto LABEL_65;
    }

    v32 = v31;
    v33 = MEMORY[0x223D5EE20](v31, v9);
    free(v32);
    if (!v33)
    {
      goto LABEL_65;
    }

    p_nodeNr = &v33->nodesetval->nodeNr;
    if (!p_nodeNr)
    {
      goto LABEL_64;
    }

    v35 = *p_nodeNr;
    if (!v35)
    {
      goto LABEL_64;
    }

    if (!*(p_nodeNr + 1) || v35 < 1)
    {
      goto LABEL_64;
    }

    v37 = 0;
    v38 = 0;
    do
    {
      v39 = *(*(p_nodeNr + 1) + 8 * v37);
      v40 = *(v39 + 8);
      if (v40 == 2)
      {
        Content = xmlNodeGetContent(*(*(p_nodeNr + 1) + 8 * v37));
        if (Content)
        {
          v43 = Content;
          v44 = strlen(Content);
          v41 = v44 ? CFStringCreateWithBytes(0, v43, v44, 0x8000100u, 0) : 0;
          free(v43);
          if (v41)
          {
LABEL_50:
            if (v38)
            {
              if (v29)
              {
                goto LABEL_52;
              }

LABEL_54:
              v45 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionarySetValue(v45, v60, v41);
              CFDictionarySetValue(v45, v59, v58);
              CFArrayAppendValue(v38, v45);
              CFRelease(v45);
            }

            else
            {
              v38 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
              if (v29 == kCFCompareEqualTo)
              {
                goto LABEL_54;
              }

LABEL_52:
              CFArrayAppendValue(v38, v41);
            }

            CFRelease(v41);
          }
        }
      }

      else if (v40 == 1)
      {
        v41 = CFStringCreateMutable(0, 0);
        _TraverseAndCollectStringInNode(*(v39 + 24), v41);
        CFStringTrimWhitespace(v41);
        if (v41)
        {
          goto LABEL_50;
        }
      }

      ++v37;
    }

    while (v35 != v37);
    a2 = v54;
    if (v38)
    {
      if (CFStringCompare(v28, v53, 0) && v29 && CFStringHasPrefix(v28, @"DCSTextElementKey"))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v38, 0);
        v47 = Mutable;
        v48 = v28;
      }

      else
      {
        v47 = Mutable;
        v48 = v28;
        ValueAtIndex = v38;
      }

      CFDictionarySetValue(v47, v48, ValueAtIndex);
      CFRelease(v38);
    }

LABEL_64:
    xmlXPathFreeObject(v33);
    v9 = v61;
    v12 = v62;
    Count = v63;
LABEL_65:
    ++v27;
  }

  while (v27 < Count);
LABEL_66:
  if ((v56 & 1) == 0)
  {
    xmlFreeDoc(v55);
  }

  v49 = Mutable;
  if (v9)
  {
    xmlXPathFreeContext(v9);
  }

  if (!CFDictionaryGetCount(v49))
  {
    CFRelease(v49);
    v49 = 0;
  }

  pthread_mutex_unlock(&CopyXPathElementsArray::gGlobalLock);
  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

uint64_t _TraverseAndCollectStringInNode(uint64_t result, __CFString *a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      if (*(v3 + 8) == 3)
      {
        Content = xmlNodeGetContent(v3);
        if (Content)
        {
          v5 = Content;
          v6 = strlen(Content);
          if (v6)
          {
            v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
            free(v5);
            if (v7)
            {
              CFStringAppend(a2, v7);
              CFRelease(v7);
            }
          }

          else
          {
            free(v5);
          }
        }
      }

      result = _TraverseAndCollectStringInNode(*(v3 + 24), a2);
      v3 = *(v3 + 48);
    }

    while (v3);
  }

  return result;
}

uint64_t IDXAccessContext::IDXAccessContext(uint64_t result, uint64_t a2)
{
  *result = &unk_282F95E28;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

void IDXAccessContext::~IDXAccessContext(IDXAccessContext *this)
{
  *this = &unk_282F95E28;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 1);
    if (v1)
    {
      IDXIndexInfo::~IDXIndexInfo(v1);
      MEMORY[0x223D5E5E0]();
    }
  }
}

uint64_t IDXAccessContext::initialize(IDXAccessContext *this)
{
  pthread_mutex_lock((*(this + 1) + 232));
  v7 = 0;
  v6 = IDXIndexInfo::accessContextData(*(this + 1), &v7);
  v2 = (*(*this + 96))(this, v7 == 0, &v6);
  v3 = *(this + 1);
  if (v2)
  {
    IDXIndexInfo::opened(v3, v6);
    v4 = (*(this + 1) + 232);
  }

  else
  {
    v4 = (v3 + 232);
  }

  pthread_mutex_unlock(v4);
  return v2;
}

uint64_t IDXAccessContext::finalize(IDXAccessContext *this)
{
  pthread_mutex_lock((*(this + 1) + 232));
  v2 = IDXIndexInfo::closed(*(this + 1)) == 0;
  (*(*this + 104))(this, v2);
  v3 = (*(this + 1) + 232);

  return pthread_mutex_unlock(v3);
}

uint64_t openRawIndexFile(const char *a1, int a2, int a3)
{
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    return open(a1, v4 | 0xA00, 438);
  }

  return open(a1, v4);
}

uint64_t mapIndexFile(int a1, int a2, off_t *a3)
{
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  if (fstat(a1, &v8) == -1)
  {
    return -1;
  }

  st_size = v8.st_size;
  if (a3)
  {
    *a3 = v8.st_size;
  }

  return mmap(0, st_size, v5, 1, a1, 0);
}

uint64_t unmapIndexFile(void *a1, size_t a2)
{
  msync(a1, a2, 16);

  return munmap(a1, a2);
}

void IDXAccessMethodManager::IDXAccessMethodManager(IDXAccessMethodManager *this)
{
  *this = 1;
  *(this + 1) = 1;
  *(this + 2) = 1;
  *(this + 3) = 1;
}

void IDXAccessMethodManager::~IDXAccessMethodManager(IDXAccessMethodManager *this)
{
  for (i = 0; i != 32; i += 8)
  {
    v3 = *(this + i);
    if (v3 >= 2)
    {
      CFRelease(v3);
    }
  }
}

void *IDXAccessMethodManager::accessMethod(IDXAccessMethodManager *this, const __CFString *a2, IDXDictionaryPackage *a3)
{
  if (!a2)
  {
    return 0;
  }

  if ((_initedRegisteredAccessMethods & 1) == 0)
  {
    pthread_once(&IDXAccessMethodManager::assureSharedRegistrationList(void)::once_control, _InitializeRegisteredAcccessMethods);
  }

  pthread_rwlock_rdlock((_registeredAccessMethods + 16));
  Value = CFDictionaryGetValue(*(_registeredAccessMethods + 8), a2);
  pthread_rwlock_unlock((_registeredAccessMethods + 16));
  if (!Value)
  {
    v6 = _registeredAccessMethods;
    pthread_rwlock_wrlock((_registeredAccessMethods + 16));
    Value = CFDictionaryGetValue(*(_registeredAccessMethods + 8), a2);
    if (!Value)
    {
      v7 = IDXAccessMethodManager::activateBuiltInAccessMethod(0, a2);
      Value = v7;
      if (v7 || (v7 = IDXAccessMethodManager::searchPlugInAccessMethod(this, a2, v8), (Value = v7) != 0))
      {
        IDXAccessMethodManager::registerAccessMethod(v7, Value);
      }
    }

    pthread_rwlock_unlock((v6 + 16));
  }

  return Value;
}

uint64_t IDXAccessMethodManager::assureSharedRegistrationList(IDXAccessMethodManager *this)
{
  if ((_initedRegisteredAccessMethods & 1) == 0)
  {
    return pthread_once(&IDXAccessMethodManager::assureSharedRegistrationList(void)::once_control, _InitializeRegisteredAcccessMethods);
  }

  return result;
}

uint64_t IDXAccessMethodManager::activateBuiltInAccessMethod(IDXAccessMethodManager *this, CFStringRef theString1)
{
  if (theString1)
  {
    if (CFStringCompare(theString1, @"com.apple.TrieAccessMethod", 0) == kCFCompareEqualTo)
    {
      operator new();
    }

    if (CFStringCompare(theString1, @"com.apple.HeapAccessMethod", 0) == kCFCompareEqualTo)
    {
      operator new();
    }

    if (CFStringCompare(theString1, @"com.apple.TestAccessMethod-Inspector", 0) == kCFCompareEqualTo)
    {
      operator new();
    }
  }

  return 0;
}

uint64_t IDXAccessMethodManager::searchPlugInAccessMethod(IDXAccessMethodManager *this, const __CFString *a2, IDXDictionaryPackage *a3)
{
  v4 = *(this + 2);
  if (v4 == 1)
  {
    v6 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Dictionaries/", kCFURLPOSIXPathStyle, 1u);
    *(this + 2) = CFBundleCreateBundlesFromDirectory(0, v6, @"dictionaryPlugin");
    CFRelease(v6);
    v4 = *(this + 2);
    if (!v4)
    {
      return 0;
    }
  }

  else if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
      InfoDictionary = CFBundleGetInfoDictionary(ValueAtIndex);
      Value = CFDictionaryGetValue(InfoDictionary, @"IDXAccessMethodIDs");
      if (Value)
      {
        v13 = CFDictionaryGetValue(Value, a2);
        if (v13)
        {
          CFUUIDCreateFromString(0, v13);
          CFBundleCopyBundleURL(ValueAtIndex);
          operator new();
        }
      }
    }
  }

  return 0;
}

void IDXAccessMethodManager::registerAccessMethod(uint64_t a1, void *a2)
{
  if ((_initedRegisteredAccessMethods & 1) == 0)
  {
    pthread_once(&IDXAccessMethodManager::assureSharedRegistrationList(void)::once_control, _InitializeRegisteredAcccessMethods);
  }

  if (a2)
  {
    v3 = *(_registeredAccessMethods + 8);
    v4 = a2[1];
    if (!CFDictionaryContainsKey(v3, v4))
    {

      CFDictionarySetValue(v3, v4, a2);
    }
  }
}

uint64_t IDXBuiltInAccessMethod<TrieAccessContext>::IDXBuiltInAccessMethod(uint64_t a1, CFTypeRef cf)
{
  *a1 = &unk_282F95F88;
  v3 = CFRetain(cf);
  *a1 = &unk_282F95EB8;
  *(a1 + 8) = v3;
  *(a1 + 168) = 1;
  IDXBuiltInAccessMethod_SetBridgeFunctionPtrs((a1 + 32));
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = a1;
  return a1;
}

void IDXAccessMethod::~IDXAccessMethod(IDXAccessMethod *this)
{
  *this = &unk_282F95F88;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void IDXBuiltInAccessMethod<TrieAccessContext>::~IDXBuiltInAccessMethod(IDXAccessMethod *a1)
{
  IDXAccessMethod::~IDXAccessMethod(a1);

  JUMPOUT(0x223D5E5E0);
}

uint64_t IDXBuiltInAccessMethod<TrieAccessContext>::retain(uint64_t a1)
{
  v1 = (*(a1 + 168) + 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t IDXBuiltInAccessMethod<TrieAccessContext>::release(uint64_t a1)
{
  v1 = (*(a1 + 168) - 1);
  *(a1 + 168) = v1;
  return v1;
}

void IDXBuiltInAccessMethod<TrieAccessContext>::openIndexFile()
{
  operator new();
}

{
  operator new();
}

uint64_t IDXBuiltInAccessMethod<TrieAccessContext>::closeIndexFile(int a1, IDXAccessContext *this)
{
  result = IDXAccessContext::finalize(this);
  if (this)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

uint64_t IDXBuiltInAccessMethod<HeapAccessContext>::IDXBuiltInAccessMethod(uint64_t a1, CFTypeRef cf)
{
  *a1 = &unk_282F95F88;
  v3 = CFRetain(cf);
  *a1 = &unk_282F96030;
  *(a1 + 8) = v3;
  *(a1 + 168) = 1;
  IDXBuiltInAccessMethod_SetBridgeFunctionPtrs((a1 + 32));
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = a1;
  return a1;
}

void IDXBuiltInAccessMethod<HeapAccessContext>::~IDXBuiltInAccessMethod(IDXAccessMethod *a1)
{
  IDXAccessMethod::~IDXAccessMethod(a1);

  JUMPOUT(0x223D5E5E0);
}

uint64_t IDXBuiltInAccessMethod<HeapAccessContext>::retain(uint64_t a1)
{
  v1 = (*(a1 + 168) + 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t IDXBuiltInAccessMethod<HeapAccessContext>::release(uint64_t a1)
{
  v1 = (*(a1 + 168) - 1);
  *(a1 + 168) = v1;
  return v1;
}

void IDXBuiltInAccessMethod<HeapAccessContext>::openIndexFile()
{
  operator new();
}

{
  operator new();
}

uint64_t IDXBuiltInAccessMethod<HeapAccessContext>::closeIndexFile(int a1, IDXAccessContext *this)
{
  result = IDXAccessContext::finalize(this);
  if (this)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

uint64_t IDXBuiltInAccessMethod<InspectorAccessContext>::IDXBuiltInAccessMethod(uint64_t a1, CFTypeRef cf)
{
  *a1 = &unk_282F95F88;
  v3 = CFRetain(cf);
  *a1 = &unk_282F960F0;
  *(a1 + 8) = v3;
  *(a1 + 168) = 1;
  IDXBuiltInAccessMethod_SetBridgeFunctionPtrs((a1 + 32));
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = a1;
  return a1;
}

void IDXBuiltInAccessMethod<InspectorAccessContext>::~IDXBuiltInAccessMethod(IDXAccessMethod *a1)
{
  IDXAccessMethod::~IDXAccessMethod(a1);

  JUMPOUT(0x223D5E5E0);
}

uint64_t IDXBuiltInAccessMethod<InspectorAccessContext>::retain(uint64_t a1)
{
  v1 = (*(a1 + 168) + 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t IDXBuiltInAccessMethod<InspectorAccessContext>::release(uint64_t a1)
{
  v1 = (*(a1 + 168) - 1);
  *(a1 + 168) = v1;
  return v1;
}

void IDXBuiltInAccessMethod<InspectorAccessContext>::openIndexFile()
{
  operator new();
}

{
  operator new();
}

uint64_t IDXBuiltInAccessMethod<InspectorAccessContext>::closeIndexFile(int a1, IDXAccessContext *this)
{
  result = IDXAccessContext::finalize(this);
  if (this)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

void *IDXBuiltInAccessMethod_SetBridgeFunctionPtrs(void *result)
{
  result[4] = _OpenIndex_AcccessMethodBridge;
  result[5] = _CloseIndex_AcccessMethodBridge;
  result[6] = _SetSearchCharacters_AcccessMethodBridge;
  result[7] = _GetMatchDataPtr_AcccessMethodBridge;
  result[8] = _GetMatchData_AcccessMethodBridge;
  result[9] = _ContainsMatchData_AcccessMethodBridge;
  result[10] = _GetDataPtrByID_AcccessMethodBridge;
  result[11] = _GetDataByID_AcccessMethodBridge;
  result[12] = _SupportDataPtr_AcccessMethodBridge;
  result[13] = _AddRecord_AcccessMethodBridge;
  result[14] = _DeleteRecord_AcccessMethodBridge;
  result[15] = _BuildWithRecords_AcccessMethodBridge;
  result[16] = _CreateIndexFile_AcccessMethodBridge;
  result[1] = _QueryInterface_AcccessMethodBridge;
  result[2] = _AddRef_AcccessMethodBridge;
  result[3] = _Release_AcccessMethodBridge;
  return result;
}

const void *IDXDictionaryManager::dictionary(IDXDictionaryManager *this, CFURLRef relativeURL)
{
  if ((_initedCachedDictionaries & 1) == 0)
  {
    pthread_once(&IDXDictionaryManager::dictionary(__CFURL const*)::once_control, _InitializeCachedDictionaries);
  }

  v3 = CFURLCopyAbsoluteURL(relativeURL);
  v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
  CFRelease(v3);
  pthread_rwlock_rdlock((_cachedDictionaries + 16));
  Value = CFDictionaryGetValue(*(_cachedDictionaries + 8), v4);
  pthread_rwlock_unlock((_cachedDictionaries + 16));
  if (!Value)
  {
    v6 = _cachedDictionaries;
    pthread_rwlock_wrlock((_cachedDictionaries + 16));
    Value = CFDictionaryGetValue(*(_cachedDictionaries + 8), v4);
    if (!Value)
    {
      operator new();
    }

    pthread_rwlock_unlock((v6 + 16));
  }

  CFRelease(v4);
  return Value;
}

void sub_21E5A4118(_Unwind_Exception *a1)
{
  MEMORY[0x223D5E5E0](v1, 0x10E0C4030B049B9);
  pthread_rwlock_unlock((v2 + 16));
  _Unwind_Resume(a1);
}

uint64_t IDXDictionaryManager::remove(IDXDictionaryManager *this, CFAbsoluteTime *a2)
{
  v3 = _cachedDictionaries;
  pthread_rwlock_wrlock((_cachedDictionaries + 16));
  v4 = *(_cachedDictionaries + 8);
  v5 = IDXDictionaryPackage::URL(a2);
  v6 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
  CFDictionaryRemoveValue(v4, v6);
  if (a2)
  {
    IDXDictionaryPackage::~IDXDictionaryPackage(a2);
    MEMORY[0x223D5E5E0]();
  }

  return pthread_rwlock_unlock((v3 + 16));
}

uint64_t IDXDictionaryManager::clearInactiveCaches(IDXDictionaryManager *this)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = _cachedDictionaries;
  pthread_rwlock_wrlock((_cachedDictionaries + 16));
  v2 = *(_cachedDictionaries + 8);
  Count = CFDictionaryGetCount(v2);
  if (Count >= 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    MEMORY[0x28223BE20](v5);
    v6 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v7 = (v13 - v6);
    if ((8 * Count) >= 0x200)
    {
      v8 = 512;
    }

    else
    {
      v8 = 8 * Count;
    }

    bzero(v13 - v6, v8);
    MEMORY[0x28223BE20](v9);
    v10 = (v13 - v6);
    bzero(v13 - v6, v8);
    CFDictionaryGetKeysAndValues(v2, (v13 - v6), (v13 - v6));
    do
    {
      if (!*(*v7 + 44) && Current > *(*v7 + 40) + 300.0)
      {
        CFDictionaryRemoveValue(v2, *v10);
        if (*v7)
        {
          IDXDictionaryPackage::~IDXDictionaryPackage(*v7);
          MEMORY[0x223D5E5E0]();
        }
      }

      ++v10;
      ++v7;
      --Count;
    }

    while (Count);
  }

  result = pthread_rwlock_unlock((v1 + 16));
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21E5A4458(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__CFString *IDXDictionaryManager::templateProperty(IDXDictionaryManager *this, __CFString *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = @"IDXDefaultProperty";
  }

  v3 = CFGetTypeID(v2);
  if (v3 == CFStringGetTypeID())
  {
    if ((_initedCachedProperties & 1) == 0)
    {
      pthread_once(&IDXDictionaryManager::templateProperty(void const*)::once_control, _InitializeCachedProperties);
    }

    pthread_rwlock_rdlock((_cachedProperties + 16));
    Value = CFDictionaryGetValue(*(_cachedProperties + 8), v2);
    pthread_rwlock_unlock((_cachedProperties + 16));
    if (!Value)
    {
      v5 = _cachedProperties;
      pthread_rwlock_wrlock((_cachedProperties + 16));
      Value = CFDictionaryGetValue(*(_cachedProperties + 8), v2);
      if (!Value)
      {
        if (CFStringGetCharacterAtIndex(v2, 0) == 47)
        {
          v8 = CFURLCreateWithFileSystemPath(0, v2, kCFURLPOSIXPathStyle, 0);
        }

        else
        {
          BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.DictionaryServices");
          v8 = CFBundleCopyResourceURL(BundleWithIdentifier, v2, @"plist", 0);
        }

        v10 = v8;
        if (!v8)
        {
          Value = 0;
          goto LABEL_10;
        }

        resourceData = 0;
        if (CFURLCreateDataAndPropertiesFromResource(0, v8, &resourceData, 0, 0, 0))
        {
          Value = CFPropertyListCreateFromXMLData(0, resourceData, 0, 0);
          CFRelease(resourceData);
        }

        else
        {
          Value = 0;
        }

        CFRelease(v10);
        if (!Value)
        {
          goto LABEL_10;
        }
      }

      CFDictionarySetValue(*(_cachedProperties + 8), v2, Value);
      CFRelease(Value);
LABEL_10:
      pthread_rwlock_unlock((v5 + 16));
    }
  }

  else
  {
    v6 = CFGetTypeID(v2);
    if (v6 == CFDictionaryGetTypeID())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return Value;
}

CFMutableArrayRef DCSSearchFoundationCopyResults(const __CFString *a1)
{
  v2 = DCSCopyActiveDictionaries(0);
  v3 = DCSSearchFoundationCopyResultsWithOptions(a1, v2, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void IDXDictionaryPackage::IDXDictionaryPackage(IDXDictionaryPackage *this, CFURLRef relativeURL)
{
  *this = -1;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 108) = 0;
  *(this + 44) = 0;
  *(this + 31) = 0;
  *(this + 1) = CFURLCopyAbsoluteURL(relativeURL);
  pthread_mutex_init((this + 32), 0);
  pthread_mutex_init((this + 184), 0);
  pthread_mutex_init((this + 112), 0);
  pthread_mutex_init(this + 4, 0);
  *(this + 40) = CFAbsoluteTimeGetCurrent();
}

void IDXDictionaryPackage::~IDXDictionaryPackage(IDXDictionaryPackage *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 31);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    v6 = *(this + 26);
    if (v6 >= 1)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(this + 12) + 8 * i);
        if (v8)
        {
          IDXIndexInfo::~IDXIndexInfo(v8);
          MEMORY[0x223D5E5E0]();
          v6 = *(this + 26);
        }
      }

      v5 = *(this + 12);
    }

    free(v5);
  }

  pthread_mutex_destroy((this + 32));
  pthread_mutex_destroy((this + 184));
  pthread_mutex_destroy((this + 112));
  pthread_mutex_destroy(this + 4);
}

CFDictionaryRef IDXDictionaryPackage::version(CFDictionaryRef *this)
{
  if (*this == -1)
  {
    if (IDXDictionaryPackage::properties(this))
    {
      Value = CFDictionaryGetValue(this[2], @"IDXDictionaryVersion");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberCFIndexType, this);
      }
    }
  }

  return *this;
}

uint64_t IDXDictionaryPackage::properties(IDXDictionaryPackage *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    pthread_mutex_lock((this + 32));
    if ((*(this + 24) & 1) == 0)
    {
      DictionaryComponentURL = CreateDictionaryComponentURL(*(this + 1), @"Info.plist");
      resourceData = 0;
      if (CFURLCreateDataAndPropertiesFromResource(0, DictionaryComponentURL, &resourceData, 0, 0, 0))
      {
        v3 = resourceData == 0;
      }

      else
      {
        v3 = 1;
      }

      if (!v3)
      {
        *(this + 2) = CFPropertyListCreateFromXMLData(0, resourceData, 0, 0);
        CFRelease(resourceData);
      }

      CFRelease(DictionaryComponentURL);
    }

    *(this + 24) = 1;
    pthread_mutex_unlock((this + 32));
  }

  *(this + 40) = CFAbsoluteTimeGetCurrent();
  return *(this + 2);
}

uint64_t IDXDictionaryPackage::bundle(IDXDictionaryPackage *this)
{
  result = *(this + 31);
  if (!result)
  {
    pthread_mutex_lock(this + 4);
    if (!*(this + 31))
    {
      *(this + 31) = CFBundleCreate(0, *(this + 1));
    }

    pthread_mutex_unlock(this + 4);
    return *(this + 31);
  }

  return result;
}

BOOL IDXDictionaryPackage::validDictionary(CFDictionaryRef *this)
{
  v2 = IDXDictionaryPackage::version(this);
  result = 0;
  if (v2 != -1 && v2 <= 3)
  {
    return IDXDictionaryPackage::indexInfoList(this, 0) != 0;
  }

  return result;
}

uint64_t IDXDictionaryPackage::indexInfoList(IDXDictionaryPackage *this, int *a2)
{
  if ((*(this + 108) & 1) == 0 && IDXDictionaryPackage::properties(this))
  {
    pthread_mutex_lock((this + 112));
    if ((*(this + 108) & 1) == 0)
    {
      Value = CFDictionaryGetValue(*(this + 2), @"IDXDictionaryIndexes");
      if (Value)
      {
        v5 = Value;
        Count = CFArrayGetCount(Value);
        *(this + 26) = Count;
        *(this + 12) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
        if (*(this + 26) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
          v8 = CFDictionaryGetValue(ValueAtIndex, @"IDXIndexPath");
          valuePtr = 1;
          v9 = CFDictionaryGetValue(*(this + 2), @"IDXDictionaryVersion");
          if (v9)
          {
            CFNumberGetValue(v9, kCFNumberCFIndexType, &valuePtr);
          }

          if (valuePtr >= 3 && !CFStringHasPrefix(v8, @"Resources/"))
          {
            v8 = CFStringCreateWithFormat(0, 0, @"Resources/%@", v8);
          }

          CreateDictionaryComponentURL(*(this + 1), v8);
          operator new();
        }
      }

      *(this + 108) = 1;
    }

    pthread_mutex_unlock((this + 112));
  }

  if (a2)
  {
    *a2 = *(this + 26);
  }

  return *(this + 12);
}

IDXIndexInfo *IDXDictionaryPackage::retainIndex(IDXDictionaryPackage *this, const __CFString *a2)
{
  v4 = IDXDictionaryPackage::indexInfoList(this, 0);
  v5 = *(this + 26);
  if (a2)
  {
    if (v5 >= 1)
    {
      v6 = 0;
      while (1)
      {
        v7 = IDXIndexInfo::indexName(*v4);
        if (v7)
        {
          if (CFStringCompare(a2, v7, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }

        if (CFStringCompare(a2, *(*v4 + 4), 0) == kCFCompareEqualTo)
        {
          break;
        }

        ++v6;
        ++v4;
        if (v6 >= *(this + 26))
        {
          return 0;
        }
      }

      goto LABEL_10;
    }

    return 0;
  }

  if (v5 <= 0)
  {
    return 0;
  }

LABEL_10:
  v8 = *v4;
  if (v8)
  {
    IDXDictionaryPackage::retain(this);
  }

  return v8;
}

void IDXDictionaryPackage::retain(IDXDictionaryPackage *this)
{
  pthread_mutex_lock((this + 184));
  ++*(this + 44);
  pthread_mutex_unlock((this + 184));
  *(this + 40) = CFAbsoluteTimeGetCurrent();
}

void IDXDictionaryPackage::releaseIndex(IDXDictionaryPackage *this, IDXIndexInfo *a2)
{
  if (a2)
  {
    IDXDictionaryPackage::release(this);
  }
}

void IDXDictionaryPackage::release(IDXDictionaryPackage *this)
{
  pthread_mutex_lock((this + 184));
  v2 = *(this + 44);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 == v3)
  {
    *(this + 44) = v4;
  }

  pthread_mutex_unlock((this + 184));
  *(this + 40) = CFAbsoluteTimeGetCurrent();
}

__CFArray *DCSMACopyAndUpdateDictionaryCompatibilityVersionHistory()
{
  valuePtr = 5;
  v0 = DCSCopySharedPreferenceValue(@"DCSLastUsedAssetCompatibilityVersion", 0, 0);
  if (v0)
  {
    v1 = v0;
    CFNumberGetValue(v0, kCFNumberCFIndexType, &valuePtr);
    CFRelease(v1);
    if (valuePtr > 14)
    {
      return 0;
    }
  }

  v8 = 15;
  v4 = CFNumberCreate(0, kCFNumberCFIndexType, &v8);
  DCSUpdateSharedPreferenceValue(@"DCSLastUsedAssetCompatibilityVersion", v4);
  CFRelease(v4);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  for (i = valuePtr; ; i = v7)
  {
    v7 = i + 1;
    if (i >= v8)
    {
      break;
    }

    v6 = CFNumberCreate(0, kCFNumberCFIndexType, &v7);
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
  }

  return Mutable;
}

__CFString *DCSMAGetAssetLanguage(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"attributes");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFDictionaryGetValue(Value, @"Language");
  v4 = v3;
  if (v3)
  {
    if (CFStringCompare(v3, @"en", 1uLL) == kCFCompareEqualTo)
    {
      v5 = CFDictionaryGetValue(v2, @"Countries");
      if (v5)
      {
        v6 = v5;
        v8.length = CFArrayGetCount(v5);
        v8.location = 0;
        if (CFArrayGetFirstIndexOfValue(v6, v8, @"US") == -1)
        {
          return @"en_GB";
        }

        else
        {
          return @"en_US";
        }
      }
    }
  }

  return v4;
}

const __CFArray *DCSMAIsLanguageDictionaryAsset(const __CFDictionary *a1)
{
  if (DCSMAGetAssetLanguage(a1))
  {
    return 1;
  }

  Value = CFDictionaryGetValue(a1, @"attributes");
  result = CFDictionaryGetValue(Value, @"IndexLanguages");
  if (result)
  {
    v4 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v9.location = 0;
      v9.length = Count;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v9, @"*");
      return (v6 != 1 && FirstIndexOfValue == -1);
    }
  }

  return result;
}

uint64_t DCSMAPreferredOrderOfDictionaryAssetAttributesForLanguages(const void *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return -1;
  }

  Count = CFArrayGetCount(theArray);
  v5 = -1;
  if (a1)
  {
    v6 = Count;
    if (Count)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"attributes", a1);
      if (!DCSMAIsLanguageDictionaryAsset(Mutable))
      {
        Value = CFDictionaryGetValue(a1, @"DictionaryIdentifier");
        if (Value)
        {
          if (CFStringCompare(Value, @"com.apple.dictionary.AppleDictionary", 0))
          {
            v5 = -1;
          }

          else
          {
            v5 = 1000;
          }
        }

        goto LABEL_41;
      }

      v8 = DCSMAGetAssetLanguage(Mutable);
      if (!v8)
      {
        v14 = CFDictionaryGetValue(a1, @"IndexLanguages");
        if (v14)
        {
          v15 = v14;
          v16 = CFArrayGetCount(v14);
          if (v16 >= 1)
          {
            v17 = v16;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            v19 = 0;
            while (1)
            {
              v20 = CFArrayGetValueAtIndex(v15, v19);
              if (CompareLanguageCode(ValueAtIndex, v20, 0))
              {
                break;
              }

              if (v17 == ++v19)
              {
                goto LABEL_40;
              }
            }

            if (v6 < 2)
            {
LABEL_40:
              v5 = -1;
              goto LABEL_41;
            }

            v23 = 1;
            v24 = 1;
            while (2)
            {
              v25 = CFArrayGetValueAtIndex(theArray, v23);
              v26 = 0;
              while (1)
              {
                v27 = CFArrayGetValueAtIndex(v15, v26);
                if (CompareLanguageCode(v25, v27, 0))
                {
                  break;
                }

                if (v17 == ++v26)
                {
                  goto LABEL_38;
                }
              }

              if (++v24 == v17)
              {
                v5 = 3;
                goto LABEL_41;
              }

LABEL_38:
              ++v23;
              v5 = -1;
              if (v23 != v6)
              {
                continue;
              }

              break;
            }
          }
        }

        goto LABEL_41;
      }

      if (v6 >= 1)
      {
        v9 = v8;
        v5 = 0;
        v10 = 0;
        while (1)
        {
          v11 = CFArrayGetValueAtIndex(theArray, v10);
          if (CompareLanguageCode(v11, v9, 0))
          {
            break;
          }

          v12 = CompareLanguageCode(v11, @"hi", 0);
          if (!v10 && v12 && CompareLanguageCode(v9, @"en_GB", 0))
          {
            v5 = 10;
            break;
          }

          ++v10;
          v5 += 20;
          if (v6 == v10)
          {
            goto LABEL_40;
          }
        }

        v21 = CFDictionaryGetValue(a1, @"DictionaryType");
        if (!v21)
        {
LABEL_30:
          v5 += 4;
          goto LABEL_41;
        }

        v22 = v21;
        if (CFStringCompare(v21, @"Monolingual", 1uLL))
        {
          if (CFStringCompare(v22, @"Bilingual", 1uLL) == kCFCompareEqualTo)
          {
            v5 += 2;
            goto LABEL_41;
          }

          if (CFStringCompare(v22, @"Thesaurus", 1uLL) == kCFCompareEqualTo)
          {
            v5 |= 1uLL;
            goto LABEL_41;
          }

          goto LABEL_30;
        }
      }

LABEL_41:
      CFRelease(Mutable);
    }
  }

  return v5;
}

const __CFDictionary *DCSMAGetAssetObj(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"asset");
  }

  return result;
}

void DCSMAUpdateLinguisticData(uint64_t a1, const __CFArray *a2, int a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      AddLinguisticDataAssetion(a1, a2);
    }

    else
    {
      RemoveLinguisticDataAssetion(a1, a2);
    }
  }
}

void DCSMAUpdateLinguisticDataForDictionaryAssetAttribute(const __CFDictionary *a1, int a2)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"DictionaryIdentifier");
    if (Value)
    {
      v5 = Value;
      v6 = CFDictionaryGetValue(a1, @"IndexLanguages");
      if (v6)
      {
        v7 = v6;
        CFRetain(v6);
      }

      else
      {
        values = CFDictionaryGetValue(a1, @"Language");
        if (!values)
        {
          return;
        }

        v7 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
        if (!v7)
        {
          return;
        }
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"attributes", a1);
      if (DCSMAIsLanguageDictionaryAsset(Mutable))
      {
        if (a2)
        {
          AddLinguisticDataAssetion(v5, v7);
        }

        else
        {
          RemoveLinguisticDataAssetion(v5, v7);
        }
      }

      CFRelease(Mutable);
      CFRelease(v7);
    }
  }
}

id DCSMAIsInstalledAsset(const __CFDictionary *Value)
{
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"asset");
    v1 = vars8;
  }

  return [(__CFDictionary *)Value wasLocal];
}

id DCSMAIsDeletableAsset(const __CFDictionary *Value)
{
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"asset");
    v1 = vars8;
  }

  return [(__CFDictionary *)Value wasPurgeable];
}

const __CFArray *DCSDictionaryAssetCopyInstalledDictionaries()
{
  valuePtr[3] = *MEMORY[0x277D85DE8];
  if (_GetMobileAssetObjectInfo__DispatchOnceToken != -1)
  {
    DCSDictionaryAssetCopyInstalledDictionaries_cold_1();
  }

  v0 = _GetMobileAssetObjectInfo__ObjectInfoPtr;
  if (!_GetMobileAssetObjectInfo__ObjectInfoPtr)
  {
    goto LABEL_116;
  }

  v1 = objc_alloc_init(*_GetMobileAssetObjectInfo__ObjectInfoPtr);
  v2 = [objc_alloc(*(v0 + 32)) initWithType_];
  [v2 returnTypes_];
  [v2 setDoNotBlockBeforeFirstUnlock_];
  if ([v2 queryMetaDataSync])
  {
    v3 = 0;
    goto LABEL_113;
  }

  v4 = [v2 results];
  v5 = 0x27835A000uLL;
  v95 = v2;
  v96 = v1;
  if (v4)
  {
    v6 = v4;
    Count = CFArrayGetCount(v4);
    Mutable = CFDictionaryCreateMutable(0, Count, MEMORY[0x277CBF138], 0);
    v9 = Mutable;
    if (Count >= 1)
    {
      v103 = Mutable;
      v10 = 0;
      v104 = sel_wasLocal;
      v102 = sel_purgeSync;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
        v12 = [ValueAtIndex state];
        v13 = [ValueAtIndex attributes];
        if (v13)
        {
          v14 = v13;
          v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v16 = v15;
          if (ValueAtIndex)
          {
            CFDictionarySetValue(v15, @"asset", ValueAtIndex);
          }

          CFDictionarySetValue(v16, @"attributes", v14);
          if (v16)
          {
            Value = CFDictionaryGetValue(v16, @"asset");
          }

          else
          {
            Value = 0;
          }

          v18 = [Value v104];
          CFRelease(v16);
          if (v18)
          {
            v19 = CFDictionaryGetValue(v14, @"_CompatibilityVersion");
            valuePtr[0] = 0;
            if (v19)
            {
              CFNumberGetValue(v19, kCFNumberCFIndexType, valuePtr);
              if (valuePtr[0] == 15)
              {
                v20 = CFDictionaryGetValue(v14, @"DictionaryIdentifier");
                if (v20)
                {
                  v21 = v20;
                  v22 = CFDictionaryGetValue(v103, v20);
                  if (!v22)
                  {
                    goto LABEL_23;
                  }

                  v23 = v22;
                  AssetContentVersion = _GetAssetContentVersion(ValueAtIndex);
                  v25 = AssetContentVersion >= _GetAssetContentVersion(v23) && v12 != 3;
                  if (!v25)
                  {
                    v23 = ValueAtIndex;
                  }

                  [v23 v102];
                  v26 = _GetAssetContentVersion(v23);
                  DCSLog(16, @"Purged duplicated old dictionary %@ (content ver = %ld)", v21, v26);
                  if (v25)
                  {
LABEL_23:
                    CFDictionarySetValue(v103, v21, ValueAtIndex);
                  }
                }
              }
            }
          }
        }

        ++v10;
      }

      while (Count != v10);
      v5 = 0x27835A000;
      v9 = v103;
    }
  }

  else
  {
    v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  }

  v27 = CFDictionaryGetCount(v9);
  v28 = v27;
  if (v27 <= 0)
  {
    v31 = 0;
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v30 = (&v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    CFDictionaryGetKeysAndValues(v9, 0, v30);
    v31 = CFArrayCreate(0, v30, v28, 0);
  }

  CFRelease(v9);
  v101 = CFArrayCreateMutable(0, v28, MEMORY[0x277CBF128]);
  if (v28 >= 1)
  {
    v32 = 0;
    v33 = *(v5 + 3512);
    v102 = sel_initWithLocaleIdentifier_;
    v103 = sel_localizedStringForLanguage_context_;
    v104 = @"DCSDictionaryDescriptionLanguage";
    do
    {
      v34 = CFArrayGetValueAtIndex(v31, v32);
      v35 = [v34 v33];
      v36 = [v34 getLocalFileUrl];
      if (!v36)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          DCSDictionaryAssetCopyInstalledDictionaries_cold_3(&buf, v106);
        }

        goto LABEL_59;
      }

      v37 = DCSDictionaryCreateWithAssetAttributes(v35, v36);
      if (v37)
      {
        v38 = v37;
        v39 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(v39, @"dictionaryRef", v38);
        CFRelease(v38);
        v40 = CFDictionaryGetValue(v35, @"DictionaryPackageName");
        if (CFStringCompare(v40, @"Apple Dictionary.dictionary", 0) && CFStringCompare(v40, @"TTY Abbreviations Dictionary.dictionary", 0))
        {
          if (_GetMobileAssetObjectInfo__DispatchOnceToken != -1)
          {
            DCSDictionaryAssetCopyInstalledDictionaries_cold_2();
          }

          v41 = _GetMobileAssetObjectInfo__ObjectInfoPtr;
          if (_GetMobileAssetObjectInfo__ObjectInfoPtr)
          {
            if (*(_GetMobileAssetObjectInfo__ObjectInfoPtr + 64))
            {
              v42 = CFDictionaryGetValue(v35, @"IndexLanguages");
              if (v42)
              {
                v43 = v42;
                if (CFArrayGetCount(v42))
                {
                  v99 = CFArrayGetValueAtIndex(v43, 0);
                  v44 = CFArrayGetCount(v43);
                  v45 = 0;
                  if (v44 >= 2)
                  {
                    v45 = CFArrayGetValueAtIndex(v43, 1);
                  }

                  v100 = v45;
                  MainBundle = CFBundleGetMainBundle();
                  if (MainBundle)
                  {
                    v47 = CFBundleCopyBundleLocalizations(MainBundle);
                    if (v47)
                    {
                      v48 = v47;
                      if (CFArrayGetCount(v47) >= 1 && (v49 = CFArrayGetValueAtIndex(v48, 0)) != 0)
                      {
                        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, v49);
                        v51 = v48;
                        v52 = CanonicalLanguageIdentifierFromString;
                        CFRelease(v51);
                        if (v52)
                        {
                          v98 = objc_alloc_init(*v41);
                          v53 = objc_alloc(v41[8]);
                          v54 = [v53 v102];
                          CFRelease(v52);
                          v55 = [v54 v103];
                          if (v55)
                          {
                            Copy = CFStringCreateCopy(0, v55);
                          }

                          else
                          {
                            Copy = 0;
                          }

                          if (v100)
                          {
                            v99 = v54;
                            v62 = [v54 v103];
                            if (v62)
                            {
                              v63 = CFStringCreateCopy(0, v62);
                            }

                            else
                            {
                              v63 = 0;
                            }

                            v100 = CFStringCreateWithFormat(0, 0, @"%@-%@", Copy, v63);
                            CFRelease(Copy);
                            CFRelease(v63);
                            v54 = v99;
                            Copy = v100;
                          }

                          if (Copy)
                          {
                            goto LABEL_56;
                          }
                        }
                      }

                      else
                      {
                        CFRelease(v48);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        Name = DCSDictionaryGetName(v38);
        if (Name)
        {
          Copy = Name;
          CFRetain(Name);
LABEL_56:
          CFDictionarySetValue(v39, @"sortKey", Copy);
          CFRelease(Copy);
          v58 = CFDictionaryGetValue(v35, @"Language");
          if (v58 || (Languages = DCSDictionaryGetLanguages(v38)) != 0 && (v60 = Languages, CFArrayGetCount(Languages) >= 1) && (v61 = CFArrayGetValueAtIndex(v60, 0)) != 0 && (v58 = CFDictionaryGetValue(v61, v104)) != 0)
          {
            CFDictionarySetValue(v39, @"language", v58);
          }

          CFArrayAppendValue(v101, v39);
          CFRelease(v39);
        }
      }

LABEL_59:
      ++v32;
    }

    while (v28 != v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  v64 = v101;
  v112.length = CFArrayGetCount(v101);
  v112.location = 0;
  CFArraySortValues(v64, v112, _ComparatorForSortingDictionary, 0);
  v65 = MEMORY[0x277CBF128];
  v102 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v66 = CFArrayCreateMutable(0, 0, v65);
  v67 = CFArrayGetCount(v64);
  v68 = CFLocaleCopyPreferredLanguages();
  v69 = CFArrayGetCount(v68);
  if (v69 >= 1)
  {
    v70 = v69;
    v71 = 0;
    v72 = *MEMORY[0x277CBEED0];
    v103 = *MEMORY[0x277CBEED8];
    v98 = v69;
    v99 = v66;
    v97 = v68;
    do
    {
      v73 = CFArrayGetValueAtIndex(v68, v71);
      ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, v73);
      if (ComponentsFromLocaleIdentifier)
      {
        v75 = ComponentsFromLocaleIdentifier;
        v76 = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, v72);
        v104 = CFDictionaryGetValue(v75, v103);
        if (v76)
        {
          v100 = v75;
          if (v67 >= 1)
          {
            v77 = 0;
            while (1)
            {
              v78 = CFArrayGetValueAtIndex(v64, v77);
              v79 = CFDictionaryGetValue(v78, @"language");
              if (v79)
              {
                break;
              }

LABEL_94:
              if (v67 == ++v77)
              {
                goto LABEL_100;
              }
            }

            v80 = v79;
            v81 = CFLocaleCreateComponentsFromLocaleIdentifier(0, v79);
            v82 = CFDictionaryGetValue(v81, v72);
            if (v82)
            {
              if (CFStringCompare(v82, v76, 0) == kCFCompareEqualTo)
              {
                v83 = CFDictionaryGetValue(v78, @"dictionaryRef");
                v84 = CFDictionaryGetValue(v81, v103);
                v85 = v102;
                v113.length = CFArrayGetCount(v102);
                v113.location = 0;
                FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v85, v113, v83);
                v87 = FirstIndexOfValue;
                if (v84 && v104)
                {
                  v88 = CFStringCompare(v84, v104, 0);
                  v64 = v101;
                  if (v88 == kCFCompareEqualTo)
                  {
                    v89 = v99;
                    v114.length = CFArrayGetCount(v99);
                    v114.location = 0;
                    if (CFArrayContainsValue(v89, v114, v83))
                    {
                      v68 = v97;
                      if (v87 == -1)
                      {
                        goto LABEL_97;
                      }
                    }

                    else
                    {
                      CFArrayAppendValue(v89, v83);
                      v68 = v97;
                      if (v87 != -1)
                      {
                        CFArrayRemoveValueAtIndex(v102, v87);
                      }

LABEL_97:
                      CFArrayAppendValue(v102, v83);
                    }
                  }
                }

                else
                {
                  v64 = v101;
                  if (FirstIndexOfValue == -1)
                  {
                    goto LABEL_97;
                  }
                }
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              DCSDictionaryAssetCopyInstalledDictionaries_cold_4(v107, v80, &v108);
            }

            CFRelease(v81);
            goto LABEL_94;
          }

LABEL_100:
          CFRelease(v100);
          v70 = v98;
          v66 = v99;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            DCSDictionaryAssetCopyInstalledDictionaries_cold_5(v109, v73, &v110);
          }

          CFRelease(v75);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        DCSDictionaryAssetCopyInstalledDictionaries_cold_6(valuePtr, v73, (valuePtr + 4));
      }

      ++v71;
    }

    while (v71 != v70);
  }

  CFRelease(v68);
  CFRelease(v66);
  v3 = v102;
  if (v67 >= 1)
  {
    for (i = 0; i != v67; ++i)
    {
      v91 = CFArrayGetValueAtIndex(v64, i);
      v92 = CFDictionaryGetValue(v91, @"dictionaryRef");
      v115.length = CFArrayGetCount(v3);
      v115.location = 0;
      if (!CFArrayContainsValue(v3, v115, v92))
      {
        CFArrayAppendValue(v3, v92);
      }
    }
  }

  CFRelease(v64);
  v2 = v95;
  v1 = v96;
LABEL_113:

  if (v3 && !CFArrayGetCount(v3))
  {
    CFRelease(v3);
LABEL_116:
    v3 = 0;
  }

  v93 = *MEMORY[0x277D85DE8];
  return v3;
}

const __CFNumber *_GetAssetContentVersion(void *a1)
{
  valuePtr = 0;
  result = CFDictionaryGetValue([a1 attributes], @"_ContentVersion");
  if (result)
  {
    CFNumberGetValue(result, kCFNumberCFIndexType, &valuePtr);
    return valuePtr;
  }

  return result;
}

CFComparisonResult _ComparatorForSortingDictionary(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"sortKey");
  v4 = CFDictionaryGetValue(a2, @"sortKey");

  return CFStringCompare(Value, v4, 0x20uLL);
}

__CFString *DCSMACopyDiagnosticLog()
{
  v50 = *MEMORY[0x277D85DE8];
  if (_GetMobileAssetObjectInfo__DispatchOnceToken != -1)
  {
    DCSDictionaryAssetCopyInstalledDictionaries_cold_1();
  }

  v0 = _GetMobileAssetObjectInfo__ObjectInfoPtr;
  if (!_GetMobileAssetObjectInfo__ObjectInfoPtr)
  {
    result = 0;
    goto LABEL_61;
  }

  v1 = objc_alloc_init(*_GetMobileAssetObjectInfo__ObjectInfoPtr);
  v2 = [*(v0 + 56) processInfo];
  v3 = [v2 operatingSystemVersionString];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  _LogMessage(@"System version: %@ (internal = %d)", v3, has_internal_diagnostics);
  _LogMessage(@"Current dictionary asset compatibility version: %d", 15);
  v5 = [v2 processName];
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    MainBundle = CFBundleGetIdentifier(MainBundle);
  }

  v7 = @"unknown identifier";
  if (MainBundle)
  {
    v7 = MainBundle;
  }

  _LogMessage(@"Caller application: %@ (%@)", v5, v7);
  err = 0;
  v8 = (*(v0 + 72))(@"com.apple.MobileAsset.DictionaryServices.dictionary3iOS", &err);
  v9 = v8;
  if (v8)
  {
    v10 = CFURLCopyHostName(v8);
    if (v10)
    {
      v11 = v10;
      if (CFStringGetCString(v10, buffer, 512, 0x8000100u))
      {
        v12 = SCNetworkReachabilityCreateWithName(0, buffer);
        CFRelease(v11);
        if (!v12)
        {
          goto LABEL_40;
        }

        *buffer = 0;
        SCNetworkReachabilityGetFlags(v12, buffer);
        Mutable = CFStringCreateMutable(0, 0);
        v14 = Mutable;
        if (buffer[0])
        {
          v15 = @"T";
        }

        else
        {
          v15 = @"-";
        }

        CFStringAppend(Mutable, v15);
        if ((buffer[0] & 2) != 0)
        {
          v16 = @"R";
        }

        else
        {
          v16 = @"-";
        }

        CFStringAppend(v14, v16);
        if ((buffer[0] & 4) != 0)
        {
          v17 = @"C";
        }

        else
        {
          v17 = @"-";
        }

        CFStringAppend(v14, v17);
        if ((buffer[0] & 8) != 0)
        {
          v18 = @"A";
        }

        else
        {
          v18 = @"-";
        }

        CFStringAppend(v14, v18);
        if ((buffer[0] & 0x10) != 0)
        {
          v19 = @"I";
        }

        else
        {
          v19 = @"-";
        }

        CFStringAppend(v14, v19);
        if ((*buffer & 0x10000) != 0)
        {
          v20 = @"L";
        }

        else
        {
          v20 = @"-";
        }

        CFStringAppend(v14, v20);
        if ((*buffer & 0x20000) != 0)
        {
          v21 = @"D";
        }

        else
        {
          v21 = @"-";
        }

        CFStringAppend(v14, v21);
        if ((*buffer & 0x40000) != 0)
        {
          v22 = @"W";
        }

        else
        {
          v22 = @"-";
        }

        CFStringAppend(v14, v22);
        _LogMessage(@"Network reachability flags: %@", v14);
        CFRelease(v12);
        v23 = v14;
      }

      else
      {
        v23 = v11;
      }

      CFRelease(v23);
    }
  }

LABEL_40:
  if (err)
  {
    v25 = CFErrorCopyDescription(err);
    _LogMessage(@"Getting dictionary assets server failed due to error: %@", v25);
    goto LABEL_42;
  }

  _LogMessage(@"Dictionary assets server URL: %@", v9);
  *buffer = 0;
  v30 = _CheckURL(v9, buffer);
  v31 = *buffer;
  if (*buffer)
  {
    Copy = CFStringCreateWithFormat(0, 0, @"failed due to error: %@", *buffer);
    CFRelease(*buffer);
  }

  else
  {
    if (v30)
    {
      Copy = CFStringCreateCopy(0, @"OK");
      MutableCopy = CFStringCreateMutableCopy(0, 0, @"com.apple.MobileAsset.DictionaryServices.dictionary3iOS");
      v51.length = CFStringGetLength(MutableCopy);
      v51.location = 0;
      CFStringFindAndReplace(MutableCopy, @".", @"_", v51, 0);
      v35 = CFStringCreateWithFormat(0, 0, @"/%@/%@.xml", MutableCopy, MutableCopy);
      CFRelease(MutableCopy);
      v36 = CFURLCreateCopyAppendingPathComponent(0, v9, v35, 0);
      CFRelease(v35);
      v37 = _CheckURL(v36, buffer);
      if (*buffer)
      {
        v38 = CFStringCreateWithFormat(0, 0, @"failed due to error: %@", *buffer);
        CFRelease(*buffer);
      }

      else
      {
        if (v37)
        {
          v46 = @"OK";
        }

        else
        {
          v46 = @"not exist";
        }

        v38 = CFStringCreateCopy(0, v46);
      }

      CFRelease(v36);
      _LogMessage(@"Checking access to the server and directory...%@", Copy);
      _LogMessage(@"Checking XML file existence in the server directory...%@", v38);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    Copy = CFStringCreateCopy(0, @"failed since the directory doesn't exist");
  }

  _LogMessage(@"Checking access to the server and directory...%@", Copy);
  v38 = 0;
  if (Copy)
  {
LABEL_64:
    CFRelease(Copy);
  }

LABEL_65:
  if (v38)
  {
    CFRelease(v38);
  }

  if (!v31)
  {
    goto LABEL_43;
  }

  v25 = CFURLCreateWithString(0, @"https://www.apple.com", 0);
  _CheckURL(v25, buffer);
  if (*buffer)
  {
    _LogMessage(@"(accessing to www.apple.com was also failed due to error: %@)", *buffer);
    CFRelease(*buffer);
  }

  else
  {
    _LogMessage(@"(but accessing to www.apple.com was OK)", v47);
  }

LABEL_42:
  CFRelease(v25);
LABEL_43:
  v26 = [objc_alloc(*(v0 + 32)) initWithType_];
  [v26 returnTypes_];
  [v26 setDoNotBlockBeforeFirstUnlock_];
  v27 = [v26 queryMetaDataSync];
  v28 = [v26 results];
  v29 = v26;
  if (v27)
  {
    _LogMessage(@"Querying local dictionary assets (without network access)...failed due to error: %ld", v27);
  }

  else
  {
    _LogMessage(@"Querying local dictionary assets (without network access)...OK");
    if (v28)
    {
      Count = CFArrayGetCount(v28);
    }

    else
    {
      Count = 0;
    }

    _LogMessage(@"Local dictionary assets count: %ld", Count);
    _LogMessage(@"Local assets contains following NOAD dictionaries %@", @"{ ====");
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v40 = [CFArrayGetValueAtIndex(v28 i)];
        Value = CFDictionaryGetValue(v40, @"DictionaryIdentifier");
        if (Value && CFStringCompare(Value, @"com.apple.dictionary.NOAD", 0) == kCFCompareEqualTo)
        {
          v42 = CFDictionaryGetValue(v40, @"_CompatibilityVersion");
          v43 = CFDictionaryGetValue(v40, @"_ContentVersion");
          v44 = CFDictionaryGetValue(v40, @"_MasteredVersion");
          _LogMessage(@"    CompatibilityVersion:%@, ContentVersion:%@, MasteredVersion:%@", v42, v43, v44);
        }
      }
    }

    _LogMessage(@"%@", @"==== }");
  }

  result = _LogMessage(0);
LABEL_61:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *_LogMessage(CFStringRef format, ...)
{
  va_start(va, format);
  if (_LogMessage__OnceToken != -1)
  {
    _LogMessage_cold_1();
    if (format)
    {
      goto LABEL_3;
    }

LABEL_5:
    MutableCopy = CFStringCreateMutableCopy(0, 0, _LogMessage__LogString);
    v4 = _LogMessage__LogString;
    v11.length = CFStringGetLength(_LogMessage__LogString);
    v11.location = 0;
    CFStringDelete(v4, v11);
    v5 = CFDateFormatterCreate(0, 0, kCFDateFormatterShortStyle, kCFDateFormatterMediumStyle);
    Current = CFAbsoluteTimeGetCurrent();
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v5, Current);
    CFRelease(v5);
    v8 = CFStringCreateWithFormat(0, 0, @"// ==== DictionaryServices Diagnostic Log (%@) ==== //\n", StringWithAbsoluteTime);
    CFRelease(StringWithAbsoluteTime);
    CFStringInsert(MutableCopy, 0, v8);
    CFRelease(v8);
    return MutableCopy;
  }

  if (!format)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  CFStringAppend(_LogMessage__LogString, v2);
  CFStringAppend(_LogMessage__LogString, @"\n");
  CFRelease(v2);
  return 0;
}

BOOL _CheckURL(const __CFURL *a1, CFStringRef *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  Request = CFHTTPMessageCreateRequest(0, @"HEAD", a1, *MEMORY[0x277CBAD00]);
  v6 = CFReadStreamCreateForHTTPRequest(0, Request);
  v7 = v6;
  if (v6 && CFReadStreamOpen(v6))
  {
    v8 = Current + 10.0;
    ResponseStatusCode = 404;
    while (!CFReadStreamHasBytesAvailable(v7))
    {
      if (CFAbsoluteTimeGetCurrent() > v8)
      {
        goto LABEL_8;
      }
    }

    v11 = *MEMORY[0x277CBADF0];
    v12 = CFReadStreamCopyProperty(v7, *MEMORY[0x277CBADF0]);
    if (v12)
    {
      v13 = v12;
      ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v12);
      CFRelease(v13);
      if (CFReadStreamRead(v7, buffer, 1024) > 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (CFReadStreamRead(v7, buffer, 1024) > 0)
      {
        v14 = CFReadStreamCopyProperty(v7, v11);
        if (v14)
        {
          v15 = v14;
          ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v14);
          CFRelease(v15);
        }

        else
        {
          ResponseStatusCode = 404;
        }

        goto LABEL_21;
      }

      ResponseStatusCode = 404;
    }

LABEL_8:
    if (a2)
    {
      *a2 = _CreateErrorDescriptionFromStream(v7);
    }

LABEL_21:
    v10 = ResponseStatusCode != 404;
    CFReadStreamClose(v7);
  }

  else
  {
    v10 = 0;
    if (a2)
    {
      *a2 = _CreateErrorDescriptionFromStream(v7);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(Request);
  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

CFStringRef _CreateErrorDescriptionFromStream(__CFReadStream *a1)
{
  if (a1)
  {
    v2 = CFReadStreamCopyError(a1);
    if (v2)
    {
      v3 = v2;
      v4 = CFErrorCopyDescription(v2);
      CFRelease(v3);
      return v4;
    }

    Error = CFReadStreamGetError(a1);
    if (Error.domain == *MEMORY[0x277CBAD30] && (Error.error & 0xFFFFFFFC) == 4294967292)
    {
      result = CFStringCreateCopy(0, off_27835AAA0[Error.error & 3]);
      if (!Error.domain)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!Error.domain)
      {
        return result;
      }
    }

    if (!result)
    {
      return CFStringCreateWithFormat(0, 0, @"Stream error (domain=%d, error=%d)", Error.domain, *&Error.error);
    }
  }

  else
  {

    return CFStringCreateCopy(0, @"Could not create read stream");
  }

  return result;
}

void IDXIndexInfo::IDXIndexInfo(IDXIndexInfo *this, const __CFURL *a2, const __CFDictionary *a3, __CFBundle *a4)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 10) = -1;
  *(this + 11) = -1;
  *(this + 96) = 0;
  *(this + 100) = -1;
  *(this + 27) = -1;
  *(this + 160) = 0;
  pthread_mutex_init((this + 168), 0);
  pthread_mutex_init((this + 232), 0);
  *(this + 1) = CFRetain(a3);
  *(this + 4) = CFURLCopyLastPathComponent(a2);
  if (a4)
  {
    DictionaryBundleFromComponentURL = CFRetain(a4);
    *(this + 5) = DictionaryBundleFromComponentURL;
    if (DictionaryBundleFromComponentURL)
    {
      goto LABEL_6;
    }
  }

  else
  {
    DictionaryBundleFromComponentURL = *(this + 5);
    if (DictionaryBundleFromComponentURL)
    {
      goto LABEL_6;
    }
  }

  DictionaryBundleFromComponentURL = CreateDictionaryBundleFromComponentURL(a2);
  *(this + 5) = DictionaryBundleFromComponentURL;
  if (!DictionaryBundleFromComponentURL)
  {
    *this = CFURLCopyAbsoluteURL(a2);
    return;
  }

LABEL_6:
  v9 = CFBundleCopyResourceURL(DictionaryBundleFromComponentURL, *(this + 4), 0, 0);
  v10 = v9;
  if (!v9)
  {
    v9 = a2;
  }

  v11 = CFURLCopyAbsoluteURL(v9);
  *this = v11;
  v12 = CFURLCopyFileSystemPath(v11, kCFURLPOSIXPathStyle);
  *(this + 2) = v12;
  v13 = CFStringFind(v12, @"Contents/", 0);
  v14.length = CFStringGetLength(*(this + 2)) - (v13.location + v13.length);
  v14.location = v13.location + v13.length;
  *(this + 3) = CFStringCreateWithSubstring(0, *(this + 2), v14);
  if (v10)
  {
    CFRelease(v10);
  }
}

void IDXIndexInfo::~IDXIndexInfo(IDXIndexInfo *this)
{
  IDXIndexInfo::destructDataFields(this);
  if (*this)
  {
    CFRelease(*this);
  }

  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    free(v7);
  }

  pthread_mutex_destroy((this + 168));
  pthread_mutex_destroy((this + 232));
}

void IDXIndexInfo::destructDataFields(void **this)
{
  if (*(this + 160) == 1)
  {
    free(this[17]);
    free(this[18]);
    v3 = this[19];

    free(v3);
  }
}

const __CFDictionary *IDXIndexInfo::indexName(IDXIndexInfo *this)
{
  result = *(this + 7);
  if (!result)
  {
    result = *(this + 1);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IDXIndexName");
      *(this + 7) = result;
    }
  }

  return result;
}

const __CFDictionary *IDXIndexInfo::relativePath(IDXIndexInfo *this)
{
  result = *(this + 3);
  if (!result)
  {
    result = *(this + 1);
    if (result)
    {
      Value = CFDictionaryGetValue(result, @"IDXIndexPath");
      *(this + 3) = Value;
      CFRetain(Value);
      return *(this + 3);
    }
  }

  return result;
}

CFStringRef IDXIndexInfo::fullPath(IDXIndexInfo *this)
{
  result = *(this + 2);
  if (!result)
  {
    if (*(this + 1))
    {
      result = CFURLCopyFileSystemPath(*this, kCFURLPOSIXPathStyle);
      *(this + 2) = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IDXIndexInfo::POSIXPath(IDXIndexInfo *this)
{
  result = *(this + 6);
  if (!result)
  {
    if (*(this + 1))
    {
      v3 = *(this + 2);
      if (!v3)
      {
        v3 = CFURLCopyFileSystemPath(*this, kCFURLPOSIXPathStyle);
        *(this + 2) = v3;
      }

      Length = CFStringGetLength(v3);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      *(this + 6) = v6;
      v7 = *(this + 2);
      if (!v7)
      {
        if (*(this + 1))
        {
          v7 = CFURLCopyFileSystemPath(*this, kCFURLPOSIXPathStyle);
          *(this + 2) = v7;
          v6 = *(this + 6);
        }

        else
        {
          v7 = 0;
        }
      }

      CFStringGetFileSystemRepresentation(v7, v6, MaximumSizeForEncoding);
      return *(this + 6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *IDXIndexInfo::accessMethodName(IDXIndexInfo *this)
{
  result = *(this + 8);
  if (!result)
  {
    result = *(this + 1);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IDXIndexAccessMethod");
      *(this + 8) = result;
    }
  }

  return result;
}

const __CFDictionary *IDXIndexInfo::keyMatchingMethods(IDXIndexInfo *this)
{
  result = *(this + 9);
  if (!result)
  {
    result = *(this + 1);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IDXIndexKeyMatchingMethods");
      *(this + 9) = result;
    }
  }

  return result;
}

uint64_t IDXIndexInfo::dataSizeLength(IDXIndexInfo *this)
{
  v1 = this + 80;
  if (*(this + 10) == -1)
  {
    v4 = *(this + 1);
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"IDXIndexDataSizeLength");
      if (Value && CFNumberGetValue(Value, kCFNumberCFIndexType, v1))
      {
        if (*v1)
        {
          return *v1;
        }
      }

      else
      {
        *v1 = 0;
      }

      IDXIndexInfo::dataFields(this);
      if (*(this + 16) == 1 && !*(this + 14) && !*(this + 15))
      {
        *(this + 10) = *(*(this + 19) + 8);
      }
    }
  }

  return *v1;
}

uint64_t IDXIndexInfo::dataFields(IDXIndexInfo *this)
{
  if ((*(this + 160) & 1) == 0 && *(this + 1))
  {
    pthread_mutex_lock((this + 168));
    if ((*(this + 160) & 1) == 0)
    {
      IDXIndexInfo::constructDataFields(this);
      *(this + 160) = 1;
    }

    pthread_mutex_unlock((this + 168));
  }

  return this + 112;
}

uint64_t IDXIndexInfo::fixedDataSize(IDXIndexInfo *this)
{
  if ((*(this + 96) & 1) == 0)
  {
    IDXIndexInfo::dataFields(this);
    pthread_mutex_lock((this + 168));
    if ((*(this + 96) & 1) == 0)
    {
      *(this + 11) = 0;
      if (!*(this + 16))
      {
        v2 = *(this + 14);
        if (v2 < 1)
        {
          v3 = 0;
        }

        else
        {
          v3 = 0;
          v4 = (*(this + 17) + 16);
          do
          {
            v5 = *v4;
            v4 += 3;
            v3 += v5;
            --v2;
          }

          while (v2);
          *(this + 11) = v3;
        }

        v6 = *(this + 15);
        if (v6 >= 1)
        {
          v7 = (*(this + 18) + 8);
          do
          {
            v8 = *v7;
            v7 += 2;
            v3 += v8;
            --v6;
          }

          while (v6);
          *(this + 11) = v3;
        }
      }
    }

    *(this + 96) = 1;
    pthread_mutex_unlock((this + 168));
  }

  return *(this + 11);
}

BOOL IDXIndexInfo::writable(IDXIndexInfo *this)
{
  v1 = *(this + 25);
  if (v1 == -1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"IDXIndexWritable");
      v5 = CFBooleanGetValue(Value);
      *(this + 25) = v5;
      if (v5)
      {
        v6 = IDXIndexInfo::POSIXPath(this);
        if (access(v6, 0))
        {
          v1 = *(this + 25);
        }

        else
        {
          v7 = IDXIndexInfo::POSIXPath(this);
          v1 = access(v7, 2) == 0;
          *(this + 25) = v1;
        }
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = -1;
    }
  }

  return v1 != 0;
}

BOOL IDXIndexInfo::supportDataID(IDXIndexInfo *this)
{
  v2 = *(this + 26);
  if (v2 == -1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"IDXIndexSupportDataID");
      v2 = CFBooleanGetValue(Value);
      *(this + 26) = v2;
    }

    else
    {
      v2 = -1;
    }
  }

  return v2 != 0;
}

BOOL IDXIndexInfo::bigEndian(IDXIndexInfo *this)
{
  v2 = *(this + 27);
  if (v2 == -1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"IDXIndexBigEndian");
      v2 = CFBooleanGetValue(Value);
      *(this + 27) = v2;
    }

    else
    {
      v2 = -1;
    }
  }

  return v2 != 0;
}

const __CFDictionary *IDXIndexInfo::optionalProperty(IDXIndexInfo *this, const __CFString *a2)
{
  result = *(this + 1);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

uint64_t IDXIndexInfo::constructDataFields(CFDictionaryRef *this)
{
  result = CFDictionaryGetValue(this[1], @"IDXIndexDataFields");
  if (!result)
  {
    return result;
  }

  v3 = result;
  Value = CFDictionaryGetValue(result, @"IDXExternalDataFields");
  if (!Value)
  {
    this[14] = 0;
    goto LABEL_9;
  }

  v5 = Value;
  Count = CFArrayGetCount(Value);
  this[14] = Count;
  if (!Count)
  {
LABEL_9:
    this[17] = 0;
    goto LABEL_10;
  }

  v7 = Count;
  this[17] = malloc_type_malloc(24 * Count, 0x106004033AEC38CuLL);
  if (v7 >= 1)
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      *(this[17] + v8) = CFDictionaryGetValue(ValueAtIndex, @"IDXDataFieldName");
      *(this[17] + v8 + 8) = CFDictionaryGetValue(ValueAtIndex, @"IDXIndexPath");
      v11 = CFDictionaryGetValue(ValueAtIndex, @"IDXDataSize");
      CFNumberGetValue(v11, kCFNumberCFIndexType, this[17] + v8 + 16);
      v8 += 24;
    }
  }

LABEL_10:
  v12 = CFDictionaryGetValue(v3, @"IDXFixedDataFields");
  if (!v12)
  {
    this[15] = 0;
    goto LABEL_17;
  }

  v13 = v12;
  v14 = CFArrayGetCount(v12);
  this[15] = v14;
  if (!v14)
  {
LABEL_17:
    this[18] = 0;
    goto LABEL_18;
  }

  v15 = v14;
  this[18] = malloc_type_malloc(16 * v14, 0x1060040C2E02434uLL);
  if (v15 >= 1)
  {
    v16 = 0;
    for (j = 0; j != v15; ++j)
    {
      v18 = CFArrayGetValueAtIndex(v13, j);
      *(this[18] + v16) = CFDictionaryGetValue(v18, @"IDXDataFieldName");
      v19 = CFDictionaryGetValue(v18, @"IDXDataSize");
      CFNumberGetValue(v19, kCFNumberCFIndexType, this[18] + v16 + 8);
      v16 += 16;
    }
  }

LABEL_18:
  result = CFDictionaryGetValue(v3, @"IDXVariableDataFields");
  if (!result)
  {
    this[16] = 0;
    goto LABEL_25;
  }

  v20 = result;
  result = CFArrayGetCount(result);
  this[16] = result;
  if (!result)
  {
LABEL_25:
    this[19] = 0;
    return result;
  }

  v21 = result;
  result = malloc_type_malloc(16 * result, 0x1060040C2E02434uLL);
  this[19] = result;
  if (v21 >= 1)
  {
    v22 = 0;
    for (k = 0; k != v21; ++k)
    {
      v24 = CFArrayGetValueAtIndex(v20, k);
      *(this[19] + v22) = CFDictionaryGetValue(v24, @"IDXDataFieldName");
      v25 = CFDictionaryGetValue(v24, @"IDXDataSizeLength");
      result = CFNumberGetValue(v25, kCFNumberCFIndexType, this[19] + v22 + 8);
      v22 += 16;
    }
  }

  return result;
}

uint64_t IDXIndexInfo::openCount(IDXIndexInfo *this)
{
  if (!*(this + 2))
  {
    return 0;
  }

  v2 = _allOpenedIndexes;
  pthread_rwlock_rdlock((_allOpenedIndexes + 16));
  Value = CFDictionaryGetValue(*(_allOpenedIndexes + 8), *(this + 2));
  if (Value)
  {
    v4 = *Value;
  }

  else
  {
    v4 = 0;
  }

  pthread_rwlock_unlock((v2 + 16));
  return v4;
}

uint64_t IDXIndexInfo::opened(IDXIndexInfo *this, void *a2)
{
  if ((_initedAllOpenedIndexes & 1) == 0)
  {
    pthread_once(&IDXIndexInfo::opened(void *)::once_control, _InitializeOpenedIndexes);
  }

  if (!*(this + 2))
  {
    if (!*(this + 1))
    {
      return 0;
    }

    v8 = CFURLCopyFileSystemPath(*this, kCFURLPOSIXPathStyle);
    *(this + 2) = v8;
    if (!v8)
    {
      return 0;
    }
  }

  v4 = _allOpenedIndexes;
  pthread_rwlock_wrlock((_allOpenedIndexes + 16));
  v5 = *(_allOpenedIndexes + 8);
  Value = CFDictionaryGetValue(v5, *(this + 2));
  if (!Value)
  {
    Value = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  }

  ++*Value;
  Value[1] = a2;
  CFDictionarySetValue(v5, *(this + 2), Value);
  v7 = *Value;
  pthread_rwlock_unlock((v4 + 16));
  return v7;
}

unsigned int *IDXIndexInfo::closed(IDXIndexInfo *this)
{
  if (!*(this + 2))
  {
    return 0;
  }

  v2 = _allOpenedIndexes;
  pthread_rwlock_wrlock((_allOpenedIndexes + 16));
  v3 = *(_allOpenedIndexes + 8);
  Value = CFDictionaryGetValue(v3, *(this + 2));
  v5 = Value;
  if (Value)
  {
    v6 = *(this + 2);
    if ((*Value)-- == 1)
    {
      CFDictionaryRemoveValue(v3, v6);
      free(v5);
      v5 = 0;
    }

    else
    {
      CFDictionarySetValue(v3, v6, Value);
      v5 = *v5;
    }
  }

  pthread_rwlock_unlock((v2 + 16));
  return v5;
}

uint64_t IDXIndexInfo::accessContextData(IDXIndexInfo *this, uint64_t *a2)
{
  v3 = _allOpenedIndexes;
  if (*(this + 2))
  {
    v4 = _allOpenedIndexes == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!a2)
    {
      return 0;
    }

    Value = 0;
    goto LABEL_11;
  }

  pthread_rwlock_rdlock((_allOpenedIndexes + 16));
  Value = CFDictionaryGetValue(*(_allOpenedIndexes + 8), *(this + 2));
  pthread_rwlock_unlock((v3 + 16));
  if (a2)
  {
    if (Value)
    {
      v7 = *Value;
LABEL_12:
      *a2 = v7;
      goto LABEL_13;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

LABEL_13:
  if (Value)
  {
    return Value[1];
  }

  return 0;
}

__CFArray *DCSMACreateLocalDictionaryAssets_XPC()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, "command", "local_dictionary_assets");
  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMACreateLocalDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection && (v1 = xpc_connection_send_message_with_reply_sync(DCSXPCConnection__ServiceConnection, v0)) != 0)
  {
    v2 = v1;
    value = xpc_dictionary_get_value(v1, "result");
    Mutable = value;
    if (value)
    {
      length = xpc_data_get_length(value);
      if (length >= 1 && (v6 = length, bytes_ptr = xpc_data_get_bytes_ptr(Mutable), v8 = CFDataCreate(0, bytes_ptr, v6), v9 = CFPropertyListCreateWithData(0, v8, 0, 0, 0), CFRelease(v8), v9) && (Count = CFArrayGetCount(v9), Count >= 1))
      {
        v11 = Count;
        Mutable = 0;
        v12 = 0;
        v13 = MEMORY[0x277CBF128];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ValueAtIndex);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, v13);
          }

          CFArrayAppendValue(Mutable, MutableCopy);
          CFRelease(MutableCopy);
          ++v12;
        }

        while (v11 != v12);
      }

      else
      {
        Mutable = 0;
      }
    }

    xpc_release(v2);
  }

  else
  {
    Mutable = 0;
  }

  xpc_release(v0);
  return Mutable;
}

void DCSMACreateDictionaryAssetsAsync_XPC(uint64_t a1)
{
  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMACreateLocalDictionaryAssets_XPC_cold_1();
  }

  v2 = DCSXPCConnection__ServiceConnection;
  if (DCSXPCConnection__ServiceConnection)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = v3;
    if (a1)
    {
      xpc_dictionary_set_string(v3, "command", "server_dictionary_assets");
      if (DCSXPCQueue__OnceToken != -1)
      {
        DCSMACreateDictionaryAssetsAsync_XPC_cold_2();
      }

      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __DCSMACreateDictionaryAssetsAsync_XPC_block_invoke;
      handler[3] = &unk_27835AAC8;
      handler[4] = a1;
      xpc_connection_send_message_with_reply(v2, v4, DCSXPCQueue__XPCQueue, handler);
    }

    else
    {
      xpc_dictionary_set_string(v3, "command", "server_dictionary_assets_noreply");
      xpc_connection_send_message(v2, v4);
    }

    xpc_release(v4);
  }

  else if (a1)
  {
    v5 = *(a1 + 16);

    v5(a1, 0);
  }
}

void DCSMADownloadDictionaryAsset_XPC(const __CFDictionary *a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "download_dictionary_asset");
  _SetDictionaryAssetIDToMessage(v4, a1);
  if (a2)
  {
    xpc_dictionary_set_BOOL(v4, "userInitiatedDownload", 1);
  }

  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMACreateLocalDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection)
  {
    xpc_connection_send_message(DCSXPCConnection__ServiceConnection, v4);
  }

  xpc_release(v4);
}

void _SetDictionaryAssetIDToMessage(void *a1, const __CFDictionary *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = DCSMAGetAssetAttributes(a2);
  Value = CFDictionaryGetValue(v3, @"DictionaryIdentifier");
  if (!Value)
  {
    Value = CFDictionaryGetValue(v3, @"DictionaryPackageName");
  }

  CFStringGetCString(Value, buffer, 255, 0x8000100u);
  xpc_dictionary_set_string(a1, "dictionaryID", buffer);
  v5 = *MEMORY[0x277D85DE8];
}

void DCSMAPurgeDictionaryAsset_XPC(const __CFDictionary *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "command", "purge_dictionary_asset");
  _SetDictionaryAssetIDToMessage(v2, a1);
  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMACreateLocalDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection)
  {
    xpc_connection_send_message(DCSXPCConnection__ServiceConnection, v2);
  }

  xpc_release(v2);
}

CFURLRef DCSMACreateAssetInstalledURL_XPC(const __CFDictionary *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "command", "copy_path_dictionary_asset");
  _SetDictionaryAssetIDToMessage(v2, a1);
  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMACreateLocalDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection && (v3 = xpc_connection_send_message_with_reply_sync(DCSXPCConnection__ServiceConnection, v2)) != 0)
  {
    v4 = v3;
    value = xpc_dictionary_get_value(v3, "result");
    v6 = value;
    if (value)
    {
      if (object_getClass(value) == MEMORY[0x277D864C0])
      {
        string_ptr = xpc_string_get_string_ptr(v6);
        v8 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
        v6 = CFURLCreateWithFileSystemPath(0, v8, kCFURLPOSIXPathStyle, 1u);
        CFRelease(v8);
      }

      else
      {
        v6 = 0;
      }
    }

    xpc_release(v4);
  }

  else
  {
    v6 = 0;
  }

  xpc_release(v2);
  return v6;
}

int64_t DCSMAGetAssetState_XPC(const __CFDictionary *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "command", "get_state_dictionary_asset");
  _SetDictionaryAssetIDToMessage(v2, a1);
  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMACreateLocalDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection && (v3 = xpc_connection_send_message_with_reply_sync(DCSXPCConnection__ServiceConnection, v2)) != 0)
  {
    v4 = v3;
    int64 = xpc_dictionary_get_int64(v3, "result");
    xpc_release(v4);
  }

  else
  {
    int64 = 1;
  }

  xpc_release(v2);
  return int64;
}

void DCSMAPrepareDefaultDictionaryAssets_XPC(const __CFArray *a1, const __CFArray *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "prepare_default_assets");
  if (a1)
  {
    a2 = a1;
  }

  Count = CFArrayGetCount(a2);
  v6 = xpc_array_create(0, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      CFStringGetCString(ValueAtIndex, buffer, 255, 0x8000100u);
      xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, buffer);
    }
  }

  if (a1)
  {
    v9 = "dictionaryIDs";
  }

  else
  {
    v9 = "languageIDs";
  }

  xpc_dictionary_set_value(v4, v9, v6);
  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMAPrepareDefaultDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection)
  {
    xpc_connection_send_message(DCSXPCConnection__ServiceConnection, v4);
  }

  xpc_release(v4);
  v10 = *MEMORY[0x277D85DE8];
}

void *DCSCopySharedPreferenceValue(const __CFString *a1, uint64_t a2, int64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "command", "read_preference");
  CFStringGetCString(a1, buffer, 255, 0x8000100u);
  xpc_dictionary_set_string(v6, "key", buffer);
  xpc_dictionary_set_uint64(v6, "currentVersion", a2);
  xpc_dictionary_set_BOOL(v6, "checkVersion", a3 != 0);
  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMAPrepareDefaultDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection && (v7 = xpc_connection_send_message_with_reply_sync(DCSXPCConnection__ServiceConnection, v6)) != 0)
  {
    v8 = v7;
    if (a3)
    {
      value = xpc_dictionary_get_value(v7, "savedVersion");
      if (value)
      {
        *a3 = xpc_int64_get_value(value);
      }
    }

    v10 = xpc_dictionary_get_value(v8, "value");
    v11 = v10;
    if (v10)
    {
      length = xpc_data_get_length(v10);
      if (length < 1)
      {
        v11 = 0;
      }

      else
      {
        v13 = length;
        bytes_ptr = xpc_data_get_bytes_ptr(v11);
        v15 = CFDataCreate(0, bytes_ptr, v13);
        v11 = CFPropertyListCreateWithData(0, v15, 0, 0, 0);
        CFRelease(v15);
      }
    }

    xpc_release(v8);
  }

  else
  {
    v11 = 0;
  }

  xpc_release(v6);
  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

void DCSUpdateSharedPreferenceValue(const __CFString *a1, const void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "update_preference");
  if (a1)
  {
    CFStringGetCString(a1, buffer, 255, 0x8000100u);
    xpc_dictionary_set_string(v4, "key", buffer);
    Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v6 = Data;
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(v6);
      xpc_dictionary_set_data(v4, "value", BytePtr, Length);
      CFRelease(v6);
    }
  }

  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMAPrepareDefaultDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection)
  {
    xpc_connection_send_message(DCSXPCConnection__ServiceConnection, v4);
  }

  xpc_release(v4);
  v9 = *MEMORY[0x277D85DE8];
}

void DCSSynchronizeSharedPreference()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, "command", "sync_preference");
  if (DCSXPCConnection__OnceToken != -1)
  {
    DCSMACreateLocalDictionaryAssets_XPC_cold_1();
  }

  if (DCSXPCConnection__ServiceConnection)
  {
    xpc_connection_send_message(DCSXPCConnection__ServiceConnection, v0);
  }

  xpc_release(v0);
}

void __DCSXPCConnection_block_invoke()
{
  v0 = xpc_connection_create("com.apple.DictionaryServiceHelper", 0);
  DCSXPCConnection__ServiceConnection = v0;
  if (v0)
  {
    xpc_connection_set_event_handler(v0, &__block_literal_global_35);
    v1 = DCSXPCConnection__ServiceConnection;
    if (DCSXPCConnection__ServiceConnection)
    {

      xpc_connection_resume(v1);
    }
  }
}

dispatch_queue_t __DCSXPCQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.DictionaryServiceHelper_queue", 0);
  DCSXPCQueue__XPCQueue = result;
  return result;
}

void IDXPlugInAccessMethod::IDXPlugInAccessMethod(IDXPlugInAccessMethod *this, const __CFURL *a2, const __CFUUID *a3, CFTypeRef cf)
{
  *this = &unk_282F95F88;
  v7 = CFRetain(cf);
  *this = &unk_282F96350;
  *(this + 1) = v7;
  *(this + 12) = 0;
  *(this + 2) = CFPlugInCreate(0, a2);
  *(this + 3) = CFRetain(a3);
  pthread_mutex_init((this + 32), 0);
}

void IDXPlugInAccessMethod::~IDXPlugInAccessMethod(IDXPlugInAccessMethod *this)
{
  *this = &unk_282F96350;
  v2 = *(this + 12);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  pthread_mutex_destroy((this + 32));

  IDXAccessMethod::~IDXAccessMethod(this);
}

{
  IDXPlugInAccessMethod::~IDXPlugInAccessMethod(this);

  JUMPOUT(0x223D5E5E0);
}

BOOL IDXPlugInAccessMethod::queryInterface(IDXPlugInAccessMethod *this, CFUUIDBytes a2, void **a3)
{
  v4 = *&a2.byte8;
  v5 = *&a2.byte0;
  v6 = IDXPlugInAccessMethod::pluginInstance(this);
  v7 = v6 != 0;
  if (!v6)
  {
    if (!a3)
    {
      return 0;
    }

    v8 = 0;
    goto LABEL_7;
  }

  v8 = v6;
  *&v14.byte0 = v5;
  *&v14.byte8 = v4;
  v9 = CFUUIDCreateFromUUIDBytes(0, v14);
  v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xA7u, 0xE7u, 0x9Eu, 0x44u, 0xCAu, 0x66u, 0x4Eu, 0xB0u, 0x88u, 0x56u, 0x8Cu, 0xDCu, 0x83u, 0x62u, 0x1Au, 0x80u);
  v11 = CFEqual(v9, v10);
  v12 = v11 != 0;
  CFRelease(v9);
  if (a3 && v11)
  {
LABEL_7:
    *a3 = v8;
    return v7;
  }

  return v12;
}

uint64_t IDXPlugInAccessMethod::pluginInstance(IDXPlugInAccessMethod *this)
{
  v3 = this + 96;
  result = *(this + 12);
  if (!result)
  {
    pthread_mutex_lock((this + 32));
    if (!*(this + 12))
    {
      v4 = *(this + 3);
      v5 = CFUUIDGetConstantUUIDWithBytes(0, 0x80u, 0x60u, 0x58u, 5u, 0x30u, 0x24u, 0x40u, 0x39u, 0xA3u, 0x62u, 0x10u, 0x4Cu, 0xEEu, 0x36u, 0x19u, 0x62u);
      v6 = CFPlugInInstanceCreate(0, v4, v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(*v6 + 8);
        v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xA7u, 0xE7u, 0x9Eu, 0x44u, 0xCAu, 0x66u, 0x4Eu, 0xB0u, 0x88u, 0x56u, 0x8Cu, 0xDCu, 0x83u, 0x62u, 0x1Au, 0x80u);
        v10 = CFUUIDGetUUIDBytes(v9);
        v8(v7, *&v10.byte0, *&v10.byte8, v3);
        (*(*v7 + 24))(v7);
      }
    }

    pthread_mutex_unlock((this + 32));
    return *v3;
  }

  return result;
}

uint64_t IDXPlugInAccessMethod::retain(IDXPlugInAccessMethod *this)
{
  result = IDXPlugInAccessMethod::pluginInstance(this);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

uint64_t IDXPlugInAccessMethod::release(IDXPlugInAccessMethod *this)
{
  result = IDXPlugInAccessMethod::pluginInstance(this);
  if (result)
  {
    v2 = *(*result + 24);

    return v2();
  }

  return result;
}

uint64_t IDXPlugInAccessMethod::openIndexFile(IDXPlugInAccessMethod *this, const __CFURL *a2, const __CFDictionary *a3)
{
  result = IDXPlugInAccessMethod::pluginInstance(this);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

uint64_t IDXPlugInAccessMethod::closeIndexFile(IDXPlugInAccessMethod *this, void *a2)
{
  v2 = *(*IDXPlugInAccessMethod::pluginInstance(this) + 40);

  return v2();
}

uint64_t IDXPlugInAccessMethod::getMatchDataPtr(IDXPlugInAccessMethod *this, void *a2, uint64_t a3, const unsigned __int8 **a4, uint64_t *a5)
{
  v5 = *(*IDXPlugInAccessMethod::pluginInstance(this) + 56);

  return v5();
}

uint64_t IDXPlugInAccessMethod::getMatchData(IDXPlugInAccessMethod *this, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, CFRange **a6, uint64_t *a7)
{
  v7 = *(*IDXPlugInAccessMethod::pluginInstance(this) + 64);

  return v7();
}

uint64_t IDXPlugInAccessMethod::getDataPtrByID(IDXPlugInAccessMethod *this, void *a2, unint64_t a3, uint64_t *a4)
{
  v4 = *(*IDXPlugInAccessMethod::pluginInstance(this) + 80);

  return v4();
}

uint64_t IDXPlugInAccessMethod::getDataByID(IDXPlugInAccessMethod *this, void *a2, unint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v5 = *(*IDXPlugInAccessMethod::pluginInstance(this) + 88);

  return v5();
}

uint64_t IDXPlugInAccessMethod::createIndexFile(IDXPlugInAccessMethod *this, const __CFURL *a2, const __CFDictionary *a3)
{
  result = IDXPlugInAccessMethod::pluginInstance(this);
  if (result)
  {
    return (*(*result + 128))(result, a2, a3) != 0;
  }

  return result;
}

uint64_t SyncSingleton<IDXDictionaryManager>::instance()
{
  if ((SyncSingleton<IDXDictionaryManager>::_instantiated & 1) == 0)
  {
    pthread_mutex_lock(&SyncSingleton<IDXDictionaryManager>::_mutex);
    if ((SyncSingleton<IDXDictionaryManager>::_instantiated & 1) == 0)
    {
      operator new();
    }

    pthread_mutex_unlock(&SyncSingleton<IDXDictionaryManager>::_mutex);
  }

  return SyncSingleton<IDXDictionaryManager>::_instance;
}

uint64_t SyncSingleton<IDXAccessMethodManager>::instance()
{
  if ((SyncSingleton<IDXAccessMethodManager>::_instantiated & 1) == 0)
  {
    pthread_mutex_lock(&SyncSingleton<IDXAccessMethodManager>::_mutex);
    if ((SyncSingleton<IDXAccessMethodManager>::_instantiated & 1) == 0)
    {
      operator new();
    }

    pthread_mutex_unlock(&SyncSingleton<IDXAccessMethodManager>::_mutex);
  }

  return SyncSingleton<IDXAccessMethodManager>::_instance;
}

uint64_t IDXSetSearchString(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v8 = 0;
  v5 = CreateCharactersFromString(a2, 0x100u, &v8);
  v6 = (*(**(a1 + 16) + 64))(*(a1 + 16), *(a1 + 40), v5, v8, a3);
  if (v5)
  {
    free(v5);
  }

  return v6;
}

void IDXPerformSearch(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = (*(**(a1 + 16) + 112))(*(a1 + 16), *(a1 + 40));
  if (v6)
  {
    memset(v21, 0, 512);
    v7 = (*(**(a1 + 16) + 72))(*(a1 + 16), *(a1 + 40), 128, v21, v20);
    if (v7)
    {
      v8 = v7;
      do
      {
        if (v8 >= 1)
        {
          v9 = v20;
          v10 = v21;
          do
          {
            v12 = *v10++;
            v11 = v12;
            v13 = *v9++;
            a2(a1, v11, v13, 0, a3);
            --v8;
          }

          while (v8);
        }

        v8 = (*(**(a1 + 16) + 72))(*(a1 + 16), *(a1 + 40), 128, v21, v20);
      }

      while (v8);
    }
  }

  else
  {
    *&v21[0] = 0x20000;
    v14 = 1;
    do
    {
      MEMORY[0x28223BE20](v6);
      v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!v14)
      {
        v16 = malloc_type_malloc(*&v21[0], 0xF141F7F8uLL);
      }

      v20[0] = 0;
      while (1)
      {
        v6 = (*(**(a1 + 16) + 80))(*(a1 + 16), *(a1 + 40), 0, *&v21[0], v16, v20, v21);
        if (!v6)
        {
          break;
        }

        v17 = v6;
        if (v6 >= 1)
        {
          v18 = 0;
          do
          {
            a2(a1, &v16[*(v20[0] + v18)], *(v20[0] + v18 + 8), 1, a3);
            v18 += 16;
            --v17;
          }

          while (v17);
        }
      }

      if (!v14)
      {
        free(v16);
      }

      v14 = *&v21[0] <= 0x20000;
    }

    while (*&v21[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t IDXGetMatchData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a6)
  {
    *a6 = a3;
  }

  return (*(**(a1 + 16) + 80))(*(a1 + 16), *(a1 + 40), a2, a3, a4, a5);
}

CFIndex IDXSetRequestFields(uint64_t a1, const __CFArray *a2)
{
  v40 = *(a1 + 32);
  v3 = IDXIndexInfo::dataFields(v40);
  result = CFArrayGetCount(a2);
  v5 = result;
  v6 = *v3;
  v39 = v3;
  if (*v3 < 1)
  {
    v9 = 0;
    v8 = 0;
    v42 = 0;
  }

  else
  {
    v7 = 0;
    v42 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v3[3] + 24 * v7;
      if (v5 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v11);
          result = CFStringCompare(ValueAtIndex, *v10, 0);
          if (!result)
          {
            break;
          }

          if (v5 == ++v11)
          {
            goto LABEL_11;
          }
        }

        v13 = v6;
        v14 = (*(a1 + 64) + 32 * v9++);
        v14[5] = v11 + 1;
        v15 = *(v10 + 16);
        v16 = IDXIndexInfo::bigEndian(v40);
        v17 = v15;
        v3 = v39;
        result = GetPreConfiguredGetDataSizeFunction(0, v17, v16, v14 + 4);
        v14[2] = v8;
        v14[3] = result;
        v6 = v13;
        ++v42;
        v8 = 0;
      }

      if (v11 == v5)
      {
LABEL_11:
        v8 += *(v10 + 16);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v18 = v3[1];
  if (v18 >= 1 && v42 < v5)
  {
    v20 = 0;
    do
    {
      v21 = v3[4] + 16 * v20;
      if (v5 < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        while (1)
        {
          v23 = CFArrayGetValueAtIndex(a2, v22);
          result = CFStringCompare(v23, *v21, 0);
          if (!result)
          {
            break;
          }

          if (v5 == ++v22)
          {
            goto LABEL_29;
          }
        }

        v24 = (*(a1 + 64) + 32 * v9++);
        v24[5] = v22 + 1;
        v25 = *(v21 + 8);
        v26 = IDXIndexInfo::bigEndian(v40);
        v27 = v25;
        v3 = v39;
        result = GetPreConfiguredGetDataSizeFunction(0, v27, v26, v24 + 4);
        v24[2] = v8;
        v24[3] = result;
        ++v42;
        v8 = 0;
      }

      if (v22 == v5)
      {
LABEL_29:
        v8 += *(v21 + 8);
      }

      ++v20;
    }

    while (v20 < v18 && v42 < v5);
  }

  v28 = v3[2];
  if (v28 >= 1 && v42 < v5)
  {
    v30 = 0;
    do
    {
      v31 = v3[5] + 16 * v30;
      v32 = (*(a1 + 64) + 32 * v9);
      v32[5] = 0;
      v33 = *(v31 + 8);
      v34 = IDXIndexInfo::bigEndian(v40);
      result = GetPreConfiguredGetDataSizeFunction(v33, 0, v34, v32 + 4);
      v32[2] = v8;
      v32[3] = result;
      v35 = v32 + 2;
      if (v5 >= 1)
      {
        v36 = 0;
        while (1)
        {
          v37 = CFArrayGetValueAtIndex(a2, v36);
          result = CFStringCompare(v37, *v31, 0);
          ++v36;
          if (!result)
          {
            break;
          }

          if (v5 == v36)
          {
            goto LABEL_44;
          }
        }

        v35[3] = v36;
        ++v42;
      }

LABEL_44:
      ++v9;
      ++v30;
      v3 = v39;
      if (v30 >= v28)
      {
        break;
      }

      v8 = 0;
    }

    while (v42 < v5);
  }

  v38 = *(a1 + 64);
  *v38 = v5;
  v38[1] = v9;
  return result;
}

uint64_t IDXGetFieldDataPtrs(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = *(result + 64);
  v8 = *v7;
  if (*v7 >= 1)
  {
    v9 = a4;
    v10 = a5;
    do
    {
      *v9++ = 0;
      *v10++ = 0;
      --v8;
    }

    while (v8);
  }

  v11 = v7[1];
  if (v11 >= 1 && a3 >= 1)
  {
    v13 = a2 + a3;
    v20 = 0;
    v14 = v7 + 5;
    v15 = 1;
    do
    {
      v16 = a2 + *(v14 - 3);
      result = (*(v14 - 2))(*(v14 - 1), v16, &v20);
      v17 = v16 + v20;
      if (*v14)
      {
        if (result <= 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v16 + v20;
        }

        v19 = 8 * *v14 - 8;
        *(a4 + v19) = v18;
        *(a5 + v19) = result;
      }

      if (v15 >= v11)
      {
        break;
      }

      v14 += 4;
      a2 = v17 + result;
      ++v15;
    }

    while (v17 + result < v13);
  }

  return result;
}

__CFData *IDXCreateFlattenData(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  v4 = IDXIndexInfo::dataFields(v3);
  v5 = IDXIndexInfo::bigEndian(v3);
  Mutable = CFDataCreateMutable(0, 0);
  v7 = *v4;
  if (*v4 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v4[3];
      if (CFDictionaryContainsKey(a2, *(v9 + v8)))
      {
        v10 = v9 + v8;
        Value = CFDictionaryGetValue(a2, *v10);
        AppendFieldDataToData(Mutable, Value, *(v10 + 16), 1, v5);
      }

      else
      {
        AppendNumberToData(Mutable, 0, *(v9 + v8 + 16), v5);
      }

      v8 += 24;
      --v7;
    }

    while (v7);
  }

  v12 = v4[1];
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *MEMORY[0x277CBED00];
    do
    {
      v15 = v4[4];
      if (CFDictionaryContainsKey(a2, *(v15 + v13)))
      {
        v16 = v15 + v13;
        v17 = CFDictionaryGetValue(a2, *v16);
        AppendFieldDataToData(Mutable, v17, *(v16 + 8), 1, v5);
      }

      else
      {
        v18 = v15 + v13;
        v19 = malloc_type_calloc(1uLL, *(v15 + v13 + 8), 0x100004077774924uLL);
        v20 = CFDataCreateWithBytesNoCopy(0, v19, *(v18 + 8), v14);
        AppendFieldDataToData(Mutable, v20, *(v18 + 8), 1, v5);
        CFRelease(v20);
        free(v19);
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  v21 = v4[2];
  if (v21 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = v4[5];
      if (CFDictionaryContainsKey(a2, *(v23 + v22)))
      {
        v24 = v23 + v22;
        v25 = CFDictionaryGetValue(a2, *v24);
        AppendFieldDataToData(Mutable, v25, *(v24 + 8), 0, v5);
      }

      else
      {
        AppendNumberToData(Mutable, 0, *(v23 + v22 + 8), v5);
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  return Mutable;
}

uint64_t IDXAddRecord(uint64_t a1, const __CFString *a2, const __CFData *a3, uint64_t a4)
{
  if (!a2 && IDXIndexInfo::keyMatchingMethods(*(a1 + 32)))
  {
    return 0;
  }

  v16 = 0;
  v8 = CreateCharactersFromString(a2, 0x100u, &v16);
  v9 = *(a1 + 16);
  v10 = *(a1 + 40);
  v11 = v16;
  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  v14 = (*(*v9 + 120))(v9, v10, v8, v11, BytePtr, Length, a4);
  free(v8);
  return v14;
}

uint64_t IDXDeleteRecord(uint64_t a1, const __CFString *a2, const __CFData *a3, uint64_t a4)
{
  if (!a2 && IDXIndexInfo::keyMatchingMethods(*(a1 + 32)))
  {
    return 0;
  }

  v16 = 0;
  v8 = CreateCharactersFromString(a2, 0x100u, &v16);
  v9 = *(a1 + 16);
  v10 = *(a1 + 40);
  v11 = v16;
  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  v14 = (*(*v9 + 128))(v9, v10, v8, v11, BytePtr, Length, a4);
  free(v8);
  return v14;
}

uint64_t IDXBuildIndexWithRecords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 || !IDXIndexInfo::keyMatchingMethods(*(a1 + 32)))
  {
    return (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 40), a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

void *IDXQueryAccessMethodInterface(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = SyncSingleton<IDXAccessMethodManager>::instance();
  result = IDXAccessMethodManager::accessMethod(v8, a1, 0);
  if (result)
  {
    return (*(*result + 16))(result, a2, a3, a4);
  }

  return result;
}

uint64_t _IDXIndexInitialize(void)
{
  result = _CFRuntimeRegisterClass();
  _IDXIndexID = result;
  return result;
}

void _IDXIndexFinalize(const void *a1)
{
  (*(**(a1 + 2) + 56))(*(a1 + 2), *(a1 + 5));
  IDXDictionaryPackage::releaseIndex(*(a1 + 3), *(a1 + 4));
  v2 = *(a1 + 8);
  if (v2)
  {

    free(v2);
  }
}

CFStringRef _IDXIndexCopyFormattingDesc(CFURLRef **a1, const __CFDictionary *a2)
{
  v4 = CFGetAllocator(a1);
  PathComponent = CFURLCopyLastPathComponent(*a1[4]);
  if (PathComponent)
  {
    v6 = PathComponent;
    v7 = CFStringCreateWithFormat(v4, a2, @"<%@>", PathComponent);
    CFRelease(v6);
    return v7;
  }

  else
  {

    return CFStringCreateWithFormat(v4, a2, @"<#invalid index>");
  }
}

CFStringRef _IDXIndexCopyDebugDesc(CFURLRef **a1)
{
  v2 = CFGetAllocator(a1);
  v3 = a1[4];
  v4 = CFURLCopyFileSystemPath(*v3, kCFURLPOSIXPathStyle);
  v5 = a1[2][1];
  if (!v4)
  {
    return CFStringCreateWithFormat(v2, 0, @"<IDXIndexRef %p>{access method = %@, #invalid index}", a1, v5);
  }

  v6 = v4;
  v7 = IDXIndexInfo::openCount(v3);
  v8 = CFStringCreateWithFormat(v2, 0, @"<IDXIndexRef %p>{access method = %@, index = %@, open# = %d}", a1, v5, v6, v7);
  CFRelease(v6);
  return v8;
}

uint64_t mtrie_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x48uLL, 0x10B004015DDB5A3uLL);
  if (v8)
  {
    v8[1] = 0u;
    v8[2] = 0u;
    *(v8 + 6) = 0;
    *(v8 + 7) = a1;
    *(v8 + 8) = a2;
    *v8 = a3;
    *(v8 + 1) = a4;
    operator new();
  }

  return 0;
}

marisa::grimoire::trie::LoudsTrie *mtrie_exact_match_search(uint64_t a1, const char *a2, uint64_t a3)
{
  result = 0;
  if (a2 && a3)
  {
    if (!*(a1 + 24))
    {
      return 0;
    }

    marisa::Agent::set_query(*(a1 + 40), a2, a3);
    result = marisa::Trie::lookup(*(a1 + 32), *(a1 + 40));
    if (!result)
    {
      return result;
    }

    v5 = *(*(a1 + 40) + 36);
    if (*(a1 + 24) > v5)
    {
      return *(*(a1 + 16) + 4 * v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mtrie_build(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  marisa::Keyset::Keyset(v38);
  v10 = 0;
  do
  {
    marisa::Keyset::push_back(v38, *(a3 + 8 * v10), *(a4 + 8 * v10), 1.0);
    ++v10;
  }

  while (a2 != v10);
  marisa::Trie::build(*(a1 + 32), v38, 0x21203u);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v32);
  marisa::write(&v33, *(a1 + 32));
  std::stringbuf::str();
  v11 = 4 * a2 + 28;
  if ((a2 & 1) == 0)
  {
    v11 = 4 * a2 + 24;
  }

  v12 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v12 = v30;
  }

  v13 = v12 + v11;
  v14 = (*(a1 + 56))(*a1, v12 + v11, *(a1 + 64));
  v15 = v14;
  v16 = 0;
  *a1 = v14;
  *(a1 + 8) = v13;
  *v14 = 0x1800000001;
  v17 = 4 * a2 + 28;
  if ((a2 & 1) == 0)
  {
    v17 = 4 * a2 + 24;
  }

  *(v14 + 8) = a2;
  *(v14 + 12) = v17;
  v18 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v18 = v30;
  }

  *(v14 + 16) = v18;
  *(v14 + 20) = v13;
  *(a1 + 16) = v14 + 24;
  *(a1 + 24) = a2;
  *(a1 + 48) = v13;
  v19 = *(a1 + 40);
  do
  {
    marisa::Agent::set_query(v19, *(a3 + 8 * v16), *(a4 + 8 * v16));
    if ((marisa::Trie::lookup(*(a1 + 32), *(a1 + 40)) & 1) == 0)
    {
      v24 = *MEMORY[0x277D85DF8];
      v25 = "trie->_marisa_trie->lookup failed.\n";
      v26 = 35;
LABEL_25:
      fwrite(v25, v26, 1uLL, v24);
      v23 = 0xFFFFFFFFLL;
      goto LABEL_26;
    }

    v19 = *(a1 + 40);
    v20 = *(v19 + 36);
    if (v20 >= a2)
    {
      v24 = *MEMORY[0x277D85DF8];
      v25 = "wrong entry ID.\n";
      v26 = 16;
      goto LABEL_25;
    }

    v21 = *(a1 + 16);
    *(v21 + 4 * v20) = *(a5 + 4 * v16++);
  }

  while (a2 != v16);
  if (a2)
  {
    *(v21 + 4 * a2) = 0;
  }

  if ((v31 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  memcpy((*a1 + *(v15 + 12)), p_p, *(v15 + 16));
  v23 = 0;
LABEL_26:
  if (v31 < 0)
  {
    operator delete(__p);
  }

  v32[0] = *MEMORY[0x277D82818];
  v27 = *(MEMORY[0x277D82818] + 72);
  *(v32 + *(v32[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v33 = v27;
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::iostream::~basic_iostream();
  MEMORY[0x223D5E580](&v37);
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(v40);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v39);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v38);
  return v23;
}

void sub_21E5AB2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (a9 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x277D82818]);
  MEMORY[0x223D5E580](va);
  marisa::Keyset::~Keyset((v25 - 192));
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_21E5AB5B4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x223D5E580](v1);
  _Unwind_Resume(a1);
}

uint64_t mtrie_data(unsigned int *a1, void *a2)
{
  if (a2)
  {
    *a2 = a1[12];
  }

  return *a1;
}

void mtrie_close(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      marisa::Trie::~Trie(v2);
      MEMORY[0x223D5E5E0]();
    }

    v3 = a1[5];
    if (v3)
    {
      marisa::Agent::~Agent(v3);
      MEMORY[0x223D5E5E0]();
    }

    free(a1);
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void marisa::Keyset::~Keyset(marisa::Keyset *this)
{
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(this + 6);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this + 3);

  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this);
}

uint64_t *marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x223D5E5B0](v7, 0x1050C80717B85FCLL);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x223D5E5B0](v4 - 8, 0x20C8093837F09);
  }

  return a1;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x223D5E5B0](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x223D5E5B0](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x223D5E550](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_21E5AB9AC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

UInt8 *CreateCharactersFromString(const __CFString *a1, CFStringEncoding a2, unint64_t *a3)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
    v8 = malloc_type_malloc(MaximumSizeForEncoding, 0x1000040BDFB0063uLL);
    v11.location = 0;
    v11.length = Length;
    CFStringGetBytes(a1, v11, a2, 0, 0, v8, MaximumSizeForEncoding, &usedBufLen);
    if (a3)
    {
      *a3 = usedBufLen >> 1;
    }
  }

  else
  {
    v8 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v8;
}

char *CreateFileSystemPath(const __CFURL *a1)
{
  v1 = CFURLCopyAbsoluteURL(a1);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  CFRelease(v1);
  if (!v2)
  {
    return 0;
  }

  Length = CFStringGetLength(v2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  LODWORD(MaximumSizeForEncoding) = CFStringGetFileSystemRepresentation(v2, v5, MaximumSizeForEncoding);
  CFRelease(v2);
  if (!MaximumSizeForEncoding)
  {
    free(v5);
    return 0;
  }

  return v5;
}

CFURLRef CreateDictionaryComponentURL(const __CFURL *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = CFStringCreateWithFormat(0, 0, @"Contents/%@", a2);
  }

  else
  {
    v4 = CFStringCreateWithFormat(0, 0, @"Contents");
  }

  v5 = v4;
  v6 = CFURLCreateCopyAppendingPathComponent(0, a1, v4, a2 == 0);
  CFRelease(v5);
  return v6;
}