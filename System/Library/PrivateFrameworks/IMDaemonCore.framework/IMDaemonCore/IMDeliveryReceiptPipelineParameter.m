@interface IMDeliveryReceiptPipelineParameter
- (IMDeliveryReceiptPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMDeliveryReceiptPipelineParameter

- (IMDeliveryReceiptPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = IMDeliveryReceiptPipelineParameter;
  v8 = [(IMDeliveryReceiptPipelineParameter *)&v26 init];
  if (v8)
  {
    v9 = [v6 metadata];
    v10 = [v9 messageGUID];
    v11 = [v10 UUIDString];

    v12 = [v9 timestamp];
    [(IMDeliveryReceiptPipelineParameter *)v8 setGUID:v11];
    v13 = [v9 has_timestamp];
    v14 = MEMORY[0x277CCABB0];
    if (v13)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      [(IMDeliveryReceiptPipelineParameter *)v8 setTimestamp:v15];
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      [v15 timeIntervalSince1970];
      v16 = [v14 numberWithDouble:?];
      [(IMDeliveryReceiptPipelineParameter *)v8 setTimestamp:v16];
    }

    v17 = [v9 storageContext];
    -[IMDeliveryReceiptPipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [v17 isFromStorage]);

    v18 = [v9 storageContext];
    -[IMDeliveryReceiptPipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [v18 isLastFromStorage]);

    v19 = [v7 batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = v19;

    v21 = [v7 fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = v21;

    v23 = [v7 toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = v23;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMDeliveryReceiptPipelineParameter *)self GUID];
  v5 = [(IMDeliveryReceiptPipelineParameter *)self timestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDeliveryReceiptPipelineParameter isFromStorage](self, "isFromStorage")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDeliveryReceiptPipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v8 = [(IMDeliveryReceiptPipelineParameter *)self messageItems];
  v9 = [v3 stringWithFormat:@"<IMDeliveryReceiptPipelineParameter %p> { guid: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, output messageItems: %lu}", self, v4, v5, v6, v7, objc_msgSend(v8, "count")];

  return v9;
}

@end