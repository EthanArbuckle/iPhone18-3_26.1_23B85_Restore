@interface CKShare(ChatKitAdditions)
- (uint64_t)_nonOwnerParticipantsCountWithAcceptanceStatus:()ChatKitAdditions;
- (uint64_t)isCloudKitShareRemovable;
@end

@implementation CKShare(ChatKitAdditions)

- (uint64_t)isCloudKitShareRemovable
{
  if ([a1 publicPermission] != 1)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      return result;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v6 = "CKShare is public, not removing CloudKit share";
    v7 = buf;
    goto LABEL_9;
  }

  v2 = [a1 currentUserParticipant];
  v3 = [a1 owner];

  if (v2 != v3)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      return result;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v8 = 0;
    v6 = "Current user is not owner, not removing CloudKit share";
    v7 = &v8;
LABEL_9:
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
LABEL_10:

    return 0;
  }

  return [a1 _nonOwnerInvitedParticipantsCount] == 0;
}

- (uint64_t)_nonOwnerParticipantsCountWithAcceptanceStatus:()ChatKitAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a1 participants];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [a1 owner];
        if ([v11 isEqual:v12])
        {
        }

        else
        {
          v13 = [v11 acceptanceStatus];

          if (v13 == a3)
          {
            ++v8;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end