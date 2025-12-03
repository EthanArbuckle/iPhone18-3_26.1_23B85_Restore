@interface CKContactKeyVerificationRecipientsHelper
+ (BOOL)shouldShowVerifiedIconForRecipient:(id)recipient inChat:(id)chat;
+ (id)recipientsToUpdateForUpdatedCKVHandles:(id)handles recipients:(id)recipients inConversation:(id)conversation;
@end

@implementation CKContactKeyVerificationRecipientsHelper

+ (id)recipientsToUpdateForUpdatedCKVHandles:(id)handles recipients:(id)recipients inConversation:(id)conversation
{
  v56 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  recipientsCopy = recipients;
  conversationCopy = conversation;
  lastAddressedHandle = [conversationCopy lastAddressedHandle];
  _stripFZIDPrefix = [lastAddressedHandle _stripFZIDPrefix];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = handlesCopy;
  v9 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v9)
  {
    v10 = *v48;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(obj);
        }

        _stripFZIDPrefix2 = [*(*(&v47 + 1) + 8 * i) _stripFZIDPrefix];
        v13 = [_stripFZIDPrefix2 isEqualToString:_stripFZIDPrefix];

        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Updating atom state for all recipients because self status changed.", buf, 2u);
            }
          }

          v34 = recipientsCopy;

          goto LABEL_40;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v34 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = recipientsCopy;
  v36 = [v32 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v36)
  {
    v35 = *v44;
    do
    {
      v14 = 0;
      do
      {
        if (*v44 != v35)
        {
          v15 = v14;
          objc_enumerationMutation(v32);
          v14 = v15;
        }

        v37 = v14;
        v16 = *(*(&v43 + 1) + 8 * v14);
        if ([v16 isGroup])
        {
          [v34 addObject:v16];
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v38 = obj;
          v17 = [v38 countByEnumeratingWithState:&v39 objects:v53 count:16];
          if (v17)
          {
            v18 = *v40;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(v38);
                }

                _stripFZIDPrefix3 = [*(*(&v39 + 1) + 8 * j) _stripFZIDPrefix];
                normalizedAddress = [v16 normalizedAddress];
                _stripFZIDPrefix4 = [normalizedAddress _stripFZIDPrefix];
                if ([_stripFZIDPrefix4 isEqualToString:_stripFZIDPrefix3])
                {

LABEL_27:
                  [v34 addObject:v16];

                  goto LABEL_28;
                }

                address = [v16 address];
                _stripFZIDPrefix5 = [address _stripFZIDPrefix];
                v25 = [_stripFZIDPrefix5 isEqualToString:_stripFZIDPrefix3];

                if (v25)
                {
                  goto LABEL_27;
                }
              }

              v17 = [v38 countByEnumeratingWithState:&v39 objects:v53 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_28:
        }

        v14 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [v32 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v36);
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v34;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Recipients to update: %@", buf, 0xCu);
    }
  }

LABEL_40:

  return v34;
}

+ (BOOL)shouldShowVerifiedIconForRecipient:(id)recipient inChat:(id)chat
{
  v22 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  chatCopy = chat;
  mEMORY[0x1E69A5BB0] = [MEMORY[0x1E69A5BB0] sharedController];
  selfOptedIn = [mEMORY[0x1E69A5BB0] selfOptedIn];

  if (!selfOptedIn)
  {
    goto LABEL_5;
  }

  if (![recipientCopy isGroup])
  {
    address = [recipientCopy address];

    if (!address)
    {
      goto LABEL_15;
    }

    normalizedAddress = [recipientCopy normalizedAddress];
    v12 = IMStripFormattingFromAddress();

    mEMORY[0x1E69A5BB0]2 = [MEMORY[0x1E69A5BB0] sharedController];
    v9 = [mEMORY[0x1E69A5BB0]2 contactKeyVerificationStatusForHandleID:v12 inChat:chatCopy];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 134218498;
        v17 = v9;
        v18 = 2112;
        v19 = v12;
        v20 = 2112;
        v21 = chatCopy;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Setting kt status %lu to set atom state for address: %@ in chat: %@", &v16, 0x20u);
      }
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_5:
    LOBYTE(address) = 0;
    goto LABEL_15;
  }

  v9 = [chatCopy keyTransparencyStatusForAffectedHandles:0];
LABEL_12:
  if (v9 <= 0x13)
  {
    LOBYTE(address) = 0x40110u >> v9;
  }

  else
  {
    LOBYTE(address) = 0;
  }

LABEL_15:

  return address & 1;
}

@end