@interface IMStickerTapbackMessagePipelineParameter
- (IMStickerTapbackMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (id)description;
- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)message;
@end

@implementation IMStickerTapbackMessagePipelineParameter

- (IMStickerTapbackMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = IMStickerTapbackMessagePipelineParameter;
  v7 = [(IMAssociatedMessagePipelineParameter *)&v18 initWithBD:dCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [dCopy messageSubType];
    stickerTapback = [messageSubType stickerTapback];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [stickerTapback associatedMessageType]);
    associatedMessageGUID = [stickerTapback associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:associatedMessageGUID];

    associatedMessageRange = [stickerTapback associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange, v12];
    associatedMessageFallbackHash = [stickerTapback associatedMessageFallbackHash];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageFallbackHash:associatedMessageFallbackHash];

    associatedMessageRange2 = [stickerTapback associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange2, v15];
    plainTextBody = [stickerTapback plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:plainTextBody];
  }

  return v7;
}

- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27.receiver = self;
  v27.super_class = IMStickerTapbackMessagePipelineParameter;
  v6 = [(IMTextMessagePipelineParameter *)&v27 messageSummaryInfoDictionaryWithBlastDoorMessage:messageCopy];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v6];

  v7 = MEMORY[0x277CCABB0];
  messageSubType = [messageCopy messageSubType];
  stickerTapback = [messageSubType stickerTapback];
  messageSummaryInfo = [stickerTapback messageSummaryInfo];
  v11 = [v7 numberWithInteger:{objc_msgSend(messageSummaryInfo, "contentType")}];

  if (v11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v11);
  }

  messageSubType2 = [messageCopy messageSubType];
  stickerTapback2 = [messageSubType2 stickerTapback];
  messageSummaryInfo2 = [stickerTapback2 messageSummaryInfo];
  summary = [messageSummaryInfo2 summary];

  if (summary)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], summary);
  }

  messageSubType3 = [messageCopy messageSubType];
  stickerTapback3 = [messageSubType3 stickerTapback];
  messageSummaryInfo3 = [stickerTapback3 messageSummaryInfo];
  pluginBundleID = [messageSummaryInfo3 pluginBundleID];

  if (pluginBundleID)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A028], pluginBundleID);
  }

  messageSubType4 = [messageCopy messageSubType];
  stickerTapback4 = [messageSubType4 stickerTapback];
  messageSummaryInfo4 = [stickerTapback4 messageSummaryInfo];
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
  associatedMessageType = [(IMAssociatedMessagePipelineParameter *)self associatedMessageType];
  associatedMessageGUID = [(IMTextMessagePipelineParameter *)self associatedMessageGUID];
  timestamp = [(IMTextMessagePipelineParameter *)self timestamp];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromStorage](self, "isFromStorage")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromMe](self, "isFromMe")}];
  messageItems = [(IMTextMessagePipelineParameter *)self messageItems];
  v12 = [v3 stringWithFormat:@"<IMStickerTapbackMessagePipelineParameter %p> { guid: %@, assocatedMessageType: %lld, associatedMessageGUID: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu}", self, gUID, associatedMessageType, associatedMessageGUID, timestamp, v8, v9, v10, objc_msgSend(messageItems, "count")];

  return v12;
}

@end