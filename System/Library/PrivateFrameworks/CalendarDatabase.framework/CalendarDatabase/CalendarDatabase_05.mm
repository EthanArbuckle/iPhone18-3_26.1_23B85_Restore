BOOL CalCalendarIsBirthdayCalendar()
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  os_unfair_lock_lock(DatabaseForRecord + 20);
  RecordStore = _CalDatabaseGetRecordStore(DatabaseForRecord);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
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
      v6 = CPRecordStoreGetContext();
      if (v6)
      {
        os_unfair_lock_assert_owner(v6 + 20);
      }
    }
  }

  v7 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v7)
  {
    v8 = v7;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        if (*(*v7 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    v10 = CPSqliteConnectionIntegerForProperty();
    if (CDBLockingAssertionsEnabled == 1)
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

    CPSqliteDatabaseReleaseSqliteConnection();
    v12 = CPRecordGetID() == v10;
  }

  else
  {
    v12 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(DatabaseForRecord + 20);
  }

  os_unfair_lock_unlock(DatabaseForRecord + 20);
  return v12;
}

uint64_t CalCalendarGetBirthdayCalendarVersion(os_unfair_lock_s *a1)
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
  if (v8)
  {
    v9 = v8;
    if (CDBLockingAssertionsEnabled == 1)
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

    v11 = CPSqliteConnectionIntegerForProperty();
    if (CDBLockingAssertionsEnabled == 1)
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

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v11;
}

void CalCalendarSetBirthdayCalendarVersion(os_unfair_lock_s *a1)
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
  if (v8)
  {
    v9 = v8;
    if (CDBLockingAssertionsEnabled == 1)
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

    CPSqliteConnectionSetIntegerForProperty();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v9)
      {
        if (*(*v9 + 104))
        {
          v11 = CPRecordStoreGetContext();
          if (v11)
          {
            os_unfair_lock_assert_owner(v11 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

BOOL CalCalendarIsFacebookBirthdayCalendar()
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  os_unfair_lock_lock(DatabaseForRecord + 20);
  RecordStore = _CalDatabaseGetRecordStore(DatabaseForRecord);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
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
      v6 = CPRecordStoreGetContext();
      if (v6)
      {
        os_unfair_lock_assert_owner(v6 + 20);
      }
    }
  }

  v7 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v7)
  {
    v8 = v7;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        if (*(*v7 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    v10 = CPSqliteConnectionIntegerForProperty();
    if (CDBLockingAssertionsEnabled == 1)
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

    CPSqliteDatabaseReleaseSqliteConnection();
    v12 = CPRecordGetID() == v10;
  }

  else
  {
    v12 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(DatabaseForRecord + 20);
  }

  os_unfair_lock_unlock(DatabaseForRecord + 20);
  return v12;
}

CFTypeRef CalDatabaseCopyStoreForBirthdayCalendar(os_unfair_lock_s *a1, int a2)
{
  result = CalDatabaseCopyBirthdayCalendar(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CalCalendarCopyStore(result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void _CalCalendarInsertNewDefault(void *a1)
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  CFRelease(v2);
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"INSERT INTO Calendar (ROWID, store_id, title, flags, UUID, self_identity_id, owner_identity_id) VALUES (1, 1, 'Default', %u, '%@', -1, -1);", 2, v3);
  if (v4)
  {
    v5 = v4;
    CalPerformSQLWithConnection(a1, v4);
    CFRelease(v5);
  }

  CFRelease(v3);
}

void CalCalendarInsertInitialLocalCalendar(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  AssignableColor = _CalCalendarCopyNextAssignableColor(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  if (AssignableColor)
  {
    CalendarForEntityType = CalDatabaseCreateCalendarForEntityType(a1, 2);
    v4 = CalDatabaseCopyLocalStore(a1);
    CalStoreAddCalendar(v4, CalendarForEntityType);
    CFRelease(v4);
    CalCalendarSetTitle(CalendarForEntityType);
    CalCalendarSetColorStringInternal(CalendarForEntityType, AssignableColor);

    CFRelease(AssignableColor);
  }
}

const void *_CalCalendarCopyNextAssignableColor(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  v3 = EKGetDefaultCalendarColors();
  MutableCopy = CFArrayCreateMutableCopy(0, 0, v3);
  if (a1)
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

    v8 = CPRecordStoreCopyAllInstancesOfClass();
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          _UpdateColorCountsWithCalendar(ValueAtIndex, Mutable);
        }
      }

      CFRelease(v9);
    }

    v14 = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1 && v14 != 0)
    {
      v16 = CPRecordStoreGetContext();
      if (v16)
      {
        os_unfair_lock_assert_owner(v16 + 20);
      }
    }

    v17 = CPRecordStoreCopyAddedRecords();
    if (v17)
    {
      v18 = v17;
      v19 = CFArrayGetCount(v17);
      if (v19 >= 1)
      {
        v20 = v19;
        for (j = 0; j != v20; ++j)
        {
          v22 = CFArrayGetValueAtIndex(v18, j);
          if (_CalEntityGetType(v22) == 1)
          {
            _UpdateColorCountsWithCalendar(v22, Mutable);
          }
        }
      }

      CFRelease(v18);
    }
  }

  v25.length = CFArrayGetCount(MutableCopy);
  v25.location = 0;
  CFArraySortValues(MutableCopy, v25, _CompareColorFrequencies, Mutable);
  CFRelease(Mutable);
  if (!MutableCopy)
  {
    return 0;
  }

  if (CFArrayGetCount(MutableCopy) < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = CFArrayGetValueAtIndex(MutableCopy, 0);
    CFRetain(v23);
    CFArrayRemoveValueAtIndex(MutableCopy, 0);
    CFArrayAppendValue(MutableCopy, v23);
  }

  CFRelease(MutableCopy);
  return v23;
}

const void *CalDatabaseCreateCalendarForEntityType(os_unfair_lock_s *a1, int a2)
{
  os_unfair_lock_lock(a1 + 20);
  CalendarForEntityType = _CalDatabaseCreateCalendarForEntityType(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return CalendarForEntityType;
}

void CalCalendarSetTitle(uint64_t a1)
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

uint64_t _CalDatabaseCreateCalendarInStoreImmediately(uint64_t a1, uint64_t a2, void *a3)
{
  ID = CPRecordGetID();
  v5 = CFUUIDCreate(0);
  v6 = CFUUIDCreateString(0, v5);
  CFRelease(v5);
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"INSERT INTO Calendar (store_id, title, UUID, self_identity_id, owner_identity_id) VALUES (%d, 'Default', '%@', -1, -1);", ID, v6);
  if (v7)
  {
    v8 = v7;
    CalPerformSQLWithConnection(a3, v7);
    if (a3)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a3)
        {
          if (*(*a3 + 104))
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

    Insert = CPSqliteConnectionRowidOfLastInsert();
    CFRelease(v8);
  }

  else
  {
    Insert = 0xFFFFFFFFLL;
  }

  CFRelease(v6);
  return Insert;
}

void CalCalendarInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalCalendarClass, &kCalCalendarIndexes, &kCalCalendarChangesIndexes);
  _CalCalendarInsertNewDefault(a2);
  if (*(CPRecordStoreGetContext() + 362))
  {
    CalPerformSQLWithConnection(a2, @"DELETE FROM Calendar WHERE ROWID = 1");
  }

  else
  {
    _CalCalendarInsertInitialLocalCalendar(a2, 4);
    _CalCalendarInsertInitialLocalCalendar(a2, 8);
    _CalCalendarInsertBirthdayCalendar(a2, 0);
    _CalCalendarInsertBirthdayCalendar(a2, 1);
    _CalCalendarInsertSuggestionsCalendar(a2, 0);
    _CalCalendarInsertNaturalLanguageSuggestionsCalendar(a2);
  }

  CalMigrationCreateTriggers(a2, &kCalCalendarClass, &kCalCalendarTriggers);
}

void _CalCalendarInsertInitialLocalCalendar(void *a1, uint64_t a2)
{
  v4 = CFUUIDCreate(0);
  v5 = CFUUIDCreateString(0, v4);
  CFRelease(v4);
  AssignableColor = _CalCalendarCopyNextAssignableColor(0);
  if (AssignableColor)
  {
    v7 = AssignableColor;
    v8 = @"DEFAULT_TASK_CALENDAR_NAME";
    if (a2 == 4)
    {
      v8 = @"DEFAULT_CALENDAR_NAME";
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"INSERT INTO Calendar (store_id, title, flags, supported_entity_types, UUID, color, color_is_display, self_identity_id, owner_identity_id) VALUES (1, '%@', 0, %d, '%@', '%@', 1, -1, -1);", v8, a2, v5, AssignableColor);
    CFRelease(v7);
    if (v9)
    {
      CalPerformSQLWithConnection(a1, v9);
      CFRelease(v9);
    }
  }

  CFRelease(v5);
}

void CalCalendarMigrateTables(uint64_t a1, void *a2, int a3)
{
  v3 = a3;
  v4 = a2;
  if ((a3 - 14008) <= 0x7CC)
  {
    CalPerformSQLWithConnection(a2, @"INSERT INTO Error (calendar_owner_id, error_code, user_info) SELECT ROWID, last_sync_error, last_sync_error_data FROM Calendar WHERE last_sync_error != 0");
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __CalCalendarMigrateTables_block_invoke;
  v43[3] = &__block_descriptor_44_e42__v24__0____CFString__8____CFDictionary__16l;
  v44 = v3;
  v43[4] = v4;
  v5 = MEMORY[0x1E12C7520](v43);
  if (v3 < 9013)
  {
    _CalCalendarRemoveAllPossibleSuggestionsCalendars(v4);
    CalMigrateTableFull2(v4, &kCalCalendarClass, 0, &kCalCalendarUpgradeInfo, v5, &kCalCalendarChangesUpgradeInfo, &__block_literal_global_10, 0, &kCalCalendarIndexes, &kCalCalendarChangesIndexes, &kCalCalendarTriggers, v3);
    v41 = v3;
    v42 = v4;
    v40 = v5;
    if (v3 > 31)
    {
      if (v3 > 0x3D)
      {
        if (v3 > 0x41)
        {
          goto LABEL_59;
        }

        goto LABEL_53;
      }
    }

    else
    {
      _CalCalendarInsertBirthdayCalendar(v4, 0);
    }

    if (v4)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*v4)
        {
          if (*(*v4 + 104))
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

    v7 = CPSqliteConnectionIntegerForProperty();
    if (v7 >= 1)
    {
      v8 = CFStringCreateWithFormat(0, 0, @"UPDATE Calendar SET supported_entity_types = %ld, color = '%@' WHERE ROWID = %d;", 4, @"#8295AF", v7);
      if (v8)
      {
        v9 = v8;
        CalPerformSQLWithConnection(v4, v8);
        CFRelease(v9);
      }
    }

    if (v4)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*v4)
        {
          if (*(*v4 + 104))
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

    v11 = CPSqliteConnectionStatementForSQL();
    if (v4)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*v4)
        {
          if (*(*v4 + 104))
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

    v13 = CPSqliteConnectionStatementForSQL();
    if (v11 && v13)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
      v15 = EKGetDefaultCalendarColors();
      MutableCopy = CFArrayCreateMutableCopy(0, 0, v15);
      if (v4)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*v4)
          {
            if (*(*v4 + 104))
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
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v18)
        {
          if (*v18)
          {
            v19 = **v18;
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
      }

      CPSqliteStatementSendResults();
      v45.length = CFArrayGetCount(MutableCopy);
      v45.location = 0;
      CFArraySortValues(MutableCopy, v45, _CompareColorFrequencies, Mutable);
      CFRelease(Mutable);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v11)
        {
          v21 = **v11;
          if (v21)
          {
            if (*(v21 + 104))
            {
              v22 = CPRecordStoreGetContext();
              if (v22)
              {
                os_unfair_lock_assert_owner(v22 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementSendResults();
      CFRelease(MutableCopy);
    }

LABEL_53:
    v23 = EKGetBrightonCalendarColors();
    Count = CFArrayGetCount(v23);
    v25 = EKGetWildcatDefaultCalendarColors();
    v26 = EKGetApexDefaultCalendarColors();
    v27 = EKGetSnowLeopardDefaultCalendarColors();
    v28 = CFArrayGetCount(v25);
    if (Count < v28)
    {
      goto LABEL_60;
    }

    v29 = v28;
    if (v28 < 1)
    {
      goto LABEL_60;
    }

    v30 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v23, v30);
      v32 = CFArrayGetValueAtIndex(v25, v30);
      v33 = CFArrayGetValueAtIndex(v26, v30);
      v34 = CFArrayGetValueAtIndex(v27, v30);
      v35 = CFStringCreateWithFormat(0, 0, @"UPDATE Calendar SET color = '%@' WHERE color in ('%@', '%@', '%@');", ValueAtIndex, v32, v33, v34);
      if (v35)
      {
        v36 = v35;
        CalPerformSQLWithConnection(v42, v35);
        CFRelease(v36);
      }

      ++v30;
    }

    while (v29 != v30);
LABEL_59:
    v3 = v41;
    if (v41 > 67)
    {
      v4 = v42;
      v5 = v40;
      if (v41 >= 0x58)
      {
        if (v41 >= 0x5A)
        {
LABEL_65:
          if (_CalDatabaseIsSuggestionsEnabled())
          {
            _CalCalendarInsertSuggestionsCalendar(v4, 0);
          }

          goto LABEL_67;
        }

LABEL_64:
        CalPerformSQLWithConnection(v4, @"UPDATE Calendar SET invitation_status = 3 WHERE invitation_status = 2");
        CalPerformSQLWithConnection(v4, @"UPDATE Calendar SET invitation_status = 2 WHERE invitation_status = 1");
        goto LABEL_65;
      }

LABEL_63:
      _CalCalendarInsertBirthdayCalendar(v4, 1);
      goto LABEL_64;
    }

LABEL_60:
    v37 = CFStringCreateWithFormat(0, 0, @"UPDATE Calendar SET supported_entity_types = %ld WHERE (supported_entity_types = 0 OR supported_entity_types IS NULL);", 4);
    v4 = v42;
    v5 = v40;
    if (v37)
    {
      v38 = v37;
      CalPerformSQLWithConnection(v42, v37);
      CFRelease(v38);
    }

    goto LABEL_63;
  }

  if (v3 > 0x4653)
  {
    goto LABEL_72;
  }

  CalMigrateTableFull2(v4, &kCalCalendarClass, 0, &kCalCalendarUpgradeInfo, v5, &kCalCalendarChangesUpgradeInfo, &__block_literal_global_10, 0, &kCalCalendarIndexes, &kCalCalendarChangesIndexes, &kCalCalendarTriggers, v3);
LABEL_67:
  if (v3 <= 11007)
  {
    if (_CalDatabaseIsSuggestionsEnabled())
    {
      _CalCalendarInsertNaturalLanguageSuggestionsCalendar(v4);
    }

    goto LABEL_71;
  }

  if (v3 <= 0x3EE4)
  {
LABEL_71:
    sqlite3_create_function(v4[1], "CalMigrateSubcalExternalID", 1, 526337, 0, _CalCalendarMigrateSubscribedCalendarExternalID, 0, 0);
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE Calendar SET external_id = CalMigrateSubcalExternalID(external_id) WHERE (Calendar.flags & %i) != 0 AND EXISTS (SELECT Store.ROWID FROM Store WHERE Store.ROWID = store_id AND Store.type == %i)", 8, 2];
    CalPerformSQLWithConnection(v4, v39);
    sqlite3_create_function(v4[1], "CalMigrateSubcalExternalID", 1, 526337, 0, 0, 0, 0);
  }

LABEL_72:
}

CFStringRef __CalCalendarMigrateTables_block_invoke(uint64_t a1, CFStringRef theString2, const __CFDictionary *a3)
{
  v6 = *(a1 + 40);
  if (v6 <= 52)
  {
    if (CFStringCompare(@"UUID", theString2, 0) == kCFCompareEqualTo)
    {
      v8 = CFUUIDCreate(0);
      v9 = CFUUIDCreateString(0, v8);
      CFRelease(v8);
      return v9;
    }

    v6 = *(a1 + 40);
  }

  if ((v6 - 13) > 0x28)
  {
LABEL_7:
    if (v6 > 119 || CFStringCompare(@"symbolic_color_name", theString2, 0))
    {
      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(a3, @"symbolic_color_name");
    v18 = CFDictionaryGetValue(a3, @"color");
    if (Value)
    {
      if (Value != *MEMORY[0x1E695E738] || v18 == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!v18)
      {
        goto LABEL_9;
      }

      Value = *MEMORY[0x1E695E738];
    }

    if (v18 != Value)
    {
      return symbolicColorForLegacyRGB();
    }

LABEL_9:
    if ((*(a1 + 40) - 14008) <= 0x7CC && CFStringCompare(@"error_id", theString2, 0) == kCFCompareEqualTo)
    {
      v20 = CFDictionaryGetValue(a3, @"last_sync_error");
      result = 0;
      if (!v20 || v20 == *MEMORY[0x1E695E738])
      {
        return result;
      }

      valuePtr = 0;
      CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
      if (valuePtr)
      {
        v21 = CFDictionaryGetValue(a3, @"ROWID");
        v32 = 0;
        CFNumberGetValue(v21, kCFNumberIntType, &v32);
        v22 = *(a1 + 32);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v22)
          {
            if (*v22)
            {
              if (*(*v22 + 104))
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

        v24 = CPSqliteConnectionStatementForSQL();
        if (v24)
        {
          v25 = v24;
          sqlite3_bind_int(*(v24 + 8), 1, v32);
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
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v25)
            {
              v29 = **v25;
              if (v29)
              {
                if (*(v29 + 104))
                {
                  v30 = CPRecordStoreGetContext();
                  if (v30)
                  {
                    os_unfair_lock_assert_owner(v30 + 20);
                  }
                }
              }
            }
          }

          CPSqliteStatementReset();
          if (v28)
          {
            [MEMORY[0x1E696AD98] numberWithInt:v28];
            return objc_claimAutoreleasedReturnValue();
          }
        }
      }
    }

    return 0;
  }

  if (CFStringCompare(@"color", theString2, 0))
  {
    goto LABEL_6;
  }

  valuePtr = -1;
  v31 = -1;
  v32 = -1;
  v10 = CFDictionaryGetValue(a3, @"color_r");
  v11 = *MEMORY[0x1E695E738];
  if (v10 && v10 != v11)
  {
    CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
  }

  v12 = CFDictionaryGetValue(a3, @"color_g");
  if (v12 && v12 != v11)
  {
    CFNumberGetValue(v12, kCFNumberIntType, &v31);
  }

  v13 = CFDictionaryGetValue(a3, @"color_b");
  if (v13 && v13 != v11)
  {
    CFNumberGetValue(v13, kCFNumberIntType, &v32);
  }

  if (valuePtr == -1 || v32 == -1 || v31 == -1)
  {
LABEL_6:
    v6 = *(a1 + 40);
    goto LABEL_7;
  }

  if (valuePtr >= 255)
  {
    v14 = 255;
  }

  else
  {
    v14 = valuePtr;
  }

  valuePtr = v14;
  if (v31 >= 255)
  {
    v15 = 255;
  }

  else
  {
    v15 = v31;
  }

  if (v32 >= 255)
  {
    v16 = 255;
  }

  else
  {
    v16 = v32;
  }

  v31 = v15;
  v32 = v16;
  return CFStringCreateWithFormat(0, 0, @"#%02X%02X%02X", v14, v15, v16);
}

void *__CalCalendarMigrateTables_block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:@"old_flags"])
  {
    return &unk_1F59EF9F8;
  }

  else
  {
    return 0;
  }
}

uint64_t _CalCalendarAssignColorDuringMigration(uint64_t a1, CFArrayRef *a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  if ((sqlite3_column_int(*(a1 + 8), 1) & 2) == 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2[1], 0);
    CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(a2[1], 0);
    CFArrayAppendValue(a2[1], ValueAtIndex);
    CFRelease(ValueAtIndex);
    v6 = *(*a2 + 1);
    CStringFromCFString = CalCreateCStringFromCFString(ValueAtIndex);
    sqlite3_bind_text(v6, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
    sqlite3_bind_int(*(*a2 + 1), 2, v4);
    v8 = *a2;
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

    CPSqliteStatementPerform();
    v12 = *a2;
    if (CDBLockingAssertionsEnabled == 1 && v12 != 0)
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

    CPSqliteStatementReset();
  }

  return 0;
}

uint64_t _CalDatabaseIsSuggestionsEnabled()
{
  v0 = *MEMORY[0x1E6993168];
  v1 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mutableCopy];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  if (([v3 containsObject:v0] & 1) == 0)
  {
    [v4 addObject:v0];
  }

  CFPreferencesSetAppValue(@"SiriCanLearnFromAppBlacklist", v4, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);

  v6 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v7 = [v6 containsObject:v0];

  return v7 ^ 1u;
}

BOOL _CalCalendarHasValidParent(uint64_t a1)
{
  StoreId = _CalCalendarGetStoreId(a1);
  if ((StoreId & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = StoreId;
  Store = CPRecordGetStore();

  return _CalRecordOfClassStillExists(&kCalStoreClass, Store, v2);
}

uint64_t CalCalendarGetPropertyIDWithPropertyName(void *key)
{
  v114 = *MEMORY[0x1E69E9840];
  v2 = CalCalendarGetPropertyIDWithPropertyName_sPropDict;
  if (!CalCalendarGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalCalendarGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalCalendarGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v7 = 14;
      v8 = @"externalID";
      v9 = 8;
      v10 = @"unlocalizedTitle";
      v11 = 1;
      v12 = @"colorStringRaw";
      v13 = 3;
      v14 = @"symbolicColorName";
      v15 = 4;
      v16 = @"colorDisplayOnly";
      v17 = 5;
      v18 = @"externalModificationTag";
      v19 = 9;
      v20 = @"externalIDTag";
      v21 = 10;
      v22 = @"externalRepresentation";
      v23 = 11;
      v24 = @"displayOrder";
      v25 = 12;
      v26 = @"source";
      v27 = 50;
      v28 = @"flags";
      v29 = 2;
      v30 = @"allowedEntities";
      v31 = 7;
      v32 = @"sharedOwnerName";
      v33 = 15;
      v34 = @"sharedOwnerURLString";
      v35 = 16;
      v36 = @"cachedExternalInfoData";
      v37 = 17;
      v38 = @"sharingStatus";
      v39 = 18;
      v40 = @"sharingInvitationResponse";
      v41 = 19;
      v42 = @"publishURLString";
      v43 = 20;
      v44 = @"isPublished";
      v45 = 21;
      v46 = @"invitationStatus";
      v47 = 22;
      v48 = @"syncToken";
      v49 = 23;
      v50 = @"selfIdentityEmail";
      v51 = 27;
      v52 = @"selfIdentityPhoneNumber";
      v53 = 28;
      v54 = @"ownerIdentityEmail";
      v55 = 30;
      v56 = @"ownerIdentityPhoneNumber";
      v57 = 31;
      v58 = @"notes";
      v59 = 32;
      v60 = @"subcalAccountID";
      v61 = 34;
      v62 = @"pushKey";
      v63 = 35;
      v64 = @"digest";
      v65 = 36;
      v66 = @"refreshDate";
      v67 = 37;
      v68 = @"subscriptionID";
      v69 = 38;
      v70 = @"lastSyncStartDate";
      v71 = 39;
      v72 = @"lastSyncEndDate";
      v73 = 40;
      v74 = @"subcalURL";
      v75 = 41;
      v76 = @"refreshInterval";
      v77 = 42;
      v78 = @"pubcalAccountID";
      v79 = 43;
      v80 = @"sharees";
      v81 = 52;
      v82 = @"notifications";
      v83 = 53;
      v84 = @"selfIdentityDisplayName";
      v85 = 55;
      v86 = @"ownerIdentityId";
      v87 = 29;
      v88 = @"selfIdentityAddressString";
      v89 = 56;
      v90 = @"ownerIdentityDisplayName";
      v91 = 57;
      v92 = @"ownerIdentityAddressString";
      v93 = 58;
      v94 = @"selfIdentityFirstName";
      v95 = 59;
      v96 = @"selfIdentityLastName";
      v97 = 60;
      v98 = @"ownerIdentityFirstName";
      v99 = 61;
      v100 = @"ownerIdentityLastName";
      v101 = 62;
      v102 = @"allAlarms";
      v103 = 63;
      v104 = @"syncError";
      v105 = 65;
      v106 = @"maxAttendees";
      v107 = 46;
      v108 = @"lastSyncTitle";
      v109 = 47;
      v110 = @"locale";
      v111 = 48;
      v112 = @"image";
      v113 = 66;
      CalCalendarGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 54);
      for (i = 848; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalCalendarGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalCalendarGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC02FAC(_Unwind_Exception *a1)
{
  for (i = 848; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

BOOL _CalCalendarHasDirtyInstanceAttributes(uint64_t a1)
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

BOOL _CalCalendarHasDirtySyncAttributes(uint64_t a1)
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

uint64_t _CalCalendarClearDirtyAttributes(uint64_t a1)
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

  CPRecordUnloadProperty();
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

  return CPRecordUnloadProperty();
}

uint64_t _CalCalendarSaveAddedRecords(uint64_t a1)
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

CFTypeRef _CalCalendarCopyRelatedEntitiesDeletedByTriggers(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v16 = 0;
  v6 = _CalCalendarCopySharees(a2);
  if (v6)
  {
    v7 = v6;
    CalDatabaseAddChangesToArray(&v16, v6, a3);
    CFRelease(v7);
  }

  v8 = _CalCalendarCopyNotifications(a2);
  if (v8)
  {
    v9 = v8;
    CalDatabaseAddChangesToArray(&v16, v8, a3);
    CFRelease(v9);
  }

  v10 = _CalCalendarCopyResourceChanges(a2);
  if (v10)
  {
    v11 = v10;
    CalDatabaseAddChangesToArray(&v16, v10, a3);
    CFRelease(v11);
  }

  v12 = _CalDatabaseCopyCalendarItemsWithCalendar(a1);
  if (v12)
  {
    v13 = v12;
    CalDatabaseAddChangesToArray(&v16, v12, a3);
    CFRelease(v13);
  }

  Error = _CalCalendarGetError(a2);
  if (Error)
  {
    CalDatabaseAddChangeToArray(&v16, Error, a3);
  }

  return v16;
}

CFMutableArrayRef _CalCalendarCopySharees(uint64_t a1)
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

    return CalToManyRelationCopyObjects(result);
  }

  return result;
}

CFMutableArrayRef _CalCalendarCopyNotifications(uint64_t a1)
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

    return CalToManyRelationCopyObjects(result);
  }

  return result;
}

CFMutableArrayRef _CalCalendarCopyResourceChanges(uint64_t a1)
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

    return CalToManyRelationCopyObjects(result);
  }

  return result;
}

CFTypeRef _CalCalendarGetError(uint64_t a1)
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

const void *_CalDatabaseCreateCalendarForEntityType(uint64_t a1, int a2)
{
  v4 = CPRecordCreate();
  v5 = v4;
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
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
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
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

  CPRecordInitializeProperty();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v5)
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

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  v16 = _CalDBCreateUUIDString();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v5)
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

  CPRecordInitializeProperty();
  CFRelease(v16);
  _CalDatabaseAddEntity(a1, v5);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v5)
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

    CPRecordSetProperty();
  }

  return v5;
}

const void *CalDatabaseCopyCalendar(os_unfair_lock_s *a1, uint64_t a2)
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  CalDatabaseMultiLock(DatabaseForRecord, a1);
  v5 = _CalDatabaseCopyCalendar(a1, a2);
  CalDatabaseMultiUnlock(DatabaseForRecord, a1);
  return v5;
}

const void *_CalDatabaseCopyCalendar(uint64_t a1, uint64_t a2)
{
  CalendarForEntityType = _CalDatabaseCreateCalendarForEntityType(a1, 0);
  v4 = CalendarForEntityType;
  if (CDBLockingAssertionsEnabled == 1 && CalendarForEntityType != 0)
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
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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
  }

  if (a2)
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

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
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

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
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
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
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
        v21 = CPRecordStoreGetContext();
        if (v21)
        {
          os_unfair_lock_assert_owner(v21 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v23 = CPRecordStoreGetContext();
        if (v23)
        {
          os_unfair_lock_assert_owner(v23 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v24 = CPRecordStoreGetContext();
        if (v24)
        {
          os_unfair_lock_assert_owner(v24 + 20);
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
        v25 = CPRecordStoreGetContext();
        if (v25)
        {
          os_unfair_lock_assert_owner(v25 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v26 = CPRecordStoreGetContext();
        if (v26)
        {
          os_unfair_lock_assert_owner(v26 + 20);
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
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v28 = CPRecordStoreGetContext();
        if (v28)
        {
          os_unfair_lock_assert_owner(v28 + 20);
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
        v29 = CPRecordStoreGetContext();
        if (v29)
        {
          os_unfair_lock_assert_owner(v29 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v30 = CPRecordStoreGetContext();
        if (v30)
        {
          os_unfair_lock_assert_owner(v30 + 20);
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
        v31 = CPRecordStoreGetContext();
        if (v31)
        {
          os_unfair_lock_assert_owner(v31 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v32 = CPRecordStoreGetContext();
        if (v32)
        {
          os_unfair_lock_assert_owner(v32 + 20);
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
        v33 = CPRecordStoreGetContext();
        if (v33)
        {
          os_unfair_lock_assert_owner(v33 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v34 = CPRecordStoreGetContext();
        if (v34)
        {
          os_unfair_lock_assert_owner(v34 + 20);
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
        v35 = CPRecordStoreGetContext();
        if (v35)
        {
          os_unfair_lock_assert_owner(v35 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v36 = CPRecordStoreGetContext();
        if (v36)
        {
          os_unfair_lock_assert_owner(v36 + 20);
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
        v37 = CPRecordStoreGetContext();
        if (v37)
        {
          os_unfair_lock_assert_owner(v37 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v38 = CPRecordStoreGetContext();
        if (v38)
        {
          os_unfair_lock_assert_owner(v38 + 20);
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
        v39 = CPRecordStoreGetContext();
        if (v39)
        {
          os_unfair_lock_assert_owner(v39 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  return v4;
}

uint64_t _CalInvalidateCalendarsForStoreId(uint64_t a1)
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

  return CPRecordStoreInvalidateCachedInstancesOfClass();
}

BOOL _CalCalendarInvalidateWithStoreId(uint64_t a1, int a2)
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
  if (Property == a2 && (CPRecordGetID() & 0x80000000) == 0)
  {
    Store = CPRecordGetStore();
    _CalInvalidateCalendarItemsForCalendarId(Store);
    _CalInvalidateShareesWithOwnerID(Store);
    _CalInvalidateNotificationsWithCalendarID(Store);
  }

  return Property == a2;
}

BOOL _CalCalendarGetBoolConstraintValueForStore(uint64_t a1, const void *a2)
{
  v3 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (!v3)
  {
    return 0;
  }

  v5 = TypeID;
  if (CFGetTypeID(v3) == TypeID && (Value = CFDictionaryGetValue(v3, @"CalCalendar")) != 0 && (v7 = Value, CFGetTypeID(Value) == v5) && (v8 = CFDictionaryGetValue(v7, a2)) != 0)
  {
    v9 = v8;
    CFRetain(v8);
    CFRelease(v3);
    v10 = CFGetTypeID(v9);
    v11 = v10 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
    v3 = v9;
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v3);
  return v11;
}

BOOL CalCalendarGetCalendarSupportsExactlyOneEntityTypeInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalCalendarGetBoolConstraintValueForStore(a1, @"SupportsExactlyOneEntityType");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL _CalCalendarIsEffectivelyReadOnly(uint64_t a1)
{
  v2 = 1;
  if (!_CalCalendarGetFlag(a1, 1) && !_CalCalendarGetFlag(a1, 8))
  {
    Store = _CalCalendarGetStore(a1);
    return Store && !_CalStoreIsWritable(Store);
  }

  return v2;
}

uint64_t _CalCalendarGetSharingInvitationResponse(uint64_t a1)
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

const void *CalDatabaseCopyCalendarWithUID(os_unfair_lock_s *a1)
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

  InstanceOfClassWithUID = CPRecordStoreGetInstanceOfClassWithUID();
  v6 = InstanceOfClassWithUID;
  if (InstanceOfClassWithUID)
  {
    CFRetain(InstanceOfClassWithUID);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

uint64_t _CalCalendarCopyUUID(uint64_t a1)
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

uint64_t CalCalendarCopyUUID(uint64_t a1)
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

uint64_t _CalCalendarSetUUID(uint64_t a1)
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

void CalCalendarSetUUID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarSetUUID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

__CFArray *_CalDatabaseCopyCalendarsWithUIDs(os_unfair_lock_s *a1, const __CFArray *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, 0);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      v9 = CalDatabaseCopyCalendarWithUID(a1);
      if (v9)
      {
        v10 = v9;
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v10);
      }
    }
  }

  return Mutable;
}

CFURLRef CalCalendarCopyURI(uint64_t a1)
{
  v1 = CalCalendarCopyUUID(a1);
  if (v1)
  {
    v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"/?&:$+, =@"}];;
    v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
    v4 = CFStringCreateWithFormat(0, 0, @"x-apple-calendar://%@", v3);
    if (v4)
    {
      v5 = v4;
      v6 = CFURLCreateWithString(0, v4, 0);
      CFRelease(v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

const void *CalDatabaseCopyDefaultLocalCalendar(uint64_t a1)
{
  if (*(a1 + 362))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 80));
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  InstanceOfClassWithUID = CPRecordStoreGetInstanceOfClassWithUID();
  if (InstanceOfClassWithUID)
  {
    v1 = InstanceOfClassWithUID;
  }

  else
  {
    v1 = _CalDatabaseGetRecordStore(a1);
    if (!v1)
    {
      goto LABEL_12;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    v1 = Database;
    if (!Database)
    {
      goto LABEL_12;
    }

    if (CDBLockingAssertionsEnabled == 1)
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

    v11 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    if (!v11)
    {
      v1 = 0;
      goto LABEL_12;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __CalDatabaseCopyDefaultLocalCalendar_block_invoke;
    v14[3] = &__block_descriptor_40_e5_v8__0l;
    v14[4] = v11;
    _CalDatabaseLockForWriteTransaction(a1, v14);
    v12 = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v12)
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }

    v1 = CPRecordStoreGetInstanceOfClassWithUID();
    if (!v1)
    {
      goto LABEL_12;
    }
  }

  CFRetain(v1);
LABEL_12:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v1;
}

const void *CalDatabaseCopyNextAssignableColor(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  AssignableColor = _CalCalendarCopyNextAssignableColor(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return AssignableColor;
}

void *CalDatabaseCopyFirstReadWriteCalendarThatSupportsEntityType(void *a1, int a2, uint64_t a3)
{
  v6 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions(a1, a3, 11);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  v9 = CalDatabaseGetPreferences(a1);
  v10 = [v9 get_defaultCalendarDatabaseID];
  if (v10 == CalDatabaseGetAuxilliaryDatabaseID(a1))
  {
    v11 = [v9 get_defaultCalendarStoreUID];
  }

  else
  {
    v11 = -1;
  }

  if (Count < 1)
  {
    goto LABEL_20;
  }

  v25 = a1;
  v26 = a3;
  v27 = v9;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v13);
    if (CalCalendarCanContainEntityTypeAndStoreAllowsIt(ValueAtIndex, a2))
    {
      v17 = CalCalendarCopyStore(ValueAtIndex);
      if (v17)
      {
        v18 = v17;
        v19 = 2 * (CalStoreGetUID() == v11);
        CFRelease(v18);
      }

      else
      {
        v19 = 0;
      }

      if (CalCalendarGetSharingStatus(ValueAtIndex))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 + 1;
      }

      if (v20 > v15)
      {
        v15 = v20;
        v14 = ValueAtIndex;
      }
    }

    ++v13;
  }

  while (Count != v13);
  v9 = v27;
  if (v14)
  {
    v12 = CFRetain(v14);
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v25[37] get_defaultCalendarID];
    v23 = [v21 stringWithFormat:@"Old default (%@) not valid", v22];
    CalDatabaseSetDefaultCalendarForEntityType(v25, v12, a2, 1, v26, v23);
  }

  else
  {
LABEL_20:
    v12 = 0;
  }

  CFRelease(v7);

  return v12;
}

void CalDatabaseCreateWritableCalendarForEntityTypeInStoreIfNeeded(os_unfair_lock_s *a1, int a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions(a1, a3, 1);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    CFRelease(v7);
LABEL_10:
    v13 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = "reminders";
      if (a2 == 2)
      {
        v14 = "events";
      }

      v17 = 136315394;
      v18 = "void CalDatabaseCreateWritableCalendarForEntityTypeInStoreIfNeeded(CalDatabaseRef, CalEntityType, CalStoreRef)";
      v19 = 2080;
      v20 = v14;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_INFO, "%s: Failed to find a non-hidden calendar for %s. Making one", &v17, 0x16u);
    }

    CalendarForEntityType = CalDatabaseCreateCalendarForEntityType(a1, a2);
    CalCalendarSetTitle(CalendarForEntityType);
    CalStoreAddCalendar(a3, CalendarForEntityType);
    CFRelease(CalendarForEntityType);
    goto LABEL_15;
  }

  v9 = Count;
  v10 = 0;
  v11 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
    if (!CalCalendarGetFlag(ValueAtIndex, 2))
    {
      v11 += CalCalendarCanContainEntityType(ValueAtIndex, a2);
    }

    ++v10;
  }

  while (v9 != v10);
  CFRelease(v7);
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t CalCalendarCanContainEntityType(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  CanContainEntityType = _CalCalendarCanContainEntityType(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return CanContainEntityType;
}

uint64_t _CalDatabaseCreateLimitedAccessVirtualCalendar(uint64_t a1)
{
  v2 = CPRecordCreateWithRecordID();
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
  if (CDBLockingAssertionsEnabled == 1 && v3 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v3 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v3 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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
  }

  CPRecordInitializeProperty();
  LimitedAccessVirtualRecordIDForEntity = _CalDatbaseCreateLimitedAccessVirtualRecordIDForEntity(1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
    {
      if (CPRecordGetStore())
      {
        v21 = CPRecordStoreGetContext();
        if (v21)
        {
          os_unfair_lock_assert_owner(v21 + 20);
        }
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(LimitedAccessVirtualRecordIDForEntity);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v3)
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
  }

  Property = CPRecordGetProperty();
  LimitedAccessVirtualStore = _CalDatabaseGetLimitedAccessVirtualStore(a1);
  CalRelationSetAndLoadRawRelatedObject(Property, LimitedAccessVirtualStore);
  return v3;
}

uint64_t _CalDatabaseGetLimitedAccessVirtualCalendar(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    result = _CalDatabaseCreateLimitedAccessVirtualCalendar(a1);
    *(a1 + 48) = result;
  }

  return result;
}

const void *CalDatabaseCopyLimitedAccessVirtualCalendar(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  LimitedAccessVirtualCalendar = *(a1 + 48);
  if (LimitedAccessVirtualCalendar || (LimitedAccessVirtualCalendar = _CalDatabaseCreateLimitedAccessVirtualCalendar(a1), (*(a1 + 48) = LimitedAccessVirtualCalendar) != 0))
  {
    CFRetain(LimitedAccessVirtualCalendar);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return LimitedAccessVirtualCalendar;
}

BOOL CalCalendarIsEffectivelyReadOnly(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Only = _CalCalendarIsEffectivelyReadOnly(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Only;
}

void CalDatabaseSetDefaultCalendarForEntityType(const void *a1, void *a2, int a3, int a4, uint64_t a5, void *a6)
{
  v61 = *MEMORY[0x1E69E9840];
  v13 = a6;
  if (!a2)
  {
    v17 = CFRetain(a1);
    goto LABEL_8;
  }

  v14 = CalCalendarCopyStore(a2);
  if (!v14 || (v15 = v14, Type = CalStoreGetType(v14), CFRelease(v15), Type != 6))
  {
    v17 = CalCopyDatabaseForRecord();
LABEL_8:
    v18 = v17;
    if (a4)
    {
      v19 = CalDatabaseCopyDefaultSelectedCalendarForEntityTypeCore(v17, a3, a5, 0);
      if (v19)
      {
        CFRelease(v19);
LABEL_63:
        CFRelease(v18);
        goto LABEL_64;
      }
    }

    if (a5)
    {
      CalStoreSetDelegatedAccountDefaultCalendarForNewEvents(a5, a2);
      CalDatabaseSave(v18);
LABEL_62:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, kCalDefaultCalendarChangedNotification, 0, 0, 1u);
      goto LABEL_63;
    }

    os_unfair_lock_lock((v18 + 80));
    if (a2)
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

    v21 = CPRecordCopyProperty();
    v22 = v21;
    if (a3 != 2)
    {
      RecordStore = _CalDatabaseGetRecordStore(v18);
      if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
      {
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }

      Database = CPRecordStoreGetDatabase();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (Database)
        {
          if (*(Database + 104))
          {
            v29 = CPRecordStoreGetContext();
            if (v29)
            {
              os_unfair_lock_assert_owner(v29 + 20);
            }
          }
        }
      }

      v30 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
      if (!v30)
      {
        v33 = 1;
        goto LABEL_59;
      }

      v31 = v30;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __CalDatabaseSetDefaultCalendarForEntityType_block_invoke;
      v42[3] = &unk_1E868C2A8;
      v44 = a2;
      v45 = v30;
      v46 = @"DefaultTaskCalendarID";
      v43 = v22;
      v47 = @"DefaultTaskCalendarStoreUID";
      v48 = @"DefaultTaskCalendarName";
      _CalDatabaseLockForWriteTransaction(v18, v42);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v31)
        {
          if (*(*v31 + 104))
          {
            v32 = CPRecordStoreGetContext();
            if (v32)
            {
              os_unfair_lock_assert_owner(v32 + 20);
            }
          }
        }
      }

      CPSqliteDatabaseReleaseSqliteConnection();
      v33 = 1;
      a2 = v43;
LABEL_58:

LABEL_59:
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner((v18 + 80));
      }

      os_unfair_lock_unlock((v18 + 80));

      if (!v33)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (a2)
    {
      ID = CPRecordGetID();
      StoreId = _CalCalendarGetStoreId(a2);
      a2 = _CalCalendarGetTitle(a2);
      v24 = *(v18 + 172);
      if (v22)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 = 0;
      StoreId = 0;
      ID = 0;
      if (v21)
      {
        goto LABEL_42;
      }
    }

    Type = [*(v18 + 296) get_defaultCalendarID];
    if (!Type)
    {
      v34 = 0;
LABEL_46:
      if ([*(v18 + 296) get_defaultCalendarStoreUID] == StoreId)
      {
        v35 = [*(v18 + 296) get_defaultCalendarDatabaseID] != v24;
        if ((v34 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v35 = 1;
        if (!v34)
        {
LABEL_49:
          if (v22)
          {
            if (v35)
            {
LABEL_51:
              v36 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67110402;
                v50 = ID;
                v51 = 2112;
                v52 = v22;
                v53 = 2112;
                v54 = a2;
                v55 = 1024;
                v56 = StoreId;
                v57 = 1024;
                v58 = v24;
                v59 = 2114;
                v60 = v13;
                _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_DEFAULT, "Setting default calendar to %i (%@, %@ in store %i db %i). Reason: %{public}@", buf, 0x32u);
              }

              [*(v18 + 296) set_defaultCalendarID:v22];
              [*(v18 + 296) set_defaultCalendarStoreUID:StoreId];
              [*(v18 + 296) set_defaultCalendarDatabaseID:v24];
              [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
              [*(v18 + 296) set_defaultCalendarChangedTimestamp:v37];
              [*(v18 + 296) set_defaultCalendarChangedReason:v13];
              v33 = 1;
              goto LABEL_58;
            }
          }

          else
          {

            if (v35)
            {
              goto LABEL_51;
            }
          }

          v38 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_INFO, "Ignoring request to set default calendar as the new value is the same as the old value", buf, 2u);
          }

          v33 = 0;
          goto LABEL_58;
        }
      }

LABEL_48:

      goto LABEL_49;
    }

LABEL_42:
    v7 = [*(v18 + 296) get_defaultCalendarID];
    v34 = 1;
    v35 = 1;
    if (![v22 isEqual:v7])
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v16 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Can't set the default calendar to an integration calendar.", buf, 2u);
  }

LABEL_64:

  v40 = *MEMORY[0x1E69E9840];
}

void CalDatabaseEnsureDefaultCalendarForNewTasksExists(os_unfair_lock_s *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = CalDatabaseCopyDefaultCalendarForNewTasks(a1);
  if (!v2)
  {
    if (!_CalDatabaseGetRecordStore(a1))
    {
      goto LABEL_34;
    }

    if (CDBLockingAssertionsEnabled == 1)
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
      goto LABEL_34;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
        }
      }
    }

    v7 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    if (!v7)
    {
      goto LABEL_34;
    }

    v8 = v7;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        if (*(*v7 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    CPSqliteConnectionBeginTransactionType();
    v10 = CalDatabaseCopyDefaultSelectedCalendarForEntityTypeCore(a1, 3, 0, 0);
    if (v10)
    {
      v11 = v10;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v8)
        {
          if (*(*v8 + 104))
          {
            v12 = CPRecordStoreGetContext();
            if (v12)
            {
              os_unfair_lock_assert_owner(v12 + 20);
            }
          }
        }
      }

      CPSqliteConnectionRollback();
    }

    else
    {
      v15 = CalDatabaseCopyLocalStore(a1);
      if (!v15)
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v8)
          {
            if (*(*v8 + 104))
            {
              v18 = CPRecordStoreGetContext();
              if (v18)
              {
                os_unfair_lock_assert_owner(v18 + 20);
              }
            }
          }
        }

        CPSqliteConnectionRollback();
        goto LABEL_28;
      }

      v11 = v15;
      if (CalStoreAllowsTasks(v15))
      {
        v16 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          v19 = 136315138;
          v20 = "void CalDatabaseEnsureDefaultCalendarForNewTasksExists(CalDatabaseRef)";
          _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_INFO, "%s: Failed to get default calendar for reminders. Making one", &v19, 0xCu);
        }

        CalendarForEntityType = CalDatabaseCreateCalendarForEntityType(a1, 3);
        CalCalendarSetTitle(CalendarForEntityType);
        CalStoreAddCalendar(v11, CalendarForEntityType);
        CalDatabaseSave(a1);
        CalDatabaseSetDefaultCalendarForEntityType(a1, CalendarForEntityType, 3, 0, 0, @"vestigial");
        CFRelease(CalendarForEntityType);
      }
    }

    CFRelease(v11);
LABEL_28:
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v8)
      {
        if (*(*v8 + 104))
        {
          v13 = CPRecordStoreGetContext();
          if (v13)
          {
            os_unfair_lock_assert_owner(v13 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
LABEL_34:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *MEMORY[0x1E69E9840];

  CFRelease(v2);
}

CFTypeRef CalDatabaseCopyDefaultCalendarForNewTasks(void *a1)
{
  v2 = CalDatabaseCopyDefaultSelectedCalendarForEntityTypeCore(a1, 3, 0, 0);
  if (v2)
  {
    return v2;
  }

  v3 = CalDatabaseCopyDefaultCalendarForNewEventsInStore(a1, 0);
  if (v3)
  {
    v4 = v3;
    if (CalCalendarCanContainEntityTypeAndStoreAllowsIt(v3, 3))
    {
      return v4;
    }

    CFRelease(v4);
  }

  v2 = CalDatabaseCopyFirstReadWriteCalendarThatSupportsEntityType(a1, 3, 0);
  if (v2)
  {
    return v2;
  }

  if (!_CalDatabaseGetRecordStore(a1))
  {
    return 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
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
    return 0;
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

  v9 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v9)
    {
      if (*(*v9 + 104))
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }
  }

  CPSqliteConnectionBeginTransactionType();
  v4 = CalDatabaseCopyDefaultSelectedCalendarForEntityTypeCore(a1, 3, 0, 0);
  if (CDBLockingAssertionsEnabled == 1)
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

  CPSqliteConnectionRollback();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v10)
    {
      if (*(*v10 + 104))
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }
  }

  CPSqliteDatabaseReleaseSqliteConnection();
  return v4;
}

void CalCalendarSetExternalID(uint64_t a1)
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

uint64_t CalCalendarCopyExternalID(uint64_t a1)
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

CFTypeRef CalDatabaseCopyCalendarWithExternalIDInStore(const void *a1, const __CFString *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a3 ? CalStoreCopyCalendars(a3) : CalDatabaseCopyOfAllCalendarsInStoreWithOptions(a1, 0, 0);
  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      v10 = CalCalendarCopyExternalID(ValueAtIndex);
      if (v10)
      {
        v11 = v10;
        if (CFStringCompare(v10, a2, 0))
        {
          CFRelease(v11);
        }

        else
        {
          v12 = CFRetain(ValueAtIndex);
          CFRelease(v11);
          if (v12)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  v12 = 0;
LABEL_14:
  CFRelease(v5);
  return v12;
}

void CalCalendarSetExternalModificationTag(uint64_t a1)
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

uint64_t CalCalendarCopyExternalModificationTag(uint64_t a1)
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

void CalCalendarSetExternalIdentificationTag(uint64_t a1)
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

uint64_t CalCalendarCopyExternalIdentificationTag(uint64_t a1)
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

void CalCalendarSetSyncToken(uint64_t a1)
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

uint64_t CalCalendarCopySyncToken(uint64_t a1)
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

void CalCalendarSetExternalRepresentation(uint64_t a1)
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

uint64_t CalCalendarCopyExternalRepresentation(uint64_t a1)
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

void CalAddCalendarToStore(const void *a1, uint64_t a2)
{
  v4 = CalCopyDatabaseForRecord();
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(v4 + 20);
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

    CPRecordGetID();
    CPRecordSetProperty();
    if (CPRecordGetID() == -1 && _CalCalendarGetBoolConstraintValueForStore(a2, @"SupportsExactlyOneEntityType"))
    {
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

      if (CPRecordGetProperty())
      {
        _CalDatabaseAddEntity(v5, a1);
      }

      else
      {
        CFLog();
      }
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v5 + 20);
    }

    os_unfair_lock_unlock(v5 + 20);

    CFRelease(v5);
  }
}

uint64_t _CalRemoveCalendar(void *a1)
{
  Store = _CalCalendarGetStore(a1);
  if ((_CalCalendarCanContainEntityType(a1, 2) & 1) == 0 && (CalShouldSyncReminders() & 1) == 0)
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

    CPRecordInitializeProperty();
  }

  if (Store)
  {

    return _CalStoreRemoveCalendar(Store, a1);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

void CalRemoveCalendar(void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveCalendar(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalRemoveCalendarIfEmpty(void *a1)
{
  v2 = CalCopyDatabaseForRecord();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  os_unfair_lock_lock(v2 + 20);
  HasCalendarItemsWithEntityType = _CalDatabaseCalendarHasCalendarItemsWithEntityType(v3, a1, 101);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  if (!HasCalendarItemsWithEntityType)
  {
    CalRemoveCalendar(a1);
  }

  v5 = !HasCalendarItemsWithEntityType;
  CFRelease(v3);
  return v5;
}

void CalCalendarRemoveAllRecords(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CalCopyDatabaseForRecord();
  if (v2)
  {
    v3 = v2;
    os_unfair_lock_lock(v2 + 20);
    RecordStore = _CalDatabaseGetRecordStore(v3);
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
      v7 = Property;
      v21.length = CFArrayGetCount(Property);
      v21.location = 0;
      CFArrayApplyFunction(v7, v21, _CalCalendarRemoveAddedSubentity, RecordStore);
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

      CPRecordSetProperty();
    }

    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = _CalDatabaseCopyCalendarItemsWithCalendar(v3);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          _CalRemoveEvent(*(*(&v15 + 1) + 8 * v13++), 0, 0);
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v3 + 20);
    }

    os_unfair_lock_unlock(v3 + 20);
    CFRelease(v3);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t _CalCalendarSetStoreId(uint64_t a1, int a2)
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
  if (result != a2)
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

uint64_t _CalCalendarGetTitle(uint64_t a1)
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

uint64_t CalCalendarCopyUnlocalizedTitle(uint64_t a1)
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

uint64_t CalCalendarCopyTitle(uint64_t a1)
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
  Store = _CalCalendarGetStore(a1);
  Type = _CalStoreGetType(Store);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  v7 = MEMORY[0x1E6992FD0];
  Flag = CalCalendarGetFlag(a1, 0x40000);
  IsBirthdayCalendar = CalCalendarIsBirthdayCalendar();
  v10 = [v7 localizedTitleForTitle:v4 isSuggestedEventCalendar:Flag isBirthdayCalendar:IsBirthdayCalendar allowsReminders:CalCalendarCanContainEntityType(a1 isIntegrationCalendar:{3), Type == 6}];

  return v10;
}

void CalCalendarSetLastSyncTitle(uint64_t a1)
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

uint64_t CalCalendarCopyLastSyncTitle(uint64_t a1)
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

uint64_t _CalCalendarCopyTitle(uint64_t a1)
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

__CFString *CalCalendarCopyDomainName(uint64_t a1)
{
  v1 = CalCalendarCopyOwnerIdentityEmail(a1);
  v2 = v1;
  v3 = @"other";
  if (v1)
  {
    if ([v1 rangeOfString:@"@gmail."] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v2 rangeOfString:@"@hotmail."] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v2 rangeOfString:@"@icloud."] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v2 rangeOfString:@"@yahoo."] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v2 rangeOfString:@"@live."] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v3 = @"live";
            }
          }

          else
          {
            v3 = @"yahoo";
          }
        }

        else
        {
          v3 = @"icloud";
        }
      }

      else
      {
        v3 = @"hotmail";
      }
    }

    else
    {
      v3 = @"gmail";
    }
  }

  return v3;
}

uint64_t CalCalendarCopyOwnerIdentityEmail(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopyOwnerIdentityEmail(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

BOOL CalCalendarEmailIsUsedForOtherSource(uint64_t a1, uint64_t a2)
{
  v4 = CalCalendarCopyOwnerIdentityEmail(a1);
  if (!v4)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    v5 = CalStoreCopyUUID(a2);
    if (!v5)
    {
LABEL_18:
      v14 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v6 = CalCalendarCopyStore(a1);
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = v6;
    v5 = CalStoreCopyUUID(v6);
    CFRelease(v7);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  v8 = CalCopyDatabaseForRecord();
  if (v8 && (v9 = v8, v10 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions(v8, 0, 11), CFRelease(v9), v10))
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      v14 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
        v16 = CalCalendarCopyStore(ValueAtIndex);
        if (v16)
        {
          v17 = v16;
          v18 = CalStoreCopyUUID(v16);
          CFRelease(v17);
          if (v18)
          {
            if (CFStringCompare(v18, v5, 0))
            {
              v19 = CalCalendarCopyOwnerIdentityEmail(ValueAtIndex);
              v20 = [v19 isEqualToString:v4];

              if (v20)
              {
                goto LABEL_21;
              }
            }

            CFRelease(v18);
          }
        }

        v14 = v12 > ++v13;
        if (v12 == v13)
        {
          goto LABEL_21;
        }
      }
    }

    v14 = 0;
LABEL_21:
    CFRelease(v10);
  }

  else
  {
    v14 = 0;
  }

  CFRelease(v5);
LABEL_23:

  return v14;
}

void CalCalendarSetFlag(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarSetFlag(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarSetRefreshDate(uint64_t a1)
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

CFTypeRef CalCalendarCopyRefreshDate(uint64_t a1)
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

void CalCalendarSetMaxAttendees(uint64_t a1)
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

uint64_t CalCalendarGetMaxAttendees(uint64_t a1)
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

void CalCalendarSetSharingStatus(uint64_t a1)
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

uint64_t CalCalendarGetSharingStatus(uint64_t a1)
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

void CalCalendarSetSharedOwnerName(uint64_t a1)
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

uint64_t CalCalendarCopySharedOwnerName(uint64_t a1)
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

void CalCalendarSetSharedOwnerAddress(uint64_t a1)
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

uint64_t CalCalendarCopySharedOwnerAddress(uint64_t a1)
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

void CalCalendarSetCachedExternalInfo(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v13 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v13];
    v5 = v13;
    if (!v4)
    {
      v6 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Couldn't serialize external info: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

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

  v9 = CPRecordGetProperty();
  v10 = v9;
  if (v4 | v9 && ([v9 isEqual:v4] & 1) == 0)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
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
    }

    CPRecordSetProperty();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);

  v12 = *MEMORY[0x1E69E9840];
}

id CalCalendarCopyCachedExternalInfo(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
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
  if (v4)
  {
    v15 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v15];
    v6 = v15;
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v5;
LABEL_18:

        goto LABEL_19;
      }

      v9 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = objc_opt_class();
        *buf = 138543362;
        v17 = v11;
        v12 = v11;
        _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "Deserialized data wasn't a dictionary (it was a %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v8 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_ERROR, "Error deserializing cached external store info: %@", buf, 0xCu);
      }
    }

    v7 = 0;
    goto LABEL_18;
  }

  v7 = 0;
LABEL_19:

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

void CalCalendarSetSharedOwnerAddresses(uint64_t a1, const void *a2)
{
  v4 = CalCalendarCopyCachedExternalInfo(a1);
  v5 = *MEMORY[0x1E695E480];
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, v4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v7 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"sharedOwnerAddresses", a2);
  CalCalendarSetCachedExternalInfo(a1, v7);
  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(v7);
}

uint64_t CalCalendarCopySharedOwnerAddresses(uint64_t a1)
{
  v1 = CalCalendarCopyCachedExternalInfo(a1);
  v2 = [v1 objectForKeyedSubscript:@"sharedOwnerAddresses"];

  return v2;
}

void CalCalendarSetSharingInvitationResponse(uint64_t a1)
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

uint64_t CalCalendarGetSharingInvitationResponse(uint64_t a1)
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

void CalCalendarSetPublishedURL(uint64_t a1, const __CFURL *a2)
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
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalCalendarCopyPublishedURL(uint64_t a1)
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

uint64_t _CalCalendarSetFlag(uint64_t a1)
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

void CalCalendarSetIsPublished(uint64_t a1)
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

BOOL CalCalendarGetIsPublished(uint64_t a1)
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
  return Property != 0;
}

uint64_t CalCalendarGetInvitationStatus(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  InvitationStatus = _CalCalendarGetInvitationStatus(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return InvitationStatus;
}

uint64_t _CalCalendarGetInvitationStatus(uint64_t a1)
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

void CalCalendarSetInvitationStatus(uint64_t a1)
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

void CalCalendarSetNeedsNotification(uint64_t a1)
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

BOOL CalCalendarHasBeenAlerted(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  InvitationStatus = _CalCalendarGetInvitationStatus(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return InvitationStatus != 3;
}

uint64_t CalCalendarCopyNotes(uint64_t a1)
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

void CalCalendarSetNotes(uint64_t a1)
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

void CalCalendarSetBulkRequests(uint64_t a1, const void *a2)
{
  if (a2)
  {
    Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  }

  else
  {
    Data = 0;
  }

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
  if (Data)
  {

    CFRelease(Data);
  }
}

CFPropertyListRef CalCalendarCopyBulkRequests(uint64_t a1)
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
    v6 = CFPropertyListCreateWithData(0, v4, 0, 0, 0);
    CFRelease(v4);
    return v6;
  }

  return result;
}

void CalCalendarSetSubCalAccountID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarSetSubCalAccountID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarSetSubCalAccountID(uint64_t a1)
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

uint64_t CalCalendarCopySubCalAccountID(uint64_t a1)
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

void CalCalendarSetPubCalAccountID(uint64_t a1)
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

uint64_t CalCalendarCopyPubCalAccountID(uint64_t a1)
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

void CalCalendarSetPushKey(uint64_t a1)
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

uint64_t CalCalendarCopyPushKey(uint64_t a1)
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

BOOL CalCalendarGetColorComponentsPossiblyForDisplay(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, char a5)
{
  result = 0;
  v17 = *MEMORY[0x1E69E9840];
  if (a2 && a3 && a4)
  {
    *a4 = -1;
    *a3 = -1;
    *a2 = -1;
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
    if (a5)
    {
      goto LABEL_27;
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

    if (!CPRecordGetProperty())
    {
LABEL_27:
      if (a1)
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

      Property = CPRecordGetProperty();
      if (Property)
      {
        CFStringGetCString(Property, buffer, 100, 0x8000100u);
        sscanf(buffer, "#%02X%02X%02X", a2, a3, a4);
      }
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
    result = *a2 != -1 && *a3 != -1 && *a4 != -1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void CalCalendarSetColorComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if ((a3 | a2 | a4) > 0xFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = CFStringCreateWithFormat(0, 0, @"#%02X%02X%02X", a2, a3, a4);
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
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
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
  }

  CPRecordSetProperty();
  if (v9)
  {
    CFRelease(v9);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarSetColorComponentsForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if ((a3 | a2 | a4) > 0xFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = CFStringCreateWithFormat(0, 0, @"#%02X%02X%02X", a2, a3, a4);
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
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
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
  }

  CPRecordSetProperty();
  if (v9)
  {
    CFRelease(v9);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const void *CalCalendarCopySymbolicColorName(uint64_t a1)
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

void CalCalendarSetSymbolicColorName(uint64_t a1)
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

const void *CalCalendarGetColorString(uint64_t a1)
{
  v1 = CalCalendarCopyColorStringPossiblyForDisplay(a1, 0);
  v2 = v1;
  if (v1)
  {
    CFAutorelease(v1);
  }

  return v2;
}

const void *CalCalendarCopyColorStringPossiblyForDisplay(uint64_t a1, char a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    goto LABEL_21;
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

  if (!CPRecordGetProperty())
  {
LABEL_21:
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

    Property = CPRecordGetProperty();
    v6 = Property;
    if (Property)
    {
      CFRetain(Property);
    }
  }

  else
  {
    v6 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v6;
}

void CalCalendarSetColorStringInternal(uint64_t a1, const __CFString *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    CStringFromCFString = CalCreateCStringFromCFString(a2);
    if (CStringFromCFString)
    {
      v6 = CStringFromCFString;
      v10 = 0;
      v9 = 0;
      sscanf(CStringFromCFString, "#%02X%02X%02X", &v10 + 4, &v10, &v9);
      free(v6);
    }
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const void *CalCalendarGetColorStringForDisplay(uint64_t a1)
{
  v1 = CalCalendarCopyColorStringPossiblyForDisplay(a1, 1);
  v2 = v1;
  if (v1)
  {
    CFAutorelease(v1);
  }

  return v2;
}

uint64_t CalCalendarGetDisplayOrder(uint64_t a1)
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

uint64_t _CalCalendarGetDisplayOrder(uint64_t a1)
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

void CalCalendarSetDisplayOrder(uint64_t a1)
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

void CalCalendarSetType(uint64_t a1)
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

uint64_t _CalCalendarCopyType(uint64_t a1)
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

uint64_t CalCalendarCopyType(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopyType(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarSetDigest(uint64_t a1)
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

uint64_t CalCalendarCopyDigest(uint64_t a1)
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

void CalCalendarSetSubscriptionID(uint64_t a1)
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

uint64_t CalCalendarCopySubscriptionID(uint64_t a1)
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

void CalCalendarSetSubscriptionURL(uint64_t a1)
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

uint64_t CalCalendarCopySubscriptionURL(uint64_t a1)
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

void CalCalendarSetRefreshInterval(uint64_t a1)
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

uint64_t CalCalendarGetRefreshInterval(uint64_t a1)
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

uint64_t CalCalendarCopyLocale(uint64_t a1)
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

void CalCalendarSetLocale(uint64_t a1)
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

const __CFString *CalCalendarCopyLanguage(uint64_t a1)
{
  v1 = CalCalendarCopyLocale(a1);
  if (v1)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v1, @"-");
    CFRelease(v1);
    if ([(__CFArray *)ArrayBySeparatingStrings count])
    {
      v1 = [(__CFArray *)ArrayBySeparatingStrings firstObject];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

const __CFString *CalCalendarCopyRegion(uint64_t a1)
{
  v1 = CalCalendarCopyLocale(a1);
  if (v1)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v1, @"-");
    CFRelease(v1);
    v1 = 0;
    if ([(__CFArray *)ArrayBySeparatingStrings count]>= 2)
    {
      v1 = [(__CFArray *)ArrayBySeparatingStrings objectAtIndex:1];
    }
  }

  return v1;
}

uint64_t CalCalendarMigrateSubscribedCalendarToStore(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  DatabaseForRecord = CalGetDatabaseForRecord();
  os_unfair_lock_lock((DatabaseForRecord + 80));
  v5 = _CalDatabaseCopyCalendar(DatabaseForRecord, a1);
  _CalStoreAddCalendar(a2, v5);
  _CalCalendarSetSubCalAccountID(v5);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = _CalDatabaseCopyCalendarItemsWithCalendar(DatabaseForRecord);
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _CalCalendarAddCalendarItem(v5, *(*(&v44 + 1) + 8 * i));
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v8);
  }

  RecordStore = _CalDatabaseGetRecordStore(DatabaseForRecord);
  if (__CalDatabaseBeginWriteTransaction(DatabaseForRecord, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalCalendar.m:4317"))
  {
    v34 = a1;
    if (CDBLockingAssertionsEnabled)
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

    CPRecordProcessAddImmediate();
    ID = CPRecordGetID();
    if (ID <= 0)
    {
      v13 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "New calendar not assigned an ID when migrating calendar. This won't end well!", buf, 2u);
      }
    }

    _CalEventOccurrenceCacheBeginTrackingUpdates(*(DatabaseForRecord + 32));
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v39 + 1) + 8 * j);
          if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
          {
            v21 = CPRecordStoreGetContext();
            if (v21)
            {
              os_unfair_lock_assert_owner(v21 + 20);
            }
          }

          CPRecordProcessChangesImmediate();
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v16);
    }

    _CalEventOccurrenceCacheStopTrackingUpdates(*(DatabaseForRecord + 32));
    __CalDatabaseCommitTransaction(DatabaseForRecord, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalCalendar.m:4340");
    v22 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:DatabaseForRecord];
    v23 = [v14 count] + 1;
    if (v23 < 0x201)
    {
      v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v23];
      [v25 addObject:_CalCalendarGetRecordID(v5)];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v26 = v14;
      v27 = [v26 countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v36;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v36 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [v25 addObject:_CalCalendarItemGetRecordID(*(*(&v35 + 1) + 8 * k))];
          }

          v28 = [v26 countByEnumeratingWithState:&v35 objects:v48 count:16];
        }

        while (v28);
      }

      [v22 addChangeset:v25 deletes:MEMORY[0x1E695E0F0] clientID:0 changeType:0];
    }

    else
    {
      [v22 clearAllChangesets];
    }

    _CalRemoveCalendar(v34);
    CalDatabaseSaveWithOptions(DatabaseForRecord, 2);
    CFRelease(v5);

    v24 = ID;
  }

  else
  {
    if (CDBLockingAssertionsEnabled)
    {
      os_unfair_lock_assert_owner((DatabaseForRecord + 80));
    }

    os_unfair_lock_unlock((DatabaseForRecord + 80));
    CFRelease(v5);
    v24 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v24;
}

void _CalCalendarAddCalendarItem(const void *a1, const void *a2)
{
  _CalCalendarItemSetCalendar(a2, a1);
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
  if (!Property)
  {
    Property = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
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

    CPRecordSetProperty();
    CFRelease(Property);
  }

  CFArrayAppendValue(Property, a2);
}

void CalCalendarAddCalendarItem(const void *a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarAddCalendarItem(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarAddCalendarItemAndDetached(const void *a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarAddCalendarItem(a1, a2);
  if (_CalEntityGetType(a2) == 2)
  {
    v5 = _CalEventCopyDetachedEvents(a2);
    if (v5)
    {
      v6 = v5;
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
          _CalCalendarAddCalendarItem(a1, ValueAtIndex);
        }
      }

      CFRelease(v6);
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarCopyEvents()
{
  v0 = CalCopyDatabaseForRecord();
  v1 = CalDatabaseCopyCalendarItemsWithCalendar(v0);
  CFRelease(v0);
  return v1;
}

BOOL CalCalendarHasEvents(uint64_t a1)
{
  v2 = CalCopyDatabaseForRecord();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  os_unfair_lock_lock(v2 + 20);
  HasEvents = _CalDatabaseCalendarHasEvents(v3, a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  return HasEvents;
}

BOOL CalCalendarHasEventsWithRoomAsAttendee(uint64_t a1)
{
  v2 = CalCopyDatabaseForRecord();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  os_unfair_lock_lock(v2 + 20);
  HasEventsWithAttendeeAsAttendeeType = _CalDatabaseCalendarHasEventsWithAttendeeAsAttendeeType(v3, a1, 2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  return HasEventsWithAttendeeAsAttendeeType;
}

BOOL CalCalendarHasTasks(uint64_t a1)
{
  v2 = CalCopyDatabaseForRecord();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  os_unfair_lock_lock(v2 + 20);
  HasTasks = _CalDatabaseCalendarHasTasks(v3, a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  return HasTasks;
}

void CalCalendarSetCanContainEntityType(uint64_t a1, unsigned int a2)
{
  if (a2 <= 3 && a2 != 1)
  {
    v4 = CalCopyDatabaseForRecord();
    if (v4)
    {
      v5 = v4;
      os_unfair_lock_lock(v4 + 20);
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
      if (a2)
      {
        v8 = 1 << a2;
      }

      else
      {
        v8 = 0;
      }

      if (v8 != Property)
      {
        if (a1)
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

        CPRecordSetProperty();
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(v5 + 20);
      }

      os_unfair_lock_unlock(v5 + 20);

      CFRelease(v5);
    }
  }
}

os_unfair_lock_s *CalCalendarCopyEventsWithRespondedExternalStatus()
{
  result = CalCopyDatabaseForRecord();
  if (result)
  {
    v1 = result;
    UID = CalCalendarGetUID();
    v3 = CalDatabaseCopyOfAllEventsWithRespondedExternalStatusAndCalendarUID(v1, UID);
    CFRelease(v1);
    return v3;
  }

  return result;
}

os_unfair_lock_s *CalCalendarCopyEventsWithExternalTrackingStatus()
{
  result = CalCopyDatabaseForRecord();
  if (result)
  {
    v1 = result;
    UID = CalCalendarGetUID();
    v3 = CalDatabaseCopyOfAllEventsWithExternalTrackingStatusAndCalendarUID(v1, UID);
    CFRelease(v1);
    return v3;
  }

  return result;
}

uint64_t CalCalendarCopyTasks()
{
  v0 = CalCopyDatabaseForRecord();
  v1 = CalDatabaseCopyCalendarItemsWithCalendar(v0);
  CFRelease(v0);
  return v1;
}

CFMutableArrayRef CalDatabaseCopyOfAllCalendarsWithStoreUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = CalDatabaseCopyStoreWithUID(a1);
  if (v2)
  {
    v3 = v2;
    v4 = CalStoreCopyCalendars(v2);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

CFIndex CalDatabaseGetCountOfCalendarsInStoreWithOptions(uint64_t a1, uint64_t a2, char a3)
{
  v3 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(a1, a2, a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  CFRelease(v4);
  return Count;
}

void *_CalCalendarSetError(uint64_t a1, const void *a2)
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

    return CalRelationSetRelatedObject(result, a2);
  }

  return result;
}

void CalCalendarSetError(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarSetError(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalCalendarCopyError(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Error = _CalCalendarGetError(a1);
  if (Error)
  {
    v4 = CFRetain(Error);
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

CFTypeRef CalCalendarHasErrorTypeAndCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CalCalendarCopyError(a1);
  if (result)
  {
    v6 = result;
    ErrorType = CalErrorGetErrorType(result);
    ErrorCode = CalErrorGetErrorCode(v6);
    CFRelease(v6);
    return (ErrorType == a2 && ErrorCode == a3);
  }

  return result;
}

uint64_t _CalCalendarSetImage(void *a1, uint64_t a2)
{
  result = _CalCalendarGetImage(a1);
  if (result != a2)
  {
    if (result)
    {
      result = _CalImageRemoveCalendar(result, a1);
    }

    if (a2)
    {

      return _CalImageAddCalendar(a2, a1);
    }
  }

  return result;
}

CFTypeRef _CalCalendarGetImage(uint64_t a1)
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

void CalCalendarSetImage(void *a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarSetImage(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalCalendarCopyImage(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Image = _CalCalendarGetImage(a1);
  if (Image)
  {
    v4 = CFRetain(Image);
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

void CalCalendarAddSharee(uint64_t a1, void *a2)
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
    CalToManyRelationAddObject(Property, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef CalCalendarCopySharees(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopySharees(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalCalendarRemoveSharee(uint64_t a1, void *a2)
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

    return CalToManyRelationRemoveObject(result, a2);
  }

  return result;
}

void CalCalendarRemoveSharee(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarRemoveSharee(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarAddNotification(uint64_t a1, void *a2)
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
    CalToManyRelationAddObject(Property, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef CalCalendarCopyNotifications(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopyNotifications(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarRemoveNotification(uint64_t a1, void *a2)
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
    CalToManyRelationRemoveObject(Property, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef CalCalendarCopyResourceChanges(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopyResourceChanges(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalCalendarCopySelfIdentityDisplayName(uint64_t a1)
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

uint64_t CalCalendarCopySelfIdentityDisplayName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopySelfIdentityDisplayName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarSetSelfIdentityDisplayName(uint64_t a1)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarCopySelfIdentityEmail(uint64_t a1)
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

uint64_t CalCalendarCopySelfIdentityEmail(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopySelfIdentityEmail(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarSetSelfIdentityEmail(uint64_t a1)
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

uint64_t _CalCalendarCopySelfIdentityPhoneNumber(uint64_t a1)
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

uint64_t CalCalendarCopySelfIdentityPhoneNumber(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopySelfIdentityPhoneNumber(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarSetSelfIdentityPhoneNumber(uint64_t a1)
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

const __CFString *_CalCalendarCopySelfIdentityAddress(uint64_t a1)
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

    return CFURLCreateWithString(0, result, 0);
  }

  return result;
}

const __CFString *CalCalendarCopySelfIdentityAddress(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopySelfIdentityAddress(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarSetSelfIdentityAddress(uint64_t a1, const __CFURL *a2)
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
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
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

uint64_t _CalCalendarCopySelfIdentityFirstName(uint64_t a1)
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

uint64_t CalCalendarCopySelfIdentityFirstName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Name = _CalCalendarCopySelfIdentityFirstName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Name;
}

void CalCalendarSetSelfIdentityFirstName(uint64_t a1)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarCopySelfIdentityLastName(uint64_t a1)
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

uint64_t CalCalendarCopySelfIdentityLastName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Name = _CalCalendarCopySelfIdentityLastName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Name;
}

void CalCalendarSetSelfIdentityLastName(uint64_t a1)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarCopyOwnerIdentityDisplayName(uint64_t a1)
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

uint64_t CalCalendarCopyOwnerIdentityDisplayName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopyOwnerIdentityDisplayName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarSetOwnerIdentityDisplayName(uint64_t a1)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarCopyOwnerIdentityEmail(uint64_t a1)
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

void CalCalendarSetOwnerIdentityEmail(uint64_t a1)
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

uint64_t _CalCalendarCopyOwnerIdentityPhoneNumber(uint64_t a1)
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

uint64_t CalCalendarCopyOwnerIdentityPhoneNumber(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopyOwnerIdentityPhoneNumber(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarSetOwnerIdentityPhoneNumber(uint64_t a1)
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

const __CFString *_CalCalendarCopyOwnerIdentityAddress(uint64_t a1)
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

    return CFURLCreateWithString(0, result, 0);
  }

  return result;
}

const __CFString *CalCalendarCopyOwnerIdentityAddress(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopyOwnerIdentityAddress(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarSetOwnerIdentityAddress(uint64_t a1, const __CFURL *a2)
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
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
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

uint64_t _CalCalendarCopyOwnerIdentityFirstName(uint64_t a1)
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

uint64_t CalCalendarCopyOwnerIdentityFirstName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Name = _CalCalendarCopyOwnerIdentityFirstName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Name;
}

void CalCalendarSetOwnerIdentityFirstName(uint64_t a1)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarCopyOwnerIdentityLastName(uint64_t a1)
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

uint64_t CalCalendarCopyOwnerIdentityLastName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Name = _CalCalendarCopyOwnerIdentityLastName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Name;
}

void CalCalendarSetOwnerIdentityLastName(uint64_t a1)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalDatabaseCopyCalendarChangesInStore(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = CFRetain(a1);
  }

  v6 = v5;
  os_unfair_lock_lock(v5 + 20);
  v7 = _CalCalendarCopyChangeHistoryWhereClauseForStore(v6, a2);
  if (!a3)
  {
LABEL_7:
    RecordStore = _CalDatabaseGetRecordStore(v6);
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v12 = CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithProperties();
    if (v7)
    {
      CFRelease(v7);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v6 + 20);
    }

    os_unfair_lock_unlock(v6 + 20);
    CFRelease(v6);
    return v12;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    *a3 = Mutable;
    goto LABEL_7;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0xFFFFFFFFLL;
}

CFStringRef _CalCalendarCopyChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN     (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN     (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 1, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t CalDatabaseRemoveCalendarChangesInStoreToIndex(const void *a1, uint64_t a2, int a3)
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
    v5 = CFRetain(a1);
  }

  v6 = v5;
  os_unfair_lock_lock(v5 + 20);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalDatabaseRemoveCalendarChangesInStoreToIndex_block_invoke;
  v9[3] = &unk_1E8689120;
  v9[4] = &v11;
  v9[5] = v6;
  v9[6] = a2;
  v10 = a3;
  _CalDatabaseLockForWriteTransaction(v6, v9);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v6 + 20);
  }

  os_unfair_lock_unlock(v6 + 20);
  CFRelease(v6);
  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1DEC0C64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveCalendarChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = _CalDatabaseRemoveCalendarChangesInStoreToIndex(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CalDatabaseRemoveCalendarChangesInStoreToIndex(uint64_t a1, uint64_t a2)
{
  v3 = _CalCalendarCopyChangeHistoryWhereClauseForStore(a1, a2);
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

uint64_t CalDatabaseRemoveCalendarChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseRemoveCalendarChangesWithIndices_block_invoke;
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

void sub_1DEC0C820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveCalendarChangesWithIndices_block_invoke(void *a1)
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

uint64_t CalDatabaseCopyCalendarChangesWithIndicesInStore(const void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CalCopyDatabaseForRecord();
  }

  else
  {
    v3 = CFRetain(a1);
  }

  v4 = v3;
  os_unfair_lock_lock(v3 + 20);
  v5 = _CalCalendarCopyChangeHistoryWhereClauseForStore(v4, a2);
  RecordStore = _CalDatabaseGetRecordStore(v4);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v9 = CPRecordStoreGetChangesAndChangeIndicesForClassWithProperties();
  if (v5)
  {
    CFRelease(v5);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v4 + 20);
  }

  os_unfair_lock_unlock(v4 + 20);
  CFRelease(v4);
  return v9;
}

void CalCalendarClearExternalProperties(uint64_t a1, int a2)
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

  CPRecordSetProperty();
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

  CPRecordSetProperty();
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

  CPRecordSetProperty();
  if (a1)
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

  CPRecordSetProperty();
  if (a1)
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

  CPRecordSetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
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
  }

  CPRecordSetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
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
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (a2)
  {
    v13 = CalCopyDatabaseForRecord();
    if (v13)
    {
      v14 = v13;
      v15 = CalDatabaseCopyCalendarItemsWithCalendar(v13);
      if (v15)
      {
        v16 = v15;
        Count = CFArrayGetCount(v15);
        if (Count >= 1)
        {
          v18 = Count;
          for (i = 0; i != v18; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
            CalCalendarItemClearExternalProperties(ValueAtIndex, 1);
          }
        }

        CFRelease(v16);
      }

      CFRelease(v14);
    }
  }
}

uint64_t _CalDatabasePrepareCalendarsInStoreForMigration(uint64_t a1, void *a2, uint64_t a3)
{
  ID = CPRecordGetID();
  result = _CalDatabaseRemoveCalendarChangesInStoreToIndex(a1, a3);
  if (result)
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE Calendar SET external_id = NULL, external_mod_tag = NULL, external_id_tag = NULL, external_rep = NULL, shared_owner_name = NULL, shared_owner_address = NULL, sharing_status = 0, sync_token = NULL, is_published = 0, published_URL = NULL WHERE store_id = %d;", ID);
    if (result)
    {
      v8 = result;
      CalPerformSQLWithConnection(a2, result);
      CFRelease(v8);
      return 1;
    }
  }

  return result;
}

BOOL _CalDatabaseMigrateCalendarsWithConnection(void *a1)
{
  ID = CPRecordGetID();
  v3 = CPRecordGetID();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE Calendar SET store_id = %d WHERE store_id = %d AND ROWID != %d;", v3, ID, 1);
  if (v4)
  {
    CalPerformSQLWithConnection(a1, v4);
    CFRelease(v4);
  }

  return v4 != 0;
}

BOOL _CalDatabaseMigrateCalendarWithConnection(void *a1)
{
  ID = CPRecordGetID();
  v3 = CPRecordGetID();
  v4 = *MEMORY[0x1E695E480];
  v5 = CPRecordGetID();
  v6 = CFStringCreateWithFormat(v4, 0, @"UPDATE Calendar SET store_id = %d WHERE store_id = %d AND ROWID = %d;", v3, ID, v5);
  if (v6)
  {
    CalPerformSQLWithConnection(a1, v6);
    CFRelease(v6);
  }

  return v6 != 0;
}

CFMutableArrayRef _CalCalendarCopyAlarms(uint64_t a1)
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

    return CalToManyRelationCopyObjects(result);
  }

  return result;
}

const __CFArray *_CalCalendarAddAlarm(uint64_t a1, void *a2)
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

    return CalToManyRelationAddObject(result, a2);
  }

  return result;
}

uint64_t _CalCalendarRemoveAlarm(uint64_t a1, void *a2)
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

    return CalToManyRelationRemoveObject(result, a2);
  }

  return result;
}

uint64_t _CalCalendarHasAlarms(uint64_t a1)
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

    return CalToManyRelationHasObjects(result);
  }

  return result;
}

uint64_t CalCalendarHasAlarms(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  HasAlarms = _CalCalendarHasAlarms(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return HasAlarms;
}

CFMutableArrayRef CalCalendarCopyAlarms(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarCopyAlarms(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarAddAlarm(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarAddAlarm(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarRemoveAlarm(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarRemoveAlarm(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalCalendarLoadSelfIdentityProperties(uint64_t a1)
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

  if (CPRecordGetProperty() != -1)
  {
    Store = CPRecordGetStore();
    IdentityWithRowID = _CalGetIdentityWithRowID(Store);
    if (IdentityWithRowID)
    {
      v5 = IdentityWithRowID;
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

      _CalIdentityGetDisplayName(v5);
      CPRecordInitializeProperty();
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

      _CalIdentityGetFirstName(v5);
      CPRecordInitializeProperty();
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

      _CalIdentityGetLastName(v5);
      CPRecordInitializeProperty();
      v9 = _CalIdentityCopyAddress(v5);
      if (v9)
      {
        v10 = v9;
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
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
        }

        CPRecordInitializeProperty();

        CFRelease(v10);
      }
    }
  }
}

void _CalCalendarLoadOwnerIdentityProperties(uint64_t a1)
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

  if (CPRecordGetProperty() != -1)
  {
    Store = CPRecordGetStore();
    IdentityWithRowID = _CalGetIdentityWithRowID(Store);
    if (IdentityWithRowID)
    {
      v5 = IdentityWithRowID;
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

      _CalIdentityGetDisplayName(v5);
      CPRecordInitializeProperty();
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

      _CalIdentityGetFirstName(v5);
      CPRecordInitializeProperty();
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

      _CalIdentityGetLastName(v5);
      CPRecordInitializeProperty();
      v9 = _CalIdentityCopyAddress(v5);
      if (v9)
      {
        v10 = v9;
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
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
        }

        CPRecordInitializeProperty();

        CFRelease(v10);
      }
    }
  }
}

void _CalCalendarMigrateSubscribedCalendarExternalID(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = sqlite3_value_text(*a3);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v4 length:strlen(v4) encoding:4 freeWhenDone:0];
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    if (v10)
    {
      v6 = [v10 path];
      v7 = [v6 appendSlashIfNeeded];

      if (v7)
      {
        goto LABEL_6;
      }
    }

    v8 = v5;
    if (v8)
    {
      v7 = v8;
LABEL_6:
      v9 = strdup([v7 UTF8String]);
      sqlite3_result_text(a1, v9, -1, MEMORY[0x1E69E9B38]);

      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  sqlite3_result_null(a1);
LABEL_9:
}

uint64_t _CalCalendarValidateIdentityForProperties(uint64_t a1, uint64_t a2)
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
  if (result == -1)
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

    Property = CPRecordGetProperty();
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

    v9 = CPRecordGetProperty();
    if (a1)
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

    v11 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
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
    }

    result = CPRecordGetProperty();
    v13 = result;
    if (Property && (result = CFStringGetLength(Property)) != 0)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (!v9)
      {
        return result;
      }

      result = CFStringGetLength(v9);
      if (!a2 || !result)
      {
        return result;
      }
    }

    result = _CalIdentityGetID(Property, v9, v11, v13, a2);
    if (result != -1)
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
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
      }

      CPRecordSetProperty();
      DatabaseForRecord = CalGetDatabaseForRecord();

      return _CalDatabaseSetChangeFlags(DatabaseForRecord, 1);
    }
  }

  return result;
}