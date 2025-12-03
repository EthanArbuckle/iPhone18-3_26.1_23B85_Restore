@interface IMDaemonManageStatusRequestHandler
- (void)autoLoginAccount:(id)account;
- (void)autoLoginActiveAccountsIfNecessary;
- (void)autoReconnectAccount:(id)account;
- (void)loginAccount:(id)account;
- (void)loginAllAccounts;
- (void)logoutAccount:(id)account;
- (void)logoutAllAccounts;
@end

@implementation IMDaemonManageStatusRequestHandler

- (void)autoLoginActiveAccountsIfNecessary
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Request to auto log in all accounts", v5, 2u);
    }
  }

  v3 = +[IMDAccountController sharedAccountController];
  activeSessions = [v3 activeSessions];
  [activeSessions makeObjectsPerformSelector:"autoLogin"];
}

- (void)loginAllAccounts
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Request to log in all accounts", v5, 2u);
    }
  }

  v3 = +[IMDAccountController sharedAccountController];
  activeSessions = [v3 activeSessions];
  [activeSessions makeObjectsPerformSelector:"login"];
}

- (void)logoutAllAccounts
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Request to log out all accounts", v5, 2u);
    }
  }

  v3 = +[IMDAccountController sharedAccountController];
  activeSessions = [v3 activeSessions];
  [activeSessions makeObjectsPerformSelector:"logout"];
}

- (void)autoLoginAccount:(id)account
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
    [v5 autoLogin];
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

- (void)autoReconnectAccount:(id)account
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
    [v5 autoReconnect];
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

- (void)loginAccount:(id)account
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
    [v5 login];
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

- (void)logoutAccount:(id)account
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
    [v5 logout];
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

@end