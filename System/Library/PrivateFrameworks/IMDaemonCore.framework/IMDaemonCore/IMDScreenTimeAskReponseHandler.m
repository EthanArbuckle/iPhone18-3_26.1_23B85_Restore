@interface IMDScreenTimeAskReponseHandler
- (BOOL)canHandleNotificationResponse:(id)a3 userNotificationCenter:(id)a4;
- (void)handleNotificationResponse:(id)a3 userNotificationCenter:(id)a4 completionHandler:(id)a5;
@end

@implementation IMDScreenTimeAskReponseHandler

- (BOOL)canHandleNotificationResponse:(id)a3 userNotificationCenter:(id)a4
{
  v4 = [a3 notification];
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  v9 = *MEMORY[0x277D196F0];
  v10 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v6) = [v8 isEqualToString:v10];

  return v6;
}

- (void)handleNotificationResponse:(id)a3 userNotificationCenter:(id)a4 completionHandler:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v42 = a4;
  v43 = a5;
  v8 = [v7 notification];
  v9 = [v8 request];
  v10 = [v9 content];
  v44 = [v10 userInfo];

  v11 = [v44 objectForKey:*MEMORY[0x277D1A448]];
  if (v11)
  {
LABEL_2:
    v12 = objc_alloc_init(MEMORY[0x277D4B8D8]);
    v13 = [v7 actionIdentifier];
    v14 = [v13 isEqualToString:*MEMORY[0x277D1A518]];

    if (v14)
    {
      v15 = @"approve15";
      v16 = 1;
    }

    else
    {
      v17 = [v7 actionIdentifier];
      v18 = [v17 isEqualToString:*MEMORY[0x277D1A528]];

      if (v18)
      {
        v15 = @"approveHour";
        v16 = 2;
      }

      else
      {
        v27 = [v7 actionIdentifier];
        v28 = [v27 isEqualToString:*MEMORY[0x277D1A510]];

        if (v28)
        {
          v15 = @"approveDay";
          v16 = 3;
        }

        else
        {
          v31 = [v7 actionIdentifier];
          v32 = [v31 isEqualToString:*MEMORY[0x277D1A520]];

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
    [v12 respondToAskForTimeRequestWithIdentifier:v11 answer:v16 error:&v45];
    v35 = v45;
    if (v35)
    {
      v36 = IMLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_22B7CFE74(v16, v35, v36);
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

      v36 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v36 trackAction:v15 extensionBundleID:*MEMORY[0x277D196F0] isNotification:1];
    }

    v43[2](v43, v35 == 0);
    goto LABEL_42;
  }

  v41 = [v44 objectForKey:*MEMORY[0x277D1A440]];
  v19 = [MEMORY[0x277CBEBC0] URLWithString:v41];
  if (v19)
  {
    v40 = [MEMORY[0x277CCACE0] componentsWithURL:v19 resolvingAgainstBaseURL:1];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = [v40 queryItems];
    v21 = [v20 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v21)
    {
      v22 = *v47;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v46 + 1) + 8 * i);
          v25 = [v24 name];
          v26 = [v25 isEqualToString:@"requestID"];

          if (v26)
          {
            v11 = [v24 value];
            goto LABEL_19;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_19:

    if (v11)
    {
      goto LABEL_2;
    }

    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22B7CFF34(v29);
    }

    v43[2](v43, 0);
  }

  else
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22B7CFF78(v30);
    }

    v43[2](v43, 0);
  }

LABEL_42:

  v39 = *MEMORY[0x277D85DE8];
}

@end