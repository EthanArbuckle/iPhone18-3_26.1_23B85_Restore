@interface IMDaemonManageStatusRequestHandler
- (void)autoLoginAccount:(id)a3;
- (void)autoLoginActiveAccountsIfNecessary;
- (void)autoReconnectAccount:(id)a3;
- (void)loginAccount:(id)a3;
- (void)loginAllAccounts;
- (void)logoutAccount:(id)a3;
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
  v4 = [v3 activeSessions];
  [v4 makeObjectsPerformSelector:"autoLogin"];
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
  v4 = [v3 activeSessions];
  [v4 makeObjectsPerformSelector:"login"];
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
  v4 = [v3 activeSessions];
  [v4 makeObjectsPerformSelector:"logout"];
}

- (void)autoLoginAccount:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:v3];

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
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:v3];
  v10 = [v9 service];
  v11 = [v10 internalName];
  v5 = [v7 anySessionForServiceName:v11];

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
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)autoReconnectAccount:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:v3];

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
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:v3];
  v10 = [v9 service];
  v11 = [v10 internalName];
  v5 = [v7 anySessionForServiceName:v11];

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
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)loginAccount:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:v3];

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
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:v3];
  v10 = [v9 service];
  v11 = [v10 internalName];
  v5 = [v7 anySessionForServiceName:v11];

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
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)logoutAccount:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:v3];

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
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:v3];
  v10 = [v9 service];
  v11 = [v10 internalName];
  v5 = [v7 anySessionForServiceName:v11];

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
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

@end