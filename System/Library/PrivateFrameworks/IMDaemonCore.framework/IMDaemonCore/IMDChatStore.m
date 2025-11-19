@interface IMDChatStore
+ (IMDChatStore)sharedInstance;
- (BOOL)_hasCancellableScheduledMessageForChat:(id)a3;
- (BOOL)_shouldCheckPriorityForChat:(id)a3;
- (BOOL)_shouldDeferIndexingForReason:(int64_t)a3;
- (BOOL)_shouldMarkAllChatsAsNeedingSync;
- (BOOL)_shouldSkipIndexingForReason:(int64_t)a3;
- (BOOL)_storeChat:(id)a3 updateProtectedProperties:(BOOL)a4;
- (BOOL)updateHandle:(id)a3 sourceMessage:(id)a4 personCentricID:(id)a5 onService:(id)a6;
- (BOOL)updatePersonCentricIDForHandlesInChatWithMessage:(id)a3 fromIdentifier:(id)a4 personCentricID:(id)a5 chat:(id)a6;
- (CKRecordZoneID)record1ZoneID;
- (CKRecordZoneID)recordZoneID;
- (IMDChatStore)init;
- (id)_fetchChatRecordsToUploadWithFilter:(unint64_t)a3 limit:(unint64_t)a4;
- (id)_generateCKRecordsFromChatRecords:(id)a3 filter:(unint64_t)a4;
- (id)_incomingChatWithChatRecord:(id)a3;
- (id)_incomingChatsWithChatRecords:(id)a3 loadLastMessage:(BOOL)a4;
- (id)_loadChatsIncludingAllChats:(BOOL)a3;
- (id)_lockRecord;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)a3 error:(id *)a4;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(unint64_t)a4 error:(id *)a5;
- (id)chatWithGUID:(id)a3;
- (id)chatsFilteredUsingPredicate:(id)a3;
- (id)chatsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5;
- (id)chatsFromSortedIdentifiers:(id)a3;
- (id)chatsGUIDsForMessageWithGUID:(id)a3;
- (id)chatsGUIDsForMessageWithIdentifier:(int64_t)a3;
- (id)chatsWithGroupID:(id)a3;
- (id)chatsWithGroupedHandles:(id)a3 displayName:(id)a4 style:(unsigned __int8)a5;
- (id)chatsWithHandle:(id)a3 onService:(id)a4;
- (id)chatsWithIdentifier:(id)a3;
- (id)chatsWithIdentifier:(id)a3 onService:(id)a4;
- (id)chatsWithIdentifier:(id)a3 onServiceNamed:(id)a4;
- (id)chatsWithPinningIdentifier:(id)a3;
- (id)chatsWithRoomname:(id)a3 onService:(id)a4;
- (id)copyDuplicateGroupChatsWithLimit:(int64_t)a3;
- (id)newestChatWithGroupID:(id)a3 onService:(id)a4;
- (id)newestChatWithOriginalGroupID:(id)a3 onService:(id)a4;
- (id)serviceNamesForFilter:(unint64_t)a3;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)syncTokenStore;
- (id)zoneIDForService:(id)a3;
- (unint64_t)_maxFetchChatAttempts;
- (unint64_t)unreadCountForChat:(id)a3;
- (void)_addGroupPhotoToTransferCenterForChat:(id)a3;
- (void)_broadcastToForceReloadChats;
- (void)_hasMarkedAllChatsAsNeedingSync;
- (void)_markAllChatsAsNeedingSync;
- (void)_performOrScheduleSpotlightIndexingOfAddedMessageWithGUID:(id)a3 chat:(id)a4 reason:(int64_t)a5;
- (void)_processIncomingChat:(id)a3;
- (void)_updateHasCancellableScheduledMessageForChat:(id)a3;
- (void)_updateModificationDate;
- (void)addMessageWithGUID:(id)a3 toChat:(id)a4 reason:(int64_t)a5 skipIndexing:(BOOL)a6;
- (void)blackholeChat:(id)a3;
- (void)clearLocalSyncState:(unint64_t)a3;
- (void)clearTombstonesForRecordIDs:(id)a3;
- (void)createSMSVariantsIfNeededFor:(id)a3;
- (void)deleteChat:(id)a3;
- (void)enumerateBatchedChatsFilteredUsingPredicate:(id)a3 batchSize:(unint64_t)a4 block:(id)a5;
- (void)fetchUnreadChatsOlderThan:(id)a3 predicate:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5;
- (void)recordUpdateSucceededWithRecord:(id)a3;
- (void)remapMessageError:(unsigned int)a3 toError:(unsigned int)a4 forChat:(id)a5 completion:(id)a6;
- (void)removeMessageWithGUID:(id)a3 fromChat:(id)a4;
- (void)resetLocalSyncStateIfAppropriate;
- (void)setChatIsFiltered:(int64_t)a3 withChatGuid:(id)a4;
- (void)unblackholeChat:(id)a3;
@end

@implementation IMDChatStore

- (void)_updateModificationDate
{
  v3 = [MEMORY[0x277CCACA8] stringGUID];
  [(IMDChatStore *)self setModificationStamp:v3];
}

+ (IMDChatStore)sharedInstance
{
  if (qword_281421190 != -1)
  {
    sub_22B7D70B0();
  }

  v3 = qword_281421010;

  return v3;
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"schema_version";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:IMDSMSRecordStoreGetSchemaVersion()];
  v7[1] = @"schema";
  v8[0] = v2;
  v3 = IMDSMSRecordStoreGetSchema();
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (CKRecordZoneID)recordZoneID
{
  v2 = +[IMDRecordZoneManager sharedInstance];
  v3 = [v2 chatRecordZoneID];

  return v3;
}

- (CKRecordZoneID)record1ZoneID
{
  v2 = +[IMDRecordZoneManager sharedInstance];
  v3 = [v2 chat1RecordZoneID];

  return v3;
}

- (id)syncTokenStore
{
  if (qword_27D8CFE60 != -1)
  {
    sub_22B7D2E38();
  }

  v3 = qword_27D8CFE58;

  return v3;
}

- (void)resetLocalSyncStateIfAppropriate
{
  if ([(IMDChatStore *)self _shouldMarkAllChatsAsNeedingSync])
  {
    [(IMDChatStore *)self clearLocalSyncState:3];
    [(IMDChatStore *)self _hasMarkedAllChatsAsNeedingSync];
  }

  v3 = +[IMDChatRegistry sharedInstance];
  [v3 markDeferredChatsAsNeedingSync];
}

- (void)clearLocalSyncState:(unint64_t)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v23 = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local chat sync state, flags 0x%x", buf, 8u);
    }
  }

  if (v3)
  {
    v6 = +[IMDCKUtilities sharedInstance];
    v7 = [v6 syncState];
    [v7 setLastSyncDate:0];

    v8 = [(IMDChatStore *)self syncTokenStore];
    [v8 persistToken:0 forKey:@"changeToken"];

    v9 = [(IMDChatStore *)self syncTokenStore];
    [v9 persistToken:0 forKey:@"chat1changeToken"];
  }

  if ((v3 & 2) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Marking all chats as dirty", buf, 2u);
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = +[IMDChatRegistry sharedInstance];
    v12 = [v11 chats];

    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * v15++) resetCKSyncState];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    [(IMDChatStore *)self _markAllChatsAsNeedingSync];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_markAllChatsAsNeedingSync
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];
}

- (BOOL)_shouldMarkAllChatsAsNeedingSync
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1ACB8] sharedInstance];
  v3 = [v2 isUnderFirstDataProtectionLock];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [v5 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]] ^ 1;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldMarkAllChatsAsNeedingSync %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_hasMarkedAllChatsAsNeedingSync
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];
}

- (id)_lockRecord
{
  v2 = qword_27D8D4860;
  if (!qword_27D8D4860)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Generating Lock Record - OH BOY", v11, 2u);
      }
    }

    v4 = +[IMDRecordZoneManager sharedInstance];
    v5 = [v4 chatRecordZoneID];

    v6 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"chatLockRecordName" zoneID:v5];
    v7 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"chatLockRecordType" recordID:v6];
    v8 = [MEMORY[0x277CCACA8] stringGUID];
    [v7 setValue:v8 forKey:@"lRKey"];

    v9 = qword_27D8D4860;
    qword_27D8D4860 = v7;

    v2 = qword_27D8D4860;
  }

  return v2;
}

- (unint64_t)_maxFetchChatAttempts
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-client-fetch-chats-max-retry"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(unint64_t)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = [(IMDChatStore *)self _maxFetchChatAttempts];
  v9 = 0;
  if (v8 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  do
  {
    v11 = [(IMDChatStore *)self _fetchChatRecordsToUploadWithFilter:a3 limit:a4];
    if (![v11 count])
    {
      goto LABEL_18;
    }

    v12 = [(IMDChatStore *)self _generateCKRecordsFromChatRecords:v11 filter:a3];
    v13 = v12;
    if (v12 && [v12 count])
    {
      goto LABEL_19;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v11 count];
        *buf = 134218240;
        v27 = v15;
        v28 = 2048;
        v29 = v9;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "For batch of %lu records to write up, all records failed to convert to CKRecord, loop %lu.", buf, 0x16u);
      }
    }

    ++v9;
  }

  while (v10 != v9);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v27 = v10;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Tried max times(%lu) to find chats to fetch, aborting", buf, 0xCu);
    }
  }

  if (a5)
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Failed to find chats to sync; fetched chats failed to encode as CKRecord";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *a5 = [v17 initWithDomain:*MEMORY[0x277D19D08] code:1 userInfo:v18];

    v11 = [MEMORY[0x277D1AAA8] sharedInstance];
    v19 = *a5;
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", "-[IMDChatStore(RecordStore) batchOfRecordsToWriteWithFilter:limit:error:]"];
    [v11 forceAutoBugCaptureWithSubType:@"ExceededMaxFetchChatAttempts" errorPayload:v19 type:@"MiCSync" context:v20];

LABEL_18:
    v13 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v13 = 0;
LABEL_20:
  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)recordUpdateSucceededWithRecord:(id)a3
{
  v3 = a3;
  v4 = +[IMDCKChatSyncController sharedInstance];
  [v4 _updateChatUsingCKRecord:v3 onRead:0 didSucceed:1 dispatchToMain:0];
}

- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D1AC70] sharedInstance];
  v11 = [v8 copy];
  if (([v10 wasZoneNotFound:v9] & 1) != 0 || objc_msgSend(v10, "wasUnknownItem:", v9))
  {
    v12 = [v7 recordName];
    v13 = [v12 isEqualToString:@"chatLockRecordName"];

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v30 = 138412290;
          v31 = v9;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "We got back error [%@] on the lock record, setting the lock record to nil to re-generate on next sync", &v30, 0xCu);
        }
      }

      v15 = qword_27D8D4860;
      qword_27D8D4860 = 0;
    }

    else
    {
      v16 = +[IMDChatRegistry sharedInstance];
      v15 = [v16 existingChatWithGUID:v11];

      if (v15)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v30 = 138412290;
            v31 = v15;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking existing chat %@ as deferred", &v30, 0xCu);
          }
        }

        [v15 updateCloudKitSyncState:2];
        [v15 updateServerChangeToken:0];
        [v15 updateCloudKitRecordID:0];
        v18 = +[IMDChatRegistry sharedInstance];
        [v18 _markForksAsSyncedForChat:v15];
      }
    }

    goto LABEL_29;
  }

  v19 = +[IMDCKUtilities sharedInstance];
  v15 = [v19 extractServerRecordFromCKServerErrorRecordChanged:v9];

  v20 = IMOSLoggingEnabled();
  if (v15)
  {
    if (v20)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v30 = 138412290;
        v31 = v15;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Extracted record from server error %@", &v30, 0xCu);
      }
    }

    v22 = [v15 recordID];
    v23 = [v22 recordName];
    v24 = [v23 isEqualToString:@"chatLockRecordName"];

    if (!v24)
    {
      v25 = +[IMDChatRegistry sharedInstance];
      [v25 resolveChatConflictUsingSyncData:v15 localGUID:v11];
LABEL_28:

      goto LABEL_29;
    }

LABEL_27:
    v25 = qword_27D8D4860;
    qword_27D8D4860 = 0;
    goto LABEL_28;
  }

  if (v20)
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Could not extract server record, checking if lock record", &v30, 2u);
    }
  }

  v27 = [v7 recordName];
  v28 = [v27 isEqualToString:@"chatLockRecordName"];

  if (v28)
  {
    goto LABEL_27;
  }

LABEL_29:

  v29 = *MEMORY[0x277D85DE8];
}

- (id)serviceNamesForFilter:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v4 = +[IMDServiceController sharedController];
    v5 = [v4 serviceNamesSupportingCapability:*MEMORY[0x277D1A580]];
    v6 = [v5 allObjects];
    v3 = [v6 arrayByExcludingObjectsInArray:*MEMORY[0x277D1A5F0]];
  }

  else
  {
    if (a3 == 1)
    {
      v3 = *MEMORY[0x277D1A5F0];
      goto LABEL_7;
    }

    v4 = +[IMDServiceController sharedController];
    v5 = [v4 serviceNamesSupportingCapability:*MEMORY[0x277D1A580]];
    v3 = [v5 allObjects];
  }

LABEL_7:
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Predicate filtering for services %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_fetchChatRecordsToUploadWithFilter:(unint64_t)a3 limit:(unint64_t)a4
{
  v27[5] = *MEMORY[0x277D85DE8];
  v6 = [(IMDChatStore *)self serviceNamesForFilter:a3];
  v7 = MEMORY[0x277CCA920];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %@", *MEMORY[0x277D19800], &stru_283F23018];
  v27[0] = v8;
  v9 = *MEMORY[0x277D197A8];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", *MEMORY[0x277D197A8]];
  v27[1] = v10;
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %@", v9, &stru_283F23018];
  v27[2] = v11;
  v12 = [MEMORY[0x277CCAC30] __im_chatPredicateForServiceNames:v6];
  v27[3] = v12;
  v13 = [MEMORY[0x277CCAC30] __im_chatPredicateForSyncState:0];
  v27[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
  v15 = [v7 andPredicateWithSubpredicates:v14];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_22B4D76B0;
  v25 = sub_22B4D78B4;
  v26 = 0;
  v16 = [(IMDChatStore *)self database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B582C34;
  v20[3] = &unk_2787031A0;
  v20[4] = &v21;
  [v16 fetchChatRecordsFilteredUsingPredicate:v15 sortedUsingDescriptors:MEMORY[0x277CBEBF8] limit:a4 completionHandler:v20];

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)createSMSVariantsIfNeededFor:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v3 = +[IMDAccountController sharedAccountController];
  v52 = [v3 anySessionForServiceName:*MEMORY[0x277D1A610]];

  if (v52)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v51;
    v55 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v55)
    {
      v54 = *v68;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v68 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v67 + 1) + 8 * i);
          if ([v5 style] == 45)
          {
            buf[0] = 45;
            v6 = [v5 guid];
            v65 = 0;
            v66 = 0;
            IMComponentsFromChatGUID();
            v7 = v66;
            v8 = v65;

            v9 = [(IMDChatStore *)self chatsWithIdentifier:v7 onServiceNamed:*MEMORY[0x277D1A610]];
            v10 = [v9 firstObject];
          }

          else
          {
            v11 = [v5 groupID];
            v12 = [(IMDChatStore *)self chatsWithGroupID:v11];

            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v7 = v12;
            v13 = [v7 countByEnumeratingWithState:&v61 objects:v76 count:16];
            if (v13)
            {
              v14 = *v62;
LABEL_11:
              v15 = 0;
              while (1)
              {
                if (*v62 != v14)
                {
                  objc_enumerationMutation(v7);
                }

                v16 = *(*(&v61 + 1) + 8 * v15);
                v17 = [v5 service];
                v18 = [v17 internalName];
                v19 = [v18 isEqualToString:*MEMORY[0x277D1A610]];

                if (v19)
                {
                  break;
                }

                if (v13 == ++v15)
                {
                  v13 = [v7 countByEnumeratingWithState:&v61 objects:v76 count:16];
                  if (v13)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_17;
                }
              }

              v10 = v16;

              if (v10)
              {
                goto LABEL_32;
              }
            }

            else
            {
LABEL_17:
            }

            v20 = [v5 groupID];
            v21 = [v5 originalGroupID];
            v22 = [v20 isEqualToString:v21];

            if (v22)
            {
              v10 = 0;
            }

            else
            {
              v23 = [v5 originalGroupID];
              v24 = [(IMDChatStore *)self chatsWithGroupID:v23];

              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v7 = v24;
              v10 = [v7 countByEnumeratingWithState:&v57 objects:v75 count:16];
              if (v10)
              {
                v25 = *v58;
                while (2)
                {
                  for (j = 0; j != v10; j = j + 1)
                  {
                    if (*v58 != v25)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v27 = *(*(&v57 + 1) + 8 * j);
                    v28 = [v5 service];
                    v29 = [v28 internalName];
                    v30 = [v29 isEqualToString:*MEMORY[0x277D1A610]];

                    if (v30)
                    {
                      v10 = v27;
                      goto LABEL_31;
                    }
                  }

                  v10 = [v7 countByEnumeratingWithState:&v57 objects:v75 count:16];
                  if (v10)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_31:
            }
          }

LABEL_32:

          if (v10 || ([v5 isChatBot] & 1) != 0)
          {
            if (IMOSLoggingEnabled())
            {
              v31 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = [v5 guid];
                v33 = [v10 guid];
                v34 = [v5 isChatBot];
                *buf = 138412802;
                v35 = @"NO";
                if (v34)
                {
                  v35 = @"YES";
                }

                v72 = v32;
                v73 = 2112;
                *v74 = v33;
                *&v74[8] = 2112;
                *&v74[10] = v35;
                _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Found SMS variant for new service chat %@ as %@ or it's a chat bot: %@", buf, 0x20u);
              }
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v36 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v37 = [v5 guid];
                v38 = [v5 style];
                v39 = [v5 groupID];
                v40 = [v5 originalGroupID];
                *buf = 138413058;
                v72 = v37;
                v73 = 1024;
                *v74 = v38;
                *&v74[4] = 2112;
                *&v74[6] = v39;
                *&v74[14] = 2112;
                *&v74[16] = v40;
                _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Could not find SMS fallback chat for %@/style %c groupID %@ origGroupID %@, creating", buf, 0x26u);
              }
            }

            v41 = [v52 createHandleInfoFor:v5];
            v42 = [v5 spamCategory];
            v43 = [v5 spamExtensionName];
            v44 = [v5 chatIdentifier];
            v45 = [v5 style];
            v46 = [v5 displayName];
            v47 = [v5 groupID];
            v48 = [v5 originalGroupID];
            [v52 didJoinChat:v44 style:v45 displayName:v46 groupID:v47 originalGroupID:v48 handleInfo:v41 category:v42 spamExtensionName:v43];
          }
        }

        v55 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v55);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Could not find SMS session to create alternate chat to sync", buf, 2u);
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (id)zoneIDForService:(id)a3
{
  v3 = [*MEMORY[0x277D1A5F0] indexOfObject:a3];
  v4 = +[IMDRecordZoneManager sharedInstance];
  v5 = v4;
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 chat1RecordZoneID];
  }

  else
  {
    [v4 chatRecordZoneID];
  }
  v6 = ;

  return v6;
}

- (id)_generateCKRecordsFromChatRecords:(id)a3 filter:(unint64_t)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  theDict = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v4;
  v48 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v48)
  {
    v47 = *v61;
    do
    {
      v6 = 0;
      do
      {
        if (*v61 != v47)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v50 = v6;
        v8 = *(*(&v60 + 1) + 8 * v6);
        v9 = sub_22B4DAEE8(v8);
        v52 = v9;
        if (v9)
        {
          if ([(IMDChat *)v9 cloudKitSyncState]== 1)
          {
            v10 = IMLogHandleForCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_22B7D2E4C(v65, v52, &v66, v10);
            }

            [(IMDChat *)v52 setCloudKitSyncState:2];
            [(IMDChatStore *)self storeChat:v52];
            v51 = [MEMORY[0x277D1AAA8] sharedInstance];
            [v51 forceAutoBugCaptureWithSubType:@"ChatToSyncHasSyncedState" errorPayload:0 type:@"MiCSync" context:@"Chat fetched for writing up already has synced state"];
          }

          else
          {
            [v43 addObject:v52];
            v12 = [(IMDChat *)v52 serviceName];
            v46 = [(IMDChatStore *)self zoneIDForService:v12];

            v49 = [MEMORY[0x277CBEB18] array];
            v13 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
            LODWORD(v12) = [v13 isOneChatEnabled];

            if (v12)
            {
              v59 = 0;
              v14 = [(IMDChat *)v52 copyCKRecordRepresentationsWithZoneID:v46 salt:0 error:&v59];
              v51 = v59;
              [v49 addObjectsFromArray:v14];
            }

            else
            {
              v15 = [MEMORY[0x277CCACA8] stringGUID];
              v58 = 0;
              v14 = [(IMDChat *)v52 copyCKRecordRepresentationWithZoneID:v46 salt:v15 error:&v58];
              v51 = v58;

              if (v14)
              {
                [v49 addObject:v14];
              }

              else
              {
                [(IMDChat *)v52 setCloudKitSyncState:2];
                [(IMDChatStore *)self storeChat:v52];
                v16 = IMLogHandleForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v33 = [(IMDChat *)v52 guid];
                  *buf = 138412802;
                  v68 = v33;
                  v69 = 2112;
                  v70 = v51;
                  v71 = 1024;
                  LODWORD(v72) = 2;
                  _os_log_error_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_ERROR, "Failed to generate CKRecord for chat %@, error %@, marking ck_sync_state as %d", buf, 0x1Cu);
                }

                v17 = [MEMORY[0x277D1AAA8] sharedInstance];
                [v17 forceAutoBugCaptureWithSubType:@"NullCKRecordForIMDChat" errorPayload:v51 type:@"MiCSync" context:@"Failed to generate CKRecord for Chat"];
              }
            }

            if (v51 || ![v49 count])
            {
              [(IMDChat *)v52 setCloudKitSyncState:2];
              [(IMDChatStore *)self storeChat:v52];
              v18 = IMLogHandleForCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v32 = [(IMDChat *)v52 guid];
                *buf = 138412802;
                v68 = v32;
                v69 = 2112;
                v70 = v51;
                v71 = 1024;
                LODWORD(v72) = 2;
                _os_log_error_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_ERROR, "Failed to generate CKRecord for chat %@, error %@, marking ck_sync_state as %d", buf, 0x1Cu);
              }

              v19 = [MEMORY[0x277D1AAA8] sharedInstance];
              [v19 forceAutoBugCaptureWithSubType:@"NullCKRecordForIMDChat" errorPayload:v51 type:@"MiCSync" context:@"Failed to generate CKRecord for Chat"];
            }

            else
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v19 = v49;
              v20 = [v19 countByEnumeratingWithState:&v54 objects:v64 count:16];
              if (v20)
              {
                v21 = *v55;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v55 != v21)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v23 = *(*(&v54 + 1) + 8 * i);
                    v24 = [v23 recordID];
                    v25 = [v24 recordName];
                    v26 = [v5 containsObject:v25];

                    if ((v26 & 1) == 0)
                    {
                      v27 = [v23 stringForKey:@"guid"];
                      if (v27)
                      {
                        if (v23)
                        {
                          CFDictionarySetValue(theDict, v27, v23);
                        }

                        v28 = [v23 recordID];
                        v29 = [v28 recordName];
                        [v5 addObject:v29];
                      }
                    }
                  }

                  v20 = [v19 countByEnumeratingWithState:&v54 objects:v64 count:16];
                }

                while (v20);
              }
            }
          }
        }

        else
        {
          v11 = IMLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v30 = [v8 guid];
            v31 = [v8 chatIdentifier];
            *buf = 138412802;
            v68 = v30;
            v69 = 2112;
            v70 = v31;
            v71 = 2112;
            v72 = v8;
            _os_log_error_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_ERROR, "Failed to create IMDChat for guid %@ chatIdentifier %@ ChatRecord %@", buf, 0x20u);
          }

          v51 = [MEMORY[0x277D1AAA8] sharedInstance];
          [v51 forceAutoBugCaptureWithSubType:@"NullIMDChatForChatRecordRef" errorPayload:0 type:@"MiCSync" context:@"Failed to generate IMDChat for IMDChatRecordRef"];
        }

        v6 = v50 + 1;
      }

      while (v50 + 1 != v48);
      v34 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
      v48 = v34;
    }

    while (v34);
  }

  v35 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v36 = [v35 isOneChatEnabled];

  if (a4 == 2)
  {
    v37 = v36;
  }

  else
  {
    v37 = 1;
  }

  if ((v37 & 1) == 0 && [v43 count])
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [v43 count];
        *buf = 134217984;
        v68 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Making sure %ld chats have SMS variants", buf, 0xCu);
      }
    }

    [(IMDChatStore *)self createSMSVariantsIfNeededFor:v43];
  }

  v40 = *MEMORY[0x277D85DE8];

  return theDict;
}

- (IMDChatStore)init
{
  v9.receiver = self;
  v9.super_class = IMDChatStore;
  v2 = [(IMDChatStore *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringGUID];
    [(IMDChatStore *)v2 setModificationStamp:v3];

    v4 = objc_alloc_init(IMDMessagePTaskXPCStore);
    messagePTaskStore = v2->_messagePTaskStore;
    v2->_messagePTaskStore = v4;

    v6 = objc_alloc(MEMORY[0x277D1AC68]);
    v7 = [v6 initWithObject:v2 title:@"IMDChatStore-Schema" queue:MEMORY[0x277D85CD0]];
    [(IMDChatStore *)v2 setStateCaptureAssistant:v7];
  }

  return v2;
}

- (void)blackholeChat:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Blackholing chat: %@", &v8, 0xCu);
    }

    [v3 guid];
    v5 = IMDChatRecordCopyChatForGUID();
    if (v5)
    {
      IMDChatRecordSetIsBlackholed();
      CFRelease(v5);
    }

    else if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "No chat record found to archive for chat: %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unblackholeChat:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Unblackholing chat: %@", &v8, 0xCu);
    }

    [v3 guid];
    v5 = IMDChatRecordCopyChatForGUID();
    if (v5)
    {
      IMDChatRecordSetIsBlackholed();
      CFRelease(v5);
    }

    else if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "No chat record found to unarchive for chat: %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addGroupPhotoToTransferCenterForChat:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a3 groupPhotoGuid];
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:v3];

  if (v5)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Transfer already exists in transfer center. not overwriting. Transfer: %@", &v11, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([v3 length])
  {
    v7 = +[IMDAttachmentStore sharedInstance];
    v6 = [v7 attachmentWithGUID:v3];

    v8 = IMDatabaseLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Adding group photo to IMDFileTransferCenter for guid: %@.", &v11, 0xCu);
      }

      v8 = +[IMDFileTransferCenter sharedInstance];
      [v8 addTransfer:v6 forGUID:v3];
    }

    else if (v9)
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Group file transfer is nil for guid: %@. Not adding anything to file transfers.", &v11, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasCancellableScheduledMessageForChat:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDMessageStore sharedInstance];
  v25 = v3;
  v5 = [v3 guid];
  v24 = v4;
  v6 = [v4 scheduledMessagesBatchFetcherForChat:v5];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = IMDCreateIMMessageItemFromIMDMessageRecordRef(*(*(&v28 + 1) + 8 * v11), 0);
      v13 = v12;
      if (v12)
      {
        if ([v12 scheduleType] != 2 || (objc_msgSend(v13, "scheduleState") - 1) > 1)
        {
          goto LABEL_18;
        }

        v14 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v25 chatIdentifier];
          *buf = 138412546;
          v33 = v13;
          v34 = 2112;
          v35 = v15;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Found scheduled message: %@ for chatIdentifier: %@", buf, 0x16u);
        }

        if (![v13 errorCode])
        {

          v21 = 1;
          v19 = v7;
          goto LABEL_24;
        }

        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = v13;
          _os_log_error_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_ERROR, "Scheduled message was marked as failed but didn't update the scheduleState: %@", buf, 0xCu);
        }

        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDChatStore-Database" code:objc_msgSend(v13 userInfo:{"errorCode"), 0}];
        v18 = [MEMORY[0x277D1AAA8] sharedInstance];
        [v18 forceAutoBugCaptureWithSubType:@"Database read a failed scheduled message with an invalid scheduleState" errorPayload:v17 type:@"ScheduledMessageFailureStateNotSet" context:0];

        [v13 setScheduleState:4];
      }

      else
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D70C4(&v26, v27, v17);
        }
      }

LABEL_18:
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v19 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v25 chatIdentifier];
    *buf = 138412290;
    v33 = v20;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "No scheduled message found for chatIdentifier: %@", buf, 0xCu);
  }

  v21 = 0;
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_updateHasCancellableScheduledMessageForChat:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChatStore *)self _hasCancellableScheduledMessageForChat:v4];
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 guid];
    v9[0] = 67109378;
    v9[1] = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Calculated hasCancellableScheduledMessage: %{BOOL}d for chat: %@", v9, 0x12u);
  }

  [v4 updateHasCancellableScheduledMessage:v5];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processIncomingChat:(id)a3
{
  v11 = a3;
  v4 = [v11 service];
  if (([v4 chatsIgnoreLoginStatus] & 1) == 0 && objc_msgSend(v11, "style") != 45)
  {
    [v11 setState:0];
  }

  if ([v11 style] == 43)
  {
    v5 = [v11 displayName];
    if ([v5 length])
    {
      v6 = [v11 displayName];
      v7 = [v6 trimmedString];
      v8 = [v7 length];

      if (!v8)
      {
        [v11 setDisplayName:0];
      }
    }

    else
    {
    }
  }

  v9 = [v11 lastMessage];
  if (v9)
  {
    v10 = +[IMDMessageStore sharedInstance];
    [v10 registerTransfersForMessage:v9];
  }

  [(IMDChatStore *)self _updateHasCancellableScheduledMessageForChat:v11];
  [v11 recoverParticipantsIfNeeded];
  [(IMDChatStore *)self _addGroupPhotoToTransferCenterForChat:v11];
  [v11 _repairUnregisteredChatIfNeeded];
}

- (id)_loadChatsIncludingAllChats:(BOOL)a3
{
  v3 = a3;
  v52 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_22B4D7780;
  v43 = sub_22B4D7924;
  v44 = 0;
  v5 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v5 startTimingForKey:@"loadAllChatsForChatStore"];
  v27 = self;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B634C1C;
  aBlock[3] = &unk_2787069D0;
  v7 = v6;
  v34 = v7;
  v8 = _Block_copy(aBlock);
  if (v3)
  {
    IMDChatRecordCopyAllActiveChatsProgressivelyWithLimitAndBlock();
  }

  else
  {
    v9 = IMGetCachedDomainIntForKeyWithDefaultValue();
    v10 = IMGetCachedDomainIntForKeyWithDefaultValue();
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v46 = v9;
      v47 = 2048;
      v48 = v10;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Loading recent chats (budget %lld for known senders, %lld for other filters)", buf, 0x16u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = IMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit();
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v51 count:16];
    if (v13)
    {
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v8[2](v8, v16);
          objc_autoreleasePoolPop(v17);
        }

        v13 = [v12 countByEnumeratingWithState:&v29 objects:v51 count:16];
      }

      while (v13);
    }
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22B634C78;
  v28[3] = &unk_2787069F8;
  v28[4] = v27;
  v28[5] = &v35;
  v28[6] = &v39;
  [v7 enumerateObjectsUsingBlock:{v28, v27}];
  if (*(v36 + 24) == 1)
  {
    IMGreenTeaMessageReadLog();
  }

  [v5 stopTimingForKey:@"loadAllChatsForChatStore"];
  v18 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    [v5 totalTimeForKey:@"loadAllChatsForChatStore"];
    v20 = v19;
    v21 = [v40[5] count];
    v22 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v23 = [v22 isOneChatEnabled];
    *buf = 134218496;
    v46 = v20;
    v47 = 2048;
    v48 = v21;
    v49 = 1024;
    v50 = v23;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Loading all chats took %f seconds for %lu chats (OneChat status: %{BOOL}d)", buf, 0x1Cu);
  }

  v24 = v40[5];
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v39, 8);
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)_storeChat:(id)a3 updateProtectedProperties:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = sub_22B4DB7D4(v6, v4);
    if (v8)
    {
      v9 = v8;
      [v6 _setRowID:IMDChatRecordGetIdentifier()];
      CFRelease(v9);
    }

    else
    {
      [v6 _setRowID:-1];
    }

    objc_autoreleasePoolPop(v7);
    [(IMDChatStore *)self _updateModificationDate];
  }

  return 0;
}

- (unint64_t)unreadCountForChat:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 service];
  v5 = [v4 supportsDatabase];

  if (v5)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_22B7D7104(v3, v6);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v8 = [v7 isUnreadCountRefactorEnabled];

    if (v8)
    {
      v9 = [v3 guid];
      if ([v9 length])
      {
        v10 = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
        v31[0] = v9;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22B6350C4;
        v20[3] = &unk_278705FF0;
        v20[4] = &v21;
        [v10 generateUnreadCountReportsForChatsWithGUIDs:v11 completionHandler:v20];
      }
    }

    else
    {
      if ([v3 rowID] == -1)
      {
        [v3 guid];
        v13 = IMDMessageRecordCountAllUnreadMessagesForChatGUID();
      }

      else
      {
        [v3 rowID];
        v13 = IMDMessageRecordCountAllUnreadMessagesForChatRowID();
      }

      v22[3] = v13;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = v22[3];
        v16 = [v3 guid];
        v17 = [v3 rowID];
        *buf = 134218498;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        v29 = 2048;
        v30 = v17;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Counted %llu unread messages for chat GUID %@ chat rowID %lld", buf, 0x20u);
      }
    }

    v12 = v22[3];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v12 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_incomingChatWithChatRecord:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v6];
    v8 = [v7 firstObject];
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "No incoming chat record.", v11, 2u);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_incomingChatsWithChatRecords:(id)a3 loadLastMessage:(BOOL)a4
{
  v30 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27 = v5;
  if ([v5 count])
  {
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (!v6)
    {

      goto LABEL_27;
    }

    v7 = 0;
    v8 = *v32;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = sub_22B4DAEE8(*(*(&v31 + 1) + 8 * i));
        v11 = v10;
        if (v10)
        {
          if (v30)
          {
            v12 = [(IMDChat *)v10 lastMessage];
            v13 = v12 == 0;

            if (v13)
            {
              v14 = +[IMDMessageStore sharedInstance];
              v15 = [v14 lastMessageForChatWithRowID:{-[IMDChat rowID](v11, "rowID")}];
              [(IMDChat *)v11 setLastMessage:v15];
            }
          }

          [(IMDChatStore *)self _processIncomingChat:v11];
          v16 = [(IMDChat *)v11 serviceName];
          v17 = [v16 isEqualToString:*MEMORY[0x277D1A610]];

          v18 = [(IMDChat *)v11 serviceName];
          v7 |= v17;
          if ([v18 length])
          {
            v19 = +[IMDChatRegistry supportedServiceNames];
            v20 = [(IMDChat *)v11 serviceName];
            v21 = [v19 containsObject:v20];

            if (v21)
            {
              [v28 addObject:v11];
              goto LABEL_19;
            }
          }

          else
          {
          }

          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = [(IMDChat *)v11 serviceName];
              *buf = 138412546;
              v36 = v23;
              v37 = 2112;
              v38 = v11;
              _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Tried to load chat for unsupported service (%@): %@", buf, 0x16u);
            }
          }
        }

LABEL_19:
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (!v6)
      {

        if (v7)
        {
          IMGreenTeaMessageReadLog();
        }

        goto LABEL_27;
      }
    }
  }

  v24 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "No incoming chat records.", buf, 2u);
  }

  v28 = MEMORY[0x277CBEBF8];
LABEL_27:

  v25 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)chatWithGUID:(id)a3
{
  v4 = IMDChatRecordCopyChatForGUID();
  v5 = [(IMDChatStore *)self _incomingChatWithChatRecord:v4];

  return v5;
}

- (id)chatsFilteredUsingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(IMDChatStore *)self database];
  v6 = [v5 chatRecordsFilteredByPredicate:v4];

  v7 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v6];

  return v7;
}

- (id)chatsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_22B4D7780;
  v18 = sub_22B4D7924;
  v19 = 0;
  v10 = [(IMDChatStore *)self database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B6357FC;
  v13[3] = &unk_2787031A0;
  v13[4] = &v14;
  [v10 fetchChatRecordsFilteredUsingPredicate:v8 sortedUsingDescriptors:v9 limit:a5 completionHandler:v13];

  v11 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v15[5]];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (void)fetchUnreadChatsOlderThan:(id)a3 predicate:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277D18EB0];
  v12 = a4;
  v13 = a3;
  v14 = [v11 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22B635A7C;
  v16[3] = &unk_2787066A0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 copyAllChatsWithUnreadMessagesWithLimit:a5 beforeDate:v13 predicate:v12 completionHandler:v16];
}

- (id)chatsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IMDChatStore *)self database];
  v6 = [v5 chatRecordsWithIdentifier:v4];

  v7 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v6];

  return v7;
}

- (id)chatsWithIdentifier:(id)a3 onService:(id)a4
{
  v6 = a3;
  v7 = [a4 internalName];
  v8 = [(IMDChatStore *)self chatsWithIdentifier:v6 onServiceNamed:v7];

  return v8;
}

- (id)chatsWithIdentifier:(id)a3 onServiceNamed:(id)a4
{
  v5 = IMDChatRecordCopyChatsWithIdentifierOnService();
  v6 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v5];

  return v6;
}

- (id)chatsWithPinningIdentifier:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_22B4D7780;
  v13 = sub_22B4D7924;
  v14 = 0;
  v5 = [(IMDChatStore *)self database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B635E3C;
  v8[3] = &unk_2787031A0;
  v8[4] = &v9;
  [v5 fetchChatRecordsWithPinningIdentifier:v4 completionHandler:v8];

  v6 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v10[5]];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)chatsWithGroupID:(id)a3
{
  v4 = IMDChatRecordCopyChatsWithGroupID();
  v5 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v4];

  return v5;
}

- (id)chatsWithHandle:(id)a3 onService:(id)a4
{
  v5 = IMDChatRecordCopyChatsWithHandleOnService();
  v6 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v5];

  return v6;
}

- (id)chatsWithGroupedHandles:(id)a3 displayName:(id)a4 style:(unsigned __int8)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_22B4D7780;
  v18 = sub_22B4D7924;
  v19 = 0;
  v10 = [(IMDChatStore *)self database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B636218;
  v13[3] = &unk_278705FF0;
  v13[4] = &v14;
  [v10 copyChatsWithGroupedHandles:v8 style:v5 displayName:v9 completionHandler:v13];

  v11 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v15[5]];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)chatsWithRoomname:(id)a3 onService:(id)a4
{
  v5 = IMDChatRecordCopyChatsWithRoomnameOnService();
  v6 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v5];

  return v6;
}

- (id)copyDuplicateGroupChatsWithLimit:(int64_t)a3
{
  v5 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v6 = [v5 copyDuplicateGroupChatRecordsWithLimit:a3];

  v7 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v6];

  return v7;
}

- (id)newestChatWithOriginalGroupID:(id)a3 onService:(id)a4
{
  v5 = IMDChatRecordCopyNewestChatForGroupIDOnService();
  v6 = [(IMDChatStore *)self _incomingChatWithChatRecord:v5];

  return v6;
}

- (id)newestChatWithGroupID:(id)a3 onService:(id)a4
{
  v4 = IMDChatRecordCopyNewestChatForGroupIDOnService();
  v5 = v4;
  if (v4)
  {
    v6 = sub_22B4DAEE8(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)chatsFromSortedIdentifiers:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_22B4D7780;
  v22 = sub_22B4D7924;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7780;
  v16 = sub_22B4D7924;
  v17 = 0;
  v5 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B63673C;
  v11[3] = &unk_278706A20;
  v11[4] = &v12;
  v11[5] = &v18;
  [v5 copyChatsFromSortedIdentifiers:v4 completionHandler:v11];

  if (v13[5] && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v13[5];
      *buf = 138412546;
      v25 = v4;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error copying chats from sorted identifiers %@: %@", buf, 0x16u);
    }
  }

  v8 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v19[5]];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)enumerateBatchedChatsFilteredUsingPredicate:(id)a3 batchSize:(unint64_t)a4 block:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v26 = 0;
    v10 = objc_alloc_init(MEMORY[0x277D18EA8]);
    [v10 setBatchSize:a4];
    v21 = v8;
    [v10 setPredicate:v8];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v18 = [(IMDChatStore *)self _incomingChatWithChatRecord:v16];
        v9[2](v9, v18, &v26);
        v19 = v26;

        objc_autoreleasePoolPop(v17);
        if (v19)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v8 = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)chatsGUIDsForMessageWithGUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = IMDMessageRecordCopyMessageForGUID();
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = IMDMessageRecordCopyChats();
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = IMDChatRecordCopyGUID();
            if (v12)
            {
              [v5 addObject:{v12, v17}];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v8);
      }

      if (![v5 count])
      {
        v13 = IMDatabaseMessageEventLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v22 = v4;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Couldn't find chat for message guid: %@", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v4;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Couldn't find message for guid: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Lookup failed, NIL or empty message GUID.", buf, 2u);
    }

    v5 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)chatsGUIDsForMessageWithIdentifier:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = IMDMessageRecordCopyChatsForMessageIdentifier();
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = IMDChatRecordCopyGUID();
        if (v10)
        {
          [v4 addObject:{v10, v14}];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  if (![v4 count] && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = a3;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Couldn't find chat for message identifier: %lld", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addMessageWithGUID:(id)a3 toChat:(id)a4 reason:(int64_t)a5 skipIndexing:(BOOL)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v11 service];
  v13 = [v12 supportsDatabase];

  if (v13)
  {
    if (v10 && [v10 length])
    {
      v14 = [v11 guid];
      v15 = v14;
      if (v14 && [v14 length])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v19 = 138412546;
            v20 = v10;
            v21 = 2112;
            v22 = v11;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Associating message guid: %@ to chat: %@", &v19, 0x16u);
          }
        }

        IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded();
        if (!a6 && ![(IMDChatStore *)self _shouldSkipIndexingForReason:a5])
        {
          [(IMDChatStore *)self _performOrScheduleSpotlightIndexingOfAddedMessageWithGUID:v10 chat:v11 reason:a5];
        }

        IMDSMSRecordStoreSave();
      }

      else
      {
        v17 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Association failed, NIL or empty chat GUID.", &v19, 2u);
        }
      }
    }

    else
    {
      v15 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Association failed, NIL or empty message GUID.", &v19, 2u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldDeferIndexingForReason:(int64_t)a3
{
  v4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v5 = [v4 isBGSTMessageProcessingEnabled];

  if (a3 == 1012)
  {
    if (v5)
    {

      return MEMORY[0x2821F9670](IMDMessageFromStorageController, sel_anyStorageControllerIsAwaitingStorageTimer);
    }

    else
    {
      return 1;
    }
  }

  else if (v5)
  {
    return IMCoreSpotlightIndexReasonIsCritical() ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldSkipIndexingForReason:(int64_t)a3
{
  if (a3 != 1001)
  {
    return 0;
  }

  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isBGSTMessageProcessingEnabled];

  return v4;
}

- (void)_performOrScheduleSpotlightIndexingOfAddedMessageWithGUID:(id)a3 chat:(id)a4 reason:(int64_t)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (![v9 isDeletingIncomingMessages])
  {
    v12 = +[IMDMessageStore sharedInstance];
    v10 = [v12 messageWithGUID:v8];

    v11 = [MEMORY[0x277D18EB8] contextWithReason:a5];
    if ([(IMDChatStore *)self _shouldCheckPriorityForChat:v9]&& ([v10 messageContainsOneTimeCode]& 1) == 0)
    {
      [v11 setNeedsPriorityCheck:1];
    }

    if ([(IMDChatStore *)self _shouldDeferIndexingForReason:a5])
    {
      v13 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v14 = [v13 isBGSTMessageProcessingEnabled];

      if (v14)
      {
        v15 = [MEMORY[0x277D18EE0] pTaskQueryProvider];
        v16 = [objc_alloc(MEMORY[0x277D18EF0]) initWithGUIDForSpotlight:v8 flag:1 context:v11];
        v37 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [v15 storeTasks:v17];
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277D18EC8]) initWithGUID:v8];
        [v27 setTaskFlag:1];
        [(IMDMessagePTaskStore *)self->_messagePTaskStore storePTask:v27];
      }

      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v8;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Deferring indexing of %@", buf, 0xCu);
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [v10 syndicationRanges];
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        while (2)
        {
          v22 = 0;
          do
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            if ([*(*(&v31 + 1) + 8 * v22) syndicationStatus] == 2)
            {
              v25 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v10 guid];
                *buf = 138412290;
                v39 = v26;
                _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "Not indexing message %@, contains syndication range with not donated status", buf, 0xCu);
              }

              goto LABEL_25;
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v23 = [MEMORY[0x277D18EC0] queryProvider];
      v35 = v8;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_22B637520;
      v29[3] = &unk_278703C58;
      v30 = v8;
      [v23 addMessageGUIDs:v24 context:v11 completionHandler:v29];

      v18 = v30;
    }

LABEL_25:

    goto LABEL_26;
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 guid];
    *buf = 138412546;
    v39 = v8;
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Not indexing %@, chat %@ has automatic deletion of incoming messages enabled", buf, 0x16u);
LABEL_26:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)removeMessageWithGUID:(id)a3 fromChat:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 service];
  v8 = [v7 supportsDatabase];

  if (v8)
  {
    if (v5 && [v5 length])
    {
      v9 = [v6 guid];
      v10 = v9;
      if (v9 && [v9 length])
      {
        IMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded();
        IMDSMSRecordStoreSave();
      }

      else
      {
        v11 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Disassociation failed, NIL or empty chat GUID.", v12, 2u);
        }
      }
    }

    else
    {
      v10 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Disassociation failed, NIL or empty message GUID.", buf, 2u);
      }
    }
  }
}

- (void)remapMessageError:(unsigned int)a3 toError:(unsigned int)a4 forChat:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v24 = a6;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = v8;
  [v8 guid];
  cf = IMDChatRecordCopyChatForGUID();
  v10 = IMDChatRecordCopyMessagesWithLimit();
  v11 = v10;
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v14 = 0;
      *&v13 = 138412290;
      v22 = v13;
      do
      {
        CFArrayGetValueAtIndex(v11, v14);
        v15 = IMDMessageRecordCopyGUIDForMessage();
        v16 = +[IMDMessageStore sharedInstance];
        v17 = [v16 messageWithGUID:v15];

        if (v15 && [v17 errorCode] == a3)
        {
          [v9 addObject:v15];
        }

        else
        {
          v18 = IMLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v28 = v25;
            _os_log_error_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_ERROR, "No message guid found for chat: %@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (Count != v14);
    }
  }

  v19 = [v25 guid];
  v26 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

  IMDChatRemapMessagesWithErrorCodeToErrorCode();
  if (v24)
  {
    v24[2](v24, v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)deleteChat:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4;
    [v3 guid];
    IMDChatRecordDeleteChatForGUID();
    v6 = +[IMDMessageStore sharedInstance];
    v7 = [v6 unreadCountController];
    v8 = [v3 guid];
    v19[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v7 chatsDeletedWithGUIDs:v9];

    v10 = +[IMDMessageStore sharedInstance];
    v11 = [v3 guid];
    [v10 updateStampForGUID:v11];

    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v15 = 134218242;
      v16 = v13 - v5;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Deleted chat in %f seconds (%@) ", &v15, 0x16u);
    }
  }

  else
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D724C(v12);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setChatIsFiltered:(int64_t)a3 withChatGuid:(id)a4
{
  v4 = a4;
  v5 = v4;
  if (v4 && [v4 length])
  {
    IMDChatRecordSetIsFiltered();
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Setting chat isFiltered failed, nil chat guid", v7, 2u);
    }
  }
}

- (BOOL)updatePersonCentricIDForHandlesInChatWithMessage:(id)a3 fromIdentifier:(id)a4 personCentricID:(id)a5 chat:(id)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (IMSharedHelperPersistMergeID())
  {
    v44 = v11;
    v43 = [v9 _stripFZIDPrefix];

    if ([v48 isTypingMessage])
    {
      v12 = 0;
    }

    else
    {
      v9 = v43;
      if ([v43 isEqualToIgnoringCase:*MEMORY[0x277D19478]])
      {
        v12 = 0;
        goto LABEL_12;
      }

      v16 = [v43 _stripFZIDPrefix];
      v17 = [(IMDChatStore *)self _chatRegistry];
      v18 = [v11 chatIdentifier];
      v19 = [v17 allExistingChatsWithIdentifier:v18 style:{objc_msgSend(v44, "style")}];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v19;
      v42 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v42)
      {
        v12 = 0;
        v41 = *v59;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v59 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v58 + 1) + 8 * i);
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v46 = v20;
            v49 = [v20 participants];
            v21 = [v49 countByEnumeratingWithState:&v54 objects:v69 count:16];
            if (v21)
            {
              v22 = *v55;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v55 != v22)
                  {
                    objc_enumerationMutation(v49);
                  }

                  v24 = *(*(&v54 + 1) + 8 * j);
                  v25 = [v24 ID];
                  v26 = [v25 isEqualToString:v16];

                  if (v26)
                  {
                    v27 = [v24 personCentricID];
                    v28 = [v27 isEqualToString:v10];

                    if ((v28 & 1) == 0)
                    {
                      if (IMOSLoggingEnabled())
                      {
                        v29 = OSLogHandleForIMFoundationCategory();
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                        {
                          v30 = [v24 ID];
                          v31 = [v24 personCentricID];
                          *buf = 138412802;
                          v64 = v30;
                          v65 = 2112;
                          v66 = v31;
                          v67 = 2112;
                          v68 = v10;
                          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Updating handle(%@) from:%@ to:%@", buf, 0x20u);
                        }
                      }

                      v32 = +[IMDChatRegistry sharedInstance];
                      v33 = [v24 ID];
                      v34 = [v32 allHandlesForID:v33];

                      v52 = 0u;
                      v53 = 0u;
                      v50 = 0u;
                      v51 = 0u;
                      v35 = v34;
                      v36 = [v35 countByEnumeratingWithState:&v50 objects:v62 count:16];
                      if (v36)
                      {
                        v37 = *v51;
                        do
                        {
                          for (k = 0; k != v36; ++k)
                          {
                            if (*v51 != v37)
                            {
                              objc_enumerationMutation(v35);
                            }

                            [*(*(&v50 + 1) + 8 * k) setPersonCentricID:v10];
                          }

                          v36 = [v35 countByEnumeratingWithState:&v50 objects:v62 count:16];
                        }

                        while (v36);
                      }

                      [v24 setPersonCentricID:v10];
                      v39 = [v46 serviceName];
                      [(IMDChatStore *)self updateHandle:v24 sourceMessage:v48 personCentricID:v10 onService:v39];

                      v12 = 1;
                    }
                  }
                }

                v21 = [v49 countByEnumeratingWithState:&v54 objects:v69 count:16];
              }

              while (v21);
            }
          }

          v42 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v42);
      }

      else
      {
        v12 = 0;
      }
    }

    v9 = v43;
LABEL_12:
    v11 = v44;
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Not persisting merge id due to override", buf, 2u);
    }
  }

  v12 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (BOOL)updateHandle:(id)a3 sourceMessage:(id)a4 personCentricID:(id)a5 onService:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v9 ID];
  v13 = IMDHandleRecordCopyHandleForIDOnService();
  if (v13)
  {
    v14 = v13;
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Writing to DB", buf, 2u);
      }
    }

    [v9 ID];
    [v9 countryCode];
    [v9 unformattedID];
    IMDHandleRecordBulkUpdate();
    v16 = +[IMDChatRegistry sharedInstance];
    [v16 invalidatePersonCentricGroupedChatsCache];

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Done", v19, 2u);
      }
    }

    CFRelease(v14);
  }

  return 1;
}

- (void)_broadcastToForceReloadChats
{
  v2 = +[IMDChatRegistry sharedInstance];
  [v2 _forceReloadChats:1];
}

- (BOOL)_shouldCheckPriorityForChat:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D1A9C8] isTimeSensitiveCustomModelAvailable] && objc_msgSend(MEMORY[0x277D1AB08], "isFilterUnknownSendersEnabled") && objc_msgSend(MEMORY[0x277D1AB08], "timeSensitivePriorityEnabled") && (v4 = objc_msgSend(v3, "isFiltered"), (v4 & 0xE) != 2) && ((v5 = v4, v6 = objc_msgSend(MEMORY[0x277D1AB08], "personalPriorityEnabled"), v7 = objc_msgSend(MEMORY[0x277D1AB08], "transactionsPriorityEnabled"), v8 = v7 ^ 1, ((v6 ^ 1) & 1) != 0) || v8))
  {
    v11 = v5 & 0xF;
    if (v11 == 4)
    {
      v12 = v7;
    }

    else
    {
      v12 = 1;
    }

    if ((v6 ^ 1 | v12))
    {
      if (v11 == 1)
      {
        v13 = v6;
      }

      else
      {
        v13 = 1;
      }

      v14 = v8 | v13;
      v16 = v11 == 4 || v11 == 1;
      if ((v6 | v7))
      {
        v16 = 0;
      }

      v9 = (v14 & 1) == 0 || v16;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)a3 error:(id *)a4
{
  v4 = self;
  IMDChatStore.batchOfRecordIDsToDelete(limit:)();

  sub_22B71EEC0();
  sub_22B71EF0C();
  v5 = sub_22B7DB568();

  return v5;
}

- (void)clearTombstonesForRecordIDs:(id)a3
{
  sub_22B71EEC0();
  v4 = sub_22B7DB918();
  v5 = self;
  _sSo12IMDChatStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);
}

@end