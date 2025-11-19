@interface IMAPAccount
+ (OS_os_log)log;
+ (id)imapMailboxURLForAccountID:(id)a3 pathComponents:(id)a4;
+ (void)_deleteQueuedMailboxes:(id)a3;
+ (void)getAccountID:(id *)a3 pathComponents:(id *)a4 fromIMAPMailboxURL:(id)a5;
- (BOOL)_hasCachedSeparatorChar;
- (BOOL)_readCustomInfoFromMailboxCache:(id)a3;
- (BOOL)_registerPushNotificationPrefix:(id)a3 forMailboxNames:(id)a4;
- (BOOL)_repairMailboxCache;
- (BOOL)_useNewIMAPStack;
- (BOOL)_writeCustomInfoToMailboxCache:(id)a3;
- (BOOL)canFetch;
- (BOOL)canMailboxBeDeleted:(id)a3;
- (BOOL)connectAndAuthenticate:(id)a3;
- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id)a5;
- (BOOL)getMailboxListWithConnection:(id)a3 statusDataItems:(id)a4 statusEntriesByMailbox:(id *)a5;
- (BOOL)isMailboxLocalForType:(int64_t)a3;
- (BOOL)isSpecialMailbox:(id)a3;
- (BOOL)moveSupported;
- (BOOL)mustRegisterForPushOnNextConnection;
- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (BOOL)shouldRegisterForPush;
- (BOOL)storeMailboxTypeOnServer:(int64_t)a3;
- (BOOL)supportsAppleRemoteLinks;
- (BOOL)verifyESearchSupportWithBlock:(id)a3;
- (IMAPAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (NSArray)mailboxesForPushRegistration;
- (NSDate)credentialExpiryDate;
- (NSSet)mailboxNamesForPushRegistration;
- (double)lastPushRegistration;
- (id)_copyMailboxListForNames:(id)a3;
- (id)_copyMailboxListPreferenceForKey:(id)a3;
- (id)_copyMailboxUidWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 existingMailboxUid:(id)a6 dictionary:(id)a7;
- (id)_externalMailboxUids;
- (id)_fetchAndSetSeparatorChar;
- (id)_fileSystemServerPathPrefix;
- (id)_infoForMatchingURL:(id)a3;
- (id)_listingForMailboxUid:(id)a3 listAllChildren:(BOOL)a4 onlySubscribed:(BOOL)a5 statusDataItems:(id)a6 withConnection:(id)a7 statusEntriesByMailbox:(id *)a8;
- (id)_mailboxPathPrefix;
- (id)_nameForMailboxUid:(id)a3;
- (id)_newMailboxWithParent:(id)a3 name:(id)a4 attributes:(unsigned int)a5 dictionary:(id)a6 withCreationOption:(int64_t)a7;
- (id)_notificationNameForMailbox:(id)a3 withPrefix:(id)a4;
- (id)_pathComponentForUidName:(id)a3;
- (id)_specialMailboxUidWithType:(int64_t)a3 create:(BOOL)a4;
- (id)_uidNameForPathComponent:(id)a3;
- (id)allMailMailboxUid;
- (id)apsTopic;
- (id)connectionForMailbox:(id)a3 delegate:(id)a4 options:(unint64_t)a5 failedToSelectMailbox:(BOOL *)a6;
- (id)copyDiagnosticInformation;
- (id)errorForResponse:(id)a3;
- (id)fetchLimits;
- (id)lastKnownCapabilities;
- (id)mailboxUidForName:(id)a3;
- (id)mailboxesRegisteredForPushByHash;
- (id)messageActionsAfterActionID:(int64_t)a3;
- (id)nameForMailboxUid:(id)a3;
- (id)pushedMailboxUids;
- (id)replayAction:(id)a3;
- (id)separatorChar;
- (id)serverNamespace;
- (id)serverPathPrefix;
- (id)serverPathPrefixAccountValue;
- (id)specialUseAttributeForType:(int64_t)a3;
- (id)specialUseAttributesForMailbox:(id)a3;
- (id)statisticsKind;
- (id)taskManager;
- (int64_t)supportedPushServiceLevel;
- (unsigned)readBufferSize;
- (void)_apsDeviceTokenChanged:(id)a3;
- (void)_mailboxListingChanged;
- (void)_mailboxesWereRemovedFromTree:(id)a3 withFileSystemPaths:(id)a4;
- (void)_registerForDeviceTokenChanges;
- (void)_releaseAllConnectionsAndCallSuper:(BOOL)a3 synchronously:(BOOL)a4 edgeForcedOnly:(BOOL)a5 saveOfflineCache:(BOOL)a6;
- (void)_renameLocalSpecialMailboxesToName:(id)a3;
- (void)_replayMailboxActionsWithConnection:(id)a3;
- (void)_schedulePushRegistrationConnection;
- (void)_setCapabilities:(id)a3;
- (void)_setSpecialMailbox:(id)a3 forType:(int64_t)a4;
- (void)_synchronouslyLoadListingForParent:(id)a3;
- (void)_unregisterForDeviceTokenChanges;
- (void)_updatePushedMailboxesAndNotify:(BOOL)a3;
- (void)_updateSeparatorAndNamespaceWithConnection:(id)a3;
- (void)_waitForMailboxListingLoadToComplete;
- (void)acquireNetworkAssertion;
- (void)changePushedMailboxUidsAdded:(id)a3 deleted:(id)a4;
- (void)checkInConnection:(id)a3 destroy:(BOOL)a4;
- (void)checkInConnectionsForStore:(id)a3;
- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id)a5;
- (void)dealloc;
- (void)fetchMailboxListExplicit;
- (void)fetchMailboxListImplicit;
- (void)filterMailboxList:(id)a3 forMailbox:(id)a4 options:(int64_t)a5;
- (void)handleAlertResponse:(id)a3;
- (void)handlePushNotificationOnMailboxes:(id)a3 missedNotifications:(BOOL)a4;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)releaseNetworkAssertion;
- (void)serverRegisteredMailboxes:(id)a3 withTopic:(id)a4 version:(int64_t)a5;
- (void)setAPSTopic:(id)a3;
- (void)setAllowsPartialDownloads:(BOOL)a3;
- (void)setDisplayName:(id)a3;
- (void)setIsOffline:(BOOL)a3;
- (void)setLastPushRegistration:(double)a3;
- (void)setMustRegisterForPushOnNextConnection:(BOOL)a3;
- (void)setSeparatorChar:(id)a3 serverNamespace:(id)a4;
- (void)setServerNamespace:(id)a3;
- (void)setServerPathPrefix:(id)a3;
- (void)setSupportedPushServiceLevel:(int64_t)a3;
- (void)startListeningForNotifications;
- (void)stopListeningForNotifications;
- (void)systemWillSleep;
- (void)taskManager;
- (void)test_setTaskManager:(id)a3;
- (void)test_tearDown;
- (void)throttledGetMailboxListWithConnection:(id)a3;
- (void)transferNotificationSessionToAccount:(id)a3;
- (void)unselectMailbox:(id)a3;
- (void)updatePushRegisteredMailboxes:(id)a3;
@end

@implementation IMAPAccount

- (id)statisticsKind
{
  v2 = [(MailAccount *)self iconString];
  if ([@"163AccountIcon" isEqualToString:v2] & 1) != 0 || (objc_msgSend(@"126AccountIcon", "isEqualToString:", v2))
  {
    v3 = MEMORY[0x1E69ADC00];
  }

  else
  {
    v4 = [@"qqAccountIcon" isEqualToString:v2];
    v3 = MEMORY[0x1E69ADBF8];
    if (v4)
    {
      v3 = MEMORY[0x1E69ADC08];
    }
  }

  v5 = *v3;
  v6 = *v3;

  return v5;
}

- (id)_fileSystemServerPathPrefix
{
  v3 = [(IMAPAccount *)self serverPathPrefix];
  v4 = [(IMAPAccount *)self separatorChar];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v8 = [v3 rangeOfString:v4 options:8];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v3 length] <= (v8 + v7))
      {
        v6 = 0;
        goto LABEL_11;
      }

      v9 = [v3 substringFromIndex:?];

      v3 = v9;
    }

    v10 = [v3 componentsSeparatedByString:v5];
    v11 = [v10 mutableCopy];

    v12 = [v11 count];
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = [v11 objectAtIndex:i];
        v15 = [(IMAPAccount *)self _pathComponentForUidName:v14];
        [v11 replaceObjectAtIndex:i withObject:v15];
      }
    }

    v6 = [v11 componentsJoinedByString:@"/"];
  }

LABEL_11:

  return v6;
}

- (id)separatorChar
{
  [(IMAPAccount *)self mf_lock];
  v3 = self->_separatorChar;
  [(IMAPAccount *)self mf_unlock];
  if (!v3)
  {
    [(MailAccount *)self rootMailbox];

    [(IMAPAccount *)self mf_lock];
    v3 = self->_separatorChar;
    [(IMAPAccount *)self mf_unlock];
    if (!v3)
    {
      v3 = [(IMAPAccount *)self _fetchAndSetSeparatorChar];
    }
  }

  return v3;
}

- (id)serverPathPrefix
{
  v3 = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if (!v3)
  {
    v3 = self->_serverNamespace;
  }

  return v3;
}

- (id)serverPathPrefixAccountValue
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"ServerPathPrefix"];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)canFetch
{
  v4.receiver = self;
  v4.super_class = IMAPAccount;
  return [(MailAccount *)&v4 canFetch]|| [(MFAccount *)self isSyncingNotes];
}

- (id)_mailboxPathPrefix
{
  v2 = [(IMAPAccount *)self _fileSystemServerPathPrefix];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F273A5E0;
  }

  return v4;
}

- (id)taskManager
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(MFAccount *)self hostname];
  v4 = atomic_load(&self->_didTearDown);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_taskManagerLock);
    v6 = self->_taskManager;
    if (!v6)
    {
      if ([(IMAPAccount *)self _useNewIMAPStack]&& +[MFMailMessageLibrary canUsePersistence])
      {
        v6 = [[MFSwiftIMAPTaskManager alloc] initWithAccount:self];
        if (!v6)
        {
          v12 = +[IMAPAccount log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            v13 = [(MFAccount *)self identifier];
            [(IMAPAccount *)v13 taskManager:v3];
          }

          abort();
        }

        v7 = +[IMAPAccount log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [(MFAccount *)self identifier];
          *buf = 138543618;
          v17 = v8;
          v18 = 2114;
          v19 = v3;
          _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Using MFSwiftIMAPTaskManager for account %{public}@ on %{public}@", buf, 0x16u);
        }

        objc_storeStrong(&self->_taskManager, v6);
      }

      else
      {
        v6 = 0;
      }
    }

    os_unfair_lock_unlock(&self->_taskManagerLock);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__IMAPAccount_taskManager__block_invoke;
    block[3] = &unk_1E7AA25C0;
    v9 = v6;
    v15 = v9;
    if (taskManager_onceToken != -1)
    {
      dispatch_once(&taskManager_onceToken, block);
    }

    v5 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)releaseAllConnections
{
  v3 = [MEMORY[0x1E696AF00] isMainThread] ^ 1;

  [(IMAPAccount *)self _releaseAllConnectionsAndCallSuper:1 synchronously:v3 edgeForcedOnly:0 saveOfflineCache:1];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__IMAPAccount_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __18__IMAPAccount_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (BOOL)_useNewIMAPStack
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v3 BOOLForKey:@"MailIMAPNewStack"];

  return v2;
}

void __26__IMAPAccount_taskManager__block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    MFPersistenceAdaptorPowerLogDidCreateInstance(0);
  }
}

- (IMAPAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = IMAPAccount;
  v8 = [(MailAccount *)&v18 initWithLibrary:v6 persistentAccount:v7];
  v9 = v8;
  if (v8)
  {
    v8->_supportedPushServiceLevel = -2;
    v10 = [objc_alloc(MEMORY[0x1E69AD770]) initWithName:@"connectionLock" andDelegate:v8];
    connectionLock = v9->_connectionLock;
    v9->_connectionLock = v10;

    v12 = objc_alloc(MEMORY[0x1E695DEC8]);
    v13 = [v12 initWithObjects:{v9->_connectionLock, *MEMORY[0x1E69AD670], 0}];
    lockOrderingArray = v9->_lockOrderingArray;
    v9->_lockOrderingArray = v13;

    v15 = objc_alloc_init(MEMORY[0x1E696AD10]);
    eSearchSupportedLock = v9->_eSearchSupportedLock;
    v9->_eSearchSupportedLock = v15;

    *(v9 + 397) &= ~0x10u;
    v9->_apsVersion = 2;
    atomic_store(0, &v9->_didTearDown);
    atomic_store(0, &v9->_fetchedMailboxList);
    atomic_store(1u, &v9->_isOffline);
    v9->_taskManagerLock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (BOOL)_readCustomInfoFromMailboxCache:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"separator"];
  v6 = [v4 objectForKey:@"namespace"];
  [(IMAPAccount *)self mf_lock];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isEqualToString:&stru_1F273A5E0] & 1) == 0)
    {
      v9 = [v5 copy];
      separatorChar = self->_separatorChar;
      self->_separatorChar = v9;

      v8 = 1;
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  v7 = +[IMAPAccount log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [IMAPAccount _readCustomInfoFromMailboxCache:v7];
  }

  v8 = 0;
  if (v6)
  {
LABEL_7:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 isEqualToString:&stru_1F273A5E0] & 1) == 0)
    {
      objc_storeStrong(&self->_serverNamespace, v6);
    }
  }

LABEL_11:
  if (!self->_lastKnownCapabilities)
  {
    v11 = [v4 objectForKeyedSubscript:@"capabilities"];
    lastKnownCapabilities = self->_lastKnownCapabilities;
    self->_lastKnownCapabilities = v11;
  }

  if (self->_supportedPushServiceLevel == -2)
  {
    v13 = [v4 objectForKeyedSubscript:@"push-service-level"];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 intValue];
      if (v14 >= -1 && [(IMAPAccount *)self apsVersion]>= v14)
      {
        self->_supportedPushServiceLevel = v14;
      }
    }
  }

  if (!self->_pushRegisteredMailboxes)
  {
    v15 = [v4 objectForKeyedSubscript:@"push-registered-mailboxes"];
    pushRegisteredMailboxes = self->_pushRegisteredMailboxes;
    self->_pushRegisteredMailboxes = v15;
  }

  if (!self->_apsTopic)
  {
    v17 = [v4 objectForKeyedSubscript:@"aps-topic"];
    apsTopic = self->_apsTopic;
    self->_apsTopic = v17;
  }

  [(IMAPAccount *)self mf_unlock];
  v20.receiver = self;
  v20.super_class = IMAPAccount;
  [(MailAccount *)&v20 _readCustomInfoFromMailboxCache:v4];

  return v8;
}

- (BOOL)_writeCustomInfoToMailboxCache:(id)a3
{
  v4 = a3;
  [(IMAPAccount *)self mf_lock];
  separatorChar = self->_separatorChar;
  if (separatorChar)
  {
    [v4 setObject:self->_separatorChar forKey:@"separator"];
  }

  else
  {
    v6 = +[IMAPAccount log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [IMAPAccount _writeCustomInfoToMailboxCache:v6];
    }
  }

  serverNamespace = self->_serverNamespace;
  if (serverNamespace)
  {
    [v4 setObject:serverNamespace forKey:@"namespace"];
  }

  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (lastKnownCapabilities)
  {
    [v4 setObject:lastKnownCapabilities forKey:@"capabilities"];
  }

  if (self->_supportedPushServiceLevel != -2)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v4 setObject:v9 forKey:@"push-service-level"];
  }

  if ([(NSMutableDictionary *)self->_pushRegisteredMailboxes count])
  {
    [v4 setObject:self->_pushRegisteredMailboxes forKey:@"push-registered-mailboxes"];
  }

  apsTopic = self->_apsTopic;
  if (apsTopic)
  {
    [v4 setObject:apsTopic forKey:@"aps-topic"];
  }

  [(IMAPAccount *)self mf_unlock];
  v12.receiver = self;
  v12.super_class = IMAPAccount;
  [(MailAccount *)&v12 _writeCustomInfoToMailboxCache:v4];

  return separatorChar != 0;
}

- (BOOL)_repairMailboxCache
{
  v2 = [(IMAPAccount *)self _fetchAndSetSeparatorChar];
  v3 = v2 != 0;

  return v3;
}

- (void)dealloc
{
  cachedConnections = self->_cachedConnections;
  if (cachedConnections)
  {
    CFRelease(cachedConnections);
  }

  v4 = +[MFAPSManager sharedManager];
  [v4 stopWatchingForTopic:self->_apsTopic];

  unlockedReleaseNetworkAssertion(self);
  v5.receiver = self;
  v5.super_class = IMAPAccount;
  [(MailAccount *)&v5 dealloc];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"IMAPAccount.m" lineNumber:296 description:{@"%s can only be called from unit tests", "-[IMAPAccount test_tearDown]"}];
  }

  v5.receiver = self;
  v5.super_class = IMAPAccount;
  [(MailAccount *)&v5 test_tearDown];
  atomic_store(1u, &self->_didTearDown);
}

- (void)test_setTaskManager:(id)a3
{
  v5 = a3;
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"IMAPAccount.m" lineNumber:331 description:{@"%s can only be called from unit tests", "-[IMAPAccount test_setTaskManager:]"}];
  }

  v11.receiver = self;
  v11.super_class = IMAPAccount;
  [(MailAccount *)&v11 test_setTaskManager:v5];
  os_unfair_lock_lock(&self->_taskManagerLock);
  taskManager = self->_taskManager;
  v7 = v5;
  v8 = self->_taskManager;
  self->_taskManager = v7;
  v9 = taskManager;

  os_unfair_lock_unlock(&self->_taskManagerLock);
  [(MFTaskManager *)v9 test_tearDown];
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
  [(IMAPAccount *)self _renameLocalSpecialMailboxesToName:v4];
  v5.receiver = self;
  v5.super_class = IMAPAccount;
  [(MFAccount *)&v5 setDisplayName:v4];
}

- (BOOL)storeMailboxTypeOnServer:(int64_t)a3
{
  v3 = 0;
  do
  {
    v6 = *&_storeOnServer[v3];
    v7 = _storeOnServer[v3 + 2];
    if (v6 == a3)
    {
      break;
    }

    v4 = v3 == 12;
    v3 += 3;
  }

  while (!v4);
  return _storeOnServerForTuple(self, &v6);
}

- (void)handleAlertResponse:(id)a3
{
  v13 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = MFLookupLocalizedString(@"IMAP_SERVER_ALERT_FORMAT", @"The IMAP server for “%@” wishes to alert you to the following:\n\n%@", @"Delayed");
  v6 = [(MailAccount *)self displayName];
  v7 = [v4 stringWithFormat:v5, v6, v13];

  [(IMAPAccount *)self mf_lock];
  v8 = handleAlertResponse___handledAlerts;
  if (!handleAlertResponse___handledAlerts)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = handleAlertResponse___handledAlerts;
    handleAlertResponse___handledAlerts = v9;

    v8 = handleAlertResponse___handledAlerts;
  }

  if ([v8 containsObject:v7])
  {

    v7 = 0;
  }

  else
  {
    [handleAlertResponse___handledAlerts addObject:v7];
  }

  [(IMAPAccount *)self mf_unlock];
  if (v7)
  {
    v11 = MFLookupLocalizedString(@"WARNING_TITLE", @"Warning", @"Delayed");
    v12 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v7 title:v11 userInfo:0];
    [(MailAccount *)self setConnectionError:v12];
  }
}

- (id)errorForResponse:(id)a3
{
  v3 = a3;
  if (([v3 isResponseWithCode:17] & 1) != 0 || objc_msgSend(v3, "isAlertResponse"))
  {
    v4 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1039 localizedDescription:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (void)setAllowsPartialDownloads:(BOOL)a3
{
  v3 = a3;
  [(IMAPAccount *)self mf_lock];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:!v3];
  [(MFAccount *)self setAccountProperty:v5 forKey:@"PreventDismemberment"];

  [(IMAPAccount *)self mf_unlock];
}

- (BOOL)connectAndAuthenticate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IMAPAccount *)self isOffline];
  v6 = +[MFActivityMonitor currentMonitor];
  v7 = [v4 connectionState];
  v8 = +[IMAPAccount log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 ef_publicDescription];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ state: %@", &v21, 0x16u);
  }

  v11 = [v4 connectionState];
  if ((v11 - 2) < 2)
  {
    goto LABEL_14;
  }

  v12 = 0;
  if (v11 == 1)
  {
LABEL_11:
    if ([v4 authenticateUsingAccount:self])
    {
      [(MailAccount *)self setConnectionError:0];
      if (v12)
      {
        [(IMAPAccount *)self _updateSeparatorAndNamespaceWithConnection:v4];
        [(IMAPAccount *)self throttledGetMailboxListWithConnection:v4];
        v14 = [(MailAccount *)self replayHandler];
        [v14 connectionEstablished];
      }

LABEL_14:
      v5 = 0;
      v13 = 0;
      LOBYTE(v12) = 1;
      goto LABEL_26;
    }

    v13 = [v6 error];
    if ([(MFAccount *)self shouldEnableAfterError:v13])
    {
      [(MFAccount *)self enableAccount];
    }

    if (!v13)
    {
      v13 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:0];
      [v6 setError:v13];
    }

    v15 = [(MFAccount *)self preferredAuthScheme];
    [(MFAccount *)self reportAuthenticationError:v13 authScheme:v15];
    goto LABEL_20;
  }

  if (v11)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_26;
  }

  if ([v6 shouldCancel])
  {
    LOBYTE(v12) = 0;
    goto LABEL_8;
  }

  if ([v4 connectUsingAccount:self])
  {
    v12 = 1;
    goto LABEL_11;
  }

  v20 = [v6 error];
  v15 = v20;
  if (v20 && ([v20 mf_isUserCancelledError] & 1) == 0)
  {
    v13 = [v6 error];
LABEL_20:
    v5 = 1;
    goto LABEL_21;
  }

  v13 = 0;
  v5 = 0;
LABEL_21:

  if (v13)
  {
    v16 = +[MFNetworkController sharedInstance];
    v17 = [v16 isNetworkUp];

    if (v17)
    {
      if (([v13 mf_isUserCancelledError] & 1) == 0)
      {
        [(MailAccount *)self setConnectionError:v13];
      }
    }
  }

  LOBYTE(v12) = 0;
LABEL_26:
  if (v5 != [(IMAPAccount *)self isOffline])
  {
    [(IMAPAccount *)self setIsOffline:v5];
    if (!v5)
    {
      [v4 setReadBufferSize:{-[IMAPAccount readBufferSize](self, "readBufferSize")}];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_replayMailboxActionsWithConnection:(id)a3
{
  v14 = a3;
  v4 = [(MFAccount *)self identifier];
  for (i = 0; ; i = v9)
  {
    v6 = [(MailAccount *)self library];
    v7 = [v6 persistence];
    v8 = [v7 mailboxActionPersistence];
    v9 = [v8 nextMailboxActionForAccountID:v4];

    if (!v9)
    {
      break;
    }

    if ([v9 actionType] == 1)
    {
      v10 = [v9 mailboxName];
      [v14 createMailbox:v10];
    }

    else
    {
      v10 = [v9 mailboxName];
      [v14 deleteMailbox:v10];
    }

    v11 = [(MailAccount *)self library];
    v12 = [v11 persistence];
    v13 = [v12 mailboxActionPersistence];
    [v13 deleteMailboxAction:{objc_msgSend(v9, "actionID")}];
  }
}

- (id)connectionForMailbox:(id)a3 delegate:(id)a4 options:(unint64_t)a5 failedToSelectMailbox:(BOOL *)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v70 = a4;
  v71 = self;
  v69 = v10;
  v11 = [(IMAPAccount *)self taskManager];
  if (v11)
  {
    v12 = EFIsRunningUnitTests();

    if ((v12 & 1) == 0)
    {
      v64 = [MEMORY[0x1E696AAA8] currentHandler];
      [v64 handleFailureInMethod:a2 object:v71 file:@"IMAPAccount.m" lineNumber:846 description:@"Trying to use old IMAP while new IMAP is enabled"];
    }
  }

  v13 = atomic_load(&v71->_didTearDown);
  if (v13)
  {
    v14 = 0;
    goto LABEL_133;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (v10)
  {
    v15 = [(IMAPAccount *)v71 _nameForMailboxUid:v10];
    if (!v15)
    {
      v14 = +[IMAPAccount log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.version) = 138412290;
        *(&buf.version + 4) = v10;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "*** Unable to determine name for %@", &buf, 0xCu);
      }

      v73 = 0;
      goto LABEL_130;
    }
  }

  else
  {
    v15 = 0;
  }

  v72 = v15;
  v66 = *(MEMORY[0x1E695E9C0] + 16);
  v67 = *(MEMORY[0x1E695E9C0] + 8);
  v65 = *(MEMORY[0x1E695E9C0] + 24);
  while (2)
  {
    v16 = v71;
    v73 = v72;
    v17 = v70;
    v18 = +[MFActivityMonitor currentMonitor];
    [v18 setError:0];

    [(NSRecursiveLock *)v16->_connectionLock lock];
    [(IMAPAccount *)v16 mf_lock];
    cachedConnections = v16->_cachedConnections;
    if (a5)
    {
      if (cachedConnections)
      {
        goto LABEL_19;
      }

      buf.version = 0;
      buf.retain = v67;
      buf.release = v66;
      buf.copyDescription = v65;
      buf.equal = 0;
      cachedConnections = CFArrayCreateMutable(0, 0, &buf);
      v16->_cachedConnections = cachedConnections;
    }

    if (cachedConnections)
    {
LABEL_19:
      Count = CFArrayGetCount(cachedConnections);
      if (Count)
      {
        v21 = 0;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        while (1)
        {
          v23 = CFArrayGetValueAtIndex(v16->_cachedConnections, v21);
          v24 = [v23 delegate];
          v25 = v24;
          if (v24 != v17)
          {
            break;
          }

          if ((a5 & 4) != 0)
          {
            v26 = [v23 mf_tryLock];

            if ((v26 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }

          v14 = v23;
          v22 = v21;
LABEL_29:

          if (++v21 >= Count || v14)
          {
            if (v14)
            {
              goto LABEL_32;
            }

            v30 = 0;
            while (1)
            {
              v31 = CFArrayGetValueAtIndex(v16->_cachedConnections, v30);
              v32 = [v31 delegate];
              if (v32)
              {
              }

              else if ((a5 & 4) == 0 || [v31 mf_tryLock])
              {
                if (v72)
                {
                  v33 = [v31 selectedMailbox];
                  v34 = [v33 isEqualToString:v73];

                  if (v34)
                  {
LABEL_52:
                    v14 = v31;
                    if ((a5 & 4) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_53;
                  }
                }

                else
                {
                  if ((a5 & 8) != 0)
                  {
                    goto LABEL_52;
                  }

                  v35 = [v31 selectedMailbox];
                  v36 = v35 == 0;

                  if (v36)
                  {
                    goto LABEL_52;
                  }
                }

                v14 = 0;
                if ((a5 & 4) == 0)
                {
                  goto LABEL_39;
                }

LABEL_53:
                if (v14)
                {
                  goto LABEL_39;
                }

                [v31 mf_unlock];
              }

              v14 = 0;
LABEL_39:
              v29 = v14 == 0;
              if (v14)
              {
                v22 = v30;
              }

              if (++v30 >= Count || !v29)
              {
                v28 = 0;
                goto LABEL_55;
              }
            }
          }
        }

LABEL_23:
        v14 = 0;
        goto LABEL_29;
      }

      goto LABEL_34;
    }

    Count = 0;
LABEL_34:
    v14 = 0;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v28 = 1;
    v29 = 1;
LABEL_55:
    if ((a5 & 1) == 0 || !v29)
    {
      v27 = 0;
      goto LABEL_81;
    }

    if (!v72)
    {
      goto LABEL_76;
    }

    v37 = +[IMAPAccount log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = v16->_cachedConnections;
      LODWORD(buf.version) = 138543362;
      *(&buf.version + 4) = v38;
      _os_log_impl(&dword_1B0389000, v37, OS_LOG_TYPE_INFO, "Attempting to find a cached connection. _cachedConnections:\n%{public}@", &buf, 0xCu);
    }

    if (v28)
    {
LABEL_76:
      v14 = [(MFAccount *)v16 _newConnection];
      v43 = +[IMAPAccount log];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [v14 ef_publicDescription];
        LODWORD(buf.version) = 138543362;
        *(&buf.version + 4) = v44;
        _os_log_impl(&dword_1B0389000, v43, OS_LOG_TYPE_DEFAULT, "No cached connection found. Creating new connection: %{public}@", &buf, 0xCu);
      }

      if ((a5 >> 2))
      {
        [v14 mf_lock];
      }

      [v14 setTag:v16->_nextConnectionTag++];
      [v14 setMailboxListFilter:v16];
      CFArrayAppendValue(v16->_cachedConnections, v14);
      v27 = 1;
      v22 = Count;
      goto LABEL_81;
    }

    v39 = 0;
    do
    {
      v40 = CFArrayGetValueAtIndex(v16->_cachedConnections, v39);
      v41 = [v40 delegate];
      if (v41)
      {
        v14 = 0;
      }

      else
      {
        if ((a5 & 4) != 0 && ![v40 mf_tryLock])
        {
          v14 = 0;
          goto LABEL_70;
        }

        v14 = v40;
        v41 = +[IMAPAccount log];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v14 ef_publicDescription];
          LODWORD(buf.version) = 138543362;
          *(&buf.version + 4) = v42;
          _os_log_impl(&dword_1B0389000, v41, OS_LOG_TYPE_DEFAULT, "Checking out cached connection: %{public}@", &buf, 0xCu);
        }

        v22 = v39;
      }

LABEL_70:
      ++v39;
    }

    while (v39 < Count && !v14);
    if (!v14)
    {
      goto LABEL_76;
    }

LABEL_32:
    v27 = 0;
LABEL_81:
    [(IMAPAccount *)v16 mf_unlock];
    if (!v14)
    {
      goto LABEL_103;
    }

    if ((a5 & 1) == 0)
    {
      if ([v14 connectionState]>= 2)
      {
        goto LABEL_97;
      }

      goto LABEL_91;
    }

    v45 = MFUserAgent();
    v46 = [v45 isMobileMail];

    if (!v46)
    {
      if ([(IMAPAccount *)v16 connectAndAuthenticate:v14])
      {
        goto LABEL_97;
      }

LABEL_91:
      v50 = 0;
      goto LABEL_94;
    }

    CFArrayRemoveValueAtIndex(v16->_cachedConnections, v22);
    [(NSRecursiveLock *)v16->_connectionLock unlock];
    v47 = [(IMAPAccount *)v16 connectAndAuthenticate:v14];
    [(NSRecursiveLock *)v16->_connectionLock lock];
    v48 = v16->_cachedConnections;
    if (!v48)
    {
      buf.version = 0;
      buf.retain = v67;
      buf.release = v66;
      buf.copyDescription = v65;
      buf.equal = 0;
      v48 = CFArrayCreateMutable(0, 0, &buf);
      v16->_cachedConnections = v48;
    }

    CFArrayAppendValue(v48, v14);
    if ([v14 isCellularConnection])
    {
      v49 = +[MFNetworkController sharedInstance];
      v50 = [v49 isFatPipe];
    }

    else
    {
      v50 = 0;
    }

    if ((v50 | !v47))
    {
LABEL_94:
      if ((a5 & 4) != 0)
      {
        [v14 mf_unlock];
      }

      [(IMAPAccount *)v16 checkInConnection:v14 destroy:v50];
      goto LABEL_102;
    }

LABEL_97:
    [(IMAPAccount *)v16 _replayMailboxActionsWithConnection:v14];
    if ([v14 isValid])
    {
      [(IMAPAccount *)v16 releaseNetworkAssertion];
    }

    else
    {
      if ((a5 & 4) != 0)
      {
        [v14 mf_unlock];
      }

      [(IMAPAccount *)v16 checkInConnection:v14];
LABEL_102:

      v14 = 0;
    }

LABEL_103:
    if (v72)
    {
      v51 = [v14 selectedMailbox];
      v52 = [v14 delegate];
      v53 = 1;
      if (v52 == v17 && v51)
      {
        v53 = [v73 isEqualToString:v51] ^ 1;
      }
    }

    else
    {
      v53 = 0;
    }

    [v14 setDelegate:v17];
    [(NSRecursiveLock *)v16->_connectionLock unlock];

    if (v14)
    {
      if ((a5 & 0x10) != 0)
      {
        v54 = v27;
      }

      else
      {
        v54 = 1;
      }

      if ((v54 & 1) == 0)
      {
        [v14 noop];
      }

      if (v53)
      {
        v55 = (a5 & 2) != 0 ? [v14 examineMailbox:v73]: [v14 selectMailbox:v73 withAccount:v16];
        if ((v55 & 1) == 0)
        {
          if ((a5 & 4) != 0)
          {
            [v14 mf_unlock];
          }

          if (![v14 isValid])
          {
            [(IMAPAccount *)v16 checkInConnection:v14];

            if (v27)
            {
LABEL_131:
              v14 = 0;
              break;
            }

            continue;
          }

          v56 = +[MFActivityMonitor currentMonitor];
          v57 = [v56 error];

          if (v57)
          {
            v58 = MEMORY[0x1E696AEC0];
            v59 = MFLookupLocalizedString(@"IMAP_OPEN_FAILED_TITLE_FORMAT", @"Unable to open “%@”", @"Delayed");
            v60 = [v69 displayName];
            v61 = [v58 stringWithFormat:v59, v60];
            [v57 setShortDescription:v61];
          }

          if (a6)
          {
            *a6 = 1;
          }

LABEL_130:
          goto LABEL_131;
        }
      }
    }

    break;
  }

LABEL_133:
  v62 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)checkInConnection:(id)a3 destroy:(BOOL)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    if (![v6 mf_tryLock])
    {
LABEL_37:
      [(NSRecursiveLock *)self->_connectionLock unlock];
      goto LABEL_38;
    }

    v7 = +[IMAPAccount log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Checking in connection and clearing delegate: %{public}@", buf, 0xCu);
    }

    [v6 setDelegate:0];
    v8 = [v6 connectionState];
    [v6 mf_unlock];
    [(IMAPAccount *)self mf_lock];
    if ([v6 gotBadResponse])
    {
      [(IMAPAccount *)self _setCapabilities:0];
    }

    if (a4)
    {
      v9 = 0;
      v10 = 1;
LABEL_30:
      [(IMAPAccount *)self mf_unlock];
      if (v10)
      {
        [v6 logout];
        [v6 disconnectAndNotifyDelegate:0];
      }

      if (!((self->_cachedConnections == 0) | v9 & 1))
      {
        [(IMAPAccount *)self mf_lock];
        for (i = CFArrayGetCount(self->_cachedConnections); ; --i)
        {
          v28.location = 0;
          v28.length = i;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_cachedConnections, v28, v6);
          if (FirstIndexOfValue == -1)
          {
            break;
          }

          CFArrayRemoveValueAtIndex(self->_cachedConnections, FirstIndexOfValue);
        }

        [(IMAPAccount *)self mf_unlock];
      }

      goto LABEL_37;
    }

    if (self->_cachedConnections)
    {
      if ((v8 - 2) < 2)
      {
        v22 = [v6 selectedMailbox];
        Count = CFArrayGetCount(self->_cachedConnections);
        if (Count < 1)
        {
          v10 = 0;
          v9 = 1;
        }

        else
        {
          v10 = 0;
          v12 = 1;
          do
          {
            v13 = CFArrayGetValueAtIndex(self->_cachedConnections, v12 - 1);
            v14 = v13;
            if (v13 == v6)
            {
              v16 = 0;
            }

            else
            {
              v15 = [v13 delegate];
              v16 = v15 == 0;
            }

            v10 |= v16;
          }

          while (v12++ < Count && !v16);
          v9 = !v16;
        }

        if ([(MailAccount *)self _shouldLogDeleteActivity])
        {
          v18 = +[IMAPAccount log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v24 = v22;
            v25 = 2112;
            v26 = v6;
            _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Unselected connection checked back in, mailbox: %@, connection: %@", buf, 0x16u);
          }
        }

        goto LABEL_30;
      }

      v10 = 0;
      if (!v8)
      {
        goto LABEL_14;
      }

      if (v8 == 1)
      {
        v10 = 1;
LABEL_14:
        v9 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v10 = 0;
    }

    v9 = 1;
    goto LABEL_30;
  }

LABEL_38:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)checkInConnectionsForStore:(id)a3
{
  v13 = a3;
  if (v13 && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v6 = 0;
      for (i = 0; i != Count; ++i)
      {
        v8 = CFArrayGetValueAtIndex(self->_cachedConnections, i);
        v9 = [v8 delegate];

        if (v9 == v13)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x1E695DF70] array];
          }

          [v6 addObject:v8];
        }
      }
    }

    else
    {
      v6 = 0;
    }

    [(IMAPAccount *)self mf_unlock];
    v10 = [v6 count];
    if (v10 >= 1)
    {
      for (j = 0; j != v10; ++j)
      {
        v12 = [v6 objectAtIndex:j];
        [(IMAPAccount *)self checkInConnection:v12];
      }
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }
}

- (BOOL)verifyESearchSupportWithBlock:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_eSearchSupportedLock lock];
  eSearchSupported = self->_eSearchSupported;
  if (eSearchSupported || ([(MFAccount *)self accountPropertyForKey:@"VerifiedESEARCH"], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_eSearchSupported, self->_eSearchSupported = v6, v7, (eSearchSupported = self->_eSearchSupported) != 0))
  {
    v8 = 0;
    v9 = [(NSNumber *)eSearchSupported BOOLValue];
  }

  else
  {
    v11 = v4[2](v4);
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v13 = self->_eSearchSupported;
    self->_eSearchSupported = v12;

    if (v11)
    {
      v8 = 1;
      [(MFAccount *)self setAccountProperty:self->_eSearchSupported forKey:@"VerifiedESEARCH"];
      v9 = 1;
    }

    else
    {
      AnalyticsSendEventLazy();
      v9 = 0;
      v8 = 0;
    }
  }

  [(NSLock *)self->_eSearchSupportedLock unlock];
  if (v8)
  {
    [(MFAccount *)self savePersistentAccount];
  }

  return v9;
}

id __45__IMAPAccount_verifyESearchSupportWithBlock___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"hostname";
  v1 = [*(a1 + 32) hostname];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)unselectMailbox:(id)a3
{
  v14 = a3;
  if (v14 && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(self->_cachedConnections, v6);
        v9 = [v8 selectedMailbox];
        v10 = v9;
        if (v9 && [v9 isEqualToString:v14])
        {
          if (!v7)
          {
            v7 = [MEMORY[0x1E695DF70] array];
          }

          [v7 addObject:v8];
          CFArrayRemoveValueAtIndex(self->_cachedConnections, v6);
          --Count;
        }

        else
        {
          ++v6;
        }
      }

      while (v6 < Count);
    }

    else
    {
      v7 = 0;
    }

    [(IMAPAccount *)self mf_unlock];
    v11 = [v7 count];
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = [v7 objectAtIndex:i];
        if ([v13 isValid])
        {
          [v13 logout];
        }

        [v13 disconnectAndNotifyDelegate:1];
      }
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }
}

- (void)filterMailboxList:(id)a3 forMailbox:(id)a4 options:(int64_t)a5
{
  v9 = a3;
  v5 = [v9 count];
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v7 = [v9 objectAtIndex:v6];
      v8 = [v7 objectForKey:@"MailboxName"];
      if ([v8 isEqualToString:@"Apple Mail To Do"])
      {
        [v9 removeObjectAtIndex:v6];
      }

      --v6;
    }

    while (v6 != -1);
  }
}

- (void)systemWillSleep
{
  v3 = [(IMAPAccount *)self taskManager];

  if (!v3)
  {

    [(IMAPAccount *)self releaseAllConnections];
  }
}

- (void)_releaseAllConnectionsAndCallSuper:(BOOL)a3 synchronously:(BOOL)a4 edgeForcedOnly:(BOOL)a5 saveOfflineCache:(BOOL)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(&self->_didTearDown);
  if ((v6 & 1) == 0)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v12 = +[IMAPAccount log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AF00] isMainThread];
      v14 = objc_opt_class();
      v15 = @"BT";
      *buf = 138413570;
      if (v13)
      {
        v15 = @"MT";
      }

      v53 = v15;
      v54 = 2112;
      v55 = v14;
      v56 = 1024;
      v57 = v10;
      v58 = 1024;
      v59 = v9;
      v60 = 1024;
      v61 = v8;
      v62 = 1024;
      v63 = v7;
      v16 = v14;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "#Network %@: [%@ _releaseAllConnectionsAndCallSuper:%{BOOL}d]", buf, 0x2Eu);
    }

    v50[0] = @"method";
    v50[1] = @"edgeOnly";
    v51[0] = @"_releaseAllConnectionsAndCallSuper";
    v17 = NSStringFromBOOL();
    v51[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    [MFPowerController powerlog:@"IMAPAccount" eventData:v18];

    if (v9)
    {
      v19 = [(IMAPAccount *)self taskManager];

      if (v19)
      {
        v20 = [(IMAPAccount *)self taskManager];
        [v20 closeAllConnections];

        if (v10)
        {
          v45.receiver = self;
          v45.super_class = IMAPAccount;
          [(MailAccount *)&v45 releaseAllConnections];
        }
      }

      else
      {
        [(NSRecursiveLock *)self->_connectionLock lock];
        [(IMAPAccount *)self mf_lock];
        v25 = [(__CFArray *)self->_cachedConnections mutableCopy];
        if (self->_cachedConnections)
        {
          v26 = +[IMAPAccount log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            cachedConnections = self->_cachedConnections;
            *buf = 138412290;
            v53 = cachedConnections;
            _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "#Network All connections: %@", buf, 0xCu);
          }
        }

        [(IMAPAccount *)self mf_unlock];
        if (!v8)
        {
          goto LABEL_27;
        }

        v28 = +[IMAPAccount log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_DEFAULT, "#Network EDGE ONLY", buf, 2u);
        }

        v29 = [v25 count];
        if (v29)
        {
          v30 = 0;
          v31 = v29 - 1;
          do
          {
            v32 = [v25 objectAtIndex:v31];
            if ([v32 isCellularConnection])
            {
              v30 |= [v32 isFetching];
            }

            else
            {
              [v25 removeObjectAtIndex:v31];
            }

            --v31;
          }

          while (v31 != -1);
        }

        else
        {
LABEL_27:
          LOBYTE(v30) = 0;
        }

        v33 = +[IMAPAccount log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v25;
          _os_log_impl(&dword_1B0389000, v33, OS_LOG_TYPE_DEFAULT, "#Network Dropping connections: %@", buf, 0xCu);
        }

        v34 = 0;
        while (1)
        {

          [(IMAPAccount *)self mf_lock];
          if ([v25 count])
          {
            v35 = [v25 objectAtIndexedSubscript:0];
            v36 = [v35 delegate];
            [v25 removeObjectAtIndex:0];
            v37 = self->_cachedConnections;
            if (v37)
            {
              v65.length = CFArrayGetCount(self->_cachedConnections);
              v65.location = 0;
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v37, v65, v35);
              if (FirstIndexOfValue != -1)
              {
                CFArrayRemoveValueAtIndex(self->_cachedConnections, FirstIndexOfValue);
              }
            }

            v39 = v36;
            v33 = v35;
          }

          else
          {
            v39 = 0;
            v33 = 0;
          }

          [(IMAPAccount *)self mf_unlock];
          if (!v33)
          {
            break;
          }

          if ((v30 & (v34 == 0)) == 1)
          {
            if ([v33 isFetching])
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }
          }

          [v33 logout];
          if (v39)
          {
            [(IMAPAccount *)self mf_lock];
            [v33 setDelegate:0];
            [(IMAPAccount *)self mf_unlock];
          }
        }

        if (v30)
        {
          v40 = [v34 selectedMailbox];
          v41 = [(IMAPAccount *)self mailboxUidForName:v40];
        }

        else
        {
          v41 = 0;
        }

        [(NSRecursiveLock *)self->_connectionLock unlock];
        if ((v30 & (v41 != 0)) == 1)
        {
          v42 = MFUserAgent();
          [v42 autofetchAccount:self mailboxUid:v41];
        }

        if (v10)
        {
          v44.receiver = self;
          v44.super_class = IMAPAccount;
          [(MailAccount *)&v44 releaseAllConnections];
        }
      }
    }

    else
    {
      [(IMAPAccount *)self mf_lock];
      if (self->_cachedConnections)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __96__IMAPAccount__releaseAllConnectionsAndCallSuper_synchronously_edgeForcedOnly_saveOfflineCache___block_invoke;
        v46[3] = &unk_1E7AA27B0;
        v46[4] = self;
        v47 = v10;
        v48 = v8;
        v49 = v7;
        v21 = [v46 copy];
        v22 = _Block_copy(v21);
        v23 = [MFMonitoredInvocation invocationWithSelector:sel__invokeBlock_ target:self object:v22 taskName:0 priority:3 canBeCancelled:1];

        [v23 retainArguments];
        v24 = +[MFInvocationQueue sharedInvocationQueue];
        [v24 addInvocation:v23];
      }

      [(IMAPAccount *)self mf_unlock];
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)releaseAllForcedConnections
{
  -[IMAPAccount _releaseAllConnectionsAndCallSuper:synchronously:edgeForcedOnly:saveOfflineCache:](self, "_releaseAllConnectionsAndCallSuper:synchronously:edgeForcedOnly:saveOfflineCache:", 0, [MEMORY[0x1E696AF00] isMainThread] ^ 1, 1, 1);
  v3.receiver = self;
  v3.super_class = IMAPAccount;
  [(MailAccount *)&v3 releaseAllForcedConnections];
}

- (void)acquireNetworkAssertion
{
  [(IMAPAccount *)self mf_lock];
  if (!self->_packetContextAssertion)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(MailAccount *)self displayName];
    v5 = [(MFAccount *)self uniqueID];
    v6 = [v3 stringWithFormat:@"IMAP account %@ (%@)", v4, v5];

    v7 = [MFNetworkController networkAssertionWithIdentifier:v6];
    packetContextAssertion = self->_packetContextAssertion;
    self->_packetContextAssertion = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = +[MFNetworkController sharedInstance];
    [v9 addObserver:self selector:sel_networkChanged name:@"NetworkConfigurationDidChangeNotification" object:v10];
  }

  [(IMAPAccount *)self mf_unlock];
}

- (void)releaseNetworkAssertion
{
  [(IMAPAccount *)self mf_lock];
  unlockedReleaseNetworkAssertion(self);

  [(IMAPAccount *)self mf_unlock];
}

- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 isAlertResponse];
  if (v9)
  {
    v10 = [v7 userString];
    [(IMAPAccount *)self handleAlertResponse:v10];
LABEL_3:

    goto LABEL_14;
  }

  if ([v8 command] == 8 && objc_msgSend(v7, "responseType") == 13)
  {
    v11 = [v7 mailboxName];
    v10 = [(IMAPAccount *)self mailboxUidForName:v11];

    v12 = [v7 statusEntries];
    v13 = [v10 URLString];

    if (v13)
    {
      v14 = [v12 objectForKey:0x1F2748100];
      if (v14)
      {
        v15 = [v10 userInfoObjectForKey:0x1F2748100];
        v16 = [v15 intValue];

        if (v16 != [v14 unsignedIntValue])
        {
          v17 = EFStringWithInt();
          [v10 setUserInfoObject:v17 forKey:0x1F2748100];
        }
      }

      v18 = [v12 objectForKeyedSubscript:0x1F2748140];

      if (v18)
      {
        [v10 updateMostRecentStatusCount:{objc_msgSend(v18, "unsignedIntegerValue")}];
      }
    }

    goto LABEL_3;
  }

LABEL_14:

  return v9 ^ 1;
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id)a5
{
  v7 = a4;
  if ([v7 isAlertResponse])
  {
    v6 = [v7 userString];
    [(IMAPAccount *)self handleAlertResponse:v6];
  }
}

- (void)setIsOffline:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (setIsOffline__sOnceToken != -1)
    {
      [IMAPAccount setIsOffline:];
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __28__IMAPAccount_setIsOffline___block_invoke_2;
    v5[3] = &unk_1E7AA25E8;
    v5[4] = self;
    v6 = v3;
    dispatch_async(setIsOffline__sOfflineStatusChangeQueue, v5);
  }

  else if ([(IMAPAccount *)self isOffline]!= v3)
  {
    if (v3)
    {
      [(IMAPAccount *)self _releaseAllConnectionsAndCallSuper:0];
    }

    atomic_store(v3, &self->_isOffline);
  }
}

void __28__IMAPAccount_setIsOffline___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.mail.imap.offlinestatuschange", 0);
  v1 = setIsOffline__sOfflineStatusChangeQueue;
  setIsOffline__sOfflineStatusChangeQueue = v0;
}

- (void)setSeparatorChar:(id)a3 serverNamespace:(id)a4
{
  v15 = a3;
  v6 = a4;
  [(IMAPAccount *)self mf_lock];
  if (!v15 || self->_separatorChar && ([v15 isEqualToString:?] & 1) != 0)
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = [v15 copy];
    separatorChar = self->_separatorChar;
    self->_separatorChar = v8;

    [(MailAccount *)self _incrementCacheDirtyCount];
    v7 = 1;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (self->_separatorChar && [v6 hasSuffix:?])
  {
    v10 = [v6 substringWithRange:{0, objc_msgSend(v6, "length") - -[NSString length](self->_separatorChar, "length")}];

    v6 = v10;
  }

  if (([v6 isEqualToString:self->_serverNamespace] & 1) == 0)
  {
    v11 = [v6 copy];
    serverNamespace = self->_serverNamespace;
    self->_serverNamespace = v11;

    [(MailAccount *)self _incrementCacheDirtyCount];
    v7 = 1;
  }

LABEL_12:
  [(IMAPAccount *)self mf_unlock];
  if (v7)
  {
    v13 = [(MailAccount *)self allMailboxUids];
    [v13 makeObjectsPerformSelector:sel_flushCriteria];
  }

  v14 = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if (v14)
  {
    [(IMAPAccount *)self setServerPathPrefix:v14];
  }
}

- (void)_updateSeparatorAndNamespaceWithConnection:(id)a3
{
  v6 = a3;
  [(NSRecursiveLock *)self->_connectionLock lock];
  if ((*(self + 397) & 0x10) == 0)
  {
    v4 = [v6 separatorChar];
    v5 = [v6 serverPathPrefix];
    [(IMAPAccount *)self setSeparatorChar:v4 serverNamespace:v5];
    *(self + 397) |= 0x10u;
  }

  [(NSRecursiveLock *)self->_connectionLock unlock];
}

- (id)_fetchAndSetSeparatorChar
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    goto LABEL_2;
  }

  v4 = [(IMAPAccount *)self taskManager];

  if (v4)
  {
    v5 = [(IMAPAccount *)self taskManager];
    v3 = [v5 fetchSeparatorChar];

    if (v3)
    {
      [(IMAPAccount *)self setSeparatorChar:v3 serverNamespace:0];
    }
  }

  else
  {
    if ([(IMAPAccount *)self isOffline])
    {
LABEL_2:
      v3 = 0;
      goto LABEL_13;
    }

    v6 = [(IMAPAccount *)self connectionForMailbox:0 delegate:self options:1 failedToSelectMailbox:0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 separatorChar];
      if (v8)
      {
        [(IMAPAccount *)self setSeparatorChar:v8 serverNamespace:0];
      }

      [(IMAPAccount *)self checkInConnection:v7];
    }

    else
    {
      v8 = 0;
    }

    v3 = v8;
  }

LABEL_13:

  return v3;
}

- (BOOL)_hasCachedSeparatorChar
{
  [(IMAPAccount *)self mf_lock];
  separatorChar = self->_separatorChar;
  if (separatorChar)
  {
    v4 = [(NSString *)separatorChar length]!= 0;
  }

  else
  {
    v4 = 0;
  }

  [(IMAPAccount *)self mf_unlock];
  return v4;
}

- (id)lastKnownCapabilities
{
  [(MailAccount *)self rootMailbox];

  [(IMAPAccount *)self mf_lock];
  v3 = self->_lastKnownCapabilities;
  [(IMAPAccount *)self mf_unlock];

  return v3;
}

- (void)_setCapabilities:(id)a3
{
  v8 = a3;
  [(IMAPAccount *)self mf_lock];
  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (v8 | lastKnownCapabilities)
  {
    v6 = lastKnownCapabilities;
    objc_storeStrong(&self->_lastKnownCapabilities, a3);
    [(MailAccount *)self _incrementCacheDirtyCount];
  }

  else
  {
    v6 = 0;
  }

  [(IMAPAccount *)self mf_unlock];
  if (v8 | v6)
  {
    v7 = [v8 isEqualToArray:v6] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:v7];
}

- (id)fetchLimits
{
  v2 = +[MFNetworkController sharedInstance];
  v3 = [v2 isFatPipe];
  v4 = +[MFPowerController sharedInstance];
  v5 = [v4 isPluggedIn];

  if (v3 & v5)
  {
    v6 = 204472320;
    v7 = 209715200;
    v8 = 5242880;
  }

  else
  {
    v9 = [v2 is3GConnection];
    v10 = v3 | [v2 is4GConnection];
    v11 = 4096;
    if (v9)
    {
      v11 = 0x10000;
    }

    v12 = 0x4000;
    if (v9)
    {
      v12 = 0x80000;
    }

    if (v10)
    {
      v8 = 0x40000;
    }

    else
    {
      v8 = v11;
    }

    if (v10)
    {
      v6 = 0x200000;
    }

    else
    {
      v6 = v12;
    }

    v7 = v6 | v8;
  }

  v13 = objc_alloc_init(MFFetchLimits);
  [(MFFetchLimits *)v13 setFetchMinBytes:v6];
  [(MFFetchLimits *)v13 setMinBytesLeft:v8];
  [(MFFetchLimits *)v13 setFetchMaxBytes:v7];

  return v13;
}

- (id)_listingForMailboxUid:(id)a3 listAllChildren:(BOOL)a4 onlySubscribed:(BOOL)a5 statusDataItems:(id)a6 withConnection:(id)a7 statusEntriesByMailbox:(id *)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v43 = a6;
  v15 = a7;
  if (v15 || ([(IMAPAccount *)self connectionForMailbox:0 delegate:self options:9 failedToSelectMailbox:0], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v42 = [(IMAPAccount *)self serverPathPrefixAccountValue];
    if ([v42 length])
    {
      v16 = [(NSString *)self->_serverNamespace isEqualToString:v42];
    }

    else
    {
      v16 = 1;
    }

    if (self->super._rootMailboxUid == v14 && v16)
    {
      v17 = &stru_1F273A5E0;
    }

    else if (self->super._inboxMailboxUid == v14 && (-[IMAPAccount serverPathPrefix](self, "serverPathPrefix"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isEqualToString:@"INBOX"], v18, v19))
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [(IMAPAccount *)self separatorChar];
      v17 = [v20 stringWithFormat:@"INBOX%@INBOX", v21];
    }

    else
    {
      v17 = [(IMAPAccount *)self _nameForMailboxUid:v14];
    }

    if (v12)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if (!v11 || ([v15 subscribedListingForMailbox:v17 options:v22], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([v15 supportsCapability:23])
      {
        v24 = ([v15 supportsCapability:21] & 1) != 0 || -[IMAPAccount xListSupportedOnConnection:](self, "xListSupportedOnConnection:", v15);
      }

      else
      {
        v24 = 0;
      }

      v25 = [v15 listingForMailbox:v17 options:v22 getSpecialUse:v24 statusDataItems:v43 statusEntriesByMailbox:a8];
      v26 = v25;
      if (self->super._rootMailboxUid == v14 && self->_serverNamespace != 0 && v16)
      {
        v41 = [v25 mutableCopy];
        v27 = _mailboxDictionaryWithName(v26, self->_serverNamespace, 0);
        [v41 removeObject:v27];
        v28 = [v27 objectForKeyedSubscript:@"MailboxChildren"];
        v29 = v28;
        v30 = MEMORY[0x1E695E0F0];
        if (v28)
        {
          v30 = v28;
        }

        v31 = v30;

        v40 = v31;
        v23 = [MEMORY[0x1E695DF70] arrayWithArray:v31];
        [v23 addObjectsFromArray:v41];
        v32 = [(NSString *)self->_serverNamespace isEqualToString:@"INBOX"];
        if (v27)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        if (v33)
        {
          v44 = 0xAAAAAAAAAAAAAAAALL;
          v34 = _mailboxDictionaryWithName(v23, self->_serverNamespace, &v44);
          v39 = v34;
          v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v27];
          if (v34)
          {
            v35 = [v34 objectForKey:@"MailboxChildren"];
            [v38 setObject:v35 forKey:@"MailboxChildren"];

            [v23 replaceObjectAtIndex:v44 withObject:v38];
          }

          else
          {
            v37 = [MEMORY[0x1E695DF20] dictionary];
            [v38 setObject:v37 forKey:@"MailboxChildren"];

            [v23 ef_insertObject:v38 usingSortFunction:_MFCompareMailboxDictionariesByName context:0 allowDuplicates:1];
          }
        }
      }

      else
      {
        v23 = v25;
      }
    }

    [(IMAPAccount *)self checkInConnection:v15];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_newMailboxWithParent:(id)a3 name:(id)a4 attributes:(unsigned int)a5 dictionary:(id)a6 withCreationOption:(int64_t)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v46 = a6;
  if (a7)
  {
    __assert_rtn("[IMAPAccount _newMailboxWithParent:name:attributes:dictionary:withCreationOption:]", "IMAPAccount.m", 1703, "creationOption == MailboxCreationOptionDefault");
  }

  v13 = [(MailAccount *)self rootMailbox];
  if (![v11 isEqual:v13] || (v14 = v12) == 0)
  {

LABEL_7:
    [(NSRecursiveLock *)self->_connectionLock lock];
    v19 = [v11 accountRelativePath];
    v17 = [v19 stringByAppendingPathComponent:v12];

    v18 = [(IMAPAccount *)self mailboxUidForRelativePath:v17 create:0];
    if (v18)
    {
LABEL_33:
      [(NSRecursiveLock *)self->_connectionLock unlock];
      v15 = v12;
      goto LABEL_34;
    }

    v43 = v12;
    v20 = [(IMAPAccount *)self _nameForMailboxUid:v11];
    v21 = [v20 mutableCopy];

    v22 = [v12 pathComponents];
    v23 = [(IMAPAccount *)self separatorChar];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v25)
    {
      v26 = *v51;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v51 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v50 + 1) + 8 * i);
          if ([v21 length])
          {
            if (!v23)
            {
              v29 = 0;
              goto LABEL_20;
            }

            [v21 appendString:v23];
          }

          [v21 appendString:v28];
        }

        v25 = [v24 countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v29 = 1;
LABEL_20:

    if ([(IMAPAccount *)self _useNewIMAPStack])
    {
      if (!v29)
      {
        v18 = 0;
        goto LABEL_32;
      }

      v30 = [(IMAPAccount *)self taskManager];
      v31 = [v30 createMailbox:v21];

      v49.receiver = self;
      v49.super_class = IMAPAccount;
      v18 = [(MailAccount *)&v49 _newMailboxWithParent:v11 name:v43 attributes:a5 dictionary:v46 withCreationOption:0];
      if (v31)
      {
LABEL_32:

        v12 = v43;
        goto LABEL_33;
      }

LABEL_23:
      v41 = [MEMORY[0x1E699B580] actionWithID:0 toCreateMailbox:objc_msgSend(v18 mailboxName:{"databaseID"), v21}];
      v32 = [(MailAccount *)self library];
      v45 = [v32 persistence];
      v33 = [v45 mailboxActionPersistence];
      v34 = [(MFAccount *)self identifier];
      [v33 saveMailboxActionForAccountID:v34 action:v41];

      v35 = [(IMAPAccount *)self taskManager];
      [v35 localMailboxesDidChange];

      goto LABEL_32;
    }

    v42 = [(IMAPAccount *)self connectionForMailbox:0 delegate:self options:9 failedToSelectMailbox:0];
    v18 = [(IMAPAccount *)self mailboxUidForRelativePath:v17 create:0];
    if (v18)
    {
      if (v42)
      {
        [(IMAPAccount *)self checkInConnection:?];
      }
    }

    else
    {
      v36 = [v43 mf_fileSystemString];

      v43 = v36;
      if (v29)
      {
        if (v42)
        {
          v37 = [v42 createMailbox:v21];
          [(IMAPAccount *)self checkInConnection:v42];
        }

        else
        {
          v37 = 1;
        }

        v48.receiver = self;
        v48.super_class = IMAPAccount;
        v18 = [(MailAccount *)&v48 _newMailboxWithParent:v11 name:v36 attributes:a5 dictionary:v46 withCreationOption:0];
        if (v37)
        {
          v47.receiver = self;
          v47.super_class = IMAPAccount;
          v40 = [(MailAccount *)&v47 _newMailboxWithParent:v11 name:v36 attributes:a5 dictionary:v46 withCreationOption:0];

          v18 = v40;
          if (v42)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (v42)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_23;
      }
    }

    goto LABEL_32;
  }

  v15 = v14;
  v16 = [v14 caseInsensitiveCompare:@"INBOX"];

  if (v16)
  {
    goto LABEL_7;
  }

  v17 = 0;
  v18 = [(MailAccount *)self _copyMailboxWithParent:v11 name:v15 attributes:a5 dictionary:v46];
LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_setSpecialMailbox:(id)a3 forType:(int64_t)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = IMAPAccount;
  [(MailAccount *)&v7 _setSpecialMailbox:v6 forType:a4];
  if (v6 && [v6 isValid])
  {
    [(IMAPAccount *)self setStoreMailboxType:a4 onServer:1];
  }
}

- (BOOL)isMailboxLocalForType:(int64_t)a3
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
  v18 = a3;
  if ([(IMAPAccount *)self storeMailboxTypeOnServer:5])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
    v7 = [(MailAccount *)self _localMailboxNameForType:5 usingDisplayName:v18];
    v8 = [v6 account];
    v9 = [v6 parent];
    [v8 renameMailbox:v6 newName:v7 parent:v9];

    v4 = v7;
    v5 = v6;
  }

  if (![(IMAPAccount *)self storeMailboxTypeOnServer:4])
  {
    v10 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];

    v11 = [(MailAccount *)self _localMailboxNameForType:4 usingDisplayName:v18];

    v12 = [v10 account];
    v13 = [v10 parent];
    [v12 renameMailbox:v10 newName:v11 parent:v13];

    v4 = v11;
    v5 = v10;
  }

  if ([(IMAPAccount *)self storeMailboxTypeOnServer:3])
  {
    v14 = v4;
    v15 = v5;
  }

  else
  {
    v15 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];

    v14 = [(MailAccount *)self _localMailboxNameForType:3 usingDisplayName:v18];

    v16 = [v15 account];
    v17 = [v15 parent];
    [v16 renameMailbox:v15 newName:v14 parent:v17];
  }
}

- (id)specialUseAttributeForType:(int64_t)a3
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
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, 5, @"\\Drafts");
  CFDictionarySetValue(Mutable, 4, @"\\Sent");
  CFDictionarySetValue(Mutable, 3, @"\\Trash");
  CFDictionarySetValue(Mutable, 2, @"\\Archive");
  CFDictionarySetValue(Mutable, 1, @"\\Junk");
  specialUseAttributeForType__map = Mutable;
}

- (id)_specialMailboxUidWithType:(int64_t)a3 create:(BOOL)a4
{
  v4 = a4;
  v7 = [(IMAPAccount *)self isMailboxLocalForType:?];
  v8 = self;
  v9 = v8;
  if (v7)
  {
    v10 = [(MailAccount *)v8 _localMailboxNameForType:a3 usingDisplayName:0];
    v11 = +[LocalAccount localAccount];
  }

  else
  {
    v12 = [(IMAPAccount *)v8 specialUseAttributeForType:a3];
    if (v12)
    {
      v13 = [(MailAccount *)v9 rootMailbox];
      v14 = [v13 descendantWithExtraAttribute:v12];

      if (v14)
      {

        v10 = 0;
        goto LABEL_14;
      }
    }

    v15 = [(MailAccount *)v9 specialMailboxNameForType:a3];
    if ([v15 length])
    {
      v10 = v15;
    }

    else
    {
      v16 = [(MailAccount *)v9 _defaultSpecialMailboxNameForType:a3];

      v10 = v16;
    }

    v17 = [v10 length];

    if (!v17)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v11 = v9;
  }

  v18 = [(IMAPAccount *)v11 mailboxUidForRelativePath:v10 create:v7 | v4];
  v14 = v18;
  if (v7)
  {
    [v18 setRepresentedAccount:v9];
  }

  v9 = v11;
LABEL_14:

  return v14;
}

- (id)allMailMailboxUid
{
  v2 = [(MailAccount *)self rootMailbox];
  v3 = [v2 descendantWithExtraAttribute:@"\\All"];

  return v3;
}

- (BOOL)isSpecialMailbox:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMAPAccount;
  if ([(MailAccount *)&v8 isSpecialMailbox:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(IMAPAccount *)self specialUseAttributesForMailbox:v4];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (id)specialUseAttributesForMailbox:(id)a3
{
  v3 = a3;
  if (specialUseAttributesForMailbox__onceToken != -1)
  {
    [IMAPAccount specialUseAttributesForMailbox:];
  }

  v4 = MEMORY[0x1E695DFA8];
  v5 = [v3 extraAttributes];
  v6 = [v4 setWithArray:v5];

  [v6 intersectSet:specialUseAttributesForMailbox__knownSpecialAttributes];

  return v6;
}

void __46__IMAPAccount_specialUseAttributesForMailbox___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"\\All", @"\\Junk", @"\\Sent", @"\\Trash", @"\\Drafts", @"\\Archive", @"\\Flagged", 0}];
  v1 = specialUseAttributesForMailbox__knownSpecialAttributes;
  specialUseAttributesForMailbox__knownSpecialAttributes = v0;
}

- (BOOL)getMailboxListWithConnection:(id)a3 statusDataItems:(id)a4 statusEntriesByMailbox:(id *)a5
{
  v6 = [(IMAPAccount *)self _listingForMailboxUid:self->super._rootMailboxUid listAllChildren:1 onlySubscribed:0 statusDataItems:a4 withConnection:a3 statusEntriesByMailbox:a5];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"AccountMailboxListingWillFetch" object:self userInfo:0];

    [(IMAPAccount *)self mf_lock];
    LODWORD(v7) = [(MailAccount *)self _loadMailboxListingIntoCache:0 attributes:0 children:v6 parent:self->super._rootMailboxUid];
    [(IMAPAccount *)self mf_unlock];
    if (v7)
    {
      [(IMAPAccount *)self _mailboxListingChanged];
      [(MailAccount *)self _incrementCacheDirtyCount];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__IMAPAccount_getMailboxListWithConnection_statusDataItems_statusEntriesByMailbox___block_invoke;
    v9[3] = &unk_1E7AA25C0;
    v9[4] = self;
    [(MailAccount *)self _writeMailboxCacheWithPrejudice:1 completionHandler:v9];
  }

  [(MailAccount *)self resetSpecialMailboxes];

  return v6 != 0;
}

void __83__IMAPAccount_getMailboxListWithConnection_statusDataItems_statusEntriesByMailbox___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"AccountMailboxListingDidFetch" object:*(a1 + 32) userInfo:0];
}

- (void)throttledGetMailboxListWithConnection:(id)a3
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = MFUserAgent();
  v7 = [v6 isForeground];

  v8 = atomic_load(&self->_fetchedMailboxList);
  if ((v8 & 1) == 0 || v7 && Current - self->_timeLastFetchedMailboxList > 300.0)
  {
    self->_timeLastFetchedMailboxList = Current;
    atomic_store(1u, &self->_fetchedMailboxList);
    v9 = +[MFActivityMonitor currentMonitor];
    v10 = [(MailAccount *)self rootMailbox];
    [v9 setMailbox:v10];

    v11 = MFLookupLocalizedString(@"DISABLED_STATUS", @"Checking for Mail…", @"Delayed");
    [v9 setDisplayName:v11];

    v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2748140, 0}];
    v29[0] = 0;
    v13 = [(IMAPAccount *)self getMailboxListWithConnection:v4 statusDataItems:v12 statusEntriesByMailbox:v29];
    v14 = v29[0];
    v15 = v14;
    if (v13)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke;
      v28[3] = &unk_1E7AA27D8;
      v28[4] = self;
      [v14 enumerateKeysAndObjectsUsingBlock:v28];
      if (!v15)
      {
        v16 = v4;
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = [(IMAPAccount *)self connectionForMailbox:0 delegate:self options:9 failedToSelectMailbox:0];
        }

        v19 = [(MailAccount *)self allMailboxUids];
        v20 = [v19 ef_filter:&__block_literal_global_249];

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_3;
        v27[3] = &unk_1E7AA2820;
        v27[4] = self;
        v21 = [v20 ef_compactMap:v27];
        [v18 fetchStatusForMailboxes:v21 args:v12];
        if (v18 != v17)
        {
          [(IMAPAccount *)self checkInConnection:v18];
        }
      }
    }

    else
    {
      atomic_store(0, &self->_fetchedMailboxList);
    }

    v22 = [MEMORY[0x1E699B978] globalAsyncScheduler];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_4;
    v25[3] = &unk_1E7AA25C0;
    v23 = v9;
    v26 = v23;
    v24 = [v22 afterDelay:v25 performBlock:1.0];
  }
}

void __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [*(a1 + 32) mailboxUidForName:a2];
  v6 = [v5 URLString];
  if (v6)
  {
    v7 = +[MFMailboxUid isDraftsMailboxType:](MFMailboxUid, "isDraftsMailboxType:", [v5 mailboxType]);

    if (!v7)
    {
      v8 = [v10 objectForKeyedSubscript:0x1F2748140];
      v9 = v8;
      if (v8)
      {
        [v5 updateMostRecentStatusCount:{objc_msgSend(v8, "unsignedIntegerValue")}];
      }
    }
  }
}

uint64_t __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isStore])
  {
    v3 = +[MFMailboxUid isDraftsMailboxType:](MFMailboxUid, "isDraftsMailboxType:", [v2 mailboxType]) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) nameForMailboxUid:a2];

  return v2;
}

- (void)fetchMailboxListExplicit
{
  if (+[MFMailMessageLibrary canUsePersistence])
  {
    v3 = [(IMAPAccount *)self taskManager];

    if (v3)
    {
      v4 = [(IMAPAccount *)self taskManager];
      [v4 fetchNow:*MEMORY[0x1E699A740]];
    }

    else
    {

      [(IMAPAccount *)self throttledGetMailboxListWithConnection:0];
    }
  }
}

- (void)fetchMailboxListImplicit
{
  if (+[MFMailMessageLibrary canUsePersistence])
  {
    v3 = [(IMAPAccount *)self taskManager];

    if (!v3)
    {

      [(IMAPAccount *)self throttledGetMailboxListWithConnection:0];
    }
  }
}

- (id)_copyMailboxUidWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 existingMailboxUid:(id)a6 dictionary:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v14)
  {
    if (!v13)
    {
      inboxMailboxUid = self->super._inboxMailboxUid;
      if (inboxMailboxUid == v14)
      {
        v23 = [(MFMailboxUid *)inboxMailboxUid name];
        a5 = [(MFMailboxUid *)self->super._inboxMailboxUid attributes]& 0xFFFFFFFFFFFFFEFFLL;
        v13 = v23;
      }

      else
      {
        if (([(MFMailboxUid *)v14 attributes]& 0x100) != 0)
        {

          v14 = 0;
        }

        v13 = 0;
      }
    }

    a5 |= [(MFMailboxUid *)v14 attributes]& 0x80;
    goto LABEL_15;
  }

  if (self->super._rootMailboxUid != v12 || (v17 = v13, (v13 = v17) == 0) || (v18 = [v17 caseInsensitiveCompare:@"INBOX"], v13, v18))
  {
    v14 = 0;
LABEL_15:
    v25.receiver = self;
    v25.super_class = IMAPAccount;
    v22 = [(MailAccount *)&v25 _copyMailboxUidWithParent:v12 name:v13 attributes:a5 existingMailboxUid:v14 dictionary:v15];

    goto LABEL_16;
  }

  v19 = self->super._inboxMailboxUid;
  if (v19)
  {
    [(MFMailboxUid *)v19 setName:v13];
    [(MFMailboxUid *)self->super._inboxMailboxUid setAttributes:a5 & 0xFFFFFFFFFFFFFEFFLL];
    v20 = self->super._inboxMailboxUid;
    v21 = [v15 objectForKey:@"MailboxExtraAttributes"];
    [(MFMailboxUid *)v20 setExtraAttributes:v21];

    v22 = self->super._inboxMailboxUid;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = IMAPAccount;
    v22 = [(MailAccount *)&v26 _copyMailboxUidWithParent:v12 name:v13 attributes:a5 & 0xFFFFFFFFFFFFFEFFLL existingMailboxUid:0 dictionary:v15];
    [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:v22 forType:7];
  }

LABEL_16:

  return v22;
}

- (void)_synchronouslyLoadListingForParent:(id)a3
{
  v8 = a3;
  v4 = [(IMAPAccount *)self taskManager];

  if (!v4)
  {
    v5 = [(IMAPAccount *)self _listingForMailboxUid:v8 listAllChildren:0];
    if (v5)
    {
      v6 = [v8 name];
      v7 = [(MailAccount *)self _loadMailboxListingIntoCache:v6 attributes:0 children:v5 parent:v8];

      if (v7)
      {
        [(IMAPAccount *)self _mailboxListingChanged];
      }
    }
  }
}

- (void)_waitForMailboxListingLoadToComplete
{
  [(IMAPAccount *)self mf_lock];

  [(IMAPAccount *)self mf_unlock];
}

- (void)_mailboxesWereRemovedFromTree:(id)a3 withFileSystemPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(IMAPAccount *)self mf_lock];
  if (!sMailboxDeletionQueue)
  {
    v8 = objc_alloc_init(MFInvocationQueue);
    v9 = sMailboxDeletionQueue;
    sMailboxDeletionQueue = v8;
  }

  [(IMAPAccount *)self mf_unlock];
  v10 = objc_alloc_init(_MFIMAPMailboxDeletionQueueEntry);
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setUrls:v6];
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setPaths:v7];
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setAccount:self];
  v11 = objc_opt_class();
  v12 = MFLookupLocalizedString(@"IMAP_REMOVING_CACHE_FILES", @"Removing old cache files…", @"Message");
  v13 = [MFMonitoredInvocation invocationWithSelector:sel__deleteQueuedMailboxes_ target:v11 object:v10 taskName:v12 priority:12 canBeCancelled:1];

  [sMailboxDeletionQueue addInvocation:v13];
  v14.receiver = self;
  v14.super_class = IMAPAccount;
  [(MailAccount *)&v14 _mailboxesWereRemovedFromTree:v6 withFileSystemPaths:v7];
}

+ (void)_deleteQueuedMailboxes:(id)a3
{
  v18 = a3;
  v4 = [v18 account];
  [v4 _waitForMailboxListingLoadToComplete];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v18 urls];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    v9 = *MEMORY[0x1E695E738];
    do
    {
      v10 = [v18 urls];
      v11 = [v10 objectAtIndex:v8];

      v12 = [a1 mailboxUidFromActiveAccountsForURL:v11];
      v13 = v12;
      if (!v12 || ([v12 isValid] & 1) == 0)
      {
        v14 = [v18 paths];
        v15 = [v14 objectAtIndex:v8];

        if (v15 != v9)
        {
          v16 = MFRemoveItemAtPath();
        }

        [v5 addObject:v11];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v17 = [v4 library];
  [v17 deleteMailboxes:v5 account:v4];
}

- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = IMAPAccount;
  if ([(MailAccount *)&v14 newMailboxNameIsAcceptable:v6 reasonForFailure:a4])
  {
    v7 = [(IMAPAccount *)self separatorChar];
    if (v7)
    {
      v8 = [v6 rangeOfString:v7];
      v9 = v8 == 0x7FFFFFFFFFFFFFFFLL;
      if (!a4)
      {
LABEL_10:

        goto LABEL_11;
      }

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = MFLookupLocalizedString(@"MAILBOX_NAME_INCLUDES_PATH_SEPARATOR", @"Mailbox names may not include “%@”.", @"Delayed");
        v12 = [v10 stringWithFormat:v11, v7];
        *a4 = v12;

        v9 = 0;
        goto LABEL_10;
      }
    }

    else if (!a4)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }

    *a4 = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v41 = a5;
  v10 = [(IMAPAccount *)self _nameForMailboxUid:v8];
  inboxMailboxUid = self->super._inboxMailboxUid;
  if (inboxMailboxUid && [(MFMailboxUid *)inboxMailboxUid isEqual:v8])
  {
    v12 = self->super._inboxMailboxUid;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(IMAPAccount *)self _nameForMailboxUid:v41];
  if (v9)
  {
    [(IMAPAccount *)self _uidNameForPathComponent:v9];
  }

  else
  {
    [v8 name];
  }
  v14 = ;
  if ([v13 length])
  {
    v15 = [v13 mutableCopy];
    v16 = [(IMAPAccount *)self separatorChar];
    [v15 appendString:v16];

    [v15 appendString:v14];
    v14 = v15;
  }

  if (!v14)
  {
    v29 = 0;
    v26 = 0;
    if (!v12)
    {
      goto LABEL_37;
    }

LABEL_22:
    [(MailAccount *)self resetSpecialMailboxes];
    goto LABEL_37;
  }

  v39 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v10];
  v40 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v14];
  v17 = [(IMAPAccount *)self taskManager];

  if (v17)
  {
    v18 = +[IMAPAccount log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v44 = v39;
      v45 = 2114;
      v46 = v40;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Task manager mailbox %{public}@ to mailbox %{public}@", buf, 0x16u);
    }

    v19 = [(IMAPAccount *)self taskManager];
    v20 = [v19 renameMailbox:v10 toMailbox:v14];

    if ((v20 & 1) == 0)
    {
      v21 = [(MailAccount *)self library];
      v22 = [v21 persistence];
      v23 = [v22 mailboxActionPersistence];

      v24 = [MEMORY[0x1E699B580] actionWithID:0 toRenameMailbox:objc_msgSend(v8 mailboxName:"databaseID") toName:{v10, v14}];
      v25 = [(MFAccount *)self identifier];
      [v23 saveMailboxActionForAccountID:v25 action:v24];
    }

    v26 = 0;
    goto LABEL_17;
  }

  if ([(IMAPAccount *)self isOffline])
  {
    v30 = +[MFActivityMonitor currentMonitor];
    v31 = MFLookupLocalizedString(@"NO_OFFLINE_MAILBOX_RENAMING", @"You can’t rename mailboxes while an account is offline.", @"Delayed");
    v32 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:v31];
    [v30 setError:v32];

    v33 = +[IMAPAccount log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [IMAPAccount renameMailbox:v40 newName:v33 parent:?];
    }

LABEL_36:

    v26 = 0;
    v29 = 0;
    goto LABEL_37;
  }

  v26 = [(IMAPAccount *)self connectionForMailbox:0 delegate:self options:1 failedToSelectMailbox:0];
  if (!v26)
  {
    v33 = +[IMAPAccount log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [IMAPAccount renameMailbox:v40 newName:v33 parent:?];
    }

    goto LABEL_36;
  }

  v34 = +[IMAPAccount log];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = v39;
    v45 = 2114;
    v46 = v40;
    _os_log_impl(&dword_1B0389000, v34, OS_LOG_TYPE_DEFAULT, "Renaming mailbox %{public}@ to mailbox %{public}@", buf, 0x16u);
  }

  v38 = [v26 renameMailbox:v10 toMailbox:v14];
  v35 = +[IMAPAccount log];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v44) = v38;
    _os_log_impl(&dword_1B0389000, v35, OS_LOG_TYPE_DEFAULT, "renameMailbox returnValue:%{BOOL}d", buf, 8u);
  }

  [(IMAPAccount *)self checkInConnection:v26];
  if (!v38)
  {
    v29 = 0;
    if (!v12)
    {
      goto LABEL_37;
    }

    goto LABEL_22;
  }

LABEL_17:
  if (v12)
  {
    [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:7];
  }

  v42.receiver = self;
  v42.super_class = IMAPAccount;
  [(MailAccount *)&v42 renameMailbox:v8 newName:v9 parent:v41];
  v27 = [v8 store];
  [v27 reselectMailbox];

  v28 = [(IMAPAccount *)self taskManager];
  [v28 localMailboxesDidChange];

  v29 = 1;
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_37:

  v36 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)_pathComponentForUidName:(id)a3
{
  v3 = [a3 mf_decodedIMAPMailboxName];

  return v3;
}

- (id)_uidNameForPathComponent:(id)a3
{
  v3 = [a3 mf_encodedIMAPMailboxName];

  return v3;
}

- (id)_nameForMailboxUid:(id)a3
{
  v4 = a3;
  if (self->super._inboxMailboxUid == v4)
  {
    v6 = @"INBOX";
    goto LABEL_32;
  }

  v5 = [(IMAPAccount *)self serverPathPrefix];
  if (!v5 && ([(MFMailboxUid *)v4 parent], v7 = objc_claimAutoreleasedReturnValue(), rootMailboxUid = self->super._rootMailboxUid, v7, v7 == rootMailboxUid))
  {
    v12 = [(MFMailboxUid *)v4 name];
  }

  else
  {
    if (self->super._rootMailboxUid != v4)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([(__CFString *)v5 length])
      {
        v10 = ![(MFMailboxUid *)v4 isShared];
        if (!v4)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = 0;
        if (!v4)
        {
LABEL_16:
          if (v10)
          {
            v15 = [(__CFString *)v5 mutableCopy];
          }

          else
          {
            v15 = 0;
          }

          v16 = [v9 count];
          v17 = [(IMAPAccount *)self separatorChar];
          if (v16)
          {
            for (i = v16 - 1; i != -1; --i)
            {
              v19 = [v9 objectAtIndex:i];
              v20 = v19;
              if (v15)
              {
                if (!v17)
                {

                  v15 = 0;
                  break;
                }

                [v15 appendString:v17];
                [v15 appendString:v20];
              }

              else
              {
                v15 = [v19 mutableCopy];
              }
            }
          }

          v6 = v15;

          goto LABEL_31;
        }
      }

      do
      {
        if (v4 == self->super._rootMailboxUid)
        {
          break;
        }

        v13 = [(MFMailboxUid *)v4 name];
        [v9 addObject:v13];

        v14 = [(MFMailboxUid *)v4 parent];

        v4 = v14;
      }

      while (v14);
      goto LABEL_16;
    }

    v11 = &stru_1F273A5E0;
    if (v5)
    {
      v11 = v5;
    }

    v12 = v11;
  }

  v6 = v12;
LABEL_31:

LABEL_32:

  return v6;
}

- (id)nameForMailboxUid:(id)a3
{
  v3 = [(IMAPAccount *)self _nameForMailboxUid:a3];

  return v3;
}

- (id)mailboxUidForName:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v6 = [(__CFString *)v4 caseInsensitiveCompare:@"INBOX"];
  if (!v6)
  {

    v5 = @"INBOX";
  }

  v7 = [(IMAPAccount *)self serverPathPrefix];
  v8 = [(IMAPAccount *)self separatorChar];
  if (!v7 || ![v7 length] || !v6)
  {
    goto LABEL_14;
  }

  v9 = [(__CFString *)v5 rangeOfString:v7 options:8];
  if (v10)
  {
    v11 = [(__CFString *)v5 substringFromIndex:v9 + v10];

    if (v8 && v11 && (v12 = [(__CFString *)v11 rangeOfString:v8 options:8], v13))
    {
      v14 = [(__CFString *)v11 substringFromIndex:v12 + v13];

      v5 = v14;
    }

    else
    {
      v5 = v11;
    }

LABEL_14:
    v15 = 0;
    if (v8 && v5)
    {
      v16 = [(__CFString *)v5 componentsSeparatedByString:v8];
      v15 = [(MailAccount *)self rootMailbox];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = *v25;
        do
        {
          v20 = 0;
          v21 = v15;
          do
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v15 = [v21 childWithName:{*(*(&v24 + 1) + 8 * v20), v24}];

            ++v20;
            v21 = v15;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v18);
      }
    }

    goto LABEL_25;
  }

  v5 = 0;
  v15 = 0;
LABEL_25:

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)canMailboxBeDeleted:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->super._inboxMailboxUid])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = IMAPAccount;
    v5 = [(MailAccount *)&v7 canMailboxBeDeleted:v4];
  }

  return v5;
}

- (id)serverNamespace
{
  [(IMAPAccount *)self mf_lock];
  v3 = self->_serverNamespace;
  [(IMAPAccount *)self mf_unlock];

  return v3;
}

- (void)setServerNamespace:(id)a3
{
  v8 = a3;
  [(IMAPAccount *)self mf_lock];
  v4 = [v8 isEqualToString:self->_serverNamespace];
  if ((v4 & 1) == 0)
  {
    v5 = [v8 copy];
    serverNamespace = self->_serverNamespace;
    self->_serverNamespace = v5;

    [(MailAccount *)self _incrementCacheDirtyCount];
  }

  [(IMAPAccount *)self mf_unlock];
  if ((v4 & 1) == 0)
  {
    v7 = [(MailAccount *)self allMailboxUids];
    [v7 makeObjectsPerformSelector:sel_flushCriteria];
  }
}

- (void)setServerPathPrefix:(id)a3
{
  v12 = a3;
  v4 = [(IMAPAccount *)self serverPathPrefixAccountValue];
  v5 = v12;
  if (!v12)
  {
    v5 = &stru_1F273A5E0;
  }

  v13 = v5;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F273A5E0;
  }

  v8 = [(IMAPAccount *)self separatorChar];
  if (v8)
  {
    v7 = [v13 rangeOfString:v8 options:12];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v13 substringToIndex:v7];

      v13 = v9;
    }
  }

  v10 = [v13 length];
  if (v10 != -[__CFString length](v6, "length") || ([v13 isEqual:v6] & 1) == 0)
  {
    v11 = [(MailAccount *)self allMailboxUids];
    [v11 makeObjectsPerformSelector:sel_URLString];

    [(IMAPAccount *)self mf_lock];
    if (v13 && [v13 length])
    {
      [(MFAccount *)self setAccountProperty:v13 forKey:@"ServerPathPrefix"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"ServerPathPrefix"];
    }

    [(IMAPAccount *)self mf_unlock];
  }
}

- (id)_infoForMatchingURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [v4 path];
  [v5 setObject:self forKey:@"Account"];
  if (v6)
  {
    v7 = [(IMAPAccount *)self separatorChar];
    v9 = [v6 rangeOfString:@"/" options:8];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v6 substringWithRange:{v9 + v8, objc_msgSend(v6, "length") - (v9 + v8)}];

      v6 = v10;
    }

    if (v7)
    {
      v12 = [v6 rangeOfString:v7 options:8];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [v6 substringWithRange:{v12 + v11, objc_msgSend(v6, "length") - (v12 + v11)}];

        v6 = v13;
      }
    }

    if (([v6 isEqualToString:&stru_1F273A5E0] & 1) == 0)
    {
      [v5 setObject:v6 forKey:@"RelativePath"];
    }
  }

  return v5;
}

- (double)lastPushRegistration
{
  [(IMAPAccount *)self mf_lock];
  lastPushRegistration = self->_lastPushRegistration;
  [(IMAPAccount *)self mf_unlock];
  return lastPushRegistration;
}

- (void)setLastPushRegistration:(double)a3
{
  [(IMAPAccount *)self mf_lock];
  self->_lastPushRegistration = a3;

  [(IMAPAccount *)self mf_unlock];
}

- (BOOL)mustRegisterForPushOnNextConnection
{
  [(IMAPAccount *)self mf_lock];
  v3 = (*(self + 397) >> 1) & 1;
  [(IMAPAccount *)self mf_unlock];
  return v3;
}

- (void)setMustRegisterForPushOnNextConnection:(BOOL)a3
{
  v3 = a3;
  [(IMAPAccount *)self mf_lock];
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(self + 397) = *(self + 397) & 0xFD | v5;

  [(IMAPAccount *)self mf_unlock];
}

- (int64_t)supportedPushServiceLevel
{
  [(MailAccount *)self rootMailbox];

  [(IMAPAccount *)self mf_lock];
  supportedPushServiceLevel = self->_supportedPushServiceLevel;
  [(IMAPAccount *)self mf_unlock];
  return supportedPushServiceLevel;
}

- (void)setSupportedPushServiceLevel:(int64_t)a3
{
  [(IMAPAccount *)self mf_lock];
  if (self->_supportedPushServiceLevel != a3)
  {
    self->_supportedPushServiceLevel = a3;
    [(MailAccount *)self _incrementCacheDirtyCount];
  }

  [(IMAPAccount *)self mf_unlock];
}

- (id)mailboxesRegisteredForPushByHash
{
  [(MailAccount *)self rootMailbox];

  [(IMAPAccount *)self mf_lock];
  v3 = [(NSMutableDictionary *)self->_pushRegisteredMailboxes copy];
  [(IMAPAccount *)self mf_unlock];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__IMAPAccount_mailboxesRegisteredForPushByHash__block_invoke;
  v9[3] = &unk_1E7AA2848;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __47__IMAPAccount_mailboxesRegisteredForPushByHash__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 mf_encodedIMAPMailboxName];
  v9 = [v7 mailboxUidForName:v8];

  v10 = [v9 redactedName:v6];
  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKey:v5];
  }

  else
  {
    v11 = +[IMAPAccount log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "#aps-push warning, can't find mailbox with name '%{public}@' (%{public}@)", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updatePushRegisteredMailboxes:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v24 = self;
  [(IMAPAccount *)self mf_lock];
  pushRegisteredMailboxes = self->_pushRegisteredMailboxes;
  if (pushRegisteredMailboxes)
  {
    [(NSMutableDictionary *)pushRegisteredMailboxes removeAllObjects];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v21, "count")}];
    v6 = self->_pushRegisteredMailboxes;
    self->_pushRegisteredMailboxes = v5;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v21;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v23 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 mf_decodedIMAPMailboxName];
        v12 = [v11 copy];

        v13 = [v12 dataUsingEncoding:4 allowLossyConversion:0];
        v14 = [v13 ef_md5Digest];
        v15 = [v14 ef_hexString];
        if (v15)
        {
          [(NSMutableDictionary *)v24->_pushRegisteredMailboxes setObject:v12 forKey:v15];
        }

        else
        {
          v16 = [v12 mf_encodedIMAPMailboxName];
          v17 = [(IMAPAccount *)v24 mailboxUidForName:v16];

          v18 = [v17 redactedName:v12];
          v19 = +[IMAPAccount log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v30 = v18;
            _os_log_error_impl(&dword_1B0389000, v19, OS_LOG_TYPE_ERROR, "#aps-push failed to generate hash for mailbox named '%{public}@'", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  [(MailAccount *)v24 _incrementCacheDirtyCount];
  [(IMAPAccount *)v24 mf_unlock];

  v20 = *MEMORY[0x1E69E9840];
}

- (id)apsTopic
{
  [(MailAccount *)self rootMailbox];

  [(IMAPAccount *)self mf_lock];
  v3 = self->_apsTopic;
  [(IMAPAccount *)self mf_unlock];

  return v3;
}

- (void)setAPSTopic:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[IMAPAccount log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MFAccount *)self identifier];
    v15 = 138412546;
    v16 = v5;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "#aps-push Setting aps-topic '%@' for account %{public}@", &v15, 0x16u);
  }

  v8 = [(MailAccount *)self uniqueIdForPersistentConnection];
  Style = PCSettingsGetStyle();
  [(IMAPAccount *)self mf_lock];
  apsTopic = self->_apsTopic;
  if (apsTopic != v5)
  {
    v11 = apsTopic;
    objc_storeStrong(&self->_apsTopic, a3);
    [(MailAccount *)self _incrementCacheDirtyCount];
    v12 = +[MFAPSManager sharedManager];
    v13 = v12;
    if (v5 || !v11)
    {
      if (!v5 || v11)
      {
        if (![(NSString *)v5 isEqualToString:v11])
        {
          [v13 swapTopic:v11 forNewTopic:v5];
        }
      }

      else if ((*(self + 397) & 4) != 0 && !Style)
      {
        [v12 startWatchingForTopic:v5];
      }
    }

    else
    {
      [v12 stopWatchingForTopic:v11];
    }
  }

  [(IMAPAccount *)self mf_unlock];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_schedulePushRegistrationConnection
{
  v13 = *MEMORY[0x1E69E9840];
  [(IMAPAccount *)self mf_lock];
  if ((*(self + 397) & 2) == 0)
  {
    v3 = +[IMAPAccount log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = objc_opt_class();
      v11 = 2048;
      v12 = self;
      v4 = v10;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "#aps-push account <%@:%p> scheduling push registration connection", buf, 0x16u);
    }

    *(self + 397) |= 2u;
    v5 = dispatch_time(0, 2000000000);
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__IMAPAccount__schedulePushRegistrationConnection__block_invoke;
    block[3] = &unk_1E7AA25C0;
    block[4] = self;
    dispatch_after(v5, v6, block);
  }

  [(IMAPAccount *)self mf_unlock];
  v7 = *MEMORY[0x1E69E9840];
}

void __50__IMAPAccount__schedulePushRegistrationConnection__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[397];
  v4 = [v2 mustRegisterForPushOnNextConnection];
  v5 = v4;
  if ((v3 & 4) != 0 && v4)
  {
    v6 = [*(a1 + 32) taskManager];

    v7 = v6 == 0;
    v8 = +[IMAPAccount log];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v15 = [*(a1 + 32) identifier];
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ forcing push registration connection", &v17, 0xCu);
      }

      v8 = [*(a1 + 32) authenticatedConnection];
      [v8 logout];
    }

    else if (v9)
    {
      v10 = [*(a1 + 32) identifier];
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ IMAPv4 not forcing push registration connection", &v17, 0xCu);
    }
  }

  else
  {
    v8 = +[IMAPAccount log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) identifier];
      v12 = v11;
      v13 = "NO";
      if ((v3 & 4) != 0)
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      v17 = 138543874;
      v18 = v11;
      v19 = 2080;
      v20 = v14;
      if (v5)
      {
        v13 = "YES";
      }

      v21 = 2080;
      v22 = v13;
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ will NOT force push registration connection, didRequestPushRegistration: %s, mustRegisterOnNextConnection: %s", &v17, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldRegisterForPush
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(IMAPAccount *)self _hasCachedSeparatorChar])
  {
    [(MailAccount *)self uniqueIdForPersistentConnection];
    Style = PCSettingsGetStyle();
    if (Style)
    {
      v4 = Style;
      v5 = MFLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(MFAccount *)self identifier];
        v23 = 67109378;
        *v24 = v4;
        *&v24[4] = 2114;
        *&v24[6] = v6;
        _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "#aps-push MCC push settings are not set to push (%d != PCStylePush) for account %{public}@", &v23, 0x12u);
      }
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x1E695DFA8]);
      v9 = [(IMAPAccount *)self pushedMailboxUids];
      v5 = [v8 initWithSet:v9];

      v10 = [(IMAPAccount *)self _externalMailboxUids];
      [v5 unionSet:v10];

      if ([v5 count])
      {
        Current = CFAbsoluteTimeGetCurrent();
        [(IMAPAccount *)self lastPushRegistration];
        v13 = v12;
        v14 = [(IMAPAccount *)self mustRegisterForPushOnNextConnection];
        v15 = Current - v13;
        v16 = v15 >= 82800.0 || v14;
        if (v16)
        {
          v7 = 1;
LABEL_19:

          goto LABEL_20;
        }

        v19 = +[IMAPAccount log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(MFAccount *)self identifier];
          v23 = 138543618;
          *v24 = v20;
          *&v24[8] = 2048;
          *&v24[10] = v15;
          _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ last registered for push %.3f seconds ago", &v23, 0x16u);
        }
      }

      else
      {
        v17 = +[IMAPAccount log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(MFAccount *)self identifier];
          v23 = 138543362;
          *v24 = v18;
          _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ has no pushed mailboxes, skipping", &v23, 0xCu);
        }

        [(IMAPAccount *)self setMustRegisterForPushOnNextConnection:0];
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = 0;
LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)serverRegisteredMailboxes:(id)a3 withTopic:(id)a4 version:(int64_t)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[IMAPAccount log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 1024;
    v19 = a5;
    _os_log_debug_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEBUG, "#aps-push {mailboxes=%@, topic=%@, version=%d}", &v14, 0x1Cu);
  }

  v11 = [(IMAPAccount *)self supportedPushServiceLevel];
  [(IMAPAccount *)self updatePushRegisteredMailboxes:v8];
  [(IMAPAccount *)self setSupportedPushServiceLevel:a5];
  [(IMAPAccount *)self setAPSTopic:v9];
  if (a5 >= 1)
  {
    [(IMAPAccount *)self setLastPushRegistration:CFAbsoluteTimeGetCurrent()];
  }

  if (v11 != a5 && (*(self + 397) & 4) != 0)
  {
    if (a5 >= 1 && v11 < 0)
    {
      [(IMAPAccount *)self startListeningForNotifications];
    }

    else if (a5 <= 0)
    {
      v12 = +[MFAPSManager sharedManager];
      [v12 stopWatchingForTopic:v9];
    }
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_notificationNameForMailbox:(id)a3 withPrefix:(id)a4
{
  v6 = a4;
  v7 = [(IMAPAccount *)self _nameForMailboxUid:a3];
  v8 = [(MFAccount *)self uniqueID];
  v9 = [v6 stringByAppendingFormat:@".%@.%@", v8, v7];

  return v9;
}

- (BOOL)_registerPushNotificationPrefix:(id)a3 forMailboxNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(IMAPAccount *)self mf_lock];
  v8 = [(MFAccount *)self accountPropertyForKey:@"NotesPushedMailboxes"];
  v9 = [(MFAccount *)self accountPropertyForKey:@"NotesNotificationPrefix"];
  v10 = v9;
  if (v6 && ([v9 isEqualToString:v6] & 1) == 0)
  {
    [(MFAccount *)self setAccountProperty:v6 forKey:@"NotesNotificationPrefix"];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(MFAccount *)self accountPropertyForKey:@"NotesPushedMailboxes"];
  v13 = [v12 mutableCopy];

  v14 = [v7 mutableCopy];
  [v13 sortUsingSelector:sel_localizedCompare_];
  [v14 sortUsingSelector:sel_localizedCompare_];
  if (!(v13 | v14) || v14 && ([v13 isEqual:v14] & 1) == 0)
  {
    [(MFAccount *)self setAccountProperty:v7 forKey:@"NotesPushedMailboxes"];
    v11 = 1;
  }

  [(IMAPAccount *)self mf_unlock];
  [(IMAPAccount *)self setIsOffline:0];
  [(IMAPAccount *)self startListeningForNotifications];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isEqualToArray:v8])
    {
      goto LABEL_14;
    }
  }

  v21 = v6;
  v15 = v10;
  v16 = [(IMAPAccount *)self _copyMailboxListForNames:v7];
  v17 = [v16 count];
  v18 = [v7 count];

  v19 = v17 == v18;
  v10 = v15;
  v6 = v21;
  if (v19)
  {
LABEL_14:
    [(IMAPAccount *)self _schedulePushRegistrationConnection];
  }

  else
  {
    [(IMAPAccount *)self resetMailboxTimer];
    [(IMAPAccount *)self fetchMailboxListImplicit];
  }

  if (v11)
  {
    [(MFAccount *)self savePersistentAccount];
  }

  return 1;
}

- (id)_copyMailboxListForNames:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(IMAPAccount *)self mailboxUidForName:*(*(&v13 + 1) + 8 * v9), v13];
          if (v10)
          {
            [v5 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_copyMailboxListPreferenceForKey:(id)a3
{
  v4 = [(MFAccount *)self _objectForAccountInfoKey:a3];
  v5 = [(IMAPAccount *)self _copyMailboxListForNames:v4];

  return v5;
}

- (void)_updatePushedMailboxesAndNotify:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  if ([(MFAccount *)self isEnabledForDataclass:*MEMORY[0x1E6959B28]])
  {
    if ([(IMAPAccount *)self supportsUserPushedMailboxes])
    {
      v6 = [(IMAPAccount *)self _copyUserPushedMailboxes];
      if (v6)
      {
        [v5 unionSet:v6];
      }
    }

    v7 = [(MailAccount *)self primaryMailboxUid];
    if (v7)
    {
      [v5 addObject:v7];
    }

    else
    {
      v8 = +[IMAPAccount log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [IMAPAccount _updatePushedMailboxesAndNotify:v8];
      }
    }

    v9 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
    if (v9)
    {
      [v5 addObject:v9];
    }

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [v10 BOOLForKey:@"RelatedMessagesShouldIncludeDrafts"];

    if (v11)
    {
      v12 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
      if (v12)
      {
        [v5 addObject:v12];
      }
    }
  }

  [(IMAPAccount *)self mf_lock];
  objc_storeStrong(&self->_pushedMailboxUids, v5);
  [(IMAPAccount *)self mf_unlock];
  if (v3)
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"MFMailAccountPushedMailboxUidsDidChange" object:self userInfo:0];
  }
}

- (id)pushedMailboxUids
{
  if (!self->_pushedMailboxUids)
  {
    [(IMAPAccount *)self _updatePushedMailboxesAndNotify:0];
  }

  [(IMAPAccount *)self mf_lock];
  v3 = self->_pushedMailboxUids;
  [(IMAPAccount *)self mf_unlock];

  return v3;
}

- (void)changePushedMailboxUidsAdded:(id)a3 deleted:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v24 = a4;
  if ([(IMAPAccount *)self supportsUserPushedMailboxes])
  {
    v6 = MEMORY[0x1E695DFA8];
    v7 = [(IMAPAccount *)self pushedMailboxUids];
    v8 = [v6 setWithSet:v7];

    if (v25)
    {
      v9 = [v25 allObjects];
      [v8 addObjectsFromArray:v9];
    }

    v10 = v24;
    if (v24)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = v24;
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v12)
      {
        v13 = *v32;
        do
        {
          v14 = 0;
          do
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [v8 removeObject:*(*(&v31 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v12);
      }

      v10 = v24;
    }

    if (v25 | v10)
    {
      v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = v8;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v16)
      {
        v17 = *v28;
        do
        {
          v18 = 0;
          do
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = [(IMAPAccount *)self _nameForMailboxUid:*(*(&v27 + 1) + 8 * v18)];
            v20 = v19;
            if (v19)
            {
              v21 = v19;
              v22 = [v21 caseInsensitiveCompare:@"INBOX"] == 0;

              if (!v22)
              {
                [v26 addObject:v21];
              }
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v16);
      }

      [(IMAPAccount *)self mf_lock];
      [(MailAccount *)self setValueInAccountProperties:v26 forKey:@"PushedMailboxes"];
      [(IMAPAccount *)self mf_unlock];
      [(MFAccount *)self savePersistentAccount];
      [(IMAPAccount *)self _updatePushedMailboxesAndNotify:1];
      [(IMAPAccount *)self _schedulePushRegistrationConnection];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_externalMailboxUids
{
  if ([(MFAccount *)self isSyncingNotes])
  {
    v3 = [(IMAPAccount *)self _notesPrefix];
    v4 = [(IMAPAccount *)self _copyPushedMailboxesForPrefix:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] set];
  }

  return v4;
}

- (NSArray)mailboxesForPushRegistration
{
  [(IMAPAccount *)self setMustRegisterForPushOnNextConnection:0];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(IMAPAccount *)self pushedMailboxUids];
  v5 = [v4 allObjects];
  v6 = [v3 initWithArray:v5];

  v7 = [(IMAPAccount *)self _externalMailboxUids];
  v8 = [v7 allObjects];
  [v6 addObjectsFromArray:v8];

  return v6;
}

- (NSSet)mailboxNamesForPushRegistration
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(IMAPAccount *)self mailboxesForPushRegistration];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(IMAPAccount *)self nameForMailboxUid:v10, v17];
        if (v11)
        {
          [v4 addObject:v11];
        }

        else
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v12 = +[IMAPAccount log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v15 = [(IMAPAccount *)self separatorChar];
      v16 = [(IMAPAccount *)self serverPathPrefix];
      *buf = 138413058;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      _os_log_fault_impl(&dword_1B0389000, v12, OS_LOG_TYPE_FAULT, "#aps-push could not create mailbox names for: %@, pushed mailboxes: %{public}@ (sep: %{public}@ prefix: %@)", buf, 0x2Au);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_mailboxListingChanged
{
  [(IMAPAccount *)self _updatePushedMailboxesAndNotify:1];

  [(IMAPAccount *)self _schedulePushRegistrationConnection];
}

- (void)handlePushNotificationOnMailboxes:(id)a3 missedNotifications:(BOOL)a4
{
  v4 = a4;
  v68 = *MEMORY[0x1E69E9840];
  obj = a3;
  if (obj)
  {
    v46 = [(IMAPAccount *)self mailboxesRegisteredForPushByHash];
    if (v4)
    {
      v6 = [v46 allKeys];
    }

    else
    {
      v6 = obj;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obja = v6;
    v7 = [obja countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v7)
    {
      v8 = *v56;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v56 != v8)
          {
            objc_enumerationMutation(obja);
          }

          v10 = [*(*(&v55 + 1) + 8 * i) uppercaseString];
          v11 = [v46 objectForKey:v10];

          if (v11)
          {
            LODWORD(v7) = 1;
            goto LABEL_16;
          }
        }

        v7 = [obja countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LODWORD(v7) = [(MFAccount *)self isEnabledForDataclass:*MEMORY[0x1E6959B28]];
    v46 = 0;
    obja = 0;
  }

  v12 = +[IMAPAccount log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(MFAccount *)self identifier];
    *buf = 138543618;
    v63 = v13;
    v64 = 1024;
    LODWORD(v65) = v7;
    _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "#aps-push Received notification for account %{public}@, will push: %{BOOL}d", buf, 0x12u);
  }

  if (v7)
  {
    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (obja)
    {
      v14 = [(IMAPAccount *)self pushedMailboxUids];
      v15 = [(IMAPAccount *)self _externalMailboxUids];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v16 = obja;
      v17 = [v16 countByEnumeratingWithState:&v51 objects:v66 count:16];
      if (!v17)
      {
        goto LABEL_41;
      }

      v19 = *v52;
      *&v18 = 138412546;
      v41 = v18;
      while (1)
      {
        v20 = 0;
        do
        {
          if (*v52 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v51 + 1) + 8 * v20);
          v22 = [v21 uppercaseString];
          v23 = [v46 objectForKey:v22];

          if (!v23)
          {
            v26 = +[IMAPAccount log];
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
LABEL_35:

              goto LABEL_36;
            }

            *buf = v41;
            v63 = self;
            v64 = 2112;
            v65 = v21;
            v27 = v26;
            v28 = "#aps-push warning, %@ got a notification for mailbox with hash '%@', but can't find that mailbox.";
LABEL_39:
            _os_log_error_impl(&dword_1B0389000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x16u);
            goto LABEL_35;
          }

          v24 = [v14 containsObject:v23];
          v25 = v24;
          if (v24)
          {
            [v45 addObject:v23];
          }

          if ([v15 containsObject:v23])
          {
            [v44 addObject:v23];
            goto LABEL_36;
          }

          if ((v25 & 1) == 0)
          {
            v26 = +[IMAPAccount log];
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }

            *buf = v41;
            v63 = self;
            v64 = 2112;
            v65 = v23;
            v27 = v26;
            v28 = "#aps-push warning, %@ got a notification for mailbox %@, but we're not enabled for the appropriate dataclass";
            goto LABEL_39;
          }

LABEL_36:

          ++v20;
        }

        while (v17 != v20);
        v29 = [v16 countByEnumeratingWithState:&v51 objects:v66 count:16];
        v17 = v29;
        if (!v29)
        {
LABEL_41:

          goto LABEL_43;
        }
      }
    }

    v14 = [(MailAccount *)self primaryMailboxUid];
    [v45 addObject:v14];
LABEL_43:

    if ([v45 count])
    {
      v60 = @"MailAccountContentsDidChangeUids";
      v61 = v45;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v31 = [MEMORY[0x1E696AD88] defaultCenter];
      [v31 postNotificationName:@"MailAccountContentsDidChange" object:self userInfo:v30];
    }

    if ([v44 count])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = v44;
      v34 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v34)
      {
        v35 = *v48;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v48 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v47 + 1) + 8 * j);
            v38 = [(IMAPAccount *)self _notesPrefix];
            v39 = [(IMAPAccount *)self _notificationNameForMailbox:v37 withPrefix:v38];

            CFNotificationCenterPostNotification(DarwinNotifyCenter, v39, 0, 0, 1u);
          }

          v34 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v34);
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_apsDeviceTokenChanged:(id)a3
{
  if ([(IMAPAccount *)self canReceiveNewMailNotifications])
  {
    [(IMAPAccount *)self releaseAllConnections];
  }

  if ([(MailAccount *)self isActive]&& (*(self + 397) & 4) != 0)
  {

    [(IMAPAccount *)self _schedulePushRegistrationConnection];
  }
}

- (void)_registerForDeviceTokenChanges
{
  if ((*(self + 397) & 8) == 0)
  {
    *(self + 397) |= 8u;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__apsDeviceTokenChanged_ name:@"MFAPSManagerDeviceTokenChangedNote" object:0];

    v4 = +[MFAPSManager sharedManager];
    [v4 connect];
  }
}

- (void)_unregisterForDeviceTokenChanges
{
  if ((*(self + 397) & 8) != 0)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:@"MFAPSManagerDeviceTokenChangedNote" object:0];

    *(self + 397) &= ~8u;
  }
}

- (void)startListeningForNotifications
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MFUserAgent();
  v4 = [v3 canRegisterForAPSPush];

  if (v4)
  {
    v5 = +[MFPowerController sharedInstance];
    v6 = [v5 isBatterySaverModeEnabled];

    if (v6)
    {
      v7 = +[IMAPAccount log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(MFAccount *)self identifier];
        v22 = 138543362;
        v23 = v8;
        _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ will NOT start listening for notifications, battery-saver mode is ON", &v22, 0xCu);
      }
    }

    else
    {
      v11 = +[MFPowerController sharedInstance];
      v12 = [v11 gameModeEnabled];

      v7 = +[IMAPAccount log];
      v13 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v13)
        {
          v14 = [(MFAccount *)self identifier];
          v22 = 138543362;
          v23 = v14;
          _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ will NOT start listening for notifications, Game Mode is ON", &v22, 0xCu);
        }
      }

      else
      {
        if (v13)
        {
          v15 = [(MFAccount *)self identifier];
          v22 = 138543362;
          v23 = v15;
          _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ told to start listening for notifications", &v22, 0xCu);
        }

        *(self + 397) |= 4u;
        [(MailAccount *)self uniqueIdForPersistentConnection];
        Style = PCSettingsGetStyle();
        v17 = [(IMAPAccount *)self canAttemptPushRegistration];
        v18 = v17;
        if (Style)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          [(IMAPAccount *)self _updatePushedMailboxesAndNotify:1];
          [(IMAPAccount *)self _registerForDeviceTokenChanges];
          v7 = [(IMAPAccount *)self apsTopic];
          if (v7)
          {
            v20 = +[MFAPSManager sharedManager];
            [v20 startWatchingForTopic:v7];
          }

          [(IMAPAccount *)self _schedulePushRegistrationConnection];
        }

        else
        {
          v7 = +[IMAPAccount log];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [(MFAccount *)self identifier];
            v22 = 138543874;
            v23 = v21;
            v24 = 1024;
            v25 = v18;
            v26 = 1024;
            v27 = Style == 0;
            _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ did NOT register for push, can register for push: %{BOOL}d, PCConnectionStyle is push: %{BOOL}d", &v22, 0x18u);
          }
        }
      }
    }
  }

  else
  {
    v7 = +[IMAPAccount log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MFAccount *)self identifier];
      v22 = 138543362;
      v23 = v9;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ will NOT start listening for notifications, canRegisterForAPSPush returned NO", &v22, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopListeningForNotifications
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = +[IMAPAccount log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MFAccount *)self identifier];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ told to stop listening for notifications", &v8, 0xCu);
  }

  *(self + 397) &= ~4u;
  v5 = +[MFAPSManager sharedManager];
  v6 = [(IMAPAccount *)self apsTopic];
  [v5 stopWatchingForTopic:v6];

  [(IMAPAccount *)self _unregisterForDeviceTokenChanges];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)transferNotificationSessionToAccount:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    [(IMAPAccount *)self stopListeningForNotifications];
    [(IMAPAccount *)v4 startListeningForNotifications];
  }
}

- (id)copyDiagnosticInformation
{
  v12.receiver = self;
  v12.super_class = IMAPAccount;
  v3 = [(MFAccount *)&v12 copyDiagnosticInformation];
  v4 = [v3 mutableCopy];

  v5 = [(IMAPAccount *)self mailboxesRegisteredForPushByHash];
  v6 = [v5 descriptionWithLocale:0 indent:1];

  [(IMAPAccount *)self mf_lock];
  [v4 appendFormat:@"    topic: %@\n", self->_apsTopic];
  v7 = [(NSArray *)self->_lastKnownCapabilities componentsJoinedByString:@" "];
  [v4 appendFormat:@"    known capabilities: %@\n", v7];

  v8 = self->_supportedPushServiceLevel + 2;
  if (v8 >= 6)
  {
    __assert_rtn("_pushServiceLevelName", "IMAPAccount.m", 3293, "0 && unknown push service level");
  }

  [v4 appendFormat:@"    negotiated push service level: %@\n", *(&off_1E7AA28E0 + v8)];
  lastPushRegistration = self->_lastPushRegistration;
  if (lastPushRegistration == 0.0)
  {
    v10 = @"<never>";
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_lastPushRegistration];
  }

  [v4 appendFormat:@"    last push registration time: %@\n", v10];
  if (lastPushRegistration != 0.0)
  {
  }

  if (self->_supportedPushServiceLevel >= 2)
  {
    [v4 appendFormat:@"    mailboxes registered for push: %@\n", v6];
  }

  [(IMAPAccount *)self mf_unlock];

  return v4;
}

- (id)messageActionsAfterActionID:(int64_t)a3
{
  v5 = [(MailAccount *)self library];
  v6 = [v5 persistence];
  v7 = [v6 localActionPersistence];
  v8 = [(MailAccount *)self URLString];
  v9 = [v7 messageActionsForAccountURL:v8 previousActionID:a3];

  return v9;
}

- (NSDate)credentialExpiryDate
{
  v2 = [(MFAccount *)self baseAccount];
  v3 = [v2 credential];
  v4 = [v3 expiryDate];

  return v4;
}

- (BOOL)moveSupported
{
  v2 = [(IMAPAccount *)self lastKnownCapabilities];
  v3 = [v2 containsObject:@"MOVE"];

  return v3;
}

- (id)replayAction:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 mailboxURL];
  v7 = [v6 absoluteString];
  v8 = [MailAccount mailboxUidFromActiveAccountsForURL:v7];

  v9 = [(MailAccount *)self storeForMailboxUid:v8];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 ef_publicDescription];
      v14 = [v10 stringWithFormat:@"Got store of class %@ for mailbox %@", v12, v13];

      qword_1EB6E7CF0 = [v14 UTF8String];
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"IMAPAccount.m" lineNumber:3338 description:@"Got wrong type of store for mailboxURL"];
    }

    v16 = [v9 replayAction:v5];
  }

  else
  {
    if (v8)
    {
      v17 = +[IMAPAccount log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v8 ef_publicDescription];
        *buf = 138412290;
        v22 = v18;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Couldn't get store from mailbox %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = +[IMAPAccount log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Couldn't get mailbox from URL", buf, 2u);
      }
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)supportsAppleRemoteLinks
{
  v2 = [(IMAPAccount *)self lastKnownCapabilities];
  v3 = [v2 containsObject:@"X-APPLE-REMOTE-LINKS"];

  return v3;
}

+ (id)imapMailboxURLForAccountID:(id)a3 pathComponents:(id)a4
{
  v27 = a1;
  v31 = a3;
  v30 = a4;
  swift_getObjCClassMetadata();
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v31);
  v29 = &v8 - v28;
  MEMORY[0x1E69E5928](v4);
  MEMORY[0x1E69E5928](v30);
  if (v31)
  {
    v26 = v31;
    v21 = v31;
    v22 = sub_1B0E44AD8();
    v23 = v5;
    MEMORY[0x1E69E5920](v21);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v19 = v25;
  v20 = v24;
  if (v30)
  {
    v18 = v30;
    v15 = v30;
    v16 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v15);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v11 = v17;
  swift_getObjCClassMetadata();
  sub_1B0750048(v20, v19, v11, v29);

  v12 = sub_1B0E42E68();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  if ((*(v13 + 48))(v29, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_1B0E42D58();
    (*(v13 + 8))(v29, v12);
    v10 = v9;
  }

  v6 = v10;

  return v6;
}

+ (void)getAccountID:(id *)a3 pathComponents:(id *)a4 fromIMAPMailboxURL:(id)a5
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v19 = a5;
  swift_getObjCClassMetadata();
  v12 = sub_1B0E42E68();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v6 - v15;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v19);
  v18 = &v6 - v17;
  MEMORY[0x1E69E5928](v5);
  if (v19)
  {
    v8 = v19;
    v7 = v19;
    sub_1B0E42DE8();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  swift_getObjCClassMetadata();
  sub_1B07508A4(v10, v11, v18);
  sub_1B06E3800(v18);
}

- (void)taskManager
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1B0389000, log, OS_LOG_TYPE_FAULT, "Unable to use MFSwiftIMAPTaskManager for account %{public}@ on %{public}@", buf, 0x16u);
}

- (void)renameMailbox:(uint64_t)a1 newName:(NSObject *)a2 parent:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Failed to get connection for mailbox rename %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)renameMailbox:(uint64_t)a1 newName:(NSObject *)a2 parent:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Offline renaming is not supported for mailbox %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end