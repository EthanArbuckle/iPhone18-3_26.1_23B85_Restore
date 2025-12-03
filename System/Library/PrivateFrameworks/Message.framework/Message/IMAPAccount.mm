@interface IMAPAccount
+ (OS_os_log)log;
+ (id)imapMailboxURLForAccountID:(id)d pathComponents:(id)components;
+ (void)_deleteQueuedMailboxes:(id)mailboxes;
+ (void)getAccountID:(id *)d pathComponents:(id *)components fromIMAPMailboxURL:(id)l;
- (BOOL)_hasCachedSeparatorChar;
- (BOOL)_readCustomInfoFromMailboxCache:(id)cache;
- (BOOL)_registerPushNotificationPrefix:(id)prefix forMailboxNames:(id)names;
- (BOOL)_repairMailboxCache;
- (BOOL)_useNewIMAPStack;
- (BOOL)_writeCustomInfoToMailboxCache:(id)cache;
- (BOOL)canFetch;
- (BOOL)canMailboxBeDeleted:(id)deleted;
- (BOOL)connectAndAuthenticate:(id)authenticate;
- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id)command;
- (BOOL)getMailboxListWithConnection:(id)connection statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox;
- (BOOL)isMailboxLocalForType:(int64_t)type;
- (BOOL)isSpecialMailbox:(id)mailbox;
- (BOOL)moveSupported;
- (BOOL)mustRegisterForPushOnNextConnection;
- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (BOOL)shouldRegisterForPush;
- (BOOL)storeMailboxTypeOnServer:(int64_t)server;
- (BOOL)supportsAppleRemoteLinks;
- (BOOL)verifyESearchSupportWithBlock:(id)block;
- (IMAPAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (NSArray)mailboxesForPushRegistration;
- (NSDate)credentialExpiryDate;
- (NSSet)mailboxNamesForPushRegistration;
- (double)lastPushRegistration;
- (id)_copyMailboxListForNames:(id)names;
- (id)_copyMailboxListPreferenceForKey:(id)key;
- (id)_copyMailboxUidWithParent:(id)parent name:(id)name attributes:(unint64_t)attributes existingMailboxUid:(id)uid dictionary:(id)dictionary;
- (id)_externalMailboxUids;
- (id)_fetchAndSetSeparatorChar;
- (id)_fileSystemServerPathPrefix;
- (id)_infoForMatchingURL:(id)l;
- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children onlySubscribed:(BOOL)subscribed statusDataItems:(id)items withConnection:(id)connection statusEntriesByMailbox:(id *)mailbox;
- (id)_mailboxPathPrefix;
- (id)_nameForMailboxUid:(id)uid;
- (id)_newMailboxWithParent:(id)parent name:(id)name attributes:(unsigned int)attributes dictionary:(id)dictionary withCreationOption:(int64_t)option;
- (id)_notificationNameForMailbox:(id)mailbox withPrefix:(id)prefix;
- (id)_pathComponentForUidName:(id)name;
- (id)_specialMailboxUidWithType:(int64_t)type create:(BOOL)create;
- (id)_uidNameForPathComponent:(id)component;
- (id)allMailMailboxUid;
- (id)apsTopic;
- (id)connectionForMailbox:(id)mailbox delegate:(id)delegate options:(unint64_t)options failedToSelectMailbox:(BOOL *)selectMailbox;
- (id)copyDiagnosticInformation;
- (id)errorForResponse:(id)response;
- (id)fetchLimits;
- (id)lastKnownCapabilities;
- (id)mailboxUidForName:(id)name;
- (id)mailboxesRegisteredForPushByHash;
- (id)messageActionsAfterActionID:(int64_t)d;
- (id)nameForMailboxUid:(id)uid;
- (id)pushedMailboxUids;
- (id)replayAction:(id)action;
- (id)separatorChar;
- (id)serverNamespace;
- (id)serverPathPrefix;
- (id)serverPathPrefixAccountValue;
- (id)specialUseAttributeForType:(int64_t)type;
- (id)specialUseAttributesForMailbox:(id)mailbox;
- (id)statisticsKind;
- (id)taskManager;
- (int64_t)supportedPushServiceLevel;
- (unsigned)readBufferSize;
- (void)_apsDeviceTokenChanged:(id)changed;
- (void)_mailboxListingChanged;
- (void)_mailboxesWereRemovedFromTree:(id)tree withFileSystemPaths:(id)paths;
- (void)_registerForDeviceTokenChanges;
- (void)_releaseAllConnectionsAndCallSuper:(BOOL)super synchronously:(BOOL)synchronously edgeForcedOnly:(BOOL)only saveOfflineCache:(BOOL)cache;
- (void)_renameLocalSpecialMailboxesToName:(id)name;
- (void)_replayMailboxActionsWithConnection:(id)connection;
- (void)_schedulePushRegistrationConnection;
- (void)_setCapabilities:(id)capabilities;
- (void)_setSpecialMailbox:(id)mailbox forType:(int64_t)type;
- (void)_synchronouslyLoadListingForParent:(id)parent;
- (void)_unregisterForDeviceTokenChanges;
- (void)_updatePushedMailboxesAndNotify:(BOOL)notify;
- (void)_updateSeparatorAndNamespaceWithConnection:(id)connection;
- (void)_waitForMailboxListingLoadToComplete;
- (void)acquireNetworkAssertion;
- (void)changePushedMailboxUidsAdded:(id)added deleted:(id)deleted;
- (void)checkInConnection:(id)connection destroy:(BOOL)destroy;
- (void)checkInConnectionsForStore:(id)store;
- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id)command;
- (void)dealloc;
- (void)fetchMailboxListExplicit;
- (void)fetchMailboxListImplicit;
- (void)filterMailboxList:(id)list forMailbox:(id)mailbox options:(int64_t)options;
- (void)handleAlertResponse:(id)response;
- (void)handlePushNotificationOnMailboxes:(id)mailboxes missedNotifications:(BOOL)notifications;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)releaseNetworkAssertion;
- (void)serverRegisteredMailboxes:(id)mailboxes withTopic:(id)topic version:(int64_t)version;
- (void)setAPSTopic:(id)topic;
- (void)setAllowsPartialDownloads:(BOOL)downloads;
- (void)setDisplayName:(id)name;
- (void)setIsOffline:(BOOL)offline;
- (void)setLastPushRegistration:(double)registration;
- (void)setMustRegisterForPushOnNextConnection:(BOOL)connection;
- (void)setSeparatorChar:(id)char serverNamespace:(id)namespace;
- (void)setServerNamespace:(id)namespace;
- (void)setServerPathPrefix:(id)prefix;
- (void)setSupportedPushServiceLevel:(int64_t)level;
- (void)startListeningForNotifications;
- (void)stopListeningForNotifications;
- (void)systemWillSleep;
- (void)taskManager;
- (void)test_setTaskManager:(id)manager;
- (void)test_tearDown;
- (void)throttledGetMailboxListWithConnection:(id)connection;
- (void)transferNotificationSessionToAccount:(id)account;
- (void)unselectMailbox:(id)mailbox;
- (void)updatePushRegisteredMailboxes:(id)mailboxes;
@end

@implementation IMAPAccount

- (id)statisticsKind
{
  iconString = [(MailAccount *)self iconString];
  if ([@"163AccountIcon" isEqualToString:iconString] & 1) != 0 || (objc_msgSend(@"126AccountIcon", "isEqualToString:", iconString))
  {
    v3 = MEMORY[0x1E69ADC00];
  }

  else
  {
    v4 = [@"qqAccountIcon" isEqualToString:iconString];
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
  serverPathPrefix = [(IMAPAccount *)self serverPathPrefix];
  separatorChar = [(IMAPAccount *)self separatorChar];
  v5 = separatorChar;
  v6 = 0;
  if (serverPathPrefix && separatorChar)
  {
    v8 = [serverPathPrefix rangeOfString:separatorChar options:8];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([serverPathPrefix length] <= (v8 + v7))
      {
        v6 = 0;
        goto LABEL_11;
      }

      v9 = [serverPathPrefix substringFromIndex:?];

      serverPathPrefix = v9;
    }

    v10 = [serverPathPrefix componentsSeparatedByString:v5];
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
  _fetchAndSetSeparatorChar = self->_separatorChar;
  [(IMAPAccount *)self mf_unlock];
  if (!_fetchAndSetSeparatorChar)
  {
    [(MailAccount *)self rootMailbox];

    [(IMAPAccount *)self mf_lock];
    _fetchAndSetSeparatorChar = self->_separatorChar;
    [(IMAPAccount *)self mf_unlock];
    if (!_fetchAndSetSeparatorChar)
    {
      _fetchAndSetSeparatorChar = [(IMAPAccount *)self _fetchAndSetSeparatorChar];
    }
  }

  return _fetchAndSetSeparatorChar;
}

- (id)serverPathPrefix
{
  serverPathPrefixAccountValue = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if (!serverPathPrefixAccountValue)
  {
    serverPathPrefixAccountValue = self->_serverNamespace;
  }

  return serverPathPrefixAccountValue;
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
  _fileSystemServerPathPrefix = [(IMAPAccount *)self _fileSystemServerPathPrefix];
  v3 = _fileSystemServerPathPrefix;
  if (_fileSystemServerPathPrefix)
  {
    v4 = _fileSystemServerPathPrefix;
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
  hostname = [(MFAccount *)self hostname];
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
            identifier = [(MFAccount *)self identifier];
            [(IMAPAccount *)identifier taskManager:hostname];
          }

          abort();
        }

        v7 = +[IMAPAccount log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [(MFAccount *)self identifier];
          *buf = 138543618;
          v17 = identifier2;
          v18 = 2114;
          v19 = hostname;
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
  block[4] = self;
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

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [standardUserDefaults BOOLForKey:@"MailIMAPNewStack"];

  return v2;
}

void __26__IMAPAccount_taskManager__block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    MFPersistenceAdaptorPowerLogDidCreateInstance(0);
  }
}

- (IMAPAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  libraryCopy = library;
  accountCopy = account;
  v18.receiver = self;
  v18.super_class = IMAPAccount;
  v8 = [(MailAccount *)&v18 initWithLibrary:libraryCopy persistentAccount:accountCopy];
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

- (BOOL)_readCustomInfoFromMailboxCache:(id)cache
{
  cacheCopy = cache;
  v5 = [cacheCopy objectForKey:@"separator"];
  v6 = [cacheCopy objectForKey:@"namespace"];
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
    v11 = [cacheCopy objectForKeyedSubscript:@"capabilities"];
    lastKnownCapabilities = self->_lastKnownCapabilities;
    self->_lastKnownCapabilities = v11;
  }

  if (self->_supportedPushServiceLevel == -2)
  {
    v13 = [cacheCopy objectForKeyedSubscript:@"push-service-level"];
    if (objc_opt_respondsToSelector())
    {
      intValue = [v13 intValue];
      if (intValue >= -1 && [(IMAPAccount *)self apsVersion]>= intValue)
      {
        self->_supportedPushServiceLevel = intValue;
      }
    }
  }

  if (!self->_pushRegisteredMailboxes)
  {
    v15 = [cacheCopy objectForKeyedSubscript:@"push-registered-mailboxes"];
    pushRegisteredMailboxes = self->_pushRegisteredMailboxes;
    self->_pushRegisteredMailboxes = v15;
  }

  if (!self->_apsTopic)
  {
    v17 = [cacheCopy objectForKeyedSubscript:@"aps-topic"];
    apsTopic = self->_apsTopic;
    self->_apsTopic = v17;
  }

  [(IMAPAccount *)self mf_unlock];
  v20.receiver = self;
  v20.super_class = IMAPAccount;
  [(MailAccount *)&v20 _readCustomInfoFromMailboxCache:cacheCopy];

  return v8;
}

- (BOOL)_writeCustomInfoToMailboxCache:(id)cache
{
  cacheCopy = cache;
  [(IMAPAccount *)self mf_lock];
  separatorChar = self->_separatorChar;
  if (separatorChar)
  {
    [cacheCopy setObject:self->_separatorChar forKey:@"separator"];
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
    [cacheCopy setObject:serverNamespace forKey:@"namespace"];
  }

  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (lastKnownCapabilities)
  {
    [cacheCopy setObject:lastKnownCapabilities forKey:@"capabilities"];
  }

  if (self->_supportedPushServiceLevel != -2)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [cacheCopy setObject:v9 forKey:@"push-service-level"];
  }

  if ([(NSMutableDictionary *)self->_pushRegisteredMailboxes count])
  {
    [cacheCopy setObject:self->_pushRegisteredMailboxes forKey:@"push-registered-mailboxes"];
  }

  apsTopic = self->_apsTopic;
  if (apsTopic)
  {
    [cacheCopy setObject:apsTopic forKey:@"aps-topic"];
  }

  [(IMAPAccount *)self mf_unlock];
  v12.receiver = self;
  v12.super_class = IMAPAccount;
  [(MailAccount *)&v12 _writeCustomInfoToMailboxCache:cacheCopy];

  return separatorChar != 0;
}

- (BOOL)_repairMailboxCache
{
  _fetchAndSetSeparatorChar = [(IMAPAccount *)self _fetchAndSetSeparatorChar];
  v3 = _fetchAndSetSeparatorChar != 0;

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IMAPAccount.m" lineNumber:296 description:{@"%s can only be called from unit tests", "-[IMAPAccount test_tearDown]"}];
  }

  v5.receiver = self;
  v5.super_class = IMAPAccount;
  [(MailAccount *)&v5 test_tearDown];
  atomic_store(1u, &self->_didTearDown);
}

- (void)test_setTaskManager:(id)manager
{
  managerCopy = manager;
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IMAPAccount.m" lineNumber:331 description:{@"%s can only be called from unit tests", "-[IMAPAccount test_setTaskManager:]"}];
  }

  v11.receiver = self;
  v11.super_class = IMAPAccount;
  [(MailAccount *)&v11 test_setTaskManager:managerCopy];
  os_unfair_lock_lock(&self->_taskManagerLock);
  taskManager = self->_taskManager;
  v7 = managerCopy;
  v8 = self->_taskManager;
  self->_taskManager = v7;
  v9 = taskManager;

  os_unfair_lock_unlock(&self->_taskManagerLock);
  [(MFTaskManager *)v9 test_tearDown];
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  [(IMAPAccount *)self _renameLocalSpecialMailboxesToName:nameCopy];
  v5.receiver = self;
  v5.super_class = IMAPAccount;
  [(MFAccount *)&v5 setDisplayName:nameCopy];
}

- (BOOL)storeMailboxTypeOnServer:(int64_t)server
{
  v3 = 0;
  do
  {
    v6 = *&_storeOnServer[v3];
    v7 = _storeOnServer[v3 + 2];
    if (v6 == server)
    {
      break;
    }

    v4 = v3 == 12;
    v3 += 3;
  }

  while (!v4);
  return _storeOnServerForTuple(self, &v6);
}

- (void)handleAlertResponse:(id)response
{
  responseCopy = response;
  v4 = MEMORY[0x1E696AEC0];
  v5 = MFLookupLocalizedString(@"IMAP_SERVER_ALERT_FORMAT", @"The IMAP server for “%@” wishes to alert you to the following:\n\n%@", @"Delayed");
  displayName = [(MailAccount *)self displayName];
  responseCopy = [v4 stringWithFormat:v5, displayName, responseCopy];

  [(IMAPAccount *)self mf_lock];
  v8 = handleAlertResponse___handledAlerts;
  if (!handleAlertResponse___handledAlerts)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = handleAlertResponse___handledAlerts;
    handleAlertResponse___handledAlerts = v9;

    v8 = handleAlertResponse___handledAlerts;
  }

  if ([v8 containsObject:responseCopy])
  {

    responseCopy = 0;
  }

  else
  {
    [handleAlertResponse___handledAlerts addObject:responseCopy];
  }

  [(IMAPAccount *)self mf_unlock];
  if (responseCopy)
  {
    v11 = MFLookupLocalizedString(@"WARNING_TITLE", @"Warning", @"Delayed");
    v12 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:responseCopy title:v11 userInfo:0];
    [(MailAccount *)self setConnectionError:v12];
  }
}

- (id)errorForResponse:(id)response
{
  responseCopy = response;
  if (([responseCopy isResponseWithCode:17] & 1) != 0 || objc_msgSend(responseCopy, "isAlertResponse"))
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

- (void)setAllowsPartialDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  [(IMAPAccount *)self mf_lock];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:!downloadsCopy];
  [(MFAccount *)self setAccountProperty:v5 forKey:@"PreventDismemberment"];

  [(IMAPAccount *)self mf_unlock];
}

- (BOOL)connectAndAuthenticate:(id)authenticate
{
  v25 = *MEMORY[0x1E69E9840];
  authenticateCopy = authenticate;
  isOffline = [(IMAPAccount *)self isOffline];
  v6 = +[MFActivityMonitor currentMonitor];
  connectionState = [authenticateCopy connectionState];
  v8 = +[IMAPAccount log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [authenticateCopy ef_publicDescription];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:connectionState];
    v21 = 138543618;
    v22 = ef_publicDescription;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ state: %@", &v21, 0x16u);
  }

  connectionState2 = [authenticateCopy connectionState];
  if ((connectionState2 - 2) < 2)
  {
    goto LABEL_14;
  }

  v12 = 0;
  if (connectionState2 == 1)
  {
LABEL_11:
    if ([authenticateCopy authenticateUsingAccount:self])
    {
      [(MailAccount *)self setConnectionError:0];
      if (v12)
      {
        [(IMAPAccount *)self _updateSeparatorAndNamespaceWithConnection:authenticateCopy];
        [(IMAPAccount *)self throttledGetMailboxListWithConnection:authenticateCopy];
        replayHandler = [(MailAccount *)self replayHandler];
        [replayHandler connectionEstablished];
      }

LABEL_14:
      isOffline = 0;
      error = 0;
      LOBYTE(v12) = 1;
      goto LABEL_26;
    }

    error = [v6 error];
    if ([(MFAccount *)self shouldEnableAfterError:error])
    {
      [(MFAccount *)self enableAccount];
    }

    if (!error)
    {
      error = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:0];
      [v6 setError:error];
    }

    preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];
    [(MFAccount *)self reportAuthenticationError:error authScheme:preferredAuthScheme];
    goto LABEL_20;
  }

  if (connectionState2)
  {
LABEL_8:
    error = 0;
    goto LABEL_26;
  }

  if ([v6 shouldCancel])
  {
    LOBYTE(v12) = 0;
    goto LABEL_8;
  }

  if ([authenticateCopy connectUsingAccount:self])
  {
    v12 = 1;
    goto LABEL_11;
  }

  error2 = [v6 error];
  preferredAuthScheme = error2;
  if (error2 && ([error2 mf_isUserCancelledError] & 1) == 0)
  {
    error = [v6 error];
LABEL_20:
    isOffline = 1;
    goto LABEL_21;
  }

  error = 0;
  isOffline = 0;
LABEL_21:

  if (error)
  {
    v16 = +[MFNetworkController sharedInstance];
    isNetworkUp = [v16 isNetworkUp];

    if (isNetworkUp)
    {
      if (([error mf_isUserCancelledError] & 1) == 0)
      {
        [(MailAccount *)self setConnectionError:error];
      }
    }
  }

  LOBYTE(v12) = 0;
LABEL_26:
  if (isOffline != [(IMAPAccount *)self isOffline])
  {
    [(IMAPAccount *)self setIsOffline:isOffline];
    if (!isOffline)
    {
      [authenticateCopy setReadBufferSize:{-[IMAPAccount readBufferSize](self, "readBufferSize")}];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_replayMailboxActionsWithConnection:(id)connection
{
  connectionCopy = connection;
  identifier = [(MFAccount *)self identifier];
  for (i = 0; ; i = v9)
  {
    library = [(MailAccount *)self library];
    persistence = [library persistence];
    mailboxActionPersistence = [persistence mailboxActionPersistence];
    v9 = [mailboxActionPersistence nextMailboxActionForAccountID:identifier];

    if (!v9)
    {
      break;
    }

    if ([v9 actionType] == 1)
    {
      mailboxName = [v9 mailboxName];
      [connectionCopy createMailbox:mailboxName];
    }

    else
    {
      mailboxName = [v9 mailboxName];
      [connectionCopy deleteMailbox:mailboxName];
    }

    library2 = [(MailAccount *)self library];
    persistence2 = [library2 persistence];
    mailboxActionPersistence2 = [persistence2 mailboxActionPersistence];
    [mailboxActionPersistence2 deleteMailboxAction:{objc_msgSend(v9, "actionID")}];
  }
}

- (id)connectionForMailbox:(id)mailbox delegate:(id)delegate options:(unint64_t)options failedToSelectMailbox:(BOOL *)selectMailbox
{
  v75 = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  delegateCopy = delegate;
  selfCopy = self;
  v69 = mailboxCopy;
  taskManager = [(IMAPAccount *)self taskManager];
  if (taskManager)
  {
    v12 = EFIsRunningUnitTests();

    if ((v12 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"IMAPAccount.m" lineNumber:846 description:@"Trying to use old IMAP while new IMAP is enabled"];
    }
  }

  v13 = atomic_load(&selfCopy->_didTearDown);
  if (v13)
  {
    _newConnection = 0;
    goto LABEL_133;
  }

  if (selectMailbox)
  {
    *selectMailbox = 0;
  }

  if (mailboxCopy)
  {
    v15 = [(IMAPAccount *)selfCopy _nameForMailboxUid:mailboxCopy];
    if (!v15)
    {
      _newConnection = +[IMAPAccount log];
      if (os_log_type_enabled(_newConnection, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.version) = 138412290;
        *(&buf.version + 4) = mailboxCopy;
        _os_log_impl(&dword_1B0389000, _newConnection, OS_LOG_TYPE_DEFAULT, "*** Unable to determine name for %@", &buf, 0xCu);
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
    v16 = selfCopy;
    v73 = v72;
    v17 = delegateCopy;
    v18 = +[MFActivityMonitor currentMonitor];
    [v18 setError:0];

    [(NSRecursiveLock *)v16->_connectionLock lock];
    [(IMAPAccount *)v16 mf_lock];
    cachedConnections = v16->_cachedConnections;
    if (options)
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
          delegate = [v23 delegate];
          v25 = delegate;
          if (delegate != v17)
          {
            break;
          }

          if ((options & 4) != 0)
          {
            mf_tryLock = [v23 mf_tryLock];

            if ((mf_tryLock & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }

          _newConnection = v23;
          v22 = v21;
LABEL_29:

          if (++v21 >= Count || _newConnection)
          {
            if (_newConnection)
            {
              goto LABEL_32;
            }

            v30 = 0;
            while (1)
            {
              v31 = CFArrayGetValueAtIndex(v16->_cachedConnections, v30);
              delegate2 = [v31 delegate];
              if (delegate2)
              {
              }

              else if ((options & 4) == 0 || [v31 mf_tryLock])
              {
                if (v72)
                {
                  selectedMailbox = [v31 selectedMailbox];
                  v34 = [selectedMailbox isEqualToString:v73];

                  if (v34)
                  {
LABEL_52:
                    _newConnection = v31;
                    if ((options & 4) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_53;
                  }
                }

                else
                {
                  if ((options & 8) != 0)
                  {
                    goto LABEL_52;
                  }

                  selectedMailbox2 = [v31 selectedMailbox];
                  v36 = selectedMailbox2 == 0;

                  if (v36)
                  {
                    goto LABEL_52;
                  }
                }

                _newConnection = 0;
                if ((options & 4) == 0)
                {
                  goto LABEL_39;
                }

LABEL_53:
                if (_newConnection)
                {
                  goto LABEL_39;
                }

                [v31 mf_unlock];
              }

              _newConnection = 0;
LABEL_39:
              v29 = _newConnection == 0;
              if (_newConnection)
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
        _newConnection = 0;
        goto LABEL_29;
      }

      goto LABEL_34;
    }

    Count = 0;
LABEL_34:
    _newConnection = 0;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v28 = 1;
    v29 = 1;
LABEL_55:
    if ((options & 1) == 0 || !v29)
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
      _newConnection = [(MFAccount *)v16 _newConnection];
      v43 = +[IMAPAccount log];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription = [_newConnection ef_publicDescription];
        LODWORD(buf.version) = 138543362;
        *(&buf.version + 4) = ef_publicDescription;
        _os_log_impl(&dword_1B0389000, v43, OS_LOG_TYPE_DEFAULT, "No cached connection found. Creating new connection: %{public}@", &buf, 0xCu);
      }

      if ((options >> 2))
      {
        [_newConnection mf_lock];
      }

      [_newConnection setTag:v16->_nextConnectionTag++];
      [_newConnection setMailboxListFilter:v16];
      CFArrayAppendValue(v16->_cachedConnections, _newConnection);
      v27 = 1;
      v22 = Count;
      goto LABEL_81;
    }

    v39 = 0;
    do
    {
      v40 = CFArrayGetValueAtIndex(v16->_cachedConnections, v39);
      delegate3 = [v40 delegate];
      if (delegate3)
      {
        _newConnection = 0;
      }

      else
      {
        if ((options & 4) != 0 && ![v40 mf_tryLock])
        {
          _newConnection = 0;
          goto LABEL_70;
        }

        _newConnection = v40;
        delegate3 = +[IMAPAccount log];
        if (os_log_type_enabled(delegate3, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription2 = [_newConnection ef_publicDescription];
          LODWORD(buf.version) = 138543362;
          *(&buf.version + 4) = ef_publicDescription2;
          _os_log_impl(&dword_1B0389000, delegate3, OS_LOG_TYPE_DEFAULT, "Checking out cached connection: %{public}@", &buf, 0xCu);
        }

        v22 = v39;
      }

LABEL_70:
      ++v39;
    }

    while (v39 < Count && !_newConnection);
    if (!_newConnection)
    {
      goto LABEL_76;
    }

LABEL_32:
    v27 = 0;
LABEL_81:
    [(IMAPAccount *)v16 mf_unlock];
    if (!_newConnection)
    {
      goto LABEL_103;
    }

    if ((options & 1) == 0)
    {
      if ([_newConnection connectionState]>= 2)
      {
        goto LABEL_97;
      }

      goto LABEL_91;
    }

    v45 = MFUserAgent();
    isMobileMail = [v45 isMobileMail];

    if (!isMobileMail)
    {
      if ([(IMAPAccount *)v16 connectAndAuthenticate:_newConnection])
      {
        goto LABEL_97;
      }

LABEL_91:
      isFatPipe = 0;
      goto LABEL_94;
    }

    CFArrayRemoveValueAtIndex(v16->_cachedConnections, v22);
    [(NSRecursiveLock *)v16->_connectionLock unlock];
    v47 = [(IMAPAccount *)v16 connectAndAuthenticate:_newConnection];
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

    CFArrayAppendValue(v48, _newConnection);
    if ([_newConnection isCellularConnection])
    {
      v49 = +[MFNetworkController sharedInstance];
      isFatPipe = [v49 isFatPipe];
    }

    else
    {
      isFatPipe = 0;
    }

    if ((isFatPipe | !v47))
    {
LABEL_94:
      if ((options & 4) != 0)
      {
        [_newConnection mf_unlock];
      }

      [(IMAPAccount *)v16 checkInConnection:_newConnection destroy:isFatPipe];
      goto LABEL_102;
    }

LABEL_97:
    [(IMAPAccount *)v16 _replayMailboxActionsWithConnection:_newConnection];
    if ([_newConnection isValid])
    {
      [(IMAPAccount *)v16 releaseNetworkAssertion];
    }

    else
    {
      if ((options & 4) != 0)
      {
        [_newConnection mf_unlock];
      }

      [(IMAPAccount *)v16 checkInConnection:_newConnection];
LABEL_102:

      _newConnection = 0;
    }

LABEL_103:
    if (v72)
    {
      selectedMailbox3 = [_newConnection selectedMailbox];
      delegate4 = [_newConnection delegate];
      v53 = 1;
      if (delegate4 == v17 && selectedMailbox3)
      {
        v53 = [v73 isEqualToString:selectedMailbox3] ^ 1;
      }
    }

    else
    {
      v53 = 0;
    }

    [_newConnection setDelegate:v17];
    [(NSRecursiveLock *)v16->_connectionLock unlock];

    if (_newConnection)
    {
      if ((options & 0x10) != 0)
      {
        v54 = v27;
      }

      else
      {
        v54 = 1;
      }

      if ((v54 & 1) == 0)
      {
        [_newConnection noop];
      }

      if (v53)
      {
        v55 = (options & 2) != 0 ? [_newConnection examineMailbox:v73]: [_newConnection selectMailbox:v73 withAccount:v16];
        if ((v55 & 1) == 0)
        {
          if ((options & 4) != 0)
          {
            [_newConnection mf_unlock];
          }

          if (![_newConnection isValid])
          {
            [(IMAPAccount *)v16 checkInConnection:_newConnection];

            if (v27)
            {
LABEL_131:
              _newConnection = 0;
              break;
            }

            continue;
          }

          v56 = +[MFActivityMonitor currentMonitor];
          error = [v56 error];

          if (error)
          {
            v58 = MEMORY[0x1E696AEC0];
            v59 = MFLookupLocalizedString(@"IMAP_OPEN_FAILED_TITLE_FORMAT", @"Unable to open “%@”", @"Delayed");
            displayName = [v69 displayName];
            v61 = [v58 stringWithFormat:v59, displayName];
            [error setShortDescription:v61];
          }

          if (selectMailbox)
          {
            *selectMailbox = 1;
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

  return _newConnection;
}

- (void)checkInConnection:(id)connection destroy:(BOOL)destroy
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (connectionCopy)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    if (![connectionCopy mf_tryLock])
    {
LABEL_37:
      [(NSRecursiveLock *)self->_connectionLock unlock];
      goto LABEL_38;
    }

    v7 = +[IMAPAccount log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = connectionCopy;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Checking in connection and clearing delegate: %{public}@", buf, 0xCu);
    }

    [connectionCopy setDelegate:0];
    connectionState = [connectionCopy connectionState];
    [connectionCopy mf_unlock];
    [(IMAPAccount *)self mf_lock];
    if ([connectionCopy gotBadResponse])
    {
      [(IMAPAccount *)self _setCapabilities:0];
    }

    if (destroy)
    {
      v9 = 0;
      v10 = 1;
LABEL_30:
      [(IMAPAccount *)self mf_unlock];
      if (v10)
      {
        [connectionCopy logout];
        [connectionCopy disconnectAndNotifyDelegate:0];
      }

      if (!((self->_cachedConnections == 0) | v9 & 1))
      {
        [(IMAPAccount *)self mf_lock];
        for (i = CFArrayGetCount(self->_cachedConnections); ; --i)
        {
          v28.location = 0;
          v28.length = i;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_cachedConnections, v28, connectionCopy);
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
      if ((connectionState - 2) < 2)
      {
        selectedMailbox = [connectionCopy selectedMailbox];
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
            if (v13 == connectionCopy)
            {
              v16 = 0;
            }

            else
            {
              delegate = [v13 delegate];
              v16 = delegate == 0;
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
            v24 = selectedMailbox;
            v25 = 2112;
            v26 = connectionCopy;
            _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Unselected connection checked back in, mailbox: %@, connection: %@", buf, 0x16u);
          }
        }

        goto LABEL_30;
      }

      v10 = 0;
      if (!connectionState)
      {
        goto LABEL_14;
      }

      if (connectionState == 1)
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

- (void)checkInConnectionsForStore:(id)store
{
  storeCopy = store;
  if (storeCopy && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      array = 0;
      for (i = 0; i != Count; ++i)
      {
        v8 = CFArrayGetValueAtIndex(self->_cachedConnections, i);
        delegate = [v8 delegate];

        if (delegate == storeCopy)
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v8];
        }
      }
    }

    else
    {
      array = 0;
    }

    [(IMAPAccount *)self mf_unlock];
    v10 = [array count];
    if (v10 >= 1)
    {
      for (j = 0; j != v10; ++j)
      {
        v12 = [array objectAtIndex:j];
        [(IMAPAccount *)self checkInConnection:v12];
      }
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }
}

- (BOOL)verifyESearchSupportWithBlock:(id)block
{
  blockCopy = block;
  [(NSLock *)self->_eSearchSupportedLock lock];
  eSearchSupported = self->_eSearchSupported;
  if (eSearchSupported || ([(MFAccount *)self accountPropertyForKey:@"VerifiedESEARCH"], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_eSearchSupported, self->_eSearchSupported = v6, v7, (eSearchSupported = self->_eSearchSupported) != 0))
  {
    v8 = 0;
    bOOLValue = [(NSNumber *)eSearchSupported BOOLValue];
  }

  else
  {
    v11 = blockCopy[2](blockCopy);
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v13 = self->_eSearchSupported;
    self->_eSearchSupported = v12;

    if (v11)
    {
      v8 = 1;
      [(MFAccount *)self setAccountProperty:self->_eSearchSupported forKey:@"VerifiedESEARCH"];
      bOOLValue = 1;
    }

    else
    {
      AnalyticsSendEventLazy();
      bOOLValue = 0;
      v8 = 0;
    }
  }

  [(NSLock *)self->_eSearchSupportedLock unlock];
  if (v8)
  {
    [(MFAccount *)self savePersistentAccount];
  }

  return bOOLValue;
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

- (void)unselectMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (mailboxCopy && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAPAccount *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v6 = 0;
      array = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(self->_cachedConnections, v6);
        selectedMailbox = [v8 selectedMailbox];
        v10 = selectedMailbox;
        if (selectedMailbox && [selectedMailbox isEqualToString:mailboxCopy])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v8];
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
      array = 0;
    }

    [(IMAPAccount *)self mf_unlock];
    v11 = [array count];
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = [array objectAtIndex:i];
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

- (void)filterMailboxList:(id)list forMailbox:(id)mailbox options:(int64_t)options
{
  listCopy = list;
  v5 = [listCopy count];
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v7 = [listCopy objectAtIndex:v6];
      v8 = [v7 objectForKey:@"MailboxName"];
      if ([v8 isEqualToString:@"Apple Mail To Do"])
      {
        [listCopy removeObjectAtIndex:v6];
      }

      --v6;
    }

    while (v6 != -1);
  }
}

- (void)systemWillSleep
{
  taskManager = [(IMAPAccount *)self taskManager];

  if (!taskManager)
  {

    [(IMAPAccount *)self releaseAllConnections];
  }
}

- (void)_releaseAllConnectionsAndCallSuper:(BOOL)super synchronously:(BOOL)synchronously edgeForcedOnly:(BOOL)only saveOfflineCache:(BOOL)cache
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(&self->_didTearDown);
  if ((v6 & 1) == 0)
  {
    cacheCopy = cache;
    onlyCopy = only;
    synchronouslyCopy = synchronously;
    superCopy = super;
    v12 = +[IMAPAccount log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      isMainThread = [MEMORY[0x1E696AF00] isMainThread];
      v14 = objc_opt_class();
      v15 = @"BT";
      *buf = 138413570;
      if (isMainThread)
      {
        v15 = @"MT";
      }

      v53 = v15;
      v54 = 2112;
      v55 = v14;
      v56 = 1024;
      v57 = superCopy;
      v58 = 1024;
      v59 = synchronouslyCopy;
      v60 = 1024;
      v61 = onlyCopy;
      v62 = 1024;
      v63 = cacheCopy;
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

    if (synchronouslyCopy)
    {
      taskManager = [(IMAPAccount *)self taskManager];

      if (taskManager)
      {
        taskManager2 = [(IMAPAccount *)self taskManager];
        [taskManager2 closeAllConnections];

        if (superCopy)
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
        if (!onlyCopy)
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
            delegate = [v35 delegate];
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

            v39 = delegate;
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
          selectedMailbox = [v34 selectedMailbox];
          v41 = [(IMAPAccount *)self mailboxUidForName:selectedMailbox];
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

        if (superCopy)
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
        v47 = superCopy;
        v48 = onlyCopy;
        v49 = cacheCopy;
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
    displayName = [(MailAccount *)self displayName];
    uniqueID = [(MFAccount *)self uniqueID];
    v6 = [v3 stringWithFormat:@"IMAP account %@ (%@)", displayName, uniqueID];

    v7 = [MFNetworkController networkAssertionWithIdentifier:v6];
    packetContextAssertion = self->_packetContextAssertion;
    self->_packetContextAssertion = v7;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = +[MFNetworkController sharedInstance];
    [defaultCenter addObserver:self selector:sel_networkChanged name:@"NetworkConfigurationDidChangeNotification" object:v10];
  }

  [(IMAPAccount *)self mf_unlock];
}

- (void)releaseNetworkAssertion
{
  [(IMAPAccount *)self mf_lock];
  unlockedReleaseNetworkAssertion(self);

  [(IMAPAccount *)self mf_unlock];
}

- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id)command
{
  responseCopy = response;
  commandCopy = command;
  isAlertResponse = [responseCopy isAlertResponse];
  if (isAlertResponse)
  {
    userString = [responseCopy userString];
    [(IMAPAccount *)self handleAlertResponse:userString];
LABEL_3:

    goto LABEL_14;
  }

  if ([commandCopy command] == 8 && objc_msgSend(responseCopy, "responseType") == 13)
  {
    mailboxName = [responseCopy mailboxName];
    userString = [(IMAPAccount *)self mailboxUidForName:mailboxName];

    statusEntries = [responseCopy statusEntries];
    uRLString = [userString URLString];

    if (uRLString)
    {
      v14 = [statusEntries objectForKey:0x1F2748100];
      if (v14)
      {
        v15 = [userString userInfoObjectForKey:0x1F2748100];
        intValue = [v15 intValue];

        if (intValue != [v14 unsignedIntValue])
        {
          v17 = EFStringWithInt();
          [userString setUserInfoObject:v17 forKey:0x1F2748100];
        }
      }

      v18 = [statusEntries objectForKeyedSubscript:0x1F2748140];

      if (v18)
      {
        [userString updateMostRecentStatusCount:{objc_msgSend(v18, "unsignedIntegerValue")}];
      }
    }

    goto LABEL_3;
  }

LABEL_14:

  return isAlertResponse ^ 1;
}

- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id)command
{
  responseCopy = response;
  if ([responseCopy isAlertResponse])
  {
    userString = [responseCopy userString];
    [(IMAPAccount *)self handleAlertResponse:userString];
  }
}

- (void)setIsOffline:(BOOL)offline
{
  offlineCopy = offline;
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
    v6 = offlineCopy;
    dispatch_async(setIsOffline__sOfflineStatusChangeQueue, v5);
  }

  else if ([(IMAPAccount *)self isOffline]!= offlineCopy)
  {
    if (offlineCopy)
    {
      [(IMAPAccount *)self _releaseAllConnectionsAndCallSuper:0];
    }

    atomic_store(offlineCopy, &self->_isOffline);
  }
}

void __28__IMAPAccount_setIsOffline___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.mail.imap.offlinestatuschange", 0);
  v1 = setIsOffline__sOfflineStatusChangeQueue;
  setIsOffline__sOfflineStatusChangeQueue = v0;
}

- (void)setSeparatorChar:(id)char serverNamespace:(id)namespace
{
  charCopy = char;
  namespaceCopy = namespace;
  [(IMAPAccount *)self mf_lock];
  if (!charCopy || self->_separatorChar && ([charCopy isEqualToString:?] & 1) != 0)
  {
    v7 = 0;
    if (!namespaceCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = [charCopy copy];
    separatorChar = self->_separatorChar;
    self->_separatorChar = v8;

    [(MailAccount *)self _incrementCacheDirtyCount];
    v7 = 1;
    if (!namespaceCopy)
    {
      goto LABEL_12;
    }
  }

  if (self->_separatorChar && [namespaceCopy hasSuffix:?])
  {
    v10 = [namespaceCopy substringWithRange:{0, objc_msgSend(namespaceCopy, "length") - -[NSString length](self->_separatorChar, "length")}];

    namespaceCopy = v10;
  }

  if (([namespaceCopy isEqualToString:self->_serverNamespace] & 1) == 0)
  {
    v11 = [namespaceCopy copy];
    serverNamespace = self->_serverNamespace;
    self->_serverNamespace = v11;

    [(MailAccount *)self _incrementCacheDirtyCount];
    v7 = 1;
  }

LABEL_12:
  [(IMAPAccount *)self mf_unlock];
  if (v7)
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    [allMailboxUids makeObjectsPerformSelector:sel_flushCriteria];
  }

  serverPathPrefixAccountValue = [(IMAPAccount *)self serverPathPrefixAccountValue];
  if (serverPathPrefixAccountValue)
  {
    [(IMAPAccount *)self setServerPathPrefix:serverPathPrefixAccountValue];
  }
}

- (void)_updateSeparatorAndNamespaceWithConnection:(id)connection
{
  connectionCopy = connection;
  [(NSRecursiveLock *)self->_connectionLock lock];
  if ((*(self + 397) & 0x10) == 0)
  {
    separatorChar = [connectionCopy separatorChar];
    serverPathPrefix = [connectionCopy serverPathPrefix];
    [(IMAPAccount *)self setSeparatorChar:separatorChar serverNamespace:serverPathPrefix];
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

  taskManager = [(IMAPAccount *)self taskManager];

  if (taskManager)
  {
    taskManager2 = [(IMAPAccount *)self taskManager];
    fetchSeparatorChar = [taskManager2 fetchSeparatorChar];

    if (fetchSeparatorChar)
    {
      [(IMAPAccount *)self setSeparatorChar:fetchSeparatorChar serverNamespace:0];
    }
  }

  else
  {
    if ([(IMAPAccount *)self isOffline])
    {
LABEL_2:
      fetchSeparatorChar = 0;
      goto LABEL_13;
    }

    v6 = [(IMAPAccount *)self connectionForMailbox:0 delegate:self options:1 failedToSelectMailbox:0];
    v7 = v6;
    if (v6)
    {
      separatorChar = [v6 separatorChar];
      if (separatorChar)
      {
        [(IMAPAccount *)self setSeparatorChar:separatorChar serverNamespace:0];
      }

      [(IMAPAccount *)self checkInConnection:v7];
    }

    else
    {
      separatorChar = 0;
    }

    fetchSeparatorChar = separatorChar;
  }

LABEL_13:

  return fetchSeparatorChar;
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

- (void)_setCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [(IMAPAccount *)self mf_lock];
  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (capabilitiesCopy | lastKnownCapabilities)
  {
    v6 = lastKnownCapabilities;
    objc_storeStrong(&self->_lastKnownCapabilities, capabilities);
    [(MailAccount *)self _incrementCacheDirtyCount];
  }

  else
  {
    v6 = 0;
  }

  [(IMAPAccount *)self mf_unlock];
  if (capabilitiesCopy | v6)
  {
    v7 = [capabilitiesCopy isEqualToArray:v6] ^ 1;
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
  isFatPipe = [v2 isFatPipe];
  v4 = +[MFPowerController sharedInstance];
  isPluggedIn = [v4 isPluggedIn];

  if (isFatPipe & isPluggedIn)
  {
    v6 = 204472320;
    v7 = 209715200;
    v8 = 5242880;
  }

  else
  {
    is3GConnection = [v2 is3GConnection];
    v10 = isFatPipe | [v2 is4GConnection];
    v11 = 4096;
    if (is3GConnection)
    {
      v11 = 0x10000;
    }

    v12 = 0x4000;
    if (is3GConnection)
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

- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children onlySubscribed:(BOOL)subscribed statusDataItems:(id)items withConnection:(id)connection statusEntriesByMailbox:(id *)mailbox
{
  subscribedCopy = subscribed;
  childrenCopy = children;
  uidCopy = uid;
  itemsCopy = items;
  connectionCopy = connection;
  if (connectionCopy || ([(IMAPAccount *)self connectionForMailbox:0 delegate:self options:9 failedToSelectMailbox:0], (connectionCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    serverPathPrefixAccountValue = [(IMAPAccount *)self serverPathPrefixAccountValue];
    if ([serverPathPrefixAccountValue length])
    {
      v16 = [(NSString *)self->_serverNamespace isEqualToString:serverPathPrefixAccountValue];
    }

    else
    {
      v16 = 1;
    }

    if (self->super._rootMailboxUid == uidCopy && v16)
    {
      v17 = &stru_1F273A5E0;
    }

    else if (self->super._inboxMailboxUid == uidCopy && (-[IMAPAccount serverPathPrefix](self, "serverPathPrefix"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isEqualToString:@"INBOX"], v18, v19))
    {
      v20 = MEMORY[0x1E696AEC0];
      separatorChar = [(IMAPAccount *)self separatorChar];
      v17 = [v20 stringWithFormat:@"INBOX%@INBOX", separatorChar];
    }

    else
    {
      v17 = [(IMAPAccount *)self _nameForMailboxUid:uidCopy];
    }

    if (childrenCopy)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if (!subscribedCopy || ([connectionCopy subscribedListingForMailbox:v17 options:v22], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([connectionCopy supportsCapability:23])
      {
        v24 = ([connectionCopy supportsCapability:21] & 1) != 0 || -[IMAPAccount xListSupportedOnConnection:](self, "xListSupportedOnConnection:", connectionCopy);
      }

      else
      {
        v24 = 0;
      }

      v25 = [connectionCopy listingForMailbox:v17 options:v22 getSpecialUse:v24 statusDataItems:itemsCopy statusEntriesByMailbox:mailbox];
      v26 = v25;
      if (self->super._rootMailboxUid == uidCopy && self->_serverNamespace != 0 && v16)
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
            dictionary = [MEMORY[0x1E695DF20] dictionary];
            [v38 setObject:dictionary forKey:@"MailboxChildren"];

            [v23 ef_insertObject:v38 usingSortFunction:_MFCompareMailboxDictionariesByName context:0 allowDuplicates:1];
          }
        }
      }

      else
      {
        v23 = v25;
      }
    }

    [(IMAPAccount *)self checkInConnection:connectionCopy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_newMailboxWithParent:(id)parent name:(id)name attributes:(unsigned int)attributes dictionary:(id)dictionary withCreationOption:(int64_t)option
{
  v55 = *MEMORY[0x1E69E9840];
  parentCopy = parent;
  nameCopy = name;
  dictionaryCopy = dictionary;
  if (option)
  {
    __assert_rtn("[IMAPAccount _newMailboxWithParent:name:attributes:dictionary:withCreationOption:]", "IMAPAccount.m", 1703, "creationOption == MailboxCreationOptionDefault");
  }

  rootMailbox = [(MailAccount *)self rootMailbox];
  if (![parentCopy isEqual:rootMailbox] || (v14 = nameCopy) == 0)
  {

LABEL_7:
    [(NSRecursiveLock *)self->_connectionLock lock];
    accountRelativePath = [parentCopy accountRelativePath];
    v17 = [accountRelativePath stringByAppendingPathComponent:nameCopy];

    v18 = [(IMAPAccount *)self mailboxUidForRelativePath:v17 create:0];
    if (v18)
    {
LABEL_33:
      [(NSRecursiveLock *)self->_connectionLock unlock];
      v15 = nameCopy;
      goto LABEL_34;
    }

    v43 = nameCopy;
    v20 = [(IMAPAccount *)self _nameForMailboxUid:parentCopy];
    v21 = [v20 mutableCopy];

    pathComponents = [nameCopy pathComponents];
    separatorChar = [(IMAPAccount *)self separatorChar];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v24 = pathComponents;
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
            if (!separatorChar)
            {
              v29 = 0;
              goto LABEL_20;
            }

            [v21 appendString:separatorChar];
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

      taskManager = [(IMAPAccount *)self taskManager];
      v31 = [taskManager createMailbox:v21];

      v49.receiver = self;
      v49.super_class = IMAPAccount;
      v18 = [(MailAccount *)&v49 _newMailboxWithParent:parentCopy name:v43 attributes:attributes dictionary:dictionaryCopy withCreationOption:0];
      if (v31)
      {
LABEL_32:

        nameCopy = v43;
        goto LABEL_33;
      }

LABEL_23:
      v41 = [MEMORY[0x1E699B580] actionWithID:0 toCreateMailbox:objc_msgSend(v18 mailboxName:{"databaseID"), v21}];
      library = [(MailAccount *)self library];
      persistence = [library persistence];
      mailboxActionPersistence = [persistence mailboxActionPersistence];
      identifier = [(MFAccount *)self identifier];
      [mailboxActionPersistence saveMailboxActionForAccountID:identifier action:v41];

      taskManager2 = [(IMAPAccount *)self taskManager];
      [taskManager2 localMailboxesDidChange];

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
      mf_fileSystemString = [v43 mf_fileSystemString];

      v43 = mf_fileSystemString;
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
        v18 = [(MailAccount *)&v48 _newMailboxWithParent:parentCopy name:mf_fileSystemString attributes:attributes dictionary:dictionaryCopy withCreationOption:0];
        if (v37)
        {
          v47.receiver = self;
          v47.super_class = IMAPAccount;
          v40 = [(MailAccount *)&v47 _newMailboxWithParent:parentCopy name:mf_fileSystemString attributes:attributes dictionary:dictionaryCopy withCreationOption:0];

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
  v18 = [(MailAccount *)self _copyMailboxWithParent:parentCopy name:v15 attributes:attributes dictionary:dictionaryCopy];
LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_setSpecialMailbox:(id)mailbox forType:(int64_t)type
{
  mailboxCopy = mailbox;
  v7.receiver = self;
  v7.super_class = IMAPAccount;
  [(MailAccount *)&v7 _setSpecialMailbox:mailboxCopy forType:type];
  if (mailboxCopy && [mailboxCopy isValid])
  {
    [(IMAPAccount *)self setStoreMailboxType:type onServer:1];
  }
}

- (BOOL)isMailboxLocalForType:(int64_t)type
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
  nameCopy = name;
  if ([(IMAPAccount *)self storeMailboxTypeOnServer:5])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
    v7 = [(MailAccount *)self _localMailboxNameForType:5 usingDisplayName:nameCopy];
    account = [v6 account];
    parent = [v6 parent];
    [account renameMailbox:v6 newName:v7 parent:parent];

    v4 = v7;
    v5 = v6;
  }

  if (![(IMAPAccount *)self storeMailboxTypeOnServer:4])
  {
    v10 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];

    v11 = [(MailAccount *)self _localMailboxNameForType:4 usingDisplayName:nameCopy];

    account2 = [v10 account];
    parent2 = [v10 parent];
    [account2 renameMailbox:v10 newName:v11 parent:parent2];

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

    v14 = [(MailAccount *)self _localMailboxNameForType:3 usingDisplayName:nameCopy];

    account3 = [v15 account];
    parent3 = [v15 parent];
    [account3 renameMailbox:v15 newName:v14 parent:parent3];
  }
}

- (id)specialUseAttributeForType:(int64_t)type
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
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, 5, @"\\Drafts");
  CFDictionarySetValue(Mutable, 4, @"\\Sent");
  CFDictionarySetValue(Mutable, 3, @"\\Trash");
  CFDictionarySetValue(Mutable, 2, @"\\Archive");
  CFDictionarySetValue(Mutable, 1, @"\\Junk");
  specialUseAttributeForType__map = Mutable;
}

- (id)_specialMailboxUidWithType:(int64_t)type create:(BOOL)create
{
  createCopy = create;
  v7 = [(IMAPAccount *)self isMailboxLocalForType:?];
  selfCopy = self;
  v9 = selfCopy;
  if (v7)
  {
    v10 = [(MailAccount *)selfCopy _localMailboxNameForType:type usingDisplayName:0];
    v11 = +[LocalAccount localAccount];
  }

  else
  {
    v12 = [(IMAPAccount *)selfCopy specialUseAttributeForType:type];
    if (v12)
    {
      rootMailbox = [(MailAccount *)v9 rootMailbox];
      v14 = [rootMailbox descendantWithExtraAttribute:v12];

      if (v14)
      {

        v10 = 0;
        goto LABEL_14;
      }
    }

    v15 = [(MailAccount *)v9 specialMailboxNameForType:type];
    if ([v15 length])
    {
      v10 = v15;
    }

    else
    {
      v16 = [(MailAccount *)v9 _defaultSpecialMailboxNameForType:type];

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

  createCopy = [(IMAPAccount *)v11 mailboxUidForRelativePath:v10 create:v7 | createCopy];
  v14 = createCopy;
  if (v7)
  {
    [createCopy setRepresentedAccount:v9];
  }

  v9 = v11;
LABEL_14:

  return v14;
}

- (id)allMailMailboxUid
{
  rootMailbox = [(MailAccount *)self rootMailbox];
  v3 = [rootMailbox descendantWithExtraAttribute:@"\\All"];

  return v3;
}

- (BOOL)isSpecialMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v8.receiver = self;
  v8.super_class = IMAPAccount;
  if ([(MailAccount *)&v8 isSpecialMailbox:mailboxCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(IMAPAccount *)self specialUseAttributesForMailbox:mailboxCopy];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (id)specialUseAttributesForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (specialUseAttributesForMailbox__onceToken != -1)
  {
    [IMAPAccount specialUseAttributesForMailbox:];
  }

  v4 = MEMORY[0x1E695DFA8];
  extraAttributes = [mailboxCopy extraAttributes];
  v6 = [v4 setWithArray:extraAttributes];

  [v6 intersectSet:specialUseAttributesForMailbox__knownSpecialAttributes];

  return v6;
}

void __46__IMAPAccount_specialUseAttributesForMailbox___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"\\All", @"\\Junk", @"\\Sent", @"\\Trash", @"\\Drafts", @"\\Archive", @"\\Flagged", 0}];
  v1 = specialUseAttributesForMailbox__knownSpecialAttributes;
  specialUseAttributesForMailbox__knownSpecialAttributes = v0;
}

- (BOOL)getMailboxListWithConnection:(id)connection statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox
{
  v6 = [(IMAPAccount *)self _listingForMailboxUid:self->super._rootMailboxUid listAllChildren:1 onlySubscribed:0 statusDataItems:items withConnection:connection statusEntriesByMailbox:mailbox];
  if (v6)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"AccountMailboxListingWillFetch" object:self userInfo:0];

    [(IMAPAccount *)self mf_lock];
    LODWORD(defaultCenter) = [(MailAccount *)self _loadMailboxListingIntoCache:0 attributes:0 children:v6 parent:self->super._rootMailboxUid];
    [(IMAPAccount *)self mf_unlock];
    if (defaultCenter)
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

- (void)throttledGetMailboxListWithConnection:(id)connection
{
  connectionCopy = connection;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = MFUserAgent();
  isForeground = [v6 isForeground];

  v8 = atomic_load(&self->_fetchedMailboxList);
  if ((v8 & 1) == 0 || isForeground && Current - self->_timeLastFetchedMailboxList > 300.0)
  {
    self->_timeLastFetchedMailboxList = Current;
    atomic_store(1u, &self->_fetchedMailboxList);
    v9 = +[MFActivityMonitor currentMonitor];
    rootMailbox = [(MailAccount *)self rootMailbox];
    [v9 setMailbox:rootMailbox];

    v11 = MFLookupLocalizedString(@"DISABLED_STATUS", @"Checking for Mail…", @"Delayed");
    [v9 setDisplayName:v11];

    v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2748140, 0}];
    v29[0] = 0;
    v13 = [(IMAPAccount *)self getMailboxListWithConnection:connectionCopy statusDataItems:v12 statusEntriesByMailbox:v29];
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
        v16 = connectionCopy;
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = [(IMAPAccount *)self connectionForMailbox:0 delegate:self options:9 failedToSelectMailbox:0];
        }

        allMailboxUids = [(MailAccount *)self allMailboxUids];
        v20 = [allMailboxUids ef_filter:&__block_literal_global_249];

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

    globalAsyncScheduler = [MEMORY[0x1E699B978] globalAsyncScheduler];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__IMAPAccount_throttledGetMailboxListWithConnection___block_invoke_4;
    v25[3] = &unk_1E7AA25C0;
    v23 = v9;
    v26 = v23;
    v24 = [globalAsyncScheduler afterDelay:v25 performBlock:1.0];
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
    taskManager = [(IMAPAccount *)self taskManager];

    if (taskManager)
    {
      taskManager2 = [(IMAPAccount *)self taskManager];
      [taskManager2 fetchNow:*MEMORY[0x1E699A740]];
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
    taskManager = [(IMAPAccount *)self taskManager];

    if (!taskManager)
    {

      [(IMAPAccount *)self throttledGetMailboxListWithConnection:0];
    }
  }
}

- (id)_copyMailboxUidWithParent:(id)parent name:(id)name attributes:(unint64_t)attributes existingMailboxUid:(id)uid dictionary:(id)dictionary
{
  parentCopy = parent;
  nameCopy = name;
  uidCopy = uid;
  dictionaryCopy = dictionary;
  if (uidCopy)
  {
    if (!nameCopy)
    {
      inboxMailboxUid = self->super._inboxMailboxUid;
      if (inboxMailboxUid == uidCopy)
      {
        name = [(MFMailboxUid *)inboxMailboxUid name];
        attributes = [(MFMailboxUid *)self->super._inboxMailboxUid attributes]& 0xFFFFFFFFFFFFFEFFLL;
        nameCopy = name;
      }

      else
      {
        if (([(MFMailboxUid *)uidCopy attributes]& 0x100) != 0)
        {

          uidCopy = 0;
        }

        nameCopy = 0;
      }
    }

    attributes |= [(MFMailboxUid *)uidCopy attributes]& 0x80;
    goto LABEL_15;
  }

  if (self->super._rootMailboxUid != parentCopy || (v17 = nameCopy, (nameCopy = v17) == 0) || (v18 = [v17 caseInsensitiveCompare:@"INBOX"], nameCopy, v18))
  {
    uidCopy = 0;
LABEL_15:
    v25.receiver = self;
    v25.super_class = IMAPAccount;
    v22 = [(MailAccount *)&v25 _copyMailboxUidWithParent:parentCopy name:nameCopy attributes:attributes existingMailboxUid:uidCopy dictionary:dictionaryCopy];

    goto LABEL_16;
  }

  v19 = self->super._inboxMailboxUid;
  if (v19)
  {
    [(MFMailboxUid *)v19 setName:nameCopy];
    [(MFMailboxUid *)self->super._inboxMailboxUid setAttributes:attributes & 0xFFFFFFFFFFFFFEFFLL];
    v20 = self->super._inboxMailboxUid;
    v21 = [dictionaryCopy objectForKey:@"MailboxExtraAttributes"];
    [(MFMailboxUid *)v20 setExtraAttributes:v21];

    v22 = self->super._inboxMailboxUid;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = IMAPAccount;
    v22 = [(MailAccount *)&v26 _copyMailboxUidWithParent:parentCopy name:nameCopy attributes:attributes & 0xFFFFFFFFFFFFFEFFLL existingMailboxUid:0 dictionary:dictionaryCopy];
    [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:v22 forType:7];
  }

LABEL_16:

  return v22;
}

- (void)_synchronouslyLoadListingForParent:(id)parent
{
  parentCopy = parent;
  taskManager = [(IMAPAccount *)self taskManager];

  if (!taskManager)
  {
    v5 = [(IMAPAccount *)self _listingForMailboxUid:parentCopy listAllChildren:0];
    if (v5)
    {
      name = [parentCopy name];
      v7 = [(MailAccount *)self _loadMailboxListingIntoCache:name attributes:0 children:v5 parent:parentCopy];

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

- (void)_mailboxesWereRemovedFromTree:(id)tree withFileSystemPaths:(id)paths
{
  treeCopy = tree;
  pathsCopy = paths;
  [(IMAPAccount *)self mf_lock];
  if (!sMailboxDeletionQueue)
  {
    v8 = objc_alloc_init(MFInvocationQueue);
    v9 = sMailboxDeletionQueue;
    sMailboxDeletionQueue = v8;
  }

  [(IMAPAccount *)self mf_unlock];
  v10 = objc_alloc_init(_MFIMAPMailboxDeletionQueueEntry);
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setUrls:treeCopy];
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setPaths:pathsCopy];
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setAccount:self];
  v11 = objc_opt_class();
  v12 = MFLookupLocalizedString(@"IMAP_REMOVING_CACHE_FILES", @"Removing old cache files…", @"Message");
  v13 = [MFMonitoredInvocation invocationWithSelector:sel__deleteQueuedMailboxes_ target:v11 object:v10 taskName:v12 priority:12 canBeCancelled:1];

  [sMailboxDeletionQueue addInvocation:v13];
  v14.receiver = self;
  v14.super_class = IMAPAccount;
  [(MailAccount *)&v14 _mailboxesWereRemovedFromTree:treeCopy withFileSystemPaths:pathsCopy];
}

+ (void)_deleteQueuedMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  account = [mailboxesCopy account];
  [account _waitForMailboxListingLoadToComplete];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  urls = [mailboxesCopy urls];
  v7 = [urls count];

  if (v7)
  {
    v8 = 0;
    v9 = *MEMORY[0x1E695E738];
    do
    {
      urls2 = [mailboxesCopy urls];
      v11 = [urls2 objectAtIndex:v8];

      v12 = [self mailboxUidFromActiveAccountsForURL:v11];
      v13 = v12;
      if (!v12 || ([v12 isValid] & 1) == 0)
      {
        paths = [mailboxesCopy paths];
        v15 = [paths objectAtIndex:v8];

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

  library = [account library];
  [library deleteMailboxes:v5 account:account];
}

- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure
{
  acceptableCopy = acceptable;
  v14.receiver = self;
  v14.super_class = IMAPAccount;
  if ([(MailAccount *)&v14 newMailboxNameIsAcceptable:acceptableCopy reasonForFailure:failure])
  {
    separatorChar = [(IMAPAccount *)self separatorChar];
    if (separatorChar)
    {
      v8 = [acceptableCopy rangeOfString:separatorChar];
      v9 = v8 == 0x7FFFFFFFFFFFFFFFLL;
      if (!failure)
      {
LABEL_10:

        goto LABEL_11;
      }

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = MFLookupLocalizedString(@"MAILBOX_NAME_INCLUDES_PATH_SEPARATOR", @"Mailbox names may not include “%@”.", @"Delayed");
        v12 = [v10 stringWithFormat:v11, separatorChar];
        *failure = v12;

        v9 = 0;
        goto LABEL_10;
      }
    }

    else if (!failure)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }

    *failure = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  v47 = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  nameCopy = name;
  parentCopy = parent;
  v10 = [(IMAPAccount *)self _nameForMailboxUid:mailboxCopy];
  inboxMailboxUid = self->super._inboxMailboxUid;
  if (inboxMailboxUid && [(MFMailboxUid *)inboxMailboxUid isEqual:mailboxCopy])
  {
    v12 = self->super._inboxMailboxUid;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(IMAPAccount *)self _nameForMailboxUid:parentCopy];
  if (nameCopy)
  {
    [(IMAPAccount *)self _uidNameForPathComponent:nameCopy];
  }

  else
  {
    [mailboxCopy name];
  }
  v14 = ;
  if ([v13 length])
  {
    v15 = [v13 mutableCopy];
    separatorChar = [(IMAPAccount *)self separatorChar];
    [v15 appendString:separatorChar];

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
  taskManager = [(IMAPAccount *)self taskManager];

  if (taskManager)
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

    taskManager2 = [(IMAPAccount *)self taskManager];
    v20 = [taskManager2 renameMailbox:v10 toMailbox:v14];

    if ((v20 & 1) == 0)
    {
      library = [(MailAccount *)self library];
      persistence = [library persistence];
      mailboxActionPersistence = [persistence mailboxActionPersistence];

      v24 = [MEMORY[0x1E699B580] actionWithID:0 toRenameMailbox:objc_msgSend(mailboxCopy mailboxName:"databaseID") toName:{v10, v14}];
      identifier = [(MFAccount *)self identifier];
      [mailboxActionPersistence saveMailboxActionForAccountID:identifier action:v24];
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
  [(MailAccount *)&v42 renameMailbox:mailboxCopy newName:nameCopy parent:parentCopy];
  store = [mailboxCopy store];
  [store reselectMailbox];

  taskManager3 = [(IMAPAccount *)self taskManager];
  [taskManager3 localMailboxesDidChange];

  v29 = 1;
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_37:

  v36 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)_pathComponentForUidName:(id)name
{
  mf_decodedIMAPMailboxName = [name mf_decodedIMAPMailboxName];

  return mf_decodedIMAPMailboxName;
}

- (id)_uidNameForPathComponent:(id)component
{
  mf_encodedIMAPMailboxName = [component mf_encodedIMAPMailboxName];

  return mf_encodedIMAPMailboxName;
}

- (id)_nameForMailboxUid:(id)uid
{
  uidCopy = uid;
  if (self->super._inboxMailboxUid == uidCopy)
  {
    v6 = @"INBOX";
    goto LABEL_32;
  }

  serverPathPrefix = [(IMAPAccount *)self serverPathPrefix];
  if (!serverPathPrefix && ([(MFMailboxUid *)uidCopy parent], v7 = objc_claimAutoreleasedReturnValue(), rootMailboxUid = self->super._rootMailboxUid, v7, v7 == rootMailboxUid))
  {
    name = [(MFMailboxUid *)uidCopy name];
  }

  else
  {
    if (self->super._rootMailboxUid != uidCopy)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([(__CFString *)serverPathPrefix length])
      {
        v10 = ![(MFMailboxUid *)uidCopy isShared];
        if (!uidCopy)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = 0;
        if (!uidCopy)
        {
LABEL_16:
          if (v10)
          {
            v15 = [(__CFString *)serverPathPrefix mutableCopy];
          }

          else
          {
            v15 = 0;
          }

          v16 = [v9 count];
          separatorChar = [(IMAPAccount *)self separatorChar];
          if (v16)
          {
            for (i = v16 - 1; i != -1; --i)
            {
              v19 = [v9 objectAtIndex:i];
              v20 = v19;
              if (v15)
              {
                if (!separatorChar)
                {

                  v15 = 0;
                  break;
                }

                [v15 appendString:separatorChar];
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
        if (uidCopy == self->super._rootMailboxUid)
        {
          break;
        }

        name2 = [(MFMailboxUid *)uidCopy name];
        [v9 addObject:name2];

        parent = [(MFMailboxUid *)uidCopy parent];

        uidCopy = parent;
      }

      while (parent);
      goto LABEL_16;
    }

    v11 = &stru_1F273A5E0;
    if (serverPathPrefix)
    {
      v11 = serverPathPrefix;
    }

    name = v11;
  }

  v6 = name;
LABEL_31:

LABEL_32:

  return v6;
}

- (id)nameForMailboxUid:(id)uid
{
  v3 = [(IMAPAccount *)self _nameForMailboxUid:uid];

  return v3;
}

- (id)mailboxUidForName:(id)name
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy)
  {
    rootMailbox = 0;
    goto LABEL_26;
  }

  v6 = [(__CFString *)nameCopy caseInsensitiveCompare:@"INBOX"];
  if (!v6)
  {

    v5 = @"INBOX";
  }

  serverPathPrefix = [(IMAPAccount *)self serverPathPrefix];
  separatorChar = [(IMAPAccount *)self separatorChar];
  if (!serverPathPrefix || ![serverPathPrefix length] || !v6)
  {
    goto LABEL_14;
  }

  v9 = [(__CFString *)v5 rangeOfString:serverPathPrefix options:8];
  if (v10)
  {
    v11 = [(__CFString *)v5 substringFromIndex:v9 + v10];

    if (separatorChar && v11 && (v12 = [(__CFString *)v11 rangeOfString:separatorChar options:8], v13))
    {
      v14 = [(__CFString *)v11 substringFromIndex:v12 + v13];

      v5 = v14;
    }

    else
    {
      v5 = v11;
    }

LABEL_14:
    rootMailbox = 0;
    if (separatorChar && v5)
    {
      v16 = [(__CFString *)v5 componentsSeparatedByString:separatorChar];
      rootMailbox = [(MailAccount *)self rootMailbox];
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
          v21 = rootMailbox;
          do
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v17);
            }

            rootMailbox = [v21 childWithName:{*(*(&v24 + 1) + 8 * v20), v24}];

            ++v20;
            v21 = rootMailbox;
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
  rootMailbox = 0;
LABEL_25:

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];

  return rootMailbox;
}

- (BOOL)canMailboxBeDeleted:(id)deleted
{
  deletedCopy = deleted;
  if ([deletedCopy isEqual:self->super._inboxMailboxUid])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = IMAPAccount;
    v5 = [(MailAccount *)&v7 canMailboxBeDeleted:deletedCopy];
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

- (void)setServerNamespace:(id)namespace
{
  namespaceCopy = namespace;
  [(IMAPAccount *)self mf_lock];
  v4 = [namespaceCopy isEqualToString:self->_serverNamespace];
  if ((v4 & 1) == 0)
  {
    v5 = [namespaceCopy copy];
    serverNamespace = self->_serverNamespace;
    self->_serverNamespace = v5;

    [(MailAccount *)self _incrementCacheDirtyCount];
  }

  [(IMAPAccount *)self mf_unlock];
  if ((v4 & 1) == 0)
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    [allMailboxUids makeObjectsPerformSelector:sel_flushCriteria];
  }
}

- (void)setServerPathPrefix:(id)prefix
{
  prefixCopy = prefix;
  serverPathPrefixAccountValue = [(IMAPAccount *)self serverPathPrefixAccountValue];
  v5 = prefixCopy;
  if (!prefixCopy)
  {
    v5 = &stru_1F273A5E0;
  }

  v13 = v5;
  if (serverPathPrefixAccountValue)
  {
    v6 = serverPathPrefixAccountValue;
  }

  else
  {
    v6 = &stru_1F273A5E0;
  }

  separatorChar = [(IMAPAccount *)self separatorChar];
  if (separatorChar)
  {
    v7 = [v13 rangeOfString:separatorChar options:12];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v13 substringToIndex:v7];

      v13 = v9;
    }
  }

  v10 = [v13 length];
  if (v10 != -[__CFString length](v6, "length") || ([v13 isEqual:v6] & 1) == 0)
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    [allMailboxUids makeObjectsPerformSelector:sel_URLString];

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

- (id)_infoForMatchingURL:(id)l
{
  lCopy = l;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  path = [lCopy path];
  [dictionary setObject:self forKey:@"Account"];
  if (path)
  {
    separatorChar = [(IMAPAccount *)self separatorChar];
    v9 = [path rangeOfString:@"/" options:8];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [path substringWithRange:{v9 + v8, objc_msgSend(path, "length") - (v9 + v8)}];

      path = v10;
    }

    if (separatorChar)
    {
      v12 = [path rangeOfString:separatorChar options:8];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [path substringWithRange:{v12 + v11, objc_msgSend(path, "length") - (v12 + v11)}];

        path = v13;
      }
    }

    if (([path isEqualToString:&stru_1F273A5E0] & 1) == 0)
    {
      [dictionary setObject:path forKey:@"RelativePath"];
    }
  }

  return dictionary;
}

- (double)lastPushRegistration
{
  [(IMAPAccount *)self mf_lock];
  lastPushRegistration = self->_lastPushRegistration;
  [(IMAPAccount *)self mf_unlock];
  return lastPushRegistration;
}

- (void)setLastPushRegistration:(double)registration
{
  [(IMAPAccount *)self mf_lock];
  self->_lastPushRegistration = registration;

  [(IMAPAccount *)self mf_unlock];
}

- (BOOL)mustRegisterForPushOnNextConnection
{
  [(IMAPAccount *)self mf_lock];
  v3 = (*(self + 397) >> 1) & 1;
  [(IMAPAccount *)self mf_unlock];
  return v3;
}

- (void)setMustRegisterForPushOnNextConnection:(BOOL)connection
{
  connectionCopy = connection;
  [(IMAPAccount *)self mf_lock];
  if (connectionCopy)
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

- (void)setSupportedPushServiceLevel:(int64_t)level
{
  [(IMAPAccount *)self mf_lock];
  if (self->_supportedPushServiceLevel != level)
  {
    self->_supportedPushServiceLevel = level;
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

- (void)updatePushRegisteredMailboxes:(id)mailboxes
{
  v32 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  selfCopy = self;
  [(IMAPAccount *)self mf_lock];
  pushRegisteredMailboxes = self->_pushRegisteredMailboxes;
  if (pushRegisteredMailboxes)
  {
    [(NSMutableDictionary *)pushRegisteredMailboxes removeAllObjects];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(mailboxesCopy, "count")}];
    v6 = self->_pushRegisteredMailboxes;
    self->_pushRegisteredMailboxes = v5;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = mailboxesCopy;
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
        mf_decodedIMAPMailboxName = [v9 mf_decodedIMAPMailboxName];
        v12 = [mf_decodedIMAPMailboxName copy];

        v13 = [v12 dataUsingEncoding:4 allowLossyConversion:0];
        ef_md5Digest = [v13 ef_md5Digest];
        ef_hexString = [ef_md5Digest ef_hexString];
        if (ef_hexString)
        {
          [(NSMutableDictionary *)selfCopy->_pushRegisteredMailboxes setObject:v12 forKey:ef_hexString];
        }

        else
        {
          mf_encodedIMAPMailboxName = [v12 mf_encodedIMAPMailboxName];
          v17 = [(IMAPAccount *)selfCopy mailboxUidForName:mf_encodedIMAPMailboxName];

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

  [(MailAccount *)selfCopy _incrementCacheDirtyCount];
  [(IMAPAccount *)selfCopy mf_unlock];

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

- (void)setAPSTopic:(id)topic
{
  v19 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v6 = +[IMAPAccount log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(MFAccount *)self identifier];
    v15 = 138412546;
    v16 = topicCopy;
    v17 = 2114;
    v18 = identifier;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "#aps-push Setting aps-topic '%@' for account %{public}@", &v15, 0x16u);
  }

  uniqueIdForPersistentConnection = [(MailAccount *)self uniqueIdForPersistentConnection];
  Style = PCSettingsGetStyle();
  [(IMAPAccount *)self mf_lock];
  apsTopic = self->_apsTopic;
  if (apsTopic != topicCopy)
  {
    v11 = apsTopic;
    objc_storeStrong(&self->_apsTopic, topic);
    [(MailAccount *)self _incrementCacheDirtyCount];
    v12 = +[MFAPSManager sharedManager];
    v13 = v12;
    if (topicCopy || !v11)
    {
      if (!topicCopy || v11)
      {
        if (![(NSString *)topicCopy isEqualToString:v11])
        {
          [v13 swapTopic:v11 forNewTopic:topicCopy];
        }
      }

      else if ((*(self + 397) & 4) != 0 && !Style)
      {
        [v12 startWatchingForTopic:topicCopy];
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
      selfCopy = self;
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
        identifier = [(MFAccount *)self identifier];
        v23 = 67109378;
        *v24 = v4;
        *&v24[4] = 2114;
        *&v24[6] = identifier;
        _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "#aps-push MCC push settings are not set to push (%d != PCStylePush) for account %{public}@", &v23, 0x12u);
      }
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x1E695DFA8]);
      pushedMailboxUids = [(IMAPAccount *)self pushedMailboxUids];
      v5 = [v8 initWithSet:pushedMailboxUids];

      _externalMailboxUids = [(IMAPAccount *)self _externalMailboxUids];
      [v5 unionSet:_externalMailboxUids];

      if ([v5 count])
      {
        Current = CFAbsoluteTimeGetCurrent();
        [(IMAPAccount *)self lastPushRegistration];
        v13 = v12;
        mustRegisterForPushOnNextConnection = [(IMAPAccount *)self mustRegisterForPushOnNextConnection];
        v15 = Current - v13;
        v16 = v15 >= 82800.0 || mustRegisterForPushOnNextConnection;
        if (v16)
        {
          v7 = 1;
LABEL_19:

          goto LABEL_20;
        }

        v19 = +[IMAPAccount log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [(MFAccount *)self identifier];
          v23 = 138543618;
          *v24 = identifier2;
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
          identifier3 = [(MFAccount *)self identifier];
          v23 = 138543362;
          *v24 = identifier3;
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

- (void)serverRegisteredMailboxes:(id)mailboxes withTopic:(id)topic version:(int64_t)version
{
  v20 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  topicCopy = topic;
  v10 = +[IMAPAccount log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = mailboxesCopy;
    v16 = 2112;
    v17 = topicCopy;
    v18 = 1024;
    versionCopy = version;
    _os_log_debug_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEBUG, "#aps-push {mailboxes=%@, topic=%@, version=%d}", &v14, 0x1Cu);
  }

  supportedPushServiceLevel = [(IMAPAccount *)self supportedPushServiceLevel];
  [(IMAPAccount *)self updatePushRegisteredMailboxes:mailboxesCopy];
  [(IMAPAccount *)self setSupportedPushServiceLevel:version];
  [(IMAPAccount *)self setAPSTopic:topicCopy];
  if (version >= 1)
  {
    [(IMAPAccount *)self setLastPushRegistration:CFAbsoluteTimeGetCurrent()];
  }

  if (supportedPushServiceLevel != version && (*(self + 397) & 4) != 0)
  {
    if (version >= 1 && supportedPushServiceLevel < 0)
    {
      [(IMAPAccount *)self startListeningForNotifications];
    }

    else if (version <= 0)
    {
      v12 = +[MFAPSManager sharedManager];
      [v12 stopWatchingForTopic:topicCopy];
    }
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_notificationNameForMailbox:(id)mailbox withPrefix:(id)prefix
{
  prefixCopy = prefix;
  v7 = [(IMAPAccount *)self _nameForMailboxUid:mailbox];
  uniqueID = [(MFAccount *)self uniqueID];
  v9 = [prefixCopy stringByAppendingFormat:@".%@.%@", uniqueID, v7];

  return v9;
}

- (BOOL)_registerPushNotificationPrefix:(id)prefix forMailboxNames:(id)names
{
  prefixCopy = prefix;
  namesCopy = names;
  [(IMAPAccount *)self mf_lock];
  v8 = [(MFAccount *)self accountPropertyForKey:@"NotesPushedMailboxes"];
  v9 = [(MFAccount *)self accountPropertyForKey:@"NotesNotificationPrefix"];
  v10 = v9;
  if (prefixCopy && ([v9 isEqualToString:prefixCopy] & 1) == 0)
  {
    [(MFAccount *)self setAccountProperty:prefixCopy forKey:@"NotesNotificationPrefix"];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(MFAccount *)self accountPropertyForKey:@"NotesPushedMailboxes"];
  v13 = [v12 mutableCopy];

  v14 = [namesCopy mutableCopy];
  [v13 sortUsingSelector:sel_localizedCompare_];
  [v14 sortUsingSelector:sel_localizedCompare_];
  if (!(v13 | v14) || v14 && ([v13 isEqual:v14] & 1) == 0)
  {
    [(MFAccount *)self setAccountProperty:namesCopy forKey:@"NotesPushedMailboxes"];
    v11 = 1;
  }

  [(IMAPAccount *)self mf_unlock];
  [(IMAPAccount *)self setIsOffline:0];
  [(IMAPAccount *)self startListeningForNotifications];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([namesCopy isEqualToArray:v8])
    {
      goto LABEL_14;
    }
  }

  v21 = prefixCopy;
  v15 = v10;
  v16 = [(IMAPAccount *)self _copyMailboxListForNames:namesCopy];
  v17 = [v16 count];
  v18 = [namesCopy count];

  v19 = v17 == v18;
  v10 = v15;
  prefixCopy = v21;
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

- (id)_copyMailboxListForNames:(id)names
{
  v18 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = namesCopy;
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

- (id)_copyMailboxListPreferenceForKey:(id)key
{
  v4 = [(MFAccount *)self _objectForAccountInfoKey:key];
  v5 = [(IMAPAccount *)self _copyMailboxListForNames:v4];

  return v5;
}

- (void)_updatePushedMailboxesAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v5 = [MEMORY[0x1E695DFA8] set];
  if ([(MFAccount *)self isEnabledForDataclass:*MEMORY[0x1E6959B28]])
  {
    if ([(IMAPAccount *)self supportsUserPushedMailboxes])
    {
      _copyUserPushedMailboxes = [(IMAPAccount *)self _copyUserPushedMailboxes];
      if (_copyUserPushedMailboxes)
      {
        [v5 unionSet:_copyUserPushedMailboxes];
      }
    }

    primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
    if (primaryMailboxUid)
    {
      [v5 addObject:primaryMailboxUid];
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

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [standardUserDefaults BOOLForKey:@"RelatedMessagesShouldIncludeDrafts"];

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
  if (notifyCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MFMailAccountPushedMailboxUidsDidChange" object:self userInfo:0];
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

- (void)changePushedMailboxUidsAdded:(id)added deleted:(id)deleted
{
  v37 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  deletedCopy = deleted;
  if ([(IMAPAccount *)self supportsUserPushedMailboxes])
  {
    v6 = MEMORY[0x1E695DFA8];
    pushedMailboxUids = [(IMAPAccount *)self pushedMailboxUids];
    v8 = [v6 setWithSet:pushedMailboxUids];

    if (addedCopy)
    {
      allObjects = [addedCopy allObjects];
      [v8 addObjectsFromArray:allObjects];
    }

    v10 = deletedCopy;
    if (deletedCopy)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = deletedCopy;
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

      v10 = deletedCopy;
    }

    if (addedCopy | v10)
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
    _notesPrefix = [(IMAPAccount *)self _notesPrefix];
    v4 = [(IMAPAccount *)self _copyPushedMailboxesForPrefix:_notesPrefix];
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
  pushedMailboxUids = [(IMAPAccount *)self pushedMailboxUids];
  allObjects = [pushedMailboxUids allObjects];
  v6 = [v3 initWithArray:allObjects];

  _externalMailboxUids = [(IMAPAccount *)self _externalMailboxUids];
  allObjects2 = [_externalMailboxUids allObjects];
  [v6 addObjectsFromArray:allObjects2];

  return v6;
}

- (NSSet)mailboxNamesForPushRegistration
{
  v30 = *MEMORY[0x1E69E9840];
  mailboxesForPushRegistration = [(IMAPAccount *)self mailboxesForPushRegistration];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(mailboxesForPushRegistration, "count")}];
  v5 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = mailboxesForPushRegistration;
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
      separatorChar = [(IMAPAccount *)self separatorChar];
      serverPathPrefix = [(IMAPAccount *)self serverPathPrefix];
      *buf = 138413058;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = separatorChar;
      v27 = 2112;
      v28 = serverPathPrefix;
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

- (void)handlePushNotificationOnMailboxes:(id)mailboxes missedNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v68 = *MEMORY[0x1E69E9840];
  obj = mailboxes;
  if (obj)
  {
    mailboxesRegisteredForPushByHash = [(IMAPAccount *)self mailboxesRegisteredForPushByHash];
    if (notificationsCopy)
    {
      allKeys = [mailboxesRegisteredForPushByHash allKeys];
    }

    else
    {
      allKeys = obj;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obja = allKeys;
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

          uppercaseString = [*(*(&v55 + 1) + 8 * i) uppercaseString];
          v11 = [mailboxesRegisteredForPushByHash objectForKey:uppercaseString];

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
    mailboxesRegisteredForPushByHash = 0;
    obja = 0;
  }

  v12 = +[IMAPAccount log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(MFAccount *)self identifier];
    *buf = 138543618;
    selfCopy2 = identifier;
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
      pushedMailboxUids = [(IMAPAccount *)self pushedMailboxUids];
      _externalMailboxUids = [(IMAPAccount *)self _externalMailboxUids];
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
          uppercaseString2 = [v21 uppercaseString];
          v23 = [mailboxesRegisteredForPushByHash objectForKey:uppercaseString2];

          if (!v23)
          {
            v26 = +[IMAPAccount log];
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
LABEL_35:

              goto LABEL_36;
            }

            *buf = v41;
            selfCopy2 = self;
            v64 = 2112;
            v65 = v21;
            v27 = v26;
            v28 = "#aps-push warning, %@ got a notification for mailbox with hash '%@', but can't find that mailbox.";
LABEL_39:
            _os_log_error_impl(&dword_1B0389000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x16u);
            goto LABEL_35;
          }

          v24 = [pushedMailboxUids containsObject:v23];
          v25 = v24;
          if (v24)
          {
            [v45 addObject:v23];
          }

          if ([_externalMailboxUids containsObject:v23])
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
            selfCopy2 = self;
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

    pushedMailboxUids = [(MailAccount *)self primaryMailboxUid];
    [v45 addObject:pushedMailboxUids];
LABEL_43:

    if ([v45 count])
    {
      v60 = @"MailAccountContentsDidChangeUids";
      v61 = v45;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MailAccountContentsDidChange" object:self userInfo:v30];
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
            _notesPrefix = [(IMAPAccount *)self _notesPrefix];
            v39 = [(IMAPAccount *)self _notificationNameForMailbox:v37 withPrefix:_notesPrefix];

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

- (void)_apsDeviceTokenChanged:(id)changed
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__apsDeviceTokenChanged_ name:@"MFAPSManagerDeviceTokenChangedNote" object:0];

    v4 = +[MFAPSManager sharedManager];
    [v4 connect];
  }
}

- (void)_unregisterForDeviceTokenChanges
{
  if ((*(self + 397) & 8) != 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"MFAPSManagerDeviceTokenChangedNote" object:0];

    *(self + 397) &= ~8u;
  }
}

- (void)startListeningForNotifications
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MFUserAgent();
  canRegisterForAPSPush = [v3 canRegisterForAPSPush];

  if (canRegisterForAPSPush)
  {
    v5 = +[MFPowerController sharedInstance];
    isBatterySaverModeEnabled = [v5 isBatterySaverModeEnabled];

    if (isBatterySaverModeEnabled)
    {
      apsTopic = +[IMAPAccount log];
      if (os_log_type_enabled(apsTopic, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(MFAccount *)self identifier];
        v22 = 138543362;
        v23 = identifier;
        _os_log_impl(&dword_1B0389000, apsTopic, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ will NOT start listening for notifications, battery-saver mode is ON", &v22, 0xCu);
      }
    }

    else
    {
      v11 = +[MFPowerController sharedInstance];
      gameModeEnabled = [v11 gameModeEnabled];

      apsTopic = +[IMAPAccount log];
      v13 = os_log_type_enabled(apsTopic, OS_LOG_TYPE_DEFAULT);
      if (gameModeEnabled)
      {
        if (v13)
        {
          identifier2 = [(MFAccount *)self identifier];
          v22 = 138543362;
          v23 = identifier2;
          _os_log_impl(&dword_1B0389000, apsTopic, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ will NOT start listening for notifications, Game Mode is ON", &v22, 0xCu);
        }
      }

      else
      {
        if (v13)
        {
          identifier3 = [(MFAccount *)self identifier];
          v22 = 138543362;
          v23 = identifier3;
          _os_log_impl(&dword_1B0389000, apsTopic, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ told to start listening for notifications", &v22, 0xCu);
        }

        *(self + 397) |= 4u;
        [(MailAccount *)self uniqueIdForPersistentConnection];
        Style = PCSettingsGetStyle();
        canAttemptPushRegistration = [(IMAPAccount *)self canAttemptPushRegistration];
        v18 = canAttemptPushRegistration;
        if (Style)
        {
          v19 = 0;
        }

        else
        {
          v19 = canAttemptPushRegistration;
        }

        if (v19)
        {
          [(IMAPAccount *)self _updatePushedMailboxesAndNotify:1];
          [(IMAPAccount *)self _registerForDeviceTokenChanges];
          apsTopic = [(IMAPAccount *)self apsTopic];
          if (apsTopic)
          {
            v20 = +[MFAPSManager sharedManager];
            [v20 startWatchingForTopic:apsTopic];
          }

          [(IMAPAccount *)self _schedulePushRegistrationConnection];
        }

        else
        {
          apsTopic = +[IMAPAccount log];
          if (os_log_type_enabled(apsTopic, OS_LOG_TYPE_DEFAULT))
          {
            identifier4 = [(MFAccount *)self identifier];
            v22 = 138543874;
            v23 = identifier4;
            v24 = 1024;
            v25 = v18;
            v26 = 1024;
            v27 = Style == 0;
            _os_log_impl(&dword_1B0389000, apsTopic, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ did NOT register for push, can register for push: %{BOOL}d, PCConnectionStyle is push: %{BOOL}d", &v22, 0x18u);
          }
        }
      }
    }
  }

  else
  {
    apsTopic = +[IMAPAccount log];
    if (os_log_type_enabled(apsTopic, OS_LOG_TYPE_DEFAULT))
    {
      identifier5 = [(MFAccount *)self identifier];
      v22 = 138543362;
      v23 = identifier5;
      _os_log_impl(&dword_1B0389000, apsTopic, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ will NOT start listening for notifications, canRegisterForAPSPush returned NO", &v22, 0xCu);
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
    identifier = [(MFAccount *)self identifier];
    v8 = 138543362;
    v9 = identifier;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "#aps-push account %{public}@ told to stop listening for notifications", &v8, 0xCu);
  }

  *(self + 397) &= ~4u;
  v5 = +[MFAPSManager sharedManager];
  apsTopic = [(IMAPAccount *)self apsTopic];
  [v5 stopWatchingForTopic:apsTopic];

  [(IMAPAccount *)self _unregisterForDeviceTokenChanges];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)transferNotificationSessionToAccount:(id)account
{
  accountCopy = account;
  if (accountCopy != self)
  {
    [(IMAPAccount *)self stopListeningForNotifications];
    [(IMAPAccount *)accountCopy startListeningForNotifications];
  }
}

- (id)copyDiagnosticInformation
{
  v12.receiver = self;
  v12.super_class = IMAPAccount;
  copyDiagnosticInformation = [(MFAccount *)&v12 copyDiagnosticInformation];
  v4 = [copyDiagnosticInformation mutableCopy];

  mailboxesRegisteredForPushByHash = [(IMAPAccount *)self mailboxesRegisteredForPushByHash];
  v6 = [mailboxesRegisteredForPushByHash descriptionWithLocale:0 indent:1];

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

- (id)messageActionsAfterActionID:(int64_t)d
{
  library = [(MailAccount *)self library];
  persistence = [library persistence];
  localActionPersistence = [persistence localActionPersistence];
  uRLString = [(MailAccount *)self URLString];
  v9 = [localActionPersistence messageActionsForAccountURL:uRLString previousActionID:d];

  return v9;
}

- (NSDate)credentialExpiryDate
{
  baseAccount = [(MFAccount *)self baseAccount];
  credential = [baseAccount credential];
  expiryDate = [credential expiryDate];

  return expiryDate;
}

- (BOOL)moveSupported
{
  lastKnownCapabilities = [(IMAPAccount *)self lastKnownCapabilities];
  v3 = [lastKnownCapabilities containsObject:@"MOVE"];

  return v3;
}

- (id)replayAction:(id)action
{
  v23 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  mailboxURL = [actionCopy mailboxURL];
  absoluteString = [mailboxURL absoluteString];
  v8 = [MailAccount mailboxUidFromActiveAccountsForURL:absoluteString];

  v9 = [(MailAccount *)self storeForMailboxUid:v8];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      ef_publicDescription = [v8 ef_publicDescription];
      v14 = [v10 stringWithFormat:@"Got store of class %@ for mailbox %@", v12, ef_publicDescription];

      qword_1EB6E7CF0 = [v14 UTF8String];
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"IMAPAccount.m" lineNumber:3338 description:@"Got wrong type of store for mailboxURL"];
    }

    v16 = [v9 replayAction:actionCopy];
  }

  else
  {
    if (v8)
    {
      v17 = +[IMAPAccount log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription2 = [v8 ef_publicDescription];
        *buf = 138412290;
        v22 = ef_publicDescription2;
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
  lastKnownCapabilities = [(IMAPAccount *)self lastKnownCapabilities];
  v3 = [lastKnownCapabilities containsObject:@"X-APPLE-REMOTE-LINKS"];

  return v3;
}

+ (id)imapMailboxURLForAccountID:(id)d pathComponents:(id)components
{
  selfCopy = self;
  dCopy = d;
  componentsCopy = components;
  swift_getObjCClassMetadata();
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](dCopy);
  v29 = &v8 - v28;
  MEMORY[0x1E69E5928](v4);
  MEMORY[0x1E69E5928](componentsCopy);
  if (dCopy)
  {
    v26 = dCopy;
    v21 = dCopy;
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
  if (componentsCopy)
  {
    v18 = componentsCopy;
    v15 = componentsCopy;
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

+ (void)getAccountID:(id *)d pathComponents:(id *)components fromIMAPMailboxURL:(id)l
{
  selfCopy = self;
  dCopy = d;
  componentsCopy = components;
  lCopy = l;
  swift_getObjCClassMetadata();
  v12 = sub_1B0E42E68();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v6 - v15;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](lCopy);
  v18 = &v6 - v17;
  MEMORY[0x1E69E5928](v5);
  if (lCopy)
  {
    v8 = lCopy;
    v7 = lCopy;
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
  sub_1B07508A4(dCopy, componentsCopy, v18);
  sub_1B06E3800(v18);
}

- (void)taskManager
{
  *buf = 138543618;
  *(buf + 4) = self;
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