@interface CalDatabaseChangeReport
- (BOOL)processChangeOfRelatedRecord:(void *)record changeType:(unint64_t)type flag:(unint64_t)flag ownerGetter:(void *)getter uidToIndex:(__CFDictionary *)index;
- (CalDatabaseChangeReport)initWithAdded:(__CFArray *)added updated:(__CFArray *)updated deleted:(__CFArray *)deleted;
- (CalDatabaseChangeReport)initWithCoder:(id)coder;
- (id)initForReset;
- (int)appendNewRecord;
- (int)newOrExistingRecordIndexForEvent:(void *)event changeType:(unint64_t)type uidToIndex:(__CFDictionary *)index;
- (void)changesSavedInDatabase:(CalDatabase *)database;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateImpactedEvents:(id)events;
- (void)freeRecords;
- (void)markNeedsReset;
- (void)preprocessAdds:(__CFArray *)adds updates:(__CFArray *)updates deletes:(__CFArray *)deletes;
- (void)processChanges:(__CFArray *)changes ofType:(unint64_t)type;
@end

@implementation CalDatabaseChangeReport

- (CalDatabaseChangeReport)initWithAdded:(__CFArray *)added updated:(__CFArray *)updated deleted:(__CFArray *)deleted
{
  v11.receiver = self;
  v11.super_class = CalDatabaseChangeReport;
  v8 = [(CalDatabaseChangeReport *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CalDatabaseChangeReport *)v8 preprocessAdds:added updates:updated deletes:deleted];
  }

  return v9;
}

- (id)initForReset
{
  v3.receiver = self;
  v3.super_class = CalDatabaseChangeReport;
  result = [(CalDatabaseChangeReport *)&v3 init];
  if (result)
  {
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 24) = 1;
  }

  return result;
}

- (CalDatabaseChangeReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = CalDatabaseChangeReport;
  v5 = [(CalDatabaseChangeReport *)&v28 init];
  if (!v5)
  {
    goto LABEL_13;
  }

  v5->_reset = [coderCopy decodeBoolForKey:@"reset"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"range"];
  range = v5->_range;
  v5->_range = v6;

  v8 = [coderCopy decodeIntForKey:@"count"];
  v5->_recordCount = v8;
  v5->_recordCapacity = v8;
  v5->_records = malloc_type_calloc(v8, 0x20uLL, 0x10E00400439666CuLL);
  v26 = coderCopy;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"records"];
  v10 = [v9 length];
  v25 = v9;
  bytes = [v9 bytes];
  if (v5->_recordCount < 1)
  {
LABEL_12:

    coderCopy = v26;
LABEL_13:
    v22 = v5;
    goto LABEL_20;
  }

  v12 = bytes;
  v13 = 0;
  while (1)
  {
    if (v10 <= 0x17)
    {
      v23 = CDBLogHandle;
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 0;
      goto LABEL_18;
    }

    v10 -= 24;
    v14 = &v5->_records[v13];
    *(v14 + 8) = *v12;
    *(v14 + 12) = *(v12 + 8);
    *(v14 + 16) = *(v12 + 16);
    v15 = *(v12 + 4);
    if (v15)
    {
      break;
    }

    v16 = 0;
LABEL_11:
    v12 += v16 + 24;
    if (++v13 >= v5->_recordCount)
    {
      goto LABEL_12;
    }
  }

  if (v10 >= 8 * v15)
  {
    v16 = 8 * v15;
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v12 + 4)];
    v18 = (v12 + 24);
    do
    {
      v19 = *v18++;
      v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v19];
      [v17 addObject:v20];

      --v15;
    }

    while (v15);
    v10 -= v16;
    v21 = v17;
    v5->_records[v13].var4 = v21;

    goto LABEL_11;
  }

  v23 = CDBLogHandle;
  if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

  *buf = 0;
LABEL_18:
  _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, "Not enough data to restore change reports", buf, 2u);
LABEL_19:

  v22 = 0;
  coderCopy = v26;
LABEL_20:

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  v42 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_reset)
  {
    [coderCopy encodeBool:1 forKey:@"reset"];
  }

  else
  {
    [coderCopy encodeInt:self->_recordCount forKey:@"count"];
    [v5 encodeObject:self->_range forKey:@"range"];
    recordCount = self->_recordCount;
    v7 = 24 * recordCount;
    if (recordCount < 1)
    {
      v9 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 24;
      do
      {
        v9 += [*(&self->_records->var0 + v10) count];
        ++v8;
        v10 += 32;
      }

      while (v8 < self->_recordCount);
    }

    v30 = malloc_type_calloc(1uLL, v7 + 8 * v9, 0x88D65353uLL);
    if (v30)
    {
      v28 = v7 + 8 * v9;
      v29 = v5;
      if (self->_recordCount >= 1)
      {
        v11 = 0;
        v12 = v30;
        do
        {
          v13 = &self->_records[v11];
          *v12 = v13->var1;
          v14 = v13->var4;
          v15 = [(__CFArray *)v14 count];
          *(v12 + 1) = v15;
          v16 = &self->_records[v11];
          v12[8] = v16->var2;
          *(v12 + 2) = v16->var3;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v17 = v14;
          v18 = [(__CFArray *)v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = 0;
            v21 = *v32;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(v17);
                }

                [*(*(&v31 + 1) + 8 * i) timeIntervalSinceReferenceDate];
                *&v12[8 * v20++ + 24] = v23;
              }

              v19 = [(__CFArray *)v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
            }

            while (v19);
          }

          v12 += 8 * v15 + 24;
          ++v11;
        }

        while (v11 < self->_recordCount);
      }

      v24 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v30 length:v28 freeWhenDone:1];
      v5 = v29;
      [v29 encodeObject:v24 forKey:@"records"];
    }

    else
    {
      v25 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v26 = self->_recordCount;
        *buf = 134218496;
        v37 = v7 + 8 * v9;
        v38 = 2048;
        v39 = v26;
        v40 = 2048;
        v41 = v9;
        _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_ERROR, "Unable to allocate %lu bytes for encoding change report with %lu records and %lu dates", buf, 0x20u);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(CalDatabaseChangeReport *)self freeRecords];
  v3.receiver = self;
  v3.super_class = CalDatabaseChangeReport;
  [(CalDatabaseChangeReport *)&v3 dealloc];
}

- (void)freeRecords
{
  p_records = &self->_records;
  records = self->_records;
  if (records)
  {
    if (self->_recordCount >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *p_records;
        var4 = (*p_records)[v5].var4;
        if (var4)
        {
          CFRelease(var4);
          v7 = *p_records;
        }

        var0 = v7[v5].var0;
        if (var0)
        {
          CFRelease(var0);
        }

        ++v6;
        ++v5;
      }

      while (v6 < self->_recordCount);
      records = *p_records;
    }

    free(records);
    *p_records = 0;
    p_records[1] = 0;
  }
}

- (void)changesSavedInDatabase:(CalDatabase *)database
{
  if (self->_recordCount)
  {
    v5 = _CalDatabaseCopyEventOccurrenceCache(database);
    if (v5)
    {
      v6 = v5;
      __CalDatabaseBeginReadTransaction(database, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabaseChangeReport.m:181");
      v7 = _CalEventOccurrenceCacheCreateOccurrenceCacheRange(v6);
      range = self->_range;
      self->_range = v7;

      if (self->_recordCount >= 1)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          records = self->_records;
          if (records[v9].var0)
          {
            ID = CPRecordGetID();
            v13 = &self->_records[v9];
            v13->var1 = ID;
            CFRelease(v13->var0);
            self->_records[v9].var0 = 0;
            records = self->_records;
          }

          v14 = &records[v9];
          if (!v14->var2)
          {
            self->_records[v9].var4 = _CalEventOccurrenceCacheCopyAllStartDatesForEvent(v6, v14->var1);
          }

          ++v10;
          ++v9;
        }

        while (v10 < self->_recordCount);
      }

      __CalDatabaseRollbackTransaction(database, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabaseChangeReport.m:195");

      CFRelease(v6);
    }

    else
    {

      [(CalDatabaseChangeReport *)self markNeedsReset];
    }
  }
}

- (void)enumerateImpactedEvents:(id)events
{
  if (self->_recordCount >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (((*(events + 2))(events, self->_records[v5].var1, self->_records[v5].var2, self->_records[v5].var3, self->_records[v5].var4) & 1) == 0)
      {
        break;
      }

      ++v6;
      ++v5;
    }

    while (v6 < self->_recordCount);
  }
}

- (void)preprocessAdds:(__CFArray *)adds updates:(__CFArray *)updates deletes:(__CFArray *)deletes
{
  [(CalDatabaseChangeReport *)self processChanges:adds ofType:0];
  [(CalDatabaseChangeReport *)self processChanges:updates ofType:1];

  [(CalDatabaseChangeReport *)self processChanges:deletes ofType:2];
}

- (void)processChanges:(__CFArray *)changes ofType:(unint64_t)type
{
  v51 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  changesCopy = changes;
  v9 = [(__CFArray *)changesCopy countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v43;
    v13 = &CDBChangeReportHandle;
    *&v10 = 67109376;
    v40 = v10;
    do
    {
      v14 = 0;
      v41 = v11;
      do
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(changesCopy);
        }

        v15 = *(*(&v42 + 1) + 8 * v14);
        RecordID = _CalEntityGetRecordID(v15);
        if (!RecordID)
        {
          v18 = *v13;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = v12;
            typeCopy = type;
            v21 = changesCopy;
            v22 = Mutable;
            selfCopy = self;
            v24 = v13;
            ID = CPRecordGetID();
            if (v15)
            {
              if (CDBLockingAssertionsEnabled)
              {
                if (CPRecordGetStore())
                {
                  Context = CPRecordStoreGetContext();
                  if (Context)
                  {
                    os_unfair_lock_assert_owner(Context + 20);
                  }
                }
              }
            }

            IsDeleted = CPRecordIsDeleted();
            *buf = v40;
            v47 = ID;
            v48 = 1024;
            v49 = IsDeleted;
            _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_ERROR, "Failed to get recordID for record with rowid [%d], deleted: %{BOOL}d", buf, 0xEu);
            v13 = v24;
            self = selfCopy;
            Mutable = v22;
            changesCopy = v21;
            type = typeCopy;
            v12 = v19;
            v11 = v41;
          }

          goto LABEL_39;
        }

        v17 = CalRecordIDGetEntityType(RecordID);
        if (v17 <= 6)
        {
          if (v17 > 3)
          {
            if (v17 == 4)
            {
              v28 = _CalAlarmGetOwningCalendarItem;
              selfCopy3 = self;
              v30 = v15;
              typeCopy3 = type;
              v32 = 4096;
              goto LABEL_38;
            }

            if (v17 == 6)
            {
              if (type != 1)
              {
                v36 = *v13;
                if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  v34 = "Resetting because a store was added or removed.";
                  goto LABEL_55;
                }

                goto LABEL_56;
              }

              if (_CalStoreHasDirtyInstanceAttributes(v15))
              {
                v36 = *v13;
                if (!os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_56;
                }

                *buf = 0;
                v34 = "Resetting because a store has dirty properties.";
LABEL_55:
                _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_INFO, v34, buf, 2u);
                goto LABEL_56;
              }
            }
          }

          else if (v17 == 1)
          {
            if (type != 1)
            {
              v36 = *v13;
              if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                v34 = "Resetting because a calendar was added or removed.";
                goto LABEL_55;
              }

              goto LABEL_56;
            }

            if (_CalCalendarHasDirtyInstanceAttributes(v15))
            {
              v36 = *v13;
              if (!os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
              {
                goto LABEL_56;
              }

              *buf = 0;
              v34 = "Resetting because a calendar has dirty properties.";
              goto LABEL_55;
            }
          }

          else if (v17 == 2 && [(CalDatabaseChangeReport *)self newOrExistingRecordIndexForEvent:v15 changeType:type uidToIndex:Mutable]< 0)
          {
            goto LABEL_57;
          }
        }

        else if (v17 > 28)
        {
          if (v17 != 29)
          {
            if (v17 != 100)
            {
              goto LABEL_39;
            }

LABEL_33:
            v28 = _CalParticipantGetOwner;
            selfCopy3 = self;
            v30 = v15;
            typeCopy3 = type;
            v32 = 2048;
LABEL_38:
            if (![(CalDatabaseChangeReport *)selfCopy3 processChangeOfRelatedRecord:v30 changeType:typeCopy3 flag:v32 ownerGetter:v28 uidToIndex:Mutable, v40])
            {
              goto LABEL_57;
            }

            goto LABEL_39;
          }

          if (type == 1)
          {
            v36 = *v13;
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v34 = "Resetting because a color changed.";
              goto LABEL_55;
            }

LABEL_56:
            [(CalDatabaseChangeReport *)self markNeedsReset];
            goto LABEL_57;
          }
        }

        else
        {
          if ((v17 - 7) < 2)
          {
            goto LABEL_33;
          }

          if (v17 == 11 && ![(CalDatabaseChangeReport *)self processChangeOfRelatedRecord:v15 changeType:type flag:0x2000 ownerGetter:_CalAttachmentGetOwner uidToIndex:Mutable])
          {
            goto LABEL_57;
          }
        }

LABEL_39:
        ++v14;
      }

      while (v11 != v14);
      v33 = [(__CFArray *)changesCopy countByEnumeratingWithState:&v42 objects:v50 count:16];
      v11 = v33;
    }

    while (v33);
  }

LABEL_57:

  v39 = *MEMORY[0x1E69E9840];
}

- (BOOL)processChangeOfRelatedRecord:(void *)record changeType:(unint64_t)type flag:(unint64_t)flag ownerGetter:(void *)getter uidToIndex:(__CFDictionary *)index
{
  if (type != 1)
  {
    return 1;
  }

  v10 = (getter)(record, a2);
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  if (CPRecordGetID() == -1)
  {
    return 1;
  }

  v12 = [(CalDatabaseChangeReport *)self newOrExistingRecordIndexForEvent:v11 changeType:1 uidToIndex:index];
  if ((v12 & 0x80000000) == 0)
  {
    v13 = &self->_records[v12];
    v13->var3 |= flag;
    return 1;
  }

  return 0;
}

- (void)markNeedsReset
{
  self->_reset = 1;
  if (self->_records)
  {
    [(CalDatabaseChangeReport *)self freeRecords];
  }
}

- (int)newOrExistingRecordIndexForEvent:(void *)event changeType:(unint64_t)type uidToIndex:(__CFDictionary *)index
{
  value = -1;
  ID = CPRecordGetID();
  if (type)
  {
    v10 = ID;
    v11 = ID;
    if (CFDictionaryGetValueIfPresent(index, ID, &value))
    {
      return value;
    }

    value = [(CalDatabaseChangeReport *)self appendNewRecord];
    CFDictionaryAddValue(index, v11, value);
    v12 = value;
    if ((value & 0x8000000000000000) == 0)
    {
      self->_records[value].var0 = 0;
      records = self->_records;
      v14 = &records[v12];
      v14->var1 = v10;
      v14->var2 = type == 2;
      if (type == 1)
      {
        if (event)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              Context = CPRecordStoreGetContext();
              if (Context)
              {
                os_unfair_lock_assert_owner(Context + 20);
              }
            }
          }
        }

        v16 = CPRecordCopyChangedProperties();
        if (v16)
        {
          v17 = v16;
          Count = CFArrayGetCount(v16);
          if (Count >= 1)
          {
            v19 = Count;
            v20 = 0;
            v21 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v17, v21);
              if (ValueAtIndex > 56)
              {
                if (ValueAtIndex > 80)
                {
                  if (ValueAtIndex <= 85)
                  {
                    if ((ValueAtIndex - 82) >= 3)
                    {
                      if (ValueAtIndex != 81)
                      {
                        goto LABEL_58;
                      }

LABEL_52:
                      v23 = 8;
                      goto LABEL_59;
                    }

LABEL_50:
                    v23 = 2048;
                    goto LABEL_59;
                  }

                  if (ValueAtIndex == 86)
                  {
                    goto LABEL_50;
                  }

                  if (ValueAtIndex != 100)
                  {
LABEL_58:
                    v23 = 0x80000000;
                    goto LABEL_59;
                  }

                  v23 = 0x2000;
                }

                else
                {
                  if (ValueAtIndex > 73)
                  {
                    if (ValueAtIndex == 74)
                    {
                      v23 = 1024;
                      goto LABEL_59;
                    }

                    if (ValueAtIndex == 78)
                    {
LABEL_53:
                      v23 = 16;
                      goto LABEL_59;
                    }

                    if (ValueAtIndex != 79)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_46;
                  }

                  if ((ValueAtIndex - 59) >= 2 && ValueAtIndex != 57)
                  {
                    if (ValueAtIndex != 58)
                    {
                      goto LABEL_58;
                    }

LABEL_46:
                    v23 = 4096;
                    goto LABEL_59;
                  }

                  v23 = 128;
                }
              }

              else if (ValueAtIndex > 7)
              {
                if (ValueAtIndex > 31)
                {
                  if (ValueAtIndex == 32)
                  {
                    goto LABEL_52;
                  }

                  if (ValueAtIndex == 53)
                  {
                    goto LABEL_46;
                  }

                  if (ValueAtIndex != 55)
                  {
                    goto LABEL_58;
                  }
                }

                else
                {
                  if (ValueAtIndex == 8)
                  {
                    v23 = 4;
                    goto LABEL_59;
                  }

                  if (ValueAtIndex == 9)
                  {
                    goto LABEL_53;
                  }

                  if (ValueAtIndex != 15)
                  {
                    goto LABEL_58;
                  }
                }

                v23 = 512;
              }

              else
              {
                if (ValueAtIndex > 4)
                {
                  if (ValueAtIndex == 6)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = 2;
                  }

                  goto LABEL_59;
                }

                if ((ValueAtIndex - 1) < 2)
                {
                  v23 = 64;
                }

                else if (ValueAtIndex)
                {
                  if (ValueAtIndex != 3)
                  {
                    goto LABEL_58;
                  }

                  v23 = 256;
                }

                else
                {
                  v23 = 32;
                }
              }

LABEL_59:
              v20 |= v23;
              if (v19 == ++v21)
              {
                goto LABEL_71;
              }
            }
          }

          v20 = 0;
LABEL_71:
          CFRelease(v17);
        }

        else
        {
          v20 = 0;
        }

        records = self->_records;
        records[value].var3 = v20;
        goto LABEL_64;
      }

LABEL_63:
      records[v12].var3 = -1;
LABEL_64:
      records[value].var4 = 0;
      return value;
    }
  }

  else
  {
    appendNewRecord = [(CalDatabaseChangeReport *)self appendNewRecord];
    v12 = appendNewRecord;
    value = appendNewRecord;
    if ((appendNewRecord & 0x80000000) == 0)
    {
      self->_records[appendNewRecord].var0 = CFRetain(event);
      records = self->_records;
      v25 = &records[v12];
      v25->var1 = 0;
      v25->var2 = 0;
      goto LABEL_63;
    }
  }

  v26 = CDBChangeReportHandle;
  if (os_log_type_enabled(CDBChangeReportHandle, OS_LOG_TYPE_INFO))
  {
    v28 = 0;
    _os_log_impl(&dword_1DEBB1000, v26, OS_LOG_TYPE_INFO, "Resetting because adding a new change record failed.", &v28, 2u);
  }

  [(CalDatabaseChangeReport *)self markNeedsReset];
  return value;
}

- (int)appendNewRecord
{
  v12 = *MEMORY[0x1E69E9840];
  recordCount = self->_recordCount;
  recordCapacity = self->_recordCapacity;
  self->_recordCount = recordCount + 1;
  if (recordCount + 1 >= recordCapacity)
  {
    if (recordCapacity)
    {
      v5 = 2 * recordCapacity;
    }

    else
    {
      v5 = 4;
    }

    self->_recordCapacity = v5;
    v6 = malloc_type_realloc(self->_records, 32 * v5, 0x10E00400439666CuLL);
    if (v6)
    {
      self->_records = v6;
    }

    else
    {
      v7 = CDBChangeReportHandle;
      if (os_log_type_enabled(CDBChangeReportHandle, OS_LOG_TYPE_ERROR))
      {
        v8 = self->_recordCapacity;
        v11[0] = 67109120;
        v11[1] = v8;
        _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "Error allocating %i records", v11, 8u);
      }

      [(CalDatabaseChangeReport *)self freeRecords];
      recordCount = -1;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return recordCount;
}

@end