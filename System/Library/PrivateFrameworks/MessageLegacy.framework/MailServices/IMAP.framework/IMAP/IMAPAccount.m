@interface IMAPAccount
+ (void)_deleteQueuedMailboxes:(id)a3;
- (BOOL)_deleteMailbox:(id)a3;
- (BOOL)_registerPushNotificationPrefix:(id)a3 forMailboxNames:(id)a4;
- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4;
- (BOOL)canFetch;
- (BOOL)canMailboxBeDeleted:(id)a3;
- (BOOL)connectAndAuthenticate:(id)a3;
- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5;
- (BOOL)getMailboxListWithConnection:(id)a3 statusDataItems:(id)a4 statusEntriesByMailbox:(id *)a5;
- (BOOL)hasPendingOfflineOperations;
- (BOOL)isMailboxLocalForType:(int)a3;
- (BOOL)isSpecialMailbox:(id)a3;
- (BOOL)mustRegisterForPushOnNextConnection;
- (BOOL)needToSynchronizeMailboxCaches;
- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (BOOL)shouldRegisterForPush;
- (BOOL)storeMailboxTypeOnServer:(int)a3;
- (BOOL)verifyESearchSupportWithBlock:(id)a3;
- (IMAPAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (double)lastPushRegistration;
- (id)_copyMailboxListForNames:(id)a3;
- (id)_copyMailboxListPreferenceForKey:(id)a3;
- (id)_dataForTemporaryUid:(unsigned int)a3;
- (id)_externalMailboxUids;
- (id)_fileSystemServerPathPrefix;
- (id)_infoForMatchingURL:(id)a3;
- (id)_listingForMailboxUid:(id)a3 listAllChildren:(BOOL)a4 onlySubscribed:(BOOL)a5 statusDataItems:(id)a6 withConnection:(id)a7 statusEntriesByMailbox:(id *)a8;
- (id)_mailboxPathPrefix;
- (id)_mailboxUidForName:(id)a3;
- (id)_nameForMailboxUid:(id)a3;
- (id)allMailMailboxUid;
- (id)apsTopic;
- (id)connectionForStore:(id)a3 delegate:(id)a4 options:(int)a5;
- (id)copyDiagnosticInformation;
- (id)errorForResponse:(id)a3;
- (id)fetchLimits;
- (id)flagChangesForMailboxPath:(id)a3 UID:(unsigned int)a4 connectTime:(double)a5;
- (id)hostname;
- (id)lastKnownCapabilities;
- (id)mailboxNamesForPushRegistration;
- (id)mailboxesRegisteredForPushByHash;
- (id)notificationNamesForPrefix:(id)a3 mailboxUids:(id)a4;
- (id)offlineCache;
- (id)offlineCacheDirectoryPath;
- (id)offlineCacheIfExists;
- (id)offlineCacheIfOffline;
- (id)pushedMailboxUids;
- (id)registerPushNotificationPrefix:(id)a3 forMailboxUids:(id)a4;
- (id)separatorChar;
- (id)serverPathPrefix;
- (id)serverPathPrefixAccountValue;
- (id)specialUseAttributeForType:(int)a3;
- (id)specialUseAttributesForMailbox:(id)a3;
- (int)supportedPushServiceLevel;
- (unint64_t)greatestInboxUid;
- (unsigned)readBufferSize;
- (void)_apsDeviceTokenChanged:(id)a3;
- (void)_didSynchronizeMailboxCachesAndFoundChanges:(BOOL)a3;
- (void)_flushOfflineCache;
- (void)_mailboxListingChanged;
- (void)_mailboxesWereRemovedFromTree:(id)a3 withFileSystemPaths:(id)a4;
- (void)_purgeStaleFlagChanges;
- (void)_readCustomInfoFromMailboxCache:(id)a3;
- (void)_registerForDeviceTokenChanges;
- (void)_releaseAllConnectionsAndCallSuper:(BOOL)a3 edgeForcedOnly:(BOOL)a4 ifIdleForTimeInterval:(double)a5 saveOfflineCache:(BOOL)a6;
- (void)_renameLocalSpecialMailboxesToName:(id)a3;
- (void)_schedulePushRegistrationConnection;
- (void)_setCapabilities:(id)a3;
- (void)_synchronizeAccountWithServer;
- (void)_synchronouslyLoadListingForParent:(id)a3;
- (void)_unregisterForDeviceTokenChanges;
- (void)_updatePushedMailboxesAndNotify:(BOOL)a3;
- (void)_updateSeparatorAndNamespaceWithConnection:(id)a3;
- (void)_waitForMailboxListingLoadToComplete;
- (void)_writeCustomInfoToMailboxCache:(id)a3;
- (void)acquireNetworkAssertion;
- (void)changePushedMailboxUidsAdded:(id)a3 deleted:(id)a4;
- (void)checkInConnection:(id)a3 destroy:(BOOL)a4;
- (void)checkInConnectionsForStore:(id)a3;
- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id *)a5;
- (void)dealloc;
- (void)filterMailboxList:(id)a3 forMailbox:(id)a4 options:(int)a5;
- (void)flushOfflineCache;
- (void)handleAlertResponse:(id)a3;
- (void)messagesAdded:(id)a3;
- (void)networkChanged;
- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization;
- (void)releaseAllForcedConnections;
- (void)releaseNetworkAssertion;
- (void)removeFlagChanges:(id)a3 forMessages:(id)a4;
- (void)removeFlagChangesCommittedBefore:(double)a3;
- (void)saveState;
- (void)setAPSTopic:(id)a3;
- (void)setAllowsPartialDownloads:(BOOL)a3;
- (void)setCommitTime:(double)a3 forConnectionTag:(unsigned int)a4;
- (void)setDisplayName:(id)a3;
- (void)setHandlerForOfflineCacheFlush:(id)a3;
- (void)setIsOffline:(BOOL)a3;
- (void)setLastPushRegistration:(double)a3;
- (void)setLibrary:(id)a3;
- (void)setMustRegisterForPushOnNextConnection:(BOOL)a3;
- (void)setServerPathPrefix:(id)a3 shouldSync:(BOOL)a4;
- (void)setSupportedPushServiceLevel:(int)a3;
- (void)setValueInAccountInfo:(id)a3 forKey:(id)a4;
- (void)startListeningForNotifications;
- (void)stopListeningForNotifications;
- (void)throttledGetMailboxListWithConnection:(id)a3;
- (void)transferNotificationSessionToAccount:(id)a3;
- (void)unselectMailbox:(id)a3;
- (void)updatePushRegisteredMailboxes:(id)a3;
@end

@implementation IMAPAccount

- (IMAPAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v10.receiver = self;
  v10.super_class = IMAPAccount;
  v4 = [(MailAccount *)&v10 initWithLibrary:a3 persistentAccount:a4];
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

- (void)messagesAdded:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D28380]];
  if ([v5 count])
  {
    v6 = [v5 lastObject];
    if ([v6 type] == 7 && objc_msgSend(v6, "account") == self)
    {
      v7 = [v4 objectForKey:*MEMORY[0x277D28388]];
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

- (void)_readCustomInfoFromMailboxCache:(id)a3
{
  v5 = [a3 objectForKey:@"separator"];
  v6 = [a3 objectForKey:@"namespace"];
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
    self->_lastKnownCapabilities = [a3 objectForKey:@"capabilities"];
  }

  if (self->_supportedPushServiceLevel == -2)
  {
    v7 = [a3 objectForKey:@"push-service-level"];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 intValue];
      if ((v8 + 1) <= 3)
      {
        self->_supportedPushServiceLevel = v8;
      }
    }
  }

  if (!self->_pushRegisteredMailboxes)
  {
    self->_pushRegisteredMailboxes = [a3 objectForKey:@"push-registered-mailboxes"];
  }

  if (!self->_apsTopic)
  {
    self->_apsTopic = [a3 objectForKey:@"aps-topic"];
  }

  _MFUnlockGlobalLock();
  v9.receiver = self;
  v9.super_class = IMAPAccount;
  [(MailAccount *)&v9 _readCustomInfoFromMailboxCache:a3];
}

- (void)_writeCustomInfoToMailboxCache:(id)a3
{
  _MFLockGlobalLock();
  separatorChar = self->_separatorChar;
  if (separatorChar)
  {
    [a3 setObject:separatorChar forKey:@"separator"];
  }

  serverNamespace = self->_serverNamespace;
  if (serverNamespace)
  {
    [a3 setObject:serverNamespace forKey:@"namespace"];
  }

  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (lastKnownCapabilities)
  {
    [a3 setObject:lastKnownCapabilities forKey:@"capabilities"];
  }

  if (self->_supportedPushServiceLevel != -2)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:"), @"push-service-level"}];
  }

  if ([(NSMutableDictionary *)self->_pushRegisteredMailboxes count])
  {
    [a3 setObject:self->_pushRegisteredMailboxes forKey:@"push-registered-mailboxes"];
  }

  apsTopic = self->_apsTopic;
  if (apsTopic)
  {
    [a3 setObject:apsTopic forKey:@"aps-topic"];
  }

  _MFUnlockGlobalLock();
  v9.receiver = self;
  v9.super_class = IMAPAccount;
  [(MailAccount *)&v9 _writeCustomInfoToMailboxCache:a3];
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
  v3 = [(MFAccount *)&v5 hostname];
  [(MailAccount *)self setLastKnownHostname:v3];
  return v3;
}

- (void)setDisplayName:(id)a3
{
  [(IMAPAccount *)self _renameLocalSpecialMailboxesToName:?];
  v5.receiver = self;
  v5.super_class = IMAPAccount;
  [(MFAccount *)&v5 setDisplayName:a3];
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

- (void)_didSynchronizeMailboxCachesAndFoundChanges:(BOOL)a3
{
  v3 = a3;
  _MFLockGlobalLock();
  -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [MEMORY[0x277CBEAA8] date], @"DateOfLastSync");
  _MFUnlockGlobalLock();
  v5 = [-[MFAccount _objectForAccountInfoKey:](self _objectForAccountInfoKey:{@"DaysBetweenSyncs", "unsignedIntValue"}];
  if (!v5)
  {
    v6 = 7;
    goto LABEL_15;
  }

  if (!v3)
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

- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4
{
  v5.receiver = self;
  v5.super_class = IMAPAccount;
  return [(MailAccount *)&v5 _setChildren:a3 forMailboxUid:a4];
}

- (BOOL)storeMailboxTypeOnServer:(int)a3
{
  v3 = 0;
  do
  {
    v6 = *&_storeOnServer[v3];
    v7 = *&_storeOnServer[v3 + 4];
    if (v6 == a3)
    {
      break;
    }

    v4 = v3 == 24;
    v3 += 6;
  }

  while (!v4);
  return _storeOnServerForTuple(self, &v6);
}

- (void)handleAlertResponse:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(), -[MailAccount displayName](self, "displayName"), a3];
  _MFLockGlobalLock();
  v5 = handleAlertResponse___handledAlerts;
  if (!handleAlertResponse___handledAlerts)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    handleAlertResponse___handledAlerts = v5;
  }

  if ([v5 containsObject:v4])
  {

    _MFUnlockGlobalLock();
  }

  else
  {
    [handleAlertResponse___handledAlerts addObject:v4];
    _MFUnlockGlobalLock();
    if (v4)
    {
      v6 = [MEMORY[0x277D28410] errorWithDomain:*MEMORY[0x277D282F8] code:1030 localizedDescription:v4 title:MFLookupLocalizedString() userInfo:0];

      [(MailAccount *)self setConnectionError:v6];
    }
  }
}

- (id)errorForResponse:(id)a3
{
  if (([a3 isResponseWithCode:17] & 1) == 0 && !objc_msgSend(a3, "isAlertResponse"))
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

- (id)_dataForTemporaryUid:(unsigned int)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D24F00]) initWithContentsOfFile:objc_msgSend(-[IMAPAccount offlineCacheDirectoryPath](self options:"offlineCacheDirectoryPath") error:{"stringByAppendingPathComponent:", EFStringWithInt()), 1, 0}];

  return v3;
}

- (void)setAllowsPartialDownloads:(BOOL)a3
{
  v3 = a3;
  _MFLockGlobalLock();
  -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [MEMORY[0x277CCABB0] numberWithBool:!v3], @"PreventDismemberment");

  _MFUnlockGlobalLock();
}

- (BOOL)connectAndAuthenticate:(id)a3
{
  v5 = *(self + 328);
  v6 = [MEMORY[0x277D283F8] currentMonitor];
  v7 = [a3 connectionState];
  if ((v7 - 2) < 2)
  {
LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  if (v7 == 1)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 || ([v6 shouldCancel] & 1) != 0)
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

  if ([a3 connectUsingAccount:self])
  {
    v9 = 1;
LABEL_9:
    if ([a3 authenticateUsingAccount:self])
    {
      [(MailAccount *)self setConnectionError:0];
      if (v9)
      {
        [(IMAPAccount *)self _updateSeparatorAndNamespaceWithConnection:a3];
        [(IMAPAccount *)self throttledGetMailboxListWithConnection:a3];
      }

      goto LABEL_12;
    }

    v10 = [v6 error];
    if ([(MFAccount *)self shouldEnableAfterError:v10])
    {
      [(MFAccount *)self enableAccount];
    }

    if (!v10)
    {
      v10 = [MEMORY[0x277D28410] errorWithDomain:*MEMORY[0x277D282F8] code:1033 localizedDescription:0];
      [v6 setError:v10];
    }

    [(MFAccount *)self reportAuthenticationError:v10 authScheme:[(MFAccount *)self preferredAuthScheme]];
    if (v10)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v11 = [v6 error];
  if (v11 && ([v11 mf_isUserCancelledError] & 1) == 0)
  {
    v10 = [v6 error];
    if (v10)
    {
LABEL_21:
      if ([objc_msgSend(MEMORY[0x277D28480] "sharedInstance")] && (objc_msgSend(v10, "mf_isUserCancelledError") & 1) == 0)
      {
        [(MailAccount *)self setConnectionError:v10];
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
    [a3 setReadBufferSize:{-[IMAPAccount readBufferSize](self, "readBufferSize")}];
  }

  return v8;
}

- (id)connectionForStore:(id)a3 delegate:(id)a4 options:(int)a5
{
  v5 = a5;
  v49 = *MEMORY[0x277D85DE8];
  v9 = [a3 mailboxUid];
  v44 = v9;
  if (a3)
  {
    v10 = v9;
    v11 = [a3 mailboxName];
    if (!v11)
    {
      v11 = [(IMAPAccount *)self _nameForMailboxUid:v10];
      if (!v11)
      {
        v41 = MFLogGeneral();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          LODWORD(callBacks.version) = 138412290;
          *(&callBacks.version + 4) = a3;
          _os_log_impl(&dword_258B7A000, v41, OS_LOG_TYPE_INFO, "*** Unable to determine name for %@", &callBacks, 0xCu);
        }

        goto LABEL_112;
      }
    }

    v12 = v11;
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
    if (v5)
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
      if ((v5 & 1) == 0)
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
      if ([ValueAtIndex delegate] == a4 && ((v5 & 4) == 0 || objc_msgSend(ValueAtIndex, "mf_tryLock")))
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
      if (![v24 delegate] && ((v5 & 4) == 0 || objc_msgSend(v24, "mf_tryLock")))
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
          if ((v5 & 8) == 0)
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

        if ((v5 & 4) == 0 || v20)
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
    if ((v5 & 1) == 0)
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
        if ([v27 delegate] || (v5 & 4) != 0 && !objc_msgSend(v27, "mf_tryLock"))
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

    v28 = [(MFAccount *)self _newConnection];
    v20 = v28;
    if ((v5 & 4) != 0)
    {
      [v28 mf_lock];
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
    if ((v5 & 1) == 0)
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

        if ((v5 & 4) != 0)
        {
          [v20 mf_unlock];
        }

        [(IMAPAccount *)self checkInConnection:v20];
        goto LABEL_86;
      }

LABEL_106:
      v33 = 0;
      if ((v5 & 4) == 0)
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

    if ((v5 & 4) != 0)
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
    v35 = [v20 selectedMailbox];
    v36 = 1;
    if ([v20 delegate] == a4 && v35)
    {
      v36 = [v12 isEqualToString:v35] ^ 1;
    }

LABEL_89:
    [v20 setDelegate:a4];
    [*(&self->super.super.super.isa + *(v13 + 3512)) unlock];
    v37 = v20;
    v38 = v37;
    if (!v37)
    {
      goto LABEL_113;
    }

    if ((v5 & 0x10) != 0)
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

    if ((v5 & 2) != 0)
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

    if ((v5 & 4) != 0)
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
    v15 = [(MFAccount *)self ef_publicDescription];
    _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "#IMAPFlagChanges removing all changes: %{public}@", &v14, 0xCu);
  }

  self->_recentFlagChanges = 0;
LABEL_14:
  [(NSRecursiveLock *)self->_flagChangesLock unlock];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)checkInConnection:(id)a3 destroy:(BOOL)a4
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    if ([a3 mf_tryLock])
    {
      [a3 setDelegate:0];
      v7 = [a3 connectionState];
      [a3 mf_unlock];
      [(IMAPAccount *)self mf_lock];
      if ([a3 gotBadResponse])
      {
        [(IMAPAccount *)self _setCapabilities:0];
      }

      if (a4)
      {
        goto LABEL_6;
      }

      if (self->_cachedConnections)
      {
        if ((v7 - 2) < 2)
        {
          v15 = [a3 selectedMailbox];
          Count = CFArrayGetCount(self->_cachedConnections);
          if (Count >= 1)
          {
            v17 = Count;
            v18 = 0;
            v19 = 1;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedConnections, v19 - 1);
              if (ValueAtIndex == a3)
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
              v24 = v15;
              v25 = 2112;
              v26 = a3;
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

        if (v7 == 1)
        {
LABEL_6:
          [(IMAPAccount *)self mf_unlock];
          v8 = 1;
LABEL_7:
          if ([a3 logout])
          {
            -[IMAPAccount setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [a3 tag], CFAbsoluteTimeGetCurrent());
          }

          [a3 disconnectAndNotifyDelegate:0];
          goto LABEL_10;
        }

        if (!v7)
        {
          [(IMAPAccount *)self mf_unlock];
          v8 = 1;
LABEL_10:
          if (self->_cachedConnections && v8)
          {
            [(IMAPAccount *)self mf_lock];
            v9 = CFArrayGetCount(self->_cachedConnections);
            v10 = a3;
            v28.location = 0;
            v28.length = v9;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_cachedConnections, v28, v10);
            if (FirstIndexOfValue != -1)
            {
              v12 = FirstIndexOfValue;
              v13 = v9 - 1;
              do
              {
                CFArrayRemoveValueAtIndex(self->_cachedConnections, v12);
                v29.location = 0;
                v29.length = v13;
                v12 = CFArrayGetFirstIndexOfValue(self->_cachedConnections, v29, v10);
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

- (void)checkInConnectionsForStore:(id)a3
{
  if (a3 && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v7 = Count;
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedConnections, i);
        if ([ValueAtIndex delegate] == a3)
        {
          if (!v8)
          {
            v8 = [MEMORY[0x277CBEB18] array];
          }

          [v8 addObject:ValueAtIndex];
        }
      }
    }

    else
    {
      v8 = 0;
    }

    [(IMAPAccount *)self mf_unlock];
    v11 = [v8 count];
    if (v11 >= 1)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        -[IMAPAccount checkInConnection:](self, "checkInConnection:", [v8 objectAtIndex:j]);
      }
    }

    connectionLock = self->_connectionLock;

    [(NSRecursiveLock *)connectionLock unlock];
  }
}

- (BOOL)verifyESearchSupportWithBlock:(id)a3
{
  [(NSLock *)self->_eSearchSupportedLock lock];
  eSearchSupported = self->_eSearchSupported;
  if (eSearchSupported)
  {
    LOBYTE(v6) = [(NSNumber *)eSearchSupported BOOLValue];
  }

  else
  {
    v6 = (*(a3 + 2))(a3);
    self->_eSearchSupported = [MEMORY[0x277CCABB0] numberWithBool:v6];
  }

  [(NSLock *)self->_eSearchSupportedLock unlock];
  return v6;
}

- (void)unselectMailbox:(id)a3
{
  if (a3 && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v7 = Count;
      v8 = 0;
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedConnections, v8);
        v11 = [ValueAtIndex selectedMailbox];
        if (v11 && [v11 isEqualToString:a3])
        {
          if (!v9)
          {
            v9 = [MEMORY[0x277CBEB18] array];
          }

          [v9 addObject:ValueAtIndex];
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
      v9 = 0;
    }

    [(IMAPAccount *)self mf_unlock];
    v12 = [v9 count];
    if (v12 >= 1)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = [v9 objectAtIndex:i];
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

- (void)filterMailboxList:(id)a3 forMailbox:(id)a4 options:(int)a5
{
  v6 = [a3 count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      if ([objc_msgSend(objc_msgSend(a3 objectAtIndex:{v7), "objectForKey:", @"MailboxName", "isEqualToString:", @"Apple Mail To Do"}])
      {
        [a3 removeObjectAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)_releaseAllConnectionsAndCallSuper:(BOOL)a3 edgeForcedOnly:(BOOL)a4 ifIdleForTimeInterval:(double)a5 saveOfflineCache:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
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
    if (v9)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v55 = v13;
    if (v8)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v56 = 2112;
    if (v6)
    {
      v14 = @"YES";
    }

    v57 = v15;
    v58 = 2112;
    v59 = v16;
    v60 = 2048;
    v61 = a5;
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
      v47 = v9;
      v48 = v8;
      *&v46[5] = a5;
      v49 = v6;
      v18 = [v46 copy];
      v19 = [MEMORY[0x277D28478] invocationWithSelector:sel__invokeBlock_ target:self object:v18 taskName:0 priority:3 canBeCancelled:1];
      [v19 retainArguments];

      [objc_msgSend(MEMORY[0x277D28420] "sharedInvocationQueue")];
    }

    [(IMAPAccount *)self mf_unlock];
    goto LABEL_68;
  }

  v20 = [(IMAPAccount *)self compactWhenClosingMailboxes];
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
  if (!v8)
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

  if (a5 > 0.0)
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
        if (v34 + a5 > v31)
        {
          [v21 removeObjectAtIndex:v32];
        }

        [v33 mf_unlock];
        --v32;
      }

      while (v32 != -1);
    }
  }

  v44 = v9;
  v35 = MFLogGeneral();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v21;
    _os_log_impl(&dword_258B7A000, v35, OS_LOG_TYPE_INFO, "#Network Dropping connections: %@", buf, 0xCu);
  }

  v36 = v6;
  [(IMAPAccount *)self mf_lock];
  v37 = 0;
  while ([v21 count])
  {
    v38 = [v21 objectAtIndex:0];
    v39 = [v38 delegate];
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
        if (!v20)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      }

      v37 = v38;
    }

    if (!v20)
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
    if (v39)
    {
      [(IMAPAccount *)self mf_lock];
      [v38 setDelegate:0];
      [(IMAPAccount *)self mf_unlock];
    }

    [(IMAPAccount *)self mf_lock];
  }

  [(IMAPAccount *)self mf_unlock];
  v39 = 0;
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
  v3 = [MEMORY[0x277D28420] sharedInvocationQueue];
  v4 = [MEMORY[0x277D28478] invocationWithSelector:sel__flushOfflineCache target:self taskName:0 priority:3 canBeCancelled:0];

  [v3 addInvocation:v4];
}

- (void)networkChanged
{
  offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
  if (offlineCacheFlushHandler)
  {
    offlineCacheFlushHandler[2]();
  }
}

- (void)setHandlerForOfflineCacheFlush:(id)a3
{
  offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
  if (offlineCacheFlushHandler != a3)
  {
    if (a3)
    {
      v5 = _Block_copy(a3);
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
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel_networkChanged name:*MEMORY[0x277D283E0] object:{objc_msgSend(MEMORY[0x277D28480], "sharedInstance")}];
  }

  [(IMAPAccount *)self mf_unlock];
}

- (void)releaseNetworkAssertion
{
  [(IMAPAccount *)self mf_lock];
  unlockedReleaseNetworkAssertion(self);

  [(IMAPAccount *)self mf_unlock];
}

- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5
{
  v8 = [a4 isAlertResponse];
  if (v8)
  {
    -[IMAPAccount handleAlertResponse:](self, "handleAlertResponse:", [a4 userString]);
  }

  else if (a5->var0 == 8 && [a4 responseType] == 13)
  {
    v9 = -[IMAPAccount _mailboxUidForName:](self, "_mailboxUidForName:", [a4 mailboxName]);
    v10 = [a4 statusEntries];
    if ([v9 URLString])
    {
      v11 = [v10 objectForKey:0x2869E4C80];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_msgSend(v9 userInfoObjectForKey:{0x2869E4C80), "intValue"}];
        if (v13 != [v12 unsignedIntValue])
        {
          [v9 setUserInfoObject:EFStringWithInt() forKey:0x2869E4C80];
        }
      }

      v14 = [v10 objectForKeyedSubscript:0x2869E4CC0];
      if (v14)
      {
        [v9 updateMostRecentStatusCount:{objc_msgSend(v14, "unsignedIntegerValue")}];
      }
    }
  }

  return v8 ^ 1;
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id *)a5
{
  if ([a4 isAlertResponse])
  {
    v7 = [a4 userString];

    [(IMAPAccount *)self handleAlertResponse:v7];
  }
}

- (void)setIsOffline:(BOOL)a3
{
  v3 = a3;
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
    v10 = v3;
    dispatch_async(setIsOffline__sOfflineStatusChangeQueue, v9);
  }

  else
  {
    v5 = *(self + 328);
    if (((((v5 & 2) == 0) ^ v3) & 1) == 0)
    {
      if (v3)
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
        v7 = [MEMORY[0x277CCAB98] defaultCenter];
        v8 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D28290] object:self userInfo:0];

        [v7 postNotification:v8];
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

- (void)_updateSeparatorAndNamespaceWithConnection:(id)a3
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  if ((*(self + 396) & 0x10) == 0)
  {
    _setSeparatorCharAndNamespace(self, [a3 separatorChar], objc_msgSend(a3, "serverPathPrefix"));
    *(self + 396) |= 0x10u;
  }

  connectionLock = self->_connectionLock;

  [(NSRecursiveLock *)connectionLock unlock];
}

- (id)separatorChar
{
  _MFLockGlobalLock();
  v3 = self->_separatorChar;
  _MFUnlockGlobalLock();
  if (!v3)
  {
    [(MailAccount *)self rootMailboxUid];
    _MFLockGlobalLock();
    v3 = self->_separatorChar;
    _MFUnlockGlobalLock();
    if ((*(self + 328) & 2) == 0 && !v3)
    {
      if (([MEMORY[0x277CCACC8] isMainThread] & 1) != 0 || (v5 = -[IMAPAccount connectionForStore:delegate:options:](self, "connectionForStore:delegate:options:", 0, self, 1)) == 0)
      {
        v3 = 0;
      }

      else
      {
        v6 = v5;
        v3 = [v5 separatorChar];
        if (v3)
        {
          _setSeparatorCharAndNamespace(self, v3, 0);
        }

        [(IMAPAccount *)self checkInConnection:v6];
      }
    }
  }

  return v3;
}

- (id)lastKnownCapabilities
{
  [(MailAccount *)self rootMailboxUid];
  _MFLockGlobalLock();
  v3 = self->_lastKnownCapabilities;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)_setCapabilities:(id)a3
{
  _MFLockGlobalLock();
  if (a3 | self->_lastKnownCapabilities)
  {
    lastKnownCapabilities = self->_lastKnownCapabilities;
    self->_lastKnownCapabilities = a3;
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
  v8 = a3 | v7;
  _MFUnlockGlobalLock();
  if (v8)
  {
    v9 = [a3 isEqualToArray:v11] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:v9];
}

- (id)fetchLimits
{
  v2 = [MEMORY[0x277D28480] sharedInstance];
  v3 = [v2 isFatPipe];
  v4 = [objc_msgSend(MEMORY[0x277D28488] "sharedInstance")];
  if (v3 && (v4 & 1) != 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = [v2 is3GConnection];
    v9 = v3 | [v2 is4GConnection];
    v10 = 4096;
    if (v8)
    {
      v10 = 0x10000;
    }

    v11 = 0x4000;
    if (v8)
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

- (id)_listingForMailboxUid:(id)a3 listAllChildren:(BOOL)a4 onlySubscribed:(BOOL)a5 statusDataItems:(id)a6 withConnection:(id)a7 statusEntriesByMailbox:(id *)a8
{
  v9 = a7;
  v11 = a5;
  v12 = a4;
  if (!a7)
  {
    v9 = [(IMAPAccount *)self connectionForStore:0 delegate:self options:9];
    if (!v9)
    {
      return 0;
    }
  }

  v15 = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if ([v15 length])
  {
    v16 = ![(NSString *)self->_serverNamespace isEqualToString:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D28528];
  if (*(&self->super.super.super.isa + v17) == a3 && v16 == 0)
  {
    v20 = &stru_2869E1DA0;
  }

  else
  {
    if (*(&self->super.super.super.isa + *MEMORY[0x277D28518]) == a3 && [-[IMAPAccount serverPathPrefix](self "serverPathPrefix")])
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"INBOX%@INBOX", -[IMAPAccount separatorChar](self, "separatorChar")];
    }

    else
    {
      v19 = [(IMAPAccount *)self _nameForMailboxUid:a3];
    }

    v20 = v19;
  }

  if (v12)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (!v11 || (v22 = [v9 subscribedListingForMailbox:v20 options:v21]) == 0)
  {
    if ([v9 supportsCapability:23])
    {
      v23 = ([v9 supportsCapability:21] & 1) != 0 || -[IMAPAccount xListSupportedOnConnection:](self, "xListSupportedOnConnection:", v9);
    }

    else
    {
      v23 = 0;
    }

    v24 = [v9 listingForMailbox:v20 options:v21 getSpecialUse:v23 statusDataItems:a6 statusEntriesByMailbox:a8];
    v22 = v24;
    if (*(&self->super.super.super.isa + v17) == a3 && !((self->_serverNamespace == 0) | v16 & 1))
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

  [(IMAPAccount *)self checkInConnection:v9];
  return v22;
}

- (BOOL)_deleteMailbox:(id)a3
{
  v21.receiver = self;
  v21.super_class = IMAPAccount;
  if (![(MailAccount *)&v21 _deleteMailbox:?])
  {
    return 0;
  }

  v5 = [(IMAPAccount *)self _nameForMailboxUid:a3];
  [(IMAPAccount *)self unselectMailbox:v5];
  v6 = [(IMAPAccount *)self offlineCacheIfOffline];
  if (v6)
  {
    [v6 deleteMailbox:v5];
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

    if (([a3 isStore] & 1) == 0)
    {
      v11 = [a3 parent];
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x277D283F8] currentMonitor];
        v14 = [v13 error];
        v15 = [(IMAPAccount *)self _listingForMailboxUid:v12 listAllChildren:0];
        if ([v15 count])
        {
          v16 = [v15 mf_indexOfMailboxDictionaryWithName:{objc_msgSend(a3, "name")}];
          v7 = v16 == 0x7FFFFFFFFFFFFFFFLL;
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }
        }

        else
        {
          v17 = 0;
          v7 = 1;
        }

        [v13 setError:v17];

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

- (BOOL)isMailboxLocalForType:(int)a3
{
  if ((a3 - 2) > 3)
  {
    return 0;
  }

  else
  {
    return ![(IMAPAccount *)self storeMailboxTypeOnServer:v3, v4];
  }
}

- (void)_renameLocalSpecialMailboxesToName:(id)a3
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
    v8 = [(MailAccount *)self _localMailboxNameForType:3 usingDisplayName:a3];
    v9 = [v7 account];
    v10 = [v7 parent];

    [v9 renameMailbox:v7 newName:v8 parent:v10];
  }
}

- (id)specialUseAttributeForType:(int)a3
{
  if (specialUseAttributeForType__onceToken != -1)
  {
    [IMAPAccount specialUseAttributeForType:];
  }

  v4 = specialUseAttributeForType__map;

  return CFDictionaryGetValue(v4, a3);
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
  v2 = [(MailAccount *)self rootMailboxUid];

  return [v2 descendantWithExtraAttribute:@"\\All"];
}

- (BOOL)isSpecialMailbox:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMAPAccount;
  return -[MailAccount isSpecialMailbox:](&v6, sel_isSpecialMailbox_) || [-[IMAPAccount specialUseAttributesForMailbox:](self specialUseAttributesForMailbox:{a3), "count"}] != 0;
}

- (id)specialUseAttributesForMailbox:(id)a3
{
  if (specialUseAttributesForMailbox__onceToken != -1)
  {
    [IMAPAccount specialUseAttributesForMailbox:];
  }

  v4 = [MEMORY[0x277CBEB58] setWithArray:{objc_msgSend(a3, "extraAttributes")}];
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
      v5 = [MEMORY[0x277D28420] sharedInvocationQueue];
      v6 = [MEMORY[0x277D28478] invocationWithSelector:sel__synchronizeAccountWithServer target:self taskName:MFLookupLocalizedString() priority:0 canBeCancelled:1];

      [v5 addInvocation:v6];
    }
  }
}

- (BOOL)getMailboxListWithConnection:(id)a3 statusDataItems:(id)a4 statusEntriesByMailbox:(id *)a5
{
  v6 = *MEMORY[0x277D28528];
  v7 = [(IMAPAccount *)self _listingForMailboxUid:*(&self->super.super.super.isa + v6) listAllChildren:1 onlySubscribed:0 statusDataItems:a4 withConnection:a3 statusEntriesByMailbox:a5];
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

- (void)throttledGetMailboxListWithConnection:(id)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [MFUserAgent() isForeground];
  if ((*(self + 328) & 1) == 0 || v6 && Current - self->_timeLastFetchedMailboxList > 300.0)
  {
    self->_timeLastFetchedMailboxList = Current;
    *(self + 328) |= 1u;
    v7 = [MEMORY[0x277D283F8] currentMonitor];
    [v7 setMailbox:{-[MailAccount rootMailboxUid](self, "rootMailboxUid")}];
    [v7 setDisplayName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "localizedStringForKey:value:table:", @"CHECKING_FOR_MAIL", &stru_2869E1DA0, @"Main"}];
    v15 = 0;
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{0x2869E4CC0, 0}];
    if ([(IMAPAccount *)self getMailboxListWithConnection:a3 statusDataItems:v8 statusEntriesByMailbox:&v15])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke;
      v14[3] = &unk_2798B1488;
      v14[4] = self;
      [v15 enumerateKeysAndObjectsUsingBlock:v14];
      if (!v15)
      {
        if (!a3)
        {
          a3 = [(IMAPAccount *)self connectionForStore:0 delegate:self options:9];
        }

        v9 = [-[MailAccount allMailboxUids](self "allMailboxUids")];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_3;
        v13[3] = &unk_2798B14D0;
        v13[4] = self;
        v10 = [v9 ef_map:v13];
        [a3 fetchStatusForMailboxes:objc_msgSend(v10 args:{"ef_filter:", *MEMORY[0x277D07110]), v8}];
        [(IMAPAccount *)self checkInConnection:a3];
      }
    }

    else
    {
      *(self + 328) &= ~1u;
    }

    v11 = [MEMORY[0x277D071B8] globalAsyncScheduler];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_4;
    v12[3] = &unk_2798B12F0;
    v12[4] = v7;
    [v11 afterDelay:v12 performBlock:1.0];
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
  v4 = [MEMORY[0x277D283F8] currentMonitor];
  if ([(MFAccount *)self password])
  {
    v5 = [(IMAPAccount *)self connectionForStore:0 delegate:self options:1];
    if (v5)
    {
      v6 = v5;
      if (([v4 shouldCancel] & 1) == 0)
      {
        [(IMAPAccount *)self checkInConnection:v6];
        if (([v4 shouldCancel] & 1) == 0)
        {
          [(IMAPAccount *)self throttledGetMailboxListWithConnection:0];
        }

        if (([v4 shouldCancel] & 1) == 0)
        {
          [(MailAccount *)self emptyTrash];
        }
      }
    }
  }

  *(&self->super.super.super.isa + *MEMORY[0x277D28510]) &= ~0x10000u;

  [v3 drain];
}

- (void)_synchronouslyLoadListingForParent:(id)a3
{
  v5 = [(IMAPAccount *)self _listingForMailboxUid:a3 listAllChildren:0];
  if (v5 && -[MailAccount _loadMailboxListingIntoCache:attributes:children:parent:](self, "_loadMailboxListingIntoCache:attributes:children:parent:", [a3 name], 0, v5, a3))
  {

    [(IMAPAccount *)self _mailboxListingChanged];
  }
}

- (void)_waitForMailboxListingLoadToComplete
{
  [(IMAPAccount *)self mf_lock];

  [(IMAPAccount *)self mf_unlock];
}

- (void)_mailboxesWereRemovedFromTree:(id)a3 withFileSystemPaths:(id)a4
{
  _MFLockGlobalLock();
  if (!_mailboxDeletionQueue)
  {
    _mailboxDeletionQueue = objc_alloc_init(MEMORY[0x277D28420]);
  }

  _MFUnlockGlobalLock();
  v7 = objc_alloc_init(_MFIMAPMailboxDeletionQueueEntry);
  [(_MFIMAPMailboxDeletionQueueEntry *)v7 setUrls:a3];
  [(_MFIMAPMailboxDeletionQueueEntry *)v7 setPaths:a4];
  [(_MFIMAPMailboxDeletionQueueEntry *)v7 setAccount:self];
  v8 = MEMORY[0x277D28478];
  v9 = objc_opt_class();
  v10 = [v8 invocationWithSelector:sel__deleteQueuedMailboxes_ target:v9 object:v7 taskName:MFLookupLocalizedString() priority:12 canBeCancelled:1];

  [_mailboxDeletionQueue addInvocation:v10];
  v11.receiver = self;
  v11.super_class = IMAPAccount;
  [(MailAccount *)&v11 _mailboxesWereRemovedFromTree:a3 withFileSystemPaths:a4];
}

+ (void)_deleteQueuedMailboxes:(id)a3
{
  v5 = [a3 account];
  [v5 _waitForMailboxListingLoadToComplete];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [objc_msgSend(a3 "urls")];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *MEMORY[0x277CBEEE8];
    do
    {
      v10 = [objc_msgSend(a3 "urls")];
      v11 = [a1 mailboxUidFromActiveAccountsForURL:v10];
      if (!v11 || ([v11 isValid] & 1) == 0)
      {
        if ([objc_msgSend(a3 "paths")] != v9)
        {
          MFRemoveItemAtPath();
        }

        [v12 addObject:v10];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  [objc_msgSend(v5 "library")];
}

- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4
{
  v13.receiver = self;
  v13.super_class = IMAPAccount;
  v7 = [MailAccount newMailboxNameIsAcceptable:sel_newMailboxNameIsAcceptable_reasonForFailure_ reasonForFailure:?];
  if (v7)
  {
    v8 = [(IMAPAccount *)self separatorChar];
    if (v8)
    {
      v9 = v8;
      v10 = [a3 rangeOfString:v8];
      LOBYTE(v7) = v10 == 0x7FFFFFFFFFFFFFFFLL;
      if (a4)
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
      if (a4)
      {
        v11 = 0;
LABEL_9:
        *a4 = v11;
      }
    }
  }

  return v7;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
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
    if (v14 && [v14 isEqual:a3])
    {
      v15 = *(&self->super.super.super.isa + v13);
    }

    else
    {
      v15 = 0;
    }

    v17 = [(IMAPAccount *)self _nameForMailboxUid:a5];
    if (a4)
    {
      v18 = [(IMAPAccount *)self _uidNameForPathComponent:a4];
    }

    else
    {
      v18 = [a3 name];
    }

    v19 = v18;
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
      [(MailAccount *)&v22 renameMailbox:a3 newName:a4 parent:a5];
      [objc_msgSend(a3 "store")];
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

  v10 = [MEMORY[0x277D283F8] currentMonitor];
  [v10 setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1034, MFLookupLocalizedString())}];
  return 0;
}

- (id)_nameForMailboxUid:(id)a3
{
  if (*(&self->super.super.super.isa + *MEMORY[0x277D28518]) == a3)
  {
    return @"INBOX";
  }

  v3 = a3;
  v5 = [(IMAPAccount *)self serverPathPrefix];
  if (v5)
  {
    v6 = *MEMORY[0x277D28528];
    v7 = *(&self->super.super.super.isa + v6);
  }

  else
  {
    v9 = [v3 parent];
    v6 = *MEMORY[0x277D28528];
    v7 = *(&self->super.super.super.isa + v6);
    if (v9 == v7)
    {

      return [v3 name];
    }
  }

  if (v7 == v3)
  {
    if (v5)
    {
      return v5;
    }

    else
    {
      return &stru_2869E1DA0;
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 length])
  {
    v11 = [v3 isShared] ^ 1;
    if (!v3)
    {
      goto LABEL_16;
    }

    do
    {
LABEL_14:
      if (v3 == *(&self->super.super.super.isa + v6))
      {
        break;
      }

      [v10 addObject:{objc_msgSend(v3, "name")}];
      v3 = [v3 parent];
    }

    while (v3);
    goto LABEL_16;
  }

  v11 = 0;
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (v11)
  {
    v12 = [v5 mutableCopyWithZone:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 count];
  v14 = [(IMAPAccount *)self separatorChar];
  if (v13)
  {
    v15 = v14;
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

- (id)_mailboxUidForName:(id)a3
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [a3 caseInsensitiveCompare:@"INBOX"];
    if (v5)
    {
      v6 = v3;
    }

    else
    {
      v6 = @"INBOX";
    }

    v7 = [(IMAPAccount *)self serverPathPrefix];
    v8 = [(IMAPAccount *)self separatorChar];
    if (v7 && [v7 length] && v5)
    {
      v9 = [(__CFString *)v3 rangeOfString:v7 options:8];
      if (!v10)
      {
        v3 = 0;
        goto LABEL_24;
      }

      v11 = [(__CFString *)v3 substringFromIndex:v9 + v10];
      v6 = v11;
      if (v8)
      {
        if (v11)
        {
          v12 = [(__CFString *)v11 rangeOfString:v8 options:8];
          if (v13)
          {
            v6 = [(__CFString *)v6 substringFromIndex:v12 + v13];
          }
        }
      }
    }

    v3 = 0;
    if (v8)
    {
      if (v6)
      {
        v14 = [(__CFString *)v6 componentsSeparatedByString:v8];
        v3 = [(MailAccount *)self rootMailboxUid];
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

              v3 = [(__CFString *)v3 childWithName:*(*(&v21 + 1) + 8 * i)];
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
  return v3;
}

- (BOOL)canMailboxBeDeleted:(id)a3
{
  if ([a3 isEqual:*(&self->super.super.super.isa + *MEMORY[0x277D28518])])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = IMAPAccount;
  return [(MailAccount *)&v6 canMailboxBeDeleted:a3];
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

- (void)setServerPathPrefix:(id)a3 shouldSync:(BOOL)a4
{
  v4 = a4;
  v7 = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if (!a3)
  {
    a3 = &stru_2869E1DA0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_2869E1DA0;
  }

  v9 = [(IMAPAccount *)self separatorChar];
  if (v9)
  {
    v10 = [a3 rangeOfString:v9 options:12];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a3 = [a3 substringToIndex:v10];
    }
  }

  v11 = [a3 length];
  if (v11 != -[__CFString length](v8, "length") || ([a3 isEqual:v8] & 1) == 0)
  {
    [-[MailAccount allMailboxUids](self "allMailboxUids")];
    _MFLockGlobalLock();
    if (a3 && [a3 length])
    {
      [(MFAccount *)self setAccountProperty:a3 forKey:@"ServerPathPrefix"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"ServerPathPrefix"];
    }

    _MFUnlockGlobalLock();
    if (v4)
    {
      [(IMAPAccount *)self releaseAllConnections];

      [(IMAPAccount *)self nowWouldBeAGoodTimeToStartBackgroundSynchronization];
    }
  }
}

- (id)_fileSystemServerPathPrefix
{
  v3 = [(IMAPAccount *)self serverPathPrefix];
  v4 = [(IMAPAccount *)self separatorChar];
  if (!v3)
  {
    return 0;
  }

  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = [v3 rangeOfString:v4 options:8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6 + v7;
    if ([v3 length] > (v6 + v7))
    {
      v3 = [v3 substringFromIndex:v8];
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  v9 = [objc_msgSend(v3 componentsSeparatedByString:{v5), "mutableCopy"}];
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
  v2 = [(MailAccount *)self path];

  return [v2 stringByAppendingPathComponent:@".OfflineCache"];
}

- (BOOL)hasPendingOfflineOperations
{
  v2 = [(IMAPAccount *)self offlineCache];

  return [v2 hasPendingOfflineOperations];
}

- (id)_infoForMatchingURL:(id)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [a3 path];
  [v5 setObject:self forKey:@"Account"];
  if (v6)
  {
    v7 = [(IMAPAccount *)self separatorChar];
    v8 = [v6 rangeOfString:@"/" options:8];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v6 substringWithRange:{v8 + v9, objc_msgSend(v6, "length") - (v8 + v9)}];
    }

    if (v7)
    {
      v10 = [v6 rangeOfString:v7 options:8];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [v6 substringWithRange:{v10 + v11, objc_msgSend(v6, "length") - (v10 + v11)}];
      }
    }

    if (([v6 isEqualToString:&stru_2869E1DA0] & 1) == 0)
    {
      [v5 setObject:v6 forKey:@"RelativePath"];
    }
  }

  return v5;
}

- (void)setValueInAccountInfo:(id)a3 forKey:(id)a4
{
  if ([a4 isEqualToString:@"ServerPathPrefix"])
  {
    [(IMAPAccount *)self setServerPathPrefix:a3];

    [(MFAccount *)self _queueAccountInfoDidChange];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = IMAPAccount;
    [(MailAccount *)&v7 setValueInAccountProperties:a3 forKey:a4];
  }
}

- (id)flagChangesForMailboxPath:(id)a3 UID:(unsigned int)a4 connectTime:(double)a5
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
    v25 = self;
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
        if ([v15 uid] == a4 && objc_msgSend(v15, "connectionTag") == -1)
        {
          [v15 commitTime];
          if (v16 == 0.0 || ([v15 commitTime], v17 > a5))
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

              v19 = [v15 changes];
              if (v12)
              {
                [v12 addEntriesFromDictionary:v19];
              }

              else
              {
                v12 = [v19 mutableCopy];
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
    [*(&v25->super.super.super.isa + v24) unlock];
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

- (void)removeFlagChanges:(id)a3 forMessages:(id)a4
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
        v10 = [a4 countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(a4);
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
          v11 = [a4 countByEnumeratingWithState:&v18 objects:v24 count:16];
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

- (void)removeFlagChangesCommittedBefore:(double)a3
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
        if (v10 < a3)
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

- (void)setCommitTime:(double)a3 forConnectionTag:(unsigned int)a4
{
  v25 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = self;
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
        if ([v12 connectionTag] == a4)
        {
          v13 = MFLogGeneral();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = a3;
            v22 = 2112;
            v23 = v12;
            _os_log_impl(&dword_258B7A000, v13, OS_LOG_TYPE_INFO, "#IMAPFlagChanges setting commit time %d for change %@", buf, 0x12u);
          }

          [v12 setCommitTime:a3];
        }
      }

      v9 = [(NSMutableArray *)recentFlagChanges countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v9);
  }

  [(NSRecursiveLock *)v15->_flagChangesLock unlock];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setLibrary:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = v5;
  v7 = *MEMORY[0x277D28520];
  if (*(&self->super.super.super.isa + v7))
  {
    [v5 removeObserver:self name:0 object:?];
  }

  v8.receiver = self;
  v8.super_class = IMAPAccount;
  [(MailAccount *)&v8 setLibrary:a3];
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

- (void)setLastPushRegistration:(double)a3
{
  _MFLockGlobalLock();
  self->_lastPushRegistration = a3;

  _MFUnlockGlobalLock();
}

- (BOOL)mustRegisterForPushOnNextConnection
{
  _MFLockGlobalLock();
  LODWORD(self) = (*(self + 396) >> 1) & 1;
  _MFUnlockGlobalLock();
  return self;
}

- (void)setMustRegisterForPushOnNextConnection:(BOOL)a3
{
  v3 = a3;
  _MFLockGlobalLock();
  if (v3)
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
  v2 = self;
  [(MailAccount *)self rootMailboxUid];
  _MFLockGlobalLock();
  LODWORD(v2) = v2->_supportedPushServiceLevel;
  _MFUnlockGlobalLock();
  return v2;
}

- (void)setSupportedPushServiceLevel:(int)a3
{
  _MFLockGlobalLock();
  if (self->_supportedPushServiceLevel != a3)
  {
    self->_supportedPushServiceLevel = a3;
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

- (void)updatePushRegisteredMailboxes:(id)a3
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
    self->_pushRegisteredMailboxes = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a3, "count")}];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 mf_decodedIMAPMailboxName];
        v13 = [objc_msgSend(objc_msgSend(v12 dataUsingEncoding:4 allowLossyConversion:{0), "ef_md5Digest"), "ef_hexString"}];
        if (v13)
        {
          [(NSMutableDictionary *)self->_pushRegisteredMailboxes setObject:v12 forKey:v13];
        }

        else
        {
          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v12;
            _os_log_error_impl(&dword_258B7A000, v14, OS_LOG_TYPE_ERROR, "#aps-push failed to generate hash for mailbox named '%@'", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v18 objects:v24 count:16];
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

- (void)setAPSTopic:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = a3;
    v15 = 2112;
    v16 = self;
    _os_log_impl(&dword_258B7A000, v5, OS_LOG_TYPE_INFO, "#aps-push Setting aps-topic '%@' for account %@", &v13, 0x16u);
  }

  [(MailAccount *)self uniqueIdForPersistentConnection];
  Style = PCSettingsGetStyle();
  _MFLockGlobalLock();
  apsTopic = self->_apsTopic;
  if (apsTopic != a3)
  {
    self->_apsTopic = a3;
    v8 = *MEMORY[0x277D28510];
    v9 = *(&self->super.super.super.isa + v8);
    if ((v9 & 0x40000) == 0)
    {
      *(&self->super.super.super.isa + v8) = v9 & 0xFFFB0000 | (v9 + 1);
    }

    v10 = +[MFAPSManager sharedManager];
    v11 = v10;
    if (a3 || !apsTopic)
    {
      if (!a3 || apsTopic)
      {
        if (([a3 isEqualToString:apsTopic] & 1) == 0)
        {
          [v11 swapTopic:apsTopic forNewTopic:a3];
        }
      }

      else if ((*(self + 396) & 4) != 0 && !Style)
      {
        [v10 startWatchingForTopic:a3];
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
      v11 = self;
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
      v16 = self;
      _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "#aps-push account %@ has no pushed mailboxes, skipping", &v15, 0xCu);
    }

    [(IMAPAccount *)self setMustRegisterForPushOnNextConnection:0];
    goto LABEL_9;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(IMAPAccount *)self lastPushRegistration];
  v7 = v6;
  v8 = [(IMAPAccount *)self mustRegisterForPushOnNextConnection];
  LOBYTE(v9) = 1;
  if (!v8)
  {
    v10 = Current - v7;
    if (v10 < 82800.0)
    {
      v11 = MFLogGeneral();
      v9 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v9)
      {
        v15 = 138412546;
        v16 = self;
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

- (id)notificationNamesForPrefix:(id)a3 mailboxUids:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(a4);
        }

        [v7 addObject:{-[IMAPAccount _notificationNameForMailbox:withPrefix:](self, "_notificationNameForMailbox:withPrefix:", *(*(&v14 + 1) + 8 * v11++), a3)}];
      }

      while (v9 != v11);
      v9 = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)registerPushNotificationPrefix:(id)a3 forMailboxUids:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [IMAPAccount notificationNamesForPrefix:"notificationNamesForPrefix:mailboxUids:" mailboxUids:?];
  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(a4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [a4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(a4);
        }

        [v8 addObject:{-[IMAPAccount _nameForMailboxUid:](self, "_nameForMailboxUid:", *(*(&v16 + 1) + 8 * v12++))}];
      }

      while (v10 != v12);
      v10 = [a4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = objc_alloc_init(MEMORY[0x277D25858]);
  [v13 setAccountIdentifier:{-[MFAccount uniqueId](self, "uniqueId")}];
  [v13 setNotificationNamePrefix:a3];
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

- (BOOL)_registerPushNotificationPrefix:(id)a3 forMailboxNames:(id)a4
{
  _MFLockGlobalLock();
  v7 = [(MFAccount *)self accountPropertyForKey:@"NotesPushedMailboxes"];
  v8 = [(MFAccount *)self accountPropertyForKey:@"NotesNotificationPrefix"];
  if (a3 && ([v8 isEqualToString:a3] & 1) == 0)
  {
    [(MFAccount *)self setAccountProperty:a3 forKey:@"NotesNotificationPrefix"];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [-[MFAccount accountPropertyForKey:](self accountPropertyForKey:{@"NotesPushedMailboxes", "mutableCopy"}];
  v11 = [a4 mutableCopy];
  [v10 sortUsingSelector:sel_localizedCompare_];
  [v11 sortUsingSelector:sel_localizedCompare_];
  if (!(v10 | v11) || v11 && ([v10 isEqual:v11] & 1) == 0)
  {
    [(MFAccount *)self setAccountProperty:a4 forKey:@"NotesPushedMailboxes"];
    v9 = 1;
  }

  _MFUnlockGlobalLock();

  [(IMAPAccount *)self setIsOffline:0];
  [(IMAPAccount *)self startListeningForNotifications];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [a4 isEqualToArray:v7];

    if (v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v13 = [(IMAPAccount *)self _copyMailboxListForNames:a4];
  v14 = [v13 count];
  v15 = [a4 count];

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

- (id)_copyMailboxListForNames:(id)a3
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
    v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(a3);
          }

          v10 = [(IMAPAccount *)self _mailboxUidForName:*(*(&v13 + 1) + 8 * v9)];
          if (v10)
          {
            [v5 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_copyMailboxListPreferenceForKey:(id)a3
{
  v4 = [(MFAccount *)self _objectForAccountInfoKey:a3];

  return [(IMAPAccount *)self _copyMailboxListForNames:v4];
}

- (void)_updatePushedMailboxesAndNotify:(BOOL)a3
{
  v3 = a3;
  if ([(MFAccount *)self isEnabledForDataclass:*MEMORY[0x277CB9150]])
  {
    if ([(IMAPAccount *)self supportsUserPushedMailboxes])
    {
      v5 = [(IMAPAccount *)self _copyUserPushedMailboxes];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    v6 = v5;
    [(NSSet *)v5 addObject:[(MailAccount *)self primaryMailboxUid]];
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
  if (v3)
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277D282E8];

    [v9 postNotificationName:v10 object:self userInfo:0];
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

- (void)changePushedMailboxUidsAdded:(id)a3 deleted:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(IMAPAccount *)self supportsUserPushedMailboxes])
  {
    goto LABEL_24;
  }

  v7 = [MEMORY[0x277CBEB58] setWithSet:{-[IMAPAccount pushedMailboxUids](self, "pushedMailboxUids")}];
  if (a3)
  {
    [v7 addObjectsFromArray:{objc_msgSend(a3, "allObjects")}];
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [a4 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(a4);
        }

        [v7 removeObject:*(*(&v24 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [a4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
LABEL_12:
    if (!(a3 | a4))
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
      v17 = [(IMAPAccount *)self separatorChar];
      v18 = [(IMAPAccount *)self serverPathPrefix];
      *buf = 138413058;
      v24 = v5;
      v25 = 2112;
      v26 = v3;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
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

- (void)_apsDeviceTokenChanged:(id)a3
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
        v17 = self;
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
        v17 = self;
        _os_log_impl(&dword_258B7A000, v4, OS_LOG_TYPE_INFO, "#aps-push account %@ told to start listening for notifications", &v16, 0xCu);
      }

      *(self + 396) |= 4u;
      [(MailAccount *)self uniqueIdForPersistentConnection];
      Style = PCSettingsGetStyle();
      v10 = [(IMAPAccount *)self canAttemptPushRegistration];
      if (!v10 || Style)
      {
        v12 = MFLogGeneral();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        v13 = "CANNOT";
        if (v10)
        {
          v13 = "can";
        }

        v16 = 138412802;
        v17 = self;
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
      v11 = [(IMAPAccount *)self apsTopic];
      if (v11)
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
      v17 = self;
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
    v6 = self;
    _os_log_impl(&dword_258B7A000, v3, OS_LOG_TYPE_INFO, "#aps-push account %@ told to stop listening for notifications", &v5, 0xCu);
  }

  *(self + 396) &= ~4u;
  [+[MFAPSManager sharedManager](MFAPSManager "sharedManager")];
  [(IMAPAccount *)self _unregisterForDeviceTokenChanges];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)transferNotificationSessionToAccount:(id)a3
{
  if (a3 != self)
  {
    [(IMAPAccount *)self stopListeningForNotifications];

    [a3 startListeningForNotifications];
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