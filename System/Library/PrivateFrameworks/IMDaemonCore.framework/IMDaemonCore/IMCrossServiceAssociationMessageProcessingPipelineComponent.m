@interface IMCrossServiceAssociationMessageProcessingPipelineComponent
- (IMCrossServiceAssociationMessageProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMCrossServiceAssociationMessageProcessingPipelineComponent

- (IMCrossServiceAssociationMessageProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMCrossServiceAssociationMessageProcessingPipelineComponent;
  v6 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 crossServiceDeduplicationMechanism] == 1)
  {
    v5 = *MEMORY[0x277D1A628];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 GUID];
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = v6;
  v8 = [v4 replacementGUID];

  if (!v8 || !v5)
  {
    goto LABEL_31;
  }

  v9 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
  v10 = [v9 messageStore];
  v11 = [v4 replacementGUID];
  v12 = [v10 messageWithGUID:v11];

  v13 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
  v14 = [v13 messageStore];
  v15 = [v4 GUID];
  v16 = [v14 messageWithGUID:v15];

  v17 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
  v18 = [v17 messageStore];
  v19 = [v4 GUID];
  v20 = [v18 existingChatForMessageGUID:v19];

  v55 = v20;
  if ([v4 isFromMe])
  {
    v21 = 1;
    if (v16)
    {
LABEL_9:
      v22 = [v16 sender];
      v23 = [v4 fromDisplayID];
      if ([v22 isEqualToString:v23])
      {
        v24 = 1;
      }

      else if ([v4 isFromMe])
      {
        v24 = [v16 isFromMe];
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v25 = [v4 chat];
    if (v25)
    {
      v26 = [v20 chatIdentifier];
      v27 = [v4 chat];
      v28 = [v27 chatIdentifier];
      v21 = [v26 isEqualToString:v28];

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

  v24 = 0;
LABEL_20:
  v29 = (v20 != 0) & v21 & v24;
  if (v12 && ([v12 service], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", v5), v30, v20 = v55, v31))
  {
    if (v29)
    {
      v32 = [v16 plainBody];
      v33 = [v12 plainBody];
      v34 = [v32 isEqualToString:v33];

      if (v34)
      {
        v35 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
        v36 = [v35 messageStore];
        v37 = [v16 guid];
        v58[0] = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
        v39 = [v36 deleteMessageGUIDs:v38 inChat:v55];

        if ([v39 count])
        {
          v40 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
          v41 = [v40 broadcaster];
          v42 = [v16 guid];
          v57 = v42;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
          [v41 historicalMessageGUIDsDeleted:v43 chatGUIDs:0 queryID:0];
        }
      }
    }

    v44 = [v4 GUID];
    [v12 setFallbackHash:v44];

    v45 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
    v46 = [v45 messageStore];
    v47 = [v46 storeMessage:v12 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

    v20 = v56;
  }

  else if (v29)
  {
    v48 = [v4 replacementGUID];
    [v16 setFallbackHash:v48];

    [v16 setExpectedServiceForCrossServiceReplacement:v5];
    [v16 setService:v5];
    v49 = [(IMCrossServiceAssociationMessageProcessingPipelineComponent *)self pipelineResources];
    v50 = [v49 messageStore];
    v51 = [v50 storeMessage:v16 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

    v20 = v55;
  }

LABEL_31:
  v52 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];

  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

@end