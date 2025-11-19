@interface IMEmojiTapbackMessagePipelineParameter
- (IMEmojiTapbackMessagePipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
- (IMEmojiTapbackMessagePipelineParameter)initWithBDBasic:(id)a3 idsTrustedData:(id)a4;
- (id)description;
- (id)messageSummaryInfoDictionaryWithBlastDoorBasicMessage:(id)a3;
- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)a3;
@end

@implementation IMEmojiTapbackMessagePipelineParameter

- (IMEmojiTapbackMessagePipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = IMEmojiTapbackMessagePipelineParameter;
  v7 = [(IMAssociatedMessagePipelineParameter *)&v17 initWithBD:v6 idsTrustedData:a4];
  if (v7)
  {
    v8 = [v6 messageSubType];
    v9 = [v8 emojiTapback];

    v10 = [v9 associatedMessageEmoji];
    [(IMEmojiTapbackMessagePipelineParameter *)v7 setAssociatedMessageEmoji:v10];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [v9 associatedMessageType]);
    v11 = [v9 associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:v11];

    v12 = [v9 associatedMessageFallbackHash];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageFallbackHash:v12];

    v13 = [v9 associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:v13, v14];
    v15 = [v9 plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:v15];
  }

  return v7;
}

- (IMEmojiTapbackMessagePipelineParameter)initWithBDBasic:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = IMEmojiTapbackMessagePipelineParameter;
  v7 = [(IMAssociatedMessagePipelineParameter *)&v17 initWithBDBasic:v6 idsTrustedData:a4];
  if (v7)
  {
    v8 = [v6 messageSubType];
    v9 = [v8 emojiTapback];

    v10 = [v9 associatedMessageEmoji];
    [(IMEmojiTapbackMessagePipelineParameter *)v7 setAssociatedMessageEmoji:v10];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [v9 associatedMessageType]);
    v11 = [v9 associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:v11];

    v12 = [v9 associatedMessageFallbackHash];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageFallbackHash:v12];

    v13 = [v9 associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:v13, v14];
    v15 = [v9 plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:v15];
  }

  return v7;
}

- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)a3
{
  v4 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27.receiver = self;
  v27.super_class = IMEmojiTapbackMessagePipelineParameter;
  v6 = [(IMTextMessagePipelineParameter *)&v27 messageSummaryInfoDictionaryWithBlastDoorMessage:v4];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v6];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 messageSubType];
  v9 = [v8 emojiTapback];
  v10 = [v9 messageSummaryInfo];
  v11 = [v7 numberWithInteger:{objc_msgSend(v10, "contentType")}];

  if (v11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v11);
  }

  v12 = [v4 messageSubType];
  v13 = [v12 emojiTapback];
  v14 = [v13 messageSummaryInfo];
  v15 = [v14 summary];

  if (v15)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], v15);
  }

  v16 = [v4 messageSubType];
  v17 = [v16 emojiTapback];
  v18 = [v17 messageSummaryInfo];
  v19 = [v18 pluginBundleID];

  if (v19)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A028], v19);
  }

  v20 = [v4 messageSubType];
  v21 = [v20 emojiTapback];
  v22 = [v21 messageSummaryInfo];
  v23 = [v22 pluginDisplayName];

  if (v23)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A030], v23);
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

- (id)messageSummaryInfoDictionaryWithBlastDoorBasicMessage:(id)a3
{
  v4 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v19.receiver = self;
  v19.super_class = IMEmojiTapbackMessagePipelineParameter;
  v6 = [(IMTextMessagePipelineParameter *)&v19 messageSummaryInfoDictionaryWithBlastDoorBasicMessage:v4];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v6];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 messageSubType];
  v9 = [v8 emojiTapback];
  v10 = [v9 messageSummaryInfo];
  v11 = [v7 numberWithInteger:{objc_msgSend(v10, "contentType")}];

  if (v11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v11);
  }

  v12 = [v4 messageSubType];
  v13 = [v12 emojiTapback];
  v14 = [v13 messageSummaryInfo];
  v15 = [v14 summary];

  if (v15)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], v15);
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
  v4 = [(IMTextMessagePipelineParameter *)self GUID];
  v5 = [(IMAssociatedMessagePipelineParameter *)self associatedMessageType];
  v6 = [(IMTextMessagePipelineParameter *)self associatedMessageGUID];
  v7 = [(IMTextMessagePipelineParameter *)self timestamp];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromStorage](self, "isFromStorage")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromMe](self, "isFromMe")}];
  v11 = [(IMTextMessagePipelineParameter *)self messageItems];
  v12 = [v3 stringWithFormat:@"<IMEmojiTapbackMessagePipelineParameter %p> { guid: %@, assocatedMessageType: %lld, associatedMessageGUID: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu}", self, v4, v5, v6, v7, v8, v9, v10, objc_msgSend(v11, "count")];

  return v12;
}

@end