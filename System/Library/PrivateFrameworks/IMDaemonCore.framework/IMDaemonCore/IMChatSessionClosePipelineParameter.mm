@interface IMChatSessionClosePipelineParameter
- (IMChatSessionClosePipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMChatSessionClosePipelineParameter

- (IMChatSessionClosePipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v30.receiver = self;
  v30.super_class = IMChatSessionClosePipelineParameter;
  v8 = [(IMChatSessionClosePipelineParameter *)&v30 init];
  if (v8)
  {
    metadata = [messageCopy metadata];
    messageGUID = [metadata messageGUID];
    uUIDString = [messageGUID UUIDString];

    timestamp = [metadata timestamp];
    -[IMChatSessionClosePipelineParameter setIsEmergencySOS:](v8, "setIsEmergencySOS:", [messageCopy isEmergencySOS]);
    -[IMChatSessionClosePipelineParameter setDeleteConversation:](v8, "setDeleteConversation:", [messageCopy deleteConversation]);
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(messageCopy, "version")}];
    [(IMChatSessionClosePipelineParameter *)v8 setVersion:v13];

    handle = [messageCopy handle];
    [(IMChatSessionClosePipelineParameter *)v8 setSenderHandle:handle];

    name = [messageCopy name];
    [(IMChatSessionClosePipelineParameter *)v8 setSenderName:name];

    conversationID = [messageCopy conversationID];
    [(IMChatSessionClosePipelineParameter *)v8 setConversationID:conversationID];

    [(IMChatSessionClosePipelineParameter *)v8 setGUID:uUIDString];
    has_timestamp = [metadata has_timestamp];
    v18 = MEMORY[0x277CCABB0];
    if (has_timestamp)
    {
      date = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:timestamp];
      [(IMChatSessionClosePipelineParameter *)v8 setTimestamp:date];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v20 = [v18 numberWithDouble:?];
      [(IMChatSessionClosePipelineParameter *)v8 setTimestamp:v20];
    }

    storageContext = [metadata storageContext];
    -[IMChatSessionClosePipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [storageContext isFromStorage]);

    storageContext2 = [metadata storageContext];
    -[IMChatSessionClosePipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [storageContext2 isLastFromStorage]);

    batchContext = [dataCopy batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = batchContext;

    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = fromIdentifier;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = toIdentifier;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  gUID = [(IMChatSessionClosePipelineParameter *)self GUID];
  timestamp = [(IMChatSessionClosePipelineParameter *)self timestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMChatSessionClosePipelineParameter isFromStorage](self, "isFromStorage")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMChatSessionClosePipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  messageItems = [(IMChatSessionClosePipelineParameter *)self messageItems];
  v9 = [v3 stringWithFormat:@"<IMChatSessionClosePipelineParameter %p> { guid: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, output messageItems: %lu}", self, gUID, timestamp, v6, v7, objc_msgSend(messageItems, "count")];

  return v9;
}

@end