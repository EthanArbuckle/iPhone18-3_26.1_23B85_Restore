uint64_t CalExceptionDateCopyOrder(uint64_t a1)
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

void CalExceptionDateSetOrder(uint64_t a1)
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

CFTypeRef CalExceptionDateCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalExceptionDateGetOwner(a1);
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

void CalExceptionDateSetOwner(void *a1, uint64_t a2)
{
  v4 = CalExceptionDateCopyOwner(a1);
  v5 = v4;
  if (v4 != a2)
  {
    if (v4)
    {
      CalCalendarItemRemoveExceptionDate(v4, a1);
    }

    if (a2)
    {
      CalCalendarItemAddExceptionDate(a2, a1);
    }
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t _CalInvalidateExceptionDatesWithOwnerID(uint64_t a1)
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

uint64_t CalDatabaseCopyExceptionDateChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
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
  os_unfair_lock_lock(a1 + 20);
  if ((a1[86]._os_unfair_lock_opaque & 0x80000000) != 0)
  {
    v7 = @"calendar_id = ?1 AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = ?2) AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?2) AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = ?3 AND client_identifier = ?2)";
  }

  else
  {
    v7 = [@"calendar_id = ?1 AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = ?2) AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?2) AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = ?3 AND client_identifier = ?2)" stringByAppendingString:@" AND sequence_number <= ?"];
  }

  v8 = _CalDatabaseCopyClientIdentifier(a1);
  ID = CPRecordGetID();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __CalDatabaseCopyExceptionDateChangesInCalendar_block_invoke;
  v16[3] = &unk_1E8691718;
  v19 = ID;
  v10 = v8;
  v17 = v10;
  v18 = a1;
  v11 = MEMORY[0x1E12C7520](v16);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v6 = CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithBindBlockAndProperties();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);

  return v6;
}

uint64_t __CalDatabaseCopyExceptionDateChangesInCalendar_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 48));
  sqlite3_bind_text(*(a2 + 8), 2, [*(a1 + 32) UTF8String], -1, 0);
  result = sqlite3_bind_int(*(a2 + 8), 3, 10);
  v5 = *(*(a1 + 40) + 344);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(a2 + 8);

    return sqlite3_bind_int(v6, 4, v5);
  }

  return result;
}

CFComparisonResult _CompareExceptionDatesByDate(uint64_t a1, uint64_t a2)
{
  Date = _CalExceptionDateGetDate(a1);
  v4 = _CalExceptionDateGetDate(a2);
  if (Date && v4)
  {

    return CFDateCompare(Date, v4, 0);
  }

  else
  {
    if (v4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (Date)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }
}

CFComparisonResult _CompareExceptionDatesBySyncOrder(uint64_t a1, uint64_t a2)
{
  ProviderIdentifier = _CalColorGetProviderIdentifier(a1);
  v4 = _CalColorGetProviderIdentifier(a2);
  if (ProviderIdentifier && v4)
  {

    return CFNumberCompare(ProviderIdentifier, v4, 0);
  }

  else if (ProviderIdentifier)
  {
    return -1;
  }

  else
  {
    return (v4 != 0);
  }
}

CFComparisonResult CompareExceptionDatesByDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CompareExceptionDatesByDate(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

CFComparisonResult CompareExceptionDatesBySyncOrder(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CompareExceptionDatesBySyncOrder(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

CFTypeRef _CalExceptionDateLoadStoreId(uint64_t a1)
{
  result = _CalExceptionDateGetOwner(a1);
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

CFTypeRef _CalExceptionDateLoadCalendarId(uint64_t a1)
{
  result = _CalExceptionDateGetOwner(a1);
  if (result)
  {
    _CalEventGetCalendarId(result);
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

uint64_t _CalConferencePrepareForSave(uint64_t a1)
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

void CalConferenceInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalConferenceClass, &kCalConferenceIndexes, 0);
}

void CalConferenceMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 15008)
  {
    CalMigrateTableFull(a2, &kCalConferenceClass, 0, &kCalConferenceUpgradeInfo, 0, &kCalConferenceIndexes, 0, 0, a3);
  }
}

uint64_t CalConferenceGetPropertyIDWithPropertyName(void *key)
{
  if (CalConferenceGetPropertyIDWithPropertyName_onceToken != -1)
  {
    CalConferenceGetPropertyIDWithPropertyName_cold_1();
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(CalConferenceGetPropertyIDWithPropertyName_sPropDict, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __CalConferenceGetPropertyIDWithPropertyName_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = @"UUID";
  v3 = 0;
  v4 = @"owner";
  v5 = 8;
  v6 = @"urlString";
  v7 = 2;
  v8 = @"feature";
  v9 = 3;
  v10 = @"info";
  v11 = 4;
  v12 = @"language";
  v13 = 5;
  v14 = @"region";
  v15 = 6;
  CalConferenceGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&v2, 7);
  for (i = 96; i != -16; i -= 16)
  {
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1DEC48650(_Unwind_Exception *a1)
{
  for (i = 96; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

CFTypeRef _CalConferenceHasValidParent(uint64_t a1)
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

uint64_t _CalInvalidateConferencesWithOwnerID(uint64_t a1)
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

uint64_t _CalConferenceGetWithUID(uint64_t a1)
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

const void *CalDatabaseCopyConferenceWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v3 = _CalConferenceGetWithUID(RecordStore);
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

const void *_CalDatabaseCreateConference(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 23);
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
  CFRelease(TemporaryRecordIDForEntity);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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
  v8 = _CalDBCreateUUIDString();
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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

  CPRecordInitializeProperty();
  CFRelease(v8);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateConference(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Conference = _CalDatabaseCreateConference(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Conference;
}

uint64_t _CalRemoveConference(void *a1)
{
  Owner = _CalConferenceGetOwner(a1);
  if (Owner)
  {

    return _CalCalendarItemRemoveConference(Owner, a1);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

CFTypeRef _CalConferenceGetOwner(uint64_t a1)
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

void CalRemoveConference(void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveConference(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalConferenceCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalConferenceGetOwner(a1);
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

void CalConferenceSetOwner(void *a1, uint64_t a2)
{
  v4 = CalConferenceCopyOwner(a1);
  v5 = v4;
  if (v4 != a2)
  {
    CalCalendarItemRemoveConference(v4, a1);
  }

  if (a2)
  {
    CalCalendarItemAddConference(a2, a1);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

void CalConferenceSetURL(uint64_t a1)
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

uint64_t CalConferenceCopyURL(uint64_t a1)
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

void CalConferenceSetFeature(uint64_t a1)
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

uint64_t CalConferenceCopyFeature(uint64_t a1)
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

void CalConferenceSetInfo(uint64_t a1)
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

uint64_t CalConferenceCopyInfo(uint64_t a1)
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

void CalConferenceSetLanguage(uint64_t a1)
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

uint64_t CalConferenceCopyLanguage(uint64_t a1)
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

void CalConferenceSetRegion(uint64_t a1)
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

uint64_t CalConferenceCopyRegion(uint64_t a1)
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

uint64_t _CalStoreInvalidateSubentities(uint64_t result, uint64_t a2, void *a3)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = result;
    Store = CPRecordGetStore();
    Context = CPRecordStoreGetContext();
    if ((*(Context + 366) & 1) == 0)
    {
      _CalInvalidateCalendarsForStoreId(Store);
    }

    if (v4 == 1)
    {
      _CalStoreInsertNewLocal(a3);
      _CalCalendarInsertNewDefault(a3);
    }

    return _CalDatabaseSetDeletionFlags(Context, 1);
  }

  return result;
}

uint64_t _CalStorePrepareForSave(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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

    OriginalProperty = CPRecordGetOriginalProperty();
    ID = CPRecordGetID();
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109378;
      v13[1] = ID;
      v14 = 2112;
      v15 = OriginalProperty;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Saving a store with no persistent ID (source identifier). UID = %i, original persistent ID = %@", v13, 0x12u);
    }

    DatabaseForRecord = CalGetDatabaseForRecord();
    _CalDatabaseIntegrityError(DatabaseForRecord, @"Store Without PersistentID");
  }

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

  Property = CPRecordGetProperty();
  if (Property)
  {
    CalRelationOwnerWillSave(Property);
  }

  result = _CalStoreDefaultAlarmChanges(a1);
  if (result)
  {
    _CalStoreUpdateAlarmCacheForDefaultAlarmChanges(a1, result);
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

    result = CPRecordUnloadProperty();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void _CalStorePropertyChanged(uint64_t a1, int a2)
{
  if (_CalRecordHasValueChangedForProperty(a1, a2))
  {
    DatabaseForRecord = CalGetDatabaseForRecord();
    v5 = DatabaseForRecord;
    switch(a2)
    {
      case 0:
      case 1:
      case 3:
      case 5:
      case 29:
        _CalDatabaseSetChangeFlags(DatabaseForRecord, 2);
        if (a2 != 4)
        {
          goto LABEL_10;
        }

        goto LABEL_4;
      case 2:
      case 31:
        _CalStoreDefaultMarkAlarmChange(a1);
        _CalDatabaseSetChangeFlags(v5, 2);
        if (!a1)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      case 4:
LABEL_4:
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
        goto LABEL_10;
      case 7:
      case 8:
      case 24:
      case 25:
      case 28:
      case 30:
      case 34:
LABEL_10:
        if (a1)
        {
LABEL_11:
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

LABEL_15:
        CPRecordSetProperty();
        if (a2 == 5)
        {
          v8 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
          if (v8)
          {
            CFRelease(v8);
            if (_CalStoreDelegateToggled_onceToken != -1)
            {
              _CalStorePropertyChanged_cold_1();
            }

            v9 = [MEMORY[0x1E696AD98] numberWithInt:CPRecordGetID()];
            IsEnabled = _CalStoreIsEnabled(a1);
            v11 = _CalStoreDelegateToggled_storeIDsPendingCleanup;
            objc_sync_enter(v11);
            if (IsEnabled)
            {
              [_CalStoreDelegateToggled_storeIDsPendingCleanup removeObject:v9];
              objc_sync_exit(v11);
            }

            else
            {
              v13 = [_CalStoreDelegateToggled_storeIDsPendingCleanup containsObject:v9];
              objc_sync_exit(v11);

              if ((v13 & 1) == 0)
              {
                v14 = _CalStoreDelegateToggled_storeIDsPendingCleanup;
                objc_sync_enter(v14);
                [_CalStoreDelegateToggled_storeIDsPendingCleanup addObject:v9];
                objc_sync_exit(v14);

                v15 = _CalStoreDelegateToggled_delegateDataCleanupQueue;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = ___CalStoreDelegateToggled_block_invoke_2;
                block[3] = &unk_1E8688700;
                v17 = v9;
                dispatch_async(v15, block);
              }
            }
          }
        }

        break;
      case 20:
      case 21:
      case 32:
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
        break;
      default:
        return;
    }
  }
}

void CalStoreInitializeTables(uint64_t a1, void *a2, char a3)
{
  CPRecordStoreCreateTablesForClass();
  _CalAttachmentFileRegisterFunctions(a1, a2);
  CalPerformSQLWithConnection(a2, @"CREATE INDEX StoreExternalId on Store(external_id)");
  _CalStoreInsertNewLocal(a2);
  Context = CPRecordStoreGetContext();
  if (Context && (*(Context + 362) & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      _CalStoreInsertNativeStore(a2);
    }
  }

  else
  {
    CalPerformSQLWithConnection(a2, @"DELETE FROM Store WHERE ROWID = 1");
  }

  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_store_members AFTER DELETE ON Store\nBEGIN\nDELETE FROM Calendar WHERE store_id = OLD.ROWID;\nDELETE FROM Error WHERE ROWID = OLD.error_id;\nEND;\n");
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_store_changes AFTER DELETE ON Store\nBEGIN\nDELETE FROM CalendarChanges WHERE store_id = OLD.ROWID;DELETE FROM CalendarItemChanges WHERE store_id = OLD.ROWID;DELETE FROM AlarmChanges WHERE store_id = OLD.ROWID;DELETE FROM RecurrenceChanges WHERE store_id = OLD.ROWID;DELETE FROM ParticipantChanges WHERE store_id = OLD.ROWID;DELETE FROM AttachmentChanges WHERE store_id = OLD.ROWID;DELETE FROM ContactChanges WHERE store_id = OLD.ROWID;DELETE FROM EventActionChanges WHERE store_id = OLD.ROWID;DELETE FROM ExceptionDateChanges WHERE store_id = OLD.ROWID;DELETE FROM NotificationChanges WHERE store_id = OLD.ROWID;DELETE FROM ShareeChanges WHERE store_id = OLD.ROWID;DELETE FROM ClientCursor WHERE store_id = OLD.ROWID;\nEND;\n");
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER clean_attachments_store_deleted AFTER DELETE ON Store\nBEGIN\nSELECT CalNoteStoreDeleted(OLD.ROWID, OLD.external_id, OLD.persistent_id);\nEND;");

  CalMigrationCreateIndexes(a2, &kCalStoreClass, 0, &kCalStoreChangesIndexes);
}

void _CalStoreInsertNewLocal(void *a1)
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  v4 = CFStringCreateWithFormat(0, 0, @"INSERT INTO Store (ROWID, type, name, persistent_id, flags, flags2) VALUES (%d, 0, 'Default', '%@', %u, %u);", 1, v3, 268435457, 32898);
  CalPerformSQLWithConnection(a1, v4);
  CFRelease(v4);
  CFRelease(v3);

  CFRelease(v2);
}

void _CalStoreInsertNativeStore(void *a1)
{
  v2 = CFUUIDCreate(0);
  v3 = CFStringCreateWithFormat(0, 0, @"INSERT INTO Store (type, name, persistent_id, flags) VALUES (%d, 'Other', '%@', %u);", 5, @"______NativeStorePersistentID_______", 4);
  CalPerformSQLWithConnection(a1, v3);
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

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          v5 = CPRecordStoreGetContext();
          if (v5)
          {
            os_unfair_lock_assert_owner(v5 + 20);
          }
        }
      }
    }
  }

  CPSqliteConnectionRowidOfLastInsert();
  CPSqliteConnectionSetIntegerForProperty();
  CFRelease(v3);

  CFRelease(v2);
}

void _CalStoreRepairDefaultLocalStore(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 362))
  {
    goto LABEL_30;
  }

  _CalDatabaseIntegrityError(a1, @"Local Store Not Local");
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (!RecordStore)
  {
    v11 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v18 = 134217984;
    v19 = a1;
    v12 = "Error repairing local store, could not get record store from database %p";
    v13 = v11;
    goto LABEL_24;
  }

  v3 = RecordStore;
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
    v14 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v18 = 134217984;
    v19 = v3;
    v12 = "Error repairing local store, could not get sqlitedb from recordStore %p";
    goto LABEL_23;
  }

  v6 = Database;
  if (CDBLockingAssertionsEnabled == 1)
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
  if (!v8)
  {
    v14 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v18 = 134217984;
    v19 = v3;
    v12 = "Error repairing local store, could not get coonnection from sqlitedb %p";
LABEL_23:
    v13 = v14;
LABEL_24:
    v15 = 12;
LABEL_25:
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, v12, &v18, v15);
    goto LABEL_30;
  }

  v9 = v8;
  if (!__CalDatabaseBeginWriteTransaction(a1, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:449"))
  {
    v16 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    LOWORD(v18) = 0;
    v12 = "Error repairing local store, could not start a transaction";
    v13 = v16;
    v15 = 2;
    goto LABEL_25;
  }

  if (_CalStoreVerifyAndRepairLocalStore(a1, v9))
  {
    __CalDatabaseCommitTransaction(a1, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:455");
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEFAULT, "Flushing change in-memory change tracking and posting a database change notification because we just repaired the local store", &v18, 2u);
    }

    _CalDatabaseNoteUntrackedChange(a1);
  }

  else
  {
    __CalDatabaseRollbackTransaction(a1, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:460");
  }

  _CalDatabaseReportIntegrityErrors(v6);
LABEL_30:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t _CalStoreVerifyAndRepairLocalStore(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 362))
  {
LABEL_25:
    result = 0;
    goto LABEL_26;
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT type FROM Store WHERE ROWID = %i", 1];
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

  v5 = CPSqliteConnectionStatementForSQL();
  if (!v5)
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      buf = 138543362;
      *buf_4 = v3;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Failed to create statement from SQL %{public}@.", &buf, 0xCu);
    }

    goto LABEL_25;
  }

  v6 = v5;
  *v17 = 0;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v5)
    {
      v7 = **v5;
      if (v7)
      {
        if (*(v7 + 104))
        {
          v8 = CPRecordStoreGetContext();
          if (v8)
          {
            os_unfair_lock_assert_owner(v8 + 20);
          }
        }
      }
    }
  }

  CPSqliteStatementIntegerResult();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v6)
    {
      v9 = **v6;
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
  v14 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    buf = 67109120;
    *buf_4 = *v17;
    _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Migration didn't find the default local store (sqlite returned %i). Inserting a new default local store.", &buf, 8u);
  }

  _CalStoreInsertNewLocal(a2);
  result = 1;
LABEL_26:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void CalStoreRepairDefaultLocalStore(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  _CalStoreRepairDefaultLocalStore(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void CalStoreMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a3 <= 6)
  {
    CalStoreInitializeTables(a1, a2, 1);
    goto LABEL_3;
  }

  if (a3 > 0x426C)
  {
    goto LABEL_76;
  }

  if (a3 <= 0xC)
  {
    CalPerformSQLWithConnection(a2, @"DROP TABLE StoreChanges;");
  }

  CalPerformSQLWithConnection(a2, @"DROP TRIGGER IF EXISTS delete_store_members;");
  CalPerformSQLWithConnection(a2, @"DROP TRIGGER IF EXISTS delete_store_changes;");
  CalPerformSQLWithConnection(a2, @"DROP TRIGGER IF EXISTS clean_attachments_store_deleted;");
  CalPerformSQLWithConnection(a2, @"ALTER TABLE Store RENAME TO Store_;");
  CalPerformSQLWithConnection(a2, @"ALTER TABLE StoreChanges RENAME TO StoreChanges_;");
  CPRecordStoreCreateTablesForClass();
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_store_members AFTER DELETE ON Store\nBEGIN\nDELETE FROM Calendar WHERE store_id = OLD.ROWID;\nDELETE FROM Error WHERE ROWID = OLD.error_id;\nEND;\n");
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_store_changes AFTER DELETE ON Store\nBEGIN\nDELETE FROM CalendarChanges WHERE store_id = OLD.ROWID;DELETE FROM CalendarItemChanges WHERE store_id = OLD.ROWID;DELETE FROM AlarmChanges WHERE store_id = OLD.ROWID;DELETE FROM RecurrenceChanges WHERE store_id = OLD.ROWID;DELETE FROM ParticipantChanges WHERE store_id = OLD.ROWID;DELETE FROM AttachmentChanges WHERE store_id = OLD.ROWID;DELETE FROM ContactChanges WHERE store_id = OLD.ROWID;DELETE FROM EventActionChanges WHERE store_id = OLD.ROWID;DELETE FROM ExceptionDateChanges WHERE store_id = OLD.ROWID;DELETE FROM NotificationChanges WHERE store_id = OLD.ROWID;DELETE FROM ShareeChanges WHERE store_id = OLD.ROWID;DELETE FROM ClientCursor WHERE store_id = OLD.ROWID;\nEND;\n");
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER clean_attachments_store_deleted AFTER DELETE ON Store\nBEGIN\nSELECT CalNoteStoreDeleted(OLD.ROWID, OLD.external_id, OLD.persistent_id);\nEND;");
  if (a3 - 16001 <= 0x1F)
  {
    if ((*(CPRecordStoreGetContext() + 362) & 1) == 0)
    {
      *buf = 0;
      v59 = buf;
      v60 = 0x3032000000;
      v61 = __Block_byref_object_copy__0;
      v62 = __Block_byref_object_dispose__0;
      v63 = 0;
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__0;
      v56 = __Block_byref_object_dispose__0;
      v57 = 0;
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

      v17 = CPSqliteConnectionStatementForSQL();
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = ___CalStoreMigrateStoreTableData_block_invoke;
      v51[3] = &unk_1E86921D8;
      v51[4] = buf;
      v51[5] = &v52;
      CalSendResults(v17, v51);
      v18 = *(v59 + 5);
      if (v18)
      {
        CalAlarmSetDefaultTimedAlarmOffset(v18);
      }

      v19 = v53[5];
      if (v19)
      {
        CalAlarmSetDefaultAllDayAlarmOffset(v19);
      }

      CalPerformSQLWithConnection(a2, @"UPDATE Store_ SET default_alarm_offset=NULL, default_all_day_alarm_offset=NULL WHERE ROWID = 1 OR external_id=Subscribed Calendars");
      _Block_object_dispose(&v52, 8);

      _Block_object_dispose(buf, 8);
    }

    v20 = [CFSTR(""ROWID name];
    [v20 appendString:{@", display_order"}];
    [v20 appendString:{@", owner_name"}];
    goto LABEL_45;
  }

  if (a3 < 0x24)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, NULL, type, constraint_path, disabled, external_id, NULL, NULL, NULL, NULL, 0, NULL, 0, 0 FROM Store_;";
LABEL_70:
    CalPerformSQLWithConnection(a2, v24);
    v23 = [CFSTR(""record type];
    goto LABEL_71;
  }

  if (a3 < 0x33)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, NULL, type, constraint_path, disabled, external_id, persistent_id, NULL, NULL, NULL, 0, NULL, 0, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x44)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, NULL, NULL, NULL, 0, NULL, 0, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x70)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, NULL, NULL, 0, NULL, 0, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x80)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, 0, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x85)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x2AFD)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x2EE2)
  {
    v49 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end FROM Store_;";
LABEL_139:
    CalPerformSQLWithConnection(a2, v49);
    v22 = @"INSERT INTO Error (store_owner_id, error_code) SELECT ROWID, last_sync_error FROM Store_ WHERE last_sync_error != 0";
    goto LABEL_52;
  }

  if (a3 >> 3 < 0x5DD)
  {
    v49 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id FROM Store_;";
    goto LABEL_139;
  }

  if (a3 == 12008)
  {
    v49 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id FROM Store_;";
    goto LABEL_139;
  }

  if (a3 < 0x2EEA)
  {
    v49 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id, shows_notifications) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id, shows_notifications FROM Store_;";
    goto LABEL_139;
  }

  if (a3 < 0x36B1)
  {
    v49 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id, shows_notifications, flags2) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id, shows_notifications, flags2 FROM Store_;";
    goto LABEL_139;
  }

  v50 = [CFSTR(""ROWID name];
  v20 = v50;
  if (a3 >= 0x3A99)
  {
    [v50 appendString:{@", display_order"}];
    if (a3 >= 0x3A9E)
    {
      [v20 appendString:{@", owner_name"}];
      if (a3 >> 2 >= 0xEA9)
      {
LABEL_45:
        [v20 appendString:{@", default_all_day_alarm_offset"}];
        if (a3 >= 0x3E85)
        {
          [v20 appendString:{@", error_id"}];
          if (a3 >> 3 >= 0x7D1)
          {
            [v20 appendString:{@", notes"}];
            if (a3 >= 0x3E9D)
            {
              [v20 appendString:{@", cached_external_info"}];
              if (a3 >= 0x4269)
              {
                [v20 appendString:{@", app_group_id"}];
              }
            }
          }
        }
      }
    }
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO Store (%@) SELECT %@ FROM Store_;", v20, v20];

  CalPerformSQLWithConnection(a2, v21);
  if (a3 >= 0x3E85)
  {
    v23 = [CFSTR(""record type];
    goto LABEL_57;
  }

  v22 = @"INSERT INTO Error (store_owner_id, error_code, user_info) SELECT ROWID, last_sync_error, last_sync_error_data FROM Store_ WHERE last_sync_error != 0";
LABEL_52:
  CalPerformSQLWithConnection(a2, v22);
  CalPerformSQLWithConnection(a2, @"UPDATE Store SET error_id = (SELECT ROWID FROM Error WHERE store_owner_id = Store.ROWID)");
  v23 = [CFSTR(""record type];
  if (a3 >> 2 >= 0xEA9)
  {
LABEL_57:
    [v23 appendString:{@", default_alarm_offset"}];
    [v23 appendString:{@", default_all_day_alarm_offset"}];
  }

LABEL_71:
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO StoreChanges (%@) SELECT %@ FROM StoreChanges_", v23, v23];;
  CalPerformSQLWithConnection(a2, v25);

  CalPerformSQLWithConnection(a2, @"DROP TABLE Store_;");
  CalPerformSQLWithConnection(a2, @"DROP TABLE StoreChanges_;");
  if (a3 <= 0x23)
  {
LABEL_3:
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v5 = CPRecordStoreGetContext();
            if (v5)
            {
              os_unfair_lock_assert_owner(v5 + 20);
            }
          }
        }
      }
    }

    v6 = CPSqliteConnectionStatementForSQL();
    if (v6)
    {
      *buf = 0;
      do
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v6)
          {
            v7 = **v6;
            if (v7)
            {
              if (*(v7 + 104))
              {
                v8 = CPRecordStoreGetContext();
                if (v8)
                {
                  os_unfair_lock_assert_owner(v8 + 20);
                }
              }
            }
          }
        }

        v9 = CPSqliteStatementIntegerResult();
        if (*buf != 100)
        {
          break;
        }

        v10 = v9;
        v11 = CFUUIDCreate(0);
        v12 = CFUUIDCreateString(0, v11);
        v13 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET persistent_id=%@ WHERE rowid = %d;", v12, v10);
        CFRelease(v12);
        CFRelease(v11);
        CalPerformSQLWithConnection(a2, v13);
        CFRelease(v13);
      }

      while (*buf == 100);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v6)
        {
          v14 = **v6;
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

    if (a3 <= 31)
    {
      _CalStoreInsertNativeStore(a2);
    }
  }

  if (a3 - 7 <= 0x20)
  {
    CalPerformSQLWithConnection(a2, @"DELETE FROM Calendar WHERE rowid NOT IN (SELECT Calendar.rowid FROM Calendar, Store WHERE Calendar.store_id = Store.rowid);");
LABEL_75:
    CalPerformSQLWithConnection(a2, @"UPDATE Store SET constraint_path = NULL WHERE rowid = 1");
    goto LABEL_76;
  }

  if (a3 <= 66)
  {
    goto LABEL_75;
  }

LABEL_76:
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        if (*(*a2 + 104))
        {
          v26 = CPRecordStoreGetContext();
          if (v26)
          {
            os_unfair_lock_assert_owner(v26 + 20);
          }
        }
      }
    }
  }

  v27 = CPSqliteConnectionIntegerForProperty();
  if (v27 >= 1)
  {
    v28 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET flags = %u WHERE ROWID = %d;", 4, v27);
    if (v28)
    {
      CalPerformSQLWithConnection(a2, v28);
      CFRelease(v28);
    }
  }

  v29 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET flags = (IFNULL(flags,0) & %u) | %u WHERE ROWID = %d;", 2, 0x10000000, 1);
  if (v29)
  {
    CalPerformSQLWithConnection(a2, v29);
    CFRelease(v29);
  }

  v30 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET flags2 = %u WHERE ROWID = %d;", 32898, 1);
  if (v30)
  {
    CalPerformSQLWithConnection(a2, v30);
    CFRelease(v30);
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE Store SET flags = %u WHERE type = %d AND ROWID != %d", 268435457, 0, 1];
  CalPerformSQLWithConnection(a2, v31);
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE Store SET flags2 = %u WHERE type = %d AND ROWID != %d", 32898, 0, 1];
  CalPerformSQLWithConnection(a2, v32);
  if (a3 <= 91)
  {
    CalPerformSQLWithConnection(a2, @"CREATE INDEX StoreExternalId on Store(external_id)");
  }

  v33 = CFStringCreateWithFormat(0, 0, @"SELECT COUNT(rowid) from Store WHERE type = %i;", 5);
  if (((a2 != 0) & CDBLockingAssertionsEnabled) == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        v34 = CPRecordStoreGetContext();
        if (v34)
        {
          os_unfair_lock_assert_owner(v34 + 20);
        }
      }
    }
  }

  v35 = CPSqliteConnectionStatementForSQL();
  v36 = v35;
  if (v35)
  {
    LODWORD(v52) = 0;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v35)
      {
        v37 = **v35;
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

    v39 = CPSqliteStatementIntegerResult();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v36)
      {
        v40 = **v36;
        if (v40)
        {
          if (*(v40 + 104))
          {
            v41 = CPRecordStoreGetContext();
            if (v41)
            {
              os_unfair_lock_assert_owner(v41 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    if (v52 == 100 && v39 >= 2)
    {
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              v42 = CPRecordStoreGetContext();
              if (v42)
              {
                os_unfair_lock_assert_owner(v42 + 20);
              }
            }
          }
        }
      }

      v43 = CPSqliteConnectionIntegerForProperty();
      v44 = CDBLogHandle;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = v39;
        LOWORD(v59) = 1024;
        *(&v59 + 2) = v43;
        _os_log_impl(&dword_1DEBB1000, v44, OS_LOG_TYPE_ERROR, "Found %i native stores.  Deleting all but store ID %i.", buf, 0xEu);
      }

      v45 = CFStringCreateWithFormat(0, 0, @"DELETE FROM Store WHERE type = %i AND rowid != %i", 5, v43);
      if (v45)
      {
        CalPerformSQLWithConnection(a2, v45);
        CFRelease(v45);
      }
    }
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (a3 <= 15010)
  {
    v46 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET persistent_id = '%@' WHERE type = %i;", @"______NativeStorePersistentID_______", 5);
    if (v46)
    {
      CalPerformSQLWithConnection(a2, v46);
      CFRelease(v46);
    }

    goto LABEL_127;
  }

  if (a3 <= 0x4651)
  {
LABEL_127:
    CalMigrationCreateIndexes(a2, &kCalStoreClass, 0, &kCalStoreChangesIndexes);
  }

  v47 = CPRecordStoreGetContext();
  _CalStoreVerifyAndRepairLocalStore(v47, a2);

  v48 = *MEMORY[0x1E69E9840];
}

void sub_1DEC4AFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t CalStoreGetPropertyIDWithPropertyName(void *key)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = CalStoreGetPropertyIDWithPropertyName_sPropDict;
  if (!CalStoreGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalStoreGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalStoreGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v7 = 7;
      v8 = @"externalID";
      v9 = 6;
      v10 = @"title";
      v11 = 0;
      v12 = @"notes";
      v13 = 1;
      v14 = @"defaultAlarmOffset";
      v15 = 2;
      v16 = @"sourceTypeRaw";
      v17 = 3;
      v18 = @"disabled";
      v19 = 5;
      v20 = @"flags";
      v21 = 8;
      v22 = @"flags2";
      v23 = 28;
      v24 = @"creatorBundleID";
      v25 = 13;
      v26 = @"creatorCodeSigningIdentity";
      v27 = 14;
      v28 = @"onlyCreatorCanModify";
      v29 = 15;
      v30 = @"externalModificationTag";
      v31 = 16;
      v32 = @"preferredEventPrivateValueRaw";
      v33 = 18;
      v34 = @"strictestEventPrivateValueRaw";
      v35 = 19;
      v36 = @"constraintsName";
      v37 = 4;
      v38 = @"lastSyncStartDate";
      v39 = 20;
      v40 = @"lastSyncEndDate";
      v41 = 21;
      v42 = @"delegatedAccountOwnerStoreID";
      v43 = 24;
      v44 = @"showsNotifications";
      v45 = 27;
      v46 = @"displayOrder";
      v47 = 29;
      v48 = @"ownerName";
      v49 = 30;
      v50 = @"defaultAllDayAlarmOffset";
      v51 = 31;
      v52 = @"syncError";
      v53 = 33;
      v54 = @"cachedExternalInfoData";
      v55 = 34;
      v56 = @"appGroupIdentifier";
      v57 = 35;
      CalStoreGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 26);
      for (i = 400; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalStoreGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalStoreGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC4B3D0(_Unwind_Exception *a1)
{
  for (i = 400; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t CalDatabaseCopyStoreChangesInStore(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v4 = CalCopyDatabaseForRecord();
    v5 = v4 + 20;
    os_unfair_lock_lock(v4 + 20);
    v6 = _CalDatabaseCopyClientIdentifier(v4);
    ID = CPRecordGetID();
    v17 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"record = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN     (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN     (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v6, v6, 6, v6);
    CFRelease(v6);
  }

  else
  {
    v4 = CFRetain(a1);
    v5 = v4 + 20;
    os_unfair_lock_lock(v4 + 20);
    v17 = 0;
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(v4, &v17);
  v8 = v17;
  v17 = 0;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    *a3 = Mutable;
LABEL_8:
    RecordStore = _CalDatabaseGetRecordStore(v4);
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v14 = CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithProperties();
    if (v8)
    {
      CFRelease(v8);
    }

    v15 = v17;
    if (v17)
    {
      if (v10)
      {
        CFDictionaryAddValue(v10, @"ID", v17);
        v15 = v17;
      }

      CFRelease(v15);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v5);
    }

    os_unfair_lock_unlock(v5);
    CFRelease(v4);
    return v14;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0xFFFFFFFFLL;
}

void _CalStoreUpdateAlarmCacheForDefaultAlarmChanges(uint64_t a1, uint64_t a2)
{
  if (CPRecordGetStore())
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v5 = _CalDatabaseCopyEventOccurrenceCache(Context);
      if (v5)
      {
        v6 = v5;
        _CalEventOccurrenceCacheMarkStoreForDefaultAlarmChanges(v5, a1, a2);

        CFRelease(v6);
      }
    }
  }
}

void _CalStoreDeleteDisabledDelegateData()
{
  v0 = CalDatabaseCreateWithOptions(20);
  if (v0)
  {
    v1 = v0;
    v0 = CalDatabaseCopyStoreWithUID(v0);
    if (!v0)
    {
      v5 = v1;
LABEL_14:
      v11 = v0;
      CFRelease(v5);
      v0 = v11;
      goto LABEL_15;
    }

    v2 = v0;
    v3 = CalStoreCopyExternalID(v0);
    if (v3)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.dataaccessd-%@", v3];
      CalDatabaseSetClientIdentifier(v1, v10);
      v4 = CalStoreCopyCalendars(v2);
      v5 = v4;
      if (v4)
      {
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v7 = Count;
          for (i = 0; i != v7; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
            CalRemoveCalendar(ValueAtIndex);
          }
        }

        CalStoreSetExternalModificationTag(v2);
        CalStoreSetLastSyncStartTime(v2);
        CalStoreSetLastSyncEndTime(v2);
        CalDatabaseSave(v1);
      }
    }

    else
    {
      v10 = 0;
      v5 = 0;
    }

    CFRelease(v1);
    CFRelease(v2);
    if (v3)
    {
      CFRelease(v3);
    }

    v0 = v10;
    if (v5)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
}

const void *CalDatabaseCopyStoreWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyStoreWithUID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

uint64_t CalStoreCopyExternalID(uint64_t a1)
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

void CalStoreSetExternalModificationTag(uint64_t a1)
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

void CalStoreSetLastSyncStartTime(uint64_t a1)
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

void CalStoreSetLastSyncEndTime(uint64_t a1)
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

BOOL _CalStoreHasDirtyInstanceAttributes(uint64_t a1)
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

BOOL _CalStoreHasDirtySyncAttributes(uint64_t a1)
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

uint64_t _CalStoreClearDirtyAttributes(uint64_t a1)
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

uint64_t _CalStoreSaveAddedRecords(uint64_t a1)
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

uint64_t _CalDatabaseCreateLimitedAccessVirtualStore()
{
  v0 = CPRecordCreateWithRecordID();
  v1 = v0;
  if (CDBLockingAssertionsEnabled == 1 && v0 != 0)
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
  if (CDBLockingAssertionsEnabled == 1 && v1 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v1 != 0)
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
  if (CDBLockingAssertionsEnabled == 1 && v1 != 0)
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
  LimitedAccessVirtualRecordIDForEntity = _CalDatbaseCreateLimitedAccessVirtualRecordIDForEntity(6);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v1)
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
  CFRelease(LimitedAccessVirtualRecordIDForEntity);
  return v1;
}

uint64_t _CalDatabaseGetLimitedAccessVirtualStore(uint64_t a1)
{
  result = *(a1 + 56);
  if (!result)
  {
    result = _CalDatabaseCreateLimitedAccessVirtualStore();
    *(a1 + 56) = result;
  }

  return result;
}

const void *CalDatabaseCopyLimitedAccessVirtualStore(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  LimitedAccessVirtualStore = *(a1 + 56);
  if (LimitedAccessVirtualStore || (LimitedAccessVirtualStore = _CalDatabaseCreateLimitedAccessVirtualStore(), (*(a1 + 56) = LimitedAccessVirtualStore) != 0))
  {
    CFRetain(LimitedAccessVirtualStore);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return LimitedAccessVirtualStore;
}

const void *_CalDatabaseCreateStore(uint64_t a1)
{
  v2 = CPRecordCreate();
  v3 = CFUUIDCreate(0);
  v4 = CFUUIDCreateString(0, v3);
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
  CFRelease(v4);
  CFRelease(v3);
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 6);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v2);
  _CalDatabaseSetChangeFlags(a1, 2);
  v10 = *(a1 + 96);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 96) = 0;
  }

  return v2;
}

const void *CalDatabaseCreateStore(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Store = _CalDatabaseCreateStore(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Store;
}

const void *_CalDatabaseCopyStoreWithUID(uint64_t a1)
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

  InstanceOfClassWithUID = CPRecordStoreGetInstanceOfClassWithUID();
  v5 = InstanceOfClassWithUID;
  if (InstanceOfClassWithUID)
  {
    CFRetain(InstanceOfClassWithUID);
  }

  return v5;
}

const void *CalDatabaseCopyLocalStore(uint64_t a1)
{
  if (*(a1 + 362))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 80));
  v1 = _CalDatabaseCopyStoreWithUID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  if (!CalStoreGetType(v1))
  {
    return v1;
  }

  CalStoreRepairDefaultLocalStore(a1);
  CFRelease(v1);

  return CalDatabaseCopyStoreWithUID(a1);
}

const void *CalDatabaseCopySubscribedCalendarStoreCore(os_unfair_lock_s *a1, int a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = CalDatabaseCopyStoresWithExternalID(a1, @"Subscribed Calendars");
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count < 2)
    {
      if (Count == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        if (!ValueAtIndex)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v9 = CFArrayGetCount(v7);
      if (v9 >= 1)
      {
        v10 = v9;
        ValueAtIndex = 0;
        v12 = 0;
        v13 = 0x7FFFFFFF;
        do
        {
          v14 = CFArrayGetValueAtIndex(v7, v12);
          UID = CalStoreGetUID();
          if (UID < v13)
          {
            ValueAtIndex = v14;
            v13 = UID;
          }

          ++v12;
        }

        while (v10 != v12);
        if (ValueAtIndex)
        {
          v16 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v29 = v10;
            v30 = 1024;
            v31 = v13;
            _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Found %li subscribed calendar stores. Keeping store with ID %i and deleting the rest.", buf, 0x12u);
          }

          for (i = 0; i != v10; ++i)
          {
            v18 = CFArrayGetValueAtIndex(v7, i);
            if (v18 != ValueAtIndex)
            {
              v19 = CalStoreCopyName(v18);
              v20 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v21 = v20;
                v22 = CalStoreGetUID();
                *buf = 138412546;
                v29 = v19;
                v30 = 1024;
                v31 = v22;
                _os_log_impl(&dword_1DEBB1000, v21, OS_LOG_TYPE_DEFAULT, "Deleting duplicate subscribed calendar store: %@ (%i)", buf, 0x12u);
              }

              CalRemoveStore();
            }
          }

          if (a3)
          {
            CalDatabaseSave(a1);
          }

LABEL_23:
          CFRetain(ValueAtIndex);
          goto LABEL_27;
        }
      }

      v23 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, "Didn't find any store at all when trying to clean up duplicates.", buf, 2u);
      }
    }

    ValueAtIndex = 0;
LABEL_27:
    CFRelease(v7);
    if (ValueAtIndex)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  ValueAtIndex = 0;
LABEL_28:
  if (a2)
  {
    v24 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_DEFAULT, "Subscribed calendar store not found. Creating one now", buf, 2u);
    }

    ValueAtIndex = CalDatabaseCreateStore(a1);
    CalStoreSetExternalID(ValueAtIndex);
    CalStoreSetType(ValueAtIndex);
    CalStoreSetName(ValueAtIndex);
    if (a3 && (CalDatabaseSave(a1) & 1) == 0)
    {
      v25 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_ERROR, "Failed to save database after creating subscribed calendar store", buf, 2u);
      }

      CFRelease(ValueAtIndex);
      ValueAtIndex = 0;
    }
  }

LABEL_36:
  v26 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

void _CalRemoveStore()
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  RecordStore = _CalDatabaseGetRecordStore(DatabaseForRecord);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordStoreRemoveRecord();
  _CalDatabaseSetDeletionFlags(DatabaseForRecord, 1);
  _CalDatabaseSetChangeFlags(DatabaseForRecord, 2);
  v4 = *(DatabaseForRecord + 96);
  if (v4)
  {
    CFRelease(v4);
    *(DatabaseForRecord + 96) = 0;
  }
}

void CalRemoveStore()
{
  v0 = CalCopyDatabaseForRecord();
  os_unfair_lock_lock(v0 + 20);
  _CalRemoveStore();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v0 + 20);
  }

  os_unfair_lock_unlock(v0 + 20);

  CFRelease(v0);
}

CFTypeRef _CalStoreCopyRelatedEntitiesDeletedByTriggers(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  cf = 0;
  v6 = _CalStoreCopyCalendars(a2);
  if (v6)
  {
    v7 = v6;
    CalDatabaseAddChangesToArray(&cf, v6, a3);
    Count = CFArrayGetCount(v7);
    if (Count)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        v12 = _CalCalendarCopyRelatedEntitiesDeletedByTriggers(a1, ValueAtIndex, a3);
        if (v12)
        {
          v13 = v12;
          CalDatabaseAddChangesToArray(&cf, v12, a3);
          CFRelease(v13);
        }

        else if (*a3 == 1 && cf != 0)
        {
          CFRelease(cf);
          cf = 0;
        }
      }
    }

    CFRelease(v7);
  }

  Error = _CalStoreGetError(a2);
  if (Error)
  {
    CalDatabaseAddChangeToArray(&cf, Error, a3);
  }

  return cf;
}

CFTypeRef _CalStoreGetError(uint64_t a1)
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

void CalStoreSetName(uint64_t a1)
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

uint64_t CalStoreCopyName(uint64_t a1)
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

void CalStoreSetNotes(uint64_t a1)
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

uint64_t CalStoreCopyNotes(uint64_t a1)
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

void CalStoreSetDefaultAlarmOffset(uint64_t a1)
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

uint64_t _CalStoreCopyDefaultAlarmOffset(uint64_t a1)
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

uint64_t CalStoreCopyDefaultAlarmOffset(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalStoreCopyDefaultAlarmOffset(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalStoreSetDefaultAllDayAlarmOffset(uint64_t a1)
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

uint64_t _CalStoreCopyDefaultAllDayAlarmOffset(uint64_t a1)
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

uint64_t CalStoreCopyDefaultAllDayAlarmOffset(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalStoreCopyDefaultAllDayAlarmOffset(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t CalStoreGetDefaultAlarmOffsetNSInteger(uint64_t a1)
{
  v1 = 0x7FFFFFFFFFFFFFFFLL;
  valuePtr = 0x7FFFFFFFFFFFFFFFLL;
  v2 = CalStoreCopyDefaultAlarmOffset(a1);
  if (v2)
  {
    v3 = v2;
    CFNumberGetValue(v2, kCFNumberLongType, &valuePtr);
    CFRelease(v3);
    return valuePtr;
  }

  return v1;
}

uint64_t CalStoreGetDefaultAllDayAlarmOffsetNSInteger(uint64_t a1)
{
  v1 = 0x7FFFFFFFFFFFFFFFLL;
  valuePtr = 0x7FFFFFFFFFFFFFFFLL;
  v2 = CalStoreCopyDefaultAllDayAlarmOffset(a1);
  if (v2)
  {
    v3 = v2;
    CFNumberGetValue(v2, kCFNumberLongType, &valuePtr);
    CFRelease(v3);
    return valuePtr;
  }

  return v1;
}

uint64_t _CalStoreSetType(uint64_t a1)
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

void CalStoreSetType(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetType(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreGetPreferredEventPrivateValue(uint64_t a1)
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

void CalStoreSetPreferredEventPrivateValue(uint64_t a1)
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

uint64_t _CalStoreGetStrictestEventPrivateValue(uint64_t a1)
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

uint64_t _CalStoreSetStrictestEventPrivateValue(uint64_t a1)
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

uint64_t CalStoreGetStrictestEventPrivateValue(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  StrictestEventPrivateValue = _CalStoreGetStrictestEventPrivateValue(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return StrictestEventPrivateValue;
}

void CalStoreSetStrictestEventPrivateValue(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetStrictestEventPrivateValue(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetDelegatedAccountOwnerStoreID(uint64_t a1)
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

BOOL _CalStoreIsDelegate(uint64_t a1)
{
  v1 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

BOOL CalStoreIsDelegate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4 != 0;
}

void CalStoreSetDelegatedAccountDefaultCalendarForNewEvents(uint64_t a1, const void *a2)
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

CFTypeRef CalStoreCopyDelegatedAccountDefaultCalendarForNewEvents(uint64_t a1)
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
    RelatedObject = CalRelationGetRelatedObject(Property);
    v6 = RelatedObject;
    if (RelatedObject)
    {
      CFRetain(RelatedObject);
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

void *_CalStoreSetError(uint64_t a1, const void *a2)
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

void CalStoreSetError(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetError(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalStoreCopyError(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Error = _CalStoreGetError(a1);
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

uint64_t _CalStoreGetAppGroupIdentifier(uint64_t a1)
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

CFTypeRef CalStoreCopyAppGroupIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  AppGroupIdentifier = _CalStoreGetAppGroupIdentifier(a1);
  if (AppGroupIdentifier)
  {
    v4 = CFRetain(AppGroupIdentifier);
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

void CalStoreSetEnabled(uint64_t a1)
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

BOOL CalStoreIsEnabled(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsEnabled = _CalStoreIsEnabled(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsEnabled;
}

void CalStoreSetOnlyCreatorCanModify(uint64_t a1)
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

BOOL CalStoreOnlyCreatorCanModify(uint64_t a1)
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

void CalStoreSetShowsNotifications(uint64_t a1)
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

BOOL CalStoreShowsNotifications(uint64_t a1)
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

void CalStoreSetDisplayOrder(uint64_t a1)
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

uint64_t CalStoreGetDisplayOrder(uint64_t a1)
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

void CalStoreSetOwnerName(uint64_t a1)
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

uint64_t CalStoreCopyOwnerName(uint64_t a1)
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

id CalStoreCopyCachedExternalInfo(uint64_t a1)
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

void CalStoreSetCachedExternalInfo(uint64_t a1, void *a2)
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

void CalStoreSetFlags(uint64_t a1)
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

void CalStoreSetFlags2(uint64_t a1)
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

void CalStoreSetFlag(uint64_t a1, int a2, int a3)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetFlag(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetConstraintsName(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isAbsolutePath])
  {
    v4 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      v8 = 138543362;
      v9 = v3;
      v5 = "Attempting to set a path (%{public}@) with CalStoreSetConstraintsName. Only the name should be supplied without an extension.";
LABEL_10:
      _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_FAULT, v5, &v8, 0xCu);
    }
  }

  else if ([v3 hasSuffix:@".plist"])
  {
    v4 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      v8 = 138543362;
      v9 = v3;
      v5 = "Attempting to set a file name with .plist extension (%{public}@) with CalStoreSetConstraintsName. Only the name should be supplied without an extension.";
      goto LABEL_10;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E6992F20] constraintsURLForName:v3];

    if (!v6)
    {
      v4 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
      {
        v8 = 138543362;
        v9 = v3;
        v5 = "Attempting to set an unrecognized constraints name (%{public}@) with CalStoreSetConstraintsName. The given name should be a valid .plist resource in CalendarFoundation.";
        goto LABEL_10;
      }
    }
  }

  CalStoreSetConstraintsNameNoValidation(a1);

  v7 = *MEMORY[0x1E69E9840];
}

void CalStoreSetConstraintsNameNoValidation(uint64_t a1)
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

  CPRecordUnloadProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyConstraintsName(uint64_t a1)
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

void CalStoreSetExternalID(uint64_t a1)
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

uint64_t CalStoreCopyExternalModificationTag(uint64_t a1)
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

uint64_t _CalStoreSetCreatorBundleID(uint64_t a1)
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

void CalStoreSetCreatorBundleID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetCreatorBundleID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyCreatorBundleID(uint64_t a1)
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

uint64_t _CalStoreSetCreatorCodeSigningIdentity(uint64_t a1)
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

void CalStoreSetCreatorCodeSigningIdentity(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetCreatorCodeSigningIdentity(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyCreatorCodeSigningIdentity(uint64_t a1)
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

const void *CalDatabaseCopyStoreWithExternalID(os_unfair_lock_s *a1, const __CFString *a2)
{
  v2 = CalDatabaseCopyStoresWithExternalID(a1, a2);
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) < 1)
    {
      v6 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: no results for query", buf, 2u);
      }

      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
      CFRetain(ValueAtIndex);
    }

    CFRelease(v3);
  }

  else
  {
    v5 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: query resulted in nil results", v8, 2u);
    }

    return 0;
  }

  return ValueAtIndex;
}

uint64_t CalDatabaseCopyStoresWithExternalID(os_unfair_lock_s *a1, const __CFString *a2)
{
  cf = 0;
  if (a2)
  {
    SelectPrefix = CPRecordStoreCreateSelectPrefix();
    if (!SelectPrefix)
    {
      v18 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: failed to create query", buf, 2u);
      }

      v16 = 0;
      goto LABEL_32;
    }

    v5 = SelectPrefix;
    CFStringAppend(SelectPrefix, @" WHERE external_id = ?;");
    os_unfair_lock_lock(a1 + 20);
    RecordStore = _CalDatabaseGetRecordStore(a1);
    v7 = RecordStore;
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
          v11 = CPRecordStoreGetContext();
          if (v11)
          {
            os_unfair_lock_assert_owner(v11 + 20);
          }
        }
      }

      v12 = CPSqliteDatabaseStatementForReading();
      if (v12)
      {
        v13 = v12;
        CStringFromCFString = CalCreateCStringFromCFString(a2);
        sqlite3_bind_text(*(v13 + 8), 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v7)
          {
            v15 = CPRecordStoreGetContext();
            if (v15)
            {
              os_unfair_lock_assert_owner(v15 + 20);
            }
          }
        }

        v16 = CPRecordStoreProcessStatementWithPropertyIndices();
        goto LABEL_29;
      }
    }

    else
    {
      v19 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: failed to get sqlite database", v23, 2u);
      }
    }

    v16 = 0;
LABEL_29:
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(a1 + 20);
    }

    os_unfair_lock_unlock(a1 + 20);
    CFRelease(v5);
LABEL_32:
    if (cf)
    {
      CFRelease(cf);
    }

    return v16;
  }

  v17 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: externalID is nil", v21, 2u);
  }

  return 0;
}

const void *CalDatabaseCopyStoreWithUUID(os_unfair_lock_s *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    return 0;
  }

  v5 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" WHERE persistent_id = ?;");
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v7 = RecordStore;
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
    goto LABEL_23;
  }

  if (CDBLockingAssertionsEnabled == 1)
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

  v12 = CPSqliteDatabaseStatementForReading();
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  CStringFromCFString = CalCreateCStringFromCFString(a2);
  sqlite3_bind_text(*(v13 + 8), 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      v15 = CPRecordStoreGetContext();
      if (v15)
      {
        os_unfair_lock_assert_owner(v15 + 20);
      }
    }
  }

  v16 = CPRecordStoreProcessStatementWithPropertyIndices();
  if (v16)
  {
    v17 = v16;
    if (CFArrayGetCount(v16) < 1)
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
      CFRetain(ValueAtIndex);
    }

    CFRelease(v17);
  }

  else
  {
LABEL_23:
    ValueAtIndex = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CFRelease(v5);
  return ValueAtIndex;
}

void CalStoreSetUUID(uint64_t a1, uint64_t a2)
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

  v7 = CPRecordCopyProperty();
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
  if (a2 && v7 && ([v7 isEqualToString:a2] & 1) == 0)
  {
    _CalAttachmentFileMigrateAttachmentsInStoreFromOldPersistentIDToNewPersistentID(a1, v7, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyUUID(uint64_t a1)
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

uint64_t _CalStoreCopyUUID(uint64_t a1)
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

void CalStoreAddCalendar(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalStoreAddCalendar(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalStoreAddCalendar(uint64_t a1, void *a2)
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
    CalToManyRelationAddObject(Property, a2);
  }

  _CalStoreGetFlag(a1, 32);
  _CalCalendarSetCanBeShared(a2);

  return _CalCalendarSetCanBePublished(a2);
}

uint64_t _CalStoreRemoveCalendar(uint64_t a1, void *a2)
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

void CalStoreRemoveCalendar(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalStoreRemoveCalendar(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyLastSyncStartTime(uint64_t a1)
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

uint64_t CalStoreCopyLastSyncEndTime(uint64_t a1)
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

uint64_t CalStoreMigrateToStore(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 == a2 || !a1 || !a2)
  {
    return v2;
  }

  _purgeServerAttachmentsFromCalendarItemsInStore(a1, 0);
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DatabaseForRecord = CalGetDatabaseForRecord();
  if (!DatabaseForRecord)
  {
    goto LABEL_40;
  }

  v7 = DatabaseForRecord;
  if (!_CalDatabaseGetRecordStore(DatabaseForRecord))
  {
    goto LABEL_40;
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
    goto LABEL_40;
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
    goto LABEL_40;
  }

  v12 = v11;
  while (!__CalDatabaseBeginWriteTransaction(v7, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:2865"))
  {
    v13 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_INFO, "database was busy or locked; sleeping for 1 second…", v24, 2u);
    }

    usleep(0x3E8u);
  }

  if (_CalDatabasePrepareCalendarsInStoreForMigration(v7, v12, a1) && _CalDatabasePrepareCalendarItemsInStoreForMigration(v7, v12, a1))
  {
    if (_CalDatabasePrepareAlarmsInStoreForMigration(v7, v12, a1) && _CalDatabasePrepareRecurrencesInStoreForMigration(v7, v12, a1) && _CalDatabasePrepareParticipantsInStoreForMigration(v7, v12, a1) && _CalDatabasePrepareEventActionsInStoreForMigration(v7, v12, a1) && _CalDatabaseMigrateCalendarsWithConnection(v12))
    {
      v14 = _CalDatabaseCopyEventOccurrenceCache(v7);
      if (v14)
      {
        v15 = v14;
        v2 = _CalEventOccurrenceCacheMigrateEventOccurrencesWithConnection(v14, v12);
        CFRelease(v15);
      }

      else
      {
        v2 = 0;
      }

      _CalStoreSetFlag(a2, 8, 1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  if (CPRecordGetID() == 1)
  {
    Store = CPRecordGetStore();
    CalendarWithUID = _CalGetCalendarWithUID(Store);
    if (CalendarWithUID)
    {
      if (_CalDatabaseCalendarHasCalendarItemsWithEntityType(v7, CalendarWithUID, 101))
      {
        CalendarInStoreImmediately = _CalDatabaseCreateCalendarInStoreImmediately(v7, a2, v12);
        if (CalendarInStoreImmediately < 2)
        {
          goto LABEL_39;
        }

        v19 = CalendarInStoreImmediately;
        if (!_CalMoveCalendarItemsFromCalendarWithUIDToCalendarWithUID(v12, 1, CalendarInStoreImmediately))
        {
          goto LABEL_39;
        }

        v20 = _CalDatabaseCopyEventOccurrenceCache(v7);
        if (v20)
        {
          v21 = v20;
          v22 = _CalDatabaseCopyEventOccurrenceCache(v7);
          v2 = _CalEventOccurrenceCacheMigrateEventOccurrencesBetweenCalendars(v22, v12, 1, v19);
          CFRelease(v21);
        }
      }
    }
  }

  if (!v2)
  {
LABEL_39:
    __CalDatabaseRollbackTransaction(v7, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:2937");
LABEL_40:
    v2 = 0;
    goto LABEL_41;
  }

  __CalDatabaseCommitTransaction(v7, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:2929");
  _CalDatabasePostChangeNotificationToExternalClients(v7, 0);
  _CalDatabaseRevertInternal(v7, 1);
LABEL_41:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v2;
}

void _purgeServerAttachmentsFromCalendarItemsInStore(uint64_t a1, int a2)
{
  v4 = CalCopyDatabaseForRecord();
  v5 = CalDatabaseCopyOfAllAttachmentsInStore(v4, a1);
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
        v11 = CalAttachmentCopyOwner(ValueAtIndex);
        v12 = v11;
        if (a2)
        {
          v13 = CalEntityIsOfType(v11, a2) ^ 1;
        }

        else
        {
          v13 = 0;
        }

        if (!CalAttachmentIsBinary(ValueAtIndex) && (v13 & 1) == 0)
        {
          CalRemoveAttachment(ValueAtIndex);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    CFRelease(v6);
  }

  CalDatabaseSave(v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

BOOL CalDatabaseMigrateCalendarsWithEntityType(os_unfair_lock_s *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 & 0xFFFFFFFE;
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    CalDatabaseMigrateCalendarsWithEntityType_cold_1();
  }

  v8 = 0;
  if (a2 == 2)
  {
    v4 = 3;
  }

  v19 = v4;
  if (a3 != a4 && a1 && a3 && a4)
  {
    v10 = CalDatabaseCopyOfAllCalendarsInStore(a1, a3);
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      v8 = Count == 0;
      _purgeServerAttachmentsFromCalendarItemsInStore(a3, a2);
      if (Count >= 1)
      {
        v8 = 0;
        for (i = 0; Count != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
          if (CalCalendarGetUID() == 1 || !CalCalendarCanContainEntityType(ValueAtIndex, a2))
          {
            continue;
          }

          CanContainEntityType = CalCalendarCanContainEntityType(ValueAtIndex, v19);
          v16 = _CopyMatchingCalendarForMigration(ValueAtIndex, a2, a4);
          v17 = v16;
          if (CanContainEntityType)
          {
            if (!v16)
            {
              v17 = CalDatabaseCopyCalendar(a1, ValueAtIndex);
              CalStoreAddCalendar(a4, v17);
              CalCalendarSetCanContainEntityType(v17, a2);
            }

            _moveCalendarItemsOfTypeIntoCalendar(a1, a2, ValueAtIndex, v17, 0);
            CalCalendarSetCanContainEntityType(ValueAtIndex, v19);
          }

          else
          {
            if (!v16)
            {
              CalStoreRemoveCalendar(a3, ValueAtIndex);
              CalStoreAddCalendar(a4, ValueAtIndex);
              CalCalendarClearExternalProperties(ValueAtIndex, 1);
              goto LABEL_20;
            }

            _moveCalendarItemsOfTypeIntoCalendar(a1, a2, ValueAtIndex, v16, 1);
            CalRemoveCalendar(ValueAtIndex);
          }

          CFRelease(v17);
LABEL_20:
          CalCalendarSetExternalModificationTag(ValueAtIndex);
          CalCalendarSetSyncToken(ValueAtIndex);
          CalCalendarSetIsPublished(ValueAtIndex);
          CalCalendarSetPublishedURL(ValueAtIndex, 0);
          CalCalendarSetSharingStatus(ValueAtIndex);
          v8 = 1;
        }
      }

      if (v8)
      {
        CalStoreSetFlag(a4, 8, 1);
      }

      CFRelease(v11);
    }

    else
    {
      return 1;
    }
  }

  return v8;
}

const void *_CopyMatchingCalendarForMigration(uint64_t a1, int a2, uint64_t a3)
{
  v6 = CalStoreCopyCalendars(a3);
  v7 = v6;
  if (!v6)
  {
    v9 = CalCalendarCopyTitle(a1);
LABEL_14:
    ValueAtIndex = 0;
    v14 = 0;
    if (v9)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  Count = CFArrayGetCount(v6);
  v9 = CalCalendarCopyTitle(a1);
  if (Count < 1)
  {
    goto LABEL_14;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
    v12 = CalCalendarCopyTitle(ValueAtIndex);
    v13 = v12;
    if (v12)
    {
      if (v9)
      {
        break;
      }
    }

    if (v12)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (Count == ++v10)
    {
      goto LABEL_14;
    }
  }

  if (CFStringCompare(v9, v12, 0) || CalCalendarGetCalendarSupportsExactlyOneEntityTypeInStore(a3))
  {
LABEL_10:
    CFRelease(v13);
    goto LABEL_11;
  }

  CanContainEntityType = CalCalendarCanContainEntityType(ValueAtIndex, a2);
  if ((CanContainEntityType & 1) == 0)
  {
    CalCalendarSetCanContainEntityType(ValueAtIndex, 0);
  }

  CFRetain(ValueAtIndex);
  CFRelease(v13);
LABEL_15:
  CFRelease(v9);
  v14 = ValueAtIndex;
LABEL_16:
  if (v7)
  {
    CFRelease(v7);
  }

  return v14;
}

void _moveCalendarItemsOfTypeIntoCalendar(os_unfair_lock_s *a1, int a2, uint64_t a3, const void *a4, int a5)
{
  v8 = CalDatabaseCopyCalendarItemsWithCalendar(a1);
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
        v14 = ValueAtIndex;
        if (a5)
        {
          if (a2 != 2 || !CalEventIsDetached(ValueAtIndex))
          {
            CopyPreservingUniqueIdentifier = _CalCalendarItemCreateCopyPreservingUniqueIdentifier(v14, 1);
            CalCalendarItemSetExternalID(CopyPreservingUniqueIdentifier, 0);
            CalCalendarAddCalendarItemAndDetached(a4, CopyPreservingUniqueIdentifier);
            CFRelease(CopyPreservingUniqueIdentifier);
          }
        }

        else
        {
          CalCalendarItemClearExternalProperties(ValueAtIndex, 1);
          CalCalendarAddCalendarItemAndDetached(a4, v14);
        }
      }
    }

    CFRelease(v9);
  }
}

uint64_t CalStoreRemoveItemsOfTypeOlderThanDateInStore(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v6 = CalCopyDatabaseForRecord();
    if (v6)
    {
      v7 = v6;
      os_unfair_lock_lock(v6 + 20);
      v3 = *&v7[6]._os_unfair_lock_opaque;
      if (v3)
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          v8 = *&v7[6]._os_unfair_lock_opaque;
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }

        Database = CPRecordStoreGetDatabase();
        v3 = Database;
        if (Database)
        {
          if (CDBLockingAssertionsEnabled == 1)
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
          if (!v12)
          {
            goto LABEL_67;
          }

          v13 = v12;
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v12)
            {
              if (*(*v12 + 104))
              {
                v14 = CPRecordStoreGetContext();
                if (v14)
                {
                  os_unfair_lock_assert_owner(v14 + 20);
                }
              }
            }
          }

          v15 = CPSqliteConnectionStatementForSQL();
          if (v15)
          {
            v16 = v15;
            if (a2)
            {
              sqlite3_bind_int(*(v15 + 8), 1, a2);
              v17 = 2;
            }

            else
            {
              v17 = 1;
            }

            v18 = v16[1];
            v19 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v18, v17, v19);
            v20 = v16[1];
            ID = CPRecordGetID();
            sqlite3_bind_int(v20, v17 + 1, ID);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v16)
              {
                v22 = **v16;
                if (v22)
                {
                  if (*(v22 + 104))
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

            CPSqliteStatementSendResults();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v16)
              {
                v24 = **v16;
                if (v24)
                {
                  if (*(v24 + 104))
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

            CPSqliteStatementReset();
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v13)
            {
              if (*(*v13 + 104))
              {
                v26 = CPRecordStoreGetContext();
                if (v26)
                {
                  os_unfair_lock_assert_owner(v26 + 20);
                }
              }
            }
          }

          v27 = CPSqliteConnectionStatementForSQL();
          v3 = v27 != 0;
          if (v27)
          {
            v28 = v27;
            if (a2)
            {
              sqlite3_bind_int(*(v27 + 8), 1, a2);
              v29 = 2;
            }

            else
            {
              v29 = 1;
            }

            v30 = v28[1];
            v31 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v30, v29, v31);
            v32 = v28[1];
            v33 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v32, v29 + 1, v33);
            v34 = v28[1];
            v35 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v34, v29 + 2, v35);
            v36 = v28[1];
            v37 = CPRecordGetID();
            sqlite3_bind_int(v36, v29 + 3, v37);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v28)
              {
                v38 = **v28;
                if (v38)
                {
                  if (*(v38 + 104))
                  {
                    v39 = CPRecordStoreGetContext();
                    if (v39)
                    {
                      os_unfair_lock_assert_owner(v39 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementSendResults();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v28)
              {
                v40 = **v28;
                if (v40)
                {
                  if (*(v40 + 104))
                  {
                    v41 = CPRecordStoreGetContext();
                    if (v41)
                    {
                      os_unfair_lock_assert_owner(v41 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v13)
            {
              if (*(*v13 + 104))
              {
                v42 = CPRecordStoreGetContext();
                if (v42)
                {
                  os_unfair_lock_assert_owner(v42 + 20);
                }
              }
            }
          }

          v43 = CPSqliteConnectionStatementForSQL();
          if (v43)
          {
            v44 = v43;
            v45 = *(v43 + 8);
            v46 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v45, 1, v46);
            if (a2)
            {
              sqlite3_bind_int(v44[1], 2, a2);
              v47 = 3;
            }

            else
            {
              v47 = 2;
            }

            v48 = v44[1];
            v49 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v48, v47, v49);
            v50 = v44[1];
            v51 = CPRecordGetID();
            sqlite3_bind_int(v50, v47 + 1, v51);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v44)
              {
                v52 = **v44;
                if (v52)
                {
                  if (*(v52 + 104))
                  {
                    v53 = CPRecordStoreGetContext();
                    if (v53)
                    {
                      os_unfair_lock_assert_owner(v53 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementSendResults();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v44)
              {
                v54 = **v44;
                if (v54)
                {
                  if (*(v54 + 104))
                  {
                    v55 = CPRecordStoreGetContext();
                    if (v55)
                    {
                      os_unfair_lock_assert_owner(v55 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
          }

          else
          {
LABEL_67:
            v3 = 0;
          }
        }
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }

      os_unfair_lock_unlock(v7 + 20);
      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t _DeleteCalendarItemRowHandler(uint64_t a1, __CFArray **a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  Mutable = *a2;
  if (!*a2)
  {
    Mutable = CFArrayCreateMutable(0, 1, 0);
    *a2 = Mutable;
  }

  CFArrayAppendValue(Mutable, v3);
  return 0;
}

BOOL _CalStoreGetBoolConstraintValue(uint64_t a1, const void *a2, const void *a3, _BOOL8 a4)
{
  v5 = _CalStoreCopyConstraintValue(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      a4 = CFBooleanGetValue(v6) != 0;
    }

    CFRelease(v6);
  }

  return a4;
}

const void *_CalStoreCopyConstraintValue(uint64_t a1, const void *a2, const void *a3)
{
  v5 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (!v5)
  {
    return 0;
  }

  v7 = TypeID;
  if (CFGetTypeID(v5) == TypeID && (v8 = CFDictionaryGetValue(v5, a2)) != 0 && (v9 = v8, CFGetTypeID(v8) == v7))
  {
    Value = CFDictionaryGetValue(v9, a3);
    v11 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v5);
  return v11;
}

BOOL CalStoreGetSupportsIncomingInvitations(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsIncomingInvitations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL _CalStoreGetBoolConstraintValueForStore(uint64_t a1, const void *a2, _BOOL8 a3)
{
  v5 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v5)
  {
    v7 = TypeID;
    if (CFGetTypeID(v5) == TypeID && (Value = CFDictionaryGetValue(v5, @"CalStore")) != 0 && (v9 = Value, CFGetTypeID(Value) == v7) && (v10 = CFDictionaryGetValue(v9, a2)) != 0)
    {
      v11 = v10;
      CFRetain(v10);
      CFRelease(v5);
      v12 = CFGetTypeID(v11);
      if (v12 == CFBooleanGetTypeID())
      {
        a3 = CFBooleanGetValue(v11) != 0;
      }
    }

    else
    {
      v11 = v5;
    }

    CFRelease(v11);
  }

  return a3;
}

BOOL CalStoreGetSupportsInvitationModifications(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsInvitationModifications", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreGetSupportsOutgoingInvitations(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsOutgoingInvitations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

uint64_t CalStoreAllowsTasks(uint64_t a1)
{
  if (CalIsReminderBridgeEnabled())
  {
    return 0;
  }

  return CalStoreAllowsTasksPrivate(a1);
}

uint64_t CalStoreAllowsTasksPrivate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Flag = _CalStoreGetFlag(a1, 1);
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

  v5 = CPRecordGetProperty() == 3 || Flag;
  if (v5)
  {
    goto LABEL_12;
  }

  v6 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
  if (v6)
  {
    CFRelease(v6);
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = 1;
LABEL_13:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v7;
}

void CalStoreSetAllowsTasks(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (CalIsReminderBridgeEnabled())
    {
      v3 = CDBLogHandle;
      v4 = 1;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v5 = v3;
        v6 = CalStoreCopyExternalID(a1);
        v8[0] = 67109378;
        v8[1] = 1;
        v9 = 2114;
        v10 = v6;
        _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_INFO, "Ignoring attempt to set allowsTasks to %d on store %{public}@. Forcing to NO", v8, 0x12u);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  CalStoreSetFlag(a1, 1, v4);
  v7 = *MEMORY[0x1E69E9840];
}

BOOL _CalStoreAllowedEvents(uint64_t a1)
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

  return (CPRecordGetOriginalProperty() & 2) == 0;
}

BOOL CalStoreRecurrenceSeriesMustIncludeMoreThanFirstOccurrence(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"RecurrenceSeriesMustIncludeMoreThanFirstOccurrence", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsStructuredLocations(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsStructuredLocations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsReminderActions(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsReminderActions", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsReminderLocations(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsReminderLocations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsAlarmProximity(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsAlarmProximity", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreGetFlag2(uint64_t a1, int a2)
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

void CalStoreSetFlag2(uint64_t a1, int a2, int a3)
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
  if (a3)
  {
    v9 = Property | a2;
  }

  else
  {
    v9 = Property & ~a2;
  }

  if (v9 != Property)
  {
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
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalStoreSupportsAutoGeocodingStructuredLocations(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsAutoGeocodingStructuredLocations", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsDelegation(uint64_t a1)
{
  result = CalStoreGetFlag(a1, 0x20000000);
  if (result)
  {
    return !CalStoreGetFlag(a1, 2);
  }

  return result;
}

BOOL CalStoreSupportsDelegateEnumeration(uint64_t a1)
{
  result = CalStoreGetFlag(a1, 0x40000000);
  if (result)
  {
    return !CalStoreGetFlag(a1, 2);
  }

  return result;
}

BOOL CalStoreRequiresSeparateFilesForAllAttachments(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalAttachment", @"RequiresSeparateFilesForAllAttachments", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalStoreRequiresMSFormattedUIDKey(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"RequiresMSFormattedUID", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetStatusIsAccurateInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"StatusIsAccurate", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventRequiresOutgoingInvitationsInDefaultCalendarInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"RequiresOutgoingInvitationsInDefaultCalendar", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetDeliverySourceOrExternalIDRequiredForResponseInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"ResponseRequiresDeliverySourceOrExternalID", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetProposedStatusRequiredForResponseInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"ResponseRequiresProposedStatus", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetRejectedStatusChangeRequiresNoExternalStatusInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"RejectedStatusChangeRequiresNoExternalStatus", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventDurationConstrainedToRecurrenceIntervalInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"DurationConstrainedToRecurrenceInterval", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetOccurrencesMustOccurOnSeparateDaysInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"OccurrencesMustOccurOnSeparateDays", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetFutureStartDateLimitedToOccurrenceCacheBoundsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"FutureStartLimitedToOccurrenceCache", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

uint64_t CalCalendarItemGetAvailabilitySupportedByStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"SupportsLimitedAvailability", 0))
  {
    BoolConstraintValue = 2;
  }

  else
  {
    BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"SupportsAvailability", 0);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventCancelDeletedEventsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"CancelDeletedEvents", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventDeclineDeletedInvitationsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"DeclineDeletedInvitations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventURLFieldSupportedInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"SupportsURL", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetOccurrenceOrderEnforcedAfterDetachmentInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"OccurrenceOrderEnforcedAfterDetachment", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

uint64_t CalStoreSupportsAlarmTriggerKey(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CalStoreSupportsAlarmTriggerKey(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

uint64_t _CalStoreSupportsAlarmTriggerKey(uint64_t a1, const void *a2)
{
  v3 = _CalAlarmCopyConstraintsForStore(a1);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, @"SupportedTriggers");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFArrayGetTypeID()))
  {
    v10.length = CFArrayGetCount(v6);
    v10.location = 0;
    v8 = CFArrayContainsValue(v6, v10, a2) != 0;
  }

  else
  {
    v8 = 1;
  }

  CFRelease(v4);
  return v8;
}

uint64_t CalStoreSupportsAlarmsTriggeringAfterStartDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAlarmCopyConstraintsForStore(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (!v3)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(v3, @"SupportsAlarmsTriggeringAfterStartDate");
  v7 = !Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFBooleanGetTypeID()) || CFBooleanGetValue(v5) != 0;
  CFRelease(v3);
  return v7;
}

uint64_t _CalStoreGetIntConstraintValue(uint64_t a1, const void *a2, const void *a3)
{
  v3 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v4 = _CalStoreCopyConstraintValue(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    CFRelease(v5);
    return valuePtr;
  }

  return v3;
}

uint64_t CalStoreGetMaxAlarmsSupported(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IntConstraintValue = _CalStoreGetIntConstraintValue(a1, @"CalEvent", @"MaximumNumberOfAlarms");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntConstraintValue;
}

uint64_t CalStoreGetMaxRecurrencesSupported(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IntConstraintValue = _CalStoreGetIntConstraintValue(a1, @"CalEvent", @"MaximumNumberOfRecurrences");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntConstraintValue;
}

uint64_t CalStoreSupportsRecurrencesOnDetachedEvents()
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return 0;
}

BOOL CalStoreAreRecurrencesPinnedToMonthDays(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"RecurrencesPinnedToMonthDays", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalStoreMustAcknowledgeMasterEvent(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"MustAcknowledgeMasterEvent", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL _CalAttendeeGetBoolConstraintValueForStore(uint64_t a1, const void *a2, _BOOL8 a3)
{
  v5 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v5)
  {
    v7 = TypeID;
    if (CFGetTypeID(v5) == TypeID && (Value = CFDictionaryGetValue(v5, @"CalAttendee")) != 0 && (v9 = Value, CFGetTypeID(Value) == v7) && (v10 = CFDictionaryGetValue(v9, a2)) != 0)
    {
      v11 = v10;
      CFRetain(v10);
      CFRelease(v5);
      v12 = CFGetTypeID(v11);
      if (v12 == CFBooleanGetTypeID())
      {
        a3 = CFBooleanGetValue(v11) != 0;
      }
    }

    else
    {
      v11 = v5;
    }

    CFRelease(v11);
  }

  return a3;
}

BOOL CalAttendeeGetUseDeletedByOrganizerStatusInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalAttendeeGetBoolConstraintValueForStore(a1, @"UseDeletedByOrganizerStatus", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreAttendeeCanUpdateLastModified(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalAttendee", @"CanUpdateLastModified", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventResponseCommentsSupportedInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"SupportsResponseComment", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalAttendeeIsStatusKnownForOrganizedEventsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalAttendeeGetBoolConstraintValueForStore(a1, @"StatusIsKnownForOrganizedEvents", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalAttendeeIsStatusKnownForInvitedEventsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalAttendeeGetBoolConstraintValueForStore(a1, @"StatusIsKnownForInvitedEvents", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalAttendeeRequireSearchInSingleAccountInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalAttendeeGetBoolConstraintValueForStore(a1, @"RequireAttendeeSearchInSingleAccount", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalTaskAllDayDueDatesSupportedInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalTask", @"supportsAllDayDueDates", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

uint64_t _CalStoreSaveAddedCalendars(uint64_t a1)
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
  if (!Property)
  {
    CPRecordGetID();
    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v4 = Property;
  Count = CFArrayGetCount(Property);
  ID = CPRecordGetID();
  if (Count >= 1)
  {
    v7 = ID;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
      _CalCalendarSetStoreId(ValueAtIndex, v7);
    }
  }

  if (a1)
  {
LABEL_13:
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

LABEL_17:

  return CPRecordInitializeProperty();
}

void _CalStoreLoadConstraints(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
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

  v3 = CPRecordCopyProperty();
  if (!v3)
  {
    v6 = 0;
    if (!a1)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v4 = [MEMORY[0x1E6992F20] constraintsURLForName:v3];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
    if (v5)
    {
      v13 = 0;
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v13];
      v7 = v13;
      if (!v6)
      {
        v8 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543618;
          v15 = v4;
          v16 = 2112;
          v17 = v7;
          _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_FAULT, "Failed to load constraints plist (%{public}@): %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v15 = v4;
        _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_FAULT, "Failed to load constraints data (%{public}@)", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v15 = v3;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_FAULT, "Failed to get URL for stored constraints name: %{public}@", buf, 0xCu);
    }

    v6 = 0;
  }

  if (a1)
  {
LABEL_23:
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

LABEL_27:
  CPRecordInitializeProperty();

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _CalStoreDefaultMarkAlarmChange(uint64_t a1)
{
  _CalStoreDefaultAlarmChanges(a1);
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

uint64_t _CalStoreDefaultAlarmChanges(uint64_t a1)
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

uint64_t _CalStoreSetFlag(uint64_t a1, int a2, int a3)
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
  if (a3)
  {
    v8 = result | a2;
  }

  else
  {
    v8 = result & ~a2;
  }

  if (v8 != result)
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

    return CPRecordSetProperty();
  }

  return result;
}

const void *_CalAlarmCopyConstraintsForStore(uint64_t a1)
{
  v1 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (!v1)
  {
    return 0;
  }

  v3 = TypeID;
  if (CFGetTypeID(v1) != TypeID)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(v1, @"CalAlarm");
  v5 = Value;
  if (Value)
  {
    if (CFGetTypeID(Value) == v3)
    {
      CFRetain(v5);
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:
  CFRelease(v1);
  return v5;
}

void sub_1DEC535A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CalEventUpdateFromICSEventWithOptions(void *a1, void *a2, const void *a3, uint64_t a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, unsigned __int8 a9)
{
  v207 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  v18 = a7;
  v19 = a8;
  if (v16)
  {
    if (a3)
    {
      v20 = [v16 isAllDay];
      IsAllDay = CalCalendarItemIsAllDay(a3);
      if (v19 && v20 != IsAllDay)
      {
        [v19 addObject:II_ALL_DAY_KEY];
      }

      CalCalendarItemSetAllDay(a3, v20);
      started = _CalOriginalStartDateFromICSComponent(v16, v17);
      CalEventSetOriginalStartDate(a3, started);
      v23 = [v16 recurrence_id];

      v176 = a6;
      if (v23)
      {
        v24 = a4;
      }

      else
      {
        v24 = a3;
      }

      v28 = CalEventCopyAttendees(v24);
      v169 = a5;
      v175 = v18;
      v170 = v19;
      v178 = a3;
      v166 = v28;
      if ([v28 count])
      {
        v29 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v28, "count")}];
        v192 = 0u;
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v30 = v28;
        v31 = [v30 countByEnumeratingWithState:&v192 objects:v206 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v193;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v193 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = CalAttendeeCopyAddress(*(*(&v192 + 1) + 8 * i));
              if (v35)
              {
                [v29 addObject:v35];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v192 objects:v206 count:16];
          }

          while (v32);
        }

        v19 = v170;
        a3 = v178;
      }

      else
      {
        v29 = 0;
      }

      v36 = MEMORY[0x1E695DF20];
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
      v38 = [v36 dictionaryWithObject:v37 forKey:@"ItemBridgeOptions"];

      v164 = v38;
      v18 = v175;
      v165 = CalCalendarItemUpdateFromICSComponent(a3, a4, v16, v17, v169, v38, v175, v19, a9);
      if ((v165 & 1) == 0)
      {
        v45 = CDBiCalendarConversionHandle;
        if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1DEBB1000, v45, OS_LOG_TYPE_DEBUG, "CalCalendarItemUpdateFromICSComponent failed", buf, 2u);
        }

LABEL_159:

        v26 = v165;
        goto LABEL_160;
      }

      v39 = v16;
      v159 = v17;
      v40 = [v39 isAllDay];
      v41 = [v39 dtend];

      v177 = v39;
      if (v41)
      {
        v42 = [v39 dtend];
        v43 = v42;
        if (v40)
        {
          v44 = CalDateFromICSDateAsUTC(v42) + -1.0;
        }

        else
        {
          v49 = [v42 hasFloatingTimeZone];

          v50 = [v39 dtend];
          v43 = v50;
          if (!v49)
          {
            v44 = CalDateFromICSDate(v50, v159);

            v99 = [v39 dtend];
            CalCreateDateTimeFromICSDate(v99, v159);
            v101 = v100;

            if (CFStringCompare(v101, @"_float", 0))
            {
              v102 = CFTimeZoneCreateWithName(0, v101, 1u);
              CalCalendarItemSetEndTimeZone(a3, v102);
              if (v102)
              {
                CFRelease(v102);
              }
            }

            else
            {
              CalCalendarItemSetEndTimeZone(a3, 0);
            }

            CalDateTimeRelease();
            v39 = v177;
LABEL_41:
            EndDate = CalEventGetEndDate(a3);
            CalEventSetEndDate(a3, v44);

            if (v19 && EndDate != v44)
            {
              [v19 addObject:II_TO_KEY];
            }

            Availability = CalEventGetAvailability(a3);
            v56 = [v39 transp] == 2;
            if (Availability != v56)
            {
              CalEventSetAvailability(a3, v56);
            }

            v155 = [v39 x_calendarserver_private_comment];
            CalEventSetResponseComment(a3, v155);
            v158 = [v39 x_calendarserver_attendee_comment];
            v167 = CalEventCopyAttendees(a3);
            v156 = v17;
            v157 = v16;
            if (v167)
            {
              v57 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v158, "count")}];
              v188 = 0u;
              v189 = 0u;
              v190 = 0u;
              v191 = 0u;
              v58 = v158;
              v59 = [v58 countByEnumeratingWithState:&v188 objects:v205 count:16];
              v60 = v167;
              if (v59)
              {
                v61 = v59;
                v62 = *v189;
                do
                {
                  for (j = 0; j != v61; ++j)
                  {
                    if (*v189 != v62)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v64 = *(*(&v188 + 1) + 8 * j);
                    v65 = [v64 x_calendarserver_attendee_ref];
                    if (v65)
                    {
                      v66 = v65;
                      v67 = [v64 value];

                      if (v67)
                      {
                        v68 = [v64 x_calendarserver_attendee_ref];
                        [v57 setObject:v64 forKeyedSubscript:v68];
                      }
                    }
                  }

                  v61 = [v58 countByEnumeratingWithState:&v188 objects:v205 count:16];
                }

                while (v61);
              }

              v69 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
              v70 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
              Count = CFArrayGetCount(v167);
              if (Count >= 1)
              {
                v72 = Count;
                v160 = v70;
                v162 = v69;
                v153 = 0;
                v73 = 0;
                v74 = *MEMORY[0x1E6993100];
                a3 = v178;
                v173 = Count;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v60, v73);
                  if (ValueAtIndex)
                  {
                    break;
                  }

LABEL_75:
                  if (v72 == ++v73)
                  {
                    CFRelease(v60);

                    v39 = v177;
                    if (v153)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_79;
                  }
                }

                v76 = ValueAtIndex;
                v77 = CalAttendeeCopyAddress(ValueAtIndex);
                v78 = v77;
                if (!v77)
                {
LABEL_74:

                  goto LABEL_75;
                }

                v180 = [v77 absoluteString];
                v182 = CalAttendeeCopyResponseComment(v76);
                v79 = [v57 objectForKeyedSubscript:v180];
                v80 = [v79 x_calendarserver_dtstamp];
                v81 = v74;
                if (v80)
                {
                  v82 = NSDateFromICSValueInTimeZone();
                  [v82 timeIntervalSinceReferenceDate];
                  v81 = v83;
                }

                CalParticipantSetCommentLastModified(v76, v81);
                v84 = [v79 value];
                if (CalEqualStrings())
                {
LABEL_73:

                  a3 = v178;
                  v72 = v173;
                  goto LABEL_74;
                }

                CalAttendeeSetResponseComment(v76, v84);
                v85 = [v29 containsObject:v78];
                v86 = [v182 CalStringByRemovingAutoComment];
                v87 = [v84 CalStringByRemovingAutoComment];
                v88 = 0;
                v171 = v87;
                if (v85 && v87)
                {
                  if ([v87 length])
                  {
                    if ((CalEqualStrings() & 1) != 0 || CalAttendeeGetType(v76) == 2)
                    {
                      goto LABEL_72;
                    }

                    v88 = 1;
                    v153 = 1;
                  }

                  else
                  {
                    v88 = 0;
                  }
                }

                CalParticipantSetCommentChanged(v76, v88);
LABEL_72:

                v60 = v167;
                goto LABEL_73;
              }

              CFRelease(v167);

              v39 = v177;
              a3 = v178;
            }

LABEL_79:
            InvitationChangedProperties = CalEventGetInvitationChangedProperties(a3);
            CalEventRemoveInvitationChangedProperties(a3, 16);
            v90 = CalEventGetInvitationChangedProperties(a3);
            if (InvitationChangedProperties && !v90)
            {
              CalEventSetNeedsNotification(a3, 0);
            }

LABEL_82:
            v91 = [v39 x_apple_travel_duration];
            v92 = [v91 duration];
            v172 = v92;
            if (v92)
            {
              [v92 timeInterval];
              v93 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            }

            else
            {
              v93 = 0;
            }

            v94 = CalEventCopyTravelTime(a3);
            v95 = v94;
            if (!v94 && v93 || v94 && ([v94 isEqual:v93] & 1) == 0)
            {
              CalEventSetTravelTime(a3, v93);
            }

            v163 = [v39 x_apple_travel_advisory_behavior];
            v96 = [v163 value];
            v97 = v96;
            v174 = v91;
            if (v96 && [v96 length])
            {
              if ([v97 isEqualToString:*MEMORY[0x1E69E3C30]])
              {
                v98 = 2;
                goto LABEL_101;
              }

              if ([v97 isEqualToString:*MEMORY[0x1E69E3C38]])
              {
                v98 = 1;
                goto LABEL_101;
              }

              [v97 isEqualToString:*MEMORY[0x1E69E3C28]];
            }

            v98 = 0;
LABEL_101:
            v168 = v93;
            CalEventSetTravelAdvisoryBehavior(a3, v98);
            v103 = [v39 x_apple_suggestionInfoOpaqueKey];
            v104 = v39;
            v105 = [v39 x_apple_suggestionInfoUniqueKey];
            v106 = v105;
            v181 = v95;
            v183 = v103;
            v161 = v97;
            if (v103 && v105)
            {
              SuggestedEventInfo = CalEventCopySuggestedEventInfo(a3);
              v108 = CDBiCalendarConversionHandle;
              v109 = os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG);
              if (SuggestedEventInfo)
              {
                if (v109)
                {
                  *buf = 136315906;
                  v198 = "BOOL CalEventUpdateFromICSEventWithOptions(ICSEvent *__strong, ICSCalendar *__strong, CalEventRef, CalEventRef, CalDatabaseRef, NSUInteger, __strong id<CDBAccountInfo>, NSMutableSet *__strong, BOOL)";
                  v199 = 2112;
                  v200 = SuggestedEventInfo;
                  v201 = 2112;
                  v202 = a3;
                  v203 = 2112;
                  v204 = v177;
                  _os_log_impl(&dword_1DEBB1000, v108, OS_LOG_TYPE_DEBUG, "%s - Existing suggested event info %@ found for calEvent %@ and icsEvent %@", buf, 0x2Au);
                }
              }

              else
              {
                if (v109)
                {
                  *buf = 136315650;
                  v198 = "BOOL CalEventUpdateFromICSEventWithOptions(ICSEvent *__strong, ICSCalendar *__strong, CalEventRef, CalEventRef, CalDatabaseRef, NSUInteger, __strong id<CDBAccountInfo>, NSMutableSet *__strong, BOOL)";
                  v199 = 2112;
                  v200 = a3;
                  v201 = 2112;
                  v202 = v177;
                  _os_log_impl(&dword_1DEBB1000, v108, OS_LOG_TYPE_DEBUG, "%s - No existing suggested event info for calEvent %@ and icsEvent %@, creating one", buf, 0x20u);
                }

                SuggestedEventInfo = CalDatabaseCreateSuggestedEventInfo(v169);
                CalEventSetSuggestedEventInfo(a3, SuggestedEventInfo);
              }

              v110 = CalSuggestedEventInfoCopyOpaqueKey(SuggestedEventInfo);
              if (([v110 isEqualToString:v183] & 1) == 0)
              {
                CalSuggestedEventInfoSetOpaqueKey(SuggestedEventInfo);
              }

              v111 = CalSuggestedEventInfoCopyUniqueKey(SuggestedEventInfo);
              if (([v111 isEqualToString:v106] & 1) == 0)
              {
                CalSuggestedEventInfoSetUniqueKey(SuggestedEventInfo);
              }

              ChangedFields = CalSuggestedEventInfoGetChangedFields(SuggestedEventInfo);
              if (ChangedFields != [v177 x_apple_suggestionInfoChangedFields])
              {
                CalSuggestedEventInfoSetChangedFields(SuggestedEventInfo);
              }

              v113 = v106;
              ChangesAcknowledged = CalSuggestedEventInfoGetChangesAcknowledged(SuggestedEventInfo);
              if (ChangesAcknowledged != [v177 x_apple_suggestionInfoChangesAcknowledged])
              {
                CalSuggestedEventInfoSetChangesAcknowledged(SuggestedEventInfo);
              }

              v115 = [v177 x_apple_suggestionInfoTimestamp];
              v116 = [v159 systemDateForDate:v115 options:1];

              v117 = CalSuggestedEventInfoGetTimestamp(SuggestedEventInfo);
              if (([v117 isEqualToDate:v116] & 1) == 0)
              {
                CalSuggestedEventInfoSetTimestamp(SuggestedEventInfo);
              }

              CFRelease(SuggestedEventInfo);

              v104 = v177;
              v106 = v113;
              v95 = v181;
            }

            v154 = v106;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v118 = [v104 relatedTo];
            v119 = [v118 countByEnumeratingWithState:&v184 objects:v196 count:16];
            if (v119)
            {
              v120 = v119;
              v121 = *v185;
              v122 = *MEMORY[0x1E69E3FB0];
              while (2)
              {
                for (k = 0; k != v120; ++k)
                {
                  if (*v185 != v121)
                  {
                    objc_enumerationMutation(v118);
                  }

                  v124 = *(*(&v184 + 1) + 8 * k);
                  v125 = [v124 parameterValueForName:v122];
                  v126 = v125;
                  if (v125 && [v125 longValue] == 1)
                  {
                    v127 = [v124 value];

                    goto LABEL_132;
                  }
                }

                v120 = [v118 countByEnumeratingWithState:&v184 objects:v196 count:16];
                if (v120)
                {
                  continue;
                }

                break;
              }

              v127 = 0;
LABEL_132:
              a3 = v178;
              v95 = v181;
            }

            else
            {
              v127 = 0;
            }

            v128 = CalEventCopyRecurrenceSet(a3);
            if ((CalEqualStrings() & 1) == 0)
            {
              CalEventSetRecurrenceSet(a3);
            }

            if ((*&v176 & 0x800000) != 0)
            {
              v129 = [v177 x_apple_etag];
              CalEventSetExternalModificationTag(a3, v129);

              v130 = [v177 x_apple_scheduletag];
              CalEventSetExternalScheduleID(a3, v130);
            }

            if ((v176 & 2) != 0)
            {
              v131 = CalEventCopyCalendar(a3);
              if (v131)
              {
                v132 = v131;
                CalCalendarItemSetupOrganizerAndSelfAttendeeForImportedItem(a3, v131, v175);
                CFRelease(v132);
              }

              else
              {
                v133 = CDBiCalendarConversionHandle;
                if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1DEBB1000, v133, OS_LOG_TYPE_DEBUG, "No calendar; skipping setting self attendee and organizer properties during iMIP import", buf, 2u);
                }
              }

              IsPhantomMaster = CalCalendarItemIsPhantomMaster(a3);
              IsNew = CalEntityIsNew(a3);
              IsInvite = CalEventIsInvite(a3);
              v137 = CalCalendarItemCopySelfAttendee(a3);
              if (v137)
              {
                CFRelease(v137);
                if (!IsPhantomMaster && (IsNew & 1) != 0 && IsInvite)
                {
                  v138 = CalCalendarItemCopyOrganizer(a3);
                  if (v138)
                  {
                    v139 = v138;
                    CalParticipantSetScheduleAgent(v138, 1u);
                    CFRelease(v139);
                  }
                }
              }
            }

            v140 = [v177 x_apple_special_day];
            if (v140)
            {
              CalEventSetSpecialDayString(a3, v140);
            }

            v141 = [v177 x_apple_creator_identity];
            if (v141)
            {
              CalEventSetCreatorIdentityString(a3, v141);
            }

            v142 = [v177 x_apple_creator_team_identity];
            if (v142)
            {
              CalEventSetCreatorTeamIdentityString(a3, v142);
            }

            if ((*&v176 & 0x800000) != 0)
            {
              v143 = [v177 x_apple_ews_itemid];

              if (v143)
              {
                v144 = [v177 x_apple_ews_itemid];
                [v177 x_apple_ews_changekey];
                v179 = v127;
                v145 = v128;
                v147 = v146 = v95;
                v148 = [v177 x_apple_ews_permission];
                v149 = a3;
                v150 = v148;
                CalSetEWSComponentsOnCalCalendarItem(v149, v144, v147, v148);

                v95 = v146;
                v128 = v145;
                v127 = v179;
              }
            }

            v17 = v156;
            v16 = v157;
            v18 = v175;
            v19 = v170;
            goto LABEL_159;
          }

          v44 = CalDateFromICSDateAsUTC(v50);
        }
      }

      else if (v40)
      {
        v46 = [v39 duration];
        [v46 timeInterval];
        v48 = v47 + -1.0;

        if (v48 < 0.0)
        {
          v48 = 0.0;
        }

        v43 = [v39 dtstart];
        v44 = v48 + CalDateFromICSDateAsUTC(v43);
      }

      else
      {
        v43 = [v39 dtstart];
        v51 = CalDateFromICSDate(v43, v159);
        v52 = [v39 duration];
        [v52 timeInterval];
        v44 = v51 + v53;
      }

      goto LABEL_41;
    }

    v27 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v27, OS_LOG_TYPE_DEBUG, "Cannot update a NULL Cal event", buf, 2u);
    }

    v26 = 0;
  }

  else
  {
    v25 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEBUG, "icsEvent is nil. There's nothing for us to do", buf, 2u);
    }

    v26 = 1;
  }

LABEL_160:

  v151 = *MEMORY[0x1E69E9840];
  return v26;
}

id ICSEventFromCalEventFixUpCalEventWithOptions(id a1, int a2, unint64_t a3)
{
  v3 = a1;
  v121 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69E3CC0]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = CalEventCopyDetachedEvents(v3);
    v116 = v6;
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7))
      {
        Count = CFArrayGetCount(v8);
        if (Count >= 1)
        {
          v10 = Count;
          for (i = 0; i != v10; ++i)
          {
            v12 = MEMORY[0x1E695DF00];
            ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
            v14 = [v12 dateWithTimeIntervalSinceReferenceDate:CalEventGetOriginalStartDate(ValueAtIndex)];
            [v6 addObject:v14];
          }
        }
      }

      [v5 setObject:v6 forKey:@"ItemBridgeExceptionDates"];
      CFRelease(v8);
    }

    else
    {
      [v5 setObject:v6 forKey:@"ItemBridgeExceptionDates"];
    }

    CalEventCopyStartDate(v3);
    IsAllDay = CalEventIsAllDay(v3);
    v16 = [MEMORY[0x1E696AD98] numberWithBool:IsAllDay];
    [v5 setObject:v16 forKey:@"ItemBridgeIsAllDay"];

    v17 = CalEventCopyOriginalEvent(v3);
    v18 = v17;
    v117 = v5;
    if (v17)
    {
      UID = CalEventGetUID(v17);
      if (UID != CalEventGetUID(v3))
      {
        v20 = CalEventIsAllDay(v18);
        v21 = 0;
LABEL_14:
        started = CalCalendarItemCopyStartTimeZone(v3);
        v23 = started;
        cf = v18;
        if (IsAllDay)
        {

          v23 = 0;
        }

        else if (started)
        {
          [v117 setObject:started forKey:@"ItemBridgeStartDateTimezone"];
        }

        EndDate = CalEventGetEndDate(v3);
        v25 = CalCalendarItemCopyEndTimeZone(v3);
        v112 = v25;
        if (IsAllDay)
        {
          v26 = CFDateCreate(0, EndDate + 1.0);
          ICSFloatingDateOnlyFromCFDate(v26, v25);
        }

        else
        {
          v26 = CFDateCreate(0, EndDate);
          ICSDateFromCFDate(v26, v25);
        }
        v27 = ;
        if (v26)
        {
          CFRelease(v26);
        }

        [v4 setDtend:v27];
        OriginalStartDate = CalEventGetOriginalStartDate(v3);
        v29 = CFDateCreate(0, OriginalStartDate);
        if (fabs(OriginalStartDate) >= 2.22044605e-16 && vabdd_f64(OriginalStartDate, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
        {
          v30 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v120 = OriginalStartDate;
            _os_log_impl(&dword_1DEBB1000, v30, OS_LOG_TYPE_DEBUG, "Setting a recurrence_id based on %f", buf, 0xCu);
          }

          if (v20)
          {
            ICSFloatingDateOnlyFromCFDate(v29, v23);
          }

          else
          {
            ICSDateFromCFDate(v29, v23);
          }
          v31 = ;
          [v4 setRecurrence_id:v31];
        }

        v113 = v23;
        if (v29)
        {
          CFRelease(v29);
        }

        CalDateTimeRelease();
        v32 = v117;
        v33 = a3;
        if ((CalCalendarItemUpdateICSComponent(v3, v4, v117, a3) & 1) == 0)
        {
          v37 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            v38 = v37;
            v39 = CalEventGetUID(v3);
            *buf = 67109120;
            LODWORD(v120) = v39;
            _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_DEBUG, "Couldn't update the calendar item components of event %d", buf, 8u);
          }

          if ((v21 & 1) == 0)
          {
            CFRelease(cf);
          }

          v3 = 0;
          v40 = v116;
          v41 = v112;
          goto LABEL_103;
        }

        [v4 setX_apple_needs_reply:CalEventShouldDisplayNotification(v3)];
        if (CalCalendarItemGetAvailability(v3) == 1)
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        [v4 setTransp:v34];
        v35 = CalEventCopyUniqueIdentifier(v3);
        if (v35)
        {
          v36 = v35;
          if (v21)
          {
            [v4 setUid:v36];
          }

          else
          {
            v44 = CalEventCopyUniqueIdentifier(cf);
            [v4 setUid:v44];
            if (a2)
            {
              v45 = CalGetRealUIDFromRecurrenceUID(v36);
              if (CFStringCompare(v45, v44, 0))
              {
                v46 = CalGetRecurrenceUIDFromRealUID(v44, OriginalStartDate);
                CalEventSetUniqueIdentifier(v3, v46);
              }
            }

            if (v44)
            {
              CFRelease(v44);
            }
          }

          CFRelease(v36);
          goto LABEL_64;
        }

        if (v21)
        {
          v36 = [MEMORY[0x1E69E3C80] makeUID];
          [v4 setUid:v36];
          v42 = CDBiCalendarConversionHandle;
          if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_62;
          }

          *buf = 138412290;
          v120 = *&v36;
          v43 = "This event has no original event. Creating a new uid %@";
        }

        else
        {
          v47 = CalEventCopyUniqueIdentifier(cf);
          if (v47)
          {
            v48 = v47;
            v49 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v120 = *&v48;
              _os_log_impl(&dword_1DEBB1000, v49, OS_LOG_TYPE_DEBUG, "Using uid from owning event: %@", buf, 0xCu);
            }

            [v4 setUid:v48];
            v36 = CalGetRecurrenceUIDFromRealUID(v48, OriginalStartDate);
            CFRelease(v48);
            goto LABEL_62;
          }

          v36 = [MEMORY[0x1E69E3C80] makeUID];
          [v4 setUid:v36];
          v42 = CDBiCalendarConversionHandle;
          if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
LABEL_62:
            if (a2)
            {
              CalEventSetUniqueIdentifier(v3, v36);
            }

LABEL_64:

            if ((v21 & 1) == 0)
            {
              CFRelease(cf);
            }

            v40 = v116;
            if ((a3 & 0x41000) == 0)
            {
              v50 = CalEventCopyResponseComment(v3);
              if (v50)
              {
                [v4 setX_calendarserver_private_comment:v50];
              }
            }

            v51 = CalEventCopyTravelTime(v3);
            v52 = v51;
            if (v51)
            {
              v53 = [v51 integerValue];
              if (v53 < 1)
              {
                [v4 setX_apple_travel_duration:0];
              }

              else
              {
                v54 = v53;
                v55 = objc_alloc_init(MEMORY[0x1E69E3D00]);
                v56 = [objc_alloc(MEMORY[0x1E69E3CB8]) initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v54];
                [v55 setDuration:v56];
                [v4 setX_apple_travel_duration:v55];
              }
            }

            TravelAdvisoryBehavior = CalEventGetTravelAdvisoryBehavior(v3);
            v109 = v52;
            if (TravelAdvisoryBehavior == 1)
            {
              v58 = MEMORY[0x1E69E3C38];
            }

            else
            {
              if (TravelAdvisoryBehavior != 2)
              {
                goto LABEL_80;
              }

              v58 = MEMORY[0x1E69E3C30];
            }

            v59 = *v58;
            if (v59)
            {
              v107 = v59;
              v60 = [objc_alloc(MEMORY[0x1E69E3CF8]) initWithString:v59];
              [v4 setX_apple_travel_advisory_behavior:v60];

LABEL_81:
              v61 = CalEventCopySuggestedEventInfo(v3);
              cfa = v27;
              if (v61)
              {
                v62 = v61;
                v63 = CalSuggestedEventInfoCopyOpaqueKey(v61);
                v64 = CalSuggestedEventInfoCopyUniqueKey(v62);
                v65 = CalSuggestedEventInfoGetTimestamp(v62);
                [v4 setX_apple_suggestionInfoOpaqueKey:v63];
                [v4 setX_apple_suggestionInfoUniqueKey:v64];
                [v4 setX_apple_suggestionInfoChangesAcknowledged:CalSuggestedEventInfoGetChangesAcknowledged(v62)];
                [v4 setX_apple_suggestionInfoChangedFields:CalSuggestedEventInfoGetChangedFields(v62)];
                if (v65)
                {
                  v66 = [MEMORY[0x1E695DEE8] currentCalendar];
                  [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
                  v67 = v105 = v63;
                  [v66 setTimeZone:v67];

                  [v66 components:252 fromDate:v65];
                  v68 = v103 = v65;
                  v102 = objc_alloc(MEMORY[0x1E69E3C90]);
                  v101 = [v68 year];
                  v100 = [v68 month];
                  v69 = [v68 day];
                  v70 = [v68 hour];
                  v71 = [v68 minute];
                  v72 = [v68 second];
                  [v66 timeZone];
                  v73 = v104 = v64;
                  v74 = v70;
                  v40 = v116;
                  v75 = [v102 initWithYear:v101 month:v100 day:v69 hour:v74 minute:v71 second:v72 timeZone:v73];
                  [v4 setX_apple_suggestionInfoTimestamp:v75];

                  v63 = v105;
                  v64 = v104;

                  v65 = v103;
                  v33 = a3;
                }

                CFRelease(v62);
              }

              v76 = CalEventCopySpecialDayString(v3);
              [v4 setX_apple_special_day:v76];
              v77 = CalEventCopyCreatorIdentityString(v3);
              [v4 setX_apple_creator_identity:v77];
              v78 = CalEventCopyCreatorTeamIdentityString(v3);
              [v4 setX_apple_creator_team_identity:v78];
              v115 = v77;
              if ((v33 & 0x40000) == 0)
              {
                v79 = CalCalendarItemCopyAttendees(v3);
                if (v79)
                {
                  v80 = v79;
                  v106 = v76;
                  v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v82 = CFArrayGetCount(v80);
                  if (v82 >= 1)
                  {
                    v83 = v82;
                    for (j = 0; j != v83; ++j)
                    {
                      v85 = CFArrayGetValueAtIndex(v80, j);
                      v86 = ICSUserAddressFromCalAttendee(v85);
                      v87 = ICSAttendeeCommentFromCalAttendee(v85, v86);
                      if (v87)
                      {
                        [v81 addObject:v87];
                      }
                    }
                  }

                  if ([v81 count])
                  {
                    [v4 setX_calendarserver_attendee_comment:v81];
                  }

                  CFRelease(v80);

                  v77 = v115;
                  v40 = v116;
                  v76 = v106;
                }
              }

              v88 = CalEventCopyRecurrenceSet(v3);
              if (v88)
              {
                v89 = [objc_alloc(MEMORY[0x1E69E3CD0]) initWithValue:v88 type:5007];
                v90 = [MEMORY[0x1E69E3CE0] relationshipParameterFromCode:1];
                [v89 setParameterValue:v90 forName:*MEMORY[0x1E69E3FB0]];
                v91 = [v4 relatedTo];
                v92 = v91;
                if (v91)
                {
                  v93 = [v91 arrayByAddingObject:v89];
                }

                else
                {
                  v118 = v89;
                  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
                }

                v94 = v93;
                [v4 setRelatedTo:v93];

                v77 = v115;
                v40 = v116;
              }

              v95 = CalCalendarItemCopyExternalRepresentation(v3);
              if (v95)
              {
                [CalItemMetadata metadataWithData:v95];
                v97 = v96 = v76;
                [v97 applyToComponent:v4];

                v76 = v96;
              }

              v3 = v4;

              v32 = v117;
              v27 = cfa;
              v41 = v112;
LABEL_103:

              goto LABEL_104;
            }

LABEL_80:
            v107 = 0;
            goto LABEL_81;
          }

          *buf = 138412290;
          v120 = *&v36;
          v43 = "Owning event had no uid. Creating a new one: %@";
        }

        _os_log_impl(&dword_1DEBB1000, v42, OS_LOG_TYPE_DEBUG, v43, buf, 0xCu);
        goto LABEL_62;
      }

      CFRelease(v18);
      v18 = 0;
    }

    v20 = 0;
    v21 = 1;
    goto LABEL_14;
  }

LABEL_104:
  v98 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1DEC55D44(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v2 logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CalExchangeCalendarExternalRepresentation *)v3 dictionaryWithExternalRepresentationData:v4, v5, v6, v7, v8, v9, v10];
    }

    objc_end_catch();
    JUMPOUT(0x1DEC55CF8);
  }

  _Unwind_Resume(exception_object);
}

void _CalSaveLazyString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E695E480];
  v6 = *CPRecordGetClass();
  PropertyDescriptor = CPRecordGetPropertyDescriptor();
  v8 = CFStringCreateWithFormat(v5, 0, @"UPDATE %s SET %s = ? WHERE ROWID = ?", v6, *PropertyDescriptor);
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

  v10 = CPSqliteConnectionStatementForSQL();
  if (v10)
  {
    v11 = v10;
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

    Property = CPRecordGetProperty();
    if (Property && (v14 = Property, Length = CFStringGetLength(Property), Length >= 1))
    {
      v16 = Length;
      usedBufLen = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v17 = malloc_type_malloc(usedBufLen + 1, 0x33E1A653uLL);
      v25.location = 0;
      v25.length = v16;
      CFStringGetBytes(v14, v25, 0x8000100u, 0, 0, v17, usedBufLen, &usedBufLen);
      v17[usedBufLen] = 0;
      sqlite3_bind_text(v11[1], 1, v17, -1, MEMORY[0x1E69E9B38]);
    }

    else
    {
      sqlite3_bind_null(v11[1], 1);
    }

    v18 = v11[1];
    ID = CPRecordGetID();
    sqlite3_bind_int(v18, 2, ID);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        v20 = **v11;
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

    CPSqliteStatementPerform();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        v22 = **v11;
        if (v22)
        {
          if (*(v22 + 104))
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

    CPSqliteStatementReset();
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void _CalSaveLazyData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E695E480];
  v6 = *CPRecordGetClass();
  PropertyDescriptor = CPRecordGetPropertyDescriptor();
  v8 = CFStringCreateWithFormat(v5, 0, @"UPDATE %s SET %s = ? WHERE ROWID = ?", v6, *PropertyDescriptor);
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

  v10 = CPSqliteConnectionStatementForSQL();
  if (v10)
  {
    v11 = v10;
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

    Property = CPRecordGetProperty();
    if (Property && (v14 = Property, Length = CFDataGetLength(Property), (Length - 1) <= 0x7FFFFFFE))
    {
      v16 = Length;
      BytePtr = CFDataGetBytePtr(v14);
      sqlite3_bind_blob(v11[1], 1, BytePtr, v16, 0);
    }

    else
    {
      sqlite3_bind_null(v11[1], 1);
    }

    v18 = v11[1];
    ID = CPRecordGetID();
    sqlite3_bind_int(v18, 2, ID);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        v20 = **v11;
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

    CPSqliteStatementPerform();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        v22 = **v11;
        if (v22)
        {
          if (*(v22 + 104))
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

    CPSqliteStatementReset();
  }

  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t locationInverseRelationShouldChange(uint64_t a1, const void *a2, int a3)
{
  Owner = CalRelationGetOwner(a1);
  result = _CalEntityIsOfType(a2, 2);
  if (result)
  {
    StartLocation = 0;
    if (a3 > 102)
    {
      if (a3 == 103)
      {
        StartLocation = _CalCalendarItemGetStartLocation(a2);
      }

      else if (a3 == 104)
      {
        StartLocation = _CalCalendarItemGetEndLocation(a2);
      }
    }

    else if (a3 == 101)
    {
      StartLocation = _CalCalendarItemGetLocation(a2);
    }

    else if (a3 == 102)
    {
      StartLocation = _CalCalendarItemGetClientLocation(a2);
    }

    return StartLocation && StartLocation == Owner;
  }

  return result;
}

void _CalLocationPrepareForSave(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
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
  CalRelationOwnerWillSave(Property);
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

  v5 = CPRecordGetProperty();
  CalRelationOwnerWillSave(v5);
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

  v7 = CPRecordGetProperty();
  CalRelationOwnerWillSave(v7);
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
  CalRelationOwnerWillSave(v9);
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
  CalRelationOwnerWillSave(v11);
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

  v13 = CPRecordGetProperty();
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

  v15 = CPRecordGetProperty();
  if (a1)
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

  v17 = CPRecordGetProperty();
  if (a1)
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

  v19 = CPRecordGetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
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

  v21 = CPRecordGetProperty();
  ID = CPRecordGetID();
  if (ID >= 1 && v13 <= 0 && v15 <= 0 && v17 <= 0 && v19 <= 0 && v21 <= 0)
  {
    v23 = ID;
    v24 = CDBLogHandle;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (a1)
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

      OriginalProperty = CPRecordGetOriginalProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
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

      v31 = CPRecordGetOriginalProperty();
      if (a1)
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

      v28 = CPRecordGetOriginalProperty();
      if (a1)
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

      *buf = 67111424;
      v34 = v23;
      v35 = 1024;
      v36 = v13;
      v37 = 1024;
      v38 = v15;
      v39 = 1024;
      v40 = v17;
      v41 = 1024;
      v42 = v19;
      v43 = 1024;
      v44 = v21;
      v45 = 1024;
      v46 = OriginalProperty;
      v47 = 1024;
      v48 = v31;
      v49 = 1024;
      v50 = v28;
      v51 = 1024;
      v52 = CPRecordGetOriginalProperty();
      _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, "Location is being saved with no valid inverse relationship. location id = %i; alarm_owner_id = %i; item_owner_id = %i; start_location_owner_id = %i; end_location_owner_id = %i; client_location_owner_id = %i; previous alarm_owner_id = %i; previous location_owner_id = %i; previous start_location_owner_id = %i; previous client_location_owner_id = %i;", buf, 0x3Eu);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t _CalLocationPropertyDidChange(uint64_t result, unsigned int a2)
{
  if (a2 > 9)
  {
    goto LABEL_36;
  }

  result = _CalLocationGetOwner(result);
  if (!result)
  {
    goto LABEL_36;
  }

  v3 = result;
  if (_CalEntityIsOfType(result, 4))
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (!_CalEntityIsOfType(v3, 101))
  {
    goto LABEL_30;
  }

  ID = CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1)
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

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
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

  v9 = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
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

  v11 = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
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

  v13 = CPRecordGetProperty();
  if (ID == Property)
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (ID == v9)
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (ID == v11)
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (ID == v13)
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

LABEL_7:
    os_unfair_lock_assert_owner(Context + 20);
LABEL_29:
    CPRecordMarkPropertyChanged();
  }

LABEL_30:
  result = _CalEntityIsNew(v3);
  if ((result & 1) == 0)
  {
    if (CDBLockingAssertionsEnabled == 1)
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

    result = CPRecordMarkChanged();
  }

LABEL_36:
  if (a2 <= 8 && ((1 << a2) & 0x15C) != 0)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    return _CalDatabaseSetChangeFlags(DatabaseForRecord, 8);
  }

  return result;
}

void CalLocationInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalLocationClass, &kCalLocationIndexes, 0);
}

void CalLocationMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 > 62)
  {
    if (a3 > 0x3EE6)
    {
      return;
    }

    CalMigrateTableFull(a2, &kCalLocationClass, 0, &kCalLocationPropertyDBVersions, 0, &kCalLocationIndexes, 0, 0, a3);
    if (a3 > 0x2EE6)
    {
      return;
    }
  }

  else
  {
    CPRecordStoreCreateTablesForClass();
    CalMigrationCreateIndexes(a2, &kCalLocationClass, &kCalLocationIndexes, 0);
  }

  CalPerformSQLWithConnection(a2, @"UPDATE Location SET start_loc_owner_id = item_owner_id, item_owner_id = NULL WHERE rowid in (SELECT location.rowid FROM location INNER JOIN calendaritem ON calendaritem.start_location_id=location.rowid);");

  CalPerformSQLWithConnection(a2, @"UPDATE Location SET client_loc_owner_id = item_owner_id, item_owner_id = NULL WHERE rowid in (SELECT location.rowid FROM location INNER JOIN calendaritem ON calendaritem.client_location_id=location.rowid);");
}

CFTypeRef _CalLocationHasValidParent(uint64_t a1)
{
  result = _CalLocationGetOwner(a1);
  if (result)
  {

    return _CalRecordStillExists();
  }

  return result;
}

void _CalLocationCleanUpDanglingEntities(uint64_t a1, void *a2)
{
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE item_owner_id > 0 AND item_owner_id NOT IN (SELECT ROWID FROM CalendarItem);", 0);
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE alarm_owner_id > 0 AND alarm_owner_id NOT IN (SELECT ROWID FROM Alarm);", 0);
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE start_loc_owner_id > 0 AND start_loc_owner_id NOT IN (SELECT ROWID FROM CalendarItem);", 0);
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE end_loc_owner_id > 0 AND end_loc_owner_id NOT IN (SELECT ROWID FROM CalendarItem);", 0);

  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE client_loc_owner_id > 0 AND client_loc_owner_id NOT IN (SELECT ROWID FROM CalendarItem);", 0);
}

uint64_t CalLocationGetPropertyIDWithPropertyName(void *key)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = CalLocationGetPropertyIDWithPropertyName_sPropDict;
  if (!CalLocationGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalLocationGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalLocationGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"title";
      v7 = 0;
      v8 = @"address";
      v9 = 1;
      v10 = @"latitude";
      v11 = 2;
      v12 = @"longitude";
      v13 = 3;
      v14 = @"referenceFrame";
      v15 = 4;
      v16 = @"contactLabel";
      v17 = 5;
      v18 = @"mapKitHandle";
      v19 = 6;
      v20 = @"radius";
      v21 = 7;
      v22 = @"routing";
      v23 = 8;
      v24 = @"derivedFrom";
      v25 = 9;
      v26 = @"calendarItemOwner";
      v27 = 15;
      v28 = @"alarmOwner";
      v29 = 16;
      CalLocationGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 12);
      for (i = 176; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalLocationGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalLocationGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC58CDC(_Unwind_Exception *a1)
{
  for (i = 176; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _CalLocationGetRecordID(uint64_t a1)
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

const void *_CalDatabaseCreateLocation(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 14);
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
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateLocation(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Location = _CalDatabaseCreateLocation(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Location;
}

const void *_CalLocationCopy(uint64_t a1, uint64_t a2)
{
  Location = _CalDatabaseCreateLocation(a1);
  v4 = Location;
  if (CDBLockingAssertionsEnabled == 1 && Location != 0)
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
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
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

  v23 = CPRecordCopyProperty();
  if (v23)
  {
    v24 = v23;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v4)
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

    CPRecordSetProperty();
    CFRelease(v24);
  }

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
  return v4;
}