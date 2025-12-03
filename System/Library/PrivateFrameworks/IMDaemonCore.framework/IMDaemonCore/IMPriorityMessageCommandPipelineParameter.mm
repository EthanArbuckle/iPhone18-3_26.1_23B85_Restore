@interface IMPriorityMessageCommandPipelineParameter
- (IMPriorityMessageCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMPriorityMessageCommandPipelineParameter

- (IMPriorityMessageCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v32.receiver = self;
  v32.super_class = IMPriorityMessageCommandPipelineParameter;
  v8 = [(IMPriorityMessageCommandPipelineParameter *)&v32 init];
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

    fromToken = [dataCopy fromToken];
    fromToken = v8->_fromToken;
    v8->_fromToken = fromToken;

    priorityMessageGUIDs = [messageCopy priorityMessageGUIDs];
    priorityMessageGUIDs = v8->_priorityMessageGUIDs;
    v8->_priorityMessageGUIDs = priorityMessageGUIDs;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  gUID = [(IMPriorityMessageCommandPipelineParameter *)self GUID];
  timestamp = [(IMPriorityMessageCommandPipelineParameter *)self timestamp];
  if ([(IMPriorityMessageCommandPipelineParameter *)self isFromStorage])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(IMPriorityMessageCommandPipelineParameter *)self isLastFromStorage])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(IMPriorityMessageCommandPipelineParameter *)self isFromMe])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  chat = [(IMPriorityMessageCommandPipelineParameter *)self chat];
  priorityMessageGUIDs = [(IMPriorityMessageCommandPipelineParameter *)self priorityMessageGUIDs];
  v11 = [v3 stringWithFormat:@"<IMPriorityMessageCommandPipelineParameter %p GUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; isFromMe = %@; OUTPUT chat = %@; priorityMessageGUIDs = %@", self, gUID, timestamp, v6, v7, v8, chat, priorityMessageGUIDs];;

  return v11;
}

@end