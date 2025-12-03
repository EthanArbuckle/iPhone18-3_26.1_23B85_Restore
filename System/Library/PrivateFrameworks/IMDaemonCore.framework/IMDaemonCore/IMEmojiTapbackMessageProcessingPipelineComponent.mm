@interface IMEmojiTapbackMessageProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMEmojiTapbackMessageProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)input
{
  v4 = MEMORY[0x277CCA898];
  inputCopy = input;
  v6 = [v4 alloc];
  plainTextBody = [inputCopy plainTextBody];
  v8 = [v6 initWithString:plainTextBody];

  __im_attributedStringByAssigningMessagePartNumbers = [v8 __im_attributedStringByAssigningMessagePartNumbers];

  v29 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:inputCopy];
  associatedMessageGUID = [inputCopy associatedMessageGUID];
  v27 = objc_alloc(MEMORY[0x277D1A8A8]);
  fromDisplayID = [inputCopy fromDisplayID];
  v10 = MEMORY[0x277CBEAA8];
  timestamp = [inputCopy timestamp];
  v11 = [v10 __im_iMessageDateFromTimeStamp:timestamp];
  gUID = [inputCopy GUID];
  associatedMessageType = [inputCopy associatedMessageType];
  associatedMessageRange = [inputCopy associatedMessageRange];
  v16 = v15;
  associatedMessageEmoji = [inputCopy associatedMessageEmoji];
  messageSummaryInfo = [inputCopy messageSummaryInfo];
  threadIdentifierGUID = [inputCopy threadIdentifierGUID];
  v20 = [v27 initWithSender:fromDisplayID time:v11 body:__im_attributedStringByAssigningMessagePartNumbers attributes:0 fileTransferGUIDs:0 flags:v29 error:0 guid:gUID associatedMessageGUID:associatedMessageGUID associatedMessageType:associatedMessageType associatedMessageRange:associatedMessageRange associatedMessageEmoji:v16 messageSummaryInfo:associatedMessageEmoji threadIdentifier:{messageSummaryInfo, threadIdentifierGUID}];

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
  v20 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isEmojiTapbacksEnabled = [mEMORY[0x277D1A9B8] isEmojiTapbacksEnabled];

  v7 = IMOSLoggingEnabled();
  if (isEmojiTapbacksEnabled)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        gUID = [inputCopy GUID];
        *buf = 138412290;
        v19 = gUID;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "<IMEmojiTapbackMessageProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
      }
    }

    v17.receiver = self;
    v17.super_class = IMEmojiTapbackMessageProcessingPipelineComponent;
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
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "<IMEmojiTapbackMessageProcessingPipelineComponent> Rejecting message with GUID: %@", buf, 0xCu);
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