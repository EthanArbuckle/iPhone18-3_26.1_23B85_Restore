@interface POPAccount
- (Class)connectionClass;
- (Class)storeClassForMailbox:(id)mailbox;
- (POPAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (id)_createNewConnection;
- (id)_getCachedConnection;
- (id)authenticatedConnection;
- (id)mailboxUidOfType:(int64_t)type createIfNeeded:(BOOL)needed;
- (int64_t)fetchNumNewMessages:(unint64_t)messages oldMessages:(unint64_t)oldMessages preservingUID:(id)d withStore:(id)store;
- (int64_t)messageDeletionPolicy;
- (unint64_t)connectionsInUse;
- (unsigned)delayedMessageDeletionInterval;
- (void)_deleteHook;
- (void)checkInConnection:(id)connection currentUIDs:(id)ds;
- (void)closeCachedConnectionForcedOnly:(id)only;
- (void)closeConnection:(id)connection andSaveUIDs:(id)ds;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)scheduleDisconnect;
- (void)setMessageDeletionPolicy:(int64_t)policy;
- (void)setNewestKnownMessageUID:(id)d;
- (void)setOldestKnownMessageUID:(id)d;
- (void)setPreferredAuthScheme:(id)scheme;
@end

@implementation POPAccount

- (POPAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  libraryCopy = library;
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = POPAccount;
  v8 = [(POPAccount *)&v14 initWithLibrary:libraryCopy persistentAccount:accountCopy];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"connectionActivityLock" andDelegate:v8];
    connectionActivityLock = v8->_connectionActivityLock;
    v8->_connectionActivityLock = v9;

    v8->_shouldAttemptAPOP = 1;
    v8->_connectionTimeout = 120.0;
    v11 = [objc_alloc(MEMORY[0x277D24EF0]) initWithName:@"sharedConnection" condition:0 andDelegate:v8];
    sharedConnectionCondition = v8->_sharedConnectionCondition;
    v8->_sharedConnectionCondition = v11;
  }

  return v8;
}

- (int64_t)fetchNumNewMessages:(unint64_t)messages oldMessages:(unint64_t)oldMessages preservingUID:(id)d withStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  storeCopy = store;
  primaryMailboxUid = [(POPAccount *)self primaryMailboxUid];

  if (primaryMailboxUid)
  {
    v13 = [MFPOP3Fetcher fetchWithAccount:self newMessages:messages oldMessages:oldMessages preservingUID:dCopy withStore:storeCopy];
    currentMonitor = [MEMORY[0x277D281F0] currentMonitor];
    [currentMonitor reset];

    fetchMonitor = self->_fetchMonitor;
    self->_fetchMonitor = 0;
  }

  else
  {
    fetchMonitor = MFLogGeneral();
    if (os_log_type_enabled(fetchMonitor, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_258B68000, fetchMonitor, OS_LOG_TYPE_INFO, "POP fetch failed because INBOX store could not be created", v18, 2u);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)releaseAllConnections
{
  [(POPAccount *)self closeCachedConnection];
  v3.receiver = self;
  v3.super_class = POPAccount;
  [(MFAccount *)&v3 releaseAllConnections];
}

- (void)releaseAllForcedConnections
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [(POPAccount *)self closeCachedConnectionForcedOnly:v3];

  v4.receiver = self;
  v4.super_class = POPAccount;
  [(MFAccount *)&v4 releaseAllForcedConnections];
}

- (Class)storeClassForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  primaryMailboxUid = [(POPAccount *)self primaryMailboxUid];

  v6 = off_2798AFD10;
  if (primaryMailboxUid != mailboxCopy)
  {
    v6 = 0x277D28228;
  }

  v7 = *v6;
  v8 = objc_opt_class();
  v9 = v8;

  return v8;
}

- (Class)connectionClass
{
  v4.receiver = self;
  v4.super_class = POPAccount;
  connectionClass = [(MFAccount *)&v4 connectionClass];
  if (!connectionClass)
  {
    connectionClass = objc_opt_class();
  }

  return connectionClass;
}

- (void)setPreferredAuthScheme:(id)scheme
{
  schemeCopy = scheme;
  v7.receiver = self;
  v7.super_class = POPAccount;
  [(MFAccount *)&v7 setPreferredAuthScheme:schemeCopy];
  name = [schemeCopy name];
  v6 = [name isEqualToString:*MEMORY[0x277D06F20]];

  if (v6)
  {
    self->_shouldAttemptAPOP = 0;
  }
}

- (void)setMessageDeletionPolicy:(int64_t)policy
{
  [(POPAccount *)self mf_lock];
  if ((policy - 1) > 2)
  {
    v5 = @"Never";
  }

  else
  {
    v5 = off_2798AFF90[policy - 1];
  }

  [(MFAccount *)self setAccountProperty:v5 forKey:@"DeletionPolicy"];
  [(POPAccount *)self mf_unlock];

  [(MFAccount *)self _queueAccountInfoDidChange];
}

- (int64_t)messageDeletionPolicy
{
  [(POPAccount *)self mf_lock];
  v3 = [(MFAccount *)self accountPropertyForKey:@"DeletionPolicy"];
  [(POPAccount *)self mf_unlock];
  if ([v3 isEqualToString:@"RightAway"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AfterInterval"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WhenTransferredOutOfInbox"])
  {
    v4 = 3;
  }

  else
  {
    if (([v3 isEqualToString:@"Never"] & 1) == 0)
    {
      [(POPAccount *)self mf_lock];
      [(MFAccount *)self setAccountProperty:@"Never" forKey:@"DeletionPolicy"];
      [(POPAccount *)self mf_unlock];
    }

    v4 = 0;
  }

  return v4;
}

- (unsigned)delayedMessageDeletionInterval
{
  [(POPAccount *)self mf_lock];
  v3 = [(MFAccount *)self accountPropertyForKey:@"DeleteMessagesOnServerInterval"];
  [(POPAccount *)self mf_unlock];
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 7;
  }

  return intValue;
}

- (void)setOldestKnownMessageUID:(id)d
{
  dCopy = d;
  v4 = [dCopy copy];
  oldestMessageUID = self->_oldestMessageUID;
  self->_oldestMessageUID = v4;
}

- (void)setNewestKnownMessageUID:(id)d
{
  dCopy = d;
  v4 = [dCopy copy];
  newestMessageUID = self->_newestMessageUID;
  self->_newestMessageUID = v4;
}

- (void)_deleteHook
{
  library = [(POPAccount *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[POPAccount _deleteHook]", "POPAccount.m", 294, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  v4 = objc_alloc(MEMORY[0x277D28268]);
  library2 = [(POPAccount *)self library];
  uRLString = [(POPAccount *)self URLString];
  v7 = [v4 initWithLibrary:library2 URLString:uRLString];

  [v7 deleteAllUIDs];
}

- (unint64_t)connectionsInUse
{
  [(POPAccount *)self mf_lock];
  connectionsInUse = self->_connectionsInUse;
  [(POPAccount *)self mf_unlock];
  return connectionsInUse;
}

- (id)_getCachedConnection
{
  [(POPAccount *)self mf_lock];
  v3 = self->_connection;
  connection = self->_connection;
  self->_connection = 0;

  if (v3)
  {
    if ([(MFPOP3Connection *)v3 doStat])
    {
      [(MFConnection *)v3 disconnect];

      v3 = 0;
    }

    else
    {
      ++self->_connectionsInUse;
    }
  }

  [(POPAccount *)self mf_unlock];

  return v3;
}

- (id)_createNewConnection
{
  v5.receiver = self;
  v5.super_class = POPAccount;
  authenticatedConnection = [(MFAccount *)&v5 authenticatedConnection];
  if (authenticatedConnection)
  {
    [(POPAccount *)self mf_lock];
    ++self->_connectionsInUse;
    [(POPAccount *)self mf_unlock];
  }

  return authenticatedConnection;
}

- (id)authenticatedConnection
{
  for (i = [(POPAccount *)self _getCachedConnection];
  {
    i = [(POPAccount *)self _createNewConnection];
    if (i)
    {
      break;
    }

    [(POPAccount *)self mf_lock];
    if (!self->_connectionsInUse && !self->_connection)
    {
      v4 = 0;
      [(POPAccount *)self mf_unlock];
      goto LABEL_3;
    }

    [(POPAccount *)self mf_unlock];
    [(NSConditionLock *)self->_sharedConnectionCondition lockWhenCondition:0];
    [(NSConditionLock *)self->_sharedConnectionCondition unlock];
    [(POPAccount *)self _getCachedConnection];
  }

  v4 = i;
  [(NSConditionLock *)self->_sharedConnectionCondition lock];
  [(NSConditionLock *)self->_sharedConnectionCondition unlockWithCondition:1];
LABEL_3:

  return v4;
}

- (void)checkInConnection:(id)connection currentUIDs:(id)ds
{
  connectionCopy = connection;
  dsCopy = ds;
  [(POPAccount *)self mf_lock];
  connectionsInUse = self->_connectionsInUse;
  if (connectionsInUse)
  {
    self->_connectionsInUse = connectionsInUse - 1;
  }

  connection = self->_connection;
  if (connection == connectionCopy)
  {
    v13 = 0;
    if (!dsCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!connectionCopy)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  mEMORY[0x277D28258] = [MEMORY[0x277D28258] sharedInstance];
  if (([mEMORY[0x277D28258] isFatPipe] & 1) == 0)
  {

    goto LABEL_12;
  }

  isCellularConnection = [(MFConnection *)connectionCopy isCellularConnection];

  if (!isCellularConnection)
  {
LABEL_12:
    v12 = connectionCopy;
    v13 = 1;
    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
LABEL_13:
  connection = self->_connection;
LABEL_14:
  self->_connection = v12;

  if (!dsCopy)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (self->_currentUIDs != dsCopy)
  {
    v14 = [(NSArray *)dsCopy copy];
    currentUIDs = self->_currentUIDs;
    self->_currentUIDs = v14;
  }

LABEL_17:
  [(POPAccount *)self mf_unlock];
  [(NSConditionLock *)self->_sharedConnectionCondition lock];
  [(NSConditionLock *)self->_sharedConnectionCondition unlockWithCondition:0];
  if (v13)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__POPAccount_checkInConnection_currentUIDs___block_invoke;
    v17[3] = &unk_2798AFF70;
    v17[4] = self;
    mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
    [mainThreadScheduler performBlock:v17];
  }
}

- (id)mailboxUidOfType:(int64_t)type createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v8.receiver = self;
  v8.super_class = POPAccount;
  v6 = [(POPAccount *)&v8 mailboxUidOfType:type createIfNeeded:?];
  if (neededCopy)
  {
    [(POPAccount *)self saveState];
  }

  return v6;
}

- (void)scheduleDisconnect
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_closeCachedConnection object:0];
  connectionTimeout = self->_connectionTimeout;

  [(POPAccount *)self performSelector:sel_closeCachedConnection withObject:0 afterDelay:connectionTimeout];
}

- (void)closeConnection:(id)connection andSaveUIDs:(id)ds
{
  connectionCopy = connection;
  dsCopy = ds;
  if (connectionCopy)
  {
    isFetching = [connectionCopy isFetching];
    if ([connectionCopy quit])
    {
      v8 = self->_connectionTimeout * 0.5;
    }

    else
    {
      if (dsCopy)
      {
        library = [(POPAccount *)self library];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __assert_rtn("[POPAccount closeConnection:andSaveUIDs:]", "POPAccount.m", 435, "[library isKindOfClass:[MFMailMessageLibrary class]]");
        }

        v10 = objc_alloc(MEMORY[0x277D28268]);
        uRLString = [(POPAccount *)self URLString];
        v12 = [v10 initWithLibrary:library URLString:uRLString];

        [v12 deleteUIDsNotInArray:dsCopy];
      }

      v8 = fminf(self->_connectionTimeout + self->_connectionTimeout, 600.0);
    }

    self->_connectionTimeout = v8;
    if (isFetching)
    {
      v13 = MFUserAgent();
      [v13 autofetchAccount:self mailboxUid:0];
    }
  }
}

- (void)closeCachedConnectionForcedOnly:(id)only
{
  [(POPAccount *)self mf_lock];
  connection = self->_connection;
  if (connection)
  {
    if (!only)
    {
LABEL_5:
      v12 = connection;
      v6 = self->_connection;
      self->_connection = 0;

      v7 = self->_currentUIDs;
      currentUIDs = self->_currentUIDs;
      self->_currentUIDs = 0;

      connectionsInUse = self->_connectionsInUse;
      if (connectionsInUse)
      {
        self->_connectionsInUse = connectionsInUse - 1;
      }

      [(POPAccount *)self mf_unlock];
      [(NSConditionLock *)self->_sharedConnectionCondition lock];
      [(NSConditionLock *)self->_sharedConnectionCondition unlockWithCondition:0];
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        mEMORY[0x277D28218] = [MEMORY[0x277D28218] sharedInvocationQueue];
        v11 = [MEMORY[0x277D28250] mf_invocationWithSelector:sel_closeConnection_andSaveUIDs_ target:self object1:v12 object2:v7];
        [mEMORY[0x277D28218] addInvocation:v11];
      }

      else
      {
        [(POPAccount *)self closeConnection:v12 andSaveUIDs:v7];
      }

      return;
    }

    if ([(MFConnection *)connection isCellularConnection])
    {
      connection = self->_connection;
      goto LABEL_5;
    }
  }

  [(POPAccount *)self mf_unlock];
}

@end