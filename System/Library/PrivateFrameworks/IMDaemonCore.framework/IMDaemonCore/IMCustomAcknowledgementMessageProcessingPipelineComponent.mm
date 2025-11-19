@interface IMCustomAcknowledgementMessageProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMCustomAcknowledgementMessageProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)a3
{
  v4 = a3;
  v27 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:v4];
  v26 = objc_alloc(MEMORY[0x277D1A8A8]);
  v29 = [v4 fromIdentifier];
  v25 = [v29 _stripFZIDPrefix];
  v5 = MEMORY[0x277CBEAA8];
  v28 = [v4 timestamp];
  v24 = [v5 __im_iMessageDateFromTimeStamp:v28];
  v6 = [v4 richBody];
  v7 = [v4 fileTransferGUIDs];
  v8 = [v4 GUID];
  v9 = [v4 associatedMessageGUID];
  v10 = [v4 associatedMessageType];
  v11 = [v4 associatedMessageRange];
  v13 = v12;
  v14 = [v4 messageSummaryInfo];
  v15 = [v4 threadIdentifierGUID];
  v16 = [v26 initWithSender:v25 time:v24 body:v6 attributes:0 fileTransferGUIDs:v7 flags:v27 error:0 guid:v8 associatedMessageGUID:v9 associatedMessageType:v10 associatedMessageRange:v11 messageSummaryInfo:v13 threadIdentifier:{v14, v15}];

  v17 = [v4 replicatedFallbackGUIDs];
  [v16 setReplicatedFallbackGUIDs:v17];

  v18 = [(IMTextMessageProcessingPipelineComponent *)self _findMessageItemForAssociatedMessageItem:v16];
  v19 = [(IMTextMessageProcessingPipelineComponent *)self _findAssociatedMessagePartTextForMessageItem:v16 associatedMessageItem:v18];
  [v16 setAssociatedMessagePartText:v19];

  v20 = [v18 expressiveSendStyleID];
  [v16 setAssociatedMessageEffect:v20];

  v21 = [v4 balloonPluginBundleID];
  [v16 setBalloonBundleID:v21];

  v22 = [v4 balloonPluginPayload];

  [v16 setPayloadData:v22];

  return v16;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isPollsEnabled];

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
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "<IMCustomAcknowledgementMessageProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
      }
    }

    v17.receiver = self;
    v17.super_class = IMCustomAcknowledgementMessageProcessingPipelineComponent;
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