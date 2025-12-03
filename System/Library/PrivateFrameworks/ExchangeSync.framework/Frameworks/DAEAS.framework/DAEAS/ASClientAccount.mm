@interface ASClientAccount
- (ASClientAccount)initWithBackingAccountInfo:(id)info;
- (BOOL)reattemptInvitationLinkageForMetaData:(id)data inFolderWithId:(id)id;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag;
- (id)_copySetFlagsActionForRequest:(id)request;
- (id)_newPolicyManager;
- (id)mailboxes;
- (id)onBehalfOfBundleIdentifier;
- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary;
- (int)performFetchAttachmentRequest:(id)request consumer:(id)consumer;
- (int)performFetchMessageSearchResultRequests:(id)requests consumer:(id)consumer;
- (int)performMoveRequests:(id)requests consumer:(id)consumer;
- (int)performResolveRecipientsRequest:(id)request consumer:(id)consumer;
- (void)_addFoldersToDaemonMonitoring:(id)monitoring;
- (void)_daemonDied;
- (void)_folderHierarchyChanged;
- (void)_foldersThatExternalClientsCareAboutChanged;
- (void)_foldersUpdated:(id)updated;
- (void)_logStatus:(id)status;
- (void)_removeFoldersFromDaemonMonitoring:(id)monitoring;
- (void)_sync:(id)_sync withConsumer:(id)consumer;
- (void)clearFolderHierarchyCache;
- (void)dealloc;
- (void)performFolderChange:(id)change;
- (void)resolveRecipientsTask:(id)task completedWithStatus:(int64_t)status error:(id)error queriedEmailAddressToRecpient:(id)recpient;
- (void)resumeMonitoringFoldersWithIDs:(id)ds;
- (void)sendMailTask:(id)task completedWithStatus:(int64_t)status error:(id)error;
- (void)stopMonitoringAllFolders;
- (void)stopMonitoringFoldersForUpdates:(id)updates;
- (void)suspendMonitoringFoldersWithIDs:(id)ds;
@end

@implementation ASClientAccount

- (id)_newPolicyManager
{
  v3 = [ASClientPolicyManager alloc];

  return [(ASPolicyManager *)v3 initWithAccount:self];
}

- (ASClientAccount)initWithBackingAccountInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = ASClientAccount;
  v3 = [(ASAccount *)&v6 initWithBackingAccountInfo:info];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__logStatus_ name:*MEMORY[0x277D03898] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v4.receiver = self;
  v4.super_class = ASClientAccount;
  [(ASAccount *)&v4 dealloc];
}

- (id)onBehalfOfBundleIdentifier
{
  sourceApplicationBundleIdentifier = [(ASClientAccount *)self sourceApplicationBundleIdentifier];

  if (sourceApplicationBundleIdentifier)
  {
    sourceApplicationBundleIdentifier2 = [(ASClientAccount *)self sourceApplicationBundleIdentifier];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ASClientAccount;
    sourceApplicationBundleIdentifier2 = [(ASAccount *)&v6 onBehalfOfBundleIdentifier];
  }

  return sourceApplicationBundleIdentifier2;
}

- (void)clearFolderHierarchyCache
{
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  [folderHierarchy clearLocalCache];
}

- (void)_folderHierarchyChanged
{
  [(ASClientAccount *)self clearFolderHierarchyCache];
  v3 = MEMORY[0x277CCAB88];
  v4 = *MEMORY[0x277D036F0];
  accountID = [(ASClientAccount *)self accountID];
  v7 = [v3 notificationWithName:v4 object:accountID];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter performSelectorOnMainThread:sel_postNotification_ withObject:v7 waitUntilDone:0];
}

- (void)_foldersThatExternalClientsCareAboutChanged
{
  [(ASClientAccount *)self clearFolderHierarchyCache];
  v3 = MEMORY[0x277CCAB88];
  v4 = *MEMORY[0x277D036F8];
  accountID = [(ASClientAccount *)self accountID];
  v7 = [v3 notificationWithName:v4 object:accountID];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter performSelectorOnMainThread:sel_postNotification_ withObject:v7 waitUntilDone:0];
}

- (void)resumeMonitoringFoldersWithIDs:(id)ds
{
  v17 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        [(NSMutableSet *)self->_folderIDsOnRemoteHold removeObject:*(*(&v12 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [dsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  mEMORY[0x277D07AF0] = [MEMORY[0x277D07AF0] sharedConnection];
  accountID = [(ASClientAccount *)self accountID];
  [mEMORY[0x277D07AF0] resumeWatchingFoldersWithKeys:dsCopy forAccountID:accountID];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_foldersUpdated:(id)updated
{
  v30 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  if (updatedCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:updatedCopy];
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
    selfCopy = self;
    v26 = 2112;
    v27 = updatedCopy;
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

    [(NSMutableSet *)folderIDsOnRemoteHold addObjectsFromArray:updatedCopy];
    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, v7))
    {
      accountID = [(ASClientAccount *)self accountID];
      *buf = 138412546;
      selfCopy = accountID;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_24A0AC000, v12, v7, "Ping received, posting note for accountID: %@ folderIDs: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCAB88];
    v15 = *MEMORY[0x277D036E8];
    accountID2 = [(ASClientAccount *)self accountID];
    allObjects = [v5 allObjects];
    v23 = allObjects;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v19 = [v14 notificationWithName:v15 object:accountID2 userInfo:v18];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter performSelectorOnMainThread:sel_postNotification_ withObject:v19 waitUntilDone:0];
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

    allObjects = [(NSMutableSet *)self->_daemonMonitoredFolders allObjects];
    [(NSMutableSet *)self->_daemonMonitoredFolders removeAllObjects];
    [(ASClientAccount *)self monitorFoldersForUpdates:allObjects];
  }

  taskManager = [(ASAccount *)self taskManager];
  policyManager = [taskManager policyManager];

  if ([policyManager updatingPolicy])
  {
    [policyManager requestPolicyUpdate];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_logStatus:(id)status
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    stateString = [(ASAccount *)self stateString];
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = stateString;
    _os_log_impl(&dword_24A0AC000, v4, v5, "%p: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addFoldersToDaemonMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  daemonMonitoredFolders = self->_daemonMonitoredFolders;
  v8 = monitoringCopy;
  if (!daemonMonitoredFolders)
  {
    v6 = objc_opt_new();
    v7 = self->_daemonMonitoredFolders;
    self->_daemonMonitoredFolders = v6;

    monitoringCopy = v8;
    daemonMonitoredFolders = self->_daemonMonitoredFolders;
  }

  [(NSMutableSet *)daemonMonitoredFolders addObjectsFromArray:monitoringCopy];
}

- (void)_removeFoldersFromDaemonMonitoring:(id)monitoring
{
  v15 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [monitoringCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(monitoringCopy);
        }

        [(NSMutableSet *)self->_daemonMonitoredFolders removeObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [monitoringCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringFoldersForUpdates:(id)updates
{
  v17 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    daemonMonitoredFolders = self->_daemonMonitoredFolders;
    v11 = 134218498;
    selfCopy = self;
    v13 = 2112;
    v14 = updatesCopy;
    v15 = 2112;
    v16 = daemonMonitoredFolders;
    _os_log_impl(&dword_24A0AC000, v5, v6, "%p: Stop monitoring folders %@, compare to daemonMonitoredFolders %@", &v11, 0x20u);
  }

  [(ASClientAccount *)self _removeFoldersFromDaemonMonitoring:updatesCopy];
  mEMORY[0x277D07AF0] = [MEMORY[0x277D07AF0] sharedConnection];
  accountID = [(ASClientAccount *)self accountID];
  [mEMORY[0x277D07AF0] stopWatchingFoldersWithKeys:updatesCopy forAccountID:accountID];

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
    selfCopy = self;
    v10 = 2112;
    v11 = daemonMonitoredFolders;
    _os_log_impl(&dword_24A0AC000, v3, v4, "%p: Stop monitoring all folders, which are %@", &v8, 0x16u);
  }

  if ([(NSMutableSet *)self->_daemonMonitoredFolders count])
  {
    allObjects = [(NSMutableSet *)self->_daemonMonitoredFolders allObjects];
    [(ASClientAccount *)self stopMonitoringFoldersForUpdates:allObjects];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)reattemptInvitationLinkageForMetaData:(id)data inFolderWithId:(id)id
{
  v14[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  idCopy = id;
  if (-[ASAccount enabledForDADataclass:](self, "enabledForDADataclass:", 4) && [dataCopy length])
  {
    mEMORY[0x277D07AF0] = [MEMORY[0x277D07AF0] sharedConnection];
    v14[0] = dataCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    accountID = [(ASClientAccount *)self accountID];
    v11 = [mEMORY[0x277D07AF0] processMeetingRequests:v9 deliveryIdsToClear:0 deliveryIdsToSoftClear:0 inFolderWithId:idCopy forAccountWithId:accountID];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v20 = 0;
  v9 = [v7 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v20];

  v10 = v20;
  if (v9)
  {
    v11 = +[ASLocalDBHelper sharedInstance];
    accountID = [(ASClientAccount *)self accountID];
    changeTrackingID = [(ASAccount *)self changeTrackingID];
    [v11 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

    v14 = [v9 unactionableICSRepresentationForAccount:self];
    if (summary)
    {
      *summary = [v9 subject];
    }

    v15 = +[ASLocalDBHelper sharedInstance];
    accountID2 = [(ASClientAccount *)self accountID];
    [v15 calCloseDatabaseForAccountID:accountID2 save:0];
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

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag
{
  v8 = MEMORY[0x277D07AF0];
  tagCopy = tag;
  deletedCopy = deleted;
  addedCopy = added;
  sharedConnection = [v8 sharedConnection];
  allObjects = [addedCopy allObjects];

  allObjects2 = [deletedCopy allObjects];

  accountID = [(ASClientAccount *)self accountID];
  LOBYTE(self) = [sharedConnection setFolderIdsThatExternalClientsCareAboutAdded:allObjects deleted:allObjects2 foldersTag:tagCopy forAccountID:accountID];

  return self;
}

- (void)suspendMonitoringFoldersWithIDs:(id)ds
{
  v13 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  mEMORY[0x277D07AF0] = [MEMORY[0x277D07AF0] sharedConnection];
  accountID = [(ASClientAccount *)self accountID];
  v7 = [mEMORY[0x277D07AF0] suspendWatchingFoldersWithKeys:dsCopy forAccountID:accountID];

  if ((v7 & 1) == 0)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = 138412290;
      v12 = dsCopy;
      _os_log_impl(&dword_24A0AC000, v8, v9, "Unable to suspend folders: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sync:(id)_sync withConsumer:(id)consumer
{
  v11[1] = *MEMORY[0x277D85DE8];
  _syncCopy = _sync;
  [(ASClientAccount *)self setConsumer:consumer forTask:_syncCopy];
  folderID = [_syncCopy folderID];
  v11[0] = folderID;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(ASClientAccount *)self suspendMonitoringFoldersWithIDs:v8];

  taskManager = [(ASAccount *)self taskManager];
  [taskManager submitQueuedTask:_syncCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendMailTask:(id)task completedWithStatus:(int64_t)status error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v9 = [(ASClientAccount *)self consumerForTask:taskCopy];
  v10 = v9;
  if (status == 118 || status == 2)
  {
    if (objc_opt_respondsToSelector())
    {
      context = [taskCopy context];
      [v10 messageDidSendWithContext:context sentBytesCount:objc_msgSend(taskCopy receivedBytesCount:{"sentBytesCount"), objc_msgSend(taskCopy, "receivedBytesCount")}];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_9;
      }

      context = [taskCopy context];
      [v10 messageDidSendWithContext:context];
    }
  }

  else
  {
    [v9 actionFailed:status forTask:taskCopy error:errorCopy];
  }

LABEL_9:
  [(ASClientAccount *)self removeConsumerForTask:taskCopy];
}

- (int)performMoveRequests:(id)requests consumer:(id)consumer
{
  v45 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  consumerCopy = consumer;
  v7 = objc_opt_new();
  [v7 setDataclass:1];
  [v7 setPushedMoveRequests:requestsCopy];
  [v7 setDelegate:self];
  taskID = [v7 taskID];
  v8 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = requestsCopy;
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
        message = [v15 message];
        if (message)
        {
          [v8 addObject:message];
          fromFolder = [v15 fromFolder];

          v12 = fromFolder;
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
    mEMORY[0x277D07AF0] = [MEMORY[0x277D07AF0] sharedConnection];
    accountID = [(ASClientAccount *)self accountID];
    [mEMORY[0x277D07AF0] asyncProcessMeetingRequests:0 deliveryIdsToClear:v8 deliveryIdsToSoftClear:0 inFolderWithId:v12 forAccountWithId:accountID];
  }

  selfCopy = self;
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
        message2 = [v25 message];
        fromFolder2 = [v25 fromFolder];
        toFolder = [v25 toFolder];
        [v7 addSourceID:message2 sourceFolder:fromFolder2 destinatonFolder:toFolder];
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v22);
  }

  [(ASClientAccount *)selfCopy setConsumer:consumerCopy forTask:v7];
  taskManager = [(ASAccount *)selfCopy taskManager];
  [taskManager submitQueuedTask:v7];

  v30 = *MEMORY[0x277D85DE8];
  return taskID;
}

- (int)performFetchAttachmentRequest:(id)request consumer:(id)consumer
{
  requestCopy = request;
  consumerCopy = consumer;
  attachmentName = [requestCopy attachmentName];

  if (!attachmentName)
  {
    [ASClientAccount performFetchAttachmentRequest:a2 consumer:self];
  }

  protocol = [(ASAccount *)self protocol];
  fetchAttachmentsWithItemOperations = [protocol fetchAttachmentsWithItemOperations];

  v12 = off_278FC6E40;
  if (!fetchAttachmentsWithItemOperations)
  {
    v12 = off_278FC6DB8;
  }

  v13 = objc_alloc(*v12);
  messageID = [requestCopy messageID];
  attachmentName2 = [requestCopy attachmentName];
  v16 = [v13 initForMessageServerID:messageID andAttachmentName:attachmentName2];

  LODWORD(messageID) = [v16 taskID];
  [v16 setDelegate:self];
  [(ASClientAccount *)self setConsumer:consumerCopy forTask:v16];

  taskManager = [(ASAccount *)self taskManager];
  [taskManager submitQueuedTask:v16];

  return messageID;
}

- (int)performFetchMessageSearchResultRequests:(id)requests consumer:(id)consumer
{
  v35 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  consumerCopy = consumer;
  v7 = objc_opt_new();
  taskID = [v7 taskID];
  selfCopy = self;
  [v7 setDelegate:self];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = requestsCopy;
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
        mimeSupport = [v7 mimeSupport];
        bodyFormat = [v13 bodyFormat];
        if (mimeSupport == -1)
        {
          [v7 setMIMESupport:bodyFormat];
        }

        else if (bodyFormat != -1)
        {
          mimeSupport2 = [v7 mimeSupport];
          if (mimeSupport2 != [v13 bodyFormat])
          {
            [(ASClientAccount *)a2 performFetchMessageSearchResultRequests:selfCopy consumer:obj];
          }
        }

        [v7 setBodyTruncationBytes:{objc_msgSend(v13, "maxSize")}];
        v17 = [ASItemOperationsFetchCommand alloc];
        folderID = [v13 folderID];
        serverID = [v13 serverID];
        longID = [v13 longID];
        v21 = [(ASItemOperationsFetchCommand *)v17 initWithCollectionID:folderID withServerID:serverID withLongID:longID];

        [v8 addObject:v21];
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  [v7 setCommands:v8];
  [(ASClientAccount *)selfCopy setConsumer:consumerCopy forTask:v7];
  taskManager = [(ASAccount *)selfCopy taskManager];
  [taskManager submitQueuedTask:v7];

  v23 = *MEMORY[0x277D85DE8];
  return taskID;
}

- (void)resolveRecipientsTask:(id)task completedWithStatus:(int64_t)status error:(id)error queriedEmailAddressToRecpient:(id)recpient
{
  taskCopy = task;
  errorCopy = error;
  recpientCopy = recpient;
  v12 = [(ASClientAccount *)self consumerForTask:taskCopy];
  v13 = v12;
  if (status == 2)
  {
    [v12 resolvedRecipientsByEmailAddress:recpientCopy];
  }

  else
  {
    [v12 actionFailed:status forTask:taskCopy error:errorCopy];
  }
}

- (int)performResolveRecipientsRequest:(id)request consumer:(id)consumer
{
  consumerCopy = consumer;
  requestCopy = request;
  v8 = [ASResolveRecipientsTask alloc];
  emailAddresses = [requestCopy emailAddresses];

  v10 = [(ASResolveRecipientsTask *)v8 initForCertificatesWithEmailAddresses:emailAddresses];
  LODWORD(v8) = [v10 taskID];
  [v10 setDelegate:self];
  [(ASClientAccount *)self setConsumer:consumerCopy forTask:v10];

  taskManager = [(ASAccount *)self taskManager];
  [taskManager submitQueuedTask:v10];

  return v8;
}

- (void)performFolderChange:(id)change
{
  v4 = MEMORY[0x277D07AF0];
  changeCopy = change;
  sharedConnection = [v4 sharedConnection];
  accountID = [(ASClientAccount *)self accountID];
  [sharedConnection processFolderChange:changeCopy forAccountWithID:accountID];

  [(ASClientAccount *)self clearFolderHierarchyCache];
}

- (id)_copySetFlagsActionForRequest:(id)request
{
  requestCopy = request;
  onFlags = [requestCopy onFlags];
  offFlags = [requestCopy offFlags];
  if (((onFlags | offFlags) & 3) != 0)
  {
    v6 = [ASEmailChangeFlagsAction alloc];
    messageID = [requestCopy messageID];
    v8 = [(ASEmailChangeFlagsAction *)v6 initWithServerID:messageID read:onFlags & 1 flagged:(onFlags >> 1) & 1 changedFlags:offFlags | onFlags];
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
  _visibleASFolders = [(ASAccount *)self _visibleASFolders];
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = _visibleASFolders;
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