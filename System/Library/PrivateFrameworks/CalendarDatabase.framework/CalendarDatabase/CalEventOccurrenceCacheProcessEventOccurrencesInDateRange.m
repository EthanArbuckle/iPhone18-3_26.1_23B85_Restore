@interface CalEventOccurrenceCacheProcessEventOccurrencesInDateRange
@end

@implementation CalEventOccurrenceCacheProcessEventOccurrencesInDateRange

void ___CalEventOccurrenceCacheProcessEventOccurrencesInDateRange_block_invoke(uint64_t a1)
{
  if (__CalDatabaseBeginReadTransaction(*(*(a1 + 104) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2816"))
  {
    if (*(a1 + 128) == 1)
    {
      v2 = _CalEventOccurrenceCacheCreateOccurrenceCacheRange(*(a1 + 104));
      v3 = *(*(a1 + 64) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    v5 = _CalEventOccurrenceCacheGetCacheCalendar(*(a1 + 104));
    if (*(a1 + 129))
    {
      goto LABEL_5;
    }

    v45 = *(a1 + 104);
    _CalEventOccurrenceCacheLoadInfo(v45);
    v46 = *(v45 + 40);
    v47 = v46;
    v48 = *(v45 + 48);
    v49 = v48;
    v50 = v46;
    v51 = v48;
    v52 = [v5 timeZone];
    if ([v50 isAfterDate:*(a1 + 32)] & 1) != 0 || (objc_msgSend(v51, "isBeforeDate:", *(a1 + 40)))
    {
LABEL_42:
      __CalDatabaseRollbackTransaction(*(*(a1 + 104) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2844");
      (*(*(a1 + 56) + 16))();

LABEL_50:
      return;
    }

    if (([*(a1 + 48) isEqualToTimeZone:v52] & 1) == 0)
    {
      v55 = [*(a1 + 32) dateInTimeZone:v52 fromTimeZone:*(a1 + 48)];
      v56 = [*(a1 + 40) dateInTimeZone:v52 fromTimeZone:*(a1 + 48)];
      if ([v50 isAfterDate:v55])
      {

        goto LABEL_42;
      }

      v57 = [v51 isBeforeDate:v56];

      if (v57)
      {
        goto LABEL_42;
      }
    }

LABEL_5:
    RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 104) + 24));
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
      v10 = Database;
      *buf = @"SELECT event_id, IFNULL(occurrence_start_date, occurrence_date) AS fetched_occurrence_start_date, occurrence_end_date FROM OccurrenceCache";
      v64 = @"day >= ? AND day < ?";
      v65 = @"GROUP BY event_id, fetched_occurrence_start_date";
      v66 = 0;
      LODWORD(v66) = *(a1 + 120);
      v11 = *(*(a1 + 104) + 24);
      v12 = _CalFilterCopyQuery(*(a1 + 112));
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v10 + 104))
        {
          v13 = CPRecordStoreGetContext();
          if (v13)
          {
            os_unfair_lock_assert_owner(v13 + 20);
          }
        }
      }

      v14 = CPSqliteDatabaseStatementForReading();
      if (v14)
      {
        v15 = v14;
        v16 = [v5 startOfDayForDate:*(a1 + 32)];
        v17 = *(a1 + 32);
        v18 = [v5 timeZone];
        v19 = [v17 dateInTimeZone:v18 fromTimeZone:*(a1 + 48)];

        v58 = v19;
        if ([v19 CalIsBeforeDate:v16])
        {
          v20 = [v16 dateByAddingDays:-1 inCalendar:v5];

          v16 = v20;
        }

        v21 = [v5 components:30 fromDate:*(a1 + 40)];
        [v21 setHour:23];
        [v21 setMinute:59];
        [v21 setSecond:59];
        v22 = [v5 dateFromComponents:v21];
        v23 = *(a1 + 40);
        v24 = [v5 timeZone];
        v25 = [v23 dateInTimeZone:v24 fromTimeZone:*(a1 + 48)];

        if ([v25 CalIsAfterDate:v22])
        {
          v26 = [v22 dateByAddingDays:1 inCalendar:v5];

          v22 = v26;
        }

        v27 = v15[1];
        [v16 timeIntervalSinceReferenceDate];
        sqlite3_bind_double(v27, 1, v28);
        v29 = v15[1];
        [v22 timeIntervalSinceReferenceDate];
        sqlite3_bind_double(v29, 2, v30);
        if (!*(a1 + 124))
        {
          *(*(*(a1 + 72) + 8) + 24) = CFSetCreateMutable(0, 0, 0);
        }

        *(*(*(a1 + 80) + 8) + 24) = CFArrayCreateMutable(0, 0, 0);
        v31 = [*(a1 + 32) earlierDate:v58];
        v32 = [*(a1 + 40) laterDate:v25];
        v33 = *(*(*(a1 + 80) + 8) + 24);
        *v59 = *(*(*(a1 + 72) + 8) + 24);
        v60 = v33;
        [v31 timeIntervalSinceReferenceDate];
        v61 = v34;
        [v32 timeIntervalSinceReferenceDate];
        v62 = v35;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v15)
          {
            v36 = **v15;
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

        CPSqliteStatementSendResults();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v15)
          {
            v38 = **v15;
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

        CPSqliteStatementReset();
        v40 = [v5 timeZone];
        v41 = *(*(a1 + 88) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;

        *(*(*(a1 + 96) + 8) + 24) = _CalEventOccurrenceCacheCopyBatchOfEvents(*(a1 + 104), *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 80) + 8) + 24), 0, *(a1 + 124), *(a1 + 32), *(a1 + 40), *(*(*(a1 + 88) + 8) + 40), *(a1 + 48));
        if (!*(a1 + 124))
        {
          v43 = *(*(*(a1 + 96) + 8) + 24);
          v67.length = CFArrayGetCount(v43);
          v67.location = 0;
          CFArraySortValues(v43, v67, _CompareCalEventOccurrences, *(*(a1 + 104) + 24));
        }

        v44 = *(*(*(a1 + 72) + 8) + 24);
        if (v44)
        {
          CFRelease(v44);
        }
      }

      else
      {
        v54 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v59 = 0;
          _os_log_impl(&dword_1DEBB1000, v54, OS_LOG_TYPE_ERROR, "Failed to get SQL statement when fetching event occurrences", v59, 2u);
        }
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      v53 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v53, OS_LOG_TYPE_ERROR, "Failed to get db handle when fetching event occurrences", buf, 2u);
      }
    }

    __CalDatabaseRollbackTransaction(*(*(a1 + 104) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2927");
    goto LABEL_50;
  }
}

__CFArray *___CalEventOccurrenceCacheProcessEventOccurrencesInDateRange_block_invoke_484(uint64_t a1)
{
  result = _CalEventOccurrenceCacheCopyBatchOfEvents(*(a1 + 80), 0, *(*(*(a1 + 64) + 8) + 24), *(a1 + 88), *(a1 + 96), *(a1 + 32), *(a1 + 40), *(*(*(a1 + 72) + 8) + 40), *(a1 + 48));
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

@end