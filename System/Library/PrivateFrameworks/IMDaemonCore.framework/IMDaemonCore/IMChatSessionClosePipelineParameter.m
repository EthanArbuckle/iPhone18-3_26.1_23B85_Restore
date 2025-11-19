@interface IMChatSessionClosePipelineParameter
- (IMChatSessionClosePipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMChatSessionClosePipelineParameter

- (IMChatSessionClosePipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = IMChatSessionClosePipelineParameter;
  v8 = [(IMChatSessionClosePipelineParameter *)&v30 init];
  if (v8)
  {
    v9 = [v6 metadata];
    v10 = [v9 messageGUID];
    v11 = [v10 UUIDString];

    v12 = [v9 timestamp];
    -[IMChatSessionClosePipelineParameter setIsEmergencySOS:](v8, "setIsEmergencySOS:", [v6 isEmergencySOS]);
    -[IMChatSessionClosePipelineParameter setDeleteConversation:](v8, "setDeleteConversation:", [v6 deleteConversation]);
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "version")}];
    [(IMChatSessionClosePipelineParameter *)v8 setVersion:v13];

    v14 = [v6 handle];
    [(IMChatSessionClosePipelineParameter *)v8 setSenderHandle:v14];

    v15 = [v6 name];
    [(IMChatSessionClosePipelineParameter *)v8 setSenderName:v15];

    v16 = [v6 conversationID];
    [(IMChatSessionClosePipelineParameter *)v8 setConversationID:v16];

    [(IMChatSessionClosePipelineParameter *)v8 setGUID:v11];
    v17 = [v9 has_timestamp];
    v18 = MEMORY[0x277CCABB0];
    if (v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      [(IMChatSessionClosePipelineParameter *)v8 setTimestamp:v19];
    }

    else
    {
      v19 = [MEMORY[0x277CBEAA8] date];
      [v19 timeIntervalSince1970];
      v20 = [v18 numberWithDouble:?];
      [(IMChatSessionClosePipelineParameter *)v8 setTimestamp:v20];
    }

    v21 = [v9 storageContext];
    -[IMChatSessionClosePipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [v21 isFromStorage]);

    v22 = [v9 storageContext];
    -[IMChatSessionClosePipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [v22 isLastFromStorage]);

    v23 = [v7 batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = v23;

    v25 = [v7 fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = v25;

    v27 = [v7 toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = v27;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMChatSessionClosePipelineParameter *)self GUID];
  v5 = [(IMChatSessionClosePipelineParameter *)self timestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMChatSessionClosePipelineParameter isFromStorage](self, "isFromStorage")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMChatSessionClosePipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v8 = [(IMChatSessionClosePipelineParameter *)self messageItems];
  v9 = [v3 stringWithFormat:@"<IMChatSessionClosePipelineParameter %p> { guid: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, output messageItems: %lu}", self, v4, v5, v6, v7, objc_msgSend(v8, "count")];

  return v9;
}

@end