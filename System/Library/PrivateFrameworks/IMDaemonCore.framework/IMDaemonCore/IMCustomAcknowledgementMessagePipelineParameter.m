@interface IMCustomAcknowledgementMessagePipelineParameter
- (IMCustomAcknowledgementMessagePipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
- (id)description;
- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)a3;
@end

@implementation IMCustomAcknowledgementMessagePipelineParameter

- (IMCustomAcknowledgementMessagePipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = IMCustomAcknowledgementMessagePipelineParameter;
  v7 = [(IMBalloonPluginPipelineParameter *)&v18 initWithBD:v6 idsTrustedData:a4];
  if (v7)
  {
    v8 = [v6 messageSubType];
    v9 = [v8 customAcknowledgement];

    -[IMBalloonPluginPipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [v9 associatedMessageType]);
    v10 = [v9 associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:v10];

    v11 = [v9 associatedMessageRange];
    [(IMBalloonPluginPipelineParameter *)v7 setAssociatedMessageRange:v11, v12];
    v13 = [v9 payload];
    v14 = [v13 customAcknowledgement];

    v15 = [v9 messageSummaryInfo];
    v16 = [v15 pluginBundleID];

    [(IMBalloonPluginPipelineParameter *)v7 setBalloonPluginPayload:v14];
    [(IMBalloonPluginPipelineParameter *)v7 setBalloonPluginBundleID:v16];
  }

  return v7;
}

- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)a3
{
  v4 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27.receiver = self;
  v27.super_class = IMCustomAcknowledgementMessagePipelineParameter;
  v6 = [(IMTextMessagePipelineParameter *)&v27 messageSummaryInfoDictionaryWithBlastDoorMessage:v4];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v6];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 messageSubType];
  v9 = [v8 customAcknowledgement];
  v10 = [v9 messageSummaryInfo];
  v11 = [v7 numberWithInteger:{objc_msgSend(v10, "contentType")}];

  if (v11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v11);
  }

  v12 = [v4 messageSubType];
  v13 = [v12 customAcknowledgement];
  v14 = [v13 messageSummaryInfo];
  v15 = [v14 summary];

  if (v15)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], v15);
  }

  v16 = [v4 messageSubType];
  v17 = [v16 customAcknowledgement];
  v18 = [v17 messageSummaryInfo];
  v19 = [v18 pluginBundleID];

  if (v19)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A028], v19);
  }

  v20 = [v4 messageSubType];
  v21 = [v20 customAcknowledgement];
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMTextMessagePipelineParameter *)self GUID];
  v5 = [(IMBalloonPluginPipelineParameter *)self associatedMessageType];
  v6 = [(IMTextMessagePipelineParameter *)self associatedMessageGUID];
  v7 = [(IMTextMessagePipelineParameter *)self timestamp];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromStorage](self, "isFromStorage")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromMe](self, "isFromMe")}];
  v11 = [(IMTextMessagePipelineParameter *)self messageItems];
  v12 = [v3 stringWithFormat:@"<IMCustomAcknowledgementMessagePipelineParameter %p> { guid: %@, associatedMessageType: %lld, associatedMessageGUID: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu}", self, v4, v5, v6, v7, v8, v9, v10, objc_msgSend(v11, "count")];

  return v12;
}

@end