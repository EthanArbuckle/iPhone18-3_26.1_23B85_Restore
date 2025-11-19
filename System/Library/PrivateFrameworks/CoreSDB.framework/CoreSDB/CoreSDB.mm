_DWORD *sub_24789EE28(uint64_t a1, const __CFString *key, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    valueCallBacks.version = 0;
    valueCallBacks.retain = 0;
    valueCallBacks.copyDescription = 0;
    valueCallBacks.equal = 0;
    valueCallBacks.release = sub_2478A0370;
    v6 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], &valueCallBacks);
    *(a1 + 16) = v6;
  }

  Value = CFDictionaryGetValue(v6, key);
  if (!Value)
  {
    v8 = CSDBCreateUTF8StringFromCFString(key);
    v9 = CSDBSqlitePreparedStatement(*(a1 + 8), v8, a3);
    if (v9)
    {
      v10 = v9;
      Value = malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
      *Value = a1;
      *(Value + 1) = v10;
      CFDictionarySetValue(*(a1 + 16), key, Value);
      Value[4] = 1;
    }

    else
    {
      Value = 0;
    }

    free(v8);
  }

  return Value;
}

UInt8 *CSDBCreateUTF8StringFromCFString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0xAAAAAAAAAAAAAAAALL;
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  v7.location = 0;
  v7.length = Length;
  CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v4, MaximumSizeForEncoding, &usedBufLen);
  v4[usedBufLen] = 0;
  return v4;
}

sqlite3_stmt *CSDBSqlitePreparedStatement(sqlite3 *db, char *zSql, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  if (!db)
  {
    goto LABEL_30;
  }

  do
  {
    v6 = sqlite3_prepare_v2(db, zSql, -1, &ppStmt, 0);
  }

  while ((v6 - 5) < 2);
  v7 = ppStmt;
  if (v6 || !ppStmt)
  {
    if (a3)
    {
      if (!ppStmt)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v17 = sqlite3_errmsg(db);
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = sqlite3_extended_errcode(db);
          v24 = 136315906;
          *v25 = "warning: ";
          *&v25[8] = 2080;
          *&v25[10] = zSql;
          *&v25[18] = 2080;
          v26 = v17;
          v27 = 1024;
          v28 = v19;
          _os_log_impl(&dword_24789E000, v18, OS_LOG_TYPE_INFO, "%s Could not compile statement %s: %s (%d)\n", &v24, 0x26u);
        }
      }

      v7 = ppStmt;
      if (!ppStmt)
      {
        goto LABEL_31;
      }
    }

    sqlite3_finalize(v7);
LABEL_30:
    v7 = 0;
    goto LABEL_31;
  }

  if (byte_280BCAA08)
  {
    if (!dword_280BCA9C4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    byte_280BCAA08 = 1;
    v8 = getenv("CSDBSQLEXPLAIN");
    BYTE1(dword_280BCA9C4) = v8 != 0;
    v9 = getenv("CSDBSQLEXPLAIN_TABLES");
    HIBYTE(dword_280BCA9C4) = v9 != 0;
    v10 = getenv("CSDBSQLEXPLAIN_ONLY_NON_INDEXED");
    BYTE2(dword_280BCA9C4) = v10 != 0;
    HIBYTE(dword_280BCA9C4) = (v9 | v10) != 0;
    LOBYTE(dword_280BCA9C4) = (v8 | v9 | v10) != 0;
    if (!(v8 | v9 | v10))
    {
      goto LABEL_31;
    }
  }

  *&v25[4] = zSql;
  *&v25[12] = 2863311360;
  *v25 = -1431655766;
  v24 = dword_280BCA9C4;
  v11 = CFStringCreateWithFormat(0, 0, @"EXPLAIN QUERY PLAN %s", zSql);
  v12 = CSDBCreateUTF8StringFromCFString(v11);
  sqlite3_exec(db, v12, sub_2478A82C8, &v24, 0);
  free(v12);
  if (v11)
  {
    CFRelease(v11);
  }

  if (*&v25[16])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24789E000, v13, OS_LOG_TYPE_INFO, "----------------------------\n", buf, 2u);
      }
    }

    v14 = (*&v25[16])--;
    if (v14 >= 2)
    {
      do
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_24789E000, v15, OS_LOG_TYPE_INFO, "\n", buf, 2u);
          }
        }
      }

      while ((*&v25[16])-- > 1);
    }
  }

  v7 = ppStmt;
LABEL_31:
  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CSDBPerformLockedSectionForDatabase(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = *(result + 8);
      if (result)
      {
        result = CSDBRecordStoreGetDatabase(result);
        if (result)
        {
          v4 = *(v3 + 8);
          v5 = *(a2 + 16);

          return v5(a2, v4, result);
        }
      }
    }
  }

  return result;
}

uint64_t CSDBRecordStoreGetDatabase(uint64_t a1)
{
  if (!a1)
  {
    sub_2478AD384();
  }

  result = *(a1 + 8);
  if (!result)
  {
    v3 = CSDBSqliteDatabaseCreateWithPath(*a1);
    *(a1 + 8) = v3;
    if (!v3)
    {
      sub_2478AD358();
    }

    CSDBSqliteDatabaseSetSetupHandler(v3, sub_2478A59DC, a1);
    return *(a1 + 8);
  }

  return result;
}

uint64_t CSDBSqliteDatabaseFromThreadedRecordStoreRef(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0)
  {
    return CSDBRecordStoreGetDatabase(v1);
  }

  else
  {
    return 0;
  }
}

_DWORD *CSDBSqliteDatabaseStatementForWriting(uint64_t a1, const __CFString *a2)
{
  v3 = CSDBSqliteDatabaseConnectionForWritingWithOwnership(a1, 1);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v4 = sub_24789EE28(v3, a2, 0);
  v7 = *v6;
  if (*v6 && (*(v7 + 84) & 4) != 0)
  {
    pthread_mutex_unlock((v7 + 88));
  }

  return v4;
}

uint64_t CSDBSqliteDatabaseConnectionForWritingWithOwnership(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    if ((*(result + 84) & 4) != 0)
    {
      pthread_mutex_lock((result + 88));
    }

    result = *(v3 + 8);
    if (!result)
    {
      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(*v3);
      v5 = malloc_type_calloc(MaximumSizeOfFileSystemRepresentation + 1, 1uLL, 0x100004077774924uLL);
      CFStringGetFileSystemRepresentation(*v3, v5, MaximumSizeOfFileSystemRepresentation);
      v13 = 0;
      v6 = sub_2478A131C(v3, v5, &v13, a2);
      if (v6 || v13 == 1 && (v6 = sub_2478A131C(v3, v5, &v13, 1)) != 0)
      {
        v7 = v6;
        v8 = objc_alloc(MEMORY[0x277CCACA8]);
        v9 = strlen(v5);
        v11 = objc_msgSend_initWithBytes_length_encoding_(v8, v10, v5, v9, 1);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = sub_2478A4B78;
        v12[3] = &unk_278EB3308;
        v12[4] = v11;
        dispatch_async(MEMORY[0x277D85CD0], v12);

        *(v3 + 8) = v7;
        *v7 = v3;
      }

      free(v5);
      return *(v3 + 8);
    }
  }

  return result;
}

void CSDBSqliteBindInt64(uint64_t a1, sqlite3_int64 a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v5 = *(a1 + 16);
      if (v5 >= 1)
      {
        sqlite3_bind_int64(v3, v5, a2);
LABEL_12:
        ++*(a1 + 16);
        goto LABEL_13;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"YES";
      if (a1)
      {
        v8 = *(a1 + 16);
      }

      else
      {
        v7 = @"NO";
        v8 = 0;
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_24789E000, v6, OS_LOG_TYPE_INFO, "Invalid parameters passed into CSDBSqliteBindInt64 s==NULL ? %@  bindIndex = %d", &v10, 0x12u);
    }
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
}

void CSDBCheckResultWithStatement(void **a1, char *exc_buf, uint64_t a3, uint64_t a4, sqlite3_stmt *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a3 > 25)
  {
    if ((a3 - 100) < 2)
    {
      return;
    }

    if (a3 != 26)
    {
      goto LABEL_15;
    }

LABEL_8:
    if (*a1)
    {
      v29 = a3;
      v30 = a4;
      v32 = exc_buf;
      v34 = a5;
      objc_msgSend_UTF8String(*a1, exc_buf, a3);
      v24 = _sqlite3_integrity_check();
      v25 = IMOSLoggingEnabled();
      if (!v24)
      {
        if (v25)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *v36 = 0;
            _os_log_impl(&dword_24789E000, v26, OS_LOG_TYPE_INFO, "Exiting as we were handed a false negative corruption by sqlite and we want to clean up bad state in memory", v36, 2u);
          }
        }

        exit(2);
      }

      if (v25)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v37 = 0;
          _os_log_impl(&dword_24789E000, v27, OS_LOG_TYPE_INFO, "SQLite confirms DB is corrupted. About to move it aside", v37, 2u);
        }
      }

      sub_2478A99BC(a1, v32, v29, v30, v34);
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24789E000, v22, OS_LOG_TYPE_INFO, "We had a corruption but had a nil DB path", buf, 2u);
      }
    }

    return;
  }

  if (!a3)
  {
    return;
  }

  if (a3 != 10)
  {
    if (a3 != 11)
    {
LABEL_15:

      sub_2478A9494(exc_buf, a4, a5, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      return;
    }

    goto LABEL_8;
  }

  if (qword_27EE54AB0 != -1)
  {
    v31 = exc_buf;
    v33 = a5;
    v23 = a4;
    sub_2478ADA34();
    exc_buf = v31;
    a5 = v33;
    a4 = v23;
  }

  if (byte_27EE54AB8 == 1)
  {
    goto LABEL_15;
  }
}

CFStringRef CSDBSqliteStatementCopyStringResult(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  if (CSDBSqliteStepWithConnection(*a1, v2) != 100)
  {
    return 0;
  }

  v3 = sqlite3_column_text(*(a1 + 8), 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CBECE8];

  return CFStringCreateWithCString(v5, v4, 0x8000100u);
}

void CSDBRecordStoreInvalidateCachesWithStore(uint64_t a1)
{
  if (a1)
  {
    CSDBRecordStoreRevert(a1);
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 16) = 0;
    }
  }
}

void CSDBRecordStoreRevert(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 24) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 32) = 0;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 40) = 0;
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 48) = 0;
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      CFDictionaryApplyFunction(v6, sub_2478A031C, 0);
    }

    *(a1 + 96) = -1;
  }
}

uint64_t CSDBPerformLockedSectionForQueryForReading(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        result = *(result + 8);
        if (result)
        {
          result = CSDBRecordStoreGetDatabase(result);
          if (result)
          {
            v6 = result;
            result = CSDBSqliteDatabaseStatementForReading(result, a2);
            if (result)
            {
              v7 = result;
              if (*(result + 8))
              {
                (*(a3 + 16))(a3, *(v5 + 8), v6, result);

                return CSDBSqliteStatementReset(v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CSDBPerformLockedSectionForRecordStoreWithoutInitialize(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 8);
    if (v2)
    {
      return (*(a2 + 16))(a2, v2);
    }
  }

  return result;
}

UInt8 *CSDBSqliteBindTextFromCFString(UInt8 *result, const __CFString *a2)
{
  if (result)
  {
    v2 = result;
    if (a2 && *(result + 1) && *(result + 4) >= 1)
    {
      result = CSDBCreateUTF8StringFromCFString(a2);
      if (result)
      {
        result = sqlite3_bind_text(*(v2 + 1), *(v2 + 4), result, -1, MEMORY[0x277D86138]);
      }
    }

    ++*(v2 + 4);
  }

  return result;
}

uint64_t CSDBRecordStoreProcessRecordStatementWithPropertyIndices(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, CFDictionaryRef theDict)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v13;
  v22 = v13;
  v18 = v13;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  Columns = CSDBRecordStoreCreateReadColumns(a2, &v21 + 2, theDict, 0, 0);
  v20 = Columns;
  if (!Columns)
  {
    return 0;
  }

  v15 = Columns;
  *&v21 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (v21)
  {
    *&v18 = a1;
    *(&v18 + 1) = a2;
    v19 = sub_2478A01A8(a1, a2);
    *&v22 = a4;
    *(&v22 + 1) = a5;
    v23 = a6;
    HIDWORD(v21) = -1;
    CSDBSqliteStatementSendResults(a3, sub_2478A2454, &v18);
    v15 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  free(v15);
  return v16;
}

char *CSDBRecordStoreCreateReadColumns(uint64_t a1, _DWORD *a2, CFDictionaryRef theDict, uint64_t (*a4)(uint64_t a1), uint64_t (*(*a5)())(uint64_t a1, int a2, uint64_t a3))
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = sub_2478A0160;
  }

  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = sub_2478A0194;
  }

  v38 = v8;
  v39 = v7;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    LODWORD(v11) = Count;
    if (Count < 1)
    {
      v13 = 0;
    }

    else
    {
      v37 = a2;
      v12 = Count & 0x7FFFFFFF;
      v13 = malloc_type_calloc(v12, 0x20uLL, 0x1080040A9F9A45FuLL);
      v36 = v11;
      if (v11 >= 0x20)
      {
        v14 = 32;
      }

      else
      {
        v14 = v11;
      }

      v15 = (8 * v14);
      v16 = malloc_type_malloc(v15, 0x80040B8603338uLL);
      v17 = malloc_type_malloc(v15, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(theDict, v16, v17);
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *(a1 + 80) + 40 * LODWORD(v16[v18]);
        if ((*(v20 + 24) & 4) == 0)
        {
          v21 = &v13[32 * v19];
          *v21 = v17[v18];
          *(v21 + 1) = v39(*(v20 + 8));
          if (*(v20 + 24))
          {
            v22 = 0;
            v23 = 16;
          }

          else
          {
            *(v21 + 2) = (v38)(*(v20 + 8));
            v22 = v16[v18];
            v23 = 24;
          }

          *&v21[v23] = v22;
          ++v19;
        }

        ++v18;
      }

      while (v12 != v18);
      free(v16);
      free(v17);
      LODWORD(v11) = v36;
      a2 = v37;
    }

    goto LABEL_36;
  }

  v24 = *(a1 + 72);
  if (v24 < 1)
  {
    LODWORD(v11) = 0;
LABEL_35:
    v13 = 0;
    goto LABEL_36;
  }

  LODWORD(v11) = 0;
  v25 = (*(a1 + 80) + 24);
  do
  {
    v26 = *v25;
    v25 += 10;
    v11 = (((v26 >> 2) & 1) == 0) + v11;
    --v24;
  }

  while (v24);
  if (v11 <= 0)
  {
    goto LABEL_35;
  }

  v13 = malloc_type_calloc(v11, 0x20uLL, 0x1080040A9F9A45FuLL);
  if (*(a1 + 72) >= 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(a1 + 80) + v27;
      if ((*(v30 + 24) & 4) == 0)
      {
        v31 = v29 + 1;
        v32 = &v13[32 * v29];
        *v32 = v29 + 1;
        *(v32 + 1) = v39(*(v30 + 8));
        if (*(v30 + 24))
        {
          v34 = 0;
          v33 = 16;
        }

        else
        {
          *(v32 + 2) = (v38)(*(v30 + 8));
          v33 = 24;
          v34 = v28;
        }

        *&v32[v33] = v34;
        v29 = v31;
      }

      ++v28;
      v27 += 40;
    }

    while (v28 < *(a1 + 72));
  }

LABEL_36:
  *a2 = v11;
  return v13;
}

uint64_t sub_2478A0160(uint64_t a1)
{
  v1 = 0;
  v2 = qword_2478AE7C0;
  do
  {
    v3 = *v2;
    v2 += 2;
    if (v3 == a1)
    {
      break;
    }

    ++v1;
  }

  while (v1 != 4);
  return qword_2478AE7C0[2 * v1 + 1];
}

const void *sub_2478A01A8(uint64_t a1, void *key)
{
  if (!a1)
  {
    sub_2478AD6C8();
  }

  Mutable = *(a1 + 16);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    *(a1 + 16) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    CFDictionarySetValue(*(a1 + 16), key, Value);
    CFRelease(Value);
  }

  return Value;
}

uint64_t CSDBSqliteStatementSendResults(void *a1, unsigned int (*a2)(void *, uint64_t), uint64_t a3)
{
  if (!a1 || !a1[1] || !*a1 || !*(*a1 + 8))
  {
    return 1;
  }

  while (1)
  {
    v6 = a1[1];
    if (!v6)
    {
      v8 = 1;
LABEL_11:
      sub_2478A9C80(*(*a1 + 8), "CSDBSqliteStatementSendResults");
      goto LABEL_13;
    }

    v7 = CSDBSqliteStepWithConnection(*a1, v6);
    if (v7 != 100)
    {
      break;
    }

    if (a2(a1, a3))
    {
      v8 = 100;
      goto LABEL_13;
    }
  }

  v8 = v7;
  if ((v7 - 102) <= 0xFFFFFFFD)
  {
    goto LABEL_11;
  }

  v8 = 101;
LABEL_13:
  CSDBSqliteStatementReset(a1);
  return v8;
}

void CSDBSqliteConnectionFlushStatementCache(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 16) = 0;
    }
  }
}

void sub_2478A0370(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      sqlite3_finalize(v3);
    }
  }

  free(a2);
}

uint64_t CSDBPerformLockedSectionForQueryForWriting(uint64_t result, const __CFString *a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        result = *(result + 8);
        if (result)
        {
          result = CSDBRecordStoreGetDatabase(result);
          if (result)
          {
            v6 = result;
            result = CSDBSqliteDatabaseStatementForWriting(result, a2);
            if (result)
            {
              v7 = result;
              if (*(result + 8))
              {
                (*(a3 + 16))(a3, *(v5 + 8), v6, result);

                return CSDBSqliteStatementReset(v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CSDBSqliteStatementPerform(void *a1)
{
  if (a1 && (v1 = a1[1]) != 0)
  {
    return CSDBSqliteStepWithConnection(*a1, v1);
  }

  else
  {
    return 1;
  }
}

sqlite3_int64 CSDBSqliteStatementInteger64Result(sqlite3_stmt **a1, int *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  if (CSDBSqliteStepWithConnection(*a1, v4) == 100)
  {
    v5 = sqlite3_column_int64(a1[1], 0);
  }

  else
  {
    v5 = 0;
  }

  if (*a1)
  {
    if (a2)
    {
      v7 = *(*a1 + 1);
      if (v7)
      {
        *a2 = sqlite3_errcode(v7);
      }
    }
  }

  return v5;
}

CFArrayRef CSDBSqliteStatementCopyStringsForColumnsAtIndices(uint64_t a1, const __CFArray *a2)
{
  v2 = CSDBSqliteStatementCopyAllRowsStringsForColumnsAtIndices(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    Copy = 0;
  }

  else
  {
    v4 = *MEMORY[0x277CBECE8];
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    Copy = CFArrayCreateCopy(v4, ValueAtIndex);
  }

  CFRelease(v3);
  return Copy;
}

__CFArray *CSDBSqliteStatementCopyAllRowsStringsForColumnsAtIndices(uint64_t a1, CFArrayRef theArray)
{
  if (!a1 || !*(a1 + 8))
  {
    return 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v4, Count, MEMORY[0x277CBF128]);
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = MEMORY[0x277CBF128];
    do
    {
      if (CSDBSqliteStepWithConnection(*a1, v7) != 100)
      {
        break;
      }

      v9 = CFArrayGetCount(theArray);
      v10 = CFArrayCreateMutable(v4, v9, v8);
      if (Mutable && CFArrayGetCount(theArray) >= 1)
      {
        v11 = 0;
        do
        {
          valuePtr = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
          CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
          v13 = sqlite3_column_text(*(a1 + 8), valuePtr);
          if (v13)
          {
            v14 = CFStringCreateWithCString(v4, v13, 0x8000100u);
            if (v14)
            {
              v15 = v14;
              CFArrayAppendValue(v10, v14);
              CFRelease(v15);
            }
          }

          ++v11;
        }

        while (CFArrayGetCount(theArray) > v11);
      }

      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
      v7 = *(a1 + 8);
    }

    while (v7);
  }

  return Mutable;
}

uint64_t CSDBPerformLocked(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    if (*(result + 8))
    {
      return (*(a2 + 16))(a2);
    }
  }

  return result;
}

uint64_t CSDBPerformLockedSectionForRecordStore(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v2 = *(result + 8);
    if (v2)
    {
      return (*(a2 + 16))(a2, v2);
    }
  }

  return result;
}

uint64_t CSDBRecordSaveStore(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  err = 0;
  v1 = CSDBRecordStoreSaveWithPreAndPostCallbacksAndTransactionType(a1, 0, 0, 0, 1u, &err);
  if ((v1 & 1) == 0 && err)
  {
    Domain = CFErrorGetDomain(err);
    if (Domain)
    {
      v3 = CSDBCreateUTF8StringFromCFString(Domain);
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "(no domain)";
    }

    Code = CFErrorGetCode(err);
    syslog(3, "Error saving record store: %s/%i", v4, Code);
    if (v3)
    {
      free(v3);
    }

    CFRelease(err);
  }

  return v1;
}

uint64_t CSDBRecordStoreSaveWithPreAndPostCallbacksAndTransactionType(uint64_t a1, void (*a2)(uint64_t, uint64_t *), void (*a3)(uint64_t, uint64_t *), int a4, unsigned int a5, CFErrorRef *a6)
{
  if (a1 && !a2 && !a3 && !*(a1 + 24) && !*(a1 + 32) && !*(a1 + 40) && !*(a1 + 80) && !*(a1 + 16))
  {
    return 1;
  }

  Database = CSDBRecordStoreGetDatabase(a1);
  v13 = CSDBSqliteDatabaseConnectionForWriting(Database);
  if (!v13)
  {
    if (!a6)
    {
      return 0;
    }

    v18 = CFErrorCreate(0, @"CSDBRecord", 1, 0);
    v19 = 0;
    goto LABEL_19;
  }

  v14 = v13;
  CSDBSqliteConnectionBeginTransactionType(v13, a5);
  v15 = CSDBSqliteConnectionIntegerForProperty(v14, @"__CSDBRecordSequenceNumber");
  if (!a1)
  {
    sub_2478AD4B8();
  }

  v16 = v15;
  if (a4)
  {
    v17 = *(a1 + 96);
    if (v17 != -1 && v15 != v17)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: database changed externally\n", "_Bool CSDBRecordStoreSaveWithPreAndPostCallbacksAndTransactionType(CSDBRecordStoreRef, CSDBRecordStoreSaveCallback, CSDBRecordStoreSaveCallback, CSDBRecordConflictPolicy, CSDBSqliteTransactionType, CFErrorRef *)");
      if (a6)
      {
        *a6 = CFErrorCreate(0, @"CSDBRecord", 2, 0);
      }

      CSDBSqliteDatabaseReleaseSqliteConnection(v14);
      return 0;
    }
  }

  context = a1;
  v29 = v14;
  v30 = 0;
  if (a2)
  {
    a2(a1, v14);
  }

  sub_2478A1D6C(&context);
  sub_2478A1CC8(&context);
  if (context)
  {
    if (v29)
    {
      v21 = *(context + 32);
      if (v21)
      {
        *(context + 32) = 0;
        CFDictionaryApplyFunction(v21, sub_2478A4DE8, &context);
        CFRelease(v21);
        v22 = *(context + 32);
        if (v22)
        {
          CFRelease(v22);
          *(context + 32) = 0;
        }
      }
    }
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    CFDictionaryApplyFunction(v23, sub_2478A5C20, &context);
    CFRelease(*(a1 + 80));
    *(a1 + 80) = 0;
  }

  v24 = v16 + 1;
  *(a1 + 96) = v16 + 1;
  v25 = *(a1 + 16);
  if (v25)
  {
    CFDictionaryApplyFunction(v25, sub_2478A1F2C, v24);
    v24 = *(a1 + 96);
  }

  CSDBSqliteConnectionSetIntegerForProperty(v14, @"__CSDBRecordSequenceNumber", v24);
  if (a3)
  {
    a3(a1, v14);
  }

  if (a5 == 0xFFFF)
  {
    v26 = 101;
  }

  else
  {
    v26 = CSDBSqliteConnectionCommit(v14);
    CSDBSqliteConnectionCheckNoConnectionError(v14, v26, "_Bool CSDBRecordStoreSaveWithPreAndPostCallbacksAndTransactionType(CSDBRecordStoreRef, CSDBRecordStoreSaveCallback, CSDBRecordStoreSaveCallback, CSDBRecordConflictPolicy, CSDBSqliteTransactionType, CFErrorRef *)");
  }

  CSDBSqliteDatabaseReleaseSqliteConnection(v14);
  v19 = v26 == 101 || v26 == 0;
  if (a6 && !v19)
  {
    v18 = CFErrorCreate(0, @"CSDBRecordSQLite", v26, 0);
LABEL_19:
    *a6 = v18;
  }

  return v19;
}

void CSDBSqliteDatabaseClose(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 8))
  {
    goto LABEL_2;
  }

  v4 = CSDBSqliteDatabaseConnectionForWritingWithOwnership(a1, 1);
  v5 = sub_24789EE28(v4, @"PRAGMA page_count", 0);
  v6 = sub_24789EE28(v4, @"PRAGMA freelist_count", 0);
  v24 = 0;
  v7 = CSDBSqliteStatementInteger64Result(v5, &v24);
  if (v24 && v24 != 100)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v26 = v24;
        v20 = "SQLite error %d while attempting to get page_count.  Bailing on the incremental vacuum.";
LABEL_25:
        _os_log_impl(&dword_24789E000, v19, OS_LOG_TYPE_INFO, v20, buf, 8u);
      }
    }
  }

  else
  {
    v24 = 0;
    v8 = CSDBSqliteStatementInteger64Result(v6, &v24);
    if (!v24 || v24 == 100)
    {
      v9 = (v7 - v8) / v7;
      if (v9 > 0.85 && v8 < 512)
      {
        goto LABEL_34;
      }

      v10 = v8 - (v7 - v8);
      if (v9 >= 0.4)
      {
        v10 = (v8 * 0.2);
      }

      if (v10 < 1)
      {
        goto LABEL_34;
      }

      errmsg = 0;
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PRAGMA incremental_vacuum(%lld)", v10);
      CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
      v13 = sqlite3_exec(*(*(a1 + 8) + 8), CStringPtr, 0, 0, &errmsg);
      v14 = v13;
      if (v13 && v13 != 101)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_30;
        }

        v21 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_30;
        }

        *buf = 67109378;
        v26 = v14;
        v27 = 2080;
        v28 = errmsg;
        v16 = "Unable to incrementally vacuum database. SQLiteResult: %d Error Message: %s";
        v17 = v21;
        v18 = 18;
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_30;
        }

        v15 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          goto LABEL_30;
        }

        *buf = 0;
        v16 = "Incremental vacuum was successful.";
        v17 = v15;
        v18 = 2;
      }

      _os_log_impl(&dword_24789E000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
LABEL_30:
      if (errmsg)
      {
        free(errmsg);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_34;
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v26 = v24;
        v20 = "SQLite error %d while attempting to get freelist_count.  Bailing on the incremental vacuum.";
        goto LABEL_25;
      }
    }
  }

LABEL_34:
  v22 = *(a1 + 8);
  if (v22)
  {
    sub_2478A473C(v22);
    *(a1 + 8) = 0;
  }

LABEL_2:
  CFRelease(*a1);
  v2 = *(a1 + 176);
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
  v3 = *MEMORY[0x277D85DE8];
}

void CSDBRecordStoreDestroy(void *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, sub_2478A5C80, 0);
    CFRelease(*(a1 + 2));
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    CFDictionaryApplyFunction(v3, sub_2478A5C9C, 0);
    CFRelease(*(a1 + 3));
  }

  v4 = *(a1 + 6);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    CSDBSqliteDatabaseClose(v5);
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 5);
  if (v7)
  {
    CFRelease(v7);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v8 = *(a1 + 9);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 15);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 14);
  if (v10)
  {
    free(v10);
  }

  free(a1);
}

uint64_t CSDBSqliteConnectionPerformSQL(uint64_t a1, const __CFString *a2)
{
  v2 = sub_24789EE28(a1, a2, 0);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = v2[1];
  if (v4)
  {
    v5 = CSDBSqliteStepWithConnection(*v2, v4);
    CSDBSqliteStatementReset(v3);
    if (v5 == 101)
    {
      return 101;
    }
  }

  else
  {
    CSDBSqliteStatementReset(v2);
  }

  v7 = *(*v3 + 8);

  return sqlite3_errcode(v7);
}

uint64_t sub_2478A1044(uint64_t a1, const __CFString *a2, int *a3, BOOL *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  v10 = sub_24789EE28(a1, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = ?;", 0);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = 101;
  CSDBSqliteBindTextFromCFString(v10, a2);
  v8 = CSDBSqliteStatementIntegerResult(v11, &v12);
  if (a4)
  {
    *a4 = v12 == 100;
  }

  CSDBSqliteStatementReset(v11);
  if (a3)
  {
    *a3 = sqlite3_errcode(*(a1 + 8));
  }

  return v8;
}

uint64_t CSDBSqliteStatementIntegerResult(sqlite3_stmt **a1, int *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  if (CSDBSqliteStepWithConnection(*a1, v4) == 100)
  {
    v5 = sqlite3_column_int(a1[1], 0);
    if (!a2)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v5 = 0;
  if (a2)
  {
LABEL_8:
    *a2 = sqlite3_errcode(*(*a1 + 1));
  }

  return v5;
}

uint64_t CSDBSqliteConnectionIntegerForProperty(uint64_t a1, const __CFString *a2)
{
  v3 = 0;
  LODWORD(result) = sub_2478A1044(a1, a2, 0, &v3);
  if (v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void *CSDBGenerateInClauseForCount(int a1, const char *a2)
{
  v4 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"IN (");
  if (a1 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= a1 - 1)
      {
        objc_msgSend_appendFormat_(v4, v3, @"? "));
      }

      else
      {
        objc_msgSend_appendFormat_(v4, v3, @"?, ");
      }

      ++v5;
    }

    while (a1 != v5);
  }

  return v4;
}

const void *sub_2478A129C(uint64_t a1, void *a2, int a3)
{
  v6 = sub_2478A01A8(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = a3;
  Value = CFDictionaryGetValue(v6, a3);
  if (!Value)
  {
    return 0;
  }

  v9 = sub_2478A2220(Value);
  if (v9)
  {
    v10 = sub_2478A30BC(a1, a2);
    if (v10)
    {
      if (CFDictionaryContainsKey(v10, v7))
      {
        return 0;
      }
    }
  }

  return v9;
}

void *sub_2478A131C(uint64_t a1, const char *a2, _BYTE *a3, char a4)
{
  v31 = *MEMORY[0x277D85DE8];
  result = sub_2478AA048(a1, a2, a4);
  v26 = result;
  if (result)
  {
    v9 = result;
    v25 = 0;
    v10 = *(a1 + 80);
    if (sub_24789EE28(result, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = ?;", 1))
    {
      if (*(a1 + 84))
      {
        buf[0] = 0;
        v14 = sub_2478A1044(v9, @"_ClientVersion", 0, buf);
        if (buf[0])
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        sub_2478A1798(&v26, &v25);
        v16 = v26;
        if (v26 && v15 != *(a1 + 80))
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = *(a1 + 80);
              *buf = 67109376;
              v28 = v18;
              v29 = 1024;
              v30 = v15;
              _os_log_impl(&dword_24789E000, v17, OS_LOG_TYPE_INFO, "version conflict: expected %d, got %d", buf, 0xEu);
            }
          }

          CSDBSqliteConnectionBeginTransactionType(v16, 0);
          sub_2478A1798(&v26, &v25);
          if (v26)
          {
            v24 = 0;
            v15 = sub_2478A1044(v26, @"_ClientVersion", &v24, 0);
            if (IMOSLoggingEnabled())
            {
              v19 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 67109376;
                v28 = v15;
                v29 = 1024;
                v30 = v24;
                _os_log_impl(&dword_24789E000, v19, OS_LOG_TYPE_INFO, "read schema version: %d error: %d", buf, 0xEu);
              }
            }

            sub_2478A1798(&v26, &v25);
            if (v26)
            {
              if (v24 == 17)
              {
                sub_2478A473C(v26);
                v26 = 0;
                if (a3)
                {
                  *a3 = 1;
                }
              }

              else
              {
                if (*(a1 + 80) == v15)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v20 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_24789E000, v20, OS_LOG_TYPE_INFO, "version conflict resolved externally", buf, 2u);
                    }
                  }

                  sub_2478AA46C(a1, a2, &v26);
                }

                else
                {
                  if (*(a1 + 64) == 1)
                  {
                    v21 = sub_2478AA4E8(a1, a2, &v26);
                  }

                  else
                  {
                    v21 = sub_2478AA6C4(a1, a2, v15, &v26);
                  }

                  v25 = v21;
                }

                if (v26)
                {
                  CSDBSqliteConnectionCommit(v26);
                }
              }
            }
          }
        }

        v11 = 0;
LABEL_40:
        if (*(a1 + 64) == 1)
        {
          if (v25)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_50;
            }

            v22 = OSLogHandleForIMFoundationCategory();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              goto LABEL_50;
            }

            *buf = 0;
            v23 = "DataMigrator did not work -- we are being forced to delete the database and create it ourselves.";
LABEL_49:
            _os_log_impl(&dword_24789E000, v22, OS_LOG_TYPE_INFO, v23, buf, 2u);
LABEL_50:
            sub_2478AAA54(a1, a2, v10, v15, &v26);
LABEL_52:
            sub_2478AB338(a1, a2, v26);
          }
        }

        else
        {
          if (v25)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_50;
            }

            v22 = OSLogHandleForIMFoundationCategory();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              goto LABEL_50;
            }

            *buf = 0;
            v23 = "Migrating the database failed. We must delete this database and start fresh";
            goto LABEL_49;
          }

          if (v11)
          {
            goto LABEL_52;
          }
        }

        result = v26;
        goto LABEL_2;
      }

      v11 = 0;
    }

    else
    {
      v12 = *(a1 + 64);
      sub_2478A1798(&v26, &v25);
      if (v12)
      {
        if ((v25 & 1) != 0 || (v11 = v26, v26))
        {
          v13 = sub_2478AA4E8(a1, a2, &v26);
          v11 = 0;
          v25 = v13;
        }
      }

      else
      {
        v11 = v26 != 0;
      }
    }

    v15 = 0xFFFFFFFFLL;
    goto LABEL_40;
  }

LABEL_2:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2478A1798(void ****a1, _BYTE *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sqlite3_errcode((*a1)[1]);
  if (v4)
  {
    v8 = v4;
    CSDBCheckResultWithStatement(**a1, (*a1)[1], v4, "checkConnectionStatus", 0, v5, v6, v7, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    if ((v8 - 5) > 1)
    {
      if (v8 != 1)
      {
        if (v8 == 11)
        {
          sub_2478A473C(*a1);
          *a1 = 0;
          if (a2)
          {
            *a2 = 1;
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = sqlite3_extended_errcode((*a1)[1]);
            v11 = sqlite3_errmsg((*a1)[1]);
            LODWORD(v13) = 67109634;
            HIDWORD(v13) = v8;
            LOWORD(v14) = 1024;
            *(&v14 + 2) = v10;
            HIWORD(v14) = 2080;
            v15 = v11;
            _os_log_impl(&dword_24789E000, v9, OS_LOG_TYPE_INFO, "Encountered SQLite error %d (%d): %s", &v13, 0x18u);
          }
        }
      }
    }

    else
    {
      sub_2478A473C(*a1);
      *a1 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t CSDBSqliteConnectionBeginTransactionType(uint64_t a1, unsigned int a2)
{
  if (a2 > 2)
  {
    result = 0;
  }

  else
  {
    v4 = off_278EB3370[a2];
    result = sqlite3_get_autocommit(*(a1 + 8));
    if (result)
    {
      result = CSDBSqliteConnectionPerformSQL(a1, v4);
    }
  }

  if (result)
  {
    v6 = result == 101;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (a2 != 0xFFFF)
  {
    if (v7)
    {
      *(a1 + 40) = a2;
    }
  }

  return result;
}

uint64_t *CSDBSqliteDatabaseReleaseSqliteConnection(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 84) & 4) != 0)
    {
      return pthread_mutex_unlock((v1 + 88));
    }
  }

  return result;
}

uint64_t CSDBSqliteConnectionCheckNoConnectionError(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((a2 - 100) < 2 || a2 == 0)
  {
    v4 = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      v4 = 1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 136315650;
        v12 = a3;
        v13 = 2080;
        v14 = sqlite3_errmsg(v8);
        v15 = 1024;
        v16 = sqlite3_extended_errcode(v8);
        v4 = 1;
        _os_log_impl(&dword_24789E000, v10, OS_LOG_TYPE_INFO, "sqlite3 error in %s: %s (%d)\n", &v11, 0x1Cu);
      }
    }

    else
    {
      v4 = 1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t CSDBSqliteConnectionCommit(uint64_t a1)
{
  if (sqlite3_get_autocommit(*(a1 + 8)))
  {
    return 0;
  }

  result = CSDBSqliteConnectionPerformSQL(a1, @"COMMIT;");
  *(a1 + 40) = 0xFFFF;
  return result;
}

uint64_t CSDBSqliteConnectionSetIntegerForProperty(void *a1, const __CFString *a2, int a3)
{
  result = 1;
  if (a1 && a2 && *a1)
  {
    v7 = sub_24789EE28(a1, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);", 0);
    if (v7)
    {
      v8 = v7;
      CSDBSqliteBindTextFromCFString(v7, a2);
      CSDBSqliteBindInt(v8, a3);
      v9 = *(v8 + 1);
      if (v9)
      {
        CSDBSqliteStepWithConnection(*v8, v9);
      }

      result = CSDBSqliteStatementReset(v8);
      if (result == 17)
      {
        v10 = a1[2];
        if (v10 && (CFDictionaryRemoveValue(v10, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);"), (v11 = sub_24789EE28(a1, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);", 0)) != 0))
        {
          v12 = v11;
          CSDBSqliteBindTextFromCFString(v11, a2);
          CSDBSqliteBindInt(v12, a3);
          v13 = *(v12 + 1);
          if (v13)
          {
            CSDBSqliteStepWithConnection(*v12, v13);
          }

          return CSDBSqliteStatementReset(v12);
        }

        else
        {
          return 17;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_2478A1CC8(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (a1[1])
      {
        v3 = *(v2 + 24);
        if (v3)
        {
          *(v2 + 56) = 1;
          Copy = CFDictionaryCreateCopy(0, v3);
          if (Copy)
          {
            v5 = Copy;
            CFDictionaryApplyFunction(Copy, sub_2478A38DC, a1);
            CFRelease(v5);
          }

          v6 = *a1;
          *(v6 + 56) = 0;
          CFRelease(*(v6 + 24));
          v2 = *a1;
          *(*a1 + 24) = 0;
        }

        v7 = *(v2 + 48);
        if (v7)
        {
          CFRelease(v7);
          *(*a1 + 48) = 0;
        }
      }
    }
  }
}

void sub_2478A1D6C(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      if (a1[1])
      {
        v2 = *(*a1 + 40);
        if (v2)
        {
          Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v2);
          CFDictionaryApplyFunction(Copy, sub_2478A47A4, a1);
          CFRelease(Copy);
          if (*a1)
          {
            v4 = *(*a1 + 40);
            if (v4)
            {
              CFRelease(v4);
              *(*a1 + 40) = 0;
            }
          }
        }
      }
    }
  }
}

void CSDBSqliteBindInt(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v5 = *(a1 + 16);
      if (v5 >= 1)
      {
        sqlite3_bind_int(v3, v5, a2);
LABEL_12:
        ++*(a1 + 16);
        goto LABEL_13;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"YES";
      if (a1)
      {
        v8 = *(a1 + 16);
      }

      else
      {
        v7 = @"NO";
        v8 = 0;
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_24789E000, v6, OS_LOG_TYPE_INFO, "Invalid parameters passed into CSDBSqliteBindInt s==NULL ? %@  bindIndex = %d", &v10, 0x12u);
    }
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t CSDBRecordCopyProperty(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!CSDBRecordGetProperty(a1, a2))
  {
    return 0;
  }

  v4 = **(*(*(a1 + 24) + 80) + 40 * v2 + 16);
  if (!v4)
  {
    return 0;
  }

  return v4();
}

void CSDBRecordInvalidateRecord(uint64_t a1)
{
  if (!a1)
  {
    sub_2478AD48C();
  }

  v2 = *(*(a1 + 24) + 72);
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      CSDBRecordUnloadProperty(a1, i);
    }
  }

  *(a1 + 56) = 1;
  *(a1 + 58) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  *(a1 + 36) = -1;
}

uint64_t CSDBRecordUnloadProperty(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    CFDictionaryRemoveValue(v4, a2);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v2 = v2;
    Value = CFDictionaryGetValue(v5, v2);
    v7 = *MEMORY[0x277CBEEE8];
    if (Value)
    {
      v8 = Value == v7;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = *(*(*(*(a1 + 24) + 80) + 40 * v2 + 16) + 8);
      if (v9)
      {
        v9();
      }
    }

    CFDictionaryRemoveValue(*(a1 + 48), v2);
  }

  else
  {
    v7 = *MEMORY[0x277CBEEE8];
    v2 = v2;
  }

  v10 = a1 + 8 * v2;
  result = *(v10 + 72);
  if (result)
  {
    v12 = result == v7;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(*(*(*(a1 + 24) + 80) + 40 * v2 + 16) + 8);
    if (v13)
    {
      result = v13();
    }
  }

  *(v10 + 72) = 0;
  return result;
}

void CSDBRecordDestroy(void *context)
{
  v2 = *(*(context + 3) + 24);
  if (v2)
  {
    v2(context);
  }

  v3 = *(context + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(context + 3);
  if (*(v4 + 72) >= 1)
  {
    v5 = 0;
    v6 = *MEMORY[0x277CBEEE8];
    v7 = 16;
    do
    {
      v8 = *(*(*(v4 + 80) + v7) + 8);
      if (v8)
      {
        v9 = *(context + v5 + 9);
        if (v9 && v9 != v6)
        {
          v8();
          v4 = *(context + 3);
        }
      }

      ++v5;
      v7 += 40;
    }

    while (v5 < *(v4 + 72));
  }

  v11 = *(context + 6);
  if (v11)
  {
    CFDictionaryApplyFunction(v11, sub_2478A51E0, context);
    CFRelease(*(context + 6));
  }

  v12 = *(context + 8);
  if (v12)
  {

    CFRelease(v12);
  }
}

const void *sub_2478A2220(uint64_t a1)
{
  if (!a1)
  {
    sub_2478AD224();
  }

  CFRetain(a1);
  v2 = *(a1 + 16);
  v3 = a1;
  if (v2)
  {
    v3 = a1;
    if (*(a1 + 56) == 1)
    {
      v4 = sub_2478A01A8(v2, *(a1 + 24));
      v5 = v4;
      v6 = *(a1 + 32);
      if (v6 != -1 && v4)
      {
        CFDictionarySetValue(v4, v6, a1);
        v6 = *(a1 + 32);
      }

      v7 = sub_2478A2D08(*(a1 + 16), *(a1 + 24), v6);
      if (v7)
      {
        v3 = v7;
        if (v7 != a1)
        {
          sub_2478AD1F8();
        }

        *(a1 + 56) = 0;
      }

      else
      {
        if (v5)
        {
          CFDictionaryRemoveValue(v5, *(a1 + 32));
        }

        v3 = 0;
        *(a1 + 57) = 1;
      }
    }
  }

  if (*(a1 + 36) == -1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      *(a1 + 36) = CSDBRecordStoreGetSequenceNumber(v8);
    }
  }

  CFRelease(a1);
  return v3;
}

const __CFDictionary *CSDBRecordGetProperty(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_2478AD250();
  }

  v3 = a2;
  v4 = a2 + 9;
  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    v6 = sub_2478A2220(a1);
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v6;
    v5 = v6[v4];
    if (v5)
    {
      goto LABEL_9;
    }

    v5 = *(*(*(v6[3] + 10) + 40 * v3 + 16) + 24);
    if (!v5)
    {
      goto LABEL_9;
    }

    v8 = v6[5];
    if (v8 && CFDictionaryContainsKey(v8, v3))
    {
LABEL_8:
      v5 = 0;
    }

    else
    {
      v10 = v7[2];
      if (v10)
      {
        v11 = sub_2478A2CA0(v10);
      }

      else
      {
        v11 = 0;
      }

      (*(*(*(v7[3] + 10) + 40 * v3 + 16) + 24))(v7, a2, v11);
      if (v11)
      {
        CSDBSqliteDatabaseReleaseSqliteConnection(v11);
      }

      v5 = v7[v4];
    }
  }

LABEL_9:
  if (*MEMORY[0x277CBEEE8] == v5)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t CSDBRecordStoreGetSequenceNumber(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_2478A2CA0(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CSDBSqliteConnectionIntegerForProperty(v1, @"__CSDBRecordSequenceNumber");
  CSDBSqliteDatabaseReleaseSqliteConnection(v2);
  return v3;
}

uint64_t sub_2478A2454(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sqlite3_column_type(*(a1 + 8), 0);
  if (v4 == 5)
  {
    RecordIDForRowid = -1;
    goto LABEL_4;
  }

  v15 = sqlite3_column_int64(*(a1 + 8), 0);
  RecordIDForRowid = CSDBRecordStoreGetRecordIDForRowid(*a2, v15);
  v16 = *(*a2 + 40);
  if (v16)
  {
    Value = CFDictionaryGetValue(v16, *(a2 + 8));
    if (Value)
    {
      if (CFDictionaryContainsKey(Value, RecordIDForRowid))
      {
        return 0;
      }
    }
  }

LABEL_4:
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = v6(a1, *(a2 + 64));
    v8 = v7 & 1;
    if ((v7 & 2) == 0)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v4 != 5)
  {
    v10 = CFDictionaryGetValue(*(a2 + 16), RecordIDForRowid);
    if (v10)
    {
      v9 = v10;
      if (v10[56] == 1)
      {
        CSDBSqliteStatementApplyValuesFromRecordWithNullValue(a1, *(a2 + 24), *(a2 + 40), v10, *MEMORY[0x277CBEEE8]);
        *(v9 + 56) = 0;
        *(v9 + 36) = CSDBRecordStoreGetSequenceNumber(*(v9 + 16));
      }
    }

    else
    {
      v9 = sub_2478A29CC(*(a2 + 8), RecordIDForRowid);
      CSDBSqliteStatementApplyValuesFromRecordWithNullValue(a1, *(a2 + 24), *(a2 + 40), v9, *MEMORY[0x277CBEEE8]);
      if (!v9)
      {
        CFDictionarySetValue(*(a2 + 16), RecordIDForRowid, 0);
        goto LABEL_19;
      }

      *(v9 + 16) = *a2;
      CFDictionarySetValue(*(a2 + 16), RecordIDForRowid, v9);
      CFRelease(v9);
    }

    if (*(v9 + 56))
    {
      SequenceNumber = CSDBRecordStoreGetSequenceNumber(*(v9 + 16));
    }

    else
    {
      SequenceNumber = *(a2 + 44);
      if (SequenceNumber < 0)
      {
        SequenceNumber = CSDBRecordStoreGetSequenceNumber(*a2);
        *(a2 + 44) = SequenceNumber;
      }
    }

    *(v9 + 36) = SequenceNumber;
    *(v9 + 58) = 1;
    goto LABEL_19;
  }

  v9 = *MEMORY[0x277CBEEE8];
LABEL_19:
  v12 = *(a2 + 56);
  if (v12)
  {
    if (v12(a1, v9, *(a2 + 64)))
    {
      v8 = 1;
    }

    else
    {
      v8 = v8;
    }
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    CFArrayAppendValue(v13, v9);
  }

  return v8;
}

void sub_2478A2668(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, sqlite3_int64 a5, int a6)
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6 && a3 != 0)
    {
      alloc = *MEMORY[0x277CBECE8];
      v10 = a3;
      v11 = a2 + 16;
      v12 = 1;
      while (1)
      {
        v13 = *v11;
        if (!*v11)
        {
          goto LABEL_45;
        }

        v14 = *(v11 - 16);
        v15 = *(v11 + 8);
        v16 = *(v11 - 8);
        v17 = 1;
        if (v16 <= 3)
        {
          if (v16 > 1)
          {
            if (v16 != 2)
            {
              v21 = sqlite3_column_text(v6, *(v11 - 16));
              if (!v21 && !a6)
              {
                goto LABEL_46;
              }

              if (v21)
              {
                v20 = v21;
              }

              else
              {
                v20 = a5;
              }

              goto LABEL_27;
            }

            v29 = sqlite3_column_text(v6, *(v11 - 16));
            if (!v29 && !a6)
            {
              goto LABEL_46;
            }

            if (v29)
            {
              v30 = CFStringCreateWithCString(alloc, v29, 0x8000100u);
LABEL_55:
              v37 = v30;
              v38 = a4;
              v39 = v15;
              v40 = v37;
LABEL_67:
              v17 = v13(v38, v39, v40);
              if (v37)
              {
                CFRelease(v37);
              }

              goto LABEL_46;
            }

LABEL_56:
            v22 = a4;
            v23 = v15;
            v20 = a5;
LABEL_28:
            v24 = v13(v22, v23, v20);
          }

          else
          {
            if (v16)
            {
              if (v16 != 1)
              {
                goto LABEL_46;
              }

              v20 = sqlite3_column_int64(v6, *(v11 - 16));
LABEL_27:
              v22 = a4;
              v23 = v15;
              goto LABEL_28;
            }

            v28 = sqlite3_column_int(v6, *(v11 - 16));
            v24 = v13(a4, v15, v28);
          }

LABEL_42:
          v17 = v24;
          goto LABEL_46;
        }

        if (v16 <= 5)
        {
          if (v16 == 4)
          {
            v32 = sqlite3_column_bytes(v6, *(v11 - 16));
            v33 = sqlite3_column_blob(v6, v14);
            if (v33 || a6)
            {
              if (v33)
              {
                v30 = CFDataCreate(alloc, v33, v32);
                goto LABEL_55;
              }

              goto LABEL_56;
            }
          }

          else
          {
            v25 = sqlite3_column_bytes(v6, *(v11 - 16));
            v26 = sqlite3_column_blob(v6, v14);
            if (v26 || a6)
            {
              if (v26)
              {
                v27 = v26;
              }

              else
              {
                v27 = a5;
              }

              v24 = (v13)(a4, v15, v27, v25);
              goto LABEL_42;
            }
          }

LABEL_45:
          v17 = 1;
          goto LABEL_46;
        }

        switch(v16)
        {
          case 6:
            v31 = sqlite3_column_double(v6, *(v11 - 16));
            v24 = (v13)(a4, v15, v31);
            goto LABEL_42;
          case 7:
            v34 = sqlite3_column_type(v6, *(v11 - 16));
            if (v34 == 5)
            {
              goto LABEL_52;
            }

            if (v34 == 2)
            {
              valuePtr = sqlite3_column_double(v6, v14);
              v35 = alloc;
              v36 = kCFNumberDoubleType;
            }

            else
            {
              valuePtr = COERCE_DOUBLE(sqlite3_column_int64(v6, v14));
              v35 = alloc;
              v36 = kCFNumberSInt64Type;
            }

            v41 = CFNumberCreate(v35, v36, &valuePtr);
            break;
          case 8:
            v18 = sqlite3_column_type(v6, *(v11 - 16));
            if (v18 == 5)
            {
LABEL_52:
              v37 = 0;
              goto LABEL_62;
            }

            if (v18 == 2)
            {
              v19 = sqlite3_column_double(v6, v14);
            }

            else
            {
              v19 = sqlite3_column_int64(v6, v14);
            }

            v41 = CFDateCreate(0, v19);
            break;
          default:
            goto LABEL_46;
        }

        v37 = v41;
        if (v41)
        {
          goto LABEL_63;
        }

LABEL_62:
        if (a6)
        {
LABEL_63:
          if (v37)
          {
            v40 = v37;
          }

          else
          {
            v40 = a5;
          }

          v38 = a4;
          v39 = v15;
          goto LABEL_67;
        }

LABEL_46:
        if (v12 < v10)
        {
          v11 += 32;
          ++v12;
          if (v17)
          {
            continue;
          }
        }

        return;
      }
    }
  }
}

const __CFString *sub_2478A29B8(const __CFString *theString)
{
  if (theString)
  {
    return CFStringCreateCopy(0, theString);
  }

  return theString;
}

uint64_t sub_2478A29CC(uint64_t a1, int a2)
{
  v4 = 8 * *(a1 + 72) + 72;
  pthread_once(&stru_280BCA950, sub_2478A52BC);
  v5 = v4 - 16;
  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), v5);
    *(v7 + 24) = a1;
    *(v7 + 32) = a2;
    *(v7 + 36) = -1;
    v8 = *(a1 + 8);
    if (v8)
    {
      v8(v7);
    }
  }

  return v7;
}

uint64_t sub_2478A2A74(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a1 + 8 * a2;
  v7 = *(v6 + 72);
  v8 = *MEMORY[0x277CBEEE8];
  if (v7)
  {
    v9 = v7 == v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(*(*(*(a1 + 24) + 80) + 40 * a2 + 16) + 8);
    if (v10)
    {
      v10();
    }
  }

  if (a3)
  {
    if (v8 != a3)
    {
      v11 = **(*(*(a1 + 24) + 80) + 40 * a2 + 16);
      if (v11)
      {
        a3 = v11(a3);
      }
    }
  }

  *(v6 + 72) = a3;
  return 1;
}

uint64_t CSDBRecordStoreGetRecordIDForRowid(uint64_t a1, uint64_t a2)
{
  value = a2;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  if ((a2 - 0x80000000) <= 0xFFFFFFFF7FFFFFFELL)
  {
    Mutable = *(a1 + 120);
    if (!Mutable)
    {
      v5 = malloc_type_malloc(0x400uLL, 0x100004000313F17uLL);
      *(a1 + 112) = v5;
      if (!v5)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = CFGetAllocator(a1);
      Mutable = CFSetCreateMutable(v6, 128, &stru_28597F798);
      *(a1 + 120) = Mutable;
      *(a1 + 108) = 128;
    }

    v7 = *(a1 + 112);
    v8 = CFSetGetValue(Mutable, &value);
    if (v8)
    {
      return ((v8 - v7) >> 3) | 0x80000000;
    }

    v9 = *(a1 + 104);
    if (*(a1 + 108) != v9)
    {
LABEL_16:
      v14 = &v7[8 * v9];
      *v14 = value;
      *(a1 + 104) = v9 + 1;
      v2 = v9 | 0x80000000;
      CFSetSetValue(*(a1 + 120), v14);
      return v2;
    }

    v10 = v9 + (v9 >> 1);
    v11 = malloc_type_realloc(v7, 8 * v10, 0xD76E7B5BuLL);
    if (v11)
    {
      v7 = v11;
      if (v11 != *(a1 + 112))
      {
        CFSetRemoveAllValues(*(a1 + 120));
        if (v9 >= 1)
        {
          v12 = v9;
          v13 = v7;
          do
          {
            CFSetSetValue(*(a1 + 120), v13);
            v13 += 8;
            --v12;
          }

          while (v12);
        }

        *(a1 + 112) = v7;
      }

      *(a1 + 108) = v10;
      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t sub_2478A2CA0(uint64_t a1)
{
  if (!a1)
  {
    sub_2478AD27C();
  }

  Database = CSDBRecordStoreGetDatabase(a1);
  if (!Database)
  {
    return 0;
  }

  v3 = CSDBSqliteDatabaseConnectionForReading(Database);
  v4 = v3;
  if (v3 && *(a1 + 96) == -1)
  {
    *(a1 + 96) = CSDBSqliteConnectionIntegerForProperty(v3, @"__CSDBRecordSequenceNumber");
  }

  return v4;
}

const void *sub_2478A2D08(uint64_t a1, void *a2, int a3)
{
  if (CSDBRecordStoreGetDatabase(a1))
  {
    v6 = sub_2478A2EC0(a2, 0, 0, 0, 0);
    if (v6)
    {
      v7 = v6;
      CFStringAppend(v6, @" WHERE ROWID = ?;");
      v8 = sub_2478A2CA0(a1);
      if (!v8)
      {
        ValueAtIndex = 0;
LABEL_18:
        CFRelease(v7);
        return ValueAtIndex;
      }

      v9 = v8;
      v10 = CSDBSqliteConnectionStatementForSQL(v8, v7);
      if (!v10 || (v11 = v10, !*(v10 + 1)))
      {
        ValueAtIndex = 0;
        goto LABEL_17;
      }

      if (a1)
      {
        if (a3 >= -1)
        {
          v12 = a3;
LABEL_14:
          CSDBSqliteBindInt64(v10, v12);
          v14 = CSDBRecordStoreProcessRecordStatementWithPropertyIndices(a1, a2, v11, 0, 0, 0, 0);
          if (CFArrayGetCount(v14) < 1)
          {
            ValueAtIndex = 0;
            if (!v14)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
          if (v14)
          {
LABEL_16:
            CFRelease(v14);
          }

LABEL_17:
          CSDBSqliteDatabaseReleaseSqliteConnection(v9);
          goto LABEL_18;
        }

        if ((a3 & 0x7FFFFFFF) < *(a1 + 104))
        {
          v12 = *(*(a1 + 112) + 8 * (a3 & 0x7FFFFFFF));
          goto LABEL_14;
        }
      }

      v12 = -1;
      goto LABEL_14;
    }
  }

  return 0;
}

const void *CSDBRecordStoreCopyInstanceOfClassWithUID(uint64_t a1, void *a2, int a3)
{
  v6 = sub_2478A129C(a1, a2, a3);
  if (v6)
  {
    v7 = v6;
LABEL_4:
    CFRetain(v7);
    return v7;
  }

  v7 = sub_2478A2D08(a1, a2, a3);
  if (v7)
  {
    goto LABEL_4;
  }

  return v7;
}

CFMutableStringRef sub_2478A2EC0(uint64_t a1, const __CFString *a2, CFStringRef theString, CFArrayRef theArray, CFMutableDictionaryRef *a5)
{
  v7 = theString;
  if (theString && !CFStringGetLength(theString))
  {
    v7 = 0;
  }

  if (a5 | v7)
  {
    v10 = 1;
  }

  else if (theArray)
  {
    v10 = CFArrayGetCount(theArray) != 0;
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 152) == 1)
  {
    if (qword_280BCA9C8)
    {
      Value = CFDictionaryGetValue(qword_280BCA9C8, *a1);
      if (Value)
      {
        v12 = v10;
      }

      else
      {
        v12 = 1;
      }

      if (v12 != 1)
      {
        v13 = Value;
        v14 = *MEMORY[0x277CBECE8];

        return CFStringCreateMutableCopy(v14, 0, v13);
      }
    }

    else
    {
      qword_280BCA9C8 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    }
  }

  v16 = sub_2478A316C(a1, 0, v7, a5, theArray);
  CFStringAppend(v16, @" FROM ");
  if (!a2 || !CFStringGetLength(a2))
  {
    CFStringAppendCString(v16, *a1, 0x8000100u);
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v17 = CFStringCreateWithFormat(0, 0, @"(%@)", a2);
  CFStringAppend(v16, v17);
  CFRelease(v17);
  if (v7)
  {
LABEL_24:
    CFStringAppendFormat(v16, 0, @" AS %@", v7);
  }

LABEL_25:
  if (!v10 && *(a1 + 152) == 1)
  {
    Copy = CFStringCreateCopy(0, v16);
    CFDictionaryAddValue(qword_280BCA9C8, *a1, Copy);
  }

  return v16;
}

const void *sub_2478A30BC(uint64_t a1, void *key)
{
  if (!a1)
  {
    sub_2478AD7A4();
  }

  Mutable = *(a1 + 40);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    *(a1 + 40) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    CFDictionarySetValue(*(a1 + 40), key, Value);
    CFRelease(Value);
  }

  return Value;
}

__CFString *sub_2478A316C(uint64_t a1, int a2, CFStringRef theString, CFMutableDictionaryRef *a4, const __CFArray *a5)
{
  v7 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString) && CFStringGetLength(v7))
    {
      v7 = CFStringCreateWithFormat(0, 0, @"%@.", v7);
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = *MEMORY[0x277CBECE8];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, @"SELECT ");
  v12 = MutableCopy;
  if (a2)
  {
    CFStringAppend(MutableCopy, @"DISTINCT ");
  }

  if (v7)
  {
    CFStringAppend(v12, v7);
  }

  CFStringAppend(v12, @"ROWID");
  if (a4)
  {
    *a4 = CFDictionaryCreateMutable(v10, 0, 0, 0);
  }

  if (*(a1 + 72) >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = *(*(a1 + 80) + v13 + 24);
      if ((v16 & 4) == 0)
      {
        if (v16)
        {
          if (!a4)
          {
            CFStringAppend(v12, @", NULL");
          }
        }

        else
        {
          CFStringAppend(v12, @", ");
          if (v7)
          {
            CFStringAppend(v12, v7);
          }

          CFStringAppendCString(v12, *(*(a1 + 80) + v13), 0x8000100u);
          if (a4)
          {
            CFDictionarySetValue(*a4, v14, v15++);
          }
        }
      }

      ++v14;
      v13 += 40;
    }

    while (v14 < *(a1 + 72));
  }

  if (a5)
  {
    if (CFArrayGetCount(a5))
    {
      Count = CFArrayGetCount(a5);
      if (Count >= 1)
      {
        v18 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a5, v18);
          CFStringAppend(v12, @", ");
          CFStringAppend(v12, ValueAtIndex);
          ++v18;
        }

        while (Count != v18);
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v12;
}

void CSDBRecordSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2478A2220(a1);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = v6[3];
  if ((*(v8 + 56) & 4) != 0 && *(v8 + 136) >= 3)
  {
    v9 = *(v8 + 144);
    if (v9)
    {
      v9(v6, a2, a3);
    }
  }

  if (*(v7 + 58))
  {
    v10 = *(v7 + 64);
    if (!v10 || (v11 = a2, !CFSetContainsValue(v10, a2)))
    {
      v12 = *(v7 + 48);
      if (!v12 || (v11 = a2, !CFDictionaryGetValue(v12, a2)))
      {
        Mutable = *(v7 + 64);
        if (!Mutable)
        {
          Mutable = CFSetCreateMutable(0, *(*(v7 + 24) + 72), 0);
          *(v7 + 64) = Mutable;
        }

        v11 = a2;
        CFSetAddValue(Mutable, a2);
        Property = CSDBRecordGetProperty(a1, a2);
        if (Property)
        {
          v15 = Property;
          v16 = **(*(*(v7 + 24) + 80) + 40 * a2 + 16);
          if (v16)
          {
            v15 = v16(Property);
          }
        }

        else
        {
          v15 = *MEMORY[0x277CBEEE8];
        }

        v24 = *(v7 + 48);
        if (!v24)
        {
          v24 = CFDictionaryCreateMutable(0, 0, 0, 0);
          *(v7 + 48) = v24;
        }

        CFDictionaryAddValue(v24, a2, v15);
        CFSetRemoveValue(*(v7 + 64), a2);
        if (!a3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  if (!a3)
  {
LABEL_19:
    v17 = *MEMORY[0x277CBEEE8];
    if (a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = *MEMORY[0x277CBEEE8];
    }

    sub_2478A2A74(v7, a2, v18);
    goto LABEL_23;
  }

LABEL_18:
  if (*(v7 + 8 * v11 + 72) != a3)
  {
    goto LABEL_19;
  }

LABEL_23:
  CSDBRecordMarkPropertyChanged(v7, a2);
  v19 = *(v7 + 16);
  if (!v19)
  {
    return;
  }

  v20 = *(v19 + 24);
  if (v20)
  {
    if (CFDictionaryContainsKey(v20, v7))
    {
      return;
    }

    v19 = *(v7 + 16);
  }

  v21 = *(v19 + 40);
  if (!v21 || (Value = CFDictionaryGetValue(v21, *(v7 + 24))) == 0 || !CFDictionaryContainsKey(Value, *(v7 + 32)))
  {
    v23 = 2;
    if (*(*(v7 + 16) + 57))
    {
      if (*(*(*(v7 + 24) + 80) + 40 * v11 + 25))
      {
        v23 = 2;
      }

      else
      {
        v23 = 3;
      }
    }

    if ((*(*(v7 + 16) + 57) & 2) != 0)
    {
      v23 = ((*(*(*(v7 + 24) + 80) + 40 * v11 + 24) >> 6) & 4 | v23) ^ 4;
    }

    sub_2478A4D30(v7, v23);
  }
}

void CSDBRecordMarkPropertyChanged(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_2478AD1CC();
  }

  Mutable = *(a1 + 40);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    *(a1 + 40) = Mutable;
  }

  CFDictionarySetValue(Mutable, a2, 1);
  v5 = *(*(a1 + 24) + 112);
  if (v5)
  {

    v5(a1, a2);
  }
}

void sub_2478A36A4(uint64_t a1, void **key, int a3)
{
  if (!a1 || (v3 = key) == 0)
  {
    sub_2478AD6F4();
  }

  key[2] = a1;
  v5 = *(a1 + 57);
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = (v6 | (2 * v5) & 4u);
  v8 = *(key + 8);
  if (a3)
  {
    if (v8 == -1 || (v17 = sub_2478A129C(a1, key[3], *(key + 8))) == 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = v17;
      v18 = CSDBRecordCopyChangedProperties(v3);
      v19 = CSDBRecordCopyChangedProperties(v9);
      if (v18)
      {
        Count = CFArrayGetCount(v18);
        if (Count >= 1)
        {
          v21 = 0;
          v22 = Count & 0x7FFFFFFF;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, v21);
            if (!v19 || (v26.length = CFArrayGetCount(v19), v26.location = 0, !CFArrayContainsValue(v19, v26, ValueAtIndex)))
            {
              Property = CSDBRecordGetProperty(v3, ValueAtIndex);
              CSDBRecordSetProperty(v9, ValueAtIndex, Property);
            }

            ++v21;
          }

          while (v22 != v21);
        }

        CFRelease(v18);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }

    v10 = v9[5];
    if (v10 && CFDictionaryGetCount(v10) >= 1)
    {
      sub_2478A4D30(v9, v7);
    }

    v3 = v9;
  }

  else
  {
    v11 = *(a1 + 40);
    if (!v11 || (Value = CFDictionaryGetValue(v11, key[3])) == 0 || (v13 = Value, !CFDictionaryContainsKey(Value, *(v3 + 8))))
    {
      v14 = *(a1 + 24);
      if (v14)
      {
        if (CFDictionaryContainsKey(v14, v3))
        {
          goto LABEL_22;
        }

        Mutable = *(a1 + 24);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
        *(a1 + 24) = Mutable;
      }

      CFDictionarySetValue(Mutable, v3, v7);
      goto LABEL_22;
    }

    CFDictionaryRemoveValue(v13, *(v3 + 8));
  }

LABEL_22:
  if (v8 != -1)
  {
    v16 = sub_2478A01A8(a1, v3[3]);
    if (v16)
    {

      CFDictionaryAddValue(v16, v8, v3);
    }
  }
}

void sub_2478A38DC(unsigned int *value, char a2, uint64_t *a3)
{
  v6 = *(*(value + 2) + 48);
  if (v6 && CFSetContainsValue(v6, value))
  {
    return;
  }

  v7 = *(value + 3);
  v8 = *(v7 + 48);
  if (v8)
  {
    v8(value, a3[1]);
  }

  v33 = -1431655766;
  v9 = value[8];
  v10 = sub_2478A3D48(value, &v33, 1);
  v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *v7, 0x8000100u);
  v12 = sub_2478A01A8(*a3, v7);
  v13 = value[8];
  if (v13 == -1)
  {
    goto LABEL_10;
  }

  v14 = *a3;
  if (!*a3)
  {
    goto LABEL_10;
  }

  if (v13 >= -1)
  {
    goto LABEL_11;
  }

  if ((v13 & 0x7FFFFFFF) >= *(v14 + 104))
  {
LABEL_10:
    v13 = -1;
  }

  else
  {
    v13 = *(*(v14 + 112) + 8 * (v13 & 0x7FFFFFFF));
  }

LABEL_11:
  CSDBSqliteConnectionAddRecordWithRowid(a3[1], v11, v13, v10, v33);
  RecordIDForRowid = value[8];
  if (RecordIDForRowid != -1)
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v29 = *a3;
  Insert = CSDBSqliteConnectionRowidOfLastInsert(a3[1]);
  RecordIDForRowid = CSDBRecordStoreGetRecordIDForRowid(v29, Insert);
  value[8] = RecordIDForRowid;
  if (v12)
  {
LABEL_13:
    CFDictionarySetValue(v12, RecordIDForRowid, value);
  }

LABEL_14:
  CFRelease(v11);
  free(v10);
  v16 = *(value + 5);
  if (v16)
  {
    *(value + 5) = 0;
    v17 = a3[1];
    context = value;
    v32 = v17;
    if (v9 != -1)
    {
      CFDictionaryApplyFunction(v16, sub_2478A51B0, &context);
      goto LABEL_24;
    }
  }

  else
  {
    v18 = a3[1];
    context = value;
    v32 = v18;
    if (v9 != -1)
    {
      goto LABEL_24;
    }
  }

  v19 = *(*(value + 3) + 72);
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 40 * v19;
    do
    {
      v23 = *(*(value + 3) + 80) + v20;
      if ((*(v23 + 25) & 2) == 0)
      {
        v24 = *(*(v23 + 16) + 32);
        if (v24)
        {
          v24(value, v21, v32);
        }
      }

      v21 = (v21 + 1);
      v20 += 40;
    }

    while (v22 != v20);
  }

LABEL_24:
  if (*a3)
  {
    v25 = *(*a3 + 57);
    if ((v25 & 1) == 0 || (a2 & 1) == 0 || (*(*(value + 3) + 56) & 2) == 0)
    {
LABEL_30:
      if ((v25 & 2) != 0 && (a2 & 4) != 0 && (*(*(value + 3) + 56) & 8) != 0)
      {
        sub_2478A6BD8(a3[1], value, 0);
      }

      goto LABEL_34;
    }

    sub_2478A6864(a3[1], value, 0, 0);
    if (*a3)
    {
      v25 = *(*a3 + 57);
      goto LABEL_30;
    }
  }

LABEL_34:
  v26 = *(v7 + 104);
  if (v26)
  {
    v26(value, a3[1]);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v27 = *(value + 5);
  if (v27)
  {
    CFRelease(v27);
    *(value + 5) = 0;
  }

  v28 = *(value + 6);
  if (v28)
  {
    CFDictionaryApplyFunction(v28, sub_2478A51E0, value);
    CFRelease(*(value + 6));
    *(value + 6) = 0;
  }

  *(value + 58) = 1;
}

void CSDBSqliteBindBlobFromCFData(uint64_t a1, CFDataRef theData)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 && theData && *(a1 + 8) && *(a1 + 16) >= 1)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    sqlite3_bind_blob(*(a1 + 8), *(a1 + 16), BytePtr, Length, 0);
LABEL_18:
    ++*(a1 + 16);
    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a1)
      {
        v8 = @"NO";
      }

      else
      {
        v8 = @"YES";
      }

      if (a1)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = 0;
      }

      if (!theData)
      {
        v7 = @"YES";
      }

      v11 = 138412802;
      v12 = v8;
      v13 = 1024;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_24789E000, v6, OS_LOG_TYPE_INFO, "Invalid parameters passed into CSDBSqliteBindBlobFromCFData s==NULL ? %@  bindIndex = %d  data == NULL ? %@", &v11, 0x1Cu);
    }
  }

  if (a1)
  {
    goto LABEL_18;
  }

LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
}

char *sub_2478A3D48(uint64_t a1, int *a2, int a3)
{
  v4 = *(a1 + 24);
  if (*(v4 + 72) < 1)
  {
    v8 = 0;
    goto LABEL_37;
  }

  v7 = 0;
  v8 = 0;
  v9 = 24;
  do
  {
    v10 = *(*(v4 + 80) + v9);
    if ((v10 & 4) != 0)
    {
      goto LABEL_11;
    }

    if (v10)
    {
      if (a3 && (v10 & 0x240) != 0)
      {
LABEL_10:
        ++v8;
      }
    }

    else if (a3 || sub_2478A4FCC(a1, v7))
    {
      goto LABEL_10;
    }

LABEL_11:
    ++v7;
    v4 = *(a1 + 24);
    v9 += 40;
  }

  while (v7 < *(v4 + 72));
  if (v8 < 1)
  {
LABEL_37:
    v11 = 0;
    goto LABEL_38;
  }

  v11 = malloc_type_calloc(1uLL, 24 * v8, 0x10720403E5D127AuLL);
  v12 = *(a1 + 24);
  if (*(v12 + 72) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(v12 + 80) + 40 * v13;
      v16 = *(v15 + 24);
      if ((v16 & 4) == 0)
      {
        if (v16)
        {
          if (a3 && (v16 & 0x240) != 0)
          {
LABEL_22:
            v17 = 0;
            v18 = &v11[24 * v14];
            v19 = *(v15 + 8);
            *v18 = *v15;
            v20 = qword_2478AE7C0;
            do
            {
              v21 = *v20;
              v20 += 2;
              if (v21 == v19)
              {
                break;
              }

              ++v17;
            }

            while (v17 != 4);
            *(v18 + 1) = qword_2478AE7C0[2 * v17 + 1];
            Property = CSDBRecordGetProperty(a1, v13);
            if (!Property)
            {
              if ((*(v15 + 24) & 0x40) != 0)
              {
                v23 = *(v15 + 8);
                if (v23 == 2)
                {
                  pthread_once(&stru_280BCA950, sub_2478A52BC);
                  Property = qword_280BCA9D8;
                }

                else if (v23 == 1)
                {
                  Property = &stru_28597FC80;
                }

                else
                {
                  Property = 0;
                }
              }

              else
              {
                Property = 0;
              }
            }

            *(v18 + 2) = Property;
            ++v14;
          }
        }

        else if (a3 || sub_2478A4FCC(a1, v13))
        {
          goto LABEL_22;
        }
      }

      ++v13;
      v12 = *(a1 + 24);
    }

    while (v13 < *(v12 + 72));
  }

LABEL_38:
  *a2 = v8;
  return v11;
}

uint64_t CSDBSqliteConnectionAddRecordWithRowid(uint64_t a1, const __CFString *a2, sqlite3_int64 a3, const char **a4, unsigned int a5)
{
  if (!a5)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, @"INSERT INTO ");
    CFStringAppend(MutableCopy, a2);
    if (a3 == -1)
    {
      CFStringAppend(MutableCopy, @" (ROWID) VALUES(NULL);");
      v9 = sub_24789EE28(a1, MutableCopy, 0);
      if (v9)
      {
LABEL_4:
        v10 = v9[1];
        if (v10)
        {
          v11 = CSDBSqliteStepWithConnection(*v9, v10);
        }

        else
        {
          v11 = 1;
        }

        CSDBSqliteStatementReset(v9);
LABEL_50:
        CFRelease(MutableCopy);
        return v11;
      }
    }

    else
    {
      CFStringAppend(MutableCopy, @" (ROWID) VALUES(?);");
      v9 = sub_24789EE28(a1, MutableCopy, 0);
      CSDBSqliteBindInt64(v9, a3);
      if (v9)
      {
        goto LABEL_4;
      }
    }

    if (!MutableCopy)
    {
      return 1;
    }

    v19 = MutableCopy;
    goto LABEL_39;
  }

  v13 = a4;
  v15 = a3 == -1 && a5 < 3;
  if (v15)
  {
    if (a5 == 1)
    {
      MutableCopy = @"?";
    }

    else
    {
      MutableCopy = @"?, ?";
    }

    v16 = *a4;
    v17 = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  }

  else
  {
    v17 = *MEMORY[0x277CBECE8];
    MutableCopy = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    CFStringAppend(MutableCopy, @"?");
    v16 = *v13;
    Mutable = CFStringCreateMutable(v17, 0);
    if (a3 != -1)
    {
      CFStringAppend(MutableCopy, @", ?");
      CFStringAppend(Mutable, @"ROWID, ");
    }
  }

  v20 = CFStringCreateWithCString(v17, v16, 0x8000100u);
  CFStringAppend(Mutable, v20);
  CFRelease(v20);
  v32 = a5;
  if (a5 != 1)
  {
    v21 = v13 + 3;
    v22 = a5 - 1;
    do
    {
      v23 = CFStringCreateWithCString(v17, *v21, 0x8000100u);
      CFStringAppend(Mutable, @", ");
      CFStringAppend(Mutable, v23);
      CFRelease(v23);
      if (!v15)
      {
        CFStringAppend(MutableCopy, @", ?");
      }

      v21 += 3;
      --v22;
    }

    while (v22);
  }

  v24 = CFStringCreateMutableCopy(0, 0, @"INSERT INTO ");
  CFStringAppend(v24, a2);
  CFStringAppend(v24, @" (");
  CFStringAppend(v24, Mutable);
  CFStringAppend(v24, @" VALUES ("));
  CFStringAppend(v24, MutableCopy);
  CFStringAppend(v24, @";"));
  v25 = sub_24789EE28(a1, v24, 0);
  if (!v25)
  {
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (!v24)
    {
      return 1;
    }

    v19 = v24;
LABEL_39:
    CFRelease(v19);
    return 1;
  }

  v26 = v25;
  if (a3 == -1)
  {
    if (*(v25 + 1))
    {
      v28 = v32;
      do
      {
        CSDBSqliteBindColumnValue(v26, v13);
        v13 += 3;
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    CSDBSqliteBindInt64(v25, a3);
    if (v26[1])
    {
      v27 = v32;
      do
      {
        CSDBSqliteBindColumnValue(v26, v13);
        v13 += 3;
        --v27;
      }

      while (v27);
    }
  }

  v29 = v26[1];
  if (v29)
  {
    v11 = CSDBSqliteStepWithConnection(*v26, v29);
  }

  else
  {
    v11 = 1;
  }

  CSDBSqliteStatementReset(v26);
  CFRelease(v24);
  CFRelease(Mutable);
  if (!v15)
  {
    goto LABEL_50;
  }

  return v11;
}

void CSDBSqliteBindColumnValue(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 8))
  {
    return;
  }

  v4 = *(a2 + 8);
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      switch(v4)
      {
        case 6:
          v5 = *(a2 + 16);
          goto LABEL_29;
        case 7:
          v10 = *(a2 + 16);
          if (v10)
          {
            if (CFNumberIsFloatType(v10))
            {
              valuePtr = NAN;
              CFNumberGetValue(*(a2 + 16), kCFNumberDoubleType, &valuePtr);
              CSDBSqliteBindDouble(a1, valuePtr);
            }

            else
            {
              valuePtr = -3.72066208e-103;
              CFNumberGetValue(*(a2 + 16), kCFNumberSInt64Type, &valuePtr);
              CSDBSqliteBindInt64(a1, *&valuePtr);
            }

            return;
          }

          break;
        case 8:
          if (*(a2 + 16))
          {
            MEMORY[0x24C1AC400]();
LABEL_29:

            CSDBSqliteBindDouble(a1, v5);
            return;
          }

          break;
        default:
          return;
      }

      goto LABEL_39;
    }

    if (v4 != 4)
    {
LABEL_19:
      syslog(4, "%s does not handle raw data types yet.", "void CSDBSqliteBindColumnValue(CSDBSqliteStatement *, CSDBWriteColumnDescriptor *)");
      return;
    }

    v9 = *(a2 + 16);
    if (v9)
    {

      CSDBSqliteBindBlobFromCFData(a1, v9);
      return;
    }

LABEL_39:

    CSDBSqliteBindNull(a1);
    return;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_19;
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      goto LABEL_39;
    }

    CSDBSqliteBindTextFromCFString(a1, v8);
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v6 = *(a2 + 16);

      CSDBSqliteBindInt64(a1, v6);
    }
  }

  else
  {
    v7 = *(a2 + 16);

    CSDBSqliteBindInt(a1, v7);
  }
}

void CSDBSqliteBindNull(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      if (v3 >= 1)
      {
        sqlite3_bind_null(v2, v3);
LABEL_12:
        ++*(a1 + 16);
        goto LABEL_13;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"YES";
      if (a1)
      {
        v6 = *(a1 + 16);
      }

      else
      {
        v5 = @"NO";
        v6 = 0;
      }

      v8 = 138412546;
      v9 = v5;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_24789E000, v4, OS_LOG_TYPE_INFO, "Invalid parameters passed into CSDBSqliteBindNull s==NULL ? %@  bindIndex = %d", &v8, 0x12u);
    }
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
}

sqlite3_int64 CSDBSqliteConnectionRowidOfLastInsert(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0)
  {
    return sqlite3_last_insert_rowid(v1);
  }

  else
  {
    return -1;
  }
}

CFDataRef CSDBSqliteStatementCopyDataResult(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  if (CSDBSqliteStepWithConnection(*a1, v2) != 100)
  {
    return 0;
  }

  v3 = sqlite3_column_blob(*(a1 + 8), 0);
  v4 = sqlite3_column_bytes(*(a1 + 8), 0);
  if (!v3 || v4 < 1)
  {
    return 0;
  }

  v5 = v4;
  v6 = *MEMORY[0x277CBECE8];

  return CFDataCreate(v6, v3, v5);
}

void sub_2478A473C(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
      a1[2] = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      sqlite3_close(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      v4(a1[3]);
    }

    free(a1);
  }
}

void sub_2478A47C0(uint64_t a1, uint64_t a2, void *key, int a4)
{
  if (!a1)
  {
    sub_2478AD778();
  }

  v4 = a4;
  if (a2 && a4 == -1)
  {
    v4 = *(a2 + 32);
  }

  if (v4 == -1)
  {
    if (!a2)
    {
      return;
    }

    v14 = *(a1 + 24);
    if (!v14)
    {
      return;
    }

    goto LABEL_20;
  }

  if (a2 && !key)
  {
    key = *(a2 + 24);
  }

  if (!key)
  {
    sub_2478AD74C();
  }

  v7 = sub_2478A30BC(a1, key);
  if (v7)
  {
    v8 = v7;
    v9 = *(a1 + 57);
    pthread_once(&stru_280BCA930, sub_2478A6CF8);
    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      CFDictionarySetValue(v8, v4, 0);
      if (!a2)
      {
        return;
      }

      goto LABEL_16;
    }

    v11 = Instance;
    v12 = v9 & 1;
    v13 = (v9 >> 1) & 1;
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    if (a2)
    {
      *(Instance + 16) = CFRetain(a2);
    }

    v11[24] = v12;
    v11[25] = v13;
    CFDictionarySetValue(v8, v4, v11);
    CFRelease(v11);
  }

  if (!a2)
  {
    return;
  }

LABEL_16:
  v14 = *(a1 + 32);
  if (!v14)
  {
    return;
  }

LABEL_20:

  CFDictionaryRemoveValue(v14, a2);
}

void CSDBRecordStoreRemoveRecord(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_2478AD720();
  }

  v3 = *(a2 + 24);
  v4 = *(a2 + 32);

  sub_2478A47C0(a1, a2, v3, v4);
}

UInt8 *CSDBSqliteBindTextFromCFArrayOfCFStrings(UInt8 *result, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = result;
    result = CFArrayGetCount(theArray);
    v4 = result;
    if (result >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
        result = CSDBSqliteBindTextFromCFString(v3, ValueAtIndex);
        ++v5;
      }

      while (v4 != v5);
    }
  }

  return result;
}

void sub_2478A49C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *a3;
  if (*a3)
  {
    if ((*(v6 + 57) & 1) == 0 || (*(*(v5 + 24) + 56) & 2) == 0 || *(a2 + 24) != 1 || (sub_2478A6864(*(a3 + 8), *(a2 + 16), 2, 0), (v6 = *a3) != 0))
    {
      if ((*(v6 + 57) & 2) != 0 && (*(*(v5 + 24) + 56) & 8) != 0 && *(a2 + 25) == 1)
      {
        sub_2478A6BD8(*(a3 + 8), v5, 2);
      }
    }
  }

  v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"DELETE FROM %s WHERE ROWID = ?;", **(a3 + 16));
  v9 = CSDBSqliteConnectionStatementForSQL(*(a3 + 8), v8);
  if (v9)
  {
    v10 = v9;
    if (*(v9 + 1))
    {
      v11 = *a3;
      if (*a3)
      {
        if (a1 >= -1)
        {
          v12 = a1;
LABEL_17:
          CSDBSqliteBindInt64(v9, v12);
          CSDBSqliteStatementPerform(v10);
          CSDBSqliteStatementReset(v10);
          goto LABEL_18;
        }

        if ((a1 & 0x7FFFFFFF) < *(v11 + 104))
        {
          v12 = *(*(v11 + 112) + 8 * (a1 & 0x7FFFFFFF));
          goto LABEL_17;
        }
      }

      v12 = -1;
      goto LABEL_17;
    }
  }

LABEL_18:
  CFRelease(v8);
  v13 = *(*(a3 + 16) + 32);
  if (v13)
  {
    v13(a1, v5, *(a3 + 8));
  }

  if (v5)
  {
    *(v5 + 58) = 0;
  }

  v14 = sub_2478A01A8(*a3, *(a3 + 16));
  if (v14)
  {

    CFDictionaryRemoveValue(v14, a1);
  }
}

void sub_2478A4B78(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  if (!qword_280BCAA00)
  {
    qword_280BCAA00 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v5 = sub_2478A4C58(*(a1 + 32), v2, v3);
  v7 = objc_msgSend_stringByAppendingString_(@"com.apple.coresdb.mandatory_db_reconnect_required.", v6, v5);
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v7;
    v11 = objc_msgSend_containsObject_(qword_280BCAA00, v8, v5);
    if ((v11 & 1) == 0)
    {
      objc_msgSend_addObject_(qword_280BCAA00, v12, v5);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_2478A7CE0, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    goto LABEL_12;
  }

  if (v5)
  {
LABEL_12:
    CFRelease(v5);
  }

  objc_autoreleasePoolPop(v4);
}

void *sub_2478A4C58(void *a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_UTF8String(a1, a2, a3);
  memset(md, 170, sizeof(md));
  v4 = strlen(v3);
  CC_MD5(v3, v4, md);
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v8 = objc_msgSend_initWithCapacity_(v5, v6, 32);
  for (i = 0; i != 16; ++i)
  {
    objc_msgSend_appendFormat_(v8, v7, @"%02x", md[i], *md, *&md[8]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2478A4D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_2478A4D30(void *key, int a2)
{
  v2 = key[2];
  if (!v2)
  {
    sub_2478A4DBC();
  }

  Mutable = *(v2 + 32);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    *(key[2] + 32) = Mutable;
  }

  v6 = (CFDictionaryGetValue(Mutable, key) | a2);
  v7 = *(key[2] + 32);

  CFDictionarySetValue(v7, key, v6);
}

void sub_2478A4DE8(uint64_t a1, char a2, uint64_t *a3)
{
  if (!a1 || !a3 || !a3[1])
  {
    sub_2478AD828();
  }

  v17 = -1431655766;
  v6 = *(a1 + 24);
  v7 = *(v6 + 48);
  if (v7)
  {
    v7(a1);
  }

  v8 = sub_2478A3D48(a1, &v17, 0);
  v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *v6, 0x8000100u);
  v10 = *a3;
  if (!*a3)
  {
    goto LABEL_31;
  }

  v11 = *(a1 + 32);
  if (v11 >= -1)
  {
    goto LABEL_10;
  }

  if ((v11 & 0x7FFFFFFF) < *(v10 + 104))
  {
    v11 = *(*(v10 + 112) + 8 * (v11 & 0x7FFFFFFF));
  }

  else
  {
LABEL_31:
    v11 = -1;
  }

LABEL_10:
  CSDBSqliteConnectionUpdateRecord(a3[1], v9, v11, v8, v17);
  CFRelease(v9);
  free(v8);
  v12 = *(a1 + 40);
  if (v12)
  {
    *(a1 + 40) = 0;
    v13 = a3[1];
    context[0] = a1;
    context[1] = v13;
    CFDictionaryApplyFunction(v12, sub_2478A51B0, context);
  }

  v14 = *(v6 + 104);
  if (v14)
  {
    v14(a1, a3[1]);
  }

  if ((a2 & 1) != 0 && *a3 && (*(*a3 + 57) & 1) != 0 && (*(*(a1 + 24) + 56) & 2) != 0)
  {
    sub_2478A6864(a3[1], a1, 1, v12);
  }

  if ((a2 & 4) != 0 && *a3 && (*(*a3 + 57) & 2) != 0 && (*(*(a1 + 24) + 56) & 8) != 0)
  {
    sub_2478A6BD8(a3[1], a1, 1);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (*(a1 + 40))
  {
    sub_2478AD7FC();
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    CFDictionaryApplyFunction(v15, sub_2478A51E0, a1);
    CFRelease(*(a1 + 48));
    *(a1 + 48) = 0;
  }
}

const __CFDictionary *sub_2478A4FCC(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_2478AD7D0();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (CFDictionaryGetValueIfPresent(result, a2, 0) != 0);
  }

  return result;
}

uint64_t CSDBSqliteConnectionUpdateRecord(uint64_t a1, const __CFString *a2, sqlite3_int64 a3, __int128 *a4, unsigned int a5)
{
  if (!a5)
  {
    return 1;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppend(Mutable, @"UPDATE ");
  CFStringAppend(Mutable, a2);
  CFStringAppend(Mutable, @" SET ");
  v13 = 0;
  v14 = a5;
  do
  {
    v15 = CFStringCreateWithCString(v11, *(a4 + v13), 0x8000100u);
    if (v13)
    {
      CFStringAppend(Mutable, @", ");
    }

    CFStringAppend(Mutable, v15);
    CFStringAppend(Mutable, @" = ?");
    CFRelease(v15);
    v13 += 24;
  }

  while (24 * a5 != v13);
  CFStringAppend(Mutable, @" WHERE ROWID = ?;");
  v16 = sub_24789EE28(a1, Mutable, 0);
  CFRelease(Mutable);
  if (!v16)
  {
    return 1;
  }

  do
  {
    v19 = *a4;
    v20 = *(a4 + 2);
    CSDBSqliteBindColumnValue(v16, &v19);
    a4 = (a4 + 24);
    --v14;
  }

  while (v14);
  CSDBSqliteBindInt64(v16, a3);
  v17 = v16[1];
  if (v17)
  {
    v5 = CSDBSqliteStepWithConnection(*v16, v17);
  }

  else
  {
    v5 = 1;
  }

  CSDBSqliteStatementReset(v16);
  return v5;
}

uint64_t sub_2478A51B0(int a1, uint64_t a2, uint64_t *a3)
{
  result = *a3;
  v5 = *(*(*(*(*a3 + 24) + 80) + 40 * a1 + 16) + 32);
  if (v5)
  {
    v6 = a3[1];
    return v5();
  }

  return result;
}

uint64_t sub_2478A51E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x277CBEEE8] != a2 && a2)
  {
    v3 = *(*(*(*(a3 + 24) + 80) + 40 * result + 16) + 8);
    if (v3)
    {
      return v3(a2);
    }
  }

  return result;
}

uint64_t CSDBPerformUnlockedSectionForRecordStore(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v2 = *(result + 8);
    if (v2)
    {
      return (*(a2 + 16))(a2, v2);
    }
  }

  return result;
}

CFDataRef sub_2478A52BC()
{
  qword_280BCA9D0 = _CFRuntimeRegisterClass();
  result = CFDataCreate(0, 0, 0);
  qword_280BCA9D8 = result;
  return result;
}

uint64_t CSDBRecordCreateCopy(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = sub_2478A29CC(v2, *(a1 + 32));
  v4 = v3;
  if (v3)
  {
    *(v3 + 56) = *(a1 + 56);
  }

  v5 = *(v2 + 72);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = a1 + 72;
    do
    {
      if (v4)
      {
        v8 = *(v7 + 8 * v6);
        if (v8)
        {
          v9 = *(v4 + 8 * v6 + 72) == v8;
        }

        else
        {
          v9 = 0;
        }

        if (!v9)
        {
          sub_2478A2A74(v4, v6, v8);
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return v4;
}

uint64_t CSDBRecordInitializeProperty(uint64_t result, int a2, uint64_t a3)
{
  if (result && (!a3 || *(result + 8 * a2 + 72) != a3))
  {
    v3 = *MEMORY[0x277CBEEE8];
    if (!a3)
    {
      a3 = *MEMORY[0x277CBEEE8];
    }

    return sub_2478A2A74(result, a2, a3);
  }

  return result;
}

CFArrayRef CSDBRecordCopyChangedProperties(uint64_t a1)
{
  if (!a1)
  {
    sub_2478AD1A0();
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v2);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(*(a1 + 40), v5, 0);
  v6 = CFArrayCreate(*MEMORY[0x277CBECE8], v5, v4, 0);
  free(v5);
  return v6;
}

uint64_t CSDBRecordShow(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = *MEMORY[0x277D85DE8];

    return v3();
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = MEMORY[0x277D85DF8];
    result = fprintf(*MEMORY[0x277D85DF8], "CSDBRecord/%s instance %p:\n", *v2, a1);
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        Property = CSDBRecordGetProperty(a1, v9);
        fprintf(*v7, " %s (%d) = ", *(*(a1[3] + 80) + v8), v9);
        v11 = *(a1[3] + 80);
        if (Property && (v12 = *(*(v11 + v8 + 16) + 16)) != 0)
        {
          v12(Property);
        }

        else
        {
          v13 = *(v11 + v8 + 8);
          if (v13 == 1)
          {
            v14 = CFStringCreateWithFormat(0, 0, @"%@", Property);
            if (v14)
            {
              v15 = v14;
              memset(__b, 170, sizeof(__b));
              CFStringGetCString(v15, __b, 2048, 0x8000100u);
              fputs(__b, *v7);
              CFRelease(v15);
            }

            else
            {
              fwrite("(nil)", 5uLL, 1uLL, *v7);
            }
          }

          else if (v13)
          {
            fprintf(*v7, "%p");
          }

          else
          {
            fprintf(*v7, "%d");
          }
        }

        result = fputc(10, *v7);
        v9 = (v9 + 1);
        v8 += 40;
      }

      while (40 * v6 != v8);
    }

    v16 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t CSDBRecordGetPropertyDescriptor(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (*(v2 + 72) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 80) + 40 * a2;
  }
}

void CSDBRecordMarkChanged(void *key)
{
  if (!key)
  {
    sub_2478AD2A8();
  }

  v2 = key[2];
  if (v2)
  {
    if ((*(v2 + 57) & 1) == 0 || (*(key[3] + 56) & 2) == 0 || (sub_2478A4D30(key, 1), (v2 = key[2]) != 0))
    {
      if ((*(v2 + 57) & 2) != 0 && (*(key[3] + 56) & 8) != 0)
      {

        sub_2478A4D30(key, 4);
      }
    }
  }
}

uint64_t CSDBRecordStoreSetContext(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t CSDBRecordStoreGetContext(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

void CSDBRecordStoreSetValueForProperty(uint64_t a1, void *key, const void *a3)
{
  if (!a1)
  {
    sub_2478AD300();
  }

  Mutable = *(a1 + 80);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 80) = Mutable;
    if (!Mutable)
    {
      sub_2478AD2D4();
    }
  }

  v7 = *MEMORY[0x277CBEEE8];
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = *MEMORY[0x277CBEEE8];
  }

  CFDictionarySetValue(Mutable, key, v8);
}

CFStringRef CSDBRecordStoreCopyValueForProperty(uint64_t a1, const __CFString *key)
{
  if (!a1)
  {
    sub_2478AD32C();
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, key);
    if (Value)
    {
      v6 = Value;
      CFRetain(Value);
LABEL_7:
      if (*MEMORY[0x277CBEEE8] == v6)
      {
        CFRelease(v6);
        return 0;
      }

      return v6;
    }
  }

  Database = CSDBRecordStoreGetDatabase(a1);
  if (!Database)
  {
    return 0;
  }

  v6 = CSDBSqliteDatabaseCopyValueForProperty(Database, key);
  if (v6)
  {
    goto LABEL_7;
  }

  return v6;
}

uint64_t CSDBRecordIndexOfPropertyNamed(const char **a1, int a2, char *__s1)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2;
  while (strcmp(__s1, *a1))
  {
    ++v5;
    a1 += 5;
    if (v6 == v5)
    {
      return v6;
    }
  }

  return v5;
}

_DWORD *CSDBRecordStoreCreateWithPath(const __CFString *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F0040F8EA1033uLL);
  if (v2)
  {
    *v2 = CFStringCreateCopy(*MEMORY[0x277CBECE8], a1);
    v2[24] = -1;
  }

  return v2;
}

uint64_t CSDBRecordStoreSetSetupHandler(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_2478AD3B0();
  }

  *(a1 + 64) = a2;
  result = *(a1 + 8);
  if (result)
  {

    return CSDBSqliteDatabaseSetSetupHandler(result, sub_2478A59DC, a1);
  }

  return result;
}

void sub_2478A59DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a2 || !a3)
  {
    sub_2478AD3DC();
  }

  v5 = *(a3 + 64);
  if (v5)
  {

    v5(a3);
  }

  else
  {
    CSDBSqliteDatabaseDefaultSetupHandler();
    v6 = *(a3 + 72);
    if (v6)
    {
      v7[0] = a3;
      v7[1] = a2;
      CFSetApplyFunction(v6, sub_2478A67F8, v7);
    }
  }
}

uint64_t CSDBRecordStoreLogChanges(uint64_t result, char a2)
{
  if (!result)
  {
    sub_2478AD408();
  }

  *(result + 57) = *(result + 57) & 0xFE | a2;
  return result;
}

uint64_t CSDBRecordStoreLogBasicChanges(uint64_t result, int a2)
{
  if (!result)
  {
    sub_2478AD434();
  }

  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 57) = *(result + 57) & 0xFD | v2;
  return result;
}

uint64_t CSDBRecordStoreIsLoggingChanges(uint64_t a1)
{
  if (!a1)
  {
    sub_2478AD460();
  }

  return *(a1 + 57) & 1;
}

uint64_t CSDBRecordStoreGetLastSequenceNumber(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 96);
  }

  else
  {
    return -1;
  }
}

CFArrayRef sub_2478A5B28(const __CFDictionary *a1, const CFArrayCallBacks *a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(a1, v6, 0);
  v7 = CFArrayCreate(*MEMORY[0x277CBECE8], v6, v5, a2);
  free(v6);
  return v7;
}

CFArrayRef CSDBRecordStoreCopyDeletedRecordIDsOfClass(uint64_t a1, const void *a2)
{
  Value = *(a1 + 40);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, a2);
    v2 = vars8;
  }

  return sub_2478A5B28(Value, 0);
}

uint64_t sub_2478A5C20(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  if (!a3 || !a1 || (v5 = *(a3 + 8)) == 0)
  {
    sub_2478AD4E4();
  }

  if (*MEMORY[0x277CBEEE8] == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  return CSDBSqliteConnectionSetValueForProperty(v5, a1, v6);
}

void CSDBRecordStoreCreateTablesForClass(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    sub_2478AD5C0();
  }

  if (!a2)
  {
    sub_2478AD594();
  }

  v6 = *(a1 + 56);
  alloc = *MEMORY[0x277CBECE8];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, @"CREATE TABLE IF NOT EXISTS ");
  CFStringAppendCString(MutableCopy, *a1, 0x8000100u);
  v8 = *(a1 + 120);
  v49 = a2;
  v47 = v6;
  v48 = a3;
  if (v8 < 1)
  {
    goto LABEL_10;
  }

  v9 = 0;
  v10 = *(a1 + 128) + 8;
  v11 = v10;
  do
  {
    v12 = *v11;
    v11 += 6;
    if (v12 <= 0)
    {
      sub_2478AD568();
    }

    v13 = *(v10 - 8);
    if (((v13 == 1) & v9) == 1)
    {
      sub_2478AD53C();
    }

    v9 |= v13 == 1;
    v10 = v11;
    --v8;
  }

  while (v8);
  if (v9)
  {
    CFStringAppend(MutableCopy, @" (");
  }

  else
  {
LABEL_10:
    v14 = CFRetain(@"ROWID");
    v15 = *(a1 + 96);
    if (v15)
    {
      v14 = CFStringCreateWithCString(0, v15, 0x600u);
    }

    v16 = v14;
    CFStringAppendFormat(MutableCopy, 0, @" (%@ INTEGER PRIMARY KEY"), v14, alloc;
    if (v6)
    {
      v17 = @" AUTOINCREMENT, ";
    }

    else
    {
      v17 = @", ";
    }

    CFStringAppend(MutableCopy, v17);
    CFRelease(v16);
  }

  v18 = *(a1 + 72);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = 1;
    while (1)
    {
      v22 = *(a1 + 80);
      v23 = v22 + v19;
      if ((*(v22 + v19 + 24) & 4) == 0)
      {
        break;
      }

LABEL_30:
      ++v20;
      v19 += 40;
      if (v20 >= v18)
      {
        goto LABEL_36;
      }
    }

    if ((v21 & 1) == 0)
    {
      CFStringAppend(MutableCopy, @", ");
    }

    v24 = v22 + v19;
    CFStringAppendCString(MutableCopy, *v24, 0x8000100u);
    v25 = *(v24 + 8);
    v26 = @" TEXT";
    if (v25 <= 3)
    {
      v26 = off_278EB32E0[v25];
    }

    CFStringAppend(MutableCopy, v26);
    v27 = *(v23 + 24);
    if ((v27 & 0xE0) == 0)
    {
      goto LABEL_28;
    }

    Mutable = CFStringCreateMutable(0, 0);
    v29 = Mutable;
    if ((v27 & 0x20) != 0)
    {
      CFStringAppend(Mutable, @" UNIQUE");
      if ((v27 & 0x40) == 0)
      {
LABEL_26:
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }

    else if ((v27 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    CFStringAppend(v29, @" NOT NULL");
    if ((v27 & 0x80) == 0)
    {
LABEL_27:
      if (v29)
      {
LABEL_29:
        CFStringAppend(MutableCopy, v29);
        CFRelease(v29);
        v21 = 0;
        v18 = *(a1 + 72);
        goto LABEL_30;
      }

LABEL_28:
      v29 = CFRetain(&stru_28597FC80);
      goto LABEL_29;
    }

LABEL_34:
    CFStringAppend(v29, @" DEFAULT 0");
    if (v29)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_36:
  if (*(a1 + 120) >= 1)
  {
    for (i = 0; i < *(a1 + 120); ++i)
    {
      v31 = *(a1 + 128) + 24 * i;
      if (*(v31 + 8) <= 0)
      {
        sub_2478AD510();
      }

      if (*v31 == 1)
      {
        v32 = CFSTR(", PRIMARY KEY (");
      }

      else
      {
        if (*v31 != 2)
        {
          goto LABEL_44;
        }

        v32 = CFSTR(", UNIQUE (");
      }

      CFStringAppend(MutableCopy, v32);
      if (*(v31 + 8) >= 1)
      {
LABEL_44:
        v33 = 0;
        do
        {
          if (v33)
          {
            CFStringAppend(MutableCopy, @", ");
          }

          CFStringAppendCString(MutableCopy, *(*(a1 + 80) + 40 * *(*(v31 + 16) + 4 * v33++)), 0x8000100u);
        }

        while (v33 < *(v31 + 8));
      }

      CFStringAppend(MutableCopy, @""));
    }
  }

  CFStringAppend(MutableCopy, @";"));
  v34 = v49;
  CSDBSqliteConnectionPerformSQL(v49, MutableCopy);
  CFRelease(MutableCopy);
  v36 = v47;
  v35 = v48;
  if (v48 && (v47 & 2) != 0)
  {
    v37 = CFStringCreateMutableCopy(alloc, 0, @"CREATE TABLE IF NOT EXISTS ");
    CFStringAppendCString(v37, *a1, 0x8000100u);
    CFStringAppend(v37, @"Changes (record INTEGER, type INTEGER");
    if (*(a1 + 72) >= 1)
    {
      v38 = 0;
      v39 = 0;
      while (1)
      {
        v40 = *(a1 + 80) + v38;
        v41 = *v40;
        v42 = *(v40 + 24);
        if ((v42 & 2) != 0)
        {
          break;
        }

        if ((v42 & 8) != 0)
        {
          CFStringAppend(v37, @", ");
          CFStringAppendCString(v37, v41, 0x8000100u);
          v43 = @" INTEGER";
LABEL_58:
          CFStringAppend(v37, v43);
        }

        ++v39;
        v38 += 40;
        if (v39 >= *(a1 + 72))
        {
          goto LABEL_60;
        }
      }

      v44 = *(v40 + 8);
      CFStringAppend(v37, @", ");
      CFStringAppendCString(v37, v41, 0x8000100u);
      v43 = @" TEXT";
      if (v44 < 4)
      {
        v43 = off_278EB32E0[v44];
      }

      goto LABEL_58;
    }

LABEL_60:
    CFStringAppend(v37, @";"));
    v34 = v49;
    CSDBSqliteConnectionPerformSQL(v49, v37);
    CFRelease(v37);
    v36 = v47;
    v35 = v48;
  }

  if (v35 && (v36 & 8) != 0)
  {
    v45 = CFStringCreateMutableCopy(alloc, 0, @"CREATE TABLE IF NOT EXISTS ");
    CFStringAppendCString(v45, *a1, 0x8000100u);
    CFStringAppend(v45, @"BasicChanges (record INTEGER PRIMARY KEY, type INTEGER, sequenceNumber INTEGER);");
    CSDBSqliteConnectionPerformSQL(v34, v45);

    CFRelease(v45);
  }
}

void CSDBRecordStoreRegisterClass(uint64_t a1, void *value)
{
  if (!a1 || !value)
  {
    sub_2478AD618();
  }

  Mutable = *(a1 + 72);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, 0);
    *(a1 + 72) = Mutable;
    if (!Mutable)
    {
      sub_2478AD5EC();
    }
  }

  CFSetAddValue(Mutable, value);
}

CFMutableStringRef CSDBRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumn(uint64_t a1, void *a2)
{
  values = a2;
  if (a2)
  {
    v3 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, 0);
    v4 = sub_2478A2EC0(a1, 0, 0, v3, 0);
    if (v3)
    {
      CFRelease(v3);
    }

    return v4;
  }

  else
  {

    return sub_2478A2EC0(a1, 0, 0, 0, 0);
  }
}

CFMutableStringRef CSDBRecordStoreCreateJoinableSelectPrefixFromRecordDescriptor(uint64_t a1, CFStringRef theString)
{
  if (!theString || !CFStringGetLength(theString))
  {
    sub_2478AD644();
  }

  return sub_2478A2EC0(a1, 0, theString, 0, 0);
}

CFMutableStringRef CSDBRecordStoreCreateSelectPrefixWithTableExpressionAndAlias(uint64_t a1, const __CFString *a2, CFStringRef theString)
{
  if (!theString || !CFStringGetLength(theString))
  {
    sub_2478AD69C();
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    sub_2478AD670();
  }

  return sub_2478A2EC0(a1, a2, theString, 0, 0);
}

__CFString *CSDBRecordStoreCreateSelectStatement(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v5 = sub_2478A2EC0(a1, a2, a3, 0, 0);
  if (v5)
  {
    if (a4 && CFStringGetLength(a4) >= 1)
    {
      CFStringAppend(v5, @" ");
      CFStringAppend(v5, a4);
    }

    CFStringAppend(v5, @";");
  }

  return v5;
}

uint64_t CSDBRecordStoreProcessQuery(uint64_t a1, void *a2, const __CFString *a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_2478A2CA0(a1);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = CSDBSqliteConnectionStatementForSQL(v10, a3);
  if (v12)
  {
    v13 = CSDBRecordStoreProcessRecordStatementWithPropertyIndices(a1, a2, v12, a4, 0, a5, 0);
  }

  else
  {
    v13 = 0;
  }

  CSDBSqliteDatabaseReleaseSqliteConnection(v11);
  return v13;
}

const __CFDictionary *CSDBRecordIsPendingAdd(void *key)
{
  v1 = key[2];
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 24);
  if (result)
  {
    return (CFDictionaryContainsKey(result, key) != 0);
  }

  return result;
}

const __CFDictionary *CSDBRecordIsPendingChange(void *key)
{
  v1 = key[2];
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 32);
  if (result)
  {
    return (CFDictionaryContainsKey(result, key) != 0);
  }

  return result;
}

const __CFDictionary *CSDBRecordIsPendingDelete(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (*(result + 5))
    {
      result = sub_2478A30BC(result, *(a1 + 24));
      if (result)
      {
        return (CFDictionaryContainsKey(result, *(a1 + 32)) != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CSDBRecordStoreHasUnsavedChanges(void *a1)
{
  v2 = a1[3];
  if (v2 && CFDictionaryGetCount(v2) > 0)
  {
    return 1;
  }

  v3 = a1[4];
  if (v3)
  {
    if (CFDictionaryGetCount(v3) > 0)
    {
      return 1;
    }
  }

  result = a1[5];
  if (result)
  {
    context = 0;
    CFDictionaryApplyFunction(result, sub_2478A6714, &context);
    return context > 0;
  }

  return result;
}

CFIndex sub_2478A6714(int a1, CFDictionaryRef theDict, _DWORD *a3)
{
  result = CFDictionaryGetCount(theDict);
  *a3 += result;
  return result;
}

void *CSDBRecordIsFull(void *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = a2;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v7.st_blksize = v4;
    *v7.st_qspare = v4;
    *&v7.st_size = v4;
    v5 = objc_msgSend_fileSystemRepresentation(result, a2, a3, v4, v4, v4, v4, v4, v4);
    if (stat(v5, &v7))
    {
      v6 = 1;
    }

    else
    {
      v6 = v7.st_size <= v3;
    }

    return !v6;
  }

  return result;
}

void sub_2478A6864(uint64_t a1, uint64_t a2, int a3, const __CFDictionary *a4)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"INSERT INTO %sChanges (ROWID, record, type"), **(a2 + 24);
  v7 = *(a2 + 24);
  v8 = *(v7 + 72);
  if (v8 < 1)
  {
    goto LABEL_32;
  }

  LODWORD(v9) = 0;
  v10 = (*(v7 + 80) + 24);
  do
  {
    v11 = v9;
    v12 = *v10;
    v10 += 10;
    v13 = v12 & 0xA;
    if ((v12 & 0xA) != 0)
    {
      v9 = (v9 + 1);
    }

    else
    {
      v9 = v9;
    }

    --v8;
  }

  while (v8);
  if (v9)
  {
    v38 = a1;
    v14 = malloc_type_calloc(1uLL, 24 * v9, 0x10720403E5D127AuLL);
    v15 = *(a2 + 24);
    if (*(v15 + 72) >= 1)
    {
      v16 = 0;
      v17 = 0;
      v39 = *MEMORY[0x277CBEEE8];
      while (1)
      {
        v18 = *(v15 + 80) + 40 * v16;
        v19 = *(v18 + 24);
        if ((v19 & 2) != 0)
        {
          break;
        }

        if ((v19 & 8) != 0)
        {
          v20 = &v14[3 * v17];
          *v20 = *v18;
          if (a3 == 1)
          {
            v20[1] = 0;
            if (a4)
            {
              v21 = CFDictionaryGetValue(a4, v16) != 0;
            }

            else
            {
              v21 = 0;
            }

            *(v20 + 4) = v21;
          }

          else
          {
            v20[1] = 2;
            v20[2] = 0;
          }

LABEL_26:
          ++v17;
        }

        ++v16;
        v15 = *(a2 + 24);
        if (v16 >= *(v15 + 72))
        {
          goto LABEL_33;
        }
      }

      v22 = 0;
      v23 = &v14[3 * v17];
      v25 = *v18;
      v24 = *(v18 + 8);
      *v23 = v25;
      v26 = qword_2478AE7C0;
      do
      {
        v27 = *v26;
        v26 += 2;
        if (v27 == v24)
        {
          break;
        }

        ++v22;
      }

      while (v22 != 4);
      v23[1] = qword_2478AE7C0[2 * v22 + 1];
      if (a3 == 2 && (v28 = *(a2 + 48)) != 0 && (Value = CFDictionaryGetValue(v28, v16)) != 0)
      {
        if (Value == v39)
        {
          LODWORD(Value) = 0;
        }
      }

      else
      {
        LODWORD(Value) = CSDBRecordGetProperty(a2, v16);
      }

      *(v23 + 4) = Value;
      goto LABEL_26;
    }

LABEL_33:
    v30 = v9;
    v31 = v14;
    do
    {
      CFStringAppend(Mutable, @", ");
      v32 = *v31;
      v31 += 3;
      CFStringAppendCString(Mutable, v32, 0x8000100u);
      --v30;
    }

    while (v30);
    CFStringAppendFormat(Mutable, 0, @" VALUES(IFNULL(1 + (SELECT MAX(ROWID) FROM %sChanges), 0), ?, ?"), **(a2 + 24));
    if (v13)
    {
      v33 = v11 + 1;
    }

    else
    {
      v33 = v11;
    }

    do
    {
      CFStringAppend(Mutable, @", ?");
      --v33;
    }

    while (v33);
    a1 = v38;
  }

  else
  {
LABEL_32:
    CFStringAppendFormat(Mutable, 0, @" VALUES(IFNULL(1 + (SELECT MAX(ROWID) FROM %sChanges), 0), ?, ?"), *v7);
    LODWORD(v9) = 0;
    v14 = 0;
  }

  CFStringAppend(Mutable, @";"));
  v34 = CSDBSqliteConnectionStatementForSQL(a1, Mutable);
  if (v34)
  {
    v35 = v34;
    if (*(v34 + 1))
    {
      v36 = *(a2 + 16);
      if (v36)
      {
        v37 = *(a2 + 32);
        if (v37 >= -1)
        {
LABEL_46:
          CSDBSqliteBindInt64(v34, v37);
          CSDBSqliteBindInt(v35, a3);
          CSDBSqliteStatementBindValuesForColumns(v35, v14, v9);
          CSDBSqliteStatementPerform(v35);
          CSDBSqliteStatementReset(v35);
          goto LABEL_47;
        }

        if ((v37 & 0x7FFFFFFF) < *(v36 + 104))
        {
          v37 = *(*(v36 + 112) + 8 * (v37 & 0x7FFFFFFF));
          goto LABEL_46;
        }
      }

      v37 = -1;
      goto LABEL_46;
    }
  }

LABEL_47:
  free(v14);

  CFRelease(Mutable);
}

void sub_2478A6BD8(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendFormat(Mutable, 0, @"INSERT OR REPLACE INTO %sBasicChanges (record, type, sequenceNumber)", **(a2 + 24));
    CFStringAppend(Mutable, @" VALUES(?, ?, ?);");
    v7 = CSDBSqliteConnectionStatementForSQL(a1, Mutable);
    if (v7)
    {
      v8 = v7;
      if (*(v7 + 1))
      {
        v9 = *(a2 + 16);
        if (v9)
        {
          v10 = *(a2 + 32);
          if (v10 < -1)
          {
            if ((v10 & 0x7FFFFFFF) >= *(v9 + 104))
            {
              v10 = -1;
            }

            else
            {
              v10 = *(*(v9 + 112) + 8 * (v10 & 0x7FFFFFFF));
            }
          }

          CSDBSqliteBindInt64(v7, v10);
          CSDBSqliteBindInt(v8, a3);
          CSDBSqliteBindInt(v8, *(*(a2 + 16) + 96) + 1);
          CSDBSqliteStatementPerform(v8);
          CSDBSqliteStatementReset(v8);
        }
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_2478A6CF8()
{
  result = _CFRuntimeRegisterClass();
  qword_280BCA9B8 = result;
  return result;
}

void *CSDBSqliteDatabaseCreateWithPath(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10E00403D130332uLL);
  *v2 = CFStringCreateCopy(*MEMORY[0x277CBECE8], a1);
  return v2;
}

uint64_t CSDBSqliteDatabaseSetLookAsideConfig(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    *(result + 188) = a2;
    *(result + 196) = a3;
  }

  return result;
}

uint64_t CSDBSqliteDatabaseSetVersion(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 84) |= 1u;
    *(result + 80) = a2;
  }

  return result;
}

uint64_t CSDBSqliteDatabaseSetDataProtectionClass(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 184) = a2;
  }

  return result;
}

uint64_t CSDBSqliteConnectionDatabaseVersion(uint64_t a1)
{
  v2 = 0;
  LODWORD(result) = sub_2478A1044(a1, @"_ClientVersion", 0, &v2);
  if (v2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t CSDBSqliteDatabaseSetSetupHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 16) = a2;
    *(result + 40) = a3;
  }

  return result;
}

uint64_t CSDBSqliteDatabaseSetShouldMigrateInExternalProcess(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

uint64_t CSDBSqliteDatabaseSetConnectionInitializer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t CSDBSqliteDatabaseVacuum(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    errmsg = 0;
    v1 = sqlite3_exec(*(a1 + 8), "vacuum;", 0, 0, &errmsg);
    v2 = v1;
    if (v1 && v1 != 101)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v13 = v2;
          v14 = 2080;
          v15 = errmsg;
          v4 = "Unable to vacuum database. SQLiteResult: %d error message: %s";
          v5 = v8;
          v6 = 18;
          goto LABEL_13;
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v4 = "SQLite vacumm was successful.";
        v5 = v3;
        v6 = 2;
LABEL_13:
        _os_log_impl(&dword_24789E000, v5, OS_LOG_TYPE_INFO, v4, buf, v6);
      }
    }

    if (errmsg)
    {
      free(errmsg);
    }

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    v2 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24789E000, v7, OS_LOG_TYPE_INFO, "Unable to vaccum db, NULL connection.", buf, 2u);
    }
  }

  else
  {
    v2 = 1;
  }

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t CSDBSqliteDatabaseCheckpointAndVacuum(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    errmsg = 0;
    v2 = sqlite3_exec(*(a1 + 8), "vacuum;", 0, 0, &errmsg);
    v3 = v2;
    if (v2 && v2 != 101)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v21 = v3;
          v22 = 2080;
          v23 = errmsg;
          v5 = "Unable to vacuum database. SQLiteResult: %d error message: %s";
          v6 = v10;
          v7 = 18;
          goto LABEL_13;
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "SQLite vacumm was successful.";
        v6 = v4;
        v7 = 2;
LABEL_13:
        _os_log_impl(&dword_24789E000, v6, OS_LOG_TYPE_INFO, v5, buf, v7);
      }
    }

    v11 = sqlite3_exec(*(a1 + 8), "PRAGMA wal_checkpoint(RESTART);", 0, 0, &errmsg);
    v9 = v11;
    if (v11 && v11 != 101)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v21 = v9;
          v22 = 2080;
          v23 = errmsg;
          v13 = "Unable to wal_checkpoint database. SQLiteResult: %d error message: %s";
          v14 = v16;
          v15 = 18;
          goto LABEL_22;
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v13 = "SQLite wal_checkpoint was successful.";
        v14 = v12;
        v15 = 2;
LABEL_22:
        _os_log_impl(&dword_24789E000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
      }
    }

    if (errmsg)
    {
      free(errmsg);
    }

    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24789E000, v8, OS_LOG_TYPE_INFO, "Unable to vaccum db, NULL connection.", buf, 2u);
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_26:
  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

void *CSDBSqliteDatabaseSetMigrationHandlers(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result[6] = a2;
    result[7] = a3;
    result[9] = a4;
  }

  return result;
}

void CSDBSqliteDatabaseCloseAllConnections(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2478A473C(v2);
    *(a1 + 8) = 0;
  }
}

void CSDBSqliteDeleteDatabase(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = objc_msgSend_initWithFormat_(v2, v3, @"%@-shm", a1);
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = objc_msgSend_initWithFormat_(v5, v6, @"%@-wal", a1);
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_initWithFormat_(v8, v9, @"%@-journal", a1);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = a1;
        _os_log_impl(&dword_24789E000, v13, OS_LOG_TYPE_INFO, "Unlinking the source database %@.", buf, 0xCu);
      }
    }

    v14 = objc_msgSend_UTF8String(a1, v11, v12);
    unlink(v14);
    if (v4)
    {
      v17 = objc_msgSend_UTF8String(v4, v15, v16);
      unlink(v17);
    }

    if (v7)
    {
      v18 = objc_msgSend_UTF8String(v7, v15, v16);
      unlink(v18);
    }

    if (v10)
    {
      v19 = objc_msgSend_UTF8String(v10, v15, v16);
      unlink(v19);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void CSDBSqliteBackupDatabase(uint64_t a1, const __CFString *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = a2;
      _os_log_impl(&dword_24789E000, v4, OS_LOG_TYPE_INFO, "Backing up database to path %@", buf, 0xCu);
    }
  }

  memset(&buf[1], 170, 0x3FFuLL);
  memset(&buffer[1], 170, 0x3FFuLL);
  buf[0] = 0;
  buffer[0] = 0;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v52 = 138412290;
      *v53 = a2;
      _os_log_impl(&dword_24789E000, v5, OS_LOG_TYPE_INFO, "Destination path: %@", v52, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *a1;
      *v52 = 138412290;
      *v53 = v7;
      _os_log_impl(&dword_24789E000, v6, OS_LOG_TYPE_INFO, "Source path: %@", v52, 0xCu);
    }
  }

  CFStringGetCString(a2, buf, 1024, 0x8000100u);
  CFStringGetCString(*a1, buffer, 1024, 0x8000100u);
  v8 = *(a1 + 184);
  if (v8)
  {
    v9 = 4194306;
  }

  else
  {
    v9 = 3145730;
  }

  if (v8 == 1)
  {
    v10 = 1048578;
  }

  else
  {
    v10 = v9;
  }

  ppDb = 0;
  v11 = sqlite3_open_v2(buffer, &ppDb, v10, 0);
  if (!v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v52 = 0;
        _os_log_impl(&dword_24789E000, v12, OS_LOG_TYPE_INFO, "Opened the source database to force WAL journal mode.", v52, 2u);
      }
    }

    sqlite3_exec(ppDb, "pragma JOURNAL_MODE=wal", 0, 0, 0);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v52 = 0;
        _os_log_impl(&dword_24789E000, v13, OS_LOG_TYPE_INFO, "Closing the source database to clean up any support files.", v52, 2u);
      }
    }

    sqlite3_close(ppDb);
    ppDb = 0;
    v11 = sqlite3_open_v2(buffer, &ppDb, v10, 0);
    if (!v11)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v52 = 0;
          _os_log_impl(&dword_24789E000, v20, OS_LOG_TYPE_INFO, "Opened the source database.", v52, 2u);
        }
      }

      v21 = *(a1 + 184);
      v22 = 4194310;
      if (!v21)
      {
        v22 = 3145734;
      }

      if (v21 == 1)
      {
        v23 = 1048582;
      }

      else
      {
        v23 = v22;
      }

      v50 = 0;
      v24 = sqlite3_open_v2(buf, &v50, v23, 0);
      v25 = IMOSLoggingEnabled();
      if (v24)
      {
        if (!v25)
        {
          goto LABEL_29;
        }

        v26 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }

        v27 = sqlite3_errmsg(v50);
        *v52 = 67109378;
        *v53 = v24;
        *&v53[4] = 2080;
        *&v53[6] = v27;
        v16 = "Unable to open the destination database. SQLite error: [%d] %s";
        goto LABEL_65;
      }

      if (v25)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *v52 = 0;
          _os_log_impl(&dword_24789E000, v28, OS_LOG_TYPE_INFO, "Opened the destination database.", v52, 2u);
        }
      }

      v29 = sqlite3_file_control(v50, 0, 102, ppDb);
      v30 = IMOSLoggingEnabled();
      if (v29)
      {
        if (v30)
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = sqlite3_errmsg(v50);
            v33 = sqlite3_errmsg(ppDb);
            *v52 = 67109634;
            *v53 = v29;
            *&v53[4] = 2080;
            *&v53[6] = v32;
            v54 = 2080;
            v55 = v33;
            v34 = "Replacing messages database from restore failed. SQLite error: [%d] Destination: %s Source: %s";
            v35 = v31;
            v36 = 28;
LABEL_52:
            _os_log_impl(&dword_24789E000, v35, OS_LOG_TYPE_INFO, v34, v52, v36);
          }
        }
      }

      else if (v30)
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *v52 = 0;
          v34 = "Database replacement was successful.";
          v35 = v37;
          v36 = 2;
          goto LABEL_52;
        }
      }

      v38 = sqlite3_close(v50);
      v39 = IMOSLoggingEnabled();
      if (v38)
      {
        if (!v39)
        {
          goto LABEL_61;
        }

        v40 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          goto LABEL_61;
        }

        v41 = sqlite3_errmsg(v50);
        *v52 = 67109378;
        *v53 = v38;
        *&v53[4] = 2080;
        *&v53[6] = v41;
        v42 = "Unable to close the destination database. SQLite error: [%d] %s";
        v43 = v40;
        v44 = 18;
      }

      else
      {
        if (!v39)
        {
          goto LABEL_61;
        }

        v45 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          goto LABEL_61;
        }

        *v52 = 0;
        v42 = "Closed the destination database.";
        v43 = v45;
        v44 = 2;
      }

      _os_log_impl(&dword_24789E000, v43, OS_LOG_TYPE_INFO, v42, v52, v44);
LABEL_61:
      v46 = sqlite3_close(ppDb);
      v47 = IMOSLoggingEnabled();
      if (!v46)
      {
        if (v47)
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *v52 = 0;
            v16 = "Closed the source database.";
            v17 = v49;
            v18 = 2;
            goto LABEL_28;
          }
        }

        goto LABEL_29;
      }

      if (!v47)
      {
        goto LABEL_29;
      }

      v26 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      v48 = sqlite3_errmsg(ppDb);
      *v52 = 67109378;
      *v53 = v46;
      *&v53[4] = 2080;
      *&v53[6] = v48;
      v16 = "Unable to close the source database. SQLite error: [%d] %s";
LABEL_65:
      v17 = v26;
      goto LABEL_27;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = sqlite3_errmsg(ppDb);
      *v52 = 67109378;
      *v53 = v11;
      *&v53[4] = 2080;
      *&v53[6] = v15;
      v16 = "Unable to open the source database. SQLite error: [%d] %s";
      v17 = v14;
LABEL_27:
      v18 = 18;
LABEL_28:
      _os_log_impl(&dword_24789E000, v17, OS_LOG_TYPE_INFO, v16, v52, v18);
    }
  }

LABEL_29:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2478A7BEC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2478A7808);
  }

  _Unwind_Resume(a1);
}

void sub_2478A7CE0(uint64_t a1, uint64_t a2, void *a3)
{
  pthread_mutex_lock(&stru_27EE54A58);
  v6 = objc_msgSend_copy(qword_27EE54AC0, v4, v5);
  pthread_mutex_unlock(&stru_27EE54A58);
  v9 = objc_msgSend_length(@"com.apple.coresdb.mandatory_db_reconnect_required.", v7, v8);
  v11 = objc_msgSend_substringFromIndex_(a3, v10, v9);
  if (v11 && v6)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2478AB69C;
    v13[3] = &unk_278EB3350;
    v13[4] = v11;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v12, v13);
  }
}

uint64_t **CSDBSqliteDatabaseReleaseSqliteStatement(uint64_t **result)
{
  v1 = **result;
  if (v1)
  {
    if ((*(v1 + 84) & 4) != 0)
    {
      return pthread_mutex_unlock((v1 + 88));
    }
  }

  return result;
}

CFStringRef CSDBSqliteDatabaseCopyValueForProperty(uint64_t a1, const __CFString *a2)
{
  v3 = CSDBSqliteDatabaseConnectionForWritingWithOwnership(a1, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CSDBSqliteConnectionCopyValueForProperty(v3, a2);
  v6 = *v4;
  if (*v4 && (*(v6 + 84) & 4) != 0)
  {
    pthread_mutex_unlock((v6 + 88));
  }

  return v5;
}

CFStringRef CSDBSqliteConnectionCopyValueForProperty(void *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v4 = sub_24789EE28(a1, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = ?;", 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CSDBSqliteBindTextFromCFString(v4, a2);
  v6 = CSDBSqliteStatementCopyStringResult(v5);
  CSDBSqliteStatementReset(v5);
  return v6;
}

uint64_t CSDBSqliteDatabaseSetValueForProperty(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v5 = 1;
  v6 = CSDBSqliteDatabaseConnectionForWritingWithOwnership(a1, 1);
  if (v6)
  {
    v7 = v6;
    v5 = CSDBSqliteConnectionSetValueForProperty(v6, a2, a3);
    v8 = *v7;
    if (*v7)
    {
      if ((*(v8 + 84) & 4) != 0)
      {
        pthread_mutex_unlock((v8 + 88));
      }
    }
  }

  return v5;
}

uint64_t CSDBSqliteConnectionSetValueForProperty(void *a1, const __CFString *a2, const __CFString *a3)
{
  result = 1;
  if (a1 && a2 && *a1)
  {
    v7 = sub_24789EE28(a1, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);", 0);
    if (v7)
    {
      v8 = v7;
      CSDBSqliteBindTextFromCFString(v7, a2);
      if (a3)
      {
        CSDBSqliteBindTextFromCFString(v8, a3);
      }

      else
      {
        CSDBSqliteBindNull(v8);
      }

      v9 = *(v8 + 8);
      if (v9)
      {
        CSDBSqliteStepWithConnection(*v8, v9);
      }

      result = CSDBSqliteStatementReset(v8);
      if (result == 17)
      {
        v10 = a1[2];
        if (v10 && (CFDictionaryRemoveValue(v10, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);"), (v11 = sub_24789EE28(a1, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);", 0)) != 0))
        {
          v12 = v11;
          CSDBSqliteBindTextFromCFString(v11, a2);
          if (a3)
          {
            CSDBSqliteBindTextFromCFString(v12, a3);
          }

          else
          {
            CSDBSqliteBindNull(v12);
          }

          v13 = *(v12 + 8);
          if (v13)
          {
            CSDBSqliteStepWithConnection(*v12, v13);
          }

          return CSDBSqliteStatementReset(v12);
        }

        else
        {
          return 17;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t CSDBSqliteDatabaseRegisterFunctionForDB(sqlite3 *a1, const char *a2, void (__cdecl *xFunc)(sqlite3_context *, int, sqlite3_value **), int nArg, void *a5)
{
  if (a1)
  {
    return sqlite3_create_function(a1, a2, nArg, 1, a5, xFunc, 0, 0);
  }

  else
  {
    return 1;
  }
}

uint64_t CSDBSqliteDatabaseSetLoggingEnabled(uint64_t a1, int a2)
{
  v4 = sub_2478A8128();
  if (!sub_2478AB63C())
  {
    pthread_mutex_lock(&stru_280BCA970);
    dword_27EE54AC8 = a2 != 0;
    pthread_mutex_unlock(&stru_280BCA970);
  }

  v5 = sub_2478A8128();
  if (v5 != v4)
  {
    v6 = v5;
    v7 = CSDBSqliteDatabaseConnectionForWritingWithOwnership(a1, 1);
    if (v7)
    {
      v8 = v7;
      if (v6)
      {
        v9 = sub_2478A8174;
      }

      else
      {
        v9 = 0;
      }

      sqlite3_trace_v2(*(v7 + 8), 2u, v9, 0);
      v10 = *v8;
      if (*v8 && (*(v10 + 84) & 4) != 0)
      {
        pthread_mutex_unlock((v10 + 88));
      }
    }
  }

  return 0;
}

BOOL sub_2478A8128()
{
  pthread_mutex_lock(&stru_280BCA970);
  v0 = dword_27EE54AC8;
  pthread_mutex_unlock(&stru_280BCA970);
  return (sub_2478AB63C() | v0) != 0;
}

uint64_t sub_2478A8174(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1 == 2)
  {
    if (a4)
    {
      v5 = *a4;
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v9 = 136315394;
          v10 = a3;
          v11 = 2048;
          v12 = v5 >> 20;
          _os_log_impl(&dword_24789E000, v6, OS_LOG_TYPE_INFO, "==\nCSDBSqlite: %s\nTime: %llu ms\n", &v9, 0x16u);
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CSDBSqliteSetupLoggingForDatabaseHandle(sqlite3 *a1)
{
  result = sub_2478A8128();
  if (a1 && result)
  {

    return sqlite3_trace_v2(a1, 2u, sub_2478A8174, 0);
  }

  return result;
}

uint64_t sub_2478A82C8(uint64_t a1, int a2, char **a3, const char **a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v8 = 0;
  }

  else if (*(a1 + 1))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 8);
        v22 = 136315138;
        v23 = v10;
        _os_log_impl(&dword_24789E000, v9, OS_LOG_TYPE_INFO, "----- Explaining Query -----\n%s\n", &v22, 0xCu);
      }
    }

    v8 = 0;
    *(a1 + 16) = 1;
    *(a1 + 20) = 1;
  }

  else
  {
    v8 = 1;
  }

  if (a2 >= 1)
  {
    v11 = a2;
    while (strcmp(*a4, "detail"))
    {
      ++a3;
      ++a4;
      if (!--v11)
      {
        goto LABEL_26;
      }
    }

    v12 = *a3;
    if (strstr(*a3, "WITH INDEX") || strstr(v12, "USING PRIMARY KEY"))
    {
      if (*(a1 + 2))
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_26;
      }

      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 2) != 0;
      if ((v8 & v14) == 1)
      {
        if (*(a1 + 1))
        {
          v14 = 1;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = *(a1 + 8);
              v22 = 136315138;
              v23 = v21;
              _os_log_impl(&dword_24789E000, v20, OS_LOG_TYPE_INFO, "--------------------------\n !!!!! NOT INDEXED !!!!!\n--------------------------\n%s\n--------------------------\n", &v22, 0xCu);
            }
          }

          v14 = 1;
          *(a1 + 16) = 1;
          *(a1 + 20) = 2;
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = "";
        v17 = *a3;
        if (v14)
        {
          v16 = " ***** NO INDEX *****";
        }

        v22 = 136315394;
        v23 = v16;
        v24 = 2080;
        v25 = v17;
        _os_log_impl(&dword_24789E000, v15, OS_LOG_TYPE_INFO, " ==>>%s %s\n", &v22, 0x16u);
      }
    }
  }

LABEL_26:
  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

void CSDBSqliteConnectionSetBusyTimeout(double a1)
{
  v6 = *MEMORY[0x277D85DE8];
  qword_27EE54A98 = *&a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 134217984;
      v5 = a1;
      _os_log_impl(&dword_24789E000, v2, OS_LOG_TYPE_INFO, "Set Busy timeout to %f", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t CSDBSqliteConnectionRollback(uint64_t a1)
{
  if (sqlite3_get_autocommit(*(a1 + 8)))
  {
    return 0;
  }

  result = CSDBSqliteConnectionPerformSQL(a1, @"ROLLBACK;");
  *(a1 + 40) = 0xFFFF;
  return result;
}

void CSDBSqliteStatementBindValuesForColumns(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v4 = a3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v6 = a3;
      do
      {
        CSDBSqliteBindColumnValue(a1, a2);
        a2 += 24;
        --v6;
      }

      while (v6);
    }
  }
}

UInt8 *CSDBSqliteConnectionCopyValuesForPropertiesLike(UInt8 *result, const __CFString *a2, __CFArray **a3, __CFArray **a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (*result)
    {
      result = sub_24789EE28(result, @"SELECT key, value FROM _SqliteDatabaseProperties WHERE key LIKE ?;", 0);
      if (result)
      {
        v8 = result;
        CSDBSqliteBindTextFromCFString(result, a2);
        v9 = v8[1];
        if (v9)
        {
          Mutable = 0;
          v11 = 0;
          v12 = *MEMORY[0x277CBECE8];
          v13 = *MEMORY[0x277CBEEE8];
          v14 = MEMORY[0x277CBF128];
          while (1)
          {
            v15 = CSDBSqliteStepWithConnection(*v8, v9);
            if (v15 != 100)
            {
              if (v15 == 101)
              {
                goto LABEL_40;
              }

              goto LABEL_37;
            }

            if (!a3)
            {
              goto LABEL_20;
            }

            v16 = sqlite3_column_text(v8[1], 0);
            v17 = v16 ? CFStringCreateWithCString(v12, v16, 0x8000100u) : 0;
            if (a4 | v17)
            {
              break;
            }

LABEL_32:
            v9 = v8[1];
            if (!v9)
            {
              goto LABEL_37;
            }
          }

          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v12, 0, v14);
          }

          if (v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v13;
          }

          CFArrayAppendValue(Mutable, v18);
          if (v17)
          {
            CFRelease(v17);
          }

LABEL_20:
          if (a4)
          {
            v19 = sqlite3_column_text(v8[1], 1);
            v20 = v19 ? CFStringCreateWithCString(v12, v19, 0x8000100u) : 0;
            if (a3 | v20)
            {
              if (!v11)
              {
                v11 = CFArrayCreateMutable(v12, 0, v14);
              }

              if (v20)
              {
                v21 = v20;
              }

              else
              {
                v21 = v13;
              }

              CFArrayAppendValue(v11, v21);
              if (v20)
              {
                CFRelease(v20);
              }
            }
          }

          goto LABEL_32;
        }

        v11 = 0;
        Mutable = 0;
LABEL_37:
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = sqlite3_errmsg(*(*v8 + 1));
            v24 = sqlite3_extended_errcode(*(*v8 + 1));
            v25 = 136315650;
            v26 = "CSDBSqliteConnectionCopyValuesForPropertiesLike";
            v27 = 2080;
            v28 = v23;
            v29 = 1024;
            v30 = v24;
            _os_log_impl(&dword_24789E000, v22, OS_LOG_TYPE_INFO, "%s: %s (%d)\n", &v25, 0x1Cu);
          }
        }

LABEL_40:
        result = CSDBSqliteStatementReset(v8);
        if (a3 && Mutable)
        {
          *a3 = Mutable;
        }

        if (a4 && v11)
        {
          *a4 = v11;
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSDBSqliteConnectionIntegerForPropertyWithDefaultValue(uint64_t a1, const __CFString *a2, unsigned int a3)
{
  v5 = 0;
  LODWORD(result) = sub_2478A1044(a1, a2, 0, &v5);
  if (v5)
  {
    return result;
  }

  else
  {
    return a3;
  }
}

const char *CSDBSqliteErrMsg(const char *result)
{
  if (result)
  {
    return sqlite3_errmsg(*(result + 1));
  }

  return result;
}

void CSDBSetCorruptedDatabaseHandler(uint64_t a1)
{
  if (a1)
  {
    qword_280BCA940 = a1;
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24789E000, v1, OS_LOG_TYPE_INFO, "setting corruption handler", buf, 2u);
      }
    }
  }

  else
  {
    *buf = "/Library/Caches/com.apple.xbs/Sources/CoreSDB/Source/Database/CSDBSqliteUtilities.m";
    v14 = 0;
    v15 = "void CSDBSetCorruptedDatabaseHandler(CSDBCorruptedDatabaseHandler)";
    v16 = "CSDBSetCorruptedDatabaseHandler";
    v17 = 1982;
    v2 = MEMORY[0x277CCACA8];
    v3 = IMFileLocationTrimFileName();
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, &stru_28597FC80);
    v7 = objc_msgSend_stringWithFormat_(v2, v6, @"Unexpected nil '%@' in %s at %s:%d. %@", @"function", "void CSDBSetCorruptedDatabaseHandler(CSDBCorruptedDatabaseHandler)", v3, 1982, v5);
    v8 = IMGetAssertionFailureHandler();
    if (v8)
    {
      v8(v7);
    }

    else
    {
      v11 = objc_msgSend_warning(MEMORY[0x277D19298], v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_2478AD9A8(v7, v11);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24789E000, v12, OS_LOG_TYPE_INFO, "setting NULL corruption handler (set to default)", buf, 2u);
      }
    }

    qword_280BCA940 = CSDBSetAsideInPlaceCorruptedDatabaseHandler;
  }
}

void CSDBSetAsideInPlaceCorruptedDatabaseHandler(void **a1, char *a2, uint64_t a3, uint64_t a4, sqlite3_stmt *a5)
{
  v7 = a3;
  v39 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = *a1;
    v11 = objc_msgSend_stringByDeletingPathExtension(*a1, a2, a3);
  }

  else
  {
    v10 = 0;
    v11 = objc_msgSend_stringByDeletingPathExtension(0, a2, a3);
  }

  v14 = objc_msgSend_mutableCopy(v11, v12, v13);
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v15, v16);
  v18 = v17;
  v35 = objc_msgSend_pathExtension(v10, v19, v20);
  objc_msgSend_appendFormat_(v14, v21, @"-corrupted-(%f).%@");
  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 67109890;
      *&buf[4] = v7;
      *&buf[8] = 2112;
      *&buf[10] = v10;
      *&buf[18] = 2112;
      *&buf[20] = v14;
      *&buf[28] = 2080;
      *&buf[30] = a4;
      _os_log_impl(&dword_24789E000, v29, OS_LOG_TYPE_INFO, "encountered corruption error %d while accessing %@, attempting to set aside database here: %@. Called from: %s", buf, 0x26u);
    }
  }

  if (a5)
  {
    sub_2478A9494(a2, a4, a5, v24, v25, v26, v27, v28, v18, v35, v36, ppDb, *buf, *&buf[8], *&buf[16], *&buf[24], *&buf[32], v39, v40, v41, v42, v43);
  }

  v30 = objc_msgSend_UTF8String(v14, v22, v23);
  v31 = v30;
  if (v30)
  {
    ppDb = 0;
    if (!sqlite3_open(v30, &ppDb))
    {
      if (!sqlite3_file_control(ppDb, 0, 102, a2))
      {
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v31;
            *&buf[22] = 2080;
            *&buf[24] = a4;
            _os_log_impl(&dword_24789E000, v32, OS_LOG_TYPE_INFO, "Database at path %@ is corrupt. Copying it to %s for further investigation. Called from: %s.", buf, 0x20u);
          }
        }
      }

      sqlite3_close(ppDb);
    }

    sub_2478A9638(a2, v10);
  }

  else if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2080;
      *&buf[24] = a4;
      _os_log_impl(&dword_24789E000, v33, OS_LOG_TYPE_INFO, "SQLITE_CORRUPT handling code is unable to set aside the corrupt database because the path is unknown.  db=%p, path=%@. Called from: %s.", buf, 0x20u);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void *CSDBGetCorruptDatabaseHandler()
{
  if (qword_27EE54AA8 != -1)
  {
    sub_2478ADA20();
  }

  v0 = CSDBDefaultCorruptedDatabaseHandler;
  if (byte_27EE54AA0 == 1)
  {
    v0 = qword_280BCA940;
    if (!qword_280BCA940)
    {
      if (IMOSLoggingEnabled())
      {
        v1 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          *v3 = 0;
          _os_log_impl(&dword_24789E000, v1, OS_LOG_TYPE_INFO, "No database corruption handler found - resetting to default handler", v3, 2u);
        }
      }

      v0 = CSDBSetAsideInPlaceCorruptedDatabaseHandler;
      qword_280BCA940 = CSDBSetAsideInPlaceCorruptedDatabaseHandler;
    }
  }

  return v0;
}

uint64_t sub_2478A9024(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], a2, a3);
  result = objc_msgSend_isInternalInstall(v3, v4, v5);
  byte_27EE54AA0 = result;
  return result;
}

void CSDBDefaultCorruptedDatabaseHandler(const __CFString **a1, sqlite3 *a2, int a3, uint64_t a4, sqlite3_stmt *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = *a1;
  if (!*a1)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = CSDBCreateUTF8StringFromCFString(*a1);
LABEL_6:
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109634;
      *&buf[4] = a3;
      *&buf[8] = 2080;
      *&buf[10] = v11;
      *&buf[18] = 2080;
      *&buf[20] = a4;
      _os_log_impl(&dword_24789E000, v17, OS_LOG_TYPE_INFO, "SQLITE_CORRUPT encountered error %d while accessing %s, exiting with default corruption handler! Called from: %s", buf, 0x1Cu);
    }
  }

  if (a5)
  {
    sub_2478A9494(a2, a4, a5, v12, v13, v14, v15, v16, v34, v35, v36, ppDb, *buf, *&buf[8], *&buf[16], *&buf[24], *&buf[32], v39, v40, v41, v42, v43);
  }

  if (v11)
  {
    v18 = malloc_type_calloc(1uLL, 0x400uLL, 0xBABAA1AAuLL);
    v19 = malloc_type_calloc(1uLL, 0x400uLL, 0x8A9B3802uLL);
    ppDb = 0;
    if (v18)
    {
      v20 = strlen(v11);
      v21 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], v11, v20, 0);
      v22 = v21;
      if (v21)
      {
        PathComponent = CFURLCopyLastPathComponent(v21);
        v24 = PathComponent;
        if (PathComponent)
        {
          CFStringGetCString(PathComponent, v18, 1024, 0x8000100u);
          CFRelease(v24);
        }

        CFRelease(v22);
      }
    }

    *buf = 0;
    v25 = NSTemporaryDirectory();
    v28 = objc_msgSend_fileSystemRepresentation(v25, v26, v27);
    if (v28[strlen(v28) - 1] == 47)
    {
      v29 = "";
    }

    else
    {
      v29 = "/";
    }

    asprintf(buf, "%s%s%s.XXXXXX", v28, v29, v18);
    if (*buf)
    {
      mkstemp(*buf);
      if (v19)
      {
        __strlcpy_chk();
      }

      free(*buf);
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 67109890;
        *&buf[4] = a3;
        *&buf[8] = 2112;
        *&buf[10] = v10;
        *&buf[18] = 2080;
        *&buf[20] = v19;
        *&buf[28] = 2080;
        *&buf[30] = a4;
        _os_log_impl(&dword_24789E000, v30, OS_LOG_TYPE_INFO, "encountered corruption error %d while accessing %@, attempting to set aside database here: %s. Called from: %s", buf, 0x26u);
      }
    }

    if (!sqlite3_open(v19, &ppDb))
    {
      if (!sqlite3_file_control(ppDb, 0, 102, a2))
      {
        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            *&buf[4] = v11;
            *&buf[12] = 2080;
            *&buf[14] = v19;
            *&buf[22] = 2080;
            *&buf[24] = a4;
            _os_log_impl(&dword_24789E000, v31, OS_LOG_TYPE_INFO, "Database at path %s is corrupt. Copied it to %s for further investigation. Called from: %s.", buf, 0x20u);
          }
        }
      }

      sqlite3_close(ppDb);
    }

    free(v18);
    free(v19);
    sub_2478A9638(a2, v10);
    free(v11);
  }

  else if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2080;
      *&buf[14] = 0;
      *&buf[22] = 2080;
      *&buf[24] = a4;
      _os_log_impl(&dword_24789E000, v32, OS_LOG_TYPE_INFO, "SQLITE_CORRUPT handling code is unable to delete the corrupt database because the path is unknown.  db=%p, path=%s. Called from: %s", buf, 0x20u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_2478A9494(sqlite3 *exc_buf, uint64_t a2, sqlite3_stmt *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v28 = 136315906;
        v29 = a2;
        v30 = 2080;
        v31 = sqlite3_errmsg(exc_buf);
        v32 = 2080;
        v33 = sqlite3_sql(a3);
        v34 = 1024;
        v35 = sqlite3_extended_errcode(exc_buf);
        _os_log_impl(&dword_24789E000, v25, OS_LOG_TYPE_INFO, "SQLite error in function: %s message: %s sql: %s (%d)", &v28, 0x26u);
      }
    }

    v26 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v27 = *MEMORY[0x277D85DE8];

    sub_2478A9C80(exc_buf, a2);
  }
}

BOOL sub_2478A9638(sqlite3 *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v19 = a2;
      _os_log_impl(&dword_24789E000, v4, OS_LOG_TYPE_INFO, "Cleaning up corrupt database: %@", buf, 0xCu);
    }
  }

  v17 = 189;
  v5 = sqlite3_file_control(a1, 0, 101, &v17);
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = sqlite3_extended_errcode(a1);
        v8 = sqlite3_errmsg(a1);
        *buf = 67109634;
        *v19 = v5;
        *&v19[4] = 1024;
        *&v19[6] = v7;
        v20 = 2080;
        v21 = v8;
        _os_log_impl(&dword_24789E000, v6, OS_LOG_TYPE_INFO, "_CSDBSqliteDatabaseCloseAndDelete unable to truncate database: %d (%d); %s", buf, 0x18u);
      }
    }
  }

  v9 = sqlite3_close(a1);
  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = sqlite3_extended_errcode(a1);
        v13 = sqlite3_errmsg(a1);
        *buf = 67109634;
        *v19 = v9;
        *&v19[4] = 1024;
        *&v19[6] = v12;
        v20 = 2080;
        v21 = v13;
        _os_log_impl(&dword_24789E000, v11, OS_LOG_TYPE_INFO, "_CSDBSqliteDatabaseCloseAndDelete unable to close the source database. SQLite error: [%d] (%d) %s", buf, 0x18u);
        if (!v5)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }

  else if (v10)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24789E000, v14, OS_LOG_TYPE_INFO, "_CSDBSqliteDatabaseCloseAndDelete Closed the source database after truncation.", buf, 2u);
    }
  }

  if (v5)
  {
LABEL_17:
    CSDBSqliteDeleteDatabase(a2);
  }

LABEL_18:
  result = v5 == 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2478A98A0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x2478A9864);
    }

    JUMPOUT(0x2478A985CLL);
  }

  _Unwind_Resume(a1);
}

BOOL CSDBDatabasePassesIntegrityCheckAtPath(void *a1, const char *a2, uint64_t a3)
{
  ppDb = 0;
  v3 = objc_msgSend_UTF8String(a1, a2, a3);
  v4 = sqlite3_open_v2(v3, &ppDb, 1, 0);
  if ((v4 - 100) >= 2 && v4 != 0)
  {
    return 0;
  }

  pStmt = 0;
  v8 = ppDb;
  v9 = objc_msgSend_UTF8String(@"PRAGMA integrity_check;", v5, v6);
  v10 = sqlite3_prepare_v2(v8, v9, -1, &pStmt, 0);
  if ((v10 - 100) < 2 || v10 == 0)
  {
    do
    {
      v10 = sqlite3_step(pStmt);
    }

    while (v10 == 100);
  }

  v12 = v10;
  if (pStmt)
  {
    sqlite3_finalize(pStmt);
    pStmt = 0;
  }

  if (ppDb)
  {
    sqlite3_close_v2(ppDb);
  }

  return v12 == 101 || v12 == 0;
}

void sub_2478A99BC(uint64_t a1, sqlite3 *a2, uint64_t a3, uint64_t a4, sqlite3_stmt *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = CSDBGetCorruptDatabaseHandler();
  if (v10)
  {
    v10(a1, a2, a3, a4, a5);
  }

  else
  {
    v30 = "/Library/Caches/com.apple.xbs/Sources/CoreSDB/Source/Database/CSDBSqliteUtilities.m";
    v31 = 0;
    v32 = "void _CSDBHandleCorruptError(CSDBSqliteDatabase *, sqlite3 *, int, const char *, sqlite3_stmt *)";
    v33 = "_CSDBHandleCorruptError";
    v34 = 2116;
    v11 = MEMORY[0x277CCACA8];
    v12 = IMFileLocationTrimFileName();
    v28 = 2116;
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, &stru_28597FC80);
    v26 = "void _CSDBHandleCorruptError(CSDBSqliteDatabase *, sqlite3 *, int, const char *, sqlite3_stmt *)";
    v27 = v12;
    v25 = @"handler";
    v15 = objc_msgSend_stringWithFormat_(v11, v14, @"Unexpected nil '%@' in %s at %s:%d. %@");
    v16 = IMGetAssertionFailureHandler();
    if (v16)
    {
      v16(v15);
    }

    else
    {
      v19 = objc_msgSend_warning(MEMORY[0x277D19298], v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_error_impl(&dword_24789E000, v19, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &buf, 0xCu);
      }
    }
  }

  sub_2478A9494(a2, a4, a5, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, buf, *(&buf + 1), v36, v37);
  exit(2);
}

uint64_t sub_2478A9B24()
{
  result = IMGetAppBoolForKey();
  byte_27EE54AB8 = result;
  return result;
}

void CSDBSqliteBindDouble(uint64_t a1, double a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4 >= 1)
      {
        sqlite3_bind_double(v3, v4, a2);
LABEL_12:
        ++*(a1 + 16);
        goto LABEL_13;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"YES";
      if (a1)
      {
        v7 = *(a1 + 16);
      }

      else
      {
        v6 = @"NO";
        v7 = 0;
      }

      v9 = 138412546;
      v10 = v6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_24789E000, v5, OS_LOG_TYPE_INFO, "Invalid parameters passed into CSDBSqliteBindDouble s==NULL ? %@  bindIndex = %d", &v9, 0x12u);
    }
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2478A9C80(sqlite3 *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = a2;
      v8 = 2080;
      v9 = sqlite3_errmsg(a1);
      v10 = 1024;
      v11 = sqlite3_extended_errcode(a1);
      _os_log_impl(&dword_24789E000, v4, OS_LOG_TYPE_INFO, "SQLite error in function: %s for handle: %s (%d)", &v6, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t CSDBSqliteUtilitiesGetSchemaVersionAtPathWithProtection(const __CFString *a1)
{
  v1 = CSDBCreateUTF8StringFromCFString(a1);
  ppDb = 0;
  v2 = sqlite3_open_v2(v1, &ppDb, 1, 0);
  v3 = ppDb;
  if (ppDb)
  {
    if (v2)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      pStmt = 0;
      v5 = sqlite3_prepare_v2(ppDb, "SELECT value FROM _SqliteDatabaseProperties WHERE key = ?;", 58, &pStmt, 0);
      v6 = pStmt;
      if (pStmt)
      {
        if (v5)
        {
          v4 = 0xFFFFFFFFLL;
        }

        else
        {
          sqlite3_bind_text(pStmt, 1, "_ClientVersion", 14, 0);
          if (sqlite3_step(pStmt) == 100)
          {
            v4 = sqlite3_column_int(pStmt, 0);
          }

          else
          {
            v4 = 0xFFFFFFFFLL;
          }

          sqlite3_reset(pStmt);
          v6 = pStmt;
        }

        sqlite3_finalize(v6);
      }

      else
      {
        v4 = 0xFFFFFFFFLL;
      }

      v3 = ppDb;
    }

    sqlite3_close(v3);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  free(v1);
  return v4;
}

uint64_t CSDBSqliteSetDefaultPageCacheSize(uint64_t result)
{
  if (result >= 1)
  {
    dword_280BCA948 = result;
  }

  return result;
}

void *CSDBSqliteStep(void *result)
{
  if (result)
  {
    v1 = result[1];
    if (v1)
    {
      return (CSDBSqliteStepWithConnection(*result, v1) == 100);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CSDBRegisterReconnectBlockWithIdentifier(void *a1, uint64_t a2, void *a3)
{
  pthread_mutex_lock(&stru_27EE54A58);
  if (!qword_27EE54AC0)
  {
    qword_27EE54AC0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (a1 && a2 && a3)
  {
    v8 = objc_msgSend_copy(a1, v6, v7);
    v11 = sub_2478A4C58(a3, v9, v10);
    second = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D19288], v12, v8, v11);
    objc_msgSend_setObject_forKey_(qword_27EE54AC0, v14, second, a2);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  return pthread_mutex_unlock(&stru_27EE54A58);
}

uint64_t CSDBDeregisterReconnectBlockWithIdentifier(uint64_t a1)
{
  pthread_mutex_lock(&stru_27EE54A58);
  if (a1 && qword_27EE54AC0)
  {
    objc_msgSend_removeObjectForKey_(qword_27EE54AC0, v2, a1);
  }

  return pthread_mutex_unlock(&stru_27EE54A58);
}

sqlite3 **sub_2478AA048(uint64_t *a1, const char *a2, char a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004033174AE8uLL);
  if (strcmp(a2, ":memory:"))
  {
    if (access(a2, 6) == -1 && *__error() != 2)
    {
      v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *v31.st_qspare = v7;
      *&v31.st_size = v7;
      *&v31.st_blksize = v7;
      v31.st_ctimespec = v7;
      v31.st_birthtimespec = v7;
      v31.st_atimespec = v7;
      v31.st_mtimespec = v7;
      *&v31.st_dev = v7;
      *&v31.st_uid = v7;
      if (!stat(a2, &v31))
      {
        st_uid = v31.st_uid;
        if (st_uid == geteuid())
        {
          if (IMOSLoggingEnabled())
          {
            v9 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              v31.st_dev = 136315138;
              *&v31.st_mode = a2;
              _os_log_impl(&dword_24789E000, v9, OS_LOG_TYPE_INFO, "Fixing permissions on %s", &v31, 0xCu);
            }
          }

          if (chmod(a2, 0x180u) < 0)
          {
            if (IMOSLoggingEnabled())
            {
              v10 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                v11 = __error();
                v12 = strerror(*v11);
                v31.st_dev = 136315394;
                *&v31.st_mode = v12;
                WORD2(v31.st_ino) = 2080;
                *(&v31.st_ino + 6) = a2;
                _os_log_impl(&dword_24789E000, v10, OS_LOG_TYPE_INFO, "Error %s setting permissions on %s", &v31, 0x16u);
              }
            }
          }
        }
      }
    }
  }

  v13 = a1[22];
  if (v13)
  {
    v14 = CSDBCreateUTF8StringFromCFString(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 46);
  if (v15)
  {
    v16 = 4194310;
  }

  else
  {
    v16 = 3145734;
  }

  if (v15 == 1)
  {
    v17 = 1048582;
  }

  else
  {
    v17 = v16;
  }

  v18 = sqlite3_open_v2(a2, v6 + 1, v17, v14);
  if (*(a1 + 196))
  {
    v19 = *(a1 + 48);
    if ((v19 & 0x80000000) == 0)
    {
      v20 = *(a1 + 47);
      if ((v20 & 0x80000000) == 0)
      {
        v21 = sqlite3_db_config(v6[1], 1001, 0, *(a1 + 47), v19);
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *a1;
          v31.st_dev = 67109890;
          *&v31.st_mode = v21;
          LOWORD(v31.st_ino) = 1024;
          *(&v31.st_ino + 2) = v20;
          HIWORD(v31.st_ino) = 1024;
          v31.st_uid = v19;
          LOWORD(v31.st_gid) = 2112;
          *(&v31.st_gid + 2) = v23;
          _os_log_impl(&dword_24789E000, v22, OS_LOG_TYPE_DEFAULT, "sqlite3_db_config lookaside set {result: %d, size: %d, count: %d, path: %@}", &v31, 0x1Eu);
        }
      }
    }
  }

  if ((a3 & 1) == 0)
  {
    chmod(a2, 0x1FFu);
  }

  if (v14)
  {
    free(v14);
  }

  v24 = v6[1];
  if (!v24 || v18)
  {
    if (v24)
    {
      sqlite3_close(v24);
      v6[1] = 0;
    }

    free(v6);
    v6 = 0;
  }

  else
  {
    *v6 = a1;
    *(v6 + 10) = 0xFFFF;
    v30 = 1;
    sqlite3_file_control(v24, 0, 10, &v30);
    if (dword_280BCA948 >= 10)
    {
      v25.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v25.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v31.st_size = v25;
      *&v31.st_blksize = v25;
      v31.st_ctimespec = v25;
      v31.st_birthtimespec = v25;
      v31.st_atimespec = v25;
      v31.st_mtimespec = v25;
      *&v31.st_dev = v25;
      *&v31.st_uid = v25;
      snprintf(&v31, 0x80uLL, "PRAGMA cache_size=%d;", dword_280BCA948);
      sqlite3_exec(v6[1], &v31, 0, 0, 0);
    }

    v26 = a1[20];
    if (v26)
    {
      sqlite3_busy_handler(v6[1], v26, a1[21]);
    }

    else
    {
      sqlite3_busy_timeout(v6[1], 30000);
    }

    CSDBSqliteSetupLoggingForDatabaseHandle(v6[1]);
    v27 = a1[4];
    if (v27)
    {
      v27(a1, v6);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

sqlite3 **sub_2478AA46C(uint64_t *a1, const char *a2, sqlite3 ***a3)
{
  if (*a3)
  {
    sub_2478A473C(*a3);
    *a3 = 0;
  }

  result = sub_2478AA048(a1, a2, 1);
  *a3 = result;
  if (result)
  {

    return CSDBSqliteConnectionBeginTransactionType(result, 0);
  }

  return result;
}

uint64_t sub_2478AA4E8(uint64_t a1, const char *a2, uint64_t *a3)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    sub_2478ADA48();
  }

  if (*a3)
  {
    sub_2478A473C(*a3);
    *a3 = 0;
  }

  v6 = dlopen("/System/Library/PrivateFrameworks/DataMigration.framework/DataMigration", 1);
  if (!v6)
  {
LABEL_14:
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      v15 = 1;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        return v15;
      }

      *buf = 0;
      v17 = "migration daemon failed to upgrade";
      v18 = buf;
LABEL_17:
      _os_log_impl(&dword_24789E000, v16, OS_LOG_TYPE_INFO, v17, v18, 2u);
      return v15;
    }

    return 1;
  }

  v7 = v6;
  v8 = dlsym(v6, "DMPerformMigration");
  if (!v8)
  {
    dlclose(v7);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = CFStringCreateWithFormat(0, 0, @"Database version conflict detected: %s", a2);
  LODWORD(v9) = v9();
  CFRelease(v10);
  dlclose(v7);
  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = sub_2478AA048(a1, a2, 1);
  *a3 = v11;
  if (v11)
  {
    CSDBSqliteConnectionBeginTransactionType(v11, 0);
    v12 = *a3;
    v22 = 0;
    v13 = sub_2478A1044(v12, @"_ClientVersion", 0, &v22);
    v14 = v22 ? v13 : 0;
    if (v14 != *(a1 + 80))
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        v15 = 1;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          return v15;
        }

        v20 = 0;
        v17 = "migration was performed, but the version is still wrong. deleting database file.";
        v18 = &v20;
        goto LABEL_17;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_2478AA6C4(uint64_t a1, const char *a2, uint64_t a3, sqlite3 ***a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    sub_2478ADA74();
  }

  v5 = *(a1 + 48);
  if (!v5 || !*(a1 + 56))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_37;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    v13 = 1;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v15 = "Incompatible versions detected, but no migration handlers provided: moving-aside database file";
LABEL_18:
    _os_log_impl(&dword_24789E000, v14, OS_LOG_TYPE_INFO, v15, buf, 2u);
    goto LABEL_38;
  }

  v9 = v5(a1, *a4, a3, *(a1 + 72));
  v10 = IMOSLoggingEnabled();
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_37;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    v13 = 1;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v15 = "Incompatible versions detected, but migration handler is incapable of upgrading: moving-aside database file";
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24789E000, v11, OS_LOG_TYPE_INFO, "doing the migration", buf, 2u);
    }
  }

  v12 = (*(a1 + 56))(a1, *a4, a3, *(a1 + 72));
  v13 = 0;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_24789E000, v16, OS_LOG_TYPE_INFO, "Migration handler: client is upgrading database in background", buf, 2u);
          }
        }

        if (!*a4)
        {
          goto LABEL_32;
        }

        sub_2478A473C(*a4);
        v13 = 0;
        *a4 = 0;
      }

      goto LABEL_38;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      v13 = 1;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      *buf = 0;
      v15 = "Migration handler failed to upgrade: moving-aside database file";
      goto LABEL_18;
    }

LABEL_37:
    v13 = 1;
    goto LABEL_38;
  }

  if (!v12)
  {
    CSDBSqliteConnectionSetIntegerForProperty(*a4, @"_ClientVersion", *(a1 + 80));
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 80);
        v19 = *a4;
        v24 = 0;
        v20 = sub_2478A1044(v19, @"_ClientVersion", 0, &v24);
        if (v24)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        *buf = 67109376;
        v26 = v18;
        v27 = 1024;
        v28 = v21;
        _os_log_impl(&dword_24789E000, v17, OS_LOG_TYPE_INFO, "set schema version %d (Read: %d)", buf, 0xEu);
      }
    }

    goto LABEL_32;
  }

  if (v12 == 1)
  {
    sub_2478AA46C(a1, a2, a4);
LABEL_32:
    v13 = 0;
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

sqlite3 **sub_2478AAA54(uint64_t a1, const char *a2, int a3, uint64_t a4, sqlite3 ***a5)
{
  *&buf[1024] = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24789E000, v10, OS_LOG_TYPE_INFO, "Moving aside DB due to failed migration / incompatibility.", buf, 2u);
    }
  }

  memset(&buf[1], 170, 0x3FFuLL);
  memset(&buffer[1], 170, 0x3FFuLL);
  buf[0] = 0;
  buffer[0] = 0;
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *a1);
  v12 = MutableCopy;
  if (a4 == -1)
  {
    CFStringAppendFormat(MutableCopy, 0, @".incompatible.unknownversion.sqlitedb");
  }

  else
  {
    CFStringAppendFormat(MutableCopy, 0, @".incompatible.v%i.sqlitedb", a4);
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v65 = 138412290;
      *v66 = v12;
      _os_log_impl(&dword_24789E000, v13, OS_LOG_TYPE_INFO, "Destination path: %@", v65, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *a1;
      *v65 = 138412290;
      *v66 = v15;
      _os_log_impl(&dword_24789E000, v14, OS_LOG_TYPE_INFO, "Source path: %@", v65, 0xCu);
    }
  }

  CFStringGetCString(v12, buf, 1024, 0x8000100u);
  CFStringGetCString(*a1, buffer, 1024, 0x8000100u);
  v16 = *(a1 + 184);
  if (v16)
  {
    v17 = 4194306;
  }

  else
  {
    v17 = 3145730;
  }

  if (v16 == 1)
  {
    v18 = 1048578;
  }

  else
  {
    v18 = v17;
  }

  ppDb = 0;
  v19 = sqlite3_open_v2(buffer, &ppDb, v18, 0);
  if (v19)
  {
    goto LABEL_76;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v65 = 0;
      _os_log_impl(&dword_24789E000, v20, OS_LOG_TYPE_INFO, "Opened the source database to force WAL journal mode.", v65, 2u);
    }
  }

  sqlite3_exec(ppDb, "pragma JOURNAL_MODE=wal", 0, 0, 0);
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v65 = 0;
      _os_log_impl(&dword_24789E000, v21, OS_LOG_TYPE_INFO, "Closing the source database to clean up any support files.", v65, 2u);
    }
  }

  sqlite3_close(ppDb);
  ppDb = 0;
  v19 = sqlite3_open_v2(buffer, &ppDb, v18, 0);
  if (v19)
  {
LABEL_76:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = sqlite3_extended_errcode(ppDb);
        v24 = sqlite3_errmsg(ppDb);
        *v65 = 67109634;
        *v66 = v19;
        *&v66[4] = 1024;
        *&v66[6] = v23;
        v67 = 2080;
        *v68 = v24;
        v25 = "Unable to open the source database. SQLite error: [%d] (%d) %s";
        v26 = v22;
LABEL_30:
        v27 = 24;
LABEL_31:
        _os_log_impl(&dword_24789E000, v26, OS_LOG_TYPE_INFO, v25, v65, v27);
        goto LABEL_32;
      }
    }

    goto LABEL_32;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *v65 = 0;
      _os_log_impl(&dword_24789E000, v30, OS_LOG_TYPE_INFO, "Opened the source database.", v65, 2u);
    }
  }

  v31 = *(a1 + 184);
  v32 = 4194310;
  if (!v31)
  {
    v32 = 3145734;
  }

  if (v31 == 1)
  {
    v33 = 1048582;
  }

  else
  {
    v33 = v32;
  }

  db = 0;
  v34 = sqlite3_open_v2(buf, &db, v33, 0);
  v35 = IMOSLoggingEnabled();
  if (!v34)
  {
    if (v35)
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *v65 = 0;
        _os_log_impl(&dword_24789E000, v39, OS_LOG_TYPE_INFO, "Opened the destination database.", v65, 2u);
      }
    }

    v40 = sqlite3_file_control(db, 0, 102, ppDb);
    v41 = IMOSLoggingEnabled();
    if (v40)
    {
      if (v41)
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = sqlite3_extended_errcode(ppDb);
          v44 = sqlite3_extended_errcode(db);
          v45 = sqlite3_errmsg(db);
          v46 = sqlite3_errmsg(ppDb);
          *v65 = 67110146;
          *v66 = v40;
          *&v66[4] = 1024;
          *&v66[6] = v43;
          v67 = 1024;
          *v68 = v44;
          *&v68[4] = 2080;
          *&v68[6] = v45;
          v69 = 2080;
          v70 = v46;
          v47 = "Replacing messages database from restore failed. SQLite error: [%d] (source: %d, dest: %d) Destination: %s Source: %s";
          v48 = v42;
          v49 = 40;
LABEL_57:
          _os_log_impl(&dword_24789E000, v48, OS_LOG_TYPE_INFO, v47, v65, v49);
        }
      }
    }

    else if (v41)
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *v65 = 0;
        v47 = "Database replacement was successful.";
        v48 = v50;
        v49 = 2;
        goto LABEL_57;
      }
    }

    v51 = sqlite3_close(db);
    v52 = IMOSLoggingEnabled();
    if (v51)
    {
      if (v52)
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = sqlite3_extended_errcode(db);
          v55 = sqlite3_errmsg(db);
          *v65 = 67109634;
          *v66 = v51;
          *&v66[4] = 1024;
          *&v66[6] = v54;
          v67 = 2080;
          *v68 = v55;
          v56 = "Unable to close the destination database. SQLite error: [%d] (%d) %s";
          v57 = v53;
          v58 = 24;
LABEL_65:
          _os_log_impl(&dword_24789E000, v57, OS_LOG_TYPE_INFO, v56, v65, v58);
        }
      }
    }

    else if (v52)
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *v65 = 0;
        v56 = "Closed the destination database.";
        v57 = v59;
        v58 = 2;
        goto LABEL_65;
      }
    }

    v60 = sub_2478A9638(ppDb, *a1);
    v61 = IMOSLoggingEnabled();
    if (v60)
    {
      if (!v61)
      {
        goto LABEL_32;
      }

      v62 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        goto LABEL_32;
      }

      *v65 = 0;
      v25 = "Cleaned up the source database.";
    }

    else
    {
      if (!v61)
      {
        goto LABEL_32;
      }

      v62 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        goto LABEL_32;
      }

      *v65 = 0;
      v25 = "Unable to cleanup corrupt source database.";
    }

    v26 = v62;
    v27 = 2;
    goto LABEL_31;
  }

  if (v35)
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = sqlite3_extended_errcode(db);
      v38 = sqlite3_errmsg(db);
      *v65 = 67109634;
      *v66 = v34;
      *&v66[4] = 1024;
      *&v66[6] = v37;
      v67 = 2080;
      *v68 = v38;
      v25 = "Unable to open the destination database. SQLite error: [%d] (%d) %s";
      v26 = v36;
      goto LABEL_30;
    }
  }

LABEL_32:
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 84) |= 1u;
  *(a1 + 80) = a3;
  result = sub_2478AA46C(a1, a2, a5);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2478AB248(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2478AB1ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_2478AB338(uint64_t a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LODWORD(v41) = 136315138;
        *(&v41 + 4) = a2;
        _os_log_impl(&dword_24789E000, v7, OS_LOG_TYPE_INFO, "Setting up a new database at path %s.", &v41, 0xCu);
      }
    }

    CSDBSqliteConnectionBeginTransactionType(a3, 0);
    v8 = sqlite3_exec(*(a3 + 8), "pragma legacy_file_format = 0;", 0, 0, 0);
    CSDBCheckResultWithStatement(a1, *(a3 + 8), v8, "CSDBSqliteDatabaseSetNewFileFormatPragma", 0, v9, v10, v11, v33, v35, v37, v39, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49);
    v12 = *(a1 + 24);
    if (v12)
    {
      v12(a1, a3);
    }

    v13 = sqlite3_exec(*(a3 + 8), "CREATE TABLE IF NOT EXISTS _SqliteDatabaseProperties (key TEXT, value TEXT, UNIQUE(key));", 0, 0, 0);
    CSDBCheckResultWithStatement(a1, *(a3 + 8), v13, "createAndSetupNewDatabase", 0, v14, v15, v16, v34, v36, v38, v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49);
    if (v13)
    {
      v17 = sqlite3_extended_errcode(*(a3 + 8));
      v18 = sqlite3_errmsg(*(a3 + 8));
      printf("error %d (%d) creating properties table: %s\n", v13, v17, v18);
      *(a1 + 8) = 0;
    }

    else
    {
      v20 = *(a1 + 16);
      if (v20)
      {
        v20(a1, a3, *(a1 + 40));
      }

      if (*(a1 + 84))
      {
        CSDBSqliteConnectionSetIntegerForProperty(a3, @"_ClientVersion", *(a1 + 80));
      }

      v21 = CSDBSqliteConnectionCommit(a3);
      if (v21 == 101 || !v21)
      {
        v22 = objc_alloc(MEMORY[0x277CCACA8]);
        v23 = strlen(a2);
        v25 = objc_msgSend_initWithBytes_length_encoding_(v22, v24, a2, v23, 1);
        v28 = sub_2478A4C58(v25, v26, v27);
        v30 = objc_msgSend_stringByAppendingString_(@"com.apple.coresdb.mandatory_db_reconnect_required.", v29, v28);
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, v30, 0, 0, 1uLL);
        if (v28)
        {
          CFRelease(v28);
        }
      }
    }
  }

  else if (v6)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_24789E000, v19, OS_LOG_TYPE_INFO, "Could not set up new messages database -- unable to create database connection", &v41, 2u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2478AB63C()
{
  pthread_mutex_lock(&stru_280BCA970);
  v0 = dword_280BCA9B0;
  if (dword_280BCA9B0 == -1)
  {
    v0 = getenv("CSDBSQLDEBUG") != 0;
    dword_280BCA9B0 = v0;
  }

  pthread_mutex_unlock(&stru_280BCA970);
  return v0;
}

void *sub_2478AB69C(uint64_t a1, const char *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_first(a3, a2, a3);
  result = objc_msgSend_second(a3, v7, v8);
  if (result)
  {
    v11 = result;
    result = *(a1 + 32);
    if (result)
    {
      result = objc_msgSend_isEqualToString_(result, v10, v11);
      if (result)
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v14 = 138412290;
            v15 = a2;
            _os_log_impl(&dword_24789E000, v12, OS_LOG_TYPE_INFO, "Calling reconnect block for identifier: %@", &v14, 0xCu);
          }
        }

        result = (*(v6 + 16))(v6);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSDBCreateDirectoriesToPathWithOwnership(const char *a1, uid_t a2, gid_t a3, int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v15.st_blksize = v8;
  *v15.st_qspare = v8;
  v15.st_birthtimespec = v8;
  *&v15.st_size = v8;
  v15.st_mtimespec = v8;
  v15.st_ctimespec = v8;
  *&v15.st_uid = v8;
  v15.st_atimespec = v8;
  *&v15.st_dev = v8;
  result = stat(a1, &v15);
  if (result)
  {
    bzero(v16, 0x400uLL);
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = a1 + 1;
      while (1)
      {
        v16[v11] = v10;
        if (v10 == 47 && stat(v16, &v15))
        {
          if (mkdir(v16, 0x1FFu))
          {
            result = *__error();
            goto LABEL_16;
          }

          if (a4)
          {
            chown(v16, a2, a3);
            v13 = 448;
          }

          else
          {
            v13 = 511;
          }

          chmod(v16, v13);
        }

        result = 0;
        if (v11 <= 0x3FD)
        {
          v10 = v12[v11++];
          if (v10)
          {
            continue;
          }
        }

        goto LABEL_16;
      }
    }

    result = 0;
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2478AB8F0()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x24C1AC500]();
  qword_280BCA9E8 = v0;
  if (v0)
  {
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buffer = v1;
    v15 = v1;
    v13 = 32;
    CFRetain(v0);
    v2 = CFCopyHomeDirectoryURLForUser();
    v3 = MEMORY[0x277CBECE8];
    if (v2)
    {
      v4 = v2;
      v5 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
      if (v5)
      {
        v6 = v5;
        qword_280BCA9F8 = sub_2478ABA84(*v3, v5, 0, 0);
        CFRelease(v6);
      }

      CFRelease(v4);
    }

    v7 = *v3;
    v8 = sub_2478ABA84(*v3, qword_280BCA9E8, buffer, &v13);
    if (v8)
    {
      v9 = v8;
      v10 = getpwnam(v8);
      if (v10)
      {
        pw_gid = v10->pw_gid;
        dword_280BCA9E0 = v10->pw_uid;
        dword_280BCA9F4 = pw_gid;
      }

      if (v9 != buffer)
      {
        CFAllocatorDeallocate(v7, v9);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

const char *sub_2478ABA84(uint64_t a1, CFStringRef theString, char *buffer, CFIndex *a4)
{
  v4 = buffer;
  v12 = 0;
  if (a4)
  {
    usedBufLen = a4;
  }

  else
  {
    usedBufLen = &v12;
  }

  if (buffer && *usedBufLen && CFStringGetCString(theString, buffer, *usedBufLen, 0x8000100u))
  {
    *usedBufLen = strlen(v4);
  }

  else
  {
    Length = CFStringGetLength(theString);
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(theString, v13, 0x8000100u, 0, 0, 0, 0, usedBufLen);
    v9 = MEMORY[0x24C1AC320](a1, *usedBufLen + 1, 0x100004077774924, 0);
    if (v9)
    {
      v10 = v9;
      v14.location = 0;
      v14.length = Length;
      CFStringGetBytes(theString, v14, 0x8000100u, 0, 0, v9, *usedBufLen, usedBufLen);
      v10[*usedBufLen] = 0;
      return v10;
    }

    else
    {
      *usedBufLen = 0;
      if (v4)
      {
        *v4 = 0;
      }
    }
  }

  return v4;
}

uint64_t CSDBCreateThreadedRecordStore(uint64_t a1)
{
  v2 = [CSDBThreadedRecordStore alloc];

  return MEMORY[0x2821F9670](v2, sel_initWithIdentifier_qosClass_lookAsideConfig_, a1);
}

uint64_t CSDBCreateThreadedRecordStoreWithQOSClass(uint64_t a1)
{
  v2 = [CSDBThreadedRecordStore alloc];

  return MEMORY[0x2821F9670](v2, sel_initWithIdentifier_qosClass_lookAsideConfig_, a1);
}

uint64_t CSDBCreateThreadedRecordStoreWithQOSClassAndLookAsideBufferConfig(uint64_t a1)
{
  v2 = [CSDBThreadedRecordStore alloc];

  return MEMORY[0x2821F9670](v2, sel_initWithIdentifier_qosClass_lookAsideConfig_, a1);
}

void CSDBPerformLockedSectionUsingUnfairLock(uint64_t a1, os_unfair_lock_t lock, uint64_t a3)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
    if (a1 && a3 && *(a1 + 8))
    {
      (*(a3 + 16))(a3);
    }

    os_unfair_lock_unlock(lock);
  }

  else if (a1 && a3 && *(a1 + 8))
  {
    v6 = *(a3 + 16);

    v6(a3);
  }
}

uint64_t CSDBPerformLockedSectionUsingSpinLock(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a2)
  {
    _os_nospin_lock_lock();
    if (v4 && a3 && *(v4 + 8))
    {
      (*(a3 + 16))(a3);
    }

    return MEMORY[0x282204B40](a2);
  }

  else if (result && a3 && *(result + 8))
  {
    v6 = *(a3 + 16);

    return v6(a3);
  }

  return result;
}

uint64_t *CSDBPerformLockedSectionForConnectionForReading(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = result[1];
      if (result)
      {
        result = CSDBRecordStoreGetDatabase(result);
        if (result)
        {
          v4 = result;
          result = CSDBSqliteDatabaseConnectionForReading(result);
          if (result)
          {
            v5 = result;
            (*(a2 + 16))(a2, v3[1], v4, result);

            return CSDBSqliteDatabaseReleaseSqliteConnection(v5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t *CSDBPerformLockedSectionForConnectionForWriting(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = result[1];
      if (result)
      {
        result = CSDBRecordStoreGetDatabase(result);
        if (result)
        {
          v4 = result;
          result = CSDBSqliteDatabaseConnectionForWriting(result);
          if (result)
          {
            v5 = result;
            (*(a2 + 16))(a2, v3[1], v4, result);

            return CSDBSqliteDatabaseReleaseSqliteConnection(v5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t CSDBPerformUnlocked(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    if (*(result + 8))
    {
      return (*(a2 + 16))(a2);
    }
  }

  return result;
}

uint64_t CSDBPerformUnlockedSectionForDatabase(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = *(result + 8);
      if (result)
      {
        result = CSDBRecordStoreGetDatabase(result);
        if (result)
        {
          v4 = *(v3 + 8);
          v5 = *(a2 + 16);

          return v5(a2, v4, result);
        }
      }
    }
  }

  return result;
}

uint64_t *CSDBPerformUnlockedSectionForConnectionForReading(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = result[1];
      if (result)
      {
        result = CSDBRecordStoreGetDatabase(result);
        if (result)
        {
          v4 = result;
          result = CSDBSqliteDatabaseConnectionForReading(result);
          if (result)
          {
            v5 = result;
            (*(a2 + 16))(a2, v3[1], v4, result);

            return CSDBSqliteDatabaseReleaseSqliteConnection(v5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t *CSDBPerformUnlockedSectionForConnectionForWriting(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = result[1];
      if (result)
      {
        result = CSDBRecordStoreGetDatabase(result);
        if (result)
        {
          v4 = result;
          result = CSDBSqliteDatabaseConnectionForWriting(result);
          if (result)
          {
            v5 = result;
            (*(a2 + 16))(a2, v3[1], v4, result);

            return CSDBSqliteDatabaseReleaseSqliteConnection(v5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t CSDBPerformUnlockedSectionForQueryForReading(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        result = *(result + 8);
        if (result)
        {
          result = CSDBRecordStoreGetDatabase(result);
          if (result)
          {
            v6 = result;
            result = CSDBSqliteDatabaseStatementForReading(result, a2);
            if (result)
            {
              v7 = result;
              if (*(result + 8))
              {
                (*(a3 + 16))(a3, *(v5 + 8), v6, result);

                return CSDBSqliteStatementReset(v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}