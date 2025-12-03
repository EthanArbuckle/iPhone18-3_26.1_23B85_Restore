@interface _DKSync3Coordinator
- (BOOL)remoteContextStorage:(id)storage hasKnowledgeOfKeyPath:(id)path;
- (BOOL)subscribeToContextValueChangeNotificationsWithRegistration:(id)registration deviceIDs:(id)ds error:(id *)error;
- (BOOL)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)types error:(id *)error;
- (BOOL)unsubscribeFromContextValueChangeNotificationsWithRegistration:(id)registration deviceIDs:(id)ds error:(id *)error;
- (_DKSync3Coordinator)initWithContext:(id)context;
- (id)archivedObjectsForKeyPaths:(id)paths;
- (id)keyPathsByDeviceIDFromRemoteKeyPaths:(id)paths;
- (id)multiDeviceContextStoreDevices;
- (id)peersForContextStoreDeviceIDs:(id)ds;
- (id)registrationIdentifierForPeer:(id)peer remoteRegistrationIdentifier:(id)identifier;
- (id)remoteContextStorage:(id)storage archivedObjectsForKeyPaths:(id)paths;
- (void)_fetchPropertiesOfRemoteKeyPaths:(id)paths handler:(id)handler;
- (void)_requestActivateDevicesWithHandler:(id)handler;
- (void)_syncDisabledToggle;
- (void)_syncEnabledToggle;
- (void)dealloc;
- (void)fetchPropertiesOfRemoteKeyPaths:(id)paths handler:(id)handler;
- (void)handleContextChangedNotification:(id)notification;
- (void)handleStatusChangeForPeer:(id)peer previousTransports:(int64_t)transports;
- (void)remoteContextStorage:(id)storage registrationIdentifier:(id)identifier setArchivedObjects:(id)objects peer:(id)peer;
- (void)remoteContextStorage:(id)storage subscribeToChangesWithPeer:(id)peer registrationIdentifier:(id)identifier predicate:(id)predicate;
- (void)remoteContextStorage:(id)storage unsubscribeFromChangesWithPeer:(id)peer registrationIdentifier:(id)identifier predicate:(id)predicate;
- (void)requestActivateDevicesWithHandler:(id)handler;
- (void)sendContextValuesToPeer:(id)peer registrationIdentifier:(id)identifier keyPaths:(id)paths;
- (void)setArchivedObjects:(id)objects peer:(id)peer;
- (void)setupStorage;
- (void)start;
- (void)subscribeToContextValueChangeNotificationsWithRegistration:(id)registration deviceIDs:(id)ds handler:(id)handler;
- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)types handler:(id)handler;
- (void)unsubscribeFromContextValueChangeNotificationsWithRegistration:(id)registration deviceIDs:(id)ds handler:(id)handler;
@end

@implementation _DKSync3Coordinator

- (_DKSync3Coordinator)initWithContext:(id)context
{
  v12.receiver = self;
  v12.super_class = _DKSync3Coordinator;
  v3 = [(_DKSync2Coordinator *)&v12 initWithContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_watchingDeviceTypes = 0xFFFFLL;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277CFE3A0];
    operationQueue = [MEMORY[0x277CFE290] operationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39___DKSync3Coordinator_initWithContext___block_invoke;
    v10[3] = &unk_278E35008;
    v11 = v4;
    v8 = [defaultCenter addObserverForName:v6 object:0 queue:operationQueue usingBlock:v10];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CFE3A0] object:0];

  v4.receiver = self;
  v4.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v4 dealloc];
}

- (void)_syncEnabledToggle
{
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v5.receiver = self;
  v5.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v5 _syncEnabledToggle];
  userContext = [MEMORY[0x277CFE318] userContext];
  if (objc_opt_respondsToSelector())
  {
    [userContext setRemoteUserContextProxy:self];
  }
}

- (void)_syncDisabledToggle
{
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v4.receiver = self;
  v4.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v4 _syncDisabledToggle];
}

- (void)setupStorage
{
  v14 = *MEMORY[0x277D85DE8];
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v11.receiver = self;
  v11.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v11 setupStorage];
  v4 = [(_DKSync2Coordinator *)self policyForSyncTransportType:1];
  if ([v4 syncDisabled])
  {

    goto LABEL_4;
  }

  rapportSyncDisabled = [MEMORY[0x277CFE270] rapportSyncDisabled];

  if (rapportSyncDisabled)
  {
LABEL_4:
    syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_INFO))
    {
      v7 = [objc_opt_class() description];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_245377000, syncChannel, OS_LOG_TYPE_INFO, "%{public}@: Rapport context store transport disabled by policy", buf, 0xCu);
    }

    goto LABEL_8;
  }

  syncChannel = [MEMORY[0x277CFE318] userContext];
  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x277CFE288] = [MEMORY[0x277CFE288] sharedInstance];
    transportMDCSRapport = self->_transportMDCSRapport;
    self->_transportMDCSRapport = mEMORY[0x277CFE288];

    [(_DKSyncRemoteContextStorage *)self->_transportMDCSRapport setDelegate:self];
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (id)multiDeviceContextStoreDevices
{
  v45 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CFE280] = [MEMORY[0x277CFE280] sharedInstance];
  v2 = [mEMORY[0x277CFE280] peersWithActiveTransports:1];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        version = [v9 version];
        [version doubleValue];
        v12 = v11;

        if (v12 > 1.0)
        {
          v13 = objc_alloc(MEMORY[0x277CFE378]);
          sourceDeviceID = [v9 sourceDeviceID];
          model = [v9 model];
          v16 = [v13 initWithName:&stru_28584E620 deviceID:sourceDeviceID model:model companion:{objc_msgSend(v9, "isCompanion")}];

          if (v16)
          {
            [v3 addObject:v16];
          }

          else
          {
            syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
            if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
            {
              v30 = [objc_opt_class() description];
              v18 = [v9 me];
              v19 = @"pseudo ";
              if (!v18)
              {
                v19 = &stru_28584E620;
              }

              v29 = v19;
              identifier = [v9 identifier];
              model2 = [v9 model];
              v21 = &stru_28584E620;
              if (model2)
              {
                v27 = MEMORY[0x277CCACA8];
                model3 = [v9 model];
                v26 = [v27 stringWithFormat:@" (%@)", model3];
                v21 = v26;
              }

              *buf = 138544130;
              v37 = v30;
              v38 = 2114;
              v39 = v29;
              v40 = 2114;
              v41 = identifier;
              v42 = 2114;
              v43 = v21;
              _os_log_debug_impl(&dword_245377000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to convert %{public}@peer %{public}@%{public}@ to device, skipping", buf, 0x2Au);
              if (model2)
              {
              }
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v22 = [v4 countByEnumeratingWithState:&v32 objects:v44 count:16];
      v6 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)handleStatusChangeForPeer:(id)peer previousTransports:(int64_t)transports
{
  v23[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v22.receiver = self;
  v22.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v22 handleStatusChangeForPeer:peerCopy previousTransports:transports];
  if (!self->_watchingDeviceTypes)
  {
    syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
    {
      [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
    }

    goto LABEL_18;
  }

  mEMORY[0x277CFE280] = [MEMORY[0x277CFE280] sharedInstance];
  v9 = [mEMORY[0x277CFE280] activeTransportsForPeer:peerCopy];

  v10 = (v9 & 1) == 0;
  if (((transports ^ v10) & 1) == 0)
  {
    syncChannel = [MEMORY[0x277CFE318] userContext];
    if ((transports & 1) != 0 || (v9 & 1) == 0)
    {
      if ((transports & v10) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }

      syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
      {
        [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
      }

      v17 = objc_alloc(MEMORY[0x277CFE378]);
      sourceDeviceID = [peerCopy sourceDeviceID];
      model = [peerCopy model];
      multiDeviceContextStoreDevices = [v17 initWithName:&stru_28584E620 deviceID:sourceDeviceID model:model companion:{objc_msgSend(peerCopy, "isCompanion")}];

      v23[0] = multiDeviceContextStoreDevices;
      syncChannel3 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      deviceUUID = [(_DKSync2Coordinator *)self deviceUUID];
      [syncChannel deactivateDevices:syncChannel3 remoteUserContextProxySourceDeviceUUID:deviceUUID];
    }

    else
    {
      multiDeviceContextStoreDevices = [(_DKSync3Coordinator *)self multiDeviceContextStoreDevices];
      v13 = [multiDeviceContextStoreDevices count];
      syncChannel3 = [MEMORY[0x277CFE0C8] syncChannel];
      v15 = os_log_type_enabled(syncChannel3, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        if (v15)
        {
          [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
        }

        syncChannel3 = [(_DKSync2Coordinator *)self deviceUUID];
        [syncChannel activateDevices:multiDeviceContextStoreDevices remoteUserContextProxySourceDeviceUUID:syncChannel3];
      }

      else if (v15)
      {
        [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleContextChangedNotification:(id)notification
{
  v72 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator handleContextChangedNotification:];
  }

  v35 = notificationCopy;
  userInfo = [notificationCopy userInfo];
  v54 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CFE3B0]];
  v34 = userInfo;
  v52 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CFE3A8]];
  v53 = [(__CFString *)v52 objectForKeyedSubscript:*MEMORY[0x277CFE3B8]];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  mEMORY[0x277CFE280] = [MEMORY[0x277CFE280] sharedInstance];
  v7 = [mEMORY[0x277CFE280] peersWithActiveTransports:1];

  v8 = [v7 countByEnumeratingWithState:&v56 objects:v71 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v57;
    do
    {
      v11 = 0;
      do
      {
        if (*v57 != v10)
        {
          objc_enumerationMutation(v7);
        }

        sourceDeviceID = [*(*(&v56 + 1) + 8 * v11) sourceDeviceID];
        if (sourceDeviceID)
        {
          mEMORY[0x277CFE280]2 = [MEMORY[0x277CFE280] sharedInstance];
          v14 = [mEMORY[0x277CFE280]2 existingPeerWithSourceDeviceID:sourceDeviceID];
          if (v14)
          {
            v15 = [mEMORY[0x277CFE280]2 activeTransportsForPeer:v14];
            syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
            v17 = os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG);
            if (v15)
            {
              if (v17)
              {
                v51 = [objc_opt_class() description];
                v28 = [v14 me];
                v29 = @"pseudo ";
                if (!v28)
                {
                  v29 = &stru_28584E620;
                }

                v47 = v29;
                identifier = [v14 identifier];
                model = [v14 model];
                v31 = &stru_28584E620;
                if (model)
                {
                  v37 = MEMORY[0x277CCACA8];
                  model2 = [v14 model];
                  v36 = [v37 stringWithFormat:@" (%@)", model2];
                  v31 = v36;
                }

                *buf = 138544386;
                v62 = v51;
                v63 = 2114;
                v64 = v47;
                v65 = 2114;
                v66 = identifier;
                v67 = 2114;
                v68 = v31;
                v69 = 2112;
                v70 = v52;
                _os_log_debug_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: Forwarding context changed notification to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
                if (model)
                {
                }
              }

              v26 = MEMORY[0x277CBEB98];
              v60 = v53;
              syncChannel2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
              v27 = [v26 setWithArray:syncChannel2];
              [(_DKSync3Coordinator *)self sendContextValuesToPeer:v14 registrationIdentifier:v54 keyPaths:v27];
            }

            else if (v17)
            {
              v50 = [objc_opt_class() description];
              v18 = [v14 me];
              v19 = @"pseudo ";
              if (!v18)
              {
                v19 = &stru_28584E620;
              }

              v45 = v19;
              identifier2 = [v14 identifier];
              model3 = [v14 model];
              v21 = &stru_28584E620;
              if (model3)
              {
                v39 = MEMORY[0x277CCACA8];
                model4 = [v14 model];
                v38 = [v39 stringWithFormat:@" (%@)", model4];
                v21 = v38;
              }

              *buf = 138544386;
              v62 = v50;
              v63 = 2114;
              v64 = v45;
              v65 = 2114;
              v66 = identifier2;
              v67 = 2114;
              v68 = v21;
              v69 = 2112;
              v70 = v52;
              _os_log_debug_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: Not forwarding context changed notification to unavailable %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
              if (model3)
              {

                v22 = model4;
                goto LABEL_27;
              }

              goto LABEL_28;
            }
          }

          else
          {
            syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
            if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
            {
              v50 = [objc_opt_class() description];
              v23 = [0 me];
              v24 = @"pseudo ";
              if (!v23)
              {
                v24 = &stru_28584E620;
              }

              v46 = v24;
              identifier2 = [0 identifier];
              model3 = [0 model];
              v25 = &stru_28584E620;
              if (model3)
              {
                v43 = MEMORY[0x277CCACA8];
                model5 = [0 model];
                v42 = [v43 stringWithFormat:@" (%@)", model5];
                v25 = v42;
              }

              *buf = 138544386;
              v62 = v50;
              v63 = 2114;
              v64 = v46;
              v65 = 2114;
              v66 = identifier2;
              v67 = 2114;
              v68 = v25;
              v69 = 2112;
              v70 = v52;
              _os_log_debug_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: Not forwarding context changed notification to unknown %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
              if (model3)
              {

                v22 = model5;
LABEL_27:
              }

LABEL_28:
            }
          }

          goto LABEL_32;
        }

        mEMORY[0x277CFE280]2 = [MEMORY[0x277CFE0C8] syncChannel];
        if (!os_log_type_enabled(mEMORY[0x277CFE280]2, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_33;
        }

        v14 = [objc_opt_class() description];
        *buf = 138543618;
        v62 = v14;
        v63 = 2112;
        v64 = v52;
        _os_log_debug_impl(&dword_245377000, mEMORY[0x277CFE280]2, OS_LOG_TYPE_DEBUG, "%{public}@: No need to forward context changed notification: %@", buf, 0x16u);
LABEL_32:

LABEL_33:
        ++v11;
      }

      while (v9 != v11);
      v32 = [v7 countByEnumeratingWithState:&v56 objects:v71 count:16];
      v9 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)remoteContextStorage:(id)storage hasKnowledgeOfKeyPath:(id)path
{
  pathCopy = path;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  if (pathCopy)
  {
    syncChannel2 = [MEMORY[0x277CFE358] keyPathWithKey:pathCopy];
    userContext = [MEMORY[0x277CFE318] userContext];
    v8 = [userContext hasKnowledgeOfContextualKeyPath:syncChannel2];
    syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
    v10 = os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
      }
    }

    else if (v10)
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }
  }

  else
  {
    syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)remoteContextStorage:(id)storage archivedObjectsForKeyPaths:(id)paths
{
  v22 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  if (pathsCopy)
  {
    syncChannel = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(pathsCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = pathsCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x277CFE358] keyPathWithKey:{*(*(&v17 + 1) + 8 * i), v17}];
          [syncChannel addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = [(_DKSync3Coordinator *)self archivedObjectsForKeyPaths:syncChannel];
  }

  else
  {
    syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)remoteContextStorage:(id)storage registrationIdentifier:(id)identifier setArchivedObjects:(id)objects peer:(id)peer
{
  objectsCopy = objects;
  peerCopy = peer;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  if (identifier && objectsCopy && peerCopy)
  {
    [(_DKSync3Coordinator *)self setArchivedObjects:objectsCopy peer:peerCopy];
  }

  else
  {
    syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }
  }
}

- (void)remoteContextStorage:(id)storage subscribeToChangesWithPeer:(id)peer registrationIdentifier:(id)identifier predicate:(id)predicate
{
  v62 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  peerCopy = peer;
  identifierCopy = identifier;
  predicateCopy = predicate;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    v28 = [objc_opt_class() description];
    if ([peerCopy me])
    {
      v29 = @"pseudo ";
    }

    else
    {
      v29 = &stru_28584E620;
    }

    identifier = [peerCopy identifier];
    model = [peerCopy model];
    if (model)
    {
      v36 = MEMORY[0x277CCACA8];
      model2 = [peerCopy model];
      v32 = [v36 stringWithFormat:@" (%@)", model2];
    }

    else
    {
      v32 = &stru_28584E620;
    }

    *buf = 138544642;
    v51 = v28;
    v52 = 2114;
    v53 = v29;
    v54 = 2114;
    v55 = identifier;
    v56 = 2114;
    v57 = v32;
    v58 = 2114;
    v59 = predicateCopy;
    v60 = 2114;
    v61 = identifierCopy;
    _os_log_debug_impl(&dword_245377000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Remote context storage has requested that %{public}@peer %{public}@%{public}@ be informed of changes to predicate %{public}@ using identifier %{public}@", buf, 0x3Eu);
    if (model)
    {
    }
  }

  v15 = [(_DKSync3Coordinator *)self registrationIdentifierForPeer:peerCopy remoteRegistrationIdentifier:identifierCopy];
  v16 = [objc_alloc(MEMORY[0x277CFE380]) initWithPlistDictionary:predicateCopy];
  v17 = v16;
  if (peerCopy && v15 && v16)
  {
    objc_initWeak(&location, self);
    keyPaths = [v17 keyPaths];
    v19 = MEMORY[0x277CFE350];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke;
    v44[3] = &unk_278E35058;
    objc_copyWeak(&v48, &location);
    v44[4] = self;
    v20 = identifierCopy;
    v45 = v20;
    v21 = peerCopy;
    v46 = v21;
    v22 = keyPaths;
    v47 = v22;
    v23 = [v19 registrationWithIdentifier:v15 contextualPredicate:v17 dismissalPolicy:0 deviceSet:0 clientIdentifier:@"com.apple.coreduetd" mustWake:1 callback:v44];
    userContext = [MEMORY[0x277CFE318] userContext];
    [userContext registerCallback:v23];

    syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
    {
      v40 = [objc_opt_class() description];
      v33 = [v21 me];
      v34 = &stru_28584E620;
      if (v33)
      {
        v34 = @"pseudo ";
      }

      v38 = v34;
      identifier2 = [v21 identifier];
      model3 = [v21 model];
      if (model3)
      {
        v37 = MEMORY[0x277CCACA8];
        self = [v21 model];
        v35 = [v37 stringWithFormat:@" (%@)", self];
      }

      else
      {
        v35 = &stru_28584E620;
      }

      *buf = 138544642;
      v51 = v40;
      v52 = 2114;
      v53 = v38;
      v54 = 2114;
      v55 = identifier2;
      v56 = 2114;
      v57 = v35;
      v58 = 2114;
      v59 = v17;
      v60 = 2114;
      v61 = v20;
      _os_log_debug_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully handled remote context storage requested that %{public}@peer %{public}@%{public}@ be informed of changes to predicate %{public}@ using identifier %{public}@", buf, 0x3Eu);
      if (model3)
      {
      }
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  else
  {
    syncChannel3 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:subscribeToChangesWithPeer:registrationIdentifier:predicate:];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)remoteContextStorage:(id)storage unsubscribeFromChangesWithPeer:(id)peer registrationIdentifier:(id)identifier predicate:(id)predicate
{
  v50 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  identifierCopy = identifier;
  predicateCopy = predicate;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  v13 = [objc_alloc(MEMORY[0x277CFE380]) initWithPlistDictionary:predicateCopy];
  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    v37 = [objc_opt_class() description];
    v26 = [peerCopy me];
    v27 = &stru_28584E620;
    v28 = @"pseudo ";
    if (!v26)
    {
      v28 = &stru_28584E620;
    }

    v35 = v28;
    identifier = [peerCopy identifier];
    model = [peerCopy model];
    if (model)
    {
      v31 = MEMORY[0x277CCACA8];
      model2 = [peerCopy model];
      v27 = [v31 stringWithFormat:@" (%@)", model2];
    }

    *buf = 138544642;
    v39 = v37;
    v40 = 2114;
    v41 = v35;
    v42 = 2114;
    v43 = identifier;
    v44 = 2114;
    v45 = v27;
    v46 = 2114;
    v47 = predicateCopy;
    v48 = 2114;
    v49 = identifierCopy;
    _os_log_debug_impl(&dword_245377000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Remote context storage has requested that %{public}@peer %{public}@%{public}@ no longer be informed of changes to predicate %{public}@ using identifier %{public}@", buf, 0x3Eu);
    if (model)
    {
    }
  }

  v15 = [(_DKSync3Coordinator *)self registrationIdentifierForPeer:peerCopy remoteRegistrationIdentifier:identifierCopy];
  v16 = v15;
  if (peerCopy && v15 && v13)
  {
    syncChannel3 = [MEMORY[0x277CFE350] registrationWithIdentifier:v15 contextualPredicate:v13 dismissalPolicy:0 deviceSet:0 clientIdentifier:@"com.apple.coreduetd" mustWake:1 callback:&__block_literal_global];
    if (syncChannel3)
    {
      userContext = [MEMORY[0x277CFE318] userContext];
      [userContext deregisterCallback:syncChannel3];

      syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
      {
        v36 = [objc_opt_class() description];
        v20 = [peerCopy me];
        v21 = &stru_28584E620;
        v22 = @"pseudo ";
        if (!v20)
        {
          v22 = &stru_28584E620;
        }

        v34 = v22;
        identifier2 = [peerCopy identifier];
        model3 = [peerCopy model];
        if (model3)
        {
          v32 = MEMORY[0x277CCACA8];
          model2 = [peerCopy model];
          v21 = [v32 stringWithFormat:@" (%@)", model2];
        }

        *buf = 138544642;
        v39 = v36;
        v40 = 2114;
        v41 = v34;
        v42 = 2114;
        v43 = identifier2;
        v44 = 2114;
        v45 = v21;
        v46 = 2114;
        v47 = v13;
        v48 = 2114;
        v49 = identifierCopy;
        _os_log_debug_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully handled remote context storage requested that %{public}@peer %{public}@%{public}@ no longer be informed of changes to predicate %{public}@ using identifier %{public}@", buf, 0x3Eu);
        if (model3)
        {
        }
      }
    }

    else
    {
      syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_ERROR))
      {
        [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:unsubscribeFromChangesWithPeer:registrationIdentifier:predicate:];
      }
    }
  }

  else
  {
    syncChannel3 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToContextValueChangeNotificationsWithRegistration:(id)registration deviceIDs:(id)ds handler:(id)handler
{
  registrationCopy = registration;
  dsCopy = ds;
  handlerCopy = handler;
  v11 = MEMORY[0x277CFE290];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __128___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_handler___block_invoke;
  v15[3] = &unk_278E350A0;
  v15[4] = self;
  v16 = registrationCopy;
  v17 = dsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dsCopy;
  v14 = registrationCopy;
  [v11 performSyncBlock:v15];
}

- (void)unsubscribeFromContextValueChangeNotificationsWithRegistration:(id)registration deviceIDs:(id)ds handler:(id)handler
{
  registrationCopy = registration;
  dsCopy = ds;
  handlerCopy = handler;
  v11 = MEMORY[0x277CFE290];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __132___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_handler___block_invoke;
  v15[3] = &unk_278E350A0;
  v15[4] = self;
  v16 = registrationCopy;
  v17 = dsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dsCopy;
  v14 = registrationCopy;
  [v11 performSyncBlock:v15];
}

- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)types handler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CFE290];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __116___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToDeviceStatusChangeNotificationsForDeviceTypes_handler___block_invoke;
  v9[3] = &unk_278E350C8;
  v10 = handlerCopy;
  typesCopy = types;
  v9[4] = self;
  v8 = handlerCopy;
  [v7 performSyncBlock:v9];
}

- (BOOL)subscribeToContextValueChangeNotificationsWithRegistration:(id)registration deviceIDs:(id)ds error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  dsCopy = ds;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) subscribeToContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
  }

  if ([registrationCopy isMultiDeviceRegistration])
  {
    v23 = dsCopy;
    v11 = [(_DKSync3Coordinator *)self peersForContextStoreDeviceIDs:dsCopy];
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    predicate = [registrationCopy predicate];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          transportMDCSRapport = self->_transportMDCSRapport;
          identifier = [registrationCopy identifier];
          plistDictionary = [predicate plistDictionary];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke;
          v27[3] = &unk_278E350F0;
          v27[4] = self;
          v27[5] = v16;
          v28 = registrationCopy;
          v29 = v26;
          [(_DKSyncRemoteContextStorage *)transportMDCSRapport subscribeToContextValueChangeNotificationsFromPeer:v16 registrationIdentifier:identifier predicate:plistDictionary highPriority:1 completion:v27];

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    dsCopy = v23;
    if (![obj count])
    {
      syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
      {
        [_DKSync3Coordinator(_CDRemoteUserContextServer) subscribeToContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
      }
    }
  }

  else
  {
    obj = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_CDRemoteUserContextServer) subscribeToContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)unsubscribeFromContextValueChangeNotificationsWithRegistration:(id)registration deviceIDs:(id)ds error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  dsCopy = ds;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) unsubscribeFromContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
  }

  if ([registrationCopy isMultiDeviceRegistration])
  {
    v23 = dsCopy;
    v11 = [(_DKSync3Coordinator *)self peersForContextStoreDeviceIDs:dsCopy];
    predicate = [registrationCopy predicate];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        v15 = 0;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * v15);
          transportMDCSRapport = self->_transportMDCSRapport;
          identifier = [registrationCopy identifier];
          plistDictionary = [predicate plistDictionary];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke;
          v26[3] = &unk_278E35118;
          v26[4] = self;
          v26[5] = v16;
          v27 = registrationCopy;
          [(_DKSyncRemoteContextStorage *)transportMDCSRapport unsubscribeFromContextValueChangeNotificationsFromPeer:v16 registrationIdentifier:identifier predicate:plistDictionary highPriority:1 completion:v26];

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    if (![obj count])
    {
      syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
      {
        [_DKSync3Coordinator(_CDRemoteUserContextServer) unsubscribeFromContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
      }
    }

    dsCopy = v23;
  }

  else
  {
    obj = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_CDRemoteUserContextServer) unsubscribeFromContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)types error:(id *)error
{
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) subscribeToDeviceStatusChangeNotificationsForDeviceTypes:error:];
  }

  watchingDeviceTypes = self->_watchingDeviceTypes;
  if (types)
  {
    if (!watchingDeviceTypes)
    {
      v9 = os_transaction_create();
LABEL_8:
      watchingDevicesTransaction = self->_watchingDevicesTransaction;
      self->_watchingDevicesTransaction = v9;
    }
  }

  else if (watchingDeviceTypes)
  {
    v9 = 0;
    goto LABEL_8;
  }

  self->_watchingDeviceTypes = types;
  return 1;
}

- (void)fetchPropertiesOfRemoteKeyPaths:(id)paths handler:(id)handler
{
  pathsCopy = paths;
  handlerCopy = handler;
  v8 = MEMORY[0x277CFE290];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91___DKSync3Coordinator__CDRemoteUserContextServer__fetchPropertiesOfRemoteKeyPaths_handler___block_invoke;
  v11[3] = &unk_278E35168;
  v11[4] = self;
  v12 = pathsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = pathsCopy;
  [v8 performSyncBlock:v11];
}

- (void)_fetchPropertiesOfRemoteKeyPaths:(id)paths handler:(id)handler
{
  v72 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  handlerCopy = handler;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) _fetchPropertiesOfRemoteKeyPaths:pathsCopy handler:?];
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  if (![pathsCopy count])
  {
    firstObject = [v9 firstObject];
    handlerCopy[2](handlerCopy, firstObject);
    goto LABEL_29;
  }

  v44 = v9;
  v45 = handlerCopy;
  v34 = pathsCopy;
  v10 = [(_DKSync3Coordinator *)self keyPathsByDeviceIDFromRemoteKeyPaths:pathsCopy];
  allKeys = [v10 allKeys];
  v12 = [allKeys mutableCopy];

  mEMORY[0x277CFE280] = [MEMORY[0x277CFE280] sharedInstance];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  firstObject = v10;
  v14 = [firstObject countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = v14;
  v46 = *v56;
  do
  {
    v16 = 0;
    do
    {
      if (*v56 != v46)
      {
        objc_enumerationMutation(firstObject);
      }

      v17 = *(*(&v55 + 1) + 8 * v16);
      v18 = [mEMORY[0x277CFE280] existingPeerWithSourceDeviceID:v17];
      if (v18)
      {
        firstObject2 = [firstObject objectForKeyedSubscript:v17];
        allObjects = [firstObject2 allObjects];
        syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
        if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
        {
          v42 = [objc_opt_class() description];
          v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(allObjects, "count")}];
          v26 = [v18 me];
          v27 = &stru_28584E620;
          v28 = @"pseudo ";
          if (!v26)
          {
            v28 = &stru_28584E620;
          }

          v37 = v28;
          identifier = [v18 identifier];
          model = [v18 model];
          if (model)
          {
            v29 = MEMORY[0x277CCACA8];
            model2 = [v18 model];
            v35 = [v29 stringWithFormat:@" (%@)", model2];
            v27 = v35;
          }

          v30 = _CDPrettyPrintCollection();
          *buf = 138544642;
          v60 = v42;
          v61 = 2112;
          v62 = v41;
          v63 = 2114;
          v64 = v37;
          v65 = 2114;
          v66 = identifier;
          v67 = 2114;
          v68 = v27;
          v69 = 2114;
          v38 = v30;
          v70 = v30;
          _os_log_debug_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: Fetching properties of %@ key paths from %{public}@peer %{public}@%{public}@: %{public}@", buf, 0x3Eu);
          if (model)
          {
          }
        }

        transportMDCSRapport = self->_transportMDCSRapport;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = &__92___DKSync3Coordinator__CDRemoteUserContextServer___fetchPropertiesOfRemoteKeyPaths_handler___block_invoke;
        v48[3] = &unk_278E35190;
        v48[4] = self;
        v49 = allObjects;
        v23 = v18;
        v50 = v23;
        v51 = v44;
        v52 = v12;
        v53 = v17;
        v54 = v45;
        v24 = allObjects;
        [(_DKSyncRemoteContextStorage *)transportMDCSRapport fetchContextValuesFromPeer:v23 forKeyPaths:v24 highPriority:1 completion:v48];

        goto LABEL_12;
      }

      syncChannel3 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_ERROR))
      {
        v31 = [objc_opt_class() description];
        *buf = 138543618;
        v60 = v31;
        v61 = 2114;
        v62 = v17;
        _os_log_error_impl(&dword_245377000, syncChannel3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch properties of key paths due to unknown peer: %{public}@", buf, 0x16u);
      }

      [v12 removeObject:v17];
      if (![v12 count])
      {
        firstObject2 = [v44 firstObject];
        v45[2](v45, firstObject2);
LABEL_12:
      }

      ++v16;
    }

    while (v15 != v16);
    v32 = [firstObject countByEnumeratingWithState:&v55 objects:v71 count:16];
    v15 = v32;
  }

  while (v32);
LABEL_27:

  pathsCopy = v34;
  v9 = v44;
  handlerCopy = v45;
LABEL_29:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)requestActivateDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277CFE290];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85___DKSync3Coordinator__CDRemoteUserContextServer__requestActivateDevicesWithHandler___block_invoke;
  v7[3] = &unk_278E351B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 performAsyncBlock:v7];
}

- (void)_requestActivateDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) _requestActivateDevicesWithHandler:];
  }

  multiDeviceContextStoreDevices = [(_DKSync3Coordinator *)self multiDeviceContextStoreDevices];
  v8 = [multiDeviceContextStoreDevices count];
  syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
  v10 = os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
    }

    syncChannel2 = [MEMORY[0x277CFE318] userContext];
    deviceUUID = [(_DKSync2Coordinator *)self deviceUUID];
    [syncChannel2 activateDevices:multiDeviceContextStoreDevices remoteUserContextProxySourceDeviceUUID:deviceUUID];
  }

  else if (v10)
  {
    [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)keyPathsByDeviceIDFromRemoteKeyPaths:(id)paths
{
  v21 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = pathsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        deviceID = [v10 deviceID];
        if (deviceID)
        {
          v12 = [v4 objectForKeyedSubscript:deviceID];
          if (!v12)
          {
            v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
            [v4 setObject:v12 forKeyedSubscript:deviceID];
          }

          v13 = [v10 key];
          [v12 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)archivedObjectsForKeyPaths:(id)paths
{
  v44 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    [(_DKSync3Coordinator(_CDRemoteUserContextServer) *)self archivedObjectsForKeyPaths:pathsCopy, syncChannel];
  }

  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  userContext = [MEMORY[0x277CFE318] userContext];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = pathsCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v6)
  {
    v26 = *v30;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [userContext objectForContextualKeyPath:{v9, v22}];
        v11 = [userContext lastModifiedDateForContextualKeyPath:v9];
        v12 = [v9 key];
        if (v10)
        {
          v28 = 0;
          v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v28];
          v14 = v28;
          if (v14)
          {
            syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
            if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_ERROR))
            {
              v24 = [objc_opt_class() description];
              domain = [v14 domain];
              code = [v14 code];
              *buf = 138544386;
              v34 = v24;
              v35 = 2112;
              v36 = v12;
              v37 = 2114;
              v38 = domain;
              v39 = 2048;
              v40 = code;
              v41 = 2112;
              v42 = v14;
              _os_log_error_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to archive context object for %@: %{public}@:%lld (%@)", buf, 0x34u);
            }
          }
        }

        else
        {
          v13 = 0;
        }

        v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        v17 = v16;
        if (v13)
        {
          [v16 setObject:v13 forKeyedSubscript:@"object"];
        }

        if (v11)
        {
          [v17 setObject:v11 forKeyedSubscript:@"modified"];
        }

        [v27 setObject:v17 forKeyedSubscript:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)setArchivedObjects:(id)objects peer:(id)peer
{
  v58 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  peerCopy = peer;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    v29 = [objc_opt_class() description];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objectsCopy, "count")}];
    if ([peerCopy me])
    {
      v31 = @"pseudo ";
    }

    else
    {
      v31 = &stru_28584E620;
    }

    identifier = [peerCopy identifier];
    model = [peerCopy model];
    if (model)
    {
      v35 = MEMORY[0x277CCACA8];
      model2 = [peerCopy model];
      v34 = [v35 stringWithFormat:@" (%@)", model2];
    }

    else
    {
      v34 = &stru_28584E620;
    }

    *buf = 138544386;
    v49 = v29;
    v50 = 2112;
    v51 = v30;
    v52 = 2114;
    v53 = v31;
    v54 = 2114;
    v55 = identifier;
    v56 = 2114;
    v57 = v34;
    _os_log_debug_impl(&dword_245377000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Setting %@ archived objects from %{public}@peer %{public}@%{public}@", buf, 0x34u);
    if (model)
    {
    }
  }

  supportedContextValueClasses = [MEMORY[0x277CFE340] supportedContextValueClasses];
  userContext = [MEMORY[0x277CFE318] userContext];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = objectsCopy;
  v40 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v40)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v9 = 0;
  v39 = *v44;
  do
  {
    v10 = 0;
    do
    {
      if (*v44 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v43 + 1) + 8 * v10);
      v12 = [obj objectForKeyedSubscript:v11];
      v13 = [v12 objectForKeyedSubscript:@"object"];
      v14 = [v12 objectForKeyedSubscript:@"modified"];
      if (!v13)
      {
        v15 = 0;
LABEL_13:
        syncChannel3 = [MEMORY[0x277CFE358] keyPathWithKey:v11];
        v19 = MEMORY[0x277CFE358];
        sourceDeviceID = [peerCopy sourceDeviceID];
        v21 = [v19 remoteKeyPathForKeyPath:syncChannel3 forDeviceID:sourceDeviceID];

        [userContext setObject:v15 lastModifiedDate:v14 forContextualKeyPath:v21];
        goto LABEL_14;
      }

      v42 = v9;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:supportedContextValueClasses fromData:v13 error:&v42];
      v16 = v42;

      if (v16)
      {
        syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
        if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_ERROR))
        {
          v22 = [objc_opt_class() description];
          domain = [(__CFString *)v16 domain];
          code = [(__CFString *)v16 code];
          *buf = 138544386;
          v49 = v22;
          v50 = 2112;
          v51 = v11;
          v52 = 2114;
          v53 = domain;
          v54 = 2048;
          v55 = code;
          v56 = 2112;
          v57 = v16;
          _os_log_error_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive context object for %@: %{public}@:%lld (%@)", buf, 0x34u);
        }

        v9 = v16;
        goto LABEL_13;
      }

      if ([(__CFString *)v15 conformsToProtocol:&unk_285852750]&& ([(__CFString *)v15 conformsToProtocol:&unk_2858527F0]& 1) != 0)
      {
        v9 = 0;
        goto LABEL_13;
      }

      syncChannel3 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_ERROR))
      {
        v25 = [objc_opt_class() description];
        v26 = objc_opt_class();
        *buf = 138543874;
        v49 = v25;
        v50 = 2114;
        v51 = v26;
        v52 = 2112;
        v53 = v15;
        _os_log_error_impl(&dword_245377000, syncChannel3, OS_LOG_TYPE_ERROR, "%{public}@: Rejecting invalid object of class %{public}@ for not implementing protocols: %@", buf, 0x20u);
      }

      v9 = 0;
LABEL_14:

      ++v10;
    }

    while (v40 != v10);
    v27 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    v40 = v27;
  }

  while (v27);
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)sendContextValuesToPeer:(id)peer registrationIdentifier:(id)identifier keyPaths:(id)paths
{
  v54 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  identifierCopy = identifier;
  pathsCopy = paths;
  underlyingQueue = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  syncChannel = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
  {
    v37 = [objc_opt_class() description];
    v17 = [peerCopy me];
    v18 = &stru_28584E620;
    v19 = @"pseudo ";
    if (!v17)
    {
      v19 = &stru_28584E620;
    }

    v33 = v19;
    identifier = [peerCopy identifier];
    model = [peerCopy model];
    if (model)
    {
      v21 = MEMORY[0x277CCACA8];
      model2 = [peerCopy model];
      v18 = [v21 stringWithFormat:@" (%@)", model2];
    }

    v22 = [pathsCopy valueForKey:@"key"];
    v23 = _CDPrettyPrintCollection();
    *buf = 138544386;
    v43 = v37;
    v44 = 2114;
    v45 = v33;
    v46 = 2114;
    v47 = identifier;
    v48 = 2114;
    v49 = v18;
    v50 = 2114;
    v51 = v23;
    _os_log_debug_impl(&dword_245377000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Sending context values to %{public}@peer %{public}@%{public}@ for key paths: %{public}@", buf, 0x34u);

    if (model)
    {
    }
  }

  if (peerCopy && identifierCopy && [pathsCopy count])
  {
    syncChannel3 = [(_DKSync3Coordinator *)self archivedObjectsForKeyPaths:pathsCopy];
    syncChannel2 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
    {
      v38 = [objc_opt_class() description];
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](syncChannel3, "count")}];
      v24 = &stru_28584E620;
      if ([peerCopy me])
      {
        v25 = @"pseudo ";
      }

      else
      {
        v25 = &stru_28584E620;
      }

      identifier2 = [peerCopy identifier];
      model3 = [peerCopy model];
      v32 = v25;
      if (model3)
      {
        v27 = MEMORY[0x277CCACA8];
        model4 = [peerCopy model];
        v24 = [v27 stringWithFormat:@" (%@)", model4];
      }

      v28 = [pathsCopy valueForKey:@"key"];
      v29 = _CDPrettyPrintCollection();
      *buf = 138544642;
      v43 = v38;
      v44 = 2112;
      v45 = v36;
      v46 = 2114;
      v47 = v32;
      v48 = 2114;
      v49 = identifier2;
      v50 = 2114;
      v51 = v24;
      v52 = 2114;
      v53 = v29;
      _os_log_debug_impl(&dword_245377000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ context values to send to %{public}@peer %{public}@%{public}@ for key paths: %{public}@", buf, 0x3Eu);

      if (model3)
      {
      }
    }

    transportMDCSRapport = self->_transportMDCSRapport;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke;
    v39[3] = &unk_278E35118;
    v39[4] = self;
    v40 = peerCopy;
    v41 = pathsCopy;
    [(_DKSyncRemoteContextStorage *)transportMDCSRapport sendContextValuesToPeer:v40 registrationIdentifier:identifierCopy archivedObjects:syncChannel3 highPriority:1 completion:v39];
  }

  else
  {
    syncChannel3 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_CDRemoteUserContextServer) sendContextValuesToPeer:registrationIdentifier:keyPaths:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)registrationIdentifierForPeer:(id)peer remoteRegistrationIdentifier:(id)identifier
{
  peerCopy = peer;
  identifierCopy = identifier;
  sourceDeviceID = [peerCopy sourceDeviceID];

  v8 = 0;
  if (identifierCopy && sourceDeviceID)
  {
    v9 = MEMORY[0x277CCACA8];
    sourceDeviceID2 = [peerCopy sourceDeviceID];
    v8 = [v9 stringWithFormat:@"%@ for device %@", identifierCopy, sourceDeviceID2];
  }

  return v8;
}

- (id)peersForContextStoreDeviceIDs:(id)ds
{
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  mEMORY[0x277CFE280] = [MEMORY[0x277CFE280] sharedInstance];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    v11 = 0x277CFE000uLL;
    *&v8 = 138543618;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [mEMORY[0x277CFE280] existingPeerWithSourceDeviceID:{v13, v19}];
        if (v14)
        {
          [v4 addObject:v14];
        }

        else
        {
          syncChannel = [*(v11 + 200) syncChannel];
          if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_ERROR))
          {
            v16 = [objc_opt_class() description];
            *buf = v19;
            v25 = v16;
            v26 = 2112;
            v27 = v13;
            _os_log_error_impl(&dword_245377000, syncChannel, OS_LOG_TYPE_ERROR, "%{public}@: Unknown peer context store device id: %@", buf, 0x16u);

            v11 = 0x277CFE000;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)handleStatusChangeForPeer:previousTransports:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_class() description];
  v2 = [v0 valueForKeyPath:@"deviceID"];
  OUTLINED_FUNCTION_5();
  v3 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleStatusChangeForPeer:previousTransports:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleStatusChangeForPeer:previousTransports:.cold.3()
{
  OUTLINED_FUNCTION_19();
  v1 = v0;
  v13 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() description];
  v3 = &stru_28584E620;
  [v1 me];
  v4 = [v1 identifier];
  v5 = [v1 model];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    [v1 model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    v3 = [v6 stringWithFormat:@" (%@)"];
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x2Au);
  if (v5)
  {
  }

  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
}

- (void)handleStatusChangeForPeer:previousTransports:.cold.4()
{
  OUTLINED_FUNCTION_19();
  v1 = v0;
  v13 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() description];
  v3 = &stru_28584E620;
  [v1 me];
  v4 = [v1 identifier];
  v5 = [v1 model];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    [v1 model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    v3 = [v6 stringWithFormat:@" (%@)"];
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x2Au);
  if (v5)
  {
  }

  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
}

- (void)handleContextChangedNotification:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end