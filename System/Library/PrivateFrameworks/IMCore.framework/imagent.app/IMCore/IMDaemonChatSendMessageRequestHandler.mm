@interface IMDaemonChatSendMessageRequestHandler
- (void)_requestGroupPhotoResendForChatGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (void)appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)cancelScheduledMessageWithGUID:(id)d;
- (void)cancelScheduledMessageWithGUID:(id)d destination:(id)destination;
- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type;
- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)invitePersonInfo:(id)info withMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)joinChatID:(id)d handleInfo:(id)info identifier:(id)identifier style:(unsigned __int8)style groupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)mID joinProperties:(id)self0 account:(id)self1;
- (void)removePersonInfo:(id)info chatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)retryGroupPhotoUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)retryTranscriptBackgroundUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style transferID:(id)iD account:(id)account;
- (void)sendBrandLogoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0;
- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage retractingPartIndexes:(id)indexes toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendMappingPacket:(id)packet toHandle:(id)handle account:(id)account;
- (void)sendReportNotJunkMessageGUID:(id)d account:(id)account;
- (void)setTranscriptBackgroundAndSendToChat:(id)chat toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style transferID:(id)iD account:(id)account completion:(id)completion;
@end

@implementation IMDaemonChatSendMessageRequestHandler

- (void)invitePersonInfo:(id)info withMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  infoCopy = info;
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v16 = +[IMDAccountController sharedAccountController];
  v17 = [v16 sessionForAccount:accountCopy];

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
      v28 = accountCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v19 = +[IMDAccountController sharedAccountController];
  v20 = +[IMDAccountController sharedAccountController];
  v21 = [v20 accountForAccountID:accountCopy];
  service = [v21 service];
  internalName = [service internalName];
  v17 = [v19 anySessionForServiceName:internalName];

  if (v17)
  {
LABEL_7:
    [v17 invitePersonInfo:infoCopy withMessage:messageCopy toChatID:dCopy identifier:identifierCopy style:styleCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = accountCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  updateCopy = update;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:accountCopy];

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
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:accountCopy];
  service = [v19 service];
  internalName = [service internalName];
  v15 = [v17 anySessionForServiceName:internalName];

  if (v15)
  {
LABEL_7:
    [v15 sendGroupPhotoUpdate:updateCopy toChatID:dCopy identifier:identifierCopy style:styleCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendBrandLogoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  updateCopy = update;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:accountCopy];

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
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:accountCopy];
  service = [v19 service];
  internalName = [service internalName];
  v15 = [v17 anySessionForServiceName:internalName];

  if (v15)
  {
LABEL_7:
    [v15 sendBrandLogoUpdate:updateCopy toChatID:dCopy identifier:identifierCopy style:styleCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)_requestGroupPhotoResendForChatGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  dCopy = d;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
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
    accountID = [v16 accountID];
    v19 = [v17 sessionForAccount:accountID];

    if (v19)
    {
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        accountID2 = [v16 accountID];
        *buf = 138412290;
        v39 = accountID2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v22 = +[IMDAccountController sharedAccountController];
    v23 = +[IMDAccountController sharedAccountController];
    accountID3 = [v16 accountID];
    v25 = [v23 accountForAccountID:accountID3];
    service = [v25 service];
    internalName = [service internalName];
    v19 = [v22 anySessionForServiceName:internalName];

    if (v19)
    {
LABEL_17:
      [v19 _requestGroupPhotoResendForChatGUID:dCopy fromIdentifier:identifierCopy toIdentifier:toIdentifierCopy];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          accountID4 = [v16 accountID];
          *buf = 138412290;
          v39 = accountID4;
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

- (void)retryGroupPhotoUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  uploadCopy = upload;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:accountCopy];

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
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:accountCopy];
  service = [v19 service];
  internalName = [service internalName];
  v15 = [v17 anySessionForServiceName:internalName];

  if (v15)
  {
LABEL_7:
    [v15 retryGroupPhotoUpload:uploadCopy toChatID:dCopy identifier:identifierCopy style:styleCopy account:accountCopy isPhotoRefresh:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)retryTranscriptBackgroundUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style transferID:(id)iD account:(id)account
{
  styleCopy = style;
  uploadCopy = upload;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  accountCopy = account;
  v16 = +[IMFeatureFlags sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [v16 isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    v18 = +[IMDAccountController sharedAccountController];
    v19 = [v18 sessionForAccount:accountCopy];

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
        v32 = accountCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v21 = +[IMDAccountController sharedAccountController];
    v22 = +[IMDAccountController sharedAccountController];
    v23 = [v22 accountForAccountID:accountCopy];
    service = [v23 service];
    internalName = [service internalName];
    v19 = [v21 anySessionForServiceName:internalName];

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

      v27 = [[NSURL alloc] initFileURLWithPath:uploadCopy];
      [v19 retryTranscriptBackgroundUpload:v27 chatIdentifier:identifierCopy style:styleCopy transferID:iDCopy];
    }

    else if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = accountCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
      }
    }
  }
}

- (void)removePersonInfo:(id)info chatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  infoCopy = info;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 sessionForAccount:accountCopy];

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
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v17 = +[IMDAccountController sharedAccountController];
  v18 = +[IMDAccountController sharedAccountController];
  v19 = [v18 accountForAccountID:accountCopy];
  service = [v19 service];
  internalName = [service internalName];
  v15 = [v17 anySessionForServiceName:internalName];

  if (v15)
  {
LABEL_7:
    [v15 removePersonInfo:infoCopy chatID:dCopy identifier:identifierCopy style:styleCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = accountCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)joinChatID:(id)d handleInfo:(id)info identifier:(id)identifier style:(unsigned __int8)style groupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)mID joinProperties:(id)self0 account:(id)self1
{
  styleCopy = style;
  dCopy = d;
  infoCopy = info;
  identifierCopy = identifier;
  iDCopy = iD;
  handleCopy = handle;
  mIDCopy = mID;
  propertiesCopy = properties;
  accountCopy = account;
  v19 = +[IMDAccountController sharedAccountController];
  v20 = [v19 sessionForAccount:accountCopy];

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
      v34 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v22 = +[IMDAccountController sharedAccountController];
  v23 = +[IMDAccountController sharedAccountController];
  v24 = [v23 accountForAccountID:accountCopy];
  service = [v24 service];
  internalName = [service internalName];
  v20 = [v22 anySessionForServiceName:internalName];

  if (v20)
  {
LABEL_7:
    [v20 joinChatID:dCopy handleInfo:infoCopy identifier:identifierCopy style:styleCopy groupID:iDCopy lastAddressedHandle:handleCopy lastAddressedSIMID:mIDCopy joinProperties:propertiesCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = accountCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendReportNotJunkMessageGUID:(id)d account:(id)account
{
  dCopy = d;
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
    [v8 sendReportNotJunkMessageGUID:dCopy];
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

- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0
{
  styleCopy = style;
  messageCopy = message;
  previousMessageCopy = previousMessage;
  identifierCopy = identifier;
  accountCopy = account;
  textCopy = text;
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
  v18 = [v17 sessionForAccount:accountCopy];

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
      v31 = accountCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v20 = +[IMDAccountController sharedAccountController];
  v21 = +[IMDAccountController sharedAccountController];
  v22 = [v21 accountForAccountID:accountCopy];
  service = [v22 service];
  internalName = [service internalName];
  v18 = [v20 anySessionForServiceName:internalName];

  if (v18)
  {
LABEL_11:
    [v18 sendEditedMessage:messageCopy previousMessage:previousMessageCopy partIndex:index editType:type toChatIdentifier:identifierCopy style:styleCopy account:accountCopy backwardCompatabilityText:textCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = accountCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  translationCopy = translation;
  itemCopy = item;
  identifierCopy = identifier;
  accountCopy = account;
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
  v17 = [v16 sessionForAccount:accountCopy];

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
      v29 = accountCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v19 = +[IMDAccountController sharedAccountController];
  v20 = +[IMDAccountController sharedAccountController];
  v21 = [v20 accountForAccountID:accountCopy];
  service = [v21 service];
  internalName = [service internalName];
  v17 = [v19 anySessionForServiceName:internalName];

  if (v17)
  {
LABEL_11:
    [v17 appendTranslation:translationCopy toMessageItem:itemCopy partIndex:v26 toChatIdentifier:identifierCopy style:styleCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = accountCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  codesCopy = codes;
  locallyCopy = locally;
  identifierCopy = identifier;
  accountCopy = account;
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
  v16 = [v15 sessionForAccount:accountCopy];

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
LABEL_11:
    [v16 downloadTranslationAssetsForLanguageCodes:codesCopy messageItemsToTranslateLocally:locallyCopy chatIdentifier:identifierCopy style:styleCopy account:accountCopy];
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

- (void)sendMappingPacket:(id)packet toHandle:(id)handle account:(id)account
{
  packetCopy = packet;
  handleCopy = handle;
  accountCopy = account;
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
  [v11 _forwardMappingPacket:packetCopy toID:handleCopy account:accountCopy];
}

- (void)cancelScheduledMessageWithGUID:(id)d
{
  dCopy = d;
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
    accountID = [v13 accountID];
    v16 = [v14 sessionForAccount:accountID];

    if (v16)
    {
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        accountID2 = [v13 accountID];
        *buf = 138412290;
        v38 = accountID2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v30 = +[IMDAccountController sharedAccountController];
    v19 = +[IMDAccountController sharedAccountController];
    accountID3 = [v13 accountID];
    v21 = [v19 accountForAccountID:accountID3];
    service = [v21 service];
    internalName = [service internalName];
    v16 = [v30 anySessionForServiceName:internalName];

    if (v16)
    {
LABEL_17:
      [v16 cancelScheduledMessageWithGUID:dCopy];
    }

    else if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        accountID4 = [v13 accountID];
        *buf = 138412290;
        v38 = accountID4;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_9:

LABEL_18:
    v24 = +[IMDMessageStore sharedInstance];
    v13 = [v24 messageWithGUID:dCopy];

    if (!v13 || [v13 scheduleType] != 2)
    {
      v35 = NSLocalizedDescriptionKey;
      v36 = @"Failed to find an active iMessage account while trying to cancel scheduled for a given messageGUID";
      v25 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v26 = [NSError errorWithDomain:IMSafetyMonitorErrorDomain code:1 userInfo:v25];

      v27 = +[IMSafetyMonitorCoordinator sharedCoordinator];
      [v27 informOfCancelledScheduledMessageSendWithMessageGUID:dCopy sentSuccessfully:0 error:v26];
    }
  }
}

- (void)cancelScheduledMessageWithGUID:(id)d destination:(id)destination
{
  dCopy = d;
  v7 = [NSSet setWithObject:destination];
  [(IMDaemonChatSendMessageRequestHandler *)self cancelScheduledMessageWithGUID:dCopy destinations:v7 cancelType:0];
}

- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type
{
  dCopy = d;
  destinationsCopy = destinations;
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
    accountID = [v16 accountID];
    v19 = [v17 sessionForAccount:accountID];

    if (v19)
    {
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        accountID2 = [v16 accountID];
        *buf = 138412290;
        v43 = accountID2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v33 = +[IMDAccountController sharedAccountController];
    v22 = +[IMDAccountController sharedAccountController];
    accountID3 = [v16 accountID];
    v24 = [v22 accountForAccountID:accountID3];
    service = [v24 service];
    internalName = [service internalName];
    v19 = [v33 anySessionForServiceName:internalName];

    if (v19)
    {
LABEL_17:
      [v19 cancelScheduledMessageWithGUID:dCopy destinations:destinationsCopy cancelType:type];
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        accountID4 = [v16 accountID];
        *buf = 138412290;
        v43 = accountID4;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_9:

LABEL_18:
    v27 = +[IMDMessageStore sharedInstance];
    v16 = [v27 messageWithGUID:dCopy];

    if (!v16 || [v16 scheduleType] != 2)
    {
      v40 = NSLocalizedDescriptionKey;
      v41 = @"Failed to find an active iMessage account while trying to cancel scheduled for a given messageGUID";
      v28 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v29 = [NSError errorWithDomain:IMSafetyMonitorErrorDomain code:1 userInfo:v28];

      v30 = +[IMSafetyMonitorCoordinator sharedCoordinator];
      [v30 informOfCancelledScheduledMessageSendWithMessageGUID:dCopy sentSuccessfully:0 error:v29];
    }
  }
}

- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  messageCopy = message;
  previousMessageCopy = previousMessage;
  identifierCopy = identifier;
  accountCopy = account;
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
  v17 = [v16 sessionForAccount:accountCopy];

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
      v29 = accountCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v19 = +[IMDAccountController sharedAccountController];
  v20 = +[IMDAccountController sharedAccountController];
  v21 = [v20 accountForAccountID:accountCopy];
  service = [v21 service];
  internalName = [service internalName];
  v17 = [v19 anySessionForServiceName:internalName];

  if (v17)
  {
LABEL_11:
    [v17 sendEditedScheduledMessage:messageCopy previousMessage:previousMessageCopy partIndex:index editType:type toChatIdentifier:identifierCopy style:styleCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = accountCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage retractingPartIndexes:(id)indexes toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  messageCopy = message;
  previousMessageCopy = previousMessage;
  indexesCopy = indexes;
  identifierCopy = identifier;
  accountCopy = account;
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
  v18 = [v17 sessionForAccount:accountCopy];

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
      v29 = accountCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
    }
  }

  v20 = +[IMDAccountController sharedAccountController];
  v21 = +[IMDAccountController sharedAccountController];
  v22 = [v21 accountForAccountID:accountCopy];
  service = [v22 service];
  internalName = [service internalName];
  v18 = [v20 anySessionForServiceName:internalName];

  if (v18)
  {
LABEL_11:
    [v18 sendEditedScheduledMessage:messageCopy previousMessage:previousMessageCopy retractingPartIndexes:indexesCopy toChatIdentifier:identifierCopy style:styleCopy account:accountCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = accountCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
    }
  }
}

- (void)setTranscriptBackgroundAndSendToChat:(id)chat toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style transferID:(id)iD account:(id)account completion:(id)completion
{
  styleCopy = style;
  chatCopy = chat;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  accountCopy = account;
  completionCopy = completion;
  v17 = +[IMFeatureFlags sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [v17 isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
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
    v21 = [v20 sessionForAccount:accountCopy];

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
        v33 = accountCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", buf, 0xCu);
      }
    }

    v23 = +[IMDAccountController sharedAccountController];
    v24 = +[IMDAccountController sharedAccountController];
    v25 = [v24 accountForAccountID:accountCopy];
    service = [v25 service];
    internalName = [service internalName];
    v21 = [v23 anySessionForServiceName:internalName];

    if (v21)
    {
LABEL_12:
      [v21 setTranscriptBackground:chatCopy andSendToChatIdentifier:identifierCopy chatStyle:styleCopy transferID:iDCopy isRefresh:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = accountCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", buf, 0xCu);
      }
    }
  }
}

@end