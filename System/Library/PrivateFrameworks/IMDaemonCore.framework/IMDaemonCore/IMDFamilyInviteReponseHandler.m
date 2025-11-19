@interface IMDFamilyInviteReponseHandler
- (BOOL)canHandleNotificationResponse:(id)a3 userNotificationCenter:(id)a4;
- (BOOL)isValidInviteURL:(id)a3;
- (void)handleNotificationResponse:(id)a3 userNotificationCenter:(id)a4 completionHandler:(id)a5;
@end

@implementation IMDFamilyInviteReponseHandler

- (BOOL)canHandleNotificationResponse:(id)a3 userNotificationCenter:(id)a4
{
  v4 = [a3 notification];
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  v9 = *MEMORY[0x277D196E0];
  v10 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v6) = [v8 isEqualToString:v10];

  return v6;
}

- (void)handleNotificationResponse:(id)a3 userNotificationCenter:(id)a4 completionHandler:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a3 notification];
  v9 = [v8 request];
  v10 = [v9 content];
  v11 = [v10 userInfo];

  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D1A440]];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
  if (!v13)
  {
    v39 = IMLogHandleForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2918(v39, v40, v41, v42, v43, v44, v45, v46);
    }

    v7[2](v7, 0);
    goto LABEL_28;
  }

  v55 = self;
  v57 = v12;
  v58 = v11;
  [MEMORY[0x277CCACE0] componentsWithURL:v13 resolvingAgainstBaseURL:1];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v56 = v62 = 0u;
  v14 = [v56 queryItems];
  v15 = [v14 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v17 = *v60;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v60 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v59 + 1) + 8 * i);
      v20 = [v19 name];
      v21 = [v20 isEqualToString:@"inviteUrl"];

      if (v21)
      {
        v22 = [v19 value];

        if (!v22)
        {
          goto LABEL_15;
        }

        v23 = [MEMORY[0x277CBEBC0] URLWithString:v22];
        v24 = [MEMORY[0x277CCACE0] componentsWithURL:v23 resolvingAgainstBaseURL:1];
        v25 = [(IMDFamilyInviteReponseHandler *)v55 isValidInviteURL:v24];

        if (v25)
        {
          v26 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v27 = [MEMORY[0x277CBEBC0] URLWithString:v22];
          v28 = [v26 openSensitiveURL:v27 withOptions:0];

          if (!v28)
          {
            v12 = v57;
            v11 = v58;
            v38 = v56;
            goto LABEL_26;
          }

          v29 = [MEMORY[0x277D1AAA8] sharedInstance];
          [v29 trackAction:@"view" extensionBundleID:*MEMORY[0x277D196E0] isNotification:1];
        }

        else
        {
          v29 = IMLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D28A8(v29, v47, v48, v49, v50, v51, v52, v53);
          }

          v28 = 0;
        }

        v12 = v57;
        v11 = v58;
        v38 = v56;

LABEL_26:
        v7[2](v7, v28);

        goto LABEL_27;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_10:

LABEL_15:
  v30 = IMLogHandleForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D28E0(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  v7[2](v7, 0);
  v12 = v57;
  v11 = v58;
  v38 = v56;
LABEL_27:

LABEL_28:
  v54 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValidInviteURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 isEqual:@"setup.icloud.com"])
  {
    v5 = [v3 path];
    if ([v5 isEqual:@"/family/messages"])
    {
      v6 = [v3 scheme];
      v7 = [v6 isEqual:@"https"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end