@interface IMNotifyRecipientCommandPipelineParameter
- (IMNotifyRecipientCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
- (IMNotifyRecipientCommandPipelineParameter)initWithIdsTrustedData:(id)data GUID:(id)d timestamp:(id)timestamp isFromStorage:(BOOL)storage isLastFromStorage:(BOOL)fromStorage;
- (id)description;
@end

@implementation IMNotifyRecipientCommandPipelineParameter

- (IMNotifyRecipientCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  dataCopy = data;
  metadata = [message metadata];
  messageGUID = [metadata messageGUID];
  uUIDString = [messageGUID UUIDString];
  v10 = [uUIDString copy];

  has_timestamp = [metadata has_timestamp];
  v12 = MEMORY[0x277CCABB0];
  if (has_timestamp)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metadata, "timestamp")}];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v13 = [v12 numberWithDouble:?];
  }

  storageContext = [metadata storageContext];
  isFromStorage = [storageContext isFromStorage];

  storageContext2 = [metadata storageContext];
  isLastFromStorage = [storageContext2 isLastFromStorage];

  v19 = [(IMNotifyRecipientCommandPipelineParameter *)self initWithIdsTrustedData:dataCopy GUID:v10 timestamp:v13 isFromStorage:isFromStorage isLastFromStorage:isLastFromStorage];
  return v19;
}

- (IMNotifyRecipientCommandPipelineParameter)initWithIdsTrustedData:(id)data GUID:(id)d timestamp:(id)timestamp isFromStorage:(BOOL)storage isLastFromStorage:(BOOL)fromStorage
{
  dataCopy = data;
  dCopy = d;
  timestampCopy = timestamp;
  v29.receiver = self;
  v29.super_class = IMNotifyRecipientCommandPipelineParameter;
  v15 = [(IMNotifyRecipientCommandPipelineParameter *)&v29 init];
  if (v15)
  {
    v16 = [dataCopy copy];
    idsTrustedData = v15->_idsTrustedData;
    v15->_idsTrustedData = v16;

    v18 = [dCopy copy];
    GUID = v15->_GUID;
    v15->_GUID = v18;

    v20 = [timestampCopy copy];
    timestamp = v15->_timestamp;
    v15->_timestamp = v20;

    v15->_isFromStorage = storage;
    v15->_isLastFromStorage = fromStorage;
    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v15->_fromIdentifier;
    v15->_fromIdentifier = fromIdentifier;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v15->_toIdentifier;
    v15->_toIdentifier = toIdentifier;

    batchContext = [dataCopy batchContext];
    batchContext = v15->_batchContext;
    v15->_batchContext = batchContext;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  gUID = [(IMNotifyRecipientCommandPipelineParameter *)self GUID];
  timestamp = [(IMNotifyRecipientCommandPipelineParameter *)self timestamp];
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

  idsTrustedData = [(IMNotifyRecipientCommandPipelineParameter *)self idsTrustedData];
  chat = [(IMNotifyRecipientCommandPipelineParameter *)self chat];
  messageItems = [(IMNotifyRecipientCommandPipelineParameter *)self messageItems];
  v11 = [v3 stringWithFormat:@"<IMNotifyRecipientCommandPipelineParameter %p GUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; idsTrustedData = %@; OUTPUT chat = %@; numMessageItems = %lu}", self, gUID, timestamp, v6, v7, idsTrustedData, chat, objc_msgSend(messageItems, "count")];;

  return v11;
}

@end