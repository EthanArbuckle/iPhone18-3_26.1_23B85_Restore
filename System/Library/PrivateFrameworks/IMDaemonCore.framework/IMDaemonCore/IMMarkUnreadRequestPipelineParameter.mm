@interface IMMarkUnreadRequestPipelineParameter
- (IMMarkUnreadRequestPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMMarkUnreadRequestPipelineParameter

- (IMMarkUnreadRequestPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = IMMarkUnreadRequestPipelineParameter;
  v8 = [(IMMarkUnreadRequestPipelineParameter *)&v25 init];
  if (v8)
  {
    metadata = [dCopy metadata];
    messageGUID = [metadata messageGUID];
    uUIDString = [messageGUID UUIDString];
    [(IMMarkUnreadRequestPipelineParameter *)v8 setGUID:uUIDString];

    has_timestamp = [metadata has_timestamp];
    v13 = MEMORY[0x277CCABB0];
    if (has_timestamp)
    {
      date = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metadata, "timestamp")}];
      [(IMMarkUnreadRequestPipelineParameter *)v8 setTimestamp:date];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v15 = [v13 numberWithDouble:?];
      [(IMMarkUnreadRequestPipelineParameter *)v8 setTimestamp:v15];
    }

    -[IMMarkUnreadRequestPipelineParameter setIsFromMe:](v8, "setIsFromMe:", [dataCopy isFromMe]);
    storageContext = [metadata storageContext];
    -[IMMarkUnreadRequestPipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [storageContext isFromStorage]);

    storageContext2 = [metadata storageContext];
    -[IMMarkUnreadRequestPipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [storageContext2 isLastFromStorage]);

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
  gUID = [(IMMarkUnreadRequestPipelineParameter *)self GUID];
  timestamp = [(IMMarkUnreadRequestPipelineParameter *)self timestamp];
  messageItems = [(IMMarkUnreadRequestPipelineParameter *)self messageItems];
  v7 = [v3 stringWithFormat:@"<IMMarkUnreadRequestPipelineParameter %p> { guid: %@, timestamp: %@, output messageItems: %lu}", self, gUID, timestamp, objc_msgSend(messageItems, "count")];

  return v7;
}

@end