@interface IMBalloonPluginManager(ChatKitAdditions)
- (id)balloonControllerForIMChatItem:()ChatKitAdditions contextIdentifier:;
@end

@implementation IMBalloonPluginManager(ChatKitAdditions)

- (id)balloonControllerForIMChatItem:()ChatKitAdditions contextIdentifier:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    type = [v6 type];
    v9 = [self balloonPluginForBundleID:type];

    if (v9)
    {
      v10 = [v9 balloonControllerForChatItem:v6 contextIdentifier:v7];
      if (v10)
      {
        if (objc_opt_respondsToSelector())
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __93__IMBalloonPluginManager_ChatKitAdditions__balloonControllerForIMChatItem_contextIdentifier___block_invoke;
          v18[3] = &unk_1E72F0CF8;
          v19 = v6;
          [v10 setUpdateSnapshot:v18];
        }

        v11 = v10;
      }

      else if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          type2 = [v6 type];
          *buf = 138412290;
          v21 = type2;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Unable to get balloon controller for chat item type: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          type3 = [v6 type];
          *buf = 138412290;
          v21 = type3;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Unable to get plugin for chat item type: %@", buf, 0xCu);
        }
      }

      v10 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Context identifier is nil, unable to get Balloon Plugin Controller", buf, 2u);
      }
    }

    v10 = 0;
  }

  return v10;
}

@end