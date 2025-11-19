@interface IMDaemonVCACRequestHandler
- (void)cancelVCRequestWithPerson:(id)a3 properties:(id)a4 conference:(id)a5 reason:(id)a6 account:(id)a7;
- (void)relay:(id)a3 sendCancel:(id)a4 toPerson:(id)a5 account:(id)a6;
- (void)relay:(id)a3 sendInitateRequest:(id)a4 toPerson:(id)a5 account:(id)a6;
- (void)relay:(id)a3 sendUpdate:(id)a4 toPerson:(id)a5 account:(id)a6;
- (void)requestVCWithPerson:(id)a3 properties:(id)a4 conference:(id)a5 account:(id)a6;
- (void)respondToVCInvitationWithPerson:(id)a3 properties:(id)a4 conference:(id)a5 account:(id)a6;
- (void)sendAVMessageToPerson:(id)a3 sessionID:(unsigned int)a4 type:(unsigned int)a5 userInfo:(id)a6 conference:(id)a7 account:(id)a8;
- (void)sendCounterProposalToPerson:(id)a3 properties:(id)a4 conference:(id)a5 account:(id)a6;
- (void)sendVCUpdate:(id)a3 toPerson:(id)a4 conference:(id)a5 account:(id)a6;
@end

@implementation IMDaemonVCACRequestHandler

- (void)relay:(id)a3 sendInitateRequest:(id)a4 toPerson:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

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
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 relay:v9 sendInitateRequest:v10 toPerson:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)relay:(id)a3 sendUpdate:(id)a4 toPerson:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

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
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 relay:v9 sendUpdate:v10 toPerson:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)relay:(id)a3 sendCancel:(id)a4 toPerson:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

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
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 relay:v9 sendCancel:v10 toPerson:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)requestVCWithPerson:(id)a3 properties:(id)a4 conference:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

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
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 requestVCWithPerson:v9 properties:v10 conference:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)respondToVCInvitationWithPerson:(id)a3 properties:(id)a4 conference:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

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
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 respondToVCInvitationWithPerson:v9 properties:v10 conference:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)cancelVCRequestWithPerson:(id)a3 properties:(id)a4 conference:(id)a5 reason:(id)a6 account:(id)a7
{
  v24 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = +[IMDAccountController sharedAccountController];
  v16 = [v15 sessionForAccount:v14];

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
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v18 = +[IMDAccountController sharedAccountController];
  v19 = +[IMDAccountController sharedAccountController];
  v20 = [v19 accountForAccountID:v14];
  v21 = [v20 service];
  v22 = [v21 internalName];
  v16 = [v18 anySessionForServiceName:v22];

  if (v16)
  {
LABEL_7:
    [v16 cancelVCRequestWithPerson:v24 properties:v11 conference:v12 reason:v13];
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendCounterProposalToPerson:(id)a3 properties:(id)a4 conference:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

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
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 sendCounterProposalToPerson:v9 properties:v10 conference:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)sendVCUpdate:(id)a3 toPerson:(id)a4 conference:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

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
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 sendVCUpdate:v9 toPerson:v10 conference:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)sendAVMessageToPerson:(id)a3 sessionID:(unsigned int)a4 type:(unsigned int)a5 userInfo:(id)a6 conference:(id)a7 account:(id)a8
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = a8;
  v15 = +[IMDAccountController sharedAccountController];
  v16 = [v15 sessionForAccount:v14];

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
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v18 = +[IMDAccountController sharedAccountController];
  v19 = +[IMDAccountController sharedAccountController];
  v20 = [v19 accountForAccountID:v14];
  v21 = [v20 service];
  v22 = [v21 internalName];
  v16 = [v18 anySessionForServiceName:v22];

  if (v16)
  {
LABEL_7:
    [v16 sendAVMessageToPerson:v11 sessionID:a4 type:a5 userInfo:v12 conference:v13];
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

@end