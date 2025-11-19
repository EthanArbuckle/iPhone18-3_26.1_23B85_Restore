@interface IMAssociatedMessageProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMAssociatedMessageProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)a3
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 plainTextBody];
  v8 = [v6 initWithString:v7];

  v30 = [v8 __im_attributedStringByAssigningMessagePartNumbers];

  v28 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:v5];
  v27 = objc_alloc(MEMORY[0x277D1A8A8]);
  v26 = [v5 fromDisplayID];
  v9 = MEMORY[0x277CBEAA8];
  v10 = [v5 timestamp];
  v11 = [v9 __im_iMessageDateFromTimeStamp:v10];
  v12 = [v5 GUID];
  v13 = [v5 associatedMessageGUID];
  v14 = [v5 associatedMessageType];
  v15 = [v5 associatedMessageRange];
  v17 = v16;
  v18 = [v5 messageSummaryInfo];
  v19 = [v5 threadIdentifierGUID];
  v20 = [v27 initWithSender:v26 time:v11 body:v30 attributes:0 fileTransferGUIDs:0 flags:v28 error:0 guid:v12 associatedMessageGUID:v13 associatedMessageType:v14 associatedMessageRange:v15 messageSummaryInfo:v17 threadIdentifier:{v18, v19}];

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
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 GUID];
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMAssociatedMessageProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  v10.receiver = self;
  v10.super_class = IMAssociatedMessageProcessingPipelineComponent;
  v7 = [(IMTextMessageProcessingPipelineComponent *)&v10 runIndividuallyWithInput:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end