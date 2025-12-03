@interface IMCustomAcknowledgementMessagePipelineParameter
- (IMCustomAcknowledgementMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (id)description;
- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)message;
@end

@implementation IMCustomAcknowledgementMessagePipelineParameter

- (IMCustomAcknowledgementMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = IMCustomAcknowledgementMessagePipelineParameter;
  v7 = [(IMBalloonPluginPipelineParameter *)&v18 initWithBD:dCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [dCopy messageSubType];
    customAcknowledgement = [messageSubType customAcknowledgement];

    -[IMBalloonPluginPipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [customAcknowledgement associatedMessageType]);
    associatedMessageGUID = [customAcknowledgement associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:associatedMessageGUID];

    associatedMessageRange = [customAcknowledgement associatedMessageRange];
    [(IMBalloonPluginPipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange, v12];
    payload = [customAcknowledgement payload];
    customAcknowledgement2 = [payload customAcknowledgement];

    messageSummaryInfo = [customAcknowledgement messageSummaryInfo];
    pluginBundleID = [messageSummaryInfo pluginBundleID];

    [(IMBalloonPluginPipelineParameter *)v7 setBalloonPluginPayload:customAcknowledgement2];
    [(IMBalloonPluginPipelineParameter *)v7 setBalloonPluginBundleID:pluginBundleID];
  }

  return v7;
}

- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27.receiver = self;
  v27.super_class = IMCustomAcknowledgementMessagePipelineParameter;
  v6 = [(IMTextMessagePipelineParameter *)&v27 messageSummaryInfoDictionaryWithBlastDoorMessage:messageCopy];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v6];

  v7 = MEMORY[0x277CCABB0];
  messageSubType = [messageCopy messageSubType];
  customAcknowledgement = [messageSubType customAcknowledgement];
  messageSummaryInfo = [customAcknowledgement messageSummaryInfo];
  v11 = [v7 numberWithInteger:{objc_msgSend(messageSummaryInfo, "contentType")}];

  if (v11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v11);
  }

  messageSubType2 = [messageCopy messageSubType];
  customAcknowledgement2 = [messageSubType2 customAcknowledgement];
  messageSummaryInfo2 = [customAcknowledgement2 messageSummaryInfo];
  summary = [messageSummaryInfo2 summary];

  if (summary)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], summary);
  }

  messageSubType3 = [messageCopy messageSubType];
  customAcknowledgement3 = [messageSubType3 customAcknowledgement];
  messageSummaryInfo3 = [customAcknowledgement3 messageSummaryInfo];
  pluginBundleID = [messageSummaryInfo3 pluginBundleID];

  if (pluginBundleID)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A028], pluginBundleID);
  }

  messageSubType4 = [messageCopy messageSubType];
  customAcknowledgement4 = [messageSubType4 customAcknowledgement];
  messageSummaryInfo4 = [customAcknowledgement4 messageSummaryInfo];
  pluginDisplayName = [messageSummaryInfo4 pluginDisplayName];

  if (pluginDisplayName)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A030], pluginDisplayName);
  }

  if ([(__CFDictionary *)Mutable count])
  {
    v24 = Mutable;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  gUID = [(IMTextMessagePipelineParameter *)self GUID];
  associatedMessageType = [(IMBalloonPluginPipelineParameter *)self associatedMessageType];
  associatedMessageGUID = [(IMTextMessagePipelineParameter *)self associatedMessageGUID];
  timestamp = [(IMTextMessagePipelineParameter *)self timestamp];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromStorage](self, "isFromStorage")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromMe](self, "isFromMe")}];
  messageItems = [(IMTextMessagePipelineParameter *)self messageItems];
  v12 = [v3 stringWithFormat:@"<IMCustomAcknowledgementMessagePipelineParameter %p> { guid: %@, associatedMessageType: %lld, associatedMessageGUID: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu}", self, gUID, associatedMessageType, associatedMessageGUID, timestamp, v8, v9, v10, objc_msgSend(messageItems, "count")];

  return v12;
}

@end