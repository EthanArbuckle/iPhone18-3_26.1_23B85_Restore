@interface CKSOSUtilities
+ (id)sharedUtilities;
- (BOOL)isMMSEnabled;
- (BOOL)isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot;
- (id)_chatForHandle:(id)a3;
- (id)_compositionsForMessage:(id)a3 withReasons:(unint64_t)a4;
- (id)_sendCompositions:(id)a3 toConversation:(id)a4 useStandalone:(BOOL)a5 shouldForceSMS:(BOOL)a6 isCritical:(BOOL)a7;
- (id)_sendMessageAndReturnGUIDs:(id)a3;
- (id)_uniqueFilePathForFilename:(id)a3;
- (id)sendComposition:(id)a3 toConversation:(id)a4 useStandalone:(BOOL)a5 shouldForceSMS:(BOOL)a6 isCritical:(BOOL)a7;
- (void)_refreshServicesForSending:(id)a3;
- (void)_sendMessageAndObserveNotification:(id)a3;
- (void)sendMessage:(id)a3;
- (void)sendMessage:(id)a3 location:(id)a4 recipients:(id)a5;
- (void)sendMessage:(id)a3 location:(id)a4 recipients:(id)a5 failureHandler:(id)a6;
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

- (void)sendMessage:(id)a3 location:(id)a4 recipients:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CKSOSMessage alloc] initWithMessage:v10 recipients:v8];

  [(CKSOSMessage *)v11 setLocation:v9];
  [(CKSOSUtilities *)self sendMessage:v11];
}

- (void)sendMessage:(id)a3 location:(id)a4 recipients:(id)a5 failureHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[CKSOSMessage alloc] initWithMessage:v13 recipients:v11];

  [(CKSOSMessage *)v14 setLocation:v12];
  [(CKSOSMessage *)v14 setFailureBlock:v10];

  [(CKSOSUtilities *)self sendMessage:v14];
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E69A75B0];
  v6 = *MEMORY[0x1E69A75A8];
  v7 = [MEMORY[0x1E69A8168] sharedInstance];
  [v7 trackEvent:v5 withDictionary:&unk_1F04E9398];

  v8 = [v4 failureBlock];
  v9 = [v8 copy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __30__CKSOSUtilities_sendMessage___block_invoke;
  v18[3] = &unk_1E72EDA68;
  v10 = v6;
  v19 = v10;
  v20 = &unk_1F04E9398;
  v11 = v9;
  v21 = v11;
  [v4 setFailureBlock:v18];
  [(CKSOSUtilities *)self _refreshServicesForSending:v4];
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
  v16 = v4;
  v14 = v4;
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

- (void)_refreshServicesForSending:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [a3 recipients];
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
        v9 = [MEMORY[0x1E69A5C90] smsService];
        v10 = CKMakeHandlesFromRecipientsWithFallbackService(v8, v9);

        if ([v10 count])
        {
          v11 = [v10 firstObject];

          if (v11)
          {
            v12 = [v10 firstObject];
            v13 = [(CKSOSUtilities *)self _chatForHandle:v12];
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

- (void)_sendMessageAndObserveNotification:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 recipients];
  v6 = [v4 failureBlock];
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
      v28 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Trying to send SOS message with recipients:%@", buf, 0xCu);
    }
  }

  v8 = [(CKSOSUtilities *)self _sendMessageAndReturnGUIDs:v4];
  v9 = v8;
  if (v6 && v8)
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = [MEMORY[0x1E696ADC8] mainQueue];
    v12 = *MEMORY[0x1E69A5830];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__CKSOSUtilities__sendMessageAndObserveNotification___block_invoke;
    v17[3] = &unk_1E72F8900;
    v18 = v9;
    v19 = v6;
    v20 = &v21;
    v13 = [v10 addObserverForName:v12 object:0 queue:v11 usingBlock:v17];
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

- (id)_compositionsForMessage:(id)a3 withReasons:(unint64_t)a4
{
  v5 = a3;
  v6 = [CKComposition alloc];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = [v5 messageForReasons:a4];
  v9 = [v7 initWithString:v8];
  v10 = [(CKComposition *)v6 initWithText:v9 subject:0];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v10, 0}];
  v12 = [v5 locationURL];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [CKComposition alloc];
    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    v16 = [v5 locationURL];
    v17 = [v15 initWithString:v16];
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

- (id)_sendMessageAndReturnGUIDs:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v35 = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [v3 recipients];
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
        v7 = [MEMORY[0x1E69A5C90] smsService];
        v8 = CKMakeHandlesFromRecipientsWithFallbackService(v6, v7);

        if ([v8 count])
        {
          v9 = [v8 firstObject];
          v10 = v9 == 0;

          if (!v10)
          {
            v11 = [v8 firstObject];
            v12 = [(CKSOSUtilities *)self _chatForHandle:v11];
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = [v12 guid];
                *buf = 138412802;
                v45 = v3;
                v46 = 2112;
                v47 = v11;
                v48 = 2112;
                v49 = v14;
                _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "_sendMessageAndReturnGUIDs:%@, handle %@, chat guid %@.", buf, 0x20u);
              }
            }

            v15 = [[CKConversation alloc] initWithChat:v12];
            v16 = [v3 recipientReasons];
            v17 = [v16 objectForKeyedSubscript:v5];
            v18 = [v17 integerValue];

            v19 = [v11 ID];
            IsEmail = IMStringIsEmail();

            if (IsEmail)
            {
              if (IMOSLoggingEnabled())
              {
                v21 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v45 = v3;
                  _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "[Alerting] sending SOS messages over iMessage to Zelkova email handle. %@", buf, 0xCu);
                }

                goto LABEL_33;
              }

              goto LABEL_34;
            }

            v22 = [(CKConversation *)v15 lastAddressedHandle];
            v23 = IMStringIsEmail();

            if (v23)
            {
              if ((v18 & 2) != 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v45 = v3;
                    _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "[Alerting] sending SOS messages over iMessage to Zelkova phone number handle from email handle. %@", buf, 0xCu);
                  }
                }

                v25 = [(CKSOSUtilities *)self _compositionsForMessage:v3 withReasons:2];
                v26 = -[CKSOSUtilities _sendCompositions:toConversation:useStandalone:shouldForceSMS:isCritical:](self, "_sendCompositions:toConversation:useStandalone:shouldForceSMS:isCritical:", v25, v15, [v3 useStandalone], 0, objc_msgSend(v3, "isCritical"));
                [v35 addObjectsFromArray:v26];
              }

              if (v18)
              {
                if (IMOSLoggingEnabled())
                {
                  v27 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v45 = v3;
                    _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "[Alerting] sending SOS messages to EC over SMS. %@", buf, 0xCu);
                  }
                }

                v18 = 1;
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
                  v45 = v3;
                  _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "[Alerting] sending SOS messages over SMS. %@", buf, 0xCu);
                }

LABEL_33:
              }

LABEL_34:
              v28 = [(CKSOSUtilities *)self _compositionsForMessage:v3 withReasons:v18];
              v29 = -[CKSOSUtilities _sendCompositions:toConversation:useStandalone:shouldForceSMS:isCritical:](self, "_sendCompositions:toConversation:useStandalone:shouldForceSMS:isCritical:", v28, v15, [v3 useStandalone], IsEmail ^ 1u, objc_msgSend(v3, "isCritical"));
              [v35 addObjectsFromArray:v29];
            }
          }
        }
      }

      v38 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v38);
  }

  if (![v35 count])
  {
    v30 = [v3 failureBlock];
    v31 = v30 == 0;

    if (!v31)
    {
      v32 = IMLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(CKSOSUtilities *)v3 _sendMessageAndReturnGUIDs:v32];
      }

      v33 = [v3 failureBlock];
      v33[2]();
    }
  }

  return v35;
}

- (id)_chatForHandle:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69A7F68] sharedInstance];
  v5 = [v4 ctSubscriptionInfo];
  v6 = [v5 preferredOrDefaultSubscriptionContext];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "If no chat is found, new chat will be created with subscription %@", &v15, 0xCu);
    }
  }

  v8 = [v6 phoneNumber];
  v9 = [v6 labelID];
  v10 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v11 = [v3 ID];
  v12 = [v10 existingChatWithChatIdentifier:v11];

  if (!v12)
  {
    v13 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v12 = [v13 chatWithHandle:v3 lastAddressedHandle:v8 lastAddressedSIMID:v9];
  }

  return v12;
}

- (id)_uniqueFilePathForFilename:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [MEMORY[0x1E696AEC0] stringGUID];
  v7 = NSTemporaryDirectory();
  v8 = [v5 createUniqueDirectoryWithName:v6 atPath:v7 ofType:0];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v4 lastPathComponent];
  v11 = [v10 stringByDeletingPathExtension];
  v12 = [v4 pathExtension];

  v13 = [v9 uniqueFilename:v11 atPath:v8 ofType:v12];

  return v13;
}

- (id)_sendCompositions:(id)a3 toConversation:(id)a4 useStandalone:(BOOL)a5 shouldForceSMS:(BOOL)a6 isCritical:(BOOL)a7
{
  v8 = a6;
  v9 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v12;
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

        v20 = [(CKSOSUtilities *)self sendComposition:*(*(&v22 + 1) + 8 * i) toConversation:v13 useStandalone:v9 shouldForceSMS:v8 isCritical:a7, v22];
        [v14 addObjectsFromArray:v20];

        a7 = 0;
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      a7 = 0;
    }

    while (v17);
  }

  return v14;
}

- (id)sendComposition:(id)a3 toConversation:(id)a4 useStandalone:(BOOL)a5 shouldForceSMS:(BOOL)a6 isCritical:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v39 = 0;
  v34 = v11;
  v13 = [v12 canSendComposition:v11 error:&v39];
  v33 = v39;
  if (v13)
  {
    [v12 resetCaches];
    v14 = [v12 messagesFromComposition:v11];
    [v12 setUnsentComposition:0];
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
          [v19 setUseStandalone:v9];
          v20 = [v19 __ck_sosMessage];
          v21 = v20;
          if (v7)
          {
            v22 = [v20 __ck_criticalMessage];

            v21 = v22;
          }

          if (v8)
          {
            v23 = [MEMORY[0x1E69A5C90] smsService];
            [v12 sendMessage:v21 onService:v23 newComposition:0];
          }

          else
          {
            [v12 sendMessage:v21 newComposition:0];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v16);
    }

    [v12 setIgnoringTypingUpdates:0];
    [v12 setLocalUserIsTyping:0];
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

  v26 = [MEMORY[0x1E69A8168] sharedInstance];
  v40[0] = @"markedCritical";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v41[0] = v27;
  v40[1] = @"usingStandalone";
  v28 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v41[1] = v28;
  v40[2] = @"forcedSMS";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v41[2] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
  [v26 trackEvent:*MEMORY[0x1E69A75C0] withDictionary:v30];

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