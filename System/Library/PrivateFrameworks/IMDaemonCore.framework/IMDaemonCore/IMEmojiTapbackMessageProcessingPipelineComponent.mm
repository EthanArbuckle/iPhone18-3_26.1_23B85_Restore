@interface IMEmojiTapbackMessageProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMEmojiTapbackMessageProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)a3
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 plainTextBody];
  v8 = [v6 initWithString:v7];

  v30 = [v8 __im_attributedStringByAssigningMessagePartNumbers];

  v29 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:v5];
  v9 = [v5 associatedMessageGUID];
  v27 = objc_alloc(MEMORY[0x277D1A8A8]);
  v26 = [v5 fromDisplayID];
  v10 = MEMORY[0x277CBEAA8];
  v28 = [v5 timestamp];
  v11 = [v10 __im_iMessageDateFromTimeStamp:v28];
  v12 = [v5 GUID];
  v13 = [v5 associatedMessageType];
  v14 = [v5 associatedMessageRange];
  v16 = v15;
  v17 = [v5 associatedMessageEmoji];
  v18 = [v5 messageSummaryInfo];
  v19 = [v5 threadIdentifierGUID];
  v20 = [v27 initWithSender:v26 time:v11 body:v30 attributes:0 fileTransferGUIDs:0 flags:v29 error:0 guid:v12 associatedMessageGUID:v9 associatedMessageType:v13 associatedMessageRange:v14 associatedMessageEmoji:v16 messageSummaryInfo:v17 threadIdentifier:{v18, v19}];

  v21 = [v5 replicatedFallbackGUIDs];

  [v20 setReplicatedFallbackGUIDs:v21];
  v22 = [(IMTextMessageProcessingPipelineComponent *)self _findMessageItemForAssociatedMessageItem:v20];
  v23 = [(IMTextMessageProcessingPipelineComponent *)self _findAssociatedMessagePartTextForMessageItem:v20 associatedMessageItem:v22];
  [v20 setAssociatedMessagePartText:v23];

  v24 = [v22 expressiveSendStyleID];
  [v20 setAssociatedMessageEffect:v24];

  return v20;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isEmojiTapbacksEnabled];

  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v4 GUID];
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "<IMEmojiTapbackMessageProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
      }
    }

    v17.receiver = self;
    v17.super_class = IMEmojiTapbackMessageProcessingPipelineComponent;
    v10 = [(IMTextMessageProcessingPipelineComponent *)&v17 runIndividuallyWithInput:v4];
  }

  else
  {
    if (v7)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 GUID];
        *buf = 138412290;
        v19 = v12;
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