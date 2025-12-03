@interface IMChatRegistry(CKAdditions)
- (id)_ck_chatForHandles:()CKAdditions displayName:lastAddressedHandle:lastAddressedSIMID:joinedChatsOnly:findMatchingNamedGroups:createIfNecessary:;
@end

@implementation IMChatRegistry(CKAdditions)

- (id)_ck_chatForHandles:()CKAdditions displayName:lastAddressedHandle:lastAddressedSIMID:joinedChatsOnly:findMatchingNamedGroups:createIfNecessary:
{
  v68 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v44 = a4;
  v42 = a5;
  v43 = a6;
  v45 = v15;
  if (CKIsRunningUITests())
  {
    array = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v18)
    {
      v19 = *v58;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = [*(*(&v57 + 1) + 8 * i) ID];
          if ([v21 _appearsToBePhoneNumber])
          {
            v22 = IMInternationalForPhoneNumberWithOptions();

            v21 = v22;
          }

          v23 = IMStripFormattingFromAddress();
          [array addObject:v23];
        }

        v18 = [v17 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v18);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    obj = [mEMORY[0x1E69A5AF8] simulatedChats];

    v48 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v48)
    {
      v47 = *v54;
      while (2)
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v53 + 1) + 8 * j);
          v27 = [MEMORY[0x1E695DFA8] set];
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          participants = [v26 participants];
          v29 = [participants countByEnumeratingWithState:&v49 objects:v65 count:16];
          if (v29)
          {
            v30 = *v50;
            do
            {
              for (k = 0; k != v29; ++k)
              {
                if (*v50 != v30)
                {
                  objc_enumerationMutation(participants);
                }

                v32 = [*(*(&v49 + 1) + 8 * k) ID];
                v33 = IMStripFormattingFromAddress();
                [v27 addObject:v33];
              }

              v29 = [participants countByEnumeratingWithState:&v49 objects:v65 count:16];
            }

            while (v29);
          }

          v34 = [MEMORY[0x1E695DFD8] setWithArray:array];
          v35 = [v27 isEqualToSet:v34];

          if (v35)
          {
            v36 = v26;

            goto LABEL_32;
          }
        }

        v48 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (v48)
        {
          continue;
        }

        break;
      }
    }

    v36 = 0;
LABEL_32:
  }

  else if ([v15 count] < 2)
  {
    if ([v15 count] == 1)
    {
      v38 = [v15 objectAtIndex:0];
      v36 = [self existingChatWithHandle:v38 allowAlternativeService:0];
      if (!v36 && a9)
      {
        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v62 = v42;
            v63 = 2112;
            v64 = v43;
            _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Creating chat with last addressed handle %@ last addressed sim ID %@", buf, 0x16u);
          }
        }

        v36 = [self chatWithHandle:v38 lastAddressedHandle:v42 lastAddressedSIMID:v43];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(19);
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v62 = v15;
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_DEBUG, "Bad recipients for conversation request. %@", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog();
      }

      v36 = 0;
    }
  }

  else
  {
    if (a8)
    {
      v36 = [self existingChatWithHandles:v15 allowAlternativeService:0 groupID:0 displayName:v44 joinedChatsOnly:a7];
      if (v36)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v36 = 0;
    }

    if (a9)
    {
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v62 = v42;
          v63 = 2112;
          v64 = v43;
          _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "Creating group chat with last addressed handle %@ last addressed sim ID %@", buf, 0x16u);
        }
      }

      v36 = [self chatWithHandles:v45 displayName:v44 joinedChatsOnly:a7 findMatchingNamedGroups:a8 lastAddressedHandle:v42 lastAddressedSIMID:v43];
    }
  }

LABEL_33:

  return v36;
}

@end