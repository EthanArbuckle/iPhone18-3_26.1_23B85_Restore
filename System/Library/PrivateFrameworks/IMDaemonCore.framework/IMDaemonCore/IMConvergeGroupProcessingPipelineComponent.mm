@interface IMConvergeGroupProcessingPipelineComponent
- (IMConvergeGroupProcessingPipelineComponent)initWithIDSTrustedData:(id)data;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMConvergeGroupProcessingPipelineComponent

- (IMConvergeGroupProcessingPipelineComponent)initWithIDSTrustedData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = IMConvergeGroupProcessingPipelineComponent;
  v6 = [(IMConvergeGroupProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsTrustedData, data);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v29 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  chat = [inputCopy chat];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = chat;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMConvergeGroupProcessingPipelineComponent> Started processing for chat: %@", buf, 0xCu);
    }
  }

  if (chat)
  {
    if ([chat style] != 43)
    {
      goto LABEL_24;
    }

    gUID = [inputCopy GUID];
    if (gUID)
    {
      v7 = +[IMDMessageStore sharedInstance];
      v8 = [v7 messageWithGUID:gUID];

      v9 = +[IMDServiceController sharedController];
      replicationSourceServiceName = [inputCopy replicationSourceServiceName];
      v26 = [v9 serviceWithName:replicationSourceServiceName];

      if (v8)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "<IMConvergeGroupProcessingPipelineComponent> already have message - nothing to converge", buf, 2u);
          }
        }
      }

      else
      {
        serviceSession = [inputCopy serviceSession];
        account = [inputCopy account];
        groupID = [inputCopy groupID];
        participantIdentifiers = [inputCopy participantIdentifiers];
        fromIdentifier = [inputCopy fromIdentifier];
        toIdentifier = [inputCopy toIdentifier];
        groupParticipantVersion = [inputCopy groupParticipantVersion];
        groupProtocolVersion = [inputCopy groupProtocolVersion];
        timestamp = [inputCopy timestamp];
        groupPhotoCreationTime = [inputCopy groupPhotoCreationTime];
        [chat _convergeGroupChatIfNeededWithServiceSession:serviceSession account:account replicationService:v26 groupID:groupID incomingParticipants:participantIdentifiers fromIdentifier:fromIdentifier toIdentifier:toIdentifier receivedGroupParticipantVersion:groupParticipantVersion receivedGroupProtocolVersion:groupProtocolVersion messageTimeStamp:timestamp groupPhotoCreationTime:groupPhotoCreationTime];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "<IMConvergeGroupProcessingPipelineComponent> missing message guid", buf, 2u);
      }
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_24;
    }

    gUID = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(gUID, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, gUID, OS_LOG_TYPE_INFO, "<IMConvergeGroupProcessingPipelineComponent> No chat found, nothing to converge", buf, 2u);
    }
  }

LABEL_24:
  v19 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end