@interface CKStarkManager
+ (id)_directActionSource;
+ (void)_activateSiriWithContext:(id)context;
+ (void)activateForConversation:(id)conversation;
+ (void)activateForRecipient:(id)recipient;
- (void)openSMSURL:(id)l;
- (void)openURL:(id)l sourceApplication:(id)application;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)templateApplicationScene:(id)scene didConnectInterfaceController:(id)controller;
- (void)templateApplicationScene:(id)scene didDisconnectInterfaceController:(id)controller;
@end

@implementation CKStarkManager

- (void)templateApplicationScene:(id)scene didConnectInterfaceController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
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
  v9 = [[_TtC7ChatKit31CKCarPlayConversationController alloc] initWithInterfaceController:controllerCopy];
  conversationController = self->_conversationController;
  self->_conversationController = v9;
}

- (void)templateApplicationScene:(id)scene didDisconnectInterfaceController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
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

+ (void)_activateSiriWithContext:(id)context
{
  contextCopy = context;
  _directActionSource = [self _directActionSource];
  [_directActionSource activateWithContext:contextCopy completion:&__block_literal_global_54];
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

+ (void)activateForRecipient:(id)recipient
{
  v14[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v14[0] = recipientCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v6 = CKMakeHandlesFromRecipients(v5);

  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    fullName = [firstObject fullName];
    if ([fullName length])
    {
      v9 = fullName;
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

  v10 = [MEMORY[0x1E69CE1B0] messageComposeNewThreadDirectActionWithAppBundleId:@"com.apple.MobileSMS" fullName:v9 phoneOrEmailAddress:recipientCopy];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = recipientCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Activated to read message with recipients [%@]", &v12, 0xCu);
    }
  }

  [self _activateSiriWithContext:v10];
}

+ (void)activateForConversation:(id)conversation
{
  v16 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  chat = [conversationCopy chat];
  guid = [chat guid];
  v7 = guid;
  v8 = &stru_1F04268F8;
  if (guid)
  {
    v8 = guid;
  }

  v9 = v8;

  if ([conversationCopy hasUnreadMessages])
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
      v15 = conversationCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Activated to read message with message id [%@] from conversation [%@]", &v12, 0x16u);
    }
  }

  [self _activateSiriWithContext:v10];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  uRLContexts = [options URLContexts];
  if (uRLContexts)
  {
    [(CKStarkManager *)self scene:sceneCopy openURLContexts:uRLContexts];
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  anyObject = [contexts anyObject];
  v5 = [anyObject URL];
  options = [anyObject options];
  sourceApplication = [options sourceApplication];

  [(CKStarkManager *)self openURL:v5 sourceApplication:sourceApplication];
}

- (void)openURL:(id)l sourceApplication:(id)application
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  applicationCopy = application;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v19 = lCopy;
      v20 = 2112;
      v21 = applicationCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Opening url: %@ from source application: %@", buf, 0x16u);
    }
  }

  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];
  if (([lowercaseString isEqualToString:@"sms"] & 1) == 0)
  {
    scheme2 = [lCopy scheme];
    lowercaseString2 = [scheme2 lowercaseString];
    if (([lowercaseString2 isEqualToString:@"messages"] & 1) == 0)
    {
      scheme3 = [lCopy scheme];
      lowercaseString3 = [scheme3 lowercaseString];
      if (([lowercaseString3 isEqualToString:@"sms-private"] & 1) == 0)
      {
        scheme4 = [lCopy scheme];
        lowercaseString4 = [scheme4 lowercaseString];
        v16 = [lowercaseString4 isEqualToString:@"imessage"];

        if ((v16 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  [(CKStarkManager *)self openSMSURL:lCopy];
LABEL_12:
}

- (void)openSMSURL:(id)l
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v21 = 0;
  v5 = [mEMORY[0x1E69A5AF8] chatForURL:lCopy outMessageText:0 outRecipientIDs:&v21 outService:0 outMessageGUID:0];
  v6 = v21;

  if (v5 && ([v5 allowedToShowConversation] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = lCopy;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, " received URL: (%@) to a chat which contained non-allowlisted handles during downtime, so aborting open url request.", buf, 0xCu);
      }
    }
  }

  else
  {
    if ([lCopy ckAllowRetargeting])
    {
      mEMORY[0x1E69A5AF8]2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v20 = 0;
      v8 = [mEMORY[0x1E69A5AF8]2 existingChatWithAddresses:v6 allowAlternativeService:1 bestHandles:&v20];
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
      firstObject = [v6 firstObject];
      [CKStarkManager activateForRecipient:firstObject];
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = lCopy;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Ignoring open url, no conversation or recipients for url %@", buf, 0xCu);
      }
    }
  }
}

@end