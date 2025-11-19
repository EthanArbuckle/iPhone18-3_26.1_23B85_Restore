@interface IMFindChatProcessingPipelineComponent
+ (id)findGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 groupName:(id)a5 participants:(id)a6 groupID:(id)a7 serviceName:(id)a8 chatRegistry:(id)a9;
- (BOOL)_participantsContainBizID:(id)a3;
- (BOOL)_shouldDropMessageGroupID:(id)a3 participants:(id)a4 fromIdentifier:(id)a5 toIdentifier:(id)a6;
- (BOOL)shouldDropDueToGroupSize:(id)a3;
- (IMFindChatProcessingPipelineComponent)initWithChatRegistry:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMFindChatProcessingPipelineComponent

- (IMFindChatProcessingPipelineComponent)initWithChatRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMFindChatProcessingPipelineComponent;
  v6 = [(IMFindChatProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chatRegistry, a3);
  }

  return v7;
}

+ (id)findGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 groupName:(id)a5 participants:(id)a6 groupID:(id)a7 serviceName:(id)a8 chatRegistry:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v22 = [v21 isOneChatEnabled];

  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = v23;
    if (v18)
    {
      [v23 addObject:v18];
    }

    v25 = [v20 bestCandidateGroupChatWithFromIdentifier:v14 toIdentifier:v15 displayName:v16 participants:v17 updatingToLatestiMessageGroupID:v18 sortedIdentifiers:v24 serviceName:v19];
  }

  else
  {
    v25 = [v20 bestCandidateGroupChatWithFromIdentifier:v14 toIdentifier:v15 displayName:v16 participants:v17 groupID:v18 serviceName:v19];
  }

  return v25;
}

- (BOOL)shouldDropDueToGroupSize:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:@"md-max-chat-participants-incoming"];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
    if (!v6)
    {
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

    v7 = v6 + 1;
  }

  else
  {
    v7 = 51;
  }

  v8 = [v3 count];
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

- (BOOL)_participantsContainBizID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (MEMORY[0x231897A20](v7))
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)_shouldDropMessageGroupID:(id)a3 participants:(id)a4 fromIdentifier:(id)a5 toIdentifier:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (IMSharedHelperAreObjectsLogicallySame())
  {
    goto LABEL_2;
  }

  if ([v10 length])
  {
    v15 = [MEMORY[0x277D1A9E8] sharedInstance];
    v16 = [v15 isGroupInBlocklist:v10];

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
        v21 = v10;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "GroupID %@ was found in blocklist, dropping message", &v20, 0xCu);
      }

LABEL_8:

      goto LABEL_10;
    }
  }

  if ([(IMFindChatProcessingPipelineComponent *)self shouldDropDueToGroupSize:v11])
  {
    goto LABEL_10;
  }

  if ([(IMFindChatProcessingPipelineComponent *)self _participantsContainBizID:v11])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v11;
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

- (id)runIndividuallyWithInput:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMFindChatProcessingPipelineComponent> Started processing", buf, 2u);
    }
  }

  v6 = [v4 chat];

  if (!v6)
  {
    v10 = [v4 participantIdentifiers];
    v11 = [v10 count] > 2;

    if (v11)
    {
      v12 = [v4 groupID];
      v13 = [v4 participantIdentifiers];
      v14 = [v4 fromIdentifier];
      v15 = [v4 toIdentifier];
      v16 = [(IMFindChatProcessingPipelineComponent *)self _shouldDropMessageGroupID:v12 participants:v13 fromIdentifier:v14 toIdentifier:v15];

      if (v16)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v4 groupID];
            v19 = [v4 participantIdentifiers];
            *buf = 138412546;
            v39 = v18;
            v40 = 2112;
            v41 = v19;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Dropping message from MessageGroupController. groupID: %@ participants: %@", buf, 0x16u);
          }
        }

        v20 = objc_alloc(MEMORY[0x277CCA9B8]);
        v21 = [v20 initWithDomain:*MEMORY[0x277D18DF8] code:6 userInfo:0];
        v22 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v21];
        goto LABEL_30;
      }

      v26 = [v4 account];
      v27 = [v26 service];
      v24 = [v27 internalName];

      v28 = objc_opt_class();
      v25 = [v4 fromIdentifier];
      v29 = [v4 toIdentifier];
      v30 = [v4 currentGroupName];
      v31 = [v4 participantIdentifiers];
      v32 = [v31 _IDsFromURIs];
      v33 = [v4 groupID];
      v21 = [v28 findGroupChatWithFromIdentifier:v25 toIdentifier:v29 groupName:v30 participants:v32 groupID:v33 serviceName:v24 chatRegistry:self->_chatRegistry];
    }

    else
    {
      chatRegistry = self->_chatRegistry;
      v24 = [v4 fromDisplayID];
      v25 = [v4 account];
      v21 = [(IMDChatRegistry *)chatRegistry existingChatForID:v24 account:v25];
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

    [v4 setChat:v21];
    v22 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
LABEL_30:
    v9 = v22;

    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 chat];
      *buf = 138412290;
      v39 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "<IMFindChatProcessingPipelineComponent> Found pre-supplied chat: %@", buf, 0xCu);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
LABEL_31:

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

@end