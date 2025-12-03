@interface IMDeliveryReceiptPipelineParameter
- (IMDeliveryReceiptPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMDeliveryReceiptPipelineParameter

- (IMDeliveryReceiptPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v26.receiver = self;
  v26.super_class = IMDeliveryReceiptPipelineParameter;
  v8 = [(IMDeliveryReceiptPipelineParameter *)&v26 init];
  if (v8)
  {
    metadata = [dCopy metadata];
    messageGUID = [metadata messageGUID];
    uUIDString = [messageGUID UUIDString];

    timestamp = [metadata timestamp];
    [(IMDeliveryReceiptPipelineParameter *)v8 setGUID:uUIDString];
    has_timestamp = [metadata has_timestamp];
    v14 = MEMORY[0x277CCABB0];
    if (has_timestamp)
    {
      date = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:timestamp];
      [(IMDeliveryReceiptPipelineParameter *)v8 setTimestamp:date];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v16 = [v14 numberWithDouble:?];
      [(IMDeliveryReceiptPipelineParameter *)v8 setTimestamp:v16];
    }

    storageContext = [metadata storageContext];
    -[IMDeliveryReceiptPipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [storageContext isFromStorage]);

    storageContext2 = [metadata storageContext];
    -[IMDeliveryReceiptPipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [storageContext2 isLastFromStorage]);

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
  gUID = [(IMDeliveryReceiptPipelineParameter *)self GUID];
  timestamp = [(IMDeliveryReceiptPipelineParameter *)self timestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDeliveryReceiptPipelineParameter isFromStorage](self, "isFromStorage")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDeliveryReceiptPipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  messageItems = [(IMDeliveryReceiptPipelineParameter *)self messageItems];
  v9 = [v3 stringWithFormat:@"<IMDeliveryReceiptPipelineParameter %p> { guid: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, output messageItems: %lu}", self, gUID, timestamp, v6, v7, objc_msgSend(messageItems, "count")];

  return v9;
}

@end