@interface ASClientAccount
- (ASClientAccount)initWithBackingAccountInfo:(id)a3;
- (BOOL)reattemptInvitationLinkageForMetaData:(id)a3 inFolderWithId:(id)a4;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5;
- (id)_copySetFlagsActionForRequest:(id)a3;
- (id)_newPolicyManager;
- (id)mailboxes;
- (id)onBehalfOfBundleIdentifier;
- (id)unactionableICSRepresentationForMetaData:(id)a3 inFolderWithId:(id)a4 outSummary:(id *)a5;
- (int)performFetchAttachmentRequest:(id)a3 consumer:(id)a4;
- (int)performFetchMessageSearchResultRequests:(id)a3 consumer:(id)a4;
- (int)performMoveRequests:(id)a3 consumer:(id)a4;
- (int)performResolveRecipientsRequest:(id)a3 consumer:(id)a4;
- (void)_addFoldersToDaemonMonitoring:(id)a3;
- (void)_daemonDied;
- (void)_folderHierarchyChanged;
- (void)_foldersThatExternalClientsCareAboutChanged;
- (void)_foldersUpdated:(id)a3;
- (void)_logStatus:(id)a3;
- (void)_removeFoldersFromDaemonMonitoring:(id)a3;
- (void)_sync:(id)a3 withConsumer:(id)a4;
- (void)clearFolderHierarchyCache;
- (void)dealloc;
- (void)performFolderChange:(id)a3;
- (void)resolveRecipientsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 queriedEmailAddressToRecpient:(id)a6;
- (void)resumeMonitoringFoldersWithIDs:(id)a3;
- (void)sendMailTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5;
- (void)stopMonitoringAllFolders;
- (void)stopMonitoringFoldersForUpdates:(id)a3;
- (void)suspendMonitoringFoldersWithIDs:(id)a3;
@end

@implementation ASClientAccount

- (id)_newPolicyManager
{
  v3 = [ASClientPolicyManager alloc];

  return [(ASPolicyManager *)v3 initWithAccount:self];
}

- (ASClientAccount)initWithBackingAccountInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASClientAccount;
  v3 = [(ASAccount *)&v6 initWithBackingAccountInfo:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel__logStatus_ name:*MEMORY[0x277D03898] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v4.receiver = self;
  v4.super_class = ASClientAccount;
  [(ASAccount *)&v4 dealloc];
}

- (id)onBehalfOfBundleIdentifier
{
  v3 = [(ASClientAccount *)self sourceApplicationBundleIdentifier];

  if (v3)
  {
    v4 = [(ASClientAccount *)self sourceApplicationBundleIdentifier];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ASClientAccount;
    v4 = [(ASAccount *)&v6 onBehalfOfBundleIdentifier];
  }

  return v4;
}

- (void)clearFolderHierarchyCache
{
  v2 = [(ASAccount *)self folderHierarchy];
  [v2 clearLocalCache];
}

- (void)_folderHierarchyChanged
{
  [(ASClientAccount *)self clearFolderHierarchyCache];
  v3 = MEMORY[0x277CCAB88];
  v4 = *MEMORY[0x277D036F0];
  v5 = [(ASClientAccount *)self accountID];
  v7 = [v3 notificationWithName:v4 object:v5];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 performSelectorOnMainThread:sel_postNotification_ withObject:v7 waitUntilDone:0];
}

- (void)_foldersThatExternalClientsCareAboutChanged
{
  [(ASClientAccount *)self clearFolderHierarchyCache];
  v3 = MEMORY[0x277CCAB88];
  v4 = *MEMORY[0x277D036F8];
  v5 = [(ASClientAccount *)self accountID];
  v7 = [v3 notificationWithName:v4 object:v5];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 performSelectorOnMainThread:sel_postNotification_ withObject:v7 waitUntilDone:0];
}

- (void)resumeMonitoringFoldersWithIDs:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableSet *)self->_folderIDsOnRemoteHold removeObject:*(*(&v12 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x277D07AF0] sharedConnection];
  v10 = [(ASClientAccount *)self accountID];
  [v9 resumeWatchingFoldersWithKeys:v4 forAccountID:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_foldersUpdated:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  [v5 intersectSet:self->_daemonMonitoredFolders];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    daemonMonitoredFolders = self->_daemonMonitoredFolders;
    *buf = 134218498;
    v25 = self;
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = daemonMonitoredFolders;
    _os_log_impl(&dword_24A0AC000, v6, v7, "%p: Ping received for folder ids %@, compare to daemonMonitoredFolders %@", buf, 0x20u);
  }

  if ([v5 count])
  {
    folderIDsOnRemoteHold = self->_folderIDsOnRemoteHold;
    if (!folderIDsOnRemoteHold)
    {
      v10 = objc_opt_new();
      v11 = self->_folderIDsOnRemoteHold;
      self->_folderIDsOnRemoteHold = v10;

      folderIDsOnRemoteHold = self->_folderIDsOnRemoteHold;
    }

    [(NSMutableSet *)folderIDsOnRemoteHold addObjectsFromArray:v4];
    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, v7))
    {
      v13 = [(ASClientAccount *)self accountID];
      *buf = 138412546;
      v25 = v13;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_24A0AC000, v12, v7, "Ping received, posting note for accountID: %@ folderIDs: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCAB88];
    v15 = *MEMORY[0x277D036E8];
    v16 = [(ASClientAccount *)self accountID];
    v17 = [v5 allObjects];
    v23 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v19 = [v14 notificationWithName:v15 object:v16 userInfo:v18];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 performSelectorOnMainThread:sel_postNotification_ withObject:v19 waitUntilDone:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_daemonDied
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_daemonMonitoredFolders count])
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v3, v4))
    {
      daemonMonitoredFolders = self->_daemonMonitoredFolders;
      v10 = 138412290;
      v11 = daemonMonitoredFolders;
      _os_log_impl(&dword_24A0AC000, v3, v4, "Daemon died, trying to resend folder monitoring info for folders: [%@]", &v10, 0xCu);
    }

    v6 = [(NSMutableSet *)self->_daemonMonitoredFolders allObjects];
    [(NSMutableSet *)self->_daemonMonitoredFolders removeAllObjects];
    [(ASClientAccount *)self monitorFoldersForUpdates:v6];
  }

  v7 = [(ASAccount *)self taskManager];
  v8 = [v7 policyManager];

  if ([v8 updatingPolicy])
  {
    [v8 requestPolicyUpdate];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_logStatus:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [(ASAccount *)self stateString];
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_24A0AC000, v4, v5, "%p: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addFoldersToDaemonMonitoring:(id)a3
{
  v4 = a3;
  daemonMonitoredFolders = self->_daemonMonitoredFolders;
  v8 = v4;
  if (!daemonMonitoredFolders)
  {
    v6 = objc_opt_new();
    v7 = self->_daemonMonitoredFolders;
    self->_daemonMonitoredFolders = v6;

    v4 = v8;
    daemonMonitoredFolders = self->_daemonMonitoredFolders;
  }

  [(NSMutableSet *)daemonMonitoredFolders addObjectsFromArray:v4];
}

- (void)_removeFoldersFromDaemonMonitoring:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableSet *)self->_daemonMonitoredFolders removeObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringFoldersForUpdates:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    daemonMonitoredFolders = self->_daemonMonitoredFolders;
    v11 = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = daemonMonitoredFolders;
    _os_log_impl(&dword_24A0AC000, v5, v6, "%p: Stop monitoring folders %@, compare to daemonMonitoredFolders %@", &v11, 0x20u);
  }

  [(ASClientAccount *)self _removeFoldersFromDaemonMonitoring:v4];
  v8 = [MEMORY[0x277D07AF0] sharedConnection];
  v9 = [(ASClientAccount *)self accountID];
  [v8 stopWatchingFoldersWithKeys:v4 forAccountID:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringAllFolders
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    daemonMonitoredFolders = self->_daemonMonitoredFolders;
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = daemonMonitoredFolders;
    _os_log_impl(&dword_24A0AC000, v3, v4, "%p: Stop monitoring all folders, which are %@", &v8, 0x16u);
  }

  if ([(NSMutableSet *)self->_daemonMonitoredFolders count])
  {
    v6 = [(NSMutableSet *)self->_daemonMonitoredFolders allObjects];
    [(ASClientAccount *)self stopMonitoringFoldersForUpdates:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)reattemptInvitationLinkageForMetaData:(id)a3 inFolderWithId:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (-[ASAccount enabledForDADataclass:](self, "enabledForDADataclass:", 4) && [v6 length])
  {
    v8 = [MEMORY[0x277D07AF0] sharedConnection];
    v14[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v10 = [(ASClientAccount *)self accountID];
    v11 = [v8 processMeetingRequests:v9 deliveryIdsToClear:0 deliveryIdsToSoftClear:0 inFolderWithId:v7 forAccountWithId:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)unactionableICSRepresentationForMetaData:(id)a3 inFolderWithId:(id)a4 outSummary:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAAC8];
  v8 = a3;
  v20 = 0;
  v9 = [v7 unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v20];

  v10 = v20;
  if (v9)
  {
    v11 = +[ASLocalDBHelper sharedInstance];
    v12 = [(ASClientAccount *)self accountID];
    v13 = [(ASAccount *)self changeTrackingID];
    [v11 calOpenDatabaseForAccountID:v12 clientID:v13];

    v14 = [v9 unactionableICSRepresentationForAccount:self];
    if (a5)
    {
      *a5 = [v9 subject];
    }

    v15 = +[ASLocalDBHelper sharedInstance];
    v16 = [(ASClientAccount *)self accountID];
    [v15 calCloseDatabaseForAccountID:v16 save:0];
  }

  else
  {
    v15 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v15, v17))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_24A0AC000, v15, v17, "Unable to decode meeting request: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5
{
  v8 = MEMORY[0x277D07AF0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 sharedConnection];
  v13 = [v11 allObjects];

  v14 = [v10 allObjects];

  v15 = [(ASClientAccount *)self accountID];
  LOBYTE(self) = [v12 setFolderIdsThatExternalClientsCareAboutAdded:v13 deleted:v14 foldersTag:v9 forAccountID:v15];

  return self;
}

- (void)suspendMonitoringFoldersWithIDs:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D07AF0] sharedConnection];
  v6 = [(ASClientAccount *)self accountID];
  v7 = [v5 suspendWatchingFoldersWithKeys:v4 forAccountID:v6];

  if ((v7 & 1) == 0)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_24A0AC000, v8, v9, "Unable to suspend folders: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sync:(id)a3 withConsumer:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(ASClientAccount *)self setConsumer:a4 forTask:v6];
  v7 = [v6 folderID];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(ASClientAccount *)self suspendMonitoringFoldersWithIDs:v8];

  v9 = [(ASAccount *)self taskManager];
  [v9 submitQueuedTask:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendMailTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(ASClientAccount *)self consumerForTask:v12];
  v10 = v9;
  if (a4 == 118 || a4 == 2)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v12 context];
      [v10 messageDidSendWithContext:v11 sentBytesCount:objc_msgSend(v12 receivedBytesCount:{"sentBytesCount"), objc_msgSend(v12, "receivedBytesCount")}];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_9;
      }

      v11 = [v12 context];
      [v10 messageDidSendWithContext:v11];
    }
  }

  else
  {
    [v9 actionFailed:a4 forTask:v12 error:v8];
  }

LABEL_9:
  [(ASClientAccount *)self removeConsumerForTask:v12];
}

- (int)performMoveRequests:(id)a3 consumer:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v34 = a4;
  v7 = objc_opt_new();
  [v7 setDataclass:1];
  [v7 setPushedMoveRequests:v6];
  [v7 setDelegate:self];
  v32 = [v7 taskID];
  v8 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = [v15 message];
        if (v16)
        {
          [v8 addObject:v16];
          v17 = [v15 fromFolder];

          v12 = v17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if ([v8 count])
  {
    v18 = [MEMORY[0x277D07AF0] sharedConnection];
    v19 = [(ASClientAccount *)self accountID];
    [v18 asyncProcessMeetingRequests:0 deliveryIdsToClear:v8 deliveryIdsToSoftClear:0 inFolderWithId:v12 forAccountWithId:v19];
  }

  v33 = self;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        v26 = [v25 message];
        v27 = [v25 fromFolder];
        v28 = [v25 toFolder];
        [v7 addSourceID:v26 sourceFolder:v27 destinatonFolder:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v22);
  }

  [(ASClientAccount *)v33 setConsumer:v34 forTask:v7];
  v29 = [(ASAccount *)v33 taskManager];
  [v29 submitQueuedTask:v7];

  v30 = *MEMORY[0x277D85DE8];
  return v32;
}

- (int)performFetchAttachmentRequest:(id)a3 consumer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 attachmentName];

  if (!v9)
  {
    [ASClientAccount performFetchAttachmentRequest:a2 consumer:self];
  }

  v10 = [(ASAccount *)self protocol];
  v11 = [v10 fetchAttachmentsWithItemOperations];

  v12 = off_278FC6E40;
  if (!v11)
  {
    v12 = off_278FC6DB8;
  }

  v13 = objc_alloc(*v12);
  v14 = [v7 messageID];
  v15 = [v7 attachmentName];
  v16 = [v13 initForMessageServerID:v14 andAttachmentName:v15];

  LODWORD(v14) = [v16 taskID];
  [v16 setDelegate:self];
  [(ASClientAccount *)self setConsumer:v8 forTask:v16];

  v17 = [(ASAccount *)self taskManager];
  [v17 submitQueuedTask:v16];

  return v14;
}

- (int)performFetchMessageSearchResultRequests:(id)a3 consumer:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27 = a4;
  v7 = objc_opt_new();
  v26 = [v7 taskID];
  v28 = self;
  [v7 setDelegate:self];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v7 mimeSupport];
        v15 = [v13 bodyFormat];
        if (v14 == -1)
        {
          [v7 setMIMESupport:v15];
        }

        else if (v15 != -1)
        {
          v16 = [v7 mimeSupport];
          if (v16 != [v13 bodyFormat])
          {
            [(ASClientAccount *)a2 performFetchMessageSearchResultRequests:v28 consumer:obj];
          }
        }

        [v7 setBodyTruncationBytes:{objc_msgSend(v13, "maxSize")}];
        v17 = [ASItemOperationsFetchCommand alloc];
        v18 = [v13 folderID];
        v19 = [v13 serverID];
        v20 = [v13 longID];
        v21 = [(ASItemOperationsFetchCommand *)v17 initWithCollectionID:v18 withServerID:v19 withLongID:v20];

        [v8 addObject:v21];
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  [v7 setCommands:v8];
  [(ASClientAccount *)v28 setConsumer:v27 forTask:v7];
  v22 = [(ASAccount *)v28 taskManager];
  [v22 submitQueuedTask:v7];

  v23 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)resolveRecipientsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 queriedEmailAddressToRecpient:(id)a6
{
  v14 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(ASClientAccount *)self consumerForTask:v14];
  v13 = v12;
  if (a4 == 2)
  {
    [v12 resolvedRecipientsByEmailAddress:v11];
  }

  else
  {
    [v12 actionFailed:a4 forTask:v14 error:v10];
  }
}

- (int)performResolveRecipientsRequest:(id)a3 consumer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [ASResolveRecipientsTask alloc];
  v9 = [v7 emailAddresses];

  v10 = [(ASResolveRecipientsTask *)v8 initForCertificatesWithEmailAddresses:v9];
  LODWORD(v8) = [v10 taskID];
  [v10 setDelegate:self];
  [(ASClientAccount *)self setConsumer:v6 forTask:v10];

  v11 = [(ASAccount *)self taskManager];
  [v11 submitQueuedTask:v10];

  return v8;
}

- (void)performFolderChange:(id)a3
{
  v4 = MEMORY[0x277D07AF0];
  v5 = a3;
  v6 = [v4 sharedConnection];
  v7 = [(ASClientAccount *)self accountID];
  [v6 processFolderChange:v5 forAccountWithID:v7];

  [(ASClientAccount *)self clearFolderHierarchyCache];
}

- (id)_copySetFlagsActionForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 onFlags];
  v5 = [v3 offFlags];
  if (((v4 | v5) & 3) != 0)
  {
    v6 = [ASEmailChangeFlagsAction alloc];
    v7 = [v3 messageID];
    v8 = [(ASEmailChangeFlagsAction *)v6 initWithServerID:v7 read:v4 & 1 flagged:(v4 >> 1) & 1 changedFlags:v5 | v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mailboxes
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [(ASAccount *)self _visibleASFolders];
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 dataclass] == 1)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = DAFolderArrayForASFolderArray(v5);

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)performFetchAttachmentRequest:(uint64_t)a1 consumer:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASClientAccount.m" lineNumber:323 description:@"attachment fetch task must have a valid attachment name."];
}

- (void)performFetchMessageSearchResultRequests:(uint64_t)a3 consumer:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ASClientAccount.m" lineNumber:349 description:{@"conflicting sync mimeSupport flags in requests: %@", a3}];
}

- (void)performMailboxRequests:(uint64_t)a3 mailbox:previousTag:clientWinsOnSyncConflict:consumer:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ASClientAccount.m" lineNumber:439 description:{@"conflicting sync mimeSupport flags in requests: %@", a3}];
}

@end