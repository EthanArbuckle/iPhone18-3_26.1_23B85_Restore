@interface IMCrossServiceAssociationMessageProcessingPipelineComponent
- (IMCrossServiceAssociationMessageProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMCrossServiceAssociationMessageProcessingPipelineComponent

- (IMCrossServiceAssociationMessageProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMCrossServiceAssociationMessageProcessingPipelineComponent;
  v6 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v58[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if ([inputCopy crossServiceDeduplicationMechanism] == 1)
  {
    v5 = *MEMORY[0x277D1A628];
  }

  else
  {
    v5 = 0;
  }

  gUID = [inputCopy GUID];
  if (!gUID)
  {
    goto LABEL_31;
  }

  v7 = gUID;
  replacementGUID = [inputCopy replacementGUID];

  if (!replacementGUID || !v5)
  {
    goto LABEL_31;
  }

  pipelineResources = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];
  replacementGUID2 = [inputCopy replacementGUID];
  v12 = [messageStore messageWithGUID:replacementGUID2];

  pipelineResources2 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
  messageStore2 = [pipelineResources2 messageStore];
  gUID2 = [inputCopy GUID];
  v16 = [messageStore2 messageWithGUID:gUID2];

  pipelineResources3 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
  messageStore3 = [pipelineResources3 messageStore];
  gUID3 = [inputCopy GUID];
  v20 = [messageStore3 existingChatForMessageGUID:gUID3];

  v55 = v20;
  if ([inputCopy isFromMe])
  {
    v21 = 1;
    if (v16)
    {
LABEL_9:
      sender = [v16 sender];
      fromDisplayID = [inputCopy fromDisplayID];
      if ([sender isEqualToString:fromDisplayID])
      {
        isFromMe = 1;
      }

      else if ([inputCopy isFromMe])
      {
        isFromMe = [v16 isFromMe];
      }

      else
      {
        isFromMe = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    chat = [inputCopy chat];
    if (chat)
    {
      chatIdentifier = [v20 chatIdentifier];
      chat2 = [inputCopy chat];
      chatIdentifier2 = [chat2 chatIdentifier];
      v21 = [chatIdentifier isEqualToString:chatIdentifier2];

      v20 = v55;
    }

    else
    {
      v21 = 0;
    }

    if (v16)
    {
      goto LABEL_9;
    }
  }

  isFromMe = 0;
LABEL_20:
  v29 = (v20 != 0) & v21 & isFromMe;
  if (v12 && ([v12 service], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", v5), v30, v20 = v55, v31))
  {
    if (v29)
    {
      plainBody = [v16 plainBody];
      plainBody2 = [v12 plainBody];
      v34 = [plainBody isEqualToString:plainBody2];

      if (v34)
      {
        pipelineResources4 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
        messageStore4 = [pipelineResources4 messageStore];
        guid = [v16 guid];
        v58[0] = guid;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
        v39 = [messageStore4 deleteMessageGUIDs:v38 inChat:v55];

        if ([v39 count])
        {
          pipelineResources5 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
          broadcaster = [pipelineResources5 broadcaster];
          guid2 = [v16 guid];
          v57 = guid2;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
          [broadcaster historicalMessageGUIDsDeleted:v43 chatGUIDs:0 queryID:0];
        }
      }
    }

    gUID4 = [inputCopy GUID];
    [v12 setFallbackHash:gUID4];

    pipelineResources6 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
    messageStore5 = [pipelineResources6 messageStore];
    v47 = [messageStore5 storeMessage:v12 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

    v20 = v56;
  }

  else if (v29)
  {
    replacementGUID3 = [inputCopy replacementGUID];
    [v16 setFallbackHash:replacementGUID3];

    [v16 setExpectedServiceForCrossServiceReplacement:v5];
    [v16 setService:v5];
    pipelineResources7 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
    messageStore6 = [pipelineResources7 messageStore];
    v51 = [messageStore6 storeMessage:v16 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

    v20 = v55;
  }

LABEL_31:
  v52 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

@end