@interface IMDScreenTimeAskReponseHandler
- (BOOL)canHandleNotificationResponse:(id)response userNotificationCenter:(id)center;
- (void)handleNotificationResponse:(id)response userNotificationCenter:(id)center completionHandler:(id)handler;
@end

@implementation IMDScreenTimeAskReponseHandler

- (BOOL)canHandleNotificationResponse:(id)response userNotificationCenter:(id)center
{
  notification = [response notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  v9 = *MEMORY[0x277D196F0];
  v10 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(content) = [v8 isEqualToString:v10];

  return content;
}

- (void)handleNotificationResponse:(id)response userNotificationCenter:(id)center completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  centerCopy = center;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  value = [userInfo objectForKey:*MEMORY[0x277D1A448]];
  if (value)
  {
LABEL_2:
    v12 = objc_alloc_init(MEMORY[0x277D4B8D8]);
    actionIdentifier = [responseCopy actionIdentifier];
    v14 = [actionIdentifier isEqualToString:*MEMORY[0x277D1A518]];

    if (v14)
    {
      v15 = @"approve15";
      v16 = 1;
    }

    else
    {
      actionIdentifier2 = [responseCopy actionIdentifier];
      v18 = [actionIdentifier2 isEqualToString:*MEMORY[0x277D1A528]];

      if (v18)
      {
        v15 = @"approveHour";
        v16 = 2;
      }

      else
      {
        actionIdentifier3 = [responseCopy actionIdentifier];
        v28 = [actionIdentifier3 isEqualToString:*MEMORY[0x277D1A510]];

        if (v28)
        {
          v15 = @"approveDay";
          v16 = 3;
        }

        else
        {
          actionIdentifier4 = [responseCopy actionIdentifier];
          v32 = [actionIdentifier4 isEqualToString:*MEMORY[0x277D1A520]];

          v16 = 0;
          if (v32)
          {
            v15 = @"decline";
          }

          else
          {
            v15 = 0;
          }
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
        *buf = 138412290;
        v51 = v34;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Sending sent ST response with answer: %@", buf, 0xCu);
      }
    }

    v45 = 0;
    [v12 respondToAskForTimeRequestWithIdentifier:value answer:v16 error:&v45];
    v35 = v45;
    if (v35)
    {
      mEMORY[0x277D1AAA8] = IMLogHandleForCategory();
      if (os_log_type_enabled(mEMORY[0x277D1AAA8], OS_LOG_TYPE_ERROR))
      {
        sub_22B7CFE74(v16, v35, mEMORY[0x277D1AAA8]);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
          *buf = 138412290;
          v51 = v38;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Successfully sent ST response with answer: %@", buf, 0xCu);
        }
      }

      mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8] trackAction:v15 extensionBundleID:*MEMORY[0x277D196F0] isNotification:1];
    }

    handlerCopy[2](handlerCopy, v35 == 0);
    goto LABEL_42;
  }

  v41 = [userInfo objectForKey:*MEMORY[0x277D1A440]];
  v19 = [MEMORY[0x277CBEBC0] URLWithString:v41];
  if (v19)
  {
    v40 = [MEMORY[0x277CCACE0] componentsWithURL:v19 resolvingAgainstBaseURL:1];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    queryItems = [v40 queryItems];
    v21 = [queryItems countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v21)
    {
      v22 = *v47;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(queryItems);
          }

          v24 = *(*(&v46 + 1) + 8 * i);
          name = [v24 name];
          v26 = [name isEqualToString:@"requestID"];

          if (v26)
          {
            value = [v24 value];
            goto LABEL_19;
          }
        }

        v21 = [queryItems countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    value = 0;
LABEL_19:

    if (value)
    {
      goto LABEL_2;
    }

    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22B7CFF34(v29);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22B7CFF78(v30);
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_42:

  v39 = *MEMORY[0x277D85DE8];
}

@end