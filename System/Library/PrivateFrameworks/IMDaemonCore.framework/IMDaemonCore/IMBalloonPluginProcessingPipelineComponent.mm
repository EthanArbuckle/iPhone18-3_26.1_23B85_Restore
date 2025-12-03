@interface IMBalloonPluginProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMBalloonPluginProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)input
{
  inputCopy = input;
  associatedMessageGUID = [inputCopy associatedMessageGUID];

  if (associatedMessageGUID)
  {
    v28 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:inputCopy];
    v27 = objc_alloc(MEMORY[0x277D1A8A8]);
    fromDisplayID = [inputCopy fromDisplayID];
    v6 = MEMORY[0x277CBEAA8];
    timestamp = [inputCopy timestamp];
    v25 = [v6 __im_iMessageDateFromTimeStamp:timestamp];
    richBody = [inputCopy richBody];
    fileTransferGUIDs = [inputCopy fileTransferGUIDs];
    gUID = [inputCopy GUID];
    associatedMessageGUID2 = [inputCopy associatedMessageGUID];
    associatedMessageType = [inputCopy associatedMessageType];
    associatedMessageRange = [inputCopy associatedMessageRange];
    v14 = v13;
    messageSummaryInfo = [inputCopy messageSummaryInfo];
    threadIdentifierGUID = [inputCopy threadIdentifierGUID];
    v17 = [v27 initWithSender:fromDisplayID time:v25 body:richBody attributes:0 fileTransferGUIDs:fileTransferGUIDs flags:v28 error:0 guid:gUID associatedMessageGUID:associatedMessageGUID2 associatedMessageType:associatedMessageType associatedMessageRange:associatedMessageRange messageSummaryInfo:v14 threadIdentifier:{messageSummaryInfo, threadIdentifierGUID}];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = IMBalloonPluginProcessingPipelineComponent;
    v17 = [(IMTextMessageProcessingPipelineComponent *)&v30 createMessageItemWithInput:inputCopy];
  }

  balloonPluginBundleID = [inputCopy balloonPluginBundleID];
  if ([balloonPluginBundleID containsString:*MEMORY[0x277D19738]])
  {
  }

  else
  {
    balloonPluginBundleID2 = [inputCopy balloonPluginBundleID];
    v20 = [balloonPluginBundleID2 containsString:*MEMORY[0x277D19740]];

    if (!v20)
    {
      goto LABEL_8;
    }
  }

  [v17 setFileTransferGUIDs:0];
LABEL_8:
  balloonPluginBundleID3 = [inputCopy balloonPluginBundleID];
  [v17 setBalloonBundleID:balloonPluginBundleID3];

  balloonPluginPayload = [inputCopy balloonPluginPayload];
  [v17 setPayloadData:balloonPluginPayload];

  replicatedFallbackGUIDs = [inputCopy replicatedFallbackGUIDs];
  [v17 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs];

  return v17;
}

- (id)runIndividuallyWithInput:(id)input
{
  v5.receiver = self;
  v5.super_class = IMBalloonPluginProcessingPipelineComponent;
  v3 = [(IMTextMessageProcessingPipelineComponent *)&v5 runIndividuallyWithInput:input];

  return v3;
}

@end