@interface CADOperationGroupUtil
+ (id)defaultCalendarForNewEventsInDelegateSource:(id)a3 withConnection:(id)a4 limitedAccess:(BOOL)a5;
+ (id)defaultCalendarIDForNewEventsInStoreWithID:(id)a3 connection:(id)a4 inDatabase:(CalDatabase *)a5 defaultExists:(BOOL *)a6;
@end

@implementation CADOperationGroupUtil

+ (id)defaultCalendarIDForNewEventsInStoreWithID:(id)a3 connection:(id)a4 inDatabase:(CalDatabase *)a5 defaultExists:(BOOL *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    [v8 entityID];
    v10 = CalDatabaseCopyStoreWithUID();
    if (v10)
    {
      v11 = v10;
      v12 = CalDatabaseCopyDefaultOrAnyReadWriteCalendarForNewEvents();
      if (v12)
      {
        v13 = v12;
        goto LABEL_7;
      }

      v27 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_22430B000, v27, OS_LOG_TYPE_ERROR, "NULL calendar returned by CalDatabaseCopyDefaultOrAnyReadWriteCalendarForNewEvents", &v33, 2u);
      }

      CFRelease(v11);
LABEL_29:
      v15 = 0;
      v28 = 0;
      if (!a6)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v25 = CADLogHandle;
    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    LOWORD(v33) = 0;
    v26 = "NULL source returned by CalDatabaseCopyStoreWithUID";
LABEL_28:
    _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_ERROR, v26, &v33, 2u);
    goto LABEL_29;
  }

  DefaultCalendarForNewEvents = CalDatabaseCopyOrCreateDefaultCalendarForNewEvents();
  if (!DefaultCalendarForNewEvents)
  {
    v25 = CADLogHandle;
    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    LOWORD(v33) = 0;
    v26 = "NULL calendar returned by CalDatabaseCopyOrCreateDefaultCalendarForNewEvents";
    goto LABEL_28;
  }

  v13 = DefaultCalendarForNewEvents;
  v11 = 0;
LABEL_7:
  v15 = CADEntityCopyObjectID();
  v16 = [v9 isCalendarRestricted:v13 forAction:1];
  v17 = CADLogHandle;
  v18 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (v18)
    {
      v33 = 138412290;
      v34 = v15;
      _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_INFO, "Calendar does not allow write from unmanaged -> managed. Finding first calendar that allows it. ObjectID: [%@]", &v33, 0xCu);
    }

    v19 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions();
    v20 = v19;
    if (!v19)
    {

LABEL_35:
      v31 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_22430B000, v31, OS_LOG_TYPE_INFO, "No calendar allows write from unmanaged -> managed. Will return nil", &v33, 2u);
      }

      v15 = 0;
      goto LABEL_38;
    }

    Count = CFArrayGetCount(v19);

    if (Count < 1)
    {
      goto LABEL_35;
    }

    v22 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v20, v22);
      if (CalCalendarCanContainEntityType())
      {
        UID = CalCalendarGetUID();
        if (UID != CalCalendarGetUID() && ([v9 isCalendarRestricted:ValueAtIndex forAction:1] & 1) == 0)
        {
          break;
        }
      }

      if (Count == ++v22)
      {
        goto LABEL_35;
      }
    }

    v15 = CADEntityCopyObjectID();
    v32 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v33 = 138412290;
      v34 = v15;
      _os_log_impl(&dword_22430B000, v32, OS_LOG_TYPE_INFO, "Found calendar that allows write from unmanaged -> managed. ObjectID: [%@]", &v33, 0xCu);
    }

    if (!v15)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v18)
    {
      v33 = 138412290;
      v34 = v15;
      _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_INFO, "Calendar allows write from unmanaged -> managed. Returning ObjectID: [%@]", &v33, 0xCu);
    }

    v20 = 0;
  }

LABEL_38:
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v13);
  if (v20)
  {
    CFRelease(v20);
  }

  v28 = 1;
  if (a6)
  {
LABEL_30:
    *a6 = v28;
  }

LABEL_31:

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)defaultCalendarForNewEventsInDelegateSource:(id)a3 withConnection:(id)a4 limitedAccess:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__10;
  v45 = __Block_byref_object_dispose__10;
  v46 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  if (v5)
  {
    v11 = *MEMORY[0x277CF7570];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke;
    v38[3] = &unk_27851A408;
    v38[4] = &v41;
    [v9 withDatabaseID:v11 perform:v38];
  }

  else
  {
    if (v8)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke_5;
      v17[3] = &unk_27851B9D8;
      v20 = &v41;
      v21 = a1;
      v18 = v8;
      v19 = v10;
      [v19 withDatabaseForObject:v18 perform:v17];

      v12 = v18;
    }

    else
    {
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x3032000000;
      v36[3] = __Block_byref_object_copy__10;
      v36[4] = __Block_byref_object_dispose__10;
      v37 = 0;
      v13 = *MEMORY[0x277CF7570];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke_2;
      v31[3] = &unk_27851B988;
      v14 = v9;
      v32 = v14;
      v33 = &v41;
      v34 = v39;
      v35 = a1;
      [v14 withDatabaseID:v13 perform:v31];
      if (!v42[5])
      {
        v29[0] = 0;
        v29[1] = v29;
        v29[2] = 0x2020000000;
        v30 = 0;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke_4;
        v22[3] = &unk_27851B9B0;
        v24 = &v41;
        v28 = a1;
        v23 = v14;
        v25 = v29;
        v26 = v39;
        v27 = v36;
        [v23 withAllDatabasesPerform:v22];

        _Block_object_dispose(v29, 8);
      }

      _Block_object_dispose(v36, 8);
      v12 = v37;
    }
  }

  v15 = v42[5];
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);

  return v15;
}

void __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyLimitedAccessVirtualCalendar();
  v3 = CADEntityCopyObjectID();
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  CFRelease(v2);
}

void __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CalDatabaseGetPreferences();
  v6 = [v5 get_defaultCalendarDatabaseID];
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke_3;
    v15[3] = &unk_27851B960;
    v18 = *(a1 + 56);
    v13 = *(a1 + 32);
    v7 = v13;
    v16 = v13;
    v17 = *(a1 + 48);
    [v7 withDatabaseID:v6 perform:v15];
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v14 = 0;
    v8 = [*(a1 + 56) defaultCalendarIDForNewEventsInStoreWithID:0 connection:*(a1 + 32) inDatabase:a3 defaultExists:&v14];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(a1 + 48) + 8);
    if (*(v11 + 24))
    {
      v12 = 1;
    }

    else
    {
      v12 = (v6 == 0) & v14;
    }

    *(v11 + 24) = v12;
  }
}

uint64_t __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 56) defaultCalendarIDForNewEventsInStoreWithID:0 connection:*(a1 + 32) inDatabase:a3 defaultExists:*(*(a1 + 48) + 8) + 24];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4);
}

void __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke_4(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  if (*MEMORY[0x277CF7570] != a2)
  {
    v7 = [*(a1 + 72) defaultCalendarIDForNewEventsInStoreWithID:0 connection:*(a1 + 32) inDatabase:a3 defaultExists:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *(*(*(a1 + 48) + 8) + 24) = a2;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        [*(*(*(a1 + 40) + 8) + 40) entityID];
        v10 = CalDatabaseCopyCalendarWithUID();
        if (v10)
        {
          v11 = v10;
          [*(*(*(a1 + 64) + 8) + 40) set_defaultCalendarDatabaseID:a2];
          v12 = MEMORY[0x277CCACA8];
          v13 = [*(a1 + 32) identity];
          v14 = [v12 stringWithFormat:@"No default found (%@)", v13];
          CalDatabaseSetDefaultCalendarForNewEventsWithReason();

          CFRelease(v11);
        }
      }

      *a4 = 1;
    }
  }
}

uint64_t __98__CADOperationGroupUtil_defaultCalendarForNewEventsInDelegateSource_withConnection_limitedAccess___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 56) defaultCalendarIDForNewEventsInStoreWithID:*(a1 + 32) connection:*(a1 + 40) inDatabase:a3 defaultExists:0];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4);
}

@end