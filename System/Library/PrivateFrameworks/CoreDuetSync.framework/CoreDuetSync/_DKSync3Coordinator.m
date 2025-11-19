@interface _DKSync3Coordinator
- (BOOL)remoteContextStorage:(id)a3 hasKnowledgeOfKeyPath:(id)a4;
- (BOOL)subscribeToContextValueChangeNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4 error:(id *)a5;
- (BOOL)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)a3 error:(id *)a4;
- (BOOL)unsubscribeFromContextValueChangeNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4 error:(id *)a5;
- (_DKSync3Coordinator)initWithContext:(id)a3;
- (id)archivedObjectsForKeyPaths:(id)a3;
- (id)keyPathsByDeviceIDFromRemoteKeyPaths:(id)a3;
- (id)multiDeviceContextStoreDevices;
- (id)peersForContextStoreDeviceIDs:(id)a3;
- (id)registrationIdentifierForPeer:(id)a3 remoteRegistrationIdentifier:(id)a4;
- (id)remoteContextStorage:(id)a3 archivedObjectsForKeyPaths:(id)a4;
- (void)_fetchPropertiesOfRemoteKeyPaths:(id)a3 handler:(id)a4;
- (void)_requestActivateDevicesWithHandler:(id)a3;
- (void)_syncDisabledToggle;
- (void)_syncEnabledToggle;
- (void)dealloc;
- (void)fetchPropertiesOfRemoteKeyPaths:(id)a3 handler:(id)a4;
- (void)handleContextChangedNotification:(id)a3;
- (void)handleStatusChangeForPeer:(id)a3 previousTransports:(int64_t)a4;
- (void)remoteContextStorage:(id)a3 registrationIdentifier:(id)a4 setArchivedObjects:(id)a5 peer:(id)a6;
- (void)remoteContextStorage:(id)a3 subscribeToChangesWithPeer:(id)a4 registrationIdentifier:(id)a5 predicate:(id)a6;
- (void)remoteContextStorage:(id)a3 unsubscribeFromChangesWithPeer:(id)a4 registrationIdentifier:(id)a5 predicate:(id)a6;
- (void)requestActivateDevicesWithHandler:(id)a3;
- (void)sendContextValuesToPeer:(id)a3 registrationIdentifier:(id)a4 keyPaths:(id)a5;
- (void)setArchivedObjects:(id)a3 peer:(id)a4;
- (void)setupStorage;
- (void)start;
- (void)subscribeToContextValueChangeNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4 handler:(id)a5;
- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)a3 handler:(id)a4;
- (void)unsubscribeFromContextValueChangeNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4 handler:(id)a5;
@end

@implementation _DKSync3Coordinator

- (_DKSync3Coordinator)initWithContext:(id)a3
{
  v12.receiver = self;
  v12.super_class = _DKSync3Coordinator;
  v3 = [(_DKSync2Coordinator *)&v12 initWithContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_watchingDeviceTypes = 0xFFFFLL;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277CFE3A0];
    v7 = [MEMORY[0x277CFE290] operationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39___DKSync3Coordinator_initWithContext___block_invoke;
    v10[3] = &unk_278E35008;
    v11 = v4;
    v8 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v10];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CFE3A0] object:0];

  v4.receiver = self;
  v4.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v4 dealloc];
}

- (void)_syncEnabledToggle
{
  v3 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v5.receiver = self;
  v5.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v5 _syncEnabledToggle];
  v4 = [MEMORY[0x277CFE318] userContext];
  if (objc_opt_respondsToSelector())
  {
    [v4 setRemoteUserContextProxy:self];
  }
}

- (void)_syncDisabledToggle
{
  v3 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v4.receiver = self;
  v4.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v4 _syncDisabledToggle];
}

- (void)setupStorage
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v11.receiver = self;
  v11.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v11 setupStorage];
  v4 = [(_DKSync2Coordinator *)self policyForSyncTransportType:1];
  if ([v4 syncDisabled])
  {

    goto LABEL_4;
  }

  v5 = [MEMORY[0x277CFE270] rapportSyncDisabled];

  if (v5)
  {
LABEL_4:
    v6 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [objc_opt_class() description];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_245377000, v6, OS_LOG_TYPE_INFO, "%{public}@: Rapport context store transport disabled by policy", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CFE318] userContext];
  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x277CFE288] sharedInstance];
    transportMDCSRapport = self->_transportMDCSRapport;
    self->_transportMDCSRapport = v8;

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
  v25 = [MEMORY[0x277CFE280] sharedInstance];
  v2 = [v25 peersWithActiveTransports:1];
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
        v10 = [v9 version];
        [v10 doubleValue];
        v12 = v11;

        if (v12 > 1.0)
        {
          v13 = objc_alloc(MEMORY[0x277CFE378]);
          v14 = [v9 sourceDeviceID];
          v15 = [v9 model];
          v16 = [v13 initWithName:&stru_28584E620 deviceID:v14 model:v15 companion:{objc_msgSend(v9, "isCompanion")}];

          if (v16)
          {
            [v3 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x277CFE0C8] syncChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v30 = [objc_opt_class() description];
              v18 = [v9 me];
              v19 = @"pseudo ";
              if (!v18)
              {
                v19 = &stru_28584E620;
              }

              v29 = v19;
              v31 = [v9 identifier];
              v20 = [v9 model];
              v21 = &stru_28584E620;
              if (v20)
              {
                v27 = MEMORY[0x277CCACA8];
                v28 = [v9 model];
                v26 = [v27 stringWithFormat:@" (%@)", v28];
                v21 = v26;
              }

              *buf = 138544130;
              v37 = v30;
              v38 = 2114;
              v39 = v29;
              v40 = 2114;
              v41 = v31;
              v42 = 2114;
              v43 = v21;
              _os_log_debug_impl(&dword_245377000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to convert %{public}@peer %{public}@%{public}@ to device, skipping", buf, 0x2Au);
              if (v20)
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

- (void)handleStatusChangeForPeer:(id)a3 previousTransports:(int64_t)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v7);

  v22.receiver = self;
  v22.super_class = _DKSync3Coordinator;
  [(_DKSync2Coordinator *)&v22 handleStatusChangeForPeer:v6 previousTransports:a4];
  if (!self->_watchingDeviceTypes)
  {
    v11 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
    }

    goto LABEL_18;
  }

  v8 = [MEMORY[0x277CFE280] sharedInstance];
  v9 = [v8 activeTransportsForPeer:v6];

  v10 = (v9 & 1) == 0;
  if (((a4 ^ v10) & 1) == 0)
  {
    v11 = [MEMORY[0x277CFE318] userContext];
    if ((a4 & 1) != 0 || (v9 & 1) == 0)
    {
      if ((a4 & v10) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }

      v16 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
      }

      v17 = objc_alloc(MEMORY[0x277CFE378]);
      v18 = [v6 sourceDeviceID];
      v19 = [v6 model];
      v12 = [v17 initWithName:&stru_28584E620 deviceID:v18 model:v19 companion:{objc_msgSend(v6, "isCompanion")}];

      v23[0] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v20 = [(_DKSync2Coordinator *)self deviceUUID];
      [v11 deactivateDevices:v14 remoteUserContextProxySourceDeviceUUID:v20];
    }

    else
    {
      v12 = [(_DKSync3Coordinator *)self multiDeviceContextStoreDevices];
      v13 = [v12 count];
      v14 = [MEMORY[0x277CFE0C8] syncChannel];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        if (v15)
        {
          [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
        }

        v14 = [(_DKSync2Coordinator *)self deviceUUID];
        [v11 activateDevices:v12 remoteUserContextProxySourceDeviceUUID:v14];
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

- (void)handleContextChangedNotification:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator handleContextChangedNotification:];
  }

  v35 = v3;
  v5 = [v3 userInfo];
  v54 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFE3B0]];
  v34 = v5;
  v52 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFE3A8]];
  v53 = [(__CFString *)v52 objectForKeyedSubscript:*MEMORY[0x277CFE3B8]];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = [MEMORY[0x277CFE280] sharedInstance];
  v7 = [v6 peersWithActiveTransports:1];

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

        v12 = [*(*(&v56 + 1) + 8 * v11) sourceDeviceID];
        if (v12)
        {
          v13 = [MEMORY[0x277CFE280] sharedInstance];
          v14 = [v13 existingPeerWithSourceDeviceID:v12];
          if (v14)
          {
            v15 = [v13 activeTransportsForPeer:v14];
            v16 = [MEMORY[0x277CFE0C8] syncChannel];
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
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
                v49 = [v14 identifier];
                v30 = [v14 model];
                v31 = &stru_28584E620;
                if (v30)
                {
                  v37 = MEMORY[0x277CCACA8];
                  v40 = [v14 model];
                  v36 = [v37 stringWithFormat:@" (%@)", v40];
                  v31 = v36;
                }

                *buf = 138544386;
                v62 = v51;
                v63 = 2114;
                v64 = v47;
                v65 = 2114;
                v66 = v49;
                v67 = 2114;
                v68 = v31;
                v69 = 2112;
                v70 = v52;
                _os_log_debug_impl(&dword_245377000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Forwarding context changed notification to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
                if (v30)
                {
                }
              }

              v26 = MEMORY[0x277CBEB98];
              v60 = v53;
              v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
              v27 = [v26 setWithArray:v16];
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
              v48 = [v14 identifier];
              v20 = [v14 model];
              v21 = &stru_28584E620;
              if (v20)
              {
                v39 = MEMORY[0x277CCACA8];
                v41 = [v14 model];
                v38 = [v39 stringWithFormat:@" (%@)", v41];
                v21 = v38;
              }

              *buf = 138544386;
              v62 = v50;
              v63 = 2114;
              v64 = v45;
              v65 = 2114;
              v66 = v48;
              v67 = 2114;
              v68 = v21;
              v69 = 2112;
              v70 = v52;
              _os_log_debug_impl(&dword_245377000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Not forwarding context changed notification to unavailable %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
              if (v20)
              {

                v22 = v41;
                goto LABEL_27;
              }

              goto LABEL_28;
            }
          }

          else
          {
            v16 = [MEMORY[0x277CFE0C8] syncChannel];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v50 = [objc_opt_class() description];
              v23 = [0 me];
              v24 = @"pseudo ";
              if (!v23)
              {
                v24 = &stru_28584E620;
              }

              v46 = v24;
              v48 = [0 identifier];
              v20 = [0 model];
              v25 = &stru_28584E620;
              if (v20)
              {
                v43 = MEMORY[0x277CCACA8];
                v44 = [0 model];
                v42 = [v43 stringWithFormat:@" (%@)", v44];
                v25 = v42;
              }

              *buf = 138544386;
              v62 = v50;
              v63 = 2114;
              v64 = v46;
              v65 = 2114;
              v66 = v48;
              v67 = 2114;
              v68 = v25;
              v69 = 2112;
              v70 = v52;
              _os_log_debug_impl(&dword_245377000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Not forwarding context changed notification to unknown %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
              if (v20)
              {

                v22 = v44;
LABEL_27:
              }

LABEL_28:
            }
          }

          goto LABEL_32;
        }

        v13 = [MEMORY[0x277CFE0C8] syncChannel];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_33;
        }

        v14 = [objc_opt_class() description];
        *buf = 138543618;
        v62 = v14;
        v63 = 2112;
        v64 = v52;
        _os_log_debug_impl(&dword_245377000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: No need to forward context changed notification: %@", buf, 0x16u);
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

- (BOOL)remoteContextStorage:(id)a3 hasKnowledgeOfKeyPath:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [MEMORY[0x277CFE358] keyPathWithKey:v4];
    v7 = [MEMORY[0x277CFE318] userContext];
    v8 = [v7 hasKnowledgeOfContextualKeyPath:v6];
    v9 = [MEMORY[0x277CFE0C8] syncChannel];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
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
    v6 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)remoteContextStorage:(id)a3 archivedObjectsForKeyPaths:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v6);

  if (v5)
  {
    v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
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
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = [(_DKSync3Coordinator *)self archivedObjectsForKeyPaths:v7];
  }

  else
  {
    v7 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)remoteContextStorage:(id)a3 registrationIdentifier:(id)a4 setArchivedObjects:(id)a5 peer:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v11);

  if (a4 && v9 && v10)
  {
    [(_DKSync3Coordinator *)self setArchivedObjects:v9 peer:v10];
  }

  else
  {
    v12 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }
  }
}

- (void)remoteContextStorage:(id)a3 subscribeToChangesWithPeer:(id)a4 registrationIdentifier:(id)a5 predicate:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v11 = a4;
  v12 = a5;
  v43 = a6;
  v13 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v28 = [objc_opt_class() description];
    if ([v11 me])
    {
      v29 = @"pseudo ";
    }

    else
    {
      v29 = &stru_28584E620;
    }

    v30 = [v11 identifier];
    v31 = [v11 model];
    if (v31)
    {
      v36 = MEMORY[0x277CCACA8];
      v6 = [v11 model];
      v32 = [v36 stringWithFormat:@" (%@)", v6];
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
    v55 = v30;
    v56 = 2114;
    v57 = v32;
    v58 = 2114;
    v59 = v43;
    v60 = 2114;
    v61 = v12;
    _os_log_debug_impl(&dword_245377000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Remote context storage has requested that %{public}@peer %{public}@%{public}@ be informed of changes to predicate %{public}@ using identifier %{public}@", buf, 0x3Eu);
    if (v31)
    {
    }
  }

  v15 = [(_DKSync3Coordinator *)self registrationIdentifierForPeer:v11 remoteRegistrationIdentifier:v12];
  v16 = [objc_alloc(MEMORY[0x277CFE380]) initWithPlistDictionary:v43];
  v17 = v16;
  if (v11 && v15 && v16)
  {
    objc_initWeak(&location, self);
    v18 = [v17 keyPaths];
    v19 = MEMORY[0x277CFE350];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke;
    v44[3] = &unk_278E35058;
    objc_copyWeak(&v48, &location);
    v44[4] = self;
    v20 = v12;
    v45 = v20;
    v21 = v11;
    v46 = v21;
    v22 = v18;
    v47 = v22;
    v23 = [v19 registrationWithIdentifier:v15 contextualPredicate:v17 dismissalPolicy:0 deviceSet:0 clientIdentifier:@"com.apple.coreduetd" mustWake:1 callback:v44];
    v24 = [MEMORY[0x277CFE318] userContext];
    [v24 registerCallback:v23];

    v25 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v40 = [objc_opt_class() description];
      v33 = [v21 me];
      v34 = &stru_28584E620;
      if (v33)
      {
        v34 = @"pseudo ";
      }

      v38 = v34;
      v39 = [v21 identifier];
      v41 = [v21 model];
      if (v41)
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
      v55 = v39;
      v56 = 2114;
      v57 = v35;
      v58 = 2114;
      v59 = v17;
      v60 = 2114;
      v61 = v20;
      _os_log_debug_impl(&dword_245377000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully handled remote context storage requested that %{public}@peer %{public}@%{public}@ be informed of changes to predicate %{public}@ using identifier %{public}@", buf, 0x3Eu);
      if (v41)
      {
      }
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:subscribeToChangesWithPeer:registrationIdentifier:predicate:];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)remoteContextStorage:(id)a3 unsubscribeFromChangesWithPeer:(id)a4 registrationIdentifier:(id)a5 predicate:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [objc_alloc(MEMORY[0x277CFE380]) initWithPlistDictionary:v11];
  v14 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v37 = [objc_opt_class() description];
    v26 = [v9 me];
    v27 = &stru_28584E620;
    v28 = @"pseudo ";
    if (!v26)
    {
      v28 = &stru_28584E620;
    }

    v35 = v28;
    v29 = [v9 identifier];
    v30 = [v9 model];
    if (v30)
    {
      v31 = MEMORY[0x277CCACA8];
      v33 = [v9 model];
      v27 = [v31 stringWithFormat:@" (%@)", v33];
    }

    *buf = 138544642;
    v39 = v37;
    v40 = 2114;
    v41 = v35;
    v42 = 2114;
    v43 = v29;
    v44 = 2114;
    v45 = v27;
    v46 = 2114;
    v47 = v11;
    v48 = 2114;
    v49 = v10;
    _os_log_debug_impl(&dword_245377000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Remote context storage has requested that %{public}@peer %{public}@%{public}@ no longer be informed of changes to predicate %{public}@ using identifier %{public}@", buf, 0x3Eu);
    if (v30)
    {
    }
  }

  v15 = [(_DKSync3Coordinator *)self registrationIdentifierForPeer:v9 remoteRegistrationIdentifier:v10];
  v16 = v15;
  if (v9 && v15 && v13)
  {
    v17 = [MEMORY[0x277CFE350] registrationWithIdentifier:v15 contextualPredicate:v13 dismissalPolicy:0 deviceSet:0 clientIdentifier:@"com.apple.coreduetd" mustWake:1 callback:&__block_literal_global];
    if (v17)
    {
      v18 = [MEMORY[0x277CFE318] userContext];
      [v18 deregisterCallback:v17];

      v19 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v36 = [objc_opt_class() description];
        v20 = [v9 me];
        v21 = &stru_28584E620;
        v22 = @"pseudo ";
        if (!v20)
        {
          v22 = &stru_28584E620;
        }

        v34 = v22;
        v23 = [v9 identifier];
        v24 = [v9 model];
        if (v24)
        {
          v32 = MEMORY[0x277CCACA8];
          v33 = [v9 model];
          v21 = [v32 stringWithFormat:@" (%@)", v33];
        }

        *buf = 138544642;
        v39 = v36;
        v40 = 2114;
        v41 = v34;
        v42 = 2114;
        v43 = v23;
        v44 = 2114;
        v45 = v21;
        v46 = 2114;
        v47 = v13;
        v48 = 2114;
        v49 = v10;
        _os_log_debug_impl(&dword_245377000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully handled remote context storage requested that %{public}@peer %{public}@%{public}@ no longer be informed of changes to predicate %{public}@ using identifier %{public}@", buf, 0x3Eu);
        if (v24)
        {
        }
      }
    }

    else
    {
      v19 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:unsubscribeFromChangesWithPeer:registrationIdentifier:predicate:];
      }
    }
  }

  else
  {
    v17 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate) remoteContextStorage:hasKnowledgeOfKeyPath:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToContextValueChangeNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CFE290];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __128___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_handler___block_invoke;
  v15[3] = &unk_278E350A0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performSyncBlock:v15];
}

- (void)unsubscribeFromContextValueChangeNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CFE290];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __132___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_handler___block_invoke;
  v15[3] = &unk_278E350A0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performSyncBlock:v15];
}

- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CFE290];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __116___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToDeviceStatusChangeNotificationsForDeviceTypes_handler___block_invoke;
  v9[3] = &unk_278E350C8;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 performSyncBlock:v9];
}

- (BOOL)subscribeToContextValueChangeNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) subscribeToContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
  }

  if ([v7 isMultiDeviceRegistration])
  {
    v23 = v8;
    v11 = [(_DKSync3Coordinator *)self peersForContextStoreDeviceIDs:v8];
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v25 = [v7 predicate];
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
          v18 = [v7 identifier];
          v19 = [v25 plistDictionary];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke;
          v27[3] = &unk_278E350F0;
          v27[4] = self;
          v27[5] = v16;
          v28 = v7;
          v29 = v26;
          [(_DKSyncRemoteContextStorage *)transportMDCSRapport subscribeToContextValueChangeNotificationsFromPeer:v16 registrationIdentifier:v18 predicate:v19 highPriority:1 completion:v27];

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v8 = v23;
    if (![obj count])
    {
      v20 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
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

- (BOOL)unsubscribeFromContextValueChangeNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) unsubscribeFromContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
  }

  if ([v7 isMultiDeviceRegistration])
  {
    v23 = v8;
    v11 = [(_DKSync3Coordinator *)self peersForContextStoreDeviceIDs:v8];
    v25 = [v7 predicate];
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
          v18 = [v7 identifier];
          v19 = [v25 plistDictionary];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke;
          v26[3] = &unk_278E35118;
          v26[4] = self;
          v26[5] = v16;
          v27 = v7;
          [(_DKSyncRemoteContextStorage *)transportMDCSRapport unsubscribeFromContextValueChangeNotificationsFromPeer:v16 registrationIdentifier:v18 predicate:v19 highPriority:1 completion:v26];

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    if (![obj count])
    {
      v20 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [_DKSync3Coordinator(_CDRemoteUserContextServer) unsubscribeFromContextValueChangeNotificationsWithRegistration:deviceIDs:error:];
      }
    }

    v8 = v23;
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

- (BOOL)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) subscribeToDeviceStatusChangeNotificationsForDeviceTypes:error:];
  }

  watchingDeviceTypes = self->_watchingDeviceTypes;
  if (a3)
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

  self->_watchingDeviceTypes = a3;
  return 1;
}

- (void)fetchPropertiesOfRemoteKeyPaths:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CFE290];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91___DKSync3Coordinator__CDRemoteUserContextServer__fetchPropertiesOfRemoteKeyPaths_handler___block_invoke;
  v11[3] = &unk_278E35168;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performSyncBlock:v11];
}

- (void)_fetchPropertiesOfRemoteKeyPaths:(id)a3 handler:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) _fetchPropertiesOfRemoteKeyPaths:v5 handler:?];
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  if (![v5 count])
  {
    v13 = [v9 firstObject];
    v6[2](v6, v13);
    goto LABEL_29;
  }

  v44 = v9;
  v45 = v6;
  v34 = v5;
  v10 = [(_DKSync3Coordinator *)self keyPathsByDeviceIDFromRemoteKeyPaths:v5];
  v11 = [v10 allKeys];
  v12 = [v11 mutableCopy];

  v47 = [MEMORY[0x277CFE280] sharedInstance];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v55 objects:v71 count:16];
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
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v55 + 1) + 8 * v16);
      v18 = [v47 existingPeerWithSourceDeviceID:v17];
      if (v18)
      {
        v19 = [v13 objectForKeyedSubscript:v17];
        v20 = [v19 allObjects];
        v21 = [MEMORY[0x277CFE0C8] syncChannel];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v42 = [objc_opt_class() description];
          v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
          v26 = [v18 me];
          v27 = &stru_28584E620;
          v28 = @"pseudo ";
          if (!v26)
          {
            v28 = &stru_28584E620;
          }

          v37 = v28;
          v40 = [v18 identifier];
          v39 = [v18 model];
          if (v39)
          {
            v29 = MEMORY[0x277CCACA8];
            v36 = [v18 model];
            v35 = [v29 stringWithFormat:@" (%@)", v36];
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
          v66 = v40;
          v67 = 2114;
          v68 = v27;
          v69 = 2114;
          v38 = v30;
          v70 = v30;
          _os_log_debug_impl(&dword_245377000, v21, OS_LOG_TYPE_DEBUG, "%{public}@: Fetching properties of %@ key paths from %{public}@peer %{public}@%{public}@: %{public}@", buf, 0x3Eu);
          if (v39)
          {
          }
        }

        transportMDCSRapport = self->_transportMDCSRapport;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = &__92___DKSync3Coordinator__CDRemoteUserContextServer___fetchPropertiesOfRemoteKeyPaths_handler___block_invoke;
        v48[3] = &unk_278E35190;
        v48[4] = self;
        v49 = v20;
        v23 = v18;
        v50 = v23;
        v51 = v44;
        v52 = v12;
        v53 = v17;
        v54 = v45;
        v24 = v20;
        [(_DKSyncRemoteContextStorage *)transportMDCSRapport fetchContextValuesFromPeer:v23 forKeyPaths:v24 highPriority:1 completion:v48];

        goto LABEL_12;
      }

      v25 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v31 = [objc_opt_class() description];
        *buf = 138543618;
        v60 = v31;
        v61 = 2114;
        v62 = v17;
        _os_log_error_impl(&dword_245377000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch properties of key paths due to unknown peer: %{public}@", buf, 0x16u);
      }

      [v12 removeObject:v17];
      if (![v12 count])
      {
        v19 = [v44 firstObject];
        v45[2](v45, v19);
LABEL_12:
      }

      ++v16;
    }

    while (v15 != v16);
    v32 = [v13 countByEnumeratingWithState:&v55 objects:v71 count:16];
    v15 = v32;
  }

  while (v32);
LABEL_27:

  v5 = v34;
  v9 = v44;
  v6 = v45;
LABEL_29:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)requestActivateDevicesWithHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFE290];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85___DKSync3Coordinator__CDRemoteUserContextServer__requestActivateDevicesWithHandler___block_invoke;
  v7[3] = &unk_278E351B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsyncBlock:v7];
}

- (void)_requestActivateDevicesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync3Coordinator(_CDRemoteUserContextServer) _requestActivateDevicesWithHandler:];
  }

  v7 = [(_DKSync3Coordinator *)self multiDeviceContextStoreDevices];
  v8 = [v7 count];
  v9 = [MEMORY[0x277CFE0C8] syncChannel];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
    }

    v9 = [MEMORY[0x277CFE318] userContext];
    v11 = [(_DKSync2Coordinator *)self deviceUUID];
    [v9 activateDevices:v7 remoteUserContextProxySourceDeviceUUID:v11];
  }

  else if (v10)
  {
    [_DKSync3Coordinator handleStatusChangeForPeer:previousTransports:];
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (id)keyPathsByDeviceIDFromRemoteKeyPaths:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
        v11 = [v10 deviceID];
        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
            [v4 setObject:v12 forKeyedSubscript:v11];
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

- (id)archivedObjectsForKeyPaths:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(_DKSync3Coordinator(_CDRemoteUserContextServer) *)self archivedObjectsForKeyPaths:v3, v4];
  }

  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x277CFE318] userContext];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
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
        v10 = [v5 objectForContextualKeyPath:{v9, v22}];
        v11 = [v5 lastModifiedDateForContextualKeyPath:v9];
        v12 = [v9 key];
        if (v10)
        {
          v28 = 0;
          v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v28];
          v14 = v28;
          if (v14)
          {
            v15 = [MEMORY[0x277CFE0C8] syncChannel];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v24 = [objc_opt_class() description];
              v18 = [v14 domain];
              v19 = [v14 code];
              *buf = 138544386;
              v34 = v24;
              v35 = 2112;
              v36 = v12;
              v37 = 2114;
              v38 = v18;
              v39 = 2048;
              v40 = v19;
              v41 = 2112;
              v42 = v14;
              _os_log_error_impl(&dword_245377000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to archive context object for %@: %{public}@:%lld (%@)", buf, 0x34u);
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

- (void)setArchivedObjects:(id)a3 peer:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v38 = a4;
  v7 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v29 = [objc_opt_class() description];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    if ([v38 me])
    {
      v31 = @"pseudo ";
    }

    else
    {
      v31 = &stru_28584E620;
    }

    v32 = [v38 identifier];
    v33 = [v38 model];
    if (v33)
    {
      v35 = MEMORY[0x277CCACA8];
      v4 = [v38 model];
      v34 = [v35 stringWithFormat:@" (%@)", v4];
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
    v55 = v32;
    v56 = 2114;
    v57 = v34;
    _os_log_debug_impl(&dword_245377000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Setting %@ archived objects from %{public}@peer %{public}@%{public}@", buf, 0x34u);
    if (v33)
    {
    }
  }

  v36 = [MEMORY[0x277CFE340] supportedContextValueClasses];
  v37 = [MEMORY[0x277CFE318] userContext];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v6;
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
        v18 = [MEMORY[0x277CFE358] keyPathWithKey:v11];
        v19 = MEMORY[0x277CFE358];
        v20 = [v38 sourceDeviceID];
        v21 = [v19 remoteKeyPathForKeyPath:v18 forDeviceID:v20];

        [v37 setObject:v15 lastModifiedDate:v14 forContextualKeyPath:v21];
        goto LABEL_14;
      }

      v42 = v9;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v36 fromData:v13 error:&v42];
      v16 = v42;

      if (v16)
      {
        v17 = [MEMORY[0x277CFE0C8] syncChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v22 = [objc_opt_class() description];
          v23 = [(__CFString *)v16 domain];
          v24 = [(__CFString *)v16 code];
          *buf = 138544386;
          v49 = v22;
          v50 = 2112;
          v51 = v11;
          v52 = 2114;
          v53 = v23;
          v54 = 2048;
          v55 = v24;
          v56 = 2112;
          v57 = v16;
          _os_log_error_impl(&dword_245377000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive context object for %@: %{public}@:%lld (%@)", buf, 0x34u);
        }

        v9 = v16;
        goto LABEL_13;
      }

      if ([(__CFString *)v15 conformsToProtocol:&unk_285852750]&& ([(__CFString *)v15 conformsToProtocol:&unk_2858527F0]& 1) != 0)
      {
        v9 = 0;
        goto LABEL_13;
      }

      v18 = [MEMORY[0x277CFE0C8] syncChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v25 = [objc_opt_class() description];
        v26 = objc_opt_class();
        *buf = 138543874;
        v49 = v25;
        v50 = 2114;
        v51 = v26;
        v52 = 2112;
        v53 = v15;
        _os_log_error_impl(&dword_245377000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Rejecting invalid object of class %{public}@ for not implementing protocols: %@", buf, 0x20u);
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

- (void)sendContextValuesToPeer:(id)a3 registrationIdentifier:(id)a4 keyPaths:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CFE290] underlyingQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v37 = [objc_opt_class() description];
    v17 = [v8 me];
    v18 = &stru_28584E620;
    v19 = @"pseudo ";
    if (!v17)
    {
      v19 = &stru_28584E620;
    }

    v33 = v19;
    v35 = [v8 identifier];
    v20 = [v8 model];
    if (v20)
    {
      v21 = MEMORY[0x277CCACA8];
      v31 = [v8 model];
      v18 = [v21 stringWithFormat:@" (%@)", v31];
    }

    v22 = [v10 valueForKey:@"key"];
    v23 = _CDPrettyPrintCollection();
    *buf = 138544386;
    v43 = v37;
    v44 = 2114;
    v45 = v33;
    v46 = 2114;
    v47 = v35;
    v48 = 2114;
    v49 = v18;
    v50 = 2114;
    v51 = v23;
    _os_log_debug_impl(&dword_245377000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Sending context values to %{public}@peer %{public}@%{public}@ for key paths: %{public}@", buf, 0x34u);

    if (v20)
    {
    }
  }

  if (v8 && v9 && [v10 count])
  {
    v13 = [(_DKSync3Coordinator *)self archivedObjectsForKeyPaths:v10];
    v14 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v38 = [objc_opt_class() description];
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v13, "count")}];
      v24 = &stru_28584E620;
      if ([v8 me])
      {
        v25 = @"pseudo ";
      }

      else
      {
        v25 = &stru_28584E620;
      }

      v34 = [v8 identifier];
      v26 = [v8 model];
      v32 = v25;
      if (v26)
      {
        v27 = MEMORY[0x277CCACA8];
        v30 = [v8 model];
        v24 = [v27 stringWithFormat:@" (%@)", v30];
      }

      v28 = [v10 valueForKey:@"key"];
      v29 = _CDPrettyPrintCollection();
      *buf = 138544642;
      v43 = v38;
      v44 = 2112;
      v45 = v36;
      v46 = 2114;
      v47 = v32;
      v48 = 2114;
      v49 = v34;
      v50 = 2114;
      v51 = v24;
      v52 = 2114;
      v53 = v29;
      _os_log_debug_impl(&dword_245377000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ context values to send to %{public}@peer %{public}@%{public}@ for key paths: %{public}@", buf, 0x3Eu);

      if (v26)
      {
      }
    }

    transportMDCSRapport = self->_transportMDCSRapport;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke;
    v39[3] = &unk_278E35118;
    v39[4] = self;
    v40 = v8;
    v41 = v10;
    [(_DKSyncRemoteContextStorage *)transportMDCSRapport sendContextValuesToPeer:v40 registrationIdentifier:v9 archivedObjects:v13 highPriority:1 completion:v39];
  }

  else
  {
    v13 = [MEMORY[0x277CFE0C8] syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DKSync3Coordinator(_CDRemoteUserContextServer) sendContextValuesToPeer:registrationIdentifier:keyPaths:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)registrationIdentifierForPeer:(id)a3 remoteRegistrationIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 sourceDeviceID];

  v8 = 0;
  if (v6 && v7)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 sourceDeviceID];
    v8 = [v9 stringWithFormat:@"%@ for device %@", v6, v10];
  }

  return v8;
}

- (id)peersForContextStoreDeviceIDs:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x277CFE280] sharedInstance];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v3;
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
        v14 = [v5 existingPeerWithSourceDeviceID:{v13, v19}];
        if (v14)
        {
          [v4 addObject:v14];
        }

        else
        {
          v15 = [*(v11 + 200) syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [objc_opt_class() description];
            *buf = v19;
            v25 = v16;
            v26 = 2112;
            v27 = v13;
            _os_log_error_impl(&dword_245377000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Unknown peer context store device id: %@", buf, 0x16u);

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