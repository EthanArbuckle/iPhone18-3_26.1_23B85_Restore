void CalAttendeeSetPendingStatus(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 3, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttendeeGetPendingStatus(uint64_t a1)
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

void CalAttendeeSetScheduleStatus(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 19, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttendeeGetScheduleStatus(uint64_t a1)
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

void CalAttendeeSetLastModified(_BOOL8 a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetDateProperty(a1, 15, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalAttendeeGetLastModified(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

void CalAttendeeSetProposedStartDate(_BOOL8 a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetDateProperty(a1, 16, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalAttendeeGetProposedStartDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

void CalAttendeeSetProposedStartDateStatus(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 18, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttendeeGetProposedStartDateStatus(uint64_t a1)
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

void CalAttendeeSetInvitedBy(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 17, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttendeeCopyInvitedBy(uint64_t a1)
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

CFTypeRef _CalParticipantGetDebugDescription(const void *a1)
{
  if (a1)
  {
    v23 = _CalParticipantCopyUUID(a1);
    v22 = _CalParticipantCopyDisplayName(a1);
    v2 = _CalParticipantCopyAddress(a1);
    v3 = _CalRecurrenceCopyByDayDays(a1);
    v4 = _CalParticipantCopyPhoneNumber(a1);
    v5 = _CalRecurrenceCopyByWeekWeeks(a1);
    WeekStartRaw = _CalRecurrenceGetWeekStartRaw(a1);
    v7 = CalAttendeeStatusAsString(WeekStartRaw);
    Type = _CalAttendeeGetType(a1);
    v9 = CalAttendeeTypeAsString(Type);
    Role = _CalAttendeeGetRole(a1);
    v11 = CalAttendeeRoleAsString(Role);
    Owner = _CalParticipantGetOwner(a1);
    if (Owner)
    {
      v13 = _CalCalendarItemCopyUUID(Owner);
      ID = CPRecordGetID();
    }

    else
    {
      v13 = 0;
      ID = 0xFFFFFFFFLL;
    }

    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v17 = [MEMORY[0x1E696AD98] numberWithInt:ID];
    v18 = [v16 initWithFormat:@"uuid: [%@] displayName: [%@] address: [%@] emailAddress: [%@] phoneNumber: [%@] role: [%@] status: [%@] type: [%@] responseComment: [%@] calendarItemRowID: [%@] calendarItemUUID: [%@]", v23, v22, v2, v3, v4, v11, v7, v9, v5, v17, v13];

    if (v13)
    {
      CFRelease(v13);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v18)
    {
      v19 = CFRetain(v18);
      v20 = CFAutorelease(v19);

      return v20;
    }
  }

  else
  {
    v15 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "NULL 'participant' given.  Will not generate a debug description.", buf, 2u);
    }
  }

  return 0;
}

uint64_t CalOrganizerGetPropertyIDWithPropertyName(void *key)
{
  if (CalOrganizerGetPropertyIDWithPropertyName_onceToken != -1)
  {
    CalOrganizerGetPropertyIDWithPropertyName_cold_1();
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(CalOrganizerGetPropertyIDWithPropertyName_sPropDict, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __CalOrganizerGetPropertyIDWithPropertyName_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (CalAttendeeBasePropertiesMappingDict_onceToken != -1)
  {
    CalAttendeeBasePropertiesMappingDict_cold_1();
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, CalAttendeeBasePropertiesMappingDict_sOrganizerPropDict);
  v3 = @"owner";
  v4 = 25;
  v5 = @"isCurrentUser";
  v6 = 11;
  v7 = @"scheduleAgent";
  v8 = 13;
  _CalDBInsertPropertyMap(MutableCopy, &v3, 3);
  CalOrganizerGetPropertyIDWithPropertyName_sPropDict = MutableCopy;
  for (i = 32; i != -16; i -= 16)
  {
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1DEC1DAEC(_Unwind_Exception *a1)
{
  for (i = 32; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

const void *CalDatabaseCreateOrganizer(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Participant = _CalCreateParticipant(a1, 8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Participant;
}

uint64_t _CalOrganizerGetWithUID(uint64_t a1)
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

BOOL _CalOrganizerIsSelf(uint64_t a1)
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

void CalOrganizerSetOwner(const void *a1, const void *a2)
{
  if ((CalEntityIsOfType(a1, 8) & 1) == 0)
  {
    CalOrganizerSetOwner_cold_1();
  }

  CalParticipantSetOwner(a1, a2);
}

void *_CalRemoveOrganizer(const void *a1)
{
  Owner = _CalParticipantGetOwner(a1);
  if (Owner)
  {

    return _CalCalendarItemSetOrganizer(Owner, 0);
  }

  else
  {

    return _CalRemoveParticipant(a1);
  }
}

void CalRemoveOrganizer(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveOrganizer(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

id CalParticipantSemanticIdentifier(uint64_t a1)
{
  if (!a1)
  {
    v10 = 0;
    goto LABEL_15;
  }

  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalParticipantCopyAddress(a1);
  v4 = _CalRecurrenceCopyByDayDays(a1);
  v5 = _CalParticipantCopyPhoneNumber(a1);
  v6 = _CalParticipantCopyDisplayName(a1);
  Name = _CalParticipantCopyFirstName(a1);
  v8 = _CalParticipantCopyLastName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (v3)
  {
    v9 = [(__CFString *)v3 absoluteString];
  }

  else if (v4)
  {
    v9 = v4;
  }

  else if (v5)
  {
    v9 = v5;
  }

  else
  {
    if (!v6)
    {
      if (Name | v8)
      {
        v12 = [MEMORY[0x1E696AD60] string];
        v13 = v12;
        if (Name)
        {
          [v12 appendFormat:@"FIRST=%@;", Name];
        }

        if (v8)
        {
          [v13 appendFormat:@"LAST=%@;", v8];
        }

        v10 = [v13 copy];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_14;
    }

    v9 = v6;
  }

  v10 = v9;
LABEL_14:

LABEL_15:

  return v10;
}

BOOL CalHasCurrentUserRespondedPositivelyToInvitationsFromOrganizerWithContactInfo(os_unfair_lock_s *a1, uint64_t a2, const __CFString *a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT 1 WHERE EXISTS (SELECT CalendarItem.ROWID FROM Participant as SelfParticipant, Participant as Organizer, CalendarItem WHERE CalendarItem.organizer_id = Organizer.ROWID AND CalendarItem.self_attendee_id = SelfParticipant.ROWID AND (SelfParticipant.status = ? OR SelfParticipant.status = ?) AND Organizer.%s = ? AND SelfParticipant.ROWID != Organizer.ROWID)", a2];
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
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  v12 = CPSqliteDatabaseStatementForReading();
  sqlite3_bind_int(v12[1], 1, 1);
  sqlite3_bind_int(v12[1], 2, 3);
  v13 = v12[1];
  CStringFromCFString = CalCreateCStringFromCFString(a3);
  sqlite3_bind_text(v13, 3, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  if (v12)
  {
    if (CDBLockingAssertionsEnabled)
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
  }

  v17 = CPSqliteStatementIntegerResult();
  if (v12)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*v12)
      {
        v18 = **v12;
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
  }

  CPSqliteStatementReset();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);

  return v17 > 0;
}

BOOL CalHasCurrentUserRepondedPositivelyToInvitationsWithAttendeeWithContactInfo(os_unfair_lock_s *a1, uint64_t a2, const __CFString *a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT 1 WHERE EXISTS (SELECT CalendarItem.ROWID FROM Participant as SelfParticipant, Participant as OtherParticipant, CalendarItem WHERE OtherParticipant.owner_id = CalendarItem.ROWID AND CalendarItem.self_attendee_id = SelfParticipant.ROWID AND (SelfParticipant.status = ? OR SelfParticipant.status = ?) AND OtherParticipant.%s = ? AND SelfParticipant.ROWID != OtherParticipant.ROWID)", a2];
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
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  v12 = CPSqliteDatabaseStatementForReading();
  sqlite3_bind_int(v12[1], 1, 1);
  sqlite3_bind_int(v12[1], 2, 3);
  v13 = v12[1];
  CStringFromCFString = CalCreateCStringFromCFString(a3);
  sqlite3_bind_text(v13, 3, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  if (v12)
  {
    if (CDBLockingAssertionsEnabled)
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
  }

  v17 = CPSqliteStatementIntegerResult();
  if (v12)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*v12)
      {
        v18 = **v12;
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
  }

  CPSqliteStatementReset();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);

  return v17 > 0;
}

BOOL CalHasCurrentUserInvitedAttendeeWithContactInfo(os_unfair_lock_s *a1, uint64_t a2, const __CFString *a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT 1 WHERE EXISTS (SELECT CalendarItem.ROWID FROM Participant as SelfParticipant, Participant as OtherParticipant, CalendarItem WHERE OtherParticipant.owner_id = CalendarItem.ROWID AND CalendarItem.organizer_id = SelfParticipant.ROWID AND SelfParticipant.is_self = 1 AND OtherParticipant.%s = ? AND SelfParticipant.ROWID != OtherParticipant.ROWID)", a2];
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
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  v12 = CPSqliteDatabaseStatementForReading();
  v13 = v12[1];
  CStringFromCFString = CalCreateCStringFromCFString(a3);
  sqlite3_bind_text(v13, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  if (v12)
  {
    if (CDBLockingAssertionsEnabled)
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
  }

  v17 = CPSqliteStatementIntegerResult();
  if (v12)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*v12)
      {
        v18 = **v12;
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
  }

  CPSqliteStatementReset();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);

  return v17 > 0;
}

void _CalParticipantLoadIdentityProperties(uint64_t a1)
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

CFTypeRef _CalParticipantLoadStoreId(const void *a1)
{
  result = _CalParticipantGetOwner(a1);
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

CFTypeRef _CalParticipantLoadCalendarId(const void *a1)
{
  result = _CalParticipantGetOwner(a1);
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

uint64_t _CalParticipantLoadIsSelfAttendee(const void *a1)
{
  Owner = _CalParticipantGetOwner(a1);
  v3 = Owner;
  if (Owner)
  {
    if (_CalCalendarItemGetEntityType(Owner) == 2 && _CalCalendarItemGetSelfAttendee(v3))
    {
      ID = CPRecordGetID();
      LODWORD(v3) = ID == CPRecordGetID();
    }

    else
    {
      LODWORD(v3) = 0;
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

  v6 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;

  return CPRecordInitializeProperty();
}

void _CalMigrateExtractCommentLastModifiedDate(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_value_bytes(*a3);
  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:sqlite3_value_blob(*a3) length:v4 freeWhenDone:0];
  v6 = [CalItemMetadata metadataWithData:v5];
  v7 = sqlite3_value_bytes(a3[1]);
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:sqlite3_value_text(a3[1]) length:v7 encoding:4 freeWhenDone:0];
  v9 = [v6 unrecognizedProperties];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69E3E50]];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v12)
  {
LABEL_11:

LABEL_14:
    sqlite3_result_null(a1);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = *v27;
LABEL_3:
  v15 = 0;
  while (1)
  {
    if (*v27 != v14)
    {
      objc_enumerationMutation(v11);
    }

    v16 = *(*(&v26 + 1) + 8 * v15);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v17 = v16;
    v18 = [v17 x_calendarserver_attendee_ref];
    if ([v8 isEqualToString:v18])
    {
      break;
    }

LABEL_9:
    if (v13 == ++v15)
    {
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  v19 = [v17 x_calendarserver_dtstamp];

  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v21 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v22 = NSDateFromICSValueInTimeZone();

  [v22 timeIntervalSinceReferenceDate];
  sqlite3_result_double(a1, v23);

LABEL_15:
  v24 = *MEMORY[0x1E69E9840];
}

CFStringRef _CalAttendeeCreateChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  if (a2)
  {
    v5 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v7 = *MEMORY[0x1E695E480];
    if (a3 == 100)
    {
      v8 = CFStringCreateWithFormat(v7, 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class IN (%d, %d) AND client_identifier = '%@')", ID, v5, v5, 7, 8, v5);
    }

    else
    {
      v8 = CFStringCreateWithFormat(v7, 0, @"entity_type = %d  AND store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", a3, ID, v5, v5, a3, v5);
    }

    v10 = v8;
    CFRelease(v5);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v10);
  return v10;
}

uint64_t _CalDatabaseCopyParticipantChangesWithWhereClause(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
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
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v6 = CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithProperties();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

CFStringRef _CalAttendeeCreateChangeHistoryWhereClauseForCalendar(CFStringRef result, uint64_t a2)
{
  if (result)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();
    v4 = _CalDatabaseCopyClientIdentifier(DatabaseForRecord);
    ID = CPRecordGetID();
    v6 = *MEMORY[0x1E695E480];
    if (a2 == 100)
    {
      v7 = CFStringCreateWithFormat(v6, 0, @"calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class IN (%d, %d) AND client_identifier = '%@')", ID, v4, v4, 7, 8, v4);
    }

    else
    {
      v7 = CFStringCreateWithFormat(v6, 0, @"entity_type = %d  AND calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", a2, ID, v4, v4, a2, v4);
    }

    v8 = v7;
    CFRelease(v4);
    _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(DatabaseForRecord, &v8);
    return v8;
  }

  return result;
}

uint64_t CalRecordIDRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalRecordIDTypeID = result;
  return result;
}

uint64_t CalRecordIDCreate(int a1, int a2)
{
  pthread_once(&__CalRecordIDRegisterOnce, CalRecordIDRegisterClass);
  result = _CFRuntimeCreateInstance();
  *(result + 16) = a1;
  *(result + 20) = a2;
  return result;
}

uint64_t _CalRecordIDSave(uint64_t a1)
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
  if ((*(result + 20) & 0x80000000) != 0)
  {
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

    return CPRecordUnloadProperty();
  }

  return result;
}

void CalEntityUnloadProperties(uint64_t a1)
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

  CPRecordInvalidateRecord();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalRecordSetDateProperty(_BOOL8 a1, int a2, CFAbsoluteTime a3)
{
  if (vabdd_f64(a3, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
  {
    v5 = CFDateCreate(0, a3);
    _CalRecordSetPropertyIfDifferent(a1, a2, v5);
    if (v5)
    {

      CFRelease(v5);
    }
  }

  else
  {

    _CalRecordSetPropertyIfDifferent(a1, a2, 0);
  }
}

BOOL _CalRecordSetPropertyIfDifferent(_BOOL8 result, int a2, const __CFNumber *a3)
{
  if (result)
  {
    v5 = result;
    if (!*(*(CPRecordGetClass() + 80) + 40 * a2 + 8) || (result = _CalRecordValueIsDifferentFromCurrentPropertyValue(v5, a2, a3)))
    {
      if (CDBLockingAssertionsEnabled == 1 && CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }

      CPRecordSetProperty();
      return 1;
    }
  }

  return result;
}

double _CalRecordGetOriginalDateProperty(uint64_t a1)
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

  if (CPRecordGetOriginalProperty())
  {

    JUMPOUT(0x1E12C5EF0);
  }

  return *MEMORY[0x1E6993100];
}

CFDateRef _CreateCFDateRefFromCalDate(CFAbsoluteTime a1)
{
  result = 0;
  if (vabdd_f64(a1, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
  {
    return CFDateCreate(0, a1);
  }

  return result;
}

double _CFDateRefToCalDate(uint64_t a1)
{
  if (a1)
  {
    JUMPOUT(0x1E12C5EF0);
  }

  return *MEMORY[0x1E6993100];
}

void _CalInsertAbsoluteTimeIntoArrayAtIndex(__CFArray *a1, CFIndex a2, CFAbsoluteTime a3)
{
  v5 = CFDateCreate(0, a3);
  if (v5)
  {
    v6 = v5;
    CFArrayInsertValueAtIndex(a1, a2, v5);

    CFRelease(v6);
  }
}

void _CalAppendAbsoluteTimeToArray(__CFArray *a1, CFAbsoluteTime a2)
{
  v3 = CFDateCreate(0, a2);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(a1, v3);

    CFRelease(v4);
  }
}

CFStringRef _CalDBCreateUUIDString()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);
  return v1;
}

void _CalDBFillInUUIDColumn(uint64_t a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(0, 0, @"SELECT ROWID from %@ WHERE UUID IS NULL", a2);
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
    v8 = CFStringCreateWithFormat(0, 0, @"UPDATE %@ SET UUID= ? WHERE rowid = ?;", a2);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
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

    CPSqliteConnectionStatementForSQL();
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

    CPSqliteStatementSendResults();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        v12 = **v7;
        if (v12)
        {
          if (*(v12 + 104))
          {
            v13 = CPRecordStoreGetContext();
            if (v13)
            {
              os_unfair_lock_assert_owner(v13 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    CFRelease(v8);
  }

  CFRelease(v4);
}

uint64_t SetUUID(uint64_t a1, uint64_t ***a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  v4 = _CalDBCreateUUIDString();
  v5 = v4;
  if (*a2)
  {
    CStringFromCFString = CalCreateCStringFromCFString(v4);
    sqlite3_bind_text((*a2)[1], 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
    sqlite3_bind_int((*a2)[1], 2, v3);
    v7 = *a2;
    if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
    {
      if (*v7)
      {
        v9 = **v7;
        if (v9)
        {
          if (*(v9 + 104))
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
    v11 = *a2;
    if (CDBLockingAssertionsEnabled == 1 && v11 != 0)
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

    CPSqliteStatementReset();
  }

  CFRelease(v5);
  return 0;
}

__CFDictionary *_CalDBCreatePropertyMap(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  v5 = Mutable;
  if (v2 >= 1 && Mutable)
  {
    v2 = v2;
    v6 = (a1 + 8);
    do
    {
      CFDictionarySetValue(v5, *(v6 - 1), *v6);
      v6 += 2;
      --v2;
    }

    while (v2);
  }

  return v5;
}

void _CalDBInsertPropertyMap(CFMutableDictionaryRef theDict, uint64_t a2, int a3)
{
  if (theDict && a3 >= 1)
  {
    v4 = a3;
    v5 = (a2 + 8);
    do
    {
      CFDictionarySetValue(theDict, *(v5 - 1), *v5);
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

BOOL _CalRecordHasValueChangedForProperty(uint64_t a1, int a2)
{
  if (CPRecordGetID() == -1 || !*(*(CPRecordGetClass() + 80) + 40 * a2 + 8))
  {
    return 1;
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

  OriginalProperty = CPRecordGetOriginalProperty();

  return _CalRecordValueIsDifferentFromCurrentPropertyValue(a1, a2, OriginalProperty);
}

BOOL _CalRecordValueIsDifferentFromCurrentPropertyValue(uint64_t a1, int a2, const __CFNumber *a3)
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
  if (Property == a3)
  {
    return 0;
  }

  v7 = Property;
  if ((a3 == 0) == (Property != 0))
  {
    return 1;
  }

  v8 = *(*(CPRecordGetClass() + 80) + 40 * a2 + 8);
  result = 1;
  if (v8 > 5)
  {
    if (v8 == 6)
    {
      v14 = CFNumberCompare(a3, v7, 0);
    }

    else
    {
      if (v8 != 7)
      {
        return result;
      }

      v14 = CFDateCompare(a3, v7, 0);
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        return result;
      }

      Length = CFDataGetLength(a3);
      if (Length == CFDataGetLength(v7))
      {
        BytePtr = CFDataGetBytePtr(a3);
        v12 = CFDataGetBytePtr(v7);
        v13 = memcmp(BytePtr, v12, Length) == 0;
        return !v13;
      }

      return 1;
    }

    v14 = CFStringCompare(a3, v7, 0);
  }

  v13 = v14 == kCFCompareEqualTo;
  return !v13;
}

BOOL _CalRecordOfClassStillExists(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v6 = *(a1 + 64);
  os_unfair_lock_lock(&_CalRecordOfClassStillExists_lock);
  v7 = _CalRecordOfClassStillExists_entityTypeToSql;
  if (!_CalRecordOfClassStillExists_entityTypeToSql)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = _CalRecordOfClassStillExists_entityTypeToSql;
    _CalRecordOfClassStillExists_entityTypeToSql = v8;

    v7 = _CalRecordOfClassStillExists_entityTypeToSql;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v11 = [v7 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT ROWID FROM %s WHERE ROWID = ?", *a1];
    v12 = _CalRecordOfClassStillExists_entityTypeToSql;
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }

  os_unfair_lock_unlock(&_CalRecordOfClassStillExists_lock);
  if (a2)
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

  Database = CPRecordStoreGetDatabase();
  if (!Database)
  {
    goto LABEL_34;
  }

  if (CDBLockingAssertionsEnabled == 1)
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

  v17 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v17)
  {
    v18 = v17;
    if (CDBLockingAssertionsEnabled == 1)
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
      sqlite3_bind_int64(*(v20 + 8), 1, a3);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v21)
        {
          v22 = **v21;
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

      v24 = CPSqliteStatementInteger64Result();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v21)
        {
          v25 = **v21;
          if (v25)
          {
            if (*(v25 + 104))
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

      CPSqliteStatementReset();
      v27 = v24 == a3;
    }

    else
    {
      v27 = 0;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v18)
      {
        if (*(*v18 + 104))
        {
          v28 = CPRecordStoreGetContext();
          if (v28)
          {
            os_unfair_lock_assert_owner(v28 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
LABEL_34:
    v27 = 0;
  }

  return v27;
}

BOOL _CalRecordStillExists()
{
  Class = CPRecordGetClass();
  Store = CPRecordGetStore();
  CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1 && Store != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  RowidForRecordID = CPRecordStoreGetRowidForRecordID();

  return _CalRecordOfClassStillExists(Class, Store, RowidForRecordID);
}

uint64_t _CalSaveAddedCalendarItems(uint64_t a1)
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
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v4 = Property;
  Count = CFArrayGetCount(Property);
  ID = CPRecordGetID();
  if (Count >= 1)
  {
    v7 = ID;
    v8 = 0;
    v9 = ID;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
      if (ValueAtIndex)
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

      if (v7 != CPRecordGetProperty())
      {
        _CalRecordSetPropertyIfDifferent(ValueAtIndex, 9, v9);
      }

      ++v8;
    }

    while (Count != v8);
  }

  if (a1)
  {
LABEL_20:
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

LABEL_24:

  return CPRecordInitializeProperty();
}

uint64_t _CalEventRemoveLinkedEventsAndSubentities(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x80000000) == 0 && a2)
  {
    v3 = result;
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

    v5 = CPSqliteConnectionStatementForSQL();
    if (v5)
    {
      v6 = v5;
      sqlite3_bind_int(*(v5 + 8), 1, v3);
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

      CPSqliteStatementPerform();
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
    }

    Store = CPRecordGetStore();
    if ((*(CPRecordStoreGetContext() + 366) & 1) == 0)
    {
      if (Store)
      {
        if (CDBLockingAssertionsEnabled)
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }

      CPRecordStoreInvalidateCachedInstancesOfClass();
    }

    v13 = CPRecordGetStore();
    result = CPRecordStoreGetContext();
    if ((*(result + 366) & 1) == 0)
    {
      _CalInvalidateRecurrencesWithOwnerID(v13);
      _CalInvalidateParticipantsWithOwnerID(v13);
      _CalInvalidateEventActionsWithOwnerID(v13);
      _CalInvalidateExceptionDatesWithOwnerID(v13);
      _CalInvalidateAlarmsWithCalendarItemOwnerID(v13);
      _CalInvalidateAttachmentsWithOwnerID(v13);
      _CalInvalidateContactsWithOwnerID(v13);

      return _CalInvalidateConferencesWithOwnerID(v13);
    }
  }

  return result;
}

uint64_t _CalEventPrepareForSave(void *a1, uint64_t a2)
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  if (_CalDatabaseIsPropertyModificationLoggingEnabled(DatabaseForRecord))
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

    v6 = CPRecordCopyChangedProperties();
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      IsNew = _CalEntityIsNew(a1);
      if (Count >= 1)
      {
        v10 = IsNew;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1;
        while (2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v14 - 1);
          switch(ValueAtIndex)
          {
            case 0u:
            case 3u:
            case 5u:
            case 7u:
            case 8u:
            case 9u:
            case 0xCu:
            case 0xDu:
            case 0xFu:
            case 0x10u:
            case 0x11u:
            case 0x12u:
            case 0x1Cu:
            case 0x1Du:
            case 0x25u:
            case 0x29u:
            case 0x2Bu:
            case 0x2Cu:
            case 0x39u:
            case 0x3Au:
            case 0x3Fu:
            case 0x44u:
            case 0x45u:
            case 0x50u:
            case 0x52u:
            case 0x53u:
            case 0x54u:
            case 0x55u:
            case 0x56u:
            case 0x57u:
              goto LABEL_11;
            case 1u:
            case 2u:
            case 0xAu:
            case 0xBu:
            case 0x15u:
            case 0x16u:
            case 0x17u:
            case 0x18u:
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
            case 0x1Eu:
            case 0x1Fu:
            case 0x20u:
            case 0x21u:
            case 0x22u:
            case 0x23u:
            case 0x24u:
            case 0x27u:
            case 0x28u:
            case 0x2Au:
            case 0x2Du:
            case 0x2Eu:
            case 0x2Fu:
            case 0x30u:
            case 0x31u:
            case 0x32u:
            case 0x33u:
            case 0x34u:
            case 0x35u:
            case 0x36u:
            case 0x37u:
            case 0x38u:
            case 0x3Bu:
            case 0x3Cu:
            case 0x3Du:
            case 0x3Eu:
            case 0x40u:
            case 0x41u:
            case 0x42u:
            case 0x43u:
            case 0x46u:
            case 0x47u:
            case 0x48u:
            case 0x49u:
            case 0x4Au:
            case 0x4Bu:
            case 0x4Cu:
            case 0x4Du:
            case 0x4Eu:
            case 0x4Fu:
              goto LABEL_12;
            case 4u:
            case 6u:
            case 0xEu:
            case 0x26u:
            case 0x51u:
              v13 = 1;
              goto LABEL_11;
            case 0x13u:
              v11 = 1;
              goto LABEL_12;
            case 0x14u:
              v12 = 1;
              v10 = 1;
              goto LABEL_12;
            default:
              if (ValueAtIndex - 101 >= 4)
              {
                goto LABEL_12;
              }

LABEL_11:
              v12 = 1;
LABEL_12:
              if (v14 < Count)
              {
                ++v14;
                if ((v11 & v10 & 1) == 0)
                {
                  continue;
                }
              }

              if (!(v11 & 1 | ((v12 & 1) == 0)))
              {
                _CalEventUpdateLastModifiedDate(a1);
              }

              if (((v13 ^ 1 | v10) & 1) == 0)
              {
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

                CPRecordGetProperty();
                if (a1)
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

                CPRecordSetProperty();
              }

              break;
          }

          break;
        }
      }

      CFRelease(v7);
    }
  }

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

  if (CPRecordGetProperty())
  {
    if ((_CalEntityIsOfType(a1, 2) & 1) == 0)
    {
      _CalEventPrepareForSave_cold_1();
    }

    _CalEventUpdateOccurrenceCache(a1);
  }

  else
  {
    if (a1)
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

    if (CPRecordGetProperty())
    {
      if ((_CalEntityIsOfType(a1, 2) & 1) == 0)
      {
        _CalEventPrepareForSave_cold_2();
      }

      _CalEventUpdateAlarmCache(a1);
    }
  }

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

  if (CPRecordGetProperty())
  {
    if ((_CalEntityIsOfType(a1, 3) & 1) == 0)
    {
      _CalEventPrepareForSave_cold_3();
    }

    if (CPRecordGetStore())
    {
      v21 = CPRecordStoreGetContext();
      if (v21)
      {
        v22 = _CalDatabaseCopyScheduledTaskCache(v21);
        if (v22)
        {
          v23 = v22;
          _CalScheduledTaskCacheMarkTaskForUpdate(v22, a1);
          CFRelease(v23);
        }
      }
    }
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
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

  if ((CPRecordIsPendingChange() & 1) == 0)
  {
    _CalCalendarItemFixupParticipantsOnEvent(a1);
  }

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
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }
    }
  }

  v28 = CPRecordGetProperty();
  if (v28)
  {
    CalRelationOwnerWillSave(v28);
  }

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

  v30 = CPRecordGetProperty();
  if (v30)
  {
    CalRelationOwnerWillSave(v30);
  }

  if (a1)
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

  v32 = CPRecordGetProperty();
  if (v32)
  {
    CalRelationOwnerWillSave(v32);
  }

  if (a1)
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

  v34 = CPRecordGetProperty();
  if (v34)
  {
    CalRelationOwnerWillSave(v34);
  }

  if (a1)
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

  v36 = CPRecordGetProperty();
  if (v36)
  {
    CalRelationOwnerWillSave(v36);
  }

  if (a1)
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

  v38 = CPRecordGetProperty();
  if (v38)
  {
    CalRelationOwnerWillSave(v38);
  }

  if (a1)
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

  v40 = CPRecordGetProperty();
  if (v40)
  {
    CalRelationOwnerWillSave(v40);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v41 = CPRecordStoreGetContext();
        if (v41)
        {
          os_unfair_lock_assert_owner(v41 + 20);
        }
      }
    }
  }

  v42 = CPRecordGetProperty();
  if (v42)
  {
    CalRelationOwnerWillSave(v42);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v43 = CPRecordStoreGetContext();
        if (v43)
        {
          os_unfair_lock_assert_owner(v43 + 20);
        }
      }
    }
  }

  v44 = CPRecordGetProperty();
  if (v44)
  {
    CalRelationOwnerWillSave(v44);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v45 = CPRecordStoreGetContext();
        if (v45)
        {
          os_unfair_lock_assert_owner(v45 + 20);
        }
      }
    }
  }

  v46 = CPRecordGetProperty();
  if (v46)
  {
    CalRelationOwnerWillSave(v46);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v47 = CPRecordStoreGetContext();
        if (v47)
        {
          os_unfair_lock_assert_owner(v47 + 20);
        }
      }
    }
  }

  v48 = CPRecordGetProperty();
  if (v48)
  {
    CalRelationOwnerWillSave(v48);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v49 = CPRecordStoreGetContext();
        if (v49)
        {
          os_unfair_lock_assert_owner(v49 + 20);
        }
      }
    }
  }

  v50 = CPRecordGetProperty();
  if (v50)
  {
    CalRelationOwnerWillSave(v50);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v51 = CPRecordStoreGetContext();
        if (v51)
        {
          os_unfair_lock_assert_owner(v51 + 20);
        }
      }
    }
  }

  v52 = CPRecordGetProperty();
  if (v52)
  {
    CalRelationOwnerWillSave(v52);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v53 = CPRecordStoreGetContext();
        if (v53)
        {
          os_unfair_lock_assert_owner(v53 + 20);
        }
      }
    }
  }

  v54 = CPRecordGetProperty();
  if (v54)
  {
    CalRelationOwnerWillSave(v54);
  }

  _CalEventValidateIdentityForProperties(a1, a2);
  _CalEventValidateIdentityForProperties(a1, a2);
  if (_CalEventIsAllDay(a1))
  {
    v55 = CalTimeZoneCopyCFTimeZone();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v56 = CPRecordStoreGetContext();
          if (v56)
          {
            os_unfair_lock_assert_owner(v56 + 20);
          }
        }
      }
    }

    if (CPRecordGetProperty())
    {
      MEMORY[0x1E12C5EF0]();
      CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
      v58 = CFDateCreate(0, v57);
      _CalRecordSetPropertyIfDifferent(a1, 4, v58);
      CFRelease(v58);
    }

    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v59 = CPRecordStoreGetContext();
          if (v59)
          {
            os_unfair_lock_assert_owner(v59 + 20);
          }
        }
      }
    }

    if (CPRecordGetProperty())
    {
      MEMORY[0x1E12C5EF0]();
      CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
      v61 = CFDateCreate(0, v60);
      _CalRecordSetPropertyIfDifferent(a1, 6, v61);
      CFRelease(v61);
    }

    if (!_CalCalendarItemIsFloating(a1))
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v62 = CPRecordStoreGetContext();
            if (v62)
            {
              os_unfair_lock_assert_owner(v62 + 20);
            }
          }
        }
      }

      CPRecordSetProperty();
    }

    CFRelease(v55);
  }

  if (CPRecordGetID() != -1)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v63 = CPRecordStoreGetContext();
          if (v63)
          {
            os_unfair_lock_assert_owner(v63 + 20);
          }
        }
      }
    }

    if (CPRecordGetProperty())
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v64 = CPRecordStoreGetContext();
            if (v64)
            {
              os_unfair_lock_assert_owner(v64 + 20);
            }
          }
        }
      }

      v65 = CPRecordGetProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v66 = CPRecordStoreGetContext();
            if (v66)
            {
              os_unfair_lock_assert_owner(v66 + 20);
            }
          }
        }
      }

      v67 = CPRecordGetProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v68 = CPRecordStoreGetContext();
            if (v68)
            {
              os_unfair_lock_assert_owner(v68 + 20);
            }
          }
        }
      }

      v69 = CPRecordGetProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v70 = CPRecordStoreGetContext();
            if (v70)
            {
              os_unfair_lock_assert_owner(v70 + 20);
            }
          }
        }
      }

      v71 = CPRecordGetProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v72 = CPRecordStoreGetContext();
            if (v72)
            {
              os_unfair_lock_assert_owner(v72 + 20);
            }
          }
        }
      }

      v73 = CPRecordGetProperty();
      if (v71)
      {
        CFRetain(v71);
      }

      if (v73)
      {
        CFRetain(v73);
      }

      v74 = CalGetDatabaseForRecord();
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = ___CalEventPrepareForSave_block_invoke;
      v81[3] = &__block_descriptor_76_e5_v8__0l;
      v81[4] = a2;
      v81[5] = v71;
      v81[6] = v73;
      v81[7] = a1;
      v82 = v65;
      v83 = v67;
      v84 = v69;
      _CalDatabaseAddPostCommitActionWithBlock(v74, v81);
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v75 = CPRecordStoreGetContext();
            if (v75)
            {
              os_unfair_lock_assert_owner(v75 + 20);
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
            v76 = CPRecordStoreGetContext();
            if (v76)
            {
              os_unfair_lock_assert_owner(v76 + 20);
            }
          }
        }
      }

      CPRecordSetProperty();
    }
  }

  _CalEventUpdateDetectedConferenceURLIfNeeded(a1);
  v77 = CalGetDatabaseForRecord();
  if ((_CalDatabaseGetChangeReason(v77) - 1) >= 2)
  {
    v78 = COERCE_DOUBLE(_CalEventGetStartDate(a1));
    if (_CalRecordGetDateProperty(a1) - v78 > 864000000.0)
    {
      v79 = CalGetDatabaseForRecord();
      _CalDatabaseIntegrityError(v79, @"Suspiciously large event duration");
    }
  }

  return _CalCalendarItemClearDirtyAttributes(a1);
}

uint64_t _CalCalendarItemDidSaveAllProperties(uint64_t a1)
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

  return CPRecordUnloadProperty();
}

void _CalCalendarItemPropertyDidChange(const void *a1, int a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a2 == 91 || !_CalRecordHasValueChangedForProperty(a1, a2))
  {
    goto LABEL_219;
  }

  DatabaseForRecord = CalGetDatabaseForRecord();
  if (DatabaseForRecord && _CalDatabaseIsPropertyModificationLoggingEnabled(DatabaseForRecord))
  {
    if (a2 <= 16)
    {
      if (a2 <= 11)
      {
        switch(a2)
        {
          case 3:
            v5 = a1;
            break;
          case 4:
            v5 = a1;
            break;
          case 6:
            v5 = a1;
            break;
          default:
            goto LABEL_123;
        }

        goto LABEL_122;
      }

      if (a2 != 12)
      {
        if (a2 == 15)
        {
          if (CPRecordGetID() == -1)
          {
            goto LABEL_123;
          }

          v5 = a1;
        }

        else
        {
          if (a2 != 16)
          {
            goto LABEL_123;
          }

          v5 = a1;
        }

        goto LABEL_122;
      }

      goto LABEL_81;
    }

    if (a2 <= 81)
    {
      switch(a2)
      {
        case 17:
          v5 = a1;
          break;
        case 79:
          v5 = a1;
          break;
        case 81:
          _CalEventMarkPropertyModified(a1);
          goto LABEL_14;
        default:
          goto LABEL_123;
      }

LABEL_122:
      _CalEventMarkPropertyModified(v5);
      goto LABEL_123;
    }

    if (a2 != 82)
    {
      if (a2 != 100)
      {
        if (a2 != 106)
        {
          goto LABEL_123;
        }

        v5 = a1;
        goto LABEL_122;
      }

LABEL_33:
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
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
      if (CalToManyRelationHasObjects(Property))
      {
        if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
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

        if (!CPRecordGetProperty())
        {
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

          goto LABEL_115;
        }
      }

      else
      {
        if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
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

        if (CPRecordGetProperty() == 1)
        {
          if (a1)
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

          goto LABEL_115;
        }
      }

      goto LABEL_123;
    }

    goto LABEL_88;
  }

  if (a2 > 81)
  {
    if (a2 != 82)
    {
      if (a2 != 100)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

LABEL_88:
    if (a1)
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

    v20 = CPRecordGetProperty();
    if (CalToManyRelationHasObjects(v20))
    {
      if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
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

      if (!CPRecordGetProperty())
      {
        if (a1)
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

        goto LABEL_115;
      }
    }

    else
    {
      if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
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

      if (CPRecordGetProperty() == 1)
      {
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
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

        goto LABEL_115;
      }
    }

    goto LABEL_123;
  }

  if (a2 == 12)
  {
LABEL_81:
    if (CPRecordGetStore())
    {
      v18 = CPRecordStoreGetContext();
      if (v18)
      {
        _CalDatabaseSetChangeFlags(v18, 1);
      }
    }

    goto LABEL_123;
  }

  if (a2 != 81)
  {
    goto LABEL_123;
  }

LABEL_14:
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
  if (CalToManyRelationHasObjects(v7))
  {
    if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
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

    if (!CPRecordGetProperty())
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

LABEL_115:
      CPRecordSetProperty();
    }
  }

  else
  {
    if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
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

    if (CPRecordGetProperty() == 1)
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

      goto LABEL_115;
    }
  }

LABEL_123:
  if (!_CalEntityIsOfType(a1, 2))
  {
    v25 = _CalEntityIsOfType(a1, 3);
    if ((a2 - 38) <= 3 && v25)
    {
      _CalTaskMarkAsNeedingScheduledTaskCacheUpdate(a1);
    }

LABEL_133:
    if (a2 > 0x39 || ((1 << a2) & 0x200024000000010) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_135;
  }

  if (a2 <= 0x3F)
  {
    if (((1 << a2) & 0x82000000800063F0) != 0)
    {
LABEL_129:
      _CalEventMarkEventAsNeedingOccurrenceCacheUpdate(a1);
      goto LABEL_133;
    }

    if (((1 << a2) & 0x24000000000) != 0)
    {
LABEL_135:
      if (_CalCalendarItemHasAlarms(a1))
      {
        CPRecordGetStore();
        v26 = CPRecordStoreGetContext();
        _CalDatabaseSetChangeFlags(v26, 8);
      }

      goto LABEL_137;
    }
  }

  if ((a2 - 74) > 0x16)
  {
    goto LABEL_137;
  }

  if (((1 << (a2 - 74)) & 0x4000C1) != 0)
  {
    goto LABEL_129;
  }

  if (a2 == 79)
  {
    _CalEventMarkEventAsNeedingAlarmCacheUpdate(a1);
LABEL_149:
    _CalEventMarkEventAsHavingDirtyNotifiableAttributes(a1);
    goto LABEL_150;
  }

LABEL_137:
  if (a2 <= 0x3F && ((1 << a2) & 0x86001A603016F3FBLL) != 0 || (a2 - 68) <= 0x3B && ((1 << (a2 - 68)) & 0x80E0002000FE003) != 0)
  {
    _CalEventMarkEventAsHavingDirtyInstanceAttributes(a1);
  }

  if ((a2 > 0x33 || ((1 << a2) & 0xC00001B880000) == 0) && ((a2 - 88) > 0x28 || ((1 << (a2 - 88)) & 0x100000000A3) == 0))
  {
    goto LABEL_149;
  }

LABEL_150:
  v27 = a2 - 59;
  if ((a2 - 59) > 0x39)
  {
LABEL_169:
    if ((a2 - 1) >= 2)
    {
LABEL_219:
      v52 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_170:
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
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

    v33 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
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

    v35 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
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

    v37 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
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

    v39 = CPRecordGetProperty();
    if (v33 >= 1 && v33 == v35)
    {
      v40 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v41 = v40;
        ID = CPRecordGetID();
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v43 = CPRecordStoreGetContext();
              if (v43)
              {
                os_unfair_lock_assert_owner(v43 + 20);
              }
            }
          }
        }

        v64 = 67110144;
        v65 = ID;
        v66 = 1024;
        v67 = v33;
        v68 = 1024;
        v69 = v33;
        v70 = 1024;
        v71 = a2;
        v72 = 1024;
        OriginalProperty = CPRecordGetOriginalProperty();
        v44 = "Multiple relationships to the same location: Location is the same value as clientLocation. recordID=%i, location=%i, clientLocation=%i, currently setting %i; original value for property set = %i";
LABEL_217:
        _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_ERROR, v44, &v64, 0x20u);
      }
    }

    else if (v33 >= 1 && v33 == v37)
    {
      v45 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v41 = v45;
        v46 = CPRecordGetID();
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v47 = CPRecordStoreGetContext();
              if (v47)
              {
                os_unfair_lock_assert_owner(v47 + 20);
              }
            }
          }
        }

        v64 = 67110144;
        v65 = v46;
        v66 = 1024;
        v67 = v33;
        v68 = 1024;
        v69 = v33;
        v70 = 1024;
        v71 = a2;
        v72 = 1024;
        OriginalProperty = CPRecordGetOriginalProperty();
        v44 = "Multiple relationships to the same location: Location is the same value as startLocation. recordID=%i, location=%i, startLocation=%i, currently setting %i; original value for property set = %i";
        goto LABEL_217;
      }
    }

    else
    {
      if (v33 < 1 || v33 != v39)
      {
        if (v37 >= 1 && v37 == v39)
        {
          v53 = CDBLogHandle;
          if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_218;
          }

          v54 = v53;
          v55 = CPRecordGetID();
          if (a1)
          {
            if (CDBLockingAssertionsEnabled)
            {
              if (CPRecordGetStore())
              {
                v56 = CPRecordStoreGetContext();
                if (v56)
                {
                  os_unfair_lock_assert_owner(v56 + 20);
                }
              }
            }
          }

          v64 = 67110144;
          v65 = v55;
          v66 = 1024;
          v67 = v37;
          v68 = 1024;
          v69 = v37;
          v70 = 1024;
          v71 = a2;
          v72 = 1024;
          OriginalProperty = CPRecordGetOriginalProperty();
          v57 = "Multiple relationships to the same location: startLocation is the same value as endLocation. recordID=%i, startLocation=%i, endLocation=%i, currently setting %i; original value for property set = %i";
        }

        else if (v35 >= 1 && v35 == v37)
        {
          v58 = CDBLogHandle;
          if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_218;
          }

          v54 = v58;
          v59 = CPRecordGetID();
          if (a1)
          {
            if (CDBLockingAssertionsEnabled)
            {
              if (CPRecordGetStore())
              {
                v60 = CPRecordStoreGetContext();
                if (v60)
                {
                  os_unfair_lock_assert_owner(v60 + 20);
                }
              }
            }
          }

          v64 = 67110144;
          v65 = v59;
          v66 = 1024;
          v67 = v35;
          v68 = 1024;
          v69 = v35;
          v70 = 1024;
          v71 = a2;
          v72 = 1024;
          OriginalProperty = CPRecordGetOriginalProperty();
          v57 = "Multiple relationships to the same location: clientLocation is the same value as startLocation. recordID=%i, clientLocation=%i, startLocation=%i, currently setting %i; original value for property set = %i";
        }

        else
        {
          if (v35 < 1 || v35 != v39)
          {
            goto LABEL_219;
          }

          v61 = CDBLogHandle;
          if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_218;
          }

          v54 = v61;
          v62 = CPRecordGetID();
          if (a1)
          {
            if (CDBLockingAssertionsEnabled)
            {
              if (CPRecordGetStore())
              {
                v63 = CPRecordStoreGetContext();
                if (v63)
                {
                  os_unfair_lock_assert_owner(v63 + 20);
                }
              }
            }
          }

          v64 = 67110144;
          v65 = v62;
          v66 = 1024;
          v67 = v35;
          v68 = 1024;
          v69 = v35;
          v70 = 1024;
          v71 = a2;
          v72 = 1024;
          OriginalProperty = CPRecordGetOriginalProperty();
          v57 = "Multiple relationships to the same location: clientLocation is the same value as endLocation. recordID=%i, clientLocation=%i, endLocation=%i, currently setting %i; original value for property set = %i";
        }

        _os_log_impl(&dword_1DEBB1000, v54, OS_LOG_TYPE_ERROR, v57, &v64, 0x20u);

        goto LABEL_218;
      }

      v48 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v41 = v48;
        v49 = CPRecordGetID();
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v50 = CPRecordStoreGetContext();
              if (v50)
              {
                os_unfair_lock_assert_owner(v50 + 20);
              }
            }
          }
        }

        v64 = 67110144;
        v65 = v49;
        v66 = 1024;
        v67 = v33;
        v68 = 1024;
        v69 = v33;
        v70 = 1024;
        v71 = a2;
        v72 = 1024;
        OriginalProperty = CPRecordGetOriginalProperty();
        v44 = "Multiple relationships to the same location: Location is the same value as endLocation. recordID=%i, location=%i, endLocation=%i, currently setting %i; original value for property set = %i";
        goto LABEL_217;
      }
    }

LABEL_218:
    v51 = CalGetDatabaseForRecord();
    _CalDatabaseIntegrityError(v51, @"Duplicate Location Reference");
    goto LABEL_219;
  }

  if (((1 << v27) & 0xCC000000000000) != 0)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
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

    v31 = *MEMORY[0x1E69E9840];
    goto LABEL_165;
  }

  if (((1 << v27) & 0x330000000000000) == 0)
  {
    if (((1 << v27) & 3) != 0)
    {
      goto LABEL_170;
    }

    goto LABEL_169;
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
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

  v29 = *MEMORY[0x1E69E9840];
LABEL_165:

  CPRecordSetProperty();
}

void _CalCalendarItemPropertyWillChange(_BOOL8 a1, int a2, void *a3)
{
  switch(a2)
  {
    case 73:
      if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }

      v15 = CPRecordGetOriginalProperty();
      v11 = a3;
      if (!(v11 | v15) || [v15 isEqual:v11])
      {
        if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

        CPRecordSetProperty();
      }

      break;
    case 24:
      if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

      if (!CPRecordGetProperty())
      {
        if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

        if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

        CPRecordGetProperty();

        CPRecordSetProperty();
      }

      break;
    case 9:
      if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

      Property = CPRecordGetProperty();
      if (Property != a3)
      {
        if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

        v8 = CPRecordGetProperty();
        if (Property >= 1 && !v8)
        {

          _CalRecordSetPropertyIfDifferent(a1, 92, (Property & 0x7FFFFFFF));
        }
      }

      break;
  }
}

void CalEventInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalEventClass, &kCalEventIndexes, &kCalEventChangesIndexes);

  CalMigrationCreateTriggers(a2, &kCalEventClass, &kCalEventTriggers);
}

void CalEventMigrateTables(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 <= 54)
  {
    if (a3 < 13)
    {
      goto LABEL_58;
    }

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
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
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

    v8 = CPSqliteConnectionStatementForSQL();
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
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

    v10 = CPSqliteConnectionStatementForSQL();
    v11 = v10;
    if (v6 && v8 && v10)
    {
      v62 = a2;
      v63 = v8;
      v64 = v10;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v6)
        {
          v12 = **v6;
          if (v12)
          {
            if (*(v12 + 104))
            {
              v13 = CPRecordStoreGetContext();
              if (v13)
              {
                os_unfair_lock_assert_owner(v13 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementSendResults();
    }

    else if (!v6)
    {
LABEL_42:
      if (v8)
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v8)
          {
            v17 = **v8;
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

      if (v11)
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v11)
          {
            v19 = **v11;
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

LABEL_58:
      v21 = @"CalendarItem";
      if (a3 < 56)
      {
        v21 = @"Event";
      }

      v22 = CFStringCreateWithFormat(0, 0, @"SELECT rowid, location FROM %@ WHERE location IS NOT NULL", v21, v62, v63, v64);
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
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
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
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
      v27 = v26;
      if (v24 && v26)
      {
        v63 = v26;
        v64 = 0;
        v62 = a2;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v24)
          {
            v28 = **v24;
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

        CPSqliteStatementSendResults();
      }

      else if (!v24)
      {
LABEL_89:
        if (v27)
        {
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

        if (v22)
        {
          CFRelease(v22);
        }

        v14 = 1;
        goto LABEL_100;
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v24)
        {
          v30 = **v24;
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

      CPSqliteStatementReset();
      goto LABEL_89;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v6)
      {
        v15 = **v6;
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
    goto LABEL_42;
  }

  if (a3 <= 0x3E)
  {
    goto LABEL_58;
  }

  if (a3 <= 0x5C)
  {
    v14 = 0;
LABEL_100:
    CalMigrationDropIndexes(a2, &kCalEventIndexes);
LABEL_101:
    CalMigrationDropTriggers(a2, &kCalEventTriggers);
    goto LABEL_102;
  }

  if (a3 <= 0x70)
  {
    v14 = 0;
    goto LABEL_101;
  }

  if (a3 <= 0x4A39)
  {
    v14 = 0;
LABEL_102:
    if (a3 >= 56)
    {
      v34 = 0;
    }

    else
    {
      v34 = @"Event";
    }

    CalMigrateTableFull(a2, &kCalEventClass, v34, &kCalEventUpgradeInfo, &kCalEventChangesUpgradeInfo, &kCalEventIndexes, &kCalEventChangesIndexes, &kCalEventTriggers, a3);
    if (a3 > 18009 || (sqlite3_create_function(*(a2 + 8), "CalDetectedConferenceURL", 4, 526337, 0, _CalEventRedetectConferenceURLHandler, 0, 0), CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET conference_url_detected = (SELECT CalDetectedConferenceURL(description, url, Location.title, Location.address) FROM CalendarItem as ci LEFT JOIN Location ON Location.ROWID = IIF(client_location_id > 0, client_location_id, location_id) WHERE ci.ROWID = CalendarItem.ROWID)"), a3 >= 17202))
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_152;
      }

      goto LABEL_110;
    }

    BirthdayCalendarId = _CalCalendarGetBirthdayCalendarId(a2);
    v62 = MEMORY[0x1E69E9820];
    v63 = 3221225472;
    v64 = ___CalEventCleanupBirthdayProperties_block_invoke;
    v65 = &__block_descriptor_36_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
    v66 = BirthdayCalendarId;
    CalPerformSQLWithConnectionAndBindBlock(a2, 0, @"UPDATE CalendarItem SET (contact_identifier, contact_name) = (NULL, NULL) WHERE calendar_id != ? AND (contact_identifier IS NOT NULL OR contact_name IS NOT NULL)", &v62);
    if (a3 > 36)
    {
      if (a3 > 0x30)
      {
        if (a3 > 0x34)
        {
          if (a3 > 54)
          {
LABEL_219:
            if (!v14)
            {
LABEL_147:
              if (a3 <= 68)
              {
LABEL_208:
                CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET has_attendees = 1 WHERE EXISTS (SELECT ROWID FROM Participant WHERE Participant.owner_id = CalendarItem.ROWID AND entity_type = 7)");
                goto LABEL_209;
              }

              if (a3 == 69)
              {
LABEL_209:
                CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET due_tz = start_tz, due_all_day = all_day WHERE entity_type = 3 AND due_date IS NOT NULL");
                goto LABEL_210;
              }

              if (a3 <= 0x51)
              {
LABEL_210:
                CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET display_order = CAST(creation_date AS INT), external_mod_tag = NULL WHERE entity_type = 3");
                goto LABEL_211;
              }

              if (a3 <= 0x59)
              {
LABEL_211:
                CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET invitation_status = 3 WHERE invitation_status = 2");
                CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET invitation_status = 2 WHERE invitation_status = 1");
                goto LABEL_212;
              }

              if (a3 <= 0x7E)
              {
LABEL_212:
                CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET end_tz = start_tz WHERE entity_type = 2");
LABEL_213:
                CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET has_attachment = 1 WHERE CalendarItem.ROWID IN (SELECT owner_id FROM Attachment)");
                return;
              }

LABEL_152:
              if (a3 > 0x4A38)
              {
                return;
              }

              goto LABEL_213;
            }

LABEL_110:
            if (a2)
            {
              if (CDBLockingAssertionsEnabled)
              {
                if (*a2)
                {
                  if (*(*a2 + 104))
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

            v37 = CPSqliteConnectionStatementForSQL();
            if (a2)
            {
              if (CDBLockingAssertionsEnabled)
              {
                if (*a2)
                {
                  if (*(*a2 + 104))
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

            v39 = CPSqliteConnectionStatementForSQL();
            v40 = v39;
            if (v37 && v39)
            {
              if (CDBLockingAssertionsEnabled == 1)
              {
                if (*v37)
                {
                  v41 = **v37;
                  if (v41)
                  {
                    if (*(v41 + 104))
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

              CPSqliteStatementSendResults();
            }

            else if (!v37)
            {
LABEL_139:
              if (v40)
              {
                if (CDBLockingAssertionsEnabled == 1)
                {
                  if (*v40)
                  {
                    v45 = **v40;
                    if (v45)
                    {
                      if (*(v45 + 104))
                      {
                        v46 = CPRecordStoreGetContext();
                        if (v46)
                        {
                          os_unfair_lock_assert_owner(v46 + 20);
                        }
                      }
                    }
                  }
                }

                CPSqliteStatementReset();
              }

              goto LABEL_147;
            }

            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v37)
              {
                v43 = **v37;
                if (v43)
                {
                  if (*(v43 + 104))
                  {
                    v44 = CPRecordStoreGetContext();
                    if (v44)
                    {
                      os_unfair_lock_assert_owner(v44 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
            goto LABEL_139;
          }

LABEL_159:
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*a2)
            {
              if (*(*a2 + 104))
              {
                v47 = CPRecordStoreGetContext();
                if (v47)
                {
                  os_unfair_lock_assert_owner(v47 + 20);
                }
              }
            }
          }

          v48 = CPSqliteConnectionStatementForSQL();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*a2)
            {
              if (*(*a2 + 104))
              {
                v49 = CPRecordStoreGetContext();
                if (v49)
                {
                  os_unfair_lock_assert_owner(v49 + 20);
                }
              }
            }
          }

          v50 = CPSqliteConnectionStatementForSQL();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*a2)
            {
              if (*(*a2 + 104))
              {
                v51 = CPRecordStoreGetContext();
                if (v51)
                {
                  os_unfair_lock_assert_owner(v51 + 20);
                }
              }
            }
          }

          v52 = CPSqliteConnectionStatementForSQL();
          v53 = v52;
          if (v48 && v50 && v52)
          {
            v62 = a2;
            v63 = v50;
            v64 = v52;
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v48)
              {
                v54 = **v48;
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

            CPSqliteStatementSendResults();
          }

          else if (!v48)
          {
            goto LABEL_192;
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v48)
            {
              v56 = **v48;
              if (v56)
              {
                if (*(v56 + 104))
                {
                  v57 = CPRecordStoreGetContext();
                  if (v57)
                  {
                    os_unfair_lock_assert_owner(v57 + 20);
                  }
                }
              }
            }
          }

          CPSqliteStatementReset();
LABEL_192:
          if (v50)
          {
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v50)
              {
                v58 = **v50;
                if (v58)
                {
                  if (*(v58 + 104))
                  {
                    v59 = CPRecordStoreGetContext();
                    if (v59)
                    {
                      os_unfair_lock_assert_owner(v59 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
          }

          if (v53)
          {
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v53)
              {
                v60 = **v53;
                if (v60)
                {
                  if (*(v60 + 104))
                  {
                    v61 = CPRecordStoreGetContext();
                    if (v61)
                    {
                      os_unfair_lock_assert_owner(v61 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
            if ((v14 & 1) == 0)
            {
              goto LABEL_208;
            }

            goto LABEL_110;
          }

          goto LABEL_219;
        }

LABEL_158:
        _CalDBFillInUUIDColumn(a2, @"CalendarItem");
        goto LABEL_159;
      }
    }

    else
    {
      EnsureAllEventsHaveUIDsWithQuery(a2);
    }

    CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET orig_date = NULL WHERE orig_date = -2147483648");
    CalPerformSQLWithConnection(a2, @"UPDATE CalendarItem SET last_modified = NULL WHERE last_modified = -2147483648");
    goto LABEL_158;
  }
}

uint64_t _CalEventSaveAddedRecords(uint64_t a1)
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

  CPRecordStoreProcessAddedRecordsWithPolicyAndTransactionTypeMatchingPredicate();
  v5 = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
  {
    v7 = CPRecordStoreGetContext();
    if (v7)
    {
      os_unfair_lock_assert_owner(v7 + 20);
    }
  }

  CPRecordStoreProcessAddedRecordsOfClassWithPolicyAndTransactionType();
  return 0;
}

const __CFSet *_CalEventAddOriginalEventFilter(uint64_t a1, const void *a2)
{
  if (_CalEntityGetType(a2) != 2)
  {
    return 0;
  }

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

  result = CPRecordGetProperty();
  if (result)
  {
    return CalToManyRelationIsDirty(result);
  }

  return result;
}

CFTypeRef _CalCalendarItemHasValidParent(uint64_t a1)
{
  result = _CalCalendarItemGetCalendar(a1);
  if (result)
  {

    return _CalRecordStillExists();
  }

  return result;
}

void _CalCalendarItemCleanUpDanglingEntities(uint64_t a1, void *a2)
{
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM CalendarItem WHERE calendar_id NOT IN (SELECT ROWID FROM Calendar);", 0);
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM CalendarItem WHERE (orig_date != 0 AND orig_item_id = 0) OR orig_item_id IN (SELECT ROWID FROM CalendarItem WHERE orig_date != 0 AND orig_item_id = 0);", 0);

  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM CalendarItem WHERE orig_item_id = ROWID OR orig_item_id IN (SELECT ROWID FROM CalendarItem WHERE orig_item_id = ROWID);", 0);
}

const void *_CalCalendarItemCreate(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    _CalCalendarItemCreate_cold_1();
  }

  v4 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, a2);
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
  CFRelease(TemporaryRecordIDForEntity);
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
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
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  CPRecordInitializeProperty();
  Current = CFAbsoluteTimeGetCurrent();
  v20 = CFDateCreate(0, Current);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  MEMORY[0x1E12C5EF0](v20);
  CPRecordInitializeProperty();
  CFRelease(v20);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  CPRecordInitializeProperty();
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

  CPRecordInitializeProperty();
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

  CPRecordInitializeProperty();
  v26 = _CalDBCreateUUIDString();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  CPRecordInitializeProperty();
  CFRelease(v26);
  _CalDatabaseAddEntity(a1, v4);
  _CalEventMarkEventAsHavingDirtyInstanceAttributes(v4);
  if (a2 == 2)
  {
    _CalEventMarkEventAsNeedingOccurrenceCacheUpdate(v4);
  }

  return v4;
}

uint64_t _CalEventMarkEventAsHavingDirtyInstanceAttributes(uint64_t a1)
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

uint64_t _CalEventMarkEventAsNeedingOccurrenceCacheUpdate(const void *a1)
{
  if ((_CalEntityIsOfType(a1, 2) & 1) == 0)
  {
    _CalEventMarkEventAsNeedingOccurrenceCacheUpdate_cold_1();
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

  return CPRecordSetProperty();
}

CFTypeRef _CalEventGetDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v27 = _CalCalendarItemCopyUUID(a1);
    v26 = _CalCalendarItemCopyExternalID(a1);
    UniqueIdentifier = _CalEventGetUniqueIdentifier(a1);
    cf = _CalEventCopySummary(a1);
    StartDate = _CalEventGetStartDate(a1);
    DateProperty = _CalRecordGetDateProperty(a1);
    IsAllDay = _CalEventIsAllDay(a1);
    v5 = _CalCalendarItemCopyURL(a1);
    OriginalEvent = _CalEventGetOriginalEvent(a1);
    Location = _CalCalendarItemGetLocation(a1);
    if (Location)
    {
      v8 = _CalLocationCopyFullDisplayString(Location);
    }

    else
    {
      v8 = 0;
    }

    Calendar = _CalCalendarItemGetCalendar(a1);
    if (Calendar)
    {
      v11 = _CalCalendarCopyUUID(Calendar);
      ID = CPRecordGetID();
    }

    else
    {
      v11 = 0;
      ID = 0xFFFFFFFFLL;
    }

    v13 = OriginalEvent != 0;
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*&StartDate];
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:DateProperty];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:IsAllDay];
    v18 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    v19 = [MEMORY[0x1E696AD98] numberWithInt:ID];
    v20 = [v14 initWithFormat:@"uuid: [%@] externalID: [%@] uniqueIdentifier: [%@] summary: [%@] startDate: [%@] endDate: [%@] isAllDay: [%@] url: [%@] isDetached: [%@] locationFullDisplayString: [%@] calendarUUID: [%@] calendarRowID: [%@]", v27, v26, UniqueIdentifier, cf, v15, v16, v17, v5, v18, v8, v11, v19];

    if (v11)
    {
      CFRelease(v11);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (v20)
    {
      v21 = CFRetain(v20);
      v22 = CFAutorelease(v21);

      return v22;
    }
  }

  else
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "NULL 'event' given.  Will not generate a debug description.", buf, 2u);
    }
  }

  return 0;
}

uint64_t _CalCalendarItemCopyUUID(uint64_t a1)
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

uint64_t _CalEventGetUniqueIdentifier(uint64_t a1)
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

uint64_t _CalEventCopySummary(uint64_t a1)
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

uint64_t _CalEventGetStartDate(uint64_t a1)
{
  DateProperty = _CalRecordGetDateProperty(a1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
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
  return *&DateProperty;
}

BOOL _CalEventIsAllDay(uint64_t a1)
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

const void *CalDatabaseCreateEvent(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalCalendarItemCreate(a1, 2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

const void *_CalCalendarItemCreateCopyPreservingUniqueIdentifier(const void *a1, int a2)
{
  if (!a1)
  {
    _CalCalendarItemCreateCopyPreservingUniqueIdentifier_cold_1();
  }

  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Copy = _CalCalendarItemCreateCopy(0, a1, 1, 1, a2, 1, -2147483650.0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Copy;
}

const void *_CalCalendarItemCreateCopy(const void *a1, const void *a2, char a3, int a4, int a5, uint64_t a6, double a7)
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  EntityType = _CalCalendarItemGetEntityType(a2);
  v14 = _CalCalendarItemCreate(DatabaseForRecord, EntityType);
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

  Property = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 0, Property);
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

  v18 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 3, v18);
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

  v20 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 4, v20);
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

  v22 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 5, v22);
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

  v24 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 6, v24);
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

  v26 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 7, v26);
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

  v28 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 8, v28);
  if (!a1)
  {
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

    v30 = CPRecordGetProperty();
    _CalRecordSetPropertyIfDifferent(v14, 9, v30);
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

  v32 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 14, v32);
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

  v34 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 16, v34);
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

  v36 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 17, v36);
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

  v38 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 20, v38);
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

  v40 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 57, v40);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v41 = CPRecordStoreGetContext();
        if (v41)
        {
          os_unfair_lock_assert_owner(v41 + 20);
        }
      }
    }
  }

  v42 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 63, v42);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v43 = CPRecordStoreGetContext();
        if (v43)
        {
          os_unfair_lock_assert_owner(v43 + 20);
        }
      }
    }
  }

  v44 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 58, v44);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v45 = CPRecordStoreGetContext();
        if (v45)
        {
          os_unfair_lock_assert_owner(v45 + 20);
        }
      }
    }
  }

  v46 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 64, v46);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v47 = CPRecordStoreGetContext();
        if (v47)
        {
          os_unfair_lock_assert_owner(v47 + 20);
        }
      }
    }
  }

  v48 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 65, v48);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v49 = CPRecordStoreGetContext();
        if (v49)
        {
          os_unfair_lock_assert_owner(v49 + 20);
        }
      }
    }
  }

  v50 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 67, v50);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v51 = CPRecordStoreGetContext();
        if (v51)
        {
          os_unfair_lock_assert_owner(v51 + 20);
        }
      }
    }
  }

  v52 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 70, v52);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v53 = CPRecordStoreGetContext();
        if (v53)
        {
          os_unfair_lock_assert_owner(v53 + 20);
        }
      }
    }
  }

  v54 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 117, v54);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v55 = CPRecordStoreGetContext();
        if (v55)
        {
          os_unfair_lock_assert_owner(v55 + 20);
        }
      }
    }
  }

  v56 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 127, v56);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v57 = CPRecordStoreGetContext();
        if (v57)
        {
          os_unfair_lock_assert_owner(v57 + 20);
        }
      }
    }
  }

  v58 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 118, v58);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v59 = CPRecordStoreGetContext();
        if (v59)
        {
          os_unfair_lock_assert_owner(v59 + 20);
        }
      }
    }
  }

  v60 = CPRecordGetProperty();
  _CalRecordSetPropertyIfDifferent(v14, 119, v60);
  if (a6)
  {
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v61 = CPRecordStoreGetContext();
          if (v61)
          {
            os_unfair_lock_assert_owner(v61 + 20);
          }
        }
      }
    }

    v62 = CPRecordGetProperty();
    _CalRecordSetPropertyIfDifferent(v14, 26, v62);
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v63 = CPRecordStoreGetContext();
          if (v63)
          {
            os_unfair_lock_assert_owner(v63 + 20);
          }
        }
      }
    }

    v64 = CPRecordGetProperty();
    _CalRecordSetPropertyIfDifferent(v14, 35, v64);
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v65 = CPRecordStoreGetContext();
          if (v65)
          {
            os_unfair_lock_assert_owner(v65 + 20);
          }
        }
      }
    }

    v66 = CPRecordGetProperty();
    _CalRecordSetPropertyIfDifferent(v14, 24, v66);
  }

  Location = _CalCalendarItemGetLocation(a2);
  if (Location)
  {
    v68 = _CalLocationCopy(DatabaseForRecord, Location);
    if (v68)
    {
      v69 = v68;
      _CalCalendarItemSetLocation(v14, v68);
      CFRelease(v69);
    }
  }

  StartLocation = _CalCalendarItemGetStartLocation(a2);
  if (StartLocation)
  {
    v71 = _CalLocationCopy(DatabaseForRecord, StartLocation);
    if (v71)
    {
      v72 = v71;
      _CalCalendarItemSetStartLocation(v14, v71);
      CFRelease(v72);
    }
  }

  EndLocation = _CalCalendarItemGetEndLocation(a2);
  if (EndLocation)
  {
    v74 = _CalLocationCopy(DatabaseForRecord, EndLocation);
    if (v74)
    {
      v75 = v74;
      _CalCalendarItemSetEndLocation(v14, v74);
      CFRelease(v75);
    }
  }

  ClientLocation = _CalCalendarItemGetClientLocation(a2);
  if (ClientLocation)
  {
    v77 = _CalLocationCopy(DatabaseForRecord, ClientLocation);
    if (v77)
    {
      v78 = v77;
      _CalCalendarItemSetClientLocation(v14, v77);
      CFRelease(v78);
    }
  }

  v145 = a1;
  if (a7 != 0x7FFFFFFF)
  {
    v79 = _CalCalendarItemCopyExceptionDates(a2);
    if (v79)
    {
      v80 = v79;
      Count = CFArrayGetCount(v79);
      if (Count >= 1)
      {
        v82 = Count;
        for (i = 0; i != v82; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v80, i);
          if (_CalExceptionDateGetDate(ValueAtIndex) && MEMORY[0x1E12C5EF0]() >= a7)
          {
            v85 = _CalExceptionDateCopy(DatabaseForRecord, ValueAtIndex);
            _CalCalendarItemAddExceptionDate(v14, v85);
            CFRelease(v85);
          }
        }
      }

      CFRelease(v80);
    }
  }

  v86 = _CalCalendarItemCopyAlarms(a2);
  if (v86)
  {
    v87 = v86;
    v88 = CFArrayGetCount(v86);
    if (v88 >= 1)
    {
      v89 = v88;
      for (j = 0; j != v89; ++j)
      {
        v91 = CFArrayGetValueAtIndex(v87, j);
        v92 = v91;
        if ((a3 & 1) != 0 || fabs(_CalAlarmGetTriggerDate(v91) + -1.17549435e-38) < 2.22044605e-16)
        {
          v93 = _CalAlarmCopy(DatabaseForRecord, v92);
          _CalCalendarItemAddAlarm(v14, v93);
          CFRelease(v93);
        }
      }
    }

    CFRelease(v87);
  }

  if (a4)
  {
    v94 = _CalCalendarItemCopyRecurrencesWhileLocked(a2, 1);
    if (v94)
    {
      v95 = v94;
      v96 = CFArrayGetCount(v94);
      if (v96 >= 1)
      {
        v97 = v96;
        for (k = 0; k != v97; ++k)
        {
          v99 = CFArrayGetValueAtIndex(v95, k);
          v100 = _CalRecurrenceCopy(DatabaseForRecord, v99);
          _CalCalendarItemAddRecurrence(v14, v100);
          CFRelease(v100);
        }
      }

      CFRelease(v95);
    }
  }

  Organizer = _CalCalendarItemGetOrganizer(a2);
  if (Organizer)
  {
    v102 = _CalParticipantCopy(DatabaseForRecord, Organizer);
    if (v102)
    {
      v103 = v102;
      _CalCalendarItemSetOrganizer(v14, v102);
      CFRelease(v103);
    }
  }

  SelfAttendee = _CalCalendarItemGetSelfAttendee(a2);
  v105 = _CalCalendarItemCopyAttendees(a2);
  if (v105)
  {
    v106 = v105;
    v107 = CFArrayGetCount(v105);
    if (v107 >= 1)
    {
      v108 = v107;
      for (m = 0; m != v108; ++m)
      {
        v110 = CFArrayGetValueAtIndex(v106, m);
        v111 = _CalParticipantCopy(DatabaseForRecord, v110);
        _CalCalendarItemAddAttendee(v14, v111);
        if (v110 == SelfAttendee)
        {
          _CalCalendarItemSetSelfAttendee(v14, v111);
        }

        CFRelease(v111);
      }
    }

    CFRelease(v106);
  }

  v112 = _CalCalendarItemCopyAttendeesPendingDeletion(a2);
  if (v112)
  {
    v113 = v112;
    v114 = CFArrayGetCount(v112);
    if (v114 >= 1)
    {
      v115 = v114;
      for (n = 0; n != v115; ++n)
      {
        v117 = CFArrayGetValueAtIndex(v113, n);
        v118 = _CalParticipantCopy(DatabaseForRecord, v117);
        _CalCalendarItemAddPendingDeleteAttendee(v14, v118);
        if (v117 == SelfAttendee)
        {
          _CalCalendarItemSetSelfAttendee(v14, v118);
        }

        CFRelease(v118);
      }
    }

    CFRelease(v113);
  }

  v119 = _CalCalendarItemCopyAttachments(a2);
  if (v119)
  {
    v120 = v119;
    Calendar = v145;
    if (v145 || (Calendar = _CalCalendarItemGetCalendar(a2)) != 0)
    {
      Store = _CalCalendarGetStore(Calendar);
    }

    else
    {
      Store = 0;
    }

    v123 = CFArrayGetCount(v120);
    if (v123 >= 1)
    {
      v124 = v123;
      for (ii = 0; ii != v124; ++ii)
      {
        v126 = CFArrayGetValueAtIndex(v120, ii);
        v127 = _CalAttachmentCopy(Store, v126);
        _CalCalendarItemAddAttachment(v14, v127);
        CFRelease(v127);
      }
    }

    CFRelease(v120);
  }

  v128 = _CalCalendarItemCopyContacts(a2);
  if (v128)
  {
    v129 = v128;
    v130 = CFArrayGetCount(v128);
    if (v130 >= 1)
    {
      v131 = v130;
      for (jj = 0; jj != v131; ++jj)
      {
        v133 = CFArrayGetValueAtIndex(v129, jj);
        v134 = _CalContactCopy(DatabaseForRecord, v133);
        _CalCalendarItemAddContact(v14, v134);
        CFRelease(v134);
      }
    }

    CFRelease(v129);
  }

  if (v145)
  {
    _CalCalendarAddCalendarItem(v145, v14);
  }

  if (a5)
  {
    if (_CalEntityGetType(a2) == 2)
    {
      v135 = _CalEventCopyDetachedEvents(a2);
      if (v135)
      {
        v136 = v135;
        v137 = CFArrayGetCount(v135);
        if (v137 >= 1)
        {
          v138 = v137;
          for (kk = 0; kk != v138; ++kk)
          {
            v140 = CFArrayGetValueAtIndex(v136, kk);
            Copy = _CalCalendarItemCreateCopy(v145, v140, 1, 1, 0, a6, -2147483650.0);
            _CalEventAddDetachedEvent(v14, Copy);
            DateProperty = _CalRecordGetDateProperty(v140);
            _CalEventSetOriginalStartDate(Copy, DateProperty);
            CFRelease(Copy);
          }
        }

        CFRelease(v136);
      }
    }
  }

  return v14;
}

const void *CalCalendarItemCreateCopyInCalendar(const void *a1, const void *a2, int a3, uint64_t a4)
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  v9 = CalGetDatabaseForRecord();
  CalDatabaseMultiLock(v9, DatabaseForRecord);
  Copy = _CalCalendarItemCreateCopy(a1, a2, 1, 1, a3, a4, -2147483650.0);
  CalDatabaseMultiUnlock(v9, DatabaseForRecord);
  return Copy;
}

const void *CalCalendarItemCreateCopy(const void *a1, int a2)
{
  if (!a1)
  {
    CalCalendarItemCreateCopy_cold_1();
  }

  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Copy = _CalCalendarItemCreateCopy(0, a1, 1, 1, a2, 0, -2147483650.0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Copy;
}

CFMutableArrayRef _CalEventCopyDetachedEvents(uint64_t a1)
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

void _CalEventAddDetachedEvent(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  ID = CPRecordGetID();
  v5 = CPRecordGetID();
  if (a1 == a2 || ID != -1 && ID == v5)
  {
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:COERCE_DOUBLE(_CalEventGetStartDate(a1))];
    v7 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v13[0] = 67109378;
      v13[1] = CPRecordGetID();
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_ERROR, "Attempting to add an event (ROWID = %d, startDate = %{public}@) as a detachment of itself. Ignoring.", v13, 0x12u);
    }

LABEL_7:
    v9 = *MEMORY[0x1E69E9840];
    return;
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

  Property = CPRecordGetProperty();
  if (!Property)
  {
    goto LABEL_7;
  }

  v12 = *MEMORY[0x1E69E9840];

  CalToManyRelationAddObject(Property, a2);
}

void _CalEventSetOriginalStartDate(uint64_t a1, CFAbsoluteTime a2)
{
  Store = CPRecordGetStore();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
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
  CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(a2);
  if (Property != -1)
  {
    if (Store)
    {
      v8 = CPRecordGetStore();
      CalendarItemWithRowID = _CalGetCalendarItemWithRowID(v8);
      if (CalendarItemWithRowID)
      {
        v10 = CalendarItemWithRowID;
        DateProperty = _CalRecordGetDateProperty(a1);
        if (vabdd_f64(DateProperty, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
        {
          _CalCalendarItemRemoveExceptionDateWithCalDate(v10, DateProperty);
        }
      }
    }
  }

  _CalRecordSetPropertyIfDifferent(a1, 11, CFDateRefFromCalDate);
  if (CFDateRefFromCalDate)
  {

    CFRelease(CFDateRefFromCalDate);
  }
}

void _CalRemoveEvent(const void *a1, int a2, int a3)
{
  Store = CPRecordGetStore();
  if (Store)
  {
    v7 = Store;
    _CalEventMarkEventAsNeedingOccurrenceCacheUpdate(a1);
    _CalEventMarkEventAsHavingDirtyInstanceAttributes(a1);
    if (_CalCalendarItemHasAlarms(a1))
    {
      CPRecordGetStore();
      Context = CPRecordStoreGetContext();
      _CalDatabaseSetChangeFlags(Context, 8);
    }

    _CalEventRemoveAllEventActions(a1);
    if (a2)
    {
      v9 = _CalEventCopyDetachedEvents(a1);
      if (v9)
      {
        v10 = v9;
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v12 = Count;
          for (i = 0; i != v12; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
            _CalRemoveEvent(ValueAtIndex, 0, 0);
          }
        }

        CFRelease(v10);
      }
    }

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

    if (CPRecordGetProperty() >= 1)
    {
      CalendarItemWithRowID = _CalGetCalendarItemWithRowID(v7);
      if (CalendarItemWithRowID)
      {
        v17 = CalendarItemWithRowID;
        if (_CalCalendarItemIsPhantomMaster(CalendarItemWithRowID))
        {
          v18 = _CalEventCopyDetachedEvents(v17);
          if (v18)
          {
            v19 = v18;
            if (CFArrayGetCount(v18) <= 1)
            {
              _CalRemoveEvent(v17, 0, 0);
            }

            CFRelease(v19);
          }

          else
          {
            _CalRemoveEvent(v17, 0, 0);
          }
        }

        else
        {
          if (a3)
          {
            DateProperty = _CalRecordGetDateProperty(a1);
            if (vabdd_f64(DateProperty, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
            {
              _CalCalendarItemAddExceptionDateWithCalDate(v17, DateProperty);
            }
          }

          _CalEventMarkEventAsHavingDirtyInstanceAttributes(v17);
          if ((_CalEntityIsNew(v17) & 1) == 0)
          {
            if (CDBLockingAssertionsEnabled == 1)
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

            CPRecordMarkChanged();
          }
        }
      }
    }

    v22 = CalCopyDatabaseForRecord();
    if (v22)
    {
      v23 = v22;
      _CalDatabaseRemoveEntity(v22, a1);

      CFRelease(v23);
    }
  }
}

void _CalEventRemoveAllEventActions(uint64_t a1)
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

    CalToManyRelationRemoveAllObjects(Property);
  }
}

__CFArray *_CalCalendarItemCopyRelatedEntitiesDeletedByTriggers(uint64_t a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Location = _CalCalendarItemGetLocation(a2);
  if (Location)
  {
    CFArrayAppendValue(Mutable, Location);
  }

  ClientLocation = _CalCalendarItemGetClientLocation(a2);
  if (ClientLocation)
  {
    CFArrayAppendValue(Mutable, ClientLocation);
  }

  StartLocation = _CalCalendarItemGetStartLocation(a2);
  if (StartLocation)
  {
    CFArrayAppendValue(Mutable, StartLocation);
  }

  EndLocation = _CalCalendarItemGetEndLocation(a2);
  if (EndLocation)
  {
    CFArrayAppendValue(Mutable, EndLocation);
  }

  v8 = _CalCalendarItemCopyAlarms(a2);
  if (v8)
  {
    v9 = v8;
    v20.length = CFArrayGetCount(v8);
    v20.location = 0;
    CFArrayAppendArray(Mutable, v9, v20);
    CFRelease(v9);
  }

  v10 = _CalCalendarItemCopyRecurrencesWhileLocked(a2, 1);
  if (v10)
  {
    v11 = v10;
    v21.length = CFArrayGetCount(v10);
    v21.location = 0;
    CFArrayAppendArray(Mutable, v11, v21);
    CFRelease(v11);
  }

  v12 = _CalCalendarItemCopyAttendees(a2);
  if (v12)
  {
    v13 = v12;
    v22.length = CFArrayGetCount(v12);
    v22.location = 0;
    CFArrayAppendArray(Mutable, v13, v22);
    CFRelease(v13);
  }

  v14 = _CalCalendarItemCopyAttachments(a2);
  if (v14)
  {
    v15 = v14;
    v23.length = CFArrayGetCount(v14);
    v23.location = 0;
    CFArrayAppendArray(Mutable, v15, v23);
    CFRelease(v15);
  }

  v16 = _CalCalendarItemCopyContacts(a2);
  if (v16)
  {
    v17 = v16;
    v24.length = CFArrayGetCount(v16);
    v24.location = 0;
    CFArrayAppendArray(Mutable, v17, v24);
    CFRelease(v17);
  }

  Error = _CalCalendarItemGetError(a2);
  if (Error)
  {
    CFArrayAppendValue(Mutable, Error);
  }

  return Mutable;
}

void CalRemoveEvent(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveEvent(a1, 0, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalEventIsFloating(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsFloating = _CalCalendarItemIsFloating(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsFloating;
}

uint64_t _CalEventMarkPropertyModified(uint64_t a1)
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

uint64_t CalEventGetModifiedProperties(uint64_t a1)
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

void CalEventClearModifiedProperties(uint64_t a1)
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

uint64_t _CalEventMarkAsModifiedForChangeTracking(uint64_t a1)
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

  CPRecordMarkChanged();

  return _CalEventMarkEventAsHavingDirtyNotifiableAttributes(a1);
}

uint64_t _CalEventMarkEventAsHavingDirtyNotifiableAttributes(uint64_t a1)
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

void CalRemoveEventAndDetachedEvents(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveEvent(a1, 1, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalEventUpdateOccurrenceCache(void *a1)
{
  if (CPRecordGetStore())
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v3 = _CalDatabaseCopyEventOccurrenceCache(Context);
      if (v3)
      {
        v4 = v3;
        _CalEventOccurrenceCacheMarkEventForUpdate(v3, a1);

        CFRelease(v4);
      }
    }
  }
}

void _CalEventUpdateAlarmCache(void *a1)
{
  if (CPRecordGetStore())
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v3 = _CalDatabaseCopyEventOccurrenceCache(Context);
      if (v3)
      {
        v4 = v3;
        _CalEventOccurrenceCacheMarkEventForAlarmUpdate(v3, a1);

        CFRelease(v4);
      }
    }
  }
}

uint64_t _CalEventMarkEventAsNeedingAlarmCacheUpdate(const void *a1)
{
  if ((_CalEntityIsOfType(a1, 2) & 1) == 0)
  {
    _CalEventMarkEventAsNeedingAlarmCacheUpdate_cold_1();
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

  return CPRecordSetProperty();
}

uint64_t _CalTaskMarkAsNeedingScheduledTaskCacheUpdate(const void *a1)
{
  if ((_CalEntityIsOfType(a1, 3) & 1) == 0)
  {
    _CalTaskMarkAsNeedingScheduledTaskCacheUpdate_cold_1();
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

  return CPRecordSetProperty();
}

void _CalEventRectifyRecurrenceSeriesPrivacyLevels(CFTypeRef OriginalEvent)
{
  v61 = *MEMORY[0x1E69E9840];
  ID = CPRecordGetID();
  v3 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = _CalEventCopySummary(OriginalEvent);
    *buf = 67109378;
    *v58 = ID;
    *&v58[4] = 2112;
    *&v58[6] = v5;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_DEBUG, "Rectifying recurrence series privacy levels for event with ID: [%d] title: [%@]", buf, 0x12u);
  }

  if (OriginalEvent)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v7 = CPRecordCopyChangedProperties();
  if (v7)
  {
    v8 = v7;
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      while (CFArrayGetValueAtIndex(v8, v11) != 17)
      {
        if (v10 == ++v11)
        {
          goto LABEL_37;
        }
      }

      v12 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v13 = v12;
        PrivacyLevel = _CalEventGetPrivacyLevel(OriginalEvent);
        v15 = CalPrivacyLevelAsString(PrivacyLevel);
        *buf = 138412546;
        *v58 = v15;
        *&v58[8] = 1024;
        *&v58[10] = ID;
        _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_DEBUG, "Privacy level change to [%@] detected on event with ID: [%d]", buf, 0x12u);
      }

      Calendar = _CalCalendarItemGetCalendar(OriginalEvent);
      Store = _CalCalendarGetStore(Calendar);
      v18 = _CalStoreRequiresSamePrivacyLevelAcrossRecurrenceSeries(Store);
      v19 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v20 = v19;
        v21 = CalBooleanAsString();
        *buf = 67109378;
        *v58 = ID;
        *&v58[4] = 2112;
        *&v58[6] = v21;
        _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_DEBUG, "The store for the event with ID [%d] requires the same privacy level across the recurrence series: [%@]", buf, 0x12u);
      }

      if (v18)
      {
        v22 = _CalEventGetPrivacyLevel(OriginalEvent);
        v23 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v24 = v23;
          v25 = CalPrivacyLevelAsString(v22);
          *buf = 67109378;
          *v58 = ID;
          *&v58[4] = 2112;
          *&v58[6] = v25;
          _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_DEBUG, "Privacy level override for event with ID [%d] is [%@].", buf, 0x12u);
        }

        if (_CalEventGetOriginalEvent(OriginalEvent))
        {
          OriginalEvent = _CalEventGetOriginalEvent(OriginalEvent);
          v26 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v27 = v26;
            v28 = CPRecordGetID();
            *buf = 67109376;
            *v58 = ID;
            *&v58[4] = 1024;
            *&v58[6] = v28;
            _os_log_impl(&dword_1DEBB1000, v27, OS_LOG_TYPE_DEBUG, "Event with ID [%d] is a detached event.  Grabbed the master event with ID [%d].", buf, 0xEu);
          }
        }

        else
        {
          v29 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v58 = ID;
            _os_log_impl(&dword_1DEBB1000, v29, OS_LOG_TYPE_DEBUG, "Event with ID [%d] is a master event.", buf, 8u);
          }
        }

        v30 = _CalEventGetPrivacyLevel(OriginalEvent);
        if (v30 != v22)
        {
          v31 = v30;
          _CalRecordSetPropertyIfDifferent(OriginalEvent, 17, v22);
          v32 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v33 = v32;
            v34 = CPRecordGetID();
            v35 = CalPrivacyLevelAsString(v31);
            v36 = CalPrivacyLevelAsString(v22);
            *buf = 67109890;
            *v58 = v34;
            *&v58[4] = 1024;
            *&v58[6] = ID;
            *&v58[10] = 2112;
            *&v58[12] = v35;
            v59 = 2112;
            v60 = v36;
            _os_log_impl(&dword_1DEBB1000, v33, OS_LOG_TYPE_DEBUG, "Master event with ID [%d] for event with ID [%d] had its privacy level changed from [%@] to [%@].", buf, 0x22u);
          }
        }

        v37 = _CalEventCopyDetachedEvents(OriginalEvent);
        if (v37)
        {
          v38 = v37;
          v39 = CFArrayGetCount(v37);
          if (v39 >= 1)
          {
            v40 = v39;
            v41 = 0;
            v42 = v22;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v38, v41);
              v44 = _CalEventGetPrivacyLevel(ValueAtIndex);
              if (v44 != v22)
              {
                v45 = v44;
                _CalRecordSetPropertyIfDifferent(ValueAtIndex, 17, v42);
                v46 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  log = v46;
                  v47 = v38;
                  v48 = v40;
                  v49 = OriginalEvent;
                  v50 = v42;
                  v51 = ID;
                  v52 = CPRecordGetID();
                  v53 = CalPrivacyLevelAsString(v45);
                  v54 = CalPrivacyLevelAsString(v22);
                  *buf = 67109890;
                  *v58 = v52;
                  ID = v51;
                  v42 = v50;
                  OriginalEvent = v49;
                  v40 = v48;
                  v38 = v47;
                  *&v58[4] = 1024;
                  *&v58[6] = ID;
                  *&v58[10] = 2112;
                  *&v58[12] = v53;
                  v59 = 2112;
                  v60 = v54;
                  _os_log_impl(&dword_1DEBB1000, log, OS_LOG_TYPE_DEBUG, "Detached event with ID [%d] associated with event with ID [%d] had its privacy level changed from [%@] to [%@].", buf, 0x22u);
                }
              }

              ++v41;
            }

            while (v40 != v41);
          }

          CFRelease(v38);
        }
      }
    }

LABEL_37:
    CFRelease(v8);
  }

  v55 = *MEMORY[0x1E69E9840];
}

uint64_t _CalEventGetPrivacyLevel(uint64_t a1)
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

CFTypeRef _CalEventGetOriginalEvent(uint64_t a1)
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

uint64_t _CalInvalidateCalendarItemsForCalendarId(uint64_t a1)
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

uint64_t _CalEventInvalidateWithCalendarId(uint64_t a1, int a2)
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
  v5 = a2 != -1 && Property == a2;
  v6 = v5;
  if (v5 && (CPRecordGetID() & 0x80000000) == 0)
  {
    Store = CPRecordGetStore();
    _CalInvalidateRecurrencesWithOwnerID(Store);
    _CalInvalidateParticipantsWithOwnerID(Store);
    _CalInvalidateEventActionsWithOwnerID(Store);
    _CalInvalidateAlarmsWithCalendarItemOwnerID(Store);
    _CalInvalidateExceptionDatesWithOwnerID(Store);
    _CalInvalidateAttachmentsWithOwnerID(Store);
    _CalInvalidateContactsWithOwnerID(Store);
    _CalInvalidateConferencesWithOwnerID(Store);
  }

  return v6;
}

uint64_t CalDatabaseCopyOfAllEventsInStore(const void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = CalCopyDatabaseForRecord();
    UID = CalStoreGetUID();
    v4 = CalEventCopyStoreUIDQuery();
    if (v4)
    {
      v5 = v4;
      os_unfair_lock_lock(v2 + 20);
      RecordStore = _CalDatabaseGetRecordStore(v2);
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
      if (CDBLockingAssertionsEnabled == 1 && Database != 0)
      {
        if (*(Database + 104))
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }

      v13 = CPSqliteDatabaseStatementForReading();
      if (v13)
      {
        sqlite3_bind_int(*(v13 + 8), 1, UID);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v7)
          {
            v14 = CPRecordStoreGetContext();
            if (v14)
            {
              os_unfair_lock_assert_owner(v14 + 20);
            }
          }
        }

        v15 = CPRecordStoreProcessStatementWithPropertyIndices();
      }

      else
      {
        v15 = 0;
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(v2 + 20);
      }

      os_unfair_lock_unlock(v2 + 20);
      CFRelease(v5);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v2 = CFRetain(a1);
    os_unfair_lock_lock(v2 + 20);
    v16 = _CalDatabaseGetRecordStore(v2);
    if (CDBLockingAssertionsEnabled == 1 && v16 != 0)
    {
      v18 = CPRecordStoreGetContext();
      if (v18)
      {
        os_unfair_lock_assert_owner(v18 + 20);
      }
    }

    v15 = CPRecordStoreCopyAllInstancesOfClass();
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v2 + 20);
    }

    os_unfair_lock_unlock(v2 + 20);
  }

  CFRelease(v2);
  return v15;
}

void CalDatabaseProcessEventsWithCalendarFilter(os_unfair_lock_s *a1, void *a2, uint64_t a3, void *a4)
{
  v30 = a4;
  os_unfair_lock_lock(a1 + 20);
  SelectPrefixFromRecordDescriptor = CPRecordStoreCreateSelectPrefixFromRecordDescriptor();
  [SelectPrefixFromRecordDescriptor appendFormat:@" WHERE entity_type = %i AND ROWID > ?", 2];
  if (a2)
  {
    v8 = _CalFilterCopyCalendarIDClauseForQuery(a2, @"calendar_id");
    if (v8)
    {
      v9 = v8;
      [SelectPrefixFromRecordDescriptor appendFormat:@" AND %@", v8];
      CFRelease(v9);
    }
  }

  [SelectPrefixFromRecordDescriptor appendFormat:@" LIMIT %i", a3];
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v11 = RecordStore;
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
      v16 = CPRecordStoreGetContext();
      if (v16)
      {
        os_unfair_lock_assert_owner(v16 + 20);
      }
    }
  }

  v17 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v17)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v17)
      {
        if (*(*v17 + 104))
        {
          v18 = CPRecordStoreGetContext();
          if (v18)
          {
            os_unfair_lock_assert_owner(v18 + 20);
          }
        }
      }
    }

    v19 = CPSqliteConnectionStatementForSQL();
    if (v19)
    {
      v20 = v19;
      RowidForRecordID = 0;
      do
      {
        sqlite3_bind_int64(*(v20 + 8), 1, RowidForRecordID);
        if (CDBLockingAssertionsEnabled == 1 && v11 != 0)
        {
          v23 = CPRecordStoreGetContext();
          if (v23)
          {
            os_unfair_lock_assert_owner(v23 + 20);
          }
        }

        v24 = CPRecordStoreProcessStatement();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v20)
          {
            v25 = **v20;
            if (v25)
            {
              if (*(v25 + 104))
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

        CPSqliteStatementReset();
        Count = CFArrayGetCount(v24);
        if (Count >= 1)
        {
          CFArrayGetValueAtIndex(v24, Count - 1);
          CPRecordGetID();
          if (CDBLockingAssertionsEnabled == 1 && v11 != 0)
          {
            v29 = CPRecordStoreGetContext();
            if (v29)
            {
              os_unfair_lock_assert_owner(v29 + 20);
            }
          }

          RowidForRecordID = CPRecordStoreGetRowidForRecordID();
          if (CDBLockingAssertionsEnabled == 1)
          {
            os_unfair_lock_assert_owner(a1 + 20);
          }

          os_unfair_lock_unlock(a1 + 20);
          v30[2](v30, v24);
          os_unfair_lock_lock(a1 + 20);
          _CalDatabaseRevertInternal(a1, 1);
        }

        CFRelease(v24);
      }

      while (Count == a3);
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

CFURLRef CalEventCopyURI(uint64_t a1, uint64_t a2)
{
  v4 = CalCalendarItemCopyCalendar(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CalCalendarCopyStore(v4);
  if (v6)
  {
    v7 = v6;
    v8 = CalStoreCopyUUID(v6);
    if (v8)
    {
      v9 = CalEventCopyUniqueIdentifier(a1);
      if (v9)
      {
        v10 = MEMORY[0x1E696AD48];
        v11 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        v12 = [v11 bitmapRepresentation];
        v13 = [v10 characterSetWithBitmapRepresentation:v12];

        [v13 removeCharactersInString:{@"/?&:$+, ;=@"}];
        v14 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v13];
        v15 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v13];
        v16 = v15;
        if (a2)
        {
          v21 = MEMORY[0x1E12C5EF0](a2);
          v17 = CFStringCreateWithFormat(0, 0, @"x-apple-calevent://%@/%@?o=%lld", v16, v14, v21);
        }

        else
        {
          v17 = CFStringCreateWithFormat(0, 0, @"x-apple-calevent://%@/%@", v15, v14);
        }

        v19 = v17;
        if (v17)
        {
          v18 = CFURLCreateWithString(0, v17, 0);
          CFRelease(v19);
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v5);
  return v18;
}

const void *CalEventCopyUniqueIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  UniqueIdentifier = _CalEventGetUniqueIdentifier(a1);
  v4 = UniqueIdentifier;
  if (UniqueIdentifier)
  {
    CFRetain(UniqueIdentifier);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFStringRef CalEventCopyPublicID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalEventCopyPublicID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFStringRef _CalEventCopyPublicID(uint64_t a1)
{
  Calendar = _CalEventGetCalendar(a1);
  if (!Calendar)
  {
    return 0;
  }

  Store = _CalCalendarGetStore(Calendar);
  if (!Store)
  {
    return 0;
  }

  v4 = _CalStoreCopyUUID(Store);
  if (v4)
  {
    v5 = _CalEventGetUniqueIdentifier(a1);
    v6 = v5;
    if (v5)
    {
      v7 = CFStringCreateWithFormat(0, 0, @"%@%@%@", v4, *MEMORY[0x1E6993180], v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

CFTypeRef CalDatabaseCopyEventWithPublicID(os_unfair_lock_s *a1, CFStringRef theString)
{
  if (!theString || CFStringGetLength(theString) < 38)
  {
    return 0;
  }

  v12.location = 0;
  v12.length = 36;
  v4 = CFStringCreateWithSubstring(0, theString, v12);
  v13.length = CFStringGetLength(theString) - 37;
  v13.location = 37;
  v5 = CFStringCreateWithSubstring(0, theString, v13);
  v6 = v5;
  if (v4 && v5)
  {
    v7 = CalDatabaseCopyStoreWithUUID(a1, v4);
    if (v7)
    {
      v8 = v7;
      v9 = CalDatabaseCopyCalendarItemWithUniqueIdentifierInCalendarOrStore(a1, 2, v6, 0, v7);
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

LABEL_13:
    CFRelease(v6);
    v10 = v9;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_13;
  }

  if (v4)
  {
LABEL_10:
    CFRelease(v4);
  }

  return v10;
}

CFTypeRef _CalEventGetStore(uint64_t a1)
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
  Store = CPRecordGetStore();
  result = _CalGetCalendarWithUID(Store);
  if (result)
  {

    return _CalCalendarGetStore(result);
  }

  return result;
}

void _CalEventUpdateExternalIDWithOriginalEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Store = _CalCalendarGetStore(a2);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  if (!CPRecordGetProperty() && Store)
  {
    if (_CalStoreRequiresMSFormattedUIDKey(Store))
    {
      v7 = _EKCreateMSUIDStringForEvent(a1, a3);
    }

    else if (!a3 || vabdd_f64(_CalRecordGetDateProperty(a1), *MEMORY[0x1E6993100]) < 2.22044605e-16 || (UniqueIdentifier = _CalEventGetUniqueIdentifier(a3)) == 0 || (v9 = UniqueIdentifier, DateProperty = _CalRecordGetDateProperty(a1), (v7 = CFStringCreateWithFormat(0, 0, @"%@/RID=%llu", v9, DateProperty)) == 0))
    {
      v11 = CFUUIDCreate(0);
      v7 = CFUUIDCreateString(0, v11);
      CFRelease(v11);
    }

    _CalRecordSetPropertyIfDifferent(a1, 26, v7);

    CFRelease(v7);
  }
}

uint64_t CalEventGetCalendarId(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  CalendarId = _CalEventGetCalendarId(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return CalendarId;
}

const void *CalDatabaseCopyCalendarItemWithRowID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  CalendarItemWithRowID = _CalGetCalendarItemWithRowID(RecordStore);
  v4 = CalendarItemWithRowID;
  if (CalendarItemWithRowID)
  {
    CFRetain(CalendarItemWithRowID);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

uint64_t CalCalendarItemGetRowID()
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

uint64_t CalCalendarItemCopyUUID(uint64_t a1)
{
  if (!a1)
  {
    CalCalendarItemCopyUUID_cold_1();
  }

  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  v3 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t CalCalendarItemGetEntityType(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  EntityType = _CalCalendarItemGetEntityType(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return EntityType;
}

uint64_t _CalCalendarItemSetCalendar(uint64_t a1, const void *a2)
{
  result = _CalCalendarItemGetCalendar(a1);
  if (result != a2)
  {
    v5 = result;
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
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
    if (v5 && !Property && CPRecordGetID() >= 1)
    {
      ID = CPRecordGetID();
      _CalRecordSetPropertyIfDifferent(a1, 92, ID);
    }

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

    v10 = CPRecordGetProperty();
    if (v10)
    {
      CalRelationSetRelatedObject(v10, a2);
    }

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
    if (a2)
    {
      OriginalEvent = _CalEventGetOriginalEvent(a1);
      _CalEventUpdateExternalIDWithOriginalEvent(a1, a2, OriginalEvent);
      result = CPRecordGetID();
      if (result == -1)
      {
        Store = CPRecordGetStore();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (Store)
          {
            v14 = CPRecordStoreGetContext();
            if (v14)
            {
              os_unfair_lock_assert_owner(v14 + 20);
            }
          }
        }

        return CPRecordStoreAddRecord();
      }
    }
  }

  return result;
}

uint64_t _CalCalendarItemGetCalendarId(uint64_t a1)
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

void CalEventSetUniqueIdentifier(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 26, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalDatabaseCopyExternalModificationTagsForEventsWithExternalIDsInStore(os_unfair_lock_s *cf, const __CFArray *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = CalCopyDatabaseForRecord();
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = cf;
    if (!cf)
    {
      return 0;
    }

    CFRetain(cf);
  }

  os_unfair_lock_lock(v5 + 20);
  RecordStore = _CalDatabaseGetRecordStore(v5);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v11 = MEMORY[0x1E695E480];
  if (Database)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v12 = CPRecordStoreGetContext();
        if (v12)
        {
          os_unfair_lock_assert_owner(v12 + 20);
        }
      }
    }

    v13 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
    if (v13)
    {
      v14 = v13;
      Mutable = CFStringCreateMutable(*v11, 0);
      CFStringAppend(Mutable, @"SELECT external_id, external_mod_tag FROM CalendarItem WHERE entity_type = 2 AND external_id IN (");
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          if (i)
          {
            v17 = @", ?";
          }

          else
          {
            v17 = @"?";
          }

          CFStringAppend(Mutable, v17);
        }
      }

      if (a3)
      {
        v18 = @" AND calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?);");
      }

      else
      {
        v18 = @";");
      }

      CFStringAppend(Mutable, v18);
      if (CDBLockingAssertionsEnabled == 1)
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

      v20 = CPSqliteConnectionStatementForSQL();
      if (v20)
      {
        v21 = v20;
        if (Count >= 1)
        {
          for (j = 0; j != Count; sqlite3_bind_text(v21[1], j, v26, -1, MEMORY[0x1E69E9B38]))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, j);
            Length = CFStringGetLength(ValueAtIndex);
            v25 = (CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1);
            v26 = malloc_type_malloc(v25, 0x7D2DEEB6uLL);
            CFStringGetCString(ValueAtIndex, v26, v25, 0x8000100u);
            ++j;
          }
        }

        if (a3)
        {
          v27 = v21[1];
          ID = CPRecordGetID();
          sqlite3_bind_int(v27, Count + 1, ID);
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v21)
          {
            v29 = **v21;
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

        CPSqliteStatementSendResults();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v21)
          {
            v31 = **v21;
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
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  return 0;
}

uint64_t _CalEventProcessExternalTagFromIDResults(uint64_t a1, __CFDictionary **a2)
{
  v4 = sqlite3_column_text(*(a1 + 8), 0);
  v5 = sqlite3_column_text(*(a1 + 8), 1);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = *MEMORY[0x1E695E480];
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u);
  v10 = CFStringCreateWithCString(v8, v7, 0x8000100u);
  v11 = v10;
  if (!a2 || (v9 ? (v12 = v10 == 0) : (v12 = 1), v12))
  {
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    Mutable = *a2;
    if (!*a2)
    {
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a2 = Mutable;
    }

    CFDictionarySetValue(Mutable, v9, v11);
  }

  CFRelease(v9);
LABEL_15:
  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

uint64_t CalDatabaseCopyOfAllEventsWithRespondedExternalStatusInStore(const void *a1, uint64_t a2)
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
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (SelectPrefix)
  {
    v6 = SelectPrefix;
    CFStringAppend(SelectPrefix, @" JOIN Participant ON self_attendee_id = Participant.rowid ");
    if (a2)
    {
      v7 = @" JOIN Calendar ON calendar_id = Calendar.ROWID WHERE store_id = ? AND ";
    }

    else
    {
      v7 = @" WHERE ";
    }

    CFStringAppend(v6, v7);
    CFStringAppend(v6, @"Participant.entity_type = ? AND Participant.pending_status IN (?, ?, ?)");
    os_unfair_lock_lock(v4 + 20);
    RecordStore = _CalDatabaseGetRecordStore(v4);
    if (RecordStore)
    {
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
        goto LABEL_21;
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
      if (v12)
      {
        v13 = v12;
        if (a2)
        {
          v14 = *(v12 + 8);
          ID = CPRecordGetID();
          sqlite3_bind_int(v14, 1, ID);
          v16 = 2;
        }

        else
        {
          v16 = 1;
        }

        sqlite3_bind_int(*(v13 + 8), v16, 7);
        sqlite3_bind_int(*(v13 + 8), v16 + 1, 1);
        sqlite3_bind_int(*(v13 + 8), v16 + 2, 3);
        sqlite3_bind_int(*(v13 + 8), v16 + 3, 2);
        if (CDBLockingAssertionsEnabled == 1)
        {
          v17 = CPRecordStoreGetContext();
          if (v17)
          {
            os_unfair_lock_assert_owner(v17 + 20);
          }
        }

        RecordStore = CPRecordStoreProcessStatementWithPropertyIndices();
      }

      else
      {
LABEL_21:
        RecordStore = 0;
      }
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v4 + 20);
    }

    os_unfair_lock_unlock(v4 + 20);
    CFRelease(v6);
  }

  else
  {
    RecordStore = 0;
  }

  CFRelease(v4);
  return RecordStore;
}

uint64_t CalDatabaseCopyOfAllEventsWithRespondedExternalStatusAndCalendarUID(os_unfair_lock_s *a1, int a2)
{
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    return 0;
  }

  v5 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" JOIN Participant ON self_attendee_id = Participant.rowid WHERE Participant.entity_type = ? AND calendar_id = ? AND Participant.pending_status IN (?, ?, ?)");
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (RecordStore)
  {
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
      goto LABEL_17;
    }

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
      sqlite3_bind_int(*(v10 + 8), 1, 7);
      sqlite3_bind_int(*(v11 + 8), 2, a2);
      sqlite3_bind_int(*(v11 + 8), 3, 1);
      sqlite3_bind_int(*(v11 + 8), 4, 3);
      sqlite3_bind_int(*(v11 + 8), 5, 2);
      if (CDBLockingAssertionsEnabled == 1)
      {
        v12 = CPRecordStoreGetContext();
        if (v12)
        {
          os_unfair_lock_assert_owner(v12 + 20);
        }
      }

      RecordStore = CPRecordStoreProcessStatementWithPropertyIndices();
    }

    else
    {
LABEL_17:
      RecordStore = 0;
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CFRelease(v5);
  return RecordStore;
}

uint64_t CalDatabaseCopyOfAllEventsWithScheduleAgentClientAndCalendarUID(os_unfair_lock_s *a1, void *a2)
{
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    return 0;
  }

  v5 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" JOIN Participant ON organizer_id = Participant.rowid JOIN Calendar ON calendar_id = Calendar.rowid JOIN Store ON Calendar.store_id = Store.rowid WHERE (Participant.schedule_agent = ? OR Store.type = ?) AND Participant.is_self = 1");
  os_unfair_lock_lock(a1 + 20);
  if (a2)
  {
    v6 = _CalFilterCopyCalendarIDClauseForQuery(a2, @"calendar_id");
    if (v6)
    {
      v7 = v6;
      CFStringAppendFormat(v5, 0, @" AND %@", v6);
      CFRelease(v7);
    }
  }

  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (RecordStore)
  {
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
      goto LABEL_20;
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
    if (v12)
    {
      v13 = v12;
      sqlite3_bind_int(*(v12 + 8), 1, 1);
      sqlite3_bind_int(*(v13 + 8), 2, 0);
      if (CDBLockingAssertionsEnabled == 1)
      {
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }

      RecordStore = CPRecordStoreProcessStatementWithPropertyIndices();
    }

    else
    {
LABEL_20:
      RecordStore = 0;
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CFRelease(v5);
  return RecordStore;
}

uint64_t CalDatabaseCopyOfAllEventsWithExternalTrackingStatusInStore(const void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CalCopyDatabaseForRecord();
    v4 = CalEventCopyStoreUIDQuery();
    if (v4)
    {
      v5 = v4;
      v6 = @" AND ";
      goto LABEL_6;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  v3 = CFRetain(a1);
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    goto LABEL_26;
  }

  v5 = SelectPrefix;
  v6 = @" WHERE ";
LABEL_6:
  CFStringAppend(v5, v6);
  CFStringAppend(v5, @"(external_tracking_status != 0)");
  os_unfair_lock_lock(v3 + 20);
  if (!_CalDatabaseGetRecordStore(v3))
  {
    goto LABEL_22;
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
    goto LABEL_22;
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

  v11 = CPSqliteDatabaseStatementForReading();
  if (v11)
  {
    if (a2)
    {
      v12 = *(v11 + 8);
      ID = CPRecordGetID();
      sqlite3_bind_int(v12, 1, ID);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      v14 = CPRecordStoreGetContext();
      if (v14)
      {
        os_unfair_lock_assert_owner(v14 + 20);
      }
    }

    v15 = CPRecordStoreProcessStatementWithPropertyIndices();
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v5);
LABEL_27:
  CFRelease(v3);
  return v15;
}

__CFString *CalEventCopyStoreUIDQuery()
{
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  v1 = SelectPrefix;
  if (SelectPrefix)
  {
    CFStringAppend(SelectPrefix, @" JOIN Calendar ON calendar_id = Calendar.ROWID WHERE store_id = ?");
  }

  return v1;
}

uint64_t CalDatabaseCopyOfAllEventsWithExternalTrackingStatusAndCalendarUID(os_unfair_lock_s *a1, int a2)
{
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    return 0;
  }

  v5 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" WHERE calendar_id = ? AND external_tracking_status != 0;");
  os_unfair_lock_lock(a1 + 20);
  if (!_CalDatabaseGetRecordStore(a1))
  {
    goto LABEL_16;
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
  if (v9)
  {
    sqlite3_bind_int(*(v9 + 8), 1, a2);
    if (CDBLockingAssertionsEnabled == 1)
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }

    v11 = CPRecordStoreProcessStatementWithPropertyIndices();
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CFRelease(v5);
  return v11;
}

void CalEventSetAvailability(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 16, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventGetAvailability(uint64_t a1)
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

void CalEventSetPrivacyLevel(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 17, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventGetPrivacyLevel(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  PrivacyLevel = _CalEventGetPrivacyLevel(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return PrivacyLevel;
}

void CalEventSetExternalTrackingStatus(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 23, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventGetExternalTrackingStatus(uint64_t a1)
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

CFTypeRef CalEventCopyTravelRoutingMode(uint64_t a1)
{
  result = CalCalendarItemCopyStartLocation(a1);
  if (result)
  {
    v2 = result;
    v3 = CalLocationCopyRouting(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void CalEventSetLocation_Deprecated(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();
    Location = CalDatabaseCreateLocation(DatabaseForRecord);
    if (Location)
    {
      v5 = Location;
      CalLocationSetTitle(Location);
      CalCalendarItemSetLocation(a1, v5);

      CFRelease(v5);
    }
  }

  else
  {

    CalCalendarItemSetLocation(a1, 0);
  }
}

CFTypeRef CalEventCopyLocation_Deprecated(uint64_t a1)
{
  result = CalCalendarItemCopyLocation(a1);
  if (result)
  {
    v2 = result;
    v3 = CalLocationCopyFullDisplayString(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

BOOL CalEventPreferredLocationIsAConferenceRoom(uint64_t a1)
{
  v2 = CalCalendarItemCopyPreferredLocation(a1);
  if (v2)
  {
    v3 = v2;
    v4 = CalLocationCopyFullDisplayString(v2);
    if (v4)
    {
      v5 = v4;
      if (CFStringGetLength(v4) >= 1 && (v6 = CalCalendarItemCopyAttendees(a1)) != 0)
      {
        v7 = v6;
        Count = CFArrayGetCount(v6);
        if (Count < 1)
        {
          v11 = 0;
        }

        else
        {
          v9 = Count;
          v10 = 0;
          v11 = 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
            if (CalAttendeeGetType(ValueAtIndex) == 2)
            {
              v13 = CalParticipantCopyDisplayName(ValueAtIndex);
              if (v13)
              {
                v14 = v13;
                v15 = [v13 isEqualToString:v5];
                CFRelease(v14);
                if (v15)
                {
                  break;
                }
              }
            }

            v11 = ++v10 < v9;
          }

          while (v9 != v10);
        }

        CFRelease(v7);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v11;
}

void _CalEventSetStartDate(uint64_t a1, uint64_t a2, const __CFNumber *cf1, int a4, int a5)
{
  v7 = cf1;
  v26 = *&a2;
  v27 = cf1;
  v9 = *&a2;
  if (cf1 && !CFEqual(cf1, @"_float"))
  {
    v10 = CalTimeZoneCopyCFTimeZone();
    if (v10)
    {
      CFRelease(v10);
    }

    else
    {
      CFLog();
      CFRelease(v7);
      v7 = CFRetain(@"_float");
      v27 = v7;
    }
  }

  if (vabdd_f64(_CalRecordGetDateProperty(a1), v9) >= 2.22044605e-16)
  {
    goto LABEL_36;
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

  Property = CPRecordGetProperty();
  if (!Property || CFStringCompare(Property, v7, 0))
  {
LABEL_36:
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

    v14 = CPRecordGetProperty();
    v15 = v14;
    if (a5 && v14)
    {
      _CalEventPinAllDayBoundaries(a1, &v26, 0);
      v9 = v26;
    }

    CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(v9);
    _CalRecordSetPropertyIfDifferent(a1, 4, CFDateRefFromCalDate);
    _CalRecordSetPropertyIfDifferent(a1, 5, v27);
    if (CFDateRefFromCalDate)
    {
      CFRelease(CFDateRefFromCalDate);
    }

    if (_CalCalendarItemHasAlarms(a1))
    {
      CPRecordGetStore();
      v17 = CPRecordStoreGetContext();
      _CalDatabaseSetChangeFlags(v17, 8);
    }

    _CalCalendarItemInvalidateAllRecurrenceRuleCachedEndDates(a1);
    if (a4)
    {
      _CalCalendarItemRemoveAllExceptionDates(a1);
      if (!v15)
      {
        v18 = _CalEventCopyDetachedEvents(a1);
        if (v18)
        {
          v19 = v18;
          Count = CFArrayGetCount(v18);
          if (Count >= 1)
          {
            v21 = Count;
            _CalCalendarItemIsFloating(a1);
            v22 = CalTimeZoneCopyCFTimeZone();
            CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
            for (i = 0; i != v21; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
              _CalRecordGetDateProperty(ValueAtIndex);
              CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
              CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
              _CalEventSetOriginalStartDate(ValueAtIndex, v25);
            }

            CFRelease(v22);
          }

          CFRelease(v19);
        }
      }
    }
  }
}

void _CalEventPinAllDayBoundaries(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = CalTimeZoneCopyCFTimeZone();
  if (a2)
  {
    Property = a2[1];
    if (!Property)
    {
      goto LABEL_13;
    }
  }

  else
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
      goto LABEL_13;
    }
  }

  if (CFStringCompare(@"_float", Property, 0))
  {
    v9 = CalTimeZoneCopyCFTimeZone();
    if (v9)
    {
      goto LABEL_14;
    }

    CFLog();
  }

LABEL_13:
  v9 = CFRetain(v6);
LABEL_14:
  if (a2)
  {
    v10 = *a2;
    v11 = a2[1];
    CalDateTimeGetGregorianDate();
    CalGregorianDateGetGregorianDateForDay();
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    *a2 = v12;
    a2[1] = @"_float";
  }

  if (a3)
  {
    v13 = *a3;
    CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    *a3 = v14;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(v6);
}

void CalEventSetStartDate_Internal(uint64_t a1, uint64_t a2, const __CFNumber *a3, int a4)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventSetStartDate(a1, a2, a3, a4, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalEventCopyStartDateWhileLocked(uint64_t a1, char a2)
{
  RecordLock = 0;
  if ((a2 & 1) == 0)
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
  }

  DateProperty = _CalRecordGetDateProperty(a1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
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
  CalDateTimeSetTimeZone();
  if ((a2 & 1) == 0)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
  }

  return *&DateProperty;
}

uint64_t CalEventCopyStartTimeZone(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  started = _CalCalendarItemCopyStartTimeZone(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return started;
}

double CalEventGetStartDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

const __CFString *CalDatabaseCopyEventWithSummaryAndStartDateInCalendarOrStore(os_unfair_lock_s *cf, const __CFString *ValueAtIndex, uint64_t a3, uint64_t a4, double a5)
{
  v9 = cf;
  if (!a3 && !a4)
  {
    if (!cf)
    {
      return 0;
    }

    CFRetain(cf);
    if (ValueAtIndex)
    {
      goto LABEL_5;
    }

LABEL_50:
    CFRelease(v9);
    return ValueAtIndex;
  }

  v9 = CalCopyDatabaseForRecord();
  if (!v9)
  {
    return 0;
  }

  if (!ValueAtIndex)
  {
    goto LABEL_50;
  }

LABEL_5:
  CStringFromCFString = CalCreateCStringFromCFString(ValueAtIndex);
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (SelectPrefix)
  {
    v12 = SelectPrefix;
    CFStringAppend(SelectPrefix, @" WHERE summary = ? AND start_date = ?");
    if (a3)
    {
      v13 = @" AND calendar_id = ?";
    }

    else
    {
      if (!a4)
      {
        goto LABEL_18;
      }

      v13 = @" AND calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?)";
    }

    CFStringAppend(v12, v13);
LABEL_18:
    os_unfair_lock_lock(v9 + 20);
    RecordStore = _CalDatabaseGetRecordStore(v9);
    v15 = RecordStore;
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
          v18 = CPRecordStoreGetContext();
          if (v18)
          {
            os_unfair_lock_assert_owner(v18 + 20);
          }
        }
      }
    }

    v19 = CPSqliteDatabaseStatementForReading();
    if (v19)
    {
      v20 = v19;
      v21 = *(v19 + 8);
      if (CStringFromCFString)
      {
        sqlite3_bind_text(v21, 1, CStringFromCFString, -1, 0);
      }

      else
      {
        sqlite3_bind_null(v21, 1);
      }

      sqlite3_bind_int(*(v20 + 8), 2, a5);
      if (a3 || a4)
      {
        v23 = *(v20 + 8);
        ID = CPRecordGetID();
        sqlite3_bind_int(v23, 3, ID);
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v15)
        {
          v25 = CPRecordStoreGetContext();
          if (v25)
          {
            os_unfair_lock_assert_owner(v25 + 20);
          }
        }
      }

      v22 = CPRecordStoreProcessStatementWithPropertyIndices();
    }

    else
    {
      v22 = 0;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v9 + 20);
    }

    os_unfair_lock_unlock(v9 + 20);
    CFRelease(v12);
    if (CStringFromCFString)
    {
      free(CStringFromCFString);
    }

    if (v22)
    {
      if (CFArrayGetCount(v22) < 1)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
        CFRetain(ValueAtIndex);
      }

      CFRelease(v22);
    }

    else
    {
      ValueAtIndex = 0;
    }

    goto LABEL_50;
  }

  if (CStringFromCFString)
  {
    free(CStringFromCFString);
  }

  CFRelease(v9);
  return 0;
}

CFTypeRef CalDatabaseCopyFirstNaturalLanguageSuggestedEventMatchingSummary(os_unfair_lock_s *a1, CFStringRef theString)
{
  if (theString)
  {
    v4 = CFStringGetLength(theString) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = CalDatabaseCopyNaturalLanguageSuggestedEventsMatchingSummary(a1, theString, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    CFRelease(v6);
    return 0;
  }

  v8 = Count;
  v9 = 0;
  for (i = 0; i != v8; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
    v12 = ValueAtIndex;
    if (v4)
    {
      v13 = CalEventGetNaturalLanguageSuggestedEventExpirationDate(ValueAtIndex);
      if (!v13)
      {
        continue;
      }

      v14 = v13;
      v15 = objc_opt_new();
      v16 = [v14 CalIsBeforeOrSameAsDate:v15];

      if (v16)
      {
        continue;
      }
    }

    if (!v9 || compareNaturalLanguageEvents(v12, v9) == -1)
    {
      v9 = v12;
    }
  }

  CFRelease(v6);
  if (!v9)
  {
    return 0;
  }

  return CFRetain(v9);
}