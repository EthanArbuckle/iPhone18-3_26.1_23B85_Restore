@interface NWAppStateHandler
- (BOOL)identifierShouldBeIgnored:(id)ignored;
- (BOOL)rbsProcessStateToForeground:(id)foreground;
- (NWAppStateHandler)init;
- (id)trackerForPid:(int)pid;
- (void)_removeStateTracker:(id)tracker;
- (void)handleStateUpdate:(id)update forProcess:(id)process;
@end

@implementation NWAppStateHandler

- (id)trackerForPid:(int)pid
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  appBundlesMonitored = self->_appBundlesMonitored;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__NWAppStateHandler_trackerForPid___block_invoke;
  v6[3] = &unk_27996DB48;
  pidCopy = pid;
  v6[4] = &v8;
  [(NSMutableDictionary *)appBundlesMonitored enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __35__NWAppStateHandler_trackerForPid___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 pid] == *(a1 + 40))
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
          *a4 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeStateTracker:(id)tracker
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    [NWAppStateHandler _removeStateTracker:];
  }

  v9 = trackerCopy;
  identifier = [trackerCopy identifier];
  if (!identifier)
  {
    [NWAppStateHandler _removeStateTracker:];
  }

  v6 = identifier;
  v7 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:identifier];
  if (!v7)
  {
    [NWAppStateHandler _removeStateTracker:];
  }

  v8 = v7;
  [v7 removeObject:v9];
  if (![v8 count])
  {
    [(NSMutableDictionary *)self->_appBundlesMonitored removeObjectForKey:v6];
  }
}

- (BOOL)identifierShouldBeIgnored:(id)ignored
{
  ignoredCopy = ignored;
  v4 = ignoredCopy;
  if (identifierShouldBeIgnored__onceToken != -1)
  {
    [NWAppStateHandler identifierShouldBeIgnored:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!ignoredCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [identifierShouldBeIgnored__kIdentifiersToIgnore containsObject:v4];
LABEL_6:

  return v5;
}

void __47__NWAppStateHandler_identifierShouldBeIgnored___block_invoke()
{
  v0 = identifierShouldBeIgnored__kIdentifiersToIgnore;
  identifierShouldBeIgnored__kIdentifiersToIgnore = &unk_286D3E570;
}

- (void)handleStateUpdate:(id)update forProcess:(id)process
{
  v35 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  processCopy = process;
  identity = [processCopy identity];
  embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
  if (!embeddedApplicationIdentifier)
  {
    embeddedApplicationIdentifier = [identity xpcServiceIdentifier];
    if (!embeddedApplicationIdentifier)
    {
      if (![processCopy hasConsistentLaunchdJob] || (objc_msgSend(processCopy, "consistentJobLabel"), (embeddedApplicationIdentifier = objc_claimAutoreleasedReturnValue()) == 0))
      {
        bundle = [processCopy bundle];
        embeddedApplicationIdentifier = [bundle identifier];
      }
    }
  }

  if (![(NWAppStateHandler *)self identifierShouldBeIgnored:embeddedApplicationIdentifier])
  {
    if (!embeddedApplicationIdentifier)
    {
      v27 = NStatGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v32 = processCopy;
        _os_log_impl(&dword_25BA3A000, v27, OS_LOG_TYPE_ERROR, "handleStateUpdate no identifier from process %@", buf, 0xCu);
      }

      v12 = NStatGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v32 = updateCopy;
        _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_ERROR, "handleStateUpdate failed identifier lookup was from update %@", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v11 = [processCopy pid];
    v12 = pid_to_uuid(v11);
    state = [updateCopy state];
    v14 = [(NWAppStateHandler *)self rbsProcessStateToForeground:state];

    obj = self->_appBundlesMonitored;
    objc_sync_enter(obj);
    v15 = [(NWAppStateHandler *)self trackerForPid:v11];
    v16 = v15;
    if (!v14)
    {
      if (v15)
      {
        [(NWAppStateHandler *)self _removeStateTracker:v15];
      }

      goto LABEL_32;
    }

    state2 = [updateCopy state];
    taskState = [state2 taskState];

    if (taskState)
    {
      if (!v16)
      {
LABEL_16:
        v25 = objc_alloc_init(NWAppStateTracker);

        if (!v25)
        {
          v16 = 0;
          goto LABEL_32;
        }

        [(NWAppStateTracker *)v25 setIdentifier:embeddedApplicationIdentifier];
        [(NWAppStateTracker *)v25 setUuid:v12];
        [(NWAppStateTracker *)v25 setPid:v11];
        v26 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:embeddedApplicationIdentifier];
        if (!v26)
        {
          v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [(NSMutableDictionary *)self->_appBundlesMonitored setObject:v26 forKey:embeddedApplicationIdentifier];
        }

        [v26 addObject:v25];
        goto LABEL_31;
      }

      uuid = [(NWAppStateTracker *)v16 uuid];
      v20 = [uuid isEqual:v12];

      if (v20)
      {
        identifier = [(NWAppStateTracker *)v16 identifier];
        v22 = [identifier isEqualToString:embeddedApplicationIdentifier];

        if (v22)
        {
LABEL_32:

          objc_sync_exit(obj);
LABEL_33:

          goto LABEL_34;
        }

        identifier2 = [(NWAppStateTracker *)v16 identifier];
        v24 = NStatGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v32 = v11;
          *&v32[4] = 2112;
          *&v32[6] = embeddedApplicationIdentifier;
          v33 = 2112;
          v34 = identifier2;
          _os_log_impl(&dword_25BA3A000, v24, OS_LOG_TYPE_DEFAULT, "State change notification for pid %d now has bundle %@, not matching previous %@", buf, 0x1Cu);
        }

        [(NWAppStateHandler *)self _removeStateTracker:v16];
        goto LABEL_16;
      }

      v26 = NStatGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(NWAppStateTracker *)v16 uuid];
        *buf = 67109634;
        *v32 = v11;
        *&v32[4] = 2112;
        *&v32[6] = v12;
        v33 = 2112;
        v34 = uuid2;
        _os_log_impl(&dword_25BA3A000, v26, OS_LOG_TYPE_ERROR, "State change notification for pid %d has uuid %@, not matching previous %@", buf, 0x1Cu);
      }
    }

    else
    {
      v26 = NStatGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v32 = v16;
        _os_log_impl(&dword_25BA3A000, v26, OS_LOG_TYPE_ERROR, "Process state is unknown %@", buf, 0xCu);
      }
    }

    v25 = v16;
LABEL_31:

    v16 = v25;
    goto LABEL_32;
  }

LABEL_34:

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)rbsProcessStateToForeground:(id)foreground
{
  foregroundCopy = foreground;
  taskState = [foregroundCopy taskState];
  if (taskState == 4 || taskState == 2)
  {
    endowmentNamespaces = [foregroundCopy endowmentNamespaces];
    v7 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NWAppStateHandler)init
{
  v8.receiver = self;
  v8.super_class = NWAppStateHandler;
  v2 = [(NWAppStateHandler *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appBundlesMonitored = v2->_appBundlesMonitored;
    v2->_appBundlesMonitored = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appsWithStates = v2->_appsWithStates;
    v2->_appsWithStates = v5;

    if (!v2->_appBundlesMonitored || !v2->_appsWithStates)
    {

      v2 = 0;
    }
  }

  objc_storeStrong(&sharedInstance, v2);
  return v2;
}

@end