@interface FTRegAccountMonitor
- (BOOL)_shouldHandleAccountNofication:(id)a3;
- (FTRegAccountMonitor)initWithServiceType:(int64_t)a3;
- (id)_activeAccounts;
- (id)logName;
- (void)_handleAccountNotification:(id)a3;
- (void)_handleDaemonConnected:(id)a3;
- (void)_startListeningForNotifications;
- (void)_stopListeningForNotifications;
- (void)_updateAccountState:(BOOL)a3;
- (void)dealloc;
@end

@implementation FTRegAccountMonitor

- (FTRegAccountMonitor)initWithServiceType:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = FTRegAccountMonitor;
  v4 = [(FTRegAccountMonitor *)&v13 init];
  if (v4)
  {
    v5 = FTCServiceNameForServiceType();
    v6 = [MEMORY[0x277D18DE0] serviceWithInternalName:v5];
    if (!v6)
    {

      v10 = 0;
      goto LABEL_11;
    }

    [(FTRegAccountMonitor *)v4 setServiceType:a3];
    [(FTRegAccountMonitor *)v4 setService:v6];
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Creating monitor with service: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v8 = [[FTRegConnectionHandler alloc] initWithServiceType:a3 name:@"AccountMonitor"];
    connectionHandler = v4->_connectionHandler;
    v4->_connectionHandler = v8;

    [(FTRegAccountMonitor *)v4 _startListeningForNotifications];
    [(FTRegAccountMonitor *)v4 _updateAccountState:0];
  }

  v10 = v4;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FTRegAccountMonitor;
  [(FTRegAccountMonitor *)&v4 dealloc];
}

- (id)logName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(FTRegAccountMonitor *)self service];
  v4 = [v3 name];
  v5 = [v2 stringWithFormat:@"AccountMonitor[%@]", v4];

  return v5;
}

- (id)_activeAccounts
{
  v3 = [MEMORY[0x277D18D28] sharedInstance];
  v4 = [(FTRegAccountMonitor *)self service];
  v5 = [v3 activeAccountsForService:v4];
  v6 = [v5 copy];

  v7 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_14];
  v8 = [v6 objectsAtIndexes:v7];
  v9 = [v8 copy];

  return v9;
}

uint64_t __38__FTRegAccountMonitor__activeAccounts__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 CNFRegSignInComplete] && (objc_msgSend(v2, "accountType") != 1 || objc_msgSend(v2, "profileValidationStatus") == 3))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [v2 aliases];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([v2 validationStatusForAlias:*(*(&v9 + 1) + 8 * i)] == 3)
          {
            v4 = 1;
            goto LABEL_15;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_updateAccountState:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Updating account state", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogIndent();
  if ([(FTRegConnectionHandler *)self->_connectionHandler isConnectedToDaemon])
  {
    v6 = [(FTRegAccountMonitor *)self _activeAccounts];
    v7 = [v6 count];
    if (v7 == [(NSArray *)self->_accounts count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = self->_accounts;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v10 |= [v6 containsObject:*(*(&v21 + 1) + 8 * i)] ^ 1;
          }

          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v9);

        if (v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v19, OS_LOG_TYPE_DEFAULT, "No change in accounts", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_36;
    }

LABEL_16:
    v13 = [v6 copy];
    accounts = self->_accounts;
    self->_accounts = v13;

    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (v3)
      {
        v16 = @"YES";
      }

      *buf = 138412290;
      v26 = v16;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Accounts changed, posting: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    if (v3)
    {
      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      [v17 postNotificationName:@"FTRegActiveAccountsChangedNotification" object:self userInfo:0];
    }

LABEL_36:

    goto LABEL_37;
  }

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_DEFAULT, "Not updating because we aren't connected", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

LABEL_37:
  CNFRegLogOutdent();
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldHandleAccountNofication:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 object];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 service];
    v6 = [(FTRegAccountMonitor *)self service];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_startListeningForNotifications
{
  if ((*&self->_monitorFlags & 1) == 0)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel__handleDaemonConnected_ name:*MEMORY[0x277D18CE0] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C18] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C20] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18CA8] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18BF8] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18BA8] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C48] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C58] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C08] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C10] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18B98] object:0];
    [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C28] object:0];
    *&self->_monitorFlags |= 1u;
  }
}

- (void)_stopListeningForNotifications
{
  if (*&self->_monitorFlags)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277D18CE0] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18C18] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18C20] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18CA8] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18BF8] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18BA8] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18C48] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18C58] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18C08] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18C10] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18B98] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18C28] object:0];
    *&self->_monitorFlags &= ~1u;
  }
}

- (void)_handleAccountNotification:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(FTRegAccountMonitor *)self _shouldHandleAccountNofication:v4])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 name];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Updating account due to notification: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v8 = [v4 name];
      IMLogString();
    }

    CNFRegLogIndent();
    [(FTRegAccountMonitor *)self _updateAccountState:1];
    CNFRegLogOutdent();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleDaemonConnected:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Connected to daemon", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(FTRegAccountMonitor *)self _updateAccountState:1];
}

@end