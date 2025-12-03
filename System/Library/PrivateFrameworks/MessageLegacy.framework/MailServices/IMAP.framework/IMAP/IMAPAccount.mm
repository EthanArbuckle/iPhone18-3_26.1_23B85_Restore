@interface IMAPAccount
+ (void)_deleteQueuedMailboxes:(id)mailboxes;
- (BOOL)_deleteMailbox:(id)mailbox;
- (BOOL)_registerPushNotificationPrefix:(id)prefix forMailboxNames:(id)names;
- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid;
- (BOOL)canFetch;
- (BOOL)canMailboxBeDeleted:(id)deleted;
- (BOOL)connectAndAuthenticate:(id)authenticate;
- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command;
- (BOOL)getMailboxListWithConnection:(id)connection statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox;
- (BOOL)hasPendingOfflineOperations;
- (BOOL)isMailboxLocalForType:(int)type;
- (BOOL)isSpecialMailbox:(id)mailbox;
- (BOOL)mustRegisterForPushOnNextConnection;
- (BOOL)needToSynchronizeMailboxCaches;
- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (BOOL)shouldRegisterForPush;
- (BOOL)storeMailboxTypeOnServer:(int)server;
- (BOOL)verifyESearchSupportWithBlock:(id)block;
- (IMAPAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (double)lastPushRegistration;
- (id)_copyMailboxListForNames:(id)names;
- (id)_copyMailboxListPreferenceForKey:(id)key;
- (id)_dataForTemporaryUid:(unsigned int)uid;
- (id)_externalMailboxUids;
- (id)_fileSystemServerPathPrefix;
- (id)_infoForMatchingURL:(id)l;
- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children onlySubscribed:(BOOL)subscribed statusDataItems:(id)items withConnection:(id)connection statusEntriesByMailbox:(id *)mailbox;
- (id)_mailboxPathPrefix;
- (id)_mailboxUidForName:(id)name;
- (id)_nameForMailboxUid:(id)uid;
- (id)allMailMailboxUid;
- (id)apsTopic;
- (id)connectionForStore:(id)store delegate:(id)delegate options:(int)options;
- (id)copyDiagnosticInformation;
- (id)errorForResponse:(id)response;
- (id)fetchLimits;
- (id)flagChangesForMailboxPath:(id)path UID:(unsigned int)d connectTime:(double)time;
- (id)hostname;
- (id)lastKnownCapabilities;
- (id)mailboxNamesForPushRegistration;
- (id)mailboxesRegisteredForPushByHash;
- (id)notificationNamesForPrefix:(id)prefix mailboxUids:(id)uids;
- (id)offlineCache;
- (id)offlineCacheDirectoryPath;
- (id)offlineCacheIfExists;
- (id)offlineCacheIfOffline;
- (id)pushedMailboxUids;
- (id)registerPushNotificationPrefix:(id)prefix forMailboxUids:(id)uids;
- (id)separatorChar;
- (id)serverPathPrefix;
- (id)serverPathPrefixAccountValue;
- (id)specialUseAttributeForType:(int)type;
- (id)specialUseAttributesForMailbox:(id)mailbox;
- (int)supportedPushServiceLevel;
- (unint64_t)greatestInboxUid;
- (unsigned)readBufferSize;
- (void)_apsDeviceTokenChanged:(id)changed;
- (void)_didSynchronizeMailboxCachesAndFoundChanges:(BOOL)changes;
- (void)_flushOfflineCache;
- (void)_mailboxListingChanged;
- (void)_mailboxesWereRemovedFromTree:(id)tree withFileSystemPaths:(id)paths;
- (void)_purgeStaleFlagChanges;
- (void)_readCustomInfoFromMailboxCache:(id)cache;
- (void)_registerForDeviceTokenChanges;
- (void)_releaseAllConnectionsAndCallSuper:(BOOL)super edgeForcedOnly:(BOOL)only ifIdleForTimeInterval:(double)interval saveOfflineCache:(BOOL)cache;
- (void)_renameLocalSpecialMailboxesToName:(id)name;
- (void)_schedulePushRegistrationConnection;
- (void)_setCapabilities:(id)capabilities;
- (void)_synchronizeAccountWithServer;
- (void)_synchronouslyLoadListingForParent:(id)parent;
- (void)_unregisterForDeviceTokenChanges;
- (void)_updatePushedMailboxesAndNotify:(BOOL)notify;
- (void)_updateSeparatorAndNamespaceWithConnection:(id)connection;
- (void)_waitForMailboxListingLoadToComplete;
- (void)_writeCustomInfoToMailboxCache:(id)cache;
- (void)acquireNetworkAssertion;
- (void)changePushedMailboxUidsAdded:(id)added deleted:(id)deleted;
- (void)checkInConnection:(id)connection destroy:(BOOL)destroy;
- (void)checkInConnectionsForStore:(id)store;
- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id *)command;
- (void)dealloc;
- (void)filterMailboxList:(id)list forMailbox:(id)mailbox options:(int)options;
- (void)flushOfflineCache;
- (void)handleAlertResponse:(id)response;
- (void)messagesAdded:(id)added;
- (void)networkChanged;
- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization;
- (void)releaseAllForcedConnections;
- (void)releaseNetworkAssertion;
- (void)removeFlagChanges:(id)changes forMessages:(id)messages;
- (void)removeFlagChangesCommittedBefore:(double)before;
- (void)saveState;
- (void)setAPSTopic:(id)topic;
- (void)setAllowsPartialDownloads:(BOOL)downloads;
- (void)setCommitTime:(double)time forConnectionTag:(unsigned int)tag;
- (void)setDisplayName:(id)name;
- (void)setHandlerForOfflineCacheFlush:(id)flush;
- (void)setIsOffline:(BOOL)offline;
- (void)setLastPushRegistration:(double)registration;
- (void)setLibrary:(id)library;
- (void)setMustRegisterForPushOnNextConnection:(BOOL)connection;
- (void)setServerPathPrefix:(id)prefix shouldSync:(BOOL)sync;
- (void)setSupportedPushServiceLevel:(int)level;
- (void)setValueInAccountInfo:(id)info forKey:(id)key;
- (void)startListeningForNotifications;
- (void)stopListeningForNotifications;
- (void)throttledGetMailboxListWithConnection:(id)connection;
- (void)transferNotificationSessionToAccount:(id)account;
- (void)unselectMailbox:(id)mailbox;
- (void)updatePushRegisteredMailboxes:(id)mailboxes;
@end

@implementation IMAPAccount

- (IMAPAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  v10.receiver = self;
  v10.super_class = IMAPAccount;
  v4 = [(MailAccount *)&v10 initWithLibrary:library persistentAccount:account];
  v5 = v4;
  if (v4)
  {
    v4->_supportedPushServiceLevel = -2;
    *(v4 + 328) |= 2u;
    v4->_greatestInboxUid = 0x7FFFFFFFFFFFFFFFLL;
    v4->_flagChangesLock = [objc_alloc(MEMORY[0x277D24FA8]) initWithName:@"flagChangesLock" andDelegate:v4];
    v5->_connectionLock = [objc_alloc(MEMORY[0x277D24FA8]) initWithName:@"connectionLock" andDelegate:v5];
    v6 = objc_alloc(MEMORY[0x277CBEA60]);
    v5->_lockOrderingArray = [v6 initWithObjects:{v5->_connectionLock, v5->_flagChangesLock, *MEMORY[0x277D24EB8], 0}];
    v5->_eSearchSupportedLock = objc_alloc_init(MEMORY[0x277CCAAF8]);
    *(v5 + 396) &= ~0x10u;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3052000000;
    v9[3] = __Block_byref_object_copy__0;
    v9[4] = __Block_byref_object_dispose__0;
    v9[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__IMAPAccount_initWithLibrary_persistentAccount___block_invoke;
    v8[3] = &unk_2798B1338;
    v8[4] = v9;
    [(IMAPAccount *)v5 setHandlerForOfflineCacheFlush:v8];
    _Block_object_dispose(v9, 8);
  }

  return v5;
}

- (void)messagesAdded:(id)added
{
  v21 = *MEMORY[0x277D85DE8];
  userInfo = [added userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D28380]];
  if ([v5 count])
  {
    lastObject = [v5 lastObject];
    if ([lastObject type] == 7 && objc_msgSend(lastObject, "account") == self)
    {
      v7 = [userInfo objectForKey:*MEMORY[0x277D28388]];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v13 = [v12 uid];
              greatestInboxUid = self->_greatestInboxUid;
              if (greatestInboxUid <= v13)
              {
                greatestInboxUid = v13;
              }

              self->_greatestInboxUid = greatestInboxUid;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)greatestInboxUid
{
  result = self->_greatestInboxUid;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [-[MailAccount library](self "library")];
    self->_greatestInboxUid = result;
  }

  return result;
}

- (void)_readCustomInfoFromMailboxCache:(id)cache
{
  v5 = [cache objectForKey:@"separator"];
  v6 = [cache objectForKey:@"namespace"];
  _MFLockGlobalLock();
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isEqualToString:&stru_2869E1DA0] & 1) == 0)
    {
      self->_separatorChar = [v5 copyWithZone:0];
    }
  }

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 isEqualToString:&stru_2869E1DA0] & 1) == 0)
    {
      self->_serverNamespace = v6;
    }
  }

  if (!self->_lastKnownCapabilities)
  {
    self->_lastKnownCapabilities = [cache objectForKey:@"capabilities"];
  }

  if (self->_supportedPushServiceLevel == -2)
  {
    v7 = [cache objectForKey:@"push-service-level"];
    if (objc_opt_respondsToSelector())
    {
      intValue = [v7 intValue];
      if ((intValue + 1) <= 3)
      {
        self->_supportedPushServiceLevel = intValue;
      }
    }
  }

  if (!self->_pushRegisteredMailboxes)
  {
    self->_pushRegisteredMailboxes = [cache objectForKey:@"push-registered-mailboxes"];
  }

  if (!self->_apsTopic)
  {
    self->_apsTopic = [cache objectForKey:@"aps-topic"];
  }

  _MFUnlockGlobalLock();
  v9.receiver = self;
  v9.super_class = IMAPAccount;
  [(MailAccount *)&v9 _readCustomInfoFromMailboxCache:cache];
}

- (void)_writeCustomInfoToMailboxCache:(id)cache
{
  _MFLockGlobalLock();
  separatorChar = self->_separatorChar;
  if (separatorChar)
  {
    [cache setObject:separatorChar forKey:@"separator"];
  }

  serverNamespace = self->_serverNamespace;
  if (serverNamespace)
  {
    [cache setObject:serverNamespace forKey:@"namespace"];
  }

  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (lastKnownCapabilities)
  {
    [cache setObject:lastKnownCapabilities forKey:@"capabilities"];
  }

  if (self->_supportedPushServiceLevel != -2)
  {
    [cache setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:"), @"push-service-level"}];
  }

  if ([(NSMutableDictionary *)self->_pushRegisteredMailboxes count])
  {
    [cache setObject:self->_pushRegisteredMailboxes forKey:@"push-registered-mailboxes"];
  }

  apsTopic = self->_apsTopic;
  if (apsTopic)
  {
    [cache setObject:apsTopic forKey:@"aps-topic"];
  }

  _MFUnlockGlobalLock();
  v9.receiver = self;
  v9.super_class = IMAPAccount;
  [(MailAccount *)&v9 _writeCustomInfoToMailboxCache:cache];
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  cachedConnections = self->_cachedConnections;
  if (cachedConnections)
  {
    CFRelease(cachedConnections);
  }

  mailboxesToSynchronize = self->_mailboxesToSynchronize;
  if (mailboxesToSynchronize)
  {
    CFRelease(mailboxesToSynchronize);
  }

  [+[MFAPSManager sharedManager](MFAPSManager "sharedManager")];

  [(IMAPAccount *)self setHandlerForOfflineCacheFlush:0];
  unlockedReleaseNetworkAssertion(self);

  v5.receiver = self;
  v5.super_class = IMAPAccount;
  [(MailAccount *)&v5 dealloc];
}

- (void)saveState
{
  [-[IMAPAccount offlineCacheIfExists](self "offlineCacheIfExists")];
  v3.receiver = self;
  v3.super_class = IMAPAccount;
  [(MailAccount *)&v3 saveState];
}

- (id)hostname
{
  v5.receiver = self;
  v5.super_class = IMAPAccount;
  hostname = [(MFAccount *)&v5 hostname];
  [(MailAccount *)self setLastKnownHostname:hostname];
  return hostname;
}

- (void)setDisplayName:(id)name
{
  [(IMAPAccount *)self _renameLocalSpecialMailboxesToName:?];
  v5.receiver = self;
  v5.super_class = IMAPAccount;
  [(MFAccount *)&v5 setDisplayName:name];
}

- (BOOL)needToSynchronizeMailboxCaches
{
  v3 = [-[MFAccount _objectForAccountInfoKey:](self _objectForAccountInfoKey:{@"DaysBetweenSyncs", "intValue"}];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(MFAccount *)self _objectForAccountInfoKey:@"DateOfLastSync"];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = v4;
  v8 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v9 = [v8 dateByAddingUnit:64 value:-30 toDate:v6 options:0];
  return [objc_msgSend(v8 components:16 fromDate:v9 toDate:objc_msgSend(MEMORY[0x277CBEAA8] options:{"date"), 0), "day"}] >= v7;
}

- (void)_didSynchronizeMailboxCachesAndFoundChanges:(BOOL)changes
{
  changesCopy = changes;
  _MFLockGlobalLock();
  -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [MEMORY[0x277CBEAA8] date], @"DateOfLastSync");
  _MFUnlockGlobalLock();
  v5 = [-[MFAccount _objectForAccountInfoKey:](self _objectForAccountInfoKey:{@"DaysBetweenSyncs", "unsignedIntValue"}];
  if (!v5)
  {
    v6 = 7;
    goto LABEL_15;
  }

  if (!changesCopy)
  {
    if (v5 <= 6)
    {
      v6 = v5 + 1;
      goto LABEL_15;
    }

    if (v5 >= 0x1C)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 7;
    }

LABEL_14:
    if (v5 == v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v5 < 8)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 - 1;
    }

    goto LABEL_14;
  }

  v6 = v5 - 7;
LABEL_15:
  _MFLockGlobalLock();
  -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6], @"DaysBetweenSyncs");
  _MFUnlockGlobalLock();
LABEL_16:

  [(MFAccount *)self savePersistentAccount];
}

- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid
{
  v5.receiver = self;
  v5.super_class = IMAPAccount;
  return [(MailAccount *)&v5 _setChildren:children forMailboxUid:uid];
}

- (BOOL)storeMailboxTypeOnServer:(int)server
{
  v3 = 0;
  do
  {
    v6 = *&_storeOnServer[v3];
    v7 = *&_storeOnServer[v3 + 4];
    if (v6 == server)
    {
      break;
    }

    v4 = v3 == 24;
    v3 += 6;
  }

  while (!v4);
  return _storeOnServerForTuple(self, &v6);
}

- (void)handleAlertResponse:(id)response
{
  response = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(), -[MailAccount displayName](self, "displayName"), response];
  _MFLockGlobalLock();
  v5 = handleAlertResponse___handledAlerts;
  if (!handleAlertResponse___handledAlerts)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    handleAlertResponse___handledAlerts = v5;
  }

  if ([v5 containsObject:response])
  {

    _MFUnlockGlobalLock();
  }

  else
  {
    [handleAlertResponse___handledAlerts addObject:response];
    _MFUnlockGlobalLock();
    if (response)
    {
      v6 = [MEMORY[0x277D28410] errorWithDomain:*MEMORY[0x277D282F8] code:1030 localizedDescription:response title:MFLookupLocalizedString() userInfo:0];

      [(MailAccount *)self setConnectionError:v6];
    }
  }
}

- (id)errorForResponse:(id)response
{
  if (([response isResponseWithCode:17] & 1) == 0 && !objc_msgSend(response, "isAlertResponse"))
  {
    return 0;
  }

  v4 = MEMORY[0x277D28410];
  v5 = *MEMORY[0x277D282F8];

  return [v4 errorWithDomain:v5 code:1039 localizedDescription:0];
}

- (unsigned)readBufferSize
{
  readBufferSize = self->_readBufferSize;
  if (!readBufferSize)
  {
    readBufferSize = 0x2000;
    self->_readBufferSize = 0x2000;
  }

  return readBufferSize;
}

- (id)_dataForTemporaryUid:(unsigned int)uid
{
  if (!uid)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D24F00]) initWithContentsOfFile:objc_msgSend(-[IMAPAccount offlineCacheDirectoryPath](self options:"offlineCacheDirectoryPath") error:{"stringByAppendingPathComponent:", EFStringWithInt()), 1, 0}];

  return v3;
}

- (void)setAllowsPartialDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  _MFLockGlobalLock();
  -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [MEMORY[0x277CCABB0] numberWithBool:!downloadsCopy], @"PreventDismemberment");

  _MFUnlockGlobalLock();
}

- (BOOL)connectAndAuthenticate:(id)authenticate
{
  v5 = *(self + 328);
  currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
  connectionState = [authenticate connectionState];
  if ((connectionState - 2) < 2)
  {
LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  if (connectionState == 1)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (connectionState || ([currentMonitor shouldCancel] & 1) != 0)
  {
    if (((((*(self + 328) & 2) == 0) ^ ((v5 & 2) >> 1)) & 1) == 0)
    {
      [(IMAPAccount *)self setIsOffline:(v5 >> 1) & 1];
      v8 = 0;
      if ((v5 & 2) != 0)
      {
        return v8;
      }

      goto LABEL_15;
    }

    return 0;
  }

  if ([authenticate connectUsingAccount:self])
  {
    v9 = 1;
LABEL_9:
    if ([authenticate authenticateUsingAccount:self])
    {
      [(MailAccount *)self setConnectionError:0];
      if (v9)
      {
        [(IMAPAccount *)self _updateSeparatorAndNamespaceWithConnection:authenticate];
        [(IMAPAccount *)self throttledGetMailboxListWithConnection:authenticate];
      }

      goto LABEL_12;
    }

    error = [currentMonitor error];
    if ([(MFAccount *)self shouldEnableAfterError:error])
    {
      [(MFAccount *)self enableAccount];
    }

    if (!error)
    {
      error = [MEMORY[0x277D28410] errorWithDomain:*MEMORY[0x277D282F8] code:1033 localizedDescription:0];
      [currentMonitor setError:error];
    }

    [(MFAccount *)self reportAuthenticationError:error authScheme:[(MFAccount *)self preferredAuthScheme]];
    if (error)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  error2 = [currentMonitor error];
  if (error2 && ([error2 mf_isUserCancelledError] & 1) == 0)
  {
    error = [currentMonitor error];
    if (error)
    {
LABEL_21:
      if ([objc_msgSend(MEMORY[0x277D28480] "sharedInstance")] && (objc_msgSend(error, "mf_isUserCancelledError") & 1) == 0)
      {
        [(MailAccount *)self setConnectionError:error];
      }
    }

LABEL_30:
    if ((*(self + 328) & 2) == 0)
    {
      [(IMAPAccount *)self setIsOffline:1];
    }

    return 0;
  }

  v8 = 0;
LABEL_13:
  if ((*(self + 328) & 2) != 0)
  {
    [(IMAPAccount *)self setIsOffline:0];
LABEL_15:
    [authenticate setReadBufferSize:{-[IMAPAccount readBufferSize](self, "readBufferSize")}];
  }

  return v8;
}

- (id)connectionForStore:(id)store delegate:(id)delegate options:(int)options
{
  optionsCopy = options;
  v49 = *MEMORY[0x277D85DE8];
  mailboxUid = [store mailboxUid];
  v44 = mailboxUid;
  if (store)
  {
    v10 = mailboxUid;
    mailboxName = [store mailboxName];
    if (!mailboxName)
    {
      mailboxName = [(IMAPAccount *)self _nameForMailboxUid:v10];
      if (!mailboxName)
      {
        v41 = MFLogGeneral();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          LODWORD(callBacks.version) = 138412290;
          *(&callBacks.version + 4) = store;
          _os_log_impl(&dword_258B7A000, v41, OS_LOG_TYPE_INFO, "*** Unable to determine name for %@", &callBacks, 0xCu);
        }

        goto LABEL_112;
      }
    }

    v12 = mailboxName;
  }

  else
  {
    v12 = 0;
  }

  v46 = *(MEMORY[0x277CBF128] + 16);
  v47 = *(MEMORY[0x277CBF128] + 8);
  v13 = 0x27F97A000uLL;
  v45 = *(MEMORY[0x277CBF128] + 24);
  while (1)
  {
    [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    [*(&self->super.super.super.isa + *(v13 + 3512)) lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (optionsCopy)
    {
      if (cachedConnections)
      {
        goto LABEL_11;
      }

      callBacks.version = 0;
      callBacks.retain = v47;
      callBacks.release = v46;
      callBacks.copyDescription = v45;
      callBacks.equal = 0;
      v15 = CFArrayCreateMutable(0, 0, &callBacks);
      cachedConnections = CFMakeCollectable(v15);
      self->_cachedConnections = cachedConnections;
    }

    if (!cachedConnections)
    {
      Count = 0;
LABEL_23:
      v18 = 0;
      v22 = 1;
      if ((optionsCopy & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_45;
    }

LABEL_11:
    Count = CFArrayGetCount(cachedConnections);
    if (!Count)
    {
      goto LABEL_23;
    }

    v17 = 0;
    v18 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedConnections, v17);
      if ([ValueAtIndex delegate] == delegate && ((optionsCopy & 4) == 0 || objc_msgSend(ValueAtIndex, "mf_tryLock")))
      {
        v20 = ValueAtIndex;
        v18 = v17;
      }

      else
      {
        v20 = 0;
      }

      ++v17;
    }

    while (v17 < Count && !v20);
    if (v20)
    {
      i = v18;
LABEL_57:
      [(IMAPAccount *)self mf_unlock];
      v23 = 0;
      Count = i;
      v13 = 0x27F97A000;
      goto LABEL_61;
    }

    for (i = 0; i != Count; ++i)
    {
      v24 = CFArrayGetValueAtIndex(self->_cachedConnections, i);
      if (![v24 delegate] && ((optionsCopy & 4) == 0 || objc_msgSend(v24, "mf_tryLock")))
      {
        if (v12)
        {
          if ([objc_msgSend(v24 "selectedMailbox")])
          {
            v20 = v24;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = v24;
          if ((optionsCopy & 8) == 0)
          {
            if ([v24 selectedMailbox])
            {
              v20 = 0;
            }

            else
            {
              v20 = v24;
            }
          }
        }

        if ((optionsCopy & 4) == 0 || v20)
        {
          if (v20)
          {
            v25 = v20;
            goto LABEL_57;
          }
        }

        else
        {
          [v24 mf_unlock];
        }
      }
    }

    v22 = 0;
    v13 = 0x27F97A000;
    if ((optionsCopy & 1) == 0)
    {
LABEL_24:
      [(IMAPAccount *)self mf_unlock];
      v23 = 0;
      goto LABEL_87;
    }

LABEL_45:
    if (!v12)
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      v26 = 0;
      i = v18;
      do
      {
        v27 = CFArrayGetValueAtIndex(self->_cachedConnections, v26);
        if ([v27 delegate] || (optionsCopy & 4) != 0 && !objc_msgSend(v27, "mf_tryLock"))
        {
          v20 = 0;
        }

        else
        {
          v20 = v27;
          i = v26;
        }

        ++v26;
      }

      while (v26 < Count && !v20);
      if (v20)
      {
        goto LABEL_57;
      }
    }

    _newConnection = [(MFAccount *)self _newConnection];
    v20 = _newConnection;
    if ((optionsCopy & 4) != 0)
    {
      [_newConnection mf_lock];
    }

    [v20 setTag:self->_nextConnectionTag++];
    [v20 setMailboxListFilter:self];
    CFArrayAppendValue(self->_cachedConnections, v20);
    [(IMAPAccount *)self mf_unlock];
    v23 = 1;
    v13 = 0x27F97A000uLL;
    if (!v20)
    {
      goto LABEL_79;
    }

LABEL_61:
    if ((optionsCopy & 1) == 0)
    {
      if ([v20 connectionState] >= 2)
      {
        goto LABEL_73;
      }

      goto LABEL_106;
    }

    if (![MFUserAgent() isMobileMail])
    {
      if ([(IMAPAccount *)self connectAndAuthenticate:v20])
      {
        goto LABEL_73;
      }

      goto LABEL_106;
    }

    CFArrayRemoveValueAtIndex(self->_cachedConnections, Count);
    [*(&self->super.super.super.isa + *(v13 + 3512)) unlock];
    v29 = [(IMAPAccount *)self connectAndAuthenticate:v20];
    [*(&self->super.super.super.isa + *(v13 + 3512)) lock];
    v30 = self->_cachedConnections;
    if (!v30)
    {
      callBacks.version = 0;
      callBacks.retain = v47;
      callBacks.release = v46;
      callBacks.copyDescription = v45;
      callBacks.equal = 0;
      v31 = CFArrayCreateMutable(0, 0, &callBacks);
      v30 = CFMakeCollectable(v31);
      self->_cachedConnections = v30;
    }

    CFArrayAppendValue(v30, v20);
    if (![v20 isCellularConnection])
    {
      if (v29)
      {
LABEL_73:
        offlineCache = self->_offlineCache;
        if (!offlineCache)
        {
          offlineCache = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:self];
          self->_offlineCache = offlineCache;
        }

        if ([(MFIMAPOperationCache *)offlineCache hasPendingOfflineOperations])
        {
          [(MFIMAPOperationCache *)self->_offlineCache performDeferredOperationsWithConnection:v20];
        }

        if ([v20 isValid])
        {

          self->_offlineCache = 0;
          [(IMAPAccount *)self releaseNetworkAssertion];
LABEL_79:
          if (!v12)
          {
            goto LABEL_88;
          }

          goto LABEL_80;
        }

        if ((optionsCopy & 4) != 0)
        {
          [v20 mf_unlock];
        }

        [(IMAPAccount *)self checkInConnection:v20];
        goto LABEL_86;
      }

LABEL_106:
      v33 = 0;
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_71;
      }

LABEL_70:
      [v20 mf_unlock];
      goto LABEL_71;
    }

    v32 = !v29;
    v33 = [objc_msgSend(MEMORY[0x277D28480] "sharedInstance")];
    if (((v33 | v32) & 1) == 0)
    {
      goto LABEL_73;
    }

    if ((optionsCopy & 4) != 0)
    {
      goto LABEL_70;
    }

LABEL_71:
    [(IMAPAccount *)self checkInConnection:v20 destroy:v33];
LABEL_86:

LABEL_87:
    v20 = 0;
    if (!v12)
    {
LABEL_88:
      v36 = 0;
      goto LABEL_89;
    }

LABEL_80:
    selectedMailbox = [v20 selectedMailbox];
    v36 = 1;
    if ([v20 delegate] == delegate && selectedMailbox)
    {
      v36 = [v12 isEqualToString:selectedMailbox] ^ 1;
    }

LABEL_89:
    [v20 setDelegate:delegate];
    [*(&self->super.super.super.isa + *(v13 + 3512)) unlock];
    v37 = v20;
    v38 = v37;
    if (!v37)
    {
      goto LABEL_113;
    }

    if ((optionsCopy & 0x10) != 0)
    {
      v39 = v23;
    }

    else
    {
      v39 = 1;
    }

    if ((v39 & 1) == 0)
    {
      [v37 noop];
    }

    if (!v36)
    {
      goto LABEL_113;
    }

    if ((optionsCopy & 2) != 0)
    {
      if ([v38 examineMailbox:v12])
      {
        goto LABEL_113;
      }
    }

    else if ([v38 selectMailbox:v12 withAccount:self])
    {
      -[IMAPAccount setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [v38 tag], CFAbsoluteTimeGetCurrent());
      goto LABEL_113;
    }

    if ((optionsCopy & 4) != 0)
    {
      [v38 mf_unlock];
    }

    if ([v38 isValid])
    {
      break;
    }

    [(IMAPAccount *)self checkInConnection:v38];
    if (v23)
    {
      goto LABEL_112;
    }
  }

  v40 = [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
  if (v40)
  {
    [v40 setShortDescription:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", MFLookupLocalizedString(), objc_msgSend(v44, "displayName"))}];
  }

LABEL_112:
  v38 = 0;
LABEL_113:
  v42 = *MEMORY[0x277D85DE8];
  return v38;
}

- (void)_purgeStaleFlagChanges
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  [(IMAPAccount *)self mf_lock];
  cachedConnections = self->_cachedConnections;
  if (cachedConnections)
  {
    Count = CFArrayGetCount(cachedConnections);
    if (Count)
    {
      v5 = Count;
      Current = CFAbsoluteTimeGetCurrent();
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedConnections, i);
          [ValueAtIndex connectTime];
          if (v9 < Current)
          {
            [ValueAtIndex connectTime];
            Current = v10;
          }
        }
      }

      [(IMAPAccount *)self mf_unlock];
      [(IMAPAccount *)self removeFlagChangesCommittedBefore:Current];
      goto LABEL_14;
    }

    v11 = self->_cachedConnections;
  }

  else
  {
    v11 = 0;
  }

  self->_cachedConnections = 0;
  [(IMAPAccount *)self mf_unlock];
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    ef_publicDescription = [(MFAccount *)self ef_publicDescription];
    _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "#IMAPFlagChanges removing all changes: %{public}@", &v14, 0xCu);
  }

  self->_recentFlagChanges = 0;
LABEL_14:
  [(NSRecursiveLock *)self->_flagChangesLock unlock];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)checkInConnection:(id)connection destroy:(BOOL)destroy
{
  v27 = *MEMORY[0x277D85DE8];
  if (connection)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    if ([connection mf_tryLock])
    {
      [connection setDelegate:0];
      connectionState = [connection connectionState];
      [connection mf_unlock];
      [(IMAPAccount *)self mf_lock];
      if ([connection gotBadResponse])
      {
        [(IMAPAccount *)self _setCapabilities:0];
      }

      if (destroy)
      {
        goto LABEL_6;
      }

      if (self->_cachedConnections)
      {
        if ((connectionState - 2) < 2)
        {
          selectedMailbox = [connection selectedMailbox];
          Count = CFArrayGetCount(self->_cachedConnections);
          if (Count >= 1)
          {
            v17 = Count;
            v18 = 0;
            v19 = 1;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedConnections, v19 - 1);
              if (ValueAtIndex == connection)
              {
                v8 = 0;
              }

              else
              {
                v21 = ValueAtIndex;
                if ([objc_msgSend(ValueAtIndex "selectedMailbox")])
                {
                  v8 = 1;
                  v18 = 1;
                  goto LABEL_35;
                }

                v8 = [v21 delegate] == 0;
                v18 |= v8;
              }

              if (v19 < v17)
              {
                ++v19;
                if (!v8)
                {
                  continue;
                }
              }

              goto LABEL_35;
            }
          }

          v8 = 0;
          v18 = 0;
LABEL_35:
          if ([(MailAccount *)self _shouldLogDeleteActivity])
          {
            v22 = MFLogGeneral();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = 138412546;
              v24 = selectedMailbox;
              v25 = 2112;
              connectionCopy = connection;
              _os_log_impl(&dword_258B7A000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Unselected connection checked back in, mailbox: %@, connection: %@", &v23, 0x16u);
            }
          }

          [(IMAPAccount *)self mf_unlock];
          if ((v18 & 1) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_7;
        }

        if (connectionState == 1)
        {
LABEL_6:
          [(IMAPAccount *)self mf_unlock];
          v8 = 1;
LABEL_7:
          if ([connection logout])
          {
            -[IMAPAccount setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [connection tag], CFAbsoluteTimeGetCurrent());
          }

          [connection disconnectAndNotifyDelegate:0];
          goto LABEL_10;
        }

        if (!connectionState)
        {
          [(IMAPAccount *)self mf_unlock];
          v8 = 1;
LABEL_10:
          if (self->_cachedConnections && v8)
          {
            [(IMAPAccount *)self mf_lock];
            v9 = CFArrayGetCount(self->_cachedConnections);
            connectionCopy2 = connection;
            v28.location = 0;
            v28.length = v9;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_cachedConnections, v28, connectionCopy2);
            if (FirstIndexOfValue != -1)
            {
              v12 = FirstIndexOfValue;
              v13 = v9 - 1;
              do
              {
                CFArrayRemoveValueAtIndex(self->_cachedConnections, v12);
                v29.location = 0;
                v29.length = v13;
                v12 = CFArrayGetFirstIndexOfValue(self->_cachedConnections, v29, connectionCopy2);
                --v13;
              }

              while (v12 != -1);
            }

            [(IMAPAccount *)self mf_unlock];
            [(IMAPAccount *)self _purgeStaleFlagChanges];
          }

          goto LABEL_22;
        }
      }
    }

    [(IMAPAccount *)self mf_unlock];
LABEL_22:
    [(NSRecursiveLock *)self->_connectionLock unlock];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)checkInConnectionsForStore:(id)store
{
  if (store && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v7 = Count;
      array = 0;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedConnections, i);
        if ([ValueAtIndex delegate] == store)
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:ValueAtIndex];
        }
      }
    }

    else
    {
      array = 0;
    }

    [(IMAPAccount *)self mf_unlock];
    v11 = [array count];
    if (v11 >= 1)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        -[IMAPAccount checkInConnection:](self, "checkInConnection:", [array objectAtIndex:j]);
      }
    }

    connectionLock = self->_connectionLock;

    [(NSRecursiveLock *)connectionLock unlock];
  }
}

- (BOOL)verifyESearchSupportWithBlock:(id)block
{
  [(NSLock *)self->_eSearchSupportedLock lock];
  eSearchSupported = self->_eSearchSupported;
  if (eSearchSupported)
  {
    LOBYTE(v6) = [(NSNumber *)eSearchSupported BOOLValue];
  }

  else
  {
    v6 = (*(block + 2))(block);
    self->_eSearchSupported = [MEMORY[0x277CCABB0] numberWithBool:v6];
  }

  [(NSLock *)self->_eSearchSupportedLock unlock];
  return v6;
}

- (void)unselectMailbox:(id)mailbox
{
  if (mailbox && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v7 = Count;
      v8 = 0;
      array = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedConnections, v8);
        selectedMailbox = [ValueAtIndex selectedMailbox];
        if (selectedMailbox && [selectedMailbox isEqualToString:mailbox])
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:ValueAtIndex];
          CFArrayRemoveValueAtIndex(self->_cachedConnections, v8);
          --v7;
        }

        else
        {
          ++v8;
        }
      }

      while (v8 < v7);
    }

    else
    {
      array = 0;
    }

    [(IMAPAccount *)self mf_unlock];
    v12 = [array count];
    if (v12 >= 1)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = [array objectAtIndex:i];
        if ([v15 isValid] && objc_msgSend(v15, "logout"))
        {
          -[IMAPAccount setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [v15 tag], CFAbsoluteTimeGetCurrent());
        }

        [v15 disconnectAndNotifyDelegate:1];
      }
    }

    connectionLock = self->_connectionLock;

    [(NSRecursiveLock *)connectionLock unlock];
  }
}

- (void)filterMailboxList:(id)list forMailbox:(id)mailbox options:(int)options
{
  v6 = [list count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      if ([objc_msgSend(objc_msgSend(list objectAtIndex:{v7), "objectForKey:", @"MailboxName", "isEqualToString:", @"Apple Mail To Do"}])
      {
        [list removeObjectAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)_releaseAllConnectionsAndCallSuper:(BOOL)super edgeForcedOnly:(BOOL)only ifIdleForTimeInterval:(double)interval saveOfflineCache:(BOOL)cache
{
  cacheCopy = cache;
  onlyCopy = only;
  superCopy = super;
  v64 = *MEMORY[0x277D85DE8];
  v11 = MFLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v12 = @"MT";
    }

    else
    {
      v12 = @"BT";
    }

    v13 = objc_opt_class();
    v14 = @"NO";
    *buf = 138413570;
    v53 = v12;
    v54 = 2112;
    if (superCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v55 = v13;
    if (onlyCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v56 = 2112;
    if (cacheCopy)
    {
      v14 = @"YES";
    }

    v57 = v15;
    v58 = 2112;
    v59 = v16;
    v60 = 2048;
    intervalCopy = interval;
    v62 = 2112;
    v63 = v14;
    _os_log_impl(&dword_258B7A000, v11, OS_LOG_TYPE_INFO, "#Network %@: [%@ _releaseAllConnectionsAndCallSuper:%@]", buf, 0x3Eu);
  }

  v17 = MEMORY[0x277D28488];
  v50[0] = @"method";
  v50[1] = @"edgeOnly";
  v51[0] = @"_releaseAllConnectionsAndCallSuper";
  v51[1] = NSStringFromBOOL();
  [v17 powerlog:@"IMAPAccount" eventData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v51, v50, 2)}];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(IMAPAccount *)self mf_lock];
    if (self->_cachedConnections)
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __104__IMAPAccount__releaseAllConnectionsAndCallSuper_edgeForcedOnly_ifIdleForTimeInterval_saveOfflineCache___block_invoke;
      v46[3] = &unk_2798B1438;
      v46[4] = self;
      v47 = superCopy;
      v48 = onlyCopy;
      *&v46[5] = interval;
      v49 = cacheCopy;
      v18 = [v46 copy];
      v19 = [MEMORY[0x277D28478] invocationWithSelector:sel__invokeBlock_ target:self object:v18 taskName:0 priority:3 canBeCancelled:1];
      [v19 retainArguments];

      [objc_msgSend(MEMORY[0x277D28420] "sharedInvocationQueue")];
    }

    [(IMAPAccount *)self mf_unlock];
    goto LABEL_68;
  }

  compactWhenClosingMailboxes = [(IMAPAccount *)self compactWhenClosingMailboxes];
  [(NSRecursiveLock *)self->_connectionLock lock];
  [(IMAPAccount *)self mf_lock];
  v21 = [(__CFArray *)self->_cachedConnections mutableCopy];
  if (self->_cachedConnections)
  {
    v22 = MFLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      cachedConnections = self->_cachedConnections;
      *buf = 138412290;
      v53 = cachedConnections;
      _os_log_impl(&dword_258B7A000, v22, OS_LOG_TYPE_INFO, "#Network All connections: %@", buf, 0xCu);
    }
  }

  [(IMAPAccount *)self mf_unlock];
  if (!onlyCopy)
  {
    goto LABEL_31;
  }

  v24 = MFLogGeneral();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258B7A000, v24, OS_LOG_TYPE_INFO, "#Network EDGE ONLY", buf, 2u);
  }

  v25 = [v21 count];
  if (v25)
  {
    v26 = 0;
    v27 = v25 - 1;
    do
    {
      v28 = [v21 objectAtIndex:v27];
      if ([v28 isCellularConnection])
      {
        v26 |= [v28 isFetching];
      }

      else
      {
        [v21 removeObjectAtIndex:v27];
      }

      --v27;
    }

    while (v27 != -1);
  }

  else
  {
LABEL_31:
    LOBYTE(v26) = 0;
  }

  if (interval > 0.0)
  {
    v29 = [v21 count];
    Current = CFAbsoluteTimeGetCurrent();
    if (v29)
    {
      v31 = Current;
      v32 = v29 - 1;
      do
      {
        v33 = [v21 objectAtIndex:v32];
        [v33 mf_lock];
        [v33 lastUsedTime];
        if (v34 + interval > v31)
        {
          [v21 removeObjectAtIndex:v32];
        }

        [v33 mf_unlock];
        --v32;
      }

      while (v32 != -1);
    }
  }

  v44 = superCopy;
  v35 = MFLogGeneral();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v21;
    _os_log_impl(&dword_258B7A000, v35, OS_LOG_TYPE_INFO, "#Network Dropping connections: %@", buf, 0xCu);
  }

  v36 = cacheCopy;
  [(IMAPAccount *)self mf_lock];
  v37 = 0;
  while ([v21 count])
  {
    v38 = [v21 objectAtIndex:0];
    delegate = [v38 delegate];
    [v21 removeObjectAtIndex:0];
    v40 = self->_cachedConnections;
    if (v40)
    {
      v65.length = CFArrayGetCount(self->_cachedConnections);
      v65.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v40, v65, v38);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(self->_cachedConnections, FirstIndexOfValue);
      }
    }

    [(IMAPAccount *)self mf_unlock];
    if (!v38)
    {
      goto LABEL_59;
    }

    if ((v26 & (v37 == 0)) == 1)
    {
      if (![v38 isFetching])
      {
        v37 = 0;
        if (!compactWhenClosingMailboxes)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      }

      v37 = v38;
    }

    if (!compactWhenClosingMailboxes)
    {
      goto LABEL_53;
    }

LABEL_49:
    if ([v38 selectedMailbox])
    {
      if (([v38 closeAndLogout] & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_54:
      -[IMAPAccount setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [v38 tag], CFAbsoluteTimeGetCurrent());
      goto LABEL_55;
    }

LABEL_53:
    if ([v38 logout])
    {
      goto LABEL_54;
    }

LABEL_55:
    if (delegate)
    {
      [(IMAPAccount *)self mf_lock];
      [v38 setDelegate:0];
      [(IMAPAccount *)self mf_unlock];
    }

    [(IMAPAccount *)self mf_lock];
  }

  [(IMAPAccount *)self mf_unlock];
  delegate = 0;
LABEL_59:

  [(IMAPAccount *)self _purgeStaleFlagChanges];
  if (v26)
  {
    v42 = -[IMAPAccount _mailboxUidForName:](self, "_mailboxUidForName:", [v37 selectedMailbox]);
  }

  else
  {
    v42 = 0;
  }

  [(NSRecursiveLock *)self->_connectionLock unlock];
  if ((v26 & (v42 != 0)) == 1)
  {
    [MFUserAgent() autofetchAccount:self mailboxUid:v42];
  }

  if (v44)
  {
    v45.receiver = self;
    v45.super_class = IMAPAccount;
    [(MailAccount *)&v45 releaseAllConnections];
  }

  if (v36)
  {
    [-[IMAPAccount offlineCacheIfExists](self "offlineCacheIfExists")];
  }

LABEL_68:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)releaseAllForcedConnections
{
  [(IMAPAccount *)self _releaseAllConnectionsAndCallSuper:0 edgeForcedOnly:1 ifIdleForTimeInterval:1 saveOfflineCache:0.0];
  v3.receiver = self;
  v3.super_class = IMAPAccount;
  [(MailAccount *)&v3 releaseAllForcedConnections];
}

- (void)_flushOfflineCache
{
  v3 = [(IMAPAccount *)self connectionForStore:0 delegate:self options:1];
  if (v3)
  {

    [(IMAPAccount *)self checkInConnection:v3];
  }
}

- (void)flushOfflineCache
{
  mEMORY[0x277D28420] = [MEMORY[0x277D28420] sharedInvocationQueue];
  v4 = [MEMORY[0x277D28478] invocationWithSelector:sel__flushOfflineCache target:self taskName:0 priority:3 canBeCancelled:0];

  [mEMORY[0x277D28420] addInvocation:v4];
}

- (void)networkChanged
{
  offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
  if (offlineCacheFlushHandler)
  {
    offlineCacheFlushHandler[2]();
  }
}

- (void)setHandlerForOfflineCacheFlush:(id)flush
{
  offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
  if (offlineCacheFlushHandler != flush)
  {
    if (flush)
    {
      v5 = _Block_copy(flush);
      offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
      if (!offlineCacheFlushHandler)
      {
LABEL_5:
        self->_offlineCacheFlushHandler = v5;
        return;
      }
    }

    else
    {
      v5 = 0;
      if (!offlineCacheFlushHandler)
      {
        goto LABEL_5;
      }
    }

    _Block_release(offlineCacheFlushHandler);
    goto LABEL_5;
  }
}

- (void)acquireNetworkAssertion
{
  [(IMAPAccount *)self mf_lock];
  if (!self->_packetContextAssertion)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"IMAP account %@ (%@)", -[MailAccount displayName](self, "displayName"), -[MFAccount uniqueId](self, "uniqueId")];
    self->_packetContextAssertion = [MEMORY[0x277D28480] networkAssertionWithIdentifier:v3];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_networkChanged name:*MEMORY[0x277D283E0] object:{objc_msgSend(MEMORY[0x277D28480], "sharedInstance")}];
  }

  [(IMAPAccount *)self mf_unlock];
}

- (void)releaseNetworkAssertion
{
  [(IMAPAccount *)self mf_lock];
  unlockedReleaseNetworkAssertion(self);

  [(IMAPAccount *)self mf_unlock];
}

- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command
{
  isAlertResponse = [response isAlertResponse];
  if (isAlertResponse)
  {
    -[IMAPAccount handleAlertResponse:](self, "handleAlertResponse:", [response userString]);
  }

  else if (command->var0 == 8 && [response responseType] == 13)
  {
    v9 = -[IMAPAccount _mailboxUidForName:](self, "_mailboxUidForName:", [response mailboxName]);
    statusEntries = [response statusEntries];
    if ([v9 URLString])
    {
      v11 = [statusEntries objectForKey:0x2869E4C80];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_msgSend(v9 userInfoObjectForKey:{0x2869E4C80), "intValue"}];
        if (v13 != [v12 unsignedIntValue])
        {
          [v9 setUserInfoObject:EFStringWithInt() forKey:0x2869E4C80];
        }
      }

      v14 = [statusEntries objectForKeyedSubscript:0x2869E4CC0];
      if (v14)
      {
        [v9 updateMostRecentStatusCount:{objc_msgSend(v14, "unsignedIntegerValue")}];
      }
    }
  }

  return isAlertResponse ^ 1;
}

- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id *)command
{
  if ([response isAlertResponse])
  {
    userString = [response userString];

    [(IMAPAccount *)self handleAlertResponse:userString];
  }
}

- (void)setIsOffline:(BOOL)offline
{
  offlineCopy = offline;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (setIsOffline__sOnceToken != -1)
    {
      [IMAPAccount setIsOffline:];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__IMAPAccount_setIsOffline___block_invoke_2;
    v9[3] = &unk_2798B1460;
    v9[4] = self;
    v10 = offlineCopy;
    dispatch_async(setIsOffline__sOfflineStatusChangeQueue, v9);
  }

  else
  {
    v5 = *(self + 328);
    if (((((v5 & 2) == 0) ^ offlineCopy) & 1) == 0)
    {
      if (offlineCopy)
      {
        [(IMAPAccount *)self _releaseAllConnectionsAndCallSuper:0];
        v5 = *(self + 328);
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      *(self + 328) = v5 & 0xFD | v6;
      if ([(MailAccount *)self isActive])
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v8 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D28290] object:self userInfo:0];

        [defaultCenter postNotification:v8];
      }
    }
  }
}

dispatch_queue_t __28__IMAPAccount_setIsOffline___block_invoke()
{
  result = dispatch_queue_create("com.apple.mail.imap.offlinestatuschange", 0);
  setIsOffline__sOfflineStatusChangeQueue = result;
  return result;
}

- (void)_updateSeparatorAndNamespaceWithConnection:(id)connection
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  if ((*(self + 396) & 0x10) == 0)
  {
    _setSeparatorCharAndNamespace(self, [connection separatorChar], objc_msgSend(connection, "serverPathPrefix"));
    *(self + 396) |= 0x10u;
  }

  connectionLock = self->_connectionLock;

  [(NSRecursiveLock *)connectionLock unlock];
}

- (id)separatorChar
{
  _MFLockGlobalLock();
  separatorChar = self->_separatorChar;
  _MFUnlockGlobalLock();
  if (!separatorChar)
  {
    [(MailAccount *)self rootMailboxUid];
    _MFLockGlobalLock();
    separatorChar = self->_separatorChar;
    _MFUnlockGlobalLock();
    if ((*(self + 328) & 2) == 0 && !separatorChar)
    {
      if (([MEMORY[0x277CCACC8] isMainThread] & 1) != 0 || (v5 = -[IMAPAccount connectionForStore:delegate:options:](self, "connectionForStore:delegate:options:", 0, self, 1)) == 0)
      {
        separatorChar = 0;
      }

      else
      {
        v6 = v5;
        separatorChar = [v5 separatorChar];
        if (separatorChar)
        {
          _setSeparatorCharAndNamespace(self, separatorChar, 0);
        }

        [(IMAPAccount *)self checkInConnection:v6];
      }
    }
  }

  return separatorChar;
}

- (id)lastKnownCapabilities
{
  [(MailAccount *)self rootMailboxUid];
  _MFLockGlobalLock();
  v3 = self->_lastKnownCapabilities;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)_setCapabilities:(id)capabilities
{
  _MFLockGlobalLock();
  if (capabilities | self->_lastKnownCapabilities)
  {
    lastKnownCapabilities = self->_lastKnownCapabilities;
    self->_lastKnownCapabilities = capabilities;
    v5 = *MEMORY[0x277D28510];
    v6 = *(&self->super.super.super.isa + v5);
    if ((v6 & 0x40000) == 0)
    {
      *(&self->super.super.super.isa + v5) = v6 & 0xFFFB0000 | (v6 + 1);
    }

    v7 = lastKnownCapabilities;
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  v8 = capabilities | v7;
  _MFUnlockGlobalLock();
  if (v8)
  {
    v9 = [capabilities isEqualToArray:v11] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:v9];
}

- (id)fetchLimits
{
  mEMORY[0x277D28480] = [MEMORY[0x277D28480] sharedInstance];
  isFatPipe = [mEMORY[0x277D28480] isFatPipe];
  v4 = [objc_msgSend(MEMORY[0x277D28488] "sharedInstance")];
  if (isFatPipe && (v4 & 1) != 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    is3GConnection = [mEMORY[0x277D28480] is3GConnection];
    v9 = isFatPipe | [mEMORY[0x277D28480] is4GConnection];
    v10 = 4096;
    if (is3GConnection)
    {
      v10 = 0x10000;
    }

    v11 = 0x4000;
    if (is3GConnection)
    {
      v11 = 0x80000;
    }

    if (v9)
    {
      v6 = 0x40000;
    }

    else
    {
      v6 = v10;
    }

    if (v9)
    {
      v7 = 0x200000;
    }

    else
    {
      v7 = v11;
    }

    v5 = v7 | v6;
  }

  v12 = objc_alloc_init(MEMORY[0x277D28418]);
  [v12 setFetchMinBytes:v7];
  [v12 setMinBytesLeft:v6];
  [v12 setFetchMaxBytes:v5];

  return v12;
}

- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children onlySubscribed:(BOOL)subscribed statusDataItems:(id)items withConnection:(id)connection statusEntriesByMailbox:(id *)mailbox
{
  connectionCopy = connection;
  subscribedCopy = subscribed;
  childrenCopy = children;
  if (!connection)
  {
    connectionCopy = [(IMAPAccount *)self connectionForStore:0 delegate:self options:9];
    if (!connectionCopy)
    {
      return 0;
    }
  }

  serverPathPrefixAccountValue = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if ([serverPathPrefixAccountValue length])
  {
    v16 = ![(NSString *)self->_serverNamespace isEqualToString:serverPathPrefixAccountValue];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D28528];
  if (*(&self->super.super.super.isa + v17) == uid && v16 == 0)
  {
    v20 = &stru_2869E1DA0;
  }

  else
  {
    if (*(&self->super.super.super.isa + *MEMORY[0x277D28518]) == uid && [-[IMAPAccount serverPathPrefix](self "serverPathPrefix")])
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"INBOX%@INBOX", -[IMAPAccount separatorChar](self, "separatorChar")];
    }

    else
    {
      v19 = [(IMAPAccount *)self _nameForMailboxUid:uid];
    }

    v20 = v19;
  }

  if (childrenCopy)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (!subscribedCopy || (v22 = [connectionCopy subscribedListingForMailbox:v20 options:v21]) == 0)
  {
    if ([connectionCopy supportsCapability:23])
    {
      v23 = ([connectionCopy supportsCapability:21] & 1) != 0 || -[IMAPAccount xListSupportedOnConnection:](self, "xListSupportedOnConnection:", connectionCopy);
    }

    else
    {
      v23 = 0;
    }

    v24 = [connectionCopy listingForMailbox:v20 options:v21 getSpecialUse:v23 statusDataItems:items statusEntriesByMailbox:mailbox];
    v22 = v24;
    if (*(&self->super.super.super.isa + v17) == uid && !((self->_serverNamespace == 0) | v16 & 1))
    {
      v25 = [v24 mutableCopy];
      v26 = _mailboxDictionaryWithName(v22, self->_serverNamespace, 0);
      [v25 removeObject:v26];
      v27 = *MEMORY[0x277D283A0];
      v28 = [v26 objectForKeyedSubscript:*MEMORY[0x277D283A0]];
      v29 = v28 ? v28 : MEMORY[0x277CBEBF8];
      v22 = [MEMORY[0x277CBEB18] arrayWithArray:v29];
      [v22 addObjectsFromArray:v25];

      v30 = [(NSString *)self->_serverNamespace isEqualToString:@"INBOX"];
      if (v26)
      {
        if (v30)
        {
          v34 = 0;
          v31 = _mailboxDictionaryWithName(v22, self->_serverNamespace, &v34);
          v32 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v26];
          if (v31)
          {
            [v32 setObject:objc_msgSend(v31 forKey:{"objectForKey:", v27), v27}];
            [v22 replaceObjectAtIndex:v34 withObject:v32];
          }

          else
          {
            [v32 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKey:{"dictionary"), v27}];
            [v22 ef_insertObject:v32 usingSortFunction:MEMORY[0x277D28538] context:0 allowDuplicates:1];
          }
        }
      }
    }
  }

  [(IMAPAccount *)self checkInConnection:connectionCopy];
  return v22;
}

- (BOOL)_deleteMailbox:(id)mailbox
{
  v21.receiver = self;
  v21.super_class = IMAPAccount;
  if (![(MailAccount *)&v21 _deleteMailbox:?])
  {
    return 0;
  }

  v5 = [(IMAPAccount *)self _nameForMailboxUid:mailbox];
  [(IMAPAccount *)self unselectMailbox:v5];
  offlineCacheIfOffline = [(IMAPAccount *)self offlineCacheIfOffline];
  if (offlineCacheIfOffline)
  {
    [offlineCacheIfOffline deleteMailbox:v5];
    return 1;
  }

  v8 = [(IMAPAccount *)self connectionForStore:0 delegate:self options:1];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 deleteMailbox:v5];
    [(IMAPAccount *)self checkInConnection:v9];
    if (v10)
    {
      return 1;
    }

    if (([mailbox isStore] & 1) == 0)
    {
      parent = [mailbox parent];
      if (parent)
      {
        v12 = parent;
        currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
        error = [currentMonitor error];
        v15 = [(IMAPAccount *)self _listingForMailboxUid:v12 listAllChildren:0];
        if ([v15 count])
        {
          v16 = [v15 mf_indexOfMailboxDictionaryWithName:{objc_msgSend(mailbox, "name")}];
          v7 = v16 == 0x7FFFFFFFFFFFFFFFLL;
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = 0;
          }

          else
          {
            v17 = error;
          }
        }

        else
        {
          v17 = 0;
          v7 = 1;
        }

        [currentMonitor setError:v17];

        return v7;
      }
    }

    return 0;
  }

  v19 = MFLogGeneral();
  v7 = 1;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&dword_258B7A000, v19, OS_LOG_TYPE_INFO, "No connection!! What's going on?", v20, 2u);
  }

  return v7;
}

- (BOOL)isMailboxLocalForType:(int)type
{
  if ((type - 2) > 3)
  {
    return 0;
  }

  else
  {
    return ![(IMAPAccount *)self storeMailboxTypeOnServer:v3, v4];
  }
}

- (void)_renameLocalSpecialMailboxesToName:(id)name
{
  if (![(IMAPAccount *)self storeMailboxTypeOnServer:5])
  {
    v5 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
    [objc_msgSend(v5 "account")];
  }

  if (![(IMAPAccount *)self storeMailboxTypeOnServer:4])
  {
    v6 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
    [objc_msgSend(v6 "account")];
  }

  if (![(IMAPAccount *)self storeMailboxTypeOnServer:3])
  {
    v7 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
    v8 = [(MailAccount *)self _localMailboxNameForType:3 usingDisplayName:name];
    account = [v7 account];
    parent = [v7 parent];

    [account renameMailbox:v7 newName:v8 parent:parent];
  }
}

- (id)specialUseAttributeForType:(int)type
{
  if (specialUseAttributeForType__onceToken != -1)
  {
    [IMAPAccount specialUseAttributeForType:];
  }

  v4 = specialUseAttributeForType__map;

  return CFDictionaryGetValue(v4, type);
}

void __42__IMAPAccount_specialUseAttributeForType___block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, 5, @"\\Drafts");
  CFDictionarySetValue(Mutable, 4, @"\\Sent");
  CFDictionarySetValue(Mutable, 3, @"\\Trash");
  CFDictionarySetValue(Mutable, 2, @"\\Archive");
  CFDictionarySetValue(Mutable, 1, @"\\Junk");
  specialUseAttributeForType__map = Mutable;
}

- (id)allMailMailboxUid
{
  rootMailboxUid = [(MailAccount *)self rootMailboxUid];

  return [rootMailboxUid descendantWithExtraAttribute:@"\\All"];
}

- (BOOL)isSpecialMailbox:(id)mailbox
{
  v6.receiver = self;
  v6.super_class = IMAPAccount;
  return -[MailAccount isSpecialMailbox:](&v6, sel_isSpecialMailbox_) || [-[IMAPAccount specialUseAttributesForMailbox:](self specialUseAttributesForMailbox:{mailbox), "count"}] != 0;
}

- (id)specialUseAttributesForMailbox:(id)mailbox
{
  if (specialUseAttributesForMailbox__onceToken != -1)
  {
    [IMAPAccount specialUseAttributesForMailbox:];
  }

  v4 = [MEMORY[0x277CBEB58] setWithArray:{objc_msgSend(mailbox, "extraAttributes")}];
  [v4 intersectSet:specialUseAttributesForMailbox__knownSpecialAttributes];
  return v4;
}

uint64_t __46__IMAPAccount_specialUseAttributesForMailbox___block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"\\All", @"\\Junk", @"\\Sent", @"\\Trash", @"\\Drafts", @"\\Archive", @"\\Flagged", 0}];
  specialUseAttributesForMailbox__knownSpecialAttributes = result;
  return result;
}

- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization
{
  if ([(MailAccount *)self isActive])
  {
    v3 = *MEMORY[0x277D28510];
    v4 = *(&self->super.super.super.isa + v3);
    if ((v4 & 0x10000) == 0)
    {
      *(&self->super.super.super.isa + v3) = v4 | 0x10000;
      mEMORY[0x277D28420] = [MEMORY[0x277D28420] sharedInvocationQueue];
      v6 = [MEMORY[0x277D28478] invocationWithSelector:sel__synchronizeAccountWithServer target:self taskName:MFLookupLocalizedString() priority:0 canBeCancelled:1];

      [mEMORY[0x277D28420] addInvocation:v6];
    }
  }
}

- (BOOL)getMailboxListWithConnection:(id)connection statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox
{
  v6 = *MEMORY[0x277D28528];
  v7 = [(IMAPAccount *)self _listingForMailboxUid:*(&self->super.super.super.isa + v6) listAllChildren:1 onlySubscribed:0 statusDataItems:items withConnection:connection statusEntriesByMailbox:mailbox];
  if (v7)
  {
    [(IMAPAccount *)self mf_lock];
    v8 = [(MailAccount *)self _loadMailboxListingIntoCache:0 attributes:0 children:v7 parent:*(&self->super.super.super.isa + v6)];
    [(IMAPAccount *)self mf_unlock];
    if (v8)
    {
      [(IMAPAccount *)self _mailboxListingChanged];
      v9 = *MEMORY[0x277D28510];
      v10 = *(&self->super.super.super.isa + v9);
      if ((v10 & 0x40000) == 0)
      {
        *(&self->super.super.super.isa + v9) = v10 & 0xFFFB0000 | (v10 + 1);
      }
    }

    [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  }

  [(MailAccount *)self resetSpecialMailboxes];
  return v7 != 0;
}

- (void)throttledGetMailboxListWithConnection:(id)connection
{
  Current = CFAbsoluteTimeGetCurrent();
  isForeground = [MFUserAgent() isForeground];
  if ((*(self + 328) & 1) == 0 || isForeground && Current - self->_timeLastFetchedMailboxList > 300.0)
  {
    self->_timeLastFetchedMailboxList = Current;
    *(self + 328) |= 1u;
    currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
    [currentMonitor setMailbox:{-[MailAccount rootMailboxUid](self, "rootMailboxUid")}];
    [currentMonitor setDisplayName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "localizedStringForKey:value:table:", @"CHECKING_FOR_MAIL", &stru_2869E1DA0, @"Main"}];
    v15 = 0;
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{0x2869E4CC0, 0}];
    if ([(IMAPAccount *)self getMailboxListWithConnection:connection statusDataItems:v8 statusEntriesByMailbox:&v15])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke;
      v14[3] = &unk_2798B1488;
      v14[4] = self;
      [v15 enumerateKeysAndObjectsUsingBlock:v14];
      if (!v15)
      {
        if (!connection)
        {
          connection = [(IMAPAccount *)self connectionForStore:0 delegate:self options:9];
        }

        v9 = [-[MailAccount allMailboxUids](self "allMailboxUids")];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_3;
        v13[3] = &unk_2798B14D0;
        v13[4] = self;
        v10 = [v9 ef_map:v13];
        [connection fetchStatusForMailboxes:objc_msgSend(v10 args:{"ef_filter:", *MEMORY[0x277D07110]), v8}];
        [(IMAPAccount *)self checkInConnection:connection];
      }
    }

    else
    {
      *(self + 328) &= ~1u;
    }

    globalAsyncScheduler = [MEMORY[0x277D071B8] globalAsyncScheduler];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_4;
    v12[3] = &unk_2798B12F0;
    v12[4] = currentMonitor;
    [globalAsyncScheduler afterDelay:v12 performBlock:1.0];
  }
}

uint64_t __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(a1 + 32) _mailboxUidForName:a2];
  result = [v4 URLString];
  if (result)
  {
    result = [MEMORY[0x277D28450] isDraftsMailboxType:{objc_msgSend(v4, "type")}];
    if ((result & 1) == 0)
    {
      result = [a3 objectForKeyedSubscript:0x2869E4CC0];
      if (result)
      {
        v6 = [result unsignedIntegerValue];

        return [v4 updateMostRecentStatusCount:v6];
      }
    }
  }

  return result;
}

uint64_t __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isStore];
  if (result)
  {
    return [MEMORY[0x277D28450] isDraftsMailboxType:{objc_msgSend(a2, "type")}] ^ 1;
  }

  return result;
}

- (void)_synchronizeAccountWithServer
{
  v3 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
  if ([(MFAccount *)self password])
  {
    v5 = [(IMAPAccount *)self connectionForStore:0 delegate:self options:1];
    if (v5)
    {
      v6 = v5;
      if (([currentMonitor shouldCancel] & 1) == 0)
      {
        [(IMAPAccount *)self checkInConnection:v6];
        if (([currentMonitor shouldCancel] & 1) == 0)
        {
          [(IMAPAccount *)self throttledGetMailboxListWithConnection:0];
        }

        if (([currentMonitor shouldCancel] & 1) == 0)
        {
          [(MailAccount *)self emptyTrash];
        }
      }
    }
  }

  *(&self->super.super.super.isa + *MEMORY[0x277D28510]) &= ~0x10000u;

  [v3 drain];
}

- (void)_synchronouslyLoadListingForParent:(id)parent
{
  v5 = [(IMAPAccount *)self _listingForMailboxUid:parent listAllChildren:0];
  if (v5 && -[MailAccount _loadMailboxListingIntoCache:attributes:children:parent:](self, "_loadMailboxListingIntoCache:attributes:children:parent:", [parent name], 0, v5, parent))
  {

    [(IMAPAccount *)self _mailboxListingChanged];
  }
}

- (void)_waitForMailboxListingLoadToComplete
{
  [(IMAPAccount *)self mf_lock];

  [(IMAPAccount *)self mf_unlock];
}

- (void)_mailboxesWereRemovedFromTree:(id)tree withFileSystemPaths:(id)paths
{
  _MFLockGlobalLock();
  if (!_mailboxDeletionQueue)
  {
    _mailboxDeletionQueue = objc_alloc_init(MEMORY[0x277D28420]);
  }

  _MFUnlockGlobalLock();
  v7 = objc_alloc_init(_MFIMAPMailboxDeletionQueueEntry);
  [(_MFIMAPMailboxDeletionQueueEntry *)v7 setUrls:tree];
  [(_MFIMAPMailboxDeletionQueueEntry *)v7 setPaths:paths];
  [(_MFIMAPMailboxDeletionQueueEntry *)v7 setAccount:self];
  v8 = MEMORY[0x277D28478];
  v9 = objc_opt_class();
  v10 = [v8 invocationWithSelector:sel__deleteQueuedMailboxes_ target:v9 object:v7 taskName:MFLookupLocalizedString() priority:12 canBeCancelled:1];

  [_mailboxDeletionQueue addInvocation:v10];
  v11.receiver = self;
  v11.super_class = IMAPAccount;
  [(MailAccount *)&v11 _mailboxesWereRemovedFromTree:tree withFileSystemPaths:paths];
}

+ (void)_deleteQueuedMailboxes:(id)mailboxes
{
  account = [mailboxes account];
  [account _waitForMailboxListingLoadToComplete];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [objc_msgSend(mailboxes "urls")];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *MEMORY[0x277CBEEE8];
    do
    {
      v10 = [objc_msgSend(mailboxes "urls")];
      v11 = [self mailboxUidFromActiveAccountsForURL:v10];
      if (!v11 || ([v11 isValid] & 1) == 0)
      {
        if ([objc_msgSend(mailboxes "paths")] != v9)
        {
          MFRemoveItemAtPath();
        }

        [v12 addObject:v10];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  [objc_msgSend(account "library")];
}

- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure
{
  v13.receiver = self;
  v13.super_class = IMAPAccount;
  v7 = [MailAccount newMailboxNameIsAcceptable:sel_newMailboxNameIsAcceptable_reasonForFailure_ reasonForFailure:?];
  if (v7)
  {
    separatorChar = [(IMAPAccount *)self separatorChar];
    if (separatorChar)
    {
      v9 = separatorChar;
      v10 = [acceptable rangeOfString:separatorChar];
      LOBYTE(v7) = v10 == 0x7FFFFFFFFFFFFFFFLL;
      if (failure)
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 0;
          LOBYTE(v7) = 1;
        }

        else
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(), v9];
          LOBYTE(v7) = 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v7) = 1;
      if (failure)
      {
        v11 = 0;
LABEL_9:
        *failure = v11;
      }
    }
  }

  return v7;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  v9 = [(IMAPAccount *)self _nameForMailboxUid:?];
  if (![(IMAPAccount *)self isOffline])
  {
    v11 = [(IMAPAccount *)self connectionForStore:0 delegate:self options:1];
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    v13 = *MEMORY[0x277D28518];
    v14 = *(&self->super.super.super.isa + v13);
    if (v14 && [v14 isEqual:mailbox])
    {
      v15 = *(&self->super.super.super.isa + v13);
    }

    else
    {
      v15 = 0;
    }

    v17 = [(IMAPAccount *)self _nameForMailboxUid:parent];
    if (name)
    {
      name = [(IMAPAccount *)self _uidNameForPathComponent:name];
    }

    else
    {
      name = [mailbox name];
    }

    v19 = name;
    if ([v17 length])
    {
      v20 = [v17 mutableCopyWithZone:0];
      [v20 appendString:{objc_msgSend(v12, "separatorChar")}];
      [v20 appendString:v19];
      v19 = v20;
    }

    if (v19 && [v12 renameMailbox:v9 toMailbox:v19])
    {
      if (v15)
      {
        [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:7];
      }

      v22.receiver = self;
      v22.super_class = IMAPAccount;
      [(MailAccount *)&v22 renameMailbox:mailbox newName:name parent:parent];
      [objc_msgSend(mailbox "store")];
      v16 = 1;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v16 = 0;
      if (!v15)
      {
LABEL_22:
        [(IMAPAccount *)self checkInConnection:v12];
        return v16;
      }
    }

    [(MailAccount *)self resetSpecialMailboxes];

    goto LABEL_22;
  }

  currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
  [currentMonitor setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1034, MFLookupLocalizedString())}];
  return 0;
}

- (id)_nameForMailboxUid:(id)uid
{
  if (*(&self->super.super.super.isa + *MEMORY[0x277D28518]) == uid)
  {
    return @"INBOX";
  }

  uidCopy = uid;
  serverPathPrefix = [(IMAPAccount *)self serverPathPrefix];
  if (serverPathPrefix)
  {
    v6 = *MEMORY[0x277D28528];
    v7 = *(&self->super.super.super.isa + v6);
  }

  else
  {
    parent = [uidCopy parent];
    v6 = *MEMORY[0x277D28528];
    v7 = *(&self->super.super.super.isa + v6);
    if (parent == v7)
    {

      return [uidCopy name];
    }
  }

  if (v7 == uidCopy)
  {
    if (serverPathPrefix)
    {
      return serverPathPrefix;
    }

    else
    {
      return &stru_2869E1DA0;
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([serverPathPrefix length])
  {
    v11 = [uidCopy isShared] ^ 1;
    if (!uidCopy)
    {
      goto LABEL_16;
    }

    do
    {
LABEL_14:
      if (uidCopy == *(&self->super.super.super.isa + v6))
      {
        break;
      }

      [v10 addObject:{objc_msgSend(uidCopy, "name")}];
      uidCopy = [uidCopy parent];
    }

    while (uidCopy);
    goto LABEL_16;
  }

  v11 = 0;
  if (uidCopy)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (v11)
  {
    v12 = [serverPathPrefix mutableCopyWithZone:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 count];
  separatorChar = [(IMAPAccount *)self separatorChar];
  if (v13)
  {
    v15 = separatorChar;
    for (i = v13 - 1; i != -1; --i)
    {
      v17 = [v10 objectAtIndex:i];
      v18 = v17;
      if (v12)
      {
        if (!v15)
        {

          v12 = 0;
          break;
        }

        [v12 appendString:v15];
        [v12 appendString:v18];
      }

      else
      {
        v12 = [v17 mutableCopyWithZone:0];
      }
    }
  }

  return v12;
}

- (id)_mailboxUidForName:(id)name
{
  nameCopy = name;
  v26 = *MEMORY[0x277D85DE8];
  if (name)
  {
    v5 = [name caseInsensitiveCompare:@"INBOX"];
    if (v5)
    {
      v6 = nameCopy;
    }

    else
    {
      v6 = @"INBOX";
    }

    serverPathPrefix = [(IMAPAccount *)self serverPathPrefix];
    separatorChar = [(IMAPAccount *)self separatorChar];
    if (serverPathPrefix && [serverPathPrefix length] && v5)
    {
      v9 = [(__CFString *)nameCopy rangeOfString:serverPathPrefix options:8];
      if (!v10)
      {
        nameCopy = 0;
        goto LABEL_24;
      }

      v11 = [(__CFString *)nameCopy substringFromIndex:v9 + v10];
      v6 = v11;
      if (separatorChar)
      {
        if (v11)
        {
          v12 = [(__CFString *)v11 rangeOfString:separatorChar options:8];
          if (v13)
          {
            v6 = [(__CFString *)v6 substringFromIndex:v12 + v13];
          }
        }
      }
    }

    nameCopy = 0;
    if (separatorChar)
    {
      if (v6)
      {
        v14 = [(__CFString *)v6 componentsSeparatedByString:separatorChar];
        nameCopy = [(MailAccount *)self rootMailboxUid];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v22;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v22 != v17)
              {
                objc_enumerationMutation(v14);
              }

              nameCopy = [(__CFString *)nameCopy childWithName:*(*(&v21 + 1) + 8 * i)];
            }

            v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v16);
        }
      }
    }
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return nameCopy;
}

- (BOOL)canMailboxBeDeleted:(id)deleted
{
  if ([deleted isEqual:*(&self->super.super.super.isa + *MEMORY[0x277D28518])])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = IMAPAccount;
  return [(MailAccount *)&v6 canMailboxBeDeleted:deleted];
}

- (id)serverPathPrefix
{
  result = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if (!result)
  {
    return self->_serverNamespace;
  }

  return result;
}

- (id)serverPathPrefixAccountValue
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"ServerPathPrefix"];
  if ([v2 length])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (void)setServerPathPrefix:(id)prefix shouldSync:(BOOL)sync
{
  syncCopy = sync;
  serverPathPrefixAccountValue = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if (!prefix)
  {
    prefix = &stru_2869E1DA0;
  }

  if (serverPathPrefixAccountValue)
  {
    v8 = serverPathPrefixAccountValue;
  }

  else
  {
    v8 = &stru_2869E1DA0;
  }

  separatorChar = [(IMAPAccount *)self separatorChar];
  if (separatorChar)
  {
    v10 = [prefix rangeOfString:separatorChar options:12];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      prefix = [prefix substringToIndex:v10];
    }
  }

  v11 = [prefix length];
  if (v11 != -[__CFString length](v8, "length") || ([prefix isEqual:v8] & 1) == 0)
  {
    [-[MailAccount allMailboxUids](self "allMailboxUids")];
    _MFLockGlobalLock();
    if (prefix && [prefix length])
    {
      [(MFAccount *)self setAccountProperty:prefix forKey:@"ServerPathPrefix"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"ServerPathPrefix"];
    }

    _MFUnlockGlobalLock();
    if (syncCopy)
    {
      [(IMAPAccount *)self releaseAllConnections];

      [(IMAPAccount *)self nowWouldBeAGoodTimeToStartBackgroundSynchronization];
    }
  }
}

- (id)_fileSystemServerPathPrefix
{
  serverPathPrefix = [(IMAPAccount *)self serverPathPrefix];
  separatorChar = [(IMAPAccount *)self separatorChar];
  if (!serverPathPrefix)
  {
    return 0;
  }

  v5 = separatorChar;
  if (!separatorChar)
  {
    return 0;
  }

  v6 = [serverPathPrefix rangeOfString:separatorChar options:8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6 + v7;
    if ([serverPathPrefix length] > (v6 + v7))
    {
      serverPathPrefix = [serverPathPrefix substringFromIndex:v8];
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  v9 = [objc_msgSend(serverPathPrefix componentsSeparatedByString:{v5), "mutableCopy"}];
  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      [v9 replaceObjectAtIndex:i withObject:{-[IMAPAccount _pathComponentForUidName:](self, "_pathComponentForUidName:", objc_msgSend(v9, "objectAtIndex:", i))}];
    }
  }

  v13 = [v9 componentsJoinedByString:@"/"];

  return v13;
}

- (id)_mailboxPathPrefix
{
  result = [(IMAPAccount *)self _fileSystemServerPathPrefix];
  if (!result)
  {
    return &stru_2869E1DA0;
  }

  return result;
}

- (id)offlineCacheIfExists
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  v3 = self->_offlineCache;
  [(NSRecursiveLock *)self->_connectionLock unlock];

  return v3;
}

- (id)offlineCacheIfOffline
{
  if ([(IMAPAccount *)self isOffline])
  {
    [(IMAPAccount *)self connectionForStore:0 delegate:0 options:1];
    [(NSRecursiveLock *)self->_connectionLock lock];
    v3 = 0;
    if ([(IMAPAccount *)self isOffline])
    {
      offlineCache = self->_offlineCache;
      if (!offlineCache)
      {
        offlineCache = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:self];
        self->_offlineCache = offlineCache;
      }

      v3 = offlineCache;
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)offlineCache
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  offlineCache = self->_offlineCache;
  if (!offlineCache)
  {
    offlineCache = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:self];
    self->_offlineCache = offlineCache;
  }

  v4 = offlineCache;
  [(NSRecursiveLock *)self->_connectionLock unlock];

  return v4;
}

- (id)offlineCacheDirectoryPath
{
  path = [(MailAccount *)self path];

  return [path stringByAppendingPathComponent:@".OfflineCache"];
}

- (BOOL)hasPendingOfflineOperations
{
  offlineCache = [(IMAPAccount *)self offlineCache];

  return [offlineCache hasPendingOfflineOperations];
}

- (id)_infoForMatchingURL:(id)l
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  path = [l path];
  [dictionary setObject:self forKey:@"Account"];
  if (path)
  {
    separatorChar = [(IMAPAccount *)self separatorChar];
    v8 = [path rangeOfString:@"/" options:8];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      path = [path substringWithRange:{v8 + v9, objc_msgSend(path, "length") - (v8 + v9)}];
    }

    if (separatorChar)
    {
      v10 = [path rangeOfString:separatorChar options:8];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        path = [path substringWithRange:{v10 + v11, objc_msgSend(path, "length") - (v10 + v11)}];
      }
    }

    if (([path isEqualToString:&stru_2869E1DA0] & 1) == 0)
    {
      [dictionary setObject:path forKey:@"RelativePath"];
    }
  }

  return dictionary;
}

- (void)setValueInAccountInfo:(id)info forKey:(id)key
{
  if ([key isEqualToString:@"ServerPathPrefix"])
  {
    [(IMAPAccount *)self setServerPathPrefix:info];

    [(MFAccount *)self _queueAccountInfoDidChange];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = IMAPAccount;
    [(MailAccount *)&v7 setValueInAccountProperties:info forKey:key];
  }
}

- (id)flagChangesForMailboxPath:(id)path UID:(unsigned int)d connectTime:(double)time
{
  v33 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  recentFlagChanges = self->_recentFlagChanges;
  v10 = [(NSMutableArray *)recentFlagChanges countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v24 = 264;
    selfCopy = self;
    v12 = 0;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(recentFlagChanges);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        if ([v15 uid] == d && objc_msgSend(v15, "connectionTag") == -1)
        {
          [v15 commitTime];
          if (v16 == 0.0 || ([v15 commitTime], v17 > time))
          {
            if ([objc_msgSend(v15 "path")])
            {
              v18 = MFLogGeneral();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v31 = v15;
                _os_log_impl(&dword_258B7A000, v18, OS_LOG_TYPE_INFO, "#IMAPFlagChanges using changes from %@", buf, 0xCu);
              }

              changes = [v15 changes];
              if (v12)
              {
                [v12 addEntriesFromDictionary:changes];
              }

              else
              {
                v12 = [changes mutableCopy];
              }
            }
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v20 = [(NSMutableArray *)recentFlagChanges countByEnumeratingWithState:&v26 objects:v32 count:16];
      v11 = v20;
    }

    while (v20);
    [*(&selfCopy->super.super.super.isa + v24) unlock];
    if (v12)
    {
      v21 = MFLogGeneral();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v12;
        _os_log_impl(&dword_258B7A000, v21, OS_LOG_TYPE_INFO, "#IMAPFlagChanges resulting changes are %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [(NSRecursiveLock *)self->_flagChangesLock unlock];
    v12 = 0;
  }

  result = v12;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeFlagChanges:(id)changes forMessages:(id)messages
{
  v25 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v7 = [(NSMutableArray *)self->_recentFlagChanges count];
  if (v7)
  {
    v8 = v7;
    while (2)
    {
      while (1)
      {
        v9 = [(NSMutableArray *)self->_recentFlagChanges objectAtIndex:--v8];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [messages countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v10)
        {
          break;
        }

LABEL_12:
        if (!v8)
        {
          goto LABEL_17;
        }
      }

      v11 = v10;
      v12 = *v19;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(messages);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [v9 uid];
        if (v15 == [v14 uid])
        {
          if ([objc_msgSend(v9 "changes")])
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [messages countByEnumeratingWithState:&v18 objects:v24 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }

      v16 = MFLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_258B7A000, v16, OS_LOG_TYPE_INFO, "#IMAPFlagChanges removing failed entry %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_recentFlagChanges removeObjectAtIndex:v8];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  [(NSRecursiveLock *)self->_flagChangesLock unlock];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeFlagChangesCommittedBefore:(double)before
{
  v18 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v5 = [(NSMutableArray *)self->_recentFlagChanges count];
  if (v5)
  {
    v7 = v5 - 1;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      v8 = [(NSMutableArray *)self->_recentFlagChanges objectAtIndex:v7, v15];
      [(NSMutableArray *)v8 commitTime];
      if (v9 != 0.0)
      {
        [(NSMutableArray *)v8 commitTime];
        if (v10 < before)
        {
          v11 = MFLogGeneral();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v15;
            v17 = v8;
            _os_log_impl(&dword_258B7A000, v11, OS_LOG_TYPE_INFO, "#IMAPFlagChanges removing committed entry %@", buf, 0xCu);
          }

          [(NSMutableArray *)self->_recentFlagChanges removeObjectAtIndex:v7];
        }
      }

      --v7;
    }

    while (v7 != -1);
  }

  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    recentFlagChanges = self->_recentFlagChanges;
    *buf = 138412290;
    v17 = recentFlagChanges;
    _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "#IMAPFlagChanges remaining change entries: %@", buf, 0xCu);
  }

  [(NSRecursiveLock *)self->_flagChangesLock unlock];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setCommitTime:(double)time forConnectionTag:(unsigned int)tag
{
  v25 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  recentFlagChanges = self->_recentFlagChanges;
  v8 = [(NSMutableArray *)recentFlagChanges countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(recentFlagChanges);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 connectionTag] == tag)
        {
          v13 = MFLogGeneral();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            timeCopy = time;
            v22 = 2112;
            v23 = v12;
            _os_log_impl(&dword_258B7A000, v13, OS_LOG_TYPE_INFO, "#IMAPFlagChanges setting commit time %d for change %@", buf, 0x12u);
          }

          [v12 setCommitTime:time];
        }
      }

      v9 = [(NSMutableArray *)recentFlagChanges countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v9);
  }

  [(NSRecursiveLock *)selfCopy->_flagChangesLock unlock];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setLibrary:(id)library
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = defaultCenter;
  v7 = *MEMORY[0x277D28520];
  if (*(&self->super.super.super.isa + v7))
  {
    [defaultCenter removeObserver:self name:0 object:?];
  }

  v8.receiver = self;
  v8.super_class = IMAPAccount;
  [(MailAccount *)&v8 setLibrary:library];
  if (*(&self->super.super.super.isa + v7))
  {
    [v6 addObserver:self selector:sel_messagesAdded_ name:*MEMORY[0x277D28390] object:?];
  }
}

- (double)lastPushRegistration
{
  _MFLockGlobalLock();
  lastPushRegistration = self->_lastPushRegistration;
  _MFUnlockGlobalLock();
  return lastPushRegistration;
}

- (void)setLastPushRegistration:(double)registration
{
  _MFLockGlobalLock();
  self->_lastPushRegistration = registration;

  _MFUnlockGlobalLock();
}

- (BOOL)mustRegisterForPushOnNextConnection
{
  _MFLockGlobalLock();
  LODWORD(self) = (*(self + 396) >> 1) & 1;
  _MFUnlockGlobalLock();
  return self;
}

- (void)setMustRegisterForPushOnNextConnection:(BOOL)connection
{
  connectionCopy = connection;
  _MFLockGlobalLock();
  if (connectionCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(self + 396) = *(self + 396) & 0xFD | v5;

  _MFUnlockGlobalLock();
}

- (int)supportedPushServiceLevel
{
  selfCopy = self;
  [(MailAccount *)self rootMailboxUid];
  _MFLockGlobalLock();
  LODWORD(selfCopy) = selfCopy->_supportedPushServiceLevel;
  _MFUnlockGlobalLock();
  return selfCopy;
}

- (void)setSupportedPushServiceLevel:(int)level
{
  _MFLockGlobalLock();
  if (self->_supportedPushServiceLevel != level)
  {
    self->_supportedPushServiceLevel = level;
    v5 = *MEMORY[0x277D28510];
    v6 = *(&self->super.super.super.isa + v5);
    if ((v6 & 0x40000) == 0)
    {
      *(&self->super.super.super.isa + v5) = v6 & 0xFFFB0000 | (v6 + 1);
    }
  }

  _MFUnlockGlobalLock();
}

- (id)mailboxesRegisteredForPushByHash
{
  [(MailAccount *)self rootMailboxUid];
  _MFLockGlobalLock();
  v3 = [(NSMutableDictionary *)self->_pushRegisteredMailboxes copy];
  _MFUnlockGlobalLock();
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__IMAPAccount_mailboxesRegisteredForPushByHash__block_invoke;
  v6[3] = &unk_2798B14F8;
  v6[4] = self;
  v6[5] = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __47__IMAPAccount_mailboxesRegisteredForPushByHash__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) _mailboxUidForName:{objc_msgSend(a3, "mf_encodedIMAPMailboxName")}];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = *MEMORY[0x277D85DE8];

    [v8 setObject:v7 forKey:a2];
  }

  else
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = a3;
      v14 = 2112;
      v15 = a2;
      _os_log_impl(&dword_258B7A000, v10, OS_LOG_TYPE_INFO, "#aps-push warning, can't find mailbox with name '%@' (%@)", &v12, 0x16u);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)updatePushRegisteredMailboxes:(id)mailboxes
{
  v25 = *MEMORY[0x277D85DE8];
  _MFLockGlobalLock();
  pushRegisteredMailboxes = self->_pushRegisteredMailboxes;
  if (pushRegisteredMailboxes)
  {
    [(NSMutableDictionary *)pushRegisteredMailboxes removeAllObjects];
  }

  else
  {
    self->_pushRegisteredMailboxes = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(mailboxes, "count")}];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [mailboxes countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(mailboxes);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        mf_decodedIMAPMailboxName = [v10 mf_decodedIMAPMailboxName];
        v13 = [objc_msgSend(objc_msgSend(mf_decodedIMAPMailboxName dataUsingEncoding:4 allowLossyConversion:{0), "ef_md5Digest"), "ef_hexString"}];
        if (v13)
        {
          [(NSMutableDictionary *)self->_pushRegisteredMailboxes setObject:mf_decodedIMAPMailboxName forKey:v13];
        }

        else
        {
          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = mf_decodedIMAPMailboxName;
            _os_log_error_impl(&dword_258B7A000, v14, OS_LOG_TYPE_ERROR, "#aps-push failed to generate hash for mailbox named '%@'", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [mailboxes countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D28510];
  v16 = *(&self->super.super.super.isa + v15);
  if ((v16 & 0x40000) == 0)
  {
    *(&self->super.super.super.isa + v15) = v16 & 0xFFFB0000 | (v16 + 1);
  }

  _MFUnlockGlobalLock();
  v17 = *MEMORY[0x277D85DE8];
}

- (id)apsTopic
{
  [(MailAccount *)self rootMailboxUid];
  _MFLockGlobalLock();
  v3 = self->_apsTopic;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)setAPSTopic:(id)topic
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    topicCopy = topic;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_258B7A000, v5, OS_LOG_TYPE_INFO, "#aps-push Setting aps-topic '%@' for account %@", &v13, 0x16u);
  }

  [(MailAccount *)self uniqueIdForPersistentConnection];
  Style = PCSettingsGetStyle();
  _MFLockGlobalLock();
  apsTopic = self->_apsTopic;
  if (apsTopic != topic)
  {
    self->_apsTopic = topic;
    v8 = *MEMORY[0x277D28510];
    v9 = *(&self->super.super.super.isa + v8);
    if ((v9 & 0x40000) == 0)
    {
      *(&self->super.super.super.isa + v8) = v9 & 0xFFFB0000 | (v9 + 1);
    }

    v10 = +[MFAPSManager sharedManager];
    v11 = v10;
    if (topic || !apsTopic)
    {
      if (!topic || apsTopic)
      {
        if (([topic isEqualToString:apsTopic] & 1) == 0)
        {
          [v11 swapTopic:apsTopic forNewTopic:topic];
        }
      }

      else if ((*(self + 396) & 4) != 0 && !Style)
      {
        [v10 startWatchingForTopic:topic];
      }
    }

    else
    {
      [v10 stopWatchingForTopic:apsTopic];
    }
  }

  _MFUnlockGlobalLock();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_schedulePushRegistrationConnection
{
  v12 = *MEMORY[0x277D85DE8];
  _MFLockGlobalLock();
  if ((*(self + 396) & 2) == 0)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_258B7A000, v3, OS_LOG_TYPE_INFO, "#aps-push account <%@:%p> scheduling push registration connection", buf, 0x16u);
    }

    *(self + 396) |= 2u;
    v4 = dispatch_time(0, 2000000000);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__IMAPAccount__schedulePushRegistrationConnection__block_invoke;
    block[3] = &unk_2798B12F0;
    block[4] = self;
    dispatch_after(v4, global_queue, block);
  }

  _MFUnlockGlobalLock();
  v6 = *MEMORY[0x277D85DE8];
}

void __50__IMAPAccount__schedulePushRegistrationConnection__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[396];
  v4 = [v2 mustRegisterForPushOnNextConnection];
  v5 = MFLogGeneral();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if ((v3 & 4) != 0 && v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_258B7A000, v5, OS_LOG_TYPE_INFO, "#aps-push account %@ forcing push registration connection", &v12, 0xCu);
    }

    [objc_msgSend(*(a1 + 32) "authenticatedConnection")];
  }

  else if (v6)
  {
    v8 = "NO";
    v9 = *(a1 + 32);
    if ((v3 & 4) != 0)
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    v12 = 138412802;
    v13 = v9;
    v14 = 2080;
    if (v4)
    {
      v8 = "YES";
    }

    v15 = v10;
    v16 = 2080;
    v17 = v8;
    _os_log_impl(&dword_258B7A000, v5, OS_LOG_TYPE_INFO, "#aps-push account %@ will NOT force push registration connection, didRequestPushRegistration: %s, mustRegisterOnNextConnection: %s", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRegisterForPush
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:{-[IMAPAccount pushedMailboxUids](self, "pushedMailboxUids")}];
  [v3 unionSet:{-[IMAPAccount _externalMailboxUids](self, "_externalMailboxUids")}];
  v4 = [v3 count];

  if (!v4)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "#aps-push account %@ has no pushed mailboxes, skipping", &v15, 0xCu);
    }

    [(IMAPAccount *)self setMustRegisterForPushOnNextConnection:0];
    goto LABEL_9;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(IMAPAccount *)self lastPushRegistration];
  v7 = v6;
  mustRegisterForPushOnNextConnection = [(IMAPAccount *)self mustRegisterForPushOnNextConnection];
  LOBYTE(v9) = 1;
  if (!mustRegisterForPushOnNextConnection)
  {
    v10 = Current - v7;
    if (v10 < 82800.0)
    {
      v11 = MFLogGeneral();
      v9 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v9)
      {
        v15 = 138412546;
        selfCopy2 = self;
        v17 = 2048;
        v18 = v10;
        _os_log_impl(&dword_258B7A000, v11, OS_LOG_TYPE_INFO, "#aps-push account %@ last registered for push %.3f seconds ago", &v15, 0x16u);
LABEL_9:
        LOBYTE(v9) = 0;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)notificationNamesForPrefix:(id)prefix mailboxUids:(id)uids
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(uids, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [uids countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(uids);
        }

        [v7 addObject:{-[IMAPAccount _notificationNameForMailbox:withPrefix:](self, "_notificationNameForMailbox:withPrefix:", *(*(&v14 + 1) + 8 * v11++), prefix)}];
      }

      while (v9 != v11);
      v9 = [uids countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)registerPushNotificationPrefix:(id)prefix forMailboxUids:(id)uids
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [IMAPAccount notificationNamesForPrefix:"notificationNamesForPrefix:mailboxUids:" mailboxUids:?];
  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(uids, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [uids countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(uids);
        }

        [v8 addObject:{-[IMAPAccount _nameForMailboxUid:](self, "_nameForMailboxUid:", *(*(&v16 + 1) + 8 * v12++))}];
      }

      while (v10 != v12);
      v10 = [uids countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = objc_alloc_init(MEMORY[0x277D25858]);
  [v13 setAccountIdentifier:{-[MFAccount uniqueId](self, "uniqueId")}];
  [v13 setNotificationNamePrefix:prefix];
  [v13 setMailboxNames:{objc_msgSend(v8, "allObjects")}];
  [v13 registerForPush:&__block_literal_global_342];

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

void __61__IMAPAccount_registerPushNotificationPrefix_forMailboxUids___block_invoke(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__IMAPAccount_registerPushNotificationPrefix_forMailboxUids___block_invoke_cold_1(a3, v4);
    }
  }
}

- (BOOL)_registerPushNotificationPrefix:(id)prefix forMailboxNames:(id)names
{
  _MFLockGlobalLock();
  v7 = [(MFAccount *)self accountPropertyForKey:@"NotesPushedMailboxes"];
  v8 = [(MFAccount *)self accountPropertyForKey:@"NotesNotificationPrefix"];
  if (prefix && ([v8 isEqualToString:prefix] & 1) == 0)
  {
    [(MFAccount *)self setAccountProperty:prefix forKey:@"NotesNotificationPrefix"];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [-[MFAccount accountPropertyForKey:](self accountPropertyForKey:{@"NotesPushedMailboxes", "mutableCopy"}];
  v11 = [names mutableCopy];
  [v10 sortUsingSelector:sel_localizedCompare_];
  [v11 sortUsingSelector:sel_localizedCompare_];
  if (!(v10 | v11) || v11 && ([v10 isEqual:v11] & 1) == 0)
  {
    [(MFAccount *)self setAccountProperty:names forKey:@"NotesPushedMailboxes"];
    v9 = 1;
  }

  _MFUnlockGlobalLock();

  [(IMAPAccount *)self setIsOffline:0];
  [(IMAPAccount *)self startListeningForNotifications];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [names isEqualToArray:v7];

    if (v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v13 = [(IMAPAccount *)self _copyMailboxListForNames:names];
  v14 = [v13 count];
  v15 = [names count];

  if (v14 != v15)
  {
    [(IMAPAccount *)self resetMailboxTimer];
    [(IMAPAccount *)self fetchMailboxList];
    if (!v9)
    {
      return 1;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(IMAPAccount *)self _schedulePushRegistrationConnection];
  if (v9)
  {
LABEL_16:
    [(MFAccount *)self savePersistentAccount];
  }

  return 1;
}

- (BOOL)canFetch
{
  v4.receiver = self;
  v4.super_class = IMAPAccount;
  return [(MailAccount *)&v4 canFetch]|| [(MFAccount *)self isSyncingNotes];
}

- (id)_copyMailboxListForNames:(id)names
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [names countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(names);
          }

          v10 = [(IMAPAccount *)self _mailboxUidForName:*(*(&v13 + 1) + 8 * v9)];
          if (v10)
          {
            [v5 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [names countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_copyMailboxListPreferenceForKey:(id)key
{
  v4 = [(MFAccount *)self _objectForAccountInfoKey:key];

  return [(IMAPAccount *)self _copyMailboxListForNames:v4];
}

- (void)_updatePushedMailboxesAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  if ([(MFAccount *)self isEnabledForDataclass:*MEMORY[0x277CB9150]])
  {
    if ([(IMAPAccount *)self supportsUserPushedMailboxes])
    {
      _copyUserPushedMailboxes = [(IMAPAccount *)self _copyUserPushedMailboxes];
    }

    else
    {
      _copyUserPushedMailboxes = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    v6 = _copyUserPushedMailboxes;
    [(NSSet *)_copyUserPushedMailboxes addObject:[(MailAccount *)self primaryMailboxUid]];
    v7 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
    if (v7)
    {
      [(NSSet *)v6 addObject:v7];
    }

    if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
    {
      v8 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
      if (v8)
      {
        [(NSSet *)v6 addObject:v8];
      }
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  _MFLockGlobalLock();

  self->_pushedMailboxUids = v6;
  _MFUnlockGlobalLock();
  if (notifyCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277D282E8];

    [defaultCenter postNotificationName:v10 object:self userInfo:0];
  }
}

- (id)pushedMailboxUids
{
  if (!self->_pushedMailboxUids)
  {
    [(IMAPAccount *)self _updatePushedMailboxesAndNotify:0];
  }

  _MFLockGlobalLock();
  v3 = self->_pushedMailboxUids;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)changePushedMailboxUidsAdded:(id)added deleted:(id)deleted
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(IMAPAccount *)self supportsUserPushedMailboxes])
  {
    goto LABEL_24;
  }

  v7 = [MEMORY[0x277CBEB58] setWithSet:{-[IMAPAccount pushedMailboxUids](self, "pushedMailboxUids")}];
  if (added)
  {
    [v7 addObjectsFromArray:{objc_msgSend(added, "allObjects")}];
  }

  if (!deleted)
  {
    goto LABEL_12;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [deleted countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(deleted);
        }

        [v7 removeObject:*(*(&v24 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [deleted countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
LABEL_12:
    if (!(added | deleted))
    {
      goto LABEL_24;
    }
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v17 = [(IMAPAccount *)self _nameForMailboxUid:*(*(&v20 + 1) + 8 * v16)];
        if (v17)
        {
          v18 = v17;
          if ([v17 caseInsensitiveCompare:@"INBOX"])
          {
            [v12 addObject:v18];
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  _MFLockGlobalLock();
  [(IMAPAccount *)self setValueInAccountInfo:v12 forKey:@"PushedMailboxes"];
  _MFUnlockGlobalLock();
  [(MFAccount *)self savePersistentAccount];
  [(IMAPAccount *)self _updatePushedMailboxesAndNotify:1];
  [(IMAPAccount *)self _schedulePushRegistrationConnection];
LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)_externalMailboxUids
{
  if ([(MFAccount *)self isSyncingNotes])
  {
    v3 = [(IMAPAccount *)self _copyPushedMailboxesForPrefix:[(IMAPAccount *)self _notesPrefix]];

    return v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEB58];

    return [v5 set];
  }
}

- (id)mailboxNamesForPushRegistration
{
  v32 = *MEMORY[0x277D85DE8];
  [(IMAPAccount *)self setMustRegisterForPushOnNextConnection:0];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:{-[IMAPAccount pushedMailboxUids](self, "pushedMailboxUids")}];
  [v3 unionSet:{-[IMAPAccount _externalMailboxUids](self, "_externalMailboxUids")}];
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(IMAPAccount *)self nameForMailboxUid:v10];
        if (v11)
        {
          v12 = v11;
          v13 = v4;
        }

        else
        {
          v13 = v5;
          v12 = v10;
        }

        [v13 addObject:v12];
      }

      v7 = [v3 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      separatorChar = [(IMAPAccount *)self separatorChar];
      serverPathPrefix = [(IMAPAccount *)self serverPathPrefix];
      *buf = 138413058;
      v24 = v5;
      v25 = 2112;
      v26 = v3;
      v27 = 2112;
      v28 = separatorChar;
      v29 = 2112;
      v30 = serverPathPrefix;
      _os_log_fault_impl(&dword_258B7A000, v14, OS_LOG_TYPE_FAULT, "#aps-push could not create mailbox names for: %@, pushed mailboxes: %@ (sep: %@ prefix: %@)", buf, 0x2Au);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_mailboxListingChanged
{
  [(IMAPAccount *)self _updatePushedMailboxesAndNotify:1];

  [(IMAPAccount *)self _schedulePushRegistrationConnection];
}

- (void)_apsDeviceTokenChanged:(id)changed
{
  if ([(IMAPAccount *)self canReceiveNewMailNotifications])
  {
    [(IMAPAccount *)self releaseAllConnections];
  }

  if ([(MailAccount *)self isActive]&& (*(self + 396) & 4) != 0)
  {

    [(IMAPAccount *)self _schedulePushRegistrationConnection];
  }
}

- (void)_registerForDeviceTokenChanges
{
  if ((*(self + 396) & 8) == 0)
  {
    *(self + 396) |= 8u;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v2 = +[MFAPSManager sharedManager];

    [v2 connect];
  }
}

- (void)_unregisterForDeviceTokenChanges
{
  if ((*(self + 396) & 8) != 0)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    *(self + 396) &= ~8u;
  }
}

- (void)startListeningForNotifications
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MFUserAgent() canRegisterForAPSPush])
  {
    v3 = [objc_msgSend(MEMORY[0x277D28488] "sharedInstance")];
    v4 = MFLogGeneral();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        v16 = 138412290;
        selfCopy4 = self;
        v6 = "#aps-push account %@ will NOT start listening for notifications, battery-saver mode is ON";
LABEL_7:
        v7 = v4;
        v8 = 12;
LABEL_8:
        _os_log_impl(&dword_258B7A000, v7, OS_LOG_TYPE_INFO, v6, &v16, v8);
      }
    }

    else
    {
      if (v5)
      {
        v16 = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_258B7A000, v4, OS_LOG_TYPE_INFO, "#aps-push account %@ told to start listening for notifications", &v16, 0xCu);
      }

      *(self + 396) |= 4u;
      [(MailAccount *)self uniqueIdForPersistentConnection];
      Style = PCSettingsGetStyle();
      canAttemptPushRegistration = [(IMAPAccount *)self canAttemptPushRegistration];
      if (!canAttemptPushRegistration || Style)
      {
        v12 = MFLogGeneral();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        v13 = "CANNOT";
        if (canAttemptPushRegistration)
        {
          v13 = "can";
        }

        v16 = 138412802;
        selfCopy4 = self;
        v18 = 2080;
        v19 = v13;
        if (Style)
        {
          v14 = "is NOT";
        }

        else
        {
          v14 = "is";
        }

        v20 = 2080;
        v21 = v14;
        v6 = "#aps-push account %@ did NOT register for push, %s register for push and PCConnectionStyle %s push";
        v7 = v12;
        v8 = 32;
        goto LABEL_8;
      }

      [(IMAPAccount *)self _updatePushedMailboxesAndNotify:1];
      [(IMAPAccount *)self _registerForDeviceTokenChanges];
      apsTopic = [(IMAPAccount *)self apsTopic];
      if (apsTopic)
      {
        [+[MFAPSManager sharedManager](MFAPSManager "sharedManager")];
      }

      [(IMAPAccount *)self _schedulePushRegistrationConnection];
    }
  }

  else
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      selfCopy4 = self;
      v6 = "#aps-push account %@ will NOT start listening for notifications, canRegisterForAPSPush returned NO";
      goto LABEL_7;
    }
  }

LABEL_23:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopListeningForNotifications
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_258B7A000, v3, OS_LOG_TYPE_INFO, "#aps-push account %@ told to stop listening for notifications", &v5, 0xCu);
  }

  *(self + 396) &= ~4u;
  [+[MFAPSManager sharedManager](MFAPSManager "sharedManager")];
  [(IMAPAccount *)self _unregisterForDeviceTokenChanges];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)transferNotificationSessionToAccount:(id)account
{
  if (account != self)
  {
    [(IMAPAccount *)self stopListeningForNotifications];

    [account startListeningForNotifications];
  }
}

- (id)copyDiagnosticInformation
{
  v8.receiver = self;
  v8.super_class = IMAPAccount;
  v3 = [-[MFAccount copyDiagnosticInformation](&v8 copyDiagnosticInformation)];
  v4 = [-[IMAPAccount mailboxesRegisteredForPushByHash](self "mailboxesRegisteredForPushByHash")];
  _MFLockGlobalLock();
  [v3 appendFormat:@"    topic: %@\n", self->_apsTopic];
  [v3 appendFormat:@"    known capabilities: %@\n", -[NSArray componentsJoinedByString:](self->_lastKnownCapabilities, "componentsJoinedByString:", @" "];
  v5 = self->_supportedPushServiceLevel + 2;
  if (v5 >= 5)
  {
    [IMAPAccount copyDiagnosticInformation];
  }

  [v3 appendFormat:@"    negotiated push service level: %@\n", *(&off_2798B1590 + v5)];
  if (self->_lastPushRegistration == 0.0)
  {
    v6 = @"<never>";
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }

  [v3 appendFormat:@"    last push registration time: %@\n", v6];
  if (self->_supportedPushServiceLevel >= 2)
  {
    [v3 appendFormat:@"    mailboxes registered for push: %@\n", v4];
  }

  _MFUnlockGlobalLock();
  return v3;
}

void __61__IMAPAccount_registerPushNotificationPrefix_forMailboxUids___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = [a1 ef_publicDescription];
  _os_log_error_impl(&dword_258B7A000, a2, OS_LOG_TYPE_ERROR, "#aps-push external push client registration failed: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end