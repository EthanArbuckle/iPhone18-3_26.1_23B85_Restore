@interface IMPriorityMessageCommandPipelineParameter
- (IMPriorityMessageCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMPriorityMessageCommandPipelineParameter

- (IMPriorityMessageCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = IMPriorityMessageCommandPipelineParameter;
  v8 = [(IMPriorityMessageCommandPipelineParameter *)&v32 init];
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

    v27 = [v7 fromToken];
    fromToken = v8->_fromToken;
    v8->_fromToken = v27;

    v29 = [v6 priorityMessageGUIDs];
    priorityMessageGUIDs = v8->_priorityMessageGUIDs;
    v8->_priorityMessageGUIDs = v29;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMPriorityMessageCommandPipelineParameter *)self GUID];
  v5 = [(IMPriorityMessageCommandPipelineParameter *)self timestamp];
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

  v9 = [(IMPriorityMessageCommandPipelineParameter *)self chat];
  v10 = [(IMPriorityMessageCommandPipelineParameter *)self priorityMessageGUIDs];
  v11 = [v3 stringWithFormat:@"<IMPriorityMessageCommandPipelineParameter %p GUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; isFromMe = %@; OUTPUT chat = %@; priorityMessageGUIDs = %@", self, v4, v5, v6, v7, v8, v9, v10];;

  return v11;
}

@end