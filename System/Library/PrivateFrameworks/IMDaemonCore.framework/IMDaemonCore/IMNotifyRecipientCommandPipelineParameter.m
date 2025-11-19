@interface IMNotifyRecipientCommandPipelineParameter
- (IMNotifyRecipientCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
- (IMNotifyRecipientCommandPipelineParameter)initWithIdsTrustedData:(id)a3 GUID:(id)a4 timestamp:(id)a5 isFromStorage:(BOOL)a6 isLastFromStorage:(BOOL)a7;
- (id)description;
@end

@implementation IMNotifyRecipientCommandPipelineParameter

- (IMNotifyRecipientCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v6 = a4;
  v7 = [a3 metadata];
  v8 = [v7 messageGUID];
  v9 = [v8 UUIDString];
  v10 = [v9 copy];

  v11 = [v7 has_timestamp];
  v12 = MEMORY[0x277CCABB0];
  if (v11)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "timestamp")}];
  }

  else
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSince1970];
    v13 = [v12 numberWithDouble:?];
  }

  v15 = [v7 storageContext];
  v16 = [v15 isFromStorage];

  v17 = [v7 storageContext];
  v18 = [v17 isLastFromStorage];

  v19 = [(IMNotifyRecipientCommandPipelineParameter *)self initWithIdsTrustedData:v6 GUID:v10 timestamp:v13 isFromStorage:v16 isLastFromStorage:v18];
  return v19;
}

- (IMNotifyRecipientCommandPipelineParameter)initWithIdsTrustedData:(id)a3 GUID:(id)a4 timestamp:(id)a5 isFromStorage:(BOOL)a6 isLastFromStorage:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v29.receiver = self;
  v29.super_class = IMNotifyRecipientCommandPipelineParameter;
  v15 = [(IMNotifyRecipientCommandPipelineParameter *)&v29 init];
  if (v15)
  {
    v16 = [v12 copy];
    idsTrustedData = v15->_idsTrustedData;
    v15->_idsTrustedData = v16;

    v18 = [v13 copy];
    GUID = v15->_GUID;
    v15->_GUID = v18;

    v20 = [v14 copy];
    timestamp = v15->_timestamp;
    v15->_timestamp = v20;

    v15->_isFromStorage = a6;
    v15->_isLastFromStorage = a7;
    v22 = [v12 fromIdentifier];
    fromIdentifier = v15->_fromIdentifier;
    v15->_fromIdentifier = v22;

    v24 = [v12 toIdentifier];
    toIdentifier = v15->_toIdentifier;
    v15->_toIdentifier = v24;

    v26 = [v12 batchContext];
    batchContext = v15->_batchContext;
    v15->_batchContext = v26;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMNotifyRecipientCommandPipelineParameter *)self GUID];
  v5 = [(IMNotifyRecipientCommandPipelineParameter *)self timestamp];
  if ([(IMNotifyRecipientCommandPipelineParameter *)self isFromStorage])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(IMNotifyRecipientCommandPipelineParameter *)self isLastFromStorage])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(IMNotifyRecipientCommandPipelineParameter *)self idsTrustedData];
  v9 = [(IMNotifyRecipientCommandPipelineParameter *)self chat];
  v10 = [(IMNotifyRecipientCommandPipelineParameter *)self messageItems];
  v11 = [v3 stringWithFormat:@"<IMNotifyRecipientCommandPipelineParameter %p GUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; idsTrustedData = %@; OUTPUT chat = %@; numMessageItems = %lu}", self, v4, v5, v6, v7, v8, v9, objc_msgSend(v10, "count")];;

  return v11;
}

@end