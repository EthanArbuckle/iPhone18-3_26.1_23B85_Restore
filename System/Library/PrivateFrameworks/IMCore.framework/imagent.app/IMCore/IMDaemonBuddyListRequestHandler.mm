@interface IMDaemonBuddyListRequestHandler
- (void)changeGroup:(id)group changes:(id)changes account:(id)account;
- (void)changeGroups:(id)groups account:(id)account;
- (void)renameGroup:(id)group to:(id)to account:(id)account;
- (void)requestSubscriptionTo:(id)to account:(id)account;
@end

@implementation IMDaemonBuddyListRequestHandler

- (void)changeGroups:(id)groups account:(id)account
{
  groupsCopy = groups;
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
    [v8 changeGroups:groupsCopy];
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

- (void)changeGroup:(id)group changes:(id)changes account:(id)account
{
  groupCopy = group;
  changesCopy = changes;
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
    [v11 changeGroup:groupCopy changes:changesCopy];
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

- (void)renameGroup:(id)group to:(id)to account:(id)account
{
  groupCopy = group;
  toCopy = to;
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
    [v11 renameGroup:groupCopy to:toCopy];
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

- (void)requestSubscriptionTo:(id)to account:(id)account
{
  toCopy = to;
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
    [v8 requestSubscriptionTo:toCopy];
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

@end