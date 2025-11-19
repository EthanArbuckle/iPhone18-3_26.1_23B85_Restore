@interface NSURL(ChatKitAdditions)
+ (id)ckSMSURLFromBusinessChatURL:()ChatKitAdditions;
+ (id)ckURLForResource:()ChatKitAdditions withExtension:;
- (id)ckCollaborationSceneIdentifier;
- (id)ckCollaborationShareOptions;
- (id)ckFaceTimeConversationUUID;
- (id)ckLaunchURLBalloonPluginBundleID;
- (id)ckLaunchURLBalloonPluginPayload;
- (id)ckLaunchURLPostComposeDismissal;
- (id)ckLaunchURLPresentContentForMessageGUID;
- (id)ckSuggestedReplies;
- (id)ckURLByPercentEncodingFragment;
- (uint64_t)ckAllowRetargeting;
- (uint64_t)ckIsLaunchAppURL;
- (uint64_t)ckIsSMSPrivateURLScheme;
- (uint64_t)ckIsUnitTestingURL;
- (uint64_t)ckKeepTranscriptStatus;
- (uint64_t)ckNeedLaunchStewie;
- (uint64_t)ckShouldInitiateCollaborationWithSend;
- (uint64_t)ckShouldShowComposeUI;
- (uint64_t)ckShouldShowDigitalTouchCanvas;
@end

@implementation NSURL(ChatKitAdditions)

+ (id)ckURLForResource:()ChatKitAdditions withExtension:
{
  v5 = a4;
  v6 = a3;
  v7 = CKFrameworkBundle();
  v8 = [v7 URLForResource:v6 withExtension:v5];

  return v8;
}

+ (id)ckSMSURLFromBusinessChatURL:()ChatKitAdditions
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 isEqualToIgnoringCase:@"bcrw.apple.com"];

  if (v5)
  {
    v6 = [v3 pathComponents];
    if ([v6 count] >= 2)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v3 resolvingAgainstBaseURL:1];
      if (v8)
      {
        v9 = [MEMORY[0x1E695DF70] array];
        v10 = [MEMORY[0x1E696AF20] componentsWithString:@"messages://open"];
        v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"service" value:*MEMORY[0x1E69A7AF0]];
        [v9 addObject:v11];
        v12 = [v6 objectAtIndexedSubscript:1];
        v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"recipient" value:v12];
        [v9 addObject:v13];
        v14 = [v8 queryItems];
        [v9 addObjectsFromArray:v14];

        [v10 setQueryItems:v9];
        v7 = [v10 URL];
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
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)ckShouldShowComposeUI
{
  v1 = [a1 absoluteString];
  v2 = [v1 containsString:@"compose=false"];

  return v2 ^ 1u;
}

- (uint64_t)ckNeedLaunchStewie
{
  v1 = [a1 absoluteString];
  v2 = [v1 containsString:@"cp_launch=true"];

  return v2;
}

- (uint64_t)ckShouldInitiateCollaborationWithSend
{
  v1 = [a1 absoluteString];
  v2 = [v1 containsString:@"collaboration-initiate-send=true"];

  return v2;
}

- (id)ckCollaborationSceneIdentifier
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 absoluteString];
  v4 = ExtractURLQueries();

  v5 = [v2 objectForKey:@"collaboration-scene-identifier"];

  return v5;
}

- (id)ckCollaborationShareOptions
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 absoluteString];
  v4 = ExtractURLQueries();

  v5 = [v2 objectForKey:@"collaboration-share-options"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:0];
    if (v6)
    {
      v11 = 0;
      v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v11];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Failed to convert data for Collaboration Share Options", v12, 2u);
        }
      }

      v7 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "No query object found for Collaboration Share Options", buf, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)ckURLByPercentEncodingFragment
{
  v2 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v3 = [v2 mutableCopy];

  [v3 removeCharactersInString:@"!"];
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v5 = [v4 fragment];
  v6 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v3];
  [v4 setFragment:v6];

  v7 = [v4 URL];

  return v7;
}

- (id)ckFaceTimeConversationUUID
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 absoluteString];
  v4 = ExtractURLQueries();

  v5 = [v2 objectForKey:@"facetime-conversation"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)ckShouldShowDigitalTouchCanvas
{
  v1 = [a1 absoluteString];
  v2 = [v1 containsString:@"dt-canvas=true"];

  return v2;
}

- (uint64_t)ckKeepTranscriptStatus
{
  v1 = [a1 absoluteString];
  v2 = [v1 containsString:@"keepTranscriptStatus=true"];

  return v2;
}

- (uint64_t)ckIsSMSPrivateURLScheme
{
  v1 = [a1 scheme];
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"sms-private"];

  return v3;
}

- (id)ckLaunchURLBalloonPluginBundleID
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a1 ckIsSMSPrivateURLScheme])
  {
    v2 = MEMORY[0x1E696AF20];
    v3 = [a1 absoluteString];
    v4 = [v2 componentsWithString:v3];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 queryItems];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 name];
          v12 = [v11 isEqualToString:@"appBundleID"];

          if (v12)
          {
            v13 = [v10 value];
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)ckLaunchURLBalloonPluginPayload
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a1 ckIsSMSPrivateURLScheme])
  {
    v2 = MEMORY[0x1E696AF20];
    v3 = [a1 absoluteString];
    v4 = [v2 componentsWithString:v3];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 queryItems];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v17 = v4;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 name];
          v12 = [v11 isEqualToString:@"appPayload"];

          if (v12)
          {
            v13 = [v10 value];
            v14 = [v13 dataUsingEncoding:4];
            v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {

              goto LABEL_15;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v15 = 0;
LABEL_15:
      v4 = v17;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (uint64_t)ckAllowRetargeting
{
  v1 = [a1 absoluteString];
  v2 = [v1 containsString:@"allowRetargeting=true"];

  return v2;
}

- (uint64_t)ckIsLaunchAppURL
{
  v1 = [a1 absoluteString];
  v2 = [v1 containsString:@"app?"];

  return v2;
}

- (uint64_t)ckIsUnitTestingURL
{
  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    v4 = [a1 scheme];
    v5 = [v4 lowercaseString];
    if ([v5 isEqualToString:@"sms"])
    {
LABEL_7:

LABEL_8:
      v10 = [a1 absoluteString];
      v11 = [v10 containsString:@"runUnitTest?"];

      return v11;
    }

    v6 = [a1 scheme];
    v7 = [v6 lowercaseString];
    if ([v7 isEqualToString:@"messages"])
    {
LABEL_6:

      goto LABEL_7;
    }

    v8 = [a1 scheme];
    v9 = [v8 lowercaseString];
    if ([v9 isEqualToString:@"sms-private"])
    {

      goto LABEL_6;
    }

    v13 = [a1 scheme];
    v14 = [v13 lowercaseString];
    v15 = [v14 isEqualToString:@"imessage"];

    if (v15)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

- (id)ckLaunchURLPostComposeDismissal
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AF20];
  v2 = [a1 absoluteString];
  v3 = [v1 componentsWithString:v2];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 queryItems];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:@"launchURLPostComposeDismiss"];

        if (v11)
        {
          v12 = [v9 value];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)ckSuggestedReplies
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v1 = [v14 queryItems];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 isEqualToString:@"reply"];

        if (v10)
        {
          v11 = [v8 value];
          if ([v11 length])
          {
            v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
            [v2 addObject:v12];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)ckLaunchURLPresentContentForMessageGUID
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AF20];
  v2 = [a1 absoluteString];
  v3 = [v1 componentsWithString:v2];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 queryItems];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:@"presentContentForMessage"];

        if (v11)
        {
          v12 = [v9 value];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end