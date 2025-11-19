@interface MDQueryCreateQueryDictionaryWithOptionsDict
@end

@implementation MDQueryCreateQueryDictionaryWithOptionsDict

CFAttributedStringRef ____MDQueryCreateQueryDictionaryWithOptionsDict_block_invoke(void *a1, const __CFDictionary *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v4 = getkQPParseResultQUOutputKeySymbolLoc_ptr;
  v89 = getkQPParseResultQUOutputKeySymbolLoc_ptr;
  if (!getkQPParseResultQUOutputKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultQUOutputKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25E50;
    v85 = &v86;
    ParserLibrary = QueryParserLibrary();
    v87[3] = dlsym(ParserLibrary, "kQPParseResultQUOutputKey");
    getkQPParseResultQUOutputKeySymbolLoc_ptr = *(v85[1] + 24);
    v4 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v4)
  {
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_100:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_101:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_102:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_103:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_104:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_105:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_106:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
    goto LABEL_107;
  }

  v6 = *v4;
  if (*v4)
  {
    v7 = CFDictionaryContainsKey(a2, *v4) != 0;
  }

  else
  {
    v7 = 0;
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v8 = getkQPParseResultConfidenceKeySymbolLoc_ptr;
  v89 = getkQPParseResultConfidenceKeySymbolLoc_ptr;
  if (!getkQPParseResultConfidenceKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultConfidenceKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25E78;
    v85 = &v86;
    v9 = QueryParserLibrary();
    v87[3] = dlsym(v9, "kQPParseResultConfidenceKey");
    getkQPParseResultConfidenceKeySymbolLoc_ptr = *(v85[1] + 24);
    v8 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v8)
  {
    goto LABEL_100;
  }

  v10 = *v8;
  if (*v8)
  {
    if (CFDictionaryContainsKey(a2, *v8))
    {
      Value = CFDictionaryGetValue(a2, v10);
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      v12 = *(a1[4] + 8);
      if (valuePtr > *(v12 + 24))
      {
        *(v12 + 24) = valuePtr;
      }
    }
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v13 = getkQPParseResultDescriptionKeySymbolLoc_ptr;
  v89 = getkQPParseResultDescriptionKeySymbolLoc_ptr;
  if (!getkQPParseResultDescriptionKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultDescriptionKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25EA0;
    v85 = &v86;
    v14 = QueryParserLibrary();
    v15 = dlsym(v14, "kQPParseResultDescriptionKey");
    *(v85[1] + 24) = v15;
    getkQPParseResultDescriptionKeySymbolLoc_ptr = *(v85[1] + 24);
    v13 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v13)
  {
    goto LABEL_101;
  }

  v16 = *v13;
  if (*v13)
  {
    v17 = v7;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) != 0 || !CFDictionaryContainsKey(a2, *v13))
  {
    v18 = 0;
  }

  else
  {
    v18 = CFDictionaryGetValue(a2, v16);
    if (CFStringGetLength(v18))
    {
      if (CFStringGetLength(*(*(a1[5] + 8) + 24)))
      {
        CFStringAppend(*(*(a1[5] + 8) + 24), @" || ");
      }

      CFStringAppend(*(*(a1[5] + 8) + 24), v18);
      ++*(*(a1[6] + 8) + 24);
      v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, (*(a1[6] + 8) + 24));
      if (v19)
      {
        v20 = v19;
        CFDictionarySetValue(*(*(a1[7] + 8) + 24), v18, v19);
        CFRelease(v20);
      }
    }
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v21 = getkQPParseResultAttributedParseKeySymbolLoc_ptr;
  v89 = getkQPParseResultAttributedParseKeySymbolLoc_ptr;
  if (!getkQPParseResultAttributedParseKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultAttributedParseKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25EC8;
    v85 = &v86;
    v22 = QueryParserLibrary();
    v23 = dlsym(v22, "kQPParseResultAttributedParseKey");
    *(v85[1] + 24) = v23;
    getkQPParseResultAttributedParseKeySymbolLoc_ptr = *(v85[1] + 24);
    v21 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v21)
  {
    goto LABEL_102;
  }

  v24 = *v21;
  if (v24)
  {
    if (CFDictionaryContainsKey(a2, v24))
    {
      v24 = CFDictionaryGetValue(a2, v24);
      CFArrayAppendValue(*(*(a1[8] + 8) + 24), v24);
      if (v7)
      {
        v25 = @"kMDUserQueryDictionaryAttributedInputSourceU2Based";
      }

      else
      {
        v25 = @"kMDUserQueryDictionaryAttributedInputSourceRuleBased";
      }

      CFArrayAppendValue(*(*(a1[9] + 8) + 24), v25);
    }

    else
    {
      v24 = 0;
    }
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v26 = getkQPParseResultRankCategoriesKeySymbolLoc_ptr;
  v89 = getkQPParseResultRankCategoriesKeySymbolLoc_ptr;
  if (!getkQPParseResultRankCategoriesKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultRankCategoriesKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25EF0;
    v85 = &v86;
    v27 = QueryParserLibrary();
    v28 = dlsym(v27, "kQPParseResultRankCategoriesKey");
    *(v85[1] + 24) = v28;
    getkQPParseResultRankCategoriesKeySymbolLoc_ptr = *(v85[1] + 24);
    v26 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v26)
  {
    goto LABEL_103;
  }

  v29 = *v26;
  if (CFDictionaryContainsKey(a2, v29))
  {
    v80 = v24;
    v30 = a2;
    v31 = CFDictionaryGetValue(a2, v29);
    Count = CFDictionaryGetCount(v31);
    MEMORY[0x1EEE9AC00](v36, Count, v33, v34, v35);
    v37 = (&v79 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v37, 8 * Count);
    MEMORY[0x1EEE9AC00](v42, v38, v39, v40, v41);
    v43 = v37;
    bzero(v37, 8 * Count);
    CFDictionaryGetKeysAndValues(v31, v37, v37);
    if (Count >= 1)
    {
      do
      {
        v45 = *v37++;
        v44 = v45;
        v46 = *v43++;
        CFDictionarySetValue(*(*(a1[10] + 8) + 24), v44, v46);
        --Count;
      }

      while (Count);
    }

    v24 = v80;
  }

  else
  {
    v30 = a2;
    v31 = 0;
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v47 = getkQPParseResultSortModifierKeySymbolLoc_ptr;
  v89 = getkQPParseResultSortModifierKeySymbolLoc_ptr;
  if (!getkQPParseResultSortModifierKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultSortModifierKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25F18;
    v85 = &v86;
    v48 = QueryParserLibrary();
    v49 = dlsym(v48, "kQPParseResultSortModifierKey");
    *(v85[1] + 24) = v49;
    getkQPParseResultSortModifierKeySymbolLoc_ptr = *(v85[1] + 24);
    v47 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v47)
  {
    goto LABEL_104;
  }

  v50 = *v47;
  if (*(*(a1[11] + 8) + 24))
  {
    v51 = 1;
  }

  else
  {
    v51 = v50 == 0;
  }

  if (!v51 && CFDictionaryContainsKey(v30, v50))
  {
    *(*(a1[11] + 8) + 24) = CFDictionaryGetValue(v30, v50);
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v52 = getkQPParseResultTokenCountKeySymbolLoc_ptr;
  v89 = getkQPParseResultTokenCountKeySymbolLoc_ptr;
  if (!getkQPParseResultTokenCountKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultTokenCountKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25F40;
    v85 = &v86;
    v53 = QueryParserLibrary();
    v54 = dlsym(v53, "kQPParseResultTokenCountKey");
    *(v85[1] + 24) = v54;
    getkQPParseResultTokenCountKeySymbolLoc_ptr = *(v85[1] + 24);
    v52 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v52)
  {
    goto LABEL_105;
  }

  v55 = 0;
  if ((*(*(a1[12] + 8) + 24) & 0x8000000000000000) != 0)
  {
    v56 = *v52;
    if (v56)
    {
      if (CFDictionaryContainsKey(v30, v56))
      {
        v55 = CFDictionaryGetValue(v30, v56);
        CFNumberGetValue(v55, kCFNumberCFIndexType, (*(a1[12] + 8) + 24));
      }

      else
      {
        v55 = 0;
      }
    }
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v57 = getkQPParseResultSuggestionKeySymbolLoc_ptr;
  v89 = getkQPParseResultSuggestionKeySymbolLoc_ptr;
  if (!getkQPParseResultSuggestionKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultSuggestionKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25F68;
    v85 = &v86;
    v58 = QueryParserLibrary();
    v59 = dlsym(v58, "kQPParseResultSuggestionKey");
    *(v85[1] + 24) = v59;
    getkQPParseResultSuggestionKeySymbolLoc_ptr = *(v85[1] + 24);
    v57 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v57)
  {
    goto LABEL_106;
  }

  v60 = *v57;
  if (!v60)
  {
    goto LABEL_86;
  }

  if (!CFDictionaryContainsKey(v30, v60))
  {
    goto LABEL_86;
  }

  v61 = CFDictionaryGetValue(v30, v60);
  Length = CFStringGetLength(v61);
  if (!v18 || !Length || !CFStringGetLength(v18))
  {
    goto LABEL_86;
  }

  v80 = v30;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v63 = getkQPParseResultAttributeCountKeySymbolLoc_ptr;
  v89 = getkQPParseResultAttributeCountKeySymbolLoc_ptr;
  if (!getkQPParseResultAttributeCountKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v82 = 0x40000000;
    v83 = __getkQPParseResultAttributeCountKeySymbolLoc_block_invoke;
    v84 = &unk_1E7B25F90;
    v85 = &v86;
    v64 = QueryParserLibrary();
    v65 = dlsym(v64, "kQPParseResultAttributeCountKey");
    *(v85[1] + 24) = v65;
    getkQPParseResultAttributeCountKeySymbolLoc_ptr = *(v85[1] + 24);
    v63 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v63)
  {
LABEL_107:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
  }

  v66 = *v63;
  if (v66)
  {
    v67 = v80;
    v68 = v18;
    if (CFDictionaryContainsKey(v80, v66))
    {
      v66 = CFDictionaryGetValue(v67, v66);
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    v68 = v18;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"suggestion", v61);
  CFDictionarySetValue(Mutable, @"query", v68);
  if (v31)
  {
    CFDictionarySetValue(Mutable, @"categories", v31);
  }

  if (v55)
  {
    CFDictionarySetValue(Mutable, @"tokenCount", v55);
  }

  if (v66)
  {
    CFDictionarySetValue(Mutable, @"attributeCount", v66);
  }

  CFArrayAppendValue(*(*(a1[13] + 8) + 24), Mutable);
  CFRelease(Mutable);
  v30 = v80;
LABEL_86:
  if (v6 && CFDictionaryContainsKey(v30, v6))
  {
    v70 = CFDictionaryGetValue(v30, v6);
    v71 = v70;
    if (v24)
    {
      v72 = CFDictionaryGetCount(v70);
      v73 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], v72 + 2, v71);
      CFDictionaryAddValue(MutableCopy, @"attributedParse", v24);
      v75 = *MEMORY[0x1E695E4D0];
      if (qpLLMQueryUnderstanding && CFNumberCompare(qpLLMQueryUnderstanding, *MEMORY[0x1E695E4D0], 0) == kCFCompareEqualTo)
      {
        v76 = @"useLLMParse";
      }

      else
      {
        v76 = @"u2Enabled";
      }

      CFDictionaryAddValue(MutableCopy, v76, v75);
      *(*(a1[14] + 8) + 24) = CFDictionaryCreateCopy(v73, MutableCopy);
      CFRelease(MutableCopy);
    }

    else
    {
      *(*(a1[14] + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v70);
    }
  }

  result = CFDictionaryContainsKey(v30, @"isEntitySearchKey");
  if (v24 && result)
  {
    result = CFAttributedStringCreateCopy(*MEMORY[0x1E695E480], v24);
    *(*(a1[15] + 8) + 24) = result;
  }

  v78 = *MEMORY[0x1E69E9840];
  return result;
}

void ____MDQueryCreateQueryDictionaryWithOptionsDict_block_invoke_2(uint64_t a1, const void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];

  CFArrayAppendValue(v2, a2);
}

@end