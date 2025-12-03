@interface IMStickerMessagePipelineParameter
- (IMStickerMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMStickerMessagePipelineParameter

- (IMStickerMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = IMStickerMessagePipelineParameter;
  v7 = [(IMAssociatedMessagePipelineParameter *)&v15 initWithBD:dCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [dCopy messageSubType];
    sticker = [messageSubType sticker];

    associatedMessageGUID = [sticker associatedMessageGUID];

    if (associatedMessageGUID)
    {
      [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageType:1000];
      associatedMessageGUID2 = [sticker associatedMessageGUID];
      [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:associatedMessageGUID2];

      associatedMessageRange = [sticker associatedMessageRange];
      [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange, v13];
    }
  }

  return v7;
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
  v12 = [v3 stringWithFormat:@"<IMStickerMessagePipelineParameter %p> { guid: %@, assocatedMessageType: %lld, associatedMessageGUID: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu}", self, gUID, associatedMessageType, associatedMessageGUID, timestamp, v8, v9, v10, objc_msgSend(messageItems, "count")];

  return v12;
}

@end