@interface IMFindChatProcessingPipelineComponent
+ (id)findGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier groupName:(id)name participants:(id)participants groupID:(id)d serviceName:(id)serviceName chatRegistry:(id)registry;
- (BOOL)_participantsContainBizID:(id)d;
- (BOOL)_shouldDropMessageGroupID:(id)d participants:(id)participants fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (BOOL)shouldDropDueToGroupSize:(id)size;
- (IMFindChatProcessingPipelineComponent)initWithChatRegistry:(id)registry;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMFindChatProcessingPipelineComponent

- (IMFindChatProcessingPipelineComponent)initWithChatRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = IMFindChatProcessingPipelineComponent;
  v6 = [(IMFindChatProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chatRegistry, registry);
  }

  return v7;
}

+ (id)findGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier groupName:(id)name participants:(id)participants groupID:(id)d serviceName:(id)serviceName chatRegistry:(id)registry
{
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  nameCopy = name;
  participantsCopy = participants;
  dCopy = d;
  serviceNameCopy = serviceName;
  registryCopy = registry;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = v23;
    if (dCopy)
    {
      [v23 addObject:dCopy];
    }

    v25 = [registryCopy bestCandidateGroupChatWithFromIdentifier:identifierCopy toIdentifier:toIdentifierCopy displayName:nameCopy participants:participantsCopy updatingToLatestiMessageGroupID:dCopy sortedIdentifiers:v24 serviceName:serviceNameCopy];
  }

  else
  {
    v25 = [registryCopy bestCandidateGroupChatWithFromIdentifier:identifierCopy toIdentifier:toIdentifierCopy displayName:nameCopy participants:participantsCopy groupID:dCopy serviceName:serviceNameCopy];
  }

  return v25;
}

- (BOOL)shouldDropDueToGroupSize:(id)size
{
  v18 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:@"md-max-chat-participants-incoming"];

  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (!unsignedIntegerValue)
    {
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

    v7 = unsignedIntegerValue + 1;
  }

  else
  {
    v7 = 51;
  }

  v8 = [sizeCopy count];
  if (v8 <= v7)
  {
    goto LABEL_11;
  }

  v9 = v8;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Incoming Group message has too many participants (%lu, max = %lu), should drop message", &v14, 0x16u);
    }
  }

  v11 = 1;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_participantsContainBizID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dCopy = d;
  v4 = [dCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(dCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (MEMORY[0x231897A20](v7))
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [dCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_shouldDropMessageGroupID:(id)d participants:(id)participants fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  participantsCopy = participants;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  if (IMSharedHelperAreObjectsLogicallySame())
  {
    goto LABEL_2;
  }

  if ([dCopy length])
  {
    mEMORY[0x277D1A9E8] = [MEMORY[0x277D1A9E8] sharedInstance];
    v16 = [mEMORY[0x277D1A9E8] isGroupInBlocklist:dCopy];

    if (v16)
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_10:
        v14 = 1;
        goto LABEL_11;
      }

      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = dCopy;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "GroupID %@ was found in blocklist, dropping message", &v20, 0xCu);
      }

LABEL_8:

      goto LABEL_10;
    }
  }

  if ([(IMFindChatProcessingPipelineComponent *)self shouldDropDueToGroupSize:participantsCopy])
  {
    goto LABEL_10;
  }

  if ([(IMFindChatProcessingPipelineComponent *)self _participantsContainBizID:participantsCopy])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = participantsCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Dropping message because participant list contains biz id. participants: %@", &v20, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_2:
  v14 = 0;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)runIndividuallyWithInput:(id)input
{
  v42 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMFindChatProcessingPipelineComponent> Started processing", buf, 2u);
    }
  }

  chat = [inputCopy chat];

  if (!chat)
  {
    participantIdentifiers = [inputCopy participantIdentifiers];
    v11 = [participantIdentifiers count] > 2;

    if (v11)
    {
      groupID = [inputCopy groupID];
      participantIdentifiers2 = [inputCopy participantIdentifiers];
      fromIdentifier = [inputCopy fromIdentifier];
      toIdentifier = [inputCopy toIdentifier];
      v16 = [(IMFindChatProcessingPipelineComponent *)self _shouldDropMessageGroupID:groupID participants:participantIdentifiers2 fromIdentifier:fromIdentifier toIdentifier:toIdentifier];

      if (v16)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            groupID2 = [inputCopy groupID];
            participantIdentifiers3 = [inputCopy participantIdentifiers];
            *buf = 138412546;
            v39 = groupID2;
            v40 = 2112;
            v41 = participantIdentifiers3;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Dropping message from MessageGroupController. groupID: %@ participants: %@", buf, 0x16u);
          }
        }

        v20 = objc_alloc(MEMORY[0x277CCA9B8]);
        v21 = [v20 initWithDomain:*MEMORY[0x277D18DF8] code:6 userInfo:0];
        v22 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v21];
        goto LABEL_30;
      }

      account = [inputCopy account];
      service = [account service];
      internalName = [service internalName];

      v28 = objc_opt_class();
      fromIdentifier2 = [inputCopy fromIdentifier];
      toIdentifier2 = [inputCopy toIdentifier];
      currentGroupName = [inputCopy currentGroupName];
      participantIdentifiers4 = [inputCopy participantIdentifiers];
      _IDsFromURIs = [participantIdentifiers4 _IDsFromURIs];
      groupID3 = [inputCopy groupID];
      v21 = [v28 findGroupChatWithFromIdentifier:fromIdentifier2 toIdentifier:toIdentifier2 groupName:currentGroupName participants:_IDsFromURIs groupID:groupID3 serviceName:internalName chatRegistry:self->_chatRegistry];
    }

    else
    {
      chatRegistry = self->_chatRegistry;
      internalName = [inputCopy fromDisplayID];
      fromIdentifier2 = [inputCopy account];
      v21 = [(IMDChatRegistry *)chatRegistry existingChatForID:internalName account:fromIdentifier2];
    }

    v34 = IMOSLoggingEnabled();
    if (v21)
    {
      if (v34)
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = v21;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "<IMFindChatProcessingPipelineComponent> Found chat: %@", buf, 0xCu);
        }

LABEL_28:
      }
    }

    else if (v34)
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "<IMFindChatProcessingPipelineComponent> Chat not found. IMMessageLegacyProcessingPipelineComponent will create it.", buf, 2u);
      }

      goto LABEL_28;
    }

    [inputCopy setChat:v21];
    v22 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_30:
    v9 = v22;

    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      chat2 = [inputCopy chat];
      *buf = 138412290;
      v39 = chat2;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "<IMFindChatProcessingPipelineComponent> Found pre-supplied chat: %@", buf, 0xCu);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_31:

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

@end