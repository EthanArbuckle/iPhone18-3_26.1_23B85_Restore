@interface IMDaemonAccountsRequestHandler
- (void)activateAccounts:(id)accounts;
- (void)addAccount:(id)account defaults:(id)defaults service:(id)service;
- (void)addAliases:(id)aliases account:(id)account;
- (void)authenticateAccount:(id)account;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)deactivateAccounts:(id)accounts;
- (void)enrollDeviceForSMSRelay:(id)relay account:(id)account;
- (void)enrollSelfDeviceForSMSRelay:(id)relay;
- (void)passwordUpdatedAccount:(id)account;
- (void)registerAccount:(id)account;
- (void)removeAccount:(id)account;
- (void)removeAliases:(id)aliases account:(id)account;
- (void)setAllowList:(id)list account:(id)account;
- (void)setBlockList:(id)list account:(id)account;
- (void)unEnrollDeviceForSMSRelay:(id)relay account:(id)account;
- (void)unregisterAccount:(id)account;
- (void)unvalidateAliases:(id)aliases account:(id)account;
- (void)updateAuthorizationCredentials:(id)credentials token:(id)token account:(id)account;
- (void)validateAliases:(id)aliases account:(id)account;
- (void)validateProfileAccount:(id)account;
- (void)writeAccount:(id)account defaults:(id)defaults;
@end

@implementation IMDaemonAccountsRequestHandler

- (void)addAccount:(id)account defaults:(id)defaults service:(id)service
{
  accountCopy = account;
  defaultsCopy = defaults;
  serviceCopy = service;
  v9 = +[IMDServiceController sharedController];
  v10 = [v9 serviceWithName:serviceCopy];

  if (v10)
  {
    v11 = [v10 newAccountWithAccountDefaults:defaultsCopy accountID:accountCopy];
    if (v11)
    {
      v12 = +[IMDAccountController sharedAccountController];
      [v12 addAccount:v11];
    }
  }
}

- (void)removeAccount:(id)account
{
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = accountCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Removing account: %@", &v8, 0xCu);
    }
  }

  v5 = +[IMDAccountController sharedAccountController];
  v6 = [v5 accountForAccountID:accountCopy];

  if (v6)
  {
    v7 = +[IMDAccountController sharedAccountController];
    [v7 removeAccount:v6];
  }
}

- (void)activateAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = accountsCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Activating accounts: %@", &v6, 0xCu);
    }
  }

  v5 = +[IMDAccountController sharedAccountController];
  [v5 activateAccounts:accountsCopy];
}

- (void)deactivateAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = accountsCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deactivating accounts: %@", &v6, 0xCu);
    }
  }

  v5 = +[IMDAccountController sharedAccountController];
  [v5 deactivateAccounts:accountsCopy];
}

- (void)writeAccount:(id)account defaults:(id)defaults
{
  defaultsCopy = defaults;
  accountCopy = account;
  v8 = +[IMDAccountController sharedAccountController];
  v7 = [v8 accountForAccountID:accountCopy];

  [v7 writeAccountDefaults:defaultsCopy];
}

- (void)authenticateAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:accountCopy];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:accountCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

  if (v5)
  {
LABEL_7:
    [v5 authenticateAccount:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)registerAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:accountCopy];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:accountCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

  if (v5)
  {
LABEL_7:
    [v5 registerAccount:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)unregisterAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:accountCopy];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:accountCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

  if (v5)
  {
LABEL_7:
    [v5 unregisterAccount:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)updateAuthorizationCredentials:(id)credentials token:(id)token account:(id)account
{
  credentialsCopy = credentials;
  tokenCopy = token;
  accountCopy = account;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 sessionForAccount:accountCopy];

  if (v11)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v19, 0xCu);
    }
  }

  v13 = +[IMDAccountController sharedAccountController];
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 accountForAccountID:accountCopy];
  service = [v15 service];
  internalName = [service internalName];
  v11 = [v13 anySessionForServiceName:internalName];

  if (v11)
  {
LABEL_7:
    [v11 updateAuthorizationCredentials:credentialsCopy token:tokenCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = accountCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v19, 0xCu);
    }
  }
}

- (void)setAllowList:(id)list account:(id)account
{
  listCopy = list;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 setAllowList:listCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)setBlockList:(id)list account:(id)account
{
  listCopy = list;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 setBlockList:listCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)passwordUpdatedAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:accountCopy];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:accountCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

  if (v5)
  {
LABEL_7:
    [v5 passwordUpdatedWithAccount:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)addAliases:(id)aliases account:(id)account
{
  aliasesCopy = aliases;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 addAliases:aliasesCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)removeAliases:(id)aliases account:(id)account
{
  aliasesCopy = aliases;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 removeAliases:aliasesCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)validateAliases:(id)aliases account:(id)account
{
  aliasesCopy = aliases;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 validateAliases:aliasesCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)unvalidateAliases:(id)aliases account:(id)account
{
  aliasesCopy = aliases;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 unvalidateAliases:aliasesCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)validateProfileAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:accountCopy];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:accountCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

  if (v5)
  {
LABEL_7:
    [v5 validateProfileWithAccount:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)enrollDeviceForSMSRelay:(id)relay account:(id)account
{
  relayCopy = relay;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 enrollDeviceInSMSRelay:relayCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)unEnrollDeviceForSMSRelay:(id)relay account:(id)account
{
  relayCopy = relay;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 unEnrollDeviceInSMSRelay:relayCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)enrollSelfDeviceForSMSRelay:(id)relay
{
  relayCopy = relay;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:relayCopy];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = relayCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:relayCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

  if (v5)
  {
LABEL_7:
    [v5 enrollSelfDeviceInSMSRelay];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = relayCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  swift_unknownObjectRetain();
  selfCopy = self;
  IMDaemonAccountsRequestHandler.calculateReachability(with:responseHandler:)(requestCopy, handler);

  swift_unknownObjectRelease();
}

@end