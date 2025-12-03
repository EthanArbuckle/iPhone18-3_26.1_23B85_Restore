@interface CKSOSUtilities
+ (id)sharedUtilities;
- (BOOL)isMMSEnabled;
- (BOOL)isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot;
- (id)_chatForHandle:(id)handle;
- (id)_compositionsForMessage:(id)message withReasons:(unint64_t)reasons;
- (id)_sendCompositions:(id)compositions toConversation:(id)conversation useStandalone:(BOOL)standalone shouldForceSMS:(BOOL)s isCritical:(BOOL)critical;
- (id)_sendMessageAndReturnGUIDs:(id)ds;
- (id)_uniqueFilePathForFilename:(id)filename;
- (id)sendComposition:(id)composition toConversation:(id)conversation useStandalone:(BOOL)standalone shouldForceSMS:(BOOL)s isCritical:(BOOL)critical;
- (void)_refreshServicesForSending:(id)sending;
- (void)_sendMessageAndObserveNotification:(id)notification;
- (void)sendMessage:(id)message;
- (void)sendMessage:(id)message location:(id)location recipients:(id)recipients;
- (void)sendMessage:(id)message location:(id)location recipients:(id)recipients failureHandler:(id)handler;
@end

@implementation CKSOSUtilities

+ (id)sharedUtilities
{
  if (sharedUtilities_onceToken_0 != -1)
  {
    +[CKSOSUtilities sharedUtilities];
  }

  v3 = sharedUtilities_sharedUtilities;

  return v3;
}

void __33__CKSOSUtilities_sharedUtilities__block_invoke()
{
  v0 = objc_alloc_init(CKSOSUtilities);
  v1 = sharedUtilities_sharedUtilities;
  sharedUtilities_sharedUtilities = v0;
}

- (BOOL)isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot
{
  v12 = *MEMORY[0x1E69E9840];
  if (isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot__pred_MKBGetDeviceLockStateMobileKeyBag != -1)
  {
    [CKSOSUtilities isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
  }

  if (isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot__pred_MKBDeviceUnlockedSinceBootMobileKeyBag != -1)
  {
    [CKSOSUtilities isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
  }

  v2 = isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot__MKBGetDeviceLockState(0);
  v3 = v2 == 3 || isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot__MKBDeviceUnlockedSinceBoot() == 1;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "[CKSOSUtilities isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot]";
      v8 = 1024;
      v9 = v2;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%s keybagLockState:%d mobileKeyBagDisabledOrDeviceUnlockedSinceBoot:%d", &v6, 0x18u);
    }
  }

  return v3;
}

void *__65__CKSOSUtilities_isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot__block_invoke()
{
  result = MEMORY[0x193AF5ED0]("MKBGetDeviceLockState", @"MobileKeyBag");
  isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot__MKBGetDeviceLockState = result;
  return result;
}

void *__65__CKSOSUtilities_isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot__block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("MKBDeviceUnlockedSinceBoot", @"MobileKeyBag");
  isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot__MKBDeviceUnlockedSinceBoot = result;
  return result;
}

- (BOOL)isMMSEnabled
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(CKSOSUtilities *)v2 isMMSEnabled];
  }

  return 0;
}

- (void)sendMessage:(id)message location:(id)location recipients:(id)recipients
{
  recipientsCopy = recipients;
  locationCopy = location;
  messageCopy = message;
  v11 = [[CKSOSMessage alloc] initWithMessage:messageCopy recipients:recipientsCopy];

  [(CKSOSMessage *)v11 setLocation:locationCopy];
  [(CKSOSUtilities *)self sendMessage:v11];
}

- (void)sendMessage:(id)message location:(id)location recipients:(id)recipients failureHandler:(id)handler
{
  handlerCopy = handler;
  recipientsCopy = recipients;
  locationCopy = location;
  messageCopy = message;
  v14 = [[CKSOSMessage alloc] initWithMessage:messageCopy recipients:recipientsCopy];

  [(CKSOSMessage *)v14 setLocation:locationCopy];
  [(CKSOSMessage *)v14 setFailureBlock:handlerCopy];

  [(CKSOSUtilities *)self sendMessage:v14];
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  v5 = *MEMORY[0x1E69A75B0];
  v6 = *MEMORY[0x1E69A75A8];
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:v5 withDictionary:&unk_1F04E9398];

  failureBlock = [messageCopy failureBlock];
  v9 = [failureBlock copy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __30__CKSOSUtilities_sendMessage___block_invoke;
  v18[3] = &unk_1E72EDA68;
  v10 = v6;
  v19 = v10;
  v20 = &unk_1F04E9398;
  v11 = v9;
  v21 = v11;
  [messageCopy setFailureBlock:v18];
  [(CKSOSUtilities *)self _refreshServicesForSending:messageCopy];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "sendMessage: Waiting for registration check before sending", buf, 2u);
    }
  }

  v13 = dispatch_time(0, 4000000000);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__CKSOSUtilities_sendMessage___block_invoke_148;
  v15[3] = &unk_1E72EB8D0;
  v15[4] = self;
  v16 = messageCopy;
  v14 = messageCopy;
  dispatch_after(v13, MEMORY[0x1E69E96A0], v15);
}

uint64_t __30__CKSOSUtilities_sendMessage___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69A8168] sharedInstance];
  [v2 trackEvent:a1[4] withDictionary:a1[5]];

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_refreshServicesForSending:(id)sending
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [sending recipients];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
        smsService = [MEMORY[0x1E69A5C90] smsService];
        v10 = CKMakeHandlesFromRecipientsWithFallbackService(v8, smsService);

        if ([v10 count])
        {
          firstObject = [v10 firstObject];

          if (firstObject)
          {
            firstObject2 = [v10 firstObject];
            v13 = [(CKSOSUtilities *)self _chatForHandle:firstObject2];
            v14 = IMLogHandleForCategory();
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
            if (v13)
            {
              if (v15)
              {
                *buf = 138412546;
                v23 = v7;
                v24 = 2112;
                v25 = v13;
                _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "refreshServiceForSending for recipient:%@ chat:%@", buf, 0x16u);
              }

              [v13 refreshServiceForSending];
            }

            else
            {
              if (v15)
              {
                *buf = 138412290;
                v23 = v7;
                _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Can't refreshServiceForSending for recipient:%@ (no chat)", buf, 0xCu);
              }
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }
}

- (void)_sendMessageAndObserveNotification:(id)notification
{
  v29 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  recipients = [notificationCopy recipients];
  failureBlock = [notificationCopy failureBlock];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__82;
  v25 = __Block_byref_object_dispose__82;
  v26 = 0;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = recipients;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Trying to send SOS message with recipients:%@", buf, 0xCu);
    }
  }

  v8 = [(CKSOSUtilities *)self _sendMessageAndReturnGUIDs:notificationCopy];
  v9 = v8;
  if (failureBlock && v8)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v12 = *MEMORY[0x1E69A5830];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__CKSOSUtilities__sendMessageAndObserveNotification___block_invoke;
    v17[3] = &unk_1E72F8900;
    v18 = v9;
    v19 = failureBlock;
    v20 = &v21;
    v13 = [defaultCenter addObserverForName:v12 object:0 queue:mainQueue usingBlock:v17];
    v14 = v22[5];
    v22[5] = v13;
  }

  v15 = dispatch_time(0, 600000000000);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__CKSOSUtilities__sendMessageAndObserveNotification___block_invoke_2;
  v16[3] = &unk_1E72EB968;
  v16[4] = &v21;
  dispatch_after(v15, MEMORY[0x1E69E96A0], v16);
  _Block_object_dispose(&v21, 8);
}

void __53__CKSOSUtilities__sendMessageAndObserveNotification___block_invoke(void *a1, void *a2)
{
  v3 = [a2 userInfo];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69A5928]];

  v4 = a1[4];
  v5 = [v9 guid];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    (*(a1[5] + 16))();
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:*(*(a1[6] + 8) + 40)];

    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __53__CKSOSUtilities__sendMessageAndObserveNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 32) + 8) + 40)];

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)_compositionsForMessage:(id)message withReasons:(unint64_t)reasons
{
  messageCopy = message;
  v6 = [CKComposition alloc];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = [messageCopy messageForReasons:reasons];
  v9 = [v7 initWithString:v8];
  v10 = [(CKComposition *)v6 initWithText:v9 subject:0];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v10, 0}];
  locationURL = [messageCopy locationURL];
  v13 = [locationURL length];

  if (v13)
  {
    v14 = [CKComposition alloc];
    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    locationURL2 = [messageCopy locationURL];
    v17 = [v15 initWithString:locationURL2];
    v18 = [(CKComposition *)v14 initWithText:v17 subject:0];

    [v11 addObject:v18];
LABEL_3:

    goto LABEL_4;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "cannot send location URL as none was provided", buf, 2u);
    }

    goto LABEL_3;
  }

LABEL_4:

  return v11;
}

- (id)_sendMessageAndReturnGUIDs:(id)ds
{
  v51 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  array = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [dsCopy recipients];
  v38 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v38)
  {
    v37 = *v41;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * i);
        v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, 0}];
        smsService = [MEMORY[0x1E69A5C90] smsService];
        v8 = CKMakeHandlesFromRecipientsWithFallbackService(v6, smsService);

        if ([v8 count])
        {
          firstObject = [v8 firstObject];
          v10 = firstObject == 0;

          if (!v10)
          {
            firstObject2 = [v8 firstObject];
            v12 = [(CKSOSUtilities *)self _chatForHandle:firstObject2];
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                guid = [v12 guid];
                *buf = 138412802;
                v45 = dsCopy;
                v46 = 2112;
                v47 = firstObject2;
                v48 = 2112;
                v49 = guid;
                _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "_sendMessageAndReturnGUIDs:%@, handle %@, chat guid %@.", buf, 0x20u);
              }
            }

            v15 = [[CKConversation alloc] initWithChat:v12];
            recipientReasons = [dsCopy recipientReasons];
            v17 = [recipientReasons objectForKeyedSubscript:v5];
            integerValue = [v17 integerValue];

            v19 = [firstObject2 ID];
            IsEmail = IMStringIsEmail();

            if (IsEmail)
            {
              if (IMOSLoggingEnabled())
              {
                v21 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v45 = dsCopy;
                  _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "[Alerting] sending SOS messages over iMessage to Zelkova email handle. %@", buf, 0xCu);
                }

                goto LABEL_33;
              }

              goto LABEL_34;
            }

            lastAddressedHandle = [(CKConversation *)v15 lastAddressedHandle];
            v23 = IMStringIsEmail();

            if (v23)
            {
              if ((integerValue & 2) != 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v45 = dsCopy;
                    _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "[Alerting] sending SOS messages over iMessage to Zelkova phone number handle from email handle. %@", buf, 0xCu);
                  }
                }

                v25 = [(CKSOSUtilities *)self _compositionsForMessage:dsCopy withReasons:2];
                v26 = -[CKSOSUtilities _sendCompositions:toConversation:useStandalone:shouldForceSMS:isCritical:](self, "_sendCompositions:toConversation:useStandalone:shouldForceSMS:isCritical:", v25, v15, [dsCopy useStandalone], 0, objc_msgSend(dsCopy, "isCritical"));
                [array addObjectsFromArray:v26];
              }

              if (integerValue)
              {
                if (IMOSLoggingEnabled())
                {
                  v27 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v45 = dsCopy;
                    _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "[Alerting] sending SOS messages to EC over SMS. %@", buf, 0xCu);
                  }
                }

                integerValue = 1;
                goto LABEL_34;
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v21 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v45 = dsCopy;
                  _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "[Alerting] sending SOS messages over SMS. %@", buf, 0xCu);
                }

LABEL_33:
              }

LABEL_34:
              v28 = [(CKSOSUtilities *)self _compositionsForMessage:dsCopy withReasons:integerValue];
              v29 = -[CKSOSUtilities _sendCompositions:toConversation:useStandalone:shouldForceSMS:isCritical:](self, "_sendCompositions:toConversation:useStandalone:shouldForceSMS:isCritical:", v28, v15, [dsCopy useStandalone], IsEmail ^ 1u, objc_msgSend(dsCopy, "isCritical"));
              [array addObjectsFromArray:v29];
            }
          }
        }
      }

      v38 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v38);
  }

  if (![array count])
  {
    failureBlock = [dsCopy failureBlock];
    v31 = failureBlock == 0;

    if (!v31)
    {
      v32 = IMLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(CKSOSUtilities *)dsCopy _sendMessageAndReturnGUIDs:v32];
      }

      failureBlock2 = [dsCopy failureBlock];
      failureBlock2[2]();
    }
  }

  return array;
}

- (id)_chatForHandle:(id)handle
{
  v17 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
  preferredOrDefaultSubscriptionContext = [ctSubscriptionInfo preferredOrDefaultSubscriptionContext];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = preferredOrDefaultSubscriptionContext;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "If no chat is found, new chat will be created with subscription %@", &v15, 0xCu);
    }
  }

  phoneNumber = [preferredOrDefaultSubscriptionContext phoneNumber];
  labelID = [preferredOrDefaultSubscriptionContext labelID];
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v11 = [handleCopy ID];
  v12 = [mEMORY[0x1E69A5AF8] existingChatWithChatIdentifier:v11];

  if (!v12)
  {
    mEMORY[0x1E69A5AF8]2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v12 = [mEMORY[0x1E69A5AF8]2 chatWithHandle:handleCopy lastAddressedHandle:phoneNumber lastAddressedSIMID:labelID];
  }

  return v12;
}

- (id)_uniqueFilePathForFilename:(id)filename
{
  v3 = MEMORY[0x1E696AC08];
  filenameCopy = filename;
  defaultManager = [v3 defaultManager];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v7 = NSTemporaryDirectory();
  v8 = [defaultManager createUniqueDirectoryWithName:stringGUID atPath:v7 ofType:0];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  lastPathComponent = [filenameCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  pathExtension = [filenameCopy pathExtension];

  v13 = [defaultManager2 uniqueFilename:stringByDeletingPathExtension atPath:v8 ofType:pathExtension];

  return v13;
}

- (id)_sendCompositions:(id)compositions toConversation:(id)conversation useStandalone:(BOOL)standalone shouldForceSMS:(BOOL)s isCritical:(BOOL)critical
{
  sCopy = s;
  standaloneCopy = standalone;
  v27 = *MEMORY[0x1E69E9840];
  compositionsCopy = compositions;
  conversationCopy = conversation;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = compositionsCopy;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [(CKSOSUtilities *)self sendComposition:*(*(&v22 + 1) + 8 * i) toConversation:conversationCopy useStandalone:standaloneCopy shouldForceSMS:sCopy isCritical:critical, v22];
        [v14 addObjectsFromArray:v20];

        critical = 0;
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      critical = 0;
    }

    while (v17);
  }

  return v14;
}

- (id)sendComposition:(id)composition toConversation:(id)conversation useStandalone:(BOOL)standalone shouldForceSMS:(BOOL)s isCritical:(BOOL)critical
{
  criticalCopy = critical;
  sCopy = s;
  standaloneCopy = standalone;
  v45 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  conversationCopy = conversation;
  v39 = 0;
  v34 = compositionCopy;
  v13 = [conversationCopy canSendComposition:compositionCopy error:&v39];
  v33 = v39;
  if (v13)
  {
    [conversationCopy resetCaches];
    v14 = [conversationCopy messagesFromComposition:compositionCopy];
    [conversationCopy setUnsentComposition:0];
    v32 = [v14 __imArrayByApplyingBlock:&__block_literal_global_162_1];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v16)
    {
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          [v19 setUseStandalone:standaloneCopy];
          __ck_sosMessage = [v19 __ck_sosMessage];
          v21 = __ck_sosMessage;
          if (criticalCopy)
          {
            __ck_criticalMessage = [__ck_sosMessage __ck_criticalMessage];

            v21 = __ck_criticalMessage;
          }

          if (sCopy)
          {
            smsService = [MEMORY[0x1E69A5C90] smsService];
            [conversationCopy sendMessage:v21 onService:smsService newComposition:0];
          }

          else
          {
            [conversationCopy sendMessage:v21 newComposition:0];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v16);
    }

    [conversationCopy setIgnoringTypingUpdates:0];
    [conversationCopy setLocalUserIsTyping:0];
    v24 = +[CKConversationList sharedConversationList];
    [v24 unpendConversation];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v33;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Failed to send SOS to conversation with error: %@", buf, 0xCu);
      }
    }

    v32 = 0;
  }

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  v40[0] = @"markedCritical";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:criticalCopy];
  v41[0] = v27;
  v40[1] = @"usingStandalone";
  v28 = [MEMORY[0x1E696AD98] numberWithBool:standaloneCopy];
  v41[1] = v28;
  v40[2] = @"forcedSMS";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:sCopy];
  v41[2] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A75C0] withDictionary:v30];

  return v32;
}

- (void)_sendMessageAndReturnGUIDs:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed to send message %@", &v2, 0xCu);
}

@end