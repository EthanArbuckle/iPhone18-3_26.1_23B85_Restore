@interface IMDChatStore
+ (IMDChatStore)sharedInstance;
- (BOOL)_hasCancellableScheduledMessageForChat:(id)chat;
- (BOOL)_shouldCheckPriorityForChat:(id)chat;
- (BOOL)_shouldDeferIndexingForReason:(int64_t)reason;
- (BOOL)_shouldMarkAllChatsAsNeedingSync;
- (BOOL)_shouldSkipIndexingForReason:(int64_t)reason;
- (BOOL)_storeChat:(id)chat updateProtectedProperties:(BOOL)properties;
- (BOOL)updateHandle:(id)handle sourceMessage:(id)message personCentricID:(id)d onService:(id)service;
- (BOOL)updatePersonCentricIDForHandlesInChatWithMessage:(id)message fromIdentifier:(id)identifier personCentricID:(id)d chat:(id)chat;
- (CKRecordZoneID)record1ZoneID;
- (CKRecordZoneID)recordZoneID;
- (IMDChatStore)init;
- (id)_fetchChatRecordsToUploadWithFilter:(unint64_t)filter limit:(unint64_t)limit;
- (id)_generateCKRecordsFromChatRecords:(id)records filter:(unint64_t)filter;
- (id)_incomingChatWithChatRecord:(id)record;
- (id)_incomingChatsWithChatRecords:(id)records loadLastMessage:(BOOL)message;
- (id)_loadChatsIncludingAllChats:(BOOL)chats;
- (id)_lockRecord;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(unint64_t)limit error:(id *)error;
- (id)chatWithGUID:(id)d;
- (id)chatsFilteredUsingPredicate:(id)predicate;
- (id)chatsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit;
- (id)chatsFromSortedIdentifiers:(id)identifiers;
- (id)chatsGUIDsForMessageWithGUID:(id)d;
- (id)chatsGUIDsForMessageWithIdentifier:(int64_t)identifier;
- (id)chatsWithGroupID:(id)d;
- (id)chatsWithGroupedHandles:(id)handles displayName:(id)name style:(unsigned __int8)style;
- (id)chatsWithHandle:(id)handle onService:(id)service;
- (id)chatsWithIdentifier:(id)identifier;
- (id)chatsWithIdentifier:(id)identifier onService:(id)service;
- (id)chatsWithIdentifier:(id)identifier onServiceNamed:(id)named;
- (id)chatsWithPinningIdentifier:(id)identifier;
- (id)chatsWithRoomname:(id)roomname onService:(id)service;
- (id)copyDuplicateGroupChatsWithLimit:(int64_t)limit;
- (id)newestChatWithGroupID:(id)d onService:(id)service;
- (id)newestChatWithOriginalGroupID:(id)d onService:(id)service;
- (id)serviceNamesForFilter:(unint64_t)filter;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)syncTokenStore;
- (id)zoneIDForService:(id)service;
- (unint64_t)_maxFetchChatAttempts;
- (unint64_t)unreadCountForChat:(id)chat;
- (void)_addGroupPhotoToTransferCenterForChat:(id)chat;
- (void)_broadcastToForceReloadChats;
- (void)_hasMarkedAllChatsAsNeedingSync;
- (void)_markAllChatsAsNeedingSync;
- (void)_performOrScheduleSpotlightIndexingOfAddedMessageWithGUID:(id)d chat:(id)chat reason:(int64_t)reason;
- (void)_processIncomingChat:(id)chat;
- (void)_updateHasCancellableScheduledMessageForChat:(id)chat;
- (void)_updateModificationDate;
- (void)addMessageWithGUID:(id)d toChat:(id)chat reason:(int64_t)reason skipIndexing:(BOOL)indexing;
- (void)blackholeChat:(id)chat;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)clearTombstonesForRecordIDs:(id)ds;
- (void)createSMSVariantsIfNeededFor:(id)for;
- (void)deleteChat:(id)chat;
- (void)enumerateBatchedChatsFilteredUsingPredicate:(id)predicate batchSize:(unint64_t)size block:(id)block;
- (void)fetchUnreadChatsOlderThan:(id)than predicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
- (void)remapMessageError:(unsigned int)error toError:(unsigned int)toError forChat:(id)chat completion:(id)completion;
- (void)removeMessageWithGUID:(id)d fromChat:(id)chat;
- (void)resetLocalSyncStateIfAppropriate;
- (void)setChatIsFiltered:(int64_t)filtered withChatGuid:(id)guid;
- (void)unblackholeChat:(id)chat;
@end

@implementation IMDChatStore

- (void)_updateModificationDate
{
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  [(IMDChatStore *)self setModificationStamp:stringGUID];
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
  chatRecordZoneID = [v2 chatRecordZoneID];

  return chatRecordZoneID;
}

- (CKRecordZoneID)record1ZoneID
{
  v2 = +[IMDRecordZoneManager sharedInstance];
  chat1RecordZoneID = [v2 chat1RecordZoneID];

  return chat1RecordZoneID;
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

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v24 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v23 = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local chat sync state, flags 0x%x", buf, 8u);
    }
  }

  if (stateCopy)
  {
    v6 = +[IMDCKUtilities sharedInstance];
    syncState = [v6 syncState];
    [syncState setLastSyncDate:0];

    syncTokenStore = [(IMDChatStore *)self syncTokenStore];
    [syncTokenStore persistToken:0 forKey:@"changeToken"];

    syncTokenStore2 = [(IMDChatStore *)self syncTokenStore];
    [syncTokenStore2 persistToken:0 forKey:@"chat1changeToken"];
  }

  if ((stateCopy & 2) != 0)
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
    chats = [v11 chats];

    v13 = [chats countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(chats);
          }

          [*(*(&v17 + 1) + 8 * v15++) resetCKSyncState];
        }

        while (v13 != v15);
        v13 = [chats countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDChatStore *)self _markAllChatsAsNeedingSync];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_markAllChatsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];
}

- (BOOL)_shouldMarkAllChatsAsNeedingSync
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]] ^ 1;
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
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];
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
    chatRecordZoneID = [v4 chatRecordZoneID];

    v6 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"chatLockRecordName" zoneID:chatRecordZoneID];
    v7 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"chatLockRecordType" recordID:v6];
    stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    [v7 setValue:stringGUID forKey:@"lRKey"];

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
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 100;
  }

  return unsignedIntValue;
}

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(unint64_t)limit error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  _maxFetchChatAttempts = [(IMDChatStore *)self _maxFetchChatAttempts];
  v9 = 0;
  if (_maxFetchChatAttempts <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = _maxFetchChatAttempts;
  }

  do
  {
    mEMORY[0x277D1AAA8] = [(IMDChatStore *)self _fetchChatRecordsToUploadWithFilter:filter limit:limit];
    if (![mEMORY[0x277D1AAA8] count])
    {
      goto LABEL_18;
    }

    v12 = [(IMDChatStore *)self _generateCKRecordsFromChatRecords:mEMORY[0x277D1AAA8] filter:filter];
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
        v15 = [mEMORY[0x277D1AAA8] count];
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

  if (error)
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Failed to find chats to sync; fetched chats failed to encode as CKRecord";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *error = [v17 initWithDomain:*MEMORY[0x277D19D08] code:1 userInfo:v18];

    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    v19 = *error;
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", "-[IMDChatStore(RecordStore) batchOfRecordsToWriteWithFilter:limit:error:]"];
    [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"ExceededMaxFetchChatAttempts" errorPayload:v19 type:@"MiCSync" context:v20];

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

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  v4 = +[IMDCKChatSyncController sharedInstance];
  [v4 _updateChatUsingCKRecord:recordCopy onRead:0 didSucceed:1 dispatchToMain:0];
}

- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  mEMORY[0x277D1AC70] = [MEMORY[0x277D1AC70] sharedInstance];
  v11 = [iDCopy copy];
  if (([mEMORY[0x277D1AC70] wasZoneNotFound:errorCopy] & 1) != 0 || objc_msgSend(mEMORY[0x277D1AC70], "wasUnknownItem:", errorCopy))
  {
    recordName = [dCopy recordName];
    v13 = [recordName isEqualToString:@"chatLockRecordName"];

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v30 = 138412290;
          v31 = errorCopy;
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
  v15 = [v19 extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

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

    recordID = [v15 recordID];
    recordName2 = [recordID recordName];
    v24 = [recordName2 isEqualToString:@"chatLockRecordName"];

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

  recordName3 = [dCopy recordName];
  v28 = [recordName3 isEqualToString:@"chatLockRecordName"];

  if (v28)
  {
    goto LABEL_27;
  }

LABEL_29:

  v29 = *MEMORY[0x277D85DE8];
}

- (id)serviceNamesForFilter:(unint64_t)filter
{
  v12 = *MEMORY[0x277D85DE8];
  if (filter == 2)
  {
    v4 = +[IMDServiceController sharedController];
    v5 = [v4 serviceNamesSupportingCapability:*MEMORY[0x277D1A580]];
    allObjects = [v5 allObjects];
    allObjects2 = [allObjects arrayByExcludingObjectsInArray:*MEMORY[0x277D1A5F0]];
  }

  else
  {
    if (filter == 1)
    {
      allObjects2 = *MEMORY[0x277D1A5F0];
      goto LABEL_7;
    }

    v4 = +[IMDServiceController sharedController];
    v5 = [v4 serviceNamesSupportingCapability:*MEMORY[0x277D1A580]];
    allObjects2 = [v5 allObjects];
  }

LABEL_7:
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = allObjects2;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Predicate filtering for services %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return allObjects2;
}

- (id)_fetchChatRecordsToUploadWithFilter:(unint64_t)filter limit:(unint64_t)limit
{
  v27[5] = *MEMORY[0x277D85DE8];
  v6 = [(IMDChatStore *)self serviceNamesForFilter:filter];
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
  database = [(IMDChatStore *)self database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B582C34;
  v20[3] = &unk_2787031A0;
  v20[4] = &v21;
  [database fetchChatRecordsFilteredUsingPredicate:v15 sortedUsingDescriptors:MEMORY[0x277CBEBF8] limit:limit completionHandler:v20];

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)createSMSVariantsIfNeededFor:(id)for
{
  v78 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v3 = +[IMDAccountController sharedAccountController];
  v52 = [v3 anySessionForServiceName:*MEMORY[0x277D1A610]];

  if (v52)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = forCopy;
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
            guid = [v5 guid];
            v65 = 0;
            v66 = 0;
            IMComponentsFromChatGUID();
            v7 = v66;
            v8 = v65;

            v9 = [(IMDChatStore *)self chatsWithIdentifier:v7 onServiceNamed:*MEMORY[0x277D1A610]];
            firstObject = [v9 firstObject];
          }

          else
          {
            groupID = [v5 groupID];
            v12 = [(IMDChatStore *)self chatsWithGroupID:groupID];

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
                service = [v5 service];
                internalName = [service internalName];
                v19 = [internalName isEqualToString:*MEMORY[0x277D1A610]];

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

              firstObject = v16;

              if (firstObject)
              {
                goto LABEL_32;
              }
            }

            else
            {
LABEL_17:
            }

            groupID2 = [v5 groupID];
            originalGroupID = [v5 originalGroupID];
            v22 = [groupID2 isEqualToString:originalGroupID];

            if (v22)
            {
              firstObject = 0;
            }

            else
            {
              originalGroupID2 = [v5 originalGroupID];
              v24 = [(IMDChatStore *)self chatsWithGroupID:originalGroupID2];

              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v7 = v24;
              firstObject = [v7 countByEnumeratingWithState:&v57 objects:v75 count:16];
              if (firstObject)
              {
                v25 = *v58;
                while (2)
                {
                  for (j = 0; j != firstObject; j = j + 1)
                  {
                    if (*v58 != v25)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v27 = *(*(&v57 + 1) + 8 * j);
                    service2 = [v5 service];
                    internalName2 = [service2 internalName];
                    v30 = [internalName2 isEqualToString:*MEMORY[0x277D1A610]];

                    if (v30)
                    {
                      firstObject = v27;
                      goto LABEL_31;
                    }
                  }

                  firstObject = [v7 countByEnumeratingWithState:&v57 objects:v75 count:16];
                  if (firstObject)
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

          if (firstObject || ([v5 isChatBot] & 1) != 0)
          {
            if (IMOSLoggingEnabled())
            {
              v31 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                guid2 = [v5 guid];
                guid3 = [firstObject guid];
                isChatBot = [v5 isChatBot];
                *buf = 138412802;
                v35 = @"NO";
                if (isChatBot)
                {
                  v35 = @"YES";
                }

                v72 = guid2;
                v73 = 2112;
                *v74 = guid3;
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
                guid4 = [v5 guid];
                style = [v5 style];
                groupID3 = [v5 groupID];
                originalGroupID3 = [v5 originalGroupID];
                *buf = 138413058;
                v72 = guid4;
                v73 = 1024;
                *v74 = style;
                *&v74[4] = 2112;
                *&v74[6] = groupID3;
                *&v74[14] = 2112;
                *&v74[16] = originalGroupID3;
                _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Could not find SMS fallback chat for %@/style %c groupID %@ origGroupID %@, creating", buf, 0x26u);
              }
            }

            v41 = [v52 createHandleInfoFor:v5];
            spamCategory = [v5 spamCategory];
            spamExtensionName = [v5 spamExtensionName];
            chatIdentifier = [v5 chatIdentifier];
            style2 = [v5 style];
            displayName = [v5 displayName];
            groupID4 = [v5 groupID];
            originalGroupID4 = [v5 originalGroupID];
            [v52 didJoinChat:chatIdentifier style:style2 displayName:displayName groupID:groupID4 originalGroupID:originalGroupID4 handleInfo:v41 category:spamCategory spamExtensionName:spamExtensionName];
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

- (id)zoneIDForService:(id)service
{
  v3 = [*MEMORY[0x277D1A5F0] indexOfObject:service];
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

- (id)_generateCKRecordsFromChatRecords:(id)records filter:(unint64_t)filter
{
  v74 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  theDict = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = recordsCopy;
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
            mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
            [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"ChatToSyncHasSyncedState" errorPayload:0 type:@"MiCSync" context:@"Chat fetched for writing up already has synced state"];
          }

          else
          {
            [v43 addObject:v52];
            serviceName = [(IMDChat *)v52 serviceName];
            v46 = [(IMDChatStore *)self zoneIDForService:serviceName];

            array = [MEMORY[0x277CBEB18] array];
            mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
            LODWORD(serviceName) = [mEMORY[0x277D1A9B8] isOneChatEnabled];

            if (serviceName)
            {
              v59 = 0;
              v14 = [(IMDChat *)v52 copyCKRecordRepresentationsWithZoneID:v46 salt:0 error:&v59];
              mEMORY[0x277D1AAA8] = v59;
              [array addObjectsFromArray:v14];
            }

            else
            {
              stringGUID = [MEMORY[0x277CCACA8] stringGUID];
              v58 = 0;
              v14 = [(IMDChat *)v52 copyCKRecordRepresentationWithZoneID:v46 salt:stringGUID error:&v58];
              mEMORY[0x277D1AAA8] = v58;

              if (v14)
              {
                [array addObject:v14];
              }

              else
              {
                [(IMDChat *)v52 setCloudKitSyncState:2];
                [(IMDChatStore *)self storeChat:v52];
                v16 = IMLogHandleForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  guid = [(IMDChat *)v52 guid];
                  *buf = 138412802;
                  v68 = guid;
                  v69 = 2112;
                  v70 = mEMORY[0x277D1AAA8];
                  v71 = 1024;
                  LODWORD(v72) = 2;
                  _os_log_error_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_ERROR, "Failed to generate CKRecord for chat %@, error %@, marking ck_sync_state as %d", buf, 0x1Cu);
                }

                mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
                [mEMORY[0x277D1AAA8]2 forceAutoBugCaptureWithSubType:@"NullCKRecordForIMDChat" errorPayload:mEMORY[0x277D1AAA8] type:@"MiCSync" context:@"Failed to generate CKRecord for Chat"];
              }
            }

            if (mEMORY[0x277D1AAA8] || ![array count])
            {
              [(IMDChat *)v52 setCloudKitSyncState:2];
              [(IMDChatStore *)self storeChat:v52];
              v18 = IMLogHandleForCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                guid2 = [(IMDChat *)v52 guid];
                *buf = 138412802;
                v68 = guid2;
                v69 = 2112;
                v70 = mEMORY[0x277D1AAA8];
                v71 = 1024;
                LODWORD(v72) = 2;
                _os_log_error_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_ERROR, "Failed to generate CKRecord for chat %@, error %@, marking ck_sync_state as %d", buf, 0x1Cu);
              }

              mEMORY[0x277D1AAA8]3 = [MEMORY[0x277D1AAA8] sharedInstance];
              [mEMORY[0x277D1AAA8]3 forceAutoBugCaptureWithSubType:@"NullCKRecordForIMDChat" errorPayload:mEMORY[0x277D1AAA8] type:@"MiCSync" context:@"Failed to generate CKRecord for Chat"];
            }

            else
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              mEMORY[0x277D1AAA8]3 = array;
              v20 = [mEMORY[0x277D1AAA8]3 countByEnumeratingWithState:&v54 objects:v64 count:16];
              if (v20)
              {
                v21 = *v55;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v55 != v21)
                    {
                      objc_enumerationMutation(mEMORY[0x277D1AAA8]3);
                    }

                    v23 = *(*(&v54 + 1) + 8 * i);
                    recordID = [v23 recordID];
                    recordName = [recordID recordName];
                    v26 = [v5 containsObject:recordName];

                    if ((v26 & 1) == 0)
                    {
                      v27 = [v23 stringForKey:@"guid"];
                      if (v27)
                      {
                        if (v23)
                        {
                          CFDictionarySetValue(theDict, v27, v23);
                        }

                        recordID2 = [v23 recordID];
                        recordName2 = [recordID2 recordName];
                        [v5 addObject:recordName2];
                      }
                    }
                  }

                  v20 = [mEMORY[0x277D1AAA8]3 countByEnumeratingWithState:&v54 objects:v64 count:16];
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
            guid3 = [v8 guid];
            chatIdentifier = [v8 chatIdentifier];
            *buf = 138412802;
            v68 = guid3;
            v69 = 2112;
            v70 = chatIdentifier;
            v71 = 2112;
            v72 = v8;
            _os_log_error_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_ERROR, "Failed to create IMDChat for guid %@ chatIdentifier %@ ChatRecord %@", buf, 0x20u);
          }

          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"NullIMDChatForChatRecordRef" errorPayload:0 type:@"MiCSync" context:@"Failed to generate IMDChat for IMDChatRecordRef"];
        }

        v6 = v50 + 1;
      }

      while (v50 + 1 != v48);
      v34 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
      v48 = v34;
    }

    while (v34);
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8]2 isOneChatEnabled];

  if (filter == 2)
  {
    v37 = isOneChatEnabled;
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
    stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    [(IMDChatStore *)v2 setModificationStamp:stringGUID];

    v4 = objc_alloc_init(IMDMessagePTaskXPCStore);
    messagePTaskStore = v2->_messagePTaskStore;
    v2->_messagePTaskStore = v4;

    v6 = objc_alloc(MEMORY[0x277D1AC68]);
    v7 = [v6 initWithObject:v2 title:@"IMDChatStore-Schema" queue:MEMORY[0x277D85CD0]];
    [(IMDChatStore *)v2 setStateCaptureAssistant:v7];
  }

  return v2;
}

- (void)blackholeChat:(id)chat
{
  v10 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Blackholing chat: %@", &v8, 0xCu);
    }

    [chatCopy guid];
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
        v9 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "No chat record found to archive for chat: %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unblackholeChat:(id)chat
{
  v10 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Unblackholing chat: %@", &v8, 0xCu);
    }

    [chatCopy guid];
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
        v9 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "No chat record found to unarchive for chat: %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addGroupPhotoToTransferCenterForChat:(id)chat
{
  v13 = *MEMORY[0x277D85DE8];
  groupPhotoGuid = [chat groupPhotoGuid];
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:groupPhotoGuid];

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

  if ([groupPhotoGuid length])
  {
    v7 = +[IMDAttachmentStore sharedInstance];
    v6 = [v7 attachmentWithGUID:groupPhotoGuid];

    v8 = IMDatabaseLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        v11 = 138412290;
        v12 = groupPhotoGuid;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Adding group photo to IMDFileTransferCenter for guid: %@.", &v11, 0xCu);
      }

      v8 = +[IMDFileTransferCenter sharedInstance];
      [v8 addTransfer:v6 forGUID:groupPhotoGuid];
    }

    else if (v9)
    {
      v11 = 138412290;
      v12 = groupPhotoGuid;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Group file transfer is nil for guid: %@. Not adding anything to file transfers.", &v11, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasCancellableScheduledMessageForChat:(id)chat
{
  v37 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v4 = +[IMDMessageStore sharedInstance];
  v25 = chatCopy;
  guid = [chatCopy guid];
  v24 = v4;
  v6 = [v4 scheduledMessagesBatchFetcherForChat:guid];

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
          chatIdentifier = [v25 chatIdentifier];
          *buf = 138412546;
          v33 = v13;
          v34 = 2112;
          v35 = chatIdentifier;
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
        mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
        [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"Database read a failed scheduled message with an invalid scheduleState" errorPayload:v17 type:@"ScheduledMessageFailureStateNotSet" context:0];

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
    chatIdentifier2 = [v25 chatIdentifier];
    *buf = 138412290;
    v33 = chatIdentifier2;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "No scheduled message found for chatIdentifier: %@", buf, 0xCu);
  }

  v21 = 0;
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_updateHasCancellableScheduledMessageForChat:(id)chat
{
  v12 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v5 = [(IMDChatStore *)self _hasCancellableScheduledMessageForChat:chatCopy];
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    guid = [chatCopy guid];
    v9[0] = 67109378;
    v9[1] = v5;
    v10 = 2112;
    v11 = guid;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Calculated hasCancellableScheduledMessage: %{BOOL}d for chat: %@", v9, 0x12u);
  }

  [chatCopy updateHasCancellableScheduledMessage:v5];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processIncomingChat:(id)chat
{
  chatCopy = chat;
  service = [chatCopy service];
  if (([service chatsIgnoreLoginStatus] & 1) == 0 && objc_msgSend(chatCopy, "style") != 45)
  {
    [chatCopy setState:0];
  }

  if ([chatCopy style] == 43)
  {
    displayName = [chatCopy displayName];
    if ([displayName length])
    {
      displayName2 = [chatCopy displayName];
      trimmedString = [displayName2 trimmedString];
      v8 = [trimmedString length];

      if (!v8)
      {
        [chatCopy setDisplayName:0];
      }
    }

    else
    {
    }
  }

  lastMessage = [chatCopy lastMessage];
  if (lastMessage)
  {
    v10 = +[IMDMessageStore sharedInstance];
    [v10 registerTransfersForMessage:lastMessage];
  }

  [(IMDChatStore *)self _updateHasCancellableScheduledMessageForChat:chatCopy];
  [chatCopy recoverParticipantsIfNeeded];
  [(IMDChatStore *)self _addGroupPhotoToTransferCenterForChat:chatCopy];
  [chatCopy _repairUnregisteredChatIfNeeded];
}

- (id)_loadChatsIncludingAllChats:(BOOL)chats
{
  chatsCopy = chats;
  v52 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_22B4D7780;
  v43 = sub_22B4D7924;
  v44 = 0;
  v5 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v5 startTimingForKey:@"loadAllChatsForChatStore"];
  selfCopy = self;
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
  if (chatsCopy)
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
  v28[4] = selfCopy;
  v28[5] = &v35;
  v28[6] = &v39;
  [v7 enumerateObjectsUsingBlock:{v28, selfCopy}];
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
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];
    *buf = 134218496;
    v46 = v20;
    v47 = 2048;
    v48 = v21;
    v49 = 1024;
    v50 = isOneChatEnabled;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Loading all chats took %f seconds for %lu chats (OneChat status: %{BOOL}d)", buf, 0x1Cu);
  }

  v24 = v40[5];
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v39, 8);
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)_storeChat:(id)chat updateProtectedProperties:(BOOL)properties
{
  propertiesCopy = properties;
  chatCopy = chat;
  if (chatCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = sub_22B4DB7D4(chatCopy, propertiesCopy);
    if (v8)
    {
      v9 = v8;
      [chatCopy _setRowID:IMDChatRecordGetIdentifier()];
      CFRelease(v9);
    }

    else
    {
      [chatCopy _setRowID:-1];
    }

    objc_autoreleasePoolPop(v7);
    [(IMDChatStore *)self _updateModificationDate];
  }

  return 0;
}

- (unint64_t)unreadCountForChat:(id)chat
{
  v31[1] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  service = [chatCopy service];
  supportsDatabase = [service supportsDatabase];

  if (supportsDatabase)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_22B7D7104(chatCopy, v6);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled)
    {
      guid = [chatCopy guid];
      if ([guid length])
      {
        synchronousDatabaseQueryProvider = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
        v31[0] = guid;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22B6350C4;
        v20[3] = &unk_278705FF0;
        v20[4] = &v21;
        [synchronousDatabaseQueryProvider generateUnreadCountReportsForChatsWithGUIDs:v11 completionHandler:v20];
      }
    }

    else
    {
      if ([chatCopy rowID] == -1)
      {
        [chatCopy guid];
        v13 = IMDMessageRecordCountAllUnreadMessagesForChatGUID();
      }

      else
      {
        [chatCopy rowID];
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
        guid2 = [chatCopy guid];
        rowID = [chatCopy rowID];
        *buf = 134218498;
        v26 = v15;
        v27 = 2112;
        v28 = guid2;
        v29 = 2048;
        v30 = rowID;
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

- (id)_incomingChatWithChatRecord:(id)record
{
  v12[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = recordCopy;
  if (recordCopy)
  {
    v12[0] = recordCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v6];
    firstObject = [v7 firstObject];
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "No incoming chat record.", v11, 2u);
    }

    firstObject = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)_incomingChatsWithChatRecords:(id)records loadLastMessage:(BOOL)message
{
  messageCopy = message;
  v40 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v27 = recordsCopy;
  if ([recordsCopy count])
  {
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(recordsCopy, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = recordsCopy;
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
          if (messageCopy)
          {
            lastMessage = [(IMDChat *)v10 lastMessage];
            v13 = lastMessage == 0;

            if (v13)
            {
              v14 = +[IMDMessageStore sharedInstance];
              v15 = [v14 lastMessageForChatWithRowID:{-[IMDChat rowID](v11, "rowID")}];
              [(IMDChat *)v11 setLastMessage:v15];
            }
          }

          [(IMDChatStore *)self _processIncomingChat:v11];
          serviceName = [(IMDChat *)v11 serviceName];
          v17 = [serviceName isEqualToString:*MEMORY[0x277D1A610]];

          serviceName2 = [(IMDChat *)v11 serviceName];
          v7 |= v17;
          if ([serviceName2 length])
          {
            v19 = +[IMDChatRegistry supportedServiceNames];
            serviceName3 = [(IMDChat *)v11 serviceName];
            v21 = [v19 containsObject:serviceName3];

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
              serviceName4 = [(IMDChat *)v11 serviceName];
              *buf = 138412546;
              v36 = serviceName4;
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

- (id)chatWithGUID:(id)d
{
  v4 = IMDChatRecordCopyChatForGUID();
  v5 = [(IMDChatStore *)self _incomingChatWithChatRecord:v4];

  return v5;
}

- (id)chatsFilteredUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  database = [(IMDChatStore *)self database];
  v6 = [database chatRecordsFilteredByPredicate:predicateCopy];

  v7 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v6];

  return v7;
}

- (id)chatsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_22B4D7780;
  v18 = sub_22B4D7924;
  v19 = 0;
  database = [(IMDChatStore *)self database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B6357FC;
  v13[3] = &unk_2787031A0;
  v13[4] = &v14;
  [database fetchChatRecordsFilteredUsingPredicate:predicateCopy sortedUsingDescriptors:descriptorsCopy limit:limit completionHandler:v13];

  v11 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v15[5]];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (void)fetchUnreadChatsOlderThan:(id)than predicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = MEMORY[0x277D18EB0];
  predicateCopy = predicate;
  thanCopy = than;
  database = [v11 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22B635A7C;
  v16[3] = &unk_2787066A0;
  v16[4] = self;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [database copyAllChatsWithUnreadMessagesWithLimit:limit beforeDate:thanCopy predicate:predicateCopy completionHandler:v16];
}

- (id)chatsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  database = [(IMDChatStore *)self database];
  v6 = [database chatRecordsWithIdentifier:identifierCopy];

  v7 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v6];

  return v7;
}

- (id)chatsWithIdentifier:(id)identifier onService:(id)service
{
  identifierCopy = identifier;
  internalName = [service internalName];
  v8 = [(IMDChatStore *)self chatsWithIdentifier:identifierCopy onServiceNamed:internalName];

  return v8;
}

- (id)chatsWithIdentifier:(id)identifier onServiceNamed:(id)named
{
  v5 = IMDChatRecordCopyChatsWithIdentifierOnService();
  v6 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v5];

  return v6;
}

- (id)chatsWithPinningIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_22B4D7780;
  v13 = sub_22B4D7924;
  v14 = 0;
  database = [(IMDChatStore *)self database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B635E3C;
  v8[3] = &unk_2787031A0;
  v8[4] = &v9;
  [database fetchChatRecordsWithPinningIdentifier:identifierCopy completionHandler:v8];

  v6 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v10[5]];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)chatsWithGroupID:(id)d
{
  v4 = IMDChatRecordCopyChatsWithGroupID();
  v5 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v4];

  return v5;
}

- (id)chatsWithHandle:(id)handle onService:(id)service
{
  v5 = IMDChatRecordCopyChatsWithHandleOnService();
  v6 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v5];

  return v6;
}

- (id)chatsWithGroupedHandles:(id)handles displayName:(id)name style:(unsigned __int8)style
{
  styleCopy = style;
  handlesCopy = handles;
  nameCopy = name;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_22B4D7780;
  v18 = sub_22B4D7924;
  v19 = 0;
  database = [(IMDChatStore *)self database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B636218;
  v13[3] = &unk_278705FF0;
  v13[4] = &v14;
  [database copyChatsWithGroupedHandles:handlesCopy style:styleCopy displayName:nameCopy completionHandler:v13];

  v11 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v15[5]];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)chatsWithRoomname:(id)roomname onService:(id)service
{
  v5 = IMDChatRecordCopyChatsWithRoomnameOnService();
  v6 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v5];

  return v6;
}

- (id)copyDuplicateGroupChatsWithLimit:(int64_t)limit
{
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v6 = [synchronousDatabase copyDuplicateGroupChatRecordsWithLimit:limit];

  v7 = [(IMDChatStore *)self _incomingChatsWithChatRecords:v6];

  return v7;
}

- (id)newestChatWithOriginalGroupID:(id)d onService:(id)service
{
  v5 = IMDChatRecordCopyNewestChatForGroupIDOnService();
  v6 = [(IMDChatStore *)self _incomingChatWithChatRecord:v5];

  return v6;
}

- (id)newestChatWithGroupID:(id)d onService:(id)service
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

- (id)chatsFromSortedIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
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
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B63673C;
  v11[3] = &unk_278706A20;
  v11[4] = &v12;
  v11[5] = &v18;
  [synchronousDatabase copyChatsFromSortedIdentifiers:identifiersCopy completionHandler:v11];

  if (v13[5] && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v13[5];
      *buf = 138412546;
      v25 = identifiersCopy;
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

- (void)enumerateBatchedChatsFilteredUsingPredicate:(id)predicate batchSize:(unint64_t)size block:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  blockCopy = block;
  if (blockCopy)
  {
    v26 = 0;
    v10 = objc_alloc_init(MEMORY[0x277D18EA8]);
    [v10 setBatchSize:size];
    v21 = predicateCopy;
    [v10 setPredicate:predicateCopy];
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
        blockCopy[2](blockCopy, v18, &v26);
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

    predicateCopy = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)chatsGUIDsForMessageWithGUID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = dCopy;
  if (dCopy && [dCopy length])
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

- (id)chatsGUIDsForMessageWithIdentifier:(int64_t)identifier
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
      identifierCopy = identifier;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Couldn't find chat for message identifier: %lld", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addMessageWithGUID:(id)d toChat:(id)chat reason:(int64_t)reason skipIndexing:(BOOL)indexing
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  chatCopy = chat;
  service = [chatCopy service];
  supportsDatabase = [service supportsDatabase];

  if (supportsDatabase)
  {
    if (dCopy && [dCopy length])
    {
      guid = [chatCopy guid];
      v15 = guid;
      if (guid && [guid length])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v19 = 138412546;
            v20 = dCopy;
            v21 = 2112;
            v22 = chatCopy;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Associating message guid: %@ to chat: %@", &v19, 0x16u);
          }
        }

        IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded();
        if (!indexing && ![(IMDChatStore *)self _shouldSkipIndexingForReason:reason])
        {
          [(IMDChatStore *)self _performOrScheduleSpotlightIndexingOfAddedMessageWithGUID:dCopy chat:chatCopy reason:reason];
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

- (BOOL)_shouldDeferIndexingForReason:(int64_t)reason
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBGSTMessageProcessingEnabled = [mEMORY[0x277D1A9B8] isBGSTMessageProcessingEnabled];

  if (reason == 1012)
  {
    if (isBGSTMessageProcessingEnabled)
    {

      return MEMORY[0x2821F9670](IMDMessageFromStorageController, sel_anyStorageControllerIsAwaitingStorageTimer);
    }

    else
    {
      return 1;
    }
  }

  else if (isBGSTMessageProcessingEnabled)
  {
    return IMCoreSpotlightIndexReasonIsCritical() ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldSkipIndexingForReason:(int64_t)reason
{
  if (reason != 1001)
  {
    return 0;
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBGSTMessageProcessingEnabled = [mEMORY[0x277D1A9B8] isBGSTMessageProcessingEnabled];

  return isBGSTMessageProcessingEnabled;
}

- (void)_performOrScheduleSpotlightIndexingOfAddedMessageWithGUID:(id)d chat:(id)chat reason:(int64_t)reason
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  chatCopy = chat;
  if (![chatCopy isDeletingIncomingMessages])
  {
    v12 = +[IMDMessageStore sharedInstance];
    v10 = [v12 messageWithGUID:dCopy];

    guid2 = [MEMORY[0x277D18EB8] contextWithReason:reason];
    if ([(IMDChatStore *)self _shouldCheckPriorityForChat:chatCopy]&& ([v10 messageContainsOneTimeCode]& 1) == 0)
    {
      [guid2 setNeedsPriorityCheck:1];
    }

    if ([(IMDChatStore *)self _shouldDeferIndexingForReason:reason])
    {
      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isBGSTMessageProcessingEnabled = [mEMORY[0x277D1A9B8] isBGSTMessageProcessingEnabled];

      if (isBGSTMessageProcessingEnabled)
      {
        pTaskQueryProvider = [MEMORY[0x277D18EE0] pTaskQueryProvider];
        v16 = [objc_alloc(MEMORY[0x277D18EF0]) initWithGUIDForSpotlight:dCopy flag:1 context:guid2];
        v37 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [pTaskQueryProvider storeTasks:v17];
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277D18EC8]) initWithGUID:dCopy];
        [v27 setTaskFlag:1];
        [(IMDMessagePTaskStore *)self->_messagePTaskStore storePTask:v27];
      }

      syndicationRanges = IMDatabaseLogHandle();
      if (os_log_type_enabled(syndicationRanges, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = dCopy;
        _os_log_impl(&dword_22B4CC000, syndicationRanges, OS_LOG_TYPE_DEFAULT, "Deferring indexing of %@", buf, 0xCu);
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      syndicationRanges = [v10 syndicationRanges];
      v19 = [syndicationRanges countByEnumeratingWithState:&v31 objects:v36 count:16];
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
              objc_enumerationMutation(syndicationRanges);
            }

            if ([*(*(&v31 + 1) + 8 * v22) syndicationStatus] == 2)
            {
              v25 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                guid = [v10 guid];
                *buf = 138412290;
                v39 = guid;
                _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "Not indexing message %@, contains syndication range with not donated status", buf, 0xCu);
              }

              goto LABEL_25;
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [syndicationRanges countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      queryProvider = [MEMORY[0x277D18EC0] queryProvider];
      v35 = dCopy;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_22B637520;
      v29[3] = &unk_278703C58;
      v30 = dCopy;
      [queryProvider addMessageGUIDs:v24 context:guid2 completionHandler:v29];

      syndicationRanges = v30;
    }

LABEL_25:

    goto LABEL_26;
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    guid2 = [chatCopy guid];
    *buf = 138412546;
    v39 = dCopy;
    v40 = 2112;
    v41 = guid2;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Not indexing %@, chat %@ has automatic deletion of incoming messages enabled", buf, 0x16u);
LABEL_26:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)removeMessageWithGUID:(id)d fromChat:(id)chat
{
  dCopy = d;
  chatCopy = chat;
  service = [chatCopy service];
  supportsDatabase = [service supportsDatabase];

  if (supportsDatabase)
  {
    if (dCopy && [dCopy length])
    {
      guid = [chatCopy guid];
      v10 = guid;
      if (guid && [guid length])
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

- (void)remapMessageError:(unsigned int)error toError:(unsigned int)toError forChat:(id)chat completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  completionCopy = completion;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = chatCopy;
  [chatCopy guid];
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

        if (v15 && [v17 errorCode] == error)
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

  guid = [v25 guid];
  v26 = guid;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

  IMDChatRemapMessagesWithErrorCodeToErrorCode();
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
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

- (void)deleteChat:(id)chat
{
  v19[1] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4;
    [chatCopy guid];
    IMDChatRecordDeleteChatForGUID();
    v6 = +[IMDMessageStore sharedInstance];
    unreadCountController = [v6 unreadCountController];
    guid = [chatCopy guid];
    v19[0] = guid;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [unreadCountController chatsDeletedWithGUIDs:v9];

    v10 = +[IMDMessageStore sharedInstance];
    guid2 = [chatCopy guid];
    [v10 updateStampForGUID:guid2];

    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v15 = 134218242;
      v16 = v13 - v5;
      v17 = 2112;
      v18 = chatCopy;
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

- (void)setChatIsFiltered:(int64_t)filtered withChatGuid:(id)guid
{
  guidCopy = guid;
  v5 = guidCopy;
  if (guidCopy && [guidCopy length])
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

- (BOOL)updatePersonCentricIDForHandlesInChatWithMessage:(id)message fromIdentifier:(id)identifier personCentricID:(id)d chat:(id)chat
{
  v71 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  dCopy = d;
  chatCopy = chat;
  if (IMSharedHelperPersistMergeID())
  {
    v44 = chatCopy;
    _stripFZIDPrefix = [identifierCopy _stripFZIDPrefix];

    if ([messageCopy isTypingMessage])
    {
      v12 = 0;
    }

    else
    {
      identifierCopy = _stripFZIDPrefix;
      if ([_stripFZIDPrefix isEqualToIgnoringCase:*MEMORY[0x277D19478]])
      {
        v12 = 0;
        goto LABEL_12;
      }

      v43_stripFZIDPrefix = [_stripFZIDPrefix _stripFZIDPrefix];
      _chatRegistry = [(IMDChatStore *)self _chatRegistry];
      chatIdentifier = [chatCopy chatIdentifier];
      v19 = [_chatRegistry allExistingChatsWithIdentifier:chatIdentifier style:{objc_msgSend(v44, "style")}];

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
            participants = [v20 participants];
            v21 = [participants countByEnumeratingWithState:&v54 objects:v69 count:16];
            if (v21)
            {
              v22 = *v55;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v55 != v22)
                  {
                    objc_enumerationMutation(participants);
                  }

                  v24 = *(*(&v54 + 1) + 8 * j);
                  v25 = [v24 ID];
                  v26 = [v25 isEqualToString:v43_stripFZIDPrefix];

                  if (v26)
                  {
                    personCentricID = [v24 personCentricID];
                    v28 = [personCentricID isEqualToString:dCopy];

                    if ((v28 & 1) == 0)
                    {
                      if (IMOSLoggingEnabled())
                      {
                        v29 = OSLogHandleForIMFoundationCategory();
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                        {
                          v30 = [v24 ID];
                          personCentricID2 = [v24 personCentricID];
                          *buf = 138412802;
                          v64 = v30;
                          v65 = 2112;
                          v66 = personCentricID2;
                          v67 = 2112;
                          v68 = dCopy;
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

                            [*(*(&v50 + 1) + 8 * k) setPersonCentricID:dCopy];
                          }

                          v36 = [v35 countByEnumeratingWithState:&v50 objects:v62 count:16];
                        }

                        while (v36);
                      }

                      [v24 setPersonCentricID:dCopy];
                      serviceName = [v46 serviceName];
                      [(IMDChatStore *)self updateHandle:v24 sourceMessage:messageCopy personCentricID:dCopy onService:serviceName];

                      v12 = 1;
                    }
                  }
                }

                v21 = [participants countByEnumeratingWithState:&v54 objects:v69 count:16];
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

    identifierCopy = _stripFZIDPrefix;
LABEL_12:
    chatCopy = v44;
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

- (BOOL)updateHandle:(id)handle sourceMessage:(id)message personCentricID:(id)d onService:(id)service
{
  handleCopy = handle;
  messageCopy = message;
  dCopy = d;
  serviceCopy = service;
  [handleCopy ID];
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

    [handleCopy ID];
    [handleCopy countryCode];
    [handleCopy unformattedID];
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

- (BOOL)_shouldCheckPriorityForChat:(id)chat
{
  chatCopy = chat;
  if ([MEMORY[0x277D1A9C8] isTimeSensitiveCustomModelAvailable] && objc_msgSend(MEMORY[0x277D1AB08], "isFilterUnknownSendersEnabled") && objc_msgSend(MEMORY[0x277D1AB08], "timeSensitivePriorityEnabled") && (v4 = objc_msgSend(chatCopy, "isFiltered"), (v4 & 0xE) != 2) && ((v5 = v4, v6 = objc_msgSend(MEMORY[0x277D1AB08], "personalPriorityEnabled"), v7 = objc_msgSend(MEMORY[0x277D1AB08], "transactionsPriorityEnabled"), v8 = v7 ^ 1, ((v6 ^ 1) & 1) != 0) || v8))
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

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error
{
  selfCopy = self;
  IMDChatStore.batchOfRecordIDsToDelete(limit:)();

  sub_22B71EEC0();
  sub_22B71EF0C();
  v5 = sub_22B7DB568();

  return v5;
}

- (void)clearTombstonesForRecordIDs:(id)ds
{
  sub_22B71EEC0();
  v4 = sub_22B7DB918();
  selfCopy = self;
  _sSo12IMDChatStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);
}

@end