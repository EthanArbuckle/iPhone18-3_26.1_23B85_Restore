@interface IMAssociatedMessageProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMAssociatedMessageProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)input
{
  v4 = MEMORY[0x277CCA898];
  inputCopy = input;
  v6 = [v4 alloc];
  plainTextBody = [inputCopy plainTextBody];
  v8 = [v6 initWithString:plainTextBody];

  __im_attributedStringByAssigningMessagePartNumbers = [v8 __im_attributedStringByAssigningMessagePartNumbers];

  v28 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:inputCopy];
  v27 = objc_alloc(MEMORY[0x277D1A8A8]);
  fromDisplayID = [inputCopy fromDisplayID];
  v9 = MEMORY[0x277CBEAA8];
  timestamp = [inputCopy timestamp];
  v11 = [v9 __im_iMessageDateFromTimeStamp:timestamp];
  gUID = [inputCopy GUID];
  associatedMessageGUID = [inputCopy associatedMessageGUID];
  associatedMessageType = [inputCopy associatedMessageType];
  associatedMessageRange = [inputCopy associatedMessageRange];
  v17 = v16;
  messageSummaryInfo = [inputCopy messageSummaryInfo];
  threadIdentifierGUID = [inputCopy threadIdentifierGUID];
  v20 = [v27 initWithSender:fromDisplayID time:v11 body:__im_attributedStringByAssigningMessagePartNumbers attributes:0 fileTransferGUIDs:0 flags:v28 error:0 guid:gUID associatedMessageGUID:associatedMessageGUID associatedMessageType:associatedMessageType associatedMessageRange:associatedMessageRange messageSummaryInfo:v17 threadIdentifier:{messageSummaryInfo, threadIdentifierGUID}];

  replicatedFallbackGUIDs = [inputCopy replicatedFallbackGUIDs];

  [v20 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs];
  v22 = [(IMTextMessageProcessingPipelineComponent *)self _findMessageItemForAssociatedMessageItem:v20];
  v23 = [(IMTextMessageProcessingPipelineComponent *)self _findAssociatedMessagePartTextForMessageItem:v20 associatedMessageItem:v22];
  [v20 setAssociatedMessagePartText:v23];

  expressiveSendStyleID = [v22 expressiveSendStyleID];
  [v20 setAssociatedMessageEffect:expressiveSendStyleID];

  return v20;
}

- (id)runIndividuallyWithInput:(id)input
{
  v13 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      gUID = [inputCopy GUID];
      *buf = 138412290;
      v12 = gUID;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMAssociatedMessageProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  v10.receiver = self;
  v10.super_class = IMAssociatedMessageProcessingPipelineComponent;
  v7 = [(IMTextMessageProcessingPipelineComponent *)&v10 runIndividuallyWithInput:inputCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end