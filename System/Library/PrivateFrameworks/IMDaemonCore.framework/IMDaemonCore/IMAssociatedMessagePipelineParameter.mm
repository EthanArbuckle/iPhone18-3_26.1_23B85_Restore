@interface IMAssociatedMessagePipelineParameter
- (IMAssociatedMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (IMAssociatedMessagePipelineParameter)initWithBDBasic:(id)basic idsTrustedData:(id)data;
- (_NSRange)associatedMessageRange;
- (id)description;
@end

@implementation IMAssociatedMessagePipelineParameter

- (IMAssociatedMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  v17.receiver = self;
  v17.super_class = IMAssociatedMessagePipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v17 initWithBD:dCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [dCopy messageSubType];
    tapback = [messageSubType tapback];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [tapback associatedMessageType]);
    associatedMessageGUID = [tapback associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:associatedMessageGUID];

    associatedMessageFallbackHash = [tapback associatedMessageFallbackHash];
    associatedMessageFallbackHash = v7->_associatedMessageFallbackHash;
    v7->_associatedMessageFallbackHash = associatedMessageFallbackHash;

    associatedMessageRange = [tapback associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange, v14];
    plainTextBody = [tapback plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:plainTextBody];
  }

  return v7;
}

- (IMAssociatedMessagePipelineParameter)initWithBDBasic:(id)basic idsTrustedData:(id)data
{
  basicCopy = basic;
  v17.receiver = self;
  v17.super_class = IMAssociatedMessagePipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v17 initWithBDBasic:basicCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [basicCopy messageSubType];
    tapback = [messageSubType tapback];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [tapback associatedMessageType]);
    associatedMessageGUID = [tapback associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:associatedMessageGUID];

    associatedMessageFallbackHash = [tapback associatedMessageFallbackHash];
    associatedMessageFallbackHash = v7->_associatedMessageFallbackHash;
    v7->_associatedMessageFallbackHash = associatedMessageFallbackHash;

    associatedMessageRange = [tapback associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange, v14];
    plainTextBody = [tapback plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:plainTextBody];
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
  v12 = [v3 stringWithFormat:@"<IMMessageTapbackPipelineParameter %p> { guid: %@, assocatedMessageType: %lld, associatedMessageGUID: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu}", self, gUID, associatedMessageType, associatedMessageGUID, timestamp, v8, v9, v10, objc_msgSend(messageItems, "count")];

  return v12;
}

- (_NSRange)associatedMessageRange
{
  p_associatedMessageRange = &self->_associatedMessageRange;
  location = self->_associatedMessageRange.location;
  length = p_associatedMessageRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end