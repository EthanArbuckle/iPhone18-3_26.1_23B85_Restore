@interface DAStoreSyncStatusUpdater
+ (BOOL)_isCanceledError:(id)a3;
+ (id)_eventStore;
+ (id)_eventStorePurger;
+ (id)_mappedAccountErrorFromError:(id)a3;
+ (unint64_t)_accountErrorCodeForNSError:(id)a3;
+ (unint64_t)_codeForLastSyncError:(id)a3 userInfo:(id *)a4;
+ (unint64_t)_ekAccountErrorFromCoreDAVErrorCode:(int)a3;
+ (unint64_t)_ekAccountErrorFromCoreDAVHTTPStatusCode:(int64_t)a3;
+ (unint64_t)_ekAccountErrorFromDAErrorCode:(int64_t)a3;
+ (unint64_t)_ekAccountErrorFromDAValidationErrorCode:(unint64_t)a3;
+ (unint64_t)_ekAccountErrorFromSubCalErrorCode:(int64_t)a3;
+ (unint64_t)_ekAccountErrorFromURLError:(id)a3;
+ (void)_updateStatusForCalendarWithExternalID:(id)a3 sourceExternalID:(id)a4 lastSyncStartDate:(id)a5 lastSyncEndDate:(id)a6 lastSyncError:(id)a7 canceled:(BOOL)a8;
+ (void)resetSyncStatusIfNecessaryForStoresOfType:(unint64_t)a3;
+ (void)syncEndedForCalendar:(id)a3 withError:(id)a4;
+ (void)syncEndedForCalendarWithExternalID:(id)a3 sourceExternalID:(id)a4 withError:(id)a5;
+ (void)syncEndedForStoreWithExternalID:(id)a3 withError:(id)a4;
+ (void)syncStartedForCalendar:(id)a3;
+ (void)syncStartedForCalendarWithExternalID:(id)a3 sourceExternalID:(id)a4;
+ (void)syncStartedForStoreWithExternalID:(id)a3;
@end

@implementation DAStoreSyncStatusUpdater

+ (void)syncStartedForStoreWithExternalID:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  [a1 _updateStatusForStoreWithExternalID:v5 lastSyncStartDate:v6 lastSyncEndDate:0 lastSyncError:0 canceled:0];
}

+ (void)syncEndedForStoreWithExternalID:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [a1 _mappedAccountErrorFromError:v6];
  v8 = [a1 _isCanceledError:v6];

  v9 = [MEMORY[0x277CBEAA8] date];
  [a1 _updateStatusForStoreWithExternalID:v7 lastSyncStartDate:0 lastSyncEndDate:v9 lastSyncError:v10 canceled:v8];
}

+ (void)resetSyncStatusIfNecessaryForStoresOfType:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if ((DAStoreSyncStatusUpdaterAlreadyResetStatus & 1) == 0)
  {
    DAStoreSyncStatusUpdaterAlreadyResetStatus = 1;
    [a1 _eventStore];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = v19 = 0u;
    v5 = [v15 sources];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      v9 = *MEMORY[0x277CC5B48];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 isSyncing] && ((1 << objc_msgSend(v11, "sourceType")) & a3) != 0)
          {
            v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v9 code:1 userInfo:0];
            v13 = [MEMORY[0x277CBEAA8] date];
            [a1 _updateStatusForSource:v11 lastSyncStartDate:0 lastSyncEndDate:v13 lastSyncError:v12 canceled:0];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_eventStorePurger
{
  if (_eventStorePurger_onceToken != -1)
  {
    +[DAStoreSyncStatusUpdater _eventStorePurger];
  }

  v3 = _eventStorePurger_eventStorePurger;

  return v3;
}

uint64_t __45__DAStoreSyncStatusUpdater__eventStorePurger__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CC5AE8]);
  v1 = _eventStorePurger_eventStorePurger;
  _eventStorePurger_eventStorePurger = v0;

  [_eventStorePurger_eventStorePurger setTimeout:30.0];
  [_eventStorePurger_eventStorePurger setPurgingAllowed:1];
  v2 = _eventStorePurger_eventStorePurger;

  return [v2 setCreationBlock:&__block_literal_global_6];
}

id __45__DAStoreSyncStatusUpdater__eventStorePurger__block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];

  return v0;
}

+ (id)_eventStore
{
  v2 = [a1 _eventStorePurger];
  v3 = [v2 acquireCachedEventStoreOrCreate:1];

  return v3;
}

+ (unint64_t)_codeForLastSyncError:(id)a3 userInfo:(id *)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = *MEMORY[0x277CC5B48];

  if (v6 == v7)
  {
    v8 = [v5 code];
    v9 = [v5 userInfo];
    v10 = v9;
    if (v8 && [v9 count])
    {
      v11 = v10;
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    *a4 = v12;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (void)syncStartedForCalendarWithExternalID:(id)a3 sourceExternalID:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  [a1 _updateStatusForCalendarWithExternalID:v8 sourceExternalID:v7 lastSyncStartDate:v9 lastSyncEndDate:0 lastSyncError:0 canceled:0];
}

+ (void)syncEndedForCalendarWithExternalID:(id)a3 sourceExternalID:(id)a4 withError:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [a1 _mappedAccountErrorFromError:v8];
  v11 = [a1 _isCanceledError:v8];

  v12 = [MEMORY[0x277CBEAA8] date];
  [a1 _updateStatusForCalendarWithExternalID:v10 sourceExternalID:v9 lastSyncStartDate:0 lastSyncEndDate:v12 lastSyncError:v13 canceled:v11];
}

+ (void)syncStartedForCalendar:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  [a1 _updateStatusForCalendar:v5 lastSyncStartDate:v6 lastSyncEndDate:0 lastSyncError:0 canceled:0];
}

+ (void)syncEndedForCalendar:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [a1 _mappedAccountErrorFromError:v6];
  v8 = [a1 _isCanceledError:v6];

  v9 = [MEMORY[0x277CBEAA8] date];
  [a1 _updateStatusForCalendar:v7 lastSyncStartDate:0 lastSyncEndDate:v9 lastSyncError:v10 canceled:v8];
}

+ (void)_updateStatusForCalendarWithExternalID:(id)a3 sourceExternalID:(id)a4 lastSyncStartDate:(id)a5 lastSyncEndDate:(id)a6 lastSyncError:(id)a7 canceled:(BOOL)a8
{
  v8 = a8;
  v36 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14)
  {
    v28 = v8;
    v29 = v16;
    v19 = [a1 _eventStore];
    v20 = [v19 sourceWithExternalID:v15];
    v21 = [v20 calendarWithExternalIdentifier:v14];
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 138412546;
      v31 = v18;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_24844D000, v22, v23, "Updating sync status (%@) for calendar with externalID %@", buf, 0x16u);
    }

    if (v21)
    {
      v16 = v29;
      [a1 _updateStatusForCalendar:v21 lastSyncStartDate:v29 lastSyncEndDate:v17 lastSyncError:v18 canceled:v28];
    }

    else
    {
      v25 = DALoggingwithCategory();
      v26 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 138412802;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = v18;
        _os_log_impl(&dword_24844D000, v25, v26, "Tried to update status for calendar, but could not get a corresponding EKCalendar for externalID %@ in source with external ID %@. lastSyncError is %@", buf, 0x20u);
      }

      v16 = v29;
    }
  }

  else
  {
    v19 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v24))
    {
      *buf = 0;
      _os_log_impl(&dword_24844D000, v19, v24, "Tried to update status for calendar with nil externalID", buf, 2u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)_mappedAccountErrorFromError:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 cal_serializableError];
  v6 = v5;
  if (v5)
  {
    v12 = *MEMORY[0x277CCA7E8];
    v13[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 _accountErrorCodeForNSError:v4];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC5B48] code:v8 userInfo:v7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (unint64_t)_accountErrorCodeForNSError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 domain];
    v7 = [v6 isEqualToString:*MEMORY[0x277CFDB18]];

    if (v7)
    {
      v8 = [a1 _ekAccountErrorFromCoreDAVErrorCode:{objc_msgSend(v5, "code")}];
    }

    else
    {
      v10 = [v5 domain];
      v11 = [v10 isEqualToString:*MEMORY[0x277D038E0]];

      if (v11)
      {
        v8 = [a1 _ekAccountErrorFromDAErrorCode:{objc_msgSend(v5, "code")}];
      }

      else
      {
        v12 = [v5 domain];
        v13 = [v12 isEqualToString:@"DAAccountValidationDomain"];

        if (v13)
        {
          v8 = [a1 _ekAccountErrorFromDAValidationErrorCode:{objc_msgSend(v5, "code")}];
        }

        else
        {
          if ([v5 cal_isCertificateError])
          {
            v9 = 6;
            goto LABEL_10;
          }

          v15 = [v5 domain];
          v16 = [v15 isEqualToString:*MEMORY[0x277CFDB80]];

          if (v16)
          {
            v8 = [a1 _ekAccountErrorFromCoreDAVHTTPStatusCode:{objc_msgSend(v5, "code")}];
          }

          else
          {
            v17 = [v5 domain];
            v18 = [v17 isEqualToString:*MEMORY[0x277CCA738]];

            if (v18)
            {
              v8 = [a1 _ekAccountErrorFromURLError:v5];
            }

            else
            {
              v19 = [v5 domain];
              if ([v19 isEqualToString:*MEMORY[0x277D03F90]])
              {
              }

              else
              {
                v20 = [v5 domain];
                v21 = [v20 isEqualToString:*MEMORY[0x277D03F88]];

                if (!v21)
                {
                  v9 = 1;
                  goto LABEL_10;
                }
              }

              v8 = [a1 _ekAccountErrorFromSubCalErrorCode:{objc_msgSend(v5, "code")}];
            }
          }
        }
      }
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

+ (unint64_t)_ekAccountErrorFromCoreDAVErrorCode:(int)a3
{
  if (a3 > 5)
  {
    return 1;
  }

  else
  {
    return qword_2484912D0[a3];
  }
}

+ (unint64_t)_ekAccountErrorFromDAErrorCode:(int64_t)a3
{
  result = 5;
  v4 = a3 + 2;
  if ((a3 + 2) <= 0xE)
  {
    if (((1 << v4) & 0x888) != 0)
    {
      return result;
    }

    if (((1 << v4) & 0x4003) != 0)
    {
      return 0;
    }

    if (!a3)
    {
      return 3;
    }
  }

  if ((a3 - 80) <= 0x23)
  {
    if (((1 << (a3 - 80)) & 0x8C0000001) != 0)
    {
      return result;
    }

    if (a3 == 92)
    {
      return 8;
    }

    if (a3 == 94)
    {
      return 9;
    }
  }

  v5 = a3 - 16;
  if ((a3 - 16) > 0x34)
  {
    return 1;
  }

  if (((1 << v5) & 0x2000020001) == 0)
  {
    if (((1 << v5) & 0x10800000000000) != 0)
    {
      return 2;
    }

    return 1;
  }

  return result;
}

+ (unint64_t)_ekAccountErrorFromDAValidationErrorCode:(unint64_t)a3
{
  if (a3 - 101 > 2)
  {
    return 1;
  }

  else
  {
    return qword_248491300[a3 - 101];
  }
}

+ (unint64_t)_ekAccountErrorFromCoreDAVHTTPStatusCode:(int64_t)a3
{
  v3 = 5;
  if (a3 == 401)
  {
    v3 = 2;
  }

  if (a3 >= 400)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)_ekAccountErrorFromSubCalErrorCode:(int64_t)a3
{
  if (a3 > 9)
  {
    return 0;
  }

  else
  {
    return qword_248491318[a3];
  }
}

+ (unint64_t)_ekAccountErrorFromURLError:(id)a3
{
  if ([a3 code] == -999)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

+ (BOOL)_isCanceledError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x277CFDB18]])
    {
      v6 = [v4 code];

      if (v6 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v7 = [v4 domain];
    if ([v7 isEqualToString:*MEMORY[0x277D038E0]])
    {
      if ([v4 code] == -1)
      {
        LOBYTE(v6) = 1;
        goto LABEL_27;
      }

      v8 = [v4 code];

      if (v8 == -2)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v9 = [v4 domain];
    if ([v9 isEqualToString:@"DAAccountValidationDomain"])
    {
      v10 = [v4 code];

      if (v10 == 103)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v11 = [v4 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v12 = [v4 code];

      if (v12 == -999)
      {
LABEL_18:
        LOBYTE(v6) = 1;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v7 = [v4 domain];
    if ([v7 isEqualToString:*MEMORY[0x277D03F90]])
    {
      LOBYTE(v6) = [v4 code] == 2;
    }

    else
    {
      v13 = [v4 domain];
      if ([v13 isEqualToString:*MEMORY[0x277D03F88]])
      {
        LOBYTE(v6) = [v4 code] == 2;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  LOBYTE(v6) = 0;
LABEL_28:

  return v6;
}

@end