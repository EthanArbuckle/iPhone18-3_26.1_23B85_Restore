@interface IMDaemonBuddyListRequestHandler
- (void)changeGroup:(id)a3 changes:(id)a4 account:(id)a5;
- (void)changeGroups:(id)a3 account:(id)a4;
- (void)renameGroup:(id)a3 to:(id)a4 account:(id)a5;
- (void)requestSubscriptionTo:(id)a3 account:(id)a4;
@end

@implementation IMDaemonBuddyListRequestHandler

- (void)changeGroups:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:v6];

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
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:v6];
  v13 = [v12 service];
  v14 = [v13 internalName];
  v8 = [v10 anySessionForServiceName:v14];

  if (v8)
  {
LABEL_7:
    [v8 changeGroups:v5];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)changeGroup:(id)a3 changes:(id)a4 account:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 sessionForAccount:v9];

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
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v19, 0xCu);
    }
  }

  v13 = +[IMDAccountController sharedAccountController];
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 accountForAccountID:v9];
  v16 = [v15 service];
  v17 = [v16 internalName];
  v11 = [v13 anySessionForServiceName:v17];

  if (v11)
  {
LABEL_7:
    [v11 changeGroup:v7 changes:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v19, 0xCu);
    }
  }
}

- (void)renameGroup:(id)a3 to:(id)a4 account:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 sessionForAccount:v9];

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
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v19, 0xCu);
    }
  }

  v13 = +[IMDAccountController sharedAccountController];
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 accountForAccountID:v9];
  v16 = [v15 service];
  v17 = [v16 internalName];
  v11 = [v13 anySessionForServiceName:v17];

  if (v11)
  {
LABEL_7:
    [v11 renameGroup:v7 to:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v19, 0xCu);
    }
  }
}

- (void)requestSubscriptionTo:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:v6];

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
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:v6];
  v13 = [v12 service];
  v14 = [v13 internalName];
  v8 = [v10 anySessionForServiceName:v14];

  if (v8)
  {
LABEL_7:
    [v8 requestSubscriptionTo:v5];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

@end