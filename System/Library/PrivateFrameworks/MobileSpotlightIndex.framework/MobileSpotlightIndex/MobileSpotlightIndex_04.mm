char *fastFieldFromCFType(const __CFString *cf, int a2, int *a3, _WORD *a4, CFIndex *a5, char *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  if (fastFieldFromCFType_onceToken[0] != -1)
  {
    dispatch_once(fastFieldFromCFType_onceToken, &__block_literal_global_9313);
  }

  *a4 = 0;
  v12 = CFGetTypeID(cf);
  if (v12 == fastFieldFromCFType_sStringTypeID)
  {
    *a3 = 11;
    v13 = *MEMORY[0x1E69E9840];

    return fastUTF8String(cf, a5, a6);
  }

  if (v12 == fastFieldFromCFType_sDictionaryTypeID)
  {
    value = 0;
    if (_os_feature_enabled_impl())
    {
      if (CFDictionaryGetValueIfPresent(cf, @"vec_data", &value))
      {
        v15 = CFGetTypeID(value);
        if (v15 == CFDataGetTypeID())
        {
          valuePtr = 0;
          v39 = 0;
          *cfa = 0;
          if (CFDictionaryGetValueIfPresent(cf, @"vec_dim", cfa))
          {
            v16 = CFGetTypeID(*cfa);
            if (v16 == CFNumberGetTypeID())
            {
              CFNumberGetValue(*cfa, kCFNumberSInt8Type, &valuePtr);
            }
          }

          if (CFDictionaryGetValueIfPresent(cf, @"vec_format", cfa))
          {
            v17 = CFGetTypeID(*cfa);
            if (v17 == CFNumberGetTypeID())
            {
              CFNumberGetValue(*cfa, kCFNumberSInt8Type, &valuePtr + 1);
            }
          }

          if (CFDictionaryGetValueIfPresent(cf, @"vec_version", cfa))
          {
            v18 = CFGetTypeID(*cfa);
            if (v18 == CFNumberGetTypeID())
            {
              CFNumberGetValue(*cfa, kCFNumberSInt16Type, &v39);
            }
          }

          *a4 |= 0x5038u;
          Length = CFDataGetLength(value);
          v20 = Length;
          v21 = HIBYTE(valuePtr);
          v22 = -1;
          if (valuePtr <= 2uLL && HIBYTE(valuePtr) <= 2u)
          {
            v22 = (vector_dimension_vec_sizes_15424[valuePtr] * vector_size_elem_sizes_15423[HIBYTE(valuePtr)]);
          }

          if (v22 <= Length)
          {
            *a3 = 14;
            v23 = Length + 4;
            *a5 = v20 + 4;
            if (v20 >= 1021)
            {
              a6 = malloc_type_malloc(v23, 0x7403C95AuLL);
              v21 = HIBYTE(valuePtr);
            }

            *a6 = v21;
            a6[1] = valuePtr;
            *(a6 + 1) = v39;
            BytePtr = CFDataGetBytePtr(value);
            memcpy(a6 + 4, BytePtr, v20);
            goto LABEL_37;
          }

          goto LABEL_69;
        }
      }
    }

    *a5 = 0;
    v29 = *__error();
    v30 = _SILogForLogForCategory(7);
    v31 = 2 * (dword_1EBF46AE8 < 4);
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_36;
    }

    *cfa = 138412290;
    *&cfa[4] = cf;
    goto LABEL_35;
  }

  if (v12 != fastFieldFromCFType_sDataTypeID)
  {
    if (v12 != fastFieldFromCFType_sNumberTypeID)
    {
      if (v12 == fastFieldFromCFType_sDateTypeID)
      {
        v34 = MEMORY[0x1C691E960](cf);
        *a3 = 12;
        *a5 = 8;
        *a6 = v34;
        goto LABEL_37;
      }

      if (v12 == fastFieldFromCFType_sBoolTypeID)
      {
        if (cf)
        {
          v35 = CFBooleanGetValue(cf) != 0;
        }

        else
        {
          v35 = 0;
        }

        *a3 = 1;
        *a4 = 1024;
        *a5 = 1;
        *a6 = v35;
        goto LABEL_37;
      }

      if (v12 != fastFieldFromCFType_sNullTypeID)
      {
        v29 = *__error();
        v30 = _SILogForLogForCategory(7);
        v31 = 2 * (dword_1EBF46AE8 < 4);
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_36;
        }

        *cfa = 138412290;
        *&cfa[4] = cf;
LABEL_35:
        _os_log_impl(&dword_1C278D000, v30, v31, "no type conversion for %@", cfa, 0xCu);
LABEL_36:
        a6 = 0;
        *__error() = v29;
LABEL_37:
        v32 = *MEMORY[0x1E69E9840];
        return a6;
      }

      if (dword_1EBF46AE8 >= 5)
      {
        v36 = *__error();
        v37 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *cfa = 0;
          _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "skipping CFNull", cfa, 2u);
        }

        a6 = 0;
        *__error() = v36;
        goto LABEL_37;
      }

      goto LABEL_69;
    }

    if ((a2 - 1) < 8)
    {
      goto LABEL_40;
    }

    if (a2 != 9)
    {
      if (a2 == 10)
      {
        goto LABEL_50;
      }

      Type = CFNumberGetType(cf);
      if (Type > kCFNumberLongLongType)
      {
        if (Type == kCFNumberDoubleType)
        {
          goto LABEL_50;
        }

        if (Type != kCFNumberFloatType)
        {
          goto LABEL_40;
        }
      }

      else if (Type != kCFNumberFloat32Type)
      {
        if (Type != kCFNumberFloat64Type)
        {
LABEL_40:
          *cfa = 0;
          if (CFNumberGetValue(cf, kCFNumberLongLongType, cfa))
          {
            v33 = 7;
LABEL_42:
            *a3 = v33;
            *a5 = 8;
            *a6 = *cfa;
            goto LABEL_37;
          }

          goto LABEL_69;
        }

LABEL_50:
        *cfa = 0;
        if (CFNumberGetValue(cf, kCFNumberDoubleType, cfa))
        {
          v33 = 10;
          goto LABEL_42;
        }

LABEL_69:
        a6 = 0;
        goto LABEL_37;
      }
    }

    *cfa = 0;
    if (CFNumberGetValue(cf, kCFNumberFloatType, cfa))
    {
      *a3 = 9;
      *a5 = 4;
      *a6 = *cfa;
      goto LABEL_37;
    }

    goto LABEL_69;
  }

  *a3 = 14;
  *a5 = CFDataGetLength(cf);
  v25 = CFDataGetBytePtr(cf);
  v26 = CFDataGetLength(cf);
  v27 = v26;
  if (v26 >= 1025)
  {
    a6 = malloc_type_malloc(v26, 0x7381A768uLL);
  }

  v28 = *MEMORY[0x1E69E9840];

  return memcpy(a6, v25, v27);
}

uint64_t getFlagsFromAttributes(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v48 = *MEMORY[0x1E69E9840];
  v5 = buffer;
  bzero(buffer, 0x1000uLL);
  CString = CFStringGetCString(v3, buffer, 4096, 0x8000100u);
  if (!CString)
  {
    v5 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v7 = strcmp(v5, "kMDItemTextVector");
    if (v7)
    {
      result = 0;
    }

    else
    {
      result = 20528;
    }

    if (!v7 || !CString)
    {
      goto LABEL_64;
    }
  }

  else if (!CString)
  {
    result = 0;
    goto LABEL_64;
  }

  *buf = *v4;
  *&buf[16] = *(v4 + 16);
  result = _MDPlistDictionaryGetPlistObjectForKey();
  if (result)
  {
    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      PlistObjectType = _MDPlistGetPlistObjectType();
      if (PlistObjectType == 225)
      {
        memset(buf, 0, sizeof(buf));
        v10 = 16 * (_MDPlistBooleanGetValue() != 0);
      }

      else
      {
        v11 = PlistObjectType;
        v12 = *__error();
        v13 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 134;
          *&buf[18] = 1024;
          *&buf[20] = v11;
          v43 = 2080;
          v44 = "uniqued";
          _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v10 = 0;
        *__error() = v12;
      }
    }

    else
    {
      v10 = 0;
    }

    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      v14 = _MDPlistGetPlistObjectType();
      if (v14 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v15 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v16 = v14;
        v17 = *__error();
        v18 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 142;
          *&buf[18] = 1024;
          *&buf[20] = v16;
          v43 = 2080;
          v44 = "multivalued";
          _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v15 = 0;
        *__error() = v17;
      }
    }

    else
    {
      v15 = 0;
    }

    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      v19 = _MDPlistGetPlistObjectType();
      if (v19 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v20 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v21 = v19;
        v22 = *__error();
        v23 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 150;
          *&buf[18] = 1024;
          *&buf[20] = v21;
          v43 = 2080;
          v44 = "nosearch";
          _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v20 = 0;
        *__error() = v22;
      }
    }

    else
    {
      v20 = 0;
    }

    if (_os_feature_enabled_impl() && (memset(buf, 0, sizeof(buf)), _MDPlistDictionaryGetPlistObjectForKey()))
    {
      memset(buf, 0, sizeof(buf));
      v24 = _MDPlistGetPlistObjectType();
      if (v24 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v25 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v39 = v24;
        v40 = *__error();
        v41 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 159;
          *&buf[18] = 1024;
          *&buf[20] = v39;
          v43 = 2080;
          v44 = "vector";
          v45 = 2112;
          v46 = v3;
          _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s %@", buf, 0x2Cu);
        }

        v25 = 0;
        *__error() = v40;
      }
    }

    else
    {
      v25 = 0;
    }

    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      v26 = _MDPlistGetPlistObjectType();
      if (v26 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v27 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v28 = v26;
        v29 = *__error();
        v30 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 168;
          *&buf[18] = 1024;
          *&buf[20] = v28;
          v43 = 2080;
          v44 = "noindex";
          _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v27 = 0;
        *__error() = v29;
      }
    }

    else
    {
      v27 = 0;
    }

    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      v31 = _MDPlistGetPlistObjectType();
      if (v31 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v32 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v33 = v31;
        v34 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 175;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          v43 = 2080;
          v44 = "notokenize";
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v36 = __error();
        v32 = 0;
        *v36 = v34;
      }
    }

    else
    {
      v32 = 0;
    }

    v37 = v10 | 0x20;
    if (!v15)
    {
      v37 = v10;
    }

    if (v20)
    {
      v37 |= 0x100u;
    }

    if (v25)
    {
      v37 |= 0x5030u;
    }

    if (v27)
    {
      v37 |= 0x2000u;
    }

    if (v32)
    {
      result = v37 | 0x4000;
    }

    else
    {
      result = v37;
    }
  }

LABEL_64:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void setOneFieldLocked(const __CFString *a1, char *a2, const __CFArray *a3, int *a4, uint64_t *a5, unsigned int a6, int a7, int a8)
{
  LODWORD(v118) = a8;
  LODWORD(v117) = a7;
  v8 = a6;
  v120 = a5;
  v121 = a3;
  v10 = a2;
  v140 = *MEMORY[0x1E69E9840];
  v128 = a6;
  if (dword_1EBF46ADC >= 5)
  {
    v103 = *__error();
    v104 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *v130 = 138412546;
      *&v130[4] = a1;
      *&v130[12] = 2112;
      *&v130[14] = v121;
      _os_log_impl(&dword_1C278D000, v104, OS_LOG_TYPE_DEFAULT, "Trying to store %@ = %@", v130, 0x16u);
    }

    *__error() = v103;
    v10 = a2;
  }

  v127 = 0;
  v12 = db_corespotlight_store(a4);
  v13 = v12;
  if ((v8 & 0x800) != 0 && v12)
  {
    v92 = __si_assert_copy_extra_332();
    v100 = v92;
    v101 = "";
    if (v92)
    {
      v101 = v92;
    }

    *&v113 = "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0";
    *(&v113 + 1) = v101;
LABEL_204:
    __message_assert_336(v92, v93, v94, v95, v96, v97, v98, v99, "SIIndexInternals.cpp");
    free(v100);
    if (__valid_fs(-1))
    {
      v105 = 2989;
    }

    else
    {
      v105 = 3072;
    }

    *v105 = -559038737;
    abort();
  }

  v116 = &v114;
  v126 = 0;
  MEMORY[0x1EEE9AC00](v12);
  v113 = 0u;
  memset(v112, 0, sizeof(v112));
  if (!v10)
  {
    v10 = fasterUTF8String(a1, &v126, v112, 256, &v127);
  }

  v14 = *v10;
  v115 = a4;
  if (v14 == 58)
  {
    LODWORD(v119) = 0;
    v15 = 0;
    v16 = v10;
    while (!strncmp(v16, ":EA:", 4uLL))
    {
      v16 += 4;
      if (v13)
      {
        goto LABEL_18;
      }

      v8 |= 0x800u;
LABEL_20:
      v128 = v8;
LABEL_21:
      if (*v16 != 58)
      {
LABEL_22:
        v17 = v8 & 0x800;
        a4 = v115;
        goto LABEL_24;
      }
    }

    if (strncmp(v16, ":PR:", 4uLL))
    {
      if (v16[1] == 65 && v16[2] == 58)
      {
        v16 += 3;
        LODWORD(v119) = 1;
      }

      else
      {
        if (strncmp(v16, ":INC:", 5uLL))
        {
          goto LABEL_22;
        }

        v16 += 5;
        v15 = 1;
      }

      goto LABEL_21;
    }

    v16 += 4;
    if (!v13)
    {
      v8 |= 0x804u;
      goto LABEL_20;
    }

LABEL_18:
    v8 &= ~0x200u;
    goto LABEL_20;
  }

  v15 = 0;
  LODWORD(v119) = 0;
  v17 = v8 & 0x800;
  v16 = v10;
LABEL_24:
  v82 = v17 == 0;
  v18 = v13 ^ 1;
  if (v82)
  {
    v18 = 1;
  }

  v19 = v121;
  if ((v18 & 1) == 0)
  {
    goto LABEL_203;
  }

  if (!strncmp(v16, "_kMD", 4uLL))
  {
    if (!strcmp(v16, "_kMDItemExternalID"))
    {
      v8 = 8968;
    }

    else if (!strcmp(v16, "_kMDItemBundleID"))
    {
      v8 = 17176;
    }

    else
    {
      if (strcmp(v16, "_kMDItemOwnerUserID"))
      {
        if (!strcmp(v16, "_kMDItemRelatedObjects") || !strcmp(v16, "_kMDItemRelatedObjectsWithBundle"))
        {
          v21 = 0;
          v8 = 8480;
        }

        else if (!strcmp(v16, "_kMDItemRankingLaunchStrings") || !strcmp(v16, "_kMDItemActivityLaunchDates") || !strcmp(v16, "_kMDItemRankingLaunchDates"))
        {
          v21 = 0;
          v8 = 32;
        }

        else
        {
          if (strcmp(v16, "_kMDItemOutgoingCounts") && strcmp(v16, "_kMDItemIncomingCounts") && strcmp(v16, "_kMDItemOutgoingMailCounts") && strcmp(v16, "_kMDItemIncomingMailCounts") && strcmp(v16, "_kMDItemOutgoingSMSCounts") && strcmp(v16, "_kMDItemIncomingSMSCounts") && strcmp(v16, "_kMDItemOutgoingCalendarCounts") && strcmp(v16, "_kMDItemIncomingCalendarCounts") && strcmp(v16, "_kMDItemOutgoingFileProviderCounts") && strcmp(v16, "_kMDItemIncomingFileProviderCounts") && strcmp(v16, "_kMDItemIncomingVideoCallDates") && strcmp(v16, "_kMDItemOutgoingVideoCallDates") && strcmp(v16, "_kMDItemIncomingAudioCallDates") && strcmp(v16, "_kMDItemOutgoingAudioCallDates"))
          {
            if (!strcmp(v16, "_kMDItemLaunchString"))
            {
              v21 = 0;
              v8 = 256;
              v128 = 256;
              a4 = v115;
              v19 = v121;
              goto LABEL_91;
            }

            if (strcmp(v16, "_kMDItemPrimaryTextEmbedding") && strcmp(v16, "_kMDItemSecondaryTextEmbedding") && strcmp(v16, "_kMDItemPhotoEmbedding"))
            {
              v8 |= 0x108u;
              v128 = v8;
            }

            a4 = v115;
            v19 = v121;
            goto LABEL_29;
          }

          v21 = 0;
          v8 = 288;
        }

        v128 = v8;
        goto LABEL_91;
      }

      v8 = 776;
    }

    v128 = v8;
    goto LABEL_66;
  }

LABEL_29:
  v20 = v13 ^ 1;
  if ((v8 & 0x800) == 0)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_203;
  }

LABEL_66:
  if ((v8 & 0x200) != 0)
  {
    v22 = v13 ^ 1;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0 && (!strncmp(v16, "kMDItemLastUsedDate", 0x13uLL) || !strcmp(v16, "kMDItemLastUsedDate_Ranking") || !strcmp(v16, "_kMDItemShortcutLastUsedDate") || !strcmp(v16, "kMDItemUsedDates") || !strcmp(v16, "_kMDItemRecentSpotlightEngagementDates") || !strcmp(v16, "_kMDItemRecentSpotlightEngagementQueries") || !strcmp(v16, "_kMDItemRecentSpotlightEngagementRenderPositions") || !strcmp(v16, "_kMDItemRecentSpotlightEngagementDatesNonUnique") || !strcmp(v16, "_kMDItemRecentSpotlightEngagementQueriesNonUnique") || !strcmp(v16, "_kMDItemRecentSpotlightEngagementRenderPositionsNonUnique") || !strcmp(v16, "_kMDItemRecentAppSearchEngagementDates") || !strcmp(v16, "_kMDItemRecentAppSearchEngagementQueries") || !strcmp(v16, "_kMDItemRecentAppSearchEngagementRenderPositions") || !strcmp(v16, "_kMDItemRecentOutOfSpotlightEngagementDates") || !strcmp(v16, "_kMDItemEmbeddingsError") || !strcmp(v16, "_kMDItemKeyphrasesError")))
  {
    v8 &= ~0x200u;
    v128 = v8;
  }

  v21 = v8 & 0x800;
  if ((v8 & 0x800) != 0)
  {
    v23 = v13 ^ 1;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_203;
  }

LABEL_91:
  v24 = v117 | v118;
  if (!v19 || CFEqual(v19, *MEMORY[0x1E695E738]))
  {
    db_delete_field_weak(a4, v120, v16, v24 | v13);
    goto LABEL_94;
  }

  v114 = v10;
  v26 = CFGetTypeID(v19);
  if (v26 != CFArrayGetTypeID())
  {
    if (v15)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v19))
      {
        *v130 = 0;
        v134[0] = 0;
        *valuePtr = 0;
        CFNumberGetValue(v121, kCFNumberLongLongType, valuePtr);
        if (!db_get_field(a4, *v120, v16, v134, v130) && *v134[0] == 7)
        {
          *valuePtr += **v130;
        }

        v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, valuePtr);
        v21 = v128 & 0x800;
      }
    }

    v39 = v13 ^ 1;
    if (!v21)
    {
      v39 = 1;
    }

    if (v39)
    {
      bzero(&v130[8], 0x418uLL);
      *v130 = &unk_1F4282720;
      *&v130[8] = fastFieldFromCFType(v19, 0, &v132, v133, &v130[16], v131);
      if (*&v130[8])
      {
        v40 = computeFlags(v16, &v128, v13, v117, v118);
        db_add_field(a4, v120, v40, v16, 0, v128 | v133[0], v132, *&v130[8], v41, *&v130[16]);
      }

      v10 = v114;
      if (v19 != v121)
      {
        CFRelease(v19);
      }

      *v130 = &unk_1F4282740;
      if (*&v130[8] != v131)
      {
        free(*&v130[8]);
      }

      goto LABEL_94;
    }

LABEL_203:
    v92 = __si_assert_copy_extra_332();
    v100 = v92;
    goto LABEL_204;
  }

  v27 = _os_feature_enabled_impl();
  v10 = v114;
  if ((~v8 & 0x5020) == 0 && v27)
  {
    Count = CFArrayGetCount(v19);
    if (Count)
    {
      v29 = v19;
      v30 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v29, 0);
      *v130 = 0;
      v134[0] = 4096;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      *valuePtr = v32;
      v125 = 0;
      v129 = 0;
      v124 = 0;
      if (isVectorDictionary(ValueAtIndex, &v125 + 1, &v125, &v124, &v129))
      {
        v33 = BYTE4(v125);
        v34 = -1;
        if (SHIDWORD(v125) <= 2 && v125 <= 2)
        {
          v34 = (vector_dimension_vec_sizes_15424[HIDWORD(v125)] * vector_size_elem_sizes_15423[v125]);
        }

        *v130 = 4;
        *v32 = v125;
        v32[1] = v33;
        *(v32 + 1) = v124;
        appendVector(v34, v130, valuePtr, v134, v129);
        v122 = 0;
        v123 = 0;
        v128 = v8 | 0x5030;
        if (v30 >= 2)
        {
          for (i = 1; i != v30; ++i)
          {
            v36 = CFArrayGetValueAtIndex(v121, i);
            if (isVectorDictionary(v36, &v123, &v122, &v124, &v129))
            {
              appendVector(v34, v130, valuePtr, v134, v129);
            }
          }
        }

        v32 = *valuePtr;
        v37 = *v130;
      }

      else
      {
        v37 = 0;
      }

      v57 = computeFlags(v16, &v128, v13, v117, v118);
      db_add_field(v115, v120, v57, v16, 0, v128, 14, v32, v58, v37);
      free(*valuePtr);
      v10 = v114;
    }

    goto LABEL_94;
  }

  if (v119)
  {
    *v130 = 0;
    v134[0] = 0;
    MutableCopy = v19;
    if (!db_get_field(a4, *v120, v16, v134, v130))
    {
      v43 = *MEMORY[0x1E695E480];
      v44 = v19;
      v45 = _decodeSDBField(a4, v134[0], *v130, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
      v46 = CFGetTypeID(v45);
      v47 = CFArrayGetTypeID();
      v48 = CFArrayGetCount(v44);
      if (v46 == v47)
      {
        MutableCopy = CFArrayCreateMutableCopy(v43, v48, v45);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(v43, v48 + 1, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(MutableCopy, v45);
      }

      v59 = v121;
      v143.length = CFArrayGetCount(v121);
      v143.location = 0;
      CFArrayAppendArray(MutableCopy, v59, v143);
      v60 = v45;
      v19 = v59;
      CFRelease(v60);
      v10 = v114;
      a4 = v115;
    }
  }

  else
  {
    MutableCopy = v19;
    if (v15)
    {
      *v130 = 0;
      v134[0] = 0;
      MutableCopy = v19;
      if (!db_get_field(a4, *v120, v16, v134, v130))
      {
        v49 = *MEMORY[0x1E695E480];
        v50 = _decodeSDBField(a4, v134[0], *v130, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
        v51 = CFGetTypeID(v50);
        v52 = CFArrayGetTypeID();
        v53 = v19;
        v54 = v52;
        v55 = CFArrayGetCount(v53);
        v119 = v49;
        if (v51 == v54)
        {
          Mutable = CFArrayCreateMutableCopy(v49, v55, v50);
        }

        else
        {
          Mutable = CFArrayCreateMutable(v49, v55, MEMORY[0x1E695E9C0]);
        }

        MutableCopy = Mutable;
        v118 = v50;
        for (j = 0; ; ++j)
        {
          v62 = CFArrayGetCount(MutableCopy);
          v63 = v121;
          if (j >= v62 || j >= CFArrayGetCount(v121))
          {
            break;
          }

          v64 = MutableCopy;
          v65 = CFArrayGetValueAtIndex(MutableCopy, j);
          v66 = CFArrayGetValueAtIndex(v63, j);
          v67 = CFGetTypeID(v65);
          if (v67 == CFNumberGetTypeID())
          {
            v68 = CFGetTypeID(v66);
            if (v68 == CFNumberGetTypeID())
            {
              *valuePtr = 0;
              v129 = 0;
              CFNumberGetValue(v65, kCFNumberSInt64Type, valuePtr);
              CFNumberGetValue(v66, kCFNumberSInt64Type, &v129);
              *valuePtr += v129;
              v69 = CFNumberCreate(v119, kCFNumberSInt64Type, valuePtr);
              CFArraySetValueAtIndex(v64, j, v69);
              CFRelease(v69);
            }
          }

          a4 = v115;
          MutableCopy = v64;
        }

        v70 = CFArrayGetCount(MutableCopy);
        v19 = v63;
        v71 = v118;
        while (v70 < CFArrayGetCount(v19))
        {
          v72 = CFArrayGetValueAtIndex(v19, v70);
          CFArraySetValueAtIndex(MutableCopy, v70++, v72);
        }

        CFRelease(v71);
        v10 = v114;
      }
    }
  }

  if (db_delete_field_weak(a4, v120, v16, v24 | v13) != 1)
  {
    v73 = v128;
    v74 = CFArrayGetCount(MutableCopy);
    if (v74 >= 1)
    {
      v75 = v74;
      bzero(v134, 0x400uLL);
      v117 = MutableCopy;
      v119 = v75;
      if (v75 < 0x81)
      {
        v76 = v134;
        v142.location = 0;
        v142.length = v75;
        CFArrayGetValues(MutableCopy, v142, v134);
        if (v75 == 1)
        {
          v77 = v134;
          v78 = 0;
LABEL_174:
          v85 = 0;
          v129 = 0;
          while (1)
          {
            bzero(v130, 0x420uLL);
            v86 = v77[v85];
            *&v130[8] = 0;
            *&v130[16] = 0;
            *v130 = &unk_1F4282720;
            v87 = fastFieldFromCFType(v86, v78, &v132, v133, &v130[16], v131);
            *&v130[8] = v87;
            if (v87)
            {
              v89 = v87;
              v73 |= v133[0];
              if ((v73 & 0x100) == 0 && (*(*v120 + 40) & 2) != 0 && !strcmp(v16, "kMDItemAlternateNames"))
              {
                v73 |= 0x100u;
              }

              if (*v115 != 1685287992)
              {
                v106 = *__error();
                v107 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  v108 = *v115;
                  *valuePtr = 136315650;
                  *&valuePtr[4] = "db_add_field_with_cache";
                  v136 = 1024;
                  v137 = 345;
                  v138 = 1024;
                  v139 = v108;
                  _os_log_error_impl(&dword_1C278D000, v107, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", valuePtr, 0x18u);
                }

                *__error() = v106;
                v109 = __si_assert_copy_extra_332();
                v110 = v109;
                if (v109)
                {
                  v111 = v109;
                }

                else
                {
                  v111 = "";
                }

                __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 345, v111);
                free(v110);
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              if (v85)
              {
                v90 = v73;
              }

              else
              {
                v90 = v73 | 0x20;
              }

              if (v85)
              {
                v91 = 2;
              }

              else
              {
                v91 = 1;
              }

              db2_add_field_with_cache(v115, v120, v91, v16, 0, v90, v132, v89, v88, *&v130[16], &v129);
              v87 = *&v130[8];
              *v130 = &unk_1F4282740;
              if (*&v130[8] == v131)
              {
                goto LABEL_191;
              }
            }

            else
            {
              *v130 = &unk_1F4282740;
            }

            free(v87);
LABEL_191:
            if (v119 == ++v85)
            {
              MutableCopy = v117;
              if (v77 != v134)
              {
                free(v77);
              }

              v10 = v114;
              v19 = v121;
              goto LABEL_195;
            }
          }
        }
      }

      else
      {
        v76 = malloc_type_malloc(8 * v75, 0xC0040B8AA526DuLL);
        v141.location = 0;
        v141.length = v75;
        CFArrayGetValues(MutableCopy, v141, v76);
      }

      v78 = 0;
      v79 = 0;
      v118 = &unk_1F4282720;
      do
      {
        bzero(v131, 0x408uLL);
        v77 = v76;
        v80 = v76[v79];
        *&v130[8] = 0;
        *&v130[16] = 0;
        *v130 = v118;
        v81 = fastFieldFromCFType(v80, 0, &v132, v133, &v130[16], v131);
        v82 = v132 <= 10 || (v132 & 0xFFFFFFFD) == 12;
        v83 = !v82;
        if (v78 <= v132)
        {
          v84 = v132;
        }

        else
        {
          v84 = v78;
        }

        *v130 = &unk_1F4282740;
        *&v130[8] = v81;
        if (v81 != v131)
        {
          free(v81);
        }

        if (v83)
        {
          goto LABEL_174;
        }

        v79 = (v79 + 1);
        v78 = v84;
        v76 = v77;
      }

      while (v119 != v79);
      v78 = v84;
      goto LABEL_174;
    }
  }

LABEL_195:
  if (MutableCopy != v19)
  {
    CFRelease(MutableCopy);
  }

LABEL_94:
  if (v127 == 1)
  {
    free(v10);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t computeFlags(const char *__s1, int *a2, int a3, char a4, char a5)
{
  v7 = *a2;
  v8 = *a2 & 0x800;
  result = 8;
  if (a4 & 1) != 0 || (a5)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v10 = a3 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
LABEL_7:
    v14 = __si_assert_copy_extra_332();
    v22 = v14;
    __message_assert_336(v14, v15, v16, v17, v18, v19, v20, v21, "SIIndexInternals.cpp");
    free(v22);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  if (strcmp(__s1, "kMDItemUserTags"))
  {
    if (!strcmp(__s1, "kMDItemFinderComment"))
    {
      v12 = v7 | 0x800;
      if (a3)
      {
        v12 = v7;
      }

      *a2 = v12 | 0x200;
      v8 = v12 & 0x800;
    }

    else if (strcmp(__s1, "_kMDItemFinderLabel") && strcmp(__s1, "_kMDItemSizingIsNeeded") && strcmp(__s1, "kMDItemSubject"))
    {
      result = 1;
      goto LABEL_19;
    }
  }

  result = 8;
  if (v8 && a3)
  {
    v24 = __si_assert_copy_extra_332();
    __message_assert_336(v24, v25, v26, v27, v28, v29, v30, v31, "SIIndexInternals.cpp");
    free(v24);
    if (__valid_fs(-1))
    {
      v32 = 2989;
    }

    else
    {
      v32 = 3072;
    }

    *v32 = -559038737;
    abort();
  }

LABEL_19:
  if (v8)
  {
    v13 = a3 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  return result;
}

void setAttributeApplier(CFStringRef theString, void *a2, uint64_t a3)
{
  values = a2;
  v6 = (a3 + 24);
  v7 = *(a3 + 20);
  if (!*(a3 + 24))
  {
    goto LABEL_10;
  }

  HasPrefix = CFStringHasPrefix(theString, @":EA:");
  v9 = MEMORY[0x1E695E480];
  if (HasPrefix || CFStringHasPrefix(theString, @":PR:"))
  {
    v10 = *v9;
    v20.length = CFStringGetLength(theString) - 4;
    v20.location = 4;
    v11 = CFStringCreateWithSubstring(v10, theString, v20);
    if (*v6)
    {
      v17 = *v6;
      v18 = *(v6 + 2);
      FlagsFromAttributes = getFlagsFromAttributes(&v17);
    }

    else
    {
      FlagsFromAttributes = 0;
    }

    CFRelease(v11);
  }

  else
  {
    value = 0;
    v15 = *(a3 + 48);
    if (v15 && CFDictionaryGetValueIfPresent(v15, theString, &value))
    {
      FlagsFromAttributes = value;
    }

    else if (*v6)
    {
      v17 = *v6;
      v18 = *(v6 + 2);
      FlagsFromAttributes = getFlagsFromAttributes(&v17);
    }

    else
    {
      FlagsFromAttributes = 0;
    }
  }

  v7 |= FlagsFromAttributes;
  if ((v7 & 0x20) != 0 && (v13 = CFGetTypeID(a2), v13 != CFArrayGetTypeID()))
  {
    v14 = CFArrayCreate(*v9, &values, 1, 0);
    setOneFieldLocked(theString, 0, v14, *a3, *(a3 + 8), v7, *(a3 + 56), *(a3 + 57));
    CFRelease(v14);
  }

  else
  {
LABEL_10:
    setOneFieldLocked(theString, 0, a2, *a3, *(a3 + 8), v7, *(a3 + 56), *(a3 + 57));
  }
}

uint64_t candidateForReimport(uint64_t a1, char **a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1192);
  v5 = *a2;
  v12 = 0;
  v13[0] = 0;
  if (!db_get_field(v4, v5, "_kMDItemImporterResult", &v12, v13) && *v13[0] || ((v13[0] = *(a1 + 1996), v11 = 0, v12 = 0, !db_get_field_by_id(v4, *a2, v13, &v12, &v11)) || !db_get_field(v4, *a2, "kMDItemContentType", &v12, &v11)) && *v12 == 11 && (v12[1] & 0xB0) == 0x10)
  {
    v8 = 0;
  }

  else
  {
    v7 = *(a1 + 1996);
    v8 = 1;
    db_add_field(v4, a2, 0, "kMDItemContentType", v7, 0x310u, 11, "", v6, 1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL setDatastoreAttributes(uint64_t a1, uint64_t a2, const __CFDictionary *a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, char a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (db_corespotlight_store(a1) | ((a4 & 0x200) >> 9))
    {
      v16 = 512;
    }

    else
    {
      v16 = 0;
    }

    if (a5)
    {
      v17 = a5;
    }

    else
    {
      v17 = gDefaultSchema;
    }

    if (v17)
    {
      context = xmmword_1E8190DD8;
      v21 = 0;
      _MDPlistContainerGetPlistObjectAtKeyArray();
    }

    v24 = a6;
    *&context = a1;
    *(&context + 1) = a2;
    v21 = __PAIR64__(v16, a4);
    v22 = 0uLL;
    v23 = 0;
    v25 = a7;
    BYTE1(v25) = a8;
    CFDictionaryApplyFunction(a3, setAttributeApplier, &context);
  }

  result = a3 != 0;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_corespotlight_store(uint64_t a1)
{
  if (*a1 != 1685287992)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 464, v4);
    free(v3);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return (*(a1 + 804) >> 2) & 1;
}

void InsertPreProcessContextAddAttr(uint64_t a1, CFTypeRef cf, CFTypeRef a3, int a4)
{
  if (*(a1 + 392) >= *(a1 + 400))
  {
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      if (!atomic_fetch_add_explicit(InsertPreProcessContextAddAttr__crashCount, 1u, memory_order_relaxed))
      {
        v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"attr count %d exceeded %d", *(a1 + 392), *(a1 + 400));
        getpid();
        SISimulateCrashForPid(0, v10);
        if (v10)
        {
          CFRelease(v10);
        }
      }
    }

    *(a1 + 44) = 22;
  }

  else
  {
    v7 = CFRetain(cf);
    v8 = *(a1 + 392);
    *(*(a1 + 376) + 8 * v8) = v7;
    if (a4)
    {
      a3 = CFRetain(a3);
      v8 = *(a1 + 392);
    }

    v9 = *(a1 + 384);
    *(a1 + 392) = v8 + 1;
    *(v9 + 8 * v8) = a3;
  }
}

void si_indexDeleteDeferredItemsIfItemIncluded(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 288);
  if (v3 && RLEOIDArrayContainsOid(v3, a2))
  {
    os_unfair_lock_lock((a1 + 280));
    v5 = *(a1 + 288);
    if (v5 && RLEOIDArrayContainsOid(v5, a2))
    {
      si_indexDeleteByOid(a1, *(a1 + 288));
      __dmb(0xBu);
      v6 = *(a1 + 288);
      *(a1 + 288) = 0;
      *(a1 + 296) = v6;
      RLEOIDArrayClear(v6);
    }

    os_unfair_lock_unlock((a1 + 280));
  }
}

BOOL objectHasContent(int *a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  return !db_get_field(a1, a2, "_kMDItemTextContentIndexExists", &v3, &v4) && *v4 != 0;
}

void preProcess(const __CFString *a1, const __CFString *a2, double *a3)
{
  v193 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  v7 = CFGetTypeID(a1);
  if (v7 != CFStringGetTypeID())
  {
    goto LABEL_327;
  }

  v8 = CFGetTypeID(a2);
  if (CFDateGetTypeID() != v8)
  {
    goto LABEL_49;
  }

  if (!CFEqual(@"kMDItemContentCreationDate", a1))
  {
    if (CFEqual(@"kMDItemContentModificationDate", a1))
    {
      v15 = *MEMORY[0x1E69E9840];
      v10 = @"kMDItemContentModificationDate";
      v11 = @"kMDItemContentModificationDate_Ranking";
LABEL_7:
      v12 = a3;
      v13 = a2;
      v14 = 3;
      goto LABEL_18;
    }

    if (CFEqual(@"_kMDItemApplicationLastLaunchedDate", a1))
    {
      v16 = *MEMORY[0x1E69E9840];
      v10 = @"_kMDItemApplicationLastLaunchedDate";
      v11 = @"_kMDItemApplicationLastLaunchedDate_Ranking";
LABEL_16:
      v12 = a3;
      v13 = a2;
LABEL_17:
      v14 = 4;
      goto LABEL_18;
    }

    if (CFEqual(@"kMDItemStartDate", a1))
    {
      v17 = *MEMORY[0x1E69E9840];
      v10 = @"kMDItemStartDate";
      v11 = @"kMDItemStartDate_Ranking";
      goto LABEL_16;
    }

    if (CFEqual(@"kMDItemCompletionDate", a1))
    {
      v18 = *MEMORY[0x1E69E9840];
      v10 = @"kMDItemCompletionDate";
      v11 = @"kMDItemCompletionDate_Ranking";
      goto LABEL_16;
    }

    if (CFEqual(@"kMDItemDueDate", a1))
    {
      v19 = *MEMORY[0x1E69E9840];
      v10 = @"kMDItemDueDate";
      v11 = @"kMDItemDueDate_Ranking";
      goto LABEL_16;
    }

    if (CFEqual(@"kMDItemDateAdded", a1))
    {
      v20 = *MEMORY[0x1E69E9840];
      v10 = @"kMDItemDateAdded";
      v11 = @"kMDItemDateAdded_Ranking";
      v12 = a3;
      v13 = a2;
      v14 = 1;
      goto LABEL_18;
    }

    if (CFEqual(@"_kMDItemRelatedActivityLastLaunchDate", a1))
    {
      v21 = *MEMORY[0x1E69E9840];
      v10 = @"_kMDItemRelatedActivityLastLaunchDate";
      v12 = a3;
      v13 = a2;
      v11 = 0;
      goto LABEL_17;
    }

    if (CFEqual(@"com_apple_mail_dateReceived", a1))
    {
      v22 = *MEMORY[0x1E69E9840];
      v10 = @"com_apple_mail_dateReceived";
      v11 = @"kMDItemMailDateReceived_Ranking";
      goto LABEL_7;
    }

    if (CFEqual(@"com_apple_mail_dateLastViewed", a1))
    {
      v23 = *MEMORY[0x1E69E9840];
      v10 = @"com_apple_mail_dateLastViewed";
      v11 = @"kMDItemMailDateLastViewed_Ranking";
      goto LABEL_7;
    }

    if (CFEqual(@"kMDItemEndDate", a1))
    {
      v24 = *MEMORY[0x1E69E9840];
      v10 = @"kMDItemEndDate";
      v12 = a3;
      v13 = a2;
      v11 = 0;
      v14 = 0;
      goto LABEL_18;
    }

    if (CFEqual(@"kMDItemLastUsedDate", a1))
    {
      *(a3 + 1) = CFRetain(a2);
      v25 = *(a3 + 10);
      v26 = ~(16 * v25) & 0x10;
      if ((v25 & 2) != 0)
      {
        v26 = 0;
      }

      v27 = v26 | v25 & 0xFFFFFFEF;
      *(a3 + 10) = v27;
      if (dword_1EBF46ADC >= 5)
      {
        v130 = *__error();
        v131 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          v132 = *(a3 + 1);
          LODWORD(valuePtr[0]) = 138412290;
          *(valuePtr + 4) = v132;
          _os_log_impl(&dword_1C278D000, v131, OS_LOG_TYPE_DEFAULT, "New last used date: %@", valuePtr, 0xCu);
        }

        *__error() = v130;
        if ((a3[5] & 0x10000) != 0)
        {
          goto LABEL_327;
        }

        goto LABEL_36;
      }

      if ((v27 & 0x10000) == 0)
      {
LABEL_36:
        v28 = *(a3 + 68);
        if (v28 <= 3 || v28 == 4 && CFDateCompare(*(a3 + 67), a2, 0) < 0)
        {
          v29 = *(a3 + 67);
          if (v29)
          {
            CFRelease(v29);
          }

          a3[67] = 0.0;
          *(a3 + 67) = CFRetain(a2);
          *(a3 + 68) = 4;
        }
      }

LABEL_327:
      v95 = *MEMORY[0x1E69E9840];
      return;
    }

    if (CFEqual(a1, @"_kMDItemRenderDate"))
    {
      a3[61] = MEMORY[0x1C691E960](a2);
      goto LABEL_327;
    }

    if (CFEqual(a1, @"_kMDItemEngagementDate"))
    {
      a3[62] = MEMORY[0x1C691E960](a2);
      goto LABEL_327;
    }

    if (CFEqual(a1, @"kMDItemLastAppEngagementDate"))
    {
      a3[63] = MEMORY[0x1C691E960](a2);
      goto LABEL_327;
    }

LABEL_49:
    if (CFEqual(a1, @"kMDItemLastAppSearchEngagementQuery"))
    {
      v30 = 0;
      *(a3 + 71) = CFRetain(a2);
      goto LABEL_57;
    }

    if (CFEqual(a1, @"kMDItemLastAppSearchEngagementRenderPosition"))
    {
      LODWORD(valuePtr[0]) = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, valuePtr))
      {
        *(a3 + 144) = valuePtr[0];
      }

      goto LABEL_54;
    }

    if (CFEqual(a1, @"_kMDItemLastSpotlightEngagementQuery"))
    {
      v30 = 0;
      *(a3 + 73) = CFRetain(a2);
      goto LABEL_57;
    }

    if (CFEqual(a1, @"_kMDItemLastSpotlightEngagementRenderPosition"))
    {
      LODWORD(valuePtr[0]) = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, valuePtr))
      {
        *(a3 + 148) = valuePtr[0];
      }

      goto LABEL_54;
    }

    if (CFEqual(a1, @"_kMDItemLastOutOfSpotlightEngagementDate"))
    {
      v30 = 0;
      *(a3 + 75) = CFRetain(a2);
      goto LABEL_57;
    }

    if (*a3 == -INFINITY && CFStringCompare(a1, @"com_apple_metadata_modtime", 0) == kCFCompareEqualTo)
    {
      if (CFNumberGetTypeID() == v8)
      {
        CFNumberGetValue(a2, kCFNumberDoubleType, a3);
      }

      goto LABEL_54;
    }

    if (!*(a3 + 8) && CFStringCompare(a1, @"_kMDItemIsFromImporter", 0) == kCFCompareEqualTo)
    {
      *(a3 + 8) = a2;
      if (a2)
      {
        v96 = CFGetTypeID(a2);
        if (v96 == CFBooleanGetTypeID())
        {
          v30 = 0;
          *(a3 + 10) = a3[5] & 0xFFFFFFFB | (4 * (CFBooleanGetValue(*(a3 + 8)) & 1));
          goto LABEL_57;
        }
      }

      goto LABEL_54;
    }

    if (!*(a3 + 41) && CFEqual(a1, @"kMDItemTextContent"))
    {
      v30 = 0;
      *(a3 + 41) = CFRetain(a2);
      goto LABEL_57;
    }

    if (CFStringHasPrefix(a1, @"_kMDItemOCRContent"))
    {
      if (v8 == CFStringGetTypeID() && CFStringGetLength(a2))
      {
        if (!*(a3 + 42) && CFEqual(a1, @"_kMDItemOCRContentTitle"))
        {
          v30 = 0;
          *(a3 + 42) = CFRetain(a2);
          goto LABEL_57;
        }

        if (!*(a3 + 43) && CFEqual(a1, @"_kMDItemOCRContentLevel1"))
        {
          v30 = 0;
          *(a3 + 43) = CFRetain(a2);
          goto LABEL_57;
        }

        if (!*(a3 + 44) && CFEqual(a1, @"_kMDItemOCRContentLevel2"))
        {
          v30 = 0;
          *(a3 + 44) = CFRetain(a2);
          goto LABEL_57;
        }

        if (!*(a3 + 45) && CFEqual(a1, @"_kMDItemOCRContentLevel3"))
        {
          v30 = 0;
          *(a3 + 45) = CFRetain(a2);
          goto LABEL_57;
        }
      }

LABEL_54:
      v30 = 0;
      goto LABEL_57;
    }

    if (TypeID == v8)
    {
      if (CFStringCompare(a1, @"kMDItemTextVector", 0))
      {
        InsertPreProcessContextAddLocAttr(a3, a1, a2, 1);
        goto LABEL_54;
      }

      goto LABEL_419;
    }

    if (CFStringCompare(a1, @"kMDItemRecipientEmailAddresses", 0) == kCFCompareEqualTo)
    {
      v30 = 0;
      *(a3 + 57) = CFRetain(a2);
      goto LABEL_57;
    }

    if (CFStringCompare(a1, @"kMDItemPrimaryRecipientEmailAddresses", 0))
    {
      if (CFStringCompare(a1, @"kMDItemAdditionalRecipientEmailAddresses", 0))
      {
        if (CFStringCompare(a1, @"kMDItemHiddenAdditionalRecipientEmailAddresses", 0))
        {
          if (CFStringCompare(a1, @"kMDItemPrimaryRecipients", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemAdditionalRecipients", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemHiddenAdditionalRecipients", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemPrimaryRecipientContactIdentifiers", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemAdditionalRecipientContactIdentifiers", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemHiddenAdditionalRecipientContactIdentifiers", 0) == kCFCompareEqualTo)
          {
            goto LABEL_54;
          }

          if ((*(a3 + 41) & 1) != 0 && CFStringCompare(a1, @"kMDItemThumbnailData", 0) == kCFCompareEqualTo)
          {
            if (v8 != CFDataGetTypeID())
            {
              goto LABEL_54;
            }

            *(a3 + 46) = a2;
            v106 = *MEMORY[0x1E695E4D0];
            v107 = @"_kMDItemThumbnailDataExists";
            v108 = a3;
            v109 = 0;
LABEL_420:
            InsertPreProcessContextAddAttr(v108, v107, v106, v109);
            goto LABEL_54;
          }

          if (CFStringHasPrefix(a1, @"_kMDItemTimeMachinePath"))
          {
            if (*(a3 + 39))
            {
              v97 = *__error();
              v98 = _SILogForLogForCategory(4);
              v99 = dword_1EBF46ADC < 3;
              if (os_log_type_enabled(v98, (dword_1EBF46ADC < 3)))
              {
                v100 = *(a3 + 39);
                LODWORD(valuePtr[0]) = 138412802;
                *(valuePtr + 4) = a1;
                WORD6(valuePtr[0]) = 2112;
                *(valuePtr + 14) = a2;
                WORD3(valuePtr[1]) = 2112;
                *(&valuePtr[1] + 1) = v100;
                _os_log_impl(&dword_1C278D000, v98, v99, "*warn* Skipping %@ %@ already had %@", valuePtr, 0x20u);
              }

              v30 = 0;
              *__error() = v97;
            }

            else
            {
              if (v8 != CFStringGetTypeID())
              {
                goto LABEL_54;
              }

              if ((a3[5] & 0x80) != 0)
              {
                v105 = @"_kMDItemTimeMachinePath";
              }

              else
              {
                v105 = a1;
              }

              *(a3 + 40) = CFRetain(v105);
              if (CFStringGetLength(a2) >= 6 && CFStringGetCharacterAtIndex(a2, 2) != 58 && CFStringGetCharacterAtIndex(a2, 5) != 58)
              {
                *(a3 + 10) |= 0x200u;
              }

              *(a3 + 39) = CFRetain(a2);
              if (dword_1EBF46ADC < 5)
              {
                goto LABEL_54;
              }

              v110 = *__error();
              v111 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
              {
                v112 = "Marker";
                v113 = *(a3 + 40);
                if ((a3[5] & 0x80) == 0)
                {
                  v112 = "";
                }

                LODWORD(valuePtr[0]) = 136315650;
                *(valuePtr + 4) = v112;
                WORD6(valuePtr[0]) = 2112;
                *(valuePtr + 14) = v113;
                WORD3(valuePtr[1]) = 2112;
                *(&valuePtr[1] + 1) = a2;
                _os_log_impl(&dword_1C278D000, v111, OS_LOG_TYPE_DEFAULT, "%s%@ = %@", valuePtr, 0x20u);
              }

              v30 = 0;
              *__error() = v110;
            }

LABEL_57:
            if (CFStringCompare(a1, @"kMDItemDisplayName", 0) == kCFCompareEqualTo)
            {
              if (v8 == CFDictionaryGetTypeID())
              {
                Value = CFDictionaryGetValue(a2, &stru_1F4284FD0);
                a2 = Value;
                if (Value)
                {
                  v8 = CFGetTypeID(Value);
                }
              }

              v52 = CFStringGetTypeID();
              if (a2 && v8 == v52 && CFStringGetLength(a2) >= 36 && CFStringGetCharacterAtIndex(a2, 8) == 45)
              {
                v53 = *MEMORY[0x1E695E480];
                v213.location = 0;
                v213.length = 36;
                v54 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a2, v213);
                v55 = CFUUIDCreateFromString(v53, v54);
                if (v55)
                {
                  *(a3 + 10) |= 0x4000u;
                  CFRelease(v55);
                }

                CFRelease(v54);
              }
            }

            if (v30 && v8 == CFArrayGetTypeID())
            {
              *(a3 + 10) |= 0x2000u;
            }

            v31 = *(a3 + 11);
            v32 = *MEMORY[0x1E695E4C0];
            if ((!v31 || v31 == v32) && (a3[5] & 0x280000) == 0x80000 && (CFEqual(a1, @"kMDItemDisplayName") || CFEqual(a1, @"kMDItemAlternateNames") || CFEqual(a1, @"kMDItemAppEntityTitle")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              v33 = *(a3 + 27);
              if (v33)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 3;
                v180 = 0uLL;
                v195.length = CFArrayGetCount(v33);
                v195.location = 0;
                CFArrayApplyFunction(v33, v195, mePreprocessNameToken, valuePtr);
              }
            }

            v34 = *(a3 + 11);
            if ((!v34 || v34 == v32) && (*(a3 + 42) & 2) != 0 && (CFEqual(a1, @"kMDItemPhotosPeopleNames") || CFEqual(a1, @"kMDItemPhotosPeopleNamesAlternatives") || CFEqual(a1, @"kMDItemCardUnderName")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              v35 = *(a3 + 27);
              if (v35)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 3;
                v180 = 0uLL;
                v196.length = CFArrayGetCount(v35);
                v196.location = 0;
                CFArrayApplyFunction(v35, v196, mePreprocessNameToken, valuePtr);
              }
            }

            v36 = *(a3 + 11);
            if ((!v36 || v36 == v32) && (*(a3 + 42) & 2) != 0 && (CFEqual(a1, @"kMDItemPhotosPeopleNames") || CFEqual(a1, @"kMDItemPhotosPeopleNamesAlternatives") || CFEqual(a1, @"kMDItemCardUnderName")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              if (*(a3 + 25))
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 3;
                v180 = 0uLL;
                mePreprocessAlias(valuePtr);
              }
            }

            v37 = *(a3 + 12);
            if ((!v37 || v37 == v32) && (*(a3 + 42) & 2) != 0 && CFEqual(a1, @"kMDItemTextContent"))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              v38 = *(a3 + 27);
              if (v38)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 259;
                v180 = 0uLL;
                v197.length = CFArrayGetCount(v38);
                v197.location = 0;
                CFArrayApplyFunction(v38, v197, mePreprocessNameToken, valuePtr);
              }
            }

            v39 = *(a3 + 12);
            if ((!v39 || v39 == v32) && (*(a3 + 42) & 2) != 0 && CFEqual(a1, @"kMDItemTextContent"))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              if (*(a3 + 25))
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 259;
                v180 = 0uLL;
                mePreprocessAlias(valuePtr);
              }
            }

            v40 = *(a3 + 13);
            if ((!v40 || v40 == v32) && (*(a3 + 42) & 2) != 0 && (CFEqual(a1, @"kMDItemPhotosPeopleNames") || CFEqual(a1, @"kMDItemPhotosPeopleNamesAlternatives")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              if (*(a3 + 23))
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 4;
                v180 = 0uLL;
                mePreprocessName(valuePtr);
              }
            }

            v41 = *(a3 + 14);
            if ((!v41 || v41 == v32) && (*(a3 + 42) & 2) != 0 && (CFEqual(a1, @"kMDItemPhotosPeopleNames") || CFEqual(a1, @"kMDItemPhotosPeopleNamesAlternatives")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              v42 = *(a3 + 27);
              if (v42)
              {
                if (a2)
                {
                  if (v8 == CFArrayGetTypeID())
                  {
                    Count = CFArrayGetCount(a2);
                    if (Count >= 1)
                    {
                      v44 = Count;
                      for (i = 0; i < v44; ++i)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
                        if (ValueAtIndex)
                        {
                          v47 = ValueAtIndex;
                          v48 = CFGetTypeID(ValueAtIndex);
                          if (v48 == CFStringGetTypeID())
                          {
                            v49 = CFGetTypeID(v47);
                            *&valuePtr[0] = a3;
                            *(&valuePtr[0] + 1) = v47;
                            *&valuePtr[1] = v49;
                            *(&valuePtr[1] + 1) = 5;
                            v180 = 0uLL;
                            v50 = *(a3 + 27);
                            v198.length = CFArrayGetCount(v50);
                            v198.location = 0;
                            CFArrayApplyFunction(v50, v198, mePreprocessNameTokenAnd, valuePtr);
                            if (*(a3 + 14))
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    goto LABEL_148;
                  }

                  v42 = *(a3 + 27);
                }

                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 5;
                v180 = 0uLL;
                v199.length = CFArrayGetCount(v42);
                v199.location = 0;
                CFArrayApplyFunction(v42, v199, mePreprocessNameTokenAnd, valuePtr);
              }
            }

LABEL_148:
            v56 = *(a3 + 15);
            if (v56 && v56 != v32 || (*(a3 + 42) & 2) == 0 || !CFEqual(a1, @"kMDItemTextContent") || (v57 = *(a3 + 28)) == 0 && !*(a3 + 25) && !*(a3 + 29))
            {
LABEL_175:
              v67 = *(a3 + 17);
              if (v67 && v67 != v32)
              {
                goto LABEL_202;
              }

              if ((*(a3 + 42) & 2) == 0)
              {
                goto LABEL_202;
              }

              if (!CFEqual(a1, @"kMDItemCardUnderName"))
              {
                goto LABEL_202;
              }

              v68 = *(a3 + 28);
              if (!v68 && !*(a3 + 25) && !*(a3 + 29))
              {
                goto LABEL_202;
              }

              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
                v68 = *(a3 + 28);
              }

              v69 = MEMORY[0x1E695E4D0];
              if (v68)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 7;
                v180 = 0uLL;
                v202.length = CFArrayGetCount(v68);
                v202.location = 0;
                CFArrayApplyFunction(v68, v202, mePreprocessNameTokenAnd, valuePtr);
                v70 = *(a3 + 17) == *v69;
              }

              else
              {
                v70 = 0;
              }

              if (*(a3 + 25))
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 7;
                v180 = 0uLL;
                mePreprocessAlias(valuePtr);
                v71 = *(a3 + 17) == *v69;
              }

              else
              {
                v71 = 0;
              }

              v72 = *(a3 + 29);
              if (v72)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 7;
                v180 = 0uLL;
                v203.length = CFArrayGetCount(v72);
                v203.location = 0;
                CFArrayApplyFunction(v72, v203, mePreprocessNameTokenAnd, valuePtr);
                v73 = *(a3 + 17);
                v74 = *v69;
                v75 = v73 != *v69;
                LOBYTE(v72) = v70 || v71;
                if ((v70 || v71) && v73 == v74)
                {
                  goto LABEL_201;
                }
              }

              else
              {
                v72 = (v70 | v71);
                v75 = 1;
              }

              v76 = *(a3 + 28);
              if (v76 && CFArrayGetCount(v76) || *(a3 + 25) != 0 || v75)
              {
                v77 = *(a3 + 29);
                if (v77)
                {
                  v78 = (CFArrayGetCount(v77) == 0) & v72;
                  v74 = v32;
                  if ((v78 & 1) == 0)
                  {
LABEL_201:
                    *(a3 + 17) = v74;
LABEL_202:
                    v79 = *(a3 + 18);
                    if ((!v79 || v79 == v32) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemEventName") || CFEqual(a1, @"kMDItemSubject") || CFEqual(a1, @"kMDItemTitle") || CFEqual(a1, @"kMDItemEventCustomerNames") || CFEqual(a1, @"kMDItemDisplayName") || CFEqual(a1, @"kMDItemAlternateNames") || CFEqual(a1, @"kMDItemOwnerName") || CFEqual(a1, @"kMDItemLastEditorName") || CFEqual(a1, @"kMDItemFilename") || CFEqual(a1, @"FPFilename") || CFEqual(a1, @"kMDItemDescription") || CFEqual(a1, @"_ICItemDisplayName") || CFEqual(a1, @"kMDItemComment") || CFEqual(a1, @"kMDItemCreator") || CFEqual(a1, @"kMDItemAppEntityTitle")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v80 = *(a3 + 27);
                      if (v80)
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 8;
                        v180 = 0uLL;
                        v204.length = CFArrayGetCount(v80);
                        v204.location = 0;
                        CFArrayApplyFunction(v80, v204, mePreprocessNameToken, valuePtr);
                      }
                    }

                    v81 = *(a3 + 19);
                    if ((!v81 || v81 == v32) && v8 == CFStringGetTypeID() && (*(a3 + 42) & 0x20) == 0 && CFEqual(a1, @"kMDItemTextContent"))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v82 = *(a3 + 27);
                      if (v82)
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 264;
                        v180 = 0uLL;
                        v205.length = CFArrayGetCount(v82);
                        v205.location = 0;
                        CFArrayApplyFunction(v82, v205, mePreprocessNameToken, valuePtr);
                      }
                    }

                    v83 = *(a3 + 10);
                    if ((!v83 || v83 == v32) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemAuthors") || CFEqual(a1, @"kMDItemUserSharedSentSender") || CFEqual(a1, @"kMDItemUserSharedReceivedSender")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      if (*(a3 + 23))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 2;
                        v180 = 0uLL;
                        mePreprocessName(valuePtr);
                      }
                    }

                    v84 = *(a3 + 10);
                    if ((!v84 || v84 == v32) && (*(a3 + 42) & 0x20) == 0 && CFEqual(a1, @"kMDItemAuthorAddresses"))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      if (*(a3 + 23))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 2;
                        v180 = 0uLL;
                        mePreprocessNamePrefix(valuePtr);
                      }
                    }

                    v85 = *(a3 + 10);
                    if ((!v85 || v85 == v32) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemAuthorAddresses") || CFEqual(a1, @"kMDItemAuthorEmailAddresses") || CFEqual(a1, @"kMDItemUserSharedSentSenderHandle") || CFEqual(a1, @"kMDItemUserSharedReceivedSenderHandle")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v86 = *(a3 + 22);
                      if (v86)
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 2;
                        v180 = 0uLL;
                        CFSetApplyFunction(v86, mePreprocessEmailAddress, valuePtr);
                      }
                    }

                    if ((*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemAuthors") || CFEqual(a1, @"kMDItemAuthorAddresses") || CFEqual(a1, @"kMDItemAuthorEmailAddresses") || CFEqual(a1, @"kMDItemUserSharedReceivedSender") || CFEqual(a1, @"kMDItemUserSharedReceivedSenderHandle") || CFEqual(a1, @"kMDItemUserSharedSentSender") || CFEqual(a1, @"kMDItemUserSharedSentSenderHandle") || CFEqual(a1, @"kMDItemOwnerName") || CFEqual(a1, @"kMDItemLastEditorName") || CFEqual(a1, @"kMDItemAlternateNames")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v87 = *(a3 + 27);
                      if (v87 && *(a3 + 21) < ~(-1 << CFArrayGetCount(v87)))
                      {
                        v180 = 0uLL;
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 9;
                        v180 = CFArrayGetCount(*(a3 + 27));
                        v88 = *(a3 + 27);
                        v206.length = CFArrayGetCount(v88);
                        v206.location = 0;
                        CFArrayApplyFunction(v88, v206, mePreprocessNameToken, valuePtr);
                      }
                    }

                    v89 = *(a3 + 9);
                    if ((!v89 || v89 == v32) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemRecipients") || CFEqual(a1, @"kMDItemPrimaryRecipients") || CFEqual(a1, @"kMDItemUserSharedSentRecipient") || CFEqual(a1, @"kMDItemUserSharedReceivedRecipient")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      if (*(a3 + 23))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 1;
                        v180 = 0uLL;
                        mePreprocessName(valuePtr);
                      }
                    }

                    v90 = *(a3 + 9);
                    if ((!v90 || v90 == v32) && (*(a3 + 42) & 0x20) == 0 && CFEqual(a1, @"kMDItemRecipientAddresses"))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      if (*(a3 + 23))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 1;
                        v180 = 0uLL;
                        mePreprocessNamePrefix(valuePtr);
                      }
                    }

                    v91 = *(a3 + 9);
                    if ((!v91 || v91 == v32) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemRecipientAddresses") || CFEqual(a1, @"kMDItemRecipientEmailAddresses") || CFEqual(a1, @"kMDItemUserSharedSentRecipientHandle") || CFEqual(a1, @"kMDItemUserSharedReceivedRecipientHandle")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v92 = *(a3 + 22);
                      if (v92)
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 1;
                        v180 = 0uLL;
                        CFSetApplyFunction(v92, mePreprocessEmailAddress, valuePtr);
                      }
                    }

                    if ((*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemRecipients") || CFEqual(a1, @"kMDItemPrimaryRecipients") || CFEqual(a1, @"kMDItemRecipientAddresses") || CFEqual(a1, @"kMDItemRecipientEmailAddresses") || CFEqual(a1, @"kMDItemPrimaryRecipientEmailAddresses") || CFEqual(a1, @"kMDItemAdditionalRecipientEmailAddresses") || CFEqual(a1, @"kMDItemUserSharedReceivedRecipient") || CFEqual(a1, @"kMDItemUserSharedReceivedRecipientHandle") || CFEqual(a1, @"kMDItemUserSharedSentRecipient") || CFEqual(a1, @"kMDItemUserSharedSentRecipientHandle") || CFEqual(a1, @"kMDItemOwnerName") || CFEqual(a1, @"kMDItemLastEditorName") || CFEqual(a1, @"kMDItemAlternateNames")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v93 = *(a3 + 27);
                      if (v93 && *(a3 + 20) < ~(-1 << CFArrayGetCount(v93)))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 10;
                        v180 = CFArrayGetCount(*(a3 + 27));
                        v94 = *(a3 + 27);
                        v207.length = CFArrayGetCount(v94);
                        v207.location = 0;
                        CFArrayApplyFunction(v94, v207, mePreprocessNameToken, valuePtr);
                      }
                    }

                    goto LABEL_327;
                  }
                }

                else
                {
                  v74 = v32;
                  if ((v72 & 1) == 0)
                  {
                    goto LABEL_201;
                  }
                }
              }

              v74 = *v69;
              goto LABEL_201;
            }

            if ((*(a3 + 42) & 0x40) == 0)
            {
              initContextMe(a3);
              v57 = *(a3 + 28);
            }

            if (v57)
            {
              *&valuePtr[0] = a3;
              *(&valuePtr[0] + 1) = a2;
              *&valuePtr[1] = v8;
              *(&valuePtr[1] + 1) = 262;
              v180 = 0uLL;
              v200.length = CFArrayGetCount(v57);
              v200.location = 0;
              CFArrayApplyFunction(v57, v200, mePreprocessNameTokenAnd, valuePtr);
              v58 = *(a3 + 15) == *MEMORY[0x1E695E4D0];
            }

            else
            {
              v58 = 0;
            }

            if (*(a3 + 25))
            {
              *&valuePtr[0] = a3;
              *(&valuePtr[0] + 1) = a2;
              *&valuePtr[1] = v8;
              *(&valuePtr[1] + 1) = 262;
              v180 = 0uLL;
              mePreprocessAlias(valuePtr);
              v59 = *(a3 + 15) == *MEMORY[0x1E695E4D0];
            }

            else
            {
              v59 = 0;
            }

            v60 = *(a3 + 29);
            if (v60)
            {
              *&valuePtr[0] = a3;
              *(&valuePtr[0] + 1) = a2;
              *&valuePtr[1] = v8;
              *(&valuePtr[1] + 1) = 262;
              v180 = 0uLL;
              v201.length = CFArrayGetCount(v60);
              v201.location = 0;
              CFArrayApplyFunction(v60, v201, mePreprocessNameTokenAnd, valuePtr);
              v61 = *(a3 + 15);
              v62 = *MEMORY[0x1E695E4D0];
              v63 = v61 != *MEMORY[0x1E695E4D0];
              LOBYTE(v60) = v58 || v59;
              if ((v58 || v59) && v61 == v62)
              {
                goto LABEL_174;
              }
            }

            else
            {
              v60 = (v58 | v59);
              v63 = 1;
            }

            v64 = *(a3 + 28);
            if (v64 && CFArrayGetCount(v64) || *(a3 + 25) != 0 || v63)
            {
              v65 = *(a3 + 29);
              if (v65)
              {
                v66 = (CFArrayGetCount(v65) == 0) & v60;
                v62 = v32;
                if ((v66 & 1) == 0)
                {
LABEL_174:
                  *(a3 + 15) = v62;
                  *(a3 + 16) = v62;
                  goto LABEL_175;
                }
              }

              else
              {
                v62 = v32;
                if ((v60 & 1) == 0)
                {
                  goto LABEL_174;
                }
              }
            }

            v62 = *MEMORY[0x1E695E4D0];
            goto LABEL_174;
          }

          if (CFStringCompare(a1, @"_kMDItemUserTags", 0) == kCFCompareEqualTo)
          {
            *(a3 + 51) = CFRetain(a1);
            v30 = 0;
            *(a3 + 52) = CFRetain(a2);
            goto LABEL_57;
          }

          if (CFStringCompare(a1, @"kMDItemUserTags", 0) == kCFCompareEqualTo && (*(a3 + 41) & 1) == 0 || CFStringCompare(a1, @"kMDItemAttributeChangeDate", 0) == kCFCompareEqualTo)
          {
            goto LABEL_54;
          }

          if (CFStringCompare(a1, @"_kMDItemPersonScore", 0) == kCFCompareEqualTo)
          {
            if (v8 != CFNumberGetTypeID())
            {
              goto LABEL_54;
            }

            CFNumberGetValue(a2, kCFNumberFloatType, a3 + 70);
            goto LABEL_419;
          }

          if (CFStringCompare(a1, @"kMDItemContainerIdentifier", 0) && CFStringCompare(a1, @"kMDItemEmailConversationID", 0))
          {
            if (CFStringCompare(a1, @"_kMDItemDomainIdentifier", 0) == kCFCompareEqualTo)
            {
              InsertPreProcessContextAddAttr(a3, a1, a2, 1);
              v30 = 0;
              *(a3 + 69) = a2;
              goto LABEL_57;
            }

            if ((a3[5] & 8) != 0 || CFStringCompare(a1, @"_kMDItemFinderExcluded", 0))
            {
              if (CFStringCompare(@"kMDItemPlayCount", a1, 0) == kCFCompareEqualTo && CFNumberGetTypeID() == v8)
              {
                InsertPreProcessContextAddAttr(a3, a1, a2, 1);
                v30 = 0;
                *(a3 + 66) = CFRetain(a2);
                goto LABEL_57;
              }

              if (CFStringCompare(a1, @"_kMDItemSupportFileType", 0) == kCFCompareEqualTo)
              {
                v30 = 1;
                goto LABEL_57;
              }

              if (CFStringCompare(a1, @"_kMDItemRequiresImport", 0))
              {
                if (CFStringHasPrefix(a1, @":MD:") || CFStringHasPrefix(a1, @":EA:") || CFStringHasPrefix(a1, @":PR:"))
                {
                  v114 = *MEMORY[0x1E695E480];
                  v214.length = CFStringGetLength(a1) - 4;
                  v214.location = 4;
                  v115 = CFStringCreateWithSubstring(v114, a1, v214);
                  if (CFStringHasPrefix(a1, @":EA:"))
                  {
                    v30 = CFStringCompare(v115, @"_kMDItemSupportFileType", 0) == kCFCompareEqualTo;
                  }

                  else
                  {
                    HasPrefix = CFStringHasPrefix(a1, @":PR:");
                    v30 = CFStringCompare(v115, @"_kMDItemSupportFileType", 0) == kCFCompareEqualTo;
                    if (!HasPrefix)
                    {
                      goto LABEL_462;
                    }
                  }

                  if (CFStringHasPrefix(v115, @"_kMDItemTimeMachinePath"))
                  {
                    v118 = *__error();
                    v119 = _SILogForLogForCategory(4);
                    v120 = 2 * (dword_1EBF46ADC < 4);
                    if (!os_log_type_enabled(v119, v120))
                    {
LABEL_440:
                      *__error() = v118;
LABEL_441:
                      CFRelease(v115);
                      goto LABEL_57;
                    }

                    LODWORD(valuePtr[0]) = 138412546;
                    *(valuePtr + 4) = v115;
                    WORD6(valuePtr[0]) = 2112;
                    *(valuePtr + 14) = a2;
                    v121 = "Skipping :EA:%@ %@";
                    goto LABEL_438;
                  }

                  v125 = *(a3 + 64);
                  if (v125 && CFDictionaryContainsKey(v125, v115) || CFStringCompare(v115, @"kMDItemUserTags", 0) == kCFCompareEqualTo)
                  {
                    goto LABEL_441;
                  }

                  if (CFStringCompare(@"kMDItemLastUsedDate", v115, 0) == kCFCompareEqualTo && CFDateGetTypeID() == v8)
                  {
                    *(a3 + 1) = CFRetain(a2);
                    v126 = *(a3 + 10);
                    v127 = ~(16 * v126) & 0x10;
                    if ((v126 & 2) != 0)
                    {
                      v127 = 0;
                    }

                    *(a3 + 10) = v127 | v126 & 0xFFFFFFEF;
                    if (dword_1EBF46ADC >= 5)
                    {
                      v175 = *__error();
                      v176 = _SILogForLogForCategory(4);
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
                      {
                        v177 = *(a3 + 1);
                        LODWORD(valuePtr[0]) = 138412290;
                        *(valuePtr + 4) = v177;
                        _os_log_impl(&dword_1C278D000, v176, OS_LOG_TYPE_DEFAULT, "New last used date: %@", valuePtr, 0xCu);
                      }

                      *__error() = v175;
                    }

                    v128 = *(a3 + 68);
                    if (v128 < 4 || v128 == 4 && CFDateCompare(*(a3 + 67), a2, 0) < 0)
                    {
                      v129 = *(a3 + 67);
                      if (v129)
                      {
                        CFRelease(v129);
                      }

                      a3[67] = 0.0;
                      *(a3 + 67) = CFRetain(a2);
                      *(a3 + 68) = 4;
                    }

                    goto LABEL_441;
                  }

                  if (CFStringCompare(v115, @"kMDItemIsUploading", 0) == kCFCompareEqualTo || CFStringCompare(v115, @":MD:kMDItemIsUploading", 0) == kCFCompareEqualTo || CFStringCompare(v115, @"kMDItemIsUploaded", 0) == kCFCompareEqualTo || CFStringCompare(v115, @":MD:kMDItemIsUploaded", 0) == kCFCompareEqualTo)
                  {
                    v136 = @"kMDItemIsUploading";
                    v137 = a3;
                    goto LABEL_468;
                  }

LABEL_462:
                  if (CFStringCompare(v115, @"_kMDItemUserTags", 0) == kCFCompareEqualTo)
                  {
                    if (!*(a3 + 51))
                    {
                      *(a3 + 51) = CFRetain(a1);
                      *(a3 + 52) = CFRetain(a2);
                    }

                    goto LABEL_441;
                  }

                  if (CFStringHasPrefix(v115, @"_kMDItemTimeMachinePath"))
                  {
                    if (!*(a3 + 39))
                    {
                      if (v8 == CFStringGetTypeID())
                      {
                        v144 = (a3[5] & 0x80) != 0 ? @"_kMDItemTimeMachinePath" : v115;
                        *(a3 + 40) = CFRetain(v144);
                        *(a3 + 39) = CFRetain(a2);
                        if (dword_1EBF46ADC >= 5)
                        {
                          v148 = *__error();
                          v149 = _SILogForLogForCategory(4);
                          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                          {
                            v150 = "Marker";
                            v151 = *(a3 + 40);
                            if ((a3[5] & 0x80) == 0)
                            {
                              v150 = "";
                            }

                            LODWORD(valuePtr[0]) = 136315650;
                            *(valuePtr + 4) = v150;
                            WORD6(valuePtr[0]) = 2112;
                            *(valuePtr + 14) = v151;
                            WORD3(valuePtr[1]) = 2112;
                            *(&valuePtr[1] + 1) = a2;
                            _os_log_impl(&dword_1C278D000, v149, OS_LOG_TYPE_DEFAULT, "%s%@ = %@", valuePtr, 0x20u);
                          }

                          *__error() = v148;
                        }
                      }

                      goto LABEL_441;
                    }

                    v118 = *__error();
                    v133 = _SILogForLogForCategory(4);
                    v134 = 2 * (dword_1EBF46ADC < 4);
                    if (!os_log_type_enabled(v133, v134))
                    {
                      goto LABEL_440;
                    }

                    v135 = *(a3 + 39);
                    LODWORD(valuePtr[0]) = 138412802;
                    *(valuePtr + 4) = v115;
                    WORD6(valuePtr[0]) = 2112;
                    *(valuePtr + 14) = a2;
                    WORD3(valuePtr[1]) = 2112;
                    *(&valuePtr[1] + 1) = v135;
                    v121 = "Skipping :MD:%@ %@ already had %@";
                    v122 = v133;
                    v123 = v134;
                    v124 = 32;
                    goto LABEL_439;
                  }

                  if ((a3[5] & 0x80) == 0)
                  {
LABEL_477:
                    if (CFStringHasPrefix(a1, @":MD:"))
                    {
                      v141 = @"_kMDItemBackupMoveMarker";
                      if (CFStringCompare(v115, @"_kMDItemBackupMoveMarker", 0))
                      {
                        v141 = @"_kMDItemBackupNameSpace";
                        if (CFStringCompare(v115, @"_kMDItemBackupNameSpace", 0))
                        {
                          v141 = @"_kMDItemSupportFileType";
                          if (CFStringCompare(v115, @"_kMDItemSupportFileType", 0))
                          {
                            v141 = @"_kMDItemTimeMachineMarkerNeedsFixup";
                            if (CFStringCompare(v115, @"_kMDItemTimeMachineMarkerNeedsFixup", 0))
                            {
                              v141 = @"kMDItemIsUploading";
                              if (CFStringCompare(v115, @"kMDItemIsUploading", 0))
                              {
                                v141 = @"kMDItemIsUploaded";
                                if (CFStringCompare(v115, @"kMDItemIsUploaded", 0))
                                {
                                  if (CFStringCompare(v115, @"kMDItemApproximateModTime", 0) == kCFCompareEqualTo)
                                  {
                                    *&valuePtr[0] = 0;
                                    if (CFNumberGetValue(a2, kCFNumberLongType, valuePtr) && *&valuePtr[0])
                                    {
                                      a3[65] = *valuePtr;
                                    }

                                    goto LABEL_441;
                                  }

                                  if (CFStringCompare(v115, @"kMDItemExpirationDate", 0) == kCFCompareEqualTo)
                                  {
                                    if (v8 == CFDateGetTypeID())
                                    {
                                      *(a3 + 2) = CFRetain(a2);
                                    }

                                    goto LABEL_441;
                                  }

                                  v142 = CFStringCompare(v115, @"kMDItemSeedLastUsedDate", 0);
                                  v143 = *(a3 + 10);
                                  if (v142 == kCFCompareEqualTo)
                                  {
                                    v174 = v143 | 0x800;
                                    goto LABEL_594;
                                  }

                                  if ((v143 & 0x100) == 0 || CFStringCompare(v115, @"kMDItemThumbnailData", 0))
                                  {
                                    if (CFStringCompare(v115, @"kMDPreviewImageData", 0) == kCFCompareEqualTo)
                                    {
                                      if (v8 == CFDataGetTypeID())
                                      {
                                        *(a3 + 46) = a2;
                                      }

                                      goto LABEL_441;
                                    }

                                    if (CFStringCompare(v115, @"kMDItemWorkerHandled", 0))
                                    {
                                      if (CFStringCompare(v115, @"kMDItemPath", 0) == kCFCompareEqualTo || CFStringCompare(v115, @"DeviceId", 0) == kCFCompareEqualTo)
                                      {
                                        goto LABEL_441;
                                      }

                                      if (CFStringCompare(v115, @"_kMDItemOIDParent", 0) == kCFCompareEqualTo)
                                      {
                                        if (v8 == CFNumberGetTypeID())
                                        {
                                          CFNumberGetValue(a2, kCFNumberSInt64Type, a3 + 76);
                                        }

                                        goto LABEL_441;
                                      }

                                      v118 = *__error();
                                      v119 = _SILogForLogForCategory(4);
                                      v120 = 2 * (dword_1EBF46ADC < 4);
                                      if (!os_log_type_enabled(v119, v120))
                                      {
                                        goto LABEL_440;
                                      }

                                      LODWORD(valuePtr[0]) = 138412546;
                                      *(valuePtr + 4) = v115;
                                      WORD6(valuePtr[0]) = 2112;
                                      *(valuePtr + 14) = a2;
                                      v121 = "Skipping :MD:%@ %@";
LABEL_438:
                                      v122 = v119;
                                      v123 = v120;
                                      v124 = 22;
LABEL_439:
                                      _os_log_impl(&dword_1C278D000, v122, v123, v121, valuePtr, v124);
                                      goto LABEL_440;
                                    }

                                    v174 = a3[5] & 0xFFFFFFBF | ((CFBooleanGetValue(a2) & 1) << 6);
LABEL_594:
                                    *(a3 + 10) = v174;
                                    goto LABEL_441;
                                  }

                                  if (v8 != CFDataGetTypeID())
                                  {
                                    goto LABEL_441;
                                  }

                                  *(a3 + 46) = a2;
                                  v138 = *MEMORY[0x1E695E4D0];
                                  v136 = @"_kMDItemThumbnailDataExists";
                                  v137 = a3;
                                  v139 = 0;
LABEL_469:
                                  InsertPreProcessContextAddAttr(v137, v136, v138, v139);
                                  goto LABEL_441;
                                }
                              }
                            }
                          }
                        }
                      }

                      v137 = a3;
                      v136 = v141;
                    }

                    else
                    {
                      if (CFStringCompare(a1, @"kMDItemAttributeChangeDate", 0) == kCFCompareEqualTo)
                      {
                        goto LABEL_441;
                      }

                      v137 = a3;
                      v136 = a1;
                    }

LABEL_468:
                    v138 = a2;
                    v139 = 1;
                    goto LABEL_469;
                  }

                  if (CFStringHasPrefix(v115, @"_kTimeMachineNewestSnapshot"))
                  {
                    Mutable = *(a3 + 6);
                    if (!Mutable)
                    {
                      Mutable = CFArrayCreateMutable(v114, 0, MEMORY[0x1E695E9C0]);
                      *(a3 + 6) = Mutable;
                    }
                  }

                  else
                  {
                    if ((a3[5] & 0x80) == 0 || !CFStringHasPrefix(v115, @"_kTimeMachineOldestSnapshot"))
                    {
                      goto LABEL_477;
                    }

                    Mutable = *(a3 + 7);
                    if (!Mutable)
                    {
                      Mutable = CFArrayCreateMutable(v114, 0, MEMORY[0x1E695E9C0]);
                      *(a3 + 7) = Mutable;
                    }
                  }

                  CFArrayAppendValue(Mutable, a2);
                  goto LABEL_441;
                }

                if ((*(a3 + 42) & 1) != 0 && CFStringCompare(a1, @"kMDItemContentURL", 0) == kCFCompareEqualTo)
                {
                  InsertPreProcessContextAddAttr(a3, @"_kMDItemHasEmailContentURL", *MEMORY[0x1E695E4D0], 1);
                  goto LABEL_419;
                }

                if (CFEqual(@"kMDItemEmailAddresses", a1))
                {
                  v140 = @"_kMDItemEmailAddressesLocalParts";
LABEL_504:
                  generateLocalPartsWithNewFieldName(a3, v140, a2);
                  goto LABEL_419;
                }

                if (CFEqual(@"kMDItemAuthorEmailAddresses", a1))
                {
                  v140 = @"_kMDItemAuthorEmailAddressesLocalParts";
                  goto LABEL_504;
                }

                v146 = *(a3 + 10);
                if ((v146 & 0x1000) == 0)
                {
                  goto LABEL_520;
                }

                if (CFStringCompare(a1, @"kMDItemContentTypeTree", 0))
                {
                  v146 = *(a3 + 10);
LABEL_520:
                  if ((v146 & 0x400) == 0 || CFStringGetTypeID() != v8)
                  {
                    goto LABEL_419;
                  }

                  if (preProcess_onceToken != -1)
                  {
                    dispatch_once(&preProcess_onceToken, &__block_literal_global_1823);
                  }

                  if (!CFSetContainsValue(preProcess_localizeFieldNames, a1))
                  {
                    goto LABEL_419;
                  }

                  CFStringGetLength(a2);
                  theArray = _NLStringTokenizerCopyPossibleStringLanguages();
                  v184 = 0u;
                  v185 = 0u;
                  v182 = 0u;
                  v183 = 0u;
                  v180 = 0u;
                  v181 = 0u;
                  memset(valuePtr, 0, sizeof(valuePtr));
                  if (a2)
                  {
                    Length = CFStringGetLength(a2);
                  }

                  else
                  {
                    Length = 0;
                  }

                  theString = a2;
                  v189 = 0;
                  v190 = Length;
                  CharactersPtr = CFStringGetCharactersPtr(a2);
                  CStringPtr = 0;
                  v187 = CharactersPtr;
                  if (!CharactersPtr)
                  {
                    CStringPtr = CFStringGetCStringPtr(a2, 0x600u);
                  }

                  v191 = 0;
                  v192 = 0;
                  v188 = CStringPtr;
                  if (Length < 1)
                  {
                    v158 = 1;
LABEL_574:
                    if (theArray)
                    {
                      v170 = CFArrayGetCount(theArray);
                    }

                    else
                    {
                      v170 = 0;
                    }

                    if (!v158 || v170 != 0)
                    {
                      v171 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (v170 >= 1)
                      {
                        for (j = 0; j != v170; ++j)
                        {
                          v173 = CFArrayGetValueAtIndex(theArray, j);
                          CFDictionaryAddValue(v171, v173, a2);
                        }
                      }

                      if (!v158)
                      {
                        CFDictionaryAddValue(v171, @"en", a2);
                        CFDictionaryAddValue(v171, @"th", a2);
                      }

                      CFDictionaryAddValue(v171, &stru_1F4284FD0, a2);
                      InsertPreProcessContextAddLocAttr(a3, a1, v171, 0);
                    }

                    if (theArray)
                    {
                      CFRelease(theArray);
                    }

                    if (!v158 || v170 != 0)
                    {
                      goto LABEL_54;
                    }

                    goto LABEL_419;
                  }

                  v156 = 0;
                  v157 = 0;
                  v158 = 0;
                  v159 = 0;
                  v160 = 64;
                  while (1)
                  {
                    v161 = v159 >= 4 ? 4 : v159;
                    v162 = v190;
                    if (v190 > v159)
                    {
                      break;
                    }

LABEL_561:
                    v158 = ++v159 >= Length;
                    --v156;
                    ++v160;
                    if (Length == v159)
                    {
                      goto LABEL_574;
                    }
                  }

                  if (v187)
                  {
                    v163 = &v187[v189];
                  }

                  else
                  {
                    if (v188)
                    {
                      v164 = v188[v189 + v159];
LABEL_560:
                      if ((v164 & 0xFF80) == 0xE00)
                      {
                        goto LABEL_574;
                      }

                      goto LABEL_561;
                    }

                    if (v192 <= v159 || v157 > v159)
                    {
                      v166 = v161 + v156;
                      v167 = v160 - v161;
                      v168 = v159 - v161;
                      v169 = v168 + 64;
                      if (v168 + 64 >= v190)
                      {
                        v169 = v190;
                      }

                      v191 = v168;
                      v192 = v169;
                      if (v190 >= v167)
                      {
                        v162 = v167;
                      }

                      v212.location = v168 + v189;
                      v212.length = v162 + v166;
                      CFStringGetCharacters(theString, v212, valuePtr);
                      v157 = v191;
                    }

                    v163 = valuePtr - v157;
                  }

                  v164 = v163[v159];
                  goto LABEL_560;
                }

                if (v8 != CFArrayGetTypeID())
                {
                  goto LABEL_419;
                }

                v152 = *(a3 + 10);
                if ((v152 & 0x100000) == 0)
                {
                  v208.length = CFArrayGetCount(a2);
                  v208.location = 0;
                  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a2, v208, @"public.text");
                  v152 = *(a3 + 10);
                  if (FirstIndexOfValue != -1)
                  {
                    v152 &= ~0x1000u;
                    *(a3 + 10) = v152;
                  }
                }

                if ((v152 & 0x100100) != 0x100)
                {
                  goto LABEL_419;
                }

                v209.length = CFArrayGetCount(a2);
                v209.location = 0;
                if (CFArrayGetFirstIndexOfValue(a2, v209, @"public.image") != -1)
                {
                  goto LABEL_419;
                }

                v210.length = CFArrayGetCount(a2);
                v210.location = 0;
                if (CFArrayGetFirstIndexOfValue(a2, v210, @"com.adobe.pdf") != -1)
                {
                  goto LABEL_419;
                }

                v211.length = CFArrayGetCount(a2);
                v211.location = 0;
                if (CFArrayGetFirstIndexOfValue(a2, v211, @"com.apple.localized-pdf-bundle") != -1)
                {
                  goto LABEL_419;
                }

                v116 = a3[5] & 0xFFFFEFFF;
              }

              else
              {
                v116 = *(a3 + 10) | 0x8000;
              }
            }

            else
            {
              if (v8 != CFBooleanGetTypeID())
              {
                goto LABEL_54;
              }

              v116 = a3[5] & 0xFFFFFFF7 | (8 * (CFBooleanGetValue(a2) & 1));
            }

            *(a3 + 10) = v116;
          }

          else
          {
            *(a3 + 141) = CFHash(a2) % 0xFFFFFFFE + 1;
          }

LABEL_419:
          v108 = a3;
          v107 = a1;
          v106 = a2;
          v109 = 1;
          goto LABEL_420;
        }

        v104 = CFRetain(a2);
        *(a3 + 60) = v104;
        InsertPreProcessContextAddAttr(a3, a1, v104, 1);
        v102 = @"_kMDItemHiddenAdditionalRecipientEmailAddressesLocalParts";
      }

      else
      {
        v103 = CFRetain(a2);
        *(a3 + 59) = v103;
        InsertPreProcessContextAddAttr(a3, a1, v103, 1);
        v102 = @"_kMDItemAdditionalRecipientEmailAddressesLocalParts";
      }
    }

    else
    {
      v101 = CFRetain(a2);
      *(a3 + 58) = v101;
      InsertPreProcessContextAddAttr(a3, a1, v101, 1);
      v102 = @"_kMDItemPrimaryRecipientEmailAddressesLocalParts";
    }

    generateLocalPartsWithNewFieldName(a3, v102, a2);
    goto LABEL_54;
  }

  v9 = *MEMORY[0x1E69E9840];
  v10 = @"kMDItemContentCreationDate";
  v11 = @"kMDItemContentCreationDate_Ranking";
  v12 = a3;
  v13 = a2;
  v14 = 2;
LABEL_18:

  _InsertPreProcessContextAddDateAttr(v12, v10, v13, v11, v14);
}

_DWORD *db_copy_obj(unsigned int *a1, uint64_t a2)
{
  result = malloc_type_malloc(a1[3] + a2, 0x1000040EED21634uLL);
  if (result)
  {
    v5 = result;
    memcpy(result, a1, a1[3]);
    result = v5;
    v5[2] = a1[3] + a2;
    if (a2)
    {
      v5[10] &= ~0x100u;
    }
  }

  return result;
}

void postPreprocess(uint64_t a1, CFTypeRef cf1)
{
  if (postPreprocess_onceToken != -1)
  {
    dispatch_once(&postPreprocess_onceToken, &__block_literal_global_1855);
  }

  if ((*(a1 + 40) & 0x6100) == 0x4000)
  {
    InsertPreProcessContextAddAttr(a1, @"_kMDItemSupportFileType", postPreprocess_arrSystemFile, 1);
  }

  v4 = *(a1 + 456);
  v5 = *(a1 + 464);
  if (v4)
  {
    if (!v5)
    {
      InsertPreProcessContextAddAttr(a1, @"kMDItemPrimaryRecipientEmailAddresses", v4, 1);
      generateLocalPartsWithNewFieldName(a1, @"_kMDItemPrimaryRecipientEmailAddressesLocalParts", *(a1 + 456));
    }
  }

  else if (v5 || *(a1 + 472) || *(a1 + 480))
  {
    valuePtr = 0;
    p_valuePtr = &valuePtr;
    v42 = 0x2000000000;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 0x40000000;
    v37 = __postPreprocess_block_invoke_2;
    v38 = &unk_1E81923A8;
    v39 = &valuePtr;
    v6 = *(a1 + 464);
    if (v6)
    {
      __postPreprocess_block_invoke_2(v36, v6);
    }

    if (*(a1 + 472))
    {
      (v37)(v36);
    }

    if (*(a1 + 480))
    {
      (v37)(v36);
    }

    if (CFArrayGetCount(p_valuePtr[3]))
    {
      InsertPreProcessContextAddAttr(a1, @"kMDItemRecipientEmailAddresses", p_valuePtr[3], 1);
      generateLocalPartsWithNewFieldName(a1, @"_kMDItemRecipientEmailAddressesLocalParts", p_valuePtr[3]);
    }

    CFRelease(p_valuePtr[3]);
    _Block_object_dispose(&valuePtr, 8);
  }

  if ((*(a1 + 41) & 1) != 0 && !*(a1 + 564) && cf1 && *(a1 + 552) && CFEqual(cf1, @"com.apple.MobileSMS"))
  {
    *(a1 + 564) = CFHash(*(a1 + 552)) % 0xFFFFFFFE + 1;
  }

  v7 = *(a1 + 328);
  v8 = *MEMORY[0x1E695E738];
  v9 = MEMORY[0x1E695E4D0];
  if (v7 == *MEMORY[0x1E695E738])
  {
    InsertPreProcessContextAddAttr(a1, @"_kMDItemTextContentIndexExists", *MEMORY[0x1E695E738], 0);
    InsertPreProcessContextAddAttr(a1, @"_kMDItemTextContentLength", v8, 0);
    InsertPreProcessContextAddAttr(a1, @"_kMDItemSnippet", v8, 0);
    v11 = *v9;
  }

  else
  {
    if (v7)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(*(a1 + 328)))
      {
        valuePtr = CFStringGetLength(*(a1 + 328));
        v11 = *v9;
        if (valuePtr < 1)
        {
          v12 = *MEMORY[0x1E695E4C0];
          v13 = @"_kMDItemTextContentIndexExists";
        }

        else
        {
          v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
          v13 = @"_kMDItemTextContentLength";
        }

        InsertPreProcessContextAddAttr(a1, v13, v12, 0);
        if (v11)
        {
          goto LABEL_39;
        }
      }
    }

    if (*(a1 + 336) || *(a1 + 344) || *(a1 + 352))
    {
      v11 = *v9;
    }

    else
    {
      v11 = *v9;
      if (!*(a1 + 360))
      {
        goto LABEL_40;
      }
    }

    if (v11)
    {
LABEL_39:
      InsertPreProcessContextAddAttr(a1, @"_kMDItemTextContentIndexExists", v11, 0);
      *(a1 + 40) |= 0x20u;
    }
  }

LABEL_40:
  v14 = *(a1 + 88);
  if (v14 && v14 == v11)
  {
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMe", v14, 0);
    v15 = *(a1 + 96);
    if (!v15 || v15 != v11)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v16 = *(a1 + 240);
  if (v16)
  {
    v17 = CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeTextContentMatch") ? CFDictionaryGetValue(v16, @"_kMDItemDerivedIsMeTextContentMatch") : 0;
    if (CFDictionaryContainsKey(v16, @"_kMDItemDerivedIsMe"))
    {
      Value = CFDictionaryGetValue(v16, @"_kMDItemDerivedIsMe");
      if (Value == v11)
      {
        v19 = *MEMORY[0x1E695E4C0];
        if (!v17 || (Value = v11, v17 == v19))
        {
          InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMe", v19, 0);
          Value = v11;
        }
      }
    }

    else
    {
      Value = 0;
    }

    if (v17 && v17 == v11)
    {
      if ((*(a1 + 40) & 0x20) != 0)
      {
        v15 = *MEMORY[0x1E695E4C0];
LABEL_62:
        v20 = @"_kMDItemDerivedIsMeTextContentMatch";
        v21 = a1;
        goto LABEL_63;
      }

      if (!Value || Value == *MEMORY[0x1E695E4C0])
      {
        v20 = @"_kMDItemDerivedIsMe";
        v21 = a1;
        v15 = v11;
LABEL_63:
        InsertPreProcessContextAddAttr(v21, v20, v15, 0);
      }
    }
  }

LABEL_64:
  v22 = *(a1 + 104);
  if (v22 && v22 == v11)
  {
    goto LABEL_66;
  }

  v23 = *(a1 + 240);
  if (v23 && CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeRankingSpan") && CFDictionaryGetValue(v23, @"_kMDItemDerivedIsMeRankingSpan") == v11)
  {
    v22 = *MEMORY[0x1E695E4C0];
LABEL_66:
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingSpan", v22, 0);
  }

  v24 = *(a1 + 112);
  if (v24 && v24 == v11)
  {
    goto LABEL_72;
  }

  v25 = *(a1 + 240);
  if (v25 && CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeRankingToken") && CFDictionaryGetValue(v25, @"_kMDItemDerivedIsMeRankingToken") == v11)
  {
    v24 = *MEMORY[0x1E695E4C0];
LABEL_72:
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingToken", v24, 0);
  }

  v26 = *(a1 + 120);
  if (v26 && v26 == v11)
  {
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingOCR", v26, 0);
    v27 = *(a1 + 128);
    if (!v27 || v27 != v11)
    {
      goto LABEL_100;
    }

    goto LABEL_98;
  }

  v28 = *(a1 + 240);
  if (v28)
  {
    v29 = CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeRankingOCRTextContentMatch") ? CFDictionaryGetValue(v28, @"_kMDItemDerivedIsMeRankingOCRTextContentMatch") : 0;
    if (CFDictionaryContainsKey(v28, @"_kMDItemDerivedIsMeRankingOCR"))
    {
      v30 = CFDictionaryGetValue(v28, @"_kMDItemDerivedIsMeRankingOCR");
      if (v30 == v11)
      {
        v31 = *MEMORY[0x1E695E4C0];
        if (!v29 || (v30 = v11, v29 == v31))
        {
          InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingOCR", v31, 0);
          v30 = v11;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    if (v29 && v29 == v11)
    {
      if ((*(a1 + 40) & 0x20) != 0)
      {
        v27 = *MEMORY[0x1E695E4C0];
LABEL_98:
        v32 = @"_kMDItemDerivedIsMeRankingOCRTextContentMatch";
        v33 = a1;
        goto LABEL_99;
      }

      if (!v30 || v30 == *MEMORY[0x1E695E4C0])
      {
        v32 = @"_kMDItemDerivedIsMeRankingOCR";
        v33 = a1;
        v27 = v11;
LABEL_99:
        InsertPreProcessContextAddAttr(v33, v32, v27, 0);
      }
    }
  }

LABEL_100:
  v34 = *(a1 + 136);
  if (v34 && v34 == v11)
  {
    goto LABEL_102;
  }

  v35 = *(a1 + 240);
  if (v35 && CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeRankingPreExtraction") && CFDictionaryGetValue(v35, @"_kMDItemDerivedIsMeRankingPreExtraction") == v11)
  {
    v34 = *MEMORY[0x1E695E4C0];
LABEL_102:
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingPreExtraction", v34, 0);
  }
}

void handleUserTags(uint64_t a1)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    HasPrefix = CFStringHasPrefix(v2, @":EA");
    v4 = *(a1 + 416);
    if (v4)
    {
      v5 = CFGetTypeID(*(a1 + 416));
    }

    else
    {
      v5 = 0;
    }

    if (v5 == CFStringGetTypeID())
    {
      Mutable = CopyUserTag(v4);
    }

    else if (v5 == CFArrayGetTypeID())
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          v11 = CopyUserTag(ValueAtIndex);
          CFArrayAppendValue(Mutable, v11);
          CFRelease(v11);
        }
      }
    }

    else
    {
      Mutable = *MEMORY[0x1E695E738];
    }

    InsertPreProcessContextAddAttr(a1, @"kMDItemUserTags", Mutable, 0);
    v12 = *(a1 + 416);
    if (HasPrefix)
    {
      v13 = @":EA:_kMDItemUserTags";
    }

    else
    {
      v13 = @"_kMDItemUserTags";
    }

    InsertPreProcessContextAddAttr(a1, v13, v12, 1);
  }
}

void si_enqueue_barrier_for_job(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[5] = a1;
    block[6] = a2;
    block[2] = __si_enqueue_barrier_for_job_block_invoke;
    block[3] = &__block_descriptor_tmp_4_1429;
    block[4] = v6;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v7, block);
  }

  else
  {

    a2(a3, 1);
  }
}

void delayed_op_prop0(void *a1, int a2)
{
  if (a2)
  {
    (a1[2])(*a1);

    free(a1);
  }

  else
  {
    v3 = *(a1[1] + 1160);

    si_enqueue_barrier_for_job(v3, delayed_op_prop1, a1, 0);
  }
}

void __si_enqueue_barrier_for_job_block_invoke(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  if (!v1)
  {
    v19 = __si_assert_copy_extra_661(-1);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 931, "queue", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      v22 = 2989;
    }

    else
    {
      v22 = 3072;
    }

    *v22 = -559038737;
    abort();
  }

  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = *v1;
  v7 = v2 == 0;
  if (v5)
  {
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 132), 1u, memory_order_relaxed);
    }

    v29 = v3;
    atomic_fetch_add(v5, 1u);
    goto LABEL_6;
  }

  if (v2 && (!v6 || !*(v6 + 104) && *(v6 + 64) != 1))
  {
    v29 = a1[6];
    v7 = 0;
    v5 = 0;
    atomic_fetch_add_explicit((v2 + 132), 1u, memory_order_relaxed);
LABEL_6:
    v8 = v1[2];
    *(v1 + 7) = vaddq_s64(*(v1 + 7), vdupq_n_s64(1uLL));
    v9 = malloc_type_malloc(0x48uLL, 0x10A0040047F2C8DuLL);
    v9[3] = v29;
    v9[4] = v4;
    v9[5] = v5;
    v9[6] = 0;
    v9[7] = v4 ^ v29 ^ v5;
    if (v7)
    {
      v23 = __si_assert_copy_extra_661(-1);
      v24 = v23;
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 876, "root", v25);
      free(v24);
      if (__valid_fs(-1))
      {
        v26 = 2989;
      }

      else
      {
        v26 = 3072;
      }

      *v26 = -559038737;
      abort();
    }

    *v9 = v2;
    v9[1] = v6;
    v9[2] = v1;
    v10 = *(v2 + 136) == 1 && (v1[7] & 0xF) == 0;
    *(v9 + 64) = v10;
    v13 = qos_class_self();
    v14 = v13;
    if (*(v6 + 192) && *(v6 + 216) < v13)
    {
      pthread_mutex_lock(*(v6 + 8));
      v15 = *(v6 + 192);
      if (v15)
      {
        if (*(v6 + 216) < v14)
        {
          v16 = *(v6 + 208);
          *(v6 + 208) = pthread_override_qos_class_start_np(v15, v14, 0);
          *(v6 + 216) = v14;
          if (v16)
          {
            pthread_override_qos_class_end_np(v16);
          }
        }
      }

      pthread_mutex_unlock(*(v6 + 8));
    }

    if (dword_1EBF46B00 >= 5)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block) = 67109376;
        HIDWORD(block) = v14;
        LOWORD(v31) = 2048;
        *(&v31 + 2) = v9;
        _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "QOS enqueue_work: %d %p", &block, 0x12u);
      }

      *__error() = v27;
    }

    block = MEMORY[0x1E69E9820];
    *&v31 = 0x40000000;
    *(&v31 + 1) = __enqueue_barrier_block_invoke;
    v32 = &__block_descriptor_tmp_60;
    v33 = v9;
    v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v14, 0, &block);
    dispatch_barrier_async(v8, v17);
    _Block_release(v17);
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = *MEMORY[0x1E69E9840];
  v12 = a1[7];

  v3(v12, 1);
}

void delayed_op_prop1(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 2)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op_prop2;
    }

    v4 = *(*(a1 + 8) + 1048);

    si_enqueue_barrier_with_qos(v4, 5, v3, a1);
  }
}

void qp_string_id_cache_free(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
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

    v6 = a1[7];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[8];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[10];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a1[11];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[13];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = a1[14];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = a1[16];
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = a1[17];
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = a1[19];
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = a1[20];
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = a1[22];
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = a1[23];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = a1[25];
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = a1[26];
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = a1[28];
    if (v20)
    {
      CFRelease(v20);
    }

    v21 = a1[29];
    if (v21)
    {
      CFRelease(v21);
    }

    v22 = a1[31];
    if (v22)
    {
      CFRelease(v22);
    }

    v23 = a1[32];
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = a1[34];
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = a1[35];
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = a1[37];
    if (v26)
    {
      CFRelease(v26);
    }

    v27 = a1[38];
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = a1[40];
    if (v28)
    {
      CFRelease(v28);
    }

    v29 = a1[41];
    if (v29)
    {
      CFRelease(v29);
    }

    v30 = a1[43];
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = a1[44];
    if (v31)
    {
      CFRelease(v31);
    }

    v32 = a1[46];
    if (v32)
    {
      CFRelease(v32);
    }

    v33 = a1[47];
    if (v33)
    {
      CFRelease(v33);
    }

    free(a1);
  }
}

void delayed_op_final(void (**a1)(void))
{
  a1[2](*a1);

  free(a1);
}

uint64_t __si_peek_queue_for_tags_block_invoke(uint64_t result)
{
  v1 = result;
  v31 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v1 + 40);
      v17 = *(v1 + 48);
      label = dispatch_queue_get_label(*(v17 + 16));
      v19 = *(v17 + 72);
      *buf = 134218498;
      v26 = v16;
      v27 = 2080;
      v28 = label;
      v29 = 2048;
      v30 = v19;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Peek for  %p on queue %s with tagbag %p", buf, 0x20u);
    }

    result = __error();
    *result = v14;
  }

  if (*(*(v1 + 48) + 72))
  {
    result = CFArrayGetCount(*(v1 + 40));
    if ((*(*(*(v1 + 32) + 8) + 24) & 1) == 0)
    {
      v2 = result;
      if (result >= 1)
      {
        v3 = 1;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 40), v3 - 1);
          result = CFDictionaryGetValue(*(*(v1 + 48) + 72), ValueAtIndex);
          if (!result)
          {
            break;
          }

          result = MEMORY[0x1C691E5D0]();
          if (result)
          {
            *(*(*(v1 + 32) + 8) + 24) = 1;
            if (dword_1EBF46AD0 < 5)
            {
              goto LABEL_15;
            }

            v24 = *__error();
            log = _SILogForLogForCategory(1);
            if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_22;
            }

            v5 = dispatch_queue_get_label(*(*(v1 + 48) + 16));
            *buf = 134218242;
            v26 = ValueAtIndex;
            v27 = 2080;
            v28 = v5;
            v6 = log;
            v7 = "Found oid bag for %p on queue %s";
LABEL_20:
            v10 = 22;
LABEL_21:
            _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, v10);
            goto LABEL_22;
          }

          if (dword_1EBF46AD0 < 5)
          {
            goto LABEL_15;
          }

          v24 = *__error();
          logb = _SILogForLogForCategory(1);
          if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
          {
            v12 = dispatch_queue_get_label(*(*(v1 + 48) + 16));
            *buf = 134218242;
            v26 = ValueAtIndex;
            v27 = 2080;
            v28 = v12;
            v6 = logb;
            v7 = "Empty oid bag for %p on queue %s";
            goto LABEL_20;
          }

LABEL_22:
          result = __error();
          *result = v24;
LABEL_15:
          if ((*(*(*(v1 + 32) + 8) + 24) & 1) == 0 && v3++ < v2)
          {
            continue;
          }

          goto LABEL_23;
        }

        if (dword_1EBF46AD0 < 5)
        {
          goto LABEL_15;
        }

        v24 = *__error();
        loga = _SILogForLogForCategory(1);
        if (!os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v20 = *(v1 + 48);
        v8 = dispatch_queue_get_label(*(v20 + 16));
        v6 = loga;
        v9 = *(v20 + 72);
        *buf = 134218498;
        v26 = ValueAtIndex;
        v27 = 2080;
        v28 = v8;
        v29 = 2048;
        v30 = v9;
        v7 = "No oid bag for %p on queue %s with tags %p";
        v10 = 32;
        goto LABEL_21;
      }
    }
  }

LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SIQueryCreateWithItems(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  v13[0] = 1;
  v13[1] = a1;
  v13[2] = 0;
  v13[3] = 0;
  v13[5] = 0;
  v14 = 0uLL;
  v13[4] = a2;
  v15 = 0uLL;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  *(&v20 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v21 = a7;
  *&v22[0] = a8;
  *(v22 + 8) = a9;
  *(&v22[1] + 1) = a10;
  *&v22[2] = a11;
  memset(&v22[2] + 8, 0, 48);
  v23 = 0u;
  v24 = 0u;
  LOWORD(v25) = 0;
  *(&v25 + 1) = 0;
  *&v26 = 0;
  BYTE8(v26) = 0;
  v27 = 0u;
  v28 = 0u;
  *(v29 + 15) = 0;
  v29[0] = a12;
  return SIQueryCreateWithParameters(v13);
}

void background_query_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

uint64_t si_peek_queue_for_tags(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (dword_1EBF46AD0 >= 5)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      label = dispatch_queue_get_label(*(a1 + 16));
      *buf = 134218242;
      v22 = a2;
      v23 = 2080;
      v24 = label;
      _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Peek tags for %p on queue %s", buf, 0x16u);
    }

    *__error() = v8;
  }

  v4 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_peek_queue_for_tags_block_invoke;
  block[3] = &unk_1E8192F30;
  block[5] = a2;
  block[6] = a1;
  block[4] = &v17;
  dispatch_sync(v4, block);
  if (*(v18 + 24) != 1)
  {
    if (dword_1EBF46AD0 < 5)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v11 = *__error();
    v12 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = dispatch_queue_get_label(*(a1 + 16));
      *buf = 134218242;
      v22 = a2;
      v23 = 2080;
      v24 = v15;
      v14 = "No tags for %p on queue %s";
      goto LABEL_15;
    }

LABEL_16:
    *__error() = v11;
    v5 = *(v18 + 24);
    goto LABEL_7;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = dispatch_queue_get_label(*(a1 + 16));
      *buf = 134218242;
      v22 = a2;
      v23 = 2080;
      v24 = v13;
      v14 = "Found tags for %p on queue %s";
LABEL_15:
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v5 = 1;
LABEL_7:
  _Block_object_dispose(&v17, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

uint64_t _splitAndGroupBySource(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 0u;
  if (!a1)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_69;
  }

  *(a1 + 12) = 0;
  v2 = *a1;
  if (*a1 < 2u)
  {
    v6 = *(a1 + 24);
    MEMORY[0x1EEE9AC00](a1);
    v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, v7);
    if (*(a1 + 24) < 1)
    {
      v5 = 0;
    }

    else
    {
      v9 = 0;
      LODWORD(v5) = 0;
      v10 = *(a1 + 32);
      v11 = v8;
      do
      {
        v12 = _splitAndGroupBySource(*(v10 + 8 * v9));
        if (!v12)
        {
          v46 = __si_assert_copy_extra_332();
          v47 = v46;
          v48 = "";
          if (v46)
          {
            v48 = v46;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 365, "s!=NONE", v48);
          free(v47);
          if (__valid_fs(-1))
          {
            v49 = 2989;
          }

          else
          {
            v49 = 3072;
          }

          *v49 = -559038737;
          abort();
        }

        v13 = bucket[v12];
        ++*(&v57 + v13);
        v5 = v12 | v5;
        v14 = *(a1 + 24);
        v10 = *(a1 + 32);
        v15 = *(a1 + 13) | *(*(v10 + 8 * v9) + 13);
        *v11 = v13;
        v11[1] = v9;
        v11 += 2;
        *(a1 + 13) = v15;
        ++v9;
      }

      while (v14 > v9);
    }

    if ((0xE8uLL >> v5))
    {
      v56 = &v54;
      v55 = DWORD1(v57);
      if (DWORD1(v57))
      {
        v18 = clone_node_copyingkind(a1, 1, v8, DWORD1(v57));
      }

      else
      {
        v18 = 0;
      }

      v54 = DWORD2(v57);
      if (DWORD2(v57))
      {
        v19 = clone_node_copyingkind(a1, 2, v8, DWORD2(v57));
      }

      else
      {
        v19 = 0;
      }

      v20 = HIDWORD(v57);
      if (HIDWORD(v57))
      {
        v21 = clone_node_copyingkind(a1, 3, v8, HIDWORD(v57));
      }

      else
      {
        v21 = 0;
      }

      v22 = v58;
      if (v58)
      {
        v23 = clone_node_copyingkind(a1, 4, v8, v58);
        v24 = v23;
        v25 = *a1;
        if (*a1)
        {
          *(a1 + 13) |= *(v23 + 13);
          if (v25 == 1)
          {
            v26 = *(v23 + 15);
            if ((v26 & 1) == 0)
            {
              v26 = *(a1 + 15);
            }

            *(a1 + 15) = v26;
          }
        }

        else
        {
          *(a1 + 12) = 1;
          *(a1 + 13) |= *(v23 + 13);
        }
      }

      else
      {
        v24 = 0;
      }

      v27 = HIDWORD(v58);
      if (HIDWORD(v58))
      {
        v28 = clone_node_copyingkind(a1, 7, v8, HIDWORD(v58));
        v29 = *a1;
        if (*a1)
        {
          *(a1 + 13) |= *(v28 + 13);
          if (v29 == 1)
          {
            v30 = *(v28 + 15);
            if ((v30 & 1) == 0)
            {
              v30 = *(a1 + 15);
            }

            *(a1 + 15) = v30;
          }
        }

        else
        {
          *(a1 + 12) = 1;
          *(a1 + 13) |= *(v28 + 13);
        }
      }

      else
      {
        v28 = 0;
      }

      *(a1 + 24) = 0;
      if (v18)
      {
        v31 = *(a1 + 32);
        *(a1 + 24) = 1;
        *v31 = v18;
        v32 = *(a1 + 24);
      }

      else
      {
        v32 = 0;
      }

      if (v19)
      {
        v33 = *(a1 + 32);
        *(a1 + 24) = v32 + 1;
        *(v33 + 8 * v32) = v19;
        v32 = *(a1 + 24);
      }

      if (v21)
      {
        v34 = *(a1 + 32);
        *(a1 + 24) = v32 + 1;
        *(v34 + 8 * v32) = v21;
        v32 = *(a1 + 24);
      }

      if (v24)
      {
        v35 = *(a1 + 32);
        *(a1 + 24) = v32 + 1;
        *(v35 + 8 * v32) = v24;
        v32 = *(a1 + 24);
      }

      if (v28)
      {
        v36 = *(a1 + 32);
        *(a1 + 24) = v32 + 1;
        *(v36 + 8 * v32) = v28;
        v32 = *(a1 + 24);
      }

      if (v32 == 1)
      {
        v37 = *(a1 + 32);
        v38 = *v37;
        v39 = *(*v37 + 4);
        v40 = (*v37)[1];
        *a1 = **v37;
        *(a1 + 16) = v40;
        *(a1 + 32) = v39;
        free(v38);
        free(v37);
      }

      else
      {
        if (!*a1)
        {
          goto LABEL_93;
        }

        if (v32 >= 1)
        {
          v41 = *(a1 + 32);
          do
          {
            if (*(*v41 + 15) == 1)
            {
              *(a1 + 15) = 1;
            }

            v41 += 8;
            --v32;
          }

          while (v32);
        }

        if (!(v54 | v55 | v20))
        {
LABEL_93:
          if (v27 | v22)
          {
            *(a1 + 12) = 1;
          }
        }
      }
    }

    *(a1 + 4) = v5;
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v3 = *(*(a1 + 24) + 16);
        if (!v3)
        {
          goto LABEL_8;
        }

        v4 = *(v3 + 32);
        if ((v4 & 0x400) != 0)
        {
          v5 = 1;
          goto LABEL_36;
        }

        if ((v4 & 0x800) == 0)
        {
LABEL_8:
          v5 = 2;
LABEL_36:
          *(a1 + 4) = v5;
          goto LABEL_69;
        }

        v5 = 4;
        *(a1 + 4) = 4;
        if (strcmp(*v3, "kMDItemFSInvisible"))
        {
          goto LABEL_69;
        }

        v44 = *(v3 + 72);
        v45 = *v44;
        if (v45 == 48)
        {
          if ((v44[1] == 0) == (*(v3 + 24) != 5))
          {
            goto LABEL_76;
          }
        }

        else if (v45 == 42 && !v44[1] || *(v3 + 24) == 5)
        {
          goto LABEL_76;
        }

        *(a1 + 13) = 1;
        *(a1 + 15) = 1;
LABEL_76:
        v5 = 4;
        goto LABEL_69;
      }

      goto LABEL_9;
    }

    v16 = _splitAndGroupBySource(*(a1 + 24));
    if (!v16)
    {
      v50 = __si_assert_copy_extra_332();
      v51 = v50;
      v52 = "";
      if (v50)
      {
        v52 = v50;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 410, "source!=NONE", v52);
      free(v51);
      if (__valid_fs(-1))
      {
        v53 = 2989;
      }

      else
      {
        v53 = 3072;
      }

      *v53 = -559038737;
      abort();
    }

    v5 = v16;
    *(a1 + 4) = v16;
    v17 = *(a1 + 24);
    *(a1 + 13) = *(v17 + 13);
    *(a1 + 15) = *(v17 + 15);
  }

LABEL_69:
  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t rewriteForSources(uint64_t a1, uint64_t **a2, int a3)
{
  v6 = _splitAndGroupBySource(a1);
  *a2 = 0;
  if (!v6)
  {
    v54 = __si_assert_copy_extra_332();
    v55 = v54;
    v56 = "";
    if (v54)
    {
      v56 = v54;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 787, "s!=NONE", v56);
    free(v55);
    if (__valid_fs(-1))
    {
      v57 = 2989;
    }

    else
    {
      v57 = 3072;
    }

    *v57 = -559038737;
    abort();
  }

  calculateCost(a1);
  v58 = 0;
  v59 = 0;
  v7 = rewriteForFSSearching(a1, &v58, &v59);
  v8 = malloc_type_malloc(16 * v7, 0x20040A4A59CD2uLL);
  v10 = v58;
  v9 = v59;
  if (v7 < 1)
  {
    v19 = 0;
  }

  else
  {
    v11 = a3;
    v12 = 0;
    v13 = v7;
    do
    {
      if (v10)
      {
        v14 = v9[v12];
        if (v14)
        {
          v15 = v10[v12];
          if (v15)
          {
            v16 = v14[1];
            if ((v16 & 3) != 0 && (*(v15 + 4) & 3) != 0 && (*(v15 + 15) & 1) == 0)
            {
              if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
              {
                ++sTotal_4940;
              }

              v14 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
              if (!v14)
              {
                _log_fault_for_malloc_failure();
              }

              *v14 = 1;
              v14[1] = *(v10[v12] + 4) | *(v9[v12] + 4);
              *(v14 + 3) = 2;
              v17 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
              *(v14 + 4) = v17;
              *v17 = v9[v12];
              *(*(v14 + 4) + 8) = v10[v12];
              v10[v12] = 0;
              v9[v12] = v14;
              v16 = v14[1];
            }

            if ((v16 & 3) == 0)
            {
              v18 = v10[v12];
              if (v18)
              {
                if ((*(v18 + 4) & 3) != 0 && (*(v14 + 15) & 1) == 0)
                {
                  v10[v12] = v14;
                  v9[v12] = v18;
                }
              }
            }
          }
        }
      }

      ++v12;
    }

    while (v7 != v12);
    v19 = 0;
    v20 = v9;
    v21 = v10;
    a3 = v11;
    do
    {
      if (v9)
      {
        v22 = *v20;
      }

      else
      {
        v22 = 0;
      }

      v23 = &v8[2 * v19];
      *v23 = v22;
      if (v10)
      {
        v24 = *v21;
      }

      else
      {
        v24 = 0;
      }

      v23[1] = v24;
      if (v22)
      {
        ++v19;
      }

      ++v21;
      ++v20;
      --v13;
    }

    while (v13);
  }

  free(v10);
  free(v9);
  qsort_b(v8, v19, 0x10uLL, &__block_literal_global_4941);
  v25 = v19 - 1;
  if (v19 > 1)
  {
    v26 = v8 + 3;
    v27 = 1;
    do
    {
      v28 = *(v26 - 3);
      if (*(v28 + 4) != 4)
      {
        goto LABEL_45;
      }

      v29 = *(v26 - 1);
      if (*(v29 + 4) != 4 || siquerynode_compare(v28, v29))
      {
        goto LABEL_45;
      }

      v30 = *(v26 - 2);
      if (v30)
      {
        v31 = *v26;
        if (*v26)
        {
          v32 = &v8[2 * v27 - 1];
          if (siquerynode_compare(*(v26 - 2), *v26))
          {
            *v26 = si_querynode_add(v30, v31);
          }

          else
          {
            siquerynode_release(v30);
          }

          goto LABEL_44;
        }

        siquerynode_release(*(v26 - 2));
      }

      siquerynode_release(*v26);
      *(v26 - 2) = 0;
      v32 = v26;
LABEL_44:
      *v32 = 0;
      siquerynode_release(*(v26 - 3));
      *(v26 - 3) = 0;
LABEL_45:
      ++v27;
      v26 += 2;
      --v25;
    }

    while (v25);
  }

  if (v19 < 1)
  {
    goto LABEL_79;
  }

  v33 = 0;
  v34 = 0;
  v35 = v8;
  do
  {
    if (*v35)
    {
      LOBYTE(v59) = 0;
      *&v8[2 * v34] = *v35;
      v33 |= catSearchSupportsOneAttribute(*v35, &v59) ^ 1;
      ++v34;
    }

    v35 += 2;
    --v19;
  }

  while (v19);
  if ((v34 > 6) | (v33 | a3) & 1)
  {
    v36 = v34 - 1;
    if (v34 > 1)
    {
      v37 = v8 + 2;
      while (1)
      {
        v38 = *(v37 - 2);
        if (*(v38 + 4) != 4)
        {
          goto LABEL_72;
        }

        v39 = *v37;
        if (*(*v37 + 4) != 4)
        {
          goto LABEL_72;
        }

        v40 = *(v37 - 1);
        v41 = v37[1];
        if (v40)
        {
          break;
        }

        if (v41)
        {
          Node = cloneQueryNode(*v37, 0);
          v47 = si_querynode_join(Node, v37[1]);
          v48 = *(v37 - 2);
          if (!v48)
          {
            goto LABEL_66;
          }

LABEL_68:
          v49 = cloneQueryNode(v48, 0);
LABEL_69:
          v37[1] = si_querynode_add(v47, v49);
        }

LABEL_71:
        v51 = si_querynode_add(*v37, *(v37 - 2));
        *v37 = v51;
        *(v51 + 1) = 4;
        *(v37 - 2) = 0;
        *(v37 - 1) = 0;
LABEL_72:
        v37 += 2;
        if (!--v36)
        {
          goto LABEL_73;
        }
      }

      if (v41)
      {
        if (siquerynode_compare(*(v37 - 1), v41))
        {
          v42 = cloneQueryNode(v39, 0);
          v43 = si_querynode_join(v42, v37[1]);
          v44 = *(v37 - 2);
          if (v44)
          {
            v44 = cloneQueryNode(v44, 0);
          }

          v45 = si_querynode_join(v44, *(v37 - 1));
          si_querynode_add(v43, v45);
        }

        else
        {
          siquerynode_release(v40);
        }

        goto LABEL_71;
      }

      v50 = cloneQueryNode(v38, 0);
      v47 = si_querynode_join(v50, *(v37 - 1));
      v48 = *v37;
      if (*v37)
      {
        goto LABEL_68;
      }

LABEL_66:
      v49 = 0;
      goto LABEL_69;
    }
  }

LABEL_73:
  if (v34 < 1)
  {
LABEL_79:
    result = 0;
  }

  else
  {
    result = 0;
    v53 = v8;
    do
    {
      if (*v53)
      {
        *&v8[2 * result++] = *v53;
      }

      v53 += 2;
      --v34;
    }

    while (v34);
  }

  *a2 = v8;
  return result;
}

uint64_t calculateCost(uint64_t a1)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      *(a1 + 8) = calculateCost(*(a1 + 24));
    }

    else if (v2 == 3)
    {
      v9 = *(*(a1 + 24) + 16);
      if (v9)
      {
        LODWORD(v9) = *(v9 + 48);
      }

      *(a1 + 8) = v9;
    }
  }

  else
  {
    if (!v2)
    {
      *(a1 + 8) = 0;
      v3 = *(a1 + 24);
      if (v3 >= 1)
      {
        for (i = 0; i < v3; ++i)
        {
          *(a1 + 8) += calculateCost(*(*(a1 + 32) + 8 * i));
          v3 = *(a1 + 24);
        }
      }

      goto LABEL_22;
    }

    if (v2 == 1)
    {
      *(a1 + 8) = 0x7FFFFFFF;
      v3 = *(a1 + 24);
      if (v3 > 0)
      {
        v4 = 0;
        v5 = *(a1 + 32);
        do
        {
          v6 = calculateCost(v5[v4]);
          v5 = *(a1 + 32);
          if (*(a1 + 8) <= v6)
          {
            v7 = v5[v4];
          }

          else
          {
            *(a1 + 8) = v6;
            v7 = v5[v4];
            v8 = (*(v7 + 14) & 1) != 0 || *(v7 + 4) == 4;
            *(a1 + 14) = v8;
          }

          *(a1 + 15) |= *(v7 + 15);
          ++v4;
          v3 = *(a1 + 24);
        }

        while (v4 < v3);
        goto LABEL_23;
      }

LABEL_22:
      v5 = *(a1 + 32);
LABEL_23:
      qsort(v5, v3, 8uLL, compare_node_cost);
    }
  }

  return *(a1 + 8);
}

uint64_t rewriteForFSSearching(uint64_t a1, uint64_t **a2, void **a3)
{
  v5 = *(a1 + 4);
  if ((v5 & 4) == 0 && *(a1 + 13) != 1)
  {
    goto LABEL_57;
  }

  if ((*(a1 + 12) & 1) == 0 && (*(a1 + 13) & 1) == 0)
  {
    if ((v5 & 4) != 0 && !*a1)
    {
LABEL_35:
      v25 = *(a1 + 24);
      v26 = 8 * v25;
      v27 = MEMORY[0x1E69E9AC8];
      if (((v25 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v26 > *MEMORY[0x1E69E9AC8])
      {
        ++sTotal_4940;
      }

      v28 = malloc_type_zone_calloc(queryZone, 1uLL, v26, 0x5BAF1CEAuLL);
      if (!v28)
      {
        _log_fault_for_malloc_failure();
      }

      v29 = *(a1 + 24);
      v30 = 8 * v29;
      if (((v29 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v30 > *v27)
      {
        ++sTotal_4940;
      }

      v31 = malloc_type_zone_calloc(queryZone, 1uLL, v30, 0x5BAF1CEAuLL);
      if (!v31)
      {
        _log_fault_for_malloc_failure();
      }

      v32 = malloc_size(v28);
      if (*(a1 + 24) < 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        v33 = 0;
        v34 = v32 >> 3;
        do
        {
          v54 = 0;
          v55 = 0;
          v35 = rewriteForFSSearching(*(*(a1 + 32) + 8 * v33), &v55, &v54);
          if (v34 <= v35 + v24)
          {
            v36 = v34;
            do
            {
              v34 = 2 * v36;
              v37 = 16 * v36;
              v28 = malloc_type_realloc(v28, 16 * v36, 0x2004093837F09uLL);
              v31 = malloc_type_realloc(v31, v37, 0x2004093837F09uLL);
              v36 = v34;
            }

            while (v34 <= v35 + v24);
          }

          if (v35 >= 1)
          {
            v38 = 0;
            v24 = v24;
            do
            {
              *(v28 + v24) = *(v54 + v38);
              v39 = v55;
              if (v55)
              {
                v39 = *(v55 + v38);
              }

              *(v31 + v24++) = v39;
              ++v38;
            }

            while (v35 != v38);
          }

          free(v55);
          free(v54);
          ++v33;
        }

        while (v33 < *(a1 + 24));
      }

      *a2 = v31;
      *a3 = v28;
      return v24;
    }

LABEL_57:
    *a2 = 0;
    *a3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    **a3 = cloneQueryNode(a1, 0);
    return 1;
  }

  v6 = *a1;
  if (*a1 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v9 = *v8;
        if (v7 >= 2)
        {
          v10 = v7 - 1;
          v11 = v8 + 1;
          do
          {
            if (*(*v11 + 8) < *(v9 + 8) || *(*v11 + 13) == 1)
            {
              v9 = *v11;
            }

            ++v11;
            --v10;
          }

          while (v10);
        }

        v54 = 0;
        v55 = 0;
        v12 = rewriteForFSSearching(v9, &v55, &v54);
        v13 = v12;
        v14 = v55;
        if (!v55)
        {
          v15 = 8 * v12;
          if (((v12 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v15 > *MEMORY[0x1E69E9AC8])
          {
            ++sTotal_4940;
          }

          v14 = malloc_type_zone_calloc(queryZone, 1uLL, v15, 0x5BAF1CEAuLL);
          if (!v14)
          {
            _log_fault_for_malloc_failure();
          }
        }

        if (v13 >= 1)
        {
          v16 = v14;
          v17 = v13;
          do
          {
            Node = cloneQueryNode(a1, v9);
            if (v14)
            {
              v19 = Node;
              if (*v16)
              {
                if (*Node == 3)
                {
                  v19 = si_querynode_join(Node, *v16);
                }

                else
                {
                  v20 = malloc_type_realloc(*(Node + 4), (8 * *(Node + 3)) | 1, 0x2004093837F09uLL);
                  v19[4] = v20;
                  v21 = *v16;
                  v22 = v19[3];
                  v19[3] = v22 + 1;
                  v20[v22] = v21;
                }
              }

              *v16 = v19;
            }

            ++v16;
            --v17;
          }

          while (v17);
        }

        v23 = v54;
        *a2 = v14;
        *a3 = v23;
        return v13;
      }

LABEL_32:
      v24 = 0;
      MEMORY[0xBAD] = -559038737;
      return v24;
    }

    goto LABEL_35;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

  v54 = 0;
  v55 = 0;
  v40 = rewriteForFSSearching(*(a1 + 24), &v55, &v54);
  v24 = v40;
  v48 = v55;
  v50 = v54;
  if (v40 >= 1)
  {
    v41 = MEMORY[0x1E69E9AC8];
    v42 = v55;
    v43 = v54;
    v44 = v40;
    do
    {
      if (*v41 <= 0x27uLL)
      {
        ++sTotal_4940;
      }

      v45 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
      if (!v45)
      {
        _log_fault_for_malloc_failure();
      }

      *v45 = 2;
      v45[3] = *v43;
      *v43 = v45;
      if (*v41 <= 0x27uLL)
      {
        ++sTotal_4940;
      }

      v46 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
      if (!v46)
      {
        _log_fault_for_malloc_failure();
      }

      *v46 = 2;
      v46[3] = *v42;
      *v42++ = v46;
      ++v43;
      --v44;
    }

    while (v44);
  }

  *a3 = v50;
  *a2 = v48;
  return v24;
}

_OWORD *cloneQueryNode(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A2040E651BF2BuLL);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v6;
  *(v4 + 4) = v5;
  v7 = *v4;
  if (*v4 < 2u)
  {
    v10 = malloc_type_calloc(1uLL, 8 * *(a1 + 24), 0x2004093837F09uLL);
    *(v4 + 3) = 0;
    *(v4 + 4) = v10;
    v11 = *(a1 + 24);
    if (v11 >= 1)
    {
      v12 = 0;
      for (i = 0; i < v11; ++i)
      {
        v14 = *(*(a1 + 32) + 8 * i);
        if (v14 != a2)
        {
          *(*(v4 + 4) + 8 * *(v4 + 3)) = cloneQueryNode(v14, 0);
          v12 = *(v4 + 3) + 1;
          *(v4 + 3) = v12;
          v11 = *(a1 + 24);
        }
      }

      if (v12 == 1)
      {
        v15 = *(v4 + 4);
        v16 = *v15;
        free(v15);
        free(v4);
        v4 = v16;
      }
    }
  }

  else
  {
    if (v7 == 2)
    {
      Node = cloneQueryNode(*(a1 + 24), 0);
      goto LABEL_13;
    }

    if (v7 == 3)
    {
      v8 = *(a1 + 24);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __db_query_tree_apply_block_block_invoke;
      v18[3] = &unk_1E8198ED0;
      v18[4] = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v8, v18, &__block_literal_global_25_15416);
LABEL_13:
      *(v4 + 3) = Node;
    }
  }

  *(v4 + 15) = *(a1 + 15);
  return v4;
}

void siquerynode_release(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1 < 2)
    {
      if (*(a1 + 3) >= 1)
      {
        v3 = 0;
        do
        {
          siquerynode_release(*(*(a1 + 4) + 8 * v3++));
        }

        while (*(a1 + 3) > v3);
      }

      free(*(a1 + 4));
    }

    else if (v2 == 2)
    {
      siquerynode_release(*(a1 + 3));
    }

    else if (v2 == 3)
    {
      db_free_query_node(*(a1 + 3));
    }

    free(a1);
  }
}

void free_qp(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    if (*(a1 + 40) >= 1)
    {
      v3 = 0;
      do
      {
        free(*(*(a1 + 168) + 8 * v3++));
      }

      while (v3 < *(a1 + 40));
      v2 = *(a1 + 168);
    }

    free(v2);
    *(a1 + 168) = 0;
    v4 = *(a1 + 272);
    if (v4)
    {
      free(v4);
      *(a1 + 272) = 0;
    }
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    free(v5);
    *(a1 + 296) = 0;
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    free(v6);
    *(a1 + 288) = 0;
  }

  if (*a1)
  {
    free(*a1);
  }

  *a1 = 0;
  v7 = *(a1 + 136);
  if (v7)
  {
    free(v7);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *(a1 + 72);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 72) = 0;
  v9 = *(a1 + 88);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 104);
  if ((*(a1 + 24) - 13) > 1)
  {
    icu_ctx_release();
LABEL_28:
    if (!*(a1 + 120))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 40);
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      if (*(*(a1 + 104) + 8 * i))
      {
        icu_ctx_release();
        v11 = *(a1 + 40);
      }
    }

    v10 = *(a1 + 104);
  }

  free(v10);
  if (*(a1 + 120))
  {
LABEL_32:
    v13 = *(a1 + 128);
    if (v13)
    {
      v13();
      *(a1 + 120) = 0;
    }
  }

LABEL_34:
  qp_string_id_cache_free(*(a1 + 112));

  free(a1);
}

uint64_t catSearchSupportsOneAttribute(int *a1, _BYTE *a2)
{
  v4 = *a1;
  if (!*a1)
  {
    if (*(a1 + 3) >= 1)
    {
      v10 = 0;
      do
      {
        catSearchSupportsOneAttribute(*(*(a1 + 4) + 8 * v10++), a2);
      }

      while (*(a1 + 3) > v10);
    }

    return 0;
  }

  if (v4 == 3)
  {
    v6 = *(*(a1 + 3) + 16);
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 32);
    if ((v7 & 0x800) == 0)
    {
      return 0;
    }

    v8 = *v6;
    result = strcmp(*v6, "kMDItemFSInvisible");
    if (result)
    {
      if (strcmp(v8, "kMDItemFSName"))
      {
        result = strcmp(v8, "_kMDItemFSContentType");
        if (result)
        {
          result = strcmp(v8, "_kMDItemFSContentTypeTree");
          if (result)
          {
            result = strcmp(v8, "_kMDItemFSDisplayKind");
            if (result)
            {
              return strcmp(v8, "_kMDItemFSGroupId") != 0;
            }
          }
        }

        return result;
      }

      v12 = *(v6 + 72);
      if (!v12 || *v12 != 46)
      {
        return 0;
      }

      result = 0;
      if ((v7 & 0x40) != 0)
      {
        return result;
      }

      v11 = *(v6 + 24);
      if (v11 != 1)
      {
        return result;
      }

      result = 0;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    *a2 = v11;
    return result;
  }

  if (v4 != 1 || *(a1 + 3) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (!catSearchSupportsOneAttribute(*(*(a1 + 4) + 8 * v5), a2) || *a2 == 1)
  {
    if (*(a1 + 3) <= ++v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t doExecuteCracked(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(a3) != 1)
  {
    goto LABEL_7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
  v17 = CFGetTypeID(ValueAtIndex);
  if (v17 != CFStringGetTypeID())
  {
    goto LABEL_7;
  }

  bzero(buffer, 0x400uLL);
  if (CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024) && (v34[1] = 0x200000000, v34[2] = 0, v33 = 0, *buf = 0, v34[0] = 0x800000005, !getattrlist(buffer, v34, buf, 0xCuLL, 0x200u)))
  {
    LOBYTE(v22) = 0;
    v25 = *&buf[4] == 2 && v33 == 0;
    if (v25 || !a6)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_7:
    if (!a6)
    {
      LOBYTE(v22) = 0;
      goto LABEL_31;
    }
  }

  if (a6 < 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = (a5 + 16);
    v20 = 1;
    do
    {
      v21 = *v19;
      v19 += 2;
      if (*(*(a5 + 16 * v18) + 8) > *(v21 + 8))
      {
        v18 = v20;
      }

      ++v20;
    }

    while (a6 != v20);
  }

  v23 = 0x1EBF46000uLL;
  if (!*(a5 + 16 * v18))
  {
    v22 = 0;
    if (a6 < 2)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  *buffer = 0;
  v34[0] = 0;
  si_query_copy_grouping(a1, buffer, v34);
  if (dword_1EBF46AD0 >= 5)
  {
    log = *__error();
    v28 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "We do have a primary query", buf, 2u);
    }

    *__error() = log;
  }

  v22 = executeOneCracked(a1, *(a5 + 16 * v18), *(a5 + 16 * v18 + 8), a2, a3, a4, a7, a8, *buffer, v34[0]);
  v23 = 0x1EBF46000;
  if (a6 >= 2)
  {
LABEL_21:
    if (*(v23 + 2768) >= 5)
    {
      v31 = *__error();
      loga = _SILogForLogForCategory(1);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 67109120;
        *&buffer[4] = 0;
        _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "We do have %d secondary queries", buffer, 8u);
      }

      *__error() = v31;
    }

    v24 = (a5 + 8);
    do
    {
      *buffer = 0;
      v34[0] = 0;
      if (v18)
      {
        si_query_copy_grouping(a1, buffer, v34);
        v22 |= executeOneCracked(a1, *(v24 - 1), *v24, a2, a3, a4, a7, a8, *buffer, v34[0]);
      }

      v24 += 2;
      --v18;
      --a6;
    }

    while (a6);
  }

LABEL_31:
  v26 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

uint64_t executeOneCracked(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (*(a8 + 96))
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 697);
  v11 = a8;
  do
  {
    v12 = v11;
    v11 = *(v11 + 80);
  }

  while (v11);
  if (*(*(v12 + 8) + 12))
  {
    goto LABEL_5;
  }

  v15 = *(a2 + 4);
  v16 = *(a1 + 576);
  if ((v15 & 4) == 0)
  {
    if (v15 == 2 && v16 != 0)
    {
LABEL_19:
      operator new();
    }

    if (*(a4 + 1192))
    {
      operator new();
    }
  }

  if (v16)
  {
    goto LABEL_19;
  }

  if ((v15 & 3) != 0 && *(a4 + 1192) && (*(a2 + 14) & 1) == 0 && (*(a2 + 15) & 1) == 0)
  {
    operator new();
  }

LABEL_5:
  if (a10 >= 1)
  {
    for (i = 0; i != a10; ++i)
    {
      v14 = a9[i];
      if (v14)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 0x40000000;
        v19[2] = __db_query_tree_apply_block_block_invoke;
        v19[3] = &unk_1E8198ED0;
        v19[4] = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v14, v19, 0);
      }
    }
  }

  free(a9);
  return 0;
}

uint64_t __free_tree_block_invoke(int a1, void *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v4 = *(a2 + 5);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v7 = v5++;
        v6 = *(a2 + 3);
        if (v4[v5] >= 1 && *(v6 + 8 * v7))
        {
          v8 = 0;
          do
          {
            v9 = *(*(a2 + 3) + 8 * v7);
            if (v9)
            {
              v10 = *(v9 + 8 * v8);
              if (v10)
              {
                if (atomic_fetch_add((v10 + 32), 0xFFFFFFFF) == 1)
                {
                  free(*v10);
                  free(v10);
                }

                *(*(*(a2 + 3) + 8 * v7) + 8 * v8) = 0;
                v4 = *(a2 + 5);
              }
            }

            ++v8;
          }

          while (v8 < v4[v5]);
          v6 = *(a2 + 3);
        }

        free(*(v6 + 8 * v7));
        *(*(a2 + 3) + 8 * v7) = 0;
        v4 = *(a2 + 5);
      }

      while (v5 < *v4);
      v3 = *(a2 + 3);
    }

    free(v3);
    free(*(a2 + 5));
    *(a2 + 3) = 0;
    *(a2 + 5) = 0;
  }

  v11 = *(a2 + 2);
  if (v11)
  {
    free_qp(v11);
  }

  free(a2);
  return 0;
}

void si_query_copy_grouping(uint64_t a1, void *a2, size_t *a3)
{
  *a2 = 0;
  v5 = *(a1 + 248);
  v4 = *(a1 + 256);
  *a3 = v4;
  if (v5)
  {
    if (((v4 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * v4 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_9528;
    }

    v8 = malloc_type_zone_calloc(queryZone, v4, 8uLL, 0x5BAF1CEAuLL);
    if (!v8)
    {
      _log_fault_for_malloc_failure();
    }

    *a2 = v8;
    if (*(a1 + 256) >= 1)
    {
      v9 = 0;
      v10 = MEMORY[0x1E69E9820];
      do
      {
        v11 = *(*(a1 + 248) + 8 * v9);
        v13[0] = v10;
        v13[1] = 0x40000000;
        v13[2] = __db_query_tree_apply_block_block_invoke;
        v13[3] = &unk_1E8198ED0;
        v13[4] = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v11, v13, &__block_literal_global_25_15416);
        *(*a2 + 8 * v9++) = v12;
      }

      while (v9 < *(a1 + 256));
    }
  }
}

void db_free_query_node(void *a1)
{
  if (a1)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 0x40000000;
    v1[2] = __db_query_tree_apply_block_block_invoke;
    v1[3] = &unk_1E8198ED0;
    v1[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a1, v1, 0);
  }
}

void si_querypipe_release(uint64_t a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    if (*(a1 + 80))
    {
      si_querypipe_release();
    }

    else
    {
      SIResultQueueRelease(*(a1 + 8));
      CFRelease(*(a1 + 40));
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      dispatch_semaphore_signal(v4);
      dispatch_release(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    if (*(a1 + 32))
    {
      si_release_qid();
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void *___queryGoCracked_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  return result;
}

int *siquery_addactivetime(uint64_t a1, double a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a1 + 456) = *(a1 + 456) + a2;
  v4 = *__error();
  v5 = _SILogForLogForCategory(1);
  v6 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 456);
    v10 = 134218496;
    v11 = a2;
    v12 = 2048;
    v13 = v7;
    v14 = 1024;
    v15 = qos_class_self();
    _os_log_impl(&dword_1C278D000, v5, v6, "siquery_addactivetime %g seconds to %g seconds 0x%x\n", &v10, 0x1Cu);
  }

  result = __error();
  *result = v4;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __si_setup_run_stubquery_block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 >= 2)
  {
    v5 = *(a2 + 48);
    if ((v5 & 0xFFFFFFF7) == 1)
    {
      v6 = (a3 | a4) == 0;
    }

    else
    {
      if ((v5 & 0xFFFFFFF7) != 2)
      {
        return 1;
      }

      if (a3)
      {
        v6 = a4 == 0;
      }

      else
      {
        v6 = 1;
      }
    }

    v7 = !v6;
    return v7 ^ ((v5 & 8) >> 3);
  }

  return result;
}

void *__queryRemapFieldsForStore_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 48) != 4)
  {
    return v2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = *v3;
  if (!*v3)
  {
    return v2;
  }

  v5 = *(v3 + 72);
  if (!v5 || (*(v3 + 24) | 4) != 5 || strncmp(*v3, "_kMDItemQueryPath", 0x11uLL))
  {
    return v2;
  }

  v7 = v4 + 17;
  v8 = (*(v3 + 32) >> 19) & 1;
  if (v4[17])
  {
    if (v4[17] == 79 && v4[18] == 73 && v4[19] == 68)
    {
      v7 = v4 + 20;
    }

    strncmp(v7, "Flat", 4uLL);
  }

  __endptr = 0;
  if (!strcmp(v5, "kMDQueryConstantOrphanOID"))
  {
    v10 = *(a1 + 32);
    if (v10 && *(v10 + 2072) == 1)
    {
      atomic_load((v10 + 2080));
      v3 = v2[2];
    }

    v9 = (v5 + 25);
LABEL_20:
    if (!*v9)
    {
      v16 = *(v3 + 24);
      PathNodeForOid = createPathNodeForOid(*(a1 + 32));
      if (!PathNodeForOid)
      {
        return v2;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  strtoll(v5, &__endptr, 0);
  v9 = __endptr;
  v3 = v2[2];
  if (__endptr != v5)
  {
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v3 + 72);
  v12 = *(v3 + 24);
  PathNodeForOid = createPathNodeForPath(*(a1 + 32));
  if (PathNodeForOid)
  {
LABEL_22:
    v14 = PathNodeForOid;
    db_free_query_node(v2);
    return v14;
  }

  return v2;
}

uint64_t __queryRemapFieldsForStore_block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == 4)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      if (sSIQueryCSFieldNameCallback)
      {
        v4 = sSIQueryCSFieldNameCallback(*v3);
        if (v4)
        {
          memset(v9, 0, sizeof(v9));
          if (CFStringGetCString(v4, v9, 256, 0x8000100u))
          {
            v5 = strdup(v9);
            if (v5)
            {
              v6 = v5;
              free(*v3);
              *v3 = v6;
            }
          }
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a2;
}

void si_querypipe_remove_process(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 a4)
{
  v4 = a3;
  v6 = a1;
  v99 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit((a1 + 64), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit == 1 || add_explicit == 2 && *(a1 + 100) == 1)
  {
    if ((*(a2 + 201) & 0x20) != 0)
    {
      v11 = *MEMORY[0x1E695E480];
      v79 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, (a2 + 416));
      v78 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 400));
      v77 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 392));
      v76 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 408));
      v75 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 552));
      v74 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 536));
      v73 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 528));
      v72 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 544));
      v71 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 368));
      valuePtr = CFAbsoluteTimeGetCurrent();
      v70 = CFNumberCreate(v11, kCFNumberDoubleType, &valuePtr);
      v69 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 376));
      v68 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 464));
      v67 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 472));
      v66 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 480));
      v65 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 488));
      v64 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 496));
      v63 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 504));
      v62 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 512));
      v61 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 520));
      v60 = CFNumberCreate(v11, kCFNumberLongLongType, (a2 + 608));
      v59 = CFNumberCreate(v11, kCFNumberLongType, (a2 + 152));
      v58 = CFNumberCreate(v11, kCFNumberIntType, (a2 + 156));
      v82 = qos_class_self();
      v57 = CFNumberCreate(v11, kCFNumberLongType, &v82);
      v56 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 448));
      v55 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 456));
      v54 = CFNumberCreate(v11, kCFNumberDoubleType, (a2 + 384));
      v12 = *(a2 + 656);
      v13 = v82;
      v14 = *(a2 + 152);
      v15 = *(a2 + 156);
      v16 = valuePtr - *(a2 + 368);
      v17 = *(a2 + 392);
      v18 = valuePtr - *(a2 + 384);
      v19 = *(a2 + 448);
      v20 = *(a2 + 456);
      v21 = *(a2 + 408);
      v22 = *(a2 + 416);
      v23 = *(a2 + 400);
      value = *(a2 + 504);
      v47 = *(a2 + 496);
      v48 = *(a2 + 512);
      v49 = *(a2 + 480);
      v50 = *(a2 + 488);
      v51 = *(a2 + 464);
      v52 = *(a2 + 472);
      v53 = *(a2 + 520);
      empty = xpc_dictionary_create_empty();
      if (v12)
      {
        CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
        if (CStringPtr)
        {
          xpc_dictionary_set_string(empty, "client", CStringPtr);
        }

        else
        {
          Length = CFStringGetLength(v12);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v28 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
          if (v28)
          {
            v29 = v28;
            if (CFStringGetCString(v12, v28, MaximumSizeForEncoding + 1, 0x8000100u))
            {
              xpc_dictionary_set_string(empty, "client", v29);
            }

            free(v29);
          }
        }
      }

      xpc_dictionary_set_uint64(empty, "kind", v14);
      xpc_dictionary_set_uint64(empty, "qosLevel", v13);
      xpc_dictionary_set_uint64(empty, "protectionClass", v15);
      xpc_dictionary_set_double(empty, "totalTime", v16);
      xpc_dictionary_set_double(empty, "totalExecutionTime", v18);
      xpc_dictionary_set_double(empty, "activeTime", v20);
      xpc_dictionary_set_double(empty, "waitTime", v19);
      xpc_dictionary_set_double(empty, "setupTime", v17);
      xpc_dictionary_set_double(empty, "attributeTime", v22);
      xpc_dictionary_set_double(empty, "termTime", v23);
      xpc_dictionary_set_double(empty, "postTime", v21);
      xpc_dictionary_set_uint64(empty, "matchesCollected", value);
      xpc_dictionary_set_uint64(empty, "matchesDiscarded", v47);
      xpc_dictionary_set_uint64(empty, "matchesChecked", v48);
      xpc_dictionary_set_uint64(empty, "sdbIteratorCount", v49);
      xpc_dictionary_set_uint64(empty, "sdbObjectCount", v50);
      xpc_dictionary_set_uint64(empty, "sdbPageCount", v51);
      xpc_dictionary_set_uint64(empty, "sdbCacheHits", v52);
      xpc_dictionary_set_uint64(empty, "plistObjects", v53);
      xpc_dictionary_set_BOOL(empty, "canceled", a4);
      analytics_send_event();
      xpc_release(empty);
      v95 = xmmword_1E8196258;
      v96 = *&off_1E8196268;
      v97 = xmmword_1E8196278;
      v98 = @"kSICanceled";
      v91 = xmmword_1E8196218;
      v92 = *&off_1E8196228;
      v93 = xmmword_1E8196238;
      v94 = *&off_1E8196248;
      v87 = xmmword_1E81961D8;
      v88 = *&off_1E81961E8;
      v89 = xmmword_1E81961F8;
      v90 = *&off_1E8196208;
      *keys = xmmword_1E81961B8;
      v86 = *&off_1E81961C8;
      values[0] = v77;
      values[1] = v78;
      values[2] = v76;
      values[3] = v79;
      values[4] = v73;
      values[5] = v74;
      values[6] = v72;
      values[7] = v60;
      values[8] = v59;
      values[9] = v58;
      values[10] = v75;
      values[11] = v71;
      values[12] = v70;
      values[13] = v69;
      values[14] = v68;
      values[15] = v66;
      values[16] = v65;
      values[17] = v67;
      values[18] = v57;
      values[19] = v56;
      values[20] = v55;
      values[21] = v63;
      values[22] = v62;
      values[23] = v64;
      values[24] = v61;
      values[25] = v54;
      v30 = MEMORY[0x1E695E4D0];
      if (!a4)
      {
        v30 = MEMORY[0x1E695E4C0];
      }

      values[26] = *v30;
      v8 = CFDictionaryCreate(v11, keys, values, 27, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      for (i = 0; i != 27; ++i)
      {
        CFRelease(values[i]);
      }

      v4 = a3;
    }

    else
    {
      v8 = 0;
    }

    if (*(v6 + 80))
    {
      if (v4)
      {
        v32 = v6;
        do
        {
          v33 = v32;
          v32 = *(v32 + 80);
        }

        while (v32);
        if (!si_resultqueue_enqueue(*(v33 + 8), v4))
        {
          SIResultBatchFree(v4);
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_47;
    }

    *keys = *(v6 + 48);
    v34 = *(v6 + 8);
    v35 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
    v36 = *__error();
    v37 = _SILogForLogForCategory(1);
    v38 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v37, v38))
    {
      LOWORD(values[0]) = 0;
      _os_log_impl(&dword_1C278D000, v37, v38, "Passing up out of results", values, 2u);
    }

    *__error() = v36;
    *(v35 + 1) = *keys;
    v39 = 4;
    if (add_explicit == 2)
    {
      if (*(v6 + 100))
      {
        v39 = 5;
      }

      else
      {
        v39 = 4;
      }
    }

    *v35 = v39;
    *(v35 + 1) = si_querypipe_copy_jobid(v6);
    *(v35 + 5) = v8;
    if (v4)
    {
      v40 = countForBatch(v4);
      v41 = countForBatch(v35);
      pthread_mutex_lock((*v34 + 8));
      if ((*(v34 + 12) & 1) == 0)
      {
        v34[9] += v41 + v40;
        si_enqueue_locked(*v34, v4);
        si_enqueue_locked(*v34, v35);
        v42 = v34[6];
        if (v42 && !*(v34 + 21))
        {
          v43 = v34[7];
          v34[6] = 0;
          v34[7] = 0;
          pthread_mutex_unlock((*v34 + 8));
          v42(v43, 0);
        }

        else
        {
          pthread_mutex_unlock((*v34 + 8));
        }

LABEL_47:
        v44 = *(v6 + 16);
        if (v44)
        {
          dispatch_semaphore_signal(v44);
          dispatch_release(*(v6 + 16));
          *(v6 + 16) = 0;
          if (atomic_fetch_add(&gActiveQueries, 0xFFFFFFFFFFFFFFFFLL) == 1 && gMemoryPressureCritical == 1)
          {
            si_flushCaches(2);
          }
        }

        *(v6 + 97) = 1;
        goto LABEL_52;
      }

      pthread_mutex_unlock((*v34 + 8));
      SIResultBatchFree(v35);
      v35 = v4;
    }

    else if (si_resultqueue_enqueue(v34, v35))
    {
      goto LABEL_47;
    }

    SIResultBatchFree(v35);
    goto LABEL_47;
  }

  if (!a3)
  {
    goto LABEL_52;
  }

  do
  {
    v9 = v6;
    v6 = *(v6 + 80);
  }

  while (v6);
  if (si_resultqueue_enqueue(*(v9 + 8), a3))
  {
LABEL_52:
    v45 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = *MEMORY[0x1E69E9840];

  SIResultBatchFree(v4);
}

uint64_t __si_setup_run_stubquery_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 0xFFF7) != 4)
  {
    return 1;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((*v4 != 42 || v4[1]) && (*(v3 + 33) & 0x2C0C) == 0)
      {
        v5 = db_copy_field_ids_with_buffer(*(**(a1 + 32) + 1192), v4, 0, 0);
        if (v5)
        {
          free(v5);
        }

        else if ((*(a2 + 48) & 8) == 0)
        {
          v7 = *(a2 + 16);
          if ((*(v7 + 24) - 5) >= 2)
          {
            if (strncmp(*v7, "_kMDItemQuery", 0xDuLL))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 1;
}

void *__queryRemapFieldsForStore_block_invoke_4(int a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    if (a3)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a3, &v7, 0);
    }

    if (a4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v7, 0);
    }

    free(v5);
    return 0;
  }

  return v5;
}

char *si_fileProvidersPsid_oid_to_path(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, const __CFString *a5, const __CFString *a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a5 || a2 != 2 || a7)
  {
    v15 = *(a1 + 16);
    v27 = -1;
    if (!a5)
    {
      goto LABEL_26;
    }

    if (!a7)
    {
      goto LABEL_26;
    }

    v16 = (*(copyFPItemAllParentsBlock + 16))(copyFPItemAllParentsBlock, a5, a6, a7, a8);
    if (!v16)
    {
      goto LABEL_26;
    }

    v17 = v16;
    Count = CFArrayGetCount(v16);
    if (!Count)
    {
      goto LABEL_26;
    }

    v19 = Count;
    if (Count < 1)
    {
      a3 = 0;
    }

    else
    {
      v20 = 0;
      a3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
        si_get_object_for_identifier_createParentDBO(*v15, a5, ValueAtIndex, a6, 1, &v27, 0, 1u);
        *__str = 0;
        v29 = 0;
        v30 = 0;
        snprintf(__str, 0x14uLL, "%lld", v27);
        __str[strlen(__str)] = 0;
        if (a3)
        {
          v22 = strlen(a3);
          v23 = strlen(__str);
          v26 = &v26;
          MEMORY[0x1EEE9AC00](v23);
          bzero(&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
          strcpy(&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
          free(a3);
          a3 = malloc_type_malloc(v22 + v23 + 1, 0x100004077774924uLL);
          strcpy(a3, &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
        }

        else
        {
          v23 = strlen(__str);
          a3 = malloc_type_malloc(v23 + 1, 0x100004077774924uLL);
          v22 = 0;
        }

        strcat(a3, __str);
        a3[v22 + v23] = 0;
        ++v20;
      }

      while (v19 != v20);
    }

    if (!*a3)
    {
      goto LABEL_26;
    }

    a3[strlen(a3)] = 0;
    goto LABEL_27;
  }

  v11 = CFCopyHomeDirectoryURLForUser();
  if (!v11)
  {
LABEL_26:
    a3 = 0;
    *__error() = 2;
    goto LABEL_27;
  }

  v12 = v11;
  v13 = CFURLCopyFileSystemPath(v11, kCFURLPOSIXPathStyle);
  if (!v13)
  {
    CFRelease(v12);
    goto LABEL_26;
  }

  v14 = v13;
  if (CFStringGetCString(v13, a3, 1024, 0x8000100u))
  {
    strcat(a3, "/Library/CloudStorage/iCloud Drive");
  }

  else
  {
    a3 = 0;
  }

  CFRelease(v14);
  CFRelease(v12);
  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_27:
  v24 = *MEMORY[0x1E69E9840];
  return a3;
}

void processScopeTerms(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v5 = *(a1 + 1416);
  if (v5)
  {
    v6 = *(a1 + 2072);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __processScopeTerms_block_invoke;
    v7[3] = &__block_descriptor_tmp_648;
    v9 = v6;
    v7[4] = a5;
    v7[5] = a2;
    v8 = a3;
    v7[6] = v5;
    v7[7] = a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __db_query_tree_apply_block_block_invoke;
    v10[3] = &unk_1E8198ED0;
    v10[4] = v7;
    db_query_tree_apply_block_with_meta(a4, v10, 0);
  }
}

uint64_t __processScopeTerms_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (*(v3 + 33) & 4) == 0 && !strcmp(*v3, *(a1 + 32)))
  {
    if ((*(a1 + 68) & 1) == 0)
    {
      v5 = *(v3 + 72);
      if (v5)
      {
        if (*(a1 + 40))
        {
          v6 = strlen(*(v3 + 72));
          if (v6 >= 1)
          {
            if (v6 != 1)
            {
              v7 = &v5[v6];
              if (v5[v6 - 1] == 42 && *(v7 - 2) == 47)
              {
                *(v7 - 1) = 0;
                v3 = *(a2 + 16);
                v5 = *(v3 + 72);
              }
            }

            v8 = *v5;
            v9 = v8 == 42 ? v5 + 1 : v5;
            if (*v9 == 47)
            {
              if (v8 == 42)
              {
                v10 = *(a1 + 40);
                v22[0] = 0;
                asprintf(v22, "%s/%s", v10, v5 + 1);
                v11 = v22[0];
              }

              else
              {
                v11 = strdup(v5);
              }

              remove_escaped_chars(v11);
              v12 = strlen(*(a1 + 40));
              if (!strncmp(*(a1 + 40), v11, v12))
              {
                if (SIPersistentIDStoreVetPath(*(a1 + 48), v11, *(a1 + 64)))
                {
                  v13 = *(*(a2 + 16) + 24);
                  v14 = addNodeForCPath(*(a1 + 48));
                  if (v14)
                  {
                    v15 = *(a2 + 48);
                    v24 = *(a2 + 32);
                    v25 = v15;
                    v26 = *(a2 + 64);
                    v16 = *(a2 + 16);
                    *v22 = *a2;
                    v23 = v16;
                    *a2 = *v14;
                    v17 = *(v14 + 4);
                    v19 = *(v14 + 1);
                    v18 = *(v14 + 2);
                    *(a2 + 48) = *(v14 + 3);
                    *(a2 + 64) = v17;
                    *(a2 + 16) = v19;
                    *(a2 + 32) = v18;
                    *v14 = *v22;
                    *(v14 + 4) = v26;
                    *(v14 + 3) = v25;
                    *(v14 + 2) = v24;
                    *(v14 + 1) = v23;
                    db_free_query_node(v14);
                    free(v11);
                    return a2;
                  }
                }
              }

              free(v11);
              v3 = *(a2 + 16);
            }
          }
        }
      }
    }

    if (*(v3 + 24) == 5)
    {
      v20 = 32;
    }

    else
    {
      v20 = 16;
    }

    free_qp(v3);
    *(a2 + 16) = 0;
    *(a2 + 48) = v20;
  }

  return a2;
}

const void *si_opt_cache_init(CFMutableSetRef *a1, uint64_t a2)
{
  a1[2] = 0;
  v4 = *MEMORY[0x1E695E480];
  *a1 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &kCStringSetCallBacks);
  a1[1] = CFSetCreateMutable(v4, 0, &kCStringSetCallBacks);
  if (a2 && (v5 = *(a2 + 112)) != 0)
  {
    result = CFArrayGetCount(v5);
    if (result)
    {
      result = CFArrayGetValueAtIndex(v5, 0);
      if (result)
      {
        result = CFRetain(result);
      }
    }
  }

  else
  {
    result = 0;
  }

  a1[4] = result;
  return result;
}

void si_query_prepare_lifting(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a2 + 288) && (*(a2 + 296) & 1) == 0)
  {
    *(a2 + 296) = 1;
    bzero(v35, 0x400uLL);
    v5 = *(a1 + 1416);
    if (v5 && !*(v5 + 240))
    {
      v21 = (*(v5 + 40))(v5, 2, v35, 0, 0, 0, 0, -1);
    }

    else
    {
      v21 = 0;
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v19 = *__error();
      v20 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "Preparing lifting rules", buf, 2u);
      }

      *__error() = v19;
    }

    v6 = *(a2 + 288);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(a2 + 264);
      do
      {
        v9 = (v8 + 24 * v7);
        if (v9[1] >= 1)
        {
          v10 = 0;
          do
          {
            processScopeTerms(a1, v21, *(a1 + 1992), *(*v9 + 8 * v10), "_kMDQueryItemInScopeForRankingOnly");
            translateSDBQuery(*(*(*(a2 + 264) + 24 * v7) + 8 * v10));
            v12 = v11;
            v13 = compileToIndexQuery(v11, *(a2 + 360));
            siquerynode_release(v12);
            db_free_query_node(*(*(*(a2 + 264) + 24 * v7) + 8 * v10));
            v14 = optimizeLiftingQuery(a1, v13, a3);
            v15 = v14;
            if (*(v14 + 24) == 16)
            {
              goto LABEL_14;
            }

            v30 = 0;
            v31 = &v30;
            v32 = 0x2000000000;
            v33 = 0;
            v16 = (*(a1 + 6584) >> 25) & 3;
            *buf = MEMORY[0x1E69E9820];
            v24 = 0x40000000;
            v25 = __queryIsUnpalatable_block_invoke;
            v26 = &unk_1E8196540;
            v27 = &v30;
            v28 = a1;
            v29 = v16;
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 0x40000000;
            v34[2] = __db_query_tree_apply_block_block_invoke;
            v34[3] = &unk_1E8198ED0;
            v34[4] = buf;
            db_query_tree_apply_block_with_meta(v14, v34, 0);
            v17 = *(v31 + 24);
            _Block_object_dispose(&v30, 8);
            if (v17)
            {
LABEL_14:
              *(*(*(a2 + 264) + 24 * v7) + 8 * v10) = 0;
              *buf = MEMORY[0x1E69E9820];
              v24 = 0x40000000;
              v25 = __db_query_tree_apply_block_block_invoke;
              v26 = &unk_1E8198ED0;
              v27 = &__block_literal_global_174;
              db_query_tree_apply_block_with_meta(v15, buf, 0);
            }

            else
            {
              *(*(*(a2 + 264) + 24 * v7) + 8 * v10) = v15;
            }

            ++v10;
            v8 = *(a2 + 264);
            v9 = (v8 + 24 * v7);
          }

          while (v9[1] > v10);
          v6 = *(a2 + 288);
        }

        ++v7;
      }

      while (v7 < v6);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void si_opt_cache_destroy(uint64_t a1)
{
  if (*(a1 + 16))
  {
    SILocalizationRelease();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 8) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 32) = 0;
}

uint64_t db_count_query_tree(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_count_query_tree_block_invoke;
  v3[3] = &unk_1E8199040;
  v3[4] = &v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __db_query_tree_apply_block_block_invoke;
  v8[3] = &unk_1E8198ED0;
  v8[4] = v3;
  db_query_tree_apply_block_with_meta(a1, v8, 0);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t db_get_object_count(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *a1;
      *buf = 136315650;
      v15 = "db_get_object_count";
      v16 = 1024;
      v17 = 242;
      v18 = 1024;
      v19 = v10;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v8;
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 242, v13);
    free(v12);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (db_read_lock(a1 + 584))
  {
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15163);
  }

  v2 = *(a1 + 20);
  v3 = *(*(a1 + 992) + 40);
  v4 = pthread_mutex_lock((a1 + 584));
  v5 = *(a1 + 780) - 1;
  *(a1 + 780) = v5;
  if (!v5)
  {
    db_rwlock_wakeup(a1 + 584, 0, 0);
  }

  pthread_mutex_unlock((a1 + 584));
  if (v4)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15165);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3 + v2;
}

uint64_t RLEOIDArrayCreateMutable(uint64_t a1)
{
  if (!__kRLEOIDArrayTypeID)
  {
    __kRLEOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 216) = 0;
  *(Instance + 224) = 0;
  *(Instance + 240) = 0;
  *(Instance + 248) = a1;
  v3 = MEMORY[0x1C691E420](a1, 8072, 0xA00408091C53FLL, 0);
  bzero(v3, 0x1F88uLL);
  *(Instance + 232) = v3;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 288) = 0u;
  *(Instance + 304) = 0u;
  *(Instance + 320) = 0u;
  *(Instance + 336) = 0u;
  *(Instance + 352) = 0u;
  *(Instance + 368) = 0u;
  *(Instance + 384) = 1;
  return Instance;
}

uint64_t __expandFunctions_block_invoke(int a1, char *__str, size_t __size, double a4)
{
  if (trunc(a4) == a4)
  {
    return snprintf(__str, __size, "%lld");
  }

  else
  {
    return snprintf(__str, __size, "%f");
  }
}

BOOL SIQueryAddResultFilter(uint64_t a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 360);
  v5 = *(a1 + 208);
  v6 = queryFromCFString(a2);
  if (dword_1EBF46AD0 >= 5)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 8);
      *buf = 138412546;
      *&buf[4] = a2;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "Adding filter %@ to query %@", buf, 0x16u);
    }

    *__error() = v17;
  }

  v7 = v6 != 0;
  if (v6)
  {
    if (*(a1 + 672) == 1)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E8198ED0;
      v21 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v6, buf, &__block_literal_global_25_15416);
      *buf = v8;
      if (v8)
      {
        decorateExpandingFunctions(v8, *a1, *(a1 + 656), *(a1 + 360));
        db_optimize_query_tree(buf);
        Mutable = *(a1 + 728);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          *(a1 + 728) = Mutable;
        }

        CFArrayAppendValue(Mutable, a2);
        Count = CFArrayGetCount(*(a1 + 728));
        v11 = malloc_type_realloc(*(a1 + 736), 8 * Count, 0x80040B8603338uLL);
        *(a1 + 736) = v11;
        v11[Count - 1] = *buf;
      }
    }

    v12 = *(a1 + 80);
    if (v12)
    {
      v6 = makeAndNode(v12, v6, 1, 1);
    }

    *(a1 + 80) = v6;
  }

  else
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "SIQueryAddResultFilter";
      *&buf[12] = 1024;
      *&buf[14] = 1014;
      *&buf[18] = 2112;
      *&buf[20] = a2;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding filter: %@", buf, 0x1Cu);
    }

    *__error() = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

void *makeAndNode(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = *(a1 + 48);
  if (v8 == 32)
  {
    if (a3)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a1, &v16, 0);
    }

    if (v4)
    {
      return v6;
    }

    goto LABEL_20;
  }

  v10 = *(a2 + 48);
  if (v10 == 32)
  {
    if (a4)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a2, &v16, 0);
    }

    if (v5)
    {
      return v7;
    }

LABEL_15:
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    v11 = v7;
LABEL_21:
    db_query_tree_apply_block_with_meta(v11, &v16, &__block_literal_global_25_15416);
    return v12;
  }

  if (v8 == 16)
  {
    if (a4)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a2, &v16, 0);
    }

    if (v5)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if (v10 == 16)
  {
    if (a3)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a1, &v16, 0);
    }

    if (v4)
    {
      return v6;
    }

LABEL_20:
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    v11 = v6;
    goto LABEL_21;
  }

  v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
  if ((v5 & 1) == 0)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v7, &v16, &__block_literal_global_25_15416);
    v7 = v14;
  }

  *v9 = v7;
  if ((v4 & 1) == 0)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v6, &v16, &__block_literal_global_25_15416);
    v6 = v15;
  }

  v9[1] = v6;
  *(v9 + 24) = 2;
  return v9;
}

void si_routine_suggestions(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void userinitiated_query_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void si_querypipe_set_semaphore(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    v6 = *(a1 + 16);
    v5 = (a1 + 16);
    v4 = v6;
    if (!v6)
    {
      atomic_fetch_add(&gActiveQueries, 1uLL);
      goto LABEL_9;
    }
  }

  else
  {
    v5 = (a1 + 16);
    v4 = *(a1 + 16);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  dispatch_semaphore_signal(v4);
  dispatch_release(*v5);
  *v5 = 0;
  if (!object && atomic_fetch_add(&gActiveQueries, 0xFFFFFFFFFFFFFFFFLL) == 1 && gMemoryPressureCritical == 1)
  {
    si_flushCaches(2);
  }

LABEL_9:
  *v5 = object;
}

void _queryGoCracked(uint64_t a1, uint64_t a2, CFArrayRef cf, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v36 = *__error();
    v37 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 608);
      v39 = *(a1 + 616);
      v40 = (*(a2 + 60) & 0xFFFFFFFD) == 1;
      Length = *(a1 + 32);
      if (Length)
      {
        Length = CFStringGetLength(Length);
      }

      *block = 134218752;
      *&block[4] = v38;
      *&block[12] = 2048;
      *&block[14] = v39;
      *&block[22] = 1024;
      *&block[24] = v40;
      *&block[28] = 2048;
      *&block[30] = Length;
      _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "Start execution: qid=(%lld,%lld), pc=%d, uql=%ld", block, 0x26u);
    }

    *__error() = v36;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    *(a1 + 384) = CFAbsoluteTimeGetCurrent();
  }

  if (*(a4 + 96))
  {
    goto LABEL_68;
  }

  v7 = a4;
  do
  {
    v8 = v7;
    v7 = *(v7 + 80);
  }

  while (v7);
  if (*(*(v8 + 8) + 12) & 1) != 0 || (*(a4 + 97))
  {
    goto LABEL_68;
  }

  if (cf || (cf = *(a1 + 176)) != 0 || (cf = *(a1 + 184)) != 0)
  {
    CFRetain(cf);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  if ((*(a1 + 696) & 1) == 0)
  {
    memset(block, 0, 40);
    si_opt_cache_init(block, *(a4 + 88));
    si_query_prepare_lifting(a2, a1, block);
    si_opt_cache_destroy(block);
  }

  if ((*(a1 + 201) & 2) != 0)
  {
    if ((v9 & 1) == 0)
    {
      if (CFArrayGetCount(cf))
      {
        goto LABEL_28;
      }

      CFRelease(cf);
    }

    bzero(block, 0x400uLL);
    v10 = *(a2 + 48);
    if (v10 == -1)
    {
      v13 = "/";
    }

    else
    {
      v11 = fcntl(v10, 50, block);
      if (block[0])
      {
        v12 = v11 < 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = block;
      }
    }

    v14 = *MEMORY[0x1E695E480];
    values[0] = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x1E695E480], v13);
    cf = CFArrayCreate(v14, values, 1, MEMORY[0x1E695E9C0]);
    CFRelease(values[0]);
  }

LABEL_28:
  v15 = *(a1 + 200);
  if ((v15 & 0x1000000) == 0 && (*(a2 + 828) & 0x28) != 0)
  {
    *(a1 + 200) = v15 | 0x1000000;
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    if (!cf)
    {
      goto LABEL_35;
    }

    if (CFArrayGetCount(cf))
    {
      v16 = *(a1 + 72);
LABEL_35:
      values[0] = 0;
      values[1] = values;
      values[2] = 0x2000000000;
      v50 = 0;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 0x40000000;
      v48[2] = ___queryGoCracked_block_invoke;
      v48[3] = &unk_1E8196688;
      v48[4] = values;
      v48[5] = a2;
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      *&block[16] = __db_query_tree_apply_block_block_invoke;
      *&block[24] = &unk_1E8198ED0;
      *&block[32] = v48;
      db_query_tree_apply_block_with_meta(v16, block, &__block_literal_global_451);
      *(a1 + 72) = v17;
      v18 = *(a1 + 144);
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      *&block[16] = __query_once_block_invoke;
      *&block[24] = &__block_descriptor_tmp_518;
      *&block[32] = a1;
      if (v18 != -1)
      {
        dispatch_once((a1 + 144), block);
      }

      v19 = *(a1 + 200);
      if (*(a1 + 152) == 1 && (v19 & 0x80) != 0)
      {
        if ((_getByGroupGroupingQueries_initialized & 1) == 0)
        {
          for (i = 0; i != 17; ++i)
          {
            if (!grouping_queryByGroupNodes[i])
            {
              query_node_with_ann = db_make_query_node_with_ann(grouping_queryByGroupStrings[i], 0);
              v22 = 0;
              atomic_compare_exchange_strong_explicit(&grouping_queryByGroupNodes[i], &v22, query_node_with_ann, memory_order_relaxed, memory_order_relaxed);
              if (v22)
              {
                db_free_query_node(query_node_with_ann);
              }
            }
          }

          __dmb(0xBu);
          _getByGroupGroupingQueries_initialized = 1;
        }

        for (j = 0; j != 17; ++j)
        {
          v24 = makeAndNode(grouping_queryByGroupNodes[j], *(a1 + 72), 0, 0);
          translateSDBQuery(v24);
          v26 = v25;
          *block = 0;
          if (cf)
          {
            v27 = CFArrayGetCount(cf) != 0;
          }

          else
          {
            v27 = 0;
          }

          v28 = rewriteForSources(v26, block, v27);
          siquerynode_release(v26);
          v29 = doExecuteCracked(a1, a2, cf, *(a1 + 200) & 0xFFFFFFFFFFFFBFFFLL, *block, v28, *(a1 + 16), a4);
          if (dword_1EBF46AD0 >= 5)
          {
            v33 = *__error();
            v34 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "Started normal (grouping) query threadlet.", buf, 2u);
            }

            *__error() = v33;
          }

          v30 = *block;
          if (v28 >= 1)
          {
            v31 = (*block + 8);
            do
            {
              v32 = *(v31 - 1);
              if (v32)
              {
                siquerynode_release(v32);
              }

              if (*v31)
              {
                siquerynode_release(*v31);
              }

              v31 += 2;
              --v28;
            }

            while (v28);
          }

          free(v30);
          db_free_query_node(v24);
        }
      }

      else
      {
        v29 = doExecuteCracked(a1, a2, cf, v19, *(a1 + 128), *(a1 + 136), *(a1 + 16), a4);
        if (dword_1EBF46AD0 >= 5)
        {
          v44 = *__error();
          v45 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *block = 0;
            _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "Started normal query threadlet.", block, 2u);
          }

          *__error() = v44;
        }
      }

      _Block_object_dispose(values, 8);
      if (v29)
      {
        goto LABEL_66;
      }
    }
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v42 = *__error();
    v43 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *block = 134217984;
      *&block[4] = a2;
      _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "Could not execute query for %p (!)", block, 0xCu);
    }

    *__error() = v42;
    if (cf)
    {
      goto LABEL_67;
    }

    goto LABEL_68;
  }

LABEL_66:
  if (cf)
  {
LABEL_67:
    CFRelease(cf);
  }

LABEL_68:
  v35 = *MEMORY[0x1E69E9840];
}

void *___queryGoCracked_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) != 4)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_37;
  }

  v4 = v3[4];
  if ((v4 & 0x1008000) != 0x1000000)
  {
    goto LABEL_37;
  }

  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_37;
  }

  if (*v5 == 42)
  {
    v7 = *(v5 + 1) == 0;
    if ((v4 & 0x400) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if ((v4 & 0x400) != 0)
    {
      goto LABEL_15;
    }
  }

  if (!v7 && strcmp(v5, "kMDItemTextContent"))
  {
    if (!strncmp(v5, "_kMDItemOCRContent", 0x12uLL))
    {
      v9 = 0;
      v8 = 1;
    }

    else if (!strcmp(v5, "kMDItemDisplayName") || !strcmp(v5, "kMDItemSubject"))
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = strcmp(v5, "kMDItemTitle") == 0;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
  v8 = !v7;
LABEL_16:
  v40 = (v4 >> 26) & 2;
  v39 = 0;
  if (((v7 | v8) & 1) != 0 || v9)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(1);
    v12 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v2[2];
      v14 = *v13;
      v15 = v13[9];
      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&dword_1C278D000, v11, v12, "Segmenting %s %s", buf, 0x16u);
    }

    *__error() = v10;
    v38 = *(v2[2] + 72);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v42 = 0;
    if ((v8 & 1) == 0)
    {
      v16 = *(*(a1 + 40) + 6648);
      if (v16)
      {
        _CITermUpdateSetFindTokens(v16);
      }
    }

    v17 = *(a1 + 40);
    v18 = *(v17 + 1392);
    v19 = *(v17 + 1384);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v30 = ___queryGoCracked_block_invoke_445;
    v31 = &unk_1E8196660;
    v37 = v8;
    v34 = &v40;
    v35 = &v39;
    v36 = v17;
    v32 = buf;
    v33 = &v38;
    if (v19)
    {
      v20 = *(v19 + 8);
      while (v20 >= 1)
      {
        v21 = v20 - 1;
        v22 = (v30)(v29, *(*v19 + 8 * v20 - 8), 1);
        v20 = v21;
        if (!v22)
        {
          goto LABEL_32;
        }
      }
    }

    if (v18)
    {
      v23 = *(v18 + 8);
      do
      {
        if (v23 < 1)
        {
          break;
        }

        v24 = v23 - 1;
        v25 = (v30)(v29, *(*v18 + 8 * v23 - 8), 0);
        v23 = v24;
      }

      while (v25);
    }

LABEL_32:
    _Block_object_dispose(buf, 8);
    if (v39)
    {
      if (*(v39 + 6))
      {
        node_from_token_data = query_node_from_token_data(v39, v2);
        if (node_from_token_data != v2)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          v2 = node_from_token_data;
        }
      }
    }
  }

  TokenDataDispose(v39);
LABEL_37:
  v27 = *MEMORY[0x1E69E9840];
  return v2;
}

void si_routine_protectionClassC(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void queryGo(uint64_t *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v4 = a1[2];
    if ((*(v4 + 96) & 1) == 0)
    {
      v5 = a1[2];
      do
      {
        v6 = v5;
        v5 = *(v5 + 80);
      }

      while (v5);
      if ((*(*(v6 + 8) + 12) & 1) == 0 && (*(v4 + 97) & 1) == 0)
      {
        v7 = *a1;
        v8 = *(v7 + 8 * query_priority(a1[1]) + 832);
        if (*(a1[2] + 16) == v8)
        {
          v9 = *__error();
          v10 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v15 = 136315394;
            v16 = "queryGo";
            v17 = 1024;
            v18 = 4393;
            _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: queryGo attempted to wait on already held semaphore", &v15, 0x12u);
          }

          *__error() = v9;
        }

        else
        {
          dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
          si_querypipe_set_semaphore(a1[2], v8);
        }

        _queryGoCracked(a1[1], *a1, 0, a1[2]);
      }
    }
  }

  si_querypipe_remove_process(a1[2], a1[1], 0, a2 != 0);
  v11 = a1[1];
  if ((*(v11 + 202) & 4) == 0)
  {
    si_querypipe_remove_process(a1[2], v11, 0, a2 != 0);
  }

  v12 = a1[4];
  if (v12)
  {
    CFRelease(v12);
  }

  a1[4] = 0;
  v13 = a1[1];
  if (atomic_fetch_add((v13 + 584), 0xFFFFFFFF) == 1)
  {
    si_query_free(v13);
  }

  si_querypipe_release(a1[2]);
  free(a1);
  v14 = *MEMORY[0x1E69E9840];
}

atomic_uint *si_querypipe_copy_jobid(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 80);
  }

  while (a1);
  pthread_mutex_lock(&jobsLock);
  v2 = *(v1 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  pthread_mutex_unlock(&jobsLock);
  return v2;
}

void si_release_qid(uint64_t a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    pthread_mutex_destroy((a1 + 48));
    v3 = *(a1 + 24);
    if (v3)
    {
      si_querypipe_release(v3);
    }

    free(a1);
  }
}

void __query_once_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  if ((v3 & 0x600000) == 0 || (v3 & 0x600000) == 0x600000)
  {
    goto LABEL_8;
  }

  if ((v3 & 0x400000) != 0)
  {
    v4 = "kMDItemContentType!='com.apple.ical.ics.todo' || _kMDItemFinderExcluded!=1";
  }

  else
  {
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    v4 = "_kMDItemGroupId!=6 || (kMDItemContentType=='com.apple.ical.ics.todo' || _kMDItemFinderExcluded!=1)";
  }

  v5 = *(v2 + 72);
  query_node_with_ann = db_make_query_node_with_ann(v4, 0);
  v7 = makeAndNode(v5, query_node_with_ann, 1, 1);
  v2 = *(a1 + 32);
  *(v2 + 72) = v7;
LABEL_8:
  v8 = *(v2 + 72);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __db_query_tree_apply_block_block_invoke;
  v15[3] = &unk_1E8198ED0;
  v15[4] = &__block_literal_global_33_4954;
  db_query_tree_apply_block_with_meta(v8, v15, &__block_literal_global_37_4955);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    *(v9 + 16) = *(v8 + 56) & 1;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 176);
  if (v13)
  {
    v14 = CFArrayGetCount(v13) != 0;
  }

  else
  {
    v14 = 0;
  }

  *(*(a1 + 32) + 136) = rewriteForSources(v10, (v12 + 128), v14);

  siquerynode_release(v10);
}

_BYTE *___translateSDBQuery_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 48) & 0xFFF7u) > 0x20)
  {
LABEL_13:
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Unexpected node type %x", "siquerynode.c", 445, "0", v8, *(a2 + 48));
    free(v7);
    if (__valid_fs(-1))
    {
      v9 = 2989;
    }

    else
    {
      v9 = 3072;
    }

    *v9 = -559038737;
    abort();
  }

  if (((1 << (*(a2 + 48) & 0xF7)) & 0x100010010) == 0)
  {
    if (((1 << (*(a2 + 48) & 0xF7)) & 6) != 0)
    {
      return a2;
    }

    goto LABEL_13;
  }

  if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
  {
    ++sTotal_4940;
  }

  v3 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
  if (!v3)
  {
    _log_fault_for_malloc_failure();
  }

  *v3 = 3;
  v3[17] = (*(a2 + 56) & 0x200) != 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __db_query_tree_apply_block_block_invoke;
  v10[3] = &unk_1E8198ED0;
  v10[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a2, v10, &__block_literal_global_25_15416);
  *(v3 + 3) = v4;
  return v3;
}

_BYTE *___translateSDBQuery_block_invoke_2(uint64_t a1, uint64_t a2, void **a3, _DWORD *a4)
{
  v7 = *(a2 + 48) & 0xFFF7;
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    if (v7 != 2)
    {
      v24 = __si_assert_copy_extra_332();
      v21 = v24;
      v25 = "";
      if (v24)
      {
        v25 = v24;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 468, "0", v25);
      goto LABEL_24;
    }

    v8 = 1;
  }

  v9 = 0;
  if (a3 && a4)
  {
    v10 = *a3;
    if (v8 == *a4)
    {
      if (v8 != v10)
      {
        v15 = *(a4 + 4);
        v16 = *(a4 + 3) + 1;
        *(a4 + 3) = v16;
        v17 = malloc_type_realloc(v15, 8 * v16, 0x2004093837F09uLL);
        *(a4 + 4) = v17;
        v17[*(a4 + 3) - 1] = a3;
        v9 = a4;
        goto LABEL_19;
      }

      v11 = malloc_type_realloc(a3[4], 8 * (a3[3] + *(a4 + 3)), 0x2004093837F09uLL);
      a3[4] = v11;
      memcpy(&v11[8 * a3[3]], *(a4 + 4), 8 * *(a4 + 3));
      a3[3] = a3[3] + *(a4 + 3);
      free(*(a4 + 4));
      free(a4);
    }

    else
    {
      if (v8 != v10)
      {
        if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
        {
          ++sTotal_4940;
        }

        v9 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
        if (!v9)
        {
          _log_fault_for_malloc_failure();
        }

        *v9 = v8;
        v9[17] = (*(a2 + 56) & 0x200) != 0;
        *(v9 + 3) = 2;
        v18 = malloc_type_calloc(1uLL, 0x10uLL, 0x2004093837F09uLL);
        *(v9 + 4) = v18;
        *v18 = a3;
        *(*(v9 + 4) + 8) = a4;
        goto LABEL_19;
      }

      v12 = a3[4];
      v13 = a3[3] + 1;
      a3[3] = v13;
      v14 = malloc_type_realloc(v12, 8 * v13, 0x2004093837F09uLL);
      a3[4] = v14;
      v14[a3[3] - 1] = a4;
    }

    v9 = a3;
LABEL_19:
    if (*(v9 + 3) > 1)
    {
      return v9;
    }

    v20 = __si_assert_copy_extra_332();
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 501, "sinode->node.mnode.nodeCount>=2", v22);
LABEL_24:
    free(v21);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  return v9;
}

uint64_t si_dglock_rdunlock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = *(a1 + 196) - 1;
  *(a1 + 196) = v3;
  if (!v3)
  {
    db_rwlock_wakeup(a1, 0, 0);
  }

  pthread_mutex_unlock(a1);
  return v2;
}

unsigned int *processNodes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 368);
  v12 = *(*(a1 + 24) + 6640);
  if (v12 && CFSetContainsValue(v12, *(a2 + 56)))
  {
    v57 = *(*(a1 + 24) + 6632);
  }

  else
  {
    v57 = 0;
  }

  if (((a6 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * a6 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v58 = malloc_type_zone_calloc(queryZone, 1uLL, 8 * a6, 0x5BAF1CEAuLL);
  if (!v58)
  {
    _log_fault_for_malloc_failure();
  }

  keyCallBacks = *byte_1F427CC10;
  v13 = CFDictionaryCreateMutable(kCIQueryZoneAllocator, a6, &keyCallBacks, 0);
  v14 = 0;
  if (a6)
  {
    v15 = a4;
    v16 = a6;
    do
    {
      v17 = CFDictionaryContainsKey(v13, *v11);
      v18 = *v11;
      if (v17)
      {
        *v15 = CFDictionaryGetValue(v13, v18);
      }

      else
      {
        CFDictionaryAddValue(v13, v18, v14);
        *v15 = v14;
        v58[v14++] = *v11;
      }

      ++v15;
      ++v11;
      --v16;
    }

    while (v16);
  }

  CFRelease(v13);
  v19 = 0;
  v20 = 8 * a6;
  do
  {
    v21 = *(a1 + 104);
    if (*(v21 + 96))
    {
      break;
    }

    do
    {
      v22 = v21;
      v21 = *(v21 + 80);
    }

    while (v21);
    if (*(*(v22 + 8) + 12))
    {
      break;
    }

    if (v19 && dword_1EBF46B00 >= 5)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v64) = 134217984;
        *(&v64 + 4) = v19;
        _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "Looping %ld", &v64, 0xCu);
      }

      *__error() = v29;
    }

    bzero(a5, v20);
    v23 = *(a2 + 8);
    v24 = *(a1 + 8);
    v25 = v24[82];
    *&v64 = v24[4];
    *(&v64 + 1) = v25;
    v65 = v24[9];
    NodesLazy = __CIMatchQueryNodesLazy(a2, v57, v14, v58, a5, 0, HIBYTE(*(*(a1 + 24) + 6584)) & 1, 0, (*(a1 + 104) + 96), &v64);
    if (v23 == 1 && (*(a2 + 8) & 1) == 0)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v61 = "processNodes";
        v62 = 1024;
        v63 = 323;
        _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: Index became unavailable", buf, 0x12u);
      }

      *__error() = v27;
      *(a1 + 1193) = 1;
      v20 = 8 * a6;
    }

    if (NodesLazy)
    {
      goto LABEL_34;
    }

    ++v19;
  }

  while (v19 != 5);
  NodesLazy = 0;
LABEL_34:
  free(v58);
  v31 = *(a1 + 104);
  if (*(v31 + 96))
  {
    v34 = NodesLazy != 0;
    v32 = a3;
LABEL_72:
    v51 = *(a1 + 832);
    if (v51)
    {
      for (i = 0; i < v51; ++i)
      {
        v53 = *(v32 + 8 * i);
        if (v53)
        {
          ContentIndexDocSetCleanupBorrowedChildren(v53);
          ContentIndexDocSetDispose(*(v32 + 8 * i));
          v51 = *(a1 + 832);
        }

        *(v32 + 8 * i) = 0;
      }
    }

    if (v34)
    {
      ContentIndexDocSetContextRelease(NodesLazy);
      for (; v14; --v14)
      {
        if (*a5)
        {
          ContentIndexDocSetCleanupBorrowedChildren(*a5);
          ContentIndexDocSetDispose(*a5);
        }

        ++a5;
      }
    }

    if (a6)
    {
      bzero(a4, v20);
    }

    NodesLazy = 0;
    goto LABEL_85;
  }

  v32 = a3;
  do
  {
    v33 = v31;
    v31 = *(v31 + 80);
  }

  while (v31);
  v34 = NodesLazy != 0;
  if ((*(*(v33 + 8) + 12) & 1) != 0 || !NodesLazy)
  {
    goto LABEL_72;
  }

  if (a6)
  {
    while (v14 > *a4)
    {
      v35 = a5[*a4];
      if (!v35)
      {
        v48 = __si_assert_copy_extra_332();
        v46 = v48;
        v49 = "";
        if (v48)
        {
          v49 = v48;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 357, "cidocs[(size_t)docs[i]]", v49);
        goto LABEL_67;
      }

      atomic_fetch_add(v35, 1u);
      *a4++ = v35;
      if (!--a6)
      {
        goto LABEL_45;
      }
    }

    v45 = __si_assert_copy_extra_332();
    v46 = v45;
    v47 = "";
    if (v45)
    {
      v47 = v45;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 356, "(size_t)docs[i]<j", v47);
LABEL_67:
    free(v46);
    if (__valid_fs(-1))
    {
      v50 = 2989;
    }

    else
    {
      v50 = 3072;
    }

    *v50 = -559038737;
    abort();
  }

  for (; v14; --v14)
  {
LABEL_45:
    ContentIndexDocSetDispose(*a5);
    *a5++ = 0;
  }

  v36 = *(a1 + 832);
  if (v36)
  {
    v37 = 0;
    for (j = 0; j < v36; ++j)
    {
      v39 = *(a3 + 8 * j);
      if (!v39 || !*(v39 + 48))
      {
        v40 = *(a1 + 840);
        v41 = *(v40 + v37);
        if (v41)
        {
          clear_node_field_caches(v41);
          v40 = *(a1 + 840);
        }

        v42 = *(v40 + v37 + 8);
        if (v42)
        {
          clear_node_field_caches(v42);
          v40 = *(a1 + 840);
        }

        v43 = *(v40 + v37 + 16);
        if (v43)
        {
          clear_node_field_caches(v43);
          v40 = *(a1 + 840);
        }

        v44 = *(v40 + v37 + 24);
        if (v44)
        {
          clear_node_field_caches(v44);
        }

        *(a1 + 643) = 0;
        v36 = *(a1 + 832);
      }

      v37 += 48;
    }
  }

LABEL_85:
  v54 = *MEMORY[0x1E69E9840];
  return NodesLazy;
}

double findTermIDsInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a10 + 24) = a3;
  *(a10 + 32) = a4;
  *(a10 + 8) = a1;
  *(a10 + 16) = a2;
  *(a10 + 48) = *(a1 + 4584);
  v10 = *(a1 + 32);
  *(a10 + 64) = (*(a1 + 144) + 1);
  *(a10 + 72) = v10;
  *(a10 + 80) = *(a1 + 392);
  LODWORD(v10) = *a1 >> 1;
  v11 = *a1 >> 3;
  v12 = (*a1 & 7) << 32;
  if ((*a1 & 3) == 1)
  {
    v12 = 0x100000000;
    v11 = *a1 >> 2;
  }

  if (*a1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (*a1)
  {
    v10 = v11;
  }

  else
  {
    v10 = v10;
  }

  *(a10 + 52) = v13 | v10;
  *(a10 + 1160) = a8;
  *(a10 + 1168) = a9;
  *a10 = a5;
  *(a10 + 88) = 0;
  *(a10 + 1140) = 0;
  *(a10 + 1144) = a7;
  *(a10 + 1152) = a6;
  *(a10 + 1288) = 0;
  if (a6)
  {
    v14 = a6;
    v15 = a7 + 16;
    while ((*(v15 + 2) & 1) == 0)
    {
      v15 += 64;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    *(a10 + 1288) = 1;
  }

LABEL_15:
  *(a10 + 1176) = 0;
  *(a10 + 1289) = 0;
  *(a10 + 1264) = 0u;
  v22 = 0;
  v16 = MEMORY[0x1E69E9AC8];
  v17 = *MEMORY[0x1E69E9AC8];
  v18 = 0;
  if (!my_vm_allocate(&v22, *MEMORY[0x1E69E9AC8], 0xF8000001))
  {
    v18 = v22;
    v19 = v22 + 24;
    *v22 = 0;
    *(v18 + 1) = v19;
    *(v18 + 2) = &v18[v17];
    madvise(v19, *v16, 3);
  }

  *(a10 + 1208) = v18;
  *(a10 + 1180) = 1024;
  v20 = malloc_type_zone_malloc(queryZone, 0x2000uLL, 0xA4971684uLL);
  if (!v20)
  {
    _log_fault_for_malloc_failure();
  }

  *(a10 + 40) = v20;
  *(a10 + 1284) = 0;
  result = 0.0;
  *(a10 + 1192) = 0u;
  return result;
}

unsigned int *__CIMatchQueryNodesLazy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unsigned int a7, char a8, _BYTE *a9, uint64_t a10)
{
  v10 = 0;
  v412 = *MEMORY[0x1E69E9840];
  v407 = 0;
  v408 = 0;
  v406 = 0;
  if (*(a1 + 8) != 1)
  {
    goto LABEL_383;
  }

  v13 = a5;
  v15 = a3;
  if (a3 < 1)
  {
    v31 = 0;
    v33 = 0;
    v32 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v19) = 0;
    do
    {
      v20 = v16;
      v21 = v17;
      v22 = *(a4 + 8 * v17);
      v19 = v19 || (v22[1] & 0x3080) != 0;
      v23 = *v22;
      v24 = v23;
      if (v23 < 1)
      {
        v29 = 0;
      }

      else
      {
        v25 = (v22 + 6);
        v26 = 0;
        do
        {
          v27 = *v25;
          v25 += 4;
          v28 = v27 - 1;
          if (v27 <= 1)
          {
            v28 = 0;
          }

          v26 += v28;
          v29 = v26;
          --v23;
        }

        while (v23);
      }

      v30 = v24 + v20;
      v31 = v29 + v18;
      a5[v21] = 0;
      v17 = v21 + 1;
      v32 = v19;
      v18 += v29;
      v16 = v30;
      v33 = v30;
    }

    while (v17 != a3);
  }

  v34 = v33;
  v35 = v31;
  v375 = v32;
  v405 = v33;
  if (v33 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v33;
  }

  v373 = malloc_type_malloc(8 * v36, 0x2004093837F09uLL);
  v37 = v34 + v35;
  v374 = malloc_type_zone_malloc(queryZone, v37 << 6, 0xA4971684uLL);
  if (!v374)
  {
    _log_fault_for_malloc_failure();
  }

  v372 = v34;
  v390 = v34;
  v389 = malloc_type_zone_malloc(queryZone, 72 * v34, 0xA4971684uLL);
  if (!v389)
  {
    _log_fault_for_malloc_failure();
  }

  v393 = a4;
  v38 = malloc_type_zone_malloc(queryZone, 8 * v37, 0xA4971684uLL);
  if (!v38)
  {
    _log_fault_for_malloc_failure();
  }

  v39 = malloc_type_zone_malloc(queryZone, 8 * v37, 0xA4971684uLL);
  if (!v39)
  {
    _log_fault_for_malloc_failure();
  }

  size = v37;
  v40 = v390;
  if (v375)
  {
    v41 = &qword_1EDD81000;
    if ((((9 * v37) >> 14) & 0x7FFFFFFFFFFFLL) == 0 && (72 * v37) > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_14063;
    }

    v42 = malloc_type_zone_calloc(queryZone, 0x48uLL, v37, 0x5BAF1CEAuLL);
    v43 = a6;
    if (!v42)
    {
      _log_fault_for_malloc_failure();
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
    v41 = &qword_1EDD81000;
    v43 = a6;
  }

  v387 = v42;
  if ((a8 & 1) == 0)
  {
    db_read_lock(a1 + 14720);
  }

  v44 = a1;
  v45 = *(a1 + 14392);
  v46 = *(a1 + 14400);
  v384 = v45;
  if (v45 && (atomic_fetch_add(v45, 1u), v43) && *(v45 + 584) <= v43)
  {
    v47 = 1;
    v46 = 0;
  }

  else
  {
    if (v46)
    {
      atomic_fetch_add(v46, 1u);
    }

    v47 = 0;
  }

  v385 = v47;
  v383 = v46;
  v388 = *(a1 + 60);
  v376 = *(a1 + 9680);
  if ((a8 & 1) == 0)
  {
    db_read_unlock(a1 + 14720);
    v44 = a1;
  }

  v386 = a7;
  v404 = 0;
  if (*(v44 + 8) != 1)
  {
    v55 = a9;
    i = v389;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      v57 = 0;
      v58 = 0;
      goto LABEL_354;
    }

LABEL_57:
    v58 = 0;
    v57 = 0;
    goto LABEL_354;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v48 = setThreadIdAndInfo(*(v44 + 64), sIndexExceptionCallbacks, v44, 0x20000000, add_explicit + 1);
  v402 = HIDWORD(v48);
  v403 = v48;
  v400 = v50;
  v401 = v49;
  v51 = threadData[9 * v48 + 1] + 320 * HIDWORD(v48);
  *(v51 + 216) = 0;
  v379 = *(v51 + 312);
  v52 = *(v51 + 224);
  v53 = v51;
  i = v389;
  if (v52)
  {
    v52(*(v51 + 288));
  }

  if (_setjmp(v53))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v53 + 312) = v379;
    v55 = a9;
    if ((~*(v53 + 212) & 0xA0000000) == 0)
    {
      v56 = *(v53 + 288);
      if (v56)
      {
        _CIMakeInvalid(v56);
      }
    }

    CIOnThreadCleanUpReset(v400);
    dropThreadId(v403, 1, add_explicit + 1);
    CICleanUpReset(v403, v401);
    goto LABEL_57;
  }

  v59 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v60 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v59 + 1);
  v398 = HIDWORD(v60);
  v399 = v60;
  v397 = v61;
  v396 = v62;
  v63 = threadData[9 * v60 + 1] + 320 * HIDWORD(v60);
  v377 = *(v63 + 312);
  v64 = *(v63 + 224);
  if (v64)
  {
    v64(*(v63 + 288));
  }

  if (_setjmp(v63))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v63 + 312) = v377;
    CIOnThreadCleanUpReset(v396);
    dropThreadId(v399, 1, v59 + 1);
    CICleanUpReset(v399, v397);
    v58 = 0;
    v65 = 0;
    goto LABEL_351;
  }

  v378 = v59;
  v404 = 1;
  v394 = v13;
  v392 = v15;
  if (v15 < 1)
  {
    v132 = 0;
    v133 = v390;
    v70 = a1;
    goto LABEL_214;
  }

  v66 = 0;
  v67 = v390;
  v68 = 0;
  v69 = 0;
  v70 = a1;
  do
  {
    v367 = v68;
    v71 = v66;
    v369 = v69;
    v72 = *(v393 + 8 * v69);
    v73 = v72;
    v368 = v71;
    if (*v72 < 1)
    {
      goto LABEL_120;
    }

    v74 = 0;
    v354 = v72 + 6;
    v355 = v71;
    v75 = v374;
    do
    {
      v76 = v355 + v74;
      v77 = &v75[8 * v76];
      v78 = &v389[72 * v76];
      v79 = &v354[4 * v74];
      v80 = *(v79 + 1);
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[3];
      v77[2] = v80[2];
      v77[3] = v83;
      *v77 = v81;
      v77[1] = v82;
      *v78 = 0;
      *(v78 + 1) = 0u;
      *(v78 + 2) = 0u;
      *(v78 + 44) = 0u;
      *(v78 + 8) = 0xFFFFFFFFLL;
      *(v78 + 2) = 0;
      if ((v73[1] & 0x3080) != 0)
      {
        if (*MEMORY[0x1E69E9AC8] <= 0x47uLL)
        {
          ++sTotal_6326;
        }

        v84 = malloc_type_zone_calloc(queryZone, 1uLL, 0x48uLL, 0x5BAF1CEAuLL);
        if (!v84 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        }

        v387[v76] = v84;
        *v84 = 0;
        v84[1] = 0u;
        v84[2] = 0u;
        *(v84 + 44) = 0u;
        *(v84 + 8) = 0xFFFFFFFFLL;
        *(v84 + 2) = 0;
      }

      v39[v76] = v78;
      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v85 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!v85 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      atomic_store(1u, v85);
      v85[1] = -1073627135;
      *(v85 + 7) = a1;
      v85[12] = 0;
      *(v85 + 5) = -1;
      v373[v76] = v85;
      v85[13] = v73[2];
      v86 = *MEMORY[0x1E69E9AC8];
      if ((v73[1] & 0x3080) != 0)
      {
        if (v86 <= 0xEF)
        {
          ++sTotal_6326;
        }

        v87 = malloc_type_zone_calloc(queryZone, 1uLL, 0xF0uLL, 0x5BAF1CEAuLL);
        v88 = 8;
        if (v87)
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (v86 <= 0x107)
        {
          ++sTotal_6326;
        }

        v87 = malloc_type_zone_calloc(queryZone, 1uLL, 0x108uLL, 0x5BAF1CEAuLL);
        v88 = 3;
        if (v87)
        {
LABEL_85:
          v89 = v87;
          goto LABEL_92;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      v89 = 0;
LABEL_92:
      *(v373[v76] + 64) = v89;
      v90 = v373[v76];
      *(v90 + 48) = v88;
      v91 = *(v90 + 64);
      v38[v76] = v91;
      *(v91 + 32) = v367;
      if (*v79 < 2)
      {
        v101 = v67;
        v75 = v374;
      }

      else
      {
        v75 = v374;
        v92 = &v374[8 * v67];
        v93 = v67;
        v94 = 1;
        v95 = 64;
        do
        {
          v38[v93] = v38[v76];
          v96 = (*(v79 + 1) + v95);
          v97 = *v96;
          v98 = v96[1];
          v99 = v96[3];
          v92[2] = v96[2];
          v92[3] = v99;
          *v92 = v97;
          v92[1] = v98;
          v92 += 4;
          v39[v93] = v39[v76];
          v100 = v93 + 1;
          ++v94;
          v95 += 64;
          ++v93;
        }

        while (v94 < *v79);
        v101 = v100;
      }

      ++v74;
      v102 = *v73;
      v67 = v101;
    }

    while (v74 < v102);
    v103 = v102;
    if (v102 == 1)
    {
      v104 = v373[v355];
      LODWORD(v105) = 1;
      v106 = v101;
      v70 = a1;
      v41 = &qword_1EDD81000;
      v40 = v390;
      i = v389;
      goto LABEL_126;
    }

    v107 = v102;
    v70 = a1;
    v41 = &qword_1EDD81000;
    v40 = v390;
    i = v389;
    if (v102 < 2)
    {
      v67 = v101;
LABEL_120:
      v120 = v70;
      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v121 = malloc_type_zone_calloc(v41[58], 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!v121 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      atomic_store(1u, v121);
      v121[1] = -1073627135;
      v70 = v120;
      *(v121 + 7) = v120;
      v121[12] = 0;
      *(v121 + 5) = -1;
      v121[5] = 0;
      LODWORD(v105) = *v73;
      v106 = v67;
      v104 = v121;
      goto LABEL_126;
    }

    v108 = v73[1];
    if ((v108 & 0x80) != 0)
    {
      v124 = &v373[v355];
      v125 = v124;
      v102 = v102;
      v126 = 0;
      while (1)
      {
        v127 = *v125;
        if (!*v125)
        {
          goto LABEL_151;
        }

        v128 = *(v127 + 48);
        if (!v128)
        {
          break;
        }

        if (v128 == 1)
        {
          v129 = v126 + 1;
        }

        else
        {
          v129 = v126;
        }

        v126 = v129;
        ++v125;
        if (!--v102)
        {
          v130 = *v124;
          if (v129 == v103)
          {
            if (v130)
            {
              atomic_fetch_add(v130, 1u);
              v119 = v130;
              goto LABEL_187;
            }

LABEL_151:
            v119 = 0;
            goto LABEL_187;
          }

          if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
          {
            ++sTotal_6326;
          }

          v145 = *(v130 + 7);
          v146 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
          if (!v146)
          {
            _log_fault_for_malloc_failure();
          }

          atomic_store(1u, v146);
          v146[1] = -1073627135;
          *(v146 + 7) = v145;
          v146[12] = 9;
          v147 = 8 * v103;
          *(v146 + 5) = -1;
          if (!(v103 >> 14) && *MEMORY[0x1E69E9AC8] < v147)
          {
            ++sTotal_6326;
          }

          v41 = &qword_1EDD81000;
          v148 = malloc_type_zone_calloc(queryZone, 1uLL, v147, 0x5BAF1CEAuLL);
          if (!v148)
          {
            _log_fault_for_malloc_failure();
          }

          *(v146 + 9) = v148;
          v149 = &v373[v355];
          v150 = v107;
          v70 = a1;
          while (2)
          {
            v151 = *v149;
            if (*v149)
            {
              if (v151[12] != 1)
              {
                atomic_fetch_add(v151, 1u);
                goto LABEL_184;
              }
            }

            else
            {
LABEL_184:
              v152 = *(v146 + 9);
              v153 = v146[24];
              v146[24] = v153 + 1;
              *(v152 + 8 * v153) = v151;
            }

            ++v149;
            if (!--v150)
            {
              v119 = v146;
              i = v389;
              goto LABEL_187;
            }

            continue;
          }
        }
      }

      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v136 = *(v127 + 56);
      v137 = *(v127 + 16);
      v138 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!v138)
      {
        _log_fault_for_malloc_failure();
        v138 = 0;
      }

      atomic_store(1u, v138);
      v138[1] = -1073627135;
      *(v138 + 7) = v136;
      v138[12] = 0;
      *(v138 + 5) = -1;
      v138[5] = v137;
      v119 = v138;
      v70 = a1;
LABEL_187:
      LODWORD(v105) = *v73;
      if (*v73 < 1)
      {
        goto LABEL_212;
      }

      v154 = v70;
      v155 = 0;
      do
      {
        v156 = v155;
        ContentIndexDocSetDispose(v124[v155]);
        v155 = v156 + 1;
        v105 = *v73;
      }

      while (v156 + 1 < v105);
LABEL_211:
      v106 = v101;
      v104 = v119;
      v70 = v154;
      v41 = &qword_1EDD81000;
    }

    else if ((v108 & 0x3000) != 0)
    {
      v109 = &v373[v355];
      if ((v108 & 0x1000) != 0)
      {
        v110 = 2;
      }

      else
      {
        v110 = (v108 >> 13) & 1;
      }

      if ((~v108 & 0x3000) != 0)
      {
        v111 = v110;
      }

      else
      {
        v111 = 3;
      }

      v112 = &v373[v355];
      v113 = v103;
      v114 = 0;
      while (1)
      {
        v115 = *v112;
        if (!*v112)
        {
          goto LABEL_159;
        }

        v116 = *(v115 + 48);
        if (!v116)
        {
          break;
        }

        if (v116 == 1)
        {
          v117 = v114 + 1;
        }

        else
        {
          v117 = v114;
        }

        v114 = v117;
        ++v112;
        if (!--v113)
        {
          v118 = *v109;
          if (v117 == v103)
          {
            if (v118)
            {
              atomic_fetch_add(v118, 1u);
              v119 = v118;
              goto LABEL_207;
            }

LABEL_159:
            v119 = 0;
            goto LABEL_207;
          }

          if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
          {
            ++sTotal_6326;
          }

          v157 = *(v118 + 56);
          v158 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
          if (!v158)
          {
            _log_fault_for_malloc_failure();
          }

          atomic_store(1u, v158);
          v158[1] = -1073627135;
          *(v158 + 7) = v157;
          v158[12] = 9;
          *(v158 + 5) = -1;
          v159 = 8 * v103;
          v158[9] = v111;
          if (!(v103 >> 14) && *MEMORY[0x1E69E9AC8] < v159)
          {
            ++sTotal_6326;
          }

          v41 = &qword_1EDD81000;
          v160 = malloc_type_zone_calloc(queryZone, 1uLL, v159, 0x5BAF1CEAuLL);
          if (!v160)
          {
            _log_fault_for_malloc_failure();
          }

          *(v158 + 9) = v160;
          v161 = &v373[v355];
          v162 = v103;
          v70 = a1;
          while (2)
          {
            v163 = *v161;
            if (*v161)
            {
              if (v163[12] != 1)
              {
                atomic_fetch_add(v163, 1u);
                goto LABEL_204;
              }
            }

            else
            {
LABEL_204:
              v164 = *(v158 + 9);
              v165 = v158[24];
              v158[24] = v165 + 1;
              *(v164 + 8 * v165) = v163;
            }

            ++v161;
            if (!--v162)
            {
              v119 = v158;
              i = v389;
              goto LABEL_207;
            }

            continue;
          }
        }
      }

      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v139 = *(v115 + 56);
      v140 = *(v115 + 16);
      v141 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!v141)
      {
        _log_fault_for_malloc_failure();
        v141 = 0;
      }

      atomic_store(1u, v141);
      v141[1] = -1073627135;
      *(v141 + 7) = v139;
      v141[12] = 0;
      *(v141 + 5) = -1;
      v141[5] = v140;
      v119 = v141;
      v70 = a1;
LABEL_207:
      LODWORD(v105) = *v73;
      if (*v73 >= 1)
      {
        v154 = v70;
        v166 = 0;
        do
        {
          v167 = v166;
          ContentIndexDocSetDispose(v109[v166]);
          v166 = v167 + 1;
        }

        while (v167 + 1 < *v73);
        LODWORD(v105) = *v73;
        goto LABEL_211;
      }

LABEL_212:
      v106 = v101;
      v104 = v119;
    }

    else
    {
      v134 = &v373[v355];
      if ((v108 & 0x400000) != 0)
      {
        v135 = ContentIndexDocSetUnionLazy(v102, v134, 0.0);
      }

      else
      {
        v135 = ContentIndexDocSetIntersectionLazy(v102, v134, 0.0);
      }

      v142 = v135;
      LODWORD(v105) = *v73;
      if (*v73 >= 1)
      {
        v143 = 0;
        do
        {
          v144 = v143;
          ContentIndexDocSetDispose(v373[v355 + v143]);
          v143 = v144 + 1;
        }

        while (v144 + 1 < *v73);
        LODWORD(v105) = *v73;
      }

      v106 = v101;
      v104 = v142;
      v70 = a1;
    }

LABEL_126:
    v13 = v394;
    v394[v369] = v104;
    v122 = v367;
    v15 = v392;
    if (v369)
    {
      goto LABEL_149;
    }

    v123 = v104[12];
    if (v123 <= 3)
    {
      if (v123 < 3)
      {
        v122 = 0;
        goto LABEL_149;
      }

      if (v123 != 3)
      {
        goto LABEL_435;
      }

LABEL_146:
      v131 = *(v104 + 8);
      if (v131)
      {
        v122 = (v131 + 88);
      }

      else
      {
        v122 = 0;
      }

      goto LABEL_149;
    }

    if ((v123 - 4) < 4)
    {
      goto LABEL_129;
    }

    if (v123 == 8)
    {
      goto LABEL_146;
    }

    if (v123 != 9)
    {
LABEL_435:
      assert_invalid_doc_type(v104);
    }

LABEL_129:
    v122 = v104 + 20;
LABEL_149:
    v68 = v122;
    v132 = v368 + v105;
    v69 = v369 + 1;
    v66 = v368 + v105;
    v133 = v106;
    v67 = v106;
  }

  while (v369 + 1 != v392);
LABEL_214:
  v168 = v133;
  v405 = 0;
  if (v40 > v132)
  {
    if (v40 < v133)
    {
      v169 = v372;
      v170 = 16 * v372 - 8 * v132;
      v171 = v133 - v372;
      do
      {
        v172 = &v374[v169 * 8];
        v173 = &v374[v170];
        v174 = *v173;
        v175 = v173[1];
        v176 = v173[3];
        v172[2] = v173[2];
        v172[3] = v176;
        *v172 = v174;
        v172[1] = v175;
        v38[v169++] = *(v38 + v170);
        v170 += 8;
        --v171;
      }

      while (v171);
    }

    v168 = v133 - (v40 - v132);
  }

  if (*a9)
  {
    v177 = 0;
    v58 = 0;
    goto LABEL_348;
  }

  v348 = v132;
  v178 = v70;
  v179 = CICleanUpThreadLoc();
  v180 = 0;
  v347 = v179;
  v346 = threadData[9 * v179 + 4];
  if (v375)
  {
    v180 = &v407;
  }

  v370 = v168;
  indexFindBulk(v178, a2, v168, v374, v39, v387, v385, v386, a9, &v408, v180, &v406, a10);
  v371 = *(v178 + 68);
  v181 = v384;
  if (v348 < 1)
  {
    goto LABEL_327;
  }

  v182 = v178;
  v183 = 0;
  v184 = 0;
  v185 = v387;
  do
  {
    v356 = v184;
    v186 = v183;
    if (v185 && v185[v183])
    {
      v366 = v183;
      v187 = malloc_type_zone_malloc(queryZone, 0x48uLL, 0xA4971684uLL);
      v365 = v187;
      v353 = v187;
      if (v187)
      {
        v188 = v187;
      }

      else
      {
        _log_fault_for_malloc_failure();
        v188 = 0;
      }

      v199 = CICleanUpPush(v347, MEMORY[0x1E69E9B38], v188);
      v200 = malloc_type_zone_malloc(queryZone, 0x40uLL, 0xA4971684uLL);
      if (v200)
      {
        v201 = MEMORY[0x1E69E9B38];
        v202 = v347;
        v203 = v200;
      }

      else
      {
        _log_fault_for_malloc_failure();
        v203 = 0;
        v201 = MEMORY[0x1E69E9B38];
        v202 = v347;
      }

      v362 = CICleanUpPush(v202, v201, v203);
      v363 = v200;
      v204 = v365;
      v205 = &i[72 * v366];
      v206 = *(v205 + 4);
      *v365 = 0;
      v365[4] = 0;
      v359 = v365 + 4;
      v365[5] = 0;
      v207 = v206 + 2;
      v365[3] = v206 + 2;
      if (v206 == -2)
      {
        v209 = 0;
      }

      else
      {
        v208 = malloc_type_zone_malloc(queryZone, 16 * v207, 0xA4971684uLL);
        v204 = v365;
        v209 = v208;
        if (!v208)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          v209 = 0;
          v204 = v365;
        }
      }

      *(v204 + 16) = v209;
      v358 = (v204 + 16);
      *(v204 + 48) = 0;
      *(v204 + 56) = 0;
      *(v204 + 64) = 0xFFFFFFFFLL;
      *(v204 + 8) = 0;
      v360 = CICleanUpPush(v347, oqdispose_PositionOffset_t, v204);
      *(v200 + 3) = 0;
      *(v200 + 4) = 0;
      *(v200 + 2) = v207;
      if (v206 == -2)
      {
        v210 = 0;
        v211 = v387;
      }

      else
      {
        v210 = malloc_type_zone_malloc(queryZone, 56 * v207, 0xA4971684uLL);
        v211 = v387;
        if (!v210)
        {
          _log_fault_for_malloc_failure();
          v210 = 0;
        }
      }

      *(v200 + 1) = v210;
      *(v200 + 5) = 0;
      v357 = &i[72 * v366];
      *(v200 + 12) = 0;
      *(v200 + 7) = 0xFFFFFFFFLL;
      *v200 = 0;
      v364 = v199;
      v361 = CICleanUpPush(v347, oqdispose_AnnotatedPositionOffset_t, v200);
      if ((*a9 & 1) == 0)
      {
        if (v206 != *(v211[v366] + 32))
        {
          v334 = __si_assert_copy_extra_332();
          v320 = v334;
          v335 = "";
          if (v334)
          {
            v335 = v334;
          }

          v343 = "payloadQCount == oqcount(positions[i])";
          v345 = v335;
          v322 = "CIQuery.c";
          v323 = 1043;
LABEL_403:
          __message_assert("%s:%u: failed assertion '%s' %s ", v322, v323, v343, v345);
          free(v320);
          if (__valid_fs(-1))
          {
            v326 = 2989;
          }

          else
          {
            v326 = 3072;
          }

          *v326 = -559038737;
          abort();
        }

        if (*v205)
        {
          if ((*v365 & 1) == 0)
          {
            if (*v359)
            {
              v336 = __si_assert_copy_extra_332();
              v316 = v336;
              v337 = "";
              if (v336)
              {
                v337 = v336;
              }

              v342 = "queue->just_offsets.count == 0";
              v344 = v337;
              v318 = 702;
              goto LABEL_415;
            }

            oqdispose_JustPositionOffset_t(v353 + 8);
            *(v358 + 28) = 0u;
            *v358 = 0u;
            v358[1] = 0u;
            v365[8] = 0xFFFFFFFFLL;
            *(v365 + 2) = 0;
          }

          if (v206 >= 1)
          {
            v226 = 0;
            v227 = 0;
            v228 = v206;
            v229 = v356;
            v213 = v211;
            while (1)
            {
              v230 = v228;
              v231 = v213[v366];
              v232 = *v231;
              v233 = *(v231 + 2);
              if (v232)
              {
                v234 = v226;
              }

              else
              {
                v234 = v227;
              }

              if (*(v233 + v234))
              {
                v235 = CIIndexSetCreateWithRange(0, v371, 1);
                if (*v357)
                {
                  v236 = v226;
                }

                else
                {
                  v236 = v227;
                }

                if ((*v357 & 1) == 0)
                {
                  v319 = __si_assert_copy_extra_332();
                  v320 = v319;
                  v321 = "";
                  if (v319)
                  {
                    v321 = v319;
                  }

                  v343 = "oqueue->has_meta";
                  v345 = v321;
                  v322 = "OQueue.h";
                  v323 = 323;
                  goto LABEL_403;
                }

                v350 = v229;
                v237 = v213;
                v238 = v235;
                v239 = *(v357 + 2);
                v240 = *(v239 + v236);
                v241 = *(v239 + 16 * v366 + 8);
                v242 = v237[v366];
                LODWORD(v239) = *v242;
                v243 = *(v242 + 2);
                if (v239)
                {
                  v244 = v226;
                }

                else
                {
                  v244 = v227;
                }

                v245 = *(v243 + v244);
                v246 = instr_retain(v235);
                if ((*v365 & 1) == 0)
                {
                  v324 = __si_assert_copy_extra_332();
                  v320 = v324;
                  v325 = "";
                  if (v324)
                  {
                    v325 = v324;
                  }

                  v343 = "oqueue->has_meta";
                  v345 = v325;
                  v322 = "OQueue.h";
                  v323 = 589;
                  goto LABEL_403;
                }

                v247 = v246;
                v352 = v230;
                if (*(v365 + 14))
                {
                  if (v365[8] < v240)
                  {
                    v330 = __si_assert_copy_extra_332();
                    v316 = v330;
                    v331 = "";
                    if (v330)
                    {
                      v331 = v330;
                    }

                    v332 = "!queue->split || queue->splitPoint >= PositionOffsetWithMeta_t_GET_VALUE(value)";
LABEL_414:
                    v342 = v332;
                    v344 = v331;
                    v318 = 509;
LABEL_415:
                    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", v318, v342, v344);
                    free(v316);
                    if (__valid_fs(-1))
                    {
                      v333 = 2989;
                    }

                    else
                    {
                      v333 = 3072;
                    }

                    *v333 = -559038737;
                    abort();
                  }

                  if (v365[4] >= v365[3])
                  {
                    v341 = __si_assert_copy_extra_332();
                    v316 = v341;
                    v331 = "";
                    if (v341)
                    {
                      v331 = v341;
                    }

                    v332 = "!queue->split";
                    goto LABEL_414;
                  }

                  v248 = *v358;
                  v249 = v365[4];
                }

                else
                {
                  v251 = v365[3];
                  v252 = v365[2];
                  if (v365[4] >= v251)
                  {
                    v253 = 2 * v251;
                    v254 = v251 == 0;
                    v255 = 4;
                    if (!v254)
                    {
                      v255 = v253;
                    }

                    v365[3] = v255;
                    v256 = 24 * v255;
                    if (v252)
                    {
                      v257 = malloc_type_zone_realloc(queryZone, v252, v256, 0xA1A7ADA0uLL);
                    }

                    else
                    {
                      v257 = malloc_type_zone_malloc(queryZone, v256, 0x566E289CuLL);
                    }

                    v248 = v257;
                    if (!v257)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    *v358 = v248;
                    v249 = *v359;
                  }

                  else
                  {
                    v249 = v365[4];
                    v248 = v365[2];
                  }
                }

                *v359 = v249 + 1;
                v258 = &v248[24 * v249];
                *v258 = v240;
                *(v258 + 1) = v238;
                *(v258 + 2) = v241;
                *buf = v245;
                *&buf[8] = v247;
                *&buf[16] = 0u;
                v410 = 0u;
                v411 = 0;
                oqpush_AnnotatedPositionOffset_t(v363, buf);
                v250 = v350 + 1;
                v15 = v392;
                v213 = v387;
                v230 = v352;
              }

              else
              {
                v250 = v229;
              }

              v229 = v250;
              v227 += 8;
              v226 += 16;
              v212 = v250;
              v228 = v230 - 1;
              if (v230 == 1)
              {
                goto LABEL_249;
              }
            }
          }
        }

        else if (v206 >= 1)
        {
          v259 = 0;
          v260 = 0;
          v261 = v206;
          v262 = v356;
          v213 = v211;
          while (1)
          {
            v263 = v261;
            v264 = v260;
            v265 = v213[v366];
            v266 = *v265;
            v267 = *(v265 + 2);
            if (v266)
            {
              v268 = v260;
            }

            else
            {
              v268 = v259;
            }

            if (*(v267 + v268))
            {
              v269 = CIIndexSetCreateWithRange(0, v371, 1);
              v270 = v213;
              v271 = v269;
              if (*v357)
              {
                v272 = v260;
              }

              else
              {
                v272 = v259;
              }

              v273 = *(*(v357 + 2) + v272);
              v274 = v270;
              v275 = v270[v366];
              v276 = *v275;
              v277 = *(v275 + 2);
              v351 = v264;
              if (v276)
              {
                v278 = v264;
              }

              else
              {
                v278 = v259;
              }

              v279 = *(v277 + v278);
              v280 = instr_retain(v269);
              if (*v365 == 1)
              {
                v315 = __si_assert_copy_extra_332();
                v316 = v315;
                v317 = "";
                if (v315)
                {
                  v317 = v315;
                }

                v342 = "!oqueue->has_meta";
                v344 = v317;
                v318 = 583;
                goto LABEL_415;
              }

              v281 = v280;
              if (*(v365 + 14))
              {
                if (v365[8] < v273)
                {
                  v327 = __si_assert_copy_extra_332();
                  v316 = v327;
                  v328 = "";
                  if (v327)
                  {
                    v328 = v327;
                  }

                  v329 = "!queue->split || queue->splitPoint >= JustPositionOffset_t_GET_VALUE(value)";
                  goto LABEL_410;
                }

                if (v365[4] >= v365[3])
                {
                  v340 = __si_assert_copy_extra_332();
                  v316 = v340;
                  v328 = "";
                  if (v340)
                  {
                    v328 = v340;
                  }

                  v329 = "!queue->split";
LABEL_410:
                  v342 = v329;
                  v344 = v328;
                  v318 = 500;
                  goto LABEL_415;
                }

                v282 = *v358;
                v283 = v365[4];
              }

              else
              {
                v284 = v365[3];
                v282 = v365[2];
                if (v365[4] >= v284)
                {
                  v349 = v262;
                  v285 = 2 * v284;
                  v254 = v284 == 0;
                  v286 = 4;
                  if (!v254)
                  {
                    v286 = v285;
                  }

                  v365[3] = v286;
                  v287 = 16 * v286;
                  if (v282)
                  {
                    v288 = malloc_type_zone_realloc(queryZone, v282, v287, 0xA1A7ADA0uLL);
                  }

                  else
                  {
                    v288 = malloc_type_zone_malloc(queryZone, v287, 0x566E289CuLL);
                  }

                  v289 = v288;
                  if (!v288)
                  {
                    _log_fault_for_malloc_failure();
                  }

                  *v358 = v289;
                  v283 = *v359;
                  v282 = v289;
                  v274 = v387;
                  v262 = v349;
                }

                else
                {
                  v283 = v365[4];
                }
              }

              *v359 = v283 + 1;
              v290 = &v282[16 * v283];
              *v290 = v273;
              *(v290 + 1) = v271;
              ++v262;
              *buf = v279;
              *&buf[8] = v281;
              *&buf[16] = 0u;
              v410 = 0u;
              v411 = 0;
              oqpush_AnnotatedPositionOffset_t(v363, buf);
              v15 = v392;
              v213 = v274;
              v264 = v351;
            }

            v259 += 8;
            v260 = v264 + 16;
            v212 = v262;
            v261 = v263 - 1;
            if (v263 == 1)
            {
              goto LABEL_249;
            }
          }
        }
      }

      v212 = v356;
      v213 = v211;
LABEL_249:
      free(*(v357 + 2));
      free(*(v213[v366] + 16));
      free(v213[v366]);
      v213[v366] = 0;
      v214 = *(v373[v366] + 64);
      v215 = *(a1 + 80);
      v216 = atomic_load((a1 + 36));
      *(v214 + 120) = *v365;
      v217 = *(v365 + 1);
      v218 = *(v365 + 2);
      v219 = *(v365 + 3);
      *(v214 + 184) = v365[8];
      *(v214 + 168) = v219;
      *(v214 + 152) = v218;
      *(v214 + 136) = v217;
      *(v214 + 192) = 0;
      *(v214 + 208) = xmmword_1C2BFA690;
      v220 = malloc_type_zone_malloc(queryZone, 0x120uLL, 0xA4971684uLL);
      if (!v220 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v214 + 200) = v220;
      *v220 = 0;
      v220[1] = 0;
      *(v214 + 40) = PayloadIterate__Positions;
      *(v214 + 48) = 0;
      *(v214 + 56) = PayloadIterator__Positions_UpdateSet;
      *(v214 + 224) = 0;
      *(v214 + 232) = 0;
      *(v214 + 80) = (v216 & 4) != 0;
      *(v214 + 8) = 0;
      *(v214 + 16) = 0;
      *v214 = 0;
      *(v214 + 96) = 0;
      *(v214 + 104) = v215;
      *(v214 + 88) = CIIndexSetCreateWithRange(0, v371, 0);
      *(v214 + 81) = 0;
      CICleanUpClearItem(v347, v360);
      v221 = malloc_type_zone_malloc(queryZone, 0xC8uLL, 0xA4971684uLL);
      v13 = v394;
      if (!v221)
      {
        _log_fault_for_malloc_failure();
      }

      *(v373[v366] + 72) = v221;
      v222 = *(v373[v366] + 72);
      v223 = *v363;
      v224 = v363[1];
      v225 = v363[2];
      *(v222 + 104) = v363[3];
      *(v222 + 88) = v225;
      *(v222 + 72) = v224;
      *(v222 + 56) = v223;
      *(v222 + 128) = xmmword_1C2BF7A50;
      *(v222 + 120) = 0;
      *v222 = xmmword_1C2BFA6A0;
      *(v222 + 144) = 0;
      *(v222 + 40) = 0;
      *(v222 + 148) = 0;
      *(v222 + 48) = 0;
      *(v222 + 160) = 0;
      *(v222 + 168) = 0;
      *(v222 + 16) = 0;
      *(v222 + 24) = 0;
      *(v222 + 176) = 0;
      *(v222 + 184) = 0;
      *(*(v373[v366] + 72) + 192) = v376;
      CICleanUpClearItem(v347, v361);
      v405 = v366 + 1;
      free(v365);
      free(v363);
      CICleanUpClearItem(v347, v364);
      CICleanUpClearItem(v347, v362);
      CICleanUpReset(v347, v346);
      v183 = v366 + 1;
      v198 = v212;
      v182 = a1;
      v40 = v390;
      i = v389;
      v185 = v387;
    }

    else
    {
      v189 = i;
      v190 = *(v373[v183] + 64);
      v191 = &v189[72 * v183];
      v192 = *(v182 + 80);
      v193 = atomic_load((v182 + 36));
      *(v190 + 160) = *v191;
      v194 = *(v191 + 1);
      v195 = *(v191 + 2);
      v196 = *(v191 + 3);
      *(v190 + 224) = *(v191 + 8);
      *(v190 + 192) = v195;
      *(v190 + 208) = v196;
      *(v190 + 176) = v194;
      *(v190 + 232) = 0;
      *(v190 + 248) = xmmword_1C2BFA370;
      v197 = malloc_type_zone_malloc(queryZone, 0x110uLL, 0xA4971684uLL);
      if (!v197 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v190 + 240) = v197;
      *v197 = 0;
      *(v190 + 40) = PayloadIterate;
      *(v190 + 48) = PayloadIterator_ConsumeUpdates;
      *(v190 + 56) = PayloadIterate_UpdateSet;
      *(v190 + 112) = v192;
      *(v190 + 80) = (v193 & 4) != 0;
      *(v190 + 8) = 0;
      *(v190 + 16) = 0;
      *v190 = 0;
      *(v190 + 88) = CIIndexSetCreateWithRange(0, v371, 0);
      *(v190 + 96) = CIIndexSetCreateWithRange(0, v371, 0);
      *(v190 + 104) = 0;
      *(v190 + 81) = 0;
      *(v190 + 64) = 0;
      *(v190 + 128) = 0u;
      *(v190 + 144) = 0u;
      v183 = v186 + 1;
      v198 = v356;
      v405 = v186 + 1;
      i = v389;
      v185 = v387;
      v182 = a1;
    }

    v184 = v198;
    v181 = v384;
  }

  while (v183 < v348);
  v41 = &qword_1EDD81000;
  if (v198 && (*a9 & 1) == 0 && dword_1EBF46AD0 >= 5)
  {
    v338 = *__error();
    v339 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v198;
      _os_log_impl(&dword_1C278D000, v339, OS_LOG_TYPE_DEFAULT, "### position index set count %p %ld", buf, 0x16u);
    }

    *__error() = v338;
    v13 = v394;
    v15 = v392;
    v40 = v390;
    i = v389;
    v181 = v384;
    if (!v384)
    {
      goto LABEL_339;
    }

LABEL_328:
    if (*a9)
    {
      goto LABEL_339;
    }

    if (v385)
    {
      v291 = a6;
    }

    else
    {
      v291 = 0;
    }

    if ((termUpdateSetResolveQueryInfo(v181, v370, v374, v38, 0, v291, 0) & 1) == 0)
    {
      if (v40 >= 1)
      {
        v293 = v40;
        v294 = v373;
        do
        {
          if (*(*v294 + 48) == 8)
          {
            atomic_fetch_add(v384, 1u);
            *(*v294 + 80) = v384;
            *(*v294 + 96) = TermUpdateSetRelease;
          }

          ++v294;
          --v293;
        }

        while (v293);
      }

      goto LABEL_339;
    }

    v292 = 1;
  }

  else
  {
LABEL_327:
    if (v181)
    {
      goto LABEL_328;
    }

LABEL_339:
    v292 = 0;
  }

  if (v383)
  {
    if ((*a9 & 1) == 0)
    {
      termUpdateSetResolveQueryInfo(v383, v370, v374, v38, 1, 0, 0);
      if (v40 >= 1)
      {
        v295 = v40;
        v296 = v373;
        do
        {
          if (*(*v296 + 48) == 8)
          {
            atomic_fetch_add(v383, 1u);
            *(*v296 + 88) = v383;
            *(*v296 + 96) = TermUpdateSetRelease;
          }

          ++v296;
          --v295;
        }

        while (v295);
      }
    }
  }

  v177 = v371;
  v58 = v292;
LABEL_348:
  v65 = v177;
  v297 = threadData[9 * v399 + 1] + 320 * v398;
  *(v297 + 312) = v377;
  v298 = *(v297 + 232);
  if (v298)
  {
    v298(*(v297 + 288));
  }

  dropThreadId(v399, 0, v378 + 1);
LABEL_351:
  v299 = threadData[9 * v403 + 1] + 320 * v402;
  *(v299 + 312) = v379;
  v300 = *(v299 + 232);
  if (v300)
  {
    v300(*(v299 + 288));
  }

  dropThreadId(v403, 0, add_explicit + 1);
  v57 = v65;
  v55 = a9;
LABEL_354:
  free(v373);
  if ((*v55 & 1) != 0 || v58 & 1 | ((v404 & 1) == 0))
  {
    v404 = 0;
    if (v15 >= 1)
    {
      v301 = v13;
      v302 = v15;
      do
      {
        if (*v301)
        {
          ContentIndexDocSetDispose(*v301);
          *v301 = 0;
        }

        ++v301;
        --v302;
      }

      while (v302);
    }

    if (v387 && size >= 1)
    {
      v303 = size;
      v304 = v387;
      do
      {
        if (*v304)
        {
          free(*(*v304 + 2));
          free(*v304);
          *v304 = 0;
        }

        ++v304;
        --v303;
      }

      while (v303);
    }

    for (i = v389; v405 < v40; ++v405)
    {
      free(*&v389[72 * v405 + 16]);
    }

    v55 = a9;
    if (v408)
    {
      finalizePayloadData(v408);
      v408 = 0;
    }

    if (v407)
    {
      finalizePayloadData(v407);
      v407 = 0;
    }

    if (v406)
    {
      posreadunlock(v406);
    }

    v406 = 0;
  }

  if (v384)
  {
    TermUpdateSetRelease(v384);
  }

  if (v383)
  {
    TermUpdateSetRelease(v383);
  }

  free(v387);
  free(v39);
  free(v38);
  free(i);
  free(v374);
  if (v404 == 1)
  {
    if (v58)
    {
      NodesLazy = __CIMatchQueryNodesLazy(a1, a2, v15, v393, v13, 0, v386, 0, v55, a10);
    }

    else
    {
      v308 = v41;
      v310 = v407;
      v309 = v408;
      v311 = v406;
      NodesLazy = malloc_type_zone_malloc(v308[58], 0x30uLL, 0xA4971684uLL);
      if (!NodesLazy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      atomic_store(1u, NodesLazy);
      *(NodesLazy + 1) = v309;
      *(NodesLazy + 2) = v310;
      *(NodesLazy + 3) = v311;
      NodesLazy[8] = v388;
      NodesLazy[9] = v57;
      *(NodesLazy + 40) = v385;
      *(NodesLazy + 41) = v386;
      if (!v309 && v57)
      {
        v312 = *__error();
        v313 = _SILogForLogForCategory(10);
        v314 = 2 * (dword_1EBF46AF4 < 4);
        if (os_log_type_enabled(v313, v314))
        {
          *buf = 67109120;
          *&buf[4] = v57;
          _os_log_impl(&dword_1C278D000, v313, v314, "null payloadData with payloadCount %u", buf, 8u);
        }

        *__error() = v312;
      }
    }
  }

  else
  {
    NodesLazy = 0;
  }

  v10 = NodesLazy;
LABEL_383:
  result = v10;
  v307 = *MEMORY[0x1E69E9840];
  return result;
}