@interface IMDFamilyInviteReponseHandler
- (BOOL)canHandleNotificationResponse:(id)response userNotificationCenter:(id)center;
- (BOOL)isValidInviteURL:(id)l;
- (void)handleNotificationResponse:(id)response userNotificationCenter:(id)center completionHandler:(id)handler;
@end

@implementation IMDFamilyInviteReponseHandler

- (BOOL)canHandleNotificationResponse:(id)response userNotificationCenter:(id)center
{
  notification = [response notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  v9 = *MEMORY[0x277D196E0];
  v10 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(content) = [v8 isEqualToString:v10];

  return content;
}

- (void)handleNotificationResponse:(id)response userNotificationCenter:(id)center completionHandler:(id)handler
{
  v64 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  notification = [response notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D1A440]];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
  if (!v13)
  {
    v39 = IMLogHandleForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2918(v39, v40, v41, v42, v43, v44, v45, v46);
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_28;
  }

  selfCopy = self;
  v57 = v12;
  v58 = userInfo;
  [MEMORY[0x277CCACE0] componentsWithURL:v13 resolvingAgainstBaseURL:1];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v56 = v62 = 0u;
  queryItems = [v56 queryItems];
  v15 = [queryItems countByEnumeratingWithState:&v59 objects:v63 count:16];
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
        objc_enumerationMutation(queryItems);
      }

      v19 = *(*(&v59 + 1) + 8 * i);
      name = [v19 name];
      v21 = [name isEqualToString:@"inviteUrl"];

      if (v21)
      {
        value = [v19 value];

        if (!value)
        {
          goto LABEL_15;
        }

        v23 = [MEMORY[0x277CBEBC0] URLWithString:value];
        v24 = [MEMORY[0x277CCACE0] componentsWithURL:v23 resolvingAgainstBaseURL:1];
        v25 = [(IMDFamilyInviteReponseHandler *)selfCopy isValidInviteURL:v24];

        if (v25)
        {
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          v27 = [MEMORY[0x277CBEBC0] URLWithString:value];
          v28 = [defaultWorkspace openSensitiveURL:v27 withOptions:0];

          if (!v28)
          {
            v12 = v57;
            userInfo = v58;
            v38 = v56;
            goto LABEL_26;
          }

          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          [mEMORY[0x277D1AAA8] trackAction:@"view" extensionBundleID:*MEMORY[0x277D196E0] isNotification:1];
        }

        else
        {
          mEMORY[0x277D1AAA8] = IMLogHandleForCategory();
          if (os_log_type_enabled(mEMORY[0x277D1AAA8], OS_LOG_TYPE_ERROR))
          {
            sub_22B7D28A8(mEMORY[0x277D1AAA8], v47, v48, v49, v50, v51, v52, v53);
          }

          v28 = 0;
        }

        v12 = v57;
        userInfo = v58;
        v38 = v56;

LABEL_26:
        handlerCopy[2](handlerCopy, v28);

        goto LABEL_27;
      }
    }

    v16 = [queryItems countByEnumeratingWithState:&v59 objects:v63 count:16];
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

  handlerCopy[2](handlerCopy, 0);
  v12 = v57;
  userInfo = v58;
  v38 = v56;
LABEL_27:

LABEL_28:
  v54 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValidInviteURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host isEqual:@"setup.icloud.com"])
  {
    path = [lCopy path];
    if ([path isEqual:@"/family/messages"])
    {
      scheme = [lCopy scheme];
      v7 = [scheme isEqual:@"https"];
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