void IMDSqliteDatabaseClean(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 8))
  {
    v4 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3);
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Performing a pre-checkpoint vacuum.", &v14, 2u);
    }

    sqlite3_exec(*(a1 + 8), "vacuum;", 0, 0, 0);
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Performing Analyze to optimize the database", &v14, 2u);
    }

    sqlite3_exec(*(a1 + 8), "ANALYZE;", 0, 0, 0);
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Performing a WAL checkpoint.", &v14, 2u);
    }

    sqlite3_exec(*(a1 + 8), "PRAGMA wal_checkpoint(RESTART);", 0, 0, 0);
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_timeIntervalSinceNow(v4, v9, v10);
      v14 = 134217984;
      v15 = -v11;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Database Clean up took: %f seconds", &v14, 0xCu);
    }
  }

  else
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF5B30();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B6B744(uint64_t a1, const char *a2, const char *a3)
{
  if (!a1 && (v5 = IMDatabaseLogHandle(), os_log_type_enabled(v5, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF5BBC(v5, a2);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF5C6C(v6, a2);
  }

LABEL_6:
  isInternalInstall = a3 >= 2 && objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3) > a3;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF5D1C(isInternalInstall, a3, v8);
  }

  if (objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v9, v10) < a3)
  {
    v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v11, v12);
    isInternalInstall = objc_msgSend_isInternalInstall(v13, v14, v15);
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF5DC4(isInternalInstall, a3, v16);
    }
  }

  return isInternalInstall;
}

uint64_t sub_1B7B6B868(const char *a1, const char *a2, uint64_t a3)
{
  if (!a1 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF5E6C(v6, v7);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF5F1C(v8, v9);
  }

LABEL_6:
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF5FCC(a3, v10, v11);
  }

  CSDBSqliteConnectionCommit();
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v12, v13);
  v14 = sub_1B7B6BCB8(a1, a2);
  v15 = IMLogHandleForCategory();
  v16 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6068();
    }

    return 2;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Initial Integrity checked success", buf, 2u);
  }

  v31 = 0;
  v30 = a3;
  if (!_IMDDatabasePerformMigrations(a1, a2, a3, &v30, &v31))
  {
    goto LABEL_21;
  }

  CSDBSqliteConnectionPerformSQL();
  if (!sub_1B7B6BCB8(a1, a2))
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF609C();
    }

LABEL_21:
    v22 = 1;
    v23 = 3;
    goto LABEL_22;
  }

  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.Migration_Successful", v19, v20);
  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF60D0();
  }

  if (!v31)
  {
    v23 = 0;
    goto LABEL_27;
  }

  v22 = 0;
  v23 = 0;
LABEL_22:
  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.Migration_Failure", v17, v18);
  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6104(&v30, &v31, v25);
  }

  if (v22)
  {
    return 2;
  }

LABEL_27:
  v26 = IMLogHandleForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF61AC(v26, v27, v28);
  }

  return v23;
}

uint64_t sub_1B7B6BAE8(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  sub_1B7AEAEE4(a1, a2, a3);
  v3 = CSDBThreadedRecordStoreRegisterClass();
  sub_1B7AE0D64(v3, v4, v5);
  CSDBThreadedRecordStoreRegisterClass();
  CSDBThreadedRecordStoreRegisterClass();

  return CSDBThreadedRecordStoreRegisterClass();
}

uint64_t _IMDSMSRecordStoreUpdateLastDeleteSequenceNumberUnlocked()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = -1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1B7B6BC30;
  v2[3] = &unk_1E7CBA330;
  v2[4] = &v3;
  _IMDPerformLockedConnectionBlock(v2);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7B6BC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B6BC30(uint64_t a1)
{
  CSDBSqliteConnectionBeginTransactionType();
  *(*(*(a1 + 32) + 8) + 24) = CSDBRecordStoreGetSequenceNumber();
  v2 = *(*(*(a1 + 32) + 8) + 24);
  IMSetDomainIntForKey();

  return CSDBSqliteConnectionCommit();
}

uint64_t sub_1B7B6BCB8(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v3 = IMDatabaseLogHandle(), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF6248(v3, v4);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF62F8(v5, v6);
  }

LABEL_6:
  if (sub_1B7B6BFE0(a2))
  {
    v9 = IMLogHandleForCategory();
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v37 = 0;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Integrity checked success", v37, 2u);
    }

    v13 = @"com.apple.MobileSMS.InitialIntegrityCheck_Success";
    goto LABEL_37;
  }

  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.InitialIntegrityCheck_Failure", v7, v8);
  v14 = CSDBSqliteConnectionPerformSQL();
  if (v14 != 101 && (v15 = v14) != 0)
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF63A8(v15, v20);
    }

    v19 = @"com.apple.MobileSMS.Migration.Reindex_Failure";
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Reindexing the DB worked.", buf, 2u);
    }

    v19 = @"com.apple.MobileSMS.Migration.Reindex_Success";
  }

  IMDPersistenceSubmitEvent(v19, v17, v18);
  if (sub_1B7B6BFE0(a2))
  {
    goto LABEL_31;
  }

  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.PostReindex.IntegrityCheck_Failure", v21, v22);
  v23 = CSDBSqliteDatabaseVacuum();
  if (v23 != 101 && (v24 = v23) != 0)
  {
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6420(v24, v29);
    }

    v28 = @"com.apple.MobileSMS.Migration.Vacuum_Failure";
  }

  else
  {
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v40 = 0;
      _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Vacuuming DB success", v40, 2u);
    }

    v28 = @"com.apple.MobileSMS.Migration.Vacuum_Success";
  }

  IMDPersistenceSubmitEvent(v28, v26, v27);
  v30 = sub_1B7B6BFE0(a2);
  v31 = IMLogHandleForCategory();
  v32 = v31;
  if (v30)
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v39 = 0;
      _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Post Vacuuming integrity check success", v39, 2u);
    }

    IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.PostVacuum.IntegrityCheck_Success", v33, v34);
LABEL_31:
    v35 = IMLogHandleForCategory();
    v10 = 1;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "Integrity checked success", v38, 2u);
    }

    v13 = @"com.apple.MobileSMS.PostReindex.IntegrityCheck_Success";
    goto LABEL_37;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6498();
  }

  v10 = 0;
  v13 = @"com.apple.MobileSMS.Migration.PostVacuum.IntegrityCheck_Failure";
LABEL_37:
  IMDPersistenceSubmitEvent(v13, v11, v12);
  return v10;
}

uint64_t sub_1B7B6BFE0(uint64_t a1)
{
  if (!a1)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF64CC(v1, v2);
    }
  }

  v5 = CSDBSqliteDatabaseCheckIntegrity();
  if ((v5 & 1) == 0)
  {
    IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.IntegrityCheck_Failure", v3, v4);
  }

  return v5;
}

uint64_t IMDSqlOperationIsQueryIndexed(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  if (a1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (IMDSqlOperationHasRows(a1))
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1B7B6C2D0;
      v20[3] = &unk_1E7CBA8F8;
      v20[4] = v4;
      v20[5] = &v21;
      IMDSqlOperationIterateRow(a1, v20);
    }

    if (*(v22 + 24))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    NSLog(&cfstr_QueryIsIndexed.isa, v5);
    NSLog(&cfstr_Query_0.isa, *(a1 + 48));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v25, 16);
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          NSLog(&stru_1F2FAFC28.isa, *(*(&v16 + 1) + 8 * i));
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, &v16, v25, 16);
      }

      while (v7);
    }

    if (a2)
    {
      *a2 = v4;
    }

    v11 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF657C(v12, v13);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

void sub_1B7B6C2D0(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  v6 = *(a2 + 1);
  if (!v6)
  {
    v6 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v6;
  }

  if (!strncmp(v6, "detail", 0x100uLL))
  {
    v11 = *a2;
    v12 = *(a2 + 2);
    v7 = IMDStringFromSqlColumn(&v11);
    if (v7)
    {
      v8 = v7;
      v9 = CFStringFind(v7, @"SCAN TABLE", 1uLL);
      *(*(*(a1 + 40) + 8) + 24) = v9.length == 0;
      v10 = *(a1 + 32);
      if (v10)
      {
        objc_msgSend_addObject_(v10, v9.length, v8);
      }

      CFRelease(v8);
    }

    *a3 = 1;
  }
}

uint64_t IMDSqlOperationColumnExistsOnTableWithOperation(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  if (!a1 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF6624(v6, v7);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF66CC(v8, v9);
  }

LABEL_6:
  if (!a3)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6774(v10, v11);
      if (a1)
      {
        goto LABEL_9;
      }

      return 0;
    }
  }

  if (!a1)
  {
    return 0;
  }

LABEL_9:
  v12 = CFStringCreateWithFormat(0, 0, @"PRAGMA table_info(%@);", a2);
  _IMDSqlOperationBeginQuery(a1, v12);
  CFRelease(v12);
  if (IMDSqlOperationHasRows(a1))
  {
    while (1)
    {
      if (IMDSqlOperationColumnCount(a1))
      {
        v13 = 0;
        while (1)
        {
          v21 = 0uLL;
          *N = 0;
          IMDSqlOperationColumnByIndex(a1, v13, &v21);
          v14 = *(&v21 + 1);
          if (!*(&v21 + 1))
          {
            v14 = sqlite3_column_name(*v21, N[0]);
            *(&v21 + 1) = v14;
          }

          if (!strncmp(v14, "name", 0x100uLL))
          {
            break;
          }

          if (++v13 >= IMDSqlOperationColumnCount(a1))
          {
            goto LABEL_18;
          }
        }

        v19 = v21;
        v20 = *N;
        v15 = IMDStringFromSqlColumn(&v19);
        v16 = CFStringCompare(v15, a3, 0);
        CFRelease(v15);
        if (v16 == kCFCompareEqualTo)
        {
          break;
        }
      }

LABEL_18:
      if (!IMDSqlOperationHasRows(a1))
      {
        goto LABEL_19;
      }
    }

    v17 = 1;
  }

  else
  {
LABEL_19:
    v17 = 0;
  }

  IMDSqlOperationFinishQuery(a1);
  return v17;
}

BOOL IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(uint64_t a1, uint64_t a2, const __CFString *a3, __CFString *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2 && (v8 = IMDatabaseLogHandle(), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF681C(v8, v9);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF68C4(v10, v11);
  }

LABEL_6:
  if (!a4)
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF696C(v12, v13);
    }
  }

  if (IMDSqlOperationColumnExistsOnTableWithOperation(a1, a2, a3))
  {
    v14 = IMLogHandleForCategory();
    v15 = 1;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = a3;
      v28 = 2112;
      v29 = a2;
      v16 = "Found column %@ on %@, no need to add it";
      v17 = v14;
      v18 = 22;
LABEL_18:
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
    }
  }

  else
  {
    v19 = &stru_1F2FA9728;
    if (a4)
    {
      v19 = a4;
    }

    v20 = CFStringCreateWithFormat(0, 0, @"ALTER TABLE %@ ADD COLUMN %@ %@;", a2, a3, v19);
    _IMDSqlOperationBeginQuery(a1, v20);
    IMDSqlOperationFinishQuery(a1);
    CFRelease(v20);
    v21 = *(a1 + 168);
    v15 = v21 == 0;
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = @"NO";
      *buf = 138412802;
      v27 = a3;
      v28 = 2112;
      if (!v21)
      {
        v23 = @"YES";
      }

      v29 = a2;
      v30 = 2112;
      v31 = v23;
      v16 = "Adding column %@ to %@ succeeded: %@";
      v17 = v22;
      v18 = 32;
      goto LABEL_18;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL IMDSqlOperationDropColumnIfExistsToTableWithOperation(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF6A14(v6, v7);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6ABC(v8, v9);
  }

LABEL_6:
  if (IMDSqlOperationColumnExistsOnTableWithOperation(a1, a2, a3))
  {
    v10 = CFStringCreateWithFormat(0, 0, @"ALTER TABLE %@ DROP COLUMN %@;", a2, a3);
    _IMDSqlOperationBeginQuery(a1, v10);
    IMDSqlOperationFinishQuery(a1);
    CFRelease(v10);
    v11 = *(a1 + 168);
    v12 = v11 == 0;
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      *buf = 138412802;
      v19 = a3;
      v20 = 2112;
      if (!v11)
      {
        v14 = @"YES";
      }

      v21 = a2;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Dropping column %@ to %@ succeeded: %@", buf, 0x20u);
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v19 = a3;
      v20 = 2112;
      v21 = a2;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "No column %@ on %@, no need to drop it", buf, 0x16u);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL IMDSqlOperationAddColumnIfNotExistsToTable(uint64_t a1, const __CFString *a2, __CFString *a3)
{
  if (!a1 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF6B64(v6, v7);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6C0C(v8, v9);
  }

LABEL_6:
  if (!a3)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6CB4(v10, v11);
    }
  }

  memset(v14, 0, sizeof(v14));
  IMDSqlOperationInitWithSharedCSDBDatabase(v14);
  v12 = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(v14, a1, a2, a3);
  IMDSqlOperationRelease(v14, 0);
  return v12;
}

uint64_t IMDSqlOperationColumnExistsOnTable(uint64_t a1, const __CFString *a2)
{
  memset(v6, 0, sizeof(v6));
  IMDSqlOperationInitWithSharedCSDBDatabase(v6);
  v4 = IMDSqlOperationColumnExistsOnTableWithOperation(v6, a1, a2);
  IMDSqlOperationRelease(v6, 0);
  return v4;
}

sqlite3_stmt **IMDSqlOperationReadTableInfo(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  IMDSqlOperationInitWithSharedCSDBDatabase(v6);
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"PRAGMA table_info(%@);", a1);
  Rows = _IMDSqlOperationGetRows(v6, v3);
  IMDSqlOperationRelease(v6, 0);
  return Rows;
}

sqlite3_stmt **IMDDatabaseReadTableInfo(sqlite3_stmt **a1, const char *a2)
{
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"PRAGMA table_info(%@);", a2);

  return _IMDSqlOperationGetRows(a1, v3);
}

uint64_t IMDSqlOperationErrorDescription(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1 && (v3 = *(a1 + 168)) != 0)
  {
    return objc_msgSend_localizedDescription(v3, a2, a3);
  }

  else
  {
    return 0;
  }
}

sqlite3_int64 IMDSqlOperationGetRowCountForTable(uint64_t a1)
{
  if (!a1)
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6D5C(v2, v3);
    }
  }

  memset(v9, 0, sizeof(v9));
  IMDSqlOperationInitWithSharedCSDBDatabase(v9);
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"SELECT count(*) from %@;", a1);
  _IMDSqlOperationBeginQuery(v9, v5);
  v6 = 0;
  if (IMDSqlOperationHasRows(v9))
  {
    IMDSqlOperationColumnByIndex(v9, 0, v8);
    v6 = IMDInt64FromSqlColumn(v8);
  }

  IMDSqlOperationFinishQuery(v9);
  IMDSqlOperationRelease(v9, 0);
  return v6;
}

CFStringRef IMDSqlOperationGetDatabasePath(uint64_t a1)
{
  if (!a1 || (v2 = *(a1 + 8)) == 0)
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6E04(v3, v4);
      if (!a1)
      {
        return 0;
      }
    }

    else if (!a1)
    {
      return 0;
    }

    v2 = *(a1 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  v5 = sqlite3_db_filename(*(v2 + 8), "main");
  if (v5)
  {
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
  }

  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6EAC(v7, v8);
  }

  return 0;
}

BOOL IMDDatabaseCopy(void *a1, char *a2, void *a3)
{
  if (!a1)
  {
    *ppDb = xmmword_1E7CBA918;
    v105 = *off_1E7CBA928;
    v19 = MEMORY[0x1E696AEC0];
    v20 = IMFileLocationTrimFileName();
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, &stru_1F2FA9728);
    v24 = objc_msgSend_stringWithFormat_(v19, v23, @"Unexpected nil '%@' in %s at %s:%d. %@", @"fromPath", "BOOL IMDDatabaseCopy(NSString *, NSString *, NSError **)", v20, 259, v22);
    v25 = IMGetAssertionFailureHandler();
    if (v25)
    {
      v25(v24);
      if (a2)
      {
        return 0;
      }
    }

    else
    {
      v28 = objc_msgSend_warning(MEMORY[0x1E69A6138], v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
        if (a2)
        {
          return 0;
        }
      }

      else if (a2)
      {
        return 0;
      }
    }

LABEL_11:
    *ppDb = xmmword_1E7CBA940;
    v105 = *off_1E7CBA950;
    v29 = MEMORY[0x1E696AEC0];
    v30 = IMFileLocationTrimFileName();
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, &stru_1F2FA9728);
    v34 = objc_msgSend_stringWithFormat_(v29, v33, @"Unexpected nil '%@' in %s at %s:%d. %@", @"toPath", "BOOL IMDDatabaseCopy(NSString *, NSString *, NSError **)", v30, 260, v32);
    v35 = IMGetAssertionFailureHandler();
    if (v35)
    {
      v35(v34);
    }

    else
    {
      v38 = objc_msgSend_warning(MEMORY[0x1E69A6138], v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    return 0;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v6 = objc_msgSend_pathExtension(a1, a2, a3);
  if ((objc_msgSend_isEqualToString_(v6, v7, @"db") & 1) == 0)
  {
    *ppDb = xmmword_1E7CBA968;
    v105 = *off_1E7CBA978;
    v106 = 266;
    v10 = MEMORY[0x1E696AEC0];
    v11 = IMFileLocationTrimFileName();
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, &stru_1F2FA9728);
    v15 = objc_msgSend_stringWithFormat_(v10, v14, @"Unexpected false '%@' in %s at %s:%d. %@", @"[[fromPath pathExtension] isEqualToString:@db]", "BOOL IMDDatabaseCopy(NSString *, NSString *, NSError **)", v11, 266, v13);
    v16 = IMGetAssertionFailureHandler();
    if (v16)
    {
      v16(v15);
    }

    else
    {
      v39 = objc_msgSend_warning(MEMORY[0x1E69A6138], v17, v18);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v40 = objc_msgSend_pathExtension(a2, v8, v9);
  if (objc_msgSend_isEqualToString_(v40, v41, @"db"))
  {
    goto LABEL_22;
  }

  *ppDb = xmmword_1E7CBA990;
  v105 = *off_1E7CBA9A0;
  v106 = 267;
  v44 = MEMORY[0x1E696AEC0];
  v45 = IMFileLocationTrimFileName();
  v47 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v46, &stru_1F2FA9728);
  v49 = objc_msgSend_stringWithFormat_(v44, v48, @"Unexpected false '%@' in %s at %s:%d. %@", @"[[toPath pathExtension] isEqualToString:@db]", "BOOL IMDDatabaseCopy(NSString *, NSString *, NSError **)", v45, 267, v47);
  v50 = IMGetAssertionFailureHandler();
  if (v50)
  {
    v50(v49);
    if (!a3)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a3 = 0;
    goto LABEL_24;
  }

  v53 = objc_msgSend_warning(MEMORY[0x1E69A6138], v51, v52);
  if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
LABEL_22:
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  sub_1B7CEE318();
  if (a3)
  {
    goto LABEL_23;
  }

LABEL_24:
  v54 = objc_msgSend_stringByExpandingTildeInPath(a1, v42, v43);
  v57 = objc_msgSend_stringByExpandingTildeInPath(a2, v55, v56);
  v103 = 0;
  v60 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v58, v59);
  if ((objc_msgSend_fileExistsAtPath_isDirectory_(v60, v61, v54, &v103) & 1) == 0)
  {
    if (a3)
    {
      v87 = MEMORY[0x1E696ABC0];
      v88 = *MEMORY[0x1E696A250];
      v89 = MEMORY[0x1E695DF20];
      v90 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v62, @"Database not found at %@", v54);
      v92 = objc_msgSend_dictionaryWithObject_forKey_(v89, v91, v90, *MEMORY[0x1E696A578]);
      v94 = objc_msgSend_errorWithDomain_code_userInfo_(v87, v93, v88, 4, v92);
      v95 = 0;
LABEL_49:
      *a3 = v94;
      return v95;
    }

    return 0;
  }

  ppDb[0] = 0;
  v102 = 0;
  v64 = objc_msgSend_UTF8String(v54, v62, v63);
  v65 = sqlite3_open_v2(v64, ppDb, 1, 0);
  if ((v65 - 100) >= 2 && (v68 = v65) != 0)
  {
    v96 = ppDb[0];
    v97 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v66, @"Unable to open source database at %@ (%d)", v54, v65);
    v101 = IMDCreateCFErrorWithQueryErrorCode(v68, v96, v97);
    if (v101)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v101 = 0;
  }

  PathComponent = objc_msgSend_stringByDeletingLastPathComponent(v57, v66, v67);
  v72 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v70, v71);
  if ((objc_msgSend_fileExistsAtPath_isDirectory_(v72, v73, PathComponent, &v103) & 1) != 0 || (v76 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v74, v75), objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v76, v77, PathComponent, 1, 0, &v101), !v101))
  {
    v78 = objc_msgSend_UTF8String(v57, v74, v75);
    v79 = sqlite3_open_v2(v78, &v102, 6, 0);
    if ((v79 - 100) >= 2 && (v81 = v79) != 0)
    {
      v98 = v102;
      v99 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v80, @"Unable to open destination database at %@ (%d)", v57, v79);
      v101 = IMDCreateCFErrorWithQueryErrorCode(v81, v98, v99);
      if (v101)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v101 = 0;
    }

    v83 = sqlite3_file_control(v102, 0, 102, ppDb[0]);
    v84 = 0;
    if ((v83 - 100) >= 2 && v83)
    {
      v85 = v102;
      v86 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v82, @"Unable to replace database at %@ (%d)", v57, v83);
      v84 = IMDCreateCFErrorWithQueryErrorCode(v83, v85, v86);
    }

    v101 = v84;
  }

LABEL_42:
  if (ppDb[0])
  {
    sqlite3_close(ppDb[0]);
    ppDb[0] = 0;
  }

  if (v102)
  {
    sqlite3_close(v102);
    v102 = 0;
  }

  v95 = v101 == 0;
  if (a3 && v101)
  {
    v94 = v101;
    goto LABEL_49;
  }

  return v95;
}

BOOL IMDDatabaseDelete(uint64_t a1, char *a2)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v41[0] = a1;
  v41[1] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@-shm", a1);
  v41[2] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"%@-wal", a1);
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v41, 3);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v34, v40, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v35;
    v14 = *MEMORY[0x1E696A250];
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v16 = *(*(&v34 + 1) + 8 * v15);
        v33 = 0;
        v17 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11);
        if ((objc_msgSend_removeItemAtPath_error_(v17, v18, v16, &v33) & 1) == 0)
        {
          v19 = objc_msgSend_domain(v33, v10, v11);
          if (!objc_msgSend_isEqualToString_(v19, v20, v14) || objc_msgSend_code(v33, v10, v21) != 4)
          {
            objc_msgSend_addObject_(v7, v10, v33);
          }
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v34, v40, 16);
    }

    while (v12);
  }

  v24 = objc_msgSend_count(v7, v10, v11);
  if (v24)
  {
    v25 = objc_msgSend_copy(v7, v22, v23);
    v26 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A750];
    v39 = v25;
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, &v39, &v38, 1);
    v30 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v29, @"domain", 0, v28);
    if (a2)
    {
      *a2 = v30;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v24 == 0;
}

BOOL IMDSqlOperationRunCountQuery(uint64_t a1, const __CFString *a2, sqlite3_int64 *a3)
{
  *a3 = 0;
  _IMDSqlOperationBeginQuery(a1, a2);
  if (IMDSqlOperationHasRows(a1))
  {
    IMDSqlOperationColumnByIndex(a1, 0, v6);
    *a3 = IMDInt64FromSqlColumn(v6);
  }

  return IMDSqlOperationFinishQuery(a1);
}

uint64_t IMDDatabaseIndexes()
{
  if (qword_1EBA53F60 != -1)
  {
    sub_1B7CF6F54();
  }

  return qword_1EBA53F58;
}

uint64_t sub_1B7B6D61C()
{
  qword_1EBA53F58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = @"chat_message_join_idx_message_id_only";
  v2 = off_1E7CBA9C8;
  v3 = 44;
  do
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v0, @"CREATE INDEX IF NOT EXISTS %@ ON %@;", v1, *(v2 - 1));
    result = objc_msgSend_setObject_forKey_(qword_1EBA53F58, v5, v4, v1);
    v7 = *v2;
    v2 += 2;
    v1 = v7;
    --v3;
  }

  while (v3);
  return result;
}

BOOL IMDCreateIndexesWithOperation(uint64_t a1, const char *a2)
{
  v2 = a2;
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *buf = xmmword_1E7CBAC88;
    *&buf[16] = *off_1E7CBAC98;
    v35 = 113;
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728);
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "BOOL IMDCreateIndexesWithOperation(IMDSqlOperation *, BOOL)", v5, 113, v7);
    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v13 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEC540(v9, v13);
      }
    }
  }

  if (qword_1EBA53F60 != -1)
  {
    sub_1B7CF6F68();
  }

  v14 = qword_1EBA53F58;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1EBA53F58, a2, &v29, v33, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v30;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = objc_msgSend_objectForKey_(v14, v16, v20);
        if (!_IMDSqlOperationRunQuery(a1, v21, 0, 0))
        {
          v24 = IMLogHandleForCategory();
          result = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
          if (result)
          {
            v27 = IMDSqlOperationErrorDescription(a1, v25, v26);
            *buf = 138412546;
            *&buf[4] = v20;
            *&buf[12] = 2112;
            *&buf[14] = v27;
            _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Create index failed: %@: %@", buf, 0x16u);
            result = 0;
          }

          goto LABEL_22;
        }

        if (v2)
        {
          v22 = IMLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Created index ok: %@", buf, 0xCu);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v29, v33, 16);
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_22:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL IMDCreateIndexes(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B6D9F4;
  v3[3] = &unk_1E7CB8940;
  v4 = a2;
  v3[4] = a1;
  return IMDRunSqlOperation(v3);
}

uint64_t sub_1B7B6D9F4(uint64_t a1, uint64_t a2)
{
  IMDCreateIndexesWithOperation(a2, *(a1 + 40));
  v4 = *(a1 + 32);

  return IMDSqlOperationGetError(a2, v4);
}

BOOL IMDDropAllIndexesWithOperation(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7B6DCB8;
  v25[3] = &unk_1E7CB6FD0;
  v25[4] = v5;
  v25[5] = a1;
  _IMDSqlOperationRunQuery(a1, @"SELECT name, sql FROM sqlite_master WHERE type = 'index'", 0, v25);
  if (!*(a1 + 168))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v30, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"DROP INDEX %@", v14);
          if (!_IMDSqlOperationRunQuery(a1, v15, 0, 0))
          {
            v17 = IMLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v20 = IMDSqlOperationErrorDescription(a1, v18, v19);
              *buf = 138412546;
              v27 = v14;
              v28 = 2112;
              v29 = v20;
              _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Dropped index failed: %@: %@", buf, 0x16u);
            }

            goto LABEL_2;
          }

          if (v3)
          {
            v16 = IMLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v14;
              _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Dropped index: %@", buf, 0xCu);
            }
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v21, v30, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_2:
  result = *(a1 + 168) == 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B7B6DCB8(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3052000000;
      v22 = sub_1B7AE19F4;
      v23 = sub_1B7AE250C;
      v24 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = sub_1B7AE19F4;
      v17 = sub_1B7AE250C;
      v18 = 0;
      v4 = *(a1 + 40);
      v12[0] = v3;
      v12[1] = 3221225472;
      v12[2] = sub_1B7B6DEA4;
      v12[3] = &unk_1E7CB7B28;
      v12[4] = &v19;
      v12[5] = &v13;
      IMDSqlOperationIterateRow(v4, v12);
      v7 = v14[5];
      if (v7)
      {
        if (objc_msgSend_length(v7, v5, v6))
        {
          objc_msgSend_rangeOfString_(v20[5], v8, @"sqlite_autoindex");
          if (!v9)
          {
            objc_msgSend_addObject_(*(a1 + 32), 0, v20[5]);
          }
        }
      }

      v10 = v20[5];
      if (v10)
      {
        CFRelease(v10);
        v20[5] = 0;
      }

      v11 = v14[5];
      if (v11)
      {
        CFRelease(v11);
        v14[5] = 0;
      }

      _Block_object_dispose(&v13, 8);
      _Block_object_dispose(&v19, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B6DE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B6DEA4(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v4 = IMDStringFromSqlColumn(&v8);
  if (v4)
  {
    v5 = v4;
    v6 = *(a2 + 1);
    if (!v6)
    {
      v6 = sqlite3_column_name(**a2, *(a2 + 4));
      *(a2 + 1) = v6;
    }

    if (!strncmp(v6, "name", 0x100uLL))
    {
      v7 = 32;
    }

    else
    {
      if (!v6)
      {
        v6 = sqlite3_column_name(**a2, *(a2 + 4));
        *(a2 + 1) = v6;
      }

      if (strncmp(v6, "sql", 0x100uLL))
      {
        goto LABEL_11;
      }

      v7 = 40;
    }

    *(*(*(a1 + v7) + 8) + 40) = CFRetain(v5);
LABEL_11:
    CFRelease(v5);
  }
}

BOOL IMDDropAllIndexes(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B6DFFC;
  v3[3] = &unk_1E7CB8940;
  v4 = a2;
  v3[4] = a1;
  return IMDRunSqlOperation(v3);
}

uint64_t sub_1B7B6DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IMDDropAllIndexesWithOperation(a2, *(a1 + 40), a3);
  v5 = *(a1 + 32);

  return IMDSqlOperationGetError(a2, v5);
}

BOOL IMDDropUnknownIndexesWithOperation(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1B7B6E2E4;
  v26[3] = &unk_1E7CB6FD0;
  v26[4] = v5;
  v26[5] = a1;
  _IMDSqlOperationRunQuery(a1, @"SELECT name FROM sqlite_master WHERE type = 'index';", 0, v26);
  if (qword_1EBA53F60 != -1)
  {
    sub_1B7CF6F68();
  }

  v7 = qword_1EBA53F58;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v31, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (!objc_msgSend_objectForKey_(v7, v9, v13))
        {
          v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"DROP INDEX %@", v13);
          if (!_IMDSqlOperationRunQuery(a1, v14, 0, 0))
          {
            v16 = IMLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v19 = IMDSqlOperationErrorDescription(a1, v17, v18);
              *buf = 138412546;
              v28 = v13;
              v29 = 2112;
              v30 = v19;
              _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Dropping unknown index failed: %@: %@", buf, 0x16u);
            }

            goto LABEL_18;
          }

          if (v3)
          {
            v15 = IMLogHandleForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v28 = v13;
              _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Dropped unknown index: %@", buf, 0xCu);
            }
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, &v22, v31, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  result = *(a1 + 168) == 0;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B7B6E2E4(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B6E390;
      v5[3] = &unk_1E7CB6FA8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B6E390(uint64_t a1, __int128 *a2)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v3 = IMDStringFromSqlColumn(&v9);
  if (v3)
  {
    v6 = v3;
    if (objc_msgSend_length(v3, v4, v5))
    {
      objc_msgSend_rangeOfString_(v6, v7, @"sqlite_autoindex");
      if (!v8)
      {
        objc_msgSend_addObject_(*(a1 + 32), 0, v6);
      }
    }

    CFRelease(v6);
  }
}

BOOL IMDDropUnknownIndexes(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B6E478;
  v3[3] = &unk_1E7CB8940;
  v4 = a2;
  v3[4] = a1;
  return IMDRunSqlOperation(v3);
}

uint64_t sub_1B7B6E478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IMDDropUnknownIndexesWithOperation(a2, *(a1 + 40), a3);
  v5 = *(a1 + 32);

  return IMDSqlOperationGetError(a2, v5);
}

void *sub_1B7B6E4C0(void *a1, const char *a2)
{
  v2 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, a2, @"IF NOT EXISTS", &stru_1F2FA9728);
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v2, v3, @";", &stru_1F2FA9728);
  objc_msgSend_rangeOfString_(v4, v5, @"  ");
  while (v6)
  {
    v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v6, @"  ", @" ");
    objc_msgSend_rangeOfString_(v4, v7, @"  ");
  }

  return v4;
}

BOOL IMDConfirmIndexesCreatedAsExpected(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1B7B6E854;
  v43[3] = &unk_1E7CB7B50;
  v43[4] = v4;
  v43[5] = a1;
  IMDRunSqlOperation(v43);
  if (qword_1EBA53F60 != -1)
  {
    sub_1B7CF6F68();
  }

  v6 = qword_1EBA53F58;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1EBA53F58, v5, &v39, v45, 16);
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(v6, v8, v13);
        if (v14)
        {
          v16 = sub_1B7B6E4C0(v14, v15);
        }

        else
        {
          v16 = 0;
        }

        v17 = objc_msgSend_objectForKey_(v4, v15, v13);
        if (v17)
        {
          v17 = sub_1B7B6E4C0(v17, v18);
        }

        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = @"NIL";
        }

        if (!v16)
        {
          v16 = @"NIL";
        }

        if ((objc_msgSend_isEqualToString_(v16, v18, v19) & 1) == 0)
        {
          NSLog(&cfstr_Expected_0.isa, v13, v16);
          NSLog(&cfstr_Actual_0.isa, v13, v19);
          v10 = 1;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v39, v45, 16);
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v8, &v35, v44, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v36;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v4);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        v26 = objc_msgSend_objectForKey_(v4, v21, v25);
        if (v26)
        {
          v28 = sub_1B7B6E4C0(v26, v27);
        }

        else
        {
          v28 = 0;
        }

        v29 = objc_msgSend_objectForKey_(v6, v27, v25);
        if (v29)
        {
          v29 = sub_1B7B6E4C0(v29, v30);
        }

        if (!v28)
        {
          v28 = &stru_1F2FA9728;
        }

        if (v29)
        {
          v31 = v29;
          isEqualToString = objc_msgSend_isEqualToString_(v29, v30, v28);
        }

        else
        {
          v31 = &stru_1F2FA9728;
          isEqualToString = objc_msgSend_isEqualToString_(&stru_1F2FA9728, v30, v28);
        }

        if ((isEqualToString & 1) == 0)
        {
          NSLog(&cfstr_Expected_0.isa, v25, v31);
          NSLog(&cfstr_Actual_0.isa, v25, v28);
          v10 = 1;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v21, &v35, v44, 16);
    }

    while (v22);
  }

  v33 = *MEMORY[0x1E69E9840];
  return (v10 & 1) == 0;
}

BOOL sub_1B7B6E854(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B6E8E0;
  v4[3] = &unk_1E7CB8428;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  v4[6] = v2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT name, sql FROM sqlite_master WHERE type = 'index';", 0, v4);
}

uint64_t sub_1B7B6E8E0(uint64_t a1)
{
  if (IMDSqlOperationHasRows(*(a1 + 40)))
  {
    v2 = MEMORY[0x1E69E9820];
    do
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3052000000;
      v18 = sub_1B7AE19F4;
      v19 = sub_1B7AE250C;
      v20 = 0;
      v9 = 0;
      v10 = &v9;
      v11 = 0x3052000000;
      v12 = sub_1B7AE19F4;
      v13 = sub_1B7AE250C;
      v14 = 0;
      v3 = *(a1 + 40);
      v8[0] = v2;
      v8[1] = 3221225472;
      v8[2] = sub_1B7B6EAB0;
      v8[3] = &unk_1E7CB7B28;
      v8[4] = &v15;
      v8[5] = &v9;
      IMDSqlOperationIterateRow(v3, v8);
      objc_msgSend_setObject_forKey_(*(a1 + 32), v4, v10[5], v16[5]);
      v5 = v16[5];
      if (v5)
      {
        CFRelease(v5);
        v16[5] = 0;
      }

      v6 = v10[5];
      if (v6)
      {
        CFRelease(v6);
        v10[5] = 0;
      }

      _Block_object_dispose(&v9, 8);
      _Block_object_dispose(&v15, 8);
    }

    while (IMDSqlOperationHasRows(*(a1 + 40)));
  }

  return IMDSqlOperationGetError(*(a1 + 40), *(a1 + 48));
}

void sub_1B7B6EA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B6EAB0(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v4 = IMDStringFromSqlColumn(&v8);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F2FA9728;
  }

  v6 = *(a2 + 1);
  if (!v6)
  {
    v6 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v6;
  }

  if (!strncmp(v6, "name", 0x100uLL))
  {
    v7 = 32;
    goto LABEL_12;
  }

  if (!v6)
  {
    v6 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v6;
  }

  if (!strncmp(v6, "sql", 0x100uLL))
  {
    v7 = 40;
LABEL_12:
    *(*(*(a1 + v7) + 8) + 40) = CFRetain(v5);
  }

  CFRelease(v5);
}

void sub_1B7B6EE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

xpc_object_t IMDSqlOperationGetXpcRows(uint64_t a1)
{
  if (!a1)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7038(v7, v8);
    }

    return 0;
  }

  v2 = xpc_array_create(0, 0);
  if (!v2)
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6F90(v3, v4);
    }
  }

  while (IMDSqlOperationHasRows(a1))
  {
    if (v2)
    {
      XPCRow = IMDSqlStatementGetXPCRow((a1 + 32));
      if (XPCRow)
      {
        v6 = XPCRow;
        xpc_array_append_value(v2, XPCRow);
        xpc_release(v6);
      }
    }
  }

  if (v2 && *(a1 + 168))
  {
    xpc_release(v2);
    return 0;
  }

  return v2;
}

xpc_object_t IMDSqlOperationGetXpcRowsForQuery(const __CFString *a1)
{
  if (a1)
  {
    v7 = 0u;
    memset(v6, 0, sizeof(v6));
    IMDSqlOperationInitWithSharedCSDBDatabase(v6);
    _IMDSqlOperationBeginQuery(v6, a1);
    XpcRows = IMDSqlOperationGetXpcRows(v6);
    IMDSqlOperationFinishQuery(v6);
    if (*(&v7 + 1) && XpcRows)
    {
      xpc_release(XpcRows);
      XpcRows = 0;
    }

    IMDSqlOperationRelease(v6, 0);
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF70E0(v3, v4);
    }

    return 0;
  }

  return XpcRows;
}

void __syncXPCIMDMessageStoreSave_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 0);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageStoreIsFull_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 1);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageStoreSchemaVersion_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 2);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageStoreSchema_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 3);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDAttachmentRecordCreate_IPCAction(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, int64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  v31 = xpc_dictionary_create(0, 0, 0);
  if (v31)
  {
    v32 = v31;
    xpc_dictionary_set_int64(v31, "__xpc__event_code__", 4);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v32, "createdDate", a3);
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v32, "startDate", a4);
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a6)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a7)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a8)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a9)
    {
      xpc_dictionary_set_int64(v32, "transferState", a9);
    }

    if (a10)
    {
      xpc_dictionary_set_BOOL(v32, "isOutgoing", 1);
    }

    if (a12)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    if (a14)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    if (a13)
    {
      xpc_dictionary_set_BOOL(v32, "isSticker", 1);
    }

    if (a15)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    if (a16)
    {
      xpc_dictionary_set_BOOL(v32, "hideAttachment", 1);
    }

    if (a21)
    {
      xpc_dictionary_set_int64(v32, "isCommSafetySensitive", a21);
    }

    if (a22)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a23)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a24)
    {
      xpc_dictionary_set_int64(v32, "previewGenerationState", a9);
    }

    xpc_dictionary_set_int64(v32, "totalBytes", a11);
    xpc_dictionary_set_int64(v32, "cloudKitSyncState", a17);
    if (a18)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a19)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a20)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v32, a1, 0);

    xpc_release(v32);
  }
}

void __syncXPCIMDAttachmentRecordRIDForGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 5);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordCopyAttachmentForGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 6);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    IMInsertBoolsToXPCDictionary();
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordCopyStickerAttachmentForStickerCachePath_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 7);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordDoesStickerPathHaveAttachments_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 11);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordDeleteAttachmentForGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 8);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordDeleteAttachmentsOlderThanDays_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 9);
    xpc_dictionary_set_int64(v5, "days", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 164);
    xpc_dictionary_set_int64(v5, "days", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordFindLargestConversations_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 165);
    xpc_dictionary_set_int64(v5, "options", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordFindLargestAttachmentGUIDsWithLimitAndOffset_IPCAction(uint64_t a1, void *a2, int64_t a3, int64_t a4, int64_t a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    v11 = v10;
    xpc_dictionary_set_int64(v10, "__xpc__event_code__", 166);
    if (a2)
    {
      v13 = objc_msgSend_cStringUsingEncoding_(a2, v12, 4);
      if (v13)
      {
        xpc_dictionary_set_string(v11, "attachmentClass", v13);
      }
    }

    xpc_dictionary_set_int64(v11, "options", a3);
    xpc_dictionary_set_int64(v11, "limit", a4);
    xpc_dictionary_set_int64(v11, "offset", a5);
    __XPCIMDMessageStoreSendXPCMessage(v11, a1, 0);

    xpc_release(v11);
  }
}

void __syncXPCIMDAttachmentRecordSpaceTakenByAttachmentClass_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 167);
    xpc_dictionary_set_int64(v5, "options", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordCopyRecentFilenames_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 12);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "numRecents", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordGetPurgeableDiskSpace_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 20);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 21);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 22);
    xpc_dictionary_set_int64(v5, "bytesToFreeUp", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 23);
    xpc_dictionary_set_int64(v7, "chatLimit", a2);
    xpc_dictionary_set_int64(v7, "attachmentLimit", a3);
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 24);
    xpc_dictionary_set_int64(v5, "watermark", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction(uint64_t a1, int64_t a2, int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 25);
    xpc_dictionary_set_int64(v7, "bytesToFreeUp", a2);
    xpc_dictionary_set_int64(v7, "startingOffset", a3);
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction(uint64_t a1, int64_t a2, void *a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 13);
    if (a2)
    {
      xpc_dictionary_set_int64(v9, "queryType", a2);
    }

    if (a3)
    {
      v12 = objc_msgSend_longLongValue(a3, v10, v11);
      xpc_dictionary_set_int64(v9, "afterRow", v12);
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v9, "limit", a4);
    }

    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 14);
    xpc_dictionary_set_int64(v7, "rowid", a2);
    xpc_dictionary_set_int64(v7, "syncState", a3);
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 15);
    xpc_dictionary_set_int64(v5, "rowid", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 16);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 17);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 18);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 19);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentRecordDeleteAttachmentPreviewsOlderThan_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 26);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "numRecents", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDDatabaseClean_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 189);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 27);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 28);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    IMInsertIntsToXPCDictionary();
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 29);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentRecordCopyStickers_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 30);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "numRecents", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordDoesAttachmentWithGUIDExist_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 10);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDAttachmentRecordBulkUpdate_IPCAction(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, int64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, int64_t a21, int a22)
{
  v29 = xpc_dictionary_create(0, 0, 0);
  if (v29)
  {
    v30 = v29;
    xpc_dictionary_set_int64(v29, "__xpc__event_code__", 31);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v30, "createdDate", a3);
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v30, "startDate", a4);
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a6)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a7)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a8)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a9)
    {
      xpc_dictionary_set_int64(v30, "transferState", a9);
    }

    if (a10)
    {
      xpc_dictionary_set_BOOL(v30, "isOutgoing", 1);
    }

    if (a12)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    if (a11)
    {
      xpc_dictionary_set_int64(v30, "totalBytes", a11);
    }

    if (a13)
    {
      xpc_dictionary_set_BOOL(v30, "isSticker", 1);
    }

    if (a14)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    if (a15)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    if (a16)
    {
      xpc_dictionary_set_BOOL(v30, "hideAttachment", 1);
    }

    if (a21)
    {
      xpc_dictionary_set_int64(v30, "isCommSafetySensitive", a21);
    }

    if (a22)
    {
      xpc_dictionary_set_int64(v30, "previewGenerationState", a22);
    }

    xpc_dictionary_set_int64(v30, "cloudKitSyncState", a17);
    if (a18)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a19)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a20)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v30, a1, 0);

    xpc_release(v30);
  }
}

void __asyncXPCIMDCNRecordIDAndHistoryTokenForAliases_IPAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 36);
    if (a2)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    if (a3)
    {
      IMInsertDatasToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 1);

    xpc_release(v7);
  }
}

void __syncXPCIMDCNRecordIDAndHistoryTokenForAliases_IPAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 35);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDCNRecordIDForAliases_IPAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 37);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDIsFavoritedContact_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 38);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDCNGivenNameAndBirthdayForHandleID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 224);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDCNFullNameAndOrganizationNameForHandleID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 225);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDSaveWallpaperForCNContact_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 223);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDHandleRecordCreate_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12)
  {
    v13 = v12;
    xpc_dictionary_set_int64(v12, "__xpc__event_code__", 39);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a6)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v13, a1, 0);

    xpc_release(v13);
  }
}

void __syncXPCIMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 42);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 43);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesForAssociatedGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 45);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesBetweenRowIDs_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 46);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "lowerRowID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "maxRowID", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordCopyMessageForGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 47);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyMessageForRowID_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 51);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "rowID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesForRowIDs_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 52);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyLastReceivedMessage_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 49);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordCopyLastReceivedMessageLimit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 50);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "limit", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordDeleteMessagesForGUIDs_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 53);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordDeleteMessagesOlderThanDays_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 54);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "days", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 55);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v9, "limit", a4);
    }

    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOptionalThreadIdentifierAndLimit_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, int a7, int a8)
{
  v16 = xpc_dictionary_create(0, 0, 0);
  if (v16)
  {
    v17 = v16;
    xpc_dictionary_set_int64(v16, "__xpc__event_code__", 56);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a4)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a6)
    {
      xpc_dictionary_set_int64(v17, "limit", a6);
    }

    if (a7)
    {
      xpc_dictionary_set_BOOL(v17, "only_messages", 1);
    }

    if (a8)
    {
      xpc_dictionary_set_BOOL(v17, "only_unread", 1);
    }

    __XPCIMDMessageStoreSendXPCMessage(v17, a1, 0);

    xpc_release(v17);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, int64_t a7)
{
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    v15 = v14;
    xpc_dictionary_set_int64(v14, "__xpc__event_code__", 57);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a4)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if ((a6 & 0x8000000000000000) == 0)
    {
      xpc_dictionary_set_int64(v15, "numberOfMessagesBefore", a6);
    }

    if ((a7 & 0x8000000000000000) == 0)
    {
      xpc_dictionary_set_int64(v15, "numberOfMessagesAfter", a7);
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v15, a1, 0);

    xpc_release(v15);
  }
}

void __syncXPCIMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesLimit_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 59);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v9, "limit", a4);
    }

    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 60);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 77);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 79);
    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 78);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatGetChatsThatContainRecipient_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 62);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 61);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a4)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesWithHandleOnServiceLimit_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 63);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v9, "limit", a4);
    }

    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  v18 = xpc_dictionary_create(0, 0, 0);
  if (v18)
  {
    v19 = v18;
    xpc_dictionary_set_int64(v18, "__xpc__event_code__", 64);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a5)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a9 != 0.0)
    {
      xpc_dictionary_set_double(v19, "searchAfter", a9);
    }

    if (a7)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a8)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a6)
    {
      xpc_dictionary_set_BOOL(v19, "includeFromMe", 1);
    }

    __XPCIMDMessageStoreSendXPCMessage(v19, a1, 0);

    xpc_release(v19);
  }
}

void __syncXPCIMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12)
  {
    v13 = v12;
    xpc_dictionary_set_int64(v12, "__xpc__event_code__", 65);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a5)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a6 != 0.0)
    {
      xpc_dictionary_set_double(v13, "searchAfter", a6);
    }

    __XPCIMDMessageStoreSendXPCMessage(v13, a1, 0);

    xpc_release(v13);
  }
}

void __syncXPCIMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7)
{
  v13 = xpc_dictionary_create(0, 0, 0);
  if (v13)
  {
    v14 = v13;
    xpc_dictionary_set_int64(v13, "__xpc__event_code__", 66);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    IMInsertBoolsToXPCDictionary();
    if (a7)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a5 != 0.0)
    {
      xpc_dictionary_set_double(v14, "searchAfter", a5);
    }

    __XPCIMDMessageStoreSendXPCMessage(v14, a1, 0);

    xpc_release(v14);
  }
}

void __syncXPCIMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 67);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v9, "replaceID", a4);
    }

    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDMessageRecordCopyUndeliveredOneToOneiMessages_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 73);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "afterRowID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyExpiringOrExpiredMessages_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 74);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "afterRowID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyUnsentUnfailedMessages_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 75);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "afterRowID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 76);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCountAllUnreadMessages_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 80);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordCountAllUnreadMessagesForChatGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 81);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCountAllUnreadMessagesForChatRowID_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 82);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "chatID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordLastFailedMessageRowID_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 84);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordLastSyncedMessageRowID_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 85);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordLastFailedMessageDate_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 86);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordGetMostRecentMessageDate_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 87);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordGetIndentifierForMessageWithGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 88);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordMaxMessageIDFromChatMessageJoin_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 89);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordMarkMessageGUIDAsDeduplicated_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 91);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordGetMessagesSequenceNumber_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 90);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordMarkFailedAllUnsentUnfailedMessages_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 92);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordDeleteOrphanedMessages_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 93);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 95);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 96);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "limit", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "rowID", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID_IPCAction(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    v11 = v10;
    xpc_dictionary_set_int64(v10, "__xpc__event_code__", 68);
    if (a2)
    {
      xpc_dictionary_set_int64(v11, "limit", a2);
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a4)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v11, a1, 0);

    xpc_release(v11);
  }
}

void __syncXPCIMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 97);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "limit", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "date", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesDataDetectionResults_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 98);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "limit", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "rowID", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordCopyMostRecentUseageOfAddresses_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 99);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCreate_IPCAction(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, int64_t a5, int64_t a6, int64_t a7, int64_t a8, int64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int64_t a20, uint64_t a21, int64_t a22, int64_t a23, int64_t a24, uint64_t a25, int64_t a26, int64_t a27, uint64_t a28, int64_t a29, int64_t a30, int64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int64_t a35, uint64_t a36, int64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int64_t a49, int64_t a50, int64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int64_t a55, int64_t a56, uint64_t a57)
{
  v62 = xpc_dictionary_create(0, 0, 0);
  if (v62)
  {
    v63 = v62;
    xpc_dictionary_set_int64(v62, "__xpc__event_code__", 100);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v63, "date", a3);
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v63, "dateRead", a4);
    }

    if (a5)
    {
      xpc_dictionary_set_int64(v63, "dateDelivered", a5);
    }

    if (a6)
    {
      xpc_dictionary_set_int64(v63, "datePlayed", a6);
    }

    if (a7)
    {
      xpc_dictionary_set_int64(v63, "error", a7);
    }

    if (a8)
    {
      xpc_dictionary_set_int64(v63, "type", a8);
    }

    if (a9)
    {
      xpc_dictionary_set_int64(v63, "replaceID", a9);
    }

    if (a10)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (a11)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a12)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a13)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a14)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a15)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a16)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a17)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a19)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a18)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a20)
    {
      xpc_dictionary_set_int64(v63, "itemType", a20);
    }

    if (a21)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a22)
    {
      xpc_dictionary_set_int64(v63, "groupActionType", a22);
    }

    if (a23)
    {
      xpc_dictionary_set_int64(v63, "shareStatus", a23);
    }

    if (a24)
    {
      xpc_dictionary_set_int64(v63, "shareDirection", a24);
    }

    if (a25)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a26)
    {
      xpc_dictionary_set_int64(v63, "expireState", a26);
    }

    if (a27)
    {
      xpc_dictionary_set_int64(v63, "messageActionType", a27);
    }

    if (a28)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a29)
    {
      xpc_dictionary_set_int64(v63, "associatedMessageType", a29);
    }

    if (a31)
    {
      xpc_dictionary_set_int64(v63, "associatedMessageRangeLocation", a30);
      xpc_dictionary_set_int64(v63, "associatedMessageRangeLength", a31);
    }

    if (a32)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a33)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a34)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a35)
    {
      xpc_dictionary_set_int64(v63, "timeExpressiveSendPlayed", a35);
    }

    if (a36)
    {
      IMInsertDatasToXPCDictionary();
    }

    xpc_dictionary_set_int64(v63, "cloudKitSyncState", a37);
    if (a38)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a39)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a40)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a41)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    if (a42)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a43)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a44)
    {
      xpc_dictionary_set_int64(v63, "sortID", a44);
    }

    if (a45)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a46)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a47)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a48)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v63, "partCount", a49);
    if (a50)
    {
      xpc_dictionary_set_int64(v63, "dateEdited", a50);
    }

    if (a51)
    {
      xpc_dictionary_set_int64(v63, "dateRecovered", a51);
    }

    if (a52)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a53)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a54)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v63, "scheduleType", a55);
    xpc_dictionary_set_int64(v63, "scheduleState", a56);
    if (a57)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v63, a1, 0);

    xpc_release(v63);
  }
}

void __syncXPCIMDChatRecordCopyChatForMessageGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 124);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyAttachments_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 102);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "messageID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordSetHandle_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 103);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "messageID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "handleID", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordCopyHandle_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 104);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "messageID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyOtherHandle_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 105);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "messageID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordBulkUpdate_IPCAction(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, int64_t a5, int64_t a6, int64_t a7, int64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int64_t a15, uint64_t a16, int64_t a17, int64_t a18, int64_t a19, int64_t a20, int64_t a21, int64_t a22, uint64_t a23, int64_t a24, int64_t a25, uint64_t a26, int64_t a27, int64_t a28, int64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int64_t a33, uint64_t a34, int64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int64_t a46, int64_t a47, int64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int64_t a52, int64_t a53, uint64_t a54)
{
  v60 = xpc_dictionary_create(0, 0, 0);
  if (v60)
  {
    v61 = v60;
    xpc_dictionary_set_int64(v60, "__xpc__event_code__", 106);
    if (a2)
    {
      xpc_dictionary_set_int64(v61, "messageID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v61, "replaceID", a3);
    }

    if (a4)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a5)
    {
      xpc_dictionary_set_int64(v61, "fzDate", a5);
    }

    if (a6)
    {
      xpc_dictionary_set_int64(v61, "fzDateRead", a6);
    }

    if (a7)
    {
      xpc_dictionary_set_int64(v61, "fzDateDelivered", a7);
    }

    if (a8)
    {
      xpc_dictionary_set_int64(v61, "fzDatePlayed", a8);
    }

    if (a9)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a10)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a11)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (a12)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a13)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a14)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a15)
    {
      xpc_dictionary_set_int64(v61, "handleID", a15);
    }

    if (a16)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a17)
    {
      xpc_dictionary_set_int64(v61, "fzError", a17);
    }

    if (a18)
    {
      xpc_dictionary_set_int64(v61, "fzType", a18);
    }

    if (a19)
    {
      xpc_dictionary_set_int64(v61, "otherHandleID", a19);
    }

    if (a20)
    {
      xpc_dictionary_set_int64(v61, "groupActionType", a20);
    }

    if (a21)
    {
      xpc_dictionary_set_int64(v61, "shareStatus", a21);
    }

    if (a22)
    {
      xpc_dictionary_set_int64(v61, "shareDirection", a22);
    }

    if (a23)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a24)
    {
      xpc_dictionary_set_int64(v61, "expireState", a24);
    }

    if (a25)
    {
      xpc_dictionary_set_int64(v61, "messageActionType", a25);
    }

    if (a26)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a27)
    {
      xpc_dictionary_set_int64(v61, "associatedMessageType", a27);
    }

    if (a29)
    {
      xpc_dictionary_set_int64(v61, "associatedMessageRangeLocation", a28);
      xpc_dictionary_set_int64(v61, "associatedMessageRangeLength", a29);
    }

    if (a30)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a31)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a32)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a33)
    {
      xpc_dictionary_set_int64(v61, "timePlayedExpressiveSend", a33);
    }

    if (a34)
    {
      IMInsertDatasToXPCDictionary();
    }

    xpc_dictionary_set_int64(v61, "cloudKitSyncState", a35);
    if (a36)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a37)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a38)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a39)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a40)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a41)
    {
      xpc_dictionary_set_int64(v61, "sortID", a41);
    }

    if (a42)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a43)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a44)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a45)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v61, "partCount", a46);
    if (a47)
    {
      xpc_dictionary_set_int64(v61, "dateEdited", a47);
    }

    if (a48)
    {
      xpc_dictionary_set_int64(v61, "dateRecovered", a48);
    }

    if (a49)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a50)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a51)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v61, "scheduleType", a52);
    xpc_dictionary_set_int64(v61, "scheduleState", a53);
    if (a54)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v61, a1, 0);

    xpc_release(v61);
  }
}

void __syncXPCIMDMessagePTaskInsertRow_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 107);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertIntsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessagePTaskSelectWithLimit_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 108);
    if (a2)
    {
      IMInsertIntsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessagePTaskUpdateTaskFlagsForGUID_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 109);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertIntsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessagePTaskDeleteAllCompletedTask_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 110);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDChatRecordCreate_IPCAction(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int64_t a14, int64_t a15, int64_t a16, uint64_t a17, uint64_t a18, int64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, int64_t a24, int64_t a25, int64_t a26, int64_t a27, int64_t a28)
{
  v35 = xpc_dictionary_create(0, 0, 0);
  if (v35)
  {
    v36 = v35;
    xpc_dictionary_set_int64(v35, "__xpc__event_code__", 111);
    if (a2)
    {
      xpc_dictionary_set_int64(v36, "style", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v36, "state", a3);
    }

    if (a4)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a5)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a6)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a7)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a8)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a9)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a10)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a11)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a12)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a13)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a14)
    {
      xpc_dictionary_set_int64(v36, "isArchived", a14);
    }

    if (a15)
    {
      xpc_dictionary_set_int64(v36, "isFiltered", a15);
    }

    if (a24)
    {
      xpc_dictionary_set_int64(v36, "isBlackholed", a24);
    }

    if (a16)
    {
      xpc_dictionary_set_int64(v36, "hasHadSuccessfulQuery", a16);
    }

    if (a17)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a18)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v36, "ckSyncState", a19);
    if (a20)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v36, "lastReadMessageTimeStamp", a21);
    if (a22)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a23)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v36, "syndicationType", a25);
    xpc_dictionary_set_int64(v36, "syndicationDate", a26);
    if (a27)
    {
      xpc_dictionary_set_int64(v36, "isRecovered", a27);
    }

    if (a28)
    {
      xpc_dictionary_set_int64(v36, "isDeletingIncomingMessages", a28);
    }

    __XPCIMDMessageStoreSendXPCMessage(v36, a1, 0);

    xpc_release(v36);
  }
}

void __syncXPCIMDChatRecordCopyMessagesWithLimit_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 113);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "chatRowID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "limit", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordSetIsArchived_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 114);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "chatRowID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "isArchived", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordSetIsBlackholed_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 202);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "chatRowID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "isBlackholed", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordSetIsRecovered_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 217);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "chatRowID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "isRecovered", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordSetIsDeletingIncomingMessages_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 218);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "chatRowID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "isDeletingIncomingMessages", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordAddHandle_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 115);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "chatRowID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "handleID", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordRemoveHandle_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 116);
    if (a2)
    {
      xpc_dictionary_set_int64(v7, "chatRowID", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v7, "handleID", a3);
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordCopyAllChats_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 118);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDChatRecordCopyAllNamedChats_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 156);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDChatRecordCopyAllActiveChatsWithLimit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 119);
    xpc_dictionary_set_int64(v5, "limit", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(uint64_t a1, int64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v4)
  {
    v5 = v4;
    Current = CFAbsoluteTimeGetCurrent();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B75AD0;
    v15[3] = &unk_1E7CBACB8;
    v15[4] = a1;
    v15[5] = &v16;
    xpc_dictionary_set_int64(v5, "__xpc__event_code__", 120);
    xpc_dictionary_set_int64(v5, "request", Current);
    xpc_dictionary_set_int64(v5, "limit", a2);
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Progressive copy of all chats started", buf, 2u);
      }
    }

    if (v17[3])
    {
      v8 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = objc_autoreleasePoolPush();
        __XPCIMDMessageStoreSendXPCMessage(v5, v15, 0);
        objc_autoreleasePoolPop(v10);
        v8 = v9 + 1;
        if (v17[3])
        {
          break;
        }
      }

      while (v9++ < 0x95);
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        if (*(v17 + 24))
        {
          v13 = @"completed";
        }

        else
        {
          v13 = @"stopped early";
        }

        *buf = 138412546;
        v21 = v13;
        v22 = 1024;
        v23 = v8;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Progressive copy of all chats %@ with %d messages", buf, 0x12u);
      }
    }

    xpc_release(v5);
  }

  _Block_object_dispose(&v16, 8);
  v14 = *MEMORY[0x1E69E9840];
}

BOOL sub_1B7B75AD0(uint64_t a1, xpc_object_t xdict)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, xdict);
  }

  result = xpc_dictionary_get_BOOL(xdict, "complete");
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __syncXPCIMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 121);
    xpc_dictionary_set_int64(v7, "knownSenderLimit", a2);
    xpc_dictionary_set_int64(v7, "otherFilterLimit", a3);
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordCopyChatRecordForIdentifier_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 230);
    if (a2 != -1)
    {
      xpc_dictionary_set_int64(v5, "identifier", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDChatRecordCopyChatForMessageID_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 123);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "messageID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDChatRecordCopyChatsWithHandleOnService_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 125);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12)
  {
    v13 = v12;
    xpc_dictionary_set_int64(v12, "__xpc__event_code__", 126);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v13, "style", a6);
    __XPCIMDMessageStoreSendXPCMessage(v13, a1, 0);

    xpc_release(v13);
  }
}

void __syncXPCIMDChatRecordCopyChatsWithIdentifierOnService_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 132);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordCopyChatsWithRoomnameOnService_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 134);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordCopyChatsWithGroupID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 135);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDChatRecordCopyNewestChatForGroupIDOnService_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 139);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    IMInsertBoolsToXPCDictionary();
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordDeleteChatForGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 140);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 145);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 146);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 147);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDChatRecordCopyChatGUIDsWithUnreadMessages_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 201);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDChatRecordSetIsFiltered_IPCAction(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    if (v3)
    {
      v4 = v3;
      xpc_dictionary_set_int64(v3, "__xpc__event_code__", 148);
      IMInsertNSStringsToXPCDictionary();
      IMInsertIntsToXPCDictionary();
      __XPCIMDMessageStoreSendXPCMessage(v4, a1, 0);

      xpc_release(v4);
    }
  }
}

void __syncXPCIMDChatRecordDeleteEmptyChats_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 149);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDRepairDuplicateChats_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    xpc_dictionary_set_int64(v7, "__xpc__event_code__", 152);
    IMInsertNSStringsToXPCDictionary();
    IMInsertArraysToXPCDictionary();
    if (objc_msgSend_length(a4, v9, v10, a2, 0))
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v8, a1, 0);

    xpc_release(v8);
  }
}

void __syncXPCIMDSplitDatabaseByDays_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 153);
    IMInsertNSStringsToXPCDictionary();
    xpc_dictionary_set_int64(v5, "days", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDSplitDatabaseByRecentCount_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 154);
    IMInsertNSStringsToXPCDictionary();
    xpc_dictionary_set_int64(v5, "message_count", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDSwitchToDatabase_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 155);
    IMInsertNSStringsToXPCDictionary();
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 157);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __IMDDowngradeDatabaseToVersion_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 158);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    IMInsertIntsToXPCDictionary();
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesToUploadToCloudKit_IPCAction(uint64_t a1, int64_t a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 159);
    xpc_dictionary_set_int64(v7, "limit", a2);
    xpc_dictionary_set_int64(v7, "filter", a3);
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 160);
    xpc_dictionary_set_int64(v5, "limit", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 161);
    xpc_dictionary_set_int64(v5, "limit", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 162);
    xpc_dictionary_set_int64(v5, "limit", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 163);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesToDeleteFromCloudKit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 168);
    xpc_dictionary_set_int64(v5, "limit", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit_IPCAction(uint64_t a1, void *a2, void *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 169);
    if (objc_msgSend_length(a2, v8, v9))
    {
      v12 = a2;
      v13 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

    if (objc_msgSend_length(a3, v10, v11, v12, v13))
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 170);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordCopyMessagesWithReplyToGUIDs_IPCAction(uint64_t a1, void *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 195);
    if (objc_msgSend_length(a2, v6, v7))
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordDeleteTombStonedMessagesForRecordIDs_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 172);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCInsertIntoDeletedChatsTable_IPCAction(uint64_t a1, void *a2, void *a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 173);
    if (objc_msgSend_length(a2, v10, v11))
    {
      v14 = a2;
      v15 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

    if (objc_msgSend_length(a3, v12, v13, v14, v15))
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v9, "timeStamp", a4);
    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDChatRecordCopyChatRecordIDsAndGUIDsToDeleteFromCloudKitWithLimit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 174);
    xpc_dictionary_set_int64(v5, "limit", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDChatClearPendingDeleteChatsTable_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 175);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDChatRemapMessagesWithErrorCodeToErrorCode_IPCAction(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 176);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    xpc_dictionary_set_int64(v9, "fromError", a3);
    xpc_dictionary_set_int64(v9, "toError", a4);
    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDMessageRecordCalculateLocalCloudKitStatistics_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 177);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 178);
    xpc_dictionary_set_int64(v5, "rowID", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 179);
    xpc_dictionary_set_int64(v5, "rowID", a2);
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordSetCloudKitSyncCounts_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 180);
    IMInsertDictionariesToXPCDictionary();
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDAttachmentRecordMarkFailedAttachmentsAsNeedingSync_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 183);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDAttachmentRecordCopyAttachmentsToDeleteFromCloudKit_IPCAction(uint64_t a1, void *a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 184);
    if (a2)
    {
      v10 = objc_msgSend_longLongValue(a2, v8, v9);
      xpc_dictionary_set_int64(v7, "afterRow", v10);
    }

    xpc_dictionary_set_int64(v7, "limit", a3);
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentRecordCopyAttachmentGUIDs_IPCAction(uint64_t a1, void *a2, int64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 185);
    if (a2)
    {
      v10 = objc_msgSend_longLongValue(a2, v8, v9);
      xpc_dictionary_set_int64(v7, "afterRow", v10);
    }

    xpc_dictionary_set_int64(v7, "limit", a3);
    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDAttachmentRecordDeleteTombStonedAttachmentsForRecordIDs_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 186);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 190);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __syncXPCIMDKVValueForKey_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 191);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDKVPersistValueForKey_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 193);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertDatasToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __asyncXPCIMDNotificationsPostNotifications_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 194);
    if (a2)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 1);

    xpc_release(v5);
  }
}

void __asyncXPCIMDMessageRecordRetractNotificationsForChatGuids_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 220);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 1);

    xpc_release(v5);
  }
}

void __asyncXPCIMDNotificationsRetractNotificationsFromFirstUnlock_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 197);
    if (a2)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 1);

    xpc_release(v5);
  }
}

void __syncXPCIMDNotificationsPostUrgentNotificationsForMessages_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 198);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDNotificationsUpdatePostedNotificationsForMessages_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 199);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a3)
    {
      IMInsertDictionariesToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDNotificationsPostFirstUnlockMessage_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 200);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __syncXPCIMDMessageRecordMarkMessageGUIDUnread_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 203);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_int64(v8, "__xpc__event_code__", 204);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      xpc_dictionary_set_BOOL(v9, "fromMe", 1);
    }

    __XPCIMDMessageStoreSendXPCMessage(v9, a1, 0);

    xpc_release(v9);
  }
}

void __syncXPCIMDChatRecordPurgeAttachments_IPCAction(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    if (v3)
    {
      v4 = v3;
      xpc_dictionary_set_int64(v3, "__xpc__event_code__", 205);
      IMInsertNSStringsToXPCDictionary();
      __XPCIMDMessageStoreSendXPCMessage(v4, a1, 0);

      xpc_release(v4);
    }
  }
}

Class sub_1B7B79DA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1EBA53F70)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1B7B79ED4;
    v8[4] = &unk_1E7CB6A70;
    v8[5] = v8;
    v9 = xmmword_1E7CBAD00;
    v10 = 0;
    qword_1EBA53F70 = _sl_dlopen();
  }

  if (!qword_1EBA53F70)
  {
    sub_1B7CF74BC(v8, a2, a3);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("FAFetchFamilyCircleRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF7440(result, v5, v6);
  }

  qword_1EBA53F68 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B79ED4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA53F70 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void IMDDatabaseClean()
{
  v0 = IMDatabaseMessageEventLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "Cleaning Database", v1, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    IMDSMSRecordStoreClean();
  }

  else
  {
    __syncXPCIMDDatabaseClean_IPCAction(0);
  }
}

void *IMDHandleCanonicalizedIDsBulkUpdateQuery(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_count(v1, v2, v3))
  {
    v7 = objc_msgSend_mutableCopy(@"UPDATE OR IGNORE handle SET id = CASE ROWID ", v5, v6);
    v10 = objc_msgSend_mutableCopy(@"("), v8, v9;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v4;
    v11 = v4;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v30, v34, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v18);
          objc_msgSend_appendFormat_(v7, v20, @"WHEN %@ THEN '%@' ", v18, v19);

          objc_msgSend_appendFormat_(v10, v21, @"%@, ", v18);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v30, v34, 16);
      }

      while (v15);
    }

    v24 = objc_msgSend_length(v10, v22, v23);
    objc_msgSend_replaceCharactersInRange_withString_(v10, v25, v24 - 2, 2, @""));
    objc_msgSend_appendFormat_(v7, v26, @"END WHERE ROWID IN %@", v10);

    v4 = v29;
  }

  else
  {
    v7 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t IMDHandleRecordCopyHandlesFilteredUsingPredicateQuery(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 alloc];
  v5 = objc_msgSend_initWithFormat_(v3, v4, @"%@ WHERE %@", @"SELECT ROWID, id, country, service, uncanonicalized_id, person_centric_id FROM handle ", v2);

  return v5;
}

uint64_t IMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimitQuery(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v3)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"WHERE %@", v3);
  }

  else
  {
    v7 = &stru_1F2FA9728;
  }

  if (objc_msgSend_count(v6, v4, v5))
  {
    v9 = objc_msgSend_componentsJoinedByString_(v6, v8, @", ");
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"ORDER BY %@ ", v9);
  }

  else
  {
    v11 = &stru_1F2FA9728;
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_msgSend_initWithFormat_(v12, v13, @"%@ %@ %@ LIMIT ?", @"SELECT ROWID, id, country, service, uncanonicalized_id, person_centric_id FROM handle ", v7, v11);

  return v14;
}

void sub_1B7B7A8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7A91C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bindParametersToSqliteWithStatement_(*(a1 + 32), a2, a4);
  sub_1B7AE0D64(v5, v6, v7);
  v12 = CSDBRecordStoreProcessStatement();
  v9 = objc_msgSend__copyChatRecordsFromCoreSDBResults_(*(a1 + 40), v8, v12);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1B7B7AEB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v5, a2, a4);
  }

  v6 = *(a1 + 56);
  v7 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v7, v8, v9);
  v14 = CSDBRecordStoreProcessStatement();
  v11 = objc_msgSend__copyChatRecordsFromCoreSDBResults_(*(a1 + 40), v10, v14);
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1B7B7B27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7B2A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v5, a2, a4);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend___im_nanosecondTimeInterval(v6, a2, a3);
    CSDBSqliteBindInt64();
  }

  v7 = *(a1 + 64);
  v8 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v8, v9, v10);
  v15 = CSDBRecordStoreProcessStatement();
  v12 = objc_msgSend__copyChatRecordsFromCoreSDBResults_(*(a1 + 48), v11, v15);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_1B7B7B52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7B554(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v3, v4, v5);
  v10 = CSDBRecordStoreProcessStatement();
  v7 = objc_msgSend__copyChatRecordsFromCoreSDBResults_(*(a1 + 40), v6, v10);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1B7B7BDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7BDDC(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFArrayOfCFStrings();
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v5, v6, v7);

  if ((isOneChatEnabled & 1) == 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = *(a1 + 40);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v34, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v30 + 1) + 8 * v14);
          CSDBSqliteBindTextFromCFString();
          ++v14;
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v30, v34, 16);
      }

      while (v12);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v17 = *(a1 + 48);
    CSDBSqliteBindTextFromCFString();
  }

  if (*(a1 + 89) == 1)
  {
    v18 = *(a1 + 56);
    CSDBSqliteBindTextFromCFString();
  }

  v19 = *(a1 + 90);
  v20 = CSDBSqliteBindInt64();
  if ((*(a1 + 91) & 1) == 0)
  {
    v23 = *(a1 + 80);
    v20 = CSDBSqliteBindInt64();
  }

  sub_1B7AE0D64(v20, v21, v22);
  v24 = CSDBRecordStoreProcessStatement();
  v26 = objc_msgSend__copyChatRecordsFromCoreSDBResults_(*(a1 + 64), v25, v24);
  v27 = *(*(a1 + 72) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1B7B7C188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7CF44(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Select guid default", &v10, 2u);
      }
    }
  }

  else
  {
    v4 = MEMORY[0x1E696AD98];
    v10 = *a2;
    v11 = *(a2 + 2);
    v5 = IMDInt64FromSqlColumn(&v10);
    v7 = objc_msgSend_numberWithLongLong_(v4, v6, v5);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void sub_1B7B7D6E4(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *v13 = 138412290;
    *&v13[4] = v5;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted: message GUID in recovery for chat %@, iterating", v13, 0xCu);
  }

  if (*(a2 + 16))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v8 = *(a2 + 16);
        *v13 = 138412546;
        *&v13[4] = v7;
        *&v13[12] = 1024;
        *&v13[14] = v8;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted: Unexpected column in recoverable message in chat %@ with index %d", v13, 0x12u);
      }
    }
  }

  else
  {
    *v13 = *a2;
    *&v13[16] = *(a2 + 16);
    v9 = IMDStringFromSqlColumn(v13);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7B7DB78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend__restoredAttributedBodyForMessageGUID_withRecoveredAttributedParts_(*(a1 + 32), v6, v5, a3);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 192);
    v16[8] = *(a1 + 176);
    v16[9] = v11;
    v16[10] = *(a1 + 208);
    v12 = *(a1 + 128);
    v16[4] = *(a1 + 112);
    v16[5] = v12;
    v13 = *(a1 + 160);
    v16[6] = *(a1 + 144);
    v16[7] = v13;
    v14 = *(a1 + 64);
    v16[0] = *(a1 + 48);
    v16[1] = v14;
    v15 = *(a1 + 96);
    v16[2] = *(a1 + 80);
    v16[3] = v15;
    objc_msgSend__updateMessageRecordForGUID_withAttributedBody_dateRecovered_operation_(v9, v7, v5, v8, v10, v16);
  }
}

void sub_1B7B7E4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7E4D8(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B7E5C8;
  v5[3] = &unk_1E7CB8680;
  v7 = a2;
  v6 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B7E5D4;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 40);
  v4[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"SELECT attributedBody FROM message WHERE message.guid = ?;", v5, v4);
}

BOOL sub_1B7B7E5D4(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = sub_1B7AE1A14;
      v19 = sub_1B7AE2520;
      v20 = 0;
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted: body will iterate", buf, 2u);
      }

      v5 = *(a1 + 40);
      v14[0] = v3;
      v14[1] = 3221225472;
      v14[2] = sub_1B7B7E86C;
      v14[3] = &unk_1E7CB78F8;
      v14[4] = &v15;
      IMDSqlOperationIterateRow(v5, v14);
      if (v16[5])
      {
        v6 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = v16[5];
          *buf = 138412290;
          v22 = v7;
          _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted:Parts: Success in column values returned: %@", buf, 0xCu);
        }

        v8 = v16[5];
        v9 = JWDecodeCodableObjectWithStandardAllowlist();
        v10 = *(*(a1 + 32) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }

      else
      {
        v11 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = v16[5];
          *buf = 138412290;
          v22 = v12;
          _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Recently Deleted:Parts: Error in column values returned: %@", buf, 0xCu);
        }
      }

      _Block_object_dispose(&v15, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B7E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7E86C(uint64_t a1, __int128 *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted: body iterating", &v11, 2u);
  }

  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a2 + 4);
        LODWORD(v11) = 67109120;
        DWORD1(v11) = v6;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Recently Deleted: Unexpected column in recoverable message parts metadata query with index %d", &v11, 8u);
      }
    }
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 2);
    v7 = IMDBlobFromSqlColumn(&v11);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7B7EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7EBC8(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B7ECB8;
  v5[3] = &unk_1E7CB8680;
  v7 = a2;
  v6 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B7ECC4;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 40);
  v4[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"SELECT m.guid, rmp.part_text FROM recoverable_message_part AS rmp JOIN chat AS c ON c.ROWID = rmp.chat_id AND c.guid = ? JOIN message AS m ON m.ROWID = rmp.message_id;", v5, v4);
}

BOOL sub_1B7B7ECC4(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v4 = MEMORY[0x1E69E9820];
    *&v3 = 138412546;
    v19 = v3;
    do
    {
      v27 = 0;
      v28[0] = &v27;
      v28[1] = 0x3032000000;
      v28[2] = sub_1B7AE1A14;
      v28[3] = sub_1B7AE2520;
      v29 = 0;
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = sub_1B7AE1A14;
      v25 = sub_1B7AE2520;
      v26 = 0;
      v5 = *(a1 + 40);
      v20[0] = v4;
      v20[1] = 3221225472;
      v20[2] = sub_1B7B7F00C;
      v20[3] = &unk_1E7CB7B28;
      v20[4] = &v27;
      v20[5] = &v21;
      IMDSqlOperationIterateRow(v5, v20);
      if (!objc_msgSend_length(*(v28[0] + 40), v6, v7) || !v22[5])
      {
        v8 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v28[0] + 40);
          v13 = v22[5];
          *buf = v19;
          v33 = v12;
          v34 = 2112;
          v35 = v13;
          _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Parts: Error in column values returned: %@|%@", buf, 0x16u);
        }

        goto LABEL_15;
      }

      v8 = JWDecodeCodableObjectWithStandardAllowlist();
      v11 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v9, *(v28[0] + 40));
      if (v11)
      {
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v15, v14, *(v28[0] + 40));

        v11 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v16, *(v28[0] + 40));
        if (!v8)
        {
LABEL_11:
          v17 = IMLogHandleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF7D1C(v30, v28, &v31, v17);
          }

          goto LABEL_14;
        }
      }

      objc_msgSend_addObject_(v11, v10, v8, v19);
LABEL_14:

LABEL_15:
      _Block_object_dispose(&v21, 8);

      _Block_object_dispose(&v27, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B7EFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B7F00C(uint64_t a1, __int128 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 == 1)
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    v8 = IMDBlobFromSqlColumn(&v14);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a2 + 4);
        LODWORD(v14) = 67109120;
        DWORD1(v14) = v12;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Unexpected column in recoverable message parts metadata query with index %d", &v14, 8u);
      }
    }
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v14);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B7B7F180(void *a1, __int128 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 <= 1)
  {
    if (!v4)
    {
      v13 = *a2;
      v14 = *(a2 + 2);
      v8 = IMDStringFromSqlColumn(&v13);
      v9 = *(a1[4] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      goto LABEL_12;
    }

    if (v4 == 1)
    {
      v13 = *a2;
      v14 = *(a2 + 2);
      v5 = IMDInt64FromSqlColumn(&v13);
      v6 = a1[5];
      goto LABEL_11;
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v13 = *a2;
        v14 = *(a2 + 2);
        v5 = IMDInt64FromSqlColumn(&v13);
        v6 = a1[6];
        goto LABEL_11;
      case 3:
        v13 = *a2;
        v14 = *(a2 + 2);
        v5 = IMDInt64FromSqlColumn(&v13);
        v6 = a1[7];
        goto LABEL_11;
      case 4:
        v13 = *a2;
        v14 = *(a2 + 2);
        v5 = IMDInt64FromSqlColumn(&v13);
        v6 = a1[8];
LABEL_11:
        *(*(v6 + 8) + 24) = v5;
        goto LABEL_12;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a2 + 4);
      LODWORD(v13) = 67109120;
      DWORD1(v13) = v12;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Unexpected column in recoverable message metadata query with index %d", &v13, 8u);
    }
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7B7F518(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend___im_nanosecondTimeInterval(*(a1 + 32), a2, a3);

  IMDSqlStatementBindInt64(v3 + 32, v4);
}

BOOL sub_1B7B7F554(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B7F618;
      v5[3] = &unk_1E7CB87C0;
      v4 = *(a1 + 40);
      v6 = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);

      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B7F618(uint64_t a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v9) = 67109120;
        DWORD1(v9) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in affected chat query with index %d", &v9, 8u);
      }
    }
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 2);
    v6 = IMDStringFromSqlColumn(&v9);
    objc_msgSend_addObject_(*(a1 + 32), v7, v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7B7F900(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend___im_nanosecondTimeInterval(*(a1 + 32), a2, a3);

  IMDSqlStatementBindInt64(v3 + 32, v4);
}

BOOL sub_1B7B7F93C(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B7FA00;
      v5[3] = &unk_1E7CB87C0;
      v4 = *(a1 + 40);
      v6 = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);

      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B7FA00(uint64_t a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v9) = 67109120;
        DWORD1(v9) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in affected chat query with index %d", &v9, 8u);
      }
    }
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 2);
    v6 = IMDStringFromSqlColumn(&v9);
    objc_msgSend_addObject_(*(a1 + 32), v7, v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7B80368(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1B7B803B0(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Failed to insert service based sync deleted chat records for chat with guid %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7B80574(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v20, v24, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v21;
    v11 = *MEMORY[0x1E69A5F68];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_msgSend_length(v13, v7, v8);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = sub_1B7B8070C;
        v18[3] = &unk_1E7CBAE78;
        v19 = v4;
        objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v13, v15, v11, 0, v14, 0, v18);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v20, v24, 16);
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7B8070C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Parts: Deleting transfer GUID: %@ for recoverable message part for messageGUID: %@", &v7, 0x16u);
  }

  IMDAttachmentRecordDeleteAttachmentForGUID(v3);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7B80BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B80BE4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v3, v4, v5);
  v10 = CSDBRecordStoreProcessStatement();
  v7 = objc_msgSend__copyChatRecordsFromCoreSDBResults_(*(a1 + 32), v6, v10);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1B7B81468(uint64_t a1, const char *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A68C0];
  v7[0] = @"rowID";
  v7[1] = v2;
  v8[0] = @"ROWID";
  v8[1] = @"guid";
  v3 = *MEMORY[0x1E69A68C8];
  v7[2] = *MEMORY[0x1E69A68B8];
  v7[3] = v3;
  v8[2] = @"filename";
  v8[3] = @"original_guid";
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v8, v7, 4);
  v5 = qword_1EDBE5B30;
  qword_1EDBE5B30 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7B81678(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Exception attempting to generate SQL where clause: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1B7B8162CLL);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_1B7B81744(__CFString *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = sub_1B7B81B98(a1, v3);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v6, 0, @"Invalid predicate, unsupported predicate type", 0);
        objc_exception_throw(v7);
      }

      v4 = sub_1B7CF80BC(a1, v3);
    }

    a1 = v4;
  }

  return a1;
}

__CFString *sub_1B7B81810(__CFString *result, const char *a2)
{
  if (result)
  {
    if (a2 > 3)
    {
      if (a2 > 9)
      {
        if (a2 == 10)
        {
          return @"IN";
        }

        else
        {
          if (a2 != 100)
          {
            goto LABEL_21;
          }

          return @"BETWEEN";
        }
      }

      else if (a2 == 4)
      {
        return @"==";
      }

      else
      {
        if (a2 != 5)
        {
          goto LABEL_21;
        }

        return @"!=";
      }
    }

    else if (a2 > 1)
    {
      if (a2 == 2)
      {
        return @">";
      }

      else
      {
        return @">=";
      }
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          return @"<=";
        }

LABEL_21:
        v4 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, 0, @"Invalid predicate, contains unsupported operator", 0, v2, v3);
        objc_exception_throw(v4);
      }

      return @"<";
    }
  }

  return result;
}

__CFString *sub_1B7B818FC(__CFString *result, const char *a2)
{
  if (result)
  {
    if (a2 == 1)
    {
      return @" AND ";
    }

    else
    {
      if (a2 != 2)
      {
        v4 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, 0, @"Invalid predicate, contains unsupported compound predicate type", 0, v2, v3);
        objc_exception_throw(v4);
      }

      return @" OR ";
    }
  }

  return result;
}

__CFString *sub_1B7B8195C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = sub_1B7CF7F3C(a1, v4);
    }

    else
    {
      sub_1B7CF825C(a1, v4);
      v5 = @"?";
    }
  }

  return v5;
}

id sub_1B7B819F8(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (a1)
  {
    v7 = objc_msgSend_expressionType(v3, v4, v5);
    if (!v7)
    {
      v21 = objc_msgSend_constantValue(v6, v8, v9);
      v15 = sub_1B7B8195C(a1, v21);
      goto LABEL_8;
    }

    if (v7 != 3)
    {
      v25 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v8, 0, @"Invalid predicate, contains unsupported expression type", 0);
      objc_exception_throw(v25);
    }

    v10 = objc_msgSend_keyPathsToColumns(a1, v8, v9);
    v13 = objc_msgSend_keyPath(v6, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);

    if (!v15)
    {
      v26 = MEMORY[0x1E695DF30];
      v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"Invalid predicate, unsupported column %@", 0);
      v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v26, v28, 0, v27, 0);
      v30 = v29;

      objc_exception_throw(v29);
    }

    v18 = objc_msgSend_columnPrefix(a1, v16, v17);

    if (v18)
    {
      v21 = objc_msgSend_columnPrefix(a1, v19, v20);
      v23 = objc_msgSend_stringByAppendingString_(v21, v22, v15);

      v15 = v23;
LABEL_8:
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1B7B81B98(__CFString *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (a1)
  {
    v7 = objc_msgSend_leftExpression(v3, v4, v5);
    v8 = sub_1B7B819F8(a1, v7);

    v11 = objc_msgSend_rightExpression(v6, v9, v10);
    v12 = sub_1B7B819F8(a1, v11);

    v15 = objc_msgSend_predicateOperatorType(v6, v13, v14);
    v16 = sub_1B7B81810(a1, v15);
    if (!v8)
    {
      v24 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v17, 0, @"Invalid predicate, leftExpression cannot be nil", 0);
      objc_exception_throw(v24);
    }

    v19 = v16;
    if (v12)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"( %@ %@ %@)", v8, v16, v12);
    }

    else
    {
      v20 = objc_msgSend_predicateOperatorType(v6, v17, v18);
      if (v20 == 5)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"( %@ IS NOT NULL)", v8);
      }

      else
      {
        if (v20 != 4)
        {
          v25 = MEMORY[0x1E695DF30];
          v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"Invalid predicate, operator %@ doesn't make sense with nil", v19);
          v28 = objc_msgSend_exceptionWithName_reason_userInfo_(v25, v27, 0, v26, 0);
          v29 = v28;

          objc_exception_throw(v28);
        }

        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"( %@ IS NULL)", v8);
      }
    }
    v22 = ;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t _IMDSMSDatabaseMigrateData_34_35()
{
  v0 = CSDBSqliteConnectionStatementForSQL();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 8);
    if (v2)
    {
      if (sqlite3_step(v2) == 100)
      {
        v3 = *MEMORY[0x1E695E480];
        do
        {
          sqlite3_column_int(*(v1 + 8), 0);
          if (sqlite3_column_text(*(v1 + 8), 1))
          {
            v4 = sqlite3_column_text(*(v1 + 8), 1);
            v5 = CFStringCreateWithCString(v3, v4, 0x8000100u);
          }

          else
          {
            v5 = 0;
          }

          IMComponentsFromChatGUID();
          v6 = CSDBSqliteConnectionStatementForSQL();
          if (v6 && *(v6 + 8))
          {
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }
        }

        while (sqlite3_step(*(v1 + 8)) == 100);
      }

      CSDBSqliteStatementReset();
    }
  }

  return 1;
}

uint64_t sub_1B7B82708(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_pendingDonations(v2, v4, v5);
  v8 = objc_msgSend_containsObject_(v6, v7, v3);

  return v8 ^ 1u;
}

void sub_1B7B82B24(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMCoreDuetLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_msgSend_count(*(a1 + 32), v8, v9);
      *buf = 134217984;
      v20 = v10;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "Successfully donated %llu interactions", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF82FC(a1, v5, v7);
  }

  v13 = objc_msgSend_queue(*(a1 + 40), v11, v12);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B82C98;
  block[3] = &unk_1E7CB6770;
  v16 = *(a1 + 32);
  v14 = v16.i64[0];
  v18 = vextq_s8(v16, v16, 8uLL);
  dispatch_async(v13, block);

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B7B83170()
{
  v0 = objc_alloc_init(IMDCoreRecentsController);
  v1 = qword_1EBA53AA0;
  qword_1EBA53AA0 = v0;
}

void sub_1B7B83318(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(IMDMessageRecordBatchFetcher);
  v3 = MEMORY[0x1E696AE18];
  v4 = *MEMORY[0x1E69A7170];
  v5 = *MEMORY[0x1E69A7168];
  v7 = objc_msgSend_subarrayWithRange_(*(a1 + 32), v6, *(a1 + 48), *(a1 + 56));
  v9 = objc_msgSend_predicateWithFormat_(v3, v8, @"%K = %@ AND %K IN %@", v4, MEMORY[0x1E695E118], v5, v7);
  objc_msgSend_setPredicate_(v2, v10, v9);

  objc_msgSend_setBatchSize_(v2, v11, 50);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v2;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v24, v28, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(a1 + 40);
        v21 = objc_msgSend_guid(*(*(&v24 + 1) + 8 * v19), v15, v16);
        objc_msgSend_addObject_(v20, v22, v21);

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v24, v28, 16);
    }

    while (v17);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1B7B83648(uint64_t a1, const char *a2, uint64_t a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  _IMDCoreRecentsApiInit(a1, a2, a3);
  v6 = objc_msgSend_firstObject(*(a1 + 32), v4, v5);
  if (objc_msgSend_length(v6, v7, v8))
  {
    v9 = objc_alloc_init(MEMORY[0x1E6998FD8]);
    v34[0] = *MEMORY[0x1E6998FB0];
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v34, 1);
    objc_msgSend_setDomains_(v9, v12, v11);

    v13 = MEMORY[0x1E6998FD0];
    v33 = v6;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, &v33, 1);
    v17 = objc_msgSend_predicateForKey_inCollection_(v13, v16, *MEMORY[0x1E6998F70], v15);

    objc_msgSend_setSearchPredicate_(v9, v18, v17);
    v21 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v19, v20);
    v24 = objc_msgSend_recentsInstance(v21, v22, v23);

    v25 = dispatch_get_global_queue(0, 0);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1B7B8388C;
    v30[3] = &unk_1E7CBB2D8;
    v31 = v24;
    v26 = v24;
    objc_msgSend_performRecentsSearch_queue_completion_(v26, v27, v9, v25, v30);
  }

  else if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "performRecentsSearch: not performing recents SEARCH since a valid handleAlias was not found", buf, 2u);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1B7B8388C(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "performRecentsSearch - recents = %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "performRecentsSearch: recents SEARCH failed with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v5 && objc_msgSend_count(v5, v7, v8))
    {
      v12 = *(a1 + 32);
      v17 = 0;
      v13 = objc_msgSend_removeRecentContacts_error_(v12, v11, v5, &v17);
      v14 = v17;
      if ((v13 & 1) == 0 && IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v14;
          _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Removing recents contacts failed with error %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7B83B6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  _IMDCoreRecentsApiInit(a1, a2, a3);
  if (objc_msgSend_count(*(a1 + 32), v4, v5))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *buf = 138412290;
        v51 = v9;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Attempting to remove messages from CoreRecents. guids={%@}", buf, 0xCu);
      }
    }

    v10 = objc_msgSend_set(MEMORY[0x1E695DFA8], v6, v7);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = *(a1 + 32);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v44, v49, 16);
    if (v14)
    {
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          v18 = objc_msgSend_referenceURLForMessageGUID_(MEMORY[0x1E69A7FE8], v13, v17);
          objc_msgSend_addObject_(v10, v19, v18);
          v21 = objc_msgSend_deprecatedReferenceURLsForMessageGUID_(MEMORY[0x1E69A7FE8], v20, v17);
          objc_msgSend_addObjectsFromArray_(v10, v22, v21);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v44, v49, 16);
      }

      while (v14);
    }

    v23 = objc_alloc_init(MEMORY[0x1E6998FD8]);
    v48 = *MEMORY[0x1E6998FA8];
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, &v48, 1);
    objc_msgSend_setDomains_(v23, v26, v25);

    v29 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v27, v28);
    v32 = objc_msgSend_recentsInstance(v29, v30, v31);

    v33 = IMDIndexingClientRequestQueue();
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1B7B83EC8;
    v40[3] = &unk_1E7CBB300;
    v41 = v10;
    v42 = v32;
    v43 = *(a1 + 40);
    v34 = v32;
    v35 = v10;
    objc_msgSend_performRecentsSearch_queue_completion_(v34, v36, v23, v33, v40);

    v37 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v38 = *(*(a1 + 40) + 16);
    v39 = *MEMORY[0x1E69E9840];

    v38();
  }
}

void sub_1B7B83EC8(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v37 = a3;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v5;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v39, v45, 16);
  if (v13)
  {
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        v17 = objc_msgSend_metadata(v16, v11, v12);
        v19 = objc_msgSend_objectForKey_(v17, v18, @"corerecents:reference-url");

        if (objc_msgSend_containsObject_(*(a1 + 32), v20, v19))
        {
          objc_msgSend_addObject_(v8, v21, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v39, v45, 16);
    }

    while (v13);
  }

  if (!objc_msgSend_count(v8, v22, v23))
  {
    goto LABEL_20;
  }

  v26 = *(a1 + 40);
  v27 = objc_msgSend_copy(v8, v24, v25);
  v38 = 0;
  objc_msgSend_removeRecentContacts_error_(v26, v28, v27, &v38);
  v29 = v38;

  v30 = IMOSLoggingEnabled();
  if (!v29)
  {
    if (v30)
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v35 = objc_msgSend_count(v8, v33, v34);
        *buf = 134217984;
        v44 = v35;
        _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Successfully removed %ld messages from CoreRecents.", buf, 0xCu);
      }
    }

LABEL_20:
    v29 = 0;
    goto LABEL_21;
  }

  if (v30)
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v29;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Recent messages remove failed with error %@.", buf, 0xCu);
    }
  }

LABEL_21:
  (*(*(a1 + 48) + 16))();

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B84A10(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7B851F8()
{
  v0 = objc_alloc_init(IMDINInteractionDonationController);
  v1 = qword_1EBA53AA8;
  qword_1EBA53AA8 = v0;
}

void sub_1B7B85EE0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Business name updated to %@, calling interaction updated handler", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    IMDPersistencePerformBlock(v6, 0, v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7B86DF8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF83C4(v2, v3);
    }
  }
}

void sub_1B7B86EE8()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_resolvedURL", 1, 0, 0, 0);
  v3 = qword_1EBA53F78;
  qword_1EBA53F78 = v2;
}

void sub_1B7B871FC(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6);
      v9 = 136315650;
      v10 = "[IMDCoreSpotlightIndexingManager(SharedWithYou) _updateItem:withResolvedURL:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: indexing resolved url searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7B87614(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6);
      v9 = 136315650;
      v10 = "[IMDCoreSpotlightIndexingManager(SharedWithYou) _updateItem:withFPProviderID:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: Updating FileProviderID for searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7B87770()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_localIdentityProof", 0, 0, 1, 0);
  v3 = qword_1EBA53F88;
  qword_1EBA53F88 = v2;
}

void sub_1B7B8780C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_localIdentity", 0, 0, 1, 0);
  v3 = qword_1EBA53F98;
  qword_1EBA53F98 = v2;
}

void sub_1B7B878A8()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_handleToIdentityMap", 0, 0, 1, 0);
  v3 = qword_1EBA53FA8;
  qword_1EBA53FA8 = v2;
}

void sub_1B7B87E64(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6);
      v9 = 136315650;
      v10 = "[IMDCoreSpotlightIndexingManager(SharedWithYou) _updateItem:withIdentityMap:localIdentity:localIdentityProof:completionBlock:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: Updating Proof of inclusion for searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7B88320(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EBA53FF8)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1B7B8AB6C;
    v4[4] = &unk_1E7CB6A70;
    v4[5] = v4;
    v5 = xmmword_1E7CBB4D0;
    v6 = 0;
    qword_1EBA53FF8 = _sl_dlopen();
  }

  if (!qword_1EBA53FF8)
  {
    sub_1B7CF848C(v4, a2, a3);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

id sub_1B7B88414(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EBA54000;
  v10 = qword_1EBA54000;
  if (!qword_1EBA54000)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7B8ABE0;
    v6[3] = &unk_1E7CB6EA8;
    v6[4] = &v7;
    sub_1B7B8ABE0(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1B7B884DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B884F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMDIndexingClientRequestQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B885D0;
  v10[3] = &unk_1E7CBB3C0;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_1B7B885D0(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed URL resolution with error %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    if (v3)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_uniqueIdentifier(*(a1 + 40), v9, v10);
        v17 = 138412290;
        v18 = v11;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Found resolved URL for item %@", &v17, 0xCu);
      }
    }

    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = objc_msgSend_absoluteString(*(a1 + 56), v4, v5);
    objc_msgSend__updateItem_withResolvedURL_(v12, v15, v13, v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7B887DC()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = qword_1EBA53FB8;
  qword_1EBA53FB8 = v0;

  v2 = qword_1EBA53FB8;
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_set_target_queue(v2, v3);
}

void *sub_1B7B88B60()
{
  result = MEMORY[0x1B8CAFAD0]("FPProviderForShareURL", @"FileProvider");
  off_1EBA53FC8 = result;
  return result;
}

void sub_1B7B88B90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMDIndexingClientRequestQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B88C90;
  v10[3] = &unk_1E7CBB410;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1B7B88C90(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_description(*(a1 + 40), v6, v7);
      v36 = 138412546;
      v37 = v4;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Failed to get FPProviderID:%@ for URL. Error: %@", &v36, 0x16u);
    }
  }

  if (qword_1EBA53FE0 != -1)
  {
    sub_1B7CF8548();
  }

  if (off_1EBA53FD8)
  {
    v9 = off_1EBA53FD8();
    v12 = objc_msgSend_host(*(a1 + 48), v10, v11);
    v14 = objc_msgSend_containsObject_(v9, v13, v12);
    v15 = IMOSLoggingEnabled();
    if (v14)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Setting default FileProviderID for URL", &v36, 2u);
        }
      }

      if (qword_1EBA53FF0 != -1)
      {
        sub_1B7CF8570();
      }

      if (off_1EBA53FE8 && (off_1EBA53FE8(), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v36 = 138412290;
            v37 = v17;
            _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Found FileProviderID from FPCloudDocsProviderID(): %@", &v36, 0xCu);
          }
        }

        v19 = v17;

        v4 = v19;
      }

      else
      {
        v19 = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v36 = 138412290;
            v37 = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
            _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Did not find FileProviderID from FPCloudDocsProviderID(), falling back to default ID: %@", &v36, 0xCu);
          }
        }
      }
    }

    else
    {
      if (v15)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Host for URL not in ValidSharingURLs so not defaulting FPProviderID", &v36, 2u);
        }
      }

      v19 = v4;
    }
  }

  else
  {
LABEL_23:
    v19 = v4;
  }

  v22 = objc_msgSend_filename(*(a1 + 56), v2, v3);
  v25 = objc_msgSend_length(v22, v23, v24) == 0;

  LODWORD(v22) = objc_msgSend_length(v19, v26, v27) == 0;
  v28 = IMOSLoggingEnabled();
  if ((v22 | v25))
  {
    if (v28)
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v33 = objc_msgSend_filename(*(a1 + 56), v31, v32);
        v36 = 138412546;
        v37 = v19;
        v38 = 2112;
        v39 = v33;
        _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Not setting FPProviderID: %@ for URL in CSSI. FileName: %@", &v36, 0x16u);
      }
    }
  }

  else
  {
    if (v28)
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v36 = 138412290;
        v37 = v19;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Setting FPProviderID: %@ for URL in CSSI", &v36, 0xCu);
      }
    }

    objc_msgSend__updateItem_withFPProviderID_(*(a1 + 64), v29, *(a1 + 72), v19);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void *sub_1B7B89174()
{
  result = MEMORY[0x1B8CAFAD0]("CKValidSharingURLHostnames", @"CloudKit");
  off_1EBA53FD8 = result;
  return result;
}

void *sub_1B7B891A4()
{
  result = MEMORY[0x1B8CAFAD0]("FPCloudDocsProviderID", @"FileProvider");
  off_1EBA53FE8 = result;
  return result;
}

void sub_1B7B89A58(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7B8929CLL);
  }

  JUMPOUT(0x1B7B89AB0);
}

void sub_1B7B89A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&v58, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B89AB8(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = objc_msgSend_description(v6, v11, v12);
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Failed to obtain local proof of inclusion: %@", buf, 0xCu);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    if (v7)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412546;
        v25 = v5;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Fetched localIdentityProof: %@ for localIdentity: %@", buf, 0x16u);
      }
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = objc_msgSend_handleToIdentityMap(*(a1 + 56), v8, v9);
    v19 = *(*(*(a1 + 64) + 8) + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1B7B89D00;
    v22[3] = &unk_1E7CB6AE0;
    v23 = *(a1 + 32);
    objc_msgSend__updateItem_withIdentityMap_localIdentity_localIdentityProof_completionBlock_(v16, v20, v17, v18, v19, v5, v22);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1B7B8A634(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v2, v3, @"total time for indexing messages");
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [IMDIndexingContext alloc];
  v7 = objc_msgSend_initForReindexing_reason_(v5, v6, 1, *(a1 + 56));
  v8 = [IMDThreadSafeMessageDictionaryMapper alloc];
  v10 = objc_msgSend_initForFetchingMessageGUIDs_timingCollection_(v8, v9, *(a1 + 32), v2);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1B7B8A9D8;
  v46[3] = &unk_1E7CBB488;
  v35 = v7;
  v47 = v35;
  v34 = v4;
  v48 = v34;
  v37 = objc_msgSend_mapWithBlock_(v10, v11, v46);
  v12 = *(a1 + 40);
  v45 = 0;
  v14 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v13, v12, 1, &v45);
  v36 = v45;
  if (v14)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = v37;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v41, v49, 16);
    if (v19)
    {
      v20 = *v42;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = objc_msgSend_attributeSet(*(*(&v41 + 1) + 8 * i), v17, v18);
          v25 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v23, v24);
          objc_msgSend_setValue_forCustomKey_(v22, v26, v14, v25);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v41, v49, 16);
      }

      while (v19);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v51 = 0;
      v52 = 2112;
      v53 = v36;
      _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Unable to archive collaboration Metadata %@, error %@", buf, 0x16u);
    }
  }

  v30 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v27, v28);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1B7B8AA7C;
  v38[3] = &unk_1E7CB7260;
  v39 = v2;
  v40 = *(a1 + 48);
  v31 = v2;
  objc_msgSend_reIndexWithLocalProofOfInclusionForItemsAsync_completionHandler_(v30, v32, v37, v38);

  v33 = *MEMORY[0x1E69E9840];
}

id sub_1B7B8A9D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v7, v8);
  v12 = objc_msgSend_searchableItemGenerator(v9, v10, v11);
  v14 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v12, v13, v6, v5, *(a1 + 32), *(a1 + 40), 0);

  return v14;
}

uint64_t sub_1B7B8AA7C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stopTimingForKey_(*(a1 + 32), a2, @"total time for indexing messages");
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Done re-indexing messages, time: %@", &v7, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B8AB6C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA53FF8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1B7B8ABE0(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7B88320(a1, a2, a3);
  result = objc_getClass("NRURLResolutionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF8598(result, v5, v6);
  }

  qword_1EBA54000 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7B8AC38(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1EBA54010)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1B7B8AD64;
    v8[4] = &unk_1E7CB6A70;
    v8[5] = v8;
    v9 = xmmword_1E7CBB4E8;
    v10 = 0;
    qword_1EBA54010 = _sl_dlopen();
  }

  if (!qword_1EBA54010)
  {
    sub_1B7CF8690(v8, a2, a3);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("SLCollaborationHandshakeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF8614(result, v5, v6);
  }

  qword_1EBA54008 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B8AD64(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA54010 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B8AE1C()
{
  result = MEMORY[0x1B8CAFAC0](@"LPSharedObjectMetadata", @"LinkPresentation");
  qword_1EBA54018 = result;
  return result;
}

uint64_t sub_1B7B8AE90()
{
  result = MEMORY[0x1B8CAFAC0](@"LPSpecializationMetadata", @"LinkPresentation");
  qword_1EBA54028 = result;
  return result;
}

void sub_1B7B8CFD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], a2, a3);
  v7 = objc_msgSend_groupUUID(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_callForConversationWithGroupUUID_(v4, v8, v7);

  v13 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v10, @"md");
  if (v9)
  {
    v14 = objc_msgSend_dateConnected(v9, v11, v12);
    v17 = v14;
    if (v14 && v13)
    {
      v18 = objc_msgSend_dateConnected(v9, v15, v16);
      v20 = objc_msgSend_compare_(v18, v19, v13);

      if (v20 != 1)
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v25 = objc_msgSend_dateConnected(v9, v23, v24);
            v32 = 138412546;
            v33 = v25;
            v34 = 2112;
            v35 = v13;
            _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Updating conversation with highlight dictionary since call start date %@ is before message date %@", &v32, 0x16u);
          }
        }

        objc_msgSend_addCollaborationDictionary_forConversation_fromMe_(*(a1 + 48), v21, *(a1 + 40), *(a1 + 32), *(a1 + 56));
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v29 = objc_msgSend_dateConnected(v9, v27, v28);
      v30 = *(a1 + 40);
      v32 = 138412802;
      v33 = v29;
      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = v30;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Message was not sent after call start time %@ message send time: %@, so not updating conversation with highlight dictionary %@", &v32, 0x20u);
    }
  }

LABEL_15:

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1B7B8E14C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_highlightedContentServerDate", 0, 0, 1, 0);
  v3 = qword_1EDBE5BC0;
  qword_1EDBE5BC0 = v2;
}

void sub_1B7B8E1E8()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_syndicationContentType", 0, 0, 1, 0);
  v3 = qword_1EBA54038;
  qword_1EBA54038 = v2;
}

void sub_1B7B8E284()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_collaborationIdentifier", 0, 0, 1, 0);
  v3 = qword_1EBA54048;
  qword_1EBA54048 = v2;
}

void sub_1B7B8E320()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_ckBundleIDs", 0, 0, 1, 0);
  v3 = qword_1EBA54058;
  qword_1EBA54058 = v2;
}

void sub_1B7B8E3BC()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpTitle", 1, 0, 0, 0);
  v3 = qword_1EBA54068;
  qword_1EBA54068 = v2;
}

void sub_1B7B8E458()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_collaborationMetadata", 0, 0, 1, 0);
  v3 = qword_1EBA54078;
  qword_1EBA54078 = v2;
}

void sub_1B7B8E4F4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_dataDetectedLink", 0, 0, 1, 0);
  v3 = qword_1EBA54088;
  qword_1EBA54088 = v2;
}

Class sub_1B7B8E54C(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1EBA540A0)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1B7B8E678;
    v8[4] = &unk_1E7CB6A70;
    v8[5] = v8;
    v9 = xmmword_1E7CBB528;
    v10 = 0;
    qword_1EBA540A0 = _sl_dlopen();
  }

  if (!qword_1EBA540A0)
  {
    sub_1B7CF8A40(v8, a2, a3);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("LPLinkMetadataSharedWithYouTransformer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF89C4(result, v5, v6);
  }

  qword_1EBA54098 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B8E678(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA540A0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B8E730()
{
  v0 = objc_alloc_init(IMDSmartRepliesManager);
  v1 = qword_1EBA53A68;
  qword_1EBA53A68 = v0;
}

void sub_1B7B8EDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B8F198(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

Class sub_1B7B8F1D4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7B8F22C(a1, a2, a3);
  result = objc_getClass("SROSmartRepliesMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF8B4C(result, v5, v6);
  }

  qword_1EDBE5B48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7B8F22C(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EDBE5C00)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1B7B8F320;
    v4[4] = &unk_1E7CB6A70;
    v4[5] = v4;
    v5 = xmmword_1E7CBB568;
    v6 = 0;
    qword_1EDBE5C00 = _sl_dlopen();
  }

  if (!qword_1EDBE5C00)
  {
    sub_1B7CF8BC8(v4, a2, a3);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B8F320(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EDBE5C00 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1B7B8F394(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7B8F22C(a1, a2, a3);
  result = objc_getClass("SROSmartRepliesSuggestionRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF8C48(result, v5, v6);
  }

  qword_1EDBE5B38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7B8F3EC(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7B8F22C(a1, a2, a3);
  result = objc_getClass("SROSmartRepliesManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF8CC4(result, v5, v6);
  }

  qword_1EDBE5B58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7B8F444(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  isSpotlightClientStateEnabled = objc_msgSend_isSpotlightClientStateEnabled(v3, v4, v5);

  v7 = off_1E7CB51E0;
  if (!isSpotlightClientStateEnabled)
  {
    v7 = off_1E7CB51D8;
  }

  v8 = objc_alloc_init(*v7);
  v9 = qword_1EBA53A60;
  qword_1EBA53A60 = v8;
}

void sub_1B7B8F54C(uint64_t a1, const char *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v21 = 0;
  v4 = objc_msgSend_currentClientStateWithError_(v3, a2, &v21);
  v5 = v21;
  if (v5)
  {
    v7 = v5;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *buf = 138412546;
        v23 = v9;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Failed to read client state from previous manager %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v20 = 0;
    objc_msgSend_saveClientState_withError_(v10, v6, v4, &v20);
    v11 = v20;
    if (v11)
    {
      v7 = v11;
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 32);
          *buf = 138412546;
          v23 = v15;
          v24 = 2112;
          v25 = v7;
          _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Failed to save client state from previous manager %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      objc_msgSend__finishedMigration(MEMORY[0x1E69A82A8], v12, v13);
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        *buf = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "Imported indexed client state from %@ to %@", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B7B8FA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B7B8FA8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1B7B8FBBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B8FC8C;
  v10[3] = &unk_1E7CBB5B0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  IMDIndexingClientRequest(v10);
}

void sub_1B7B90160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B90180(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1B7B90284(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B90328;
  v6[3] = &unk_1E7CB7F60;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  IMDIndexingClientRequest(v6);
}

id sub_1B7B906BC()
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (qword_1EBA53B88 != -1)
  {
    sub_1B7CF8D7C();
  }

  if (byte_1EBA53B80 == 1)
  {
    v0 = objc_alloc(MEMORY[0x1E696ABC0]);
    v1 = *MEMORY[0x1E69A5F90];
    v8 = *MEMORY[0x1E696A278];
    v9[0] = @"Simulated error due to defaults";
    v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v9, &v8, 1);
    v5 = objc_msgSend_initWithDomain_code_userInfo_(v0, v4, v1, 1000, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1B7B907C8(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (objc_msgSend_length(v5, v6, v7))
    {
      v9 = objc_alloc(MEMORY[0x1E69A82A8]);
      v18 = 0;
      v11 = objc_msgSend_initWithData_error_(v9, v10, v5, &v18);
      v12 = v18;
      if (v12)
      {
        v13 = v12;
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v20 = v13;
            v21 = 2112;
            v22 = v5;
            _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Failed to parse client state. generating a new one! error %@ data %@", buf, 0x16u);
          }
        }

        v15 = objc_alloc_init(MEMORY[0x1E69A82A8]);

        v11 = v15;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E69A82A8]);
    }

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Current client state: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

id sub_1B7B90D14()
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (qword_1EBA53B78 != -1)
  {
    sub_1B7CF8D90();
  }

  if (byte_1EBA540B8 == 1)
  {
    v0 = objc_alloc(MEMORY[0x1E696ABC0]);
    v1 = *MEMORY[0x1E69A5F90];
    v8 = *MEMORY[0x1E696A278];
    v9[0] = @"Simulated error due to defaults";
    v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v9, &v8, 1);
    v5 = objc_msgSend_initWithDomain_code_userInfo_(v0, v4, v1, 1000, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1B7B90E20(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Failed to save client state: %@", &v8, 0xCu);
      }
    }
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Saved client state", &v8, 2u);
    }

    notify_post("com.apple.imdpersistenceagent.notification.spotlightclientstateupdated");
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}