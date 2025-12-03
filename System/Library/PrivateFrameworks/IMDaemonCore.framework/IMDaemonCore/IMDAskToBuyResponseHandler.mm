@interface IMDAskToBuyResponseHandler
- (BOOL)canHandleNotificationResponse:(id)response userNotificationCenter:(id)center;
- (void)handleNotificationResponse:(id)response userNotificationCenter:(id)center completionHandler:(id)handler;
@end

@implementation IMDAskToBuyResponseHandler

- (BOOL)canHandleNotificationResponse:(id)response userNotificationCenter:(id)center
{
  notification = [response notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  v9 = *MEMORY[0x277D196E8];
  v10 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(content) = [v8 isEqualToString:v10];

  return content;
}

- (void)handleNotificationResponse:(id)response userNotificationCenter:(id)center completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  centerCopy = center;
  handlerCopy = handler;
  v28 = responseCopy;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v30 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D1A440]];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:v30];
  if (v12)
  {
    v27 = [MEMORY[0x277CCACE0] componentsWithURL:v12 resolvingAgainstBaseURL:1];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    queryItems = [v27 queryItems];
    v14 = [queryItems countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = *v34;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(queryItems);
        }

        v17 = *(*(&v33 + 1) + 8 * v16);
        name = [v17 name];
        v19 = [name isEqualToString:@"requestID"];

        if (v19)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [queryItems countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      value = [v17 value];

      if (!value)
      {
        goto LABEL_19;
      }

      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Launching askpermission page", buf, 2u);
        }
      }

      v22 = MEMORY[0x231897B40](@"APRequestHandler", @"AskPermission");
      if (v22)
      {
        [v22 presentApprovalSheetWithRequestIdentifier:value completion:0];
        mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
        [mEMORY[0x277D1AAA8] trackAction:@"view" extensionBundleID:*MEMORY[0x277D196E8] isNotification:1];

        handlerCopy[2](handlerCopy, 1);
      }

      else
      {
        handlerCopy[2](handlerCopy, 0);
      }
    }

    else
    {
LABEL_10:

LABEL_19:
      v24 = IMLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D98A4(v24);
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D98E8(v25);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end