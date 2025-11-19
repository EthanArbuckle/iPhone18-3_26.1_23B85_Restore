void sub_1B06843E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _MFSecCMSEncoder;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0685664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

__CFString *MFMFSMTPFailureReasonString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"MFSMTPFailureReasonUnknown";
  }

  else
  {
    return off_1E7AA7D80[a1];
  }
}

void sub_1B06872D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B06875E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B0687C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0688058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sqlite3_exec_printf(sqlite3 *a1, char *a2, int (__cdecl *a3)(void *, int, char **, char **), void *a4, char **a5, ...)
{
  va_start(va, a5);
  v9 = sqlite3_vmprintf(a2, va);
  v10 = sqlite3_exec(a1, v9, a3, a4, a5);
  sqlite3_free(v9);
  return v10;
}

void MFLogSQLiteError(sqlite3 *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 10)
  {
    __errnum = 0;
    sqlite3_file_control(a1, 0, 4, &__errnum);
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(a1);
      v10 = __errnum;
      v11 = strerror(__errnum);
      *buf = 67110402;
      v14 = a2;
      v15 = 2048;
      v16 = a1;
      v17 = 2114;
      v18 = v5;
      v19 = 2082;
      v20 = v9;
      v21 = 1024;
      v22 = v10;
      v23 = 2080;
      v24 = v11;
      _os_log_error_impl(&dword_1B0389000, v6, OS_LOG_TYPE_ERROR, "Error %d on connection %p %{public}@: %{public}s - I/O error %d (%s)", buf, 0x36u);
    }
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      v14 = a2;
      v15 = 2048;
      v16 = a1;
      v17 = 2114;
      v18 = v5;
      v19 = 2082;
      v20 = sqlite3_errmsg(a1);
      _os_log_error_impl(&dword_1B0389000, v7, OS_LOG_TYPE_ERROR, "Error %d on connection %p %{public}@: %{public}s", buf, 0x26u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

__CFString *MFNSStringFromColumnInStatement(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v2];
  }

  else
  {
    v3 = &stru_1F273A5E0;
  }

  return v3;
}

id MFDatabaseEncodedStringForAddressList(void *a1)
{
  v1 = [a1 componentsJoinedByString:@"\r\r\n"];

  return v1;
}

id MFAddressListFromDatabaseEncodedString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 componentsSeparatedByString:@"\r\r\n"];
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  if (v1)
  {
    v2 = [MEMORY[0x1E695DEC8] array];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_6:

  return v3;
}

UChar *_ICUSQLiteMatch(const char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  pErrorCode = U_ZERO_ERROR;
  v8 = *(a4 + 160);
  if (!strcmp(v8, a2) && *(a4 + 176))
  {
    goto LABEL_19;
  }

  pDestLength = 0;
  v9 = strlen(a2);
  if (v9)
  {
    v10 = v9;
    v11 = v9 + 1;
    if (v9 + 1 <= *(a4 + 168))
    {
      v11 = *(a4 + 168);
    }

    else
    {
      v12 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
      if (!v12)
      {
        return 0;
      }

      v8 = v12;
      v13 = *(a4 + 160);
      if (v13 != (a4 + 32))
      {
        free(v13);
      }

      *(a4 + 160) = v8;
      *(a4 + 168) = v11;
    }

    strlcpy(v8, a2, v11);
    u_strFromUTF8(*(a4 + 176), *(a4 + 184), &pDestLength, a2, v10, &pErrorCode);
    if (pErrorCode != U_BUFFER_OVERFLOW_ERROR && *(a4 + 176))
    {
      goto LABEL_17;
    }

    v14 = malloc_type_malloc(2 * pDestLength + 2, 0x1000040BDFB0063uLL);
    if (v14)
    {
      v15 = v14;
      v16 = *(a4 + 176);
      if (v16)
      {
        free(v16);
      }

      *(a4 + 176) = v15;
      v17 = pDestLength + 1;
      *(a4 + 184) = pDestLength + 1;
      pErrorCode = U_ZERO_ERROR;
      u_strFromUTF8(v15, v17, &pDestLength, a2, v10, &pErrorCode);
      v18 = *(a4 + 176);
LABEL_17:
      v19 = *(a4 + 24);
      usearch_setPattern();
      if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        **(a4 + 160) = 0;
        return 0;
      }

LABEL_19:
      v35 = 0;
      v20 = strlen(a1);
      if (v20 < 1)
      {
        return 0;
      }

      u_strFromUTF8(*(a4 + 192), *(a4 + 712), &v35, a1, v20, &pErrorCode);
      if (pErrorCode == U_BUFFER_OVERFLOW_ERROR)
      {
        result = malloc_type_malloc(2 * v35 + 2, 0x1000040BDFB0063uLL);
        if (!result)
        {
          return result;
        }

        v22 = result;
        v23 = *(a4 + 192);
        if (v23 != (a4 + 200))
        {
          free(v23);
        }

        *(a4 + 192) = v22;
        v24 = v35 + 1;
        *(a4 + 712) = v35 + 1;
        pErrorCode = U_ZERO_ERROR;
        u_strFromUTF8(v22, v24, &v35, a1, v20, &pErrorCode);
      }

      v25 = *(a4 + 24);
      v26 = *(a4 + 192);
      usearch_setText();
      v27 = *(a4 + 24);
      if (a3 == 3)
      {
        v28 = usearch_last();
        if (v28 != -1)
        {
          v29 = v28;
          v30 = *(a4 + 24);
          v31 = usearch_getMatchedLength() + v29 == v35;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v32 = usearch_first();
      v33 = 0;
      if (a3 <= 1)
      {
        if (!a3)
        {
          v33 = v32 != -1;
          return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v33);
        }

        if (a3 == 1)
        {
          v31 = v32 == -1;
          goto LABEL_41;
        }

        return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v33);
      }

      if (a3 == 2)
      {
        v31 = v32 == 0;
      }

      else
      {
        if (a3 != 4)
        {
          return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v33);
        }

        if (v32)
        {
LABEL_37:
          v33 = 0;
          return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v33);
        }

        v34 = *(a4 + 24);
        v31 = usearch_getMatchedLength() == v35;
      }

LABEL_41:
      v33 = v31;
      return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v33);
    }
  }

  return 0;
}

void ICUSearch(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v13 = v7;
      v14 = sqlite3_user_data(a1);
      v15 = _ICUSQLiteMatch(v5, v6, v13, v14);
      v16 = *MEMORY[0x1E69E9840];
      v17 = v15;
      v18 = a1;
LABEL_13:

      sqlite3_result_int(v18, v17);
      return;
    }

    if (v6 && v7 == 1)
    {
      v9 = *MEMORY[0x1E69E9840];
      v18 = a1;
      v17 = 1;
      goto LABEL_13;
    }

    v19 = *MEMORY[0x1E69E9840];

    sqlite3_result_null(a1);
  }

  else
  {
    sqlite3_result_null(a1);
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v20[0] = 67109120;
      v20[1] = a2;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "wrong number of arguments (%d) to icusearch", v20, 8u);
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

void CPSearch(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    v8 = v7;
    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v16 = sqlite3_user_data(a1);
      if ([v16 lastSearchStringLength] && !strcmp(v6, objc_msgSend(v16, "lastSearchString")))
      {
        v17 = [v16 lastMatcher];
      }

      else
      {
        v17 = strlen(v6);
        if (v17)
        {
          if ([v16 lastSearchString])
          {
            free([v16 lastSearchString]);
          }

          [v16 setLastSearchString:strdup(v6)];
          [v16 setLastSearchStringLength:v17];
          v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:objc_msgSend(v16 length:"lastSearchString") freeWhenDone:{v17, 0}];
          v19 = [v16 matchers];
          v17 = [v19 objectForKeyedSubscript:v18];

          if (!v17)
          {
            v20 = objc_alloc(MEMORY[0x1E698B6A8]);
            v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
            v17 = [v20 initWithSearchString:v21 options:(*MEMORY[0x1E698B6E0] | *MEMORY[0x1E698B6D8]) | *MEMORY[0x1E698B6E8]];

            v22 = [v16 matchers];

            if (!v22)
            {
              v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
              [v16 setMatchers:v23];
            }

            v24 = [v16 matchers];
            v25 = [MEMORY[0x1E695DEF0] dataWithData:v18];
            [v24 setObject:v17 forKey:v25];
          }

          [v16 setLastMatcher:v17];
        }
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      v28 = [v17 matches:v27 matchType:v8];

      v29 = *MEMORY[0x1E69E9840];
      v11 = a1;
      v12 = v28;
      goto LABEL_28;
    }

    if (v6 && v7 == 1)
    {
      v10 = *MEMORY[0x1E69E9840];
      v11 = a1;
      v12 = 1;
LABEL_28:

      sqlite3_result_int(v11, v12);
      return;
    }

    v26 = *MEMORY[0x1E69E9840];

    sqlite3_result_null(a1);
  }

  else
  {
    sqlite3_result_null(a1);
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v30[0] = 67109120;
      v30[1] = a2;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "wrong number of arguments (%d) to icusearch", v30, 8u);
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

void _MFMoveDatabase(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 lastPathComponent];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = EDLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = v3;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "Renaming database %@ to %@", buf, 0x16u);
  }

  v8 = v3;
  v9 = [v3 fileSystemRepresentation];
  v10 = v6;
  v11 = [v6 fileSystemRepresentation];
  rename(v9, v11, v12);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [&unk_1F2775730 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(&unk_1F2775730);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v3 stringByAppendingString:v16];
        v18 = v17;
        v19 = [v17 fileSystemRepresentation];
        v20 = [v6 stringByAppendingString:v16];
        v21 = v20;
        v22 = [v20 fileSystemRepresentation];
        rename(v19, v22, v23);
      }

      v13 = [&unk_1F2775730 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t MFCreateURLForContentID(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(__CFString *)v1 rangeOfString:@"<"];
    v5 = v4;
    v6 = [(__CFString *)v2 rangeOfString:@">"];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL || v6 <= v3 + v5)
    {
      v7 = v2;
    }

    else
    {
      v14.location = v3 + v5;
      v14.length = v6 - (v3 + v5);
      v7 = CFStringCreateWithSubstring(0, v2, v14);
    }

    v8 = v7;
    v9 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
    v10 = [(__CFString *)v8 stringByAddingPercentEncodingWithAllowedCharacters:v9];

    if (v10)
    {
      v11 = [@"cid" stringByAppendingFormat:@":%@", v10];
      v12 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initWithString:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _SortWebAttachmentSources(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = isKindOfClass ^ objc_opt_isKindOfClass();
  v7 = -1;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = 1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1B06896CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFWebAttachmentSource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __RegisterYahooAuthSchemes_block_invoke()
{
  v0 = MEMORY[0x1E699B208];
  v1 = objc_opt_class();

  return [v0 registerSchemeClass:v1];
}

uint64_t sub_1B068B1CC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v167.rawValue._countAndFlagsBits = a1;
  v167.rawValue._object = a2;
  v149 = a3;
  v150 = a4;
  v151 = a5;
  v168 = a6;
  v120 = sub_1B06911A4;
  v121 = sub_1B039BBE8;
  v122 = sub_1B0394C30;
  v123 = sub_1B0394C24;
  v124 = sub_1B039BA2C;
  v125 = sub_1B039BA88;
  v126 = sub_1B039BB94;
  v127 = sub_1B0394C24;
  v128 = sub_1B039BBA0;
  v129 = sub_1B039BC08;
  v130 = sub_1B0398F5C;
  v131 = sub_1B0398F5C;
  v132 = sub_1B0399178;
  v133 = sub_1B0398F5C;
  v134 = sub_1B0398F5C;
  v135 = sub_1B039BA94;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0398F5C;
  v138 = sub_1B0399178;
  v139 = sub_1B0398F5C;
  v140 = sub_1B0398F5C;
  v141 = sub_1B03991EC;
  v184 = 0;
  v182 = 0;
  v183 = 0;
  v181 = 0;
  v179 = 0;
  v180 = 0;
  v178 = 0;
  v142 = 0;
  v170 = 0;
  v185 = a6;
  v152 = 0;
  v143 = sub_1B0E439A8();
  v144 = *(v143 - 8);
  v145 = v143 - 8;
  v146 = (*(v144 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v147 = v74 - v146;
  v148 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v166 = v74 - v148;
  v153 = _s6LoggerVMa();
  v154 = *(v153 - 8);
  v155 = v154;
  v161 = *(v154 + 64);
  v156 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v152);
  v157 = v74 - v156;
  v158 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v159 = v74 - v158;
  v160 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v162 = v74 - v160;
  v163 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v165 = v74 - v163;
  v184 = v74 - v163;
  v182 = v12;
  v183 = v13;
  v181 = v14;
  v179 = v15;
  v180 = v16;
  v178 = v6;
  type metadata accessor for SearchIndexerBackgroundTask();
  sub_1B0A27668(v166);
  v17 = EngineTracingID.invalid.unsafeMutableAddressor();
  v164 = EngineLoggerID.init(id:)(*v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = String.init(_:)(v167);
  v19 = AccountLoggerID.init(accountIdentifier:)(v18._countAndFlagsBits, v18._object);
  v177 = EngineAndAccountLoggerID.init(engine:account:)(v164, v19);
  LOBYTE(v176) = v177;
  HIDWORD(v176) = HIDWORD(v177);
  sub_1B07B8A3C(v166, v176, v165);
  v169 = sub_1B0902D08(v167.rawValue._countAndFlagsBits, v167.rawValue._object, v168);
  if (v169)
  {
    v119 = v169;
    v118 = v169;
    v170 = v169;
    sub_1B0394784(v165, v162);

    v115 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v116 = (v115 + v161 + 7) & 0xFFFFFFFFFFFFFFF8;
    v117 = swift_allocObject();
    sub_1B03F4FD0(v162, v117 + v115);
    v20 = v151;
    v21 = v149;
    v22 = v120;
    v23 = v117;
    v24 = v165;
    v25 = (v117 + v116);
    *v25 = v150;
    v25[1] = v20;
    sub_1B06E39F0(v24, v21, v22, v23);

    MEMORY[0x1E69E5920](v118);
    return sub_1B039480C(v165);
  }

  else
  {
    (*(v144 + 16))(v147, v165, v143);
    sub_1B0394784(v165, v162);
    sub_1B0394784(v162, v159);
    sub_1B03F4FD0(v162, v157);
    v27 = (v159 + *(v153 + 20));
    v84 = *v27;
    v85 = *(v27 + 1);
    sub_1B039480C(v159);
    v83 = 24;
    v95 = 7;
    v28 = swift_allocObject();
    v29 = v85;
    v88 = v28;
    *(v28 + 16) = v84;
    *(v28 + 20) = v29;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v30 = swift_allocObject();
    v31 = v85;
    v86 = v30;
    *(v30 + 16) = v84;
    *(v30 + 20) = v31;

    v94 = 32;
    v32 = swift_allocObject();
    v33 = v86;
    v96 = v32;
    *(v32 + 16) = v121;
    *(v32 + 24) = v33;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v157);
    v113 = sub_1B0E43988();
    v114 = sub_1B0E458E8();
    v92 = 17;
    v98 = swift_allocObject();
    v90 = 16;
    *(v98 + 16) = 16;
    v99 = swift_allocObject();
    v93 = 4;
    *(v99 + 16) = 4;
    v34 = swift_allocObject();
    v87 = v34;
    *(v34 + 16) = v122;
    *(v34 + 24) = 0;
    v35 = swift_allocObject();
    v36 = v87;
    v100 = v35;
    *(v35 + 16) = v123;
    *(v35 + 24) = v36;
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = 1;
    v37 = swift_allocObject();
    v38 = v88;
    v89 = v37;
    *(v37 + 16) = v124;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v89;
    v103 = v39;
    *(v39 + 16) = v125;
    *(v39 + 24) = v40;
    v104 = swift_allocObject();
    *(v104 + 16) = v90;
    v105 = swift_allocObject();
    *(v105 + 16) = v93;
    v41 = swift_allocObject();
    v91 = v41;
    *(v41 + 16) = v126;
    *(v41 + 24) = 0;
    v42 = swift_allocObject();
    v43 = v91;
    v106 = v42;
    *(v42 + 16) = v127;
    *(v42 + 24) = v43;
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v93;
    v44 = swift_allocObject();
    v45 = v96;
    v97 = v44;
    *(v44 + 16) = v128;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v97;
    v110 = v46;
    *(v46 + 16) = v129;
    *(v46 + 24) = v47;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v109 = sub_1B0E46A48();
    v111 = v48;

    v49 = v98;
    v50 = v111;
    *v111 = v130;
    v50[1] = v49;

    v51 = v99;
    v52 = v111;
    v111[2] = v131;
    v52[3] = v51;

    v53 = v100;
    v54 = v111;
    v111[4] = v132;
    v54[5] = v53;

    v55 = v101;
    v56 = v111;
    v111[6] = v133;
    v56[7] = v55;

    v57 = v102;
    v58 = v111;
    v111[8] = v134;
    v58[9] = v57;

    v59 = v103;
    v60 = v111;
    v111[10] = v135;
    v60[11] = v59;

    v61 = v104;
    v62 = v111;
    v111[12] = v136;
    v62[13] = v61;

    v63 = v105;
    v64 = v111;
    v111[14] = v137;
    v64[15] = v63;

    v65 = v106;
    v66 = v111;
    v111[16] = v138;
    v66[17] = v65;

    v67 = v107;
    v68 = v111;
    v111[18] = v139;
    v68[19] = v67;

    v69 = v108;
    v70 = v111;
    v111[20] = v140;
    v70[21] = v69;

    v71 = v110;
    v72 = v111;
    v111[22] = v141;
    v72[23] = v71;
    sub_1B0394964();

    if (os_log_type_enabled(v113, v114))
    {
      v73 = v142;
      v76 = sub_1B0E45D78();
      v74[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v75 = 0;
      v77 = sub_1B03949A8(0);
      v78 = sub_1B03949A8(v75);
      v79 = &v175;
      v175 = v76;
      v80 = &v174;
      v174 = v77;
      v81 = &v173;
      v173 = v78;
      sub_1B0394A48(0, &v175);
      sub_1B0394A48(4, v79);
      v171 = v130;
      v172 = v98;
      sub_1B03949FC(&v171, v79, v80, v81);
      v82 = v73;
      if (v73)
      {

        __break(1u);
      }

      else
      {
        v171 = v131;
        v172 = v99;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[11] = 0;
        v171 = v132;
        v172 = v100;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[10] = 0;
        v171 = v133;
        v172 = v101;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[9] = 0;
        v171 = v134;
        v172 = v102;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[8] = 0;
        v171 = v135;
        v172 = v103;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[7] = 0;
        v171 = v136;
        v172 = v104;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[6] = 0;
        v171 = v137;
        v172 = v105;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[5] = 0;
        v171 = v138;
        v172 = v106;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[4] = 0;
        v171 = v139;
        v172 = v107;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[3] = 0;
        v171 = v140;
        v172 = v108;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        v74[2] = 0;
        v171 = v141;
        v172 = v110;
        sub_1B03949FC(&v171, &v175, &v174, &v173);
        _os_log_impl(&dword_1B0389000, v113, v114, "[%.*hhx-%.*X] Failed to get account and credentials.", v76, 0x17u);
        v74[1] = 0;
        sub_1B03998A8(v77);
        sub_1B03998A8(v78);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v113);
    (*(v144 + 8))(v147, v143);

    v74[0] = sub_1B0E46A48();
    v150(v74[0]);

    return sub_1B039480C(v165);
  }
}

uint64_t sub_1B068C804(uint64_t a1, int a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v100 = a1;
  v104 = a2;
  v107 = a3;
  v98 = a4;
  v99 = a5;
  v114 = sub_1B039BBE8;
  v117 = sub_1B0394C30;
  v118 = sub_1B0394C24;
  v121 = sub_1B039BA2C;
  v123 = sub_1B039BA88;
  v126 = sub_1B039BB94;
  v127 = sub_1B0394C24;
  v131 = sub_1B039BBA0;
  v135 = sub_1B039BC08;
  v137 = sub_1B0398F5C;
  v139 = sub_1B0398F5C;
  v141 = sub_1B0399178;
  v143 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v147 = sub_1B039BA94;
  v149 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v153 = sub_1B0399178;
  v155 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v160 = sub_1B03991EC;
  v92 = sub_1B068DB38;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v173 = 0;
  v174 = 0;
  v93 = 0;
  v171 = 0;
  v94 = 0;
  v109 = _s6LoggerVMa();
  v95 = (*(*(v109 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v116 = &v65 - v95;
  v96 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v65 - v96;
  v97 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v65 - v97;
  v101 = sub_1B0E439A8();
  v105 = *(v101 - 8);
  v102 = v101 - 8;
  v103 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v100);
  v106 = &v65 - v103;
  v177 = v10;
  v120 = 1;
  v176 = v104 & 1;
  v175 = v11;
  v173 = v12;
  v174 = v13;
  (*(v105 + 16))(&v65 - v103, v9);
  sub_1B0394784(v107, v108);
  sub_1B0394784(v108, v110);
  sub_1B03F4FD0(v108, v116);
  v14 = (v110 + *(v109 + 20));
  v112 = *v14;
  v113 = *(v14 + 1);
  sub_1B039480C(v110);
  v111 = 24;
  v133 = 7;
  v15 = swift_allocObject();
  v16 = v113;
  v122 = v15;
  *(v15 + 16) = v112;
  *(v15 + 20) = v16;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v17 = swift_allocObject();
  v18 = v113;
  v115 = v17;
  *(v17 + 16) = v112;
  *(v17 + 20) = v18;

  v132 = 32;
  v19 = swift_allocObject();
  v20 = v115;
  v134 = v19;
  *(v19 + 16) = v114;
  *(v19 + 24) = v20;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v116);
  v164 = sub_1B0E43988();
  v165 = sub_1B0E458D8();
  v129 = 17;
  v138 = swift_allocObject();
  v125 = 16;
  *(v138 + 16) = 16;
  v140 = swift_allocObject();
  v130 = 4;
  *(v140 + 16) = 4;
  v21 = swift_allocObject();
  v119 = v21;
  *(v21 + 16) = v117;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v119;
  v142 = v22;
  *(v22 + 16) = v118;
  *(v22 + 24) = v23;
  v144 = swift_allocObject();
  *(v144 + 16) = 0;
  v146 = swift_allocObject();
  *(v146 + 16) = v120;
  v24 = swift_allocObject();
  v25 = v122;
  v124 = v24;
  *(v24 + 16) = v121;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v124;
  v148 = v26;
  *(v26 + 16) = v123;
  *(v26 + 24) = v27;
  v150 = swift_allocObject();
  *(v150 + 16) = v125;
  v152 = swift_allocObject();
  *(v152 + 16) = v130;
  v28 = swift_allocObject();
  v128 = v28;
  *(v28 + 16) = v126;
  *(v28 + 24) = 0;
  v29 = swift_allocObject();
  v30 = v128;
  v154 = v29;
  *(v29 + 16) = v127;
  *(v29 + 24) = v30;
  v156 = swift_allocObject();
  *(v156 + 16) = 0;
  v158 = swift_allocObject();
  *(v158 + 16) = v130;
  v31 = swift_allocObject();
  v32 = v134;
  v136 = v31;
  *(v31 + 16) = v131;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v136;
  v161 = v33;
  *(v33 + 16) = v135;
  *(v33 + 24) = v34;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v159 = sub_1B0E46A48();
  v162 = v35;

  v36 = v138;
  v37 = v162;
  *v162 = v137;
  v37[1] = v36;

  v38 = v140;
  v39 = v162;
  v162[2] = v139;
  v39[3] = v38;

  v40 = v142;
  v41 = v162;
  v162[4] = v141;
  v41[5] = v40;

  v42 = v144;
  v43 = v162;
  v162[6] = v143;
  v43[7] = v42;

  v44 = v146;
  v45 = v162;
  v162[8] = v145;
  v45[9] = v44;

  v46 = v148;
  v47 = v162;
  v162[10] = v147;
  v47[11] = v46;

  v48 = v150;
  v49 = v162;
  v162[12] = v149;
  v49[13] = v48;

  v50 = v152;
  v51 = v162;
  v162[14] = v151;
  v51[15] = v50;

  v52 = v154;
  v53 = v162;
  v162[16] = v153;
  v53[17] = v52;

  v54 = v156;
  v55 = v162;
  v162[18] = v155;
  v55[19] = v54;

  v56 = v158;
  v57 = v162;
  v162[20] = v157;
  v57[21] = v56;

  v58 = v161;
  v59 = v162;
  v162[22] = v160;
  v59[23] = v58;
  sub_1B0394964();

  if (os_log_type_enabled(v164, v165))
  {
    v60 = v93;
    v85 = sub_1B0E45D78();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v84 = 0;
    v86 = sub_1B03949A8(0);
    v87 = sub_1B03949A8(v84);
    v88 = &v170;
    v170 = v85;
    v89 = &v169;
    v169 = v86;
    v90 = &v168;
    v168 = v87;
    sub_1B0394A48(0, &v170);
    sub_1B0394A48(4, v88);
    v166 = v137;
    v167 = v138;
    sub_1B03949FC(&v166, v88, v89, v90);
    v91 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v166 = v139;
      v167 = v140;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v80 = 0;
      v166 = v141;
      v167 = v142;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v79 = 0;
      v166 = v143;
      v167 = v144;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v78 = 0;
      v166 = v145;
      v167 = v146;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v77 = 0;
      v166 = v147;
      v167 = v148;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v76 = 0;
      v166 = v149;
      v167 = v150;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v75 = 0;
      v166 = v151;
      v167 = v152;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v74 = 0;
      v166 = v153;
      v167 = v154;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v73 = 0;
      v166 = v155;
      v167 = v156;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v72 = 0;
      v166 = v157;
      v167 = v158;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v71 = 0;
      v166 = v160;
      v167 = v161;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v70 = 0;
      _os_log_impl(&dword_1B0389000, v164, v165, "[%.*hhx-%.*X] Did generate credentials.", v85, 0x17u);
      v69 = 0;
      sub_1B03998A8(v86);
      sub_1B03998A8(v87);
      sub_1B0E45D58();

      v81 = v70;
    }
  }

  else
  {
    v61 = v93;

    v81 = v61;
  }

  v62 = v81;
  MEMORY[0x1E69E5920](v164);
  (*(v105 + 8))(v106, v101);
  v172 = v100;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1440, &qword_1B0E99410);
  v63 = sub_1B0694F70();
  result = sub_1B039CA88(v92, 0, v67, &type metadata for Credentials, MEMORY[0x1E69E73E0], v63, MEMORY[0x1E69E7410], v82);
  v68 = result;
  if (v62)
  {
    __break(1u);
  }

  else
  {
    v66 = v68;
    v171 = v68;

    v98(v66);
  }

  return result;
}

void *sub_1B068DB38@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B069506C(__dst, v4);
  Credentials.init(_:)(__dst, v5);
  return memcpy(a2, v5, 0x50uLL);
}

uint64_t sub_1B068DF44()
{
  sub_1B06940F8();
  sub_1B0694D70();
  return sub_1B0E467C8();
}

uint64_t sub_1B068DF80()
{
  sub_1B06940F8();
  sub_1B0694D70();
  return sub_1B0E46798();
}

uint64_t sub_1B068DFCC()
{
  sub_1B06940F8();
  sub_1B0694D70();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068E01C()
{
  sub_1B06940F8();
  sub_1B0694D70();
  return sub_1B0E467B8();
}

uint64_t sub_1B068E068()
{
  sub_1B06940F8();
  sub_1B0694178();
  return sub_1B0E46758();
}

uint64_t sub_1B068E0AC()
{
  sub_1B06940F8();
  sub_1B0694178();
  return sub_1B0E46788();
}

uint64_t sub_1B068E0F8()
{
  sub_1B06940F8();
  sub_1B0694178();
  return sub_1B0E46768();
}

uint64_t sub_1B068E144()
{
  sub_1B0694290();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068E180()
{
  sub_1B0694290();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068E1CC()
{
  sub_1B0694290();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068E21C()
{
  sub_1B0694290();
  sub_1B0694800();
  return sub_1B0E467B8();
}

void sub_1B068E338(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  sub_1B0391B00();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_1B068E374(void *a1@<X8>)
{
  v2 = *v1;
  sub_1B041A044();
  *a1 = v3;
}

uint64_t sub_1B068E3A4()
{
  sub_1B0694B78();
  sub_1B0694BF8();
  return sub_1B0E467C8();
}

uint64_t sub_1B068E3E0()
{
  sub_1B0694B78();
  sub_1B0694BF8();
  return sub_1B0E46798();
}

uint64_t sub_1B068E42C()
{
  sub_1B0694B78();
  sub_1B0694BF8();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068E47C()
{
  sub_1B0694B78();
  sub_1B0694BF8();
  return sub_1B0E467B8();
}

uint64_t sub_1B068E4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B068E508@<X0>(uint64_t *a1@<X8>)
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B068E5D0()
{
  sub_1B0694310();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068E7D4()
{
  sub_1B0694310();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068E818()
{
  sub_1B0694310();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068E85C()
{
  sub_1B0694310();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068E944@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B068E9C0()
{
  sub_1B0694408();
  sub_1B0694488();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068EBC4()
{
  sub_1B0694408();
  sub_1B0694488();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068EC08()
{
  sub_1B0694408();
  sub_1B0694488();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068EC4C()
{
  sub_1B0694408();
  sub_1B0694488();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068EC90()
{
  sub_1B0694978();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068ECCC()
{
  sub_1B0694978();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068ED18()
{
  sub_1B0694978();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068ED68()
{
  sub_1B0694978();
  sub_1B0694800();
  return sub_1B0E467B8();
}

uint64_t sub_1B068EDB4()
{
  sub_1B0694500();
  sub_1B0394874();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068EFB8()
{
  sub_1B0694500();
  sub_1B0394874();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068EFFC()
{
  sub_1B0694500();
  sub_1B0394874();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068F040()
{
  sub_1B0694500();
  sub_1B0394874();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068F0D0()
{
  sub_1B0694580();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068F2D4()
{
  sub_1B0694580();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068F318()
{
  sub_1B0694580();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068F35C()
{
  sub_1B0694580();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068F3A0()
{
  sub_1B0694600();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068F5A4()
{
  sub_1B0694600();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068F5E8()
{
  sub_1B0694600();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068F62C()
{
  sub_1B0694600();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068F670()
{
  sub_1B0694680();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068F874()
{
  sub_1B0694680();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068F8B8()
{
  sub_1B0694680();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068F8FC()
{
  sub_1B0694680();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068F940()
{
  sub_1B0694700();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068F97C()
{
  sub_1B0694700();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068F9C8()
{
  sub_1B0694700();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068FA18()
{
  sub_1B0694700();
  sub_1B0694800();
  return sub_1B0E467B8();
}

uint64_t sub_1B068FB80()
{
  sub_1B0694780();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068FBBC()
{
  sub_1B0694780();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068FC08()
{
  sub_1B0694780();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068FC58()
{
  sub_1B0694780();
  sub_1B0694800();
  return sub_1B0E467B8();
}

uint64_t sub_1B068FD74()
{
  sub_1B0694E70();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068FDB0()
{
  sub_1B0694E70();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068FDFC()
{
  sub_1B0694E70();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068FE4C()
{
  sub_1B0694E70();
  sub_1B0694800();
  return sub_1B0E467B8();
}

uint64_t sub_1B068FE98()
{
  sub_1B06923E0();
  sub_1B0694DF0();
  return sub_1B0E46AE8() & 1;
}

uint64_t sub_1B0690090()
{
  sub_1B0694AF8();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B0690294()
{
  sub_1B0694AF8();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B06902D8()
{
  sub_1B0694AF8();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B069031C()
{
  sub_1B0694AF8();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B0690478@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B06906A8()
{
  sub_1B03EFA1C();
  sub_1B0394BAC();
  return sub_1B0E46FE8();
}

uint64_t sub_1B069086C()
{
  sub_1B03EFA1C();
  sub_1B0394BAC();
  return sub_1B0E46FD8();
}

uint64_t sub_1B06908B0()
{
  sub_1B03EFA1C();
  sub_1B0394BAC();
  return sub_1B0E46FC8();
}

uint64_t sub_1B06908F4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B03F150C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B069093C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B0690974();
  *a2 = result;
  return result;
}

uint64_t sub_1B0690974()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E44AC8();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t sub_1B06909E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0690A14(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B0690A14(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B0690AC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0690AF0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0690AF0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  type metadata accessor for ProgressUserInfoKey();
  sub_1B0694E70();
  sub_1B0694800();
  v3 = sub_1B0E467C8();
  MEMORY[0x1E69E5928](v3);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v3;
}

uint64_t sub_1B0690B9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0690BCC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B0690BCC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  type metadata accessor for ProgressUserInfoKey();
  sub_1B0694E70();
  sub_1B0694800();
  sub_1B0E467B8();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B0690C54()
{
  sub_1B0694EF0();
  sub_1B06940F8();
  sub_1B0694178();
  return sub_1B0E46778();
}

uint64_t sub_1B0690CF0()
{
  sub_1B0694CF0();
  sub_1B0694290();
  return sub_1B0E46778();
}

uint64_t sub_1B0690D3C()
{
  v2 = *v0;
  sub_1B0694C70();
  sub_1B0694B78();
  return sub_1B0E46778();
}

uint64_t sub_1B0690DDC()
{
  sub_1B06949F8();
  sub_1B0694978();
  return sub_1B0E46778();
}

uint64_t sub_1B0690E28()
{
  sub_1B0694A78();
  sub_1B0694700();
  return sub_1B0E46778();
}

uint64_t sub_1B0690EB4()
{
  sub_1B0694878();
  sub_1B0694780();
  return sub_1B0E46778();
}

uint64_t sub_1B0690F00()
{
  sub_1B0694178();
  sub_1B0694E70();
  return sub_1B0E46778();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_1B06911A4(uint64_t a1, char a2)
{
  v10 = *(_s6LoggerVMa() - 8);
  v3 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v4 = v2 + ((v3 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1B068C804(a1, a2 & 1, v2 + v3, v5, v6);
}

uint64_t type metadata accessor for Key()
{
  v4 = qword_1EB6E1260;
  if (!qword_1EB6E1260)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1260);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for IMAPCapability()
{
  v4 = qword_1EB6E1268;
  if (!qword_1EB6E1268)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1268);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ECMessageFlagColor()
{
  v4 = qword_1EB6E1270;
  if (!qword_1EB6E1270)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1270);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for MessageRuleQualifier()
{
  v4 = qword_1EB6DAA18;
  if (!qword_1EB6DAA18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAA18);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ECMessageHeaderKey()
{
  v4 = qword_1EB6DAA80;
  if (!qword_1EB6DAA80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAA80);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CriterionType()
{
  v4 = qword_1EB6E1278;
  if (!qword_1EB6E1278)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1278);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B06915F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t type metadata accessor for timeval()
{
  v4 = qword_1EB6DA5C0;
  if (!qword_1EB6DA5C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA5C0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for EMPersistenceStatisticsKey()
{
  v4 = qword_1EB6DA7F8;
  if (!qword_1EB6DA7F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA7F8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for WritingOptions()
{
  v4 = qword_1EB6DA990;
  if (!qword_1EB6DA990)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA990);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for MutabilityOptions()
{
  v4 = qword_1EB6DA628;
  if (!qword_1EB6DA628)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA628);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ReadingOptions()
{
  v4 = qword_1EB6DA9D0;
  if (!qword_1EB6DA9D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA9D0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for FlowedTextConversionOptions()
{
  v4 = qword_1EB6DA778;
  if (!qword_1EB6DA778)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA778);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for MFMessageFlags()
{
  v4 = qword_1EB6DABB0;
  if (!qword_1EB6DABB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DABB0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for MailboxAttributes()
{
  v4 = qword_1EB6DAAA8;
  if (!qword_1EB6DAAA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAAA8);
      return v1;
    }
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for MailboxRowID(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MailboxRowID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for EDMailboxRowID_s()
{
  v4 = qword_1EB6DAB50;
  if (!qword_1EB6DAB50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAB50);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SearchOptions()
{
  v4 = qword_1EB6E1288;
  if (!qword_1EB6E1288)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1288);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ECMailboxType()
{
  v4 = qword_1EB6DAC60;
  if (!qword_1EB6DAC60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAC60);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ECTransferMessageActionType()
{
  v4 = qword_1EB6DA7C8;
  if (!qword_1EB6DA7C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA7C8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for EFContentProtectionState()
{
  v4 = qword_1EB6E1290;
  if (!qword_1EB6E1290)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1290);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for URLResourceKey()
{
  v4 = qword_1EB6DEDC8;
  if (!qword_1EB6DEDC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DEDC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for MFAccountPasswordPromptResult()
{
  v4 = qword_1EB6E12A0;
  if (!qword_1EB6E12A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E12A0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for EMActivityUserInfoKey()
{
  v4 = qword_1EB6DED98;
  if (!qword_1EB6DED98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DED98);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for EMActivityFetchState()
{
  v4 = qword_1EB6DAA30;
  if (!qword_1EB6DAA30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAA30);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1B06923E0()
{
  v2 = qword_1EB6DEDB8;
  if (!qword_1EB6DEDB8)
  {
    type metadata accessor for EMActivityUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692478()
{
  v2 = qword_1EB6DEDA0;
  if (!qword_1EB6DEDA0)
  {
    type metadata accessor for EMActivityUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692510()
{
  v2 = qword_1EB6DEDE8;
  if (!qword_1EB6DEDE8)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06925A8()
{
  v2 = qword_1EB6DEDD0;
  if (!qword_1EB6DEDD0)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692640()
{
  v2 = qword_1EB6DAC70;
  if (!qword_1EB6DAC70)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06926D8()
{
  v2 = qword_1EB6E12B0;
  if (!qword_1EB6E12B0)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692770()
{
  v2 = qword_1EB6E12B8;
  if (!qword_1EB6E12B8)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692808()
{
  v2 = qword_1EB6E12C0;
  if (!qword_1EB6E12C0)
  {
    type metadata accessor for SearchOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06928A0()
{
  v2 = qword_1EB6E12C8;
  if (!qword_1EB6E12C8)
  {
    type metadata accessor for SearchOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692938()
{
  v2 = qword_1EB6DAAE0;
  if (!qword_1EB6DAAE0)
  {
    type metadata accessor for MailboxAttributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06929D0()
{
  v2 = qword_1EB6DAAC8;
  if (!qword_1EB6DAAC8)
  {
    type metadata accessor for MailboxAttributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692A68()
{
  v2 = qword_1EB6DABD0;
  if (!qword_1EB6DABD0)
  {
    type metadata accessor for MFMessageFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692B00()
{
  v2 = qword_1EB6DABC8;
  if (!qword_1EB6DABC8)
  {
    type metadata accessor for MFMessageFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692B98()
{
  v2 = qword_1EB6DAA00;
  if (!qword_1EB6DAA00)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692C30()
{
  v2 = qword_1EB6DA9F8;
  if (!qword_1EB6DA9F8)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692CC8()
{
  v2 = qword_1EB6DA650;
  if (!qword_1EB6DA650)
  {
    type metadata accessor for MutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692D60()
{
  v2 = qword_1EB6DA648;
  if (!qword_1EB6DA648)
  {
    type metadata accessor for MutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692DF8()
{
  v2 = qword_1EB6DA9C0;
  if (!qword_1EB6DA9C0)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692E90()
{
  v2 = qword_1EB6DA9B8;
  if (!qword_1EB6DA9B8)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692F28()
{
  v2 = qword_1EB6DA820;
  if (!qword_1EB6DA820)
  {
    type metadata accessor for EMPersistenceStatisticsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692FC0()
{
  v2 = qword_1EB6DA808;
  if (!qword_1EB6DA808)
  {
    type metadata accessor for EMPersistenceStatisticsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693058()
{
  v2 = qword_1EB6DAA90;
  if (!qword_1EB6DAA90)
  {
    type metadata accessor for ECMessageHeaderKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06930F0()
{
  v2 = qword_1EB6E12D8;
  if (!qword_1EB6E12D8)
  {
    type metadata accessor for ECMessageHeaderKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693188()
{
  v2 = qword_1EB6DAAA0;
  if (!qword_1EB6DAAA0)
  {
    type metadata accessor for ECMessageHeaderKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693238()
{
  v2 = qword_1EB6DAC20;
  if (!qword_1EB6DAC20)
  {
    type metadata accessor for EMFetchOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06932D0()
{
  v2 = qword_1EB6E12E8;
  if (!qword_1EB6E12E8)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693368()
{
  v2 = qword_1EB6E12F0;
  if (!qword_1EB6E12F0)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693400()
{
  v2 = qword_1EB6E12F8;
  if (!qword_1EB6E12F8)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06934B0()
{
  v2 = qword_1EB6DAC28;
  if (!qword_1EB6DAC28)
  {
    type metadata accessor for EMFetchOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693548()
{
  v2 = qword_1EB6DA830;
  if (!qword_1EB6DA830)
  {
    type metadata accessor for EMPersistenceStatisticsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06935E0()
{
  v2 = qword_1EB6DA9C8;
  if (!qword_1EB6DA9C8)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693678()
{
  v2 = qword_1EB6DA9B0;
  if (!qword_1EB6DA9B0)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693710()
{
  v2 = qword_1EB6DA658;
  if (!qword_1EB6DA658)
  {
    type metadata accessor for MutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06937A8()
{
  v2 = qword_1EB6DA640;
  if (!qword_1EB6DA640)
  {
    type metadata accessor for MutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693840()
{
  v2 = qword_1EB6DAA08;
  if (!qword_1EB6DAA08)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06938D8()
{
  v2 = qword_1EB6DA9F0;
  if (!qword_1EB6DA9F0)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693970()
{
  v2 = qword_1EB6DA7A8;
  if (!qword_1EB6DA7A8)
  {
    type metadata accessor for FlowedTextConversionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA7A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693A08()
{
  v2 = qword_1EB6DA7A0;
  if (!qword_1EB6DA7A0)
  {
    type metadata accessor for FlowedTextConversionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693AA0()
{
  v2 = qword_1EB6DA7B8;
  if (!qword_1EB6DA7B8)
  {
    type metadata accessor for FlowedTextConversionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA7B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693B38()
{
  v2 = qword_1EB6DA790;
  if (!qword_1EB6DA790)
  {
    type metadata accessor for FlowedTextConversionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693BD0()
{
  v2 = qword_1EB6DABD8;
  if (!qword_1EB6DABD8)
  {
    type metadata accessor for MFMessageFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693C68()
{
  v2 = qword_1EB6DABC0;
  if (!qword_1EB6DABC0)
  {
    type metadata accessor for MFMessageFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693D00()
{
  v2 = qword_1EB6DAAD8;
  if (!qword_1EB6DAAD8)
  {
    type metadata accessor for MailboxAttributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693D98()
{
  v2 = qword_1EB6DAAD0;
  if (!qword_1EB6DAAD0)
  {
    type metadata accessor for MailboxAttributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693E30()
{
  v2 = qword_1EB6E1308;
  if (!qword_1EB6E1308)
  {
    type metadata accessor for SearchOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693EC8()
{
  v2 = qword_1EB6E1310;
  if (!qword_1EB6E1310)
  {
    type metadata accessor for SearchOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693F60()
{
  v2 = qword_1EB6DEDF8;
  if (!qword_1EB6DEDF8)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693FF8()
{
  v2 = qword_1EB6DA960;
  if (!qword_1EB6DA960)
  {
    type metadata accessor for EMActivityUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694078()
{
  v2 = qword_1EB6DAA38;
  if (!qword_1EB6DAA38)
  {
    type metadata accessor for EMActivityFetchState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06940F8()
{
  v2 = qword_1EB6DEDB0;
  if (!qword_1EB6DEDB0)
  {
    type metadata accessor for EMActivityUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694178()
{
  v2 = qword_1EB6DA958;
  if (!qword_1EB6DA958)
  {
    type metadata accessor for ProgressUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA958);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ProgressUserInfoKey()
{
  v4 = qword_1EB6DEF08;
  if (!qword_1EB6DEF08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DEF08);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1B0694290()
{
  v2 = qword_1EB6DEDE0;
  if (!qword_1EB6DEDE0)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694310()
{
  v2 = qword_1EB6E1318;
  if (!qword_1EB6E1318)
  {
    type metadata accessor for SearchOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694390()
{
  v2 = qword_1EB6DB860;
  if (!qword_1EB6DB860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694408()
{
  v2 = qword_1EB6DABB8;
  if (!qword_1EB6DABB8)
  {
    type metadata accessor for MFMessageFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694488()
{
  v2 = qword_1EB6DA310;
  if (!qword_1EB6DA310)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694500()
{
  v2 = qword_1EB6DA788;
  if (!qword_1EB6DA788)
  {
    type metadata accessor for FlowedTextConversionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694580()
{
  v2 = qword_1EB6DA9E0;
  if (!qword_1EB6DA9E0)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694600()
{
  v2 = qword_1EB6DA638;
  if (!qword_1EB6DA638)
  {
    type metadata accessor for MutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694680()
{
  v2 = qword_1EB6DA9A0;
  if (!qword_1EB6DA9A0)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694700()
{
  v2 = qword_1EB6DA818;
  if (!qword_1EB6DA818)
  {
    type metadata accessor for EMPersistenceStatisticsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694780()
{
  v2 = qword_1EB6E1328;
  if (!qword_1EB6E1328)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694800()
{
  v2 = qword_1EB6DEF40;
  if (!qword_1EB6DEF40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694878()
{
  v2 = qword_1EB6E1338;
  if (!qword_1EB6E1338)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06948F8()
{
  v2 = qword_1EB6E1340;
  if (!qword_1EB6E1340)
  {
    type metadata accessor for ECMessageFlagColor();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694978()
{
  v2 = qword_1EB6E1350;
  if (!qword_1EB6E1350)
  {
    type metadata accessor for ECMessageHeaderKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06949F8()
{
  v2 = qword_1EB6E1358;
  if (!qword_1EB6E1358)
  {
    type metadata accessor for ECMessageHeaderKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694A78()
{
  v2 = qword_1EB6DA840;
  if (!qword_1EB6DA840)
  {
    type metadata accessor for EMPersistenceStatisticsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694AF8()
{
  v2 = qword_1EB6DAAB8;
  if (!qword_1EB6DAAB8)
  {
    type metadata accessor for MailboxAttributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694B78()
{
  v2 = qword_1EB6E1360;
  if (!qword_1EB6E1360)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694BF8()
{
  v2 = qword_1EB6E1368;
  if (!qword_1EB6E1368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694C70()
{
  v2 = qword_1EB6E1370;
  if (!qword_1EB6E1370)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694CF0()
{
  v2 = qword_1EB6DEE08;
  if (!qword_1EB6DEE08)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694D70()
{
  v2 = qword_1EB6DED90;
  if (!qword_1EB6DED90)
  {
    type metadata accessor for ProgressUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694DF0()
{
  v2 = qword_1EB6DA948;
  if (!qword_1EB6DA948)
  {
    type metadata accessor for ProgressUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694E70()
{
  v2 = qword_1EB6DEF20;
  if (!qword_1EB6DEF20)
  {
    type metadata accessor for ProgressUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694EF0()
{
  v2 = qword_1EB6DA968;
  if (!qword_1EB6DA968)
  {
    type metadata accessor for EMActivityUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694F70()
{
  v2 = qword_1EB6DB438;
  if (!qword_1EB6DB438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1440, &qword_1B0E99410);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB438);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t *sub_1B069506C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  sub_1B0695144(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  result = a2;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  return result;
}

uint64_t sub_1B0695144(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = (a10 >> 59) & 6;
  if (((a8 & 0x2000000000000000) != 0) | v10)
  {
    switch((((a8 & 0x2000000000000000) != 0) | v10))
    {
      case 1u:
        sub_1B03B2000(result, a2);
        sub_1B03B2000(a3, a4);
        sub_1B03B2000(a5, a6);
        sub_1B03B2000(a7, a8 & 0xDFFFFFFFFFFFFFFFLL);
        return sub_1B03B2000(a9, a10 & 0xCFFFFFFFFFFFFFFFLL);
      case 2u:
        return sub_1B03B2000(result, a2);
      case 3u:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }
  }

  else
  {
    sub_1B03B2000(result, a2);
    return sub_1B03B2000(a3, a4);
  }

  return result;
}

uint64_t type metadata accessor for ECJunkMailLevel()
{
  v4 = qword_1EB6DAB90;
  if (!qword_1EB6DAB90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAB90);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_1B0695334(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0695414(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t type metadata accessor for MFMailMessageLibraryUIDMessageSize()
{
  v4 = qword_1EB6DA5F8;
  if (!qword_1EB6DA5F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA5F8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for EDMailboxActionType()
{
  v4 = qword_1EB6E1450;
  if (!qword_1EB6E1450)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1450);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B06956FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 16))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 12);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0695848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 > 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 12) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for MFMailMessageLibraryIndexedUIDRange()
{
  v4 = qword_1EB6DA5E8;
  if (!qword_1EB6DA5E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA5E8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ECMessageBodyElementAttributes()
{
  v4 = qword_1EB6DA700;
  if (!qword_1EB6DA700)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA700);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B0695B64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0695C6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t type metadata accessor for os_unfair_lock_s()
{
  v4 = qword_1EB6DAB20;
  if (!qword_1EB6DAB20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAB20);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for BGSystemTaskExpirationReason()
{
  v4 = qword_1EB6E1460;
  if (!qword_1EB6E1460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1460);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for MFActivityMonitorNewMessagesState()
{
  v4 = qword_1EB6DA618;
  if (!qword_1EB6DA618)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA618);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CompareOptions()
{
  v4 = qword_1EB6E1470;
  if (!qword_1EB6E1470)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1470);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1B0696080()
{
  v2 = qword_1EB6DEF30;
  if (!qword_1EB6DEF30)
  {
    type metadata accessor for ProgressUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0696118()
{
  v2 = qword_1EB6DEF18;
  if (!qword_1EB6DEF18)
  {
    type metadata accessor for ProgressUserInfoKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06961B0()
{
  v2 = qword_1EB6DA710;
  if (!qword_1EB6DA710)
  {
    type metadata accessor for ECMessageBodyElementAttributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0696230()
{
  v2 = qword_1EB6DAB98;
  if (!qword_1EB6DAB98)
  {
    type metadata accessor for ECJunkMailLevel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAB98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06962B0()
{
  v2 = *v0;
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t _s15ActivityUpdaterVMa()
{
  v1 = qword_1EB6DBE40;
  if (!qword_1EB6DBE40)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1B0696390(char *a1, char *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  v5 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v5;
  v6 = *(_s8ActivityVMa() + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

uint64_t _s8ActivityVMa()
{
  v1 = qword_1EB6DBD58;
  if (!qword_1EB6DBD58)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1B06964CC(char *a1)
{
  v7 = a1;
  v5[1] = 0;
  v5[0] = (*(*(_s8ActivityVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v6 = v5 - v5[0];
  sub_1B0696390(v2, v5 - v5[0]);
  v3 = _s15ActivityUpdaterVMa();
  sub_1B0696574(v6, (v1 + *(v3 + 20)));
  return sub_1B0696630(v7);
}

char *sub_1B0696574(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = v2;

  v4 = *(a2 + 1);
  *(a2 + 1) = *(a1 + 1);

  v7 = *(_s8ActivityVMa() + 24);
  v5 = sub_1B0E43108();
  (*(*(v5 - 8) + 40))(&a2[v7], &a1[v7]);
  return a2;
}

char *sub_1B0696630(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v5 = *(_s8ActivityVMa() + 24);
  v3 = sub_1B0E43108();
  (*(*(v3 - 8) + 8))(&a1[v5]);
  return a1;
}

uint64_t sub_1B06966C0()
{
  v2 = *(v0 + *(_s15ActivityUpdaterVMa() + 24));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B06966F8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(_s15ActivityUpdaterVMa() + 24));
  v3 = *v2;
  *v2 = a1;
}

void *sub_1B0696744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a3;
  v26 = a1;
  v23 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v16 = 0;
  v27 = sub_1B0E43108();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v14 - v15;
  v17 = (*(*(_s8ActivityVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v14 - v17;
  v21 = _s15ActivityUpdaterVMa();
  v18 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v14 - v18;
  v31 = &v14 - v18;
  v30 = v3;
  v29 = v4;
  MEMORY[0x1E69E5928](v4);
  v5 = v24;
  v6 = v26;
  v7 = v27;
  v8 = v19;
  *v28 = v23;
  (*(v5 + 16))(v8, v6, v7);
  sub_1B0696984(v19, v20);
  sub_1B0696BC8(v20, &v28[*(v21 + 20)]);
  v9 = sub_1B0696C6C();
  v10 = v22;
  v11 = v9;
  v12 = v28;
  *&v28[*(v21 + 24)] = v11;
  sub_1B0696CF8(v12, v10);
  MEMORY[0x1E69E5920](v23);
  (*(v24 + 8))(v26, v27);
  return sub_1B0696E40(v28);
}

char *sub_1B0696984@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v18 = a2;
  v22 = a1;
  v25 = 0;
  v24 = 0;
  v11 = 0;
  v21 = sub_1B0E43108();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v6 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &v6 - v6;
  v7 = (*(*(_s8ActivityVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v22);
  v17 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v23 = &v6 - v8;
  v25 = &v6 - v8;
  v24 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1660, &unk_1B0E99840);
  v10 = sub_1B0E46A48();
  v9 = type metadata accessor for Activity.MailboxStatus(v11);
  v12 = sub_1B0417568();
  v13 = &type metadata for MailboxRowID;
  v16 = sub_1B0E445D8();
  sub_1B0E46A48();
  v14 = sub_1B0E45438();
  (*(v19 + 16))(v15, v22, v21);
  sub_1B06A42BC(v16, v14, v15, v17);
  sub_1B0696BC8(v17, v23);
  sub_1B0696390(v23, v18);
  (*(v19 + 8))(v22, v21);
  return sub_1B0696630(v23);
}

char *sub_1B0696BC8(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v4 = *(_s8ActivityVMa() + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_1B0696C6C()
{
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1790, &qword_1B0E99B48);
  sub_1B0E46A48();
  sub_1B0417568();
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

char *sub_1B0696CF8(char *a1, char *a2)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v4;
  v9 = _s15ActivityUpdaterVMa();
  v5 = *(v9 + 20);
  v6 = *&a1[v5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v5] = v6;
  v7 = *&a1[v5 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v5 + 8] = v7;
  v8 = *(_s8ActivityVMa() + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(&a2[v5 + v8], &a1[v5 + v8]);
  v12 = *(v9 + 24);
  v13 = *&a1[v12];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v12] = v13;
  return result;
}

void *sub_1B0696E40(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  v8 = _s15ActivityUpdaterVMa();
  v6 = a1 + *(v8 + 20);
  v1 = *v6;

  v2 = *(v6 + 1);

  v7 = *(_s8ActivityVMa() + 24);
  v3 = sub_1B0E43108();
  (*(*(v3 - 8) + 8))(&v6[v7]);
  v4 = *(a1 + *(v8 + 24));

  return a1;
}

uint64_t sub_1B0696F14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v176 = a4;
  v175 = a3;
  v178 = a2;
  v177 = a1;
  v168 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v163 = 0;
  v186 = 0;
  v184 = 0;
  v164 = sub_1B0E43108();
  v165 = *(v164 - 8);
  v166 = v165;
  v5 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](0);
  v167 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = _s6LoggerVMa();
  v171 = *(*(v169 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v168);
  v173 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = v72 - v173;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v172 = v72 - v173;
  MEMORY[0x1EEE9AC00](v8);
  v174 = v72 - v173;
  v179 = sub_1B0E439A8();
  v180 = *(v179 - 8);
  v181 = v180;
  v9 = *(v180 + 64);
  v10 = MEMORY[0x1EEE9AC00](v177);
  v182 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v10;
  v198 = v12;
  v197 = v13;
  v196 = v14;
  v195 = v4;
  v183 = *v12;
  if ((v12[1] & 1) == 0)
  {
    v162 = v183;
    v184 = v183;
    v194 = v183;
LABEL_11:
    v185 = v194;
    sub_1B0E430F8();
    v72[1] = v72;
    v67 = MEMORY[0x1EEE9AC00](v177);
    v72[-2] = v68;
    sub_1B06985B4(v67, &v185, v69, sub_1B06B9120, &v72[-4], v70);
    (*(v166 + 8))(v167, v164);
    return v163;
  }

  v15 = MailboxName.inbox.unsafeMutableAddressor();
  v160 = *v15;
  v159 = *(v15 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07BEBE4(v160, v159, &v192);

  v161 = v192;
  if ((v193 & 1) == 0)
  {
    v158 = v161;
    v16 = v178;
    v17 = v161;
    v186 = v161;
    *v178 = v161;
    *(v16 + 8) = 0;
    v194 = v17;
    goto LABEL_11;
  }

  (*(v181 + 16))(v182, v176, v179);
  sub_1B0394784(v176, v174);
  sub_1B0394784(v174, v172);
  sub_1B03F4FD0(v174, v170);
  v18 = (v172 + *(v169 + 20));
  v111 = *v18;
  v112 = *(v18 + 1);
  sub_1B039480C(v172);
  v110 = 24;
  v137 = 7;
  v19 = swift_allocObject();
  v20 = v112;
  v122 = v19;
  *(v19 + 16) = v111;
  *(v19 + 20) = v20;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v21 = swift_allocObject();
  v22 = v112;
  v113 = v21;
  *(v21 + 16) = v111;
  *(v21 + 20) = v22;

  v136 = 32;
  v23 = swift_allocObject();
  v24 = v113;
  v138 = v23;
  *(v23 + 16) = sub_1B039BBE8;
  *(v23 + 24) = v24;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v170);
  v157 = sub_1B0E43988();
  v114 = v157;
  v156 = sub_1B0E458E8();
  v115 = v156;
  v132 = 17;
  v141 = swift_allocObject();
  v116 = v141;
  v125 = 16;
  *(v141 + 16) = 16;
  v142 = swift_allocObject();
  v117 = v142;
  v134 = 4;
  *(v142 + 16) = 4;
  v25 = swift_allocObject();
  v118 = v25;
  *(v25 + 16) = sub_1B0394C30;
  v128 = 0;
  *(v25 + 24) = 0;
  v26 = swift_allocObject();
  v27 = v118;
  v143 = v26;
  v119 = v26;
  *(v26 + 16) = sub_1B0394C24;
  *(v26 + 24) = v27;
  v144 = swift_allocObject();
  v120 = v144;
  v131 = 0;
  *(v144 + 16) = 0;
  v145 = swift_allocObject();
  v121 = v145;
  *(v145 + 16) = 1;
  v28 = swift_allocObject();
  v29 = v122;
  v123 = v28;
  *(v28 + 16) = sub_1B039BA2C;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v123;
  v146 = v30;
  v124 = v30;
  *(v30 + 16) = sub_1B039BA88;
  *(v30 + 24) = v31;
  v147 = swift_allocObject();
  v126 = v147;
  *(v147 + 16) = v125;
  v148 = swift_allocObject();
  v127 = v148;
  *(v148 + 16) = v134;
  v32 = swift_allocObject();
  v33 = v128;
  v129 = v32;
  *(v32 + 16) = sub_1B039BB94;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v129;
  v149 = v34;
  v130 = v34;
  *(v34 + 16) = sub_1B0394C24;
  *(v34 + 24) = v35;
  v150 = swift_allocObject();
  v133 = v150;
  *(v150 + 16) = v131;
  v151 = swift_allocObject();
  v135 = v151;
  *(v151 + 16) = v134;
  v36 = swift_allocObject();
  v37 = v138;
  v139 = v36;
  *(v36 + 16) = sub_1B039BBA0;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  v39 = v139;
  v154 = v38;
  v140 = v38;
  *(v38 + 16) = sub_1B039BC08;
  *(v38 + 24) = v39;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v152 = sub_1B0E46A48();
  v153 = v40;

  v41 = v141;
  v42 = v153;
  *v153 = sub_1B0398F5C;
  v42[1] = v41;

  v43 = v142;
  v44 = v153;
  v153[2] = sub_1B0398F5C;
  v44[3] = v43;

  v45 = v143;
  v46 = v153;
  v153[4] = sub_1B0399178;
  v46[5] = v45;

  v47 = v144;
  v48 = v153;
  v153[6] = sub_1B0398F5C;
  v48[7] = v47;

  v49 = v145;
  v50 = v153;
  v153[8] = sub_1B0398F5C;
  v50[9] = v49;

  v51 = v146;
  v52 = v153;
  v153[10] = sub_1B039BA94;
  v52[11] = v51;

  v53 = v147;
  v54 = v153;
  v153[12] = sub_1B0398F5C;
  v54[13] = v53;

  v55 = v148;
  v56 = v153;
  v153[14] = sub_1B0398F5C;
  v56[15] = v55;

  v57 = v149;
  v58 = v153;
  v153[16] = sub_1B0399178;
  v58[17] = v57;

  v59 = v150;
  v60 = v153;
  v153[18] = sub_1B0398F5C;
  v60[19] = v59;

  v61 = v151;
  v62 = v153;
  v153[20] = sub_1B0398F5C;
  v62[21] = v61;

  v63 = v153;
  v64 = v154;
  v153[22] = sub_1B03991EC;
  v63[23] = v64;
  sub_1B0394964();

  if (os_log_type_enabled(v157, v156))
  {
    v65 = v163;
    v104 = sub_1B0E45D78();
    v100 = v104;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v102 = 0;
    v105 = sub_1B03949A8(0);
    v103 = v105;
    v106 = sub_1B03949A8(v102);
    v191 = v104;
    v190 = v105;
    v189 = v106;
    v107 = &v191;
    sub_1B0394A48(0, &v191);
    sub_1B0394A48(4, v107);
    v187 = sub_1B0398F5C;
    v188 = v116;
    sub_1B03949FC(&v187, v107, &v190, &v189);
    v108 = v65;
    v109 = v65;
    if (v65)
    {
      v98 = 0;

      __break(1u);
    }

    else
    {
      v187 = sub_1B0398F5C;
      v188 = v117;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v96 = 0;
      v97 = 0;
      v187 = sub_1B0399178;
      v188 = v119;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v94 = 0;
      v95 = 0;
      v187 = sub_1B0398F5C;
      v188 = v120;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v92 = 0;
      v93 = 0;
      v187 = sub_1B0398F5C;
      v188 = v121;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v90 = 0;
      v91 = 0;
      v187 = sub_1B039BA94;
      v188 = v124;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v88 = 0;
      v89 = 0;
      v187 = sub_1B0398F5C;
      v188 = v126;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v86 = 0;
      v87 = 0;
      v187 = sub_1B0398F5C;
      v188 = v127;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v84 = 0;
      v85 = 0;
      v187 = sub_1B0399178;
      v188 = v130;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v82 = 0;
      v83 = 0;
      v187 = sub_1B0398F5C;
      v188 = v133;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v80 = 0;
      v81 = 0;
      v187 = sub_1B0398F5C;
      v188 = v135;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v78 = 0;
      v79 = 0;
      v187 = sub_1B03991EC;
      v188 = v140;
      sub_1B03949FC(&v187, &v191, &v190, &v189);
      v76 = 0;
      v77 = 0;
      _os_log_impl(&dword_1B0389000, v114, v115, "[%.*hhx-%.*X] Unable to get inbox row ID.", v100, 0x17u);
      v75 = 0;
      sub_1B03998A8(v103);
      sub_1B03998A8(v106);
      sub_1B0E45D58();

      v99 = v76;
    }
  }

  else
  {
    v66 = v163;

    v99 = v66;
  }

  v73 = v99;

  (*(v181 + 8))(v182, v179);
  return v73;
}

id sub_1B0698500(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v8 = *a1;
  v7 = a2;
  v6 = v8;
  v5 = sub_1B07BECC0(&v6);
  if (!v5)
  {
    return 0;
  }

  v3 = [v5 objectID];
  MEMORY[0x1E69E5920](v5);
  return v3;
}

char *sub_1B06985B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v20 = a2;
  v25 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v35 = 0;
  v18 = 0;
  v26 = sub_1B0E43108();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v17 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](0);
  v28 = &v16 - v17;
  v19 = (*(*(type metadata accessor for Activity(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v27 = &v16 - v19;
  v22 = (*(*(_s8ActivityVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v21);
  v33 = &v16 - v22;
  v41 = v8;
  v40 = *v9;
  v39 = v10;
  v37 = v11;
  v38 = v12;
  v36 = v13;
  v35 = v6;
  v29 = &v34;
  v34 = v40;
  sub_1B03DEB8C(v8, v14);
  (*(v23 + 16))(v28, v25, v26);
  sub_1B06987D4(v29, v27, v28, v33);
  sub_1B069945C(v33, v30, v31, v32);
  return sub_1B0696630(v33);
}

char *sub_1B06987D4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a4;
  v86 = a1;
  v68 = a2;
  v82 = a3;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v103 = 0;
  v104 = 0;
  v100 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  v69 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v15 - v69;
  v71 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v69);
  v72 = &v15 - v71;
  v73 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v71);
  v94 = &v15 - v73;
  v78 = 0;
  v95 = type metadata accessor for Activity.MailboxStatus(0);
  v92 = *(v95 - 8);
  v93 = v95 - 8;
  v74 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v78);
  v75 = &v15 - v74;
  v118 = &v15 - v74;
  v76 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v15 - v76;
  v117 = &v15 - v76;
  v81 = sub_1B0E43108();
  v87 = *(v81 - 8);
  v80 = v81 - 8;
  v79 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v89 = &v15 - v79;
  v84 = *(*(_s8ActivityVMa() - 8) + 64);
  v83 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v89);
  v90 = &v15 - v83;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v91 = &v15 - v85;
  v116 = &v15 - v85;
  v88 = *v86;
  v115 = v88;
  v114 = a2;
  v113 = v12;
  (*(v87 + 16))(v11);
  sub_1B0696984(v89, v90);
  sub_1B0696BC8(v90, v91);
  Activity.accountStatus.getter(v94);
  v96 = *(v92 + 48);
  v97 = v92 + 48;
  if (v96(v94, 1, v95) != 1)
  {
    sub_1B0415DC0(v94, v77);
    sub_1B0416014(v77, v72);
    (*(v92 + 56))(v72, 0, 1, v95);
    v66 = &v98;
    v98 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1670, &unk_1B0E99860);
    sub_1B0E44788();
    sub_1B0416B60(v77);
LABEL_37:
    sub_1B0696390(v91, v67);
    (*(v87 + 8))(v82, v81);
    sub_1B03DC998(v68);
    return sub_1B0696630(v91);
  }

  sub_1B0415C08(v94);
  Activity.allMailboxIDs.getter(&v107);
  v61 = v107;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v62 = v61 + 56;
  v63 = (1 << (*(v61 + 32) & 0x3F)) - 1;
  v64 = *(v61 + 56);
  v65 = v63 + 1;
  if (v63 + 1 < 64)
  {
    v60 = v64 & ((1 << (v65 & 0x3F)) - 1);
  }

  else
  {
    v60 = v64;
  }

  v108 = v61;
  v109 = v62;
  v110 = v63;
  v111 = 0;
  v112 = v60;
  while (1)
  {
    if (v108 < 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v58 = v108;
    v54 = v109;
    v55 = v110;
    v56 = v111;
    v57 = v112;
    result = sub_1B06B9128();
    v59 = v58;
    if (v58 < 0)
    {
      break;
    }

    v49 = v58;
    v50 = v54;
    v51 = v55;
    v52 = v56;
    v53 = v57;
LABEL_13:
    v43 = v53;
    v44 = v52;
    v45 = v51;
    v46 = v50;
    v47 = v49;
    if (!v53)
    {
      goto LABEL_15;
    }

    v37 = (v44 << 6) + __clz(__rbit64(v43));
    v38 = v43 & (v43 - 1);
    v39 = v44;
LABEL_25:
    v26 = v39;
    v25 = v38;
    sub_1B03D091C((*(v47 + 48) + 16 * v37), &v105);
    v27 = v25;
    v28 = v26;
LABEL_26:
    v108 = v47;
    v109 = v46;
    v110 = v45;
    v111 = v28;
    v112 = v27;
    sub_1B06B916C();
    v23 = v105;
    v24 = v106;
    if (!v105)
    {
      sub_1B06B91B0(&v108);
      goto LABEL_37;
    }

    v21 = v23;
    v22 = v24;
    v19 = v24;
    v18 = v23;
    v103 = v23;
    v104 = v24;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B5A58(v18, v19, &v101);
    v20 = v101;
    if (v102)
    {
    }

    else
    {
      v17 = v20;
      v16 = v20;
      v100 = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      Activity.subscript.getter(v18, v19, v70);
      if (v96(v70, 1, v95) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v96(v70, 1, v95) != 1)
        {
          sub_1B0415C08(v70);
        }
      }

      else
      {
        sub_1B0415DC0(v70, v75);
      }

      sub_1B0416014(v75, v72);
      (*(v92 + 56))(v72, 0, 1, v95);
      v15 = &v99;
      v99 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1670, &unk_1B0E99860);
      sub_1B0E44788();
      sub_1B0416B60(v75);
    }
  }

  v48 = v59 & 0x7FFFFFFFFFFFFFFFLL;

  __break(1u);
LABEL_15:
  v40 = (v45 + 64) / 0x40uLL;
  v41 = v43;
  for (i = v44; ; i = v36)
  {
    v34 = i;
    v35 = v41;
    v36 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v32 = v35;
    v33 = v34;
    if (v36 >= v40)
    {
      v105 = 0;
      v106 = 0;
      v27 = v32;
      v28 = v33;
      goto LABEL_26;
    }

    v29 = *(v46 + 8 * v36);
    v30 = v29;
    v31 = v36;
    if (v29)
    {
      v37 = (v31 << 6) + __clz(__rbit64(v30));
      v38 = v30 & (v30 - 1);
      v39 = v31;
      goto LABEL_25;
    }

    v41 = 0;
  }

  __break(1u);
  return result;
}

char *sub_1B069945C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a1;
  v110 = a2;
  v111 = a3;
  v115 = a4;
  v122 = sub_1B039BBE8;
  v130 = sub_1B0394C30;
  v131 = sub_1B0394C24;
  v133 = sub_1B039BA2C;
  v135 = sub_1B039BA88;
  v138 = sub_1B039BB94;
  v139 = sub_1B0394C24;
  v142 = sub_1B039BBA0;
  v144 = sub_1B039BC08;
  v147 = sub_1B06B91F0;
  v151 = sub_1B039BCF8;
  v153 = sub_1B0398F5C;
  v155 = sub_1B0398F5C;
  v157 = sub_1B0399178;
  v159 = sub_1B0398F5C;
  v161 = sub_1B0398F5C;
  v163 = sub_1B039BA94;
  v165 = sub_1B0398F5C;
  v167 = sub_1B0398F5C;
  v169 = sub_1B0399178;
  v171 = sub_1B0398F5C;
  v173 = sub_1B0398F5C;
  v175 = sub_1B03991EC;
  v177 = sub_1B0398F5C;
  v179 = sub_1B0398F5C;
  v182 = sub_1B039BCEC;
  v198 = 0;
  v196 = 0;
  v197 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v96 = 0;
  v104 = 0;
  v97 = _s15ActivityUpdaterVMa();
  v98 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v99 = &v73 - v98;
  v100 = *(_s8ActivityVMa() - 8);
  v126 = v100;
  v127 = *(v100 + 64);
  v101 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v104);
  v102 = &v73 - v101;
  v103 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v129 = &v73 - v103;
  v117 = _s6LoggerVMa();
  v105 = (*(*(v117 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v104);
  v124 = &v73 - v105;
  v106 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v118 = &v73 - v106;
  v107 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v73 - v107;
  v108 = sub_1B0E439A8();
  v113 = *(v108 - 8);
  v109 = v108 - 8;
  v10 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v125);
  v114 = &v73 - v12;
  v198 = v11;
  v196 = v110;
  v197 = v111;
  v195 = v13;
  v194 = v112;
  (*(v113 + 16))(&v73 - v12);
  sub_1B0394784(v115, v116);
  sub_1B0394784(v116, v118);
  sub_1B03F4FD0(v116, v124);
  v14 = (v118 + *(v117 + 20));
  v120 = *v14;
  v121 = *(v14 + 1);
  sub_1B039480C(v118);
  v119 = 24;
  v149 = 7;
  v15 = swift_allocObject();
  v16 = v121;
  v134 = v15;
  *(v15 + 16) = v120;
  *(v15 + 20) = v16;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v17 = swift_allocObject();
  v18 = v121;
  v123 = v17;
  *(v17 + 16) = v120;
  *(v17 + 20) = v18;

  v148 = 32;
  v19 = swift_allocObject();
  v20 = v123;
  v143 = v19;
  *(v19 + 16) = v122;
  *(v19 + 24) = v20;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v124);
  sub_1B0696390(v125, v129);
  v128 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v150 = swift_allocObject();
  sub_1B0696BC8(v129, (v150 + v128));
  v186 = sub_1B0E43988();
  v187 = sub_1B0E458D8();
  v146 = 17;
  v154 = swift_allocObject();
  v137 = 16;
  *(v154 + 16) = 16;
  v156 = swift_allocObject();
  v141 = 4;
  *(v156 + 16) = 4;
  v21 = swift_allocObject();
  v132 = v21;
  *(v21 + 16) = v130;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v132;
  v158 = v22;
  *(v22 + 16) = v131;
  *(v22 + 24) = v23;
  v160 = swift_allocObject();
  *(v160 + 16) = 0;
  v162 = swift_allocObject();
  *(v162 + 16) = 1;
  v24 = swift_allocObject();
  v25 = v134;
  v136 = v24;
  *(v24 + 16) = v133;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v136;
  v164 = v26;
  *(v26 + 16) = v135;
  *(v26 + 24) = v27;
  v166 = swift_allocObject();
  *(v166 + 16) = v137;
  v168 = swift_allocObject();
  *(v168 + 16) = v141;
  v28 = swift_allocObject();
  v140 = v28;
  *(v28 + 16) = v138;
  *(v28 + 24) = 0;
  v29 = swift_allocObject();
  v30 = v140;
  v170 = v29;
  *(v29 + 16) = v139;
  *(v29 + 24) = v30;
  v172 = swift_allocObject();
  *(v172 + 16) = 0;
  v174 = swift_allocObject();
  *(v174 + 16) = v141;
  v31 = swift_allocObject();
  v32 = v143;
  v145 = v31;
  *(v31 + 16) = v142;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v145;
  v176 = v33;
  *(v33 + 16) = v144;
  *(v33 + 24) = v34;
  v178 = swift_allocObject();
  *(v178 + 16) = 32;
  v180 = swift_allocObject();
  *(v180 + 16) = 8;
  v35 = swift_allocObject();
  v36 = v150;
  v152 = v35;
  *(v35 + 16) = v147;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v152;
  v183 = v37;
  *(v37 + 16) = v151;
  *(v37 + 24) = v38;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v181 = sub_1B0E46A48();
  v184 = v39;

  v40 = v154;
  v41 = v184;
  *v184 = v153;
  v41[1] = v40;

  v42 = v156;
  v43 = v184;
  v184[2] = v155;
  v43[3] = v42;

  v44 = v158;
  v45 = v184;
  v184[4] = v157;
  v45[5] = v44;

  v46 = v160;
  v47 = v184;
  v184[6] = v159;
  v47[7] = v46;

  v48 = v162;
  v49 = v184;
  v184[8] = v161;
  v49[9] = v48;

  v50 = v164;
  v51 = v184;
  v184[10] = v163;
  v51[11] = v50;

  v52 = v166;
  v53 = v184;
  v184[12] = v165;
  v53[13] = v52;

  v54 = v168;
  v55 = v184;
  v184[14] = v167;
  v55[15] = v54;

  v56 = v170;
  v57 = v184;
  v184[16] = v169;
  v57[17] = v56;

  v58 = v172;
  v59 = v184;
  v184[18] = v171;
  v59[19] = v58;

  v60 = v174;
  v61 = v184;
  v184[20] = v173;
  v61[21] = v60;

  v62 = v176;
  v63 = v184;
  v184[22] = v175;
  v63[23] = v62;

  v64 = v178;
  v65 = v184;
  v184[24] = v177;
  v65[25] = v64;

  v66 = v180;
  v67 = v184;
  v184[26] = v179;
  v67[27] = v66;

  v68 = v183;
  v69 = v184;
  v184[28] = v182;
  v69[29] = v68;
  sub_1B0394964();

  if (os_log_type_enabled(v186, v187))
  {
    v70 = v96;
    v89 = sub_1B0E45D78();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v90 = sub_1B03949A8(0);
    v91 = sub_1B03949A8(1);
    v92 = &v192;
    v192 = v89;
    v93 = &v191;
    v191 = v90;
    v94 = &v190;
    v190 = v91;
    sub_1B0394A48(2, &v192);
    sub_1B0394A48(5, v92);
    v188 = v153;
    v189 = v154;
    sub_1B03949FC(&v188, v92, v93, v94);
    v95 = v70;
    if (v70)
    {

      __break(1u);
    }

    else
    {
      v188 = v155;
      v189 = v156;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v87 = 0;
      v188 = v157;
      v189 = v158;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v86 = 0;
      v188 = v159;
      v189 = v160;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v85 = 0;
      v188 = v161;
      v189 = v162;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v84 = 0;
      v188 = v163;
      v189 = v164;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v83 = 0;
      v188 = v165;
      v189 = v166;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v82 = 0;
      v188 = v167;
      v189 = v168;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v81 = 0;
      v188 = v169;
      v189 = v170;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v80 = 0;
      v188 = v171;
      v189 = v172;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v79 = 0;
      v188 = v173;
      v189 = v174;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v78 = 0;
      v188 = v175;
      v189 = v176;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v77 = 0;
      v188 = v177;
      v189 = v178;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v76 = 0;
      v188 = v179;
      v189 = v180;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      v75 = 0;
      v188 = v182;
      v189 = v183;
      sub_1B03949FC(&v188, &v192, &v191, &v190);
      _os_log_impl(&dword_1B0389000, v186, v187, "[%.*hhx-%.*X] New activity: %s", v89, 0x21u);
      sub_1B03998A8(v90);
      sub_1B03998A8(v91);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v186);
  (*(v113 + 8))(v114, v108);
  sub_1B0696390(&v112[*(v97 + 20)], v129);
  sub_1B0696390(v125, v102);
  v74 = sub_1B069ADA0(v129, v102);
  v193 = v74;
  sub_1B0696CF8(v112, v99);
  v73 = *v99;
  MEMORY[0x1E69E5928](v73);
  sub_1B0696E40(v99);
  v71 = &v112[*(v97 + 24)];
  sub_1B069BC30(v74);
  MEMORY[0x1E69E5920](v73);

  return sub_1B069AC50(v112, v125);
}

char *sub_1B069AC50(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v7 = a2;
  v13 = 0;
  v12 = 0;
  v9 = 0;
  v8 = (*(*(_s8ActivityVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v6 - v8;
  v13 = v3;
  v12 = v2;
  sub_1B0696390(v2, &v6 - v8);
  v4 = _s15ActivityUpdaterVMa();
  return sub_1B0696574(v11, (v10 + *(v4 + 20)));
}

uint64_t sub_1B069AD10(uint64_t a1)
{
  v3 = a1;
  v5 = _s8ActivityVMa();
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v3 - v4;
  sub_1B0696390(v1, &v3 - v4);
  return sub_1B0E44BA8();
}

uint64_t sub_1B069ADA0(char *a1, char *a2)
{
  v121 = a1;
  v114 = a2;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v125 = __b;
  __len = 40;
  __c = 0;
  memset(__b, 0, sizeof(__b));
  memset(v145, 0, sizeof(v145));
  memset(v144, 0, sizeof(v144));
  v141 = 0;
  v134 = 0;
  v130 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v88 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v31 - v88;
  v97 = 0;
  v90 = sub_1B0E43108();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90);
  v94 = &v31 - v93;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1678, &qword_1B0E99870);
  v95 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v31 - v95;
  v98 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v97);
  v99 = &v31 - v98;
  v100 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v101 = &v31 - v100;
  v122 = type metadata accessor for Activity.MailboxStatus(v6);
  v102 = *(v122 - 8);
  v103 = v122 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v122);
  v105 = &v31 - v104;
  v152 = &v31 - v104;
  v106 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v31 - v106;
  v108 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v31 - v106);
  v109 = &v31 - v108;
  v110 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](&v31 - v108);
  v111 = &v31 - v110;
  v151 = &v31 - v110;
  v112 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v31 - v112;
  v150 = &v31 - v112;
  v115 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1680, &qword_1B0E99878) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v121);
  v116 = (&v31 - v115);
  v117 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v118 = (&v31 - v117);
  v119 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v120 = (&v31 - v119);
  v148 = v17;
  v147 = v18;
  v149 = sub_1B06A5FF4();
  v123 = *v121;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v124 = sub_1B0417568();
  v126 = &v153;
  sub_1B0E445C8();
  memcpy(v125, v126, __len);
  while (1)
  {
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1688, &qword_1B0E99880);
    sub_1B0E446D8();
    sub_1B06B9254(v118, v120);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1690, &qword_1B0E99888);
    v19 = *(v82 - 8);
    v80 = *(v19 + 48);
    v81 = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v20 = v80(v120, 1);
    v83 = v79;
    v84 = v82;
    v85 = v80;
    v86 = v81;
    if (v20 == 1)
    {
      break;
    }

    v71 = *v120;
    v21 = v120 + *(v82 + 48);
    v130 = v71;
    sub_1B0415DC0(v21, v113);
    v72 = *v114;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v129[1] = v71;
    sub_1B0E44778();
    if ((*(v102 + 48))(v101, 1, v122) == 1)
    {
      sub_1B0415C08(v101);

      v66 = 0;
      v22 = _s8ActivityVMa();
      (*(v91 + 16))(v96, &v114[*(v22 + 24)], v90);
      v23 = *(v91 + 56);
      v67 = 0;
      v68 = 1;
      v23(v96);
      v69 = _s8ActivityV4DiffV4KindOMa();
      swift_storeEnumTagMultiPayload();
      (*(*(v69 - 8) + 56))(v96, v67, v68);
      v70 = v129;
      v129[0] = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A8, &qword_1B0E998A0);
      sub_1B0E44788();
    }

    else
    {
      sub_1B0415DC0(v101, v111);

      sub_1B0416014(v113, v109);
      sub_1B0416014(v111, v107);
      v24 = _s8ActivityVMa();
      (*(v91 + 16))(v94, &v114[*(v24 + 24)], v90);
      sub_1B06A612C(v109, v107, v94, v96);
      v65 = &v128;
      v128 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A8, &qword_1B0E998A0);
      sub_1B0E44788();
      sub_1B0416B60(v111);
    }

    sub_1B0416B60(v113);
  }

  v73 = v86;
  v74 = v85;
  v75 = v84;
  v76 = v83;
  sub_1B06B91B0(__b);
  v77 = *v114;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v78 = &v154;
  sub_1B0E445C8();
  memcpy(v145, v78, sizeof(v145));
  while (1)
  {
    sub_1B0E446D8();
    sub_1B06B9254(v118, v116);
    if (v74(v116, 1, v75) == 1)
    {
      break;
    }

    v57 = *v116;
    v25 = v116 + *(v75 + 48);
    v134 = v57;
    sub_1B0415DC0(v25, v105);
    v55 = *v121;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v61 = &v133;
    v133 = v56;
    v60 = &v132;
    v132 = v57;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16B0, &qword_1B0E998A8);
    v59 = sub_1B06B9720();
    sub_1B06B96A8();
    v62 = sub_1B0E450A8();
    sub_1B039E440(v61);
    if ((v62 & 1) == 0)
    {
      v26 = *(v91 + 56);
      v53 = 1;
      v26(v89, 1, 1, v90);
      sub_1B06A6E68(v105, v89, v96);
      sub_1B06B97A8(v89);
      v27 = _s8ActivityV4DiffV4KindOMa();
      (*(*(v27 - 8) + 56))(v96, 0, v53);
      v54 = &v131;
      v131 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A8, &qword_1B0E998A0);
      sub_1B0E44788();
    }

    sub_1B0416B60(v105);
  }

  sub_1B06B91B0(v145);
  v63 = *(v121 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v64 = &v155;
  sub_1B0E45448();
  memcpy(v144, v64, sizeof(v144));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1698, &qword_1B0E99890);
    sub_1B0E45508();
    v52 = v142;
    if (v143)
    {
      break;
    }

    v51 = v52;
    v46 = v52;
    v141 = v52;
    v47 = *(v114 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v140 = v46;
    v48 = sub_1B0E45528();

    if ((v48 & 1) == 0)
    {
      v45 = *v114;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v139 = v46;
      sub_1B0E44778();

      if ((*(v102 + 48))(v99, 1, v122) == 1)
      {
        sub_1B0415C08(v99);
        v44 = 2;
      }

      else
      {
        v43 = Activity.MailboxStatus.isSelectedAndInSync.getter();
        sub_1B0416B60(v99);
        v44 = v43 & 1;
      }

      v138 = v44;
      if (v44 == 2)
      {
        v42 = 1;
      }

      else
      {
        v42 = v138;
      }

      if (v42)
      {
        v35 = v149;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34 = _s8ActivityV4DiffV4KindOMa();
        v36 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v40 = &v137;
        v137 = v36;
        v39 = &v136;
        v136 = v46;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A0, &qword_1B0E99898);
        v38 = sub_1B06B9620();
        sub_1B06B96A8();
        v41 = sub_1B0E450A8();
        sub_1B039E440(v40);
        if ((v41 & 1) == 0)
        {
          v29 = _s8ActivityVMa();
          (*(v91 + 16))(v96, &v114[*(v29 + 24)], v90);
          v30 = *(v91 + 56);
          v31 = 0;
          v32 = 1;
          v30(v96);
          swift_storeEnumTagMultiPayload();
          (*(*(v34 - 8) + 56))(v96, v31, v32);
          v33 = &v135;
          v135 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A8, &qword_1B0E998A0);
          sub_1B0E44788();
        }
      }
    }
  }

  sub_1B06B91B0(v144);
  v49 = &v149;
  v50 = v149;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0696630(v114);
  sub_1B0696630(v121);
  sub_1B039E440(v49);
  return v50;
}

uint64_t *sub_1B069BC30(uint64_t a1)
{
  v572 = MEMORY[0x1EEE9AC00](a1);
  v563 = v2;
  v564 = v3;
  v565 = v4;
  v566 = v5;
  v509 = v1;
  v542 = 0;
  v510 = sub_1B039BBE8;
  v511 = sub_1B06BA324;
  v512 = sub_1B0394C30;
  v513 = sub_1B0394C24;
  v514 = sub_1B039BA2C;
  v515 = sub_1B039BA88;
  v516 = sub_1B039BB94;
  v517 = sub_1B0394C24;
  v518 = sub_1B039BBA0;
  v519 = sub_1B039BC08;
  v520 = sub_1B03FB1CC;
  v521 = sub_1B039BCF8;
  v522 = sub_1B06BA8E4;
  v523 = sub_1B039BCF8;
  v524 = sub_1B0398F5C;
  v525 = sub_1B0398F5C;
  v526 = sub_1B0399178;
  v527 = sub_1B0398F5C;
  v528 = sub_1B0398F5C;
  v529 = sub_1B039BA94;
  v530 = sub_1B0398F5C;
  v531 = sub_1B0398F5C;
  v532 = sub_1B0399178;
  v533 = sub_1B0398F5C;
  v534 = sub_1B0398F5C;
  v535 = sub_1B03991EC;
  v536 = sub_1B0398F5C;
  v537 = sub_1B0398F5C;
  v538 = sub_1B039BCEC;
  v539 = sub_1B0398F5C;
  v540 = sub_1B0398F5C;
  v541 = sub_1B039BCEC;
  v592 = 0;
  v591 = 0;
  v590 = 0;
  v588 = 0;
  v589 = 0;
  v587 = 0;
  v586 = 0;
  v573 = __b;
  v575 = 40;
  memset(__b, 0, sizeof(__b));
  v584 = 0;
  v576 = 0;
  v550 = 0;
  v543 = _s6LoggerVMa();
  v544 = (*(*(v543 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](0);
  v545 = v91 - v544;
  v546 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v547 = v91 - v546;
  v548 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v549 = v91 - v548;
  v551 = sub_1B0E439A8();
  v552 = *(v551 - 8);
  v553 = v551 - 8;
  v554 = (*(v552 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v550);
  v555 = v91 - v554;
  v571 = _s8ActivityV4DiffV4KindOMa();
  v556 = *(v571 - 8);
  v557 = v556;
  v558 = *(v556 + 64);
  v559 = (v558 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v571);
  v560 = (v91 - v559);
  v561 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91 - v559);
  v562 = (v91 - v561);
  v592 = v91 - v561;
  v567 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16B8, &qword_1B0E998B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v572);
  v568 = (v91 - v567);
  v569 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v570 = (v91 - v569);
  v591 = v13;
  v590 = v14;
  v588 = v15;
  v589 = v16;
  v587 = v17;
  v586 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0417568();
  v574 = &v593;
  sub_1B0E445C8();
  memcpy(v573, v574, v575);
  for (i = v576; ; i = v91[0])
  {
    v507 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16C0, &qword_1B0E998B8);
    sub_1B0E446D8();
    sub_1B06B9850(v568, v570);
    v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16C8, &qword_1B0E998C0);
    if ((*(*(v508 - 8) + 48))(v570, 1) == 1)
    {
      break;
    }

    v18 = v555;
    v464 = *v570;
    v19 = (v570 + *(v508 + 48));
    v584 = v464;
    sub_1B06B9E3C(v19, v562);
    (*(v552 + 16))(v18, v566, v551);
    sub_1B0394784(v566, v549);
    sub_1B0394784(v549, v547);
    sub_1B03F4FD0(v549, v545);
    v20 = (v547 + *(v543 + 20));
    v460 = *v20;
    v461 = *(v20 + 1);
    sub_1B039480C(v547);
    v463 = 24;
    v481 = 7;
    v21 = swift_allocObject();
    v22 = v461;
    v468 = v21;
    *(v21 + 16) = v460;
    *(v21 + 20) = v22;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = swift_allocObject();
    v24 = v461;
    v462 = v23;
    *(v23 + 16) = v460;
    *(v23 + 20) = v24;

    v480 = 32;
    v25 = swift_allocObject();
    v26 = v462;
    v473 = v25;
    *(v25 + 16) = v510;
    *(v25 + 24) = v26;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v545);
    v465 = swift_allocObject();
    *(v465 + 16) = v464;

    v27 = swift_allocObject();
    v28 = v465;
    v475 = v27;
    *(v27 + 16) = v511;
    *(v27 + 24) = v28;

    sub_1B06BA32C(v562, v560);
    v466 = (*(v557 + 80) + 16) & ~*(v557 + 80);
    v482 = swift_allocObject();
    sub_1B06B9E3C(v560, (v482 + v466));
    v505 = sub_1B0E43988();
    v506 = sub_1B0E458D8();
    v478 = 17;
    v484 = swift_allocObject();
    v470 = 16;
    *(v484 + 16) = 16;
    v485 = swift_allocObject();
    v472 = 4;
    *(v485 + 16) = 4;
    v29 = swift_allocObject();
    v467 = v29;
    *(v29 + 16) = v512;
    *(v29 + 24) = 0;
    v30 = swift_allocObject();
    v31 = v467;
    v486 = v30;
    *(v30 + 16) = v513;
    *(v30 + 24) = v31;
    v487 = swift_allocObject();
    *(v487 + 16) = 0;
    v488 = swift_allocObject();
    *(v488 + 16) = 1;
    v32 = swift_allocObject();
    v33 = v468;
    v469 = v32;
    *(v32 + 16) = v514;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v469;
    v489 = v34;
    *(v34 + 16) = v515;
    *(v34 + 24) = v35;
    v490 = swift_allocObject();
    *(v490 + 16) = v470;
    v491 = swift_allocObject();
    *(v491 + 16) = v472;
    v36 = swift_allocObject();
    v471 = v36;
    *(v36 + 16) = v516;
    *(v36 + 24) = 0;
    v37 = swift_allocObject();
    v38 = v471;
    v492 = v37;
    *(v37 + 16) = v517;
    *(v37 + 24) = v38;
    v493 = swift_allocObject();
    *(v493 + 16) = 0;
    v494 = swift_allocObject();
    *(v494 + 16) = v472;
    v39 = swift_allocObject();
    v40 = v473;
    v474 = v39;
    *(v39 + 16) = v518;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v474;
    v495 = v41;
    *(v41 + 16) = v519;
    *(v41 + 24) = v42;
    v496 = swift_allocObject();
    v477 = 32;
    *(v496 + 16) = 32;
    v497 = swift_allocObject();
    v479 = 8;
    *(v497 + 16) = 8;
    v43 = swift_allocObject();
    v44 = v475;
    v476 = v43;
    *(v43 + 16) = v520;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v476;
    v498 = v45;
    *(v45 + 16) = v521;
    *(v45 + 24) = v46;
    v499 = swift_allocObject();
    *(v499 + 16) = v477;
    v500 = swift_allocObject();
    *(v500 + 16) = v479;
    v47 = swift_allocObject();
    v48 = v482;
    v483 = v47;
    *(v47 + 16) = v522;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v483;
    v502 = v49;
    *(v49 + 16) = v523;
    *(v49 + 24) = v50;
    v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v501 = sub_1B0E46A48();
    v503 = v51;

    v52 = v484;
    v53 = v503;
    *v503 = v524;
    v53[1] = v52;

    v54 = v485;
    v55 = v503;
    v503[2] = v525;
    v55[3] = v54;

    v56 = v486;
    v57 = v503;
    v503[4] = v526;
    v57[5] = v56;

    v58 = v487;
    v59 = v503;
    v503[6] = v527;
    v59[7] = v58;

    v60 = v488;
    v61 = v503;
    v503[8] = v528;
    v61[9] = v60;

    v62 = v489;
    v63 = v503;
    v503[10] = v529;
    v63[11] = v62;

    v64 = v490;
    v65 = v503;
    v503[12] = v530;
    v65[13] = v64;

    v66 = v491;
    v67 = v503;
    v503[14] = v531;
    v67[15] = v66;

    v68 = v492;
    v69 = v503;
    v503[16] = v532;
    v69[17] = v68;

    v70 = v493;
    v71 = v503;
    v503[18] = v533;
    v71[19] = v70;

    v72 = v494;
    v73 = v503;
    v503[20] = v534;
    v73[21] = v72;

    v74 = v495;
    v75 = v503;
    v503[22] = v535;
    v75[23] = v74;

    v76 = v496;
    v77 = v503;
    v503[24] = v536;
    v77[25] = v76;

    v78 = v497;
    v79 = v503;
    v503[26] = v537;
    v79[27] = v78;

    v80 = v498;
    v81 = v503;
    v503[28] = v538;
    v81[29] = v80;

    v82 = v499;
    v83 = v503;
    v503[30] = v539;
    v83[31] = v82;

    v84 = v500;
    v85 = v503;
    v503[32] = v540;
    v85[33] = v84;

    v86 = v502;
    v87 = v503;
    v503[34] = v541;
    v87[35] = v86;
    sub_1B0394964();

    if (os_log_type_enabled(v505, v506))
    {
      v88 = v507;
      v435 = sub_1B0E45D78();
      v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v436 = sub_1B03949A8(0);
      v437 = sub_1B03949A8(2);
      v438 = &v582;
      v582 = v435;
      v439 = &v581;
      v581 = v436;
      v440 = &v580;
      v580 = v437;
      sub_1B0394A48(2, &v582);
      sub_1B0394A48(6, v438);
      v578 = v524;
      v579 = v484;
      sub_1B03949FC(&v578, v438, v439, v440);
      v441 = v88;
      v442 = v484;
      v443 = v485;
      v444 = v486;
      v445 = v487;
      v446 = v488;
      v447 = v489;
      v448 = v490;
      v449 = v491;
      v450 = v492;
      v451 = v493;
      v452 = v494;
      v453 = v495;
      v454 = v496;
      v455 = v497;
      v456 = v498;
      v457 = v499;
      v458 = v500;
      v459 = v502;
      if (v88)
      {
        v415 = v442;
        v416 = v443;
        v417 = v444;
        v418 = v445;
        v419 = v446;
        v420 = v447;
        v421 = v448;
        v422 = v449;
        v423 = v450;
        v424 = v451;
        v425 = v452;
        v426 = v453;
        v427 = v454;
        v428 = v455;
        v429 = v456;
        v430 = v457;
        v431 = v458;
        v432 = v459;
        v91[17] = v459;
        v91[16] = v458;
        v91[15] = v457;
        v91[14] = v456;
        v91[13] = v455;
        v91[12] = v454;
        v91[11] = v453;
        v91[10] = v452;
        v91[9] = v451;
        v91[8] = v450;
        v91[7] = v449;
        v91[6] = v448;
        v91[5] = v447;
        v91[4] = v446;
        v91[3] = v445;
        v91[2] = v444;
        v91[1] = v443;

        __break(1u);
      }

      else
      {
        v578 = v525;
        v579 = v485;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v396 = 0;
        v397 = v484;
        v398 = v485;
        v399 = v486;
        v400 = v487;
        v401 = v488;
        v402 = v489;
        v403 = v490;
        v404 = v491;
        v405 = v492;
        v406 = v493;
        v407 = v494;
        v408 = v495;
        v409 = v496;
        v410 = v497;
        v411 = v498;
        v412 = v499;
        v413 = v500;
        v414 = v502;
        v578 = v526;
        v579 = v486;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v377 = 0;
        v378 = v484;
        v379 = v485;
        v380 = v486;
        v381 = v487;
        v382 = v488;
        v383 = v489;
        v384 = v490;
        v385 = v491;
        v386 = v492;
        v387 = v493;
        v388 = v494;
        v389 = v495;
        v390 = v496;
        v391 = v497;
        v392 = v498;
        v393 = v499;
        v394 = v500;
        v395 = v502;
        v578 = v527;
        v579 = v487;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v358 = 0;
        v359 = v484;
        v360 = v485;
        v361 = v486;
        v362 = v487;
        v363 = v488;
        v364 = v489;
        v365 = v490;
        v366 = v491;
        v367 = v492;
        v368 = v493;
        v369 = v494;
        v370 = v495;
        v371 = v496;
        v372 = v497;
        v373 = v498;
        v374 = v499;
        v375 = v500;
        v376 = v502;
        v578 = v528;
        v579 = v488;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v339 = 0;
        v340 = v484;
        v341 = v485;
        v342 = v486;
        v343 = v487;
        v344 = v488;
        v345 = v489;
        v346 = v490;
        v347 = v491;
        v348 = v492;
        v349 = v493;
        v350 = v494;
        v351 = v495;
        v352 = v496;
        v353 = v497;
        v354 = v498;
        v355 = v499;
        v356 = v500;
        v357 = v502;
        v578 = v529;
        v579 = v489;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v320 = 0;
        v321 = v484;
        v322 = v485;
        v323 = v486;
        v324 = v487;
        v325 = v488;
        v326 = v489;
        v327 = v490;
        v328 = v491;
        v329 = v492;
        v330 = v493;
        v331 = v494;
        v332 = v495;
        v333 = v496;
        v334 = v497;
        v335 = v498;
        v336 = v499;
        v337 = v500;
        v338 = v502;
        v578 = v530;
        v579 = v490;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v301 = 0;
        v302 = v484;
        v303 = v485;
        v304 = v486;
        v305 = v487;
        v306 = v488;
        v307 = v489;
        v308 = v490;
        v309 = v491;
        v310 = v492;
        v311 = v493;
        v312 = v494;
        v313 = v495;
        v314 = v496;
        v315 = v497;
        v316 = v498;
        v317 = v499;
        v318 = v500;
        v319 = v502;
        v578 = v531;
        v579 = v491;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v282 = 0;
        v283 = v484;
        v284 = v485;
        v285 = v486;
        v286 = v487;
        v287 = v488;
        v288 = v489;
        v289 = v490;
        v290 = v491;
        v291 = v492;
        v292 = v493;
        v293 = v494;
        v294 = v495;
        v295 = v496;
        v296 = v497;
        v297 = v498;
        v298 = v499;
        v299 = v500;
        v300 = v502;
        v578 = v532;
        v579 = v492;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v263 = 0;
        v264 = v484;
        v265 = v485;
        v266 = v486;
        v267 = v487;
        v268 = v488;
        v269 = v489;
        v270 = v490;
        v271 = v491;
        v272 = v492;
        v273 = v493;
        v274 = v494;
        v275 = v495;
        v276 = v496;
        v277 = v497;
        v278 = v498;
        v279 = v499;
        v280 = v500;
        v281 = v502;
        v578 = v533;
        v579 = v493;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v244 = 0;
        v245 = v484;
        v246 = v485;
        v247 = v486;
        v248 = v487;
        v249 = v488;
        v250 = v489;
        v251 = v490;
        v252 = v491;
        v253 = v492;
        v254 = v493;
        v255 = v494;
        v256 = v495;
        v257 = v496;
        v258 = v497;
        v259 = v498;
        v260 = v499;
        v261 = v500;
        v262 = v502;
        v578 = v534;
        v579 = v494;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v225 = 0;
        v226 = v484;
        v227 = v485;
        v228 = v486;
        v229 = v487;
        v230 = v488;
        v231 = v489;
        v232 = v490;
        v233 = v491;
        v234 = v492;
        v235 = v493;
        v236 = v494;
        v237 = v495;
        v238 = v496;
        v239 = v497;
        v240 = v498;
        v241 = v499;
        v242 = v500;
        v243 = v502;
        v578 = v535;
        v579 = v495;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v206 = 0;
        v207 = v484;
        v208 = v485;
        v209 = v486;
        v210 = v487;
        v211 = v488;
        v212 = v489;
        v213 = v490;
        v214 = v491;
        v215 = v492;
        v216 = v493;
        v217 = v494;
        v218 = v495;
        v219 = v496;
        v220 = v497;
        v221 = v498;
        v222 = v499;
        v223 = v500;
        v224 = v502;
        v578 = v536;
        v579 = v496;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v187 = 0;
        v188 = v484;
        v189 = v485;
        v190 = v486;
        v191 = v487;
        v192 = v488;
        v193 = v489;
        v194 = v490;
        v195 = v491;
        v196 = v492;
        v197 = v493;
        v198 = v494;
        v199 = v495;
        v200 = v496;
        v201 = v497;
        v202 = v498;
        v203 = v499;
        v204 = v500;
        v205 = v502;
        v578 = v537;
        v579 = v497;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v168 = 0;
        v169 = v484;
        v170 = v485;
        v171 = v486;
        v172 = v487;
        v173 = v488;
        v174 = v489;
        v175 = v490;
        v176 = v491;
        v177 = v492;
        v178 = v493;
        v179 = v494;
        v180 = v495;
        v181 = v496;
        v182 = v497;
        v183 = v498;
        v184 = v499;
        v185 = v500;
        v186 = v502;
        v578 = v538;
        v579 = v498;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v149 = 0;
        v150 = v484;
        v151 = v485;
        v152 = v486;
        v153 = v487;
        v154 = v488;
        v155 = v489;
        v156 = v490;
        v157 = v491;
        v158 = v492;
        v159 = v493;
        v160 = v494;
        v161 = v495;
        v162 = v496;
        v163 = v497;
        v164 = v498;
        v165 = v499;
        v166 = v500;
        v167 = v502;
        v578 = v539;
        v579 = v499;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v130 = 0;
        v131 = v484;
        v132 = v485;
        v133 = v486;
        v134 = v487;
        v135 = v488;
        v136 = v489;
        v137 = v490;
        v138 = v491;
        v139 = v492;
        v140 = v493;
        v141 = v494;
        v142 = v495;
        v143 = v496;
        v144 = v497;
        v145 = v498;
        v146 = v499;
        v147 = v500;
        v148 = v502;
        v578 = v540;
        v579 = v500;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v111 = 0;
        v112 = v484;
        v113 = v485;
        v114 = v486;
        v115 = v487;
        v116 = v488;
        v117 = v489;
        v118 = v490;
        v119 = v491;
        v120 = v492;
        v121 = v493;
        v122 = v494;
        v123 = v495;
        v124 = v496;
        v125 = v497;
        v126 = v498;
        v127 = v499;
        v128 = v500;
        v129 = v502;
        v578 = v541;
        v579 = v502;
        sub_1B03949FC(&v578, &v582, &v581, &v580);
        v92 = 0;
        v93 = v484;
        v94 = v485;
        v95 = v486;
        v96 = v487;
        v97 = v488;
        v98 = v489;
        v99 = v490;
        v100 = v491;
        v101 = v492;
        v102 = v493;
        v103 = v494;
        v104 = v495;
        v105 = v496;
        v106 = v497;
        v107 = v498;
        v108 = v499;
        v109 = v500;
        v110 = v502;
        _os_log_impl(&dword_1B0389000, v505, v506, "[%.*hhx-%.*X] Applying mailbox %s diff %s", v435, 0x2Bu);
        sub_1B03998A8(v436);
        sub_1B03998A8(v437);
        sub_1B0E45D58();

        v433 = v92;
      }
    }

    else
    {
      v89 = v507;

      v433 = v89;
    }

    v91[0] = v433;
    MEMORY[0x1E69E5920](v505);
    (*(v552 + 8))(v555, v551);
    v583 = v464;
    sub_1B06A9598(&v583);
    sub_1B06BA948(v562);
  }

  return sub_1B06B91B0(__b);
}

uint64_t sub_1B06A0484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v35 = a2;
  v36 = a3;
  v41 = a4;
  v40 = a5;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v43 = 0;
  v55 = a4;
  v25 = 0;
  v26 = _s15ActivityUpdaterVMa();
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v28 = &v12 - v27;
  v38 = *(v6 - 8);
  v30 = v6 - 8;
  v29 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness - 8;
  v8 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v12 - v9;
  v54 = &v12 - v9;
  v53 = v10;
  v52 = v35;
  v51 = v36;
  v50 = v37;
  (*(v38 + 16))(v7);
  sub_1B0E44F08();
  while (1)
  {
    swift_getAssociatedConformanceWitness();
    sub_1B0E45E38();
    v24 = v48;
    if (v49)
    {
      break;
    }

    v23 = v24;
    v20 = v24;
    v47 = v24;
    v21 = *&v37[*(v26 + 24)];
    v22 = &v44;
    v44 = v24;
    sub_1B0417568();
    sub_1B0E44778();
    if (v45)
    {
      v17 = &v45;
      v18 = v46;
      MEMORY[0x1E69E5928](v46);
      sub_1B06BAC30(v17);
      v19 = v18;
    }

    else
    {
      sub_1B06BAC30(&v45);
      v19 = 0;
    }

    v16 = v19;
    if (v19)
    {
      v15 = v16;
      v14 = v16;
      v43 = v16;
      sub_1B0696CF8(v37, v28);
      v13 = *v28;
      MEMORY[0x1E69E5928](v13);
      sub_1B0696E40(v28);
      v12 = [v14 objectID];
      v42 = v20;
      sub_1B06A08E0(v35, v12, &v42, v36);
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](v13);
      MEMORY[0x1E69E5920](v14);
    }
  }

  return (*(v33 + 8))(v39, AssociatedTypeWitness);
}

uint64_t sub_1B06A08E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v106 = a1;
  v109 = a2;
  v110 = a3;
  v114 = a4;
  v120 = sub_1B039BBE8;
  v125 = sub_1B06BA324;
  v127 = sub_1B0394C30;
  v128 = sub_1B0394C24;
  v130 = sub_1B039BA2C;
  v132 = sub_1B039BA88;
  v135 = sub_1B039BB94;
  v136 = sub_1B0394C24;
  v139 = sub_1B039BBA0;
  v141 = sub_1B039BC08;
  v144 = sub_1B03FB1CC;
  v148 = sub_1B039BCF8;
  v150 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v154 = sub_1B0399178;
  v156 = sub_1B0398F5C;
  v158 = sub_1B0398F5C;
  v160 = sub_1B039BA94;
  v162 = sub_1B0398F5C;
  v164 = sub_1B0398F5C;
  v166 = sub_1B0399178;
  v168 = sub_1B0398F5C;
  v170 = sub_1B0398F5C;
  v172 = sub_1B03991EC;
  v174 = sub_1B0398F5C;
  v176 = sub_1B0398F5C;
  v179 = sub_1B039BCEC;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v96 = 0;
  v102 = 0;
  v97 = sub_1B0E43108();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v101 = &v73 - v100;
  v116 = _s6LoggerVMa();
  v103 = (*(*(v116 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v102);
  v122 = &v73 - v103;
  v104 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v117 = &v73 - v104;
  v105 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v73 - v105;
  v107 = sub_1B0E439A8();
  v112 = *(v107 - 8);
  v108 = v107 - 8;
  v8 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v106);
  v113 = &v73 - v10;
  v194 = v9;
  v193 = v109;
  v124 = *v110;
  v192 = v124;
  v191 = v11;
  v190 = v111;
  (*(v112 + 16))(&v73 - v10);
  sub_1B0394784(v114, v115);
  sub_1B0394784(v115, v117);
  sub_1B03F4FD0(v115, v122);
  v12 = (v117 + *(v116 + 20));
  v118 = *v12;
  v119 = *(v12 + 1);
  sub_1B039480C(v117);
  v123 = 24;
  v146 = 7;
  v13 = swift_allocObject();
  v14 = v119;
  v131 = v13;
  *(v13 + 16) = v118;
  *(v13 + 20) = v14;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = swift_allocObject();
  v16 = v119;
  v121 = v15;
  *(v15 + 16) = v118;
  *(v15 + 20) = v16;

  v145 = 32;
  v17 = swift_allocObject();
  v18 = v121;
  v140 = v17;
  *(v17 + 16) = v120;
  *(v17 + 24) = v18;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v122);
  v126 = swift_allocObject();
  *(v126 + 16) = v124;

  v19 = swift_allocObject();
  v20 = v126;
  v147 = v19;
  *(v19 + 16) = v125;
  *(v19 + 24) = v20;

  v183 = sub_1B0E43988();
  v184 = sub_1B0E458D8();
  v143 = 17;
  v151 = swift_allocObject();
  v134 = 16;
  *(v151 + 16) = 16;
  v153 = swift_allocObject();
  v138 = 4;
  *(v153 + 16) = 4;
  v21 = swift_allocObject();
  v129 = v21;
  *(v21 + 16) = v127;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v129;
  v155 = v22;
  *(v22 + 16) = v128;
  *(v22 + 24) = v23;
  v157 = swift_allocObject();
  *(v157 + 16) = 0;
  v159 = swift_allocObject();
  *(v159 + 16) = 1;
  v24 = swift_allocObject();
  v25 = v131;
  v133 = v24;
  *(v24 + 16) = v130;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v133;
  v161 = v26;
  *(v26 + 16) = v132;
  *(v26 + 24) = v27;
  v163 = swift_allocObject();
  *(v163 + 16) = v134;
  v165 = swift_allocObject();
  *(v165 + 16) = v138;
  v28 = swift_allocObject();
  v137 = v28;
  *(v28 + 16) = v135;
  *(v28 + 24) = 0;
  v29 = swift_allocObject();
  v30 = v137;
  v167 = v29;
  *(v29 + 16) = v136;
  *(v29 + 24) = v30;
  v169 = swift_allocObject();
  *(v169 + 16) = 0;
  v171 = swift_allocObject();
  *(v171 + 16) = v138;
  v31 = swift_allocObject();
  v32 = v140;
  v142 = v31;
  *(v31 + 16) = v139;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v142;
  v173 = v33;
  *(v33 + 16) = v141;
  *(v33 + 24) = v34;
  v175 = swift_allocObject();
  *(v175 + 16) = 32;
  v177 = swift_allocObject();
  *(v177 + 16) = 8;
  v35 = swift_allocObject();
  v36 = v147;
  v149 = v35;
  *(v35 + 16) = v144;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v149;
  v180 = v37;
  *(v37 + 16) = v148;
  *(v37 + 24) = v38;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v178 = sub_1B0E46A48();
  v181 = v39;

  v40 = v151;
  v41 = v181;
  *v181 = v150;
  v41[1] = v40;

  v42 = v153;
  v43 = v181;
  v181[2] = v152;
  v43[3] = v42;

  v44 = v155;
  v45 = v181;
  v181[4] = v154;
  v45[5] = v44;

  v46 = v157;
  v47 = v181;
  v181[6] = v156;
  v47[7] = v46;

  v48 = v159;
  v49 = v181;
  v181[8] = v158;
  v49[9] = v48;

  v50 = v161;
  v51 = v181;
  v181[10] = v160;
  v51[11] = v50;

  v52 = v163;
  v53 = v181;
  v181[12] = v162;
  v53[13] = v52;

  v54 = v165;
  v55 = v181;
  v181[14] = v164;
  v55[15] = v54;

  v56 = v167;
  v57 = v181;
  v181[16] = v166;
  v57[17] = v56;

  v58 = v169;
  v59 = v181;
  v181[18] = v168;
  v59[19] = v58;

  v60 = v171;
  v61 = v181;
  v181[20] = v170;
  v61[21] = v60;

  v62 = v173;
  v63 = v181;
  v181[22] = v172;
  v63[23] = v62;

  v64 = v175;
  v65 = v181;
  v181[24] = v174;
  v65[25] = v64;

  v66 = v177;
  v67 = v181;
  v181[26] = v176;
  v67[27] = v66;

  v68 = v180;
  v69 = v181;
  v181[28] = v179;
  v69[29] = v68;
  sub_1B0394964();

  if (os_log_type_enabled(v183, v184))
  {
    v70 = v96;
    v89 = sub_1B0E45D78();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v90 = sub_1B03949A8(0);
    v91 = sub_1B03949A8(1);
    v92 = &v189;
    v189 = v89;
    v93 = &v188;
    v188 = v90;
    v94 = &v187;
    v187 = v91;
    sub_1B0394A48(2, &v189);
    sub_1B0394A48(5, v92);
    v185 = v150;
    v186 = v151;
    sub_1B03949FC(&v185, v92, v93, v94);
    v95 = v70;
    if (v70)
    {

      __break(1u);
    }

    else
    {
      v185 = v152;
      v186 = v153;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v87 = 0;
      v185 = v154;
      v186 = v155;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v86 = 0;
      v185 = v156;
      v186 = v157;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v85 = 0;
      v185 = v158;
      v186 = v159;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v84 = 0;
      v185 = v160;
      v186 = v161;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v83 = 0;
      v185 = v162;
      v186 = v163;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v82 = 0;
      v185 = v164;
      v186 = v165;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v81 = 0;
      v185 = v166;
      v186 = v167;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v80 = 0;
      v185 = v168;
      v186 = v169;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v79 = 0;
      v185 = v170;
      v186 = v171;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v78 = 0;
      v185 = v172;
      v186 = v173;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v77 = 0;
      v185 = v174;
      v186 = v175;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v76 = 0;
      v185 = v176;
      v186 = v177;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      v75 = 0;
      v185 = v179;
      v186 = v180;
      sub_1B03949FC(&v185, &v189, &v188, &v187);
      _os_log_impl(&dword_1B0389000, v183, v184, "[%.*hhx-%.*X] Updating last-sync-date for mailbox row ID %s", v89, 0x21u);
      sub_1B03998A8(v90);
      sub_1B03998A8(v91);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  v71 = v101;
  MEMORY[0x1E69E5920](v183);
  (*(v112 + 8))(v113, v107);
  (*(v98 + 16))(v71, v106, v97);
  v74 = sub_1B0E43068();
  (*(v98 + 8))(v101, v97);
  v73 = *MEMORY[0x1E699A6B0];
  MEMORY[0x1E69E5928](v73);
  [v111 activityWithID:v109 setUserInfoObject:v74 forKey:v73];
  MEMORY[0x1E69E5920](v73);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06A2060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a1;
  v9 = a2;
  v10 = a3;
  v13 = 0;
  v12 = 0;
  v14 = a2;
  v8 = *(a2 - 8);
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a3);
  v11 = v6 - v7;
  v13 = v4;
  v12 = v3;
  (*(v8 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  return sub_1B0E45568();
}

uint64_t sub_1B06A215C(uint64_t a1)
{
  v164 = a1;
  v171 = 0;
  v174 = sub_1B06A3CFC;
  v126 = sub_1B039BBE8;
  v127 = sub_1B0394C30;
  v128 = sub_1B0394C24;
  v129 = sub_1B039BA2C;
  v130 = sub_1B039BA88;
  v131 = sub_1B039BB94;
  v132 = sub_1B0394C24;
  v133 = sub_1B039BBA0;
  v134 = sub_1B039BC08;
  v135 = sub_1B06BAE4C;
  v136 = sub_1B03B0DF8;
  v137 = sub_1B0398F5C;
  v138 = sub_1B0398F5C;
  v139 = sub_1B0399178;
  v140 = sub_1B0398F5C;
  v141 = sub_1B0398F5C;
  v142 = sub_1B039BA94;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0399178;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0398F5C;
  v148 = sub_1B03991EC;
  v149 = sub_1B0398F5C;
  v150 = sub_1B0398F5C;
  v151 = sub_1B0399260;
  v213 = 0;
  v212 = 0;
  v204 = 0;
  v205 = 0;
  v206 = 0;
  v203 = 0;
  v186 = __b;
  memset(__b, 0, sizeof(__b));
  v188 = 0;
  v192 = 0;
  v187 = 0;
  v152 = _s6LoggerVMa();
  v153 = (*(*(v152 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v154 = v69 - v153;
  v155 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v156 = v69 - v155;
  v157 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v158 = v69 - v157;
  v159 = sub_1B0E439A8();
  v160 = *(v159 - 8);
  v161 = v159 - 8;
  v162 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v187);
  v163 = v69 - v162;
  v177 = _s15ActivityUpdaterVMa();
  v165 = (*(*(v177 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v177);
  v166 = v69 - v165;
  v213 = v6;
  v212 = v1;
  v167 = *(v1 + *(v7 + 24));
  v179 = sub_1B0417568();
  v180 = &type metadata for MailboxRowID;
  v178 = &unk_1F26A08D8;
  v169 = sub_1B0E446B8();
  v208[1] = v169;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16E0, &qword_1B0E998D8);
  v8 = sub_1B06BAC8C();
  MEMORY[0x1B27270C0](v208, v168, v8);
  v170 = v208[0];

  v176 = &v207;
  v207 = v170;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16F0, &qword_1B0E998E0);
  v173 = sub_1B06BAD14();
  sub_1B06BAD78();
  sub_1B0E46728();
  sub_1B039E440(v176);
  v183 = v209;
  v184 = v210;
  v185 = v211;
  v204 = v209;
  v205 = v210;
  v206 = v211;
  v181 = *(v177 + 24);
  v182 = sub_1B06A3D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1700, &qword_1B0E998E8);
  sub_1B0E446F8();
  v203 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v199 = v183;
  v200 = v184;
  v201 = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1708, &qword_1B0E998F0);
  sub_1B0E464B8();
  v189 = v187;
  v190 = v187;
  for (i = v188; ; i = v121)
  {
    v121 = i;
    v122 = v190;
    v123 = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1710, &qword_1B0E998F8);
    result = sub_1B0E464C8();
    v124 = v198;
    v125 = v123;
    if (!v198)
    {
      break;
    }

    v120 = v124;
    v118 = v124;
    v192 = v124;
    v119 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      __break(1u);
      return result;
    }

    v203 = v119;
    sub_1B0696CF8(v175, v166);
    v117 = *v166;
    MEMORY[0x1E69E5928](v117);
    sub_1B0696E40(v166);
    v116 = [v118 objectID];
    [v117 activityWithID_finishedWithError_];
    MEMORY[0x1E69E5920](v116);
    MEMORY[0x1E69E5920](v117);
    MEMORY[0x1E69E5920](v118);
    v189 = v119;
    v190 = v119;
  }

  v11 = v163;
  v82 = v125;
  sub_1B06BAE00(__b);
  (*(v160 + 16))(v11, v164, v159);
  sub_1B0394784(v164, v158);
  sub_1B0394784(v158, v156);
  sub_1B03F4FD0(v158, v154);
  v12 = (v156 + *(v152 + 20));
  v78 = *v12;
  v79 = *(v12 + 1);
  sub_1B039480C(v156);
  v81 = 24;
  v93 = 7;
  v13 = swift_allocObject();
  v14 = v79;
  v84 = v13;
  *(v13 + 16) = v78;
  *(v13 + 20) = v14;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = swift_allocObject();
  v16 = v79;
  v80 = v15;
  *(v15 + 16) = v78;
  *(v15 + 20) = v16;

  v92 = 32;
  v17 = swift_allocObject();
  v18 = v80;
  v89 = v17;
  *(v17 + 16) = v126;
  *(v17 + 24) = v18;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v154);
  v94 = swift_allocObject();
  *(v94 + 16) = v82;
  v114 = sub_1B0E43988();
  v115 = sub_1B0E45908();
  v91 = 17;
  v96 = swift_allocObject();
  v86 = 16;
  *(v96 + 16) = 16;
  v97 = swift_allocObject();
  v88 = 4;
  *(v97 + 16) = 4;
  v19 = swift_allocObject();
  v83 = v19;
  *(v19 + 16) = v127;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v21 = v83;
  v98 = v20;
  *(v20 + 16) = v128;
  *(v20 + 24) = v21;
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = 1;
  v22 = swift_allocObject();
  v23 = v84;
  v85 = v22;
  *(v22 + 16) = v129;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v85;
  v101 = v24;
  *(v24 + 16) = v130;
  *(v24 + 24) = v25;
  v102 = swift_allocObject();
  *(v102 + 16) = v86;
  v103 = swift_allocObject();
  *(v103 + 16) = v88;
  v26 = swift_allocObject();
  v87 = v26;
  *(v26 + 16) = v131;
  *(v26 + 24) = 0;
  v27 = swift_allocObject();
  v28 = v87;
  v104 = v27;
  *(v27 + 16) = v132;
  *(v27 + 24) = v28;
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  v106 = swift_allocObject();
  *(v106 + 16) = v88;
  v29 = swift_allocObject();
  v30 = v89;
  v90 = v29;
  *(v29 + 16) = v133;
  *(v29 + 24) = v30;
  v31 = swift_allocObject();
  v32 = v90;
  v107 = v31;
  *(v31 + 16) = v134;
  *(v31 + 24) = v32;
  v108 = swift_allocObject();
  *(v108 + 16) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = 8;
  v33 = swift_allocObject();
  v34 = v94;
  v95 = v33;
  *(v33 + 16) = v135;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v95;
  v111 = v35;
  *(v35 + 16) = v136;
  *(v35 + 24) = v36;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v110 = sub_1B0E46A48();
  v112 = v37;

  v38 = v96;
  v39 = v112;
  *v112 = v137;
  v39[1] = v38;

  v40 = v97;
  v41 = v112;
  v112[2] = v138;
  v41[3] = v40;

  v42 = v98;
  v43 = v112;
  v112[4] = v139;
  v43[5] = v42;

  v44 = v99;
  v45 = v112;
  v112[6] = v140;
  v45[7] = v44;

  v46 = v100;
  v47 = v112;
  v112[8] = v141;
  v47[9] = v46;

  v48 = v101;
  v49 = v112;
  v112[10] = v142;
  v49[11] = v48;

  v50 = v102;
  v51 = v112;
  v112[12] = v143;
  v51[13] = v50;

  v52 = v103;
  v53 = v112;
  v112[14] = v144;
  v53[15] = v52;

  v54 = v104;
  v55 = v112;
  v112[16] = v145;
  v55[17] = v54;

  v56 = v105;
  v57 = v112;
  v112[18] = v146;
  v57[19] = v56;

  v58 = v106;
  v59 = v112;
  v112[20] = v147;
  v59[21] = v58;

  v60 = v107;
  v61 = v112;
  v112[22] = v148;
  v61[23] = v60;

  v62 = v108;
  v63 = v112;
  v112[24] = v149;
  v63[25] = v62;

  v64 = v109;
  v65 = v112;
  v112[26] = v150;
  v65[27] = v64;

  v66 = v111;
  v67 = v112;
  v112[28] = v151;
  v67[29] = v66;
  sub_1B0394964();

  if (os_log_type_enabled(v114, v115))
  {
    v68 = v121;
    v71 = sub_1B0E45D78();
    v69[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v70 = 0;
    v72 = sub_1B03949A8(0);
    v73 = sub_1B03949A8(v70);
    v74 = &v197;
    v197 = v71;
    v75 = &v196;
    v196 = v72;
    v76 = &v195;
    v195 = v73;
    sub_1B0394A48(0, &v197);
    sub_1B0394A48(5, v74);
    v193 = v137;
    v194 = v96;
    sub_1B03949FC(&v193, v74, v75, v76);
    v77 = v68;
    if (v68)
    {

      __break(1u);
    }

    else
    {
      v193 = v138;
      v194 = v97;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[13] = 0;
      v193 = v139;
      v194 = v98;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[12] = 0;
      v193 = v140;
      v194 = v99;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[11] = 0;
      v193 = v141;
      v194 = v100;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[10] = 0;
      v193 = v142;
      v194 = v101;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[9] = 0;
      v193 = v143;
      v194 = v102;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[8] = 0;
      v193 = v144;
      v194 = v103;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[7] = 0;
      v193 = v145;
      v194 = v104;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[6] = 0;
      v193 = v146;
      v194 = v105;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[5] = 0;
      v193 = v147;
      v194 = v106;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[4] = 0;
      v193 = v148;
      v194 = v107;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[3] = 0;
      v193 = v149;
      v194 = v108;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[2] = 0;
      v193 = v150;
      v194 = v109;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      v69[1] = 0;
      v193 = v151;
      v194 = v111;
      sub_1B03949FC(&v193, &v197, &v196, &v195);
      _os_log_impl(&dword_1B0389000, v114, v115, "[%.*hhx-%.*X] Finished %ld activities as part of tear down.", v71, 0x21u);
      v69[0] = 0;
      sub_1B03998A8(v72);
      sub_1B03998A8(v73);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v114);
  (*(v160 + 8))(v163, v159);
}

uint64_t sub_1B06A3CFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  result = MEMORY[0x1E69E5928]();
  *a2 = v4;
  return result;
}

uint64_t sub_1B06A3D78()
{
  v2 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B06A3DA4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *v1;
  *v1 = a1;
}

uint64_t sub_1B06A3DE0()
{
  v2 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B06A3E0C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
}

uint64_t sub_1B06A3E48@<X0>(uint64_t a1@<X8>)
{
  v4 = *(_s8ActivityVMa() + 24);
  v2 = sub_1B0E43108();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B06A3EC0(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = sub_1B0E43108();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = _s8ActivityVMa();
  (*(v8 + 40))(v1 + *(v2 + 24), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

BOOL sub_1B06A3FE0(uint64_t a1, uint64_t *a2)
{
  v19 = a1;
  v27 = a2;
  v35 = 0;
  v34 = 0;
  v28 = 0;
  v20 = sub_1B0E43108();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (v21[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v8[-v23];
  v25 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v26 = &v8[-v25];
  v35 = v4;
  v34 = v5;
  v32 = *v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = *v27;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = type metadata accessor for Activity.MailboxStatus(v28);
  v30 = sub_1B0417568();
  sub_1B06BE4B8();
  v33 = sub_1B0E44758();

  if (v33)
  {
    v17 = *(v19 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = v27[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0E45478();

    if (v18)
    {
      v10 = _s8ActivityVMa();
      v6 = v19 + *(v10 + 24);
      v12 = v21[2];
      v11 = v21 + 2;
      v12(v26, v6, v20);
      v12(v24, v27 + *(v10 + 24), v20);
      v15 = sub_1B0E430C8();
      v14 = v21[1];
      v13 = v21 + 1;
      v14(v24, v20);
      v14(v26, v20);
      return (v15 & 1) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B06A42BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v7 = *(_s8ActivityVMa() + 24);
  v4 = sub_1B0E43108();
  return (*(*(v4 - 8) + 32))(&a4[v7], a3);
}

uint64_t sub_1B06A4388(uint64_t a1, _OWORD *a2)
{
  v85 = a1;
  v97 = a2;
  v107 = 0;
  v106 = 0;
  v83 = 0;
  v55 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v56 = &v22 - v55;
  v57 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v22 - v57;
  v59 = sub_1B0E43108();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (v60[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v22 - v62;
  v64 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22 - v62);
  v65 = &v22 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v66);
  v68 = &v22 - v67;
  v69 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v22 - v69;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v71 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v22 - v71;
  v73 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22 - v71);
  v74 = &v22 - v73;
  v75 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22 - v73);
  v76 = &v22 - v75;
  v77 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22 - v75);
  v78 = &v22 - v77;
  v79 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22 - v77);
  v80 = &v22 - v79;
  v81 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22 - v79);
  v82 = &v22 - v81;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1770, &qword_1B0E99B28);
  v84 = (*(*(v101 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83);
  v103 = (&v22 - v84);
  v102 = _s8ActivityV4DiffV4KindOMa();
  v95 = *(*(v102 - 8) + 64);
  v86 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v85);
  v87 = &v22 - v86;
  v88 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v89 = (&v22 - v88);
  v90 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v91 = (&v22 - v90);
  v92 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v93 = (&v22 - v92);
  v94 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v100 = (&v22 - v94);
  v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v98 = (&v22 - v96);
  v107 = v18;
  v106 = v19;
  sub_1B06BA32C(v18, (&v22 - v96));
  sub_1B06BA32C(v97, v100);
  v99 = *(v101 + 48);
  sub_1B06B9E3C(v98, v103);
  sub_1B06B9E3C(v100, (v103 + v99));
  v104 = *(v101 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B06BA32C(v103, v93);
    v49 = *v93;
    v50 = *(v93 + 1);
    v51 = *(v93 + 2);
    v52 = *(v93 + 12);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
    v54 = v93 + *(v53 + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B06B97A8(v54);
      goto LABEL_43;
    }

    v45 = *(v103 + v104);
    v46 = *(v103 + v104 + 8);
    v47 = *(v103 + v104 + 16);
    v48 = *(v103 + v104 + 24);
    v44 = v103 + v104 + *(v53 + 48);
    sub_1B06BC984(v54, v82);
    sub_1B06BC984(v44, v80);
    if (!sub_1B06A5484(v49, v50, v51, v52, v45, v46, v47, v48))
    {
LABEL_14:
      sub_1B06B97A8(v80);
      sub_1B06B97A8(v82);
      sub_1B06BA948(v103);
      v34 = 0;
      return v34 & 1;
    }

    v41 = &v70[*(v66 + 48)];
    sub_1B06BC2F4(v82, v70);
    sub_1B06BC2F4(v80, v41);
    v42 = v60[6];
    v43 = v60 + 6;
    if (v42(v70, 1, v59) == 1)
    {
      if (v42(v41, 1, v59) == 1)
      {
        sub_1B06B97A8(v70);
        v40 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1B06BC2F4(v70, v78);
      if (v42(v41, 1, v59) != 1)
      {
        v36 = v60[4];
        v35 = v60 + 4;
        v36(v65, v78, v59);
        v36(v63, v41, v59);
        sub_1B06BC63C();
        v39 = sub_1B0E44A28();
        v38 = v60[1];
        v37 = v60 + 1;
        v38(v63, v59);
        v38(v65, v59);
        sub_1B06B97A8(v70);
        v40 = v39;
        goto LABEL_13;
      }

      (v60[1])(v78, v59);
    }

    sub_1B06BC510(v70);
    v40 = 0;
LABEL_13:
    if (v40)
    {
      sub_1B06B97A8(v80);
      sub_1B06B97A8(v82);
      sub_1B06BA948(v103);
      v34 = 1;
      return v34 & 1;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1B06BA32C(v103, v87);
      v20 = swift_getEnumCaseMultiPayload();
      if (v20 == 3)
      {
        sub_1B06BB304(v87, v58);
        sub_1B06BB304(v103 + v104, v56);
        if (static ConnectionStatus.Error.__derived_struct_equals(_:_:)(v58, v56))
        {
          sub_1B06BB840(v56);
          sub_1B06BB840(v58);
          sub_1B06BA948(v103);
          v34 = 1;
        }

        else
        {
          sub_1B06BB840(v56);
          sub_1B06BB840(v58);
          sub_1B06BA948(v103);
          v34 = 0;
        }

        return v34 & 1;
      }

      sub_1B06BB840(v87);
LABEL_43:
      sub_1B06BE5B8(v103);
      v34 = 0;
      return v34 & 1;
    }

    sub_1B06BA32C(v103, v89);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1B06B97A8(v89);
      goto LABEL_43;
    }

    sub_1B06BC984(v89, v76);
    sub_1B06BC984(v103 + v104, v74);
    v28 = &v68[*(v66 + 48)];
    sub_1B06BC2F4(v76, v68);
    sub_1B06BC2F4(v74, v28);
    v29 = v60[6];
    v30 = v60 + 6;
    if (v29(v68, 1, v59) == 1)
    {
      if (v29(v28, 1, v59) == 1)
      {
        sub_1B06B97A8(v68);
        v27 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      sub_1B06BC2F4(v68, v72);
      if (v29(v28, 1, v59) != 1)
      {
        v23 = v60[4];
        v22 = v60 + 4;
        v23(v65, v72, v59);
        v23(v63, v28, v59);
        sub_1B06BC63C();
        v26 = sub_1B0E44A28();
        v25 = v60[1];
        v24 = v60 + 1;
        v25(v63, v59);
        v25(v65, v59);
        sub_1B06B97A8(v68);
        v27 = v26;
        goto LABEL_32;
      }

      (v60[1])(v72, v59);
    }

    sub_1B06BC510(v68);
    v27 = 0;
LABEL_32:
    if (v27)
    {
      sub_1B06B97A8(v74);
      sub_1B06B97A8(v76);
      sub_1B06BA948(v103);
      v34 = 1;
    }

    else
    {
      sub_1B06B97A8(v74);
      sub_1B06B97A8(v76);
      sub_1B06BA948(v103);
      v34 = 0;
    }

    return v34 & 1;
  }

  sub_1B06BA32C(v103, v91);
  v33 = *v91;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_43;
  }

  v31 = *(v103 + v104);
  updated = _s8ActivityV4DiffV6UpdateOMa();
  sub_1B06BEB80();
  if (sub_1B0E45368())
  {

    sub_1B06BA948(v103);
    v34 = 1;
  }

  else
  {

    sub_1B06BA948(v103);
    v34 = 0;
  }

  return v34 & 1;
}

BOOL sub_1B06A5484(char a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if (a1 == 2)
  {
    return a5 == 2;
  }

  else
  {
    if (a1 != 3)
    {
      if (a5 != 2 && a5 != 3)
      {
        return (static Activity.MailboxStatus.Info.__derived_struct_equals(_:_:)(a1 & 1, a2, a3, a4 & 0x101, a5 & 1, a6, a7, a8 & 0x101) & 1) != 0;
      }

      return 0;
    }

    return a5 == 3;
  }
}

uint64_t sub_1B06A5724(uint64_t a1, const void *a2)
{
  v39 = a1;
  v49 = a2;
  v70 = 0;
  v69 = 0;
  v37 = 0;
  v30 = sub_1B0E43108();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v34 = v15 - v33;
  v35 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15 - v33);
  v36 = v15 - v35;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1780, &qword_1B0E99B30);
  v38 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v55 = v15 - v38;
  updated = _s8ActivityV4DiffV6UpdateOMa();
  v47 = *(*(updated - 8) + 64);
  v40 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v39);
  v41 = v15 - v40;
  v42 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v43 = (v15 - v42);
  v44 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v45 = (v15 - v44);
  v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v52 = v15 - v46;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v50 = v15 - v48;
  v70 = v7;
  v69 = v8;
  sub_1B06BCF60(v7, v15 - v48);
  sub_1B06BCF60(v49, v52);
  v51 = *(v53 + 48);
  sub_1B06BCE98(v50, v55);
  sub_1B06BCE98(v52, &v55[v51]);
  v56 = *(v53 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B06BCF60(v55, v45);
    v27 = *v45;
    v28 = v45[1];
    v29 = *(v45 + 16);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_27;
    }

    v9 = *&v55[v56];
    v10 = *&v55[v56 + 8];
    v11 = v55[v56 + 16];
    v61 = v27;
    v62 = v28;
    v63 = v29 & 1;
    v64 = v9;
    v65 = v10;
    v66 = v11 & 1;
    if (v29)
    {
      if (v66)
      {
        v26 = 1;
LABEL_11:
        if (v26)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v58 = v27;
      v59 = v28;
      v60 = v29 & 1;
      if ((v66 & 1) == 0)
      {
        v26 = static Activity.MailboxStatus.Info.FetchProgress.__derived_struct_equals(_:_:)(v58, v59, v64, v65);
        goto LABEL_11;
      }
    }

    v26 = 0;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B06BCF60(v55, v43);
    v24 = *v43;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_27;
    }

    v12 = *&v55[v56];
    v23 = &v68;
    v68 = v24;
    v21 = &v67;
    v67 = v12;
    State = type metadata accessor for EMActivityFetchState();
    sub_1B0694078();
    if (sub_1B0E46AE8())
    {
LABEL_19:
      sub_1B06BD028(v55);
      v25 = 1;
      return v25 & 1;
    }

LABEL_12:
    sub_1B06BD028(v55);
    v25 = 0;
    return v25 & 1;
  }

  sub_1B06BCF60(v55, v41);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 != 2)
  {
    (*(v31 + 8))(v41, v30);
LABEL_27:
    sub_1B06BEC00(v55);
    v25 = 0;
    return v25 & 1;
  }

  v20 = *(v31 + 32);
  v19 = v31 + 32;
  v20(v36, v41, v30);
  v20(v34, &v55[v56], v30);
  if (sub_1B0E430C8())
  {
    v18 = *(v31 + 8);
    v17 = v31 + 8;
    v18(v34, v30);
    v18(v36, v30);
    sub_1B06BD028(v55);
    v25 = 1;
  }

  else
  {
    v16 = *(v31 + 8);
    v15[1] = v31 + 8;
    v16(v34, v30);
    v16(v36, v30);
    sub_1B06BD028(v55);
    v25 = 0;
  }

  return v25 & 1;
}

BOOL sub_1B06A5F34()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s8ActivityV4DiffV4KindOMa();
  sub_1B0417568();
  sub_1B06BE538();
  v1 = sub_1B0E44758();

  return (v1 & 1) != 0;
}

uint64_t sub_1B06A5FF4()
{
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1788, &qword_1B0E99B38);
  sub_1B0E46A48();
  _s8ActivityV4DiffV4KindOMa();
  sub_1B0417568();
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

BOOL sub_1B06A6108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B06A5F34();
}

uint64_t *sub_1B06A612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v45 = a4;
  v75 = a1;
  v74 = a2;
  v73 = a3;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v85 = 0;
  v90 = 0;
  v91 = 0;
  v67 = 0;
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v46 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v30 - v46;
  v94 = &v30 - v46;
  v48 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v49 = &v30 - v48;
  v93 = &v30 - v48;
  v50 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v30 - v50;
  v92 = &v30 - v50;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v52 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v30 - v52;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1678, &qword_1B0E99870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v55 = (&v30 - v54);
  v10 = _s18EmailActivityStateO7RunningVMa();
  v56 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v30 - v56;
  v58 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v30 - v56);
  v59 = &v30 - v58;
  v60 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](&v30 - v58);
  v61 = &v30 - v60;
  v91 = &v30 - v60;
  v62 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v30 - v62;
  v90 = &v30 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1718, &qword_1B0E99900);
  v65 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v30 - v65;
  v68 = _s18EmailActivityStateOMa();
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v67);
  v70 = &v30 - v69;
  v71 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v30 - v71;
  v76 = _s8ActivityV4DiffV4KindOMa();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v75);
  v80 = (&v30 - v79);
  v81 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v82 = &v30 - v81;
  v83 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v84 = (&v30 - v83);
  v89 = &v30 - v83;
  v88 = v21;
  v87 = v22;
  v86 = v23;
  if (static Activity.MailboxStatus.__derived_enum_equals(_:_:)())
  {
    goto LABEL_29;
  }

  if (Activity.MailboxStatus.isSelectedAndInSync.getter())
  {
    v33 = sub_1B0E43108();
    v31 = *(v33 - 8);
    v32 = v33 - 8;
    (*(v31 + 16))(v82, v73);
    (*(v31 + 56))(v82, 0, 1, v33);
    swift_storeEnumTagMultiPayload();
    sub_1B06B9E3C(v82, v84);
    goto LABEL_28;
  }

  sub_1B06A719C(v72);
  sub_1B06A719C(v70);
  v42 = &v66[*(v64 + 48)];
  sub_1B06BAF3C(v72, v66);
  sub_1B06BAF3C(v70, v42);
  v43 = &v66[*(v64 + 48)];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (swift_getEnumCaseMultiPayload())
    {
      v24 = sub_1B0E43108();
      (*(*(v24 - 8) + 56))(v53, 1);
      sub_1B06A6E68(v74, v53, v82);
      sub_1B06B97A8(v53);
      sub_1B06B9E3C(v82, v84);
      sub_1B06BBBE8(v43);
      sub_1B06BB9BC(v66);
    }

    else
    {
      sub_1B06BBCB8(v66, v63);
      sub_1B06BBCB8(v43, v61);
      v90 = v63;
      v91 = v61;
      sub_1B06BBE40(v63, v59);
      sub_1B06BBE40(v61, v57);
      sub_1B06A753C(v59, v57, v55);
      if ((*(v77 + 48))(v55, 1, v76) != 0)
      {
        sub_1B06BBFC8(v55);
        sub_1B06BBBE8(v61);
        sub_1B06BBBE8(v63);
        goto LABEL_29;
      }

      sub_1B06B9E3C(v55, v84);
      sub_1B06BBBE8(v61);
      sub_1B06BBBE8(v63);
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v40 = *v43;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v85 = v40 & 1;
      if (v40)
      {
        v36 = sub_1B0E43108();
        v34 = *(v36 - 8);
        v35 = v36 - 8;
        (*(v34 + 16))(v80, v73);
        (*(v34 + 56))(v80, 0, 1, v36);
      }

      else
      {
        v25 = sub_1B0E43108();
        (*(*(v25 - 8) + 56))(v80, 1);
      }

      swift_storeEnumTagMultiPayload();
      sub_1B06B9E3C(v80, v84);
      sub_1B06BB9BC(v66);
      goto LABEL_28;
    }

    if ((*v66 & 1) != 0 || (v40 & 1) == 0)
    {
      goto LABEL_29;
    }

    v39 = sub_1B0E43108();
    v37 = *(v39 - 8);
    v38 = v39 - 8;
    (*(v37 + 16))(v82, v73);
    (*(v37 + 56))(v82, 0, 1, v39);
    swift_storeEnumTagMultiPayload();
    sub_1B06B9E3C(v82, v84);
LABEL_28:
    sub_1B06BA32C(v84, v45);
    (*(v77 + 56))(v45, 0, 1, v76);
    v27 = sub_1B0E43108();
    (*(*(v27 - 8) + 8))(v73);
    sub_1B0416B60(v74);
    sub_1B0416B60(v75);
    return sub_1B06BA948(v84);
  }

  v26 = swift_getEnumCaseMultiPayload();
  if (v26 != 2)
  {
    sub_1B06BB304(v43, v47);
    v94 = v47;
    sub_1B06BB524(v47, v82);
    swift_storeEnumTagMultiPayload();
    sub_1B06B9E3C(v82, v84);
    sub_1B06BB840(v47);
    sub_1B06BB9BC(v66);
    goto LABEL_28;
  }

  sub_1B06BB304(v66, v51);
  sub_1B06BB304(v43, v49);
  v92 = v51;
  v93 = v49;
  if ((static ConnectionStatus.Error.__derived_struct_equals(_:_:)() & 1) == 0)
  {
    sub_1B06BB524(v49, v82);
    swift_storeEnumTagMultiPayload();
    sub_1B06B9E3C(v82, v84);
    sub_1B06BB840(v49);
    sub_1B06BB840(v51);
    goto LABEL_28;
  }

  sub_1B06BB840(v49);
  sub_1B06BB840(v51);
LABEL_29:
  v29 = sub_1B0E43108();
  (*(*(v29 - 8) + 8))(v73);
  sub_1B0416B60(v74);
  sub_1B0416B60(v75);
  return (*(v77 + 56))(v45, 1, 1, v76);
}

uint64_t sub_1B06A6E68@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, _BYTE *a3@<X8>)
{
  v30 = a3;
  v35 = a1;
  v34 = a2;
  v45 = 0;
  v44 = 0;
  v46 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v31 = 0;
  v32 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v33 = &v22[-v32];
  v46 = &v22[-v32];
  v37 = type metadata accessor for Activity.MailboxStatus(v3);
  v36 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v22[-v36];
  v45 = v4;
  v44 = v5;
  sub_1B0416014(v4, &v22[-v36]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B06BB304(v38, v33);
      v46 = v33;
      sub_1B06BB524(v33, v30);
      _s8ActivityV4DiffV4KindOMa();
      swift_storeEnumTagMultiPayload();
      return sub_1B06BB840(v33);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
        v9 = v30;
        v7 = v6;
        v11 = v34;
        v12 = &v30[*(v7 + 48)];
        *v30 = 2;
        v29 = 0;
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
        v9 = v30;
        v10 = v8;
        v11 = v34;
        v12 = &v30[*(v10 + 48)];
        *v30 = 3;
        v28 = 0;
      }

      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *(v9 + 12) = 0;
      sub_1B06BC2F4(v11, v12);
      _s8ActivityV4DiffV4KindOMa();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v23 = *v38;
    v26 = *(v38 + 1);
    v27 = *(v38 + 2);
    v25 = v38[24];
    v24 = v38[25];
    LOBYTE(v40) = v23;
    v41 = v26;
    v42 = v27;
    LOBYTE(v43) = v25 & 1;
    HIBYTE(v43) = v24;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
    v15 = v26;
    v16 = v27;
    v17 = v30;
    v18 = v14;
    v19 = v34;
    v20 = &v30[*(v18 + 48)];
    v21 = v25 & 1 | ((v24 & 1) << 8);
    *v30 = v23 & 1;
    *(v17 + 1) = v15;
    *(v17 + 2) = v16;
    *(v17 + 12) = v21;
    sub_1B06BC2F4(v19, v20);
    _s8ActivityV4DiffV4KindOMa();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B06A719C@<X0>(_BYTE *a1@<X8>)
{
  v18 = a1;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v19 = 0;
  v20 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v21 = &v5 - v20;
  v35 = &v5 - v20;
  v24 = type metadata accessor for Activity.MailboxStatus(v1);
  v23 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v5 - v23;
  v34 = v2;
  sub_1B0416014(v2, &v5 - v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v25;
    v10 = *(v25 + 1);
    v11 = *(v25 + 2);
    v12 = v25[24];
    v13 = v25[25];
    LOBYTE(v30) = v9;
    v31 = v10;
    v32 = v11;
    LOBYTE(v33) = v12 & 1;
    HIBYTE(v33) = v13;
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v27 = v10;
      v28 = v11;
      v29 = v12 & 1;
      v8 = (v12 & 1) != 0;
      v7 = v8;
    }

    if (v7)
    {
      v6 = v13 ^ 1;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      *v18 = 1;
    }

    else
    {
      sub_1B06A8F64(v9 & 1, v10, v11, v12 & 1 | ((v13 & 1) << 8), v18);
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = 0;
      v17 = 0;
      sub_1B06A8F64(2, 0, 0, 0, v18);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      sub_1B06A8F64(3, 0, 0, 0, v18);
    }

LABEL_5:
    _s18EmailActivityStateOMa();
    return swift_storeEnumTagMultiPayload();
  }

  v4 = v21;
  sub_1B06BB304(v25, v21);
  v35 = v4;
  if (ConnectionStatus.Error.shouldPresentToUserForIMAP.getter())
  {
    sub_1B06BB524(v21, v18);
  }

  else
  {
    *v18 = 0;
  }

  _s18EmailActivityStateOMa();
  swift_storeEnumTagMultiPayload();
  return sub_1B06BB840(v21);
}

uint64_t *sub_1B06A753C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v44 = a3;
  v68 = a1;
  v67 = a2;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v63 = 0;
  v45 = sub_1B0E43108();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v24 - v48;
  v89 = &v24 - v48;
  v50 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v24 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v24 - v53;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v63);
  v56 = &v24 - v55;
  v57 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v58 = &v24 - v57;
  v59 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v24 - v59;
  v61 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v24 - v61;
  updated = _s8ActivityV4DiffV6UpdateOMa();
  v65 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v66 = (&v24 - v65);
  v69 = _s8ActivityV4DiffV4KindOMa();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v68);
  v73 = (&v24 - v72);
  v74 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v75 = (&v24 - v74);
  v88 = &v24 - v74;
  v87 = v13;
  v86 = v14;
  if (sub_1B06A8218(v13, v14))
  {
    sub_1B06BBBE8(v67);
    sub_1B06BBBE8(v68);
    return (*(v70 + 56))(v44, 1, 1, v69);
  }

  v85 = sub_1B0E46A48();
  v41 = *v68;
  v42 = *(v68 + 8);
  v43 = *(v68 + 16);
  v15 = *v67;
  v16 = *(v67 + 8);
  v17 = *(v67 + 16);
  v80[1] = v41;
  v80[2] = v42;
  v81 = v43 & 1;
  v82 = v15;
  v83 = v16;
  v84 = v17 & 1;
  if ((v43 & 1) == 0)
  {
    v76 = v41;
    v77 = v42;
    v78 = v43 & 1;
    if ((v84 & 1) == 0)
    {
      v40 = static Activity.MailboxStatus.Info.FetchProgress.__derived_struct_equals(_:_:)(v76, v77, v82, v83);
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((v84 & 1) == 0)
  {
LABEL_10:
    v40 = 0;
    goto LABEL_8;
  }

  v40 = 1;
LABEL_8:
  if (!v40)
  {
    v18 = v66;
    v19 = *(v67 + 8);
    v20 = *(v67 + 16);
    *v66 = *v67;
    v18[1] = v19;
    *(v18 + 16) = v20 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1728, &qword_1B0E99910);
    sub_1B0E452E8();
  }

  v21 = *(v68 + 24);
  v39 = v80;
  v80[0] = v21;
  v22 = *(v67 + 24);
  v37 = &v79;
  v79 = v22;
  State = type metadata accessor for EMActivityFetchState();
  sub_1B06BC490();
  if ((sub_1B0E44A28() & 1) == 0)
  {
    *v66 = *(v67 + 24);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1728, &qword_1B0E99910);
    sub_1B0E452E8();
  }

  v33 = _s18EmailActivityStateO7RunningVMa();
  sub_1B06BC2F4((v68 + *(v33 + 24)), v62);
  sub_1B06BC2F4((v67 + *(v33 + 24)), v60);
  v34 = &v54[*(v52 + 48)];
  sub_1B06BC2F4(v62, v54);
  sub_1B06BC2F4(v60, v34);
  v35 = *(v46 + 48);
  v36 = v46 + 48;
  if (v35(v54, 1, v45) == 1)
  {
    if (v35(v34, 1, v45) != 1)
    {
      goto LABEL_23;
    }

    sub_1B06B97A8(v54);
    v32 = 1;
  }

  else
  {
    sub_1B06BC2F4(v54, v58);
    if (v35(v34, 1, v45) == 1)
    {
      (*(v46 + 8))(v58, v45);
LABEL_23:
      sub_1B06BC510(v54);
      v32 = 0;
      goto LABEL_21;
    }

    (*(v46 + 32))(v51, v34, v45);
    sub_1B06BC63C();
    v31 = sub_1B0E44A28();
    v30 = *(v46 + 8);
    v29 = v46 + 8;
    v30(v51, v45);
    v30(v58, v45);
    sub_1B06B97A8(v54);
    v32 = v31;
  }

LABEL_21:
  v28 = v32;
  sub_1B06B97A8(v60);
  sub_1B06B97A8(v62);
  if ((v28 & 1) == 0)
  {
    sub_1B06BC2F4((v67 + *(v33 + 24)), v56);
    if (v35(v56, 1, v45) == 1)
    {
      sub_1B06B97A8(v56);
    }

    else
    {
      (*(v46 + 32))(v49, v56, v45);
      (*(v46 + 16))(v66, v49, v45);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1728, &qword_1B0E99910);
      sub_1B0E452E8();
      (*(v46 + 8))(v49, v45);
    }
  }

  v26 = &v85;
  v25 = v85;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v73 = v25;
  v27 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1B06B9E3C(v73, v75);
  sub_1B039E440(v26);
  sub_1B06BA32C(v75, v44);
  (*(v70 + 56))(v44, 0, v27, v69);
  sub_1B06BBBE8(v67);
  sub_1B06BBBE8(v68);
  return sub_1B06BA948(v75);
}

uint64_t sub_1B06A80F4()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2] & 1;
  return result;
}

uint64_t sub_1B06A8108(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1B06A8168(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B06BC2F4(v2, &v5 - v6);
  v3 = _s18EmailActivityStateO7RunningVMa();
  sub_1B06BC6BC(v7, (v1 + *(v3 + 24)));
  return sub_1B06B97A8(v8);
}

BOOL sub_1B06A8218(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v41 = a2;
  v62 = 0;
  v61 = 0;
  v31 = sub_1B0E43108();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v15 - v34;
  v36 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v34);
  v37 = &v15 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v15 - v39;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v15 - v43;
  v45 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v15 - v45;
  v47 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v15 - v47;
  v62 = v7;
  v61 = v8;
  v49 = *v7;
  v50 = *(v7 + 8);
  v51 = *(v7 + 16);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v56[1] = v49;
  v56[2] = v50;
  v57 = v51 & 1;
  v58 = v9;
  v59 = v10;
  v60 = v11 & 1;
  if ((v51 & 1) == 0)
  {
    v52 = v49;
    v53 = v50;
    v54 = v51 & 1;
    if ((v60 & 1) == 0)
    {
      v30 = static Activity.MailboxStatus.Info.FetchProgress.__derived_struct_equals(_:_:)(v52, v53, v58, v59);
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((v60 & 1) == 0)
  {
LABEL_9:
    v30 = 0;
    goto LABEL_7;
  }

  v30 = 1;
LABEL_7:
  if (v30)
  {
    v12 = *(v42 + 24);
    v29 = v56;
    v56[0] = v12;
    v13 = *(v41 + 24);
    v27 = &v55;
    v55 = v13;
    State = type metadata accessor for EMActivityFetchState();
    sub_1B0694078();
    if ((sub_1B0E46AE8() & 1) == 0)
    {
      return 0;
    }

    v23 = _s18EmailActivityStateO7RunningVMa();
    sub_1B06BC2F4((v42 + *(v23 + 24)), v48);
    sub_1B06BC2F4((v41 + *(v23 + 24)), v46);
    v24 = &v40[*(v38 + 48)];
    sub_1B06BC2F4(v48, v40);
    sub_1B06BC2F4(v46, v24);
    v25 = *(v32 + 48);
    v26 = v32 + 48;
    if (v25(v40, 1, v31) == 1)
    {
      if (v25(v24, 1, v31) != 1)
      {
        goto LABEL_19;
      }

      sub_1B06B97A8(v40);
      v22 = 1;
    }

    else
    {
      sub_1B06BC2F4(v40, v44);
      if (v25(v24, 1, v31) == 1)
      {
        (*(v32 + 8))(v44, v31);
LABEL_19:
        sub_1B06BC510(v40);
        v22 = 0;
        goto LABEL_18;
      }

      v18 = *(v32 + 32);
      v17 = v32 + 32;
      v18(v37, v44, v31);
      v18(v35, v24, v31);
      sub_1B06BC63C();
      v21 = sub_1B0E44A28();
      v20 = *(v32 + 8);
      v19 = v32 + 8;
      v20(v35, v31);
      v20(v37, v31);
      sub_1B06B97A8(v40);
      v22 = v21;
    }

LABEL_18:
    v16 = v22;
    sub_1B06B97A8(v46);
    sub_1B06B97A8(v48);
    return (v16 & 1) != 0;
  }

  return 0;
}

void *sub_1B06A8918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  v6 = _s18EmailActivityStateO7RunningVMa();
  return sub_1B06BC984(a5, (a6 + *(v6 + 24)));
}

uint64_t sub_1B06A8974(uint64_t a1, _BYTE *a2)
{
  v26 = a1;
  v36 = a2;
  v46 = 0;
  v45 = 0;
  v24 = 0;
  v16 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v17 = &v14 - v16;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v19 = &v14 - v18;
  v4 = _s18EmailActivityStateO7RunningVMa();
  v20 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v14 - v20;
  v22 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v20);
  v23 = &v14 - v22;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1718, &qword_1B0E99900);
  v25 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v42 = &v14 - v25;
  v41 = _s18EmailActivityStateOMa();
  v34 = *(*(v41 - 8) + 64);
  v27 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v26);
  v28 = &v14 - v27;
  v29 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v30 = &v14 - v29;
  v31 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v32 = &v14 - v31;
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v39 = &v14 - v33;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v37 = &v14 - v35;
  v46 = v10;
  v45 = v11;
  sub_1B06BECF8(v10, &v14 - v35);
  sub_1B06BECF8(v36, v39);
  v38 = *(v40 + 48);
  sub_1B06BAF3C(v37, v42);
  sub_1B06BAF3C(v39, &v42[v38]);
  v43 = *(v40 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1B06BECF8(v42, v28);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 == 2)
      {
        sub_1B06BB304(v28, v19);
        sub_1B06BB304(&v42[v43], v17);
        if (static ConnectionStatus.Error.__derived_struct_equals(_:_:)(v19, v17))
        {
          sub_1B06BB840(v17);
          sub_1B06BB840(v19);
          sub_1B06BB9BC(v42);
          v15 = 1;
        }

        else
        {
          sub_1B06BB840(v17);
          sub_1B06BB840(v19);
          sub_1B06BB9BC(v42);
          v15 = 0;
        }

        return v15 & 1;
      }

      sub_1B06BB840(v28);
LABEL_19:
      sub_1B06BF18C(v42);
      v15 = 0;
      return v15 & 1;
    }

    sub_1B06BECF8(v42, v30);
    v14 = *v30;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_19;
    }

    if ((v14 & 1) == (v42[v43] & 1))
    {
      sub_1B06BB9BC(v42);
      v15 = 1;
    }

    else
    {
      sub_1B06BB9BC(v42);
      v15 = 0;
    }
  }

  else
  {
    sub_1B06BECF8(v42, v32);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B06BBBE8(v32);
      goto LABEL_19;
    }

    sub_1B06BBCB8(v32, v23);
    sub_1B06BBCB8(&v42[v43], v21);
    if (sub_1B06A8218(v23, v21))
    {
      sub_1B06BBBE8(v21);
      sub_1B06BBBE8(v23);
      sub_1B06BB9BC(v42);
      v15 = 1;
    }

    else
    {
      sub_1B06BBBE8(v21);
      sub_1B06BBBE8(v23);
      sub_1B06BB9BC(v42);
      v15 = 0;
    }
  }

  return v15 & 1;
}

uint64_t sub_1B06A8F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v20 = a4;
  v37 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v17 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v16 - v17;
  v24 = 0;
  v18 = (*(*(_s18EmailActivityStateO7RunningVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v21);
  v30 = &v16 - v18;
  v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v32 = &v16 - v19;
  v37 = &v16 - v19;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v25 = sub_1B06A916C(v8, v9);
  v26 = v12;
  v27 = v13;
  v28 = sub_1B06A9284(v21, v22, v23, v20);
  v14 = sub_1B0E43108();
  (*(*(v14 - 8) + 56))(v29, 1);
  sub_1B06A8918(v25, v26, v27 & 1, v28, v29, v30);
  sub_1B06BBCB8(v30, v32);
  return sub_1B06BBCB8(v32, v31);
}

uint64_t sub_1B06A916C(char a1, uint64_t a2)
{
  if (a1 == 2 || a1 == 3)
  {
    return 0;
  }

  return a2;
}

uint64_t sub_1B06A9284(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if ((a4 & 1) == 0)
  {
    return 2;
  }

  if (a1)
  {
    return 1;
  }

  return 3;
}

uint64_t sub_1B06A9424(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B06A94AC(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B06A9508(uint64_t a1)
{
  v3 = a1;
  v5 = _s8ActivityV4DiffV4KindOMa();
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v3 - v4;
  sub_1B06BA32C(v1, (&v3 - v4));
  return sub_1B0E44BA8();
}

uint64_t sub_1B06A9598(uint64_t a1)
{
  v1001 = MEMORY[0x1EEE9AC00](a1);
  v1006 = v2;
  v997 = v3;
  v998 = v4;
  v999 = v5;
  v1000 = v6;
  v796 = v1;
  v797 = sub_1B039BBE8;
  v798 = sub_1B0394C30;
  v799 = sub_1B0394C24;
  v800 = sub_1B039BA2C;
  v801 = sub_1B039BA88;
  v802 = sub_1B039BB94;
  v803 = sub_1B0394C24;
  v804 = sub_1B039BBA0;
  v805 = sub_1B039BC08;
  v806 = sub_1B03FB774;
  v807 = sub_1B06BCD8C;
  v808 = sub_1B0398F5C;
  v809 = sub_1B0398F5C;
  v810 = sub_1B0399178;
  v811 = sub_1B0398F5C;
  v812 = sub_1B0398F5C;
  v813 = sub_1B039BA94;
  v814 = sub_1B0398F5C;
  v815 = sub_1B0398F5C;
  v816 = sub_1B0399178;
  v817 = sub_1B0398F5C;
  v818 = sub_1B0398F5C;
  v819 = sub_1B03991EC;
  v820 = sub_1B0398F5C;
  v821 = sub_1B0398F5C;
  v822 = sub_1B03992D4;
  v823 = sub_1B039BBE8;
  v824 = sub_1B0394C24;
  v825 = sub_1B039BA2C;
  v826 = sub_1B039BA88;
  v827 = sub_1B0394C24;
  v828 = sub_1B039BBA0;
  v829 = sub_1B039BC08;
  v830 = sub_1B03FB774;
  v831 = sub_1B06BCD8C;
  v832 = sub_1B0398F5C;
  v833 = sub_1B0398F5C;
  v834 = sub_1B0399178;
  v835 = sub_1B0398F5C;
  v836 = sub_1B0398F5C;
  v837 = sub_1B039BA94;
  v838 = sub_1B0398F5C;
  v839 = sub_1B0398F5C;
  v840 = sub_1B0399178;
  v841 = sub_1B0398F5C;
  v842 = sub_1B0398F5C;
  v843 = sub_1B03991EC;
  v844 = sub_1B0398F5C;
  v845 = sub_1B0398F5C;
  v846 = sub_1B03992D4;
  v847 = sub_1B039BBE8;
  v848 = sub_1B0394C24;
  v849 = sub_1B039BA2C;
  v850 = sub_1B039BA88;
  v851 = sub_1B0394C24;
  v852 = sub_1B039BBA0;
  v853 = sub_1B039BC08;
  v854 = sub_1B03FB774;
  v855 = sub_1B06BCD8C;
  v856 = sub_1B0398F5C;
  v857 = sub_1B0398F5C;
  v858 = sub_1B0399178;
  v859 = sub_1B0398F5C;
  v860 = sub_1B0398F5C;
  v861 = sub_1B039BA94;
  v862 = sub_1B0398F5C;
  v863 = sub_1B0398F5C;
  v864 = sub_1B0399178;
  v865 = sub_1B0398F5C;
  v866 = sub_1B0398F5C;
  v867 = sub_1B03991EC;
  v868 = sub_1B0398F5C;
  v869 = sub_1B0398F5C;
  v870 = sub_1B03992D4;
  v871 = sub_1B039BBE8;
  v872 = sub_1B0394C24;
  v873 = sub_1B039BA2C;
  v874 = sub_1B039BA88;
  v875 = sub_1B0394C24;
  v876 = sub_1B039BBA0;
  v877 = sub_1B039BC08;
  v878 = sub_1B03FB774;
  v879 = sub_1B06BCD8C;
  v880 = sub_1B0398F5C;
  v881 = sub_1B0398F5C;
  v882 = sub_1B0399178;
  v883 = sub_1B0398F5C;
  v884 = sub_1B0398F5C;
  v885 = sub_1B039BA94;
  v886 = sub_1B0398F5C;
  v887 = sub_1B0398F5C;
  v888 = sub_1B0399178;
  v889 = sub_1B0398F5C;
  v890 = sub_1B0398F5C;
  v891 = sub_1B03991EC;
  v892 = sub_1B0398F5C;
  v893 = sub_1B0398F5C;
  v894 = sub_1B03992D4;
  v895 = sub_1B039BBE8;
  v896 = sub_1B0394C24;
  v897 = sub_1B039BA2C;
  v898 = sub_1B039BA88;
  v899 = sub_1B0394C24;
  v900 = sub_1B039BBA0;
  v901 = sub_1B039BC08;
  v902 = sub_1B03FB774;
  v903 = sub_1B06BCD8C;
  v904 = sub_1B0398F5C;
  v905 = sub_1B0398F5C;
  v906 = sub_1B0399178;
  v907 = sub_1B0398F5C;
  v908 = sub_1B0398F5C;
  v909 = sub_1B039BA94;
  v910 = sub_1B0398F5C;
  v911 = sub_1B0398F5C;
  v912 = sub_1B0399178;
  v913 = sub_1B0398F5C;
  v914 = sub_1B0398F5C;
  v915 = sub_1B03991EC;
  v916 = sub_1B0398F5C;
  v917 = sub_1B0398F5C;
  v918 = sub_1B03992D4;
  v919 = sub_1B039BBE8;
  v920 = sub_1B0394C24;
  v921 = sub_1B039BA2C;
  v922 = sub_1B039BA88;
  v923 = sub_1B0394C24;
  v924 = sub_1B039BBA0;
  v925 = sub_1B039BC08;
  v926 = sub_1B03FB774;
  v927 = sub_1B06BCD8C;
  v928 = sub_1B0398F5C;
  v929 = sub_1B0398F5C;
  v930 = sub_1B0399178;
  v931 = sub_1B0398F5C;
  v932 = sub_1B0398F5C;
  v933 = sub_1B039BA94;
  v934 = sub_1B0398F5C;
  v935 = sub_1B0398F5C;
  v936 = sub_1B0399178;
  v937 = sub_1B0398F5C;
  v938 = sub_1B0398F5C;
  v939 = sub_1B03991EC;
  v940 = sub_1B0398F5C;
  v941 = sub_1B0398F5C;
  v942 = sub_1B03992D4;
  v1102 = 0;
  v1097 = 0;
  v1096 = 0;
  v1095 = 0;
  v1093 = 0;
  v1094 = 0;
  v1092 = 0;
  v1091 = 0;
  v1086 = 0;
  v1087 = 0;
  v1104 = 0;
  v1084 = 0;
  v1085 = 0;
  v1101 = 0;
  v1081 = 0;
  v1082 = 0;
  v1100 = 0;
  v943 = 0;
  v1073 = 0;
  v1071 = 0;
  v1070 = 0;
  v1068 = 0;
  v1069 = 0;
  v1067[0] = 0;
  v1067[1] = 0;
  v1103 = 0;
  v1065 = 0;
  v1061 = 0;
  v1062 = 0;
  v1063 = 0;
  v1046 = 0;
  v1047 = 0;
  v1048 = 0;
  v1049 = 0;
  v1099 = 0;
  v1044 = 0;
  v1045 = 0;
  v1032 = 0;
  v1033 = 0;
  v1034 = 0;
  v1035 = 0;
  v1098 = 0;
  v1025 = 0;
  v995 = 0;
  v944 = type metadata accessor for ConnectionStatus.Error(0);
  v945 = *(v944 - 8);
  v946 = v944 - 8;
  v947 = (*(v945 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v944);
  v948 = &v389[-v947];
  v1104 = &v389[-v947];
  v949 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v995);
  v950 = &v389[-v949];
  v951 = sub_1B0E43108();
  v952 = *(v951 - 8);
  v953 = v951 - 8;
  v954 = (*(v952 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v995);
  v955 = &v389[-v954];
  v1103 = &v389[-v954];
  updated = _s8ActivityV4DiffV6UpdateOMa();
  v957 = *(updated - 8);
  v958 = updated - 8;
  v959 = (*(v957 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](updated);
  v960 = &v389[-v959];
  v961 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v962 = &v389[-v961];
  v1102 = &v389[-v961];
  v963 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1730, &qword_1B0E99918) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v995);
  v964 = &v389[-v963];
  v965 = _s6LoggerVMa();
  v966 = (*(*(v965 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v995);
  v967 = &v389[-v966];
  v968 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v969 = &v389[-v968];
  v970 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v971 = &v389[-v970];
  v972 = sub_1B0E439A8();
  v973 = *(v972 - 8);
  v974 = v972 - 8;
  v975 = (*(v973 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v972);
  v976 = &v389[-v975];
  v977 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v389[-v975]);
  v978 = &v389[-v977];
  v979 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v389[-v977]);
  v980 = &v389[-v979];
  v981 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v389[-v979]);
  v982 = &v389[-v981];
  v983 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v389[-v981]);
  v984 = &v389[-v983];
  v985 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v389[-v983]);
  v986 = &v389[-v985];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v987 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v988 = &v389[-v987];
  v1101 = &v389[-v987];
  v989 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v990 = &v389[-v989];
  v1100 = &v389[-v989];
  v991 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v992 = &v389[-v991];
  v1099 = &v389[-v991];
  v993 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v994 = &v389[-v993];
  v1098 = &v389[-v993];
  v1011 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1738, &qword_1B0E99920);
  v996 = (*(*(v1011 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v995);
  v1013 = &v389[-v996];
  v1012 = _s8ActivityV4DiffV4KindOMa();
  v1002 = (*(*(v1012 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x1EEE9AC00](v1001);
  v1007 = &v389[-v1002];
  v1003 = *v25;
  v1097 = v1003;
  v1096 = v26;
  v1095 = v27;
  v1093 = v28;
  v1094 = v29;
  v1092 = v30;
  v1091 = v1;
  v1004 = *v1;
  v1005 = &v1088;
  v1088 = v1003;
  sub_1B0417568();
  sub_1B0E44778();
  v1009 = v1089;
  v1010 = v1090;
  v1086 = v1089;
  v1087 = v1090;
  sub_1B06BA32C(v1006, v1007);
  sub_1B06BC8E4(v1009, v1010);
  v1008 = *(v1011 + 48);
  sub_1B06B9E3C(v1007, v1013);
  v31 = v1010;
  v32 = v1011;
  v33 = v1013;
  v34 = &v1013[v1008];
  *v34 = v1009;
  v34[1] = v31;
  v35 = &v33[*(v32 + 48)];
  v1014 = *v35;
  v1015 = v35[1];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v595 = *v1013;
      if (v1014)
      {
        v593 = v1014;
        v594 = v1015;
        v494 = v1015;
        v495 = v1014;
        v1070 = v595;
        v1068 = v1014;
        v1069 = v1015;
        (*(v973 + 16))(v978, v1000, v972);
        sub_1B0394784(v1000, v971);
        sub_1B0394784(v971, v969);
        sub_1B03F4FD0(v971, v967);
        v271 = &v969[*(v965 + 20)];
        v496 = *v271;
        v497 = *(v271 + 1);
        sub_1B039480C(v969);
        v499 = 24;
        v510 = 7;
        v272 = swift_allocObject();
        v273 = v497;
        v501 = v272;
        *(v272 + 16) = v496;
        *(v272 + 20) = v273;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v274 = swift_allocObject();
        v275 = v497;
        v498 = v274;
        *(v274 + 16) = v496;
        *(v274 + 20) = v275;

        v509 = 32;
        v276 = swift_allocObject();
        v277 = v498;
        v506 = v276;
        *(v276 + 16) = v823;
        *(v276 + 24) = v277;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v967);
        v511 = swift_allocObject();
        *(v511 + 16) = v1003;
        v531 = sub_1B0E43988();
        v532 = sub_1B0E458D8();
        v508 = 17;
        v513 = swift_allocObject();
        v503 = 16;
        *(v513 + 16) = 16;
        v514 = swift_allocObject();
        v505 = 4;
        *(v514 + 16) = 4;
        v278 = swift_allocObject();
        v500 = v278;
        *(v278 + 16) = v798;
        *(v278 + 24) = 0;
        v279 = swift_allocObject();
        v280 = v500;
        v515 = v279;
        *(v279 + 16) = v824;
        *(v279 + 24) = v280;
        v516 = swift_allocObject();
        *(v516 + 16) = 0;
        v517 = swift_allocObject();
        *(v517 + 16) = 1;
        v281 = swift_allocObject();
        v282 = v501;
        v502 = v281;
        *(v281 + 16) = v825;
        *(v281 + 24) = v282;
        v283 = swift_allocObject();
        v284 = v502;
        v518 = v283;
        *(v283 + 16) = v826;
        *(v283 + 24) = v284;
        v519 = swift_allocObject();
        *(v519 + 16) = v503;
        v520 = swift_allocObject();
        *(v520 + 16) = v505;
        v285 = swift_allocObject();
        v504 = v285;
        *(v285 + 16) = v802;
        *(v285 + 24) = 0;
        v286 = swift_allocObject();
        v287 = v504;
        v521 = v286;
        *(v286 + 16) = v827;
        *(v286 + 24) = v287;
        v522 = swift_allocObject();
        *(v522 + 16) = 0;
        v523 = swift_allocObject();
        *(v523 + 16) = v505;
        v288 = swift_allocObject();
        v289 = v506;
        v507 = v288;
        *(v288 + 16) = v828;
        *(v288 + 24) = v289;
        v290 = swift_allocObject();
        v291 = v507;
        v524 = v290;
        *(v290 + 16) = v829;
        *(v290 + 24) = v291;
        v525 = swift_allocObject();
        *(v525 + 16) = 0;
        v526 = swift_allocObject();
        *(v526 + 16) = 8;
        v292 = swift_allocObject();
        v293 = v511;
        v512 = v292;
        *(v292 + 16) = v830;
        *(v292 + 24) = v293;
        v294 = swift_allocObject();
        v295 = v512;
        v528 = v294;
        *(v294 + 16) = v831;
        *(v294 + 24) = v295;
        v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v527 = sub_1B0E46A48();
        v529 = v296;

        v297 = v513;
        v298 = v529;
        *v529 = v832;
        v298[1] = v297;

        v299 = v514;
        v300 = v529;
        v529[2] = v833;
        v300[3] = v299;

        v301 = v515;
        v302 = v529;
        v529[4] = v834;
        v302[5] = v301;

        v303 = v516;
        v304 = v529;
        v529[6] = v835;
        v304[7] = v303;

        v305 = v517;
        v306 = v529;
        v529[8] = v836;
        v306[9] = v305;

        v307 = v518;
        v308 = v529;
        v529[10] = v837;
        v308[11] = v307;

        v309 = v519;
        v310 = v529;
        v529[12] = v838;
        v310[13] = v309;

        v311 = v520;
        v312 = v529;
        v529[14] = v839;
        v312[15] = v311;

        v313 = v521;
        v314 = v529;
        v529[16] = v840;
        v314[17] = v313;

        v315 = v522;
        v316 = v529;
        v529[18] = v841;
        v316[19] = v315;

        v317 = v523;
        v318 = v529;
        v529[20] = v842;
        v318[21] = v317;

        v319 = v524;
        v320 = v529;
        v529[22] = v843;
        v320[23] = v319;

        v321 = v525;
        v322 = v529;
        v529[24] = v844;
        v322[25] = v321;

        v323 = v526;
        v324 = v529;
        v529[26] = v845;
        v324[27] = v323;

        v325 = v528;
        v326 = v529;
        v529[28] = v846;
        v326[29] = v325;
        sub_1B0394964();

        if (os_log_type_enabled(v531, v532))
        {
          v327 = v943;
          v487 = sub_1B0E45D78();
          v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v486 = 0;
          v488 = sub_1B03949A8(0);
          v489 = sub_1B03949A8(v486);
          v490 = &v1059;
          v1059 = v487;
          v491 = &v1058;
          v1058 = v488;
          v492 = &v1057;
          v1057 = v489;
          sub_1B0394A48(0, &v1059);
          sub_1B0394A48(5, v490);
          v1055 = v832;
          v1056 = v513;
          sub_1B03949FC(&v1055, v490, v491, v492);
          v493 = v327;
          if (v327)
          {

            __break(1u);
          }

          else
          {
            v1055 = v833;
            v1056 = v514;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v483 = 0;
            v1055 = v834;
            v1056 = v515;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v482 = 0;
            v1055 = v835;
            v1056 = v516;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v481 = 0;
            v1055 = v836;
            v1056 = v517;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v480 = 0;
            v1055 = v837;
            v1056 = v518;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v479 = 0;
            v1055 = v838;
            v1056 = v519;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v478 = 0;
            v1055 = v839;
            v1056 = v520;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v477 = 0;
            v1055 = v840;
            v1056 = v521;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v476 = 0;
            v1055 = v841;
            v1056 = v522;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v475 = 0;
            v1055 = v842;
            v1056 = v523;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v474 = 0;
            v1055 = v843;
            v1056 = v524;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v473 = 0;
            v1055 = v844;
            v1056 = v525;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v472 = 0;
            v1055 = v845;
            v1056 = v526;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v471 = 0;
            v1055 = v846;
            v1056 = v528;
            sub_1B03949FC(&v1055, &v1059, &v1058, &v1057);
            v470 = 0;
            _os_log_impl(&dword_1B0389000, v531, v532, "[%.*hhx-%.*X] Updating activity for mailbox row ID %lld)", v487, 0x21u);
            v469 = 0;
            sub_1B03998A8(v488);
            sub_1B03998A8(v489);
            sub_1B0E45D58();

            v484 = v470;
          }
        }

        else
        {
          v328 = v943;

          v484 = v328;
        }

        v467 = v484;
        MEMORY[0x1E69E5920](v531);
        (*(v973 + 8))(v978, v972);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v1066[1] = v595;
        v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1728, &qword_1B0E99910);
        sub_1B06BCE10();
        sub_1B0E45798();
        for (i = v467; ; i = v465)
        {
          v465 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1740, &qword_1B0E99928);
          sub_1B0E46518();
          if ((*(v957 + 48))(v964, 1, updated) == 1)
          {
            break;
          }

          sub_1B06BCE98(v964, v962);
          sub_1B06BCF60(v962, v960);
          v464 = swift_getEnumCaseMultiPayload();
          if (v464)
          {
            if (v464 == 1)
            {
              v458 = *v960;
              v1065 = v458;
              MEMORY[0x1E69E5928](v494);
              v459 = [v494 objectID];
              MEMORY[0x1E69E5920](v494);
              v1064 = v1003;
              sub_1B06B3D94(v458, v459, &v1064, v1000);
              MEMORY[0x1E69E5920](v459);
            }

            else
            {
              (*(v952 + 32))(v955, v960, v951);
              v1103 = v955;
              MEMORY[0x1E69E5928](v494);
              v457 = [v494 objectID];
              MEMORY[0x1E69E5920](v494);
              v1066[0] = v1003;
              sub_1B06A08E0(v955, v457, v1066, v1000);
              MEMORY[0x1E69E5920](v457);
              (*(v952 + 8))(v955, v951);
            }
          }

          else
          {
            v460 = *v960;
            v461 = v960[1];
            v462 = *(v960 + 16);
            v1061 = v460;
            v1062 = v461;
            v1063 = v462 & 1;
            MEMORY[0x1E69E5928](v494);
            v463 = [v494 objectID];
            MEMORY[0x1E69E5920](v494);
            v1060 = v1003;
            sub_1B06B09CC(v460, v461, v462 & 1, v463, &v1060, v1000);
            MEMORY[0x1E69E5920](v463);
          }

          sub_1B06BD028(v962);
        }

        sub_1B039E440(v1067);
        MEMORY[0x1E69E5920](v495);
        MEMORY[0x1E69E5920](v494);
      }

      else
      {
        (*(v973 + 16))(v980, v1000, v972);
        sub_1B0394784(v1000, v971);
        sub_1B0394784(v971, v969);
        sub_1B03F4FD0(v971, v967);
        v214 = &v969[*(v965 + 20)];
        v556 = *v214;
        v557 = *(v214 + 1);
        sub_1B039480C(v969);
        v559 = 24;
        v570 = 7;
        v215 = swift_allocObject();
        v216 = v557;
        v561 = v215;
        *(v215 + 16) = v556;
        *(v215 + 20) = v216;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v217 = swift_allocObject();
        v218 = v557;
        v558 = v217;
        *(v217 + 16) = v556;
        *(v217 + 20) = v218;

        v569 = 32;
        v219 = swift_allocObject();
        v220 = v558;
        v566 = v219;
        *(v219 + 16) = v847;
        *(v219 + 24) = v220;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v967);
        v571 = swift_allocObject();
        *(v571 + 16) = v1003;
        v591 = sub_1B0E43988();
        v592 = sub_1B0E458E8();
        v568 = 17;
        v573 = swift_allocObject();
        v563 = 16;
        *(v573 + 16) = 16;
        v574 = swift_allocObject();
        v565 = 4;
        *(v574 + 16) = 4;
        v221 = swift_allocObject();
        v560 = v221;
        *(v221 + 16) = v798;
        *(v221 + 24) = 0;
        v222 = swift_allocObject();
        v223 = v560;
        v575 = v222;
        *(v222 + 16) = v848;
        *(v222 + 24) = v223;
        v576 = swift_allocObject();
        *(v576 + 16) = 0;
        v577 = swift_allocObject();
        *(v577 + 16) = 1;
        v224 = swift_allocObject();
        v225 = v561;
        v562 = v224;
        *(v224 + 16) = v849;
        *(v224 + 24) = v225;
        v226 = swift_allocObject();
        v227 = v562;
        v578 = v226;
        *(v226 + 16) = v850;
        *(v226 + 24) = v227;
        v579 = swift_allocObject();
        *(v579 + 16) = v563;
        v580 = swift_allocObject();
        *(v580 + 16) = v565;
        v228 = swift_allocObject();
        v564 = v228;
        *(v228 + 16) = v802;
        *(v228 + 24) = 0;
        v229 = swift_allocObject();
        v230 = v564;
        v581 = v229;
        *(v229 + 16) = v851;
        *(v229 + 24) = v230;
        v582 = swift_allocObject();
        *(v582 + 16) = 0;
        v583 = swift_allocObject();
        *(v583 + 16) = v565;
        v231 = swift_allocObject();
        v232 = v566;
        v567 = v231;
        *(v231 + 16) = v852;
        *(v231 + 24) = v232;
        v233 = swift_allocObject();
        v234 = v567;
        v584 = v233;
        *(v233 + 16) = v853;
        *(v233 + 24) = v234;
        v585 = swift_allocObject();
        *(v585 + 16) = 0;
        v586 = swift_allocObject();
        *(v586 + 16) = 8;
        v235 = swift_allocObject();
        v236 = v571;
        v572 = v235;
        *(v235 + 16) = v854;
        *(v235 + 24) = v236;
        v237 = swift_allocObject();
        v238 = v572;
        v588 = v237;
        *(v237 + 16) = v855;
        *(v237 + 24) = v238;
        v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v587 = sub_1B0E46A48();
        v589 = v239;

        v240 = v573;
        v241 = v589;
        *v589 = v856;
        v241[1] = v240;

        v242 = v574;
        v243 = v589;
        v589[2] = v857;
        v243[3] = v242;

        v244 = v575;
        v245 = v589;
        v589[4] = v858;
        v245[5] = v244;

        v246 = v576;
        v247 = v589;
        v589[6] = v859;
        v247[7] = v246;

        v248 = v577;
        v249 = v589;
        v589[8] = v860;
        v249[9] = v248;

        v250 = v578;
        v251 = v589;
        v589[10] = v861;
        v251[11] = v250;

        v252 = v579;
        v253 = v589;
        v589[12] = v862;
        v253[13] = v252;

        v254 = v580;
        v255 = v589;
        v589[14] = v863;
        v255[15] = v254;

        v256 = v581;
        v257 = v589;
        v589[16] = v864;
        v257[17] = v256;

        v258 = v582;
        v259 = v589;
        v589[18] = v865;
        v259[19] = v258;

        v260 = v583;
        v261 = v589;
        v589[20] = v866;
        v261[21] = v260;

        v262 = v584;
        v263 = v589;
        v589[22] = v867;
        v263[23] = v262;

        v264 = v585;
        v265 = v589;
        v589[24] = v868;
        v265[25] = v264;

        v266 = v586;
        v267 = v589;
        v589[26] = v869;
        v267[27] = v266;

        v268 = v588;
        v269 = v589;
        v589[28] = v870;
        v269[29] = v268;
        sub_1B0394964();

        if (os_log_type_enabled(v591, v592))
        {
          v270 = v943;
          v549 = sub_1B0E45D78();
          v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v548 = 0;
          v550 = sub_1B03949A8(0);
          v551 = sub_1B03949A8(v548);
          v552 = &v1054;
          v1054 = v549;
          v553 = &v1053;
          v1053 = v550;
          v554 = &v1052;
          v1052 = v551;
          sub_1B0394A48(0, &v1054);
          sub_1B0394A48(5, v552);
          v1050 = v856;
          v1051 = v573;
          sub_1B03949FC(&v1050, v552, v553, v554);
          v555 = v270;
          if (v270)
          {

            __break(1u);
          }

          else
          {
            v1050 = v857;
            v1051 = v574;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v546 = 0;
            v1050 = v858;
            v1051 = v575;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v545 = 0;
            v1050 = v859;
            v1051 = v576;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v544 = 0;
            v1050 = v860;
            v1051 = v577;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v543 = 0;
            v1050 = v861;
            v1051 = v578;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v542 = 0;
            v1050 = v862;
            v1051 = v579;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v541 = 0;
            v1050 = v863;
            v1051 = v580;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v540 = 0;
            v1050 = v864;
            v1051 = v581;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v539 = 0;
            v1050 = v865;
            v1051 = v582;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v538 = 0;
            v1050 = v866;
            v1051 = v583;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v537 = 0;
            v1050 = v867;
            v1051 = v584;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v536 = 0;
            v1050 = v868;
            v1051 = v585;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v535 = 0;
            v1050 = v869;
            v1051 = v586;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            v534 = 0;
            v1050 = v870;
            v1051 = v588;
            sub_1B03949FC(&v1050, &v1054, &v1053, &v1052);
            _os_log_impl(&dword_1B0389000, v591, v592, "[%.*hhx-%.*X] Trying to update an activity that doesn’t exist (mailbox row ID %lld)", v549, 0x21u);
            v533 = 0;
            sub_1B03998A8(v550);
            sub_1B03998A8(v551);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v591);
        (*(v973 + 8))(v980, v972);
      }

      return sub_1B06BC934(v1009, v1010);
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1B06BB304(v1013, v948);
      v1104 = v948;
      v1084 = v1014;
      v1085 = v1015;
      v388 = *(v952 + 56);
      v390 = 1;
      v388(v988, 1, 1, v951);
      sub_1B06BB524(v948, v950);
      (*(v945 + 56))(v950, 0, v390, v944);
      v1083 = v1003;
      sub_1B06B571C(v988, v950, &v1083, v1014, v1015, v997, v998, v999, v1000);
      sub_1B03DD8D4(v950);
      sub_1B06B97A8(v988);
      sub_1B06BC934(v1014, v1015);
      sub_1B06BB840(v948);
      return sub_1B06BC934(v1009, v1010);
    }

    if (v1014)
    {
      sub_1B06BC984(v1013, v988);
      v1101 = v988;
      v1081 = v1014;
      v1082 = v1015;
      (*(v945 + 56))(v950, 1, 1, v944);
      v1080 = v1003;
      sub_1B06B571C(v988, v950, &v1080, v1014, v1015, v997, v998, v999, v1000);
      sub_1B03DD8D4(v950);
      sub_1B06BC934(v1014, v1015);
      sub_1B06B97A8(v988);
      return sub_1B06BC934(v1009, v1010);
    }

    sub_1B06BC984(v1013, v990);
    v1100 = v990;
    v1079 = v1003;
    v456 = v998(&v1079);
    if (v456)
    {
      v455 = v456;
      v454 = v456;
      v1073 = v456;
      v1072 = v1003;
      sub_1B06B0708(&v1072, v456, 4, 0, 0, 0, v990, v1000);
      v451 = v329;
      v453 = v330;
      MEMORY[0x1E69E5928](v330);
      MEMORY[0x1E69E5920](v451);
      MEMORY[0x1E69E5920](v453);
      v1071 = v453;
      v452 = [v453 objectID];
      [v997 activityWithID_finishedWithError_];
      MEMORY[0x1E69E5920](v452);
      MEMORY[0x1E69E5920](v453);
      MEMORY[0x1E69E5920](v454);
      sub_1B06B97A8(v990);
      sub_1B06BC934(v1014, v1015);
      return sub_1B06BC934(v1009, v1010);
    }

    (*(v973 + 16))(v976, v1000, v972);
    sub_1B0394784(v1000, v971);
    sub_1B0394784(v971, v969);
    sub_1B03F4FD0(v971, v967);
    v331 = &v969[*(v965 + 20)];
    v414 = *v331;
    v415 = *(v331 + 1);
    sub_1B039480C(v969);
    v417 = 24;
    v428 = 7;
    v332 = swift_allocObject();
    v333 = v415;
    v419 = v332;
    *(v332 + 16) = v414;
    *(v332 + 20) = v333;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v334 = swift_allocObject();
    v335 = v415;
    v416 = v334;
    *(v334 + 16) = v414;
    *(v334 + 20) = v335;

    v427 = 32;
    v336 = swift_allocObject();
    v337 = v416;
    v424 = v336;
    *(v336 + 16) = v797;
    *(v336 + 24) = v337;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v967);
    v429 = swift_allocObject();
    *(v429 + 16) = v1003;
    v449 = sub_1B0E43988();
    v450 = sub_1B0E458E8();
    v426 = 17;
    v431 = swift_allocObject();
    v421 = 16;
    *(v431 + 16) = 16;
    v432 = swift_allocObject();
    v423 = 4;
    *(v432 + 16) = 4;
    v338 = swift_allocObject();
    v418 = v338;
    *(v338 + 16) = v798;
    *(v338 + 24) = 0;
    v339 = swift_allocObject();
    v340 = v418;
    v433 = v339;
    *(v339 + 16) = v799;
    *(v339 + 24) = v340;
    v434 = swift_allocObject();
    *(v434 + 16) = 0;
    v435 = swift_allocObject();
    *(v435 + 16) = 1;
    v341 = swift_allocObject();
    v342 = v419;
    v420 = v341;
    *(v341 + 16) = v800;
    *(v341 + 24) = v342;
    v343 = swift_allocObject();
    v344 = v420;
    v436 = v343;
    *(v343 + 16) = v801;
    *(v343 + 24) = v344;
    v437 = swift_allocObject();
    *(v437 + 16) = v421;
    v438 = swift_allocObject();
    *(v438 + 16) = v423;
    v345 = swift_allocObject();
    v422 = v345;
    *(v345 + 16) = v802;
    *(v345 + 24) = 0;
    v346 = swift_allocObject();
    v347 = v422;
    v439 = v346;
    *(v346 + 16) = v803;
    *(v346 + 24) = v347;
    v440 = swift_allocObject();
    *(v440 + 16) = 0;
    v441 = swift_allocObject();
    *(v441 + 16) = v423;
    v348 = swift_allocObject();
    v349 = v424;
    v425 = v348;
    *(v348 + 16) = v804;
    *(v348 + 24) = v349;
    v350 = swift_allocObject();
    v351 = v425;
    v442 = v350;
    *(v350 + 16) = v805;
    *(v350 + 24) = v351;
    v443 = swift_allocObject();
    *(v443 + 16) = 0;
    v444 = swift_allocObject();
    *(v444 + 16) = 8;
    v352 = swift_allocObject();
    v353 = v429;
    v430 = v352;
    *(v352 + 16) = v806;
    *(v352 + 24) = v353;
    v354 = swift_allocObject();
    v355 = v430;
    v446 = v354;
    *(v354 + 16) = v807;
    *(v354 + 24) = v355;
    v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v445 = sub_1B0E46A48();
    v447 = v356;

    v357 = v431;
    v358 = v447;
    *v447 = v808;
    v358[1] = v357;

    v359 = v432;
    v360 = v447;
    v447[2] = v809;
    v360[3] = v359;

    v361 = v433;
    v362 = v447;
    v447[4] = v810;
    v362[5] = v361;

    v363 = v434;
    v364 = v447;
    v447[6] = v811;
    v364[7] = v363;

    v365 = v435;
    v366 = v447;
    v447[8] = v812;
    v366[9] = v365;

    v367 = v436;
    v368 = v447;
    v447[10] = v813;
    v368[11] = v367;

    v369 = v437;
    v370 = v447;
    v447[12] = v814;
    v370[13] = v369;

    v371 = v438;
    v372 = v447;
    v447[14] = v815;
    v372[15] = v371;

    v373 = v439;
    v374 = v447;
    v447[16] = v816;
    v374[17] = v373;

    v375 = v440;
    v376 = v447;
    v447[18] = v817;
    v376[19] = v375;

    v377 = v441;
    v378 = v447;
    v447[20] = v818;
    v378[21] = v377;

    v379 = v442;
    v380 = v447;
    v447[22] = v819;
    v380[23] = v379;

    v381 = v443;
    v382 = v447;
    v447[24] = v820;
    v382[25] = v381;

    v383 = v444;
    v384 = v447;
    v447[26] = v821;
    v384[27] = v383;

    v385 = v446;
    v386 = v447;
    v447[28] = v822;
    v386[29] = v385;
    sub_1B0394964();

    if (os_log_type_enabled(v449, v450))
    {
      v387 = v943;
      v407 = sub_1B0E45D78();
      v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v406 = 0;
      v408 = sub_1B03949A8(0);
      v409 = sub_1B03949A8(v406);
      v410 = &v1078;
      v1078 = v407;
      v411 = &v1077;
      v1077 = v408;
      v412 = &v1076;
      v1076 = v409;
      sub_1B0394A48(0, &v1078);
      sub_1B0394A48(5, v410);
      v1074 = v808;
      v1075 = v431;
      sub_1B03949FC(&v1074, v410, v411, v412);
      v413 = v387;
      if (v387)
      {

        __break(1u);
      }

      else
      {
        v1074 = v809;
        v1075 = v432;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v404 = 0;
        v1074 = v810;
        v1075 = v433;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v403 = 0;
        v1074 = v811;
        v1075 = v434;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v402 = 0;
        v1074 = v812;
        v1075 = v435;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v401 = 0;
        v1074 = v813;
        v1075 = v436;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v400 = 0;
        v1074 = v814;
        v1075 = v437;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v399 = 0;
        v1074 = v815;
        v1075 = v438;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v398 = 0;
        v1074 = v816;
        v1075 = v439;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v397 = 0;
        v1074 = v817;
        v1075 = v440;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v396 = 0;
        v1074 = v818;
        v1075 = v441;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v395 = 0;
        v1074 = v819;
        v1075 = v442;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v394 = 0;
        v1074 = v820;
        v1075 = v443;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v393 = 0;
        v1074 = v821;
        v1075 = v444;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        v392 = 0;
        v1074 = v822;
        v1075 = v446;
        sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
        _os_log_impl(&dword_1B0389000, v449, v450, "[%.*hhx-%.*X] Unable to get mailbox-object-id for mailbox row ID %lld", v407, 0x21u);
        v391 = 0;
        sub_1B03998A8(v408);
        sub_1B03998A8(v409);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v449);
    (*(v973 + 8))(v976, v972);
    sub_1B06B97A8(v990);
    sub_1B06BC934(v1014, v1015);
    return sub_1B06BC934(v1009, v1010);
  }

  else
  {
    v791 = *v1013;
    v792 = *(v1013 + 1);
    v793 = *(v1013 + 2);
    v794 = *(v1013 + 12);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
    v795 = &v1013[*(v36 + 48)];
    if (v1014)
    {
      v789 = v1014;
      v790 = v1015;
      v154 = v982;
      v625 = v1015;
      v624 = v1014;
      sub_1B06BC984(v795, v992);
      v1046 = v791;
      v1047 = v792;
      v1048 = v793;
      v1049 = v794;
      v1099 = v992;
      v1044 = v624;
      v1045 = v625;
      MEMORY[0x1E69E5928](v625);
      v626 = [v625 objectID];
      MEMORY[0x1E69E5920](v625);
      [v997 activityWithID:v626 finishedWithError:0];
      MEMORY[0x1E69E5920](v626);
      (*(v973 + 16))(v154, v1000, v972);
      sub_1B0394784(v1000, v971);
      sub_1B0394784(v971, v969);
      sub_1B03F4FD0(v971, v967);
      v155 = &v969[*(v965 + 20)];
      v627 = *v155;
      v628 = *(v155 + 1);
      sub_1B039480C(v969);
      v630 = 24;
      v641 = 7;
      v156 = swift_allocObject();
      v157 = v628;
      v632 = v156;
      *(v156 + 16) = v627;
      *(v156 + 20) = v157;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v158 = swift_allocObject();
      v159 = v628;
      v629 = v158;
      *(v158 + 16) = v627;
      *(v158 + 20) = v159;

      v640 = 32;
      v160 = swift_allocObject();
      v161 = v629;
      v637 = v160;
      *(v160 + 16) = v871;
      *(v160 + 24) = v161;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v967);
      v642 = swift_allocObject();
      *(v642 + 16) = v1003;
      v662 = sub_1B0E43988();
      v663 = sub_1B0E458D8();
      v639 = 17;
      v644 = swift_allocObject();
      v634 = 16;
      *(v644 + 16) = 16;
      v645 = swift_allocObject();
      v636 = 4;
      *(v645 + 16) = 4;
      v162 = swift_allocObject();
      v631 = v162;
      *(v162 + 16) = v798;
      *(v162 + 24) = 0;
      v163 = swift_allocObject();
      v164 = v631;
      v646 = v163;
      *(v163 + 16) = v872;
      *(v163 + 24) = v164;
      v647 = swift_allocObject();
      *(v647 + 16) = 0;
      v648 = swift_allocObject();
      *(v648 + 16) = 1;
      v165 = swift_allocObject();
      v166 = v632;
      v633 = v165;
      *(v165 + 16) = v873;
      *(v165 + 24) = v166;
      v167 = swift_allocObject();
      v168 = v633;
      v649 = v167;
      *(v167 + 16) = v874;
      *(v167 + 24) = v168;
      v650 = swift_allocObject();
      *(v650 + 16) = v634;
      v651 = swift_allocObject();
      *(v651 + 16) = v636;
      v169 = swift_allocObject();
      v635 = v169;
      *(v169 + 16) = v802;
      *(v169 + 24) = 0;
      v170 = swift_allocObject();
      v171 = v635;
      v652 = v170;
      *(v170 + 16) = v875;
      *(v170 + 24) = v171;
      v653 = swift_allocObject();
      *(v653 + 16) = 0;
      v654 = swift_allocObject();
      *(v654 + 16) = v636;
      v172 = swift_allocObject();
      v173 = v637;
      v638 = v172;
      *(v172 + 16) = v876;
      *(v172 + 24) = v173;
      v174 = swift_allocObject();
      v175 = v638;
      v655 = v174;
      *(v174 + 16) = v877;
      *(v174 + 24) = v175;
      v656 = swift_allocObject();
      *(v656 + 16) = 0;
      v657 = swift_allocObject();
      *(v657 + 16) = 8;
      v176 = swift_allocObject();
      v177 = v642;
      v643 = v176;
      *(v176 + 16) = v878;
      *(v176 + 24) = v177;
      v178 = swift_allocObject();
      v179 = v643;
      v659 = v178;
      *(v178 + 16) = v879;
      *(v178 + 24) = v179;
      v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v658 = sub_1B0E46A48();
      v660 = v180;

      v181 = v644;
      v182 = v660;
      *v660 = v880;
      v182[1] = v181;

      v183 = v645;
      v184 = v660;
      v660[2] = v881;
      v184[3] = v183;

      v185 = v646;
      v186 = v660;
      v660[4] = v882;
      v186[5] = v185;

      v187 = v647;
      v188 = v660;
      v660[6] = v883;
      v188[7] = v187;

      v189 = v648;
      v190 = v660;
      v660[8] = v884;
      v190[9] = v189;

      v191 = v649;
      v192 = v660;
      v660[10] = v885;
      v192[11] = v191;

      v193 = v650;
      v194 = v660;
      v660[12] = v886;
      v194[13] = v193;

      v195 = v651;
      v196 = v660;
      v660[14] = v887;
      v196[15] = v195;

      v197 = v652;
      v198 = v660;
      v660[16] = v888;
      v198[17] = v197;

      v199 = v653;
      v200 = v660;
      v660[18] = v889;
      v200[19] = v199;

      v201 = v654;
      v202 = v660;
      v660[20] = v890;
      v202[21] = v201;

      v203 = v655;
      v204 = v660;
      v660[22] = v891;
      v204[23] = v203;

      v205 = v656;
      v206 = v660;
      v660[24] = v892;
      v206[25] = v205;

      v207 = v657;
      v208 = v660;
      v660[26] = v893;
      v208[27] = v207;

      v209 = v659;
      v210 = v660;
      v660[28] = v894;
      v210[29] = v209;
      sub_1B0394964();

      if (os_log_type_enabled(v662, v663))
      {
        v211 = v943;
        v617 = sub_1B0E45D78();
        v615 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v616 = 0;
        v618 = sub_1B03949A8(0);
        v619 = sub_1B03949A8(v616);
        v620 = &v1040;
        v1040 = v617;
        v621 = &v1039;
        v1039 = v618;
        v622 = &v1038;
        v1038 = v619;
        sub_1B0394A48(0, &v1040);
        sub_1B0394A48(5, v620);
        v1036 = v880;
        v1037 = v644;
        sub_1B03949FC(&v1036, v620, v621, v622);
        v623 = v211;
        if (v211)
        {

          __break(1u);
        }

        else
        {
          v1036 = v881;
          v1037 = v645;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v614 = 0;
          v1036 = v882;
          v1037 = v646;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v613 = 0;
          v1036 = v883;
          v1037 = v647;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v612 = 0;
          v1036 = v884;
          v1037 = v648;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v611 = 0;
          v1036 = v885;
          v1037 = v649;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v610 = 0;
          v1036 = v886;
          v1037 = v650;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v609 = 0;
          v1036 = v887;
          v1037 = v651;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v608 = 0;
          v1036 = v888;
          v1037 = v652;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v607 = 0;
          v1036 = v889;
          v1037 = v653;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v606 = 0;
          v1036 = v890;
          v1037 = v654;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v605 = 0;
          v1036 = v891;
          v1037 = v655;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v604 = 0;
          v1036 = v892;
          v1037 = v656;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v603 = 0;
          v1036 = v893;
          v1037 = v657;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          v602 = 0;
          v1036 = v894;
          v1037 = v659;
          sub_1B03949FC(&v1036, &v1040, &v1039, &v1038);
          _os_log_impl(&dword_1B0389000, v662, v663, "[%.*hhx-%.*X] Creating new activity for mailbox row ID %lld). B.", v617, 0x21u);
          v601 = 0;
          sub_1B03998A8(v618);
          sub_1B03998A8(v619);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v662);
      (*(v973 + 8))(v982, v972);
      v596 = &v1043;
      v1043 = v1003;
      MEMORY[0x1E69E5928](v624);
      sub_1B06B0708(v596, v624, v791, v792, v793, v794, v992, v1000);
      v597 = v212;
      v598 = v213;
      MEMORY[0x1E69E5920](v624);
      v600 = v1042;
      v1042[0] = v597;
      v1042[1] = v598;
      v599 = &v1041;
      v1041 = v1003;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1700, &qword_1B0E998E8);
      sub_1B0E44788();
      sub_1B06B97A8(v992);
      MEMORY[0x1E69E5920](v624);
      MEMORY[0x1E69E5920](v625);
      return sub_1B06BC934(v1009, v1010);
    }

    sub_1B06BC984(v795, v994);
    v1032 = v791;
    v1033 = v792;
    v1034 = v793;
    v1035 = v794;
    v1098 = v994;
    v1031 = v1003;
    v788 = v998(&v1031);
    if (v788)
    {
      v787 = v788;
      v749 = v788;
      v1025 = v788;
      (*(v973 + 16))(v986, v1000, v972);
      sub_1B0394784(v1000, v971);
      sub_1B0394784(v971, v969);
      sub_1B03F4FD0(v971, v967);
      v37 = &v969[*(v965 + 20)];
      v750 = *v37;
      v751 = *(v37 + 1);
      sub_1B039480C(v969);
      v753 = 24;
      v764 = 7;
      v38 = swift_allocObject();
      v39 = v751;
      v755 = v38;
      *(v38 + 16) = v750;
      *(v38 + 20) = v39;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v40 = swift_allocObject();
      v41 = v751;
      v752 = v40;
      *(v40 + 16) = v750;
      *(v40 + 20) = v41;

      v763 = 32;
      v42 = swift_allocObject();
      v43 = v752;
      v760 = v42;
      *(v42 + 16) = v895;
      *(v42 + 24) = v43;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v967);
      v765 = swift_allocObject();
      *(v765 + 16) = v1003;
      v785 = sub_1B0E43988();
      v786 = sub_1B0E458D8();
      v762 = 17;
      v767 = swift_allocObject();
      v757 = 16;
      *(v767 + 16) = 16;
      v768 = swift_allocObject();
      v759 = 4;
      *(v768 + 16) = 4;
      v44 = swift_allocObject();
      v754 = v44;
      *(v44 + 16) = v798;
      *(v44 + 24) = 0;
      v45 = swift_allocObject();
      v46 = v754;
      v769 = v45;
      *(v45 + 16) = v896;
      *(v45 + 24) = v46;
      v770 = swift_allocObject();
      *(v770 + 16) = 0;
      v771 = swift_allocObject();
      *(v771 + 16) = 1;
      v47 = swift_allocObject();
      v48 = v755;
      v756 = v47;
      *(v47 + 16) = v897;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v756;
      v772 = v49;
      *(v49 + 16) = v898;
      *(v49 + 24) = v50;
      v773 = swift_allocObject();
      *(v773 + 16) = v757;
      v774 = swift_allocObject();
      *(v774 + 16) = v759;
      v51 = swift_allocObject();
      v758 = v51;
      *(v51 + 16) = v802;
      *(v51 + 24) = 0;
      v52 = swift_allocObject();
      v53 = v758;
      v775 = v52;
      *(v52 + 16) = v899;
      *(v52 + 24) = v53;
      v776 = swift_allocObject();
      *(v776 + 16) = 0;
      v777 = swift_allocObject();
      *(v777 + 16) = v759;
      v54 = swift_allocObject();
      v55 = v760;
      v761 = v54;
      *(v54 + 16) = v900;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v761;
      v778 = v56;
      *(v56 + 16) = v901;
      *(v56 + 24) = v57;
      v779 = swift_allocObject();
      *(v779 + 16) = 0;
      v780 = swift_allocObject();
      *(v780 + 16) = 8;
      v58 = swift_allocObject();
      v59 = v765;
      v766 = v58;
      *(v58 + 16) = v902;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v766;
      v782 = v60;
      *(v60 + 16) = v903;
      *(v60 + 24) = v61;
      v784 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v781 = sub_1B0E46A48();
      v783 = v62;

      v63 = v767;
      v64 = v783;
      *v783 = v904;
      v64[1] = v63;

      v65 = v768;
      v66 = v783;
      v783[2] = v905;
      v66[3] = v65;

      v67 = v769;
      v68 = v783;
      v783[4] = v906;
      v68[5] = v67;

      v69 = v770;
      v70 = v783;
      v783[6] = v907;
      v70[7] = v69;

      v71 = v771;
      v72 = v783;
      v783[8] = v908;
      v72[9] = v71;

      v73 = v772;
      v74 = v783;
      v783[10] = v909;
      v74[11] = v73;

      v75 = v773;
      v76 = v783;
      v783[12] = v910;
      v76[13] = v75;

      v77 = v774;
      v78 = v783;
      v783[14] = v911;
      v78[15] = v77;

      v79 = v775;
      v80 = v783;
      v783[16] = v912;
      v80[17] = v79;

      v81 = v776;
      v82 = v783;
      v783[18] = v913;
      v82[19] = v81;

      v83 = v777;
      v84 = v783;
      v783[20] = v914;
      v84[21] = v83;

      v85 = v778;
      v86 = v783;
      v783[22] = v915;
      v86[23] = v85;

      v87 = v779;
      v88 = v783;
      v783[24] = v916;
      v88[25] = v87;

      v89 = v780;
      v90 = v783;
      v783[26] = v917;
      v90[27] = v89;

      v91 = v782;
      v92 = v783;
      v783[28] = v918;
      v92[29] = v91;
      sub_1B0394964();

      if (os_log_type_enabled(v785, v786))
      {
        v93 = v943;
        v742 = sub_1B0E45D78();
        v740 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v741 = 0;
        v743 = sub_1B03949A8(0);
        v744 = sub_1B03949A8(v741);
        v745 = &v1021;
        v1021 = v742;
        v746 = &v1020;
        v1020 = v743;
        v747 = &v1019;
        v1019 = v744;
        sub_1B0394A48(0, &v1021);
        sub_1B0394A48(5, v745);
        v1017 = v904;
        v1018 = v767;
        sub_1B03949FC(&v1017, v745, v746, v747);
        v748 = v93;
        if (v93)
        {

          __break(1u);
        }

        else
        {
          v1017 = v905;
          v1018 = v768;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v739 = 0;
          v1017 = v906;
          v1018 = v769;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v738 = 0;
          v1017 = v907;
          v1018 = v770;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v737 = 0;
          v1017 = v908;
          v1018 = v771;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v736 = 0;
          v1017 = v909;
          v1018 = v772;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v735 = 0;
          v1017 = v910;
          v1018 = v773;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v734 = 0;
          v1017 = v911;
          v1018 = v774;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v733 = 0;
          v1017 = v912;
          v1018 = v775;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v732 = 0;
          v1017 = v913;
          v1018 = v776;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v731 = 0;
          v1017 = v914;
          v1018 = v777;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v730 = 0;
          v1017 = v915;
          v1018 = v778;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v729 = 0;
          v1017 = v916;
          v1018 = v779;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v728 = 0;
          v1017 = v917;
          v1018 = v780;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          v727 = 0;
          v1017 = v918;
          v1018 = v782;
          sub_1B03949FC(&v1017, &v1021, &v1020, &v1019);
          _os_log_impl(&dword_1B0389000, v785, v786, "[%.*hhx-%.*X] Creating new activity for mailbox row ID %lld). A.", v742, 0x21u);
          v726 = 0;
          sub_1B03998A8(v743);
          sub_1B03998A8(v744);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v785);
      (*(v973 + 8))(v986, v972);
      v1024 = v1003;
      sub_1B06B0708(&v1024, v749, v791, v792, v793, v794, v994, v1000);
      v725 = v1023;
      v1023[0] = v94;
      v1023[1] = v95;
      v724 = &v1022;
      v1022 = v1003;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1700, &qword_1B0E998E8);
      sub_1B0E44788();
      MEMORY[0x1E69E5920](v749);
      sub_1B06B97A8(v994);
      return sub_1B06BC934(v1009, v1010);
    }

    (*(v973 + 16))(v984, v1000, v972);
    sub_1B0394784(v1000, v971);
    sub_1B0394784(v971, v969);
    sub_1B03F4FD0(v971, v967);
    v96 = &v969[*(v965 + 20)];
    v687 = *v96;
    v688 = *(v96 + 1);
    sub_1B039480C(v969);
    v690 = 24;
    v701 = 7;
    v97 = swift_allocObject();
    v98 = v688;
    v692 = v97;
    *(v97 + 16) = v687;
    *(v97 + 20) = v98;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v99 = swift_allocObject();
    v100 = v688;
    v689 = v99;
    *(v99 + 16) = v687;
    *(v99 + 20) = v100;

    v700 = 32;
    v101 = swift_allocObject();
    v102 = v689;
    v697 = v101;
    *(v101 + 16) = v919;
    *(v101 + 24) = v102;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v967);
    v702 = swift_allocObject();
    *(v702 + 16) = v1003;
    v722 = sub_1B0E43988();
    v723 = sub_1B0E458E8();
    v699 = 17;
    v704 = swift_allocObject();
    v694 = 16;
    *(v704 + 16) = 16;
    v705 = swift_allocObject();
    v696 = 4;
    *(v705 + 16) = 4;
    v103 = swift_allocObject();
    v691 = v103;
    *(v103 + 16) = v798;
    *(v103 + 24) = 0;
    v104 = swift_allocObject();
    v105 = v691;
    v706 = v104;
    *(v104 + 16) = v920;
    *(v104 + 24) = v105;
    v707 = swift_allocObject();
    *(v707 + 16) = 0;
    v708 = swift_allocObject();
    *(v708 + 16) = 1;
    v106 = swift_allocObject();
    v107 = v692;
    v693 = v106;
    *(v106 + 16) = v921;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v693;
    v709 = v108;
    *(v108 + 16) = v922;
    *(v108 + 24) = v109;
    v710 = swift_allocObject();
    *(v710 + 16) = v694;
    v711 = swift_allocObject();
    *(v711 + 16) = v696;
    v110 = swift_allocObject();
    v695 = v110;
    *(v110 + 16) = v802;
    *(v110 + 24) = 0;
    v111 = swift_allocObject();
    v112 = v695;
    v712 = v111;
    *(v111 + 16) = v923;
    *(v111 + 24) = v112;
    v713 = swift_allocObject();
    *(v713 + 16) = 0;
    v714 = swift_allocObject();
    *(v714 + 16) = v696;
    v113 = swift_allocObject();
    v114 = v697;
    v698 = v113;
    *(v113 + 16) = v924;
    *(v113 + 24) = v114;
    v115 = swift_allocObject();
    v116 = v698;
    v715 = v115;
    *(v115 + 16) = v925;
    *(v115 + 24) = v116;
    v716 = swift_allocObject();
    *(v716 + 16) = 0;
    v717 = swift_allocObject();
    *(v717 + 16) = 8;
    v117 = swift_allocObject();
    v118 = v702;
    v703 = v117;
    *(v117 + 16) = v926;
    *(v117 + 24) = v118;
    v119 = swift_allocObject();
    v120 = v703;
    v719 = v119;
    *(v119 + 16) = v927;
    *(v119 + 24) = v120;
    v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v718 = sub_1B0E46A48();
    v720 = v121;

    v122 = v704;
    v123 = v720;
    *v720 = v928;
    v123[1] = v122;

    v124 = v705;
    v125 = v720;
    v720[2] = v929;
    v125[3] = v124;

    v126 = v706;
    v127 = v720;
    v720[4] = v930;
    v127[5] = v126;

    v128 = v707;
    v129 = v720;
    v720[6] = v931;
    v129[7] = v128;

    v130 = v708;
    v131 = v720;
    v720[8] = v932;
    v131[9] = v130;

    v132 = v709;
    v133 = v720;
    v720[10] = v933;
    v133[11] = v132;

    v134 = v710;
    v135 = v720;
    v720[12] = v934;
    v135[13] = v134;

    v136 = v711;
    v137 = v720;
    v720[14] = v935;
    v137[15] = v136;

    v138 = v712;
    v139 = v720;
    v720[16] = v936;
    v139[17] = v138;

    v140 = v713;
    v141 = v720;
    v720[18] = v937;
    v141[19] = v140;

    v142 = v714;
    v143 = v720;
    v720[20] = v938;
    v143[21] = v142;

    v144 = v715;
    v145 = v720;
    v720[22] = v939;
    v145[23] = v144;

    v146 = v716;
    v147 = v720;
    v720[24] = v940;
    v147[25] = v146;

    v148 = v717;
    v149 = v720;
    v720[26] = v941;
    v149[27] = v148;

    v150 = v719;
    v151 = v720;
    v720[28] = v942;
    v151[29] = v150;
    sub_1B0394964();

    if (os_log_type_enabled(v722, v723))
    {
      v152 = v943;
      v680 = sub_1B0E45D78();
      v678 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v679 = 0;
      v681 = sub_1B03949A8(0);
      v682 = sub_1B03949A8(v679);
      v683 = &v1030;
      v1030 = v680;
      v684 = &v1029;
      v1029 = v681;
      v685 = &v1028;
      v1028 = v682;
      sub_1B0394A48(0, &v1030);
      sub_1B0394A48(5, v683);
      v1026 = v928;
      v1027 = v704;
      sub_1B03949FC(&v1026, v683, v684, v685);
      v686 = v152;
      if (v152)
      {

        __break(1u);
      }

      else
      {
        v1026 = v929;
        v1027 = v705;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v677 = 0;
        v1026 = v930;
        v1027 = v706;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v676 = 0;
        v1026 = v931;
        v1027 = v707;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v675 = 0;
        v1026 = v932;
        v1027 = v708;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v674 = 0;
        v1026 = v933;
        v1027 = v709;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v673 = 0;
        v1026 = v934;
        v1027 = v710;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v672 = 0;
        v1026 = v935;
        v1027 = v711;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v671 = 0;
        v1026 = v936;
        v1027 = v712;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v670 = 0;
        v1026 = v937;
        v1027 = v713;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v669 = 0;
        v1026 = v938;
        v1027 = v714;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v668 = 0;
        v1026 = v939;
        v1027 = v715;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v667 = 0;
        v1026 = v940;
        v1027 = v716;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v666 = 0;
        v1026 = v941;
        v1027 = v717;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        v665 = 0;
        v1026 = v942;
        v1027 = v719;
        sub_1B03949FC(&v1026, &v1030, &v1029, &v1028);
        _os_log_impl(&dword_1B0389000, v722, v723, "[%.*hhx-%.*X] Unable to get mailbox-object-id for mailbox row ID %lld", v680, 0x21u);
        v664 = 0;
        sub_1B03998A8(v681);
        sub_1B03998A8(v682);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v722);
    (*(v973 + 8))(v984, v972);
    sub_1B06B97A8(v994);
    return sub_1B06BC934(v1009, v1010);
  }
}