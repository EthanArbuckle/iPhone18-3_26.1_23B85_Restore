@interface IMEmojiTapbackMessagePipelineParameter
- (IMEmojiTapbackMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (IMEmojiTapbackMessagePipelineParameter)initWithBDBasic:(id)basic idsTrustedData:(id)data;
- (id)description;
- (id)messageSummaryInfoDictionaryWithBlastDoorBasicMessage:(id)message;
- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)message;
@end

@implementation IMEmojiTapbackMessagePipelineParameter

- (IMEmojiTapbackMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  v17.receiver = self;
  v17.super_class = IMEmojiTapbackMessagePipelineParameter;
  v7 = [(IMAssociatedMessagePipelineParameter *)&v17 initWithBD:dCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [dCopy messageSubType];
    emojiTapback = [messageSubType emojiTapback];

    associatedMessageEmoji = [emojiTapback associatedMessageEmoji];
    [(IMEmojiTapbackMessagePipelineParameter *)v7 setAssociatedMessageEmoji:associatedMessageEmoji];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [emojiTapback associatedMessageType]);
    associatedMessageGUID = [emojiTapback associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:associatedMessageGUID];

    associatedMessageFallbackHash = [emojiTapback associatedMessageFallbackHash];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageFallbackHash:associatedMessageFallbackHash];

    associatedMessageRange = [emojiTapback associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange, v14];
    plainTextBody = [emojiTapback plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:plainTextBody];
  }

  return v7;
}

- (IMEmojiTapbackMessagePipelineParameter)initWithBDBasic:(id)basic idsTrustedData:(id)data
{
  basicCopy = basic;
  v17.receiver = self;
  v17.super_class = IMEmojiTapbackMessagePipelineParameter;
  v7 = [(IMAssociatedMessagePipelineParameter *)&v17 initWithBDBasic:basicCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [basicCopy messageSubType];
    emojiTapback = [messageSubType emojiTapback];

    associatedMessageEmoji = [emojiTapback associatedMessageEmoji];
    [(IMEmojiTapbackMessagePipelineParameter *)v7 setAssociatedMessageEmoji:associatedMessageEmoji];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [emojiTapback associatedMessageType]);
    associatedMessageGUID = [emojiTapback associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:associatedMessageGUID];

    associatedMessageFallbackHash = [emojiTapback associatedMessageFallbackHash];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageFallbackHash:associatedMessageFallbackHash];

    associatedMessageRange = [emojiTapback associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange, v14];
    plainTextBody = [emojiTapback plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:plainTextBody];
  }

  return v7;
}

- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27.receiver = self;
  v27.super_class = IMEmojiTapbackMessagePipelineParameter;
  v6 = [(IMTextMessagePipelineParameter *)&v27 messageSummaryInfoDictionaryWithBlastDoorMessage:messageCopy];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v6];

  v7 = MEMORY[0x277CCABB0];
  messageSubType = [messageCopy messageSubType];
  emojiTapback = [messageSubType emojiTapback];
  messageSummaryInfo = [emojiTapback messageSummaryInfo];
  v11 = [v7 numberWithInteger:{objc_msgSend(messageSummaryInfo, "contentType")}];

  if (v11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v11);
  }

  messageSubType2 = [messageCopy messageSubType];
  emojiTapback2 = [messageSubType2 emojiTapback];
  messageSummaryInfo2 = [emojiTapback2 messageSummaryInfo];
  summary = [messageSummaryInfo2 summary];

  if (summary)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], summary);
  }

  messageSubType3 = [messageCopy messageSubType];
  emojiTapback3 = [messageSubType3 emojiTapback];
  messageSummaryInfo3 = [emojiTapback3 messageSummaryInfo];
  pluginBundleID = [messageSummaryInfo3 pluginBundleID];

  if (pluginBundleID)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A028], pluginBundleID);
  }

  messageSubType4 = [messageCopy messageSubType];
  emojiTapback4 = [messageSubType4 emojiTapback];
  messageSummaryInfo4 = [emojiTapback4 messageSummaryInfo];
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

- (id)messageSummaryInfoDictionaryWithBlastDoorBasicMessage:(id)message
{
  messageCopy = message;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v19.receiver = self;
  v19.super_class = IMEmojiTapbackMessagePipelineParameter;
  v6 = [(IMTextMessagePipelineParameter *)&v19 messageSummaryInfoDictionaryWithBlastDoorBasicMessage:messageCopy];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v6];

  v7 = MEMORY[0x277CCABB0];
  messageSubType = [messageCopy messageSubType];
  emojiTapback = [messageSubType emojiTapback];
  messageSummaryInfo = [emojiTapback messageSummaryInfo];
  v11 = [v7 numberWithInteger:{objc_msgSend(messageSummaryInfo, "contentType")}];

  if (v11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v11);
  }

  messageSubType2 = [messageCopy messageSubType];
  emojiTapback2 = [messageSubType2 emojiTapback];
  messageSummaryInfo2 = [emojiTapback2 messageSummaryInfo];
  summary = [messageSummaryInfo2 summary];

  if (summary)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], summary);
  }

  if ([(__CFDictionary *)Mutable count])
  {
    v16 = Mutable;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
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
  v12 = [v3 stringWithFormat:@"<IMEmojiTapbackMessagePipelineParameter %p> { guid: %@, assocatedMessageType: %lld, associatedMessageGUID: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu}", self, gUID, associatedMessageType, associatedMessageGUID, timestamp, v8, v9, v10, objc_msgSend(messageItems, "count")];

  return v12;
}

@end