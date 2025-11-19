uint64_t CalCalendarItemCopyExternalRepresentation(uint64_t a1)
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

uint64_t CalCalendarItemCopyUniqueIdentifier(uint64_t a1)
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

void CalCalendarItemSetUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 26, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef _CalCalendarItemCopyExceptionDates(uint64_t a1)
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

const __CFArray *_CalCalendarItemAddExceptionDate(uint64_t a1, void *a2)
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

uint64_t _CalCalendarItemRemoveExceptionDate(uint64_t a1, void *a2)
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

void _CalCalendarItemRemoveAllExceptionDates(uint64_t a1)
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

void _CalCalendarItemAddExceptionDateWithCalDate(uint64_t a1, CFAbsoluteTime a2)
{
  v3 = CFDateCreate(0, a2);
  _CalCalendarItemAddExceptionDateWithCFDate(a1, v3);

  CFRelease(v3);
}

void _CalCalendarItemAddExceptionDateWithCFDate(uint64_t a1, uint64_t a2)
{
  v4 = CalCopyDatabaseForEntity();
  ExceptionDateWithDateAndOrder = _CalDatabaseCreateExceptionDateWithDateAndOrder(v4, a2, 0);
  _CalCalendarItemAddExceptionDate(a1, ExceptionDateWithDateAndOrder);
  CFRelease(ExceptionDateWithDateAndOrder);

  CFRelease(v4);
}

void _CalCalendarItemRemoveExceptionDateWithCalDate(uint64_t a1, double a2)
{
  v4 = _CalCalendarItemCopyExceptionDates(a1);
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        if (_CalExceptionDateGetDate(ValueAtIndex) && vabdd_f64(MEMORY[0x1E12C5EF0](), a2) < 2.22044605e-16)
        {
          _CalCalendarItemRemoveExceptionDate(a1, ValueAtIndex);
        }
      }
    }

    CFRelease(v5);
  }
}

__CFArray *_CalCalendarItemCopyExceptionDatesForRecurrences(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = _CalCalendarItemCopyExceptionDates(a1);
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        Date = _CalExceptionDateGetDate(ValueAtIndex);
        if (Date)
        {
          CFArrayAppendValue(Mutable, Date);
        }
      }
    }

    CFRelease(v4);
  }

  v10 = _CalEventCopyDetachedEvents(a1);
  if (v10)
  {
    v11 = v10;
    v12 = CFArrayGetCount(v10);
    if (v12 >= 1)
    {
      v13 = v12;
      v14 = 0;
      v15 = *MEMORY[0x1E6993100];
      do
      {
        v16 = CFArrayGetValueAtIndex(v11, v14);
        OriginalStartDate = _CalEventGetOriginalStartDate(v16);
        v18 = CFDateCreate(0, OriginalStartDate);
        CFArrayAppendValue(Mutable, v18);
        CFRelease(v18);
        ProposedStartDate = _CalEventGetProposedStartDate(v16);
        if (ProposedStartDate != v15)
        {
          v20 = CFDateCreate(0, ProposedStartDate);
          CFArrayAppendValue(Mutable, v20);
          CFRelease(v20);
        }

        ++v14;
      }

      while (v13 != v14);
    }

    CFRelease(v11);
  }

  v22.length = CFArrayGetCount(Mutable);
  v22.location = 0;
  CFArraySortValues(Mutable, v22, MEMORY[0x1E695D770], 0);
  return Mutable;
}

__CFArray *CalCalendarItemCopyExceptionDatesForRecurrences(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyExceptionDatesForRecurrences(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFMutableArrayRef CalCalendarItemCopyExceptionDates(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyExceptionDates(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemAddExceptionDate(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddExceptionDate(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveExceptionDate(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveExceptionDate(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalCalendarItemRemoveExceptionDatesBeyondDate(uint64_t a1, const __CFDate *a2)
{
  if (a2)
  {
    v4 = _CalCalendarItemCopyExceptionDates(a1);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          Date = _CalExceptionDateGetDate(ValueAtIndex);
          if (Date && CFDateCompare(Date, a2, 0) == kCFCompareLessThan)
          {
            _CalCalendarItemRemoveExceptionDate(a1, ValueAtIndex);
          }
        }
      }

      CFRelease(v5);
    }
  }
}

void CalCalendarItemRemoveExceptionDatesBeyondDate(uint64_t a1, const __CFDate *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveExceptionDatesBeyondDate(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveAllExceptionDates(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveAllExceptionDates(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

__CFArray *CalCalendarItemCopyExceptionDatesAsCFDates(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = _CalCalendarItemCopyExceptionDates(a1);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        Date = _CalExceptionDateGetDate(ValueAtIndex);
        if (Date)
        {
          CFArrayAppendValue(Mutable, Date);
        }
      }
    }

    CFRelease(v7);
  }

  if (a2)
  {
    v14.length = CFArrayGetCount(Mutable);
    v14.location = 0;
    CFArraySortValues(Mutable, v14, MEMORY[0x1E695D770], 0);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Mutable;
}

void CalCalendarItemAddExceptionDateWithCFDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddExceptionDateWithCFDate(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveExceptionDateWithCFDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = MEMORY[0x1E12C5EF0](a2);
    _CalCalendarItemRemoveExceptionDateWithCalDate(a1, v5);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

__CFArray *CalCalendarItemCopyExceptionDatesAsCFDatesInSyncOrder(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v4 = _CalCalendarItemCopyExceptionDates(a1);
  if (v4)
  {
    v5 = v4;
    MutableCopy = CFArrayCreateMutableCopy(0, 0, v4);
    if (MutableCopy)
    {
      v7 = MutableCopy;
      v14.length = CFArrayGetCount(MutableCopy);
      v14.location = 0;
      CFArraySortValues(v7, v14, _CompareExceptionDatesBySyncOrder, 0);
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
          Date = _CalExceptionDateGetDate(ValueAtIndex);
          if (Date)
          {
            CFArrayAppendValue(Mutable, Date);
          }
        }
      }

      CFRelease(v7);
    }

    CFRelease(v5);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Mutable;
}

void CalCalendarItemSetExceptionDatesAsCFDatesInSyncOrder(uint64_t a1, const __CFArray *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveAllExceptionDates(a1);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    v6 = CalCopyDatabaseForEntity(a1);
    valuePtr = 0;
    if (Count >= 1)
    {
      for (i = 0; i < Count; i = ++valuePtr)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        ExceptionDateWithDateAndOrder = _CalDatabaseCreateExceptionDateWithDateAndOrder(v6, ValueAtIndex, v9);
        _CalCalendarItemAddExceptionDate(a1, ExceptionDateWithDateAndOrder);
        CFRelease(ExceptionDateWithDateAndOrder);
        CFRelease(v9);
      }
    }

    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef _CalCalendarItemCopyAlarms(uint64_t a1)
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

const __CFArray *_CalCalendarItemAddAlarm(uint64_t a1, void *a2)
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

uint64_t _CalCalendarItemRemoveAlarm(uint64_t a1, void *a2)
{
  if (_CalAlarmIsDefaultAlarm(a2))
  {
    _CalCalendarItemSetRecordProperty(a1, 53, 1);
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

  result = CPRecordGetProperty();
  if (result)
  {

    return CalToManyRelationRemoveObject(result, a2);
  }

  return result;
}

uint64_t CalCalendarItemHasAlarms(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  HasAlarms = _CalCalendarItemHasAlarms(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return HasAlarms;
}

uint64_t _CalCalendarItemHasAlarms(uint64_t a1)
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

void CalCalendarItemAddAlarm(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddAlarm(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveAlarm(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveAlarm(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemIsDefaultAlarmRemoved(uint64_t a1)
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
  return IntegerProperty != 0;
}

void CalCalendarItemSetDefaultAlarmRemoved(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 53, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef _CalCalendarItemCopyAttachments(uint64_t a1)
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

const __CFArray *_CalCalendarItemAddAttachment(uint64_t a1, void *a2)
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

uint64_t _CalCalendarItemRemoveAttachment(uint64_t a1, void *a2)
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

CFMutableArrayRef CalCalendarItemCopyAttachments(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyAttachments(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemAddAttachment(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddAttachment(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveAttachment(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveAttachment(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef _CalCalendarItemCopyContacts(uint64_t a1)
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

const __CFArray *_CalCalendarItemAddContact(uint64_t a1, void *a2)
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

uint64_t _CalCalendarItemRemoveContact(uint64_t a1, void *a2)
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

CFMutableArrayRef CalCalendarItemCopyContacts(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyContacts(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemAddContact(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddContact(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveContact(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveContact(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemHasAttendees(uint64_t a1, int a2)
{
  if (a2)
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
  }

  else
  {
    RecordLock = 0;
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
  if (Property)
  {
    HasObjects = CalToManyRelationHasObjects(Property);
    if (!a2)
    {
      return HasObjects;
    }
  }

  else
  {
    HasObjects = 0;
    if (!a2)
    {
      return HasObjects;
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return HasObjects;
}

void *_CalCalendarItemSetSelfAttendee(uint64_t a1, const void *a2)
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

CFMutableArrayRef _CalCalendarItemCopyAttendees(uint64_t a1)
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

CFMutableArrayRef _CalCalendarItemCopyAttendeesPendingDeletion(uint64_t a1)
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

const __CFArray *_CalCalendarItemAddAttendee(uint64_t a1, void *a2)
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

uint64_t _CalCalendarItemRemoveAttendeeImmediate(uint64_t a1, void *a2)
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

const __CFArray *_CalCalendarItemAddPendingDeleteAttendee(uint64_t a1, void *a2)
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

CFMutableArrayRef CalCalendarItemCopyAttendees(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyAttendees(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFMutableArrayRef CalCalendarItemCopyAttendeesPendingDeletion(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyAttendeesPendingDeletion(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void _CalCalendarItemFixupParticipantsOnEvent(uint64_t a1)
{
  Calendar = _CalCalendarItemGetCalendar(a1);
  DatabaseForRecord = CalGetDatabaseForRecord();
  v60 = Calendar;
  if (!Calendar)
  {
    return;
  }

  v58 = DatabaseForRecord;
  SelfAttendee = _CalCalendarItemGetSelfAttendee(a1);
  v5 = _CalCalendarItemCopyAttendees(a1);
  v6 = &CDBLockingAssertionsEnabled;
  v61 = SelfAttendee;
  if (!v5)
  {
    v57 = SelfAttendee != 0;
    v26 = 1;
    if (!a1)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  v7 = v5;
  Count = CFArrayGetCount(v5);
  v9 = Count;
  v57 = SelfAttendee != 0;
  if (SelfAttendee)
  {
    if (Count < 1)
    {
      goto LABEL_35;
    }

    v10 = 0;
    v11 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
      if (ValueAtIndex)
      {
        if (*v6)
        {
          if (CPRecordGetStore())
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
      if (ValueAtIndex)
      {
        if (*v6)
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

      v16 = CPRecordGetIntegerProperty();
      if (IntegerProperty == -1 || v16 == -1)
      {
        v62 = _CompareAttendeeStringProperties(ValueAtIndex);
        v18 = v7;
        v19 = v9;
        v20 = v6;
        v21 = _CompareAttendeeStringProperties(ValueAtIndex);
        v22 = _CompareAttendeeStringProperties(ValueAtIndex);
        v23 = _CompareAttendeeStringProperties(ValueAtIndex);
        v24 = _CompareAttendeeStringProperties(ValueAtIndex);
        if (v62)
        {
          v25 = v22 == 0;
        }

        else
        {
          v25 = 1;
        }

        v17 = !v25;
        v25 = v21 == 0;
        v6 = v20;
        v9 = v19;
        v7 = v18;
        if (v25)
        {
          v17 = 0;
        }

        if (!v23)
        {
          v17 = 0;
        }

        if (!v24)
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = IntegerProperty == v16;
      }

      if (v17)
      {
        v10 = 1;
      }

      ++v11;
    }

    while (v9 != v11);
    SelfAttendee = v61;
    if (!v10)
    {
LABEL_35:
      _CalCalendarItemAddAttendee(a1, SelfAttendee);
      ++v9;
    }

    LOBYTE(SelfAttendee) = v9 == 1;
  }

  CFRelease(v7);
  v26 = (v9 == 0) | SelfAttendee;
  if (a1)
  {
LABEL_40:
    if (*v6)
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

LABEL_44:
  Property = CPRecordGetProperty();
  CalToManyRelationUnload(Property);
  _CalCalendarItemGetStoreId(a1);
  Store = CPRecordGetStore();
  StoreWithUID = _CalGetStoreWithUID(Store);
  if (StoreWithUID)
  {
    v31 = _CalStoreUsesSelfAttendee(StoreWithUID);
  }

  else
  {
    v31 = 1;
  }

  v32 = _CalCalendarCopyOwnerIdentityDisplayName(v60);
  v33 = _CalCalendarCopyOwnerIdentityAddress(v60);
  Name = _CalCalendarCopyOwnerIdentityFirstName(v60);
  v35 = _CalCalendarCopyOwnerIdentityLastName(v60);
  v36 = _CalCalendarCopySelfIdentityDisplayName(v60);
  cf = _CalCalendarCopySelfIdentityAddress(v60);
  v37 = _CalCalendarCopySelfIdentityFirstName(v60);
  v63 = _CalCalendarCopySelfIdentityLastName(v60);
  v38 = a1;
  Organizer = _CalCalendarItemGetOrganizer(a1);
  v40 = Organizer;
  if (!Organizer)
  {
    if ((v26 & 1) == 0)
    {
      if (v32 | Name | v35)
      {
        if (v33)
        {
          v41 = _CalDatabaseCreateOrganizer(v58);
          if (v41)
          {
            v42 = v41;
            _CalAttendeeSetDisplayName(v41, v32);
            _CalAttendeeSetFirstName(v42, Name);
            _CalAttendeeSetLastName(v42, v35);
            v43 = _CalCalendarCopyOwnerIdentityEmail(v60);
            if (v43)
            {
              v44 = v43;
              _CalAttendeeSetEmailAddress(v42, v43);
              CFRelease(v44);
            }

            v45 = _CalCalendarCopyOwnerIdentityPhoneNumber(v60);
            if (v45)
            {
              v46 = v45;
              _CalAttendeeSetPhoneNumber(v42, v45);
              CFRelease(v46);
            }

            _CalAttendeeSetAddress(v42, v33);
            _CalOrganizerSetIsSelf(v42, 1u);
            _CalCalendarItemSetOrganizer(v38, v42);
            CFRelease(v42);
          }
        }
      }

      goto LABEL_68;
    }

LABEL_52:
    if (v32 | Name | v35 && v33 && v40)
    {
      _CalCalendarItemSetOrganizer(v38, 0);
      _CalDatabaseRemoveEntity(v58, v40);
    }

    if (v31 && v57 && v36 | v37 | v63 && cf)
    {
      _CalCalendarItemRemoveAttendeeImmediate(v38, v61);
      _CalCalendarItemSetSelfAttendee(v38, 0);
    }

    goto LABEL_77;
  }

  if (_CalOrganizerIsSelf(Organizer))
  {
    if ((v26 & 1) == 0)
    {
LABEL_68:
      if (v61 == 0 && v31)
      {
        if (v36 | v37 | v63)
        {
          if (cf)
          {
            Attendee = _CalDatabaseCreateAttendee(v58);
            if (Attendee)
            {
              v48 = Attendee;
              _CalAttendeeSetDisplayName(Attendee, v36);
              _CalAttendeeSetFirstName(v48, v37);
              _CalAttendeeSetLastName(v48, v63);
              v49 = _CalCalendarCopySelfIdentityEmail(v60);
              if (v49)
              {
                v50 = v49;
                _CalAttendeeSetEmailAddress(v48, v49);
                CFRelease(v50);
              }

              v51 = _CalCalendarCopySelfIdentityPhoneNumber(v60);
              if (v51)
              {
                v52 = v51;
                _CalAttendeeSetPhoneNumber(v48, v51);
                CFRelease(v52);
              }

              _CalAttendeeSetAddress(v48, cf);
              _CalAttendeeSetStatus(v48, 1);
              _CalAttendeeSetType(v48, 1u);
              _CalCalendarItemAddAttendee(v38, v48);
              _CalCalendarItemSetSelfAttendee(v38, v48);
              CFRelease(v48);
            }
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_52;
  }

LABEL_77:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (Name)
  {
    CFRelease(Name);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  v53 = _CalCalendarItemGetSelfAttendee(v38);
  if (v53)
  {
    v54 = v53;
    ParticipationStatusModifiedDate = _CalEventGetParticipationStatusModifiedDate(v38);
    LastModified = _CalAttendeeGetLastModified(v54);
    if (LastModified > ParticipationStatusModifiedDate)
    {

      _CalEventSetParticipationStatusModifiedDate(v38, LastModified);
    }
  }
}

void CalCalendarItemAddAttendee(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetWeekStartRaw(a2) == -1)
  {
    _CalCalendarItemAddPendingDeleteAttendee(a1, a2);
  }

  else
  {
    _CalCalendarItemAddAttendee(a1, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const __CFArray *_CalCalendarItemRemoveAttendee(uint64_t a1, const __CFArray *a2)
{
  _CalCalendarItemGetStoreId(a1);
  Store = CPRecordGetStore();
  StoreWithUID = _CalGetStoreWithUID(Store);
  v7 = StoreWithUID && _CalAttendeeGetUseDeletedByOrganizerStatusInStore(StoreWithUID) && (Organizer = _CalCalendarItemGetOrganizer(a1)) != 0 && _CalOrganizerIsSelf(Organizer);
  if (_CalRecurrenceGetWeekStartRaw(a2) == -1)
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
      CalToManyRelationRemoveObject(Property, a2);
    }

    _CalAttendeeSetStatus(a2, 7);
    goto LABEL_19;
  }

  _CalCalendarItemRemoveAttendeeImmediate(a1, a2);
  if (!v7)
  {
LABEL_19:
    result = _CalCalendarItemGetSelfAttendee(a1);
    if (result == a2)
    {

      return _CalCalendarItemSetSelfAttendee(a1, 0);
    }

    return result;
  }

  _CalAttendeeSetStatus(a2, -1);

  return _CalCalendarItemAddPendingDeleteAttendee(a1, a2);
}

void CalCalendarItemRemoveAttendee(uint64_t a1, const __CFArray *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveAttendee(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalCalendarItemCopySelfAttendee(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  SelfAttendee = _CalCalendarItemGetSelfAttendee(a1);
  v4 = SelfAttendee;
  if (SelfAttendee)
  {
    CFRetain(SelfAttendee);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalCalendarItemGetFlags(uint64_t a1)
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

CFMutableArrayRef _CalCalendarItemCopyRecurrences(uint64_t a1)
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

const __CFArray *_CalCalendarItemAddRecurrence(uint64_t a1, void *a2)
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

void _CalCalendarItemRemoveRecurrence(uint64_t a1, void *a2, int a3)
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
    CalToManyRelationRemoveObject(Property, a2);
    if (a3)
    {
      _CalCalendarItemRemoveAllExceptionDates(a1);

      _CalEventDeleteAllDetachedEvents(a1);
    }
  }
}

uint64_t _CalCalendarItemRemoveAllRecurrences(uint64_t a1)
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
    CalToManyRelationRemoveAllObjects(result);
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

    return CPRecordSetProperty();
  }

  return result;
}

BOOL _CalCalendarItemHasRecurrenceRules(uint64_t a1)
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

BOOL CalCalendarItemHasRecurrenceRules(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  HasRecurrenceRules = _CalCalendarItemHasRecurrenceRules(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return HasRecurrenceRules;
}

void CalCalendarItemAddRecurrence(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddRecurrence(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemAddRecurrenceDirectly(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddRecurrence(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveRecurrence(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveRecurrence(a1, a2, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveRecurrenceDirectly(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveRecurrence(a1, a2, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalCalendarItemCopyFirstRecurrence(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyRecurrences(a1);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) < 1)
    {
      v6 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      v6 = CFRetain(ValueAtIndex);
    }

    CFRelease(v4);
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

void CalCalendarItemSetRecurrence(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalRecurrenceGetOwner(a2, 0);
  if (Owner && Owner != a1)
  {
    _CalCalendarItemRemoveRecurrence(Owner, a2, 1);
  }

  v6 = _CalCalendarItemCopyRecurrences(a1);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    v9 = Count - 1;
    if (Count < 1)
    {
      goto LABEL_14;
    }

    v10 = Count;
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        if (ValueAtIndex != a2)
        {
          break;
        }

        v11 = 1;
        if (v9 == i++)
        {
          goto LABEL_15;
        }
      }

      _CalCalendarItemRemoveRecurrence(a1, ValueAtIndex, 0);
    }

    if ((v11 & 1) == 0)
    {
LABEL_14:
      _CalCalendarItemAddRecurrence(a1, a2);
    }

LABEL_15:
    CFRelease(v7);
  }

  _CalCalendarItemRemoveAllExceptionDates(a1);
  _CalEventDeleteAllDetachedEvents(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveAllRecurrences(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveAllRecurrences(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalCalendarItemHasDirtyNotifiableAttributes(uint64_t a1)
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

uint64_t _CalCalendarItemClearDirtyAttributes(uint64_t a1)
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

void CalDatabaseRemoveAllCalendarItemsWithCalendarAndEntityType(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v4 = CalDatabaseCopyCalendarItemsWithCalendar(a1);
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        if (a3 == 2)
        {
          CalRemoveEventAndDetachedEvents(ValueAtIndex);
        }

        else
        {
          CalRemoveTask(ValueAtIndex);
        }
      }
    }

    CFRelease(v5);
  }
}

uint64_t CalDatabaseCopyCalendarItemsWithCalendar(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyCalendarItemsWithCalendar(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

CFMutableArrayRef _CalCalendarItemCopyRelatedResourceChanges(uint64_t a1)
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

CFMutableArrayRef CalCalendarItemCopyRelatedResourceChanges(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyRelatedResourceChanges(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t CalCalendarItemCopyStructuredData(uint64_t a1)
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

void CalCalendarItemSetStructuredData(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 68, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyLocalStructuredData(uint64_t a1)
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

void CalCalendarItemSetLocalStructuredData(uint64_t a1)
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

CFMutableArrayRef CalCalendarItemCopyConferences(uint64_t a1)
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
    v5 = CalToManyRelationCopyObjects(Property);
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

void CalCalendarItemAddConference(uint64_t a1, void *a2)
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

uint64_t _CalCalendarItemRemoveConference(uint64_t a1, void *a2)
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

void CalCalendarItemRemoveConference(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveConference(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemRemoveAllConferences(uint64_t a1)
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
    CalToManyRelationRemoveAllObjects(Property);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void *_CalCalendarItemSetError(uint64_t a1, const void *a2)
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

void CalCalendarItemSetError(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetError(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef _CalCalendarItemGetError(uint64_t a1)
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

CFTypeRef CalCalendarItemCopyError(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Error = _CalCalendarItemGetError(a1);
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

void CalCalendarItemSetErrorCodeAndUserInfo(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((CalCalendarItemHasErrorCodeAndMaybeUserInfo(a1, a2, 1, a3) & 1) == 0)
  {
    v6 = CalCopyDatabaseForEntity(a1);
    Error = CalDatabaseCreateError(v6);
    CalErrorSetCalendarItemErrorCode(Error, a2, a3);
    CalCalendarItemSetError(a1, Error);
    CFRelease(Error);

    CFRelease(v6);
  }
}

uint64_t CalCalendarItemHasErrorCodeAndMaybeUserInfo(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v7 = CalCalendarItemCopyError(a1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  ErrorType = CalErrorGetErrorType(v7);
  ErrorCode = CalErrorGetErrorCode(v8);
  v12 = ErrorType == 1 && ErrorCode == a2;
  if (v12 == 1 && a3 != 0)
  {
    v14 = CalErrorCopyUserInfo(v8);
    v15 = CalErrorDecodeUserInfo(v14);
    if (a4 | v15)
    {
      v12 = [a4 isEqual:v15];
    }

    else
    {
      v12 = 1;
    }
  }

  CFRelease(v8);
  return v12;
}

CFTypeRef CalDatabaseCopyCalendarItemWithUUID(os_unfair_lock_s *a1)
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

  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) < 1)
    {
      v8 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      v8 = CFRetain(ValueAtIndex);
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v8;
}

uint64_t __CalDatabaseCopyCalendarItemWithUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  v4 = MEMORY[0x1E69E9B38];

  return sqlite3_bind_text(v2, 1, CStringFromCFString, -1, v4);
}

uint64_t CalDatabaseCopyCalendarItemsWithUUIDs(os_unfair_lock_s *a1, const __CFArray *a2, const __CFArray *a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"WHERE UUID IN (");
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    do
    {
      if (--v8)
      {
        CFStringAppendFormat(Mutable, 0, @"?,");
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"?"));
      }
    }

    while (v8);
  }

  if (a3)
  {
    v9 = CFArrayGetCount(a3);
    if (v9 >= 1)
    {
      CFStringAppendFormat(Mutable, 0, @" AND calendar_id IN (");
      v10 = v9;
      do
      {
        if (--v10)
        {
          CFStringAppendFormat(Mutable, 0, @"?,");
        }

        else
        {
          CFStringAppendFormat(Mutable, 0, @"?"));
        }
      }

      while (v10);
    }
  }

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

  v14 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CFRelease(Mutable);
  return v14;
}

void __CalDatabaseCopyCalendarItemsWithUUIDs_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v4);
      v6 = *(a2 + 8);
      CStringFromCFString = CalCreateCStringFromCFString(ValueAtIndex);
      sqlite3_bind_text(v6, (v4++ + 1.0), CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
    }

    while (v4 < *(a1 + 32));
  }

  if (*(a1 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = CFArrayGetValueAtIndex(*(a1 + 56), v8);
      sqlite3_bind_int(*(a2 + 8), (v8 + 1.0 + *(a1 + 32)), [v9 intValue]);

      ++v8;
    }

    while (v8 < *(a1 + 48));
  }
}

uint64_t CalDatabaseCopyCalendarItemsWithCalendarFilter(os_unfair_lock_s *a1, int a2, void *a3)
{
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    CalDatabaseCopyCalendarItemsWithCalendarFilter_cold_1();
  }

  os_unfair_lock_lock(a1 + 20);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"WHERE entity_type = ?");
  if (a3)
  {
    v6 = _CalFilterCopyCalendarIDClauseForQuery(a3, @"calendar_id");
    if (v6)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @" AND %@", v6);
      CFRelease(v7);
    }
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

  v11 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

id CalDatabaseCopyCalendarItemUUIDs(os_unfair_lock_s *a1, int a2)
{
  if ((a2 + 1) > 4 || ((1 << (a2 + 1)) & 0x19) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<NSString *> *CalDatabaseCopyCalendarItemUUIDs(CalDatabaseRef, CalEntityType)"}];
    [v5 handleFailureInFunction:v6 file:@"CalCalendarItem.m" lineNumber:3256 description:{@"Invalid parameter not satisfying: %@", @"entityType == CalEventEntity || entityType == CalTaskEntity || entityType == CalUndefinedEntity"}];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
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
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"SELECT UUID FROM CalendarItem");
      v16 = MutableCopy;
      if (a2 != -1)
      {
        CFStringAppend(MutableCopy, @" WHERE entity_type = ?");
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v14)
        {
          if (*(*v14 + 104))
          {
            v17 = CPRecordStoreGetContext();
            if (v17)
            {
              os_unfair_lock_assert_owner(v17 + 20);
            }
          }
        }
      }

      v18 = CPSqliteConnectionStatementForSQL();
      CFRelease(v16);
      if (v18)
      {
        if (a2 != -1)
        {
          sqlite3_bind_int(v18[1], 1, a2);
        }

        if (CDBLockingAssertionsEnabled == 1)
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

        CPSqliteStatementSendResults();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v18)
          {
            v21 = **v18;
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

        CPSqliteStatementReset();
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v14)
        {
          if (*(*v14 + 104))
          {
            v23 = CPRecordStoreGetContext();
            if (v23)
            {
              os_unfair_lock_assert_owner(v23 + 20);
            }
          }
        }
      }

      CPSqliteDatabaseReleaseSqliteConnection();
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v24 = [v7 copy];

  return v24;
}

uint64_t __CalendarItemUUIDRowHandler(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = sqlite3_column_text(*(a1 + 8), 0);
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
      if (v6)
      {
        [v3 addObject:v6];
      }

      else
      {
        v10 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315138;
          v14 = v5;
          _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "Could not get uuid string from utf8 string = %s", &v13, 0xCu);
        }
      }
    }

    else
    {
      v9 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "Could not get uuid column text for sqlite statement", &v13, 2u);
      }
    }

    v8 = 0;
  }

  else
  {
    v7 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "Calendar item row handler has no uuid context. Aborting sqlite statement.", &v13, 2u);
    }

    v8 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CalDatabaseCopyCalendarItemsWithStoreID(os_unfair_lock_s *a1, int a2)
{
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    CalDatabaseCopyCalendarItemsWithStoreID_cold_1();
  }

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

  v6 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

uint64_t __CalDatabaseCopyCalendarItemsWithStoreID_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 32));
  v4 = *(a2 + 8);
  v5 = *(a1 + 36);

  return sqlite3_bind_int(v4, 2, v5);
}

uint64_t _CalDatabaseCopyCalendarItemsWithCalendar(uint64_t a1)
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

BOOL _CalDatabaseCalendarHasCalendarItemsWithEntityType(uint64_t a1, uint64_t a2, int a3)
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
  v8 = CDBLockingAssertionsEnabled;
  if (!Database)
  {
    v8 = 0;
  }

  if (a3 == 101)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    if (!*(Database + 104))
    {
      goto LABEL_18;
    }

    v9 = CPRecordStoreGetContext();
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    os_unfair_lock_assert_owner(v9 + 20);
    goto LABEL_18;
  }

  if (v8)
  {
    if (*(Database + 104))
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v10 = CPSqliteDatabaseStatementForReading();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = *(v10 + 8);
  if (v12)
  {
    if (a3 == 101)
    {
      v13 = 1;
    }

    else
    {
      sqlite3_bind_int(*(v10 + 8), 1, a3);
      v12 = *(v11 + 8);
      v13 = 2;
    }

    ID = CPRecordGetID();
    sqlite3_bind_int(v12, v13, ID);
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
      v16 = **v11;
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
  return v14;
}

uint64_t CalDatabaseGetCountOfCalendarItemsInStore(const void *a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = CFRetain(a1);
  }

  v6 = v5;
  Mutable = CFStringCreateMutable(0, 0);
  os_unfair_lock_lock(v6 + 20);
  RecordStore = _CalDatabaseGetRecordStore(v6);
  if (a2 == 101)
  {
    a2 = 0;
  }

  if (a3)
  {
    CFStringAppend(Mutable, @"JOIN Calendar ON calendar_id = Calendar.ROWID WHERE store_id = ?");
    if (a2 < 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  CFStringAppend(Mutable, @"WHERE 1=1");
  if (a2 > 0)
  {
LABEL_8:
    CFStringAppend(Mutable, @" AND entity_type = ?");
  }

LABEL_9:
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CountOfInstancesOfClassWithFilterAndBindBlock = CPRecordStoreGetCountOfInstancesOfClassWithFilterAndBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v6 + 20);
  }

  os_unfair_lock_unlock(v6 + 20);
  CFRelease(v6);
  CFRelease(Mutable);
  return CountOfInstancesOfClassWithFilterAndBindBlock & ~(CountOfInstancesOfClassWithFilterAndBindBlock >> 31);
}

uint64_t __CalDatabaseGetCountOfCalendarItemsInStore_block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = *(a2 + 8);
    ID = CPRecordGetID();
    result = sqlite3_bind_int(v5, 1, ID);
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a1 + 40);
  if (v8 >= 1)
  {
    v9 = *(a2 + 8);

    return sqlite3_bind_int(v9, v7, v8);
  }

  return result;
}

uint64_t CalDatabaseGetCountOfOriginalCalendarItemsInStore(os_unfair_lock_s *a1, uint64_t a2)
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
  if (!Database)
  {
    goto LABEL_34;
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

  v9 = CPSqliteDatabaseConnectionForReading();
  if (!v9)
  {
    goto LABEL_34;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v9)
    {
      if (*(*v9 + 104))
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
    v12 = 0;
    if (a2)
    {
      v13 = v11;
      v14 = *(v11 + 8);
      if (v14)
      {
        ID = CPRecordGetID();
        sqlite3_bind_int(v14, 1, ID);
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

        v12 = CPSqliteStatementIntegerResult();
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
    }
  }

  else
  {
LABEL_34:
    v12 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v12;
}

CFTypeRef CalDatabaseCopyEntityWithPropertyInCalendarOrStore(os_unfair_lock_s *a1, int a2, uint64_t a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = CalDatabaseCopyAllEntitiesWithPropertyInCalendarOrStore(a1, a2, a3, a4, a5, a6, a7, 1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (CFArrayGetCount(v7) < 1)
  {
    v10 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
    v10 = CFRetain(ValueAtIndex);
  }

  CFRelease(v8);
  return v10;
}

uint64_t CalDatabaseCopyAllEntitiesWithPropertyInCalendarOrStore(os_unfair_lock_s *cf, int a2, uint64_t a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = cf;
  if (!a5 && !a6)
  {
    if (cf)
    {
      CFRetain(cf);
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_5;
    }

    return 0;
  }

  v14 = CalCopyDatabaseForRecord();
  if (!v14)
  {
    return 0;
  }

  if (!a4)
  {
LABEL_13:
    CFRelease(v14);
    return 0;
  }

LABEL_5:
  CStringFromCFString = CalCreateCStringFromCFString(a4);
  if (!CStringFromCFString)
  {
    goto LABEL_13;
  }

  v16 = CStringFromCFString;
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    free(v16);
    CFRelease(v14);
    return 0;
  }

  v18 = SelectPrefix;
  CFStringAppendFormat(SelectPrefix, 0, @" WHERE");
  if (a2 != -1)
  {
    CFStringAppendFormat(v18, 0, @" entity_type = ? AND");
  }

  CFStringAppendFormat(v18, 0, @" %@ = ?", a3);
  if (a5)
  {
    v19 = @" AND calendar_id = ?";
LABEL_19:
    CFStringAppend(v18, v19);
    goto LABEL_20;
  }

  if (a6)
  {
    v19 = @" AND calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?)";
    goto LABEL_19;
  }

LABEL_20:
  if (a8)
  {
    CFStringAppend(v18, @" LIMIT 1");
  }

  os_unfair_lock_lock(v14 + 20);
  RecordStore = _CalDatabaseGetRecordStore(v14);
  v23 = RecordStore;
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
        v26 = CPRecordStoreGetContext();
        if (v26)
        {
          os_unfair_lock_assert_owner(v26 + 20);
        }
      }
    }
  }

  v27 = CPSqliteDatabaseStatementForReading();
  if (v27)
  {
    v28 = v27;
    if (a2 == -1)
    {
      v29 = 1;
    }

    else
    {
      sqlite3_bind_int(*(v27 + 8), 1, a2);
      v29 = 2;
    }

    sqlite3_bind_text(*(v28 + 8), v29, v16, -1, 0);
    if (a5 || a6)
    {
      v30 = *(v28 + 8);
      ID = CPRecordGetID();
      sqlite3_bind_int(v30, v29 + 1, ID);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v23)
      {
        v32 = CPRecordStoreGetContext();
        if (v32)
        {
          os_unfair_lock_assert_owner(v32 + 20);
        }
      }
    }

    v20 = CPRecordStoreProcessStatementWithPropertyIndices();
  }

  else
  {
    v20 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v14 + 20);
  }

  os_unfair_lock_unlock(v14 + 20);
  CFRelease(v18);
  free(v16);
  CFRelease(v14);
  return v20;
}

uint64_t CalDatabaseCopyCalendarItemsWithUniqueIdentifier(os_unfair_lock_s *a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  os_unfair_lock_lock(a1 + 20);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

uint64_t __CalDatabaseCopyCalendarItemsWithUniqueIdentifier_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  v4 = MEMORY[0x1E69E9B38];

  return sqlite3_bind_text(v2, 1, CStringFromCFString, -1, v4);
}

uint64_t _CompareAttendeeStringProperties(uint64_t a1)
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
  if (CDBLockingAssertionsEnabled == 1)
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

  v4 = CPRecordCopyProperty();
  if (!(v2 | v4))
  {
    return 1;
  }

  v5 = v4;
  if (v2 && v4)
  {
    v6 = CFStringGetLength(v2) >= 1 && CFStringGetLength(v5) >= 1 && CFStringCompare(v2, v5, 0) == kCFCompareEqualTo;
LABEL_22:
    CFRelease(v2);
    if (!v5)
    {
      return v6;
    }

    goto LABEL_19;
  }

  v6 = 0;
  if (v2)
  {
    goto LABEL_22;
  }

  if (v4)
  {
LABEL_19:
    CFRelease(v5);
  }

  return v6;
}

void CalMigrateTableFull(void *a1, const char **a2, uint64_t a3, const char **a4, const char **a5, const char **a6, const char **a7, const char **a8, int a9)
{
  v15 = CFStringCreateWithCStringNoCopy(0, *a2, 0x8000100u, *MEMORY[0x1E695E498]);
  v16 = v15;
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = v15;
  }

  if (a5)
  {
    v18 = CFStringCreateWithFormat(0, 0, @"%@Changes", v17);
    v19 = CFStringCreateWithFormat(0, 0, @"%@Changes", v16);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  CalMigrationDropIndexes(a1, a6);
  CalMigrationDropIndexes(a1, a7);
  CalMigrationDropTriggers(a1, a8);
  RenameTableToTemp(a1, v17);
  if (v18)
  {
    RenameTableToTemp(a1, v18);
  }

  CPRecordStoreCreateTablesForClass();
  MoveTableData(a1, v17, v16, a4, a9);
  if (a5)
  {
    MoveTableData(a1, v18, v19, a5, a9);
    DropTempTable(a1, v17);
    v17 = v18;
  }

  DropTempTable(a1, v17);
  CalMigrationCreateIndexes(a1, a2, a6, a7);
  CalMigrationCreateTriggers(a1, a2, a8);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  CFRelease(v16);
}

void CalMigrationDropIndexes(void *a1, const char **a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v5 = a2 + 5;
      do
      {
        v6 = CFStringCreateWithCString(0, v3, 0x600u);
        if (v6)
        {
          v7 = v6;
          v8 = CFStringCreateWithFormat(0, 0, @"DROP INDEX IF EXISTS %@;", v6);
          if (v8)
          {
            v9 = v8;
            CalPerformSQLWithConnection(a1, v8);
            CFRelease(v9);
          }

          CFRelease(v7);
        }

        v10 = *v5;
        v5 += 5;
        v3 = v10;
      }

      while (v10);
    }
  }
}

void CalMigrationDropTriggers(void *a1, const char **a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v5 = a2 + 4;
      do
      {
        v6 = CFStringCreateWithCString(0, v3, 0x600u);
        if (v6)
        {
          v7 = v6;
          v8 = CFStringCreateWithFormat(0, 0, @"DROP TRIGGER IF EXISTS %@;", v6);
          if (v8)
          {
            v9 = v8;
            CalPerformSQLWithConnection(a1, v8);
            CFRelease(v9);
          }

          CFRelease(v7);
        }

        v10 = *v5;
        v5 += 4;
        v3 = v10;
      }

      while (v10);
    }
  }
}

void RenameTableToTemp(void *a1, uint64_t a2)
{
  DropTempTable(a1, a2);
  v4 = CFStringCreateWithFormat(0, 0, @"ALTER TABLE %@ RENAME TO %@_;", a2, a2);
  if (v4)
  {
    v5 = v4;
    CalPerformSQLWithConnection(a1, v4);

    CFRelease(v5);
  }
}

void MoveTableData(void *a1, uint64_t a2, uint64_t a3, const char **a4, int a5)
{
  Mutable = CFStringCreateMutable(0, 0);
  v8 = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"ROWID");
  CFStringAppend(v8, @"ROWID");
  v9 = *a4;
  if (*a4)
  {
    v10 = 0;
    v11 = 1;
    v12 = a4;
    v38 = a5;
    while (1)
    {
      v13 = CFStringCreateWithCString(0, v9, 0x600u);
      if (*(v12 + 3) == -1)
      {
        CFStringAppend(v8, @", ");
        CFStringAppend(v8, v13);
        if (*(v12 + 2) > a5 || (v14 = *(v12 + 3), v14 != -1) && v14 < a5)
        {
          if (!v12[2])
          {
            goto LABEL_30;
          }

          if (!v10)
          {
            v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (*a4)
            {
              v15 = a4 + 2;
              do
              {
                v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v17 = CFNumberCreate(0, kCFNumberIntType, v15 - 1);
                CFDictionaryAddValue(v16, @"firstVersion", v17);
                CFRelease(v17);
                if (*(v15 - 1) != -1)
                {
                  v18 = CFNumberCreate(0, kCFNumberIntType, v15 - 4);
                  CFDictionaryAddValue(v16, @"lastVersion", v18);
                  CFRelease(v18);
                }

                if (*v15)
                {
                  v19 = CFStringCreateWithCString(0, *v15, 0x600u);
                  CFDictionaryAddValue(v16, @"oldName", v19);
                  CFRelease(v19);
                }

                v20 = v15[1];
                if (v20)
                {
                  v21 = CFStringCreateWithCString(0, v20, 0x600u);
                  CFDictionaryAddValue(v16, @"defaultText", v21);
                  CFRelease(v21);
                }

                v22 = CFStringCreateWithCString(0, *(v15 - 2), 0x600u);
                CFDictionaryAddValue(v10, v22, v16);
                CFRelease(v22);
                CFRelease(v16);
                v23 = v15[2];
                v15 += 4;
              }

              while (v23);
            }
          }

          v24 = CFStringCreateWithCString(0, v12[2], 0x600u);
          v25 = -1;
          valuePtr = -1;
          Value = CFDictionaryGetValue(v10, v24);
          if (Value && (v27 = CFDictionaryGetValue(Value, @"firstVersion")) != 0)
          {
            CFNumberGetValue(v27, kCFNumberIntType, &valuePtr);
            v28 = valuePtr;
          }

          else
          {
            v28 = -1;
          }

          v40 = -1;
          v29 = CFDictionaryGetValue(v10, v24);
          if (v29)
          {
            v30 = CFDictionaryGetValue(v29, @"lastVersion");
            if (v30)
            {
              CFNumberGetValue(v30, kCFNumberIntType, &v40);
              v25 = v40;
            }
          }

          v31 = v28 <= v38;
          a5 = v38;
          if (v31 && (v25 == -1 || v25 >= v38))
          {
            v33 = Mutable;
          }

          else
          {
            CFRelease(v24);
LABEL_30:
            v32 = v12[3];
            if (v32)
            {
              v24 = CFStringCreateWithCString(0, v32, 0x600u);
            }

            else
            {
              v24 = @"NULL";
            }

            v33 = Mutable;
          }

          CFStringAppend(v33, @", ");
          CFStringAppend(Mutable, v24);
          CFRelease(v24);
          goto LABEL_36;
        }

        CFStringAppend(Mutable, @", ");
        CFStringAppend(Mutable, v13);
      }

LABEL_36:
      CFRelease(v13);
      v12 = &a4[4 * v11++];
      v9 = *v12;
      if (!*v12)
      {
        goto LABEL_40;
      }
    }
  }

  v10 = 0;
LABEL_40:
  v34 = CFStringCreateWithFormat(0, 0, @"INSERT INTO %@ (%@) SELECT %@ FROM %@_;", a3, v8, Mutable, a2);
  CFRelease(Mutable);
  CFRelease(v8);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v34)
  {
    CalPerformSQLWithConnection(a1, v34);
    CFRelease(v34);
  }
}

void DropTempTable(void *a1, uint64_t a2)
{
  v3 = CFStringCreateWithFormat(0, 0, @"DROP TABLE IF EXISTS %@_;", a2);
  if (v3)
  {
    v4 = v3;
    CalPerformSQLWithConnection(a1, v3);

    CFRelease(v4);
  }
}

void CalMigrationCreateIndexes(void *a1, const char **a2, const char **a3, const char **a4)
{
  v8 = CFStringCreateWithCStringNoCopy(0, *a2, 0x8000100u, *MEMORY[0x1E695E498]);
  _CalMigrationCreateIndexes(a1, v8, a3);
  if (a4)
  {
    v7 = [(__CFString *)v8 stringByAppendingString:@"Changes"];
    _CalMigrationCreateIndexes(a1, v7, a4);
  }
}

void CalMigrationCreateTriggers(void *a1, const char **a2, const char **a3)
{
  v5 = CFStringCreateWithCStringNoCopy(0, *a2, 0x8000100u, *MEMORY[0x1E695E498]);
  if (a3)
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = a3 + 2;
      do
      {
        if (*(v7 - 1) == -1 && !*v7)
        {
          v8 = CFStringCreateWithCString(0, v6, 0x600u);
          v9 = CFStringCreateWithCString(0, v7[1], 0x600u);
          v10 = CFStringCreateWithFormat(0, 0, @"CREATE TRIGGER %@ %@ ON %@\nBEGIN\n%@\nEND;", v8, @"AFTER DELETE", v5, v9);
          if (v10)
          {
            v11 = v10;
            CalPerformSQLWithConnection(a1, v10);
            CFRelease(v11);
          }

          CFRelease(v8);
          CFRelease(v9);
        }

        v6 = v7[2];
        v7 += 4;
      }

      while (v6);
    }
  }

  CFRelease(v5);
}

void CalMigrateTableFull2(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5, const char **a6, void *a7, void *a8, const char **a9, const char **a10, const char **a11, int a12)
{
  v27 = a4;
  v28 = a7;
  v18 = a8;
  v19 = *a2;
  v20 = *MEMORY[0x1E695E498];
  v21 = a5;
  v22 = CFStringCreateWithCStringNoCopy(0, v19, 0x8000100u, v20);
  v23 = v22;
  if (!a3)
  {
    a3 = v22;
  }

  if (a6)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"%@Changes", a3, v27);
    v25 = CFStringCreateWithFormat(0, 0, @"%@Changes", v23);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  CalMigrationDropIndexes(a1, a9);
  CalMigrationDropIndexes(a1, a10);
  CalMigrationDropTriggers(a1, a11);
  RenameTableToTemp(a1, a3);
  if (v24)
  {
    RenameTableToTemp(a1, v24);
  }

  v26 = *(a2 + 56);
  CPRecordStoreCreateTablesForClass();
  MoveTableData2(a1, a3, v23, v27, v21, a12);

  if (a6)
  {
    MoveTableData2(a1, v24, v25, a6, v28, a12);
  }

  if (v18)
  {
    v18[2](v18);
  }

  DropTempTable(a1, a3);
  if (a6)
  {
    DropTempTable(a1, v24);
  }

  CalMigrationCreateIndexes(a1, a2, a9, a10);
  CalMigrationCreateTriggers(a1, a2, a11);
  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  CFRelease(v23);
}

void MoveTableData2(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4, void *a5, int a6)
{
  v47 = a5;
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"ROWID");
  v11 = *a4;
  if (*a4)
  {
    v12 = a4 + 6;
    do
    {
      if (*(v12 - 9) <= a6)
      {
        v13 = *(v12 - 8);
        if (v13 == -1 || v13 >= a6)
        {
          v15 = CFStringCreateWithCString(0, v11, 0x600u);
          CFStringAppendFormat(Mutable, 0, @", %@", v15);
          CFRelease(v15);
        }
      }

      v16 = *v12;
      v12 += 6;
      v11 = v16;
    }

    while (v16);
  }

  v48 = CFStringCreateWithFormat(0, 0, @"SELECT %@ FROM %@_;", Mutable, a2);
  CFRelease(Mutable);
  v17 = CFStringCreateMutable(0, 0);
  v18 = CFStringCreateMutable(0, 0);
  CFStringAppend(v17, @"ROWID");
  CFStringAppend(v18, @"?");
  v19 = *a4;
  if (*a4)
  {
    v20 = *MEMORY[0x1E695E498];
    v21 = a4 + 6;
    do
    {
      if (*(v21 - 8) == -1)
      {
        v22 = CFStringCreateWithCStringNoCopy(0, v19, 0x600u, v20);
        CFStringAppendFormat(v17, 0, @", %@", v22);
        CFStringAppend(v18, @", ?");
        CFRelease(v22);
      }

      v23 = *v21;
      v21 += 6;
      v19 = v23;
    }

    while (v23);
  }

  v24 = CFStringCreateWithFormat(0, 0, @"INSERT INTO %@ (%@) VALUES(%@);", a3, v17, v18);
  CFRelease(v17);
  CFRelease(v18);
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

  if (CPSqliteConnectionStatementForSQL())
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
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

    v27 = CPSqliteConnectionStatementForSQL();
    if (v27)
    {
      v44 = v27;
      v46 = v24;
      v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (*a4)
      {
        v29 = a4 + 3;
        v30 = MEMORY[0x1E695E9D8];
        v31 = MEMORY[0x1E695E9E8];
        do
        {
          v32 = CFDictionaryCreateMutable(0, 0, v30, v31);
          v33 = CFNumberCreate(0, kCFNumberIntType, v29 - 12);
          CFDictionaryAddValue(v32, @"firstVersion", v33);
          CFRelease(v33);
          if (*(v29 - 2) != -1)
          {
            v34 = CFNumberCreate(0, kCFNumberIntType, v29 - 1);
            CFDictionaryAddValue(v32, @"lastVersion", v34);
            CFRelease(v34);
          }

          if (*v29)
          {
            v35 = CFStringCreateWithCString(0, *v29, 0x600u);
            CFDictionaryAddValue(v32, @"oldName", v35);
            CFRelease(v35);
          }

          v36 = v29[1];
          if (v36)
          {
            v37 = CFStringCreateWithCString(0, v36, 0x600u);
            CFDictionaryAddValue(v32, @"defaultText", v37);
            CFRelease(v37);
          }

          v38 = CFStringCreateWithCString(0, *(v29 - 3), 0x600u);
          CFDictionaryAddValue(v28, v38, v32);
          CFRelease(v38);
          CFRelease(v32);
          v39 = v29[3];
          v29 += 6;
        }

        while (v39);
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v44)
        {
          v40 = **v44;
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

      CPSqliteStatementSendResults();
      v24 = v46;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v44)
        {
          v42 = **v44;
          if (v42)
          {
            if (*(v42 + 104))
            {
              v43 = CPRecordStoreGetContext();
              if (v43)
              {
                os_unfair_lock_assert_owner(v43 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
      CFRelease(v28);
    }
  }

  CFRelease(v48);
  CFRelease(v24);
}

void CalMigrateTable(void *a1, uint64_t a2, uint64_t a3, const char **a4, int a5)
{
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  MoveTableData(a1, v6, a3, a4, a5);

  DropTempTable(a1, v6);
}

void _CalMigrationCreateIndexes(void *a1, uint64_t a2, const char **a3)
{
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v6 = a3 + 5;
      do
      {
        if (*(v6 - 6) == -1)
        {
          v7 = CFStringCreateWithCString(0, v4, 0x600u);
          v8 = CFStringCreateWithCString(0, *(v6 - 2), 0x600u);
          v9 = *(v6 - 1);
          if (v9)
          {
            v10 = CFStringCreateWithCString(0, v9, 0x600u);
          }

          else
          {
            v10 = CFRetain(&stru_1F59E24D8);
          }

          v11 = v10;
          v12 = @"UNIQUE ";
          if (!*(v6 - 32))
          {
            v12 = &stru_1F59E24D8;
          }

          if (*(v6 - 1))
          {
            v13 = @" WHERE ";
          }

          else
          {
            v13 = &stru_1F59E24D8;
          }

          v14 = CFStringCreateWithFormat(0, 0, @"CREATE %@INDEX %@ on %@(%@)%@%@;", v12, v7, a2, v8, v13, v10);
          if (v14)
          {
            v15 = v14;
            CalPerformSQLWithConnection(a1, v14);
            CFRelease(v15);
          }

          CFRelease(v7);
          CFRelease(v8);
          CFRelease(v11);
        }

        v16 = *v6;
        v6 += 5;
        v4 = v16;
      }

      while (v16);
    }
  }
}

uint64_t MigrateRow(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = sqlite3_column_count(*(a1 + 8));
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = *MEMORY[0x1E695E738];
    do
    {
      v9 = sqlite3_column_name(*(a1 + 8), v7);
      v10 = CFStringCreateWithCString(0, v9, 0x8000100u);
      v11 = sqlite3_column_type(*(a1 + 8), v7);
      if (v11 <= 2)
      {
        if (v11 == 1)
        {
          LODWORD(valuePtr) = sqlite3_column_int(*(a1 + 8), v7);
          v13 = kCFNumberIntType;
LABEL_16:
          v15 = CFNumberCreate(0, v13, &valuePtr);
LABEL_17:
          v12 = v15;
LABEL_18:
          if (v12)
          {
            CFDictionarySetValue(Mutable, v10, v12);
            CFRelease(v12);
          }

          goto LABEL_20;
        }

        if (v11 == 2)
        {
          valuePtr = sqlite3_column_double(*(a1 + 8), v7);
          v13 = kCFNumberDoubleType;
          goto LABEL_16;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v14 = sqlite3_column_text(*(a1 + 8), v7);
          v12 = v8;
          if (v14)
          {
            v15 = CFStringCreateWithCString(0, v14, 0x8000100u);
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        if (v11 == 4)
        {
          v16 = sqlite3_column_bytes(*(a1 + 8), v7);
          v17 = sqlite3_column_blob(*(a1 + 8), v7);
          v12 = v8;
          if (v17)
          {
            v15 = CFDataCreate(0, v17, v16);
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        v12 = v8;
        if (v11 == 5)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      CFRelease(v10);
      ++v7;
    }

    while (v6 != v7);
  }

  v18 = *(*(a2 + 24) + 8);
  v19 = sqlite3_column_int(*(a1 + 8), 0);
  sqlite3_bind_int(v18, 1, v19);
  v20 = *(a2 + 8);
  v21 = *v20;
  if (*v20)
  {
    v22 = *MEMORY[0x1E695E498];
    v23 = 2;
    v24 = 6;
    v25 = *(a2 + 8);
    while (*(v25 + 4) != -1)
    {
LABEL_50:
      v25 = &v20[v24];
      v21 = v20[v24];
      v24 += 6;
      if (!v21)
      {
        goto LABEL_61;
      }
    }

    v26 = CFStringCreateWithCStringNoCopy(0, v21, 0x8000100u, v22);
    Value = CFDictionaryGetValue(Mutable, v26);
    if (Value)
    {
      v28 = Value;
LABEL_26:
      CFRetain(v28);
      goto LABEL_27;
    }

    v33 = *(a2 + 40);
    if (v33)
    {
      v28 = (*(v33 + 16))(v33, v26, Mutable);
      if (v28)
      {
LABEL_27:
        v29 = CFGetTypeID(v28);
        if (v29 == CFNumberGetTypeID())
        {
          v30 = *(v25 + 2);
          if (v30 == 1)
          {
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(v28, kCFNumberIntType, &valuePtr);
            sqlite3_bind_int(*(*(a2 + 24) + 8), v23, SLODWORD(valuePtr));
          }

          else if (v30 == 2)
          {
            valuePtr = 0.0;
            CFNumberGetValue(v28, kCFNumberDoubleType, &valuePtr);
            sqlite3_bind_double(*(*(a2 + 24) + 8), v23, valuePtr);
          }

          goto LABEL_48;
        }

        v31 = CFGetTypeID(v28);
        if (v31 == CFStringGetTypeID())
        {
          v32 = _CPCreateUTF8StringFromCFString();
          sqlite3_bind_text(*(*(a2 + 24) + 8), v23, v32, -1, MEMORY[0x1E69E9B38]);
LABEL_48:
          CFRelease(v28);
          goto LABEL_49;
        }

        v37 = CFGetTypeID(v28);
        if (v37 == CFDataGetTypeID())
        {
          BytePtr = CFDataGetBytePtr(v28);
          Length = CFDataGetLength(v28);
          if (Length == Length)
          {
            sqlite3_bind_blob(*(*(a2 + 24) + 8), v23, BytePtr, Length, 0);
            goto LABEL_48;
          }
        }

        else
        {
          v40 = CFGetTypeID(v28);
          if (v40 != CFNullGetTypeID())
          {
            goto LABEL_48;
          }
        }

        sqlite3_bind_null(*(*(a2 + 24) + 8), v23);
        goto LABEL_48;
      }
    }

    v34 = v25[3];
    if (!v34)
    {
      goto LABEL_40;
    }

    if (*(v25 + 3) > *(a2 + 16))
    {
      v35 = CFStringCreateWithCStringNoCopy(0, v34, 0x8000100u, v22);
      v28 = CFDictionaryGetValue(Mutable, v35);
      CFRelease(v35);
      if (v28)
      {
        goto LABEL_26;
      }

      if (!v25[3])
      {
        goto LABEL_40;
      }
    }

    if (*(v25 + 3) <= *(a2 + 16))
    {
LABEL_40:
      v36 = v25[4];
      if (v36)
      {
        sqlite3_bind_text(*(*(a2 + 24) + 8), v23, v36, -1, 0);
        goto LABEL_49;
      }

      v41 = *(v25 + 5);
      v42 = *(v25 + 2);
      if (fabs(v41) >= 2.22044605e-16)
      {
        v43 = *(*(a2 + 24) + 8);
        if (v42 != 1)
        {
          sqlite3_bind_double(v43, v23, v41);
          goto LABEL_49;
        }

        v45 = v41;
        v44 = v23;
        goto LABEL_58;
      }

      if ((v42 - 3) < 2)
      {
        sqlite3_bind_null(*(*(a2 + 24) + 8), v23);
        goto LABEL_49;
      }

      if ((v42 - 1) <= 1)
      {
        v43 = *(*(a2 + 24) + 8);
        v44 = v23;
        v45 = 0;
LABEL_58:
        sqlite3_bind_int(v43, v44, v45);
      }
    }

LABEL_49:
    CFRelease(v26);
    ++v23;
    v20 = *(a2 + 8);
    goto LABEL_50;
  }

LABEL_61:
  v46 = *(a2 + 24);
  if (CDBLockingAssertionsEnabled == 1 && v46 != 0)
  {
    if (*v46)
    {
      v48 = **v46;
      if (v48)
      {
        if (*(v48 + 104))
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
  v50 = *(a2 + 24);
  if (CDBLockingAssertionsEnabled == 1 && v50 != 0)
  {
    if (*v50)
    {
      v52 = **v50;
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

  CPSqliteStatementReset();
  CFRelease(Mutable);
  return 0;
}

void _CalDatabaseRestoreNotification()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"kCalDatabaseRestoredNotification" object:0];
}

uint64_t CalDatabaseBackupDatabaseFile(os_unfair_lock_s *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_DEFAULT, "Beginning backup of database file to %@", &v9, 0xCu);
  }

  v5 = CalDatabaseBackupCore(a1, v3, 0);
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    LODWORD(v10) = v5;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_DEFAULT, "Finished backup of database file with result = %{BOOL}d", &v9, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CalDatabaseBackupCore(os_unfair_lock_s *a1, void *a2, int a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!CalDatabaseValidateBackupDestinationURLForDatabaseFile(v4))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v62 = a3;
  if (a3)
  {
    v5 = [v4 URLByDeletingLastPathComponent];
    v63 = [MEMORY[0x1E6992F10] attachmentContainerWithBaseURL:v5];
    v6 = CalDatabaseValidateBackupDestinationURLForDatabaseFile(v63);

    if (!v6)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v63 = 0;
  }

  CalDatabaseLockForThread(a1);
  v8 = v4;
  v61 = v8;
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
      v14 = CPRecordStoreGetContext();
      if (v14)
      {
        os_unfair_lock_assert_owner(v14 + 20);
      }
    }
  }

  v60 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (!v60)
  {
    v37 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_ERROR, "Failed to open database connection for source database while attempting to backup", buf, 2u);
    }

    v36 = 0;
    goto LABEL_60;
  }

  if (!__CalDatabaseBeginReadTransaction(a1, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabaseBackup.m:224"))
  {
    v38 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_ERROR, "Failed to start transaction while attempting to backup", buf, 2u);
    }

    v36 = 0;
    goto LABEL_54;
  }

  if (!v62)
  {
    goto LABEL_35;
  }

  v59 = [v8 URLByDeletingLastPathComponent];
  v71 = 0u;
  v72 = 0u;
  *ppDb = 0u;
  v70 = 0u;
  obj = _CalDatabaseCopyOfAllAttachmentFilesInStore(a1);
  v15 = [obj countByEnumeratingWithState:ppDb objects:buf count:16];
  if (!v15)
  {
    goto LABEL_34;
  }

  v16 = *v70;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v70 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(ppDb[1] + i);
      v19 = _CalAttachmentFileGetLocalRelativePath(v18);
      if (v19)
      {
        v20 = _CalAttachmentFileCopyLocalURL(v18);
        v21 = [v59 URLByAppendingPathComponent:v19];
        v22 = [v21 URLByDeletingLastPathComponent];
        v23 = [v22 path];
        v24 = CPFileBuildDirectoriesToPath();

        if (v24)
        {
          v25 = [MEMORY[0x1E696AC08] defaultManager];
          v68 = 0;
          v26 = [v25 copyItemAtURL:v20 toURL:v21 error:&v68];
          v27 = v68;

          if (v26)
          {

            continue;
          }

          v41 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v73 = 138412546;
            v74 = v20;
            v75 = 2112;
            v76 = v27;
            _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_ERROR, "Failed to copy attachment (%@): %@", v73, 0x16u);
          }
        }

        else
        {
          v40 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v73 = 138412290;
            v74 = v21;
            _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_ERROR, "Failed to create a directory for copying attachment: %@.", v73, 0xCu);
          }
        }

        v36 = 0;
        goto LABEL_53;
      }
    }

    v15 = [obj countByEnumeratingWithState:ppDb objects:buf count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v8 = v61;
LABEL_35:
  v28 = v8;
  ppDb[0] = 0;
  v29 = [v28 path];
  v30 = v29;
  v31 = sqlite3_open_v2([v29 UTF8String], ppDb, 6, 0);

  if (v31)
  {
    v32 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v33 = ppDb[0];
      v34 = v32;
      v35 = sqlite3_errmsg(v33);
      *buf = 136446210;
      v78 = v35;
      _os_log_impl(&dword_1DEBB1000, v34, OS_LOG_TYPE_ERROR, "Failed to open destination database for backup: %{public}s", buf, 0xCu);
    }

    sqlite3_close(ppDb[0]);
    v36 = 0;
  }

  else
  {
    v39 = _CalDatabaseBackupDatabaseFileWithSourceAndDestinationConnections(v60[1], ppDb[0]);
    v36 = v39 & _CalDatabaseVacuumAndCloseDBConnection(ppDb[0], v28, 1);
  }

LABEL_53:
  v8 = v61;
  __CalDatabaseRollbackTransaction(a1, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabaseBackup.m:241");
LABEL_54:
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v60)
    {
      if (*(*v60 + 13))
      {
        v42 = CPRecordStoreGetContext();
        if (v42)
        {
          os_unfair_lock_assert_owner(v42 + 20);
        }
      }
    }
  }

  CPSqliteDatabaseReleaseSqliteConnection();
LABEL_60:

  CalDatabaseUnlockForThread(a1);
  if (v36)
  {
    v7 = 1;
    goto LABEL_79;
  }

  v43 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v73 = 0;
    _os_log_impl(&dword_1DEBB1000, v43, OS_LOG_TYPE_DEFAULT, "Cleaning up failed backup database output", v73, 2u);
  }

  v44 = [MEMORY[0x1E696AC08] defaultManager];
  v45 = [v61 path];
  if ([v44 fileExistsAtPath:v45])
  {
    v46 = [MEMORY[0x1E696AC08] defaultManager];
    v67 = 0;
    v47 = [v46 removeItemAtURL:v61 error:&v67];
    v48 = v67;

    if ((v47 & 1) == 0)
    {
      v49 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v73 = 138412290;
        v74 = v48;
        _os_log_impl(&dword_1DEBB1000, v49, OS_LOG_TYPE_ERROR, "Failed to clean up backup database output: %@", v73, 0xCu);
      }
    }
  }

  else
  {

    v48 = 0;
  }

  v66 = 0;
  if (v62)
  {
    v50 = [MEMORY[0x1E696AC08] defaultManager];
    v51 = [v63 path];
    if ([v50 fileExistsAtPath:v51 isDirectory:&v66] && (v66 & 1) != 0)
    {
      v52 = [MEMORY[0x1E696AC08] defaultManager];
      v65 = v48;
      v53 = [v52 removeItemAtURL:v63 error:&v65];
      v54 = v65;

      if ((v53 & 1) == 0)
      {
        v55 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v73 = 138412290;
          v74 = v54;
          _os_log_impl(&dword_1DEBB1000, v55, OS_LOG_TYPE_ERROR, "Failed to clean up backup attachments output: %@", v73, 0xCu);
        }
      }

      v48 = v54;
    }

    else
    {
    }
  }

LABEL_78:
  v7 = 0;
LABEL_79:

LABEL_80:
  v56 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1DEBE56F0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1DEBE5414);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t CalDatabaseBackupDatabaseFileAndAttachments(os_unfair_lock_s *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_DEFAULT, "Beginning backup of database file and attachments to %@", &v9, 0xCu);
  }

  v5 = CalDatabaseBackupCore(a1, v3, 1);
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    LODWORD(v10) = v5;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_DEFAULT, "Finished backup of database file and attachments with result = %{BOOL}d", &v9, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CalDatabaseBackupToICBU(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v74 = a3;
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v95 = v5;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_DEFAULT, "Beginning ICBU backup to %@", buf, 0xCu);
  }

  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v15 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v92 = 0;
      v16 = "Nil path given for backup destination";
      v17 = v15;
      v18 = 2;
LABEL_15:
      _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, v16, v92, v18);
    }

LABEL_16:

    goto LABEL_23;
  }

  v72 = a1;
  if (([v7 isFileURL] & 1) == 0)
  {
    v19 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v92 = 138412290;
      *&v92[4] = v8;
      v16 = "Backup destination URL is not a file URL: %@";
      v17 = v19;
      v18 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v77 = 0;
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v77];

  if ((v11 & 1) == 0)
  {
    v20 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v92 = 138412290;
      *&v92[4] = v8;
      v21 = "Backup destination URL does not exist: %@";
LABEL_21:
      _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, v21, v92, 0xCu);
    }

LABEL_22:

    goto LABEL_23;
  }

  if ((v77 & 1) == 0)
  {
    v20 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v92 = 138412290;
      *&v92[4] = v8;
      v21 = "Backup destination URL is not a directory: %@";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  *v92 = 0;
  *&v92[8] = v92;
  *&v92[16] = 0x2020000000;
  v93 = 0;
  v78 = MEMORY[0x1E69E9820];
  v79 = 3221225472;
  v80 = __CalDatabaseValidateBackupDestinationURLForICBU_block_invoke;
  v81 = &unk_1E86892B0;
  v82 = v92;
  v12 = [v9 enumeratorAtURL:v8 includingPropertiesForKeys:0 options:0 errorHandler:&v78];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v13 = v12;
  if ([v13 countByEnumeratingWithState:&v84 objects:buf count:16])
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v90 = 138412290;
      v91 = v8;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Destination directory is not empty: %@", v90, 0xCu);
    }

    _Block_object_dispose(v92, 8);
    goto LABEL_23;
  }

  v25 = *(*&v92[8] + 24);
  _Block_object_dispose(v92, 8);

  if (v25)
  {
LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  v71 = [v8 URLByAppendingPathComponent:@"Calendar.sqlitedb"];
  if (!CalDatabaseBackupDatabaseFileAndAttachments(a1, v71))
  {
    v49 = 0;
LABEL_57:
    v62 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v62, OS_LOG_TYPE_DEFAULT, "Cleaning up failed backup output", buf, 2u);
    }

    v63 = [MEMORY[0x1E696AC08] defaultManager];
    v64 = [v8 path];
    if ([v63 fileExistsAtPath:v64])
    {
      v65 = [MEMORY[0x1E696AC08] defaultManager];
      v75 = v49;
      v66 = [v65 removeItemAtURL:v8 error:&v75];
      v67 = v75;

      if ((v66 & 1) == 0)
      {
        v68 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v95 = v67;
          _os_log_impl(&dword_1DEBB1000, v68, OS_LOG_TYPE_ERROR, "Failed to clean up backup output: %@", buf, 0xCu);
        }
      }

      v22 = 0;
      v49 = v67;
    }

    else
    {

      v22 = 0;
    }

    goto LABEL_65;
  }

  v26 = v74;
  v27 = CalDatabaseCopySubscribedCalendarStore(a1);
  cf = v27;
  if (v27)
  {
    v28 = CalStoreCopyCalendars(v27);
    v73 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[__CFArray count](v28, "count")}];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v29 = v28;
    v30 = [(__CFArray *)v29 countByEnumeratingWithState:&v84 objects:buf count:16];
    if (v30)
    {
      v31 = *v85;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v85 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v84 + 1) + 8 * i);
          if (!CalCalendarIsHolidaySubscribedCalendar(v33))
          {
            v34 = CalCalendarCopySubCalAccountID(v33);
            v35 = [v26 accountWithIdentifier:{v34, cf, v71}];
            if (v35)
            {
              v36 = [v73 objectForKeyedSubscript:v34];
              v37 = v36 == 0;

              if (v37)
              {
                v44 = objc_opt_new();
                v45 = CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup();
                v78 = MEMORY[0x1E69E9820];
                v79 = 3221225472;
                v80 = __CalDatabaseBackupLocalSubscribedAccountInfos_block_invoke;
                v81 = &unk_1E86892D8;
                v82 = v35;
                v83 = v44;
                v46 = v44;
                [v45 enumerateKeysAndObjectsUsingBlock:&v78];

                v47 = [v46 copy];
                [v73 setObject:v47 forKeyedSubscript:v34];
              }

              else
              {
                v38 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  v39 = v38;
                  UID = CalCalendarGetUID();
                  *v92 = 138543618;
                  *&v92[4] = v34;
                  *&v92[12] = 1024;
                  *&v92[14] = UID;
                  _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_ERROR, "Multiple local subscribed calendar accounts have the same account identifier (%{public}@). This one (ROWID=%d) will not be included in the Info.plist for backup", v92, 0x12u);
                }
              }
            }

            else
            {
              v41 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                v42 = v41;
                v43 = CalCalendarGetUID();
                *v92 = 67109378;
                *&v92[4] = v43;
                *&v92[8] = 2114;
                *&v92[10] = v34;
                _os_log_impl(&dword_1DEBB1000, v42, OS_LOG_TYPE_ERROR, "Account not found for subscribed calendar (ROWID=%d): %{public}@. Will not be included in Info.plist for backup", v92, 0x12u);
              }
            }
          }
        }

        v30 = [(__CFArray *)v29 countByEnumeratingWithState:&v84 objects:buf count:16];
      }

      while (v30);
    }

    CFRelease(cf);
    v48 = [v73 copy];
  }

  else
  {
    v48 = 0;
  }

  v50 = CalDatabaseGetPreferences(v72);
  v51 = [v50 get_defaultCalendarDatabaseID];
  v52 = MEMORY[0x1E695E0F8];
  v53 = MEMORY[0x1E695E0F8];
  if (!v51)
  {
    v53 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v54 = [v50 get_defaultCalendarID];
    [v53 setObject:v54 forKeyedSubscript:@"defaultCalendarID"];

    v55 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v50, "get_defaultCalendarStoreUID")}];
    [v53 setObject:v55 forKeyedSubscript:@"defaultCalendarStoreUID"];
  }

  v89[0] = @"3.0";
  v88[0] = @"version";
  v88[1] = @"date";
  v56 = [MEMORY[0x1E695DF00] date];
  v89[1] = v56;
  if (v48)
  {
    v57 = v48;
  }

  else
  {
    v57 = v52;
  }

  v88[2] = @"LocalSubscribedCalendarAccounts";
  v88[3] = @"preferences";
  v89[2] = v57;
  v89[3] = v53;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:{4, cf}];

  v59 = [v8 URLByAppendingPathComponent:@"Info.plist"];
  v76 = 0;
  v60 = [v58 writeToURL:v59 error:&v76];
  v49 = v76;
  if ((v60 & 1) == 0)
  {
    v61 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v95 = v49;
      _os_log_impl(&dword_1DEBB1000, v61, OS_LOG_TYPE_ERROR, "Failed to create destination .icbu Info.plist file: %@", buf, 0xCu);
    }

    goto LABEL_57;
  }

  v22 = 1;
LABEL_65:
  v69 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v95) = v22;
    _os_log_impl(&dword_1DEBB1000, v69, OS_LOG_TYPE_DEFAULT, "Finished ICBU backup with result = %{BOOL}d", buf, 8u);
  }

LABEL_24:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t CalDatabaseRestoreFromBackupDatabaseFile(uint64_t a1, void *a2, void *a3, int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_DEFAULT, "Beginning restore of database file from %@", &v15, 0xCu);
  }

  if (v8)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  v11 = CalDatabaseRestoreDatabaseCore(a1, v7, 0, v8, v10, a4);
  v12 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109120;
    LODWORD(v16) = v11;
    _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_DEFAULT, "Finished restore of database file with result = %{BOOL}d", &v15, 8u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t CalDatabaseRestoreDatabaseCore(uint64_t a1, void *a2, void *a3, void *a4, char a5, int *a6)
{
  v208 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v177 = a3;
  v178 = a4;
  v10 = v9;
  v11 = v10;
  v182 = v10;
  if (!v10)
  {
    v17 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(buf) = 0;
    v18 = "Nil path given for restore database";
    v19 = v17;
    v20 = 2;
LABEL_11:
    _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_ERROR, v18, &buf, v20);
    goto LABEL_12;
  }

  if (([v10 isFileURL] & 1) == 0)
  {
    v21 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    v18 = "Restore database backup URL is not a file URL: %@";
    v19 = v21;
    v20 = 12;
    goto LABEL_11;
  }

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(ppDb[0]) = 0;
  v13 = [v182 path];
  v14 = [v12 fileExistsAtPath:v13 isDirectory:ppDb];

  if ((v14 & 1) == 0)
  {
    v15 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v182;
      v16 = "Restore database backup URL is not an existing file: %@";
      goto LABEL_15;
    }

LABEL_16:

    v22 = 0;
    v11 = v182;
    goto LABEL_17;
  }

  if (LOBYTE(ppDb[0]) == 1)
  {
    v15 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v182;
      v16 = "Restore database backup URL is a directory: %@";
LABEL_15:
      _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, v16, &buf, 0xCu);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v175 = v182;
  obj = v177;
  v173 = v178;
  v25 = CalTemporaryDirectory();
  v26 = [v25 stringByAppendingPathComponent:@"StagedBackup.XXXXXXXX"];

  v27 = v26;
  v28 = strdup([v26 fileSystemRepresentation]);
  if (!v28)
  {
    goto LABEL_90;
  }

  v29 = v28;
  if (!mkdtemp(v28))
  {
    free(v29);
LABEL_90:

LABEL_91:
    v84 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v84, OS_LOG_TYPE_ERROR, "Failed to create temp directory for staging backup for restore", &buf, 2u);
    }

    goto LABEL_118;
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v29];
  v31 = [v30 stringByAppendingString:@"/"];

  free(v29);
  v170 = [MEMORY[0x1E695DFF8] fileURLWithPath:v31];

  if (!v170)
  {
    goto LABEL_91;
  }

  v32 = *MEMORY[0x1E69930F0];
  v33 = v175;
  v34 = [v170 URLByAppendingPathComponent:v32];
  v35 = [MEMORY[0x1E696AC08] defaultManager];
  v36 = CalDatabaseURLByAddingSuffix(v33, @"-wal");
  v37 = [v36 path];
  v38 = [v35 fileExistsAtPath:v37];

  if (v38)
  {
    v39 = CalDatabaseBackupRawDatabase(v33, v34);

    if ((v39 & 1) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_23;
  }

  *v200 = 0;
  v85 = [v35 copyItemAtURL:v33 toURL:v34 error:v200];

  v86 = *v200;
  if ((v85 & 1) == 0)
  {
    v94 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v86;
      v95 = "Failed to copy backup database to staged location: %@";
      v96 = v94;
      v97 = 12;
LABEL_110:
      _os_log_impl(&dword_1DEBB1000, v96, OS_LOG_TYPE_ERROR, v95, &buf, v97);
    }

LABEL_111:

    goto LABEL_112;
  }

  ppDb[0] = 0;
  v87 = [v34 path];
  v88 = v87;
  v89 = sqlite3_open_v2([v87 UTF8String], ppDb, 2, 0);

  if (v89)
  {
    v90 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v91 = ppDb[0];
      v92 = v90;
      v93 = sqlite3_errmsg(v91);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v93;
      _os_log_impl(&dword_1DEBB1000, v92, OS_LOG_TYPE_ERROR, "Failed to open database when attempting to validate it: %{public}s", &buf, 0xCu);
    }

    goto LABEL_105;
  }

  if (sqlite3_exec(ppDb[0], "VACUUM", 0, 0, 0))
  {
    v99 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v100 = ppDb[0];
      v101 = v99;
      v102 = sqlite3_errmsg(v100);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v102;
      _os_log_impl(&dword_1DEBB1000, v101, OS_LOG_TYPE_ERROR, "Failed to execute vacuum on database when attempting to validate it: %{public}s", &buf, 0xCu);
    }

LABEL_105:
    v103 = sqlite3_close(ppDb[0]);
    if (!v103)
    {
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  v103 = sqlite3_close(ppDb[0]);
  if (v103)
  {
LABEL_106:
    v104 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v105 = v104;
      v106 = sqlite3_errstr(v103);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v106;
      _os_log_impl(&dword_1DEBB1000, v105, OS_LOG_TYPE_ERROR, "Failed to close database when attempting to validate it: %{public}s", &buf, 0xCu);
    }

LABEL_108:
    v107 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      v95 = "Backup file is not a valid database!";
      v96 = v107;
      v97 = 2;
      goto LABEL_110;
    }

    goto LABEL_111;
  }

LABEL_23:
  v40 = v170;
  v168 = obj;
  v179 = v173;
  v172 = v40;
  v41 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(1805, v40);
  cf = v41;
  if (!v41)
  {
    v98 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v98, OS_LOG_TYPE_ERROR, "Failed to open staged backup database for schema migration", &buf, 2u);
    }

    goto LABEL_112;
  }

  _CalDatabasePerformSchemaMigrationIfNeededOnDatabase(v41);
  CalDatabaseCleanupStoresWithoutIdentifiers(cf);
  CalDatabaseClearAllChangeHistoryForAllClients(cf);
  v42 = CalDatabaseCopyAllRegisteredClientIdentifiersForPersistentChangeTracking(cf);
  v197 = 0u;
  v198 = 0u;
  *ppDb = 0u;
  v196 = 0u;
  v43 = v42;
  v44 = [v43 countByEnumeratingWithState:ppDb objects:&buf count:16];
  if (v44)
  {
    v45 = *v196;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v196 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(ppDb[1] + i);
        if (([v47 hasPrefix:@"com.apple.dataaccessd"] & 1) == 0 && (objc_msgSend(v47, "hasPrefix:", @"com.apple.exchangesync") & 1) == 0)
        {
          CalRemoveClientForPersistentChangeTracking(cf, v47);
        }
      }

      v44 = [v43 countByEnumeratingWithState:ppDb objects:&buf count:16];
    }

    while (v44);
  }

  if (!v168)
  {
    goto LABEL_47;
  }

  v185 = v168;
  v48 = CalDatabaseCopyOfAllAttachmentsInStore(cf, 0);
  v197 = 0u;
  v198 = 0u;
  *ppDb = 0u;
  v196 = 0u;
  v49 = v48;
  v50 = [v49 countByEnumeratingWithState:ppDb objects:&buf count:16];
  if (!v50)
  {
    goto LABEL_46;
  }

  v51 = *v196;
  while (2)
  {
    for (j = 0; j != v50; ++j)
    {
      if (*v196 != v51)
      {
        objc_enumerationMutation(v49);
      }

      v53 = CalAttachmentCopyLocalRelativePath(*(ppDb[1] + j));
      if (v53)
      {
        v54 = [v185 URLByAppendingPathComponent:v53];
        LOBYTE(v190) = 0;
        v55 = [MEMORY[0x1E696AC08] defaultManager];
        v56 = [v54 path];
        v57 = [v55 fileExistsAtPath:v56 isDirectory:&v190];

        if (v57)
        {
          if (v190 != 1)
          {

            continue;
          }

          v163 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v200 = 138412290;
            *&v200[4] = v54;
            v164 = "Attachment in backup is directory when a file was expected: %@";
            goto LABEL_206;
          }
        }

        else
        {
          v163 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v200 = 138412290;
            *&v200[4] = v54;
            v164 = "Failed to find expected attachment in backup: %@";
LABEL_206:
            _os_log_impl(&dword_1DEBB1000, v163, OS_LOG_TYPE_ERROR, v164, v200, 0xCu);
          }
        }

        CFRelease(cf);
        goto LABEL_112;
      }
    }

    v50 = [v49 countByEnumeratingWithState:ppDb objects:&buf count:16];
    if (v50)
    {
      continue;
    }

    break;
  }

LABEL_46:

LABEL_47:
  v186 = v179;
  v58 = CalDatabaseCopyOfAllStores(cf);
  v201 = 0u;
  v202 = 0u;
  memset(v200, 0, sizeof(v200));
  v59 = v58;
  v60 = [v59 countByEnumeratingWithState:v200 objects:&buf count:16];
  if (!v60)
  {

    goto LABEL_199;
  }

  v61 = 0;
  v62 = 0;
  v180 = 0;
  v63 = **&v200[16];
  do
  {
    for (k = 0; k != v60; ++k)
    {
      if (**&v200[16] != v63)
      {
        objc_enumerationMutation(v59);
      }

      v65 = *(*&v200[8] + 8 * k);
      Type = CalStoreGetType(v65);
      if ((Type - 5) >= 2)
      {
        if (Type == 4)
        {
          v61 = v65;
        }

        else if (Type)
        {
          if (a5)
          {
            v67 = CalStoreCopyExternalID(v65);
            if (v67 && ([v186 accountWithIdentifier:v67], v68 = objc_claimAutoreleasedReturnValue(), v69 = v68 == 0, v68, v69))
            {
              v70 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *v199 = 138543362;
                *&v199[4] = v67;
                _os_log_impl(&dword_1DEBB1000, v70, OS_LOG_TYPE_DEFAULT, "Removing store for non-existent account %{public}@ from backup during restore", v199, 0xCu);
              }

              CalRemoveStore();
              v180 = 1;
            }

            else
            {
              v62 = 1;
            }
          }

          else
          {
            v62 = 1;
          }
        }

        else
        {
          v62 |= CalStoreAllowsEvents(v65);
        }
      }
    }

    v60 = [v59 countByEnumeratingWithState:v200 objects:&buf count:16];
  }

  while (v60);

  if (v61)
  {
    v71 = CalStoreCopyCalendars(v61);
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v72 = v71;
    v73 = [(__CFArray *)v72 countByEnumeratingWithState:&v190 objects:ppDb count:16];
    if (v73)
    {
      v74 = *v191;
      do
      {
        for (m = 0; m != v73; ++m)
        {
          if (*v191 != v74)
          {
            objc_enumerationMutation(v72);
          }

          v76 = *(*(&v190 + 1) + 8 * m);
          v77 = CalCalendarCopySubCalAccountID(v76);
          v78 = v77;
          if ((a5 & 2) != 0 && (!v77 || ([v186 accountWithIdentifier:v77], v79 = objc_claimAutoreleasedReturnValue(), v80 = v79 == 0, v79, v80)))
          {
            v81 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *v199 = 138543362;
              *&v199[4] = v78;
              _os_log_impl(&dword_1DEBB1000, v81, OS_LOG_TYPE_DEFAULT, "Removing subscribed calendar for non-existent account %{public}@ from backup during restore", v199, 0xCu);
            }

            CalRemoveCalendar(v76);
            v180 = 1;
          }

          else
          {
            LOBYTE(v62) = 1;
          }
        }

        v73 = [(__CFArray *)v72 countByEnumeratingWithState:&v190 objects:ppDb count:16];
      }

      while (v73);
    }
  }

  if (v180)
  {
    if (CalDatabaseSave(cf))
    {
      if ((v62 & 1) == 0)
      {
        v82 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v199 = 0;
          v83 = "Attempted to restore from a database in which all data belonged to accounts not signed in. Failing the restore to prevent wiping all useful data.";
          goto LABEL_210;
        }

        goto LABEL_211;
      }

      goto LABEL_199;
    }

    v82 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v199 = 0;
      v83 = "Failed to save database to remove stores/calendars for non-existent accounts";
LABEL_210:
      _os_log_impl(&dword_1DEBB1000, v82, OS_LOG_TYPE_ERROR, v83, v199, 2u);
    }

LABEL_211:

    CFRelease(cf);
LABEL_112:
    v108 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v108, OS_LOG_TYPE_DEFAULT, "Cleaning up staged temp directory", &buf, 2u);
    }

    v109 = [MEMORY[0x1E696AC08] defaultManager];
    ppDb[0] = 0;
    v110 = [v109 removeItemAtURL:v170 error:ppDb];
    v111 = ppDb[0];

    if ((v110 & 1) == 0)
    {
      v112 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v111;
        _os_log_impl(&dword_1DEBB1000, v112, OS_LOG_TYPE_ERROR, "Failed to clean up staged temp directory: %@", &buf, 0xCu);
      }
    }

LABEL_118:
    v172 = 0;
  }

  else
  {
LABEL_199:

    CFRelease(cf);
  }

  v11 = v172;
  if (!v172)
  {
LABEL_12:
    v22 = 0;
    goto LABEL_17;
  }

  v171 = v172;
  v169 = obj;
  CalDatabaseLockForThread(a1);
  v167 = *(a1 + 16);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(a1 + 24))
    {
      v113 = *(a1 + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  LastSequenceNumber = CPRecordStoreGetLastSequenceNumber();
  if (LastSequenceNumber == -1)
  {
    LastSequenceNumber = *(a1 + 124);
  }

  v116 = LastSequenceNumber + 1;
  if (LastSequenceNumber == -1)
  {
    v116 = 1;
  }

  v166 = v116;
  RestoreGeneration = _CalDatabaseGetRestoreGeneration(a1);
  v117 = v171;
  v118 = CalDatabaseCopyDirectoryPathForDatabase(a1);
  if (![(__CFString *)v118 length])
  {
    v148 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v148, OS_LOG_TYPE_ERROR, "Failed to get destination path for restore", &buf, 2u);
    }

    goto LABEL_166;
  }

  v119 = [MEMORY[0x1E695DFF8] fileURLWithPath:v118];
  v120 = *MEMORY[0x1E69930F0];
  v121 = [v117 URLByAppendingPathComponent:*MEMORY[0x1E69930F0]];
  v122 = [v119 URLByAppendingPathComponent:v120];
  LOBYTE(v120) = CalDatabaseBackupRawDatabase(v121, v122);

  if ((v120 & 1) == 0)
  {
    goto LABEL_166;
  }

  _CalDatabaseRevertInternal(a1, 1);
  v123 = a6;
  cfa = v169;
  if (!cfa)
  {
    goto LABEL_178;
  }

  v181 = [MEMORY[0x1E696AC08] defaultManager];
  v124 = _CalDatabaseCopyOfAllAttachmentFilesInStore(a1);
  v197 = 0u;
  v198 = 0u;
  *ppDb = 0u;
  v196 = 0u;
  obja = v124;
  v125 = [obja countByEnumeratingWithState:ppDb objects:&buf count:16];
  if (!v125)
  {

    v123 = a6;
LABEL_178:
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(a1 + 24))
      {
        v154 = *(a1 + 24);
        v155 = CPRecordStoreGetContext();
        if (v155)
        {
          os_unfair_lock_assert_owner(v155 + 20);
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
          v157 = CPRecordStoreGetContext();
          if (v157)
          {
            os_unfair_lock_assert_owner(v157 + 20);
          }
        }
      }
    }

    v158 = CPSqliteDatabaseConnectionForWriting();
    v159 = v158;
    if (!v158)
    {
      v162 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(ppDb[0]) = 0;
        _os_log_impl(&dword_1DEBB1000, v162, OS_LOG_TYPE_ERROR, "Failed to get connection for writing to database to update its sequence number after restoring", ppDb, 2u);
      }

      goto LABEL_166;
    }

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v204 = ___CalDatabaseSetSequenceNumberAfterRestore_block_invoke;
    v205 = &__block_descriptor_44_e5_v8__0l;
    v206 = v158;
    v207 = v166;
    _CalDatabaseLockForWriteTransaction(a1, &buf);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v159)
      {
        if (*(*v159 + 104))
        {
          v160 = CPRecordStoreGetContext();
          if (v160)
          {
            os_unfair_lock_assert_owner(v160 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
    v161 = (RestoreGeneration & ~(RestoreGeneration >> 31)) + 1;
    _CalDatabaseSetRestoreGeneration(a1, v161);
    if (v123)
    {
      *v123 = v161;
    }

    v22 = 1;
    goto LABEL_167;
  }

  v126 = *v196;
  v187 = 1;
  do
  {
    for (n = 0; n != v125; ++n)
    {
      if (*v196 != v126)
      {
        objc_enumerationMutation(obja);
      }

      v128 = *(ppDb[1] + n);
      v129 = _CalAttachmentFileGetLocalRelativePath(v128);
      if (v129)
      {
        v130 = [cfa URLByAppendingPathComponent:v129];
        v131 = _CalAttachmentFileCopyLocalURL(v128);
        v132 = v131;
        if (v131)
        {
          v133 = [v131 URLByDeletingLastPathComponent];
          v134 = [v132 path];
          v135 = CPFileBuildDirectoriesToPath();

          if (v135)
          {
            v136 = [v132 path];
            if ([v181 fileExistsAtPath:v136])
            {
              *&v190 = 0;
              v137 = [v181 removeItemAtURL:v132 error:&v190];
              v138 = v190;

              if (v137)
              {
                v139 = v138;
                goto LABEL_149;
              }

              v147 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                *v200 = 138412802;
                *&v200[4] = v129;
                *&v200[12] = 2112;
                *&v200[14] = v132;
                *&v200[22] = 2112;
                *&v200[24] = v138;
                v144 = v147;
                v145 = "Attachment from backup (%@) already exists in destination (%@), but we could not replace it: %@";
                v146 = 32;
LABEL_154:
                _os_log_impl(&dword_1DEBB1000, v144, OS_LOG_TYPE_ERROR, v145, v200, v146);
              }

              goto LABEL_155;
            }

            v139 = 0;
LABEL_149:
            *v199 = v139;
            v142 = [v181 copyItemAtURL:v130 toURL:v132 error:v199];
            v138 = *v199;

            if ((v142 & 1) == 0)
            {
              v143 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                *v200 = 138412546;
                *&v200[4] = v129;
                *&v200[12] = 2112;
                *&v200[14] = v138;
                v144 = v143;
                v145 = "Failed to copy attachment (%@) when restoring backup: %@";
                v146 = 22;
                goto LABEL_154;
              }

LABEL_155:
              v187 = 0;
            }
          }

          else
          {
            v141 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v200 = 138412290;
              *&v200[4] = v133;
              _os_log_impl(&dword_1DEBB1000, v141, OS_LOG_TYPE_ERROR, "Failed to create directory for attachment when restoring backup: %@", v200, 0xCu);
            }

            v187 = 0;
          }
        }

        else
        {
          v140 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v200 = 138412290;
            *&v200[4] = v129;
            _os_log_impl(&dword_1DEBB1000, v140, OS_LOG_TYPE_ERROR, "Failed to get destination URL for attachment: %@", v200, 0xCu);
          }

          v187 = 0;
        }
      }
    }

    v125 = [obja countByEnumeratingWithState:ppDb objects:&buf count:16];
  }

  while (v125);

  v123 = a6;
  if (v187)
  {
    goto LABEL_178;
  }

LABEL_166:
  v22 = 0;
LABEL_167:
  CalDatabaseUnlockForThread(a1);
  if (v22)
  {
    if ((v167 & 8) == 0)
    {
      _CalDatabasePostDBChangeNotificationToInternalAndExternalClients(a1);
      _CalDatabaseRestoreNotification();
    }

    CalDatabaseCleanUpOrphanedLocalAttachments(a1);
  }

  v149 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v200 = 0;
    _os_log_impl(&dword_1DEBB1000, v149, OS_LOG_TYPE_DEFAULT, "Cleaning up staged backup directory", v200, 2u);
  }

  v150 = [MEMORY[0x1E696AC08] defaultManager];
  v194 = 0;
  v151 = [v150 removeItemAtURL:v171 error:&v194];
  v152 = v194;

  if ((v151 & 1) == 0)
  {
    v153 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v200 = 138412290;
      *&v200[4] = v152;
      _os_log_impl(&dword_1DEBB1000, v153, OS_LOG_TYPE_ERROR, "Failed to clean up staged backup directory: %@", v200, 0xCu);
    }
  }

  v11 = v172;
LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_1DEBE7BE8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    if (v20)
    {
      objc_end_catch();
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1DEBE7780);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t CalDatabaseRestoreFromBackupDatabaseFileAndAttachments(uint64_t a1, void *a2, void *a3, int *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v7 URLByDeletingLastPathComponent];
  v10 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEFAULT, "Beginning restore of database file and attachments from %@", &v16, 0xCu);
  }

  if (v8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = CalDatabaseRestoreDatabaseCore(a1, v7, v9, v8, v11, a4);

  v13 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = v12;
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_DEFAULT, "Finished restore of database file with result = %{BOOL}d", &v16, 8u);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t CalDatabaseRestoreFromICBU(os_unfair_lock_s *a1, void *a2, void *a3, int *a4)
{
  v173 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_DEFAULT, "Beginning restore of database file and attachments from %@", buf, 0xCu);
  }

  v9 = v6;
  v10 = v7;
  v11 = [v9 URLByAppendingPathComponent:@"Info.plist"];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v11];

  if (!v12)
  {
    v25 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_ERROR, "Could not open Info.plist from .icbu (%@) for restore", buf, 0xCu);
    }

    v26 = 0;
    goto LABEL_129;
  }

  v13 = [v12 objectForKeyedSubscript:@"version"];
  v14 = v13;
  if (!v13)
  {
    v27 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    *&buf[4] = v9;
    v28 = "Could not find version key in Info.plist for .icbu (%@)";
    goto LABEL_21;
  }

  if (![v13 isEqualToString:@"3.0"])
  {
    v29 = [v14 isEqualToString:@"2.0"];
    v27 = CDBLogHandle;
    v30 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v30)
      {
        *buf = 0;
        v28 = "Restoring from a 2.0 .icbu is not supported on this platform";
        v31 = v27;
        v32 = 2;
LABEL_22:
        _os_log_impl(&dword_1DEBB1000, v31, OS_LOG_TYPE_ERROR, v28, buf, v32);
      }

LABEL_23:
      v26 = 0;
      goto LABEL_128;
    }

    if (!v30)
    {
      goto LABEL_23;
    }

    *buf = 138543362;
    *&buf[4] = v14;
    v28 = "Could not restore from unsupported .icbu version: %{public}@";
LABEL_21:
    v31 = v27;
    v32 = 12;
    goto LABEL_22;
  }

  v15 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_DEFAULT, "Restoring from version 3.0 .icbu", buf, 2u);
  }

  v16 = v9;
  v17 = v12;
  v132 = v10;
  v130 = [v16 URLByAppendingPathComponent:@"Calendar.sqlitedb"];
  v131 = v16;
  v129 = v17;
  v18 = [v17 objectForKeyedSubscript:@"LocalSubscribedCalendarAccounts"];
  v127 = v12;
  v128 = v10;
  v126 = v14;
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup();
      v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v18, "count")}];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __CalDatabaseSanitizeLocalSubscribedCalendarInfosDictionary_block_invoke;
      v170 = &unk_1E8689300;
      v171 = v19;
      v172 = v20;
      v21 = v19;
      v22 = v20;
      [v18 enumerateKeysAndObjectsUsingBlock:buf];
      v23 = [v22 copy];

      v24 = v23;
      goto LABEL_27;
    }

    v33 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v33, OS_LOG_TYPE_ERROR, "Local subscribed calendar info from backup Info.plist was not a dictionary. Ignoring", buf, 2u);
    }
  }

  v24 = 0;
LABEL_27:

  v34 = CalDatabaseRestoreDatabaseCore(a1, v130, v131, v132, 1, a4);
  v26 = v34;
  if (!v34 || !v24)
  {
    goto LABEL_122;
  }

  v123 = v9;
  v124 = v24;
  v125 = v34;
  v139 = v24;
  v35 = v132;
  v36 = *MEMORY[0x1E69598F8];
  v165 = 0;
  v143 = v35;
  v135 = v36;
  v37 = [v35 topLevelAccountsWithAccountTypeIdentifier:? error:?];
  v38 = 0;
  v39 = v38;
  if (v37 || !v38)
  {
    v42 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v37, "count")}];
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v43 = v37;
    v44 = [v43 countByEnumeratingWithState:&v161 objects:buf count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v162;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v162 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v161 + 1) + 8 * i);
          v49 = [v48 identifier];
          [v42 setObject:v48 forKeyedSubscript:v49];
        }

        v45 = [v43 countByEnumeratingWithState:&v161 objects:buf count:16];
      }

      while (v45);
    }

    v41 = v42;
  }

  else
  {
    v40 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v39;
      _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_ERROR, "Failed to get existing subscribed calendar accounts when attempting to update subscribed calendars for .icbu restore: %@", buf, 0xCu);
    }

    v41 = 0;
  }

  v26 = v125;
  v24 = v124;
  if (!v41)
  {

    goto LABEL_120;
  }

  v50 = MEMORY[0x1E695DFA8];
  v51 = [v41 allKeys];
  v137 = [v50 setWithArray:v51];

  v136 = objc_opt_new();
  v142 = objc_opt_new();
  v52 = CalDatabaseCopySubscribedCalendarStore(a1);
  if (v52)
  {
    v53 = v52;
    v54 = CalStoreCopyCalendars(v52);
    CFRelease(v53);
  }

  else
  {
    v54 = 0;
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v55 = v54;
  v56 = [(__CFArray *)v55 countByEnumeratingWithState:&v157 objects:v168 count:16];
  v140 = v41;
  v138 = v55;
  if (!v56)
  {

    v141 = 0;
LABEL_80:
    v153 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    v82 = v137;
    v83 = [v82 countByEnumeratingWithState:&v150 objects:v167 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v151;
      v86 = *MEMORY[0x1E6959728];
      v87 = 1;
      do
      {
        for (j = 0; j != v84; ++j)
        {
          if (*v151 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v89 = [v41 objectForKeyedSubscript:*(*(&v150 + 1) + 8 * j)];
          v90 = [v89 accountPropertyForKey:v86];

          if (!v90)
          {
            v149 = 0;
            v91 = [v143 removeAccount:v89 error:&v149];
            v92 = v149;
            if ((v91 & 1) == 0)
            {
              v93 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v92;
                _os_log_impl(&dword_1DEBB1000, v93, OS_LOG_TYPE_ERROR, "Failed to remove subscribed calendar account after restore: %@", buf, 0xCu);
              }

              v87 = 0;
              v41 = v140;
            }
          }
        }

        v84 = [v82 countByEnumeratingWithState:&v150 objects:v167 count:16];
      }

      while (v84);
    }

    else
    {
      v87 = 1;
    }

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v95 = v136;
    v96 = [v95 countByEnumeratingWithState:&v145 objects:v166 count:16];
    if (v96)
    {
      v97 = v96;
      v98 = *v146;
      v9 = v123;
      do
      {
        for (k = 0; k != v97; ++k)
        {
          if (*v146 != v98)
          {
            objc_enumerationMutation(v95);
          }

          v100 = *(*(&v145 + 1) + 8 * k);
          v144 = 0;
          v101 = [v143 saveAccount:v100 withError:&v144];
          v102 = v144;
          if ((v101 & 1) == 0)
          {
            v103 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v102;
              _os_log_impl(&dword_1DEBB1000, v103, OS_LOG_TYPE_ERROR, "Failed to save subscribed calendar account after restore: %@", buf, 0xCu);
            }

            v104 = [v100 identifier];
            v105 = [v142 objectForKeyedSubscript:v104];

            if (v105)
            {
              v106 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                v107 = v106;
                UID = CalCalendarGetUID();
                *buf = 67109120;
                *&buf[4] = UID;
                _os_log_impl(&dword_1DEBB1000, v107, OS_LOG_TYPE_ERROR, "Removing subscribed calendar %d because we failed to save its account", buf, 8u);
              }

              v109 = CalCalendarCopyStore(v105);
              CalStoreRemoveCalendar(v109, v105);
              CFRelease(v109);
              v141 = 1;
            }

            v87 = 0;
          }
        }

        v97 = [v95 countByEnumeratingWithState:&v145 objects:v166 count:16];
      }

      while (v97);
    }

    else
    {
      v9 = v123;
    }

    v26 = v125;
    v24 = v124;
    v94 = v140;
    v55 = v138;
    goto LABEL_114;
  }

  v57 = v56;
  v141 = 0;
  v58 = *v158;
  v59 = *MEMORY[0x1E6959870];
  v133 = 1;
  v60 = *MEMORY[0x1E6959870];
  do
  {
    v61 = 0;
    do
    {
      if (*v158 != v58)
      {
        objc_enumerationMutation(v55);
      }

      v62 = *(*(&v157 + 1) + 8 * v61);
      v63 = CalCalendarCopySubCalAccountID(v62);
      if (CalCalendarIsHolidaySubscribedCalendar(v62))
      {
        v64 = [v143 topLevelAccountsWithAccountTypeIdentifier:v59 error:0];
        v65 = [v64 firstObject];

        if (v65)
        {
          v66 = [v65 identifier];

          if (v63 != v66)
          {
            v67 = [v65 identifier];
            CalCalendarSetSubCalAccountID(v62);
          }
        }

        else
        {
          v71 = CalCalendarCopyStore(v62);
          CalStoreRemoveCalendar(v71, v62);
          CFRelease(v71);
          v141 = 1;
        }

LABEL_63:

        goto LABEL_71;
      }

      if (![v63 length])
      {
        v72 = CDBLogHandle;
        if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        v65 = v72;
        v73 = CalCalendarGetUID();
        *buf = 67109120;
        *&buf[4] = v73;
        _os_log_impl(&dword_1DEBB1000, v65, OS_LOG_TYPE_DEFAULT, "Local subscribed calendar in database (ROWID=%d) has no account ID. Will not update account for this subscription", buf, 8u);
        goto LABEL_63;
      }

      v68 = [v139 objectForKeyedSubscript:v63];
      if (!v68)
      {
        v74 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v75 = v74;
          v76 = CalCalendarGetUID();
          *buf = 67109378;
          *&buf[4] = v76;
          *&buf[8] = 2114;
          *&buf[10] = v63;
          _os_log_impl(&dword_1DEBB1000, v75, OS_LOG_TYPE_DEFAULT, "Did not find subscription account info for local subscribed calendar in database (ROWID=%d, accountId= %{public}@). Will not update account for this subscription", buf, 0x12u);
        }

        goto LABEL_70;
      }

      v69 = [v140 objectForKeyedSubscript:v63];
      if (v69)
      {
        v70 = v69;
      }

      else
      {
        v156 = 0;
        v70 = [v143 createAccountWithAccountTypeIdentifier:v135 error:&v156];
        v77 = v156;
        if (!v70)
        {
          v80 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v77;
            _os_log_impl(&dword_1DEBB1000, v80, OS_LOG_TYPE_ERROR, "Failed to create subscription account after restore: %@", buf, 0xCu);
          }

          v133 = 0;
          goto LABEL_69;
        }

        v78 = [v70 identifier];
        CalCalendarSetSubCalAccountID(v62);

        v141 = 1;
      }

      v79 = [v70 identifier];
      [v142 setObject:v62 forKeyedSubscript:v79];

      v154[0] = MEMORY[0x1E69E9820];
      v154[1] = 3221225472;
      v154[2] = __CalDatabaseUpdateSubscribedCalendarAccountsAfterRestore_block_invoke;
      v154[3] = &unk_1E8689328;
      v155 = v70;
      v77 = v70;
      [v68 enumerateKeysAndObjectsUsingBlock:v154];
      [v136 addObject:v77];
      [v137 removeObject:v63];

      v59 = v60;
LABEL_69:

      v55 = v138;
LABEL_70:

LABEL_71:
      ++v61;
    }

    while (v57 != v61);
    v81 = [(__CFArray *)v55 countByEnumeratingWithState:&v157 objects:v168 count:16];
    v57 = v81;
  }

  while (v81);

  if (v133)
  {
    v41 = v140;
    goto LABEL_80;
  }

  v87 = 0;
  v26 = v125;
  v9 = v123;
  v24 = v124;
  v94 = v140;
LABEL_114:
  if ((v141 & 1) != 0 && (CalDatabaseSave(a1) & 1) == 0)
  {
    v110 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v110, OS_LOG_TYPE_ERROR, "Failed to save local subscribed calendar changes to database after restoring from .icbu", buf, 2u);
    }

    v87 = 0;
  }

  if ((v87 & 1) == 0)
  {
LABEL_120:
    v111 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v111, OS_LOG_TYPE_ERROR, "Failed to update subscribed calendars after restore.", buf, 2u);
    }
  }

LABEL_122:
  v12 = v127;
  v10 = v128;
  v14 = v126;
  if (v26)
  {
    v112 = v24;
    v113 = v26;
    v114 = [v129 objectForKeyedSubscript:@"preferences"];
    v115 = [v114 objectForKeyedSubscript:@"defaultCalendarID"];
    v116 = [v114 objectForKeyedSubscript:@"defaultCalendarStoreUID"];
    v117 = v116;
    if (v115 && v116)
    {
      v118 = CalDatabaseGetPreferences(a1);
      [v118 set_defaultCalendarID:v115];
      [v118 set_defaultCalendarStoreUID:{objc_msgSend(v117, "integerValue")}];
      [v118 set_defaultCalendarDatabaseID:0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [v118 set_defaultCalendarChangedTimestamp:v119];
      [v118 set_defaultCalendarChangedReason:@"restore"];
    }

    v26 = v113;
    v24 = v112;
  }

LABEL_128:
LABEL_129:

  v120 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v26;
    _os_log_impl(&dword_1DEBB1000, v120, OS_LOG_TYPE_DEFAULT, "Finished restore of database file with result = %{BOOL}d", buf, 8u);
  }

  v121 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t CalDatabaseValidateBackupDestinationURLForDatabaseFile(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isFileURL])
    {
      v3 = [MEMORY[0x1E696AC08] defaultManager];
      v4 = [v2 path];
      v5 = [v3 fileExistsAtPath:v4];

      if (v5)
      {
        v6 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v2;
          _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Backup destination URL is an existing file: %@", buf, 0xCu);
        }

        v7 = 0;
        goto LABEL_23;
      }

      v20 = 0;
      v13 = [v2 URLByDeletingLastPathComponent];
      v14 = [v13 path];
      v15 = [v3 fileExistsAtPath:v14 isDirectory:&v20];

      if (v15)
      {
        if (v20)
        {
          v7 = 1;
LABEL_22:

LABEL_23:
          goto LABEL_24;
        }

        v16 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v2;
          v17 = "Backup destination URL has a parent that is not a directory: %@";
          goto LABEL_20;
        }
      }

      else
      {
        v16 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v2;
          v17 = "Backup destination URL has non-existent parent directory: %@";
LABEL_20:
          _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
        }
      }

      v7 = 0;
      goto LABEL_22;
    }

    v12 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v2;
      v9 = "Backup destination URL is not a file URL: %@";
      v10 = v12;
      v11 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v8 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Nil path given for backup destination";
      v10 = v8;
      v11 = 2;
LABEL_11:
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    }
  }

  v7 = 0;
LABEL_24:

  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL _CalDatabaseBackupDatabaseFileWithSourceAndDestinationConnections(sqlite3 *pSource, sqlite3 *pDest)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_backup_init(pDest, "main", pSource, "main");
  if (!v3)
  {
    v8 = CDBLogHandle;
    result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_11;
    }

    v9 = v8;
    v13 = 136446210;
    v14 = sqlite3_errmsg(pDest);
    v10 = "Failed to initialize backup: %{public}s";
LABEL_10:
    _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, v10, &v13, 0xCu);

    result = 0;
    goto LABEL_11;
  }

  v4 = v3;
  do
  {
    v5 = sqlite3_backup_step(v4, -1);
  }

  while (!v5);
  v6 = v5;
  sqlite3_backup_finish(v4);
  if (v6 != 101)
  {
    v11 = CDBLogHandle;
    result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_11;
    }

    v9 = v11;
    v13 = 136446210;
    v14 = sqlite3_errmsg(pDest);
    v10 = "Failure while performing backup: %{public}s";
    goto LABEL_10;
  }

  result = 1;
LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CalDatabaseVacuumAndCloseDBConnection(sqlite3 *a1, void *a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (sqlite3_exec(a1, "VACUUM", 0, 0, 0))
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      *buf = 136446210;
      v29 = sqlite3_errmsg(a1);
      v8 = "Failed to vacuum DB: %{public}s";
LABEL_7:
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (sqlite3_wal_checkpoint_v2(a1, 0, 3, 0, 0))
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = v9;
      *buf = 136446210;
      v29 = sqlite3_errmsg(a1);
      v8 = "Failed to checkpoint DB: %{public}s";
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:
  if (sqlite3_close(a1))
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = sqlite3_errmsg(a1);
      *buf = 136446210;
      v29 = v13;
      _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Failed to close DB: %{public}s", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v14 = v10 ^ 1;
    if (a3 != 1)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v15 = CalDatabaseURLByAddingSuffix(v5, @"-wal");
      v16 = CalDatabaseURLByAddingSuffix(v5, @"-shm");
      v17 = [MEMORY[0x1E696AC08] defaultManager];
      v27 = 0;
      v10 = [v17 removeItemAtURL:v15 error:&v27];
      v18 = v27;

      if ((v10 & 1) == 0)
      {
        v19 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v15;
          v30 = 2112;
          v31 = v18;
          _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_ERROR, "Failed to remove backup -wal file (%@): %@", buf, 0x16u);
        }
      }

      v20 = [MEMORY[0x1E696AC08] defaultManager];
      v26 = v18;
      v21 = [v20 removeItemAtURL:v16 error:&v26];
      v22 = v26;

      if ((v21 & 1) == 0)
      {
        v23 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v16;
          v30 = 2112;
          v31 = v22;
          _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, "Failed to remove backup -shm file (%@): %@", buf, 0x16u);
        }

        v10 = 0;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

id CalDatabaseURLByAddingSuffix(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 URLByDeletingLastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v6 stringByAppendingString:v3];

  v8 = [v5 URLByAppendingPathComponent:v7];

  return v8;
}

uint64_t __CalDatabaseValidateBackupDestinationURLForICBU_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "Failed to list destination URL (%@): %@", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

id CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup()
{
  if (CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup_onceToken != -1)
  {
    CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup_cold_1();
  }

  v1 = CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup_properties;

  return v1;
}

void __CalDatabaseBackupLocalSubscribedAccountInfos_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) accountPropertyForKey:?];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:v4];
  }
}

void __CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup_block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6959730];
  v4[0] = objc_opt_class();
  v3[1] = *MEMORY[0x1E69931A8];
  v4[1] = objc_opt_class();
  v3[2] = *MEMORY[0x1E6993198];
  v4[2] = objc_opt_class();
  v3[3] = *MEMORY[0x1E69931B8];
  v4[3] = objc_opt_class();
  v3[4] = *MEMORY[0x1E69931A0];
  v4[4] = objc_opt_class();
  v3[5] = *MEMORY[0x1E69931B0];
  v4[5] = objc_opt_class();
  v3[6] = *MEMORY[0x1E69931D0];
  v4[6] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup_properties;
  CalDatabaseGetSubscribedCalendarAccountPropertiesIncludedInBackup_properties = v0;

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t CalDatabaseBackupRawDatabase(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v17 = 0;
  ppDb = 0;
  v5 = [v3 path];
  v6 = sqlite3_open_v2([v5 UTF8String], &ppDb, 1, 0);

  if (v6)
  {
    v7 = CDBLogHandle;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(ppDb);
      *buf = 136446210;
      v20 = v8;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "Failed to open source database for restore: %{public}s", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v9 = [v4 path];
  v10 = v9;
  v11 = sqlite3_open_v2([v9 UTF8String], &v17, 6, 0);

  if (v11)
  {
    v12 = CDBLogHandle;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg(v17);
      *buf = 136446210;
      v20 = v13;
      _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Failed to open destination database for staging restore: %{public}s", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (!_CalDatabaseBackupDatabaseFileWithSourceAndDestinationConnections(ppDb, v17))
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v14 = _CalDatabaseVacuumAndCloseDBConnection(v17, v4, 0);
  v17 = 0;
LABEL_12:
  sqlite3_close(ppDb);
  sqlite3_close(v17);

  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

void sub_1DEBE9B70(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1DEBE9B18);
  }

  _Unwind_Resume(exception_object);
}

void __CalDatabaseSanitizeLocalSubscribedCalendarInfosDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v12 = v11;
    *buf = 138543362;
    v24 = objc_opt_class();
    v13 = v24;
    v14 = "Entry in subscribed calendar info from backup Info.plist has wrong key type (%{public}@). Ignoring.";
LABEL_8:
    _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v12 = v15;
    *buf = 138543362;
    v24 = objc_opt_class();
    v13 = v24;
    v14 = "Entry in subscribed calendar info from backup Info.plist has wrong value type (%{public}@). Ignoring.";
    goto LABEL_8;
  }

  v7 = MEMORY[0x1E695DF90];
  v8 = v6;
  v9 = [v7 dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __CalDatabaseSanitizeLocalSubscribedCalendarInfosDictionary_block_invoke_73;
  v20 = &unk_1E8689300;
  v21 = *(a1 + 32);
  v22 = v9;
  v10 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:&v17];

  [*(a1 + 40) setObject:v10 forKeyedSubscript:{v5, v17, v18, v19, v20}];
LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
}

void __CalDatabaseSanitizeLocalSubscribedCalendarInfosDictionary_block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v8 = v7;
    v16 = 138543362;
    v17 = objc_opt_class();
    v9 = v17;
    v10 = "Entry in subscribed calendar info inner dictionary from backup Info.plist has wrong key type (%{public}@). Ignoring.";
    v11 = v8;
    v12 = 12;
    goto LABEL_11;
  }

  if ([*(a1 + 32) objectForKeyedSubscript:v5])
  {
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
      goto LABEL_12;
    }

    v14 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v8 = v14;
    v16 = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = objc_opt_class();
    v9 = v19;
    v10 = "Entry in subscribed calendar info inner dictionary from backup Info.plist has wrong value type (key = %{public}@, type = %{public}@). Ignoring.";
    v11 = v8;
    v12 = 22;
LABEL_11:
    _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);

    goto LABEL_12;
  }

  v13 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Unexpected property (%{public}@) in subscribed calendar info inner dictionary from backup Info.plist. Ignoring.", &v16, 0xCu);
  }

LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
}

void _CalColorPrepareForSave(uint64_t a1)
{
  if (!_CalColorGetStoreID(a1))
  {
    v1 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&dword_1DEBB1000, v1, OS_LOG_TYPE_ERROR, "Attempting to save an color that is not in any store", v2, 2u);
    }
  }
}

void CalColorInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalColorClass, &kCalColorIndexes, 0);

  CalMigrationCreateTriggers(a2, &kCalColorClass, &kCalColorTriggers);
}

void CalColorMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 18006)
  {
    CalColorInitializeTables(a1, a2);
  }
}

uint64_t CalColorGetPropertyIDWithPropertyName(void *key)
{
  if (CalColorGetPropertyIDWithPropertyName_onceToken != -1)
  {
    CalColorGetPropertyIDWithPropertyName_cold_1();
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(CalColorGetPropertyIDWithPropertyName_sPropDict, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __CalColorGetPropertyIDWithPropertyName_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = @"data";
  v3 = 1;
  v4 = @"providerIdentifier";
  v5 = 2;
  v6 = @"UUID";
  v7 = 3;
  v8 = @"externalID";
  v9 = 4;
  v10 = @"source";
  v11 = 6;
  CalColorGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&v2, 5);
  for (i = 64; i != -16; i -= 16)
  {
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1DEBEA6CC(_Unwind_Exception *a1)
{
  for (i = 64; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

const void *_CalDatabaseCreateColor(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 29);
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

const void *CalDatabaseCreateColor(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Color = _CalDatabaseCreateColor(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Color;
}

uint64_t _CalRemoveColor(const void *a1)
{
  DatabaseForRecord = CalGetDatabaseForRecord();

  return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
}

void CalRemoveColor(const void *a1)
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

uint64_t _CalColorHasValidParent(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = _CalColorCopyEvents(a1);
  v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (_CalCalendarItemHasValidParent(*(*(&v7 + 1) + 8 * i)))
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

CFMutableArrayRef _CalColorCopyEvents(uint64_t a1)
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

BOOL _CalColorIsUnused(uint64_t a1)
{
  v1 = _CalColorCopyEvents(a1);
  v2 = [(__CFArray *)v1 count]== 0;

  return v2;
}

uint64_t _CalColorSaveAddedRecords(uint64_t a1)
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

uint64_t _CalColorGetWithUID(uint64_t a1)
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

const void *CalDatabaseCopyColorWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v3 = _CalColorGetWithUID(RecordStore);
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

const void *CalDatabaseCopyColorWithProviderAndExternalID(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
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

  v15 = v5;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  v12 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  if (!v12)
  {
    return 0;
  }

  if (CFArrayGetCount(v12) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
    CFRetain(ValueAtIndex);
  }

  CFRelease(v12);
  return ValueAtIndex;
}

uint64_t __CalDatabaseCopyColorWithProviderAndExternalID_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_text(*(a2 + 8), 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = *(a2 + 8);
  v5 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(v4, 2, v5, -1, 0);
}

CFMutableArrayRef CalColorCopyEvents(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalColorCopyEvents(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalColorAddEvent(uint64_t a1, void *a2)
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
    CalToManyRelationAddObject(result, a2);
    Store = CPRecordGetStore();
    if (CDBLockingAssertionsEnabled == 1 && Store != 0)
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }

    return CPRecordStoreAddRecord();
  }

  return result;
}

void CalColorAddEvent(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalColorAddEvent(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalColorRemoveEvent(uint64_t a1, void *a2)
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
    CalToManyRelationRemoveObject(result, a2);
    result = _CalColorIsUnused(a1);
    if (result)
    {
      Store = CPRecordGetStore();
      if (CDBLockingAssertionsEnabled == 1 && Store != 0)
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }

      return CPRecordStoreRemoveRecord();
    }
  }

  return result;
}

void CalColorRemoveEvent(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalColorRemoveEvent(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalColorGetRecordID(uint64_t a1)
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

uint64_t CalColorGetUID()
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

void CalColorSetStoreID(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 0, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalColorGetStoreID(uint64_t a1)
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

  Property = CPRecordGetProperty();
  if (Property <= 0)
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = _CalColorCopyEvents(a1);
    v5 = [(__CFArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          Property = _CalCalendarItemGetStoreId(*(*(&v11 + 1) + 8 * i));
          if (Property > 0)
          {

            _CalRecordSetPropertyIfDifferent(a1, 0, Property);
            goto LABEL_19;
          }
        }

        v6 = [(__CFArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      Property = 0;
    }

LABEL_19:
  }

  v9 = *MEMORY[0x1E69E9840];
  return Property;
}

uint64_t CalColorGetStoreID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  StoreID = _CalColorGetStoreID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return StoreID;
}

uint64_t _CalColorGetStore(uint64_t a1)
{
  if (_CalColorGetStoreID(a1) < 1)
  {
    return 0;
  }

  Store = CPRecordGetStore();

  return _CalGetStoreWithUID(Store);
}

CFTypeRef CalColorCopyStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Store = _CalColorGetStore(a1);
  if (Store)
  {
    v4 = CFRetain(Store);
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

void CalColorSetData(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalColorGetData(uint64_t a1)
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

const void *CalColorCopyData(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Data = _CalColorGetData(a1);
  v4 = Data;
  if (Data)
  {
    CFRetain(Data);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalColorSetProviderIdentifier(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 2, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalColorGetProviderIdentifier(uint64_t a1)
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

const void *CalColorCopyProviderIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ProviderIdentifier = _CalColorGetProviderIdentifier(a1);
  v4 = ProviderIdentifier;
  if (ProviderIdentifier)
  {
    CFRetain(ProviderIdentifier);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalColorSetUUID(_BOOL8 a1, const __CFNumber *a2)
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

const void *CalColorCopyUUID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Description = _CalCalendarItemGetDescription(a1);
  v4 = Description;
  if (Description)
  {
    CFRetain(Description);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalColorSetExternalIdentifier(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 4, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalColorGetExternalIdentifier(uint64_t a1)
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

const void *CalColorCopyExternalIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ExternalIdentifier = _CalColorGetExternalIdentifier(a1);
  v4 = ExternalIdentifier;
  if (ExternalIdentifier)
  {
    CFRetain(ExternalIdentifier);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalDatabaseMigrateToMultipleDatabases(uint64_t a1)
{
  v116 = *MEMORY[0x1E69E9840];
  v2 = _CalDatabaseGetCalendarDataContainerProvider(a1);
  v88 = a1;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v3 = _CalDatabaseCopyOfAllStores(a1);
  v4 = [v3 countByEnumeratingWithState:&v95 objects:v108 count:16];
  if (v4)
  {
    v5 = v4;
    v94 = *v96;
    v87 = *MEMORY[0x1E69930F0];
    v79 = &v111;
    v80 = &buf[16];
    v82 = v2;
    v89 = v3;
    do
    {
      v6 = 0;
      v90 = v5;
      do
      {
        if (*v96 != v94)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v95 + 1) + 8 * v6);
        v8 = _CalErrorGetRecordID(v7);
        if (v8)
        {
          v9 = [v2 containerInfoForAccountIdentifier:v8];
          if ([v9 usesDataSeparatedContainer])
          {
            v10 = [v9 containerURL];
            v11 = CDBLogHandle;
            if (v10)
            {
              v12 = v10;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *&buf[4] = v8;
                *&buf[12] = 2112;
                *&buf[14] = v12;
                _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_DEFAULT, "Account ID %{public}@ will be migrated to %@", buf, 0x16u);
              }

              v13 = [v9 personaID];
              v14 = v12;
              v93 = _CalErrorGetRecordID(v7);
              v15 = [MEMORY[0x1E696AC08] defaultManager];
              v107 = 0;
              v92 = v15;
              v16 = [v15 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v107];
              v17 = v107;
              if ((v16 & 1) == 0)
              {
                v24 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *v113 = 138543874;
                  *&v113[4] = v93;
                  *&v113[12] = 2112;
                  *&v113[14] = v14;
                  *&v113[22] = 2112;
                  v114 = v17;
                  _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, "Can't create directories for new separated database for account %{public}@ at path %@: %@", v113, 0x20u);
                }

                v25 = 0;
                v26 = v92;
                goto LABEL_80;
              }

              v18 = _CalDatabaseCopyAuxDatabaseForPersonaID(v88);
              if (v18)
              {
                CFRelease(v18);
                v91 = [v14 URLByAppendingPathComponent:v87];
                v19 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *v113 = 138543618;
                  *&v113[4] = v13;
                  *&v113[12] = 2114;
                  *&v113[14] = v93;
                  _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_DEFAULT, "Database already exists for persona %{public}@; also migrating account %{public}@ to the same database", v113, 0x16u);
                }

                v20 = v88;
LABEL_36:
                if (_CalDatabaseGetRecordStore(v20))
                {
                  v86 = v17;
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
                        v48 = CPRecordStoreGetContext();
                        if (v48)
                        {
                          os_unfair_lock_assert_owner(v48 + 20);
                        }
                      }
                    }

                    v49 = CPSqliteDatabaseConnectionForWriting();
                    if (v49)
                    {
                      v50 = v49;
                      v51 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(2688, v14);
                      if (v51)
                      {
                        v84 = v13;
                        CFRelease(v51);
                        v102[0] = MEMORY[0x1E69E9820];
                        v102[1] = 3221225472;
                        v102[2] = ___CalDatabaseMigrateStoreToSeparateDB_block_invoke;
                        v102[3] = &unk_1E8689590;
                        v91 = v91;
                        v103 = v91;
                        CalPerformSQLWithConnectionAndBindBlock(v50, 0, @"ATTACH DATABASE ? AS aux", v102);
                        CPRecordGetID();
                        if (CDBLockingAssertionsEnabled == 1)
                        {
                          v52 = CPRecordStoreGetContext();
                          if (v52)
                          {
                            os_unfair_lock_assert_owner(v52 + 20);
                          }
                        }

                        RowidForRecordID = CPRecordStoreGetRowidForRecordID();
                        v101[0] = MEMORY[0x1E69E9820];
                        v101[1] = 3221225472;
                        v101[2] = ___CalDatabaseMigrateStoreToSeparateDB_block_invoke_2;
                        v101[3] = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v101[4] = RowidForRecordID;
                        v81 = MEMORY[0x1E12C7520](v101);
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalStoreClass, @"WHERE ROWID = ?", v81, @"WHERE record = ?", v81);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalCalendarClass, @"WHERE store_id = ?", v81, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalEventClass, @"WHERE calendar_id IN (SELECT ROWID FROM aux.Calendar)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalAlarmClass, @"WHERE calendaritem_owner_id IN (SELECT ROWID FROM aux.CalendarItem) OR calendar_owner_id IN (SELECT ROWID FROM aux.Calendar)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalLocationClass, @"WHERE item_owner_id IN (SELECT ROWID FROM aux.CalendarItem) OR client_loc_owner_id IN (SELECT ROWID FROM aux.CalendarItem) OR start_loc_owner_id IN (SELECT ROWID FROM aux.CalendarItem) OR end_loc_owner_id IN (SELECT ROWID FROM aux.CalendarItem) OR alarm_owner_id IN (SELECT ROWID FROM aux.Alarm)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalParticipantClass, @"WHERE owner_id IN (SELECT ROWID FROM aux.CalendarItem)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalErrorClass, @"WHERE store_owner_id = ? OR calendar_owner_id IN (SELECT ROWID FROM aux.Calendar) OR calendaritem_owner_id IN (SELECT ROWID FROM aux.CalendarItem)", v81, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalRecurrenceClass, @"WHERE owner_id IN (SELECT ROWID FROM aux.CalendarItem)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalEventActionClass, @"WHERE event_id IN (SELECT ROWID FROM aux.CalendarItem)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalExceptionDateClass, @"WHERE owner_id IN (SELECT ROWID FROM aux.CalendarItem)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalAttachmentFileClass, @"WHERE store_id = ?", v81, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalAttachmentClass, @"WHERE file_id IN (SELECT ROWID FROM aux.AttachmentFile)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalCategoryLinkClass, @"WHERE owner_id IN (SELECT ROWID FROM aux.CalendarItem)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalCategoryClass, @"WHERE ROWID IN (SELECT category_id FROM aux.CategoryLink)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalShareeClass, @"WHERE owner_id IN (SELECT ROWID FROM aux.Calendar)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalNotificationClass, @"WHERE calendar_id IN (SELECT ROWID FROM aux.Calendar) OR invite_reply_calendar_id IN (SELECT ROWID FROM aux.Calendar)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalResourceChangeClass, @"WHERE notification_id IN (SELECT ROWID FROM aux.Notification)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalSuggestedEventInfoClass, @"WHERE owner_id IN (SELECT ROWID FROM aux.CalendarItem)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalContactClass, @"WHERE owner_id IN (SELECT ROWID FROM aux.CalendarItem)", 0, @"WHERE store_id = ?", v113);
                        *v113 = MEMORY[0x1E69E9820];
                        *&v113[8] = 3221225472;
                        *&v113[16] = ___CalDatabaseCopyToAuxDatabase_block_invoke;
                        v114 = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
                        v115 = RowidForRecordID;
                        _CalDatabaseCopyToAuxDatabaseWithChanges(v50, &kCalConferenceClass, @"WHERE owner_id IN (SELECT ROWID FROM aux.CalendarItem)", 0, @"WHERE store_id = ?", v113);
                        v54 = v88;
                        CalIdentityCopyDataToAuxDatabase(v88, RowidForRecordID, v50);
                        CalDatabasePersistentChangeTrackingCopyToAuxDatabase(v50, RowidForRecordID);
                        CalPerformSQLWithConnection(v50, @"INSERT OR REPLACE INTO aux._SqliteDatabaseProperties SELECT * FROM _SqliteDatabaseProperties WHERE key IN (CalLastCategoryChanges, CalLastCalendarChanges, CalLastEventRecurrenceChanges, CalLastEventAlarmChanges, __CPRecordSequenceNumber)");
                        CalPerformSQLWithConnection(v50, @"DETACH DATABASE aux");
                        v55 = _CalDatabaseCopyAuxDatabaseForPersonaID(v88);
                        if (v55)
                        {
LABEL_53:
                          v99[0] = MEMORY[0x1E69E9820];
                          v99[1] = 3221225472;
                          v99[2] = ___CalDatabaseMigrateStoreToSeparateDB_block_invoke_63;
                          v99[3] = &unk_1E86895B8;
                          v100[0] = v93;
                          v100[1] = v55;
                          CalPerformSQLWithConnectionAndBindBlock(v50, 0, @"INSERT OR REPLACE INTO AuxDatabaseAccount (account_id, database_id) VALUES (?, ?)", v99);
                          CFRelease(v55);
                          v25 = 1;
                          *(v54 + 363) = 1;
                          CalPerformSQLWithConnectionAndBindBlock(v50, 0, @"DELETE FROM Store WHERE ROWID = ?", v81);
                          *(v54 + 363) = 0;
                          [*(v54 + 312) removeAllObjects];
                          v57 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(2176, v14);
                          v58 = CalDatabaseCopyEventOccurrenceCache(v57);
                          _CalEventOccurrenceCacheForceRebuild(v58);
                          CFRelease(v58);
                          CFRelease(v57);
                          v59 = v100;
                        }

                        else
                        {
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 3221225472;
                          *&buf[16] = ___CalDatabaseMigrateStoreToSeparateDB_block_invoke_3;
                          v110 = &unk_1E8689508;
                          v111 = v14;
                          v112 = v84;
                          CalPerformSQLWithConnectionAndBindBlock(v50, 0, @"INSERT INTO AuxDatabase (path, persona_id) VALUES (?, ?)", buf);
                          v56 = _CalDatabaseCopyAuxDatabaseForPersonaID(v88);
                          if (v56)
                          {
                            v55 = v56;

                            v54 = v88;
                            goto LABEL_53;
                          }

                          v75 = CDBLogHandle;
                          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                          {
                            *v113 = 0;
                            _os_log_impl(&dword_1DEBB1000, v75, OS_LOG_TYPE_ERROR, "Couldn't insert aux db reference into main db", v113, 2u);
                          }

                          v25 = 0;
                          v59 = v79;
                        }

                        v13 = v84;
                        v17 = v86;

LABEL_67:
                        v26 = v92;
                        goto LABEL_78;
                      }

                      v67 = CDBLogHandle;
                      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        *v113 = 138543618;
                        *&v113[4] = v93;
                        *&v113[12] = 2112;
                        *&v113[14] = v14;
                        v62 = v67;
                        v63 = "Couldn't create database for account %{public}@ in directory %@";
                        v65 = 22;
LABEL_63:
                        _os_log_impl(&dword_1DEBB1000, v62, OS_LOG_TYPE_ERROR, v63, v113, v65);
                      }

LABEL_64:
                      v25 = 0;
                      v26 = v92;
                      v17 = v86;
                      goto LABEL_78;
                    }

                    v64 = CDBLogHandle;
                    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_64;
                    }

                    *v113 = 0;
                    v62 = v64;
                    v63 = "Couldn't get writer connection to database";
                  }

                  else
                  {
                    v61 = CDBLogHandle;
                    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_64;
                    }

                    *v113 = 0;
                    v62 = v61;
                    v63 = "No sqliteDB";
                  }

                  v65 = 2;
                  goto LABEL_63;
                }

                v60 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *v113 = 0;
                  _os_log_impl(&dword_1DEBB1000, v60, OS_LOG_TYPE_ERROR, "No record store.", v113, 2u);
                }

                v25 = 0;
                v26 = v92;
LABEL_79:

LABEL_80:
                v70 = CDBLogHandle;
                if (v25)
                {
                  v5 = v90;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    *&buf[4] = v8;
                    *&buf[12] = 2112;
                    *&buf[14] = v14;
                    v71 = v70;
                    v72 = OS_LOG_TYPE_DEFAULT;
                    v73 = "Account ID %{public}@ successfully migrated to %@";
                    v74 = 22;
                    goto LABEL_85;
                  }
                }

                else
                {
                  v5 = v90;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = v8;
                    v71 = v70;
                    v72 = OS_LOG_TYPE_ERROR;
                    v73 = "Account ID %{public}@ NOT migrated. Migration failed.";
                    v74 = 12;
LABEL_85:
                    _os_log_impl(&dword_1DEBB1000, v71, v72, v73, buf, v74);
                  }
                }

                v3 = v89;
LABEL_87:

                goto LABEL_88;
              }

              v91 = [v14 URLByAppendingPathComponent:v87];
              v27 = [v91 path];
              v28 = [v92 fileExistsAtPath:v27];

              if (v28)
              {
                v29 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *v113 = 138543618;
                  *&v113[4] = v93;
                  *&v113[12] = 2112;
                  *&v113[14] = v14;
                  _os_log_impl(&dword_1DEBB1000, v29, OS_LOG_TYPE_ERROR, "Found old database file in directory for account %{public}@ to be migrated to (%@). Deleting it.", v113, 0x16u);
                }

                v106 = v17;
                v30 = [v92 removeItemAtURL:v91 error:&v106];
                v31 = v106;

                if ((v30 & 1) == 0)
                {
                  v66 = CDBLogHandle;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *v113 = 138543618;
                    *&v113[4] = v93;
                    *&v113[12] = 2112;
                    v17 = v31;
                    *&v113[14] = v31;
                    _os_log_impl(&dword_1DEBB1000, v66, OS_LOG_TYPE_ERROR, "Unable to remove old database for account %{public}@: %@", v113, 0x16u);
                    v25 = 0;
                    goto LABEL_67;
                  }

                  v25 = 0;
                  v26 = v92;
                  v17 = v31;
LABEL_78:
                  v2 = v82;
                  goto LABEL_79;
                }

                v83 = v13;
                v85 = v14;
                v17 = v31;
              }

              else
              {
                v83 = v13;
                v85 = v14;
              }

              v32 = MEMORY[0x1E695DFF8];
              v33 = [v91 path];
              v34 = [v33 stringByAppendingString:@"-shm"];
              v35 = [v32 fileURLWithPath:v34];

              v36 = [v35 path];
              v26 = v92;
              LODWORD(v33) = [v92 fileExistsAtPath:v36];

              if (v33)
              {
                v105 = v17;
                v37 = [v92 removeItemAtURL:v35 error:&v105];
                v38 = v105;

                if (v37)
                {
                  v17 = v38;
                  goto LABEL_32;
                }

                v68 = CDBLogHandle;
                v17 = v38;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *v113 = 138543618;
                  *&v113[4] = v93;
                  *&v113[12] = 2112;
                  *&v113[14] = v38;
                  _os_log_impl(&dword_1DEBB1000, v68, OS_LOG_TYPE_ERROR, "Unable to remove old database-shm for account %{public}@: %@", v113, 0x16u);
                }

                v25 = 0;
                v13 = v83;
LABEL_76:
                v2 = v82;
                v14 = v85;
                goto LABEL_79;
              }

LABEL_32:
              v39 = MEMORY[0x1E695DFF8];
              v40 = [v91 path];
              v41 = [v40 stringByAppendingString:@"-wal"];
              v42 = [v39 fileURLWithPath:v41];

              v43 = [v42 path];
              LODWORD(v39) = [v92 fileExistsAtPath:v43];

              if (v39)
              {
                v104 = v17;
                v44 = [v92 removeItemAtURL:v42 error:&v104];
                v45 = v104;

                if ((v44 & 1) == 0)
                {
                  v69 = CDBLogHandle;
                  v13 = v83;
                  v17 = v45;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *v113 = 138543618;
                    *&v113[4] = v93;
                    *&v113[12] = 2112;
                    *&v113[14] = v45;
                    _os_log_impl(&dword_1DEBB1000, v69, OS_LOG_TYPE_ERROR, "Unable to remove old database-shm for account %{public}@: %@", v113, 0x16u);
                  }

                  v25 = 0;
                  v26 = v92;
                  goto LABEL_76;
                }

                v17 = v45;
              }

              v2 = v82;
              v13 = v83;

              v20 = v88;
              v14 = v85;
              goto LABEL_36;
            }

            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              v21 = v11;
              v22 = [v9 personaID];
              *buf = 138543618;
              *&buf[4] = v8;
              *&buf[12] = 2112;
              *&buf[14] = v22;
              _os_log_impl(&dword_1DEBB1000, v21, OS_LOG_TYPE_ERROR, "Account ID %{public}@ with persona ID %@{public}@ is data separated, but we couldn't get a container for it.", buf, 0x16u);
            }
          }

          v23 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v8;
            _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_DEFAULT, "Account ID %{public}@ does not need to be migrated out of the main database", buf, 0xCu);
          }

          goto LABEL_87;
        }

LABEL_88:

        ++v6;
      }

      while (v5 != v6);
      v76 = [v3 countByEnumeratingWithState:&v95 objects:v108 count:16];
      v5 = v76;
    }

    while (v76);
  }

  v77 = *MEMORY[0x1E69E9840];
  return 1;
}

void _CalDatabaseCopyToAuxDatabaseWithChanges(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v30 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v14 appendString:@"ROWID"];
  v15 = *(a2 + 18);
  if (v15 >= 1)
  {
    v16 = 0;
    for (i = 0; i < v15; ++i)
    {
      v18 = a2[10] + v16;
      if ((*(v18 + 24) & 4) == 0 && *(v18 + 8))
      {
        [v14 appendFormat:@", %s", *v18];
        v15 = *(a2 + 18);
      }

      v16 += 40;
    }
  }

  v19 = &stru_1F59E24D8;
  if (v30)
  {
    v19 = v30;
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO aux.%s (%@) SELECT %@ FROM %s %@", *a2, v14, v14, *a2, v19];
  CalPerformSQLWithConnectionAndBindBlock(a1, 0, v20, v11);
  if ((a2[7] & 2) != 0)
  {
    v29 = v13;
    v21 = [CFSTR(""ROWID record];
    v22 = v21;
    if ((a2[7] & 0x10) != 0)
    {
      [v21 appendString:{@", sequence_number"}];
    }

    v23 = *(a2 + 18);
    if (v23 >= 1)
    {
      v24 = 0;
      for (j = 0; j < v23; ++j)
      {
        v26 = a2[10];
        if ((*(v26 + v24 + 24) & 0xA) != 0)
        {
          [v22 appendFormat:@", %s", *(v26 + v24)];
          v23 = *(a2 + 18);
        }

        v24 += 40;
      }
    }

    v27 = &stru_1F59E24D8;
    if (v12)
    {
      v27 = v12;
    }

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO aux.%sChanges (%@) SELECT %@ FROM %sChanges %@", *a2, v22, v22, *a2, v27];
    v13 = v29;
    CalPerformSQLWithConnectionAndBindBlock(a1, 0, v28, v29);
  }
}

void sub_1DEBEE140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void CalErrorInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalErrorClass, &kCalErrorIndexes, 0);
}

void CalErrorMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 16004)
  {
    CPRecordStoreCreateTablesForClass();

    CalMigrationCreateIndexes(a2, &kCalErrorClass, &kCalErrorIndexes, 0);
  }
}

uint64_t CalErrorGetPropertyIDWithPropertyName(void *key)
{
  if (CalErrorGetPropertyIDWithPropertyName_onceToken != -1)
  {
    CalErrorGetPropertyIDWithPropertyName_cold_1();
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(CalErrorGetPropertyIDWithPropertyName_sPropDict, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __CalErrorGetPropertyIDWithPropertyName_block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = @"storeOwner";
  v3 = 7;
  v4 = @"calendarOwner";
  v5 = 8;
  v6 = @"calendarItemOwner";
  v7 = 9;
  v8 = @"errorType";
  v9 = 3;
  v10 = @"errorCode";
  v11 = 4;
  v12 = @"userInfoData";
  v13 = 5;
  CalErrorGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&v2, 6);
  for (i = 80; i != -16; i -= 16)
  {
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1DEBEECE8(_Unwind_Exception *a1)
{
  for (i = 80; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

const void *_CalDatabaseCreateError(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 24);
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

const void *CalDatabaseCreateError(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Error = _CalDatabaseCreateError(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Error;
}

void *_CalRemoveError(const void *a1)
{
  Owner = _CalErrorGetOwner(a1);
  if (Owner)
  {
    v3 = Owner;
    if (_CalEntityIsOfType(Owner, 6))
    {

      return _CalStoreSetError(v3, 0);
    }

    else if (_CalEntityIsOfType(v3, 1))
    {

      return _CalCalendarSetError(v3, 0);
    }

    else
    {

      return _CalCalendarItemSetError(v3, 0);
    }
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

CFTypeRef _CalErrorGetOwner(uint64_t a1)
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
  if (!Property || (v4 = Property, !CalRelationGetRelatedObject(Property)))
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

    v6 = CPRecordGetProperty();
    if (!v6 || (v4 = v6, !CalRelationGetRelatedObject(v6)))
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

      v8 = CPRecordGetProperty();
      if (!v8)
      {
        return 0;
      }

      v4 = v8;
      if (!CalRelationGetRelatedObject(v8))
      {
        return 0;
      }
    }
  }

  return CalRelationGetRelatedObject(v4);
}

void CalRemoveError(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveError(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalErrorCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalErrorGetOwner(a1);
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

CFTypeRef _CalErrorHasValidParent(uint64_t a1)
{
  result = _CalErrorGetOwner(a1);
  if (result)
  {

    return _CalRecordStillExists();
  }

  return result;
}

uint64_t _CalErrorGetWithUID(uint64_t a1)
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

uint64_t CalDatabaseCopyAllErrors(os_unfair_lock_s *a1)
{
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

    RecordStore = CPRecordStoreCopyAllInstancesOfClass();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return RecordStore;
}

id CalDatabaseGetIDOfOneEventWithAnErrorPerSource(int a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 20);
  if (!_CalDatabaseGetRecordStore(a2))
  {
    goto LABEL_30;
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
    goto LABEL_30;
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

  v7 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (!v7)
  {
    goto LABEL_30;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v7)
    {
      if (*(*v7 + 104))
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }
    }
  }

  v9 = CPSqliteConnectionStatementForSQL();
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_new();
    if (CDBLockingAssertionsEnabled == 1)
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

    CPSqliteStatementSendResults();
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
    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___CalDatabaseGetIDOfOneEventWithAnErrorPerSource_block_invoke;
    v19[3] = &unk_1E8689888;
    v21 = a1;
    v17 = v16;
    v20 = v17;
    [v11 enumerateKeysAndObjectsUsingBlock:v19];
  }

  else
  {
LABEL_30:
    v17 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a2 + 20);
  }

  os_unfair_lock_unlock(a2 + 20);

  return v17;
}

uint64_t _CalErrorGetRecordID(uint64_t a1)
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

uint64_t CalErrorGetErrorType(uint64_t a1)
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