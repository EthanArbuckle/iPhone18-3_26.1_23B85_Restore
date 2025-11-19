@interface POPAccount
- (Class)connectionClass;
- (Class)storeClassForMailbox:(id)a3;
- (POPAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (id)_createNewConnection;
- (id)_getCachedConnection;
- (id)authenticatedConnection;
- (id)mailboxUidOfType:(int64_t)a3 createIfNeeded:(BOOL)a4;
- (int64_t)fetchNumNewMessages:(unint64_t)a3 oldMessages:(unint64_t)a4 preservingUID:(id)a5 withStore:(id)a6;
- (int64_t)messageDeletionPolicy;
- (unint64_t)connectionsInUse;
- (unsigned)delayedMessageDeletionInterval;
- (void)_deleteHook;
- (void)checkInConnection:(id)a3 currentUIDs:(id)a4;
- (void)closeCachedConnectionForcedOnly:(id)a3;
- (void)closeConnection:(id)a3 andSaveUIDs:(id)a4;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)scheduleDisconnect;
- (void)setMessageDeletionPolicy:(int64_t)a3;
- (void)setNewestKnownMessageUID:(id)a3;
- (void)setOldestKnownMessageUID:(id)a3;
- (void)setPreferredAuthScheme:(id)a3;
@end

@implementation POPAccount

- (POPAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = POPAccount;
  v8 = [(POPAccount *)&v14 initWithLibrary:v6 persistentAccount:v7];
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

- (int64_t)fetchNumNewMessages:(unint64_t)a3 oldMessages:(unint64_t)a4 preservingUID:(id)a5 withStore:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = [(POPAccount *)self primaryMailboxUid];

  if (v12)
  {
    v13 = [MFPOP3Fetcher fetchWithAccount:self newMessages:a3 oldMessages:a4 preservingUID:v10 withStore:v11];
    v14 = [MEMORY[0x277D281F0] currentMonitor];
    [v14 reset];

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

- (Class)storeClassForMailbox:(id)a3
{
  v4 = a3;
  v5 = [(POPAccount *)self primaryMailboxUid];

  v6 = off_2798AFD10;
  if (v5 != v4)
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
  v2 = [(MFAccount *)&v4 connectionClass];
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (void)setPreferredAuthScheme:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = POPAccount;
  [(MFAccount *)&v7 setPreferredAuthScheme:v4];
  v5 = [v4 name];
  v6 = [v5 isEqualToString:*MEMORY[0x277D06F20]];

  if (v6)
  {
    self->_shouldAttemptAPOP = 0;
  }
}

- (void)setMessageDeletionPolicy:(int64_t)a3
{
  [(POPAccount *)self mf_lock];
  if ((a3 - 1) > 2)
  {
    v5 = @"Never";
  }

  else
  {
    v5 = off_2798AFF90[a3 - 1];
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
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 7;
  }

  return v4;
}

- (void)setOldestKnownMessageUID:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  oldestMessageUID = self->_oldestMessageUID;
  self->_oldestMessageUID = v4;
}

- (void)setNewestKnownMessageUID:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  newestMessageUID = self->_newestMessageUID;
  self->_newestMessageUID = v4;
}

- (void)_deleteHook
{
  v3 = [(POPAccount *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[POPAccount _deleteHook]", "POPAccount.m", 294, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  v4 = objc_alloc(MEMORY[0x277D28268]);
  v5 = [(POPAccount *)self library];
  v6 = [(POPAccount *)self URLString];
  v7 = [v4 initWithLibrary:v5 URLString:v6];

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
  v3 = [(MFAccount *)&v5 authenticatedConnection];
  if (v3)
  {
    [(POPAccount *)self mf_lock];
    ++self->_connectionsInUse;
    [(POPAccount *)self mf_unlock];
  }

  return v3;
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

- (void)checkInConnection:(id)a3 currentUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(POPAccount *)self mf_lock];
  connectionsInUse = self->_connectionsInUse;
  if (connectionsInUse)
  {
    self->_connectionsInUse = connectionsInUse - 1;
  }

  connection = self->_connection;
  if (connection == v6)
  {
    v13 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v10 = [MEMORY[0x277D28258] sharedInstance];
  if (([v10 isFatPipe] & 1) == 0)
  {

    goto LABEL_12;
  }

  v11 = [(MFConnection *)v6 isCellularConnection];

  if (!v11)
  {
LABEL_12:
    v12 = v6;
    v13 = 1;
    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
LABEL_13:
  connection = self->_connection;
LABEL_14:
  self->_connection = v12;

  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (self->_currentUIDs != v7)
  {
    v14 = [(NSArray *)v7 copy];
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
    v16 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v16 performBlock:v17];
  }
}

- (id)mailboxUidOfType:(int64_t)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = POPAccount;
  v6 = [(POPAccount *)&v8 mailboxUidOfType:a3 createIfNeeded:?];
  if (v4)
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

- (void)closeConnection:(id)a3 andSaveUIDs:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    v7 = [v14 isFetching];
    if ([v14 quit])
    {
      v8 = self->_connectionTimeout * 0.5;
    }

    else
    {
      if (v6)
      {
        v9 = [(POPAccount *)self library];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __assert_rtn("[POPAccount closeConnection:andSaveUIDs:]", "POPAccount.m", 435, "[library isKindOfClass:[MFMailMessageLibrary class]]");
        }

        v10 = objc_alloc(MEMORY[0x277D28268]);
        v11 = [(POPAccount *)self URLString];
        v12 = [v10 initWithLibrary:v9 URLString:v11];

        [v12 deleteUIDsNotInArray:v6];
      }

      v8 = fminf(self->_connectionTimeout + self->_connectionTimeout, 600.0);
    }

    self->_connectionTimeout = v8;
    if (v7)
    {
      v13 = MFUserAgent();
      [v13 autofetchAccount:self mailboxUid:0];
    }
  }
}

- (void)closeCachedConnectionForcedOnly:(id)a3
{
  [(POPAccount *)self mf_lock];
  connection = self->_connection;
  if (connection)
  {
    if (!a3)
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
        v10 = [MEMORY[0x277D28218] sharedInvocationQueue];
        v11 = [MEMORY[0x277D28250] mf_invocationWithSelector:sel_closeConnection_andSaveUIDs_ target:self object1:v12 object2:v7];
        [v10 addInvocation:v11];
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