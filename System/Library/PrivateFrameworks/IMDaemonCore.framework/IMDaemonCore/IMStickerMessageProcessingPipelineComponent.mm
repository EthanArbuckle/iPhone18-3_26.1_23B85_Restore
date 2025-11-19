@interface IMStickerMessageProcessingPipelineComponent
- (IMStickerMessageProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)createMessageItemWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMStickerMessageProcessingPipelineComponent

- (IMStickerMessageProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v6 = [v5 messageStore];
  v9.receiver = self;
  v9.super_class = IMStickerMessageProcessingPipelineComponent;
  v7 = [(IMTextMessageProcessingPipelineComponent *)&v9 initWithMessageStore:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_pipelineResources, a3);
  }

  return v7;
}

- (id)createMessageItemWithInput:(id)a3
{
  v4 = a3;
  v5 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:v4];
  v6 = [v4 associatedMessageGUID];

  if (v6)
  {
    v45 = v5;
    v7 = [v4 messageSummaryInfo];
    v8 = [(IMStickerMessageProcessingPipelineComponent *)self messageSummaryAdditions];

    v44 = self;
    if (v8)
    {
      v9 = [v7 mutableCopy];
      v10 = [(IMStickerMessageProcessingPipelineComponent *)self messageSummaryAdditions];
      [v9 addEntriesFromDictionary:v10];

      v46 = v9;
    }

    else
    {
      v46 = v7;
    }

    v41 = objc_alloc(MEMORY[0x277D1A8A8]);
    v43 = [v4 fromIdentifier];
    v40 = [v43 _stripFZIDPrefix];
    v24 = MEMORY[0x277CBEAA8];
    v42 = [v4 timestamp];
    v25 = [v24 __im_iMessageDateFromTimeStamp:v42];
    v26 = [v4 richBody];
    v27 = [v4 fileTransferGUIDs];
    v28 = [v4 GUID];
    v29 = [v4 associatedMessageGUID];
    v30 = [v4 associatedMessageType];
    v31 = [v4 associatedMessageRange];
    v33 = v32;
    v34 = [v4 threadIdentifierGUID];
    v20 = [v41 initWithSender:v40 time:v25 body:v26 attributes:0 fileTransferGUIDs:v27 flags:v45 error:0 guid:v28 associatedMessageGUID:v29 associatedMessageType:v30 associatedMessageRange:v31 messageSummaryInfo:v33 threadIdentifier:{v46, v34}];

    v35 = [v4 replicatedFallbackGUIDs];
    [v20 setReplicatedFallbackGUIDs:v35];

    v36 = [(IMTextMessageProcessingPipelineComponent *)v44 _findMessageItemForAssociatedMessageItem:v20];
    v37 = [(IMTextMessageProcessingPipelineComponent *)v44 _findAssociatedMessagePartTextForMessageItem:v20 associatedMessageItem:v36];
    [v20 setAssociatedMessagePartText:v37];

    v23 = v46;
  }

  else
  {
    v47 = objc_alloc(MEMORY[0x277D1AA70]);
    v11 = [v4 fromIdentifier];
    v12 = [v11 _stripFZIDPrefix];
    v13 = MEMORY[0x277CBEAA8];
    v14 = [v4 timestamp];
    v15 = [v13 __im_iMessageDateFromTimeStamp:v14];
    v16 = [v4 richBody];
    v17 = [v4 fileTransferGUIDs];
    v18 = [v4 GUID];
    v19 = [v4 threadIdentifierGUID];
    v20 = [v47 initWithSender:v12 time:v15 body:v16 attributes:0 fileTransferGUIDs:v17 flags:v5 error:0 guid:v18 threadIdentifier:v19];

    v21 = [v4 messageSummaryInfo];
    [v20 setMessageSummaryInfo:v21];

    v22 = [v4 expressiveSendStyleIdentifier];
    [v20 setExpressiveSendStyleID:v22];

    v23 = [v4 replicatedFallbackGUIDs];
    [v20 setReplicatedFallbackGUIDs:v23];
  }

  if ([v4 scheduleType] == 2 && objc_msgSend(v20, "isFromMe"))
  {
    [v20 setScheduleType:{objc_msgSend(v4, "scheduleType")}];
    [v20 setScheduleState:2];
    v38 = [v4 scheduledDate];
    [v20 setTime:v38];
  }

  return v20;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMStickerMessageProcessingPipelineComponent;
  v3 = [(IMAssociatedMessageProcessingPipelineComponent *)&v5 runIndividuallyWithInput:a3];

  return v3;
}

@end