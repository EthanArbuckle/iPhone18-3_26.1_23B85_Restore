@interface IMDaemonVCACRequestHandler
- (void)cancelVCRequestWithPerson:(id)person properties:(id)properties conference:(id)conference reason:(id)reason account:(id)account;
- (void)relay:(id)relay sendCancel:(id)cancel toPerson:(id)person account:(id)account;
- (void)relay:(id)relay sendInitateRequest:(id)request toPerson:(id)person account:(id)account;
- (void)relay:(id)relay sendUpdate:(id)update toPerson:(id)person account:(id)account;
- (void)requestVCWithPerson:(id)person properties:(id)properties conference:(id)conference account:(id)account;
- (void)respondToVCInvitationWithPerson:(id)person properties:(id)properties conference:(id)conference account:(id)account;
- (void)sendAVMessageToPerson:(id)person sessionID:(unsigned int)d type:(unsigned int)type userInfo:(id)info conference:(id)conference account:(id)account;
- (void)sendCounterProposalToPerson:(id)person properties:(id)properties conference:(id)conference account:(id)account;
- (void)sendVCUpdate:(id)update toPerson:(id)person conference:(id)conference account:(id)account;
@end

@implementation IMDaemonVCACRequestHandler

- (void)relay:(id)relay sendInitateRequest:(id)request toPerson:(id)person account:(id)account
{
  relayCopy = relay;
  requestCopy = request;
  personCopy = person;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 relay:relayCopy sendInitateRequest:requestCopy toPerson:personCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)relay:(id)relay sendUpdate:(id)update toPerson:(id)person account:(id)account
{
  relayCopy = relay;
  updateCopy = update;
  personCopy = person;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 relay:relayCopy sendUpdate:updateCopy toPerson:personCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)relay:(id)relay sendCancel:(id)cancel toPerson:(id)person account:(id)account
{
  relayCopy = relay;
  cancelCopy = cancel;
  personCopy = person;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 relay:relayCopy sendCancel:cancelCopy toPerson:personCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)requestVCWithPerson:(id)person properties:(id)properties conference:(id)conference account:(id)account
{
  personCopy = person;
  propertiesCopy = properties;
  conferenceCopy = conference;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 requestVCWithPerson:personCopy properties:propertiesCopy conference:conferenceCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)respondToVCInvitationWithPerson:(id)person properties:(id)properties conference:(id)conference account:(id)account
{
  personCopy = person;
  propertiesCopy = properties;
  conferenceCopy = conference;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 respondToVCInvitationWithPerson:personCopy properties:propertiesCopy conference:conferenceCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)cancelVCRequestWithPerson:(id)person properties:(id)properties conference:(id)conference reason:(id)reason account:(id)account
{
  personCopy = person;
  propertiesCopy = properties;
  conferenceCopy = conference;
  reasonCopy = reason;
  accountCopy = account;
  v15 = +[IMDAccountController sharedAccountController];
  v16 = [v15 sessionForAccount:accountCopy];

  if (v16)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = accountCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v18 = +[IMDAccountController sharedAccountController];
  v19 = +[IMDAccountController sharedAccountController];
  v20 = [v19 accountForAccountID:accountCopy];
  service = [v20 service];
  internalName = [service internalName];
  v16 = [v18 anySessionForServiceName:internalName];

  if (v16)
  {
LABEL_7:
    [v16 cancelVCRequestWithPerson:personCopy properties:propertiesCopy conference:conferenceCopy reason:reasonCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = accountCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendCounterProposalToPerson:(id)person properties:(id)properties conference:(id)conference account:(id)account
{
  personCopy = person;
  propertiesCopy = properties;
  conferenceCopy = conference;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 sendCounterProposalToPerson:personCopy properties:propertiesCopy conference:conferenceCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)sendVCUpdate:(id)update toPerson:(id)person conference:(id)conference account:(id)account
{
  updateCopy = update;
  personCopy = person;
  conferenceCopy = conference;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 sendVCUpdate:updateCopy toPerson:personCopy conference:conferenceCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)sendAVMessageToPerson:(id)person sessionID:(unsigned int)d type:(unsigned int)type userInfo:(id)info conference:(id)conference account:(id)account
{
  personCopy = person;
  infoCopy = info;
  conferenceCopy = conference;
  accountCopy = account;
  v15 = +[IMDAccountController sharedAccountController];
  v16 = [v15 sessionForAccount:accountCopy];

  if (v16)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = accountCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v18 = +[IMDAccountController sharedAccountController];
  v19 = +[IMDAccountController sharedAccountController];
  v20 = [v19 accountForAccountID:accountCopy];
  service = [v20 service];
  internalName = [service internalName];
  v16 = [v18 anySessionForServiceName:internalName];

  if (v16)
  {
LABEL_7:
    [v16 sendAVMessageToPerson:personCopy sessionID:d type:type userInfo:infoCopy conference:conferenceCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = accountCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

@end