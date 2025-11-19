@interface IMDaemonChatSendMessageRequestHandler
- (void)_requestGroupPhotoResendForChatGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5;
- (void)appendTranslation:(id)a3 toMessageItem:(id)a4 partIndex:(int64_t)a5 toChatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8;
- (void)cancelScheduledMessageWithGUID:(id)a3;
- (void)cancelScheduledMessageWithGUID:(id)a3 destination:(id)a4;
- (void)cancelScheduledMessageWithGUID:(id)a3 destinations:(id)a4 cancelType:(unint64_t)a5;
- (void)downloadTranslationAssetsForLanguageCodes:(id)a3 messageItemsToTranslateLocally:(id)a4 chatIdentifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)invitePersonInfo:(id)a3 withMessage:(id)a4 toChatID:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8;
- (void)joinChatID:(id)a3 handleInfo:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 groupID:(id)a7 lastAddressedHandle:(id)a8 lastAddressedSIMID:(id)a9 joinProperties:(id)a10 account:(id)a11;
- (void)removePersonInfo:(id)a3 chatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)retryGroupPhotoUpload:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)retryTranscriptBackgroundUpload:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 transferID:(id)a7 account:(id)a8;
- (void)sendBrandLogoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendEditedMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9 backwardCompatabilityText:(id)a10;
- (void)sendEditedScheduledMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9;
- (void)sendEditedScheduledMessage:(id)a3 previousMessage:(id)a4 retractingPartIndexes:(id)a5 toChatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8;
- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendMappingPacket:(id)a3 toHandle:(id)a4 account:(id)a5;
- (void)sendReportNotJunkMessageGUID:(id)a3 account:(id)a4;
- (void)setTranscriptBackgroundAndSendToChat:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 transferID:(id)a7 account:(id)a8 completion:(id)a9;
@end

@implementation IMDaemonChatSendMessageRequestHandler

- (void)invitePersonInfo:(id)a3 withMessage:(id)a4 toChatID:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8
{
  v25 = a7;
  v26 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = +[IMDAccountController sharedAccountController];
  v17 = [v16 sessionForAccount:v15];

  if (v17)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v19 = +[IMDAccountController sharedAccountController];
  v20 = +[IMDAccountController sharedAccountController];
  v21 = [v20 accountForAccountID:v15];
  v22 = [v21 service];
  v23 = [v22 internalName];
  v17 = [v19 anySessionForServiceName:v23];

  if (v17)
  {
LABEL_7:
    [v17 invitePersonInfo:v26 withMessage:v12 toChatID:v13 identifier:v14 style:v25];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v23 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:v13];

  if (v15)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:v13];
  v20 = [v19 service];
  v21 = [v20 internalName];
  v15 = [v17 anySessionForServiceName:v21];

  if (v15)
  {
LABEL_7:
    [v15 sendGroupPhotoUpdate:v10 toChatID:v11 identifier:v12 style:v23 account:v13];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendBrandLogoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v23 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:v13];

  if (v15)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:v13];
  v20 = [v19 service];
  v21 = [v20 internalName];
  v15 = [v17 anySessionForServiceName:v21];

  if (v15)
  {
LABEL_7:
    [v15 sendBrandLogoUpdate:v10 toChatID:v11 identifier:v12 style:v23 account:v13];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)_requestGroupPhotoResendForChatGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5
{
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v7 = +[IMDServiceController sharedController];
  v8 = [v7 serviceWithName:IMServiceNameiMessage];

  v9 = +[IMDAccountController sharedInstance];
  v10 = [v9 accountsForService:v8];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v12)
  {
    v13 = *v35;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v35 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v34 + 1) + 8 * v14);
      if ([v15 isActive])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v15;

    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = +[IMDAccountController sharedAccountController];
    v18 = [v16 accountID];
    v19 = [v17 sessionForAccount:v18];

    if (v19)
    {
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v16 accountID];
        *buf = 138412290;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v22 = +[IMDAccountController sharedAccountController];
    v23 = +[IMDAccountController sharedAccountController];
    v24 = [v16 accountID];
    v25 = [v23 accountForAccountID:v24];
    v26 = [v25 service];
    v27 = [v26 internalName];
    v19 = [v22 anySessionForServiceName:v27];

    if (v19)
    {
LABEL_17:
      [v19 _requestGroupPhotoResendForChatGUID:v31 fromIdentifier:v32 toIdentifier:v33];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v16 accountID];
          *buf = 138412290;
          v39 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
LABEL_9:

LABEL_18:
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Couldn't find an account to send _requestGroupPhotoResendForChatGUID message.", buf, 2u);
      }
    }
  }
}

- (void)retryGroupPhotoUpload:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v23 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:v13];

  if (v15)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:v13];
  v20 = [v19 service];
  v21 = [v20 internalName];
  v15 = [v17 anySessionForServiceName:v21];

  if (v15)
  {
LABEL_7:
    [v15 retryGroupPhotoUpload:v10 toChatID:v11 identifier:v12 style:v23 account:v13 isPhotoRefresh:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)retryTranscriptBackgroundUpload:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 transferID:(id)a7 account:(id)a8
{
  v29 = a6;
  v12 = a3;
  v30 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a8;
  v16 = +[IMFeatureFlags sharedFeatureFlags];
  v17 = [v16 isTranscriptBackgroundsEnabled];

  if (v17)
  {
    v18 = +[IMDAccountController sharedAccountController];
    v19 = [v18 sessionForAccount:v15];

    if (v19)
    {
      goto LABEL_20;
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v21 = +[IMDAccountController sharedAccountController];
    v22 = +[IMDAccountController sharedAccountController];
    v23 = [v22 accountForAccountID:v15];
    v24 = [v23 service];
    v25 = [v24 internalName];
    v19 = [v21 anySessionForServiceName:v25];

    if (v19)
    {
LABEL_20:
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Received retryTranscriptBackgroundUpload: request", buf, 2u);
        }
      }

      v27 = [[NSURL alloc] initFileURLWithPath:v12];
      [v19 retryTranscriptBackgroundUpload:v27 chatIdentifier:v13 style:v29 transferID:v14];
    }

    else if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
      }
    }
  }
}

- (void)removePersonInfo:(id)a3 chatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v23 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:v13];

  if (v15)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:v13];
  v20 = [v19 service];
  v21 = [v20 internalName];
  v15 = [v17 anySessionForServiceName:v21];

  if (v15)
  {
LABEL_7:
    [v15 removePersonInfo:v10 chatID:v11 identifier:v12 style:v23];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)joinChatID:(id)a3 handleInfo:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 groupID:(id)a7 lastAddressedHandle:(id)a8 lastAddressedSIMID:(id)a9 joinProperties:(id)a10 account:(id)a11
{
  v28 = a6;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = +[IMDAccountController sharedAccountController];
  v20 = [v19 sessionForAccount:v18];

  if (v20)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v22 = +[IMDAccountController sharedAccountController];
  v23 = +[IMDAccountController sharedAccountController];
  v24 = [v23 accountForAccountID:v18];
  v25 = [v24 service];
  v26 = [v25 internalName];
  v20 = [v22 anySessionForServiceName:v26];

  if (v20)
  {
LABEL_7:
    [v20 joinChatID:v29 handleInfo:v30 identifier:v31 style:v28 groupID:v32 lastAddressedHandle:v15 lastAddressedSIMID:v16 joinProperties:v17];
  }

  else if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendReportNotJunkMessageGUID:(id)a3 account:(id)a4
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
    [v8 sendReportNotJunkMessageGUID:v5];
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

- (void)sendEditedMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9 backwardCompatabilityText:(id)a10
{
  v28 = a8;
  v29 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a9;
  v15 = a10;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Received sendEditedMessage request", buf, 2u);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 sessionForAccount:v14];

  if (v18)
  {
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v20 = +[IMDAccountController sharedAccountController];
  v21 = +[IMDAccountController sharedAccountController];
  v22 = [v21 accountForAccountID:v14];
  v23 = [v22 service];
  v24 = [v23 internalName];
  v18 = [v20 anySessionForServiceName:v24];

  if (v18)
  {
LABEL_11:
    [v18 sendEditedMessage:v29 previousMessage:v12 partIndex:a5 editType:a6 toChatIdentifier:v13 style:v28 account:v14 backwardCompatabilityText:v15];
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)appendTranslation:(id)a3 toMessageItem:(id)a4 partIndex:(int64_t)a5 toChatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8
{
  v27 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a8;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Received appendTranslation request", buf, 2u);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = [v16 sessionForAccount:v14];

  if (v17)
  {
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v19 = +[IMDAccountController sharedAccountController];
  v20 = +[IMDAccountController sharedAccountController];
  v21 = [v20 accountForAccountID:v14];
  v22 = [v21 service];
  v23 = [v22 internalName];
  v17 = [v19 anySessionForServiceName:v23];

  if (v17)
  {
LABEL_11:
    [v17 appendTranslation:v11 toMessageItem:v12 partIndex:v26 toChatIdentifier:v13 style:v27 account:v14];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)downloadTranslationAssetsForLanguageCodes:(id)a3 messageItemsToTranslateLocally:(id)a4 chatIdentifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v24 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Received appendTranslation request", buf, 2u);
    }
  }

  v15 = +[IMDAccountController sharedAccountController];
  v16 = [v15 sessionForAccount:v13];

  if (v16)
  {
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v18 = +[IMDAccountController sharedAccountController];
  v19 = +[IMDAccountController sharedAccountController];
  v20 = [v19 accountForAccountID:v13];
  v21 = [v20 service];
  v22 = [v21 internalName];
  v16 = [v18 anySessionForServiceName:v22];

  if (v16)
  {
LABEL_11:
    [v16 downloadTranslationAssetsForLanguageCodes:v10 messageItemsToTranslateLocally:v11 chatIdentifier:v12 style:v24 account:v13];
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendMappingPacket:(id)a3 toHandle:(id)a4 account:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Forwarding mapping packet", v12, 2u);
    }
  }

  v11 = +[IMDLocationSharingController sharedInstance];
  [v11 _forwardMappingPacket:v7 toID:v8 account:v9];
}

- (void)cancelScheduledMessageWithGUID:(id)a3
{
  v3 = a3;
  v4 = +[IMDServiceController sharedController];
  v5 = [v4 serviceWithName:IMServiceNameiMessage];

  v6 = +[IMDAccountController sharedInstance];
  v7 = [v6 accountsForService:v5];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v9)
  {
    v10 = *v32;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      if ([v12 isActive])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = +[IMDAccountController sharedAccountController];
    v15 = [v13 accountID];
    v16 = [v14 sessionForAccount:v15];

    if (v16)
    {
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v13 accountID];
        *buf = 138412290;
        v38 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v30 = +[IMDAccountController sharedAccountController];
    v19 = +[IMDAccountController sharedAccountController];
    v20 = [v13 accountID];
    v21 = [v19 accountForAccountID:v20];
    v22 = [v21 service];
    v23 = [v22 internalName];
    v16 = [v30 anySessionForServiceName:v23];

    if (v16)
    {
LABEL_17:
      [v16 cancelScheduledMessageWithGUID:v3];
    }

    else if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v13 accountID];
        *buf = 138412290;
        v38 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_9:

LABEL_18:
    v24 = +[IMDMessageStore sharedInstance];
    v13 = [v24 messageWithGUID:v3];

    if (!v13 || [v13 scheduleType] != 2)
    {
      v35 = NSLocalizedDescriptionKey;
      v36 = @"Failed to find an active iMessage account while trying to cancel scheduled for a given messageGUID";
      v25 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v26 = [NSError errorWithDomain:IMSafetyMonitorErrorDomain code:1 userInfo:v25];

      v27 = +[IMSafetyMonitorCoordinator sharedCoordinator];
      [v27 informOfCancelledScheduledMessageSendWithMessageGUID:v3 sentSuccessfully:0 error:v26];
    }
  }
}

- (void)cancelScheduledMessageWithGUID:(id)a3 destination:(id)a4
{
  v6 = a3;
  v7 = [NSSet setWithObject:a4];
  [(IMDaemonChatSendMessageRequestHandler *)self cancelScheduledMessageWithGUID:v6 destinations:v7 cancelType:0];
}

- (void)cancelScheduledMessageWithGUID:(id)a3 destinations:(id)a4 cancelType:(unint64_t)a5
{
  v6 = a3;
  v35 = a4;
  v7 = +[IMDServiceController sharedController];
  v8 = [v7 serviceWithName:IMServiceNameiMessage];

  v9 = +[IMDAccountController sharedInstance];
  v10 = [v9 accountsForService:v8];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v12)
  {
    v13 = *v37;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v37 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v36 + 1) + 8 * v14);
      if ([v15 isActive])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v15;

    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = +[IMDAccountController sharedAccountController];
    v18 = [v16 accountID];
    v19 = [v17 sessionForAccount:v18];

    if (v19)
    {
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v16 accountID];
        *buf = 138412290;
        v43 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v33 = +[IMDAccountController sharedAccountController];
    v22 = +[IMDAccountController sharedAccountController];
    v23 = [v16 accountID];
    v24 = [v22 accountForAccountID:v23];
    v25 = [v24 service];
    v26 = [v25 internalName];
    v19 = [v33 anySessionForServiceName:v26];

    if (v19)
    {
LABEL_17:
      [v19 cancelScheduledMessageWithGUID:v6 destinations:v35 cancelType:a5];
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v16 accountID];
        *buf = 138412290;
        v43 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_9:

LABEL_18:
    v27 = +[IMDMessageStore sharedInstance];
    v16 = [v27 messageWithGUID:v6];

    if (!v16 || [v16 scheduleType] != 2)
    {
      v40 = NSLocalizedDescriptionKey;
      v41 = @"Failed to find an active iMessage account while trying to cancel scheduled for a given messageGUID";
      v28 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v29 = [NSError errorWithDomain:IMSafetyMonitorErrorDomain code:1 userInfo:v28];

      v30 = +[IMSafetyMonitorCoordinator sharedCoordinator];
      [v30 informOfCancelledScheduledMessageSendWithMessageGUID:v6 sentSuccessfully:0 error:v29];
    }
  }
}

- (void)sendEditedScheduledMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9
{
  v27 = a8;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a9;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Received sendEditedScheduledMessage request", buf, 2u);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = [v16 sessionForAccount:v14];

  if (v17)
  {
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v19 = +[IMDAccountController sharedAccountController];
  v20 = +[IMDAccountController sharedAccountController];
  v21 = [v20 accountForAccountID:v14];
  v22 = [v21 service];
  v23 = [v22 internalName];
  v17 = [v19 anySessionForServiceName:v23];

  if (v17)
  {
LABEL_11:
    [v17 sendEditedScheduledMessage:v11 previousMessage:v12 partIndex:a5 editType:a6 toChatIdentifier:v13 style:v27 account:v14];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendEditedScheduledMessage:(id)a3 previousMessage:(id)a4 retractingPartIndexes:(id)a5 toChatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8
{
  v26 = a7;
  v27 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Received sendEditedScheduledMessage:retractingPartIndexes: request", buf, 2u);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 sessionForAccount:v15];

  if (v18)
  {
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v20 = +[IMDAccountController sharedAccountController];
  v21 = +[IMDAccountController sharedAccountController];
  v22 = [v21 accountForAccountID:v15];
  v23 = [v22 service];
  v24 = [v23 internalName];
  v18 = [v20 anySessionForServiceName:v24];

  if (v18)
  {
LABEL_11:
    [v18 sendEditedScheduledMessage:v27 previousMessage:v12 retractingPartIndexes:v13 toChatIdentifier:v14 style:v26 account:v15];
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)setTranscriptBackgroundAndSendToChat:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 transferID:(id)a7 account:(id)a8 completion:(id)a9
{
  v29 = a6;
  v13 = a3;
  v30 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v31 = a9;
  v17 = +[IMFeatureFlags sharedFeatureFlags];
  v18 = [v17 isTranscriptBackgroundsEnabled];

  if (v18)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Received setTranscriptBackgroundAndSendToChat: request", buf, 2u);
      }
    }

    v20 = +[IMDAccountController sharedAccountController];
    v21 = [v20 sessionForAccount:v16];

    if (v21)
    {
      goto LABEL_12;
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v23 = +[IMDAccountController sharedAccountController];
    v24 = +[IMDAccountController sharedAccountController];
    v25 = [v24 accountForAccountID:v16];
    v26 = [v25 service];
    v27 = [v26 internalName];
    v21 = [v23 anySessionForServiceName:v27];

    if (v21)
    {
LABEL_12:
      [v21 setTranscriptBackground:v13 andSendToChatIdentifier:v14 chatStyle:v29 transferID:v15 isRefresh:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
      }
    }
  }
}

@end