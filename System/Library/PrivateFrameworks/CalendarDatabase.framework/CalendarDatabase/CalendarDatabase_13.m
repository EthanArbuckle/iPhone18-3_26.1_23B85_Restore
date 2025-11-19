void CalDatabasePersistentChangeTrackingInitializeDB(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 129)
  {
    CalPerformSQLWithConnection(a2, @"CREATE TABLE ClientCursor(    ROWID INTEGER PRIMARY KEY AUTOINCREMENT,     client_identifier TEXT,     store_id INTEGER,     latest_consumed_sequence_number INTEGER,     latest_consumed_timestamp REAL,     UNIQUE(client_identifier));");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX ClientCursorClientIdentifier ON ClientCursor(client_identifier); ");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE ClientSequence (client_identifier TEXT, sequence_number INTEGER, timestamp REAL);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX ClientSequenceClientIdentifier ON ClientSequence(client_identifier); ");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE ClientCursorConsumed(   client_identifier TEXT,     consumed_entity_class INTEGER,     consumed_entity_id INTEGER,     consumed_change_id INTEGER,     sequence_number INTEGER);");
    v4 = @"CREATE TRIGGER delete_clientcursor_consumed AFTER DELETE ON ClientCursor     BEGIN         DELETE FROM ClientCursorConsumed WHERE client_identifier = OLD.client_identifier;         DELETE FROM ClientSequence WHERE client_identifier = OLD.client_identifier;     END; ";
    v5 = @"CREATE INDEX ClientCursorConsumedClientIdentifier ON ClientCursorConsumed(client_identifier); ";
LABEL_5:
    CalPerformSQLWithConnection(a2, v5);
    goto LABEL_6;
  }

  if (a3 < 0x87)
  {
    v4 = @"ALTER TABLE ClientSequence ADD COLUMN     timestamp REAL; ";
    v5 = @"ALTER TABLE ClientCursor ADD COLUMN     store_id INTEGER;";
    goto LABEL_5;
  }

  if (a3 >= 0x4651)
  {
    return;
  }

  v4 = @"ALTER TABLE ClientSequence ADD COLUMN     timestamp REAL; ";
LABEL_6:

  CalPerformSQLWithConnection(a2, v4);
}

void CalDatabasePersistentChangeTrackingCopyToAuxDatabase(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __CalDatabasePersistentChangeTrackingCopyToAuxDatabase_block_invoke;
  v12[3] = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
  v12[4] = a2;
  CalPerformSQLWithConnectionAndBindBlock(a1, 0, @"INSERT INTO aux.ClientCursor SELECT * FROM ClientCursor WHERE store_id IN (0, ?) AND client_identifier NOT IN (SELECT client_identifier FROM aux.ClientCursor)", v12);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  v4 = CPSqliteConnectionStatementForSQL();
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v4)
    {
      v6 = **v4;
      if (v6)
      {
        if (*(v6 + 104))
        {
          v7 = CPRecordStoreGetContext();
          if (v7)
          {
            os_unfair_lock_assert_owner(v7 + 20);
          }
        }
      }
    }
  }

  v8 = CPSqliteStatementIntegerResult();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v5)
    {
      v9 = **v5;
      if (v9)
      {
        if (*(v9 + 104))
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }
  }

  CPSqliteStatementReset();
  if (!v8)
  {
LABEL_21:
    CalPerformSQLWithConnection(a1, @"INSERT INTO aux.ClientCursorConsumed SELECT * FROM ClientCursorConsumed");
    CalPerformSQLWithConnection(a1, @"INSERT INTO aux.ClientSequence SELECT * FROM ClientSequence");
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t _CalDatabaseRegisterClientForPersistentChangeTracking(uint64_t a1, void *a2, sqlite3_int64 a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    v32 = 138412290;
    v33 = a2;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_INFO, "_CalDatabaseRegisterClientForPersistentChangeTracking - ClientIdentifier: [%@]", &v32, 0xCu);
  }

  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  SequenceNumber = CPRecordStoreGetSequenceNumber();
  if (!a2)
  {
    v28 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      v29 = "_CalDatabaseRegisterClientForPersistentChangeTracking - ClientIdentifier is NULL";
LABEL_47:
      _os_log_impl(&dword_1DEBB1000, v28, OS_LOG_TYPE_ERROR, v29, &v32, 2u);
    }

LABEL_48:
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((a1 + 80));
    }

    os_unfair_lock_unlock((a1 + 80));
    goto LABEL_51;
  }

  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v12 = *(a1 + 24);
    v13 = CPRecordStoreGetContext();
    if (v13)
    {
      os_unfair_lock_assert_owner(v13 + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v16 = CPRecordStoreGetContext();
      if (v16)
      {
        os_unfair_lock_assert_owner(v16 + 20);
      }
    }
  }

  v17 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (CDBLockingAssertionsEnabled == 1 && v17 != 0)
  {
    if (*v17)
    {
      if (*(*v17 + 104))
      {
        v19 = CPRecordStoreGetContext();
        if (v19)
        {
          os_unfair_lock_assert_owner(v19 + 20);
        }
      }
    }
  }

  v20 = CPSqliteConnectionStatementForSQL();
  if (v20)
  {
    v21 = v20;
    v22 = [a2 UTF8String];
    if (v22)
    {
      v23 = v22;
      if (*v22)
      {
        sqlite3_bind_text(*(v21 + 8), 1, v22, -1, 0);
        sqlite3_bind_int64(*(v21 + 8), 2, a3);
        sqlite3_bind_int(*(v21 + 8), 3, SequenceNumber);
        sqlite3_bind_int(*(v21 + 8), 4, SequenceNumber);
        sqlite3_bind_text(*(v21 + 8), 5, v23, -1, 0);
        v24 = *(v21 + 8);
        Current = CFAbsoluteTimeGetCurrent();
        sqlite3_bind_double(v24, 6, Current);
        _CalDatabasePerformStatementWithWriteLock(a1, v21);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v21)
          {
            v26 = **v21;
            if (v26)
            {
              if (*(v26 + 104))
              {
                v27 = CPRecordStoreGetContext();
                if (v27)
                {
                  os_unfair_lock_assert_owner(v27 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementReset();
        goto LABEL_51;
      }

      v28 = CDBLogHandle;
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      LOWORD(v32) = 0;
      v29 = "_CalDatabaseRegisterClientForPersistentChangeTracking - clientIdentifierCString string is empty";
      goto LABEL_47;
    }

    v28 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      v29 = "_CalDatabaseRegisterClientForPersistentChangeTracking - clientIdentifierCString is NULL";
      goto LABEL_47;
    }

    goto LABEL_48;
  }

LABEL_51:
  v30 = *MEMORY[0x1E69E9840];
  return SequenceNumber;
}

uint64_t CalDatabaseRegisterClientForPersistentChangeTracking(os_unfair_lock_s *a1, void *a2)
{
  os_unfair_lock_lock(a1 + 20);
  v4 = _CalDatabaseRegisterClientForPersistentChangeTracking(a1, a2, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

uint64_t CalDatabaseRegisterClientForPersistentChangeTrackingInStore(os_unfair_lock_s *a1, void *a2)
{
  os_unfair_lock_lock(a1 + 20);
  CPRecordGetID();
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  RowidForRecordID = CPRecordStoreGetRowidForRecordID();
  v8 = _CalDatabaseRegisterClientForPersistentChangeTracking(a1, a2, RowidForRecordID);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v8;
}

void _CalDatabaseAssociateSequenceNumberWithClient(uint64_t a1, void *a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  v6 = CPSqliteConnectionStatementForSQL();
  if (v6)
  {
    v7 = v6;
    v8 = [a2 UTF8String];
    if (v8)
    {
      sqlite3_bind_text(v7[1], 1, v8, -1, 0);
      sqlite3_bind_int(v7[1], 2, a3);
      v9 = v7[1];
      Current = CFAbsoluteTimeGetCurrent();
      sqlite3_bind_double(v9, 3, Current);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v7)
        {
          v11 = **v7;
          if (v11)
          {
            if (*(v11 + 104))
            {
              v12 = CPRecordStoreGetContext();
              if (v12)
              {
                os_unfair_lock_assert_owner(v12 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementPerform();
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        v13 = **v7;
        if (v13)
        {
          if (*(v13 + 104))
          {
            v14 = CPRecordStoreGetContext();
            if (v14)
            {
              os_unfair_lock_assert_owner(v14 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  v15 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_DEFAULT, "Recorded ClientSequence record with clientIdentifier = %{public}@, sequenceNumber = %d", &v17, 0x12u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t CalDatabaseGetChangedRecordIDsSinceSequenceNumberForClient(uint64_t a1, void *a2, int a3, void *a4, _BYTE *a5, _DWORD *a6, CFTypeRef *a7, CFTypeRef *a8, CFTypeRef *a9)
{
  v28 = 0;
  v27 = 0;
  v11 = _CalDatabaseGetChangedObjectIDsSinceSequenceNumberForClient(a1, a2, a3, a4, a5, a6, &v28 + 1, &v28, &v27);
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:SHIDWORD(v28)];
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v28];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v27];
  v15 = [v11 bytes];
  v16 = v15;
  v17 = HIDWORD(v28);
  if (SHIDWORD(v28) < 1)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = 0;
    v19 = (v15 + 4);
    do
    {
      v20 = CalRecordIDCreate(*(v19 - 1), *v19);
      [v12 addObject:v20];

      ++v18;
      v17 = HIDWORD(v28);
      v19 += 2;
    }

    while (v18 < SHIDWORD(v28));
  }

  v21 = v28 + v17;
  if (v18 < v21)
  {
    v22 = (v16 + 8 * v18 + 4);
    do
    {
      v23 = CalRecordIDCreate(*(v22 - 1), *v22);
      [v13 addObject:v23];

      v21 = v28 + HIDWORD(v28);
      v22 += 2;
      LODWORD(v18) = v18 + 1;
    }

    while (v28 + HIDWORD(v28) > v18);
  }

  if (v18 < v21 + v27)
  {
    v24 = (v16 + 8 * v18 + 4);
    do
    {
      v25 = CalRecordIDCreate(*(v24 - 1), *v24);
      [v14 addObject:v25];

      v24 += 2;
      LODWORD(v18) = v18 + 1;
    }

    while (v28 + HIDWORD(v28) + v27 > v18);
  }

  if (a7)
  {
    *a7 = CFAutorelease(v12);
  }

  if (a8)
  {
    *a8 = CFAutorelease(v13);
  }

  if (a9)
  {
    *a9 = CFAutorelease(v14);
  }

  return 0;
}

id _CalDatabaseGetChangedObjectIDsSinceSequenceNumberForClient(uint64_t a1, void *a2, int a3, void *a4, _BYTE *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v95 = a8;
  v94 = a7;
  v91 = a6;
  v90 = a5;
  v96 = a9;
  v122 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 80));
  v13 = [a2 UTF8String];
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v15 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v19 = CPRecordStoreGetContext();
      if (v19)
      {
        os_unfair_lock_assert_owner(v19 + 20);
      }
    }
  }

  v20 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (__CalDatabaseBeginReadTransaction(a1, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:711"))
  {
    RecordStore = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (RecordStore)
      {
        v22 = CPRecordStoreGetContext();
        if (v22)
        {
          os_unfair_lock_assert_owner(v22 + 20);
        }
      }
    }

    SequenceNumber = CPRecordStoreGetSequenceNumber();
    v107 = 0;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v20)
      {
        if (*v20)
        {
          if (*(*v20 + 104))
          {
            v23 = CPRecordStoreGetContext();
            if (v23)
            {
              os_unfair_lock_assert_owner(v23 + 20);
            }
          }
        }
      }
    }

    v24 = CPSqliteConnectionStatementForSQL();
    v25 = v24;
    if (v24)
    {
      sqlite3_bind_text(*(v24 + 8), 1, v13, -1, 0);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v25)
        {
          v26 = **v25;
          if (v26)
          {
            if (*(v26 + 104))
            {
              v27 = CPRecordStoreGetContext();
              if (v27)
              {
                os_unfair_lock_assert_owner(v27 + 20);
              }
            }
          }
        }
      }

      v28 = CPSqliteStatementIntegerResult();
      v29 = v28;
      v31 = v28 == -1 || a3 > 0 && v28 > a3;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v25)
        {
          v35 = **v25;
          if (v35)
          {
            if (*(v35 + 104))
            {
              v36 = CPRecordStoreGetContext();
              if (v36)
              {
                os_unfair_lock_assert_owner(v36 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
      if (v31)
      {
        v88 = 0;
        v37 = 1;
        goto LABEL_76;
      }
    }

    else
    {
      v29 = -1;
    }

    if (v29 != -1 && a3 == -1)
    {
      v39 = v29;
    }

    else
    {
      v39 = a3;
    }

    LODWORD(v93) = v39;
    v40 = *(a1 + 344);
    if (v40 >= 0)
    {
      v41 = @"sequence_number > ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?) AND sequence_number <= ?";
    }

    else
    {
      v41 = @"sequence_number > ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?)";
    }

    if (v40 >= 0)
    {
      v42 = @"sequence_number > ?  AND entity_type = ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?) AND sequence_number <= ?";
    }

    else
    {
      v42 = @"sequence_number > ?  AND entity_type = ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?)";
    }

    v43 = generateNotInClause(a4);
    v44 = v43;
    if (v43)
    {
      v42 = [(__CFString *)v42 stringByAppendingFormat:@" AND store_id %@", v43];
      v45 = [(__CFString *)v41 stringByAppendingFormat:@" AND store_id %@", v44];
      v46 = [(__CFString *)v41 stringByAppendingFormat:@" AND record %@", v44];
    }

    else
    {
      v46 = v41;
      v45 = v41;
    }

    Mutable = CFDictionaryCreateMutable(0, 13, 0, MEMORY[0x1E695E9E8]);
    v48 = *(a1 + 344);
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = ___CalDatabaseGetChangedObjectIDsSinceSequenceNumberForClient_block_invoke;
    v97[3] = &unk_1E8694B08;
    v49 = v46;
    v98 = v49;
    v99 = v41;
    v50 = v42;
    v100 = v50;
    v51 = v45;
    v105 = a1;
    v106 = Mutable;
    v101 = v51;
    v102 = &v116;
    v103 = &v112;
    v104 = &v108;
    _prepareBindingBlocksForFindingChangesOfEachEntityType(a1, a2, v93, v48, v97);
    v88 = Mutable;

    v37 = 0;
LABEL_76:
    __CalDatabaseRollbackTransaction(a1, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:840");
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((a1 + 80));
    }

    os_unfair_lock_unlock((a1 + 80));
    v52 = v88;
    v87 = v37;
    if (!v88)
    {
      v34 = 0;
      v53 = v91;
      v54 = v90;
      if (!v90)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

    v53 = v91;
    v54 = v90;
    Count = CFDictionaryGetCount(v88);
    v85[1] = v85;
    MEMORY[0x1EEE9AC00]();
    v56 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    if ((8 * Count) >= 0x200)
    {
      v57 = 512;
    }

    else
    {
      v57 = 8 * Count;
    }

    bzero(v85 - v56, v57);
    MEMORY[0x1EEE9AC00]();
    bzero(v85 - v56, v57);
    v93 = v85 - v56;
    v92 = v85 - v56;
    CFDictionaryGetKeysAndValues(v52, (v85 - v56), (v85 - v56));
    v58 = v117[3];
    v59 = v113[3] + v58;
    v85[0] = 8 * (v109[3] + v59);
    v60 = malloc_type_malloc(v85[0], 0x39730E45uLL);
    if (v60)
    {
      if (Count >= 1)
      {
        v89 = Count;
        v61 = 0;
        v62 = 0;
        while (1)
        {
          v63 = *&v93[8 * v61];
          v64 = *&v92[8 * v61];
          v65 = CFDictionaryGetCount(v64);
          v66 = malloc_type_malloc(8 * v65, 0x100004000313F17uLL);
          if (!v66)
          {
            break;
          }

          v67 = malloc_type_malloc(8 * v65, 0x100004000313F17uLL);
          if (!v67)
          {
            v80 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v121 = v65;
              _os_log_impl(&dword_1DEBB1000, v80, OS_LOG_TYPE_ERROR, "Unable to allocate space for %zu object states", buf, 0xCu);
            }

            free(v66);
            goto LABEL_115;
          }

          CFDictionaryGetKeysAndValues(v64, v66, v67);
          if (v65 >= 1)
          {
            v68 = v67;
            v69 = v66;
            do
            {
              v71 = *v68++;
              v70 = v71;
              if (v71 <= 2)
              {
                if (v70 == 1)
                {
                  goto LABEL_100;
                }

                if (v70 == 2)
                {
                  v75 = v58 + 1;
                  v74 = v62;
                  v73 = v59;
                  v62 = v58;
                  goto LABEL_101;
                }
              }

              else
              {
                if (v70 == 6 || v70 == 4)
                {
                  v73 = v59 + 1;
                  v74 = v62;
                  v75 = v58;
                  v62 = v59;
LABEL_101:
                  v76 = &v60[8 * v62];
                  *v76 = v63;
                  *(v76 + 1) = *v69;
                  v62 = v74;
                  v58 = v75;
                  v59 = v73;
                  goto LABEL_102;
                }

                if (v70 == 3)
                {
LABEL_100:
                  v74 = v62 + 1;
                  v75 = v58;
                  v73 = v59;
                  goto LABEL_101;
                }
              }

LABEL_102:
              ++v69;
              --v65;
            }

            while (v65);
          }

          free(v66);
          free(v67);
          if (++v61 == v89)
          {
            v77 = 0;
            goto LABEL_116;
          }
        }

        v79 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v121 = v65;
          _os_log_impl(&dword_1DEBB1000, v79, OS_LOG_TYPE_ERROR, "Unable to allocate space for %zu object IDs", buf, 0xCu);
        }

LABEL_115:
        v77 = 1;
LABEL_116:
        v53 = v91;
        v54 = v90;
        v52 = v88;
LABEL_117:
        CFRelease(v52);
        v81 = v77 ^ 1;
        if (!v60)
        {
          v81 = 0;
        }

        if (v81)
        {
          v82 = objc_alloc(MEMORY[0x1E695DEF0]);
          v34 = [v82 initWithBytesNoCopy:v60 length:v85[0] freeWhenDone:1];
        }

        else
        {
          if (v60)
          {
            free(v60);
          }

          v34 = 0;
          v87 = 1;
        }

        if (!v54)
        {
          goto LABEL_126;
        }

LABEL_125:
        *v54 = v87;
LABEL_126:
        if (v53)
        {
          *v53 = SequenceNumber;
        }

        if (v94)
        {
          *v94 = v117[3];
        }

        if (v95)
        {
          *v95 = v113[3];
        }

        if (v96)
        {
          *v96 = v109[3];
        }

        goto LABEL_134;
      }
    }

    else
    {
      v78 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v121 = v85[0];
        _os_log_impl(&dword_1DEBB1000, v78, OS_LOG_TYPE_ERROR, "Unable to allocated %zu bytes for returning changes", buf, 0xCu);
      }
    }

    v77 = 0;
    goto LABEL_117;
  }

  v32 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v32, OS_LOG_TYPE_ERROR, "Couldn't start transaction before fetching changes since sequence number", buf, 2u);
  }

  if (v94)
  {
    *v94 = 0;
  }

  v33 = v96;
  if (v95)
  {
    *v95 = 0;
  }

  if (v33)
  {
    *v33 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  v34 = 0;
LABEL_134:
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);
  v83 = *MEMORY[0x1E69E9840];

  return v34;
}

void sub_1DEC7E1DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t CalDatabaseGetChangedEKObjectsForClient(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, int a7, int *a8, _BYTE *a9, void *a10)
{
  v16 = a10;
  v17 = a4;
  if (a10)
  {
    *a10 = 0;
  }

  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v19 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v23 = CPRecordStoreGetContext();
      if (v23)
      {
        os_unfair_lock_assert_owner(v23 + 20);
      }
    }
  }

  v24 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (__CalDatabaseBeginReadTransaction(a1, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1094"))
  {
    v67 = a5;
    v70 = a2;
    v71 = a8;
    v73 = v17;
    RecordStore = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      v27 = CPRecordStoreGetContext();
      if (v27)
      {
        os_unfair_lock_assert_owner(v27 + 20);
      }
    }

    SequenceNumber = CPRecordStoreGetSequenceNumber();
    v28 = -1;
    v85 = -1;
    LatestConsumedSequenceNumberForClient = _CalDatabaseGetLatestConsumedSequenceNumberForClient(v24, a3, &v85);
    v30 = LatestConsumedSequenceNumberForClient;
    v31 = v85;
    if (LatestConsumedSequenceNumberForClient)
    {
      v32 = -1;
    }

    else
    {
      v32 = 0;
    }

    v33 = v85 == -1 && LatestConsumedSequenceNumberForClient == 0;
    if ((LatestConsumedSequenceNumberForClient != 0) != v33)
    {
      v42 = v32;
      goto LABEL_67;
    }

    if (a6)
    {
      if (v24)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*v24)
          {
            if (*(*v24 + 104))
            {
              v34 = CPRecordStoreGetContext();
              if (v34)
              {
                os_unfair_lock_assert_owner(v34 + 20);
              }
            }
          }
        }
      }

      v35 = CPSqliteConnectionStatementForSQL();
      if (v35)
      {
        v36 = v35;
        sqlite3_bind_int(*(v35 + 8), 1, v31);
        sqlite3_bind_text(*(v36 + 8), 2, [a3 UTF8String], -1, 0);
        *buf = a6;
        v87 = 0xFFFFFFFF00000000;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v36)
          {
            v37 = **v36;
            if (v37)
            {
              if (*(v37 + 104))
              {
                v38 = CPRecordStoreGetContext();
                if (v38)
                {
                  os_unfair_lock_assert_owner(v38 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementSendResults();
        v39 = HIDWORD(v87) - 1;
        if (HIDWORD(v87) - 1 <= v31)
        {
          v39 = v31 + 1;
        }

        v40 = SequenceNumber;
        if (HIDWORD(v87) != -1)
        {
          v40 = v39;
        }

        goto LABEL_57;
      }

      v43 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v43, OS_LOG_TYPE_ERROR, "Couldn't create statement for finding appropriate sequence number; using latest sequence number instead", buf, 2u);
      }
    }

    v40 = SequenceNumber;
LABEL_57:
    v44 = *(a1 + 344);
    if (v44 < 0)
    {
      v45 = v40 < SequenceNumber;
      if (v40 >= SequenceNumber)
      {
        v28 = -1;
      }

      else
      {
        v28 = v40;
      }
    }

    else
    {
      v45 = v40 < v44;
      if (v40 >= v44)
      {
        v28 = *(a1 + 344);
      }

      else
      {
        v28 = v40;
      }
    }

    v42 = v45;
    if (v31 == -1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v45 & (a7 ^ 1);
    }

LABEL_67:
    v17 = v73;
    if (a9)
    {
      *a9 = v33;
    }

    v46 = 0;
    if (v30 || v33 == 1)
    {
      goto LABEL_88;
    }

    v66 = v42;
    v47 = objc_opt_new();
    if (v28 >= 0)
    {
      v48 = @"sequence_number > ?  AND entity_type = ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?) AND sequence_number <= ?";
    }

    else
    {
      v48 = @"sequence_number > ?  AND entity_type = ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?)";
    }

    if (v28 >= 0)
    {
      v49 = @"sequence_number > ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?) AND sequence_number <= ?";
    }

    else
    {
      v49 = @"sequence_number > ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?)";
    }

    if (([v73 entityID] & 0x80000000) == 0)
    {
      if ([v73 entityType] == 6)
      {
        v50 = v49;
        v51 = @"store_id";
LABEL_82:
        v48 = [(__CFString *)v48 stringByAppendingFormat:@" AND %@ = ?", v51];
        v64 = v51;
        v49 = v50;
        v52 = [(__CFString *)v50 stringByAppendingFormat:@" AND %@ = ?", v64];
        v65 = [v73 entityID];
LABEL_84:
        v53 = generateNotInClause(v67);
        v54 = v53;
        if (v53)
        {
          [(__CFString *)v48 stringByAppendingFormat:@" AND store_id %@", v53];
          v55 = v68 = v47;

          v56 = [v52 stringByAppendingFormat:@" AND store_id %@", v54];

          v57 = [(__CFString *)v49 stringByAppendingFormat:@"AND record %@", v54];
          v48 = v55;
          v47 = v68;
          v52 = v56;
        }

        else
        {
          v57 = v49;
        }

        v69 = v85;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __CalDatabaseGetChangedEKObjectsForClient_block_invoke;
        v75[3] = &unk_1E8694AB8;
        v17 = v73;
        v76 = v73;
        v77 = v57;
        v78 = v49;
        v79 = v48;
        v82 = v70;
        v83 = a1;
        v80 = v52;
        v84 = v65;
        v46 = v47;
        v81 = v46;
        v58 = v52;
        v59 = v48;
        v60 = v57;
        _prepareBindingBlocksForFindingChangesOfEachEntityType(a1, a3, v69, v28, v75);

        v42 = v66;
        v16 = a10;
LABEL_88:
        __CalDatabaseRollbackTransaction(a1, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1224");
        if (CDBLockingAssertionsEnabled == 1)
        {
          os_unfair_lock_assert_owner((a1 + 80));
        }

        os_unfair_lock_unlock((a1 + 80));
        if (v71)
        {
          v61 = SequenceNumber;
          if (v28 != -1)
          {
            v61 = v28;
          }

          *v71 = v61;
        }

        if (v16)
        {
          v62 = v33;
        }

        else
        {
          v62 = 1;
        }

        if ((v62 & 1) == 0)
        {
          *v16 = v46;
        }

        goto LABEL_100;
      }

      if ([v73 entityType] == 1)
      {
        v50 = v49;
        v51 = @"calendar_id";
        goto LABEL_82;
      }
    }

    v65 = -1;
    v52 = v49;
    goto LABEL_84;
  }

  v41 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_ERROR, "Couldn't start transaction to get changed ek objects", buf, 2u);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  v42 = -1;
LABEL_100:

  return v42;
}

uint64_t _CalDatabaseGetLatestConsumedSequenceNumberForClient(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  result = CPSqliteConnectionStatementForSQL();
  if (result)
  {
    v7 = result;
    sqlite3_bind_text(*(result + 8), 1, [a2 UTF8String], -1, 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        v8 = **v7;
        if (v8)
        {
          if (*(v8 + 104))
          {
            v9 = CPRecordStoreGetContext();
            if (v9)
            {
              os_unfair_lock_assert_owner(v9 + 20);
            }
          }
        }
      }
    }

    *a3 = CPSqliteStatementIntegerResult();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        v10 = **v7;
        if (v10)
        {
          if (*(v10 + 104))
          {
            v11 = CPRecordStoreGetContext();
            if (v11)
            {
              os_unfair_lock_assert_owner(v11 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    return 0;
  }

  return result;
}

id generateNotInClause(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_msgSend(@"NOT IN ("), "mutableCopy";
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 appendFormat:@"%i, ", objc_msgSend(*(*(&v10 + 1) + 8 * i), "intValue")];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [v2 replaceCharactersInRange:objc_msgSend(v2 withString:{"length") - 1, 1, @""}]);
  }

  else
  {
    v2 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v2;
}

void _prepareBindingBlocksForFindingChangesOfEachEntityType(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v9 = a5;
  v10 = [a2 UTF8String];
  v11 = 1;
  if (!*(a1 + 362))
  {
    v11 = 0;
  }

  v12 = off_1ECDDF370;
  if (!*(a1 + 362))
  {
    v12 = __classesTrackingChanges;
  }

  v24 = v12;
  v13 = __classesTrackingChanges[v11];
  if (v13)
  {
    v14 = v10;
    v15 = 0;
    do
    {
      v25 = v15;
      v16 = &_getSubEntityTypesForClass_notificationSubclasses;
      if (v13 != &kCalNotificationClass)
      {
        v16 = 0;
      }

      if (v13 == &kCalParticipantClass)
      {
        v16 = &_getSubEntityTypesForClass_participantSubclasses;
      }

      if (v13 == &kCalEventClass)
      {
        v17 = &_getSubEntityTypesForClass_eventSubclasses;
      }

      else
      {
        v17 = v16;
      }

      v18 = v17;
      do
      {
        if (v17)
        {
          v19 = *v18;
          if (!v19)
          {
            break;
          }

          v20 = v29;
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = ___prepareBindingBlocksForFindingChangesOfEachEntityType_block_invoke;
          v29[3] = &__block_descriptor_52_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
          v30 = a3;
          v31 = v19;
          v29[4] = v14;
          v21 = 6;
        }

        else
        {
          v19 = *(v13 + 16);
          v20 = v26;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = ___prepareBindingBlocksForFindingChangesOfEachEntityType_block_invoke_2;
          v26[3] = &__block_descriptor_52_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
          v26[4] = v14;
          v27 = a3;
          v28 = v19;
          v21 = 5;
        }

        *(v20 + 12) = a4;
        v22 = MEMORY[0x1E12C7520]();
        v23 = v22;
        if (v19 && v22)
        {
          v9[2](v9, v13, v19, v17 != 0, v22, v21 + (a4 >= 0));
        }

        if (!v17)
        {
          break;
        }

        ++v18;
      }

      while (v19);
      v15 = v25 + 1;
      v13 = v24[v25 + 1];
    }

    while (v13);
  }
}

void __CalDatabaseGetChangedEKObjectsForClient_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, int a6)
{
  *(&v85[3] + 4) = *MEMORY[0x1E69E9840];
  v11 = a5;
  if (a2 != &kCalStoreClass || *(a1 + 32) == 0)
  {
    v13 = *(a1 + 80);
    if (v13 && CFSetGetCount(v13))
    {
      v14 = CFSetContainsValue(*(a1 + 80), a3);
      if (a4)
      {
        if (!(v14 | CFSetContainsValue(*(a1 + 80), *(a2 + 64))))
        {
          goto LABEL_81;
        }
      }

      else if (!v14)
      {
        goto LABEL_81;
      }

      if (a3 != 6)
      {
        if (a3 == 26)
        {
          v15 = 48;
LABEL_21:
          v16 = *(a1 + v15);
          if (*(a1 + 96) == -1)
          {
            v18 = MEMORY[0x1E12C7520](v11);
          }

          else
          {
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = __CalDatabaseGetChangedEKObjectsForClient_block_invoke_2;
            v76[3] = &unk_1E8694A90;
            v77 = v11;
            v17 = *(a1 + 96);
            v78 = a6;
            v79 = v17;
            v18 = MEMORY[0x1E12C7520](v76);
          }

          RecordStore = _CalDatabaseGetRecordStore(*(a1 + 88));
          v75 = *(*(a1 + 88) + 172);
          v20 = *(a1 + 72);
          v21 = v18;
          if (_buildDictionariesWithChangeTablePropertiesForEntityType_onceToken != -1)
          {
            __CalDatabaseGetChangedEKObjectsForClient_block_invoke_cold_1();
          }

          v22 = [MEMORY[0x1E696B098] valueWithPointer:a2];
          v23 = [_buildDictionariesWithChangeTablePropertiesForEntityType_changePropertiesByRecord objectForKeyedSubscript:v22];
          v24 = [v23 pointerValue];

          if (!v24)
          {
            v31 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              v32 = *a2;
              *buf = 136315138;
              v85[0] = v32;
              v28 = "Unsupported record descriptor %s";
              v29 = v31;
              v30 = 12;
              goto LABEL_33;
            }

LABEL_80:

            goto LABEL_81;
          }

          v65 = v22;
          v25 = *v24;
          if (*v24 < 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = malloc_type_calloc(*v24, 8uLL, 0x6004044C4A2DFuLL);
            if (!v26)
            {
              v27 = CDBLogHandle;
              v22 = v65;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v28 = "Failed to allocate property values array";
                v29 = v27;
                v30 = 2;
LABEL_33:
                _os_log_impl(&dword_1DEBB1000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
                goto LABEL_80;
              }

              goto LABEL_80;
            }
          }

          v66 = v20;
          v69 = v25;
          v70 = a3;
          v64 = v11;
          v82 = 0;
          v83 = 0;
          v33 = v25;
          v80 = 0;
          v81 = 0;
          if (RecordStore)
          {
            if (CDBLockingAssertionsEnabled)
            {
              Context = CPRecordStoreGetContext();
              if (Context)
              {
                os_unfair_lock_assert_owner(Context + 20);
              }
            }
          }

          LODWORD(v61) = v25;
          v59 = *(v24 + 1);
          v60 = v26;
          v62 = v21;
          v63 = v16;
          CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithBindBlockAndPropertiesA();
          v35 = v83;
          v72 = v81;
          v73 = v82;
          v68 = v80;
          v36 = *(v24 + 2);
          v37 = *(v24 + 3);
          v74 = v66;
          v38 = v36;
          theArray = v35;
          if (!v35 || !v73 || !v72 || (Count = CFArrayGetCount(v35), Count < 1))
          {
LABEL_64:

            if (v83)
            {
              CFRelease(v83);
            }

            if (v82)
            {
              CFRelease(v82);
            }

            v11 = v64;
            if (v81)
            {
              CFRelease(v81);
            }

            v21 = v62;
            v16 = v63;
            if (v80)
            {
              CFRelease(v80);
            }

            if (v26)
            {
              if (v33 >= 1)
              {
                v57 = v26;
                do
                {
                  if (*v57)
                  {
                    CFRelease(*v57);
                  }

                  ++v57;
                  --v33;
                }

                while (v33);
              }

              free(v26);
            }

            v22 = v65;
            v20 = v66;
            goto LABEL_80;
          }

          v39 = 0;
          v40 = 0x1E696A000uLL;
          while (1)
          {
            v41 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{v33 + 4, v59, v60, v61}];
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v39);
            v43 = CFArrayGetValueAtIndex(v73, v39);
            v44 = CFArrayGetValueAtIndex(v72, v39);
            v45 = [[CADObjectID alloc] initWithEntityType:v70 entityID:ValueAtIndex databaseID:v75];
            [v41 setObject:v45 forKeyedSubscript:@"record"];

            v46 = [*(v40 + 3480) numberWithInt:v43];
            [v41 setObject:v46 forKeyedSubscript:@"type"];

            v47 = [*(v40 + 3480) numberWithInt:v44];
            [v41 setObject:v47 forKeyedSubscript:@"ROWID"];

            if (v68)
            {
              v48 = [*(v40 + 3480) numberWithInt:{CFArrayGetValueAtIndex(v68, v39)}];
              [v41 setObject:v48 forKeyedSubscript:@"sequence_number"];
            }

            if (v69 >= 1)
            {
              break;
            }

LABEL_63:
            [v74 addObject:v41];

            ++v39;
            v40 = 0x1E696A000;
            if (v39 == Count)
            {
              goto LABEL_64;
            }
          }

          v49 = 0;
          while (1)
          {
            v50 = [v38 objectAtIndexedSubscript:v49];
            v51 = v26[v49];
            v52 = *(v37 + 4 * v49);
            if ((v52 - 2) < 2 || v52 == 7)
            {
              v54 = CFArrayGetValueAtIndex(v51, v39);
              v55 = [MEMORY[0x1E695DFB0] null];

              if (v54 == v55)
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (v52 != 1)
              {
                v56 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109378;
                  LODWORD(v85[0]) = v52;
                  WORD2(v85[0]) = 2112;
                  *(v85 + 6) = v50;
                  _os_log_impl(&dword_1DEBB1000, v56, OS_LOG_TYPE_ERROR, "Unsupported type %i for key %@", buf, 0x12u);
                }

                goto LABEL_59;
              }

              v54 = [MEMORY[0x1E696AD98] numberWithInteger:{CFArrayGetValueAtIndex(v51, v39)}];
            }

            [v41 setObject:v54 forKeyedSubscript:v50];
LABEL_58:

LABEL_59:
            if (v33 == ++v49)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_19:
        v15 = 64;
        if (a4)
        {
          v15 = 56;
        }

        goto LABEL_21;
      }
    }

    else if (a3 != 6)
    {
      if (a3 == 26)
      {
        goto LABEL_81;
      }

      goto LABEL_19;
    }

    v15 = 40;
    goto LABEL_21;
  }

LABEL_81:

  v58 = *MEMORY[0x1E69E9840];
}

uint64_t __CalDatabaseGetChangedEKObjectsForClient_block_invoke_2(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 32) + 16))();
  v4 = *(a2 + 8);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);

  return sqlite3_bind_int(v4, v5, v6);
}

void CalDatabaseClearSuperfluousChanges(os_unfair_lock_s *a1)
{
  v1 = a1;
  v112 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 20);
  if (__CalDatabaseBeginWriteTransaction(v1, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1621"))
  {
    v2 = &CDBLockingAssertionsEnabled;
    if (CDBLockingAssertionsEnabled == 1 && *(v1 + 24) != 0)
    {
      v4 = *(v1 + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    if (CDBLockingAssertionsEnabled == 1 && Database != 0)
    {
      if (*(Database + 104))
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }
    }

    v9 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    if (v9)
    {
      v10 = v9;
      v11 = os_signpost_id_generate(CDBPerfSignpostsHandle);
      v12 = CDBPerfSignpostsHandle;
      v13 = v12;
      spid = v11;
      v97 = v11 - 1;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DEBB1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ClearSuperfluousChanges", &unk_1DECC006F, buf, 2u);
      }

      v14 = [MEMORY[0x1E695DFA8] set];
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v10)
        {
          if (*(*v10 + 104))
          {
            v15 = CPRecordStoreGetContext();
            if (v15)
            {
              os_unfair_lock_assert_owner(v15 + 20);
            }
          }
        }
      }

      v16 = CPSqliteConnectionStatementForSQL();
      if (v16)
      {
        v17 = v16;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v16)
          {
            v18 = **v16;
            if (v18)
            {
              if (*(v18 + 104))
              {
                v19 = CPRecordStoreGetContext();
                if (v19)
                {
                  os_unfair_lock_assert_owner(v19 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementSendResults();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v17)
          {
            v20 = **v17;
            if (v20)
            {
              if (*(v20 + 104))
              {
                v21 = CPRecordStoreGetContext();
                if (v21)
                {
                  os_unfair_lock_assert_owner(v21 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementReset();
      }

      v98 = v1;
      v99 = [MEMORY[0x1E695DF90] dictionary];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      obj = v14;
      v22 = [obj countByEnumeratingWithState:&v107 objects:buf count:16];
      v23 = 0x1E695D000uLL;
      if (v22)
      {
        v24 = v22;
        v25 = *v108;
        do
        {
          v26 = 0;
          v100 = v24;
          do
          {
            if (*v108 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v104 = *(*(&v107 + 1) + 8 * v26);
            v27 = *(v23 + 3952);
            v28 = objc_opt_new();
            if (*v2 == 1)
            {
              if (*v10)
              {
                if (*(*v10 + 104))
                {
                  v29 = CPRecordStoreGetContext();
                  if (v29)
                  {
                    os_unfair_lock_assert_owner(v29 + 20);
                  }
                }
              }
            }

            v30 = CPSqliteConnectionStatementForSQL();
            if (v30)
            {
              v31 = v30;
              sqlite3_bind_int(*(v30 + 8), 1, [v104 intValue]);
              if (*v2 == 1)
              {
                if (*v31)
                {
                  v32 = **v31;
                  if (v32)
                  {
                    if (*(v32 + 104))
                    {
                      v33 = CPRecordStoreGetContext();
                      if (v33)
                      {
                        os_unfair_lock_assert_owner(v33 + 20);
                      }
                    }
                  }
                }
              }

              CPSqliteStatementSendResults();
              if (*v2 == 1)
              {
                if (*v31)
                {
                  v34 = **v31;
                  if (v34)
                  {
                    if (*(v34 + 104))
                    {
                      v35 = CPRecordStoreGetContext();
                      if (v35)
                      {
                        os_unfair_lock_assert_owner(v35 + 20);
                      }
                    }
                  }
                }
              }

              CPSqliteStatementReset();
              v36 = [v28 mutableCopy];
              v37 = objc_alloc_init(EKPersistentChangeStoreInfo);
              if ([v36 count])
              {
                v38 = v25;
                v39 = v23;
                v40 = v10;
                v41 = v2;
                v42 = [v36 objectAtIndexedSubscript:0];
                v43 = [v42 clientIdentifier];
                [(EKPersistentChangeStoreInfo *)v37 setMinConsumedClientIdentifier:v43];

                -[EKPersistentChangeStoreInfo setMinConsumedSequenceNumber:](v37, "setMinConsumedSequenceNumber:", [v42 consumedSequenceNumber]);
                if ([v36 count] < 2)
                {
                  [(EKPersistentChangeStoreInfo *)v37 setSecondMinConsumedSequenceNumber:0x7FFFFFFFLL];
                }

                else
                {
                  v44 = [v36 objectAtIndexedSubscript:1];
                  -[EKPersistentChangeStoreInfo setSecondMinConsumedSequenceNumber:](v37, "setSecondMinConsumedSequenceNumber:", [v44 consumedSequenceNumber]);
                }

                v2 = v41;
                v10 = v40;
                v23 = v39;
                v25 = v38;
                v24 = v100;
              }

              else
              {
                [(EKPersistentChangeStoreInfo *)v37 setMinConsumedSequenceNumber:0x7FFFFFFFLL];
              }

              if (v37)
              {
                [v99 setObject:v37 forKey:v104];
              }
            }

            ++v26;
          }

          while (v24 != v26);
          v24 = [obj countByEnumeratingWithState:&v107 objects:buf count:16];
        }

        while (v24);
      }

      v45 = v99;
      v105 = [v99 objectForKey:&unk_1F59EFA10];
      if (!v105)
      {
        v105 = objc_alloc_init(EKPersistentChangeStoreInfo);
        [(EKPersistentChangeStoreInfo *)v105 setMinConsumedSequenceNumber:0x7FFFFFFFLL];
      }

      [v99 removeObjectForKey:&unk_1F59EFA10];
      v1 = v98;
      v46 = _CalDatabaseCopyOfAllStores(v98);
      if (v46)
      {
        v47 = v46;
        v101 = v10;
        Count = CFArrayGetCount(v46);
        v49 = objc_alloc_init(MEMORY[0x1E696AD60]);
        obja = [*(v23 + 3952) arrayWithCapacity:Count];
        if (Count < 1)
        {
          CFRelease(v47);
        }

        else
        {
          v50 = 0;
          v51 = 0;
          do
          {
            CFArrayGetValueAtIndex(v47, v50);
            ID = CPRecordGetID();
            v53 = [MEMORY[0x1E696AD98] numberWithInt:ID];
            v54 = [v45 objectForKey:v53];

            if (!v54)
            {
              v54 = v105;
            }

            if ([(EKPersistentChangeStoreInfo *)v54 minConsumedSequenceNumber]!= 0x7FFFFFFF)
            {
              if (v51)
              {
                [v49 appendString:@" OR "];
              }

              v55 = [(EKPersistentChangeStoreInfo *)v54 secondMinConsumedSequenceNumber];
              v56 = [(EKPersistentChangeStoreInfo *)v54 minConsumedSequenceNumber];
              v57 = [(EKPersistentChangeStoreInfo *)v54 minConsumedSequenceNumber];
              v58 = v57;
              if (v55 <= v56)
              {
                [v49 appendFormat:@"((store_id == %d) AND (sequence_number <= %d))", ID, v57];
              }

              else
              {
                v59 = [(EKPersistentChangeStoreInfo *)v54 secondMinConsumedSequenceNumber];
                v60 = [(EKPersistentChangeStoreInfo *)v54 minConsumedClientIdentifier];
                [v49 appendFormat:@"((store_id == %d) AND ((sequence_number <= %d) OR ((sequence_number <= %d) AND (sequence_number IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier == %@", ID, v58, v59, v60];
              }

              v45 = v99;
              v61 = [MEMORY[0x1E696AD98] numberWithInt:ID];
              [obja addObject:v61];

              v51 = 1;
            }

            ++v50;
          }

          while (Count != v50);
          CFRelease(v47);
          v2 = &CDBLockingAssertionsEnabled;
          if (v51)
          {
            [v49 appendString:@" OR "];
          }
        }

        objc_msgSend(v49, "appendString:", @"store_id NOT IN (");
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v64 = obja;
        v65 = [v64 countByEnumeratingWithState:&v107 objects:buf count:16];
        if (v65)
        {
          v66 = v65;
          v67 = 0;
          v68 = *v108;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v108 != v68)
              {
                objc_enumerationMutation(v64);
              }

              v70 = *(*(&v107 + 1) + 8 * i);
              if (v67)
              {
                [v49 appendString:{@", "}];
              }

              [v49 appendFormat:@"%i", objc_msgSend(v70, "intValue")];
              v67 = 1;
            }

            v66 = [v64 countByEnumeratingWithState:&v107 objects:buf count:16];
          }

          while (v66);
        }

        [v49 appendString:@" OR sequence_number IS NULL"]);
        v1 = v98;
        if (*(v98 + 362))
        {
          v71 = 1;
        }

        else
        {
          v71 = 0;
        }

        v72 = off_1ECDDF370;
        if (!*(v98 + 362))
        {
          v72 = __classesTrackingChanges;
        }

        v73 = __classesTrackingChanges[v71];
        if (v73)
        {
          v74 = v72 + 1;
          do
          {
            v75 = *(v73 + 16);
            if (v75 == 26 || v75 == 6)
            {
              if (v105)
              {
                v77 = [(EKPersistentChangeStoreInfo *)v105 minConsumedSequenceNumber];
              }

              else
              {
                v77 = 0x7FFFFFFFLL;
              }

              v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sequence_number <= %d", v77];
            }

            else
            {
              v78 = v49;
            }

            v79 = v78;
            RecordStore = _CalDatabaseGetRecordStore(v98);
            if (*v2 == 1 && RecordStore != 0)
            {
              v82 = CPRecordStoreGetContext();
              if (v82)
              {
                os_unfair_lock_assert_owner(v82 + 20);
              }
            }

            CPRecordStoreDeleteChangesForClassToSequenceNumberWhere();

            v83 = *v74++;
            v73 = v83;
          }

          while (v83);
        }

        v45 = v99;
        v10 = v101;
      }

      if (_CalDatabaseClearSuperfluousChanges_onceToken != -1)
      {
        CalDatabaseClearSuperfluousChanges_cold_1();
      }

      v84 = &_CalDatabaseClearSuperfluousChanges___clientSequenceDeleteQueryAuxDB;
      if (!*(v1 + 362))
      {
        v84 = &_CalDatabaseClearSuperfluousChanges___clientSequenceDeleteQueryMainDB;
      }

      v85 = *v84;
      if (*v2 == 1)
      {
        if (*v10)
        {
          if (*(*v10 + 104))
          {
            v86 = CPRecordStoreGetContext();
            if (v86)
            {
              os_unfair_lock_assert_owner(v86 + 20);
            }
          }
        }
      }

      v87 = CPSqliteConnectionStatementForSQL();
      if (v87)
      {
        v88 = v87;
        if (*v2 == 1)
        {
          if (*v87)
          {
            v89 = **v87;
            if (v89)
            {
              if (*(v89 + 104))
              {
                v90 = CPRecordStoreGetContext();
                if (v90)
                {
                  os_unfair_lock_assert_owner(v90 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementPerform();
        if (*v2 == 1)
        {
          if (*v88)
          {
            v91 = **v88;
            if (v91)
            {
              if (*(v91 + 104))
              {
                v92 = CPRecordStoreGetContext();
                if (v92)
                {
                  os_unfair_lock_assert_owner(v92 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementReset();
      }

      v93 = CDBPerfSignpostsHandle;
      v94 = v93;
      if (v97 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
      {
        *v106 = 0;
        _os_signpost_emit_with_name_impl(&dword_1DEBB1000, v94, OS_SIGNPOST_INTERVAL_END, spid, "ClearSuperfluousChanges", &unk_1DECC006F, v106, 2u);
      }
    }

    v95 = CDBLogHandle;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v95, OS_LOG_TYPE_DEBUG, "Committing after clearing superfluous changes.", buf, 2u);
    }

    __CalDatabaseCommitTransaction(v1, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1631");
    if (*v2 != 1)
    {
      goto LABEL_93;
    }

LABEL_92:
    os_unfair_lock_assert_owner((v1 + 80));
    goto LABEL_93;
  }

  v62 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v62, OS_LOG_TYPE_ERROR, "Unable to start transaction before clearing superfluous changes.", buf, 2u);
  }

  if (CDBLockingAssertionsEnabled)
  {
    goto LABEL_92;
  }

LABEL_93:
  os_unfair_lock_unlock((v1 + 80));
  v63 = *MEMORY[0x1E69E9840];
}

void CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient(os_unfair_lock_s *a1, void *a2, int a3)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void _CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient(uint64_t a1, void *a2, int a3)
{
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v7 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  v12 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (__CalDatabaseBeginWriteTransaction(a1, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1640"))
  {
    v13 = [a2 UTF8String];
    if (CDBLockingAssertionsEnabled == 1 && v12 != 0)
    {
      if (*v12)
      {
        if (*(*v12 + 104))
        {
          v15 = CPRecordStoreGetContext();
          if (v15)
          {
            os_unfair_lock_assert_owner(v15 + 20);
          }
        }
      }
    }

    v16 = CPSqliteConnectionStatementForSQL();
    if (v16)
    {
      v17 = v16;
      sqlite3_bind_text(*(v16 + 8), 1, v13, -1, 0);
      sqlite3_bind_int(v17[1], 2, a3);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v17)
        {
          v18 = **v17;
          if (v18)
          {
            if (*(v18 + 104))
            {
              v19 = CPRecordStoreGetContext();
              if (v19)
              {
                os_unfair_lock_assert_owner(v19 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementPerform();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v17)
        {
          v20 = **v17;
          if (v20)
          {
            if (*(v20 + 104))
            {
              v21 = CPRecordStoreGetContext();
              if (v21)
              {
                os_unfair_lock_assert_owner(v21 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    RecordStore = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (RecordStore)
      {
        v23 = CPRecordStoreGetContext();
        if (v23)
        {
          os_unfair_lock_assert_owner(v23 + 20);
        }
      }
    }

    SequenceNumber = CPRecordStoreGetSequenceNumber();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v12)
      {
        if (*v12)
        {
          if (*(*v12 + 104))
          {
            v25 = CPRecordStoreGetContext();
            if (v25)
            {
              os_unfair_lock_assert_owner(v25 + 20);
            }
          }
        }
      }
    }

    v26 = CPSqliteConnectionStatementForSQL();
    if (v26)
    {
      v27 = v26;
      v28 = *(v26 + 8);
      Current = CFAbsoluteTimeGetCurrent();
      sqlite3_bind_double(v28, 1, Current);
      sqlite3_bind_int(v27[1], 2, a3);
      sqlite3_bind_text(v27[1], 3, v13, -1, 0);
      sqlite3_bind_int(v27[1], 4, SequenceNumber);
      sqlite3_bind_text(v27[1], 5, v13, -1, 0);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v27)
        {
          v30 = **v27;
          if (v30)
          {
            if (*(v30 + 104))
            {
              v31 = CPRecordStoreGetContext();
              if (v31)
              {
                os_unfair_lock_assert_owner(v31 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementPerform();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v27)
        {
          v32 = **v27;
          if (v32)
          {
            if (*(v32 + 104))
            {
              v33 = CPRecordStoreGetContext();
              if (v33)
              {
                os_unfair_lock_assert_owner(v33 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    __CalDatabaseCommitTransaction(a1, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1673");
  }

  else
  {
    v34 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v35 = 0;
      _os_log_impl(&dword_1DEBB1000, v34, OS_LOG_TYPE_ERROR, "Unable to start transaction before cleaing changes", v35, 2u);
    }
  }
}

void _CalDatabaseClearAllChangeHistoryForAllClients(uint64_t a1)
{
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v3 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  v8 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (__CalDatabaseBeginWriteTransaction(a1, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1689"))
  {
    if (CDBLockingAssertionsEnabled == 1 && v8 != 0)
    {
      if (*v8)
      {
        if (*(*v8 + 104))
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    v11 = CPSqliteConnectionStatementForSQL();
    if (v11)
    {
      v12 = v11;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v11)
        {
          v13 = **v11;
          if (v13)
          {
            if (*(v13 + 104))
            {
              v14 = CPRecordStoreGetContext();
              if (v14)
              {
                os_unfair_lock_assert_owner(v14 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementPerform();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v12)
        {
          v15 = **v12;
          if (v15)
          {
            if (*(v15 + 104))
            {
              v16 = CPRecordStoreGetContext();
              if (v16)
              {
                os_unfair_lock_assert_owner(v16 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    RecordStore = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      v19 = CPRecordStoreGetContext();
      if (v19)
      {
        os_unfair_lock_assert_owner(v19 + 20);
      }
    }

    SequenceNumber = CPRecordStoreGetSequenceNumber();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v8)
      {
        if (*v8)
        {
          if (*(*v8 + 104))
          {
            v21 = CPRecordStoreGetContext();
            if (v21)
            {
              os_unfair_lock_assert_owner(v21 + 20);
            }
          }
        }
      }
    }

    v22 = CPSqliteConnectionStatementForSQL();
    if (v22)
    {
      v23 = v22;
      v24 = *(v22 + 8);
      Current = CFAbsoluteTimeGetCurrent();
      sqlite3_bind_double(v24, 1, Current);
      sqlite3_bind_int(v23[1], 2, SequenceNumber);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v23)
        {
          v26 = **v23;
          if (v26)
          {
            if (*(v26 + 104))
            {
              v27 = CPRecordStoreGetContext();
              if (v27)
              {
                os_unfair_lock_assert_owner(v27 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementPerform();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v23)
        {
          v28 = **v23;
          if (v28)
          {
            if (*(v28 + 104))
            {
              v29 = CPRecordStoreGetContext();
              if (v29)
              {
                os_unfair_lock_assert_owner(v29 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    if (*(a1 + 362))
    {
      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v31 = off_1ECDDF370;
    if (!*(a1 + 362))
    {
      v31 = __classesTrackingChanges;
    }

    if (__classesTrackingChanges[v30])
    {
      v32 = v31 + 1;
      do
      {
        if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
        {
          v34 = *(a1 + 24);
          v35 = CPRecordStoreGetContext();
          if (v35)
          {
            os_unfair_lock_assert_owner(v35 + 20);
          }
        }

        CPRecordStoreDeleteChangesForClassToSequenceNumberWhere();
      }

      while (*v32++);
    }

    __CalDatabaseCommitTransaction(a1, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1719");
  }

  else
  {
    v37 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v38 = 0;
      _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_ERROR, "Unable to start transaction before cleaing change history", v38, 2u);
    }
  }
}

void CalDatabaseClearAllChangeHistoryForAllClients(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseClearAllChangeHistoryForAllClients(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void CalDatabaseEnumerateUnconsumedObjectChangesForClient(os_unfair_lock_s *a1, void *a2, int a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  os_unfair_lock_lock(a1 + 20);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke;
  v24[3] = &unk_1E8694AE0;
  v25 = @"changedIDs";
  v26 = @"changeTypes";
  v27 = @"changeTableIDs";
  v28 = @"sequenceNumbers";
  v29 = &v30;
  _CalDatabaseEnumerateUnconsumedObjectChangesForClient(a1, a2, a3, 0, v24);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v31[5];
  v8 = [obj countByEnumeratingWithState:&v20 objects:v36 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 integerValue];
        v13 = [v31[5] objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:@"changedIDs"];

        v15 = [v13 objectForKeyedSubscript:@"changeTypes"];

        v16 = [v13 objectForKeyedSubscript:@"changeTableIDs"];

        v17 = [v13 objectForKeyedSubscript:@"sequenceNumbers"];

        v7[2](v7, v12, v14, v15, v16, v17);
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v36 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v30, 8);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _CalDatabaseEnumerateUnconsumedObjectChangesForClient(uint64_t a1, void *a2, int a3, char a4, void *a5)
{
  v9 = a5;
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v11 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v15 = CPRecordStoreGetContext();
      if (v15)
      {
        os_unfair_lock_assert_owner(v15 + 20);
      }
    }
  }

  v16 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (__CalDatabaseBeginReadTransaction(a1, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1743"))
  {
    *buf = 0;
    if (v16)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*v16)
        {
          if (*(*v16 + 104))
          {
            v17 = CPRecordStoreGetContext();
            if (v17)
            {
              os_unfair_lock_assert_owner(v17 + 20);
            }
          }
        }
      }
    }

    v18 = CPSqliteConnectionStatementForSQL();
    if (v18)
    {
      v19 = v18;
      sqlite3_bind_text(*(v18 + 8), 1, [a2 UTF8String], -1, 0);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v19)
        {
          v20 = **v19;
          if (v20)
          {
            if (*(v20 + 104))
            {
              v21 = CPRecordStoreGetContext();
              if (v21)
              {
                os_unfair_lock_assert_owner(v21 + 20);
              }
            }
          }
        }
      }

      v22 = CPSqliteStatementIntegerResult();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v19)
        {
          v23 = **v19;
          if (v23)
          {
            if (*(v23 + 104))
            {
              v24 = CPRecordStoreGetContext();
              if (v24)
              {
                os_unfair_lock_assert_owner(v24 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    else
    {
      v22 = 0;
    }

    if (a3 == -1)
    {
      *buf = 0;
      if (_CalDatabaseGetLatestConsumedSequenceNumberForClient(v16, a2, buf))
      {
        a3 = -1;
      }

      else
      {
        a3 = *buf;
      }
    }

    v26 = @"sequence_number > ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?)";
    v27 = @"sequence_number > ?  AND entity_type = ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?)";
    if (a4)
    {
      v28 = -1;
      if (v22)
      {
LABEL_44:
        v27 = [(__CFString *)v27 stringByAppendingString:@" AND store_id = ?"];
        v29 = [(__CFString *)v26 stringByAppendingString:@" AND store_id = ?"];
        v30 = [(__CFString *)v26 stringByAppendingString:@" AND record = ?"];
        v26 = v29;
LABEL_49:
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = ___CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke;
        v34[3] = &unk_1E8694B58;
        v35 = v27;
        v36 = v26;
        v40 = v22;
        v37 = v30;
        v39 = a1;
        v38 = v9;
        v31 = v30;
        v32 = v26;
        v33 = v27;
        _prepareBindingBlocksForFindingChangesOfEachEntityType(a1, a2, a3, v28, v34);
        __CalDatabaseRollbackTransaction(a1, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1812");

        goto LABEL_50;
      }
    }

    else
    {
      v28 = *(a1 + 344);
      if (v28 >= 0)
      {
        v27 = @"sequence_number > ?  AND entity_type = ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?) AND sequence_number <= ?";
        v26 = @"sequence_number > ?  AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)  AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE client_identifier = ? AND consumed_entity_class = ?) AND sequence_number <= ?";
      }

      if (v22)
      {
        goto LABEL_44;
      }
    }

    v30 = v26;
    goto LABEL_49;
  }

  v25 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_ERROR, "Couldn't start transaction to enumerate unconsumed changes.", buf, 2u);
  }

LABEL_50:
}

void __CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke(uint64_t a1, uint64_t a2, CFArrayRef theArray, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[4] = *MEMORY[0x1E69E9840];
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v12 = objc_opt_new();
      v13 = *(*(a1 + 64) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22[0] = theArray;
    v22[1] = a4;
    v21 = *(a1 + 56);
    v22[2] = a5;
    v22[3] = a6;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v19 count:4];
    v16 = *(*(*(a1 + 64) + 8) + 40);
    v17 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    [v16 setObject:v15 forKeyedSubscript:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void CalDatabaseClearIndividualChangeRowIDsForClient(uint64_t a1, void *a2, const __CFArray *a3, int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v9 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v13 = CPRecordStoreGetContext();
      if (v13)
      {
        os_unfair_lock_assert_owner(v13 + 20);
      }
    }
  }

  v14 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (!__CalDatabaseBeginWriteTransaction(a1, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1893"))
  {
    NSLog(&cfstr_Caldatabaseper.isa, 0);
    goto LABEL_86;
  }

  v47 = [a2 cStringUsingEncoding:4];
  if (a4 <= 99)
  {
    v15 = &kCalAlarmClass;
    switch(a4)
    {
      case 1:
        v15 = &kCalCalendarClass;
        goto LABEL_33;
      case 2:
      case 3:
        goto LABEL_24;
      case 4:
        goto LABEL_33;
      case 5:
        v15 = &kCalRecurrenceClass;
        goto LABEL_33;
      case 6:
        v15 = &kCalStoreClass;
        goto LABEL_33;
      case 7:
      case 8:
        goto LABEL_23;
      case 9:
        v15 = &kCalEventActionClass;
        goto LABEL_33;
      case 10:
        v15 = &kCalExceptionDateClass;
        goto LABEL_33;
      case 11:
        v15 = &kCalAttachmentClass;
        goto LABEL_33;
      case 15:
        v15 = &kCalShareeClass;
        goto LABEL_33;
      case 16:
      case 17:
      case 19:
        goto LABEL_22;
      case 21:
        v15 = &kCalContactClass;
        goto LABEL_33;
      case 26:
        v15 = &kCalAuxDatabaseClass;
        goto LABEL_33;
      default:
        goto LABEL_89;
    }
  }

  switch(a4)
  {
    case 'd':
LABEL_23:
      v15 = &kCalParticipantClass;
      goto LABEL_33;
    case 'e':
LABEL_24:
      v15 = &kCalEventClass;
LABEL_33:
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v15];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) FROM %@Changes WHERE ROWID = ? AND sequence_number > ?", v16];
      v44 = v16;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO ClientCursorConsumed (client_identifier, consumed_entity_class, consumed_entity_id, consumed_change_id, sequence_number) VALUES (?, ?, (SELECT record FROM %@Changes WHERE ROWID = ? LIMIT 1), ?, (SELECT sequence_number FROM %@Changes WHERE ROWID = ?))", v16, v16];
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v14)
        {
          if (*v14)
          {
            if (*(*v14 + 104))
            {
              v19 = CPRecordStoreGetContext();
              if (v19)
              {
                os_unfair_lock_assert_owner(v19 + 20);
              }
            }
          }
        }
      }

      v46 = a4;
      value = a2;
      v43 = v17;
      v20 = CPSqliteConnectionStatementForSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v14)
        {
          if (*v14)
          {
            if (*(*v14 + 104))
            {
              v21 = CPRecordStoreGetContext();
              if (v21)
              {
                os_unfair_lock_assert_owner(v21 + 20);
              }
            }
          }
        }
      }

      v42 = v18;
      v22 = CPSqliteConnectionStatementForSQL();
      v48 = -2;
      if (v20)
      {
        v23 = v22;
        if (v22)
        {
          if (a3)
          {
            Count = CFArrayGetCount(a3);
            _CalDatabaseGetLatestConsumedSequenceNumberForClient(v14, a2, &v48);
            if (Count >= 1)
            {
              v25 = 0;
              v26 = v48;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a3, v25);
                sqlite3_bind_int(v20[1], 1, ValueAtIndex);
                sqlite3_bind_int(v20[1], 2, v26);
                *buf = 0;
                if (CDBLockingAssertionsEnabled == 1)
                {
                  if (*v20)
                  {
                    v28 = **v20;
                    if (v28)
                    {
                      if (*(v28 + 104))
                      {
                        v29 = CPRecordStoreGetContext();
                        if (v29)
                        {
                          os_unfair_lock_assert_owner(v29 + 20);
                        }
                      }
                    }
                  }
                }

                v30 = CPSqliteStatementIntegerResult();
                if (CDBLockingAssertionsEnabled == 1)
                {
                  if (*v20)
                  {
                    v31 = **v20;
                    if (v31)
                    {
                      if (*(v31 + 104))
                      {
                        v32 = CPRecordStoreGetContext();
                        if (v32)
                        {
                          os_unfair_lock_assert_owner(v32 + 20);
                        }
                      }
                    }
                  }
                }

                CPSqliteStatementReset();
                if (v30 >= 1)
                {
                  sqlite3_bind_text(v23[1], 1, v47, -1, 0);
                  sqlite3_bind_int(v23[1], 2, v46);
                  sqlite3_bind_int(v23[1], 3, ValueAtIndex);
                  sqlite3_bind_int(v23[1], 4, ValueAtIndex);
                  sqlite3_bind_int(v23[1], 5, ValueAtIndex);
                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    if (*v23)
                    {
                      v33 = **v23;
                      if (v33)
                      {
                        if (*(v33 + 104))
                        {
                          v34 = CPRecordStoreGetContext();
                          if (v34)
                          {
                            os_unfair_lock_assert_owner(v34 + 20);
                          }
                        }
                      }
                    }
                  }

                  CPSqliteStatementPerform();
                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    if (*v23)
                    {
                      v35 = **v23;
                      if (v35)
                      {
                        if (*(v35 + 104))
                        {
                          v36 = CPRecordStoreGetContext();
                          if (v36)
                          {
                            os_unfair_lock_assert_owner(v36 + 20);
                          }
                        }
                      }
                    }
                  }

                  CPSqliteStatementReset();
                }

                ++v25;
              }

              while (Count != v25);
            }
          }

          else
          {
            _CalDatabaseGetLatestConsumedSequenceNumberForClient(v14, a2, &v48);
          }
        }
      }

      if (__CalDatabaseCommitTransaction(a1, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabasePersistentChangeTracking.m:1937"))
      {
        Mutable = *(a1 + 280);
        v38 = v43;
        if (!Mutable)
        {
          Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
          *(a1 + 280) = Mutable;
        }

        CFSetAddValue(Mutable, value);
      }

      else
      {
        v39 = CDBLogHandle;
        v38 = v43;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v50 = 0;
          _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_ERROR, "CalDatabasePersistentChangeTracking: unable to commit transaction (error %d)", buf, 8u);
        }
      }

      goto LABEL_86;
    case 'f':
LABEL_22:
      v15 = &kCalNotificationClass;
      goto LABEL_33;
  }

LABEL_89:
  v41 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v50 = a4;
    _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_ERROR, "No class for entity type: %d", buf, 8u);
  }

LABEL_86:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  v40 = *MEMORY[0x1E69E9840];
}

CFTypeRef CalDatabaseCopyAllRegisteredClientIdentifiersForPersistentChangeTracking(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v3 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  v8 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (CDBLockingAssertionsEnabled == 1 && v8 != 0)
  {
    if (*v8)
    {
      if (*(*v8 + 104))
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }
  }

  v12 = CPSqliteConnectionStatementForSQL();
  if (v12)
  {
    v13 = v12;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v12)
      {
        v14 = **v12;
        if (v14)
        {
          if (*(v14 + 104))
          {
            v15 = CPRecordStoreGetContext();
            if (v15)
            {
              os_unfair_lock_assert_owner(v15 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementSendResults();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v13)
      {
        v16 = **v13;
        if (v16)
        {
          if (*(v16 + 104))
          {
            v17 = CPRecordStoreGetContext();
            if (v17)
            {
              os_unfair_lock_assert_owner(v17 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  v18 = CFRetain(v9);

  return v18;
}

uint64_t __ClientRowHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sqlite3_column_text(*(a1 + 8), 0);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    [v3 addObject:v5];
  }

  else
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "__ClientRowHandler - clientIdentifier is nil", v8, 2u);
    }
  }

  return 0;
}

CFTypeRef CalDatabaseCopyRegisteredClientIdentifiersForPersistentChangeTrackingInStore(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  ID = CPRecordGetID();
  v3 = _CalDatabaseCopyRegisteredClientIdentifiersForPersistentChangeTrackingWithStoreUID(a1, ID);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v3;
}

CFTypeRef _CalDatabaseCopyRegisteredClientIdentifiersForPersistentChangeTrackingWithStoreUID(uint64_t a1, int a2)
{
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v4 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }
  }

  v9 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (CDBLockingAssertionsEnabled == 1 && v9 != 0)
  {
    if (*v9)
    {
      if (*(*v9 + 104))
      {
        v12 = CPRecordStoreGetContext();
        if (v12)
        {
          os_unfair_lock_assert_owner(v12 + 20);
        }
      }
    }
  }

  v13 = CPSqliteConnectionStatementForSQL();
  if (v13)
  {
    v14 = v13;
    sqlite3_bind_int(*(v13 + 8), 1, a2);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v14)
      {
        v15 = **v14;
        if (v15)
        {
          if (*(v15 + 104))
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementSendResults();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v14)
      {
        v17 = **v14;
        if (v17)
        {
          if (*(v17 + 104))
          {
            v18 = CPRecordStoreGetContext();
            if (v18)
            {
              os_unfair_lock_assert_owner(v18 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  v19 = CFRetain(v10);

  return v19;
}

uint64_t CalDatabaseGetStoreForPersistentChangeTrackingClientIdentifier(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 80));
  v4 = [a2 UTF8String];
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v6 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }
  }

  v11 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (CDBLockingAssertionsEnabled == 1 && v11 != 0)
  {
    if (*v11)
    {
      if (*(*v11 + 104))
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }
  }

  v14 = CPSqliteConnectionStatementForSQL();
  if (v14)
  {
    v15 = v14;
    sqlite3_bind_text(*(v14 + 8), 1, v4, -1, 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v15)
      {
        v16 = **v15;
        if (v16)
        {
          if (*(v16 + 104))
          {
            v17 = CPRecordStoreGetContext();
            if (v17)
            {
              os_unfair_lock_assert_owner(v17 + 20);
            }
          }
        }
      }
    }

    v18 = CPSqliteStatementIntegerResult();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v15)
      {
        v19 = **v15;
        if (v19)
        {
          if (*(v19 + 104))
          {
            v20 = CPRecordStoreGetContext();
            if (v20)
            {
              os_unfair_lock_assert_owner(v20 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v18;
}

void CalRemoveClientForPersistentChangeTracking(uint64_t a1, void *a2)
{
  if (a2)
  {
    os_unfair_lock_lock((a1 + 80));
    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
    {
      v5 = *(a1 + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    if (CDBLockingAssertionsEnabled == 1 && Database != 0)
    {
      if (*(Database + 104))
      {
        v9 = CPRecordStoreGetContext();
        if (v9)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }
      }
    }

    v10 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    if (CDBLockingAssertionsEnabled == 1 && v10 != 0)
    {
      if (*v10)
      {
        if (*(*v10 + 104))
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }
    }

    v13 = CPSqliteConnectionStatementForSQL();
    if (v13)
    {
      v14 = v13;
      sqlite3_bind_text(*(v13 + 8), 1, [a2 cStringUsingEncoding:4], -1, 0);
      _CalDatabasePerformStatementWithWriteLock(a1, v14);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v14)
        {
          v15 = **v14;
          if (v15)
          {
            if (*(v15 + 104))
            {
              v16 = CPRecordStoreGetContext();
              if (v16)
              {
                os_unfair_lock_assert_owner(v16 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((a1 + 80));
    }

    os_unfair_lock_unlock((a1 + 80));
  }
}

void CalDatabasePurgeIdlePersistentChangeTrackingClients(uint64_t a1, uint64_t a2, double a3)
{
  v44 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v7 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  v12 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  v13 = [MEMORY[0x1E695DF70] array];
  if (CDBLockingAssertionsEnabled == 1 && v12 != 0)
  {
    if (*v12)
    {
      if (*(*v12 + 104))
      {
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }
  }

  v16 = CPSqliteConnectionStatementForSQL();
  if (v16)
  {
    v17 = v16;
    sqlite3_bind_double(*(v16 + 8), 1, a3);
    sqlite3_bind_int(v17[1], 2, a2);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v17)
      {
        v18 = **v17;
        if (v18)
        {
          if (*(v18 + 104))
          {
            v19 = CPRecordStoreGetContext();
            if (v19)
            {
              os_unfair_lock_assert_owner(v19 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementSendResults();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v17)
      {
        v20 = **v17;
        if (v20)
        {
          if (*(v20 + 104))
          {
            v21 = CPRecordStoreGetContext();
            if (v21)
            {
              os_unfair_lock_assert_owner(v21 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  if (![v13 count])
  {
    goto LABEL_60;
  }

  if (CDBLockingAssertionsEnabled == 1 && v12 != 0)
  {
    if (*v12)
    {
      if (*(*v12 + 104))
      {
        v23 = CPRecordStoreGetContext();
        if (v23)
        {
          os_unfair_lock_assert_owner(v23 + 20);
        }
      }
    }
  }

  v24 = CPSqliteConnectionStatementForSQL();
  if (v24)
  {
    v25 = v24;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = v13;
    v26 = v13;
    v27 = [v26 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v37 = v27 != 0;
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v39 + 1) + 8 * i);
          NSLog(&cfstr_PurgingChangeT.isa, v31, *&a3, a2);
          sqlite3_bind_text(*(v25 + 8), 1, [v31 cStringUsingEncoding:4], -1, 0);
          _CalDatabasePerformStatementWithWriteLock(a1, v25);
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v25)
            {
              v32 = **v25;
              if (v32)
              {
                if (*(v32 + 104))
                {
                  v33 = CPRecordStoreGetContext();
                  if (v33)
                  {
                    os_unfair_lock_assert_owner(v33 + 20);
                  }
                }
              }
            }
          }

          CPSqliteStatementReset();
        }

        v28 = [v26 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v28);
    }

    v13 = v38;
    v34 = v37;
  }

  else
  {
LABEL_60:
    v34 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  CalDatabaseClearSuperfluousChanges(a1);
  if (v34)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CalDatabaseIdleChangeTrackingClientWasPurgedNotification", 0, 0, 1u);
  }

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __UnusedClientRowHandler(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v2, 0)}];
  [v3 addObject:v4];

  return 0;
}

uint64_t CalDatabaseCountPersistentChangeRecords(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (*(a1 + 362))
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = off_1ECDDF370;
  if (!*(a1 + 362))
  {
    v4 = __classesTrackingChanges;
  }

  if (__classesTrackingChanges[v3])
  {
    v5 = RecordStore;
    v6 = v4 + 1;
    do
    {
      if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }

      CPRecordStoreGetChangesForClass();
    }

    while (*v6++);
  }

  if (CDBLockingAssertionsEnabled)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return 0;
}

uint64_t CalDatabaseFreezeChangeLog(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  SequenceNumber = CPRecordStoreGetSequenceNumber();
  a1[86]._os_unfair_lock_opaque = SequenceNumber;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return SequenceNumber;
}

void CalDatabaseUnfreezeChangeLog(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  a1[86]._os_unfair_lock_opaque = -1;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(uint64_t a1, id *a2)
{
  v2 = *(a1 + 344);
  if ((v2 & 0x80000000) == 0)
  {
    if (*a2)
    {
      v4 = [*a2 stringByAppendingFormat:@"AND sequence_number <= %i", v2];
      CFRelease(*a2);
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sequence_number <= %i", v2];
    }

    *a2 = v4;
  }
}

uint64_t countRow(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) + 1;
  *(a2 + 8) = v2;
  if (*a2 >= v2)
  {
    return 0;
  }

  *(a2 + 12) = sqlite3_column_int(*(a1 + 8), 0);
  return 1;
}

uint64_t ___prepareBindingBlocksForFindingChangesOfEachEntityType_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  sqlite3_bind_int(*(a2 + 8), 2, *(a1 + 44));
  sqlite3_bind_text(*(a2 + 8), 3, *(a1 + 32), -1, 0);
  sqlite3_bind_text(*(a2 + 8), 4, *(a1 + 32), -1, 0);
  result = sqlite3_bind_int(*(a2 + 8), 5, *(a1 + 44));
  v5 = *(a1 + 48);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(a2 + 8);

    return sqlite3_bind_int(v6, 6, v5);
  }

  return result;
}

uint64_t ___prepareBindingBlocksForFindingChangesOfEachEntityType_block_invoke_2(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  sqlite3_bind_text(*(a2 + 8), 2, *(a1 + 32), -1, 0);
  sqlite3_bind_text(*(a2 + 8), 3, *(a1 + 32), -1, 0);
  result = sqlite3_bind_int(*(a2 + 8), 4, *(a1 + 44));
  v5 = *(a1 + 48);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(a2 + 8);

    return sqlite3_bind_int(v6, 5, v5);
  }

  return result;
}

void ___buildDictionariesWithChangeTablePropertiesForEntityType_block_invoke()
{
  v31 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v2 = __classesTrackingChanges[0];
  if (__classesTrackingChanges[0])
  {
    v3 = 1;
    *&v1 = 134218752;
    v20 = v1;
    do
    {
      v4 = objc_opt_new();
      v5 = *(v2 + 18);
      if (v5 >= 1)
      {
        v6 = 0;
        v7 = 24;
        do
        {
          if ((v2[10][v7] & 0xA) != 0)
          {
            [v4 addIndex:v6];
            v5 = *(v2 + 18);
          }

          ++v6;
          v7 += 40;
        }

        while (v6 < v5);
      }

      v8 = [v4 count];
      v9 = malloc_type_calloc(v8, 8uLL, 0x10040436913F5uLL);
      v10 = objc_opt_new();
      v11 = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
      v12 = malloc_type_calloc(1uLL, 0x20uLL, 0x109004012E890EEuLL);
      v13 = v12;
      if (v12 && v9 && v10 && v11)
      {
        *v12 = v8;
        *(v12 + 1) = v9;
        objc_storeStrong(v12 + 2, v10);
        v14 = MEMORY[0x1E69E9820];
        v13[3] = v11;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LODWORD(v28) = 0;
        v21[0] = v14;
        v21[1] = 3221225472;
        v21[2] = ___buildDictionariesWithChangeTablePropertiesForEntityType_block_invoke_208;
        v21[3] = &unk_1E8694B30;
        v23 = buf;
        v24 = v9;
        v25 = v2;
        v22 = v10;
        v26 = v11;
        [v4 enumerateIndexesUsingBlock:v21];
        v15 = [MEMORY[0x1E696B098] valueWithPointer:v13];
        v16 = [MEMORY[0x1E696B098] valueWithPointer:v2];
        [v0 setObject:v15 forKeyedSubscript:v16];

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v17 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = v20;
          *&buf[4] = v13;
          *&buf[12] = 2048;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          v28 = v10;
          v29 = 2048;
          v30 = v11;
          _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "Failed to allocate memory for changePropertiesByRecord mapping desc: %p, cstring: %p, nsstrings: %p, types: %p", buf, 0x2Au);
        }

        if (v13)
        {
          free(v13);
        }

        if (v9)
        {
          free(v9);
        }

        if (v11)
        {
          free(v11);
        }
      }

      v2 = __classesTrackingChanges[v3++];
    }

    while (v2);
  }

  v18 = _buildDictionariesWithChangeTablePropertiesForEntityType_changePropertiesByRecord;
  _buildDictionariesWithChangeTablePropertiesForEntityType_changePropertiesByRecord = v0;

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1DEC82E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___buildDictionariesWithChangeTablePropertiesForEntityType_block_invoke_208(void *a1, uint64_t a2)
{
  v3 = 5 * a2;
  *(a1[6] + 8 * *(*(a1[5] + 8) + 24)) = *(*(a1[7] + 80) + 40 * a2);
  v4 = a1[4];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1[6] + 8 * *(*(a1[5] + 8) + 24))];
  [v4 addObject:v5];

  v6 = *(a1[7] + 80) + 8 * v3;
  if ((*(v6 + 24) & 8) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v6 + 8);
  }

  *(a1[8] + 4 * (*(*(a1[5] + 8) + 24))++) = v7;
}

uint64_t __StoreIDRowHandler(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v2, 0)}];
  [v3 addObject:v4];

  return 0;
}

uint64_t __RowInfoRowHandler(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v3, 0)}];
  v6 = sqlite3_column_int(*(a1 + 8), 1);
  v7 = objc_opt_new();
  [v7 setClientIdentifier:v5];
  [v7 setConsumedSequenceNumber:v6];
  [v4 addObject:v7];

  return 0;
}

void _CalCategoryLinkPrepareForSave(const void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  v4 = Property;
  if (Property)
  {
    CalRelationOwnerWillSave(Property);
  }

  if (!_CalCategoryLinkGetCategory(a1))
  {
    v5 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v9 = 134218242;
      v10 = v4;
      v11 = 2112;
      DebugDescription = _CalEntityGetDebugDescription(a1);
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "saving a category link with NULL category: relation=%p, record=%@", &v9, 0x16u);
    }

    DatabaseForRecord = CalGetDatabaseForRecord();
    _CalDatabaseIntegrityError(DatabaseForRecord, @"Category link without category");
  }

  v8 = *MEMORY[0x1E69E9840];
}

void CalCategoryLinkInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalCategoryLinkClass, &kCalCategoryLinkIndexes, 0);

  CalMigrationCreateTriggers(a2, &kCalCategoryLinkClass, &kCalCategoryLinkTriggers);
}

void CalCategoryLinkMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 > 58)
  {
    if (a3 <= 0x3E99)
    {
      CalMigrateTableFull(a2, &kCalCategoryLinkClass, 0, &kCalCategoryLinkUpgradeInfo, 0, &kCalCategoryLinkIndexes, 0, &kCalCategoryLinkTriggers, a3);
    }
  }

  else
  {

    CalCategoryLinkInitializeTables(a1, a2);
  }
}

const void *CalDatabaseCreateCategoryLink(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  CategoryLinkWithOwnerAndCategory = _CalDatabaseCreateCategoryLinkWithOwnerAndCategory(a1, 0, 0);
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 13);
  if (CDBLockingAssertionsEnabled == 1 && CategoryLinkWithOwnerAndCategory != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return CategoryLinkWithOwnerAndCategory;
}

const void *_CalDatabaseCreateCategoryLinkWithOwnerAndCategory(uint64_t a1, const void *a2, const void *a3)
{
  v6 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 13);
  if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v6);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
    {
      if (CPRecordGetStore())
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }

    Property = CPRecordGetProperty();
    if (Property)
    {
      CalRelationSetRelatedObject(Property, a2);
    }
  }

  if (a3)
  {
    if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
    {
      if (CPRecordGetStore())
      {
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }
    }

    v15 = CPRecordGetProperty();
    if (v15)
    {
      CalRelationSetRelatedObject(v15, a3);
    }
  }

  return v6;
}

uint64_t _CalCategoryLinkRemove(const void *a1)
{
  DatabaseForRecord = CalGetDatabaseForRecord();

  return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
}

void CalCategoryLinkRemove(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DatabaseForRecord = CalGetDatabaseForRecord();
  _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCategoryLinkGetRecordID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

CFTypeRef _CalCategoryLinkGetOwner(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

CFTypeRef CalCategoryLinkCopyCalendarItem(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalCategoryLinkGetOwner(a1);
  v4 = Owner;
  if (Owner)
  {
    CFRetain(Owner);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalCategoryLinkSetCalendarItem(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    CalRelationSetRelatedObject(Property, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef _CalCategoryLinkGetCategory(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

CFTypeRef CalCategoryLinkCopyCategory(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Category = _CalCategoryLinkGetCategory(a1);
  v4 = Category;
  if (Category)
  {
    CFRetain(Category);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalCategoryLinkSetCategory(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    CalRelationSetRelatedObject(Property, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCategoryLinkSetGroup(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

void _CalDatabaseIntegrityError(uint64_t a1, void *a2)
{
  v3 = a2;
  _CalDatabaseGetRecordStore(a1);
  Database = CPRecordStoreGetDatabase();
  v5 = _CalDatabaseGetErrorsForDatabase(Database);
  if (!v5)
  {
    v8 = objc_opt_new();
    _CalDatabaseSetErrorsForDatabase(Database, v8);
    v5 = v8;
  }

  v9 = v5;
  v6 = [v5 errors];
  [v6 addObject:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 304));
  [v9 setDelegate:WeakRetained];
}

void _CalDatabaseSetErrorsForDatabase(uint64_t a1, void *a2)
{
  v7 = a2;
  os_unfair_lock_lock(&lock);
  v3 = v7;
  v4 = table;
  if (v7)
  {
    if (!table)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:0 capacity:1];
      v6 = table;
      table = v5;

      v3 = v7;
      v4 = table;
    }

    [v4 setObject:v3 forKey:a1];
  }

  else
  {
    [table removeObjectForKey:a1];
  }

  os_unfair_lock_unlock(&lock);
}

uint64_t _CalAttachmentPrepareForSave(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    CalRelationOwnerWillSave(Property);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v4 = CPRecordStoreGetContext();
        if (v4)
        {
          os_unfair_lock_assert_owner(v4 + 20);
        }
      }
    }
  }

  CPRecordUnloadProperty();
  for (i = 0; i != 26; ++i)
  {
    if ((CalAttachmentToCalAttachmentFilePropertyMap(i) & 0x80000000) == 0)
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v6 = CPRecordStoreGetContext();
            if (v6)
            {
              os_unfair_lock_assert_owner(v6 + 20);
            }
          }
        }
      }

      CPRecordUnloadProperty();
    }
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }
  }

  CPRecordUnloadProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }
    }
  }

  return CPRecordUnloadProperty();
}

uint64_t _CalAttachmentPropertyDidChange(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    v2 = result;
    result = _CalRecordHasValueChangedForProperty(result, a2);
    if (result)
    {
      if (v2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }

      return CPRecordSetProperty();
    }
  }

  return result;
}

uint64_t _CalAttachmentPropertyWillChange(void *a1, int a2, uint64_t a3)
{
  if (!a2 && a3 == -1)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v7 = CPRecordStoreGetContext();
          if (v7)
          {
            os_unfair_lock_assert_owner(v7 + 20);
          }
        }
      }
    }

    CPRecordGetProperty();
    goto LABEL_36;
  }

  if (a2 != 6)
  {
LABEL_36:
    result = CalAttachmentToCalAttachmentFilePropertyMap(a2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    AttachmentFileMakingIfNecessary = _CalAttachmentGetAttachmentFileMakingIfNecessary(a1);
    if (CDBLockingAssertionsEnabled == 1 && AttachmentFileMakingIfNecessary != 0)
    {
      if (CPRecordGetStore())
      {
        v19 = CPRecordStoreGetContext();
        if (v19)
        {
          os_unfair_lock_assert_owner(v19 + 20);
        }
      }
    }

    goto LABEL_44;
  }

  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  DatabaseForRecord = CalGetDatabaseForRecord();
  AttachmentFileWithUUID = _CalDatabaseGetAttachmentFileWithUUID(DatabaseForRecord, a3);
  if (!AttachmentFileWithUUID)
  {
    v20 = _CalAttachmentGetAttachmentFileMakingIfNecessary(a1);
    if (CDBLockingAssertionsEnabled == 1 && v20 != 0)
    {
      if (CPRecordGetStore())
      {
        v22 = CPRecordStoreGetContext();
        if (v22)
        {
          os_unfair_lock_assert_owner(v22 + 20);
        }
      }
    }

LABEL_44:

    return CPRecordSetProperty();
  }

  v11 = AttachmentFileWithUUID;
  if (AttachmentFile)
  {
    _CalAttachmentFileRemoveAttachment(AttachmentFile, a1);
    v12 = _CalAttachmentFileCopyAttachments(AttachmentFile);
    if (![(__CFArray *)v12 count])
    {
      _CalRemoveAttachmentFile(AttachmentFile);
    }
  }

  result = _CalAttachmentFileAddAttachment(v11, a1);
  for (i = 0; i != 26; ++i)
  {
    if (i != 6)
    {
      result = CalAttachmentToCalAttachmentFilePropertyMap(i);
      if ((result & 0x80000000) == 0)
      {
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v15 = CPRecordStoreGetContext();
              if (v15)
              {
                os_unfair_lock_assert_owner(v15 + 20);
              }
            }
          }
        }

        result = CPRecordGetCachedProperty();
        if (result)
        {
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (CPRecordGetStore())
            {
              v16 = CPRecordStoreGetContext();
              if (v16)
              {
                os_unfair_lock_assert_owner(v16 + 20);
              }
            }
          }

          result = CPRecordSetProperty();
        }
      }
    }
  }

  return result;
}

void CalAttachmentInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalAttachmentClass, &kCalAttachmentIndexes, &kCalAttachmentChangesIndexes);

  CalMigrationCreateTriggers(a2, &kCalAttachmentClass, &kCalAttachmentTriggers);
}

void CalAttachmentMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 56)
  {
    if (a3 > 0x4651)
    {
      return;
    }

    if (a3 > 0x76)
    {
      if (a3 > 0x3E88)
      {
        v7 = 0;
LABEL_17:
        CalMigrateTableFull2(a2, &kCalAttachmentClass, 0, &kCalAttachmentUpgradeInfo, v7, &kCalAttachmentChangesUpgradeInfo, 0, 0, &kCalAttachmentIndexes, &kCalAttachmentChangesIndexes, &kCalAttachmentTriggers, a3);

        return;
      }
    }

    else
    {
      CPRecordStoreCreateTablesForClass();
    }

    _CalDBFillInUUIDColumn(a2, @"Attachment");
    CalPerformSQLWithConnection(a2, @"CREATE TEMP TABLE AttachmentMigration (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, UUID TEXT, url TEXT, original_url TEXT, store_id INTEGER, external_id TEXT, external_mod_tag TEXT, format TEXT, is_binary INTEGER, filename TEXT, local_url TEXT, file_size INTEGER)");
    CalPerformSQLWithConnection(a2, @"INSERT INTO temp.AttachmentMigration (ROWID, UUID, url, original_url, store_id, external_id, external_mod_tag, format, is_binary, filename, local_url, file_size) SELECT Attachment.ROWID, Attachment.UUID, iif (Attachment.url = http://localhost, NULL, Attachment.url), Attachment.url, Calendar.store_id, Attachment.external_id, Attachment.external_mod_tag, Attachment.format, Attachment.is_binary, Attachment.filename, Attachment.local_url, Attachment.file_size FROM Attachment JOIN CalendarItem ON CalendarItem.ROWID = Attachment.owner_id JOIN Calendar ON Calendar.ROWID = CalendarItem.calendar_id");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX temp.AttachmentMigrationURLStoreID ON AttachmentMigration(url, store_id)");
    CalPerformSQLWithConnection(a2, @"UPDATE temp.AttachmentMigration AS target SET UUID = (SELECT other.UUID FROM temp.AttachmentMigration AS other WHERE (other.url = target.url AND other.store_id = target.store_id AND target.url IS NOT NULL) OR (target.url IS NULL AND other.ROWID = target.ROWID) ORDER BY other.ROWID LIMIT 1)");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX temp.AttachmentMigrationUUID ON AttachmentMigration(UUID)");
    CalPerformSQLWithConnection(a2, @"UPDATE temp.AttachmentMigration AS target SET (external_id, external_mod_tag, format, is_binary, local_url, file_size) = (SELECT external_id, external_mod_tag, format, is_binary, local_url, file_size FROM temp.AttachmentMigration as source WHERE source.local_url IS NOT NULL AND target.UUID = source.UUID LIMIT 1) WHERE target.local_url IS NULL AND (SELECT other.local_url FROM temp.AttachmentMigration as other WHERE other.UUID = target.UUID AND other.local_url IS NOT NULL) IS NOT NULL");
    CalPerformSQLWithConnection(a2, @"INSERT INTO AttachmentFile (UUID, url, external_id, external_mod_tag, format, flags, filename, local_path, file_size, store_id) SELECT UUID, original_url, external_id, external_mod_tag, format, is_binary, filename, local_url, file_size, store_id FROM AttachmentMigration GROUP BY UUID");
    CalPerformSQLWithConnection(a2, @"UPDATE Attachment SET UUID = other.UUID FROM (SELECT ROWID, UUID FROM temp.AttachmentMigration) AS other WHERE other.ROWID = Attachment.ROWID");
    CalPerformSQLWithConnection(a2, @"UPDATE AttachmentChanges SET UUID = IFNULL((SELECT UUID FROM Attachment WHERE Attachment.ROWID = AttachmentChanges.record), UUID)");
    CalPerformSQLWithConnection(a2, @"DROP TABLE temp.AttachmentMigration");
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }
    }

    v6 = CPSqliteConnectionStatementForSQL();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CalAttachmentMigrateTables_block_invoke;
    v8[3] = &__block_descriptor_44_e42__v24__0____CFString__8____CFDictionary__16l;
    v9 = a3;
    v8[4] = v6;
    v7 = MEMORY[0x1E12C7520](v8);
    goto LABEL_17;
  }

  CalAttachmentInitializeTables(a1, a2);
}

uint64_t __CalAttachmentMigrateTables_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40) <= 16008 && [a2 isEqualToString:@"file_id"])
  {
    v6 = [v5 objectForKeyedSubscript:@"UUID"];
    v7 = v6;
    if (!v6)
    {
      goto LABEL_25;
    }

    sqlite3_bind_text(*(*(a1 + 32) + 8), 1, [v6 UTF8String], -1, 0);
    v8 = *(a1 + 32);
    if (CDBLockingAssertionsEnabled == 1 && v8 != 0)
    {
      if (*v8)
      {
        v10 = **v8;
        if (v10)
        {
          if (*(v10 + 104))
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }
    }

    v12 = CPSqliteStatementInteger64Result();
    v13 = *(a1 + 32);
    if (CDBLockingAssertionsEnabled == 1 && v13 != 0)
    {
      if (*v13)
      {
        v15 = **v13;
        if (v15)
        {
          if (*(v15 + 104))
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    if (v12)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
    }

    else
    {
LABEL_25:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t CalAttachmentGetPropertyIDWithPropertyName(void *key)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = CalAttachmentGetPropertyIDWithPropertyName_sPropDict;
  if (!CalAttachmentGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalAttachmentGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalAttachmentGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v7 = 6;
      v8 = @"externalID";
      v9 = 3;
      v10 = @"owner";
      v11 = 22;
      v12 = @"URLString";
      v13 = 5;
      v14 = @"fileNameRaw";
      v15 = 9;
      v16 = @"fileFormat";
      v17 = 7;
      v18 = @"flags";
      v19 = 8;
      v20 = @"localRelativePath";
      v21 = 10;
      v22 = @"fileSize";
      v23 = 11;
      v24 = @"XPropertiesData";
      v25 = 1;
      v26 = @"URLWrapperForPendingFileCopy";
      v27 = 14;
      v28 = @"shouldSetQuarantineAttributesOnCopiedFile";
      v29 = 15;
      v30 = @"externalModificationTag";
      v31 = 4;
      v32 = @"securityScopedLocalURLWrapper";
      v33 = 16;
      v34 = @"securityScopedLocalURLForArchivedDataWrapper";
      v35 = 17;
      CalAttachmentGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 15);
      for (i = 224; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalAttachmentGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalAttachmentGetPropertyIDWithPropertyName_sPropDict;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v2, key, &value))
  {
    result = value;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DEC84A78(_Unwind_Exception *a1)
{
  for (i = 224; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

CFTypeRef _CalAttachmentHasValidParent(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  result = CalRelationGetRelatedObject(Property);
  if (result)
  {

    return _CalRecordStillExists();
  }

  return result;
}

uint64_t _CalDatabaseRemoveAttachmentChangesInStoreToIndex(uint64_t a1, uint64_t a2)
{
  v3 = _CalAttachmentCreateChangeHistoryWhereClauseForStore(a1, a2);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v7 = CPRecordStoreDeleteChangesForClassToIndexWhere();
  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

const void *_CalDatabaseCreateAttachment(uint64_t a1)
{
  v2 = CPRecordCreate();
  v3 = v2;
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 11);
  if (CDBLockingAssertionsEnabled == 1 && v3 != 0)
  {
    if (CPRecordGetStore())
    {
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v3);
  return v3;
}

const void *CalDatabaseCreateAttachment(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Attachment = _CalDatabaseCreateAttachment(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Attachment;
}

void *_CalAttachmentCopy(uint64_t a1, void *a2)
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  Attachment = _CalDatabaseCreateAttachment(DatabaseForRecord);
  v6 = Attachment;
  if (CDBLockingAssertionsEnabled == 1 && Attachment != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v9 = CPRecordStoreGetContext();
        if (v9)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  AttachmentFileMakingIfNecessary = _CalAttachmentGetAttachmentFileMakingIfNecessary(a2);
  Store = _CalAttachmentFileGetStore(AttachmentFileMakingIfNecessary);
  if (!a1 || (v12 = Store, Store == a1) || CalGetDatabaseForRecord() == DatabaseForRecord && v12 && (ID = CPRecordGetID(), ID == CPRecordGetID()))
  {
    _CalAttachmentFileAddAttachment(AttachmentFileMakingIfNecessary, v6);
    if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
    {
      if (CPRecordGetStore())
      {
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }

    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v16 = CPRecordStoreGetContext();
          if (v16)
          {
            os_unfair_lock_assert_owner(v16 + 20);
          }
        }
      }
    }

    CPRecordGetProperty();
    CPRecordSetProperty();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v6)
      {
        if (CPRecordGetStore())
        {
          v17 = CPRecordStoreGetContext();
          if (v17)
          {
            os_unfair_lock_assert_owner(v17 + 20);
          }
        }
      }
    }

    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v18 = CPRecordStoreGetContext();
          if (v18)
          {
            os_unfair_lock_assert_owner(v18 + 20);
          }
        }
      }
    }

    CPRecordGetProperty();
    CPRecordSetProperty();
  }

  else
  {
    v19 = _CalAttachmentFileCopy(DatabaseForRecord, AttachmentFileMakingIfNecessary);
    _CalAttachmentFileAddAttachment(v19, v6);
  }

  return v6;
}

CFTypeRef _CalAttachmentGetAttachmentFileMakingIfNecessary(void *a1)
{
  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  if (!AttachmentFile)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();
    AttachmentFile = _CalDatabaseCreateAttachmentFile(DatabaseForRecord);
    _CalAttachmentFileAddAttachment(AttachmentFile, a1);
    CFRelease(AttachmentFile);
  }

  return AttachmentFile;
}

BOOL _CalAttachmentHasDirtyInstanceAttributes(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty() != 0;
}

uint64_t _CalAttachmentMarkDirty(uint64_t a1, int a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordSetProperty();
  if (a2)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v6 = CPRecordStoreGetContext();
          if (v6)
          {
            os_unfair_lock_assert_owner(v6 + 20);
          }
        }
      }
    }

    return CPRecordSetProperty();
  }

  return result;
}

uint64_t _CalRemoveAttachment(void *a1)
{
  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  if (AttachmentFile)
  {
    v3 = AttachmentFile;
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v5 = CPRecordStoreGetContext();
          if (v5)
          {
            os_unfair_lock_assert_owner(v5 + 20);
          }
        }
      }
    }

    CPRecordGetProperty();
    _CalAttachmentFileRemoveAttachment(v3, a1);
  }

  Owner = _CalAttachmentGetOwner(a1);
  if (Owner)
  {

    return _CalCalendarItemRemoveAttachment(Owner, a1);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

CFTypeRef _CalAttachmentGetAttachmentFile(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

CFTypeRef _CalAttachmentGetOwner(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

void CalRemoveAttachment(void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveAttachment(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalInvalidateAttachmentsWithOwnerID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreInvalidateCachedInstancesOfClassWithBlock();
}

uint64_t _CalAttachmentSaveAddedRecords(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordStoreProcessAddedRecordsOfClassWithPolicyAndTransactionType();
  return 0;
}

CFTypeRef CalAttachmentCopyAttachmentFile(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  if (AttachmentFile)
  {
    v4 = CFRetain(AttachmentFile);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t CalDatabaseCopyAttachmentChangesInStore(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalAttachmentCreateChangeHistoryWhereClauseForStore(v5, a2);
  v7 = _CalDatabaseCopyAttachmentChangesWithWhereClauseNoLock(v5, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

CFStringRef _CalAttachmentCreateChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 11, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t _CalDatabaseCopyAttachmentChangesWithWhereClauseNoLock(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      *a3 = Mutable;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_6:
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithProperties();
}

uint64_t CalDatabaseRemoveAttachmentChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CalDatabaseRemoveAttachmentChangesInStoreToIndex_block_invoke;
  v8[3] = &unk_1E8689120;
  v8[4] = &v10;
  v8[5] = v5;
  v8[6] = a2;
  v9 = a3;
  _CalDatabaseLockForWriteTransaction(v5, v8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1DEC85A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveAttachmentChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = _CalDatabaseRemoveAttachmentChangesInStoreToIndex(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CalDatabaseCopyAttachmentChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalAttachmentCreateChangeHistoryWhereClauseForCalendar(v5, a2);
  v7 = _CalDatabaseCopyAttachmentChangesWithWhereClauseNoLock(v5, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

CFStringRef _CalAttachmentCreateChangeHistoryWhereClauseForCalendar(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 11, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t CalDatabaseRemoveAttachmentChangesInCalendarToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalAttachmentCreateChangeHistoryWhereClauseForCalendar(v5, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalDatabaseRemoveAttachmentChangesInCalendarToIndex_block_invoke;
  v9[3] = &unk_1E8689120;
  v9[4] = &v11;
  v9[5] = v5;
  v10 = a3;
  v9[6] = v6;
  _CalDatabaseLockForWriteTransaction(v5, v9);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1DEC85D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveAttachmentChangesInCalendarToIndex_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 40));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  result = CPRecordStoreDeleteChangesForClassToIndexWhere();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CalDatabaseRemoveAttachmentChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseRemoveAttachmentChangesWithIndices_block_invoke;
  v6[3] = &unk_1E8689148;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  _CalDatabaseLockForWriteTransaction(a1, v6);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1DEC85EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveAttachmentChangesWithIndices_block_invoke(void *a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1[5]);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = a1[6];
  result = CPRecordStoreDeleteChangesForClassWithIndices();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t _CalAttachmentGetWithUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreGetInstanceOfClassWithUID();
}

const void *CalDatabaseCopyAttachmentWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v3 = _CalAttachmentGetWithUID(RecordStore);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

CFTypeRef CalDatabaseCopyAttachmentWithUUID(os_unfair_lock_s *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CalDatabaseCopyAttachmentFileWithUUID(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CalAttachmentFileCopyAttachments(v2);
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) < 1)
    {
      v7 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v7 = CFRetain(ValueAtIndex);
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

uint64_t _CalDatabaseCopyOfAllAttachmentsInStore(uint64_t a1, uint64_t a2)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v4 = CDBLockingAssertionsEnabled;
  if (!RecordStore)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    return CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  }

  else
  {
    if (v4)
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }

    return CPRecordStoreCopyAllInstancesOfClass();
  }
}

uint64_t CalDatabaseCopyOfAllAttachmentsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  v4 = _CalDatabaseCopyOfAllAttachmentsInStore(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

uint64_t _CalAttachmentGetRecordID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

uint64_t CalAttachmentGetUID()
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ID = CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ID;
}

uint64_t _CalAttachmentCopyUUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

uint64_t CalAttachmentCopyUUID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentSetExternalID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttachmentCopyExternalID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentSetExternalModTag(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttachmentCopyExternalModTag(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentSetURL(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    CFURLGetString(a2);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  _CalAttachmentSetFlag(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalAttachmentSetFlag(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v3 = CPRecordStoreGetContext();
        if (v3)
        {
          os_unfair_lock_assert_owner(v3 + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

CFURLRef CalAttachmentCopyURL(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  result = 0;
  if (v4)
  {
    v6 = CFURLCreateWithString(0, v4, 0);
    CFRelease(v4);
    return v6;
  }

  return result;
}

uint64_t CalAttachmentSetFileDataAndQuarantine(void *a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  AttachmentFileMakingIfNecessary = _CalAttachmentGetAttachmentFileMakingIfNecessary(a1);
  v6 = _CalAttachmentFileSetFileData(AttachmentFileMakingIfNecessary, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v6;
}

uint64_t _CalAttachmentSetFileData(void *a1, void *a2)
{
  AttachmentFileMakingIfNecessary = _CalAttachmentGetAttachmentFileMakingIfNecessary(a1);

  return _CalAttachmentFileSetFileData(AttachmentFileMakingIfNecessary, a2);
}

void CalAttachmentSetFlag(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentSetFlag(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalAttachmentGetFlag(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return (Property & a2) != 0;
}

void CalAttachmentSetFilename(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const __CFString *_CalAttachmentCopyFilename(uint64_t a1)
{
  result = _CalAttachmentGetAttachmentFile(a1);
  if (result)
  {

    return _CalAttachmentFileCopyFilename(result);
  }

  return result;
}

const __CFString *CalAttachmentCopyFilename(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  if (AttachmentFile)
  {
    v4 = _CalAttachmentFileCopyFilename(AttachmentFile);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentSetLocalRelativePath(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentSetLocalRelativePath(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalAttachmentSetLocalRelativePath(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

uint64_t CalAttachmentCopyLocalRelativePath(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAttachmentCopyLocalRelativePath(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalAttachmentCopyLocalRelativePath(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

uint64_t CalAttachmentCopyLocalURL(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  if (AttachmentFile)
  {
    v4 = _CalAttachmentFileCopyLocalURL(AttachmentFile);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void *_CalAttachmentCopyLocalURL(uint64_t a1)
{
  result = _CalAttachmentGetAttachmentFile(a1);
  if (result)
  {

    return _CalAttachmentFileCopyLocalURL(result);
  }

  return result;
}

id _CalAttachmentCopyLocalURLForArchivedData(uint64_t a1)
{
  result = _CalAttachmentGetAttachmentFile(a1);
  if (result)
  {

    return _CalAttachmentFileCopyLocalURLForArchivedData(result);
  }

  return result;
}

id CalAttachmentCopyLocalURLForArchivedData(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  if (AttachmentFile)
  {
    v4 = _CalAttachmentFileCopyLocalURLForArchivedData(AttachmentFile);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentSetFileSize(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttachmentCopyFileSize(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentSetFormat(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttachmentCopyFormat(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentSetXProperties(uint64_t a1, CFDataRef Data)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (Data)
  {
    Data = CFPropertyListCreateData(0, Data, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (Data)
  {
    CFRelease(Data);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFPropertyListRef CalAttachmentCopyXProperties(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    v5 = CFPropertyListCreateWithData(0, Property, 0, 0, 0);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

CFTypeRef CalAttachmentCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalAttachmentGetOwner(a1);
  v4 = Owner;
  if (Owner)
  {
    CFRetain(Owner);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentSetURLForPendingFileCopy(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentSetURLForPendingFileCopy(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalAttachmentSetURLForPendingFileCopy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x1E6993010]) initWithURL:a2];
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  if (CDBLockingAssertionsEnabled)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

LABEL_9:
  CPRecordSetProperty();
}

uint64_t CalAttachmentCopyURLForPendingFileCopy(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAttachmentCopyURLForPendingFileCopy(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalAttachmentCopyURLForPendingFileCopy(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v2 = CPRecordCopyProperty();
  v3 = [v2 url];

  return v3;
}

void CalAttachmentSetDownloadStart(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalAttachmentCopyDownloadStart(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    v5 = CFRetain(Property);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void CalAttachmentSetDownloadTries(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttachmentGetDownloadTries(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

uint64_t CalLoadAttachmentPropertyFromFileProperty(uint64_t a1, int a2)
{
  result = _CalAttachmentGetAttachmentFile(a1);
  if (result)
  {
    if ((CalAttachmentToCalAttachmentFilePropertyMap(a2) & 0x80000000) != 0)
    {
      CalLoadAttachmentPropertyFromFileProperty_cold_1(a2);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }

    result = CPRecordGetProperty();
    if (result)
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v6 = CPRecordStoreGetContext();
            if (v6)
            {
              os_unfair_lock_assert_owner(v6 + 20);
            }
          }
        }
      }

      return CPRecordInitializeProperty();
    }
  }

  return result;
}

uint64_t CalAttachmentToCalAttachmentFilePropertyMap(int a1)
{
  if ((a1 - 3) > 0xC)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_1DECB225C[a1 - 3];
  }
}

void _CalAttachmentLoadLocalURLWrapper(uint64_t a1)
{
  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  if (AttachmentFile)
  {
    v3 = _CalAttachmentFileCopyLocalURL(AttachmentFile);
    if (v3)
    {
      v9 = v3;
      v4 = [MEMORY[0x1E696AC08] defaultManager];
      v5 = [v9 path];
      v6 = [v4 fileExistsAtPath:v5];

      if (v6)
      {

        v7 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v9 readonly:1];
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              Context = CPRecordStoreGetContext();
              if (Context)
              {
                os_unfair_lock_assert_owner(Context + 20);
              }
            }
          }
        }

        CPRecordInitializeProperty();
      }

      else
      {
        v7 = v9;
        v9 = v4;
      }
    }
  }
}

void _CalAttachmentLoadLocalURLForArchivedDataWrapper(uint64_t a1)
{
  AttachmentFile = _CalAttachmentGetAttachmentFile(a1);
  if (AttachmentFile)
  {
    v3 = _CalAttachmentFileCopyLocalURLForArchivedData(AttachmentFile);
    if (v3)
    {
      v9 = v3;
      v4 = [MEMORY[0x1E696AC08] defaultManager];
      v5 = [v9 path];
      v6 = [v4 fileExistsAtPath:v5];

      if (v6)
      {

        v7 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v9 readonly:1];
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              Context = CPRecordStoreGetContext();
              if (Context)
              {
                os_unfair_lock_assert_owner(Context + 20);
              }
            }
          }
        }

        CPRecordInitializeProperty();
      }

      else
      {
        v7 = v9;
        v9 = v4;
      }
    }
  }
}

uint64_t _CalAttachmentLoadStoreId(uint64_t a1)
{
  result = _CalAttachmentGetOwner(a1);
  if (result)
  {
    result = _CalCalendarItemGetStoreId(result);
    if (result >= 1)
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }

      return CPRecordInitializeProperty();
    }
  }

  return result;
}

uint64_t _CalAttachmentLoadCalendarId(uint64_t a1)
{
  result = _CalAttachmentGetOwner(a1);
  if (result)
  {
    result = _CalCalendarItemGetCalendarId(result);
    if ((result & 0x80000000) == 0)
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }

      return CPRecordInitializeProperty();
    }
  }

  return result;
}

const void *CalDatabaseCreateTask(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalCalendarItemCreate(a1, 3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

uint64_t _CalTaskPrepareForRemove(uint64_t a1)
{
  result = _CalCalendarItemHasAlarms(a1);
  if (result)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    return _CalDatabaseSetChangeFlags(DatabaseForRecord, 8);
  }

  return result;
}

void CalRemoveTask(const void *a1)
{
  v2 = CalCopyDatabaseForRecord();
  if (v2)
  {
    v3 = v2;
    os_unfair_lock_lock(v2 + 20);
    _CalTaskMarkAsNeedingScheduledTaskCacheUpdate(a1);
    _CalDatabaseRemoveEntity(v3, a1);
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v3 + 20);
    }

    os_unfair_lock_unlock(v3 + 20);

    CFRelease(v3);
  }
}

uint64_t _CalRemoveTask(uint64_t a1, const void *a2)
{
  _CalTaskMarkAsNeedingScheduledTaskCacheUpdate(a2);

  return _CalDatabaseRemoveEntity(a1, a2);
}

uint64_t CalDatabaseCopyTasksInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a2)
  {
    CalStoreGetUID();

    return CalDatabaseCopyCalendarItemsWithStoreID(a1, 3);
  }

  else
  {

    return CalDatabaseCopyCalendarItems(a1, 3);
  }
}

os_unfair_lock_s *CalDatabaseCopyTaskWithSummaryAndDueDateInCalendarOrStore(os_unfair_lock_s *cf, const __CFString *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = cf;
  if (a3 || a4)
  {
    result = CalCopyDatabaseForRecord();
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    if (!cf)
    {
      return 0;
    }

    CFRetain(cf);
  }

  CStringFromCFString = CalCreateCStringFromCFString(a2);
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (SelectPrefix)
  {
    v13 = SelectPrefix;
    CFStringAppend(SelectPrefix, @" WHERE summary = ?");
    v14 = vabdd_f64(a5, *MEMORY[0x1E6993100]);
    if (v14 >= 2.22044605e-16)
    {
      CFStringAppend(v13, @" AND due_date = ?");
    }

    if (a3)
    {
      v15 = @" AND calendar_id = ?";
    }

    else
    {
      if (!a4)
      {
LABEL_15:
        os_unfair_lock_lock(v9 + 20);
        RecordStore = _CalDatabaseGetRecordStore(v9);
        v17 = RecordStore;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (RecordStore)
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }

        Database = CPRecordStoreGetDatabase();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (Database)
          {
            if (*(Database + 104))
            {
              v20 = CPRecordStoreGetContext();
              if (v20)
              {
                os_unfair_lock_assert_owner(v20 + 20);
              }
            }
          }
        }

        v21 = CPSqliteDatabaseStatementForReading();
        if (!v21)
        {
          v24 = 0;
          goto LABEL_42;
        }

        v22 = v21;
        v23 = *(v21 + 8);
        if (CStringFromCFString)
        {
          sqlite3_bind_text(v23, 1, CStringFromCFString, -1, 0);
        }

        else
        {
          sqlite3_bind_null(v23, 1);
        }

        if (v14 >= 2.22044605e-16)
        {
          sqlite3_bind_int(*(v22 + 8), 2, a5);
          v25 = 3;
          if (!a3)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v25 = 2;
          if (!a3)
          {
LABEL_35:
            if (!a4)
            {
              goto LABEL_37;
            }
          }
        }

        v26 = *(v22 + 8);
        ID = CPRecordGetID();
        sqlite3_bind_int(v26, v25, ID);
LABEL_37:
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v17)
          {
            v28 = CPRecordStoreGetContext();
            if (v28)
            {
              os_unfair_lock_assert_owner(v28 + 20);
            }
          }
        }

        v24 = CPRecordStoreProcessStatementWithPropertyIndices();
LABEL_42:
        if (CDBLockingAssertionsEnabled == 1)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }

        os_unfair_lock_unlock(v9 + 20);
        CFRelease(v13);
        if (v24)
        {
          if (CFArrayGetCount(v24) < 1)
          {
            ValueAtIndex = 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v24, 0);
            CFRetain(ValueAtIndex);
          }

          CFRelease(v24);
          if (!CStringFromCFString)
          {
            goto LABEL_52;
          }
        }

        else
        {
          ValueAtIndex = 0;
          if (!CStringFromCFString)
          {
            goto LABEL_52;
          }
        }

        free(CStringFromCFString);
LABEL_52:
        CFRelease(v9);
        return ValueAtIndex;
      }

      v15 = @" AND calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?)";
    }

    CFStringAppend(v13, v15);
    goto LABEL_15;
  }

  if (CStringFromCFString)
  {
    free(CStringFromCFString);
  }

  CFRelease(v9);
  return 0;
}

uint64_t _CalTaskGetDueDate(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

void CalTaskSetDueDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = MEMORY[0x1E12C5EF0](a2);
    v6 = CFDateCreate(0, floor(v5));
    _CalCalendarItemSetRecordProperty(a1, 38, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    _CalCalendarItemSetRecordProperty(a1, 38, 0);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalTaskCopyDueDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalTaskSetDueDateTimeZone(_BOOL8 a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = MEMORY[0x1E12C6390](a2);
  }

  else
  {
    v5 = @"_float";
  }

  _CalRecordSetPropertyIfDifferent(a1, 39, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalTaskCopyDueDateTimeZone(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  v5 = Property;
  if (Property)
  {
    if (CFStringCompare(Property, @"_float", 0))
    {
      v5 = CalTimeZoneCopyCFTimeZone();
    }

    else
    {
      v5 = 0;
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void CalTaskSetDueDateAllDay(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 40, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalTaskIsDueDateAllDay(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty() != 0;
}

BOOL CalTaskIsDueDateAllDay(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsDueDateAllDay = _CalTaskIsDueDateAllDay(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsDueDateAllDay;
}

void CalTaskSetCompletionDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = MEMORY[0x1E12C5EF0](a2);
    v6 = CFDateCreate(0, floor(v5));
    _CalCalendarItemSetRecordProperty(a1, 41, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    _CalCalendarItemSetRecordProperty(a1, 41, 0);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalTaskGetCompletionDate(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

const void *CalTaskCopyCompletionDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  CompletionDate = _CalTaskGetCompletionDate(a1);
  v4 = CompletionDate;
  if (CompletionDate)
  {
    CFRetain(CompletionDate);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalTaskSetFirstAlertDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = MEMORY[0x1E12C5EF0](a2);
    v6 = CFDateCreate(0, floor(v5));
    _CalCalendarItemSetRecordProperty(a1, 62, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    _CalCalendarItemSetRecordProperty(a1, 62, 0);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const void *CalTaskCopyFirstAlertDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  v5 = Property;
  if (Property)
  {
    CFRetain(Property);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

CFURLRef CalTaskCopyURI(uint64_t a1)
{
  v1 = CalCalendarItemCopyUUID(a1);
  if (v1)
  {
    v2 = MEMORY[0x1E696AD48];
    v3 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v4 = [v3 bitmapRepresentation];
    v5 = [v2 characterSetWithBitmapRepresentation:v4];

    [v5 removeCharactersInString:{@"/?&:$+, ;=@"}];
    v6 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v5];
    v7 = CFStringCreateWithFormat(0, 0, @"x-apple-reminder://%@", v6);
    if (v7)
    {
      v8 = v7;
      v9 = CFURLCreateWithString(0, v7, 0);
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t CalTaskGetDisplayOrder(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property;
}

void CalTaskSetDisplayOrder(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (!a2)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    v6 = CPRecordCopyProperty();
    if (v6)
    {
      v7 = v6;
      a2 = MEMORY[0x1E12C5EF0]();
      CFRelease(v7);
    }

    else
    {
      a2 = 0;
    }
  }

  _CalCalendarItemSetRecordProperty(a1, 45, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalDatabaseCopyTasks(os_unfair_lock_s *a1, void *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, __int128 a10, const __CFString *a11, int a12)
{
  v13 = 0;
  CalDatabaseCopyTasksOrGetCount(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, 0, &v13, 0);
  return v13;
}

void CalDatabaseCopyTasksOrGetCount(os_unfair_lock_s *a1, void *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, __int128 a10, const __CFString *a11, int a12, char a13, uint64_t *a14, _DWORD *a15)
{
  if (a14)
  {
    *a14 = 0;
  }

  if (a15)
  {
    *a15 = 0;
  }

  os_unfair_lock_lock(a1 + 20);
  if (a13)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"SELECT count(CalendarItem.rowid) from CalendarItem ");
  }

  else if (__PAIR128__(a11, *(&a10 + 1)) == 0)
  {
    MutableCopy = CPRecordStoreCreateSelectPrefixFromRecordDescriptor();
  }

  else
  {
    MutableCopy = CPRecordStoreCreateJoinableSelectPrefixFromRecordDescriptor();
  }

  v21 = MutableCopy;
  if (!MutableCopy)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(a1 + 20);
    }

    os_unfair_lock_unlock(a1 + 20);
    return;
  }

  if (__PAIR128__(a11, *(&a10 + 1)) != 0)
  {
    CFStringAppend(MutableCopy, @" JOIN Calendar ON CalendarItem.calendar_id = Calendar.ROWID");
  }

  CFStringAppendFormat(v21, 0, @" WHERE entity_type = %d", 3);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (!Database)
  {
    goto LABEL_32;
  }

  v26 = Database;
  if (a10 != 0)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }
    }

    if (CPSqliteDatabaseRegisterMatchesSearchStringByWordFunction())
    {
      goto LABEL_32;
    }
  }

  if (a11)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v26 + 104))
      {
        v28 = CPRecordStoreGetContext();
        if (v28)
        {
          os_unfair_lock_assert_owner(v28 + 20);
        }
      }
    }

    if (CPSqliteDatabaseRegisterMatchesSearchStringFunction())
    {
LABEL_32:
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(a1 + 20);
      }

      os_unfair_lock_unlock(a1 + 20);
      v29 = v21;
      goto LABEL_35;
    }
  }

  if (a10)
  {
    CFStringAppend(v21, @" AND STRING_MATCHES_WORD(?, IFNULL(summary, ''))");
  }

  if (a11)
  {
    CFStringAppend(v21, @" AND (((calendar.title != ? AND calendar.title != ?) AND STRING_MATCHES_PREFIX(?, IFNULL(summary, '') || ' ' || IFNULL(calendar.title, ''))) OR ((calendar.title = ? OR calendar.title = ?) AND STRING_MATCHES_PREFIX(?, IFNULL(summary, '') || ' ' || ?)))");
  }

  if (*(&a10 + 1))
  {
    CFStringAppend(v21, @" AND (((calendar.title != ? AND calendar.title != ?) AND STRING_MATCHES_WORD(?, IFNULL(calendar.title, ''))) OR ((calendar.title = ? OR calendar.title = ?) AND STRING_MATCHES_WORD(?, ?)))");
  }

  v76 = a8;
  if (!a9)
  {
    v30 = CalCopySystemTimeZone();
    if (!(a6 | a7))
    {
      CFRelease(v30);
      goto LABEL_61;
    }

    v75 = v30;
    CFStringAppend(v21, CFSTR(" AND (("));
    if (a6)
    {
      MEMORY[0x1E12C5EF0](a6);
      CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
      cf = CFDateCreate(0, v31);
      CFStringAppend(v21, @"(((due_tz IS NOT NULL AND due_tz != ?) AND due_date >= ?) OR ((due_tz IS NULL OR due_tz = ?) AND due_date >= ?))");
    }

    else
    {
      cf = 0;
    }

    if (a7)
    {
      MEMORY[0x1E12C5EF0]();
      CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
      v78 = CFDateCreate(0, v74);
      if (a6)
      {
        CFStringAppend(v21, @" AND ");
      }

      CFStringAppend(v21, @"(((due_tz IS NOT NULL AND due_tz != ?) AND due_date < ?) OR ((due_tz IS NULL OR due_tz = ?) AND due_date < ?))");
    }

    else
    {
      v78 = 0;
    }

    CFRelease(v75);
    if (a8)
    {
      CFStringAppend(v21, @" OR ("));
      if (a6)
      {
        CFStringAppend(v21, @"(completion_date >= ?)");
        if (!a7)
        {
          goto LABEL_151;
        }

        CFStringAppend(v21, @" AND ");
      }

      else if (!a7)
      {
        goto LABEL_151;
      }

      CFStringAppend(v21, @"(completion_date < ?)");
    }

LABEL_151:
    CFStringAppend(v21, @")"));
    if (!a4)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  if (!(a6 | a7))
  {
    goto LABEL_61;
  }

  CFStringAppend(v21, @" AND (");
  if (a6)
  {
    CFStringAppend(v21, @"(completion_date >= ?)");
    if (a7)
    {
      CFStringAppend(v21, @" AND ");
LABEL_59:
      CFStringAppend(v21, @"(completion_date < ?)");
    }
  }

  else if (a7)
  {
    goto LABEL_59;
  }

  CFStringAppend(v21, @""));
LABEL_61:
  cf = 0;
  v78 = 0;
  if (!a4)
  {
    goto LABEL_66;
  }

LABEL_62:
  if (a5)
  {
    v32 = @" AND completion_date IS NOT NULL";
  }

  else
  {
    v32 = @" AND completion_date IS NULL";
  }

  CFStringAppend(v21, v32);
LABEL_66:
  v33 = _CalFilterCopyCalendarIDClauseForQuery(a2, @"calendar_id");
  if (v33)
  {
    v34 = v33;
    CFStringAppendFormat(v21, 0, @" AND %@", v33);
    CFRelease(v34);
  }

  v35 = a12;
  if ((a3 - 1) <= 3)
  {
    CFStringAppend(v21, *(&off_1E86958F8 + (a3 - 1)));
  }

  if (a12)
  {
    CFStringAppend(v21, @" LIMIT ?");
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(v26 + 104))
    {
      v36 = CPRecordStoreGetContext();
      if (v36)
      {
        os_unfair_lock_assert_owner(v36 + 20);
      }
    }
  }

  v37 = CPSqliteDatabaseStatementForReading();
  if (!v37)
  {
    v50 = 0;
    v51 = 0;
    v53 = v78;
    v52 = a15;
    v44 = cf;
    goto LABEL_125;
  }

  v38 = v37;
  if (a10)
  {
    CStringFromCFString = CalCreateCStringFromCFString(a10);
    v40 = 1;
    sqlite3_bind_text(v38[1], 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
    if (a11)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v40 = 0;
    if (a11)
    {
LABEL_79:
      v41 = CalCalendarDefaultReminderListTitleLocalized();
      v42 = CalCreateCStringFromCFString(v41);
      v43 = CalCreateCStringFromCFString(a11);
      sqlite3_bind_text(v38[1], v40 + 1, "DEFAULT_TASK_CALENDAR_NAME", -1, 0);
      sqlite3_bind_text(v38[1], v40 | 2, "Reminders", -1, 0);
      sqlite3_bind_text(v38[1], v40 + 3, v43, -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(v38[1], v40 | 4, "DEFAULT_TASK_CALENDAR_NAME", -1, 0);
      sqlite3_bind_text(v38[1], v40 + 5, "Reminders", -1, 0);
      sqlite3_bind_text(v38[1], v40 | 6, v43, -1, 0xFFFFFFFFFFFFFFFFLL);
      v40 += 7;
      sqlite3_bind_text(v38[1], v40, v42, -1, 0xFFFFFFFFFFFFFFFFLL);
      if (v42)
      {
        free(v42);
      }

      v44 = cf;
      if (v43)
      {
        free(v43);
      }

      v35 = a12;
      if (*(&a10 + 1))
      {
        goto LABEL_84;
      }

      goto LABEL_91;
    }
  }

  v44 = cf;
  if (*(&a10 + 1))
  {
LABEL_84:
    v45 = CalCreateCStringFromCFString(*(&a10 + 1));
    v46 = CalCalendarDefaultReminderListTitleLocalized();
    v47 = CalCreateCStringFromCFString(v46);
    sqlite3_bind_text(v38[1], v40 + 1, "DEFAULT_TASK_CALENDAR_NAME", -1, 0);
    sqlite3_bind_text(v38[1], v40 + 2, "Reminders", -1, 0);
    sqlite3_bind_text(v38[1], v40 + 3, v45, -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(v38[1], v40 + 4, "DEFAULT_TASK_CALENDAR_NAME", -1, 0);
    sqlite3_bind_text(v38[1], v40 + 5, "Reminders", -1, 0);
    sqlite3_bind_text(v38[1], v40 + 6, v45, -1, 0xFFFFFFFFFFFFFFFFLL);
    v40 += 7;
    sqlite3_bind_text(v38[1], v40, v47, -1, 0xFFFFFFFFFFFFFFFFLL);
    if (v47)
    {
      free(v47);
    }

    v35 = a12;
    v48 = a7;
    v49 = a6;
    if (v45)
    {
      free(v45);
    }

    goto LABEL_92;
  }

LABEL_91:
  v48 = a7;
  v49 = a6;
LABEL_92:
  if ((a9 & 1) == 0)
  {
    if (v49)
    {
      sqlite3_bind_text(v38[1], v40 + 1, "_float", -1, 0);
      v54 = v38[1];
      v55 = MEMORY[0x1E12C5EF0](v49);
      sqlite3_bind_double(v54, v40 + 2, v55);
      sqlite3_bind_text(v38[1], v40 + 3, "_float", -1, 0);
      v56 = v38[1];
      v40 += 4;
      v57 = MEMORY[0x1E12C5EF0](v44);
      sqlite3_bind_double(v56, v40, v57);
    }

    if (v48)
    {
      sqlite3_bind_text(v38[1], v40 + 1, "_float", -1, 0);
      v58 = v38[1];
      v59 = MEMORY[0x1E12C5EF0](v48);
      sqlite3_bind_double(v58, v40 + 2, v59);
      sqlite3_bind_text(v38[1], v40 + 3, "_float", -1, 0);
      v60 = v38[1];
      v40 += 4;
      v61 = MEMORY[0x1E12C5EF0](v78);
      sqlite3_bind_double(v60, v40, v61);
    }
  }

  v62 = v76 | a9;
  if (v49 && v62)
  {
    v63 = v38[1];
    ++v40;
    v64 = MEMORY[0x1E12C5EF0](v49);
    sqlite3_bind_double(v63, v40, v64);
  }

  v65 = v62 ^ 1;
  if (!v48)
  {
    v65 = 1;
  }

  if ((v65 & 1) == 0)
  {
    v66 = v38[1];
    ++v40;
    v67 = MEMORY[0x1E12C5EF0](v48);
    sqlite3_bind_double(v66, v40, v67);
  }

  v52 = a15;
  if (v35)
  {
    sqlite3_bind_int(v38[1], v40 + 1, v35);
  }

  v68 = _CalDatabaseGetRecordStore(a1);
  if (a13)
  {
    v53 = v78;
    if (CDBLockingAssertionsEnabled)
    {
      if (*v38)
      {
        v69 = **v38;
        if (v69)
        {
          if (*(v69 + 104))
          {
            v70 = CPRecordStoreGetContext();
            if (v70)
            {
              os_unfair_lock_assert_owner(v70 + 20);
            }
          }
        }
      }
    }

    v50 = CPSqliteStatementIntegerResult();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v38)
      {
        v71 = **v38;
        if (v71)
        {
          if (*(v71 + 104))
          {
            v72 = CPRecordStoreGetContext();
            if (v72)
            {
              os_unfair_lock_assert_owner(v72 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    v51 = 0;
  }

  else
  {
    v53 = v78;
    if (CDBLockingAssertionsEnabled)
    {
      if (v68)
      {
        v73 = CPRecordStoreGetContext();
        if (v73)
        {
          os_unfair_lock_assert_owner(v73 + 20);
        }
      }
    }

    v51 = CPRecordStoreProcessStatement();
    v50 = 0;
  }

LABEL_125:
  if (v44)
  {
    CFRelease(v44);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  CFRelease(v21);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  if (a13)
  {
    if (v52)
    {
      *v52 = v50;
    }
  }

  else
  {
    if (a14)
    {
      *a14 = v51;
      return;
    }

    if (v51)
    {
      v29 = v51;
LABEL_35:

      CFRelease(v29);
    }
  }
}

uint64_t CalDatabaseCopyCountOfTasks(os_unfair_lock_s *a1, void *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, __int128 a10, const __CFString *a11)
{
  v12 = 0;
  CalDatabaseCopyTasksOrGetCount(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, 0, 1, 0, &v12);
  return v12;
}

uint64_t _CalDatabaseCopyScheduledTasks(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreCopyAllInstancesOfClassWhere();
}

uint64_t _CalDatabaseCopyScheduledTasksInDateRange(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
}

CFMutableDictionaryRef CalDatabaseCopyTaskMovesInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  v3 = 0;
  CalDatabaseCopyCalendarItemChangesInStore(a1, 3, a2, 1, &v3);
  return v3;
}

CFMutableDictionaryRef CalDatabaseCopyTaskMovesInCalendar(os_unfair_lock_s *a1, uint64_t a2)
{
  v3 = 0;
  CalDatabaseCopyCalendarItemChangesInCalendar(a1, 3, a2, 1, &v3);
  return v3;
}

uint64_t _CalContactPrepareForSave(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationOwnerWillSave(result);
  }

  return result;
}

uint64_t _CalContactPropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  if (!a2 && a3 == -1)
  {
    v4 = result;
    if (result)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    CPRecordGetProperty();
    if (v4)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v6 = CPRecordStoreGetContext();
          if (v6)
          {
            os_unfair_lock_assert_owner(v6 + 20);
          }
        }
      }
    }

    return CPRecordGetProperty();
  }

  return result;
}

void CalContactInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalContactClass, &kCalContactIndexes, &kCalContactChangesIndexes);
}

void CalContactMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 > 10000)
  {
    if (a3 <= 0x4651)
    {
      CalMigrateTableFull(a2, &kCalContactClass, 0, &kCalContactUpgradeInfo, 0, &kCalContactIndexes, &kCalContactChangesIndexes, 0, a3);
    }
  }

  else
  {
    CPRecordStoreCreateTablesForClass();

    CalMigrationCreateIndexes(a2, &kCalContactClass, &kCalContactIndexes, &kCalContactChangesIndexes);
  }
}

CFTypeRef _CalContactHasValidParent(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  result = CalRelationGetRelatedObject(Property);
  if (result)
  {

    return _CalRecordStillExists();
  }

  return result;
}

CFTypeRef _CalContactGetOwner(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

CFTypeRef CalContactCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalContactGetOwner(a1);
  v4 = Owner;
  if (Owner)
  {
    CFRetain(Owner);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalContactGetRecordID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

void CalContactSetContactIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalContactCopyContactIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

const void *_CalDatabaseCreateContact(uint64_t a1)
{
  v2 = CPRecordCreate();
  v3 = v2;
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 21);
  if (CDBLockingAssertionsEnabled == 1 && v3 != 0)
  {
    if (CPRecordGetStore())
    {
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v3);
  return v3;
}

const void *CalDatabaseCreateContact(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Contact = _CalDatabaseCreateContact(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Contact;
}

const void *_CalContactCopy(uint64_t a1, uint64_t a2)
{
  Contact = _CalDatabaseCreateContact(a1);
  v4 = Contact;
  if (CDBLockingAssertionsEnabled == 1 && Contact != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
  {
    if (CPRecordGetStore())
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v10 = CPRecordStoreGetContext();
        if (v10)
        {
          os_unfair_lock_assert_owner(v10 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
  {
    if (CPRecordGetStore())
    {
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  return v4;
}

uint64_t _CalRemoveContact(void *a1)
{
  Owner = _CalContactGetOwner(a1);
  if (Owner)
  {

    return _CalCalendarItemRemoveContact(Owner, a1);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

void CalRemoveContact(void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveContact(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalInvalidateContactsWithOwnerID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreInvalidateCachedInstancesOfClassWithBlock();
}

uint64_t CalDatabaseCopyContactChangesInStore(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalContactCreateChangeHistoryWhereClauseForStore(v5, a2);
  v7 = _CalDatabaseCopyContactChangesWithWhereClauseNoLock(v5, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

CFStringRef _CalContactCreateChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"store_id = %d AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@') AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@') AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 21, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t _CalDatabaseCopyContactChangesWithWhereClauseNoLock(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      *a3 = Mutable;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_6:
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithProperties();
}

uint64_t CalDatabaseRemoveContactChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = _CalContactCreateChangeHistoryWhereClauseForStore(v5, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___CalDatabaseRemoveContactChangesInStoreToIndex_block_invoke;
  v9[3] = &unk_1E8689120;
  v9[4] = &v11;
  v9[5] = v5;
  v10 = a3;
  v9[6] = v6;
  _CalDatabaseLockForWriteTransaction(v5, v9);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  return v7;
}

void sub_1DEC8A800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CalDatabaseCopyContactChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalContactCreateChangeHistoryWhereClauseForCalendar(v5, a2);
  v7 = _CalDatabaseCopyContactChangesWithWhereClauseNoLock(v5, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

CFStringRef _CalContactCreateChangeHistoryWhereClauseForCalendar(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"calendar_id = %d AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@') AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@') AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 21, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t CalDatabaseRemoveContactChangesInCalendarToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalContactCreateChangeHistoryWhereClauseForCalendar(v5, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalDatabaseRemoveContactChangesInCalendarToIndex_block_invoke;
  v9[3] = &unk_1E8689120;
  v9[4] = &v11;
  v9[5] = v5;
  v10 = a3;
  v9[6] = v6;
  _CalDatabaseLockForWriteTransaction(v5, v9);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1DEC8AA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveContactChangesInCalendarToIndex_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 40));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  result = CPRecordStoreDeleteChangesForClassToIndexWhere();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CalDatabaseRemoveContactChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseRemoveContactChangesWithIndices_block_invoke;
  v6[3] = &unk_1E8689148;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  _CalDatabaseLockForWriteTransaction(a1, v6);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1DEC8AC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveContactChangesWithIndices_block_invoke(void *a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1[5]);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = a1[6];
  result = CPRecordStoreDeleteChangesForClassWithIndices();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t _CalContactGetWithUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreGetInstanceOfClassWithUID();
}

const void *CalDatabaseCopyContactWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v3 = _CalContactGetWithUID(RecordStore);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

uint64_t CalDatabaseCopyOfAllContactsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = CDBLockingAssertionsEnabled;
  if (!RecordStore)
  {
    v5 = 0;
  }

  if (a2)
  {
    if (v5)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v7 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  }

  else
  {
    if (v5)
    {
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }

    v7 = CPRecordStoreCopyAllInstancesOfClass();
  }

  v9 = v7;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v9;
}

uint64_t __CalDatabaseCopyOfAllContactsInStore_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 32);
  ID = CPRecordGetID();

  return sqlite3_bind_int(v2, 1, ID);
}

uint64_t CalContactCountOfContactsWithIdentifier(const __CFString *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a2);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (!Database)
  {
    goto LABEL_16;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(Database + 104))
    {
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }
  }

  v9 = CPSqliteDatabaseStatementForReading();
  if (v9 && (v10 = v9, *(v9 + 8)))
  {
    CStringFromCFString = CalCreateCStringFromCFString(a1);
    sqlite3_bind_text(*(v10 + 8), 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
    if (sqlite3_step(*(v10 + 8)) == 1)
    {
      return 0;
    }

    v12 = sqlite3_column_int(*(v10 + 8), 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v10)
      {
        v14 = **v10;
        if (v14)
        {
          if (*(v14 + 104))
          {
            v15 = CPRecordStoreGetContext();
            if (v15)
            {
              os_unfair_lock_assert_owner(v15 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  else
  {
LABEL_16:
    v12 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a2 + 20);
  }

  os_unfair_lock_unlock(a2 + 20);
  return v12;
}

__CFArray *CalContactCopyObjectIDsOfContactsWithIdentifier(const __CFString *a1, os_unfair_lock_s *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  os_unfair_lock_lock(a2 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a2);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (Database)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v9 = CPRecordStoreGetContext();
        if (v9)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }
      }
    }

    v10 = CPSqliteDatabaseStatementForReading();
    if (v10)
    {
      v11 = v10;
      if (*(v10 + 8))
      {
        CStringFromCFString = CalCreateCStringFromCFString(a1);
        sqlite3_bind_text(*(v11 + 8), 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
        while (sqlite3_step(*(v11 + 8)) == 100)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*(v11 + 8), 0)}];
          CFArrayAppendValue(Mutable, v13);
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v11)
          {
            v14 = **v11;
            if (v14)
            {
              if (*(v14 + 104))
              {
                v15 = CPRecordStoreGetContext();
                if (v15)
                {
                  os_unfair_lock_assert_owner(v15 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementReset();
      }
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a2 + 20);
  }

  os_unfair_lock_unlock(a2 + 20);
  return Mutable;
}

CFTypeRef _CalContactLoadStoreId(uint64_t a1)
{
  result = _CalContactGetOwner(a1);
  if (result)
  {
    _CalCalendarItemGetStoreId(result);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    return CPRecordInitializeProperty();
  }

  return result;
}

CFTypeRef _CalContactLoadCalendarId(uint64_t a1)
{
  result = _CalContactGetOwner(a1);
  if (result)
  {
    _CalCalendarItemGetCalendarId(result);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    return CPRecordInitializeProperty();
  }

  return result;
}

id DateComponentsFromAbsoluteTime(void *a1, double a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a2];
  v5 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v6 = [v5 copy];

  if (v3)
  {
    [v6 setTimeZone:v3];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    [v6 setTimeZone:v7];
  }

  v8 = [v6 components:252 fromDate:v4];

  return v8;
}

double CalDateFromICSDateInTimezone(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
LABEL_6:
    v12 = *MEMORY[0x1E6993100];
    goto LABEL_7;
  }

  v5 = [v3 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
      v18 = 138412290;
      v19 = objc_opt_class();
      v15 = v19;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_DEBUG, "The given ICSDate (%@) is not of any known type", &v18, 0xCu);
    }

    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v8 = [v7 copy];

  v9 = [v3 value];
  v10 = NSDateFromICSValueInTimeZone();

  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

CFDateRef CalCreateCFDateFromICSDateAsUTC(CFDateRef result)
{
  if (result)
  {
    v1 = CalDateFromICSDateAsUTC(result);

    return CFDateCreate(0, v1);
  }

  return result;
}

double CalDateFromICSDateAsUTC(void *a1)
{
  v1 = MEMORY[0x1E695DFE8];
  v2 = a1;
  v3 = [v1 timeZoneWithName:@"UTC"];
  v4 = CalDateFromICSDateInTimezone(v2, v3);

  return v4;
}

double CalDateFromICSDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DFE8];
  v6 = [v3 tzid];
  v7 = [v5 timeZoneWithName:v6];

  if (!v7)
  {
    v8 = [v4 systemTimeZoneForDate:v3];
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    }

    v7 = v8;
  }

  v9 = CalDateFromICSDateInTimezone(v3, v7);

  return v9;
}

uint64_t CalCreateDateTimeFromICSDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v17 = 0;
  if (v3)
  {
    v5 = [v3 tzid];
    if ([v3 hasFloatingTimeZone])
    {
      v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];

LABEL_4:
      v7 = @"_float";
LABEL_12:
      CalDateTimeSetTimeZone();
      CFRelease(v7);
      v11 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
      v12 = [v11 copy];

      v13 = [v3 value];
      v14 = NSDateFromICSValueInTimeZone();

      [v14 timeIntervalSinceReferenceDate];
      v17 = v15;

      goto LABEL_13;
    }

    if (!v5)
    {
      v7 = @"UTC";
      v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      goto LABEL_12;
    }

    v8 = [MEMORY[0x1E695DFE8] timeZoneWithName:v5];
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = [v4 systemTimeZoneForDate:v3];
      v9 = [v6 name];

      if (!v6)
      {
        v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];

        goto LABEL_4;
      }

      v5 = v9;
    }

    v10 = [v5 copy];
    v7 = CFRetain(v10);

    goto LABEL_12;
  }

LABEL_13:

  return v17;
}

id ICSFloatingDateTimeFromCFDateInTimezone(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E12C5EF0](a1);
  v5 = DateComponentsFromAbsoluteTime(v3, v4);

  v6 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v5 month:"year") day:objc_msgSend(v5 hour:"month") minute:objc_msgSend(v5 second:{"day"), objc_msgSend(v5, "hour"), objc_msgSend(v5, "minute"), objc_msgSend(v5, "second")}];

  return v6;
}

id ICSFloatingDateOnlyFromCFDate(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E12C5EF0](a1);
  v5 = DateComponentsFromAbsoluteTime(v3, v4);

  v6 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v5 month:"year") day:{objc_msgSend(v5, "month"), objc_msgSend(v5, "day")}];

  return v6;
}

id ICSDateFromCFDateInTimezone(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  }

  v4 = MEMORY[0x1E12C5EF0](a1);
  v5 = DateComponentsFromAbsoluteTime(v3, v4);
  v6 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v5 month:"year") day:objc_msgSend(v5 hour:"month") minute:objc_msgSend(v5 second:"day") timeZone:{objc_msgSend(v5, "hour"), objc_msgSend(v5, "minute"), objc_msgSend(v5, "second"), v3}];

  return v6;
}

id ICSDateFromCFDateGuessingAtFloatingDateOnly(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MEMORY[0x1E12C5EF0](a1);
    v5 = DateComponentsFromAbsoluteTime(v3, v4);
    if ([v5 hour] || objc_msgSend(v5, "minute") || objc_msgSend(v5, "second"))
    {
      v6 = ICSDateFromCFDateInTimezone(a1, v3);
    }

    else
    {
      v6 = ICSFloatingDateOnlyFromCFDate(a1, 0);
    }

    v7 = v6;
  }

  else
  {
    v7 = ICSFloatingDateTimeFromCFDateInTimezone(a1, 0);
  }

  return v7;
}

id ICSDateFromCFDate(uint64_t a1, void *a2)
{
  if (a2)
  {
    ICSDateFromCFDateInTimezone(a1, a2);
  }

  else
  {
    ICSFloatingDateTimeFromCFDateInTimezone(a1, 0);
  }
  v2 = ;

  return v2;
}

id ICSDateTimeForCalDate(double a1)
{
  if (*MEMORY[0x1E6993100] == a1)
  {
    v2 = 0;
  }

  else
  {
    v1 = DateComponentsFromAbsoluteTime(0, a1);
    v2 = [objc_alloc(MEMORY[0x1E69E3C98]) initWithYear:objc_msgSend(v1 month:"year") day:objc_msgSend(v1 hour:"month") minute:objc_msgSend(v1 second:{"day"), objc_msgSend(v1, "hour"), objc_msgSend(v1, "minute"), objc_msgSend(v1, "second")}];
  }

  return v2;
}

void sub_1DEC8D550(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void _CalDatabaseBeginTransactionOfType_cold_1(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _CalDatabaseBeginTransactionOfType(CalDatabaseRef, CPSqliteTransactionType, const char *)"}];
  [v9 handleFailureInFunction:v8 file:@"CalDatabase.m" lineNumber:1088 description:{@"Tried to begin a transaction of type %i (%s) when there's already an open transaction of type %i (%s)", a3, a4, *a1, *(a2 + 328)}];
}

void __CalDatabaseCommitTransaction_cold_1(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL __CalDatabaseCommitTransaction(CalDatabaseRef, const char *)"}];
  [v5 handleFailureInFunction:v4 file:@"CalDatabase.m" lineNumber:1118 description:{@"Tried to commit a transaction (%s) when no transaction was open (%s)", a2, *(a1 + 328)}];
}

void __CalDatabaseRollbackTransaction_cold_1(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL __CalDatabaseRollbackTransaction(CalDatabaseRef, const char *)"}];
  [v5 handleFailureInFunction:v4 file:@"CalDatabase.m" lineNumber:1133 description:{@"Tried to roll back a transaction (%s) when no transaction was open (%s)", a2, *(a1 + 328)}];
}

void __getCalOutOfProcessMigratorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCalOutOfProcessMigratorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalDatabase.m" lineNumber:63 description:{@"Unable to find class %s", "CalOutOfProcessMigrator"}];

  __break(1u);
}

void CalendarMigrationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CalendarMigrationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalDatabase.m" lineNumber:60 description:{@"%s", *a1}];

  __break(1u);
}

void _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x1E6992EE8]) initWithType:@"Database" subtype:@"Integrity" context:@"Schema"];
  [v0 setIgnoreRateLimiting:1];
  [v0 reportSynchronous];
  abort();
}

void __getCalDefaultReminderKitProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCalDefaultReminderKitProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalDatabase.m" lineNumber:72 description:{@"Unable to find class %s", "CalDefaultReminderKitProvider"}];

  __break(1u);
}

void __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCalDefaultReminderMigrationDefaultsProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalDatabase.m" lineNumber:73 description:{@"Unable to find class %s", "CalDefaultReminderMigrationDefaultsProvider"}];

  __break(1u);
}

void __getCalCalendarDatabaseReminderMigratorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCalCalendarDatabaseReminderMigratorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalDatabase.m" lineNumber:71 description:{@"Unable to find class %s", "CalCalendarDatabaseReminderMigrator"}];

  __break(1u);
}

void _EKCreateMSUIDStringForEvent_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _EKCreateMSUIDStringForEvent(CalEventRef, CalEventRef)"}];
  [v1 handleFailureInFunction:v0 file:@"EKMSUID.m" lineNumber:99 description:@"You must set a parent event's unique id before constructing one for a detached event"];
}

void _EKMSUUIDStringForDetachedEvent_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *_EKMSUUIDStringForDetachedEvent(NSString *__strong, NSDate *__strong, NSTimeZone *__strong, BOOL)"}];
  [v1 handleFailureInFunction:v0 file:@"EKMSUID.m" lineNumber:152 description:@"Event has no original start date?"];
}

void CalOrganizerSetIsSelf(const void *a1, unsigned int a2)
{
  if (CalEntityIsOfType(a1, 8))
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
    _CalRecordSetPropertyIfDifferent(a1, 11, a2);
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
  }
}

BOOL CalOrganizerIsSelf(const void *a1)
{
  if (!CalEntityIsOfType(a1, 8))
  {
    return 0;
  }

  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsSelf = _CalOrganizerIsSelf(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsSelf;
}

void _CalRecordIDLoad_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = 134217984;
    v4 = a2;
    _os_log_impl(&dword_1DEBB1000, log, OS_LOG_TYPE_ERROR, "Record with pointer address of [%p] was not marked as being deleted.", &v3, 0xCu);
  }

  __assert_rtn("_CalRecordIDLoad", "CalRecordID.m", 117, "false");
}

void _CalEventOccurrenceCacheLoadInfo_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _CalEventOccurrenceCacheLoadInfo(CalEventOccurrenceCacheRef)"];
  [v1 handleFailureInFunction:v0 file:@"CalEventOccurrenceCache.m" lineNumber:241 description:@"No transaction when accessing time zone."];
}

void CalLoadAttachmentPropertyFromFileProperty_cold_1(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_ERROR, "Unknown property id %i in CalLoadAttachmentPropertyFromFileProperty", v3, 8u);
  }

  __assert_rtn("CalLoadAttachmentPropertyFromFileProperty", "CalAttachment.m", 139, "0");
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}