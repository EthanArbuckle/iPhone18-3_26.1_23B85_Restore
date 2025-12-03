@interface IMDOneTimeCodeManager
+ (id)sharedInstance;
- (BOOL)autoDeletionPreference;
- (IMDOneTimeCodeManager)initWithBroadcaster:(id)broadcaster otcUtilities:(id)utilities;
- (IMDaemonListenerProtocol)broadcaster;
- (IMOneTimeCodeUtilities)otcUtilities;
- (id)_urlForPasswordsIcon;
- (void)_setNewCodeAndPrepareInvalidationTimer:(id)timer;
- (void)_updateLastMessageTimeStampForChat:(id)chat;
- (void)broadcastCodeStatusToClients;
- (void)consumeCodeWithGuid:(id)guid codeExpired:(BOOL)expired;
- (void)dealloc;
- (void)moveOneTimeCodeToRecentlyDeleted:(id)deleted;
- (void)onboardDeleteVerificationCodesIfNeededWithCompletionHandler:(id)handler;
- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message completionHandler:(id)handler;
- (void)startTrackingCode:(id)code;
@end

@implementation IMDOneTimeCodeManager

+ (id)sharedInstance
{
  if (qword_2814210F8 != -1)
  {
    sub_22B7CFFBC();
  }

  return qword_281420F68;
}

- (IMDOneTimeCodeManager)initWithBroadcaster:(id)broadcaster otcUtilities:(id)utilities
{
  v13.receiver = self;
  v13.super_class = IMDOneTimeCodeManager;
  v6 = [(IMDOneTimeCodeManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    [(IMDOneTimeCodeManager *)v6 setValidCodes:MEMORY[0x277CBEBF8]];
    [(IMDOneTimeCodeManager *)v7 setOtcUtilities:utilities];
    [(IMDOneTimeCodeManager *)v7 setBroadcasterOverride:broadcaster];
    v7->_syncedSettingsManager = +[IMDSyncedSettingsServiceManager sharedManager];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v9 = CFRetain(v7);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, sub_22B504F9C, @"EDOneTimeCodeOnboardingAlertUserSelectedEnableNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = CFRetain(v7);
    CFNotificationCenterAddObserver(v10, v11, sub_22B504FE8, @"EDOneTimeCodeOnboardingAlertUserSelectedDisableNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v7;
}

- (void)dealloc
{
  [(NSTimer *)[(IMDOneTimeCodeManager *)self codeInvalidationTimer] invalidate];
  [(IMDOneTimeCodeManager *)self setCodeInvalidationTimer:0];
  [(IMDOneTimeCodeManager *)self setValidCodes:0];
  [(IMDOneTimeCodeManager *)self setBroadcaster:0];
  [(IMDOneTimeCodeManager *)self setBroadcasterOverride:0];
  [(IMDOneTimeCodeManager *)self setOtcUtilities:0];
  [(IMDOneTimeCodeManager *)self setSyncedSettingsManager:0];
  v3.receiver = self;
  v3.super_class = IMDOneTimeCodeManager;
  [(IMDOneTimeCodeManager *)&v3 dealloc];
}

- (void)startTrackingCode:(id)code
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(IMOneTimeCodeUtilities *)[(IMDOneTimeCodeManager *)self otcUtilities] isValidOneTimeCode:code];
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [code objectForKeyedSubscript:*MEMORY[0x277D1A468]];
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Asked to track a new OTC with guid %@", &v12, 0xCu);
      }
    }

    [(IMDOneTimeCodeManager *)self _setNewCodeAndPrepareInvalidationTimer:code];
    [code objectForKeyedSubscript:*MEMORY[0x277D1A470]];
    [code objectForKeyedSubscript:*MEMORY[0x277D1A478]];
    IMGreenTeaReceived2FACode();
    [(IMDOneTimeCodeManager *)self broadcastCodeStatusToClients];
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [code objectForKeyedSubscript:*MEMORY[0x277D1A468]];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Asked to track a OTC but code appears to be invalid %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)broadcastCodeStatusToClients
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Send out OTC to all interested clients.", v4, 2u);
    }
  }

  [(IMDaemonListenerProtocol *)[(IMDOneTimeCodeManager *)self broadcaster] oneTimeCodesDidChange:[(IMDOneTimeCodeManager *)self validCodes]];
}

- (void)consumeCodeWithGuid:(id)guid codeExpired:(BOOL)expired
{
  expiredCopy = expired;
  v19 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      guidCopy3 = guid;
      v17 = 1024;
      LODWORD(v18) = expiredCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Consuming code for message guid: %@, expried: %{BOOL}d", buf, 0x12u);
    }
  }

  firstObject = [(NSArray *)[(IMDOneTimeCodeManager *)self validCodes] firstObject];
  v9 = [firstObject objectForKeyedSubscript:*MEMORY[0x277D1A468]];
  if ([v9 length] && objc_msgSend(v9, "isEqualToString:", guid))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        guidCopy3 = guid;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Clearing code for GUID: %@", buf, 0xCu);
      }
    }

    [(IMDOneTimeCodeManager *)self _setNewCodeAndPrepareInvalidationTimer:0];
    if (!expiredCopy)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_22B505618;
      v14[3] = &unk_278703128;
      v14[4] = self;
      v14[5] = guid;
      [(IMDOneTimeCodeManager *)self onboardDeleteVerificationCodesIfNeededWithCompletionHandler:v14];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](-[IMDOneTimeCodeManager validCodes](self, "validCodes"), "count")}];
      *buf = 138412546;
      guidCopy3 = guid;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Asked to consume code for guid %@, but unable, current code count: %@", buf, 0x16u);
    }
  }

  [(IMDOneTimeCodeManager *)self broadcastCodeStatusToClients];
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)autoDeletionPreference
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [-[IMSyncedSettingsManaging settingValueForKey:](-[IMDOneTimeCodeManager syncedSettingsManager](self "syncedSettingsManager")];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Delete Verification Codes | Reading deletion preference as: %{BOOL}d", v6, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)onboardDeleteVerificationCodesIfNeededWithCompletionHandler:(id)handler
{
  [IMDaemonCoreBundle() __im_localizedStringForKey:@"OTP_CLEANUP_ALERT_MESSAGE"];

  MEMORY[0x2821F9670](self, sel_onboardDeleteVerificationCodesIfNeededWithMessage_completionHandler_);
}

- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message completionHandler:(id)handler
{
  v29[4] = *MEMORY[0x277D85DE8];
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v22 = [v7 initWithSuiteName:*MEMORY[0x277D1A460]];
  if ([v22 integerForKey:*MEMORY[0x277D1A458]])
  {
    if (handler)
    {
      (*(handler + 2))(handler, 2);
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = [IMDaemonCoreBundle() __im_localizedStringForKey:@"OTP_CLEANUP_ALERT_TITLE"];
    v10 = [IMDaemonCoreBundle() __im_localizedStringForKey:@"OTP_CLEANUP_ALERT_CONFIRM"];
    v11 = [IMDaemonCoreBundle() __im_localizedStringForKey:@"OTP_CLEANUP_ALERT_CANCEL"];
    v12 = *MEMORY[0x277D19208];
    v28[0] = *MEMORY[0x277D19228];
    v28[1] = v12;
    v29[0] = v9;
    v29[1] = message;
    v13 = *MEMORY[0x277D19210];
    v28[2] = *MEMORY[0x277D191F8];
    v28[3] = v13;
    v29[2] = v10;
    v29[3] = v11;
    v14 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:{4), "mutableCopy"}];
    _urlForPasswordsIcon = [(IMDOneTimeCodeManager *)self _urlForPasswordsIcon];
    if (_urlForPasswordsIcon)
    {
      [v14 setObject:_urlForPasswordsIcon forKeyedSubscript:*MEMORY[0x277D19200]];
    }

    v16 = [MEMORY[0x277D192D0] userNotificationWithIdentifier:objc_msgSend(MEMORY[0x277CCACA8] timeout:"stringGUID" alertLevel:_urlForPasswordsIcon) displayFlags:3 displayInformation:{32, v14, 0.0}];

    v17 = IMOSLoggingEnabled();
    if (v16)
    {
      if (v17)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v25 = v9;
          v26 = 2112;
          messageCopy = message;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Delete Verification Codes | Presenting Delete Verification Codes notification with title: %@ message: %@", buf, 0x16u);
        }
      }

      [v16 setUsesNotificationCenter:0];
      [v16 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
      mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_22B505EAC;
      v23[3] = &unk_278703150;
      v23[4] = v22;
      v23[5] = handler;
      [mEMORY[0x277D192D8] addUserNotification:v16 listener:0 completionHandler:v23];
    }

    else
    {
      if (v17)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Delete Verification Codes | Not able to make notification to onboard delete-verfication-codes", buf, 2u);
        }
      }
    }

    v21 = *MEMORY[0x277D85DE8];
  }
}

- (id)_urlForPasswordsIcon
{
  v17 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Delete Verification Codes | Began generating passwordsIcon", &v15, 2u);
    }
  }

  v3 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:@"com.apple.Passwords-Settings.extension"];
  v4 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:200.0 scale:{200.0, 1.0}];
  [v4 setShape:0];
  v5 = [v3 imageForDescriptor:v4];
  if ([v5 placeholder])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Delete Verification Codes | Preparing Image", &v15, 2u);
      }
    }

    v5 = [v3 prepareImageForDescriptor:v4];
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Delete Verification Codes | Using image: %@", &v15, 0xCu);
    }
  }

  v8 = [objc_msgSend(MEMORY[0x277CBEBC0] fileURLWithPath:{NSTemporaryDirectory()), "URLByAppendingPathComponent:", @"otpOnboardingIcon.tiff"}];
  v9 = v8;
  if (v8)
  {
    v10 = CFRetain(v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = CGImageDestinationCreateWithURL(v10, *MEMORY[0x277CC2180], 1uLL, 0);
  CGImageDestinationAddImage(v11, [v5 CGImage], 0);
  CGImageDestinationFinalize(v11);
  CFRelease(v10);
  CFRelease(v11);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Delete Verification Codes | End generating passwordsIcon", &v15, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)moveOneTimeCodeToRecentlyDeleted:(id)deleted
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      deletedCopy4 = deleted;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Delete Verification Codes | Attempting to move message with OTP code (guid: %@) to recently deleted.", buf, 0xCu);
    }
  }

  if (deleted)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v33[0] = deleted;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    deleted = [+[IMDMessageStore sharedInstance](IMDMessageStore chatForMessageGUID:"chatForMessageGUID:", deleted];
    v9 = deleted;
    if (deleted)
    {
      guid = [deleted guid];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&guid count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        deletedCopy4 = v9;
        v30 = 2112;
        deletedCopy2 = deleted;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found chat: %@ for codeMessageGUID: %@", buf, 0x16u);
      }
    }

    if (v9)
    {
      v26[0] = @"message";
      v26[1] = @"isPermanentDelete";
      v27[0] = v7;
      v27[1] = MEMORY[0x277CBEC28];
      v26[2] = @"recoverableDeleteDate";
      v27[2] = date;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      serviceName = [v9 serviceName];
      v14 = MEMORY[0x277D1A610];
      v15 = [serviceName isEqualToString:*MEMORY[0x277D1A610]];
      v16 = MEMORY[0x277D1A620];
      if (v15)
      {
        v16 = v14;
      }

      [-[IMDAccountController anySessionForServiceName:](+[IMDAccountController sharedInstance](IMDAccountController "sharedInstance")];
      if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled] && ((objc_msgSend(MEMORY[0x277D1AB08], "timeSensitivePriorityEnabled") & 1) != 0 || objc_msgSend(MEMORY[0x277D1AB08], "verificationCodesPriorityEnabled")))
      {
        v25[0] = [MEMORY[0x277CBEB68] null];
        v24[1] = *MEMORY[0x277D19828];
        v25[1] = [MEMORY[0x277CBEB68] null];
        [v9 updateProperties:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v25, v24, 2)}];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        deletedCopy4 = deleted;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Delete Verification Codes | Could not derive chat from codeMessageGUID: %@", buf, 0xCu);
      }
    }

    [+[IMDMessageStore sharedInstance](IMDMessageStore retractPostedNotificationsForMessageGUIDs:"retractPostedNotificationsForMessageGUIDs:", v7];
    [objc_msgSend(MEMORY[0x277D1AA10] "sharedInstance")];
    [+[IMDChatRegistry sharedInstance](IMDChatRegistry moveMessagesWithGUIDsToRecentlyDeleted:"moveMessagesWithGUIDsToRecentlyDeleted:deleteDate:" deleteDate:v7, date];
    [+[IMDMessageStore sharedInstance](IMDMessageStore updateStampForGUIDs:"updateStampForGUIDs:", v10];
    [(IMDOneTimeCodeManager *)self _updateLastMessageTimeStampForChat:v9];
    [-[IMDBroadcasterProviding broadcasterForChatListeners](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        deletedCopy4 = deleted;
        v19 = "Delete Verification Codes | Finished moving message with OTP code (guid: %@) to recently deleted.";
        v20 = v18;
        v21 = 12;
LABEL_27:
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v19 = "Delete Verification Codes | codeMessageGUID is nil. Early returning.";
      v20 = v22;
      v21 = 2;
      goto LABEL_27;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateLastMessageTimeStampForChat:(id)chat
{
  v23 = *MEMORY[0x277D85DE8];
  [chat setLastMessage:{-[IMDMessageStore lastMessageForChatWithRowID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "lastMessageForChatWithRowID:", objc_msgSend(chat, "rowID"))}];
  if ([chat lastMessage])
  {
    [objc_msgSend(objc_msgSend(chat "lastMessage")];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [chat setLastMessageTimeStampOnLoad:v5];
  if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
  {
    chat = [+[IMDMessageStore sharedInstance](IMDMessageStore lastTUConversationItemForChat:"lastTUConversationItemForChat:", chat];
    if (!chat)
    {
      chatCopy2 = chat;
      time = 0;
      goto LABEL_9;
    }

    v7 = chat;
    if ([chat time])
    {
      time = [v7 time];
      chatCopy2 = chat;
LABEL_9:
      [chatCopy2 setLastTUConversationCreatedDate:time];
      goto LABEL_10;
    }

    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7CFDFC(v7, v14);
    }
  }

LABEL_10:
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      guid = [chat guid];
      v12 = MEMORY[0x277CCABB0];
      [objc_msgSend(objc_msgSend(chat "lastMessage")];
      v15 = 138413058;
      v16 = guid;
      v17 = 2112;
      v18 = [v12 numberWithDouble:?];
      v19 = 2112;
      lastTUConversationCreatedDate = [chat lastTUConversationCreatedDate];
      v21 = 2112;
      lastScheduledMessageCreatedDate = [chat lastScheduledMessageCreatedDate];
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Verification Code | IMChat: %@, updating last message timestamp on load: %@ lastTUConversationCreatedDate: %@ lastScheduledMessageCreatedDate: %@", &v15, 0x2Au);
    }
  }

  [-[IMDBroadcasterProviding broadcasterForChatListeners](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  v13 = *MEMORY[0x277D85DE8];
}

- (IMDaemonListenerProtocol)broadcaster
{
  if ([(IMDOneTimeCodeManager *)self broadcasterOverride])
  {

    return [(IMDOneTimeCodeManager *)self broadcasterOverride];
  }

  else
  {
    v4 = +[IMDBroadcastController sharedProvider];

    return [(IMDBroadcasterProviding *)v4 broadcasterForAllListeners];
  }
}

- (IMOneTimeCodeUtilities)otcUtilities
{
  result = self->_otcUtilities;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x277D1AB18]);
    self->_otcUtilities = result;
  }

  return result;
}

- (void)_setNewCodeAndPrepareInvalidationTimer:(id)timer
{
  v10[1] = *MEMORY[0x277D85DE8];
  [(NSTimer *)[(IMDOneTimeCodeManager *)self codeInvalidationTimer] invalidate];
  if (timer)
  {
    v10[0] = timer;
    -[IMDOneTimeCodeManager setValidCodes:](self, "setValidCodes:", [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1]);
    v5 = [timer objectForKeyedSubscript:*MEMORY[0x277D1A468]];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B506B18;
    v9[3] = &unk_278703178;
    v9[4] = v5;
    v9[5] = self;
    -[IMDOneTimeCodeManager setCodeInvalidationTimer:](self, "setCodeInvalidationTimer:", [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v9 block:qword_27D8CAE90]);
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];
    v8 = MEMORY[0x277CBEBF8];

    [(IMDOneTimeCodeManager *)self setValidCodes:v8];
  }
}

@end