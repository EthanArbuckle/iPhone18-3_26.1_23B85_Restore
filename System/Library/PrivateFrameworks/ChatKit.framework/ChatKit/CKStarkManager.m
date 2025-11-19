@interface CKStarkManager
+ (id)_directActionSource;
+ (void)_activateSiriWithContext:(id)a3;
+ (void)activateForConversation:(id)a3;
+ (void)activateForRecipient:(id)a3;
- (void)openSMSURL:(id)a3;
- (void)openURL:(id)a3 sourceApplication:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)templateApplicationScene:(id)a3 didConnectInterfaceController:(id)a4;
- (void)templateApplicationScene:(id)a3 didDisconnectInterfaceController:(id)a4;
@end

@implementation CKStarkManager

- (void)templateApplicationScene:(id)a3 didConnectInterfaceController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Stark window did connect", v11, 2u);
    }
  }

  CKStarkManagerConnectedToCarPlay = 1;
  v9 = [[_TtC7ChatKit31CKCarPlayConversationController alloc] initWithInterfaceController:v7];
  conversationController = self->_conversationController;
  self->_conversationController = v9;
}

- (void)templateApplicationScene:(id)a3 didDisconnectInterfaceController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Stark window did disconnect", v10, 2u);
    }
  }

  conversationController = self->_conversationController;
  self->_conversationController = 0;

  CKStarkManagerConnectedToCarPlay = 0;
}

+ (id)_directActionSource
{
  v2 = [objc_alloc(MEMORY[0x1E69CE1B8]) initWithDelegate:0];

  return v2;
}

+ (void)_activateSiriWithContext:(id)a3
{
  v4 = a3;
  v5 = [a1 _directActionSource];
  [v5 activateWithContext:v4 completion:&__block_literal_global_54];
}

void __43__CKStarkManager__activateSiriWithContext___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"Unsuccessfully";
      if (a2)
      {
        v4 = @"Successfully";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Siri Activated %@", &v5, 0xCu);
    }
  }
}

+ (void)activateForRecipient:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v6 = CKMakeHandlesFromRecipients(v5);

  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [v7 fullName];
    if ([v8 length])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E69CE1B0] messageComposeNewThreadDirectActionWithAppBundleId:@"com.apple.MobileSMS" fullName:v9 phoneOrEmailAddress:v4];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Activated to read message with recipients [%@]", &v12, 0xCu);
    }
  }

  [a1 _activateSiriWithContext:v10];
}

+ (void)activateForConversation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 chat];
  v6 = [v5 guid];
  v7 = v6;
  v8 = &stru_1F04268F8;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  if ([v4 hasUnreadMessages])
  {
    [MEMORY[0x1E69CE1B0] messageReadDirectActionWithAppBundleId:@"com.apple.MobileSMS" conversationGUID:v9];
  }

  else
  {
    [MEMORY[0x1E69CE1B0] messageReplyDirectActionWithAppBundleId:@"com.apple.MobileSMS" conversationGUID:v9];
  }
  v10 = ;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Activated to read message with message id [%@] from conversation [%@]", &v12, 0x16u);
    }
  }

  [a1 _activateSiriWithContext:v10];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v7 = [a5 URLContexts];
  if (v7)
  {
    [(CKStarkManager *)self scene:v8 openURLContexts:v7];
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v8 = [a4 anyObject];
  v5 = [v8 URL];
  v6 = [v8 options];
  v7 = [v6 sourceApplication];

  [(CKStarkManager *)self openURL:v5 sourceApplication:v7];
}

- (void)openURL:(id)a3 sourceApplication:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Opening url: %@ from source application: %@", buf, 0x16u);
    }
  }

  v8 = [v5 scheme];
  v9 = [v8 lowercaseString];
  if (([v9 isEqualToString:@"sms"] & 1) == 0)
  {
    v10 = [v5 scheme];
    v11 = [v10 lowercaseString];
    if (([v11 isEqualToString:@"messages"] & 1) == 0)
    {
      v12 = [v5 scheme];
      v13 = [v12 lowercaseString];
      if (([v13 isEqualToString:@"sms-private"] & 1) == 0)
      {
        v14 = [v5 scheme];
        v15 = [v14 lowercaseString];
        v16 = [v15 isEqualToString:@"imessage"];

        if ((v16 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  [(CKStarkManager *)self openSMSURL:v5];
LABEL_12:
}

- (void)openSMSURL:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v21 = 0;
  v5 = [v4 chatForURL:v3 outMessageText:0 outRecipientIDs:&v21 outService:0 outMessageGUID:0];
  v6 = v21;

  if (v5 && ([v5 allowedToShowConversation] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v3;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, " received URL: (%@) to a chat which contained non-allowlisted handles during downtime, so aborting open url request.", buf, 0xCu);
      }
    }
  }

  else
  {
    if ([v3 ckAllowRetargeting])
    {
      v7 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v20 = 0;
      v8 = [v7 existingChatWithAddresses:v6 allowAlternativeService:1 bestHandles:&v20];
      v9 = v20;

      if (v8)
      {
        v10 = v8;

        v5 = v10;
      }

      v11 = [v9 count];
      if (v11 == [v6 count])
      {
        v12 = [v9 __imArrayByApplyingBlock:&__block_literal_global_232];

        v6 = v12;
      }
    }

    if (v5)
    {
      v13 = +[CKConversationList sharedConversationList];
      v14 = [v13 conversationForExistingChat:v5];
    }

    else
    {
      v14 = 0;
    }

    v16 = +[CKStarkManager isCarPlayConnected];
    if (v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      [CKStarkManager activateForConversation:v14];
    }

    else if (+[CKStarkManager isCarPlayConnected](CKStarkManager, "isCarPlayConnected") && [v6 count])
    {
      v18 = [v6 firstObject];
      [CKStarkManager activateForRecipient:v18];
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v3;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Ignoring open url, no conversation or recipients for url %@", buf, 0xCu);
      }
    }
  }
}

@end