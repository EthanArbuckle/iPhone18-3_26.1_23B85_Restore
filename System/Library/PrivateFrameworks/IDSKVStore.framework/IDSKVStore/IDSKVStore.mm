void sub_25473E0FC(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSince1970];

  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = v4;
  CSDBPerformLockedSectionForQueryForWriting();
}

uint64_t sub_25473E1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v7 = *(a1 + 40);
  CSDBSqliteBindBlobFromCFData();
  v8 = *(a1 + 56);
  CSDBSqliteBindInt64();
  v9 = *(a1 + 48);
  CSDBSqliteBindInt64();

  return MEMORY[0x2821569D0](a4);
}

void sub_25473E39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25473E3B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25473E3C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 56);
  v4 = v3;
  v5 = *(a1 + 48);
  CSDBPerformLockedSectionForQueryForReading();
}

uint64_t sub_25473E464(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 48);
  CSDBSqliteBindInt64();
  v4 = CSDBSqliteStatementCopyDataResult();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_25473E630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25473E658(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = *(a1 + 64);
  v4 = *(a1 + 56);
  v3 = *(a1 + 40);
  return CSDBPerformLockedSectionForQueryForReading();
}

uint64_t sub_25473E6E8(uint64_t a1)
{
  v2 = *(a1 + 56);
  CSDBSqliteBindInt64();
  v3 = *(a1 + 48);
  CSDBSqliteBindInt64();
  v4 = MEMORY[0x277CBF128];
  while (1)
  {
    result = CSDBSqliteStatementCopyDataResult();
    if (!result)
    {
      break;
    }

    v6 = result;
    v7 = *(*(*(a1 + 32) + 8) + 24);
    if (!v7)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v4);
      v7 = *(*(*(a1 + 32) + 8) + 24);
    }

    CFArrayAppendValue(v7, v6);
    *(*(*(a1 + 40) + 8) + 24) = CSDBSqliteStatementInteger64ResultColumn();
    CFRelease(v6);
  }

  return result;
}

uint64_t sub_25473E86C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  return CSDBPerformLockedSectionForQueryForWriting();
}

uint64_t sub_25473E8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  CSDBSqliteBindInt64();
  v7 = *(a1 + 40);
  CSDBSqliteBindInt64();

  return MEMORY[0x2821569D0](a4);
}

uint64_t sub_25473EA30(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSince1970];
  [*(a1 + 40) timeIntervalSince1970];
  v2 = *(a1 + 48);
  return CSDBPerformLockedSectionForQueryForWriting();
}

uint64_t sub_25473EACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  CSDBSqliteBindInt64();
  v7 = *(a1 + 40);
  CSDBSqliteBindInt64();

  return MEMORY[0x2821569D0](a4);
}

void sub_25473EBF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  CSDBPerformLockedSectionForQueryForWriting();
}

uint64_t sub_25473EC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v7 = *(a1 + 40);
  CSDBSqliteBindInt64();

  return MEMORY[0x2821569D0](a4);
}

void sub_25473EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25473EE14(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSince1970];
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  return CSDBPerformLockedSectionForQueryForReading();
}

uint64_t sub_25473EEA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindInt64();
  v3 = MEMORY[0x277CBF128];
  while (1)
  {
    result = CSDBSqliteStatementCopyStringResult();
    if (!result)
    {
      break;
    }

    v5 = result;
    v6 = *(*(*(a1 + 32) + 8) + 24);
    if (!v6)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v3);
      v6 = *(*(*(a1 + 32) + 8) + 24);
    }

    CFArrayAppendValue(v6, v5);
    CFRelease(v5);
  }

  return result;
}

uint64_t sub_25473F010(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](a1[4], sel__onIvarQueue_persistSerializedValue_forKey_valueType_);
}

uint64_t sub_25473F134(uint64_t a1)
{
  v2 = [*(a1 + 32) _onIvarQueue_serializedValueForKey:*(a1 + 40) valueType:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_25473F27C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onIvarQueue_serializedValuesUpToLimit:*(a1 + 48) valueType:0 deleteContext:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_25473F3E0(uint64_t a1)
{
  v2 = [*(a1 + 32) _onIvarQueue_storedKeysAfter:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_25473F4F8(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](a1[4], sel__onIvarQueue_deleteDatesBefore_after_);
}

uint64_t sub_25473F5B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) rowIDCutoff];
  [*(a1 + 40) valueType];

  return MEMORY[0x2821F9670](v2, sel__onIvarQueue_deleteUpToRowID_valueType_);
}

uint64_t sub_25473F728(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25473D000, v2, OS_LOG_TYPE_DEBUG, "Performing initial database housekeeping", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_25473D000, v3, OS_LOG_TYPE_DEBUG, "  => Setting cache size", v8, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  CSDBSqliteSetDefaultPageCacheSize();
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_25473D000, v4, OS_LOG_TYPE_DEBUG, "  => Invalidating caches", v7, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v5 = *(a1 + 32);
  return [objc_opt_class() _invalidateCachesForMessageStore:*(a1 + 40)];
}

uint64_t sub_25473FA58(uint64_t a1)
{
  [*(a1 + 32) fileSystemRepresentation];
  CSDBGetMobileUserUID();
  CSDBGetMobileUserGID();
  CSDBCreateDirectoriesToPath();
  [*(a1 + 32) stringByResolvingAndStandardizingPath];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t sub_25473FAB8()
{
  CSDBRecordStoreCreateTablesForClass();

  return CSDBSqliteConnectionPerformSQL();
}

uint64_t sub_25473FB04()
{
  CSDBSqliteConnectionPerformSQL();
  CSDBSqliteConnectionPerformSQL();

  return CSDBSqliteConnectionPerformSQL();
}

uint64_t sub_25473FB70(uint64_t a1, uint64_t a2, unsigned int a3)
{
  CSDBSqliteConnectionCommit();
  if (CSDBSqliteDatabaseCheckIntegrity())
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25473D000, v4, OS_LOG_TYPE_DEFAULT, "Initial integrity check success", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
    {
LABEL_32:
      _IDSLogV();
    }
  }

  else
  {
    v5 = CSDBSqliteConnectionPerformSQL();
    if (v5 == 101 || !v5)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_25473D000, v6, OS_LOG_TYPE_DEFAULT, "Reindexing the KV Store worked.", v28, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    if (CSDBSqliteDatabaseCheckIntegrity())
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_25473D000, v7, OS_LOG_TYPE_DEFAULT, "Post-reindex integrity check success", v25, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v8 = CSDBSqliteDatabaseVacuum();
      if (v8 == 101 || !v8)
      {
        v9 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_25473D000, v9, OS_LOG_TYPE_DEFAULT, "Database vacuum success", v27, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      if (CSDBSqliteDatabaseCheckIntegrity())
      {
        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_25473D000, v10, OS_LOG_TYPE_DEFAULT, "Final integrity check success", v26, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLog())
          {
            goto LABEL_32;
          }
        }
      }
    }
  }

  CSDBSqliteConnectionBegin();
  if (a3 <= 0x32C8)
  {
    CSDBSqliteConnectionBeginTransactionType();
    if (a3 >> 4 < 0x271)
    {
LABEL_53:
      CSDBSqliteConnectionCommit();
      CSDBSqliteConnectionPerformSQL();
      return 0;
    }

    CSDBSqliteDatabaseSetVersion();
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_25473D000, v11, OS_LOG_TYPE_DEFAULT, "Add date column to kvtable", v23, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ %@;", @"kvtable", @"date", @"INTEGER DEFAULT 0"];
    v13 = CSDBSqliteConnectionPerformSQL();
    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSince1970];
    v16 = v15;

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UPDATE %@ SET %@ = %ld;", @"kvtable", @"date", v16];
    v18 = CSDBSqliteConnectionPerformSQL();
    if (v18)
    {
      v19 = v18 == 101;
    }

    else
    {
      v19 = 1;
    }

    v20 = v19;
    v21 = v13 == 101 || v13 == 0;
    if (v21 && v20)
    {
      CSDBSqliteDatabaseSetVersion();

      goto LABEL_53;
    }

    CSDBSqliteConnectionCommit();
  }

  return 2;
}

void sub_254740188(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25473D000, v2, OS_LOG_TYPE_DEFAULT, "Saving database.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v3 = *(a1 + 32);
  CSDBPerformLockedSectionForRecordStore();
  if (*(a1 + 32))
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) storeName];
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_25473D000, v4, OS_LOG_TYPE_DEFAULT, "%@ Destroying database.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = [*(a1 + 40) storeName];
      _IDSLogV();
    }

    v6 = [*(a1 + 40) messageStore];
    MEMORY[0x259C18420]();

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) storeName];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_25473D000, v7, OS_LOG_TYPE_DEFAULT, "%@ Closed database.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v11 = [*(a1 + 40) storeName];
      _IDSLogV();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_254740420(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25474039CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254740468(uint64_t a1, uint64_t a2)
{
  CSDBRecordSaveStore();

  return MEMORY[0x282156950](a2);
}

void sub_2547405DC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24) - Current + 30.0;
  if (v4 <= 0.0)
  {

    MEMORY[0x2821F9670](v3, sel___closeDatabaseOnIvarQueue);
  }

  else
  {
    v5 = (v4 * 1000000000.0);
    v6 = *(v3 + 16);
    v7 = dispatch_time(0, v5);

    dispatch_source_set_timer(v6, v7, 0x7FFFFFFFFFFFFFFFuLL, v5 / 10);
  }
}

uint64_t sub_25474072C(uint64_t a1)
{
  [*(a1 + 32) _clearDatabaseCloseTimerOnIvarQueue];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2547407B8;
  v4[3] = &unk_2797826B8;
  v4[4] = v2;
  return [v2 _onIvarQueue_performBlock:v4 initializeStore:0 waitUntilDone:1];
}

uint64_t sub_254740844(uint64_t a1)
{
  v1 = [*(a1 + 32) path];

  return MEMORY[0x2821569A8](v1);
}

void sub_254740990(uint64_t a1)
{
  block[8] = *MEMORY[0x277D85DE8];
  if (*(a1 + 68) == 1)
  {
    v2 = *(a1 + 32);
    [objc_opt_class() _initializeMessageStoreIfNeeded:*(a1 + 40) path:*(a1 + 48) dataProtectionClass:*(a1 + 64)];
  }

  (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 32);
  [objc_opt_class() _invalidateCachesForMessageStore:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254740BA8;
  block[3] = &unk_2797826B8;
  block[4] = v4;
  dispatch_async(v5, block);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254740A84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_25473D000, v16, OS_LOG_TYPE_ERROR, "Exception performing database block %@", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    objc_end_catch();
    JUMPOUT(0x254740A54);
  }

  _Unwind_Resume(a1);
}