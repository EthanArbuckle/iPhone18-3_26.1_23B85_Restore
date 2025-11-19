uint64_t sub_254737E5C()
{
  qword_281413890 = objc_alloc_init(IDSHashPersistenceAWDLogging);

  return MEMORY[0x2821F96F8]();
}

void sub_254738174(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:1376268];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(MEMORY[0x259C17E80](@"AWDIDSDuplicatedMessage", @"WirelessDiagnostics"));
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_254738240(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id sub_25473828C()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254738334;
  block[3] = &unk_279782278;
  block[4] = @"IDSHashMessageStore";
  if (qword_2814138C8 != -1)
  {
    dispatch_once(&qword_2814138C8, block);
  }

  v0 = qword_2814138C0;

  return v0;
}

uint64_t sub_254738334(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_2814138C0 = CSDBCreateThreadedRecordStoreWithQOSClassAndLookAsideBufferConfig();

  return MEMORY[0x2821F96F8]();
}

void sub_25473837C()
{
  os_unfair_lock_assert_owner(&unk_2814138B0);
  v0 = sub_25473828C();

  if (v0)
  {
    v1 = objc_autoreleasePoolPush();
    v2 = sub_25473828C();
    CSDBThreadedRecordStoreEnsureDatabaseSetupWithProtection();

    objc_autoreleasePoolPop(v1);
  }
}

void sub_254738470(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&unk_2814138B0);
  sub_25473837C();
  v2 = sub_25473828C();
  CSDBPerformLocked();

  os_unfair_lock_unlock(&unk_2814138B0);
}

void sub_2547384E0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_assert_owner(&unk_2814138B0);
  sub_25473837C();
  v3 = sub_25473828C();
  CSDBPerformUnlockedSectionForQueryForWriting();
}

void sub_254738550(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_assert_owner(&unk_2814138B0);
  sub_25473837C();
  v3 = sub_25473828C();
  CSDBPerformUnlockedSectionForQueryForReading();
}

void sub_2547385C0()
{
  os_unfair_lock_assert_owner(&unk_2814138B0);
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254737000, v0, OS_LOG_TYPE_DEFAULT, "Saving database.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v1 = sub_25473828C();
  CSDBPerformLockedSectionForRecordStore();

  v2 = sub_25473828C();

  if (v2)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_254737000, v3, OS_LOG_TYPE_DEFAULT, "Destroying database.", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v4 = sub_25473828C();
    MEMORY[0x259C17E70]();

    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_254737000, v5, OS_LOG_TYPE_DEFAULT, "Closed database.", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

uint64_t sub_25473880C(uint64_t a1, uint64_t a2)
{
  CSDBRecordSaveStore();

  return MEMORY[0x282156950](a2);
}

void sub_254738848()
{
  os_unfair_lock_assert_owner(&unk_2814138B0);
  v0 = sub_25473828C();
  CSDBPerformLockedSectionForRecordStoreWithoutInitialize();
}

uint64_t sub_2547388A4(uint64_t a1)
{
  os_unfair_lock_assert_owner(&unk_2814138B0);

  return MEMORY[0x2821569B0](a1);
}

uint64_t sub_2547388E4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = CSDBGetMobileUserDirectory();
  if (v1)
  {
    v2 = [MEMORY[0x277CCAC38] processInfo];
    v3 = [v2 processName];

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"ids-hashes-%@.db", v3];

    v5 = MEMORY[0x277CCACA8];
    v6 = MEMORY[0x277CBEA60];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
    v8 = [v6 arrayWithObjects:{v7, @"/Library/IdentityServices/", v4, 0}];
    v9 = [v5 pathWithComponents:v8];

    [v9 fileSystemRepresentation];
    CSDBGetMobileUserUID();
    CSDBGetMobileUserGID();
    CSDBCreateDirectoriesToPath();
    v1 = [v9 stringByResolvingAndStandardizingPath];
  }

  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t sub_254738A24()
{
  CSDBRecordStoreCreateTablesForClass();
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_254737000, v0, OS_LOG_TYPE_DEBUG, "Creating indexes on message_hash_data and expiration_date", v2, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  CSDBSqliteConnectionPerformSQL();
  return CSDBSqliteConnectionPerformSQL();
}

uint64_t sub_254738B1C()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_254737000, v0, OS_LOG_TYPE_DEBUG, "Enabling auto vacuum.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  CSDBSqliteConnectionPerformSQL();
  v1 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_254737000, v1, OS_LOG_TYPE_DEBUG, "Enabling WAL journal mode.", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  CSDBSqliteConnectionPerformSQL();
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_254737000, v2, OS_LOG_TYPE_DEBUG, "Enabling Foreign Key support.", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  return CSDBSqliteConnectionPerformSQL();
}

uint64_t sub_254738D5C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 9001)
  {
    return 0;
  }

  v3 = CSDBSqliteConnectionPerformSQL();
  if (v3 != 101 && v3 != 0)
  {
    return 2;
  }

  v5 = v3;
  CSDBSqliteDatabaseSetVersion();
  if (v5)
  {
    v6 = v5 == 101;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_254738DF0(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_254738E68;
  v3[3] = &unk_2797823E8;
  v3[4] = a2;
  v3[5] = a1;
  sub_2547384E0(@"INSERT INTO message_hash (message_hash_data, creation_date) VALUES (?, ?);", v3);
  return 1;
}

uint64_t sub_254738E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  CSDBSqliteBindBlobFromCFData();
  v7 = *(a1 + 40);
  CSDBSqliteBindInt64();

  return MEMORY[0x2821569D0](a4);
}

uint64_t sub_254738EB8(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_254738F88;
    v3[3] = &unk_279782410;
    v3[4] = &v4;
    v3[5] = a1;
    sub_254738550(@"SELECT COUNT(1) FROM message_hash WHERE message_hash_data = ? LIMIT 1;", v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_254738F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_254738F88(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindBlobFromCFData();
  result = CSDBSqliteStep();
  if (result)
  {
    result = CSDBSqliteStatementInteger64ResultColumn();
    *(*(*(a1 + 32) + 8) + 24) = result > 0;
  }

  return result;
}

void sub_254738FE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = sub_254739060;
    v2[3] = &unk_2797823E8;
    v2[4] = a1;
    v2[5] = a2;
    sub_2547384E0(@"UPDATE message_hash SET creation_date = ? WHERE message_hash_data = ?; ", v2);
  }
}

uint64_t sub_254739060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  CSDBSqliteBindInt64();
  v7 = *(a1 + 40);
  CSDBSqliteBindBlobFromCFData();

  return MEMORY[0x2821569D0](a4);
}

void sub_2547390B0(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = sub_254739124;
  v1[3] = &unk_279782430;
  v1[4] = a1;
  sub_2547384E0(@"UPDATE message_hash SET creation_date = ? WHERE creation_date > ?; ", v1);
}

uint64_t sub_254739124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  CSDBSqliteBindInt64();
  v7 = *(a1 + 32);
  CSDBSqliteBindInt64();

  return MEMORY[0x2821569D0](a4);
}

void sub_254739174(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = sub_2547391E8;
  v1[3] = &unk_279782430;
  v1[4] = a1;
  sub_2547384E0(@"DELETE from message_hash WHERE creation_date < ?; ", v1);
}

uint64_t sub_2547391E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  CSDBSqliteBindInt64();

  return MEMORY[0x2821569D0](a4);
}

uint64_t sub_25473926C()
{
  qword_281413898 = objc_alloc_init(IDSMessageHashStore);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_254739714(void *a1)
{
  if ([*(a1[4] + 48) containsObject:a1[5]])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_254738EB8(a1[5]);
  }

  *(*(a1[6] + 8) + 24) = v2;
  sub_254738848();
  v3 = a1[4];

  return [v3 _setDatabaseCloseTimerOnIvarQueue];
}

uint64_t sub_254739874(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  if ([v2 count] >= 0xA)
  {
    [*(*(a1 + 32) + 48) removeFirstObject];
  }

  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(*(a1 + 32) + 48);
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_254737000, v6, OS_LOG_TYPE_DEBUG, "Storing temporarily %@", buf, 0xCu);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      v10 = *(*(a1 + 32) + 48);
      result = _IDSLogV();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2547399DC(int8x16_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_254737000, v2, OS_LOG_TYPE_DEFAULT, "Adding message hash %@ to the database", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = a1[2].i64[0];
    _IDSLogV();
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_254739B58;
  v8[3] = &unk_279782480;
  v7 = a1[2];
  v4 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  sub_254738470(v8);

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_254739B58(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_254738DF0([*(a1 + 32) _currentLocalTime], *(a1 + 40));
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 48) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
  }

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*(a1 + 32) + 48);
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_254737000, v4, OS_LOG_TYPE_DEBUG, "Updating local cache %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = *(*(a1 + 32) + 48);
    _IDSLogV();
  }

  sub_254738848();
  result = [*(a1 + 32) _setDatabaseCloseTimerOnIvarQueue];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254739D4C(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_254739DCC;
  v2[3] = &unk_279782480;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  sub_254738470(v2);
}

uint64_t sub_254739DCC(uint64_t a1)
{
  sub_254738FE4([*(a1 + 32) _currentLocalTime], *(a1 + 40));
  sub_254738848();
  v2 = *(a1 + 32);

  return [v2 _setDatabaseCloseTimerOnIvarQueue];
}

void sub_254739EC8()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_254737000, v0, OS_LOG_TYPE_DEBUG, "Performing initial database housekeeping", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v1 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_254737000, v1, OS_LOG_TYPE_DEBUG, "  => Setting cache size", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  sub_2547388A4(10);
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_254737000, v2, OS_LOG_TYPE_DEBUG, "  => Invalidating caches", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  sub_254738848();
}

void sub_25473A1BC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40) - Current + 600.0;
  if (v4 <= 0.0)
  {

    MEMORY[0x2821F9670](v3, sel_closeDatabase);
  }

  else
  {
    v5 = (v4 * 1000000000.0);
    v6 = *(v3 + 32);
    v7 = dispatch_time(0, v5);

    dispatch_source_set_timer(v6, v7, 0x7FFFFFFFFFFFFFFFuLL, v5 / 10);
  }
}

void sub_25473A384(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  sub_2547385C0();
}

void sub_25473A684(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_2547390B0([*(a1 + 32) _currentLocalTime]);
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(*(a1 + 32), "_currentLocalTime")}];
  v3 = [v2 dateByAddingTimeInterval:-2592000.0];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_254737000, v4, OS_LOG_TYPE_DEBUG, "Removing messages older than %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = v3;
    _IDSLogV();
  }

  [v3 timeIntervalSince1970];
  sub_254739174(v5);
  sub_254738848();
  [*(a1 + 32) _setDatabaseCloseTimerOnIvarQueue];

  v6 = *MEMORY[0x277D85DE8];
}