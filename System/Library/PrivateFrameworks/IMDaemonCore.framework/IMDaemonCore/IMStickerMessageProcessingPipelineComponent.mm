@interface IMStickerMessageProcessingPipelineComponent
- (IMStickerMessageProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)createMessageItemWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMStickerMessageProcessingPipelineComponent

- (IMStickerMessageProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  messageStore = [resourcesCopy messageStore];
  v9.receiver = self;
  v9.super_class = IMStickerMessageProcessingPipelineComponent;
  v7 = [(IMTextMessageProcessingPipelineComponent *)&v9 initWithMessageStore:messageStore];

  if (v7)
  {
    objc_storeStrong(&v7->_pipelineResources, resources);
  }

  return v7;
}

- (id)createMessageItemWithInput:(id)input
{
  inputCopy = input;
  v5 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:inputCopy];
  associatedMessageGUID = [inputCopy associatedMessageGUID];

  if (associatedMessageGUID)
  {
    v45 = v5;
    messageSummaryInfo = [inputCopy messageSummaryInfo];
    messageSummaryAdditions = [(IMStickerMessageProcessingPipelineComponent *)self messageSummaryAdditions];

    selfCopy = self;
    if (messageSummaryAdditions)
    {
      v9 = [messageSummaryInfo mutableCopy];
      messageSummaryAdditions2 = [(IMStickerMessageProcessingPipelineComponent *)self messageSummaryAdditions];
      [v9 addEntriesFromDictionary:messageSummaryAdditions2];

      v46 = v9;
    }

    else
    {
      v46 = messageSummaryInfo;
    }

    v41 = objc_alloc(MEMORY[0x277D1A8A8]);
    fromIdentifier = [inputCopy fromIdentifier];
    _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
    v24 = MEMORY[0x277CBEAA8];
    timestamp = [inputCopy timestamp];
    v25 = [v24 __im_iMessageDateFromTimeStamp:timestamp];
    richBody = [inputCopy richBody];
    fileTransferGUIDs = [inputCopy fileTransferGUIDs];
    gUID = [inputCopy GUID];
    associatedMessageGUID2 = [inputCopy associatedMessageGUID];
    associatedMessageType = [inputCopy associatedMessageType];
    associatedMessageRange = [inputCopy associatedMessageRange];
    v33 = v32;
    threadIdentifierGUID = [inputCopy threadIdentifierGUID];
    v20 = [v41 initWithSender:_stripFZIDPrefix time:v25 body:richBody attributes:0 fileTransferGUIDs:fileTransferGUIDs flags:v45 error:0 guid:gUID associatedMessageGUID:associatedMessageGUID2 associatedMessageType:associatedMessageType associatedMessageRange:associatedMessageRange messageSummaryInfo:v33 threadIdentifier:{v46, threadIdentifierGUID}];

    replicatedFallbackGUIDs = [inputCopy replicatedFallbackGUIDs];
    [v20 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs];

    v36 = [(IMTextMessageProcessingPipelineComponent *)selfCopy _findMessageItemForAssociatedMessageItem:v20];
    v37 = [(IMTextMessageProcessingPipelineComponent *)selfCopy _findAssociatedMessagePartTextForMessageItem:v20 associatedMessageItem:v36];
    [v20 setAssociatedMessagePartText:v37];

    replicatedFallbackGUIDs2 = v46;
  }

  else
  {
    v47 = objc_alloc(MEMORY[0x277D1AA70]);
    fromIdentifier2 = [inputCopy fromIdentifier];
    _stripFZIDPrefix2 = [fromIdentifier2 _stripFZIDPrefix];
    v13 = MEMORY[0x277CBEAA8];
    timestamp2 = [inputCopy timestamp];
    v15 = [v13 __im_iMessageDateFromTimeStamp:timestamp2];
    richBody2 = [inputCopy richBody];
    fileTransferGUIDs2 = [inputCopy fileTransferGUIDs];
    gUID2 = [inputCopy GUID];
    threadIdentifierGUID2 = [inputCopy threadIdentifierGUID];
    v20 = [v47 initWithSender:_stripFZIDPrefix2 time:v15 body:richBody2 attributes:0 fileTransferGUIDs:fileTransferGUIDs2 flags:v5 error:0 guid:gUID2 threadIdentifier:threadIdentifierGUID2];

    messageSummaryInfo2 = [inputCopy messageSummaryInfo];
    [v20 setMessageSummaryInfo:messageSummaryInfo2];

    expressiveSendStyleIdentifier = [inputCopy expressiveSendStyleIdentifier];
    [v20 setExpressiveSendStyleID:expressiveSendStyleIdentifier];

    replicatedFallbackGUIDs2 = [inputCopy replicatedFallbackGUIDs];
    [v20 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs2];
  }

  if ([inputCopy scheduleType] == 2 && objc_msgSend(v20, "isFromMe"))
  {
    [v20 setScheduleType:{objc_msgSend(inputCopy, "scheduleType")}];
    [v20 setScheduleState:2];
    scheduledDate = [inputCopy scheduledDate];
    [v20 setTime:scheduledDate];
  }

  return v20;
}

- (id)runIndividuallyWithInput:(id)input
{
  v5.receiver = self;
  v5.super_class = IMStickerMessageProcessingPipelineComponent;
  v3 = [(IMAssociatedMessageProcessingPipelineComponent *)&v5 runIndividuallyWithInput:input];

  return v3;
}

@end