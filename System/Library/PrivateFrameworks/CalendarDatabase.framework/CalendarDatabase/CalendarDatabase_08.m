uint64_t CalDatabaseCopyNaturalLanguageSuggestedEventsMatchingSummary(os_unfair_lock_s *a1, CFStringRef theString, char a3)
{
  if (theString)
  {
    v6 = CFStringGetLength(theString) != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = CalDatabaseCopyNaturalLanguageSuggestionsCalendar(a1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  UID = CalCalendarGetUID();
  CFRelease(v8);
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  CFStringAppend(SelectPrefix, @" WHERE calendar_id = ?");
  if ((a3 & 1) == 0)
  {
    CFStringAppend(SelectPrefix, @" AND start_date > ? AND suggested_event_info_id > 0");
  }

  if (v6 && (v11 = CFStringCreateWithFormat(0, 0, @"%%%@%%", theString)) != 0)
  {
    v12 = v11;
    CStringFromCFString = CalCreateCStringFromCFString(v11);
    CFStringAppend(SelectPrefix, @" AND summary LIKE ?");
    CFRelease(v12);
  }

  else
  {
    CStringFromCFString = 0;
  }

  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v15 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (Database)
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
  }

  v20 = CPSqliteDatabaseStatementForReading();
  if (v20)
  {
    v21 = v20;
    sqlite3_bind_int(*(v20 + 8), 1, UID);
    if (a3)
    {
      v22 = 2;
      if (!CStringFromCFString)
      {
LABEL_30:
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v15)
          {
            v27 = CPRecordStoreGetContext();
            if (v27)
            {
              os_unfair_lock_assert_owner(v27 + 20);
            }
          }
        }

        v23 = CPRecordStoreProcessStatementWithPropertyIndices();
        goto LABEL_35;
      }
    }

    else
    {
      v24 = *(v21 + 8);
      v25 = objc_opt_new();
      [v25 timeIntervalSinceReferenceDate];
      sqlite3_bind_int64(v24, 2, v26);

      v22 = 3;
      if (!CStringFromCFString)
      {
        goto LABEL_30;
      }
    }

    sqlite3_bind_text(*(v21 + 8), v22, CStringFromCFString, -1, 0);
    goto LABEL_30;
  }

  v23 = 0;
LABEL_35:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CFRelease(SelectPrefix);
  if (CStringFromCFString)
  {
    free(CStringFromCFString);
  }

  return v23;
}

id CalEventGetNaturalLanguageSuggestedEventExpirationDate(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = CalCalendarItemCopyLocalStructuredData(a1);
  v8 = 0;
  v2 = [MEMORY[0x1E6993068] unarchiveDictionaryFromData:v1 error:&v8];
  v3 = v8;
  if (v3)
  {
    v4 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_ERROR, "Error unarchiving local structured data. Error: %@", buf, 0xCu);
    }
  }

  v5 = [v2 objectForKey:@"EKEventNaturalLanguageSuggestedEventExpirationDate"];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t compareNaturalLanguageEvents(uint64_t a1, uint64_t a2)
{
  v4 = CalEventCopySuggestedEventInfo(a1);
  v5 = CalEventCopySuggestedEventInfo(a2);
  v6 = v5;
  if (v4 && !v5)
  {
    v7 = -1;
LABEL_22:
    CFRelease(v4);
    goto LABEL_23;
  }

  if (!v4 && v5)
  {
    v7 = 1;
LABEL_24:
    CFRelease(v6);
    return v7;
  }

  v8 = CalEventGetNaturalLanguageSuggestedEventExpirationDate(a1);
  v9 = CalEventGetNaturalLanguageSuggestedEventExpirationDate(a2);
  v10 = v9;
  if (v8 && v9)
  {
    v7 = [v9 compare:v8];
  }

  else
  {
    if (v8)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (!(v8 | v9))
    {
      v11 = CalCalendarItemCopyCreationDate(a1);
      v12 = CalCalendarItemCopyCreationDate(a2);
      v13 = v12;
      if (v11 && v12)
      {
        v7 = [v12 compare:v11];
      }

      else if (v11)
      {
        v7 = -1;
      }

      else
      {
        v7 = v12 != 0;
      }
    }
  }

  if (v4)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v6)
  {
    goto LABEL_24;
  }

  return v7;
}

CFMutableArrayRef CalDatabaseCopyAllNaturalLanguageSuggestedEventsMatchingSummary(os_unfair_lock_s *a1, const __CFString *a2)
{
  v2 = CalDatabaseCopyNaturalLanguageSuggestedEventsMatchingSummary(a1, a2, 1);
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    MutableCopy = CFArrayCreateMutableCopy(0, Count, v3);
    CFRelease(v3);
    v9.length = CFArrayGetCount(MutableCopy);
    v9.location = 0;
    CFArraySortValues(MutableCopy, v9, compareNaturalLanguageEvents, 0);
    return MutableCopy;
  }

  else
  {
    v7 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(0, 0, v7);
  }
}

void _CalEventSetEndDate(uint64_t a1, int a2, double a3)
{
  v4 = a3;
  v11 = a3;
  DateProperty = _CalRecordGetDateProperty(a1);
  v8 = fabs(DateProperty) < 2.22044605e-16;
  v7 = vabdd_f64(v4, DateProperty);
  v8 = !v8 && v7 < 2.22044605e-16;
  if (!v8)
  {
    if (a2)
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

      if (CPRecordGetProperty())
      {
        _CalEventPinAllDayBoundaries(a1, 0, &v11);
        v4 = v11;
      }
    }

    CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(v4);
    _CalRecordSetPropertyIfDifferent(a1, 6, CFDateRefFromCalDate);
    if (CFDateRefFromCalDate)
    {
      CFRelease(CFDateRefFromCalDate);
    }
  }
}

void CalEventSetEndDate(uint64_t a1, double a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventSetEndDate(a1, 1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double _CalEventGetEndDateWhileLocked(uint64_t a1, int a2)
{
  if (a2)
  {

    return _CalRecordGetDateProperty(a1);
  }

  else
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
    DateProperty = _CalRecordGetDateProperty(a1);
    if (RecordLock)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(RecordLock);
      }

      os_unfair_lock_unlock(RecordLock);
    }

    return DateProperty;
  }
}

void _CalEventGetDurationUnitsWhileLocked(uint64_t a1@<X0>, const __CFTimeZone *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (a3)
  {
    RecordLock = 0;
  }

  else
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
  }

  DateProperty = _CalRecordGetDateProperty(a1);
  v10 = _CalRecordGetDateProperty(a1);
  CFAbsoluteTimeGetDifferenceAsGregorianUnits(a4, v10, DateProperty, a2, 0xFFFFFFuLL);
  if ((a3 & 1) == 0)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
  }
}

uint64_t _CalEventGetDurationWhileLocked(uint64_t a1, char a2)
{
  if (a2)
  {
    RecordLock = 0;
  }

  else
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
  }

  DateProperty = _CalRecordGetDateProperty(a1);
  v6 = _CalRecordGetDateProperty(a1);
  if ((a2 & 1) == 0)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
  }

  if (DateProperty <= v6)
  {
    return 0;
  }

  else
  {
    return (DateProperty - v6);
  }
}

uint64_t _CalEventGetDuration(uint64_t a1)
{
  DateProperty = _CalRecordGetDateProperty(a1);
  v3 = _CalRecordGetDateProperty(a1);
  if (DateProperty <= v3)
  {
    return 0;
  }

  else
  {
    return (DateProperty - v3);
  }
}

void CalEventSetAllDay(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 8, a2);
  if (a2)
  {
    StartDate = _CalEventGetStartDate(a1);
    v8 = v5;
    if (v5)
    {
      DateProperty = _CalRecordGetDateProperty(a1);
      _CalEventPinAllDayBoundaries(a1, &StartDate, &DateProperty);
      _CalEventSetStartDate(a1, StartDate, v8, 0, 0);
      _CalEventSetEndDate(a1, 0, DateProperty);
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalEventIsAllDay(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsAllDay = _CalEventIsAllDay(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsAllDay;
}

uint64_t _CalEventGetDefaultAlarmOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IsAllDay = _CalCalendarItemIsAllDay(a1);
  Store = _CalEventGetStore(a1);
  if (IsAllDay)
  {
    v8 = _CalStoreCopyDefaultAllDayAlarmOffset(Store);
  }

  else
  {
    v8 = _CalStoreCopyDefaultAlarmOffset(Store);
  }

  v9 = v8;
  if (v8)
  {
    a3 = [v8 integerValue];
  }

  else if (!IsAllDay)
  {
    a3 = a2;
  }

  return a3;
}

uint64_t CalEventCanAddRecurrence(uint64_t a1)
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

  if (CPRecordGetProperty() >= 1 && (_CalCalendarItemGetStoreId(a1), Store = CPRecordGetStore(), _CalGetStoreWithUID(Store)))
  {
    v5 = _CalStoreSupportsRecurrencesOnDetachedEvents();
  }

  else
  {
    v5 = 1;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void CalEventAddEventAction(uint64_t a1, void *a2)
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

uint64_t _CalEventRemoveEventAction(uint64_t a1, void *a2)
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

void CalEventRemoveEventAction(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventRemoveEventAction(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef CalEventCopyEventActions(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalEventCopyEventActions(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFMutableArrayRef _CalEventCopyEventActions(uint64_t a1)
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

BOOL CalEventIsInvite(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsInvite = _CalCalendarItemIsInvite(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsInvite;
}

BOOL CalEventHasActionWithExternalAndFolderID(uint64_t a1)
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
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = _CalEventCopyEventActions(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (v4)
  {
    v6 = 1;
LABEL_24:
    CFRelease(v4);
    return v6;
  }

  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      v6 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        v11 = CalEventActionCopyExternalID(ValueAtIndex);
        if (v11)
        {
          CFRelease(v11);
          v12 = CalEventActionCopyExternalFolderID(ValueAtIndex);
          if (v12)
          {
            break;
          }
        }

        v6 = ++v9 < v8;
        if (v8 == v9)
        {
          goto LABEL_23;
        }
      }

      CFRelease(v12);
    }

LABEL_23:
    v4 = v5;
    goto LABEL_24;
  }

  return 0;
}

BOOL CalEventAttendeeIsSelf(uint64_t a1, CFTypeRef a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  SelfAttendee = _CalCalendarItemGetSelfAttendee(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return SelfAttendee == a2;
}

void CalEventSetParticipationStatusModifiedDate(_BOOL8 a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetDateProperty(a1, 55, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalEventGetParticipationStatusModifiedDate(uint64_t a1)
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

BOOL CalEventSetParticipationStatus(const void *a1, int a2)
{
  if ((a2 - 1) <= 1 && (v4 = CalEventCopyStore(a1)) != 0)
  {
    v5 = v4;
    v6 = CalCalendarItemGetAvailabilitySupportedByStore(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  SelfAttendee = _CalCalendarItemGetSelfAttendee(a1);
  v9 = SelfAttendee;
  if (SelfAttendee)
  {
    _CalAttendeeSetStatus(SelfAttendee, a2);
    _CalEventMarkPropertyModified(a1);
    _CalEventMarkEventAsNeedingOccurrenceCacheUpdate(a1);
    if (v6 && (_CalCalendarGetInvitationStatus(a1) & 0x10) == 0)
    {
      if (_CalEventIsAllDay(a1) || a2 == 2)
      {
        if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
        {
          if (CPRecordGetStore())
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }

      else if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
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

      CPRecordSetProperty();
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v9 != 0;
}

CFTypeRef CalEventCopyStore(uint64_t a1)
{
  result = CalCalendarItemCopyCalendar(a1);
  if (result)
  {
    v2 = result;
    v3 = CalCalendarCopyStore(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

uint64_t CalEventGetPendingParticipationStatus(uint64_t a1)
{
  v1 = CalCalendarItemCopySelfAttendee(a1);
  if (!v1)
  {
    return 7;
  }

  v2 = v1;
  PendingStatus = CalAttendeeGetPendingStatus(v1);
  CFRelease(v2);
  return PendingStatus;
}

unint64_t CalEventIsOrganizedExternally(uint64_t a1)
{
  result = CalCalendarItemHasAttendees(a1, 1);
  if (result)
  {
    result = CalCalendarItemCopyOrganizer(a1);
    if (result)
    {
      v3 = result;
      IsSelf = CalOrganizerIsSelf(result);
      CFRelease(v3);
      return !IsSelf;
    }
  }

  return result;
}

uint64_t CalEventIsOnCalendarThatAllowsScheduling(uint64_t a1)
{
  v1 = CalCalendarItemCopyCalendar(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = !CalCalendarIsSchedulingProhibited(v1) && !CalCalendarIsEffectivelyReadOnly(v2);
  CFRelease(v2);
  return v3;
}

uint64_t CalEventNeedsResponse(uint64_t a1)
{
  result = CalEventIsOrganizedExternally(a1);
  if (result)
  {
    result = CalEventIsOnCalendarThatAllowsScheduling(a1);
    if (result)
    {
      if (CalCalendarItemGetStatus(a1) == 3)
      {
        return 0;
      }

      result = CalCalendarItemCopyOrganizer(a1);
      if (!result)
      {
        return result;
      }

      v3 = result;
      ScheduleAgent = CalParticipantGetScheduleAgent(result);
      CFRelease(v3);
      if (ScheduleAgent == 1)
      {
        return 0;
      }

      else
      {
        result = CalCalendarItemCopySelfAttendee(a1);
        if (result)
        {
          v5 = result;
          Status = CalAttendeeGetStatus(result);
          CFRelease(v5);
          return Status == 7 || Status == 0;
        }
      }
    }
  }

  return result;
}

BOOL CalEventHasOccurrenceInTheFuture(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = CalCalendarItemCopyRecurrences(a1);
  if (![(__CFArray *)v2 count])
  {
    EndDateWhileLocked = _CalEventGetEndDateWhileLocked(a1, 0);
    v21 = [MEMORY[0x1E695DF00] CalDateForNow];
    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:EndDateWhileLocked];
    [v22 timeIntervalSinceDate:v21];
    v24 = v23;

    v19 = v24 >= 0.0;
    goto LABEL_17;
  }

  v3 = [MEMORY[0x1E695DF00] CalDateForNow];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  DurationWhileLocked = _CalEventGetDurationWhileLocked(a1, 0);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v2;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v8)
  {

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  v9 = v8;
  v10 = 0;
  v11 = DurationWhileLocked;
  v12 = *v28;
  v13 = *MEMORY[0x1E6993100];
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v7);
      }

      EffectiveEndDate = CalRecurrenceGetEffectiveEndDate(*(*(&v27 + 1) + 8 * i));
      if (vabdd_f64(EffectiveEndDate, v13) < 2.22044605e-16)
      {

        v19 = 1;
        goto LABEL_17;
      }

      v10 |= EffectiveEndDate + v11 > v5;
    }

    v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = CalCopyDefaultTimeZone();
  GregorianDate = CFAbsoluteTimeGetGregorianDate(v5, v16);
  v18 = CFAbsoluteTimeGetGregorianDate(*MEMORY[0x1E69930F8], v16);
  v19 = CalEventOccurrencesExistForEventInDateRange(a1, *&GregorianDate.year, *&GregorianDate.second, *&v18.year, *&v18.second, 0, v16) != 0;
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t CalEventIsSignificantlyDetachedOptionallyIgnoringPartStat(uint64_t a1, char a2)
{
  v4 = CalEventCopyOriginalEvent(a1);
  v5 = v4;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (CalCalendarItemIsPhantomMaster(v4))
  {
    v6 = 1;
    goto LABEL_5;
  }

  OriginalStartDate = CalEventGetOriginalStartDate(a1);
  StartDate = CalEventGetStartDate(a1);
  DurationWhileLocked = _CalEventGetDurationWhileLocked(a1, 0);
  v11 = _CalEventGetDurationWhileLocked(v5, 0);
  v6 = 1;
  if (StartDate == OriginalStartDate && DurationWhileLocked == v11)
  {
    Status = CalCalendarItemGetStatus(a1);
    if (Status == CalCalendarItemGetStatus(v5))
    {
      v13 = CalCalendarItemCopyPreferredLocation(a1);
      if (v13)
      {
        v14 = v13;
        v15 = CalLocationCopyTitle(v13);
        v16 = CalLocationCopyAddress(v14);
        CFRelease(v14);
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }

      v17 = CalCalendarItemCopyPreferredLocation(v5);
      if (v17)
      {
        v18 = v17;
        v19 = CalLocationCopyTitle(v17);
        v20 = CalLocationCopyAddress(v18);
        CFRelease(v18);
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      if (!CalEqualStrings() || !CalEqualStrings())
      {
        v6 = 1;
LABEL_44:

        goto LABEL_5;
      }

      v21 = CalCalendarItemCopySummary(a1);
      v22 = CalCalendarItemCopySummary(v5);
      if (CalEqualStrings())
      {
        v46 = v22;
        if ((a2 & 1) != 0 || !CalEventIsOrganizedExternally(a1))
        {
          goto LABEL_31;
        }

        v23 = CalCalendarItemCopySelfAttendee(a1);
        v24 = CalCalendarItemCopySelfAttendee(v5);
        if (v23)
        {
          v25 = CalAttendeeGetStatus(v23);
          CFRelease(v23);
        }

        else
        {
          v25 = 7;
        }

        if (v24)
        {
          v26 = CalAttendeeGetStatus(v24);
          CFRelease(v24);
        }

        else
        {
          v26 = 7;
        }

        v22 = v46;
        if (v25 == v26)
        {
          goto LABEL_31;
        }

        NeedsResponse = CalAttendeeStatusGetNeedsResponse(v25);
        v28 = CalAttendeeStatusGetNeedsResponse(v26);
        v6 = 1;
        if (!NeedsResponse)
        {
          v22 = v46;
          goto LABEL_43;
        }

        v22 = v46;
        if (v28)
        {
LABEL_31:
          v29 = CalCalendarItemCopyOrganizer(a1);
          v45 = v21;
          if (v29)
          {
            v30 = v29;
            v31 = (CalAttendeeCopyAddress)();
            v48 = [v31 absoluteString];
            v47 = CalAttendeeCopyEmailAddress(v30);
            v32 = CalAttendeeCopyPhoneNumber(v30);
            CFRelease(v30);

            v33 = CalCalendarItemCopyOrganizer(v5);
            if (!v33)
            {
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v22 = v46;
LABEL_38:
              v42 = v32;
              v32 = v41;
              v44 = v40;
              if (!doURLsEmailsPhoneNumbersMatch())
              {
                v6 = 1;
LABEL_42:

                v21 = v45;
                goto LABEL_43;
              }

LABEL_41:
              v6 = 0;
              goto LABEL_42;
            }

            v34 = v33;
          }

          else
          {
            v35 = CalCalendarItemCopyOrganizer(v5);
            v32 = 0;
            if (!v35)
            {
              v47 = 0;
              v48 = 0;
              v39 = 0;
              v44 = 0;
              v42 = 0;
              goto LABEL_41;
            }

            v34 = v35;
            v47 = 0;
            v48 = 0;
          }

          v43 = v32;
          v36 = CalAttendeeCopyAddress(v34);
          v37 = [v36 absoluteString];
          v38 = CalAttendeeCopyEmailAddress(v34);
          v39 = CalAttendeeCopyPhoneNumber(v34);
          CFRelease(v34);

          v40 = v38;
          v41 = v37;
          v22 = v46;
          v32 = v43;
          goto LABEL_38;
        }
      }

      else
      {
        v6 = 1;
      }

LABEL_43:

      goto LABEL_44;
    }
  }

LABEL_5:

  return v6;
}

void CalEventNotifyInvitationIfNeededWithOptions(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = CalEventCopyOriginalEvent(a1);
  v5 = v4;
  if (v4)
  {
    ShouldDisplayNotification = CalEventShouldDisplayNotification(v4);
    CFRelease(v5);
    v7 = !ShouldDisplayNotification;
  }

  else
  {
    v7 = 1;
  }

  v8 = CalEventNeedsResponse(a1);
  HasOccurrenceInTheFuture = CalEventHasOccurrenceInTheFuture(a1);
  if (v5)
  {
    IsSignificantlyDetachedOptionallyIgnoringPartStat = CalEventIsSignificantlyDetachedOptionallyIgnoringPartStat(a1, 0);
  }

  else
  {
    IsSignificantlyDetachedOptionallyIgnoringPartStat = 1;
  }

  v11 = CalEventShouldDisplayNotification(a1);
  v12 = v8 & HasOccurrenceInTheFuture & IsSignificantlyDetachedOptionallyIgnoringPartStat ^ 1 | v11;
  if ((v12 & 1) == 0)
  {
    v17 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v17;
      *buf = 67109120;
      RowID = CalCalendarItemGetRowID();
      v16 = "Marking event with UID %d as needing a notification because the self attendee needs a response";
      goto LABEL_16;
    }

LABEL_17:
    CalEventSetNeedsNotification(a1, (v12 & 1) == 0);
    goto LABEL_18;
  }

  v13 = !v11;
  if (((!v11 | v8) & 1) == 0 && !CalEventGetInvitationChangedProperties(a1))
  {
    v24 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = v24;
    *buf = 67109120;
    RowID = CalCalendarItemGetRowID();
    v16 = "Marking event with UID %d as no longer needing a notification because it is in the inbox, does not need a response, and has no other reason for being there";
    goto LABEL_16;
  }

  if (((IsSignificantlyDetachedOptionallyIgnoringPartStat | v13 | v7) & 1) == 0 && CalEventGetInvitationChangedProperties(a1) <= 0xF)
  {
    CalEventSetInvitationChangedProperties(a1);
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      *buf = 67109120;
      RowID = CalCalendarItemGetRowID();
      v16 = "Marking event with UID %d as no longer needing a notification because it is detached and redundant with a notification for its parent which is already in the inbox";
LABEL_16:
      _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 8u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

LABEL_18:
  if (!v5 && a2)
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = CalEventCopyDetachedEvents(a1);
    v19 = [(__CFArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          CalEventNotifyInvitationIfNeededWithOptions(*(*(&v25 + 1) + 8 * i), 1);
        }

        v20 = [(__CFArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

CFTypeRef CalEventCopyOriginalEvent(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  OriginalEvent = _CalEventGetOriginalEvent(a1);
  v4 = OriginalEvent;
  if (OriginalEvent)
  {
    CFRetain(OriginalEvent);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

BOOL CalEventShouldDisplayNotification(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  InvitationStatus = _CalEventGetInvitationStatus(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return InvitationStatus != 0;
}

void CalEventSetNeedsNotification(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  if (CPRecordGetStore() && (CPRecordStoreIsLoggingChanges() & 1) != 0)
  {
    CPRecordStoreLogChanges();
    _CalRecordSetPropertyIfDifferent(a1, 15, v5);
    CPRecordStoreLogChanges();
  }

  else
  {
    _CalRecordSetPropertyIfDifferent(a1, 15, v5);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventGetInvitationChangedProperties(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  InvitationChangedProperties = _CalEventGetInvitationChangedProperties(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return InvitationChangedProperties;
}

void CalEventSetInvitationChangedProperties(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventSetInvitationChangedProperties(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef CalEventCopyDetachedEvents(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalEventCopyDetachedEvents(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalDatabaseCleanUpDeclinedEvents(os_unfair_lock_s *a1)
{
  CalDatabaseLockForThread(a1);
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
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
  CFAbsoluteTimeGetCurrent();
  CFStringAppend(SelectPrefix, @" JOIN Participant ON self_attendee_id = Participant.rowid");
  CFStringAppend(SelectPrefix, @" WHERE Event.external_id IS NULL AND Participant.entity_type == ? AND Participant.status = ? AND end_date < ?");
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

  CPSqliteDatabaseStatementForReading();
  CFRelease(SelectPrefix);
  CalDatabaseUnlockForThread(a1);
}

uint64_t CalDatabaseGetCountOfUnacknowledgedEventsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CalCopyDatabaseForRecord();
  }

  else
  {
    v3 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v3 + 20);
  v4 = _CalEventPrepareNotifiableStatusStatement(v3, @"SELECT COUNT(*) FROM CalendarItem AS ci", a2, 1, 0);
  if (v4)
  {
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
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
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
  }

  else
  {
    v8 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  return v8;
}

uint64_t _CalEventPrepareNotifiableStatusStatement(uint64_t a1, const __CFString *a2, uint64_t a3, int a4, int a5)
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

  Database = CPRecordStoreGetDatabase();
  if (Database)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    if (MutableCopy)
    {
      v15 = MutableCopy;
      if ((a4 | a5) == 1)
      {
        CFStringAppend(MutableCopy, @" JOIN Participant ON ci.self_attendee_id = Participant.rowid");
        if (a4)
        {
          v16 = @" WHERE (Participant.entity_type = ? AND Participant.status NOT IN (?, ?, ?))";
        }

        else
        {
          v16 = @" WHERE (Participant.entity_type = ? AND Participant.status IN (?, ?, ?)) AND Participant.is_self = 0";
        }

        CFStringAppend(v15, v16);
        v17 = @" AND";
      }

      else
      {
        v17 = @" WHERE";
      }

      CFStringAppend(v15, v17);
      if (a5 ^ 1 | a4)
      {
        v18 = CFSTR(" (ci.invitation_status IN (1, 2, 3)");
      }

      else
      {
        v18 = CFSTR(" (ci.invitation_status IN (0, 1, 2, 3)");
      }

      CFStringAppend(v15, v18);
      CFStringAppend(v15, @""));
      if (a3)
      {
        CFStringAppend(v15, @" AND calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?)");
      }

      else
      {
        v19 = _CalDatabaseCopyDisabledStoresClause(a1);
        if (v19)
        {
          v20 = v19;
          CFStringAppend(v15, @" AND calendar_id NOT IN (SELECT ROWID FROM Calendar WHERE store_id IN ");
          CFStringAppend(v15, v20);
          CFStringAppend(v15, @""));
          CFRelease(v20);
        }
      }

      CFStringAppend(v15, @" AND(                ((start_tz = ? AND end_date > ?) OR (start_tz != ? AND end_date > ?))                     OR                 (ci.has_recurrences AND(                      (ci.ROWID IN (SELECT owner_id FROM Recurrence WHERE owner_id = ci.ROWID AND(                            cached_end_date + ci.end_date - ci.start_date > ? OR                             end_date + ci.end_date - ci.start_date > ? OR                             (count = 0 AND end_date IS NULL)                       ))                    ))                )            );");
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(Database + 104))
        {
          v21 = CPRecordStoreGetContext();
          if (v21)
          {
            os_unfair_lock_assert_owner(v21 + 20);
          }
        }
      }

      v22 = CPSqliteDatabaseStatementForReading();
      Database = v22;
      if (!v22)
      {
        goto LABEL_36;
      }

      if (a4 | a5)
      {
        sqlite3_bind_int(*(v22 + 8), 1, 7);
        sqlite3_bind_int(*(Database + 8), 2, 1);
        sqlite3_bind_int(*(Database + 8), 3, 3);
        v23 = 4;
        sqlite3_bind_int(*(Database + 8), 4, 2);
        if (!a3)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v23 = 0;
        if (!a3)
        {
LABEL_33:
          v26 = [MEMORY[0x1E695DF00] CalDateForNow];
          [v26 timeIntervalSinceReferenceDate];
          v28 = v27;

          v29 = CalTimeZoneCopyCFTimeZone();
          v30 = v28;
          if (v29)
          {
            v31 = v29;
            CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
            CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
            v30 = v32;
            CFRelease(v31);
          }

          sqlite3_bind_text(*(Database + 8), v23 + 1, "_float", -1, 0);
          sqlite3_bind_double(*(Database + 8), v23 + 2, v30);
          sqlite3_bind_text(*(Database + 8), v23 + 3, "_float", -1, 0);
          sqlite3_bind_double(*(Database + 8), v23 + 4, v28);
          sqlite3_bind_double(*(Database + 8), v23 + 5, v28);
          sqlite3_bind_double(*(Database + 8), v23 + 6, v28);
LABEL_36:
          CFRelease(v15);
          return Database;
        }
      }

      v24 = *(Database + 8);
      v23 |= 1u;
      ID = CPRecordGetID();
      sqlite3_bind_int(v24, v23, ID);
      goto LABEL_33;
    }

    return 0;
  }

  return Database;
}

uint64_t CalDatabaseCopyOfAllUnacknowledgedEventsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CalCopyDatabaseForRecord();
  }

  else
  {
    v3 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v3 + 20);
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (SelectPrefix)
  {
    v5 = SelectPrefix;
    v6 = _CalEventPrepareNotifiableStatusStatement(v3, SelectPrefix, a2, 1, 0);
    if (v6)
    {
      RecordStore = _CalDatabaseGetRecordStore(v3);
      if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }

      v6 = CPRecordStoreProcessStatementWithPropertyIndices();
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  return v6;
}

const __CFString *CalDatabaseCopyOfAllEventsWithParticipantsWithProposedNewTimes(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = CalCopyDatabaseForRecord();
  }

  else
  {
    v4 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v4 + 20);
  RecordStore = _CalDatabaseGetRecordStore(v4);
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
    goto LABEL_27;
  }

  v9 = Database;
  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT CalendarItem.* FROM CalendarItem JOIN Participant As organizerParticipant ON CalendarItem.organizer_id = organizerParticipant.rowid JOIN Participant AS otherParticipant ON CalendarItem.ROWID = otherParticipant.owner_id WHERE (CalendarItem.invitation_changed_properties & %i) != 0 AND otherParticipant.is_self = 0 AND otherParticipant.proposed_start_date > 0 AND (otherParticipant.proposed_start_date + (CalendarItem.end_date - CalendarItem.start_date) > ?) AND organizerParticipant.is_self = 1", 240);
  if (!v11)
  {
    goto LABEL_28;
  }

  MutableCopy = CFStringCreateMutableCopy(v10, 0, v11);
  if (!MutableCopy)
  {
LABEL_26:
    CFRelease(v11);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  v13 = MutableCopy;
  if (a3)
  {
    CFStringAppend(MutableCopy, @" AND otherParticipant.proposed_start_date_status != 1");
  }

  CFStringAppend(v13, @" GROUP BY CalendarItem.ROWID;");
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(v9 + 104))
    {
      v14 = CPRecordStoreGetContext();
      if (v14)
      {
        os_unfair_lock_assert_owner(v14 + 20);
      }
    }
  }

  v15 = CPSqliteDatabaseStatementForReading();
  if (!v15)
  {
    CFRelease(v13);
    goto LABEL_26;
  }

  v16 = v15;
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_double(*(v16 + 8), 1, Current);
  CFRelease(v13);
  CFRelease(v11);
  v18 = _CalDatabaseGetRecordStore(v4);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v18)
    {
      v19 = CPRecordStoreGetContext();
      if (v19)
      {
        os_unfair_lock_assert_owner(v19 + 20);
      }
    }
  }

  v11 = CPRecordStoreProcessStatement();
LABEL_28:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v4 + 20);
  }

  os_unfair_lock_unlock(v4 + 20);
  CFRelease(v4);
  return v11;
}

CFArrayRef CalDatabaseCopyOfAllNotifiableOrRepliedEventsInStore(os_unfair_lock_s *a1, uint64_t a2, int a3)
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
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (SelectPrefix)
  {
    v7 = SelectPrefix;
    v8 = _CalEventPrepareNotifiableStatusStatement(v5, SelectPrefix, a2, 0, a3);
    if (v8)
    {
      RecordStore = _CalDatabaseGetRecordStore(v5);
      if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }

      v8 = CPRecordStoreProcessStatementWithPropertyIndices();
    }

    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  v12 = CalDatabaseCopyOfAllEventsWithParticipantsWithProposedNewTimes(v5, a2, a3);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_31;
  }

  Count = CFArrayGetCount(v12);
  if (Count < 1)
  {
    goto LABEL_31;
  }

  v15 = Count;
  theArray = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  v16 = objc_opt_new();
  v17 = CFArrayGetCount(v8);
  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      CFArrayGetValueAtIndex(v8, i);
      v19 = [MEMORY[0x1E696AD98] numberWithInt:CalCalendarItemGetRowID()];
      [v16 addObject:v19];
    }
  }

  for (j = 0; j != v15; ++j)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, j);
    if (ValueAtIndex)
    {
      v22 = ValueAtIndex;
      v23 = [MEMORY[0x1E696AD98] numberWithInt:CalCalendarItemGetRowID()];
      v24 = [v16 containsObject:v23];

      if ((v24 & 1) == 0)
      {
        CFArrayAppendValue(theArray, v22);
        v25 = [MEMORY[0x1E696AD98] numberWithInt:CalCalendarItemGetRowID()];
        [v16 addObject:v25];
      }
    }
  }

  Copy = theArray;
  if (CFArrayGetCount(theArray) < 1)
  {
    CFRelease(theArray);

LABEL_31:
    if (!v8)
    {
      Copy = 0;
      if (!v13)
      {
        return Copy;
      }

      goto LABEL_35;
    }

    Copy = CFArrayCreateCopy(0, v8);
    goto LABEL_33;
  }

  v29.location = 0;
  v29.length = v17;
  CFArrayAppendArray(theArray, v8, v29);

  if (v8)
  {
LABEL_33:
    CFRelease(v8);
  }

  if (v13)
  {
LABEL_35:
    CFRelease(v13);
  }

  return Copy;
}

uint64_t CalDatabaseCopyOfAllReadCancelledEventsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CalCopyDatabaseForRecord();
  }

  else
  {
    v3 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v3 + 20);
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (SelectPrefix)
  {
    v5 = SelectPrefix;
    if (!_CalDatabaseGetRecordStore(v3))
    {
      goto LABEL_23;
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
      goto LABEL_23;
    }

    v8 = Database;
    CFStringAppend(v5, @" WHERE status = ? and invitation_status = 0");
    if (a2)
    {
      CFStringAppend(v5, @" AND calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?)");
    }

    CFStringAppend(v5, @";");
    if (CDBLockingAssertionsEnabled == 1)
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

    v10 = CPSqliteDatabaseStatementForReading();
    if (v10)
    {
      v11 = v10;
      sqlite3_bind_int(*(v10 + 8), 1, 3);
      if (a2)
      {
        v12 = *(v11 + 8);
        ID = CPRecordGetID();
        sqlite3_bind_int(v12, 2, ID);
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
LABEL_23:
      v15 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v15 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  return v15;
}

uint64_t CalDatabaseGetCountOfNotifiableEventsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CalCopyDatabaseForRecord();
  }

  else
  {
    v3 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v3 + 20);
  v4 = _CalEventPrepareNotifiableStatusStatement(v3, @"SELECT COUNT(*) FROM CalendarItem AS ci", a2, 0, 0);
  if (v4)
  {
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
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
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
  }

  else
  {
    v8 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  return v8;
}

uint64_t _CalEventSetInvitationStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    _CalEventRemoveAllEventActions(a1);
  }

  if (CPRecordGetStore() && (CPRecordStoreIsLoggingChanges() & 1) != 0)
  {
    CPRecordStoreLogChanges();
    _CalRecordSetPropertyIfDifferent(a1, 15, a2);

    return CPRecordStoreLogChanges();
  }

  else
  {

    return _CalRecordSetPropertyIfDifferent(a1, 15, a2);
  }
}

void CalEventSetInvitationStatus(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventSetInvitationStatus(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventGetInvitationStatus(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  InvitationStatus = _CalEventGetInvitationStatus(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return InvitationStatus;
}

uint64_t _CalEventGetInvitationStatus(uint64_t a1)
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

BOOL CalEventHasBeenAlerted(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  InvitationStatus = _CalEventGetInvitationStatus(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  v5 = InvitationStatus != 3 && InvitationStatus != 0;
  os_unfair_lock_unlock(RecordLock);
  return v5;
}

uint64_t CalDatabaseCopyOfAllUnalertedEventsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CalCopyDatabaseForRecord();
  }

  else
  {
    v3 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v3 + 20);
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (SelectPrefix)
  {
    v5 = SelectPrefix;
    RecordStore = _CalDatabaseGetRecordStore(v3);
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
    if (Database && (v11 = Database, (MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v5)) != 0))
    {
      v13 = MutableCopy;
      CFStringAppend(MutableCopy, @" WHERE invitation_status = ? AND self_attendee_id != 0");
      if (a2)
      {
        CFStringAppend(v13, @" AND calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?)");
      }

      else
      {
        v15 = _CalDatabaseCopyDisabledStoresClause(v3);
        if (v15)
        {
          v16 = v15;
          CFStringAppend(v13, @" AND calendar_id NOT IN (SELECT ROWID FROM Calendar WHERE store_id IN ");
          CFStringAppend(v13, v16);
          CFStringAppend(v13, @""));
          CFRelease(v16);
        }
      }

      CFStringAppend(v13, @" AND (has_recurrences = 1 OR (start_tz = ? AND end_date > ?) OR (start_tz != ? AND end_date > ?));");
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v11 + 104))
        {
          v17 = CPRecordStoreGetContext();
          if (v17)
          {
            os_unfair_lock_assert_owner(v17 + 20);
          }
        }
      }

      v18 = CPSqliteDatabaseStatementForReading();
      if (v18)
      {
        v19 = v18;
        sqlite3_bind_int(*(v18 + 8), 1, 3);
        if (a2)
        {
          v20 = *(v19 + 8);
          ID = CPRecordGetID();
          sqlite3_bind_int(v20, 2, ID);
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v24 = CalTimeZoneCopyCFTimeZone();
        v25 = Current;
        if (v24)
        {
          v26 = v24;
          CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
          CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
          v25 = v27;
          CFRelease(v26);
        }

        sqlite3_bind_text(*(v19 + 8), v22, "_float", -1, 0);
        sqlite3_bind_double(*(v19 + 8), v22 + 1, v25);
        sqlite3_bind_text(*(v19 + 8), v22 + 2, "_float", -1, 0);
        sqlite3_bind_double(*(v19 + 8), v22 + 3, Current);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v7)
          {
            v28 = CPRecordStoreGetContext();
            if (v28)
            {
              os_unfair_lock_assert_owner(v28 + 20);
            }
          }
        }

        v14 = CPRecordStoreProcessStatementWithPropertyIndices();
      }

      else
      {
        v14 = 0;
      }

      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v14 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  return v14;
}

void CalSetAlertInviteeDeclines(int a1)
{
  v1 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  v2 = *MEMORY[0x1E6993168];
  CFPreferencesSetAppValue(@"InviteeDeclineAlerts", *v1, *MEMORY[0x1E6993168]);
  CFPreferencesAppSynchronize(v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobilecal.invitationalertschanged", 0, 0, 1u);
}

uint64_t CalAlertInviteeDeclines()
{
  pthread_mutex_lock(&_CalGetPrefValue___PrefLock);
  if (CalAlertInviteeDeclines___AlertInviteeDeclinesValue == -1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CalEventAlertInviteeDeclinesPrefChanged, @"com.apple.mobilecal.invitationalertschanged", 0, CFNotificationSuspensionBehaviorDrop);
    v0 = *MEMORY[0x1E6993168];
    CFPreferencesAppSynchronize(*MEMORY[0x1E6993168]);
  }

  else
  {
    v0 = *MEMORY[0x1E6993168];
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"InviteeDeclineAlerts", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  CalAlertInviteeDeclines___AlertInviteeDeclinesValue = v4;
  pthread_mutex_unlock(&_CalGetPrefValue___PrefLock);
  return CalAlertInviteeDeclines___AlertInviteeDeclinesValue;
}

BOOL CalEventCanBeMovedToAnotherCalendar(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemGetStoreId(a1);
  Store = CPRecordGetStore();
  StoreWithUID = _CalGetStoreWithUID(Store);
  if (StoreWithUID)
  {
    v5 = !_CalStoreGetBoolConstraintValue(StoreWithUID, @"CalEvent", @"CalendarNotChangeable", 0);
  }

  else
  {
    v5 = 1;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void CalEventSetResponseComment(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 29, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventCopyResponseComment(uint64_t a1)
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

void CalEventSetLastSyncedResponseComment(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 30, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventCopyLastSyncedResponseComment(uint64_t a1)
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

BOOL CalEventCommentHasChanged(uint64_t a1)
{
  v2 = CalEventCopyResponseComment(a1);
  SyncedResponseComment = CalEventCopyLastSyncedResponseComment(a1);
  v4 = SyncedResponseComment;
  v5 = SyncedResponseComment != 0;
  if (v2 && SyncedResponseComment)
  {
    v5 = CFStringCompare(v2, SyncedResponseComment, 0) != kCFCompareEqualTo;
  }

  else
  {
    if (!v2)
    {
      goto LABEL_7;
    }

    v5 = 1;
  }

  CFRelease(v2);
LABEL_7:
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void CalSetShowDeclinedEvents(uint64_t a1)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *MEMORY[0x1E6993168];
  CFPreferencesSetAppValue(@"ShowDeclinedEvents", *v2, *MEMORY[0x1E6993168]);
  CFPreferencesAppSynchronize(v3);
  v4 = [objc_alloc(MEMORY[0x1E6993020]) initWithDomain:v3];
  [v4 setBooleanPreference:@"ShowDeclinedEvents" value:a1 notificationName:@"com.apple.mobilecal.showdeclinedchanged"];
}

void CalSetShowCompletedReminders(uint64_t a1)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *MEMORY[0x1E6993168];
  CFPreferencesSetAppValue(@"ShowCompletedReminders", *v2, *MEMORY[0x1E6993168]);
  CFPreferencesAppSynchronize(v3);
  v4 = [objc_alloc(MEMORY[0x1E6993020]) initWithDomain:v3];
  [v4 setBooleanPreference:@"ShowCompletedReminders" value:a1 notificationName:@"com.apple.mobilecal.showCompletedRemindersChanged"];
}

void _CalEventSetOriginalEvent(void *a1, uint64_t a2)
{
  if (a2)
  {

    _CalEventAddDetachedEvent(a2, a1);
  }

  else
  {
    OriginalEvent = _CalEventGetOriginalEvent(a1);
    if (OriginalEvent)
    {

      _CalEventRemoveDetachedEvent(OriginalEvent, a1);
    }
  }
}

uint64_t _CalEventRemoveDetachedEvent(uint64_t a1, void *a2)
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

void CalEventSetOriginalEvent(void *a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventSetOriginalEvent(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalEventAddDetachedEvent(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventAddDetachedEvent(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalEventRemoveDetachedEvent(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventRemoveDetachedEvent(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalEventDeleteAllDetachedEvents(uint64_t a1)
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

BOOL CalEventIsDetached(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  OriginalEvent = _CalEventGetOriginalEvent(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return OriginalEvent != 0;
}

void _CalEventUpdateDetachedEventsRelation(uint64_t a1)
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

    CalToManyRelationSave(Property);
  }
}

void CalEventSetOriginalStartDate(uint64_t a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventSetOriginalStartDate(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalEventGetOriginalStartDate(uint64_t a1)
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

uint64_t CalEventCopyUncachedCalendar(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    Store = CPRecordGetStore();
    if (!Store)
    {
      goto LABEL_17;
    }

    CPRecordGetID();
    if (CDBLockingAssertionsEnabled == 1)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    RowidForRecordID = CPRecordStoreGetRowidForRecordID();
    if (CDBLockingAssertionsEnabled == 1)
    {
      v6 = CPRecordStoreGetContext();
      if (v6)
      {
        os_unfair_lock_assert_owner(v6 + 20);
      }
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___CalEventCopyUncachedCalendar_block_invoke;
    v12[3] = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
    v12[4] = RowidForRecordID;
    v7 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7) < 1)
      {
        Store = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
        Store = CFRetain(ValueAtIndex);
      }

      CFRelease(v8);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "_CalEventCopyUncachedCalendar: called with NULL event", v12, 2u);
    }
  }

  Store = 0;
LABEL_17:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Store;
}

BOOL _CalDatabaseCalendarHasEventsWithAttendeeAsAttendeeType(uint64_t a1, uint64_t a2, int a3)
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

  v10 = CPSqliteDatabaseStatementForReading();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = *(v10 + 8);
  if (v12)
  {
    ID = CPRecordGetID();
    sqlite3_bind_int(v12, 1, ID);
    sqlite3_bind_int(*(v11 + 8), 2, a3);
    v14 = sqlite3_step(*(v11 + 8)) == 100;
  }

  else
  {
    v14 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v11)
    {
      v15 = **v11;
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
  return v14;
}

uint64_t _CalDatabaseCopyNonRecurringEventsInDateRange(uint64_t a1, uint64_t a2, void *a3)
{
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

    if (CPRecordStoreGetDatabase())
    {
      SelectPrefix = CPRecordStoreCreateSelectPrefix();
      v9 = _CalFilterCopyQuery2(a3, a1, @"_CalDatabaseCopyNonRecurringEventsInDateRange", _CalCopyEventQueryForFilter, SelectPrefix, @"has_recurrences = 0 AND hidden = 0 AND ((end_date > ? AND start_date < ?) OR (proposed_start_date > ? AND proposed_start_date < ?))");
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
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

      CPSqliteConnectionStatementForSQL();
      RecordStore = 0;
      CFRelease(v9);
      CFRelease(SelectPrefix);
    }

    else
    {
      return 0;
    }
  }

  return RecordStore;
}

uint64_t _CalDatabaseNonRecurringEventsInDateRangeRowHandler(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = sqlite3_column_double(v3, *(a2 + 32));
  v5 = sqlite3_column_double(v3, *(a2 + 36));
  v6 = sqlite3_column_double(v3, *(a2 + 44));
  v7 = sqlite3_column_text(v3, *(a2 + 40));
  v8 = sqlite3_column_bytes(v3, *(a2 + 40));
  if (v7)
  {
    v9 = v8 == 6;
  }

  else
  {
    v9 = 0;
  }

  if (v9 && !strncmp(v7, "_float", 6uLL))
  {
    if (v4 < *(a2 + 24) && v5 > *(a2 + 16))
    {
      return 2;
    }

    v11 = 1;
  }

  else
  {
    if (v4 < *(a2 + 8) && v5 > *a2)
    {
      return 2;
    }

    v11 = 0;
  }

  if (v6 > *MEMORY[0x1E6993100])
  {
    v12 = v5 - v4 + v6;
    if (v11)
    {
      if (v6 < *(a2 + 24))
      {
        return 2 * (v12 > *(a2 + 16));
      }
    }

    else if (v6 < *(a2 + 8) && v12 > *a2)
    {
      return 2;
    }
  }

  return 0;
}

uint64_t _CalDatabaseCopyRecurringEventsPossiblyOccurringInDateRange(uint64_t a1, void *a2, const __CFString *a3, double a4, double a5, double a6, double a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!_CalDatabaseGetRecordStore(a1))
  {
    goto LABEL_27;
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
  if (Database)
  {
    v14 = Database;
    v15 = *MEMORY[0x1E695E480];
    v16 = CFArrayCreate(*MEMORY[0x1E695E480], _CalDatabaseCopyRecurringEventsPossiblyOccurringInDateRange_columns, 7, 0);
    ColumnListWithAliasAndExtraColumns = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
    if (ColumnListWithAliasAndExtraColumns)
    {
      v18 = ColumnListWithAliasAndExtraColumns;
      CFStringAppend(ColumnListWithAliasAndExtraColumns, @" FROM CalendarItem e JOIN Recurrence r ON r.owner_id = e.ROWID");
      v19 = _CalFilterCopyQuery2(a2, a1, @"_CalDatabaseCopyRecurringEventsPossiblyOccurringInDateRange", _CalCopyEventQueryForFilter, v18, @"entity_type = 2 AND has_recurrences = 1 AND hidden=0 AND start_date < ? ");
      if (v19)
      {
        v20 = v19;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*(v14 + 104))
          {
            v21 = CPRecordStoreGetContext();
            if (v21)
            {
              os_unfair_lock_assert_owner(v21 + 20);
            }
          }
        }

        v22 = CPSqliteDatabaseStatementForReading();
        if (v22 && (a5 <= a7 ? (v23 = a7) : (v23 = a5), sqlite3_bind_int64(*(v22 + 8), 1, v23), CFStringGetCString(a3, buffer, 256, 0x8000100u)))
        {
          CFDictionaryGetCount(0);
          v29 = CalTimeZoneCopyCFTimeZone();
          cf = CFTimeZoneCreateWithTimeIntervalFromGMT(v15, 0.0);
          CFDictionaryGetValue(0, 4);
          CFDictionaryGetValue(0, 6);
          CFDictionaryGetValue(0, 5);
          v24 = 0;
          CFDictionaryGetValue(0, 0x38);
          v25 = cf;
          if (v29 && cf)
          {
            if (CDBLockingAssertionsEnabled == 1)
            {
              v26 = CPRecordStoreGetContext();
              if (v26)
              {
                os_unfair_lock_assert_owner(v26 + 20);
              }
            }

            v24 = CPRecordStoreProcessStatementWithPropertyIndices();
            v25 = cf;
          }

          if (v25)
          {
            CFRelease(v25);
          }

          if (v29)
          {
            CFRelease(v29);
          }
        }

        else
        {
          v24 = 0;
        }

        CFRelease(v20);
      }

      else
      {
        v24 = 0;
      }

      CFRelease(0);
      CFRelease(v18);
    }

    else
    {
      v24 = 0;
    }

    CFRelease(v16);
  }

  else
  {
LABEL_27:
    v24 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t _CalCopyRecurringEventQueryRowHandler(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = sqlite3_column_text(v3, *(a2 + 64));
  v5 = sqlite3_column_bytes(v3, *(a2 + 64));
  v6 = sqlite3_column_double(v3, *(a2 + 56));
  v7 = sqlite3_column_double(v3, *(a2 + 60));
  v8 = sqlite3_column_double(v3, *(a2 + 88));
  v9 = sqlite3_column_double(v3, *(a2 + 80));
  v10 = sqlite3_column_text(v3, *(a2 + 84));
  v11 = sqlite3_column_bytes(v3, *(a2 + 84));
  v12 = sqlite3_column_int(v3, *(a2 + 76));
  if (v4)
  {
    LODWORD(v4) = strncmp(v4, "_float", v5) == 0;
  }

  v14 = v10 && (v13 = *(a2 + 48)) != 0 && strncmp(v10, v13, v11) == 0;
  if (v4)
  {
    v15 = 24;
  }

  else
  {
    v15 = 8;
  }

  if (v6 > *(a2 + v15))
  {
    return 0;
  }

  v16 = (v7 - v6);
  if (v8 != 0.0)
  {
    v17 = v8 + v16;
    v18 = *(a2 + 16);
    goto LABEL_17;
  }

  if (v12 && v9 != 0.0 && ((v4 ^ 1 | v14) & 1) != 0)
  {
    v17 = v9 + v16;
    v18 = *a2;
LABEL_17:
    if (v17 > v18)
    {
      goto LABEL_18;
    }

    return 0;
  }

LABEL_18:
  if (sqlite3_column_int(v3, *(a2 + 72)) != 4 || sqlite3_column_type(v3, *(a2 + 92)) != 5)
  {
    return 2;
  }

  v19 = sqlite3_column_int(v3, *(a2 + 96));
  result = 2;
  if (!v19 && v16)
  {
    v21 = sqlite3_column_text(v3, *(a2 + 68));
    if (v21 && strcmp(v21, "gregorian"))
    {
      return 2;
    }

    v22 = 32;
    if (v4)
    {
      v22 = 40;
    }

    v23 = 16;
    if (!v4)
    {
      v23 = 0;
    }

    v24 = *(a2 + v15);
    v25 = *(a2 + v23);
    v26 = *(a2 + v22);
    CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    v28 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    if (GregorianDateWithFallbackToDefaultTimeZone <= v28)
    {
      v29 = v16;
      v30 = v28 + 1;
      while (1)
      {
        CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
        if (v31 + v29 >= v25 && v31 <= v24)
        {
          break;
        }

        result = 0;
        if (v30 == ++GregorianDateWithFallbackToDefaultTimeZone)
        {
          return result;
        }
      }

      return 2;
    }

    return 0;
  }

  return result;
}

const void *_CalEventCopyTravelTime(uint64_t a1)
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
  v3 = Property;
  if (Property)
  {
    CFRetain(Property);
  }

  return v3;
}

void CalEventSetTravelTime(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 57, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const void *CalEventCopyTravelTime(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalEventCopyTravelTime(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalEventSetProposedStartDate(_BOOL8 a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(a2);
  _CalRecordSetPropertyIfDifferent(a1, 63, CFDateRefFromCalDate);
  if (CFDateRefFromCalDate)
  {
    CFRelease(CFDateRefFromCalDate);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalEventGetRawProposedStartDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ProposedStartDate = _CalEventGetProposedStartDate(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ProposedStartDate;
}

const void *CalEventCopyRecurrenceSet(uint64_t a1)
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

void CalEventSetRecurrenceSet(uint64_t a1)
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

BOOL CalEventGetFlag(uint64_t a1, uint64_t a2)
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

void CalEventSetFlag(uint64_t a1)
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

  CPRecordGetProperty();
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

uint64_t CalEventGetTravelAdvisoryBehavior(uint64_t a1)
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

void CalEventSetTravelAdvisoryBehavior(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 58, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalEventIsCandidateForTravelAdvisories(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CalCalendarItemGetStatus(a1) == 3)
    {
      v2 = CDBLogHandle;
      result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v4 = v2;
        v5 = CalCalendarItemCopySummary(a1);
        v16 = 138412290;
        v17 = v5;
        v6 = "Event is not a candidate for travel advisories because it is a cancelled event.  Summary: [%@]";
LABEL_20:
        _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_DEBUG, v6, &v16, 0xCu);

        goto LABEL_21;
      }
    }

    else if (CalEventIsAllDay(a1))
    {
      v8 = CDBLogHandle;
      result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v4 = v8;
        v5 = CalCalendarItemCopySummary(a1);
        v16 = 138412290;
        v17 = v5;
        v6 = "Event is not a candidate for travel advisories because it is an all-day event.  Summary: [%@]";
        goto LABEL_20;
      }
    }

    else if (CalEventGetParticipationStatus(a1) == 2)
    {
      v9 = CDBLogHandle;
      result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v4 = v9;
        v5 = CalCalendarItemCopySummary(a1);
        v16 = 138412290;
        v17 = v5;
        v6 = "Event is not a candidate for travel advisories because the user declined the event.  Summary: [%@]";
        goto LABEL_20;
      }
    }

    else if (CalEventGetTravelAdvisoryBehavior(a1) < 2)
    {
      v11 = CalCalendarItemCopyCalendar(a1);
      if (!v11 || (v12 = v11, IsIgnoringEventAlerts = CalCalendarIsIgnoringEventAlerts(v11), CFRelease(v12), !IsIgnoringEventAlerts))
      {
        result = 1;
        goto LABEL_22;
      }

      v14 = CDBLogHandle;
      result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v4 = v14;
        v5 = CalCalendarItemCopySummary(a1);
        v16 = 138412290;
        v17 = v5;
        v6 = "Event is not a candidate for travel advisories because its calendar has all event alerts disabled.  Summary: [%@]";
        goto LABEL_20;
      }
    }

    else
    {
      v10 = CDBLogHandle;
      result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v4 = v10;
        v5 = CalCalendarItemCopySummary(a1);
        v16 = 138412290;
        v17 = v5;
        v6 = "Event is not a candidate for travel advisories because its travel advisory behavior is not 'automatic' or 'enabled'.  Summary: [%@]";
        goto LABEL_20;
      }
    }
  }

  else
  {
    v7 = CDBLogHandle;
    result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "No event given.  Will not determine travel advisory eligibility.", &v16, 2u);
LABEL_21:
      result = 0;
    }
  }

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalEventIsImmediatelyEligibleForTravelAdvisories(uint64_t a1)
{
  if (a1)
  {
    if (CalEventIsCandidateForTravelAdvisories(a1))
    {
      v2 = CalCalendarItemCopyPreferredLocation(a1);
      if (v2)
      {
        v3 = v2;
        HasKnownSpatialData = CalLocationHasKnownSpatialData(v2);
        CFRelease(v3);
        return HasKnownSpatialData;
      }
    }
  }

  else
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "NULL 'event' given.  Will not determine immediate eligibility for travel advisory", v7, 2u);
    }
  }

  return 0;
}

BOOL CalEventIsHidden(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsHidden = _CalEventIsHidden(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsHidden;
}

void CalEventSetHidden(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 31, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalEventSetCanForward(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 64, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalEventCanForward(uint64_t a1)
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

void CalEventSetLocationPredictionState(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 65, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventGetLocationPredictionState(uint64_t a1)
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

BOOL CalEventHasPredictedLocation(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CalCalendarItemCopyPreferredLocation(a1);
  v3 = v2;
  if (v2 && CalLocationHasCoordinates(v2))
  {
    CFRelease(v3);
    v4 = 0;
    goto LABEL_7;
  }

  if (CalEventGetLocationPredictionState(a1))
  {
    v4 = 0;
    if (!v3)
    {
      goto LABEL_7;
    }

LABEL_6:
    CFRelease(v3);
    goto LABEL_7;
  }

  v7 = CalCalendarItemCopySummary(a1);
  if (v3)
  {
    v8 = CalLocationCopyTitle(v3);
  }

  else
  {
    v8 = &stru_1F59E24D8;
  }

  v9 = CalCalendarItemCopyCalendar(a1);
  v10 = CalCalendarCopyUUID(v9);
  CFRelease(v9);
  v16 = 0;
  v11 = [MEMORY[0x1E6992FF0] predictedLocationOfInterestForEventTitle:v7 eventLocation:v8 calendarIdentifier:v10 timeout:-1 error:&v16];
  v12 = v16;
  v4 = v11 != 0;

  if (!v11)
  {
    if (v12)
    {
      v13 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [v12 localizedDescription];
        *buf = 138413058;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Could not fetch predicted location of interest for event title: [%@], event location: [%@], calendar identifier: [%@], error: [%@]", buf, 0x2Au);
      }
    }
  }

  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void CalEventSetDisallowProposeNewTime(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 67, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalEventDisallowProposeNewTime(uint64_t a1)
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

void CalEventSetJunkStatus(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 70, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalEventUpdateLastModifiedDate(uint64_t a1)
{
  v2 = CalCopyDatabaseForRecord();
  if (v2)
  {
    v3 = v2;
    if (_CalDatabaseIsPropertyModificationLoggingEnabled(v2))
    {
      if (!_CalCalendarItemIsInvite(a1) || (Store = _CalEventGetStore(a1), _CalStoreAttendeeCanUpdateLastModified(Store)))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v6 = CFDateCreate(0, Current);
        if (v6)
        {
          v7 = v6;
          _CalCalendarItemSetLastModifiedDateWhileLocked(a1, v6);
          CFRelease(v7);
        }
      }
    }

    CFRelease(v3);
  }
}

void CalEventSetLastModifiedDate(uint64_t a1, CFAbsoluteTime a2)
{
  CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(a2);
  CalCalendarItemSetLastModifiedDate(a1, CFDateRefFromCalDate);
  if (CFDateRefFromCalDate)
  {

    CFRelease(CFDateRefFromCalDate);
  }
}

void CalEventGetLastModifiedDate(uint64_t a1)
{
  ModifiedDate = CalCalendarItemCopyLastModifiedDate(a1);
  if (ModifiedDate)
  {
    v2 = ModifiedDate;
    MEMORY[0x1E12C5EF0]();
    CFRelease(v2);
  }

  else
  {
    v3 = *MEMORY[0x1E6993100];
  }
}

void CalEventSetConferenceURL(_BOOL8 a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = CFURLGetString(a2);
  }

  else
  {
    v5 = 0;
  }

  _CalRecordSetPropertyIfDifferent(a1, 71, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalEventCopyConferenceURL(uint64_t a1)
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

uint64_t _CalEventInvalidateDetectedConferenceURL(uint64_t a1)
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

uint64_t CalEventCopyDetectedConferenceURL(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventUpdateDetectedConferenceURLIfNeeded(a1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
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

void _CalEventUpdateDetectedConferenceURLIfNeeded(uint64_t a1)
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

  if ([CPRecordGetProperty() isEqualToString:@"invalid"])
  {
    ClientLocation = _CalCalendarItemGetClientLocation(a1);
    if (ClientLocation || (ClientLocation = _CalCalendarItemGetLocation(a1)) != 0)
    {
      v4 = ClientLocation;
      v5 = _CalEventCopySummary(ClientLocation);
      v6 = _CalLocationCopyAddress(v4);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    Description = _CalCalendarItemGetDescription(a1);
    v8 = _CalCalendarItemCopyURL(a1);
    v9 = [v8 absoluteString];
    v10 = _CalEventDetectAndCopyConferenceURLFromSources(Description, v9, v5, v6);

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
    if (v10)
    {

      CFRelease(v10);
    }
  }
}

uint64_t _CalEventCopyContactIdentifier(uint64_t a1)
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

void CalEventSetContactIdentifier(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 72, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventCopyContactIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalEventCopyContactIdentifier(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalEventSetContactName(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 75, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventCopyContactName(uint64_t a1)
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

uint64_t _CalEventSetInvitationChangedProperties(uint64_t a1)
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

uint64_t _CalEventGetInvitationChangedProperties(uint64_t a1)
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

void CalEventAddInvitationChangedProperties(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  InvitationChangedProperties = _CalEventGetInvitationChangedProperties(a1);
  if ((InvitationChangedProperties | a2) != InvitationChangedProperties)
  {
    _CalEventSetInvitationChangedProperties(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalEventRemoveInvitationChangedProperties(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  InvitationChangedProperties = _CalEventGetInvitationChangedProperties(a1);
  if ((InvitationChangedProperties & ~a2) != InvitationChangedProperties)
  {
    _CalEventSetInvitationChangedProperties(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalEventSetSpecialDayString(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 127, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventCopySpecialDayString(uint64_t a1)
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

uint64_t _CalEventSetImage(void *a1, uint64_t a2)
{
  result = _CalEventGetImage(a1);
  if (result != a2)
  {
    if (result)
    {
      result = _CalImageRemoveEvent(result, a1);
    }

    if (a2)
    {

      return _CalColorAddEvent(a2, a1);
    }
  }

  return result;
}

CFTypeRef _CalEventGetImage(uint64_t a1)
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

void CalEventSetImage(void *a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventSetImage(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalEventCopyImage(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Image = _CalEventGetImage(a1);
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

uint64_t _CalEventSetColor(void *a1, uint64_t a2)
{
  result = _CalEventGetColor(a1);
  if (result != a2)
  {
    if (result)
    {
      result = _CalColorRemoveEvent(result, a1);
    }

    if (a2)
    {

      return _CalColorAddEvent(a2, a1);
    }
  }

  return result;
}

CFTypeRef _CalEventGetColor(uint64_t a1)
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

void CalEventSetColor(void *a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEventSetColor(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalEventCopyColor(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Color = _CalEventGetColor(a1);
  if (Color)
  {
    v4 = CFRetain(Color);
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

void CalEventSetCreatorTeamIdentityString(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 119, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventCopyCreatorTeamIdentityString(uint64_t a1)
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

void CalEventSetCreatorIdentityString(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 118, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventCopyCreatorIdentityString(uint64_t a1)
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

uint64_t CalDatabaseRemoveCalendarItemChangesInCalendarToIndex(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v10 = "entityType == CalEventEntity || entityType == CalTaskEntity";
    v11 = 8180;
    goto LABEL_8;
  }

  if (!a3)
  {
    v10 = "calendar != NULL";
    v11 = 8181;
LABEL_8:
    __assert_rtn("CalDatabaseRemoveCalendarItemChangesInCalendarToIndex", "CalEvent.m", v11, v10);
  }

  v7 = CalCopyDatabaseForRecord();
  os_unfair_lock_lock(v7 + 20);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __CalDatabaseRemoveCalendarItemChangesInCalendarToIndex_block_invoke;
  v12[3] = &unk_1E868D418;
  v12[4] = &v15;
  v12[5] = v7;
  v13 = a4;
  v14 = a2;
  v12[6] = a3;
  _CalDatabaseLockForWriteTransaction(v7, v12);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v7 + 20);
  }

  os_unfair_lock_unlock(v7 + 20);
  CFRelease(v7);
  v8 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void sub_1DEC2FC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveCalendarItemChangesInCalendarToIndex_block_invoke(uint64_t a1)
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
  v8 = *(a1 + 60);
  v7 = *(a1 + 48);
  result = CPRecordStoreDeleteChangesForClassToIndexWhereWithBindBlock();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __CalDatabaseRemoveCalendarItemChangesInCalendarToIndex_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  sqlite3_bind_int(*(a2 + 8), a3, *(a1 + 40));
  v6 = *(a2 + 8);
  v7 = *(a1 + 32);
  ID = CPRecordGetID();

  return sqlite3_bind_int(v6, a3 + 1, ID);
}

uint64_t CalDatabaseRemoveCalendarItemChangesInStoreToIndex(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    CalDatabaseRemoveCalendarItemChangesInStoreToIndex_cold_1();
  }

  if (!a3)
  {
    CalDatabaseRemoveCalendarItemChangesInStoreToIndex_cold_2();
  }

  v7 = CalCopyDatabaseForRecord();
  os_unfair_lock_lock(v7 + 20);
  v8 = _CalDatabaseRemoveCalendarItemChangesInStoreToIndex(v7, a2, a3, a4);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v7 + 20);
  }

  os_unfair_lock_unlock(v7 + 20);
  CFRelease(v7);
  return v8;
}

uint64_t _CalDatabaseRemoveCalendarItemChangesInStoreToIndex(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    _CalDatabaseRemoveCalendarItemChangesInStoreToIndex_cold_1();
  }

  if (!a3)
  {
    _CalDatabaseRemoveCalendarItemChangesInStoreToIndex_cold_2();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___CalDatabaseRemoveCalendarItemChangesInStoreToIndex_block_invoke;
  v6[3] = &unk_1E868D418;
  v6[4] = &v9;
  v6[5] = a1;
  v7 = a4;
  v8 = a2;
  v6[6] = a3;
  _CalDatabaseLockForWriteTransaction(a1, v6);
  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t CalDatabaseRemoveCalendarItemChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseRemoveCalendarItemChangesWithIndices_block_invoke;
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

void sub_1DEC3003C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveCalendarItemChangesWithIndices_block_invoke(void *a1)
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

uint64_t CalDatabaseCopyCalendarItemChangesInCalendar(os_unfair_lock_s *a1, int a2, uint64_t a3, int a4, CFMutableDictionaryRef *a5)
{
  if (!a3)
  {
    CalDatabaseCopyCalendarItemChangesInCalendar_cold_1();
  }

  os_unfair_lock_lock(a1 + 20);
  v10 = _CalDatabaseCopyClientIdentifier(a1);
  CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
  Mutable = CFStringCreateMutable(0, 0);
  v13 = Mutable;
  if (a4)
  {
    v14 = @"entity_type = ? AND calendar_id = ? AND old_calendar_id != 0";
  }

  else
  {
    v14 = @"entity_type = ? AND calendar_id = ? AND old_calendar_id = 0";
  }

  CFStringAppend(Mutable, v14);
  CFStringAppend(v13, @" AND sequence_number > (select latest_consumed_sequence_number FROM ClientCursor WHERE client_identifier = ?)");
  CFStringAppend(v13, @" AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)");
  CFStringAppend(v13, @" AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = ? AND client_identifier = ?)");
  if ((a1[86]._os_unfair_lock_opaque & 0x80000000) == 0)
  {
    CFStringAppend(v13, @" AND sequence_number <= ?");
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __CalDatabaseCopyCalendarItemChangesInCalendar_block_invoke;
  v18[3] = &__block_descriptor_60_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
  v19 = a2;
  v18[4] = a3;
  v18[5] = CStringPtr;
  v18[6] = a1;
  v15 = MEMORY[0x1E12C7520](v18);
  CFRelease(v10);
  v16 = _CalDatabaseCopyCalendarItemChangesInternal(a1, 2, v13, v15, a5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);

  return v16;
}

uint64_t __CalDatabaseCopyCalendarItemChangesInCalendar_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 56));
  v4 = *(a2 + 8);
  v5 = *(a1 + 32);
  ID = CPRecordGetID();
  sqlite3_bind_int(v4, 2, ID);
  sqlite3_bind_text(*(a2 + 8), 3, *(a1 + 40), -1, 0);
  sqlite3_bind_text(*(a2 + 8), 4, *(a1 + 40), -1, 0);
  sqlite3_bind_int(*(a2 + 8), 5, *(a1 + 56));
  result = sqlite3_bind_text(*(a2 + 8), 6, *(a1 + 40), -1, 0);
  v8 = *(*(a1 + 48) + 344);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(a2 + 8);

    return sqlite3_bind_int(v9, 7, v8);
  }

  return result;
}

uint64_t _CalDatabaseCopyCalendarItemChangesInternal(uint64_t a1, uint64_t a2, const void *a3, void *a4, CFMutableDictionaryRef *a5)
{
  v8 = a4;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (!a5)
  {
    v10 = 0;
    goto LABEL_7;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
LABEL_5:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v10 = Mutable;
  *a5 = Mutable;
LABEL_7:
  if (v10)
  {
    RecordStore = _CalDatabaseGetRecordStore(a1);
    v13 = CDBLockingAssertionsEnabled;
    if (!RecordStore)
    {
      v13 = 0;
    }

    if (v13)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    ChangesForClassWithBindBlockAndProperties = CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithBindBlockAndProperties();
  }

  else
  {
    v16 = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1 && v16 != 0)
    {
      v18 = CPRecordStoreGetContext();
      if (v18)
      {
        os_unfair_lock_assert_owner(v18 + 20);
      }
    }

    ChangesForClassWithBindBlockAndProperties = CPRecordStoreGetChangesForClassWithBindBlockAndProperties();
  }

  v11 = ChangesForClassWithBindBlockAndProperties;
  if (a3)
  {
    CFRelease(a3);
  }

LABEL_23:

  return v11;
}

uint64_t CalDatabaseCopyCalendarItemChangesInStore(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, int a4, CFMutableDictionaryRef *a5)
{
  os_unfair_lock_lock(a1 + 20);
  v10 = _CalDatabaseCopyClientIdentifier(a1);
  CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"entity_type = ?");
  if (a3)
  {
    CFStringAppend(Mutable, @" AND store_id = ?");
  }

  if (a4)
  {
    v13 = @" AND old_calendar_id != 0";
  }

  else
  {
    v13 = @" AND old_calendar_id = 0";
  }

  CFStringAppend(Mutable, v13);
  CFStringAppend(Mutable, @" AND sequence_number > (select latest_consumed_sequence_number FROM ClientCursor WHERE client_identifier = ?)");
  CFStringAppend(Mutable, @" AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)");
  CFStringAppend(Mutable, @" AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = ? AND client_identifier = ?)");
  if ((a1[86]._os_unfair_lock_opaque & 0x80000000) == 0)
  {
    CFStringAppend(Mutable, @" AND sequence_number <= ?");
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __CalDatabaseCopyCalendarItemChangesInStore_block_invoke;
  v17[3] = &__block_descriptor_60_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
  v18 = a2;
  v17[4] = a3;
  v17[5] = CStringPtr;
  v17[6] = a1;
  v14 = MEMORY[0x1E12C7520](v17);
  CFRelease(v10);
  v15 = _CalDatabaseCopyCalendarItemChangesInternal(a1, a2, Mutable, v14, a5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);

  return v15;
}

uint64_t __CalDatabaseCopyCalendarItemChangesInStore_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 56));
  if (*(a1 + 32))
  {
    v4 = *(a2 + 8);
    ID = CPRecordGetID();
    sqlite3_bind_int(v4, 2, ID);
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  sqlite3_bind_text(*(a2 + 8), v6, *(a1 + 40), -1, 0);
  sqlite3_bind_text(*(a2 + 8), v6 + 1, *(a1 + 40), -1, 0);
  sqlite3_bind_int(*(a2 + 8), v6 + 2, *(a1 + 56));
  result = sqlite3_bind_text(*(a2 + 8), v6 + 3, *(a1 + 40), -1, 0);
  v8 = *(*(a1 + 48) + 344);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(a2 + 8);

    return sqlite3_bind_int(v9, v6 | 4, v8);
  }

  return result;
}

CFMutableDictionaryRef CalDatabaseCopyEventMovesInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  v3 = 0;
  CalDatabaseCopyCalendarItemChangesInStore(a1, 2, a2, 1, &v3);
  return v3;
}

CFMutableDictionaryRef CalDatabaseCopyEventMovesInCalendar(os_unfair_lock_s *a1, uint64_t a2)
{
  v3 = 0;
  CalDatabaseCopyCalendarItemChangesInCalendar(a1, 2, a2, 1, &v3);
  return v3;
}

void CalDatabaseAmendDeleteForCalendarItemWithExternalID(os_unfair_lock_s *a1, int a2, const __CFString *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 20);
  if (a3)
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

    Database = CPRecordStoreGetDatabase();
    if (Database)
    {
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
      if (v11)
      {
        v12 = v11;
        if (CDBLockingAssertionsEnabled == 1)
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
          v16 = *(v14 + 8);
          v17 = cStringFromCFString(a3);
          sqlite3_bind_text(v16, 1, v17, -1, MEMORY[0x1E69E9B38]);
          sqlite3_bind_int(*(v15 + 8), 2, a2);
          _CalDatabasePerformStatementWithWriteLock(a1, v15);
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v15)
            {
              v18 = **v15;
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

          CPSqliteStatementReset();
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v12)
          {
            if (*(*v12 + 104))
            {
              v20 = CPRecordStoreGetContext();
              if (v20)
              {
                os_unfair_lock_assert_owner(v20 + 20);
              }
            }
          }
        }

        CPSqliteDatabaseReleaseSqliteConnection();
      }
    }
  }

  else
  {
    v21 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = "_CalDatabaseAmendDeleteForCalendarItemWithExternalID";
      _os_log_impl(&dword_1DEBB1000, v21, OS_LOG_TYPE_ERROR, "%s: externalID is null and it wasn't intended to be so. exiting this function now to avoid crash.", &v23, 0xCu);
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v22 = *MEMORY[0x1E69E9840];
}

BOOL _CalDatabasePrepareCalendarItemsInStoreForMigration(uint64_t a1, void *a2, uint64_t a3)
{
  ID = CPRecordGetID();
  if (!_CalDatabaseRemoveCalendarItemChangesInStoreToIndex(a1, 2, a3, 0x7FFFFFFF))
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE CalendarItem SET external_tracking_status = NULL, external_id = NULL, external_mod_tag = NULL, external_rep = NULL WHERE (calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = %d));", ID);
  v9 = v8 != 0;
  if (v8)
  {
    v10 = v8;
    CalPerformSQLWithConnection(a2, v8);
    CFRelease(v10);
  }

  v11 = CFStringCreateWithFormat(v7, 0, @"SELECT calendaritem.rowid, calendaritem.orig_item_id, calendaritem.orig_date, calendaritem.unique_identifier from CalendarItem, Calendar, Store WHERE calendaritem.unique_identifier IS NULL and (calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = %d));", ID);
  if (v11)
  {
    v12 = v11;
    EnsureAllEventsHaveUIDsWithQuery(a2);
    CFRelease(v12);
  }

  return v9;
}

void EnsureAllEventsHaveUIDsWithQuery(uint64_t a1)
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

  v3 = CPSqliteConnectionStatementForSQL();
  if (v3)
  {
    v4 = v3;
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
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

    CPSqliteStatementSendResults();
    if (CFDictionaryGetCount(Mutable) >= 1)
    {
      v8[0] = Mutable;
      v8[1] = a1;
      CFDictionaryApplyFunction(Mutable, ApplyUIDUpdate, v8);
    }

    CFRelease(Mutable);
  }
}

uint64_t _CalMoveCalendarItemsFromCalendarWithUIDToCalendarWithUID(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE CalendarItem SET calendar_id = %d WHERE calendar_id = %d;", a3, a2);
  if (result)
  {
    v5 = result;
    CalPerformSQLWithConnection(a1, result);
    CFRelease(v5);
    return 1;
  }

  return result;
}

uint64_t CalDatabaseCreateEventsSearchStatement(uint64_t *a1, void *a2, char a3)
{
  os_unfair_lock_lock((a1[5] + 80));
  RecordStore = _CalDatabaseGetRecordStore(a1[5]);
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

  v10 = Database;
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

  if (CPSqliteDatabaseRegisterMatchesSearchStringFunction() || (a3 & 1) == 0 && sqlite3_create_function(*(*(v10 + 8) + 8), "ORGANIZER_MATCHES", 1, 1, a1, OrganizerMatcherCallback, 0, 0) || sqlite3_create_function(*(*(v10 + 8) + 8), "LOCATION_MATCHES", 1, 1, a1, LocationMatcherCallback, 0, 0))
  {
LABEL_16:
    v12 = a1[5];
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v12 + 20);
    }

    os_unfair_lock_unlock(v12 + 20);
    return 0;
  }

  else
  {
    SearchTerm = CalFilterGetSearchTerm(a2);
    Length = CFStringGetLength(SearchTerm);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v18 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x3D03020uLL);
    CFStringGetCString(SearchTerm, v18, MaximumSizeForEncoding + 1, 0x8000100u);
    v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT ROWID FROM CalendarItem WHERE "];
    v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v21 = v20;
    if ((a3 & 1) == 0)
    {
      [v20 appendString:{@"STRING_MATCHES(?, IFNULL(summary, '') || ' ' || IFNULL(description, '')) OR ORGANIZER_MATCHES(organizer_id) OR "}];
    }

    [v21 appendString:@"LOCATION_MATCHES(location_id)"];
    v22 = _CalEventCopyClauseForFilter(a2, a1[5]);
    if (v22)
    {
      v23 = v22;
      [v19 appendFormat:@"%@ AND (%@);", v22, v21];
      CFRelease(v23);
    }

    else
    {
      [v19 appendFormat:@"%@;", v21];
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v10 + 104))
      {
        v24 = CPRecordStoreGetContext();
        if (v24)
        {
          os_unfair_lock_assert_owner(v24 + 20);
        }
      }
    }

    v25 = CPSqliteDatabaseStatementForReading();
    v13 = v25;
    if (v25)
    {
      sqlite3_bind_text(*(v25 + 8), 1, v18, -1, MEMORY[0x1E69E9B38]);
    }

    else
    {
      free(v18);
    }
  }

  return v13;
}

void OrganizerMatcherCallback(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v6 = sqlite3_value_int(*a3);
  v7 = CFSetGetValueIfPresent(v5[1], v6, 0) != 0;

  sqlite3_result_int(a1, v7);
}

void LocationMatcherCallback(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v6 = sqlite3_value_int(*a3);
  v7 = CFSetGetValueIfPresent(v5[2], v6, 0) != 0;

  sqlite3_result_int(a1, v7);
}

CFStringRef _CalEventCopyClauseForFilter(void *a1, uint64_t a2)
{
  result = _CalFilterCopyCalendarIDClauseForQuery(a1, @"calendar_id");
  if (!result)
  {
    if (CalFilterIncludeDisableStores(a1))
    {
      return 0;
    }

    else
    {
      result = _CalDatabaseCopyDisabledStoresClause(a2);
      if (result)
      {
        v5 = result;
        v6 = CFStringCreateWithFormat(0, 0, @"calendar_id IN (SELECT ROWID From Calendar WHERE store_id NOT IN %@)", result);
        CFRelease(v5);
        return v6;
      }
    }
  }

  return result;
}

void CalDatabaseCopyEventIdsForSearch(sqlite3_stmt **a1, uint64_t a2)
{
  v4 = 99;
  while (1)
  {
    v5 = v4;
    v6 = sqlite3_step(a1[1]);
    if (v6 != 100)
    {
      break;
    }

    v7 = sqlite3_column_int(a1[1], 0);
    if (v5 == 99 && CFArrayGetCount(*a2))
    {
      CFArrayRemoveAllValues(*a2);
    }

    CFArrayAppendValue(*a2, v7);
    if ((**(a2 + 32) & 1) == 0)
    {
      v4 = v5 - 1;
      if (v5)
      {
        continue;
      }
    }

    if (!**(a2 + 32))
    {
      return;
    }

    goto LABEL_12;
  }

  if (v6 - 102) > 0xFFFFFFFD || (sqlite3_errmsg(*(*a1 + 1)), CFLog(), (**(a2 + 32)))
  {
LABEL_12:
    **(a2 + 24) = 0;
  }
}

void CalDatabaseDeleteEventsSearchStatement(uint64_t **a1, uint64_t a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        v3 = **a1;
        if (v3)
        {
          if (*(v3 + 104))
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
  }

  CPSqliteStatementReset();
  v5 = *(a2 + 40);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
}

CFMutableArrayRef CalDatabaseCopyEventIDsOfEventsMatching(os_unfair_lock_s *a1, uint64_t a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const __CFString *a6)
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
  if (Database)
  {
    v15 = Database;
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

    if (CPSqliteDatabaseRegisterMatchesSearchStringFunction())
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(a1 + 20);
      }

      os_unfair_lock_unlock(a1 + 20);
      return 0;
    }

    Mutable = CFStringCreateMutable(0, 0);
    v19 = Mutable;
    if (a4)
    {
      v20 = @"SELECT CalendarItem.ROWID FROM CalendarItem, Location WHERE entity_type = 2 AND Location.ROWID = CalendarItem.location_id";
    }

    else
    {
      v20 = @"SELECT CalendarItem.ROWID FROM CalendarItem WHERE entity_type = 2";
    }

    CFStringAppend(Mutable, v20);
    v21 = CFStringCreateMutable(0, 0);
    v22 = v21;
    if (a3)
    {
      CFStringAppend(v21, @" AND ");
      CFStringAppend(v22, @"STRING_MATCHES(?, IFNULL(summary, ''))");
    }

    if (a4)
    {
      CFStringAppend(v22, @" AND ");
      CFStringAppend(v22, @"STRING_MATCHES(?, IFNULL(location.title, ''))");
    }

    if (a6)
    {
      CFStringAppend(v22, @" AND ");
      CFStringAppend(v22, @"(organizer_id == 0 AND STRING_MATCHES(?, IFNULL(summary, '')))");
    }

    if (a5)
    {
      CFStringAppend(v22, @" AND ");
      CFStringAppend(v22, @"STRING_MATCHES(?, IFNULL(description, ''))");
    }

    CFStringAppend(v19, v22);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v15 + 104))
      {
        v23 = CPRecordStoreGetContext();
        if (v23)
        {
          os_unfair_lock_assert_owner(v23 + 20);
        }
      }
    }

    v24 = CPSqliteDatabaseStatementForReading();
    if (v24)
    {
      v25 = v24;
      if (a3)
      {
        v26 = *(v24 + 8);
        v27 = cStringFromCFString(a3);
        LODWORD(a3) = 1;
        sqlite3_bind_text(v26, 1, v27, -1, MEMORY[0x1E69E9B38]);
      }

      if (a4)
      {
        v28 = v25[1];
        LODWORD(a3) = a3 + 1;
        v29 = cStringFromCFString(a4);
        sqlite3_bind_text(v28, a3, v29, -1, MEMORY[0x1E69E9B38]);
      }

      if (a6)
      {
        v30 = v25[1];
        LODWORD(a3) = a3 + 1;
        v31 = cStringFromCFString(a6);
        sqlite3_bind_text(v30, a3, v31, -1, MEMORY[0x1E69E9B38]);
      }

      if (a5)
      {
        v32 = v25[1];
        v33 = cStringFromCFString(a5);
        sqlite3_bind_text(v32, a3 + 1, v33, -1, MEMORY[0x1E69E9B38]);
      }

      v17 = CFArrayCreateMutable(0, 0, 0);
      v41 = v17;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v25)
        {
          v34 = **v25;
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

      CPSqliteStatementSendResults();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v25)
        {
          v36 = **v25;
          if (v36)
          {
            if (*(v36 + 104))
            {
              v37 = CPRecordStoreGetContext();
              if (v37)
              {
                os_unfair_lock_assert_owner(v37 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    else
    {
      v38 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v40 = 0;
        _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_ERROR, "Unable to create statement in CalDatabaseCopyEventIDsOfEventsMatching", v40, 2u);
      }

      v17 = 0;
    }

    CFRelease(v19);
    CFRelease(v22);
  }

  else
  {
    v17 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v17;
}

char *cStringFromCFString(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x25FB88FuLL);
  CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u);
  return v4;
}

uint64_t _EventIDGatherer(uint64_t a1, CFMutableArrayRef *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  CFArrayAppendValue(*a2, v3);
  return 0;
}

os_unfair_lock_s *CalEventCopyNextRecurrenceInSetForEvent(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  ValueAtIndex = CalCopyDatabaseForEntity(a1);
  if (ValueAtIndex)
  {
    v5 = CalEventCopyRecurrenceSet(a1);
    v6 = [v5 UTF8String];
    StartDate = CalEventGetStartDate(a1);
    CalendarId = CalEventGetCalendarId(a1);
    SelectPrefix = CPRecordStoreCreateSelectPrefix();
    if (SelectPrefix)
    {
      v10 = SelectPrefix;
      CFStringAppendFormat(SelectPrefix, 0, @" WHERE recurrence_set = ? AND calendar_id = ? AND start_date > ? AND orig_item_id = 0");
      if (a2)
      {
        CFStringAppendFormat(v10, 0, @" AND external_id IS NOT NULL AND external_id != ");
      }

      CFStringAppendFormat(v10, 0, @" ORDER BY start_date LIMIT 1");
      os_unfair_lock_lock(ValueAtIndex + 20);
      RecordStore = _CalDatabaseGetRecordStore(ValueAtIndex);
      v12 = RecordStore;
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
            v15 = CPRecordStoreGetContext();
            if (v15)
            {
              os_unfair_lock_assert_owner(v15 + 20);
            }
          }
        }
      }

      v16 = CPSqliteDatabaseStatementForReading();
      v17 = v16;
      if (v16)
      {
        sqlite3_bind_text(*(v16 + 8), 1, v6, -1, 0);
        sqlite3_bind_int(*(v17 + 8), 2, CalendarId);
        sqlite3_bind_double(*(v17 + 8), 3, StartDate);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v12)
          {
            v18 = CPRecordStoreGetContext();
            if (v18)
            {
              os_unfair_lock_assert_owner(v18 + 20);
            }
          }
        }

        v19 = CPRecordStoreProcessStatementWithPropertyIndices();
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
      }

      else
      {
        v22 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v10;
        }

        v19 = 0;
      }

      CPSqliteStatementReset();
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(ValueAtIndex + 20);
      }

      os_unfair_lock_unlock(ValueAtIndex + 20);
      CFRelease(v10);
      CFRelease(ValueAtIndex);
      if (v19)
      {
        if (CFArrayGetCount(v19) < 1)
        {
          ValueAtIndex = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
          CFRetain(ValueAtIndex);
        }

        CFRelease(v19);
      }

      else
      {
        ValueAtIndex = 0;
      }
    }

    else
    {
      CFRelease(ValueAtIndex);
      ValueAtIndex = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

id CalEventGetStartDateOfEarliestOccurrenceEndingAfterDateWithExclusions(uint64_t a1, void *a2, void *a3, int a4, int a5, int a6)
{
  v70 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  if (CalCalendarItemHasRecurrenceRules(a1))
  {
    v54 = objc_alloc_init(CDBRecurrenceGenerator);
    v13 = CalCalendarItemCopyExceptionDatesAsCFDates(a1, 1);
    v57 = v11;
    v53 = v13;
    if (v13)
    {
      v56 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    }

    else
    {
      v56 = 0;
    }

    v51 = a1;
    v16 = CalEventCopyDetachedEvents(a1);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __CalEventGetStartDateOfEarliestOccurrenceEndingAfterDateWithExclusions_block_invoke;
    v66[3] = &unk_1E868FEB0;
    v55 = v12;
    v17 = v12;
    v67 = v17;
    v52 = v16;
    [(__CFArray *)v16 sortedArrayUsingComparator:v66];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = v65 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v63;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v63 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v62 + 1) + 8 * i);
          if ((!a4 || (CalEventIsSignificantlyDetachedOptionallyIgnoringPartStat(*(*(&v62 + 1) + 8 * i), 0) & 1) == 0) && (!a5 || CalCalendarItemGetStatus(v23) != 3) && (!a6 || CalEventGetParticipationStatus(v23) != 2))
          {
            v24 = CalEventGetEndDateInTimeZone(v23, v17);
            if ([v24 CalIsAfterDate:v57])
            {
              v49 = CalEventGetStartDateInTimeZone(v23, v17);

              goto LABEL_26;
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v62 objects:v69 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v49 = 0;
LABEL_26:

    if ([v18 count])
    {
      v25 = [v56 mutableCopy];
      if (!v25)
      {
        v25 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v18, "count")}];
      }
    }

    else
    {
      v25 = 0;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v26 = v18;
    v27 = [v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v59;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v59 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v58 + 1) + 8 * j);
          v32 = v17;
          v33 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:CalEventGetOriginalStartDate(v31)];
          if (CalEventIsFloating(v31) || CalEventIsAllDay(v31))
          {
            v34 = [v33 dateInTimeZone:v32 fromTimeZone:{0, v49}];

            v33 = v34;
          }

          [v25 addObject:v33];
        }

        v28 = [v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v28);
    }

    DurationWhileLocked = _CalEventGetDurationWhileLocked(v51, 0);
    v36 = MEMORY[0x1E69930C8];
    v37 = [v57 dateByAddingTimeInterval:-DurationWhileLocked];
    v38 = [v36 calendarDateWithDate:v37 timeZone:v17];

    v39 = MEMORY[0x1E69930C8];
    v40 = CalEventGetStartDateInTimeZone(v51, v17);
    v41 = [v39 calendarDateWithDate:v40 timeZone:v17];

    v42 = CalCalendarItemCopyRecurrences(v51);
    if (v25)
    {
      v43 = v25;
    }

    else
    {
      v43 = v56;
    }

    v44 = [(CDBRecurrenceGenerator *)v54 nextOccurrenceDateWithCalRecurrences:v42 exceptionDates:v43 initialDate:v41 afterDate:v38, v49];
    v45 = v50;
    if (v44)
    {
      if (!v50 || (v46 = [v50 CalIsBeforeDate:v44], v45 = v50, (v46 & 1) == 0))
      {
        v45 = v44;
      }
    }

    v15 = v45;

    v11 = v57;
    v12 = v55;
  }

  else
  {
    v14 = CalEventGetEndDateInTimeZone(a1, v12);
    if ([v14 CalIsAfterDate:v11])
    {
      v15 = CalEventGetStartDateInTimeZone(a1, v12);
    }

    else
    {
      v15 = 0;
    }
  }

  v47 = *MEMORY[0x1E69E9840];

  return v15;
}

id CalEventGetEndDateInTimeZone(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{_CalEventGetEndDateWhileLocked(a1, 0)}];
  if (CalEventIsFloating(a1) || CalEventIsAllDay(a1))
  {
    v5 = [v4 dateInTimeZone:v3 fromTimeZone:0];

    v4 = v5;
  }

  return v4;
}

id CalEventGetStartDateInTimeZone(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:CalEventGetStartDate(a1)];
  if (CalEventIsFloating(a1) || CalEventIsAllDay(a1))
  {
    v5 = [v4 dateInTimeZone:v3 fromTimeZone:0];

    v4 = v5;
  }

  return v4;
}

uint64_t __CalEventGetStartDateOfEarliestOccurrenceEndingAfterDateWithExclusions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = CalEventGetStartDateInTimeZone(a2, v5);
  v8 = CalEventGetStartDateInTimeZone(v6, *(a1 + 32));

  v9 = [v7 compare:v8];
  return v9;
}

uint64_t CalDatabaseCopyEventsWithRecurrenceSet(os_unfair_lock_s *a1, const __CFString *a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  SelectStatement = CPRecordStoreCreateSelectStatement();
  v10 = SelectStatement;
  if (Database && SelectStatement)
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
      v14 = *(v12 + 8);
      CStringFromCFString = CalCreateCStringFromCFString(a2);
      sqlite3_bind_text(v14, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v5)
        {
          v16 = CPRecordStoreGetContext();
          if (v16)
          {
            os_unfair_lock_assert_owner(v16 + 20);
          }
        }
      }

      v17 = CPRecordStoreProcessStatement();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v13)
        {
          v18 = **v13;
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

      CPSqliteStatementReset();
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_28;
  }

  v17 = 0;
  v20 = 0;
  if (SelectStatement)
  {
LABEL_28:
    CFRelease(v10);
    v20 = v17;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v20;
}

uint64_t CalDatabaseCopyOriginalVisibleEventsWithDates(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v8 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  SelectStatement = CPRecordStoreCreateSelectStatement();
  v13 = SelectStatement;
  if (Database && SelectStatement)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }
    }

    v15 = CPSqliteDatabaseStatementForReading();
    if (v15)
    {
      v16 = v15;
      v17 = *(v15 + 8);
      [v6 timeIntervalSinceReferenceDate];
      sqlite3_bind_int64(v17, 1, v18);
      v19 = *(v16 + 8);
      [v5 timeIntervalSinceReferenceDate];
      sqlite3_bind_int64(v19, 2, v20);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v8)
        {
          v21 = CPRecordStoreGetContext();
          if (v21)
          {
            os_unfair_lock_assert_owner(v21 + 20);
          }
        }
      }

      v22 = CPRecordStoreProcessStatement();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v16)
        {
          v23 = **v16;
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

    goto LABEL_28;
  }

  v22 = 0;
  v25 = 0;
  if (SelectStatement)
  {
LABEL_28:
    CFRelease(v13);
    v25 = v22;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);

  return v25;
}

void CalEventCopyRowIDsAndUniqueIdentifiersInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableArrayRef *a3, CFMutableArrayRef *a4)
{
  cf = 0;
  Mutable = 0;
  os_unfair_lock_lock(a1 + 20);
  if (_CalDatabaseGetRecordStore(a1))
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
        cf = CFArrayCreateMutable(0, 0, 0);
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CPRecordGetID();
        if (CDBLockingAssertionsEnabled == 1)
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }

        RowidForRecordID = CPRecordStoreGetRowidForRecordID();
        sqlite3_bind_int64(*(v11 + 8), 1, RowidForRecordID);
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

        CPSqliteStatementSendResults();
      }
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  if (a3)
  {
    *a3 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = Mutable;
  }

  else if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t handleRowAndUniqueIdentifier(uint64_t a1, CFMutableArrayRef *a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(*(a1 + 8), 1)}];
  CFArrayAppendValue(*a2, v4);
  CFArrayAppendValue(a2[1], v5);

  return 0;
}

void _CalEventLoadCreatedByIdentityProperties(uint64_t a1)
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

      CPRecordInitializeProperty();
      if (v9)
      {

        CFRelease(v9);
      }
    }
  }
}

void _CalEventLoadModifiedByIdentityProperties(uint64_t a1)
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

      CPRecordInitializeProperty();
      if (v9)
      {

        CFRelease(v9);
      }
    }
  }
}

uint64_t _CalEventInsertOrganizerRow(uint64_t a1, uint64_t *a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_int(*(a1 + 8), 1);
  v6 = sqlite3_column_int(*(a1 + 8), 2);
  if (sqlite3_column_count(*(a1 + 8)) >= 4 && (v7 = sqlite3_column_text(*(a1 + 8), 3)) != 0)
  {
    v8 = v7;
    v9 = strlen(v7);
    v10 = malloc_type_malloc(v9 + 1, 0x5611F844uLL);
    strncpy(v10, v8, v9 + 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = _CalDBCreateUUIDString();
  CStringFromCFString = CalCreateCStringFromCFString(v11);
  CFRelease(v11);
  sqlite3_bind_int(*(a2[1] + 8), 1, 8);
  sqlite3_bind_int(*(a2[1] + 8), 2, v5);
  sqlite3_bind_int(*(a2[1] + 8), 3, v4);
  sqlite3_bind_int(*(a2[1] + 8), 4, v6);
  v13 = MEMORY[0x1E69E9B38];
  sqlite3_bind_text(*(a2[1] + 8), 5, v10, -1, MEMORY[0x1E69E9B38]);
  sqlite3_bind_text(*(a2[1] + 8), 6, CStringFromCFString, -1, v13);
  v14 = a2[1];
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v14)
    {
      if (*v14)
      {
        v15 = **v14;
        if (v15)
        {
          if (*(v15 + 104))
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
  }

  CPSqliteStatementPerform();
  v17 = a2[1];
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v17)
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
  }

  CPSqliteStatementReset();
  v20 = *a2;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v20)
    {
      if (*v20)
      {
        if (*(*v20 + 104))
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

  Insert = CPSqliteConnectionRowidOfLastInsert();
  sqlite3_bind_int(*(a2[2] + 8), 1, Insert);
  sqlite3_bind_int(*(a2[2] + 8), 2, v4);
  v23 = a2[2];
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v23)
    {
      if (*v23)
      {
        v24 = **v23;
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
  }

  CPSqliteStatementPerform();
  v26 = a2[2];
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v26)
    {
      if (*v26)
      {
        v27 = **v26;
        if (v27)
        {
          if (*(v27 + 104))
          {
            v28 = CPRecordStoreGetContext();
            if (v28)
            {
              os_unfair_lock_assert_owner(v28 + 20);
            }
          }
        }
      }
    }
  }

  CPSqliteStatementReset();
  return 0;
}

uint64_t _CalEventInsertLocationRow(uint64_t a1, uint64_t a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_text(*(a1 + 8), 1);
  sqlite3_bind_text(*(*(a2 + 8) + 8), 1, v5, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(*(*(a2 + 8) + 8), 2, v4);
  v6 = *(a2 + 8);
  if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
  {
    if (*v6)
    {
      v8 = **v6;
      if (v8)
      {
        if (*(v8 + 104))
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
  v10 = *(a2 + 8);
  if (CDBLockingAssertionsEnabled == 1 && v10 != 0)
  {
    if (*v10)
    {
      v12 = **v10;
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
  return 0;
}

uint64_t _CalEventUpdateLocationIDForRow(uint64_t a1, uint64_t **a2)
{
  v3 = a1;
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  LODWORD(v3) = sqlite3_column_int(*(v3 + 8), 1);
  sqlite3_bind_int(a2[1], 1, v4);
  sqlite3_bind_int(a2[1], 2, v3);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        v5 = **a2;
        if (v5)
        {
          if (*(v5 + 104))
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
  }

  CPSqliteStatementPerform();
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        v7 = **a2;
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
  }

  CPSqliteStatementReset();
  return 0;
}

uint64_t _CalEventUpdateStatusAndHasRecurrences(uint64_t a1, uint64_t a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_int(*(a1 + 8), 1);
  sqlite3_bind_int(*(*(a2 + 16) + 8), 1, v4);
  v6 = *(a2 + 16);
  if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
  {
    if (*v6)
    {
      v8 = **v6;
      if (v8)
      {
        if (*(v8 + 104))
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

  v10 = CPSqliteStatementIntegerResult();
  v11 = *(a2 + 16);
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
  if (v5 || v10 >= 1)
  {
    sqlite3_bind_int(*(*(a2 + 8) + 8), 1, v5);
    sqlite3_bind_int(*(*(a2 + 8) + 8), 2, HIWORD(v5));
    sqlite3_bind_int(*(*(a2 + 8) + 8), 3, v10 > 0);
    sqlite3_bind_int(*(*(a2 + 8) + 8), 4, v4);
    v15 = *(a2 + 8);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v15)
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
    }

    CPSqliteStatementPerform();
    v18 = *(a2 + 8);
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

    CPSqliteStatementReset();
  }

  return 0;
}

void _CalEventRedetectConferenceURLHandler(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_value_text(*a3);
  v6 = sqlite3_value_text(a3[1]);
  v7 = sqlite3_value_text(a3[2]);
  v8 = sqlite3_value_text(a3[3]);
  if (v5)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:strlen(v5) encoding:4 freeWhenDone:0];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (v6)
  {
LABEL_3:
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v6 length:strlen(v6) encoding:4 freeWhenDone:0];
  }

LABEL_4:
  if (v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v7 length:strlen(v7) encoding:4 freeWhenDone:0];
  }

  if (v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v8 length:strlen(v8) encoding:4 freeWhenDone:0];
  }

  v9 = _CalEventDetectAndCopyConferenceURLFromSources(v12, v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = strdup([v9 UTF8String]);
    sqlite3_result_text(a1, v11, -1, MEMORY[0x1E69E9B38]);
    CFRelease(v10);
  }

  else
  {
    sqlite3_result_null(a1);
  }
}

uint64_t _CalEventDetectAndCopyConferenceURLFromSources(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_new();
  if (a3 | a4)
  {
    v9 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:a3 address:a4];
    [v8 addObject:v9];
  }

  v10 = a1;
  v11 = [MEMORY[0x1E6992F38] deserializeConference:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 range];
    v15 = [v10 stringByReplacingCharactersInRange:v13 withString:{v14, &stru_1F59E24D8}];

    if ([v15 hasSuffix:@"\n\n"])
    {
      v10 = [v15 substringToIndex:{objc_msgSend(v15, "length") - 2}];
    }

    else
    {
      v10 = v15;
    }
  }

  v16 = [v10 CDVStringByXMLUnquoting];

  if (v16)
  {
    [v8 addObject:v16];
  }

  if (a2)
  {
    [v8 addObject:a2];
  }

  v17 = [MEMORY[0x1E6992F40] conferenceURLFromSources:v8];
  v18 = [v17 absoluteString];

  return v18;
}

uint64_t _CalEventRemoveOriginalEventId(uint64_t a1, int a2)
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

  if (CPRecordGetProperty() == a2)
  {
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

    CPRecordInitializeProperty();
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

    CPRecordInitializeProperty();
  }

  return 0;
}

uint64_t _CalEventValidateIdentityForProperties(uint64_t a1, uint64_t a2)
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
    if (Property && (result = CFStringGetLength(Property)) != 0 || v9 && (result = CFStringGetLength(v9)) != 0 || v11 && (result = CFStringGetLength(v11)) != 0)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (!v13)
      {
        return result;
      }

      result = CFStringGetLength(v13);
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

      return CPRecordSetProperty();
    }
  }

  return result;
}

uint64_t BuildEventUIArray(uint64_t a1, __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = sqlite3_column_int(*(a1 + 8), 0);
  AddIntToDictionary(v5, Mutable, @"rowid");
  v6 = sqlite3_column_int(*(a1 + 8), 1);
  AddIntToDictionary(v6, Mutable, @"origEventId");
  valuePtr = sqlite3_column_double(*(a1 + 8), 2);
  v7 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"origStartDate", v7);
  CFRelease(v7);
  v8 = sqlite3_column_text(*(a1 + 8), 3);
  if (v8)
  {
    v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v8, 0x8000100u);
    CFDictionaryAddValue(Mutable, @"uniqueId", v9);
    CFRelease(v9);
  }

  v10 = sqlite3_column_int(*(a1 + 8), 0);
  CFDictionaryAddValue(a2, v10, Mutable);
  CFRelease(Mutable);
  return 0;
}

void AddIntToDictionary(int a1, __CFDictionary *a2, const void *a3)
{
  valuePtr = a1;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a2, a3, v5);
  CFRelease(v5);
}

uint64_t UpdateUIDForRecord(void *a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  if (CFDictionaryGetValue(a2, @"uniqueId"))
  {
    return 1;
  }

  LODWORD(valuePtr) = 0;
  Value = CFDictionaryGetValue(a2, @"origEventId");
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v7 = valuePtr;
  LODWORD(valuePtr) = 0;
  v8 = CFDictionaryGetValue(a2, @"rowid");
  CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
  v9 = valuePtr;
  if (!v7)
  {
    goto LABEL_8;
  }

  result = CFDictionaryGetValue(a3, v7);
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (result == a2 || (LODWORD(valuePtr) = 0, v12 = CFDictionaryGetValue(result, @"origEventId"), CFNumberGetValue(v12, kCFNumberIntType, &valuePtr), valuePtr == v9) && (LODWORD(valuePtr) = 0, v13 = CFDictionaryGetValue(v11, @"rowid"), CFNumberGetValue(v13, kCFNumberIntType, &valuePtr), valuePtr > v9))
  {
    v14 = CFStringCreateWithFormat(0, 0, @"UPDATE CalendarItem SET orig_event_id = 0, orig_start_date = 0 WHERE rowid = %d;", v9);
    CalPerformSQLWithConnection(a1, v14);
    CFRelease(v14);
LABEL_8:
    v15 = 0;
LABEL_9:
    valuePtr = 0;
    v16 = CFDictionaryGetValue(a2, @"origStartDate");
    CFNumberGetValue(v16, kCFNumberDoubleType, &valuePtr);
    if (v15)
    {
      v17 = CFStringCreateWithFormat(0, 0, @"%@/RID=%.f", v15, valuePtr);
    }

    else
    {
      v18 = CFUUIDCreate(0);
      v17 = CFUUIDCreateString(0, v18);
      CFRelease(v18);
    }

    v19 = CFStringCreateWithFormat(0, 0, @"UPDATE CalendarItem SET unique_identifier=%@ WHERE rowid = %d;", v17, v9);
    CalPerformSQLWithConnection(a1, v19);
    CFRelease(v19);
    CFDictionarySetValue(a2, @"uniqueId", v17);
    CFRelease(v17);
    return 1;
  }

  v15 = CFDictionaryGetValue(v11, @"uniqueId");
  if (v15)
  {
    goto LABEL_9;
  }

  result = UpdateUIDForRecord(a1, v11, a3);
  if (result)
  {
    v15 = CFDictionaryGetValue(v11, @"uniqueId");
    goto LABEL_9;
  }

  return result;
}

uint64_t CalAttachmentUpdateFromICSAttachment(void *a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 filename];
  CalAttachmentSetFilename(a1);
  [v3 fmtype];
  CalAttachmentSetFormat(a1);
  [v3 x_apple_autoarchived];
  CalAttachmentSetAutoArchived(a1);
  if ([v3 hasSize])
  {
    [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "size")}];
    CalAttachmentSetFileSize(a1);
  }

  if (![v3 isBinary])
  {
    CalAttachmentSetIsBinary(a1);
    v7 = [v3 value];
    if (v7)
    {
      CalAttachmentSetURL(a1, v7);
      [v3 managed_id];
      CalAttachmentSetExternalID(a1);
    }

    v39 = a1;

    goto LABEL_9;
  }

  CalAttachmentSetIsBinary(a1);
  bzero(buf, 0x401uLL);
  v4 = CalAttachmentCopyAttachmentFile(a1);
  if (v4)
  {
    v5 = v4;
    v6 = CalAttachmentFileCopyURLAppropriateForFile(v4);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v19 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = [v19 CalTemporaryDirectoryAppropriateForURL:v6];

  v21 = [v20 path];
  v22 = [v21 stringByAppendingPathComponent:@"CalAttachmentXXXXXX"];
  [v22 UTF8String];
  [v22 length];
  __strncpy_chk();
  if (mkstemp(buf) == -1)
  {
    v32 = CDBiCalendarConversionHandle;
    if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

    *v48 = 0;
LABEL_37:
    _os_log_impl(&dword_1DEBB1000, v32, OS_LOG_TYPE_DEBUG, "Couldn't create a path to write the inline attachment into", v48, 2u);
    goto LABEL_38;
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
  if (!v23)
  {
    v32 = CDBiCalendarConversionHandle;
    if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

    *v48 = 0;
    goto LABEL_37;
  }

  v24 = v23;
  v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23];
  v41 = v3;
  v26 = [v3 value];
  v46 = 0;
  [v26 writeToURL:v25 options:1 error:&v46];
  v27 = v46;

  v28 = [v25 path];
  CalAttachmentFileSetDataProtection(v28);

  if (!v27)
  {
    v35 = CalAttachmentSetFileDataAndQuarantine(a1, v24);
    unlink(buf);
    if (v35)
    {
      v39 = a1;

      v3 = v41;
LABEL_9:
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v41 = v3;
      v9 = [v3 allParameters];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v43;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v43 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v42 + 1) + 8 * i);
            v15 = [v14 uppercaseString];
            if ((_isSavedAttachmentParameter(v15) & 1) == 0)
            {
              v16 = [v9 objectForKey:v14];
              if (v16)
              {
                v17 = CDBiCalendarConversionHandle;
                if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v53 = v14;
                  _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_DEBUG, "Found an unrecognized parameter: %@", buf, 0xCu);
                }

                [v8 setObject:v16 forKey:v14];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v11);
      }

      if ([v8 count])
      {
        CalAttachmentSetXProperties(v40, v8);
      }

      v18 = 1;
      goto LABEL_25;
    }

    v36 = CDBiCalendarConversionHandle;
    v3 = v41;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      v37 = v36;
      v38 = [v41 filename];
      *v48 = 138412290;
      v49 = v38;
      _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_DEBUG, "Error setting file data (%@) in database", v48, 0xCu);

      v3 = v41;
    }

LABEL_38:
    v18 = 0;
    goto LABEL_39;
  }

  v29 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v30 = v29;
    v31 = [v41 filename];
    *v48 = 138412546;
    v49 = v31;
    v50 = 2112;
    v51 = v27;
    _os_log_impl(&dword_1DEBB1000, v30, OS_LOG_TYPE_DEBUG, "Error writing inline attachment (%@) to disk: %@", v48, 0x16u);
  }

  v18 = 0;
LABEL_25:
  v3 = v41;
LABEL_39:

  v33 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t _isSavedAttachmentParameter(void *a1)
{
  v1 = _isSavedAttachmentParameter_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _isSavedAttachmentParameter_cold_1();
  }

  v3 = [_isSavedAttachmentParameter_savedParameterNames containsObject:v2];

  return v3;
}

const __CFURL *ICSAttachmentFromCalAttachment(uint64_t a1, int a2)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = 0;
    goto LABEL_54;
  }

  v4 = CalAttachmentCopyLocalURL(a1);
  if (CalAttachmentIsBinary(a1))
  {
    v5 = 1;
    if (!v4)
    {
      goto LABEL_11;
    }

LABEL_10:
    CFRelease(v4);
    goto LABEL_11;
  }

  if (v4)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!v5)
  {
    v14 = CalAttachmentCopyURL(a1);
    if (v14)
    {
      v15 = v14;
      v16 = CFURLGetString(v14);
      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x1E69E3C50]);
        v18 = [MEMORY[0x1E695DFF8] URLWithString:v16];
        v6 = [v17 initWithURL:v18];
      }

      else
      {
        v6 = 0;
      }

      CFRelease(v15);

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v7 = CalAttachmentCopyLocalURLForArchivedData(a1);
  v6 = v7;
  if (v7)
  {
    v8 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
    if (!v8)
    {
      CFRelease(v6);
      goto LABEL_32;
    }

    v9 = v8;
    bzero(buffer, 0x401uLL);
    v10 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = v9;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEBUG, "Memory mapping the file at %@", &buf, 0xCu);
    }

    if (CFStringGetFileSystemRepresentation(v9, buffer, 1024) == 1)
    {
      v11 = open(buffer, 0, 0);
      if ((v11 & 0x80000000) == 0)
      {
        v12 = v11;
        memset(&buf, 0, sizeof(buf));
        if (!fstat(v11, &buf))
        {
          if (!buf.st_size)
          {
            v46 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(context.version) = 0;
              _os_log_impl(&dword_1DEBB1000, v46, OS_LOG_TYPE_DEBUG, "Memory mapping a zero byte file", &context, 2u);
            }

            v13 = CFDataCreate(0, 0, 0);
            goto LABEL_20;
          }

          v40 = mmap(0, buf.st_size, 1, 1025, v12, 0);
          if (v40 != -1)
          {
            v41 = v40;
            context.version = 0;
            memset(&context.retain, 0, 40);
            context.info = buf.st_size;
            context.deallocate = _mmapDeallocatorCallback;
            context.preferredSize = 0;
            v42 = CFAllocatorCreate(0, &context);
            if (v42)
            {
              v43 = v42;
              v44 = CFDataCreateWithBytesNoCopy(0, v41, buf.st_size, v42);
              v45 = v41;
              v13 = v44;
              if (!v44)
              {
                munmap(v45, buf.st_size);
              }

              CFRelease(v43);
            }

            else
            {
              v13 = 0;
            }

            v51 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
            {
              *v58 = 138412546;
              v59 = v9;
              v60 = 2048;
              st_size = buf.st_size;
              _os_log_impl(&dword_1DEBB1000, v51, OS_LOG_TYPE_DEBUG, "Successfully mapped %@ (%lld bytes)", v58, 0x16u);
            }

            goto LABEL_20;
          }

          v47 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            v48 = v47;
            v49 = __error();
            v50 = strerror(*v49);
            LODWORD(context.version) = 138412546;
            *(&context.version + 4) = v9;
            WORD2(context.info) = 2080;
            *(&context.info + 6) = v50;
            _os_log_impl(&dword_1DEBB1000, v48, OS_LOG_TYPE_DEBUG, "Could not mmap %@: %s", &context, 0x16u);
          }
        }

        v13 = 0;
LABEL_20:
        close(v12);
        goto LABEL_30;
      }
    }

    else
    {
      v19 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
      {
        buf.st_dev = 138412290;
        *&buf.st_mode = v9;
        _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_DEBUG, "Can't get file system representation for backup file path %@", &buf, 0xCu);
      }
    }

    v13 = 0;
LABEL_30:
    CFRelease(v9);
    CFRelease(v6);
    if (v13)
    {
      v6 = [objc_alloc(MEMORY[0x1E69E3C50]) initWithData:v13];

      goto LABEL_33;
    }

LABEL_32:
    v6 = 0;
  }

LABEL_33:
  v52 = CalAttachmentCopyFormat(a1);
  [(__CFURL *)v6 setFmtype:?];
  if ((a2 & 1) == 0)
  {
    IsAutoArchived = CalAttachmentIsAutoArchived(a1);
    v21 = CalAttachmentCopyFilename(a1);
    v22 = v21;
    if (IsAutoArchived)
    {
      v23 = [(__CFString *)v21 stringByAppendingPathExtension:@"zip"];

      v22 = v23;
    }

    [(__CFURL *)v6 setX_apple_filename:v22];
    [(__CFURL *)v6 setX_apple_autoarchived:IsAutoArchived];
    v24 = CalAttachmentCopyExternalID(a1);
    [(__CFURL *)v6 setManaged_id:v24];
  }

  if ((v5 & 1) == 0)
  {
    v25 = CalAttachmentCopyFileSize(a1);
    v26 = v25;
    if (v25)
    {
      -[__CFURL setSize:](v6, "setSize:", [v25 intValue]);
    }
  }

  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v27 = CalAttachmentCopyXProperties(a1);
  v28 = [v27 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v54;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v53 + 1) + 8 * i);
        v33 = [v32 uppercaseString];
        isSavedAttachmentParameter = _isSavedAttachmentParameter(v33);

        if ((isSavedAttachmentParameter & 1) == 0)
        {
          v35 = [(__CFURL *)v6 parameterValueForName:v32];

          if (v35)
          {
            v36 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_FAULT))
            {
              *buffer = 138543362;
              v65 = v32;
              _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_FAULT, "We have a saved value for an unrecognized parameter %{public}@ on an attachment, but the property already has a parameter with that name! _isSavedAttachmentParameter may be out of date.", buffer, 0xCu);
            }
          }

          else
          {
            v37 = [v27 objectForKeyedSubscript:v32];
            [(__CFURL *)v6 setParameterValue:v37 forName:v32];
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v29);
  }

LABEL_54:
  v38 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t ___isSavedAttachmentParameter_block_invoke()
{
  v0 = *MEMORY[0x1E69E3F28];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E3F40], *MEMORY[0x1E69E3F28], *MEMORY[0x1E69E4030], *MEMORY[0x1E69E3F68], *MEMORY[0x1E69E3F60], *MEMORY[0x1E69E3D98], *MEMORY[0x1E69E3FF0], *MEMORY[0x1E69E3D30], 0}];
  v2 = _isSavedAttachmentParameter_savedParameterNames;
  _isSavedAttachmentParameter_savedParameterNames = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void _mmapDeallocatorCallback(void *a1, size_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  munmap(a1, a2);
  v3 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Unmapped %zu bytes", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DEC35408(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v2 logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CalExchangeCalendarItemExternalRepresentation *)v3 dictionaryWithExternalRepresentationData:v4, v5, v6, v7, v8, v9, v10];
    }

    objc_end_catch();
    JUMPOUT(0x1DEC353BCLL);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

const void *CalDatabaseCopyUpdatedCalEventFromICSEventWithOptions(void *a1, void *a2, os_unfair_lock_s *a3, uint64_t a4, _BYTE *a5, unsigned __int8 *a6, uint64_t a7, void *a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a8;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v15)
  {
    goto LABEL_44;
  }

  v64 = a6;
  if ((a7 & 0x2000000) != 0)
  {
    v24 = 0;
    goto LABEL_8;
  }

  v18 = [v15 uid];
  v19 = [v15 recurrence_id];

  if (v19)
  {
    v20 = [v15 recurrence_id];
    v21 = CalDateFromICSDate(v20, v16);

    v22 = CalGetRecurrenceUIDFromRealUID(v18, v21);

    v23 = [v15 uid];
    v24 = CalDatabaseCopyEventWithUniqueIdentifierInCalendar(a3, v23, a4);

    v18 = v22;
  }

  else
  {
    v24 = 0;
  }

  v30 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v66 = *&v18;
    _os_log_impl(&dword_1DEBB1000, v30, OS_LOG_TYPE_DEBUG, "Searching for an event with a unique identifier matching %@", buf, 0xCu);
  }

  Event = CalDatabaseCopyEventWithUniqueIdentifierInCalendar(a3, v18, a4);

  if (Event)
  {
    goto LABEL_34;
  }

  if ((a7 & 0x20000000) == 0)
  {
LABEL_8:
    if ([v16 method] != 3 || (kCalCalendarImportRepliesForPreview & a7) != 0)
    {
      v25 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEBUG, "Couldn't find an existing event in the calendar database. Creating a new one.", buf, 2u);
      }

      Event = CalDatabaseCreateEvent(a3);
      if (Event)
      {
        CalCalendarAddEvent(a4, Event);
        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      v28 = 1;
      goto LABEL_16;
    }

    v39 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_DEBUG, "Don't create a new event in case of METHOD:REPLY in ics.", buf, 2u);
    }

LABEL_44:
    Event = 0;
    goto LABEL_45;
  }

  v31 = [v15 summary];
  v32 = [v15 dtstart];
  v33 = CalDateFromICSDate(v32, v16);
  Event = CalDatabaseCopyEventWithSummaryAndStartDateInCalendar(a3, v31, a4, v33);

LABEL_34:
  if ((~a7 & 0x24000000) != 0 || !Event)
  {
    goto LABEL_53;
  }

  v63 = v17;
  v34 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v35 = v34;
    v36 = [v15 summary];
    *buf = 138412546;
    v66 = *&v36;
    v67 = 2112;
    v68 = *&a4;
    _os_log_impl(&dword_1DEBB1000, v35, OS_LOG_TYPE_DEBUG, "Found identity match for event %@ in calendar %@", buf, 0x16u);
  }

  SequenceNumber = CalEventGetSequenceNumber(Event);
  if ([v15 sequence] < SequenceNumber)
  {
    v38 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_DEBUG, "The local event has a greater sequence number. Refusing to update the event", buf, 2u);
    }

    CalCalendarItemUpdateUIDFromICSComponent(Event, v15, v16);
    v17 = v63;
    goto LABEL_45;
  }

  ModifiedDate = CalCalendarItemCopyLastModifiedDate(Event);
  v43 = MEMORY[0x1E6993100];
  if (ModifiedDate)
  {
    v44 = ModifiedDate;
    v45 = MEMORY[0x1E12C5EF0]();
    CFRelease(v44);
    v46 = *v43;
  }

  else
  {
    v46 = *MEMORY[0x1E6993100];
    v45 = *MEMORY[0x1E6993100];
  }

  v47 = [v15 last_modified];
  v48 = CalDateFromICSDateAsUTC(v47);

  if (v48 == v46)
  {
    v49 = [v15 dtstamp];
    v48 = CalDateFromICSDateAsUTC(v49);
  }

  v17 = v63;
  if (floor(v45) <= floor(v48))
  {
LABEL_53:
    if ((a7 & 0x100000) != 0 && Event)
    {
      v50 = CalEventGetSequenceNumber(Event);
      v51 = [v15 sequence];
      if (v51 < v50)
      {
        v52 = v51;
        v53 = CDBiCalendarConversionHandle;
        if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 134218240;
        *&v66 = v50;
        v67 = 2048;
        v68 = *&v52;
        v54 = "ignoring imported event because the local sequence number (%lu) is greater than the imported sequence number (%lu)";
LABEL_71:
        _os_log_impl(&dword_1DEBB1000, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 0x16u);
        goto LABEL_45;
      }

      v55 = CalCalendarItemCopyLastModifiedDate(Event);
      if (v55)
      {
        v56 = v55;
        v57 = MEMORY[0x1E12C5EF0]();
        CFRelease(v56);
        v58 = *MEMORY[0x1E6993100];
      }

      else
      {
        v58 = *MEMORY[0x1E6993100];
        v57 = *MEMORY[0x1E6993100];
      }

      v60 = [v15 last_modified];
      v61 = CalDateFromICSDateAsUTC(v60);

      if (v61 == v58)
      {
        v62 = [v15 dtstamp];
        v61 = CalDateFromICSDateAsUTC(v62);
      }

      if (v57 >= v61)
      {
        v53 = CDBiCalendarConversionHandle;
        if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 134218240;
        v66 = v57;
        v67 = 2048;
        v68 = v61;
        v54 = "ignoring imported event because the local dtstamp number (%f) is greater than the imported dtstamp (%f)";
        goto LABEL_71;
      }

      goto LABEL_68;
    }

    if (Event)
    {
LABEL_68:
      v28 = 0;
      v27 = 1;
LABEL_16:
      if (CalEventUpdateFromICSEventWithOptions(v15, v16, Event, v24, a3, a7, v17, 0, v28))
      {
        if (a5)
        {
          *a5 = 1;
        }

        if (v64)
        {
          *v64 = v28;
        }
      }

      else
      {
        v29 = CDBiCalendarConversionHandle;
        if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v66 = *&v15;
          _os_log_impl(&dword_1DEBB1000, v29, OS_LOG_TYPE_ERROR, "Couldn't update CalEvent from icsEvent %@", buf, 0xCu);
        }

        CalRemoveEvent(Event);
        if (v27)
        {
          CFRelease(Event);
        }

        Event = 0;
      }

      if (v24)
      {
        CFRelease(v24);
      }

      goto LABEL_45;
    }

    goto LABEL_8;
  }

  v59 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v59, OS_LOG_TYPE_DEBUG, "The local event has a greater last modified date. Refusing to update this event", buf, 2u);
  }

  CalCalendarItemUpdateUIDFromICSComponent(Event, v15, v16);
LABEL_45:

  v40 = *MEMORY[0x1E69E9840];
  return Event;
}

const void *CalDatabaseCopyUpdatedCalTaskFromICSTodoWithOptions(void *a1, void *a2, os_unfair_lock_s *a3, const void *a4, _BYTE *a5, uint64_t a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = v12;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v11)
  {
    Task = 0;
    goto LABEL_31;
  }

  v40 = v12;
  if ((a6 & 0x2000000) != 0)
  {
    goto LABEL_16;
  }

  v14 = [v11 uid];
  Task = CalDatabaseCopyCalendarItemWithUniqueIdentifierInCalendarOrStore(a3, 3, v14, a4, 0);

  if (!Task)
  {
    if ((a6 & 0x20000000) != 0)
    {
      v18 = [v11 summary];
      v19 = [v11 due];
      v20 = CalDateFromICSDate(v19, v13);
      Task = CalDatabaseCopyTaskWithSummaryAndDueDateInCalendar(a3, v18, a4, v20);

      if (Task)
      {
        v21 = CDBiCalendarConversionHandle;
        if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
        {
          v22 = v21;
          v23 = [v11 summary];
          *buf = 138412546;
          v42 = v23;
          v43 = 2112;
          v44 = a4;
          _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_DEBUG, "Found identity match for task %@ in calendar %@", buf, 0x16u);

          v13 = v40;
        }

        if ((a6 & 0x4000000) == 0)
        {
          goto LABEL_6;
        }

        SequenceNumber = CalCalendarItemGetSequenceNumber(Task);
        if ([v11 sequence] >= SequenceNumber)
        {
          ModifiedDate = CalCalendarItemCopyLastModifiedDate(Task);
          v37 = MEMORY[0x1E12C5EF0]();
          if (ModifiedDate)
          {
            CFRelease(ModifiedDate);
          }

          v38 = [v11 last_modified];
          v39 = CalDateFromICSDateAsUTC(v38);

          if (v37 <= v39)
          {
            goto LABEL_6;
          }

          v25 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v26 = "The local event has a greater dtstamp. Refusing to update this event";
            goto LABEL_37;
          }
        }

        else
        {
          v25 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v26 = "The local event has a greater sequence number. Refusing to update the event";
LABEL_37:
            _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEBUG, v26, buf, 2u);
          }
        }

        CalCalendarItemUpdateUIDFromICSComponent(Task, v11, v13);
        goto LABEL_31;
      }
    }

LABEL_16:
    v27 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      v28 = v27;
      v29 = [v11 uid];
      *buf = 138412290;
      v42 = v29;
      _os_log_impl(&dword_1DEBB1000, v28, OS_LOG_TYPE_DEBUG, "Couldn't find a task with external id %@ in the calendar database. Creating a new one.", buf, 0xCu);
    }

    Task = CalDatabaseCreateTask(a3);
    if (Task)
    {
      CalCalendarAddCalendarItem(a4, Task);
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v16 = 1;
    goto LABEL_22;
  }

LABEL_6:
  v16 = 0;
  v17 = 1;
LABEL_22:
  v30 = MEMORY[0x1E695DF20];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v32 = [v30 dictionaryWithObject:v31 forKey:@"ItemBridgeOptions"];

  v13 = v40;
  if (CalTaskUpdateFromICSTodoWithOptions(Task, v11, v40, a3, v32, v16))
  {
    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v33 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v11;
      _os_log_impl(&dword_1DEBB1000, v33, OS_LOG_TYPE_ERROR, "Couldn't update CalTask from icsEvent %@", buf, 0xCu);
    }

    CalRemoveTask(Task);
    if (v17)
    {
      CFRelease(Task);
    }

    Task = 0;
  }

LABEL_31:
  v34 = *MEMORY[0x1E69E9840];
  return Task;
}

__CFArray *CalDatabaseCopyUpdatedCalEventsFromICSDocumentWithOptionsAndBatchSize(void *a1, os_unfair_lock_s *a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(id, uint64_t), uint64_t a7, unsigned int (*a8)(void, void, void), uint64_t a9, uint64_t (*a10)(void *, uint64_t), uint64_t a11, void *a12)
{
  v155 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v18 = a12;
  if ((a3 & 0x80000000) == 0)
  {
    v19 = CalDatabaseCopyCalendarWithUID(a2);
    if (v19)
    {
      v20 = v19;
      v118 = a6;
      v21 = [v17 calendar];
      v22 = [v17 calendar];
      v23 = [v22 method];

      theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v24 = [v21 componentKeys];
      v117 = [v24 count];
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v25 = v24;
      v121 = [v25 countByEnumeratingWithState:&v142 objects:v151 count:16];
      if (!v121)
      {

        goto LABEL_129;
      }

      obj = v25;
      v122 = 0;
      v123 = 0;
      v115 = v23 > 1;
      v120 = *v143;
      v27 = *MEMORY[0x1E6993100];
      *&v26 = 134218242;
      v112 = v26;
      v125 = v18;
      v129 = v21;
      v131 = a8;
      v132 = a2;
      v116 = a7;
      v28 = v118;
      v113 = v17;
LABEL_5:
      v29 = 0;
      while (1)
      {
        if (*v143 != v120)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v142 + 1) + 8 * v29);
        context = objc_autoreleasePoolPush();
        v31 = [v21 componentForKey:v30];
        v126 = v29;
        if (a4)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v31)
            {
              v32 = MEMORY[0x1E69E3CC0];
              v33 = v31;
              v34 = objc_alloc_init(v32);
              [v33 attendee];
              v35 = v17;
              v37 = v36 = v30;
              [v34 setAttendee:v37];

              v38 = [v33 due];
              [v34 setDtstart:v38];

              v39 = [v33 completed];
              [v34 setDtend:v39];

              v40 = [v33 description];
              [v34 setDescription:v40];

              v41 = [v33 summary];

              v28 = v118;
              [v34 setSummary:v41];

              v30 = v36;
              v17 = v35;
              a7 = v116;
            }

            else
            {
              v34 = 0;
            }

            v31 = v34;
          }
        }

        objc_opt_class();
        v42 = v31;
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        v128 = v42;
        v44 = objc_opt_isKindOfClass();
        v45 = v44;
        if ((isKindOfClass & 1) == 0 && (v44 & 1) == 0)
        {
          v46 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v153 = v128;
            _os_log_impl(&dword_1DEBB1000, v46, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSComponent in the calendar: %@", buf, 0xCu);
          }

LABEL_29:
          v56 = v132;
          if (!v28)
          {
            goto LABEL_104;
          }

          goto LABEL_30;
        }

        if (((a4 >= 0) & v44) != 0)
        {
          goto LABEL_116;
        }

        if (a8 && !a8(v128, v30, a9))
        {
          goto LABEL_29;
        }

        if ((a4 & 0x8000000) != 0)
        {
          v135 = v30;
          v47 = v128;
          v48 = v21;
          v49 = [v47 recurrence_id];

          DateTimeFromICSDate = *&v27;
          if (v49)
          {
            v51 = [v47 recurrence_id];
            DateTimeFromICSDate = CalCreateDateTimeFromICSDate(v51, v48);

            v21 = v129;
            a8 = v131;
            CalDateTimeRelease();
          }

          v52 = [v47 uid];
          if (vabdd_f64(*&DateTimeFromICSDate, v27) >= 2.22044605e-16 && fabs(*&DateTimeFromICSDate) < 2.22044605e-16)
          {
            v53 = [v47 uid];
            v54 = CalGetRecurrenceUIDFromRealUID(v53, *&DateTimeFromICSDate);

            v21 = v129;
            v52 = v54;
            a8 = v131;
          }

          v55 = CalDatabaseCopyEventWithUniqueIdentifierInCalendar(v132, v52, 0);
          if (v55)
          {
            CFRelease(v55);

            a7 = v116;
            v28 = v118;
            goto LABEL_29;
          }

          a7 = v116;
          v28 = v118;
          v30 = v135;
        }

        if (isKindOfClass)
        {
          if (v115)
          {
            v58 = [v128 propertiesForName:kCalImportEventIsPhantomMaster];
            v59 = [v58 count];

            if (v59)
            {
              v60 = [v128 uid];
              v61 = CalDatabaseCopyEventWithUniqueIdentifierInCalendar(v132, v60, v20);
              if (v61)
              {
                v62 = v61;
                if (!CalCalendarItemIsPhantomMaster(v61))
                {

                  v115 = 1;
                  goto LABEL_42;
                }

                CFRelease(v62);
              }
            }
          }

          buf[0] = 0;
          v62 = CalDatabaseCopyUpdatedCalEventFromICSEventWithOptions(v128, v21, v132, v20, buf, 0, a4, v18);
          v115 |= buf[0] ^ 1;
        }

        else
        {
          if ((v45 & 1) == 0)
          {
            v56 = v132;
            goto LABEL_103;
          }

          v62 = CalDatabaseCopyUpdatedCalTaskFromICSTodoWithOptions(v128, v21, v132, v20, 0, a4);
        }

LABEL_42:
        if (!a5 && v62)
        {
          CFArrayAppendValue(theArray, v62);
        }

        if (a10)
        {
          if (v62)
          {
            v63 = a10(v128, a11);
            if (v63)
            {
              v64 = v63;
              CalCalendarItemSetExternalID(v62, v63);
              CFRelease(v64);
            }
          }
        }

        if (isKindOfClass)
        {
          v65 = CalEventCopyDetachedEvents(v62);
          if (v65)
          {
            v66 = v65;
            v136 = v30;
            Count = CFArrayGetCount(v65);
            v56 = v132;
            if (Count)
            {
              v68 = Count;
              v69 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:Count];
              for (i = 0; i != v68; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v66, i);
                v72 = CalEventCopyUniqueIdentifier(ValueAtIndex);
                [v69 addObject:v72];
              }

              v21 = v129;
              v73 = v69;
            }

            else
            {
              v73 = 0;
            }

            CFRelease(v66);
            v30 = v136;
          }

          else
          {
            v73 = 0;
            v56 = v132;
          }

          v130 = v73;
          v137 = v62;
          v74 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            v75 = v74;
            [v21 componentOccurrencesForKey:v30];
            v77 = v76 = v30;
            v78 = [v77 count];
            *buf = 134217984;
            *v153 = v78;
            _os_log_impl(&dword_1DEBB1000, v75, OS_LOG_TYPE_DEBUG, "ICSEvent has %lu detached events", buf, 0xCu);

            v30 = v76;
          }

          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v134 = [v21 componentOccurrencesForKey:{v30, v112}];
          v79 = [v134 countByEnumeratingWithState:&v138 objects:v150 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v139;
            do
            {
              for (j = 0; j != v80; ++j)
              {
                if (*v139 != v81)
                {
                  objc_enumerationMutation(v134);
                }

                v83 = *(*(&v138 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (!a8 || a8(v83, 0, a9))
                  {
                    v84 = CalDatabaseCopyUpdatedCalEventFromICSEventWithOptions(v83, v21, v56, v20, 0, 0, a4, v18);
                    if (v84)
                    {
                      v85 = v84;
                      v86 = v20;
                      v87 = CalEventCopyUniqueIdentifier(v84);
                      [v130 removeObject:v87];
                      v88 = CalEventCopyOriginalEvent(v85);
                      v89 = v88;
                      if (v88)
                      {
                        v90 = v88 == v137;
                      }

                      else
                      {
                        v90 = 0;
                      }

                      if (v90)
                      {
                        goto LABEL_79;
                      }

                      v91 = CDBiCalendarConversionHandle;
                      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
                      {
                        v92 = v91;
                        UID = CalEventGetUID(v137);
                        v94 = CalEventGetUID(v85);
                        *buf = 67109376;
                        *v153 = UID;
                        v18 = v125;
                        *&v153[4] = 1024;
                        *&v153[6] = v94;
                        _os_log_impl(&dword_1DEBB1000, v92, OS_LOG_TYPE_DEBUG, "Setting %d as the original event for %d", buf, 0xEu);
                      }

                      CalEventAddDetachedEvent(v137, v85);
                      v21 = v129;
                      if (v89)
                      {
LABEL_79:
                        CFRelease(v89);
                      }

                      if (a10)
                      {
                        v95 = a10(v83, a11);
                        if (v95)
                        {
                          CalEventSetExternalID(v85, v95);
                        }
                      }

                      CFRelease(v85);

                      v20 = v86;
                      a8 = v131;
                      v56 = v132;
                    }
                  }
                }

                else
                {
                  v96 = CDBiCalendarConversionHandle;
                  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    *v153 = v83;
                    _os_log_impl(&dword_1DEBB1000, v96, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSComponent in the calendar: %@", buf, 0xCu);
                  }
                }
              }

              v80 = [v134 countByEnumeratingWithState:&v138 objects:v150 count:16];
            }

            while (v80);
          }

          v17 = v113;
          a7 = v116;
          if ((v115 & 1) == 0)
          {
            v97 = v130;
            v98 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
            {
              v99 = v98;
              v100 = [v97 count];
              *buf = v112;
              *v153 = v100;
              *&v153[8] = 2112;
              v154 = v97;
              _os_log_impl(&dword_1DEBB1000, v99, OS_LOG_TYPE_DEBUG, "Removing %lu leftover detachments with unique identifiers %@", buf, 0x16u);
            }

            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v101 = v97;
            v102 = [v101 countByEnumeratingWithState:&v146 objects:buf count:16];
            if (v102)
            {
              v103 = v102;
              v104 = *v147;
              do
              {
                for (k = 0; k != v103; ++k)
                {
                  if (*v147 != v104)
                  {
                    objc_enumerationMutation(v101);
                  }

                  v106 = CalDatabaseCopyEventWithUniqueIdentifierInCalendar(v56, *(*(&v146 + 1) + 8 * k), v20);
                  if (v106)
                  {
                    v107 = v106;
                    CalEventRemoveDetachedEvent(v137, v106);
                    CFRelease(v107);
                  }
                }

                v103 = [v101 countByEnumeratingWithState:&v146 objects:buf count:16];
              }

              while (v103);
            }

            v18 = v125;
            v21 = v129;
          }

          v62 = v137;
          CalParticipantPropagateUUIDsFromMainEventToDetachments(v137);

          v28 = v118;
          if (v137)
          {
LABEL_102:
            CFRelease(v62);
          }
        }

        else
        {
          v28 = v118;
          v56 = v132;
          if (v62)
          {
            goto LABEL_102;
          }
        }

LABEL_103:
        v123 += a5 != 0;
        if (!v28)
        {
LABEL_104:
          v57 = 1;
          goto LABEL_105;
        }

LABEL_30:
        v57 = v28(v17, a7);
LABEL_105:
        if (!a5 || !v57)
        {
          goto LABEL_114;
        }

        ++v122;
        if (v123 == a5 || v122 == v117 || v123 && _CalDatabaseUnlockRequested(v56))
        {
          CalDatabaseSaveAndFlushCaches(v56);
          if (v20)
          {
            CFRelease(v20);
          }

          v20 = CalDatabaseCopyCalendarWithUID(v56);
          v123 = 0;
          LOBYTE(v57) = v20 != 0;
LABEL_114:

          objc_autoreleasePoolPop(context);
          if ((v57 & 1) == 0)
          {
            if (theArray)
            {
              CFRelease(theArray);
            }

            theArray = 0;
            goto LABEL_126;
          }

          goto LABEL_117;
        }

LABEL_116:

        objc_autoreleasePoolPop(context);
LABEL_117:
        v29 = v126 + 1;
        if (v126 + 1 == v121)
        {
          v108 = [obj countByEnumeratingWithState:&v142 objects:v151 count:16];
          v121 = v108;
          if (v108)
          {
            goto LABEL_5;
          }

LABEL_126:
          v25 = obj;

          if (!v20)
          {
LABEL_130:

            v109 = theArray;
            goto LABEL_131;
          }

LABEL_129:
          CFRelease(v20);
          goto LABEL_130;
        }
      }
    }
  }

  v109 = 0;
LABEL_131:

  v110 = *MEMORY[0x1E69E9840];
  return v109;
}

id componentsWithPhantomMasterForICSCalendar(void *a1, uint64_t (*a2)(void, void *, uint64_t), uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v6 = [v5 componentKeys];
  v7 = [v6 countByEnumeratingWithState:&v52 objects:v60 count:16];
  v43 = v5;
  if (v7)
  {
    v8 = v7;
    v9 = *v53;
    v44 = *v53;
    v45 = v6;
    do
    {
      v10 = 0;
      v46 = v8;
      do
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v52 + 1) + 8 * v10);
        v12 = [v5 componentForKey:v11];
        if (!v12)
        {
          v13 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v59 = v11;
            _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_DEBUG, "Component not found for component key: [%@].  Attempting to create a phantom master.", buf, 0xCu);
          }

          v14 = [v5 componentOccurrencesForKey:v11];
          if ([v14 count])
          {
            if (a2)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v15 = v14;
              v16 = [v15 countByEnumeratingWithState:&v48 objects:v57 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v49;
                while (2)
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v49 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    if (a2(*(*(&v48 + 1) + 8 * i), v11, a3))
                    {

                      v5 = v43;
                      goto LABEL_21;
                    }
                  }

                  v17 = [v15 countByEnumeratingWithState:&v48 objects:v57 count:16];
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }

                v5 = v43;
              }
            }

            else
            {
LABEL_21:
              v15 = [v14 objectAtIndexedSubscript:0];
              v20 = [v15 uid];
              v21 = [v47 containsObject:v20];
              v22 = CDBLogHandle;
              v23 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG);
              if (v21)
              {
                if (v23)
                {
                  *buf = 138412290;
                  v59 = v20;
                  _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_DEBUG, "Phantom master with UID [%@] is scheduled to be added already.  Will not create phantom master.", buf, 0xCu);
                }
              }

              else
              {
                if (v23)
                {
                  *buf = 138412290;
                  v59 = v20;
                  _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_DEBUG, "Creating a phantom master with UID: [%@].", buf, 0xCu);
                }

                [v47 addObject:v20];
                objc_opt_class();
                v24 = objc_opt_new();
                [v24 setUid:v20];
                [v24 setSummary:@"[Placeholder Item]"];
                v25 = [v15 dtstart];
                [v24 setDtstart:v25];

                v26 = [v15 dtend];
                [v24 setDtend:v26];

                v27 = [v15 duration];
                [v24 setDuration:v27];

                v28 = [v15 x_apple_etag];
                [v24 setX_apple_etag:v28];

                v29 = [v15 x_apple_scheduletag];
                [v24 setX_apple_scheduletag:v29];

                v30 = [v15 x_apple_serverFilename];
                [v24 setX_apple_serverFilename:v30];

                v31 = [v15 dtstart];
                v56 = v31;
                v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
                [v24 setExdate:v32];

                [v24 setPropertyValue:MEMORY[0x1E695E118] type:5012 forName:kCalImportEventIsPhantomMaster];
                [v42 addObject:v24];

                v5 = v43;
              }
            }

            v9 = v44;
            v6 = v45;
            v8 = v46;
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v8);
  }

  if ([v42 count])
  {
    v33 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v34 = v33;
      v35 = [v42 count];
      *buf = 134217984;
      v59 = v35;
      _os_log_impl(&dword_1DEBB1000, v34, OS_LOG_TYPE_DEBUG, "[%lu] Phantom masters were created.  Adding them to the list of components.", buf, 0xCu);
    }

    v36 = objc_alloc(MEMORY[0x1E695DF70]);
    v37 = [v43 components];
    v38 = v36;
    v5 = v43;
    v39 = [v38 initWithArray:v37];

    [v39 addObjectsFromArray:v42];
  }

  else
  {
    v39 = [v5 components];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

__CFArray *CalItemsUpdateFromiCalendarDataWithOptionsIncludingPhantomMaster(const __CFData *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(id, uint64_t), uint64_t a7, uint64_t (*a8)(void, void *, uint64_t), uint64_t a9, uint64_t (*a10)(void *, uint64_t), uint64_t a11, char a12, void *a13)
{
  v39 = *MEMORY[0x1E69E9840];
  v20 = a13;
  v21 = CDBLogHandle;
  v22 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG);
  if ((a4 & 0x80) != 0)
  {
    if (!v22)
    {
      goto LABEL_7;
    }

    v24 = v21;
    *buf = 67109120;
    LODWORD(v38) = CFDataGetLength(a1);
    _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_DEBUG, "Import of compressed iCalendar data requested.  DataLen: %d", buf, 8u);
  }

  else
  {
    if (!v22)
    {
      goto LABEL_7;
    }

    v23 = MEMORY[0x1E696AEC0];
    v24 = v21;
    v25 = [[v23 alloc] initWithData:a1 encoding:4];
    *buf = 138412290;
    v38 = v25;
    _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_DEBUG, "Import of iCalendar data requested.  Data: [%@]", buf, 0xCu);
  }

LABEL_7:
  v26 = objc_autoreleasePoolPush();
  v36 = 0;
  v27 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:a1 options:a4 error:&v36];
  v28 = v36;
  v29 = v28;
  if (v27)
  {
    v30 = v28 == 0;
  }

  else
  {
    v30 = 0;
  }

  if (v30)
  {
    updated = CalItemsUpdateFromiCalendarDocumentWithOptionsIncludingPhantomMaster(v27, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v20);
  }

  else
  {
    v31 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v29;
      _os_log_impl(&dword_1DEBB1000, v31, OS_LOG_TYPE_ERROR, "Could not parse ICSDocument from data: %@", buf, 0xCu);
    }

    updated = 0;
  }

  objc_autoreleasePoolPop(v26);
  v33 = *MEMORY[0x1E69E9840];
  return updated;
}

__CFArray *CalItemsUpdateFromiCalendarDocumentWithOptionsIncludingPhantomMaster(void *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(id, uint64_t), uint64_t a7, uint64_t (*a8)(void, void *, uint64_t), uint64_t a9, uint64_t (*a10)(void *, uint64_t), uint64_t a11, char a12, void *a13)
{
  v15 = a1;
  v16 = a13;
  if (a12)
  {
    v17 = [v15 calendar];
    v18 = componentsWithPhantomMasterForICSCalendar(v17, a8, a9);
    [v17 setComponents:v18 options:2];
  }

  UID = CalCalendarGetUID();
  v20 = CalDatabaseCopyUpdatedCalEventsFromICSDocumentWithOptionsAndBatchSize(v15, a2, UID, a4, a5, a6, a7, a8, a9, a10, a11, v16);

  return v20;
}

CFTypeRef _CalCreateiCalendarDataFromICSCalendarWithOptions(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithCalendar:v3];
  v6 = [v5 ICSDataWithOptions:a2];
  if (!v6)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v7 = v6;
  if ((a2 & 0x80) == 0)
  {
LABEL_5:
    v12 = CFRetain(v7);

LABEL_7:
    objc_autoreleasePoolPop(v4);
    goto LABEL_8;
  }

  v8 = [v6 length];
  v9 = malloc_type_malloc(v8 + 16, 0xE120EB0uLL);
  v10 = compression_encode_buffer(v9, v8 + 16, [v7 bytes], objc_msgSend(v7, "length"), 0, COMPRESSION_LZFSE);
  if (v10)
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:v10 freeWhenDone:1];

    v7 = v11;
    goto LABEL_5;
  }

  v14 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Compression of ICS failed. Somehow.", v15, 2u);
  }

  free(v9);

  objc_autoreleasePoolPop(v4);
  v12 = 0;
LABEL_8:

  return v12;
}

CFTypeRef CalCreateiCalendarDataFromCalEntitiesWithOptions(const __CFArray *a1, void *a2, unint64_t a3)
{
  v5 = a3 >> 1;
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = ICSCalendarFromCalEntitiesWithTimeZoneGenerationOptions(a1, 2, v6, a3);
  v9 = v8;
  v10 = 20;
  if ((a3 & 1) == 0)
  {
    v10 = 4;
  }

  v11 = _CalCreateiCalendarDataFromICSCalendarWithOptions(v8, a3 & 0x80 | ((v5 & 1) << 6) | v10);

  objc_autoreleasePoolPop(v7);
  return v11;
}

id ICSCalendarFromCalEntitiesWithTimeZoneGenerationOptions(const __CFArray *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v80 = v6;
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_DEBUG, "iCalendar items will be generated from database items.  occurrenceDate: [%@]", buf, 0xCu);
  }

  if (a1 && CFArrayGetCount(a1))
  {
    v69 = a2;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v10 = v6;
    if ((a4 & 0x20000) == 0)
    {

      v10 = 0;
    }

    v70 = v6;
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        if (CalEntityGetType(ValueAtIndex) - 4 >= 0xFFFFFFFE)
        {
          Type = CalEntityGetType(ValueAtIndex);
          if (v10 || Type != 2 || (v16 = CalEventCopyOriginalEvent(ValueAtIndex)) == 0)
          {
            CFRetain(ValueAtIndex);
            v16 = ValueAtIndex;
          }

          v17 = [MEMORY[0x1E696AD98] numberWithInt:CalCalendarItemGetRowID()];
          if (([v8 containsObject:v17] & 1) == 0)
          {
            [v8 addObject:v17];
            CFArrayAppendValue(Mutable, v16);
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }
      }
    }

    v68 = v8;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = CFArrayGetCount(Mutable);
    if (v19 >= 1)
    {
      v21 = v19;
      v22 = 0;
      *&v20 = 138412290;
      v67 = v20;
      v72 = v10;
      v73 = v19;
      v74 = Mutable;
      v75 = v18;
      while (1)
      {
        v23 = CFArrayGetValueAtIndex(Mutable, v22);
        v24 = CalEntityGetType(v23);
        if (v24 != 3)
        {
          break;
        }

        if (!v23 || CalCalendarItemIsHidden(v23))
        {
          goto LABEL_57;
        }

        v34 = ICSTodoFromCalTask(v23, a4);
        if (!v34)
        {
          v36 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_ERROR, "Could not convert the original calTask", buf, 2u);
          }

          v25 = 0;
          v21 = v73;
LABEL_36:

LABEL_57:
          v35 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            if (v23)
            {
              RowID = CalCalendarItemGetRowID();
            }

            else
            {
              RowID = -1;
            }

            *buf = 67109120;
            LODWORD(v80) = RowID;
            _os_log_impl(&dword_1DEBB1000, v35, OS_LOG_TYPE_DEBUG, "Couldn't create ICSComponents for cal item with uid %d", buf, 8u);
          }

          goto LABEL_62;
        }

        v77 = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObject:v34];
LABEL_55:

        if (!v35)
        {
          goto LABEL_57;
        }

        [v18 addObjectsFromArray:v35];
LABEL_62:

        if (++v22 == v21)
        {
          goto LABEL_68;
        }
      }

      if (v24 != 2)
      {
        goto LABEL_57;
      }

      v25 = v10;
      if (!v23)
      {
        goto LABEL_36;
      }

      v77 = v25;
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!CalCalendarItemIsHidden(v23))
      {
        v27 = ICSEventFromCalEvent(v23, a4);
        v28 = v27;
        if (v10)
        {
          [v27 setRrule:0];
          [v28 setExdate:0];
          [v28 setRecurrence_id:0];
          [v28 setRelatedTo:0];
          IsAllDay = CalEventIsAllDay(v23);
          v30 = [v77 dateByAddingTimeInterval:CalEventGetDuration(v23)];
          v31 = CalCalendarItemCopyEndTimeZone(v23);
          v71 = v31;
          if (IsAllDay)
          {
            v32 = [v30 dateByAddingTimeInterval:1.0];

            v33 = ICSFloatingDateOnlyFromCFDate(v32, v31);
            v30 = v32;
          }

          else
          {
            v33 = ICSDateFromCFDate(v30, v31);
          }

          [v28 setDtend:{v33, v67}];
          v37 = objc_opt_new();
          v38 = [MEMORY[0x1E696AD98] numberWithBool:IsAllDay];
          [v37 setObject:v38 forKey:@"ItemBridgeIsAllDay"];

          CalSetStartDateOnICSComponentWithOptions(v23, v28, v77, v37);
          v10 = v72;
          v21 = v73;
          v18 = v75;
        }

        if (!v28)
        {
          v53 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1DEBB1000, v53, OS_LOG_TYPE_ERROR, "Could not convert the original CalEvent", buf, 2u);
          }

          v35 = 0;
          Mutable = v74;
          goto LABEL_54;
        }

        [v26 addObject:v28];
      }

      if (!v10)
      {
        v39 = CalEventCopyDetachedEvents(v23);
        if (v39)
        {
          v40 = v39;
          v41 = CFArrayGetCount(v39);
          v42 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v43 = MEMORY[0x1E696AD98];
            v44 = v42;
            v45 = [v43 numberWithLong:v41];
            *buf = v67;
            v80 = v45;
            _os_log_impl(&dword_1DEBB1000, v44, OS_LOG_TYPE_DEBUG, "This event has %@ detached events", buf, 0xCu);
          }

          if (v41 >= 1)
          {
            for (j = 0; j != v41; ++j)
            {
              v47 = CFArrayGetValueAtIndex(v40, j);
              v48 = ICSEventFromCalEvent(v47, a4);
              if (v48)
              {
                [v26 addObject:v48];
              }

              else
              {
                v49 = CDBiCalendarConversionHandle;
                if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
                {
                  v50 = v49;
                  UID = CalEventGetUID(v47);
                  *buf = 67109120;
                  LODWORD(v80) = UID;
                  _os_log_impl(&dword_1DEBB1000, v50, OS_LOG_TYPE_ERROR, "Could not convert the detached event with the cal uid %d", buf, 8u);
                }
              }
            }
          }

          CFRelease(v40);
          v10 = v72;
          v21 = v73;
          v18 = v75;
        }
      }

      v35 = v26;
      Mutable = v74;
LABEL_54:

      goto LABEL_55;
    }

LABEL_68:
    v6 = v70;
    a2 = v69;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v18 = 0;
    v10 = v6;
  }

  if (_CalSetupDefaultProdID_onceToken != -1)
  {
    ICSCalendarFromCalEntitiesWithTimeZoneGenerationOptions_cold_1();
  }

  v54 = objc_alloc_init(MEMORY[0x1E69E3C68]);
  [v54 setComponents:v18 options:a2];
  v55 = CFArrayGetCount(a1);
  if (v55 >= 1)
  {
    v56 = v55;
    v76 = v18;
    v57 = v6;
    v58 = 0;
    v59 = 0;
    for (k = 0; k != v56; ++k)
    {
      v61 = CFArrayGetValueAtIndex(a1, k);
      ModifiedProperties = CalEventGetModifiedProperties(v61);
      PrivacyLevel = CalCalendarItemGetPrivacyLevel(v61);
      v59 |= (PrivacyLevel | ModifiedProperties & 0x100) != 0;
      v64 = ICSCalendarServerAccessFromCalEventPrivacyLevel(PrivacyLevel);
      if ([MEMORY[0x1E69E3C68] compareCalendarServerAccess:v58 withAccess:v64] == -1)
      {
        v58 = v64;
      }

      else
      {
        v58 = v58;
      }
    }

    v6 = v57;
    v18 = v76;
    if (v59)
    {
      [v54 setX_calendarserver_access:v58];
    }
  }

  v65 = *MEMORY[0x1E69E9840];

  return v54;
}