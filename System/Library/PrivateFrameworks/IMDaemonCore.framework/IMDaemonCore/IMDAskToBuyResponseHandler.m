@interface IMDAskToBuyResponseHandler
- (BOOL)canHandleNotificationResponse:(id)a3 userNotificationCenter:(id)a4;
- (void)handleNotificationResponse:(id)a3 userNotificationCenter:(id)a4 completionHandler:(id)a5;
@end

@implementation IMDAskToBuyResponseHandler

- (BOOL)canHandleNotificationResponse:(id)a3 userNotificationCenter:(id)a4
{
  v4 = [a3 notification];
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  v9 = *MEMORY[0x277D196E8];
  v10 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v6) = [v8 isEqualToString:v10];

  return v6;
}

- (void)handleNotificationResponse:(id)a3 userNotificationCenter:(id)a4 completionHandler:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v29 = a4;
  v8 = a5;
  v28 = v7;
  v9 = [v7 notification];
  v10 = [v9 request];
  v11 = [v10 content];
  v31 = [v11 userInfo];

  v30 = [v31 objectForKeyedSubscript:*MEMORY[0x277D1A440]];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:v30];
  if (v12)
  {
    v27 = [MEMORY[0x277CCACE0] componentsWithURL:v12 resolvingAgainstBaseURL:1];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = [v27 queryItems];
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = *v34;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v33 + 1) + 8 * v16);
        v18 = [v17 name];
        v19 = [v18 isEqualToString:@"requestID"];

        if (v19)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v20 = [v17 value];

      if (!v20)
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
        [v22 presentApprovalSheetWithRequestIdentifier:v20 completion:0];
        v23 = [MEMORY[0x277D1AAA8] sharedInstance];
        [v23 trackAction:@"view" extensionBundleID:*MEMORY[0x277D196E8] isNotification:1];

        v8[2](v8, 1);
      }

      else
      {
        v8[2](v8, 0);
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

      v8[2](v8, 0);
    }
  }

  else
  {
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D98E8(v25);
    }

    v8[2](v8, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end