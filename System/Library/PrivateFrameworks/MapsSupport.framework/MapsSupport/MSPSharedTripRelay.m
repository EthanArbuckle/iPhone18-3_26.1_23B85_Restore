@interface MSPSharedTripRelay
- (MSPSharedTripAvailabiltyDelegate)availabilityDelegate;
- (MSPSharedTripRelay)init;
- (MSPSharedTripRelayDelegate)delegate;
- (MSPSharedTripSharingIdentity)sharingIdentity;
- (NSArray)accountAliases;
- (NSString)sharingName;
- (id)groupSessionForIdentifier:(id)a3;
- (id)removeSharingWith:(id)a3;
- (id)startSharingGroupSessionWithTripIdentifer:(id)a3;
- (void)_fetchDisplayName;
- (void)_handleChunk:(id)a3 fromID:(id)a4 receivingHandle:(id)a5 receivingAccountIdentifier:(id)a6;
- (void)_handleCommand:(id)a3 fromID:(id)a4;
- (void)_handleIncomingMessage:(id)a3 info:(id)a4 fromID:(id)a5 receivingHandle:(id)a6 receivingAccountIdentifier:(id)a7;
- (void)_removeFinishedSession:(id)a3;
- (void)_startService;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 receivedGroupSessionParticipantUpdate:(id)a5;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)stopSharing;
@end

@implementation MSPSharedTripRelay

- (MSPSharedTripSharingIdentity)sharingIdentity
{
  v3 = [MSPSharedTripSharingIdentity alloc];
  v4 = [(MSPSharedTripRelay *)self hasValidIDSAccount];
  v5 = [(MSPSharedTripRelay *)self sharingName];
  v6 = [(MSPSharedTripRelay *)self sharingHandle];
  v7 = [(MSPSharedTripRelay *)self accountAliases];
  v8 = [(MSPSharedTripSharingIdentity *)v3 initWithValidAccount:v4 name:v5 handle:v6 aliases:v7];

  return v8;
}

- (NSString)sharingName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    [(MSPSharedTripRelay *)self _fetchDisplayName];
    displayName = self->_displayName;
  }

  return displayName;
}

- (NSArray)accountAliases
{
  v2 = [(IDSService *)self->_sharingService _msp_currentAccount];
  v3 = [v2 aliasStrings];

  return v3;
}

- (MSPSharedTripRelay)init
{
  v9.receiver = self;
  v9.super_class = MSPSharedTripRelay;
  v2 = [(MSPSharedTripRelay *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    clientID = v2->_clientID;
    v2->_clientID = v4;

    v6 = objc_alloc_init(MSPSharedTripStorageController);
    storageController = v2->_storageController;
    v2->_storageController = v6;

    [(MSPSharedTripRelay *)v2 _startService];
  }

  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v7 = "[MSPSharedTripRelay dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[RELAY] %{private}s", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MSPSharedTripRelay;
  [(MSPSharedTripRelay *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDisplayName
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v4 = [v3 aa_primaryAppleAccount];
  v5 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v6 = [v4 aa_firstName];
  [v5 setGivenName:v6];

  v7 = [v4 aa_middleName];
  [v5 setMiddleName:v7];

  v8 = [v4 aa_lastName];
  [v5 setFamilyName:v8];

  v9 = objc_alloc_init(MEMORY[0x277CCAC08]);
  [v9 setStyle:2];
  v10 = [v9 stringFromPersonNameComponents:v5];
  displayName = self->_displayName;
  p_displayName = &self->_displayName;
  *p_displayName = v10;

  if (*p_displayName)
  {
    v13 = *p_displayName;
  }

  else
  {
    v13 = &stru_286950698;
  }

  objc_storeStrong(p_displayName, v13);
  v14 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *p_displayName;
    v17 = 138412290;
    v18 = v15;
    _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[RELAY] fetched displayName %@", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startService
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.maps.eta"];
  sharingService = self->_sharingService;
  self->_sharingService = v3;

  [(IDSService *)self->_sharingService addDelegate:self queue:MEMORY[0x277D85CD0]];
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSService *)self->_sharingService activeAliases];
    v7 = [(IDSService *)self->_sharingService _msp_currentAccount];
    displayName = self->_displayName;
    v10 = 138413058;
    v11 = @"com.apple.private.alloy.maps.eta";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = displayName;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[RELAY] startService: %@, active alias: %@, account: %@, displayName: %@", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)startSharingGroupSessionWithTripIdentifer:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sharingETAGroupSession = self->_sharingETAGroupSession;
  if (!sharingETAGroupSession)
  {
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[RELAY] creating _sharingGroupSession for identifier %@", &v16, 0xCu);
    }

    v7 = [MSPSharedTripGroupSession alloc];
    sharingService = self->_sharingService;
    v9 = [(IDSService *)sharingService _msp_currentAccountIdentifier];
    v10 = [(MSPSharedTripGroupSession *)v7 initWithService:sharingService groupID:v4 initiator:1 initiatorIdentifier:v9];
    v11 = self->_sharingETAGroupSession;
    self->_sharingETAGroupSession = v10;

    [(MSPSharedTripRelay *)self _fetchDisplayName];
    v12 = [(MSPSharedTripRelay *)self sharingName];
    [(MSPSharedTripGroupSession *)self->_sharingETAGroupSession setInitiatorDisplayName:v12];

    sharingETAGroupSession = self->_sharingETAGroupSession;
  }

  v13 = sharingETAGroupSession;

  v14 = *MEMORY[0x277D85DE8];
  return sharingETAGroupSession;
}

- (id)removeSharingWith:(id)a3
{
  if (![(MSPSharedTripGroupSession *)self->_sharingETAGroupSession sessionIsAliveAfterRemovingSharingIdentifiers:a3])
  {
    sharingETAGroupSession = self->_sharingETAGroupSession;
    self->_sharingETAGroupSession = 0;
  }

  v5 = self->_sharingETAGroupSession;

  return v5;
}

- (void)stopSharing
{
  sharingETAGroupSession = self->_sharingETAGroupSession;
  self->_sharingETAGroupSession = 0;
  MEMORY[0x2821F96F8]();
}

- (id)groupSessionForIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sharedTripGroupIDSSessions objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(MSPSharedTripStorageController *)self->_storageController groupSessionInfoForKey:v4];
    if (v6)
    {
      v7 = v6;
      v8 = [MSPSharedTripGroupSession alloc];
      sharingService = self->_sharingService;
      v10 = [v7 fromID];
      v5 = [(MSPSharedTripGroupSession *)v8 initWithService:sharingService groupID:v4 initiator:0 initiatorIdentifier:v10];

      [(NSMutableDictionary *)self->_sharedTripGroupIDSSessions setObject:v5 forKeyedSubscript:v4];
      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[RELAY] group session created %@", &v15, 0xCu);
      }
    }

    else
    {
      v12 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[RELAY] unknown group session %@", &v15, 0xCu);
      }

      [(MSPSharedTripRelay *)self _removeFinishedSession:v4];
      v5 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_handleChunk:(id)a3 fromID:(id)a4 receivingHandle:(id)a5 receivingAccountIdentifier:(id)a6
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 objectForKeyedSubscript:@"commandKey"];

  if (v14)
  {
    v15 = [v10 objectForKeyedSubscript:@"commandKey"];
    [(MSPSharedTripRelay *)self _handleCommand:v15 fromID:v11];

    goto LABEL_39;
  }

  v16 = [v10 objectForKeyedSubscript:@"chunkMessageIDKey"];
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = v16;
  v18 = [v10 objectForKeyedSubscript:@"chunkNumberKey"];
  if (!v18)
  {
    goto LABEL_35;
  }

  v19 = v18;
  v55 = self;
  v20 = [v10 objectForKeyedSubscript:@"chunkIndexKey"];
  if (!v20)
  {
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v21 = v20;
  v22 = [v10 objectForKeyedSubscript:@"chunkDataKey"];
  if (!v22)
  {

    goto LABEL_34;
  }

  v23 = v22;
  v24 = [v10 objectForKeyedSubscript:@"chunkGroupIDKey"];

  if (v24)
  {
    if (!self->_packetBuckets)
    {
      v25 = [MEMORY[0x277CBEB38] dictionary];
      packetBuckets = self->_packetBuckets;
      self->_packetBuckets = v25;
    }

    v27 = [v10 objectForKeyedSubscript:@"chunkMessageIDKey"];
    v28 = MSPGetSharedTripIDSTransportLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v64 = v10;
      v65 = 2114;
      v66 = v27;
      _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_INFO, "[RELAY] incomingMessage %@ from %{public}@", buf, 0x16u);
    }

    v29 = [v10 objectForKeyedSubscript:@"chunkNumberKey"];
    v30 = [v29 unsignedIntegerValue];

    v31 = [(NSMutableDictionary *)self->_packetBuckets objectForKeyedSubscript:v27];
    if (!v31)
    {
      v31 = objc_opt_new();
      [(NSMutableDictionary *)self->_packetBuckets setObject:v31 forKeyedSubscript:v27];
    }

    [v31 addObject:v10];
    v32 = MSPGetSharedTripIDSTransportLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [v31 count];
      *buf = 134218242;
      v64 = v33;
      v65 = 2112;
      v66 = v31;
      _os_log_impl(&dword_25813A000, v32, OS_LOG_TYPE_INFO, "[RELAY] handleChunk %lu %@", buf, 0x16u);
    }

    if ([v31 count] == v30)
    {
      v51 = v27;
      v52 = v12;
      v53 = v11;
      v54 = v10;
      v34 = [MEMORY[0x277CBEB28] data];
      v35 = v30;
      v36 = v34;
      v57 = v35;
      if (v35)
      {
        v37 = 0;
        v56 = v31;
        do
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v38 = v31;
          v39 = [v38 countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v59;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v59 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v58 + 1) + 8 * i);
                v44 = [v43 objectForKeyedSubscript:@"chunkIndexKey"];
                v45 = [v44 unsignedIntegerValue];

                if (v45 == v37)
                {
                  v46 = [v43 objectForKeyedSubscript:@"chunkDataKey"];
                  [v36 appendData:v46];
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v58 objects:v62 count:16];
            }

            while (v40);
          }

          ++v37;
          v31 = v56;
        }

        while (v37 != v57);
      }

      v47 = MSPGetSharedTripIDSTransportLog();
      v27 = v51;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "length")}];
        *buf = 138412546;
        v64 = v48;
        v65 = 2114;
        v66 = v51;
        _os_log_impl(&dword_25813A000, v47, OS_LOG_TYPE_INFO, "[RELAY] incomingMessage full message ready %@ messageID %{public}@", buf, 0x16u);
      }

      v10 = v54;
      v12 = v52;
      v11 = v53;
      [(MSPSharedTripRelay *)v55 _handleIncomingMessage:v36 info:v54 fromID:v53 receivingHandle:v52 receivingAccountIdentifier:v13];
      [(NSMutableDictionary *)v55->_packetBuckets setObject:0 forKeyedSubscript:v51];
    }

    goto LABEL_39;
  }

LABEL_36:
  v49 = MSPGetSharedTripIDSTransportLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v64 = v10;
    _os_log_impl(&dword_25813A000, v49, OS_LOG_TYPE_ERROR, "[RELAY] cannot handle message %@", buf, 0xCu);
  }

LABEL_39:
  v50 = *MEMORY[0x277D85DE8];
}

- (void)_handleCommand:(id)a3 fromID:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"j"])
  {
    [(MSPSharedTripGroupSession *)self->_sharingETAGroupSession participantDidJoin:v7];
  }

  else if ([v6 isEqualToString:@"l"])
  {
    [(MSPSharedTripGroupSession *)self->_sharingETAGroupSession participantDidLeave:v7];
  }

  else
  {
    v8 = MSPGetSharedTripIDSTransportLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "[RELAY] cannot handle command %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingMessage:(id)a3 info:(id)a4 fromID:(id)a5 receivingHandle:(id)a6 receivingAccountIdentifier:(id)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 objectForKeyedSubscript:@"chunkGroupIDKey"];
  v18 = v17;
  if (v12 && v17)
  {
    v19 = [(MSPSharedTripStorageController *)self->_storageController groupSessionInfoForKey:v17];

    if (!v19)
    {
      v20 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v18;
        _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_DEFAULT, "[RELAY] add new session %@", &v23, 0xCu);
      }

      [(MSPSharedTripStorageController *)self->_storageController addNewSession:v18 originator:v14 receivingHandle:v15 receivingAccountIdentifier:v16];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained relay:self receiveData:v12 info:v13 fromID:v14];
  }

  else
  {
    WeakRetained = MSPGetSharedTripIDSTransportLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = v13;
      _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_ERROR, "[RELAY] identifier or data missing %@", &v23, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_removeFinishedSession:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_sharedTripGroupIDSSessions objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 leaveLiveModeForced:0];
    [(NSMutableDictionary *)self->_sharedTripGroupIDSSessions setObject:0 forKeyedSubscript:v7];
  }

  [(MSPSharedTripStorageController *)self->_storageController removeSession:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained relay:self sharingClosed:v7];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MSPGetSharedTripIDSTransportLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19 = 138412802;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[RELAY] incomingMessage %@ from %@ to %@", &v19, 0x20u);
  }

  v16 = [v14 toID];

  v17 = [v11 uniqueID];
  [(MSPSharedTripRelay *)self _handleChunk:v12 fromID:v13 receivingHandle:v16 receivingAccountIdentifier:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = a5;
  v15 = MSPGetSharedTripIDSTransportLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v20 = 138412546;
    v21 = v12;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[RELAY] incomingData from %@ to %@", &v20, 0x16u);
  }

  v16 = [MEMORY[0x277CBEAC0] dictionaryWithPlistData:v14];

  v17 = [v13 toID];

  v18 = [v11 uniqueID];
  [(MSPSharedTripRelay *)self _handleChunk:v16 fromID:v12 receivingHandle:v17 receivingAccountIdentifier:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a5;
  v18 = MSPGetSharedTripIDSTransportLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "[RELAY] incomingMessage URL %@ from %@ to %@", buf, 0x20u);
  }

  v19 = MEMORY[0x277CBEA90];
  v20 = [v17 path];

  v26 = 0;
  v21 = [v19 dataWithContentsOfFile:v20 options:1 error:&v26];
  v22 = v26;

  if (v22)
  {
    v23 = MSPGetSharedTripIDSTransportLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v22;
      _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_ERROR, "[RELAY] incomingMessage error %@", buf, 0xCu);
    }
  }

  else
  {
    v23 = [v16 toID];
    v24 = [v13 uniqueID];
    [(MSPSharedTripRelay *)self _handleIncomingMessage:v21 info:v14 fromID:v15 receivingHandle:v23 receivingAccountIdentifier:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 receivedGroupSessionParticipantUpdate:(id)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[RELAY] receivedGroupSessionParticipantUpdate %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = a7;
  v12 = MSPGetSharedTripIDSTransportLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "[RELAY] Message hasBeenDelivered {identifier: %{public}@, context: %@ fromID %@}", &v14, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v5 = [(MSPSharedTripRelay *)self availabilityDelegate:a3];
  [v5 relay:self accountStatusChanged:{-[MSPSharedTripRelay hasValidIDSAccount](self, "hasValidIDSAccount")}];
}

- (MSPSharedTripRelayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MSPSharedTripAvailabiltyDelegate)availabilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_availabilityDelegate);

  return WeakRetained;
}

@end