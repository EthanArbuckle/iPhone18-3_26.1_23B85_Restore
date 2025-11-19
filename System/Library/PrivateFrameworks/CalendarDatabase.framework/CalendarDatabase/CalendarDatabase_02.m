double CalSchedueldTaskCacheGetLastSavedDate(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v4 = CPRecordStoreCopyValueForProperty();
  if (!v4)
  {
    return 0.0;
  }

  v5 = v4;
  IntValue = CFStringGetIntValue(v4);
  CFRelease(v5);
  return IntValue;
}

void _CalScheduledTaskCacheMarkTaskForUpdate(uint64_t a1, void *value)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 56);
    if (!v4 || !CFSetContainsValue(v4, value))
    {
      if (CPRecordGetID() >= 1)
      {
        ID = CPRecordGetID();
        v6 = *(a1 + 40);
        if (v6)
        {
          CFDictionaryRemoveValue(v6, value);
        }

        if (ID >= 1)
        {
          Mutable = *(a1 + 48);
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(0, 0, 0);
            *(a1 + 48) = Mutable;
          }

          CFSetAddValue(Mutable, ID);
        }
      }

      v8 = *(a1 + 56);
      if (v8)
      {

        CFSetAddValue(v8, value);
      }
    }
  }
}

CFMutableSetRef _CalScheduledTaskCacheBeginTrackingUpdates(CFMutableSetRef result)
{
  if (!*(result + 7))
  {
    v1 = result;
    result = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(v1 + 7) = result;
  }

  return result;
}

void _CalScheduledTaskCacheStopTrackingUpdates(void *context)
{
  v2 = *(context + 7);
  if (v2)
  {
    CFSetApplyFunction(v2, _GenerateDates, context);
    CFRelease(*(context + 7));
    *(context + 7) = 0;
  }
}

void _GenerateDates(const void *a1, uint64_t a2)
{
  DueDate = _CalTaskGetDueDate(a1);
  CompletionDate = _CalTaskGetCompletionDate(a1);
  if (DueDate | CompletionDate)
  {
    v6 = CompletionDate;
    Mutable = *(a2 + 40);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(a2 + 40) = Mutable;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = DueDate;
    }

    CFDictionarySetValue(Mutable, a1, v8);
  }
}

void _CalScheduledTaskCacheRevert(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFSetRemoveAllValues(v3);
  }
}

void _CalScheduledTaskCacheSave(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4 && CFSetGetCount(v4) >= 1)
  {
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
      CFSetApplyFunction(*(a1 + 48), _CalScheduledTaskCacheProcessDeletes, v6);
    }

    CFSetRemoveAllValues(*(a1 + 48));
  }

  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    v9 = CPRecordStoreGetContext();
    if (v9)
    {
      os_unfair_lock_assert_owner(v9 + 20);
    }
  }

  v10 = CPRecordStoreCopyValueForProperty();
  if (!v10)
  {
    v11 = *(a1 + 32);
    CFAbsoluteTimeGetCurrent();
    v12 = CalCFTimeZoneCopyCalTimeZone();
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
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

    CPSqliteConnectionSetValueForProperty();
    v10 = v12;
  }

  CFRelease(v10);
  v14 = *(a1 + 40);
  if (v14 && CFDictionaryGetCount(v14) >= 1)
  {
    cf = 0;
    v17 = 0;
    context[0] = a1;
    context[1] = &v17;
    context[2] = a2;
    CFDictionaryApplyFunction(*(a1 + 40), _CalScheduledTaskCacheProcessAdds, context);
    CFDictionaryRemoveAllValues(*(a1 + 40));
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t _CalScheduledTaskCacheProcessDeletes(int a1, uint64_t **a2)
{
  sqlite3_bind_int(a2[1], 1, a1);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        v3 = **a2;
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

  CPSqliteStatementPerform();
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
            v6 = CPRecordStoreGetContext();
            if (v6)
            {
              os_unfair_lock_assert_owner(v6 + 20);
            }
          }
        }
      }
    }
  }

  return CPSqliteStatementReset();
}

uint64_t CalScheduledTaskCacheRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalScheduledTaskCacheTypeID = result;
  return result;
}

uint64_t _CalScheduledTaskCacheProcessRecordForTimeZoneChange(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = a2;
  sqlite3_column_double(v3, 0);
  sqlite3_column_double(*(a1 + 8), 1);
  v5 = sqlite3_column_int(*(a1 + 8), 2);
  v6 = [v4 previousTimeZone];
  v7 = [v4 nextTimeZone];
  CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
  v9 = v8;

  v10 = [v4 previousTimeZone];
  v11 = [v4 nextTimeZone];
  CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
  v13 = v12;

  v21[0] = @"day";
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9];
  v22[0] = v14;
  v21[1] = @"dateForSorting";
  v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v13];
  v22[1] = v15;
  v21[2] = @"taskId";
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v22[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v18 = [v4 dict];
  CFDictionaryAddValue(v18, v5, v17);

  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

void _UpdateDay(uint64_t a1, void *a2, uint64_t **a3)
{
  v4 = a2;
  v15 = [v4 objectForKeyedSubscript:@"day"];
  v5 = [v4 objectForKeyedSubscript:@"dateForSorting"];
  v6 = [v4 objectForKeyedSubscript:@"taskId"];

  v7 = a3[1];
  [v15 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(v7, 1, v8);
  v9 = a3[1];
  [v5 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(v9, 2, v10);
  sqlite3_bind_int(a3[1], 3, [v6 intValue]);
  if (a3)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a3)
      {
        v11 = **a3;
        if (v11)
        {
          if (*(v11 + 104))
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
  if (a3)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a3)
      {
        v13 = **a3;
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
  }

  CPSqliteStatementReset();
}

void _CalScheduledTaskCacheInsertTaskIfScheduled(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  DueDate = _CalTaskGetDueDate(a4);
  CompletionDate = _CalTaskGetCompletionDate(a4);
  if (DueDate | CompletionDate)
  {
    v10 = CompletionDate;
    ID = CPRecordGetID();
    IsDueDateAllDay = _CalTaskIsDueDateAllDay(a4);
    if (v10)
    {
      v13 = CFRetain(*(a1 + 32));
      DueDate = v10;
    }

    else
    {
      if (IsDueDateAllDay)
      {
        started = CFTimeZoneCreateWithName(0, @"GMT", 1u);
      }

      else
      {
        started = _CalCalendarItemCopyStartTimeZone(a4);
        if (!started)
        {
          started = CFRetain(*(a1 + 32));
        }
      }

      v13 = started;
    }

    v39 = [MEMORY[0x1E69930C8] calendarDateWithDate:DueDate timeZone:v13];
    v15 = [v39 calendarDateInTimeZone:*(a1 + 32)];
    v16 = [v15 calendarDateForDay];
    if (!v10)
    {
      v37 = ID;
      v38 = v15;
      v17 = MEMORY[0x1E69930C8];
      v18 = [MEMORY[0x1E695DF00] date];
      v19 = [MEMORY[0x1E695DFE8] systemTimeZone];
      v20 = [v17 calendarDateWithDate:v18 timeZone:v19];
      v21 = [v20 calendarDateInTimeZone:*(a1 + 32)];
      v22 = [v21 calendarDateForDay];

      if ([v16 compare:v22] == -1)
      {
        v23 = v22;

        v16 = v23;
      }

      v15 = v38;
      ID = v37;
    }

    [v16 absoluteTime];
    v25 = v24;
    [v15 absoluteTime];
    v27 = v26;
    if (v13)
    {
      CFRelease(v13);
    }

    if (!v10)
    {
      NSLog(&cfstr_25534103Insert.isa, v39, v16);
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

    if (CPSqliteConnectionGetActiveTransactionType() == 0xFFFF)
    {
      NSLog(&cfstr_EventkitstcErr.isa);
    }

    v29 = *a3;
    if (*a3)
    {
      goto LABEL_34;
    }

    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
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

    v29 = CPSqliteConnectionStatementForSQL();
    *a3 = v29;
    if (v29)
    {
LABEL_34:
      sqlite3_bind_double(*(v29 + 8), 1, v25);
      sqlite3_bind_double(*(*a3 + 8), 2, v27);
      sqlite3_bind_int(*(*a3 + 8), 3, v10 != 0);
      sqlite3_bind_int(*(*a3 + 8), 4, ID);
      v31 = *a3;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v31)
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
      }

      CPSqliteStatementPerform();
      v34 = *a3;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v34)
        {
          if (*v34)
          {
            v35 = **v34;
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
      }

      CPSqliteStatementReset();
    }
  }
}

void _CalRecurrencePrepareForSave(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  if (CPRecordGetIntegerProperty() >= 2)
  {
    Mutable = CFStringCreateMutable(0, 0);
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

    Property = CPRecordGetProperty();
    if (Property)
    {
      v6 = Property;
      if (CFArrayGetCount(Property) >= 1)
      {
        Count = CFArrayGetCount(v6);
        chars[0] = 68;
        if (CFStringGetLength(Mutable) >= 1)
        {
          CFStringAppendCString(Mutable, ";", 0x8000100u);
        }

        CFStringAppendCharacters(Mutable, chars, 1);
        CFStringAppendCString(Mutable, "=", 0x8000100u);
        if (Count >= 1)
        {
          v8 = 0;
          v9 = MEMORY[0x1E6993108];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
            if (v8)
            {
              v11 = @",%s%d%s";
            }

            else
            {
              v11 = @"%s%d%s";
            }

            if (*ValueAtIndex <= 0)
            {
              v12 = "";
            }

            else
            {
              v12 = "+";
            }

            CFStringAppendFormat(Mutable, 0, v11, v12, *ValueAtIndex, *(v9 + 8 * ValueAtIndex[1]));
            ++v8;
          }

          while (Count != v8);
        }
      }
    }

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
    if (v14)
    {
      v15 = v14;
      if (CFArrayGetCount(v14) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v15, 11);
      }
    }

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
    if (v17)
    {
      v18 = v17;
      if (CFArrayGetCount(v17) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v18, 12);
      }
    }

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
    if (v20)
    {
      v21 = v20;
      if (CFArrayGetCount(v20) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v21, 13);
      }
    }

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

    v23 = CPRecordGetProperty();
    if (v23)
    {
      v24 = v23;
      if (CFArrayGetCount(v23) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v24, 14);
      }
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

    v26 = CPRecordGetProperty();
    if (v26)
    {
      v27 = v26;
      if (CFArrayGetCount(v26) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v27, 15);
      }
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

    CPRecordSetProperty();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
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
  v31 = v30;
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
        v32 = CPRecordStoreGetContext();
        if (v32)
        {
          os_unfair_lock_assert_owner(v32 + 20);
        }
      }
    }
  }

  if (!CPRecordGetProperty())
  {
    if (v31)
    {
      RelatedObject = CalRelationGetRelatedObject(v31);
    }

    else
    {
      RelatedObject = 0;
    }

    v34 = CDBLogHandle;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      DebugDescription = _CalEntityGetDebugDescription(RelatedObject);
      *chars = 134218242;
      v43 = v31;
      v44 = 2112;
      v45 = DebugDescription;
      _os_log_impl(&dword_1DEBB1000, v34, OS_LOG_TYPE_ERROR, "saving a recurrence with owner_id 0: relation=%p, owner=%@", chars, 0x16u);
    }

    DatabaseForRecord = CalGetDatabaseForRecord();
    _CalDatabaseIntegrityError(DatabaseForRecord, @"Recurrence without owner");
  }

  _CalRecurrenceGenerateCachedEndDate(a1);
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

  if (CPRecordGetIntegerProperty() != -1)
  {
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

    CPRecordInitializeProperty();
  }

  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (Owner)
  {
    v40 = Owner;
    if (_CalEntityIsOfType(Owner, 2))
    {
      _CalEventUpdateOccurrenceCache(v40);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t _CalRecurrencePropertyDidChange(uint64_t result, int a2)
{
  if (a2 == 7)
  {
    v3 = result;
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

    CPRecordUnloadProperty();
    if (v3)
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

    CPRecordUnloadProperty();
    if (v3)
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
    if (v3)
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
    if (v3)
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

    CPRecordUnloadProperty();
    if (v3)
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

    CPRecordUnloadProperty();
    if (v3)
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

    return CPRecordUnloadProperty();
  }

  return result;
}

uint64_t _CalRecurrencePropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 > 5)
  {
    if (a2 != 6)
    {
      if (a2 != 16)
      {
        goto LABEL_62;
      }

      v5 = a3;
      if (a3 == -1)
      {
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
              v7 = CPRecordStoreGetContext();
              if (v7)
              {
                os_unfair_lock_assert_owner(v7 + 20);
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
              v8 = CPRecordStoreGetContext();
              if (v8)
              {
                os_unfair_lock_assert_owner(v8 + 20);
              }
            }
          }
        }

        if (CPRecordGetProperty() != -1)
        {
          if (v4)
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

          CPRecordInitializeProperty();
        }
      }

      Owner = _CalRecurrenceGetOwner(v4, 0);
      result = CPRecordGetID();
      v11 = result == v5;
      if (Owner)
      {
LABEL_63:
        result = _CalEntityIsNew(Owner);
        if (((result | v11) & 1) == 0)
        {

          return _CalEventMarkAsModifiedForChangeTracking(Owner);
        }

        return result;
      }

      return result;
    }
  }

  else
  {
    if ((a2 - 4) < 2)
    {
      return result;
    }

    if (a2 != 3)
    {
LABEL_62:
      result = _CalRecurrenceGetOwner(v4, 0);
      Owner = result;
      v11 = 0;
      if (!result)
      {
        return result;
      }

      goto LABEL_63;
    }
  }

  if (result)
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
  if (a2 != 3 && Property)
  {
    goto LABEL_70;
  }

  if (v4)
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

  result = CPRecordGetProperty();
  if (result)
  {
LABEL_70:
    if (v4)
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

    CPRecordSetProperty();
    if (v4)
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

    CPRecordSetProperty();
    if (v4)
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

    result = CPRecordSetProperty();
  }

  if ((a2 & 0xFFFFFFFE) != 4)
  {
    goto LABEL_62;
  }

  return result;
}

void CalRecurrenceInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalRecurrenceClass, &kCalRecurrenceIndexes, &kCalRecurrenceChangesIndexes);
}

void CalRecurrenceMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 18001)
  {
    CalMigrateTableFull(a2, &kCalRecurrenceClass, 0, &kCalRecurrenceUpgradeInfo, &kCalRecurrenceChangesUpgradeInfo, &kCalRecurrenceIndexes, &kCalRecurrenceChangesIndexes, 0, a3);
    if (a3 > 48)
    {
      if (a3 > 0x34)
      {
        return;
      }
    }

    else
    {
      CalPerformSQLWithConnection(a2, @"UPDATE Recurrence SET end_date = NULL WHERE end_date = 0");
      CalPerformSQLWithConnection(a2, @"UPDATE Recurrence SET cached_end_date = NULL WHERE cached_end_date = 0");
    }

    _CalDBFillInUUIDColumn(a2, @"Recurrence");
  }
}

uint64_t _CalRecurrenceHasValidParent(uint64_t a1)
{
  result = _CalRecurrenceGetOwner(a1, 0);
  if (result)
  {

    return _CalRecordStillExists();
  }

  return result;
}

uint64_t _CalRecurrenceGetOwner(uint64_t a1, int a2)
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
    result = CalRelationGetRelatedObject(result);
  }

  if (!result && a2)
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

    if (CPRecordGetIntegerProperty() < 1)
    {
      return 0;
    }

    else
    {
      Store = CPRecordGetStore();

      return _CalGetCalendarItemWithRowID(Store);
    }
  }

  return result;
}

uint64_t CalRecurrenceGetPropertyIDWithPropertyName(void *key)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = CalRecurrenceGetPropertyIDWithPropertyName_sPropDict;
  if (!CalRecurrenceGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalRecurrenceGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalRecurrenceGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v7 = 26;
      v8 = @"owner";
      v9 = 24;
      v10 = @"frequencyRaw";
      v11 = 0;
      v12 = @"interval";
      v13 = 1;
      v14 = @"endDate";
      v15 = 6;
      v16 = @"count";
      v17 = 3;
      v18 = @"cachedEndDate";
      v19 = 4;
      v20 = @"cachedEndDateTimeZone";
      v21 = 5;
      v22 = @"specifier";
      v23 = 7;
      v24 = @"firstDayOfTheWeekRaw";
      v25 = 2;
      CalRecurrenceGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 10);
      for (i = 144; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalRecurrenceGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalRecurrenceGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEBD28E4(_Unwind_Exception *a1)
{
  for (i = 144; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

const void *_CalDatabaseCreateRecurrence(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 5);
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
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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
    if (v2)
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
  v13 = CFUUIDCreate(0);
  v14 = CFUUIDCreateString(0, v13);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v2)
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
  CFRelease(v13);
  CFRelease(v14);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateRecurrence(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Recurrence = _CalDatabaseCreateRecurrence(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Recurrence;
}

uint64_t CalDatabaseCopyOfAllRecurrencesInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = CalCopyDatabaseForRecord();
    UID = CalStoreGetUID();
    if (v2)
    {
      v4 = UID;
      os_unfair_lock_lock(v2 + 20);
      RecordStore = _CalDatabaseGetRecordStore(v2);
      v6 = RecordStore;
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
        goto LABEL_29;
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
        sqlite3_bind_int(*(v11 + 8), 1, v4);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v6)
          {
            v12 = CPRecordStoreGetContext();
            if (v12)
            {
              os_unfair_lock_assert_owner(v12 + 20);
            }
          }
        }

        v13 = CPRecordStoreProcessStatement();
      }

      else
      {
LABEL_29:
        v13 = 0;
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(v2 + 20);
      }

      os_unfair_lock_unlock(v2 + 20);
      CFRelease(v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    os_unfair_lock_lock(a1 + 20);
    v15 = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1 && v15 != 0)
    {
      v17 = CPRecordStoreGetContext();
      if (v17)
      {
        os_unfair_lock_assert_owner(v17 + 20);
      }
    }

    v13 = CPRecordStoreCopyAllInstancesOfClass();
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(a1 + 20);
    }

    os_unfair_lock_unlock(a1 + 20);
  }

  return v13;
}

const void *_CalRecurrenceCopy(uint64_t a1, uint64_t a2)
{
  Recurrence = _CalDatabaseCreateRecurrence(a1);
  v4 = Recurrence;
  if (CDBLockingAssertionsEnabled == 1 && Recurrence != 0)
  {
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

  CPRecordSetProperty();
  return v4;
}

uint64_t _CalRecurrencePrepareForRemove(uint64_t a1)
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

  result = CPRecordGetIntegerProperty();
  if (result != -1)
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

    return CPRecordInitializeProperty();
  }

  return result;
}

void _CalRemoveRecurrence(void *a1)
{
  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (Owner)
  {

    _CalCalendarItemRemoveRecurrence(Owner, a1, 0);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

void CalRemoveRecurrence(void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveRecurrence(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalInvalidateRecurrencesWithOwnerID(uint64_t a1)
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

uint64_t _CalRecurrenceGetRecordID(uint64_t a1)
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

uint64_t CalRecurrenceGetUID()
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

uint64_t _CalRecurrenceGetWithUID(uint64_t a1)
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

const void *CalDatabaseCopyRecurrenceWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v3 = _CalRecurrenceGetWithUID(RecordStore);
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

uint64_t CalRecurrenceCopyUUID(uint64_t a1)
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

CFTypeRef CalDatabaseCopyRecurrenceWithUUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  v4 = CFStringCreateWithFormat(0, 0, @"UUID = '%@'", a2);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v8 = CPRecordStoreCopyAllInstancesOfClassWhere();
  if (v8)
  {
    v9 = v8;
    if (CFArrayGetCount(v8) < 1)
    {
      v11 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      v11 = CFRetain(ValueAtIndex);
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v4);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v11;
}

void CalRecurrenceClearExternalProperties(uint64_t a1)
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
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalRecurrenceSetExternalID(uint64_t a1)
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

uint64_t CalRecurrenceCopyExternalID(uint64_t a1)
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

const void *CalDatabaseCopyRecurrenceWithExternalIDInStore(os_unfair_lock_s *a1, const __CFString *a2, uint64_t a3)
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
    v5 = a1;
    CFRetain(a1);
    if (!v5)
    {
      return 0;
    }
  }

  if (!a2 || (CStringFromCFString = CalCreateCStringFromCFString(a2)) == 0)
  {
    CFRelease(v5);
    return 0;
  }

  v7 = CStringFromCFString;
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    free(v7);
    CFRelease(v5);
    return 0;
  }

  v9 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" WHERE external_id = ?");
  os_unfair_lock_lock(v5 + 20);
  RecordStore = _CalDatabaseGetRecordStore(v5);
  v11 = RecordStore;
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
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }
    }
  }

  v15 = CPSqliteDatabaseStatementForReading();
  if (v15)
  {
    sqlite3_bind_text(*(v15 + 8), 1, v7, -1, 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        v16 = CPRecordStoreGetContext();
        if (v16)
        {
          os_unfair_lock_assert_owner(v16 + 20);
        }
      }
    }

    v17 = CPRecordStoreProcessStatementWithPropertyIndices();
  }

  else
  {
    v17 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v9);
  free(v7);
  if (v17)
  {
    Count = CFArrayGetCount(v17);
    if (a3)
    {
      ID = CPRecordGetID();
    }

    else
    {
      ID = -1;
    }

    if (Count < 1)
    {
      v18 = 0;
    }

    else
    {
      v22 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v17, v22 - 1);
        v18 = ValueAtIndex;
        if (!a3)
        {
          goto LABEL_46;
        }

        if (CDBLockingAssertionsEnabled == 1 && ValueAtIndex != 0)
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

        if (ID != CPRecordGetIntegerProperty())
        {
          v18 = 0;
        }

        else
        {
LABEL_46:
          CFRetain(v18);
          if (v18)
          {
            break;
          }
        }
      }

      while (v22++ < Count);
    }

    CFRelease(v17);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v5);
  return v18;
}

void CalRecurrenceSetExternalModificationTag(uint64_t a1)
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

uint64_t CalRecurrenceCopyExternalModificationTag(uint64_t a1)
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

void CalRecurrenceSetExternalIdentificationTag(uint64_t a1)
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

uint64_t CalRecurrenceCopyExternalIdentificationTag(uint64_t a1)
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

void CalRecurrenceSetExternalRepresentation(uint64_t a1)
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

uint64_t CalRecurrenceCopyExternalRepresentation(uint64_t a1)
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

void CalRecurrenceSetFrequency(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetFrequency(a1) != a2)
  {
    _CalRecurrenceSetProperty(a1, 0, a2, 1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceGetFrequency(uint64_t a1)
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

void _CalRecurrenceSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

  CPRecordSetProperty();
  if (vabdd_f64(_CalRecordGetDateProperty(a1), *MEMORY[0x1E6993100]) >= 2.22044605e-16)
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
  }

  Owner = _CalRecurrenceGetOwner(a1, 0);
  v10 = Owner;
  if (a4 && Owner)
  {
    _CalCalendarItemRemoveAllExceptionDates(Owner);
  }

  else if (!Owner)
  {
    return;
  }

  _CalEventUpdateLastModifiedDate(v10);
}

uint64_t CalRecurrenceGetFrequency(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Frequency = _CalRecurrenceGetFrequency(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Frequency;
}

void CalRecurrenceSetInterval(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetInterval(a1) != a2)
  {
    _CalRecurrenceSetProperty(a1, 1, a2, 1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceGetInterval(uint64_t a1)
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

  return CPRecordGetIntegerProperty();
}

uint64_t CalRecurrenceGetInterval(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Interval = _CalRecurrenceGetInterval(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Interval;
}

void CalRecurrenceSetWeekStart(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetWeekStartRaw(a1) != a2)
  {
    _CalRecurrenceSetProperty(a1, 2, a2, 1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceGetWeekStartRaw(uint64_t a1)
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

uint64_t _CalRecurrenceGetWeekStart(uint64_t a1)
{
  LODWORD(result) = _CalRecurrenceGetWeekStartRaw(a1);
  if (result == 7)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t CalRecurrenceGetWeekStart(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  LODWORD(a1) = _CalRecurrenceGetWeekStartRaw(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  if (a1 == 7)
  {
    a1 = 1;
  }

  else
  {
    a1 = a1;
  }

  os_unfair_lock_unlock(RecordLock);
  return a1;
}

uint64_t CalRecurrenceGetWeekStartDirectly(uint64_t a1)
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

void CalRecurrenceSetCount(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetCount(a1) != a2)
  {
    _CalRecurrenceSetProperty(a1, 3, a2, 0);
    _CalRecurrenceSetProperty(a1, 6, 0, 0);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceGetCount(uint64_t a1)
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

  return CPRecordGetIntegerProperty();
}

uint64_t CalRecurrenceGetCount(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Count = _CalRecurrenceGetCount(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Count;
}

void CalRecurrenceInvalidateCachedEndDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecurrenceSetCachedEndDate(a1, *MEMORY[0x1E6993100]);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalRecurrenceSetCachedEndDate(uint64_t a1, uint64_t a2)
{
  Store = CPRecordGetStore();
  if (Store && CPRecordStoreIsLoggingChanges())
  {
    CPRecordStoreLogChanges();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(*&a2);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
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
  if (CFDateRefFromCalDate)
  {
    CFRelease(CFDateRefFromCalDate);
  }

  if (Store)
  {
    v9 = v5;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {

    CPRecordStoreLogChanges();
  }
}

uint64_t _CalRecurrenceCopyCachedEndDate(uint64_t a1)
{
  v8[1] = 0;
  DateProperty = _CalRecordGetDateProperty(a1);
  *v8 = DateProperty;
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
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
  if (fabs(DateProperty) < 2.22044605e-16 && Property == 0)
  {
    v6 = MEMORY[0x1E6993100];
  }

  else
  {
    v6 = v8;
    CalDateTimeSetTimeZone();
  }

  return *v6;
}

void _CalRecurrenceSetEndDate(uint64_t a1, CFAbsoluteTime a2)
{
  CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(a2);
  _CalRecurrenceSetProperty(a1, 6, CFDateRefFromCalDate, 0);
  _CalRecurrenceSetProperty(a1, 3, 0, 0);
  if (CFDateRefFromCalDate)
  {

    CFRelease(CFDateRefFromCalDate);
  }
}

void CalRecurrenceSetEndDate(uint64_t a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (vabdd_f64(_CalRecordGetDateProperty(a1), a2) >= 2.22044605e-16)
  {
    _CalRecurrenceSetEndDate(a1, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalRecurrenceGetEndDate(uint64_t a1)
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

double CalRecurrenceGetEffectiveEndDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1);
  v4 = *MEMORY[0x1E6993100];
  if (vabdd_f64(DateProperty, *MEMORY[0x1E6993100]) < 2.22044605e-16)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();
    __CalDatabaseBeginReadTransaction(DatabaseForRecord, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalRecurrence.m:1057");
    _CalRecurrenceGenerateCachedEndDate(a1);
    __CalDatabaseRollbackTransaction(DatabaseForRecord, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalRecurrence.m:1059");
    DateProperty = COERCE_DOUBLE(_CalRecurrenceCopyCachedEndDate(a1));
    CalDateTimeRelease();
    if (vabdd_f64(DateProperty, v4) < 2.22044605e-16)
    {
      DateProperty = v4;
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

void CalRecurrenceSetByDayDays(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyByDayDays(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 9, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyByDayDays(uint64_t a1)
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

uint64_t _CalRecurrenceSpecifierIncrementChangeCount(uint64_t a1)
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

  CPRecordGetIntegerProperty();
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

uint64_t CalRecurrenceCopyByDayDays(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByDayDays(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetByMonth(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecurrenceSetProperty(a1, 15, a2, 1);
  _CalRecurrenceSpecifierIncrementChangeCount(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalRecurrenceCopyByMonth(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByMonth(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalRecurrenceCopyByMonth(uint64_t a1)
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

void CalRecurrenceSetByMonthMonths(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = 0;
    Mutable = 0;
    do
    {
      if ((a2 >> v5))
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, 0);
        }

        CFArrayAppendValue(Mutable, ++v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 != 12);
    v7 = _CalRecurrenceCopyByMonth(a1);
    v8 = v7;
    if (v7 | Mutable)
    {
      if (([v7 isEqual:Mutable] & 1) == 0)
      {
        _CalRecurrenceSetProperty(a1, 15, Mutable, 1);
        _CalRecurrenceSpecifierIncrementChangeCount(a1);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
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

  if (CPRecordGetProperty())
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

uint64_t _CalRecurrenceGetByMonthMonths(uint64_t a1)
{
  v2 = _CalRecurrenceCopyByMonth(a1);
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) < 1)
    {
      v5 = 0;
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = 0;
      do
      {
        v5 = (1 << (CFArrayGetValueAtIndex(v3, v4++) - 1)) | v5;
      }

      while (CFArrayGetCount(v3) > v4);
    }

    CFRelease(v3);
    return v5;
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

    return CPRecordGetIntegerProperty();
  }
}

uint64_t CalRecurrenceGetByMonthMonths(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceGetByMonthMonths(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetByMonthDayDays(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyByMonthDayDays(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 11, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyByMonthDayDays(uint64_t a1)
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

uint64_t CalRecurrenceCopyByMonthDayDays(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByMonthDayDays(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetByWeekWeeks(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyByWeekWeeks(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 12, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyByWeekWeeks(uint64_t a1)
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

uint64_t CalRecurrenceCopyByWeekWeeks(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByWeekWeeks(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetByYearDayDays(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyByYearDayDays(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 13, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyByYearDayDays(uint64_t a1)
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

uint64_t CalRecurrenceCopyByYearDayDays(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByYearDayDays(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetBySetPos(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyBySetPos(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 14, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyBySetPos(uint64_t a1)
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

uint64_t CalRecurrenceCopyBySetPos(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyBySetPos(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

const void *CalRecurrenceCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalRecurrenceGetOwner(a1, 0);
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

void CalRecurrenceSetOwner(uint64_t a1, const void *a2)
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

BOOL _CalRecurrenceIsSimpleYearly(uint64_t a1)
{
  if (_CalRecurrenceGetFrequency(a1) != 4 || _CalRecurrenceGetInterval(a1) != 1)
  {
    return 0;
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

  if (CPRecordGetProperty())
  {
    return 0;
  }

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

  if (CPRecordGetProperty())
  {
    return 0;
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

  if (CPRecordGetProperty())
  {
    return 0;
  }

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

  if (CPRecordGetProperty())
  {
    return 0;
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

  if (CPRecordGetProperty())
  {
    return 0;
  }

  if (a1 && (CDBLockingAssertionsEnabled & 1) != 0 && CPRecordGetStore())
  {
    v7 = CPRecordStoreGetContext();
    if (v7)
    {
      os_unfair_lock_assert_owner(v7 + 20);
    }
  }

  return !CPRecordGetProperty();
}

uint64_t _CalRecurrenceSaveAddedRecords(uint64_t a1)
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

uint64_t CalDatabaseCopyRecurrenceChangesInStore(os_unfair_lock_s *cf, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v5 = cf;
    if (!cf)
    {
      return 0xFFFFFFFFLL;
    }

    CFRetain(cf);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalRecurrenceCopyChangeHistoryWhereClauseForStore(v5, a2);
  v7 = _CalDatabaseCopyRecurrenceChangesWithWhereClauseNoLock(v5, v6, a3);
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
  return v7;
}

CFStringRef _CalRecurrenceCopyChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (a2)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();
    v4 = _CalDatabaseCopyClientIdentifier(DatabaseForRecord);
    ID = CPRecordGetID();
    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v4, v4, 5, v4);
    CFRelease(v4);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v7);
  return v7;
}

uint64_t _CalDatabaseCopyRecurrenceChangesWithWhereClauseNoLock(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
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

uint64_t CalDatabaseRemoveRecurrenceChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
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
  v8[2] = __CalDatabaseRemoveRecurrenceChangesInStoreToIndex_block_invoke;
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

void sub_1DEBD62F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveRecurrenceChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = _CalDatabaseRemoveRecurrenceChangesInStoreToIndex(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CalDatabaseRemoveRecurrenceChangesInStoreToIndex(uint64_t a1, uint64_t a2)
{
  v3 = _CalRecurrenceCopyChangeHistoryWhereClauseForStore(a1, a2);
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

uint64_t CalDatabaseCopyRecurrenceChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
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
  v6 = _CalRecurrenceCopyChangeHistoryWhereClauseForCalendar(v5, a2);
  v7 = _CalDatabaseCopyRecurrenceChangesWithWhereClauseNoLock(v5, v6, a3);
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

CFStringRef _CalRecurrenceCopyChangeHistoryWhereClauseForCalendar(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (a2)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();
    v4 = _CalDatabaseCopyClientIdentifier(DatabaseForRecord);
    ID = CPRecordGetID();
    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v4, v4, 5, v4);
    CFRelease(v4);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v7);
  return v7;
}

uint64_t CalDatabaseRemoveRecurrenceChangesInCalendarToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
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
  v6 = _CalRecurrenceCopyChangeHistoryWhereClauseForCalendar(v5, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalDatabaseRemoveRecurrenceChangesInCalendarToIndex_block_invoke;
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

void sub_1DEBD6668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveRecurrenceChangesInCalendarToIndex_block_invoke(uint64_t a1)
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

uint64_t CalDatabaseRemoveRecurrenceChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseRemoveRecurrenceChangesWithIndices_block_invoke;
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

void sub_1DEBD67E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveRecurrenceChangesWithIndices_block_invoke(void *a1)
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

BOOL _CalRecurrenceShouldPinMonthDays(uint64_t a1)
{
  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (!Owner)
  {
    return 0;
  }

  Calendar = _CalCalendarItemGetCalendar(Owner);
  if (!Calendar)
  {
    return 0;
  }

  Store = _CalCalendarGetStore(Calendar);
  if (!Store)
  {
    return 0;
  }

  return _CalStoreAreRecurrencesPinnedToMonthDays(Store);
}

uint64_t _CalDatabasePrepareRecurrencesInStoreForMigration(uint64_t a1, void *a2, uint64_t a3)
{
  ID = CPRecordGetID();
  result = _CalDatabaseRemoveRecurrenceChangesInStoreToIndex(a1, a3);
  if (result)
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE Recurrence SET external_id = NULL, external_mod_tag = NULL, external_id_tag = NULL, external_rep = NULL WHERE owner_id IN (SELECT CalendarItem.ROWID FROM CalendarItem JOIN Calendar ON calendar_id = Calendar.ROWID WHERE store_id = %d);", ID);
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

uint64_t _CalRecurrenceSpecifierParse(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
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
    v4 = Property;
    Length = CFStringGetLength(Property);
    if (Length >= 1)
    {
      v6 = Length;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      *buffer = 0u;
      v96 = 0u;
      theString = v4;
      v106 = 0;
      v107 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v4);
      CStringPtr = 0;
      v104 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
      }

      v9 = 0;
      LODWORD(v10) = 0;
      v11 = 0;
      v12 = 0;
      v108 = 0;
      v109 = 0;
      v105 = CStringPtr;
      v93 = v6;
      v92 = v1;
      while (1)
      {
        if ((v10 & 0x80000000) != 0 || (v13 = v107, v107 <= v9))
        {
          v14 = 0;
          goto LABEL_16;
        }

        if (v104)
        {
          v14 = v104[v106 + v9];
        }

        else if (v105)
        {
          v14 = v105[v106 + v9];
        }

        else
        {
          if (v109 <= v9 || (v15 = v108, v108 > v9))
          {
            v16 = v9 - 4;
            if (v10 < 4)
            {
              v16 = 0;
            }

            if (v16 + 64 < v107)
            {
              v13 = v16 + 64;
            }

            v108 = v16;
            v109 = v13;
            v111.length = v13 - v16;
            v111.location = v106 + v16;
            CFStringGetCharacters(theString, v111, buffer);
            v15 = v108;
          }

          v14 = buffer[v9 - v15];
        }

        if (v14 == 61)
        {
          break;
        }

LABEL_16:
        LODWORD(v10) = v10 + 1;
        if (((v10 - v11) | 2) == 3)
        {
          v12 = v14;
        }

        v9 = v10;
        if (v6 <= v10)
        {
          goto LABEL_235;
        }
      }

      if (v10 - v11 != 1 && v10 - v11 < 3)
      {
        v12 = 0;
      }

      v18 = (v10 + 1);
      if (v6 <= v18)
      {
        v14 = 61;
        LODWORD(v10) = v10 + 1;
        goto LABEL_63;
      }

      v19 = -v18;
      v20 = v18 + 64;
      v10 = (v10 + 1);
      while (1)
      {
        if (v10 >= 4)
        {
          v21 = 4;
        }

        else
        {
          v21 = v10;
        }

        v22 = v107;
        if (v107 <= v10)
        {
          v14 = 0;
          goto LABEL_49;
        }

        if (v104)
        {
          break;
        }

        if (!v105)
        {
          v24 = v108;
          if (v109 <= v10 || v108 > v10)
          {
            v26 = -v21;
            v27 = v21 + v19;
            v28 = v20 - v21;
            v29 = v10 + v26;
            v30 = v29 + 64;
            if (v29 + 64 >= v107)
            {
              v30 = v107;
            }

            v108 = v29;
            v109 = v30;
            if (v107 >= v28)
            {
              v22 = v28;
            }

            v112.location = v29 + v106;
            v112.length = v22 + v27;
            CFStringGetCharacters(theString, v112, buffer);
            v24 = v108;
          }

          v23 = &buffer[-v24];
          goto LABEL_44;
        }

        v14 = v105[v106 + v10];
LABEL_48:
        if (v14 == 59)
        {
          v14 = 59;
LABEL_63:
          if (v12 <= 0x52u)
          {
            if (v12 != 68)
            {
              if (v12 != 77 && v12 != 79)
              {
                goto LABEL_234;
              }

              goto LABEL_166;
            }

            value = 0xFFFFFFFF00000000;
            if (v10 - v18 < 1)
            {
              Mutable = 0;
LABEL_227:
              v1 = v92;
              if (!v92)
              {
                goto LABEL_232;
              }

              goto LABEL_228;
            }

            Mutable = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = v18 + v10 - v18;
            v36 = v18 - v10 - v18;
            v37 = v35;
            while (2)
            {
              if (v18 < 0 || (v38 = v107, v107 <= v18))
              {
                v39 = 0;
              }

              else
              {
                if (v104)
                {
                  v39 = v104[v106 + v18];
                }

                else if (v105)
                {
                  v39 = v105[v106 + v18];
                }

                else
                {
                  if (v109 <= v18 || (v43 = v108, v108 > v18))
                  {
                    v44 = v18 - 4;
                    if (v18 < 4)
                    {
                      v44 = 0;
                    }

                    if (v44 + 64 < v107)
                    {
                      v38 = v44 + 64;
                    }

                    v108 = v44;
                    v109 = v38;
                    v113.length = v38 - v44;
                    v113.location = v106 + v44;
                    v45 = v34;
                    CFStringGetCharacters(theString, v113, buffer);
                    v34 = v45;
                    v35 = v37;
                    v43 = v108;
                  }

                  v39 = buffer[v18 - v43];
                }

                if ((v39 - 48) <= 9u)
                {
                  v34 = 10 * v34 + v39 - 48;
                  v33 = 1;
                  goto LABEL_164;
                }
              }

              if ((v33 & 1) == 0 && v39 <= 0x2Du && ((1 << v39) & 0x280100000000) != 0)
              {
                v33 = 0;
                v32 |= v39 == 45;
                goto LABEL_164;
              }

              v40 = v18 + 1;
              if (v18 < -1)
              {
                goto LABEL_132;
              }

              if (v40 >= v35)
              {
                goto LABEL_132;
              }

              v41 = v107;
              if (v107 <= v40)
              {
                goto LABEL_132;
              }

              if (v104)
              {
                v42 = v104[v106 + v40];
              }

              else if (v105)
              {
                v42 = v105[v106 + v40];
              }

              else
              {
                if (v109 <= v40 || (v46 = v108, v108 > v40))
                {
                  v47 = v18 - 3;
                  if (v40 < 4)
                  {
                    v47 = 0;
                  }

                  if (v47 + 64 < v107)
                  {
                    v41 = v47 + 64;
                  }

                  v108 = v47;
                  v109 = v41;
                  v114.length = v41 - v47;
                  v114.location = v106 + v47;
                  v48 = v34;
                  CFStringGetCharacters(theString, v114, buffer);
                  LODWORD(v34) = v48;
                  v35 = v37;
                  v46 = v108;
                }

                v42 = buffer[v40 - v46];
              }

              if (v39 == 77 && v42 == 79)
              {
                v49 = 1;
                goto LABEL_131;
              }

              if (v39 == 84 && v42 == 85)
              {
                v49 = 2;
                goto LABEL_131;
              }

              if (v39 == 87 && v42 == 69)
              {
                v49 = 3;
                goto LABEL_131;
              }

              if (v39 == 84 && v42 == 72)
              {
                v49 = 4;
                goto LABEL_131;
              }

              if (v39 == 70 && v42 == 82)
              {
                v49 = 5;
                goto LABEL_131;
              }

              if (v39 == 83 && v42 == 65)
              {
                v49 = 6;
                goto LABEL_131;
              }

              if (v39 == 83 && v42 == 85)
              {
                v49 = 0;
LABEL_131:
                HIDWORD(value) = v49;
LABEL_133:
                if (v32)
                {
                  v50 = -v34;
                }

                else
                {
                  v50 = v34;
                }

                LODWORD(value) = v50;
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E6993118]);
                }

                CFArrayAppendValue(Mutable, &value);
                v35 = v37;
              }

              else
              {
LABEL_132:
                if (HIDWORD(value) != -1)
                {
                  goto LABEL_133;
                }
              }

              if (v40 < v35)
              {
                v51 = Mutable;
                v52 = ~v18;
                v53 = v18 + 65;
                while (1)
                {
                  v54 = v18 + 1;
                  v55 = v40 >= 4 ? 4 : v40;
                  if ((v54 & 0x8000000000000000) == 0)
                  {
                    v56 = v107;
                    if (v107 > v54)
                    {
                      if (v104)
                      {
                        v57 = v104[v106 + 1 + v18];
                      }

                      else if (v105)
                      {
                        v57 = v105[v106 + 1 + v18];
                      }

                      else
                      {
                        if (v109 <= v54 || (v58 = v108, v108 > v54))
                        {
                          v59 = v55 + v52;
                          v60 = v53 - v55;
                          v61 = v18 - v55;
                          v62 = v61 + 1;
                          v63 = v61 + 65;
                          if (v63 >= v107)
                          {
                            v63 = v107;
                          }

                          v108 = v62;
                          v109 = v63;
                          if (v107 >= v60)
                          {
                            v56 = v60;
                          }

                          v115.location = v62 + v106;
                          v115.length = v56 + v59;
                          CFStringGetCharacters(theString, v115, buffer);
                          v35 = v37;
                          v58 = v108;
                        }

                        v57 = buffer[v18 + 1 - v58];
                      }

                      if (v57 == 44)
                      {
                        break;
                      }
                    }
                  }

                  ++v40;
                  --v52;
                  ++v53;
                  ++v18;
                  if (v36 + v54 == -1)
                  {
                    v40 = v35;
                    goto LABEL_162;
                  }
                }

                v40 = v18 + 1;
LABEL_162:
                Mutable = v51;
              }

              v34 = 0;
              v33 = 0;
              v32 = 0;
              value = 0xFFFFFFFF00000000;
              v18 = v40;
              v6 = v93;
LABEL_164:
              if (++v18 >= v35)
              {
                goto LABEL_227;
              }

              continue;
            }
          }

          if (v12 != 83 && v12 != 89 && v12 != 87)
          {
            goto LABEL_234;
          }

LABEL_166:
          if (v10 - v18 < 1)
          {
            Mutable = 0;
            if (!v1)
            {
              goto LABEL_232;
            }

            goto LABEL_228;
          }

          Mutable = 0;
          v64 = 0;
          v65 = 0;
          v66 = v18 + v10 - v18;
          while (2)
          {
            theArray = Mutable;
            v67 = 0;
            v68 = -v18;
            v69 = v18 + 64;
            v70 = v18;
LABEL_169:
            if (v70 >= 4)
            {
              v71 = 4;
            }

            else
            {
              v71 = v70;
            }

            if (v18 < 0 || (v72 = v107, v107 <= v70))
            {
              v74 = 0;
LABEL_192:
              v80 = v74;
              v81 = 1 << v74;
              v82 = v64 | (v80 == 45);
              v83 = (v81 & 0x280100000000) == 0;
              if ((v81 & 0x280100000000) != 0)
              {
                v84 = v65;
              }

              else
              {
                v84 = 0;
              }

              if (v83)
              {
                v82 = 0;
              }

              if (v80 <= 0x2D)
              {
                v85 = v82;
              }

              else
              {
                v84 = 0;
                v85 = 0;
              }

              if (v67)
              {
                v65 = 0;
              }

              else
              {
                v65 = v84;
              }

              if (v67)
              {
                v64 = 0;
              }

              else
              {
                v64 = v85;
              }

              Mutable = theArray;
              goto LABEL_214;
            }

            if (v104)
            {
              v73 = &v104[v106];
              goto LABEL_176;
            }

            if (v105)
            {
              v74 = v105[v106 + v70];
            }

            else
            {
              if (v109 <= v70 || (v75 = v108, v108 > v70))
              {
                v76 = v71 + v68;
                v77 = v69 - v71;
                v78 = v70 - v71;
                v79 = v78 + 64;
                if (v78 + 64 >= v107)
                {
                  v79 = v107;
                }

                v108 = v78;
                v109 = v79;
                if (v107 >= v77)
                {
                  v72 = v77;
                }

                v116.location = v78 + v106;
                v116.length = v72 + v76;
                CFStringGetCharacters(theString, v116, buffer);
                v75 = v108;
              }

              v73 = &buffer[-v75];
LABEL_176:
              v74 = v73[v70];
            }

            if (v74 == 44 && (v67 & 1) != 0)
            {
              if (v64)
              {
                v86 = -v65;
              }

              else
              {
                v86 = v65;
              }

              v87 = theArray;
              if (!theArray)
              {
                v87 = CFArrayCreateMutable(0, 0, 0);
              }

              CFArrayAppendValue(v87, v86);
              v65 = 0;
              v64 = 0;
              Mutable = v87;
LABEL_214:
              v18 = v70 + 1;
              if (v70 + 1 < v66)
              {
                continue;
              }

              v1 = v92;
              v6 = v93;
LABEL_222:
              if (!v1)
              {
LABEL_232:
                CPRecordInitializeProperty();
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

LABEL_234:
                v12 = 0;
                v11 = v10 + 1;
                goto LABEL_16;
              }

LABEL_228:
              if (CDBLockingAssertionsEnabled)
              {
                if (CPRecordGetStore())
                {
                  v89 = CPRecordStoreGetContext();
                  if (v89)
                  {
                    os_unfair_lock_assert_owner(v89 + 20);
                  }
                }
              }

              goto LABEL_232;
            }

            break;
          }

          if ((v74 - 48) >= 0xAu)
          {
            goto LABEL_192;
          }

          v65 = v74 + 10 * v65 - 48;
          ++v70;
          --v68;
          ++v69;
          v67 = 1;
          if (v70 >= v66)
          {
            if (v64)
            {
              v88 = -v65;
            }

            else
            {
              v88 = v65;
            }

            v6 = v93;
            Mutable = theArray;
            if (!theArray)
            {
              Mutable = CFArrayCreateMutable(0, 0, 0);
            }

            CFArrayAppendValue(Mutable, v88);
            v1 = v92;
            goto LABEL_222;
          }

          goto LABEL_169;
        }

LABEL_49:
        ++v10;
        --v19;
        ++v20;
        if (v6 <= v10)
        {
          goto LABEL_63;
        }
      }

      v23 = &v104[v106];
LABEL_44:
      v14 = v23[v10];
      goto LABEL_48;
    }
  }

LABEL_235:
  if (v1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v90 = CPRecordStoreGetContext();
        if (v90)
        {
          os_unfair_lock_assert_owner(v90 + 20);
        }
      }
    }
  }

  return CPRecordInitializeProperty();
}

uint64_t _CalRecurrenceSpecifierDerivedLoad(uint64_t a1)
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

uint64_t _CalRecurrenceLoadStoreId(uint64_t a1)
{
  result = _CalRecurrenceGetOwner(a1, 1);
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

uint64_t _CalRecurrenceLoadCalendarId(uint64_t a1)
{
  result = _CalRecurrenceGetOwner(a1, 1);
  if (result)
  {
    result = _CalCalendarItemGetCalendar(result);
    if (result)
    {
      CPRecordGetID();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
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

void _CalRecurrenceGenerateCachedEndDate(uint64_t a1)
{
  if (!CPRecordGetStore())
  {
    goto LABEL_8;
  }

  Context = CPRecordStoreGetContext();
  if (!Context)
  {
    goto LABEL_8;
  }

  v3 = _CalDatabaseCopyEventOccurrenceCache(Context);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  TimeZone = _CalEventOccurrenceCacheGetTimeZone(v3);
  if (!TimeZone)
  {
    CFRelease(v4);
LABEL_8:
    v6 = CalCopyTimeZone();
    goto LABEL_9;
  }

  v6 = CFRetain(TimeZone);
  CFRelease(v4);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (Owner)
  {
    v8 = Owner;
    if (_CalEntityIsOfType(Owner, 2))
    {
      Count = _CalRecurrenceGetCount(a1);
      if (Count >= 1)
      {
        v10 = Count;
        _CalEventGetStartDate(v8);
        v12 = CFStringCompare(v11, @"_float", 0);
        v13 = CalTimeZoneCopyCFTimeZone();
        v14 = v13;
        v15 = v6;
        if (v6)
        {
          v15 = v6;
          if (v13)
          {
            if (CFEqual(v6, v13))
            {
              v15 = v6;
            }

            else
            {
              v15 = v14;
            }
          }
        }

        CalDateTimeGetAbsoluteTime();
        _CalRecurrenceGetOrComputeCachedEndDate(a1, v10, v12 == kCFCompareEqualTo, v15, v16);
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void _CalRecurrenceAppendIndexListForSubproperty(__CFString *a1, CFArrayRef theArray, int a3)
{
  Count = CFArrayGetCount(theArray);
  chars = _CalRecurrenceSubpropertyNameForProperty___SubpropertyNames[a3 - 11];
  if (CFStringGetLength(a1) >= 1)
  {
    CFStringAppendCString(a1, ";", 0x8000100u);
  }

  CFStringAppendCharacters(a1, &chars, 1);
  CFStringAppendCString(a1, "=", 0x8000100u);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (i)
      {
        CFStringAppendFormat(a1, 0, @",%d", ValueAtIndex);
      }

      else
      {
        CFStringAppendFormat(a1, 0, @"%d", ValueAtIndex);
      }
    }
  }
}

uint64_t ICSStatusFromCalCalendarItemStatus(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalEventStatus: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1C90[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalCalendarItemStatusFromICSStatus(uint64_t a1)
{
  v1 = a1;
  v8 = *MEMORY[0x1E69E9840];
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v1 = 2;
        goto LABEL_7;
      case 2:
        v1 = 1;
        goto LABEL_7;
    }

    goto LABEL_15;
  }

  if ((a1 - 3) >= 5)
  {
    if (a1 == 8)
    {
      v1 = 3;
      goto LABEL_7;
    }

LABEL_15:
    v2 = CDBiCalendarConversionHandle;
    if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v6 = 67109120;
    v7 = v1;
    v3 = "Encountered an unknown ICSStatus: %d";
    goto LABEL_5;
  }

  v2 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = 67109120;
    v7 = v1;
    v3 = "Encountered an unhandled ICSStatus: %d";
LABEL_5:
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_DEBUG, v3, &v6, 8u);
  }

LABEL_6:
  v1 = 0;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t ICSCalendarServerAccessFromCalEventPrivacyLevel(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 4)
  {
    v3 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalEventPrivacyLevel: %d", v5, 8u);
    }

    result = 1;
  }

  else
  {
    result = dword_1DECB1D90[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalEventPrivacyLevelFromICSCalendarServerAccess(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSCalendarServerAccess: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1CA4[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICSActionFromCalAlarmType(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalAlarmType: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1CB8[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalAlarmTypeFromICSAction(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSAction: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1CCC[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalAlarmProximityFromICSProximityString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69E4078]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E4088]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E4080]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E4090]])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id ICSProximityStringFromCalAlarmProximity(int a1)
{
  if ((a1 - 1) > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_1E8689198 + (a1 - 1));
  }

  return v2;
}

uint64_t ICSFrequencyFromCalRecurrenceFrequency(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) >= 4)
  {
    v3 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown calendar frequency: %d", v5, 8u);
    }

    result = 4;
  }

  else
  {
    result = (a1 - 1) | 4u;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalRecurrenceFrequencyFromICSFrequency(uint64_t a1)
{
  v1 = a1;
  v8 = *MEMORY[0x1E69E9840];
  if (a1 <= 3)
  {
    if ((a1 - 1) < 3)
    {
      v3 = CDBiCalendarConversionHandle;
      if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v6 = 67109120;
      v7 = v1;
      v4 = "Encountered an ICS frequency that the calendar database doesn't handle: %d. Defaulting to daily";
LABEL_14:
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, v4, &v6, 8u);
      goto LABEL_15;
    }

LABEL_12:
    v3 = CDBiCalendarConversionHandle;
    if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v6 = 67109120;
    v7 = v1;
    v4 = "Encountered an unknown ICS frequency: %d";
    goto LABEL_14;
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      result = 3;
      goto LABEL_16;
    }

    if (a1 == 7)
    {
      result = 4;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (a1 == 4)
  {
LABEL_15:
    result = 1;
    goto LABEL_16;
  }

  result = 2;
LABEL_16:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICSWeekdayFromCalDayOfWeek(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 7)
  {
    v3 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalDayOfWeek: %d", v5, 8u);
    }

    result = 1;
  }

  else
  {
    result = a1 + 1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t CalDayOfWeekFromICSWeekday(uint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  result = a1 - 1;
  if (result >= 7)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSWeekday: %d", v5, 8u);
      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICSMonthFromCalMonthOfYear(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 > 63)
  {
    if (a1 > 511)
    {
      switch(a1)
      {
        case 512:
          result = 10;
          goto LABEL_31;
        case 1024:
          result = 11;
          goto LABEL_31;
        case 2048:
          result = 12;
          goto LABEL_31;
      }
    }

    else
    {
      switch(a1)
      {
        case 64:
          result = 7;
          goto LABEL_31;
        case 128:
          result = 8;
          goto LABEL_31;
        case 256:
          result = 9;
          goto LABEL_31;
      }
    }
  }

  else if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        result = 4;
        goto LABEL_31;
      case 16:
        result = 5;
        goto LABEL_31;
      case 32:
        result = 6;
        goto LABEL_31;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = 1;
        goto LABEL_31;
      case 2:
        result = 2;
        goto LABEL_31;
      case 4:
        result = 3;
        goto LABEL_31;
    }
  }

  v3 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalMonthOfYear: %d", v5, 8u);
  }

  result = 1;
LABEL_31:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalMonthOfYearFromICSMonth(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) >= 0xC)
  {
    v2 = a1;
    v3 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 67109120;
      v5[1] = v2;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSMonth: %d", v5, 8u);
    }

    result = 1;
  }

  else
  {
    result = dword_1DECB1CE0[a1 - 1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICSCalendarUserFromCalAttendeeType(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalAttendeeType: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1D10[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalAttendeeTypeFromICSCalendarUser(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 6)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSCalendarUser: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1D24[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICSRoleFromCalAttendeeRole(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 6)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalAttendeeRole: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1D3C[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalAttendeeRoleFromICSRole(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 6)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSRole: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1D54[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICSParticipationStatusFromCalAttendeeStatus(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 8)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalAttendeeStatus: %d", v5, 8u);
      result = 0;
    }
  }

  else
  {
    result = dword_1DECB1D6C[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CalAttendeeStatusFromICSParticipationStatus(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        result = 1;
      }

      else if (a1 == 3)
      {
        result = 2;
      }

      else
      {
        result = 3;
      }

      goto LABEL_25;
    }

    if (!a1)
    {
      result = 7;
      goto LABEL_25;
    }

    if (a1 == 1)
    {
LABEL_24:
      result = 0;
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (a1 > 7)
  {
    if ((a1 - 8) < 2)
    {
      v3 = CDBiCalendarConversionHandle;
      result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        goto LABEL_25;
      }

      v6 = 67109120;
      v7 = a1;
      v4 = "Encountered an unhandled ICSParticipationStatus: %d";
      goto LABEL_23;
    }

LABEL_21:
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      goto LABEL_25;
    }

    v6 = 67109120;
    v7 = a1;
    v4 = "Encountered an unknown ICSParticipationStatus: %d";
LABEL_23:
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, v4, &v6, 8u);
    goto LABEL_24;
  }

  if (a1 == 5)
  {
    result = 4;
  }

  else if (a1 == 6)
  {
    result = 5;
  }

  else
  {
    result = 6;
  }

LABEL_25:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICSScheduleAgentFromCalScheduleAgent(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CalScheduleAgentFromICSScheduleAgent(int a1)
{
  if (a1)
  {
    return a1 == 1;
  }

  else
  {
    return 2;
  }
}

uint64_t CalCalendarItemGetPropertyIDWithPropertyName(void *key)
{
  v184 = *MEMORY[0x1E69E9840];
  v2 = CalCalendarItemGetPropertyIDWithPropertyName_sPropDict;
  if (!CalCalendarItemGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalCalendarItemGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalCalendarItemGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v7 = 35;
      v8 = @"externalID";
      v9 = 24;
      v10 = @"unlocalizedTitle";
      v11 = 0;
      v12 = @"notes";
      v13 = 3;
      v14 = @"startDateRaw";
      v15 = 4;
      v16 = @"isAllDay";
      v17 = 8;
      v18 = @"uniqueID";
      v19 = 26;
      v20 = @"URLString";
      v21 = 18;
      v22 = @"sequenceNumber";
      v23 = 20;
      v24 = @"hasRecurrenceRules";
      v25 = 32;
      v26 = @"hasAttachment";
      v27 = 33;
      v28 = @"hasAttendees";
      v29 = 34;
      v30 = @"priority";
      v31 = 37;
      v32 = @"creationDate";
      v33 = 42;
      v34 = @"actionString";
      v35 = 43;
      v36 = @"lastModifiedDate";
      v37 = 19;
      v38 = @"externalScheduleID";
      v39 = 27;
      v40 = @"externalModificationTag";
      v41 = 25;
      v42 = @"externalData";
      v43 = 28;
      v44 = @"phantomMaster";
      v45 = 54;
      v46 = @"participationStatusModifiedDate";
      v47 = 55;
      v48 = @"calendarScale";
      v49 = 56;
      v50 = @"startTimeZoneName";
      v51 = 5;
      v52 = @"endTimeZoneName";
      v53 = 7;
      v54 = @"structuredData";
      v55 = 68;
      v56 = @"localStructuredData";
      v57 = 69;
      v58 = @"suppressNotificationForChanges";
      v59 = 126;
      v60 = @"travelTime";
      v61 = 57;
      v62 = @"travelAdvisoryBehavior";
      v63 = 58;
      v64 = @"status";
      v65 = 14;
      v66 = @"availability";
      v67 = 16;
      v68 = @"privacyLevel";
      v69 = 17;
      v70 = @"originalStartDate";
      v71 = 11;
      v72 = @"birthdayID";
      v73 = 21;
      v74 = @"responseComment";
      v75 = 29;
      v76 = @"proposedStartDate";
      v77 = 63;
      v78 = @"canForward";
      v79 = 64;
      v80 = @"locationPredictionState";
      v81 = 65;
      v82 = @"firedTTL";
      v83 = 66;
      v84 = @"disallowProposeNewTime";
      v85 = 67;
      v86 = @"junkStatus";
      v87 = 70;
      v88 = @"conferenceURLString";
      v89 = 71;
      v90 = @"birthdayContactIdentifier";
      v91 = 72;
      v92 = @"recurrenceSet";
      v93 = 73;
      v94 = @"birthdayContactName";
      v95 = 75;
      v96 = @"endDateRaw";
      v97 = 6;
      v98 = @"invitationStatus";
      v99 = 15;
      v100 = @"specialDayString";
      v101 = 127;
      v102 = @"creatorIdentityString";
      v103 = 118;
      v104 = @"creatorTeamIdentityString";
      v105 = 119;
      v106 = @"hasNotes";
      v107 = 121;
      v108 = @"selfParticipantStatusRaw";
      v109 = 122;
      v110 = @"sharedItemCreatedDate";
      v111 = 48;
      v112 = @"sharedItemCreatedTimeZoneName";
      v113 = 49;
      v114 = @"sharedItemModifiedDate";
      v115 = 50;
      v116 = @"sharedItemModifiedTimeZoneName";
      v117 = 51;
      v118 = @"defaultAlarmWasDeleted";
      v119 = 53;
      v120 = @"modifiedProperties";
      v121 = 22;
      v122 = @"conferenceURLDetectedString";
      v123 = 117;
      v124 = @"externalTrackingStatus";
      v125 = 23;
      v126 = @"calendar";
      v127 = 98;
      v128 = @"organizer";
      v129 = 84;
      v130 = @"selfAttendee";
      v131 = 86;
      v132 = @"originalItem";
      v133 = 97;
      v134 = @"allAlarmsSet";
      v135 = 79;
      v136 = @"recurrenceRulesSet";
      v137 = 81;
      v138 = @"attendeesRaw";
      v139 = 82;
      v140 = @"detachedItems";
      v141 = 96;
      v142 = @"ekExceptionDates";
      v143 = 80;
      v144 = @"flags";
      v145 = 74;
      v146 = @"attachmentsSet";
      v147 = 100;
      v148 = @"structuredLocationWithoutPrediction";
      v149 = 101;
      v150 = @"clientLocation";
      v151 = 102;
      v152 = @"travelStartLocation";
      v153 = 103;
      v154 = @"endLocation";
      v155 = 104;
      v156 = @"image";
      v157 = 108;
      v158 = @"color";
      v159 = 120;
      v160 = @"sharedItemCreatedByDisplayName";
      v161 = 109;
      v162 = @"sharedItemCreatedByAddressString";
      v163 = 110;
      v164 = @"sharedItemCreatedByFirstName";
      v165 = 113;
      v166 = @"sharedItemCreatedByLastName";
      v167 = 114;
      v168 = @"sharedItemModifiedByDisplayName";
      v169 = 111;
      v170 = @"sharedItemModifiedByAddressString";
      v171 = 112;
      v172 = @"sharedItemModifiedByFirstName";
      v173 = 115;
      v174 = @"sharedItemModifiedByLastName";
      v175 = 116;
      v176 = @"actions";
      v177 = 95;
      v178 = @"invitationChangedProperties";
      v179 = 52;
      v180 = @"suggestionInfo";
      v181 = 106;
      v182 = @"syncError";
      v183 = 125;
      CalCalendarItemGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 89);
      for (i = 1408; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalCalendarItemGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalCalendarItemGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEBD9DF4(_Unwind_Exception *a1)
{
  for (i = 1408; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void CalCalendarItemSetSummary(_BOOL8 a1, const __CFNumber *a2)
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

void CalCalendarItemSetDescription(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalRecordSetPropertyIfDifferent(a1, 3, a2))
  {
    _CalEventInvalidateDetectedConferenceURL(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarItemGetDescription(uint64_t a1)
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

uint64_t CalCalendarItemCopyDescription(uint64_t a1)
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

uint64_t CalCalendarItemHasPreferredLocation(uint64_t a1)
{
  if (a1)
  {
    if (CalCalendarItemHasLocation(a1))
    {
      return 1;
    }

    else
    {

      return CalCalendarItemHasClientLocation(a1);
    }
  }

  else
  {
    v3 = CDBLogHandle;
    result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v4 = 0;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_ERROR, "NULL 'item' given.  Will not determine if there is a preferred location.", v4, 2u);
      return 0;
    }
  }

  return result;
}

BOOL CalCalendarItemHasLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Location = _CalCalendarItemGetLocation(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Location != 0;
}

BOOL CalCalendarItemHasClientLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ClientLocation = _CalCalendarItemGetClientLocation(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ClientLocation != 0;
}

CFTypeRef CalCalendarItemCopyPreferredLocation(uint64_t a1)
{
  if (a1)
  {
    result = CalCalendarItemCopyClientLocation(a1);
    if (!result)
    {

      return CalCalendarItemCopyLocation(a1);
    }
  }

  else
  {
    v3 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_ERROR, "NULL 'item' given.  Will not return a preferred location.", v4, 2u);
    }

    return 0;
  }

  return result;
}

CFTypeRef CalCalendarItemCopyClientLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ClientLocation = _CalCalendarItemGetClientLocation(a1);
  v4 = ClientLocation;
  if (ClientLocation)
  {
    CFRetain(ClientLocation);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFTypeRef CalCalendarItemCopyLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Location = _CalCalendarItemGetLocation(a1);
  v4 = Location;
  if (Location)
  {
    CFRetain(Location);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFTypeRef _CalCalendarItemGetLocation(uint64_t a1)
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

void *_CalCalendarItemSetLocation(uint64_t a1, const void *a2)
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
    CalRelationSetRelatedObject(result, a2);

    return _CalEventInvalidateDetectedConferenceURL(a1);
  }

  return result;
}

void CalCalendarItemSetLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef _CalCalendarItemGetClientLocation(uint64_t a1)
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

void *_CalCalendarItemSetClientLocation(uint64_t a1, const void *a2)
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
    CalRelationSetRelatedObject(result, a2);

    return _CalEventInvalidateDetectedConferenceURL(a1);
  }

  return result;
}

void CalCalendarItemSetClientLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetClientLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void *_CalCalendarItemSetStartLocation(uint64_t a1, const void *a2)
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

CFTypeRef _CalCalendarItemGetStartLocation(uint64_t a1)
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

void CalCalendarItemSetStartLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetStartLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalCalendarItemCopyStartLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  StartLocation = _CalCalendarItemGetStartLocation(a1);
  v4 = StartLocation;
  if (StartLocation)
  {
    CFRetain(StartLocation);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void *_CalCalendarItemSetEndLocation(uint64_t a1, const void *a2)
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

CFTypeRef _CalCalendarItemGetEndLocation(uint64_t a1)
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

void CalCalendarItemSetEndLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetEndLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalCalendarItemCopyEndLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  EndLocation = _CalCalendarItemGetEndLocation(a1);
  v4 = EndLocation;
  if (EndLocation)
  {
    CFRetain(EndLocation);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t CalCalendarItemCopyCreationDate(uint64_t a1)
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

void CalCalendarItemSetCreationDate(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 42, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyLastModifiedDate(uint64_t a1)
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

void CalCalendarItemSetLastModifiedDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 19, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyStartDate(uint64_t a1)
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

void _CalCalendarItemInvalidateAllRecurrenceRuleCachedEndDates(uint64_t a1)
{
  v1 = _CalCalendarItemCopyRecurrences(a1);
  if (v1)
  {
    v2 = v1;
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = *MEMORY[0x1E6993100];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
        _CalRecurrenceSetCachedEndDate(ValueAtIndex, v6);
        ++v5;
      }

      while (v4 != v5);
    }

    CFRelease(v2);
  }
}

CFMutableArrayRef _CalCalendarItemCopyRecurrencesWhileLocked(uint64_t a1, int a2)
{
  if (a2)
  {
    return _CalCalendarItemCopyRecurrences(a1);
  }

  else
  {
    return CalCalendarItemCopyRecurrences(a1);
  }
}

void CalCalendarItemSetStartDate(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalRecordSetPropertyIfDifferent(a1, 4, a2))
  {
    _CalCalendarItemInvalidateAllRecurrenceRuleCachedEndDates(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarItemCopyStartTimeZone(uint64_t a1)
{
  if (_CalCalendarItemIsFloating(a1))
  {
    return 0;
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

  CPRecordGetProperty();

  return CalTimeZoneCopyCFTimeZone();
}

uint64_t CalCalendarItemCopyStartTimeZone(uint64_t a1)
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

void CalCalendarItemSetStartTimeZone(_BOOL8 a1, uint64_t a2)
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

  _CalRecordSetPropertyIfDifferent(a1, 5, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarItemCopyEndTimeZone(uint64_t a1)
{
  if (_CalCalendarItemIsFloating(a1))
  {
    return 0;
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
    return 0;
  }

  return CalTimeZoneCopyCFTimeZone();
}

uint64_t CalCalendarItemCopyEndTimeZone(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyEndTimeZone(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetEndTimeZone(_BOOL8 a1, uint64_t a2)
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

  _CalRecordSetPropertyIfDifferent(a1, 7, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemIsFloating(uint64_t a1)
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

BOOL CalCalendarItemIsAllDay(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsAllDay = _CalCalendarItemIsAllDay(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsAllDay;
}

BOOL _CalCalendarItemIsAllDay(uint64_t a1)
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

  return CPRecordGetIntegerProperty() != 0;
}

void CalCalendarItemSetAllDay(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 8, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemSetAvailability(_BOOL8 a1, unsigned int a2)
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

uint64_t CalCalendarItemGetAvailability(uint64_t a1)
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

void CalCalendarItemSetPrivacyLevel(_BOOL8 a1, unsigned int a2)
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

uint64_t CalCalendarItemGetPrivacyLevel(uint64_t a1)
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

void CalCalendarItemSetPriority(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2 <= 9)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  _CalRecordSetPropertyIfDifferent(a1, 37, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemGetPriority(uint64_t a1)
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

void CalCalendarItemSetAction(_BOOL8 a1, const __CFURL *a2)
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

  _CalRecordSetPropertyIfDifferent(a1, 43, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalCalendarItemCopyAction(uint64_t a1)
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

uint64_t CalCalendarItemCopyAppLink(uint64_t a1)
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

uint64_t CalCalendarItemGetSequenceNumber(uint64_t a1)
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

void CalCalendarItemSetSequenceNumber(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 20, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

__CFArray *CalCalendarItemCopyCategories(uint64_t a1)
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
  if (Property && (v5 = CalToManyRelationCopyObjects(Property)) != 0)
  {
    v6 = v5;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        Category = _CalCategoryLinkGetCategory(ValueAtIndex);
        CFArrayAppendValue(Mutable, Category);
      }
    }

    CFRelease(v6);
  }

  else
  {
    Mutable = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Mutable;
}

void CalCalendarItemRemoveAllCategories(uint64_t a1)
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

void CalCalendarItemAddCategory(const void *a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddCategory(a1, a2, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalCalendarItemAddCategory(const void *a1, CFTypeRef a2, int a3)
{
  EntityType = _CalCategoryGetEntityType(a2);
  if (EntityType == _CalEntityGetType(a1))
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
      v9 = Property;
      v10 = CalToManyRelationCopyObjects(Property);
      if (v10)
      {
        v11 = v10;
        Count = CFArrayGetCount(v10);
        if (Count < 1)
        {
LABEL_14:
          CFRelease(v11);
          DatabaseForRecord = CalGetDatabaseForRecord();
          CategoryLinkWithOwnerAndCategory = _CalDatabaseCreateCategoryLinkWithOwnerAndCategory(DatabaseForRecord, a1, a2);
          _CalCategoryLinkSetGroup(CategoryLinkWithOwnerAndCategory);
          CalToManyRelationAddObject(v9, CategoryLinkWithOwnerAndCategory);
          v18 = CategoryLinkWithOwnerAndCategory;
        }

        else
        {
          v13 = Count;
          v14 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
            if (_CalCategoryLinkGetCategory(ValueAtIndex) == a2 && _CalRecurrenceGetWeekStartRaw(ValueAtIndex) == a3)
            {
              break;
            }

            if (v13 == ++v14)
            {
              goto LABEL_14;
            }
          }

          v18 = v11;
        }

        CFRelease(v18);
      }
    }
  }
}

void _CalCalendarItemRemoveCategory(const void *a1, CFTypeRef a2)
{
  EntityType = _CalCategoryGetEntityType(a2);
  if (EntityType == _CalEntityGetType(a1))
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
      v7 = Property;
      v8 = CalToManyRelationCopyObjects(Property);
      if (v8)
      {
        v9 = v8;
        Count = CFArrayGetCount(v8);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
            if (_CalCategoryLinkGetCategory(ValueAtIndex) == a2)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_16;
            }
          }

          CalToManyRelationRemoveObject(v7, ValueAtIndex);
        }

LABEL_16:

        CFRelease(v9);
      }
    }
  }
}

void CalCalendarItemRemoveCategory(const void *a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveCategory(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemAddGroupedCategory(const void *a1, const void *a2, int a3)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddCategory(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

id CalCalendarItemCopyGroupedCategories(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
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

  if ([(__CFArray *)v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v5;
    v7 = v5;
    v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          Category = _CalCategoryLinkGetCategory(v12);
          if (Category)
          {
            v14 = Category;
            v15 = [MEMORY[0x1E696AD98] numberWithInt:_CalRecurrenceGetWeekStartRaw(v12)];
            v16 = [v6 objectForKeyedSubscript:v15];
            if (!v16)
            {
              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v6 setObject:v16 forKeyedSubscript:v15];
            }

            [v16 addObject:{v14, v19}];
          }
        }

        v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v5 = v19;
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

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _CalCalendarItemCopyURL(uint64_t a1)
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
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] _lp_URLWithUserTypedString:v2 relativeToURL:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t CalCalendarItemCopyURL(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyURL(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetURL(uint64_t a1, const __CFURL *a2)
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

  if (_CalCalendarItemSetRecordProperty(a1, 18, v5))
  {
    _CalEventInvalidateDetectedConferenceURL(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemGetStatus(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Status = _CalCalendarItemGetStatus(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Status;
}

void CalCalendarItemSetStatus(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (_CalCalendarItemGetStatus(a1) != a2)
  {
    _CalCalendarItemSetRecordProperty(a1, 14, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemStillExists()
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v1 = _CalRecordStillExists();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v1;
}

void CalCalendarItemSetSuppressNotificationForChanges(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 126, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemSuppressNotificationForChanges(uint64_t a1)
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

void *_CalCalendarItemSetOrganizer(uint64_t a1, const void *a2)
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

void CalCalendarItemSetOrganizer(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetOrganizer(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemIsSelfOrganizedWithScheduleAgentClient(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CalCalendarItemCopyOrganizer(a1);
  v5 = v4;
  if (v4)
  {
    ScheduleAgent = CalParticipantGetScheduleAgent(v4);
    CFRelease(v5);
    if (ScheduleAgent == 1)
    {
      if (v3)
      {
        v7 = CalOrganizerCopyAddress(v5);
        v8 = [v7 absoluteString];
        v5 = [v3 addressIsAccountOwner:v8];
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void CalCalendarItemSetupOrganizerAndSelfAttendeeForImportedItem(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (CalCalendarGetSharingStatus(a2) != 2)
  {
    v19 = v5;
    if (!a1)
    {
      v6 = 0;
      goto LABEL_47;
    }

    v6 = CalCalendarItemCopySelfAttendee(a1);
    if (!v6)
    {
      v20 = CalCalendarItemCopyAttendees(a1);
      if (![(__CFArray *)v20 count])
      {
        v6 = 0;
        goto LABEL_46;
      }

      v21 = 0;
      while (1)
      {
        v6 = [(__CFArray *)v20 objectAtIndexedSubscript:v21];

        v22 = CalAttendeeCopyAddress(v6);
        if ([v19 addressURLIsAccountOwner:v22])
        {
          CFRetain(v6);
          goto LABEL_45;
        }

        v23 = CalAttendeeCopyEmailAddress(v6);
        if (v23)
        {
          v24 = MEMORY[0x1E695DFF8];
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v23];
          v26 = [v24 URLWithString:v25];

          if ([v19 addressURLIsAccountOwner:v26])
          {
            CFRetain(v6);

            v22 = v26;
LABEL_45:

LABEL_46:
            break;
          }

          v22 = v26;
        }

        if (++v21 >= [(__CFArray *)v20 count])
        {
          v6 = 0;
          goto LABEL_46;
        }
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if (!a1)
  {
    v6 = 0;
    goto LABEL_48;
  }

  v6 = CalCalendarItemCopySelfAttendee(a1);
  if (v6)
  {
    goto LABEL_48;
  }

  v36 = CalCalendarCopySharedOwnerAddresses(a2);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = CalCalendarItemCopyAttendees(a1);
  v7 = [(__CFArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v7)
  {
    v6 = 0;
    goto LABEL_41;
  }

  v8 = v7;
  v34 = a1;
  v37 = *v43;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v43 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v42 + 1) + 8 * i);
      v10 = CalAttendeeCopyEmailAddress(v6);
      if (v10)
      {
        v11 = MEMORY[0x1E695DFF8];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v10];
        v13 = [v11 URLWithString:v12];

        if (!v13)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = CalAttendeeCopyAddress(v6);
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = v36;
      v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v39;
LABEL_15:
        v18 = 0;
        while (1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([MEMORY[0x1E6992078] compareAddressURL:v13 localString:*(*(&v38 + 1) + 8 * v18)])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v16)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        CFRetain(v6);

        if (!v6)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

LABEL_21:

LABEL_23:
    }

    v8 = [(__CFArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  v6 = 0;
LABEL_39:
  a1 = v34;
LABEL_41:

LABEL_48:
  v27 = CalCalendarItemCopyOrganizer(a1);
  if (v27)
  {
    v28 = v27;
    v29 = CalOrganizerCopyAddress(v27);
    if ([v5 addressURLIsAccountOwner:v29])
    {
      v30 = 1;
    }

    else
    {
      v31 = CalOrganizerCopyEmailAddress(v28);
      v30 = [v5 addressIsAccountOwner:v31];
    }

    CalOrganizerSetIsSelf(v28, v30);
    CalCalendarItemSetOrganizer(a1, v28);
    CFRelease(v28);
  }

  CalCalendarItemSetSelfAttendee(a1, v6);
  ProposedStartDate = CalAttendeeGetProposedStartDate(v6);
  CalEventSetProposedStartDate(a1, ProposedStartDate);
  if (v6)
  {
    CFRelease(v6);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void CalCalendarItemSetSelfAttendee(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetSelfAttendee(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemSetHidden(_BOOL8 a1, unsigned int a2)
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

BOOL CalCalendarItemIsHidden(uint64_t a1)
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

void CalCalendarItemSetIsPhantomMaster(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 54, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalCalendarItemIsPhantomMaster(uint64_t a1)
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

BOOL CalCalendarItemIsPhantomMaster(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsPhantomMaster = _CalCalendarItemIsPhantomMaster(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsPhantomMaster;
}

uint64_t _CalCalendarItemCopyCalendarScale(uint64_t a1)
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

void CalCalendarItemSetCalendarScale(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 56, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCalendarScale(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyCalendarScale(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetCreatedByDisplayName(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 109, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedByDisplayName(uint64_t a1)
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

void CalCalendarItemSetCreatedByAddress(_BOOL8 a1, const __CFURL *a2)
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

  _CalRecordSetPropertyIfDifferent(a1, 110, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalCalendarItemCopyCreatedByAddress(uint64_t a1)
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
    v5 = CFURLCreateWithString(0, Property, 0);
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

void CalCalendarItemSetCreatedByFirstName(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 113, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedByFirstName(uint64_t a1)
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

void CalCalendarItemSetCreatedByLastName(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 114, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedByLastName(uint64_t a1)
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

void CalCalendarItemSetCreatedDate(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 48, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedDate(uint64_t a1)
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

void CalCalendarItemSetCreatedTimezone(_BOOL8 a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = MEMORY[0x1E12C6390](a2);
  _CalRecordSetPropertyIfDifferent(a1, 49, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedTimezone(uint64_t a1)
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
  v4 = CalTimeZoneCopyCFTimeZone();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalCalendarItemSetModifiedByDisplayName(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 111, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyModifiedByDisplayName(uint64_t a1)
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

void CalCalendarItemSetModifiedByAddress(_BOOL8 a1, const __CFURL *a2)
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

  _CalRecordSetPropertyIfDifferent(a1, 112, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalCalendarItemCopyModifiedByAddress(uint64_t a1)
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
    v5 = v4;
    v6 = CFURLCreateWithString(0, v4, 0);
    CFRelease(v5);
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

void CalCalendarItemSetModifiedByFirstName(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 115, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyModifiedByFirstName(uint64_t a1)
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

void CalCalendarItemSetModifiedByLastName(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 116, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyModifiedByLastName(uint64_t a1)
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

void CalCalendarItemSetModifiedDate(uint64_t a1)
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

uint64_t CalCalendarItemCopyModifiedDate(uint64_t a1)
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

void CalCalendarItemSetModifiedTimezone(uint64_t a1, uint64_t a2)
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

  MEMORY[0x1E12C6390](a2);
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyModifiedTimezone(uint64_t a1)
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
  v4 = CalTimeZoneCopyCFTimeZone();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalCalendarItemClearExternalProperties(_BOOL8 a1)
{
  _CalRecordSetPropertyIfDifferent(a1, 24, 0);
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

  CPRecordSetProperty();
  if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

  CPRecordSetProperty();
  if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

  return CPRecordSetProperty();
}

void CalCalendarItemClearExternalProperties(const void *a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemClearExternalProperties(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (a2)
  {
    v5 = CalCalendarItemCopyAlarms(a1);
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
          CalAlarmClearExternalProperties(ValueAtIndex);
        }
      }

      CFRelease(v6);
    }

    v11 = CalCalendarItemCopyRecurrences(a1);
    if (v11)
    {
      v12 = v11;
      v13 = CFArrayGetCount(v11);
      if (v13 >= 1)
      {
        v14 = v13;
        for (j = 0; j != v14; ++j)
        {
          v16 = CFArrayGetValueAtIndex(v12, j);
          CalRecurrenceClearExternalProperties(v16);
        }
      }

      CFRelease(v12);
    }

    v17 = CalGetRecordLock();
    os_unfair_lock_lock(v17);
    if (_CalEntityGetType(a1) == 2)
    {
      v18 = _CalEventCopyDetachedEvents(a1);
      if (v18)
      {
        v19 = v18;
        v20 = CFArrayGetCount(v18);
        if (v20 >= 1)
        {
          v21 = v20;
          for (k = 0; k != v21; ++k)
          {
            v23 = CFArrayGetValueAtIndex(v19, k);
            _CalCalendarItemClearExternalProperties(v23);
          }
        }

        CFRelease(v19);
      }
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v17);
    }

    os_unfair_lock_unlock(v17);
  }
}

CFMutableArrayRef CalCalendarItemCopyAlarms(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyAlarms(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFMutableArrayRef CalCalendarItemCopyRecurrences(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyRecurrences(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetExternalID(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 24, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarItemCopyExternalID(uint64_t a1)
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

uint64_t CalCalendarItemCopyExternalID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyExternalID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetExternalScheduleID(uint64_t a1)
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

uint64_t CalCalendarItemCopyExternalScheduleID(uint64_t a1)
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

void CalCalendarItemSetExternalModificationTag(uint64_t a1)
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

uint64_t CalCalendarItemCopyExternalModificationTag(uint64_t a1)
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

void CalCalendarItemSetExternalRepresentation(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 28, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}