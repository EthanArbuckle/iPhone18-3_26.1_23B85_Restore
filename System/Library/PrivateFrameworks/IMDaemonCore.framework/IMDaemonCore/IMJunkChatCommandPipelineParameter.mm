@interface IMJunkChatCommandPipelineParameter
- (IMJunkChatCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMJunkChatCommandPipelineParameter

- (IMJunkChatCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v28.receiver = self;
  v28.super_class = IMJunkChatCommandPipelineParameter;
  v8 = [(IMJunkChatCommandPipelineParameter *)&v28 init];
  if (v8)
  {
    metadata = [messageCopy metadata];
    messageGUID = [metadata messageGUID];
    uUIDString = [messageGUID UUIDString];
    GUID = v8->_GUID;
    v8->_GUID = uUIDString;

    has_timestamp = [metadata has_timestamp];
    v14 = MEMORY[0x277CCABB0];
    if (has_timestamp)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metadata, "timestamp")}];
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

    v8->_isFromMe = [dataCopy isFromMe];
    storageContext = [metadata storageContext];
    v8->_isFromStorage = [storageContext isFromStorage];

    storageContext2 = [metadata storageContext];
    v8->_isLastFromStorage = [storageContext2 isLastFromStorage];

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
  gUID = [(IMJunkChatCommandPipelineParameter *)self GUID];
  timestamp = [(IMJunkChatCommandPipelineParameter *)self timestamp];
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

  chat = [(IMJunkChatCommandPipelineParameter *)self chat];
  v10 = [v3 stringWithFormat:@"<IMJunkChatCommandPipelineParameter %p GUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; isFromMe = %@; OUTPUT chat = %@;", self, gUID, timestamp, v7, v8, v6, chat];;

  return v10;
}

@end