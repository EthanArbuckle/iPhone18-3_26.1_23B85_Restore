CFMutableArrayRef DCSSearchFoundationCopyResultsWithOptions(const __CFString *a1, const __CFArray *a2, const __CFString *a3)
{
  values[6] = *MEMORY[0x277D85DE8];
  if (_GetSearchFoundationFrameworkInfo__DispatchOnceToken != -1)
  {
    DCSSearchFoundationCopyResultsWithOptions_cold_1();
  }

  v6 = _GetSearchFoundationFrameworkInfo__InfoPtr;
  if (_GetSearchFoundationFrameworkInfo__InfoPtr)
  {
    v91 = NewAutoReleasePool();
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    Length = CFStringGetLength(@"com.apple.dictionary");
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = 0;
    }

    v116 = *v6;
    if (a3)
    {
      v8 = CFStringGetLength(a3);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v8, 0x8000100u);
      v10 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
      v12 = &v91 - v11;
      if (CFStringGetCString(a3, &v91 - v11, v10 + 1, 0x8000100u))
      {
        Class = objc_getClass(v12);
        v14 = *v6;
        v116 = Class;
        if (([(objc_class *)Class isSubclassOfClass:v14, v91]& 1) == 0)
        {
          v116 = *v6;
        }
      }
    }

    if (Count >= 1)
    {
      v15 = 0;
      v16 = 0;
      v126 = sel_setIdentifier_;
      v115 = sel_setType_;
      v114 = sel_setIsQuickGlance_;
      v113 = sel_setSectionBundleIdentifier_;
      v112 = sel_setResultBundleId_;
      v125 = @"DCSTextElementKeyRecordID";
      v121 = @"DCSTextElementKeyHeadword";
      v17 = @"DCSTextElementKeySyllabifiedHeadword";
      v124 = @"DCSTextElementKeyPartOfSpeech";
      v123 = @"DCSTextElementKeyPronunciation";
      v97 = ~Length;
      v122 = @"DCSTextElementKeySensesWithAttributes";
      v107 = sel_setText_;
      v101 = sel_setIsBold_;
      v100 = sel_setFormattedTextPieces_;
      v95 = @"DCSTextElementSenseKeyIsExplicit";
      v94 = *MEMORY[0x277CBED28];
      v93 = @"DCSTextElementSenseKeyText";
      v106 = sel_setDescriptions_;
      v96 = sel_setTitle_;
      v111 = sel_setFootnote_;
      v110 = sel_setDictionaryID_;
      v109 = sel_setSearchString_;
      v108 = sel_setCard_;
      v99 = sel_textWithString_;
      v92 = sel_setMaxLines_;
      v104 = a1;
      v103 = Count;
      v105 = a2;
      v102 = @"DCSTextElementKeySyllabifiedHeadword";
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v16);
        v139.length = CFStringGetLength(a1);
        v129 = ValueAtIndex;
        v139.location = 0;
        v19 = DCSCopyDefinitionRecords(ValueAtIndex, a1, v139, 2);
        if (v19)
        {
          break;
        }

LABEL_66:
        if (++v16 == Count)
        {
          goto LABEL_67;
        }
      }

      v127 = v19;
      v20 = CFArrayGetValueAtIndex(v19, 0);
      v21 = objc_opt_new();
      v22 = CFStringCreateWithFormat(0, 0, @"local-dictionary-%d:%@", v15, a1);
      [v21 v126];
      CFRelease(v22);
      [v21 v115];
      [v21 v114];
      [v21 v113];
      v128 = v21;
      [v21 v112];
      values[0] = v125;
      values[1] = v121;
      values[2] = v17;
      values[3] = v124;
      values[4] = v123;
      values[5] = v122;
      v23 = CFArrayCreate(0, values, 6, MEMORY[0x277CBF128]);
      v24 = DCSRecordCopyTextElements(v20, v23);
      CFRelease(v23);
      if (!v24)
      {
        Title = DCSRecordGetTitle(v20);
        if (!Title)
        {
          Title = DCSRecordGetHeadword(v20);
        }

        v35 = [*(v6 + 24) v99];
        v36 = v128;
        [v128 v96];
        v37 = DCSRecordCopyDefinition(v20);
        if (v37)
        {
          v38 = v37;
          v137[0] = [*(v6 + 16) v99];
          [v137[0] v92];
          v39 = CFArrayCreate(0, v137, 1, MEMORY[0x277CBF128]);
          [v36 v106];
          CFRelease(v39);
          CFRelease(v38);
        }

        goto LABEL_65;
      }

      v119 = v15;
      Value = CFDictionaryGetValue(v24, v17);
      if (!Value)
      {
        Value = CFDictionaryGetValue(v24, v121);
      }

      v26 = CFDictionaryGetValue(v24, v123);
      v27 = CFDictionaryGetValue(v24, v124);
      v28 = CFDictionaryGetValue(v24, v125);
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = &stru_282F97070;
      }

      Identifier = DCSDictionaryGetIdentifier(v129);
      HasPrefix = CFStringHasPrefix(Identifier, @"com.apple.dictionary");
      v32 = v128;
      if (HasPrefix)
      {
        v33 = CFStringGetLength(Identifier);
        v140.location = Length + 1;
        v140.length = v33 + v97;
        Identifier = CFStringCreateWithSubstring(0, Identifier, v140);
      }

      else
      {
        CFRetain(Identifier);
      }

      v40 = CFStringCreateWithFormat(0, 0, @"d:%@.%@", Identifier, v29);
      CFRelease(Identifier);
      [v32 v126];
      CFRelease(v40);
      v41 = *(v6 + 16);
      v42 = objc_opt_new();
      v43 = *(v6 + 8);
      v44 = objc_opt_new();
      [v44 v107];
      [v44 v101];
      v45 = *(v6 + 8);
      v46 = objc_opt_new();
      if (v27 && v26)
      {
        v47 = CFStringCreateWithFormat(0, 0, @"  |  %@  |  %@", v26, v27);
        v48 = MEMORY[0x277CBF128];
        if (!v47)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v48 = MEMORY[0x277CBF128];
        if (v26)
        {
          v49 = CFStringCreateWithFormat(0, 0, @"  |  %@", v26);
        }

        else
        {
          if (!v27)
          {
            goto LABEL_38;
          }

          v49 = CFStringCreateWithFormat(0, 0, @"  |  %@", v27);
        }

        v47 = v49;
        if (!v49)
        {
LABEL_38:
          v137[0] = v44;
          v137[1] = v46;
          v50 = CFArrayCreate(0, v137, 2, v48);
          [v42 v100];
          CFRelease(v50);
          [v32 getUid("setTitle:v42")];
          v51 = CFDictionaryGetValue(v24, v122);
          v117 = v24;
          v118 = v16;
          if (v51)
          {
            v52 = v51;
            v53 = CFArrayGetCount(v51);
            v54 = CFArrayCreateMutable(0, v53, v48);
            if (v53)
            {
              v55 = 0;
              v56 = v95;
              v57 = v94;
              v58 = v93;
              v59 = v54;
              do
              {
                v60 = CFArrayGetValueAtIndex(v52, v55);
                if (CFDictionaryGetValue(v60, v56) != v57)
                {
                  v61 = CFDictionaryGetValue(v60, v58);
                  CFArrayAppendValue(v59, v61);
                }

                ++v55;
              }

              while (v53 != v55);
              goto LABEL_47;
            }
          }

          else
          {
            v54 = CFArrayCreateMutable(0, 0, v48);
          }

          v59 = v54;
LABEL_47:
          v62 = CFArrayGetCount(v59);
          v63 = CFArrayCreateMutable(0, 0, v48);
          if (v62 >= 2)
          {
            v64 = 2;
          }

          else
          {
            v64 = v62;
          }

          v15 = v59;
          v134 = v62;
          if (v62)
          {
            v65 = 0;
            v131 = sel_setMaxLines_;
            v132 = sel_textWithString_;
            v66 = 2;
            if (v134 == 1)
            {
              v66 = 4;
            }

            v130 = v66;
            v67 = 1;
            v133 = v64;
            do
            {
              v68 = v134;
              if (v134 > 2 && v67 == 0)
              {
                v70 = @"…";
              }

              else
              {
                v70 = &stru_282F97070;
              }

              v135 = v70;
              v71 = v15;
              v72 = v63;
              v73 = v6;
              v74 = CFNumberFormatterCreate(0, 0, kCFNumberFormatterDecimalStyle);
              v75 = v65 + 1;
              valuePtr = v65 + 1;
              v76 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
              StringWithNumber = CFNumberFormatterCreateStringWithNumber(0, v74, v76);
              CFRelease(v76);
              v78 = CFStringCreateWithFormat(0, 0, @"%@. ", StringWithNumber);
              CFRelease(StringWithNumber);
              v79 = v74;
              v6 = v73;
              v63 = v72;
              v15 = v71;
              CFRelease(v79);
              v80 = CFArrayGetValueAtIndex(v71, v65);
              if (v68 == 1)
              {
                v81 = &stru_282F97070;
              }

              else
              {
                v81 = v78;
              }

              v82 = CFStringCreateWithFormat(0, 0, @"%@%@%@", v81, v80, v135);
              v83 = [*(v6 + 16) v132];
              CFRelease(v82);
              CFRelease(v78);
              [v83 v131];
              CFArrayAppendValue(v63, v83);
              --v67;
              v65 = v75;
            }

            while (v75 != v133);
          }

          v36 = v128;
          [v128 v106];
          CFRelease(v63);
          CFRelease(v15);
          CFRelease(v117);
          a2 = v105;
          a1 = v104;
          Count = v103;
          LODWORD(v15) = v119;
          v16 = v118;
          v17 = v102;
LABEL_65:
          v15 = (v15 + 1);
          v84 = v129;
          Name = DCSDictionaryGetName(v129);
          [v36 v111];
          v86 = *(v6 + 32);
          v87 = objc_opt_new();
          v88 = DCSDictionaryGetIdentifier(v84);
          [v87 v110];
          [v87 v109];
          [v36 v108];
          CFArrayAppendValue(Mutable, v36);
          CFRelease(v127);
          goto LABEL_66;
        }
      }

      [v46 v107];
      CFRelease(v47);
      goto LABEL_38;
    }

LABEL_67:
  }

  else
  {
    Mutable = 0;
  }

  v89 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t NewAutoReleasePool()
{
  if (_GetFoundationFrameworkInfo__DispatchOnceToken != -1)
  {
    NewAutoReleasePool_cold_1();
  }

  if (!_GetFoundationFrameworkInfo__InfoPtr)
  {
    return 0;
  }

  v0 = *_GetFoundationFrameworkInfo__InfoPtr;

  return objc_opt_new();
}

void DCSDictionary::DCSDictionary(DCSDictionary *this, const __CFURL *a2, __CFDictionary *a3)
{
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 32) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = -1;
  pthread_mutex_init((this + 104), 0);
  *this = DCSDictionary::createDictionaryRef(this);
  if (a2)
  {
    v6 = CFURLCopyAbsoluteURL(a2);
  }

  else
  {
    v6 = 0;
  }

  *(this + 6) = v6;
  if (a3)
  {
    v7 = CFRetain(a3);
    v6 = *(this + 6);
  }

  else
  {
    v7 = 0;
  }

  *(this + 12) = v7;
  if (v6)
  {
    v8 = SyncSingleton<DCSEnvironment>::instance();
    v9 = DCSEnvironment::cachedDictionariesInfo(v8);
    if (v9)
    {
      v10 = v9;
      v11 = CFURLCopyFileSystemPath(*(this + 6), kCFURLPOSIXPathStyle);
      Value = CFDictionaryGetValue(v10, @"dictionaries");
      if (Value)
      {
        v13 = CFDictionaryGetValue(Value, v11);
        *(this + 5) = v13;
        if (v13)
        {
          CFRetain(v13);
        }
      }

      else
      {
        *(this + 5) = 0;
      }

      CFRelease(v11);
    }
  }

  if (!*(this + 5) && DCSDictionary::createDictionaryObj(this))
  {
    v14 = *(this + 1);
    if (v14)
    {
      if (!*(this + 5))
      {
        *(this + 5) = _CreateDictionaryCacheInfo(v14);
        *(this + 33) = 1;
      }
    }

    v15 = SyncSingleton<DCSEnvironment>::instance();
    DCSEnvironment::updateDictionaryCacheInfo(v15, a2, *(this + 5));
  }
}

uint64_t DCSDictionary::createDictionaryRef(DCSDictionary *this)
{
  pthread_once(&_DCSDictionaryClassID(void)::once_control, _DCSDictionaryInitialize);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = this;
  }

  return result;
}

uint64_t SyncSingleton<DCSEnvironment>::instance()
{
  if ((SyncSingleton<DCSEnvironment>::_instantiated & 1) == 0)
  {
    pthread_mutex_lock(&SyncSingleton<DCSEnvironment>::_mutex);
    if ((SyncSingleton<DCSEnvironment>::_instantiated & 1) == 0)
    {
      operator new();
    }

    pthread_mutex_unlock(&SyncSingleton<DCSEnvironment>::_mutex);
  }

  return SyncSingleton<DCSEnvironment>::_instance;
}

uint64_t DCSDictionary::createDictionaryObj(DCSDictionary *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    pthread_mutex_lock((this + 104));
    if (*(this + 16))
    {
LABEL_31:
      pthread_mutex_unlock((this + 104));
      return *(this + 1);
    }

    if (*(this + 32))
    {
      DictionaryObj = DCSDictionary::createDictionaryObj(*(this + 3));
      if (DictionaryObj)
      {
        v4 = (*(*DictionaryObj + 144))(DictionaryObj);
        if (v4)
        {
          v5 = v4;
          Count = CFArrayGetCount(v4);
          if (Count >= 1)
          {
            v7 = Count;
            v8 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
              v10 = DCSDictionary::identifier(this);
              v11 = (*(*ValueAtIndex + 24))(ValueAtIndex);
              if (CFStringCompare(v10, v11, 0) == kCFCompareEqualTo)
              {
                break;
              }

              if (v7 == ++v8)
              {
                goto LABEL_20;
              }
            }

            *(this + 1) = ValueAtIndex;
            *(this + 9) = v8;
          }
        }
      }

      goto LABEL_20;
    }

    v12 = *(this + 6);
    if (*(this + 12))
    {
      if (v12)
      {
        goto LABEL_15;
      }

      v12 = DCSEnvironment::copyInactiveDictionaries(*(this + 12), v2);
      *(this + 6) = v12;
    }

    if (!v12)
    {
LABEL_20:
      v15 = *(this + 1);
      if (v15)
      {
        *(v15 + 8) = this;
        *(v15 + 16) = 1;
        if (((*(*v15 + 200))(v15) & 1) == 0)
        {
          v16 = *(this + 1);
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          *(this + 1) = 0;
        }
      }

      if ((*(this + 32) & 1) == 0 && *(this + 1))
      {
        v17 = SyncSingleton<DCSEnvironment>::instance();
        v18 = (*(**(this + 1) + 24))(*(this + 1));
        DictionaryPreference = DCSEnvironment::getDictionaryPreference(v17, v18);
        if (DictionaryPreference)
        {
          (*(**(this + 1) + 184))(*(this + 1), DictionaryPreference);
        }

        *(this + 64) = 0;
        DCSDictionary::subDictionaries(this);
      }

      *(this + 16) = *(this + 6) != 0;
      goto LABEL_31;
    }

LABEL_15:
    v13 = CFURLCopyPathExtension(v12);
    if (v13)
    {
      v14 = v13;
      if (CFStringCompare(v13, @"dictionary", 0) == kCFCompareEqualTo)
      {
        operator new();
      }

      CFRelease(v14);
    }

    goto LABEL_20;
  }

  return *(this + 1);
}

__CFDictionary *DCSDictionary::dictionaryCacheInfo(DCSDictionary *this, int a2)
{
  if (!*(this + 1))
  {
    return 0;
  }

  result = *(this + 5);
  if (a2)
  {
    if (result)
    {
      CFRelease(result);
      *(this + 5) = 0;
    }
  }

  else if (result)
  {
    return result;
  }

  result = _CreateDictionaryCacheInfo(*(this + 1));
  *(this + 5) = result;
  *(this + 33) = 1;
  return result;
}

void DCSDictionary::DCSDictionary(DCSDictionary *this, CFURLRef *a2, const __CFDictionary *a3)
{
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 33) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = -1;
  *(this + 12) = 0;
  pthread_mutex_init((this + 104), 0);
  *this = DCSDictionary::createDictionaryRef(this);
  *(this + 6) = CFURLCopyAbsoluteURL(a2[6]);
  *(this + 5) = CFRetain(a3);
  *(this + 3) = a2;
  *(this + 32) = 1;
}

void DCSDictionary::DCSDictionary(DCSDictionary *this, CFURLRef *a2, DCSBaseDictionary *a3)
{
  *(this + 33) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = -1;
  *(this + 12) = 0;
  pthread_mutex_init((this + 104), 0);
  *this = DCSDictionary::createDictionaryRef(this);
  *(this + 6) = CFURLCopyAbsoluteURL(a2[6]);
  *(this + 3) = a2;
  *(this + 32) = 1;
  *(this + 1) = a3;
  *(this + 16) = 1;
  *(a3 + 1) = this;
  *(a3 + 16) = 1;
  v6 = a2[5];
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"sub dictionaries");
    if (Value)
    {
      v8 = Value;
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
          v13 = CFDictionaryGetValue(ValueAtIndex, @"identifier");
          v14 = (*(*a3 + 24))(a3);
          if (CFStringCompare(v13, v14, 0) == kCFCompareEqualTo)
          {
            break;
          }

          if (v10 == ++v11)
          {
            return;
          }
        }

        *(this + 5) = CFRetain(ValueAtIndex);
      }
    }
  }
}

void DCSDictionary::~DCSDictionary(DCSDictionary *this)
{
  pthread_mutex_destroy((this + 104));
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    CFRelease(v7);
  }
}

const __CFDictionary *DCSDictionary::identifier(DCSDictionary *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(*v2 + 24);

    return v3();
  }

  else
  {
    v5 = *(this + 5);
    if (v5)
    {
      v6 = @"identifier";
    }

    else
    {
      result = *(this + 12);
      if (!result)
      {
        return result;
      }

      v7 = DCSMAGetAssetAttributes(result);
      result = CFDictionaryGetValue(v7, @"DictionaryIdentifier");
      if (result)
      {
        return result;
      }

      v6 = @"DictionaryPackageName";
      v5 = v7;
    }

    return CFDictionaryGetValue(v5, v6);
  }
}

const __CFDictionary *DCSDictionary::name(DCSDictionary *this)
{
  v3 = *(this + 1);
  if (!v3)
  {
    v6 = *(this + 5);
    if (v6)
    {
      v7 = @"name";
    }

    else
    {
      result = *(this + 12);
      if (!result)
      {
        return result;
      }

      v6 = DCSMAGetAssetAttributes(result);
      v7 = @"DictionaryPackageDisplayName";
    }

    return CFDictionaryGetValue(v6, v7);
  }

  v4 = *(*v3 + 40);

  return v4();
}

const __CFString *DCSDictionary::shortName(DCSDictionary *this)
{
  v2 = *(SyncSingleton<DCSEnvironment>::instance() + 192);
  Count = CFDictionaryGetCount(v2);
  v4 = SyncSingleton<DCSEnvironment>::instance();
  CurrentAppLocalization = DCSEnvironment::getCurrentAppLocalization(v4);
  v6 = *(this + 1);
  if (v6)
  {
    v7 = (*(*v6 + 88))(v6);
    if (Count > 1 || v7 == 0)
    {
      if (v7 && CFDictionaryGetValue(v2, v7) == *MEMORY[0x277CBED28])
      {
        v9 = (*(**(this + 1) + 56))(*(this + 1));
        goto LABEL_21;
      }
    }

    else if (CompareLanguageCode(v7, CurrentAppLocalization, 0))
    {
      v16 = (*(**(this + 1) + 64))(*(this + 1));
      if (v16)
      {
        return v16;
      }

      v9 = (*(**(this + 1) + 72))(*(this + 1));
LABEL_21:
      v16 = v9;
      if (!v9)
      {
        goto LABEL_22;
      }

      return v16;
    }

LABEL_22:
    v17 = *(**(this + 1) + 48);

    return v17();
  }

  v10 = *(this + 5);
  if (!v10)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v10, @"primary language");
  v12 = Value;
  if (Count > 1 || Value == 0)
  {
    if (!Value)
    {
      v14 = 0;
      goto LABEL_29;
    }
  }

  else if (CompareLanguageCode(Value, CurrentAppLocalization, 0))
  {
    v16 = CFDictionaryGetValue(*(this + 5), @"native name");
    if (!v16)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v14 = CFDictionaryGetValue(v2, v12);
LABEL_29:
  v20 = *MEMORY[0x277CBED28];
  if (v14 == *MEMORY[0x277CBED28])
  {
    v21 = @"localized detailed names";
  }

  else
  {
    v21 = @"localized names";
  }

  v22 = CFDictionaryGetValue(*(this + 5), v21);
  if (!v22)
  {
    goto LABEL_35;
  }

  v16 = CFDictionaryGetValue(v22, CurrentAppLocalization);
  if (v16)
  {
    goto LABEL_34;
  }

  if (!DCSDictionary::createDictionaryObj(this))
  {
    return 0;
  }

  if ((*(this + 33) & 1) == 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(this + 5));
    CFRelease(*(this + 5));
    *(this + 5) = MutableCopy;
    *(this + 33) = 1;
  }

  v16 = (*(**(this + 1) + 48))(*(this + 1));
  v25 = CFDictionaryGetValue(*(this + 5), @"localized names");
  v26 = CFDictionaryCreateMutableCopy(0, 0, v25);
  CFDictionarySetValue(v26, CurrentAppLocalization, v16);
  CFDictionarySetValue(*(this + 5), @"localized names", v26);
  CFRelease(v26);
  v27 = (*(**(this + 1) + 56))(*(this + 1));
  v28 = CFDictionaryGetValue(*(this + 5), @"localized detailed names");
  if (v28)
  {
    if (v27)
    {
      v29 = CFDictionaryCreateMutableCopy(0, 0, v28);
      CFDictionarySetValue(v29, CurrentAppLocalization, v27);
      CFDictionarySetValue(*(this + 5), @"localized detailed names", v29);
      CFRelease(v29);
      if (v14 == v20)
      {
        v16 = v27;
      }
    }
  }

  DictionaryCacheInfo = *(this + 5);
  if (*(this + 32) == 1)
  {
    v31 = *(this + 3);
    if (v31)
    {
      v32 = DCSDictionary::identifier(this);
      DCSDictionary::enrollSubDictionaryCache(v31, v32);
      v33 = *(this + 3);
      v34 = *(v33 + 8);
      if (v34)
      {
        DictionaryCacheInfo = *(v33 + 40);
        if (!DictionaryCacheInfo)
        {
          DictionaryCacheInfo = _CreateDictionaryCacheInfo(v34);
          *(v33 + 40) = DictionaryCacheInfo;
          *(v33 + 33) = 1;
        }
      }

      else
      {
        DictionaryCacheInfo = 0;
      }
    }
  }

  v35 = SyncSingleton<DCSEnvironment>::instance();
  DCSEnvironment::updateDictionaryCacheInfo(v35, *(this + 6), DictionaryCacheInfo);
  if (!v16)
  {
    goto LABEL_35;
  }

LABEL_34:
  if (CFStringGetLength(v16))
  {
    return v16;
  }

LABEL_35:
  v23 = CFDictionaryGetValue(*(this + 5), @"localized names");

  return CFDictionaryGetValue(v23, CurrentAppLocalization);
}

void DCSDictionary::enrollSubDictionaryCache(CFDictionaryRef *this, const __CFString *a2)
{
  v3 = DCSDictionary::indexOfSubDictionaryIdentifier(this, a2);
  if (v3 != -1)
  {
    v4 = v3;
    ValueAtIndex = CFArrayGetValueAtIndex(this[7], v3);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex[2];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v6 + 8);
    if (v7)
    {
      DictionaryCacheInfo = *(v6 + 40);
      if (!DictionaryCacheInfo)
      {
        DictionaryCacheInfo = _CreateDictionaryCacheInfo(v7);
        *(v6 + 40) = DictionaryCacheInfo;
        *(v6 + 33) = 1;
      }
    }

    else
    {
      DictionaryCacheInfo = 0;
    }

    Value = CFDictionaryGetValue(this[5], @"sub dictionaries");
    MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
    CFArraySetValueAtIndex(MutableCopy, v4, DictionaryCacheInfo);
    v11 = this[5];
    if ((*(this + 33) & 1) == 0)
    {
      v11 = CFDictionaryCreateMutableCopy(0, 0, this[5]);
      CFRelease(this[5]);
      this[5] = v11;
      *(this + 33) = 1;
    }

    CFDictionarySetValue(v11, @"sub dictionaries", MutableCopy);

    CFRelease(MutableCopy);
  }
}

const __CFDictionary *DCSDictionary::version(DCSDictionary *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    return (*(*v2 + 80))();
  }

  result = *(this + 5);
  if (result)
  {
    return CFDictionaryGetValue(result, @"version");
  }

  return result;
}

__CFString *DCSDictionary::primaryLanguage(DCSDictionary *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    return (*(*v2 + 88))();
  }

  v4 = *(this + 5);
  if (v4)
  {
    return CFDictionaryGetValue(v4, @"primary language");
  }

  result = *(this + 12);
  if (result)
  {
    return DCSMAGetAssetLanguage(result);
  }

  return result;
}

const __CFDictionary *DCSDictionary::isNetworkDictionary(DCSDictionary *this)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(*v3 + 208);

    return v4();
  }

  else
  {
    result = *(this + 5);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"network");
      if (result)
      {
        return (CFBooleanGetValue(result) != 0);
      }
    }
  }

  return result;
}

uint64_t DCSDictionary::subDictionaries(DCSDictionary *this)
{
  if (*(this + 64))
  {
    return *(this + 7);
  }

  v2 = *(this + 1);
  if (!v2)
  {
    v7 = *(this + 5);
    if (v7)
    {
      Value = CFDictionaryGetValue(v7, @"sub dictionaries");
      if (Value)
      {
        v9 = Value;
        Count = CFArrayGetCount(Value);
        v6 = Count;
        if (*(this + 7) || Count < 1)
        {
          if (Count < 1)
          {
            goto LABEL_34;
          }
        }

        else
        {
          *(this + 7) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        }

        v18 = 0;
        do
        {
          CFArrayGetValueAtIndex(v9, v18);
          v19 = CFDictionaryGetValue(*(this + 5), @"identifier");
          v20 = DCSDictionary::indexOfSubDictionaryIdentifier(this, v19);
          if (v20 == -1)
          {
            operator new();
          }

          v21 = v20;
          ValueAtIndex = CFArrayGetValueAtIndex(*(this + 7), v20);
          if (ValueAtIndex)
          {
            v23 = ValueAtIndex[2];
          }

          else
          {
            v23 = 0;
          }

          if (v18 != v21)
          {
            CFArrayExchangeValuesAtIndices(*(this + 7), v21, v18);
          }

          *(v23 + 72) = v18++;
        }

        while (v6 != v18);
        goto LABEL_34;
      }
    }

    goto LABEL_12;
  }

  v3 = (*(*v2 + 144))(v2);
  if (!v3)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_34;
  }

  v4 = v3;
  v5 = CFArrayGetCount(v3);
  v6 = v5;
  if (!*(this + 7) && v5 >= 1)
  {
    *(this + 7) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    goto LABEL_14;
  }

  if (v5 >= 1)
  {
LABEL_14:
    v11 = 0;
    do
    {
      v12 = CFArrayGetValueAtIndex(v4, v11);
      v13 = (*(*v12 + 24))(v12);
      v14 = DCSDictionary::indexOfSubDictionaryIdentifier(this, v13);
      if (v14 == -1)
      {
        operator new();
      }

      v15 = v14;
      v16 = CFArrayGetValueAtIndex(*(this + 7), v14);
      if (v16)
      {
        v17 = v16[2];
      }

      else
      {
        v17 = 0;
      }

      v12[1] = v17;
      *(v12 + 16) = 1;
      if (v11 != v15)
      {
        CFArrayExchangeValuesAtIndices(*(this + 7), v15, v11);
      }

      *(v17 + 72) = v11++;
    }

    while (v6 != v11);
  }

LABEL_34:
  v24 = *(this + 7);
  if (v24)
  {
    v25 = CFArrayGetCount(v24);
  }

  else
  {
    v25 = 0;
  }

  while (v25 > v6)
  {
    CFArrayRemoveValueAtIndex(*(this + 7), --v25);
  }

  *(this + 64) = 1;
  return *(this + 7);
}

CFIndex DCSDictionary::indexOfSubDictionaryIdentifier(DCSDictionary *this, const __CFString *a2)
{
  v3 = *(this + 7);
  if (!v3)
  {
    return -1;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return -1;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(this + 7), v7);
    if (ValueAtIndex)
    {
      ValueAtIndex = *(ValueAtIndex + 2);
    }

    v9 = DCSDictionary::identifier(ValueAtIndex);
    if (CFStringCompare(v9, a2, 0) == kCFCompareEqualTo)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return -1;
    }
  }

  return v7;
}

uint64_t DCSDictionary::parentDictionary(DCSDictionary *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t DCSDictionary::validDictionary(DCSDictionary *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    return (*(*v2 + 200))();
  }

  if (*(this + 5))
  {
    return 1;
  }

  return *(this + 12) != 0;
}

void DCSDictionary::setCustomHTMLHeader(DCSDictionary *this, const __CFString *key, uint64_t a3, int a4, const __CFString *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  valuePtr = a3;
  Mutable = *(this + 10);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(this + 10) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(*(this + 10), key, Value);
    CFRelease(Value);
  }

  v11 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  if (a5)
  {
    v12 = MEMORY[0x277CBED28];
    *keys = xmmword_27835A1B0;
    if (!a4)
    {
      v12 = MEMORY[0x277CBED10];
    }

    values[0] = *v12;
    values[1] = a5;
    v13 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Value, v11, v13);
  }

  else
  {
    CFDictionaryRemoveValue(Value, v11);
  }

  CFRelease(v11);
  v14 = *MEMORY[0x277D85DE8];
}

DCSDictionary *DCSDictionary::customHTMLHeader(DCSDictionary *this, const __CFString *a2, uint64_t a3, BOOL *a4)
{
  valuePtr = a3;
  v7 = *(this + 10);
  if (v7 && (v8 = CFDictionaryGetValue(v7, a2)) != 0 && (v9 = v8, v10 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr), v11 = CFDictionaryGetValue(v9, v10), CFRelease(v10), v11))
  {
    Value = CFDictionaryGetValue(v11, @"append");
    *a4 = CFBooleanGetValue(Value) != 0;
    return CFDictionaryGetValue(v11, @"header");
  }

  else if (*(this + 32) == 1)
  {
    result = *(this + 3);
    if (result)
    {
      return DCSDictionary::customHTMLHeader(result, a2, valuePtr, a4);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t DCSDictionary::baseURL(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    (*(**(this + 1) + 352))(*(this + 1));
    v3 = *(**(this + 1) + 32);

    return v3();
  }

  return result;
}

const __CFArray *DCSDictionary::languages(DCSDictionary *this)
{
  if (*(this + 12))
  {
    v5 = 0;
    v2 = DCSDictionary::checkAssetLanguageInfo(this, &v5);
    if (!v5)
    {
      return v2;
    }
  }

  else
  {
    v2 = 0;
  }

  if (!DCSDictionary::createDictionaryObj(this))
  {
    return v2;
  }

  v3 = *(**(this + 1) + 96);

  return v3();
}

const __CFArray *DCSDictionary::checkAssetLanguageInfo(DCSDictionary *this, BOOL *a2)
{
  Value = CFDictionaryGetValue(*(this + 12), @"Languages");
  if (Value)
  {
    Mutable = Value;
    *a2 = 0;
LABEL_11:
    if (CFArrayGetCount(Mutable) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
      v18 = CFDictionaryGetValue(ValueAtIndex, @"DCSDictionaryIndexLanguage");
      if (v18)
      {
        if (CFStringCompare(v18, @"*", 0) == kCFCompareEqualTo)
        {
          *a2 = 1;
        }
      }
    }

    return Mutable;
  }

  v21 = a2;
  pthread_mutex_lock((this + 104));
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = DCSMAGetAssetLanguage(*(this + 12));
  v20 = this;
  v7 = DCSMAGetAssetAttributes(*(this + 12));
  v8 = CFDictionaryGetValue(v7, @"IndexLanguages");
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      v13 = MEMORY[0x277CBF150];
      do
      {
        v14 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], v13);
        v15 = CFArrayGetValueAtIndex(v9, v12);
        CFDictionarySetValue(v14, @"DCSDictionaryIndexLanguage", v15);
        if (v6)
        {
          v16 = v6;
        }

        else
        {
          v16 = v15;
        }

        CFDictionarySetValue(v14, @"DCSDictionaryDescriptionLanguage", v16);
        CFArrayAppendValue(Mutable, v14);
        CFRelease(v14);
        ++v12;
      }

      while (v11 != v12);
    }
  }

  CFDictionarySetValue(*(v20 + 12), @"Languages", Mutable);
  CFRelease(Mutable);
  pthread_mutex_unlock((v20 + 104));
  a2 = v21;
  *v21 = 0;
  if (Mutable)
  {
    goto LABEL_11;
  }

  return Mutable;
}

uint64_t DCSDictionary::styleSheetURLs(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 104);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::styleSheetContents(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 112);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::privateFontURLs(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 120);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::XSLTData(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 128);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::elementXPaths(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 136);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::preferenceHTML(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 160);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::preference(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 168);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::defaultPreference(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 176);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::setPreference(DCSDictionary *this, const __CFDictionary *a2)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v4 = *(**(this + 1) + 184);

    return v4();
  }

  return result;
}

uint64_t DCSDictionary::migrateOldPreference(DCSDictionary *this, const __CFDictionary *a2)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v4 = *(**(this + 1) + 192);

    return v4();
  }

  return result;
}

uint64_t DCSDictionary::isLocalizableDictionary(DCSDictionary *this)
{
  if (*(this + 12))
  {
    v5 = 0;
    DCSDictionary::checkAssetLanguageInfo(this, &v5);
    return v5;
  }

  if (!DCSDictionary::createDictionaryObj(this))
  {
    return 0;
  }

  v4 = *(**(this + 1) + 216);

  return v4();
}

uint64_t DCSDictionary::isSortableDictionary(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 224);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::isAppearanceAwareDictionary(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 232);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::isLanguageDictionary(DCSDictionary *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    return DCSMAIsLanguageDictionaryAsset(v2) != 0;
  }

  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v4 = *(**(this + 1) + 240);

    return v4();
  }

  return result;
}

uint64_t DCSDictionary::previewMarkupVersion(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 248);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::primaryLocale(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 256);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::createSessionInfo(DCSDictionary *this, DCSSearchSession *a2, const __CFString *a3)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v5 = *(**(this + 1) + 264);

    return v5();
  }

  return result;
}

uint64_t DCSDictionary::releaseSessionInfo(DCSDictionary *this, void *a2)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v4 = *(**(this + 1) + 272);

    return v4();
  }

  return result;
}

uint64_t DCSDictionary::scheduleSession(DCSDictionary *this, void *a2, __CFRunLoop *a3, const __CFString *a4)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v6 = *(**(this + 1) + 280);

    return v6();
  }

  return result;
}

uint64_t DCSDictionary::unscheduleSession(DCSDictionary *this, void *a2, __CFRunLoop *a3, const __CFString *a4)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v6 = *(**(this + 1) + 288);

    return v6();
  }

  return result;
}

uint64_t DCSDictionary::searchByString(DCSDictionary *this, const __CFString *a2)
{
  if (DCSDictionary::createDictionaryObj(this))
  {
    (*(**(this + 1) + 352))(*(this + 1));
    v3 = *(**(this + 1) + 296);

    return v3();
  }

  else
  {
    if (DCSMAPrepareMobileAssetQuery() && !*(this + 6) && *(this + 12) && DCSMAPrepareMobileAssetQuery() == 1)
    {
      DCSDictionary::startGlobalDictionariesEnvironment(*(this + 12));
    }

    return 0;
  }
}

uint64_t DCSDictionary::searchByReference(DCSDictionary *this, const __CFString *a2)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    (*(**(this + 1) + 352))(*(this + 1));
    v4 = *(**(this + 1) + 304);

    return v4();
  }

  return result;
}

uint64_t DCSDictionary::copyData(DCSDictionary *this, DCSRecord *a2)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v4 = *(**(this + 1) + 312);

    return v4();
  }

  return result;
}

uint64_t DCSDictionary::copyDataURL(DCSDictionary *this, DCSRecord *a2)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v4 = *(**(this + 1) + 320);

    return v4();
  }

  return result;
}

uint64_t DCSDictionary::hasRecord(DCSDictionary *this, const __CFString *a2, uint64_t a3, unsigned __int8 *a4)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v6 = *(**(this + 1) + 328);

    return v6();
  }

  return result;
}

uint64_t DCSDictionary::isSupportedDefinitionStyle(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 336);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::purgeInactiveData(DCSDictionary *this)
{
  result = DCSDictionary::createDictionaryObj(this);
  if (result)
  {
    v3 = *(**(this + 1) + 344);

    return v3();
  }

  return result;
}

uint64_t DCSDictionary::dictionaryFlag(DCSDictionary *this)
{
  if (*(this + 11) == -1)
  {
    *(this + 11) = 0;
    v2 = DCSDictionary::primaryLanguage(this);
    if (v2)
    {
      v3 = v2;
      if (!CFStringHasPrefix(v2, @"zh"))
      {
        if (CFStringHasPrefix(v3, @"ko"))
        {
          v4 = 48;
          goto LABEL_7;
        }

        if (!CFStringHasPrefix(v3, @"hi"))
        {
          return *(this + 11);
        }
      }

      v4 = 14;
LABEL_7:
      *(this + 11) = v4;
    }
  }

  return *(this + 11);
}

uint64_t DCSDictionary::resetSubDictionaries(uint64_t this)
{
  if ((*(this + 65) & 1) == 0)
  {
    v1 = this;
    *(this + 65) = 1;
    if (!*(this + 40) || (this = DCSDictionary::updateSubDictionaryInfo(this), this))
    {
      v2 = SyncSingleton<DCSEnvironment>::instance();
      v3 = *(v1 + 48);
      v4 = *(v1 + 8);
      if (v4)
      {
        DictionaryCacheInfo = *(v1 + 40);
        if (!DictionaryCacheInfo)
        {
          DictionaryCacheInfo = _CreateDictionaryCacheInfo(v4);
          *(v1 + 40) = DictionaryCacheInfo;
          *(v1 + 33) = 1;
        }
      }

      else
      {
        DictionaryCacheInfo = 0;
      }

      DCSEnvironment::updateDictionaryCacheInfo(v2, v3, DictionaryCacheInfo);
      *(v1 + 64) = 0;
      this = DCSDictionary::subDictionaries(v1);
    }

    *(v1 + 65) = 0;
  }

  return this;
}

uint64_t DCSDictionary::updateSubDictionaryInfo(DCSDictionary *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    v8 = 0;
    return v8 & 1;
  }

  v3 = (*(*v2 + 144))(v2);
  if (v3 && (v4 = v3, (Count = CFArrayGetCount(v3)) != 0))
  {
    v6 = Count;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v6 >= 1)
    {
      v8 = 0;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v8 |= *(ValueAtIndex + 1) == 0;
        DictionaryCacheInfo = _CreateDictionaryCacheInfo(ValueAtIndex);
        CFArrayAppendValue(Mutable, DictionaryCacheInfo);
        CFRelease(DictionaryCacheInfo);
      }

      goto LABEL_10;
    }
  }

  else
  {
    Mutable = 0;
  }

  v8 = 0;
LABEL_10:
  Value = CFDictionaryGetValue(*(this + 5), @"sub dictionaries");
  if ((Mutable != 0) != (Value != 0))
  {
LABEL_11:
    if ((*(this + 33) & 1) == 0)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(this + 5));
      CFRelease(*(this + 5));
      *(this + 5) = MutableCopy;
      *(this + 33) = 1;
    }

    v14 = *(this + 5);
    if (!Mutable)
    {
      CFDictionaryRemoveValue(v14, @"sub dictionaries");
      v8 = 1;
      return v8 & 1;
    }

    CFDictionarySetValue(v14, @"sub dictionaries", Mutable);
    v8 = 1;
    goto LABEL_21;
  }

  if (Mutable && Value)
  {
    if (!CFEqual(Value, Mutable))
    {
      goto LABEL_11;
    }

LABEL_21:
    CFRelease(Mutable);
    return v8 & 1;
  }

  if (Mutable)
  {
    goto LABEL_21;
  }

  return v8 & 1;
}

__CFDictionary *_CreateDictionaryCacheInfo(DCSBaseDictionary *a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBF138];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = SyncSingleton<DCSEnvironment>::instance();
  CurrentAppLocalization = DCSEnvironment::getCurrentAppLocalization(v5);
  keys[0] = CurrentAppLocalization;
  values = (*(*a1 + 48))(a1);
  v7 = CFDictionaryCreate(0, keys, &values, 1, v2, v3);
  CFDictionaryAddValue(Mutable, @"localized names", v7);
  CFRelease(v7);
  values = (*(*a1 + 56))(a1);
  if (values)
  {
    v8 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(Mutable, @"localized detailed names", v8);
    CFRelease(v8);
  }

  v9 = (*(*a1 + 88))(a1);
  if (v9)
  {
    CFDictionaryAddValue(Mutable, @"primary language", v9);
  }

  v10 = (*(*a1 + 64))(a1);
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    if (!CompareLanguageCode(v9, CurrentAppLocalization, 0))
    {
      goto LABEL_14;
    }

    v11 = (*(*a1 + 72))(a1);
  }

  if (v11)
  {
    CFDictionaryAddValue(Mutable, @"native name", v11);
  }

LABEL_14:
  v13 = (*(*a1 + 208))(a1);
  v14 = MEMORY[0x277CBED28];
  if (!v13)
  {
    v14 = MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"network", *v14);
  v15 = (*(*a1 + 24))(a1);
  CFDictionaryAddValue(Mutable, @"identifier", v15);
  v16 = (*(*a1 + 40))(a1);
  CFDictionaryAddValue(Mutable, @"name", v16);
  v17 = (*(*a1 + 80))(a1);
  CFDictionaryAddValue(Mutable, @"version", v17);
  v18 = (*(*a1 + 144))(a1);
  if (v18)
  {
    v19 = v18;
    Count = CFArrayGetCount(v18);
    if (Count)
    {
      v21 = Count;
      v22 = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
      if (v21 >= 1)
      {
        for (i = 0; i != v21; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
          DictionaryCacheInfo = _CreateDictionaryCacheInfo(ValueAtIndex);
          CFArrayAppendValue(v22, DictionaryCacheInfo);
          CFRelease(DictionaryCacheInfo);
        }
      }

      if (v22)
      {
        CFDictionarySetValue(Mutable, @"sub dictionaries", v22);
        CFRelease(v22);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return Mutable;
}

const void *DCSDictionaryManager::dictionary(DCSDictionaryManager *this, const __CFURL *a2, __CFDictionary *a3)
{
  if ((_initedCachedDictionaries & 1) == 0)
  {
    pthread_once(&DCSDictionaryManager::dictionary(__CFURL const*,__CFDictionary *,BOOL)::once_control, _InitializeCachedDictionaries);
  }

  if (a3)
  {
    v5 = DCSMAGetAssetAttributes(a3);
    Value = CFDictionaryGetValue(v5, @"DictionaryIdentifier");
    if (!Value)
    {
      Value = CFDictionaryGetValue(v5, @"DictionaryPackageName");
    }

    v7 = CFStringCreateWithFormat(0, 0, @"asset:/%@", Value);
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v7 = CopyFileObjectIdentifierAtURL(a2);
  }

  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  pthread_rwlock_rdlock((_cachedDictionaries + 16));
  v9 = CFDictionaryGetValue(*(_cachedDictionaries + 8), v8);
  pthread_rwlock_unlock((_cachedDictionaries + 16));
  if (v9)
  {
    CFRetain(v9);
  }

  else
  {
    v10 = _cachedDictionaries;
    pthread_rwlock_wrlock((_cachedDictionaries + 16));
    v9 = CFDictionaryGetValue(*(_cachedDictionaries + 8), v8);
    if (!v9)
    {
      operator new();
    }

    pthread_rwlock_unlock((v10 + 16));
  }

  CFRelease(v8);
  return v9;
}

void _InitializeCachedDictionaries(void)
{
  operator new();
}

{
  operator new();
}

void DCSDictionaryManager::remove(DCSDictionaryManager *this, const __DCSDictionary *a2)
{
  if (!a2)
  {
    return;
  }

  pthread_rwlock_wrlock((_cachedDictionaries + 16));
  v3 = *(a2 + 2);
  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = CopyFileObjectIdentifierAtURL(v4);
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  v8 = *(v3 + 96);
  if (!v8)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v9 = DCSMAGetAssetAttributes(v8);
  Value = CFDictionaryGetValue(v9, @"DictionaryIdentifier");
  v6 = CFRetain(Value);
  if (!v6)
  {
    v11 = CFDictionaryGetValue(v9, @"DictionaryPackageName");
    v5 = CFRetain(v11);
    goto LABEL_4;
  }

LABEL_5:
  if (CFDictionaryContainsKey(*(_cachedDictionaries + 8), v6))
  {
    CFDictionaryRemoveValue(*(_cachedDictionaries + 8), v6);
  }

  CFRelease(v6);
  v7 = (_cachedDictionaries + 16);

  pthread_rwlock_unlock(v7);
}

uint64_t DCSDictionaryManager::updateOrders(DCSDictionaryManager *this)
{
  v19[1] = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock((_cachedDictionaries + 16));
  Count = CFDictionaryGetCount(*(_cachedDictionaries + 8));
  v19[0] = v19;
  MEMORY[0x28223BE20](Count);
  v3 = (v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v2 >= 0x200)
  {
    v4 = 512;
  }

  else
  {
    v4 = v2;
  }

  bzero(v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  CFDictionaryGetKeysAndValues(*(_cachedDictionaries + 8), 0, v3);
  v5 = SyncSingleton<DCSEnvironment>::instance();
  ActiveDictionaryInfos = DCSEnvironment::getActiveDictionaryInfos(v5);
  v7 = ActiveDictionaryInfos;
  if (ActiveDictionaryInfos)
  {
    v8 = CFArrayGetCount(ActiveDictionaryInfos);
  }

  else
  {
    v8 = 0;
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v10 = v3[i];
      if (v10)
      {
        v11 = v10[2];
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v11 + 48);
      if (v12)
      {
        v13 = v8 < 1;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v14);
          Value = CFDictionaryGetValue(ValueAtIndex, @"URL");
          if (Value)
          {
            if (CFEqual(Value, v12))
            {
              break;
            }
          }

          if (v8 == ++v14)
          {
            goto LABEL_22;
          }
        }

        *(v11 + 72) = v14;
      }

LABEL_22:
      ;
    }
  }

  result = pthread_rwlock_unlock((_cachedDictionaries + 16));
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DCSDictionaryManager::updatePreferences(DCSDictionaryManager *this)
{
  v12[1] = *MEMORY[0x277D85DE8];
  pthread_rwlock_rdlock((_cachedDictionaries + 16));
  Count = CFDictionaryGetCount(*(_cachedDictionaries + 8));
  MEMORY[0x28223BE20](Count);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v2 >= 0x200)
  {
    v4 = 512;
  }

  else
  {
    v4 = v2;
  }

  bzero(v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  CFDictionaryGetKeysAndValues(*(_cachedDictionaries + 8), 0, v3);
  if (Count >= 1)
  {
    do
    {
      if (*v3)
      {
        v5 = *(*v3 + 2);
        if (v5)
        {
          if (*(v5 + 16) == 1)
          {
            v6 = *(v5 + 24);
            if (!v6 || !*v6)
            {
              v7 = SyncSingleton<DCSEnvironment>::instance();
              v8 = DCSDictionary::identifier(v5);
              DictionaryPreference = DCSEnvironment::getDictionaryPreference(v7, v8);
              if (DictionaryPreference)
              {
                DCSDictionary::setPreference(v5, DictionaryPreference);
              }
            }
          }
        }
      }

      ++v3;
      --Count;
    }

    while (Count);
  }

  result = pthread_rwlock_unlock((_cachedDictionaries + 16));
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void SyncMutableCFSpecificType<__CFDictionary *>::~SyncMutableCFSpecificType(SyncMutableCFRef *a1)
{
  SyncMutableCFRef::~SyncMutableCFRef(a1);

  JUMPOUT(0x223D5E5E0);
}

void SyncMutableCFRef::~SyncMutableCFRef(SyncMutableCFRef *this)
{
  SyncMutableCFRef::~SyncMutableCFRef(this);

  JUMPOUT(0x223D5E5E0);
}

{
  *this = &unk_282F95740;
  pthread_rwlock_destroy((this + 16));
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t _DCSDictionaryInitialize(void)
{
  result = _CFRuntimeRegisterClass();
  _DCSDictionaryID = result;
  return result;
}

void _DCSDictionaryFinalize(const __DCSDictionary *a1)
{
  v2 = *(a1 + 2);
  v3 = *(v2 + 3);
  if (!v3 || !*v3)
  {
    v4 = SyncSingleton<DCSDictionaryManager>::instance();
    DCSDictionaryManager::remove(v4, a1);
  }

  DCSDictionary::~DCSDictionary(v2);

  JUMPOUT(0x223D5E5E0);
}

uint64_t _DCSDictionaryEqual(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      return CFEqual(v4, v5);
    }
  }

  v7 = *(v2 + 96);
  return v7 && (v8 = *(v3 + 96)) != 0 && v7 == v8;
}

CFStringRef _DCSDictionaryCopyFormattingDesc(void *a1, const __CFDictionary *a2)
{
  v3 = a1[2];
  v4 = CFGetAllocator(a1);
  v5 = DCSDictionary::name(v3);
  return CFStringCreateWithFormat(v4, a2, @"<%@>", v5);
}

CFStringRef _DCSDictionaryCopyDebugDesc(void *a1)
{
  v1 = a1[2];
  v2 = CFGetAllocator(a1);
  v3 = *(v1 + 6);
  if (v3)
  {
    v4 = CFURLGetString(v3);
  }

  else
  {
    v4 = DCSDictionary::name(v1);
  }

  return CFStringCreateWithFormat(v2, 0, @"<DCSDictionaryRef %p>{URL = %@}", v1, v4);
}

uint64_t SyncSingleton<DCSDictionaryManager>::instance()
{
  if ((SyncSingleton<DCSDictionaryManager>::_instantiated & 1) == 0)
  {
    pthread_mutex_lock(&SyncSingleton<DCSDictionaryManager>::_mutex);
    if ((SyncSingleton<DCSDictionaryManager>::_instantiated & 1) == 0)
    {
      operator new();
    }

    pthread_mutex_unlock(&SyncSingleton<DCSDictionaryManager>::_mutex);
  }

  return SyncSingleton<DCSDictionaryManager>::_instance;
}

void DCSUsageTrackingCoreAnalyticsLogging::DCSUsageTrackingCoreAnalyticsLogging(DCSUsageTrackingCoreAnalyticsLogging *this)
{
  *this = &unk_282F957C8;
  *(this + 1) = 0;
  *(this + 1) = xpc_dictionary_create(0, 0, 0);
}

void DCSUsageTrackingCoreAnalyticsLogging::~DCSUsageTrackingCoreAnalyticsLogging(DCSUsageTrackingCoreAnalyticsLogging *this)
{
  *this = &unk_282F957C8;
  v1 = *(this + 1);
  if (v1)
  {
    xpc_release(v1);
  }
}

{
  DCSUsageTrackingCoreAnalyticsLogging::~DCSUsageTrackingCoreAnalyticsLogging(this);

  JUMPOUT(0x223D5E5E0);
}

void DCSUsageTrackingCoreAnalyticsLogging::doLogging(DCSUsageTrackingCoreAnalyticsLogging *this)
{
  v1 = kDCSUsageTrackingDoman;
  v2 = *(this + 1);
  if (_CallAnalyticsSendEventLazy(char const*,void *)::_OnceToken != -1)
  {
    DCSUsageTrackingCoreAnalyticsLogging::doLogging();
  }

  if (_CallAnalyticsSendEventLazy(char const*,void *)::_AnalyticsSendEventLazyProc)
  {
    xpc_retain(v2);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___ZL27_CallAnalyticsSendEventLazyPKcPv_block_invoke_2;
    v3[3] = &__block_descriptor_tmp_22;
    v3[4] = v2;
    _CallAnalyticsSendEventLazy(char const*,void *)::_AnalyticsSendEventLazyProc(v1, v3);
  }
}

void DCSUsageTrackingASLLogging::DCSUsageTrackingASLLogging(DCSUsageTrackingASLLogging *this)
{
  *this = &unk_282F95810;
  *(this + 1) = 0;
  v2 = asl_new(0);
  *(this + 1) = v2;
  asl_set(v2, "com.apple.message.domain", kDCSUsageTrackingDoman);
}

void DCSUsageTrackingASLLogging::~DCSUsageTrackingASLLogging(DCSUsageTrackingASLLogging *this)
{
  *this = &unk_282F95810;
  if (*(this + 1))
  {
    MEMORY[0x223D5E6F0]();
  }
}

{
  DCSUsageTrackingASLLogging::~DCSUsageTrackingASLLogging(this);

  JUMPOUT(0x223D5E5E0);
}

uint64_t DCSUsageTrackingASLLogging::setSummarize(DCSUsageTrackingASLLogging *this, int a2)
{
  v2 = *(this + 1);
  if (a2)
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  return asl_set(v2, "com.apple.message.summarize", v3);
}

void DCSUsageTrackingAggregateLogging::logApplicationName(DCSUsageTrackingAggregateLogging *this, const char *a2)
{
  v2 = CFStringCreateWithFormat(0, 0, @"%s.%s.%s", kDCSUsageTrackingDoman, "applicationName", a2);
  if (v2)
  {
    v3 = v2;
    ADClientAddValueForScalarKey();

    CFRelease(v3);
  }
}

void DCSUsageTrackingAggregateLogging::logDictionaryIdentifier(DCSUsageTrackingAggregateLogging *this, const char *a2)
{
  v2 = CFStringCreateWithFormat(0, 0, @"%s.%s.%s", kDCSUsageTrackingDoman, "dictionaryIdentifier", a2);
  if (v2)
  {
    v3 = v2;
    ADClientAddValueForScalarKey();

    CFRelease(v3);
  }
}

void DCSUsageTrackingAggregateLogging::logPrimaryLanguage(DCSUsageTrackingAggregateLogging *this, const char *a2)
{
  v2 = CFStringCreateWithFormat(0, 0, @"%s.%s.%s", kDCSUsageTrackingDoman, "primaryLanguage", a2);
  if (v2)
  {
    v3 = v2;
    ADClientAddValueForScalarKey();

    CFRelease(v3);
  }
}

void *___ZL27_CallAnalyticsSendEventLazyPKcPv_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 1);
  if (result)
  {
    result = dlsym(result, "analytics_send_event_lazy");
    _CallAnalyticsSendEventLazy(char const*,void *)::_AnalyticsSendEventLazyProc = result;
  }

  return result;
}

void DCSEnvironment::DCSEnvironment(DCSEnvironment *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  *(this + 108) = -1;
  *(this + 120) = 0u;
  *(this + 136) = 0;
  *(this + 18) = -1;
  *(this + 76) = 0;
  *(this + 154) = 0;
  *(this + 20) = 0;
  *(this + 168) = 0;
  *(this + 22) = 0;
  *(this + 92) = 0;
  v2 = (this + 584);
  *(this + 75) = 0;
  *(this + 584) = 0u;
  pthread_mutex_init((this + 200), 0);
  pthread_mutex_init((this + 264), 0);
  pthread_mutex_init((this + 328), 0);
  pthread_mutex_init((this + 392), 0);
  pthread_mutex_init((this + 456), 0);
  pthread_mutex_init((this + 520), 0);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(this + 24) = Mutable;
  DCSDictionary::startGlobalDictionariesEnvironment(Mutable);
  DCSMAPrepareMobileAssetQuery();
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
    *(this + 185) = InfoDictionary == 0;
    if (InfoDictionary)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleIdentifier");
      if (Value)
      {
        v7 = Value;
        *(this + 185) = CFStringCompare(Value, @"com.apple.lookupd", 0) == kCFCompareEqualTo;
        if (CFStringHasPrefix(v7, @"com.apple."))
        {
          v8 = v7;
        }

        else
        {
          v8 = @"com.apple.lookupd";
        }
      }

      else
      {
        *(this + 185) = 1;
        v8 = @"Unknown";
      }

      *v2 = CFStringCreateCopy(0, v8);
    }
  }

  else
  {
    *(this + 185) = 1;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, this, ActiveDictionaryChangedCallback, @"DCSActiveDictionariesChangedDistributedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, this, _PurgeInactiveDataCallback, @"UIApplicationDidEnterBackgroundNotification", 0, CFNotificationSuspensionBehaviorDrop);
}

void ___ZN14DCSEnvironmentC2Ev_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    DCSEnvironment::resetActiveDictionaries(*(a1 + 32), 0);
  }
}

void DCSEnvironment::resetActiveDictionaries(DCSEnvironment *this, int a2)
{
  if (*(this + 6))
  {
    pthread_mutex_lock((this + 200));
    v4 = *(this + 6);
    if (v4)
    {
      CFRelease(v4);
      *(this + 6) = 0;
    }

    pthread_mutex_unlock((this + 200));
  }

  if (*(this + 7))
  {
    pthread_mutex_lock((this + 264));
    v5 = *(this + 7);
    if (v5)
    {
      CFRelease(v5);
      *(this + 7) = 0;
    }

    pthread_mutex_unlock((this + 264));
  }

  if (a2)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();

    CFNotificationCenterPostNotification(LocalCenter, @"DCSActiveDictionariesChangedNotification", 0, 0, 0);
  }
}

void ActiveDictionaryChangedCallback(__CFNotificationCenter *a1, DCSEnvironment *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  DCSLog(16, @"kDCSActiveDictionariesChangedDistributedNotification caught", a3, a4, a5);

  DCSEnvironment::resetActiveDictionaries(a2, 1);
}

void _PurgeInactiveDataCallback(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = SyncSingleton<DCSEnvironment>::instance();
  v6 = DCSEnvironment::copyActiveDictionaries(v5, 0);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        if (ValueAtIndex)
        {
          v12 = *(ValueAtIndex + 2);
          if (v12)
          {
            DCSDictionary::purgeInactiveData(v12);
          }
        }
      }
    }

    CFRelease(v7);
  }
}

void DCSEnvironment::~DCSEnvironment(DCSEnvironment *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 15);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    CFRelease(v9);
  }

  if (*this)
  {
    CFRelease(*this);
  }

  v10 = *(this + 2);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 73);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 74);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 75);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(this + 20);
  if (v16)
  {
    CFRelease(v16);
  }

  pthread_mutex_destroy((this + 200));
  pthread_mutex_destroy((this + 264));
  pthread_mutex_destroy((this + 328));
  pthread_mutex_destroy((this + 392));
  pthread_mutex_destroy((this + 456));
  pthread_mutex_destroy((this + 520));
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, this, @"DCSActiveDictionariesChangedDistributedNotification", 0);
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, this, @"UIApplicationDidEnterBackgroundNotification", 0);
}

uint64_t DCSEnvironment::getFrameworkBundle(DCSEnvironment *this)
{
  result = *this;
  if (!result)
  {
    v3 = CFStringCreateWithCString(0, "/System/Library/PrivateFrameworks/DictionaryServices.framework", 0x8000100u);
    v4 = CFURLCreateWithFileSystemPath(0, v3, kCFURLPOSIXPathStyle, 1u);
    *this = CFBundleCreate(0, v4);
    CFRelease(v4);
    CFRelease(v3);
    return *this;
  }

  return result;
}

CFStringRef DCSEnvironment::getCurrentAppLocalization(DCSEnvironment *this)
{
  result = *(this + 1);
  if (!result)
  {
    MainBundle = CFBundleGetMainBundle();
    v4 = CFBundleCopyBundleLocalizations(MainBundle);
    if (v4)
    {
      v5 = v4;
      v6 = CFBundleCopyPreferredLocalizationsFromArray(v4);
      if (v6)
      {
        v7 = v6;
        ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
        *(this + 1) = CFStringCreateCopy(0, ValueAtIndex);
        CFRelease(v7);
      }

      else
      {
        *(this + 1) = CFStringCreateCopy(0, @"English");
      }

      CFRelease(v5);
      return *(this + 1);
    }

    else
    {
      result = CFStringCreateCopy(0, @"English");
      *(this + 1) = result;
    }
  }

  return result;
}

CFStringRef DCSEnvironment::getCurrentSystemLanguage(DCSEnvironment *this)
{
  result = *(this + 2);
  if (!result)
  {
    v3 = CFLocaleCopyPreferredLanguages();
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v3;
    if (CFArrayGetCount(v3) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      if (CFStringCompare(ValueAtIndex, @"en", 0) == kCFCompareEqualTo)
      {
        FallbackEnglishLanguage = DCSEnvironment::getFallbackEnglishLanguage(0);
        Copy = CFStringCreateCopy(0, FallbackEnglishLanguage);
        *(this + 2) = Copy;
        if (Copy)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      Copy = *(this + 2);
      if (!Copy)
      {
LABEL_6:
        *(this + 2) = CFStringCreateCopy(Copy, ValueAtIndex);
      }
    }

LABEL_7:
    CFRelease(v4);
LABEL_8:
    result = *(this + 2);
    if (!result)
    {
      result = CFStringCreateCopy(0, @"en_US");
      *(this + 2) = result;
    }
  }

  return result;
}

CFTypeRef DCSEnvironment::getFallbackEnglishLanguage(DCSEnvironment *this)
{
  result = DCSEnvironment::getFallbackEnglishLanguage(void)::_FallbackEnglishLanguage;
  if (!DCSEnvironment::getFallbackEnglishLanguage(void)::_FallbackEnglishLanguage)
  {
    v2 = CFLocaleCopyCurrent();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x223D5DD40]();
      DCSEnvironment::getFallbackEnglishLanguage(void)::_FallbackEnglishLanguage = CopyPreferredEnglishLanguage(v4);
      CFRelease(v3);
      return DCSEnvironment::getFallbackEnglishLanguage(void)::_FallbackEnglishLanguage;
    }

    else
    {
      result = CopyPreferredEnglishLanguage(0);
      DCSEnvironment::getFallbackEnglishLanguage(void)::_FallbackEnglishLanguage = result;
    }
  }

  return result;
}

uint64_t DCSEnvironment::getCurrentPreferredLanguages(DCSEnvironment *this, uint64_t *a2)
{
  if (!*(this + 3))
  {
    *(this + 3) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *(this + 4) = -1;
    v4 = CFLocaleCopyPreferredLanguages();
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (CFStringCompare(ValueAtIndex, @"en", 0) == kCFCompareEqualTo)
        {
          ValueAtIndex = DCSEnvironment::getFallbackEnglishLanguage(0);
          *(this + 4) = i;
        }

        CFArrayAppendValue(*(this + 3), ValueAtIndex);
      }
    }

    CFRelease(v4);
    if (!CFArrayGetCount(*(this + 3)))
    {
      CFArrayAppendValue(*(this + 3), @"en_US");
    }
  }

  if (a2)
  {
    *a2 = *(this + 4);
  }

  return *(this + 3);
}

CFStringRef DCSEnvironment::getUserAgentName(DCSEnvironment *this)
{
  result = *(this + 5);
  if (!result)
  {
    FrameworkBundle = DCSEnvironment::getFrameworkBundle(this);
    InfoDictionary = CFBundleGetInfoDictionary(FrameworkBundle);
    Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleVersion");
    v6 = @"0";
    if (Value)
    {
      v6 = Value;
    }

    result = CFStringCreateWithFormat(0, 0, @"AppleDictionaryService/%@", v6);
    *(this + 5) = result;
  }

  return result;
}

uint64_t DCSEnvironment::getActiveDictionaryInfos(DCSEnvironment *this)
{
  result = *(this + 6);
  if (!result)
  {
    pthread_mutex_lock((this + 200));
    if (!*(this + 6))
    {
      ActiveDictionaryInfoList = DCSEnvironment::loadActiveDictionaryInfoList(this);
      *(this + 6) = ActiveDictionaryInfoList;
      if (!ActiveDictionaryInfoList)
      {
        *(this + 6) = CFArrayCreateMutable(0, 0, 0);
      }
    }

    pthread_mutex_unlock((this + 200));
    return *(this + 6);
  }

  return result;
}

const __CFArray *DCSEnvironment::loadActiveDictionaryInfoList(CFMutableDictionaryRef *this)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  CFDictionaryRemoveAllValues(this[24]);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
      Value = CFDictionaryGetValue(ValueAtIndex, @"asset");
      if (Value)
      {
        v8 = DCSMAGetAssetLanguage(Value);
        DCSEnvironment::storeActiveDictionaryLanguage(this, v8);
      }

      else
      {
        v9 = CFDictionaryGetValue(ValueAtIndex, @"URL");
        if (v9)
        {
          v10 = DCSEnvironment::copyPrimaryLanguageOfDictionaryURL(v9, v9);
          DCSEnvironment::storeActiveDictionaryLanguage(this, v10);
          if (v10)
          {
            CFRelease(v10);
          }
        }
      }
    }
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t DCSEnvironment::getActiveDictionaries(DCSEnvironment *this)
{
  result = *(this + 7);
  if (!result)
  {
    pthread_mutex_lock((this + 264));
    if (*(this + 7))
    {
      DCSLog(16, @"DCSEnvironment::getActiveDictionaries hit cache");
    }

    else
    {
      Count = DCSDictionaryAssetCopyInstalledDictionaries();
      v4 = Count;
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      DCSLog(16, @"DCSEnvironment::getActiveDictionaries queried and found %ld assets", Count);
      *(this + 7) = v4;
    }

    pthread_mutex_unlock((this + 264));
    return *(this + 7);
  }

  return result;
}

__CFArray *DCSEnvironment::copyActiveDictionaries(DCSEnvironment *this, const __CFDictionary *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"DCSFilterOptionAllowNetworkServices");
    if (Value)
    {
      v25 = CFBooleanGetValue(Value) != 0;
    }

    else
    {
      v25 = 0;
    }

    v6 = CFDictionaryGetValue(a2, @"DCSFilterOptionIndexLanguage");
    v5 = CFDictionaryGetValue(a2, @"DCSFilterOptionDescriptionLanguage");
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v25 = 0;
  }

  ActiveDictionaries = DCSEnvironment::getActiveDictionaries(this);
  v22 = this;
  pthread_mutex_lock((this + 264));
  theArray = ActiveDictionaries;
  if (ActiveDictionaries)
  {
    Count = CFArrayGetCount(ActiveDictionaries);
    if (Count >= 1)
    {
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v10 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex[2];
        }

        else
        {
          v11 = 0;
        }

        if (!v25 && (DCSDictionary::isNetworkDictionary(v11) & 1) != 0)
        {
          goto LABEL_24;
        }

        if (!(v6 | v5))
        {
          goto LABEL_23;
        }

        v12 = DCSDictionary::languages(v11);
        if (v12)
        {
          break;
        }

LABEL_24:
        if (++v8 == Count)
        {
          goto LABEL_25;
        }
      }

      v13 = v12;
      v14 = CFArrayGetCount(v12);
      if (v14 >= 1)
      {
        v15 = v14;
        v16 = 0;
        while (1)
        {
          v17 = CFArrayGetValueAtIndex(v13, v16);
          v18 = CFDictionaryGetValue(v17, @"DCSDictionaryIndexLanguage");
          if (DCSEnvironment::checkLanguageMatch(v18, v18, v6))
          {
            v19 = CFDictionaryGetValue(v17, @"DCSDictionaryDescriptionLanguage");
            if (DCSEnvironment::checkLanguageMatch(v19, v19, v5))
            {
              break;
            }
          }

          if (v15 == ++v16)
          {
            goto LABEL_24;
          }
        }
      }

LABEL_23:
      CFArrayAppendValue(Mutable, v10);
      goto LABEL_24;
    }
  }

LABEL_25:
  pthread_mutex_unlock((v22 + 264));
  v20 = Mutable;
  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return v20;
}

uint64_t DCSEnvironment::checkLanguageMatch(DCSEnvironment *this, CFStringRef theString1, const __CFString *a3)
{
  if (!a3 || CFStringCompare(theString1, @"*", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, theString1);
  v6 = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, a3);
  v7 = 1;
  if (CFStringCompare(CanonicalLanguageIdentifierFromString, v6, 1uLL))
  {
    if (CFStringFind(v6, @"-", 0).location == -1)
    {
      v7 = CompareLanguageCode(CanonicalLanguageIdentifierFromString, v6, 0);
    }

    else
    {
      v7 = 0;
    }
  }

  CFRelease(CanonicalLanguageIdentifierFromString);
  CFRelease(v6);
  return v7;
}

uint64_t DCSEnvironment::setActiveDictionaries(DCSEnvironment *this, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  DCSEnvironment::getActiveDictionaries(this);
  pthread_mutex_lock((this + 264));
  v5 = CFArrayGetCount(*(this + 7));
  v6 = Count != v5;
  if (Count == v5 && Count >= 1)
  {
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      v10 = CFArrayGetValueAtIndex(*(this + 7), v8);
      v11 = CFEqual(ValueAtIndex, v10);
      v6 = v11 == 0;
      ++v8;
      if (v11)
      {
        v12 = v8 < Count;
      }

      else
      {
        v12 = 0;
      }
    }

    while (v12);
  }

  if (v6)
  {
    Copy = CFArrayCreateCopy(0, theArray);
    v14 = *(this + 7);
    if (v14)
    {
      CFRelease(v14);
    }

    *(this + 7) = Copy;
  }

  return pthread_mutex_unlock((this + 264));
}

uint64_t DCSEnvironment::prepareDefaultAssets(DCSEnvironment *this)
{
  DCSEnvironment::getCurrentPreferredLanguages(this, 0);

  return DCSDictionary::startGlobalDictionariesEnvironment(0);
}

const void *DCSEnvironment::getDictionaryPreference(DCSEnvironment *this, const __CFString *key)
{
  if (!key)
  {
    return 0;
  }

  v4 = *(this + 11);
  if (!v4)
  {
    pthread_mutex_lock((this + 392));
    if (!*(this + 11))
    {
      *(this + 11) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    pthread_mutex_unlock((this + 392));
    v4 = *(this + 11);
  }

  return CFDictionaryGetValue(v4, key);
}

uint64_t DCSEnvironment::setDictionaryPreference(DCSEnvironment *this, const __CFString *a2, const __CFDictionary *a3)
{
  DCSEnvironment::getDictionaryPreference(this, a2);
  pthread_mutex_lock((this + 392));
  CFDictionarySetValue(*(this + 11), a2, a3);

  return pthread_mutex_unlock((this + 392));
}

uint64_t DCSEnvironment::resetDictionaryPreferences(DCSEnvironment *this)
{
  if (*(this + 11))
  {
    pthread_mutex_lock((this + 392));
    v2 = *(this + 11);
    if (v2)
    {
      CFRelease(v2);
      *(this + 11) = 0;
    }

    pthread_mutex_unlock((this + 392));
  }

  v3 = SyncSingleton<DCSDictionaryManager>::instance();

  return DCSDictionaryManager::updatePreferences(v3);
}

uint64_t DCSEnvironment::parentalControlCensoringContents(DCSEnvironment *this)
{
  if (*(this + 12) == 0.0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___ZN14DCSEnvironment32parentalControlCensoringContentsEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_52;
    v3[4] = this;
    *(this + 104) = IsManagedConfigProfanityFilterForced();
    *(this + 12) = CFAbsoluteTimeGetCurrent();
    SetManagedConfigChangedCallback(v3);
  }

  return *(this + 104);
}

void ___ZN14DCSEnvironment32parentalControlCensoringContentsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 104) = IsManagedConfigProfanityFilterForced();
  *(v1 + 96) = CFAbsoluteTimeGetCurrent();
}

BOOL DCSEnvironment::networkDictionariesExcluded(DCSEnvironment *this)
{
  v1 = *(this + 27);
  if (v1 == -1)
  {
    *(this + 27) = 1;
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"DCSUseNetworkDictionaries");
      if (ValueForInfoDictionaryKey)
      {
        v5 = ValueForInfoDictionaryKey == *MEMORY[0x277CBED10];
      }

      else
      {
        v5 = 1;
      }

      v1 = v5;
      *(this + 27) = v1;
    }

    else
    {
      v1 = *(this + 27);
    }
  }

  return v1 != 0;
}

BOOL DCSEnvironment::orientationVerticalAllowed(DCSEnvironment *this)
{
  if (*(this + 28) == -1)
  {
    *(this + 28) = 0;
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      v3 = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"DCSAllowOrientationVertical") == *MEMORY[0x277CBED28];
      *(this + 28) = v3;
      if (v3)
      {
        return *(this + 28) > 0;
      }
    }

    else if (*(this + 28))
    {
      return *(this + 28) > 0;
    }

    v4 = CFBundleGetMainBundle();
    if (v4)
    {
      Identifier = CFBundleGetIdentifier(v4);
      if (Identifier)
      {
        if (CFStringCompare(Identifier, @"com.apple.Dictionary", 0) == kCFCompareEqualTo)
        {
          *(this + 28) = 1;
        }
      }
    }
  }

  return *(this + 28) > 0;
}

uint64_t DCSEnvironment::getSubstituteCharactersTable(DCSEnvironment *this, const __CFCharacterSet **a2)
{
  if (!*(this + 15))
  {
    pthread_mutex_lock((this + 456));
    if (!*(this + 15))
    {
      PropertyList = DCSEnvironment::loadPropertyList(this, @"SubstituteCharacters");
      if (PropertyList)
      {
        v5 = PropertyList;
        Count = CFDictionaryGetCount(PropertyList);
        v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        v8 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        v9 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        alloc = *MEMORY[0x277CBECE8];
        Mutable = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
        CFDictionaryGetKeysAndValues(v5, v7, v8);
        if (Count < 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          while (1)
          {
            Length = CFStringGetLength(v7[v11]);
            if (Length > 2)
            {
              break;
            }

            v13 = Length;
            v19.location = 0;
            v19.length = Length;
            CFStringGetCharacters(v7[v11], v19, buffer);
            v14 = buffer[0];
            if (v13 == 2 && (buffer[0] & 0xFC00) == 55296)
            {
              v14 = ((buffer[1] + (buffer[0] << 10) + 2106368) & 0x3FFFFF);
            }

            v9[v11] = v14;
            CFCharacterSetAddCharactersInString(Mutable, v7[v11++]);
            if (Count == v11)
            {
              goto LABEL_17;
            }
          }
        }

        if (v11 == Count)
        {
LABEL_17:
          *(this + 15) = CFDictionaryCreate(0, v9, v8, Count, 0, MEMORY[0x277CBF150]);
          *(this + 16) = CFCharacterSetCreateInvertedSet(alloc, Mutable);
        }

        free(v7);
        free(v8);
        free(v9);
        CFRelease(Mutable);
        CFRelease(v5);
      }
    }

    pthread_mutex_unlock((this + 456));
  }

  if (a2)
  {
    *a2 = *(this + 16);
  }

  return *(this + 15);
}

const __CFURL *DCSEnvironment::loadPropertyList(DCSEnvironment *this, const __CFString *a2)
{
  FrameworkBundle = DCSEnvironment::getFrameworkBundle(this);
  v4 = CFBundleCopyResourceURL(FrameworkBundle, a2, @"plist", 0);
  if (v4)
  {
    resourceData = 0;
    CFURLCreateDataAndPropertiesFromResource(0, v4, &resourceData, 0, 0, 0);
    CFRelease(v4);
    if (resourceData)
    {
      v4 = CFPropertyListCreateFromXMLData(0, resourceData, 0, 0);
      CFRelease(resourceData);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

CFMutableSetRef DCSEnvironment::copyAvailableDictionaries(DCSEnvironment *this)
{
  v1 = DCSEnvironment::cachedDictionariesInfo(this);
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  Value = CFDictionaryGetValue(v1, @"dictionaries");
  if (Value)
  {
    CFDictionaryApplyFunction(Value, CollectDictionariesInCacheCallback, Mutable);
  }

  if (!CFSetGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t DCSEnvironment::cachedDictionariesInfo(DCSEnvironment *this)
{
  v40 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 520));
  v2 = *(this + 152);
  v3 = *(this + 154);
  Count = DCSEnvironment::cachedDictionariesInfo_internal(this);
  v5 = Count;
  if (v3)
  {
    goto LABEL_2;
  }

  if (v2)
  {
    DictionaryPathArray = 0;
    goto LABEL_40;
  }

  Value = CFDictionaryGetValue(Count, @"directories");
  DictionaryPathArray = DCSEnvironment::createDictionaryPathArray(Value);
  Count = CFArrayGetCount(DictionaryPathArray);
  if (Count >= 1 && Value)
  {
    v34 = Count;
    for (i = 0; i != v34; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(DictionaryPathArray, i);
      CFDictionaryGetValue(Value, ValueAtIndex);
    }

LABEL_40:
    pthread_mutex_unlock((this + 520));
    if (!DictionaryPathArray)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (Value)
  {
    goto LABEL_40;
  }

  if (!DictionaryPathArray)
  {
LABEL_2:
    DictionaryPathArray = DCSEnvironment::createDictionaryPathArray(Count);
  }

  v7 = CFArrayGetCount(DictionaryPathArray);
  Mutable = CFDictionaryCreateMutable(0, v7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v7 >= 1)
  {
    for (j = 0; j != v7; ++j)
    {
      CFArrayGetValueAtIndex(DictionaryPathArray, j);
    }
  }

  CFDictionarySetValue(v5, @"directories", Mutable);
  CFRelease(Mutable);
  *(this + 154) = 0;
  pthread_mutex_unlock((this + 520));
  v10 = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  v11 = v10;
  if (!DictionaryPathArray)
  {
    DictionaryPathArray = DCSEnvironment::createDictionaryPathArray(v10);
  }

  v12 = CFArrayGetCount(DictionaryPathArray);
  if (v12 >= 1)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      v15 = CFArrayGetValueAtIndex(DictionaryPathArray, k);
      CFStringGetFileSystemRepresentation(v15, v39, 1024);
      IterateDirectory(v39, CollectDictionariesOnDiskCallback, v11);
    }
  }

  DCSEnvironment::checkSavedDictionaryPrefs(this, v11);
  v16 = CFDictionaryGetValue(v5, @"dictionaries");
  if (v16)
  {
    v17 = v16;
    v18 = CFDictionaryGetCount(v16);
    v37 = &v37;
    MEMORY[0x28223BE20](v18);
    v19 = (8 * v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v20 = (&v37 - v19);
    v21 = (8 * v18) >= 0x200 ? 512 : 8 * v18;
    bzero(&v37 - v19, v21);
    MEMORY[0x28223BE20](v22);
    v23 = (&v37 - v19);
    bzero(&v37 - v19, v21);
    CFDictionaryGetKeysAndValues(v17, (&v37 - v19), (&v37 - v19));
    if (v18 >= 1)
    {
      v38 = *MEMORY[0x277CBED28];
      while (1)
      {
        v24 = CFURLCreateWithFileSystemPath(0, *v23, kCFURLPOSIXPathStyle, 1u);
        if (!ItemExistsAtURL(v24))
        {
          break;
        }

        v25 = SyncSingleton<DCSDictionaryManager>::instance();
        v26 = DCSDictionaryManager::dictionary(v25, v24, 0, 0);
        if (v26)
        {
          v27 = v26;
          v28 = DCSDictionary::dictionaryCacheInfo(*(v26 + 16), 1);
          if (v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = *v20;
          }

          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v29);
          if (CFSetContainsValue(v11, v27))
          {
            CFDictionarySetValue(MutableCopy, @"scanned", v38);
          }

          CFRelease(v27);
          goto LABEL_26;
        }

LABEL_28:
        ++v20;
        ++v23;
        if (!--v18)
        {
          goto LABEL_29;
        }
      }

      MutableCopy = 0;
LABEL_26:
      DCSEnvironment::updateDictionaryCacheInfo(this, v24, MutableCopy);
      CFRelease(v24);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  CFRelease(v11);
  if (DictionaryPathArray)
  {
LABEL_30:
    CFRelease(DictionaryPathArray);
  }

LABEL_31:
  result = *(this + 20);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void CollectDictionariesInCacheCallback(const __CFString *a1, CFDictionaryRef theDict, __CFSet *a3)
{
  if (CFDictionaryContainsKey(theDict, @"scanned"))
  {
    v5 = CFURLCreateWithFileSystemPath(0, a1, kCFURLPOSIXPathStyle, 1u);
    v6 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
    v7 = SyncSingleton<DCSDictionaryManager>::instance();
    v8 = DCSDictionaryManager::dictionary(v7, v5, 0);
    if (v8)
    {
      v9 = v8;
      CFSetAddValue(a3, v8);
      CFRelease(v9);
    }

    CFRelease(v5);

    CFRelease(v6);
  }
}

uint64_t DCSEnvironment::cachedDictionariesInfo_internal(DCSEnvironment *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(this + 20);
  if (!v1)
  {
    if ((*(this + 152) & 1) == 0)
    {
      v6 = 0;
      v5 = 0;
      cf = DCSEnvironment::createDictionariesCacheURL(this);
      operator new();
    }

    v1 = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_21E593B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CFArrayRef DCSEnvironment::createDictionaryPathArray(DCSEnvironment *this)
{
  cf[1] = *MEMORY[0x277D85DE8];
  cf[0] = CFStringCreateWithCString(0, "/Library/Dictionaries", 0x8000100u);
  v1 = CFArrayCreate(0, cf, 1, MEMORY[0x277CBF128]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t DCSEnvironment::checkDirectoryTimeStamp(DCSEnvironment *this, const __CFString *a2, const __CFNumber *a3, const __CFNumber **a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

uint64_t CollectDictionariesOnDiskCallback(char *a1, int a2, __CFSet *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = strlen(a1);
    if (!strrchr(a1, 46) || v5 >= 6 && !strcmp(&a1[v5 - 6], ".lproj"))
    {
      result = 1;
      goto LABEL_11;
    }

    MEMORY[0x28223BE20]();
    strlcpy(v13 - ((v5 + 271) & 0xFFFFFFFFFFFFFFF0), a1, v5 + 256);
    strlcat(v13 - ((v5 + 271) & 0xFFFFFFFFFFFFFFF0), "/Contents/Info.plist", v5 + 256);
    if (ItemExistsAtPath(v13 - ((v5 + 271) & 0xFFFFFFFFFFFFFFF0), 0))
    {
      v6 = CFURLCreateFromFileSystemRepresentation(0, a1, v5, 1u);
      v7 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
      v8 = SyncSingleton<DCSDictionaryManager>::instance();
      v9 = DCSDictionaryManager::dictionary(v8, v6, 0, 0);
      if (v9)
      {
        v10 = v9;
        CFSetAddValue(a3, v9);
        CFRelease(v10);
      }

      CFRelease(v6);
      CFRelease(v7);
    }
  }

  result = 0;
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void DCSEnvironment::checkSavedDictionaryPrefs(DCSEnvironment *this, CFSetRef theSet)
{
  Count = CFSetGetCount(theSet);
  v5 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  CFSetGetValues(theSet, v5);
  if (Count >= 1)
  {
    v6 = v5;
    do
    {
      if (*v6)
      {
        v7 = *(*v6 + 2);
      }

      else
      {
        v7 = 0;
      }

      v8 = DCSDictionary::defaultPreference(v7);
      if (v8)
      {
        v9 = v8;
        Value = CFDictionaryGetValue(v8, @"version");
        if (Value)
        {
          v11 = Value;
          v12 = DCSDictionary::identifier(v7);
          DictionaryPreference = DCSEnvironment::getDictionaryPreference(this, v12);
          if (DictionaryPreference)
          {
            v14 = DictionaryPreference;
            v15 = CFDictionaryGetValue(DictionaryPreference, @"version");
            if (v15)
            {
              if (!CFEqual(v11, v15))
              {
                v16 = DCSDictionary::migrateOldPreference(v7, v14);
                pthread_mutex_lock((this + 392));
                v17 = *(this + 11);
                v18 = DCSDictionary::identifier(v7);
                if (v16)
                {
                  CFDictionarySetValue(v17, v18, v16);
                  pthread_mutex_unlock((this + 392));
                  DCSDictionary::setPreference(v7, v16);
                  CFRelease(v16);
                }

                else
                {
                  CFDictionaryRemoveValue(v17, v18);
                  pthread_mutex_unlock((this + 392));
                  DCSDictionary::setPreference(v7, v9);
                }
              }
            }
          }
        }
      }

      ++v6;
      --Count;
    }

    while (Count);
  }

  free(v5);
}

uint64_t DCSEnvironment::updateDictionaryCacheInfo(uint64_t this, const __CFURL *a2, const __CFDictionary *a3)
{
  if (a2)
  {
    v5 = this;
    pthread_mutex_lock((this + 520));
    if (DCSEnvironment::updateDictionaryCacheInfo(__CFURL const*,__CFDictionary const*)::_CacheInfoModified == 1)
    {
      Value = CFDictionaryGetValue(*(v5 + 160), @"dictionaries");
    }

    else
    {
      DCSEnvironment::cachedDictionariesInfo_internal(v5);
      v7 = CFDictionaryGetValue(*(v5 + 160), @"dictionaries");
      if (v7)
      {
        Value = CFDictionaryCreateMutableCopy(0, 0, v7);
      }

      else
      {
        Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }
    }

    v8 = Value;
    v9 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
    if (a3)
    {
      CFDictionarySetValue(v8, v9, a3);
    }

    else
    {
      CFDictionaryRemoveValue(v8, v9);
    }

    CFRelease(v9);
    if ((DCSEnvironment::updateDictionaryCacheInfo(__CFURL const*,__CFDictionary const*)::_CacheInfoModified & 1) == 0)
    {
      CFDictionarySetValue(*(v5 + 160), @"dictionaries", v8);
      CFRelease(v8);
      DCSEnvironment::updateDictionaryCacheInfo(__CFURL const*,__CFDictionary const*)::_CacheInfoModified = 1;
    }

    DCSEnvironment::setDelayedWriteCacheTask(v5);

    return pthread_mutex_unlock((v5 + 520));
  }

  return this;
}

void DCSEnvironment::setDelayedWriteCacheTask(DCSEnvironment *this)
{
  if ((*(this + 153) & 1) == 0)
  {
    context.version = 0;
    context.info = this;
    memset(&context.retain, 0, 24);
    v2 = CFRunLoopObserverCreate(0, 0x20uLL, 0, 0, _DictionaryCacheChangedCallback, &context);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, v2, *MEMORY[0x277CBF048]);
    *(this + 153) = 1;
  }
}

uint64_t DCSEnvironment::delayedWriteDictionariesCache(DCSEnvironment *this)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = pthread_mutex_trylock((this + 520));
  if (v2)
  {
    *(this + 153) = 0;
    v3 = *MEMORY[0x277D85DE8];

    return DCSEnvironment::setDelayedWriteCacheTask(this);
  }

  else
  {
    cf = DCSEnvironment::createDictionariesCacheURL(v2);
    v7[0] = &unk_282F95918;
    v7[1] = &cf;
    v7[2] = this;
    v7[3] = v7;
    performTaskWithFinishAssertion(@"DCSEnvironment", v7);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
    CFRelease(cf);
    *(this + 153) = 0;
    result = pthread_mutex_unlock((this + 520));
    v5 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_21E594218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const __CFURL *DCSEnvironment::createDictionariesCacheURL(DCSEnvironment *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = CFCopySearchPathForDirectoriesInDomains();
  if (!CFArrayGetCount(v1))
  {
    DCSEnvironment::createDictionariesCacheURL();
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  v5 = CFStringCreateWithFormat(0, 0, @"Caches/%@/com.apple.DictionaryServices/%@", Identifier, @"DictionaryCache.plist");
  v6 = CFURLCreateCopyAppendingPathComponent(0, ValueAtIndex, v5, 0);
  CFRelease(v1);
  CFRelease(v5);
  if (!ItemExistsAtURL(v6))
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v6);
    if (!ItemExistsAtURL(PathComponent))
    {
      CFURLGetFileSystemRepresentation(PathComponent, 1u, buffer, 1024);
      mkdir(buffer, 0x1FFu);
    }

    CFRelease(PathComponent);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

const __CFDictionary *DCSEnvironment::logUsageTrackingInfo(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = DCSRecord::dictionaryRef(*(a2 + 16));
  if (result)
  {
    result = DCSDictionaryGetIdentifier(result);
    if (result)
    {
      operator new();
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN14DCSEnvironment20logUsageTrackingInfoEPK11__DCSRecord_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CFDictionaryGetValue(*(v2 + 600), *(a1 + 40)) + 1;
  CFDictionarySetValue(*(v2 + 600), *(a1 + 40), v3);
  v4 = dispatch_time(0, 1000000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14DCSEnvironment20logUsageTrackingInfoEPK11__DCSRecord_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_84;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = v2;
  v7[5] = v5;
  v7[6] = v3;
  v7[7] = v6;
  dispatch_after(v4, MEMORY[0x277D85CD0], v7);
}

uint64_t ___ZN14DCSEnvironment20logUsageTrackingInfoEPK11__DCSRecord_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == CFDictionaryGetValue(*(*(a1 + 32) + 600), *(a1 + 40)))
  {
    (*(**(a1 + 56) + 48))(*(a1 + 56));
  }

  result = *(a1 + 56);
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void DCSEnvironment::storeActiveDictionaryLanguage(CFDictionaryRef *this, CFStringRef theString1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (theString1 && CFStringCompare(theString1, @"*", 0) && !CFDictionaryGetValue(this[24], theString1))
  {
    Count = CFDictionaryGetCount(this[24]);
    MEMORY[0x28223BE20](Count);
    v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (v5 >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = v5;
    }

    bzero(&v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);
    CFDictionaryGetKeysAndValues(this[24], v6, 0);
    v8 = *MEMORY[0x277CBED10];
    if (Count >= 1)
    {
      v9 = *MEMORY[0x277CBED28];
      do
      {
        v12 = 0;
        CompareLanguageCode(theString1, *v6, &v12);
        if (v12 == 1)
        {
          CFDictionarySetValue(this[24], *v6, v9);
          v8 = v9;
        }

        ++v6;
        --Count;
      }

      while (Count);
    }

    CFDictionarySetValue(this[24], theString1, v8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

const void *DCSEnvironment::copyPrimaryLanguageOfDictionaryURL(DCSEnvironment *this, const __CFURL *a2)
{
  v2 = CFBundleCreate(0, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  InfoDictionary = CFBundleGetInfoDictionary(v2);
  Value = CFDictionaryGetValue(InfoDictionary, @"DCSDictionaryPrimaryLanguage");
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v3);
  return v6;
}

__CFArray *DCSEnvironment::createDefaultDictionaryList(DCSEnvironment *this)
{
  FrameworkBundle = DCSEnvironment::getFrameworkBundle(this);
  InfoDictionary = CFBundleGetInfoDictionary(FrameworkBundle);
  Value = CFDictionaryGetValue(InfoDictionary, @"DCSAppleDictionaries");

  return DCSEnvironment::createMatchedDictionariesForPreferredLanguages(this, Value, 0, 1);
}

__CFArray *DCSEnvironment::createMatchedDictionariesForPreferredLanguages(DCSEnvironment *this, const __CFArray *a2, int a3, int a4)
{
  v51 = a4;
  v46 = a3;
  v55[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v8 = CFArrayCreateMutable(0, 0, v6);
  Count = CFArrayGetCount(a2);
  v49 = Count;
  v50 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Count >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x277CBF128];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
      v13 = CFURLCreateWithFileSystemPath(0, ValueAtIndex, kCFURLPOSIXPathStyle, 1u);
      if (v13)
      {
        v14 = v13;
        v15 = ItemExistsAtURL(v13);
        if (v15)
        {
          v16 = DCSEnvironment::copyPrimaryLanguageOfDictionaryURL(v15, v14);
          if (v16)
          {
            v17 = v16;
            Value = CFDictionaryGetValue(v50, v16);
            if (!Value)
            {
              Value = CFArrayCreateMutable(0, 0, v11);
              CFDictionarySetValue(v50, v17, Value);
              CFRelease(Value);
            }

            CFArrayAppendValue(Value, ValueAtIndex);
            CFRelease(v17);
            Count = v49;
          }

          else
          {
            CFArrayAppendValue(v8, ValueAtIndex);
          }
        }

        CFRelease(v14);
      }

      ++v10;
    }

    while (Count != v10);
  }

  v47 = v8;
  v48 = a2;
  v55[0] = 0;
  CurrentPreferredLanguages = DCSEnvironment::getCurrentPreferredLanguages(this, v55);
  v20 = CFRetain(CurrentPreferredLanguages);
  v21 = v50;
  v22 = CFDictionaryGetCount(v50);
  v45 = &v45;
  MEMORY[0x28223BE20](v22);
  v23 = (8 * v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  if ((8 * v22) >= 0x200)
  {
    v24 = 512;
  }

  else
  {
    v24 = 8 * v22;
  }

  bzero(&v45 - v23, v24);
  MEMORY[0x28223BE20](v25);
  bzero(&v45 - v23, v24);
  v52 = (&v45 - v23);
  v53 = (&v45 - v23);
  CFDictionaryGetKeysAndValues(v21, (&v45 - v23), (&v45 - v23));
  while (1)
  {
    v26 = CFArrayGetCount(v20);
    if (v26 >= 1)
    {
      v27 = v26;
      for (i = 0; i != v27; ++i)
      {
        v29 = CFArrayGetValueAtIndex(v20, i);
        if ((i != v55[0] || i == 0) && v22 >= 1)
        {
          v32 = v29;
          v33 = v52;
          v34 = v53;
          v35 = v22;
          do
          {
            if (CompareLanguageCode(v32, *v34, 0))
            {
              v36 = *v33;
              v57.length = CFArrayGetCount(*v33);
              v57.location = 0;
              CFArrayAppendArray(Mutable, v36, v57);
            }

            ++v33;
            ++v34;
            --v35;
          }

          while (v35);
        }
      }
    }

    if ((v51 & 1) == 0)
    {
      break;
    }

    v37 = CFArrayGetCount(Mutable);
    if (v37 > 0)
    {
      break;
    }

    if (v20)
    {
      CFRelease(v20);
    }

    values = DCSEnvironment::getFallbackEnglishLanguage(v37);
    v20 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
    v51 = 0;
  }

  v38 = v49;
  if (v20)
  {
    CFRelease(v20);
  }

  v40 = v47;
  v39 = v48;
  if (v46)
  {
    if (v38 >= 1)
    {
      for (j = 0; j != v38; ++j)
      {
        v42 = CFArrayGetValueAtIndex(v39, j);
        v56.length = CFArrayGetCount(Mutable);
        v56.location = 0;
        if (!CFArrayContainsValue(Mutable, v56, v42))
        {
          CFArrayAppendValue(Mutable, v42);
        }
      }
    }
  }

  else
  {
    v58.length = CFArrayGetCount(v47);
    v58.location = 0;
    CFArrayAppendArray(Mutable, v40, v58);
  }

  CFRelease(v40);
  CFRelease(v50);
  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return Mutable;
}

const __CFArray *DCSEnvironment::appendNewReleasedDictionaries(DCSEnvironment *this, const __CFArray *a2, __CFArray *a3)
{
  updated = DCSMACopyAndUpdateDictionaryCompatibilityVersionHistory();
  if (updated)
  {
    v6 = updated;
    FrameworkBundle = DCSEnvironment::getFrameworkBundle(this);
    InfoDictionary = CFBundleGetInfoDictionary(FrameworkBundle);
    Value = CFDictionaryGetValue(InfoDictionary, @"DCSNewReleasedDictionaries");
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        if (CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr))
        {
          v15 = CFStringCreateWithFormat(0, 0, @"%ld", valuePtr);
          if (Value)
          {
            v16 = CFDictionaryGetValue(Value, v15);
            if (v16)
            {
              v17 = v16;
              v49.length = CFArrayGetCount(v16);
              v49.location = 0;
              CFArrayAppendArray(Mutable, v17, v49);
            }
          }

          CFRelease(v15);
        }
      }
    }

    CFRelease(v6);
    if (!CFArrayGetCount(Mutable))
    {
      v31 = Mutable;
      goto LABEL_40;
    }

    CurrentPreferredLanguages = DCSEnvironment::getCurrentPreferredLanguages(this, 0);
    v19 = DCSEnvironment::copyInactiveDictionaries(Mutable, CurrentPreferredLanguages);
    CFRelease(Mutable);
    if (v19)
    {
      v20 = CFArrayGetCount(v19);
      v21 = DCSEnvironment::copyInactiveDictionaries(0, 0);
      if (v21)
      {
        v22 = v21;
        v23 = CFArrayGetCount(v21);
        if (v23 < 1)
        {
          v25 = 0;
        }

        else
        {
          v24 = v23;
          v25 = 0;
          for (j = 0; j != v24; ++j)
          {
            v27 = CFArrayGetValueAtIndex(v22, j);
            v47.location = 0;
            v47.length = v20;
            if (!CFArrayContainsValue(v19, v47, v27))
            {
              v28 = DCSMAGetAssetAttributes(v27);
              v29 = CFDictionaryGetValue(v28, @"Language");
              CurrentSystemLanguage = DCSEnvironment::getCurrentSystemLanguage(this);
              v25 += CompareLanguageCode(v29, CurrentSystemLanguage, 0);
            }
          }
        }

        CFRelease(v22);
      }

      else
      {
        v25 = 0;
      }

      v44 = a2;
      if (a2)
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, a2);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      }

      v33 = MutableCopy;
      if (v20 >= 1)
      {
        v34 = 0;
        v35 = v25;
        do
        {
          v36 = CFArrayGetValueAtIndex(v19, v34);
          v48.length = CFArrayGetCount(v33);
          v48.location = 0;
          if (!CFArrayContainsValue(v33, v48, v36))
          {
            v37 = DCSMAGetAssetAttributes(v36);
            v38 = CFDictionaryGetValue(v37, @"DictionaryIdentifier");
            v39 = CFDictionaryGetValue(v37, @"Language");
            if (v25 || (v40 = v39, v41 = DCSEnvironment::getCurrentSystemLanguage(this), !CompareLanguageCode(v40, v41, 0)))
            {
              CFArrayAppendValue(v33, v36);
              CFArrayAppendValue(a3, v38);
            }

            else
            {
              CFArrayInsertValueAtIndex(v33, v35, v36);
              CFArrayInsertValueAtIndex(a3, v35++, v38);
            }
          }

          ++v34;
        }

        while (v20 != v34);
      }

      CFRelease(v19);
      a2 = v44;
      if (v44)
      {
        v42 = CFArrayGetCount(v44);
        if (CFArrayGetCount(v33) != v42)
        {
          CFRelease(v44);
          return v33;
        }
      }

      else if (CFArrayGetCount(v33))
      {
        return v33;
      }

      v31 = v33;
LABEL_40:
      CFRelease(v31);
    }
  }

  return a2;
}

void _DictionaryCacheChangedCallback(__CFRunLoopObserver *a1, unint64_t a2, DCSEnvironment *this)
{
  DCSEnvironment::delayedWriteDictionariesCache(this);
  CFRunLoopObserverInvalidate(a1);

  CFRelease(a1);
}

CFURLRef DCSEnvironment::copyWikipediaDictionaryURL(DCSEnvironment *this)
{
  FrameworkBundle = DCSEnvironment::getFrameworkBundle(this);

  return CFBundleCopyResourceURL(FrameworkBundle, @"Wikipedia", @"wikipediadictionary", 0);
}

__n128 std::__function::__func<DCSEnvironment::delayedWriteDictionariesCache(void)::$_0,std::allocator<DCSEnvironment::delayedWriteDictionariesCache(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_282F95918;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<DCSEnvironment::delayedWriteDictionariesCache(void)::$_0,std::allocator<DCSEnvironment::delayedWriteDictionariesCache(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _AcquireLockOfCacheFile(**(a1 + 8));
  if (result != -1)
  {
    v4 = result;
    v5 = CFWriteStreamCreateWithFile(0, **(a1 + 8));
    if (v5)
    {
      v6 = v5;
      if (CFWriteStreamOpen(v5))
      {
        CFPropertyListWriteToStream(*(v2 + 160), v6, kCFPropertyListBinaryFormat_v1_0, 0);
        CFWriteStreamClose(v6);
      }

      CFRelease(v6);
    }

    return _ReleaseLockOfCacheFile(v4);
  }

  return result;
}

uint64_t std::__function::__func<DCSEnvironment::delayedWriteDictionariesCache(void)::$_0,std::allocator<DCSEnvironment::delayedWriteDictionariesCache(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _AcquireLockOfCacheFile(CFURLRef url)
{
  v7 = *MEMORY[0x277D85DE8];
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, url);
  CFURLGetFileSystemRepresentation(PathComponent, 1u, buffer, 1024);
  strlcat(buffer, "/.lockfile", 0x400uLL);
  CFRelease(PathComponent);
  v2 = open(buffer, 514, 511);
  v3 = v2;
  if (v2 != -1 && flock(v2, 2))
  {
    close(v3);
    v3 = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t _ReleaseLockOfCacheFile(uint64_t result)
{
  if (result != -1)
  {
    v2 = result;
    flock(result, 8);

    return close(v2);
  }

  return result;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<DCSEnvironment::cachedDictionariesInfo_internal(void)::$_0,std::allocator<DCSEnvironment::cachedDictionariesInfo_internal(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_282F959A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<DCSEnvironment::cachedDictionariesInfo_internal(void)::$_0,std::allocator<DCSEnvironment::cachedDictionariesInfo_internal(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _AcquireLockOfCacheFile(**(a1 + 8));
  if (v3 != -1)
  {
    resourceData[0].__pn_.__r_.__value_.__r.__words[0] = 0;
    CFURLCreateDataAndPropertiesFromResource(0, **(a1 + 8), resourceData, 0, 0, 0);
    if (resourceData[0].__pn_.__r_.__value_.__r.__words[0])
    {
      **(a1 + 16) = CFPropertyListCreateFromXMLData(0, resourceData[0].__pn_.__r_.__value_.__l.__data_, 1uLL, 0);
      CFRelease(resourceData[0].__pn_.__r_.__value_.__l.__data_);
    }
  }

  v4 = **(a1 + 16);
  if (v4)
  {
    LODWORD(resourceData[0].__pn_.__r_.__value_.__l.__data_) = 0;
    Value = CFDictionaryGetValue(v4, @"cache version");
    CFNumberGetValue(Value, kCFNumberSInt32Type, resourceData);
    v6 = LODWORD(resourceData[0].__pn_.__r_.__value_.__l.__data_) == 8;
    v7 = *(a1 + 24);
    *v7 = LODWORD(resourceData[0].__pn_.__r_.__value_.__l.__data_) == 8;
    if (v6)
    {
      *(v2 + 160) = **(a1 + 16);
    }
  }

  else
  {
    v7 = *(a1 + 24);
  }

  if (!*v7 && **(a1 + 16))
  {
    CFURLGetFileSystemRepresentation(**(a1 + 8), 1u, resourceData, 1024);
    remove(resourceData, v8);
    CFRelease(**(a1 + 16));
  }

  result = _ReleaseLockOfCacheFile(v3);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<DCSEnvironment::cachedDictionariesInfo_internal(void)::$_0,std::allocator<DCSEnvironment::cachedDictionariesInfo_internal(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void DCSIDXDictionary::DCSIDXDictionary(DCSIDXDictionary *this, const __CFURL *a2)
{
  DCSBaseDictionary::DCSBaseDictionary(this, a2);
  *v3 = &unk_282F95A28;
  *(v3 + 256) = 0;
  *(v3 + 264) = 0;
  *(v3 + 248) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  *(v3 + 296) = 0;
  *(v3 + 304) = -1;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  pthread_mutex_init((v3 + 328), 0);
  pthread_mutex_init((this + 392), 0);
  pthread_mutex_init((this + 456), 0);
  pthread_mutex_init((this + 520), 0);
}

void DCSIDXDictionary::~DCSIDXDictionary(DCSIDXDictionary *this)
{
  *this = &unk_282F95A28;
  v2 = *(this + 37);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 33);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 36);
  if (v6)
  {
    free(v6);
  }

  v7 = *(this + 39);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 38);
  if (v8 + 1 >= 2)
  {
    CFRelease(v8);
  }

  v9 = *(this + 40);
  if (v9)
  {
    DCSDictionaryImageReplacement::~DCSDictionaryImageReplacement(v9);
    MEMORY[0x223D5E5E0]();
  }

  pthread_mutex_destroy((this + 328));
  pthread_mutex_destroy((this + 392));
  pthread_mutex_destroy((this + 456));
  pthread_mutex_destroy((this + 520));

  DCSBaseDictionary::~DCSBaseDictionary(this);
}

{
  DCSIDXDictionary::~DCSIDXDictionary(this);

  JUMPOUT(0x223D5E5E0);
}

void *DCSIDXDictionary::createSessionInfo(uint64_t a1, uint64_t a2)
{
  v6.version = 0;
  memset(&v6.retain, 0, 24);
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  *v4 = a1;
  v4[1] = a2;
  v6.info = v4;
  v4[2] = CFRunLoopObserverCreate(0, 0x20uLL, 0, 0, _RunLoopObserverCallBack, &v6);
  return v4;
}

void _RunLoopObserverCallBack(__CFRunLoopObserver *a1, unint64_t a2, void *a3)
{
  v3 = a3[1];
  v4 = (*(**a3 + 296))(*a3, *(v3 + 56), *(v3 + 64), *(v3 + 72));
  v5 = CFRetain(*v3);
  v6 = CFGetRetainCount(v5);
  DCSSearchSession::didFindRecord(v3, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (CFGetRetainCount(v5) == v6)
  {
    DCSSearchSession::didFinishSearch(v3, 0);
  }

  CFRelease(v5);
}

void DCSIDXDictionary::releaseSessionInfo(DCSIDXDictionary *this, void *a2)
{
  v3 = a2[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a2);
}

const __CFArray *DCSIDXDictionary::searchByString(DCSIDXDictionary *this, const __CFString *a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 0x40000000;
  v80[2] = ___ZN16DCSIDXDictionary14searchByStringEPK10__CFStringll_block_invoke;
  v80[3] = &__block_descriptor_tmp_1;
  v80[4] = this;
  v80[5] = a3;
  v79 = 0;
  v7 = ___ZN16DCSIDXDictionary14searchByStringEPK10__CFStringll_block_invoke(v80, a2, a3, a4, &v79);
  if (v79)
  {
    return v7;
  }

  v8 = (*(*this + 96))(this);
  if (!v8)
  {
    return v7;
  }

  v9 = v8;
  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    return v7;
  }

  v11 = Count;
  v62 = v7;
  v12 = 0;
  v69 = 0;
  v13 = 0;
  v14 = a2;
  v63 = Count;
  v64 = v9;
LABEL_5:
  ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
  Value = CFDictionaryGetValue(ValueAtIndex, @"DCSDictionaryIndexLanguage");
  if (!Value)
  {
    v22 = v69;
    v23 = v12;
    goto LABEL_68;
  }

  v68 = v12;
  v17 = Value;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v14);
  v19 = CFStringCompare(v17, @"ar", 0);
  v66 = CFStringCompare(v17, @"he", 0);
  v72 = v17;
  v20 = _IsStopLemmatizeWordForLanguage(v14, v17);
  v21 = 0;
  v73 = v20 ^ 1;
  v67 = v13;
  if (v19 == kCFCompareEqualTo && (v20 & 1) == 0)
  {
    if (ContainsLatinAlphabets(v14))
    {
      v73 = 0;
      v21 = 0;
    }

    else
    {
      v24 = v14;
      v25 = CFStringCreateMutableCopy(0, 0, v14);
      ExtraNormalizeStringForArabic(v25, 0);
      if (CFStringCompare(v24, v25, 0))
      {
        v68 = DCSIDXDictionary::searchByString_internal(this, v25, *&v5 & 0x10000, a4);
        v26 = v68 != 0;
        v73 = v68 == 0;
      }

      else
      {
        v26 = 0;
      }

      CFRelease(v25);
      v14 = a2;
      v21 = v26;
    }
  }

  v27 = v68;
  v74 = v69;
  cf = v14;
  v65 = v21;
  v76 = v21;
  v71 = MutableCopy;
  while (v73)
  {
    v77 = v27;
    v28 = DCSCopyLemmas(cf, v72);
    if (v28)
    {
      v29 = v28;
      v78 = CFArrayGetCount(v28);
      if (v78 < 1)
      {
        v77 = 0;
      }

      else
      {
        v77 = 0;
        for (i = 0; i != v78; ++i)
        {
          v31 = CFArrayGetValueAtIndex(v29, i);
          v32 = 0;
          while (1)
          {
            v33 = CFStringCreateMutableCopy(0, 0, v31);
            v34 = v33;
            if (v32)
            {
              ExtraNormalizeStringForArabic(v33, 0);
            }

            else
            {
              v35 = (*(*this + 256))(this);
              DCSNormalizeSearchStringWithOptionsAndLocale(v34, 0, v35);
            }

            v36 = DCSIDXDictionary::searchByString_internal(this, v34, *&v5 & 0x10000, a4);
            CFRelease(v34);
            if (v36)
            {
              break;
            }

            if (v19 | v32++)
            {
              goto LABEL_33;
            }
          }

          if (v19)
          {
            v74 = CFRetain(cf);
          }

          if (v77)
          {
            v81.length = CFArrayGetCount(v36);
            v81.location = 0;
            CFArrayAppendArray(v77, v36, v81);
          }

          else
          {
            v77 = CFArrayCreateMutableCopy(0, 0, v36);
          }

          CFRelease(v36);
          v76 = 1;
LABEL_33:
          ;
        }
      }

      CFRelease(v29);
      v14 = a2;
    }

    MutableCopy = v71;
    if ((v76 & 1) != 0 || v19 || cf != v14 || (ExtraNormalizeStringForArabic(v71, 1), CFStringCompare(v14, v71, 0) == kCFCompareEqualTo))
    {
      if (v76)
      {
        v52 = v77;
        goto LABEL_74;
      }

      v13 = v67;
      if (v19)
      {
        v39 = v66 == kCFCompareEqualTo;
      }

      else
      {
        v39 = 1;
      }

      v40 = v39;
      if (v79 || !v40)
      {
        goto LABEL_62;
      }

      v41 = CFStringCreateMutableCopy(0, 0, a2);
      v42 = v41;
      if (v19 == kCFCompareEqualTo)
      {
        ExtraNormalizeStringForArabic(v41, 0);
      }

      v43 = _CopyPossibleArabicHebrewStemList(v42, v72);
      CFRelease(v42);
      if (!v43)
      {
LABEL_62:
        CFRelease(v71);
        v14 = a2;
        v11 = v63;
        v9 = v64;
        v22 = v74;
        v23 = v77;
        goto LABEL_68;
      }

      v44 = CFArrayGetCount(v43);
      if (v44 < 1)
      {
        v47 = 0;
LABEL_66:
        v50 = v74;
        goto LABEL_67;
      }

      v45 = v44;
      v46 = 0;
      v47 = 1;
      while (2)
      {
        v48 = CFArrayGetValueAtIndex(v43, v46);
        if (CFStringGetLength(v48) < 3)
        {
LABEL_60:
          v47 = ++v46 < v45;
          if (v45 == v46)
          {
            goto LABEL_61;
          }

          continue;
        }

        break;
      }

      v49 = DCSIDXDictionary::searchByString_internal(this, v48, *&v5 & 0x10000, a4);
      if (!v49)
      {
        v77 = 0;
        goto LABEL_60;
      }

      v77 = v49;
      if (v19 == kCFCompareEqualTo)
      {
LABEL_61:
        v13 = v67;
        MutableCopy = v71;
        goto LABEL_66;
      }

      v50 = CFRetain(a2);
      v13 = v67;
      MutableCopy = v71;
LABEL_67:
      CFRelease(v43);
      CFRelease(MutableCopy);
      v69 = v50;
      v23 = v77;
      v12 = v77;
      v14 = a2;
      v22 = v50;
      v11 = v63;
      v9 = v64;
      if (v47)
      {
        goto LABEL_75;
      }

LABEL_68:
      ++v13;
      v12 = v23;
      v69 = v22;
      if (v13 == v11)
      {
        goto LABEL_75;
      }

      goto LABEL_5;
    }

    v38 = DCSIDXDictionary::searchByString_internal(this, v71, *&v5 & 0x10000, a4);
    v27 = 0;
    v76 = 0;
    cf = v71;
    if (v38)
    {
      v52 = v38;
LABEL_74:
      CFRelease(v71);
      v69 = v74;
      v12 = v52;
      goto LABEL_75;
    }
  }

  CFRelease(MutableCopy);
  v12 = v68;
  v22 = v69;
  v23 = v68;
  v11 = v63;
  v9 = v64;
  v13 = v67;
  if ((v65 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_75:
  if (v12)
  {
    v53 = CFArrayGetCount(v12);
    v54 = v12;
    v55 = v62;
    v56 = v69;
    if (v53 >= 1)
    {
      v57 = v53;
      for (j = 0; j != v57; ++j)
      {
        v59 = CFArrayGetValueAtIndex(v12, j);
        v60 = v59;
        if (v69)
        {
          v61 = v59[2];
          DCSRecord::setHeadword(v61, v69);
          DCSRecord::setKeyString(v61, v69);
        }

        if (v62)
        {
          CFArrayAppendValue(v62, v60);
        }
      }

      v54 = v12;
    }

    if (!v69)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v54 = 0;
    v55 = v62;
    v56 = v69;
    if (!v69)
    {
      goto LABEL_86;
    }
  }

  CFRelease(v56);
LABEL_86:
  if (v55)
  {
    result = v55;
  }

  else
  {
    result = v54;
  }

  if (v55)
  {
    if (v12)
    {
      CFRelease(v54);
      return v55;
    }
  }

  return result;
}

const __CFArray *___ZN16DCSIDXDictionary14searchByStringEPK10__CFStringll_block_invoke(uint64_t a1, const __CFString *a2, unint64_t a3, uint64_t a4, BOOL *a5)
{
  v8 = DCSIDXDictionary::searchByString_internal(*(a1 + 32), a2, a3, a4);
  v9 = v8;
  if (a5)
  {
    *a5 = v8 != 0;
    if (v8)
    {
      v10 = *(a1 + 40);
      if ((v10 - 1) <= 1)
      {
        if (v10 == 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = CFArrayGetCount(v8) - 1;
        }

        v12 = *(CFArrayGetValueAtIndex(v9, v11) + 2);
        Length = CFStringGetLength(a2);
        v14 = DCSRecord::keyString(v12);
        if (Length != CFStringGetLength(v14))
        {
          *a5 = 0;
        }
      }
    }
  }

  return v9;
}

__CFArray *DCSIDXDictionary::searchByString_internal(DCSIDXDictionary *this, const __CFString *a2, unint64_t a3, uint64_t a4)
{
  v50 = a4;
  v53[1] = *MEMORY[0x277D85DE8];
  DCSIDXDictionary::prepareTrieIndex(this);
  if (!*(this + 31))
  {
    goto LABEL_59;
  }

  v7 = this;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    DCSIDXDictionary::searchByString_internal();
  }

  pthread_mutex_lock((this + 328));
  v9 = a2;
  v10 = this;
  if (IDXSetSearchString(*(this + 31), v9, _MergedGlobals[a3 + 2]))
  {
    v11 = SyncSingleton<DCSEnvironment>::instance();
    v51 = DCSEnvironment::parentalControlCensoringContents(v11);
    v12 = IDXSupportDataPtr(*(this + 31));
    if (v12)
    {
      v48 = &v47;
      v13 = 1024;
      if (v50)
      {
        v13 = v50;
      }

      v49 = v13;
      v14 = 8 * v13;
      MEMORY[0x28223BE20](v12);
      v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
      if (v14 >= 0x200)
      {
        v16 = 512;
      }

      else
      {
        v16 = v14;
      }

      v17 = &v47 - v15;
      bzero(&v47 - v15, v16);
      MEMORY[0x28223BE20](v18);
      v19 = &v47 - v15;
      v20 = 0;
      v21 = 0;
      v22 = (a3 >> 16) & 1;
      while (1)
      {
        matched = IDXGetMatchDataPtr(*(v10 + 31), v49, v17, v19);
        if (!matched)
        {
          goto LABEL_57;
        }

        v24 = matched;
        if (matched < 1)
        {
          continue;
        }

        v25 = 0;
        while (1)
        {
          RecordRef = DCSIDXDictionary::createRecordRef(v10, *&v17[8 * v25], *&v19[8 * v25], 0, v51, v22, ++v20);
          if (RecordRef)
          {
            break;
          }

          v29 = 0;
LABEL_25:
          if (++v25 >= v24)
          {
            goto LABEL_26;
          }
        }

        v27 = RecordRef;
        CFArrayAppendValue(Mutable, RecordRef);
        CFRelease(v27);
        ++v21;
        if (v50)
        {
          v28 = v21 < v50;
        }

        else
        {
          v28 = 1;
        }

        v29 = !v28;
        if ((v29 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_26:
        if (v29)
        {
          goto LABEL_57;
        }
      }
    }

    v30 = 0;
    v31 = 0;
    v53[0] = 0x20000;
    v32 = (a3 >> 16) & 1;
    do
    {
      v48 = &v47;
      MEMORY[0x28223BE20](v12);
      v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = v35;
      if (!v35)
      {
        v34 = malloc_type_malloc(v53[0], 0xCB169E3uLL);
      }

      v52 = 0;
      while (1)
      {
        v12 = IDXGetMatchData(*(v10 + 31), v50, v53[0], v34, &v52, v53);
        v36 = v12;
        if (!v12)
        {
          break;
        }

        if (v12 >= 1)
        {
          v37 = Mutable;
          v38 = 0;
          v39 = 1;
          do
          {
            v12 = DCSIDXDictionary::createRecordRef(v7, &v34[*(v52 + v38)], *(v52 + v38 + 8), 1, v51, v32, v30 + v39);
            if (v12)
            {
              v40 = v12;
              CFArrayAppendValue(v37, v12);
              CFRelease(v40);
              ++v31;
              if (v50)
              {
                v41 = v31 < v50;
              }

              else
              {
                v41 = 1;
              }

              v42 = !v41;
            }

            else
            {
              v42 = 0;
            }

            v43 = v39 + 1;
            if (v42)
            {
              break;
            }

            v38 += 16;
            v28 = v39++ < v36;
          }

          while (v28);
          v30 = v30 + v43 - 1;
          Mutable = v37;
          v10 = v7;
          if (v42)
          {
            break;
          }
        }
      }

      if (!v49)
      {
        free(v34);
      }

      if (v36)
      {
        v44 = 1;
      }

      else
      {
        v44 = v53[0] == 0;
      }
    }

    while (!v44);
  }

LABEL_57:
  pthread_mutex_unlock((v10 + 328));
  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
LABEL_59:
    Mutable = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return Mutable;
}

const __CFArray *_IsStopLemmatizeWordForLanguage(const __CFString *a1, const __CFString *key)
{
  if (_IsStopLemmatizeWordForLanguage(__CFString const*,__CFString const*)::_OnceToken != -1)
  {
    _IsStopLemmatizeWordForLanguage();
  }

  result = 0;
  if (a1 && _IsStopLemmatizeWordForLanguage(__CFString const*,__CFString const*)::_StopWordDict)
  {
    result = CFDictionaryGetValue(_IsStopLemmatizeWordForLanguage(__CFString const*,__CFString const*)::_StopWordDict, key);
    if (result)
    {
      v5 = result;
      v6.length = CFArrayGetCount(result);
      v6.location = 0;
      return (CFArrayContainsValue(v5, v6, a1) != 0);
    }
  }

  return result;
}

CFArrayRef _CopyPossibleArabicHebrewStemList(__CFString *a1, const __CFString *a2)
{
  values = a1;
  v3 = MEMORY[0x277CBF128];
  Copy = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  Mutable = CFArrayCreateMutable(0, 0, v3);
  allocator = *MEMORY[0x277CBECE8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Count = CFArrayGetCount(Copy);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    v9 = 0x27CECA000uLL;
    v10 = 0x27CECA000uLL;
    theArray = Mutable;
    v49 = a2;
    while (1)
    {
      v46 = v8;
      v11 = 0;
      v50 = Copy;
      v51 = v7;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, v11);
        v13 = ValueAtIndex;
        if (*(v9 + 2368) == -1)
        {
          if (!ValueAtIndex)
          {
            goto LABEL_29;
          }
        }

        else
        {
          _CopyPossibleArabicHebrewStemList();
          if (!v13)
          {
            goto LABEL_29;
          }
        }

        v14 = *(v10 + 2376);
        if (v14)
        {
          Value = CFDictionaryGetValue(v14, a2);
          if (Value)
          {
            v16 = Value;
            v17 = CFDictionaryGetValue(Value, @"prefix");
            v18 = CFDictionaryGetValue(v16, @"suffix");
            if (v17)
            {
              v19 = v18;
              if (v18)
              {
                v20 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
                Length = CFStringGetLength(v13);
                v22 = CFArrayGetCount(v19);
                if (v22 >= 1)
                {
                  v23 = v22;
                  for (i = 0; i != v23; ++i)
                  {
                    v25 = CFArrayGetValueAtIndex(v19, i);
                    v26 = CFStringGetLength(v25);
                    v27 = Length - v26;
                    if (Length > v26 && CFStringHasSuffix(v13, v25))
                    {
                      v54.location = 0;
                      v54.length = v27;
                      v28 = CFStringCreateWithSubstring(0, v13, v54);
                      CFArrayAppendValue(v20, v28);
                      CFRelease(v28);
                    }
                  }
                }

                v29 = CFArrayGetCount(v17);
                if (v29 >= 1)
                {
                  v30 = v29;
                  for (j = 0; j != v30; ++j)
                  {
                    v32 = CFArrayGetValueAtIndex(v17, j);
                    v33 = CFStringGetLength(v32);
                    v34 = Length - v33;
                    if (Length > v33)
                    {
                      v35 = v33;
                      if (CFStringHasPrefix(v13, v32))
                      {
                        v55.location = v35;
                        v55.length = v34;
                        v36 = CFStringCreateWithSubstring(0, v13, v55);
                        CFArrayAppendValue(v20, v36);
                        CFRelease(v36);
                      }
                    }
                  }
                }

                a2 = v49;
                Copy = v50;
                v9 = 0x27CECA000;
                v10 = 0x27CECA000;
                v7 = v51;
                if (v20)
                {
                  v37 = CFArrayGetCount(v20);
                  if (v37 >= 1)
                  {
                    v38 = v37;
                    for (k = 0; k != v38; ++k)
                    {
                      v40 = CFArrayGetValueAtIndex(v20, k);
                      if (!CFDictionaryContainsKey(theDict, v40))
                      {
                        CFDictionaryAddValue(theDict, v40, @"1");
                        CFArrayAppendValue(theArray, v40);
                      }
                    }
                  }

                  CFRelease(v20);
                  v10 = 0x27CECA000;
                  v7 = v51;
                }
              }
            }
          }
        }

LABEL_29:
        ++v11;
      }

      while (v11 != v7);
      CFRelease(Copy);
      Mutable = theArray;
      Copy = CFArrayCreateCopy(0, theArray);
      CFArrayRemoveAllValues(theArray);
      v41 = CFArrayGetCount(Copy);
      if (v41 >= 1)
      {
        v7 = v41;
        v8 = v46 + 1;
        if (v46 < 3)
        {
          continue;
        }
      }

      break;
    }
  }

  CFRelease(Copy);
  CFRelease(Mutable);
  v42 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  CFDictionaryApplyFunction(theDict, _AddKeyToArray, v42);
  CFRelease(theDict);
  v53.length = CFArrayGetCount(v42);
  v53.location = 0;
  CFArraySortValues(v42, v53, _CompareStringLength, 0);
  v43 = CFArrayCreateCopy(allocator, v42);
  CFRelease(v42);
  return v43;
}

uint64_t DCSIDXDictionary::prepareTrieIndex(uint64_t this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(this + 248))
  {
    v1 = this;
    if ((*(this + 272) & 1) == 0)
    {
      pthread_mutex_lock((this + 328));
      if (!*(v1 + 248))
      {
        v2 = (*(*v1 + 16))(v1);
        v3 = IDXCreateIndexObject(0, v2, @"DCSKeywordIndex");
        *(v1 + 248) = v3;
        if (v3)
        {
          *values = xmmword_27835A2A0;
          v8 = *&off_27835A2B0;
          v9 = xmmword_27835A2C0;
          v10 = *off_27835A2D0;
          v4 = CFArrayCreate(0, values, 8, MEMORY[0x277CBF128]);
          IDXSetRequestFields(*(v1 + 248), v4);
          CFRelease(v4);
        }

        else
        {
          *(v1 + 272) = 1;
          v5 = (*(*v1 + 16))(v1);
          CFURLGetString(v5);
          CFLog();
        }
      }

      this = pthread_mutex_unlock((v1 + 328));
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t DCSIDXDictionary::createRecordRef(DCSIDXDictionary *this, const unsigned __int8 *a2, uint64_t a3, char a4, int a5, int a6, unint64_t a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v17 = 0u;
  *v18 = 0u;
  *v19 = 0u;
  v20 = 0u;
  IDXGetFieldDataPtrs(*(this + 31), a2, a3, &v21, v17);
  v12 = 0;
  if (LOBYTE(v17[0]) > 3u)
  {
    if (LOBYTE(v17[0]) == 4)
    {
      v12 = *v21;
    }

    else if (LOBYTE(v17[0]) == 8)
    {
      v12 = *v21;
    }
  }

  else if (LOBYTE(v17[0]) == 1)
  {
    v12 = *v21;
  }

  else if (LOBYTE(v17[0]) == 2)
  {
    v12 = *v21;
  }

  LOWORD(v13) = 0;
  if (LOBYTE(v17[1]) > 3u)
  {
    if (LOBYTE(v17[1]) == 4)
    {
      LODWORD(v13) = **(&v21 + 1);
      if (!a5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (LOBYTE(v17[1]) != 8)
      {
        goto LABEL_26;
      }

      v13 = **(&v21 + 1);
      if (!a5)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    if (v13)
    {
LABEL_25:
      result = 0;
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (LOBYTE(v17[1]) == 1)
  {
    LOWORD(v13) = **(&v21 + 1);
    if (!a5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (LOBYTE(v17[1]) != 2)
  {
    goto LABEL_26;
  }

  LOWORD(v13) = **(&v21 + 1);
  if (a5)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (a6 && (v13 & 0x1E) != 0)
  {
    goto LABEL_25;
  }

LABEL_26:
  result = 0;
  if (LOWORD(v18[0]) && v22)
  {
    HIWORD(v16) = v13;
    BYTE4(v16) = a4;
    LODWORD(v16) = 335544576;
    result = DCSRecord::createRecordRef(*(this + 1), v22, LOWORD(v18[0]), *(&v22 + 1), LOWORD(v18[1]), v23, LOWORD(v19[0]), *(&v23 + 1), LOWORD(v19[1]), v24, v20, *(&v24 + 1), WORD4(v20), v16, v12, SBYTE4(v12), HIWORD(v12), a7, 0, 0, v17[0]);
  }

LABEL_29:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DCSIDXDictionary::searchByReference(DCSIDXDictionary *this, __CFString *a2)
{
  values[64] = *MEMORY[0x277D85DE8];
  if (!*(this + 33))
  {
    if (*(this + 272))
    {
      goto LABEL_35;
    }

    pthread_mutex_lock((this + 392));
    if (!*(this + 33))
    {
      v6 = (*(*this + 16))(this);
      v7 = IDXCreateIndexObject(0, v6, @"DCSReferenceIndex");
      *(this + 33) = v7;
      if (v7)
      {
        values[0] = @"DCSExternalBodyID";
        v8 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
        IDXSetRequestFields(*(this + 33), v8);
        CFRelease(v8);
      }

      else
      {
        *(this + 272) = 1;
        v13 = (*(*this + 16))(this);
        CFURLGetString(v13);
        CFLog();
      }
    }

    pthread_mutex_unlock((this + 392));
    if (!*(this + 33))
    {
      goto LABEL_35;
    }
  }

  pthread_mutex_lock((this + 392));
  if (!IDXSetSearchString(*(this + 33), a2, @"IDXExactMatch"))
  {
    pthread_mutex_unlock((this + 392));
LABEL_35:
    result = 0;
    goto LABEL_36;
  }

  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  if (IDXSupportDataPtr(*(this + 33)))
  {
    matched = IDXGetMatchDataPtr(*(this + 33), 1, &v19, &v17);
    if (matched >= 1)
    {
      IDXGetFieldDataPtrs(*(this + 33), v19, v17, &v18, &v16);
      v5 = 0;
      if (v16 > 3u)
      {
        if (v16 == 4)
        {
          v5 = *v18;
        }

        else if (v16 == 8)
        {
          v5 = *v18;
        }
      }

      else if (v16 == 1)
      {
        v5 = *v18;
      }

      else if (v16 == 2)
      {
        v5 = *v18;
      }

      pthread_mutex_unlock((this + 392));
      goto LABEL_32;
    }

    v9 = matched;
    goto LABEL_20;
  }

  v15 = 0;
  v9 = IDXGetMatchData(*(this + 33), 1, 512, values, &v15, 0);
  if (v9 < 1)
  {
LABEL_20:
    v5 = 0;
    goto LABEL_21;
  }

  v10 = v15[1];
  v19 = values + *v15;
  v17 = v10;
  IDXGetFieldDataPtrs(*(this + 33), v19, v10, &v18, &v16);
  v5 = 0;
  if (v16 > 3u)
  {
    if (v16 == 4)
    {
      v5 = *v18;
    }

    else if (v16 == 8)
    {
      v5 = *v18;
    }
  }

  else if (v16 == 1)
  {
    v5 = *v18;
  }

  else if (v16 == 2)
  {
    v5 = *v18;
  }

LABEL_21:
  pthread_mutex_unlock((this + 392));
  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_32:
  result = DCSRecord::createRecordRef(*(this + 1), a2, v5, 0, v11);
LABEL_36:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *DCSIDXDictionary::copyData(DCSIDXDictionary *this, DCSRecord *a2, unint64_t a3)
{
  pthread_mutex_lock((this + 456));
  v6 = (*(*this + 336))(this, a3);
  v7 = *(this + 32);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    v9 = (*(*this + 16))(this);
    v7 = IDXCreateIndexObject(0, v9, @"DCSBodyDataIndex");
    *(this + 32) = v7;
  }

  if (((v7 != 0) & v6) != 1)
  {
    goto LABEL_25;
  }

  length = 0;
  if (IDXSupportDataPtr(v7))
  {
    v10 = IDXGetDataPtrByID(*(this + 32), *(a2 + 26), &length);
    v11 = CFDataCreateWithBytesNoCopy(0, v10, length, *MEMORY[0x277CBED00]);
  }

  else
  {
    v12 = *(this + 36);
    if (!v12)
    {
      *(this + 35) = 0x8000;
      v12 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
      *(this + 36) = v12;
    }

    v13 = IDXGetDataByID(*(this + 32), *(a2 + 26), *(this + 35), v12);
    length = v13;
    if (v13 > *(this + 35))
    {
      free(*(this + 36));
      *(this + 35) = v13;
      v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
      *(this + 36) = v14;
      v13 = IDXGetDataByID(*(this + 32), *(a2 + 26), *(this + 35), v14);
      length = v13;
    }

    if (!v13)
    {
      goto LABEL_25;
    }

    v11 = CFDataCreate(0, *(this + 36), v13);
  }

  v15 = v11;
  if (!v11 || a3 == 4)
  {
    goto LABEL_26;
  }

  BytePtr = CFDataGetBytePtr(v11);
  v17 = CFDataGetLength(v15);
  v18 = CFStringCreateWithBytes(0, BytePtr, v17, 0x8000100u, 0);
  CFRelease(v15);
  if (!v18)
  {
LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  if (a3 != 255)
  {
    v19 = (*(*this + 368))(this);
    if (CFStringCompare(v19, @"Korean", 0) == kCFCompareEqualTo)
    {
      v20 = *(this + 40);
      if (!v20)
      {
        operator new();
      }

      SourceXMLByReplacingImage = DCSDictionaryImageReplacement::createSourceXMLByReplacingImage(v20, v18);
      if (SourceXMLByReplacingImage)
      {
        v22 = SourceXMLByReplacingImage;
        CFRelease(v18);
        v18 = v22;
      }
    }
  }

  v23 = *(this + 1);
  DCSRecord::dataString(a2);
  v15 = CopyTransformedTextFromXML(v18, v23, a3);
  CFRelease(v18);
LABEL_26:
  pthread_mutex_unlock((this + 456));
  return v15;
}

uint64_t DCSIDXDictionary::hasRecord(DCSIDXDictionary *this, const __CFString *a2, unsigned __int16 a3, unsigned __int8 *a4)
{
  v4 = a3;
  if (a3 > 3uLL)
  {
    return 0;
  }

  v7 = a2;
  hasRecord_internal = DCSIDXDictionary::hasRecord_internal(this, a2, a3, a4);
  v5 = hasRecord_internal;
  if (v4 <= 1 && !hasRecord_internal || v4 == 2 && a4)
  {
    Length = CFStringGetLength(v7);
    v11 = (*(*this + 96))(this);
    if (v11)
    {
      v12 = v11;
      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v14 = Count;
        v50 = Length;
        *&v51 = a4;
        *(&v51 + 1) = v4;
        v49 = v5;
        v15 = 0;
        v57 = v7;
        v52 = Count;
        v53 = v12;
LABEL_10:
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        Value = CFDictionaryGetValue(ValueAtIndex, @"DCSDictionaryIndexLanguage");
        if (!Value)
        {
          goto LABEL_65;
        }

        v18 = Value;
        v56 = v15;
        v19 = CFStringCompare(Value, @"ar", 0);
        v20 = CFStringCompare(v18, @"he", 0);
        v21 = _IsStopLemmatizeWordForLanguage(v7, v18);
        v22 = 0;
        v23 = v21 ^ 1;
        v55 = v20;
        if ((v21 & 1) == 0 && v19 == kCFCompareEqualTo)
        {
          if (ContainsLatinAlphabets(v7))
          {
            v23 = 0;
            v22 = 0;
          }

          else
          {
            MutableCopy = CFStringCreateMutableCopy(0, 0, v7);
            ExtraNormalizeStringForArabic(MutableCopy, 0);
            if (CFStringCompare(v7, MutableCopy, 0))
            {
              v22 = DCSIDXDictionary::hasRecord_internal(this, MutableCopy, 0, 0);
              v23 = !v22;
            }

            else
            {
              v22 = 0;
            }

            CFRelease(MutableCopy);
          }
        }

        v25 = 0;
        v26 = v7;
        v54 = v22;
        v59 = v18;
        v58 = v23;
        while ((v23 & 1) != 0)
        {
          v27 = DCSCopyLemmas(v26, v18);
          if (v27)
          {
            v28 = v27;
            v29 = CFArrayGetCount(v27);
            if (v29 >= 1)
            {
              v30 = v29;
              v60 = v25;
              v31 = 0;
              while (2)
              {
                v32 = CFArrayGetValueAtIndex(v28, v31);
                v33 = 0;
                do
                {
                  v34 = CFStringCreateMutableCopy(0, 0, v32);
                  v35 = v34;
                  if (v33)
                  {
                    ExtraNormalizeStringForArabic(v34, 0);
                  }

                  else
                  {
                    v36 = (*(*this + 256))(this);
                    DCSNormalizeSearchStringWithOptionsAndLocale(v35, 0, v36);
                  }

                  v37 = DCSIDXDictionary::hasRecord_internal(this, v35, 0, 0);
                  CFRelease(v35);
                  if (v37)
                  {
                    v22 = 1;
                    goto LABEL_33;
                  }
                }

                while (!(v19 | v33++));
                if (++v31 != v30)
                {
                  continue;
                }

                break;
              }

              v22 = 0;
LABEL_33:
              v7 = v57;
              v18 = v59;
              v25 = v60;
              v23 = v58;
            }

            CFRelease(v28);
          }

          if (v22 || v19 || v26 != v7)
          {
            goto LABEL_44;
          }

          v26 = CFStringCreateMutableCopy(0, 0, v7);
          ExtraNormalizeStringForArabic(v26, 1);
          if (CFStringCompare(v7, v26, 0) == kCFCompareEqualTo)
          {
            v25 = v26;
LABEL_44:
            if (v19)
            {
              v39 = v55 == kCFCompareEqualTo;
            }

            else
            {
              v39 = 1;
            }

            v40 = v39;
            if ((!v22 & v40) != 1)
            {
              v14 = v52;
              v12 = v53;
              v15 = v56;
LABEL_62:
              if (!v25)
              {
                goto LABEL_64;
              }

LABEL_63:
              CFRelease(v25);
              goto LABEL_64;
            }

            v41 = CFStringCreateMutableCopy(0, 0, v7);
            v42 = v41;
            v12 = v53;
            if (v19 == kCFCompareEqualTo)
            {
              ExtraNormalizeStringForArabic(v41, 0);
            }

            v43 = _CopyPossibleArabicHebrewStemList(v42, v18);
            CFRelease(v42);
            v14 = v52;
            v15 = v56;
            if (!v43)
            {
              goto LABEL_62;
            }

            v61 = v25;
            v44 = CFArrayGetCount(v43);
            if (v44 < 1)
            {
              goto LABEL_68;
            }

            v45 = v44;
            v46 = 0;
            while (2)
            {
              v47 = CFArrayGetValueAtIndex(v43, v46);
              if (CFStringGetLength(v47) < 3)
              {
LABEL_59:
                if (v45 == ++v46)
                {
                  goto LABEL_68;
                }

                continue;
              }

              break;
            }

            if (!DCSIDXDictionary::hasRecord_internal(this, v47, 0, 0))
            {
              LOBYTE(v22) = 0;
              goto LABEL_59;
            }

            LOBYTE(v22) = 1;
LABEL_68:
            CFRelease(v43);
            v25 = v61;
            if (v61)
            {
              goto LABEL_63;
            }

LABEL_64:
            if (v22)
            {
              goto LABEL_72;
            }

LABEL_65:
            if (++v15 == v14)
            {
              return v49;
            }

            goto LABEL_10;
          }

          v22 = 0;
          v25 = v26;
          if (DCSIDXDictionary::hasRecord_internal(this, v26, 0, 0))
          {
            if (v26)
            {
              CFRelease(v26);
            }

            goto LABEL_72;
          }
        }

        v14 = v52;
        v12 = v53;
        v15 = v56;
        if (!v54)
        {
          goto LABEL_65;
        }

LABEL_72:
        v5 = 1;
        if (v51 > __PAIR128__(2, 0))
        {
          *(v51 + v50 - 1) = 1;
        }
      }
    }
  }

  return v5;
}

BOOL DCSIDXDictionary::hasRecord_internal(DCSIDXDictionary *this, const __CFString *a2, uint64_t a3, unsigned __int8 *a4)
{
  DCSIDXDictionary::prepareTrieIndex(this);
  if (!*(this + 31))
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_27CECA8E0, memory_order_acquire) & 1) == 0)
  {
    DCSIDXDictionary::hasRecord_internal();
  }

  pthread_mutex_lock((this + 328));
  if (IDXSetSearchString(*(this + 31), a2, _MergedGlobals[a3 + 6]))
  {
    v8 = IDXContainsMatchData(*(this + 31), a4) != 0;
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock((this + 328));
  return v8;
}

uint64_t DCSIDXDictionary::baseURL(DCSIDXDictionary *this)
{
  if (!*(this + 37) && (*(*this + 16))(this))
  {
    v2 = (*(*this + 16))(this);
    v3 = IDXCopyIndexNames(v2, 1);
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    *(this + 37) = ValueAtIndex;
    if (ItemExistsAtURL(ValueAtIndex))
    {
      CFRetain(*(this + 37));
    }

    else
    {
      v5 = DCSBaseDictionary::baseURL(this);
      *(this + 37) = CFRetain(v5);
    }

    CFRelease(v3);
  }

  return *(this + 37);
}

uint64_t DCSIDXDictionary::languages(DCSIDXDictionary *this)
{
  v23 = *MEMORY[0x277D85DE8];
  result = *(this + 38);
  if (result == -1)
  {
    pthread_mutex_lock((this + 520));
    if (*(this + 38) == -1)
    {
      v3 = DCSBaseDictionary::languages(this);
      *(this + 38) = v3;
      if (v3)
      {
        v4 = v3;
        if (CFArrayGetCount(v3) == 2 && (ValueAtIndex = CFArrayGetValueAtIndex(v4, 0), Value = CFDictionaryGetValue(ValueAtIndex, @"DCSDictionaryDescriptionLanguage"), v7 = CFDictionaryGetValue(ValueAtIndex, @"DCSDictionaryIndexLanguage"), !CFEqual(Value, v7)))
        {
          values = CFArrayGetValueAtIndex(v4, 1);
          v22 = ValueAtIndex;
          v4 = CFArrayCreate(0, &values, 2, MEMORY[0x277CBF128]);
        }

        else
        {
          CFRetain(v4);
        }

        *(this + 38) = v4;
        goto LABEL_20;
      }

      if ((*(*this + 216))(this))
      {
        v8 = (*(*this + 376))(this);
        v9 = CFBundleCopyBundleLocalizations(v8);
        if (v9)
        {
          v10 = v9;
          v11 = CFBundleCopyPreferredLocalizationsFromArray(v9);
          CFRelease(v10);
          if (v11)
          {
            v12 = CFArrayGetValueAtIndex(v11, 0);
            if (v12)
            {
              v13 = v12;
              CFRetain(v12);
              CFRelease(v11);
              v14 = CFLocaleCreate(0, v13);
              CFRelease(v13);
              if (!v14)
              {
                goto LABEL_20;
              }

              v15 = CFLocaleGetValue(v14, *MEMORY[0x277CBEED0]);
              v16 = CFLocaleGetValue(v14, *MEMORY[0x277CBEE98]);
              v17 = v16 ? CFStringCreateWithFormat(0, 0, @"%@-%@", v15, v16) : CFRetain(v15);
              v11 = v17;
              CFRelease(v14);
              if (!v11)
              {
                goto LABEL_20;
              }

              values = @"DCSDictionaryIndexLanguage";
              v22 = @"DCSDictionaryDescriptionLanguage";
              v20[0] = v11;
              v20[1] = v11;
              cf = CFDictionaryCreate(0, &values, v20, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *(this + 38) = CFArrayCreate(0, &cf, 1, MEMORY[0x277CBF128]);
              CFRelease(cf);
            }

            CFRelease(v11);
          }
        }
      }
    }

LABEL_20:
    pthread_mutex_unlock((this + 520));
    result = *(this + 38);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL DCSIDXDictionary::validDictionary(DCSIDXDictionary *this)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  v2 = (*(*this + 16))(this);
  v3 = CFBundleCopyInfoDictionaryInDirectory(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, @"IDXDictionaryIndexes");
  v8 = Value && (ValueAtIndex = CFArrayGetValueAtIndex(Value, 0)) != 0 && (v7 = CFDictionaryGetValue(ValueAtIndex, @"IDXIndexName")) != 0 && CFStringCompare(v7, @"DCSKeywordIndex", 0) == kCFCompareEqualTo;
  CFRelease(v4);
  return v8;
}

BOOL DCSIDXDictionary::isLocalizableDictionary(DCSIDXDictionary *this)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  v2 = (*(*this + 16))(this);
  v3 = IDXCopyIndexNames(v2, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
  if (ValueAtIndex && (v6 = CFURLCreateCopyDeletingLastPathComponent(0, ValueAtIndex)) != 0)
  {
    v7 = v6;
    PathComponent = CFURLCopyLastPathComponent(v6);
    if (PathComponent)
    {
      v9 = PathComponent;
      v10 = CFStringHasSuffix(PathComponent, @".lproj") != 0;
      CFRelease(v7);
      v7 = v9;
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v4);
  return v10;
}

uint64_t DCSIDXDictionary::primaryLocale(DCSIDXDictionary *this)
{
  result = *(this + 39);
  if (!result)
  {
    pthread_mutex_lock((this + 520));
    if (!*(this + 39))
    {
      v3 = DCSBaseDictionary::primaryLanguage(this);
      if (v3)
      {
        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, v3);
        if (CanonicalLanguageIdentifierFromString)
        {
          v5 = CanonicalLanguageIdentifierFromString;
          *(this + 39) = CFLocaleCreate(0, CanonicalLanguageIdentifierFromString);
          CFRelease(v5);
        }
      }
    }

    pthread_mutex_unlock((this + 520));
    return *(this + 39);
  }

  return result;
}

uint64_t DCSIDXDictionary::purgeInactiveData(DCSIDXDictionary *this)
{
  result = pthread_mutex_trylock((this + 456));
  if (!result)
  {
    v3 = *(this + 32);
    if (v3)
    {
      CFRelease(v3);
      *(this + 32) = 0;
    }

    return pthread_mutex_unlock((this + 456));
  }

  return result;
}

uint64_t DCSIDXDictionary::languageDirectionOfFoundRecord(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return (*(v2 + 192) >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

CFTypeRef ___ZL31_IsStopLemmatizeWordForLanguagePK10__CFStringS1__block_invoke()
{
  v0 = SyncSingleton<DCSEnvironment>::instance();
  FrameworkBundle = DCSEnvironment::getFrameworkBundle(v0);
  result = CFBundleGetValueForInfoDictionaryKey(FrameworkBundle, @"DSCStopLemmatizeWordList");
  _IsStopLemmatizeWordForLanguage(__CFString const*,__CFString const*)::_StopWordDict = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t _CompareStringLength(const __CFString *a1, const __CFString *a2, void *a3)
{
  Length = CFStringGetLength(a1);
  v5 = CFStringGetLength(a2);
  if (Length <= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (Length < v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

CFTypeRef ___ZL24_CreateNextPossibleStemsPK10__CFStringS1__block_invoke()
{
  v0 = SyncSingleton<DCSEnvironment>::instance();
  FrameworkBundle = DCSEnvironment::getFrameworkBundle(v0);
  result = CFBundleGetValueForInfoDictionaryKey(FrameworkBundle, @"DCSStemGuessData");
  _CreateNextPossibleStems(__CFString const*,__CFString const*)::_StemGuessData = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void DCSDictionaryImageReplacement::DCSDictionaryImageReplacement(DCSDictionaryImageReplacement *this, CFTypeRef cf)
{
  *this = cf;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  CFRetain(cf);
}

void DCSDictionaryImageReplacement::~DCSDictionaryImageReplacement(DCSDictionaryImageReplacement *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    munmap(v3, *(this + 3));
  }

  v4 = *(this + 4);
  if (v4)
  {
    if (*(v4 + 48))
    {
      free(*(v4 + 8));
    }

    free(v4);
  }
}

void DCSDictionaryImageReplacement::openData(const __CFURL **this)
{
  DictionaryComponentURL = CreateDictionaryComponentURL(*this, @"Resources/ImageData.data");
  CFRelease(*this);
  *this = 0;
  FileSystemPath = CreateFileSystemPath(DictionaryComponentURL);
  CFRelease(DictionaryComponentURL);
  if (FileSystemPath)
  {
    v4 = open(FileSystemPath, 0);
    free(FileSystemPath);
    if (v4 != -1)
    {
      fstat(v4, &v12);
      st_size = v12.st_size;
      this[3] = v12.st_size;
      this[2] = mmap(0, st_size, 1, 1, v4, 0);
      close(v4);
      v6 = this[2];
      v7 = (v6 + 8);
      v8 = *v6;
      v9 = malloc_type_malloc(0x48uLL, 0x1090040DA38FBB1uLL);
      if (v9)
      {
        *(v9 + 8) = 0;
        *(v9 + 2) = 0u;
        *(v9 + 3) = 0u;
        *v9 = 0u;
        *(v9 + 1) = 0u;
        *(v9 + 1) = v7;
        *(v9 + 5) = v8;
        if (v8 >= 0x18)
        {
          *v9 = *(v6 + 3);
          *(v9 + 2) = v7 + *(v6 + 5);
          v10 = *(v6 + 3);
          *&v11 = v10;
          *(&v11 + 1) = HIDWORD(v10);
          *(v9 + 24) = v11;
        }
      }

      this[4] = v9;
      this[5] = (v7 + v8);
    }
  }
}

__CFString *DCSDictionaryImageReplacement::createSourceXMLByReplacingImage(const __CFURL **this, CFStringRef theString)
{
  v3 = this;
  if ((this[1] & 1) == 0)
  {
    DCSDictionaryImageReplacement::openData(this);
    *(v3 + 8) = 1;
  }

  if (!v3[4])
  {
    return 0;
  }

  v51.length = CFStringGetLength(theString);
  v51.location = 0;
  Results = CFStringCreateArrayWithFindResults(0, theString, @"<img src=", v51, 0);
  if (!Results)
  {
    return 0;
  }

  v5 = Results;
  Length = CFStringGetLength(theString);
  if (CFArrayGetCount(v5) < 1)
  {
    v8 = 0;
    Mutable = 0;
    goto LABEL_55;
  }

  Mutable = 0;
  v8 = 0;
  v9 = 0;
  contentsDeallocator = *MEMORY[0x277CBED00];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
    v11 = ValueAtIndex[1] + *ValueAtIndex;
    location = v11 + 4;
    if (v11 >= Length || location >= Length)
    {
      break;
    }

    if (CFStringGetCharacterAtIndex(theString, v11 + 4) != 34)
    {
      goto LABEL_48;
    }

    v48.location = v11;
    v48.length = 4;
    if (CFStringGetBytes(theString, v48, 0x8000100u, 0, 0, &v47.length + 4, 4, 0) != 4)
    {
      location = v8;
      goto LABEL_47;
    }

    v47.location = v8;
    v15 = v3[4];
    v16 = 4;
    v17 = &v47.length + 4;
    v18 = v15;
    while (1)
    {
      v19 = *v18;
      if ((v19 & 3) == 3)
      {
        v20 = (*(v15 + 1) + v19 - 3);
        if (!v16)
        {
          goto LABEL_42;
        }

        v18 = &v20[4 * *v17 + 4];
        goto LABEL_26;
      }

      if ((v19 & 3) != 2)
      {
        break;
      }

      v20 = (*(v15 + 1) + v19 - 2);
      if (!v16)
      {
        goto LABEL_42;
      }

      v21 = *v17;
      v22 = (v20 + 4);
      v23 = v21 >> 5;
      v24 = *&v20[4 * (v21 >> 5) + 4];
      if (((v24 >> v21) & 1) == 0)
      {
        goto LABEL_46;
      }

      if (v21 >= 0x20)
      {
        v25 = 0;
        do
        {
          v26 = *v22++;
          v14 = vcnt_s8(v26);
          v14.i16[0] = vaddlv_u8(v14);
          v25 += v14.i32[0];
          --v23;
        }

        while (v23);
      }

      else
      {
        v25 = 0;
      }

      v14.i32[0] = v24 & ~(-1 << (v21 & 0x1F));
      v14 = vcnt_s8(v14);
      v14.i16[0] = vaddlv_u8(v14);
      v18 = &v20[4 * (v25 + v14.i32[0]) + 40];
LABEL_26:
      --v16;
      ++v17;
    }

    if ((v19 & 3) == 0)
    {
      goto LABEL_46;
    }

    v27 = (*(v15 + 2) + v19 - 1);
    if (!v16)
    {
      v20 = (v27 + 1);
      goto LABEL_42;
    }

    v28 = *v27;
    if (v28 < 5)
    {
      goto LABEL_46;
    }

    v42 = Length;
    v43 = Mutable;
    v44 = v3;
    v46 = v27 + v28;
    v29 = (v27 + 2);
    while (1)
    {
      v32 = *v29;
      v30 = v29 + 1;
      v31 = v32;
      v33 = v32 - v16;
      v34 = v32 >= v16 ? v16 : v31;
      v35 = memcmp(v30, v17, v34);
      v36 = v35 ? v35 : v33;
      if ((v36 & 0x80000000) == 0)
      {
        break;
      }

      v37 = &v30[v31];
      v29 = &v30[v31 + 4];
      if (v37 >= v46)
      {
        goto LABEL_51;
      }
    }

    if (v36)
    {
LABEL_51:
      location = v47.location;
      Mutable = v43;
      v3 = v44;
      Length = v42;
      goto LABEL_47;
    }

    v20 = &v30[v31];
    Mutable = v43;
    v3 = v44;
    Length = v42;
LABEL_42:
    v38 = *v20;
    if (!v38)
    {
LABEL_46:
      location = v47.location;
      goto LABEL_47;
    }

    v39 = Length;
    if (!Mutable)
    {
      Mutable = CFStringCreateMutable(0, 0);
    }

    v49.location = v47.location;
    v49.length = v11 - v47.location;
    appendOriginalSubstring(Mutable, theString, v49);
    v40 = CFStringCreateWithBytesNoCopy(0, v3[5] + v38, *(v3[5] + v38 - 4), 0x8000100u, 0, contentsDeallocator);
    CFStringAppend(Mutable, v40);
    CFRelease(v40);
    Length = v39;
LABEL_47:
    v8 = location;
LABEL_48:
    ++v9;
  }

  while (v9 < CFArrayGetCount(v5));
LABEL_55:
  CFRelease(v5);
  if (v8 && Length > v8)
  {
    v50.location = v8;
    v50.length = Length - v8;
    appendOriginalSubstring(Mutable, theString, v50);
  }

  return Mutable;
}

void appendOriginalSubstring(__CFString *a1, const __CFString *a2, CFRange a3)
{
  v4 = CFStringCreateWithSubstring(0, a2, a3);
  CFStringAppend(a1, v4);

  CFRelease(v4);
}

void DCSRecord::DCSRecord(DCSRecord *this, DCSDictionary *a2, const unsigned __int16 *a3, size_t a4, const unsigned __int16 *a5, size_t a6, const unsigned __int16 *a7, size_t a8, const unsigned __int16 *a9, size_t a10, const unsigned __int16 *a11, uint64_t a12, const unsigned __int16 *a13, size_t a14, unsigned int a15, BOOL a16, unsigned __int16 a17, unint64_t a18, uint64_t a19, const __CFURL *a20, const __CFString *a21)
{
  *this = a2;
  *(this + 4) = a15;
  *(this + 20) = a16;
  *(this + 4) = 0;
  *(this + 5) = a4;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a6;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = a8;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = a10;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = a12;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 216) = 0u;
  *(this + 20) = a14;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 96) = a17;
  *(this + 25) = a19;
  *(this + 26) = a18;
  *(this + 232) = 0u;
  if (a21)
  {
    *(this + 27) = CFRetain(a21);
  }

  if (a20)
  {
    *(this + 28) = CFRetain(a20);
  }

  v26 = **this;
  *(this + 1) = v26;
  CFRetain(v26);
  v27 = DCSDictionary::dictionaryFlag(*this);
  *(this + 3) = v27;
  v28 = 0;
  if ((v27 & 4) != 0)
  {
    if (a6 && a12 >= 1)
    {
      v28 = a4 != a6 || memcmp(a3, a5, a6) != 0;
    }
  }

  else if (a12 >= 1 && a4 == a12)
  {
    v28 = memcmp(a3, a11, a12) == 0;
  }

  *(this + 21) = v28;
  if (a16)
  {
    if (a3)
    {
      v29 = malloc_type_malloc(a4, 0x1000040BDFB0063uLL);
      *(this + 4) = v29;
      memcpy(v29, a3, a4);
    }

    if (a5)
    {
      v30 = malloc_type_malloc(a6, 0x1000040BDFB0063uLL);
      *(this + 7) = v30;
      memcpy(v30, a5, a6);
    }

    if (a7)
    {
      v31 = malloc_type_malloc(a8, 0x1000040BDFB0063uLL);
      *(this + 10) = v31;
      memcpy(v31, a7, a8);
    }

    if (a9)
    {
      v32 = malloc_type_malloc(a10, 0x1000040BDFB0063uLL);
      *(this + 13) = v32;
      memcpy(v32, a9, a10);
    }

    if (a11)
    {
      v33 = malloc_type_malloc(a12, 0x1000040BDFB0063uLL);
      *(this + 16) = v33;
      memcpy(v33, a11, a12);
    }

    if (a13)
    {
      v34 = malloc_type_malloc(a14, 0x1000040BDFB0063uLL);
      *(this + 19) = v34;
      memcpy(v34, a13, a14);
    }
  }

  else
  {
    *(this + 4) = a3;
    *(this + 7) = a5;
    *(this + 10) = a7;
    *(this + 13) = a9;
    *(this + 16) = a11;
    *(this + 19) = a13;
  }
}

void DCSRecord::~DCSRecord(DCSRecord *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 27);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 22);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 23);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(*(this + 1));
  if (*(this + 20) == 1)
  {
    v12 = *(this + 4);
    if (v12)
    {
      free(v12);
    }

    v13 = *(this + 7);
    if (v13)
    {
      free(v13);
    }

    v14 = *(this + 10);
    if (v14)
    {
      free(v14);
    }

    v15 = *(this + 13);
    if (v15)
    {
      free(v15);
    }

    v16 = *(this + 16);
    if (v16)
    {
      free(v16);
    }

    v17 = *(this + 19);
    if (v17)
    {
      free(v17);
    }
  }
}

uint64_t DCSRecord::createRecordRef(DCSRecord *this, DCSDictionary *a2, const unsigned __int16 *a3, uint64_t a4, const unsigned __int16 *a5, uint64_t a6, const unsigned __int16 *a7, uint64_t a8, const unsigned __int16 *a9, uint64_t a10, const unsigned __int16 *a11, uint64_t a12, const unsigned __int16 *a13, uint64_t a14, unsigned int a15, BOOL a16, unsigned __int16 a17, unint64_t a18, uint64_t a19, const __CFURL *a20, const __CFString *a21)
{
  pthread_once(&_DCSRecordClassID(void)::once_control, _DCSRecordInitialize);
  if (_CFRuntimeCreateInstance())
  {
    operator new();
  }

  return 0;
}

uint64_t DCSRecord::createRecordRef(DCSRecord *this, DCSDictionary *a2, const __CFString *a3, uint64_t a4, const __CFURL *a5)
{
  HIWORD(v6) = 0;
  BYTE4(v6) = 0;
  LODWORD(v6) = 256;
  return DCSRecord::createRecordRef(this, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v6, a3, SBYTE4(a3), HIWORD(a3), 0, a4, a2, vars0);
}

CFStringRef DCSRecord::keyString(DCSRecord *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = *(this + 4);
    if (v3)
    {
      result = CFStringCreateWithBytes(0, v3, *(this + 5), *(this + 4), 0);
      *(this + 6) = result;
    }

    else
    {
      return *(this + 27);
    }
  }

  return result;
}

CFIndex DCSRecord::setKeyString(DCSRecord *this, CFStringRef theString)
{
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 6) = CFStringCreateCopy(0, theString);
  result = CFStringGetLength(theString);
  *(this + 5) = 2 * result;
  return result;
}

void *DCSRecord::headword(DCSRecord *this)
{
  result = *(this + 22);
  if (!result)
  {
    if (!*(this + 4))
    {
      return *(this + 27);
    }

    if (*(this + 17))
    {
      v3 = *(this + 3);
      if (v3 & 1) != 0 || (v3 & 2) == 0 && (*(this + 21))
      {
        v4 = DCSRecord::yomiString(this);
        v5 = DCSRecord::dataString(this);
      }

      else
      {
        v4 = DCSRecord::dataString(this);
        v5 = DCSRecord::yomiString(this);
      }

      v7 = v5;
      if (CFStringCompare(v4, v5, 0))
      {
        v8 = *(this + 3);
        if ((v8 & 8) != 0)
        {
          result = CFStringCreateWithFormat(0, 0, @"%@  %@", v4, v7);
        }

        else if ((v8 & 0x10) != 0)
        {
          result = CFStringCreateWithFormat(0, 0, @"%@ (%@)", v4, v7);
        }

        else
        {
          result = CFStringCreateWithFormat(0, 0, @"%@%C%@%C", v4, 12304, v7, 12305);
        }

        goto LABEL_19;
      }

      v6 = v4;
    }

    else
    {
      v6 = DCSRecord::dataString(this);
    }

    result = CFRetain(v6);
LABEL_19:
    *(this + 22) = result;
  }

  return result;
}

CFStringRef DCSRecord::dataString(DCSRecord *this)
{
  result = *(this + 9);
  if (!result)
  {
    v3 = *(this + 7);
    if (v3)
    {
      result = CFStringCreateWithBytes(0, v3, *(this + 8), *(this + 4), 0);
      *(this + 9) = result;
    }

    else
    {

      return DCSRecord::keyString(this);
    }
  }

  return result;
}

CFStringRef DCSRecord::yomiString(DCSRecord *this)
{
  v1 = *(this + 16);
  if (!v1)
  {
    return 0;
  }

  result = *(this + 18);
  if (!result)
  {
    result = CFStringCreateWithBytes(0, v1, *(this + 17), *(this + 4), 0);
    *(this + 18) = result;
  }

  return result;
}

CFStringRef DCSRecord::setHeadword(DCSRecord *this, CFStringRef theString)
{
  v4 = *(this + 22);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 22) = CFStringCreateCopy(0, theString);
  v5 = *(this + 9);
  if (v5)
  {
    CFRelease(v5);
  }

  result = CFStringCreateCopy(0, theString);
  *(this + 9) = result;
  return result;
}

CFStringRef DCSRecord::titleString(DCSRecord *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    result = *(this + 12);
    if (!result)
    {
      result = CFStringCreateWithBytes(0, v2, *(this + 11), *(this + 4), 0);
      *(this + 12) = result;
    }
  }

  else if (*(this + 17) < 1)
  {
    return 0;
  }

  else
  {

    return DCSRecord::dataString(this);
  }

  return result;
}

CFStringRef DCSRecord::anchorString(DCSRecord *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
    return 0;
  }

  result = *(this + 15);
  if (!result)
  {
    result = CFStringCreateWithBytes(0, v1, *(this + 14), *(this + 4), 0);
    *(this + 15) = result;
  }

  return result;
}

CFStringRef DCSRecord::sortkeyString(DCSRecord *this)
{
  v1 = *(this + 19);
  if (!v1)
  {
    return 0;
  }

  result = *(this + 21);
  if (!result)
  {
    result = CFStringCreateWithBytes(0, v1, *(this + 20), *(this + 4), 0);
    *(this + 21) = result;
  }

  return result;
}

CFStringRef DCSRecord::headwordSortString(DCSRecord *this, int a2)
{
  if (*(this + 21) != 1 || a2 && (*(this + 24) & 2) != 0)
  {
    result = *(this + 23);
    if (!result)
    {
      v4 = DCSRecord::dataString(this);
      MutableCopy = CFStringCreateMutableCopy(0, 0, v4);
      v6 = DCSDictionary::primaryLocale(*this);
      DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 1, v6);
      *(this + 23) = MutableCopy;
      v7 = DCSRecord::dataString(this);
      if (CFStringCompare(v7, MutableCopy, 0))
      {
        return *(this + 23);
      }

      else
      {
        CFRelease(MutableCopy);
        v8 = DCSRecord::dataString(this);
        result = CFRetain(v8);
        *(this + 23) = result;
      }
    }
  }

  else
  {
    result = DCSRecord::yomiString(this);
    if (!result)
    {
      if (!*(this + 7) && (*(this + 24) & 0x20) != 0)
      {

        return DCSRecord::keyString(this);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

__CFDictionary *DCSRecord::copyKeyedElements(DCSDictionary **this, const __CFArray *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  if (DCSDictionary::previewMarkupVersion(*this) == 1)
  {
    if (DCSRecord::copyKeyedElements(__CFArray const*)::_DispatchOnceToken != -1)
    {
      DCSRecord::copyKeyedElements();
    }

    if (a2)
    {
      Count = CFArrayGetCount(DCSRecord::copyKeyedElements(__CFArray const*)::_DefinedKeyArray);
      Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
      v6 = CFArrayGetCount(a2);
      if (v6 >= 1)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v57.location = 0;
          v57.length = Count;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(DCSRecord::copyKeyedElements(__CFArray const*)::_DefinedKeyArray, v57, ValueAtIndex);
          if (FirstIndexOfValue != -1)
          {
            v11 = CFArrayGetValueAtIndex(DCSRecord::copyKeyedElements(__CFArray const*)::_DefinedKeyArray, FirstIndexOfValue);
            CFArrayAppendValue(Mutable, v11);
          }
        }
      }
    }

    else
    {
      Mutable = CFRetain(DCSRecord::copyKeyedElements(__CFArray const*)::_DefinedKeyArray);
    }

    if (CFArrayGetCount(Mutable) < 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = DCSRecord::copyElementsByMarkupText(this, Mutable);
    }

    v17 = Mutable;
    goto LABEL_73;
  }

  v54 = this;
  if (a2)
  {
    v12 = CFArrayGetCount(a2);
    v13 = DCSDictionary::elementXPaths(*this);
    CFRetain(a2);
  }

  else
  {
    v15 = DCSDictionary::elementXPaths(*this);
    v13 = v15;
    if (v15)
    {
      v15 = CFDictionaryGetCount(v15);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v12 = v16 + 3;
    MEMORY[0x28223BE20](v15);
    v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v18 >= 0x200)
    {
      v20 = 512;
    }

    else
    {
      v20 = v18;
    }

    bzero(&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    v21 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
    if (v13)
    {
      CFDictionaryGetKeysAndValues(v13, v19, 0);
      if (v16 >= 1)
      {
        v22 = v19;
        v23 = v16;
        do
        {
          v24 = _CopyConvertedTextElementKey(*v22, 0);
          if (v24)
          {
            v25 = v24;
            *v22 = v24;
            CFArrayAppendValue(v21, v24);
            CFRelease(v25);
          }

          ++v22;
          --v23;
        }

        while (v23);
      }
    }

    v26 = &v19[v16];
    *v26 = @"DCSTextElementKeyRecordID";
    v26[1] = @"DCSTextElementKeyHeadword";
    v26[2] = @"DCSTextElementKeySensesWithAttributes";
    a2 = CFArrayCreate(0, v19, v16 + 3, MEMORY[0x277CBF128]);
    CFRelease(v21);
  }

  v55 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v12 >= 1)
  {
    for (j = 0; v12 != j; ++j)
    {
      v28 = CFArrayGetValueAtIndex(a2, j);
      v29 = v28;
      if (v13)
      {
        if (CFStringCompare(v28, @"DCSTextElementKeySensesWithAttributes", 0))
        {
          v30 = v29;
        }

        else
        {
          v30 = @"DCSTextElementKeySenses";
        }

        Value = CFDictionaryGetValue(v13, v30);
        if (Value)
        {
          v32 = Value;
LABEL_39:
          v33 = v55;
          v34 = v29;
          v35 = v32;
          goto LABEL_48;
        }

        v36 = _CopyConvertedTextElementKey(v30, 1);
        if (v36)
        {
          v37 = v36;
          v32 = CFDictionaryGetValue(v13, v36);
          CFRelease(v37);
          if (v32)
          {
            goto LABEL_39;
          }
        }
      }

      if (CFStringCompare(v29, @"id", 0) && CFStringCompare(v29, @"DCSTextElementKeyRecordID", 0))
      {
        if (CFStringHasPrefix(v29, @"xpath_"))
        {
          v38 = CFStringFind(v29, @":", 0);
          if (v38.length)
          {
            v59.length = CFStringGetLength(v29) - (v38.location + v38.length);
            v59.location = v38.location + v38.length;
            v39 = CFStringCreateWithSubstring(0, v29, v59);
            v60.location = 0;
            v60.length = v38.location + v38.length;
            v40 = CFStringCreateWithSubstring(0, v29, v60);
            CFDictionarySetValue(v55, v40, v39);
            CFRelease(v39);
            CFRelease(v40);
          }
        }

        continue;
      }

      v33 = v55;
      v34 = @"DCSTextElementKeyRecordID";
      v35 = @"//d:entry/@id";
LABEL_48:
      CFDictionarySetValue(v33, v34, v35);
    }
  }

  if (v13 && (v41 = CFDictionaryGetValue(v13, @"namespaces")) != 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v41);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v43 = MutableCopy;
  v44 = CFDictionaryContainsKey(MutableCopy, @"d");
  v45 = v54;
  if (!v44)
  {
    CFDictionarySetValue(v43, @"d", @"http://www.apple.com/DTDs/DictionaryService-1.0.rng");
  }

  if (CFDictionaryGetCount(v55))
  {
    v46 = 1;
    v47 = DCSDictionary::copyData(*v45, v45);
    v48 = v47;
    if (v47)
    {
      v14 = CopyXPathElementsArray(v47, v55, v43);
      v46 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v48 = 0;
    v14 = 0;
    v46 = 1;
  }

  v58.length = CFArrayGetCount(a2);
  v58.location = 0;
  if (CFArrayContainsValue(a2, v58, @"DCSTextElementKeyHeadword") && (!v14 || !CFDictionaryContainsKey(v14, @"DCSTextElementKeyHeadword")))
  {
    v49 = DCSRecord::titleString(v45);
    if (v49 || (v49 = DCSRecord::headword(v45)) != 0)
    {
      v50 = v49;
      if (!v14)
      {
        v14 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      CFDictionarySetValue(v14, @"DCSTextElementKeyHeadword", v50);
    }
  }

  CFRelease(v43);
  CFRelease(v55);
  if ((v46 & 1) == 0)
  {
    CFRelease(v48);
  }

  if (a2)
  {
    v17 = a2;
LABEL_73:
    CFRelease(v17);
  }

  v51 = *MEMORY[0x277D85DE8];
  return v14;
}

CFArrayRef ___ZN9DCSRecord17copyKeyedElementsEPK9__CFArray_block_invoke()
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = @"DCSTextElementKeyRecordID";
  v2[1] = @"DCSTextElementKeyHeadword";
  v2[2] = @"DCSTextElementKeySyllabifiedHeadword";
  v2[3] = @"DCSTextElementKeyPartOfSpeech";
  v2[4] = @"DCSTextElementKeyPronunciation";
  v2[5] = @"DCSTextElementKeySenses";
  v2[6] = @"DCSTextElementKeySensesWithAttributes";
  result = CFArrayCreate(0, v2, 7, MEMORY[0x277CBF128]);
  DCSRecord::copyKeyedElements(__CFArray const*)::_DefinedKeyArray = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

__CFDictionary *DCSRecord::copyElementsByMarkupText(DCSDictionary **this, const __CFArray *a2)
{
  v4 = DCSDictionary::copyData(*this, this);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Length = CFStringGetLength(v4);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"amp", @"&");
  CFDictionaryAddValue(Mutable, @"quot", @"");
  CFDictionaryAddValue(Mutable, @"lt", @"<");
  CFDictionaryAddValue(Mutable, @"gt", @">");
  CFDictionaryAddValue(Mutable, @"apos", @"'");
  theString = v5;
  v112 = 0;
  v113 = Length - 1;
  CharactersPtr = CFStringGetCharactersPtr(v5);
  CStringPtr = 0;
  v110 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  v100 = this;
  theArray = a2;
  v114 = 0;
  v115 = 0;
  v111 = CStringPtr;
  v10 = CFStringCreateMutable(0, 0);
  v11 = v10;
  if (Length >= 1)
  {
    v12 = 0;
    v13 = 0;
    v103 = Mutable;
    v104 = v10;
    v105 = v5;
    while (1)
    {
      if (v13 < 0 || (v14 = v113, v113 <= v13))
      {
        v16 = v13 + 1;
      }

      else
      {
        if (v110)
        {
          v15 = v110[v112 + v13];
        }

        else if (v111)
        {
          v15 = v111[v112 + v13];
        }

        else
        {
          if (v115 <= v13 || (v17 = v114, v114 > v13))
          {
            v18 = v13 - 4;
            if (v13 < 4)
            {
              v18 = 0;
            }

            if (v18 + 64 < v113)
            {
              v14 = v18 + 64;
            }

            v114 = v18;
            v115 = v14;
            v116.length = v14 - v18;
            v116.location = v112 + v18;
            CFStringGetCharacters(theString, v116, buffer);
            v17 = v114;
          }

          v15 = *(&buffer[0].location + v13 - v17);
        }

        v19 = v13 + 1;
        if (v15 == 38)
        {
          if (v13 > v12)
          {
            v122.location = v12;
            v122.length = v13 - v12;
            v20 = CFStringCreateWithSubstring(0, v5, v122);
            CFStringAppend(v11, v20);
            CFRelease(v20);
          }

          v21 = v113;
          if (v113 <= v19)
          {
            v22 = 0;
            v16 = v13 + 2;
          }

          else
          {
            if (v110)
            {
              v22 = v110[v112 + v19];
            }

            else if (v111)
            {
              v22 = v111[v112 + v19];
            }

            else
            {
              if (v115 <= v19 || (v23 = v114, v114 > v19))
              {
                v24 = v13 - 3;
                if (v13 < 3)
                {
                  v24 = 0;
                }

                if (v24 + 64 < v113)
                {
                  v21 = v24 + 64;
                }

                v114 = v24;
                v115 = v21;
                v117.length = v21 - v24;
                v117.location = v112 + v24;
                CFStringGetCharacters(theString, v117, buffer);
                v23 = v114;
              }

              v22 = *(&buffer[0].location + v19 - v23);
            }

            v16 = v13 + 2;
            if (v22 == 35)
            {
              v25 = v113;
              if (v113 <= v16)
              {
                v40 = 0;
                v22 = 0;
                v16 = v13 + 3;
              }

              else
              {
                if (v110)
                {
                  v22 = v110[v112 + v16];
                }

                else if (v111)
                {
                  v22 = v111[v112 + v16];
                }

                else
                {
                  if (v115 <= v16 || (v41 = v114, v114 > v16))
                  {
                    v42 = v13 - 2;
                    if (v13 < 2)
                    {
                      v42 = 0;
                    }

                    if (v42 + 64 < v113)
                    {
                      v25 = v42 + 64;
                    }

                    v114 = v42;
                    v115 = v25;
                    v119.length = v25 - v42;
                    v119.location = v112 + v42;
                    CFStringGetCharacters(theString, v119, buffer);
                    v41 = v114;
                  }

                  v22 = *(&buffer[0].location + v16 - v41);
                }

                v16 = v13 + 3;
                if (v22 == 120)
                {
                  v43 = v113;
                  if (v113 <= v16)
                  {
                    v22 = 0;
                  }

                  else if (v110)
                  {
                    v22 = v110[v112 + v16];
                  }

                  else if (v111)
                  {
                    v22 = v111[v112 + v16];
                  }

                  else
                  {
                    if (v115 <= v16 || (v65 = v114, v114 > v16))
                    {
                      v66 = v13 - 1;
                      if (!v13)
                      {
                        v66 = 0;
                      }

                      if (v66 + 64 < v113)
                      {
                        v43 = v66 + 64;
                      }

                      v114 = v66;
                      v115 = v43;
                      v121.length = v43 - v66;
                      v121.location = v112 + v66;
                      CFStringGetCharacters(theString, v121, buffer);
                      v65 = v114;
                    }

                    v22 = *(&buffer[0].location + v16 - v65);
                  }

                  v16 = v13 + 4;
                  v44 = 16;
                  v40 = 1;
                  goto LABEL_91;
                }

                v40 = 0;
              }

              v44 = 10;
LABEL_91:
              v26 = 0;
              if (Length <= v16)
              {
                v45 = v16;
              }

              else
              {
                v45 = Length;
              }

              v46 = -v16;
              for (i = v16 + 64; ; ++i)
              {
                if (v16 >= 4)
                {
                  v48 = 4;
                }

                else
                {
                  v48 = v16;
                }

                if ((v22 - 48) > 9u)
                {
                  v50 = v40 ^ 1;
                  if ((v22 - 97) > 5u)
                  {
                    v51 = 1;
                  }

                  else
                  {
                    v51 = v40 ^ 1;
                  }

                  if (v51)
                  {
                    if ((v22 - 65) > 5u)
                    {
                      v50 = 1;
                    }

                    if (v50)
                    {
                      Mutable = v103;
                      v11 = v104;
                      v19 = v13 + 1;
                      v5 = v105;
                      goto LABEL_46;
                    }

                    v49 = 16 * v26 - 55;
                  }

                  else
                  {
                    v49 = 16 * v26 - 87;
                  }
                }

                else
                {
                  v49 = v26 * v44 - 48;
                }

                v26 = v49 + v22;
                if (v45 == v16)
                {
                  v16 = v45;
                  Mutable = v103;
                  v11 = v104;
                  v19 = v13 + 1;
                  v5 = v105;
                  goto LABEL_128;
                }

                if (v16 < 0 || (v52 = v113, v113 <= v16))
                {
                  v22 = 0;
                }

                else
                {
                  if (v110)
                  {
                    v53 = &v110[v112];
LABEL_114:
                    v22 = v53[v16];
                    goto LABEL_116;
                  }

                  if (!v111)
                  {
                    if (v115 <= v16 || (v54 = v114, v114 > v16))
                    {
                      v55 = v48 + v46;
                      v56 = i - v48;
                      v57 = v16 - v48;
                      v58 = v57 + 64;
                      if (v57 + 64 >= v113)
                      {
                        v58 = v113;
                      }

                      v114 = v57;
                      v115 = v58;
                      if (v113 >= v56)
                      {
                        v52 = v56;
                      }

                      v120.location = v57 + v112;
                      v120.length = v52 + v55;
                      CFStringGetCharacters(theString, v120, buffer);
                      v54 = v114;
                    }

                    v53 = buffer - v54;
                    goto LABEL_114;
                  }

                  v22 = v111[v112 + v16];
                }

LABEL_116:
                ++v16;
                --v46;
              }
            }
          }

          v26 = 0xFFFF;
LABEL_46:
          if (v22 != 59 && v16 < Length)
          {
            v27 = Mutable;
            v28 = v19;
            v29 = -v16;
            v30 = v16 + 64;
            while (1)
            {
              if (v16 >= 4)
              {
                v31 = 4;
              }

              else
              {
                v31 = v16;
              }

              if (v16 < 0 || (v32 = v113, v113 <= v16))
              {
                v34 = 0;
              }

              else
              {
                if (v110)
                {
                  v33 = &v110[v112];
LABEL_56:
                  v34 = v33[v16];
                  goto LABEL_58;
                }

                if (!v111)
                {
                  if (v115 <= v16 || (v35 = v114, v114 > v16))
                  {
                    v36 = v31 + v29;
                    v37 = v30 - v31;
                    v38 = v16 - v31;
                    v39 = v38 + 64;
                    if (v38 + 64 >= v113)
                    {
                      v39 = v113;
                    }

                    v114 = v38;
                    v115 = v39;
                    if (v113 >= v37)
                    {
                      v32 = v37;
                    }

                    v118.location = v38 + v112;
                    v118.length = v32 + v36;
                    CFStringGetCharacters(theString, v118, buffer);
                    v35 = v114;
                  }

                  v33 = buffer - v35;
                  goto LABEL_56;
                }

                v34 = v111[v112 + v16];
              }

LABEL_58:
              ++v16;
              if (v34 != 59)
              {
                --v29;
                ++v30;
                if (v16 < Length)
                {
                  continue;
                }
              }

              v19 = v28;
              Mutable = v27;
              v5 = v105;
              break;
            }
          }

LABEL_128:
          if (v26 == 0xFFFF)
          {
            v123.length = v16 - v13 - 2;
            v123.location = v19;
            v59 = CFStringCreateWithSubstring(0, v5, v123);
            Value = CFDictionaryGetValue(Mutable, v59);
            if (Value)
            {
              v61 = Value;
              v62 = v11;
            }

            else
            {
              CFRelease(v59);
              v124.location = v13;
              v124.length = v16 - v13;
              v59 = CFStringCreateWithSubstring(0, v5, v124);
              v62 = v11;
              v61 = v59;
            }

            CFStringAppend(v62, v61);
            CFRelease(v59);
          }

          else
          {
            if (v26 < 0x10000)
            {
              chars[0] = v26;
              v63 = v11;
              v64 = 1;
            }

            else
            {
              chars[0] = ((v26 + 67043328) >> 10) - 10240;
              chars[1] = v26 & 0x3FF | 0xDC00;
              v63 = v11;
              v64 = 2;
            }

            CFStringAppendCharacters(v63, chars, v64);
          }

          v12 = v16;
        }

        else
        {
          v16 = v13 + 1;
        }
      }

      v13 = v16;
      if (v16 >= Length)
      {
        goto LABEL_150;
      }
    }
  }

  v16 = 0;
  v12 = 0;
LABEL_150:
  if (v12 < Length)
  {
    v125.length = v16 - v12;
    v125.location = v12;
    v67 = CFStringCreateWithSubstring(0, v5, v125);
    CFStringAppend(v11, v67);
    CFRelease(v67);
  }

  CFRelease(Mutable);
  if (v11)
  {
    CFRelease(v5);
  }

  else
  {
    v11 = v5;
  }

  v68 = theArray;
  Count = CFArrayGetCount(theArray);
  theDict = CFDictionaryCreateMutable(0, Count, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v106 = Count;
  if (Count >= 1)
  {
    v70 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v68, v70);
      v72 = ValueAtIndex;
      if (ValueAtIndex != @"DCSTextElementKeyRecordID")
      {
        break;
      }

      v74 = CFStringGetLength(v11);
      v75 = CFStringCreateWithFormat(0, 0, @"<%@ ", @"d:entry");
      v126.location = 0;
      v126.length = v74;
      v76 = v11;
      v77 = CFStringFindWithOptions(v11, v75, v126, 0, buffer);
      CFRelease(v75);
      if (v77 && (location = buffer[0].location, v127.length = v74 - buffer[0].location, v127.location = buffer[0].location, CFStringFindWithOptions(v76, @">", v127, 0, buffer)))
      {
        v79 = buffer[0].location - location;
        v80 = CFStringCreateWithFormat(0, 0, @"%@=", @"id");
        v128.location = location;
        v128.length = v79;
        v11 = v76;
        if (!CFStringFindWithOptions(v76, v80, v128, 0, buffer) || (v81 = buffer[0].length + buffer[0].location, v129.length = v74 - (buffer[0].length + buffer[0].location), v129.location = buffer[0].length + buffer[0].location, !CFStringFindWithOptions(v76, @"", v129, 0, buffer)))
        {
          CFRelease(v80);
          v68 = theArray;
          goto LABEL_200;
        }

        v130.length = buffer[0].location - v81;
        buffer[0].location = v81;
        buffer[0].length = v130.length;
        v130.location = v81;
        v82 = CFStringCreateWithSubstring(0, v76, v130);
        CFRelease(v80);
        v68 = theArray;
        if (v82)
        {
          CFDictionarySetValue(theDict, v72, v82);
          v83 = v82;
LABEL_198:
          CFRelease(v83);
        }
      }

      else
      {
        v11 = v76;
      }

LABEL_200:
      if (++v70 == v106)
      {
        goto LABEL_201;
      }
    }

    if (ValueAtIndex != @"DCSTextElementKeyPartOfSpeech" && ValueAtIndex != @"DCSTextElementKeyPronunciation" && ValueAtIndex != @"DCSTextElementKeySenses" && ValueAtIndex != @"DCSTextElementKeySensesWithAttributes" && ValueAtIndex != @"DCSTextElementKeySyllabifiedHeadword")
    {
      if (ValueAtIndex == @"DCSTextElementKeyHeadword")
      {
        v73 = DCSRecord::titleString(v100);
        if (v73 || (v73 = DCSRecord::headword(v100)) != 0)
        {
          CFDictionarySetValue(theDict, v72, v73);
        }
      }

      goto LABEL_200;
    }

    v84 = @"d:def";
    if (ValueAtIndex == @"DCSTextElementKeySyllabifiedHeadword")
    {
      v84 = @"d:syl";
    }

    if (ValueAtIndex == @"DCSTextElementKeyPronunciation")
    {
      v84 = @"d:prn";
    }

    if (ValueAtIndex == @"DCSTextElementKeyPartOfSpeech")
    {
      v85 = @"d:pos";
    }

    else
    {
      v85 = v84;
    }

    v86 = ValueAtIndex == @"DCSTextElementKeySensesWithAttributes" || ValueAtIndex == @"DCSTextElementKeySenses";
    if (ValueAtIndex == @"DCSTextElementKeySensesWithAttributes")
    {
      *chars = @"d:prtl";
      buffer[0].location = @"DCSTextElementSenseKeyIsExplicit";
      v89 = CFDictionaryCreate(0, buffer, chars, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v90 = v11;
      v91 = v89;
      v92 = v90;
      ExtractedStringsMarkedByTag = _CreateExtractedStringsMarkedByTag(v90, v85, @"1", v89, v86);
      if (v91)
      {
        CFRelease(v91);
      }

      v68 = theArray;
      v11 = v92;
      if (!ExtractedStringsMarkedByTag)
      {
        goto LABEL_200;
      }

      v93 = CFArrayGetCount(ExtractedStringsMarkedByTag);
      if (v93 >= 1)
      {
        v94 = v93;
        for (j = 0; j != v94; ++j)
        {
          v96 = CFArrayGetValueAtIndex(ExtractedStringsMarkedByTag, j);
          v97 = CFDictionaryGetValue(v96, @"temp_text");
          CFDictionarySetValue(v96, @"DCSTextElementSenseKeyText", v97);
          CFDictionaryRemoveValue(v96, @"temp_text");
        }

        v68 = theArray;
        v11 = v92;
      }
    }

    else
    {
      if (ValueAtIndex == @"DCSTextElementKeySenses")
      {
        v87 = @"1";
      }

      else
      {
        v87 = 0;
      }

      ExtractedStringsMarkedByTag = _CreateExtractedStringsMarkedByTag(v11, v85, v87, 0, v86);
      v68 = theArray;
      if (!ExtractedStringsMarkedByTag)
      {
        goto LABEL_200;
      }
    }

    CFDictionarySetValue(theDict, v72, ExtractedStringsMarkedByTag);
    v83 = ExtractedStringsMarkedByTag;
    goto LABEL_198;
  }

LABEL_201:
  CFRelease(v11);
  v98 = theDict;
  if (!CFDictionaryGetCount(theDict))
  {
    CFRelease(theDict);
    return 0;
  }

  return v98;
}

const void *_CopyConvertedTextElementKey(const __CFString *key, int a2)
{
  if (_CopyConvertedTextElementKey(__CFString const*,BOOL)::_DispatchOnceToken != -1)
  {
    _CopyConvertedTextElementKey();
  }

  v4 = &_CopyConvertedTextElementKey(__CFString const*,BOOL)::_NewToOldDict;
  if (!a2)
  {
    v4 = &_CopyConvertedTextElementKey(__CFString const*,BOOL)::_OldToNewDict;
  }

  v5 = *v4;

  return CFDictionaryGetValue(v5, key);
}

uint64_t DCSRecord::subDictionaryRef(DCSRecord *this)
{
  v1 = *(this + 29);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void *_CreateExtractedStringsMarkedByTag(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFDictionary *a4, unsigned int a5)
{
  v58 = a5;
  v64 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  if (a3)
  {
    v10 = CFStringCreateWithFormat(0, 0, @"%@=%@", a2, a3);
  }

  else
  {
    v10 = CFStringCreateWithFormat(0, 0, @"%@=", a2);
  }

  v57 = v10;
  v60 = CFStringCreateWithFormat(0, 0, @"<%@></%@>", a2, a2);
  Count = CFStringCreateWithFormat(0, 0, @"<%@/>", a2);
  v12 = Count;
  if (a4)
  {
    Count = CFDictionaryGetCount(a4);
    v13 = Count;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x28223BE20](Count);
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
  v16 = (v51 - v15);
  if ((8 * v13 + 8) >= 0x200)
  {
    v17 = 512;
  }

  else
  {
    v17 = 8 * v13 + 8;
  }

  bzero(v51 - v15, v17);
  MEMORY[0x28223BE20](v18);
  v19 = v51 - v15;
  bzero(v19, v17);
  if (v13 >= 1)
  {
    CFDictionaryGetKeysAndValues(a4, v16, v19);
  }

  v54 = v19;
  v55 = v16;
  v20 = v57;
  v66.location = 0;
  v66.length = Length;
  v21 = CFStringFindWithOptions(a1, v57, v66, 0, &result);
  v22 = v58;
  if (!v21)
  {
    v39 = 0;
    Mutable = 0;
    goto LABEL_66;
  }

  v51[1] = v51;
  v52 = v13;
  v56 = v12;
  v59 = 0;
  v23 = 0;
  v24 = *MEMORY[0x277CBED28];
  v25 = *MEMORY[0x277CBED10];
  v26 = Length;
  v53 = Length;
  while (2)
  {
    location = result.location;
    v67.location = 0;
    v67.length = result.location;
    if (!CFStringFindWithOptions(a1, @"<", v67, 4uLL, &v63))
    {
      goto LABEL_60;
    }

    v68.location = 0;
    v68.length = location;
    if (CFStringFindWithOptions(a1, @">", v68, 4uLL, &v62) && v63.location <= v62.location)
    {
      goto LABEL_60;
    }

    v69.length = CFStringGetLength(a1) - location;
    v69.location = location;
    v29 = CFStringFindWithOptions(a1, @">", v69, 0, &v62);
    if (v29)
    {
      v30 = v62.location - v63.location;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v63.location;
    }

    else
    {
      v31 = -1;
    }

    if (v29)
    {
      v32 = v62.location + 1;
    }

    else
    {
      v32 = 0;
    }

    v70.location = v32;
    v70.length = Length - v32;
    if (!CFStringFindWithOptions(a1, v60, v70, 0, &result))
    {
      v71.location = v32;
      v71.length = Length - v32;
      if (!CFStringFindWithOptions(a1, v56, v71, 0, &result))
      {
LABEL_63:
        v39 = 0;
LABEL_64:
        v12 = v56;
        Mutable = v59;
        goto LABEL_66;
      }
    }

    v33 = result.location - v32;
    v34 = malloc_type_malloc(2 * (result.location - v32), 0x1000040BDFB0063uLL);
    v65.location = v32;
    v65.length = v33;
    CFStringGetCharacters(a1, v65, v34);
    if (v33 < 1)
    {
      goto LABEL_62;
    }

    v35 = 0;
    v36 = 0;
    for (i = 0; i != v33; ++i)
    {
      while (1)
      {
        v38 = v34[i];
        if (v38 == 60)
        {
          v36 = 1;
          goto LABEL_41;
        }

        if (v36)
        {
          v36 &= v38 != 62;
          goto LABEL_41;
        }

        if (v35 || v38 != 32)
        {
          break;
        }

        v35 = 0;
        v36 = 0;
        if (++i == v33)
        {
          goto LABEL_62;
        }
      }

      v36 = 0;
      v34[v35++] = v38;
LABEL_41:
      ;
    }

    if (v35 < 1)
    {
      if (v35)
      {
        goto LABEL_47;
      }

LABEL_62:
      free(v34);
      goto LABEL_63;
    }

    while (v34[v35 - 1] == 32)
    {
      if (v35-- <= 1)
      {
        goto LABEL_62;
      }
    }

LABEL_47:
    v39 = CFStringCreateWithCharacters(0, v34, v35);
    free(v34);
    if (!v39)
    {
      goto LABEL_64;
    }

    Mutable = v59;
    if (v22)
    {
      v41 = v22;
      if (!v59)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      }

      v42 = v52;
      v59 = Mutable;
      if (v52 < 1)
      {
        CFArrayAppendValue(Mutable, v39);
        v22 = v41;
      }

      else
      {
        v43 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v44 = v54;
        v45 = v55;
        do
        {
          v46 = *v44++;
          v72.location = v31;
          v72.length = v30;
          if (CFStringFindWithOptions(a1, v46, v72, 0, 0))
          {
            v47 = v24;
          }

          else
          {
            v47 = v25;
          }

          v48 = *v45++;
          CFDictionarySetValue(v43, v48, v47);
          --v42;
        }

        while (v42);
        CFDictionarySetValue(v43, @"temp_text", v39);
        CFArrayAppendValue(v59, v43);
        CFRelease(v43);
        v22 = v58;
        v20 = v57;
      }

      CFRelease(v39);
      v23 = result.length + result.location;
      Length = v53;
      v26 = v53 - (result.length + result.location);
LABEL_60:
      v73.location = v23;
      v73.length = v26;
      if (!CFStringFindWithOptions(a1, v20, v73, 0, &result))
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  v12 = v56;
LABEL_66:
  CFRelease(v20);
  CFRelease(v60);
  CFRelease(v12);
  if (v22)
  {
    v49 = Mutable;
  }

  else
  {
    v49 = v39;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

CFDictionaryRef ___ZL28_CopyConvertedTextElementKeyPK10__CFStringb_block_invoke()
{
  keys[4] = *MEMORY[0x277D85DE8];
  keys[0] = @"DCSTextElementKeySyllabifiedHeadword";
  keys[1] = @"DCSTextElementKeyPartOfSpeech";
  keys[2] = @"DCSTextElementKeyPronunciation";
  keys[3] = @"DCSTextElementKeySenses";
  v4[0] = xmmword_27835A360;
  v4[1] = *off_27835A370;
  v0 = MEMORY[0x277CBF138];
  v1 = MEMORY[0x277CBF150];
  _CopyConvertedTextElementKey(__CFString const*,BOOL)::_NewToOldDict = CFDictionaryCreate(0, keys, v4, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = CFDictionaryCreate(0, v4, keys, 4, v0, v1);
  _CopyConvertedTextElementKey(__CFString const*,BOOL)::_OldToNewDict = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _DCSRecordInitialize(void)
{
  result = _CFRuntimeRegisterClass();
  _DCSRecordID = result;
  return result;
}

DCSRecord *_DCSRecordFinalize(void *a1)
{
  result = a1[2];
  if (result)
  {
    DCSRecord::~DCSRecord(result);

    JUMPOUT(0x223D5E5E0);
  }

  return result;
}

BOOL _DCSRecordEqual(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *(v2 + 40);
  if (v4 != *(v3 + 40))
  {
    return 0;
  }

  v5 = *(v2 + 64);
  if (v5 != *(v3 + 64))
  {
    return 0;
  }

  v6 = *(v2 + 88);
  if (v6 != *(v3 + 88))
  {
    return 0;
  }

  v7 = *(v2 + 136);
  if (v7 != *(v3 + 136) || *v2 != *v3)
  {
    return 0;
  }

  v8 = *(v2 + 232);
  if (v8)
  {
    v8 = *v8;
  }

  v9 = *(v3 + 232);
  if (v9)
  {
    v9 = *v9;
  }

  if (v8 != v9)
  {
    return 0;
  }

  if (*(v2 + 208) != *(v3 + 208))
  {
    return 0;
  }

  if (*(v2 + 192) != *(v3 + 192))
  {
    return 0;
  }

  v10 = *(v2 + 32);
  if (v10)
  {
    if (memcmp(v10, *(v3 + 32), v4))
    {
      return 0;
    }
  }

  v11 = *(v2 + 56);
  if (v11)
  {
    if (memcmp(v11, *(v3 + 56), v5))
    {
      return 0;
    }
  }

  v12 = *(v2 + 80);
  if (v12)
  {
    if (memcmp(v12, *(v3 + 80), v6))
    {
      return 0;
    }
  }

  v14 = *(v2 + 128);
  return !v14 || memcmp(v14, *(v3 + 128), v7) == 0;
}

CFStringRef _DCSRecordCopyFormattingDesc(void *a1, const __CFDictionary *a2)
{
  v3 = a1[2];
  v4 = CFGetAllocator(a1);
  v5 = DCSRecord::headword(v3);
  return CFStringCreateWithFormat(v4, a2, @"<%@>", v5);
}

CFStringRef _DCSRecordCopyDebugDesc(void *a1)
{
  v1 = a1[2];
  v2 = CFGetAllocator(a1);
  v3 = DCSRecord::keyString(v1);
  v4 = DCSRecord::headword(v1);
  return CFStringCreateWithFormat(v2, 0, @"<DCSRecordRef %p>{key = %@, headword = %@, bodyID = %d}", v1, v3, v4, *(v1 + 26));
}

BOOL IsManagedConfigProfanityFilterForced()
{
  if (_GetManagedConfigFrameworkInfo__DispatchOnceToken != -1)
  {
    IsManagedConfigProfanityFilterForced_cold_1();
  }

  v0 = _GetManagedConfigFrameworkInfo__InfoPtr;
  if (!_GetManagedConfigFrameworkInfo__InfoPtr)
  {
    return 0;
  }

  v1 = NewAutoReleasePool();
  v2 = [objc_msgSend(*(v0 + 8) sharedConnection)];

  return v2 == 1;
}

void SetManagedConfigChangedCallback(uint64_t a1)
{
  if (_GetManagedConfigFrameworkInfo__DispatchOnceToken != -1)
  {
    IsManagedConfigProfanityFilterForced_cold_1();
  }

  if (_GetManagedConfigFrameworkInfo__InfoPtr)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __SetManagedConfigChangedCallback_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = _GetManagedConfigFrameworkInfo__InfoPtr;
    if (SetManagedConfigChangedCallback__DispatchOnceToken != -1)
    {
      dispatch_once(&SetManagedConfigChangedCallback__DispatchOnceToken, block);
    }

    if (SetManagedConfigChangedCallback__MyReceiverObj)
    {
      [SetManagedConfigChangedCallback__MyReceiverObj setCallbackBlock_];
    }
  }
}

IMP __SetManagedConfigChangedCallback_block_invoke(uint64_t a1)
{
  Class = objc_getClass("NSObject");
  SetManagedConfigChangedCallback__MyClass = objc_allocateClassPair(Class, "DCSManagedConfigChangeReceiver", 0);
  v3 = class_addIvar(SetManagedConfigChangedCallback__MyClass, "_callbackBlock", 8uLL, 3u, "@");
  objc_registerClassPair(SetManagedConfigChangedCallback__MyClass);
  if (v3)
  {
    v4 = imp_implementationWithBlock(&__block_literal_global_2);
    v5 = class_addMethod(SetManagedConfigChangedCallback__MyClass, sel_setCallbackBlock_, v4, "v@:@");
    result = imp_implementationWithBlock(&__block_literal_global_12);
    if (v5)
    {
      result = class_addMethod(SetManagedConfigChangedCallback__MyClass, sel_profileConnectionDidReceiveEffectiveSettingsChangedNotification_userInfo_, result, "v@:@@");
      if (result)
      {
        SetManagedConfigChangedCallback__MyReceiverObj = [SetManagedConfigChangedCallback__MyClass new];
        v7 = [*(*(a1 + 32) + 8) sharedConnection];
        v8 = SetManagedConfigChangedCallback__MyReceiverObj;

        return [v7 addObserver_];
      }
    }
  }

  else
  {
    if (SetManagedConfigChangedCallback__MyClass)
    {
      objc_disposeClassPair(SetManagedConfigChangedCallback__MyClass);
    }

    SetManagedConfigChangedCallback__MyClass = 0;
    imp_implementationWithBlock(&__block_literal_global_2);

    return imp_implementationWithBlock(&__block_literal_global_12);
  }

  return result;
}

void __SetManagedConfigChangedCallback_block_invoke_2(uint64_t a1, void *a2, const void *a3)
{
  InstanceVariable = class_getInstanceVariable(SetManagedConfigChangedCallback__MyClass, "_callbackBlock");
  Ivar = object_getIvar(a2, InstanceVariable);
  if (Ivar)
  {
  }

  v7 = _Block_copy(a3);

  object_setIvar(a2, InstanceVariable, v7);
}

id __SetManagedConfigChangedCallback_block_invoke_3(uint64_t a1, void *a2)
{
  InstanceVariable = class_getInstanceVariable(SetManagedConfigChangedCallback__MyClass, "_callbackBlock");
  result = object_getIvar(a2, InstanceVariable);
  if (result)
  {
    v5 = *(result + 2);

    return v5();
  }

  return result;
}

void AddLinguisticDataAssetion(uint64_t a1, const __CFArray *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  DCSLog(16, @"AddLinguisticDataAssetion_iOS for dictionary (%@) with languages (%@)", a1, a2);
  if (a1 && a2)
  {
    if (_GetTextInputFrameworkInfo__DispatchOnceToken != -1)
    {
      AddLinguisticDataAssetion_cold_1();
    }

    v4 = _GetTextInputFrameworkInfo__InfoPtr;
    if (_GetTextInputFrameworkInfo__InfoPtr)
    {
      v13 = NewAutoReleasePool();
      v5 = [*v4 new];
      *keys = xmmword_27835A3E0;
      v17 = @"City";
      *values = xmmword_27835A3F8;
      v15 = &stru_282F97070;
      v6 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v11 = CFStringCreateWithFormat(0, 0, @"%@;%@;%@", @"com.apple.DictionaryServices", ValueAtIndex, a1);
          DCSLog(16, @"AddLinguisticDataAssetion_iOS actually adding language (%@) to client (%@)", ValueAtIndex, v5);
          [v5 addLinguisticAssetsAssertionForLanguage:ValueAtIndex assertionID:v11 region:v6 clientID:@"com.apple.DictionaryServices" withHandler:&__block_literal_global_41];
          CFRelease(v11);
        }
      }

      CFRelease(v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void RemoveLinguisticDataAssetion(uint64_t a1, const __CFArray *a2)
{
  DCSLog(16, @"RemoveLinguisticDataAssetion_iOS for dictionary (%@) with languages (%@)", a1, a2);
  if (a1 && a2)
  {
    if (_GetTextInputFrameworkInfo__DispatchOnceToken != -1)
    {
      AddLinguisticDataAssetion_cold_1();
    }

    v4 = _GetTextInputFrameworkInfo__InfoPtr;
    if (_GetTextInputFrameworkInfo__InfoPtr)
    {
      v11 = NewAutoReleasePool();
      v5 = [*v4 new];
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v10 = CFStringCreateWithFormat(0, 0, @"%@;%@;%@", @"com.apple.DictionaryServices", ValueAtIndex, a1);
          DCSLog(16, @"RemoveLinguisticDataAssetion_iOS actually removing language (%@) from client (%@)", ValueAtIndex, v5);
          [v5 removeLinguisticAssetsAssertionWithIdentifier:v10 forClientID:@"com.apple.DictionaryServices" withHandler:&__block_literal_global_51];
          CFRelease(v10);
        }
      }
    }
  }
}

CFMutableSetRef DCSCopyAvailableDictionaries()
{
  v0 = SyncSingleton<DCSEnvironment>::instance();

  return DCSEnvironment::copyAvailableDictionaries(v0);
}

uint64_t DCSInvalidateDictionaryCache()
{
  result = SyncSingleton<DCSEnvironment>::instance();
  *(result + 154) = 1;
  return result;
}

uint64_t DCSGetActiveDictionaries()
{
  v0 = SyncSingleton<DCSEnvironment>::instance();

  return DCSEnvironment::getActiveDictionaries(v0);
}

__CFArray *DCSCopyActiveDictionaries(const __CFDictionary *a1)
{
  v2 = SyncSingleton<DCSEnvironment>::instance();

  return DCSEnvironment::copyActiveDictionaries(v2, a1);
}

uint64_t DCSCopyInactiveDictionaries(const __CFString *a1)
{
  v2 = SyncSingleton<DCSEnvironment>::instance();

  return DCSEnvironment::copyInactiveDictionaries(v2, a1);
}

uint64_t DCSSetActiveDictionaries(const __CFArray *a1)
{
  v2 = SyncSingleton<DCSEnvironment>::instance();

  return DCSEnvironment::setActiveDictionaries(v2, a1);
}

CFRange DCSGetTermRangeInString(DCSDictionaryRef dictionary, CFStringRef textString, CFIndex offset)
{
  values = dictionary;
  if (dictionary)
  {
    v5 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
    v6 = DCSGetTermRangeInStringWithOptions(v5, textString, offset, 1);
    v8 = v7;
    if (v5)
    {
      CFRelease(v5);
    }

    v9 = v6;
    v10 = v8;
  }

  else
  {

    v9 = DCSGetTermRangeInStringWithOptions(0, textString, offset, 1);
  }

  result.length = v10;
  result.location = v9;
  return result;
}

uint64_t DCSGetTermRangeInStringWithOptions(uint64_t ActiveDictionaries, CFStringRef theString, uint64_t a3, char a4)
{
  Length = CFStringGetLength(theString);
  if (!ActiveDictionaries)
  {
    v9 = SyncSingleton<DCSEnvironment>::instance();
    ActiveDictionaries = DCSEnvironment::getActiveDictionaries(v9);
  }

  if (a3 <= 25)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3 - 25;
  }

  v11 = v10 + 50;
  v55 = v10;
  v12 = Length - v10;
  v13 = v11 <= Length;
  v14 = 50;
  if (!v13)
  {
    v14 = v12;
  }

  v54 = v14;
  v48 = Length;
  v49 = a4;
  theArray = ActiveDictionaries;
  v50 = a3;
  if (ActiveDictionaries)
  {
    ActiveDictionaries = CFArrayGetCount(ActiveDictionaries);
  }

  v15 = MEMORY[0x277CBF138];
  v16 = MEMORY[0x277CBF150];
  theDict = CFDictionaryCreateMutable(0, ActiveDictionaries, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Mutable = CFDictionaryCreateMutable(0, 0, v15, v16);
  if (ActiveDictionaries >= 1)
  {
    v18 = 0;
    v51 = ActiveDictionaries;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v18);
      if (ValueAtIndex)
      {
        v20 = *(ValueAtIndex + 2);
        if (v20)
        {
          if ((DCSDictionary::isNetworkDictionary(*(ValueAtIndex + 2)) & 1) == 0)
          {
            v21 = DCSDictionary::languages(v20);
            if (v21)
            {
              v22 = v21;
              Count = CFArrayGetCount(v21);
              v24 = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
              if (Count >= 1)
              {
                for (i = 0; i != Count; ++i)
                {
                  v26 = CFArrayGetValueAtIndex(v22, i);
                  Value = CFDictionaryGetValue(v26, @"DCSDictionaryIndexLanguage");
                  if (Value)
                  {
                    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, Value);
                    if (ComponentsFromLocaleIdentifier)
                    {
                      v29 = ComponentsFromLocaleIdentifier;
                      LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(0, ComponentsFromLocaleIdentifier);
                      if (LocaleIdentifierFromComponents)
                      {
                        v31 = LocaleIdentifierFromComponents;
                        CFArrayAppendValue(v24, LocaleIdentifierFromComponents);
                        CFRelease(v31);
                      }

                      CFRelease(v29);
                    }
                  }
                }
              }
            }

            else
            {
              v24 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            }

            if (!CFArrayGetCount(v24))
            {
              CFArrayAppendValue(v24, &stru_282F97070);
            }

            v32 = CFArrayGetCount(v24);
            if (v32 >= 1)
            {
              v33 = v32;
              for (j = 0; j != v33; ++j)
              {
                v35 = CFArrayGetValueAtIndex(v24, j);
                newValues = CFDictionaryGetValue(Mutable, v35);
                if (!newValues)
                {
                  if (CFStringGetLength(v35))
                  {
                    v36 = CFLocaleCreate(0, v35);
                  }

                  else
                  {
                    v36 = 0;
                  }

                  v37 = CFDataCreateMutable(0, 408);
                  CFDataSetLength(v37, 408);
                  MutableBytePtr = CFDataGetMutableBytePtr(v37);
                  v57.length = v54;
                  v57.location = v55;
                  BuildWordBreakTable(theString, v57, v36, MutableBytePtr);
                  CFDictionarySetValue(Mutable, v35, v37);
                  if (v36)
                  {
                    CFRelease(v36);
                  }

                  newValues = v37;
                  CFRelease(v37);
                }

                v58.location = j;
                v58.length = 1;
                CFArrayReplaceValues(v24, v58, &newValues, 1);
              }
            }

            v39 = DCSDictionary::identifier(v20);
            CFDictionarySetValue(theDict, v39, v24);
            CFRelease(v24);
            ActiveDictionaries = v51;
          }
        }
      }

      ++v18;
    }

    while (v18 != ActiveDictionaries);
  }

  CFRelease(Mutable);
  v40 = 0;
  v41 = v50 - v55;
  if (v50 - v55 < 0)
  {
    v43 = -1;
  }

  else
  {
    v42 = 0;
    v43 = -1;
    do
    {
      v44 = v42 + v55;
      v59.length = v54 - v42;
      v59.location = v42 + v55;
      v45 = LongestRangeAroundOffset(theArray, theString, v59, v42, v41 - v42, theDict, v49 & 1);
      if (v46 > v40)
      {
        v43 = v45;
        v40 = v46;
      }

      if (v48 > v44 && (CFStringGetCharacterAtIndex(theString, v44) & 0xFC00) == 0xD800)
      {
        ++v42;
      }

      v13 = v42++ < v41;
    }

    while (v13);
  }

  CFRelease(theDict);
  return v43;
}

CFIndex LongestRangeAroundOffset(const __CFArray *a1, const __CFString *a2, CFRange a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, int a7)
{
  v60 = a7;
  v65 = a6;
  length = a3.length;
  location = a3.location;
  v12 = a1;
  v67 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v59 = location;
  v68.location = location;
  v68.length = length;
  v62 = CFStringCreateWithSubstring(0, a2, v68);
  if (Count >= 1)
  {
    v61 = a4;
    v14 = 0;
    v15 = 0;
    v63 = v12;
    v64 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
      if (!ValueAtIndex)
      {
        goto LABEL_54;
      }

      v17 = ValueAtIndex;
      v18 = ValueAtIndex[2];
      if (!v18 || (DCSDictionary::isNetworkDictionary(ValueAtIndex[2]) & 1) != 0)
      {
        goto LABEL_54;
      }

      v19 = DCSDictionary::identifier(v18);
      Value = CFDictionaryGetValue(v65, v19);
      v21 = CFArrayGetCount(Value);
      v66 = &v58;
      MEMORY[0x28223BE20](v21);
      v24 = &v58 - v23;
      v25 = v22 >= 0x200 ? 512 : v22;
      bzero(&v58 - v23, v25);
      if (v21 < 1)
      {
        goto LABEL_54;
      }

      v26 = 0;
      v27 = v61;
      do
      {
        v28 = CFArrayGetValueAtIndex(Value, v26);
        v29 = &CFDataGetBytePtr(v28)[8 * v27];
        v30 = *v29;
        if (*v29 != 1)
        {
          v29 = 0;
        }

        *&v24[8 * v26++] = v29;
      }

      while (v21 != v26);
      v12 = v63;
      Count = v64;
      if (v30 != 1)
      {
        goto LABEL_54;
      }

      v31 = v17[2];
      if (v31 && (DCSDictionary::isNetworkDictionary(v31) & 1) != 0)
      {
        MutableCopy = CFRetain(v62);
        if (!v60)
        {
          goto LABEL_18;
        }
      }

      else
      {
        MutableCopy = CFStringCreateMutableCopy(0, 0, v62);
        v44 = DCSDictionary::primaryLocale(v18);
        DCSNormalizeSearchStringWithOptionsAndLocale(MutableCopy, 0, v44);
        if ((v60 & 1) == 0)
        {
LABEL_18:
          v33 = CFStringGetLength(MutableCopy);
          v34 = MEMORY[0x28223BE20](v33);
          v35 = MutableCopy;
          v36 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          v37 = v18;
          v38 = v35;
          if (DCSDictionary::hasRecord(v37, v35, 2, v36))
          {
            v39 = 0;
            v40 = v36 - 1;
            MutableCopy = v38;
            do
            {
              v41 = *&v24[8 * v39];
              if (v41)
              {
                v42 = v33 < 1;
              }

              else
              {
                v42 = 1;
              }

              if (!v42)
              {
                v43 = v33;
                while (v43 < a5 || !v40[v43] || !*(v41 + 8 * v43))
                {
                  v42 = v43-- <= 1;
                  if (v42)
                  {
                    goto LABEL_33;
                  }
                }

                if (v43 > v14)
                {
                  v14 = v43;
                }
              }

LABEL_33:
              ++v39;
            }

            while (v39 != v21);
          }

          else
          {
            MutableCopy = v38;
          }

          Count = v64;
          goto LABEL_53;
        }
      }

      v45 = v17[2];
      if (v45)
      {
        v46 = DCSDictionary::searchByString(v45, MutableCopy);
        if (v46)
        {
          v47 = v46;
          v58 = MutableCopy;
          for (i = 0; i != v21; ++i)
          {
            v49 = *&v24[8 * i];
            if (v49)
            {
              v50 = CFArrayGetCount(v47);
              if (v50 >= 1)
              {
                v51 = v50;
                for (j = 0; j != v51; ++j)
                {
                  v53 = CFArrayGetValueAtIndex(v47, j);
                  v54 = *(v53[2] + 40) >> 1;
                  v55 = v54 <= v14 || v54 < a5;
                  if (!v55 && *(v49 + 8 * v54))
                  {
                    v14 = *(v53[2] + 40) >> 1;
                  }
                }
              }
            }
          }

          CFRelease(v47);
          v12 = v63;
          Count = v64;
          MutableCopy = v58;
        }
      }

LABEL_53:
      CFRelease(MutableCopy);
LABEL_54:
      ++v15;
    }

    while (v15 != Count);
  }

  CFRelease(v62);
  v56 = *MEMORY[0x277D85DE8];
  return v59;
}