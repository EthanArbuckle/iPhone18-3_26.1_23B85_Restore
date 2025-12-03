@interface IMChatIdentifierUtilities
+ (id)_handleBasedPersonCentricIDWithParticipantIDs:(id)ds;
+ (id)_randomUnverifiedChatIdentifierForGroupChat;
+ (id)generateUnusedChatIdentifierForGroupChatWithServiceName:(id)name chatWithChatIdentifierExists:(id)exists;
+ (id)personCentricIDForChatWithGUID:(id)d chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style groupID:(id)iD displayName:(id)name lastKnownToBeHybrid:(BOOL)hybrid mergeDisplayNames:(BOOL)names participantIDs:(id)self0;
@end

@implementation IMChatIdentifierUtilities

+ (id)_randomUnverifiedChatIdentifierForGroupChat
{
  v7 = *MEMORY[0x1E69E9840];
  __im_uniqueChatIdentifierForGroupChat = [MEMORY[0x1E696AEC0] __im_uniqueChatIdentifierForGroupChat];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = __im_uniqueChatIdentifierForGroupChat;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Generated random chat identifier %@", &v5, 0xCu);
    }
  }

  return __im_uniqueChatIdentifierForGroupChat;
}

+ (id)generateUnusedChatIdentifierForGroupChatWithServiceName:(id)name chatWithChatIdentifierExists:(id)exists
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  existsCopy = exists;
  v8 = 0;
  v9 = 3;
  *&v10 = 138412290;
  v15 = v10;
  while (1)
  {
    _randomUnverifiedChatIdentifierForGroupChat = [self _randomUnverifiedChatIdentifierForGroupChat];

    v8 = _randomUnverifiedChatIdentifierForGroupChat;
    if (![nameCopy length])
    {
      break;
    }

    if (!existsCopy || existsCopy[2](existsCopy, _randomUnverifiedChatIdentifierForGroupChat))
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

+ (id)_handleBasedPersonCentricIDWithParticipantIDs:(id)ds
{
  v3 = [ds arrayByApplyingSelector:sel_im_stripCategoryLabel];
  v4 = [v3 mutableCopy];
  [v4 sortUsingSelector:sel_caseInsensitiveCompare_];
  v5 = [v4 componentsJoinedByString:&stru_1F1BB91F0];

  return v5;
}

+ (id)personCentricIDForChatWithGUID:(id)d chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style groupID:(id)iD displayName:(id)name lastKnownToBeHybrid:(BOOL)hybrid mergeDisplayNames:(BOOL)names participantIDs:(id)self0
{
  styleCopy = style;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  nameCopy = name;
  dsCopy = ds;
  if (styleCopy == 35)
  {
    v21 = dCopy;
    goto LABEL_24;
  }

  v33 = dCopy;
  selfCopy = self;
  v23 = +[IMFeatureFlags sharedFeatureFlags];
  isTranscriptSharingEnabled = [v23 isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled && [identifierCopy hasPrefix:@"tsharing:"])
  {
LABEL_20:
    identifierCopy = identifierCopy;
    goto LABEL_22;
  }

  if (styleCopy != 43)
  {
    if (styleCopy == 45)
    {
      if ([dsCopy count] == 1)
      {
LABEL_21:
        identifierCopy = [selfCopy _handleBasedPersonCentricIDWithParticipantIDs:dsCopy];
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v25 = 0;
    v26 = 0;
    goto LABEL_15;
  }

  v25 = [nameCopy length] == 0;
  if ([nameCopy length])
  {
    v26 = hybrid && names;
  }

  else
  {
    v26 = 0;
  }

  if ([dsCopy count] > 1)
  {
LABEL_15:
    if (v25 || v26)
    {
      goto LABEL_21;
    }

    if ([nameCopy length])
    {
      v28 = IMMergeNamedGroups();
      v29 = MEMORY[0x1E696AEC0];
      v30 = [selfCopy _handleBasedPersonCentricIDWithParticipantIDs:dsCopy];
      v31 = v30;
      if (v28)
      {
        [v29 stringWithFormat:@"%@-%@", nameCopy, v30];
      }

      else
      {
        [v29 stringWithFormat:@"%@-%@", iDCopy, v30];
      }
      v21 = ;

      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_13:
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-corruptChat", identifierCopy];
LABEL_22:
  v21 = identifierCopy;
LABEL_23:
  dCopy = v33;
LABEL_24:

  return v21;
}

@end