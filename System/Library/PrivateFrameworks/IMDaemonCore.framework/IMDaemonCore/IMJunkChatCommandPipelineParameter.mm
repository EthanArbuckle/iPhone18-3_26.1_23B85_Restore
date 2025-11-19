@interface IMJunkChatCommandPipelineParameter
- (IMJunkChatCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMJunkChatCommandPipelineParameter

- (IMJunkChatCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = IMJunkChatCommandPipelineParameter;
  v8 = [(IMJunkChatCommandPipelineParameter *)&v28 init];
  if (v8)
  {
    v9 = [v6 metadata];
    v10 = [v9 messageGUID];
    v11 = [v10 UUIDString];
    GUID = v8->_GUID;
    v8->_GUID = v11;

    v13 = [v9 has_timestamp];
    v14 = MEMORY[0x277CCABB0];
    if (v13)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "timestamp")}];
      timestamp = v8->_timestamp;
      v8->_timestamp = v15;
    }

    else
    {
      timestamp = [MEMORY[0x277CBEAA8] date];
      [timestamp timeIntervalSince1970];
      v17 = [v14 numberWithDouble:?];
      v18 = v8->_timestamp;
      v8->_timestamp = v17;
    }

    v8->_isFromMe = [v7 isFromMe];
    v19 = [v9 storageContext];
    v8->_isFromStorage = [v19 isFromStorage];

    v20 = [v9 storageContext];
    v8->_isLastFromStorage = [v20 isLastFromStorage];

    v21 = [v7 batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = v21;

    v23 = [v7 fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = v23;

    v25 = [v7 toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = v25;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMJunkChatCommandPipelineParameter *)self GUID];
  v5 = [(IMJunkChatCommandPipelineParameter *)self timestamp];
  v6 = @"YES";
  if ([(IMJunkChatCommandPipelineParameter *)self isFromStorage])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(IMJunkChatCommandPipelineParameter *)self isLastFromStorage])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (![(IMJunkChatCommandPipelineParameter *)self isFromMe])
  {
    v6 = @"NO";
  }

  v9 = [(IMJunkChatCommandPipelineParameter *)self chat];
  v10 = [v3 stringWithFormat:@"<IMJunkChatCommandPipelineParameter %p GUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; isFromMe = %@; OUTPUT chat = %@;", self, v4, v5, v7, v8, v6, v9];;

  return v10;
}

@end