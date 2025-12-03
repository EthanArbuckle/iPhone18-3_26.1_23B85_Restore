@interface IMCustomAcknowledgementMessageProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMCustomAcknowledgementMessageProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)input
{
  inputCopy = input;
  v27 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:inputCopy];
  v26 = objc_alloc(MEMORY[0x277D1A8A8]);
  fromIdentifier = [inputCopy fromIdentifier];
  _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
  v5 = MEMORY[0x277CBEAA8];
  timestamp = [inputCopy timestamp];
  v24 = [v5 __im_iMessageDateFromTimeStamp:timestamp];
  richBody = [inputCopy richBody];
  fileTransferGUIDs = [inputCopy fileTransferGUIDs];
  gUID = [inputCopy GUID];
  associatedMessageGUID = [inputCopy associatedMessageGUID];
  associatedMessageType = [inputCopy associatedMessageType];
  associatedMessageRange = [inputCopy associatedMessageRange];
  v13 = v12;
  messageSummaryInfo = [inputCopy messageSummaryInfo];
  threadIdentifierGUID = [inputCopy threadIdentifierGUID];
  v16 = [v26 initWithSender:_stripFZIDPrefix time:v24 body:richBody attributes:0 fileTransferGUIDs:fileTransferGUIDs flags:v27 error:0 guid:gUID associatedMessageGUID:associatedMessageGUID associatedMessageType:associatedMessageType associatedMessageRange:associatedMessageRange messageSummaryInfo:v13 threadIdentifier:{messageSummaryInfo, threadIdentifierGUID}];

  replicatedFallbackGUIDs = [inputCopy replicatedFallbackGUIDs];
  [v16 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs];

  v18 = [(IMTextMessageProcessingPipelineComponent *)self _findMessageItemForAssociatedMessageItem:v16];
  v19 = [(IMTextMessageProcessingPipelineComponent *)self _findAssociatedMessagePartTextForMessageItem:v16 associatedMessageItem:v18];
  [v16 setAssociatedMessagePartText:v19];

  expressiveSendStyleID = [v18 expressiveSendStyleID];
  [v16 setAssociatedMessageEffect:expressiveSendStyleID];

  balloonPluginBundleID = [inputCopy balloonPluginBundleID];
  [v16 setBalloonBundleID:balloonPluginBundleID];

  balloonPluginPayload = [inputCopy balloonPluginPayload];

  [v16 setPayloadData:balloonPluginPayload];

  return v16;
}

- (id)runIndividuallyWithInput:(id)input
{
  v20 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isPollsEnabled = [mEMORY[0x277D1A9B8] isPollsEnabled];

  v7 = IMOSLoggingEnabled();
  if (isPollsEnabled)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        gUID = [inputCopy GUID];
        *buf = 138412290;
        v19 = gUID;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "<IMCustomAcknowledgementMessageProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
      }
    }

    v17.receiver = self;
    v17.super_class = IMCustomAcknowledgementMessageProcessingPipelineComponent;
    v10 = [(IMTextMessageProcessingPipelineComponent *)&v17 runIndividuallyWithInput:inputCopy];
  }

  else
  {
    if (v7)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        gUID2 = [inputCopy GUID];
        *buf = 138412290;
        v19 = gUID2;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "<IMCustomAcknowledgementMessageProcessingPipelineComponent> Rejecting message with GUID: %@", buf, 0xCu);
      }
    }

    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = [v13 initWithDomain:*MEMORY[0x277D18DF8] code:23 userInfo:0];
    v10 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

@end