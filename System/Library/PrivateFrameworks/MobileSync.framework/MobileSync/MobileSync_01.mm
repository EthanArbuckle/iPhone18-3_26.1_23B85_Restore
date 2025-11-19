void _RemoveProcessedMainRecordIds(const void *a1, uint64_t a2)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  v4 = *(a2 + 272);

  CFDictionaryRemoveValue(v4, a1);
}

void _UpdateOrganizerRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  RowID = CalCalendarItemGetRowID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 8, RowID);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

void _UpdateTaskRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  RowID = CalCalendarItemGetRowID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 3, RowID);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

void _UpdateAlarmRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  UID = CalAlarmGetUID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 4, UID);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

void _UpdateRecurrenceRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  UID = CalRecurrenceGetUID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 5, UID);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

void _UpdateAttendeeRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x25F84A400](a2);
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 7, v5);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

uint64_t _deconstructRecordIdentifier(const __CFString *a1, SInt32 *a2, SInt32 *a3, SInt32 *a4, SInt32 *a5)
{
  if (a5)
  {
    *a5 = -1;
  }

  if (a4)
  {
    *a4 = -1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (recordIdentifierIsLocal(a1))
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
    if (ArrayBySeparatingStrings)
    {
      v11 = ArrayBySeparatingStrings;
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      if (Count == 4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
        if (a2)
        {
          *a2 = CFStringGetIntValue(ValueAtIndex);
        }

        v17 = CFArrayGetValueAtIndex(v11, 1);
        if (a3)
        {
          *a3 = CFStringGetIntValue(v17);
        }

        v18 = CFArrayGetValueAtIndex(v11, 2);
        if (a4)
        {
          *a4 = CFStringGetIntValue(v18);
        }

        v15 = CFArrayGetValueAtIndex(v11, 3);
        if (!a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (Count != 2)
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          v14 = 0;
          goto LABEL_32;
        }

        v13 = CFArrayGetValueAtIndex(v11, 0);
        if (a3)
        {
          *a3 = CFStringGetIntValue(v13);
        }

        v14 = 1;
        v15 = CFArrayGetValueAtIndex(v11, 1);
        if (!a5)
        {
LABEL_32:
          CFRelease(v11);
          return v14;
        }
      }

      *a5 = CFStringGetIntValue(v15);
LABEL_28:
      v14 = 1;
      goto LABEL_32;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  return 0;
}

void _HandleAddOrModifyRecurrence(void *a1, const void *a2, CFDictionaryRef theDict, int a4)
{
  Value = CFDictionaryGetValue(theDict, @"owner");
  if (!Value || (v9 = Value, CFArrayGetCount(Value) < 1))
  {
    if (!DLShouldLog())
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

LABEL_11:
    _DLLog();
    goto LABEL_12;
  }

  LODWORD(valuePtr) = 0;
  v80 = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
  v11 = a1[21];
  if (v11)
  {
    v12 = CFDictionaryGetValue(v11, ValueAtIndex);
    if (v12)
    {
      ValueAtIndex = v12;
    }
  }

  v13 = 0;
  if (_deconstructRecordIdentifier(ValueAtIndex, 0, &v80, 0, &valuePtr) && valuePtr != -1)
  {
    if (v80 == 2)
    {
      v14 = a1[23];
      v13 = CalDatabaseCopyCalendarItemWithRowID();
      goto LABEL_13;
    }

    if (!DLShouldLog())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (a4 != -1)
  {
    v15 = a1[23];
    v16 = CalDatabaseCopyRecurrenceWithUID();
    if (v16)
    {
      if (v13)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  v16 = 0;
  if (v13)
  {
LABEL_18:
    v17 = MEMORY[0x25F84A9A0](v13);
    v18 = DLShouldLog();
    if (v16)
    {
      if (v18)
      {
        _DLLog();
      }

      MEMORY[0x25F84AA10](v13, v16);
    }

    else if (v18)
    {
      _DLLog();
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v19 = a1[23];
    Recurrence = CalDatabaseCreateRecurrence();
    if (DLShouldLog())
    {
      _DLLog();
    }

    v21 = a1[30];
    if (!v21)
    {
      v22 = a1[17];
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v21 = DLMemoryPoolAddObject();
      a1[30] = v21;
    }

    CFDictionaryAddValue(v21, a2, Recurrence);
    v23 = CFDictionaryGetValue(theDict, @"weekstartday");
    _GetDayOfWeekFromString(v23);
    CalRecurrenceSetWeekStart();
    v24 = CFDictionaryGetValue(theDict, @"frequency");
    if (!v24)
    {
      goto LABEL_52;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(v24, 0);
    if (CharacterAtIndex > 118)
    {
      if (CharacterAtIndex == 121 || CharacterAtIndex == 119)
      {
        goto LABEL_51;
      }
    }

    else if (CharacterAtIndex == 100 || CharacterAtIndex == 109)
    {
LABEL_51:
      CalRecurrenceSetFrequency();
LABEL_52:
      v26 = CFDictionaryGetValue(theDict, @"interval");
      if (v26)
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v26, kCFNumberIntType, &valuePtr))
        {
          if (valuePtr)
          {
            CalRecurrenceSetInterval();
          }
        }
      }

      v27 = CFDictionaryGetValue(theDict, @"count");
      if (v27 && (LODWORD(valuePtr) = 0, CFNumberGetValue(v27, kCFNumberIntType, &valuePtr)) && valuePtr)
      {
        CalRecurrenceSetCount();
      }

      else
      {
        v28 = *MEMORY[0x277CF78F0];
        v29 = CFDictionaryGetValue(theDict, @"until");
        if (v29)
        {
          v30 = v29;
          v31 = CFGetTypeID(v29);
          if (v31 == CFDateGetTypeID())
          {
            MEMORY[0x25F849FA0](v30);
            if (DLShouldLog())
            {
              _DLLog();
            }
          }
        }

        CalRecurrenceSetEndDate();
      }

      v32 = CFDictionaryGetValue(theDict, @"bymonth");
      if (v32)
      {
        v33 = v32;
        Count = CFArrayGetCount(v32);
        if (Count >= 1)
        {
          v35 = Count;
          v36 = 0;
          v37 = 0;
          do
          {
            LODWORD(valuePtr) = 0;
            v38 = CFArrayGetValueAtIndex(v33, v36);
            v39 = CFNumberGetValue(v38, kCFNumberIntType, &valuePtr) != 0;
            if (v39 && valuePtr != 0)
            {
              v40 = 1 << (valuePtr - 1);
            }

            else
            {
              v40 = 0;
            }

            v37 |= v40;
            ++v36;
          }

          while (v35 != v36);
          if (v37)
          {
            CalRecurrenceSetByMonthMonths();
          }
        }
      }

      v41 = CFDictionaryGetValue(theDict, @"byweeknumber");
      if (v41)
      {
        v42 = v41;
        v43 = CFArrayGetCount(v41);
        if (v43 >= 1)
        {
          v44 = v43;
          Mutable = CFArrayCreateMutable(0, v43, 0);
          for (i = 0; i != v44; ++i)
          {
            LODWORD(valuePtr) = 0;
            v47 = CFArrayGetValueAtIndex(v42, i);
            if (CFNumberGetValue(v47, kCFNumberIntType, &valuePtr))
            {
              CFArrayAppendValue(Mutable, valuePtr);
            }
          }

          if (CFArrayGetCount(Mutable))
          {
            CalRecurrenceSetByWeekWeeks();
          }

          CFRelease(Mutable);
        }
      }

      v48 = CFDictionaryGetValue(theDict, @"byyearday");
      if (v48)
      {
        v49 = v48;
        v50 = CFArrayGetCount(v48);
        if (v50 >= 1)
        {
          v51 = v50;
          v52 = CFArrayCreateMutable(0, v50, 0);
          for (j = 0; j != v51; ++j)
          {
            LODWORD(valuePtr) = 0;
            v54 = CFArrayGetValueAtIndex(v49, j);
            if (CFNumberGetValue(v54, kCFNumberIntType, &valuePtr))
            {
              CFArrayAppendValue(v52, valuePtr);
            }
          }

          if (CFArrayGetCount(v52))
          {
            CalRecurrenceSetByYearDayDays();
          }

          CFRelease(v52);
        }
      }

      v55 = CFDictionaryGetValue(theDict, @"bymonthday");
      if (v55)
      {
        v56 = v55;
        v57 = CFArrayGetCount(v55);
        if (v57 >= 1)
        {
          v58 = v57;
          v59 = CFArrayCreateMutable(0, v57, 0);
          for (k = 0; k != v58; ++k)
          {
            LODWORD(valuePtr) = 0;
            v61 = CFArrayGetValueAtIndex(v56, k);
            if (CFNumberGetValue(v61, kCFNumberIntType, &valuePtr))
            {
              CFArrayAppendValue(v59, valuePtr);
            }
          }

          if (CFArrayGetCount(v59))
          {
            CalRecurrenceSetByMonthDayDays();
          }

          CFRelease(v59);
        }
      }

      v62 = CFDictionaryGetValue(theDict, @"bysetpos");
      if (v62)
      {
        v63 = v62;
        v64 = CFArrayGetCount(v62);
        if (v64 >= 1)
        {
          v65 = v64;
          v66 = CFArrayCreateMutable(0, v64, 0);
          for (m = 0; m != v65; ++m)
          {
            LODWORD(valuePtr) = 0;
            v68 = CFArrayGetValueAtIndex(v63, m);
            if (CFNumberGetValue(v68, kCFNumberIntType, &valuePtr))
            {
              CFArrayAppendValue(v66, valuePtr);
            }
          }

          if (CFArrayGetCount(v66))
          {
            CalRecurrenceSetBySetPos();
          }

          CFRelease(v66);
        }
      }

      v69 = CFDictionaryGetValue(theDict, @"bydayfreq");
      v70 = CFDictionaryGetValue(theDict, @"bydaydays");
      if (v69)
      {
        v71 = v70;
        if (v70)
        {
          v72 = CFArrayGetCount(v69);
          if (v72 >= 1)
          {
            v73 = v72;
            if (CFArrayGetCount(v71) == v72)
            {
              valuePtr = 0;
              v74 = CFArrayCreateMutable(0, v73, MEMORY[0x277CF78F8]);
              for (n = 0; n != v73; ++n)
              {
                v80 = 0;
                v76 = CFArrayGetValueAtIndex(v69, n);
                v77 = CFArrayGetValueAtIndex(v71, n);
                LODWORD(v76) = CFNumberGetValue(v76, kCFNumberIntType, &v80);
                DayOfWeekFromString = _GetDayOfWeekFromString(v77);
                if (v76 && DayOfWeekFromString != 7)
                {
                  valuePtr = __PAIR64__(DayOfWeekFromString, v80);
                  CFArrayAppendValue(v74, &valuePtr);
                }
              }

              if (CFArrayGetCount(v74))
              {
                CalRecurrenceSetByDayDays();
              }

              CFRelease(v74);
            }
          }
        }
      }

      MEMORY[0x25F84A920](v13, Recurrence);
      CFRelease(Recurrence);
LABEL_123:
      CFRelease(v13);
      return;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    goto LABEL_52;
  }

LABEL_25:
  if (DLShouldLog())
  {
    _DLLog();
  }

  v13 = v16;
  if (v16)
  {
    goto LABEL_123;
  }
}

void _HandleAddOrModifyOrganizer(void *a1, const __CFString *a2, CFDictionaryRef theDict)
{
  v20 = 0;
  Value = CFDictionaryGetValue(theDict, @"common name");
  v7 = CFDictionaryGetValue(theDict, @"email");
  v8 = _CopyCalEntityOwner(a1, theDict, &v20);
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v8)
  {
    v19 = -1;
    if (_deconstructRecordIdentifier(a2, 0, 0, 0, &v19))
    {
      v9 = v19;
      if (v9 != CalCalendarItemGetRowID())
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        v10 = a1[23];
        v11 = CalDatabaseCopyCalendarItemWithRowID();
        if (v11)
        {
          v12 = v11;
          CalCalendarItemSetOrganizer();
          CFRelease(v12);
        }
      }
    }

    if (v20 == 2)
    {
      Organizer = MEMORY[0x25F84A970](v8);
      if (!Organizer)
      {
        if (DLShouldLog())
        {
          CalCalendarItemGetRowID();
          _DLLog();
        }

        v14 = a1[23];
        Organizer = CalDatabaseCreateOrganizer();
        CalCalendarItemSetOrganizer();
      }
    }

    else
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v15 = a1[23];
      Organizer = CalDatabaseCreateOrganizer();
    }

    v16 = a1[43];
    if (v16 && CFSetContainsValue(v16, v7))
    {
      CalOrganizerSetIsSelf();
    }

    MEMORY[0x25F84AB00](Organizer, v7);
    MEMORY[0x25F84AAF0](Organizer, Value);
    v17 = a1[31];
    if (!v17)
    {
      v18 = a1[17];
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v17 = DLMemoryPoolAddObject();
      a1[31] = v17;
    }

    CFDictionaryAddValue(v17, a2, v8);
    CFRelease(v8);
    if (Organizer)
    {
      CFRelease(Organizer);
    }
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }
}

void _HandleAddOrModifyAttendee(void *a1, const void *a2, CFDictionaryRef theDict, uint64_t a4)
{
  v22 = 0;
  Value = CFDictionaryGetValue(theDict, @"email");
  v9 = CFDictionaryGetValue(theDict, @"role");
  v10 = CFDictionaryGetValue(theDict, @"status");
  v11 = CFDictionaryGetValue(theDict, @"user type");
  v12 = CFDictionaryGetValue(theDict, @"common name");
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (a4 != -1)
  {
    v13 = MEMORY[0x25F84A660](a1[23], a4);
    if (v13)
    {
      goto LABEL_8;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  v13 = 0;
LABEL_8:
  v14 = _CopyCalEntityOwner(a1, theDict, &v22);
  if (v14)
  {
    v15 = v14;
    if (v13)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }
    }

    else
    {
      v16 = a1[23];
      Attendee = CalDatabaseCreateAttendee();
      if (!Attendee)
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        v13 = v15;
        goto LABEL_51;
      }

      v13 = Attendee;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v18 = v22;
      v19 = DLShouldLog();
      if (v18 == 2)
      {
        if (v19)
        {
          _DLLog();
        }

        MEMORY[0x25F84A900](v15, v13);
      }

      else if (v19)
      {
        _DLLog();
      }

      v20 = a1[32];
      if (!v20)
      {
        v21 = a1[17];
        CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v20 = DLMemoryPoolAddObject();
        a1[32] = v20;
      }

      CFDictionaryAddValue(v20, a2, v13);
    }

    MEMORY[0x25F84A420](v13, Value);
    if (v9 && CFStringCompare(v9, @"requiredparticipant", 0) && CFStringCompare(v9, @"optionalparticipant", 0) && CFStringCompare(v9, @"chair", 0))
    {
      CFStringCompare(v9, @"nonparticipant", 0);
    }

    CalAttendeeSetRole();
    if (v10 && CFStringCompare(v10, @"needsaction", 0) && CFStringCompare(v10, @"accepted", 0) && CFStringCompare(v10, @"declined", 0) && CFStringCompare(v10, @"tentative", 0) && CFStringCompare(v10, @"delegated", 0) && CFStringCompare(v10, @"completed", 0))
    {
      CFStringCompare(v10, @"inprocess", 0);
    }

    CalAttendeeSetStatus();
    if (v11 && CFStringCompare(v11, @"individual", 0) && CFStringCompare(v11, @"room", 0) && CFStringCompare(v11, @"resource", 0))
    {
      if (CFStringCompare(v11, @"group", 0))
      {
        CFStringCompare(v11, @"unknown", 0);
      }
    }

    CalAttendeeSetType();
    MEMORY[0x25F84A410](v13, v12);
    CFRelease(v15);
LABEL_51:
    CFRelease(v13);
    return;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v13)
  {
    goto LABEL_51;
  }
}

CFIndex _HandleCalendarOrdering(CFIndex result, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = result;
    result = CFArrayGetCount(theArray);
    if (result >= 1)
    {
      for (i = 0; i < result; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v6 = _CopyCalendarForUIDString(v3, ValueAtIndex);
        if (v6)
        {
          v7 = v6;
          CalCalendarSetDisplayOrder();
          CFRelease(v7);
        }

        result = CFArrayGetCount(theArray);
      }
    }
  }

  return result;
}

uint64_t _CopyParentCalendar(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"calendar");
  if (Value && (v4 = Value, CFArrayGetCount(Value) >= 1))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);

    return _CopyCalendarForUIDString(a1, ValueAtIndex);
  }

  else
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    return 0;
  }
}

uint64_t _CopyCalendarForUIDString(uint64_t a1, const __CFString *key)
{
  v2 = key;
  v4 = *(a1 + 168);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, key);
    if (Value)
    {
      v2 = Value;
    }
  }

  v9 = 0;
  v6 = _deconstructRecordIdentifier(v2, 0, &v9, 0, &v9 + 1);
  result = 0;
  if (v6 && HIDWORD(v9) != -1)
  {
    if (v9 == 1)
    {
      v8 = *(a1 + 184);
      result = CalDatabaseCopyCalendarWithUID();
      if (result)
      {
        return result;
      }

      if (!DLShouldLog())
      {
        return 0;
      }
    }

    else if (!DLShouldLog())
    {
      return 0;
    }

    _DLLog();
    return 0;
  }

  return result;
}

uint64_t _CopyCalEntityOwner(uint64_t a1, CFDictionaryRef theDict, SInt32 *a3)
{
  Value = CFDictionaryGetValue(theDict, @"owner");
  if (!Value || (v6 = Value, CFArrayGetCount(Value) < 1))
  {
    if (!DLShouldLog())
    {
      return 0;
    }

LABEL_11:
    _DLLog();
    return 0;
  }

  v13 = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = CFDictionaryGetValue(v8, ValueAtIndex);
    if (v9)
    {
      ValueAtIndex = v9;
    }
  }

  v10 = _deconstructRecordIdentifier(ValueAtIndex, 0, a3, 0, &v13);
  result = 0;
  if (v10 && v13 != -1)
  {
    if ((*a3 & 0xFFFFFFFE) == 2)
    {
      v12 = *(a1 + 184);
      return CalDatabaseCopyCalendarItemWithRowID();
    }

    if (!DLShouldLog())
    {
      return 0;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t _GetDayOfWeekFromString(const __CFString *a1)
{
  if (!a1)
  {
    return 7;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
  if (CharacterAtIndex <= 114)
  {
    if (CharacterAtIndex == 102)
    {
      return 5;
    }

    if (CharacterAtIndex == 109)
    {
      return 1;
    }
  }

  else
  {
    switch(CharacterAtIndex)
    {
      case 's':
        if (CFStringGetCharacterAtIndex(a1, 1) == 97)
        {
          return 6;
        }

        else
        {
          return 0;
        }

      case 'w':
        return 3;
      case 't':
        if (CFStringGetCharacterAtIndex(a1, 1) == 117)
        {
          return 2;
        }

        else
        {
          return 4;
        }
    }
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  return 7;
}

void _addRemapping(uint64_t a1, const void *a2, const void *a3)
{
  if (!*(a1 + 160))
  {
    v6 = *(a1 + 136);
    CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 160) = DLMemoryPoolAddObject();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v7 = *(a1 + 160);

  CFDictionarySetValue(v7, a2, a3);
}

const __CFString *dataTypeForDataClassName(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringCompare(result, @"com.apple.Bookmarks", 0))
    {
      if (CFStringCompare(v1, @"com.apple.Calendars", 0))
      {
        if (CFStringCompare(v1, @"com.apple.Contacts", 0))
        {
          if (CFStringCompare(v1, @"com.apple.MailAccounts", 0))
          {
            if (CFStringCompare(v1, @"com.apple.Notes", 0))
            {
              return 0;
            }

            else
            {
              return @"Notes";
            }
          }

          else
          {
            return @"Mail Accounts";
          }
        }

        else
        {
          return @"Contacts";
        }
      }

      else
      {
        return @"Calendars";
      }
    }

    else
    {
      return @"Bookmarks";
    }
  }

  return result;
}

const __CFString *dataClassNameForDataType(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringCompare(result, @"Bookmarks", 0))
    {
      if (CFStringCompare(v1, @"Calendars", 0))
      {
        if (CFStringCompare(v1, @"Contacts", 0))
        {
          if (CFStringCompare(v1, @"Mail Accounts", 0))
          {
            if (CFStringCompare(v1, @"Notes", 0))
            {
              return 0;
            }

            else
            {
              return @"com.apple.Notes";
            }
          }

          else
          {
            return @"com.apple.MailAccounts";
          }
        }

        else
        {
          return @"com.apple.Contacts";
        }
      }

      else
      {
        return @"com.apple.Calendars";
      }
    }

    else
    {
      return @"com.apple.Bookmarks";
    }
  }

  return result;
}

uint64_t setPlaybackEnabled(char a1)
{
  result = DLShouldLog();
  if (result)
  {
    result = _DLLog();
  }

  playbackEnabledChecked = 1;
  playbackEnabled = a1;
  return result;
}

uint64_t SyncPlaybackEnabled()
{
  if (playbackEnabledChecked == 1)
  {
    v0 = playbackEnabled;
  }

  else
  {
    playbackEnabledChecked = 1;
    keyExistsAndHasValidFormat = 0;
    v0 = CFPreferencesGetAppBooleanValue(@"SyncPlayback", @"com.apple.SyncServices.iPodSync", &keyExistsAndHasValidFormat) != 0;
    if (keyExistsAndHasValidFormat)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }
    }

    else
    {
      v0 = 0;
    }

    playbackEnabled = v0;
  }

  return v0 & 1;
}

const __CFString *CreateCleanUuid(const __CFString *a1)
{
  v1 = a1;
  if (CFStringHasPrefix(a1, @"com.apple.syncservices:"))
  {
    Length = CFStringGetLength(v1);
    v3 = CFStringGetLength(@"com.apple.syncservices:");
    v4 = Length <= v3;
    v5 = Length - v3;
    if (v4)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }
    }

    else
    {
      v6 = v3;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v9.location = v6;
      v9.length = v5;
      v7 = CFStringCreateWithSubstring(0, v1, v9);
      if (DLShouldLog())
      {
        _DLLog();
      }

      return v7;
    }
  }

  else
  {
    CFRetain(v1);
  }

  return v1;
}

uint64_t recordIdentifierIsLocal(const __CFString *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (CFStringHasPrefix(a1, @"com.apple.syncservices:"))
  {
LABEL_2:
    result = 0;
    goto LABEL_8;
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr || (CStringPtr = buffer, result = CFStringGetCString(a1, buffer, 64, 0x8000100u), result))
  {
    if (strlen(CStringPtr) < 9 || CStringPtr[8] != 45)
    {
      result = 1;
      goto LABEL_8;
    }

    goto LABEL_2;
  }

LABEL_8:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BookmarksDataSourceCreator(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = malloc_type_calloc(0xE0uLL, 1uLL, 0x10E0040BD649324uLL);
  *a1 = v5;
  *v5 = *MEMORY[0x277CBED28];
  *(v5 + 1) = @"~/Library/Safari/com.apple.Bookmarks.lock";
  *(v5 + 2) = BookmarksDataSourceGetVersionFunction;
  *(v5 + 3) = BookmarksDataSourceCanSyncWithVersionFunction;
  *(v5 + 4) = 0;
  *(v5 + 5) = BookmarksDataSourceRemoveStoreFunction;
  *(v5 + 6) = BookmarksDataSourceGetSyncTypeAndExchangeSyncAnchors;
  *(v5 + 7) = BookmarksDataSourceClearSyncAnchors;
  *(v5 + 8) = BookmarksDataSourceClearAllRecords;
  *(v5 + 9) = BookmarksDataSourceGetChanges;
  *(v5 + 10) = BookmarksDataSourceGetAllRecords;
  *(v5 + 11) = BookmarksDataSourceGetCountOfRecords;
  *(v5 + 12) = BookmarksDataSourceProcessChanges;
  *(v5 + 13) = BookmarksDataSourceCommit;
  *(v5 + 14) = BookmarksDataSourceRollback;
  *(v5 + 15) = BookmarksDataSourceGetEntityTypeProcessOrder;
  *(v5 + 16) = BookmarksDataSourceDeleteDataSource;
  *(v5 + 17) = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 204) = 0u;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"ShouldClearHiddenBookmarks");
    if (Value)
    {
      v7 = Value;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v5[219] = CFBooleanGetValue(v7);
    }
  }

  return 0;
}

uint64_t BookmarksDataSourceGetVersionFunction(uint64_t a1, CFTypeRef *a2)
{
  v3 = kBookmarksDataSourceVersion;
  if (!kBookmarksDataSourceVersion)
  {
    v3 = CFNumberCreate(0, kCFNumberIntType, &kDefaultDataSourceVersion);
    kBookmarksDataSourceVersion = v3;
  }

  *a2 = CFRetain(v3);
  return 0;
}

uint64_t BookmarksDataSourceRemoveStoreFunction(id *a1, uint64_t a2, void *a3)
{
  BookmarksDataSourceClearAllRecords(a1);
  [a1[17] syncSetString:0 forKey:@"ComputerAnchorKey"];
  [a1[17] syncSetString:0 forKey:@"BookmarksLastGeneration"];

  return BookmarksDataSourceCommit(a1, a3);
}

uint64_t BookmarksDataSourceGetSyncTypeAndExchangeSyncAnchors(uint64_t a1, CFTypeRef *a2, uint64_t a3, __CFString *a4, CFTypeRef *a5, CFTypeRef *a6, void *a7)
{
  *a7 = 0;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = @"Empty-Bookmarks-Anchor";
  }

  *(a1 + 200) = CFRetain(v11);
  v12 = [*(a1 + 136) syncStringForKey:@"ComputerAnchorKey"];
  v13 = v12;
  if (!v12)
  {
    v12 = @"Unknown-Bookmarks-Anchor";
  }

  *a5 = CFRetain(v12);
  *a6 = CFRetain(@"Bookmarks-Device-Anchor");
  v14 = [*(a1 + 136) bookmarksDictionary];
  if (v14)
  {
LABEL_12:
    v17 = v14;
    if (v13)
    {
      v18 = [objc_msgSend(*(a1 + 136) syncStringForKey:{@"BookmarksLastGeneration", "integerValue"}];
      if (v18 == [*(a1 + 136) generation])
      {
        *a2 = CFRetain(@"SDSyncTypeFast");
        if ((DLShouldLog() & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *a2 = CFRetain(@"SDSyncTypeSlow");
        if (!DLShouldLog())
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      *a2 = CFRetain(@"SDSyncTypeReset");
      if ((DLShouldLog() & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    _DLLog();
LABEL_20:
    v19 = 5;
    while (([*(a1 + 136) beginSyncTransaction] & 1) == 0)
    {
      sleep(1u);
      if (!--v19)
      {
        return 0xFFFFFFFFLL;
      }
    }

    *(a1 + 144) = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v17, 2uLL);
    if (DLShouldLog())
    {
      _DLLog();
    }

    _initializeMaps(a1);
    return 0;
  }

  v15 = 6;
  while (1)
  {
    v16 = DLShouldLog();
    if (!--v15)
    {
      break;
    }

    if (v16)
    {
      _DLLog();
    }

    sleep(1u);
    v14 = [*(a1 + 136) bookmarksDictionary];
    if (v14)
    {
      goto LABEL_12;
    }
  }

  if (v16)
  {
    _DLLog();
  }

  return 0xFFFFFFFFLL;
}

uint64_t BookmarksDataSourceClearSyncAnchors(uint64_t a1)
{
  [*(a1 + 136) syncSetString:0 forKey:@"ComputerAnchorKey"];
  [*(a1 + 136) syncSetString:0 forKey:@"BookmarksLastGeneration"];
  return 0;
}

uint64_t BookmarksDataSourceClearAllRecords(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 152) = 0;
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 160) = 0;
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 168) = 0;
  }

  valuePtr = 1;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v8 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 144) = v8;
  CFDictionarySetValue(v8, @"Children", Mutable);
  CFRelease(Mutable);
  CFDictionarySetValue(v8, @"WebBookmarkType", @"WebBookmarkTypeList");
  CFDictionarySetValue(v8, @"WebBookmarkFileVersion", v6);
  CFRelease(v6);
  CFDictionarySetValue(v8, @"WebBookmarkUUID", @"Root");
  _initializeMaps(a1);
  *(a1 + 218) = 1;
  return 0;
}

uint64_t BookmarksDataSourceGetChanges(uint64_t a1, void *a2, void *a3)
{
  _createBookmarksForChildren(a1, *(a1 + 144), 0, 0);
  *a2 = 0;
  *a3 = *MEMORY[0x277CBED10];
  return 0;
}

uint64_t BookmarksDataSourceGetAllRecords(uint64_t a1, CFDictionaryRef *a2, void *a3)
{
  _createBookmarksForChildren(a1, *(a1 + 144), 0, 1);
  *a2 = CFDictionaryCreateCopy(0, *(a1 + 160));
  *a3 = *MEMORY[0x277CBED10];
  return 0;
}

uint64_t BookmarksDataSourceProcessChanges(_BYTE *a1, CFDictionaryRef theDict, uint64_t a3, void *a4)
{
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    CFDictionaryApplyFunction(theDict, _processRecord, a1);
    a1[218] = 1;
  }

  *a4 = 0;
  return 0;
}

uint64_t BookmarksDataSourceCommit(void *context, void *a2)
{
  v4 = *(context + 23);
  if (v4 && CFDictionaryGetCount(v4) && DLShouldLog())
  {
    v8 = *(context + 23);
    _DLLog();
  }

  if (*(context + 218) != 1)
  {
    goto LABEL_11;
  }

  v5 = *(context + 22);
  if (v5)
  {
    CFSetApplyFunction(v5, _sortBookmarksForParentUuid, context);
  }

  v9 = 0;
  if (DLShouldLog())
  {
    v8 = *(context + 18);
    _DLLog();
  }

  if (![*(context + 17) mergeWithBookmarksDictionary:*(context + 18) clearHidden:*(context + 219) != 0 error:{&v9, v8}])
  {
    *a2 = [v9 description];
    if (DLShouldLog())
    {
      v8 = v9;
      _DLLog();
    }

    [*(context + 17) rollbackSyncTransaction];
    return 0xFFFFFFFFLL;
  }

  else
  {
LABEL_11:
    [*(context + 17) syncSetString:*(context + 25) forKey:{@"ComputerAnchorKey", v8}];
    [*(context + 17) syncSetString:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%ld", objc_msgSend(*(context + 17), "generation")), @"BookmarksLastGeneration"}];
    [*(context + 17) commitSyncTransaction];
    if (*(context + 218) == 1)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.bookmarks.BookmarksFileChanged", 0, 0, 0);
    }

    return 0;
  }
}

uint64_t BookmarksDataSourceGetEntityTypeProcessOrder(uint64_t a1, __CFArray **a2)
{
  Mutable = *(a1 + 208);
  if (!Mutable)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v7 = CFArrayCreateMutable(v5, 0, v6);
    CFArrayAppendValue(v7, @"com.apple.bookmarks.Folder");
    CFArrayAppendValue(Mutable, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v8, @"com.apple.bookmarks.Bookmark");
    CFArrayAppendValue(Mutable, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    *(a1 + 208) = Mutable;
  }

  *a2 = Mutable;
  return 0;
}

uint64_t BookmarksDataSourceDeleteDataSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 152) = 0;
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 160) = 0;
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 168) = 0;
  }

  v6 = *(a1 + 176);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 176) = 0;
  }

  v7 = *(a1 + 184);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 184) = 0;
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 192) = 0;
  }

  v9 = *(a1 + 200);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 200) = 0;
  }

  v10 = *(a1 + 208);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 208) = 0;
  }

  free(a1);
  return 0;
}

void _initializeMaps(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  a1[19] = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  a1[20] = CFDictionaryCreateMutable(v2, 0, v3, v4);
  a1[21] = CFDictionaryCreateMutable(v2, 0, v3, v4);
  v6 = a1[18];
  v5 = a1[19];

  CFDictionarySetValue(v5, @"Root", v6);
}

void _createBookmarksForChildren(uint64_t a1, const __CFDictionary *a2, void *a3, uint64_t a4)
{
  Value = CFDictionaryGetValue(a2, @"Children");
  if (Value)
  {
    v8 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      v26 = a4;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
        v13 = CFDictionaryGetValue(ValueAtIndex, @"WebBookmarkUUID");
        v14 = CFDictionaryGetValue(ValueAtIndex, @"WebBookmarkType");
        if (v13)
        {
          v15 = v14;
          if (v14)
          {
            if (a3)
            {
              CFDictionarySetValue(*(a1 + 168), v13, a3);
            }

            CFDictionarySetValue(*(a1 + 152), v13, ValueAtIndex);
            if (CFStringCompare(v15, @"WebBookmarkTypeLeaf", 0) == kCFCompareEqualTo)
            {
              if (a4 != 1)
              {
                goto LABEL_47;
              }

              v16 = CFDictionaryGetValue(ValueAtIndex, @"URLString");
              v17 = CFDictionaryGetValue(ValueAtIndex, @"URIDictionary");
              v18 = v17 ? CFDictionaryGetValue(v17, @"title") : 0;
              Mutable = CFDictionaryCreateMutable(0, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.bookmarks.Bookmark");
              v24 = v18 ? v18 : &stru_286BC1018;
              CFDictionarySetValue(Mutable, @"name", v24);
              v25 = v16 ? v16 : &stru_286BC1018;
              CFDictionarySetValue(Mutable, @"url", v25);
              _setParentUUIDAndPosition(Mutable, a3, v11);
              a4 = v26;
              if (!Mutable)
              {
                goto LABEL_47;
              }

LABEL_46:
              CFDictionarySetValue(*(a1 + 160), v13, Mutable);
              CFRelease(Mutable);
              goto LABEL_47;
            }

            if (CFStringCompare(v15, @"WebBookmarkTypeList", 0))
            {
              if (CFStringCompare(v15, @"WebBookmarkTypeProxy", 0) == kCFCompareEqualTo || !DLShouldLog())
              {
                goto LABEL_47;
              }

LABEL_16:
              _DLLog();
              goto LABEL_47;
            }

            if (a4 == 1)
            {
              v19 = CFDictionaryGetValue(ValueAtIndex, @"Title");
              if (v19)
              {
                v20 = v19;
                Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.bookmarks.Folder");
                CFDictionarySetValue(Mutable, @"name", v20);
                v22 = v11;
                if (!a3)
                {
                  if (*(a1 + 216) || CFStringCompare(v20, @"BookmarksBar", 0))
                  {
                    v22 = v11;
                    if (!*(a1 + 217))
                    {
                      v23 = CFStringCompare(v20, @"BookmarksMenu", 0);
                      v22 = v11;
                      if (v23 == kCFCompareEqualTo)
                      {
                        *(a1 + 217) = 1;
                        goto LABEL_42;
                      }
                    }
                  }

                  else
                  {
                    *(a1 + 216) = 1;
LABEL_42:
                    v22 = -2;
                  }
                }

                _setParentUUIDAndPosition(Mutable, a3, v22);
              }

              else
              {
                if (DLShouldLog())
                {
                  _DLLog();
                }

                Mutable = 0;
              }

              a4 = v26;
            }

            else
            {
              Mutable = 0;
            }

            _createBookmarksForChildren(a1, ValueAtIndex, v13, a4);
            if (Mutable)
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          }

          if (DLShouldLog())
          {
            goto LABEL_16;
          }
        }

        else if (DLShouldLog())
        {
          goto LABEL_16;
        }

LABEL_47:
        ++v11;
      }

      while (v10 != v11);
    }
  }
}

void _setParentUUIDAndPosition(__CFDictionary *a1, void *a2, uint64_t a3)
{
  values[1] = *MEMORY[0x277D85DE8];
  valuePtr = a3;
  if (a2)
  {
    values[0] = a2;
    v4 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    CFDictionarySetValue(a1, @"parent", v4);
    CFRelease(v4);
  }

  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(a1, @"position", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t _getCountOfChildrenForContainer(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"WebBookmarkType");
  if (CFStringCompare(Value, @"WebBookmarkTypeLeaf", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(Value, @"WebBookmarkTypeList", 0))
  {
    return 0;
  }

  v5 = CFDictionaryGetValue(a1, @"Title");
  v3 = v5;
  if (v5)
  {
    if (CFStringCompare(v5, @"BookmarksBar", 0))
    {
      v3 = CFStringCompare(v3, @"BookmarksMenu", 0) != kCFCompareEqualTo;
    }

    else
    {
      v3 = 0;
    }
  }

  v6 = CFDictionaryGetValue(a1, @"Children");
  if (v6)
  {
    v7 = v6;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
          v3 = _getCountOfChildrenForContainer(ValueAtIndex) + v3;
        }
      }
    }
  }

  return v3;
}

void _processRecord(const __CFString *a1, const void *a2, const __CFDictionary **a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Value = CFDictionaryGetValue(a3[21], a1);
    if (Value)
    {
      v8 = CFDictionaryGetValue(a3[19], Value);
      if (v8)
      {
LABEL_4:

        _removeChild(v8, a1);
        return;
      }
    }

    else
    {
      v8 = a3[18];
      if (v8)
      {
        goto LABEL_4;
      }
    }

    if (!DLShouldLog())
    {
      return;
    }

LABEL_16:
    _DLLog();
    return;
  }

  v9 = CFDictionaryGetValue(a2, @"com.apple.syncservices.RecordEntityName");
  if (!v9)
  {
    if (!DLShouldLog())
    {
      return;
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = CFStringCompare(v9, @"com.apple.bookmarks.Bookmark", 0);
  if (v11)
  {
    if (CFStringCompare(v10, @"com.apple.bookmarks.Folder", 0))
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_16;
    }

    v12 = @"WebBookmarkTypeList";
  }

  else
  {
    v12 = @"WebBookmarkTypeLeaf";
  }

  v13 = CFDictionaryGetValue(a3[19], a1);
  if (v13)
  {
    v14 = CFDictionaryGetValue(a3[21], a1);
    Mutable = v13;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(a3[19], a1, Mutable);
    CFRelease(Mutable);
    v14 = 0;
  }

  v16 = CFDictionaryGetValue(a2, @"parent");
  ValueAtIndex = v16;
  if (v16)
  {
    if (CFArrayGetCount(v16) < 1)
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    }
  }

  v18 = a3[22];
  if (!v18)
  {
    v18 = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
    a3[22] = v18;
  }

  if (ValueAtIndex)
  {
    v19 = ValueAtIndex;
  }

  else
  {
    v19 = @"Root";
  }

  CFSetAddValue(v18, v19);
  v20 = CFDictionaryGetValue(a2, @"position");
  if (v20)
  {
    CFDictionarySetValue(Mutable, @"position", v20);
  }

  if (!v13 || v14 == ValueAtIndex)
  {
    if (v13)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (!v14 || !ValueAtIndex)
  {
    if (v14)
    {
LABEL_42:
      v21 = CFDictionaryGetValue(a3[19], v14);
      if (!v21)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v21 = a3[18];
    if (v21)
    {
LABEL_43:
      _removeChild(v21, a1);
    }

LABEL_44:
    if (ValueAtIndex)
    {
      v22 = CFDictionaryGetValue(a3[19], ValueAtIndex);
      if (v22)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v22 = a3[18];
      if (v22)
      {
LABEL_46:
        _addChild(v22, Mutable);
        if (v13)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    v38 = a3[23];
    if (!v38)
    {
      v38 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      a3[23] = v38;
    }

    v39 = CFDictionaryGetValue(v38, ValueAtIndex);
    if (!v39)
    {
      v39 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      CFDictionaryAddValue(a3[23], ValueAtIndex, v39);
      CFRelease(v39);
    }

    CFArrayAppendValue(v39, a1);
    if (v13)
    {
LABEL_48:
      if (!ValueAtIndex)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

LABEL_47:
    CFDictionarySetValue(Mutable, @"WebBookmarkType", v12);
    CFDictionarySetValue(Mutable, @"WebBookmarkUUID", a1);
    goto LABEL_48;
  }

  if (CFStringCompare(v14, ValueAtIndex, 0))
  {
    goto LABEL_42;
  }

LABEL_49:
  CFDictionarySetValue(a3[21], a1, ValueAtIndex);
LABEL_50:
  v23 = CFDictionaryGetValue(a2, @"name");
  v24 = v23;
  if (v11)
  {
    if (!v23)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v24 = @"Folder";
    }

    CFDictionarySetValue(Mutable, @"Title", v24);
    if (!v13 && ([(__CFString *)v24 isEqualToString:@"Bookmarks Menu"]& 1) == 0 && ([(__CFString *)v24 isEqualToString:@"Bookmarks Bar"]& 1) == 0)
    {
      v25 = a3[23];
      if (v25)
      {
        v26 = CFDictionaryGetValue(v25, a1);
        if (v26)
        {
          v27 = v26;
          Count = CFArrayGetCount(v26);
          if (Count >= 1)
          {
            v29 = Count;
            for (i = 0; i != v29; ++i)
            {
              v31 = CFDictionaryGetValue(a3[19], a1);
              v32 = CFArrayGetValueAtIndex(v27, i);
              v33 = CFDictionaryGetValue(a3[19], v32);
              if (v33)
              {
                _addChild(v31, v33);
              }

              else if (DLShouldLog())
              {
                _DLLog();
              }
            }
          }

          v34 = a3[23];

          CFDictionaryRemoveValue(v34, a1);
        }
      }
    }
  }

  else
  {
    v35 = CFDictionaryGetValue(Mutable, @"URIDictionary");
    if (!v35)
    {
      v35 = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"URIDictionary", v35);
      CFRelease(v35);
    }

    v36 = CFDictionaryGetValue(a2, @"url");
    if (!v36)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v36 = &stru_286BC1018;
    }

    if (v24)
    {
      v37 = v24;
    }

    else
    {
      v37 = v36;
    }

    CFDictionarySetValue(v35, &stru_286BC1018, v36);
    CFDictionarySetValue(v35, @"title", v37);

    CFDictionarySetValue(Mutable, @"URLString", v36);
  }
}

void _removeChild(const __CFDictionary *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, @"Children");
  if (Value)
  {
    v4 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        v9 = CFDictionaryGetValue(ValueAtIndex, @"WebBookmarkUUID");
        if (v9)
        {
          if (CFStringCompare(v9, a2, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }

        if (v6 == ++v7)
        {
          return;
        }
      }

      CFArrayRemoveValueAtIndex(v4, v7);
    }
  }
}

void _addChild(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, @"Children");
  if (!Value)
  {
    Value = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    CFDictionarySetValue(a1, @"Children", Value);
    CFRelease(Value);
  }

  CFArrayAppendValue(Value, a2);
}

void _sortBookmarksForParentUuid(void *key, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a2 + 152), key);
  if (!Value)
  {
    if (!DLShouldLog())
    {
      return;
    }

LABEL_15:
    _DLLog();
    return;
  }

  v3 = CFDictionaryGetValue(Value, @"Children");
  if (!v3)
  {
    if (!DLShouldLog())
    {
      return;
    }

    goto LABEL_15;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  valuePtr = 0;
  if (Count < 1)
  {
    v11.location = 0;
    v11.length = Count;

    CFArraySortValues(v4, v11, _childrenSortCallback, 0);
  }

  else
  {
    for (i = 0; i < Count; valuePtr = i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
      if (!CFDictionaryGetValue(ValueAtIndex, @"position"))
      {
        v8 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
        CFDictionaryAddValue(ValueAtIndex, @"position", v8);
        CFRelease(v8);
      }

      i = valuePtr + 1;
    }

    v14.location = 0;
    v14.length = Count;
    CFArraySortValues(v4, v14, _childrenSortCallback, 0);
    valuePtr = 0;
    for (j = 0; j < Count; valuePtr = j)
    {
      v10 = CFArrayGetValueAtIndex(v4, j);
      CFDictionaryRemoveValue(v10, @"position");
      j = valuePtr + 1;
    }
  }
}

CFComparisonResult _childrenSortCallback(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v21 = 0;
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"position");
  v5 = CFDictionaryGetValue(a2, @"position");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  }

  if (v5)
  {
    CFNumberGetValue(v5, kCFNumberLongType, &v21);
    v6 = v21;
  }

  else
  {
    v6 = 0;
  }

  if (valuePtr < v6)
  {
    return -1;
  }

  if (valuePtr > v6)
  {
    return 1;
  }

  v8 = CFDictionaryGetValue(a1, @"WebBookmarkType");
  v9 = CFDictionaryGetValue(a2, @"WebBookmarkType");
  v10 = v9;
  if (v8)
  {
    v11 = CFStringCompare(v8, @"WebBookmarkTypeList", 0);
    LODWORD(v8) = v11 == kCFCompareEqualTo;
    v12 = v11 != kCFCompareEqualTo;
    if (v10)
    {
LABEL_12:
      v13 = CFStringCompare(v10, @"WebBookmarkTypeList", 0);
      LODWORD(v10) = v13 == kCFCompareEqualTo;
      v14 = v13 != kCFCompareEqualTo;
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 1;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_15:
  if ((v12 | v10) != 1)
  {
    return -1;
  }

  if ((v8 | v14) != 1)
  {
    return 1;
  }

  if (v8)
  {
    v15 = @"Title";
    v16 = a1;
  }

  else
  {
    v16 = CFDictionaryGetValue(a1, @"URIDictionary");
    if (!v16)
    {
      v17 = 0;
      if (v10)
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    v15 = @"title";
  }

  v17 = CFDictionaryGetValue(v16, v15);
  if (v10)
  {
LABEL_22:
    v18 = @"Title";
    v19 = a2;
    goto LABEL_26;
  }

LABEL_24:
  v19 = CFDictionaryGetValue(a2, @"URIDictionary");
  if (v19)
  {
    v18 = @"title";
LABEL_26:
    v20 = CFDictionaryGetValue(v19, v18);
    if (v17)
    {
      if (v20)
      {
        return CFStringCompare(v17, v20, 0);
      }

      return 1;
    }

    return -1;
  }

  if (v17)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t _identityStringWithInfo(void *a1, __CFString *a2, __CFString *a3)
{
  v4 = a2;
  v6 = MEMORY[0x277CB8BA0];
  v7 = @"@";
  if (a1 && !a2)
  {
    if (([a1 isEqualToString:*MEMORY[0x277CB8CF8]] & 1) != 0 || objc_msgSend(a1, "isEqualToString:", *v6))
    {
      v4 = &stru_286BC1018;
      v7 = &stru_286BC1018;
    }

    else
    {
      v4 = 0;
      v7 = &stru_286BC1018;
    }
  }

  v8 = [a1 isEqualToString:*v6];
  v9 = @"smtp.icloud.com";
  if (!v8)
  {
    v9 = a3;
  }

  if (!a1 || v9)
  {
LABEL_13:
    if (!a1)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if ([a1 isEqualToString:*MEMORY[0x277CB8D38]])
  {
    v9 = @"Yahoo";
    goto LABEL_13;
  }

  v11 = [a1 isEqualToString:*MEMORY[0x277CB8C40]];
  v9 = @"Gmail";
  if (!v11)
  {
    v9 = 0;
  }

LABEL_14:
  if (v4 && v9)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@%@%@", a1, v4, v7, v9];
  }

  return 0;
}

uint64_t _bestiCloudUsernameFromEmails(void *a1, void *a2)
{
  if ([a1 rangeOfString:@"@"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 count])
  {
    v4 = [objc_msgSend(a1 "lowercaseString")];
    if (_bestiCloudUsernameFromEmails_onceToken != -1)
    {
      v7 = v4;
      _bestiCloudUsernameFromEmails_cold_1();
      v4 = v7;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___bestiCloudUsernameFromEmails_block_invoke_3;
    v8[3] = &unk_279916CF0;
    v8[4] = v4;
    v8[5] = &__block_literal_global_69;
    v5 = [objc_msgSend(a2 sortedArrayUsingComparator:{v8), "objectAtIndex:", 0}];
  }

  else
  {
    v5 = 0;
  }

  if (![v5 length])
  {
    return [a1 stringByAppendingString:@"@icloud.com"];
  }

  return v5;
}

uint64_t MailAccountsDataSourceCreator(void *a1)
{
  v2 = malloc_type_calloc(0xB8uLL, 1uLL, 0x10E004094752654uLL);
  *a1 = v2;
  *v2 = *MEMORY[0x277CBED28];
  v2[2] = MailAccountsDataSourceGetVersionFunction;
  v2[3] = MailAccountsDataSourceCanSyncWithVersionFunction;
  v2[5] = 0;
  v2[6] = MailAccountsDataSourceGetSyncTypeAndExchangeSyncAnchors;
  v2[7] = 0;
  v2[8] = MailAccountsDataSourceClearAllRecords;
  v2[9] = MailAccountsDataSourceGetChanges;
  v2[10] = MailAccountsDataSourceGetAllRecords;
  v2[11] = MailAccountsDataSourceGetCountOfRecords;
  v2[12] = MailAccountsDataSourceProcessChanges;
  v2[13] = MailAccountsDataSourceCommit;
  v2[14] = MailAccountsDataSourceRollback;
  v2[16] = MailAccountsDataSourceDeleteDataSource;
  *(v2 + 68) = 0;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  v2[22] = objc_alloc_init(MEMORY[0x277CB8F48]);
  return 0;
}

uint64_t MailAccountsDataSourceGetVersionFunction(uint64_t a1, CFTypeRef *a2)
{
  v3 = kMailAccountsDataSourceVersion;
  if (!kMailAccountsDataSourceVersion)
  {
    v3 = CFNumberCreate(0, kCFNumberIntType, &kDefaultDataSourceVersion);
    kMailAccountsDataSourceVersion = v3;
  }

  *a2 = CFRetain(v3);
  return 0;
}

uint64_t MailAccountsDataSourceGetSyncTypeAndExchangeSyncAnchors(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v9 = [*(a1 + 176) hasMailAccountsForSync];
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v9)
  {
    v10 = @"SDSyncTypeFast";
  }

  else
  {
    v10 = @"SDSyncTypeReset";
  }

  *a2 = CFRetain(v10);
  *a5 = CFRetain(@"MailAccounts-Computer-Anchor");
  *a6 = CFRetain(@"MailAccounts-Device-Anchor");
  return 0;
}

uint64_t MailAccountsDataSourceClearAllRecords()
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  return 0;
}

uint64_t MailAccountsDataSourceGetChanges(uint64_t a1, void *a2, void *a3)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = 0;
  *a3 = *MEMORY[0x277CBED10];
  return 0;
}

uint64_t MailAccountsDataSourceGetAllRecords(uint64_t a1, void *a2, void *a3)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = 0;
  *a3 = *MEMORY[0x277CBED10];
  return 0;
}

uint64_t MailAccountsDataSourceGetCountOfRecords(uint64_t a1, _DWORD *a2)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = 0;
  return 0;
}

uint64_t MailAccountsDataSourceProcessChanges(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    if (!*(a1 + 144))
    {

      *(a1 + 144) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(a1 + 152) = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ((*(a1 + 136) & 1) == 0)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = [*(a1 + 176) mailAccountsForSync];
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v17;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v17 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v16 + 1) + 8 * i);
              v13 = [v12 syncIdentityString];
              if (v13)
              {
                [*(a1 + 144) setValue:objc_msgSend(v12 forKey:{"identifier"), v13}];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v9);
        }
      }
    }

    CFDictionaryApplyFunction(theDict, _processRecord_0, a1);
    *(a1 + 137) = 1;
  }

  *a4 = *(a1 + 160);
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t MailAccountsDataSourceCommit(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 137))
  {
    v2 = dispatch_group_create();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(a1 + 152);
    v3 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v3)
    {
      goto LABEL_22;
    }

    v4 = v3;
    v5 = *v35;
    v6 = *MEMORY[0x277CB8BA0];
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        dispatch_group_enter(v2);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v29 = __MailAccountsDataSourceCommit_block_invoke;
        v30 = &unk_279916D40;
        v32 = v2;
        v33 = a1;
        v31 = v8;
        if ([objc_msgSend(objc_msgSend(v8 "accountType")] && objc_msgSend(v8, "aa_needsRegistration"))
        {
          if (DLShouldLog())
          {
            v24 = [v8 identifier];
            _DLLog();
          }

          if (![*(a1 + 176) aa_primaryAppleAccount])
          {
            [v8 aa_setPrimaryAccount:1];
          }

          [v8 aa_setPrimaryEmailVerified:1];
          if ([objc_msgSend(objc_msgSend(v8 "credential")])
          {
            v9 = *(a1 + 176);
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __MailAccountsDataSourceCommit_block_invoke_3;
            v27[3] = &unk_279916D68;
            v27[4] = v8;
            v27[5] = v28;
            [v9 aa_updatePropertiesForAppleAccount:v8 completion:v27];
            goto LABEL_18;
          }

          [v8 setAuthenticated:0];
        }

        else if (DLShouldLog())
        {
          v24 = [v8 identifier];
          _DLLog();
        }

        v29(v28);
LABEL_18:
        ++v7;
      }

      while (v4 != v7);
      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v4 = v10;
      if (!v10)
      {
LABEL_22:
        if (DLShouldLog())
        {
          _DLLog();
        }

        v11 = dispatch_time(0, 120000000000);
        dispatch_group_wait(v2, v11);
        v12 = CFCopyHomeDirectoryURLForUser();
        v13 = MEMORY[0x25F84A2D0](0, "Library/Mail/Accounts.plist.synced", 34, 0, v12);
        CFRelease(v12);
        PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v13);
        if (PathComponent)
        {
          v15 = PathComponent;
          if (CFURLGetFileSystemRepresentation(PathComponent, 1u, buffer, 1024))
          {
            v16 = CFStringCreateWithCString(0, buffer, 0x8000100u);
            if (DLShouldLog())
            {
              v24 = v16;
              _DLLog();
            }

            if (v16)
            {
              DLEnsureDirectoryExists();
              CFRelease(v16);
            }
          }

          CFRelease(v15);
        }

        v17 = CFURLGetFileSystemRepresentation(v13, 1u, buffer, 1024);
        if (v13)
        {
          CFRelease(v13);
        }

        if (v17)
        {
          v18 = open(buffer, 512, 420);
          if (v18 < 0 && DLShouldLog())
          {
            v19 = __error();
            v24 = buffer;
            v25 = strerror(*v19);
            _DLLog();
          }

          close(v18);
        }

        else if (DLShouldLog())
        {
          v24 = 0;
          _DLLog();
        }

        if (DLShouldLog())
        {
          _DLLog();
        }

        v20 = [@"~/Library/Mail/AutoFetchEnabled" stringByExpandingTildeInPath];
        [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.AutoLaunchSettingsChanged", 0, 0, 0);
        goto LABEL_45;
      }
    }
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

LABEL_45:
  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

void *___bestiCloudUsernameFromEmails_block_invoke()
{
  result = &unk_286BC4838;
  _bestiCloudUsernameFromEmails_sAppleDomains = result;
  return result;
}

uint64_t ___bestiCloudUsernameFromEmails_block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = _bestiCloudUsernameFromEmails_sAppleDomains;
  result = [_bestiCloudUsernameFromEmails_sAppleDomains countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([a2 hasSuffix:*(*(&v9 + 1) + 8 * v7)])
        {
          result = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___bestiCloudUsernameFromEmails_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_25:
    v8 = -1;
    goto LABEL_26;
  }

  v6 = [a2 lowercaseString];
  v7 = [a3 lowercaseString];
  if ([v6 isEqualToString:v7])
  {
    v8 = 0;
    goto LABEL_26;
  }

  if (!(*(*(a1 + 40) + 16))() || ![v6 hasPrefix:*(a1 + 32)])
  {
    if (!(*(*(a1 + 40) + 16))() || ([v7 hasPrefix:*(a1 + 32)] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v8 = 1;
    goto LABEL_26;
  }

  if (!(*(*(a1 + 40) + 16))() || ([v7 hasPrefix:*(a1 + 32)] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = _bestiCloudUsernameFromEmails_sAppleDomains;
  v10 = [_bestiCloudUsernameFromEmails_sAppleDomains countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    v8 = 1;
LABEL_15:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      v15 = [v6 hasSuffix:v14];
      v16 = [v7 hasSuffix:v14];
      if (v15)
      {
        break;
      }

      if (v16)
      {
        goto LABEL_26;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_24:
  v8 = [v6 compare:v7];
LABEL_26:
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

void _processRecord_0(const __CFString *a1, void *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  CleanUuid = CreateCleanUuid(a1);
  v6 = DLShouldLog();
  if (CleanUuid == a1)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v37 = CleanUuid;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v37 = a1;
    v41 = CleanUuid;
  }

  _DLLog();
LABEL_7:
  if (DLShouldLog())
  {
    v7 = [a2 mutableCopy];
    [(__CFString *)v7 removeObjectForKey:@"__Password__"];
    if (DLShouldLog())
    {
      v37 = v7;
      _DLLog();
    }
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    goto LABEL_12;
  }

  [*(a3 + 176) accountWithIdentifier:CleanUuid];
  v10 = _ACAccountTypeForSyncAccountType([a2 objectForKey:@"AccountType"]);
  v11 = [a2 objectForKey:@"Username"];
  v12 = *MEMORY[0x277CB8BA0];
  if ([v10 isEqualToString:*MEMORY[0x277CB8BA0]])
  {
    v11 = _bestiCloudUsernameFromEmails(v11, [a2 objectForKey:@"EmailAddresses"]);
  }

  v13 = _identityStringWithInfo(v10, v11, [a2 objectForKey:{@"Hostname", v37, v41}]);
  if (DLShouldLog())
  {
    v38 = v13;
    _DLLog();
  }

  if (v13)
  {
    v14 = [*(a3 + 176) accountWithIdentifier:{objc_msgSend(*(a3 + 144), "objectForKey:", v13)}];
    if (v14)
    {
      v15 = v14;
      if (DLShouldLog())
      {
        v38 = [v15 identifier];
        _DLLog();
      }

      if (DLShouldLog())
      {
        v38 = CleanUuid;
        _DLLog();
      }

      v16 = [v15 identifier];
      if (!v16)
      {
        if (!DLShouldLog())
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v9 = v16;
      v17 = *(a3 + 168);
      if (!v17 || ![v17 containsObject:v9])
      {
        _addRemapping_0(a3, CleanUuid, v9);

        v18 = v9;
LABEL_68:
        [v15 applySyncProperties:a2];
        v35 = [a2 objectForKey:@"__Password__"];
        if (v35)
        {
          [v15 setPasswordFromSync:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", objc_msgSend(v35, "bytes"))}];
        }

        [*(a3 + 152) addObject:v15];
        goto LABEL_71;
      }

      if (DLShouldLog())
      {
LABEL_30:
        _DLLog();
      }
    }
  }

LABEL_31:
  v19 = [a2 objectForKey:{@"AccountType", v38}];
  if (v19)
  {
    v20 = v19;
    if ([v19 isEqualToString:@"iToolsAccount"] && (v21 = objc_msgSend(a2, "objectForKey:", @"AuthenticationScheme")) != 0 && !objc_msgSend(v21, "length"))
    {
      if (!DLShouldLog())
      {
        goto LABEL_12;
      }
    }

    else
    {
      v22 = _ACAccountTypeForSyncAccountType(v20);
      v23 = [*(a3 + 176) accountTypeWithAccountTypeIdentifier:v22];
      if (v23)
      {
        v24 = v23;
        if (DLShouldLog())
        {
          v39 = v22;
          _DLLog();
        }

        if ([v22 isEqualToString:{v12, v39}])
        {
          v25 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v24];
        }

        else
        {
          v47 = 0;
          if (_syncAccountLoader_onceToken != -1)
          {
            _processRecord_cold_1();
          }

          v27 = [_syncAccountLoader_sSyncAccountLoader accountWithAccountTypeIdentifier:v22 error:&v47];
          if (v47)
          {
            if (DLShouldLog())
            {
              v40 = v47;
              _DLLog();
            }

            v15 = 0;
LABEL_57:
            if (v15)
            {
              [v15 setAccountProperty:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 0xFFFFFFFFLL), @"NumberOfDaysToKeepTrash"}];
              v28 = [v24 supportedDataclasses];
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v29 = [v28 countByEnumeratingWithState:&v43 objects:v48 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v44;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v44 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    [v15 setProvisioned:1 forDataclass:{*(*(&v43 + 1) + 8 * i), v40}];
                  }

                  v30 = [v28 countByEnumeratingWithState:&v43 objects:v48 count:16];
                }

                while (v30);
              }

              v33 = [v24 supportedDataclasses];
              v34 = *MEMORY[0x277CB9150];
              if ([v33 containsObject:*MEMORY[0x277CB9150]])
              {
                [v15 setEnabled:1 forDataclass:v34];
              }

              [v15 aa_setSyncedAccount:1];
              _addRemapping_0(a3, [v15 identifier], CleanUuid);
              v9 = CleanUuid;
              goto LABEL_68;
            }

LABEL_12:
            v9 = CleanUuid;
LABEL_71:

            v36 = *MEMORY[0x277D85DE8];
            return;
          }

          v25 = [v27 persistentAccount];
        }

        v15 = v25;
        goto LABEL_57;
      }

      if (!DLShouldLog())
      {
        goto LABEL_12;
      }
    }

    _DLLog();
    goto LABEL_12;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t _addRemapping_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 160))
  {
    *(a1 + 160) = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (!*(a1 + 168))
  {
    *(a1 + 168) = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  if (DLShouldLog())
  {
    v8 = a2;
    v9 = a3;
    _DLLog();
  }

  [*(a1 + 160) setObject:a3 forKey:{a2, v8, v9}];
  v6 = *(a1 + 168);

  return [v6 addObject:a3];
}

uint64_t _ACAccountTypeForSyncAccountType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (_ACAccountTypeForSyncAccountType_onceToken != -1)
    {
      _ACAccountTypeForSyncAccountType_cold_1();
    }

    v2 = _ACAccountTypeForSyncAccountType_accountTypeForAccountClass;

    return [v2 objectForKey:v1];
  }

  return result;
}

objc_class *___syncAccountLoader_block_invoke()
{
  if (([objc_msgSend(MEMORY[0x277CCA8D8] bundleWithPath:{objc_msgSend(CPSystemRootDirectory(), "stringByAppendingPathComponent:", @"/System/Library/PrivateFrameworks/Message.framework", "load"}] & 1) == 0)
  {
    ___syncAccountLoader_block_invoke_cold_1();
  }

  result = NSClassFromString(&cfstr_Mfaccountloade.isa);
  _syncAccountLoader_sSyncAccountLoader = result;
  return result;
}

uint64_t __MailAccountsDataSourceCommit_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 176);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __MailAccountsDataSourceCommit_block_invoke_2;
  v3[3] = &unk_279916D18;
  return [v1 saveVerifiedAccount:*(a1 + 32) withCompletionHandler:v3];
}

void __MailAccountsDataSourceCommit_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!DLShouldLog())
    {
      goto LABEL_6;
    }
  }

  else if (!DLShouldLog())
  {
    goto LABEL_6;
  }

  [*(a1 + 32) identifier];
  _DLLog();
LABEL_6:
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t __MailAccountsDataSourceCommit_block_invoke_3(uint64_t a1)
{
  if (DLShouldLog())
  {
    [*(a1 + 32) identifier];
    _DLLog();
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}