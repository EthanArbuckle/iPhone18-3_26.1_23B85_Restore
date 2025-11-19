@interface IMPlayedReceiptPipelineParameter
- (IMPlayedReceiptPipelineParameter)initWithIdsTrustedData:(id)a3 GUID:(id)a4 timestamp:(id)a5 isFromStorage:(BOOL)a6 isLastFromStorage:(BOOL)a7 isFromDefaultPairedDevice:(BOOL)a8;
- (id)description;
@end

@implementation IMPlayedReceiptPipelineParameter

- (IMPlayedReceiptPipelineParameter)initWithIdsTrustedData:(id)a3 GUID:(id)a4 timestamp:(id)a5 isFromStorage:(BOOL)a6 isLastFromStorage:(BOOL)a7 isFromDefaultPairedDevice:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v31.receiver = self;
  v31.super_class = IMPlayedReceiptPipelineParameter;
  v17 = [(IMPlayedReceiptPipelineParameter *)&v31 init];
  if (v17)
  {
    v18 = [v14 copy];
    idsTrustedData = v17->_idsTrustedData;
    v17->_idsTrustedData = v18;

    v20 = [v15 copy];
    GUID = v17->_GUID;
    v17->_GUID = v20;

    v22 = [v16 copy];
    timestamp = v17->_timestamp;
    v17->_timestamp = v22;

    v17->_isFromStorage = a6;
    v17->_isLastFromStorage = a7;
    v17->_isFromDefaultPairedDevice = a8;
    v24 = [v14 batchContext];
    batchContext = v17->_batchContext;
    v17->_batchContext = v24;

    v26 = [v14 toIdentifier];
    toIdentifier = v17->_toIdentifier;
    v17->_toIdentifier = v26;

    v28 = [v14 fromIdentifier];
    fromIdentifier = v17->_fromIdentifier;
    v17->_fromIdentifier = v28;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMPlayedReceiptPipelineParameter *)self GUID];
  v5 = [(IMPlayedReceiptPipelineParameter *)self timestamp];
  if ([(IMPlayedReceiptPipelineParameter *)self isFromStorage])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(IMPlayedReceiptPipelineParameter *)self isLastFromStorage])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(IMPlayedReceiptPipelineParameter *)self idsTrustedData];
  v9 = [(IMPlayedReceiptPipelineParameter *)self chat];
  v10 = [(IMPlayedReceiptPipelineParameter *)self messageItems];
  v11 = [v3 stringWithFormat:@"<IMPlayedReceiptPipelineParameter %p GUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; idsTrustedData = %@; OUTPUT chat = %@; numMessageItems = %lu}", self, v4, v5, v6, v7, v8, v9, objc_msgSend(v10, "count")];;

  return v11;
}

@end