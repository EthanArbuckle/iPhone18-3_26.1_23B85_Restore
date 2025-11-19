@interface IMChatIdentifierUtilities
+ (id)_handleBasedPersonCentricIDWithParticipantIDs:(id)a3;
+ (id)_randomUnverifiedChatIdentifierForGroupChat;
+ (id)generateUnusedChatIdentifierForGroupChatWithServiceName:(id)a3 chatWithChatIdentifierExists:(id)a4;
+ (id)personCentricIDForChatWithGUID:(id)a3 chatIdentifier:(id)a4 chatStyle:(unsigned __int8)a5 groupID:(id)a6 displayName:(id)a7 lastKnownToBeHybrid:(BOOL)a8 mergeDisplayNames:(BOOL)a9 participantIDs:(id)a10;
@end

@implementation IMChatIdentifierUtilities

+ (id)_randomUnverifiedChatIdentifierForGroupChat
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] __im_uniqueChatIdentifierForGroupChat];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Generated random chat identifier %@", &v5, 0xCu);
    }
  }

  return v2;
}

+ (id)generateUnusedChatIdentifierForGroupChatWithServiceName:(id)a3 chatWithChatIdentifierExists:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = 0;
  v9 = 3;
  *&v10 = 138412290;
  v15 = v10;
  while (1)
  {
    v11 = [a1 _randomUnverifiedChatIdentifierForGroupChat];

    v8 = v11;
    if (![v6 length])
    {
      break;
    }

    if (!v7 || v7[2](v7, v11))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = v15;
          v17 = v8;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Improbable collision has occured for group chat with chatIdentifier: %@", buf, 0xCu);
        }
      }

      if (--v9)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "No service provided for generateUnusedChatIdentifierForGroupChatWithAccount, can't verify there are no duplicates", buf, 2u);
    }
  }

LABEL_15:

  return v8;
}

+ (id)_handleBasedPersonCentricIDWithParticipantIDs:(id)a3
{
  v3 = [a3 arrayByApplyingSelector:sel_im_stripCategoryLabel];
  v4 = [v3 mutableCopy];
  [v4 sortUsingSelector:sel_caseInsensitiveCompare_];
  v5 = [v4 componentsJoinedByString:&stru_1F1BB91F0];

  return v5;
}

+ (id)personCentricIDForChatWithGUID:(id)a3 chatIdentifier:(id)a4 chatStyle:(unsigned __int8)a5 groupID:(id)a6 displayName:(id)a7 lastKnownToBeHybrid:(BOOL)a8 mergeDisplayNames:(BOOL)a9 participantIDs:(id)a10
{
  v13 = a5;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a10;
  if (v13 == 35)
  {
    v21 = v16;
    goto LABEL_24;
  }

  v33 = v16;
  v22 = a1;
  v23 = +[IMFeatureFlags sharedFeatureFlags];
  v24 = [v23 isTranscriptSharingEnabled];

  if (v24 && [v17 hasPrefix:@"tsharing:"])
  {
LABEL_20:
    v27 = v17;
    goto LABEL_22;
  }

  if (v13 != 43)
  {
    if (v13 == 45)
    {
      if ([v20 count] == 1)
      {
LABEL_21:
        v27 = [v22 _handleBasedPersonCentricIDWithParticipantIDs:v20];
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v25 = 0;
    v26 = 0;
    goto LABEL_15;
  }

  v25 = [v19 length] == 0;
  if ([v19 length])
  {
    v26 = a8 && a9;
  }

  else
  {
    v26 = 0;
  }

  if ([v20 count] > 1)
  {
LABEL_15:
    if (v25 || v26)
    {
      goto LABEL_21;
    }

    if ([v19 length])
    {
      v28 = IMMergeNamedGroups();
      v29 = MEMORY[0x1E696AEC0];
      v30 = [v22 _handleBasedPersonCentricIDWithParticipantIDs:v20];
      v31 = v30;
      if (v28)
      {
        [v29 stringWithFormat:@"%@-%@", v19, v30];
      }

      else
      {
        [v29 stringWithFormat:@"%@-%@", v18, v30];
      }
      v21 = ;

      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_13:
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-corruptChat", v17];
LABEL_22:
  v21 = v27;
LABEL_23:
  v16 = v33;
LABEL_24:

  return v21;
}

@end