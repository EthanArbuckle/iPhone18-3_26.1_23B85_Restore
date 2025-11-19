@interface MSPSharedTripStorageController
+ (id)_receivedNotificationRulesPath;
+ (id)_receivedSessionsPath;
+ (id)_senderSessionStoragePath;
+ (id)_sentNotificationRulesPath;
+ (void)removeFilesFromBackupsIfNeeded;
- (MSPSharedTripStorageController)init;
- (MSPSharedTripStorageDelegate)delegate;
- (id)_identifiersOfStaleSessions:(id)a3;
- (id)receivingRulesForIdentifier:(id)a3;
- (id)sendingRulesForIdentifier:(id)a3;
- (void)_loadSenderSession;
- (void)_loadStoredSessions;
- (void)_saveReceivingRules;
- (void)_saveSenderSession;
- (void)_saveSendingRules;
- (void)_saveStoredSessions;
- (void)addNewSession:(id)a3 originator:(id)a4 receivingHandle:(id)a5 receivingAccountIdentifier:(id)a6;
- (void)dealloc;
- (void)initialiseStoredSessionsIfNeeded;
- (void)removeSession:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSenderSessionStorage:(id)a3;
- (void)updateGroupSessionStorageWithState:(id)a3;
@end

@implementation MSPSharedTripStorageController

- (void)initialiseStoredSessionsIfNeeded
{
  if (!self->_initalisedStoredSessions)
  {
    v3 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[STORAGE] Triggering immediate load of stored sessions", v4, 2u);
    }

    [(MSPSharedTripStorageController *)self _loadStoredSessions];
  }
}

- (MSPSharedTripStorageController)init
{
  v16.receiver = self;
  v16.super_class = MSPSharedTripStorageController;
  v2 = [(MSPSharedTripStorageController *)&v16 init];
  if (v2)
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[STORAGE] initializing new MSPSharedTripStorageController", buf, 2u);
    }

    v4 = [MEMORY[0x277CBEB38] dictionary];
    sharedTripGroupSessionInfo = v2->_sharedTripGroupSessionInfo;
    v2->_sharedTripGroupSessionInfo = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    receiverRules = v2->_receiverRules;
    v2->_receiverRules = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    senderRules = v2->_senderRules;
    v2->_senderRules = v8;

    [(MSPSharedTripStorageController *)v2 _loadSenderSession];
    v10 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "[STORAGE] Scheduling deferred load of stored sessions", buf, 2u);
    }

    objc_initWeak(buf, v2);
    v11 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__MSPSharedTripStorageController_init__block_invoke;
    block[3] = &unk_279866390;
    objc_copyWeak(&v14, buf);
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __38__MSPSharedTripStorageController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[8];
    v4 = MSPGetSharedTripStorageLog();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] Ignoring deferred load of stored sessions, already completed", buf, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] Triggering deferred load of stored sessions", v6, 2u);
      }

      [v2 _loadStoredSessions];
    }
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v7 = "[MSPSharedTripStorageController dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[STORAGE] %{private}s", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MSPSharedTripStorageController;
  [(MSPSharedTripStorageController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setSenderSessionStorage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MSPGroupSessionStorage *)v4 hasGroupIdentifier]&& [(MSPGroupSessionStorage *)self->_senderSessionStorage hasGroupIdentifier])
  {
    v5 = [(MSPGroupSessionStorage *)v4 groupIdentifier];
    v6 = [(MSPGroupSessionStorage *)self->_senderSessionStorage groupIdentifier];
    v7 = [v5 isEqualToString:v6];

    if (v4 && (v7 & 1) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v7)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v11 = [(MSPGroupSessionStorage *)v4 groupIdentifier];
    v12 = [(MSPGroupSessionStorage *)self->_senderSessionStorage groupIdentifier];
    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[STORAGE] setSenderSessionStorage clearing storage (sameGroup: %@, incoming: %@, existing: %@)", &v16, 0x20u);
  }

  v13 = [MEMORY[0x277CBEB38] dictionary];
  [(MSPSharedTripStorageController *)self setSenderRules:v13];

LABEL_12:
  senderSessionStorage = self->_senderSessionStorage;
  self->_senderSessionStorage = v4;

  [(MSPSharedTripStorageController *)self _saveSenderSession];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
    v9 = 138412290;
    v10 = sharedTripGroupSessionInfo;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[STORAGE] setDelegate %@", &v9, 0xCu);
  }

  if ([(NSMutableDictionary *)self->_sharedTripGroupSessionInfo count])
  {
    v7 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo copy];
    [v4 storageController:self updatedSharedTripGroupStorage:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addNewSession:(id)a3 originator:(id)a4 receivingHandle:(id)a5 receivingAccountIdentifier:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [MSPGroupSessionStorage groupStorageWithIdentifier:v10 originator:a4 receivingHandle:a5 receivingAccountIdentifier:a6];
  [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo setObject:v11 forKeyedSubscript:v10];

  [(MSPSharedTripStorageController *)self _saveStoredSessions];
  v12 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
    v17 = 138412290;
    v18 = sharedTripGroupSessionInfo;
    _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "[STORAGE] addNewSession %@", &v17, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo copy];
  [WeakRetained storageController:self updatedSharedTripGroupStorage:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeSession:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
  v5 = a3;
  [(NSMutableDictionary *)sharedTripGroupSessionInfo setObject:0 forKeyedSubscript:v5];
  v6 = [(MSPSharedTripStorageController *)self receiverRules];
  [v6 setObject:0 forKeyedSubscript:v5];

  [(MSPSharedTripStorageController *)self _saveStoredSessions];
  v7 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_sharedTripGroupSessionInfo;
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[STORAGE] removeSession %@", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo copy];
  [WeakRetained storageController:self updatedSharedTripGroupStorage:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateGroupSessionStorageWithState:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 groupIdentifier];
  v6 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[STORAGE] updateGroupSessionStorageWithState %@", &v9, 0xCu);
  }

  v7 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo objectForKeyedSubscript:v5];
  [v7 updateWithState:v4];

  [(MSPSharedTripStorageController *)self _saveStoredSessions];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)receivingRulesForIdentifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MSPSharedTripStorageController *)self receiverRules];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "MSPSharedTripStorageController allocated receiving MSPSharedTripNotificationRules for groupIdentifier %@", &v11, 0xCu);
    }

    v6 = objc_alloc_init(MSPSharedTripNotificationRules);
    v8 = [(MSPSharedTripStorageController *)self receiverRules];
    [v8 setObject:v6 forKeyedSubscript:v4];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sendingRulesForIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  senderSessionStorage = self->_senderSessionStorage;
  v6 = a3;
  v7 = [(MSPGroupSessionStorage *)senderSessionStorage groupIdentifier];
  v8 = [v4 stringWithFormat:@"%@+%@", v7, v6];

  v9 = [(NSMutableDictionary *)self->_senderRules objectForKeyedSubscript:v8];
  if (!v9)
  {
    v10 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "MSPSharedTripStorageController allocated sending MSPSharedTripNotificationRules for key %@", buf, 0xCu);
    }

    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      senderRules = self->_senderRules;
      *buf = 138412290;
      v16 = senderRules;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "rules %@", buf, 0xCu);
    }

    v9 = [[MSPSharedTripNotificationRules alloc] initWithMaximumNumberOfNotifications:GEOConfigGetUInteger()];
    [(NSMutableDictionary *)self->_senderRules setObject:v9 forKeyedSubscript:v8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_receivedSessionsPath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v3 = [v2 groupDirectory];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
    v5 = [v6 mapsDirectory];
  }

  v7 = [v5 stringByAppendingPathComponent:@"receivedsessions.data"];

  return v7;
}

+ (id)_receivedNotificationRulesPath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v3 = [v2 groupDirectory];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
    v5 = [v6 mapsDirectory];
  }

  v7 = [v5 stringByAppendingPathComponent:@"rules.data"];

  return v7;
}

- (void)_loadStoredSessions
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _receivedSessionsPath];
  v4 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] _loadStoredSessions %@", buf, 0xCu);
  }

  v5 = MSPGetSharedTripLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "_loadStoredSessions", &unk_2581CCE6D, buf, 2u);
  }

  spid = v6;

  v50 = v3;
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  v11 = 0x277CCA000uLL;
  if (v10)
  {
    v12 = MEMORY[0x277CCAAC8];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v47 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, v47, objc_opt_class(), 0}];
    v52 = 0;
    v17 = [v12 unarchivedObjectOfClasses:v16 fromData:v10 error:&v52];
    v18 = v52;

    if (v18)
    {
      v19 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v18;
        _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_ERROR, "[STORAGE] _loadStoredSessions unarchiving error %@", buf, 0xCu);
      }

      v20 = v8;
      v21 = v20;
      v11 = 0x277CCA000;
      if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v21, OS_SIGNPOST_EVENT, spid, "_loadStoredSessionsUnarchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      v22 = [v17 mutableCopy];
      sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
      self->_sharedTripGroupSessionInfo = v22;

      v21 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = self->_sharedTripGroupSessionInfo;
        *buf = 138412290;
        v54 = v24;
        _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_INFO, "[STORAGE] cached group %@", buf, 0xCu);
      }

      v11 = 0x277CCA000uLL;
    }
  }

  v25 = [(MSPSharedTripStorageController *)self _identifiersOfStaleSessions:self->_sharedTripGroupSessionInfo];
  v26 = [v25 allObjects];

  [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo removeObjectsForKeys:v26];
  v27 = [objc_opt_class() _receivedNotificationRulesPath];
  v28 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v27;
    _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_DEFAULT, "[STORAGE] _loadStoredSessions rulesPath %@", buf, 0xCu);
  }

  v29 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v27];
  if (v29)
  {
    v48 = v10;
    v30 = *(v11 + 2760);
    v31 = +[MSPSharedTripNotificationRules unarchivingObjectsSet];
    v51 = 0;
    v32 = [v30 unarchivedObjectOfClasses:v31 fromData:v29 error:&v51];
    v33 = v51;

    if (v33)
    {
      v34 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v33;
        _os_log_impl(&dword_25813A000, v34, OS_LOG_TYPE_ERROR, "[STORAGE] rules unarchiving error %@", buf, 0xCu);
      }

      v35 = v8;
      v36 = v35;
      if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v36, OS_SIGNPOST_EVENT, spid, "_loadStoredSessionsRulesUnarchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      v37 = [v32 mutableCopy];
      [(MSPSharedTripStorageController *)self setReceiverRules:v37];

      v36 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v38 = [(MSPSharedTripStorageController *)self receiverRules];
        *buf = 138412290;
        v54 = v38;
        _os_log_impl(&dword_25813A000, v36, OS_LOG_TYPE_INFO, "[STORAGE] cached rules %@", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)self->_receiverRules removeObjectsForKeys:v26];
    v10 = v48;
  }

  else
  {
    [(NSMutableDictionary *)self->_receiverRules removeObjectsForKeys:v26];
    if (!v10)
    {
      goto LABEL_32;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v40 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo copy];
  [WeakRetained storageController:self updatedSharedTripGroupStorage:v40];

LABEL_32:
  v41 = v8;
  v42 = v41;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v42, OS_SIGNPOST_INTERVAL_END, spid, "_loadStoredSessions", &unk_2581CCE6D, buf, 2u);
  }

  if ([v26 count])
  {
    v43 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = [v26 count];
      *buf = 134217984;
      v54 = v44;
      _os_log_impl(&dword_25813A000, v43, OS_LOG_TYPE_INFO, "[STORAGE] %lu sessions are stale, re-saving remaining sessions", buf, 0xCu);
    }

    [(MSPSharedTripStorageController *)self _saveStoredSessions];
    [(MSPSharedTripStorageController *)self _saveReceivingRules];
  }

  if (!self->_initalisedStoredSessions)
  {
    v45 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v45, OS_LOG_TYPE_DEFAULT, "[STORAGE] initialised stored sessions", buf, 2u);
    }

    self->_initalisedStoredSessions = 1;
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (id)_identifiersOfStaleSessions:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    [v3 keysOfEntriesPassingTest:&__block_literal_global_5];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v4 = ;

  return v4;
}

uint64_t __62__MSPSharedTripStorageController__identifiersOfStaleSessions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v5 state];
  v7 = v6;
  if (v6)
  {
    if ([v6 hasArrived])
    {
      v8 = [v7 arrived];
    }

    else
    {
      v8 = 0;
    }

    if ([v7 hasClosed])
    {
      v11 = [v7 closed];
    }

    else
    {
      v11 = 0;
    }

    v12 = MEMORY[0x277CBEAA8];
    v13 = [v7 etaInfo];
    [v13 etaTimestamp];
    v14 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    [v14 timeIntervalSinceNow];
    v16 = v15;
    v17 = v15 < 0.0;

    v18 = MEMORY[0x277CBEAA8];
    [v5 lastUpdateTimestamp];
    v9 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
    [v9 timeIntervalSinceNow];
    v20 = v19;
    GEOConfigGetDouble();
    v10 = (v20 < -v21) & (v8 | v11 | v17);
    if (v10 == 1)
    {
      v22 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        if (v8)
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v24 = v23;
        if (v11)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        v26 = v25;
        if (v16 >= 0.0)
        {
          v27 = @"NO";
        }

        else
        {
          v27 = @"YES";
        }

        v28 = v27;
        v31 = 138413058;
        v32 = v4;
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = v26;
        v37 = 2112;
        v38 = v28;
        _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_INFO, "restored session %@ is stale: arrived %@ closed %@ etaInPast %@", &v31, 0x2Au);
      }

      v10 = 1;
    }
  }

  else
  {
    v9 = MSPGetSharedTripLog();
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v31 = 138412290;
      v32 = v4;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "restored session %@ is stale: no trip state", &v31, 0xCu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_saveStoredSessions
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _receivedSessionsPath];
  v4 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
    *buf = 138412546;
    v27 = sharedTripGroupSessionInfo;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] _saveStoredSessions groupsData %@ at path %@", buf, 0x16u);
  }

  v6 = MSPGetSharedTripLog();
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "_saveStoredSessions", &unk_2581CCE6D, buf, 2u);
  }

  v11 = self->_sharedTripGroupSessionInfo;
  v25 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v25];
  v13 = v25;
  if (v13 || !v3)
  {
    v18 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_ERROR, "[STORAGE] groupArchivingError %@", buf, 0xCu);
    }

    v19 = v9;
    v14 = v19;
    if (v10 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v22 = v14;
      goto LABEL_24;
    }

    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v14, OS_SIGNPOST_EVENT, v7, "_saveStoredSessionsArchiveError", &unk_2581CCE6D, buf, 2u);
    }
  }

  else
  {
    v24 = 0;
    [v12 writeToFile:v3 options:1 error:&v24];
    v14 = v24;
    MSPExcludePathFromBackup(v3);
    if (v14)
    {
      v15 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v14;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "[STORAGE] groupWriteError %@", buf, 0xCu);
      }

      v16 = v9;
      v17 = v16;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v17, OS_SIGNPOST_EVENT, v7, "_saveStoredSessionsWriteError", &unk_2581CCE6D, buf, 2u);
      }
    }
  }

  v20 = v9;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v21, OS_SIGNPOST_INTERVAL_END, v7, "_saveStoredSessions", &unk_2581CCE6D, buf, 2u);
    }
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_saveReceivingRules
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _receivedNotificationRulesPath];
  v4 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MSPSharedTripStorageController *)self receiverRules];
    *buf = 138412546;
    v28 = v5;
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] _saveRules %@ at path %@", buf, 0x16u);
  }

  v6 = MSPGetSharedTripLog();
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "_saveReceivingRules", &unk_2581CCE6D, buf, 2u);
  }

  v11 = MEMORY[0x277CCAAB0];
  v12 = [(MSPSharedTripStorageController *)self receiverRules];
  v26 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v26];
  v14 = v26;

  if (v14 || !v3)
  {
    v19 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_ERROR, "[STORAGE] rulesArchivingError %@", buf, 0xCu);
    }

    v20 = v9;
    v15 = v20;
    if (v10 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v23 = v15;
      goto LABEL_24;
    }

    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v15, OS_SIGNPOST_EVENT, v7, "_saveReceivingRulesArchiveError", &unk_2581CCE6D, buf, 2u);
    }
  }

  else
  {
    v25 = 0;
    [v13 writeToFile:v3 options:1 error:&v25];
    v15 = v25;
    MSPExcludePathFromBackup(v3);
    if (v15)
    {
      v16 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v15;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_ERROR, "[STORAGE] rulesWriteError %@", buf, 0xCu);
      }

      v17 = v9;
      v18 = v17;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v18, OS_SIGNPOST_EVENT, v7, "_saveReceivingRulesWriteError", &unk_2581CCE6D, buf, 2u);
      }
    }
  }

  v21 = v9;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v22, OS_SIGNPOST_INTERVAL_END, v7, "_saveReceivingRules", &unk_2581CCE6D, buf, 2u);
    }
  }

LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)_senderSessionStoragePath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v3 = [v2 groupDirectory];

  v4 = [v3 stringByAppendingPathComponent:@"sender.data"];

  return v4;
}

+ (id)_sentNotificationRulesPath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v3 = [v2 groupDirectory];

  v4 = [v3 stringByAppendingPathComponent:@"senderRules.data"];

  return v4;
}

- (void)_loadSenderSession
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "_loadSenderSession", &unk_2581CCE6D, buf, 2u);
  }

  spid = v4;

  v8 = [objc_opt_class() _sentNotificationRulesPath];
  v9 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[STORAGE] _loadSenderSession rulesPath %@", buf, 0xCu);
  }

  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8];
  if (v10)
  {
    v11 = MEMORY[0x277CCAAC8];
    v12 = +[MSPSharedTripNotificationRules unarchivingObjectsSet];
    v34 = 0;
    v13 = [v11 unarchivedObjectOfClasses:v12 fromData:v10 error:&v34];
    v14 = v34;

    if (v14)
    {
      v15 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v14;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "[STORAGE] sender rules unarchiving error %@", buf, 0xCu);
      }

      v16 = v6;
      v17 = v16;
      if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v17, OS_SIGNPOST_EVENT, spid, "_loadSenderSessionRulesUnarchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      v18 = [v13 mutableCopy];
      [(MSPSharedTripStorageController *)self setSenderRules:v18];

      v17 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = [(MSPSharedTripStorageController *)self senderRules];
        *buf = 138412290;
        v36 = v19;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_INFO, "[STORAGE] cached sender rules %@", buf, 0xCu);
      }
    }
  }

  v20 = [objc_opt_class() _senderSessionStoragePath];
  v21 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v20;
    _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_DEFAULT, "[STORAGE] _loadSenderSession %@", buf, 0xCu);
  }

  v22 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v20];
  if (v22)
  {
    v33 = 0;
    v23 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:&v33];
    v24 = v33;
    if (v24)
    {
      v25 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v24;
        _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_ERROR, "[STORAGE] _loadSenderSession unarchiver error %@", buf, 0xCu);
      }

      v26 = v6;
      v27 = v26;
      if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v27, OS_SIGNPOST_EVENT, spid, "_loadSenderSessionUnarchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      objc_storeStrong(&self->_senderSessionStorage, v23);
      v27 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [(MSPGroupSessionStorage *)self->_senderSessionStorage groupIdentifier];
        *buf = 138412290;
        v36 = v28;
        _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_INFO, "[STORAGE] cached session for group id %@", buf, 0xCu);
      }
    }
  }

  v29 = v6;
  v30 = v29;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v30, OS_SIGNPOST_INTERVAL_END, spid, "_loadSenderSession", &unk_2581CCE6D, buf, 2u);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_saveSenderSession
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _senderSessionStoragePath];
  if (!v3)
  {
    goto LABEL_37;
  }

  v4 = MSPGetSharedTripStorageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MSPGroupSessionStorage *)self->_senderSessionStorage groupIdentifier];
    *buf = 138412546;
    v33 = v5;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] _saveSenderSession session for group id: %@ path: %@", buf, 0x16u);
  }

  v6 = MSPGetSharedTripLog();
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "_saveSenderSession", &unk_2581CCE6D, buf, 2u);
  }

  senderSessionStorage = self->_senderSessionStorage;
  if (senderSessionStorage)
  {
    v31 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:senderSessionStorage requiringSecureCoding:1 error:&v31];
    v13 = v31;
    if (v13)
    {
      v14 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v13;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_ERROR, "[STORAGE] archiveError %@", buf, 0xCu);
      }

      v15 = v9;
      v16 = v15;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v16, OS_SIGNPOST_EVENT, v7, "_saveSenderSessionArchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    if (v12)
    {
      v30 = 0;
      [v12 writeToFile:v3 options:1 error:&v30];
      v17 = v30;
      MSPExcludePathFromBackup(v3);
      if (v17)
      {
        v18 = MSPGetSharedTripStorageLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = v17;
          _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_ERROR, "[STORAGE] writeError %@", buf, 0xCu);
        }

        v19 = v9;
        v20 = v19;
        if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25813A000, v20, OS_SIGNPOST_EVENT, v7, "_saveSenderSessionWriteError", &unk_2581CCE6D, buf, 2u);
        }
      }

LABEL_31:

      goto LABEL_32;
    }
  }

  else
  {
    v13 = 0;
  }

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [v21 fileExistsAtPath:v3];

  if (!v22)
  {
    goto LABEL_33;
  }

  v23 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0;
  [v23 removeItemAtPath:v3 error:&v29];
  v12 = v29;

  if (v12)
  {
    v24 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v12;
      _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_ERROR, "[STORAGE] deleteError %@", buf, 0xCu);
    }

    v25 = v9;
    v17 = v25;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v17, OS_SIGNPOST_EVENT, v7, "_saveSenderSessionDeleteError", &unk_2581CCE6D, buf, 2u);
    }

    goto LABEL_31;
  }

LABEL_32:

LABEL_33:
  v26 = v9;
  v27 = v26;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v27, OS_SIGNPOST_INTERVAL_END, v7, "_saveSenderSession", &unk_2581CCE6D, buf, 2u);
  }

LABEL_37:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_saveSendingRules
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _sentNotificationRulesPath];
  if (v3)
  {
    v4 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      senderRules = self->_senderRules;
      *buf = 138412546;
      v27 = senderRules;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] _saveSendingRules rules %@ at path %@", buf, 0x16u);
    }

    v6 = MSPGetSharedTripLog();
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    v10 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "_saveSendingRules", &unk_2581CCE6D, buf, 2u);
    }

    v11 = self->_senderRules;
    v25 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v25];
    v13 = v25;
    if (v13)
    {
      v14 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_ERROR, "[STORAGE] _saveSendingRules archiving error %@", buf, 0xCu);
      }

      v15 = v9;
      v16 = v15;
      if (v10 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v22 = v16;
LABEL_24:

        goto LABEL_25;
      }

      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v16, OS_SIGNPOST_EVENT, v7, "_saveSendingRulesArchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      v24 = 0;
      [v12 writeToFile:v3 options:1 error:&v24];
      v16 = v24;
      MSPExcludePathFromBackup(v3);
      if (v16)
      {
        v17 = MSPGetSharedTripStorageLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v16;
          _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_ERROR, "[STORAGE] _saveSendingRules write error %@", buf, 0xCu);
        }

        v18 = v9;
        v19 = v18;
        if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25813A000, v19, OS_SIGNPOST_EVENT, v7, "_saveSendingRulesWriteError", &unk_2581CCE6D, buf, 2u);
        }
      }
    }

    v20 = v9;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = v20;
      if (os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v21, OS_SIGNPOST_INTERVAL_END, v7, "_saveSendingRules", &unk_2581CCE6D, buf, 2u);
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)removeFilesFromBackupsIfNeeded
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__MSPSharedTripStorageController_removeFilesFromBackupsIfNeeded__block_invoke;
  v10[3] = &unk_2798663D8;
  v11 = v3;
  v4 = v3;
  v5 = MEMORY[0x259C7AD60](v10);
  v6 = [a1 _senderSessionStoragePath];
  (v5)[2](v5, v6);

  v7 = [a1 _sentNotificationRulesPath];
  (v5)[2](v5, v7);

  v8 = [a1 _receivedSessionsPath];
  (v5)[2](v5, v8);

  v9 = [a1 _receivedNotificationRulesPath];
  (v5)[2](v5, v9);
}

void __64__MSPSharedTripStorageController_removeFilesFromBackupsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && [*(a1 + 32) fileExistsAtPath:v3] && (MSPIsExcludedFromBackup(v3) & 1) == 0)
  {
    v4 = MSPGetSharedTripStorageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 lastPathComponent];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] Found file not excluded from backup, excluding now: %@", &v9, 0xCu);
    }

    if ((MSPExcludePathFromBackup(v3) & 1) == 0)
    {
      v6 = MSPGetSharedTripStorageLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [v3 lastPathComponent];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[STORAGE] Failed to exclude file from backup: %@", &v9, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (MSPSharedTripStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end