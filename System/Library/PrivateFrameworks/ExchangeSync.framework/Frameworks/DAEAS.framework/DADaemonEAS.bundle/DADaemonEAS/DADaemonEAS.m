uint64_t sub_16EC()
{
  +[NSTimeZone resetSystemTimeZone];
  v0 = +[NSTimeZone systemTimeZone];

  return _CalSetSystemTimeZone(v0, 1);
}

void sub_7F00(uint64_t a1)
{
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = [*(a1 + 32) account];
    [v2 setShouldUseOpportunisticSockets:0];

    v3 = [*(a1 + 32) account];
    v4 = [v3 enabledForDADataclass:4];

    if (v4)
    {
      [*(a1 + 32) _appendFolderHierarchyChangesForFoldersOfDataclasses:4];
    }

    v5 = *(a1 + 32);
    if (!v5[5])
    {
      v6 = [v5 account];
      v7 = [v6 enabledForDADataclass:4];

      if (v7)
      {
        v8 = *(a1 + 32);

        [v8 _appendSyncRequestForFoldersOfDataclasses:4];
      }
    }
  }
}

void sub_8114(uint64_t a1)
{
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = [*(a1 + 32) account];
    [v2 setShouldUseOpportunisticSockets:0];

    v3 = [*(a1 + 32) account];
    v4 = [v3 enabledForDADataclass:16];

    if (v4)
    {
      [*(a1 + 32) _appendFolderHierarchyChangesForFoldersOfDataclasses:16];
    }

    v5 = *(a1 + 32);
    if (!v5[5])
    {
      v6 = [v5 account];
      v7 = [v6 enabledForDADataclass:16];

      if (v7)
      {
        v8 = *(a1 + 32);

        [v8 _appendSyncRequestForFoldersOfDataclasses:16];
      }
    }
  }
}

_DWORD *sub_82EC(uint64_t a1)
{
  result = [*(a1 + 32) isMonitoring];
  if (result)
  {
    v3 = [*(a1 + 32) account];
    [v3 setShouldUseOpportunisticSockets:0];

    [*(a1 + 32) _appendFolderHierarchyChangesForFoldersOfDataclasses:2];
    result = *(a1 + 32);
    if (!result[5])
    {

      return [result _appendSyncRequestForFoldersOfDataclasses:2];
    }
  }

  return result;
}

_DWORD *sub_8460(uint64_t a1)
{
  result = [*(a1 + 32) isMonitoring];
  if (result)
  {
    v3 = [*(a1 + 32) account];
    [v3 setShouldUseOpportunisticSockets:0];

    [*(a1 + 32) _appendFolderHierarchyChangesForFoldersOfDataclasses:32];
    result = *(a1 + 32);
    if (!result[5])
    {

      return [result _appendSyncRequestForFoldersOfDataclasses:32];
    }
  }

  return result;
}

void sub_8F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8FD0(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "reachability indicates that the network is reachable.  We're going to retry our folder sync.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFolderHierarchyRequireChangedFolders:0];
}

id *sub_11680(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] _reallyApplyMessageDidSendWithContext:result[5]];
  }

  return result;
}

id *sub_11C30(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] _reallyFinishInvitationBatch:result[5]];
  }

  return result;
}

id *sub_15FFC(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] _reallySyncRequest:result[5]];
  }

  return result;
}

void sub_181A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 32) _handleDaemonBackedLocalFolderChangeWithDBChangeIndices:*(a1 + 48) oldFolders:*(a1 + 40) status:a4 error:a5];
  v6 = *(a1 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_19024(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (*(a1 + 48) == 1)
    {
      v4 = [*(a1 + 32) localFileHandle];
      v5 = 0;
      v6 = 0;
      v7 = _CPLog_to_os_log_type[3];
      while (1)
      {
        [v4 seekToFileOffset:v6];
        v8 = [v4 readDataOfLength:0x4000];
        v9 = [v8 length];
        if (!v9)
        {
          break;
        }

        v10 = v9;
        v11 = [[NSData alloc] initWithBase64EncodedData:v8 options:1];
        [v4 seekToFileOffset:v5];
        [v4 writeData:v11];
        v6 += v10;
        v5 += [v11 length];

        if (!(v10 >> 14))
        {
          goto LABEL_11;
        }
      }

LABEL_11:
      [v4 truncateFileAtOffset:v5];
      [*(a1 + 32) setLocalFileLength:v5];
    }

    [*(a1 + 40) _saveAttachmentDataToDatabaseForTask:*(a1 + 32)];
    v15 = 0;
    v16 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v16 relinquishLocksForWaiter:*(a1 + 40) dataclasses:20 moreComing:0];
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      v14 = [*(a1 + 32) attachmentUUID];
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_0, v12, v13, "Cannot acquire the gatekeeper lock. The attachment %@ is not saved.", &v19, 0xCu);
    }

    v15 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
  }

  v17 = [*(a1 + 40) account];
  v18 = [v17 consumerForTask:*(a1 + 32)];

  [v18 downloadFinishedError:v15];
}

void sub_1989C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) _reallyPrepareFetchAttachmentTask:*(a1 + 40)];
    v7 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v7 relinquishLocksForWaiter:*(a1 + 32) dataclasses:20 moreComing:0];
  }

  else
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [*(a1 + 40) attachmentUUID];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_0, v4, v5, "Cannot acquire the gatekeeper lock. Download task for attachment %@ does not start.", buf, 0xCu);
    }
  }
}

BOOL sub_19BD0(uint64_t a1, const void *a2, signed int a3, int a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = DALoggingwithCategory();
  v12 = v11;
  if (!a1)
  {
    v27 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v11, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, v27, "Couldn't get a store or database to clear AddressBook changes", buf, 2u);
    }

    goto LABEL_22;
  }

  v13 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v13))
  {
    if (a4)
    {
      v14 = @"Group";
    }

    else
    {
      v14 = @"Person";
    }

    *buf = 138412802;
    v30 = v14;
    v31 = 1024;
    RecordID = ABRecordGetRecordID(a2);
    v33 = 1024;
    v34 = a3;
    _os_log_impl(&dword_0, v12, v13, "Clearing %@ changes in store %d to index %d", buf, 0x18u);
  }

  v15 = v10[2](v10, a1, a2);
  if (!v15)
  {
LABEL_22:
    v26 = 0;
    goto LABEL_25;
  }

  v16 = v15;
  if (CFDictionaryGetCount(v15) >= 1 && (Value = CFDictionaryGetValue(v16, kABChangeHistoryChangeTableRowIDsKey), v18 = CFDictionaryGetValue(v16, kABChangeHistorySequenceNumbersKey), Value) && (v19 = v18, v20 = CFArrayGetCount(Value), v20 >= 1))
  {
    v21 = v20;
    Mutable = CFArrayCreateMutable(0, v20, 0);
    for (i = 0; i != v21; ++i)
    {
      CFArrayGetValueAtIndex(v19, i);
      ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
      if (ValueAtIndex <= a3)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }

    Count = CFArrayGetCount(Mutable);
    v26 = Count > 0;
    if (Count > 0)
    {
      ABChangeHistoryClearEntityChangeTableRowIDsForClient();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v26 = 0;
  }

  CFRelease(v16);
LABEL_25:

  return v26;
}

const void *sub_19E5C(void *a1)
{
  v8[0] = kABChangeHistoryChangeTableRowIDsKey;
  v8[1] = kABChangeHistorySequenceNumbersKey;
  v8[2] = kABChangeHistoryRecordGUIDsKey;
  [NSArray arrayWithObjects:v8 count:3];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
  v6 = EntityChangesSinceSequenceNumberForClient;
  if (EntityChangesSinceSequenceNumberForClient)
  {
    CFRetain(EntityChangesSinceSequenceNumberForClient);
  }

  return v6;
}

const void *sub_19F24(void *a1)
{
  v8[0] = kABChangeHistoryChangeTableRowIDsKey;
  v8[1] = kABChangeHistorySequenceNumbersKey;
  v8[2] = kABChangeHistoryRecordGUIDsKey;
  [NSArray arrayWithObjects:v8 count:3];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
  v6 = EntityChangesSinceSequenceNumberForClient;
  if (EntityChangesSinceSequenceNumberForClient)
  {
    CFRetain(EntityChangesSinceSequenceNumberForClient);
  }

  return v6;
}

BOOL sub_19FEC(uint64_t a1, uint64_t a2, signed int a3, int a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = DALoggingwithCategory();
  v12 = v11;
  if (!a1)
  {
    v27 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v11, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, v27, "Couldn't get a calendar or database to clear changes", buf, 2u);
    }

    goto LABEL_21;
  }

  v13 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v13))
  {
    if (a4 == 2)
    {
      v14 = @"Event";
    }

    else
    {
      v14 = @"Todo";
    }

    *buf = 138412802;
    v30 = v14;
    v31 = 1024;
    UID = CalCalendarGetUID();
    v33 = 1024;
    v34 = a3;
    _os_log_impl(&dword_0, v12, v13, "Clearing %@ changes in calendar %d to index %d", buf, 0x18u);
  }

  v15 = v10[2](v10, a1, a2);
  if (!v15)
  {
LABEL_21:
    v26 = 0;
    goto LABEL_24;
  }

  v16 = v15;
  Value = CFDictionaryGetValue(v15, kCalCalendarItemChangesChangeIDKey);
  v18 = CFDictionaryGetValue(v16, kCalShareeChangesSequenceNumberKey);
  if (Value && (v19 = v18, v20 = CFArrayGetCount(Value), v20 >= 1))
  {
    v21 = v20;
    Mutable = CFArrayCreateMutable(0, v20, 0);
    for (i = 0; i != v21; ++i)
    {
      CFArrayGetValueAtIndex(v19, i);
      ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
      if (ValueAtIndex <= a3)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }

    Count = CFArrayGetCount(Mutable);
    v26 = Count > 0;
    if (Count > 0)
    {
      CalDatabaseClearIndividualChangeRowIDsForClient();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v26 = 0;
  }

  CFRelease(v16);
LABEL_24:

  return v26;
}

void sub_1A79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A7C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePolicyUpdate];
}

void sub_1AA88(id a1)
{
  xpc_activity_unregister("com.apple.exchangesyncd.pingdelay");
  v1 = DALoggingwithCategory();
  v2 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v1, v2))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "PingDelayXPC: Unregister XPC activity", v3, 2u);
  }
}

id sub_1B010(void *a1)
{
  v1 = [a1 allValues];
  v2 = [v1 valueForKey:@"conciseDescription"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

id sub_1D2B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return [*(a1 + 48) _reallySyncFolderHierarchyWithConsumer:*(a1 + 32) requestDataclasses:a2 requireChangedFolders:*(a1 + 56) context:*(a1 + 40)];
  }

  else
  {
    return [*(a1 + 32) folderHierarchyFailedToUpdate:*(a1 + 40) withStatus:-1 andError:0];
  }
}

id *sub_1DCC8(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] _reallySyncLocallyChangedFolder:result[5] consumer:result[6] dataclasses:result[8] completionBlock:result[7]];
  }

  return result;
}

void sub_1E250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1E26C(uint64_t a1)
{
  v2 = *(a1 + 32);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1E380;
  handler[3] = &unk_6D108;
  objc_copyWeak(&v7, (a1 + 40));
  v8 = *(a1 + 48);
  xpc_activity_register("com.apple.exchangesyncd.pingdelay", v2, handler);
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "PingDelayXPC: Register XPC activity", v5, 2u);
  }

  objc_destroyWeak(&v7);
}

void sub_1E380(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  WeakRetained = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  v6 = os_log_type_enabled(WeakRetained, v5);
  if (state == 2)
  {
    if (v6)
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_0, WeakRetained, v5, "PingDelayXPC: Invoking _reissuePingFromXPCActivityWithGrowthAction", v7, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _reissuePingFromXPCActivityWithGrowthAction:*(a1 + 40)];
  }

  else if (v6)
  {
    v7[0] = 67109378;
    v7[1] = state;
    v8 = 2082;
    v9 = "com.apple.exchangesyncd.pingdelay";
    _os_log_impl(&dword_0, WeakRetained, v5, "PingDelayXPC: Skipping XPC state state %u for '%{public}s'", v7, 0x12u);
  }
}

id sub_1FD24(uint64_t a1)
{
  [*(a1 + 32) _cancelPingTask];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  LODWORD(v4) = 2.0;

  return [v2 _refirePingAfterDelay:v3 withGrowthAction:v4];
}

void sub_1FF50(id a1)
{
  xpc_activity_unregister("com.apple.exchangesyncd.pingdelay");
  v1 = DALoggingwithCategory();
  v2 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v1, v2))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "PingDelayXPC: Unregister XPC activity", v3, 2u);
  }
}

void sub_20444(void *a1)
{
  v2 = [NSNotification notificationWithName:a1[4] object:a1[5] userInfo:a1[6]];
  v3 = +[NSNotificationQueue defaultQueue];
  v5 = a1[7];
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 enqueueNotification:v2 postingStyle:2 coalesceMask:0 forModes:v4];
}

id _ASSyncTaskPreservedActionsFromActions(void *a1)
{
  v1 = a1;
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 itemChangeType] == &dword_4)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id _DASyncableActionsFromDAActions(void *a1, void *a2)
{
  v3 = a1;
  v27 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if ([v11 itemChangeType] == &dword_4 + 2)
        {
          v12 = [v11 serverId];
          [v5 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v13 = [v6 count];
  if (v13 >= 1)
  {
    v15 = _CPLog_to_os_log_type[6];
    v16 = (v13 & 0x7FFFFFFF) + 1;
    *&v14 = 138412290;
    v26 = v14;
    do
    {
      v17 = [v6 objectAtIndexedSubscript:{v16 - 2, v26}];
      v18 = [v17 itemChangeType];
      if (v18)
      {
        v19 = v18 == &dword_0 + 2;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        if (v18 != &dword_0 + 1)
        {
          goto LABEL_23;
        }

        v20 = [v17 changedItem];
        v21 = [v20 serverID];
        v22 = [v5 objectForKeyedSubscript:v21];

        if (v22)
        {
          v23 = DALoggingwithCategory();
          if (os_log_type_enabled(v23, v15))
          {
            v24 = [v20 serverID];
            *buf = v26;
            v33 = v24;
            _os_log_impl(&dword_0, v23, v15, "Have a modify action nixed by a belay action for server id %@.  Dropping the modify", buf, 0xCu);
          }

          [v27 removeObjectAtIndex:v16 - 2];
          goto LABEL_23;
        }
      }

      [v4 addObject:v17];
LABEL_23:

      --v16;
    }

    while (v16 > 1);
  }

  return v4;
}

id sub_29E54(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 dTStamp];
  v5 = [v3 dTStamp];

  v6 = [v4 compare:v5];
  return v6;
}

id sub_2A070(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];
    v9 = a1[9];

    return [v4 _reallyAttemptInvitationLinkageForMetaDatas:v5 deliveryIdsToClear:v6 deliveryIdsToSoftClear:v7 inFolderWithId:v8 callback:v9];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v10, v11))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v10, v11, "ProcessMeetingRequests: did not acquire gate keeper", v13, 2u);
    }

    return (*(a1[9] + 16))();
  }
}

void sub_2C53C(id *a1)
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [a1[4] account];
  v4 = [v3 accountDescription];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DA_POLICY_COMPLIANCE_WARNING" value:&stru_6D4A8 table:@"DataAccess"];
  v7 = [NSString stringWithFormat:v6, v4];

  v8 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  v9 = [a1[4] account];
  v10 = [v9 persistentUUID];
  [v8 dropPowerAssertionsForGroupIdentifier:v10];

  if ([v2 isEphemeralMultiUser] && objc_msgSend(a1[4], "_preflightEDUModeMCFeatures:", a1[5]))
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, v12, "Device Set to Multi-User Mode. Can not Apply EAS Policies", buf, 2u);
    }

    v13 = 0;
    v14 = 2;
    goto LABEL_21;
  }

  v15 = [a1[4] account];
  v16 = [v15 objectForKeyedSubscript:kESExchangeUserEnrollmentMode];

  objc_opt_class();
  v17 = v2;
  if (objc_opt_isKindOfClass())
  {
    v18 = [v16 BOOLValue];
  }

  else
  {
    v18 = 0;
  }

  v19 = DALoggingwithCategory();
  v20 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v19, v20, "Applying restriction dictionary to MC", buf, 2u);
  }

  v21 = a1[5];
  v22 = [a1[4] account];
  v23 = [v22 persistentUUID];
  v65 = 0;
  BYTE1(v53) = v18;
  LOBYTE(v53) = 1;
  v14 = [v2 applyRestrictionDictionary:v21 clientType:@"com.apple.eas.account" clientUUID:v23 localizedClientDescription:v4 localizedWarningMessage:v7 complianceBlocking:1 displayImmediateAlert:v53 limitForUserEnrollment:0 outRestrictionChanged:0 outEffectiveSettingsChanged:&v65 outError:?];
  v13 = v65;

  v24 = DALoggingwithCategory();
  v25 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v24, v25))
  {
    *buf = 67109120;
    *v67 = v14;
    _os_log_impl(&dword_0, v24, v25, "MCComplianceResult was %d", buf, 8u);
  }

  if (v14 != 1)
  {
LABEL_21:
    v41 = +[DAPowerAssertionManager sharedPowerAssertionManager];
    v42 = [a1[4] account];
    v43 = [v42 persistentUUID];
    [v41 reattainPowerAssertionsForGroupIdentifier:v43];

    if (v14 == 2)
    {
      v47 = dataaccess_get_global_queue();
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_2CF04;
      v56[3] = &unk_6D260;
      v48 = v13;
      v49 = a1[4];
      v57 = v48;
      v58 = v49;
      dispatch_async(v47, v56);
    }

    else if (!v14)
    {
      v44 = dataaccess_get_global_queue();
      v45 = v44;
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_2CCF8;
      v64[3] = &unk_6CE80;
      v64[4] = a1[4];
      v46 = v64;
LABEL_28:
      dispatch_async(v44, v46);

      goto LABEL_29;
    }

    v50 = DALoggingwithCategory();
    v51 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v50, v51))
    {
      v52 = a1[4];
      *buf = 67109634;
      *v67 = v14;
      *&v67[4] = 2112;
      *&v67[6] = v52;
      v68 = 2112;
      v69 = v13;
      _os_log_impl(&dword_0, v50, v51, "Error setting client restrictions gave result %d: %@, %@", buf, 0x1Cu);
    }

    v44 = dataaccess_get_global_queue();
    v45 = v44;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_2D1DC;
    v55[3] = &unk_6CE80;
    v55[4] = a1[4];
    v46 = v55;
    goto LABEL_28;
  }

  v26 = DALoggingwithCategory();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = [a1[4] account];
    v28 = [v27 persistentUUID];
    *buf = 138412290;
    *v67 = v28;
    _os_log_impl(&dword_0, v26, v25, "Waiting for user to comply with new restrictions for account with persistent id %@", buf, 0xCu);
  }

  out_token = 0;
  v29 = MCPasscodeChangedNotification;
  v30 = [MCPasscodeChangedNotification cStringUsingEncoding:4];
  v31 = dataaccess_get_global_queue();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_2CD0C;
  handler[3] = &unk_6D238;
  v54 = a1[4];
  v32 = a1[6];
  v33 = a1[5];
  v34 = a1[7];
  *&v35 = v33;
  *(&v35 + 1) = v34;
  *&v36 = v54;
  *(&v36 + 1) = v32;
  v61 = v36;
  v62 = v35;
  v37 = notify_register_dispatch(v30, &out_token, v31, handler);

  v2 = v17;
  if (v37)
  {
    v38 = DALoggingwithCategory();
    v39 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v38, v39))
    {
      *buf = 138412546;
      *v67 = v29;
      *&v67[8] = 1024;
      *&v67[10] = v37;
      _os_log_impl(&dword_0, v38, v39, "Unable to register for message %@: %d", buf, 0x12u);
    }

    v40 = dataaccess_get_global_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2CEA8;
    block[3] = &unk_6CE80;
    block[4] = a1[4];
    dispatch_async(v40, block);
  }

LABEL_29:
}

void sub_2CD0C(id *a1, int a2)
{
  v4 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  v5 = [a1[4] account];
  v6 = [v5 persistentUUID];
  [v4 reattainPowerAssertionsForGroupIdentifier:v6];

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, v8, "MCPasscodeChangedNotification fired, re-appyling restriction dictionary", buf, 2u);
  }

  v9 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2CE98;
  block[3] = &unk_6D1A0;
  v14 = *(a1 + 2);
  v10 = *(&v14 + 1);
  v11 = a1[6];
  v12 = a1[7];
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v16 = v14;
  v17 = v13;
  dispatch_async(v9, block);

  notify_cancel(a2);
}

void sub_2CEA8(uint64_t a1)
{
  [*(a1 + 32) _tearDownPreflighter];
  v2 = [*(a1 + 32) delegate];
  [v2 policyManagerFailedToUpdatePolicy:*(a1 + 32)];
}

void sub_2CF04(uint64_t a1)
{
  v16 = 0;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"DA_POLICY_FAILURE_TITLE" value:&stru_6D4A8 table:@"DataAccess"];
  v4 = [*(a1 + 32) localizedDescription];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  CFUserNotificationDisplayAlert(0.0, 3uLL, 0, 0, 0, v3, v4, [v5 localizedStringForKey:@"DA_POLICY_FAILURE_BUTTON_TITLE" value:&stru_6D4A8 table:@"DataAccess"], 0, 0, &v16);

  if ((v16 & 3) != 0)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 134217984;
      v18 = v16;
      _os_log_impl(&dword_0, v6, v7, "Could not put up alert telling the user the account is being disabled.  Got response flags 0x%lx", buf, 0xCu);
    }
  }

  else
  {
    v7 = _CPLog_to_os_log_type[3];
  }

  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = [*(a1 + 40) account];
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_0, v8, v7, "********* disabling * %@", buf, 0xCu);
  }

  v10 = [*(a1 + 40) account];
  [v10 setEnabled:0 forDADataclass:1];

  v11 = [*(a1 + 40) account];
  [v11 setEnabled:0 forDADataclass:2];

  v12 = [*(a1 + 40) account];
  [v12 setEnabled:0 forDADataclass:4];

  v13 = [*(a1 + 40) account];
  [v13 setEnabled:0 forDADataclass:16];

  v14 = [*(a1 + 40) account];
  [v14 setEnabled:0 forDADataclass:32];

  v15 = [*(a1 + 40) account];
  [v15 saveAccountProperties];
}

void sub_2D1DC(uint64_t a1)
{
  [*(a1 + 32) _tearDownPreflighter];
  v2 = [*(a1 + 32) delegate];
  [v2 policyManagerFailedToUpdatePolicy:*(a1 + 32)];
}

void sub_2D554(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = @"not ";
    if (v3)
    {
      v7 = &stru_6D4A8;
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_0, v5, v6, "The account only remote wipe was %@successful, error %@", &v8, 0x16u);
  }
}

void sub_2E920(id a1)
{
  qword_74990 = objc_opt_new();

  _objc_release_x1();
}

void sub_2F074(uint64_t a1)
{
  v1 = [*(a1 + 32) block];
  v1[2]();
}

void sub_308EC(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_309B0;
  block[3] = &unk_6D320;
  v8 = *(a1 + 32);
  v13 = a2;
  v14 = a3;
  v11 = v8;
  v12 = v7;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_309B0(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) accountID];
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_0, v2, v3, "Received callback from ReminderKit for account %@", &v15, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [*(a1 + 32) accountID];
      v15 = 138412290;
      v16 = v7;
      v8 = "ReminderKit has set up the REMAccount for accountID: %@";
LABEL_9:
      _os_log_impl(&dword_0, v5, v6, v8, &v15, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (*(a1 + 49) == 1)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [*(a1 + 32) accountID];
      v15 = 138412290;
      v16 = v7;
      v8 = "ReminderKit has updated the REMAccount for accountID: %@";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (*(a1 + 40))
  {
    v5 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v5, v12))
    {
      v13 = [*(a1 + 32) accountID];
      v14 = [*(a1 + 40) localizedDescription];
      v15 = 138412546;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_0, v5, v12, "ReminderKit encountered an error while adding the REMAccount for accountID %@: %{public}@", &v15, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:
  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v3))
  {
    v10 = [*(a1 + 32) accountID];
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_0, v9, v3, "Setting reminderAccountMissing to FALSE for account %@", &v15, 0xCu);
  }

  return [*(a1 + 32) setReminderAccountMissing:0];
}

void sub_3AC68(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

const void *sub_3ACB4(uint64_t a1, CFIndex a2, CFArrayRef theArray, const __CFArray *a4, uint64_t a5)
{
  CFArrayGetValueAtIndex(theArray, a2);
  v9 = *(a1 + 120);
  v10 = CalDatabaseCopyCalendarItemWithRowID();
  if (v10)
  {
    v11 = v10;
    if (CalEntityIsOfType())
    {
      RowID = CalCalendarItemGetRowID();
      v13 = CalCalendarItemCopyExternalID();
      if (v13)
      {
        v14 = *(a1 + 32);
        v15 = [NSNumber numberWithInt:RowID];
        [v14 setObject:v13 forKeyedSubscript:v15];
      }

      v16 = *(a1 + 64);
      [*(a1 + 40) _handleChangeOnEventWithExchangeId:v13 localId:RowID changeType:1 eventChangeId:0 hasSignificantAttributeChanges:a5 container:*(a1 + 128) dataHandler:*(a1 + 48) addedIdsToEventChangeId:*(a1 + 56) modifiedIdsToEventChangeId:*(a1 + 64) deletedIdsToEventChangeId:*(a1 + 72) pseudoDeletedIdsToEventChangeId:*(a1 + 80) eventChangeIdsToClear:*(a1 + 88) allAddedDetachmentIds:*(a1 + 96) localToExchangeIdMap:*(a1 + 32) outShouldSaveDB:*(*(a1 + 104) + 8) + 24];
    }

    CFRelease(v11);
  }

  result = CFArrayGetValueAtIndex(a4, a2);
  v18 = *(*(a1 + 112) + 8);
  v19 = *(v18 + 24);
  if (v19 <= result)
  {
    v19 = result;
  }

  *(v18 + 24) = v19;
  return result;
}

void sub_47D08(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAgent.m" lineNumber:1946 description:@"This method does not support reminders!"];
}

void sub_47D7C()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_47DE8()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_47E54()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_47EC0()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_47F2C()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_47F98()
{
  sub_1A384();
  v0 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_47FF4()
{
  sub_1A390();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"ASAgent_FolderContentsSync.m" lineNumber:3376 description:{@"Attempted to queue a sync request for a folder with no folder id: %@", v0}];
}

void sub_48060()
{
  sub_1A390();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"ASAgent_FolderContentsSync.m" lineNumber:3384 description:{@"Attempted to queue a sync request for a folder with no folder id: %@", v0}];
}

void sub_480CC()
{
  sub_1A390();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"ASAgent_FolderContentsSync.m" lineNumber:3814 description:{@"attempted to queue a sync request for a folder with no folder id: %@", v0}];
}

void sub_48138()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_481A4()
{
  sub_1A384();
  v0 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_48200()
{
  sub_1A384();
  v0 = +[NSAssertionHandler currentHandler];
  v1 = +[NSThread currentThread];
  sub_1A378();
  [v2 handleFailureInMethod:"-[ASDaemonAccount _refirePingAfterDelay:withGrowthAction:]" object:v1 file:? lineNumber:? description:?];
}

void sub_4828C()
{
  sub_1A384();
  v2 = +[NSAssertionHandler currentHandler];
  v0 = +[NSThread currentThread];
  sub_1A378();
  [v1 handleFailureInMethod:"-[ASDaemonAccount _refirePingWithXPCActivityDelay:withGrowthAction:]" object:v0 file:? lineNumber:? description:?];
}

void sub_48328()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_48394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ASDaemonAccount.m" lineNumber:a3 description:@"Must only have one dataclass in move requests"];
}

void sub_483FC()
{
  sub_1A384();
  v0 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_48458()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_484C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ASDaemonAccount.m" lineNumber:3748 description:{@"Both of folderId (%@) and serverID (%@) should be non-nil", a3, a4}];
}

void sub_48544()
{
  sub_1A384();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1A378();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_485C4(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"ASAgent_ChangeGatherer.m" lineNumber:860 description:{@"OwningID count and Email count mismatch! OwningID count:%lu, Email count:%lu", a4, CFArrayGetCount(a1)}];
}