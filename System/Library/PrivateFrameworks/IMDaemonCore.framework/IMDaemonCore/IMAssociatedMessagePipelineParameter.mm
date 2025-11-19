@interface IMAssociatedMessagePipelineParameter
- (IMAssociatedMessagePipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
- (IMAssociatedMessagePipelineParameter)initWithBDBasic:(id)a3 idsTrustedData:(id)a4;
- (_NSRange)associatedMessageRange;
- (id)description;
@end

@implementation IMAssociatedMessagePipelineParameter

- (IMAssociatedMessagePipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = IMAssociatedMessagePipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v17 initWithBD:v6 idsTrustedData:a4];
  if (v7)
  {
    v8 = [v6 messageSubType];
    v9 = [v8 tapback];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [v9 associatedMessageType]);
    v10 = [v9 associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:v10];

    v11 = [v9 associatedMessageFallbackHash];
    associatedMessageFallbackHash = v7->_associatedMessageFallbackHash;
    v7->_associatedMessageFallbackHash = v11;

    v13 = [v9 associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:v13, v14];
    v15 = [v9 plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:v15];
  }

  return v7;
}

- (IMAssociatedMessagePipelineParameter)initWithBDBasic:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = IMAssociatedMessagePipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v17 initWithBDBasic:v6 idsTrustedData:a4];
  if (v7)
  {
    v8 = [v6 messageSubType];
    v9 = [v8 tapback];

    -[IMAssociatedMessagePipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [v9 associatedMessageType]);
    v10 = [v9 associatedMessageGUID];
    [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:v10];

    v11 = [v9 associatedMessageFallbackHash];
    associatedMessageFallbackHash = v7->_associatedMessageFallbackHash;
    v7->_associatedMessageFallbackHash = v11;

    v13 = [v9 associatedMessageRange];
    [(IMAssociatedMessagePipelineParameter *)v7 setAssociatedMessageRange:v13, v14];
    v15 = [v9 plainTextBody];
    [(IMTextMessagePipelineParameter *)v7 setPlainTextBody:v15];
  }

  return v7;
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
  v12 = [v3 stringWithFormat:@"<IMMessageTapbackPipelineParameter %p> { guid: %@, assocatedMessageType: %lld, associatedMessageGUID: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu}", self, v4, v5, v6, v7, v8, v9, v10, objc_msgSend(v11, "count")];

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