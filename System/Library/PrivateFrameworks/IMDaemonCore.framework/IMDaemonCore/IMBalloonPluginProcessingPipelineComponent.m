@interface IMBalloonPluginProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMBalloonPluginProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)a3
{
  v4 = a3;
  v5 = [v4 associatedMessageGUID];

  if (v5)
  {
    v28 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:v4];
    v27 = objc_alloc(MEMORY[0x277D1A8A8]);
    v26 = [v4 fromDisplayID];
    v6 = MEMORY[0x277CBEAA8];
    v29 = [v4 timestamp];
    v25 = [v6 __im_iMessageDateFromTimeStamp:v29];
    v7 = [v4 richBody];
    v8 = [v4 fileTransferGUIDs];
    v9 = [v4 GUID];
    v10 = [v4 associatedMessageGUID];
    v11 = [v4 associatedMessageType];
    v12 = [v4 associatedMessageRange];
    v14 = v13;
    v15 = [v4 messageSummaryInfo];
    v16 = [v4 threadIdentifierGUID];
    v17 = [v27 initWithSender:v26 time:v25 body:v7 attributes:0 fileTransferGUIDs:v8 flags:v28 error:0 guid:v9 associatedMessageGUID:v10 associatedMessageType:v11 associatedMessageRange:v12 messageSummaryInfo:v14 threadIdentifier:{v15, v16}];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = IMBalloonPluginProcessingPipelineComponent;
    v17 = [(IMTextMessageProcessingPipelineComponent *)&v30 createMessageItemWithInput:v4];
  }

  v18 = [v4 balloonPluginBundleID];
  if ([v18 containsString:*MEMORY[0x277D19738]])
  {
  }

  else
  {
    v19 = [v4 balloonPluginBundleID];
    v20 = [v19 containsString:*MEMORY[0x277D19740]];

    if (!v20)
    {
      goto LABEL_8;
    }
  }

  [v17 setFileTransferGUIDs:0];
LABEL_8:
  v21 = [v4 balloonPluginBundleID];
  [v17 setBalloonBundleID:v21];

  v22 = [v4 balloonPluginPayload];
  [v17 setPayloadData:v22];

  v23 = [v4 replicatedFallbackGUIDs];
  [v17 setReplicatedFallbackGUIDs:v23];

  return v17;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMBalloonPluginProcessingPipelineComponent;
  v3 = [(IMTextMessageProcessingPipelineComponent *)&v5 runIndividuallyWithInput:a3];

  return v3;
}

@end